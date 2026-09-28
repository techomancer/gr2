# Source: ../soft/so_pick.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pick.c
# Total Functions: 14

.text

# Function: __glGenericPickSpanProcs
# Declared: Line 194 (Source lines: 195-521)
# Address: 0x0dac985c - 0x0daca074 (Size: 2072 bytes, Frame: 240)
.globl __glGenericPickSpanProcs
.ent __glGenericPickSpanProcs
__glGenericPickSpanProcs:
    # Line 195
    addiu	$sp,$sp,-112
    sd	$s6,56($sp)
    # Line 203
    move	$s6,$zero
    sd	$s3,8($sp)
    # Line 195
    move	$s3,$a0
    sd	$s1,32($sp)
    # Line 205
    addiu	$s1,$a0,12172
    sd	$s0,48($sp)
    # Line 204
    addiu	$s0,$a0,12112
    sd	$s4,40($sp)
    # Line 197
    lw	$s4,11768($a0)
    sd	$s2,24($sp)
    # Line 196
    lw	$s2,30440($a0)
    # sd	gp,16(sp)
    # Line 205
    lbu	$at,29840($a0)
    # Line 195
    lui	$v0,0x13
    addiu	$v0,$v0,-8180
    # Line 205
    beqz	$at,.L0dac9c48
    # Line 195
    nop
.L0dac98a8:
    # Line 210
    andi	$v1,$s2,0x10
    beqz	$v1,.L0dac98d0
    # Line 271
    la	$t8,__glDepthPassStippledSpan
    # Line 215
    addiu	$s1,$s1,4
    # Line 214
    la	$a2,__glStippleSpan
    # Line 215
    la	$a1,__glStippleStippledSpan
    # Line 214
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 215
    sw	$a1,-4($s1)
    # Line 271
    la	$t8,__glDepthPassStippledSpan
.L0dac98d0:
    la	$t3,__glDepthPassSpan
    la	$t0,__glDepthTestOffsetSpan
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 215
    andi	$a0,$s2,0x200
    beqz	$a0,.L0dac9b50
    # Line 271
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$a3,__glStencilTestSpan_asm
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a4,__glStencilTestStippledSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    sd	$s5,64($sp)
.L0dac9900:
    andi	$s5,$s2,0x1
    beqz	$s5,.L0dac9bb4
    andi	$v0,$s2,0x2
    beqz	$v0,.L0dac9c60
    # Line 289
    la	$at,__glShadeRGBASpan
    sw	$at,0($s0)
    # Line 290
    sw	$at,0($s1)
.L0dac991c:
    # Line 305
    addiu	$s1,$s1,4
    andi	$v1,$s2,0x8
    beqz	$v1,.L0dac9964
    # Line 304
    addiu	$s0,$s0,4
    # Line 307
    la	$at,__glTextureSpan
    # Line 308
    la	$a2,__glTextureStippledSpan
    # Line 307
    sw	$at,0($s0)
    # Line 308
    sw	$a2,0($s1)
    lw	$v0,1696($s3)
    lui	$a1,0x2
    and	$a1,$v0,$a1
    beqz	$a1,.L0dac995c
    lui	$v1,0x4000
    and	$v1,$v0,$v1
    beqzl	$v1,.L0dac9d30
    sd	$a0,72($sp)
.L0dac995c:
    # Line 351
    addiu	$s1,$s1,4
.L0dac9960:
    # Line 350
    addiu	$s0,$s0,4
.L0dac9964:
    # Line 351
    andi	$a1,$s2,0x1000
    beqz	$a1,.L0dac9990
    li	$at,4354
    lw	$a2,1812($s3)
    beq	$a2,$at,.L0dac9c70
    # Line 358
    la	$a1,__glFogSpan
    # Line 359
    la	$v1,__glFogStippledSpan
    # Line 358
    sw	$a1,0($s0)
    # Line 359
    sw	$v1,0($s1)
.L0dac9988:
    # Line 362
    addiu	$s1,$s1,4
    # Line 361
    addiu	$s0,$s0,4
.L0dac9990:
    # Line 362
    beqz	$a0,.L0dac99e4
    # Line 367
    andi	$v0,$s2,0x4
    addiu	$s1,$s1,4
    # Line 366
    addiu	$s0,$s0,4
    la	$v1,__glAlphaTestSpan
    # Line 367
    andi	$at,$s2,0x20
    la	$a2,__glAlphaTestStippledSpan
    # Line 366
    sw	$v1,-4($s0)
    # Line 367
    beqz	$at,.L0dac9c10
    sw	$a2,-4($s1)
    # Line 372
    sw	$a3,0($s0)
    # Line 376
    beqz	$v0,.L0dac9d24
    sw	$a4,0($s1)
    lui	$a1,0x4
    and	$a1,$s2,$a1
    beqzl	$a1,.L0dac9d1c
    # Line 384
    sw	$t2,4($s0)
    # Line 381
    sw	$a6,4($s0)
    # Line 382
    sw	$a5,4($s1)
.L0dac99dc:
    # Line 401
    addiu	$s1,$s1,8
    # Line 400
    addiu	$s0,$s0,8
.L0dac99e4:
    # Line 415
    lbu	$a2,30656($s3)
.L0dac99e8:
    beqz	$a2,.L0dac9a04
    # Line 433
    andi	$v1,$s2,0x880
    li	$s6,1
    # Line 432
    subu	$at,$s0,$s3
    addiu	$at,$at,-12112
    sra	$at,$at,0x2
    sw	$at,12232($s3)
.L0dac9a04:
    # Line 433
    beqz	$v1,.L0dac9a28
    # Line 439
    andi	$at,$s2,0x100
    # Line 438
    lw	$a2,200($s4)
    sw	$a2,0($s0)
    # Line 439
    lw	$a1,204($s4)
    addiu	$s1,$s1,4
    # Line 438
    addiu	$s0,$s0,4
    # Line 439
    sw	$a1,-4($s1)
    andi	$at,$s2,0x100
.L0dac9a28:
    beqz	$at,.L0dac9a94
    # Line 472
    andi	$a1,$s2,0x40
    # Line 444
    lw	$a3,1736($s3)
    # Line 443
    lw	$a0,1732($s3)
    # Line 444
    nor	$v0,$s2,$zero
    andi	$v0,$v0,0x800
    beqz	$v0,.L0dac9a68
    # Line 442
    lw	$v0,1728($s3)
    # Line 446
    beqz	$a0,.L0dac9cdc
    li	$at,774
.L0dac9a50:
    # Line 452
    lw	$a1,200($s4)
.L0dac9a54:
    sw	$a1,0($s0)
    # Line 453
    lw	$v1,204($s4)
    addiu	$s1,$s1,4
    # Line 452
    addiu	$s0,$s0,4
    # Line 453
    sw	$v1,-4($s1)
.L0dac9a68:
    li	$a4,770
.L0dac9a6c:
    beq	$a4,$v0,.L0dac9c84
    # Line 456
    li	$a2,771
.L0dac9a74:
    beq	$v0,$a2,.L0dac9bf0
    # Line 469
    la	$at,__glBlendSpan
.L0dac9a7c:
    sw	$at,0($s0)
.L0dac9a80:
    # Line 472
    addiu	$s1,$s1,4
    la	$v1,__glBlendStippledSpan
    # Line 471
    addiu	$s0,$s0,4
    # Line 472
    sw	$v1,-4($s1)
    andi	$a1,$s2,0x40
.L0dac9a94:
    beqz	$a1,.L0dac9bc8
    # Line 492
    andi	$v1,$s2,0x80
    # Line 472
    beqz	$s5,.L0dac9cb4
    # Line 476
    la	$at,__glDitherRGBASpan
    # Line 477
    la	$a2,__glDitherRGBAStippledSpan
    # Line 476
    sw	$at,0($s0)
    # Line 477
    sw	$a2,0($s1)
.L0dac9ab0:
    # Line 492
    addiu	$s1,$s1,4
    beqz	$v1,.L0dac9ad4
    # Line 491
    addiu	$s0,$s0,4
    # Line 495
    addiu	$s1,$s1,4
    # Line 494
    la	$a2,__glLogicOpSpan
    # Line 495
    la	$a1,__glLogicOpStippledSpan
    # Line 494
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 495
    sw	$a1,-4($s1)
.L0dac9ad4:
    andi	$at,$s2,0x800
    beqz	$at,.L0dac9b00
    # Line 521
    ld	$s2,24($sp)
    # Line 495
    beqz	$s5,.L0dac9cc8
    # Line 499
    la	$v1,__glMaskRGBASpan
    ld	$s5,64($sp)
    sw	$v1,0($s0)
    # Line 500
    sw	$v1,0($s1)
.L0dac9af4:
    # Line 506
    addiu	$s1,$s1,4
    # Line 505
    addiu	$s0,$s0,4
    # Line 521
    ld	$s2,24($sp)
.L0dac9b00:
    # Line 510
    lw	$v1,184($s4)
    ld	$s5,64($sp)
    # Line 514
    subu	$v0,$s0,$s3
    # Line 510
    sw	$v1,0($s0)
    # Line 514
    addiu	$v0,$v0,-12108
    # Line 511
    lw	$a1,188($s4)
    # Line 514
    sra	$v0,$v0,0x2
    # Line 521
    ld	$s4,40($sp)
    # Line 511
    sw	$a1,0($s1)
    # Line 514
    beqz	$s6,.L0dac9be0
    sw	$v0,12236($s3)
    # Line 516
    la	$a1,__glProcessReplicateSpan
    sw	$a1,12240($s3)
.L0dac9b34:
    # Line 521
    ld	$s1,32($sp)
    ld	$s0,48($sp)
    # ld	gp,16(sp)
    ld	$s3,8($sp)
    ld	$s6,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dac9b50:
    # Line 215
    andi	$a2,$s2,0x20
    beqz	$a2,.L0dac9e08
    andi	$v0,$s2,0x4
    # Line 228
    la	$a3,__glStencilTestSpan_asm
    la	$a4,__glStencilTestStippledSpan
    sw	$a3,0($s0)
    # Line 232
    beqz	$v0,.L0dac9ec4
    sw	$a4,0($s1)
    lui	$at,0x4
    and	$at,$s2,$at
    beqz	$at,.L0dac9ea8
    # Line 238
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 237
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 238
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 237
    sw	$a6,4($s0)
    # Line 238
    sw	$a5,4($s1)
.L0dac9b94:
    # Line 241
    la	$t8,__glDepthPassStippledSpan
    la	$t3,__glDepthPassSpan
.L0dac9b9c:
    sd	$s5,64($sp)
    # Line 257
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,8
    b	.L0dac9900
    # Line 256
    addiu	$s0,$s0,8
.L0dac9bb4:
    # Line 293
    beqz	$v0,.L0dac9e6c
    # Line 297
    la	$v1,__glShadeCISpan
    sw	$v1,0($s0)
    # Line 298
    b	.L0dac991c
    sw	$v1,0($s1)
.L0dac9bc8:
    # Line 480
    beqz	$s5,.L0dac9e7c
    # Line 484
    la	$a2,__glRoundRGBASpan
    # Line 485
    la	$a1,__glRoundRGBAStippledSpan
    # Line 484
    sw	$a2,0($s0)
    # Line 485
    b	.L0dac9ab0
    sw	$a1,0($s1)
.L0dac9be0:
    # Line 518
    la	$at,__glProcessSpan
    # Line 519
    sw	$v0,12232($s3)
    b	.L0dac9b34
    # Line 518
    sw	$at,12240($s3)
.L0dac9bf0:
    # Line 456
    bne	$a4,$a0,.L0dac9a7c
    # Line 469
    la	$at,__glBlendSpan
    # Line 465
    li	$v1,0x8006
    bne	$a3,$v1,.L0dac9a7c
    # Line 469
    la	$at,__glBlendSpan
    # Line 467
    la	$a1,__glBlendSpan_MSA_SA
    b	.L0dac9a80
    sw	$a1,0($s0)
.L0dac9c10:
    # Line 401
    beqzl	$v0,.L0dac99e8
    # Line 415
    lbu	$a2,30656($s3)
    # Line 401
    lw	$a2,1536($s3)
    li	$at,512
    beq	$a2,$at,.L0dac9ee8
    # Line 406
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqzl	$v1,.L0dac9e90
    # Line 415
    addiu	$s1,$s1,4
    # Line 412
    addiu	$s1,$s1,4
    # Line 411
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 412
    b	.L0dac99e4
    sw	$a7,-4($s1)
.L0dac9c48:
    # Line 210
    sw	$zero,12172($s3)
    addiu	$s1,$s3,12176
    # Line 209
    la	$a1,__glClipSpan
    addiu	$s0,$s3,12116
    b	.L0dac98a8
    sw	$a1,12112($s3)
.L0dac9c60:
    # Line 290
    la	$a2,__glFlatRGBASpan
    # Line 292
    sw	$a2,0($s0)
    b	.L0dac991c
    # Line 293
    sw	$a2,0($s1)
.L0dac9c70:
    # Line 355
    la	$v1,__glFogSpanSlow
    # Line 356
    la	$at,__glFogStippledSpanSlow
    # Line 355
    sw	$v1,0($s0)
    # Line 356
    b	.L0dac9988
    sw	$at,0($s1)
.L0dac9c84:
    # Line 453
    li	$a1,0x8006
    bne	$a3,$a1,.L0dac9a74
    # Line 456
    li	$a2,771
    # Line 455
    li	$a2,771
    beq	$a0,$a2,.L0dac9f40
    # Line 457
    li	$at,1
    beq	$a0,$at,.L0dac9f58
    # Line 459
    la	$at,__glBlendSpan_SA_ONE
    beqz	$a0,.L0dac9f4c
    # Line 463
    la	$v1,__glBlendSpan
    b	.L0dac9a80
    sw	$v1,0($s0)
.L0dac9cb4:
    # Line 479
    la	$a2,__glDitherCISpan
    # Line 480
    la	$a1,__glDitherCIStippledSpan
    # Line 479
    sw	$a2,0($s0)
    b	.L0dac9ab0
    # Line 480
    sw	$a1,0($s1)
.L0dac9cc8:
    # Line 500
    la	$s5,__glMaskCISpan
    # Line 502
    sw	$s5,0($s0)
    # Line 503
    sw	$s5,0($s1)
    b	.L0dac9af4
    ld	$s5,64($sp)
.L0dac9cdc:
    # Line 446
    beq	$v0,$at,.L0dac9a50
    li	$v1,775
    beq	$v0,$v1,.L0dac9a50
    li	$a1,772
    beq	$v0,$a1,.L0dac9a50
    li	$a2,773
    beq	$v0,$a2,.L0dac9a50
    li	$at,776
    beq	$v0,$at,.L0dac9a50
    li	$v1,0x8007
    beq	$a3,$v1,.L0dac9a50
    li	$a1,0x8008
    bne	$a3,$a1,.L0dac9a6c
    # Line 453
    li	$a4,770
    b	.L0dac9a54
    # Line 452
    lw	$a1,200($s4)
.L0dac9d1c:
    b	.L0dac99dc
    # Line 385
    sw	$t1,4($s1)
.L0dac9d24:
    # Line 397
    sw	$t3,4($s0)
    b	.L0dac99dc
    # Line 398
    sw	$t8,4($s1)
.L0dac9d30:
    # Line 314
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s3
    sd	$ra,80($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 315
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$v0,0($sp)
    move	$a0,$s3
    jal	__glLookUpTexture
    li	$a1,3553
    la	$a3,__glStencilTestSpan_asm
    la	$a4,__glStencilTestStippledSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$t2,__glDepthTestStencilSpan_asm
    lw	$t9,228($v0)
    la	$t3,__glDepthPassSpan
    la	$t8,__glDepthPassStippledSpan
    lw	$a2,64($t9)
    ld	$a0,72($sp)
    li	$at,6407
    bne	$a2,$at,.L0dac995c
    ld	$ra,80($sp)
    lw	$v1,56($t9)
    bnezl	$v1,.L0dac9960
    # Line 351
    addiu	$s1,$s1,4
    ld	$v0,0($sp)
    # Line 316
    lw	$v0,12($v0)
    li	$a1,9986
    beq	$v0,$a1,.L0dac9f8c
.L0dac9db4:
    # Line 321
    li	$t9,9987
.L0dac9db8:
    beq	$t9,$v0,.L0dac9fbc
.L0dac9dbc:
    # Line 326
    li	$v1,9728
.L0dac9dc0:
    beq	$v1,$v0,.L0dac9fec
.L0dac9dc4:
    # Line 331
    li	$a1,9984
.L0dac9dc8:
    beq	$v0,$a1,.L0daca01c
.L0dac9dcc:
    # Line 336
    li	$a2,0x8146
.L0dac9dd0:
    beq	$a2,$v0,.L0daca04c
    ld	$a2,0($sp)
.L0dac9dd8:
    # Line 341
    bnel	$t9,$v0,.L0dac9960
    # Line 351
    addiu	$s1,$s1,4
    # Line 341
    ld	$at,0($sp)
    lw	$at,16($at)
    li	$v1,0x8146
    bnel	$at,$v1,.L0dac9960
    # Line 351
    addiu	$s1,$s1,4
    # Line 345
    la	$a1,__glTextureRGB_F_LML_Span
    # Line 346
    la	$v1,__glTextureRGB_F_LML_StippledSpan
    # Line 345
    sw	$a1,0($s0)
    b	.L0dac995c
    # Line 346
    sw	$v1,0($s1)
.L0dac9e08:
    # Line 257
    beqz	$v0,.L0dac9f18
    # Line 271
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 257
    lw	$a2,1536($s3)
    li	$at,512
    beq	$a2,$at,.L0dac9f60
    # Line 262
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqz	$v1,.L0dac9f20
    # Line 271
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 268
    addiu	$s1,$s1,4
    # Line 267
    la	$t0,__glDepthTestOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 268
    sw	$a7,-4($s1)
.L0dac9e44:
    sd	$s5,64($sp)
    # Line 271
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$t8,__glDepthPassStippledSpan
    la	$a4,__glStencilTestStippledSpan
    la	$t3,__glDepthPassSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$t2,__glDepthTestStencilSpan_asm
    b	.L0dac9900
    la	$a3,__glStencilTestSpan_asm
.L0dac9e6c:
    # Line 298
    la	$a1,__glFlatCISpan
    # Line 300
    sw	$a1,0($s0)
    b	.L0dac991c
    # Line 301
    sw	$a1,0($s1)
.L0dac9e7c:
    # Line 487
    la	$at,__glRoundCISpan
    # Line 488
    la	$a2,__glRoundCIStippledSpan
    # Line 487
    sw	$at,0($s0)
    b	.L0dac9ab0
    # Line 488
    sw	$a2,0($s1)
.L0dac9e90:
    la	$a1,__glDepthTestSpan_asm
    # Line 414
    addiu	$s0,$s0,4
    la	$v1,__glDepthTestStippledSpan_asm
    sw	$a1,-4($s0)
    b	.L0dac99e4
    # Line 415
    sw	$v1,-4($s1)
.L0dac9ea8:
    # Line 241
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 238
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 241
    la	$a6,__glDepthTestStencilOffsetSpan
    # Line 238
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 240
    sw	$t2,4($s0)
    b	.L0dac9b94
    # Line 241
    sw	$t1,4($s1)
.L0dac9ec4:
    # Line 254
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 241
    la	$t3,__glDepthPassSpan
    # Line 254
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 241
    la	$t8,__glDepthPassStippledSpan
    # Line 253
    sw	$t3,4($s0)
    b	.L0dac9b9c
    # Line 254
    sw	$t8,4($s1)
.L0dac9ee8:
    # Line 405
    la	$a2,__glNop
    # ld	gp,16(sp)
    # Line 406
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    ld	$s4,40($sp)
    ld	$s5,64($sp)
    ld	$s6,56($sp)
    # Line 405
    sw	$a2,12240($s3)
    # Line 406
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dac9f18:
    b	.L0dac9e44
    # Line 271
    la	$t0,__glDepthTestOffsetSpan
.L0dac9f20:
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,4
    # Line 268
    la	$v1,__glDepthTestSpan_asm
    # Line 270
    addiu	$s0,$s0,4
    # Line 268
    la	$at,__glDepthTestStippledSpan_asm
    # Line 270
    sw	$v1,-4($s0)
    b	.L0dac9e44
    # Line 271
    sw	$at,-4($s1)
.L0dac9f40:
    # Line 457
    la	$a1,__glBlendSpan_SA_MSA
    b	.L0dac9a80
    sw	$a1,0($s0)
.L0dac9f4c:
    # Line 461
    la	$a2,__glBlendSpan_SA_ZERO
    b	.L0dac9a80
    sw	$a2,0($s0)
.L0dac9f58:
    # Line 459
    b	.L0dac9a80
    sw	$at,0($s0)
.L0dac9f60:
    # Line 261
    la	$v0,__glNop
    # ld	gp,16(sp)
    # Line 262
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    ld	$s4,40($sp)
    ld	$s6,56($sp)
    # Line 261
    sw	$v0,12240($s3)
    # Line 262
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dac9f8c:
    ld	$v1,0($sp)
    # Line 316
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0dac9db8
    # Line 321
    li	$t9,9987
    # Line 320
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 321
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    ld	$v0,0($sp)
    # Line 320
    sw	$a1,0($s0)
    # Line 321
    sw	$v1,0($s1)
    b	.L0dac9db4
    lw	$v0,12($v0)
.L0dac9fbc:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0dac9dc0
    # Line 326
    li	$v1,9728
    # Line 325
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 326
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    ld	$v0,0($sp)
    # Line 325
    sw	$a1,0($s0)
    # Line 326
    sw	$v1,0($s1)
    b	.L0dac9dbc
    lw	$v0,12($v0)
.L0dac9fec:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9728
    bne	$a2,$at,.L0dac9dc8
    # Line 331
    li	$a1,9984
    # Line 330
    la	$a1,__glTextureRGB_N_N_Span
    # Line 331
    la	$v1,__glTextureRGB_N_N_StippledSpan
    ld	$v0,0($sp)
    # Line 330
    sw	$a1,0($s0)
    # Line 331
    sw	$v1,0($s1)
    b	.L0dac9dc4
    lw	$v0,12($v0)
.L0daca01c:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9728
    bne	$a2,$at,.L0dac9dd0
    # Line 336
    li	$a2,0x8146
    # Line 335
    la	$a1,__glTextureRGB_N_NMN_Span
    # Line 336
    la	$v1,__glTextureRGB_N_NMN_StippledSpan
    ld	$v0,0($sp)
    # Line 335
    sw	$a1,0($s0)
    # Line 336
    sw	$v1,0($s1)
    b	.L0dac9dcc
    lw	$v0,12($v0)
.L0daca04c:
    lw	$a2,16($a2)
    li	$at,0x8146
    bne	$a2,$at,.L0dac9dd8
    # Line 340
    la	$a1,__glTextureRGB_F_F_Span
    # Line 341
    la	$v1,__glTextureRGB_F_F_StippledSpan
    ld	$v0,0($sp)
    # Line 340
    sw	$a1,0($s0)
    # Line 341
    sw	$v1,0($s1)
    b	.L0dac9dd8
    lw	$v0,12($v0)
.end __glGenericPickSpanProcs

# Function: __glGenericPickPointProcs
# Declared: Line 525 (Source lines: 526-571)
# Address: 0x0daca074 - 0x0daca17c (Size: 264 bytes, Frame: 0)
.globl __glGenericPickPointProcs
.ent __glGenericPickPointProcs
__glGenericPickPointProcs:
    # Line 527
    lw	$a3,30440($a0)
    lw	$v0,28088($a0)
    # Line 526
    lui	$v1,0x13
    addiu	$v1,$v1,-10252
    # Line 527
    beqz	$v0,.L0daca118
    # Line 526
    nop
    # Line 532
    la	$a1,__glPoint
    sw	$a1,11960($a0)
.L0daca094:
    lw	$a4,3092($a0)
    # Line 547
    li	$a1,1
    # Line 532
    li	$a2,7169
    beq	$a4,$a2,.L0daca12c
    # Line 536
    li	$v0,7170
    beq	$a4,$v0,.L0daca14c
    # Line 540
    la	$a4,__glSelectPoint
    lw	$v1,1696($a0)
    andi	$v1,$v1,0x400
    beqz	$v1,.L0daca138
    # Line 545
    la	$a4,__glRenderAntiAliasedCIPoint
    # Line 540
    lbu	$a1,3105($a0)
    beqzl	$a1,.L0daca154
    # Line 547
    la	$a4,__glRenderAntiAliasedRGBPoint
    # Line 545
    sw	$a4,12504($a0)
.L0daca0d0:
    # Line 554
    andi	$a2,$a3,0x2000
    beqz	$a2,.L0daca0e4
    # Line 557
    lui	$v0,0x2
    and	$v0,$a3,$v0
    beqz	$v0,.L0daca0f0
.L0daca0e4:
    andi	$v1,$a3,0x1000
    beqzl	$v1,.L0daca100
    # Line 564
    lw	$a1,1700($a0)
.L0daca0f0:
    # Line 560
    sw	$a4,12508($a0)
    # Line 561
    la	$a4,__glRenderFlatFogPoint
    sw	$a4,12504($a0)
.L0daca0fc:
    # Line 564
    lw	$a1,1700($a0)
.L0daca100:
    andi	$a1,$a1,0x200
    beqz	$a1,.L0daca124
    # Line 566
    la	$a2,__glPolygonOffsetPoint
    sw	$a2,12512($a0)
    # Line 571
    jr	$ra
    nop
.L0daca118:
    # Line 530
    la	$v0,__glPointFast
    b	.L0daca094
    sw	$v0,11960($a0)
.L0daca124:
    # Line 571
    jr	$ra
    # Line 569
    sw	$a4,12512($a0)
.L0daca12c:
    # Line 536
    la	$a4,__glFeedbackPoint
    b	.L0daca0fc
    sw	$a4,12504($a0)
.L0daca138:
    # Line 547
    lw	$v1,440($a0)
    beq	$v1,$a1,.L0daca15c
    # Line 550
    la	$a4,__glRenderAliasedPointN
    b	.L0daca0d0
    sw	$a4,12504($a0)
.L0daca14c:
    # Line 540
    b	.L0daca0fc
    sw	$a4,12504($a0)
.L0daca154:
    b	.L0daca0d0
    # Line 547
    sw	$a4,12504($a0)
.L0daca15c:
    # Line 550
    lbu	$a2,28220($a0)
    beqz	$a2,.L0daca170
    # Line 552
    la	$a4,__glRenderAliasedPoint1
    b	.L0daca0d0
    sw	$a4,12504($a0)
.L0daca170:
    # Line 554
    la	$a4,__glRenderAliasedPoint1_NoTex
    b	.L0daca0d0
    sw	$a4,12504($a0)
.end __glGenericPickPointProcs

# Function: __glGenericPickLineProcs
# Declared: Line 573 (Source lines: 574-797)
# Address: 0x0daca17c - 0x0daca66c (Size: 1264 bytes, Frame: 48)
.globl __glGenericPickLineProcs
.ent __glGenericPickLineProcs
__glGenericPickLineProcs:
    # Line 574
    addiu	$sp,$sp,-48
    move	$a4,$zero
    move	$t8,$zero
    move	$t2,$zero
    move	$t0,$zero
    move	$a3,$zero
    move	$t3,$zero
    move	$t1,$zero
    move	$a6,$zero
    # Line 575
    lw	$a7,30440($a0)
    lw	$v0,28088($a0)
    # Line 574
    lui	$v1,0x13
    addiu	$v1,$v1,-10516
    # Line 575
    beqz	$v0,.L0daca268
    # Line 574
    nop
    # Line 586
    la	$a1,__glOtherLStripVertex
    sw	$a1,11964($a0)
.L0daca1c0:
    # Line 591
    sw	$zero,12412($a0)
    lw	$a5,3092($a0)
    # Line 588
    la	$a2,__glSecondLinesVertex
    # Line 591
    li	$v0,7169
    beq	$a5,$v0,.L0daca280
    # Line 588
    sw	$a2,11972($a0)
    # Line 594
    li	$v1,7170
    beq	$a5,$v1,.L0daca4c8
    # Line 596
    la	$v1,__glSelectLine
    # Line 600
    lw	$a5,1696($a0)
    # Line 598
    move	$t9,$zero
    # Line 604
    la	$v1,__glRenderAliasLine
    # Line 600
    andi	$a5,$a5,0x200
    beqz	$a5,.L0daca28c
    sd	$zero,0($sp)
    # Line 602
    la	$v0,__glRenderAntiAliasLine
    sd	$a3,16($sp)
    sd	$a4,8($sp)
    sw	$v0,12480($a0)
.L0daca20c:
    # Line 608
    addiu	$a4,$a0,12312
    # Line 622
    la	$v1,__glScissorStippledLine
    # Line 608
    beqz	$a5,.L0daca29c
    # Line 607
    addiu	$a3,$a0,12248
.L0daca21c:
    # Line 622
    addiu	$a4,$a4,4
.L0daca220:
    # Line 619
    subu	$a2,$a3,$a0
    # Line 621
    addiu	$a3,$a3,4
    la	$a1,__glScissorLine
    # Line 619
    addiu	$a2,$a2,-12248
    sra	$a2,$a2,0x2
    sw	$a2,12376($a0)
    # Line 621
    sw	$a1,-4($a3)
    # Line 622
    beqz	$a5,.L0daca2dc
    sw	$v1,-4($a4)
.L0daca244:
    # Line 642
    beqz	$a6,.L0daca31c
    andi	$a1,$a7,0x1
.L0daca24c:
    # Line 789
    lw	$v0,1700($a0)
.L0daca250:
    andi	$v0,$v0,0x400
    beqz	$v0,.L0daca274
    # Line 792
    la	$v1,__glPolygonOffsetLine
    sw	$v1,12488($a0)
.L0daca260:
    # Line 797
    jr	$ra
    addiu	$sp,$sp,48
.L0daca268:
    # Line 584
    la	$a1,__glOtherLStripVertexFast
    b	.L0daca1c0
    sw	$a1,11964($a0)
.L0daca274:
    # Line 795
    lw	$a2,12480($a0)
    b	.L0daca260
    sw	$a2,12488($a0)
.L0daca280:
    # Line 594
    la	$v0,__glFeedbackLine
    b	.L0daca24c
    sw	$v0,12480($a0)
.L0daca28c:
    sd	$a3,16($sp)
    sd	$a4,8($sp)
    b	.L0daca20c
    # Line 604
    sw	$v1,12480($a0)
.L0daca29c:
    # Line 608
    andi	$a1,$a7,0x8000
    beqz	$a1,.L0daca2bc
    nop
    # Line 612
    sw	$zero,12312($a0)
    # Line 611
    la	$a2,__glStippleLine
    # Line 612
    addiu	$a4,$a0,12316
    # Line 611
    addiu	$a3,$a0,12252
    sw	$a2,12248($a0)
.L0daca2bc:
    # Line 612
    bnezl	$a5,.L0daca220
    # Line 622
    addiu	$a4,$a4,4
    # Line 612
    lw	$v0,452($a0)
    slti	$v0,$v0,2
    bnezl	$v0,.L0daca220
    # Line 622
    addiu	$a4,$a4,4
    b	.L0daca21c
    # Line 616
    li	$t9,1
.L0daca2dc:
    # Line 622
    andi	$v1,$a7,0x20
    beqz	$v1,.L0daca4d0
    andi	$a6,$a7,0x4
    # Line 626
    la	$a2,__glStencilTestLine
    la	$a1,__glStencilTestStippledLine
    sw	$a2,0($a3)
    # Line 627
    beqz	$a6,.L0daca564
    sw	$a1,0($a4)
    # Line 629
    la	$v1,__glDepthTestStencilLine
    la	$v0,__glDepthTestStencilStippledLine
    sw	$v1,4($a3)
    # Line 630
    sw	$v0,4($a4)
.L0daca30c:
    # Line 636
    addiu	$a4,$a4,8
    # Line 635
    addiu	$a3,$a3,8
.L0daca314:
    # Line 642
    b	.L0daca244
    move	$a6,$t1
.L0daca31c:
    beqz	$a1,.L0daca504
    andi	$a6,$a7,0x2
    beqz	$a6,.L0daca540
    # Line 664
    la	$a2,__glShadeRGBASpan
    sw	$a2,0($a3)
    # Line 665
    sw	$a2,0($a4)
.L0daca334:
    # Line 680
    addiu	$a4,$a4,4
    andi	$v0,$a7,0x8
    beqz	$v0,.L0daca35c
    # Line 679
    addiu	$a3,$a3,4
    # Line 683
    addiu	$a4,$a4,4
    # Line 682
    la	$a1,__glTextureSpan
    # Line 683
    la	$v1,__glTextureStippledSpan
    # Line 682
    addiu	$a3,$a3,4
    sw	$a1,-4($a3)
    # Line 683
    sw	$v1,-4($a4)
.L0daca35c:
    andi	$a2,$a7,0x1000
    beqz	$a2,.L0daca38c
    nop
    lw	$v0,1812($a0)
    li	$v1,4354
    beq	$v0,$v1,.L0daca550
    # Line 690
    la	$a2,__glFogSpan
    # Line 691
    la	$a1,__glFogStippledSpan
    # Line 690
    sw	$a2,0($a3)
    # Line 691
    sw	$a1,0($a4)
.L0daca384:
    # Line 694
    addiu	$a4,$a4,4
    # Line 693
    addiu	$a3,$a3,4
.L0daca38c:
    # Line 694
    beqz	$a5,.L0daca3ec
    nop
    # Line 699
    addiu	$a4,$a4,4
    # Line 698
    la	$v1,__glAntiAliasLine
    addiu	$a3,$a3,4
    # Line 699
    la	$v0,__glAntiAliasStippledLine
    # Line 698
    sw	$v1,-4($a3)
    # Line 699
    beqz	$a5,.L0daca3ec
    sw	$v0,-4($a4)
    andi	$a1,$a7,0x20
    beqz	$a1,.L0daca578
    andi	$a6,$a7,0x4
    la	$v0,__glStencilTestLine
    la	$a2,__glStencilTestStippledLine
    # Line 704
    sw	$v0,0($a3)
    # Line 705
    beqz	$a6,.L0daca5cc
    sw	$a2,0($a4)
    la	$a1,__glDepthTestStencilLine
    la	$v1,__glDepthTestStencilStippledLine
    # Line 707
    sw	$a1,4($a3)
    # Line 708
    sw	$v1,4($a4)
.L0daca3e0:
    # Line 714
    addiu	$a4,$a4,8
    # Line 713
    addiu	$a3,$a3,8
.L0daca3e8:
    # Line 720
    move	$t0,$t2
.L0daca3ec:
    bnezl	$t0,.L0daca250
    # Line 789
    lw	$v0,1700($a0)
    # Line 720
    andi	$a2,$a7,0x200
    beqzl	$a2,.L0daca41c
    # Line 741
    lbu	$a1,30656($a0)
    addiu	$a4,$a4,4
    # Line 740
    la	$v1,__glAlphaTestSpan
    # Line 741
    la	$v0,__glAlphaTestStippledSpan
    # Line 740
    addiu	$a3,$a3,4
    sw	$v1,-4($a3)
    # Line 741
    sw	$v0,-4($a4)
    lbu	$a1,30656($a0)
.L0daca41c:
    beqz	$a1,.L0daca428
    # Line 745
    li	$a2,1
    sd	$a2,0($sp)
.L0daca428:
    # Line 751
    la	$v0,__glStoreStippledLine
    # Line 750
    la	$v1,__glStoreLine
    # Line 748
    subu	$a5,$a3,$a0
    addiu	$a1,$a5,-12248
    sra	$a1,$a1,0x2
    sw	$a1,12380($a0)
    # Line 750
    sw	$v1,0($a3)
    # Line 756
    addiu	$a3,$a0,12392
    # Line 751
    sw	$v0,0($a4)
    # Line 757
    addiu	$a4,$a0,12396
    # Line 753
    addiu	$a5,$a5,-12244
    sra	$a5,$a5,0x2
    # Line 757
    beqz	$t9,.L0daca478
    # Line 754
    sw	$a5,12384($a0)
    # Line 762
    addiu	$a4,$a0,12404
    # Line 760
    la	$v0,__glWideStippleLineRep
    # Line 759
    la	$a2,__glWideLineRep
    # Line 761
    addiu	$a3,$a0,12400
    # Line 760
    sw	$v0,12396($a0)
    # Line 759
    sw	$a2,12392($a0)
.L0daca478:
    ld	$v1,0($sp)
    # Line 762
    beqz	$v1,.L0daca5e0
    # Line 765
    la	$a2,__glDrawBothLine
    # Line 766
    la	$a1,__glDrawBothStippledLine
    # Line 765
    sw	$a2,0($a3)
    # Line 770
    beqz	$t9,.L0daca5f8
    # Line 766
    sw	$a1,0($a4)
.L0daca494:
    # Line 779
    la	$v0,__glProcessLine
.L0daca498:
    sw	$v0,12388($a0)
.L0daca49c:
    andi	$v1,$a7,0x2000
    beqz	$v1,.L0daca24c
    lui	$a1,0x2
    and	$a1,$a7,$a1
    bnezl	$a1,.L0daca250
    # Line 789
    lw	$v0,1700($a0)
    # Line 784
    la	$v0,__glRenderFlatFogLine
    # Line 783
    lw	$a2,12480($a0)
    # Line 784
    sw	$v0,12480($a0)
    b	.L0daca24c
    # Line 783
    sw	$a2,12484($a0)
.L0daca4c8:
    # Line 596
    b	.L0daca24c
    sw	$v1,12480($a0)
.L0daca4d0:
    # Line 636
    beqz	$a6,.L0daca628
    nop
    lw	$a6,1536($a0)
    li	$a1,512
    beq	$a6,$a1,.L0daca640
    # Line 642
    la	$t3,__glDTLine
    sll	$a2,$a6,0x2
    addu	$a2,$a2,$t3
    lw	$a2,-2048($a2)
    beqzl	$a2,.L0daca518
    # Line 648
    sw	$zero,12412($a0)
    # Line 646
    b	.L0daca518
    sw	$a3,12412($a0)
.L0daca504:
    # Line 668
    beqz	$a6,.L0daca630
    # Line 672
    la	$v0,__glShadeCISpan
    sw	$v0,0($a3)
    # Line 673
    b	.L0daca334
    sw	$v0,0($a4)
.L0daca518:
    # Line 656
    la	$a6,__glNop
    addiu	$a4,$a4,4
    # Line 648
    la	$t1,__glDepthTestLine_asm
    la	$v1,__glDepthTestStippledLine
    # Line 651
    addiu	$a3,$a3,4
    sw	$t1,-4($a3)
    # Line 656
    sw	$v1,-4($a4)
.L0daca534:
    ld	$t3,16($sp)
.L0daca538:
    b	.L0daca314
    # Line 642
    move	$t1,$t3
.L0daca540:
    # Line 665
    la	$a1,__glFlatRGBASpan
    # Line 667
    sw	$a1,0($a3)
    b	.L0daca334
    # Line 668
    sw	$a1,0($a4)
.L0daca550:
    # Line 687
    la	$v0,__glFogSpanSlow
    # Line 688
    la	$a2,__glFogStippledSpanSlow
    # Line 687
    sw	$v0,0($a3)
    # Line 688
    b	.L0daca384
    sw	$a2,0($a4)
.L0daca564:
    # Line 630
    la	$a1,__glDepthPassLine
    la	$v1,__glDepthPassStippledLine
    # Line 632
    sw	$a1,4($a3)
    b	.L0daca30c
    # Line 633
    sw	$v1,4($a4)
.L0daca578:
    # Line 714
    beqz	$a6,.L0daca5c4
    nop
    lw	$a6,1536($a0)
    li	$a2,512
    beq	$a6,$a2,.L0daca658
    la	$v1,__glDTLine
    # Line 720
    sll	$v0,$a6,0x2
    addu	$v0,$v0,$v1
    lw	$v0,-2048($v0)
    beqzl	$v0,.L0daca5a8
    # Line 726
    sw	$zero,12412($a0)
    # Line 724
    sw	$a3,12412($a0)
.L0daca5a8:
    # Line 734
    addiu	$a4,$a4,4
    la	$a2,__glDepthTestLine_asm
    la	$a1,__glDepthTestStippledLine
    # Line 729
    addiu	$a3,$a3,4
    sw	$a2,-4($a3)
    # Line 734
    sw	$a1,-4($a4)
.L0daca5c0:
    ld	$t8,8($sp)
.L0daca5c4:
    b	.L0daca3e8
    # Line 720
    move	$t2,$t8
.L0daca5cc:
    la	$v1,__glDepthPassLine
    la	$v0,__glDepthPassStippledLine
    # Line 710
    sw	$v1,4($a3)
    b	.L0daca3e0
    # Line 711
    sw	$v0,4($a4)
.L0daca5e0:
    la	$a2,__glNop
    # Line 768
    sw	$a2,0($a3)
    # Line 769
    sw	$a2,0($a4)
    # Line 770
    lw	$a1,12384($a0)
    bnez	$t9,.L0daca494
    sw	$a1,12380($a0)
.L0daca5f8:
    # Line 773
    lw	$v0,12380($a0)
    bnez	$t9,.L0daca494
    sw	$v0,12376($a0)
    ld	$v1,0($sp)
    bnez	$v1,.L0daca498
    # Line 779
    la	$v0,__glProcessLine
    # Line 776
    li	$a1,3
    bne	$a5,$a1,.L0daca498
    # Line 779
    la	$v0,__glProcessLine
    # Line 777
    la	$a2,__glProcessLine3NW
    b	.L0daca49c
    sw	$a2,12388($a0)
.L0daca628:
    b	.L0daca538
    # Line 642
    la	$a6,__glNop
.L0daca630:
    # Line 673
    la	$v0,__glFlatCISpan
    # Line 675
    sw	$v0,0($a3)
    b	.L0daca334
    # Line 676
    sw	$v0,0($a4)
.L0daca640:
    # Line 642
    la	$t1,__glDepthTestLine_asm
    li	$v1,1
    # Line 641
    la	$a6,__glNop
    sd	$v1,16($sp)
    # Line 642
    b	.L0daca534
    # Line 641
    sw	$a6,12388($a0)
.L0daca658:
    # Line 720
    li	$a2,1
    la	$a1,__glNop
    sd	$a2,8($sp)
    b	.L0daca5c0
    # Line 719
    sw	$a1,12388($a0)
.end __glGenericPickLineProcs

# Function: __glGenericPickTriangleProcs
# Declared: Line 805 (Source lines: 806-907)
# Address: 0x0daca66c - 0x0daca858 (Size: 492 bytes, Frame: 0)
.globl __glGenericPickTriangleProcs
.ent __glGenericPickTriangleProcs
__glGenericPickTriangleProcs:
    # Line 807
    lui	$v0,0x1
    lw	$a4,30440($a0)
    # Line 806
    lui	$v1,0x13
    addiu	$v1,$v1,-11780
    # Line 807
    and	$v0,$a4,$v0
    beqz	$v0,.L0daca7a0
    # Line 806
    nop
    # Line 813
    lw	$a3,468($a0)
    li	$a1,1028
    beq	$a3,$a1,.L0daca7c0
    li	$v0,1032
    li	$a2,1029
    beq	$a3,$a2,.L0daca7d4
    # Line 818
    li	$v1,1
    # Line 813
    beq	$a3,$v0,.L0daca800
    # Line 821
    la	$v0,__glDontRenderTriangle
.L0daca6ac:
    # Line 831
    lw	$a3,472($a0)
    li	$a1,2305
    li	$v1,2304
    beq	$a3,$v1,.L0daca77c
    # Line 855
    li	$v0,7169
    # Line 831
    beql	$a3,$a1,.L0daca7ac
    # Line 842
    lbu	$a2,4552($a0)
.L0daca6c8:
    # Line 853
    lw	$a3,460($a0)
    # Line 855
    lw	$a6,464($a0)
    lw	$a5,3092($a0)
    # Line 853
    andi	$a2,$a3,0xf
    # Line 855
    andi	$v1,$a6,0xf
    sb	$v1,30523($a0)
    beq	$a5,$v0,.L0daca7dc
    # Line 853
    sb	$a2,30522($a0)
    # Line 863
    li	$a1,7170
    beq	$a5,$a1,.L0daca7f0
    # Line 866
    la	$a2,__glSelectTriangle
    # Line 869
    bne	$a3,$a6,.L0daca700
    li	$a2,6914
    beq	$a3,$a2,.L0daca720
.L0daca700:
    # Line 888
    la	$a5,__glRenderSmoothOneFaceTriangle
    la	$a3,__glRenderTriangle
    sw	$a3,12080($a0)
.L0daca70c:
    bnel	$a3,$a5,.L0daca748
    # Line 894
    sw	$a3,12084($a0)
.L0daca714:
    # Line 892
    la	$v0,__glRenderSmoothOneFaceTmesh
    b	.L0daca748
    sw	$v0,12084($a0)
.L0daca720:
    # Line 872
    lui	$v1,0x2
    and	$v1,$a4,$v1
    beqz	$v1,.L0daca828
    andi	$a3,$a4,0x400
    beqz	$a3,.L0daca83c
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    la	$a3,__glRenderSmoothTriangle
    # Line 888
    beq	$a3,$a5,.L0daca714
    # Line 876
    sw	$a3,12080($a0)
    # Line 894
    sw	$a3,12084($a0)
.L0daca748:
    lw	$a1,1696($a0)
    # Line 898
    la	$a3,__glFillAntiAliasedTriangle
    # Line 894
    andi	$a1,$a1,0x800
    beqz	$a1,.L0daca794
    # Line 900
    andi	$a2,$a4,0x2000
    # Line 898
    sw	$a3,12088($a0)
.L0daca760:
    # Line 900
    lui	$v0,0x2
    beqz	$a2,.L0daca774
    and	$v0,$a4,$v0
    beqz	$v0,.L0daca7c8
    # Line 905
    la	$v0,__glFillFlatFogTriangle
.L0daca774:
    # Line 907
    jr	$ra
    nop
.L0daca77c:
    # Line 833
    lbu	$v1,4552($a0)
    beqz	$v1,.L0daca810
    li	$a3,1
    # Line 835
    sb	$zero,30521($a0)
    b	.L0daca6c8
    # Line 834
    sb	$a3,30520($a0)
.L0daca794:
    # Line 900
    la	$a3,__glFillTriangle
    b	.L0daca760
    sw	$a3,12088($a0)
.L0daca7a0:
    # Line 827
    li	$a1,2
    b	.L0daca6ac
    sb	$a1,30525($a0)
.L0daca7ac:
    # Line 842
    beqz	$a2,.L0daca81c
    li	$a3,1
    # Line 844
    sb	$a3,30521($a0)
    b	.L0daca6c8
    # Line 843
    sb	$zero,30520($a0)
.L0daca7c0:
    # Line 816
    b	.L0daca6ac
    # Line 815
    sb	$zero,30525($a0)
.L0daca7c8:
    # Line 904
    sw	$a3,12092($a0)
    # Line 907
    jr	$ra
    # Line 905
    sw	$v0,12088($a0)
.L0daca7d4:
    # Line 819
    b	.L0daca6ac
    # Line 818
    sb	$v1,30525($a0)
.L0daca7dc:
    # Line 860
    la	$a1,__glFeedbackTriangle
    # Line 862
    sw	$zero,12088($a0)
    # Line 861
    sw	$a1,12084($a0)
    # Line 863
    jr	$ra
    # Line 860
    sw	$a1,12080($a0)
.L0daca7f0:
    # Line 868
    sw	$zero,12088($a0)
    # Line 867
    sw	$a2,12084($a0)
    # Line 869
    jr	$ra
    # Line 866
    sw	$a2,12080($a0)
.L0daca800:
    # Line 823
    sw	$zero,12088($a0)
    # Line 822
    sw	$v0,12084($a0)
    # Line 824
    jr	$ra
    # Line 821
    sw	$v0,12080($a0)
.L0daca810:
    # Line 838
    sb	$a3,30521($a0)
    b	.L0daca6c8
    # Line 837
    sb	$zero,30520($a0)
.L0daca81c:
    # Line 847
    sb	$zero,30521($a0)
    b	.L0daca6c8
    # Line 846
    sb	$a3,30520($a0)
.L0daca828:
    # Line 878
    beqz	$a3,.L0daca84c
    # Line 882
    la	$a3,__glRenderFlatTriangle
    sw	$a3,12080($a0)
.L0daca834:
    b	.L0daca70c
    # Line 884
    la	$a5,__glRenderSmoothOneFaceTriangle
.L0daca83c:
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 878
    move	$a3,$a5
    b	.L0daca70c
    sw	$a5,12080($a0)
.L0daca84c:
    # Line 884
    la	$a3,__glRenderFlatOneFaceTriangle
    b	.L0daca834
    sw	$a3,12080($a0)
.end __glGenericPickTriangleProcs

# Function: __glGenericPickRenderBitmapProcs
# Declared: Line 909 (Source lines: 910-920)
# Address: 0x0daca858 - 0x0daca8b0 (Size: 88 bytes, Frame: 0)
.globl __glGenericPickRenderBitmapProcs
.ent __glGenericPickRenderBitmapProcs
__glGenericPickRenderBitmapProcs:
    # Line 911
    lw	$v0,1112($a0)
    # Line 910
    lui	$a1,0x13
    addiu	$a1,$a1,-12272
    # addu	at,t9,a1
    # Line 911
    la	$v1,__glRenderBitmap
    bnez	$v0,.L0daca894
    sw	$v1,12520($a0)
    lw	$a2,1116($a0)
    bnez	$a2,.L0daca898
    # Line 919
    la	$a1,__glDrawBitmap
    # Line 913
    lw	$v0,1120($a0)
    bnez	$v0,.L0daca898
    # Line 919
    la	$a1,__glDrawBitmap
    # Line 913
    lbu	$v1,1109($a0)
    beqz	$v1,.L0daca8a4
.L0daca894:
    # Line 919
    la	$a1,__glDrawBitmap
.L0daca898:
    sw	$a1,12516($a0)
    # Line 920
    jr	$ra
    nop
.L0daca8a4:
    # Line 917
    la	$a2,__glFastDrawBitmap
    # Line 920
    jr	$ra
    # Line 917
    sw	$a2,12516($a0)
.end __glGenericPickRenderBitmapProcs

# Function: __glGenericPickClipProcs
# Declared: Line 922 (Source lines: 923-930)
# Address: 0x0daca8b0 - 0x0daca8e8 (Size: 56 bytes, Frame: 0)
.globl __glGenericPickClipProcs
.ent __glGenericPickClipProcs
__glGenericPickClipProcs:
    # Line 923
    li	$v1,7424
    lw	$v0,1304($a0)
    lui	$a1,0x13
    addiu	$a1,$a1,-12360
    beq	$v0,$v1,.L0daca8dc
    nop
    # Line 927
    la	$a2,__glFastClipSmoothLine
    sw	$a2,12492($a0)
.L0daca8d0:
    # Line 929
    la	$v0,__glClipTriangle
    # Line 930
    jr	$ra
    # Line 929
    sw	$v0,12096($a0)
.L0daca8dc:
    # Line 925
    la	$v1,__glFastClipFlatLine
    b	.L0daca8d0
    sw	$v1,12492($a0)
.end __glGenericPickClipProcs

# Function: __glGenericPickTextureProcs
# Declared: Line 932 (Source lines: 933-1350)
# Address: 0x0daca8e8 - 0x0dacb300 (Size: 2584 bytes, Frame: 192)
.globl __glGenericPickTextureProcs
.ent __glGenericPickTextureProcs
__glGenericPickTextureProcs:
    # Line 933
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$v0,0xc
    lw	$a3,1696($a0)
    lui	$v1,0x13
    addiu	$v1,$v1,-12416
    and	$at,$v0,$a3
    beq	$at,$v0,.L0dacad14
    addu	$gp,$t9,$v1
.L0daca914:
    # Line 954
    lui	$a1,0x4
.L0daca918:
    and	$a1,$a3,$a1
    beqz	$a1,.L0dacac6c
    # Line 963
    la	$a2,__glCalcMixedTexture
.L0daca924:
    sd	$s1,24($sp)
    sw	$a2,12004($s0)
.L0daca92c:
    sd	$s1,24($sp)
.L0daca930:
    # Line 967
    move	$s1,$zero
    lui	$at,0x4000
    and	$at,$a3,$at
    beqz	$at,.L0dacaba4
    sw	$zero,28216($s0)
    # Line 969
    # lw $t9, -26852($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    sd	$ra,32($sp)
    jal	__glIsTextureConsistent
    li	$a1,0x806f
    beqz	$v0,.L0daca990
    ld	$ra,32($sp)
    # Line 970
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,0x806f
    # Line 971
    # lw $t9, -27068($gp) # &__glLookUpTexture
    li	$a1,0x806f
    move	$a0,$s0
    jal	__glLookUpTexture
    # Line 970
    sw	$v0,0($sp)
    # Line 971
    move	$s1,$v0
    sw	$v0,28216($s0)
    ld	$ra,32($sp)
.L0daca990:
    # Line 989
    lui	$a1,0x8000
    beqz	$s1,.L0dacacac
    # Line 1011
    mtc1	$zero,$f4
    # Line 989
    lw	$v1,1696($s0)
    # Line 1009
    li	$v0,54
    move	$a0,$zero
    # Line 989
    and	$v1,$v1,$a1
    beqz	$v1,.L0dacac50
    nop
    lw	$a2,5384($s0)
    beqz	$a2,.L0dacac50
    # Line 1004
    li	$a7,1
.L0daca9c0:
    # Line 1009
    lw	$a5,0($sp)
    addiu	$a4,$s1,4
    move	$a3,$a5
.L0daca9cc:
    addu	$v1,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daca9cc
    sw	$at,0($v1)
    # Line 1011
    lwc1	$f0,184($a5)
    c.eq.s	$f0,$f4
    # Line 1028
    la	$a0,__glComputeLineRho
    # Line 1030
    li	$a1,9728
    # Line 1011
    bc1f	.L0dacaa8c
    # Line 1029
    la	$v1,__glComputePolygonRho
    # Line 1011
    lwc1	$f1,188($a5)
    c.eq.s	$f1,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f2,192($a5)
    c.eq.s	$f2,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f3,196($a5)
    c.eq.s	$f3,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f0,168($a5)
    lwc1	$f4,3284($s0)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f1,172($a5)
    c.eq.s	$f1,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f2,176($a5)
    c.eq.s	$f2,$f4
    nop
    bc1f	.L0dacaa90
    # Line 1019
    li	$t0,1
    # Line 1011
    lwc1	$f3,180($a5)
    c.eq.s	$f3,$f4
    nop
    bc1t	.L0dacb0e8
.L0dacaa8c:
    # Line 1019
    li	$t0,1
.L0dacaa90:
    # Line 1029
    sw	$v1,12528($s0)
    # Line 1028
    sw	$a0,12524($s0)
    # Line 1030
    lw	$a0,16($s1)
    li	$a6,9729
    beql	$a6,$a0,.L0dacac24
    lw	$a4,20($s1)
    beql	$a0,$a1,.L0dacac24
    lw	$a4,20($s1)
    # Line 1055
    lw	$a4,20($s1)
    la	$a5,__glMipMapFragment
    beq	$a6,$a4,.L0dacae90
    sw	$a5,256($s1)
    # Line 1067
    lwc1	$f0,3284($s0)
.L0dacaac4:
    swc1	$f0,240($s1)
.L0dacaac8:
    # Line 1073
    lw	$v0,2376($s0)
    li	$v1,8449
    lw	$v0,0($v0)
    # Line 1072
    lw	$a3,228($s1)
    # Line 1073
    li	$at,8448
    beq	$v0,$at,.L0dacadb4
    # Line 1072
    lw	$a3,64($a3)
    # Line 1073
    beq	$v0,$v1,.L0dacae50
    li	$a1,3042
    beq	$v0,$a1,.L0dacaed8
    li	$a2,7681
    beq	$v0,$a2,.L0dacad70
    li	$at,0x8062
    beq	$v0,$at,.L0dacad70
.L0dacab00:
    # Line 1290
    li	$a1,2
.L0dacab04:
    lw	$v0,232($s1)
    li	$v1,1
    beq	$v0,$v1,.L0dacae28
    # Line 1309
    li	$a3,0x8146
    # Line 1290
    beq	$v0,$a1,.L0dacaeb0
    li	$a2,3
    beq	$v0,$a2,.L0dacaf24
    # Line 1303
    la	$a1,__glLinearFilter3
.L0dacab24:
    # Line 1309
    beq	$a3,$a4,.L0dacae44
    move	$v0,$a4
    beq	$a6,$v0,.L0dacaecc
    li	$at,9728
    beq	$v0,$at,.L0dacaf38
.L0dacab38:
    # Line 1319
    la	$a7,__glFilter4Func
    la	$a4,__glLinearFilter
    # Line 1322
    move	$v0,$a0
    sltiu	$v1,$a0,9985
    bnez	$v1,.L0dacab7c
    # Line 1319
    la	$a6,__glNearestFilter
    # Line 1322
    sltiu	$a1,$v0,9986
    bnez	$a1,.L0dacac00
    sltiu	$a2,$v0,9987
    bnez	$a2,.L0dacae10
    sltiu	$at,$v0,9988
    bnez	$at,.L0dacaf4c
    # Line 1342
    la	$at,__glLMLFilter
    # Line 1322
    bnel	$a3,$v0,.L0dacac0c
    # Line 1346
    sw	$a5,12532($s0)
    # Line 1325
    b	.L0dacac08
    # Line 1324
    sw	$a7,268($s1)
.L0dacab7c:
    # Line 1322
    sltiu	$v1,$v0,9729
    bnez	$v1,.L0dacac58
    sltiu	$a1,$v0,9730
    bnez	$a1,.L0dacaf1c
    li	$a2,9984
    bnel	$v0,$a2,.L0dacac0c
    # Line 1346
    sw	$a5,12532($s0)
    # Line 1333
    la	$at,__glNMNFilter
    # Line 1334
    b	.L0dacac08
    # Line 1333
    sw	$at,268($s1)
.L0dacaba4:
    # Line 971
    lui	$v1,0x2
    and	$v1,$a3,$v1
    beqz	$v1,.L0dacacb8
    # Line 976
    nop	# was lw $t9, -26852($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    sd	$ra,32($sp)
    jal	__glIsTextureConsistent
    li	$a1,3553
    beqz	$v0,.L0daca990
    ld	$ra,32($sp)
    # Line 977
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 978
    # lw $t9, -27068($gp) # &__glLookUpTexture
    li	$a1,3553
    move	$a0,$s0
    jal	__glLookUpTexture
    # Line 977
    sw	$v0,0($sp)
    # Line 978
    move	$s1,$v0
    sw	$v0,28216($s0)
    b	.L0daca990
    ld	$ra,32($sp)
.L0dacac00:
    # Line 1336
    la	$a1,__glLMNFilter
    sw	$a1,268($s1)
.L0dacac08:
    # Line 1346
    sw	$a5,12532($s0)
.L0dacac0c:
    ld	$s1,24($sp)
.L0dacac10:
    ld	$gp,16($sp)
    # Line 1350
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 1030
    lw	$a4,20($s1)
.L0dacac24:
    bne	$a0,$a4,.L0dacadf8
    # Line 1035
    la	$a5,__glFastTextureFragment
    # Line 1036
    la	$a4,__glNopLineRho
    # Line 1037
    la	$a2,__glNopPolygonRho
    # Line 1035
    sw	$a5,256($s1)
    # Line 1036
    sw	$a4,12524($s0)
    # Line 1037
    sw	$a2,12528($s0)
    lw	$a4,20($s1)
    lw	$a5,256($s1)
    b	.L0dacaac8
    lw	$a0,16($s1)
.L0dacac50:
    b	.L0daca9c0
    # Line 1006
    move	$a7,$zero
.L0dacac58:
    # Line 1322
    li	$at,9728
    bnel	$v0,$at,.L0dacac0c
    # Line 1346
    sw	$a5,12532($s0)
    # Line 1331
    b	.L0dacac08
    # Line 1330
    sw	$a6,268($s1)
.L0dacac6c:
    # Line 954
    lui	$v1,0x8
    and	$v1,$a3,$v1
    bnez	$v1,.L0daca924
    # Line 963
    la	$a2,__glCalcMixedTexture
    # Line 956
    lui	$a1,0x10
    and	$a1,$a3,$a1
    bnez	$a1,.L0daca924
    # Line 963
    la	$a2,__glCalcMixedTexture
    # Line 956
    lui	$a2,0x20
    and	$a2,$a3,$a2
    bnez	$a2,.L0daca924
    # Line 963
    la	$a2,__glCalcMixedTexture
    # Line 961
    la	$at,__glCalcTexture
    sd	$s1,24($sp)
    b	.L0daca92c
    sw	$at,12004($s0)
.L0dacacac:
    # Line 1348
    sw	$zero,12532($s0)
    b	.L0dacac10
    ld	$s1,24($sp)
.L0dacacb8:
    # Line 978
    lui	$v1,0x1
    and	$v1,$a3,$v1
    beqz	$v1,.L0dacaf44
    # Line 983
    nop	# was lw $t9, -26852($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    sd	$ra,32($sp)
    jal	__glIsTextureConsistent
    li	$a1,3552
    beqz	$v0,.L0daca990
    ld	$ra,32($sp)
    # Line 984
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3552
    # Line 985
    # lw $t9, -27068($gp) # &__glLookUpTexture
    li	$a1,3552
    move	$a0,$s0
    jal	__glLookUpTexture
    # Line 984
    sw	$v0,0($sp)
    # Line 985
    move	$s1,$v0
    sw	$v0,28216($s0)
    b	.L0daca990
    ld	$ra,32($sp)
.L0dacad14:
    # Line 933
    lui	$a1,0x10
    and	$a1,$a3,$a1
    bnez	$a1,.L0daca918
    # Line 954
    lui	$a1,0x4
    # Line 938
    lui	$a2,0x20
    and	$a2,$a3,$a2
    bnez	$a2,.L0daca918
    # Line 954
    lui	$a1,0x4
    # Line 938
    lw	$at,2000($s0)
    lw	$a0,1876($s0)
    bne	$at,$a0,.L0daca914
    # Line 944
    li	$v1,9216
    beq	$a0,$v1,.L0dacb2b0
    move	$v0,$a0
    li	$a1,9217
    beq	$v0,$a1,.L0dacb2d8
    li	$a2,9218
    bnel	$v0,$a2,.L0daca930
    sd	$s1,24($sp)
    # Line 952
    la	$at,__glCalcSphereMap
    sd	$s1,24($sp)
    # Line 953
    b	.L0daca92c
    # Line 952
    sw	$at,12004($s0)
.L0dacad70:
    # Line 1230
    li	$v1,6409
    beq	$a3,$v1,.L0dacaf74
    li	$a1,6410
    beq	$a3,$a1,.L0dacaf94
    li	$a2,6407
    beq	$a3,$a2,.L0dacafb4
    li	$at,6408
    beq	$a3,$at,.L0dacaff0
    li	$v1,6406
    beq	$a3,$v1,.L0dacb03c
    li	$a1,0x8049
    bne	$a3,$a1,.L0dacab04
    # Line 1290
    li	$a1,2
    # Line 1277
    beqz	$a7,.L0dacb1a0
    # Line 1278
    la	$a2,__glTextureCTReplaceI
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacadb4:
    # Line 1075
    li	$at,6409
    beq	$a3,$at,.L0dacaf84
    li	$v1,6410
    beq	$a3,$v1,.L0dacafa4
    li	$a1,6407
    beq	$a3,$a1,.L0dacafd0
    li	$a2,6408
    beq	$a3,$a2,.L0dacb01c
    li	$at,6406
    beq	$a3,$at,.L0dacb05c
    li	$v1,0x8049
    bne	$a3,$v1,.L0dacab04
    # Line 1290
    li	$a1,2
    # Line 1122
    beqz	$a7,.L0dacb1b0
    # Line 1123
    la	$a1,__glTextureCTModulateI
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacadf8:
    # Line 1039
    la	$a5,__glTextureFragment
    beq	$a6,$a4,.L0dacaf54
    sw	$a5,256($s1)
    # Line 1051
    lwc1	$f1,3284($s0)
.L0dacae08:
    b	.L0dacaac8
    swc1	$f1,240($s1)
.L0dacae10:
    # Line 1322
    li	$a2,9986
    bnel	$v0,$a2,.L0dacac0c
    # Line 1346
    sw	$a5,12532($s0)
    # Line 1339
    la	$at,__glNMLFilter
    # Line 1340
    b	.L0dacac08
    # Line 1339
    sw	$at,268($s1)
.L0dacae28:
    # Line 1294
    la	$a2,__glFilter4Func1
    # Line 1293
    la	$a1,__glLinearFilter1
    # Line 1294
    sw	$a2,272($s1)
    # Line 1292
    la	$v1,__glNearestFilter1
    # Line 1293
    sw	$a1,276($s1)
    # Line 1295
    b	.L0dacab24
    # Line 1292
    sw	$v1,280($s1)
.L0dacae44:
    # Line 1311
    la	$at,__glFilter4Func
    # Line 1312
    b	.L0dacab38
    # Line 1311
    sw	$at,264($s1)
.L0dacae50:
    # Line 1133
    li	$v1,6409
    beq	$a3,$v1,.L0dacafc4
    li	$a1,6410
    beq	$a3,$a1,.L0dacb010
    li	$a2,6407
    beq	$a3,$a2,.L0dacb000
    li	$at,6408
    beq	$a3,$at,.L0dacb04c
    li	$v1,6406
    beq	$a3,$v1,.L0dacb08c
    li	$a1,0x8049
    bne	$a3,$a1,.L0dacab04
    # Line 1290
    li	$a1,2
    # Line 1165
    la	$a2,__glNop
    # Line 1167
    b	.L0dacab00
    # Line 1165
    sw	$a2,260($s1)
.L0dacae90:
    # Line 1062
    li	$at,9984
    beq	$a0,$at,.L0dacaea4
    li	$v1,9985
    bnel	$a0,$v1,.L0dacaac4
    # Line 1067
    lwc1	$f0,3284($s0)
.L0dacaea4:
    # Line 1065
    lwc1	$f2,_lit_40000000
    b	.L0dacaac8
    swc1	$f2,240($s1)
.L0dacaeb0:
    # Line 1299
    la	$at,__glFilter4Func2
    # Line 1298
    la	$a2,__glLinearFilter2
    # Line 1299
    sw	$at,272($s1)
    # Line 1297
    la	$a1,__glNearestFilter2
    # Line 1298
    sw	$a2,276($s1)
    # Line 1300
    b	.L0dacab24
    # Line 1297
    sw	$a1,280($s1)
.L0dacaecc:
    # Line 1314
    la	$v1,__glLinearFilter
    # Line 1315
    b	.L0dacab38
    # Line 1314
    sw	$v1,264($s1)
.L0dacaed8:
    # Line 1171
    li	$a1,6409
    beq	$a3,$a1,.L0dacafe0
    li	$a2,6410
    beq	$a3,$a2,.L0dacb02c
    li	$at,6407
    beq	$a3,$at,.L0dacb06c
    li	$v1,6408
    beq	$a3,$v1,.L0dacb07c
    li	$a1,6406
    beq	$a3,$a1,.L0dacb098
    li	$a2,0x8049
    bne	$a3,$a2,.L0dacab04
    # Line 1290
    li	$a1,2
    # Line 1218
    beqz	$a7,.L0dacb1e0
    # Line 1219
    la	$at,__glTextureCTBlendI
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacaf1c:
    # Line 1328
    b	.L0dacac08
    # Line 1327
    sw	$a4,268($s1)
.L0dacaf24:
    # Line 1304
    sw	$zero,272($s1)
    # Line 1302
    la	$v1,__glNearestFilter3
    # Line 1303
    sw	$a1,276($s1)
    b	.L0dacab24
    # Line 1302
    sw	$v1,280($s1)
.L0dacaf38:
    # Line 1317
    la	$a2,__glNearestFilter
    b	.L0dacab38
    sw	$a2,264($s1)
.L0dacaf44:
    b	.L0daca990
    # Line 989
    move	$s1,$zero
.L0dacaf4c:
    b	.L0dacac08
    # Line 1342
    sw	$at,268($s1)
.L0dacaf54:
    # Line 1046
    li	$v1,9984
    beq	$a0,$v1,.L0dacaf68
    li	$a1,9985
    bnel	$a0,$a1,.L0dacae08
    # Line 1051
    lwc1	$f1,3284($s0)
.L0dacaf68:
    # Line 1049
    lwc1	$f3,_lit_40000000
    b	.L0dacaac8
    swc1	$f3,240($s1)
.L0dacaf74:
    # Line 1232
    beqz	$a7,.L0dacb0a8
    # Line 1233
    la	$a2,__glTextureCTReplaceL
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacaf84:
    # Line 1077
    beqz	$a7,.L0dacb0b8
    # Line 1078
    la	$at,__glTextureCTModulateL
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacaf94:
    # Line 1241
    beqz	$a7,.L0dacb0c8
    # Line 1242
    la	$v1,__glTextureCTReplaceLA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacafa4:
    # Line 1086
    beqz	$a7,.L0dacb0d8
    # Line 1087
    la	$a1,__glTextureCTModulateLA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacafb4:
    # Line 1250
    beqz	$a7,.L0dacb0f0
    # Line 1251
    la	$a2,__glTextureCTReplaceRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacafc4:
    # Line 1135
    la	$at,__glNop
    # Line 1137
    b	.L0dacab00
    # Line 1135
    sw	$at,260($s1)
.L0dacafd0:
    # Line 1095
    beqz	$a7,.L0dacb100
    # Line 1096
    la	$v1,__glTextureCTModulateRGB
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacafe0:
    # Line 1173
    beqz	$a7,.L0dacb110
    # Line 1174
    la	$a1,__glTextureCTBlendL
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacaff0:
    # Line 1259
    beqz	$a7,.L0dacb120
    # Line 1260
    la	$a2,__glTextureCTReplaceRGBA
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb000:
    # Line 1143
    beqz	$a7,.L0dacb130
    # Line 1144
    la	$at,__glTextureCTDecalRGB
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb010:
    # Line 1139
    la	$v1,__glNop
    # Line 1141
    b	.L0dacab00
    # Line 1139
    sw	$v1,260($s1)
.L0dacb01c:
    # Line 1104
    beqz	$a7,.L0dacb140
    # Line 1105
    la	$a1,__glTextureCTModulateRGBA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb02c:
    # Line 1182
    beqz	$a7,.L0dacb150
    # Line 1183
    la	$a2,__glTextureCTBlendLA
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb03c:
    # Line 1268
    beqz	$a7,.L0dacb160
    # Line 1269
    la	$at,__glTextureCTReplaceA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb04c:
    # Line 1152
    beqz	$a7,.L0dacb170
    # Line 1153
    la	$v1,__glTextureCTDecalRGBA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb05c:
    # Line 1113
    beqz	$a7,.L0dacb180
    # Line 1114
    la	$a1,__glTextureCTModulateA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb06c:
    # Line 1191
    beqz	$a7,.L0dacb190
    # Line 1192
    la	$a2,__glTextureCTBlendRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb07c:
    # Line 1200
    beqz	$a7,.L0dacb1c0
    # Line 1201
    la	$at,__glTextureCTBlendRGBA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb08c:
    # Line 1161
    la	$v1,__glNop
    # Line 1163
    b	.L0dacab00
    # Line 1161
    sw	$v1,260($s1)
.L0dacb098:
    # Line 1209
    beqz	$a7,.L0dacb1d0
    # Line 1210
    la	$a1,__glTextureCTBlendA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb0a8:
    # Line 1233
    beqz	$t0,.L0dacb1f0
    # Line 1236
    la	$a2,__glTextureSBReplaceL
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb0b8:
    # Line 1078
    beqz	$t0,.L0dacb1fc
    # Line 1081
    la	$at,__glTextureSBModulateL
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb0c8:
    # Line 1242
    beqz	$t0,.L0dacb208
    # Line 1245
    la	$v1,__glTextureSBReplaceLA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb0d8:
    # Line 1087
    beqz	$t0,.L0dacb214
    # Line 1090
    la	$a1,__glTextureSBModulateLA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb0e8:
    b	.L0dacaa90
    # Line 1021
    move	$t0,$zero
.L0dacb0f0:
    # Line 1251
    beqz	$t0,.L0dacb220
    # Line 1254
    la	$a2,__glTextureSBReplaceRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb100:
    # Line 1096
    beqz	$t0,.L0dacb22c
    # Line 1099
    la	$at,__glTextureSBModulateRGB
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb110:
    # Line 1174
    beqz	$t0,.L0dacb238
    # Line 1177
    la	$v1,__glTextureSBBlendL
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb120:
    # Line 1260
    beqz	$t0,.L0dacb244
    # Line 1263
    la	$a1,__glTextureSBReplaceRGBA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb130:
    # Line 1144
    beqz	$t0,.L0dacb250
    # Line 1147
    la	$a2,__glTextureSBDecalRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb140:
    # Line 1105
    beqz	$t0,.L0dacb25c
    # Line 1108
    la	$at,__glTextureSBModulateRGBA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb150:
    # Line 1183
    beqz	$t0,.L0dacb268
    # Line 1186
    la	$v1,__glTextureSBBlendLA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb160:
    # Line 1269
    beqz	$t0,.L0dacb274
    # Line 1272
    la	$a1,__glTextureSBReplaceA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb170:
    # Line 1153
    beqz	$t0,.L0dacb280
    # Line 1156
    la	$a2,__glTextureSBDecalRGBA
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb180:
    # Line 1114
    beqz	$t0,.L0dacb28c
    # Line 1117
    la	$at,__glTextureSBModulateA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb190:
    # Line 1192
    beqz	$t0,.L0dacb298
    # Line 1195
    la	$v1,__glTextureSBBlendRGB
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb1a0:
    # Line 1278
    beqz	$t0,.L0dacb2a4
    # Line 1281
    la	$a1,__glTextureSBReplaceI
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb1b0:
    # Line 1123
    beqz	$t0,.L0dacb2c0
    # Line 1126
    la	$a2,__glTextureSBModulateI
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb1c0:
    # Line 1201
    beqz	$t0,.L0dacb2cc
    # Line 1204
    la	$at,__glTextureSBBlendRGBA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb1d0:
    # Line 1210
    beqz	$t0,.L0dacb2e8
    # Line 1213
    la	$v1,__glTextureSBBlendA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb1e0:
    # Line 1219
    beqz	$t0,.L0dacb2f4
    # Line 1222
    la	$a1,__glTextureSBBlendI
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb1f0:
    # Line 1238
    la	$a2,__glTextureReplaceL
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb1fc:
    # Line 1083
    la	$at,__glTextureModulateL
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb208:
    # Line 1247
    la	$v1,__glTextureReplaceLA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb214:
    # Line 1092
    la	$a1,__glTextureModulateLA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb220:
    # Line 1256
    la	$a2,__glTextureReplaceRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb22c:
    # Line 1101
    la	$at,__glTextureModulateRGB
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb238:
    # Line 1179
    la	$v1,__glTextureBlendL
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb244:
    # Line 1265
    la	$a1,__glTextureReplaceRGBA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb250:
    # Line 1149
    la	$a2,__glTextureDecalRGB
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb25c:
    # Line 1110
    la	$at,__glTextureModulateRGBA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb268:
    # Line 1188
    la	$v1,__glTextureBlendLA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb274:
    # Line 1274
    la	$a1,__glTextureReplaceA
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb280:
    # Line 1158
    la	$a2,__glTextureDecalRGBA
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb28c:
    # Line 1119
    la	$at,__glTextureModulateA
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb298:
    # Line 1197
    la	$v1,__glTextureBlendRGB
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb2a4:
    # Line 1283
    la	$a1,__glTextureReplaceI
    b	.L0dacab00
    sw	$a1,260($s1)
.L0dacb2b0:
    # Line 946
    la	$a2,__glCalcEyeLinear
    sd	$s1,24($sp)
    # Line 947
    b	.L0daca92c
    # Line 946
    sw	$a2,12004($s0)
.L0dacb2c0:
    # Line 1128
    la	$at,__glTextureModulateI
    b	.L0dacab00
    sw	$at,260($s1)
.L0dacb2cc:
    # Line 1206
    la	$v1,__glTextureBlendRGBA
    b	.L0dacab00
    sw	$v1,260($s1)
.L0dacb2d8:
    # Line 949
    la	$a1,__glCalcObjectLinear
    sd	$s1,24($sp)
    # Line 950
    b	.L0daca92c
    # Line 949
    sw	$a1,12004($s0)
.L0dacb2e8:
    # Line 1215
    la	$a2,__glTextureBlendA
    b	.L0dacab00
    sw	$a2,260($s1)
.L0dacb2f4:
    # Line 1224
    la	$at,__glTextureBlendI
    b	.L0dacab00
    sw	$at,260($s1)
.end __glGenericPickTextureProcs

# Function: __glGenericPickFogProcs
# Declared: Line 1353 (Source lines: 1354-1371)
# Address: 0x0dacb300 - 0x0dacb374 (Size: 116 bytes, Frame: 0)
.globl __glGenericPickFogProcs
.ent __glGenericPickFogProcs
__glGenericPickFogProcs:
    # Line 1354
    lw	$v0,1696($a0)
    lui	$v1,0x13
    addiu	$v1,$v1,-15000
    andi	$v0,$v0,0x20
    beqz	$v0,.L0dacb364
    nop
    lw	$a1,1812($a0)
    li	$a2,4354
    beq	$a1,$a2,.L0dacb35c
    # Line 1357
    li	$v1,9729
    lw	$v0,1492($a0)
    beq	$v0,$v1,.L0dacb350
    # Line 1362
    la	$a1,__glFogVertex
    sw	$a1,12544($a0)
.L0dacb338:
    # Line 1365
    la	$v0,__glFogColorSlow
    # Line 1364
    la	$a2,__glFogFragmentSlow
    # Line 1365
    sw	$v0,12540($a0)
    # Line 1364
    sw	$a2,12536($a0)
    # Line 1371
    jr	$ra
    nop
.L0dacb350:
    # Line 1360
    la	$v1,__glFogVertexLinear
    b	.L0dacb338
    sw	$v1,12544($a0)
.L0dacb35c:
    # Line 1357
    b	.L0dacb338
    sw	$zero,12544($a0)
.L0dacb364:
    # Line 1369
    sw	$zero,12540($a0)
    # Line 1368
    sw	$zero,12536($a0)
    # Line 1371
    jr	$ra
    # Line 1367
    sw	$zero,12544($a0)
.end __glGenericPickFogProcs

# Function: __glGenericPickBufferProcs
# Declared: Line 1373 (Source lines: 1374-1408)
# Address: 0x0dacb374 - 0x0dacb420 (Size: 172 bytes, Frame: 0)
.globl __glGenericPickBufferProcs
.ent __glGenericPickBufferProcs
__glGenericPickBufferProcs:
    # Line 1378
    lw	$a4,1788($a0)
    sb	$zero,30656($a0)
    addiu	$a3,$a4,-1028
    # Line 1374
    lui	$v0,0x13
    addiu	$v0,$v0,-15116
    # addu	at,t9,v0
    # Line 1378
    # lw $t9, -32664($gp) # &sub_0dbf0000
    sltiu	$v0,$a3,9
    sll	$a3,$a3,0x2
    lui	$t9,%hi(jtbl_0dbebc28)
    beqz	$v0,.L0dacb3bc
    addu	$a3,$a3,$t9
    lw	$v1,%lo(jtbl_0dbebc28)($a3)
    # Line 1403
    sll	$v0,$a4,0x3
    # Line 1378
    jr	$v1
    # Line 1403
    subu	$v0,$v0,$a4
.L0dacb3b4:
    # Line 1394
    lw	$a1,30664($a0)
    sw	$a1,11768($a0)
.L0dacb3bc:
    # Line 1408
    jr	$ra
    nop
.L0dacb3c4:
    # Line 1383
    lw	$a2,30660($a0)
    # Line 1408
    jr	$ra
    # Line 1383
    sw	$a2,11768($a0)
.L0dacb3d0:
    # Line 1386
    lbu	$v0,3106($a0)
    beqz	$v0,.L0dacb414
    # Line 1388
    li	$a1,1
    # Line 1387
    lw	$v1,30664($a0)
    # Line 1388
    sb	$a1,30656($a0)
    # Line 1408
    jr	$ra
    # Line 1387
    sw	$v1,11768($a0)
.L0dacb3ec:
    # Line 1403
    sll	$v0,$v0,0x3
    lw	$a2,31108($a0)
    subu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$a2,$a2,$v0
    lui	$v0,0x3
    ori	$v0,$v0,0x77bc
    subu	$a2,$a2,$v0
    # Line 1408
    jr	$ra
    # Line 1403
    sw	$a2,11768($a0)
.L0dacb414:
    # Line 1390
    lw	$v1,30660($a0)
    # Line 1408
    jr	$ra
    # Line 1390
    sw	$v1,11768($a0)
.end __glGenericPickBufferProcs

# Function: __glGenericPickPixelProcs
# Declared: Line 1410 (Source lines: 1411-1623)
# Address: 0x0dacb420 - 0x0dacbb34 (Size: 1812 bytes, Frame: 0)
.globl __glGenericPickPixelProcs
.ent __glGenericPickPixelProcs
__glGenericPickPixelProcs:
    # Line 1427
    lwc1	$f0,688($a0)
    # Line 1411
    lui	$v0,0x13
    addiu	$v0,$v0,-15288
    # addu	at,t9,v0
    # Line 1427
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    # Line 1417
    lw	$a5,1696($a0)
    # Line 1427
    c.eq.d	$f0,$f4
    # Line 1441
    lui	$a3,0xe00
    and	$a3,$a5,$a3
    # Line 1427
    bc1f	.L0dacb4f8
    # Line 1417
    move	$a4,$a5
    # Line 1427
    lwc1	$f1,692($a0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f2,696($a0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f3,700($a0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f0,704($a0)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f1,708($a0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f2,712($a0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0dacb4fc
    # Line 1435
    li	$a6,1
    # Line 1427
    lwc1	$f3,716($a0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1t	.L0dacbb20
.L0dacb4f8:
    # Line 1435
    li	$a6,1
.L0dacb4fc:
    sb	$a6,30649($a0)
.L0dacb500:
    # Line 1468
    li	$t0,1
    # Line 1441
    beqz	$a3,.L0dacba64
    # Line 1457
    la	$a7,dummyFilter
    # Line 1441
    lui	$v0,0x200
    beq	$a3,$v0,.L0dacb530
    lui	$v1,0x400
    beq	$a3,$v1,.L0dacb82c
    lui	$a1,0x600
    beq	$a3,$a1,.L0dacb82c
    # Line 1455
    addiu	$a3,$a0,880
    b	.L0dacb538
    sw	$a3,740($a0)
.L0dacb530:
    # Line 1448
    addiu	$a3,$a0,744
    sw	$a3,740($a0)
.L0dacb538:
    # Line 1462
    lw	$a2,48($a3)
    beqzl	$a2,.L0dacb874
    # Line 1464
    move	$a3,$a7
    # Line 1462
    lw	$v0,52($a3)
    beqzl	$v0,.L0dacb874
    # Line 1464
    move	$a3,$a7
.L0dacb550:
    # Line 1468
    lw	$v1,0($a3)
    beqz	$v1,.L0dacb988
    lui	$v0,0x3000
.L0dacb55c:
    # Line 1486
    lw	$a5,1148($a0)
    li	$a1,1028
    beq	$a5,$a1,.L0dacba70
    move	$a3,$a5
    li	$a2,1029
    beq	$a3,$a2,.L0dacba94
    li	$v0,1033
    beq	$a3,$v0,.L0dacb838
    li	$v1,1034
    beq	$a3,$v1,.L0dacb838
    li	$a1,1035
    beq	$a3,$a1,.L0dacb838
    li	$a2,1036
    beql	$a3,$a2,.L0dacb83c
    # Line 1500
    lw	$a2,31108($a0)
.L0dacb598:
    # Line 1506
    lbu	$a6,28220($a0)
    beqz	$a6,.L0dacb87c
    # Line 1508
    la	$v0,__glSlowDrawPixelsStore
    sw	$v0,12588($a0)
.L0dacb5a8:
    # Line 1515
    lbu	$a3,736($a0)
    # Line 1516
    beqzl	$a3,.L0dacb894
    lbu	$a2,3104($a0)
    # Line 1518
    sb	$zero,30620($a0)
.L0dacb5b8:
    # Line 1517
    sb	$zero,30612($a0)
    # Line 1519
    li	$v1,1
    sb	$v1,30529($a0)
.L0dacb5c4:
    # Line 1523
    lbu	$a1,737($a0)
    beqz	$a1,.L0dacb8bc
    # Line 1524
    li	$a2,1
.L0dacb5d0:
    sb	$a2,30531($a0)
.L0dacb5d4:
    # Line 1528
    lwc1	$f8,3284($a0)
    lwc1	$f0,632($a0)
    c.eq.s	$f0,$f8
    nop
    bc1f	.L0dacb604
    # Line 1529
    li	$v0,1
    # Line 1528
    lwc1	$f1,652($a0)
    mtc1	$zero,$f2
    c.eq.s	$f1,$f2
    nop
    bc1t	.L0dacb868
    # Line 1529
    li	$v0,1
.L0dacb604:
    sb	$v0,30530($a0)
.L0dacb608:
    # Line 1533
    beqz	$a3,.L0dacb8dc
.L0dacb60c:
    # Line 1536
    li	$a5,1
.L0dacb610:
    # Line 1537
    sb	$zero,30592($a0)
    # Line 1536
    sb	$a5,30528($a0)
.L0dacb618:
    # Line 1539
    beqz	$a5,.L0dacba7c
    lwc1	$f9,30796($a0)
    # Line 1546
    lwc1	$f5,644($a0)
    # Line 1545
    lwc1	$f4,640($a0)
    # Line 1547
    lwc1	$f0,648($a0)
    lwc1	$f6,628($a0)
    # Line 1544
    lwc1	$f7,636($a0)
    # Line 1547
    beqz	$a3,.L0dacba10
    add.s	$f6,$f6,$f0
    # Line 1552
    lw	$a5,1024($a0)
    addiu	$a7,$a5,-1
    mtc1	$a7,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f7
    lwc1	$f8,3280($a0)
    add.s	$f1,$f1,$f8
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    nop
    bltz	$a3,.L0dacbaa0
    # Line 1553
    slt	$v1,$a3,$a5
    bnezl	$v1,.L0dacb680
    # Line 1559
    lw	$a5,1036($a0)
    # Line 1554
    move	$a3,$a7
.L0dacb67c:
    # Line 1559
    lw	$a5,1036($a0)
.L0dacb680:
    addiu	$a7,$a5,-1
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f8
    trunc.w.s	$f2,$f2
    # Line 1555
    lw	$a1,1032($a0)
    sll	$a2,$a3,0x2
    # Line 1559
    mfc1	$a3,$f2
    # Line 1555
    addu	$a1,$a1,$a2
    # Line 1559
    bltz	$a3,.L0dacbaa8
    # Line 1555
    lwc1	$f7,0($a1)
    # Line 1560
    slt	$v0,$a3,$a5
    bnezl	$v0,.L0dacb6c8
    # Line 1566
    lw	$a5,1048($a0)
    # Line 1561
    move	$a3,$a7
.L0dacb6c4:
    # Line 1566
    lw	$a5,1048($a0)
.L0dacb6c8:
    addiu	$a7,$a5,-1
    mtc1	$a7,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    add.s	$f3,$f3,$f8
    trunc.w.s	$f3,$f3
    # Line 1562
    lw	$v1,1044($a0)
    sll	$a1,$a3,0x2
    # Line 1566
    mfc1	$a3,$f3
    # Line 1562
    addu	$v1,$v1,$a1
    # Line 1566
    bltz	$a3,.L0dacbab0
    # Line 1562
    lwc1	$f4,0($v1)
    # Line 1567
    slt	$a2,$a3,$a5
    bnezl	$a2,.L0dacb710
    # Line 1573
    lw	$a5,1060($a0)
    # Line 1568
    move	$a3,$a7
.L0dacb70c:
    # Line 1573
    lw	$a5,1060($a0)
.L0dacb710:
    addiu	$a7,$a5,-1
    mtc1	$a7,$f5
    nop
    cvt.s.w	$f5,$f5
    mul.s	$f5,$f5,$f6
    add.s	$f5,$f5,$f8
    trunc.w.s	$f5,$f5
    # Line 1569
    lw	$v0,1056($a0)
    sll	$v1,$a3,0x2
    # Line 1573
    mfc1	$a3,$f5
    # Line 1569
    addu	$v0,$v0,$v1
    # Line 1573
    bltz	$a3,.L0dacbab8
    # Line 1569
    lwc1	$f5,0($v0)
    # Line 1574
    slt	$a1,$a3,$a5
    bnezl	$a1,.L0dacb758
    # Line 1576
    lw	$a2,1068($a0)
    # Line 1575
    move	$a3,$a7
.L0dacb754:
    # Line 1576
    lw	$a2,1068($a0)
.L0dacb758:
    sll	$v0,$a3,0x2
    addu	$a2,$a2,$v0
    lwc1	$f6,0($a2)
.L0dacb764:
    # Line 1590
    mul.s	$f3,$f9,$f6
.L0dacb768:
    # Line 1588
    lwc1	$f1,30760($a0)
    # Line 1589
    lwc1	$f2,30764($a0)
    # Line 1588
    mul.s	$f1,$f1,$f4
    # Line 1587
    lwc1	$f0,30756($a0)
    # Line 1589
    mul.s	$f2,$f2,$f5
    # Line 1587
    mul.s	$f0,$f0,$f7
    # Line 1590
    swc1	$f3,30548($a0)
    # Line 1589
    swc1	$f2,30544($a0)
    # Line 1588
    swc1	$f1,30540($a0)
    # Line 1587
    swc1	$f0,30536($a0)
.L0dacb790:
    # Line 1598
    andi	$v1,$a4,0x8011
    bnezl	$v1,.L0dacb7e0
    # Line 1608
    sb	$zero,30532($a0)
    # Line 1598
    lw	$a3,1788($a0)
    beqz	$a3,.L0dacb7dc
    li	$a1,1032
    beq	$a3,$a1,.L0dacb7dc
    andi	$a2,$a4,0x8
    beqz	$a2,.L0dacb7dc
    andi	$v0,$a4,0x2
    bnezl	$v0,.L0dacb7e0
    # Line 1608
    sb	$zero,30532($a0)
    # Line 1598
    bnezl	$a6,.L0dacb7e0
    # Line 1608
    sb	$zero,30532($a0)
    # Line 1598
    andi	$v1,$a4,0x20
    bnezl	$v1,.L0dacb7e0
    # Line 1608
    sb	$zero,30532($a0)
    # Line 1598
    beqz	$t0,.L0dacbb2c
    # Line 1610
    li	$a1,1
.L0dacb7dc:
    # Line 1608
    sb	$zero,30532($a0)
.L0dacb7e0:
    # Line 1619
    la	$a2,__glSlowPickGetConvolutionFilter
    # Line 1621
    la	$v1,__glSlowPickCopyConvolutionFilter1D
    # Line 1620
    la	$v0,__glSlowPickGetSeparableFilter
    # Line 1619
    sw	$a2,12600($a0)
    # Line 1614
    la	$a2,__glSlowPickReadPixels
    # Line 1620
    sw	$v0,12604($a0)
    # Line 1615
    la	$v0,__glSlowPickCopyPixels
    # Line 1622
    la	$a1,__glSlowPickCopyConvolutionFilter2D
    # Line 1621
    sw	$v1,12608($a0)
    # Line 1617
    la	$v1,__glSlowPickConvolutionFilter
    # Line 1622
    sw	$a1,12612($a0)
    # Line 1618
    la	$a1,__glSlowPickSeparableFilter
    # Line 1617
    sw	$v1,12592($a0)
    # Line 1615
    sw	$v0,12572($a0)
    # Line 1618
    sw	$a1,12596($a0)
    # Line 1613
    la	$a1,__glSlowPickDrawPixels
    # Line 1614
    sw	$a2,12576($a0)
    # Line 1623
    jr	$ra
    # Line 1613
    sw	$a1,12568($a0)
.L0dacb82c:
    # Line 1452
    addiu	$a3,$a0,812
    # Line 1453
    b	.L0dacb538
    # Line 1452
    sw	$a3,740($a0)
.L0dacb838:
    # Line 1500
    lw	$a2,31108($a0)
.L0dacb83c:
    sll	$v0,$a5,0x3
    subu	$v0,$v0,$a5
    sll	$v0,$v0,0x3
    subu	$v0,$v0,$a5
    sll	$v0,$v0,0x2
    addu	$a2,$a2,$v0
    lui	$v0,0x3
    ori	$v0,$v0,0x77bc
    subu	$a2,$a2,$v0
    b	.L0dacb598
    sw	$a2,11772($a0)
.L0dacb868:
    b	.L0dacb608
    # Line 1531
    sb	$zero,30530($a0)
    # Line 1464
    move	$a3,$a7
.L0dacb874:
    b	.L0dacb550
    sw	$a7,740($a0)
.L0dacb87c:
    # Line 1506
    andi	$v1,$a4,0x20
    bnezl	$v1,.L0dacb5a8
    # Line 1508
    sw	$v0,12588($a0)
    # Line 1510
    lw	$a1,12616($a0)
    b	.L0dacb5a8
    sw	$a1,12588($a0)
.L0dacb894:
    # Line 1516
    bnezl	$a2,.L0dacb5b8
    # Line 1518
    sb	$zero,30620($a0)
    # Line 1516
    lw	$v0,728($a0)
    bnezl	$v0,.L0dacb5b8
    # Line 1518
    sb	$zero,30620($a0)
    # Line 1516
    lw	$v1,732($a0)
    bnezl	$v1,.L0dacb5b8
    # Line 1518
    sb	$zero,30620($a0)
    b	.L0dacb5c4
    # Line 1521
    sb	$zero,30529($a0)
.L0dacb8bc:
    # Line 1523
    lw	$a1,728($a0)
    bnez	$a1,.L0dacb5d0
    # Line 1524
    li	$a2,1
    # Line 1523
    lw	$a2,732($a0)
    bnez	$a2,.L0dacb5d0
    # Line 1524
    li	$a2,1
    b	.L0dacb5d4
    # Line 1526
    sb	$zero,30531($a0)
.L0dacb8dc:
    # Line 1533
    lwc1	$f3,636($a0)
    mtc1	$zero,$f10
    c.eq.s	$f3,$f10
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f0,640($a0)
    c.eq.s	$f0,$f10
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f1,644($a0)
    c.eq.s	$f1,$f10
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f2,648($a0)
    c.eq.s	$f2,$f10
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f3,616($a0)
    c.eq.s	$f3,$f8
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f0,620($a0)
    c.eq.s	$f0,$f8
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f1,624($a0)
    c.eq.s	$f1,$f8
    nop
    bc1f	.L0dacb610
    # Line 1536
    li	$a5,1
    # Line 1533
    lwc1	$f2,628($a0)
    c.eq.s	$f2,$f8
    nop
    bc1f	.L0dacb60c
    # Line 1539
    move	$a5,$zero
    b	.L0dacb618
    sb	$zero,30528($a0)
.L0dacb988:
    # Line 1468
    and	$v0,$a5,$v0
    beqzl	$v0,.L0dacb9b0
    lw	$a2,30640($a0)
    lw	$v1,1160($a0)
    bnez	$v1,.L0dacb55c
    nop
    lbu	$a1,1276($a0)
    bnez	$a1,.L0dacb55c
    nop
    lw	$a2,30640($a0)
.L0dacb9b0:
    li	$v0,0x8421
    bne	$a2,$v0,.L0dacb55c
    li	$v1,1
    beq	$a6,$v1,.L0dacb55c
    nop
    lw	$a3,1700($a0)
    andi	$a1,$a3,0x1
    beqz	$a1,.L0dacb9e0
    andi	$v0,$a3,0x2
    lw	$a2,4904($a0)
    bnez	$a2,.L0dacb55c
    andi	$v0,$a3,0x2
.L0dacb9e0:
    beqz	$v0,.L0dacb9f4
    andi	$a1,$a3,0x4
    lw	$v1,5064($a0)
    bnez	$v1,.L0dacb55c
    andi	$a1,$a3,0x4
.L0dacb9f4:
    beqz	$a1,.L0dacba08
    nop
    lw	$a2,5224($a0)
    bnez	$a2,.L0dacb55c
    nop
.L0dacba08:
    b	.L0dacb55c
    move	$t0,$zero
.L0dacba10:
    # Line 1576
    c.lt.s	$f8,$f7
    nop
    bc1f	.L0dacbac0
    # Line 1578
    mtc1	$zero,$f10
    mov.s	$f7,$f8
.L0dacba24:
    # Line 1579
    c.lt.s	$f8,$f4
.L0dacba28:
    nop
    bc1f	.L0dacbad8
    # Line 1580
    mtc1	$zero,$f10
    mov.s	$f4,$f8
.L0dacba38:
    # Line 1581
    c.lt.s	$f8,$f5
.L0dacba3c:
    nop
    bc1f	.L0dacbaf0
    # Line 1582
    mtc1	$zero,$f10
    mov.s	$f5,$f8
.L0dacba4c:
    # Line 1583
    c.lt.s	$f8,$f6
.L0dacba50:
    nop
    bc1f	.L0dacbb08
    # Line 1584
    mtc1	$zero,$f10
    b	.L0dacb764
    mov.s	$f6,$f8
.L0dacba64:
    # Line 1445
    la	$a3,dummyFilter
    # Line 1446
    b	.L0dacb538
    # Line 1445
    sw	$a3,740($a0)
.L0dacba70:
    # Line 1488
    lw	$v0,30660($a0)
    # Line 1489
    b	.L0dacb598
    # Line 1488
    sw	$v0,11772($a0)
.L0dacba7c:
    # Line 1592
    mtc1	$zero,$f3
    # Line 1595
    swc1	$f9,30548($a0)
    # Line 1594
    swc1	$f3,30544($a0)
    # Line 1593
    swc1	$f3,30540($a0)
    b	.L0dacb790
    # Line 1592
    swc1	$f3,30536($a0)
.L0dacba94:
    # Line 1491
    lw	$v1,30664($a0)
    # Line 1492
    b	.L0dacb598
    # Line 1491
    sw	$v1,11772($a0)
.L0dacbaa0:
    # Line 1553
    b	.L0dacb67c
    move	$a3,$zero
.L0dacbaa8:
    # Line 1560
    b	.L0dacb6c4
    move	$a3,$zero
.L0dacbab0:
    # Line 1567
    b	.L0dacb70c
    move	$a3,$zero
.L0dacbab8:
    # Line 1574
    b	.L0dacb754
    move	$a3,$zero
.L0dacbac0:
    # Line 1578
    c.lt.s	$f7,$f10
    nop
    bc1fl	.L0dacba28
    # Line 1579
    c.lt.s	$f8,$f4
    b	.L0dacba24
    mov.s	$f7,$f10
.L0dacbad8:
    # Line 1580
    c.lt.s	$f4,$f10
    nop
    bc1fl	.L0dacba3c
    # Line 1581
    c.lt.s	$f8,$f5
    b	.L0dacba38
    mov.s	$f4,$f10
.L0dacbaf0:
    # Line 1582
    c.lt.s	$f5,$f10
    nop
    bc1fl	.L0dacba50
    # Line 1583
    c.lt.s	$f8,$f6
    b	.L0dacba4c
    mov.s	$f5,$f10
.L0dacbb08:
    # Line 1584
    c.lt.s	$f6,$f10
    nop
    bc1fl	.L0dacb768
    # Line 1590
    mul.s	$f3,$f9,$f6
    b	.L0dacb764
    # Line 1585
    mov.s	$f6,$f10
.L0dacbb20:
    # Line 1437
    move	$a6,$zero
    b	.L0dacb500
    sb	$zero,30649($a0)
.L0dacbb2c:
    b	.L0dacb7e0
    # Line 1610
    sb	$a1,30532($a0)
.end __glGenericPickPixelProcs

# Function: __glGenericPickTransformProcs
# Declared: Line 1625 (Source lines: 1626-1649)
# Address: 0x0dacbb34 - 0x0dacbbdc (Size: 168 bytes, Frame: 0)
.globl __glGenericPickTransformProcs
.ent __glGenericPickTransformProcs
__glGenericPickTransformProcs:
    # Line 1627
    li	$v0,5888
    lw	$a3,1648($a0)
    # Line 1626
    lui	$v1,0x13
    addiu	$v1,$v1,-17100
    # Line 1627
    beq	$a3,$v0,.L0dacbb90
    # Line 1626
    nop
    # Line 1634
    la	$a2,__glPushProjectionMatrix
    # Line 1627
    li	$a1,5889
    beq	$a3,$a1,.L0dacbbac
    # Line 1635
    la	$v0,__glPopProjectionMatrix
    # Line 1627
    li	$a2,5890
    beq	$a3,$a2,.L0dacbbc0
    # Line 1644
    la	$v1,__glPushColorMatrix
    # Line 1627
    li	$v0,6144
    beq	$a3,$v0,.L0dacbb7c
    # Line 1645
    la	$a1,__glPopColorMatrix
    # Line 1649
    jr	$ra
    nop
.L0dacbb7c:
    # Line 1645
    sw	$a1,11900($a0)
    # Line 1646
    la	$a2,__glLoadIdentityColorMatrix
    # Line 1644
    sw	$v1,11896($a0)
    # Line 1649
    jr	$ra
    # Line 1646
    sw	$a2,11904($a0)
.L0dacbb90:
    # Line 1631
    la	$a1,__glLoadIdentityModelViewMatrix
    # Line 1630
    la	$v1,__glPopModelViewMatrix
    # Line 1629
    la	$v0,__glPushModelViewMatrix
    # Line 1631
    sw	$a1,11904($a0)
    # Line 1630
    sw	$v1,11900($a0)
    # Line 1649
    jr	$ra
    # Line 1629
    sw	$v0,11896($a0)
.L0dacbbac:
    # Line 1635
    sw	$v0,11900($a0)
    # Line 1636
    la	$v1,__glLoadIdentityProjectionMatrix
    # Line 1634
    sw	$a2,11896($a0)
    # Line 1649
    jr	$ra
    # Line 1636
    sw	$v1,11904($a0)
.L0dacbbc0:
    # Line 1641
    la	$v0,__glLoadIdentityTextureMatrix
    # Line 1640
    la	$a2,__glPopTextureMatrix
    # Line 1641
    sw	$v0,11904($a0)
    # Line 1639
    la	$a1,__glPushTextureMatrix
    # Line 1640
    sw	$a2,11900($a0)
    # Line 1649
    jr	$ra
    # Line 1639
    sw	$a1,11896($a0)
.end __glGenericPickTransformProcs

# Function: __glGenericPickDepthProcs
# Declared: Line 1654 (Source lines: 1655-1721)
# Address: 0x0dacbbdc - 0x0dacbcfc (Size: 288 bytes, Frame: 48)
.globl __glGenericPickDepthProcs
.ent __glGenericPickDepthProcs
__glGenericPickDepthProcs:
    # Line 1657
    lw	$v0,31332($a0)
    # Line 1656
    lw	$a2,31312($a0)
    # Line 1655
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # sd	gp,8(sp)
    lui	$v1,0x13
    addiu	$v1,$v1,-17268
    # Line 1663
    lbu	$at,1540($a0)
    sd	$s0,16($sp)
    lw	$s0,1536($a0)
    # Line 1655
    # addu	gp,t9,v1
    # Line 1663
    beqz	$at,.L0dacbcec
    addiu	$s0,$s0,-512
.L0dacbc14:
    # Line 1673
    lui	$a1,0x8000
    sltu	$a1,$a2,$a1
    beqz	$a1,.L0dacbc40
    sb	$zero,31336($s1)
    lui	$a3,0x100
    bnel	$v0,$a3,.L0dacbc5c
    # Line 1682
    lbu	$a3,3109($s1)
    # Line 1677
    li	$at,1
    # Line 1676
    addiu	$s0,$s0,16
    # Line 1677
    b	.L0dacbc58
    sb	$at,31336($s1)
.L0dacbc40:
    lui	$v1,0xff00
    bnel	$v0,$v1,.L0dacbc5c
    # Line 1682
    lbu	$a3,3109($s1)
    li	$a1,1
    # Line 1681
    addiu	$s0,$s0,16
    # Line 1682
    sb	$a1,31336($s1)
.L0dacbc58:
    lbu	$a3,3109($s1)
.L0dacbc5c:
    beqz	$a3,.L0dacbc7c
    # Line 1688
    move	$a0,$s1
    lw	$t9,31344($s1)
    move	$a2,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$s1,31232
    ld	$ra,24($sp)
.L0dacbc7c:
    # Line 1691
    la	$a0,__glCDTPixel
    sll	$a2,$s0,0x2
    addu	$a0,$a2,$a0
    lw	$a0,0($a0)
    # Line 1693
    la	$v1,__glSDepthTestPixel
    # Line 1691
    sw	$a0,12032($s1)
    # Line 1693
    addu	$v1,$a2,$v1
    lw	$v1,0($v1)
    # Line 1694
    la	$at,__glPDepthTestPixel
    # Line 1693
    sw	$v1,12244($s1)
    # Line 1694
    addu	$at,$a2,$at
    lw	$at,0($at)
    lw	$a0,12412($s1)
    sw	$at,12408($s1)
    beqz	$a0,.L0dacbcd8
    ld	$s1,0($sp)
    la	$v0,__glDTLine
    addu	$v0,$a2,$v0
    lw	$v0,0($v0)
    # Line 1716
    la	$v1,__glDepthTestLine_asm
    # Line 1694
    beqz	$v0,.L0dacbcf4
    ld	$s1,0($sp)
    # Line 1698
    sw	$v0,0($a0)
.L0dacbcd8:
    # ld	gp,8(sp)
    # Line 1721
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dacbcec:
    b	.L0dacbc14
    # Line 1666
    addiu	$s0,$s0,8
.L0dacbcf4:
    b	.L0dacbcd8
    # Line 1716
    sw	$v1,0($a0)
.end __glGenericPickDepthProcs

# Function: __glGenericValidate
# Declared: Line 1725 (Source lines: 1726-1728)
# Address: 0x0dacbcfc - 0x0dacbd30 (Size: 52 bytes, Frame: 32)
.globl __glGenericValidate
.ent __glGenericValidate
__glGenericValidate:
    # Line 1726
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x13
    addiu	$at,$at,-17556
    # addu	gp,t9,at
    # Line 1727
    lw	$t9,11876($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1728
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGenericValidate

# Function: __glGenericPickAllProcs
# Declared: Line 1730 (Source lines: 1731-2031)
# Address: 0x0dacbd30 - 0x0dacc398 (Size: 1640 bytes, Frame: 192)
.globl __glGenericPickAllProcs
.ent __glGenericPickAllProcs
__glGenericPickAllProcs:
    # Line 1731
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 1733
    move	$s1,$zero
    sd	$s0,0($sp)
    # Line 1731
    move	$s0,$a0
    sd	$s5,8($sp)
    # Line 1732
    lw	$s5,1696($a0)
    sd	$gp,24($sp)
    # Line 1733
    lw	$a2,11764($a0)
    # Line 1731
    lui	$at,0x13
    addiu	$at,$at,-17608
    # Line 1733
    andi	$a3,$a2,0x21
    beqz	$a3,.L0dacbdac
    # Line 1731
    addu	$gp,$t9,$at
    # Line 1742
    lw	$t9,11804($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lbu	$a4,3104($s0)
    beqz	$a4,.L0dacbd98
    ld	$ra,32($sp)
    lw	$v0,28216($s0)
    beqz	$v0,.L0dacbd9c
    # Line 1743
    move	$a0,$zero
    b	.L0dacbd9c
    li	$a0,1
.L0dacbd98:
    move	$a0,$zero
.L0dacbd9c:
    lw	$a2,11764($s0)
    sb	$a0,28220($s0)
    b	.L0dacbdb0
    andi	$a3,$a2,0x21
.L0dacbdac:
    lbu	$a4,3104($s0)
.L0dacbdb0:
    beqz	$a4,.L0dacc244
    andi	$a0,$s5,0x2
    # Line 1749
    lbu	$v1,28220($s0)
    beqz	$v1,.L0dacbdc8
    li	$s1,1
    # Line 1751
    li	$s1,9
.L0dacbdc8:
    beqz	$a0,.L0dacbdd8
    # Line 1754
    andi	$a1,$s5,0x1
    ori	$s1,$s1,0x100
    andi	$a1,$s5,0x1
.L0dacbdd8:
    beqzl	$a1,.L0dacbde8
    # Line 1759
    lbu	$at,1784($s0)
    # Line 1757
    ori	$s1,$s1,0x200
    # Line 1759
    lbu	$at,1784($s0)
.L0dacbde8:
    beqzl	$at,.L0dacbe18
    # Line 1763
    ori	$s1,$s1,0x800
    # Line 1759
    lbu	$v0,1785($s0)
    beqzl	$v0,.L0dacbe18
    # Line 1763
    ori	$s1,$s1,0x800
    # Line 1759
    lbu	$v1,1786($s0)
    beqzl	$v1,.L0dacbe18
    # Line 1763
    ori	$s1,$s1,0x800
    # Line 1759
    lbu	$a1,1787($s0)
    bnezl	$a1,.L0dacbe1c
    # Line 1770
    lw	$t2,1304($s0)
    # Line 1763
    ori	$s1,$s1,0x800
.L0dacbe18:
    # Line 1770
    lw	$t2,1304($s0)
.L0dacbe1c:
    li	$t3,7425
    beq	$t3,$t2,.L0dacc26c
    # Line 1774
    andi	$at,$s5,0x10
.L0dacbe28:
    beqz	$at,.L0dacbe84
    # Line 1779
    andi	$at,$s5,0x1000
    # Line 1774
    lbu	$v0,3109($s0)
    beqz	$v0,.L0dacbe80
    # Line 1778
    lui	$v1,0x100
    and	$v1,$s5,$v1
    beqz	$v1,.L0dacbe80
    ori	$s1,$s1,0x4004
    # Line 1779
    lwc1	$f0,476($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0dacbe7c
    # Line 1782
    lui	$a1,0x4
    # Line 1779
    lwc1	$f1,480($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0dacbe80
    # Line 1782
    lui	$a1,0x4
.L0dacbe7c:
    or	$s1,$s1,$a1
.L0dacbe80:
    # Line 1779
    andi	$at,$s5,0x1000
.L0dacbe84:
    beqz	$at,.L0dacbe90
    # Line 1786
    lui	$v0,0x1
    or	$s1,$s1,$v0
.L0dacbe90:
    andi	$v1,$s5,0x8
    beqz	$v1,.L0dacbea4
    # Line 1789
    andi	$a1,$s5,0x2000
    ori	$s1,$s1,0x40
    andi	$a1,$s5,0x2000
.L0dacbea4:
    beqz	$a1,.L0dacbeb4
    # Line 1792
    andi	$at,$s5,0x100
    ori	$s1,$s1,0x10
    andi	$at,$s5,0x100
.L0dacbeb4:
    beqz	$at,.L0dacbec4
    # Line 1795
    andi	$v0,$s5,0x8000
    ori	$s1,$s1,0x8000
    andi	$v0,$s5,0x8000
.L0dacbec4:
    beqz	$v0,.L0dacbee0
    # Line 1799
    andi	$t0,$s5,0x40
    # Line 1795
    lbu	$v1,3110($s0)
    beqz	$v1,.L0dacbee0
    # Line 1799
    andi	$t0,$s5,0x40
    ori	$s1,$s1,0x20
    andi	$t0,$s5,0x40
.L0dacbee0:
    beqz	$t0,.L0dacbefc
    # Line 1803
    andi	$t1,$s5,0x20
    # Line 1799
    lbu	$a1,1325($s0)
    beqz	$a1,.L0dacbefc
    # Line 1803
    andi	$t1,$s5,0x20
    ori	$s1,$s1,0x400
    andi	$t1,$s5,0x20
.L0dacbefc:
    beqz	$t1,.L0dacbf10
    andi	$at,$s1,0x8
    beqzl	$at,.L0dacc298
    lw	$a1,1812($s0)
    # Line 1820
    ori	$s1,$s1,0x1000
.L0dacbf10:
    # Line 1826
    lw	$a6,1736($s0)
    # Line 1825
    lw	$a5,1732($s0)
    # Line 1826
    beqz	$a0,.L0dacbf30
    # Line 1824
    lw	$a4,1728($s0)
    # Line 1826
    lw	$v0,1700($s0)
    andi	$v0,$v0,0x800
    beqz	$v0,.L0dacc2ac
    # Line 1827
    li	$a0,0x8001
.L0dacbf30:
    # Line 1840
    beqz	$a3,.L0dacc118
    sw	$s1,30440($s0)
    # Line 1850
    lw	$a0,1876($s0)
    # Line 1847
    move	$a7,$zero
    # Line 1850
    li	$a2,9216
    beq	$a2,$a0,.L0dacc31c
    # Line 1849
    li	$a3,4
    # Line 1850
    li	$v1,9218
    beq	$a0,$v1,.L0dacc32c
    nop
.L0dacbf58:
    # Line 1861
    lw	$a0,2000($s0)
    beq	$a2,$a0,.L0dacc324
    # Line 1860
    ori	$a3,$a3,0x4
    # Line 1861
    li	$a1,9218
    beq	$a0,$a1,.L0dacc334
    nop
.L0dacbf70:
    # Line 1868
    beqz	$t0,.L0dacbf88
    nop
    # Line 1872
    lbu	$a7,1324($s0)
    beqz	$a7,.L0dacc33c
    li	$a7,8
    # Line 1874
    li	$a7,24
.L0dacbf88:
    # Line 1887
    beqz	$t1,.L0dacbf9c
    # Line 1891
    andi	$at,$s1,0x2000
    beqz	$at,.L0dacbf9c
    ori	$a3,$a3,0x10
    # Line 1895
    ori	$a3,$a3,0x40
.L0dacbf9c:
    lw	$v0,1708($s0)
    beqzl	$v0,.L0dacbfb0
    # Line 1903
    sw	$a3,28084($s0)
    # Line 1899
    ori	$a3,$a3,0x10
    # Line 1903
    sw	$a3,28084($s0)
.L0dacbfb0:
    # Line 1904
    or	$a0,$a3,$a7
    # Line 1905
    move	$a2,$a0
    sw	$a0,28092($s0)
    # Line 1904
    move	$a4,$a0
    # Line 1906
    beqz	$t0,.L0dacc27c
    # Line 1904
    sw	$a0,28088($s0)
    # Line 1909
    lbu	$v1,1325($s0)
.L0dacbfcc:
    ori	$a3,$a0,0x1
    move	$a4,$a3
    beqz	$v1,.L0dacc224
    sw	$a3,28088($s0)
    # Line 1911
    ori	$a2,$a0,0x2
    # Line 1910
    beq	$t3,$t2,.L0dacc234
    # Line 1911
    sw	$a2,28092($s0)
    sd	$ra,32($sp)
.L0dacbfec:
    # Line 1923
    sw	$zero,28096($s0)
.L0dacbff0:
    # Line 1926
    lw	$a1,30660($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
    lbu	$a1,3106($s0)
    beqzl	$a1,.L0dacc020
    # Line 1935
    lw	$at,3180($s0)
    # Line 1928
    lw	$a1,30664($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
    # Line 1935
    lw	$at,3180($s0)
.L0dacc020:
    blez	$at,.L0dacc058
    move	$s5,$zero
    move	$s1,$zero
    # Line 1936
    lw	$a1,31108($s0)
.L0dacc030:
    addu	$a1,$a1,$s1
    lw	$t9,160($a1)
    # Line 1935
    addiu	$s5,$s5,1
    # Line 1936
    move	$a0,$s0
    jalr	$t9
    # Line 1935
    addiu	$s1,$s1,220
    lw	$at,3180($s0)
    slt	$at,$s5,$at
    bnezl	$at,.L0dacc030
    # Line 1936
    lw	$a1,31108($s0)
.L0dacc058:
    # Line 1935
    lbu	$v0,3110($s0)
    beqzl	$v0,.L0dacc078
    # Line 1944
    lw	$t9,11844($s0)
    # Line 1941
    lw	$t9,31200($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,31112
    # Line 1944
    lw	$t9,11844($s0)
.L0dacc078:
    jalr	$t9
    move	$a0,$s0
    # Line 1952
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1954
    lw	$t9,11812($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1956
    # lw $t9, -28316($gp) # &__glValidateLighting
    jal	__glValidateLighting
    move	$a0,$s0
    # Line 1962
    lw	$t9,11800($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1964
    lw	$t9,11796($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1965
    lw	$t9,11808($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1967
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1968
    lw	$t9,11836($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1973
    lw	$t9,11828($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$v1,11760($s0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dacc104
    # Line 1976
    nop	# was lw $t9, -29712($gp) # &__glValidateAlphaTest
    jal	__glValidateAlphaTest
    move	$a0,$s0
.L0dacc104:
    # Line 1979
    lw	$t9,11924($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    lw	$a2,11764($s0)
.L0dacc118:
    andi	$a1,$a2,0x40
    beqz	$a1,.L0dacc140
    # Line 1990
    andi	$at,$a2,0x25
    lw	$t9,12664($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11764($s0)
    ld	$ra,32($sp)
    andi	$at,$a2,0x25
.L0dacc140:
    beqz	$at,.L0dacc17c
    # Line 2004
    andi	$v0,$a2,0x29
    # Line 2001
    lw	$t9,11856($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 2003
    lw	$t9,11852($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2004
    lw	$t9,11824($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11764($s0)
    ld	$ra,32($sp)
    andi	$v0,$a2,0x29
.L0dacc17c:
    beqz	$v0,.L0dacc1a0
    # Line 2009
    andi	$v1,$a2,0x23
    lw	$t9,11816($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11764($s0)
    ld	$ra,32($sp)
    andi	$v1,$a2,0x23
.L0dacc1a0:
    beqz	$v1,.L0dacc1c4
    # Line 2014
    andi	$a1,$a2,0x31
    lw	$t9,11820($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11764($s0)
    ld	$ra,32($sp)
    andi	$a1,$a2,0x31
.L0dacc1c4:
    beqz	$a1,.L0dacc1e8
    # Line 2019
    andi	$at,$a2,0x80
    lw	$t9,11832($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11764($s0)
    ld	$ra,32($sp)
    andi	$at,$a2,0x80
.L0dacc1e8:
    beqzl	$at,.L0dacc208
    ld	$gp,24($sp)
    # Line 2026
    lw	$t9,11872($s0)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$gp,24($sp)
.L0dacc208:
    # Line 2030
    sw	$zero,11764($s0)
    # Line 2029
    sw	$zero,11760($s0)
    # Line 2031
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dacc224:
    # Line 1913
    move	$a2,$a3
    sw	$a3,28092($s0)
.L0dacc22c:
    # Line 1910
    bnel	$t3,$t2,.L0dacbfec
    sd	$ra,32($sp)
.L0dacc234:
    sd	$ra,32($sp)
    # Line 1918
    or	$v0,$a4,$a2
    b	.L0dacbff0
    sw	$v0,28096($s0)
.L0dacc244:
    # Line 1763
    andi	$v1,$s5,0x4
    beqzl	$v1,.L0dacc258
    # Line 1767
    lw	$a1,1780($s0)
    li	$s1,128
    lw	$a1,1780($s0)
.L0dacc258:
    lw	$at,30740($s0)
    beql	$a1,$at,.L0dacbe1c
    # Line 1770
    lw	$t2,1304($s0)
    b	.L0dacbe18
    ori	$s1,$s1,0x800
.L0dacc26c:
    # Line 1774
    lui	$v0,0x2
    ori	$v0,$v0,0x2
    b	.L0dacbe28
    or	$s1,$s1,$v0
.L0dacc27c:
    # Line 1906
    lui	$v1,0x2
    ori	$v1,$v1,0x2000
    and	$v1,$s1,$v1
    beqz	$v1,.L0dacc22c
    nop
    b	.L0dacbfcc
    # Line 1909
    lbu	$v1,1325($s0)
.L0dacc298:
    # Line 1803
    li	$at,4354
    beql	$a1,$at,.L0dacbf10
    # Line 1820
    ori	$s1,$s1,0x1000
    # Line 1817
    b	.L0dacbf10
    ori	$s1,$s1,0x2002
.L0dacc2ac:
    # Line 1827
    beq	$a0,$a4,.L0dacc310
    li	$a7,0x8002
    beq	$a7,$a4,.L0dacc310
    li	$t8,0x8003
    beq	$t8,$a4,.L0dacc310
    li	$t9,0x8004
    beq	$t9,$a4,.L0dacc314
    # Line 1837
    lui	$v1,0x8
    # Line 1827
    beq	$a0,$a5,.L0dacc314
    # Line 1837
    lui	$v1,0x8
    # Line 1827
    beq	$a7,$a5,.L0dacc314
    # Line 1837
    lui	$v1,0x8
    # Line 1827
    beq	$t8,$a5,.L0dacc314
    # Line 1837
    lui	$v1,0x8
    # Line 1827
    beq	$t9,$a5,.L0dacc310
    li	$v0,0x8007
    beq	$a6,$v0,.L0dacc310
    li	$v1,0x8008
    beq	$a6,$v1,.L0dacc310
    li	$a1,0x800a
    beq	$a6,$a1,.L0dacc310
    li	$at,0x800b
    beq	$a6,$at,.L0dacc310
    li	$v0,3057
    bne	$a6,$v0,.L0dacbf30
.L0dacc310:
    # Line 1837
    lui	$v1,0x8
.L0dacc314:
    b	.L0dacbf30
    or	$s1,$s1,$v1
.L0dacc31c:
    # Line 1853
    b	.L0dacbf58
    # Line 1852
    li	$a3,20
.L0dacc324:
    # Line 1864
    b	.L0dacbf70
    # Line 1863
    ori	$a3,$a3,0x10
.L0dacc32c:
    b	.L0dacbf58
    # Line 1855
    li	$a3,28
.L0dacc334:
    b	.L0dacbf70
    # Line 1866
    ori	$a3,$a3,0x18
.L0dacc33c:
    # Line 1879
    lw	$a5,3328($s0)
    move	$a0,$zero
    beqz	$a5,.L0dacbf88
    # Line 1877
    lw	$a2,1488($s0)
    # Line 1879
    mtc1	$zero,$f4
    li	$a6,1
    b	.L0dacc36c
    lw	$a4,1704($s0)
    addiu	$a0,$a0,1
.L0dacc360:
    sltu	$a1,$a0,$a5
    beqz	$a1,.L0dacbf88
    addiu	$a2,$a2,116
.L0dacc36c:
    sllv	$at,$a6,$a0
    and	$at,$at,$a4
    beqzl	$at,.L0dacc360
    addiu	$a0,$a0,1
    lwc1	$f2,76($a2)
    c.eq.s	$f2,$f4
    nop
    bc1t	.L0dacc360
    addiu	$a0,$a0,1
    # Line 1885
    b	.L0dacbf88
    # Line 1884
    li	$a7,24
.end __glGenericPickAllProcs

.late_rodata
jtbl_0dbebc28:
    .word .L0dacb3c4
    .word .L0dacb3b4
    .word .L0dacb3bc
    .word .L0dacb3bc
    .word .L0dacb3d0
    .word .L0dacb3ec
    .word .L0dacb3ec
    .word .L0dacb3ec
    .word .L0dacb3ec

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_40000000:
    .word 0x40000000

