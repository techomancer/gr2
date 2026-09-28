# Source: ../soft/so_context.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_context.c
# Total Functions: 17

.text

# Function: __glDispatchExec
# Declared: Line 39 (Source lines: 40-40)
# Address: 0x0daa2bc0 - 0x0daa2bc8 (Size: 8 bytes, Frame: 0)
.ent __glDispatchExec
__glDispatchExec:
    # Line 40
    jr	$ra
    addiu	$v0,$a0,7648
.end __glDispatchExec

# Function: __glBeginDispatchOverride
# Declared: Line 43 (Source lines: 44-48)
# Address: 0x0daa2bc8 - 0x0daa2c10 (Size: 72 bytes, Frame: 0)
.ent __glBeginDispatchOverride
__glBeginDispatchOverride:
    # Line 44
    li	$a2,257
    move	$a3,$zero
    addiu	$a5,$a0,7648
    li	$a4,4168
.L0daa2bd8:
    addu	$v0,$a3,$a5
    addu	$at,$a3,$a4
    addiu	$a3,$a3,8
    ld	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0daa2bd8
    sd	$at,0($v0)
    lw	$v0,4688($a0)
    beqz	$v0,.L0daa2c08
    # Line 46
    addiu	$v1,$a0,7648
    # Line 48
    jr	$ra
    nop
.L0daa2c08:
    jr	$ra
    # Line 46
    sw	$v1,5580($a0)
.end __glBeginDispatchOverride

# Function: __glEndDispatchOverride
# Declared: Line 50 (Source lines: 50-54)
# Address: 0x0daa2c10 - 0x0daa2c2c (Size: 28 bytes, Frame: 0)
.ent __glEndDispatchOverride
__glEndDispatchOverride:
    # Line 50
    lw	$at,4688($a0)
    beqz	$at,.L0daa2c24
    # Line 52
    li	$v0,4168
    # Line 54
    jr	$ra
    nop
.L0daa2c24:
    jr	$ra
    # Line 52
    sw	$v0,5580($a0)
.end __glEndDispatchOverride

# Function: __glEarlyInitContext
# Declared: Line 62 (Source lines: 63-126)
# Address: 0x0daa2c2c - 0x0daa2dc4 (Size: 408 bytes, Frame: 48)
.globl __glEarlyInitContext
.ent __glEarlyInitContext
__glEarlyInitContext:
    # Line 89
    li	$a2,116
    # Line 63
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 88
    lw	$s8,3328($s0)
    # sd	gp,24(sp)
    # Line 63
    lui	$a7,0x15
    addiu	$a7,$a7,19516
    # addu	gp,t9,a7
    # Line 89
    lw	$t9,4($s0)
    move	$a1,$s8
    # Line 69
    lwc1	$f3,_lit_3f000000
    # Line 63
    la	$a6,__glNop
    # Line 68
    lwc1	$f2,_lit_3f800000
    # Line 79
    la	$a5,__glDestroyContext
    # Line 85
    sw	$a6,11868($s0)
    # Line 84
    sw	$a6,12008($s0)
    # Line 83
    sw	$a6,11800($s0)
    # Line 79
    sw	$a5,84($s0)
    # Line 76
    swc1	$f2,3408($s0)
    # Line 75
    swc1	$f2,3400($s0)
    # Line 74
    swc1	$f2,3404($s0)
    # Line 73
    swc1	$f2,3396($s0)
    # Line 69
    swc1	$f3,3280($s0)
    # Line 68
    swc1	$f2,3284($s0)
    # Line 82
    la	$a3,sub_0daa0000
    # Line 81
    la	$v0,sub_0daa0000
    # Line 66
    lw	$v1,3372($s0)
    # Line 78
    la	$a4,__glCopyContext
    # Line 80
    la	$at,sub_0daa0000
    # Line 66
    mtc1	$v1,$f0
    # Line 78
    sw	$a4,116($s0)
    # Line 67
    lw	$a4,3376($s0)
    # Line 66
    cvt.s.w	$f0,$f0
    # Line 80
    addiu	$at,$at,11200
    # Line 67
    mtc1	$a4,$f1
    # Line 81
    addiu	$v0,$v0,11208
    # Line 82
    addiu	$a3,$a3,11280
    # Line 67
    cvt.s.w	$f1,$f1
    # Line 82
    sw	$a3,144($s0)
    # Line 81
    sw	$v0,140($s0)
    # Line 80
    sw	$at,136($s0)
    # Line 66
    swc1	$f0,3380($s0)
    # Line 89
    jalr	$t9
    # Line 67
    swc1	$f1,3384($s0)
    # Line 93
    li	$a2,224
    move	$a1,$s8
    lw	$t9,4($s0)
    move	$a0,$s0
    # Line 92
    sw	$zero,28200($s0)
    # Line 93
    jalr	$t9
    # Line 89
    sw	$v0,1488($s0)
    # Line 97
    li	$a2,4
    lw	$a1,3480($s0)
    lw	$t9,4($s0)
    move	$a0,$s0
    # Line 93
    sw	$v0,28104($s0)
    # Line 97
    jalr	$t9
    ld	$s8,16($sp)
    # Line 100
    li	$a2,4
    lw	$t9,4($s0)
    lw	$a1,3484($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 97
    sw	$v0,12676($s0)
    # Line 102
    li	$a2,4
    lw	$t9,4($s0)
    lw	$a1,3488($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 100
    sw	$v0,12684($s0)
    # Line 106
    # lw $t9, -27044($gp) # &__glEarlyInitTextureState
    move	$a0,$s0
    jal	__glEarlyInitTextureState
    # Line 102
    sw	$v0,4592($s0)
    # Line 107
    # lw $t9, -26080($gp) # &__glEarlyInitTransformState
    jal	__glEarlyInitTransformState
    move	$a0,$s0
    # Line 115
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,220
    jalr	$t9
    lw	$a1,3180($s0)
    # Line 125
    move	$a0,$s0
    # Line 115
    sw	$v0,31108($s0)
    # Line 120
    la	$t0,__glNewArena
    # Line 125
    # lw $t9, -31072($gp) # &__glInitDlistState
    # Line 123
    la	$t3,__glArenaFreeAll
    # Line 122
    la	$t2,__glArenaAlloc
    # Line 121
    la	$t1,__glDeleteArena
    # Line 123
    sw	$t3,12648($s0)
    # Line 122
    sw	$t2,12644($s0)
    # Line 121
    sw	$t1,12640($s0)
    # Line 125
    jal	__glInitDlistState
    # Line 120
    sw	$t0,12636($s0)
    # Line 126
    ld	$ra,8($sp)
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glEarlyInitContext

# Function: __glContextSetColorScales
# Declared: Line 128 (Source lines: 129-276)
# Address: 0x0daa2dc4 - 0x0daa3158 (Size: 916 bytes, Frame: 240)
.globl __glContextSetColorScales
.ent __glContextSetColorScales
__glContextSetColorScales:
    # Line 130
    lwc1	$f5,30760($a0)
    lwc1	$f4,3404($a0)
    lwc1	$f11,3284($a0)
    # Line 129
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 130
    lwc1	$f12,30756($a0)
    lwc1	$f10,3396($a0)
    # Line 129
    move	$s0,$a0
    sd	$gp,40($sp)
    # Line 130
    c.eq.s	$f10,$f12
    # Line 129
    lui	$at,0x15
    addiu	$at,$at,19108
    # Line 130
    bc1f	.L0daa2e3c
    # Line 129
    addu	$gp,$t9,$at
    # Line 130
    c.eq.s	$f4,$f5
    lwc1	$f6,30764($s0)
    bc1f	.L0daa3148
    lwc1	$f7,3400($s0)
    # Line 138
    c.eq.s	$f7,$f6
    lwc1	$f8,30796($s0)
    bc1f	.L0daa2e50
    lwc1	$f9,3408($s0)
    c.eq.s	$f9,$f8
    nop
    bc1f	.L0daa2e54
    # Line 160
    mov.s	$f1,$f6
    ld	$gp,40($sp)
    # Line 142
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daa2e3c:
    sd	$s4,64($sp)
    lwc1	$f8,30796($s0)
    lwc1	$f9,3408($s0)
    lwc1	$f6,30764($s0)
    lwc1	$f7,3400($s0)
.L0daa2e50:
    # Line 160
    mov.s	$f1,$f6
.L0daa2e54:
    # Line 167
    div.s	$f1,$f11,$f5
    # Line 159
    mov.s	$f2,$f5
    # Line 168
    div.s	$f2,$f11,$f6
    # Line 158
    mov.s	$f3,$f12
    # Line 169
    div.s	$f3,$f11,$f8
    # Line 174
    div.s	$f13,$f12,$f10
    # Line 175
    div.s	$f14,$f5,$f4
    # Line 176
    div.s	$f15,$f6,$f7
    # Line 177
    div.s	$f16,$f8,$f9
    # Line 161
    mov.s	$f0,$f8
    # Line 166
    div.s	$f0,$f11,$f12
    sdc1	$f12,0($sp)
    sdc1	$f5,8($sp)
    # Line 184
    lw	$v0,12680($s0)
    sd	$s4,64($sp)
    lw	$s4,12676($s0)
    sdc1	$f6,16($sp)
    sdc1	$f8,24($sp)
    sltu	$v0,$s4,$v0
    # Line 177
    swc1	$f16,30796($s0)
    # Line 176
    swc1	$f15,30764($s0)
    # Line 175
    swc1	$f14,30760($s0)
    # Line 174
    swc1	$f13,30756($s0)
    # Line 169
    swc1	$f3,30816($s0)
    # Line 168
    swc1	$f2,30812($s0)
    # Line 167
    swc1	$f1,30808($s0)
    # Line 184
    beqz	$v0,.L0daa2ffc
    # Line 166
    swc1	$f0,30804($s0)
    sd	$s2,80($sp)
    sd	$s3,48($sp)
    sd	$ra,56($sp)
    b	.L0daa2fc8
    sd	$s1,72($sp)
.L0daa2ed8:
    # Line 191
    move	$a0,$s0
    addiu	$a1,$s1,208
    jalr	$t9
    move	$a2,$a1
    # Line 194
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s1,16
    jal	__glScaleColorf
    move	$a2,$a1
.L0daa2efc:
    andi	$v1,$s2,0x40
.L0daa2f00:
    beqz	$v1,.L0daa2fb8
    # Line 200
    nop	# was lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s1,1156
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 203
    lw	$a1,3328($s0)
    blez	$a1,.L0daa2f90
    move	$s3,$zero
    move	$s2,$zero
    # Line 204
    lw	$a1,1336($s1)
.L0daa2f2c:
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addu	$a1,$a1,$s2
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 207
    lw	$a1,1336($s1)
    move	$a0,$s0
    # lw $t9, -28392($gp) # &__glScaleColorf
    addu	$a1,$a1,$s2
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 210
    lw	$a1,1336($s1)
    move	$a0,$s0
    # lw $t9, -28392($gp) # &__glScaleColorf
    addu	$a1,$a1,$s2
    # Line 203
    addiu	$s2,$s2,116
    # Line 210
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 203
    lw	$at,3328($s0)
    addiu	$s3,$s3,1
    slt	$at,$s3,$at
    bnezl	$at,.L0daa2f2c
    # Line 204
    lw	$a1,1336($s1)
.L0daa2f90:
    # Line 214
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s1,1224
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 217
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s1,1304
    jal	__glScaleColorf
    move	$a2,$a1
.L0daa2fb8:
    # Line 185
    lw	$v0,12680($s0)
    sltu	$v0,$s4,$v0
    beqz	$v0,.L0daa2ff0
    ld	$s1,72($sp)
.L0daa2fc8:
    # Line 186
    lw	$s1,0($s4)
    # Line 187
    lw	$s2,0($s1)
    andi	$v1,$s2,0x1
    beqz	$v1,.L0daa2efc
    # Line 185
    addiu	$s4,$s4,4
    # Line 187
    lbu	$a1,3104($s0)
    beqz	$a1,.L0daa2f00
    # Line 194
    andi	$v1,$s2,0x40
    b	.L0daa2ed8
    # Line 191
    nop	# was lw $t9, -28392($gp) # &__glScaleColorf
.L0daa2ff0:
    ld	$ra,56($sp)
    ld	$s3,48($sp)
    ld	$s2,80($sp)
.L0daa2ffc:
    # Line 185
    lbu	$at,3104($s0)
    sd	$ra,56($sp)
    beqz	$at,.L0daa3034
    ld	$s4,64($sp)
    # Line 224
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,360
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 227
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,168
    jal	__glScaleColorf
    move	$a2,$a1
.L0daa3034:
    # Line 232
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,1308
    jal	__glScaleColorf
    move	$a2,$a1
    sd	$s3,48($sp)
    # Line 235
    lw	$v0,3328($s0)
    blez	$v0,.L0daa30cc
    move	$s3,$zero
    sd	$s2,80($sp)
    move	$s2,$zero
    # Line 236
    lw	$a1,1488($s0)
.L0daa3064:
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addu	$a1,$s2,$a1
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 239
    lw	$a1,1488($s0)
    move	$a0,$s0
    # lw $t9, -28392($gp) # &__glScaleColorf
    addu	$a1,$s2,$a1
    addiu	$a1,$a1,16
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 242
    lw	$a1,1488($s0)
    move	$a0,$s0
    # lw $t9, -28392($gp) # &__glScaleColorf
    addu	$a1,$s2,$a1
    # Line 235
    addiu	$s2,$s2,116
    # Line 242
    addiu	$a1,$a1,32
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 235
    lw	$at,3328($s0)
    addiu	$s3,$s3,1
    slt	$at,$s3,$at
    bnezl	$at,.L0daa3064
    # Line 236
    lw	$a1,1488($s0)
    ld	$s2,80($sp)
.L0daa30cc:
    # Line 246
    move	$a0,$s0
    # lw $t9, -28392($gp) # &__glScaleColorf
    ld	$s3,48($sp)
    addiu	$a1,$s0,1376
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 249
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a0,$s0
    addiu	$a1,$s0,1456
    jal	__glScaleColorf
    move	$a2,$a1
    # Line 274
    move	$a0,$s0
    # lw $t9, -30884($gp) # &__glPixelSetColorScales
    # Line 264
    ldc1	$f4,0($sp)
    # Line 267
    ldc1	$f7,24($sp)
    # Line 266
    ldc1	$f6,16($sp)
    # Line 265
    ldc1	$f5,8($sp)
    # Line 267
    swc1	$f7,3408($s0)
    # Line 266
    swc1	$f6,3400($s0)
    # Line 265
    swc1	$f5,3404($s0)
    # Line 264
    swc1	$f4,3396($s0)
    # Line 259
    swc1	$f7,30796($s0)
    # Line 258
    swc1	$f6,30764($s0)
    # Line 257
    swc1	$f5,30760($s0)
    # Line 274
    jal	__glPixelSetColorScales
    # Line 256
    swc1	$f4,30756($s0)
    # Line 276
    ld	$ra,56($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daa3148:
    sd	$s4,64($sp)
    # Line 142
    lwc1	$f8,30796($s0)
    b	.L0daa2e50
    lwc1	$f9,3408($s0)
.end __glContextSetColorScales

# Function: __glSoftResetContext
# Declared: Line 286 (Source lines: 287-746)
# Address: 0x0daa3158 - 0x0daa3c74 (Size: 2844 bytes, Frame: 224)
.globl __glSoftResetContext
.ent __glSoftResetContext
__glSoftResetContext:
    # Line 287
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    # sd	gp,24(sp)
    lui	$v1,0x15
    addiu	$v1,$v1,18192
    # addu	gp,t9,v1
    # Line 314
    la	$v0,__rld_obj_head
    # Line 287
    move	$s0,$a0
    sdc1	$f30,0($sp)
    # Line 314
    lw	$v0,0($v0)
    # Line 292
    lwc1	$f30,3284($a0)
    sd	$s1,32($sp)
    # Line 314
    lw	$at,0($v0)
    li	$s1,-1
    move	$v1,$v0
    beq	$at,$s1,.L0daa3aac
    sd	$v0,16($sp)
    # Line 387
    move	$a6,$v0
    # Line 388
    move	$a4,$zero
    li	$a5,47
    # Line 390
    lw	$a7,0($a6)
.L0daa31ac:
    # Line 391
    lw	$v0,260($a7)
    move	$a3,$v0
    beqz	$v0,.L0daa3240
    move	$a0,$v0
    lbu	$a1,0($v0)
    beqz	$a1,.L0daa31f4
    # Line 400
    li	$a4,1
    # Line 391
    lbu	$v0,0($a0)
    bnel	$a5,$v0,.L0daa31dc
    # Line 396
    lbu	$v0,1($a0)
    # Line 395
    addiu	$a3,$a0,1
.L0daa31d8:
    # Line 396
    lbu	$v0,1($a0)
.L0daa31dc:
    beqz	$v0,.L0daa31f4
    addiu	$a0,$a0,1
    # Line 391
    bnel	$a5,$v0,.L0daa31dc
    # Line 396
    lbu	$v0,1($a0)
    b	.L0daa31d8
    # Line 395
    addiu	$a3,$a0,1
.L0daa31f4:
    # Line 400
    la	$a1,sub_0db30000
    lbu	$a1,-21224($a1)
    # Line 399
    la	$a0,sub_0db30000
    # Line 400
    beqz	$a1,.L0daa3240
    # Line 399
    addiu	$a0,$a0,-21224
    b	.L0daa3228
    # Line 402
    lbu	$v1,0($a3)
.L0daa3210:
    lbu	$a2,0($a0)
    beqz	$a2,.L0daa3240
    nop
    beqz	$a4,.L0daa3240
    nop
    lbu	$v1,0($a3)
.L0daa3228:
    lbu	$at,0($a0)
    addiu	$a3,$a3,1
    beq	$at,$v1,.L0daa3210
    addiu	$a0,$a0,1
    b	.L0daa3210
    move	$a4,$zero
.L0daa3240:
    # Line 389
    bnez	$a4,.L0daa3254
    # Line 405
    lw	$a6,4($a6)
    # Line 389
    bnezl	$a6,.L0daa31ac
    # Line 390
    lw	$a7,0($a6)
    # Line 389
    beqz	$a4,.L0daa3278
.L0daa3254:
    # Line 412
    li	$a0,140
    lw	$a1,272($a7)
    # lw $t9, -22972($gp) # &syssgi
    lw	$a2,276($a7)
    sd	$ra,48($sp)
    jal	syssgi
    addu	$a2,$a2,$a1
    sd	$s5,56($sp)
    ld	$ra,48($sp)
.L0daa3278:
    sd	$s5,56($sp)
    li	$s5,1
.L0daa3280:
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
.L0daa3284:
    # Line 469
    div.s	$f2,$f30,$f5
    # Line 465
    lwc1	$f4,_lit_477fff00
    # Line 468
    div.s	$f1,$f30,$f4
    # Line 464
    lwc1	$f3,_lit_437f0000
    # Line 467
    div.s	$f0,$f30,$f3
    # Line 429
    addiu	$a2,$gp,-22536
    sw	$a2,3316($s0)
    # Line 428
    addiu	$a1,$gp,-22544
    sw	$a1,3312($s0)
    # Line 469
    lw	$a4,3420($s0)
    # Line 466
    swc1	$f5,3304($s0)
    # Line 465
    swc1	$f4,3296($s0)
    # Line 435
    la	$v1,sub_0db30000
    # Line 464
    swc1	$f3,3288($s0)
    # Line 430
    la	$at,sub_0db30000
    # Line 435
    addiu	$v1,$v1,-21192
    sw	$v1,3324($s0)
    # Line 430
    addiu	$at,$at,-21208
    sw	$at,3320($s0)
    # Line 469
    swc1	$f2,3308($s0)
    # Line 468
    swc1	$f1,3300($s0)
    # Line 469
    beqz	$a4,.L0daa3a7c
    # Line 467
    swc1	$f0,3292($s0)
.L0daa32e0:
    # Line 477
    lwc1	$f1,30756($s0)
    div.s	$f1,$f30,$f1
    # Line 478
    lwc1	$f2,30760($s0)
    div.s	$f2,$f30,$f2
    # Line 479
    lwc1	$f3,30764($s0)
    div.s	$f3,$f30,$f3
    # Line 474
    lwc1	$f5,30796($s0)
    # Line 480
    div.s	$f4,$f30,$f5
    # Line 474
    addiu	$a3,$a4,-1
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f5
    # Line 483
    move	$v0,$zero
    move	$a0,$s0
    li	$a3,256
    # Line 480
    swc1	$f4,30816($s0)
    # Line 479
    swc1	$f3,30812($s0)
    # Line 478
    swc1	$f2,30808($s0)
    # Line 477
    swc1	$f1,30804($s0)
    # Line 474
    swc1	$f0,3424($s0)
.L0daa3334:
    # Line 484
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($s0)
    mul.s	$f2,$f2,$f3
    # Line 483
    addiu	$v0,$v0,1
    # Line 484
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f2,3528($a0)
    lwc1	$f0,3292($s0)
    mul.s	$f0,$f0,$f1
    # Line 483
    addiu	$v0,$v0,1
    # Line 484
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f0,3532($a0)
    lwc1	$f2,3292($s0)
    mul.s	$f2,$f2,$f3
    # Line 483
    addiu	$v0,$v0,1
    # Line 484
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f2,3536($a0)
    lwc1	$f0,3292($s0)
    mul.s	$f0,$f0,$f1
    # Line 483
    addiu	$a0,$a0,16
    addiu	$v0,$v0,1
    bne	$v0,$a3,.L0daa3334
    # Line 484
    swc1	$f0,3524($a0)
    # Line 495
    lwc1	$f7,_lit_3f000000
    mov.s	$f6,$f30
    # Line 494
    mov.s	$f4,$f30
    b	.L0daa33c4
    # Line 493
    lwc1	$f5,3380($s0)
.L0daa33c0:
    # Line 502
    mul.s	$f4,$f4,$f7
.L0daa33c4:
    # Line 495
    add.s	$f0,$f5,$f4
    c.eq.s	$f0,$f5
    nop
    bc1fl	.L0daa33c0
    # Line 499
    mov.s	$f6,$f4
    # Line 521
    li	$a5,80
    move	$a3,$zero
    sd	$s4,64($sp)
    # Line 514
    li	$s4,255
    # Line 506
    lwc1	$f1,3280($s0)
    # Line 518
    addiu	$a0,$s0,12720
    # Line 521
    addiu	$v0,$a0,144
    # Line 506
    sub.s	$f1,$f1,$f6
    # Line 510
    lw	$a4,3328($s0)
    # Line 505
    swc1	$f6,3388($s0)
    # Line 513
    li	$a2,2
    # Line 506
    swc1	$f1,3392($s0)
    # Line 513
    sw	$a2,__glBeginMode
    # Line 518
    sw	$a0,12696($s0)
    # Line 515
    sw	$s1,11760($s0)
    # Line 517
    lw	$a1,12684($s0)
    # Line 516
    lw	$v1,12676($s0)
    # Line 514
    sw	$s4,11764($s0)
    # Line 517
    sw	$a1,12688($s0)
    # Line 516
    sw	$v1,12680($s0)
.L0daa3428:
    # Line 521
    addiu	$a0,$a0,768
    addiu	$a3,$a3,4
    addiu	$at,$v0,192
    # Line 522
    sw	$at,-572($a0)
    # Line 521
    addiu	$at,$at,192
    # Line 522
    sw	$at,-380($a0)
    sw	$v0,-764($a0)
    # Line 521
    addiu	$at,$at,192
    addiu	$v0,$at,192
    bne	$a3,$a5,.L0daa3428
    # Line 522
    sw	$at,-188($a0)
    # Line 549
    li	$a0,10
    move	$v0,$zero
    addiu	$a3,$s0,1408
    # Line 547
    lwc1	$f30,_lit_3f800000
    # Line 549
    addiu	$a6,$s0,1328
    # Line 521
    la	$a5,sub_0dbf0000
    # Line 548
    swc1	$f30,1404($s0)
    # Line 546
    mtc1	$zero,$f4
    # Line 521
    addiu	$a5,$a5,-11816
    # Line 541
    lwc1	$f12,44($a5)
    # Line 547
    swc1	$f30,1400($s0)
    # Line 546
    swc1	$f4,1396($s0)
    # Line 545
    swc1	$f12,1388($s0)
    # Line 540
    lwc1	$f10,40($a5)
    # Line 539
    lwc1	$f9,36($a5)
    # Line 538
    lwc1	$f11,32($a5)
    # Line 544
    swc1	$f10,1384($s0)
    # Line 543
    swc1	$f9,1380($s0)
    # Line 542
    swc1	$f11,1376($s0)
    # Line 541
    swc1	$f12,1372($s0)
    # Line 540
    swc1	$f10,1368($s0)
    # Line 539
    swc1	$f9,1364($s0)
    # Line 537
    lwc1	$f1,28($a5)
    # Line 536
    lwc1	$f0,24($a5)
    # Line 538
    swc1	$f11,1360($s0)
    # Line 537
    swc1	$f1,1356($s0)
    # Line 536
    swc1	$f0,1352($s0)
    # Line 535
    lwc1	$f3,20($a5)
    # Line 534
    lwc1	$f2,16($a5)
    # Line 529
    lwc1	$f1,12($a5)
    # Line 535
    swc1	$f3,1348($s0)
    # Line 534
    swc1	$f2,1344($s0)
    # Line 533
    swc1	$f1,1340($s0)
    # Line 528
    lwc1	$f0,8($a5)
    # Line 527
    lwc1	$f3,4($a5)
    # Line 526
    lwc1	$f2,0($a5)
    # Line 532
    swc1	$f0,1336($s0)
    # Line 531
    swc1	$f3,1332($s0)
    # Line 530
    swc1	$f2,1328($s0)
    # Line 529
    swc1	$f1,1320($s0)
    # Line 528
    swc1	$f0,1316($s0)
    # Line 527
    swc1	$f3,1312($s0)
    # Line 526
    swc1	$f2,1308($s0)
.L0daa3500:
    # Line 549
    addu	$v1,$v0,$a3
    addu	$at,$v0,$a6
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa3500
    sd	$at,0($v1)
    # Line 560
    lw	$a3,28104($s0)
    # Line 559
    lw	$v0,1488($s0)
    # Line 556
    sw	$zero,28180($s0)
    # Line 555
    sw	$zero,28168($s0)
    # Line 553
    sw	$zero,28140($s0)
    # Line 551
    lwc1	$f14,_lit_bf800000
    # Line 552
    sw	$zero,28128($s0)
    # Line 561
    move	$a0,$zero
    # Line 554
    swc1	$f14,28164($s0)
    # Line 561
    blez	$a4,.L0daa35ec
    # Line 551
    swc1	$f14,28124($s0)
    # Line 561
    move	$a6,$a4
    andi	$v1,$a4,0x1
    beqz	$v1,.L0daa35e0
    lwc1	$f13,_lit_43340000
    # Line 565
    swc1	$f12,12($v0)
    # Line 564
    swc1	$f10,8($v0)
    # Line 563
    swc1	$f9,4($v0)
    # Line 565
    beqz	$a0,.L0daa3a88
    # Line 562
    swc1	$f11,0($v0)
    # Line 572
    mov.s	$f7,$f11
    swc1	$f11,16($v0)
    # Line 575
    mov.s	$f8,$f12
    swc1	$f12,28($v0)
    # Line 574
    mov.s	$f6,$f10
    swc1	$f10,24($v0)
    # Line 573
    mov.s	$f5,$f9
    swc1	$f9,20($v0)
.L0daa358c:
    # Line 577
    swc1	$f7,32($v0)
    swc1	$f5,36($v0)
    swc1	$f6,40($v0)
    swc1	$f8,44($v0)
    # Line 578
    lwc1	$f1,3284($s0)
    swc1	$f1,56($v0)
    # Line 579
    lwc1	$f0,3284($s0)
    swc1	$f0,72($v0)
    # Line 580
    lwc1	$f3,3284($s0)
    swc1	$f3,124($a3)
    # Line 581
    swc1	$f14,88($v0)
    # Line 582
    swc1	$f14,140($a3)
    # Line 583
    swc1	$f13,100($v0)
    # Line 561
    addiu	$a3,$a3,224
    # Line 584
    lwc1	$f2,3284($s0)
    # Line 561
    addiu	$v0,$v0,116
    addiu	$a0,$a0,1
    # Line 584
    swc1	$f2,-12($v0)
    # Line 587
    sw	$zero,-8($a3)
    # Line 586
    swc1	$f14,-112($a3)
    # Line 585
    sw	$zero,-20($a3)
.L0daa35e0:
    sra	$a1,$a6,0x1
    bnezl	$a1,.L0daa3940
    # Line 565
    swc1	$f12,12($v0)
.L0daa35ec:
    # Line 610
    addiu	$at,$s0,360
    sw	$at,220($s0)
    # Line 594
    li	$a2,4352
    # Line 598
    sw	$a2,1812($s0)
    # Line 597
    sw	$a2,1808($s0)
    # Line 596
    sw	$a2,1804($s0)
    # Line 595
    sw	$a2,1800($s0)
    # Line 594
    sw	$a2,1796($s0)
    # Line 591
    li	$a1,7425
    sw	$a1,1304($s0)
    # Line 590
    li	$v1,5634
    sw	$v1,1300($s0)
    # Line 589
    li	$at,1032
    # Line 608
    lwc1	$f5,3284($s0)
    # Line 589
    sw	$at,1296($s0)
    # Line 610
    lbu	$a2,3104($s0)
    # Line 609
    swc1	$f5,276($s0)
    # Line 607
    lwc1	$f3,3384($s0)
    # Line 608
    swc1	$f5,340($s0)
    # Line 602
    lwc1	$f2,3380($s0)
    # Line 607
    swc1	$f3,348($s0)
    # Line 610
    beqz	$a2,.L0daa3a28
    # Line 602
    swc1	$f2,344($s0)
    sd	$ra,48($sp)
    # Line 613
    lwc1	$f0,48($a5)
    # Line 616
    lwc1	$f3,60($a5)
    # Line 615
    lwc1	$f2,56($a5)
    # Line 614
    lwc1	$f1,52($a5)
    # Line 616
    swc1	$f3,372($s0)
    # Line 615
    swc1	$f2,368($s0)
    # Line 614
    swc1	$f1,364($s0)
    # Line 613
    swc1	$f0,360($s0)
.L0daa366c:
    # Line 651
    ldc1	$f12,_lit8_4000000000000000
    # Line 638
    sh	$s5,458($s0)
    # Line 636
    sw	$s5,452($s0)
    # Line 635
    swc1	$f30,448($s0)
    # Line 634
    swc1	$f30,444($s0)
    # Line 631
    sw	$s5,440($s0)
    # Line 630
    swc1	$f30,436($s0)
    # Line 629
    swc1	$f30,432($s0)
    # Line 626
    swc1	$f30,1520($s0)
    # Line 625
    swc1	$f5,1512($s0)
    # Line 621
    sb	$s5,429($s0)
    # Line 620
    sb	$s5,428($s0)
    # Line 624
    li	$v0,2048
    # Line 637
    li	$a0,0xffff
    # Line 641
    li	$a1,6914
    # Line 643
    li	$a2,1029
    # Line 644
    li	$a3,2305
    sw	$a3,472($s0)
    # Line 643
    sw	$a2,468($s0)
    # Line 642
    sw	$a1,464($s0)
    # Line 641
    sw	$a1,460($s0)
    # Line 637
    sh	$a0,456($s0)
    # Line 624
    sw	$v0,1492($s0)
    mtc1	$zero,$f14
    # Line 651
    lw	$v1,3128($s0)
    # lw $t9, -22968($gp) # &pow
    # Line 646
    swc1	$f14,480($s0)
    # Line 651
    mtc1	$v1,$f13
    # Line 645
    swc1	$f14,476($s0)
    # Line 651
    jal	pow
    cvt.d.w	$f13,$f13
    ldc1	$f15,_lit8_3ff0000000000000
    div.d	$f15,$f15,$f0
    ldc1	$f16,_lit8_408f400000000000
    mul.d	$f15,$f15,$f16
    # Line 657
    # lw $t9, -22964($gp) # &getenv
    la	$a0,sub_0db30000
    # Line 651
    cvt.s.d	$f15,$f15
    # Line 657
    addiu	$a0,$a0,-20760
    jal	getenv
    # Line 651
    swc1	$f15,484($s0)
    # Line 658
    # lw $t9, -22960($gp) # &atoi
    jal	atoi
    # Line 657
    move	$a0,$v0
    mtc1	$zero,$f4
    # Line 658
    beqz	$v0,.L0daa3a34
    lw	$a0,1696($s0)
    # Line 659
    ori	$a2,$a0,0x800
    # Line 660
    ori	$a1,$a2,0x400
    # Line 661
    ori	$a1,$a1,0x200
    sw	$a1,1696($s0)
.L0daa3738:
    # Line 665
    addiu	$a0,$s0,128
    move	$v0,$s0
.L0daa3740:
    # Line 671
    sb	$s4,491($v0)
    sb	$s4,490($v0)
    sb	$s4,489($v0)
    # Line 670
    addiu	$v0,$v0,4
    bne	$v0,$a0,.L0daa3740
    # Line 671
    sb	$s4,484($v0)
    # Line 670
    addiu	$a0,$s0,128
    move	$v0,$s0
    ld	$s4,64($sp)
.L0daa3764:
    # Line 674
    sw	$s1,30024($v0)
    sw	$s1,30020($v0)
    sw	$s1,30016($v0)
    # Line 673
    addiu	$v0,$v0,16
    bne	$v0,$a0,.L0daa3764
    # Line 674
    sw	$s1,29996($v0)
    # Line 706
    sb	$s5,1787($s0)
    # Line 705
    sb	$s5,1786($s0)
    # Line 704
    sb	$s5,1785($s0)
    # Line 703
    sb	$s5,1784($s0)
    # Line 701
    swc1	$f4,1752($s0)
    # Line 700
    swc1	$f4,1748($s0)
    # Line 699
    swc1	$f4,1744($s0)
    # Line 698
    swc1	$f4,1740($s0)
    # Line 696
    sw	$zero,1732($s0)
    # Line 695
    sw	$s5,1728($s0)
    # Line 688
    sb	$s5,1540($s0)
    # Line 702
    li	$v1,5379
    sw	$v1,1756($s0)
    # Line 697
    li	$at,0x8006
    sw	$at,1736($s0)
    # Line 680
    li	$at,519
    # Line 694
    sw	$at,1720($s0)
    # Line 693
    li	$a2,7168
    sw	$a2,3092($s0)
    # Line 689
    li	$a1,513
    sw	$a1,1536($s0)
    # Line 682
    li	$v1,7680
    # Line 684
    sw	$v1,1588($s0)
    # Line 683
    sw	$v1,1584($s0)
    # Line 690
    lwc1	$f0,3284($s0)
    # Line 682
    sw	$v1,1580($s0)
    # Line 680
    sw	$at,1568($s0)
    # Line 690
    cvt.d.s	$f0,$f0
    # Line 681
    lw	$a2,3132($s0)
    # Line 706
    lbu	$at,3106($s0)
    # Line 690
    sdc1	$f0,1544($s0)
    # Line 681
    sllv	$a2,$s5,$a2
    addiu	$a2,$a2,-1
    # Line 685
    sh	$a2,1578($s0)
    # Line 706
    beqz	$at,.L0daa3a54
    # Line 681
    sh	$a2,1576($s0)
    ld	$s5,56($sp)
    # Line 708
    li	$a0,1029
    sw	$a0,1788($s0)
.L0daa3818:
    # Line 717
    lw	$v0,30740($s0)
    swc1	$f30,424($s0)
    # Line 716
    swc1	$f30,420($s0)
    # Line 715
    swc1	$f30,416($s0)
    # Line 717
    lbu	$a1,3105($s0)
    # Line 714
    swc1	$f30,412($s0)
    # Line 713
    swc1	$f30,408($s0)
    # Line 717
    beqz	$a1,.L0daa3a64
    # Line 712
    sw	$a0,1792($s0)
    # Line 720
    swc1	$f30,168($s0)
    # Line 719
    sw	$v0,1780($s0)
.L0daa3844:
    # Line 739
    move	$a0,$s0
    # Line 733
    sb	$zero,4588($s0)
    # Line 732
    li	$a4,1536
    sw	$a4,4584($s0)
    # Line 734
    lw	$a3,4592($s0)
    # Line 730
    lw	$a2,1696($s0)
    # Line 739
    # lw $t9, -29040($gp) # &__glInitColorTables
    # Line 734
    sw	$a3,4596($s0)
    # Line 730
    ori	$a2,$a2,0x8
    # Line 739
    bal __glInitColorTables
    # Line 730
    sw	$a2,1696($s0)
    # Line 740
    # lw $t9, -28848($gp) # &__glInitEvaluatorState
    bal __glInitEvaluatorState
    move	$a0,$s0
    # Line 741
    # lw $t9, -27040($gp) # &__glInitTextureState
    jal	__glInitTextureState
    move	$a0,$s0
    # Line 742
    # lw $t9, -26076($gp) # &__glInitTransformState
    jal	__glInitTransformState
    move	$a0,$s0
    # Line 743
    # lw $t9, -30876($gp) # &__glInitPixelState
    jal	__glInitPixelState
    move	$a0,$s0
    # Line 744
    # lw $t9, -27276($gp) # &__glInitLUTCache
    jal	__glInitLUTCache
    move	$a0,$s0
    # Line 745
    # lw $t9, -26176($gp) # &__glInitVertexArrayState
    jal	__glInitVertexArrayState
    move	$a0,$s0
    # ld	gp,24(sp)
    # Line 746
    ld	$s0,40($sp)
    ld	$ra,48($sp)
    ld	$s1,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa38d4:
    # Line 572
    swc1	$f11,132($v0)
    # Line 575
    swc1	$f12,144($v0)
    # Line 574
    swc1	$f10,140($v0)
    # Line 573
    swc1	$f9,136($v0)
.L0daa38e4:
    # Line 577
    swc1	$f8,160($v0)
    swc1	$f6,156($v0)
    swc1	$f5,152($v0)
    swc1	$f7,148($v0)
    # Line 578
    lwc1	$f0,3284($s0)
    swc1	$f0,172($v0)
    # Line 579
    lwc1	$f3,3284($s0)
    swc1	$f3,188($v0)
    # Line 580
    lwc1	$f2,3284($s0)
    swc1	$f2,348($a3)
    # Line 581
    swc1	$f14,204($v0)
    # Line 582
    swc1	$f14,364($a3)
    # Line 583
    swc1	$f13,216($v0)
    # Line 561
    addiu	$a3,$a3,448
    # Line 584
    lwc1	$f1,3284($s0)
    # Line 561
    addiu	$v0,$v0,232
    addiu	$a0,$a0,1
    # Line 584
    swc1	$f1,-12($v0)
    # Line 587
    sw	$zero,-8($a3)
    # Line 586
    swc1	$f14,-112($a3)
    # Line 561
    beq	$a0,$a4,.L0daa35ec
    # Line 585
    sw	$zero,-20($a3)
    # Line 565
    swc1	$f12,12($v0)
.L0daa3940:
    # Line 564
    swc1	$f10,8($v0)
    # Line 563
    swc1	$f9,4($v0)
    # Line 575
    mov.s	$f8,$f12
    # Line 573
    mov.s	$f5,$f9
    # Line 565
    beqz	$a0,.L0daa3a04
    # Line 562
    swc1	$f11,0($v0)
    # Line 574
    mov.s	$f6,$f10
    # Line 572
    mov.s	$f7,$f11
    swc1	$f11,16($v0)
    # Line 575
    swc1	$f12,28($v0)
    # Line 574
    swc1	$f10,24($v0)
    # Line 573
    swc1	$f9,20($v0)
.L0daa3970:
    # Line 577
    swc1	$f7,32($v0)
    swc1	$f5,36($v0)
    swc1	$f6,40($v0)
    swc1	$f8,44($v0)
    # Line 578
    lwc1	$f0,3284($s0)
    swc1	$f0,56($v0)
    # Line 579
    lwc1	$f3,3284($s0)
    swc1	$f3,72($v0)
    # Line 580
    lwc1	$f2,3284($s0)
    # Line 572
    mov.s	$f7,$f11
    # Line 575
    mov.s	$f8,$f12
    # Line 580
    swc1	$f2,124($a3)
    # Line 581
    swc1	$f14,88($v0)
    # Line 582
    swc1	$f14,140($a3)
    # Line 583
    swc1	$f13,100($v0)
    # Line 574
    mov.s	$f6,$f10
    # Line 584
    lwc1	$f1,3284($s0)
    # Line 573
    mov.s	$f5,$f9
    # Line 561
    addiu	$a0,$a0,1
    # Line 584
    swc1	$f1,104($v0)
    # Line 585
    sw	$zero,204($a3)
    # Line 586
    swc1	$f14,112($a3)
    # Line 587
    sw	$zero,216($a3)
    # Line 565
    swc1	$f12,128($v0)
    # Line 564
    swc1	$f10,124($v0)
    # Line 563
    swc1	$f9,120($v0)
    # Line 565
    bnez	$a0,.L0daa38d4
    # Line 562
    swc1	$f11,116($v0)
    # Line 567
    lwc1	$f7,48($a5)
    # Line 570
    lwc1	$f8,60($a5)
    # Line 569
    lwc1	$f6,56($a5)
    # Line 568
    lwc1	$f5,52($a5)
    # Line 570
    swc1	$f8,144($v0)
    # Line 569
    swc1	$f6,140($v0)
    # Line 568
    swc1	$f5,136($v0)
    # Line 570
    b	.L0daa38e4
    # Line 567
    swc1	$f7,132($v0)
.L0daa3a04:
    # Line 569
    lwc1	$f6,56($a5)
    swc1	$f6,24($v0)
    # Line 567
    lwc1	$f7,48($a5)
    # Line 570
    lwc1	$f8,60($a5)
    # Line 568
    lwc1	$f5,52($a5)
    # Line 567
    swc1	$f7,16($v0)
    # Line 570
    swc1	$f8,28($v0)
    b	.L0daa3970
    # Line 568
    swc1	$f5,20($v0)
.L0daa3a28:
    sd	$ra,48($sp)
    b	.L0daa366c
    # Line 618
    swc1	$f5,360($s0)
.L0daa3a34:
    # Line 664
    li	$at,-1025
    # Line 663
    li	$v1,-2049
    and	$v1,$a0,$v1
    # Line 664
    and	$at,$v1,$at
    # Line 665
    li	$a1,-513
    and	$at,$at,$a1
    b	.L0daa3738
    sw	$at,1696($s0)
.L0daa3a54:
    ld	$s5,56($sp)
    # Line 710
    li	$a0,1028
    b	.L0daa3818
    sw	$a0,1788($s0)
.L0daa3a64:
    # Line 728
    swc1	$f30,180($s0)
    swc1	$f30,176($s0)
    swc1	$f30,172($s0)
    swc1	$f30,168($s0)
    b	.L0daa3844
    # Line 727
    sw	$v0,1780($s0)
.L0daa3a7c:
    # Line 472
    li	$a4,256
    b	.L0daa32e0
    sw	$a4,3420($s0)
.L0daa3a88:
    # Line 570
    lwc1	$f8,60($a5)
    # Line 569
    lwc1	$f6,56($a5)
    # Line 570
    swc1	$f8,28($v0)
    # Line 568
    lwc1	$f5,52($a5)
    # Line 569
    swc1	$f6,24($v0)
    # Line 567
    lwc1	$f7,48($a5)
    # Line 568
    swc1	$f5,20($v0)
    # Line 570
    b	.L0daa358c
    # Line 567
    swc1	$f7,16($v0)
.L0daa3aac:
    # Line 318
    li	$a0,5
    sd	$ra,48($sp)
    # lw $t9, -22956($gp) # &_rld_new_interface
    la	$a1,sub_0db30000
    # Line 316
    lui	$a2,0x20
    ori	$a2,$a2,0xe90
    lw	$a2,0($a2)
    # Line 318
    addiu	$a1,$a1,-21240
    jal	_rld_new_interface
    sd	$a2,8($sp)
    # Line 320
    ld	$at,8($sp)
    move	$a4,$zero
    bnez	$at,.L0daa3b80
    ld	$ra,48($sp)
    bnez	$v0,.L0daa3b80
    # Line 323
    li	$a5,47
    ld	$a0,16($sp)
.L0daa3af0:
    # Line 326
    lw	$a3,28($a0)
    # Line 325
    lw	$a0,24($a0)
    # Line 326
    addu	$a3,$a3,$a0
    beqz	$a0,.L0daa3b5c
    addiu	$a3,$a3,-1
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0daa3b3c
    # Line 334
    la	$a1,sub_0db30000
    # Line 326
    lbu	$a2,0($a3)
    beq	$a2,$a5,.L0daa3b3c
    # Line 334
    la	$a1,sub_0db30000
    # Line 330
    addiu	$a3,$a3,-1
.L0daa3b20:
    sltu	$at,$a3,$a0
    bnez	$at,.L0daa3b38
    nop
    lbu	$v1,0($a3)
    bnel	$v1,$a5,.L0daa3b20
    addiu	$a3,$a3,-1
.L0daa3b38:
    # Line 334
    la	$a1,sub_0db30000
.L0daa3b3c:
    li	$a4,1
    lbu	$a1,-21224($a1)
    # Line 333
    la	$a0,sub_0db30000
    # Line 331
    addiu	$a3,$a3,1
    # Line 334
    beqz	$a1,.L0daa3b5c
    # Line 333
    addiu	$a0,$a0,-21224
    b	.L0daa3c50
    # Line 336
    lbu	$a1,0($a3)
.L0daa3b5c:
    bnez	$a4,.L0daa3b88
    ld	$t0,16($sp)
    ld	$a2,16($sp)
.L0daa3b68:
    # Line 340
    lw	$a2,8($a2)
    # Line 324
    bnez	$a4,.L0daa3b84
    sd	$a2,16($sp)
    ld	$at,16($sp)
    bnez	$at,.L0daa3af0
    ld	$a0,16($sp)
.L0daa3b80:
    beqz	$a4,.L0daa3c68
.L0daa3b84:
    ld	$t0,16($sp)
.L0daa3b88:
    # Line 357
    lw	$t0,16($t0)
    sd	$s5,56($sp)
    # Line 359
    lhu	$a7,44($t0)
    # Line 358
    lw	$a6,28($t0)
    # Line 359
    move	$a5,$zero
    blez	$a7,.L0daa3bf0
    # Line 358
    addu	$a6,$a6,$t0
    # Line 359
    li	$a4,5
    li	$s5,1
    move	$v0,$a6
    b	.L0daa3bd0
    sll	$a3,$a7,0x5
.L0daa3bb8:
    # Line 360
    bnez	$a0,.L0daa3bf4
    # Line 359
    addiu	$v0,$v0,32
    addu	$at,$a3,$a6
    sltu	$at,$v0,$at
    beqz	$at,.L0daa3bf4
    addiu	$a5,$a5,1
.L0daa3bd0:
    lw	$v1,0($v0)
    bne	$v1,$s5,.L0daa3bb8
    # Line 360
    move	$a0,$zero
    # Line 359
    lw	$a1,24($v0)
    bne	$a1,$a4,.L0daa3bb8
    nop
    # Line 360
    b	.L0daa3bb8
    li	$a0,1
.L0daa3bf0:
    # Line 359
    li	$s5,1
.L0daa3bf4:
    # Line 365
    slt	$a2,$a5,$a7
    beqz	$a2,.L0daa3284
    # Line 466
    lwc1	$f5,_lit_4f7ffff7
    # Line 371
    li	$a0,140
    # lw $t9, -22972($gp) # &syssgi
    # Line 366
    ld	$a3,16($sp)
    sll	$a2,$a5,0x5
    addu	$a2,$a2,$a6
    lw	$a3,20($a3)
    lw	$a1,8($a2)
    # Line 371
    lw	$a2,20($a2)
    # Line 366
    subu	$a3,$t0,$a3
    addu	$a1,$a1,$a3
    # Line 371
    jal	syssgi
    addu	$a2,$a2,$a1
    b	.L0daa3280
    ld	$ra,48($sp)
.L0daa3c38:
    # Line 336
    lbu	$at,0($a0)
    beqz	$at,.L0daa3b5c
    nop
    beqz	$a4,.L0daa3b68
    ld	$a2,16($sp)
    lbu	$a1,0($a3)
.L0daa3c50:
    lbu	$v1,0($a0)
    addiu	$a3,$a3,1
    beq	$v1,$a1,.L0daa3c38
    addiu	$a0,$a0,1
    b	.L0daa3c38
    move	$a4,$zero
.L0daa3c68:
    sd	$s5,56($sp)
    b	.L0daa3280
    # Line 371
    li	$s5,1
.end __glSoftResetContext

# Function: __glDestroyContext
# Declared: Line 752 (Source lines: 753-813)
# Address: 0x0daa3c74 - 0x0daa3ed8 (Size: 612 bytes, Frame: 48)
.globl __glDestroyContext
.ent __glDestroyContext
__glDestroyContext:
    # Line 753
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    # Line 756
    lw	$s1,__glCurrentContext
    # Line 759
    sw	$a0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$a1,1488($a0)
    # Line 753
    lui	$at,0x15
    addiu	$at,$at,15348
    # Line 759
    beqz	$a1,.L0daa3cb8
    # Line 753
    addu	$gp,$t9,$at
    # Line 761
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
.L0daa3cb8:
    lw	$a1,28104($s0)
    beqzl	$a1,.L0daa3cdc
    # Line 762
    lw	$a1,4592($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,4592($s0)
.L0daa3cdc:
    beqzl	$a1,.L0daa3cfc
    # Line 763
    lw	$a1,1652($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,1652($s0)
.L0daa3cfc:
    beqzl	$a1,.L0daa3d1c
    # Line 765
    lw	$a1,29660($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,29660($s0)
.L0daa3d1c:
    beqzl	$a1,.L0daa3d3c
    # Line 766
    lw	$a1,29668($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,29668($s0)
.L0daa3d3c:
    beqzl	$a1,.L0daa3d5c
    # Line 767
    lw	$a1,29680($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,29680($s0)
.L0daa3d5c:
    beqzl	$a1,.L0daa3d7c
    # Line 768
    lw	$a1,29688($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,29688($s0)
.L0daa3d7c:
    beqzl	$a1,.L0daa3d9c
    # Line 769
    lw	$a1,29696($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,29696($s0)
.L0daa3d9c:
    beqzl	$a1,.L0daa3dbc
    # Line 770
    lw	$a1,30752($s0)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,30752($s0)
.L0daa3dbc:
    beqz	$a1,.L0daa3dd0
    sd	$ra,24($sp)
    # Line 775
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0daa3dd0:
    # Line 781
    # lw $t9, -28844($gp) # &__glFreeEvaluatorState
    bal __glFreeEvaluatorState
    move	$a0,$s0
    # Line 782
    # lw $t9, -30880($gp) # &__glFreePixelState
    jal	__glFreePixelState
    move	$a0,$s0
    lw	$v0,4624($s0)
    bnez	$v0,.L0daa3e98
    # Line 783
    nop	# was lw $t9, -31068($gp) # &__glFreeDlistState
    lw	$v1,12676($s0)
.L0daa3df8:
    bnez	$v1,.L0daa3ea8
    # Line 784
    nop	# was lw $t9, -29492($gp) # &__glFreeAttributeState
    lw	$a2,28204($s0)
.L0daa3e04:
    bnez	$a2,.L0daa3eb8
    # Line 785
    nop	# was lw $t9, -27036($gp) # &__glFreeTextureState
    lw	$a1,28140($s0)
.L0daa3e10:
    beqz	$a1,.L0daa3e20
    # Line 791
    nop	# was lw $t9, -27264($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0daa3e20:
    lw	$a1,28180($s0)
    beqz	$a1,.L0daa3e34
    # Line 792
    nop	# was lw $t9, -27264($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
.L0daa3e34:
    lw	$at,28200($s0)
    bnez	$at,.L0daa3ec8
    # Line 793
    nop	# was lw $t9, -27272($gp) # &__glFreeLUTCache
    lw	$a1,31108($s0)
.L0daa3e44:
    beqzl	$a1,.L0daa3e5c
    # Line 809
    lw	$t9,12($s0)
    # Line 800
    lw	$t9,12($s0)
    jal	__glFreeLUTCache
    move	$a0,$s0
    # Line 809
    lw	$t9,12($s0)
.L0daa3e5c:
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s0
    ld	$ra,24($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    bne	$v0,$s1,.L0daa3e88
    ld	$gp,8($sp)
    # Line 811
    move	$s1,$zero
    ld	$s0,0($sp)
    ld	$gp,8($sp)
.L0daa3e88:
    # Line 812
    sw	$s1,__glCurrentContext
    # Line 813
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa3e98:
    # Line 783
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3df8
    lw	$v1,12676($s0)
.L0daa3ea8:
    # Line 784
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3e04
    lw	$a2,28204($s0)
.L0daa3eb8:
    # Line 785
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3e10
    lw	$a1,28140($s0)
.L0daa3ec8:
    # Line 793
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3e44
    lw	$a1,31108($s0)
.end __glDestroyContext

# Function: __glDestroySoftContext
# Declared: Line 822 (Source lines: 823-886)
# Address: 0x0daa3ed8 - 0x0daa40a4 (Size: 460 bytes, Frame: 48)
.globl __glDestroySoftContext
.ent __glDestroySoftContext
__glDestroySoftContext:
    # Line 823
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x15
    addiu	$at,$at,14736
    sd	$s1,24($sp)
    # Line 826
    lw	$s1,__glCurrentContext
    # Line 829
    sw	$a0,__glCurrentContext
    # Line 823
    addu	$gp,$t9,$at
    # Line 831
    lw	$t9,12($a0)
    sd	$s0,8($sp)
    # Line 823
    move	$s0,$a0
    # Line 831
    jalr	$t9
    lw	$a1,1488($s0)
    # Line 832
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,28104($s0)
    # Line 833
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,4592($s0)
    # Line 835
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,1652($s0)
    # Line 836
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29660($s0)
    # Line 837
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29668($s0)
    # Line 838
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29680($s0)
    # Line 839
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,29696($s0)
    lw	$a1,30752($s0)
    beqz	$a1,.L0daa3f9c
    # Line 850
    nop	# was lw $t9, -29036($gp) # &__glFreeColorTables
    # Line 844
    lw	$t9,12($s0)
    jal	__glFreeColorTables
    move	$a0,$s0
    # Line 850
    # lw $t9, -29036($gp) # &__glFreeColorTables
.L0daa3f9c:
    bal __glFreeColorTables
    move	$a0,$s0
    # Line 851
    # lw $t9, -28844($gp) # &__glFreeEvaluatorState
    bal __glFreeEvaluatorState
    move	$a0,$s0
    # Line 852
    # lw $t9, -30880($gp) # &__glFreePixelState
    jal	__glFreePixelState
    move	$a0,$s0
    ld	$ra,0($sp)
    lw	$v0,4624($s0)
    bnez	$v0,.L0daa4064
    # Line 853
    nop	# was lw $t9, -31068($gp) # &__glFreeDlistState
.L0daa3fcc:
    lw	$v1,12676($s0)
    bnez	$v1,.L0daa4074
    # Line 854
    nop	# was lw $t9, -29492($gp) # &__glFreeAttributeState
.L0daa3fd8:
    lw	$a2,28204($s0)
    bnez	$a2,.L0daa4084
    # Line 855
    nop	# was lw $t9, -27036($gp) # &__glFreeTextureState
.L0daa3fe4:
    lw	$a1,28140($s0)
    beqz	$a1,.L0daa3ffc
    # Line 861
    nop	# was lw $t9, -27264($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
    ld	$ra,0($sp)
.L0daa3ffc:
    lw	$a1,28180($s0)
    beqz	$a1,.L0daa4014
    # Line 862
    nop	# was lw $t9, -27264($gp) # &__glFreeSpecLUT
    jal	__glFreeSpecLUT
    move	$a0,$s0
    ld	$ra,0($sp)
.L0daa4014:
    lw	$at,28200($s0)
    bnez	$at,.L0daa4094
    # Line 863
    nop	# was lw $t9, -27272($gp) # &__glFreeLUTCache
.L0daa4020:
    lw	$a1,31108($s0)
    beqz	$a1,.L0daa4040
    move	$v0,$s0
    # Line 870
    lw	$t9,12($s0)
    jal	__glFreeLUTCache
    move	$a0,$s0
    ld	$ra,0($sp)
    move	$v0,$s0
.L0daa4040:
    bne	$v0,$s1,.L0daa4050
    ld	$s0,8($sp)
    # Line 884
    move	$s1,$zero
    ld	$s0,8($sp)
.L0daa4050:
    ld	$gp,16($sp)
    # Line 885
    sw	$s1,__glCurrentContext
    # Line 886
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4064:
    # Line 853
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3fcc
    ld	$ra,0($sp)
.L0daa4074:
    # Line 854
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3fd8
    ld	$ra,0($sp)
.L0daa4084:
    # Line 855
    jalr	$t9
    move	$a0,$s0
    b	.L0daa3fe4
    ld	$ra,0($sp)
.L0daa4094:
    # Line 863
    jalr	$t9
    move	$a0,$s0
    b	.L0daa4020
    ld	$ra,0($sp)
.end __glDestroySoftContext

# Function: __glFreePrivate
# Declared: Line 892 (Source lines: 893-935)
# Address: 0x0daa40a4 - 0x0daa4210 (Size: 364 bytes, Frame: 192)
.globl __glFreePrivate
.ent __glFreePrivate
__glFreePrivate:
    # Line 893
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,16(sp)
    sd	$s0,0($sp)
    # Line 896
    lw	$s0,28($a0)
    # Line 893
    lui	$at,0x15
    addiu	$at,$at,14276
    # Line 896
    beqz	$s0,.L0daa41f0
    # Line 893
    nop
    # Line 896
    lw	$t9,24($s0)
    beqz	$t9,.L0daa40e8
    # Line 900
    addiu	$a0,$s0,8
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,32($sp)
.L0daa40e8:
    lw	$t9,44($s0)
    beqz	$t9,.L0daa4104
    # Line 903
    addiu	$a0,$s0,28
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,32($sp)
.L0daa4104:
    lw	$t9,136($s0)
    beqz	$t9,.L0daa4120
    # Line 908
    addiu	$a0,$s0,120
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,32($sp)
.L0daa4120:
    lw	$t9,88($s0)
    beqz	$t9,.L0daa413c
    # Line 911
    addiu	$a0,$s0,72
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,32($sp)
.L0daa413c:
    lw	$t9,68($s0)
    beqz	$t9,.L0daa415c
    # Line 914
    addiu	$a0,$s0,52
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s1
    sd	$s5,24($sp)
    ld	$ra,32($sp)
.L0daa415c:
    # Line 920
    lw	$a1,140($s0)
    sd	$s5,24($sp)
    blez	$a1,.L0daa4204
    move	$s5,$zero
    sd	$ra,32($sp)
    lw	$a0,144($s0)
    sd	$s4,40($sp)
    b	.L0daa4188
    move	$s4,$zero
.L0daa4180:
    slt	$v0,$s5,$a1
    beqz	$v0,.L0daa41b4
.L0daa4188:
    addu	$a3,$a0,$s4
    lw	$t9,16($a3)
    addiu	$s4,$s4,20
    beqz	$t9,.L0daa4180
    addiu	$s5,$s5,1
    # Line 922
    move	$a0,$a3
    jalr	$t9
    move	$a1,$s1
    lw	$a0,144($s0)
    b	.L0daa4180
    lw	$a1,140($s0)
.L0daa41b4:
    ld	$s5,24($sp)
    ld	$s4,40($sp)
    ld	$ra,32($sp)
.L0daa41c0:
    # Line 920
    beqz	$a0,.L0daa41d4
    sd	$ra,32($sp)
    # Line 927
    lw	$t9,20($s1)
    jalr	$t9
    nop
.L0daa41d4:
    # Line 931
    lw	$t9,20($s1)
    jalr	$t9
    move	$a0,$s0
    ld	$s0,0($sp)
    ld	$ra,32($sp)
    # Line 933
    sw	$zero,24($s1)
    # Line 932
    sw	$zero,28($s1)
.L0daa41f0:
    # ld	gp,16(sp)
    # Line 935
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa4204:
    # Line 920
    lw	$a0,144($s0)
    b	.L0daa41c0
    ld	$s5,24($sp)
.end __glFreePrivate

# Function: __glSetError
# Declared: Line 937 (Source lines: 938-955)
# Address: 0x0daa4210 - 0x0daa42c8 (Size: 184 bytes, Frame: 48)
.globl __glSetError
.ent __glSetError
__glSetError:
    # Line 938
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 939
    lw	$s0,__glCurrentContext
    sd	$s1,8($sp)
    # Line 938
    move	$s1,$a0
    # sd	gp,24(sp)
    lui	$v0,0x15
    addiu	$v0,$v0,13912
    # addu	gp,t9,v0
    # Line 944
    # lw $t9, -22964($gp) # &getenv
    la	$at,sub_0db30000
    sd	$ra,16($sp)
    jal	getenv
    addiu	$a0,$at,-20744
    bnez	$v0,.L0daa4298
    # Line 945
    la	$a1,sub_0db30000
    # Line 946
    lw	$v1,3096($s0)
.L0daa4254:
    beqz	$v1,.L0daa42c0
    nop
.L0daa425c:
    # Line 951
    lw	$t9,11784($s0)
    beqz	$t9,.L0daa4270
    # Line 953
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
.L0daa4270:
    # Line 954
    lw	$t9,24($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,16($sp)
    ld	$s1,8($sp)
    ld	$s0,0($sp)
    # ld	gp,24(sp)
    # Line 955
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4298:
    # Line 945
    # lw $t9, -22952($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-20728
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 946
    # lw $t9, -22948($gp) # &abort
    jal	abort
    nop
    b	.L0daa4254
    lw	$v1,3096($s0)
.L0daa42c0:
    b	.L0daa425c
    # Line 951
    sw	$s1,3096($s0)
.end __glSetError

# Function: __glim_RenderMode
# Declared: Line 957 (Source lines: 958-1011)
# Address: 0x0daa42c8 - 0x0daa447c (Size: 436 bytes, Frame: 48)
.globl __glim_RenderMode
.ent __glim_RenderMode
__glim_RenderMode:
    # Line 960
    lw	$a3,__glCurrentContext
    li	$a4,7169
    li	$v0,1
    # Line 958
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 960
    lw	$at,__glBeginMode
    # Line 958
    lui	$v1,0x15
    addiu	$v1,$v1,13728
    # Line 960
    beq	$at,$v0,.L0daa43f4
    # Line 958
    addu	$gp,$t9,$v1
    # Line 960
    li	$a5,7168
    beql	$a5,$a0,.L0daa4334
    # Line 973
    lw	$v0,3092($a3)
    # Line 960
    beq	$a4,$a0,.L0daa4330
    li	$a1,7170
    beql	$a0,$a1,.L0daa4334
    # Line 973
    lw	$v0,3092($a3)
    # Line 968
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    bal __glSetError
    li	$a0,1280
    # Line 969
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4330:
    # Line 973
    lw	$v0,3092($a3)
.L0daa4334:
    beq	$a5,$v0,.L0daa43ac
    nop
    beq	$a4,$v0,.L0daa43cc
    # Line 982
    li	$a5,-1
    # Line 973
    li	$a2,7170
    beq	$v0,$a2,.L0daa43e0
    lw	$v0,0($sp)
.L0daa4350:
    # Line 987
    sw	$a0,3092($a3)
    # Line 988
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$at,11764($a3)
    # Line 989
    li	$a1,7170
    # Line 988
    ori	$at,$at,0x1
    # Line 989
    beq	$a4,$a0,.L0daa43b4
    # Line 988
    sw	$at,11764($a3)
    # Line 989
    beql	$a0,$a1,.L0daa4384
    # Line 999
    lw	$a0,4604($a3)
.L0daa4378:
    ld	$gp,16($sp)
    # Line 1011
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4384:
    # Line 999
    beqz	$a0,.L0daa4434
    # Line 1000
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1008
    sw	$zero,4620($a3)
    # Line 1007
    sw	$zero,4616($a3)
    # Line 1006
    sb	$zero,4588($a3)
    # Line 1004
    sb	$zero,4600($a3)
    # Line 1005
    lw	$a2,4592($a3)
    # Line 1003
    sw	$a0,4608($a3)
    b	.L0daa4378
    # Line 1005
    sw	$a2,4596($a3)
.L0daa43ac:
    # Line 976
    b	.L0daa4350
    # Line 975
    move	$v0,$zero
.L0daa43b4:
    # Line 991
    lw	$a0,4572($a3)
    beqz	$a0,.L0daa4458
    # Line 992
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 996
    sb	$zero,4568($a3)
    # Line 997
    b	.L0daa4378
    # Line 995
    sw	$a0,4576($a3)
.L0daa43cc:
    # Line 978
    lbu	$at,4568($a3)
    beqz	$at,.L0daa4418
    li	$a5,-1
.L0daa43d8:
    # Line 980
    b	.L0daa4350
    # Line 978
    move	$v0,$a5
.L0daa43e0:
    # Line 982
    lbu	$v1,4600($a3)
    beqz	$v1,.L0daa442c
    nop
.L0daa43ec:
    b	.L0daa4350
    move	$v0,$a5
.L0daa43f4:
    # Line 960
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4418:
    # Line 978
    lw	$a5,4576($a3)
    lw	$at,4572($a3)
    subu	$a5,$a5,$at
    b	.L0daa43d8
    sra	$a5,$a5,0x2
.L0daa442c:
    b	.L0daa43ec
    # Line 982
    lw	$a5,4616($a3)
.L0daa4434:
    sd	$v0,8($sp)
    sd	$ra,24($sp)
    # Line 1000
    bal __glSetError
    li	$a0,1282
    # Line 1001
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa4458:
    sd	$v0,8($sp)
    sd	$ra,24($sp)
    # Line 992
    bal __glSetError
    li	$a0,1282
    # Line 993
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_RenderMode

# Function: __glChangeWindowSize
# Declared: Line 1018 (Source lines: 1019-1064)
# Address: 0x0daa447c - 0x0daa45cc (Size: 336 bytes, Frame: 224)
.globl __glChangeWindowSize
.ent __glChangeWindowSize
__glChangeWindowSize:
    # Line 1019
    addiu	$sp,$sp,-96
    sd	$s1,8($sp)
    move	$s1,$a1
    # sd	gp,32(sp)
    lui	$at,0x15
    addiu	$at,$at,13292
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 1025
    lw	$a0,30660($a0)
    # Line 1022
    sw	$a2,3416($s0)
    # Line 1021
    sw	$a1,3412($s0)
    # Line 1019
    # addu	gp,t9,at
    # Line 1025
    lw	$t9,56($a0)
    sd	$s2,0($sp)
    sd	$ra,16($sp)
    jalr	$t9
    # Line 1019
    move	$s2,$a2
    # Line 1025
    lbu	$v0,3106($s0)
    beqzl	$v0,.L0daa44e4
    # Line 1027
    lbu	$v1,3108($s0)
    lw	$a0,30664($s0)
    lw	$t9,56($a0)
    move	$a2,$s2
    jalr	$t9
    move	$a1,$s1
    lbu	$v1,3108($s0)
.L0daa44e4:
    beqzl	$v1,.L0daa44fc
    # Line 1042
    lbu	$at,3109($s0)
    # Line 1027
    lw	$a3,31380($s0)
    bnezl	$a3,.L0daa45b4
    # Line 1042
    lw	$t9,31420($s0)
    lbu	$at,3109($s0)
.L0daa44fc:
    beqzl	$at,.L0daa451c
    # Line 1046
    lbu	$v0,3110($s0)
    lw	$t9,31288($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31232
    lbu	$v0,3110($s0)
.L0daa451c:
    beqzl	$v0,.L0daa453c
    # Line 1049
    lw	$v1,3180($s0)
    lw	$t9,31168($s0)
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31112
    lw	$v1,3180($s0)
.L0daa453c:
    blezl	$v1,.L0daa4590
    # Line 1063
    lw	$t9,11924($s0)
    sd	$s5,48($sp)
    # Line 1056
    move	$s5,$zero
    sd	$s4,40($sp)
    move	$s4,$zero
    # Line 1057
    lw	$a0,31108($s0)
.L0daa4558:
    move	$a2,$s2
    addu	$a0,$a0,$s4
    lw	$t9,56($a0)
    # Line 1056
    addiu	$s5,$s5,1
    # Line 1057
    move	$a1,$s1
    jalr	$t9
    # Line 1056
    addiu	$s4,$s4,220
    lw	$a3,3180($s0)
    slt	$a3,$s5,$a3
    bnezl	$a3,.L0daa4558
    # Line 1057
    lw	$a0,31108($s0)
    ld	$s5,48($sp)
    ld	$s4,40($sp)
    # Line 1063
    lw	$t9,11924($s0)
.L0daa4590:
    move	$a0,$s0
    ld	$s1,8($sp)
    jalr	$t9
    ld	$s2,0($sp)
    # Line 1064
    ld	$ra,16($sp)
    # ld	gp,32(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa45b4:
    # Line 1042
    move	$a2,$s2
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31364
    b	.L0daa44fc
    lbu	$at,3109($s0)
.end __glChangeWindowSize

# Function: __glFindWindowSize
# Declared: Line 1075 (Source lines: 1076-1085)
# Address: 0x0daa45cc - 0x0daa4648 (Size: 124 bytes, Frame: 192)
.globl __glFindWindowSize
.ent __glFindWindowSize
__glFindWindowSize:
    # Line 1076
    addiu	$sp,$sp,-64
    # Line 1080
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    sd	$s0,24($sp)
    # Line 1076
    move	$s0,$a0
    sd	$gp,32($sp)
    lui	$at,0x15
    addiu	$at,$at,12956
    addu	$gp,$t9,$at
    # Line 1080
    lw	$t9,28($a0)
    addiu	$a2,$sp,4
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1082
    lw	$a1,8($sp)
    lw	$v0,3412($s0)
    lw	$a2,12($sp)
    bne	$v0,$a1,.L0daa4634
    ld	$ra,16($sp)
    lw	$v1,3416($s0)
    bne	$v1,$a2,.L0daa4638
    # Line 1083
    nop	# was lw $t9, -29000($gp) # &__glChangeWindowSize
.L0daa4624:
    ld	$gp,32($sp)
    # Line 1085
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa4634:
    # Line 1083
    # lw $t9, -29000($gp) # &__glChangeWindowSize
.L0daa4638:
    bal __glChangeWindowSize
    move	$a0,$s0
    b	.L0daa4624
    ld	$ra,16($sp)
.end __glFindWindowSize

# Function: FillBufferInfo
# Declared: Line 1091 (Source lines: 1092-1127)
# Address: 0x0daa4648 - 0x0daa470c (Size: 196 bytes, Frame: 48)
.ent FillBufferInfo
FillBufferInfo:
    # Line 1092
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 1097
    lw	$t9,12($a1)
    li	$a1,148
    sd	$s5,8($sp)
    # Line 1092
    move	$s5,$a0
    sd	$ra,0($sp)
    # Line 1097
    jalr	$t9
    li	$a0,1
    # Line 1100
    lw	$at,3180($s5)
    sw	$at,140($v0)
    lw	$a0,3180($s5)
    # Line 1097
    move	$s1,$v0
    ld	$ra,0($sp)
    # Line 1100
    blez	$a0,.L0daa46a8
    ld	$s5,8($sp)
    # Line 1103
    lw	$t9,12($s0)
    li	$a1,20
    jalr	$t9
    ld	$s5,8($sp)
    sw	$v0,144($s1)
    ld	$ra,0($sp)
.L0daa46a8:
    la	$a1,__glFreeBuffer
    # Line 1117
    move	$v0,$zero
    lw	$v1,140($s1)
    # Line 1113
    sw	$a1,68($s1)
    # Line 1112
    sw	$a1,88($s1)
    # Line 1111
    sw	$a1,136($s1)
    # Line 1110
    sw	$a1,44($s1)
    # Line 1117
    blez	$v1,.L0daa46f0
    # Line 1109
    sw	$a1,24($s1)
    # Line 1117
    move	$a0,$zero
.L0daa46d0:
    # Line 1118
    lw	$a3,144($s1)
    addu	$a3,$a3,$a0
    sw	$a1,16($a3)
    # Line 1117
    lw	$a2,140($s1)
    addiu	$v0,$v0,1
    slt	$a2,$v0,$a2
    bnez	$a2,.L0daa46d0
    addiu	$a0,$a0,20
.L0daa46f0:
    # Line 1125
    la	$at,__glFreePrivate
    # Line 1127
    move	$v0,$s1
    ld	$s1,16($sp)
    # Line 1125
    sw	$at,24($s0)
    # Line 1127
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end FillBufferInfo

# Function: __glMakeCurrentBuffers
# Declared: Line 1135 (Source lines: 1136-1197)
# Address: 0x0daa470c - 0x0daa48d0 (Size: 452 bytes, Frame: 224)
.globl __glMakeCurrentBuffers
.ent __glMakeCurrentBuffers
__glMakeCurrentBuffers:
    # Line 1136
    addiu	$sp,$sp,-96
    sd	$s3,48($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    # Line 1139
    move	$s1,$zero
    # sd	gp,24(sp)
    # Line 1136
    lui	$at,0x15
    addiu	$at,$at,12636
    # addu	gp,t9,at
    # Line 1143
    lw	$t9,60($a0)
    sd	$s4,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1136
    move	$s4,$a1
    # Line 1143
    sw	$v0,31500($s0)
    lw	$v1,28($v0)
    beqz	$v1,.L0daa48a4
    move	$s3,$v0
.L0daa4758:
    sd	$s2,40($sp)
    # Line 1155
    lw	$s2,28($s3)
    # Line 1160
    lw	$a5,48($s2)
    sw	$a5,0($s4)
    # Line 1162
    lw	$a4,0($s2)
    # Line 1165
    move	$a2,$s0
    addiu	$a0,$s0,30668
    # Line 1162
    sw	$a4,3412($s0)
    # Line 1165
    lw	$t9,30712($s0)
    # Line 1163
    lw	$a3,4($s2)
    # Line 1165
    addiu	$a1,$s2,8
    jalr	$t9
    # Line 1163
    sw	$a3,3416($s0)
    # Line 1165
    lbu	$at,3106($s0)
    ld	$s4,8($sp)
    ld	$ra,0($sp)
    beqz	$at,.L0daa47b8
    ld	$s3,48($sp)
    # Line 1168
    lw	$t9,30932($s0)
    move	$a2,$s0
    addiu	$a1,$s2,28
    jalr	$t9
    addiu	$a0,$s0,30888
    ld	$ra,0($sp)
.L0daa47b8:
    lbu	$v1,3108($s0)
    beqzl	$v1,.L0daa47e0
    # Line 1174
    lbu	$a3,3109($s0)
    lw	$t9,31408($s0)
    move	$a2,$s0
    addiu	$a1,$s2,120
    jalr	$t9
    addiu	$a0,$s0,31364
    ld	$ra,0($sp)
    lbu	$a3,3109($s0)
.L0daa47e0:
    beqzl	$a3,.L0daa4804
    # Line 1178
    lbu	$a4,3110($s0)
    lw	$t9,31276($s0)
    move	$a2,$s0
    addiu	$a1,$s2,72
    jalr	$t9
    addiu	$a0,$s0,31232
    ld	$ra,0($sp)
    lbu	$a4,3110($s0)
.L0daa4804:
    beqzl	$a4,.L0daa482c
    # Line 1189
    lw	$at,3180($s0)
    # Line 1182
    lw	$t9,31156($s0)
    move	$a2,$s0
    addiu	$a1,$s2,52
    jalr	$t9
    addiu	$a0,$s0,31112
    sd	$s6,56($sp)
    ld	$ra,0($sp)
    # Line 1189
    lw	$at,3180($s0)
.L0daa482c:
    sd	$s6,56($sp)
    blez	$at,.L0daa4884
    move	$s6,$zero
    sd	$s5,64($sp)
    move	$s5,$zero
    move	$s4,$zero
.L0daa4844:
    # Line 1190
    lw	$a0,31108($s0)
    move	$a2,$s0
    # Line 1189
    addiu	$s6,$s6,1
    # Line 1190
    addu	$a0,$a0,$s5
    lw	$t9,44($a0)
    lw	$a1,144($s2)
    # Line 1189
    addiu	$s5,$s5,220
    # Line 1190
    jalr	$t9
    addu	$a1,$a1,$s4
    # Line 1189
    lw	$a3,3180($s0)
    slt	$a3,$s6,$a3
    bnez	$a3,.L0daa4844
    addiu	$s4,$s4,20
    ld	$s5,64($sp)
    ld	$s4,8($sp)
    ld	$ra,0($sp)
.L0daa4884:
    # ld	gp,24(sp)
    # Line 1197
    ld	$s0,16($sp)
    move	$v0,$s1
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    ld	$s6,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa48a4:
    # Line 1147
    # lw $t9, -32728($gp) # &sub_0daa0000
    move	$a0,$s0
    addiu	$t9,$t9,17992
    bal __glFindWindowSize
    move	$a1,$v0
    sd	$s2,40($sp)
    # Line 1153
    li	$s1,1
    # Line 1147
    sw	$v0,28($s3)
    # Line 1151
    sw	$zero,3416($s0)
    b	.L0daa4758
    # Line 1150
    sw	$zero,3412($s0)
.end __glMakeCurrentBuffers

# Function: __glLoseCurrentBuffers
# Declared: Line 1204 (Source lines: 1205-1243)
# Address: 0x0daa48d0 - 0x0daa4a04 (Size: 308 bytes, Frame: 192)
.globl __glLoseCurrentBuffers
.ent __glLoseCurrentBuffers
__glLoseCurrentBuffers:
    # Line 1209
    lw	$v1,31500($a0)
    lw	$v1,28($v1)
    # Line 1213
    sw	$a1,48($v1)
    # Line 1205
    addiu	$sp,$sp,-64
    # Line 1215
    lw	$v0,3412($a0)
    sd	$s0,8($sp)
    # Line 1205
    move	$s0,$a0
    # Line 1215
    sw	$v0,0($v1)
    # sd	gp,16(sp)
    # Line 1216
    lw	$v0,3416($a0)
    # Line 1205
    lui	$at,0x15
    addiu	$at,$at,12184
    # Line 1216
    sw	$v0,4($v1)
    # Line 1205
    # addu	gp,t9,at
    # Line 1218
    lw	$t9,30716($a0)
    addiu	$a0,$a0,30668
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s0
    lbu	$a2,3106($s0)
    beqz	$a2,.L0daa493c
    ld	$ra,0($sp)
    # Line 1220
    lw	$t9,30936($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,30888
    ld	$ra,0($sp)
.L0daa493c:
    lbu	$at,3108($s0)
    beqzl	$at,.L0daa4960
    # Line 1223
    lbu	$v0,3109($s0)
    lw	$t9,31412($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31364
    ld	$ra,0($sp)
    lbu	$v0,3109($s0)
.L0daa4960:
    beqzl	$v0,.L0daa4980
    # Line 1226
    lbu	$v1,3110($s0)
    lw	$t9,31280($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31232
    ld	$ra,0($sp)
    lbu	$v1,3110($s0)
.L0daa4980:
    beqzl	$v1,.L0daa49a0
    # Line 1229
    lw	$a0,3180($s0)
    lw	$t9,31160($s0)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s0,31112
    ld	$ra,0($sp)
    lw	$a0,3180($s0)
.L0daa49a0:
    beqz	$a0,.L0daa49ec
    sd	$s5,24($sp)
    # Line 1236
    blez	$a0,.L0daa49ec
    move	$s5,$zero
    sd	$s1,32($sp)
    move	$s1,$zero
    # Line 1237
    lw	$a0,31108($s0)
.L0daa49bc:
    addu	$a0,$a0,$s1
    lw	$t9,48($a0)
    # Line 1236
    addiu	$s5,$s5,1
    # Line 1237
    move	$a1,$s0
    jalr	$t9
    # Line 1236
    addiu	$s1,$s1,220
    lw	$a2,3180($s0)
    slt	$a2,$s5,$a2
    bnezl	$a2,.L0daa49bc
    # Line 1237
    lw	$a0,31108($s0)
    ld	$s1,32($sp)
    ld	$ra,0($sp)
.L0daa49ec:
    # Line 1243
    li	$v0,1
    # ld	gp,16(sp)
    ld	$s0,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glLoseCurrentBuffers

# Function: __glFreeBufData
# Declared: Line 1251 (Source lines: 1252-1279)
# Address: 0x0daa4a04 - 0x0daa4b28 (Size: 292 bytes, Frame: 192)
.globl __glFreeBufData
.ent __glFreeBufData
__glFreeBufData:
    # Line 1252
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lw	$a3,30732($a0)
    lui	$at,0x15
    addiu	$at,$at,11876
    beqz	$a3,.L0daa4a40
    nop
    # Line 1258
    addiu	$a0,$s0,30668
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$a3
    move	$t9,$a3
    ld	$ra,24($sp)
.L0daa4a40:
    lw	$v0,30952($s0)
    bnezl	$v0,.L0daa4b10
    # Line 1261
    lw	$t9,30732($s0)
.L0daa4a4c:
    lw	$t9,31176($s0)
    beqz	$t9,.L0daa4a68
    # Line 1264
    addiu	$a0,$s0,31112
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,24($sp)
.L0daa4a68:
    lw	$t9,31296($s0)
    beqz	$t9,.L0daa4a84
    # Line 1267
    addiu	$a0,$s0,31232
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,24($sp)
.L0daa4a84:
    lw	$t9,31428($s0)
    beqz	$t9,.L0daa4aa4
    # Line 1270
    addiu	$a0,$s0,31364
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$s0
    sd	$s4,16($sp)
    ld	$ra,24($sp)
.L0daa4aa4:
    # Line 1273
    lw	$a1,3180($s0)
    sd	$s4,16($sp)
    blez	$a1,.L0daa4afc
    move	$s4,$zero
    sd	$ra,24($sp)
    sd	$s1,32($sp)
    b	.L0daa4ad0
    move	$s1,$zero
.L0daa4ac4:
    slt	$v1,$s4,$a1
    beqzl	$v1,.L0daa4af8
    ld	$s1,32($sp)
.L0daa4ad0:
    lw	$a0,31108($s0)
    addu	$a0,$a0,$s1
    lw	$t9,64($a0)
    addiu	$s4,$s4,1
    beqz	$t9,.L0daa4ac4
    addiu	$s1,$s1,220
    # Line 1275
    jalr	$t9
    move	$a1,$s0
    b	.L0daa4ac4
    lw	$a1,3180($s0)
.L0daa4af8:
    ld	$ra,24($sp)
.L0daa4afc:
    # ld	gp,8(sp)
    # Line 1279
    ld	$s0,0($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa4b10:
    # Line 1261
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$s0,30888
    b	.L0daa4a4c
    ld	$ra,24($sp)
.end __glFreeBufData

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_408f400000000000:
    .word 0x408f4000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_43340000:
    .word 0x43340000
_lit_437f0000:
    .word 0x437f0000
_lit_477fff00:
    .word 0x477fff00
_lit_4f7ffff7:
    .word 0x4f7ffff7
_lit_bf800000:
    .word 0xbf800000

