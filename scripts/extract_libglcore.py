#!/usr/bin/env python3
"""
scripts/extract_libglcore.py

Extracts all DWARF metadata, functions, line tables, and disassembly from
root/usr/gfx/arch/IP12GR232/libGLcore.so (MIPS-III N32 OpenGL driver for SGI GR2).

Organizes code into original .c compilation units across 7 categories:
  - EXPRESS (GR2 hardware drivers: gr2_*.c, g_api.s, mips_*.s)
  - soft    (software rasterizer fallback: so_*.c)
  - pixel   (pixel pipeline: px_*.c)
  - dlist   (display list engine: dl_*.c)
  - gl      (core GL routines: g_lcomp.c, g_lexec.c, etc.)
  - mips    (optimized assembly routines: mips_*.ma, mips_*.s)
  - PIXMAP  (pixmap rendering: pm_*.c)

Generates:
  1. libglcore/manifest.json (complete machine-readable database)
  2. libglcore/asm/<category>/<cu>.s (per-CU assembly with labels & line numbers)
  3. libglcore/include/glcore_types.h (data structures & hardware context)
  4. libglcore/include/glcore_prots.h (prototypes for all 3,258 functions)
  5. ctx_libglcore_source.h & ctx_libglcore.c (preprocessed context for m2c)
  6. decompile_libglcore.sh (decompilation runner script)
"""

import os
import sys
import io
import re
import json
import subprocess
from collections import defaultdict

from elftools.elf.elffile import ELFFile
from elftools.dwarf.abbrevtable import AbbrevTable

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from scripts.resolve_got import build_got_map

TARGET_ELF = 'root/usr/gfx/arch/IP12GR232/libGLcore.so'
OUT_DIR = 'libglcore'

def setup_dirs():
    os.makedirs(f'{OUT_DIR}/asm', exist_ok=True)
    os.makedirs(f'{OUT_DIR}/decomp', exist_ok=True)
    os.makedirs(f'{OUT_DIR}/include', exist_ok=True)
    for cat in ['EXPRESS', 'soft', 'pixel', 'dlist', 'gl', 'mips', 'PIXMAP']:
        os.makedirs(f'{OUT_DIR}/asm/{cat}', exist_ok=True)
        os.makedirs(f'{OUT_DIR}/decomp/{cat}', exist_ok=True)

def categorize_cu(name):
    if 'EXPRESS' in name:
        return 'EXPRESS'
    elif 'soft/' in name or name.startswith('so_'):
        return 'soft'
    elif 'pixel/' in name or name.startswith('px_'):
        return 'pixel'
    elif 'dlist/' in name or name.startswith('dl_'):
        return 'dlist'
    elif 'PIXMAP/' in name or name.startswith('pm_'):
        return 'PIXMAP'
    elif name.startswith('g_'):
        return 'gl'
    elif 'mips/' in name:
        return 'mips'
    return 'other'

def clean_cu_name(name):
    base = os.path.basename(name)
    return base

def parse_dwarf(elf_path):
    print(f"[*] Parsing DWARF from {elf_path}...")
    with open(elf_path, 'rb') as f:
        elf = ELFFile(f)
        text_sec = elf.get_section_by_name('.text')
        text_addr = text_sec['sh_addr']
        text_size = text_sec['sh_size']

        dwarf = elf.get_dwarf_info()
        data_abbrev = dwarf.debug_abbrev_sec.stream.getvalue()
        cu_abbrev_offsets = sorted(set(cu.header['debug_abbrev_offset'] for cu in dwarf.iter_CUs()))
        cu_abbrev_offsets.append(len(data_abbrev))
        abbrev_slices = {}
        for i in range(len(cu_abbrev_offsets) - 1):
            start = cu_abbrev_offsets[i]
            end = cu_abbrev_offsets[i+1]
            abbrev_slices[start] = data_abbrev[start:end] + b'\x00'

        orig_get_abbrev = dwarf.get_abbrev_table
        def patched_get_abbrev(offset):
            if offset in abbrev_slices:
                return AbbrevTable(dwarf.structs, io.BytesIO(abbrev_slices[offset]), 0)
            return orig_get_abbrev(offset)
        dwarf.get_abbrev_table = patched_get_abbrev

        cus = []
        all_funcs = []
        for i, cu in enumerate(dwarf.iter_CUs()):
            top = cu.get_top_DIE()
            name_attr = top.attributes.get('DW_AT_name')
            name_str = name_attr.value.decode('utf-8') if name_attr else f'cu_{i}'
            comp_dir_attr = top.attributes.get('DW_AT_comp_dir')
            comp_dir_str = comp_dir_attr.value.decode('utf-8') if comp_dir_attr else ''
            producer_attr = top.attributes.get('DW_AT_producer')
            producer_str = producer_attr.value.decode('utf-8') if producer_attr else ''
            lang_attr = top.attributes.get('DW_AT_language')
            lang_val = lang_attr.value if lang_attr else None

            # Line table
            line_map = {}
            try:
                lp = dwarf.line_program_for_CU(cu)
                if lp:
                    for entry in lp.get_entries():
                        if entry.state:
                            line_map[entry.state.address] = entry.state.line
            except Exception as e:
                pass

            category = categorize_cu(name_str)
            cu_base = clean_cu_name(name_str)

            funcs = []
            variables = []
            for die in cu.iter_DIEs():
                if die.tag == 'DW_TAG_subprogram':
                    sub_name = die.attributes.get('DW_AT_name')
                    low_pc = die.attributes.get('DW_AT_low_pc')
                    high_pc = die.attributes.get('DW_AT_high_pc')
                    decl_line = die.attributes.get('DW_AT_decl_line')
                    frame_base = die.attributes.get('DW_AT_frame_base')
                    ext = die.attributes.get('DW_AT_external')

                    if sub_name and low_pc and high_pc:
                        sname = sub_name.value.decode('utf-8')
                        low = low_pc.value
                        high = high_pc.value
                        dline = decl_line.value if decl_line else 0
                        frame_size = 0
                        if frame_base:
                            val = frame_base.value
                            if isinstance(val, list) and len(val) >= 2 and val[0] == 141: # DW_OP_breg29
                                frame_size = val[1]
                                if len(val) > 2 and val[2] == 0:
                                    pass

                        # Line range
                        func_lines = [l for addr, l in line_map.items() if low <= addr < high]
                        min_l = min(func_lines) if func_lines else dline
                        max_l = max(func_lines) if func_lines else dline

                        func_obj = {
                            'name': sname,
                            'low_pc': low,
                            'high_pc': high,
                            'size': high - low,
                            'decl_line': dline,
                            'min_line': min_l,
                            'max_line': max_l,
                            'frame_size': frame_size,
                            'is_external': bool(ext and ext.value),
                            'cu_index': i,
                            'cu_name': name_str,
                            'cu_base': cu_base,
                            'category': category
                        }
                        funcs.append(func_obj)
                        all_funcs.append(func_obj)

                elif die.tag == 'DW_TAG_variable':
                    vname = die.attributes.get('DW_AT_name')
                    loc = die.attributes.get('DW_AT_location')
                    dline = die.attributes.get('DW_AT_decl_line')
                    if vname:
                        var_name = vname.value.decode('utf-8')
                        addr = 0
                        if loc and isinstance(loc.value, list) and len(loc.value) >= 5 and loc.value[0] == 3: # DW_OP_addr
                            addr = int.from_bytes(bytes(loc.value[1:5]), 'big')
                        variables.append({
                            'name': var_name,
                            'addr': addr,
                            'decl_line': dline.value if dline else 0
                        })

            funcs.sort(key=lambda x: x['low_pc'])
            cus.append({
                'index': i,
                'name': name_str,
                'basename': cu_base,
                'category': category,
                'comp_dir': comp_dir_str,
                'producer': producer_str,
                'funcs': funcs,
                'variables': variables,
                'line_map': line_map
            })

    print(f"[+] Found {len(cus)} CUs and {len(all_funcs)} functions.")
    return text_addr, text_size, cus, all_funcs

def get_disassembly():
    print("[*] Disassembling .text using mips-unknown-linux-gnu-objdump...")
    cmd = ['mips-unknown-linux-gnu-objdump', '-d', '--no-show-raw-insn', TARGET_ELF]
    res = subprocess.run(cmd, capture_output=True, text=True, check=True)
    
    disasm = {}
    pattern = re.compile(r'^\s*([0-9a-fA-F]+):\s*(.*)')
    for line in res.stdout.splitlines():
        m = pattern.match(line)
        if m:
            addr = int(m.group(1), 16)
            instr = m.group(2).strip()
            disasm[addr] = instr
    print(f"[+] Loaded {len(disasm)} disassembled instructions.")
    return disasm

def format_instruction(addr, instr):
    # Replace thread-local loads 4112(zero) -> __glCurrentContext, 4120(zero) -> __glBeginMode
    instr = re.sub(r'4112\((?:\$?zero|\$0)\)', '__glCurrentContext', instr)
    instr = re.sub(r'4120\((?:\$?zero|\$0)\)', '__glBeginMode', instr)

    # Convert register names to $reg only if not already prefixed by $
    regs = [
        'zero', 'at', 'v0', 'v1', 'a0', 'a1', 'a2', 'a3',
        'a4', 'a5', 'a6', 'a7', 't0', 't1', 't2', 't3',
        's0', 's1', 's2', 's3', 's4', 's5', 's6', 's7',
        't8', 't9', 'k0', 'k1', 'gp', 'sp', 's8', 'ra',
        'f0', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7',
        'f8', 'f9', 'f10', 'f11', 'f12', 'f13', 'f14', 'f15',
        'f16', 'f17', 'f18', 'f19', 'f20', 'f21', 'f22', 'f23',
        'f24', 'f25', 'f26', 'f27', 'f28', 'f29', 'f30', 'f31'
    ]
    reg_pattern = r'(?<!\$)\b(' + '|'.join(regs) + r')\b'
    instr = re.sub(reg_pattern, r'$\1', instr)

    return instr

def build_lit_maps(elf_path, gp_val=0x0dbf7868):
    import struct
    lit4, lit8 = {}, {}
    with open(elf_path, "rb") as f:
        elf = ELFFile(f)
        for s in elf.iter_sections():
            if s.name == ".lit4":
                data = s.data()
                base = s["sh_addr"]
                for i in range(0, len(data), 4):
                    addr = base + i
                    off = addr - gp_val
                    uval = struct.unpack(">I", data[i:i+4])[0]
                    fval = struct.unpack(">f", data[i:i+4])[0]
                    lit4[off] = (fval, uval)
            elif s.name == ".lit8":
                data = s.data()
                base = s["sh_addr"]
                for i in range(0, len(data), 8):
                    addr = base + i
                    off = addr - gp_val
                    uval = struct.unpack(">Q", data[i:i+8])[0]
                    fval = struct.unpack(">d", data[i:i+8])[0]
                    lit8[off] = (fval, uval)
    return lit4, lit8

def build_jtbl_map(elf_path, all_funcs):
    import struct
    funcs_by_range = [(f["low_pc"], f["high_pc"], f["name"]) for f in all_funcs]
    def get_func_for_pc(pc):
        for low, high, name in funcs_by_range:
            if low <= pc < high:
                return name
        return None

    with open(elf_path, "rb") as f:
        elf = ELFFile(f)
        rodata = elf.get_section_by_name(".rodata")
        rdata = rodata.data()
        rbase = rodata["sh_addr"]
        rsize = rodata["sh_size"]
        text = elf.get_section_by_name(".text")
        tbase = text["sh_addr"]
        tsize = text["sh_size"]

    tables = {}
    i = 0
    while i < rsize:
        val = struct.unpack(">I", rdata[i:i+4])[0]
        if tbase <= val < tbase + tsize:
            start_addr = rbase + i
            fn_name = get_func_for_pc(val)
            entries = []
            while i < rsize:
                v = struct.unpack(">I", rdata[i:i+4])[0]
                if tbase <= v < tbase + tsize:
                    v_fn = get_func_for_pc(v)
                    if v_fn == fn_name:
                        entries.append(v)
                        i += 4
                    else:
                        break
                else:
                    break
            if entries and fn_name:
                tables[start_addr] = {
                    "fn_name": fn_name,
                    "entries": entries
                }
        else:
            i += 4
    return tables

def write_cu_assembly(cu, disasm_map, got_map, lit4_map, lit8_map, jtbl_map):
    cat = cu['category']
    cu_base = cu['basename']
    base_no_ext = os.path.splitext(cu_base)[0]
    out_asm_path = f"{OUT_DIR}/asm/{cat}/{base_no_ext}.s"
    cu['asm_file'] = out_asm_path
    cu['decomp_file'] = f"{OUT_DIR}/decomp/{cat}/{base_no_ext}.c"

    # Identify jump tables for functions in this CU
    cu_funcs = {f['name'] for f in cu['funcs']}
    cu_jtbls = {addr: info for addr, info in jtbl_map.items() if info['fn_name'] in cu_funcs}
    cu_lits = {}

    with open(out_asm_path, 'w') as f:
        f.write(f"# Source: {cu['name']}\n")
        f.write(f"# Category: {cat}\n")
        f.write(f"# Compiler Options: {cu['producer']}\n")
        f.write(f"# Total Functions: {len(cu['funcs'])}\n\n")
        f.write(f".text\n\n")

        line_map = cu['line_map']

        for func in cu['funcs']:
            fname = func['name']
            low = func['low_pc']
            high = func['high_pc']
            size = func['size']
            dline = func['decl_line']
            min_l = func['min_line']
            max_l = func['max_line']
            fsize = func['frame_size']

            f.write(f"# Function: {fname}\n")
            f.write(f"# Declared: Line {dline} (Source lines: {min_l}-{max_l})\n")
            f.write(f"# Address: 0x{low:08x} - 0x{high:08x} (Size: {size} bytes, Frame: {fsize})\n")
            if func['is_external']:
                f.write(f".globl {fname}\n")
            f.write(f".ent {fname}\n")
            f.write(f"{fname}:\n")

            # Collect raw instructions
            func_items = []
            for addr in range(low, high, 4):
                raw = disasm_map.get(addr, 'nop')
                func_items.append({'addr': addr, 'raw': raw, 'line': line_map.get(addr)})

            # Branch targets
            branch_targets = set()
            for item in func_items:
                m = re.search(r'\b([0-9a-fA-F]{7,8})\b', item['raw'])
                if m:
                    target = int(m.group(1), 16)
                    if low <= target < high:
                        branch_targets.add(target)

            # Add jump table targets for this function
            fn_jtbls = {t_addr: t_info for t_addr, t_info in cu_jtbls.items() if t_info['fn_name'] == fname}
            for t_info in fn_jtbls.values():
                for target in t_info['entries']:
                    if low <= target < high:
                        branch_targets.add(target)

            # Detect which registers receive GP base
            gp_regs = {'gp'}
            for item in func_items:
                m_addu = re.search(r'addu\s+[$]?([a-zA-Z0-9]+),\s*[$]?t9,\s*[$]?([a-zA-Z0-9]+)', item['raw'])
                if m_addu:
                    gp_regs.add(m_addu.group(1).lstrip('$'))

            gp_reg_pattern = '|'.join(re.escape(r) for r in gp_regs)

            # Pass 1: Resolve GOT calls and float/double loads
            t9_target = None
            for idx, item in enumerate(func_items):
                raw_instr = item['raw']

                # Check for lw $dest, off($gp_reg)
                m_lw = re.search(r'lw\s+([$]?\w+),\s*(-?\d+)\([$]?(' + gp_reg_pattern + r')\)', raw_instr)
                if m_lw:
                    dest_reg = m_lw.group(1)
                    off = int(m_lw.group(2))
                    if off in got_map:
                        sym = got_map[off]
                        if dest_reg in ('$t9', 't9'):
                            t9_target = sym
                            in_delay = False
                            if idx > 0:
                                prev_raw = func_items[idx-1]['raw'].strip()
                                if prev_raw.startswith(('b', 'j', 'jal', 'jr')):
                                    in_delay = True
                            if in_delay:
                                item['raw'] = f"nop\t# was lw $t9, {off}($gp) # &{sym}"
                            else:
                                item['raw'] = f"# lw $t9, {off}($gp) # &{sym}"
                                item['is_comment'] = True
                        else:
                            item['raw'] = f"la\t{dest_reg},{sym}"
                        continue

                # Check for jalr $t9
                if ('jalr' in raw_instr and 't9' in raw_instr) and t9_target:
                    item['raw'] = f"jal\t{t9_target}"
                    t9_target = None
                    continue

                # Check for lwc1 $fX, off($gp_reg)
                m_lwc1 = re.search(r'lwc1\s+([$]?f\d+),\s*(-?\d+)\([$]?(' + gp_reg_pattern + r')\)', raw_instr)
                if m_lwc1:
                    freg = m_lwc1.group(1)
                    off = int(m_lwc1.group(2))
                    if off in lit4_map:
                        fval, uval = lit4_map[off]
                        if uval == 0:
                            item['raw'] = f"mtc1\t$zero,{freg}"
                        else:
                            lit_sym = f"_lit_{uval:08x}"
                            cu_lits[lit_sym] = (4, uval)
                            item['raw'] = f"lwc1\t{freg},{lit_sym}"
                        continue

                # Check for ldc1 $fX, off($gp_reg)
                m_ldc1 = re.search(r'ldc1\s+([$]?f\d+),\s*(-?\d+)\([$]?(' + gp_reg_pattern + r')\)', raw_instr)
                if m_ldc1:
                    freg = m_ldc1.group(1)
                    off = int(m_ldc1.group(2))
                    if off in lit8_map:
                        fval, uval = lit8_map[off]
                        if uval == 0:
                            item['raw'] = f"dmtc1\t$zero,{freg}"
                        else:
                            lit_sym = f"_lit8_{uval:016x}"
                            cu_lits[lit_sym] = (8, uval)
                            item['raw'] = f"ldc1\t{freg},{lit_sym}"
                        continue

                # Check for indirect tail calls through $t9
                if re.search(r'\bjr\s+[$]?t9\b', raw_instr):
                    if idx + 1 < len(func_items):
                        delay_item = func_items[idx + 1]
                        delay_raw = delay_item['raw'].strip()
                        if delay_raw != 'nop' and not delay_raw.startswith('#'):
                            item['raw'] = f"{delay_raw}\n    jalr\t$t9\n    nop\n    jr\t$ra\n    nop"
                        else:
                            item['raw'] = "jalr\t$t9\n    nop\n    jr\t$ra\n    nop"
                        delay_item['raw'] = "nop"
                    else:
                        item['raw'] = "jalr\t$t9\n    nop\n    jr\t$ra\n    nop"
                    continue

            # Pass 2: Check remaining GP usages
            has_other_gp = False
            for item in func_items:
                if item.get('is_comment'):
                    continue
                raw_instr = item['raw']
                for r in gp_regs:
                    if f"${r}" in raw_instr or f"({r})" in raw_instr:
                        if re.search(r'(sd|ld|addu)\s+.*' + r, raw_instr):
                            continue
                        has_other_gp = True
                        break
                if has_other_gp:
                    break

            # Pass 3: Comment out GP prologue/epilogue if no other GP uses
            if not has_other_gp:
                for idx, item in enumerate(func_items):
                    raw_instr = item['raw']
                    in_delay = False
                    if idx > 0:
                        prev = func_items[idx-1]['raw'].strip()
                        if prev.startswith(('b', 'j', 'jal', 'jr')):
                            in_delay = True

                    for r in gp_regs:
                        if re.search(r'(sd|ld)\s+[$]?' + r + r',', raw_instr):
                            if in_delay:
                                item['raw'] = "nop"
                            else:
                                item['raw'] = f"# {raw_instr.strip()}"
                                item['is_comment'] = True
                        elif re.search(r'addu\s+[$]?' + r + r',\s*[$]?t9,', raw_instr):
                            if in_delay:
                                item['raw'] = "nop"
                            else:
                                item['raw'] = f"# {raw_instr.strip()}"
                                item['is_comment'] = True

            # Pass 4: Handle jump tables
            for t_addr, t_info in fn_jtbls.items():
                off = t_addr - 0x0dbf0000
                jtbl_sym = f"jtbl_{t_addr:08x}"
                base_reg = None

                # 1. Find addiu $reg, ..., {off}
                for idx, item in enumerate(func_items):
                    raw = item['raw']
                    m_addiu = re.search(rf'addiu\s+([$]?\w+),\s*[$]?\w+,\s*{off}\b', raw)
                    if m_addiu:
                        base_reg = m_addiu.group(1)
                        if not base_reg.startswith('$'):
                            base_reg = '$' + base_reg
                        item['raw'] = f"lui\t{base_reg},%hi({jtbl_sym})"
                        break

                # 2. Find lw $jr_reg, 0($combined_reg) followed by jr $jr_reg
                for idx in range(len(func_items)):
                    raw_jr = func_items[idx]['raw']
                    m_jr = re.search(r'\bjr\s+([$]?\w+)', raw_jr)
                    if m_jr:
                        jr_reg = m_jr.group(1).lstrip('$')
                        if jr_reg != 'ra':
                            for k in range(idx - 1, max(-1, idx - 6), -1):
                                raw_lw = func_items[k]['raw']
                                m_lw = re.search(r'\blw\s+[$]?' + jr_reg + r',\s*0\(([$]?\w+)\)', raw_lw)
                                if m_lw:
                                    comb_reg = m_lw.group(1)
                                    func_items[k]['raw'] = f"lw\t${jr_reg},%lo({jtbl_sym})({comb_reg})"
                                    break

            # Write out instructions
            last_line = -1
            for item in func_items:
                addr = item['addr']
                raw_instr = item['raw']
                l = item['line']

                if addr in branch_targets:
                    f.write(f".L{addr:08x}:\n")

                if l is not None and l != last_line:
                    f.write(f"    # Line {l}\n")
                    last_line = l

                if not item.get('is_comment'):
                    # Replace objdump targets with labels or symbols
                    m = re.search(r'\b([0-9a-fA-F]{7,8})\s*<([^>]+)>', raw_instr)
                    if m:
                        target_addr = int(m.group(1), 16)
                        target_sym = m.group(2).split('+')[0]
                        if low <= target_addr < high:
                            raw_instr = raw_instr[:m.start()] + f".L{target_addr:08x}"
                        else:
                            raw_instr = raw_instr[:m.start()] + target_sym

                    # Convert bgezall / bgezal with zero to bal
                    raw_instr = re.sub(r'\bbgezall?\s+[$]?zero\s*,\s*', 'bal ', raw_instr)

                    formatted = format_instruction(addr, raw_instr)
                    f.write(f"    {formatted}\n")
                else:
                    f.write(f"    {raw_instr}\n")

            f.write(f".end {fname}\n\n")

        if cu_jtbls:
            f.write(".late_rodata\n")
            for t_addr, t_info in sorted(cu_jtbls.items()):
                f.write(f"{f'jtbl_{t_addr:08x}'}:\n")
                for target in t_info['entries']:
                    f.write(f"    .word .L{target:08x}\n")
            f.write("\n")

        if cu_lits:
            f.write(".rdata\n")
            for lit_sym, (lit_size, lit_val) in sorted(cu_lits.items()):
                f.write(f"{lit_sym}:\n")
                if lit_size == 4:
                    f.write(f"    .word 0x{lit_val:08x}\n")
                else:
                    f.write(f"    .word 0x{lit_val >> 32:08x}, 0x{lit_val & 0xffffffff:08x}\n")
            f.write("\n")

def parse_gl_api_prototypes():
    protos = {}
    gl_h = f"{OUT_DIR}/include/gl_1_1.h"
    if os.path.exists(gl_h):
        with open(gl_h) as f:
            for line in f:
                m = re.match(r'^(.*?)\s+gl(\w+)\s*\((.*?)\);', line.strip())
                if m:
                    ret, name, params = m.groups()
                    protos[name] = (ret.strip(), params.strip())
    print(f"[*] Loaded {len(protos)} API prototypes from gl_1_1.h.")
    return protos

def generate_context_headers(all_funcs):
    print("[*] Generating context headers for m2c...")
    gl_api = parse_gl_api_prototypes()

    # 1. libglcore/include/glcore_types.h
    types_path = f"{OUT_DIR}/include/glcore_types.h"
    if not os.path.exists(types_path):
        with open(types_path, 'w') as f:
            f.write("""#ifndef __GLCORE_TYPES_H__
#define __GLCORE_TYPES_H__

/* Primitive integer and floating point types */
typedef signed char         s8;
typedef unsigned char       u8;
typedef signed short        s16;
typedef unsigned short      u16;
typedef signed int          s32;
typedef unsigned int        u32;
typedef signed long long    s64;
typedef unsigned long long  u64;
typedef float               f32;
typedef double              f64;
typedef unsigned int        size_t;

/* Standard OpenGL 1.1 types and enums */
#include "gl_enums.h"
typedef unsigned char       GLboolean;
typedef unsigned int        GLbitfield;
typedef signed char         GLbyte;
typedef short               GLshort;
typedef int                 GLint;
typedef int                 GLsizei;
typedef unsigned char       GLubyte;
typedef unsigned short      GLushort;
typedef unsigned int        GLuint;
typedef float               GLfloat;
typedef float               GLclampf;
typedef double              GLdouble;
typedef double              GLclampd;
typedef void                GLvoid;

/* SGI Hardware headers */
#include "GR2.h"
#include "HQ2.h"
#include "GE7.h"
#include "RE3.h"

/* Forward declarations */
struct __GLcontextRec;
typedef struct __GLcontextRec __GLcontext;
struct __GLattributeRec;
typedef struct __GLattributeRec __GLattribute;

/* OpenGL Begin/End Execution State */
typedef enum __GLbeginModeEnum {
    __GL_NOT_IN_BEGIN   = 0,
    __GL_IN_BEGIN       = 1,
    __GL_NEED_VALIDATE  = 2
} __GLbeginMode;

/* Basic geometric structures */
typedef struct __GLcoordRec {
    GLfloat x, y, z, w;
} __GLcoord;

typedef struct __GLcolorRec {
    GLfloat r, g, b, a;
} __GLcolor;

struct __GLmatrixRec;
typedef struct __GLmatrixRec __GLmatrix;

struct __GLmatrixRec {
    GLfloat matrix[4][4];       /* 0x00 - 0x3F (64 bytes) */
    GLenum  matrixType;         /* 0x40 */
    GLshort width, height;      /* 0x44, 0x46 */
    void (*xf2)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x48 */
    void (*xf3)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x4C */
    void (*xf4)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x50 */
    char pad[4];                /* 0x54 - 0x57 */
};

typedef struct __GLtransformRec {
    __GLmatrix matrix;             /* 0x00 - 0x57 (88 bytes) */
    __GLmatrix inverseTranspose;   /* 0x58 - 0xAF (88 bytes) */
    __GLmatrix mvp;                /* 0xB0 - 0x107 (88 bytes) */
    GLuint sequence;               /* 0x108 */
    GLboolean updateInverse;       /* 0x10C */
    char pad[3];
    GLfloat rescaleFactor;         /* 0x110 */
} __GLtransform;

/* Vertex structure (__GLvertexRec: 192 bytes = 0xC0) */
typedef struct __GLvertexRec {
    /* 0x00 */ GLuint                   flagBits;           /* 0x00 */
    /* 0x04 */ GLuint                   pad4;               /* 0x04 */
    /* 0x08 */ void                     (*validate)(struct __GLcontextRec *gc, struct __GLvertexRec *v); /* 0x08 */
    /* 0x0C */ GLuint                   pad0C;              /* 0x0C */
    /* 0x10 */ __GLcoord                obj;                /* 0x10 */
    /* 0x20 */ __GLcoord                normal;             /* 0x20 */
    /* 0x30 */ __GLcoord                texture[1];         /* 0x30 */
    /* 0x40 */ char                     pad40[0x20];        /* 0x40 */
    /* 0x60 */ __GLcoord                eye;                /* 0x60 */
    /* 0x70 */ __GLcoord                clip;               /* 0x70 */
    /* 0x80 */ __GLcoord                window;             /* 0x80 */
    /* 0x90 */ __GLcolor                colors[2];          /* 0x90 */
    /* 0xB0 */ char                     padB0[0x10];        /* 0xB0 */
} __GLvertex;


/* Operating System / Window System Interfaces */
typedef struct __GLimportsRec {
    void *(*malloc)(__GLcontext *gc, size_t size);
    void *(*calloc)(__GLcontext *gc, size_t numElem, size_t elemSize);
    void *(*realloc)(__GLcontext *gc, void *oldAddr, size_t newSize);
    void (*free)(__GLcontext *gc, void *addr);
    void (*warning)(__GLcontext *gc, char *fmt);
    void (*fatal)(__GLcontext *gc, char *fmt);
    char *(*getenv)(__GLcontext *gc, const char *var);
    int (*atoi)(__GLcontext *gc, const char *str);
    int (*sprintf)(__GLcontext *gc, char *str, const char *fmt, ...);
    void *(*fopen)(__GLcontext *gc, const char *path, const char *mode);
    int (*fclose)(__GLcontext *gc, void *stream);
    int (*fprintf)(__GLcontext *gc, void *stream, const char *fmt, ...);
    void *(*getDrawablePrivate)(__GLcontext *gc);
    void *wscx;
    void *other;
    char pad[16];
} __GLimports;

typedef struct __GLexportsRec {
    GLboolean (*destroyContext)(__GLcontext *gc);
    GLboolean (*loseCurrent)(__GLcontext *gc);
    GLboolean (*makeCurrent)(__GLcontext *gc);
    GLboolean (*shareContext)(__GLcontext *gc, __GLcontext *gcShare);
    GLboolean (*copyContext)(__GLcontext *dst, const __GLcontext *src, GLuint mask);
    GLboolean (*forceCurrent)(__GLcontext *gc);
    GLboolean (*notifyResize)(__GLcontext *gc);
    void (*notifyDestroy)(__GLcontext *gc);
    void (*notifySwapBuffers)(__GLcontext *gc);
    void *(*dispatchExec)(__GLcontext *gc);
    void (*beginDispatchOverride)(__GLcontext *gc);
    void (*endDispatchOverride)(__GLcontext *gc);
    char pad[24];
} __GLexports;

/* Point state */
typedef struct __GLpointStateRec {
    GLfloat requestedSize;              /* 0x00 */
    GLfloat smoothSize;                 /* 0x04 */
    GLint   aliasedSize;                /* 0x08 */
} __GLpointState;

/* Line state */
typedef struct __GLlineStateRec {
    GLfloat  requestedWidth;            /* 0x00 */
    GLfloat  smoothWidth;               /* 0x04 */
    GLint    aliasedWidth;              /* 0x08 */
    GLushort stipple;                   /* 0x0C */
    GLshort  stippleRepeat;             /* 0x0E */
} __GLlineState;

/* Polygon state */
typedef struct __GLpolygonStateRec {
    GLenum   frontMode;                 /* 0x00 */
    GLenum   backMode;                  /* 0x04 */
    GLenum   cull;                      /* 0x08 */
    GLenum   frontFaceDirection;        /* 0x0C */
    GLfloat  factor;                    /* 0x10 */
    GLfloat  units;                     /* 0x14 */
    GLfloat  mask;                      /* 0x18 */
} __GLpolygonState;

/* Polygon stipple state */
typedef struct __GLpolygonStippleStateRec {
    GLubyte stipple[128];               /* 128 bytes = 0x80 */
} __GLpolygonStippleState;

/* Pixel state */
typedef struct __GLpixelStateRec {
    char pad[680];                      /* 680 bytes = 0x2A8 */
} __GLpixelState;

/* Material state */
typedef struct __GLmaterialStateRec {
    __GLcolor ambient;                  /* 0x00 (16 bytes) */
    __GLcolor diffuse;                  /* 0x10 (16 bytes) */
    __GLcolor specular;                 /* 0x20 (16 bytes) */
    __GLcolor emissive;                 /* 0x30 (16 bytes) */
    GLfloat   specularExponent;         /* 0x40 */
    GLfloat   cmapa, cmaps, cmapd;      /* 0x44 (12 bytes) */
} __GLmaterialState;

/* Light model state */
typedef struct __GLlightModelStateRec {
    __GLcolor ambient;                  /* 0x00 */
    GLboolean localViewer;              /* 0x10 */
    GLboolean twoSided;                 /* 0x11 */
    char      pad[2];                   /* 0x12 */
} __GLlightModelState;

/* Light source state (0x74 bytes each) */
typedef struct __GLlightSourceStateRec {
    __GLcolor ambient;                  /* 0x00 */
    __GLcolor diffuse;                  /* 0x10 */
    __GLcolor specular;                 /* 0x20 */
    __GLcoord position;                 /* 0x30 */
    __GLcoord positionEye;              /* 0x40 */
    __GLcoord direction;                /* 0x50 */
    GLfloat   spotLightExponent;        /* 0x60 */
    GLfloat   spotLightCutOffAngle;     /* 0x64 */
    GLfloat   constantAttenuation;      /* 0x68 */
    GLfloat   linearAttenuation;        /* 0x6C */
    GLfloat   quadraticAttenuation;     /* 0x70 */
} __GLlightSourceState;

/* Light state */
typedef struct __GLlightStateRec {
    GLenum               colorMaterialFace;  /* 0x00 */
    GLenum               colorMaterialParam; /* 0x04 */
    GLenum               shadingModel;       /* 0x08 */
    __GLlightModelState  model;              /* 0x0C */
    __GLmaterialState    front;              /* 0x20 */
    __GLmaterialState    back;               /* 0x70 */
    __GLlightSourceState *source;            /* 0xC0 */
} __GLlightState;

/* Fog state */
typedef struct __GLfogStateRec {
    GLenum    mode;                     /* 0x00 */
    __GLcolor color;                    /* 0x04 */
    GLfloat   density;                  /* 0x14 */
    GLfloat   start;                    /* 0x18 */
    GLfloat   end;                      /* 0x1C */
    GLfloat   oneOverEMinusS;           /* 0x20 */
    GLfloat   index;                    /* 0x24 */
} __GLfogState;

/* Depth buffer state */
typedef struct __GLdepthStateRec {
    GLenum    testFunc;                 /* 0x00 */
    GLboolean writeEnable;              /* 0x04 */
    char      pad[3];                   /* 0x05 */
    GLdouble  clear;                    /* 0x08 */
} __GLdepthState;

/* Accumulation buffer state */
typedef struct __GLaccumStateRec {
    __GLcolor clear;                    /* 0x00 */
} __GLaccumState;

/* Stencil state */
typedef struct __GLstencilStateRec {
    GLenum  testFunc;                   /* 0x00 */
    GLshort clear;                      /* 0x04 */
    GLshort reference;                  /* 0x06 */
    GLshort mask;                       /* 0x08 */
    GLshort writeMask;                  /* 0x0A */
    GLenum  fail;                       /* 0x0C */
    GLenum  depthFail;                  /* 0x10 */
    GLenum  depthPass;                  /* 0x14 */
} __GLstencilState;

/* Viewport state */
typedef struct __GLviewportRec {
    GLint    x, y;                      /* 0x00, 0x04 */
    GLsizei  width, height;             /* 0x08, 0x0C */
    GLdouble zNear, zFar;               /* 0x10, 0x18 */
    GLfloat  xScale, xCenter;           /* 0x20, 0x24 */
    GLfloat  yScale, yCenter;           /* 0x28, 0x2C */
    GLfloat  zScale, zCenter;           /* 0x30, 0x34 */
} __GLviewport;

/* Transform state */
typedef struct __GLtransformStateRec {
    GLenum    matrixMode;               /* 0x00 */
    __GLcoord *eyeClipPlanes;           /* 0x04 */
    char      pad[8];                   /* 0x08 */
} __GLtransformState;

/* Enable state */
typedef struct __GLenableStateRec {
    GLuint general;                     /* 0x00 (offset 0x6A0 in gc) */
    GLuint texture;                     /* 0x04 (offset 0x6A4 in gc) */
    GLuint lights;                      /* 0x08 (offset 0x6A8 in gc) */
    GLuint clipPlanes;                  /* 0x0C (offset 0x6AC in gc) */
    GLuint pixelPath;                   /* 0x10 (offset 0x6B0 in gc) */
    GLuint eval;                        /* 0x14 (offset 0x6B4 in gc) */
} __GLenableState;

/* Raster state machine (76 bytes = 0x4C) */
typedef struct __GLrasterStateRec {
    GLenum    alphaFunction;            /* 0x00 (offset 1720 / 0x6B8 in gc) */
    GLclampf  alphaReference;           /* 0x04 (offset 1724 / 0x6BC in gc) */
    GLenum    blendSrc;                 /* 0x08 (offset 1728 / 0x6C0 in gc) */
    GLenum    blendDst;                 /* 0x0C (offset 1732 / 0x6C4 in gc) */
    __GLcolor blendColor;               /* 0x10 (offset 1736 / 0x6C8 in gc) */
    GLenum    blendMode;                /* 0x20 (offset 1752 / 0x6D8 in gc) */
    GLenum    logicOp;                  /* 0x24 (offset 1756 / 0x6DC in gc) */
    __GLcolor clear;                    /* 0x28 (offset 1760 / 0x6E0 in gc) */
    GLfloat   clearIndex;               /* 0x38 (offset 1776 / 0x6F0 in gc) */
    GLint     writeMask;                /* 0x3C (offset 1780 / 0x6F4 in gc) */
    GLboolean rMask, gMask, bMask, aMask; /* 0x40 (offset 1784 / 0x6F8 in gc) */
    GLenum    drawBuffer;               /* 0x44 (offset 1788 / 0x6FC in gc) */
    GLenum    drawBufferReturn;         /* 0x48 (offset 1792 / 0x700 in gc) */
} __GLrasterState;

/* Hint state */
typedef struct __GLhintStateRec {
    GLenum perspectiveCorrection;       /* 0x00 (offset 0x704 in gc) */
    GLenum pointSmooth;                 /* 0x04 (offset 0x708 in gc) */
    GLenum lineSmooth;                  /* 0x08 (offset 0x70C in gc) */
    GLenum polygonSmooth;               /* 0x0C (offset 0x710 in gc) */
    GLenum fog;                         /* 0x10 (offset 0x714 in gc) */
    GLenum textureBuffer;               /* 0x14 (offset 0x718 in gc) */
    GLenum generateMipmap;              /* 0x18 (offset 0x71C in gc) */
} __GLhintState;

/* Evaluator state */
typedef struct __GLevaluatorStateRec {
    char pad[48];                       /* 0x00 (offset 0x720 in gc) */
} __GLevaluatorState;

/* Display list state */
typedef struct __GLdlistStateRec {
    GLuint listBase;                    /* 0x00 (offset 0x750 in gc) */
} __GLdlistState;

/* Texture state */
typedef struct __GLtextureStateRec {
    char pad[536];                      /* 0x00 (offset 0x754 in gc) */
} __GLtextureState;

/* Scissor state */
typedef struct __GLscissorRec {
    GLint   scissorX;                   /* 0x00 (offset 0x96C in gc) */
    GLint   scissorY;                   /* 0x04 (offset 0x970 in gc) */
    GLsizei scissorWidth;               /* 0x08 (offset 0x974 in gc) */
    GLsizei scissorHeight;              /* 0x0C (offset 0x978 in gc) */
} __GLscissor;

/* Color table state */
typedef struct __GLcolorTableStateRec {
    char pad[660];                      /* 0x00 (offset 0x97C in gc) */
} __GLcolorTableState;

/* Current state (__GLcurrentStateRec: 272 bytes = 0x110) */
typedef struct __GLcurrentStateRec {
    /* 0x000 */ char                    pad0[8];            /* 0x00 (offset 0x0A0 in gc) */
    /* 0x008 */ __GLcolor               color;              /* 0x08 (offset 0x0A8 in gc) */
    /* 0x018 */ __GLcoord               normal;             /* 0x18 (offset 0x0B8 in gc) */
    /* 0x028 */ __GLcoord               texture[1];         /* 0x28 (offset 0x0C8 in gc) */
    /* 0x038 */ __GLvertex              rasterPos;          /* 0x38 (offset 0x0D8 in gc) */
    /* 0x0F8 */ __GLcolor               userColor;          /* 0xF8 (offset 0x198 in gc) */
    /* 0x108 */ GLfloat                 userColorIndex;     /* 0x108 (offset 0x1A8 in gc) */
    /* 0x10C */ GLboolean               validRasterPos;     /* 0x10C (offset 0x1AC in gc) */
    /* 0x10D */ GLboolean               edgeTag;            /* 0x10D (offset 0x1AD in gc) */
    /* 0x10E */ GLubyte                 pad10E[2];          /* 0x10E (offset 0x1AE in gc) */
} __GLcurrentState;


/* Stackable attribute state (__GLattributeRec: 2936 bytes = 0xB78) */
struct __GLattributeRec {
    GLuint                  mask;               /* 0x000 (offset 0x098 in gc) */
    GLint                   pad4;               /* 0x004 */
    __GLcurrentState        current;            /* 0x008 (offset 0x0A0 in gc) */
    __GLpointState          point;              /* 0x118 (offset 0x1B0 in gc) */
    __GLlineState           line;               /* 0x124 (offset 0x1BC in gc) */
    __GLpolygonState        polygon;            /* 0x134 (offset 0x1CC in gc) */
    __GLpolygonStippleState  polygonStipple;     /* 0x150 (offset 0x1E8 in gc) */
    __GLpixelState          pixel;              /* 0x1D0 (offset 0x268 in gc) */
    __GLlightState          light;              /* 0x478 (offset 0x510 in gc) */
    __GLfogState            fog;                /* 0x53C (offset 0x5D4 in gc) */
    char                    pad_fog[4];         /* 0x564 */
    __GLdepthState          depth;              /* 0x568 (offset 0x600 in gc) */
    __GLaccumState          accum;              /* 0x578 (offset 0x610 in gc) */
    __GLstencilState        stencil;            /* 0x588 (offset 0x620 in gc) */
    __GLviewport            viewport;           /* 0x5A0 (offset 0x638 in gc) */
    __GLtransformState      transform;          /* 0x5D8 (offset 0x670 in gc) */
    char                    pad_trans[32];      /* 0x5E8 */
    __GLenableState         enables;            /* 0x608 (offset 0x6A0 in gc) */
    __GLrasterState         raster;             /* 0x620 (offset 0x6B8 in gc) */
    __GLhintState           hints;              /* 0x66C (offset 0x704 in gc) */
    __GLevaluatorState      evaluator;          /* 0x688 (offset 0x720 in gc) */
    __GLdlistState          list;               /* 0x6B8 (offset 0x750 in gc) */
    __GLtextureState        texture;            /* 0x6BC (offset 0x754 in gc) */
    __GLscissor             scissor;            /* 0x8D4 (offset 0x96C in gc) */
    __GLcolorTableState     colorTable;         /* 0x8E4 (offset 0x97C in gc) */
};

/* Context rendering modes (88 bytes = 0x58) */
typedef struct __GLcontextModesRec {
    GLint       visualID;               /* 0x00 */
    GLboolean   rgbMode;                /* 0x04 */
    GLboolean   colorIndexMode;         /* 0x05 */
    GLboolean   doubleBufferMode;       /* 0x06 */
    GLboolean   stereoMode;             /* 0x07 */
    GLboolean   haveAccumBuffer;        /* 0x08 */
    GLboolean   haveDepthBuffer;        /* 0x09 */
    GLboolean   haveStencilBuffer;      /* 0x0A */
    GLboolean   pad0;                   /* 0x0B */
    GLint       accumRedBits;           /* 0x0C */
    GLint       accumGreenBits;         /* 0x10 */
    GLint       accumBlueBits;          /* 0x14 */
    GLint       accumAlphaBits;         /* 0x18 */
    GLint       depthBits;              /* 0x1C */
    GLint       stencilBits;            /* 0x20 */
    GLint       indexBits;              /* 0x24 */
    GLint       redBits;                /* 0x28 */
    GLint       greenBits;              /* 0x2C */
    GLint       blueBits;               /* 0x30 */
    GLint       alphaBits;              /* 0x34 */
    GLuint      redMask;                /* 0x38 */
    GLuint      greenMask;              /* 0x3C */
    GLuint      blueMask;               /* 0x40 */
    GLuint      alphaMask;              /* 0x44 */
    GLint       rgbBits;                /* 0x48 */
    GLint       level;                  /* 0x4C */
    GLint       numAuxBuffers;          /* 0x50 */
    GLint       maxAuxBuffers;          /* 0x54 */
} __GLcontextModes;

/* Context constants */
typedef struct __GLcontextConstantsRec {
    GLfloat     half;                   /* 0x00 (offset 0xCD0 in gc) */
    GLfloat     one;                    /* 0x04 (offset 0xCD4 in gc) */
    GLfloat     val255;                 /* 0x08 (offset 0xCD8 in gc) */
    GLfloat     oneOver255;             /* 0x0C (offset 0xCDC in gc) */
    GLfloat     val65535;               /* 0x10 (offset 0xCE0 in gc) */
    GLfloat     oneOver65535;           /* 0x14 (offset 0xCE4 in gc) */
    GLfloat     val4294965000;          /* 0x18 (offset 0xCE8 in gc) */
    GLfloat     oneOver4294965000;      /* 0x1C (offset 0xCEC in gc) */
    char        *vendor;                /* 0x20 (offset 0xCF0 in gc) */
    char        *renderer;              /* 0x24 (offset 0xCF4 in gc) */
    char        *version;               /* 0x28 (offset 0xCF8 in gc) */
    char        *extensions;            /* 0x2C (offset 0xCFC in gc) */
    GLint       numberOfLights;         /* 0x30 (offset 0xD00 in gc) */
    GLint       numberOfClipPlanes;     /* 0x34 (offset 0xD04 in gc) */
    GLint       maxViewportWidth;       /* 0x38 (offset 0xD08 in gc) */
    GLint       maxViewportHeight;      /* 0x3C (offset 0xD0C in gc) */
    char        pad_align[28];          /* 0x40 - 0x5B */
    GLint       viewportXAdjust;        /* 0x5C (offset 0xD2C in gc) */
    GLint       viewportYAdjust;        /* 0x60 (offset 0xD30 in gc) */
    GLfloat     fviewportXAdjust;       /* 0x64 (offset 0xD34 in gc) */
    GLfloat     fviewportYAdjust;       /* 0x68 (offset 0xD38 in gc) */
    char        pad_rescale[92];        /* 0x6C - 0xC7 */
    GLint       maxAttribStackDepth;    /* 0xC8 (offset 0xD98 in gc) */
    GLint       maxClientAttribStackDepth; /* 0xCC (offset 0xD9C in gc) */
    GLint       maxNameStackDepth;      /* 0xD0 (offset 0xDA0 in gc) */
    GLint       maxColorStackDepth;     /* 0xD4 (offset 0xDA4 in gc) */
    GLint       maxModelViewStackDepth; /* 0xD8 (offset 0xDA8 in gc) */
    GLint       maxProjectionStackDepth;/* 0xDC (offset 0xDAC in gc) */
    GLint       maxTextureStackDepth;   /* 0xE0 (offset 0xDB0 in gc) */
} __GLcontextConstants;

/* Generic buffer header (28 bytes = 0x1C) */
typedef struct __GLbufferRec {
    __GLcontext         *gc;            /* 0x00 */
    void                *drawableBuf;   /* 0x04 */
    void                *other;         /* 0x08 */
    void                (*resize)();    /* 0x0C */
    void                (*makeCurrent)();/* 0x10 */
    void                (*loseCurrent)();/* 0x14 */
    void                (*free)();      /* 0x18 */
} __GLbuffer;

/* Color buffer structure (220 bytes = 0xDC) */
typedef struct __GLcolorBufferRec __GLcolorBuffer;
struct __GLcolorBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    GLint               redMax, greenMax, blueMax; /* 0x1C, 0x20, 0x24 */
    GLboolean           needColorFragmentOps; /* 0x28 */
    char                pad29[3];       /* 0x29 */
    GLubyte             *alphaTestFuncTable; /* 0x2C */
    GLfloat             redScale, greenScale, blueScale; /* 0x30, 0x34, 0x38 */
    GLint               iRedScale, iGreenScale, iBlueScale; /* 0x3C, 0x40, 0x44 */
    GLint               redShift, greenShift, blueShift, alphaShift; /* 0x48, 0x4C, 0x50, 0x54 */
    GLfloat             alphaScale;     /* 0x58 */
    GLint               iAlphaScale;    /* 0x5C */
    GLfloat             oneOverRedScale, oneOverGreenScale, oneOverBlueScale, oneOverAlphaScale; /* 0x60, 0x64, 0x68, 0x6C */
    GLuint              sourceMask, destMask; /* 0x70, 0x74 */
    void                (*pick)();      /* 0x78 */
    GLint               (*getDisplayMasks)(); /* 0x7C */
    void                (*store)();     /* 0x80 */
    void                (*fetch)();     /* 0x84 */
    void                (*readColor)(); /* 0x88 */
    GLboolean           (*readSpan)();  /* 0x8C */
    void                (*returnSpan)();/* 0x90 */
    void                *storeSpan;     /* 0x94 */
    void                *storeStippledSpan; /* 0x98 */
    void                *storeLine;     /* 0x9C */
    void                *storeStippledLine; /* 0xA0 */
    void                *fetchSpan;     /* 0xA4 */
    void                *fetchStippledSpan; /* 0xA8 */
    void                *fetchLine;     /* 0xAC */
    void                *fetchStippledLine; /* 0xB0 */
    char                padB4[36];      /* 0xB4 */
    void                (*clear)(__GLcolorBuffer *cfb); /* 0xD8 */
};

/* Stencil buffer structure (120 bytes = 0x78) */
typedef struct __GLstencilBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[88];      /* 0x1C */
    void                (*clear)(struct __GLstencilBufferRec *sfb, s64 mask, __GLcontext *gc); /* 0x74 */
} __GLstencilBuffer;

/* Depth buffer structure (132 bytes = 0x84) */
typedef struct __GLdepthBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[48];      /* 0x1C */
    GLuint              scale;          /* 0x4C (offset 76) */
    char                pad50[40];      /* 0x50 */
    void                (*clear)(struct __GLdepthBufferRec *dfb, s64 mask, __GLcontext *gc); /* 0x78 */
    char                pad7C[8];       /* 0x7C */
} __GLdepthBuffer;

/* Accumulation buffer structure (112 bytes = 0x70) */
typedef struct __GLaccumBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[80];      /* 0x1C */
    void                (*clear)(struct __GLaccumBufferRec *afb); /* 0x6C */
} __GLaccumBuffer;

/* Mode-dependent procs */
typedef struct __GLprocsRec {
    void (*validate)(__GLcontext *gc);
    void (*finish)(__GLcontext *gc);
    void (*flush)(__GLcontext *gc);
    void (*applyColor)(__GLcontext *gc);
    void *table[128];
    char pad[324];
} __GLprocs;

/* Attribute stack machine */
typedef struct __GLattributeMachineRec {
    __GLattribute **stack;              /* 0x00 (offset 0x3184 in gc) */
    __GLattribute **stackPointer;       /* 0x04 (offset 0x3188 in gc) */
} __GLattributeMachine;

/* Transform machine */
typedef struct __GLtransformMachineRec {
    __GLtransform *modelView;           /* 0x00 (offset 0x73E0 in gc) */
    __GLtransform *projectionStack;     /* 0x04 (offset 0x73E4 in gc) */
    __GLtransform *projection;          /* 0x08 (offset 0x73E8 in gc) */
    GLuint        projectionSequence;   /* 0x0C (offset 0x73EC in gc) */
    __GLtransform *textureStack[1];     /* 0x10 (offset 0x73F0 in gc) */
    __GLtransform *texture[1];          /* 0x14 (offset 0x73F4 in gc) */
} __GLtransformMachine;

/* Master context structure (__GLcontextRec: 31608 bytes = 0x7B78) */
struct __GLcontextRec {
    __GLimports             imports;            /* 0x0000 - 0x004B (76 bytes) */
    __GLexports             exports;            /* 0x004C - 0x0093 (72 bytes) */
    GLint                   gcState;            /* 0x0094 - 0x0097 (4 bytes) */
    __GLattribute           state;              /* 0x0098 - 0x0C0F (2936 bytes) */
    u32                     beginMode;          /* 0x0C10 - 0x0C13 (4 bytes) */
    GLenum                  renderMode;         /* 0x0C14 - 0x0C17 (4 bytes) */
    GLint                   error;              /* 0x0C18 - 0x0C1B (4 bytes) */
    __GLcontextModes        modes;              /* 0x0C1C - 0x0C73 (88 bytes) */
    __GLcontextModes        readModes;          /* 0x0C74 - 0x0CCB (88 bytes) */
    GLboolean               yInverted;          /* 0x0CCC (1 byte) */
    char                    pad_yinv[3];        /* 0x0CCD - 0x0CCF (3 bytes) */
    __GLcontextConstants    constants;          /* 0x0CD0 - 0x0DB3 */
    char                    pad_const[8252];    /* 0x0DB4 - 0x2DEF */
    GLuint                  validateMask;       /* 0x2DF0 (11760) */
    GLuint                  dirtyMask;          /* 0x2DF4 (11764) */
    __GLcolorBuffer         *drawBuffer;        /* 0x2DF8 (11768) */
    __GLcolorBuffer         *readBuffer;        /* 0x2DFC (11772) */
    char                    pad_proc[16];       /* 0x2E00 - 0x2E0F */
    void                    (*validate)(__GLcontext *gc); /* 0x2E10 (11792) */
    char                    pad_proc2[28];      /* 0x2E14 - 0x2E2F */
    __GLprocs               procs;              /* 0x2E30 (11824) */
    __GLattributeMachine    attributes;         /* 0x3184 (12676) */
    char                    pad_mid2[16980];    /* 0x318C - 0x73DF */
    __GLtransformMachine    transform;          /* 0x73E0 - 0x73F7 */
    char                    pad_mach[972];      /* 0x73F8 - 0x77C3 (972 bytes) */
    __GLcolorBuffer         *front;             /* 0x77C4 (30660) */
    __GLcolorBuffer         *back;              /* 0x77C8 (30664) */
    __GLcolorBuffer         frontBuffer;        /* 0x77CC (30668, 220 bytes) */
    __GLcolorBuffer         backBuffer;         /* 0x78A8 (30888, 220 bytes) */
    __GLcolorBuffer         *auxBuffer;         /* 0x7984 (31108) */
    __GLstencilBuffer       stencilBuffer;      /* 0x7988 (31112, 120 bytes) */
    __GLdepthBuffer         depthBuffer;        /* 0x7A00 (31232, 132 bytes) */
    __GLaccumBuffer         accumBuffer;        /* 0x7A84 (31364, 112 bytes) */
    char                    pad_bufend[28];     /* 0x7AF4 - 0x7B0F (28 bytes) */
    GLint                   fd;                 /* 0x7B10 (graphics device fd) */
    GLint                   boardIndex;         /* 0x7B14 (board index) */
    GLint                   zDepth;             /* 0x7B18 (bits of Z: 24) */
    GLint                   stencilDepth;       /* 0x7B1C (bits of stencil: 4) */
    char                    rendererString[40]; /* 0x7B20 - 0x7B47 (40 bytes) */
    GLuint                  swapInterval;       /* 0x7B48 (buffer swap interval) */
    u8                      hwFlags;            /* 0x7B4C */
    u8                      haveZ;              /* 0x7B4D (1 if depth installed) */
    u8                      haveStencil;        /* 0x7B4E (1 if stencil installed) */
    u8                      fastMode;           /* 0x7B4F */
    void                    (*primitiveProcs[10])(__GLcontext *gc); /* 0x7B50 - 0x7B77 (40 bytes) */
};

/* Driver private lighting LUT state (12 bytes = 0x0C) */
typedef struct __GLLightLUTStateRec {
    GLfloat spotExponent;
    GLfloat cosCutoff;
    GLint   lutIndex;
} __GLLightLUTState;

/* Driver-specific private context extension (__GLEXPRESScontext: 31896 bytes = 0x7C98) */
typedef struct __GLEXPRESScontextRec {
    __GLcontext         gc;                 /* 0x0000 - 0x7B77 (31608 bytes) */
    char                pad7B78[0x54];      /* 0x7B78 - 0x7BCB */
    void                (*czClear)(__GLcolorBuffer *cfb, __GLdepthBuffer *dfb); /* 0x7BCC */
    GLuint              polygonStipple[32]; /* 0x7BD0 - 0x7C4F (128 bytes) */
    __GLLightLUTState   *lightLUTs;         /* 0x7C50 */
    GLfloat             frontSpecularExponent; /* 0x7C54 */
    GLuint              frontSpecularLUT;   /* 0x7C58 */
    GLfloat             backSpecularExponent; /* 0x7C5C */
    GLuint              backSpecularLUT;    /* 0x7C60 */
    GLuint              lightModelFlags;    /* 0x7C64 */
    GLuint              lightModelParam;    /* 0x7C68 */
    GLuint              lightCacheCount;    /* 0x7C6C */
    GLuint              lightCacheMask;     /* 0x7C70 */
    GLuint              lightStateDirty;    /* 0x7C74 */
    GLuint              pad7C78;            /* 0x7C78 */
    GLuint              spotLUTInitialized; /* 0x7C7C */
    GLfloat             spanState[3];       /* 0x7C80 - 0x7C8B */
    GLuint              pad7C8C;            /* 0x7C8C */
    void                *devicePrivate;     /* 0x7C90 */
    GLuint              pad7C94;            /* 0x7C94 */
} __GLEXPRESScontext;

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) && (__SIZEOF_POINTER__ == 4) && !defined(_LANGUAGE_C)
_Static_assert(sizeof(__GLcontext) == 0x7B78, "sizeof(__GLcontext) must be 0x7B78");
_Static_assert(__builtin_offsetof(__GLcontext, fd) == 0x7B10, "__GLcontext.fd offset");
_Static_assert(__builtin_offsetof(__GLcontext, boardIndex) == 0x7B14, "__GLcontext.boardIndex offset");
_Static_assert(__builtin_offsetof(__GLcontext, zDepth) == 0x7B18, "__GLcontext.zDepth offset");
_Static_assert(__builtin_offsetof(__GLcontext, stencilDepth) == 0x7B1C, "__GLcontext.stencilDepth offset");
_Static_assert(__builtin_offsetof(__GLcontext, rendererString) == 0x7B20, "__GLcontext.rendererString offset");
_Static_assert(__builtin_offsetof(__GLcontext, swapInterval) == 0x7B48, "__GLcontext.swapInterval offset");
_Static_assert(__builtin_offsetof(__GLcontext, hwFlags) == 0x7B4C, "__GLcontext.hwFlags offset");
_Static_assert(__builtin_offsetof(__GLcontext, haveZ) == 0x7B4D, "__GLcontext.haveZ offset");
_Static_assert(__builtin_offsetof(__GLcontext, haveStencil) == 0x7B4E, "__GLcontext.haveStencil offset");
_Static_assert(__builtin_offsetof(__GLcontext, fastMode) == 0x7B4F, "__GLcontext.fastMode offset");
_Static_assert(__builtin_offsetof(__GLcontext, primitiveProcs) == 0x7B50, "__GLcontext.primitiveProcs offset");
_Static_assert(sizeof(__GLEXPRESScontext) == 0x7C98, "sizeof(__GLEXPRESScontext) must be 0x7C98");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, czClear) == 0x7BCC, "__GLEXPRESScontext.czClear offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, polygonStipple) == 0x7BD0, "__GLEXPRESScontext.polygonStipple offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, lightLUTs) == 0x7C50, "__GLEXPRESScontext.lightLUTs offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, frontSpecularExponent) == 0x7C54, "__GLEXPRESScontext.frontSpecularExponent offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, frontSpecularLUT) == 0x7C58, "__GLEXPRESScontext.frontSpecularLUT offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, backSpecularExponent) == 0x7C5C, "__GLEXPRESScontext.backSpecularExponent offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, backSpecularLUT) == 0x7C60, "__GLEXPRESScontext.backSpecularLUT offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, spotLUTInitialized) == 0x7C7C, "__GLEXPRESScontext.spotLUTInitialized offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, devicePrivate) == 0x7C90, "__GLEXPRESScontext.devicePrivate offset");
#endif

/* Global thread context symbols loaded at 0x1010 and 0x1018 */
extern __GLcontext *__glCurrentContext;
extern u32 __glBeginMode;

/* Standard internal helper error dispatch */
void __glSetError(GLenum code);

#endif /* __GLCORE_TYPES_H__ */
""")

    # 2. libglcore/include/glcore_prots.h
    prots_path = f"{OUT_DIR}/include/glcore_prots.h"
    with open(prots_path, 'w') as f:
        f.write("#ifndef __GLCORE_PROTS_H__\n#define __GLCORE_PROTS_H__\n\n")
        f.write("/* Standard libc & system functions */\n")
        f.write("int ioctl(int fd, unsigned long request, ...);\n")
        f.write("int printf(const char *format, ...);\n")
        f.write("void *malloc(u32 size);\n")
        f.write("void free(void *ptr);\n")
        f.write("void *memcpy(void *dest, const void *src, u32 n);\n")
        f.write("void *memset(void *s, int c, u32 n);\n")
        f.write("void bzero(void *s, u32 n);\n")
        f.write("f32 sqrtf(f32 x);\n")
        f.write("f32 fabsf(f32 x);\n")
        f.write("f32 floorf(f32 x);\n")
        f.write("f32 ceilf(f32 x);\n")
        f.write("f32 cosf(f32 x);\n")
        f.write("f32 sinf(f32 x);\n\n")

        f.write("/* DWARF-extracted function prototypes */\n")
        seen = set()
        for func in all_funcs:
            fname = func['name']
            if fname in seen:
                continue
            seen.add(fname)

            # Match API functions
            mapped = False
            for prefix in ['__glexpim_', '__glexplc_', '__glim_', '__glce_', 'gl']:
                if fname.startswith(prefix):
                    base_api = fname[len(prefix):]
                    if base_api in gl_api:
                        ret, params = gl_api[base_api]
                        f.write(f"{ret} {fname}({params});\n")
                        mapped = True
                        break

            known_internal_prots = {
                '__glExpTransformLightDirection': 'void __glExpTransformLightDirection(__GLcontext *gc, __GLlightSourceState *ls);',
                '__glExpValidateLightSource': 'void __glExpValidateLightSource(__GLcontext *gc, GLint lightIndex);',
                '__glScaleColorf': 'void __glScaleColorf(__GLcontext *gc, __GLcolor *dst, const GLfloat *src);',
                '__glClampAndScaleColorf': 'void __glClampAndScaleColorf(__GLcontext *gc, __GLcolor *dst, const GLfloat *src);',
                '__glUnScaleColorf': 'void __glUnScaleColorf(__GLcontext *gc, GLfloat *dst, const __GLcolor *src);',
                '__glSetError': 'void __glSetError(GLenum code);',
            }

            if fname in known_internal_prots:
                f.write(f"{known_internal_prots[fname]}\n")
                mapped = True
            elif not mapped:
                if fname.startswith('__glExp') or fname.startswith('so_') or fname.startswith('gr2_'):
                    f.write(f"void {fname}(__GLcontext *gc, ...);\n")
                else:
                    f.write(f"void {fname}();\n")

        f.write("\n#endif /* __GLCORE_PROTS_H__ */\n")

    # 3. ctx_libglcore_source.h
    ctx_src_path = f"{OUT_DIR}/ctx_libglcore_source.h"
    with open(ctx_src_path, "w") as f:
        f.write("""/*
 * ctx_libglcore_source.h
 * Master context source for m2c decompiler on libGLcore.so.
 * Generated automatically by scripts/extract_libglcore.py.
 */
#define _LANGUAGE_C
#include "include/glcore_types.h"
#include "include/glcore_prots.h"
""")

    # 4. Compile ctx_libglcore.c
    ctx_c_path = f"{OUT_DIR}/ctx_libglcore.c"
    print(f"[*] Preprocessing {ctx_src_path} -> {ctx_c_path}...")
    cmd = ['gcc', '-std=c99', '-E', '-P', '-D_LANGUAGE_C', '-I.', f'-I{OUT_DIR}', ctx_src_path, '-o', ctx_c_path]
    subprocess.run(cmd, check=True)
    print(f"[+] Successfully generated {ctx_c_path} for m2c.")

def generate_runner_script():
    script_path = f"{OUT_DIR}/decompile_libglcore.sh"
    with open(script_path, "w") as f:
        f.write(r"""#!/usr/bin/env bash
# decompile_libglcore.sh
# Runs m2c decompiler on libGLcore.so functions and modules using ctx_libglcore.c in N32 mode.

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

M2C="python3 ${ROOT_DIR}/m2c/m2c.py -t mipsn32 --context ${SCRIPT_DIR}/ctx_libglcore.c"

if [ $# -eq 0 ]; then
    echo "Usage:"
    echo "  $0 <module_name>       (e.g., $0 gr2_attrib or $0 gr2_context)"
    echo "  $0 <category>          (e.g., $0 EXPRESS)"
    echo "  $0 --func <func_name>  (e.g., $0 --func __glexpim_AlphaFunc)"
    echo "  $0 all                 (decompile all EXPRESS modules)"
    exit 1
fi

decompile_file() {
    local asm_file="$1"
    local rel_path="${asm_file#${SCRIPT_DIR}/asm/}"
    local out_c="${SCRIPT_DIR}/decomp/${rel_path%.s}.c"
    mkdir -p "$(dirname "$out_c")"
    echo "[*] Decompiling $asm_file -> $out_c ..."
    $M2C "$asm_file" > "$out_c"
    echo "[+] Done: $out_c"
}

if [ "$1" == "--func" ]; then
    func_name="$2"
    echo "[*] Searching for function $func_name across assembly files..."
    asm_file=$(grep -l "\.ent $func_name" "${SCRIPT_DIR}/asm"/*/*.s | head -n 1)
    if [ -z "$asm_file" ]; then
        echo "[-] Function $func_name not found in ${SCRIPT_DIR}/asm/*/*.s"
        exit 1
    fi
    echo "[*] Found in $asm_file. Decompiling..."
    $M2C -f "$func_name" "$asm_file"
    exit 0
fi

if [ "$1" == "all" ]; then
    echo "[*] Decompiling all EXPRESS hardware modules..."
    for f in "${SCRIPT_DIR}"/asm/EXPRESS/*.s; do
        decompile_file "$f"
    done
    exit 0
fi

if [ -d "${SCRIPT_DIR}/asm/$1" ]; then
    echo "[*] Decompiling all modules in category $1..."
    for f in "${SCRIPT_DIR}/asm/$1"/*.s; do
        decompile_file "$f"
    done
    exit 0
fi

# Search by module basename
target="$1"
target="${target%.c}"
target="${target%.s}"
matches=$(find "${SCRIPT_DIR}/asm" -name "${target}.s")
if [ -z "$matches" ]; then
    echo "[-] Module ${target}.s not found under ${SCRIPT_DIR}/asm/"
    exit 1
fi

for f in $matches; do
    decompile_file "$f"
done
""")
    os.chmod(script_path, 0o755)
    print(f"[+] Created {script_path}")

def main():
    setup_dirs()
    got_map = build_got_map(TARGET_ELF)
    print(f"[*] Loaded {len(got_map)} entries from GOT.")
    lit4_map, lit8_map = build_lit_maps(TARGET_ELF)
    print(f"[*] Loaded {len(lit4_map)} .lit4 and {len(lit8_map)} .lit8 constants.")
    text_addr, text_size, cus, all_funcs = parse_dwarf(TARGET_ELF)
    jtbl_map = build_jtbl_map(TARGET_ELF, all_funcs)
    print(f"[*] Loaded {len(jtbl_map)} jump tables.")
    disasm_map = get_disassembly()

    print("[*] Writing per-CU assembly files...")
    for cu in cus:
        if cu['funcs']:
            write_cu_assembly(cu, disasm_map, got_map, lit4_map, lit8_map, jtbl_map)

    print("[*] Writing libglcore/manifest.json...")
    manifest = {
        'target_elf': TARGET_ELF,
        'text_addr': hex(text_addr),
        'text_size': text_size,
        'total_cus': len(cus),
        'total_funcs': len(all_funcs),
        'categories': {
            cat: sum(1 for c in cus if c['category'] == cat)
            for cat in ['EXPRESS', 'soft', 'pixel', 'dlist', 'gl', 'mips', 'PIXMAP']
        },
        'cus': [
            {
                'index': c['index'],
                'name': c['name'],
                'basename': c['basename'],
                'category': c['category'],
                'num_funcs': len(c['funcs']),
                'asm_file': c.get('asm_file', ''),
                'decomp_file': c.get('decomp_file', ''),
                'producer': c['producer'],
                'funcs': c['funcs'],
                'variables': c['variables']
            }
            for c in cus
        ]
    }

    with open(f'{OUT_DIR}/manifest.json', 'w') as f:
        json.dump(manifest, f, indent=2)
    print(f"[+] Wrote manifest with {len(cus)} CUs and {len(all_funcs)} functions.")

    generate_context_headers(all_funcs)
    generate_runner_script()
    print("\n[SUCCESS] Extraction, context generation, and runner setup complete!")

if __name__ == '__main__':
    main()
