#!/usr/bin/env bash
#
# decompile_kernel.sh - Automated decompiler pipeline for SGI GR2 kernel modules
#
# Generates preprocessed C context from ctx_source.h and decompiles disassembly
# from disasm/<module>/<module>.text.s to decomp/<module>.c using m2c.
#
# Usage:
#   ./decompile_kernel.sh               # Decompiles all modules in parallel
#   ./decompile_kernel.sh all           # Decompiles all modules in parallel
#   ./decompile_kernel.sh <mod1> [mod2] # Decompiles only specified module(s)
#
# Available modules:
#   gr2_init gr2_retrace gr2_tport gr2_dma gr2_corona_i2c gr2_tpucode gr2 gfx
#

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}"

M2C="${SCRIPT_DIR}/../m2c/m2c.py"
CTX_SRC="${SCRIPT_DIR}/ctx_source.h"
CTX_C="${SCRIPT_DIR}/ctx.c"
CTX_CACHE="${SCRIPT_DIR}/ctx.c.m2c"
DISASM_DIR="${SCRIPT_DIR}/disasm"
DECOMP_DIR="${SCRIPT_DIR}/decomp"

ALL_MODULES=(
    "gr2_init"
    "gr2_retrace"
    "gr2_tport"
    "gr2_dma"
    "gr2_corona_i2c"
    "gr2_tpucode"
    "gr2"
    "gfx"
)

# Parse requested modules
TARGET_MODULES=()
if [ $# -eq 0 ] || [ "$1" == "all" ]; then
    TARGET_MODULES=("${ALL_MODULES[@]}")
else
    TARGET_MODULES=("$@")
fi

echo "======================================================================"
echo "SGI GR2 Kernel Decompilation Pipeline"
echo "======================================================================"
echo "Context source: ${CTX_SRC}"
echo "Output dir:     ${DECOMP_DIR}"
echo "Modules to run: ${TARGET_MODULES[*]}"
echo "======================================================================"

# Step 1: Preprocess context header
echo -n "[1/2] Preprocessing context from ctx_source.h -> ctx.c ... "
gcc -m32 -E -P -D_LANGUAGE_C -I"${SCRIPT_DIR}" -I"${SCRIPT_DIR}/.." "${CTX_SRC}" -o "${CTX_C}"
rm -f "${CTX_CACHE}"
echo "Done ($(wc -l < "${CTX_C}") lines)."

# Step 2: Ensure decomp directory exists
mkdir -p "${DECOMP_DIR}"

# Step 3: Decompile function
decompile_module() {
    local mod="$1"
    local mod_dir="${DISASM_DIR}/${mod}"
    local out_file="${DECOMP_DIR}/${mod}.c"
    local tmp_file="${DECOMP_DIR}/${mod}.c.tmp"

    if [ ! -d "${mod_dir}" ]; then
        echo "[-] Error: Disassembly directory not found: ${mod_dir}"
        return 1
    fi

    # Include all .s sections (text, rodata, data, bss) so m2c can resolve jump tables & globals
    local asm_files=("${mod_dir}/"*.s)

    local t_start=$(date +%s)
    echo "[*] [${mod}] Starting decompilation of ${#asm_files[@]} files in ${mod_dir}..."

    if python3 "${M2C}" --target mips-ido-c --context "${CTX_C}" "${asm_files[@]}" > "${tmp_file}" 2>&1; then
        mv "${tmp_file}" "${out_file}"
        local t_end=$(date +%s)
        local elapsed=$((t_end - t_start))
        local lines=$(wc -l < "${out_file}")
        echo "[+] [${mod}] Completed in ${elapsed}s -> ${out_file} (${lines} lines)"
    else
        echo "[-] [${mod}] FAILED! Check error log in ${tmp_file}"
        return 1
    fi
}

echo "[2/2] Running decompilation..."

PIDS=()
MOD_NAMES=()
for mod in "${TARGET_MODULES[@]}"; do
    decompile_module "${mod}" &
    PIDS+=($!)
    MOD_NAMES+=("${mod}")
done

# Wait for background jobs and collect status
FAILED=0
for i in "${!PIDS[@]}"; do
    pid="${PIDS[$i]}"
    mod="${MOD_NAMES[$i]}"
    if ! wait "${pid}"; then
        echo "[-] Module failed: ${mod}"
        FAILED=$((FAILED + 1))
    fi
done

echo "======================================================================"
if [ ${FAILED} -eq 0 ]; then
    echo "[+] All modules decompiled successfully!"
else
    echo "[-] ${FAILED} module(s) failed."
fi
echo "======================================================================"
exit ${FAILED}
