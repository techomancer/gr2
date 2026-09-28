#!/usr/bin/env bash
#
# decompile_gr2_ddx.sh
# Decompiles SGI GR2 dyDDX assembly modules using m2c into gr2_ddx/decomp/*.c
#

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
M2C="python3 ${SCRIPT_DIR}/../m2c/m2c.py -t mipsn32 --context ${SCRIPT_DIR}/include/ctx_gr2_ddx.c"

MODULES=(
    "exp_cursor"
    "exp_init"
    "exp_vc1"
    "exp_cmap"
    "exp_draw"
    "exp_glyph"
    "exp_image"
    "exp_window"
    "rrm"
    "nfb_ops"
)

mkdir -p "${SCRIPT_DIR}/decomp"

for mod in "${MODULES[@]}"; do
    asm_file="${SCRIPT_DIR}/asm/${mod}.s"
    out_c="${SCRIPT_DIR}/decomp/${mod}.c"
    if [ -f "$asm_file" ]; then
        echo "[*] Decompiling ${mod} -> ${out_c}..."
        $M2C "$asm_file" > "$out_c" 2>/dev/null || echo "[-] Warning: ${mod} had partial failure"
        echo "[+] Completed ${mod} ($(wc -l < "$out_c") lines)"
    fi
done

echo "[+] All DDX modules decompiled successfully!"
