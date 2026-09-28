# Source: ../pixel/px_colormatrix.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_colormatrix.c
# Total Functions: 5

.text

# Function: __glGenMatrixSignature
# Declared: Line 45 (Source lines: 46-90)
# Address: 0x0da91850 - 0x0da9194c (Size: 252 bytes, Frame: 32)
.globl __glGenMatrixSignature
.ent __glGenMatrixSignature
__glGenMatrixSignature:
    # Line 58
    lui	$t1,0x3f80
    li	$t9,1
    li	$t8,-1
    move	$a7,$a0
    # Line 54
    sb	$zero,30648($a0)
    # Line 53
    sw	$zero,30640($a0)
    # Line 56
    li	$v0,2
    sw	$v0,__glBeginMode
    # Line 58
    move	$t3,$zero
    # Line 56
    lw	$at,11764($a0)
    # Line 46
    addiu	$sp,$sp,-32
    # Line 58
    addiu	$t0,$sp,0
    # Line 56
    ori	$at,$at,0x10
    sw	$at,11764($a0)
.L0da91888:
    # Line 60
    sb	$t9,0($t0)
    # Line 59
    sb	$t8,30644($a7)
    # Line 61
    move	$t2,$zero
    # Line 62
    move	$a5,$zero
    move	$a3,$a1
    # Line 58
    addiu	$v0,$a0,4
    # Line 62
    move	$a4,$t3
.L0da918a4:
    lw	$a6,0($a3)
    li	$at,4
    beqz	$a6,.L0da918dc
    addiu	$a3,$a3,16
    bnel	$t1,$a6,.L0da91928
    # Line 82
    sw	$t8,30640($a0)
    # Line 62
    beqzl	$t2,.L0da91934
    # Line 69
    li	$t2,1
    # Line 77
    sb	$t8,30644($a7)
    # Line 76
    sb	$zero,0($t0)
.L0da918cc:
    # Line 79
    sllv	$a2,$t9,$a4
    lw	$v1,30640($a0)
    or	$v1,$v1,$a2
    sw	$v1,30640($a0)
.L0da918dc:
    # Line 62
    addiu	$a5,$a5,1
    bne	$a5,$at,.L0da918a4
    addiu	$a4,$a4,4
    # Line 58
    addiu	$t3,$t3,1
    addiu	$a1,$a1,4
    addiu	$a7,$a7,1
    bne	$v0,$a7,.L0da91888
    addiu	$t0,$t0,1
    lbu	$v1,0($sp)
    beqz	$v1,.L0da9193c
    lbu	$a2,1($sp)
    beqz	$a2,.L0da9193c
    # Line 88
    lbu	$at,2($sp)
    beqz	$at,.L0da9193c
    lbu	$v0,3($sp)
    beqz	$v0,.L0da91940
    move	$a1,$zero
    b	.L0da91940
    li	$a1,1
.L0da91928:
    # Line 81
    sb	$zero,30648($a0)
    # Line 83
    jr	$ra
    addiu	$sp,$sp,32
.L0da91934:
    # Line 69
    b	.L0da918cc
    # Line 68
    sb	$a5,30644($a7)
.L0da9193c:
    # Line 88
    move	$a1,$zero
.L0da91940:
    sb	$a1,30648($a0)
    # Line 90
    jr	$ra
    addiu	$sp,$sp,32
.end __glGenMatrixSignature

# Function: __glSpanColorMatrixSwizzleRGBA
# Declared: Line 93 (Source lines: 95-117)
# Address: 0x0da9194c - 0x0da91ac8 (Size: 380 bytes, Frame: 48)
.globl __glSpanColorMatrixSwizzleRGBA
.ent __glSpanColorMatrixSwizzleRGBA
__glSpanColorMatrixSwizzleRGBA:
    # Line 95
    addiu	$sp,$sp,-48
    move	$t1,$a2
    # Line 107
    lb	$t8,30646($a0)
    # Line 106
    lb	$t2,30645($a0)
    # Line 105
    lb	$t9,30644($a0)
    # Line 110
    sll	$a4,$t8,0x2
    # Line 108
    lb	$t3,30647($a0)
    # Line 110
    lw	$a5,184($a1)
    sll	$a1,$t9,0x2
    sll	$a6,$t2,0x2
    sll	$a2,$t3,0x2
    addiu	$a5,$a5,-1
    slti	$at,$a5,0
    bnez	$at,.L0da91ac0
    addu	$a2,$a2,$t1
    addu	$a1,$a1,$t1
    addu	$a4,$a4,$t1
    addu	$a6,$a6,$t1
    addiu	$t0,$a5,1
    sd	$t0,0($sp)
    andi	$t0,$t0,0x3
    beqz	$t0,.L0da919e8
    li	$a7,-1
.L0da919a8:
    # Line 111
    lwc1	$f3,0($a1)
    swc1	$f3,0($a3)
    # Line 112
    lwc1	$f2,0($a6)
    # Line 110
    addiu	$a5,$a5,-1
    # Line 115
    addiu	$a1,$a1,16
    # Line 112
    swc1	$f2,4($a3)
    # Line 115
    addiu	$a6,$a6,16
    # Line 113
    lwc1	$f1,0($a4)
    # Line 115
    addiu	$a4,$a4,16
    addiu	$a2,$a2,16
    # Line 113
    swc1	$f1,8($a3)
    # Line 114
    addiu	$a3,$a3,16
    lwc1	$f0,-16($a2)
    addi	$t0,$t0,-1
    bnez	$t0,.L0da919a8
    swc1	$f0,-4($a3)
.L0da919e8:
    move	$t8,$a5
    move	$t1,$a6
    move	$t9,$a1
    move	$t3,$a3
    move	$t2,$a2
    move	$t0,$a4
    move	$a2,$t0
    ld	$at,0($sp)
    move	$a1,$t3
    sra	$at,$at,0x2
    beqz	$at,.L0da91ac0
    move	$a4,$t2
    move	$a6,$t9
    move	$a5,$t1
    move	$a3,$t8
.L0da91a24:
    # Line 111
    lwc1	$f3,0($a6)
    swc1	$f3,0($a1)
    # Line 112
    lwc1	$f2,0($a5)
    swc1	$f2,4($a1)
    # Line 113
    lwc1	$f1,0($a2)
    swc1	$f1,8($a1)
    # Line 114
    lwc1	$f0,0($a4)
    swc1	$f0,12($a1)
    # Line 111
    lwc1	$f3,16($a6)
    swc1	$f3,16($a1)
    # Line 112
    lwc1	$f2,16($a5)
    swc1	$f2,20($a1)
    # Line 113
    lwc1	$f1,16($a2)
    swc1	$f1,24($a1)
    # Line 114
    lwc1	$f0,16($a4)
    swc1	$f0,28($a1)
    # Line 111
    lwc1	$f3,32($a6)
    swc1	$f3,32($a1)
    # Line 112
    lwc1	$f2,32($a5)
    swc1	$f2,36($a1)
    # Line 113
    lwc1	$f1,32($a2)
    swc1	$f1,40($a1)
    # Line 114
    lwc1	$f0,32($a4)
    swc1	$f0,44($a1)
    # Line 111
    lwc1	$f3,48($a6)
    swc1	$f3,48($a1)
    # Line 112
    lwc1	$f2,48($a5)
    # Line 115
    addiu	$a6,$a6,64
    # Line 112
    swc1	$f2,52($a1)
    # Line 115
    addiu	$a5,$a5,64
    # Line 113
    lwc1	$f1,48($a2)
    # Line 115
    addiu	$a2,$a2,64
    addiu	$a4,$a4,64
    # Line 113
    swc1	$f1,56($a1)
    # Line 114
    addiu	$a1,$a1,64
    lwc1	$f0,-16($a4)
    # Line 110
    addiu	$a3,$a3,-4
    bne	$a3,$a7,.L0da91a24
    # Line 114
    swc1	$f0,-4($a1)
.L0da91ac0:
    # Line 117
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanColorMatrixSwizzleRGBA

# Function: __glSpanColorMatrixSwizzWithDropRGBA
# Declared: Line 119 (Source lines: 122-148)
# Address: 0x0da91ac8 - 0x0da91cd0 (Size: 520 bytes, Frame: 48)
.globl __glSpanColorMatrixSwizzWithDropRGBA
.ent __glSpanColorMatrixSwizzWithDropRGBA
__glSpanColorMatrixSwizzWithDropRGBA:
    # Line 122
    addiu	$sp,$sp,-48
    # Line 135
    lb	$t1,30647($a0)
    # Line 134
    lb	$t0,30646($a0)
    # Line 132
    lb	$a7,30644($a0)
    # Line 133
    lb	$t2,30645($a0)
    # Line 122
    lui	$v1,0x16
    addiu	$v1,$v1,23968
    # addu	at,t9,v1
    # Line 137
    sll	$t3,$t2,0x2
    lw	$a6,184($a1)
    mtc1	$zero,$f4
    sll	$t8,$a7,0x2
    addiu	$a6,$a6,-1
    slti	$v0,$a6,0
    bnez	$v0,.L0da91b88
    sll	$a5,$t0,0x2
    li	$t9,-1
    addiu	$a0,$a6,1
    sd	$a0,0($sp)
    andi	$a0,$a0,0x1
    beqz	$a0,.L0da91b78
    sll	$a4,$t1,0x2
    # Line 142
    addu	$v1,$a5,$a2
    # Line 137
    bltz	$a7,.L0da91ca0
    # Line 144
    addu	$a0,$a4,$a2
    # Line 138
    addu	$a1,$t8,$a2
    lwc1	$f0,0($a1)
    addiu	$a3,$a3,4
    # Line 139
    bltz	$t2,.L0da91cac
    # Line 138
    swc1	$f0,-4($a3)
.L0da91b40:
    # Line 140
    addu	$v0,$t3,$a2
    lwc1	$f1,0($v0)
    addiu	$a3,$a3,4
    # Line 141
    bltz	$t0,.L0da91cb8
    # Line 140
    swc1	$f1,-4($a3)
.L0da91b54:
    # Line 142
    lwc1	$f2,0($v1)
    addiu	$a3,$a3,4
    # Line 143
    bltz	$t1,.L0da91cc4
    # Line 142
    swc1	$f2,-4($a3)
.L0da91b64:
    # Line 144
    lwc1	$f3,0($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da91b70:
    # Line 137
    addiu	$a6,$a6,-1
    # Line 146
    addiu	$a2,$a2,16
.L0da91b78:
    ld	$a1,0($sp)
    sra	$a1,$a1,0x1
    bnez	$a1,.L0da91bd0
    # Line 142
    addu	$a1,$a5,$a2
.L0da91b88:
    # Line 148
    jr	$ra
    addiu	$sp,$sp,48
.L0da91b90:
    # Line 139
    swc1	$f4,0($a3)
    bgez	$t2,.L0da91c3c
    addiu	$a3,$a3,4
.L0da91b9c:
    # Line 141
    swc1	$f4,0($a3)
    bgez	$t0,.L0da91c50
    addiu	$a3,$a3,4
.L0da91ba8:
    # Line 143
    swc1	$f4,0($a3)
    bltz	$t1,.L0da91c64
    addiu	$a3,$a3,4
.L0da91bb4:
    # Line 144
    addu	$v0,$a4,$a2
    lwc1	$f0,0($v0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da91bc4:
    # Line 137
    beq	$a6,$t9,.L0da91b88
    # Line 146
    addiu	$a2,$a2,16
    # Line 142
    addu	$a1,$a5,$a2
.L0da91bd0:
    # Line 137
    bltz	$a7,.L0da91c70
    # Line 144
    addu	$v0,$a4,$a2
    # Line 138
    addu	$v1,$t8,$a2
    lwc1	$f1,0($v1)
    addiu	$a3,$a3,4
    # Line 139
    bltz	$t2,.L0da91c7c
    # Line 138
    swc1	$f1,-4($a3)
.L0da91bec:
    # Line 140
    addu	$a0,$t3,$a2
    lwc1	$f2,0($a0)
    addiu	$a3,$a3,4
    # Line 141
    bltz	$t0,.L0da91c88
    # Line 140
    swc1	$f2,-4($a3)
.L0da91c00:
    # Line 142
    lwc1	$f3,0($a1)
    addiu	$a3,$a3,4
    # Line 143
    bltz	$t1,.L0da91c94
    # Line 142
    swc1	$f3,-4($a3)
.L0da91c10:
    # Line 144
    lwc1	$f0,0($v0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da91c1c:
    # Line 137
    addiu	$a6,$a6,-2
    bltz	$a7,.L0da91b90
    # Line 146
    addiu	$a2,$a2,16
    # Line 138
    addu	$v1,$t8,$a2
    lwc1	$f1,0($v1)
    addiu	$a3,$a3,4
    # Line 139
    bltz	$t2,.L0da91b9c
    # Line 138
    swc1	$f1,-4($a3)
.L0da91c3c:
    # Line 140
    addu	$a0,$t3,$a2
    lwc1	$f2,0($a0)
    addiu	$a3,$a3,4
    # Line 141
    bltz	$t0,.L0da91ba8
    # Line 140
    swc1	$f2,-4($a3)
.L0da91c50:
    # Line 142
    addu	$a1,$a5,$a2
    lwc1	$f3,0($a1)
    addiu	$a3,$a3,4
    # Line 143
    bgez	$t1,.L0da91bb4
    # Line 142
    swc1	$f3,-4($a3)
.L0da91c64:
    # Line 145
    swc1	$f4,0($a3)
    b	.L0da91bc4
    addiu	$a3,$a3,4
.L0da91c70:
    # Line 139
    swc1	$f4,0($a3)
    bgez	$t2,.L0da91bec
    addiu	$a3,$a3,4
.L0da91c7c:
    # Line 141
    swc1	$f4,0($a3)
    bgez	$t0,.L0da91c00
    addiu	$a3,$a3,4
.L0da91c88:
    # Line 143
    swc1	$f4,0($a3)
    bgez	$t1,.L0da91c10
    addiu	$a3,$a3,4
.L0da91c94:
    # Line 145
    swc1	$f4,0($a3)
    b	.L0da91c1c
    addiu	$a3,$a3,4
.L0da91ca0:
    # Line 139
    swc1	$f4,0($a3)
    bgez	$t2,.L0da91b40
    addiu	$a3,$a3,4
.L0da91cac:
    # Line 141
    swc1	$f4,0($a3)
    bgez	$t0,.L0da91b54
    addiu	$a3,$a3,4
.L0da91cb8:
    # Line 143
    swc1	$f4,0($a3)
    bgez	$t1,.L0da91b64
    addiu	$a3,$a3,4
.L0da91cc4:
    # Line 145
    swc1	$f4,0($a3)
    b	.L0da91b70
    addiu	$a3,$a3,4
.end __glSpanColorMatrixSwizzWithDropRGBA

# Function: __glSpanColorMatrixGeneralRGBA
# Declared: Line 151 (Source lines: 153-192)
# Address: 0x0da91cd0 - 0x0da91ddc (Size: 268 bytes, Frame: 48)
.globl __glSpanColorMatrixGeneralRGBA
.ent __glSpanColorMatrixGeneralRGBA
__glSpanColorMatrixGeneralRGBA:
    # Line 165
    lw	$v0,29692($a0)
    # Line 153
    addiu	$sp,$sp,-48
    # Line 182
    lwc1	$f27,60($v0)
    # Line 181
    lwc1	$f13,56($v0)
    # Line 180
    lwc1	$f16,52($v0)
    # Line 179
    lwc1	$f15,48($v0)
    # Line 178
    lwc1	$f11,44($v0)
    # Line 177
    lwc1	$f18,40($v0)
    # Line 176
    lwc1	$f19,36($v0)
    # Line 175
    lwc1	$f23,32($v0)
    # Line 174
    lwc1	$f25,28($v0)
    # Line 173
    lwc1	$f17,24($v0)
    # Line 172
    lwc1	$f14,20($v0)
    # Line 171
    lwc1	$f21,16($v0)
    # Line 170
    lwc1	$f29,12($v0)
    # Line 184
    lw	$a5,184($a1)
    # Line 169
    lwc1	$f12,8($v0)
    # Line 168
    lwc1	$f31,4($v0)
    # Line 184
    addiu	$a5,$a5,-1
    slti	$at,$a5,0
    bnez	$at,.L0da91dd4
    # Line 167
    lwc1	$f4,0($v0)
    # Line 184
    li	$a1,-1
    sdc1	$f4,0($sp)
.L0da91d30:
    # Line 185
    lwc1	$f7,8($a2)
    # Line 190
    mul.s	$f9,$f11,$f7
    # Line 185
    lwc1	$f4,12($a2)
    # Line 187
    mul.s	$f5,$f15,$f4
    # Line 185
    lwc1	$f6,4($a2)
    # Line 190
    mul.s	$f8,$f25,$f6
    # Line 185
    lwc1	$f1,0($a2)
    # Line 190
    mul.s	$f0,$f29,$f1
    # Line 187
    ldc1	$f3,0($sp)
    mul.s	$f2,$f21,$f6
    mul.s	$f3,$f3,$f1
    mul.s	$f10,$f23,$f7
    # Line 190
    add.s	$f0,$f0,$f8
    # Line 188
    mul.s	$f8,$f14,$f6
    # Line 187
    add.s	$f3,$f3,$f2
    # Line 189
    mul.s	$f6,$f17,$f6
    # Line 187
    add.s	$f3,$f3,$f10
    # Line 188
    mul.s	$f2,$f31,$f1
    # Line 190
    add.s	$f0,$f0,$f9
    # Line 189
    mul.s	$f1,$f12,$f1
    # Line 187
    add.s	$f3,$f3,$f5
    # Line 188
    mul.s	$f5,$f19,$f7
    add.s	$f2,$f2,$f8
    # Line 189
    mul.s	$f7,$f18,$f7
    add.s	$f1,$f1,$f6
    # Line 188
    mul.s	$f6,$f16,$f4
    add.s	$f2,$f2,$f5
    # Line 189
    mul.s	$f5,$f13,$f4
    add.s	$f1,$f1,$f7
    # Line 190
    mul.s	$f4,$f27,$f4
    # Line 188
    add.s	$f2,$f2,$f6
    # Line 190
    addiu	$a3,$a3,16
    # Line 185
    addiu	$a2,$a2,16
    # Line 189
    add.s	$f1,$f1,$f5
    # Line 184
    addiu	$a5,$a5,-1
    # Line 187
    swc1	$f3,-16($a3)
    # Line 190
    add.s	$f0,$f0,$f4
    # Line 188
    swc1	$f2,-12($a3)
    # Line 189
    swc1	$f1,-8($a3)
    # Line 184
    bne	$a5,$a1,.L0da91d30
    # Line 190
    swc1	$f0,-4($a3)
.L0da91dd4:
    # Line 192
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanColorMatrixGeneralRGBA

# Function: __glSpanPostColorMatrixScaleBiasRGBA
# Declared: Line 194 (Source lines: 203-230)
# Address: 0x0da91ddc - 0x0da91fc4 (Size: 488 bytes, Frame: 0)
.globl __glSpanPostColorMatrixScaleBiasRGBA
.ent __glSpanPostColorMatrixScaleBiasRGBA
__glSpanPostColorMatrixScaleBiasRGBA:
    # Line 211
    lwc1	$f5,700($a0)
    # Line 210
    lwc1	$f11,696($a0)
    # Line 219
    lwc1	$f6,30764($a0)
    lwc1	$f4,712($a0)
    # Line 209
    lwc1	$f10,692($a0)
    # Line 224
    move	$a6,$zero
    # Line 219
    mul.s	$f4,$f4,$f6
    # Line 221
    lwc1	$f8,30796($a0)
    lwc1	$f7,716($a0)
    # Line 215
    lwc1	$f0,30756($a0)
    # Line 217
    lwc1	$f9,30760($a0)
    # Line 221
    mul.s	$f7,$f7,$f8
    # Line 217
    lwc1	$f8,708($a0)
    # Line 203
    lw	$a5,184($a1)
    # Line 208
    lwc1	$f6,688($a0)
    # Line 217
    mul.s	$f8,$f8,$f9
    # Line 215
    lwc1	$f9,704($a0)
    # Line 224
    move	$a4,$a5
    blez	$a5,.L0da91fbc
    # Line 215
    mul.s	$f9,$f9,$f0
    andi	$a1,$a5,0x3
    beqz	$a1,.L0da91e90
    move	$a7,$a3
.L0da91e38:
    # Line 225
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a3)
    # Line 226
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a3)
    # Line 227
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    # Line 228
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    # Line 224
    addiu	$a6,$a6,1
    # Line 228
    addiu	$a3,$a3,16
    add.s	$f0,$f0,$f7
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0da91e38
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da91e90:
    sra	$at,$a4,0x2
    move	$t1,$a6
    beqz	$at,.L0da91fbc
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da91eac:
    # Line 225
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a2)
    # Line 226
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a2)
    # Line 227
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a2)
    # Line 228
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,12($a2)
    # Line 225
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,16($a2)
    # Line 226
    lwc1	$f2,20($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,20($a2)
    # Line 227
    lwc1	$f1,24($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,24($a2)
    # Line 228
    lwc1	$f0,28($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,28($a2)
    # Line 225
    lwc1	$f3,32($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,32($a2)
    # Line 226
    lwc1	$f2,36($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,36($a2)
    # Line 227
    lwc1	$f1,40($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,40($a2)
    # Line 228
    lwc1	$f0,44($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,44($a2)
    # Line 225
    lwc1	$f3,48($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,48($a2)
    # Line 226
    lwc1	$f2,52($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,52($a2)
    # Line 227
    lwc1	$f1,56($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,56($a2)
    # Line 228
    lwc1	$f0,60($a3)
    mul.s	$f0,$f0,$f5
    addiu	$a2,$a2,64
    add.s	$f0,$f0,$f7
    addiu	$a3,$a3,64
    # Line 224
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0da91eac
    # Line 228
    swc1	$f0,-4($a2)
.L0da91fbc:
    # Line 230
    jr	$ra
    nop
.end __glSpanPostColorMatrixScaleBiasRGBA

