# Source: ../EXPRESS/gr2_line.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_line.c
# Total Functions: 3

.text

# Function: __glExpPassLineWidth
# Declared: Line 29 (Source lines: 30-44)
# Address: 0x0da5f4cc - 0x0da5f544 (Size: 120 bytes, Frame: 0)
.globl __glExpPassLineWidth
.ent __glExpPassLineWidth
__glExpPassLineWidth:
    # Line 30
    lui	$v0,0x1a
    addiu	$v0,$v0,-31844
    # Line 31
    lwc1	$f4,444($a0)
    # Line 30
    # addu	at,t9,v0
    # Line 35
    lwc1	$f1,_lit_42c80000
    # Line 34
    trunc.w.s	$f0,$f4
    # Line 40
    li	$a2,1
    # Line 34
    lui	$a3,0x4
    # Line 35
    c.lt.s	$f1,$f4
    # Line 34
    mfc1	$v0,$f0
    ori	$a3,$a3,0x205c
    # Line 35
    bc1t	.L0da5f530
    # Line 34
    sw	$v0,0($a3)
    # Line 35
    lwc1	$f2,_lit_41100000
    c.lt.s	$f2,$f4
    nop
    bc1f	.L0da5f538
    nop
    lw	$v1,1696($a0)
    andi	$v1,$v1,0x100
    beqz	$v1,.L0da5f538
    nop
    lhu	$a1,456($a0)
    beqz	$a1,.L0da5f538
    nop
.L0da5f530:
    # Line 44
    jr	$ra
    # Line 40
    sw	$a2,0($a3)
.L0da5f538:
    # Line 42
    sw	$zero,0($a3)
    # Line 44
    jr	$ra
    nop
.end __glExpPassLineWidth

# Function: __glExpPassLineStipple
# Declared: Line 46 (Source lines: 47-67)
# Address: 0x0da5f544 - 0x0da5f5dc (Size: 152 bytes, Frame: 0)
.globl __glExpPassLineStipple
.ent __glExpPassLineStipple
__glExpPassLineStipple:
    # Line 47
    lui	$a4,0x4
    lui	$a3,0x4
    ori	$a3,$a3,0x2058
    ori	$a4,$a4,0x2060
    lw	$v0,1696($a0)
    lui	$v1,0x1a
    addiu	$v1,$v1,-31964
    andi	$v0,$v0,0x100
    beqz	$v0,.L0da5f5c4
    nop
    # Line 51
    lh	$v1,458($a0)
    sw	$v1,0($a4)
    # Line 53
    lhu	$v0,456($a0)
    sw	$v0,0($a3)
    # Line 54
    lwc1	$f0,_lit_42c80000
    lwc1	$f4,444($a0)
    c.lt.s	$f0,$f4
    lwc1	$f1,_lit_41100000
    bc1t	.L0da5f5b0
    # Line 58
    li	$v0,1
    # Line 54
    c.lt.s	$f1,$f4
    nop
    bc1f	.L0da5f5bc
    li	$a2,0xffff
    lhu	$a1,456($a0)
    beq	$a1,$a2,.L0da5f5bc
    nop
.L0da5f5b0:
    # Line 58
    sw	$v0,0($a3)
    # Line 67
    jr	$ra
    nop
.L0da5f5bc:
    jr	$ra
    # Line 60
    sw	$zero,0($a3)
.L0da5f5c4:
    # Line 63
    li	$a1,1
    sw	$a1,0($a4)
    # Line 64
    li	$v1,0xffff
    sw	$v1,0($a3)
    # Line 67
    jr	$ra
    # Line 65
    sw	$zero,0($a3)
.end __glExpPassLineStipple

# Function: __glExpEnableLineStipple
# Declared: Line 69 (Source lines: 70-72)
# Address: 0x0da5f5dc - 0x0da5f610 (Size: 52 bytes, Frame: 32)
.globl __glExpEnableLineStipple
.ent __glExpEnableLineStipple
__glExpEnableLineStipple:
    # Line 70
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x1a
    addiu	$at,$at,-32116
    # addu	gp,t9,at
    # Line 71
    # lw $t9, -32220($gp) # &__glExpPassLineStipple
    sd	$ra,0($sp)
    bal __glExpPassLineStipple
    nop
    # Line 72
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpEnableLineStipple

.rdata
_lit_41100000:
    .word 0x41100000
_lit_42c80000:
    .word 0x42c80000

