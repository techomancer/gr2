# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_matrix.ma
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glMipsNormalize
# Declared: Line 27 (Source lines: 27-108)
# Address: 0x0db294c8 - 0x0db295a4 (Size: 220 bytes, Frame: 0)
.globl __glMipsNormalize
.ent __glMipsNormalize
__glMipsNormalize:
    # Line 27
    lwc1	$f0,0($a1)
    # Line 28
    lwc1	$f1,4($a1)
    # Line 29
    lwc1	$f2,8($a1)
    # Line 30
    mul.s	$f3,$f0,$f0
    # Line 31
    mul.s	$f4,$f1,$f1
    # Line 32
    mul.s	$f5,$f2,$f2
    # Line 34
    add.s	$f6,$f3,$f4
    # Line 35
    add.s	$f6,$f6,$f5
    # Line 46
    lui	$v0,0x3f80
    # Line 47
    lui	$v1,0x5f37
    # Line 48
    mfc1	$a1,$f6
    # Line 49
    addiu	$v1,$v1,23040
    # Line 50
    srl	$a2,$a1,0x1
    # Line 51
    beq	$v0,$a1,.L0db29594
    # Line 52
    subu	$a2,$v1,$a2
    # Line 53
    mtc1	$a2,$f7
    # Line 65
    lui	$a3,0x3d80
    # Line 66
    addiu	$a3,$a3,41
    # Line 67
    mul.s	$f8,$f6,$f7
    # Line 68
    mtc1	$a3,$f9
    # Line 69
    lui	$t0,0x7f80
    # Line 70
    and	$a1,$a1,$t0
    # Line 71
    mul.s	$f9,$f7,$f9
    # Line 72
    slt	$t0,$a1,$t0
    # Line 73
    slt	$a1,$zero,$a1
    # Line 74
    mul.s	$f8,$f8,$f7
    # Line 75
    and	$a1,$t0,$a1
    # Line 76
    lui	$t1,0x4040
    # Line 77
    mtc1	$t1,$f10
    # Line 78
    lui	$t2,0x4140
    # Line 79
    beqz	$a1,.L0db29584
    # Line 80
    mtc1	$t2,$f11
    # Line 81
    sub.s	$f10,$f10,$f8
    # Line 82
    mul.s	$f8,$f8,$f10
    # Line 83
    mul.s	$f9,$f9,$f10
    # Line 84
    mul.s	$f8,$f8,$f10
    # Line 85
    mul.s	$f0,$f0,$f9
    # Line 86
    mul.s	$f1,$f1,$f9
    # Line 87
    sub.s	$f11,$f11,$f8
    # Line 88
    mul.s	$f2,$f2,$f9
    # Line 89
    mul.s	$f0,$f0,$f11
    # Line 90
    mul.s	$f1,$f1,$f11
    # Line 91
    mul.s	$f2,$f2,$f11
    # Line 92
    swc1	$f0,0($a0)
    # Line 93
    swc1	$f1,4($a0)
    # Line 94
    jr	$ra
    # Line 95
    swc1	$f2,8($a0)
.L0db29584:
    # Line 98
    sw	$zero,0($a0)
    # Line 99
    sw	$zero,4($a0)
    # Line 100
    jr	$ra
    # Line 101
    sw	$zero,8($a0)
.L0db29594:
    # Line 105
    swc1	$f0,0($a0)
    # Line 106
    swc1	$f1,4($a0)
    # Line 107
    jr	$ra
    # Line 108
    swc1	$f2,8($a0)
.end __glMipsNormalize

