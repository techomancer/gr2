# Source: ../soft/so_stencilop.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_stencilop.c
# Total Functions: 12

.text

# Function: Fetch
# Declared: Line 22 (Source lines: 27-27)
# Address: 0x0dadae14 - 0x0dadae48 (Size: 52 bytes, Frame: 0)
.ent Fetch
Fetch:
    # Line 27
    lw	$v1,0($a0)
    lw	$a4,3376($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    lw	$v1,3372($v1)
    mflo	$a0
    addu	$v0,$v0,$a0
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$v1
    jr	$ra
    lbu	$v0,0($v0)
.end Fetch

# Function: Store
# Declared: Line 30 (Source lines: 34-37)
# Address: 0x0dadae48 - 0x0dadae94 (Size: 76 bytes, Frame: 0)
.ent Store
Store:
    # Line 34
    lw	$a4,0($a0)
    lw	$at,3376($a4)
    lw	$a5,28($a0)
    subu	$at,$a2,$at
    mult	$a5,$at
    # Line 35
    lh	$v1,1578($a4)
    # Line 34
    lw	$v0,16($a0)
    lw	$a0,3372($a4)
    mflo	$a2
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$a0
    # Line 35
    lbu	$at,0($v0)
    nor	$a0,$v1,$zero
    and	$v1,$v1,$a3
    and	$at,$at,$a0
    or	$at,$at,$v1
    # Line 37
    jr	$ra
    # Line 35
    sb	$at,0($v0)
.end Store

# Function: TestFunc
# Declared: Line 39 (Source lines: 44-44)
# Address: 0x0dadae94 - 0x0dadaedc (Size: 72 bytes, Frame: 0)
.ent TestFunc
TestFunc:
    # Line 44
    lw	$at,0($a0)
    lw	$v1,3376($at)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a3,16($a0)
    lh	$v1,1576($at)
    lw	$a2,3372($at)
    mflo	$a4
    addu	$a3,$a3,$a4
    addu	$a1,$a3,$a1
    subu	$a1,$a1,$a2
    lbu	$a1,0($a1)
    lw	$v0,72($a0)
    and	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    jr	$ra
    lbu	$v0,0($v0)
.end TestFunc

# Function: FailOp
# Declared: Line 47 (Source lines: 51-53)
# Address: 0x0dadaedc - 0x0dadaf20 (Size: 68 bytes, Frame: 0)
.ent FailOp
FailOp:
    # Line 51
    lw	$v1,0($a0)
    lw	$at,3376($v1)
    lw	$a3,28($a0)
    subu	$at,$a2,$at
    mult	$a3,$at
    lw	$v0,16($a0)
    lw	$v1,3372($v1)
    mflo	$a2
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$v1
    # Line 52
    lw	$v1,76($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 53
    jr	$ra
    # Line 52
    sb	$at,0($v0)
.end FailOp

# Function: PassDepthFailOp
# Declared: Line 55 (Source lines: 59-61)
# Address: 0x0dadaf20 - 0x0dadaf64 (Size: 68 bytes, Frame: 0)
.ent PassDepthFailOp
PassDepthFailOp:
    # Line 59
    lw	$v1,0($a0)
    lw	$at,3376($v1)
    lw	$a3,28($a0)
    subu	$at,$a2,$at
    mult	$a3,$at
    lw	$v0,16($a0)
    lw	$v1,3372($v1)
    mflo	$a2
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$v1
    # Line 60
    lw	$v1,80($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 61
    jr	$ra
    # Line 60
    sb	$at,0($v0)
.end PassDepthFailOp

# Function: DepthPassOp
# Declared: Line 63 (Source lines: 67-69)
# Address: 0x0dadaf64 - 0x0dadafa8 (Size: 68 bytes, Frame: 0)
.ent DepthPassOp
DepthPassOp:
    # Line 67
    lw	$v1,0($a0)
    lw	$at,3376($v1)
    lw	$a3,28($a0)
    subu	$at,$a2,$at
    mult	$a3,$at
    lw	$v0,16($a0)
    lw	$v1,3372($v1)
    mflo	$a2
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a1
    subu	$v0,$v0,$v1
    # Line 68
    lw	$v1,84($a0)
    lbu	$at,0($v0)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    # Line 69
    jr	$ra
    # Line 68
    sb	$at,0($v0)
.end DepthPassOp

# Function: Clear
# Declared: Line 73 (Source lines: 74-135)
# Address: 0x0dadafa8 - 0x0dadb484 (Size: 1244 bytes, Frame: 128)
.ent Clear
Clear:
    # Line 75
    lw	$t1,0($a0)
    # Line 74
    addiu	$sp,$sp,-128
    # Line 75
    move	$a5,$t1
    # Line 80
    lw	$t3,29704($t1)
    # Line 82
    lw	$a3,29712($t1)
    # Line 83
    lw	$a7,29716($t1)
    # Line 81
    lw	$a6,29708($t1)
    # Line 84
    subu	$a3,$a3,$t3
    beqz	$a3,.L0dadb47c
    # Line 78
    lbu	$a2,1573($t1)
    # Line 84
    subu	$t2,$a7,$a6
    beqz	$t2,.L0dadb47c
    nop
    # Line 88
    lw	$t8,3376($t1)
    lw	$t0,28($a0)
    subu	$t8,$a6,$t8
    mult	$t8,$t0
    # Line 90
    slt	$t8,$a6,$a7
    lw	$v1,3132($a5)
    subu	$t0,$t0,$a3
    li	$v0,1
    mfhi	$zero
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    # Line 88
    lw	$a4,16($a0)
    # Line 90
    lh	$t9,1578($a5)
    # Line 88
    mflo	$at
    addu	$a4,$a4,$at
    lw	$at,3372($t1)
    addu	$a4,$a4,$t3
    # Line 90
    bne	$v0,$t9,.L0dadb05c
    # Line 88
    subu	$a4,$a4,$at
    # Line 90
    beqz	$t8,.L0dadb1d4
    sd	$t2,96($sp)
    li	$a0,-1
    sra	$t9,$a3,0x3
    addiu	$t1,$t9,-1
    andi	$t8,$a3,0x7
    slti	$t2,$t9,1
    sd	$t8,72($sp)
    addiu	$t3,$t8,-1
    slti	$t8,$t8,1
    xori	$t8,$t8,0x1
    b	.L0dadb18c
    xori	$t2,$t2,0x1
.L0dadb05c:
    sd	$t2,96($sp)
    # Line 112
    nor	$a5,$t9,$zero
    # Line 111
    and	$a2,$t9,$a2
    # Line 112
    beqz	$t8,.L0dadb1d4
    # Line 111
    andi	$a2,$a2,0xff
    # Line 112
    li	$a0,-1
    sra	$t9,$a3,0x3
    addiu	$t1,$t9,-1
    andi	$t8,$a3,0x7
    slti	$t2,$t9,1
    sd	$t8,72($sp)
    addiu	$t3,$t8,-1
    slti	$t8,$t8,1
    xori	$t8,$t8,0x1
    b	.L0dadb3d4
    xori	$t2,$t2,0x1
.L0dadb09c:
    sd	$a5,16($sp)
.L0dadb0a0:
    ld	$at,16($sp)
    move	$a5,$a3
    move	$v0,$a4
    sra	$at,$at,0x1
    beqz	$at,.L0dadb110
    sd	$a4,24($sp)
    move	$a4,$a5
    ld	$a3,24($sp)
.L0dadb0c0:
    # Line 99
    addiu	$a3,$a3,16
    # Line 98
    sb	$a2,-1($a3)
    sb	$a2,-2($a3)
    sb	$a2,-3($a3)
    sb	$a2,-4($a3)
    # Line 97
    sb	$a2,-5($a3)
    sb	$a2,-6($a3)
    sb	$a2,-7($a3)
    sb	$a2,-8($a3)
    # Line 98
    sb	$a2,-9($a3)
    sb	$a2,-10($a3)
    sb	$a2,-11($a3)
    sb	$a2,-12($a3)
    # Line 97
    sb	$a2,-13($a3)
    sb	$a2,-14($a3)
    sb	$a2,-15($a3)
    # Line 96
    addiu	$a4,$a4,-2
    bne	$a4,$a0,.L0dadb0c0
    # Line 97
    sb	$a2,-16($a3)
    move	$a4,$a3
.L0dadb110:
    # Line 102
    beqz	$t8,.L0dadb180
    move	$a3,$t3
    ld	$a5,72($sp)
    sd	$a5,0($sp)
    andi	$a5,$a5,0x3
    beqz	$a5,.L0dadb144
    ld	$at,0($sp)
.L0dadb12c:
    addiu	$a3,$a3,-1
    # Line 103
    sb	$a2,0($a4)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dadb12c
    addiu	$a4,$a4,1
    ld	$at,0($sp)
.L0dadb144:
    move	$a5,$a3
    move	$v0,$a4
    sra	$at,$at,0x2
    beqz	$at,.L0dadb180
    sd	$a4,8($sp)
    move	$a4,$a5
    ld	$a3,8($sp)
.L0dadb160:
    addiu	$a3,$a3,4
    # Line 102
    addiu	$a4,$a4,-4
    # Line 103
    sb	$a2,-4($a3)
    sb	$a2,-3($a3)
    sb	$a2,-2($a3)
    # Line 102
    bne	$a4,$a0,.L0dadb160
    # Line 103
    sb	$a2,-1($a3)
    move	$a4,$a3
.L0dadb180:
    # Line 94
    addiu	$a6,$a6,1
    beq	$a6,$a7,.L0dadb1d4
    # Line 105
    addu	$a4,$t0,$a4
.L0dadb18c:
    # Line 96
    move	$a5,$t9
    beqz	$t2,.L0dadb110
    move	$a3,$t1
    andi	$v1,$t9,0x1
    beqzl	$v1,.L0dadb0a0
    sd	$a5,16($sp)
    addiu	$a3,$a3,-1
    # Line 99
    addiu	$a4,$a4,8
    # Line 98
    sb	$a2,-1($a4)
    sb	$a2,-2($a4)
    sb	$a2,-3($a4)
    sb	$a2,-4($a4)
    # Line 97
    sb	$a2,-5($a4)
    sb	$a2,-6($a4)
    sb	$a2,-7($a4)
    sb	$a2,-8($a4)
    b	.L0dadb09c
    sd	$a5,16($sp)
.L0dadb1d4:
    # Line 135
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb1dc:
    move	$v0,$a3
    ld	$a1,32($sp)
    sd	$a3,88($sp)
    move	$at,$a4
    sra	$a1,$a1,0x1
    beqz	$a1,.L0dadb310
    sd	$a4,80($sp)
    ld	$a4,88($sp)
    ld	$a3,80($sp)
.L0dadb200:
    # Line 124
    lbu	$v0,15($a3)
    # Line 125
    addiu	$a3,$a3,16
    # Line 116
    addiu	$a4,$a4,-2
    # Line 124
    and	$v0,$v0,$a5
    # Line 123
    lbu	$at,-2($a3)
    # Line 124
    or	$v0,$v0,$a2
    sb	$v0,-1($a3)
    # Line 123
    and	$at,$at,$a5
    # Line 122
    lbu	$a1,-3($a3)
    # Line 123
    or	$at,$at,$a2
    sb	$at,-2($a3)
    # Line 122
    and	$a1,$a1,$a5
    # Line 121
    lbu	$v1,-4($a3)
    # Line 122
    or	$a1,$a1,$a2
    sb	$a1,-3($a3)
    # Line 121
    and	$v1,$v1,$a5
    # Line 120
    lbu	$v0,-5($a3)
    # Line 121
    or	$v1,$v1,$a2
    sb	$v1,-4($a3)
    # Line 120
    and	$v0,$v0,$a5
    # Line 119
    lbu	$at,-6($a3)
    # Line 120
    or	$v0,$v0,$a2
    sb	$v0,-5($a3)
    # Line 119
    and	$at,$at,$a5
    # Line 118
    lbu	$a1,-7($a3)
    # Line 119
    or	$at,$at,$a2
    sb	$at,-6($a3)
    # Line 118
    and	$a1,$a1,$a5
    # Line 117
    lbu	$v1,-8($a3)
    # Line 118
    or	$a1,$a1,$a2
    sb	$a1,-7($a3)
    # Line 117
    and	$v1,$v1,$a5
    # Line 124
    lbu	$v0,-9($a3)
    # Line 117
    or	$v1,$v1,$a2
    sb	$v1,-8($a3)
    # Line 124
    and	$v0,$v0,$a5
    # Line 123
    lbu	$at,-10($a3)
    # Line 124
    or	$v0,$v0,$a2
    sb	$v0,-9($a3)
    # Line 123
    and	$at,$at,$a5
    # Line 122
    lbu	$a1,-11($a3)
    # Line 123
    or	$at,$at,$a2
    sb	$at,-10($a3)
    # Line 122
    and	$a1,$a1,$a5
    # Line 121
    lbu	$v1,-12($a3)
    # Line 122
    or	$a1,$a1,$a2
    sb	$a1,-11($a3)
    # Line 121
    and	$v1,$v1,$a5
    # Line 120
    lbu	$v0,-13($a3)
    # Line 121
    or	$v1,$v1,$a2
    sb	$v1,-12($a3)
    # Line 120
    and	$v0,$v0,$a5
    # Line 119
    lbu	$at,-14($a3)
    # Line 120
    or	$v0,$v0,$a2
    sb	$v0,-13($a3)
    # Line 119
    and	$at,$at,$a5
    # Line 118
    lbu	$a1,-15($a3)
    # Line 119
    or	$at,$at,$a2
    sb	$at,-14($a3)
    # Line 118
    and	$a1,$a1,$a5
    # Line 117
    lbu	$v1,-16($a3)
    # Line 118
    or	$a1,$a1,$a2
    sb	$a1,-15($a3)
    # Line 117
    and	$v1,$v1,$a5
    or	$v1,$v1,$a2
    # Line 116
    bne	$a4,$a0,.L0dadb200
    # Line 117
    sb	$v1,-16($a3)
    move	$a4,$a3
.L0dadb310:
    # Line 128
    beqz	$t8,.L0dadb3c8
    move	$a3,$t3
    ld	$v1,72($sp)
    sd	$v1,48($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0dadb354
    sd	$v1,40($sp)
.L0dadb32c:
    addiu	$a3,$a3,-1
    ld	$a1,40($sp)
    # Line 130
    addiu	$a4,$a4,1
    # Line 129
    lbu	$at,-1($a4)
    addi	$a1,$a1,-1
    sd	$a1,40($sp)
    and	$at,$at,$a5
    or	$at,$at,$a2
    bnez	$a1,.L0dadb32c
    sb	$at,-1($a4)
.L0dadb354:
    move	$a1,$a3
    ld	$v0,48($sp)
    sd	$a3,64($sp)
    move	$v1,$a4
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dadb3c8
    sd	$a4,56($sp)
    ld	$a4,64($sp)
    ld	$a3,56($sp)
.L0dadb378:
    lbu	$a1,3($a3)
    # Line 130
    addiu	$a3,$a3,4
    # Line 128
    addiu	$a4,$a4,-4
    # Line 129
    and	$a1,$a1,$a5
    lbu	$v1,-2($a3)
    or	$a1,$a1,$a2
    sb	$a1,-1($a3)
    and	$v1,$v1,$a5
    lbu	$v0,-3($a3)
    or	$v1,$v1,$a2
    sb	$v1,-2($a3)
    and	$v0,$v0,$a5
    lbu	$at,-4($a3)
    or	$v0,$v0,$a2
    sb	$v0,-3($a3)
    and	$at,$at,$a5
    or	$at,$at,$a2
    # Line 128
    bne	$a4,$a0,.L0dadb378
    # Line 129
    sb	$at,-4($a3)
    move	$a4,$a3
.L0dadb3c8:
    # Line 114
    addiu	$a6,$a6,1
    beq	$a6,$a7,.L0dadb1d4
    # Line 132
    addu	$a4,$t0,$a4
.L0dadb3d4:
    # Line 116
    beqz	$t2,.L0dadb310
    move	$a3,$t1
    move	$at,$t9
    andi	$at,$t9,0x1
    beqz	$at,.L0dadb1dc
    sd	$t9,32($sp)
    addiu	$a3,$a3,-1
    # Line 125
    addiu	$a4,$a4,8
    # Line 122
    lbu	$v1,-3($a4)
    # Line 121
    lbu	$v0,-4($a4)
    # Line 123
    lbu	$a1,-2($a4)
    # Line 124
    lbu	$at,-1($a4)
    # Line 121
    and	$v0,$v0,$a5
    # Line 123
    and	$a1,$a1,$a5
    # Line 124
    and	$at,$at,$a5
    # Line 122
    and	$v1,$v1,$a5
    or	$v1,$v1,$a2
    # Line 124
    or	$at,$at,$a2
    # Line 123
    or	$a1,$a1,$a2
    # Line 121
    or	$v0,$v0,$a2
    sb	$v0,-4($a4)
    # Line 117
    lbu	$v0,-8($a4)
    # Line 123
    sb	$a1,-2($a4)
    # Line 119
    lbu	$a1,-6($a4)
    # Line 124
    sb	$at,-1($a4)
    # Line 120
    lbu	$at,-5($a4)
    # Line 122
    sb	$v1,-3($a4)
    # Line 118
    lbu	$v1,-7($a4)
    # Line 120
    and	$at,$at,$a5
    # Line 119
    and	$a1,$a1,$a5
    # Line 118
    and	$v1,$v1,$a5
    # Line 117
    and	$v0,$v0,$a5
    or	$v0,$v0,$a2
    # Line 118
    or	$v1,$v1,$a2
    # Line 119
    or	$a1,$a1,$a2
    # Line 120
    or	$at,$at,$a2
    sb	$at,-5($a4)
    # Line 119
    sb	$a1,-6($a4)
    # Line 118
    sb	$v1,-7($a4)
    # Line 117
    sb	$v0,-8($a4)
    b	.L0dadb1dc
    nop
.L0dadb47c:
    # Line 85
    jr	$ra
    addiu	$sp,$sp,128
.end Clear

# Function: buildOpTable
# Declared: Line 139 (Source lines: 141-171)
# Address: 0x0dadb484 - 0x0dadb57c (Size: 248 bytes, Frame: 192)
.ent buildOpTable
buildOpTable:
    # Line 141
    addiu	$sp,$sp,-64
    # Line 146
    li	$t0,1
    move	$a6,$zero
    lw	$t2,3132($a0)
    nor	$t3,$a4,$zero
    li	$t8,1
    sllv	$t2,$t8,$t2
    beqz	$t2,.L0dadb538
    andi	$t3,$t3,0xff
    li	$a7,-1
    li	$t9,7680
    # Line 147
    bne	$t9,$a2,.L0dadb4f0
    # Line 146
    lbu	$t1,0($sp)
.L0dadb4b8:
    # Line 148
    andi	$t1,$a6,0xff
.L0dadb4bc:
    # Line 169
    and	$v0,$t3,$a6
.L0dadb4c0:
    and	$at,$a4,$t1
    or	$at,$at,$v0
    sb	$at,0($a1)
    # Line 146
    addiu	$a7,$a7,1
    lw	$t2,3132($a0)
    addiu	$t0,$t0,1
    addiu	$a6,$a6,1
    sllv	$t2,$t8,$t2
    sltu	$at,$a6,$t2
    beqz	$at,.L0dadb538
    # Line 169
    addiu	$a1,$a1,1
    # Line 147
    beq	$t9,$a2,.L0dadb4b8
.L0dadb4f0:
    li	$at,7682
    beqz	$a2,.L0dadb540
    li	$a5,5386
    li	$v1,7681
    beq	$v1,$a2,.L0dadb548
    nop
    beql	$a5,$a2,.L0dadb550
    # Line 151
    nor	$t1,$a6,$zero
    # Line 147
    beq	$at,$a2,.L0dadb558
    # Line 154
    addiu	$at,$t2,-1
    li	$t2,7683
    # Line 147
    bne	$t2,$a2,.L0dadb4c0
    # Line 169
    and	$v0,$t3,$a6
    # Line 162
    beqz	$a6,.L0dadb574
    # Line 163
    move	$t1,$zero
    # Line 165
    andi	$t1,$a7,0xff
    b	.L0dadb4c0
    # Line 169
    and	$v0,$t3,$a6
.L0dadb538:
    # Line 171
    jr	$ra
    addiu	$sp,$sp,64
.L0dadb540:
    # Line 149
    b	.L0dadb4bc
    move	$t1,$zero
.L0dadb548:
    # Line 150
    b	.L0dadb4bc
    move	$t1,$a3
.L0dadb550:
    # Line 151
    b	.L0dadb4bc
    andi	$t1,$t1,0xff
.L0dadb558:
    # Line 154
    bne	$at,$a6,.L0dadb568
    # Line 155
    andi	$t1,$a6,0xff
    b	.L0dadb4c0
    # Line 169
    and	$v0,$t3,$a6
.L0dadb568:
    # Line 157
    andi	$t1,$t0,0xff
    b	.L0dadb4c0
    # Line 169
    and	$v0,$t3,$a6
.L0dadb574:
    # Line 163
    b	.L0dadb4c0
    # Line 169
    and	$v0,$t3,$a6
.end buildOpTable

# Function: FreeStencilBuf
# Declared: Line 180 (Source lines: 181-194)
# Address: 0x0dadb57c - 0x0dadb60c (Size: 144 bytes, Frame: 48)
.ent FreeStencilBuf
FreeStencilBuf:
    # Line 181
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$ra,8($sp)
    sd	$s1,0($sp)
    # sd	gp,16(sp)
    lui	$at,0x12
    addiu	$at,$at,-15636
    # addu	gp,t9,at
    # Line 185
    lw	$t9,12($a1)
    # Line 181
    move	$s1,$a1
    # Line 185
    lw	$a1,72($a0)
    jalr	$t9
    move	$a0,$s1
    # Line 186
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,76($s0)
    # Line 187
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,80($s0)
    # Line 188
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,84($s0)
    # ld	gp,16(sp)
    # Line 193
    sw	$zero,84($s0)
    # Line 192
    sw	$zero,80($s0)
    # Line 191
    sw	$zero,76($s0)
    # Line 190
    sw	$zero,72($s0)
    # Line 194
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end FreeStencilBuf

# Function: __glValidateStencil
# Declared: Line 197 (Source lines: 198-255)
# Address: 0x0dadb60c - 0x0dadb898 (Size: 652 bytes, Frame: 224)
.globl __glValidateStencil
.ent __glValidateStencil
__glValidateStencil:
    # Line 214
    lw	$a3,1568($a0)
    # Line 198
    addiu	$sp,$sp,-96
    sd	$s3,24($sp)
    # Line 220
    li	$s3,1
    sd	$s0,40($sp)
    # Line 198
    move	$s0,$a0
    sd	$s1,48($sp)
    move	$s1,$a1
    # sd	gp,56(sp)
    sd	$s2,32($sp)
    # Line 220
    lw	$s2,72($a1)
    sd	$s6,16($sp)
    # Line 198
    lui	$s6,0x12
    addiu	$s6,$s6,-15780
    sd	$s5,8($sp)
    # Line 212
    lh	$s5,1574($a0)
    sd	$s4,0($sp)
    # Line 211
    lbu	$s4,1577($a0)
    # Line 198
    # addu	gp,t9,s6
    # Line 212
    andi	$s6,$s5,0xff
    # Line 213
    and	$s5,$s5,$s4
    # Line 220
    beqz	$s2,.L0dadb820
    # Line 213
    andi	$s5,$s5,0xff
.L0dadb668:
    # Line 232
    lw	$a0,3132($s0)
    sllv	$a0,$s3,$a0
    blez	$a0,.L0dadb6d4
    move	$v0,$zero
    addiu	$a4,$a3,-512
    b	.L0dadb6ac
    la	$a2,sub_0dbf0000
.L0dadb684:
    # Line 238
    and	$a2,$v0,$s4
    slt	$a2,$a2,$s5
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    sllv	$a0,$s3,$a0
.L0dadb69c:
    # Line 232
    addiu	$v0,$v0,1
    slt	$a5,$v0,$a0
    beqz	$a5,.L0dadb6d0
    la	$a2,sub_0dbf0000
.L0dadb6ac:
    sll	$a1,$a4,0x2
    sltiu	$a5,$a4,8
    lui	$a2,%hi(jtbl_0dbebcf8)
    beqz	$a5,.L0dadb69c
    addu	$a1,$a1,$a2
    lw	$a5,%lo(jtbl_0dbebcf8)($a1)
    # Line 240
    and	$a2,$v0,$s4
    # Line 232
    jr	$a5
    # Line 240
    slt	$a2,$s5,$a2
.L0dadb6d0:
    sd	$ra,72($sp)
.L0dadb6d4:
    # Line 249
    lw	$a2,1580($s0)
    lw	$a1,76($s1)
    move	$a0,$s0
    move	$a3,$s6
    ld	$s5,8($sp)
    ld	$s4,0($sp)
    # Line 248
    lbu	$s3,1579($s0)
    # Line 232
    la	$s2,sub_0dae0000
    sd	$ra,72($sp)
    # Line 249
    move	$a4,$s3
    # Line 232
    addiu	$s2,$s2,-19324
    # Line 249
    bal __glFreeSpecLUT
    move	$t9,$s2
    # Line 251
    move	$a0,$s0
    lw	$a2,1584($s0)
    lw	$a1,80($s1)
    move	$a3,$s6
    move	$a4,$s3
    bal __glFreeSpecLUT
    move	$t9,$s2
    # Line 253
    move	$a0,$s0
    lw	$a2,1588($s0)
    lw	$a1,84($s1)
    move	$a3,$s6
    move	$a4,$s3
    bal __glFreeSpecLUT
    move	$t9,$s2
    # ld	gp,56(sp)
    # Line 255
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,32($sp)
    ld	$ra,72($sp)
    ld	$s3,24($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dadb764:
    # Line 234
    sb	$zero,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb778:
    # Line 235
    and	$a2,$v0,$s4
    slt	$a2,$s5,$a2
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb794:
    # Line 236
    and	$a2,$v0,$s4
    xor	$a2,$a2,$s5
    sltiu	$a2,$a2,1
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb7b4:
    # Line 237
    and	$a2,$v0,$s4
    slt	$a2,$a2,$s5
    xori	$a2,$a2,0x1
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb7d4:
    # Line 239
    and	$a2,$v0,$s4
    xor	$a2,$a2,$s5
    sltu	$a2,$zero,$a2
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb7f4:
    # Line 240
    xori	$a2,$a2,0x1
    sb	$a2,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb80c:
    # Line 241
    sb	$s3,0($s2)
    lw	$a0,3132($s0)
    addiu	$s2,$s2,1
    b	.L0dadb69c
    sllv	$a0,$s3,$a0
.L0dadb820:
    sd	$a3,64($sp)
    # Line 222
    move	$a0,$s0
    lw	$t9,0($s0)
    lw	$a1,3132($s0)
    sd	$ra,72($sp)
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,72($s1)
    move	$s2,$v0
    # Line 224
    lw	$t9,0($s0)
    lw	$a1,3132($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,76($s1)
    # Line 226
    lw	$t9,0($s0)
    lw	$a1,3132($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,80($s1)
    # Line 228
    lw	$t9,0($s0)
    lw	$a1,3132($s0)
    move	$a0,$s0
    jalr	$t9
    sllv	$a1,$s3,$a1
    sw	$v0,84($s1)
    ld	$a3,64($sp)
    b	.L0dadb668
    ld	$ra,72($sp)
.end __glValidateStencil

# Function: Pick
# Declared: Line 262 (Source lines: 263-268)
# Address: 0x0dadb898 - 0x0dadb8d8 (Size: 64 bytes, Frame: 32)
.ent Pick
Pick:
    # Line 263
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lw	$at,11760($a0)
    lui	$v0,0x12
    addiu	$v0,$v0,-16432
    andi	$at,$at,0x6
    beqz	$at,.L0dadb8cc
    nop
    # Line 266
    # lw $t9, -27260($gp) # &__glValidateStencil
    sd	$ra,8($sp)
    bal __glValidateStencil
    nop
    ld	$ra,8($sp)
.L0dadb8cc:
    # ld	gp,0(sp)
    # Line 268
    jr	$ra
    addiu	$sp,$sp,32
.end Pick

# Function: __glInitStencil8
# Declared: Line 270 (Source lines: 271-285)
# Address: 0x0dadb8d8 - 0x0dadb988 (Size: 176 bytes, Frame: 48)
.globl __glInitStencil8
.ent __glInitStencil8
__glInitStencil8:
    # Line 271
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x12
    addiu	$at,$at,-16496
    # addu	gp,t9,at
    # Line 272
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 271
    move	$s8,$a0
    # Line 281
    la	$at,sub_0dae0000
    addiu	$at,$at,-20772
    # Line 274
    li	$a1,1
    sw	$a1,24($s8)
    # Line 279
    la	$a1,sub_0dae0000
    # Line 280
    la	$ra,sub_0dae0000
    # Line 282
    la	$v0,sub_0dae0000
    # Line 283
    la	$v1,sub_0dae0000
    # Line 284
    la	$a0,sub_0dae0000
    # Line 282
    addiu	$v0,$v0,-20704
    # Line 283
    addiu	$v1,$v1,-20636
    # Line 284
    addiu	$a0,$a0,-20568
    sw	$a0,116($s8)
    # Line 278
    la	$a0,sub_0dae0000
    # Line 283
    sw	$v1,112($s8)
    # Line 277
    la	$v1,sub_0dae0000
    # Line 282
    sw	$v0,108($s8)
    # Line 275
    la	$v0,sub_0dae0000
    # ld	gp,16(sp)
    # Line 281
    sw	$at,104($s8)
    # Line 279
    addiu	$a1,$a1,-20972
    sw	$a1,96($s8)
    # Line 280
    addiu	$ra,$ra,-20844
    sw	$ra,100($s8)
    # Line 285
    ld	$ra,0($sp)
    # Line 275
    addiu	$v0,$v0,-19076
    # Line 277
    addiu	$v1,$v1,-18280
    # Line 278
    addiu	$a0,$a0,-20920
    sw	$a0,92($s8)
    # Line 277
    sw	$v1,88($s8)
    # Line 275
    sw	$v0,64($s8)
    # Line 285
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitStencil8

.late_rodata
jtbl_0dbebcf8:
    .word .L0dadb764
    .word .L0dadb778
    .word .L0dadb794
    .word .L0dadb7b4
    .word .L0dadb684
    .word .L0dadb7d4
    .word .L0dadb7f4
    .word .L0dadb80c

