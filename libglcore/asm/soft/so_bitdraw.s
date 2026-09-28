# Source: ../soft/so_bitdraw.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_bitdraw.c
# Total Functions: 3

.text

# Function: __glDrawBitmap
# Declared: Line 27 (Source lines: 31-64)
# Address: 0x0da9b714 - 0x0da9b830 (Size: 284 bytes, Frame: 160)
.globl __glDrawBitmap
.ent __glDrawBitmap
__glDrawBitmap:
    # Line 31
    move	$v0,$a7
    addiu	$sp,$sp,-160
    # Line 39
    swc1	$f18,20($sp)
    # Line 38
    swc1	$f17,16($sp)
    # Line 37
    swc1	$f16,12($sp)
    # Line 36
    swc1	$f15,8($sp)
    sd	$s0,56($sp)
    # Line 31
    move	$s0,$a0
    sd	$s1,32($sp)
    move	$s1,$a2
    # Line 35
    sw	$a2,4($sp)
    sd	$s2,40($sp)
    # Line 31
    move	$s2,$a1
    # Line 34
    sw	$a1,0($sp)
    # sd	gp,64(sp)
    # Line 31
    lui	$at,0x16
    addiu	$at,$at,-16044
    # Line 39
    blez	$a1,.L0da9b804
    # Line 31
    nop
    sd	$ra,72($sp)
    # Line 39
    blez	$s1,.L0da9b804
    sd	$v0,48($sp)
    # Line 48
    move	$a0,$s2
    # lw $t9, -28408($gp) # &__glImageSize
    move	$a1,$s1
    li	$a3,6656
    jal	__glImageSize
    li	$a2,6400
    lw	$t9,0($s0)
    sd	$s3,80($sp)
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s0
    move	$s3,$v0
    # Line 51
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$s1
    move	$a6,$v0
    # lw $t9, -28396($gp) # &__glFillImage
    ld	$a5,48($sp)
    li	$a4,6656
    jal	__glFillImage
    li	$a3,6400
    # Line 54
    move	$a0,$s0
    move	$a2,$s3
    lw	$t9,12520($s0)
    addiu	$a1,$sp,0
    ld	$s2,40($sp)
    jalr	$t9
    ld	$s1,32($sp)
    # Line 56
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s3
    ld	$s0,56($sp)
    ld	$ra,72($sp)
    ld	$s3,80($sp)
.L0da9b7f8:
    # ld	gp,64(sp)
    # Line 64
    jr	$ra
    addiu	$sp,$sp,160
.L0da9b804:
    # Line 62
    move	$a0,$s0
    move	$a2,$zero
    addiu	$a1,$sp,0
    lw	$t9,12520($s0)
    ld	$s2,40($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s1,32($sp)
    ld	$s0,56($sp)
    b	.L0da9b7f8
    ld	$ra,72($sp)
.end __glDrawBitmap

# Function: __glFastDrawBitmap
# Declared: Line 66 (Source lines: 69-104)
# Address: 0x0da9b830 - 0x0da9b9a0 (Size: 368 bytes, Frame: 160)
.globl __glFastDrawBitmap
.ent __glFastDrawBitmap
__glFastDrawBitmap:
    # Line 69
    move	$v0,$a7
    # Line 79
    li	$at,1
    # Line 69
    addiu	$sp,$sp,-160
    sd	$s2,32($sp)
    move	$s2,$a2
    sd	$s1,56($sp)
    move	$s1,$a0
    # sd	gp,64(sp)
    lui	$v1,0x16
    addiu	$v1,$v1,-16328
    # Line 77
    swc1	$f18,20($sp)
    # Line 76
    swc1	$f17,16($sp)
    # Line 75
    swc1	$f16,12($sp)
    # Line 74
    swc1	$f15,8($sp)
    # Line 73
    sw	$a2,4($sp)
    # Line 72
    sw	$a1,0($sp)
    sd	$s0,40($sp)
    # Line 79
    lw	$a5,1124($a0)
    # Line 69
    move	$s0,$a1
    # Line 79
    addiu	$a4,$s0,7
    beq	$a5,$at,.L0da9b974
    # Line 69
    nop
    # Line 79
    sra	$a4,$a4,0x3
    addiu	$a3,$a5,-1
    and	$a3,$a3,$a4
    beqz	$a3,.L0da9b978
    # Line 82
    move	$a0,$s1
    blez	$s0,.L0da9b94c
    # Line 102
    move	$a0,$s1
    sd	$ra,72($sp)
    # Line 82
    blez	$s2,.L0da9b948
    sd	$v0,48($sp)
    # Line 88
    move	$a0,$s0
    # lw $t9, -28408($gp) # &__glImageSize
    move	$a1,$s2
    li	$a3,6656
    jal	__glImageSize
    li	$a2,6400
    # Line 89
    lw	$t9,0($s1)
    sd	$s3,80($sp)
    # Line 88
    move	$a1,$v0
    # Line 89
    jalr	$t9
    move	$a0,$s1
    move	$s3,$v0
    # Line 91
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s2
    move	$a6,$v0
    # lw $t9, -28396($gp) # &__glFillImage
    ld	$a5,48($sp)
    li	$a4,6656
    jal	__glFillImage
    li	$a3,6400
    # Line 94
    move	$a0,$s1
    move	$a2,$s3
    lw	$t9,12520($s1)
    addiu	$a1,$sp,0
    ld	$s0,40($sp)
    jalr	$t9
    ld	$s2,32($sp)
    # Line 96
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s3
    ld	$s3,80($sp)
    ld	$s1,56($sp)
    ld	$ra,72($sp)
.L0da9b93c:
    # ld	gp,64(sp)
    # Line 104
    jr	$ra
    addiu	$sp,$sp,160
.L0da9b948:
    # Line 102
    move	$a0,$s1
.L0da9b94c:
    move	$a2,$zero
    addiu	$a1,$sp,0
    lw	$t9,12520($s1)
    ld	$s0,40($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s2,32($sp)
    ld	$s1,56($sp)
    b	.L0da9b93c
    ld	$ra,72($sp)
.L0da9b974:
    # Line 82
    move	$a0,$s1
.L0da9b978:
    move	$a2,$v0
    addiu	$a1,$sp,0
    lw	$t9,12520($s1)
    ld	$s0,40($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s2,32($sp)
    ld	$s1,56($sp)
    b	.L0da9b93c
    ld	$ra,72($sp)
.end __glFastDrawBitmap

# Function: __glRenderBitmap
# Declared: Line 106 (Source lines: 108-187)
# Address: 0x0da9b9a0 - 0x0da9bcc8 (Size: 808 bytes, Frame: 192)
.globl __glRenderBitmap
.ent __glRenderBitmap
__glRenderBitmap:
    # Line 114
    lw	$a4,30440($a0)
    # Line 108
    addiu	$sp,$sp,-192
    sd	$s0,72($sp)
    move	$s0,$a2
    sd	$s1,64($sp)
    move	$s1,$a1
    sd	$s2,96($sp)
    move	$s2,$a0
    sd	$s3,88($sp)
    # Line 116
    lw	$s3,4556($a0)
    sd	$gp,80($sp)
    lbu	$at,428($a0)
    # Line 108
    lui	$v0,0x16
    addiu	$v0,$v0,-16696
    # Line 116
    beqz	$at,.L0da9bc10
    # Line 108
    addu	$gp,$t9,$v0
    # Line 126
    lw	$a0,3092($s2)
    sdc1	$f30,56($sp)
    mtc1	$s3,$f30
    li	$v1,7170
    beq	$a0,$v1,.L0da9bc2c
    cvt.s.w	$f30,$f30
    # Line 132
    li	$a3,7169
    beq	$a0,$a3,.L0da9bc70
    # Line 136
    nop	# was lw $t9, -28672($gp) # &__glFeedbackBitmap
    # Line 145
    lw	$v0,220($s2)
    lwc1	$f3,0($v0)
    swc1	$f3,12($sp)
    lwc1	$f2,4($v0)
    swc1	$f2,16($sp)
    lwc1	$f1,8($v0)
    swc1	$f1,20($sp)
    lwc1	$f0,12($v0)
    andi	$at,$a4,0x8
    beqz	$at,.L0da9ba6c
    swc1	$f0,24($sp)
    # Line 147
    lwc1	$f18,276($s2)
    lwc1	$f17,3284($s2)
    div.s	$f18,$f17,$f18
    # Line 148
    addiu	$a1,$sp,12
    lwc1	$f16,272($s2)
    move	$a0,$s2
    lwc1	$f15,268($s2)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,264($s2)
    lw	$t9,12532($s2)
    mul.s	$f15,$f15,$f18
    sd	$ra,104($sp)
    jal	__glFeedbackBitmap
    mul.s	$f14,$f14,$f18
    ld	$ra,104($sp)
.L0da9ba6c:
    lw	$v1,1696($s2)
    andi	$v1,$v1,0x20
    beqz	$v1,.L0da9ba9c
    # Line 154
    move	$a0,$s2
    lw	$t9,12536($s2)
    lwc1	$f14,320($s2)
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    sd	$s4,112($sp)
    sd	$s7,120($sp)
    ld	$ra,104($sp)
.L0da9ba9c:
    # Line 157
    lwc1	$f2,352($s2)
    trunc.l.s	$f2,$f2
    sd	$s4,112($sp)
    dmfc1	$s4,$f2
    nop
    sw	$s4,8($sp)
    # Line 159
    lwc1	$f1,12($s1)
    mul.s	$f1,$f1,$f30
    lwc1	$f0,348($s2)
    sub.s	$f0,$f0,$f1
    # Line 158
    lwc1	$f4,344($s2)
    lwc1	$f1,8($s1)
    # Line 159
    trunc.w.s	$f0,$f0
    sd	$s6,144($sp)
    # Line 158
    sub.s	$f4,$f4,$f1
    # Line 159
    mfc1	$a1,$f0
    sd	$s8,128($sp)
    sd	$s7,120($sp)
    sw	$a1,4($sp)
    # Line 158
    trunc.w.s	$f4,$f4
    # Line 162
    lw	$a3,4($s1)
    move	$s7,$zero
    # Line 161
    li	$s4,7
    # Line 162
    blez	$a3,.L0da9bbc4
    # Line 158
    cvt.s.w	$f4,$f4
    # Line 162
    trunc.w.s	$f3,$f4
    sd	$ra,104($sp)
    sd	$s5,136($sp)
    mfc1	$s8,$f3
    b	.L0da9bb44
    li	$s6,1
.L0da9bb18:
    # Line 175
    addu	$a1,$s3,$a1
    li	$at,7
    beq	$s4,$at,.L0da9bb30
    sw	$a1,4($sp)
    # Line 178
    addiu	$s0,$s0,1
    # Line 177
    li	$s4,7
.L0da9bb30:
    # Line 162
    addiu	$s7,$s7,1
    lw	$v0,4($s1)
    slt	$v0,$s7,$v0
    beqzl	$v0,.L0da9bbb8
    ld	$s8,128($sp)
.L0da9bb44:
    # Line 163
    sw	$s8,0($sp)
    # Line 164
    lw	$v1,0($s1)
    # Line 163
    move	$a0,$s8
    # Line 164
    blez	$v1,.L0da9bb18
    move	$s5,$zero
    b	.L0da9bb84
    lbu	$at,0($s0)
.L0da9bb60:
    # Line 168
    addiu	$a0,$a0,1
    # Line 169
    bltz	$s4,.L0da9bbac
    # Line 168
    sw	$a0,0($sp)
.L0da9bb6c:
    # Line 164
    addiu	$s5,$s5,1
    lw	$a3,0($s1)
    slt	$a3,$s5,$a3
    beqz	$a3,.L0da9bb18
    lw	$a1,4($sp)
    lbu	$at,0($s0)
.L0da9bb84:
    sllv	$v0,$s6,$s4
    and	$at,$at,$v0
    beqz	$at,.L0da9bb60
    # Line 169
    addiu	$s4,$s4,-1
    # Line 166
    lw	$t9,12616($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11768($s2)
    b	.L0da9bb60
    lw	$a0,0($sp)
.L0da9bbac:
    # Line 172
    addiu	$s0,$s0,1
    b	.L0da9bb6c
    # Line 171
    li	$s4,7
.L0da9bbb8:
    ld	$s5,136($sp)
    ld	$ra,104($sp)
    ld	$s6,144($sp)
.L0da9bbc4:
    # Line 185
    lwc1	$f2,344($s2)
    lwc1	$f1,16($s1)
    add.s	$f1,$f1,$f2
    swc1	$f1,344($s2)
    # Line 186
    lwc1	$f0,20($s1)
    mul.s	$f30,$f0,$f30
    ld	$gp,80($sp)
    # Line 187
    ld	$s0,72($sp)
    # Line 186
    lwc1	$f4,348($s2)
    # Line 187
    ld	$s3,88($sp)
    ld	$s4,112($sp)
    # Line 186
    add.s	$f4,$f4,$f30
    # Line 187
    ld	$s7,120($sp)
    ld	$s1,64($sp)
    ldc1	$f30,56($sp)
    # Line 186
    swc1	$f4,348($s2)
    # Line 187
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da9bc10:
    ld	$gp,80($sp)
    # Line 126
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da9bc2c:
    # Line 130
    lwc1	$f1,344($s2)
    lwc1	$f0,16($s1)
    add.s	$f0,$f0,$f1
    swc1	$f0,344($s2)
    # Line 131
    lwc1	$f4,20($s1)
    mul.s	$f4,$f4,$f30
    lwc1	$f3,348($s2)
    ld	$gp,80($sp)
    # Line 132
    ld	$s0,72($sp)
    # Line 131
    add.s	$f3,$f3,$f4
    # Line 132
    ld	$s3,88($sp)
    ld	$s1,64($sp)
    ldc1	$f30,56($sp)
    # Line 131
    swc1	$f3,348($s2)
    # Line 132
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da9bc70:
    # Line 136
    move	$a0,$s2
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$s2,216
    # Line 140
    lwc1	$f0,344($s2)
    lwc1	$f4,16($s1)
    add.s	$f4,$f4,$f0
    swc1	$f4,344($s2)
    # Line 141
    lwc1	$f3,20($s1)
    mul.s	$f3,$f3,$f30
    ld	$gp,80($sp)
    lwc1	$f2,348($s2)
    # Line 142
    ld	$s0,72($sp)
    ld	$s3,88($sp)
    # Line 141
    add.s	$f2,$f2,$f3
    # Line 142
    ld	$ra,104($sp)
    ld	$s1,64($sp)
    ldc1	$f30,56($sp)
    # Line 141
    swc1	$f2,348($s2)
    # Line 142
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glRenderBitmap

