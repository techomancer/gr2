# Source: ../soft/so_convolve.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_convolve.c
# Total Functions: 18

.text

# Function: __glCheckConvolutionFilterArgs
# Declared: Line 21 (Source lines: 25-126)
# Address: 0x0daa4b2c - 0x0daa4f28 (Size: 1020 bytes, Frame: 208)
.globl __glCheckConvolutionFilterArgs
.ent __glCheckConvolutionFilterArgs
__glCheckConvolutionFilterArgs:
    # Line 25
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    lui	$at,0x15
    addiu	$at,$at,11580
    # Line 26
    bltz	$a2,.L0daa4ef0
    # Line 25
    addu	$gp,$t9,$at
    # Line 26
    bltz	$a3,.L0daa4ef0
    # Line 28
    sltiu	$v0,$a4,6407
    bnez	$v0,.L0daa4bb0
    # Line 30
    sltiu	$v1,$a4,6408
    beqz	$v1,.L0daa4c64
    li	$t0,6406
    # Line 44
    bne	$t0,$a5,.L0daa4bd0
    li	$v1,6407
.L0daa4b64:
    # Line 57
    sltiu	$a7,$a6,5126
.L0daa4b68:
    bnez	$a7,.L0daa4c1c
    # Line 59
    sltiu	$at,$a6,5127
    beqz	$at,.L0daa4ca4
.L0daa4b74:
    # Line 95
    li	$v0,0x8010
.L0daa4b78:
    beq	$a1,$v0,.L0daa4da4
    li	$v1,0x8011
    beq	$a1,$v1,.L0daa4df8
    li	$a7,0x8012
    beq	$a1,$a7,.L0daa4cf0
    # Line 122
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 123
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4bb0:
    # Line 30
    sltiu	$at,$a4,6405
    bnez	$at,.L0daa4c48
    sltiu	$v0,$a4,6406
    li	$t0,6406
    beqz	$v0,.L0daa4d1c
    nop
.L0daa4bc8:
    # Line 44
    beq	$t0,$a5,.L0daa4b64
    li	$v1,6407
.L0daa4bd0:
    beq	$a5,$v1,.L0daa4b64
    li	$a7,6408
    beq	$a5,$a7,.L0daa4b64
    li	$at,6409
    beq	$a5,$at,.L0daa4b64
    li	$v0,6410
    beq	$a5,$v0,.L0daa4b64
    li	$v1,0x8049
    beq	$a5,$v1,.L0daa4b68
    # Line 57
    sltiu	$a7,$a6,5126
    # Line 55
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 56
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4c1c:
    # Line 59
    sltiu	$a7,$a6,5123
    bnez	$a7,.L0daa4c80
    sltiu	$at,$a6,5124
    bnez	$at,.L0daa4b74
    sltiu	$v0,$a6,5125
    bnez	$v0,.L0daa4e84
    sltiu	$v1,$a6,5126
    beqz	$v1,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4b78
    # Line 95
    li	$v0,0x8010
.L0daa4c48:
    # Line 30
    sltiu	$a7,$a4,6404
    bnez	$a7,.L0daa4d44
    sltiu	$at,$a4,6405
    beqz	$at,.L0daa4d24
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 30
    b	.L0daa4bc8
    li	$t0,6406
.L0daa4c64:
    sltiu	$v0,$a4,6410
    bnez	$v0,.L0daa4d58
    sltiu	$v1,$a4,6411
    beqz	$v1,.L0daa4e50
    li	$v1,0x8000
    b	.L0daa4bc8
    li	$t0,6406
.L0daa4c80:
    # Line 59
    sltiu	$a7,$a6,5121
    bnez	$a7,.L0daa4d74
    sltiu	$at,$a6,5122
    bnez	$at,.L0daa4b74
    li	$v0,5122
    bne	$a6,$v0,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4b78
    # Line 95
    li	$v0,0x8010
.L0daa4ca4:
    # Line 59
    li	$a5,0x8034
    sltu	$v1,$a6,$a5
    bnez	$v1,.L0daa4dd8
    sltu	$a7,$a5,$a6
    bnez	$a7,.L0daa4ed0
    # Line 81
    li	$at,6408
.L0daa4cbc:
    beq	$a4,$at,.L0daa4b74
    li	$v0,0x8000
    beq	$a4,$v0,.L0daa4b78
    # Line 95
    li	$v0,0x8010
    # Line 86
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    # Line 87
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4cf0:
    # Line 113
    lw	$v1,936($a0)
    slt	$v1,$v1,$a2
    bnez	$v1,.L0daa4e64
    # Line 117
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 113
    lw	$a7,940($a0)
    slt	$a7,$a7,$a3
    bnez	$a7,.L0daa4e60
    # Line 126
    li	$v0,1
.L0daa4d10:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4d1c:
    # Line 30
    beq	$t0,$a4,.L0daa4bc8
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daa4d24:
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 43
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4d44:
    # Line 30
    li	$at,6403
    bne	$a4,$at,.L0daa4d24
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 30
    b	.L0daa4bc8
    li	$t0,6406
.L0daa4d58:
    sltiu	$v0,$a4,6409
    bnez	$v0,.L0daa4e3c
    sltiu	$v1,$a4,6410
    beqz	$v1,.L0daa4d24
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 30
    b	.L0daa4bc8
    li	$t0,6406
.L0daa4d74:
    # Line 59
    li	$a7,5120
    beq	$a6,$a7,.L0daa4b78
    # Line 95
    li	$v0,0x8010
.L0daa4d80:
    # Line 91
    # lw $t9, -29008($gp) # &__glSetError
.L0daa4d84:
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 92
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4da4:
    # Line 97
    lw	$at,800($a0)
    slt	$at,$at,$a2
    beqz	$at,.L0daa4d10
    # Line 126
    li	$v0,1
    # Line 99
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1281
    # Line 100
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4dd8:
    # Line 59
    li	$a5,0x8033
    sltu	$v0,$a6,$a5
    bnez	$v0,.L0daa4e98
    sltu	$v1,$a5,$a6
    bnez	$v1,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4cbc
    # Line 81
    li	$at,6408
.L0daa4df8:
    # Line 104
    lw	$a7,868($a0)
    slt	$a7,$a7,$a2
    bnez	$a7,.L0daa4e1c
    # Line 108
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 104
    lw	$at,872($a0)
    slt	$at,$at,$a3
    beqz	$at,.L0daa4d10
    # Line 126
    li	$v0,1
    # Line 108
    # lw $t9, -29008($gp) # &__glSetError
.L0daa4e1c:
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1281
    # Line 109
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4e3c:
    # Line 30
    li	$v0,6408
    bne	$a4,$v0,.L0daa4d24
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 30
    b	.L0daa4bc8
    li	$t0,6406
.L0daa4e50:
    bne	$a4,$v1,.L0daa4d24
    # Line 42
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4bc8
    # Line 30
    li	$t0,6406
.L0daa4e60:
    # Line 117
    # lw $t9, -29008($gp) # &__glSetError
.L0daa4e64:
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1281
    # Line 118
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4e84:
    # Line 59
    li	$a7,5124
    bne	$a6,$a7,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4b78
    # Line 95
    li	$v0,0x8010
.L0daa4e98:
    # Line 59
    li	$at,0x8032
    bne	$a6,$at,.L0daa4d80
    # Line 69
    li	$v0,6407
    beq	$a4,$v0,.L0daa4b78
    # Line 95
    li	$v0,0x8010
    # Line 73
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    # Line 74
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4ed0:
    # Line 59
    li	$a5,0x8036
    sltu	$v1,$a6,$a5
    bnez	$v1,.L0daa4f14
    sltu	$a7,$a5,$a6
    bnez	$a7,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4cbc
    # Line 81
    li	$at,6408
.L0daa4ef0:
    # Line 27
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1281
    # Line 28
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa4f14:
    # Line 59
    li	$at,0x8035
    bne	$a6,$at,.L0daa4d84
    # Line 91
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daa4cbc
    # Line 81
    li	$at,6408
.end __glCheckConvolutionFilterArgs

# Function: __glim_ConvolutionFilter1DEXT
# Declared: Line 130 (Source lines: 133-155)
# Address: 0x0daa4f28 - 0x0daa509c (Size: 372 bytes, Frame: 128)
.globl __glim_ConvolutionFilter1DEXT
.ent __glim_ConvolutionFilter1DEXT
__glim_ConvolutionFilter1DEXT:
    # Line 133
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$a5,48($sp)
    sd	$a4,24($sp)
    sd	$a3,32($sp)
    sd	$a2,16($sp)
    sd	$a1,40($sp)
    sd	$a0,8($sp)
    sd	$gp,56($sp)
    lui	$at,0x15
    addiu	$at,$at,10560
    # Line 135
    lw	$t0,__glBeginMode
    lw	$a6,__glCurrentContext
    # Line 133
    addu	$gp,$t9,$at
    # Line 135
    beqz	$t0,.L0daa4fc4
    sd	$a6,0($sp)
    sd	$ra,64($sp)
    sd	$a6,0($sp)
    sd	$a0,8($sp)
    sd	$a2,16($sp)
    sd	$a4,24($sp)
    sd	$a3,32($sp)
    sd	$a1,40($sp)
    li	$v0,2
    beq	$t0,$v0,.L0daa4fac
    sd	$a5,48($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa4fac:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa4fc4:
    ld	$a0,0($sp)
    # Line 137
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    ld	$a6,24($sp)
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    ld	$a5,40($sp)
    ld	$a4,32($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a3,1
    beqz	$v0,.L0daa5090
    ld	$ra,64($sp)
    # Line 139
    ld	$at,8($sp)
    li	$v0,0x8010
    beq	$at,$v0,.L0daa5018
    # Line 142
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 143
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa5018:
    # Line 148
    ld	$a1,0($sp)
    # Line 149
    ld	$v1,40($sp)
    # Line 148
    ld	$a2,16($sp)
    # Line 149
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    move	$a0,$v1
    # Line 148
    sw	$a2,792($a1)
    # Line 149
    jal	__glElementsPerGroup
    # Line 147
    sw	$v1,752($a1)
    # Line 151
    move	$a7,$zero
    ld	$a6,8($sp)
    ld	$a5,48($sp)
    ld	$a4,24($sp)
    ld	$t0,0($sp)
    ld	$a3,32($sp)
    li	$a2,1
    lw	$t9,12592($t0)
    ld	$a1,16($sp)
    move	$a0,$t0
    jalr	$t9
    # Line 149
    sw	$v0,756($t0)
    # Line 154
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11764($at)
    ori	$ra,$ra,0x10
    sw	$ra,11764($at)
    # Line 155
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa5090:
    ld	$gp,56($sp)
    # Line 139
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_ConvolutionFilter1DEXT

# Function: __glim_ConvolutionFilter2DEXT
# Declared: Line 157 (Source lines: 161-184)
# Address: 0x0daa509c - 0x0daa5220 (Size: 388 bytes, Frame: 144)
.globl __glim_ConvolutionFilter2DEXT
.ent __glim_ConvolutionFilter2DEXT
__glim_ConvolutionFilter2DEXT:
    # Line 161
    addiu	$sp,$sp,-144
    sd	$ra,72($sp)
    sd	$a6,56($sp)
    sd	$a5,32($sp)
    sd	$a4,40($sp)
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    sd	$a1,48($sp)
    sd	$a0,8($sp)
    sd	$gp,64($sp)
    lui	$at,0x15
    addiu	$at,$at,10188
    # Line 163
    lw	$t1,__glBeginMode
    lw	$t0,__glCurrentContext
    # Line 161
    addu	$gp,$t9,$at
    # Line 163
    beqz	$t1,.L0daa5140
    sd	$t0,0($sp)
    sd	$ra,72($sp)
    sd	$t0,0($sp)
    sd	$a0,8($sp)
    sd	$a2,16($sp)
    sd	$a3,24($sp)
    sd	$a5,32($sp)
    sd	$a4,40($sp)
    sd	$a1,48($sp)
    li	$v0,2
    beq	$t1,$v0,.L0daa5128
    sd	$a6,56($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daa5128:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa5140:
    ld	$a0,0($sp)
    # Line 165
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    ld	$a3,24($sp)
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    bal __glCheckConvolutionFilterArgs
    ld	$a6,32($sp)
    beqz	$v0,.L0daa5214
    ld	$ra,72($sp)
    # Line 167
    ld	$at,8($sp)
    li	$v0,0x8011
    beq	$at,$v0,.L0daa5194
    # Line 170
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 171
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daa5194:
    # Line 178
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    # Line 177
    ld	$a1,0($sp)
    ld	$v1,48($sp)
    ld	$a3,24($sp)
    # Line 176
    ld	$a2,16($sp)
    # Line 178
    move	$a0,$v1
    # Line 177
    sw	$a3,864($a1)
    # Line 176
    sw	$a2,860($a1)
    # Line 178
    jal	__glElementsPerGroup
    # Line 175
    sw	$v1,820($a1)
    # Line 180
    move	$a7,$zero
    ld	$a6,8($sp)
    ld	$a5,56($sp)
    ld	$a4,32($sp)
    ld	$t0,0($sp)
    ld	$a3,40($sp)
    ld	$a2,24($sp)
    lw	$t9,12592($t0)
    ld	$a1,16($sp)
    move	$a0,$t0
    jalr	$t9
    # Line 178
    sw	$v0,824($t0)
    # Line 183
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11764($at)
    ori	$ra,$ra,0x10
    sw	$ra,11764($at)
    # Line 184
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daa5214:
    ld	$gp,64($sp)
    # Line 167
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_ConvolutionFilter2DEXT

# Function: __glim_SeparableFilter2DEXT
# Declared: Line 186 (Source lines: 190-214)
# Address: 0x0daa5220 - 0x0daa53ac (Size: 396 bytes, Frame: 176)
.globl __glim_SeparableFilter2DEXT
.ent __glim_SeparableFilter2DEXT
__glim_SeparableFilter2DEXT:
    # Line 190
    addiu	$sp,$sp,-176
    sd	$ra,96($sp)
    sd	$a7,72($sp)
    sd	$a6,80($sp)
    sd	$a5,64($sp)
    sd	$a4,48($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a1,56($sp)
    sd	$a0,24($sp)
    sd	$gp,88($sp)
    lui	$at,0x15
    addiu	$at,$at,9800
    # Line 192
    lw	$t2,__glBeginMode
    lw	$t1,__glCurrentContext
    # Line 190
    addu	$gp,$t9,$at
    # Line 192
    beqz	$t2,.L0daa52cc
    sd	$t1,16($sp)
    sd	$ra,96($sp)
    sd	$t1,16($sp)
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a4,48($sp)
    sd	$a1,56($sp)
    sd	$a5,64($sp)
    sd	$a7,72($sp)
    li	$v0,2
    beq	$t2,$v0,.L0daa52b4
    sd	$a6,80($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daa52b4:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa52cc:
    ld	$a0,16($sp)
    # Line 194
    ld	$a1,24($sp)
    ld	$a2,40($sp)
    ld	$a3,32($sp)
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    ld	$a4,48($sp)
    ld	$a5,56($sp)
    bal __glCheckConvolutionFilterArgs
    ld	$a6,64($sp)
    beqz	$v0,.L0daa53a0
    ld	$ra,96($sp)
    # Line 196
    ld	$at,24($sp)
    li	$v0,0x8012
    beq	$at,$v0,.L0daa5320
    # Line 199
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 200
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daa5320:
    # Line 208
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    # Line 207
    ld	$a1,16($sp)
    ld	$v1,56($sp)
    ld	$a3,32($sp)
    # Line 206
    ld	$a2,40($sp)
    # Line 208
    move	$a0,$v1
    # Line 207
    sw	$a3,932($a1)
    # Line 206
    sw	$a2,928($a1)
    # Line 208
    jal	__glElementsPerGroup
    # Line 205
    sw	$v1,888($a1)
    ld	$a7,24($sp)
    # Line 208
    ld	$a0,16($sp)
    # Line 210
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    # Line 208
    sw	$v0,892($a0)
    # Line 210
    sw	$zero,4($sp)
    ld	$a4,64($sp)
    lw	$t9,12596($a0)
    ld	$a3,48($sp)
    ld	$a2,32($sp)
    jalr	$t9
    ld	$a1,40($sp)
    # Line 213
    li	$ra,2
    sw	$ra,__glBeginMode
    ld	$ra,16($sp)
    lw	$t0,11764($ra)
    ori	$t0,$t0,0x10
    sw	$t0,11764($ra)
    # Line 214
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daa53a0:
    ld	$gp,88($sp)
    # Line 196
    jr	$ra
    addiu	$sp,$sp,176
.end __glim_SeparableFilter2DEXT

# Function: __glim_CopyConvolutionFilter1DEXT
# Declared: Line 216 (Source lines: 218-242)
# Address: 0x0daa53ac - 0x0daa5510 (Size: 356 bytes, Frame: 240)
.globl __glim_CopyConvolutionFilter1DEXT
.ent __glim_CopyConvolutionFilter1DEXT
__glim_CopyConvolutionFilter1DEXT:
    # Line 218
    addiu	$sp,$sp,-112
    sd	$ra,56($sp)
    sd	$a4,16($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$gp,48($sp)
    lui	$at,0x15
    addiu	$at,$at,9404
    # Line 220
    lw	$a7,__glBeginMode
    lw	$a5,__glCurrentContext
    # Line 218
    addu	$gp,$t9,$at
    # Line 220
    beqz	$a7,.L0daa5440
    sd	$a5,0($sp)
    sd	$ra,56($sp)
    sd	$a5,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    sd	$a1,24($sp)
    sd	$a3,32($sp)
    li	$v0,2
    beq	$a7,$v0,.L0daa5428
    sd	$a2,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daa5428:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa5440:
    ld	$a0,0($sp)
    # Line 223
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    move	$a3,$zero
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    li	$a6,5126
    ld	$a5,24($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a4,6408
    beqz	$v0,.L0daa5504
    ld	$ra,56($sp)
    # Line 225
    ld	$at,8($sp)
    li	$v0,0x8010
    beq	$at,$v0,.L0daa5494
    # Line 228
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 229
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daa5494:
    # Line 235
    ld	$a1,0($sp)
    # Line 236
    ld	$v1,24($sp)
    # Line 235
    ld	$a2,16($sp)
    # Line 236
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    move	$a0,$v1
    # Line 235
    sw	$a2,792($a1)
    # Line 236
    jal	__glElementsPerGroup
    # Line 234
    sw	$v1,752($a1)
    ld	$a5,16($sp)
    # Line 238
    ld	$a4,32($sp)
    ld	$a6,0($sp)
    ld	$a3,40($sp)
    ld	$a2,24($sp)
    lw	$t9,12608($a6)
    ld	$a1,8($sp)
    move	$a0,$a6
    jalr	$t9
    # Line 236
    sw	$v0,756($a6)
    # Line 241
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11764($at)
    ori	$ra,$ra,0x10
    sw	$ra,11764($at)
    # Line 242
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daa5504:
    ld	$gp,48($sp)
    # Line 225
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_CopyConvolutionFilter1DEXT

# Function: __glim_CopyConvolutionFilter2DEXT
# Declared: Line 244 (Source lines: 247-272)
# Address: 0x0daa5510 - 0x0daa5688 (Size: 376 bytes, Frame: 128)
.globl __glim_CopyConvolutionFilter2DEXT
.ent __glim_CopyConvolutionFilter2DEXT
__glim_CopyConvolutionFilter2DEXT:
    # Line 247
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,32($sp)
    sd	$a0,8($sp)
    sd	$gp,56($sp)
    lui	$at,0x15
    addiu	$at,$at,9048
    # Line 249
    lw	$t0,__glBeginMode
    lw	$a6,__glCurrentContext
    # Line 247
    addu	$gp,$t9,$at
    # Line 249
    beqz	$t0,.L0daa55ac
    sd	$a6,0($sp)
    sd	$ra,64($sp)
    sd	$a6,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    sd	$a5,24($sp)
    sd	$a1,32($sp)
    sd	$a3,40($sp)
    li	$v0,2
    beq	$t0,$v0,.L0daa5594
    sd	$a2,48($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa5594:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa55ac:
    ld	$a0,0($sp)
    # Line 252
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    ld	$a3,24($sp)
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    li	$a6,5126
    ld	$a5,32($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a4,6408
    beqz	$v0,.L0daa567c
    ld	$ra,64($sp)
    # Line 254
    ld	$at,8($sp)
    li	$v0,0x8011
    beq	$at,$v0,.L0daa5600
    # Line 257
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 258
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa5600:
    # Line 266
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    # Line 265
    ld	$a1,0($sp)
    ld	$v1,32($sp)
    ld	$a3,24($sp)
    # Line 264
    ld	$a2,16($sp)
    # Line 266
    move	$a0,$v1
    # Line 265
    sw	$a3,864($a1)
    # Line 264
    sw	$a2,860($a1)
    # Line 266
    jal	__glElementsPerGroup
    # Line 263
    sw	$v1,820($a1)
    ld	$a6,24($sp)
    # Line 268
    ld	$a5,16($sp)
    ld	$a4,40($sp)
    ld	$a7,0($sp)
    ld	$a3,48($sp)
    ld	$a2,32($sp)
    lw	$t9,12612($a7)
    ld	$a1,8($sp)
    move	$a0,$a7
    jalr	$t9
    # Line 266
    sw	$v0,824($a7)
    # Line 271
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11764($at)
    ori	$ra,$ra,0x10
    sw	$ra,11764($at)
    # Line 272
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa567c:
    ld	$gp,56($sp)
    # Line 254
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_CopyConvolutionFilter2DEXT

# Function: __glim_GetConvolutionFilterEXT
# Declared: Line 276 (Source lines: 278-289)
# Address: 0x0daa5688 - 0x0daa577c (Size: 244 bytes, Frame: 224)
.globl __glim_GetConvolutionFilterEXT
.ent __glim_GetConvolutionFilterEXT
__glim_GetConvolutionFilterEXT:
    # Line 278
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a3,32($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    # sd	gp,40(sp)
    lui	$at,0x15
    addiu	$at,$at,8672
    # Line 279
    lw	$a6,__glBeginMode
    lw	$a4,__glCurrentContext
    # Line 278
    # addu	gp,t9,at
    # Line 279
    beqz	$a6,.L0daa5714
    sd	$a4,0($sp)
    sd	$ra,48($sp)
    sd	$a4,0($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    li	$v0,2
    beq	$a6,$v0,.L0daa56fc
    sd	$a3,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # ld	gp,40(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa56fc:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa5714:
    ld	$a0,0($sp)
    # Line 282
    ld	$a1,24($sp)
    move	$a2,$zero
    move	$a3,$zero
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    ld	$a4,16($sp)
    ld	$a6,8($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a5,6408
    bnez	$v0,.L0daa574c
    ld	$ra,48($sp)
    # ld	gp,40(sp)
    # Line 284
    jr	$ra
    addiu	$sp,$sp,96
.L0daa574c:
    ld	$t9,0($sp)
    # Line 287
    ld	$a1,24($sp)
    move	$a0,$t9
    lw	$t9,12600($t9)
    ld	$a2,16($sp)
    ld	$a3,8($sp)
    jal	__glCheckConvolutionFilterArgs
    ld	$a4,32($sp)
    # Line 289
    ld	$ra,48($sp)
    # ld	gp,40(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_GetConvolutionFilterEXT

# Function: __glim_GetSeparableFilterEXT
# Declared: Line 291 (Source lines: 293-307)
# Address: 0x0daa577c - 0x0daa58b0 (Size: 308 bytes, Frame: 128)
.globl __glim_GetSeparableFilterEXT
.ent __glim_GetSeparableFilterEXT
__glim_GetSeparableFilterEXT:
    # Line 293
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$a5,32($sp)
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$a0,0($sp)
    sd	$gp,56($sp)
    lui	$at,0x15
    addiu	$at,$at,8428
    # Line 294
    lw	$t0,__glBeginMode
    lw	$a6,__glCurrentContext
    # Line 293
    addu	$gp,$t9,$at
    # Line 294
    beqz	$t0,.L0daa5818
    sd	$a6,8($sp)
    sd	$ra,64($sp)
    sd	$a0,0($sp)
    sd	$a6,8($sp)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$a5,32($sp)
    sd	$a4,40($sp)
    li	$v0,2
    beq	$t0,$v0,.L0daa5800
    sd	$a3,48($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa5800:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa5818:
    ld	$a0,8($sp)
    # Line 297
    ld	$a1,0($sp)
    move	$a2,$zero
    move	$a3,$zero
    # lw $t9, -28980($gp) # &__glCheckConvolutionFilterArgs
    ld	$a4,24($sp)
    ld	$a6,16($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a5,6408
    beqz	$v0,.L0daa58a4
    ld	$ra,64($sp)
    # Line 299
    ld	$at,0($sp)
    li	$v0,0x8012
    beq	$at,$v0,.L0daa586c
    # Line 302
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 303
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa586c:
    # Line 306
    ld	$a1,0($sp)
    ld	$t9,8($sp)
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    move	$a0,$t9
    lw	$t9,12604($t9)
    ld	$a4,48($sp)
    ld	$a5,40($sp)
    jal	__glSetError
    ld	$a6,32($sp)
    # Line 307
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa58a4:
    ld	$gp,56($sp)
    # Line 299
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_GetSeparableFilterEXT

# Function: __GLconvolutionParameter
# Declared: Line 322 (Source lines: 324-396)
# Address: 0x0daa58b0 - 0x0daa5ae0 (Size: 560 bytes, Frame: 192)
.globl __GLconvolutionParameter
.ent __GLconvolutionParameter
__GLconvolutionParameter:
    # Line 327
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 324
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # Line 327
    lw	$at,__glBeginMode
    # Line 324
    lui	$v1,0x15
    addiu	$v1,$v1,8120
    # Line 327
    beq	$at,$v0,.L0daa5a54
    # Line 324
    addu	$gp,$t9,$v1
    # Line 329
    li	$a4,0x8010
    beq	$a0,$a4,.L0daa5980
    li	$at,0x8011
    beq	$a0,$at,.L0daa5988
    li	$v0,0x8012
    beq	$a0,$v0,.L0daa590c
    # Line 340
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    bal __glSetError
    li	$a0,1280
    # Line 341
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa590c:
    # Line 337
    addiu	$a0,$a5,880
.L0daa5910:
    # Line 345
    li	$v1,0x8013
    beq	$a1,$v1,.L0daa5990
    li	$a4,0x8014
    beq	$a1,$a4,.L0daa59b8
    li	$at,0x8015
    beq	$a1,$at,.L0daa5948
    # Line 393
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    bal __glSetError
    li	$a0,1280
    # Line 394
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa5948:
    # Line 380
    li	$v0,5124
    beql	$a3,$v0,.L0daa5a04
    # Line 381
    lw	$at,0($a2)
    # Line 386
    lwc1	$f3,0($a2)
    swc1	$f3,32($a0)
    # Line 387
    lwc1	$f2,4($a2)
    swc1	$f2,36($a0)
    # Line 388
    lwc1	$f1,8($a2)
    swc1	$f1,40($a0)
    # Line 389
    lwc1	$f0,12($a2)
    swc1	$f0,44($a0)
.L0daa5974:
    ld	$gp,8($sp)
    # Line 396
    jr	$ra
    addiu	$sp,$sp,64
.L0daa5980:
    # Line 332
    b	.L0daa5910
    # Line 331
    addiu	$a0,$a5,744
.L0daa5988:
    # Line 335
    b	.L0daa5910
    # Line 334
    addiu	$a0,$a5,812
.L0daa5990:
    # Line 347
    li	$v1,5124
    beq	$a3,$v1,.L0daa5a74
    li	$a4,5126
    beq	$a3,$a4,.L0daa5a7c
    lw	$a1,0($sp)
.L0daa59a4:
    # Line 356
    li	$a2,0x8016
    bne	$a2,$a1,.L0daa59e8
    # Line 362
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 359
    b	.L0daa5974
    sw	$a2,4($a0)
.L0daa59b8:
    # Line 367
    li	$at,5124
    beql	$a3,$at,.L0daa5a90
    # Line 368
    lw	$v1,0($a2)
    # Line 373
    lwc1	$f3,0($a2)
    swc1	$f3,16($a0)
    # Line 374
    lwc1	$f2,4($a2)
    swc1	$f2,20($a0)
    # Line 375
    lwc1	$f1,8($a2)
    swc1	$f1,24($a0)
    # Line 376
    lwc1	$f0,12($a2)
    b	.L0daa5974
    swc1	$f0,28($a0)
.L0daa59e8:
    sd	$ra,16($sp)
    # Line 362
    bal __glSetError
    li	$a0,1280
    # Line 363
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa5a04:
    # Line 381
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,32($a0)
    # Line 382
    lw	$a4,4($a2)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,36($a0)
    # Line 383
    lw	$v1,8($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,40($a0)
    # Line 384
    lw	$v0,12($a2)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0daa5974
    swc1	$f0,44($a0)
.L0daa5a54:
    # Line 327
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa5a74:
    # Line 350
    b	.L0daa59a4
    # Line 349
    lw	$a1,0($a2)
.L0daa5a7c:
    # Line 352
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a1,$f0
    b	.L0daa59a4
    sll	$a1,$a1,0x0
.L0daa5a90:
    # Line 368
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,16($a0)
    # Line 369
    lw	$v0,4($a2)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,20($a0)
    # Line 370
    lw	$at,8($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,24($a0)
    # Line 371
    lw	$a4,12($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    b	.L0daa5974
    swc1	$f1,28($a0)
.end __GLconvolutionParameter

# Function: __glim_ConvolutionParameteriEXT
# Declared: Line 400 (Source lines: 401-411)
# Address: 0x0daa5ae0 - 0x0daa5b40 (Size: 96 bytes, Frame: 48)
.globl __glim_ConvolutionParameteriEXT
.ent __glim_ConvolutionParameteriEXT
__glim_ConvolutionParameteriEXT:
    # Line 401
    li	$at,0x8013
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    # sd	gp,0(sp)
    lui	$v0,0x15
    addiu	$v0,$v0,7560
    beq	$a1,$at,.L0daa5b20
    nop
    # Line 407
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 408
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5b20:
    # Line 404
    # lw $t9, -28948($gp) # &__GLconvolutionParameter
    li	$a3,5124
    bal __GLconvolutionParameter
    addiu	$a2,$sp,36
    # Line 411
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ConvolutionParameteriEXT

# Function: __glim_ConvolutionParameterivEXT
# Declared: Line 413 (Source lines: 415-427)
# Address: 0x0daa5b40 - 0x0daa5bac (Size: 108 bytes, Frame: 48)
.globl __glim_ConvolutionParameterivEXT
.ent __glim_ConvolutionParameterivEXT
__glim_ConvolutionParameterivEXT:
    # Line 415
    li	$at,0x8013
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    lui	$v0,0x15
    addiu	$v0,$v0,7464
    beq	$a1,$at,.L0daa5b8c
    nop
    li	$v1,0x8014
    beq	$a1,$v1,.L0daa5b8c
    li	$a3,0x8015
    beq	$a1,$a3,.L0daa5b8c
    sd	$ra,8($sp)
    # Line 423
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 424
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5b8c:
    # Line 420
    # lw $t9, -28948($gp) # &__GLconvolutionParameter
    sd	$ra,8($sp)
    bal __GLconvolutionParameter
    li	$a3,5124
    # Line 427
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ConvolutionParameterivEXT

# Function: __glim_ConvolutionParameterfEXT
# Declared: Line 429 (Source lines: 431-441)
# Address: 0x0daa5bac - 0x0daa5c0c (Size: 96 bytes, Frame: 48)
.globl __glim_ConvolutionParameterfEXT
.ent __glim_ConvolutionParameterfEXT
__glim_ConvolutionParameterfEXT:
    # Line 431
    li	$at,0x8013
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x15
    addiu	$v0,$v0,7356
    beq	$a1,$at,.L0daa5bec
    nop
    # Line 437
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 438
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5bec:
    # Line 434
    # lw $t9, -28948($gp) # &__GLconvolutionParameter
    li	$a3,5126
    bal __GLconvolutionParameter
    addiu	$a2,$sp,32
    # Line 441
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ConvolutionParameterfEXT

# Function: __glim_ConvolutionParameterfvEXT
# Declared: Line 443 (Source lines: 445-457)
# Address: 0x0daa5c0c - 0x0daa5c78 (Size: 108 bytes, Frame: 48)
.globl __glim_ConvolutionParameterfvEXT
.ent __glim_ConvolutionParameterfvEXT
__glim_ConvolutionParameterfvEXT:
    # Line 445
    li	$at,0x8013
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    lui	$v0,0x15
    addiu	$v0,$v0,7260
    beq	$a1,$at,.L0daa5c58
    nop
    li	$v1,0x8014
    beq	$a1,$v1,.L0daa5c58
    li	$a3,0x8015
    beq	$a1,$a3,.L0daa5c58
    sd	$ra,8($sp)
    # Line 453
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 454
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5c58:
    # Line 450
    # lw $t9, -28948($gp) # &__GLconvolutionParameter
    sd	$ra,8($sp)
    bal __GLconvolutionParameter
    li	$a3,5126
    # Line 457
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ConvolutionParameterfvEXT

# Function: __GLgetConvolutionParameter
# Declared: Line 466 (Source lines: 468-558)
# Address: 0x0daa5c78 - 0x0daa5f80 (Size: 776 bytes, Frame: 48)
.globl __GLgetConvolutionParameter
.ent __GLgetConvolutionParameter
__GLgetConvolutionParameter:
    # Line 470
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 468
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 470
    lw	$at,__glBeginMode
    # Line 468
    lui	$v1,0x15
    addiu	$v1,$v1,7152
    # Line 470
    beq	$at,$v0,.L0daa5e78
    # Line 468
    addu	$gp,$t9,$v1
    # Line 471
    li	$a4,0x8010
    beq	$a0,$a4,.L0daa5d08
    li	$at,0x8011
    beq	$a0,$at,.L0daa5d24
    li	$v0,0x8012
    beq	$a0,$v0,.L0daa5cd4
    # Line 487
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 488
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5cd4:
    # Line 484
    addiu	$a0,$a5,880
.L0daa5cd8:
    # Line 489
    la	$at,sub_0dbf0000
.L0daa5cdc:
    lui	$a5,0xffff
    ori	$a5,$a5,0x7fed
    addu	$a5,$a1,$a5
    lui	$at,%hi(jtbl_0dbeb698)
    sltiu	$v0,$a5,9
    sll	$a5,$a5,0x2
    beqz	$v0,.L0daa5d2c
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbeb698)($a5)
    jr	$at
    # Line 499
    li	$v0,5124
.L0daa5d08:
    # Line 473
    li	$v0,0x8019
    beq	$a1,$v0,.L0daa5f60
    li	$v1,0x801b
    beq	$a1,$v1,.L0daa5f60
    # Line 478
    addiu	$a0,$a5,744
    # Line 479
    b	.L0daa5cdc
    # Line 489
    la	$at,sub_0dbf0000
.L0daa5d24:
    # Line 482
    b	.L0daa5cd8
    # Line 481
    addiu	$a0,$a5,812
.L0daa5d2c:
    # Line 555
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 556
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5d4c:
    # Line 493
    li	$a1,5124
    beq	$a3,$a1,.L0daa5e98
    lw	$a1,8($a0)
    # Line 496
    dsll32	$a4,$a1,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f0
    nop
    cvt.s.l	$f0,$f0
    b	.L0daa5d9c
    swc1	$f0,0($a2)
.L0daa5d74:
    # Line 529
    li	$at,5124
    beq	$a3,$at,.L0daa5ec8
    lwc1	$f4,16($a0)
    # Line 535
    swc1	$f4,0($a2)
    # Line 536
    lwc1	$f3,20($a0)
    swc1	$f3,4($a2)
    # Line 537
    lwc1	$f2,24($a0)
    swc1	$f2,8($a2)
    # Line 538
    lwc1	$f1,28($a0)
    swc1	$f1,12($a2)
.L0daa5d9c:
    ld	$gp,0($sp)
    # Line 558
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5da8:
    # Line 499
    beq	$a3,$v0,.L0daa5ea0
    lw	$a1,48($a0)
    # Line 502
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0daa5d9c
    swc1	$f0,0($a2)
.L0daa5dc4:
    # Line 505
    li	$v1,5124
    beq	$a3,$v1,.L0daa5ea8
    lw	$a1,52($a0)
    # Line 508
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    b	.L0daa5d9c
    swc1	$f1,0($a2)
.L0daa5de4:
    # Line 511
    li	$a1,5124
    beq	$a3,$a1,.L0daa5eb0
    lw	$a1,56($a0)
    # Line 514
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    b	.L0daa5d9c
    swc1	$f2,0($a2)
.L0daa5e04:
    # Line 517
    li	$a4,5124
    beq	$a3,$a4,.L0daa5eb8
    lw	$a1,60($a0)
    # Line 520
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    b	.L0daa5d9c
    swc1	$f3,0($a2)
.L0daa5e24:
    # Line 523
    li	$at,5124
    beq	$a3,$at,.L0daa5ec0
    lw	$a1,4($a0)
    # Line 526
    dsll32	$v0,$a1,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    b	.L0daa5d9c
    swc1	$f0,0($a2)
.L0daa5e4c:
    # Line 542
    li	$v1,5124
    beq	$a3,$v1,.L0daa5f14
    lwc1	$f4,32($a0)
    # Line 548
    swc1	$f4,0($a2)
    # Line 549
    lwc1	$f3,36($a0)
    swc1	$f3,4($a2)
    # Line 550
    lwc1	$f2,40($a0)
    swc1	$f2,8($a2)
    # Line 551
    lwc1	$f1,44($a0)
    b	.L0daa5d9c
    swc1	$f1,12($a2)
.L0daa5e78:
    # Line 470
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa5e98:
    # Line 494
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5ea0:
    # Line 500
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5ea8:
    # Line 506
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5eb0:
    # Line 512
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5eb8:
    # Line 518
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5ec0:
    # Line 524
    b	.L0daa5d9c
    sw	$a1,0($a2)
.L0daa5ec8:
    # Line 530
    trunc.w.s	$f3,$f4
    mfc1	$v1,$f3
    nop
    sw	$v1,0($a2)
    # Line 531
    lwc1	$f2,20($a0)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sw	$v0,4($a2)
    # Line 532
    lwc1	$f1,24($a0)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,8($a2)
    # Line 533
    lwc1	$f0,28($a0)
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    b	.L0daa5d9c
    sw	$a4,12($a2)
.L0daa5f14:
    # Line 543
    trunc.w.s	$f3,$f4
    mfc1	$v1,$f3
    nop
    sw	$v1,0($a2)
    # Line 544
    lwc1	$f2,36($a0)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sw	$v0,4($a2)
    # Line 545
    lwc1	$f1,40($a0)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,8($a2)
    # Line 546
    lwc1	$f0,44($a0)
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    b	.L0daa5d9c
    sw	$a4,12($a2)
.L0daa5f60:
    # Line 475
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 476
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __GLgetConvolutionParameter

# Function: __glim_GetConvolutionParameterivEXT
# Declared: Line 562 (Source lines: 564-566)
# Address: 0x0daa5f80 - 0x0daa5fb4 (Size: 52 bytes, Frame: 48)
.globl __glim_GetConvolutionParameterivEXT
.ent __glim_GetConvolutionParameterivEXT
__glim_GetConvolutionParameterivEXT:
    # Line 564
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x15
    addiu	$at,$at,6376
    # addu	gp,t9,at
    # Line 565
    # lw $t9, -28928($gp) # &__GLgetConvolutionParameter
    sd	$ra,0($sp)
    bal __GLgetConvolutionParameter
    li	$a3,5124
    # Line 566
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetConvolutionParameterivEXT

# Function: __glim_GetConvolutionParameterfvEXT
# Declared: Line 568 (Source lines: 570-572)
# Address: 0x0daa5fb4 - 0x0daa5fe8 (Size: 52 bytes, Frame: 48)
.globl __glim_GetConvolutionParameterfvEXT
.ent __glim_GetConvolutionParameterfvEXT
__glim_GetConvolutionParameterfvEXT:
    # Line 570
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x15
    addiu	$at,$at,6324
    # addu	gp,t9,at
    # Line 571
    # lw $t9, -28928($gp) # &__GLgetConvolutionParameter
    sd	$ra,0($sp)
    bal __GLgetConvolutionParameter
    li	$a3,5126
    # Line 572
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetConvolutionParameterfvEXT

# Function: __glConvolutionParameterfvEXT_size
# Declared: Line 574 (Source lines: 576-584)
# Address: 0x0daa5fe8 - 0x0daa602c (Size: 68 bytes, Frame: 0)
.globl __glConvolutionParameterfvEXT_size
.ent __glConvolutionParameterfvEXT_size
__glConvolutionParameterfvEXT_size:
    # Line 576
    li	$at,0x8013
    beq	$a0,$at,.L0daa6018
    li	$v0,0x8014
    beq	$a0,$v0,.L0daa6024
    li	$v1,0x8015
    beq	$a0,$v1,.L0daa600c
    # Line 584
    li	$v0,-1
    jr	$ra
    nop
.L0daa600c:
    # Line 582
    li	$v0,16
    jr	$ra
    nop
.L0daa6018:
    # Line 578
    li	$v0,4
    jr	$ra
    nop
.L0daa6024:
    # Line 580
    jr	$ra
    li	$v0,16
.end __glConvolutionParameterfvEXT_size

# Function: __glConvolutionParameterivEXT_size
# Declared: Line 588 (Source lines: 590-598)
# Address: 0x0daa602c - 0x0daa6070 (Size: 68 bytes, Frame: 0)
.globl __glConvolutionParameterivEXT_size
.ent __glConvolutionParameterivEXT_size
__glConvolutionParameterivEXT_size:
    # Line 590
    li	$at,0x8013
    beq	$a0,$at,.L0daa605c
    li	$v0,0x8014
    beq	$a0,$v0,.L0daa6068
    li	$v1,0x8015
    beq	$a0,$v1,.L0daa6050
    # Line 598
    li	$v0,-1
    jr	$ra
    nop
.L0daa6050:
    # Line 596
    li	$v0,16
    jr	$ra
    nop
.L0daa605c:
    # Line 592
    li	$v0,4
    jr	$ra
    nop
.L0daa6068:
    # Line 594
    jr	$ra
    li	$v0,16
.end __glConvolutionParameterivEXT_size

.late_rodata
jtbl_0dbeb698:
    .word .L0daa5e24
    .word .L0daa5d74
    .word .L0daa5e4c
    .word .L0daa5d2c
    .word .L0daa5d4c
    .word .L0daa5da8
    .word .L0daa5dc4
    .word .L0daa5de4
    .word .L0daa5e04

