# Source: ../soft/so_pntdraw.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntdraw.c
# Total Functions: 5

.text

# Function: __glRenderAliasedPoint1_NoTex
# Declared: Line 25 (Source lines: 26-43)
# Address: 0x0dacca74 - 0x0daccb34 (Size: 192 bytes, Frame: 224)
.globl __glRenderAliasedPoint1_NoTex
.ent __glRenderAliasedPoint1_NoTex
__glRenderAliasedPoint1_NoTex:
    # Line 29
    lwc1	$f2,128($a1)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    # Line 26
    addiu	$sp,$sp,-96
    # Line 29
    sw	$v0,0($sp)
    # Line 30
    lwc1	$f1,132($a1)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,4($sp)
    # Line 31
    lwc1	$f0,136($a1)
    trunc.l.s	$f0,$f0
    dmfc1	$a5,$f0
    # Line 26
    move	$a4,$a1
    move	$a3,$a0
    # Line 31
    sll	$a5,$a5,0x0
    sw	$a5,8($sp)
    # sd	gp,56(sp)
    lbu	$at,30524($a0)
    # Line 26
    lui	$v0,0x13
    addiu	$v0,$v0,-21004
    # Line 31
    beqz	$at,.L0daccaec
    # Line 26
    nop
    # Line 33
    lwc1	$f3,30492($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    sd	$ra,64($sp)
    sll	$v1,$v1,0x0
    addu	$v1,$v1,$a5
    sw	$v1,8($sp)
.L0daccaec:
    # Line 39
    lw	$a0,4($a4)
    lwc1	$f7,0($a0)
    swc1	$f7,12($sp)
    lwc1	$f6,4($a0)
    swc1	$f6,16($sp)
    lwc1	$f5,8($a0)
    swc1	$f5,20($sp)
    lwc1	$f4,12($a0)
    swc1	$f4,24($sp)
    # Line 42
    lw	$t9,12616($a3)
    addiu	$a1,$sp,0
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,11768($a3)
    # Line 43
    ld	$ra,64($sp)
    # ld	gp,56(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glRenderAliasedPoint1_NoTex

# Function: __glRenderAliasedPoint1
# Declared: Line 45 (Source lines: 46-70)
# Address: 0x0daccb34 - 0x0daccc3c (Size: 264 bytes, Frame: 224)
.globl __glRenderAliasedPoint1
.ent __glRenderAliasedPoint1
__glRenderAliasedPoint1:
    # Line 50
    lwc1	$f2,128($a1)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    # Line 48
    lw	$a4,30440($a0)
    # Line 46
    addiu	$sp,$sp,-96
    # Line 50
    sw	$v0,0($sp)
    # Line 51
    lwc1	$f1,132($a1)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,4($sp)
    # Line 52
    lwc1	$f0,136($a1)
    trunc.l.s	$f0,$f0
    # Line 46
    move	$a3,$a1
    # Line 52
    dmfc1	$a5,$f0
    sd	$s0,56($sp)
    # Line 46
    move	$s0,$a0
    # Line 52
    sll	$a5,$a5,0x0
    sw	$a5,8($sp)
    # sd	gp,64(sp)
    lbu	$at,30524($a0)
    # Line 46
    lui	$v0,0x13
    addiu	$v0,$v0,-21196
    # Line 52
    beqz	$at,.L0daccbb4
    # Line 46
    nop
    # Line 54
    lwc1	$f3,30492($s0)
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sll	$v1,$v1,0x0
    addu	$v1,$v1,$a5
    sw	$v1,8($sp)
.L0daccbb4:
    # Line 60
    lw	$at,4($a3)
    lwc1	$f3,0($at)
    swc1	$f3,12($sp)
    lwc1	$f2,4($at)
    swc1	$f2,16($sp)
    lwc1	$f1,8($at)
    swc1	$f1,20($sp)
    sd	$ra,72($sp)
    lwc1	$f0,12($at)
    andi	$a2,$a4,0x8
    beqz	$a2,.L0daccc18
    swc1	$f0,24($sp)
    # Line 62
    lwc1	$f18,60($a3)
    lwc1	$f17,3284($s0)
    div.s	$f18,$f17,$f18
    # Line 63
    lwc1	$f16,56($a3)
    addiu	$a1,$sp,12
    lwc1	$f15,52($a3)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($a3)
    lw	$t9,12532($s0)
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0daccc18:
    # Line 69
    lw	$t9,12616($s0)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11768($s0)
    ld	$ra,72($sp)
    ld	$s0,56($sp)
    # ld	gp,64(sp)
    # Line 70
    jr	$ra
    addiu	$sp,$sp,96
.end __glRenderAliasedPoint1

# Function: __glRenderFlatFogPoint
# Declared: Line 72 (Source lines: 73-84)
# Address: 0x0daccc3c - 0x0dacccb8 (Size: 124 bytes, Frame: 208)
.globl __glRenderFlatFogPoint
.ent __glRenderFlatFogPoint
__glRenderFlatFogPoint:
    # Line 73
    addiu	$sp,$sp,-80
    sd	$s8,32($sp)
    sd	$s0,48($sp)
    move	$s0,$a1
    # Line 77
    addiu	$a1,$sp,0
    sd	$s7,24($sp)
    # Line 73
    move	$s7,$a0
    # sd	gp,40(sp)
    lui	$at,0x13
    addiu	$at,$at,-21460
    # addu	gp,t9,at
    # Line 77
    lw	$t9,12540($a0)
    sd	$ra,16($sp)
    lwc1	$f15,176($s0)
    jalr	$t9
    lw	$a2,4($s0)
    # Line 78
    lw	$s8,4($s0)
    # Line 79
    addiu	$v0,$sp,0
    sw	$v0,4($s0)
    # Line 81
    lw	$t9,12508($s7)
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s7
    # ld	gp,40(sp)
    # Line 83
    sw	$s8,4($s0)
    # Line 84
    ld	$s0,48($sp)
    ld	$ra,16($sp)
    ld	$s7,24($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glRenderFlatFogPoint

# Function: __glRenderAliasedPointN
# Declared: Line 88 (Source lines: 89-140)
# Address: 0x0dacccb8 - 0x0dacce94 (Size: 476 bytes, Frame: 160)
.globl __glRenderAliasedPointN
.ent __glRenderAliasedPointN
__glRenderAliasedPointN:
    # Line 98
    lwc1	$f4,132($a1)
    lwc1	$f5,128($a1)
    # Line 92
    lw	$a3,30440($a0)
    # Line 89
    addiu	$sp,$sp,-160
    sd	$s7,112($sp)
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s4,64($sp)
    move	$s4,$a0
    # sd	gp,80(sp)
    lui	$v0,0x13
    sd	$s5,72($sp)
    # Line 98
    lw	$s5,440($a0)
    # Line 89
    addiu	$v0,$v0,-21584
    # addu	gp,t9,v0
    # Line 98
    andi	$at,$s5,0x1
    beqz	$at,.L0dacce68
    sra	$a4,$s5,0x1
    # Line 102
    trunc.w.s	$f0,$f5
    # Line 103
    trunc.w.s	$f1,$f4
    # Line 102
    mfc1	$s7,$f0
    # Line 103
    mfc1	$at,$f1
    # Line 102
    subu	$s7,$s7,$a4
    # Line 103
    subu	$at,$at,$a4
    sd	$at,88($sp)
.L0daccd1c:
    # Line 115
    lw	$v1,4($s0)
    lwc1	$f1,0($v1)
    swc1	$f1,12($sp)
    lwc1	$f0,4($v1)
    swc1	$f0,16($sp)
    lwc1	$f3,8($v1)
    swc1	$f3,20($sp)
    lwc1	$f2,12($v1)
    andi	$v0,$a3,0x8
    beqz	$v0,.L0daccd88
    swc1	$f2,24($sp)
    # Line 117
    lwc1	$f18,60($s0)
    lwc1	$f17,3284($s4)
    div.s	$f18,$f17,$f18
    # Line 118
    addiu	$a1,$sp,12
    lwc1	$f16,56($s0)
    move	$a0,$s4
    lwc1	$f15,52($s0)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s0)
    lw	$t9,12532($s4)
    mul.s	$f15,$f15,$f18
    sd	$ra,128($sp)
    jalr	$t9
    mul.s	$f14,$f14,$f18
    sd	$s3,96($sp)
    ld	$ra,128($sp)
.L0daccd88:
    # Line 126
    lwc1	$f0,136($s0)
    trunc.l.s	$f0,$f0
    lbu	$a2,30524($s4)
    sd	$s3,96($sp)
    dmfc1	$s3,$f0
    ld	$s0,56($sp)
    beqz	$a2,.L0daccdc8
    sll	$s3,$s3,0x0
    # Line 128
    lwc1	$f1,30492($s4)
    trunc.l.s	$f1,$f1
    sd	$s8,120($sp)
    dmfc1	$at,$f1
    sd	$s1,104($sp)
    ld	$s0,56($sp)
    sll	$at,$at,0x0
    addu	$s3,$at,$s3
.L0daccdc8:
    ld	$v0,88($sp)
    sd	$s1,104($sp)
    sd	$s8,120($sp)
    # Line 132
    move	$s1,$v0
    addu	$s8,$s5,$v0
    slt	$v0,$v0,$s8
    beqz	$v0,.L0dacce44
    # Line 131
    sw	$s3,8($sp)
    sd	$ra,128($sp)
    sd	$s6,136($sp)
    b	.L0dacce2c
    # Line 132
    addu	$s6,$s5,$s7
    # Line 136
    sw	$s3,8($sp)
.L0daccdfc:
    # Line 135
    sw	$s1,4($sp)
    # Line 134
    sw	$s0,0($sp)
    # Line 137
    lw	$t9,12616($s4)
    addiu	$a1,$sp,0
    # Line 133
    addiu	$s0,$s0,1
    # Line 137
    jalr	$t9
    lw	$a0,11768($s4)
    # Line 133
    bnel	$s6,$s0,.L0daccdfc
    # Line 136
    sw	$s3,8($sp)
.L0dacce20:
    # Line 132
    addiu	$s1,$s1,1
    beq	$s8,$s1,.L0dacce3c
    ld	$s0,56($sp)
.L0dacce2c:
    # Line 133
    blez	$s5,.L0dacce20
    move	$s0,$s7
    b	.L0daccdfc
    # Line 136
    sw	$s3,8($sp)
.L0dacce3c:
    ld	$ra,128($sp)
    ld	$s6,136($sp)
.L0dacce44:
    # ld	gp,80(sp)
    # Line 140
    ld	$s1,104($sp)
    ld	$s3,96($sp)
    ld	$s4,64($sp)
    ld	$s5,72($sp)
    ld	$s7,112($sp)
    ld	$s8,120($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dacce68:
    # Line 106
    lwc1	$f2,3280($s4)
    # Line 107
    add.s	$f3,$f4,$f2
    # Line 106
    add.s	$f2,$f5,$f2
    trunc.w.s	$f2,$f2
    # Line 107
    trunc.w.s	$f3,$f3
    # Line 106
    mfc1	$s7,$f2
    # Line 107
    mfc1	$at,$f3
    # Line 106
    subu	$s7,$s7,$a4
    # Line 107
    subu	$at,$at,$a4
    b	.L0daccd1c
    sd	$at,88($sp)
.end __glRenderAliasedPointN

# Function: __glPolygonOffsetPoint
# Declared: Line 142 (Source lines: 143-149)
# Address: 0x0dacce94 - 0x0daccedc (Size: 72 bytes, Frame: 48)
.globl __glPolygonOffsetPoint
.ent __glPolygonOffsetPoint
__glPolygonOffsetPoint:
    # Line 144
    li	$at,1
    # Line 143
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    lui	$v0,0x13
    addiu	$v0,$v0,-22060
    # addu	gp,t9,v0
    # Line 146
    lw	$t9,12504($a0)
    sd	$s8,8($sp)
    # Line 143
    move	$s8,$a0
    # Line 146
    jalr	$t9
    # Line 144
    sb	$at,30524($s8)
    # ld	gp,16(sp)
    # Line 149
    ld	$ra,0($sp)
    # Line 148
    sb	$zero,30524($s8)
    # Line 149
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glPolygonOffsetPoint

