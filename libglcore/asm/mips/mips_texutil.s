# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_texutil.s
# Category: mips
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glFrac
# Declared: Line 54 (Source lines: 54-58)
# Address: 0x0db25014 - 0x0db25024 (Size: 16 bytes, Frame: 0)
.globl __glFrac
.ent __glFrac
__glFrac:
    # Line 54
    floor.w.s	$f2,$f12
    # Line 56
    cvt.s.w	$f0,$f2
    # Line 57
    jr	$ra
    # Line 58
    sub.s	$f0,$f12,$f0
.end __glFrac

# Function: __glFloor
# Declared: Line 94 (Source lines: 94-96)
# Address: 0x0db25024 - 0x0db25030 (Size: 12 bytes, Frame: 0)
.globl __glFloor
.ent __glFloor
__glFloor:
    # Line 94
    floor.w.s	$f2,$f12
    # Line 95
    jr	$ra
    # Line 96
    mfc1	$v0,$f2
.end __glFloor

