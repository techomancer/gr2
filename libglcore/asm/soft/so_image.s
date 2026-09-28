# Source: ../soft/so_image.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_image.c
# Total Functions: 5

.text

# Function: __glConvertStipple
# Declared: Line 73 (Source lines: 79-106)
# Address: 0x0dab76f0 - 0x0dab7770 (Size: 128 bytes, Frame: 0)
.globl __glConvertStipple
.ent __glConvertStipple
__glConvertStipple:
    # Line 87
    li	$a5,32
    move	$a4,$zero
    # Line 80
    addiu	$a2,$a0,30012
    # Line 79
    addiu	$a3,$a0,488
.L0dab7700:
    # Line 90
    lbu	$a0,2($a3)
    # Line 92
    sll	$a0,$a0,0x8
    lbu	$at,3($a3)
    # Line 88
    lbu	$v0,0($a3)
    # Line 89
    lbu	$v1,1($a3)
    # Line 92
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a2)
    addiu	$a2,$a2,8
    # Line 90
    lbu	$a0,6($a3)
    # Line 91
    addiu	$a3,$a3,8
    # Line 87
    addiu	$a4,$a4,2
    # Line 92
    sll	$a0,$a0,0x8
    lbu	$at,-1($a3)
    # Line 88
    lbu	$v0,-4($a3)
    # Line 89
    lbu	$v1,-3($a3)
    # Line 92
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 87
    bne	$a4,$a5,.L0dab7700
    # Line 92
    sw	$at,-4($a2)
    # Line 106
    jr	$ra
    nop
.end __glConvertStipple

# Function: __glImageSize
# Declared: Line 114 (Source lines: 115-133)
# Address: 0x0dab7770 - 0x0dab7824 (Size: 180 bytes, Frame: 208)
.globl __glImageSize
.ent __glImageSize
__glImageSize:
    # Line 115
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    move	$s8,$a0
    move	$a0,$a2
    sd	$s0,16($sp)
    move	$s0,$a3
    # sd	gp,32(sp)
    lui	$at,0x14
    addiu	$at,$at,248
    # addu	gp,t9,at
    # Line 122
    # lw $t9, -30256($gp) # &__glSpecElementsPerGroup
    sd	$a1,8($sp)
    sd	$ra,0($sp)
    jal	__glSpecElementsPerGroup
    move	$a1,$a3
    move	$a0,$v0
    li	$v0,6656
    bne	$s0,$v0,.L0dab77cc
    ld	$ra,0($sp)
    # Line 125
    addiu	$a1,$s8,7
    ld	$s0,16($sp)
    b	.L0dab77f8
    sra	$a1,$a1,0x3
.L0dab77cc:
    # Line 130
    # lw $t9, -30252($gp) # &__glSpecBytesPerElement
    sd	$a0,40($sp)
    jal	__glSpecBytesPerElement
    move	$a0,$s0
    mult	$v0,$s8
    ld	$a0,40($sp)
    ld	$ra,0($sp)
    ld	$s0,16($sp)
    mflo	$a1
    nop
    nop
.L0dab77f8:
    ld	$a4,8($sp)
    # Line 133
    mult	$a4,$a1
    mflo	$a2
    nop
    nop
    mult	$a2,$a0
    # ld	gp,32(sp)
    ld	$s8,24($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,80
.end __glImageSize

# Function: __glImageSize3D
# Declared: Line 136 (Source lines: 138-139)
# Address: 0x0dab7824 - 0x0dab7870 (Size: 76 bytes, Frame: 208)
.globl __glImageSize3D
.ent __glImageSize3D
__glImageSize3D:
    # Line 138
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a2
    # sd	gp,16(sp)
    lui	$at,0x14
    addiu	$at,$at,68
    # addu	gp,t9,at
    # Line 139
    # lw $t9, -28408($gp) # &__glImageSize
    # Line 138
    move	$a2,$a3
    sd	$ra,0($sp)
    # Line 139
    bal __glImageSize
    # Line 138
    move	$a3,$a4
    # Line 139
    mult	$v0,$s8
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,80
.end __glImageSize3D

# Function: __glFillImage3D
# Declared: Line 147 (Source lines: 151-302)
# Address: 0x0dab7870 - 0x0dab7d60 (Size: 1264 bytes, Frame: 240)
.globl __glFillImage3D
.ent __glFillImage3D
__glFillImage3D:
    # Line 151
    move	$at,$a4
    addiu	$sp,$sp,-240
    sd	$s4,0($sp)
    sd	$a7,128($sp)
    sd	$a6,120($sp)
    sd	$s5,32($sp)
    move	$s5,$a5
    sd	$s3,96($sp)
    # Line 166
    lbu	$s3,1109($a0)
    sd	$s1,48($sp)
    # Line 159
    lw	$s1,1124($a0)
    sd	$s6,88($sp)
    # Line 158
    lw	$s6,1132($a0)
    sd	$s2,104($sp)
    # Line 157
    lw	$s2,1112($a0)
    # Line 160
    lw	$v1,1120($a0)
    sd	$s8,80($sp)
    # Line 151
    move	$s8,$a3
    # Line 167
    lbu	$a3,1108($a0)
    sd	$s0,56($sp)
    # Line 151
    move	$s0,$a2
    # Line 162
    lw	$a2,1128($a0)
    sd	$s7,72($sp)
    # Line 151
    move	$s7,$a1
    # Line 161
    lw	$a1,1116($a0)
    # Line 175
    move	$a0,$a4
    sd	$ra,64($sp)
    sd	$v1,136($sp)
    sd	$gp,112($sp)
    # Line 151
    lui	$v0,0x14
    addiu	$v0,$v0,-8
    addu	$gp,$t9,$v0
    # Line 175
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    sd	$a3,8($sp)
    sd	$a2,16($sp)
    jal	__glElementsPerGroup
    sd	$a1,144($sp)
    blez	$s2,.L0dab7c98
    move	$s4,$v0
    # Line 177
    move	$v0,$s2
.L0dab7910:
    # Line 179
    li	$a4,6656
    bne	$s5,$a4,.L0dab79ec
    # Line 243
    nop	# was lw $t9, -30260($gp) # &__glBytesPerElement
    # Line 191
    mult	$s4,$v0
    mflo	$a1
    addiu	$a1,$a1,7
    sra	$a0,$a1,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a1
    sra	$a0,$a0,0x3
    div	$zero,$a0,$s1
    teq	$s1,$zero,0x7
    mfhi	$a1
    beqz	$a1,.L0dab7954
    move	$s2,$a0
    # Line 194
    subu	$s2,$s1,$a1
    addu	$s2,$s2,$a0
.L0dab7954:
    ld	$s1,136($sp)
    # Line 196
    mult	$s4,$s1
    ld	$t0,144($sp)
    mflo	$v1
    nop
    nop
    mult	$t0,$s2
    # Line 203
    move	$s5,$zero
    # Line 202
    ld	$s1,128($sp)
    # Line 196
    ld	$at,120($sp)
    sra	$a4,$v1,0x1f
    xor	$v0,$v1,$a4
    subu	$v0,$v0,$a4
    sra	$a4,$v1,0x1f
    andi	$v0,$v0,0x7
    xor	$v0,$v0,$a4
    subu	$v0,$v0,$a4
    mflo	$s6
    addu	$s6,$s6,$at
    sra	$at,$v1,0x2
    srl	$at,$at,0x1d
    addu	$at,$at,$v1
    sra	$at,$at,0x3
    # Line 203
    blez	$s0,.L0dab7bb8
    # Line 196
    addu	$s6,$s6,$at
    # Line 203
    mult	$s4,$s7
    la	$a3,__glMsbToLsbTable
    li	$a2,8
    la	$a6,sub_0dbf0000
    move	$a1,$v0
    subu	$a2,$a2,$v0
    addiu	$a6,$a6,-11512
    addu	$t1,$v0,$a6
    lbu	$t1,272($t1)
    subu	$a5,$a6,$v0
    mflo	$a7
    b	.L0dab7bf8
    lbu	$a5,264($a5)
.L0dab79ec:
    sd	$v0,160($sp)
    # Line 243
    move	$a0,$s5
    jal	__glBytesPerElement
    ld	$s3,8($sp)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    ld	$a1,160($sp)
    li	$a4,1
    beq	$a0,$a4,.L0dab7ca0
    ld	$v0,16($sp)
    # Line 245
    blez	$s6,.L0dab7ca8
.L0dab7a18:
    # Line 248
    move	$a3,$s6
.L0dab7a1c:
    # Line 253
    mult	$s4,$a0
    mflo	$a2
    nop
    nop
    mult	$a2,$a1
    mflo	$t1
    nop
    nop
    div	$zero,$t1,$s1
    teq	$s1,$zero,0x7
    mfhi	$a5
    beqz	$a5,.L0dab7a58
    move	$s2,$t1
    # Line 256
    subu	$s2,$s1,$a5
    addu	$s2,$s2,$t1
.L0dab7a58:
    # Line 261
    mult	$s2,$a3
    mflo	$s1
    nop
    nop
    mult	$s1,$v0
    ld	$t0,136($sp)
    mflo	$s6
    nop
    nop
    mult	$a2,$t0
    ld	$a4,144($sp)
    mflo	$at
    nop
    nop
    mult	$a4,$s2
    sd	$s7,40($sp)
    ld	$v1,120($sp)
    sd	$s1,152($sp)
    # Line 265
    ld	$s1,128($sp)
    # Line 261
    addu	$s6,$s6,$v1
    mflo	$v1
    addu	$at,$at,$v1
    # Line 265
    beqz	$s3,.L0dab7cb0
    # Line 261
    addu	$s6,$s6,$at
    # Line 269
    blez	$s8,.L0dab7bb8
    move	$s7,$zero
    ld	$t2,40($sp)
    mult	$s4,$t2
    addiu	$t3,$a0,1
    slti	$t1,$a0,1
    xori	$t1,$t1,0x1
    mflo	$a7
    b	.L0dab7af0
    addiu	$t2,$a0,-1
.L0dab7ae0:
    # Line 282
    ld	$at,152($sp)
    # Line 269
    addiu	$s7,$s7,1
    beq	$s8,$s7,.L0dab7bb8
    # Line 282
    addu	$s6,$at,$s6
.L0dab7af0:
    # Line 270
    move	$t9,$s6
    # Line 271
    blez	$s0,.L0dab7ae0
    move	$s5,$zero
    b	.L0dab7b14
    # Line 272
    move	$s4,$t9
.L0dab7b04:
    # Line 271
    addiu	$s5,$s5,1
    beq	$s0,$s5,.L0dab7ae0
    # Line 280
    addu	$t9,$s2,$t9
    # Line 272
    move	$s4,$t9
.L0dab7b14:
    # Line 273
    blez	$a7,.L0dab7b04
    move	$a3,$zero
    b	.L0dab7b7c
    addu	$a1,$t2,$s4
    move	$a6,$a2
.L0dab7b28:
    sra	$v1,$a5,0x2
    beqz	$v1,.L0dab7b68
    move	$t8,$a1
    move	$a1,$a6
    move	$a2,$t8
.L0dab7b3c:
    # Line 275
    lbu	$v1,0($a2)
    sb	$v1,-1($a1)
    lbu	$at,-1($a2)
    sb	$at,0($a1)
    lbu	$t0,-2($a2)
    sb	$t0,1($a1)
    # Line 274
    addiu	$a2,$a2,-4
    # Line 275
    lbu	$a4,1($a2)
    # Line 274
    addiu	$a1,$a1,4
    bne	$a1,$v0,.L0dab7b3c
    # Line 275
    sb	$a4,-2($a1)
.L0dab7b68:
    # Line 273
    addiu	$a3,$a3,1
    # Line 278
    addu	$s4,$a0,$s4
    # Line 273
    beq	$a7,$a3,.L0dab7b04
    # Line 277
    addu	$s1,$a0,$s1
    # Line 273
    addu	$a1,$t2,$s4
.L0dab7b7c:
    andi	$a6,$a0,0x3
    beqz	$t1,.L0dab7b68
    addu	$v0,$t3,$s1
    addiu	$a2,$s1,1
    move	$a5,$a0
    beqzl	$a6,.L0dab7b28
    move	$a6,$a2
.L0dab7b98:
    # Line 274
    addiu	$a2,$a2,1
    addiu	$a1,$a1,-1
    # Line 275
    lbu	$a4,1($a1)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dab7b98
    sb	$a4,-2($a2)
    b	.L0dab7b28
    move	$a6,$a2
.L0dab7bb8:
    ld	$gp,112($sp)
.L0dab7bbc:
    # Line 302
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    ld	$s6,88($sp)
    ld	$ra,64($sp)
    ld	$s7,72($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dab7bec:
    # Line 203
    addiu	$s5,$s5,1
    beq	$s0,$s5,.L0dab7bb8
    # Line 240
    addu	$s6,$s2,$s6
.L0dab7bf8:
    # Line 204
    move	$v0,$a7
    # Line 205
    beqz	$a7,.L0dab7bec
    move	$s4,$s6
    b	.L0dab7c28
    nop
.L0dab7c0c:
    # Line 233
    lbu	$t0,272($t0)
    # Line 235
    move	$v0,$zero
    # Line 233
    and	$t0,$t0,$a0
    sb	$t0,0($s1)
.L0dab7c1c:
    # Line 238
    addiu	$s4,$s4,1
    beqz	$v0,.L0dab7bec
    # Line 237
    addiu	$s1,$s1,1
.L0dab7c28:
    # Line 205
    beqz	$s3,.L0dab7c88
    lbu	$t2,0($s4)
    # Line 209
    addu	$a0,$t2,$a3
    lbu	$a0,0($a0)
.L0dab7c38:
    # Line 211
    beqz	$a1,.L0dab7c70
    slt	$at,$a2,$v0
    and	$t2,$a0,$a5
    beqz	$at,.L0dab7c6c
    sllv	$t2,$t2,$a1
    beqz	$s3,.L0dab7c90
    lbu	$a0,1($s4)
    # Line 217
    addu	$t3,$a0,$a3
    lbu	$t3,0($t3)
.L0dab7c5c:
    # Line 221
    and	$a0,$t3,$t1
    srav	$a0,$a0,$a2
    b	.L0dab7c70
    or	$a0,$a0,$t2
.L0dab7c6c:
    # Line 225
    move	$a0,$t2
.L0dab7c70:
    slti	$a4,$v0,8
    bnez	$a4,.L0dab7c0c
    # Line 233
    addu	$t0,$v0,$a6
    # Line 231
    addiu	$v0,$v0,-8
    b	.L0dab7c1c
    # Line 230
    sb	$a0,0($s1)
.L0dab7c88:
    b	.L0dab7c38
    # Line 211
    move	$a0,$t2
.L0dab7c90:
    b	.L0dab7c5c
    # Line 219
    move	$t3,$a0
.L0dab7c98:
    b	.L0dab7910
    # Line 179
    move	$v0,$s7
.L0dab7ca0:
    # Line 245
    bgtz	$s6,.L0dab7a18
    move	$s3,$zero
.L0dab7ca8:
    b	.L0dab7a1c
    # Line 250
    move	$a3,$s0
.L0dab7cb0:
    # Line 285
    blez	$s8,.L0dab7bb8
    move	$s7,$zero
    ld	$at,40($sp)
    mult	$s4,$at
    mflo	$t0
    nop
    nop
    mult	$s0,$s2
    mflo	$s3
    nop
    nop
    mult	$t0,$a0
    sd	$s3,24($sp)
    mflo	$s3
    bne	$s3,$s2,.L0dab7d24
    # Line 291
    move	$s4,$s6
.L0dab7cf0:
    # Line 288
    # lw $t9, -23008($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s6
    jal	memcpy
    ld	$a2,24($sp)
    ld	$v1,24($sp)
    # Line 289
    addu	$s1,$v1,$s1
.L0dab7d0c:
    # Line 298
    ld	$a4,152($sp)
.L0dab7d10:
    # Line 285
    addiu	$s7,$s7,1
    beq	$s8,$s7,.L0dab7d58
    # Line 298
    addu	$s6,$a4,$s6
    # Line 285
    beq	$s3,$s2,.L0dab7cf0
    # Line 291
    move	$s4,$s6
.L0dab7d24:
    # Line 292
    blez	$s0,.L0dab7d0c
    move	$s5,$zero
.L0dab7d2c:
    # Line 293
    # lw $t9, -23008($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s4
    jal	memcpy
    move	$a2,$s3
    # Line 295
    addu	$s4,$s2,$s4
    # Line 292
    addiu	$s5,$s5,1
    bne	$s0,$s5,.L0dab7d2c
    # Line 294
    addu	$s1,$s3,$s1
    b	.L0dab7d10
    # Line 298
    ld	$a4,152($sp)
.L0dab7d58:
    b	.L0dab7bbc
    ld	$gp,112($sp)
.end __glFillImage3D

# Function: __glFillImage
# Declared: Line 304 (Source lines: 307-309)
# Address: 0x0dab7d60 - 0x0dab7da8 (Size: 72 bytes, Frame: 208)
.globl __glFillImage
.ent __glFillImage
__glFillImage:
    # Line 307
    move	$at,$a3
    # Line 308
    li	$a3,1
    # Line 307
    move	$a7,$a6
    move	$a6,$a5
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$v0,0x14
    addiu	$v0,$v0,-1272
    # addu	gp,t9,v0
    # Line 308
    # lw $t9, -28400($gp) # &__glFillImage3D
    # Line 307
    move	$a5,$a4
    sd	$ra,0($sp)
    # Line 308
    bal __glFillImage3D
    move	$a4,$at
    # Line 309
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glFillImage

