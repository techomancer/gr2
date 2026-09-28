#!/usr/bin/env python3
import re
from scripts.resolve_got import build_got_map

got_map = build_got_map('root/usr/gfx/arch/IP12GR232/libGLcore.so')

in_init = False
stores = {}
with open('libglcore/asm/EXPRESS/gr2_context.s') as f:
    reg_val = {}
    for line in f:
        if '.ent InitFnPtrs' in line:
            in_init = True
            continue
        if in_init and '.end InitFnPtrs' in line:
            break
        if not in_init:
            continue

        m_load = re.search(r'lw\s+(\$\w+),\s*(-?\d+)\(\$gp\)', line)
        if m_load:
            reg = m_load.group(1)
            off = int(m_load.group(2))
            sym = got_map.get(off, f'got_{off}')
            reg_val[reg] = sym
            continue

        m_store = re.search(r'sw\s+(\$\w+),\s*(\d+)\(\$a0\)', line)
        if m_store:
            reg = m_store.group(1)
            offset = int(m_store.group(2))
            val = reg_val.get(reg, 'unknown')
            stores[offset] = val

print(f"Total function pointers stored in InitFnPtrs: {len(stores)}")
for off in sorted(stores.keys()):
    print(f"Offset {off:5d} (0x{off:04x}): {stores[off]}")
