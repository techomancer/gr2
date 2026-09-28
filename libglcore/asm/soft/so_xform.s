# Source: ../soft/so_xform.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_xform.c
# Total Functions: 55

.text

# Function: __glPickMatrixType
# Declared: Line 32 (Source lines: 34-78)
# Address: 0x0db0bfa0 - 0x0db0c0a4 (Size: 260 bytes, Frame: 0)
.globl __glPickMatrixType
.ent __glPickMatrixType
__glPickMatrixType:
    # Line 34
    lw	$a5,64($a1)
    li	$v0,2
    li	$a7,3
    beqz	$a5,.L0db0c060
    move	$a4,$a5
    li	$at,1
    beql	$a4,$at,.L0db0c000
    # Line 39
    lw	$a4,64($a2)
    # Line 34
    beql	$a4,$v0,.L0db0c010
    # Line 46
    lw	$a4,64($a2)
    # Line 34
    beq	$a7,$a4,.L0db0c024
    li	$a6,4
    beq	$a6,$a4,.L0db0c03c
    li	$a5,5
    beql	$a5,$a4,.L0db0bfe8
    # Line 67
    lw	$a4,64($a2)
    # Line 78
    jr	$ra
    nop
.L0db0bfe8:
    # Line 67
    beq	$a6,$a4,.L0db0c08c
    # Line 70
    sltiu	$v1,$a4,3
    beqz	$v1,.L0db0c050
    nop
    # Line 78
    jr	$ra
    # Line 72
    sw	$a4,64($a0)
.L0db0c000:
    # Line 39
    beqz	$a4,.L0db0c084
    nop
    # Line 78
    jr	$ra
    # Line 42
    sw	$a5,64($a0)
.L0db0c010:
    # Line 46
    sltiu	$a3,$a4,2
    beqz	$a3,.L0db0c058
    nop
    # Line 78
    jr	$ra
    # Line 47
    sw	$a4,64($a0)
.L0db0c024:
    # Line 53
    lw	$a4,64($a2)
    sltiu	$at,$a4,3
    beqz	$at,.L0db0c068
    nop
    # Line 78
    jr	$ra
    # Line 54
    sw	$a4,64($a0)
.L0db0c03c:
    # Line 60
    lw	$a4,64($a2)
    beql	$a5,$a4,.L0db0c070
    # Line 61
    lh	$v1,68($a2)
.L0db0c048:
    # Line 78
    jr	$ra
    # Line 64
    sw	$a4,64($a0)
.L0db0c050:
    # Line 78
    jr	$ra
    # Line 74
    sw	$a7,64($a0)
.L0db0c058:
    # Line 78
    jr	$ra
    # Line 49
    sw	$a5,64($a0)
.L0db0c060:
    # Line 78
    jr	$ra
    # Line 36
    sw	$a5,64($a0)
.L0db0c068:
    # Line 78
    jr	$ra
    # Line 56
    sw	$a5,64($a0)
.L0db0c070:
    # Line 61
    sh	$v1,68($a0)
    # Line 62
    lh	$v0,70($a2)
    sh	$v0,70($a0)
    b	.L0db0c048
    lw	$a4,64($a2)
.L0db0c084:
    # Line 78
    jr	$ra
    # Line 40
    sw	$a4,64($a0)
.L0db0c08c:
    # Line 68
    sw	$a5,64($a0)
    # Line 69
    lh	$at,68($a1)
    sh	$at,68($a0)
    # Line 70
    lh	$a3,70($a1)
    # Line 78
    jr	$ra
    # Line 70
    sh	$a3,70($a0)
.end __glPickMatrixType

# Function: __glMultiplyMatrix
# Declared: Line 84 (Source lines: 85-91)
# Address: 0x0db0c0a4 - 0x0db0c108 (Size: 100 bytes, Frame: 192)
.globl __glMultiplyMatrix
.ent __glMultiplyMatrix
__glMultiplyMatrix:
    # Line 85
    move	$at,$a2
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    # Line 89
    move	$a2,$a1
    sd	$s8,8($sp)
    # Line 85
    move	$s8,$a1
    # sd	gp,16(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-18492
    # addu	gp,t9,v0
    # Line 89
    lw	$t9,11892($a0)
    move	$a1,$at
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$s8
    # Line 90
    # lw $t9, -26092($gp) # &__glPickMatrixType
    move	$a0,$s8
    ld	$a1,24($sp)
    bal __glPickMatrixType
    move	$a2,$s8
    # Line 91
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMultiplyMatrix

# Function: SetDepthRange
# Declared: Line 93 (Source lines: 96-110)
# Address: 0x0db0c108 - 0x0db0c1ac (Size: 164 bytes, Frame: 0)
.ent SetDepthRange
SetDepthRange:
    # Line 96
    dmtc1	$zero,$f5
    c.lt.d	$f13,$f5
    lwc1	$f4,3284($a0)
    bc1f	.L0db0c120
    cvt.d.s	$f4,$f4
    # Line 99
    mov.d	$f13,$f5
.L0db0c120:
    c.lt.d	$f4,$f13
    nop
    bc1fl	.L0db0c138
    # Line 100
    c.lt.d	$f14,$f5
    mov.d	$f13,$f4
    c.lt.d	$f14,$f5
.L0db0c138:
    nop
    bc1fl	.L0db0c14c
    # Line 101
    c.lt.d	$f4,$f14
    mov.d	$f14,$f5
    c.lt.d	$f4,$f14
.L0db0c14c:
    nop
    bc1fl	.L0db0c160
    # Line 107
    lw	$at,31308($a0)
    # Line 102
    mov.d	$f14,$f4
    # Line 107
    lw	$at,31308($a0)
.L0db0c160:
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3280($a0)
    mul.s	$f2,$f2,$f3
    # Line 109
    add.d	$f1,$f13,$f14
    # Line 107
    cvt.d.s	$f2,$f2
    # Line 108
    sub.d	$f0,$f14,$f13
    # Line 109
    mul.d	$f1,$f1,$f2
    # Line 108
    mul.d	$f0,$f0,$f2
    # Line 109
    cvt.s.d	$f1,$f1
    # Line 104
    sdc1	$f14,1616($a0)
    # Line 108
    cvt.s.d	$f0,$f0
    # Line 103
    sdc1	$f13,1608($a0)
    # Line 109
    swc1	$f1,1644($a0)
    # Line 110
    jr	$ra
    # Line 108
    swc1	$f0,1640($a0)
.end SetDepthRange

# Function: __glUpdateDepthRange
# Declared: Line 112 (Source lines: 113-117)
# Address: 0x0db0c1ac - 0x0db0c1e8 (Size: 60 bytes, Frame: 32)
.globl __glUpdateDepthRange
.ent __glUpdateDepthRange
__glUpdateDepthRange:
    # Line 113
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    sd	$ra,0($sp)
    lui	$ra,0xf
    addiu	$ra,$ra,-18756
    # addu	gp,t9,ra
    # Line 116
    # lw $t9, -32700($gp) # &sub_0db10000
    ldc1	$f14,1616($a0)
    addiu	$t9,$t9,-16120
    bal __glMultiplyMatrix
    ldc1	$f13,1608($a0)
    # Line 117
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glUpdateDepthRange

# Function: __glEarlyInitTransformState
# Declared: Line 119 (Source lines: 120-127)
# Address: 0x0db0c1e8 - 0x0db0c230 (Size: 72 bytes, Frame: 48)
.globl __glEarlyInitTransformState
.ent __glEarlyInitTransformState
__glEarlyInitTransformState:
    # Line 125
    li	$a2,16
    lw	$a1,3332($a0)
    # Line 120
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xf
    addiu	$at,$at,-18816
    # addu	gp,t9,at
    # Line 125
    lw	$t9,4($a0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 120
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 127
    ld	$ra,0($sp)
    # Line 125
    sw	$v0,1652($s8)
    # Line 127
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glEarlyInitTransformState

# Function: __glInitTransformState
# Declared: Line 129 (Source lines: 130-198)
# Address: 0x0db0c230 - 0x0db0c4a4 (Size: 628 bytes, Frame: 208)
.globl __glInitTransformState
.ent __glInitTransformState
__glInitTransformState:
    # Line 144
    li	$a2,272
    lw	$a1,3492($a0)
    # Line 130
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    sd	$ra,16($sp)
    # sd	gp,0(sp)
    lui	$at,0xf
    addiu	$at,$at,-18888
    # addu	gp,t9,at
    # Line 144
    lw	$t9,4($a0)
    sd	$s0,8($sp)
    # Line 130
    move	$s0,$a0
    # Line 144
    jalr	$t9
    # Line 136
    lw	$s3,3332($s0)
    # Line 147
    li	$a2,272
    lw	$t9,4($s0)
    lw	$a1,3496($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 144
    sw	$v0,29660($s0)
    # Line 150
    li	$a2,272
    lw	$t9,4($s0)
    lw	$a1,3500($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 147
    sw	$v0,29668($s0)
    # Line 153
    li	$a2,272
    lw	$t9,4($s0)
    lw	$a1,3504($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 150
    sw	$v0,29680($s0)
    # Line 162
    li	$a2,192
    move	$a0,$s0
    lw	$t9,4($s0)
    # Line 153
    sw	$v0,29688($s0)
    # Line 162
    addu	$a1,$s3,$s3
    jalr	$t9
    addiu	$a1,$a1,12
    sd	$s1,40($sp)
    # Line 167
    dmtc1	$zero,$f13
    move	$a0,$s0
    # Line 162
    sw	$v0,29696($s0)
    # Line 166
    li	$ra,5888
    # Line 167
    # lw $t9, -32700($gp) # &sub_0db10000
    # Line 166
    sw	$ra,1648($s0)
    # Line 167
    lwc1	$f14,3284($s0)
    addiu	$t9,$t9,-16120
    bal __glMultiplyMatrix
    cvt.d.s	$f14,$f14
    # Line 169
    lw	$s1,29660($s0)
    # Line 170
    lw	$t9,11888($s0)
    sd	$s7,48($sp)
    move	$a0,$s1
    jal	sub_0db10000
    # Line 169
    sw	$s1,29664($s0)
    # Line 171
    addiu	$s7,$s1,88
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s7
    # Line 172
    lw	$t9,11888($s0)
    sd	$s2,32($sp)
    jalr	$t9
    addiu	$a0,$s1,176
    # Line 173
    lw	$s2,11860($s0)
    # Line 174
    move	$a0,$s0
    move	$a1,$s1
    jalr	$s2
    move	$t9,$s2
    # Line 175
    lw	$t9,11864($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s7
    # Line 177
    lw	$s1,29668($s0)
    # Line 178
    lw	$t9,11888($s0)
    ld	$s7,48($sp)
    move	$a0,$s1
    jalr	$t9
    # Line 177
    sw	$s1,29672($s0)
    # Line 179
    move	$a0,$s0
    move	$a1,$s1
    jalr	$s2
    move	$t9,$s2
    # Line 181
    lw	$t9,11868($s0)
    lw	$a1,29664($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,176
    # Line 183
    lw	$s1,29680($s0)
    # Line 184
    lw	$t9,11888($s0)
    move	$a0,$s1
    jalr	$t9
    # Line 183
    sw	$s1,29684($s0)
    # Line 185
    move	$a0,$s0
    move	$a1,$s1
    jalr	$s2
    move	$t9,$s2
    # Line 187
    lw	$s1,29688($s0)
    # Line 188
    lw	$t9,11888($s0)
    move	$a0,$s1
    jalr	$t9
    # Line 187
    sw	$s1,29692($s0)
    # Line 189
    move	$a0,$s0
    move	$a1,$s1
    jalr	$s2
    move	$t9,$s2
    # Line 192
    move	$a1,$zero
    ld	$s2,32($sp)
    ld	$s1,40($sp)
    addu	$a4,$s3,$s3
    # Line 191
    lw	$a0,29696($s0)
    # Line 192
    slti	$a2,$s3,-5
    bnez	$a2,.L0db0c484
    addiu	$a3,$a0,144
    la	$a5,__glValidateVertex4
    addiu	$a4,$a4,12
    andi	$a6,$a4,0x3
    beqz	$a6,.L0db0c428
    move	$a7,$a4
.L0db0c40c:
    # Line 193
    sw	$a3,4($a0)
    # Line 192
    addiu	$a3,$a3,192
    addiu	$a0,$a0,192
    addiu	$a1,$a1,1
    addi	$a6,$a6,-1
    bnez	$a6,.L0db0c40c
    # Line 194
    sw	$a5,-184($a0)
.L0db0c428:
    move	$a6,$a1
    move	$t0,$a0
    sra	$at,$a7,0x2
    beqz	$at,.L0db0c484
    move	$t1,$a3
    move	$a1,$a6
    move	$a3,$t0
    move	$a0,$t1
.L0db0c448:
    # Line 192
    addiu	$a3,$a3,768
    # Line 194
    sw	$a5,-184($a3)
    sw	$a5,-376($a3)
    sw	$a5,-568($a3)
    sw	$a5,-760($a3)
    # Line 192
    addiu	$a1,$a1,4
    addiu	$v0,$a0,192
    # Line 193
    sw	$v0,-572($a3)
    # Line 192
    addiu	$v0,$v0,192
    # Line 193
    sw	$v0,-380($a3)
    sw	$a0,-764($a3)
    # Line 192
    addiu	$v0,$v0,192
    addiu	$a0,$v0,192
    bne	$a4,$a1,.L0db0c448
    # Line 193
    sw	$v0,-188($a3)
.L0db0c484:
    # Line 198
    ld	$ra,16($sp)
    # Line 197
    lwc1	$f0,3284($s0)
    # ld	gp,0(sp)
    # Line 198
    ld	$s3,24($sp)
    # Line 197
    swc1	$f0,192($s0)
    # Line 198
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitTransformState

# Function: __glInvalidateSequenceNumbers
# Declared: Line 205 (Source lines: 212-228)
# Address: 0x0db0c4a4 - 0x0db0c5cc (Size: 296 bytes, Frame: 0)
.globl __glInvalidateSequenceNumbers
.ent __glInvalidateSequenceNumbers
__glInvalidateSequenceNumbers:
    # Line 213
    lw	$at,3492($a0)
    # Line 212
    lw	$a2,29660($a0)
    # Line 213
    sll	$a3,$at,0x4
    addu	$a3,$a3,$at
    sll	$a3,$a3,0x4
    addu	$a3,$a3,$a2
    sltu	$at,$a2,$a3
    beqz	$at,.L0db0c510
    li	$v0,272
    subu	$a1,$a3,$a2
    addiu	$a1,$a1,271
    div	$zero,$a1,$v0
    mflo	$a4
    andi	$v1,$a4,0x1
    beqz	$v1,.L0db0c4ec
    teq	$v0,$zero,0x7
    # Line 216
    addiu	$a2,$a2,272
    # Line 215
    sw	$zero,-8($a2)
.L0db0c4ec:
    sra	$at,$a4,0x1
    beqz	$at,.L0db0c510
    move	$a5,$a2
    move	$a2,$a5
.L0db0c4fc:
    sw	$zero,536($a2)
    # Line 216
    addiu	$a2,$a2,544
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0db0c4fc
    # Line 215
    sw	$zero,-280($a2)
.L0db0c510:
    # Line 222
    lw	$a4,3496($a0)
    li	$at,272
    # Line 221
    lw	$a2,29668($a0)
    # Line 222
    sll	$a3,$a4,0x4
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x4
    addu	$a3,$a3,$a2
    sltu	$v1,$a2,$a3
    beqz	$v1,.L0db0c5c4
    # Line 220
    li	$a4,1
    # Line 222
    subu	$v0,$a3,$a2
    addiu	$v0,$v0,271
    div	$zero,$v0,$at
    move	$a5,$zero
    mflo	$a7
    andi	$a6,$a7,0x3
    beqz	$a6,.L0db0c570
    teq	$at,$zero,0x7
.L0db0c558:
    # Line 225
    addiu	$a2,$a2,272
    # Line 224
    addiu	$a4,$a4,1
    addi	$a6,$a6,-1
    addiu	$a5,$a5,1
    bnez	$a6,.L0db0c558
    sw	$a5,-8($a2)
.L0db0c570:
    move	$t0,$a5
    sra	$v1,$a7,0x2
    move	$t1,$a2
    beqz	$v1,.L0db0c5c4
    move	$a6,$a4
    move	$a5,$t1
    move	$a4,$t0
    move	$a2,$a6
.L0db0c590:
    addiu	$a2,$a2,4
    addiu	$a4,$a4,1
    sw	$a4,264($a5)
    # Line 225
    addiu	$a5,$a5,1088
    sltu	$a1,$a5,$a3
    # Line 224
    addiu	$a4,$a4,1
    sw	$a4,-552($a5)
    addiu	$a4,$a4,1
    sw	$a4,-280($a5)
    addiu	$a4,$a4,1
    # Line 225
    bnez	$a1,.L0db0c590
    # Line 224
    sw	$a4,-8($a5)
    move	$a4,$a2
.L0db0c5c4:
    # Line 228
    jr	$ra
    # Line 227
    sw	$a4,29676($a0)
.end __glInvalidateSequenceNumbers

# Function: __glim_MatrixMode
# Declared: Line 232 (Source lines: 233-248)
# Address: 0x0db0c5cc - 0x0db0c674 (Size: 168 bytes, Frame: 32)
.globl __glim_MatrixMode
.ent __glim_MatrixMode
__glim_MatrixMode:
    # Line 234
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 233
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 234
    lw	$at,__glBeginMode
    # Line 233
    lui	$v1,0xf
    addiu	$v1,$v1,-19812
    # Line 234
    beq	$at,$v0,.L0db0c654
    # Line 233
    addu	$gp,$t9,$v1
    # Line 234
    li	$a1,5888
    beq	$a0,$a1,.L0db0c630
    li	$at,5889
    beq	$a0,$at,.L0db0c630
    li	$v0,5890
    beq	$a0,$v0,.L0db0c630
    li	$v1,6144
    beq	$a0,$v1,.L0db0c630
    # Line 243
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 244
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0c630:
    # Line 246
    sw	$a0,1648($a2)
    # Line 247
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$a0,11764($a2)
    ld	$gp,0($sp)
    # Line 248
    addiu	$sp,$sp,32
    # Line 247
    ori	$a0,$a0,0x1
    # Line 248
    jr	$ra
    # Line 247
    sw	$a0,11764($a2)
.L0db0c654:
    # Line 234
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_MatrixMode

# Function: __glim_LoadIdentity
# Declared: Line 250 (Source lines: 251-254)
# Address: 0x0db0c674 - 0x0db0c6fc (Size: 136 bytes, Frame: 32)
.globl __glim_LoadIdentity
.ent __glim_LoadIdentity
__glim_LoadIdentity:
    # Line 252
    lw	$a0,__glCurrentContext
    # Line 251
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 252
    lw	$a2,__glBeginMode
    # Line 251
    lui	$at,0xf
    addiu	$at,$at,-19980
    # Line 252
    beqz	$a2,.L0db0c6e0
    # Line 251
    nop
    sd	$ra,16($sp)
    # Line 252
    li	$v0,2
    beq	$a2,$v0,.L0db0c6c4
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0c6c4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a0,0($sp)
.L0db0c6e0:
    # Line 253
    lw	$t9,11904($a0)
    jalr	$t9
    nop
    # Line 254
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LoadIdentity

# Function: __glim_LoadMatrixf
# Declared: Line 256 (Source lines: 257-279)
# Address: 0x0db0c6fc - 0x0db0c7e8 (Size: 236 bytes, Frame: 128)
.globl __glim_LoadMatrixf
.ent __glim_LoadMatrixf
__glim_LoadMatrixf:
    # Line 259
    lw	$a3,__glCurrentContext
    # Line 257
    move	$a4,$a0
    # Line 259
    li	$v0,1
    # Line 257
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    # sd	gp,88(sp)
    # Line 259
    lw	$at,__glBeginMode
    # Line 257
    lui	$v1,0xf
    addiu	$v1,$v1,-20116
    # Line 259
    beq	$at,$v0,.L0db0c7cc
    # Line 257
    nop
    # Line 261
    lwc1	$f15,0($a4)
    swc1	$f15,0($sp)
    # Line 262
    lwc1	$f14,4($a4)
    swc1	$f14,4($sp)
    # Line 263
    lwc1	$f13,8($a4)
    swc1	$f13,8($sp)
    # Line 264
    lwc1	$f12,12($a4)
    swc1	$f12,12($sp)
    # Line 265
    lwc1	$f11,16($a4)
    swc1	$f11,16($sp)
    # Line 266
    lwc1	$f10,20($a4)
    swc1	$f10,20($sp)
    # Line 267
    lwc1	$f9,24($a4)
    swc1	$f9,24($sp)
    # Line 268
    lwc1	$f8,28($a4)
    swc1	$f8,28($sp)
    # Line 269
    lwc1	$f7,32($a4)
    swc1	$f7,32($sp)
    # Line 270
    lwc1	$f6,36($a4)
    swc1	$f6,36($sp)
    # Line 271
    lwc1	$f5,40($a4)
    swc1	$f5,40($sp)
    # Line 272
    lwc1	$f4,44($a4)
    swc1	$f4,44($sp)
    # Line 273
    lwc1	$f3,48($a4)
    swc1	$f3,48($sp)
    # Line 274
    lwc1	$f2,52($a4)
    swc1	$f2,52($sp)
    # Line 275
    lwc1	$f1,56($a4)
    # Line 278
    addiu	$a1,$sp,0
    move	$a0,$a3
    # Line 275
    swc1	$f1,56($sp)
    # Line 278
    # lw $t9, -25924($gp) # &__glDoLoadMatrix
    # Line 276
    lwc1	$f0,60($a4)
    # Line 277
    sw	$zero,64($sp)
    # Line 278
    bal __glDoLoadMatrix
    # Line 276
    swc1	$f0,60($sp)
    # Line 279
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0c7cc:
    # Line 259
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_LoadMatrixf

# Function: __glim_LoadMatrixd
# Declared: Line 281 (Source lines: 282-304)
# Address: 0x0db0c7e8 - 0x0db0c914 (Size: 300 bytes, Frame: 128)
.globl __glim_LoadMatrixd
.ent __glim_LoadMatrixd
__glim_LoadMatrixd:
    # Line 284
    lw	$a3,__glCurrentContext
    # Line 282
    move	$a4,$a0
    # Line 284
    li	$v0,1
    # Line 282
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    # sd	gp,88(sp)
    # Line 284
    lw	$at,__glBeginMode
    # Line 282
    lui	$v1,0xf
    addiu	$v1,$v1,-20352
    # Line 284
    beq	$at,$v0,.L0db0c8f8
    # Line 282
    nop
    # Line 286
    ldc1	$f15,0($a4)
    cvt.s.d	$f15,$f15
    swc1	$f15,0($sp)
    # Line 287
    ldc1	$f14,8($a4)
    cvt.s.d	$f14,$f14
    swc1	$f14,4($sp)
    # Line 288
    ldc1	$f13,16($a4)
    cvt.s.d	$f13,$f13
    swc1	$f13,8($sp)
    # Line 289
    ldc1	$f12,24($a4)
    cvt.s.d	$f12,$f12
    swc1	$f12,12($sp)
    # Line 290
    ldc1	$f11,32($a4)
    cvt.s.d	$f11,$f11
    swc1	$f11,16($sp)
    # Line 291
    ldc1	$f10,40($a4)
    cvt.s.d	$f10,$f10
    swc1	$f10,20($sp)
    # Line 292
    ldc1	$f9,48($a4)
    cvt.s.d	$f9,$f9
    swc1	$f9,24($sp)
    # Line 293
    ldc1	$f8,56($a4)
    cvt.s.d	$f8,$f8
    swc1	$f8,28($sp)
    # Line 294
    ldc1	$f7,64($a4)
    cvt.s.d	$f7,$f7
    swc1	$f7,32($sp)
    # Line 295
    ldc1	$f6,72($a4)
    cvt.s.d	$f6,$f6
    swc1	$f6,36($sp)
    # Line 296
    ldc1	$f5,80($a4)
    cvt.s.d	$f5,$f5
    swc1	$f5,40($sp)
    # Line 297
    ldc1	$f4,88($a4)
    cvt.s.d	$f4,$f4
    swc1	$f4,44($sp)
    # Line 298
    ldc1	$f3,96($a4)
    cvt.s.d	$f3,$f3
    swc1	$f3,48($sp)
    # Line 299
    ldc1	$f2,104($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,52($sp)
    # Line 300
    ldc1	$f1,112($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,56($sp)
    # Line 301
    ldc1	$f0,120($a4)
    # Line 303
    addiu	$a1,$sp,0
    # lw $t9, -25924($gp) # &__glDoLoadMatrix
    # Line 301
    cvt.s.d	$f0,$f0
    # Line 303
    move	$a0,$a3
    # Line 302
    sw	$zero,64($sp)
    # Line 303
    bal __glDoLoadMatrix
    # Line 301
    swc1	$f0,60($sp)
    # Line 304
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0c8f8:
    # Line 284
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_LoadMatrixd

# Function: __glim_MultMatrixf
# Declared: Line 306 (Source lines: 307-329)
# Address: 0x0db0c914 - 0x0db0ca04 (Size: 240 bytes, Frame: 128)
.globl __glim_MultMatrixf
.ent __glim_MultMatrixf
__glim_MultMatrixf:
    # Line 309
    lw	$a4,__glCurrentContext
    # Line 307
    move	$a5,$a0
    # Line 309
    li	$v0,1
    # Line 307
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    # sd	gp,88(sp)
    # Line 309
    lw	$at,__glBeginMode
    # Line 307
    lui	$v1,0xf
    addiu	$v1,$v1,-20652
    # Line 309
    beq	$at,$v0,.L0db0c9e8
    # Line 307
    nop
    # Line 311
    lwc1	$f15,0($a5)
    swc1	$f15,0($sp)
    # Line 312
    lwc1	$f14,4($a5)
    swc1	$f14,4($sp)
    # Line 313
    lwc1	$f13,8($a5)
    swc1	$f13,8($sp)
    # Line 314
    lwc1	$f12,12($a5)
    swc1	$f12,12($sp)
    # Line 315
    lwc1	$f11,16($a5)
    swc1	$f11,16($sp)
    # Line 316
    lwc1	$f10,20($a5)
    swc1	$f10,20($sp)
    # Line 317
    lwc1	$f9,24($a5)
    swc1	$f9,24($sp)
    # Line 318
    lwc1	$f8,28($a5)
    swc1	$f8,28($sp)
    # Line 319
    lwc1	$f7,32($a5)
    swc1	$f7,32($sp)
    # Line 320
    lwc1	$f6,36($a5)
    swc1	$f6,36($sp)
    # Line 321
    lwc1	$f5,40($a5)
    swc1	$f5,40($sp)
    # Line 322
    lwc1	$f4,44($a5)
    swc1	$f4,44($sp)
    # Line 323
    lwc1	$f3,48($a5)
    swc1	$f3,48($sp)
    # Line 324
    lwc1	$f2,52($a5)
    swc1	$f2,52($sp)
    # Line 328
    la	$a2,__glMultiplyMatrix
    # Line 325
    lwc1	$f1,56($a5)
    # Line 328
    addiu	$a1,$sp,0
    move	$a0,$a4
    # Line 325
    swc1	$f1,56($sp)
    # Line 328
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    # Line 326
    lwc1	$f0,60($a5)
    # Line 327
    sw	$zero,64($sp)
    # Line 328
    bal __glDoMultMatrix
    # Line 326
    swc1	$f0,60($sp)
    # Line 329
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0c9e8:
    # Line 309
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_MultMatrixf

# Function: __glim_MultMatrixd
# Declared: Line 331 (Source lines: 332-354)
# Address: 0x0db0ca04 - 0x0db0cb34 (Size: 304 bytes, Frame: 128)
.globl __glim_MultMatrixd
.ent __glim_MultMatrixd
__glim_MultMatrixd:
    # Line 334
    lw	$a4,__glCurrentContext
    # Line 332
    move	$a5,$a0
    # Line 334
    li	$v0,1
    # Line 332
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    # sd	gp,88(sp)
    # Line 334
    lw	$at,__glBeginMode
    # Line 332
    lui	$v1,0xf
    addiu	$v1,$v1,-20892
    # Line 334
    beq	$at,$v0,.L0db0cb18
    # Line 332
    nop
    # Line 336
    ldc1	$f15,0($a5)
    cvt.s.d	$f15,$f15
    swc1	$f15,0($sp)
    # Line 337
    ldc1	$f14,8($a5)
    cvt.s.d	$f14,$f14
    swc1	$f14,4($sp)
    # Line 338
    ldc1	$f13,16($a5)
    cvt.s.d	$f13,$f13
    swc1	$f13,8($sp)
    # Line 339
    ldc1	$f12,24($a5)
    cvt.s.d	$f12,$f12
    swc1	$f12,12($sp)
    # Line 340
    ldc1	$f11,32($a5)
    cvt.s.d	$f11,$f11
    swc1	$f11,16($sp)
    # Line 341
    ldc1	$f10,40($a5)
    cvt.s.d	$f10,$f10
    swc1	$f10,20($sp)
    # Line 342
    ldc1	$f9,48($a5)
    cvt.s.d	$f9,$f9
    swc1	$f9,24($sp)
    # Line 343
    ldc1	$f8,56($a5)
    cvt.s.d	$f8,$f8
    swc1	$f8,28($sp)
    # Line 344
    ldc1	$f7,64($a5)
    cvt.s.d	$f7,$f7
    swc1	$f7,32($sp)
    # Line 345
    ldc1	$f6,72($a5)
    cvt.s.d	$f6,$f6
    swc1	$f6,36($sp)
    # Line 346
    ldc1	$f5,80($a5)
    cvt.s.d	$f5,$f5
    swc1	$f5,40($sp)
    # Line 347
    ldc1	$f4,88($a5)
    cvt.s.d	$f4,$f4
    swc1	$f4,44($sp)
    # Line 348
    ldc1	$f3,96($a5)
    cvt.s.d	$f3,$f3
    swc1	$f3,48($sp)
    # Line 349
    ldc1	$f2,104($a5)
    cvt.s.d	$f2,$f2
    swc1	$f2,52($sp)
    # Line 350
    ldc1	$f1,112($a5)
    cvt.s.d	$f1,$f1
    swc1	$f1,56($sp)
    # Line 353
    la	$a2,__glMultiplyMatrix
    # Line 351
    ldc1	$f0,120($a5)
    # Line 353
    addiu	$a1,$sp,0
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    # Line 351
    cvt.s.d	$f0,$f0
    # Line 353
    move	$a0,$a4
    # Line 352
    sw	$zero,64($sp)
    # Line 353
    bal __glDoMultMatrix
    # Line 351
    swc1	$f0,60($sp)
    # Line 354
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0cb18:
    # Line 334
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,96($sp)
    # ld	gp,88(sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_MultMatrixd

# Function: __glim_Rotatef
# Declared: Line 356 (Source lines: 357-361)
# Address: 0x0db0cb34 - 0x0db0cba8 (Size: 116 bytes, Frame: 48)
.globl __glim_Rotatef
.ent __glim_Rotatef
__glim_Rotatef:
    # Line 357
    mov.s	$f16,$f15
    mov.s	$f4,$f14
    mov.s	$f5,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21196
    beq	$at,$v0,.L0db0cb8c
    nop
    # Line 360
    mov.s	$f15,$f4
    # lw $t9, -25916($gp) # &__glDoRotate
    mov.s	$f14,$f5
    mov.s	$f13,$f12
    bal __glDoRotate
    lw	$a0,__glCurrentContext
    # Line 361
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cb8c:
    # Line 358
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rotatef

# Function: __glim_Rotated
# Declared: Line 363 (Source lines: 364-368)
# Address: 0x0db0cba8 - 0x0db0cc20 (Size: 120 bytes, Frame: 48)
.globl __glim_Rotated
.ent __glim_Rotated
__glim_Rotated:
    # Line 364
    mov.d	$f5,$f15
    mov.d	$f4,$f14
    mov.d	$f6,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21312
    beq	$at,$v0,.L0db0cc04
    nop
    # Line 367
    cvt.s.d	$f16,$f5
    cvt.s.d	$f15,$f4
    cvt.s.d	$f14,$f6
    # lw $t9, -25916($gp) # &__glDoRotate
    cvt.s.d	$f13,$f12
    bal __glDoRotate
    lw	$a0,__glCurrentContext
    # Line 368
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cc04:
    # Line 365
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rotated

# Function: __glim_Scalef
# Declared: Line 370 (Source lines: 371-375)
# Address: 0x0db0cc20 - 0x0db0cc8c (Size: 108 bytes, Frame: 48)
.globl __glim_Scalef
.ent __glim_Scalef
__glim_Scalef:
    # Line 371
    mov.s	$f15,$f14
    mov.s	$f4,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21432
    beq	$at,$v0,.L0db0cc70
    nop
    # Line 374
    # lw $t9, -25908($gp) # &__glDoScale
    mov.s	$f14,$f4
    mov.s	$f13,$f12
    bal __glDoScale
    lw	$a0,__glCurrentContext
    # Line 375
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cc70:
    # Line 372
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Scalef

# Function: __glim_Scaled
# Declared: Line 377 (Source lines: 378-382)
# Address: 0x0db0cc8c - 0x0db0ccfc (Size: 112 bytes, Frame: 48)
.globl __glim_Scaled
.ent __glim_Scaled
__glim_Scaled:
    # Line 378
    mov.d	$f4,$f14
    mov.d	$f5,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21540
    beq	$at,$v0,.L0db0cce0
    nop
    # Line 381
    cvt.s.d	$f15,$f4
    cvt.s.d	$f14,$f5
    # lw $t9, -25908($gp) # &__glDoScale
    cvt.s.d	$f13,$f12
    bal __glDoScale
    lw	$a0,__glCurrentContext
    # Line 382
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cce0:
    # Line 379
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Scaled

# Function: __glim_Translatef
# Declared: Line 384 (Source lines: 385-389)
# Address: 0x0db0ccfc - 0x0db0cd68 (Size: 108 bytes, Frame: 48)
.globl __glim_Translatef
.ent __glim_Translatef
__glim_Translatef:
    # Line 385
    mov.s	$f15,$f14
    mov.s	$f4,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21652
    beq	$at,$v0,.L0db0cd4c
    nop
    # Line 388
    # lw $t9, -25900($gp) # &__glDoTranslate
    mov.s	$f14,$f4
    mov.s	$f13,$f12
    bal __glDoTranslate
    lw	$a0,__glCurrentContext
    # Line 389
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cd4c:
    # Line 386
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Translatef

# Function: __glim_Translated
# Declared: Line 391 (Source lines: 392-396)
# Address: 0x0db0cd68 - 0x0db0cdd8 (Size: 112 bytes, Frame: 48)
.globl __glim_Translated
.ent __glim_Translated
__glim_Translated:
    # Line 392
    mov.d	$f4,$f14
    mov.d	$f5,$f13
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-21760
    beq	$at,$v0,.L0db0cdbc
    nop
    # Line 395
    cvt.s.d	$f15,$f4
    cvt.s.d	$f14,$f5
    # lw $t9, -25900($gp) # &__glDoTranslate
    cvt.s.d	$f13,$f12
    bal __glDoTranslate
    lw	$a0,__glCurrentContext
    # Line 396
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0cdbc:
    # Line 393
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Translated

# Function: __glim_PushMatrix
# Declared: Line 398 (Source lines: 399-402)
# Address: 0x0db0cdd8 - 0x0db0ce60 (Size: 136 bytes, Frame: 32)
.globl __glim_PushMatrix
.ent __glim_PushMatrix
__glim_PushMatrix:
    # Line 400
    lw	$a0,__glCurrentContext
    # Line 399
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 400
    lw	$a2,__glBeginMode
    # Line 399
    lui	$at,0xf
    addiu	$at,$at,-21872
    # Line 400
    beqz	$a2,.L0db0ce44
    # Line 399
    nop
    sd	$ra,16($sp)
    # Line 400
    li	$v0,2
    beq	$a2,$v0,.L0db0ce28
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0ce28:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a0,0($sp)
.L0db0ce44:
    # Line 401
    lw	$t9,11896($a0)
    jalr	$t9
    nop
    # Line 402
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PushMatrix

# Function: __glim_PopMatrix
# Declared: Line 404 (Source lines: 405-408)
# Address: 0x0db0ce60 - 0x0db0cee8 (Size: 136 bytes, Frame: 32)
.globl __glim_PopMatrix
.ent __glim_PopMatrix
__glim_PopMatrix:
    # Line 406
    lw	$a0,__glCurrentContext
    # Line 405
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 406
    lw	$a2,__glBeginMode
    # Line 405
    lui	$at,0xf
    addiu	$at,$at,-22008
    # Line 406
    beqz	$a2,.L0db0cecc
    # Line 405
    nop
    sd	$ra,16($sp)
    # Line 406
    li	$v0,2
    beq	$a2,$v0,.L0db0ceb0
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0ceb0:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a0,0($sp)
.L0db0cecc:
    # Line 407
    lw	$t9,11900($a0)
    jalr	$t9
    nop
    # Line 408
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PopMatrix

# Function: __glim_Frustum
# Declared: Line 410 (Source lines: 413-438)
# Address: 0x0db0cee8 - 0x0db0d108 (Size: 544 bytes, Frame: 240)
.globl __glim_Frustum
.ent __glim_Frustum
__glim_Frustum:
    # Line 416
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 413
    addiu	$sp,$sp,-240
    sdc1	$f22,128($sp)
    mov.d	$f22,$f17
    sdc1	$f20,144($sp)
    mov.d	$f20,$f16
    sdc1	$f28,112($sp)
    mov.d	$f28,$f15
    sdc1	$f30,152($sp)
    mov.d	$f30,$f14
    sdc1	$f24,120($sp)
    mov.d	$f24,$f13
    sdc1	$f26,136($sp)
    mov.d	$f26,$f12
    sd	$gp,168($sp)
    # Line 416
    lw	$at,__glBeginMode
    # Line 413
    lui	$v1,0xf
    addiu	$v1,$v1,-22144
    # Line 416
    beq	$at,$v0,.L0db0d0d0
    # Line 413
    addu	$gp,$t9,$v1
    # Line 421
    dmtc1	$zero,$f4
    c.le.d	$f20,$f4
    nop
    bc1t	.L0db0cfb8
    # Line 423
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 421
    c.le.d	$f22,$f4
    nop
    bc1t	.L0db0cfb4
    mtc1	$zero,$f4
    sub.d	$f5,$f24,$f26
    cvt.s.d	$f5,$f5
    c.eq.s	$f5,$f4
    nop
    bc1t	.L0db0cfb8
    # Line 423
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 421
    sub.d	$f6,$f28,$f30
    cvt.s.d	$f6,$f6
    c.eq.s	$f6,$f4
    nop
    bc1t	.L0db0cfb8
    # Line 423
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 421
    sub.d	$f0,$f22,$f20
    cvt.s.d	$f0,$f0
    sd	$ra,176($sp)
    sd	$a0,160($sp)
    c.eq.s	$f0,$f4
    sdc1	$f5,88($sp)
    sdc1	$f6,96($sp)
    bc1f	.L0db0cfec
    sdc1	$f0,104($sp)
.L0db0cfb4:
    # Line 423
    # lw $t9, -29008($gp) # &__glSetError
.L0db0cfb8:
    sd	$ra,176($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,168($sp)
    # Line 424
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ldc1	$f26,136($sp)
    ld	$ra,176($sp)
    ldc1	$f28,112($sp)
    ldc1	$f30,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db0cfec:
    ld	$t9,160($sp)
    # Line 427
    lw	$t9,11888($t9)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 430
    add.d	$f5,$f26,$f24
    # Line 428
    ldc1	$f9,88($sp)
    cvt.d.s	$f9,$f9
    # Line 430
    div.d	$f5,$f5,$f9
    # Line 431
    add.d	$f6,$f30,$f28
    # Line 429
    ldc1	$f3,96($sp)
    cvt.d.s	$f3,$f3
    # Line 431
    div.d	$f6,$f6,$f3
    # Line 432
    ldc1	$f8,104($sp)
    add.d	$f4,$f20,$f22
    cvt.d.s	$f8,$f8
    neg.d	$f4,$f4
    div.d	$f4,$f4,$f8
    # Line 428
    ldc1	$f2,_lit8_4000000000000000
    mul.d	$f2,$f20,$f2
    # Line 429
    div.d	$f3,$f2,$f3
    # Line 428
    div.d	$f2,$f2,$f9
    # Line 434
    ldc1	$f1,_lit8_c000000000000000
    mul.d	$f1,$f20,$f1
    mul.d	$f1,$f1,$f22
    div.d	$f1,$f1,$f8
    # Line 437
    la	$a2,__glMultiplyMatrix
    addiu	$a1,$sp,0
    # Line 430
    cvt.s.d	$f5,$f5
    # Line 437
    ld	$a0,160($sp)
    mtc1	$zero,$f7
    # Line 431
    cvt.s.d	$f6,$f6
    # Line 436
    sw	$zero,64($sp)
    # Line 435
    swc1	$f7,60($sp)
    # Line 432
    cvt.s.d	$f4,$f4
    # Line 433
    lwc1	$f7,_lit_bf800000
    # Line 437
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    # Line 428
    cvt.s.d	$f2,$f2
    # Line 433
    swc1	$f7,44($sp)
    # Line 431
    swc1	$f6,36($sp)
    # Line 429
    cvt.s.d	$f3,$f3
    # Line 430
    swc1	$f5,32($sp)
    # Line 432
    swc1	$f4,40($sp)
    # Line 434
    cvt.s.d	$f1,$f1
    # Line 429
    swc1	$f3,20($sp)
    # Line 428
    swc1	$f2,0($sp)
    # Line 437
    bal __glDoMultMatrix
    # Line 434
    swc1	$f1,56($sp)
    ld	$gp,168($sp)
    # Line 438
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ldc1	$f26,136($sp)
    ld	$ra,176($sp)
    ldc1	$f28,112($sp)
    ldc1	$f30,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db0d0d0:
    # Line 416
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,176($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,168($sp)
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ldc1	$f26,136($sp)
    ld	$ra,176($sp)
    ldc1	$f28,112($sp)
    ldc1	$f30,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glim_Frustum

# Function: __glim_Ortho
# Declared: Line 440 (Source lines: 442-482)
# Address: 0x0db0d108 - 0x0db0d384 (Size: 636 bytes, Frame: 240)
.globl __glim_Ortho
.ent __glim_Ortho
__glim_Ortho:
    # Line 442
    mov.d	$f4,$f17
    # Line 446
    li	$v0,1
    # Line 442
    addiu	$sp,$sp,-240
    sd	$s7,152($sp)
    # Line 446
    lw	$s7,__glCurrentContext
    sdc1	$f28,112($sp)
    # Line 442
    mov.d	$f28,$f16
    sdc1	$f26,136($sp)
    mov.d	$f26,$f15
    sdc1	$f20,144($sp)
    mov.d	$f20,$f14
    sdc1	$f22,128($sp)
    mov.d	$f22,$f13
    sdc1	$f24,120($sp)
    mov.d	$f24,$f12
    sd	$gp,160($sp)
    # Line 446
    lw	$at,__glBeginMode
    # Line 442
    lui	$v1,0xf
    addiu	$v1,$v1,-22688
    # Line 446
    beq	$at,$v0,.L0db0d34c
    # Line 442
    addu	$gp,$t9,$v1
    sdc1	$f30,176($sp)
    # Line 451
    sub.d	$f5,$f22,$f24
    dmtc1	$zero,$f30
    c.eq.d	$f5,$f30
    nop
    bc1t	.L0db0d1b0
    # Line 452
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 451
    sub.d	$f6,$f26,$f20
    c.eq.d	$f6,$f30
    nop
    bc1t	.L0db0d1b0
    # Line 452
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 451
    sub.d	$f0,$f4,$f28
    sd	$ra,184($sp)
    sdc1	$f4,168($sp)
    c.eq.d	$f0,$f30
    sdc1	$f5,88($sp)
    sdc1	$f6,96($sp)
    bc1f	.L0db0d1e8
    sdc1	$f0,104($sp)
    # Line 452
    # lw $t9, -29008($gp) # &__glSetError
.L0db0d1b0:
    li	$a0,1281
    sd	$ra,184($sp)
    jal	__glSetError
    ldc1	$f30,176($sp)
    ld	$gp,160($sp)
    # Line 453
    ld	$s7,152($sp)
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ld	$ra,184($sp)
    ldc1	$f26,136($sp)
    ldc1	$f28,112($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db0d1e8:
    # Line 456
    lw	$t9,11888($s7)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 457
    ldc1	$f0,88($sp)
    ldc1	$f5,_lit8_4000000000000000
    div.d	$f6,$f5,$f0
    # Line 459
    ldc1	$f4,96($sp)
    div.d	$f5,$f5,$f4
    # Line 460
    add.d	$f2,$f20,$f26
    neg.d	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 458
    add.d	$f3,$f24,$f22
    neg.d	$f3,$f3
    div.d	$f3,$f3,$f0
    # Line 461
    ldc1	$f0,104($sp)
    ldc1	$f4,_lit8_c000000000000000
    div.d	$f4,$f4,$f0
    # Line 462
    ldc1	$f1,168($sp)
    add.d	$f1,$f28,$f1
    neg.d	$f1,$f1
    div.d	$f1,$f1,$f0
    # Line 459
    cvt.s.d	$f5,$f5
    # Line 457
    cvt.s.d	$f6,$f6
    # Line 460
    cvt.s.d	$f2,$f2
    # Line 458
    cvt.s.d	$f3,$f3
    # Line 462
    c.eq.d	$f24,$f30
    cvt.s.d	$f1,$f1
    # Line 457
    swc1	$f6,0($sp)
    # Line 459
    swc1	$f5,20($sp)
    # Line 461
    cvt.s.d	$f4,$f4
    # Line 458
    swc1	$f3,48($sp)
    # Line 460
    swc1	$f2,52($sp)
    # Line 462
    swc1	$f1,56($sp)
    # Line 461
    swc1	$f4,40($sp)
    # Line 462
    bc1f	.L0db0d304
    ldc1	$f4,168($sp)
    c.eq.d	$f20,$f30
    nop
    bc1fl	.L0db0d308
    ldc1	$f30,176($sp)
    # Line 468
    lw	$a1,1600($s7)
    mtc1	$a1,$f0
    nop
    cvt.d.w	$f0,$f0
    c.eq.d	$f0,$f22
    nop
    bc1fl	.L0db0d308
    ldc1	$f30,176($sp)
    lw	$at,1604($s7)
    mtc1	$at,$f1
    nop
    cvt.d.w	$f1,$f1
    c.eq.d	$f1,$f26
    nop
    bc1fl	.L0db0d308
    ldc1	$f30,176($sp)
    c.le.d	$f28,$f30
    nop
    bc1fl	.L0db0d308
    ldc1	$f30,176($sp)
    c.le.d	$f30,$f4
    nop
    bc1f	.L0db0d304
    # Line 474
    li	$a1,5
    sw	$a1,64($sp)
    # Line 475
    lw	$v1,1600($s7)
    sh	$v1,68($sp)
    # Line 476
    lw	$v0,1604($s7)
    ldc1	$f30,176($sp)
    b	.L0db0d310
    sh	$v0,70($sp)
.L0db0d304:
    ldc1	$f30,176($sp)
.L0db0d308:
    # Line 478
    li	$at,3
    sw	$at,64($sp)
.L0db0d310:
    # Line 481
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    move	$a0,$s7
    la	$a2,__glMultiplyMatrix
    bal __glDoMultMatrix
    addiu	$a1,$sp,0
    ld	$gp,160($sp)
    # Line 482
    ld	$s7,152($sp)
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ld	$ra,184($sp)
    ldc1	$f26,136($sp)
    ldc1	$f28,112($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db0d34c:
    # Line 446
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,184($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,160($sp)
    ld	$s7,152($sp)
    ldc1	$f20,144($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,120($sp)
    ld	$ra,184($sp)
    ldc1	$f26,136($sp)
    ldc1	$f28,112($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glim_Ortho

# Function: __glUpdateViewport
# Declared: Line 484 (Source lines: 489-505)
# Address: 0x0db0d384 - 0x0db0d448 (Size: 196 bytes, Frame: 0)
.globl __glUpdateViewport
.ent __glUpdateViewport
__glUpdateViewport:
    # Line 489
    lw	$a1,1600($a0)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f2,3280($a0)
    mul.s	$f1,$f1,$f2
    # Line 492
    lw	$v1,1592($a0)
    mtc1	$v1,$f3
    # Line 490
    lw	$v0,1604($a0)
    # Line 492
    cvt.s.w	$f3,$f3
    # Line 490
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 492
    add.s	$f3,$f3,$f1
    lwc1	$f0,3380($a0)
    lbu	$at,4552($a0)
    add.s	$f0,$f0,$f3
    # Line 490
    mul.s	$f4,$f4,$f2
    # Line 491
    swc1	$f1,1624($a0)
    # Line 492
    beqz	$at,.L0db0d420
    swc1	$f0,1628($a0)
    # Line 496
    lw	$at,1596($a0)
    mtc1	$at,$f0
    lw	$v0,3416($a0)
    cvt.s.w	$f0,$f0
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f1,3388($a0)
    add.s	$f0,$f0,$f4
    sub.s	$f3,$f3,$f1
    sub.s	$f3,$f3,$f0
    lwc1	$f2,3384($a0)
    add.s	$f2,$f2,$f3
    # Line 495
    neg.s	$f3,$f4
    swc1	$f3,1632($a0)
    # Line 496
    swc1	$f2,1636($a0)
    # Line 505
    jr	$ra
    nop
.L0db0d420:
    # Line 502
    lw	$v1,1596($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f4
    lwc1	$f0,3384($a0)
    add.s	$f0,$f0,$f1
    # Line 501
    swc1	$f4,1632($a0)
    # Line 505
    jr	$ra
    # Line 502
    swc1	$f0,1636($a0)
.end __glUpdateViewport

# Function: __glUpdateViewportTransform
# Declared: Line 507 (Source lines: 508-530)
# Address: 0x0db0d448 - 0x0db0d4f4 (Size: 172 bytes, Frame: 32)
.globl __glUpdateViewportTransform
.ent __glUpdateViewportTransform
__glUpdateViewportTransform:
    # Line 508
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 529
    lw	$a1,29664($a0)
    # Line 513
    lw	$a3,3372($a0)
    lw	$a2,1592($a0)
    # Line 529
    addiu	$a1,$a1,176
    # sd	gp,8(sp)
    # Line 513
    addu	$a2,$a2,$a3
    sw	$a2,29720($a0)
    # Line 508
    lui	$a5,0xf
    # Line 515
    mtc1	$a2,$f3
    # Line 508
    addiu	$a5,$a5,-23520
    # Line 514
    lw	$v1,1600($a0)
    # Line 515
    cvt.s.w	$f3,$f3
    # Line 518
    lw	$v0,3376($a0)
    # Line 514
    addu	$v1,$v1,$a2
    # Line 516
    mtc1	$v1,$f2
    # Line 518
    lw	$at,1604($a0)
    lw	$a4,1596($a0)
    lw	$a3,3416($a0)
    # Line 516
    cvt.s.w	$f2,$f2
    # Line 518
    addu	$a4,$a4,$at
    subu	$a3,$a3,$a4
    addu	$v0,$v0,$a3
    # Line 522
    mtc1	$v0,$f1
    # Line 508
    # addu	gp,t9,a5
    # Line 529
    lw	$t9,11868($a0)
    # Line 522
    cvt.s.w	$f1,$f1
    # Line 521
    addu	$at,$at,$v0
    # Line 523
    mtc1	$at,$f0
    # Line 514
    sw	$v1,29728($a0)
    # Line 518
    sw	$v0,29724($a0)
    # Line 523
    cvt.s.w	$f0,$f0
    # Line 521
    sw	$at,29732($a0)
    # Line 515
    swc1	$f3,29736($a0)
    # Line 516
    swc1	$f2,29744($a0)
    # Line 522
    swc1	$f1,29740($a0)
    # Line 529
    jalr	$t9
    # Line 523
    swc1	$f0,29748($a0)
    # Line 530
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glUpdateViewportTransform

# Function: __glim_Viewport
# Declared: Line 532 (Source lines: 533-560)
# Address: 0x0db0d4f4 - 0x0db0d600 (Size: 268 bytes, Frame: 192)
.globl __glim_Viewport
.ent __glim_Viewport
__glim_Viewport:
    # Line 533
    move	$a6,$a0
    # Line 534
    li	$v0,1
    # Line 533
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 534
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 533
    lui	$v1,0xf
    addiu	$v1,$v1,-23692
    # Line 534
    beq	$at,$v0,.L0db0d5dc
    # Line 533
    addu	$gp,$t9,$v1
    # Line 536
    bltz	$a2,.L0db0d5bc
    # Line 537
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 536
    bltz	$a3,.L0db0d5bc
    # Line 537
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 538
    lw	$a5,3344($s0)
    slt	$a4,$a5,$a3
    beqz	$a4,.L0db0d548
    # Line 542
    slt	$at,$a5,$a2
    move	$a3,$a5
    slt	$at,$a5,$a2
.L0db0d548:
    beqz	$at,.L0db0d55c
    # Line 553
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 545
    move	$a2,$a5
    # Line 553
    move	$a0,$s0
.L0db0d55c:
    # Line 551
    sw	$a3,1604($s0)
    # Line 550
    sw	$a2,1600($s0)
    # Line 553
    # lw $t9, -26004($gp) # &__glUpdateViewport
    # Line 549
    sw	$a1,1596($s0)
    sd	$ra,16($sp)
    # Line 553
    bal __glUpdateViewport
    # Line 548
    sw	$a6,1592($s0)
    # Line 555
    lw	$t9,11920($s0)
    jal	__glUpdateViewport
    move	$a0,$s0
    # Line 557
    # lw $t9, -26000($gp) # &__glUpdateViewportTransform
    bal __glUpdateViewportTransform
    move	$a0,$s0
    # Line 559
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11764($s0)
    ld	$gp,0($sp)
    # Line 560
    ld	$ra,16($sp)
    # Line 559
    ori	$v0,$v0,0x1
    sw	$v0,11764($s0)
    # Line 560
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 537
    # lw $t9, -29008($gp) # &__glSetError
.L0db0d5bc:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 538
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0d5dc:
    # Line 534
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Viewport

# Function: __glim_DepthRange
# Declared: Line 562 (Source lines: 563-568)
# Address: 0x0db0d600 - 0x0db0d68c (Size: 140 bytes, Frame: 48)
.globl __glim_DepthRange
.ent __glim_DepthRange
__glim_DepthRange:
    # Line 563
    mov.d	$f14,$f13
    # Line 564
    li	$v0,1
    # Line 563
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s7,0($sp)
    # Line 564
    lw	$s7,__glCurrentContext
    # sd	gp,8(sp)
    lw	$at,__glBeginMode
    # Line 563
    lui	$v1,0xf
    addiu	$v1,$v1,-23960
    # Line 564
    beq	$at,$v0,.L0db0d66c
    # Line 563
    nop
    # Line 566
    # lw $t9, -32700($gp) # &sub_0db10000
    move	$a0,$s7
    addiu	$t9,$t9,-16120
    bal __glMultiplyMatrix
    mov.d	$f13,$f12
    # Line 567
    li	$at,2
    sw	$at,__glBeginMode
    lw	$ra,11764($s7)
    ori	$ra,$ra,0x1
    sw	$ra,11764($s7)
    # Line 568
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0d66c:
    # Line 564
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_DepthRange

# Function: __glReadjustZCounts
# Declared: Line 597 (Source lines: 598-612)
# Address: 0x0db0d68c - 0x0db0d728 (Size: 156 bytes, Frame: 48)
.globl __glReadjustZCounts
.ent __glReadjustZCounts
__glReadjustZCounts:
    # Line 598
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lbu	$at,1540($a0)
    lui	$v0,0xf
    addiu	$v0,$v0,-24100
    beqz	$at,.L0db0d718
    nop
    lbu	$v1,3109($s0)
    beqzl	$v1,.L0db0d71c
    nop
    # Line 599
    lw	$a2,31316($s0)
    lw	$a1,31312($s0)
    beql	$a1,$a2,.L0db0d71c
    nop
    # Line 602
    lw	$t9,31340($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$s0,31232
    lw	$a2,31316($s0)
    lw	$at,31312($s0)
    lui	$v0,0x8000
    xor	$at,$at,$a2
    and	$at,$at,$v0
    beqz	$at,.L0db0d714
    ld	$ra,16($sp)
    # Line 607
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11764($s0)
    lw	$a2,31316($s0)
    ori	$v0,$v0,0x80
    sw	$v0,11764($s0)
.L0db0d714:
    # Line 610
    sw	$a2,31312($s0)
.L0db0d718:
    # ld	gp,8(sp)
.L0db0d71c:
    # Line 612
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glReadjustZCounts

# Function: __glim_Scissor
# Declared: Line 614 (Source lines: 615-642)
# Address: 0x0db0d728 - 0x0db0d88c (Size: 356 bytes, Frame: 224)
.globl __glim_Scissor
.ent __glim_Scissor
__glim_Scissor:
    # Line 616
    li	$v0,1
    # Line 615
    addiu	$sp,$sp,-96
    sd	$s0,16($sp)
    # Line 616
    lw	$s0,__glCurrentContext
    sd	$s2,32($sp)
    # Line 615
    move	$s2,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$a1,0($sp)
    sd	$s3,40($sp)
    move	$s3,$a0
    sd	$gp,24($sp)
    # Line 616
    lw	$at,__glBeginMode
    # Line 615
    lui	$v1,0xf
    addiu	$v1,$v1,-24256
    # Line 616
    beq	$at,$v0,.L0db0d85c
    # Line 615
    addu	$gp,$t9,$v1
    # Line 618
    bltz	$s1,.L0db0d818
    # Line 619
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 618
    bltz	$s2,.L0db0d818
    # Line 619
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 620
    lw	$a4,2412($s0)
    bne	$a4,$s3,.L0db0d7ac
    ld	$v0,0($sp)
    lw	$at,2416($s0)
    bnel	$at,$v0,.L0db0d7b0
    # Line 628
    lw	$at,1696($s0)
    # Line 624
    lw	$v1,2420($s0)
    bnel	$v1,$s1,.L0db0d7b0
    # Line 628
    lw	$at,1696($s0)
    # Line 624
    lw	$a4,2424($s0)
    beql	$a4,$s2,.L0db0d844
    ld	$gp,24($sp)
.L0db0d7ac:
    # Line 628
    lw	$at,1696($s0)
.L0db0d7b0:
    andi	$at,$at,0x4000
    beqz	$at,.L0db0d7c8
    sd	$ra,48($sp)
    # Line 633
    # lw $t9, -25988($gp) # &__glReadjustZCounts
    bal __glReadjustZCounts
    move	$a0,$s0
.L0db0d7c8:
    # Line 640
    move	$a0,$s0
    # Line 639
    sw	$s2,2424($s0)
    # Line 638
    sw	$s1,2420($s0)
    # Line 640
    lw	$t9,11916($s0)
    # Line 637
    ld	$v0,0($sp)
    # Line 636
    sw	$s3,2412($s0)
    # Line 640
    jal	__glReadjustZCounts
    # Line 637
    sw	$v0,2416($s0)
    # Line 641
    lw	$t9,11924($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,48($sp)
    # Line 642
    ld	$s0,16($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    ld	$s1,8($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
    # Line 619
    # lw $t9, -29008($gp) # &__glSetError
.L0db0d818:
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 620
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0d844:
    # Line 628
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db0d85c:
    # Line 616
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_Scissor

# Function: __glim_ClipPlane
# Declared: Line 644 (Source lines: 645-675)
# Address: 0x0db0d88c - 0x0db0d9f4 (Size: 360 bytes, Frame: 208)
.globl __glim_ClipPlane
.ent __glim_ClipPlane
__glim_ClipPlane:
    # Line 648
    li	$v0,1
    # Line 645
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    # Line 648
    lw	$s0,__glCurrentContext
    sd	$s1,32($sp)
    # Line 645
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 648
    lw	$at,__glBeginMode
    # Line 645
    lui	$v1,0xf
    addiu	$v1,$v1,-24612
    # Line 648
    beq	$at,$v0,.L0db0d9cc
    # Line 645
    addu	$gp,$t9,$v1
    # Line 648
    sltiu	$a2,$s1,12288
    bnez	$a2,.L0db0d9a8
    # Line 651
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 652
    lw	$v0,3332($s0)
    addiu	$at,$s1,-12288
    sltu	$at,$at,$v0
    beqz	$at,.L0db0d984
    # Line 656
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 659
    ldc1	$f3,0($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    # Line 660
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    # Line 661
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    # Line 662
    ldc1	$f0,24($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 667
    lw	$a4,29664($s0)
    lbu	$v1,268($a4)
    beqz	$v1,.L0db0d934
    sd	$ra,48($sp)
    # Line 669
    lw	$t9,11908($s0)
    sd	$a4,16($sp)
    move	$a0,$s0
    jal	__glSetError
    move	$a1,$a4
    ld	$a4,16($sp)
.L0db0d934:
    # Line 671
    addiu	$a2,$a4,88
    addiu	$a1,$sp,0
    lw	$a0,1652($s0)
    sll	$a3,$s1,0x4
    lw	$t9,168($a4)
    addu	$a0,$a0,$a3
    lui	$a3,0x3
    jalr	$t9
    subu	$a0,$a0,$a3
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    # Line 674
    li	$at,2
    sw	$at,__glBeginMode
    lw	$s1,11764($s0)
    ori	$s1,$s1,0x1
    sw	$s1,11764($s0)
    # Line 675
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0d984:
    sd	$ra,48($sp)
    # Line 656
    jalr	$t9
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 657
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0d9a8:
    sd	$ra,48($sp)
    # Line 651
    jalr	$t9
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 652
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0d9cc:
    # Line 648
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_ClipPlane

# Function: __glPushModelViewMatrix
# Declared: Line 681 (Source lines: 682-696)
# Address: 0x0db0d9f4 - 0x0db0da88 (Size: 148 bytes, Frame: 32)
.globl __glPushModelViewMatrix
.ent __glPushModelViewMatrix
__glPushModelViewMatrix:
    # Line 691
    li	$a2,68
    # Line 682
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-24972
    # addu	gp,t9,v0
    # Line 689
    lw	$a1,3492($a0)
    lw	$a6,29664($a0)
    lw	$at,29660($a0)
    sll	$v1,$a1,0x4
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    addu	$at,$at,$v1
    addiu	$at,$at,-272
    sltu	$at,$a6,$at
    beqz	$at,.L0db0da70
    # Line 691
    addiu	$a4,$a6,272
    move	$a3,$zero
    move	$a5,$a6
.L0db0da40:
    addu	$a1,$a3,$a4
    addu	$v1,$a3,$a5
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db0da40
    sw	$v1,0($a1)
    # Line 692
    addiu	$a1,$a6,272
    sw	$a1,29664($a0)
.L0db0da64:
    # ld	gp,0(sp)
    # Line 696
    jr	$ra
    addiu	$sp,$sp,32
.L0db0da70:
    # Line 694
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0db0da64
    ld	$ra,8($sp)
.end __glPushModelViewMatrix

# Function: __glPopModelViewMatrix
# Declared: Line 698 (Source lines: 699-724)
# Address: 0x0db0da88 - 0x0db0db38 (Size: 176 bytes, Frame: 48)
.globl __glPopModelViewMatrix
.ent __glPopModelViewMatrix
__glPopModelViewMatrix:
    # Line 699
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    # Line 704
    lw	$a4,29664($a0)
    lw	$at,29660($a0)
    # Line 699
    lui	$v0,0xf
    addiu	$v0,$v0,-25120
    # Line 704
    sltu	$at,$at,$a4
    beqz	$at,.L0db0db14
    # Line 699
    nop
    # Line 714
    lw	$a2,29672($s0)
    # Line 706
    addiu	$a1,$a4,-272
    sw	$a1,29664($s0)
    # Line 714
    lw	$a5,264($a2)
    lw	$v1,-8($a4)
    sd	$ra,24($sp)
    bne	$v1,$a5,.L0db0daf4
    addiu	$a1,$a4,-96
.L0db0dad4:
    # Line 719
    lw	$t9,11868($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 724
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0daf4:
    # Line 716
    sw	$a5,-8($a4)
    # Line 717
    lw	$t9,11892($s0)
    sd	$a1,0($sp)
    addiu	$a1,$a4,-272
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0db0dad4
    ld	$a1,0($sp)
.L0db0db14:
    # Line 721
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 722
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glPopModelViewMatrix

# Function: __glLoadIdentityModelViewMatrix
# Declared: Line 726 (Source lines: 727-744)
# Address: 0x0db0db38 - 0x0db0dbf0 (Size: 184 bytes, Frame: 192)
.globl __glLoadIdentityModelViewMatrix
.ent __glLoadIdentityModelViewMatrix
__glLoadIdentityModelViewMatrix:
    # Line 727
    addiu	$sp,$sp,-64
    sd	$s8,32($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    # sd	gp,24(sp)
    lui	$at,0xf
    addiu	$at,$at,-25296
    # addu	gp,t9,at
    # Line 732
    lw	$t9,11888($a0)
    # Line 731
    lw	$s1,29664($a0)
    sd	$ra,16($sp)
    # Line 732
    jalr	$t9
    move	$a0,$s1
    # Line 733
    addiu	$s8,$s1,88
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s8
    # Line 734
    lw	$t9,11860($s0)
    # Line 735
    sb	$zero,268($s1)
    # Line 736
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 737
    lw	$t9,11864($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s8
    # Line 740
    lw	$a2,29672($s0)
    # Line 741
    lw	$v0,264($a2)
    sw	$v0,264($s1)
    # Line 742
    lw	$t9,11892($s0)
    move	$a1,$s1
    addiu	$s8,$s1,176
    jalr	$t9
    move	$a0,$s8
    # Line 743
    lw	$t9,11868($s0)
    move	$a0,$s0
    move	$a1,$s8
    jalr	$t9
    ld	$s1,8($sp)
    # ld	gp,24(sp)
    # Line 744
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glLoadIdentityModelViewMatrix

# Function: __glComputeInverseTranspose
# Declared: Line 746 (Source lines: 747-751)
# Address: 0x0db0dbf0 - 0x0db0dc54 (Size: 100 bytes, Frame: 192)
.globl __glComputeInverseTranspose
.ent __glComputeInverseTranspose
__glComputeInverseTranspose:
    # Line 747
    addiu	$sp,$sp,-64
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    move	$at,$a1
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-25480
    # addu	gp,t9,v0
    # Line 748
    lw	$t9,11884($a0)
    # Line 747
    move	$s8,$a0
    # Line 748
    addiu	$a0,$at,88
    jalr	$t9
    sd	$a0,32($sp)
    # Line 749
    lw	$t9,11864($s8)
    move	$a0,$s8
    jalr	$t9
    ld	$a1,32($sp)
    # ld	gp,16(sp)
    # Line 751
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$v1,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 750
    sb	$zero,268($v1)
.end __glComputeInverseTranspose

# Function: __glPushProjectionMatrix
# Declared: Line 755 (Source lines: 756-771)
# Address: 0x0db0dc54 - 0x0db0dcf0 (Size: 156 bytes, Frame: 32)
.globl __glPushProjectionMatrix
.ent __glPushProjectionMatrix
__glPushProjectionMatrix:
    # Line 765
    li	$a2,22
    # Line 756
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-25580
    # addu	gp,t9,v0
    # Line 763
    lw	$a1,3496($a0)
    lw	$a6,29672($a0)
    lw	$at,29668($a0)
    sll	$v1,$a1,0x4
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    addu	$at,$at,$v1
    addiu	$at,$at,-272
    sltu	$at,$a6,$at
    beqz	$at,.L0db0dcd8
    # Line 765
    addiu	$a4,$a6,272
    move	$a3,$zero
    move	$a5,$a6
.L0db0dca0:
    addu	$a1,$a3,$a4
    addu	$v1,$a3,$a5
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db0dca0
    sw	$v1,0($a1)
    # Line 766
    lw	$at,264($a6)
    # Line 767
    addiu	$a1,$a6,272
    # Line 766
    sw	$at,536($a6)
    # Line 767
    sw	$a1,29672($a0)
.L0db0dccc:
    # ld	gp,0(sp)
    # Line 771
    jr	$ra
    addiu	$sp,$sp,32
.L0db0dcd8:
    # Line 769
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0db0dccc
    ld	$ra,8($sp)
.end __glPushProjectionMatrix

# Function: __glPopProjectionMatrix
# Declared: Line 773 (Source lines: 774-799)
# Address: 0x0db0dcf0 - 0x0db0dda4 (Size: 180 bytes, Frame: 48)
.globl __glPopProjectionMatrix
.ent __glPopProjectionMatrix
__glPopProjectionMatrix:
    # Line 774
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    # Line 779
    lw	$a4,29672($a0)
    lw	$at,29668($a0)
    # Line 774
    lui	$v0,0xf
    addiu	$v0,$v0,-25736
    # Line 779
    sltu	$at,$at,$a4
    beqz	$at,.L0db0dd80
    # Line 774
    nop
    # Line 788
    lw	$a1,29664($s0)
    # Line 781
    addiu	$a2,$a4,-272
    sw	$a2,29672($s0)
    # Line 788
    lw	$a5,-8($a4)
    lw	$v1,264($a1)
    sd	$ra,24($sp)
    bne	$v1,$a5,.L0db0dd60
    addiu	$a3,$a1,176
.L0db0dd3c:
    # Line 794
    lw	$t9,11868($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a3
    # Line 799
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0dd60:
    # Line 791
    sw	$a5,264($a1)
    # Line 792
    lw	$t9,11892($s0)
    sd	$a3,0($sp)
    addiu	$a2,$a4,-272
    jalr	$t9
    move	$a0,$a3
    b	.L0db0dd3c
    ld	$a3,0($sp)
.L0db0dd80:
    # Line 796
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 797
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glPopProjectionMatrix

# Function: __glLoadIdentityProjectionMatrix
# Declared: Line 801 (Source lines: 802-821)
# Address: 0x0db0dda4 - 0x0db0de64 (Size: 192 bytes, Frame: 192)
.globl __glLoadIdentityProjectionMatrix
.ent __glLoadIdentityProjectionMatrix
__glLoadIdentityProjectionMatrix:
    # Line 802
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    # sd	gp,24(sp)
    lui	$at,0xf
    addiu	$at,$at,-25916
    # addu	gp,t9,at
    # Line 807
    lw	$t9,11888($a0)
    # Line 806
    lw	$s1,29672($a0)
    sd	$ra,16($sp)
    # Line 807
    jalr	$t9
    move	$a0,$s1
    # Line 809
    lw	$t9,11860($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 810
    lw	$a0,29676($s0)
    addiu	$a0,$a0,1
    beqz	$a0,.L0db0de4c
    sw	$a0,29676($s0)
    # Line 813
    move	$a4,$a0
    sd	$s8,32($sp)
    sw	$a0,264($s1)
.L0db0de04:
    # Line 817
    lw	$a1,29664($s0)
    # Line 818
    sw	$a4,264($a1)
    # Line 819
    lw	$t9,11892($s0)
    move	$a2,$s1
    addiu	$s8,$a1,176
    jalr	$t9
    move	$a0,$s8
    # Line 820
    lw	$t9,11868($s0)
    move	$a0,$s0
    move	$a1,$s8
    jalr	$t9
    ld	$s1,8($sp)
    # ld	gp,24(sp)
    # Line 821
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0de4c:
    # Line 811
    # lw $t9, -26072($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    move	$a0,$s0
    sd	$s8,32($sp)
    b	.L0db0de04
    lw	$a4,264($s1)
.end __glLoadIdentityProjectionMatrix

# Function: __glPushTextureMatrix
# Declared: Line 825 (Source lines: 826-840)
# Address: 0x0db0de64 - 0x0db0def8 (Size: 148 bytes, Frame: 32)
.globl __glPushTextureMatrix
.ent __glPushTextureMatrix
__glPushTextureMatrix:
    # Line 835
    li	$a2,22
    # Line 826
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-26108
    # addu	gp,t9,v0
    # Line 833
    lw	$a1,3500($a0)
    lw	$a6,29684($a0)
    lw	$at,29680($a0)
    sll	$v1,$a1,0x4
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    addu	$at,$at,$v1
    addiu	$at,$at,-272
    sltu	$at,$a6,$at
    beqz	$at,.L0db0dee0
    # Line 835
    addiu	$a4,$a6,272
    move	$a3,$zero
    move	$a5,$a6
.L0db0deb0:
    addu	$a1,$a3,$a4
    addu	$v1,$a3,$a5
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db0deb0
    sw	$v1,0($a1)
    # Line 836
    addiu	$a1,$a6,272
    sw	$a1,29684($a0)
.L0db0ded4:
    # ld	gp,0(sp)
    # Line 840
    jr	$ra
    addiu	$sp,$sp,32
.L0db0dee0:
    # Line 838
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0db0ded4
    ld	$ra,8($sp)
.end __glPushTextureMatrix

# Function: __glPopTextureMatrix
# Declared: Line 842 (Source lines: 843-855)
# Address: 0x0db0def8 - 0x0db0df50 (Size: 88 bytes, Frame: 32)
.globl __glPopTextureMatrix
.ent __glPopTextureMatrix
__glPopTextureMatrix:
    # Line 843
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 848
    lw	$a2,29684($a0)
    lw	$at,29680($a0)
    # Line 843
    lui	$v0,0xf
    addiu	$v0,$v0,-26256
    # Line 848
    sltu	$at,$at,$a2
    beqz	$at,.L0db0df30
    # Line 843
    nop
    # Line 850
    addiu	$v1,$a2,-272
    # ld	gp,0(sp)
    # Line 855
    addiu	$sp,$sp,32
    jr	$ra
    # Line 850
    sw	$v1,29684($a0)
.L0db0df30:
    # Line 852
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 853
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPopTextureMatrix

# Function: __glLoadIdentityTextureMatrix
# Declared: Line 857 (Source lines: 858-863)
# Address: 0x0db0df50 - 0x0db0dfa4 (Size: 84 bytes, Frame: 48)
.globl __glLoadIdentityTextureMatrix
.ent __glLoadIdentityTextureMatrix
__glLoadIdentityTextureMatrix:
    # Line 858
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # sd	gp,16(sp)
    lui	$at,0xf
    addiu	$at,$at,-26344
    # addu	gp,t9,at
    # Line 861
    lw	$t9,11888($a0)
    # Line 859
    lw	$a0,29684($a0)
    sd	$ra,0($sp)
    # Line 861
    jalr	$t9
    sd	$a0,24($sp)
    # Line 862
    lw	$t9,11860($s8)
    move	$a0,$s8
    jalr	$t9
    ld	$a1,24($sp)
    # Line 863
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glLoadIdentityTextureMatrix

# Function: __glPushColorMatrix
# Declared: Line 867 (Source lines: 868-882)
# Address: 0x0db0dfa4 - 0x0db0e038 (Size: 148 bytes, Frame: 32)
.globl __glPushColorMatrix
.ent __glPushColorMatrix
__glPushColorMatrix:
    # Line 877
    li	$a2,22
    # Line 868
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-26428
    # addu	gp,t9,v0
    # Line 875
    lw	$a1,3504($a0)
    lw	$a6,29692($a0)
    lw	$at,29688($a0)
    sll	$v1,$a1,0x4
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x4
    addu	$at,$at,$v1
    addiu	$at,$at,-272
    sltu	$at,$a6,$at
    beqz	$at,.L0db0e020
    # Line 877
    addiu	$a4,$a6,272
    move	$a3,$zero
    move	$a5,$a6
.L0db0dff0:
    addu	$a1,$a3,$a4
    addu	$v1,$a3,$a5
    addiu	$a3,$a3,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0db0dff0
    sw	$v1,0($a1)
    # Line 878
    addiu	$a1,$a6,272
    sw	$a1,29692($a0)
.L0db0e014:
    # ld	gp,0(sp)
    # Line 882
    jr	$ra
    addiu	$sp,$sp,32
.L0db0e020:
    # Line 880
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1283
    b	.L0db0e014
    ld	$ra,8($sp)
.end __glPushColorMatrix

# Function: __glPopColorMatrix
# Declared: Line 884 (Source lines: 885-898)
# Address: 0x0db0e038 - 0x0db0e0a0 (Size: 104 bytes, Frame: 32)
.globl __glPopColorMatrix
.ent __glPopColorMatrix
__glPopColorMatrix:
    # Line 885
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 890
    lw	$a3,29692($a0)
    lw	$at,29688($a0)
    # Line 885
    lui	$v0,0xf
    addiu	$v0,$v0,-26576
    # Line 890
    sltu	$at,$at,$a3
    beqz	$at,.L0db0e084
    # Line 885
    nop
    # Line 897
    # lw $t9, -29740($gp) # &__glGenMatrixSignature
    addiu	$a1,$a3,-272
    # Line 892
    addiu	$v1,$a3,-272
    # Line 897
    jal	__glGenMatrixSignature
    # Line 892
    sw	$v1,29692($a0)
    # Line 898
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0e084:
    # Line 894
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
    # Line 895
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPopColorMatrix

# Function: __glLoadIdentityColorMatrix
# Declared: Line 900 (Source lines: 901-908)
# Address: 0x0db0e0a0 - 0x0db0e10c (Size: 108 bytes, Frame: 48)
.globl __glLoadIdentityColorMatrix
.ent __glLoadIdentityColorMatrix
__glLoadIdentityColorMatrix:
    # Line 901
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    # sd	gp,24(sp)
    lui	$at,0xf
    addiu	$at,$at,-26680
    # addu	gp,t9,at
    # Line 904
    lw	$t9,11888($a0)
    # Line 902
    lw	$s1,29692($a0)
    sd	$ra,16($sp)
    # Line 904
    jalr	$t9
    move	$a0,$s1
    # Line 905
    # lw $t9, -29740($gp) # &__glGenMatrixSignature
    move	$a0,$s0
    jal	__glGenMatrixSignature
    move	$a1,$s1
    # Line 906
    lw	$t9,11860($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # ld	gp,24(sp)
    # Line 908
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glLoadIdentityColorMatrix

# Function: __glDoLoadMatrix
# Declared: Line 912 (Source lines: 913-963)
# Address: 0x0db0e10c - 0x0db0e2e4 (Size: 472 bytes, Frame: 192)
.globl __glDoLoadMatrix
.ent __glDoLoadMatrix
__glDoLoadMatrix:
    # Line 917
    li	$at,5888
    # Line 913
    addiu	$sp,$sp,-64
    sd	$a0,8($sp)
    # sd	gp,32(sp)
    # Line 917
    lw	$a2,1648($a0)
    # Line 913
    lui	$v0,0xf
    addiu	$v0,$v0,-26788
    # Line 917
    beq	$a2,$at,.L0db0e254
    # Line 913
    nop
    # Line 917
    li	$v1,5889
    beq	$a2,$v1,.L0db0e158
    li	$a3,5890
    beq	$a2,$a3,.L0db0e220
    li	$at,6144
    beq	$a2,$at,.L0db0e1e0
    ld	$a0,8($sp)
.L0db0e14c:
    # ld	gp,32(sp)
    # Line 963
    jr	$ra
    addiu	$sp,$sp,64
.L0db0e158:
    ld	$a0,8($sp)
    # Line 934
    lw	$t9,11880($a0)
    # Line 933
    lw	$a0,29672($a0)
    sd	$ra,40($sp)
    # Line 934
    jalr	$t9
    sd	$a0,0($sp)
    ld	$t9,8($sp)
    # Line 936
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,0($sp)
    ld	$at,8($sp)
    # Line 937
    lw	$a0,29676($at)
    addiu	$a0,$a0,1
    beqz	$a0,.L0db0e2cc
    sw	$a0,29676($at)
    # Line 940
    move	$a4,$a0
    ld	$a3,0($sp)
    sw	$a0,264($a3)
.L0db0e1a4:
    ld	$t9,8($sp)
    # Line 944
    lw	$a1,29664($t9)
    # Line 945
    sw	$a4,264($a1)
    # Line 946
    lw	$t9,11892($t9)
    ld	$a2,0($sp)
    addiu	$a0,$a1,176
    jalr	$t9
    sd	$a0,24($sp)
    ld	$t9,8($sp)
    # Line 947
    move	$a0,$t9
    lw	$t9,11868($t9)
    jalr	$t9
    ld	$a1,24($sp)
    b	.L0db0e14c
    ld	$ra,40($sp)
.L0db0e1e0:
    # Line 958
    lw	$t9,11880($a0)
    # Line 957
    lw	$a0,29692($a0)
    sd	$ra,40($sp)
    # Line 958
    jalr	$t9
    sd	$a0,0($sp)
    # Line 959
    # lw $t9, -29740($gp) # &__glGenMatrixSignature
    ld	$a0,8($sp)
    jal	__glGenMatrixSignature
    ld	$a1,0($sp)
    ld	$t9,8($sp)
    # Line 960
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,0($sp)
    b	.L0db0e14c
    ld	$ra,40($sp)
.L0db0e220:
    ld	$a0,8($sp)
    # Line 952
    lw	$t9,11880($a0)
    # Line 951
    lw	$a0,29684($a0)
    sd	$ra,40($sp)
    # Line 952
    jalr	$t9
    sd	$a0,0($sp)
    ld	$t9,8($sp)
    # Line 953
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,0($sp)
    b	.L0db0e14c
    ld	$ra,40($sp)
.L0db0e254:
    ld	$a0,8($sp)
    # Line 920
    lw	$t9,11880($a0)
    # Line 919
    lw	$a0,29664($a0)
    sd	$ra,40($sp)
    # Line 920
    jalr	$t9
    sd	$a0,0($sp)
    # Line 921
    ld	$a1,0($sp)
    # Line 923
    ld	$a0,8($sp)
    # Line 921
    li	$a2,1
    sb	$a2,268($a1)
    # Line 923
    lw	$t9,11860($a0)
    jalr	$t9
    nop
    ld	$t9,8($sp)
    # Line 926
    lw	$a2,29672($t9)
    # Line 927
    ld	$a0,0($sp)
    lw	$ra,264($a2)
    sw	$ra,264($a0)
    # Line 928
    lw	$t9,11892($t9)
    move	$a1,$a0
    addiu	$a0,$a0,176
    jalr	$t9
    sd	$a0,16($sp)
    ld	$t9,8($sp)
    # Line 929
    move	$a0,$t9
    lw	$t9,11868($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0db0e14c
    ld	$ra,40($sp)
.L0db0e2cc:
    # Line 938
    # lw $t9, -26072($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    ld	$a0,8($sp)
    ld	$a4,0($sp)
    b	.L0db0e1a4
    lw	$a4,264($a4)
.end __glDoLoadMatrix

# Function: __glDoMultMatrix
# Declared: Line 965 (Source lines: 968-1016)
# Address: 0x0db0e2e4 - 0x0db0e4d0 (Size: 492 bytes, Frame: 224)
.globl __glDoMultMatrix
.ent __glDoMultMatrix
__glDoMultMatrix:
    # Line 968
    move	$a4,$a2
    move	$a5,$a1
    # Line 972
    li	$at,5888
    # Line 968
    addiu	$sp,$sp,-96
    sd	$a0,40($sp)
    # sd	gp,48(sp)
    # Line 972
    lw	$a6,1648($a0)
    # Line 968
    lui	$v0,0xf
    addiu	$v0,$v0,-27260
    # Line 972
    beq	$a6,$at,.L0db0e440
    # Line 968
    nop
    # Line 972
    li	$v1,5889
    beq	$a6,$v1,.L0db0e338
    li	$a3,5890
    beq	$a6,$a3,.L0db0e408
    li	$at,6144
    beq	$a6,$at,.L0db0e3c4
    ld	$a0,40($sp)
.L0db0e32c:
    # ld	gp,48(sp)
    # Line 1016
    jr	$ra
    addiu	$sp,$sp,96
.L0db0e338:
    ld	$a0,40($sp)
    # Line 987
    move	$a2,$a5
    move	$t9,$a4
    # Line 986
    lw	$a1,29672($a0)
    sd	$ra,56($sp)
    # Line 987
    jalr	$a4
    sd	$a1,16($sp)
    ld	$t9,40($sp)
    # Line 989
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$at,40($sp)
    # Line 990
    lw	$a0,29676($at)
    addiu	$a0,$a0,1
    beqz	$a0,.L0db0e4b8
    sw	$a0,29676($at)
    # Line 993
    move	$a4,$a0
    ld	$a3,16($sp)
    sw	$a0,264($a3)
.L0db0e388:
    ld	$t9,40($sp)
    # Line 997
    lw	$a1,29664($t9)
    # Line 998
    sw	$a4,264($a1)
    # Line 999
    lw	$t9,11892($t9)
    ld	$a2,16($sp)
    addiu	$a0,$a1,176
    jalr	$t9
    sd	$a0,8($sp)
    ld	$t9,40($sp)
    # Line 1000
    move	$a0,$t9
    lw	$t9,11868($t9)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0db0e32c
    ld	$ra,56($sp)
.L0db0e3c4:
    # Line 1011
    move	$a2,$a5
    move	$t9,$a4
    # Line 1010
    lw	$a1,29692($a0)
    sd	$ra,56($sp)
    # Line 1011
    jalr	$a4
    sd	$a1,16($sp)
    # Line 1012
    # lw $t9, -29740($gp) # &__glGenMatrixSignature
    ld	$a0,40($sp)
    jal	__glGenMatrixSignature
    ld	$a1,16($sp)
    ld	$t9,40($sp)
    # Line 1013
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0db0e32c
    ld	$ra,56($sp)
.L0db0e408:
    ld	$a0,40($sp)
    # Line 1005
    move	$a2,$a5
    move	$t9,$a4
    # Line 1004
    lw	$a1,29684($a0)
    sd	$ra,56($sp)
    # Line 1005
    jalr	$a4
    sd	$a1,16($sp)
    ld	$t9,40($sp)
    # Line 1006
    move	$a0,$t9
    lw	$t9,11860($t9)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0db0e32c
    ld	$ra,56($sp)
.L0db0e440:
    sd	$a4,24($sp)
    sd	$a5,32($sp)
    ld	$a0,40($sp)
    # Line 975
    move	$a2,$a5
    move	$t9,$a4
    # Line 974
    lw	$a1,29664($a0)
    sd	$ra,56($sp)
    # Line 975
    jalr	$a4
    sd	$a1,16($sp)
    # Line 976
    ld	$a1,16($sp)
    # Line 978
    ld	$a0,40($sp)
    # Line 976
    li	$ra,1
    sb	$ra,268($a1)
    # Line 978
    lw	$t9,11860($a0)
    jalr	$t9
    nop
    # Line 981
    ld	$a0,40($sp)
    ld	$a1,16($sp)
    ld	$t9,24($sp)
    ld	$a2,32($sp)
    addiu	$a1,$a1,176
    jalr	$t9
    sd	$a1,0($sp)
    ld	$t9,40($sp)
    # Line 982
    move	$a0,$t9
    lw	$t9,11868($t9)
    jalr	$t9
    ld	$a1,0($sp)
    b	.L0db0e32c
    ld	$ra,56($sp)
.L0db0e4b8:
    # Line 991
    # lw $t9, -26072($gp) # &__glInvalidateSequenceNumbers
    bal __glInvalidateSequenceNumbers
    ld	$a0,40($sp)
    ld	$a4,16($sp)
    b	.L0db0e388
    lw	$a4,264($a4)
.end __glDoMultMatrix

# Function: __glDoRotate
# Declared: Line 1020 (Source lines: 1022-1061)
# Address: 0x0db0e4d0 - 0x0db0e67c (Size: 428 bytes, Frame: 128)
.globl __glDoRotate
.ent __glDoRotate
__glDoRotate:
    # Line 1022
    addiu	$sp,$sp,-256
    sdc1	$f20,136($sp)
    mov.s	$f20,$f14
    sdc1	$f15,128($sp)
    # Line 1031
    addiu	$a1,$sp,0
    sdc1	$f24,120($sp)
    # Line 1022
    mov.s	$f24,$f13
    # Line 1029
    swc1	$f16,8($sp)
    # sd	gp,192(sp)
    # Line 1022
    lui	$at,0xf
    addiu	$at,$at,-27752
    # addu	gp,t9,at
    # Line 1030
    mtc1	$zero,$f0
    # Line 1028
    swc1	$f15,4($sp)
    # Line 1027
    swc1	$f14,0($sp)
    # Line 1030
    swc1	$f0,12($sp)
    sd	$s0,176($sp)
    # Line 1031
    lw	$t9,11912($a0)
    # Line 1022
    move	$s0,$a0
    sd	$ra,184($sp)
    # Line 1031
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 1034
    # lw $t9, -22920($gp) # &__rcis
    lwc1	$f12,_lit_3c8efa35
    jal	__rcis
    mul.s	$f12,$f24,$f12
    # Line 1036
    lwc1	$f16,16($sp)
    # Line 1037
    lwc1	$f15,24($sp)
    # Line 1036
    lwc1	$f13,20($sp)
    # Line 1038
    mul.s	$f24,$f15,$f16
    # Line 1036
    lwc1	$f14,_lit_3f800000
    # Line 1037
    mul.s	$f15,$f15,$f13
    # Line 1036
    sub.s	$f14,$f14,$f0
    mul.s	$f13,$f13,$f16
    # Line 1037
    mul.s	$f15,$f15,$f14
    sdc1	$f0,160($sp)
    # Line 1036
    mul.s	$f13,$f13,$f14
    sdc1	$f2,168($sp)
    # Line 1040
    addiu	$a0,$sp,32
    lw	$t9,11888($s0)
    # Line 1038
    mul.s	$f24,$f24,$f14
    sdc1	$f15,144($sp)
    # Line 1040
    jalr	$t9
    sdc1	$f13,152($sp)
    # Line 1052
    lwc1	$f4,24($sp)
    # Line 1053
    ldc1	$f10,168($sp)
    mul.s	$f7,$f10,$f4
    # Line 1042
    lwc1	$f8,16($sp)
    # Line 1047
    lwc1	$f11,20($sp)
    # Line 1043
    mul.s	$f5,$f10,$f8
    # Line 1054
    ldc1	$f14,152($sp)
    # Line 1048
    mul.s	$f10,$f10,$f11
    # Line 1053
    sub.s	$f9,$f14,$f7
    # Line 1054
    add.s	$f7,$f7,$f14
    # Line 1048
    add.s	$f12,$f10,$f24
    # Line 1044
    ldc1	$f3,144($sp)
    # Line 1042
    mul.s	$f8,$f8,$f8
    # Line 1044
    add.s	$f13,$f5,$f3
    # Line 1047
    mul.s	$f11,$f11,$f11
    mtc1	$zero,$f6
    # Line 1043
    sub.s	$f3,$f3,$f5
    lwc1	$f1,_lit_3f800000
    # Line 1054
    c.eq.s	$f20,$f6
    # Line 1052
    mul.s	$f4,$f4,$f4
    # Line 1047
    sub.s	$f5,$f1,$f11
    # Line 1044
    swc1	$f13,56($sp)
    # Line 1052
    ldc1	$f13,160($sp)
    # Line 1043
    swc1	$f3,68($sp)
    # Line 1042
    sub.s	$f3,$f1,$f8
    # Line 1047
    mul.s	$f5,$f5,$f13
    # Line 1056
    li	$v0,2
    # Line 1052
    sub.s	$f1,$f1,$f4
    # Line 1042
    mul.s	$f3,$f3,$f13
    ldc1	$f20,136($sp)
    # Line 1049
    sub.s	$f10,$f24,$f10
    # Line 1052
    mul.s	$f1,$f1,$f13
    ldc1	$f24,120($sp)
    # Line 1047
    add.s	$f5,$f5,$f11
    # Line 1048
    swc1	$f12,64($sp)
    # Line 1049
    swc1	$f10,40($sp)
    # Line 1042
    add.s	$f3,$f3,$f8
    # Line 1053
    swc1	$f9,48($sp)
    # Line 1054
    swc1	$f7,36($sp)
    # Line 1052
    add.s	$f1,$f1,$f4
    # Line 1047
    swc1	$f5,52($sp)
    # Line 1042
    swc1	$f3,32($sp)
    # Line 1054
    bc1f	.L0db0e64c
    # Line 1052
    swc1	$f1,72($sp)
    ldc1	$f20,128($sp)
    # Line 1054
    c.eq.s	$f20,$f6
    ldc1	$f24,120($sp)
    bc1f	.L0db0e64c
    ldc1	$f20,136($sp)
    # Line 1056
    b	.L0db0e654
    sw	$v0,96($sp)
.L0db0e64c:
    # Line 1058
    li	$v1,1
    sw	$v1,96($sp)
.L0db0e654:
    # Line 1060
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    move	$a0,$s0
    la	$a2,__glMultiplyMatrix
    bal __glDoMultMatrix
    addiu	$a1,$sp,32
    # Line 1061
    ld	$ra,184($sp)
    # ld	gp,192(sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glDoRotate

# Function: __glScaleMatrix
# Declared: Line 1068 (Source lines: 1075-1105)
# Address: 0x0db0e67c - 0x0db0e71c (Size: 160 bytes, Frame: 0)
.globl __glScaleMatrix
.ent __glScaleMatrix
__glScaleMatrix:
    # Line 1098
    lwc1	$f10,36($a1)
    # Line 1077
    lwc1	$f2,8($a2)
    # Line 1101
    lwc1	$f9,32($a1)
    # Line 1098
    mul.s	$f10,$f10,$f2
    # Line 1076
    lwc1	$f7,4($a2)
    # Line 1091
    lwc1	$f8,28($a1)
    # Line 1101
    mul.s	$f9,$f9,$f2
    # Line 1090
    lwc1	$f6,24($a1)
    # Line 1091
    mul.s	$f8,$f8,$f7
    # Line 1089
    lwc1	$f5,20($a1)
    # Line 1090
    mul.s	$f6,$f6,$f7
    # Line 1092
    lwc1	$f4,16($a1)
    # Line 1089
    mul.s	$f5,$f5,$f7
    # Line 1092
    mul.s	$f4,$f4,$f7
    # Line 1100
    lwc1	$f1,44($a1)
    # Line 1099
    lwc1	$f0,40($a1)
    # Line 1100
    mul.s	$f1,$f1,$f2
    # Line 1075
    lwc1	$f7,0($a2)
    # Line 1099
    mul.s	$f0,$f0,$f2
    # Line 1081
    lwc1	$f2,8($a1)
    # Line 1082
    lwc1	$f3,12($a1)
    # Line 1081
    mul.s	$f2,$f2,$f7
    # Line 1102
    swc1	$f10,36($a1)
    # Line 1101
    swc1	$f9,32($a1)
    # Line 1082
    mul.s	$f3,$f3,$f7
    # Line 1104
    swc1	$f1,44($a1)
    # Line 1080
    lwc1	$f1,4($a1)
    # Line 1103
    swc1	$f0,40($a1)
    # Line 1083
    lwc1	$f0,0($a1)
    # Line 1080
    mul.s	$f1,$f1,$f7
    # Line 1095
    swc1	$f8,28($a1)
    # Line 1094
    swc1	$f6,24($a1)
    # Line 1083
    mul.s	$f0,$f0,$f7
    # Line 1093
    swc1	$f5,20($a1)
    # Line 1092
    swc1	$f4,16($a1)
    # Line 1086
    swc1	$f3,12($a1)
    # Line 1085
    swc1	$f2,8($a1)
    # Line 1084
    swc1	$f1,4($a1)
    # Line 1105
    jr	$ra
    # Line 1083
    swc1	$f0,0($a1)
.end __glScaleMatrix

# Function: __glDoScale
# Declared: Line 1107 (Source lines: 1108-1115)
# Address: 0x0db0e71c - 0x0db0e760 (Size: 68 bytes, Frame: 192)
.globl __glDoScale
.ent __glDoScale
__glDoScale:
    # Line 1108
    addiu	$sp,$sp,-64
    # Line 1114
    addiu	$a1,$sp,0
    # Line 1113
    swc1	$f15,8($sp)
    # Line 1112
    swc1	$f14,4($sp)
    # sd	gp,24(sp)
    # Line 1108
    lui	$at,0xf
    addiu	$at,$at,-28340
    # addu	gp,t9,at
    # Line 1114
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    # Line 1111
    swc1	$f13,0($sp)
    sd	$ra,16($sp)
    # Line 1114
    bal __glDoMultMatrix
    la	$a2,__glScaleMatrix
    # Line 1115
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoScale

# Function: __glTranslateMatrix
# Declared: Line 1125 (Source lines: 1126-1150)
# Address: 0x0db0e760 - 0x0db0e834 (Size: 212 bytes, Frame: 0)
.globl __glTranslateMatrix
.ent __glTranslateMatrix
__glTranslateMatrix:
    # Line 1126
    lw	$at,64($a1)
    sltiu	$at,$at,4
    bnez	$at,.L0db0e774
    # Line 1132
    li	$v0,3
    sw	$v0,64($a1)
.L0db0e774:
    # Line 1140
    lwc1	$f0,20($a1)
    # Line 1136
    lwc1	$f10,4($a2)
    # Line 1140
    lwc1	$f6,4($a1)
    mul.s	$f0,$f0,$f10
    # Line 1135
    lwc1	$f1,0($a2)
    # Line 1140
    mul.s	$f6,$f6,$f1
    # Line 1142
    lwc1	$f7,40($a1)
    # Line 1137
    lwc1	$f8,8($a2)
    # Line 1142
    mul.s	$f7,$f7,$f8
    lwc1	$f4,24($a1)
    lwc1	$f5,8($a1)
    mul.s	$f4,$f4,$f10
    mul.s	$f5,$f5,$f1
    # Line 1144
    lwc1	$f9,28($a1)
    lwc1	$f2,12($a1)
    mul.s	$f9,$f9,$f10
    mul.s	$f2,$f2,$f1
    lwc1	$f3,44($a1)
    # Line 1142
    add.s	$f5,$f5,$f4
    # Line 1144
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f9
    # Line 1140
    lwc1	$f9,36($a1)
    # Line 1142
    add.s	$f5,$f5,$f7
    # Line 1140
    mul.s	$f9,$f9,$f8
    # Line 1146
    lwc1	$f4,0($a1)
    # Line 1144
    add.s	$f2,$f2,$f3
    lwc1	$f3,60($a1)
    # Line 1146
    mul.s	$f4,$f4,$f1
    lwc1	$f7,16($a1)
    # Line 1144
    add.s	$f3,$f3,$f2
    # Line 1142
    lwc1	$f2,56($a1)
    # Line 1146
    mul.s	$f7,$f7,$f10
    # Line 1142
    add.s	$f2,$f2,$f5
    # Line 1146
    lwc1	$f5,32($a1)
    # Line 1140
    add.s	$f6,$f6,$f0
    # Line 1146
    mul.s	$f5,$f5,$f8
    add.s	$f4,$f4,$f7
    # Line 1140
    add.s	$f6,$f6,$f9
    lwc1	$f1,52($a1)
    # Line 1146
    add.s	$f4,$f4,$f5
    lwc1	$f0,48($a1)
    # Line 1140
    add.s	$f1,$f1,$f6
    # Line 1149
    swc1	$f3,60($a1)
    # Line 1146
    add.s	$f0,$f0,$f4
    # Line 1148
    swc1	$f2,56($a1)
    # Line 1147
    swc1	$f1,52($a1)
    # Line 1150
    jr	$ra
    # Line 1146
    swc1	$f0,48($a1)
.end __glTranslateMatrix

# Function: __glDoTranslate
# Declared: Line 1152 (Source lines: 1153-1160)
# Address: 0x0db0e834 - 0x0db0e878 (Size: 68 bytes, Frame: 192)
.globl __glDoTranslate
.ent __glDoTranslate
__glDoTranslate:
    # Line 1153
    addiu	$sp,$sp,-64
    # Line 1159
    addiu	$a1,$sp,0
    # Line 1158
    swc1	$f15,8($sp)
    # Line 1157
    swc1	$f14,4($sp)
    # sd	gp,24(sp)
    # Line 1153
    lui	$at,0xf
    addiu	$at,$at,-28620
    # addu	gp,t9,at
    # Line 1159
    # lw $t9, -25920($gp) # &__glDoMultMatrix
    # Line 1156
    swc1	$f13,0($sp)
    sd	$ra,16($sp)
    # Line 1159
    bal __glDoMultMatrix
    la	$a2,__glTranslateMatrix
    # Line 1160
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoTranslate

# Function: __glComputeClipBox
# Declared: Line 1170 (Source lines: 1171-1213)
# Address: 0x0db0e878 - 0x0db0e994 (Size: 284 bytes, Frame: 0)
.globl __glComputeClipBox
.ent __glComputeClipBox
__glComputeClipBox:
    # Line 1171
    lw	$at,1696($a0)
    # Line 1196
    move	$a5,$zero
    # Line 1171
    andi	$at,$at,0x4000
    beqz	$at,.L0db0e934
    # Line 1195
    move	$a3,$zero
    # Line 1179
    lw	$a3,2412($a0)
    # Line 1181
    lw	$a4,2420($a0)
    # Line 1180
    lw	$a5,2416($a0)
    # Line 1182
    lw	$a2,2424($a0)
    # Line 1181
    addu	$a4,$a4,$a3
    # Line 1184
    bltz	$a4,.L0db0e8e0
    # Line 1182
    addu	$a2,$a2,$a5
    # Line 1184
    bltz	$a2,.L0db0e8e0
    slt	$at,$a3,$a4
    beqz	$at,.L0db0e8e0
    slt	$v0,$a5,$a2
    beqzl	$v0,.L0db0e8e4
    # Line 1187
    move	$a2,$zero
    # Line 1184
    lw	$a6,3412($a0)
    slt	$v1,$a3,$a6
    beqzl	$v1,.L0db0e8e4
    # Line 1187
    move	$a2,$zero
    # Line 1184
    lw	$a7,3416($a0)
    slt	$a1,$a5,$a7
    bnez	$a1,.L0db0e954
    nop
.L0db0e8e0:
    # Line 1187
    move	$a2,$zero
.L0db0e8e4:
    move	$a4,$zero
    move	$a5,$zero
    move	$a3,$zero
.L0db0e8f0:
    # Line 1201
    lw	$at,3372($a0)
.L0db0e8f4:
    # Line 1202
    lbu	$v0,4552($a0)
    lw	$a6,3376($a0)
    addu	$v1,$at,$a4
    # Line 1201
    addu	$at,$at,$a3
    # Line 1202
    sw	$v1,29712($a0)
    beqz	$v0,.L0db0e940
    # Line 1201
    sw	$at,29704($a0)
    # Line 1205
    lw	$a1,3416($a0)
    # Line 1207
    subu	$at,$a1,$a5
    # Line 1205
    subu	$a1,$a1,$a2
    addu	$a1,$a1,$a6
    # Line 1207
    addu	$at,$at,$a6
    sw	$at,29716($a0)
    # Line 1205
    sw	$a1,29708($a0)
    # Line 1213
    jr	$ra
    nop
.L0db0e934:
    # Line 1198
    lw	$a2,3416($a0)
    b	.L0db0e8f0
    # Line 1197
    lw	$a4,3412($a0)
.L0db0e940:
    # Line 1211
    addu	$v1,$a6,$a2
    sw	$v1,29716($a0)
    # Line 1210
    addu	$v0,$a6,$a5
    # Line 1213
    jr	$ra
    # Line 1210
    sw	$v0,29708($a0)
.L0db0e954:
    # Line 1187
    bltz	$a3,.L0db0e984
    nop
.L0db0e95c:
    # Line 1189
    bltz	$a5,.L0db0e98c
.L0db0e960:
    # Line 1190
    slt	$a1,$a6,$a4
    beqz	$a1,.L0db0e974
    # Line 1191
    slt	$at,$a7,$a2
    move	$a4,$a6
    slt	$at,$a7,$a2
.L0db0e974:
    beqzl	$at,.L0db0e8f4
    # Line 1201
    lw	$at,3372($a0)
    # Line 1192
    b	.L0db0e8f0
    move	$a2,$a7
.L0db0e984:
    b	.L0db0e95c
    # Line 1189
    move	$a3,$zero
.L0db0e98c:
    b	.L0db0e960
    # Line 1190
    move	$a5,$zero
.end __glComputeClipBox

# Function: __glReCompute2DMatrix
# Declared: Line 1509 (Source lines: 1510-1528)
# Address: 0x0db0e994 - 0x0db0ea34 (Size: 160 bytes, Frame: 0)
.globl __glReCompute2DMatrix
.ent __glReCompute2DMatrix
__glReCompute2DMatrix:
    # Line 1510
    lw	$v0,64($a1)
    lui	$v1,0xf
    addiu	$v1,$v1,-28972
    sltiu	$v0,$v0,2
    bnez	$v0,.L0db0ea2c
    nop
    # Line 1517
    lwc1	$f3,1624($a0)
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f3
    swc1	$f0,29752($a0)
    # Line 1518
    lwc1	$f0,1632($a0)
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f0
    swc1	$f2,29756($a0)
    # Line 1519
    lwc1	$f1,16($a1)
    mul.s	$f1,$f1,$f3
    swc1	$f1,29768($a0)
    # Line 1520
    lwc1	$f2,20($a1)
    mul.s	$f2,$f2,$f0
    swc1	$f2,29772($a0)
    # Line 1521
    lwc1	$f1,40($a1)
    swc1	$f1,29792($a0)
    # Line 1522
    lwc1	$f2,48($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,1628($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,29800($a0)
    # Line 1523
    lwc1	$f3,52($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,1636($a0)
    add.s	$f2,$f2,$f3
    swc1	$f2,29804($a0)
    # Line 1525
    lwc1	$f0,_lit_3f800000
    # Line 1524
    lwc1	$f1,56($a1)
    # Line 1525
    swc1	$f0,29812($a0)
    # Line 1524
    swc1	$f1,29808($a0)
    # Line 1526
    lw	$a2,64($a1)
    sw	$a2,29816($a0)
.L0db0ea2c:
    # Line 1528
    jr	$ra
    nop
.end __glReCompute2DMatrix

# Function: __glGenericPickMvpMatrixProcs
# Declared: Line 1536 (Source lines: 1537-1544)
# Address: 0x0db0ea34 - 0x0db0eab4 (Size: 128 bytes, Frame: 48)
.globl __glGenericPickMvpMatrixProcs
.ent __glGenericPickMvpMatrixProcs
__glGenericPickMvpMatrixProcs:
    # Line 1538
    lw	$a2,29672($a0)
    # Line 1537
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    # sd	gp,24(sp)
    lui	$at,0xf
    addiu	$at,$at,-29132
    # addu	gp,t9,at
    # Line 1538
    # lw $t9, -26092($gp) # &__glPickMatrixType
    lw	$a1,29664($a0)
    sd	$ra,16($sp)
    bal __glPickMatrixType
    move	$a0,$s1
    # Line 1541
    # lw $t9, -25892($gp) # &__glReCompute2DMatrix
    move	$a0,$s0
    bal __glReCompute2DMatrix
    move	$a1,$s1
    # Line 1542
    lw	$t9,11860($s0)
    move	$a0,$s0
    jal	__glReCompute2DMatrix
    move	$a1,$s1
    # Line 1543
    lw	$t9,11856($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$s1,8($sp)
    # Line 1544
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glGenericPickMvpMatrixProcs

# Function: __glGenericPickMatrixProcs
# Declared: Line 1547 (Source lines: 1548-1601)
# Address: 0x0db0eab4 - 0x0db0eb84 (Size: 208 bytes, Frame: 0)
.globl __glGenericPickMatrixProcs
.ent __glGenericPickMatrixProcs
__glGenericPickMatrixProcs:
    # Line 1549
    lw	$a3,64($a1)
    # Line 1548
    lui	$v0,0xf
    addiu	$v0,$v0,-29260
    # Line 1549
    beqz	$a3,.L0db0eb28
    # Line 1548
    nop
    # Line 1565
    la	$a0,__glMipsXForm3_W
    # Line 1549
    li	$v1,1
    beq	$a3,$v1,.L0db0eb4c
    # Line 1566
    la	$a2,__glMipsXForm4_W
    # Line 1549
    li	$a0,2
    beq	$a3,$a0,.L0db0eb68
    # Line 1576
    la	$v1,__glMipsXForm2_2DW
    # Line 1549
    li	$a2,3
    beq	$a3,$a2,.L0db0eb08
    li	$v0,4
    beq	$a3,$v0,.L0db0eb08
    li	$v1,5
    beq	$a3,$v1,.L0db0eb0c
    # Line 1590
    la	$a2,__glMipsXForm3_2DNRW
    # Line 1601
    jr	$ra
    nop
.L0db0eb08:
    # Line 1590
    la	$a2,__glMipsXForm3_2DNRW
.L0db0eb0c:
    # Line 1592
    la	$v0,__glMipsXForm4_2DNRW
    # Line 1590
    la	$a0,__glMipsXForm2_2DNRW
    # Line 1593
    sw	$a2,84($a1)
    # Line 1592
    sw	$v0,80($a1)
    # Line 1591
    sw	$a2,76($a1)
    # Line 1601
    jr	$ra
    # Line 1590
    sw	$a0,72($a1)
.L0db0eb28:
    # Line 1552
    la	$v1,__glMipsXForm2
    # Line 1555
    la	$v0,__glMipsXForm3AsmLink
    # Line 1554
    la	$a2,__glMipsXForm4
    # Line 1553
    la	$a0,__glMipsXForm3
    # Line 1555
    sw	$v0,84($a1)
    # Line 1554
    sw	$a2,80($a1)
    # Line 1553
    sw	$a0,76($a1)
    # Line 1601
    jr	$ra
    # Line 1552
    sw	$v1,72($a1)
.L0db0eb4c:
    # Line 1566
    sw	$a2,80($a1)
    # Line 1567
    la	$v0,__glMipsXForm3AsmLink_W
    # Line 1565
    sw	$a0,76($a1)
    # Line 1564
    la	$v1,__glMipsXForm2_W
    # Line 1567
    sw	$v0,84($a1)
    # Line 1601
    jr	$ra
    # Line 1564
    sw	$v1,72($a1)
.L0db0eb68:
    # Line 1578
    la	$a2,__glMipsXForm4_2DW
    # Line 1576
    la	$a0,__glMipsXForm3_2DW
    sw	$v1,72($a1)
    # Line 1578
    sw	$a2,80($a1)
    # Line 1579
    sw	$a0,84($a1)
    # Line 1601
    jr	$ra
    # Line 1577
    sw	$a0,76($a1)
.end __glGenericPickMatrixProcs

# Function: __glGenericPickInvTransposeProcs
# Declared: Line 1604 (Source lines: 1605-1644)
# Address: 0x0db0eb84 - 0x0db0ec04 (Size: 128 bytes, Frame: 0)
.globl __glGenericPickInvTransposeProcs
.ent __glGenericPickInvTransposeProcs
__glGenericPickInvTransposeProcs:
    # Line 1612
    li	$a0,2
    lw	$a3,64($a1)
    # Line 1605
    lui	$v0,0xf
    addiu	$v0,$v0,-29468
    # addu	at,t9,v0
    la	$a4,__glMipsXForm4
    # Line 1612
    beqz	$a3,.L0db0ebe8
    # Line 1607
    sw	$a4,80($a1)
    # Line 1612
    li	$v1,1
    beq	$a3,$v1,.L0db0ebf0
    # Line 1622
    la	$a2,__glMipsXForm3_W
    # Line 1612
    beq	$a3,$a0,.L0db0ebf8
    li	$v1,5
    li	$a2,3
    beq	$a3,$a2,.L0db0ebdc
    li	$v0,4
    beq	$a3,$v0,.L0db0ebe0
    # Line 1638
    la	$a0,__glMipsXForm3_2DNRW
    # Line 1612
    beq	$a3,$v1,.L0db0ebe0
    # Line 1638
    la	$a0,__glMipsXForm3_2DNRW
    # Line 1644
    jr	$ra
    nop
.L0db0ebdc:
    # Line 1638
    la	$a0,__glMipsXForm3_2DNRW
.L0db0ebe0:
    # Line 1644
    jr	$ra
    # Line 1638
    sw	$a0,76($a1)
.L0db0ebe8:
    # Line 1644
    jr	$ra
    # Line 1615
    sw	$a4,76($a1)
.L0db0ebf0:
    # Line 1644
    jr	$ra
    # Line 1622
    sw	$a2,76($a1)
.L0db0ebf8:
    # Line 1629
    la	$v0,__glMipsXForm3_2DW
    # Line 1644
    jr	$ra
    # Line 1629
    sw	$v0,76($a1)
.end __glGenericPickInvTransposeProcs

.rdata
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_c000000000000000:
    .word 0xc0000000, 0x00000000
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

