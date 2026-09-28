#!/usr/bin/env python3
"""
scripts/extract_gr2_ddx.py

Extracts functions, symbols, and disassembly from root/usr/lib/X11/dyDDX/gr2.so
(SGI IRIX X11 dynamic DDX driver for GR2/Express graphics).

Organizes code into logical modules:
  - exp_draw   (2D drawing acceleration: rects, spans, lines, polylines, arcs)
  - exp_glyph  (Font glyph acceleration: TE8, TE16, TE32, CW16, CW32)
  - exp_image  (Host/Screen pixel transfers: 8-bit CI, 12-bit RGB, 24-bit TrueColor)
  - exp_window (Window private, clip, copy rect/window, buffer swap, WID/CID drawing)
  - exp_vc1    (VC1 video controller setup, DID table computation, timing tables)
  - exp_cmap   (Colormaps: normal, pup, overlay, overlay4, 24-bit TrueColor)
  - exp_cursor (Hardware cursor programming)
  - exp_init   (Hardware probe, reset, kernel attach, screen init)
  - rrm        (Rendering Resource Manager: CID/WID allocation, OGL binding)
  - nfb_ops    (NFB driver dispatch wrappers)

Resolves:
  1. Internal branch targets (.L<addr>)
  2. MIPS GOT loads (local and global) -> symbols & global variables
  3. Small data/bss (.sbss, .sdata) GP-relative loads -> exact variables
  4. .MIPS.stubs calls -> external function names
  5. Sanitizes clone and dotted names (*clone* -> _clone_, .. -> __)
"""

import os
import sys
import re
import struct
import subprocess
from collections import defaultdict
from elftools.elf.elffile import ELFFile

TARGET_SO = 'root/usr/lib/X11/dyDDX/gr2.so'
TARGET_MAP = 'root/usr/lib/X11/dyDDX/gr2.so.map'
OUT_DIR = 'gr2_ddx'

def sanitize_ident(name):
    s = name.replace('*', '_').replace('..', '__').replace('.', '_').replace('$', '_')
    if s and s[0].isdigit():
        s = '_' + s
    return s

MODULE_GROUPS = {
    'exp_draw': [
        'expDrawSolidRects', 'expTileRects', 'expStippledFillRects', 'expOpStippledFillRects',
        'expSolidSpans', 'expTiledSpans', 'expStippledSpans', 'expFillTriangle', 'expFillPolygon',
        'expLineSS', 'expLineSD', 'expFastLineSD', 'expSegmentSS', 'expZeroPolyArc',
        'expPolyPoint', 'expDrawPoints'
    ],
    'exp_glyph': [
        'expPolyGlyphBltTE8', 'expPolyGlyphBltTE16', 'expPolyGlyphBltTE32',
        'expPolyGlyphBltCW16', 'expPolyGlyphBltCW32',
        'expImageGlyphBltTE8', 'expImageGlyphBltTE16', 'expImageGlyphBltTE32',
        'expImageGlyphBltCW16', 'expImageGlyphBltCW32'
    ],
    'exp_image': [
        'expDrawImage', 'expDrawImage12', 'expDrawImage12TC', 'expDrawImage24',
        'expReadImage', 'expReadImage12', 'expReadImage12TC', 'expReadImage24',
        'expDrawMonoImage', 'expDrawOpaqueMonoImage', 'expReadConvertPixels'
    ],
    'exp_window': [
        'expCopyRect', 'expCopyWindow', 'expClearOverlays', 'expInitWindowType',
        'expValidateClip', 'expValidateSwapbuf', 'expValidateMode', 'expValidateReducedGC',
        'expValidateWindowGC', 'expValidateVisual', 'expValidateWindowPriv',
        'expRealizeWindow', 'expUnrealizeWindow', 'expInitiateBufferSwap',
        'expDrawCID', 'expNeedCID'
    ],
    'exp_vc1': [
        'expvc1Init', 'expvc1ComputeDIDTable', 'expLoadTimingTable', 'expWriteTimingTable',
        'expCheckTimingTable', 'expLstVideoFmt', 'expSetBacklight..EHB', 'expBlankScreen'
    ],
    'exp_cmap': [
        'expInstallNormalMap', 'expInstallPupMap', 'expInstallOverlayMap',
        'expInstallOverlay4Map', 'expInstall24Map', 'expUninstall24Map',
        'expStoreNormalColors', 'expStorePupColors', 'expStoreOverlayColors',
        'expStoreOverlay4Colors', 'expStore24Colors', 'expChangeDIDCmap',
        'expSetColor', 'expInitializeColormap'
    ],
    'exp_cursor': [
        'expCursorInit', 'expDisplayCursor', 'expInstallCursor', 'expRealizeCursor',
        'expCursorOn', 'expDummySetCursorColor'
    ],
    'exp_init': [
        'expInitHW', 'expInit', 'expKernInit', 'expProbe', 'expResetProc',
        'expAttachXvc', 'expCloseScreen', 'expInitRootWindow', 'expBell', 'expKeyClick'
    ],
    'rrm': [
        'rrmValidateCID', 'FindFreeCID', 'FindBestID', 'FindFreeID', 'AssignID..LIC',
        'NewID..FIC', 'StealID', 'SetReservedID', 'SetDIDMode', 'cmapDID',
        'rrmOGLBindRNToClip', 'rrmOGLUnbindRNFromClip', 'rrmBindRNToClip', 'rrmUnbindRNFromClip',
        'rrmDoubleBufferWindow', 'rrmUndoubleBufferWindow', 'rrmProcessRequestQueue',
        'rrmWorkProc', 'rrmValidateTree', 'rrmMapWindow', 'rrmUnmapWindow',
        'rrmCreateWindow', 'rrmDestroyWindow', 'rrmCopyWindow', 'rrmCreateDefColormap',
        'rrmDestroyDrawable', 'rrmDisposeClip', 'rrmInvalidate', 'incrRRMpriv',
        'nfbSetDidFlags'
    ],
    'nfb_ops': [
        'nfbSolidFillRects', 'nfbTiledFillRects', 'nfbStippledFillRects', 'nfbOpStippledFillRects',
        'nfbDoBitBltSS', 'nfbDoBitBltSP', 'nfbDoBitBltPS', 'nfbCopyArea', 'nfbCopyPlane',
        'nfbSolidPolyGlyphBlt', 'nfbImageGlyphBlt',
        'nfbSolidFS', 'nfbTiledFS', 'nfbStippledFS', 'nfbOpStippledFS',
        'nfbFillSpans', 'nfbSetSpans', 'nfbGetSpans',
        'nfbPolyPoint', 'nfbSolidZeroSeg',
        'nfbSaveAreas', 'nfbRestoreAreas',
        'nfbPaintWindowBackground', 'nfbPaintWindowBorder',
        'nfbHWStoreColors', 'nfbInstallHWColormap', 'nfbUninstallHWColormap',
        'nfbCreateHWColormap', 'nfbDestroyHWColormap',
        'nfbHWColormapScreenInit', 'nfbGenericScreenInit',
        'nfbCloseScreen', 'nfbInitRootWindow'
    ]
}

def load_symbols():
    print(f"[*] Loading symbols from {TARGET_MAP}...")
    map_syms = {}
    func_bounds = []
    with open(TARGET_MAP) as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) >= 3:
                addr = int(parts[0], 16)
                stype = parts[1]
                sname = parts[2]
                clean = sanitize_ident(sname)
                map_syms[addr] = clean
                if stype in ('T', 't') and addr >= 0x5ef3503c:
                    func_bounds.append((addr, clean, sname))

    func_bounds.sort()
    func_info = {}
    for i in range(len(func_bounds)):
        addr, clean, orig = func_bounds[i]
        next_addr = func_bounds[i+1][0] if i + 1 < len(func_bounds) else 0x5f09efa0
        fobj = {
            'name': clean,
            'orig_name': orig,
            'low_pc': addr,
            'high_pc': next_addr,
            'size': next_addr - addr
        }
        func_info[clean] = fobj
        func_info[orig] = fobj
    print(f"[+] Loaded {len(map_syms)} symbols, {len(func_bounds)} functions.")
    return map_syms, func_info

def load_elf_info(map_syms):
    print(f"[*] Loading ELF structures from {TARGET_SO}...")
    with open(TARGET_SO, 'rb') as f:
        elf = ELFFile(f)
        dynsym = elf.get_section_by_name('.dynsym')
        got = elf.get_section_by_name('.got')
        got_addr = got['sh_addr']
        got_data = got.data()
        gp = got_addr + 0x7ff0

        dynamic = elf.get_section_by_name('.dynamic')
        local_got_no = 722
        got_sym = 852
        for tag in dynamic.iter_tags():
            if tag.entry.d_tag == 'DT_MIPS_LOCAL_GOTNO':
                local_got_no = tag.entry.d_val
            elif tag.entry.d_tag == 'DT_MIPS_GOTSYM':
                got_sym = tag.entry.d_val

        # Precompute GOT offset map
        got_map = {}
        num_got = len(got_data) // 4
        for i in range(num_got):
            entry_addr = got_addr + i * 4
            gp_off = entry_addr - gp
            if i < local_got_no:
                val = struct.unpack('>I', got_data[i*4:(i+1)*4])[0]
                name = map_syms.get(val, f"local_0x{val:08x}")
            else:
                s_idx = got_sym + (i - local_got_no)
                if s_idx < dynsym.num_symbols():
                    name = sanitize_ident(dynsym.get_symbol(s_idx).name)
                else:
                    name = f"sym_{s_idx}"
            got_map[gp_off] = name

        # Precompute stubs map: 0x5ef34ac4 + i * 20 -> dynsym[0x3c5 + i]
        stubs_map = {}
        stub_base = 0x5ef34ac4
        num_stubs = (0x5ef34ac0 + 0x57c - stub_base) // 20
        for i in range(num_stubs):
            stub_addr = stub_base + i * 20
            sym_idx = 0x3c5 + i
            if sym_idx < dynsym.num_symbols():
                clean_stub = sanitize_ident(dynsym.get_symbol(sym_idx).name)
                stubs_map[stub_addr] = clean_stub
                stubs_map[stub_addr + 8] = clean_stub

        # Also get all sections for GP bounds checking
        sections = {}
        for s in elf.iter_sections():
            if s['sh_size'] > 0:
                sections[s.name] = (s['sh_addr'], s['sh_addr'] + s['sh_size'])

    return gp, got_map, stubs_map, sections

def disassemble_text():
    print(f"[*] Disassembling .text of {TARGET_SO}...")
    cmd = ['mips-unknown-linux-gnu-objdump', '-d', '--no-show-raw-insn', TARGET_SO]
    res = subprocess.run(cmd, capture_output=True, text=True, check=True)
    disasm = {}
    pattern = re.compile(r'^\s*([0-9a-fA-F]+):\s*(.*)')
    for line in res.stdout.splitlines():
        m = pattern.match(line)
        if m:
            addr = int(m.group(1), 16)
            instr = m.group(2).strip()
            disasm[addr] = instr
    print(f"[+] Disassembled {len(disasm)} instructions.")
    return disasm

def format_instruction(instr):
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

def extract_module(mod_name, func_names, func_info, disasm, gp, got_map, stubs_map, map_syms, sections):
    out_asm_path = f"{OUT_DIR}/asm/{mod_name}.s"
    print(f"[*] Generating {out_asm_path} ({len(func_names)} functions)...")

    sbss_start, sbss_end = sections.get('.sbss', (0, 0))
    sdata_start, sdata_end = sections.get('.sdata', (0, 0))
    srdata_start, srdata_end = sections.get('.srdata', (0, 0))
    got_start, got_end = sections.get('.got', (0, 0))

    with open(out_asm_path, 'w') as f:
        f.write(f"#\n# gr2_ddx: {mod_name}.s\n# Extracted from {TARGET_SO}\n#\n\n")
        f.write(".text\n.set noreorder\n\n")

        for req_name in func_names:
            if req_name not in func_info:
                print(f"[-] Warning: Function {req_name} not found in map!")
                continue

            fmeta = func_info[req_name]
            fname = fmeta['name']
            low = fmeta['low_pc']
            high = fmeta['high_pc']

            func_insts = []
            branch_targets = set()

            # Pass 0: collect instructions and internal branch targets
            for addr in range(low, high, 4):
                if addr not in disasm:
                    continue
                raw = disasm[addr]
                # Check for hex target inside function
                m = re.search(r'\b([0-9a-fA-F]{7,8})\b', raw)
                if m:
                    target = int(m.group(1), 16)
                    if low <= target < high:
                        branch_targets.add(target)
                func_insts.append({'addr': addr, 'raw': raw})

            # Detect GP registers in function
            gp_regs = {'gp'}
            for item in func_insts:
                m_addu = re.search(r'addu\s+[$]?([a-zA-Z0-9]+),\s*[$]?t9,\s*[$]?([a-zA-Z0-9]+)', item['raw'])
                if m_addu:
                    gp_regs.add(m_addu.group(1).lstrip('$'))

            gp_pattern = '|'.join(re.escape(r) for r in gp_regs)

            # Pass 1: Resolve calls, GOT loads, and small data loads
            t9_target = None
            for idx, item in enumerate(func_insts):
                raw = item['raw']

                # Check direct jal / jalr to stub or function
                m_jal = re.search(r'\bjal\s+([0-9a-fA-F]{7,8})', raw)
                if m_jal:
                    target_addr = int(m_jal.group(1), 16)
                    if target_addr in stubs_map:
                        item['raw'] = f"jal\t{stubs_map[target_addr]}"
                        continue
                    elif target_addr in map_syms:
                        item['raw'] = f"jal\t{map_syms[target_addr]}"
                        continue

                # Check for lw $reg, off($gp)
                m_lw = re.search(r'lw\s+([$]?\w+),\s*(-?\d+)\([$]?(' + gp_pattern + r')\)', raw)
                if m_lw:
                    dest_reg = m_lw.group(1).lstrip('$')
                    off = int(m_lw.group(2))
                    target_addr = gp + off

                    # Case A: GOT load
                    if got_start <= target_addr < got_end:
                        sym = got_map.get(off, f"got_{off}")
                        if dest_reg == 't9':
                            t9_target = sym
                            in_delay = False
                            if idx > 0 and func_insts[idx-1]['raw'].strip().startswith(('b', 'j', 'jal', 'jr')):
                                in_delay = True
                            if in_delay:
                                item['raw'] = f"nop\t# was lw $t9, {off}($gp)"
                            else:
                                item['raw'] = f"# lw $t9, {off}($gp)"
                                item['is_comment'] = True
                        else:
                            item['raw'] = f"la\t${dest_reg},{sym}"
                        continue

                    # Case B: Small data/bss load (direct global variable read)
                    elif (sbss_start <= target_addr < sbss_end) or (sdata_start <= target_addr < sdata_end) or (srdata_start <= target_addr < srdata_end):
                        var_name = map_syms.get(target_addr, f"var_{target_addr:08x}")
                        item['raw'] = f"lw\t${dest_reg},{var_name}"
                        continue

                # Check for sw $reg, off($gp)
                m_sw = re.search(r'sw\s+([$]?\w+),\s*(-?\d+)\([$]?(' + gp_pattern + r')\)', raw)
                if m_sw:
                    src_reg = m_sw.group(1).lstrip('$')
                    off = int(m_sw.group(2))
                    target_addr = gp + off
                    if (sbss_start <= target_addr < sbss_end) or (sdata_start <= target_addr < sdata_end):
                        var_name = map_syms.get(target_addr, f"var_{target_addr:08x}")
                        item['raw'] = f"sw\t${src_reg},{var_name}"
                        continue

                # Check for jalr $t9
                if ('jalr' in raw and 't9' in raw) and t9_target:
                    item['raw'] = f"jal\t{t9_target}"
                    t9_target = None
                    continue

            # Pass 2: Clean branch targets and format registers
            f.write(f".globl {fname}\n")
            f.write(f".ent {fname}\n")
            f.write(f"{fname}:\n")

            for item in func_insts:
                addr = item['addr']
                raw = item['raw']

                if addr in branch_targets:
                    f.write(f".L{addr:08x}:\n")

                if item.get('is_comment'):
                    f.write(f"    {raw}\n")
                    continue

                # Clean objdump target annotations like <fname+0x...>
                m = re.search(r'\b([0-9a-fA-F]{7,8})\s*<([^>]+)>', raw)
                if m:
                    target_addr = int(m.group(1), 16)
                    target_sym = sanitize_ident(m.group(2).split('+')[0])
                    if low <= target_addr < high:
                        raw = raw[:m.start()] + f".L{target_addr:08x}"
                    else:
                        raw = raw[:m.start()] + target_sym

                # Replace internal branch addresses with labels
                for t in branch_targets:
                    raw = re.sub(rf'\b{t:08x}\b', f".L{t:08x}", raw)

                # Convert bgezall / bgezal with zero to bal
                raw = re.sub(r'\bbgezall?\s+[$]?zero\s*,\s*', 'bal\t', raw)

                formatted = format_instruction(raw)
                f.write(f"    {formatted}\n")

            f.write(f".end {fname}\n\n")

    print(f"[+] Wrote {out_asm_path}")

def main():
    os.makedirs(f"{OUT_DIR}/asm", exist_ok=True)
    os.makedirs(f"{OUT_DIR}/decomp", exist_ok=True)
    os.makedirs(f"{OUT_DIR}/include", exist_ok=True)

    map_syms, func_info = load_symbols()
    gp, got_map, stubs_map, sections = load_elf_info(map_syms)
    disasm = disassemble_text()

    for mod_name, func_names in MODULE_GROUPS.items():
        extract_module(mod_name, func_names, func_info, disasm, gp, got_map, stubs_map, map_syms, sections)

    print("\n[+] Extraction complete for all 10 modules!")

if __name__ == '__main__':
    main()
