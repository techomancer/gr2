# Source: ../EXPRESS/gr2_bitdraw.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_bitdraw.c
# Total Functions: 2

.text

# Function: __glExpRenderBitmap
# Declared: Line 33 (Source lines: 35-140)
# Address: 0x0da57760 - 0x0da57b1c (Size: 956 bytes, Frame: 48)
.globl __glExpRenderBitmap
.ent __glExpRenderBitmap
__glExpRenderBitmap:
    # Line 37
    lw	$t0,4556($a0)
    # Line 80
    li	$a7,9
    # Line 35
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    # Line 37
    lbu	$at,428($a0)
    # Line 35
    lui	$v0,0x1a
    addiu	$v0,$v0,264
    # Line 37
    beqz	$at,.L0da57b10
    # Line 35
    nop
    # Line 54
    lw	$t2,0($a1)
    # Line 58
    beqz	$t2,.L0da578ec
    # Line 55
    lw	$t1,4($a1)
    # Line 58
    beqz	$t1,.L0da578ec
.L0da57794:
    # Line 66
    addiu	$a6,$t2,7
    sra	$a6,$a6,0x3
    slti	$v1,$a6,5
    beqz	$v1,.L0da57908
    addiu	$v0,$a6,3
    sra	$v0,$v0,0x2
    mult	$v0,$t1
    mflo	$a4
    slti	$at,$a4,33
    beqz	$at,.L0da57908
    # Line 90
    lui	$v0,0x4
    sll	$t8,$t2,0x10
    # Line 68
    slti	$v1,$a4,10
    beqz	$v1,.L0da578d4
    # Line 90
    or	$t8,$t8,$t1
    # Line 80
    subu	$a7,$a7,$a4
    # Line 79
    li	$t3,396
.L0da577d8:
    # Line 97
    mult	$a6,$t1
    # Line 90
    sll	$at,$t3,0x2
    addu	$at,$at,$v0
    sw	$t8,8192($at)
    # Line 91
    lwc1	$f3,8($a1)
    swc1	$f3,8192($at)
    # Line 130
    addiu	$a7,$a7,-1
    # Line 92
    lwc1	$f2,12($a1)
    # Line 99
    li	$t1,3
    # Line 95
    li	$t9,1
    # Line 92
    swc1	$f2,8192($at)
    # Line 99
    li	$v0,4
    # Line 93
    lwc1	$f1,16($a1)
    # Line 97
    mflo	$t8
    move	$a4,$t8
    # Line 93
    swc1	$f1,8192($at)
    # Line 98
    subu	$a5,$t8,$a6
    # Line 94
    lwc1	$f0,20($a1)
    # Line 98
    addu	$a5,$a5,$a2
    # Line 94
    swc1	$f0,8192($at)
    # Line 99
    beq	$a6,$v0,.L0da57928
    # Line 95
    sw	$t9,8192($at)
    # Line 99
    beq	$a6,$t1,.L0da5797c
    li	$at,2
    beq	$a6,$at,.L0da579d0
    # Line 115
    slti	$at,$a4,2
    # Line 99
    beq	$a6,$t9,.L0da57a80
.L0da57844:
    # Line 130
    addiu	$a6,$a7,1
.L0da57848:
    slti	$v0,$a7,0
    bnez	$v0,.L0da5789c
    lui	$a2,0x4
    li	$a5,-1
    andi	$a4,$a6,0x3
    beqz	$a4,.L0da57874
    ori	$a2,$a2,0x277c
.L0da57864:
    addiu	$a7,$a7,-1
    addi	$a4,$a4,-1
    bnez	$a4,.L0da57864
    # Line 131
    sw	$zero,0($a2)
.L0da57874:
    sra	$a3,$a6,0x2
    beqz	$a3,.L0da5789c
    move	$t1,$a7
    move	$a4,$t1
.L0da57884:
    # Line 130
    addiu	$a4,$a4,-4
    # Line 131
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    # Line 130
    bne	$a4,$a5,.L0da57884
    # Line 131
    sw	$zero,0($a2)
.L0da5789c:
    # ld	gp,0(sp)
    # Line 138
    lwc1	$f3,344($a0)
    lwc1	$f2,16($a1)
    # Line 139
    mtc1	$t0,$f1
    # Line 138
    add.s	$f2,$f2,$f3
    # Line 139
    cvt.s.w	$f1,$f1
    # Line 138
    swc1	$f2,344($a0)
    # Line 139
    lwc1	$f0,20($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,348($a0)
    add.s	$f4,$f4,$f0
    # Line 140
    addiu	$sp,$sp,48
    jr	$ra
    # Line 139
    swc1	$f4,348($a0)
.L0da578d4:
    # Line 80
    slti	$at,$a4,18
    beqz	$at,.L0da578f8
    # Line 83
    li	$a7,17
    # Line 82
    li	$t3,397
    # Line 83
    b	.L0da577d8
    subu	$a7,$a7,$a4
.L0da578ec:
    # Line 59
    move	$t1,$zero
    b	.L0da57794
    move	$t2,$zero
.L0da578f8:
    # Line 86
    li	$a7,33
    # Line 85
    li	$t3,398
    b	.L0da577d8
    # Line 86
    subu	$a7,$a7,$a4
.L0da57908:
    # Line 67
    # lw $t9, -32424($gp) # &__glExpSlowRenderBitmap
    sd	$ra,8($sp)
    bal __glExpSlowRenderBitmap
    nop
    # Line 68
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57928:
    # Line 101
    slti	$at,$a4,4
    bnez	$at,.L0da57844
    lui	$a2,0x4
    ori	$a2,$a2,0x277c
.L0da57938:
    # Line 104
    addiu	$a5,$a5,-4
    # Line 102
    lbu	$v1,6($a5)
    # Line 103
    addiu	$a4,$a4,-4
    # Line 104
    slti	$a6,$a4,4
    # Line 102
    sll	$v1,$v1,0x8
    lbu	$a3,7($a5)
    lbu	$at,4($a5)
    lbu	$v0,5($a5)
    or	$a3,$a3,$v1
    sll	$at,$at,0x18
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    or	$a3,$a3,$at
    # Line 104
    beqz	$a6,.L0da57938
    # Line 102
    sw	$a3,0($a2)
    b	.L0da57848
    # Line 130
    addiu	$a6,$a7,1
.L0da5797c:
    # Line 108
    slti	$a3,$a4,3
    bnez	$a3,.L0da57848
    # Line 130
    addiu	$a6,$a7,1
    # Line 108
    teq	$t1,$zero,0x7
    lui	$a2,0x4
    ori	$a2,$a2,0x277c
.L0da57994:
    # Line 111
    addiu	$a5,$a5,-3
    # Line 110
    addiu	$a4,$a4,-3
    # Line 109
    lbu	$a3,3($a5)
    # Line 111
    slti	$at,$a4,3
    # Line 109
    lbu	$v1,4($a5)
    sll	$a3,$a3,0x18
    lbu	$v0,5($a5)
    sll	$v1,$v1,0x10
    or	$a3,$a3,$v1
    sll	$v0,$v0,0x8
    or	$a3,$a3,$v0
    # Line 111
    beqz	$at,.L0da57994
    # Line 109
    sw	$a3,0($a2)
    b	.L0da57848
    # Line 130
    addiu	$a6,$a7,1
.L0da579d0:
    # Line 115
    bnez	$at,.L0da57844
    srl	$v0,$t8,0x1f
    addu	$v0,$v0,$t8
    sra	$v0,$v0,0x1
    li	$a6,1
    slt	$at,$v0,$a6
    beqzl	$at,.L0da579f0
    move	$a6,$v0
.L0da579f0:
    lui	$a2,0x4
    andi	$a3,$a6,0x1
    beqz	$a3,.L0da57a20
    ori	$a2,$a2,0x277c
    # Line 118
    addiu	$a5,$a5,-2
    # Line 116
    lbu	$v1,2($a5)
    lbu	$a3,3($a5)
    # Line 117
    addiu	$a4,$a4,-2
    # Line 116
    sll	$v1,$v1,0x18
    sll	$a3,$a3,0x10
    or	$v1,$v1,$a3
    sw	$v1,0($a2)
.L0da57a20:
    move	$t2,$a4
    sra	$a3,$a6,0x1
    beqz	$a3,.L0da57a78
    move	$t1,$a5
    move	$a4,$t2
    move	$a5,$t1
.L0da57a38:
    lbu	$v0,0($a5)
    lbu	$v1,1($a5)
    # Line 118
    addiu	$a5,$a5,-4
    # Line 116
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    sw	$v0,0($a2)
    # Line 117
    addiu	$a4,$a4,-4
    # Line 116
    lbu	$at,2($a5)
    lbu	$v1,3($a5)
    # Line 118
    slti	$v0,$a4,2
    # Line 116
    sll	$at,$at,0x18
    sll	$v1,$v1,0x10
    or	$at,$at,$v1
    # Line 118
    beqz	$v0,.L0da57a38
    # Line 116
    sw	$at,0($a2)
.L0da57a78:
    b	.L0da57848
    # Line 130
    addiu	$a6,$a7,1
.L0da57a80:
    # Line 122
    blez	$t8,.L0da57844
    lui	$a2,0x4
    move	$t1,$t8
    andi	$a6,$t8,0x3
    beqz	$a6,.L0da57ab4
    ori	$a2,$a2,0x277c
.L0da57a98:
    # Line 125
    addiu	$a5,$a5,-1
    # Line 123
    lbu	$a3,1($a5)
    # Line 124
    addiu	$a4,$a4,-1
    addi	$a6,$a6,-1
    # Line 123
    sll	$a3,$a3,0x18
    bnez	$a6,.L0da57a98
    sw	$a3,0($a2)
.L0da57ab4:
    move	$t2,$a4
    sra	$at,$t1,0x2
    beqz	$at,.L0da57b08
    move	$a6,$a5
    move	$a4,$t2
    move	$a5,$a6
.L0da57acc:
    lbu	$at,0($a5)
    sll	$at,$at,0x18
    sw	$at,0($a2)
    lbu	$a3,-1($a5)
    sll	$a3,$a3,0x18
    sw	$a3,0($a2)
    lbu	$v1,-2($a5)
    sll	$v1,$v1,0x18
    sw	$v1,0($a2)
    lbu	$v0,-3($a5)
    # Line 125
    addiu	$a5,$a5,-4
    # Line 124
    addiu	$a4,$a4,-4
    # Line 123
    sll	$v0,$v0,0x18
    # Line 125
    bnez	$a4,.L0da57acc
    # Line 123
    sw	$v0,0($a2)
.L0da57b08:
    b	.L0da57848
    # Line 130
    addiu	$a6,$a7,1
.L0da57b10:
    # ld	gp,0(sp)
    # Line 51
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpRenderBitmap

# Function: __glExpSlowRenderBitmap
# Declared: Line 142 (Source lines: 144-156)
# Address: 0x0da57b1c - 0x0da57ba8 (Size: 140 bytes, Frame: 208)
.globl __glExpSlowRenderBitmap
.ent __glExpSlowRenderBitmap
__glExpSlowRenderBitmap:
    # Line 144
    addiu	$sp,$sp,-80
    sd	$ra,24($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    lbu	$at,31567($a0)
    lui	$v0,0x1a
    addiu	$v0,$v0,-692
    beqz	$at,.L0da57b7c
    nop
.L0da57b4c:
    # Line 151
    # lw $t9, -29464($gp) # &__glRenderBitmap
    move	$a0,$s0
    jal	__glRenderBitmap
    move	$a1,$s8
    lbu	$v1,31567($s0)
    ld	$s8,8($sp)
    beqz	$v1,.L0da57b94
    ld	$ra,24($sp)
.L0da57b6c:
    # ld	gp,16(sp)
    # Line 156
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da57b7c:
    # Line 149
    # lw $t9, -31924($gp) # &__glExpGetRasterPosData
    sd	$a2,32($sp)
    jal	__glExpGetRasterPosData
    move	$a0,$s0
    b	.L0da57b4c
    ld	$a2,32($sp)
.L0da57b94:
    # Line 155
    # lw $t9, -31928($gp) # &__glExpPassRasterPosData
    jal	__glExpPassRasterPosData
    move	$a0,$s0
    b	.L0da57b6c
    ld	$ra,24($sp)
.end __glExpSlowRenderBitmap

