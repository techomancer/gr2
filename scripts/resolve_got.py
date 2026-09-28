#!/usr/bin/env python3
import re
import struct
from elftools.elf.elffile import ELFFile

TARGET_ELF = 'root/usr/gfx/arch/IP12GR232/libGLcore.so'

def build_got_map(elf_path):
    with open(elf_path, 'rb') as f:
        elf = ELFFile(f)
        got = elf.get_section_by_name('.got')
        got_addr = got['sh_addr']
        got_data = got.data()
        dynsym = elf.get_section_by_name('.dynsym')
        symtab = elf.get_section_by_name('.symtab')

        addr2sym = {}
        if symtab:
            for s in symtab.iter_symbols():
                if s['st_value']:
                    addr2sym[s['st_value']] = s.name
        if dynsym:
            for s in dynsym.iter_symbols():
                if s['st_value']:
                    addr2sym[s['st_value']] = s.name

        gp = 0x0dbf7868
        global_got_addr = got_addr + 2434 * 4

        got_map = {}
        num_entries = len(got_data) // 4
        for i in range(num_entries):
            entry_addr = got_addr + i * 4
            gp_offset = entry_addr - gp
            val = struct.unpack('>I', got_data[i*4:(i+1)*4])[0]

            if entry_addr >= global_got_addr:
                g_idx = (entry_addr - global_got_addr) // 4
                sym_idx = 3018 + g_idx
                if sym_idx < dynsym.num_symbols():
                    name = dynsym.get_symbol(sym_idx).name
                else:
                    name = addr2sym.get(val, f'sub_{val:08x}')
            else:
                name = addr2sym.get(val, f'sub_{val:08x}')
            got_map[gp_offset] = name
        return got_map

if __name__ == '__main__':
    got_map = build_got_map(TARGET_ELF)
    print(f"Loaded {len(got_map)} GOT entries.")

    for asm_path in ['libglcore/asm/EXPRESS/gr2_context.s', 'libglcore/asm/EXPRESS/gr2_attrib.s']:
        resolved = 0
        indirect = 0
        calls = {}
        with open(asm_path) as f:
            t9_sym = None
            for line in f:
                m_load = re.search(r'lw\s+\$t9,\s*(-?\d+)\(\$gp\)', line)
                if m_load:
                    off = int(m_load.group(1))
                    t9_sym = got_map.get(off)
                    continue
                if 'jalr' in line and '$t9' in line:
                    if t9_sym:
                        resolved += 1
                        calls[t9_sym] = calls.get(t9_sym, 0) + 1
                        t9_sym = None
                    else:
                        indirect += 1
        print(f"{asm_path}: resolved {resolved} GOT calls, {indirect} indirect calls")
        top_calls = sorted(calls.items(), key=lambda x: -x[1])[:10]
        for name, count in top_calls:
            print(f"    {name}: {count}")

