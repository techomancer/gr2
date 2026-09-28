# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/dlist/dl_interp.s
# Category: dlist
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glDoInterpret
# Declared: Line 60 (Source lines: 60-80)
# Address: 0x0db24e80 - 0x0db24f04 (Size: 132 bytes, Frame: 32)
.globl __glDoInterpret
.ent __glDoInterpret
__glDoInterpret:
    # Line 60
    addiu	$sp,$sp,-32
    # Line 63
    lw	$t9,0($a0)
    # Line 64
    sw	$ra,28($sp)
    # Line 65
    addiu	$a0,$a0,4
.L0db24e90:
    # Line 69
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 70
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 71
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 72
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 74
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 75
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 77
    jalr	$t9
    nop
    # Line 78
    addiu	$a0,$v0,4
    # Line 80
    b	.L0db24e90
    # Line 79
    lw	$t9,0($v0)
.end __glDoInterpret

# Function: __glle_Sentinel
# Declared: Line 96 (Source lines: 96-99)
# Address: 0x0db24f04 - 0x0db24f14 (Size: 16 bytes, Frame: 0)
.globl __glle_Sentinel
.ent __glle_Sentinel
__glle_Sentinel:
    # Line 96
    lw	$ra,28($sp)
    # Line 97
    addiu	$sp,$sp,32
    # Line 99
    jr	$ra
    nop
.end __glle_Sentinel

