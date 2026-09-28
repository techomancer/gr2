# Source: ../PIXMAP/pix_pick.c
# Category: PIXMAP
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_pick.c
# Total Functions: 2

.text

# Function: __glPixPickSpanProcs
# Declared: Line 21 (Source lines: 22-263)
# Address: 0x0db10fd8 - 0x0db11580 (Size: 1448 bytes, Frame: 224)
.globl __glPixPickSpanProcs
.ent __glPixPickSpanProcs
__glPixPickSpanProcs:
    # Line 25
    lw	$a3,11768($a0)
    # Line 22
    addiu	$sp,$sp,-96
    sd	$s4,8($sp)
    # Line 31
    move	$s4,$zero
    sd	$s3,16($sp)
    # Line 22
    move	$s3,$a0
    sd	$s1,40($sp)
    # Line 33
    addiu	$s1,$a0,12172
    sd	$s0,32($sp)
    # Line 32
    addiu	$s0,$a0,12112
    sd	$s2,48($sp)
    # Line 24
    lw	$s2,30440($a0)
    # sd	gp,24(sp)
    # Line 36
    lbu	$at,29840($a0)
    # Line 22
    lui	$v0,0xe
    addiu	$v0,$v0,26768
    # Line 36
    beqz	$at,.L0db1102c
    # Line 22
    nop
    # Line 36
    lw	$v1,1696($s3)
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0db11040
.L0db1102c:
    # Line 38
    la	$a1,__glClipSpan
    # Line 39
    addiu	$s1,$s1,4
    # Line 38
    addiu	$s0,$s0,4
    sw	$a1,-4($s0)
    # Line 39
    sw	$zero,-4($s1)
.L0db11040:
    andi	$a2,$s2,0x10
    beqz	$a2,.L0db11064
    # Line 44
    la	$at,__glStippleStippledSpan
    sd	$s5,56($sp)
    # Line 43
    la	$v1,__glStippleSpan
    # Line 44
    addiu	$s1,$s1,4
    # Line 43
    addiu	$s0,$s0,4
    sw	$v1,-4($s0)
    # Line 44
    sw	$at,-4($s1)
.L0db11064:
    # Line 95
    la	$t3,__glDepthPassStippledSpan
    la	$t8,__glDepthPassSpan
    la	$t0,__glDepthTestOffsetSpan
    la	$t2,__glDepthTestStencilSpan_asm
    sd	$s5,56($sp)
    # Line 44
    andi	$s5,$s2,0x200
    beqz	$s5,.L0db111e4
    # Line 95
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$a4,__glStencilTestSpan_asm
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a0,__glStencilTestStippledSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
.L0db11098:
    andi	$a1,$s2,0x1
    beqz	$a1,.L0db11244
    andi	$v0,$s2,0x2
    beqz	$v0,.L0db11268
    # Line 113
    la	$a2,__glShadeRGBASpan
    sw	$a2,0($s0)
    # Line 114
    sw	$a2,0($s1)
.L0db110b4:
    # Line 129
    addiu	$s1,$s1,4
    # Line 132
    lui	$v1,0x2
    # Line 129
    andi	$at,$s2,0x8
    beqz	$at,.L0db110fc
    # Line 128
    addiu	$s0,$s0,4
    # Line 131
    la	$a2,__glTextureSpan
    # Line 132
    la	$a1,__glTextureStippledSpan
    # Line 131
    sw	$a2,0($s0)
    # Line 132
    sw	$a1,0($s1)
    lw	$v0,1696($s3)
    lui	$at,0x4000
    and	$v1,$v0,$v1
    beqz	$v1,.L0db110f4
    and	$at,$v0,$at
    beqzl	$at,.L0db112ec
    sd	$a3,64($sp)
.L0db110f4:
    # Line 165
    addiu	$s1,$s1,4
.L0db110f8:
    # Line 164
    addiu	$s0,$s0,4
.L0db110fc:
    # Line 165
    andi	$v1,$s2,0x1000
    beqz	$v1,.L0db11130
    # Line 181
    andi	$v0,$s2,0x4
    # Line 165
    lw	$a1,1812($s3)
    li	$a2,4354
    beq	$a1,$a2,.L0db11278
    # Line 172
    la	$v1,__glFogSpan
    # Line 173
    la	$at,__glFogStippledSpan
    # Line 172
    sw	$v1,0($s0)
    # Line 173
    sw	$at,0($s1)
.L0db11124:
    # Line 176
    addiu	$s1,$s1,4
    # Line 175
    addiu	$s0,$s0,4
    # Line 181
    andi	$v0,$s2,0x4
.L0db11130:
    # Line 176
    beqz	$s5,.L0db11188
    # Line 181
    la	$a1,__glAlphaTestStippledSpan
    # Line 180
    la	$a2,__glAlphaTestSpan
    # Line 181
    addiu	$s1,$s1,4
    # Line 180
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 181
    beqz	$s5,.L0db11188
    sw	$a1,-4($s1)
    andi	$at,$s2,0x20
    beqz	$at,.L0db112a0
    ld	$s5,56($sp)
    # Line 187
    sw	$a4,0($s0)
    # Line 191
    beqz	$v0,.L0db112e0
    sw	$a0,0($s1)
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqzl	$v1,.L0db112d8
    # Line 199
    sw	$t2,4($s0)
    # Line 196
    sw	$a6,4($s0)
    # Line 197
    sw	$a5,4($s1)
.L0db11180:
    # Line 216
    addiu	$s1,$s1,8
    # Line 215
    addiu	$s0,$s0,8
.L0db11188:
    ld	$s5,56($sp)
.L0db1118c:
    # Line 230
    lw	$a1,1788($s3)
    subu	$v0,$s0,$s3
    li	$a2,1032
    beq	$a1,$a2,.L0db1128c
    # Line 256
    addiu	$a0,$v0,-12108
.L0db111a0:
    # Line 252
    lw	$a1,184($a3)
    # Line 263
    ld	$s2,48($sp)
    # Line 252
    sw	$a1,0($s0)
    # Line 258
    la	$a2,__glProcessReplicateSpan
    # Line 253
    lw	$at,188($a3)
    # Line 256
    sra	$a0,$a0,0x2
    # Line 263
    ld	$s0,32($sp)
    # Line 253
    sw	$at,0($s1)
    # Line 256
    beqz	$s4,.L0db11258
    sw	$a0,12236($s3)
    # Line 258
    sw	$a2,12240($s3)
.L0db111cc:
    # Line 263
    ld	$s1,40($sp)
    # ld	gp,24(sp)
    ld	$s3,16($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db111e4:
    # Line 44
    andi	$at,$s2,0x20
    beqz	$at,.L0db113b0
    andi	$v0,$s2,0x4
    # Line 52
    la	$a4,__glStencilTestSpan_asm
    la	$a0,__glStencilTestStippledSpan
    sw	$a4,0($s0)
    # Line 56
    beqz	$v0,.L0db1143c
    sw	$a0,0($s1)
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqz	$v1,.L0db11420
    # Line 62
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 61
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 62
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 61
    sw	$a6,4($s0)
    # Line 62
    sw	$a5,4($s1)
.L0db11228:
    # Line 65
    la	$t3,__glDepthPassStippledSpan
    la	$t8,__glDepthPassSpan
.L0db11230:
    # Line 81
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,8
    b	.L0db11098
    # Line 80
    addiu	$s0,$s0,8
.L0db11244:
    # Line 117
    beqz	$v0,.L0db11410
    # Line 121
    la	$a1,__glShadeCISpan
    sw	$a1,0($s0)
    # Line 122
    b	.L0db110b4
    sw	$a1,0($s1)
.L0db11258:
    # Line 260
    la	$a2,__glProcessSpan
    # Line 261
    sw	$a0,12232($s3)
    b	.L0db111cc
    # Line 260
    sw	$a2,12240($s3)
.L0db11268:
    # Line 114
    la	$at,__glFlatRGBASpan
    # Line 116
    sw	$at,0($s0)
    b	.L0db110b4
    # Line 117
    sw	$at,0($s1)
.L0db11278:
    # Line 169
    la	$a1,__glFogSpanSlow
    # Line 170
    la	$v1,__glFogStippledSpanSlow
    # Line 169
    sw	$a1,0($s0)
    # Line 170
    b	.L0db11124
    sw	$v1,0($s1)
.L0db1128c:
    # Line 248
    li	$s4,1
    # Line 247
    addiu	$a2,$v0,-12112
    sra	$a2,$a2,0x2
    b	.L0db111a0
    sw	$a2,12232($s3)
.L0db112a0:
    # Line 216
    beqzl	$v0,.L0db1118c
    ld	$s5,56($sp)
    lw	$at,1536($s3)
    li	$v1,512
    beq	$at,$v1,.L0db11478
    # Line 221
    lui	$a1,0x4
    and	$a1,$s2,$a1
    beqzl	$a1,.L0db11460
    # Line 230
    addiu	$s1,$s1,4
    # Line 227
    addiu	$s1,$s1,4
    # Line 226
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 227
    b	.L0db11188
    sw	$a7,-4($s1)
.L0db112d8:
    b	.L0db11180
    # Line 200
    sw	$t1,4($s1)
.L0db112e0:
    # Line 212
    sw	$t8,4($s0)
    b	.L0db11180
    # Line 213
    sw	$t3,4($s1)
.L0db112ec:
    # Line 138
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s3
    sd	$ra,72($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 139
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$v0,0($sp)
    move	$a0,$s3
    jal	__glLookUpTexture
    li	$a1,3553
    la	$a0,__glStencilTestStippledSpan
    la	$a4,__glStencilTestSpan_asm
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$t2,__glDepthTestStencilSpan_asm
    lw	$t9,228($v0)
    la	$t3,__glDepthPassStippledSpan
    la	$t8,__glDepthPassSpan
    lw	$a2,64($t9)
    ld	$a3,64($sp)
    li	$at,6407
    bne	$a2,$at,.L0db110f4
    ld	$ra,72($sp)
    lw	$v1,56($t9)
    bnezl	$v1,.L0db110f8
    # Line 165
    addiu	$s1,$s1,4
    ld	$v0,0($sp)
    # Line 140
    lw	$v0,12($v0)
    li	$a1,9986
    beq	$v0,$a1,.L0db114f4
.L0db11370:
    # Line 145
    li	$v1,9987
.L0db11374:
    beq	$v0,$v1,.L0db11524
.L0db11378:
    # Line 150
    li	$t9,9728
.L0db1137c:
    beq	$t9,$v0,.L0db11554
.L0db11380:
    # Line 155
    li	$a1,9984
.L0db11384:
    bnel	$v0,$a1,.L0db110f8
    # Line 165
    addiu	$s1,$s1,4
    ld	$a2,0($sp)
    # Line 155
    lw	$a2,16($a2)
    bnel	$a2,$t9,.L0db110f8
    # Line 165
    addiu	$s1,$s1,4
    # Line 159
    la	$v1,__glTextureRGB_N_NMN_Span
    # Line 160
    la	$at,__glTextureRGB_N_NMN_StippledSpan
    # Line 159
    sw	$v1,0($s0)
    b	.L0db110f4
    # Line 160
    sw	$at,0($s1)
.L0db113b0:
    # Line 81
    beqz	$v0,.L0db114a0
    # Line 95
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 81
    lw	$a1,1536($s3)
    li	$a2,512
    beq	$a1,$a2,.L0db114c8
    # Line 86
    lui	$at,0x4
    and	$at,$s2,$at
    beqz	$at,.L0db114a8
    # Line 95
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 92
    addiu	$s1,$s1,4
    # Line 91
    la	$t0,__glDepthTestOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 92
    sw	$a7,-4($s1)
.L0db113ec:
    # Line 95
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$t3,__glDepthPassStippledSpan
    la	$a0,__glStencilTestStippledSpan
    la	$t8,__glDepthPassSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    la	$t2,__glDepthTestStencilSpan_asm
    b	.L0db11098
    la	$a4,__glStencilTestSpan_asm
.L0db11410:
    # Line 122
    la	$v1,__glFlatCISpan
    # Line 124
    sw	$v1,0($s0)
    b	.L0db110b4
    # Line 125
    sw	$v1,0($s1)
.L0db11420:
    # Line 65
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 62
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 65
    la	$a6,__glDepthTestStencilOffsetSpan
    # Line 62
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 64
    sw	$t2,4($s0)
    b	.L0db11228
    # Line 65
    sw	$t1,4($s1)
.L0db1143c:
    # Line 78
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan_asm
    # Line 65
    la	$t8,__glDepthPassSpan
    # Line 78
    la	$t2,__glDepthTestStencilSpan_asm
    # Line 65
    la	$t3,__glDepthPassStippledSpan
    # Line 77
    sw	$t8,4($s0)
    b	.L0db11230
    # Line 78
    sw	$t3,4($s1)
.L0db11460:
    la	$a2,__glDepthTestSpan_asm
    # Line 229
    addiu	$s0,$s0,4
    la	$a1,__glDepthTestStippledSpan_asm
    sw	$a2,-4($s0)
    b	.L0db11188
    # Line 230
    sw	$a1,-4($s1)
.L0db11478:
    # Line 220
    la	$s0,__glNop
    # ld	gp,24(sp)
    # Line 221
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    ld	$s4,8($sp)
    # Line 220
    sw	$s0,12240($s3)
    # Line 221
    ld	$s0,32($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db114a0:
    b	.L0db113ec
    # Line 95
    la	$t0,__glDepthTestOffsetSpan
.L0db114a8:
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,4
    # Line 92
    la	$v1,__glDepthTestSpan_asm
    # Line 94
    addiu	$s0,$s0,4
    # Line 92
    la	$at,__glDepthTestStippledSpan_asm
    # Line 94
    sw	$v1,-4($s0)
    b	.L0db113ec
    # Line 95
    sw	$at,-4($s1)
.L0db114c8:
    # Line 85
    la	$a1,__glNop
    # ld	gp,24(sp)
    # Line 86
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    ld	$s4,8($sp)
    ld	$s5,56($sp)
    # Line 85
    sw	$a1,12240($s3)
    # Line 86
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db114f4:
    ld	$a2,0($sp)
    # Line 140
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0db11374
    # Line 145
    li	$v1,9987
    # Line 144
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 145
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    ld	$v0,0($sp)
    # Line 144
    sw	$a1,0($s0)
    # Line 145
    sw	$v1,0($s1)
    b	.L0db11370
    lw	$v0,12($v0)
.L0db11524:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0db1137c
    # Line 150
    li	$t9,9728
    # Line 149
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 150
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    ld	$v0,0($sp)
    # Line 149
    sw	$a1,0($s0)
    # Line 150
    sw	$v1,0($s1)
    b	.L0db11378
    lw	$v0,12($v0)
.L0db11554:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    bne	$a2,$t9,.L0db11384
    # Line 155
    li	$a1,9984
    # Line 154
    la	$a1,__glTextureRGB_N_N_Span
    # Line 155
    la	$v1,__glTextureRGB_N_N_StippledSpan
    ld	$v0,0($sp)
    # Line 154
    sw	$a1,0($s0)
    # Line 155
    sw	$v1,0($s1)
    b	.L0db11380
    lw	$v0,12($v0)
.end __glPixPickSpanProcs

# Function: __glPixPickStoreProcs
# Declared: Line 278 (Source lines: 279-322)
# Address: 0x0db11580 - 0x0db116c8 (Size: 328 bytes, Frame: 0)
.globl __glPixPickStoreProcs
.ent __glPixPickStoreProcs
__glPixPickStoreProcs:
    # Line 280
    move	$a3,$zero
    # Line 281
    lw	$a4,1696($a0)
    # Line 279
    lui	$v1,0xe
    addiu	$v1,$v1,25320
    # Line 281
    andi	$v0,$a4,0x1
    beqz	$v0,.L0db115ac
    # Line 279
    nop
    # Line 281
    lbu	$a1,3104($a0)
    beqz	$a1,.L0db115b0
    # Line 284
    andi	$a2,$a4,0x8000
    li	$a3,1
.L0db115ac:
    andi	$a2,$a4,0x8000
.L0db115b0:
    beqz	$a2,.L0db115c0
    # Line 287
    andi	$v0,$a4,0x10
    ori	$a3,$a3,0x2
    andi	$v0,$a4,0x10
.L0db115c0:
    beqzl	$v0,.L0db115d0
    # Line 292
    lw	$a4,1788($a0)
    # Line 290
    ori	$a3,$a3,0x4
    # Line 292
    lw	$a4,1788($a0)
.L0db115d0:
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0db11608
    li	$v0,1032
    sltiu	$a1,$a4,1034
    bnez	$a1,.L0db11660
    sltiu	$a2,$a4,1035
    bnez	$a2,.L0db116b4
    sltiu	$v0,$a4,1036
    bnez	$v0,.L0db11660
    li	$v1,1036
    bne	$a4,$v1,.L0db11684
    nop
    b	.L0db11664
    # Line 318
    la	$v1,sub_0dbf0000
.L0db11608:
    # Line 292
    sltiu	$a1,$a4,1029
    bnez	$a1,.L0db11650
    sltiu	$a2,$a4,1030
    bnez	$a2,.L0db11664
    # Line 318
    la	$v1,sub_0dbf0000
    # Line 292
    bne	$a4,$v0,.L0db11684
    nop
    # Line 298
    lbu	$v1,30656($a0)
    # Line 300
    la	$a2,__glDoDoubleStore
    # Line 298
    beqz	$v1,.L0db11660
    # Line 299
    la	$v0,sub_0dbf0000
    sll	$a1,$a3,0x2
    addiu	$v0,$v0,-3264
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 300
    sw	$a2,12620($a0)
    # Line 322
    jr	$ra
    # Line 299
    sw	$a1,12616($a0)
.L0db11650:
    # Line 292
    sltiu	$v1,$a4,1028
    bnez	$v1,.L0db1168c
    sltiu	$a1,$a4,1029
    beqz	$a1,.L0db11684
.L0db11660:
    # Line 318
    la	$v1,sub_0dbf0000
.L0db11664:
    sll	$v0,$a3,0x2
    addiu	$v1,$v1,-3264
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 319
    lw	$a2,11768($a0)
    # Line 318
    sw	$v0,12616($a0)
    # Line 319
    lw	$a2,164($a2)
    sw	$a2,12620($a0)
.L0db11684:
    # Line 322
    jr	$ra
    nop
.L0db1168c:
    # Line 292
    bnez	$a4,.L0db11684
    # Line 294
    sll	$a1,$a3,0x2
    la	$v0,sub_0dbf0000
    # Line 295
    la	$a2,__glDoNullStore
    # Line 294
    addiu	$v0,$v0,-3264
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 295
    sw	$a2,12620($a0)
    # Line 322
    jr	$ra
    # Line 294
    sw	$a1,12616($a0)
.L0db116b4:
    # Line 292
    li	$v1,1034
    bne	$a4,$v1,.L0db11684
    nop
    b	.L0db11664
    # Line 318
    la	$v1,sub_0dbf0000
.end __glPixPickStoreProcs

