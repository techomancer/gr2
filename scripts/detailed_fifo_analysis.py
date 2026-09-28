import glob, re

files = sorted(glob.glob('libglcore/asm/EXPRESS/*.s'))

# Scan each file to find function names and instructions
ent_re = re.compile(r'^\s*\.ent\s+([a-zA-Z0-9_]+)')
lui_re = re.compile(r'^\s*lui\s+(\$[a-z0-9]+)\s*,\s*0x([0-9a-fA-F]+)')
ori_re = re.compile(r'^\s*ori\s+(\$[a-z0-9]+)\s*,\s*(\$[a-z0-9]+)\s*,\s*0x([0-9a-fA-F]+)')
mem_re = re.compile(r'^\s*(swc1|sw|sdc1|sd|sh|sb|lwc1|lw)\s+(\$[a-z0-9]+)\s*,\s*(-?[0-9]+)\((\$[a-z0-9]+)\)')

events = []

for f in files:
    fname = f.split('/')[-1]
    with open(f) as fp:
        lines = fp.readlines()
    
    cur_func = 'unknown'
    regs = {}
    for idx, line in enumerate(lines):
        line_clean = line.split('#')[0].strip()
        if not line_clean:
            continue
        
        m = ent_re.match(line_clean)
        if m:
            cur_func = m.group(1)
            regs = {}
            continue
        
        if line_clean.endswith(':') or line_clean.startswith('.end'):
            regs = {}
            continue

        m = lui_re.match(line_clean)
        if m:
            regs[m.group(1)] = int(m.group(2), 16) << 16
            continue

        m = ori_re.match(line_clean)
        if m:
            dst, src, imm = m.group(1), m.group(2), int(m.group(3), 16)
            if src in regs:
                regs[dst] = regs[src] | imm
            continue

        m = mem_re.match(line_clean)
        if m:
            op, src, off, base = m.group(1), m.group(2), int(m.group(3)), m.group(4)
            if base in regs:
                addr = regs[base] + off
                if 0x40000 <= addr <= 0x6FFFF:
                    # gather surrounding lines
                    pre = [lines[idx-k].strip() for k in range(min(4, idx), 0, -1)]
                    post = [lines[idx+k].strip() for k in range(1, min(6, len(lines)-idx))]
                    events.append({
                        'addr': addr,
                        'file': fname,
                        'func': cur_func,
                        'op': op,
                        'src': src,
                        'line': idx+1,
                        'pre': pre,
                        'post': post
                    })

from collections import defaultdict
grouped = defaultdict(list)
for e in events:
    grouped[e['addr']].append(e)

for addr in sorted(grouped.keys()):
    evs = grouped[addr]
    funcs = sorted(list(set([e['func'] for e in evs])))
    ops = sorted(list(set([e['op'] for e in evs])))
    print(f"=== Address 0x{addr:06x} ({len(evs)} refs, ops: {ops}, funcs: {funcs[:4]}) ===")
    sample = evs[0]
    print(f"  Sample from {sample['file']}:{sample['line']} in {sample['func']}:")
    for p in sample['pre']:
        print(f"    - {p}")
    print(f"    >>> {sample['op']} {sample['src']}, 0x{addr:06x}")
    for p in sample['post']:
        print(f"    + {p}")
    print()
