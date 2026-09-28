import os
import sys
import re
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from scripts.resolve_got import build_got_map

TARGET_ELF = 'root/usr/gfx/arch/IP12GR232/libGLcore.so'

def clean_file(in_path, out_path, got_map):
    with open(in_path) as f:
        lines = f.readlines()

    new_lines = []
    t9_sym = None
    for line in lines:
        m_load = re.search(r'lw\s+\$t9,\s*(-?\d+)\(\$gp\)', line)
        if m_load:
            off = int(m_load.group(1))
            if off in got_map:
                t9_sym = got_map[off]
                new_lines.append(f'    # lw $t9, {off}($gp) # &{t9_sym}\n')
                continue
        if 'jalr' in line and '$t9' in line and t9_sym:
            # preserve indentation
            indent = line[:len(line) - len(line.lstrip())]
            new_lines.append(f'{indent}jal\t{t9_sym}\n')
            t9_sym = None
            continue
        new_lines.append(line)

    with open(out_path, 'w') as f:
        f.writelines(new_lines)

if __name__ == '__main__':
    got_map = build_got_map(TARGET_ELF)
    clean_file('libglcore/asm/EXPRESS/gr2_attrib.s', 'scratch_gr2_attrib_clean.s', got_map)
    print("Done generating scratch_gr2_attrib_clean.s")
