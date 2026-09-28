# Source: ../pixel/px_paths.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_paths.c
# Total Functions: 43

.text

# Function: PickSpanModifiers
# Declared: Line 118 (Source lines: 120-1986)
# Address: 0x0da78c54 - 0x0da7bfa4 (Size: 13136 bytes, Frame: 192)
.ent PickSpanModifiers
PickSpanModifiers:
    # Line 182
    li	$a5,1
    # Line 120
    addiu	$sp,$sp,-320
    sd	$s3,256($sp)
    sd	$s0,232($sp)
    move	$s0,$a0
    sd	$s1,240($sp)
    move	$s1,$a1
    # Line 182
    lw	$v0,432($a1)
    sd	$s2,248($sp)
    # Line 120
    move	$s2,$a2
    # Line 182
    beqz	$v0,.L0da79814
    sd	$zero,56($sp)
    beq	$v0,$a5,.L0da797e4
    li	$t0,2
    beq	$v0,$t0,.L0da79a34
    li	$at,3
    beq	$v0,$at,.L0da79b08
    # Line 226
    la	$t3,dummyFilter
    # Line 227
    move	$t8,$zero
    # Line 226
    sw	$t3,436($s1)
.L0da78ca4:
    # Line 230
    lw	$v0,1696($s0)
    lui	$v1,0x1000
    and	$v1,$v0,$v1
    beqz	$v1,.L0da7953c
    nop
    lw	$a3,1160($s0)
    beqz	$a3,.L0da7953c
    # Line 233
    li	$a4,1
    sd	$a4,64($sp)
.L0da78cc8:
    lui	$at,0x2000
    and	$at,$v0,$at
    beqz	$at,.L0da79544
    nop
    lbu	$v1,1276($s0)
    beqz	$v1,.L0da79544
    # Line 237
    li	$a3,1
    sd	$a3,72($sp)
.L0da78ce8:
    lw	$a4,0($s2)
    beql	$a4,$t0,.L0da79738
    lw	$at,4($s2)
.L0da78cf4:
    sd	$s4,264($sp)
.L0da78cf8:
    # Line 241
    move	$s4,$zero
.L0da78cfc:
    # Line 248
    lw	$a0,1700($s0)
    move	$v0,$zero
    andi	$at,$a0,0x1
    beqz	$at,.L0da7951c
    sw	$zero,30652($s0)
    lw	$v1,4904($s0)
    beqz	$v1,.L0da7951c
    # Line 249
    li	$a1,1
.L0da78d1c:
    beqz	$a1,.L0da78d2c
    move	$t1,$a1
    # Line 252
    li	$v0,1
    sw	$v0,30652($s0)
.L0da78d2c:
    andi	$a3,$a0,0x2
    beqz	$a3,.L0da79524
    nop
    lw	$a4,5064($s0)
    beqz	$a4,.L0da79524
    # Line 254
    li	$a1,1
.L0da78d44:
    beqz	$a1,.L0da78d54
    move	$t9,$a1
    # Line 258
    ori	$v0,$v0,0x2
    sw	$v0,30652($s0)
.L0da78d54:
    andi	$at,$a0,0x4
    beqz	$at,.L0da7952c
    nop
    lw	$v1,5224($s0)
    beqz	$v1,.L0da7952c
    # Line 261
    li	$a0,1
.L0da78d6c:
    move	$a3,$a0
    beqz	$a0,.L0da78d80
    sd	$a0,160($sp)
    # Line 265
    ori	$a4,$v0,0x4
    sw	$a4,30652($s0)
.L0da78d80:
    # Line 292
    lwc1	$f5,_lit_bf800000
    # Line 268
    lbu	$at,30649($s0)
    beqz	$at,.L0da79628
    li	$v0,1
.L0da78d90:
    move	$v1,$v0
    # Line 271
    beqz	$t1,.L0da79640
    sd	$v0,168($sp)
    li	$a3,1
.L0da78da0:
    sd	$a3,104($sp)
.L0da78da4:
    # Line 277
    move	$s3,$zero
    # Line 282
    lw	$a0,0($s1)
    # Line 281
    lw	$a1,4($s1)
    # Line 280
    lw	$a2,80($s1)
    # Line 286
    lw	$v0,0($s2)
    # Line 275
    lbu	$a4,736($s0)
    # Line 279
    lw	$a6,84($s1)
    # Line 286
    beq	$v0,$a5,.L0da79514
    sd	$a4,88($sp)
    lw	$a7,4($s2)
    beq	$a7,$a5,.L0da79514
    li	$at,4
    beq	$a7,$at,.L0da79514
    # Line 292
    lwc1	$f4,_lit_3f800000
.L0da78ddc:
    # Line 305
    li	$t2,6656
    # Line 292
    c.le.s	$f5,$f4
    nop
    bc1fl	.L0da78e10
    sd	$zero,136($sp)
    lwc1	$f0,3284($s0)
    c.le.s	$f4,$f0
    nop
    bc1f	.L0da78e0c
    # Line 295
    li	$v1,1
    b	.L0da78e10
    sd	$v1,136($sp)
.L0da78e0c:
    sd	$zero,136($sp)
.L0da78e10:
    # Line 299
    c.le.s	$f4,$f5
    nop
    bc1t	.L0da78e34
    # Line 300
    li	$a7,1
    # Line 299
    lwc1	$f1,3284($s0)
    c.le.s	$f1,$f4
    nop
    bc1f	.L0da7954c
    # Line 300
    li	$a7,1
.L0da78e34:
    # Line 302
    lbu	$a3,72($s1)
    beqz	$a3,.L0da79534
    nop
    beqz	$a7,.L0da79534
    # Line 304
    li	$a4,1
    sd	$a4,152($sp)
.L0da78e4c:
    # Line 305
    beqz	$a7,.L0da79684
    nop
.L0da78e54:
    sd	$zero,120($sp)
.L0da78e58:
    # Line 308
    lw	$at,40($s1)
    beqzl	$at,.L0da78e80
    sd	$zero,128($sp)
    lw	$v1,36($s1)
    slti	$v1,$v1,2
    bnez	$v1,.L0da78e7c
    # Line 312
    li	$a3,1
    b	.L0da78e80
    sd	$a3,128($sp)
.L0da78e7c:
    sd	$zero,128($sp)
.L0da78e80:
    # Line 314
    lw	$a4,120($s1)
    beqz	$a4,.L0da78ea4
    # Line 322
    sltiu	$a3,$a0,6405
    # Line 314
    lw	$at,116($s1)
    slti	$at,$at,2
    bnez	$at,.L0da78ea4
    # Line 317
    li	$v1,1
    b	.L0da78ea8
    sd	$v1,144($sp)
.L0da78ea4:
    sd	$zero,144($sp)
.L0da78ea8:
    # Line 322
    bnez	$a3,.L0da79358
    sltiu	$a4,$a0,6406
    bnez	$a4,.L0da78ec8
    sltiu	$at,$a0,6409
    bnez	$at,.L0da799b4
    sltiu	$v1,$a0,6410
    beqz	$v1,.L0da79d88
    li	$v1,0x8000
.L0da78ec8:
    # Line 333
    lbu	$a3,12($s2)
.L0da78ecc:
    beqz	$a3,.L0da7999c
    nop
    lbu	$a4,30528($s0)
    beqz	$a4,.L0da7999c
    li	$t3,1
.L0da78ee0:
    sb	$t3,0($sp)
.L0da78ee4:
    # Line 344
    lw	$t3,8($s2)
.L0da78ee8:
    li	$at,7
    beq	$t3,$at,.L0da79694
    # Line 361
    li	$v1,1
    # Line 362
    li	$a3,1
    sd	$a3,96($sp)
    sd	$v1,216($sp)
.L0da78f00:
    beq	$t2,$a1,.L0da79344
    nop
.L0da78f08:
    lw	$at,36($s1)
    lw	$a4,8($s1)
    addiu	$at,$at,-1
    and	$a4,$a4,$at
    beqz	$a4,.L0da79344
    # Line 368
    li	$v1,1
    # Line 370
    beq	$t2,$a6,.L0da7934c
    sd	$v1,224($sp)
.L0da78f28:
    lw	$a4,116($s1)
    lw	$a3,88($s1)
    addiu	$a4,$a4,-1
    and	$a3,$a3,$a4
    beqzl	$a3,.L0da79350
    sd	$t3,112($sp)
    sd	$t3,112($sp)
    # Line 375
    li	$at,1
    sd	$at,24($sp)
.L0da78f4c:
    # Line 380
    li	$t3,5126
    beql	$t3,$a1,.L0da78f68
    sd	$zero,208($sp)
    lbu	$v1,429($s1)
    beqz	$v1,.L0da79828
    ld	$a3,112($sp)
.L0da78f64:
    sd	$zero,208($sp)
.L0da78f68:
    # Line 387
    beql	$t3,$a6,.L0da78f80
    sd	$zero,80($sp)
    lbu	$a3,429($s1)
    beqz	$a3,.L0da79844
    ld	$v1,112($sp)
.L0da78f7c:
    sd	$zero,80($sp)
.L0da78f80:
    # Line 399
    lbu	$a4,425($s1)
    beqzl	$a4,.L0da78fdc
    sd	$zero,48($sp)
    beql	$v0,$a5,.L0da78fdc
    sd	$zero,48($sp)
    beq	$t2,$a1,.L0da78fd8
    li	$at,5121
    beq	$a1,$at,.L0da78fd8
    li	$v1,5123
    beq	$a1,$v1,.L0da78fd8
    li	$a3,5125
    beq	$a1,$a3,.L0da78fd8
    li	$a4,6400
    beq	$a0,$a4,.L0da78fd8
    li	$at,6401
    beq	$a0,$at,.L0da78fd8
    li	$v0,6402
    beql	$v0,$a0,.L0da7a15c
    lbu	$at,30530($s0)
    lbu	$v1,30528($s0)
.L0da78fd0:
    beqz	$v1,.L0da7a2ec
    ld	$a3,104($sp)
.L0da78fd8:
    sd	$zero,48($sp)
.L0da78fdc:
    # Line 409
    sltiu	$a3,$a2,6405
    bnez	$a3,.L0da79384
    # Line 412
    sltiu	$a4,$a2,6406
    beqz	$a4,.L0da795b4
    sltiu	$a4,$a2,6409
.L0da78ff0:
    # Line 424
    sb	$zero,1($sp)
.L0da78ff4:
    # Line 434
    li	$at,-1
.L0da78ff8:
    sw	$at,264($s1)
    # Line 436
    lw	$v0,0($s2)
    beq	$v0,$t0,.L0da796b0
    ld	$v1,128($sp)
    beq	$v0,$a5,.L0da79860
    li	$v1,3
    beq	$v0,$v1,.L0da79a70
    li	$a3,4
    beq	$v0,$a3,.L0da79b18
    # Line 926
    li	$a4,6408
    sd	$s8,272($sp)
    # Line 436
    lw	$s8,4($sp)
    sltiu	$t3,$a0,6406
.L0da7902c:
    # Line 993
    lbu	$a4,12($s2)
    beqz	$a4,.L0da792d0
    la	$a3,dummyFilter
    lbu	$at,3104($s0)
    beqz	$at,.L0da792cc
    # Line 996
    li	$v1,6401
    beq	$a2,$v1,.L0da792cc
    li	$a3,6402
    beq	$a2,$a3,.L0da792d0
    la	$a3,dummyFilter
    beqz	$t1,.L0da7906c
    # Line 1000
    la	$a4,__glSpanApplyRGBAColorTable
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0da7906c:
    # Line 1005
    lw	$a7,436($s1)
    lw	$v0,8($a7)
    li	$v1,6407
    beq	$v1,$v0,.L0da79bfc
    li	$a3,6408
    beq	$v0,$a3,.L0da79d04
    li	$a4,6409
    beq	$v0,$a4,.L0da79e08
    li	$at,6410
    beq	$v0,$at,.L0da79f08
    li	$a3,0x8049
    move	$v1,$v0
    beq	$v1,$a3,.L0da7a01c
    la	$v0,__glSpanApplyRGBAColorTable
.L0da790a4:
    # Line 1066
    beqz	$t8,.L0da79184
    nop
    # Line 1076
    lwc1	$f2,656($s0)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f3,660($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f0,664($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f1,668($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f2,672($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f3,676($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f0,680($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0da79174
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f1,684($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0da79184
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
.L0da79174:
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0da79184:
    beqzl	$t9,.L0da791a0
    # Line 1090
    lw	$a3,30640($s0)
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$v0,356($v1)
    lw	$a3,30640($s0)
.L0da791a0:
    li	$a4,0x8421
    beql	$a3,$a4,.L0da79200
    # Line 1134
    lbu	$at,30649($s0)
    # Line 1113
    lbu	$at,30648($s0)
    li	$v1,1
    beqz	$at,.L0da79d48
    sd	$v1,168($sp)
    lb	$a3,30644($s0)
    bltz	$a3,.L0da79614
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1113
    lb	$a4,30645($s0)
    bltz	$a4,.L0da79614
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1123
    lb	$at,30646($s0)
    bltz	$at,.L0da79614
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1123
    lb	$v1,30647($s0)
    bltz	$v1,.L0da79610
    # Line 1127
    la	$a3,__glSpanColorMatrixSwizzleRGBA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0da791fc:
    # Line 1134
    lbu	$at,30649($s0)
.L0da79200:
    beq	$at,$a5,.L0da79c40
.L0da79204:
    ld	$v1,160($sp)
    # Line 1147
    beqz	$v1,.L0da79224
    ld	$a4,64($sp)
    # Line 1152
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v0,356($a3)
    ld	$a4,64($sp)
.L0da79224:
    beqz	$a4,.L0da79270
    ld	$v1,72($sp)
    lbu	$a7,1192($s0)
    beqz	$a7,.L0da79b8c
    li	$a7,6406
    # Line 1161
    sw	$s3,264($s1)
    # Line 1163
    lw	$v0,1188($s0)
    # Line 1162
    li	$at,1
    # Line 1163
    beq	$a7,$v0,.L0da79ed4
    sd	$at,56($sp)
    li	$v1,6409
    beq	$v0,$v1,.L0da7a004
    li	$a3,6410
    beq	$v0,$a3,.L0da7a2a4
    li	$a4,6407
    beq	$a4,$v0,.L0da7a33c
    li	$at,6408
    beq	$v0,$at,.L0da7a3a0
.L0da7926c:
    ld	$v1,72($sp)
.L0da79270:
    # Line 1207
    beqz	$v1,.L0da792d8
    li	$a4,5120
    lbu	$a3,1192($s0)
    beqzl	$a3,.L0da79c60
    lbu	$at,1288($s0)
    # Line 1244
    lw	$v0,1284($s0)
.L0da79288:
    li	$a4,6406
    beq	$a4,$v0,.L0da79ebc
    li	$at,6409
    beq	$v0,$at,.L0da79f60
    li	$v1,6410
    beq	$v0,$v1,.L0da7a0d0
    li	$a3,6407
    beq	$a3,$v0,.L0da7a2d4
    li	$a4,6408
    bne	$v0,$a4,.L0da792d8
    li	$a4,5120
    # Line 1258
    la	$at,__glSpanMinmaxRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1259
    b	.L0da792d4
    # Line 1258
    sw	$at,356($v1)
.L0da792cc:
    la	$a3,dummyFilter
.L0da792d0:
    # Line 1275
    sw	$a3,436($s1)
.L0da792d4:
    li	$a4,5120
.L0da792d8:
    # Line 1285
    beq	$a4,$a1,.L0da792fc
    move	$a7,$zero
    li	$at,5122
    beq	$a1,$at,.L0da792fc
    li	$v1,5124
    beq	$a1,$v1,.L0da792fc
    li	$a3,5126
    bne	$a3,$a1,.L0da79304
    nop
.L0da792fc:
    ld	$a7,48($sp)
    # Line 1291
    sltiu	$a7,$a7,1
.L0da79304:
    # Line 1294
    beqz	$t3,.L0da793e0
    sltiu	$at,$a0,6402
    bnez	$at,.L0da793b0
    sltiu	$v1,$a0,6403
    beqz	$v1,.L0da795f0
    sltiu	$a4,$a0,6404
    # Line 1360
    beqzl	$a7,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    # Line 1361
    lbu	$a7,30530($s0)
    b	.L0da794ac
    sltiu	$a7,$a7,1
.L0da79330:
    # Line 346
    bne	$a5,$a2,.L0da7a498
    nop
.L0da79338:
    sd	$zero,216($sp)
.L0da7933c:
    # Line 362
    bne	$t2,$a1,.L0da78f08
    sd	$zero,96($sp)
.L0da79344:
    # Line 370
    bne	$t2,$a6,.L0da78f28
    sd	$zero,224($sp)
.L0da7934c:
    sd	$t3,112($sp)
.L0da79350:
    b	.L0da78f4c
    sd	$zero,24($sp)
.L0da79358:
    # Line 322
    sltiu	$at,$a0,6402
    bnez	$at,.L0da79554
    sltiu	$v1,$a0,6403
    bnez	$v1,.L0da799d8
    sltiu	$a3,$a0,6404
    bnez	$a3,.L0da79d60
    sltiu	$a4,$a0,6405
    beqzl	$a4,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da79384:
    # Line 412
    sltiu	$at,$a2,6402
    bnez	$at,.L0da79598
    sltiu	$v1,$a2,6403
    bnez	$v1,.L0da78ff0
    sltiu	$a3,$a2,6404
    bnez	$a3,.L0da79de0
    sltiu	$a4,$a2,6405
    beqz	$a4,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da793b0:
    # Line 1294
    sltiu	$at,$a0,6400
    bnez	$at,.L0da795e0
    sltiu	$v1,$a0,6401
    beqz	$v1,.L0da79ac0
    li	$a3,6401
    # Line 1299
    lbu	$a3,3104($s0)
    beqz	$a3,.L0da793d8
    ld	$a4,104($sp)
    bnezl	$a4,.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da793d8:
    # Line 1301
    b	.L0da794ac
    # Line 1300
    move	$a7,$zero
.L0da793e0:
    # Line 1294
    sltiu	$at,$a0,6407
    beqz	$at,.L0da79bd0
    sltiu	$a3,$a0,6410
.L0da793ec:
    # Line 1315
    lbu	$v1,30528($s0)
.L0da793f0:
    beqz	$v1,.L0da79eec
    sd	$v1,176($sp)
    sd	$zero,184($sp)
.L0da793fc:
    sd	$zero,192($sp)
    # Line 1318
    beqz	$t1,.L0da79428
    sd	$zero,200($sp)
    # Line 1321
    lw	$v0,4964($s0)
    li	$a3,6408
    beq	$v0,$a3,.L0da79afc
    li	$a4,6410
    beq	$v0,$a4,.L0da79afc
    li	$at,0x8049
    beq	$v0,$at,.L0da79b00
    # Line 1325
    li	$a3,1
.L0da79428:
    # Line 1327
    beqz	$t9,.L0da79450
    ld	$at,160($sp)
    # Line 1329
    lw	$v0,5124($s0)
    li	$v1,6408
    beq	$v0,$v1,.L0da79ae4
    li	$a3,6410
    beq	$v0,$a3,.L0da79ae4
    li	$a4,0x8049
    beq	$v0,$a4,.L0da79ae4
.L0da7944c:
    ld	$at,160($sp)
.L0da79450:
    # Line 1335
    beqz	$at,.L0da79478
    nop
    # Line 1337
    lw	$v0,5284($s0)
    li	$v1,6408
    beq	$v0,$v1,.L0da79af0
    li	$a3,6410
    beq	$v0,$a3,.L0da79af0
    li	$a4,0x8049
    beq	$v0,$a4,.L0da79af4
    # Line 1341
    li	$v1,1
.L0da79478:
    # Line 1344
    beqz	$a7,.L0da79f4c
    ld	$at,88($sp)
.L0da79480:
    beqz	$at,.L0da79f78
    # Line 1345
    move	$v0,$zero
.L0da79488:
    move	$a7,$v0
.L0da7948c:
    beqz	$t8,.L0da7949c
    ld	$v1,168($sp)
    beqz	$a7,.L0da7a0e8
.L0da79498:
    ld	$v1,168($sp)
.L0da7949c:
    # Line 1351
    beqzl	$v1,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    # Line 1351
    beqzl	$a7,.L0da7a0fc
    ld	$a7,200($sp)
.L0da794ac:
    # Line 1366
    lw	$v0,4($s2)
.L0da794b0:
    beq	$v0,$a5,.L0da79760
    nop
    beq	$v0,$t0,.L0da798d0
    ld	$s0,232($sp)
    li	$a3,3
    beq	$v0,$a3,.L0da79a80
    li	$a4,4
    beq	$v0,$a4,.L0da79b48
    lw	$v0,8($sp)
.L0da794d4:
    # Line 1974
    sw	$s8,16($s2)
    beqz	$s4,.L0da79cbc
    # Line 1972
    la	$a0,__glNop
    # Line 1977
    lbu	$at,440($s1)
    sw	$v0,444($s1)
    ld	$s8,272($sp)
    beqz	$at,.L0da797d8
    ld	$s4,264($sp)
    # Line 1979
    la	$v1,__glLateScissorRender
    ld	$s1,240($sp)
    sw	$v1,20($s2)
.L0da79500:
    # Line 1986
    ld	$s2,248($sp)
    move	$v0,$s3
    ld	$s3,256($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0da79514:
    # Line 290
    b	.L0da78ddc
    lwc1	$f4,720($s0)
.L0da7951c:
    b	.L0da78d1c
    # Line 249
    move	$a1,$zero
.L0da79524:
    b	.L0da78d44
    # Line 254
    move	$a1,$zero
.L0da7952c:
    b	.L0da78d6c
    # Line 261
    move	$a0,$zero
.L0da79534:
    b	.L0da78e4c
    sd	$zero,152($sp)
.L0da7953c:
    b	.L0da78cc8
    sd	$zero,64($sp)
.L0da79544:
    b	.L0da78ce8
    sd	$zero,72($sp)
.L0da7954c:
    b	.L0da78e34
    # Line 302
    move	$a7,$zero
.L0da79554:
    # Line 322
    sltiu	$a3,$a0,6400
    bnez	$a3,.L0da799a4
    sltiu	$a4,$a0,6401
    bnez	$a4,.L0da79da8
    li	$at,6401
    bnel	$a0,$at,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    # Line 339
    lbu	$v1,12($s2)
    beqz	$v1,.L0da7b2e8
    nop
    lbu	$a3,30531($s0)
    beqz	$a3,.L0da7b2e8
    li	$a4,1
    sd	$a4,16($sp)
.L0da7958c:
    ld	$at,16($sp)
    # Line 340
    b	.L0da78ee4
    # Line 339
    sb	$at,0($sp)
.L0da79598:
    # Line 412
    sltiu	$v1,$a2,6400
    bnez	$v1,.L0da79a00
    sltiu	$a3,$a2,6401
    beqz	$a3,.L0da79dd0
    li	$a4,6401
.L0da795ac:
    b	.L0da78ff4
    # Line 428
    sb	$a5,1($sp)
.L0da795b4:
    # Line 412
    bnez	$a4,.L0da79a10
    sltiu	$at,$a2,6410
    bnez	$at,.L0da78ff0
    li	$v0,0x8000
    sltu	$v1,$a2,$v0
    bnez	$v1,.L0da7a368
    sltu	$a3,$v0,$a2
    bnez	$a3,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da795e0:
    # Line 1294
    bnel	$a5,$a0,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da795f0:
    # Line 1294
    bnez	$a4,.L0da79ad0
    sltiu	$at,$a0,6405
    bnez	$at,.L0da793ec
    li	$v1,6405
    bnel	$a0,$v1,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da79610:
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
.L0da79614:
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da791fc
    sw	$a3,356($a4)
.L0da79628:
    # Line 268
    lw	$at,30640($s0)
    li	$v1,0x8421
    bne	$at,$v1,.L0da78d90
    li	$v0,1
    b	.L0da78d90
    move	$v0,$zero
.L0da79640:
    # Line 271
    bnez	$t8,.L0da78da0
    li	$a3,1
    bnez	$t9,.L0da78da0
    li	$a3,1
    bnez	$v0,.L0da78da0
    li	$a3,1
    ld	$a3,160($sp)
    bnez	$a3,.L0da78da0
    li	$a3,1
    ld	$a4,64($sp)
    bnez	$a4,.L0da78da0
    li	$a3,1
    ld	$at,72($sp)
    bnez	$at,.L0da78da0
    li	$a3,1
    b	.L0da78da4
    sd	$zero,104($sp)
.L0da79684:
    # Line 305
    beq	$t2,$a1,.L0da78e54
    # Line 308
    li	$v1,1
    b	.L0da78e58
    sd	$v1,120($sp)
.L0da79694:
    # Line 344
    lbu	$a3,0($sp)
    beqz	$a3,.L0da7a470
    # Line 357
    li	$a4,1
.L0da796a0:
    # Line 358
    li	$at,1
    sd	$at,96($sp)
    b	.L0da78f00
    sd	$a4,216($sp)
.L0da796b0:
    # Line 449
    beqz	$v1,.L0da7a4c4
    ld	$v0,208($sp)
    ld	$a3,120($sp)
    beqz	$a3,.L0da7a55c
    lw	$s3,36($s1)
    beq	$s3,$t0,.L0da7a768
    # Line 455
    la	$a4,__glSpanSwapAndSkipBytes4
    sw	$a4,360($s1)
.L0da796d0:
    # Line 462
    li	$s3,1
.L0da796d4:
    # Line 485
    beqz	$v0,.L0da7a1c0
    # Line 494
    li	$at,6400
    beq	$a0,$at,.L0da7a174
    ld	$v0,216($sp)
    li	$v1,6401
    beq	$a0,$v1,.L0da7a174
    # Line 518
    sltiu	$a3,$a1,5125
    bnez	$a3,.L0da79fa4
    sltiu	$a4,$a1,5126
    bnez	$a4,.L0da7a68c
    li	$at,0x8034
    sltu	$at,$a1,$at
    bnez	$at,.L0da7a9b4
    li	$v1,0x8034
    sltu	$v1,$v1,$a1
    beqz	$v1,.L0da7af1c
    li	$a3,0x8036
    sltu	$a3,$a1,$a3
    bnez	$a3,.L0da7b1f8
    li	$a4,0x8036
    sltu	$a4,$a4,$a1
    beqz	$a4,.L0da7b5dc
    # Line 584
    li	$at,4
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da79738:
    # Line 237
    bnel	$at,$a5,.L0da78cf8
    sd	$s4,264($sp)
    # Line 241
    andi	$v1,$v0,0x4000
    beqz	$v1,.L0da78cf4
    ld	$a3,64($sp)
    beqz	$a3,.L0da7b224
    ld	$a4,72($sp)
.L0da79754:
    sd	$s4,264($sp)
.L0da79758:
    b	.L0da78cfc
    li	$s4,1
.L0da79760:
    # Line 1373
    beqz	$a7,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    # Line 1374
    beqz	$t3,.L0da7a5b4
    sltiu	$a4,$a0,6403
    bnez	$a4,.L0da79e4c
    sltiu	$at,$a0,6404
    beqz	$at,.L0da7a41c
.L0da7977c:
    ld	$v1,104($sp)
.L0da79780:
    # Line 1387
    beqz	$v1,.L0da7a958
    la	$a3,__glSpanClampRGBA
    # Line 1388
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0da79798:
    # Line 1416
    sltiu	$at,$a2,6406
.L0da7979c:
    bnez	$at,.L0da7996c
    # Line 1426
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0da7997c
    sltiu	$a3,$a2,6410
    bnez	$a3,.L0da7a708
    sltiu	$a4,$a2,6411
    bnez	$a4,.L0da7997c
    li	$v0,0x8049
    sltu	$at,$a2,$v0
    bnez	$at,.L0da7b0c0
    sltu	$v1,$v0,$a2
    bnez	$v1,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da797d8:
    # Line 1981
    sw	$a0,20($s2)
    b	.L0da79500
    ld	$s1,240($sp)
.L0da797e4:
    # Line 188
    lw	$a3,1696($s0)
    lui	$a4,0x200
    and	$a3,$a3,$a4
    beqz	$a3,.L0da7a2c0
    # Line 191
    la	$t3,dummyFilter
    # Line 188
    lw	$at,792($s0)
    beqz	$at,.L0da7a2bc
    # Line 191
    la	$t3,dummyFilter
    li	$t8,1
    # Line 190
    addiu	$v1,$s0,744
    # Line 191
    b	.L0da78ca4
    # Line 190
    sw	$v1,436($s1)
.L0da79814:
    # Line 186
    li	$t0,2
    # Line 184
    la	$t3,dummyFilter
    # Line 185
    move	$t8,$zero
    # Line 186
    b	.L0da78ca4
    # Line 184
    sw	$t3,436($s1)
.L0da79828:
    li	$a4,7
    # Line 380
    beq	$a3,$a4,.L0da7983c
    # Line 385
    li	$at,1
    # Line 380
    beq	$t2,$a6,.L0da78f64
    # Line 385
    li	$at,1
.L0da7983c:
    b	.L0da78f68
    sd	$at,208($sp)
.L0da79844:
    li	$a3,7
    # Line 387
    beq	$v1,$a3,.L0da79858
    # Line 392
    li	$a4,1
    # Line 387
    beq	$t2,$a6,.L0da78f7c
    # Line 392
    li	$a4,1
.L0da79858:
    b	.L0da78f80
    sd	$a4,80($sp)
.L0da79860:
    # Line 796
    sltiu	$at,$a2,6406
    bnez	$at,.L0da79cd0
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0da79884
    sltiu	$a3,$a2,6410
    bnez	$a3,.L0da7a7e0
    sltiu	$a4,$a2,6411
    beqz	$a4,.L0da7ad14
    li	$v0,0x8049
.L0da79884:
    # Line 808
    lbu	$at,3104($s0)
.L0da79888:
    beqz	$at,.L0da7ac34
    # Line 816
    la	$a3,__glSpanModifyCI
    # Line 809
    lbu	$a3,30528($s0)
    lw	$v1,12428($s0)
    beqz	$a3,.L0da798b4
    sw	$v1,4($sp)
    # Line 812
    la	$at,__glSpanModifyRGBA
    # Line 811
    la	$a4,__glSpanPreUnscaleRGBA
    # Line 812
    li	$s3,2
    sw	$at,364($s1)
    # Line 811
    sw	$a4,360($s1)
.L0da798b4:
    # Line 839
    lw	$v1,8($s2)
.L0da798b8:
    beq	$v1,$t0,.L0da7a5a0
    ld	$a4,104($sp)
    sd	$s8,272($sp)
    # Line 918
    lw	$s8,4($sp)
.L0da798c8:
    b	.L0da7902c
    sltiu	$t3,$a0,6406
.L0da798d0:
    # Line 1702
    ld	$a3,96($sp)
    beqz	$a3,.L0da7a5ec
    lbu	$v0,427($s1)
    beqz	$v0,.L0da7a6a4
    # Line 1704
    la	$a4,__glSpanRGBAScaleBiasReduce
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0da798f4:
    # Line 1784
    lbu	$v1,12($s2)
.L0da798f8:
    beqz	$v1,.L0da7991c
    ld	$at,80($sp)
    beqz	$a7,.L0da79918
    # Line 1793
    la	$a3,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0da79918:
    ld	$at,80($sp)
.L0da7991c:
    beqz	$at,.L0da7a608
    lbu	$v1,1($sp)
    beqz	$v1,.L0da7a774
    # Line 1801
    sltiu	$a3,$a6,5123
    bnez	$a3,.L0da79fd0
    sltiu	$a4,$a6,5124
    bnez	$a4,.L0da7a094
    sltiu	$at,$a6,5125
    bnez	$at,.L0da7a9d8
    sltiu	$v1,$a6,5126
    bnez	$v1,.L0da7af3c
    # Line 1818
    la	$at,__glSpanPackUintI
    # Line 1801
    bne	$t2,$a6,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1821
    la	$a3,__glSpanPackBitmap
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1822
    b	.L0da7a0a8
    # Line 1821
    sw	$a3,356($a4)
.L0da7996c:
    # Line 1426
    sltiu	$at,$a2,6403
    bnez	$at,.L0da7a128
    sltiu	$v1,$a2,6404
    beqz	$v1,.L0da7a6ec
.L0da7997c:
    ld	$a3,136($sp)
.L0da79980:
    # Line 1437
    beqz	$a3,.L0da7a94c
    # Line 1466
    ld	$a4,56($sp)
    # Line 1438
    lw	$at,12460($s0)
    # Line 1466
    bnez	$a4,.L0da79b70
    # Line 1438
    sw	$at,8($sp)
.L0da79994:
    b	.L0da79b7c
    # Line 1469
    lw	$a4,8($s2)
.L0da7999c:
    b	.L0da78ee0
    # Line 333
    move	$t3,$zero
.L0da799a4:
    # Line 322
    bnel	$a5,$a0,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da799b4:
    # Line 322
    sltiu	$v1,$a0,6407
    bnez	$v1,.L0da79d74
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0da78ec8
    li	$a4,6408
    bnel	$a0,$a4,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da799d8:
    # Line 336
    lbu	$at,12($s2)
    beqz	$at,.L0da7a2cc
    nop
    lbu	$v1,30530($s0)
    beqz	$v1,.L0da7a2cc
    li	$a3,1
    sd	$a3,40($sp)
.L0da799f4:
    ld	$a4,40($sp)
    # Line 337
    b	.L0da78ee4
    # Line 336
    sb	$a4,0($sp)
.L0da79a00:
    # Line 412
    bne	$a5,$a2,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da79a10:
    # Line 412
    sltiu	$at,$a2,6407
    bnez	$at,.L0da79df4
    sltiu	$v1,$a2,6408
    bnez	$v1,.L0da78ff0
    li	$a3,6408
    bne	$a2,$a3,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da79a34:
    # Line 198
    lw	$v0,1696($s0)
    lui	$a4,0x800
    and	$a4,$v0,$a4
    beqz	$a4,.L0da7a72c
    # Line 205
    lui	$at,0x400
    # Line 198
    lw	$at,928($s0)
    beqz	$at,.L0da7a464
    # Line 202
    la	$t3,dummyFilter
    # Line 198
    lw	$v1,932($s0)
    beqz	$v1,.L0da7a460
    # Line 202
    la	$t3,dummyFilter
    li	$t8,1
    # Line 201
    addiu	$a3,$s0,880
    # Line 202
    b	.L0da78ca4
    # Line 201
    sw	$a3,436($s1)
.L0da79a70:
    sd	$s8,272($sp)
    # Line 923
    lw	$s8,4($sp)
    b	.L0da7902c
    sltiu	$t3,$a0,6406
.L0da79a80:
    # Line 1921
    sltiu	$a4,$a2,6407
    bnez	$a4,.L0da79e84
    sltiu	$at,$a2,6408
    bnez	$at,.L0da7a060
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0da7a804
    sltiu	$a3,$a2,6411
    bnez	$a3,.L0da7ae3c
    li	$a4,0x8000
    bne	$a2,$a4,.L0da7a074
    # Line 1947
    la	$at,__glSpanReorderABGR
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1948
    b	.L0da7a074
    # Line 1947
    sw	$at,356($v1)
.L0da79ac0:
    # Line 1294
    bnel	$a0,$a3,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    # Line 1297
    b	.L0da794ac
    # Line 1296
    move	$a7,$zero
.L0da79ad0:
    # Line 1294
    li	$a4,6403
    bnel	$a0,$a4,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da79ae4:
    # Line 1333
    li	$at,1
    b	.L0da7944c
    sd	$at,192($sp)
.L0da79af0:
    # Line 1341
    li	$v1,1
.L0da79af4:
    b	.L0da79478
    sd	$v1,200($sp)
.L0da79afc:
    # Line 1325
    li	$a3,1
.L0da79b00:
    b	.L0da79428
    sd	$a3,184($sp)
.L0da79b08:
    # Line 222
    la	$t3,dummyFilter
    # Line 223
    move	$t8,$zero
    # Line 224
    b	.L0da78ca4
    # Line 222
    sw	$t3,436($s1)
.L0da79b18:
    # Line 926
    beq	$a2,$a4,.L0da7a844
    li	$at,6400
    beq	$a2,$at,.L0da7a9fc
    li	$v1,6401
    beq	$a2,$v1,.L0da7ab14
    li	$a3,6402
    beq	$a2,$a3,.L0da7acb0
    nop
    sd	$s8,272($sp)
    lw	$s8,4($sp)
.L0da79b40:
    b	.L0da7902c
    # Line 990
    sltiu	$t3,$a0,6406
.L0da79b48:
    # Line 1965
    beqz	$a7,.L0da79b58
    li	$a4,6408
    beq	$a0,$a4,.L0da7ab00
    la	$a3,__glSpanClampRGBA
.L0da79b58:
    b	.L0da794d4
    # Line 1966
    lw	$v0,8($sp)
.L0da79b60:
    # Line 1426
    li	$at,6400
    beq	$a2,$at,.L0da7b29c
.L0da79b68:
    ld	$v1,56($sp)
.L0da79b6c:
    # Line 1466
    beqz	$v1,.L0da79994
.L0da79b70:
    # Line 1469
    la	$a3,__glNop
    sw	$a3,8($sp)
    lw	$a4,8($s2)
.L0da79b7c:
    beq	$a4,$a5,.L0da7a508
    # Line 1693
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da79b8c:
    # Line 1188
    lw	$v0,1188($s0)
    beq	$a7,$v0,.L0da7aa8c
    li	$at,6409
    beq	$v0,$at,.L0da7abc8
    li	$v1,6410
    beq	$v0,$v1,.L0da7ace8
    li	$a3,6407
    beq	$a3,$v0,.L0da7ada0
    li	$a4,6408
    bne	$v0,$a4,.L0da79270
    ld	$v1,72($sp)
    # Line 1202
    la	$at,__glSpanHistogramRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7926c
    sw	$at,356($v1)
.L0da79bd0:
    # Line 1294
    bnez	$a3,.L0da7a104
    sltiu	$a4,$a0,6411
    bnez	$a4,.L0da793ec
    li	$v0,0x8049
    sltu	$at,$a0,$v0
    bnez	$at,.L0da7abe0
    sltu	$v1,$v0,$a0
    bnezl	$v1,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da79bfc:
    # Line 1007
    lw	$at,64($a7)
    # Line 1008
    sw	$s3,260($s1)
    # Line 1007
    sw	$at,256($s1)
    # Line 1008
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0da7aa74
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1013
    la	$v1,__glSpanConvolve1DReduceRGB
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0da79c2c:
    # Line 1016
    la	$at,__glRowScaleSumRGB
    # Line 1015
    la	$a4,__glRowSetNoAlpha
    # Line 1016
    sw	$at,420($s1)
    # Line 1017
    b	.L0da790a4
    # Line 1015
    sw	$a4,416($s1)
.L0da79c40:
    # Line 1146
    li	$a4,1
    sd	$a4,168($sp)
    # Line 1147
    la	$v1,__glSpanPostColorMatrixScaleBiasRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da79204
    sw	$v1,356($a3)
.L0da79c60:
    # Line 1207
    beqzl	$at,.L0da79288
    # Line 1244
    lw	$v0,1284($s0)
    # Line 1221
    sw	$s3,264($s1)
    # Line 1222
    lw	$v0,1284($s0)
    # Line 1220
    li	$a3,1
    # Line 1222
    li	$v1,6406
    beq	$v1,$v0,.L0da7ad30
    sd	$a3,56($sp)
    li	$a4,6409
    beq	$v0,$a4,.L0da7add8
    li	$at,6410
    beq	$v0,$at,.L0da7af04
    li	$v1,6407
    beq	$v1,$v0,.L0da7b000
    li	$a3,6408
    bne	$v0,$a3,.L0da792d8
    li	$a4,5120
    # Line 1237
    la	$a4,__glSpanMinmaxSinkRGBA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1239
    b	.L0da792d4
    # Line 1237
    sw	$a4,356($at)
.L0da79cbc:
    # Line 1984
    sw	$v0,20($s2)
    ld	$s8,272($sp)
    ld	$s1,240($sp)
    b	.L0da79500
    ld	$s4,264($sp)
.L0da79cd0:
    # Line 796
    sltiu	$v1,$a2,6402
    bnez	$v1,.L0da7a300
    sltiu	$a3,$a2,6403
    bnez	$a3,.L0da7a884
    sltiu	$a4,$a2,6404
    bnez	$a4,.L0da7ac48
    sltiu	$at,$a2,6405
    bnez	$at,.L0da79884
    li	$v1,6405
    bnel	$a2,$v1,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da79d04:
    # Line 1019
    lw	$at,64($a7)
    # Line 1020
    sw	$s3,260($s1)
    # Line 1019
    sw	$at,256($s1)
    # Line 1020
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0da7abb0
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1025
    la	$v1,__glSpanConvolve1DReduceRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0da79d34:
    # Line 1028
    la	$at,__glRowScaleSumRGBA
    # Line 1027
    la	$a4,__glRowSetAll
    # Line 1028
    sw	$at,420($s1)
    # Line 1029
    b	.L0da790a4
    # Line 1027
    sw	$a4,416($s1)
.L0da79d48:
    # Line 1134
    la	$v1,__glSpanColorMatrixGeneralRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da791fc
    sw	$v1,356($a3)
.L0da79d60:
    # Line 322
    li	$a4,6403
    bnel	$a0,$a4,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da79d74:
    # Line 322
    li	$at,6406
    bnel	$a0,$at,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da79d88:
    # Line 322
    sltu	$v1,$a0,$v1
    bnez	$v1,.L0da7a354
    li	$a3,0x8000
    sltu	$a3,$a3,$a0
    bnezl	$a3,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da79da8:
    # Line 342
    lbu	$a4,12($s2)
    beqz	$a4,.L0da7a760
    nop
    lbu	$at,30529($s0)
    beqz	$at,.L0da7a760
    li	$v1,1
    sd	$v1,32($sp)
.L0da79dc4:
    ld	$a3,32($sp)
    b	.L0da78ee4
    sb	$a3,0($sp)
.L0da79dd0:
    # Line 412
    bne	$a2,$a4,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da795ac
    nop
.L0da79de0:
    # Line 412
    li	$at,6403
    bne	$a2,$at,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da79df4:
    # Line 412
    li	$v1,6406
    bne	$a2,$v1,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da79e08:
    # Line 1031
    lw	$at,64($a7)
    # Line 1032
    sw	$s3,260($s1)
    # Line 1031
    sw	$at,256($s1)
    # Line 1032
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0da7ac5c
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1036
    la	$v1,__glSpanConvolve1DReduceL
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0da79e38:
    # Line 1039
    la	$at,__glRowScaleSumL
    # Line 1038
    la	$a4,__glRowSetNoAlpha
    # Line 1039
    sw	$at,420($s1)
    # Line 1040
    b	.L0da790a4
    # Line 1038
    sw	$a4,416($s1)
.L0da79e4c:
    # Line 1374
    sltiu	$v1,$a0,6400
    bnez	$v1,.L0da7a40c
    sltiu	$a3,$a0,6401
    bnez	$a3,.L0da7977c
    li	$a4,6402
    bne	$a0,$a4,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    # Line 1414
    la	$at,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1413
    sw	$a5,108($s1)
    b	.L0da79798
    # Line 1414
    sw	$at,356($v1)
.L0da79e84:
    # Line 1921
    sltiu	$a3,$a2,6404
    bnez	$a3,.L0da7a438
    sltiu	$a4,$a2,6405
    bnez	$a4,.L0da7aa34
    sltiu	$at,$a2,6406
    bnez	$at,.L0da7ad60
    sltiu	$v1,$a2,6407
    beqz	$v1,.L0da7a074
    # Line 1941
    la	$a3,__glSpanReduceAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1942
    b	.L0da7a074
    # Line 1941
    sw	$a3,356($a4)
.L0da79ebc:
    # Line 1246
    la	$at,__glSpanMinmaxA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1247
    b	.L0da792d4
    # Line 1246
    sw	$at,356($v1)
.L0da79ed4:
    # Line 1165
    la	$a3,__glSpanHistogramSinkA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1167
    b	.L0da7926c
    # Line 1165
    sw	$a3,356($a4)
.L0da79eec:
    ld	$at,104($sp)
    # Line 1315
    bnezl	$at,.L0da793fc
    sd	$zero,184($sp)
    beqzl	$a7,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793fc
    sd	$zero,184($sp)
.L0da79f08:
    # Line 1042
    lw	$a4,64($a7)
    # Line 1043
    sw	$s3,260($s1)
    # Line 1042
    sw	$a4,256($s1)
    # Line 1043
    lw	$v1,0($a7)
    li	$a3,0x8011
    beq	$v1,$a3,.L0da7ad48
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1047
    la	$at,__glSpanConvolve1DReduceLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0da79f38:
    # Line 1050
    la	$a4,__glRowScaleSumLA
    # Line 1049
    la	$a3,__glRowSetAll
    # Line 1050
    sw	$a4,420($s1)
    # Line 1051
    b	.L0da790a4
    # Line 1049
    sw	$a3,416($s1)
.L0da79f4c:
    ld	$at,176($sp)
    # Line 1344
    beqz	$at,.L0da7948c
    nop
    b	.L0da79480
    ld	$at,88($sp)
.L0da79f60:
    # Line 1249
    la	$v1,__glSpanMinmaxL
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1250
    b	.L0da792d4
    # Line 1249
    sw	$v1,356($a3)
.L0da79f78:
    ld	$a4,184($sp)
    # Line 1344
    bnez	$a4,.L0da79488
    # Line 1345
    move	$v0,$zero
    ld	$at,192($sp)
    bnez	$at,.L0da79488
    move	$v0,$zero
    ld	$v1,200($sp)
    bnez	$v1,.L0da79488
    move	$v0,$zero
    b	.L0da79488
    li	$v0,1
.L0da79fa4:
    # Line 518
    sltiu	$a3,$a1,5122
    bnez	$a3,.L0da7a51c
    sltiu	$a4,$a1,5123
    bnez	$a4,.L0da7ab4c
    sltiu	$at,$a1,5124
    bnez	$at,.L0da7ae80
    sltiu	$v1,$a1,5125
    bnez	$v1,.L0da7b2f0
    # Line 532
    la	$a3,__glSpanUnpackInt
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da79fd0:
    # Line 1801
    sltiu	$a3,$a6,5121
    bnez	$a3,.L0da7a538
    sltiu	$a4,$a6,5122
    bnez	$a4,.L0da7ab64
    li	$at,5122
    bne	$a6,$at,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1809
    la	$v1,__glSpanPackShortI
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1810
    b	.L0da7a0a8
    # Line 1809
    sw	$v1,356($a3)
.L0da7a004:
    # Line 1169
    la	$a4,__glSpanHistogramSinkL
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1171
    b	.L0da7926c
    # Line 1169
    sw	$a4,356($at)
.L0da7a01c:
    # Line 1053
    lw	$a4,64($a7)
    # Line 1054
    sw	$s3,260($s1)
    # Line 1053
    sw	$a4,256($s1)
    # Line 1054
    lw	$v1,0($a7)
    li	$a3,0x8011
    beq	$v1,$a3,.L0da7ae54
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1058
    la	$at,__glSpanConvolve1DReduceI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0da7a04c:
    # Line 1061
    la	$a4,__glRowScaleSumI
    # Line 1060
    la	$a3,__glRowSetAll
    # Line 1061
    sw	$a4,420($s1)
    b	.L0da790a4
    # Line 1060
    sw	$a3,416($s1)
.L0da7a060:
    # Line 1923
    la	$at,__glSpanReduceRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0da7a074:
    # Line 1952
    beqz	$a7,.L0da7a08c
    # Line 1957
    la	$a3,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0da7a08c:
    # Line 1959
    b	.L0da794d4
    lw	$v0,8($sp)
.L0da7a094:
    # Line 1812
    la	$at,__glSpanPackUshortI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0da7a0a8:
    ld	$a3,144($sp)
.L0da7a0ac:
    # Line 1894
    beqz	$a3,.L0da7a65c
    ld	$at,24($sp)
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0da7a82c
    # Line 1903
    li	$a4,4
    beq	$v0,$a4,.L0da7a9a0
    # Line 1905
    la	$v1,__glSpanSwapBytes4Dst
.L0da7a0c8:
    # Line 1914
    b	.L0da794d4
    lw	$v0,8($sp)
.L0da7a0d0:
    # Line 1252
    la	$at,__glSpanMinmaxLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1253
    b	.L0da792d4
    # Line 1252
    sw	$at,356($v1)
.L0da7a0e8:
    ld	$a3,192($sp)
    # Line 1350
    beqz	$a3,.L0da7ae6c
    # Line 1351
    move	$v0,$zero
.L0da7a0f4:
    b	.L0da79498
    move	$a7,$v0
.L0da7a0fc:
    # Line 1355
    b	.L0da794ac
    sltiu	$a7,$a7,1
.L0da7a104:
    # Line 1294
    sltiu	$at,$a0,6408
    bnez	$at,.L0da7a6d8
    sltiu	$v1,$a0,6409
    bnez	$v1,.L0da793ec
    li	$a3,6409
    bnel	$a0,$a3,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da7a128:
    # Line 1426
    sltiu	$a4,$a2,6401
    bnez	$a4,.L0da79b60
    sltiu	$at,$a2,6402
    bnez	$at,.L0da7ac1c
    li	$v1,6402
    bne	$a2,$v1,.L0da79b6c
    ld	$v1,56($sp)
    ld	$a3,136($sp)
    # Line 1444
    beqzl	$a3,.L0da7ba1c
    # Line 1447
    lw	$a3,12464($s0)
    # Line 1445
    lw	$a4,12468($s0)
    b	.L0da79b68
    sw	$a4,8($sp)
.L0da7a15c:
    # Line 399
    bnezl	$at,.L0da78fdc
    sd	$zero,48($sp)
    beq	$v0,$a0,.L0da7a2f8
    # Line 409
    li	$a4,1
    b	.L0da78fd0
    # Line 399
    lbu	$v1,30528($s0)
.L0da7a174:
    # Line 496
    li	$v1,5120
    beq	$v1,$a1,.L0da7afd4
    li	$a3,5121
    beq	$a1,$a3,.L0da7b0d4
    li	$a4,5122
    beq	$a1,$a4,.L0da7b1e0
    li	$at,5123
    beq	$a1,$at,.L0da7b20c
    li	$v1,5124
    beq	$a1,$v1,.L0da7b2d0
    li	$a3,5125
    bne	$a1,$a3,.L0da7a1e4
    ld	$at,48($sp)
    # Line 513
    la	$a4,__glSpanUnpackUintI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 514
    b	.L0da7a1e0
    # Line 513
    sw	$a4,356($at)
.L0da7a1c0:
    # Line 586
    lbu	$v1,429($s1)
    beqz	$v1,.L0da7a1e0
    ld	$v0,216($sp)
    # Line 590
    la	$a3,__glSpanUnpackNonCompUint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0da7a1e0:
    ld	$at,48($sp)
.L0da7a1e4:
    beqz	$at,.L0da7a37c
    # Line 597
    la	$v1,__glSpanClampPreFloat
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0da7a1fc:
    # Line 625
    beq	$t2,$a1,.L0da7a4ec
    nop
.L0da7a204:
    # Line 631
    beqz	$v0,.L0da7a298
    sltiu	$t3,$a0,6406
    # Line 650
    beqz	$t3,.L0da7a56c
    sltiu	$a4,$a0,6402
    bnez	$a4,.L0da7a24c
    sltiu	$at,$a0,6403
    beqz	$at,.L0da7a3b8
    sltiu	$a4,$a0,6404
    # Line 750
    lbu	$v1,30530($s0)
    beqzl	$v1,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 751
    la	$a3,__glSpanModifyDepth
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a298
    sw	$a3,356($a4)
.L0da7a24c:
    # Line 650
    sltiu	$at,$a0,6400
    bnez	$at,.L0da7a290
    sltiu	$v1,$a0,6401
    bnez	$v1,.L0da7a8f4
    li	$a3,6401
    bnel	$a0,$a3,.L0da7a29c
    sd	$s8,272($sp)
    # Line 755
    lbu	$a4,30531($s0)
    beqzl	$a4,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 756
    la	$at,__glSpanModifyStencil
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7a298
    sw	$at,356($v1)
.L0da7a290:
    # Line 650
    beq	$a5,$a0,.L0da7b0ec
    # Line 732
    lbu	$v1,0($sp)
.L0da7a298:
    sd	$s8,272($sp)
.L0da7a29c:
    # Line 789
    b	.L0da7902c
    lw	$s8,4($sp)
.L0da7a2a4:
    # Line 1173
    la	$a3,__glSpanHistogramSinkLA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1175
    b	.L0da7926c
    # Line 1173
    sw	$a3,356($a4)
.L0da7a2bc:
    # Line 191
    la	$t3,dummyFilter
.L0da7a2c0:
    # Line 194
    move	$t8,$zero
    b	.L0da78ca4
    # Line 193
    sw	$t3,436($s1)
.L0da7a2cc:
    b	.L0da799f4
    sd	$zero,40($sp)
.L0da7a2d4:
    # Line 1255
    la	$at,__glSpanMinmaxRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1256
    b	.L0da792d4
    # Line 1255
    sw	$at,356($v1)
.L0da7a2ec:
    # Line 399
    bnezl	$a3,.L0da78fdc
    sd	$zero,48($sp)
    # Line 409
    li	$a4,1
.L0da7a2f8:
    b	.L0da78fdc
    sd	$a4,48($sp)
.L0da7a300:
    # Line 796
    sltiu	$at,$a2,6400
    bnez	$at,.L0da7a7d0
    sltiu	$v1,$a2,6401
    bnez	$v1,.L0da7adb8
    li	$a3,6401
    bnel	$a2,$a3,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    # Line 826
    lbu	$at,30531($s0)
    lw	$a4,12444($s0)
    beqz	$at,.L0da798b4
    sw	$a4,4($sp)
    # Line 828
    la	$v1,__glSpanModifyStencil
    li	$s3,1
    b	.L0da798b4
    sw	$v1,360($s1)
.L0da7a33c:
    # Line 1177
    la	$a3,__glSpanHistogramSinkRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1179
    b	.L0da7926c
    # Line 1177
    sw	$a3,356($a4)
.L0da7a354:
    # Line 322
    li	$at,6410
    bnel	$a0,$at,.L0da78ee8
    # Line 344
    lw	$t3,8($s2)
    b	.L0da78ecc
    # Line 333
    lbu	$a3,12($s2)
.L0da7a368:
    # Line 412
    li	$v1,6410
    bne	$a2,$v1,.L0da78ff8
    # Line 434
    li	$at,-1
    b	.L0da78ff4
    # Line 424
    sb	$zero,1($sp)
.L0da7a37c:
    # Line 597
    lbu	$a3,426($s1)
    beqz	$a3,.L0da7a1fc
    sltiu	$a4,$a6,5126
    bnez	$a4,.L0da7aa4c
    # Line 600
    sltiu	$at,$a6,5127
    beqz	$at,.L0da7aecc
    li	$a4,0x8034
    b	.L0da7a1fc
    nop
.L0da7a3a0:
    # Line 1181
    la	$v1,__glSpanHistogramSinkRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1183
    b	.L0da7926c
    # Line 1181
    sw	$v1,356($a3)
.L0da7a3b8:
    # Line 650
    bnez	$a4,.L0da7a8a4
    sltiu	$at,$a0,6405
    beqz	$at,.L0da7adf0
    li	$a3,6405
    # Line 664
    lbu	$v1,30528($s0)
    beqz	$v1,.L0da7b714
    # Line 665
    la	$a3,__glSpanModifyGreen
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0da7a3e4:
    # Line 667
    lbu	$at,424($s1)
    beqzl	$at,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 672
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v1,356($a3)
.L0da7a40c:
    # Line 1374
    bne	$a5,$a0,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7a41c:
    # Line 1374
    sltiu	$a4,$a0,6405
    bnez	$a4,.L0da7a91c
    sltiu	$at,$a0,6406
    beqz	$at,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7a438:
    # Line 1921
    sltiu	$v1,$a2,6403
    bnez	$v1,.L0da7a930
    sltiu	$a3,$a2,6404
    beqz	$a3,.L0da7a074
    # Line 1926
    la	$a4,__glSpanReduceRed
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1927
    b	.L0da7a074
    # Line 1926
    sw	$a4,356($at)
.L0da7a460:
    # Line 202
    la	$t3,dummyFilter
.L0da7a464:
    # Line 205
    move	$t8,$zero
    b	.L0da78ca4
    # Line 204
    sw	$t3,436($s1)
.L0da7a470:
    # Line 344
    lbu	$v1,427($s1)
    bnez	$v1,.L0da796a0
    # Line 357
    li	$a4,1
    ld	$a3,104($sp)
    # Line 346
    bnez	$a3,.L0da796a0
    # Line 357
    li	$a4,1
    # Line 346
    beq	$a2,$a0,.L0da79338
    li	$a4,6410
    beq	$a4,$a0,.L0da79330
    nop
.L0da7a498:
    beq	$a5,$a0,.L0da7bc90
    li	$at,6409
.L0da7a4a0:
    beq	$at,$a0,.L0da7bca4
    li	$v1,6403
.L0da7a4a8:
    bne	$v1,$a0,.L0da796a0
    # Line 357
    li	$a4,1
    li	$a3,6409
    # Line 346
    bne	$a3,$a2,.L0da796a0
    # Line 357
    li	$a4,1
    b	.L0da7933c
    sd	$zero,216($sp)
.L0da7a4c4:
    ld	$a4,224($sp)
    # Line 462
    beqz	$a4,.L0da7b160
    ld	$at,120($sp)
    beqz	$at,.L0da7b248
    lw	$s3,36($s1)
    beq	$s3,$t0,.L0da7b320
    # Line 470
    la	$v1,__glSpanSlowSkipPixels4
    sw	$v1,360($s1)
.L0da7a4e4:
    # Line 476
    b	.L0da796d4
    li	$s3,1
.L0da7a4ec:
    # Line 625
    beqz	$a7,.L0da7b18c
    # Line 629
    la	$a3,__glSpanUnpackBitmap2
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a204
    sw	$a3,356($a4)
.L0da7a508:
    ld	$at,104($sp)
    # Line 1469
    beqz	$at,.L0da7b1a4
    # Line 1693
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7a51c:
    # Line 518
    sltiu	$v1,$a1,5121
    bnez	$v1,.L0da7aaa4
    sltiu	$a3,$a1,5122
    bnez	$a3,.L0da7afec
    # Line 523
    la	$at,__glSpanUnpackUbyte
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da7a538:
    li	$a4,5120
    # Line 1801
    bne	$a4,$a6,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1803
    la	$at,__glSpanPackByteI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1804
    b	.L0da7a0a8
    # Line 1803
    sw	$at,356($v1)
.L0da7a55c:
    # Line 455
    beq	$s3,$t0,.L0da7b23c
    # Line 462
    la	$a3,__glSpanSwapBytes4
    b	.L0da796d0
    sw	$a3,360($s1)
.L0da7a56c:
    # Line 650
    sltiu	$a4,$a0,6407
    beqz	$a4,.L0da7aac8
    sltiu	$v1,$a0,6410
    # Line 688
    lbu	$at,30528($s0)
    beqzl	$at,.L0da7b57c
    # Line 691
    lbu	$v1,428($s1)
    sd	$s8,272($sp)
    # Line 689
    la	$v1,__glSpanModifyAlpha
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v1,356($a3)
.L0da7a5a0:
    # Line 839
    beqz	$a4,.L0da7b258
    # Line 865
    li	$a3,5121
    sd	$s8,272($sp)
    b	.L0da798c8
    # Line 918
    lw	$s8,4($sp)
.L0da7a5b4:
    # Line 1374
    sltiu	$at,$a0,6407
    bnez	$at,.L0da7977c
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0da7afb0
    sltiu	$a3,$a0,6411
    bnez	$a3,.L0da7977c
    li	$v0,0x8049
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0da7b700
    sltu	$at,$v0,$a0
    bnez	$at,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7a5ec:
    # Line 1779
    beqz	$v0,.L0da798f4
    # Line 1784
    la	$v1,__glSpanRGBAScaleBias
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da798f4
    sw	$v1,356($a3)
.L0da7a608:
    # Line 1871
    lbu	$a4,429($s1)
    beqz	$a4,.L0da7a0a8
    li	$at,5120
    # Line 1875
    beq	$at,$a6,.L0da7b4c0
    li	$v1,5121
    beq	$a6,$v1,.L0da7b524
    li	$a3,5122
    beq	$a6,$a3,.L0da7b5b4
    li	$a4,5123
    beq	$a6,$a4,.L0da7b64c
    li	$at,5124
    beq	$a6,$at,.L0da7b68c
    li	$v1,5125
    bne	$a6,$v1,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1892
    la	$a3,__glSpanPackNonCompUint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a0a8
    sw	$a3,356($a4)
.L0da7a65c:
    # Line 1905
    beqz	$at,.L0da7a0c8
    nop
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0da7b4d8
    # Line 1909
    li	$v1,4
    bne	$v0,$v1,.L0da7a0c8
    # Line 1911
    la	$a3,__glSpanAlignPixels4Dst
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a0c8
    sw	$a3,356($a4)
.L0da7a68c:
    # Line 535
    la	$at,__glSpanUnpackUint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 536
    b	.L0da7a1e0
    # Line 535
    sw	$at,356($v1)
.L0da7a6a4:
    # Line 1707
    sltiu	$a3,$a2,6407
    bnez	$a3,.L0da7ab7c
    sltiu	$a4,$a2,6408
    beqz	$a4,.L0da7b04c
    sltiu	$at,$a2,6410
    # Line 1709
    lbu	$at,428($s1)
    beqz	$at,.L0da7b88c
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRGB
.L0da7a6c8:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1712
    b	.L0da798f4
    # Line 1709
    sw	$v0,356($v1)
.L0da7a6d8:
    # Line 1294
    li	$a3,6407
    bnel	$a0,$a3,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da7a6ec:
    # Line 1426
    sltiu	$a4,$a2,6405
    bnez	$a4,.L0da7abf4
    sltiu	$at,$a2,6406
    beqz	$at,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da7a708:
    sltiu	$v1,$a2,6408
    bnez	$v1,.L0da7ac08
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0da7997c
    li	$a4,6409
    bne	$a2,$a4,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da7a72c:
    # Line 205
    and	$at,$v0,$at
    beqz	$at,.L0da7b47c
    # Line 214
    la	$t3,dummyFilter
    # Line 205
    lw	$v1,860($s0)
    beqz	$v1,.L0da7b140
    # Line 211
    la	$t3,dummyFilter
    # Line 205
    lw	$a3,864($s0)
    beqz	$a3,.L0da7b13c
    # Line 211
    la	$t3,dummyFilter
    li	$t8,1
    # Line 210
    addiu	$a4,$s0,812
    # Line 211
    b	.L0da78ca4
    # Line 210
    sw	$a4,436($s1)
.L0da7a760:
    b	.L0da79dc4
    sd	$zero,32($sp)
.L0da7a768:
    # Line 452
    la	$at,__glSpanSwapAndSkipBytes2
    b	.L0da796d0
    sw	$at,360($s1)
.L0da7a774:
    # Line 1823
    sltiu	$v1,$a6,5125
    bnez	$v1,.L0da7ac74
    # Line 1825
    sltiu	$a3,$a6,5126
    bnez	$a3,.L0da7b1c8
    li	$v0,0x8034
    sltu	$a4,$a6,$v0
    bnez	$a4,.L0da7b488
    sltu	$at,$v0,$a6
    beqz	$at,.L0da7b81c
    li	$v0,0x8036
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0da7b8a8
    sltu	$a3,$v0,$a6
    bnez	$a3,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1867
    li	$a4,4
    # Line 1865
    la	$at,__glSpanPack_10_10_10_2_Uint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
    # Line 1868
    b	.L0da7a0a8
    # Line 1867
    sw	$a4,108($s1)
.L0da7a7d0:
    # Line 796
    bnel	$a5,$a2,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7a7e0:
    # Line 796
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0da7ad00
    sltiu	$a4,$a2,6409
    bnez	$a4,.L0da79884
    li	$at,6409
    bnel	$a2,$at,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7a804:
    # Line 1921
    sltiu	$v1,$a2,6409
    bnez	$v1,.L0da7ad80
    sltiu	$a3,$a2,6410
    beqz	$a3,.L0da7a074
    # Line 1935
    la	$a4,__glSpanReduceLuminance
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1936
    b	.L0da7a074
    # Line 1935
    sw	$a4,356($at)
.L0da7a82c:
    # Line 1903
    la	$v1,__glSpanSwapBytes2Dst
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da7a0c8
    sw	$v1,356($a3)
.L0da7a844:
    # Line 928
    beqz	$a7,.L0da7b4f0
    sd	$s8,272($sp)
    # Line 929
    lw	$s8,12428($s0)
.L0da7a850:
    # Line 931
    lbu	$a4,30528($s0)
    beqz	$a4,.L0da7a86c
    # Line 935
    la	$v1,__glSpanModifyRGBA
    # Line 934
    la	$at,__glSpanPreUnscaleRGBA
    # Line 935
    li	$s3,2
    sw	$v1,364($s1)
    # Line 934
    sw	$at,360($s1)
.L0da7a86c:
    ld	$a3,136($sp)
    # Line 935
    beqzl	$a3,.L0da7b4f8
    # Line 940
    lw	$a3,12456($s0)
    # Line 938
    lw	$a4,12460($s0)
    b	.L0da79b40
    sw	$a4,8($sp)
.L0da7a884:
    # Line 820
    lbu	$v1,30530($s0)
    lw	$at,12436($s0)
    beqz	$v1,.L0da798b4
    sw	$at,4($sp)
    # Line 822
    la	$a3,__glSpanModifyDepth
    li	$s3,1
    b	.L0da798b4
    sw	$a3,360($s1)
.L0da7a8a4:
    # Line 650
    li	$a4,6403
    bnel	$a0,$a4,.L0da7a29c
    sd	$s8,272($sp)
    # Line 652
    lbu	$at,30528($s0)
    beqz	$at,.L0da7b9d8
    # Line 653
    la	$v1,__glSpanModifyRed
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a3,$v0,$s1
    sw	$v1,356($a3)
.L0da7a8cc:
    # Line 655
    lbu	$a4,424($s1)
    beqzl	$a4,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 660
    addiu	$s3,$s3,1
    addiu	$v1,$v0,4
    la	$at,__glSpanZeroFillAlpha
    addu	$v1,$v1,$s1
    b	.L0da7a298
    sw	$at,356($v1)
.L0da7a8f4:
    # Line 760
    lbu	$a3,30529($s0)
    beqzl	$a3,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 761
    la	$a4,__glSpanModifyCI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da7a298
    sw	$a4,356($at)
.L0da7a91c:
    # Line 1374
    li	$v1,6404
    bne	$a0,$v1,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7a930:
    # Line 1921
    bne	$a5,$a2,.L0da7a074
    # Line 1950
    la	$a3,__glSpanReduceRedAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a074
    sw	$a3,356($a4)
.L0da7a94c:
    # Line 1440
    lw	$at,12456($s0)
    b	.L0da79b68
    sw	$at,8($sp)
.L0da7a958:
    # Line 1390
    li	$v1,6403
    beq	$a0,$v1,.L0da7b59c
    li	$a3,6404
    beq	$a0,$a3,.L0da7b600
    li	$a4,6405
    beq	$a0,$a4,.L0da7b674
    li	$at,6406
    beq	$a0,$at,.L0da7b804
    li	$v1,6407
    beq	$a0,$v1,.L0da7b53c
    li	$a3,6409
    beq	$a0,$a3,.L0da7b53c
    la	$a4,__glSpanClampRGBA
    # Line 1408
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da79798
    sw	$a4,356($at)
.L0da7a9a0:
    # Line 1905
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da7a0c8
    sw	$v1,356($a3)
.L0da7a9b4:
    # Line 518
    li	$a4,0x8033
    sltu	$a4,$a1,$a4
    bnez	$a4,.L0da7ae94
    li	$at,0x8033
    sltu	$at,$at,$a1
    beqz	$at,.L0da7b304
    # Line 569
    li	$at,4
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da7a9d8:
    # Line 1801
    li	$v1,5124
    bne	$a6,$v1,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1815
    la	$a3,__glSpanPackIntI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1816
    b	.L0da7a0a8
    # Line 1815
    sw	$a3,356($a4)
.L0da7a9fc:
    # Line 944
    beqz	$a7,.L0da7b554
    sd	$s8,272($sp)
    # Line 945
    lw	$s8,12420($s0)
.L0da7aa08:
    # Line 947
    lbu	$at,30529($s0)
    beqz	$at,.L0da7aa1c
    # Line 950
    la	$v1,__glSpanModifyCI
    li	$s3,1
    sw	$v1,360($s1)
.L0da7aa1c:
    ld	$a3,136($sp)
    beqzl	$a3,.L0da7b55c
    # Line 955
    lw	$a3,12448($s0)
    # Line 953
    lw	$a4,12452($s0)
    b	.L0da79b40
    sw	$a4,8($sp)
.L0da7aa34:
    # Line 1929
    la	$at,__glSpanReduceGreen
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1930
    b	.L0da7a074
    # Line 1929
    sw	$at,356($v1)
.L0da7aa4c:
    # Line 600
    sltiu	$a3,$a6,5123
    bnez	$a3,.L0da7aea8
    sltiu	$a4,$a6,5124
    beqz	$a4,.L0da7b2b4
.L0da7aa5c:
    # Line 609
    la	$at,__glSpanClampPreFloat
.L0da7aa60:
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 610
    b	.L0da7a1fc
    # Line 609
    sw	$at,356($v1)
.L0da7aa74:
    # Line 1010
    la	$a3,__glSpanConvolveReduceRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da79c2c
    sw	$a3,356($a4)
.L0da7aa8c:
    # Line 1190
    la	$at,__glSpanHistogramA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1191
    b	.L0da7926c
    # Line 1190
    sw	$at,356($v1)
.L0da7aaa4:
    # Line 518
    li	$a3,5120
    bne	$a3,$a1,.L0da7a1e4
    ld	$at,48($sp)
    # Line 520
    la	$a4,__glSpanUnpackByte
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 521
    b	.L0da7a1e0
    # Line 520
    sw	$a4,356($at)
.L0da7aac8:
    # Line 650
    bnez	$v1,.L0da7af50
    sltiu	$a3,$a0,6411
    beqz	$a3,.L0da7b37c
    li	$v0,0x8049
    # Line 721
    lbu	$a4,30528($s0)
    beqzl	$a4,.L0da7b968
    # Line 725
    lbu	$a4,428($s1)
    sd	$s8,272($sp)
    # Line 722
    la	$at,__glSpanModifyLuminanceAlpha
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7a298
    sw	$at,356($v1)
.L0da7ab00:
    # Line 1966
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da79b58
    sw	$a3,356($a4)
.L0da7ab14:
    # Line 959
    beqz	$a7,.L0da7b5cc
    sd	$s8,272($sp)
    # Line 960
    lw	$s8,12444($s0)
.L0da7ab20:
    # Line 962
    lbu	$at,30531($s0)
    beqz	$at,.L0da7ab34
    # Line 965
    la	$v1,__glSpanModifyStencil
    li	$s3,1
    sw	$v1,360($s1)
.L0da7ab34:
    ld	$a3,136($sp)
    beqzl	$a3,.L0da7b5d4
    # Line 970
    lw	$a4,12472($s0)
    # Line 968
    lw	$a4,12476($s0)
    b	.L0da79b40
    sw	$a4,8($sp)
.L0da7ab4c:
    # Line 526
    la	$at,__glSpanUnpackShort
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 527
    b	.L0da7a1e0
    # Line 526
    sw	$at,356($v1)
.L0da7ab64:
    # Line 1806
    la	$a3,__glSpanPackUbyteI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1807
    b	.L0da7a0a8
    # Line 1806
    sw	$a3,356($a4)
.L0da7ab7c:
    # Line 1707
    sltiu	$at,$a2,6404
    bnez	$at,.L0da7b018
    sltiu	$v1,$a2,6405
    beqz	$v1,.L0da7b410
    sltiu	$v1,$a2,6406
    # Line 1719
    lbu	$a3,428($s1)
    beqz	$a3,.L0da7b9f8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceGreen
.L0da7aba0:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1722
    b	.L0da798f4
    # Line 1719
    sw	$v0,356($a4)
.L0da7abb0:
    # Line 1022
    la	$at,__glSpanConvolveReduceRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da79d34
    sw	$at,356($v1)
.L0da7abc8:
    # Line 1193
    la	$a3,__glSpanHistogramL
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1194
    b	.L0da7926c
    # Line 1193
    sw	$a3,356($a4)
.L0da7abe0:
    # Line 1294
    li	$at,0x8000
    bnel	$a0,$at,.L0da794b0
    # Line 1366
    lw	$v0,4($s2)
    b	.L0da793f0
    # Line 1315
    lbu	$v1,30528($s0)
.L0da7abf4:
    # Line 1426
    li	$v1,6404
    bne	$a2,$v1,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da7ac08:
    li	$a3,6407
    bne	$a2,$a3,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da7ac1c:
    ld	$a4,136($sp)
    # Line 1458
    beqzl	$a4,.L0da7b5f8
    # Line 1461
    lw	$a4,12472($s0)
    # Line 1459
    lw	$at,12476($s0)
    b	.L0da79b68
    sw	$at,8($sp)
.L0da7ac34:
    # Line 816
    li	$s3,1
    # Line 815
    lw	$v1,12420($s0)
    # Line 816
    sw	$a3,360($s1)
    b	.L0da798b4
    # Line 815
    sw	$v1,4($sp)
.L0da7ac48:
    # Line 796
    li	$a4,6403
    bnel	$a2,$a4,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7ac5c:
    # Line 1034
    la	$at,__glSpanConvolveReduceL
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da79e38
    sw	$at,356($v1)
.L0da7ac74:
    # Line 1825
    sltiu	$a3,$a6,5122
    bnez	$a3,.L0da7b110
    sltiu	$a4,$a6,5123
    bnez	$a4,.L0da7b564
    sltiu	$at,$a6,5124
    bnez	$at,.L0da7b7b4
    sltiu	$v1,$a6,5125
    beqz	$v1,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1839
    la	$a3,__glSpanPackInt
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1840
    b	.L0da7a0a8
    # Line 1839
    sw	$a3,356($a4)
.L0da7acb0:
    # Line 974
    beqz	$a7,.L0da7b664
    sd	$s8,272($sp)
    # Line 975
    lw	$s8,12436($s0)
.L0da7acbc:
    # Line 977
    lbu	$at,30530($s0)
    beqz	$at,.L0da7acd0
    # Line 980
    la	$v1,__glSpanModifyDepth
    li	$s3,1
    sw	$v1,360($s1)
.L0da7acd0:
    ld	$a3,136($sp)
    beqzl	$a3,.L0da7b66c
    # Line 985
    lw	$at,12464($s0)
    # Line 983
    lw	$a4,12468($s0)
    b	.L0da79b40
    sw	$a4,8($sp)
.L0da7ace8:
    # Line 1196
    la	$at,__glSpanHistogramLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1197
    b	.L0da7926c
    # Line 1196
    sw	$at,356($v1)
.L0da7ad00:
    # Line 796
    li	$a3,6407
    bnel	$a2,$a3,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7ad14:
    # Line 796
    sltu	$a4,$a2,$v0
    bnez	$a4,.L0da7b14c
    sltu	$at,$v0,$a2
    bnezl	$at,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7ad30:
    # Line 1224
    la	$v1,__glSpanMinmaxSinkA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1225
    b	.L0da792d4
    # Line 1224
    sw	$v1,356($a3)
.L0da7ad48:
    # Line 1045
    la	$a4,__glSpanConvolveReduceLA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da79f38
    sw	$a4,356($at)
.L0da7ad60:
    # Line 1921
    li	$v1,6405
    bne	$a2,$v1,.L0da7a074
    # Line 1932
    la	$a3,__glSpanReduceBlue
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1933
    b	.L0da7a074
    # Line 1932
    sw	$a3,356($a4)
.L0da7ad80:
    # Line 1921
    li	$at,6408
    bne	$a2,$at,.L0da7a074
    # Line 1944
    la	$v1,__glSpanPostUnscaleRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1945
    b	.L0da7a074
    # Line 1944
    sw	$v1,356($a3)
.L0da7ada0:
    # Line 1199
    la	$a4,__glSpanHistogramRGB
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1200
    b	.L0da7926c
    # Line 1199
    sw	$a4,356($at)
.L0da7adb8:
    # Line 832
    lbu	$a3,30529($s0)
    lw	$v1,12420($s0)
    beqz	$a3,.L0da798b4
    sw	$v1,4($sp)
    # Line 834
    la	$a4,__glSpanModifyCI
    li	$s3,1
    b	.L0da798b4
    sw	$a4,360($s1)
.L0da7add8:
    # Line 1227
    la	$at,__glSpanMinmaxSinkL
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1228
    b	.L0da792d4
    # Line 1227
    sw	$at,356($v1)
.L0da7adf0:
    # Line 650
    bnel	$a0,$a3,.L0da7a29c
    sd	$s8,272($sp)
    # Line 676
    lbu	$a4,30528($s0)
    beqz	$a4,.L0da7ba48
    # Line 677
    la	$at,__glSpanModifyBlue
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$v1,$v0,$s1
    sw	$at,356($v1)
.L0da7ae14:
    # Line 679
    lbu	$a3,424($s1)
    beqzl	$a3,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 684
    addiu	$s3,$s3,1
    addiu	$at,$v0,4
    la	$a4,__glSpanZeroFillAlpha
    addu	$at,$at,$s1
    b	.L0da7a298
    sw	$a4,356($at)
.L0da7ae3c:
    # Line 1938
    la	$v1,__glSpanReduceLuminanceAlpha
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1939
    b	.L0da7a074
    # Line 1938
    sw	$v1,356($a3)
.L0da7ae54:
    # Line 1056
    la	$a4,__glSpanConvolveReduceI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da7a04c
    sw	$a4,356($at)
.L0da7ae6c:
    ld	$v1,200($sp)
    # Line 1350
    bnez	$v1,.L0da7a0f4
    # Line 1351
    move	$v0,$zero
    b	.L0da7a0f4
    li	$v0,1
.L0da7ae80:
    # Line 518
    li	$a3,5123
    beq	$a1,$a3,.L0da7b83c
    # Line 529
    la	$at,__glSpanUnpackUshort
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da7ae94:
    # Line 518
    li	$a4,0x8032
    beq	$a1,$a4,.L0da7b850
    # Line 564
    li	$a3,3
    # Line 585
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da7aea8:
    # Line 600
    sltiu	$at,$a6,5121
    bnez	$at,.L0da7b27c
    sltiu	$v1,$a6,5122
    bnez	$v1,.L0da7aa5c
    li	$a3,5122
    bne	$a6,$a3,.L0da7a1fc
    nop
    b	.L0da7b288
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0da7aecc:
    # Line 600
    sltu	$a4,$a6,$a4
    bnez	$a4,.L0da7b090
    li	$at,0x8034
    sltu	$at,$at,$a6
    beqz	$at,.L0da7b0a8
    li	$v1,0x8036
    sltu	$v1,$a6,$v1
    bnez	$v1,.L0da7b894
    li	$a3,0x8036
    sltu	$a3,$a3,$a6
    bnez	$a3,.L0da7a1fc
    nop
    b	.L0da7b0ac
    # Line 620
    la	$at,__glSpanClampRGBA
.L0da7af04:
    # Line 1230
    la	$a4,__glSpanMinmaxSinkLA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1231
    b	.L0da792d4
    # Line 1230
    sw	$a4,356($at)
.L0da7af1c:
    # Line 574
    li	$v1,4
    # Line 572
    la	$a3,__glSpanUnpack5551Ushort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 575
    b	.L0da7a1e0
    # Line 574
    sw	$v1,28($s1)
.L0da7af3c:
    # Line 1818
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1819
    b	.L0da7a0a8
    # Line 1818
    sw	$at,356($v1)
.L0da7af50:
    # Line 650
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0da7b32c
    sltiu	$a4,$a0,6409
    bnez	$a4,.L0da7b6d8
    li	$at,6409
    bnel	$a0,$at,.L0da7a29c
    sd	$s8,272($sp)
    # Line 709
    lbu	$v1,30528($s0)
    beqz	$v1,.L0da7bcb8
    # Line 710
    la	$a3,__glSpanModifyLuminance
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0da7af88:
    # Line 712
    lbu	$at,424($s1)
    beqzl	$at,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 717
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v1,356($a3)
.L0da7afb0:
    # Line 1374
    sltiu	$a4,$a0,6408
    bnez	$a4,.L0da7b3d4
    sltiu	$at,$a0,6409
    bnez	$at,.L0da7977c
    li	$v1,6409
    bne	$a0,$v1,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7afd4:
    # Line 498
    la	$a3,__glSpanUnpackByteI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 499
    b	.L0da7a1e0
    # Line 498
    sw	$a3,356($a4)
.L0da7afec:
    # Line 523
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 524
    b	.L0da7a1e0
    # Line 523
    sw	$at,356($v1)
.L0da7b000:
    # Line 1233
    la	$a3,__glSpanMinmaxSinkRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1235
    b	.L0da792d4
    # Line 1233
    sw	$a3,356($a4)
.L0da7b018:
    # Line 1707
    sltiu	$at,$a2,6403
    bnez	$at,.L0da7b3e8
    sltiu	$v1,$a2,6404
    beqzl	$v1,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1714
    lbu	$a3,428($s1)
    beqz	$a3,.L0da7ba70
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0da7b03c:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1717
    b	.L0da798f4
    # Line 1714
    sw	$v0,356($a4)
.L0da7b04c:
    # Line 1707
    bnez	$at,.L0da7b440
    sltiu	$v1,$a2,6411
    bnez	$v1,.L0da7b78c
    li	$v0,0x8049
    sltu	$a3,$a2,$v0
    bnez	$a3,.L0da7b8d4
    sltu	$a4,$v0,$a2
    bnezl	$a4,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1775
    lbu	$at,428($s1)
    beqz	$at,.L0da7bc88
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0da7b080:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1778
    b	.L0da798f4
    # Line 1775
    sw	$v0,356($v1)
.L0da7b090:
    # Line 600
    li	$a3,0x8033
    sltu	$a3,$a6,$a3
    bnez	$a3,.L0da7b62c
    li	$a4,0x8033
    sltu	$a4,$a4,$a6
    bnez	$a4,.L0da7a1fc
.L0da7b0a8:
    # Line 620
    la	$at,__glSpanClampRGBA
.L0da7b0ac:
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7a1fc
    sw	$at,356($v1)
.L0da7b0c0:
    # Line 1426
    li	$a3,0x8000
    bne	$a2,$a3,.L0da79b6c
    ld	$v1,56($sp)
    b	.L0da79980
    ld	$a3,136($sp)
.L0da7b0d4:
    # Line 501
    la	$a4,__glSpanUnpackUbyteI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 502
    b	.L0da7a1e0
    # Line 501
    sw	$a4,356($at)
.L0da7b0ec:
    # Line 732
    beqzl	$v1,.L0da7b86c
    # Line 735
    lbu	$v1,428($s1)
    sd	$s8,272($sp)
    # Line 733
    la	$a3,__glSpanModifyRedAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a298
    sw	$a3,356($a4)
.L0da7b110:
    # Line 1825
    sltiu	$at,$a6,5121
    bnez	$at,.L0da7b500
    sltiu	$v1,$a6,5122
    beqz	$v1,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1830
    la	$a3,__glSpanPackUbyte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1831
    b	.L0da7a0a8
    # Line 1830
    sw	$a3,356($a4)
.L0da7b13c:
    # Line 211
    la	$t3,dummyFilter
.L0da7b140:
    # Line 214
    move	$t8,$zero
    b	.L0da78ca4
    # Line 213
    sw	$t3,436($s1)
.L0da7b14c:
    # Line 796
    li	$at,0x8000
    bnel	$a2,$at,.L0da798b8
    # Line 839
    lw	$v1,8($s2)
    b	.L0da79888
    # Line 808
    lbu	$at,3104($s0)
.L0da7b160:
    ld	$v1,120($sp)
    # Line 476
    beqz	$v1,.L0da796d4
    nop
    lw	$s3,36($s1)
    beq	$s3,$a5,.L0da7b9b0
    # Line 481
    la	$v1,__glSpanSkipPixels1
    beq	$s3,$t0,.L0da7b9a4
    # Line 485
    la	$a3,__glSpanSkipPixels4
    sw	$a3,360($s1)
.L0da7b184:
    b	.L0da796d4
    li	$s3,1
.L0da7b18c:
    # Line 631
    la	$a4,__glSpanUnpackBitmap
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da7a204
    sw	$a4,356($at)
.L0da7b1a4:
    # Line 1489
    li	$v1,5121
    beq	$a1,$v1,.L0da7b900
    li	$a3,5123
    beq	$a1,$a3,.L0da7b944
    li	$a4,5125
    beq	$a1,$a4,.L0da7b9c4
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7b1c8:
    # Line 1842
    la	$at,__glSpanPackUint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1843
    b	.L0da7a0a8
    # Line 1842
    sw	$at,356($v1)
.L0da7b1e0:
    # Line 504
    la	$a3,__glSpanUnpackShortI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 505
    b	.L0da7a1e0
    # Line 504
    sw	$a3,356($a4)
.L0da7b1f8:
    # Line 518
    li	$at,0x8035
    beq	$a1,$at,.L0da7b988
    # Line 579
    li	$v1,4
    b	.L0da7a1e4
    ld	$at,48($sp)
.L0da7b20c:
    # Line 507
    la	$v1,__glSpanUnpackUshortI
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 508
    b	.L0da7a1e0
    # Line 507
    sw	$v1,356($a3)
.L0da7b224:
    # Line 241
    bnezl	$a4,.L0da79758
    sd	$s4,264($sp)
    beqzl	$t8,.L0da78cf8
    sd	$s4,264($sp)
    b	.L0da79754
    sd	$s4,264($sp)
.L0da7b23c:
    # Line 460
    la	$at,__glSpanSwapBytes2
    b	.L0da796d0
    sw	$at,360($s1)
.L0da7b248:
    # Line 470
    beq	$s3,$t0,.L0da7b92c
    # Line 476
    la	$v1,__glSpanAlignPixels4
    b	.L0da7a4e4
    sw	$v1,360($s1)
.L0da7b258:
    # Line 865
    beq	$a6,$a3,.L0da7b938
    li	$a4,5123
    beq	$a6,$a4,.L0da7b9b8
    li	$at,5125
    beq	$a6,$at,.L0da7ba00
    # Line 891
    li	$v1,6402
    sd	$s8,272($sp)
    # Line 865
    b	.L0da798c8
    lw	$s8,4($sp)
.L0da7b27c:
    li	$v1,5120
    # Line 600
    bne	$v1,$a6,.L0da7a1fc
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0da7b288:
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 605
    b	.L0da7a1fc
    # Line 604
    sw	$a3,356($a4)
.L0da7b29c:
    ld	$at,136($sp)
    # Line 1451
    beqzl	$at,.L0da7b960
    # Line 1454
    lw	$a3,12448($s0)
    # Line 1452
    lw	$v1,12452($s0)
    b	.L0da79b68
    sw	$v1,8($sp)
.L0da7b2b4:
    # Line 600
    sltiu	$a3,$a6,5125
    bnez	$a3,.L0da7b618
    sltiu	$a4,$a6,5126
    beqz	$a4,.L0da7a1fc
    nop
    b	.L0da7aa60
    # Line 609
    la	$at,__glSpanClampPreFloat
.L0da7b2d0:
    # Line 510
    la	$at,__glSpanUnpackIntI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 511
    b	.L0da7a1e0
    # Line 510
    sw	$at,356($v1)
.L0da7b2e8:
    b	.L0da7958c
    sd	$zero,16($sp)
.L0da7b2f0:
    # Line 532
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 533
    b	.L0da7a1e0
    # Line 532
    sw	$a3,356($a4)
.L0da7b304:
    # Line 567
    la	$v1,__glSpanUnpack4444Ushort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 570
    b	.L0da7a1e0
    # Line 569
    sw	$at,28($s1)
.L0da7b320:
    # Line 468
    la	$a4,__glSpanSlowSkipPixels2
    b	.L0da7a4e4
    sw	$a4,360($s1)
.L0da7b32c:
    # Line 650
    li	$at,6407
    bnel	$a0,$at,.L0da7a29c
    sd	$s8,272($sp)
    # Line 697
    lbu	$v1,30528($s0)
    beqz	$v1,.L0da7bb9c
    # Line 698
    la	$a3,__glSpanModifyRGB
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0da7b354:
    # Line 700
    lbu	$at,424($s1)
    beqzl	$at,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 705
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v1,356($a3)
.L0da7b37c:
    # Line 650
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0da7b6a4
    sltu	$at,$v0,$a0
    bnezl	$at,.L0da7a29c
    sd	$s8,272($sp)
    # Line 779
    lbu	$v1,428($s1)
    beqz	$v1,.L0da7baa4
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandIntensity
.L0da7b3a0:
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a7,356($a4)
    lbu	$a3,424($s1)
    beqzl	$a3,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 783
    addiu	$s3,$s3,1
    addiu	$v1,$v0,4
    la	$at,__glSpanZeroFillAlpha
    addu	$v1,$v1,$s1
    b	.L0da7a298
    sw	$at,356($v1)
.L0da7b3d4:
    # Line 1374
    li	$a3,6407
    bne	$a0,$a3,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7b3e8:
    # Line 1707
    bnel	$a5,$a2,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1754
    lbu	$a4,428($s1)
    beqz	$a4,.L0da7bc00
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRedAlpha
.L0da7b400:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1757
    b	.L0da798f4
    # Line 1754
    sw	$v0,356($at)
.L0da7b410:
    # Line 1707
    bnez	$v1,.L0da7b734
    sltiu	$a3,$a2,6407
    beqzl	$a3,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1759
    lbu	$a4,428($s1)
    beqz	$a4,.L0da7bac8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceAlpha
.L0da7b430:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1762
    b	.L0da798f4
    # Line 1759
    sw	$v0,356($at)
.L0da7b440:
    # Line 1707
    sltiu	$v1,$a2,6409
    bnez	$v1,.L0da7b760
    sltiu	$a3,$a2,6410
    beqzl	$a3,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1729
    lbu	$a4,430($s1)
    beqz	$a4,.L0da7baac
    lbu	$v0,428($s1)
    # Line 1730
    beqz	$v0,.L0da7bb28
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0da7b46c:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da798f4
    sw	$v0,356($at)
.L0da7b47c:
    # Line 218
    move	$t8,$zero
    b	.L0da78ca4
    # Line 217
    sw	$t3,436($s1)
.L0da7b488:
    # Line 1825
    li	$v0,0x8033
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0da7b7d8
    sltu	$a3,$v0,$a6
    bnez	$a3,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1852
    li	$a4,4
    # Line 1850
    la	$at,__glSpanPack4444Ushort
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
    # Line 1853
    b	.L0da7a0a8
    # Line 1852
    sw	$a4,108($s1)
.L0da7b4c0:
    # Line 1877
    la	$a3,__glSpanPackNonCompByte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1878
    b	.L0da7a0a8
    # Line 1877
    sw	$a3,356($a4)
.L0da7b4d8:
    # Line 1909
    la	$at,__glSpanAlignPixels2Dst
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7a0c8
    sw	$at,356($v1)
.L0da7b4f0:
    b	.L0da7a850
    # Line 931
    lw	$s8,12424($s0)
.L0da7b4f8:
    b	.L0da79b40
    # Line 940
    sw	$a3,8($sp)
.L0da7b500:
    li	$a4,5120
    # Line 1825
    bne	$a4,$a6,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1827
    la	$at,__glSpanPackByte
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1828
    b	.L0da7a0a8
    # Line 1827
    sw	$at,356($v1)
.L0da7b524:
    # Line 1880
    la	$a3,__glSpanPackNonCompUbyte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1881
    b	.L0da7a0a8
    # Line 1880
    sw	$a3,356($a4)
.L0da7b53c:
    la	$at,__glSpanClampRGB
    # Line 1405
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1406
    b	.L0da79798
    # Line 1405
    sw	$at,356($v1)
.L0da7b554:
    b	.L0da7aa08
    # Line 947
    lw	$s8,12416($s0)
.L0da7b55c:
    b	.L0da79b40
    # Line 955
    sw	$a3,8($sp)
.L0da7b564:
    # Line 1833
    la	$a4,__glSpanPackShort
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1834
    b	.L0da7a0a8
    # Line 1833
    sw	$a4,356($at)
.L0da7b57c:
    # Line 691
    beqz	$v1,.L0da7ba14
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandAlpha
.L0da7b588:
    sd	$s8,272($sp)
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v0,356($a3)
.L0da7b59c:
    # Line 1392
    la	$a4,__glSpanClampRed
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1393
    b	.L0da79798
    # Line 1392
    sw	$a4,356($at)
.L0da7b5b4:
    # Line 1883
    la	$v1,__glSpanPackNonCompShort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1884
    b	.L0da7a0a8
    # Line 1883
    sw	$v1,356($a3)
.L0da7b5cc:
    b	.L0da7ab20
    # Line 962
    lw	$s8,12440($s0)
.L0da7b5d4:
    b	.L0da79b40
    # Line 970
    sw	$a4,8($sp)
.L0da7b5dc:
    # Line 582
    la	$v1,__glSpanUnpack_10_10_10_2_Uint
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 585
    b	.L0da7a1e0
    # Line 584
    sw	$at,28($s1)
.L0da7b5f8:
    b	.L0da79b68
    # Line 1461
    sw	$a4,8($sp)
.L0da7b600:
    # Line 1395
    la	$at,__glSpanClampGreen
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1396
    b	.L0da79798
    # Line 1395
    sw	$at,356($v1)
.L0da7b618:
    # Line 600
    li	$a3,5124
    bne	$a6,$a3,.L0da7a1fc
    nop
    b	.L0da7b288
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0da7b62c:
    # Line 600
    li	$a4,0x8032
    bne	$a6,$a4,.L0da7a1fc
    # Line 614
    la	$at,__glSpanClampRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 615
    b	.L0da7a1fc
    # Line 614
    sw	$at,356($v1)
.L0da7b64c:
    # Line 1886
    la	$a3,__glSpanPackNonCompUshort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1887
    b	.L0da7a0a8
    # Line 1886
    sw	$a3,356($a4)
.L0da7b664:
    b	.L0da7acbc
    # Line 977
    lw	$s8,12432($s0)
.L0da7b66c:
    b	.L0da79b40
    # Line 985
    sw	$at,8($sp)
.L0da7b674:
    # Line 1398
    la	$v1,__glSpanClampBlue
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1399
    b	.L0da79798
    # Line 1398
    sw	$v1,356($a3)
.L0da7b68c:
    # Line 1889
    la	$a4,__glSpanPackNonCompInt
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1890
    b	.L0da7a0a8
    # Line 1889
    sw	$a4,356($at)
.L0da7b6a4:
    # Line 650
    li	$v1,0x8000
    bnel	$a0,$v1,.L0da7a29c
    sd	$s8,272($sp)
    # Line 765
    lbu	$a3,30528($s0)
    beqzl	$a3,.L0da7bcd8
    # Line 768
    lbu	$a3,428($s1)
    sd	$s8,272($sp)
    # Line 766
    la	$a4,__glSpanModifyABGR
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da7a298
    sw	$a4,356($at)
.L0da7b6d8:
    # Line 741
    lbu	$v1,30528($s0)
    beqzl	$v1,.L0da7ba24
    # Line 742
    lbu	$a4,428($s1)
    sd	$s8,272($sp)
    la	$a3,__glSpanModifyRGBA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a298
    sw	$a3,356($a4)
.L0da7b700:
    # Line 1374
    li	$at,0x8000
    bne	$a0,$at,.L0da7979c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0da79780
    ld	$v1,104($sp)
.L0da7b714:
    # Line 667
    lbu	$v1,428($s1)
    beqz	$v1,.L0da7ba68
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandGreen
.L0da7b724:
    sll	$v0,$s3,0x2
    addu	$a3,$v0,$s1
    b	.L0da7a3e4
    sw	$a7,356($a3)
.L0da7b734:
    # Line 1707
    li	$a4,6405
    bnel	$a2,$a4,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1724
    lbu	$at,428($s1)
    beqz	$at,.L0da7bcf8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceBlue
.L0da7b750:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1727
    b	.L0da798f4
    # Line 1724
    sw	$v0,356($v1)
.L0da7b760:
    # Line 1707
    li	$a3,6408
    bnel	$a2,$a3,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1764
    lbu	$a4,428($s1)
    beqz	$a4,.L0da798f4
    # Line 1765
    la	$at,__glSpanPostUnscaleRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da798f4
    sw	$at,356($v1)
.L0da7b78c:
    # Line 1741
    lbu	$a3,430($s1)
    beqz	$a3,.L0da7ba78
    lbu	$v0,428($s1)
    # Line 1742
    beqz	$v0,.L0da7ba94
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRedAlpha
.L0da7b7a4:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da798f4
    sw	$v0,356($a4)
.L0da7b7b4:
    # Line 1825
    li	$at,5123
    bne	$a6,$at,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1836
    la	$v1,__glSpanPackUshort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1837
    b	.L0da7a0a8
    # Line 1836
    sw	$v1,356($a3)
.L0da7b7d8:
    # Line 1825
    li	$a4,0x8032
    bne	$a6,$a4,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1847
    li	$at,3
    # Line 1845
    la	$v1,__glSpanPack332Ubyte
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 1848
    b	.L0da7a0a8
    # Line 1847
    sw	$at,108($s1)
.L0da7b804:
    # Line 1401
    la	$a4,__glSpanClampAlpha
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1402
    b	.L0da79798
    # Line 1401
    sw	$a4,356($at)
.L0da7b81c:
    # Line 1857
    li	$v1,4
    # Line 1855
    la	$a3,__glSpanPack5551Ushort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 1858
    b	.L0da7a0a8
    # Line 1857
    sw	$v1,108($s1)
.L0da7b83c:
    # Line 529
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 530
    b	.L0da7a1e0
    # Line 529
    sw	$at,356($v1)
.L0da7b850:
    # Line 538
    la	$a4,__glSpanUnpack332Ubyte
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
    # Line 565
    b	.L0da7a1e0
    # Line 564
    sw	$a3,28($s1)
.L0da7b86c:
    # Line 735
    beqz	$v1,.L0da7ba9c
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandRedAlpha
.L0da7b878:
    sd	$s8,272($sp)
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0da7a298
    sw	$v0,356($a3)
.L0da7b88c:
    b	.L0da7a6c8
    # Line 1709
    la	$v0,__glSpanReduceRGBNS
.L0da7b894:
    # Line 600
    li	$a4,0x8035
    bne	$a6,$a4,.L0da7a1fc
    nop
    b	.L0da7b0ac
    # Line 620
    la	$at,__glSpanClampRGBA
.L0da7b8a8:
    # Line 1825
    li	$at,0x8035
    bne	$a6,$at,.L0da7a0ac
    ld	$a3,144($sp)
    # Line 1862
    li	$v1,4
    # Line 1860
    la	$a3,__glSpanPack8888Uint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 1863
    b	.L0da7a0a8
    # Line 1862
    sw	$v1,108($s1)
.L0da7b8d4:
    # Line 1707
    li	$at,0x8000
    bnel	$a2,$at,.L0da798f8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1770
    lbu	$v1,428($s1)
    beqz	$v1,.L0da7bd48
    addiu	$s3,$s3,1
    la	$v0,__glSpanReorderABGR
.L0da7b8f0:
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1773
    b	.L0da798f4
    # Line 1770
    sw	$v0,356($a3)
.L0da7b900:
    # Line 1491
    li	$a4,6407
    beq	$a0,$a4,.L0da7bad0
    li	$at,6408
    beq	$a0,$at,.L0da7bb30
    li	$v1,6401
    beq	$a0,$v1,.L0da7bbc4
    li	$a3,6400
    beq	$a0,$a3,.L0da7bc24
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7b92c:
    # Line 474
    la	$a4,__glSpanAlignPixels2
    b	.L0da7a4e4
    sw	$a4,360($s1)
.L0da7b938:
    sd	$s8,272($sp)
    # Line 867
    b	.L0da798c8
    lw	$s8,4($sp)
.L0da7b944:
    # Line 1629
    li	$at,6401
    beq	$a0,$at,.L0da7bb88
    li	$v1,6400
    beq	$a0,$v1,.L0da7bbd8
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7b960:
    b	.L0da79b68
    # Line 1454
    sw	$a3,8($sp)
.L0da7b968:
    # Line 725
    beqz	$a4,.L0da7bbbc
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandLuminanceAlpha
.L0da7b974:
    sd	$s8,272($sp)
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da7a298
    sw	$v0,356($at)
.L0da7b988:
    # Line 577
    la	$a3,__glSpanUnpack8888Uint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 580
    b	.L0da7a1e0
    # Line 579
    sw	$v1,28($s1)
.L0da7b9a4:
    # Line 483
    la	$at,__glSpanSkipPixels2
    b	.L0da7b184
    sw	$at,360($s1)
.L0da7b9b0:
    # Line 481
    b	.L0da7b184
    sw	$v1,360($s1)
.L0da7b9b8:
    sd	$s8,272($sp)
    # Line 881
    b	.L0da798c8
    lw	$s8,4($sp)
.L0da7b9c4:
    # Line 1659
    li	$a3,6402
    beq	$a0,$a3,.L0da7bbec
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7b9d8:
    # Line 655
    lbu	$a4,428($s1)
    beqz	$a4,.L0da7bc08
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandRed
.L0da7b9e8:
    sll	$v0,$s3,0x2
    addu	$at,$v0,$s1
    b	.L0da7a8cc
    sw	$a7,356($at)
.L0da7b9f8:
    b	.L0da7aba0
    # Line 1719
    la	$v0,__glSpanReduceGreenNS
.L0da7ba00:
    # Line 891
    beql	$a2,$v1,.L0da7bc10
    # Line 893
    lbu	$at,30530($s0)
    sd	$s8,272($sp)
    # Line 891
    b	.L0da798c8
    lw	$s8,4($sp)
.L0da7ba14:
    b	.L0da7b588
    # Line 691
    la	$v0,__glSpanExpandAlphaNS
.L0da7ba1c:
    b	.L0da79b68
    # Line 1447
    sw	$a3,8($sp)
.L0da7ba24:
    # Line 742
    beqzl	$a4,.L0da7a29c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 745
    la	$at,__glSpanScaleRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da7a298
    sw	$at,356($v1)
.L0da7ba48:
    # Line 679
    lbu	$a3,428($s1)
    beqz	$a3,.L0da7bd08
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandBlue
.L0da7ba58:
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    b	.L0da7ae14
    sw	$a7,356($a4)
.L0da7ba68:
    b	.L0da7b724
    # Line 667
    la	$a7,__glSpanExpandGreenNS
.L0da7ba70:
    b	.L0da7b03c
    # Line 1714
    la	$v0,__glSpanReduceRedNS
.L0da7ba78:
    # Line 1747
    beqz	$v0,.L0da7bd00
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceLuminanceAlpha
.L0da7ba84:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0da798f4
    sw	$v0,356($at)
.L0da7ba94:
    b	.L0da7b7a4
    # Line 1742
    la	$v0,__glSpanReduceRedAlphaNS
.L0da7ba9c:
    b	.L0da7b878
    # Line 735
    la	$v0,__glSpanExpandRedAlphaNS
.L0da7baa4:
    b	.L0da7b3a0
    # Line 779
    la	$a7,__glSpanExpandIntensityNS
.L0da7baac:
    # Line 1734
    beqz	$v0,.L0da7bd40
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceLuminance
.L0da7bab8:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0da798f4
    sw	$v0,356($v1)
.L0da7bac8:
    b	.L0da7b430
    # Line 1759
    la	$v0,__glSpanReduceAlphaNS
.L0da7bad0:
    # Line 1493
    ld	$a3,152($sp)
    beqz	$a3,.L0da7bd5c
    move	$s3,$zero
.L0da7badc:
    # Line 1500
    lbu	$a4,30528($s0)
    beqzl	$a4,.L0da7bd6c
    # Line 1504
    lw	$a4,30552($s0)
    # Line 1511
    lbu	$at,30592($s0)
    beqz	$at,.L0da7bed4
    # Line 1515
    nop	# was lw $t9, -30816($gp) # &__glBuildRGBAModifyTables
.L0da7baf4:
    # Line 1517
    lw	$a3,30596($s0)
    # Line 1520
    lw	$v1,30608($s0)
    # Line 1518
    lw	$a4,30600($s0)
    # Line 1519
    lw	$at,30604($s0)
    # Line 1520
    sw	$v1,30588($s0)
    ld	$v1,136($sp)
    # Line 1519
    sw	$at,30584($s0)
    # Line 1518
    sw	$a4,30580($s0)
    # Line 1520
    beqz	$v1,.L0da7bd50
    # Line 1517
    sw	$a3,30576($s0)
    # Line 1522
    la	$v0,__glSpanRenderRGBubyte2
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bb28:
    b	.L0da7b46c
    # Line 1730
    la	$v0,__glSpanReduceRedNS
.L0da7bb30:
    # Line 1529
    ld	$a3,152($sp)
    beqz	$a3,.L0da7bdbc
    move	$s3,$zero
.L0da7bb3c:
    # Line 1536
    lbu	$a4,30528($s0)
    beqzl	$a4,.L0da7bd10
    # Line 1540
    lw	$v1,30552($s0)
    # Line 1543
    lbu	$at,30592($s0)
    beqz	$at,.L0da7beec
    # Line 1546
    nop	# was lw $t9, -30816($gp) # &__glBuildRGBAModifyTables
.L0da7bb54:
    # Line 1548
    lw	$a3,30596($s0)
    # Line 1551
    lw	$v1,30608($s0)
    # Line 1549
    lw	$a4,30600($s0)
    # Line 1550
    lw	$at,30604($s0)
    # Line 1551
    sw	$v1,30588($s0)
    ld	$v1,136($sp)
    # Line 1550
    sw	$at,30584($s0)
    # Line 1549
    sw	$a4,30580($s0)
    # Line 1551
    beqz	$v1,.L0da7bd34
    # Line 1548
    sw	$a3,30576($s0)
.L0da7bb7c:
    # Line 1554
    la	$v0,__glSpanRenderRGBAubyte2
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bb88:
    # Line 1631
    lbu	$a3,30531($s0)
    beqz	$a3,.L0da7bd9c
    # Line 1638
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bb9c:
    # Line 700
    lbu	$a4,428($s1)
    beqz	$a4,.L0da7bdb4
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandRGB
.L0da7bbac:
    sll	$v0,$s3,0x2
    addu	$at,$v0,$s1
    b	.L0da7b354
    sw	$a7,356($at)
.L0da7bbbc:
    b	.L0da7b974
    # Line 725
    la	$v0,__glSpanExpandLuminanceAlphaNS
.L0da7bbc4:
    # Line 1560
    lbu	$v1,30531($s0)
    beqz	$v1,.L0da7bdcc
    # Line 1575
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bbd8:
    # Line 1643
    lbu	$a3,30529($s0)
    beqz	$a3,.L0da7bdf0
    # Line 1650
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bbec:
    # Line 1661
    lbu	$a4,30530($s0)
    beqz	$a4,.L0da7be08
    # Line 1682
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bc00:
    b	.L0da7b400
    # Line 1754
    la	$v0,__glSpanReduceRedAlphaNS
.L0da7bc08:
    b	.L0da7b9e8
    # Line 655
    la	$a7,__glSpanExpandRedNS
.L0da7bc10:
    # Line 893
    beqzl	$at,.L0da7be50
    # Line 894
    lw	$v1,31320($s0)
    sd	$s8,272($sp)
    b	.L0da798c8
    # Line 908
    lw	$s8,4($sp)
.L0da7bc24:
    # Line 1580
    ld	$v1,152($sp)
    beqz	$v1,.L0da7be90
    move	$s3,$zero
.L0da7bc30:
    # Line 1587
    lbu	$a3,30529($s0)
    beqz	$a3,.L0da7bea0
    # Line 1591
    ld	$a3,136($sp)
    # Line 1595
    lbu	$a4,3104($s0)
    beqzl	$a4,.L0da7be70
    # Line 1609
    lbu	$a3,30612($s0)
    # Line 1595
    lbu	$at,30620($s0)
    beqz	$at,.L0da7bf04
    # Line 1600
    nop	# was lw $t9, -30808($gp) # &__glBuildItoRGBAModifyTables
.L0da7bc54:
    # Line 1602
    lw	$a3,30624($s0)
    # Line 1605
    lw	$v1,30636($s0)
    # Line 1603
    lw	$a4,30628($s0)
    # Line 1604
    lw	$at,30632($s0)
    # Line 1605
    sw	$v1,30588($s0)
    ld	$v1,136($sp)
    # Line 1604
    sw	$at,30584($s0)
    # Line 1603
    sw	$a4,30580($s0)
    # Line 1605
    beqz	$v1,.L0da7beb8
    # Line 1602
    sw	$a3,30576($s0)
    # Line 1607
    la	$v0,__glSpanRenderCIubyte4
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bc88:
    b	.L0da7b080
    # Line 1775
    la	$v0,__glSpanReduceRedNS
.L0da7bc90:
    li	$a3,6410
    # Line 346
    beql	$a3,$a2,.L0da7933c
    sd	$zero,216($sp)
    b	.L0da7a4a0
    li	$at,6409
.L0da7bca4:
    li	$a4,6403
    beql	$a4,$a2,.L0da7933c
    sd	$zero,216($sp)
    b	.L0da7a4a8
    li	$v1,6403
.L0da7bcb8:
    # Line 712
    lbu	$at,428($s1)
    beqz	$at,.L0da7bec4
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandLuminance
.L0da7bcc8:
    sll	$v0,$s3,0x2
    addu	$v1,$v0,$s1
    b	.L0da7af88
    sw	$a7,356($v1)
.L0da7bcd8:
    # Line 768
    beqz	$a3,.L0da7becc
    addiu	$s3,$s3,1
    la	$v0,__glSpanScaleABGR
.L0da7bce4:
    sd	$s8,272($sp)
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0da7a298
    sw	$v0,356($a4)
.L0da7bcf8:
    b	.L0da7b750
    # Line 1724
    la	$v0,__glSpanReduceBlueNS
.L0da7bd00:
    b	.L0da7ba84
    # Line 1747
    la	$v0,__glSpanReduceRedAlphaNS
.L0da7bd08:
    b	.L0da7ba58
    # Line 679
    la	$a7,__glSpanExpandBlueNS
.L0da7bd10:
    # Line 1543
    lw	$at,30564($s0)
    # Line 1541
    lw	$a3,30556($s0)
    # Line 1542
    lw	$a4,30560($s0)
    # Line 1543
    sw	$at,30588($s0)
    # Line 1551
    ld	$at,136($sp)
    # Line 1542
    sw	$a4,30584($s0)
    # Line 1541
    sw	$a3,30580($s0)
    # Line 1551
    bnez	$at,.L0da7bb7c
    # Line 1540
    sw	$v1,30576($s0)
.L0da7bd34:
    # Line 1556
    la	$v0,__glSpanRenderRGBAubyte
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bd40:
    b	.L0da7bab8
    # Line 1734
    la	$v0,__glSpanReduceRedNS
.L0da7bd48:
    b	.L0da7b8f0
    # Line 1770
    la	$v0,__glSpanReorderABGRNS
.L0da7bd50:
    # Line 1524
    la	$v0,__glSpanRenderRGBubyte
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bd5c:
    # Line 1500
    la	$v1,__glSpanUnpackRGBubyte
    li	$s3,1
    b	.L0da7badc
    sw	$v1,360($s1)
.L0da7bd6c:
    # Line 1507
    lw	$a3,30564($s0)
    # Line 1505
    lw	$at,30556($s0)
    # Line 1506
    lw	$v1,30560($s0)
    # Line 1507
    sw	$a3,30588($s0)
    ld	$a3,136($sp)
    # Line 1506
    sw	$v1,30584($s0)
    # Line 1505
    sw	$at,30580($s0)
    # Line 1507
    beqz	$a3,.L0da7bf1c
    # Line 1504
    sw	$a4,30576($s0)
    # Line 1509
    la	$v0,__glSpanRenderRGBubyte2
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bd9c:
    # Line 1634
    ld	$a4,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a4,.L0da7bf28
    ld	$s0,232($sp)
    # Line 1636
    b	.L0da794d4
    la	$v0,__glSpanRenderStencilUshort2
.L0da7bdb4:
    b	.L0da7bbac
    # Line 700
    la	$a7,__glSpanExpandRGBNS
.L0da7bdbc:
    # Line 1536
    la	$at,__glSpanUnpackRGBAubyte
    li	$s3,1
    b	.L0da7bb3c
    sw	$at,360($s1)
.L0da7bdcc:
    # Line 1561
    ld	$v1,152($sp)
    move	$s3,$zero
    beqz	$v1,.L0da7bf4c
    ld	$s0,232($sp)
.L0da7bddc:
    ld	$a3,136($sp)
    # Line 1569
    beqz	$a3,.L0da7bf30
    nop
    # Line 1573
    b	.L0da794d4
    la	$v0,__glSpanRenderStencilUbyte2
.L0da7bdf0:
    # Line 1646
    ld	$a4,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a4,.L0da7bf38
    ld	$s0,232($sp)
    # Line 1648
    b	.L0da794d4
    la	$v0,__glSpanRenderCIushort2
.L0da7be08:
    # Line 1662
    lw	$v1,31304($s0)
    # Line 1663
    addiu	$at,$v1,1
    lw	$a3,31308($s0)
    lw	$a4,31320($s0)
    and	$at,$at,$v1
    sltiu	$at,$at,1
    srlv	$a3,$a3,$a4
    addiu	$v1,$a3,1
    and	$v1,$v1,$a3
    sltiu	$v1,$v1,1
    and	$at,$at,$v1
    beqz	$at,.L0da7bf40
    # Line 1677
    ld	$a3,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a3,.L0da7bf68
    ld	$s0,232($sp)
    # Line 1680
    b	.L0da794d4
    la	$v0,__glSpanRenderDepthUint1
.L0da7be50:
    # Line 894
    lw	$at,31308($s0)
    srlv	$at,$at,$v1
    addiu	$a4,$at,1
    and	$a4,$a4,$at
    beqz	$a4,.L0da7bf5c
    sd	$s8,272($sp)
    b	.L0da798c8
    # Line 908
    lw	$s8,4($sp)
.L0da7be70:
    # Line 1609
    beqz	$a3,.L0da7bf88
.L0da7be74:
    # Line 1615
    ld	$a4,136($sp)
    lw	$at,30616($s0)
    beqz	$a4,.L0da7bf70
    sw	$at,30572($s0)
    # Line 1617
    la	$v0,__glSpanRenderCIubyte2
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7be90:
    # Line 1587
    la	$v1,__glSpanUnpackIndexUbyte
    li	$s3,1
    b	.L0da7bc30
    sw	$v1,360($s1)
.L0da7bea0:
    # Line 1591
    lw	$a4,30568($s0)
    beqz	$a3,.L0da7bf7c
    sw	$a4,30572($s0)
    # Line 1593
    la	$v0,__glSpanRenderCIubyte2
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7beb8:
    # Line 1609
    la	$v0,__glSpanRenderCIubyte3
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bec4:
    b	.L0da7bcc8
    # Line 712
    la	$a7,__glSpanExpandLuminanceNS
.L0da7becc:
    b	.L0da7bce4
    # Line 768
    la	$v0,__glSpanPreReorderABGR
.L0da7bed4:
    # Line 1515
    move	$a0,$s0
    sd	$ra,280($sp)
    jal	__glBuildItoRGBAModifyTables
    addiu	$a1,$s0,30528
    b	.L0da7baf4
    ld	$ra,280($sp)
.L0da7beec:
    # Line 1546
    move	$a0,$s0
    sd	$ra,280($sp)
    jalr	$t9
    addiu	$a1,$s0,30528
    b	.L0da7bb54
    ld	$ra,280($sp)
.L0da7bf04:
    # Line 1600
    move	$a0,$s0
    sd	$ra,280($sp)
    jalr	$t9
    addiu	$a1,$s0,30528
    b	.L0da7bc54
    ld	$ra,280($sp)
.L0da7bf1c:
    # Line 1511
    la	$v0,__glSpanRenderRGBubyte
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bf28:
    b	.L0da794d4
    # Line 1638
    la	$v0,__glSpanRenderStencilUshort
.L0da7bf30:
    b	.L0da794d4
    # Line 1575
    la	$v0,__glSpanRenderStencilUbyte
.L0da7bf38:
    b	.L0da794d4
    # Line 1650
    la	$v0,__glSpanRenderCIushort
.L0da7bf40:
    # Line 1682
    lw	$v0,8($sp)
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bf4c:
    # Line 1569
    la	$at,__glSpanUnpackIndexUbyte
    li	$s3,1
    b	.L0da7bddc
    sw	$at,360($s1)
.L0da7bf5c:
    # Line 908
    la	$s8,__glSpanReadDepthUint
    b	.L0da798c8
    # Line 906
    addiu	$s3,$s3,-1
.L0da7bf68:
    b	.L0da794d4
    # Line 1682
    la	$v0,__glSpanRenderDepthUint
.L0da7bf70:
    # Line 1619
    la	$v0,__glSpanRenderCIubyte
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bf7c:
    # Line 1595
    la	$v0,__glSpanRenderCIubyte
    b	.L0da794d4
    ld	$s0,232($sp)
.L0da7bf88:
    # Line 1613
    # lw $t9, -30812($gp) # &__glBuildItoIModifyTables
    move	$a0,$s0
    sd	$ra,280($sp)
    jal	__glBuildItoIModifyTables
    addiu	$a1,$s0,30528
    b	.L0da7be74
    ld	$ra,280($sp)
.end PickSpanModifiers

# Function: __glClipDrawPixels
# Declared: Line 2010 (Source lines: 2011-2213)
# Address: 0x0da7bfa4 - 0x0da7c504 (Size: 1376 bytes, Frame: 0)
.globl __glClipDrawPixels
.ent __glClipDrawPixels
__glClipDrawPixels:
    # Line 2022
    lwc1	$f4,160($a1)
    # Line 2011
    lui	$v0,0x18
    addiu	$v0,$v0,-18236
    # addu	at,t9,v0
    # Line 2024
    mtc1	$zero,$f9
    c.eq.s	$f4,$f9
    # Line 2023
    lwc1	$f5,164($a1)
    # Line 2024
    bc1t	.L0da7c0f8
    # Line 2025
    move	$v0,$zero
    # Line 2024
    c.eq.s	$f5,$f9
    nop
    bc1t	.L0da7c0f8
    nop
    # Line 2029
    lw	$a2,29704($a0)
    mtc1	$a2,$f7
    # Line 2030
    lw	$a3,29708($a0)
    # Line 2029
    cvt.s.w	$f7,$f7
    # Line 2030
    mtc1	$a3,$f13
    # Line 2032
    lw	$v0,29716($a0)
    # Line 2030
    cvt.s.w	$f13,$f13
    # Line 2032
    mtc1	$v0,$f12
    # Line 2031
    lw	$a4,29712($a0)
    # Line 2032
    cvt.s.w	$f12,$f12
    # Line 2031
    mtc1	$a4,$f8
    nop
    cvt.s.w	$f8,$f8
    lwc1	$f0,3392($a0)
    # Line 2032
    sub.s	$f12,$f12,$f0
    lui	$v1,0x800
    # Line 2031
    sub.s	$f8,$f8,$f0
    # Line 2029
    lwc1	$f0,3280($a0)
    # Line 2032
    lw	$a4,1696($a0)
    # Line 2041
    addiu	$v0,$a0,880
    # Line 2030
    add.s	$f13,$f13,$f0
    # Line 2032
    and	$v1,$a4,$v1
    beqz	$v1,.L0da7c14c
    # Line 2029
    add.s	$f7,$f7,$f0
    # Line 2032
    lw	$v1,928($a0)
    beqz	$v1,.L0da7c150
    # Line 2043
    lui	$v1,0x400
    # Line 2038
    lw	$a2,932($a0)
    beqz	$a2,.L0da7c150
    # Line 2043
    lui	$v1,0x400
    # Line 2041
    sw	$v0,436($a1)
    # Line 2043
    lw	$a7,932($a0)
    # Line 2042
    lw	$a6,928($a0)
    # Line 2043
    addiu	$a7,$a7,-1
    # Line 2042
    addiu	$a6,$a6,-1
.L0da7c064:
    # Line 2055
    lw	$a5,172($a1)
.L0da7c068:
    subu	$a5,$a5,$a7
    # Line 2082
    mtc1	$a5,$f14
    # Line 2054
    lw	$a4,168($a1)
    # Line 2082
    cvt.s.w	$f14,$f14
    # Line 2054
    subu	$a4,$a4,$a6
    # Line 2081
    mtc1	$a4,$f10
    nop
    cvt.s.w	$f10,$f10
    # Line 2082
    mul.s	$f14,$f14,$f5
    # Line 2081
    mul.s	$f10,$f10,$f4
    # Line 2058
    lwc1	$f11,200($a1)
    # Line 2082
    c.lt.s	$f9,$f4
    # Line 2057
    lwc1	$f6,196($a1)
    # Line 2082
    add.s	$f14,$f14,$f11
    bc1f	.L0da7c100
    # Line 2081
    add.s	$f10,$f10,$f6
    # Line 2082
    c.lt.s	$f7,$f6
    nop
    bc1fl	.L0da7c0d4
    # Line 2092
    sub.s	$f1,$f7,$f6
    # Line 2090
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f6
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f7,3280($a0)
    add.s	$f7,$f7,$f0
    # Line 2092
    sub.s	$f1,$f7,$f6
.L0da7c0d4:
    div.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t1,$f1
    nop
    slt	$t0,$t1,$a4
    bnez	$t0,.L0da7c180
    move	$t0,$t1
    # Line 2093
    jr	$ra
    move	$v0,$zero
.L0da7c0f8:
    # Line 2025
    jr	$ra
    nop
.L0da7c100:
    # Line 2113
    c.lt.s	$f6,$f8
    nop
    bc1fl	.L0da7c128
    # Line 2121
    sub.s	$f0,$f8,$f6
    # Line 2119
    lwc1	$f0,3392($a0)
    add.s	$f8,$f0,$f6
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    sub.s	$f8,$f8,$f0
    # Line 2121
    sub.s	$f0,$f8,$f6
.L0da7c128:
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t1,$f0
    nop
    slt	$v0,$t1,$a4
    bnez	$v0,.L0da7c200
    move	$t0,$t1
    # Line 2122
    jr	$ra
    move	$v0,$zero
.L0da7c14c:
    # Line 2043
    lui	$v1,0x400
.L0da7c150:
    and	$v1,$a4,$v1
    beqz	$v1,.L0da7c378
    # Line 2051
    move	$a6,$zero
    # Line 2043
    lw	$a4,860($a0)
    beqz	$a4,.L0da7c378
    # Line 2051
    move	$a6,$zero
    # Line 2045
    lw	$a5,864($a0)
    beqz	$a5,.L0da7c374
    # Line 2049
    addiu	$a7,$a5,-1
    # Line 2048
    addiu	$a6,$a4,-1
    # Line 2049
    b	.L0da7c068
    # Line 2055
    lw	$a5,172($a1)
.L0da7c180:
    # Line 2095
    subu	$a4,$a4,$t1
    # Line 2097
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2096
    trunc.w.s	$f3,$f7
    # Line 2097
    mul.s	$f2,$f2,$f4
    # Line 2096
    mfc1	$t2,$f3
    # Line 2099
    c.lt.s	$f10,$f8
    # Line 2096
    sw	$t2,204($a1)
    # Line 2097
    add.s	$f2,$f2,$f6
    # Line 2098
    lwc1	$f1,3392($a0)
    # Line 2099
    lw	$a2,48($a1)
    # Line 2098
    add.s	$f1,$f1,$f2
    # Line 2099
    addu	$a2,$a2,$t0
    sw	$a2,48($a1)
    bc1f	.L0da7c1d8
    # Line 2098
    swc1	$f1,196($a1)
    # Line 2105
    lwc1	$f0,3392($a0)
    add.s	$f8,$f0,$f10
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    sub.s	$f8,$f8,$f0
.L0da7c1d8:
    sub.s	$f0,$f10,$f8
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    nop
    slt	$a3,$t0,$a4
    bnezl	$a3,.L0da7c290
    # Line 2112
    trunc.w.s	$f2,$f8
    # Line 2108
    jr	$ra
    move	$v0,$zero
.L0da7c200:
    # Line 2124
    subu	$a4,$a4,$t1
    # Line 2126
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2125
    trunc.w.s	$f3,$f8
    # Line 2126
    mul.s	$f2,$f2,$f4
    # Line 2125
    mfc1	$t2,$f3
    nop
    sw	$t2,204($a1)
    # Line 2126
    add.s	$f2,$f2,$f6
    # Line 2127
    lwc1	$f1,3392($a0)
    # Line 2128
    c.lt.s	$f7,$f10
    # Line 2127
    add.s	$f1,$f1,$f2
    lwc1	$f2,3284($a0)
    # Line 2128
    lw	$v0,48($a1)
    # Line 2127
    sub.s	$f1,$f1,$f2
    # Line 2128
    addu	$v0,$v0,$t0
    sw	$v0,48($a1)
    bc1f	.L0da7c268
    # Line 2127
    swc1	$f1,196($a1)
    # Line 2133
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f10
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f7,3280($a0)
    add.s	$f7,$f7,$f0
.L0da7c268:
    sub.s	$f1,$f10,$f7
    div.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    nop
    slt	$v1,$t0,$a4
    bnezl	$v1,.L0da7c2b0
    # Line 2140
    trunc.w.s	$f3,$f7
    # Line 2136
    jr	$ra
    move	$v0,$zero
.L0da7c290:
    # Line 2112
    mfc1	$t1,$f2
    # Line 2110
    subu	$a4,$a4,$t0
    # Line 2112
    addiu	$v0,$t1,1
    sw	$v0,212($a1)
    # Line 2113
    subu	$t1,$t1,$t2
    addiu	$t1,$t1,1
    b	.L0da7c2cc
    sw	$t1,216($a1)
.L0da7c2b0:
    # Line 2140
    mfc1	$t1,$f3
    # Line 2138
    subu	$a4,$a4,$t0
    # Line 2140
    addiu	$v0,$t1,-1
    sw	$v0,212($a1)
    # Line 2141
    subu	$t1,$t2,$t1
    addiu	$t1,$t1,1
    sw	$t1,216($a1)
.L0da7c2cc:
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da7c32c
    # Line 2171
    c.lt.s	$f11,$f12
    # Line 2141
    c.lt.s	$f13,$f11
    nop
    bc1fl	.L0da7c308
    # Line 2151
    sub.s	$f1,$f13,$f11
    # Line 2149
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f11
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f13,3280($a0)
    add.s	$f13,$f13,$f0
    # Line 2151
    sub.s	$f1,$f13,$f11
.L0da7c308:
    div.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$t2,$f1
    nop
    slt	$v1,$t2,$a5
    bnez	$v1,.L0da7c380
    move	$t0,$t2
    # Line 2152
    jr	$ra
    move	$v0,$zero
.L0da7c32c:
    nop
    # Line 2171
    bc1fl	.L0da7c350
    # Line 2179
    sub.s	$f0,$f12,$f11
    # Line 2177
    lwc1	$f0,3392($a0)
    add.s	$f12,$f0,$f11
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f0
    # Line 2179
    sub.s	$f0,$f12,$f11
.L0da7c350:
    div.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    slt	$a2,$t2,$a5
    bnez	$a2,.L0da7c400
    move	$t0,$t2
    # Line 2180
    jr	$ra
    move	$v0,$zero
.L0da7c374:
    # Line 2051
    move	$a6,$zero
.L0da7c378:
    b	.L0da7c064
    # Line 2052
    move	$a7,$zero
.L0da7c380:
    # Line 2156
    mtc1	$t2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2155
    trunc.w.s	$f3,$f13
    # Line 2156
    mul.s	$f2,$f2,$f5
    # Line 2155
    mfc1	$t3,$f3
    # Line 2158
    c.lt.s	$f14,$f12
    # Line 2155
    sw	$t3,208($a1)
    # Line 2156
    add.s	$f2,$f2,$f11
    # Line 2157
    lwc1	$f1,3392($a0)
    # Line 2158
    lw	$a3,52($a1)
    # Line 2154
    subu	$a5,$a5,$t2
    # Line 2157
    add.s	$f1,$f1,$f2
    # Line 2158
    addu	$a3,$a3,$t0
    sw	$a3,52($a1)
    bc1f	.L0da7c3d8
    # Line 2157
    swc1	$f1,200($a1)
    # Line 2164
    lwc1	$f0,3392($a0)
    add.s	$f12,$f0,$f14
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f0
.L0da7c3d8:
    sub.s	$f0,$f14,$f12
    div.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slt	$v0,$a0,$a5
    bnezl	$v0,.L0da7c48c
    # Line 2171
    trunc.w.s	$f2,$f12
    # Line 2167
    jr	$ra
    move	$v0,$zero
.L0da7c400:
    # Line 2184
    mtc1	$t2,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    # Line 2183
    trunc.w.s	$f3,$f12
    mfc1	$t3,$f3
    # Line 2184
    add.s	$f2,$f2,$f11
    # Line 2183
    sw	$t3,208($a1)
    # Line 2186
    lwc1	$f1,3392($a0)
    # Line 2187
    c.lt.s	$f13,$f14
    # Line 2186
    add.s	$f1,$f1,$f2
    lwc1	$f2,3284($a0)
    # Line 2187
    lw	$v1,52($a1)
    # Line 2182
    subu	$a5,$a5,$t2
    # Line 2186
    sub.s	$f1,$f1,$f2
    # Line 2187
    addu	$v1,$v1,$t0
    sw	$v1,52($a1)
    bc1f	.L0da7c464
    # Line 2186
    swc1	$f1,200($a1)
    # Line 2192
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f14
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f13,3280($a0)
    add.s	$f13,$f13,$f0
.L0da7c464:
    sub.s	$f1,$f14,$f13
    div.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$a2,$a0,$a5
    bnezl	$a2,.L0da7c4a4
    # Line 2199
    trunc.w.s	$f3,$f13
    # Line 2195
    jr	$ra
    move	$v0,$zero
.L0da7c48c:
    # Line 2171
    mfc1	$a3,$f2
    # Line 2169
    subu	$a5,$a5,$a0
    # Line 2171
    subu	$a3,$a3,$t3
    addiu	$a3,$a3,1
    b	.L0da7c4b8
    sw	$a3,220($a1)
.L0da7c4a4:
    # Line 2199
    mfc1	$v0,$f3
    # Line 2197
    subu	$a5,$a5,$a0
    # Line 2199
    subu	$v0,$t3,$v0
    addiu	$v0,$v0,1
    sw	$v0,220($a1)
.L0da7c4b8:
    # Line 2203
    addu	$v1,$a7,$a5
    c.lt.s	$f4,$f9
    sw	$v1,172($a1)
    # Line 2202
    addu	$a0,$a6,$a4
    # Line 2203
    bc1f	.L0da7c4d4
    # Line 2202
    sw	$a0,168($a1)
    # Line 2205
    neg.s	$f4,$f4
.L0da7c4d4:
    lwc1	$f0,_lit_3f800000
    c.le.s	$f0,$f4
    nop
    bc1f	.L0da7c4f4
    # Line 2209
    addu	$a2,$t1,$a6
    # Line 2207
    sw	$a0,180($a1)
    b	.L0da7c4fc
    sw	$a0,184($a1)
.L0da7c4f4:
    # Line 2209
    sw	$a2,180($a1)
    sw	$a2,184($a1)
.L0da7c4fc:
    # Line 2213
    jr	$ra
    li	$v0,1
.end __glClipDrawPixels

# Function: __glComputeSpanPixelArray
# Declared: Line 2230 (Source lines: 2231-2289)
# Address: 0x0da7c504 - 0x0da7c71c (Size: 536 bytes, Frame: 0)
.globl __glComputeSpanPixelArray
.ent __glComputeSpanPixelArray
__glComputeSpanPixelArray:
    # Line 2237
    lwc1	$f5,160($a1)
    # Line 2231
    lui	$v0,0x18
    addiu	$v0,$v0,-19612
    # addu	at,t9,v0
    # Line 2237
    lwc1	$f4,_lit_bf800000
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0da7c568
    # Line 2264
    c.lt.s	$f5,$f4
    # Line 2237
    lwc1	$f0,3284($a0)
    c.lt.s	$f5,$f0
    nop
    bc1fl	.L0da7c568
    # Line 2264
    c.lt.s	$f5,$f4
    # Line 2244
    lw	$a6,312($a1)
    # Line 2242
    lw	$a4,168($a1)
    # Line 2243
    lwc1	$f4,196($a1)
    # Line 2249
    move	$a7,$zero
    # Line 2250
    blez	$a4,.L0da7c700
    move	$a0,$zero
    trunc.w.s	$f1,$f4
    mfc1	$a1,$f1
    b	.L0da7c6b4
    # Line 2252
    add.s	$f4,$f5,$f4
    # Line 2264
    c.lt.s	$f5,$f4
.L0da7c568:
    nop
    bc1tl	.L0da7c58c
    # Line 2276
    lwc1	$f4,196($a1)
    # Line 2264
    lwc1	$f2,3284($a0)
    c.lt.s	$f2,$f5
    nop
    bc1f	.L0da7c684
    nop
    # Line 2276
    lwc1	$f4,196($a1)
.L0da7c58c:
    # Line 2275
    lw	$a6,312($a1)
    # Line 2274
    lw	$t0,240($a1)
    # Line 2271
    lw	$a4,180($a1)
    # Line 2277
    move	$a0,$zero
    # Line 2272
    lw	$t1,204($a1)
    # Line 2271
    addiu	$a4,$a4,-1
    # Line 2277
    blez	$a4,.L0da7c66c
    # Line 2273
    move	$a7,$t1
    andi	$a5,$a4,0x3
    beqz	$a5,.L0da7c5e0
    # Line 2277
    move	$t2,$a4
.L0da7c5b8:
    # Line 2278
    add.s	$f4,$f5,$f4
    # Line 2280
    trunc.w.s	$f3,$f4
    # Line 2277
    addiu	$a0,$a0,1
    # Line 2280
    mfc1	$v1,$f3
    addiu	$a6,$a6,2
    addi	$a5,$a5,-1
    subu	$v0,$v1,$a7
    # Line 2281
    move	$a7,$v1
    bnez	$a5,.L0da7c5b8
    # Line 2280
    sh	$v0,-2($a6)
.L0da7c5e0:
    move	$t3,$a0
    move	$t9,$a7
    move	$t8,$a6
    sra	$a2,$t2,0x2
    beqz	$a2,.L0da7c66c
    mov.s	$f6,$f4
    move	$a6,$t3
    move	$a5,$t9
    move	$a0,$t8
    mov.s	$f4,$f6
.L0da7c608:
    # Line 2278
    add.s	$f3,$f5,$f4
    add.s	$f0,$f5,$f3
    add.s	$f1,$f5,$f0
    add.s	$f4,$f5,$f1
    # Line 2280
    trunc.w.s	$f3,$f3
    trunc.w.s	$f2,$f4
    mfc1	$v1,$f3
    trunc.w.s	$f1,$f1
    addiu	$a0,$a0,8
    subu	$a2,$v1,$a5
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f2
    mfc1	$a7,$f1
    # Line 2277
    addiu	$a6,$a6,4
    # Line 2280
    mfc1	$v0,$f0
    subu	$a3,$a5,$a7
    sh	$a2,-8($a0)
    subu	$v1,$v0,$v1
    sh	$v1,-6($a0)
    subu	$a7,$a7,$v0
    sh	$a7,-4($a0)
    # Line 2277
    bne	$a4,$a6,.L0da7c608
    # Line 2280
    sh	$a3,-2($a0)
    move	$a6,$a0
    move	$a7,$a5
.L0da7c66c:
    # Line 2277
    li	$a3,1
    beq	$t0,$a3,.L0da7c70c
    lw	$a0,216($a1)
    # Line 2286
    subu	$v0,$t1,$a7
    subu	$v0,$v0,$a0
    sh	$v0,0($a6)
.L0da7c684:
    # Line 2289
    jr	$ra
    nop
.L0da7c68c:
    # Line 2255
    beqz	$a0,.L0da7c69c
    # Line 2258
    subu	$v1,$a0,$a7
    addiu	$a6,$a6,2
    sh	$v1,-2($a6)
.L0da7c69c:
    # Line 2260
    move	$a7,$a0
    # Line 2250
    addiu	$a0,$a0,1
    slt	$a2,$a0,$a4
    beqz	$a2,.L0da7c700
    nop
    # Line 2252
    add.s	$f4,$f5,$f4
.L0da7c6b4:
    trunc.w.s	$f0,$f4
    # Line 2250
    move	$a5,$a1
    # Line 2252
    mfc1	$a1,$f0
    nop
    bne	$a1,$a5,.L0da7c68c
    slt	$a3,$a0,$a4
    beqz	$a3,.L0da7c68c
    nop
    # Line 2254
    add.s	$f4,$f5,$f4
.L0da7c6d8:
    # Line 2255
    trunc.w.s	$f1,$f4
    mfc1	$a1,$f1
    nop
    bne	$a1,$a5,.L0da7c68c
    addiu	$a0,$a0,1
    slt	$v0,$a0,$a4
    bnezl	$v0,.L0da7c6d8
    # Line 2254
    add.s	$f4,$f5,$f4
    b	.L0da7c68c
    nop
.L0da7c700:
    # Line 2263
    li	$v1,1
    # Line 2289
    jr	$ra
    # Line 2263
    sh	$v1,0($a6)
.L0da7c70c:
    # Line 2284
    subu	$a2,$a7,$t1
    subu	$a2,$a0,$a2
    # Line 2289
    jr	$ra
    # Line 2284
    sh	$a2,0($a6)
.end __glComputeSpanPixelArray

# Function: __glLoadUnpackModes
# Declared: Line 2296 (Source lines: 2298-2333)
# Address: 0x0da7c71c - 0x0da7c7ac (Size: 144 bytes, Frame: 0)
.globl __glLoadUnpackModes
.ent __glLoadUnpackModes
__glLoadUnpackModes:
    # Line 2298
    beqz	$a2,.L0da7c750
    # Line 2305
    li	$v1,1
    # Line 2310
    sw	$zero,40($a1)
    # Line 2309
    sw	$zero,44($a1)
    # Line 2308
    sw	$zero,56($a1)
    # Line 2307
    sw	$zero,52($a1)
    # Line 2306
    sw	$zero,48($a1)
    # Line 2312
    lw	$v0,172($a1)
    # Line 2305
    sw	$v1,68($a1)
    # Line 2311
    lw	$at,168($a1)
    # Line 2312
    sw	$v0,64($a1)
    # Line 2333
    jr	$ra
    # Line 2311
    sw	$at,60($a1)
.L0da7c750:
    # Line 2322
    lw	$at,1124($a0)
    # Line 2321
    lw	$a3,1132($a0)
    # Line 2320
    lw	$a4,1112($a0)
    # Line 2322
    sw	$at,68($a1)
    # Line 2323
    lw	$a2,1120($a0)
    sw	$a2,48($a1)
    # Line 2324
    lw	$v1,1116($a0)
    sw	$v1,52($a1)
    # Line 2325
    lw	$v0,1128($a0)
    sw	$v0,56($a1)
    # Line 2326
    lbu	$at,1109($a0)
    sw	$at,44($a1)
    # Line 2327
    lbu	$a2,1108($a0)
    blez	$a4,.L0da7c7a4
    sw	$a2,40($a1)
.L0da7c78c:
    # Line 2329
    bgtz	$a3,.L0da7c798
    sw	$a4,60($a1)
    # Line 2330
    lw	$a3,172($a1)
.L0da7c798:
    # Line 2331
    sw	$a3,64($a1)
    # Line 2333
    jr	$ra
    nop
.L0da7c7a4:
    b	.L0da7c78c
    # Line 2328
    lw	$a4,168($a1)
.end __glLoadUnpackModes

# Function: __glInitDrawPixelsInfo
# Declared: Line 2335 (Source lines: 2338-2398)
# Address: 0x0da7c7ac - 0x0da7c8c4 (Size: 280 bytes, Frame: 0)
.globl __glInitDrawPixelsInfo
.ent __glInitDrawPixelsInfo
__glInitDrawPixelsInfo:
    # Line 2343
    lwc1	$f6,348($a0)
    # Line 2345
    lwc1	$f1,344($a0)
    # Line 2346
    swc1	$f6,200($a1)
    # Line 2345
    swc1	$f1,196($a1)
    # Line 2347
    lwc1	$f0,352($a0)
    trunc.l.s	$f0,$f0
    # Line 2338
    lui	$v1,0x18
    # Line 2347
    dmfc1	$v0,$f0
    # Line 2338
    addiu	$v1,$v1,-20292
    # addu	at,t9,v1
    # Line 2347
    sw	$v0,248($a1)
    # Line 2348
    mtc1	$zero,$f7
    lwc1	$f5,720($a0)
    c.lt.s	$f7,$f5
    # Line 2362
    li	$t0,-1
    # Line 2348
    bc1f	.L0da7c810
    # Line 2355
    lwc1	$f4,_lit_bf800000
    # Line 2348
    lwc1	$f4,3284($a0)
    c.lt.s	$f5,$f4
    # Line 2355
    li	$a7,1
    # Line 2348
    bc1fl	.L0da7c808
    # Line 2353
    swc1	$f5,244($a1)
    # Line 2351
    swc1	$f4,244($a1)
.L0da7c808:
    # Line 2355
    b	.L0da7c828
    sw	$a7,240($a1)
.L0da7c810:
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0da7c824
    # Line 2360
    swc1	$f5,244($a1)
    # Line 2358
    swc1	$f4,244($a1)
.L0da7c824:
    # Line 2362
    sw	$t0,240($a1)
.L0da7c828:
    # Line 2364
    swc1	$f5,160($a1)
    # Line 2365
    lbu	$v0,4552($a0)
    # Line 2378
    li	$t0,6400
    # Line 2365
    beqz	$v0,.L0da7c8b4
    lwc1	$f4,724($a0)
    # Line 2367
    neg.s	$f4,$f4
.L0da7c840:
    # Line 2369
    c.lt.s	$f7,$f4
    # Line 2372
    li	$v1,1
    # Line 2369
    bc1f	.L0da7c858
    # Line 2374
    li	$a7,-1
    # Line 2372
    b	.L0da7c85c
    sw	$v1,236($a1)
.L0da7c858:
    # Line 2374
    sw	$a7,236($a1)
.L0da7c85c:
    # Line 2378
    sw	$a3,172($a1)
    # Line 2377
    sw	$a2,168($a1)
    # Line 2378
    bne	$a4,$t0,.L0da7c880
    # Line 2376
    swc1	$f4,164($a1)
    # Line 2378
    lbu	$v0,3104($a0)
    beqz	$v0,.L0da7c880
    # Line 2380
    li	$v1,6408
    b	.L0da7c884
    sw	$v1,80($a1)
.L0da7c880:
    # Line 2382
    sw	$a4,80($a1)
.L0da7c884:
    # Line 2394
    li	$a7,4
    # Line 2396
    sw	$zero,88($a1)
    # Line 2395
    sw	$zero,120($a1)
    # Line 2386
    sw	$a6,8($a1)
    # Line 2385
    sw	$a5,4($a1)
    # Line 2384
    sw	$a4,0($a1)
    # Line 2394
    sw	$a7,116($a1)
    # Line 2393
    li	$a0,5126
    # Line 2397
    li	$t0,2
    sw	$t0,432($a1)
    # Line 2398
    jr	$ra
    # Line 2393
    sw	$a0,84($a1)
.L0da7c8b4:
    # Line 2369
    lwc1	$f2,3388($a0)
    add.s	$f2,$f2,$f6
    b	.L0da7c840
    swc1	$f2,200($a1)
.end __glInitDrawPixelsInfo

# Function: __glDrawPixelSpans
# Declared: Line 2400 (Source lines: 2401-2461)
# Address: 0x0da7c8c4 - 0x0da7cb08 (Size: 580 bytes, Frame: 0)
.globl __glDrawPixelSpans
.ent __glDrawPixelSpans
__glDrawPixelSpans:
    # Line 2401
    move	$a3,$s8
    addiu	$sp,$sp,-208
    addiu	$s8,$sp,208
    sd	$s3,-152($s8)
    sd	$s6,-160($s8)
    sdc1	$f28,-136($s8)
    sdc1	$f30,-144($s8)
    sd	$ra,-80($s8)
    lui	$v1,0x18
    addiu	$v1,$v1,-20572
    # sd	gp,-120(s8)
    # addu	gp,t9,v1
    sd	$s4,-112($s8)
    move	$s4,$a0
    # Line 2408
    lw	$at,30652($s4)
    sd	$s1,-104($s8)
    # Line 2401
    move	$s1,$a1
    # Line 2405
    lw	$a2,352($s1)
    # Line 2425
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    sd	$at,-72($s8)
    sd	$a2,-96($s8)
    # Line 2417
    lw	$a2,168($s1)
    sd	$a3,-128($s8)
    li	$a3,-16
    # Line 2421
    addu	$v0,$a2,$a2
    addiu	$v0,$v0,15
    and	$v0,$v0,$a3
    # Line 2417
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,15
    and	$a2,$a2,$a3
    subu	$sp,$sp,$a2
    # Line 2420
    move	$a3,$sp
    sd	$sp,-64($s8)
    subu	$sp,$sp,$a2
    # Line 2421
    move	$v1,$sp
    sd	$sp,-32($s8)
    subu	$sp,$sp,$v0
    # Line 2425
    bal __glComputeSpanPixelArray
    # Line 2424
    sw	$sp,312($s1)
    # Line 2432
    lwc1	$f28,200($s1)
    # Line 2430
    lwc1	$f30,164($s1)
    # Line 2434
    move	$s6,$zero
    # Line 2433
    lw	$s3,172($s1)
    # Line 2428
    lw	$a4,412($s1)
    ld	$ra,-80($s8)
    # Line 2434
    blez	$s3,.L0da7cadc
    sd	$a4,-56($s8)
    sd	$s2,-184($s8)
    sd	$s5,-176($s8)
    sd	$s0,-168($s8)
    sd	$s7,-200($s8)
    ld	$v0,-96($s8)
    li	$at,1
    trunc.w.s	$f0,$f28
    slt	$at,$at,$v0
    addiu	$v1,$v0,-1
    sll	$a4,$v0,0x2
    sd	$a4,-48($s8)
    sd	$v1,-88($s8)
    mfc1	$s7,$f0
    b	.L0da7ca5c
    sd	$at,-40($s8)
.L0da7c9bc:
    # Line 2442
    lw	$a2,12($s1)
.L0da7c9c0:
    # Line 2447
    lw	$t9,360($s1)
.L0da7c9c4:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glComputeSpanPixelArray
    ld	$a3,-64($s8)
    # Line 2450
    ld	$s0,-64($s8)
    ld	$s2,-32($s8)
    # Line 2448
    lw	$v1,12($s1)
    lw	$v0,16($s1)
    # Line 2450
    ld	$at,-40($s8)
    # Line 2448
    addu	$v0,$v0,$v1
    # Line 2450
    beqz	$at,.L0da7ca34
    # Line 2448
    sw	$v0,12($s1)
    ld	$s5,-48($s8)
    sd	$s3,-192($s8)
    # Line 2450
    addiu	$s3,$s1,4
    addu	$s5,$s5,$s1
.L0da7ca04:
    # Line 2452
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 2451
    addiu	$s3,$s3,4
    # Line 2453
    move	$at,$s0
    # Line 2454
    move	$s0,$s2
    # Line 2451
    bne	$s3,$s5,.L0da7ca04
    # Line 2455
    move	$s2,$at
    ld	$s3,-192($s8)
.L0da7ca34:
    # Line 2457
    ld	$t9,-56($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s0
    # Line 2434
    addiu	$s6,$s6,1
    # Line 2459
    ld	$v1,-72($s8)
    # Line 2434
    slt	$v0,$s6,$s3
    beqz	$v0,.L0da7cac8
    # Line 2459
    sw	$v1,30652($s4)
.L0da7ca5c:
    # Line 2435
    swc1	$f28,200($s1)
    # Line 2436
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2434
    move	$a0,$s7
    # Line 2436
    mfc1	$s7,$f1
    nop
    bne	$s7,$a0,.L0da7c9bc
    slt	$a4,$s6,$s3
    beqz	$a4,.L0da7cac0
    nop
    # Line 2437
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2438
    swc1	$f28,200($s1)
.L0da7ca90:
    # Line 2441
    add.s	$f28,$f30,$f28
    # Line 2442
    trunc.w.s	$f2,$f28
    # Line 2439
    addu	$a2,$a1,$a2
    # Line 2442
    mfc1	$s7,$f2
    addiu	$s6,$s6,1
    slt	$at,$s6,$s3
    bne	$s7,$a0,.L0da7c9c0
    # Line 2439
    sw	$a2,12($s1)
    # Line 2442
    bnezl	$at,.L0da7ca90
    # Line 2438
    swc1	$f28,200($s1)
    b	.L0da7c9c4
    # Line 2447
    lw	$t9,360($s1)
.L0da7cac0:
    b	.L0da7c9c0
    # Line 2442
    lw	$a2,12($s1)
.L0da7cac8:
    ld	$s0,-168($s8)
    ld	$ra,-80($s8)
    ld	$s7,-200($s8)
    ld	$s5,-176($s8)
    ld	$s2,-184($s8)
.L0da7cadc:
    # ld	gp,-120(s8)
    # Line 2461
    ld	$s1,-104($s8)
    ld	$s3,-152($s8)
    ld	$s4,-112($s8)
    ld	$s6,-160($s8)
    ldc1	$f28,-136($s8)
    ldc1	$f30,-144($s8)
    ld	$v0,-128($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glDrawPixelSpans

# Function: __glDrawPixels2
# Declared: Line 2467 (Source lines: 2468-2521)
# Address: 0x0da7cb08 - 0x0da7ccf0 (Size: 488 bytes, Frame: 0)
.globl __glDrawPixels2
.ent __glDrawPixels2
__glDrawPixels2:
    # Line 2468
    move	$a2,$s8
    addiu	$sp,$sp,-160
    addiu	$s8,$sp,160
    sd	$a2,-112($s8)
    sd	$s0,-144($s8)
    sd	$s3,-136($s8)
    sdc1	$f28,-120($s8)
    sdc1	$f30,-128($s8)
    sd	$ra,-56($s8)
    sd	$s7,-96($s8)
    sd	$s5,-72($s8)
    sd	$s4,-80($s8)
    move	$s4,$a0
    # Line 2473
    lw	$s7,30652($s4)
    sd	$s6,-88($s8)
    # Line 2468
    lui	$v1,0x18
    addiu	$v1,$v1,-21152
    # sd	gp,-104(s8)
    # addu	gp,t9,v1
    sd	$s1,-64($s8)
    move	$s1,$a1
    # Line 2483
    lw	$v0,168($s1)
    # Line 2491
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 2483
    li	$v1,-16
    # Line 2487
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 2483
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 2486
    move	$s6,$sp
    subu	$sp,$sp,$v0
    # Line 2487
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2491
    bal __glComputeSpanPixelArray
    # Line 2490
    sw	$sp,312($s1)
    # Line 2499
    lwc1	$f28,200($s1)
    # Line 2497
    lwc1	$f30,164($s1)
    # Line 2500
    lw	$s3,172($s1)
    # Line 2493
    lw	$a4,360($s1)
    # Line 2494
    lw	$s0,364($s1)
    # Line 2495
    lw	$ra,412($s1)
    sd	$a4,-48($s8)
    sd	$s0,-40($s8)
    # Line 2501
    move	$s0,$zero
    sd	$ra,-32($s8)
    blez	$s3,.L0da7ccb8
    ld	$ra,-56($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-152($s8)
    mfc1	$s2,$f0
    b	.L0da7cc48
    # Line 2502
    swc1	$f28,200($s1)
.L0da7cbe0:
    # Line 2509
    lw	$a2,12($s1)
.L0da7cbe4:
    # Line 2513
    ld	$t9,-48($s8)
.L0da7cbe8:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glComputeSpanPixelArray
    move	$a3,$s6
    # Line 2516
    move	$a0,$s4
    move	$a1,$s1
    move	$a2,$s6
    # Line 2514
    lw	$v0,12($s1)
    lw	$at,16($s1)
    # Line 2516
    ld	$t9,-40($s8)
    move	$a3,$s5
    # Line 2514
    addu	$at,$at,$v0
    # Line 2516
    jalr	$t9
    # Line 2514
    sw	$at,12($s1)
    # Line 2517
    ld	$t9,-32($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s5
    # Line 2501
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    beqz	$v1,.L0da7ccb0
    # Line 2519
    sw	$s7,30652($s4)
    # Line 2502
    swc1	$f28,200($s1)
.L0da7cc48:
    # Line 2503
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2501
    move	$a0,$s2
    # Line 2503
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0da7cbe0
    slt	$a4,$s0,$s3
    beqz	$a4,.L0da7cca8
    nop
    # Line 2504
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2505
    swc1	$f28,200($s1)
.L0da7cc78:
    # Line 2508
    add.s	$f28,$f30,$f28
    # Line 2509
    trunc.w.s	$f2,$f28
    # Line 2506
    addu	$a2,$a1,$a2
    # Line 2509
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    bne	$s2,$a0,.L0da7cbe4
    # Line 2506
    sw	$a2,12($s1)
    # Line 2509
    bnezl	$at,.L0da7cc78
    # Line 2505
    swc1	$f28,200($s1)
    b	.L0da7cbe8
    # Line 2513
    ld	$t9,-48($s8)
.L0da7cca8:
    b	.L0da7cbe4
    # Line 2509
    lw	$a2,12($s1)
.L0da7ccb0:
    ld	$ra,-56($s8)
    ld	$s2,-152($s8)
.L0da7ccb8:
    # ld	gp,-104(s8)
    # Line 2521
    ld	$s0,-144($s8)
    ld	$s1,-64($s8)
    ld	$s3,-136($s8)
    ld	$s4,-80($s8)
    ld	$s5,-72($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ldc1	$f28,-120($s8)
    ldc1	$f30,-128($s8)
    ld	$v0,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glDrawPixels2

# Function: __glDrawPixels1
# Declared: Line 2526 (Source lines: 2527-2575)
# Address: 0x0da7ccf0 - 0x0da7ceac (Size: 444 bytes, Frame: 0)
.globl __glDrawPixels1
.ent __glDrawPixels1
__glDrawPixels1:
    # Line 2527
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$a2,-80($s8)
    sd	$s0,-120($s8)
    sd	$s3,-112($s8)
    sd	$s7,-128($s8)
    sdc1	$f28,-96($s8)
    sdc1	$f30,-104($s8)
    sd	$ra,-40($s8)
    sd	$s6,-72($s8)
    sd	$s5,-56($s8)
    sd	$s4,-64($s8)
    move	$s4,$a0
    # Line 2532
    lw	$s6,30652($s4)
    # Line 2527
    lui	$v1,0x18
    addiu	$v1,$v1,-21640
    # sd	gp,-88(s8)
    # addu	gp,t9,v1
    sd	$s1,-48($s8)
    move	$s1,$a1
    # Line 2540
    lw	$v0,168($s1)
    li	$v1,-16
    # Line 2547
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 2543
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 2540
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 2543
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2547
    bal __glComputeSpanPixelArray
    # Line 2546
    sw	$sp,312($s1)
    # Line 2554
    lwc1	$f28,200($s1)
    # Line 2552
    lwc1	$f30,164($s1)
    # Line 2549
    lw	$s7,360($s1)
    # Line 2556
    move	$s0,$zero
    # Line 2555
    lw	$s3,172($s1)
    # Line 2550
    lw	$a4,412($s1)
    ld	$ra,-40($s8)
    # Line 2556
    blez	$s3,.L0da7ce74
    sd	$a4,-32($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-136($s8)
    mfc1	$s2,$f0
    b	.L0da7ce04
    # Line 2557
    swc1	$f28,200($s1)
.L0da7cdb4:
    # Line 2564
    lw	$a2,12($s1)
.L0da7cdb8:
    # Line 2568
    move	$a0,$s4
.L0da7cdbc:
    move	$a1,$s1
    move	$a3,$s5
    jalr	$s7
    move	$t9,$s7
    # Line 2571
    move	$a0,$s4
    move	$a1,$s1
    # Line 2569
    lw	$a6,12($s1)
    lw	$a5,16($s1)
    # Line 2571
    ld	$t9,-32($s8)
    move	$a2,$s5
    # Line 2569
    addu	$a5,$a5,$a6
    # Line 2571
    jal	__glComputeSpanPixelArray
    # Line 2569
    sw	$a5,12($s1)
    # Line 2556
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    beqz	$at,.L0da7ce6c
    # Line 2573
    sw	$s6,30652($s4)
    # Line 2557
    swc1	$f28,200($s1)
.L0da7ce04:
    # Line 2558
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2556
    move	$a0,$s2
    # Line 2558
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0da7cdb4
    slt	$v0,$s0,$s3
    beqz	$v0,.L0da7ce64
    nop
    # Line 2559
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2560
    swc1	$f28,200($s1)
.L0da7ce34:
    # Line 2563
    add.s	$f28,$f30,$f28
    # Line 2564
    trunc.w.s	$f2,$f28
    # Line 2561
    addu	$a2,$a1,$a2
    # Line 2564
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0da7cdb8
    # Line 2561
    sw	$a2,12($s1)
    # Line 2564
    bnezl	$v1,.L0da7ce34
    # Line 2560
    swc1	$f28,200($s1)
    b	.L0da7cdbc
    # Line 2568
    move	$a0,$s4
.L0da7ce64:
    b	.L0da7cdb8
    # Line 2564
    lw	$a2,12($s1)
.L0da7ce6c:
    ld	$ra,-40($s8)
    ld	$s2,-136($s8)
.L0da7ce74:
    # ld	gp,-88(s8)
    # Line 2575
    ld	$s0,-120($s8)
    ld	$s1,-48($s8)
    ld	$s3,-112($s8)
    ld	$s4,-64($s8)
    ld	$s5,-56($s8)
    ld	$s6,-72($s8)
    ld	$s7,-128($s8)
    ldc1	$f28,-96($s8)
    ldc1	$f30,-104($s8)
    ld	$a0,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glDrawPixels1

# Function: __glDrawPixels0
# Declared: Line 2580 (Source lines: 2581-2617)
# Address: 0x0da7ceac - 0x0da7d00c (Size: 352 bytes, Frame: 0)
.globl __glDrawPixels0
.ent __glDrawPixels0
__glDrawPixels0:
    # Line 2581
    move	$v1,$s8
    addiu	$sp,$sp,-112
    addiu	$s8,$sp,112
    sd	$v1,-64($s8)
    sd	$s0,-104($s8)
    sd	$s3,-96($s8)
    sd	$s5,-88($s8)
    sdc1	$f28,-72($s8)
    sdc1	$f30,-80($s8)
    sd	$s4,-48($s8)
    move	$s4,$a0
    sd	$ra,-32($s8)
    lui	$v0,0x18
    addiu	$v0,$v0,-22084
    # sd	gp,-56(s8)
    # addu	gp,t9,v0
    sd	$s1,-40($s8)
    move	$s1,$a1
    lw	$at,168($s1)
    li	$v0,-16
    # Line 2593
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 2581
    addu	$at,$at,$at
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 2593
    bal __glComputeSpanPixelArray
    # Line 2592
    sw	$sp,312($s1)
    # Line 2599
    lwc1	$f28,200($s1)
    # Line 2597
    lwc1	$f30,164($s1)
    # Line 2600
    lw	$s3,172($s1)
    # Line 2595
    lw	$s5,412($s1)
    # Line 2601
    move	$s0,$zero
    blez	$s3,.L0da7cfdc
    ld	$ra,-32($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-112($s8)
    mfc1	$s2,$f0
    b	.L0da7cf74
    lw	$a2,12($s1)
.L0da7cf48:
    # Line 2613
    move	$a0,$s4
.L0da7cf4c:
    move	$a1,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 2601
    addiu	$s0,$s0,1
    # Line 2614
    lw	$at,12($s1)
    lw	$a2,16($s1)
    # Line 2601
    slt	$a3,$s0,$s3
    # Line 2614
    addu	$a2,$a2,$at
    # Line 2601
    beqz	$a3,.L0da7cfd4
    # Line 2614
    sw	$a2,12($s1)
.L0da7cf74:
    # Line 2602
    swc1	$f28,200($s1)
    # Line 2603
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2601
    move	$a0,$s2
    # Line 2603
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0da7cf48
    slt	$v0,$s0,$s3
    beqzl	$v0,.L0da7cf4c
    # Line 2613
    move	$a0,$s4
    # Line 2604
    lw	$a1,16($s1)
    # Line 2605
    swc1	$f28,200($s1)
.L0da7cfa4:
    # Line 2608
    add.s	$f28,$f30,$f28
    # Line 2609
    trunc.w.s	$f2,$f28
    # Line 2606
    addu	$a2,$a1,$a2
    # Line 2609
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0da7cf48
    # Line 2606
    sw	$a2,12($s1)
    # Line 2609
    bnezl	$v1,.L0da7cfa4
    # Line 2605
    swc1	$f28,200($s1)
    b	.L0da7cf48
    nop
.L0da7cfd4:
    ld	$ra,-32($s8)
    ld	$s2,-112($s8)
.L0da7cfdc:
    # ld	gp,-56(s8)
    # Line 2617
    ld	$s0,-104($s8)
    ld	$s1,-40($s8)
    ld	$s3,-96($s8)
    ld	$s4,-48($s8)
    ld	$s5,-88($s8)
    ldc1	$f28,-72($s8)
    ldc1	$f30,-80($s8)
    ld	$a0,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glDrawPixels0

# Function: __glLateScissorRender
# Declared: Line 2626 (Source lines: 2628-2669)
# Address: 0x0da7d00c - 0x0da7d148 (Size: 316 bytes, Frame: 208)
.globl __glLateScissorRender
.ent __glLateScissorRender
__glLateScissorRender:
    # Line 2628
    move	$a4,$a2
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lw	$a5,488($a1)
    lui	$at,0x18
    addiu	$at,$at,-22436
    blez	$a5,.L0da7d04c
    addu	$gp,$t9,$at
    # Line 2632
    addiu	$v0,$a5,-1
    ld	$gp,8($sp)
    sw	$v0,488($s0)
    # Line 2633
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7d04c:
    beqzl	$a5,.L0da7d0b4
    sd	$a0,0($sp)
    # Line 2653
    la	$a5,sub_0dbf0000
    sd	$ra,24($sp)
    lw	$a6,448($s0)
    addiu	$a5,$a5,13200
.L0da7d064:
    # Line 2661
    move	$a1,$s0
    # Line 2657
    sw	$a5,312($s0)
    # Line 2661
    lw	$a2,492($s0)
    # Line 2659
    lw	$a7,184($s0)
    # Line 2661
    lw	$t9,444($s0)
    addu	$a2,$a2,$a4
    # Line 2659
    addu	$a6,$a7,$a6
    # Line 2661
    jalr	$t9
    # Line 2659
    sw	$a6,184($s0)
    # Line 2665
    lw	$at,-21872($gp)
    # Line 2667
    lw	$ra,448($s0)
    lw	$a3,184($s0)
    ld	$gp,8($sp)
    # Line 2665
    sw	$at,312($s0)
    # Line 2667
    subu	$a3,$a3,$ra
    # Line 2669
    ld	$ra,24($sp)
    # Line 2667
    sw	$a3,184($s0)
    # Line 2669
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7d0b4:
    # Line 2651
    move	$a1,$s0
    sd	$ra,24($sp)
    # Line 2636
    addiu	$t1,$a5,-1
    sw	$t1,488($s0)
    # Line 2651
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 2639
    lw	$a3,312($s0)
    # Line 2642
    lwc1	$f0,452($s0)
    sd	$a4,32($sp)
    # Line 2643
    lw	$a4,476($s0)
    # Line 2644
    lw	$a5,472($s0)
    # Line 2647
    lw	$t0,464($s0)
    # Line 2646
    lw	$a7,468($s0)
    # Line 2645
    lw	$a6,460($s0)
    # Line 2647
    sw	$t0,208($s0)
    # Line 2646
    sw	$a7,212($s0)
    # Line 2645
    sw	$a6,204($s0)
    # Line 2644
    sw	$a5,216($s0)
    # Line 2643
    sw	$a4,220($s0)
    # Line 2642
    swc1	$f0,196($s0)
    # Line 2649
    lw	$a2,448($s0)
    # Line 2636
    la	$v0,sub_0dbf0000
    # Line 2649
    lw	$v1,180($s0)
    # Line 2639
    sw	$a3,-21872($gp)
    # Line 2636
    addiu	$v0,$v0,13200
    # Line 2649
    addu	$v1,$v1,$a2
    sw	$v1,180($s0)
    # Line 2651
    bal __glComputeSpanPixelArray
    # Line 2640
    sw	$v0,312($s0)
    ld	$a4,32($sp)
    la	$a5,sub_0dbf0000
    # Line 2653
    lw	$a6,448($s0)
    lw	$at,180($s0)
    ld	$a0,0($sp)
    addiu	$a5,$a5,13200
    subu	$at,$at,$a6
    b	.L0da7d064
    sw	$at,180($s0)
.end __glLateScissorRender

# Function: __glInitLateScissor
# Declared: Line 2671 (Source lines: 2672-2745)
# Address: 0x0da7d148 - 0x0da7d3d8 (Size: 656 bytes, Frame: 176)
.globl __glInitLateScissor
.ent __glInitLateScissor
__glInitLateScissor:
    # Line 2672
    addiu	$sp,$sp,-560
    sd	$s0,528($sp)
    move	$s0,$a1
    sd	$s1,520($sp)
    move	$s1,$a0
    lw	$at,1696($a0)
    # Line 2687
    li	$a0,125
    # sd	gp,512(sp)
    # Line 2672
    lui	$v0,0x18
    addiu	$v0,$v0,-22752
    andi	$at,$at,0x4000
    beqz	$at,.L0da7d360
    nop
    la	$v1,dummyFilter
    lw	$v0,740($s1)
    beq	$v0,$v1,.L0da7d348
    # Line 2674
    li	$a3,0x8010
    lw	$a2,0($v0)
    beq	$a2,$a3,.L0da7d348
    # Line 2687
    addiu	$a4,$sp,0
.L0da7d198:
    move	$a1,$s0
    move	$v0,$zero
.L0da7d1a0:
    addu	$v1,$v0,$a4
    addu	$at,$v0,$a1
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7d1a0
    sw	$at,0($v1)
    # Line 2691
    move	$a0,$s1
    sd	$ra,536($sp)
    # Line 2690
    lw	$v0,1696($s1)
    # Line 2691
    # lw $t9, -25896($gp) # &__glComputeClipBox
    # Line 2690
    li	$v1,-16385
    and	$v0,$v0,$v1
    # Line 2691
    jal	__glComputeClipBox
    # Line 2690
    sw	$v0,1696($s1)
    # Line 2692
    # lw $t9, -30568($gp) # &__glClipDrawPixels
    move	$a0,$s1
    bal __glClipDrawPixels
    move	$a1,$s0
    lw	$a1,1696($s1)
    sd	$v0,504($sp)
    beqz	$v0,.L0da7d39c
    ori	$a1,$a1,0x4000
    # Line 2700
    # lw $t9, -25896($gp) # &__glComputeClipBox
    move	$a0,$s1
    jal	__glComputeClipBox
    # Line 2699
    sw	$a1,1696($s1)
    # Line 2703
    # lw $t9, -30568($gp) # &__glClipDrawPixels
    move	$a0,$s1
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    sb	$v0,440($s0)
    # Line 2706
    lw	$a0,184($s0)
    lw	$v1,184($sp)
    subu	$v1,$v1,$a0
    sw	$v1,448($s0)
    # Line 2708
    lwc1	$f2,196($sp)
    swc1	$f2,452($s0)
    # Line 2709
    lwc1	$f1,200($s0)
    lwc1	$f0,200($sp)
    sub.s	$f0,$f0,$f1
    swc1	$f0,456($s0)
    # Line 2710
    lw	$v0,208($sp)
    sw	$v0,464($s0)
    # Line 2712
    lw	$at,212($sp)
    sw	$at,468($s0)
    # Line 2713
    lw	$ra,216($sp)
    sw	$ra,472($s0)
    # Line 2714
    lw	$a3,204($sp)
    sw	$a3,460($s0)
    # Line 2715
    lw	$a2,204($s0)
    lw	$a0,204($sp)
    # Line 2722
    lwc1	$f5,_lit_3f800000
    ld	$ra,536($sp)
    # Line 2715
    subu	$a0,$a0,$a2
    bltz	$a0,.L0da7d394
    # Line 2719
    lw	$a1,220($sp)
.L0da7d284:
    sw	$a1,476($s0)
    # Line 2720
    lw	$v1,48($s0)
    lw	$v0,48($sp)
    # Line 2745
    ld	$s1,520($sp)
    # Line 2722
    lwc1	$f4,160($s0)
    # Line 2720
    subu	$v0,$v0,$v1
    sw	$v0,480($s0)
    # Line 2722
    lw	$a2,52($s0)
    lw	$a1,52($sp)
    c.lt.s	$f4,$f5
    # Line 2728
    lwc1	$f0,_lit_bf800000
    # Line 2722
    subu	$a1,$a1,$a2
    bc1f	.L0da7d2e8
    sw	$a1,484($s0)
    lwc1	$f3,_lit_bf800000
    c.lt.s	$f3,$f4
    nop
    bc1fl	.L0da7d2ec
    # Line 2728
    lw	$v1,116($s0)
    # Line 2725
    lw	$a3,116($s0)
    multu	$a3,$a0
    mflo	$a2
    sll	$a2,$a2,0x2
    b	.L0da7d2fc
    sw	$a2,492($s0)
.L0da7d2e8:
    # Line 2728
    lw	$v1,116($s0)
.L0da7d2ec:
    multu	$v1,$v0
    mflo	$at
    sll	$at,$at,0x2
    sw	$at,492($s0)
.L0da7d2fc:
    lwc1	$f4,164($s0)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da7d38c
    nop
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0da7d38c
    nop
    # Line 2733
    lw	$v1,208($s0)
    lw	$v0,208($sp)
    subu	$v0,$v0,$v1
    bltz	$v0,.L0da7d3cc
    sw	$v0,488($s0)
.L0da7d334:
    # Line 2745
    li	$v0,1
    # ld	gp,512(sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0da7d348:
    # Line 2674
    lw	$a2,1160($s1)
    bnez	$a2,.L0da7d198
    # Line 2687
    addiu	$a4,$sp,0
    # Line 2674
    lbu	$a3,1276($s1)
    bnez	$a3,.L0da7d198
    # Line 2687
    addiu	$a4,$sp,0
.L0da7d360:
    # Line 2743
    # lw $t9, -30568($gp) # &__glClipDrawPixels
    move	$a0,$s1
    sd	$ra,536($sp)
    bal __glClipDrawPixels
    move	$a1,$s0
    # ld	gp,512(sp)
    ld	$ra,536($sp)
    ld	$s0,528($sp)
    ld	$s1,520($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0da7d38c:
    b	.L0da7d334
    # Line 2739
    sw	$a1,488($s0)
.L0da7d394:
    b	.L0da7d284
    # Line 2717
    negu	$a0,$a0
.L0da7d39c:
    # Line 2694
    # lw $t9, -25896($gp) # &__glComputeClipBox
    move	$a0,$s1
    jal	__glComputeClipBox
    # Line 2693
    sw	$a1,1696($s1)
    # ld	gp,512(sp)
    # Line 2695
    ld	$s0,528($sp)
    ld	$s1,520($sp)
    ld	$ra,536($sp)
    ld	$v0,504($sp)
    addiu	$sp,$sp,560
    jr	$ra
    andi	$v0,$v0,0xff
.L0da7d3cc:
    # Line 2736
    negu	$v1,$v0
    b	.L0da7d334
    sw	$v1,488($s0)
.end __glInitLateScissor

# Function: __glSlowPickDrawPixels
# Declared: Line 2752 (Source lines: 2755-2779)
# Address: 0x0da7d3d8 - 0x0da7d4d8 (Size: 256 bytes, Frame: 224)
.globl __glSlowPickDrawPixels
.ent __glSlowPickDrawPixels
__glSlowPickDrawPixels:
    # Line 2755
    move	$at,$a1
    addiu	$sp,$sp,-608
    # Line 2758
    addiu	$a1,$sp,0
    sd	$s8,504($sp)
    # Line 2755
    move	$s8,$a6
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    # Line 2758
    move	$a2,$at
    sd	$gp,512($sp)
    # Line 2755
    lui	$v0,0x18
    addiu	$v0,$v0,-23408
    addu	$gp,$t9,$v0
    # Line 2758
    # lw $t9, -30556($gp) # &__glInitDrawPixelsInfo
    sd	$s0,528($sp)
    sd	$ra,520($sp)
    bal __glInitDrawPixelsInfo
    # Line 2755
    move	$s0,$a0
    # Line 2759
    # lw $t9, -30560($gp) # &__glLoadUnpackModes
    move	$a0,$s0
    move	$a2,$s8
    bal __glLoadUnpackModes
    addiu	$a1,$sp,0
    lw	$v1,1696($s0)
    lui	$a1,0x3e00
    and	$v1,$v1,$a1
    beqz	$v1,.L0da7d4ac
    # Line 2772
    nop	# was lw $t9, -30532($gp) # &__glInitLateScissor
    move	$a0,$s0
    bal __glInitLateScissor
    addiu	$a1,$sp,0
    bnez	$v0,.L0da7d474
    ld	$s8,504($sp)
    ld	$ra,520($sp)
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0da7d474:
    # Line 2776
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    bal __glInitUnpacker
    addiu	$a1,$sp,0
    # Line 2778
    # lw $t9, -30524($gp) # &__glGenericPickDrawPixels
    move	$a0,$s0
    bal __glGenericPickDrawPixels
    addiu	$a1,$sp,0
    ld	$gp,512($sp)
    # Line 2779
    ld	$ra,520($sp)
    ld	$s0,528($sp)
    ld	$s8,504($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0da7d4ac:
    # Line 2774
    # lw $t9, -30568($gp) # &__glClipDrawPixels
    move	$a0,$s0
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    bnez	$v0,.L0da7d474
    ld	$s8,504($sp)
    ld	$ra,520($sp)
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glSlowPickDrawPixels

# Function: __glGenericPickDrawPixels
# Declared: Line 2785 (Source lines: 2786-2856)
# Address: 0x0da7d4d8 - 0x0da7d618 (Size: 320 bytes, Frame: 208)
.globl __glGenericPickDrawPixels
.ent __glGenericPickDrawPixels
__glGenericPickDrawPixels:
    # Line 2786
    addiu	$sp,$sp,-80
    # Line 2798
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 2786
    move	$s0,$a1
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,40($sp)
    # Line 2794
    li	$ra,1
    # Line 2796
    sb	$ra,12($sp)
    # Line 2795
    sw	$ra,8($sp)
    sd	$gp,48($sp)
    # Line 2786
    lui	$at,0x18
    addiu	$at,$at,-23664
    addu	$gp,$t9,$at
    # Line 2798
    # lw $t9, -32736($gp) # &sub_0da80000
    # Line 2794
    sw	$ra,4($sp)
    # Line 2793
    li	$at,2
    # Line 2798
    addiu	$t9,$t9,-29612
    bal __glSpanRGBAScaleBiasReduce
    # Line 2793
    sw	$at,0($sp)
    # Line 2800
    lw	$a4,20($sp)
    # Line 2814
    lw	$a0,436($s0)
    # Line 2807
    addiu	$a1,$v0,-1
    sw	$a1,264($s0)
    li	$a3,1
    # Line 2814
    lw	$a1,0($a0)
    # Line 2836
    # lw $t9, -30552($gp) # &__glDrawPixelSpans
    # Line 2814
    li	$v1,0x8011
    beq	$a1,$v1,.L0da7d5c8
    li	$a2,0x8012
    beql	$a1,$a2,.L0da7d5d0
    # Line 2819
    lw	$v1,4556($s1)
    # Line 2825
    beqz	$v0,.L0da7d5f8
    nop
    beq	$v0,$a3,.L0da7d600
    li	$at,2
    beq	$v0,$at,.L0da7d608
    nop
.L0da7d570:
    # Line 2841
    sw	$v0,352($s0)
.L0da7d574:
    # Line 2844
    lw	$v1,4($a0)
    li	$a2,0x8016
    beql	$v1,$a2,.L0da7d5ac
    # Line 2846
    lw	$at,48($a0)
.L0da7d584:
    # Line 2854
    sw	$a4,412($s0)
    # Line 2855
    move	$a0,$s1
    jal	__glDrawPixelSpans
    move	$a1,$s0
    ld	$gp,48($sp)
    # Line 2856
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7d5ac:
    # Line 2846
    lw	$a3,180($s0)
    subu	$a3,$a3,$at
    addiu	$a3,$a3,1
    bgez	$a3,.L0da7d584
    sw	$a3,184($s0)
    b	.L0da7d584
    # Line 2848
    sw	$zero,184($s0)
.L0da7d5c8:
    # Line 2817
    b	.L0da7d570
    # Line 2816
    nop	# was lw $t9, -29856($gp) # &__glConv2dDrawPixels
.L0da7d5d0:
    # Line 2819
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,164($s0)
    c.eq.s	$f0,$f1
    nop
    bc1f	.L0da7d610
    # Line 2822
    nop	# was lw $t9, -29860($gp) # &__glSep2dZoomDrawPixels
    # Line 2820
    b	.L0da7d570
    nop	# was lw $t9, -29852($gp) # &__glSep2dDrawPixels
.L0da7d5f8:
    # Line 2828
    b	.L0da7d570
    # Line 2827
    nop	# was lw $t9, -30540($gp) # &__glDrawPixels0
.L0da7d600:
    # Line 2831
    b	.L0da7d570
    # Line 2830
    nop	# was lw $t9, -30544($gp) # &__glDrawPixels1
.L0da7d608:
    # Line 2834
    b	.L0da7d570
    # Line 2833
    nop	# was lw $t9, -30548($gp) # &__glDrawPixels2
.L0da7d610:
    b	.L0da7d574
    # Line 2841
    sw	$v0,352($s0)
.end __glGenericPickDrawPixels

# Function: __glClipReadPixels
# Declared: Line 2864 (Source lines: 2865-2941)
# Address: 0x0da7d618 - 0x0da7d7e8 (Size: 464 bytes, Frame: 32)
.globl __glClipReadPixels
.ent __glClipReadPixels
__glClipReadPixels:
    # Line 2874
    lwc1	$f1,188($a1)
    # Line 2865
    addiu	$sp,$sp,-32
    # Line 2875
    lwc1	$f0,192($a1)
    # Line 2874
    trunc.w.s	$f1,$f1
    # Line 2872
    lw	$a4,168($a1)
    # Line 2873
    lw	$a7,172($a1)
    # Line 2875
    trunc.w.s	$f0,$f0
    # Line 2876
    lbu	$at,4552($a0)
    # Line 2873
    move	$a5,$a7
    # Line 2874
    mfc1	$a6,$f1
    # Line 2875
    mfc1	$a3,$f0
    # Line 2876
    beqz	$at,.L0da7d768
    addu	$t1,$a4,$a6
    # Line 2878
    subu	$t3,$a3,$a7
.L0da7d650:
    # Line 2884
    lw	$t2,3376($a0)
    # Line 2885
    lw	$a7,3416($a0)
    # Line 2882
    lw	$t8,3372($a0)
    # Line 2883
    lw	$t0,3412($a0)
    # Line 2885
    addu	$a7,$a7,$t2
    slt	$at,$a6,$t8
    beqz	$at,.L0da7d6ac
    # Line 2883
    addu	$t0,$t0,$t8
    # Line 2889
    subu	$t9,$t8,$a6
    slt	$at,$a4,$t9
    beqz	$at,.L0da7d68c
    sd	$t9,0($sp)
    # Line 2890
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d68c:
    # Line 2895
    mtc1	$t8,$f2
    # Line 2892
    ld	$v1,0($sp)
    # Line 2895
    cvt.s.w	$f2,$f2
    # Line 2894
    lw	$v0,128($a1)
    # Line 2892
    subu	$a4,$a4,$v1
    # Line 2894
    addu	$v0,$v0,$t9
    sw	$v0,128($a1)
    # Line 2895
    swc1	$f2,188($a1)
.L0da7d6ac:
    slt	$a2,$t0,$t1
    beqz	$a2,.L0da7d6c4
    subu	$a6,$t1,$t0
    slt	$at,$a4,$a6
    bnez	$at,.L0da7d774
    # Line 2901
    subu	$a4,$a4,$a6
.L0da7d6c4:
    lbu	$v0,4552($a0)
    # Line 2917
    slt	$at,$a3,$t2
    # Line 2905
    subu	$a6,$a3,$a7
    # Line 2901
    beqz	$v0,.L0da7d780
    # Line 2905
    addiu	$a0,$a6,1
    # Line 2901
    slt	$v1,$a3,$a7
    bnez	$v1,.L0da7d71c
    # Line 2905
    slt	$a2,$a5,$a0
    beqz	$a2,.L0da7d6f8
    # Line 2908
    subu	$a5,$a5,$a6
    # Line 2906
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d6f8:
    # Line 2911
    addiu	$at,$a7,-1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 2910
    lw	$at,132($a1)
    # Line 2908
    addiu	$a5,$a5,-1
    # Line 2910
    addu	$at,$at,$a0
    sw	$at,132($a1)
    # Line 2911
    swc1	$f3,192($a1)
.L0da7d71c:
    addiu	$v0,$t2,-1
    slt	$v0,$t3,$v0
    beqz	$v0,.L0da7d74c
    subu	$a0,$t2,$t3
    addiu	$v1,$a0,-1
    slt	$v1,$a5,$v1
    beqz	$v1,.L0da7d744
    # Line 2915
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d744:
    # Line 2917
    subu	$a5,$a5,$a0
    addiu	$a5,$a5,1
.L0da7d74c:
    # Line 2941
    li	$v0,1
    # Line 2939
    sw	$a4,180($a1)
    sw	$a4,184($a1)
    # Line 2938
    sw	$a5,172($a1)
    # Line 2937
    sw	$a4,168($a1)
    # Line 2941
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d768:
    # Line 2880
    addu	$t3,$a7,$a3
    b	.L0da7d650
    nop
.L0da7d774:
    # Line 2899
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d780:
    # Line 2921
    subu	$a6,$t2,$a3
    # Line 2917
    beqz	$at,.L0da7d7c0
    # Line 2921
    move	$a0,$a6
    slt	$v0,$a5,$a6
    beqz	$v0,.L0da7d7a0
    # Line 2922
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d7a0:
    # Line 2927
    mtc1	$t2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2926
    lw	$v1,132($a1)
    # Line 2924
    subu	$a5,$a5,$a6
    # Line 2926
    addu	$v1,$v1,$a0
    sw	$v1,132($a1)
    # Line 2927
    swc1	$f0,192($a1)
.L0da7d7c0:
    slt	$a2,$a7,$t3
    beqz	$a2,.L0da7d74c
    subu	$a0,$t3,$a7
    slt	$at,$a5,$a0
    beqz	$at,.L0da7d7e0
    # Line 2931
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da7d7e0:
    b	.L0da7d74c
    # Line 2933
    subu	$a5,$a5,$a0
.end __glClipReadPixels

# Function: __glLoadPackModes
# Declared: Line 2948 (Source lines: 2950-2963)
# Address: 0x0da7d7e8 - 0x0da7d844 (Size: 92 bytes, Frame: 0)
.globl __glLoadPackModes
.ent __glLoadPackModes
__glLoadPackModes:
    # Line 2953
    lw	$v0,1088($a0)
    # Line 2951
    lw	$a3,1096($a0)
    # Line 2950
    lw	$a4,1076($a0)
    # Line 2953
    sw	$v0,148($a1)
    # Line 2954
    lw	$at,1084($a0)
    sw	$at,128($a1)
    # Line 2955
    lw	$a2,1080($a0)
    sw	$a2,132($a1)
    # Line 2956
    lw	$v1,1092($a0)
    sw	$v1,136($a1)
    # Line 2957
    lbu	$v0,1073($a0)
    sw	$v0,124($a1)
    # Line 2958
    lbu	$at,1072($a0)
    blez	$a4,.L0da7d834
    sw	$at,120($a1)
.L0da7d824:
    # Line 2960
    blez	$a3,.L0da7d83c
    sw	$a4,140($a1)
.L0da7d82c:
    # Line 2963
    jr	$ra
    # Line 2962
    sw	$a3,144($a1)
.L0da7d834:
    b	.L0da7d824
    # Line 2959
    lw	$a4,168($a1)
.L0da7d83c:
    b	.L0da7d82c
    # Line 2961
    lw	$a3,172($a1)
.end __glLoadPackModes

# Function: __glInitReadPixelsInfo
# Declared: Line 2965 (Source lines: 2968-2998)
# Address: 0x0da7d844 - 0x0da7d99c (Size: 344 bytes, Frame: 240)
.globl __glInitReadPixelsInfo
.ent __glInitReadPixelsInfo
__glInitReadPixelsInfo:
    # Line 2969
    lw	$v1,3372($a0)
    # Line 2968
    addiu	$sp,$sp,-112
    # Line 2969
    addu	$v1,$v1,$a2
    mtc1	$v1,$f0
    sd	$s2,0($sp)
    # Line 2968
    move	$s2,$a0
    # Line 2969
    cvt.s.w	$f0,$f0
    sd	$s1,8($sp)
    # Line 2968
    move	$s1,$a6
    sd	$s0,24($sp)
    move	$s0,$a1
    # sd	gp,16(sp)
    # Line 2969
    swc1	$f0,188($a1)
    # Line 2968
    lui	$v0,0x18
    # Line 2969
    lbu	$at,4552($a0)
    # Line 2968
    addiu	$v0,$v0,-24540
    # addu	gp,t9,v0
    # Line 2969
    beqz	$at,.L0da7d95c
    lw	$t1,3376($a0)
    # Line 2971
    lw	$a2,3416($s2)
    subu	$a2,$a2,$a3
    addu	$a2,$a2,$t1
    addiu	$a2,$a2,-1
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    sd	$ra,32($sp)
    swc1	$f1,192($s0)
.L0da7d8b4:
    # Line 2983
    move	$a1,$s0
    move	$a0,$s2
    # Line 2982
    mtc1	$zero,$f3
    # Line 2979
    sw	$a7,84($s0)
    # Line 2978
    sw	$s1,80($s0)
    # Line 2980
    lw	$a3,116($sp)
    # Line 2977
    sw	$a5,172($s0)
    # Line 2976
    sw	$a4,168($s0)
    # Line 2980
    sw	$a3,88($s0)
    # Line 2983
    # lw $t9, -30516($gp) # &__glLoadPackModes
    # Line 2981
    lwc1	$f2,3284($s2)
    # Line 2982
    swc1	$f3,196($s0)
    # Line 2983
    bal __glLoadPackModes
    # Line 2981
    swc1	$f2,160($s0)
    # Line 2993
    sb	$zero,72($s0)
    # Line 2992
    sw	$zero,8($s0)
    # Line 2991
    sw	$zero,40($s0)
    ld	$ra,32($sp)
    # Line 2989
    li	$v0,5126
    # Line 2993
    li	$at,6401
    # Line 2990
    li	$v1,4
    sw	$v1,36($s0)
    # Line 2993
    beq	$s1,$at,.L0da7d98c
    # Line 2989
    sw	$v0,4($s0)
    # Line 2994
    li	$a2,6402
    beq	$s1,$a2,.L0da7d978
    li	$a1,6402
    lbu	$at,3104($s2)
    ld	$s2,0($sp)
    beqz	$at,.L0da7d984
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    li	$a0,6408
.L0da7d938:
    move	$a1,$a0
.L0da7d93c:
    move	$a0,$a1
.L0da7d940:
    # ld	gp,16(sp)
    sw	$a0,0($s0)
    # Line 2997
    li	$v0,2
    sw	$v0,432($s0)
    # Line 2998
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da7d95c:
    # Line 2974
    addu	$v1,$t1,$a3
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    b	.L0da7d8b4
    swc1	$f0,192($s0)
.L0da7d978:
    ld	$s1,8($sp)
    # Line 2994
    b	.L0da7d93c
    ld	$s2,0($sp)
.L0da7d984:
    b	.L0da7d938
    li	$a0,6400
.L0da7d98c:
    li	$a0,6401
    ld	$s1,8($sp)
    b	.L0da7d940
    ld	$s2,0($sp)
.end __glInitReadPixelsInfo

# Function: __glReadPixelSpans
# Declared: Line 3000 (Source lines: 3001-3042)
# Address: 0x0da7d99c - 0x0da7db58 (Size: 444 bytes, Frame: 0)
.globl __glReadPixelSpans
.ent __glReadPixelSpans
__glReadPixelSpans:
    # Line 3001
    move	$a3,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sdc1	$f30,-136($s8)
    sd	$s7,-88($s8)
    # Line 3023
    lw	$at,172($a1)
    # Line 3025
    move	$s7,$zero
    sd	$s6,-80($s8)
    sd	$at,-112($s8)
    # Line 3020
    lw	$a2,356($a1)
    sd	$s1,-64($s8)
    # Line 3001
    move	$s1,$a1
    # Line 3007
    lw	$a1,30652($a0)
    sd	$a2,-128($s8)
    # Line 3004
    lw	$a2,352($s1)
    sd	$a1,-120($s8)
    sd	$gp,-96($s8)
    sd	$s4,-72($s8)
    # Line 3001
    move	$s4,$a0
    sd	$a3,-104($s8)
    # Line 3022
    lw	$a3,4556($a0)
    # Line 3001
    lui	$a0,0x18
    addiu	$a0,$a0,-24884
    # Line 3015
    lw	$v1,168($s1)
    # Line 3001
    addu	$gp,$t9,$a0
    # Line 3015
    li	$a0,-16
    sll	$v1,$v1,0x4
    addiu	$v1,$v1,15
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    # Line 3017
    move	$s6,$sp
    subu	$sp,$sp,$v1
    # Line 3018
    move	$v0,$sp
    # Line 3025
    blez	$at,.L0da7db34
    sd	$sp,-32($s8)
    sd	$s2,-176($s8)
    sd	$s5,-168($s8)
    sd	$s3,-160($s8)
    sd	$ra,-152($s8)
    sd	$s0,-144($s8)
    addiu	$at,$a2,-1
    li	$a4,1
    slt	$a4,$a4,$a2
    sd	$at,-40($s8)
    sll	$at,$at,0x2
    sd	$at,-56($s8)
    mtc1	$a3,$f30
    sd	$a4,-48($s8)
    b	.L0da7dab4
    cvt.s.w	$f30,$f30
.L0da7da64:
    # Line 3034
    move	$a0,$s4
    sll	$t9,$a5,0x2
    addu	$t9,$t9,$s1
    lw	$t9,360($t9)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    lw	$a3,92($s1)
    # Line 3025
    addiu	$s7,$s7,1
    # Line 3040
    ld	$v0,-120($s8)
    # Line 3038
    lwc1	$f0,192($s1)
    # Line 3036
    lw	$a4,92($s1)
    lw	$v1,96($s1)
    # Line 3038
    add.s	$f0,$f0,$f30
    # Line 3025
    ld	$at,-112($s8)
    # Line 3036
    addu	$v1,$v1,$a4
    sw	$v1,92($s1)
    # Line 3038
    swc1	$f0,192($s1)
    # Line 3025
    beq	$at,$s7,.L0da7db1c
    # Line 3040
    sw	$v0,30652($s4)
.L0da7dab4:
    # Line 3026
    ld	$t9,-128($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    # Line 3027
    move	$s0,$s6
    # Line 3028
    ld	$at,-48($s8)
    # Line 3027
    ld	$s2,-32($s8)
    # Line 3028
    beqz	$at,.L0da7da64
    move	$a5,$zero
    move	$s3,$s1
    ld	$s5,-56($s8)
    addu	$s5,$s5,$s1
.L0da7dae8:
    # Line 3029
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 3028
    addiu	$s3,$s3,4
    # Line 3030
    move	$at,$s0
    # Line 3031
    move	$s0,$s2
    # Line 3028
    bne	$s3,$s5,.L0da7dae8
    # Line 3032
    move	$s2,$at
    b	.L0da7da64
    ld	$a5,-40($s8)
.L0da7db1c:
    ldc1	$f30,-136($s8)
    ld	$s0,-144($s8)
    ld	$ra,-152($s8)
    ld	$s3,-160($s8)
    ld	$s5,-168($s8)
    ld	$s2,-176($s8)
.L0da7db34:
    ld	$gp,-96($s8)
    # Line 3042
    ld	$s1,-64($s8)
    ld	$s4,-72($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glReadPixelSpans

# Function: __glReadPixels2
# Declared: Line 3047 (Source lines: 3048-3082)
# Address: 0x0da7db58 - 0x0da7dca8 (Size: 336 bytes, Frame: 0)
.globl __glReadPixels2
.ent __glReadPixels2
__glReadPixels2:
    # Line 3070
    lw	$a3,4556($a0)
    # Line 3048
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sdc1	$f30,-128($s8)
    sd	$s1,-40($s8)
    move	$s1,$a1
    sd	$s0,-72($s8)
    move	$s0,$a0
    sd	$s5,-56($s8)
    # Line 3068
    lw	$s5,356($a1)
    sd	$s6,-88($s8)
    # Line 3067
    lw	$s6,364($a1)
    sd	$a2,-112($s8)
    # Line 3066
    lw	$a2,360($a1)
    sd	$s7,-96($s8)
    # Line 3051
    lw	$s7,30652($a0)
    sd	$s3,-64($s8)
    # Line 3072
    move	$s3,$zero
    # Line 3071
    lw	$at,172($a1)
    sd	$s4,-80($s8)
    sd	$s2,-48($s8)
    sd	$at,-120($s8)
    # Line 3048
    lui	$v1,0x18
    addiu	$v1,$v1,-25328
    # sd	gp,-104(s8)
    # Line 3060
    lw	$v0,168($a1)
    # Line 3048
    # addu	gp,t9,v1
    # Line 3060
    li	$v1,-16
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3063
    move	$s2,$sp
    subu	$sp,$sp,$v0
    # Line 3072
    blez	$at,.L0da7dc74
    # Line 3064
    move	$s4,$sp
    # Line 3072
    mtc1	$a3,$f30
    sd	$a2,-32($s8)
    sd	$ra,-136($s8)
    cvt.s.w	$f30,$f30
.L0da7dbfc:
    # Line 3073
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    jalr	$s5
    move	$t9,$s5
    # Line 3074
    move	$a0,$s0
    ld	$t9,-32($s8)
    move	$a1,$s1
    move	$a2,$s2
    jalr	$t9
    move	$a3,$s4
    # Line 3075
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s4
    lw	$a3,92($s1)
    jalr	$s6
    move	$t9,$s6
    # Line 3072
    addiu	$s3,$s3,1
    # Line 3078
    lwc1	$f0,192($s1)
    # Line 3076
    lw	$v0,92($s1)
    lw	$at,96($s1)
    # Line 3078
    add.s	$f0,$f0,$f30
    # Line 3072
    ld	$a4,-120($s8)
    # Line 3076
    addu	$at,$at,$v0
    sw	$at,92($s1)
    # Line 3078
    swc1	$f0,192($s1)
    # Line 3072
    bne	$a4,$s3,.L0da7dbfc
    # Line 3080
    sw	$s7,30652($s0)
    ldc1	$f30,-128($s8)
    ld	$ra,-136($s8)
.L0da7dc74:
    # ld	gp,-104(s8)
    # Line 3082
    ld	$s0,-72($s8)
    ld	$s1,-40($s8)
    ld	$s2,-48($s8)
    ld	$s3,-64($s8)
    ld	$s4,-80($s8)
    ld	$s5,-56($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ld	$v1,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glReadPixels2

# Function: __glReadPixels1
# Declared: Line 3087 (Source lines: 3088-3117)
# Address: 0x0da7dca8 - 0x0da7ddc8 (Size: 288 bytes, Frame: 0)
.globl __glReadPixels1
.ent __glReadPixels1
__glReadPixels1:
    # Line 3106
    lw	$a2,4556($a0)
    # Line 3088
    move	$v1,$s8
    addiu	$sp,$sp,-128
    addiu	$s8,$sp,128
    sd	$v1,-104($s8)
    sdc1	$f30,-112($s8)
    sd	$s1,-32($s8)
    move	$s1,$a1
    sd	$s0,-64($s8)
    move	$s0,$a0
    sd	$s5,-48($s8)
    # Line 3104
    lw	$s5,356($a1)
    sd	$s7,-88($s8)
    # Line 3103
    lw	$s7,360($a1)
    sd	$s6,-80($s8)
    # Line 3091
    lw	$s6,30652($a0)
    sd	$s2,-40($s8)
    # Line 3108
    move	$s2,$zero
    sd	$s3,-56($s8)
    # Line 3088
    lui	$v0,0x18
    addiu	$v0,$v0,-25664
    sd	$s4,-72($s8)
    # Line 3107
    lw	$s4,172($a1)
    # sd	gp,-96(s8)
    # Line 3098
    lw	$at,168($a1)
    # Line 3088
    # addu	gp,t9,v0
    # Line 3098
    li	$v0,-16
    sll	$at,$at,0x4
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 3108
    blez	$s4,.L0da7dd94
    # Line 3101
    move	$s3,$sp
    # Line 3108
    mtc1	$a2,$f30
    sd	$ra,-120($s8)
    cvt.s.w	$f30,$f30
.L0da7dd38:
    # Line 3109
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 3110
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    lw	$a3,92($s1)
    jalr	$s7
    move	$t9,$s7
    # Line 3108
    addiu	$s2,$s2,1
    # Line 3113
    lwc1	$f0,192($s1)
    # Line 3111
    lw	$at,92($s1)
    lw	$a3,96($s1)
    # Line 3113
    add.s	$f0,$f0,$f30
    # Line 3111
    addu	$a3,$a3,$at
    sw	$a3,92($s1)
    # Line 3113
    swc1	$f0,192($s1)
    # Line 3108
    bne	$s4,$s2,.L0da7dd38
    # Line 3115
    sw	$s6,30652($s0)
    ldc1	$f30,-112($s8)
    ld	$ra,-120($s8)
.L0da7dd94:
    # ld	gp,-96(s8)
    # Line 3117
    ld	$s0,-64($s8)
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s3,-56($s8)
    ld	$s4,-72($s8)
    ld	$s5,-48($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glReadPixels1

# Function: __glReadPixels0
# Declared: Line 3122 (Source lines: 3123-3139)
# Address: 0x0da7ddc8 - 0x0da7de7c (Size: 180 bytes, Frame: 208)
.globl __glReadPixels0
.ent __glReadPixels0
__glReadPixels0:
    # Line 3131
    lw	$a4,4556($a0)
    # Line 3123
    addiu	$sp,$sp,-80
    sdc1	$f30,48($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s4,16($sp)
    move	$s4,$a0
    sd	$s2,0($sp)
    # Line 3129
    lw	$s2,356($a1)
    sd	$s1,32($sp)
    # Line 3133
    move	$s1,$zero
    # sd	gp,40(sp)
    sd	$s3,8($sp)
    # Line 3132
    lw	$s3,172($a1)
    # Line 3123
    lui	$at,0x18
    addiu	$at,$at,-25952
    # Line 3133
    blez	$s3,.L0da7de5c
    # Line 3123
    nop
    # Line 3133
    mtc1	$a4,$f30
    sd	$ra,56($sp)
    lw	$a2,92($s0)
    cvt.s.w	$f30,$f30
.L0da7de20:
    # Line 3134
    move	$a0,$s4
    move	$a1,$s0
    jalr	$s2
    move	$t9,$s2
    # Line 3133
    addiu	$s1,$s1,1
    # Line 3135
    lw	$a3,92($s0)
    # Line 3137
    lwc1	$f0,192($s0)
    # Line 3135
    lw	$a2,96($s0)
    # Line 3137
    add.s	$f0,$f0,$f30
    # Line 3135
    addu	$a2,$a2,$a3
    sw	$a2,92($s0)
    # Line 3133
    bne	$s3,$s1,.L0da7de20
    # Line 3137
    swc1	$f0,192($s0)
    ldc1	$f30,48($sp)
    ld	$ra,56($sp)
.L0da7de5c:
    # ld	gp,40(sp)
    # Line 3139
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glReadPixels0

# Function: __glSlowPickReadPixels
# Declared: Line 3145 (Source lines: 3148-3158)
# Address: 0x0da7de7c - 0x0da7df24 (Size: 168 bytes, Frame: 224)
.globl __glSlowPickReadPixels
.ent __glSlowPickReadPixels
__glSlowPickReadPixels:
    # Line 3148
    move	$at,$a1
    addiu	$sp,$sp,-608
    # Line 3151
    addiu	$a1,$sp,16
    sw	$a7,4($sp)
    # Line 3148
    move	$a7,$a6
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    # Line 3151
    move	$a2,$at
    sd	$gp,520($sp)
    # Line 3148
    lui	$v0,0x18
    addiu	$v0,$v0,-26132
    addu	$gp,$t9,$v0
    # Line 3151
    # lw $t9, -30512($gp) # &__glInitReadPixelsInfo
    sd	$s0,536($sp)
    sd	$ra,528($sp)
    bal __glInitReadPixelsInfo
    # Line 3148
    move	$s0,$a0
    # Line 3153
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    bal __glClipReadPixels
    addiu	$a1,$sp,16
    bnez	$v0,.L0da7def4
    # Line 3155
    nop	# was lw $t9, -30748($gp) # &__glInitPacker
    # Line 3153
    ld	$ra,528($sp)
    ld	$gp,520($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0da7def4:
    # Line 3155
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 3157
    # lw $t9, -30488($gp) # &__glGenericPickReadPixels
    move	$a0,$s0
    bal __glGenericPickReadPixels
    addiu	$a1,$sp,16
    # Line 3158
    ld	$ra,528($sp)
    ld	$gp,520($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glSlowPickReadPixels

# Function: __glGenericPickReadPixels
# Declared: Line 3164 (Source lines: 3165-3234)
# Address: 0x0da7df24 - 0x0da7e04c (Size: 296 bytes, Frame: 208)
.globl __glGenericPickReadPixels
.ent __glGenericPickReadPixels
__glGenericPickReadPixels:
    # Line 3172
    li	$at,1
    # Line 3165
    addiu	$sp,$sp,-80
    # Line 3177
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 3165
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 3175
    sb	$at,12($sp)
    sd	$ra,32($sp)
    # Line 3173
    li	$ra,2
    sd	$gp,40($sp)
    # Line 3165
    lui	$v0,0x18
    addiu	$v0,$v0,-26300
    addu	$gp,$t9,$v0
    # Line 3177
    # lw $t9, -32736($gp) # &sub_0da80000
    # Line 3174
    sw	$ra,8($sp)
    # Line 3173
    sw	$ra,4($sp)
    # Line 3177
    addiu	$t9,$t9,-29612
    bal __glSpanRGBAScaleBiasReduce
    # Line 3172
    sw	$at,0($sp)
    # Line 3177
    move	$a1,$v0
    # Line 3187
    lw	$a0,16($sp)
    lw	$a4,264($s0)
    li	$v1,-1
    sw	$a0,356($s0)
    beq	$a4,$v1,.L0da7e020
    ld	$a0,48($sp)
    # Line 3191
    addiu	$a1,$a4,1
.L0da7df90:
    # Line 3194
    lw	$a4,436($s0)
    li	$at,1
    lw	$v0,0($a4)
    # Line 3213
    # lw $t9, -30508($gp) # &__glReadPixelSpans
    # Line 3194
    li	$a2,0x8011
    beq	$v0,$a2,.L0da7e018
    li	$a3,0x8012
    beq	$v0,$a3,.L0da7e02c
    nop
    # Line 3202
    beqz	$a1,.L0da7e034
    nop
    beq	$a1,$at,.L0da7e03c
    li	$v1,2
    beq	$a1,$v1,.L0da7e044
    nop
.L0da7dfcc:
    # Line 3218
    sw	$a1,352($s0)
    # Line 3222
    lw	$a2,4($a4)
    li	$a3,0x8016
    beql	$a2,$a3,.L0da7dffc
    # Line 3224
    lw	$v1,48($a4)
.L0da7dfe0:
    # Line 3233
    jal	__glReadPixelSpans
    move	$a1,$s0
    # Line 3234
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7dffc:
    # Line 3224
    lw	$at,180($s0)
    subu	$at,$at,$v1
    addiu	$at,$at,1
    bgez	$at,.L0da7dfe0
    sw	$at,184($s0)
    b	.L0da7dfe0
    # Line 3226
    sw	$zero,184($s0)
.L0da7e018:
    # Line 3197
    b	.L0da7dfcc
    # Line 3196
    nop	# was lw $t9, -29848($gp) # &__glConv2dReadPixels
.L0da7e020:
    # Line 3189
    addiu	$a2,$v0,-1
    b	.L0da7df90
    sw	$a2,264($s0)
.L0da7e02c:
    # Line 3200
    b	.L0da7dfcc
    # Line 3199
    nop	# was lw $t9, -29844($gp) # &__glSep2dReadPixels
.L0da7e034:
    # Line 3205
    b	.L0da7dfcc
    # Line 3204
    nop	# was lw $t9, -30496($gp) # &__glReadPixels0
.L0da7e03c:
    # Line 3208
    b	.L0da7dfcc
    # Line 3207
    nop	# was lw $t9, -30500($gp) # &__glReadPixels1
.L0da7e044:
    # Line 3211
    b	.L0da7dfcc
    # Line 3210
    nop	# was lw $t9, -30504($gp) # &__glReadPixels2
.end __glGenericPickReadPixels

# Function: __glClipCopyPixels
# Declared: Line 3242 (Source lines: 3243-3594)
# Address: 0x0da7e04c - 0x0da7e6ec (Size: 1696 bytes, Frame: 192)
.globl __glClipCopyPixels
.ent __glClipCopyPixels
__glClipCopyPixels:
    # Line 3243
    addiu	$sp,$sp,-192
    sd	$s2,72($sp)
    move	$s2,$a0
    sd	$ra,96($sp)
    sd	$s1,80($sp)
    # sd	gp,88(sp)
    lui	$at,0x18
    addiu	$at,$at,-26596
    # addu	gp,t9,at
    # Line 3274
    # lw $t9, -30520($gp) # &__glClipReadPixels
    # Line 3243
    move	$s1,$a1
    # Line 3273
    sw	$zero,128($s1)
    # Line 3274
    bal __glClipReadPixels
    # Line 3272
    sw	$zero,132($s1)
    # Line 3274
    beqz	$v0,.L0da7e2d8
    ld	$ra,96($sp)
    # Line 3276
    lw	$v1,132($s1)
    mtc1	$v1,$f5
    # Line 3275
    lw	$v0,128($s1)
    # Line 3276
    cvt.s.w	$f5,$f5
    # Line 3275
    mtc1	$v0,$f4
    # Line 3276
    lwc1	$f3,164($s1)
    # Line 3275
    cvt.s.w	$f4,$f4
    lwc1	$f2,160($s1)
    # Line 3276
    mul.s	$f3,$f3,$f5
    # Line 3275
    mul.s	$f2,$f2,$f4
    # Line 3280
    move	$a1,$s1
    # Line 3276
    lwc1	$f1,200($s1)
    # Line 3280
    move	$a0,$s2
    # Line 3275
    lwc1	$f0,196($s1)
    # Line 3276
    add.s	$f1,$f1,$f3
    # Line 3279
    sw	$zero,48($s1)
    # Line 3280
    # lw $t9, -30568($gp) # &__glClipDrawPixels
    # Line 3275
    add.s	$f0,$f0,$f2
    # Line 3278
    sw	$zero,52($s1)
    # Line 3276
    swc1	$f1,200($s1)
    # Line 3280
    bal __glClipDrawPixels
    # Line 3275
    swc1	$f0,196($s1)
    # Line 3280
    beqz	$v0,.L0da7e4a4
    move	$v0,$zero
    # Line 3281
    lw	$v0,48($s1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f8,188($s1)
    lw	$at,52($s1)
    add.s	$f8,$f8,$f0
    mtc1	$at,$f5
    swc1	$f8,188($s1)
    cvt.s.w	$f5,$f5
    lbu	$a2,4552($s2)
    lwc1	$f4,192($s1)
    beqz	$a2,.L0da7e374
    # Line 3405
    trunc.w.s	$f0,$f8
    # Line 3283
    sub.s	$f4,$f4,$f5
    sd	$s5,64($sp)
    sdc1	$f26,120($sp)
    sdc1	$f24,24($sp)
    swc1	$f4,192($s1)
.L0da7e138:
    # Line 3408
    lwc1	$f5,3392($s2)
    lwc1	$f6,3280($s2)
    lwc1	$f26,164($s1)
    # Line 3407
    lwc1	$f10,160($s1)
    # Line 3404
    lwc1	$f24,200($s1)
    # Line 3403
    lwc1	$f9,196($s1)
    # Line 3401
    lw	$a3,168($s1)
    # Line 3406
    trunc.w.s	$f7,$f4
    # Line 3402
    lw	$s5,172($s1)
    # Line 3408
    lbu	$v1,4552($s2)
    # Line 3405
    mfc1	$a4,$f0
    # Line 3406
    mfc1	$a0,$f7
    # Line 3408
    beqz	$v1,.L0da7e38c
    cvt.s.w	$f7,$f7
    # Line 3412
    subu	$a2,$a0,$s5
    mtc1	$a2,$f14
    nop
    cvt.s.w	$f14,$f14
    # Line 3413
    sub.s	$f13,$f7,$f5
    # Line 3412
    add.s	$f14,$f14,$f6
.L0da7e188:
    # Line 3416
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f11
    c.lt.s	$f11,$f10
    sub.s	$f7,$f9,$f5
    # Line 3445
    addu	$at,$a3,$a4
    # Line 3416
    bc1f	.L0da7e1b8
    mul.s	$f4,$f4,$f10
    # Line 3423
    mov.s	$f9,$f7
    # Line 3424
    b	.L0da7e1c4
    add.s	$f10,$f4,$f7
.L0da7e1b8:
    # Line 3427
    lwc1	$f10,3284($s2)
    add.s	$f10,$f10,$f7
    # Line 3428
    add.s	$f9,$f4,$f10
.L0da7e1c4:
    # Line 3429
    sub.s	$f7,$f24,$f5
    mtc1	$s5,$f16
    c.lt.s	$f11,$f26
    li	$a1,1
    cvt.s.w	$f16,$f16
    bc1fl	.L0da7e1e0
    move	$a1,$zero
.L0da7e1e0:
    # Line 3434
    mov.s	$f4,$f26
    # Line 3435
    mov.s	$f12,$f7
    # Line 3429
    beqz	$a1,.L0da7e3a8
    mul.s	$f8,$f16,$f26
    # Line 3436
    add.s	$f17,$f8,$f7
    # Line 3433
    mov.s	$f24,$f7
    # Line 3436
    mov.s	$f15,$f17
.L0da7e1fc:
    # Line 3445
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f0,$f0,$f5
    c.lt.s	$f0,$f9
    nop
    bc1t	.L0da7e298
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f6
    c.lt.s	$f10,$f1
    nop
    bc1t	.L0da7e298
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    c.lt.s	$f13,$f12
    nop
    bc1t	.L0da7e298
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    c.lt.s	$f15,$f14
    nop
    bc1t	.L0da7e298
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    lbu	$v0,3276($s2)
    beqz	$v0,.L0da7e298
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    lw	$a3,1788($s2)
    lw	$v1,1148($s2)
    beq	$v1,$a3,.L0da7e2f0
    li	$a2,1032
    beq	$a3,$a2,.L0da7e2f4
    # Line 3462
    ldc1	$f7,_lit8_bfe0000000000000
    # Line 3445
    lw	$a3,80($s1)
    li	$at,6401
    beq	$a3,$at,.L0da7e2f0
    li	$v0,6402
    beq	$a3,$v0,.L0da7e2f0
    # Line 3459
    ld	$ra,96($sp)
.L0da7e298:
    li	$v0,1
    # ld	gp,88(sp)
    # Line 3458
    swc1	$f24,272($s1)
    # Line 3457
    swc1	$f24,268($s1)
    # Line 3456
    sw	$zero,280($s1)
    # Line 3455
    sw	$zero,276($s1)
    # Line 3454
    sw	$zero,232($s1)
    # Line 3453
    sw	$s5,228($s1)
    # Line 3452
    sb	$zero,224($s1)
    # Line 3459
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    ld	$s5,64($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,120($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da7e2d8:
    # Line 3274
    move	$v0,$zero
    # ld	gp,88(sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da7e2f0:
    # Line 3462
    ldc1	$f7,_lit8_bfe0000000000000
.L0da7e2f4:
    li	$v1,1
    sb	$v1,224($s1)
    cvt.d.s	$f6,$f24
    lbu	$a3,4552($s2)
    add.d	$f6,$f6,$f7
    mtc1	$a0,$f7
    lwc1	$f9,_lit_bf800000
    beqz	$a3,.L0da7e4cc
    cvt.d.w	$f7,$f7
    # Line 3466
    sub.d	$f8,$f6,$f7
    # Line 3467
    sub.s	$f5,$f9,$f26
    # Line 3466
    cvt.s.d	$f8,$f8
.L0da7e324:
    # Line 3472
    move	$t0,$zero
    move	$a6,$zero
    # Line 3473
    move	$a4,$zero
    move	$a5,$zero
    # Line 3474
    mov.s	$f7,$f24
    # Line 3475
    mov.s	$f6,$f17
    # Line 3476
    beqz	$a3,.L0da7e4dc
    move	$t1,$a0
    # Line 3478
    subu	$a7,$a0,$s5
    addiu	$a7,$a7,1
.L0da7e34c:
    # Line 3480
    c.eq.s	$f5,$f11
    nop
    bc1fl	.L0da7e3c4
    # Line 3491
    div.s	$f9,$f8,$f5
    # Line 3480
    c.lt.s	$f11,$f8
    nop
    bc1f	.L0da7e4bc
    nop
    # Line 3486
    b	.L0da7e3f0
    mov.s	$f12,$f16
.L0da7e374:
    sd	$s5,64($sp)
    # Line 3285
    add.s	$f4,$f4,$f5
    sdc1	$f26,120($sp)
    sdc1	$f24,24($sp)
    b	.L0da7e138
    swc1	$f4,192($s1)
.L0da7e38c:
    # Line 3416
    addu	$at,$s5,$a0
    mtc1	$at,$f13
    nop
    cvt.s.w	$f13,$f13
    # Line 3415
    add.s	$f14,$f6,$f7
    b	.L0da7e188
    # Line 3416
    sub.s	$f13,$f13,$f5
.L0da7e3a8:
    # Line 3439
    lwc1	$f24,3284($s2)
    add.s	$f24,$f24,$f7
    # Line 3441
    add.s	$f17,$f8,$f24
    # Line 3440
    neg.s	$f4,$f26
    # Line 3442
    mov.s	$f15,$f24
    b	.L0da7e1fc
    # Line 3441
    mov.s	$f12,$f17
.L0da7e3c4:
    # Line 3491
    c.lt.s	$f9,$f11
    nop
    bc1f	.L0da7e3dc
    mov.s	$f12,$f9
    # Line 3493
    b	.L0da7e3f0
    mov.s	$f12,$f11
.L0da7e3dc:
    c.lt.s	$f16,$f9
    nop
    bc1f	.L0da7e3f4
    # Line 3495
    c.eq.s	$f12,$f11
    mov.s	$f12,$f16
.L0da7e3f0:
    c.eq.s	$f12,$f11
.L0da7e3f4:
    nop
    bc1f	.L0da7e47c
    lwc1	$f5,3284($s2)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da7e418
    ldc1	$f26,120($sp)
    # Line 3501
    b	.L0da7e41c
    move	$a5,$s5
.L0da7e418:
    # Line 3503
    move	$a4,$s5
.L0da7e41c:
    # Line 3594
    li	$v0,1
    # ld	gp,88(sp)
    ld	$ra,96($sp)
    # Line 3569
    lwc1	$f4,3392($s2)
    # Line 3594
    ldc1	$f24,24($sp)
    # Line 3569
    beqz	$a1,.L0da7e4e8
    add.s	$f4,$f4,$f7
    # Line 3580
    swc1	$f4,268($s1)
    # Line 3581
    lwc1	$f0,3392($s2)
    add.s	$f0,$f0,$f6
    lwc1	$f1,3284($s2)
    sub.s	$f0,$f0,$f1
    swc1	$f0,272($s1)
.L0da7e450:
    # Line 3594
    ld	$s5,64($sp)
    # Line 3592
    sw	$a7,288($s1)
    # Line 3591
    sw	$t1,284($s1)
    # Line 3590
    sw	$a4,232($s1)
    # Line 3589
    sw	$a5,228($s1)
    # Line 3588
    sw	$a6,280($s1)
    # Line 3587
    sw	$t0,276($s1)
    # Line 3594
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da7e47c:
    # Line 3503
    c.eq.s	$f16,$f12
    sd	$a0,128($sp)
    bc1f	.L0da7e500
    sd	$a3,136($sp)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da7e4c4
    ldc1	$f26,120($sp)
    # Line 3508
    b	.L0da7e41c
    move	$a4,$s5
.L0da7e4a4:
    # ld	gp,88(sp)
    # Line 3280
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da7e4bc:
    b	.L0da7e3f0
    # Line 3488
    mov.s	$f12,$f11
.L0da7e4c4:
    b	.L0da7e41c
    # Line 3510
    move	$a5,$s5
.L0da7e4cc:
    # Line 3469
    sub.d	$f8,$f7,$f6
    # Line 3470
    add.s	$f5,$f26,$f9
    b	.L0da7e324
    # Line 3469
    cvt.s.d	$f8,$f8
.L0da7e4dc:
    # Line 3480
    addu	$a7,$s5,$a0
    b	.L0da7e34c
    addiu	$a7,$a7,-1
.L0da7e4e8:
    # Line 3584
    sub.s	$f1,$f4,$f5
    swc1	$f1,268($s1)
    # Line 3585
    lwc1	$f0,3392($s2)
    add.s	$f0,$f0,$f6
    b	.L0da7e450
    swc1	$f0,272($s1)
.L0da7e500:
    sd	$a1,160($sp)
    sd	$a6,32($sp)
    sd	$a7,40($sp)
    sd	$t0,48($sp)
    sd	$t1,56($sp)
    sdc1	$f4,112($sp)
    # Line 3514
    # lw $t9, -22980($gp) # &ceilf
    sdc1	$f5,0($sp)
    sdc1	$f6,8($sp)
    jal	ceilf
    sdc1	$f7,16($sp)
    trunc.w.s	$f2,$f0
    ldc1	$f5,112($sp)
    mfc1	$a5,$f2
    ld	$a4,128($sp)
    ld	$a0,136($sp)
    move	$a6,$a5
    # Line 3516
    subu	$t0,$s5,$a5
    slt	$at,$t0,$a5
    beqz	$at,.L0da7e558
    move	$a7,$t0
    # Line 3518
    move	$a7,$a5
.L0da7e558:
    addiu	$v0,$a6,-1
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    ldc1	$f0,0($sp)
    lwc1	$f6,3280($s2)
    c.lt.s	$f0,$f5
    sub.s	$f6,$f24,$f6
    lwc1	$f0,3388($s2)
    bc1f	.L0da7e618
    sub.s	$f6,$f6,$f0
    # Line 3528
    move	$a3,$t0
    # Line 3526
    subu	$a1,$a7,$t0
    # Line 3525
    subu	$v1,$a7,$a5
    sd	$v1,48($sp)
    sd	$a1,32($sp)
    # Line 3528
    beqz	$a0,.L0da7e6bc
    # Line 3527
    move	$a1,$a5
    sdc1	$f4,104($sp)
    # Line 3531
    subu	$a0,$a4,$a5
    addiu	$a0,$a0,1
.L0da7e5ac:
    # Line 3536
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    sd	$a3,152($sp)
    # lw $t9, -22984($gp) # &floorf
    sub.s	$f12,$f12,$f6
    sd	$a1,144($sp)
    ldc1	$f24,104($sp)
    jal	floorf
    div.s	$f12,$f12,$f26
    ldc1	$f7,16($sp)
    ldc1	$f6,8($sp)
    ldc1	$f5,0($sp)
    ldc1	$f26,120($sp)
    ld	$t1,56($sp)
    ld	$t0,48($sp)
    ld	$a7,40($sp)
    ld	$a6,32($sp)
    c.eq.s	$f0,$f24
    ld	$a5,144($sp)
    ld	$a4,152($sp)
    bc1f	.L0da7e41c
    ld	$a1,160($sp)
    beqz	$a6,.L0da7e6e4
    nop
    # Line 3544
    b	.L0da7e41c
    addiu	$a6,$a6,-1
.L0da7e618:
    # Line 3553
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    add.s	$f0,$f0,$f24
    # Line 3551
    move	$a3,$a5
    # Line 3552
    move	$a1,$t0
    sdc1	$f0,8($sp)
    # Line 3553
    beqz	$a0,.L0da7e6cc
    sdc1	$f0,16($sp)
    sdc1	$f4,104($sp)
    # Line 3555
    subu	$a2,$a4,$a6
    sd	$a2,56($sp)
    # Line 3556
    addiu	$a2,$a2,1
    sd	$a2,40($sp)
.L0da7e654:
    sd	$a3,152($sp)
    ld	$a3,40($sp)
    # Line 3562
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    # lw $t9, -22984($gp) # &floorf
    sub.s	$f12,$f12,$f6
    sd	$a1,144($sp)
    ldc1	$f24,104($sp)
    jal	floorf
    div.s	$f12,$f12,$f26
    ldc1	$f7,16($sp)
    ldc1	$f6,8($sp)
    ldc1	$f5,0($sp)
    ldc1	$f26,120($sp)
    ld	$t1,56($sp)
    ld	$t0,48($sp)
    ld	$a7,40($sp)
    ld	$a6,32($sp)
    c.eq.s	$f0,$f24
    ld	$a5,144($sp)
    ld	$a4,152($sp)
    bc1f	.L0da7e41c
    ld	$a1,160($sp)
    b	.L0da7e41c
    # Line 3569
    li	$t0,1
.L0da7e6bc:
    sdc1	$f4,104($sp)
    # Line 3533
    addu	$a0,$a5,$a4
    b	.L0da7e5ac
    addiu	$a0,$a0,-1
.L0da7e6cc:
    sdc1	$f4,104($sp)
    # Line 3558
    addu	$a2,$a4,$a6
    sd	$a2,56($sp)
    # Line 3559
    addiu	$a2,$a2,-1
    b	.L0da7e654
    sd	$a2,40($sp)
.L0da7e6e4:
    b	.L0da7e41c
    # Line 3546
    addiu	$t0,$t0,1
.end __glClipCopyPixels

# Function: __glInitCopyPixelsInfo
# Declared: Line 3597 (Source lines: 3600-3673)
# Address: 0x0da7e6ec - 0x0da7e8b0 (Size: 452 bytes, Frame: 0)
.globl __glInitCopyPixelsInfo
.ent __glInitCopyPixelsInfo
__glInitCopyPixelsInfo:
    # Line 3606
    lwc1	$f1,352($a0)
    # Line 3600
    lui	$v1,0x18
    addiu	$v1,$v1,-28292
    # Line 3606
    trunc.l.s	$f1,$f1
    # Line 3600
    # addu	at,t9,v1
    # Line 3604
    lwc1	$f0,344($a0)
    # Line 3605
    lwc1	$f6,348($a0)
    # Line 3606
    dmfc1	$v0,$f1
    # Line 3608
    swc1	$f0,196($a1)
    # Line 3609
    swc1	$f6,200($a1)
    # Line 3606
    sw	$v0,248($a1)
    # Line 3610
    mtc1	$zero,$f7
    lwc1	$f5,720($a0)
    c.lt.s	$f7,$f5
    nop
    bc1f	.L0da7e750
    li	$t2,1
    lwc1	$f4,3284($a0)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0da7e748
    # Line 3615
    swc1	$f5,244($a1)
    # Line 3613
    swc1	$f4,244($a1)
.L0da7e748:
    # Line 3617
    b	.L0da7e76c
    sw	$t2,240($a1)
.L0da7e750:
    lwc1	$f4,_lit_bf800000
    c.lt.s	$f4,$f5
    # Line 3624
    li	$a7,-1
    # Line 3617
    bc1fl	.L0da7e768
    # Line 3622
    swc1	$f5,244($a1)
    # Line 3620
    swc1	$f4,244($a1)
.L0da7e768:
    # Line 3624
    sw	$a7,240($a1)
.L0da7e76c:
    # Line 3626
    swc1	$f5,160($a1)
    # Line 3627
    lbu	$t0,4552($a0)
    beqz	$t0,.L0da7e890
    lwc1	$f4,724($a0)
    # Line 3629
    neg.s	$f4,$f4
.L0da7e780:
    # Line 3631
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0da7e798
    # Line 3636
    li	$v0,-1
    # Line 3634
    b	.L0da7e79c
    sw	$t2,236($a1)
.L0da7e798:
    # Line 3636
    sw	$v0,236($a1)
.L0da7e79c:
    # Line 3638
    swc1	$f4,164($a1)
    # Line 3639
    lw	$a7,3372($a0)
    addu	$a7,$a7,$a2
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,188($a1)
    lbu	$v1,4552($a0)
    beqz	$v1,.L0da7e878
    lw	$t1,3376($a0)
    # Line 3641
    lw	$t0,3416($a0)
    subu	$t0,$t0,$a3
    addu	$t0,$t0,$t1
    addiu	$t0,$t0,-1
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,192($a1)
.L0da7e7e4:
    # Line 3658
    sb	$zero,72($a1)
    # Line 3657
    sw	$zero,8($a1)
    # Line 3656
    sw	$zero,40($a1)
    # Line 3648
    sw	$a5,172($a1)
    # Line 3647
    sw	$a4,168($a1)
    sw	$a4,180($a1)
    sw	$a4,184($a1)
    # Line 3646
    sw	$a6,80($a1)
    sw	$a6,0($a1)
    # Line 3654
    li	$t1,5126
    # Line 3658
    li	$v0,6401
    # Line 3655
    li	$a3,4
    sw	$a3,36($a1)
    # Line 3658
    beq	$a6,$v0,.L0da7e8a8
    # Line 3654
    sw	$t1,4($a1)
    # Line 3659
    li	$v1,6402
    beq	$a6,$v1,.L0da7e83c
    li	$a2,6402
    lbu	$a7,3104($a0)
    beqz	$a7,.L0da7e8a0
    li	$a0,6408
.L0da7e838:
    move	$a2,$a0
.L0da7e83c:
    move	$a0,$a2
.L0da7e840:
    # Line 3672
    li	$t0,2
    # Line 3671
    sb	$zero,430($a1)
    # Line 3670
    sb	$zero,429($a1)
    # Line 3669
    sb	$t2,428($a1)
    # Line 3668
    sb	$zero,427($a1)
    # Line 3667
    sb	$t2,425($a1)
    # Line 3666
    sb	$zero,424($a1)
    # Line 3665
    sw	$zero,88($a1)
    # Line 3664
    sw	$zero,120($a1)
    # Line 3663
    sw	$a3,116($a1)
    # Line 3662
    sw	$t1,84($a1)
    # Line 3659
    sw	$a0,0($a1)
    # Line 3673
    jr	$ra
    # Line 3672
    sw	$t0,432($a1)
.L0da7e878:
    # Line 3644
    addu	$v0,$t1,$a3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0da7e7e4
    swc1	$f0,192($a1)
.L0da7e890:
    # Line 3631
    lwc1	$f1,3388($a0)
    add.s	$f1,$f1,$f6
    b	.L0da7e780
    swc1	$f1,200($a1)
.L0da7e8a0:
    b	.L0da7e838
    # Line 3659
    li	$a0,6400
.L0da7e8a8:
    b	.L0da7e840
    li	$a0,6401
.end __glInitCopyPixelsInfo

# Function: __glCopyPixelSpans
# Declared: Line 3679 (Source lines: 3680-3749)
# Address: 0x0da7e8b0 - 0x0da7eb24 (Size: 628 bytes, Frame: 0)
.globl __glCopyPixelSpans
.ent __glCopyPixelSpans
__glCopyPixelSpans:
    # Line 3680
    move	$a3,$s8
    addiu	$sp,$sp,-208
    addiu	$s8,$sp,208
    sd	$ra,-96($s8)
    lui	$v1,0x18
    addiu	$v1,$v1,-28744
    # sd	gp,-120(s8)
    # addu	gp,t9,v1
    sd	$s4,-88($s8)
    move	$s4,$a0
    # Line 3687
    lw	$at,30652($s4)
    sd	$s1,-112($s8)
    # Line 3680
    move	$s1,$a1
    # Line 3685
    lw	$a2,352($s1)
    # Line 3707
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    sd	$at,-72($s8)
    sd	$a2,-80($s8)
    # Line 3698
    lw	$a2,168($s1)
    sd	$a3,-104($s8)
    li	$a3,-16
    # Line 3702
    addu	$v0,$a2,$a2
    addiu	$v0,$v0,15
    and	$v0,$v0,$a3
    # Line 3698
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,15
    and	$a2,$a2,$a3
    subu	$sp,$sp,$a2
    # Line 3701
    move	$a3,$sp
    sd	$sp,-64($s8)
    subu	$sp,$sp,$a2
    # Line 3702
    move	$v1,$sp
    sd	$sp,-40($s8)
    subu	$sp,$sp,$v0
    # Line 3707
    bal __glComputeSpanPixelArray
    # Line 3706
    sw	$sp,312($s1)
    # Line 3707
    lbu	$a4,224($s1)
    beqzl	$a4,.L0da7e97c
    sdc1	$f24,-128($s8)
    # Line 3710
    # lw $t9, -30460($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    ld	$a2,-80($s8)
    # ld	gp,-120(s8)
    # Line 3711
    ld	$s1,-112($s8)
    ld	$s4,-88($s8)
    ld	$ra,-96($s8)
    ld	$at,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da7e97c:
    # Line 3720
    lwc1	$f24,200($s1)
    sdc1	$f28,-136($s8)
    # Line 3718
    lwc1	$f28,164($s1)
    # Line 3717
    lw	$a0,4556($s4)
    sd	$s6,-152($s8)
    # Line 3723
    move	$s6,$zero
    # Line 3715
    lw	$v1,412($s1)
    sd	$s2,-144($s8)
    # Line 3721
    lw	$s2,172($s1)
    # Line 3714
    lw	$v0,356($s1)
    sd	$v1,-48($s8)
    # Line 3723
    blez	$s2,.L0da7eaf4
    sd	$v0,-56($s8)
    sd	$s5,-176($s8)
    sd	$s3,-168($s8)
    sd	$s0,-160($s8)
    sdc1	$f30,-200($s8)
    mtc1	$a0,$f30
    trunc.w.s	$f0,$f24
    ld	$a4,-80($s8)
    sd	$s7,-192($s8)
    cvt.s.w	$f30,$f30
    sll	$a4,$a4,0x2
    mfc1	$s7,$f0
    b	.L0da7ea80
    sd	$a4,-32($s8)
.L0da7e9e4:
    sd	$s2,-184($s8)
.L0da7e9e8:
    # Line 3735
    ld	$t9,-56($s8)
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    ld	$a2,-64($s8)
    ld	$s0,-64($s8)
    # Line 3736
    ld	$at,-80($s8)
    ld	$s3,-40($s8)
    blez	$at,.L0da7ea4c
    ld	$s2,-184($s8)
    ld	$s5,-32($s8)
    move	$s2,$s1
    addu	$s5,$s5,$s1
.L0da7ea1c:
    # Line 3738
    move	$a0,$s4
    lw	$t9,360($s2)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s3
    # Line 3737
    addiu	$s2,$s2,4
    # Line 3739
    move	$at,$s0
    # Line 3740
    move	$s0,$s3
    # Line 3737
    bne	$s2,$s5,.L0da7ea1c
    # Line 3741
    move	$s3,$at
    ld	$s2,-184($s8)
.L0da7ea4c:
    # Line 3743
    ld	$t9,-48($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s0
    # Line 3723
    addiu	$s6,$s6,1
    # Line 3745
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3723
    slt	$v0,$s6,$s2
    # Line 3747
    ld	$v1,-72($s8)
    # Line 3745
    swc1	$f1,192($s1)
    # Line 3723
    beqz	$v0,.L0da7eae0
    # Line 3747
    sw	$v1,30652($s4)
.L0da7ea80:
    # Line 3724
    swc1	$f24,200($s1)
    # Line 3725
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3723
    move	$a0,$s7
    # Line 3725
    mfc1	$s7,$f2
    nop
    bne	$s7,$a0,.L0da7e9e4
    slt	$a4,$s6,$s2
    beqzl	$a4,.L0da7e9e8
    sd	$s2,-184($s8)
    # Line 3726
    lwc1	$f4,192($s1)
    # Line 3728
    swc1	$f24,200($s1)
.L0da7eab0:
    # Line 3729
    add.s	$f24,$f28,$f24
    # Line 3730
    trunc.w.s	$f3,$f24
    # Line 3727
    add.s	$f4,$f4,$f30
    # Line 3730
    mfc1	$s7,$f3
    addiu	$s6,$s6,1
    slt	$at,$s6,$s2
    bne	$s7,$a0,.L0da7e9e4
    # Line 3727
    swc1	$f4,192($s1)
    # Line 3730
    bnezl	$at,.L0da7eab0
    # Line 3728
    swc1	$f24,200($s1)
    b	.L0da7e9e4
    nop
.L0da7eae0:
    ldc1	$f30,-200($s8)
    ld	$s0,-160($s8)
    ld	$s3,-168($s8)
    ld	$s7,-192($s8)
    ld	$s5,-176($s8)
.L0da7eaf4:
    # ld	gp,-120(s8)
    # Line 3749
    ld	$s1,-112($s8)
    ld	$s2,-144($s8)
    ld	$s4,-88($s8)
    ld	$s6,-152($s8)
    ldc1	$f24,-128($s8)
    ldc1	$f28,-136($s8)
    ld	$ra,-96($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyPixelSpans

# Function: __glCopyPixels2
# Declared: Line 3755 (Source lines: 3756-3818)
# Address: 0x0da7eb24 - 0x0da7ed6c (Size: 584 bytes, Frame: 0)
.globl __glCopyPixels2
.ent __glCopyPixels2
__glCopyPixels2:
    # Line 3756
    move	$a2,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sd	$a2,-104($s8)
    sd	$ra,-80($s8)
    sd	$s7,-64($s8)
    sd	$s6,-88($s8)
    sd	$s4,-72($s8)
    move	$s4,$a0
    # Line 3761
    lw	$s7,30652($s4)
    sd	$s5,-96($s8)
    # Line 3756
    lui	$v1,0x18
    addiu	$v1,$v1,-29372
    # sd	gp,-112(s8)
    # addu	gp,t9,v1
    sd	$s1,-120($s8)
    move	$s1,$a1
    # Line 3773
    lw	$v0,168($s1)
    # Line 3782
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 3773
    li	$v1,-16
    # Line 3777
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3773
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3776
    move	$s5,$sp
    subu	$sp,$sp,$v0
    # Line 3777
    move	$s6,$sp
    subu	$sp,$sp,$at
    # Line 3782
    bal __glComputeSpanPixelArray
    # Line 3781
    sw	$sp,312($s1)
    # Line 3782
    lbu	$a4,224($s1)
    beqzl	$a4,.L0da7ebf4
    sdc1	$f24,-128($s8)
    # Line 3785
    # lw $t9, -30460($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    li	$a2,2
    # ld	gp,-112(s8)
    # Line 3786
    ld	$s1,-120($s8)
    ld	$s4,-72($s8)
    ld	$s5,-96($s8)
    ld	$s6,-88($s8)
    ld	$s7,-64($s8)
    ld	$ra,-80($s8)
    ld	$at,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da7ebf4:
    # Line 3797
    lwc1	$f24,200($s1)
    sdc1	$f28,-136($s8)
    # Line 3795
    lwc1	$f28,164($s1)
    # Line 3794
    lw	$a0,4556($s4)
    sd	$s3,-144($s8)
    # Line 3798
    lw	$s3,172($s1)
    sd	$s0,-152($s8)
    # Line 3792
    lw	$s0,412($s1)
    # Line 3791
    lw	$a4,364($s1)
    # Line 3790
    lw	$v1,360($s1)
    # Line 3789
    lw	$v0,356($s1)
    sd	$a4,-48($s8)
    sd	$v1,-56($s8)
    sd	$v0,-32($s8)
    sd	$s0,-40($s8)
    # Line 3799
    blez	$s3,.L0da7ed30
    move	$s0,$zero
    trunc.w.s	$f0,$f24
    sd	$s2,-160($s8)
    sdc1	$f30,-168($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0da7ecc8
    cvt.s.w	$f30,$f30
.L0da7ec54:
    # Line 3810
    ld	$t9,-32($s8)
.L0da7ec58:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3811
    move	$a0,$s4
    ld	$t9,-56($s8)
    move	$a1,$s1
    move	$a2,$s5
    jalr	$t9
    move	$a3,$s6
    # Line 3812
    move	$a0,$s4
    ld	$t9,-48($s8)
    move	$a1,$s1
    move	$a2,$s6
    jalr	$t9
    move	$a3,$s5
    # Line 3813
    ld	$t9,-40($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s5
    # Line 3799
    addiu	$s0,$s0,1
    # Line 3814
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3799
    slt	$at,$s0,$s3
    # Line 3814
    swc1	$f1,192($s1)
    # Line 3799
    beqz	$at,.L0da7ed28
    # Line 3816
    sw	$s7,30652($s4)
.L0da7ecc8:
    # Line 3800
    swc1	$f24,200($s1)
    # Line 3801
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3799
    move	$a0,$s2
    # Line 3801
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0da7ec54
    slt	$v0,$s0,$s3
    beqz	$v0,.L0da7ec58
    # Line 3810
    ld	$t9,-32($s8)
    # Line 3802
    lwc1	$f4,192($s1)
    # Line 3804
    swc1	$f24,200($s1)
.L0da7ecf8:
    # Line 3805
    add.s	$f24,$f28,$f24
    # Line 3806
    trunc.w.s	$f3,$f24
    # Line 3803
    add.s	$f4,$f4,$f30
    # Line 3806
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0da7ec54
    # Line 3803
    swc1	$f4,192($s1)
    # Line 3806
    bnezl	$v1,.L0da7ecf8
    # Line 3804
    swc1	$f24,200($s1)
    b	.L0da7ec54
    nop
.L0da7ed28:
    ldc1	$f30,-168($s8)
    ld	$s2,-160($s8)
.L0da7ed30:
    # ld	gp,-112(s8)
    # Line 3818
    ld	$s0,-152($s8)
    ld	$s1,-120($s8)
    ld	$s3,-144($s8)
    ld	$s4,-72($s8)
    ld	$s5,-96($s8)
    ld	$s6,-88($s8)
    ld	$s7,-64($s8)
    ldc1	$f24,-128($s8)
    ldc1	$f28,-136($s8)
    ld	$ra,-80($s8)
    ld	$a0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glCopyPixels2

# Function: __glCopyPixels1
# Declared: Line 3823 (Source lines: 3824-3882)
# Address: 0x0da7ed6c - 0x0da7ef94 (Size: 552 bytes, Frame: 0)
.globl __glCopyPixels1
.ent __glCopyPixels1
__glCopyPixels1:
    # Line 3824
    move	$a2,$s8
    addiu	$sp,$sp,-160
    addiu	$s8,$sp,160
    sd	$a2,-96($s8)
    sd	$ra,-72($s8)
    sd	$s7,-56($s8)
    sd	$s6,-80($s8)
    sd	$s4,-64($s8)
    move	$s4,$a0
    # Line 3829
    lw	$s7,30652($s4)
    sd	$s5,-88($s8)
    # Line 3824
    lui	$v1,0x18
    addiu	$v1,$v1,-29956
    # sd	gp,-104(s8)
    # addu	gp,t9,v1
    sd	$s1,-112($s8)
    move	$s1,$a1
    # Line 3839
    lw	$v0,168($s1)
    # Line 3848
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 3839
    li	$v1,-16
    # Line 3843
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3839
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3842
    move	$s5,$sp
    subu	$sp,$sp,$v0
    # Line 3843
    move	$s6,$sp
    subu	$sp,$sp,$at
    # Line 3848
    bal __glComputeSpanPixelArray
    # Line 3847
    sw	$sp,312($s1)
    # Line 3848
    lbu	$a4,224($s1)
    beqzl	$a4,.L0da7ee3c
    sdc1	$f24,-120($s8)
    # Line 3851
    # lw $t9, -30460($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    li	$a2,1
    # ld	gp,-104(s8)
    # Line 3852
    ld	$s1,-112($s8)
    ld	$s4,-64($s8)
    ld	$s5,-88($s8)
    ld	$s6,-80($s8)
    ld	$s7,-56($s8)
    ld	$ra,-72($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da7ee3c:
    # Line 3862
    lwc1	$f24,200($s1)
    sdc1	$f28,-128($s8)
    # Line 3860
    lwc1	$f28,164($s1)
    # Line 3859
    lw	$a0,4556($s4)
    sd	$s0,-144($s8)
    # Line 3864
    move	$s0,$zero
    # Line 3855
    lw	$v0,356($s1)
    # Line 3856
    lw	$v1,360($s1)
    # Line 3857
    lw	$a4,412($s1)
    sd	$s3,-136($s8)
    # Line 3863
    lw	$s3,172($s1)
    sd	$a4,-40($s8)
    sd	$v1,-48($s8)
    # Line 3864
    blez	$s3,.L0da7ef58
    sd	$v0,-32($s8)
    trunc.w.s	$f0,$f24
    sd	$s2,-152($s8)
    sdc1	$f30,-160($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0da7eef0
    cvt.s.w	$f30,$f30
.L0da7ee94:
    # Line 3875
    ld	$t9,-32($s8)
.L0da7ee98:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3876
    move	$a0,$s4
    ld	$t9,-48($s8)
    move	$a1,$s1
    move	$a2,$s5
    jalr	$t9
    move	$a3,$s6
    # Line 3877
    ld	$t9,-40($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    # Line 3864
    addiu	$s0,$s0,1
    # Line 3878
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3864
    slt	$at,$s0,$s3
    # Line 3878
    swc1	$f1,192($s1)
    # Line 3864
    beqz	$at,.L0da7ef50
    # Line 3880
    sw	$s7,30652($s4)
.L0da7eef0:
    # Line 3865
    swc1	$f24,200($s1)
    # Line 3866
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3864
    move	$a0,$s2
    # Line 3866
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0da7ee94
    slt	$v0,$s0,$s3
    beqz	$v0,.L0da7ee98
    # Line 3875
    ld	$t9,-32($s8)
    # Line 3867
    lwc1	$f4,192($s1)
    # Line 3869
    swc1	$f24,200($s1)
.L0da7ef20:
    # Line 3870
    add.s	$f24,$f28,$f24
    # Line 3871
    trunc.w.s	$f3,$f24
    # Line 3868
    add.s	$f4,$f4,$f30
    # Line 3871
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0da7ee94
    # Line 3868
    swc1	$f4,192($s1)
    # Line 3871
    bnezl	$v1,.L0da7ef20
    # Line 3869
    swc1	$f24,200($s1)
    b	.L0da7ee94
    nop
.L0da7ef50:
    ldc1	$f30,-160($s8)
    ld	$s2,-152($s8)
.L0da7ef58:
    # ld	gp,-104(s8)
    # Line 3882
    ld	$s0,-144($s8)
    ld	$s1,-112($s8)
    ld	$s3,-136($s8)
    ld	$s4,-64($s8)
    ld	$s5,-88($s8)
    ld	$s6,-80($s8)
    ld	$s7,-56($s8)
    ldc1	$f24,-120($s8)
    ldc1	$f28,-128($s8)
    ld	$ra,-72($s8)
    ld	$a0,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glCopyPixels1

# Function: __glCopyPixels0
# Declared: Line 3887 (Source lines: 3888-3937)
# Address: 0x0da7ef94 - 0x0da7f178 (Size: 484 bytes, Frame: 0)
.globl __glCopyPixels0
.ent __glCopyPixels0
__glCopyPixels0:
    # Line 3888
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$a2,-64($s8)
    sd	$s4,-48($s8)
    move	$s4,$a0
    sd	$ra,-40($s8)
    sd	$s5,-72($s8)
    lui	$v1,0x18
    addiu	$v1,$v1,-30508
    # sd	gp,-56(s8)
    # addu	gp,t9,v1
    sd	$s1,-80($s8)
    move	$s1,$a1
    # Line 3900
    lw	$v0,168($s1)
    li	$v1,-16
    # Line 3907
    # lw $t9, -30564($gp) # &__glComputeSpanPixelArray
    # Line 3903
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3900
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3903
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 3907
    bal __glComputeSpanPixelArray
    # Line 3906
    sw	$sp,312($s1)
    # Line 3907
    lbu	$a3,224($s1)
    beqzl	$a3,.L0da7f048
    sdc1	$f24,-88($s8)
    # Line 3910
    # lw $t9, -30460($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    move	$a2,$zero
    # ld	gp,-56(s8)
    # Line 3911
    ld	$s1,-80($s8)
    ld	$s4,-48($s8)
    ld	$s5,-72($s8)
    ld	$ra,-40($s8)
    ld	$at,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da7f048:
    # Line 3920
    lwc1	$f24,200($s1)
    sdc1	$f28,-96($s8)
    # Line 3918
    lwc1	$f28,164($s1)
    # Line 3917
    lw	$a0,4556($s4)
    sd	$s6,-120($s8)
    # Line 3914
    lw	$s6,356($s1)
    sd	$s0,-112($s8)
    sd	$s3,-104($s8)
    # Line 3921
    lw	$s3,172($s1)
    # Line 3915
    lw	$v0,412($s1)
    # Line 3922
    move	$s0,$zero
    blez	$s3,.L0da7f140
    sd	$v0,-32($s8)
    trunc.w.s	$f0,$f24
    sd	$s2,-128($s8)
    sdc1	$f30,-136($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0da7f0d8
    cvt.s.w	$f30,$f30
.L0da7f098:
    # Line 3933
    move	$a0,$s4
.L0da7f09c:
    move	$a1,$s1
    move	$a2,$s5
    jalr	$s6
    move	$t9,$s6
    # Line 3934
    ld	$t9,-32($s8)
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3922
    addiu	$s0,$s0,1
    # Line 3935
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3922
    slt	$v1,$s0,$s3
    beqz	$v1,.L0da7f138
    # Line 3935
    swc1	$f1,192($s1)
.L0da7f0d8:
    # Line 3923
    swc1	$f24,200($s1)
    # Line 3924
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3922
    move	$a0,$s2
    # Line 3924
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0da7f098
    slt	$a3,$s0,$s3
    beqzl	$a3,.L0da7f09c
    # Line 3933
    move	$a0,$s4
    # Line 3925
    lwc1	$f4,192($s1)
    # Line 3927
    swc1	$f24,200($s1)
.L0da7f108:
    # Line 3928
    add.s	$f24,$f28,$f24
    # Line 3929
    trunc.w.s	$f3,$f24
    # Line 3926
    add.s	$f4,$f4,$f30
    # Line 3929
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    bne	$s2,$a0,.L0da7f098
    # Line 3926
    swc1	$f4,192($s1)
    # Line 3929
    bnezl	$at,.L0da7f108
    # Line 3927
    swc1	$f24,200($s1)
    b	.L0da7f098
    nop
.L0da7f138:
    ldc1	$f30,-136($s8)
    ld	$s2,-128($s8)
.L0da7f140:
    # ld	gp,-56(s8)
    # Line 3937
    ld	$s0,-112($s8)
    ld	$s1,-80($s8)
    ld	$s3,-104($s8)
    ld	$s4,-48($s8)
    ld	$s5,-72($s8)
    ld	$s6,-120($s8)
    ldc1	$f24,-88($s8)
    ldc1	$f28,-96($s8)
    ld	$ra,-40($s8)
    ld	$v0,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyPixels0

# Function: __glCopyPixelsOverlapping
# Declared: Line 3952 (Source lines: 3954-4207)
# Address: 0x0da7f178 - 0x0da7faec (Size: 2420 bytes, Frame: 0)
.globl __glCopyPixelsOverlapping
.ent __glCopyPixelsOverlapping
__glCopyPixelsOverlapping:
    # Line 3984
    andi	$at,$a2,0x1
    # Line 3954
    move	$a4,$s8
    addiu	$sp,$sp,-768
    addiu	$s8,$sp,768
    sd	$a4,-656($s8)
    sd	$s5,-672($s8)
    move	$s5,$a2
    sd	$s3,-632($s8)
    # Line 3984
    lw	$a3,412($a1)
    sd	$s4,-624($s8)
    sd	$s7,-640($s8)
    # Line 3954
    move	$s7,$a1
    # Line 3983
    lw	$a1,356($a1)
    sd	$s2,-648($s8)
    # Line 3954
    move	$s2,$a0
    # Line 3959
    lw	$a0,30652($a0)
    sd	$a3,-552($s8)
    sd	$a1,-616($s8)
    sd	$a0,-704($s8)
    # Line 3954
    lui	$v1,0x18
    addiu	$v1,$v1,-30992
    # sd	gp,-664(s8)
    # Line 3976
    lw	$v0,168($s7)
    # Line 3954
    # addu	gp,t9,v1
    # Line 3976
    li	$v1,-16
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3979
    move	$v1,$sp
    sd	$sp,-592($s8)
    subu	$sp,$sp,$v0
    # Line 3980
    move	$s4,$sp
    subu	$sp,$sp,$v0
    # Line 3981
    move	$a3,$sp
    # Line 3984
    beqz	$at,.L0da7fa38
    # Line 3981
    move	$s3,$sp
    sd	$s6,-760($s8)
    sdc1	$f24,-712($s8)
    sdc1	$f28,-720($s8)
    sdc1	$f30,-728($s8)
    # Line 3987
    move	$v0,$a3
    sd	$a3,-576($s8)
    move	$at,$a3
    sd	$a3,-584($s8)
.L0da7f22c:
    # Line 4002
    li	$a1,125
    move	$a0,$zero
    move	$a6,$s7
    # Line 4001
    lw	$a5,288($s7)
    # Line 4000
    lw	$a3,284($s7)
    # Line 3999
    lwc1	$f28,272($s7)
    # Line 3998
    lwc1	$f30,268($s7)
    # Line 3993
    lwc1	$f24,164($s7)
    # Line 3995
    lw	$a4,232($s7)
    # Line 3996
    lw	$a7,276($s7)
    # Line 3994
    lw	$v1,228($s7)
    sd	$a4,-600($s8)
    # Line 3997
    lw	$s6,280($s7)
    sd	$v1,-608($s8)
    sd	$a7,-696($s8)
    sd	$s6,-680($s8)
    # Line 3990
    addiu	$s6,$s8,-544
    # Line 4002
    move	$a7,$s6
.L0da7f274:
    addu	$v0,$a0,$a7
    addu	$at,$a0,$a6
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7f274
    sw	$at,0($v0)
    # Line 4008
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 4007
    mtc1	$a3,$f3
    # Line 4010
    ld	$a1,-608($s8)
    # Line 4007
    cvt.s.w	$f3,$f3
    # Line 4010
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    trunc.w.s	$f5,$f28
    ld	$a0,-600($s8)
    trunc.w.s	$f4,$f30
    mtc1	$a0,$f0
    sd	$zero,-568($s8)
    sd	$zero,-560($s8)
    cvt.s.w	$f0,$f0
    mfc1	$a1,$f4
    mtc1	$zero,$f4
    mul.s	$f1,$f1,$f24
    # Line 4003
    lw	$v1,236($s7)
    # Line 4010
    c.lt.s	$f4,$f24
    mul.s	$f0,$f0,$f24
    # Line 4003
    negu	$v1,$v1
    # Line 4004
    neg.s	$f4,$f24
    # Line 4003
    sw	$v1,-308($s8)
    # Line 4004
    swc1	$f4,-380($s8)
    # Line 4010
    add.s	$f1,$f1,$f30
    # Line 4005
    swc1	$f30,200($s7)
    # Line 4006
    swc1	$f28,-344($s8)
    # Line 4010
    sub.s	$f0,$f28,$f0
    # Line 4007
    swc1	$f3,192($s7)
    # Line 4008
    swc1	$f2,-352($s8)
    # Line 4010
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f5
    lw	$t2,220($s7)
    trunc.w.s	$f0,$f0
    lw	$t3,208($s7)
    lw	$v0,4556($s2)
    mfc1	$t0,$f1
    mfc1	$t1,$f0
    bc1f	.L0da7f3b8
    sd	$v0,-688($s8)
    # Line 4014
    move	$a7,$t3
    # Line 4018
    move	$a5,$a0
    # Line 4019
    addiu	$t8,$t1,1
    # Line 4015
    addu	$a6,$t3,$t2
    addiu	$a6,$a6,-1
    # Line 4019
    slt	$a4,$a6,$a0
    beqz	$a4,.L0da7f35c
    move	$a3,$t8
    # Line 4020
    move	$a5,$a6
.L0da7f35c:
    slt	$at,$t8,$a7
    beqzl	$at,.L0da7f370
    # Line 4022
    sw	$a5,-336($s8)
    # Line 4021
    move	$a3,$a7
    # Line 4022
    sw	$a5,-336($s8)
.L0da7f370:
    # Line 4023
    subu	$v0,$a5,$a3
    # Line 4026
    move	$a5,$a1
    # Line 4027
    slt	$v1,$a1,$a7
    addiu	$a0,$t0,-1
    move	$a3,$a0
    # Line 4023
    addiu	$v0,$v0,1
    # Line 4027
    beqz	$v1,.L0da7f394
    # Line 4023
    sw	$v0,-324($s8)
    # Line 4028
    move	$a5,$a7
.L0da7f394:
    slt	$v1,$a6,$a0
    beqzl	$v1,.L0da7f3a8
    # Line 4030
    sw	$a5,208($s7)
    # Line 4029
    move	$a3,$a6
    # Line 4030
    sw	$a5,208($s7)
.L0da7f3a8:
    # Line 4031
    subu	$a4,$a3,$a5
    addiu	$a4,$a4,1
    b	.L0da7f434
    sw	$a4,220($s7)
.L0da7f3b8:
    # Line 4033
    move	$a6,$t3
    # Line 4037
    move	$a5,$a0
    # Line 4038
    addiu	$t8,$t1,-1
    # Line 4034
    subu	$a7,$t3,$t2
    addiu	$a7,$a7,1
    # Line 4038
    slt	$at,$a0,$a7
    beqz	$at,.L0da7f3dc
    move	$a3,$t8
    # Line 4039
    move	$a5,$a7
.L0da7f3dc:
    slt	$at,$a6,$t8
    beqzl	$at,.L0da7f3f0
    # Line 4041
    sw	$a5,-336($s8)
    # Line 4040
    move	$a3,$a6
    # Line 4041
    sw	$a5,-336($s8)
.L0da7f3f0:
    # Line 4042
    subu	$v0,$a3,$a5
    # Line 4045
    move	$a5,$a1
    # Line 4046
    slt	$v1,$a6,$a1
    addiu	$a0,$t0,1
    move	$a3,$a0
    # Line 4042
    addiu	$v0,$v0,1
    # Line 4046
    beqz	$v1,.L0da7f414
    # Line 4042
    sw	$v0,-324($s8)
    # Line 4047
    move	$a5,$a6
.L0da7f414:
    slt	$v1,$a0,$a7
    beqzl	$v1,.L0da7f428
    # Line 4049
    sw	$a5,208($s7)
    # Line 4048
    move	$a3,$a7
    # Line 4049
    sw	$a5,208($s7)
.L0da7f428:
    # Line 4050
    subu	$a4,$a5,$a3
    addiu	$a4,$a4,1
    sw	$a4,220($s7)
.L0da7f434:
    ld	$at,-608($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    beqz	$at,.L0da7f894
    sd	$s0,-736($s8)
    ld	$v0,-600($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    beqz	$v0,.L0da7f758
    sd	$s0,-736($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    b	.L0da7f498
    sd	$s0,-736($s8)
.L0da7f46c:
    # Line 4134
    ld	$t9,-552($s8)
.L0da7f470:
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-576($s8)
    ld	$v1,-704($s8)
    # Line 4136
    sw	$v1,30652($s2)
.L0da7f488:
    ld	$a4,-608($s8)
    # Line 4124
    beqz	$a4,.L0da7f894
    ld	$at,-600($s8)
    beqz	$at,.L0da7f758
.L0da7f498:
    ld	$v0,-696($s8)
    # Line 4071
    ld	$v1,-680($s8)
    ld	$at,-688($s8)
    # Line 4053
    beqz	$v0,.L0da7f5b0
    ld	$a4,-696($s8)
    # Line 4055
    addiu	$a4,$a4,-1
    # Line 4071
    beqz	$v1,.L0da7f684
    sd	$a4,-696($s8)
.L0da7f4b8:
    ld	$at,-680($s8)
    # Line 4074
    addiu	$at,$at,-1
    sd	$at,-680($s8)
.L0da7f4c4:
    ld	$v0,-568($s8)
    # Line 4106
    beqz	$v0,.L0da7f54c
    ld	$at,-560($s8)
    # Line 4110
    blez	$s5,.L0da7f52c
    move	$s0,$zero
    move	$s1,$s7
    b	.L0da7f508
    andi	$v1,$s0,0x1
.L0da7f4e4:
    # Line 4115
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
.L0da7f4f8:
    # Line 4110
    addiu	$s0,$s0,1
    beq	$s5,$s0,.L0da7f52c
    addiu	$s1,$s1,4
    andi	$v1,$s0,0x1
.L0da7f508:
    beqz	$v1,.L0da7f4e4
    lw	$t9,360($s1)
    # Line 4112
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    b	.L0da7f4f8
    nop
.L0da7f52c:
    # Line 4119
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$a4,-704($s8)
    # Line 4121
    sw	$a4,30652($s2)
    ld	$at,-560($s8)
.L0da7f54c:
    # Line 4125
    move	$s1,$s7
    # Line 4121
    beqz	$at,.L0da7f488
    # Line 4125
    move	$s0,$zero
    blez	$s5,.L0da7f470
    # Line 4134
    ld	$t9,-552($s8)
    b	.L0da7f58c
    # Line 4125
    andi	$v0,$s0,0x1
.L0da7f568:
    # Line 4130
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
.L0da7f57c:
    # Line 4125
    addiu	$s0,$s0,1
    beq	$s5,$s0,.L0da7f46c
    addiu	$s1,$s1,4
    andi	$v0,$s0,0x1
.L0da7f58c:
    beqz	$v0,.L0da7f568
    lw	$t9,360($s1)
    # Line 4127
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    b	.L0da7f57c
    nop
.L0da7f5b0:
    # Line 4059
    swc1	$f30,200($s7)
    # Line 4057
    li	$a1,1
    # Line 4060
    trunc.w.s	$f3,$f30
    # Line 4058
    ld	$v1,-608($s8)
    sd	$a1,-568($s8)
    # Line 4060
    add.s	$f5,$f24,$f30
    # Line 4058
    addiu	$v1,$v1,-1
    sd	$v1,-608($s8)
    # Line 4060
    mfc1	$a1,$f3
    beqz	$v1,.L0da7f634
    mov.s	$f4,$f5
    trunc.w.s	$f0,$f5
    mfc1	$a4,$f0
    nop
    bnel	$a4,$a1,.L0da7fa88
    # Line 4066
    trunc.w.s	$f1,$f4
    # Line 4062
    mtc1	$at,$f6
    lwc1	$f5,192($s7)
    cvt.s.w	$f6,$f6
    # Line 4063
    swc1	$f4,200($s7)
.L0da7f600:
    # Line 4064
    add.s	$f4,$f24,$f4
    # Line 4066
    trunc.w.s	$f0,$f4
    # Line 4065
    ld	$v0,-608($s8)
    # Line 4066
    add.s	$f5,$f5,$f6
    # Line 4065
    addiu	$v0,$v0,-1
    sd	$v0,-608($s8)
    # Line 4066
    mfc1	$a3,$f0
    beqz	$v0,.L0da7f640
    swc1	$f5,192($s7)
    beql	$a1,$a3,.L0da7f600
    # Line 4063
    swc1	$f4,200($s7)
    b	.L0da7f64c
    # Line 4069
    mov.s	$f30,$f4
.L0da7f634:
    # Line 4066
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0da7f640:
    # Line 4068
    beq	$a1,$a3,.L0da7f75c
    ld	$a4,-608($s8)
    # Line 4069
    mov.s	$f30,$f4
.L0da7f64c:
    # Line 4070
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-592($s8)
    ld	$a4,-688($s8)
    # Line 4071
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,192($s7)
    ld	$v1,-680($s8)
    add.s	$f2,$f2,$f3
    bnez	$v1,.L0da7f4b8
    swc1	$f2,192($s7)
.L0da7f684:
    # Line 4078
    swc1	$f28,-344($s8)
    # Line 4076
    li	$v0,1
    # Line 4079
    trunc.w.s	$f4,$f28
    # Line 4077
    ld	$at,-600($s8)
    sd	$v0,-560($s8)
    # Line 4079
    sub.s	$f6,$f28,$f24
    # Line 4077
    addiu	$at,$at,-1
    sd	$at,-600($s8)
    # Line 4079
    mfc1	$a0,$f4
    beqz	$at,.L0da7fa5c
    mov.s	$f4,$f6
    trunc.w.s	$f0,$f6
    mfc1	$v1,$f0
    nop
    bne	$v1,$a0,.L0da7fa94
    # Line 4081
    lwc1	$f5,-352($s8)
    ld	$a4,-688($s8)
    mtc1	$a4,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 4082
    swc1	$f4,-344($s8)
.L0da7f6d8:
    # Line 4083
    sub.s	$f4,$f4,$f24
    # Line 4085
    trunc.w.s	$f0,$f4
    # Line 4084
    ld	$at,-600($s8)
    # Line 4085
    sub.s	$f5,$f5,$f6
    # Line 4084
    addiu	$at,$at,-1
    sd	$at,-600($s8)
    # Line 4085
    mfc1	$a3,$f0
    beqz	$at,.L0da7fa68
    swc1	$f5,-352($s8)
    beql	$a0,$a3,.L0da7f6d8
    # Line 4082
    swc1	$f4,-344($s8)
.L0da7f704:
    # Line 4104
    mov.s	$f28,$f4
    # Line 4105
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s4
    ld	$v0,-688($s8)
    # Line 4106
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,-352($s8)
    sub.s	$f1,$f1,$f2
    b	.L0da7f4c4
    swc1	$f1,-352($s8)
.L0da7f73c:
    # Line 4098
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$v1,-704($s8)
    # Line 4100
    sw	$v1,30652($s2)
.L0da7f758:
    ld	$a4,-608($s8)
.L0da7f75c:
    # Line 4144
    beqz	$a4,.L0da7f894
    ld	$s1,-608($s8)
.L0da7f764:
    # Line 4148
    trunc.w.s	$f3,$f30
    # Line 4147
    swc1	$f30,200($s7)
    ld	$v0,-688($s8)
    # Line 4148
    add.s	$f5,$f24,$f30
    # Line 4146
    addiu	$s1,$s1,-1
    # Line 4148
    mfc1	$a1,$f3
    beqz	$s1,.L0da7f7d4
    mov.s	$f4,$f5
    trunc.w.s	$f0,$f5
    mfc1	$at,$f0
    nop
    bnel	$at,$a1,.L0da7fa2c
    # Line 4154
    trunc.w.s	$f3,$f4
    # Line 4150
    mtc1	$v0,$f6
    lwc1	$f5,192($s7)
    cvt.s.w	$f6,$f6
    # Line 4151
    swc1	$f4,200($s7)
.L0da7f7a8:
    # Line 4152
    add.s	$f4,$f24,$f4
    # Line 4154
    trunc.w.s	$f0,$f4
    add.s	$f5,$f5,$f6
    # Line 4153
    addiu	$s1,$s1,-1
    # Line 4154
    mfc1	$a3,$f0
    beqz	$s1,.L0da7f7e0
    swc1	$f5,192($s7)
    beql	$a1,$a3,.L0da7f7a8
    # Line 4151
    swc1	$f4,200($s7)
    b	.L0da7f7e8
    # Line 4157
    mov.s	$f30,$f4
.L0da7f7d4:
    # Line 4154
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0da7f7e0:
    # Line 4156
    beq	$a1,$a3,.L0da7f894
    # Line 4157
    mov.s	$f30,$f4
.L0da7f7e8:
    # Line 4159
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-592($s8)
    # Line 4160
    blez	$s5,.L0da7f85c
    move	$s0,$zero
    sd	$s1,-608($s8)
    b	.L0da7f830
    move	$s1,$s7
.L0da7f810:
    # Line 4162
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    # Line 4160
    addiu	$s0,$s0,1
.L0da7f828:
    beq	$s5,$s0,.L0da7f858
    addiu	$s1,$s1,4
.L0da7f830:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0da7f810
    lw	$t9,360($s1)
    # Line 4165
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
    b	.L0da7f828
    # Line 4160
    addiu	$s0,$s0,1
.L0da7f858:
    ld	$s1,-608($s8)
.L0da7f85c:
    # Line 4169
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$at,-688($s8)
    # Line 4173
    mtc1	$at,$f3
    # Line 4171
    ld	$a4,-704($s8)
    # Line 4173
    cvt.s.w	$f3,$f3
    # Line 4171
    sw	$a4,30652($s2)
    # Line 4173
    lwc1	$f2,192($s7)
    add.s	$f2,$f2,$f3
    bnez	$s1,.L0da7f764
    swc1	$f2,192($s7)
.L0da7f894:
    # Line 4176
    ld	$v0,-600($s8)
    beqz	$v0,.L0da7f9e0
    ldc1	$f30,-728($s8)
    lwc1	$f5,-352($s8)
    ldc1	$f30,-728($s8)
    b	.L0da7f8ec
    ld	$s1,-600($s8)
.L0da7f8b0:
    ld	$s1,-600($s8)
.L0da7f8b4:
    # Line 4201
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-576($s8)
    ld	$a4,-688($s8)
    # Line 4205
    mtc1	$a4,$f0
    # Line 4203
    ld	$v1,-704($s8)
    # Line 4205
    cvt.s.w	$f0,$f0
    # Line 4203
    sw	$v1,30652($s2)
    # Line 4205
    lwc1	$f5,-352($s8)
    sub.s	$f5,$f5,$f0
    beqz	$s1,.L0da7f9e0
    swc1	$f5,-352($s8)
.L0da7f8ec:
    # Line 4180
    trunc.w.s	$f1,$f28
    # Line 4179
    swc1	$f28,-344($s8)
    ld	$v0,-688($s8)
    # Line 4180
    sub.s	$f6,$f28,$f24
    # Line 4178
    addiu	$s1,$s1,-1
    # Line 4180
    mfc1	$a0,$f1
    beqz	$s1,.L0da7f95c
    mov.s	$f4,$f6
    trunc.w.s	$f2,$f6
    mfc1	$at,$f2
    nop
    bnel	$at,$a0,.L0da7fa20
    # Line 4186
    trunc.w.s	$f2,$f4
    # Line 4182
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 4183
    swc1	$f4,-344($s8)
.L0da7f930:
    # Line 4184
    sub.s	$f4,$f4,$f24
    # Line 4186
    trunc.w.s	$f0,$f4
    sub.s	$f5,$f5,$f6
    # Line 4185
    addiu	$s1,$s1,-1
    # Line 4186
    mfc1	$a3,$f0
    beqz	$s1,.L0da7f968
    swc1	$f5,-352($s8)
    beql	$a0,$a3,.L0da7f930
    # Line 4183
    swc1	$f4,-344($s8)
    b	.L0da7f970
    # Line 4189
    mov.s	$f28,$f4
.L0da7f95c:
    # Line 4186
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0da7f968:
    # Line 4188
    beq	$a0,$a3,.L0da7f9e0
    # Line 4189
    mov.s	$f28,$f4
.L0da7f970:
    # Line 4191
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s4
    # Line 4192
    blez	$s5,.L0da7f8b4
    move	$s0,$zero
    sd	$s1,-600($s8)
    b	.L0da7f9b8
    move	$s1,$s7
.L0da7f998:
    # Line 4194
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    # Line 4192
    addiu	$s0,$s0,1
.L0da7f9b0:
    beq	$s5,$s0,.L0da7f8b0
    addiu	$s1,$s1,4
.L0da7f9b8:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0da7f998
    lw	$t9,360($s1)
    # Line 4197
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
    b	.L0da7f9b0
    # Line 4192
    addiu	$s0,$s0,1
.L0da7f9e0:
    # ld	gp,-664(s8)
    # Line 4207
    ld	$s0,-736($s8)
    ld	$s1,-744($s8)
    ld	$s2,-648($s8)
    ld	$s3,-632($s8)
    ld	$s4,-624($s8)
    ld	$s5,-672($s8)
    ld	$s6,-760($s8)
    ld	$s7,-640($s8)
    ldc1	$f24,-712($s8)
    ldc1	$f28,-720($s8)
    ld	$ra,-752($s8)
    ld	$a0,-656($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0da7fa20:
    # Line 4186
    mfc1	$a3,$f2
    b	.L0da7f968
    nop
.L0da7fa2c:
    # Line 4154
    mfc1	$a3,$f3
    b	.L0da7f7e0
    nop
.L0da7fa38:
    sd	$s6,-760($s8)
    sdc1	$f24,-712($s8)
    sdc1	$f28,-720($s8)
    sdc1	$f30,-728($s8)
    # Line 3990
    move	$a4,$s4
    ld	$at,-592($s8)
    sd	$s4,-576($s8)
    b	.L0da7f22c
    sd	$at,-584($s8)
.L0da7fa5c:
    # Line 4085
    trunc.w.s	$f0,$f4
    mfc1	$a3,$f0
    nop
.L0da7fa68:
    bne	$a0,$a3,.L0da7f704
    ld	$v0,-568($s8)
    beqz	$v0,.L0da7f75c
    ld	$a4,-608($s8)
    # Line 4089
    blez	$s5,.L0da7f73c
    move	$s0,$zero
    b	.L0da7fac4
    move	$s1,$s7
.L0da7fa88:
    # Line 4066
    mfc1	$a3,$f1
    b	.L0da7f640
    nop
.L0da7fa94:
    # Line 4085
    trunc.w.s	$f2,$f4
    mfc1	$a3,$f2
    b	.L0da7fa68
    nop
.L0da7faa4:
    # Line 4091
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    # Line 4089
    addiu	$s0,$s0,1
.L0da7fabc:
    beq	$s5,$s0,.L0da7f73c
    addiu	$s1,$s1,4
.L0da7fac4:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0da7faa4
    lw	$t9,360($s1)
    # Line 4094
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
    b	.L0da7fabc
    # Line 4089
    addiu	$s0,$s0,1
.end __glCopyPixelsOverlapping

# Function: __glSlowPickCopyPixels
# Declared: Line 4213 (Source lines: 4215-4222)
# Address: 0x0da7faec - 0x0da7fb7c (Size: 144 bytes, Frame: 192)
.globl __glSlowPickCopyPixels
.ent __glSlowPickCopyPixels
__glSlowPickCopyPixels:
    # Line 4215
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    move	$at,$a1
    addiu	$sp,$sp,-576
    # Line 4218
    addiu	$a1,$sp,0
    move	$a2,$at
    sd	$gp,504($sp)
    # Line 4215
    lui	$v0,0x17
    addiu	$v0,$v0,32124
    addu	$gp,$t9,$v0
    # Line 4218
    # lw $t9, -30480($gp) # &__glInitCopyPixelsInfo
    sd	$s0,520($sp)
    sd	$ra,512($sp)
    bal __glInitCopyPixelsInfo
    # Line 4215
    move	$s0,$a0
    # Line 4219
    # lw $t9, -30484($gp) # &__glClipCopyPixels
    move	$a0,$s0
    bal __glClipCopyPixels
    addiu	$a1,$sp,0
    bnez	$v0,.L0da7fb5c
    # Line 4221
    nop	# was lw $t9, -30452($gp) # &__glGenericPickCopyPixels
    # Line 4219
    ld	$ra,512($sp)
    ld	$gp,504($sp)
    ld	$s0,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0da7fb5c:
    # Line 4221
    move	$a0,$s0
    bal __glGenericPickCopyPixels
    addiu	$a1,$sp,0
    # Line 4222
    ld	$ra,512($sp)
    ld	$gp,504($sp)
    ld	$s0,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end __glSlowPickCopyPixels

# Function: __glGenericPickCopyPixels
# Declared: Line 4228 (Source lines: 4229-4291)
# Address: 0x0da7fb7c - 0x0da7fca0 (Size: 292 bytes, Frame: 208)
.globl __glGenericPickCopyPixels
.ent __glGenericPickCopyPixels
__glGenericPickCopyPixels:
    # Line 4241
    li	$v0,1
    # Line 4229
    addiu	$sp,$sp,-80
    # Line 4243
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4229
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 4241
    sb	$v0,12($sp)
    # Line 4240
    li	$at,3
    sw	$at,8($sp)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    # Line 4229
    lui	$ra,0x17
    addiu	$ra,$ra,31980
    addu	$gp,$t9,$ra
    # Line 4243
    # lw $t9, -32736($gp) # &sub_0da80000
    # Line 4238
    li	$at,4
    # Line 4239
    sw	$at,4($sp)
    # Line 4243
    addiu	$t9,$t9,-29612
    bal __glSpanRGBAScaleBiasReduce
    # Line 4238
    sw	$at,0($sp)
    li	$a3,1
    # Line 4245
    lw	$a5,16($sp)
    # Line 4246
    lw	$a4,20($sp)
    # Line 4251
    lw	$a1,436($s0)
    # Line 4249
    addiu	$a0,$v0,-1
    sw	$a0,264($s0)
    # Line 4259
    li	$at,2
    # Line 4251
    lw	$a6,0($a1)
    li	$v1,0x8011
    beq	$a6,$v1,.L0da7fc70
    ld	$a0,48($sp)
    li	$a2,0x8012
    beq	$a6,$a2,.L0da7fc7c
    # Line 4256
    nop	# was lw $t9, -29836($gp) # &__glSep2dCopyPixels
    # Line 4259
    beqz	$v0,.L0da7fc84
    # Line 4261
    nop	# was lw $t9, -30464($gp) # &__glCopyPixels0
    # Line 4259
    beq	$v0,$a3,.L0da7fc8c
    # Line 4264
    nop	# was lw $t9, -30468($gp) # &__glCopyPixels1
    # Line 4259
    beq	$v0,$at,.L0da7fc94
    # Line 4270
    nop	# was lw $t9, -30476($gp) # &__glCopyPixelSpans
.L0da7fc1c:
    # Line 4274
    sw	$v0,352($s0)
.L0da7fc20:
    # Line 4277
    lw	$v1,4($a1)
    li	$a2,0x8016
    beql	$v1,$a2,.L0da7fc54
    # Line 4279
    lw	$at,48($a1)
.L0da7fc30:
    # Line 4288
    sw	$a4,412($s0)
    # Line 4287
    sw	$a5,356($s0)
    # Line 4290
    jal	__glCopyPixelSpans
    move	$a1,$s0
    # Line 4291
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7fc54:
    # Line 4279
    lw	$a3,180($s0)
    subu	$a3,$a3,$at
    addiu	$a3,$a3,1
    bgez	$a3,.L0da7fc30
    sw	$a3,184($s0)
    b	.L0da7fc30
    # Line 4281
    sw	$zero,184($s0)
.L0da7fc70:
    # Line 4253
    # lw $t9, -29840($gp) # &__glConv2dCopyPixels
    # Line 4254
    b	.L0da7fc1c
    nop
.L0da7fc7c:
    # Line 4257
    b	.L0da7fc20
    # Line 4274
    sw	$v0,352($s0)
.L0da7fc84:
    # Line 4262
    b	.L0da7fc20
    # Line 4274
    sw	$v0,352($s0)
.L0da7fc8c:
    # Line 4265
    b	.L0da7fc20
    # Line 4274
    sw	$v0,352($s0)
.L0da7fc94:
    # Line 4267
    # lw $t9, -30472($gp) # &__glCopyPixels2
    # Line 4268
    b	.L0da7fc20
    # Line 4274
    sw	$v0,352($s0)
.end __glGenericPickCopyPixels

# Function: __glCopyImage1
# Declared: Line 4296 (Source lines: 4297-4315)
# Address: 0x0da7fca0 - 0x0da7fd58 (Size: 184 bytes, Frame: 208)
.globl __glCopyImage1
.ent __glCopyImage1
__glCopyImage1:
    # Line 4297
    addiu	$sp,$sp,-80
    sd	$ra,56($sp)
    sd	$s2,0($sp)
    move	$s2,$a1
    sd	$s5,40($sp)
    # Line 4305
    lw	$s5,360($a1)
    sd	$s1,32($sp)
    # Line 4297
    move	$s1,$a0
    sd	$s4,16($sp)
    # Line 4300
    lw	$s4,30652($a0)
    sd	$s0,24($sp)
    # Line 4306
    move	$s0,$zero
    # sd	gp,48(sp)
    sd	$s3,8($sp)
    # Line 4304
    lw	$s3,172($a1)
    # Line 4297
    lui	$at,0x17
    addiu	$at,$at,31688
    # Line 4306
    blez	$s3,.L0da7fd34
    # Line 4297
    nop
.L0da7fcec:
    # Line 4307
    move	$a0,$s1
    move	$a1,$s2
    lw	$a3,92($s2)
    lw	$a2,12($s2)
    jalr	$s5
    move	$t9,$s5
    # Line 4306
    addiu	$s0,$s0,1
    # Line 4308
    lw	$at,12($s2)
    # Line 4310
    lw	$v1,92($s2)
    lw	$v0,96($s2)
    # Line 4308
    lw	$a2,16($s2)
    # Line 4310
    addu	$v0,$v0,$v1
    # Line 4308
    addu	$a2,$a2,$at
    sw	$a2,12($s2)
    # Line 4310
    sw	$v0,92($s2)
    # Line 4306
    bne	$s3,$s0,.L0da7fcec
    # Line 4313
    sw	$s4,30652($s1)
    ld	$ra,56($sp)
.L0da7fd34:
    # ld	gp,48(sp)
    # Line 4315
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCopyImage1

# Function: __glCopyImage2
# Declared: Line 4320 (Source lines: 4321-4347)
# Address: 0x0da7fd58 - 0x0da7fe6c (Size: 276 bytes, Frame: 0)
.globl __glCopyImage2
.ent __glCopyImage2
__glCopyImage2:
    # Line 4321
    move	$v1,$s8
    addiu	$sp,$sp,-112
    addiu	$s8,$sp,112
    sd	$v1,-104($s8)
    sd	$ra,-112($s8)
    sd	$s1,-32($s8)
    move	$s1,$a1
    sd	$s7,-88($s8)
    # Line 4336
    lw	$s7,364($a1)
    sd	$s5,-48($s8)
    # Line 4335
    lw	$s5,360($a1)
    sd	$s0,-64($s8)
    # Line 4321
    move	$s0,$a0
    sd	$s6,-80($s8)
    # Line 4325
    lw	$s6,30652($a0)
    sd	$s2,-40($s8)
    # Line 4337
    move	$s2,$zero
    sd	$s3,-56($s8)
    # Line 4321
    lui	$v0,0x17
    addiu	$v0,$v0,31504
    sd	$s4,-72($s8)
    # Line 4334
    lw	$s4,172($a1)
    # sd	gp,-96(s8)
    # Line 4325
    lw	$at,168($a1)
    # Line 4321
    # addu	gp,t9,v0
    # Line 4325
    li	$v0,-16
    sll	$at,$at,0x4
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 4337
    blez	$s4,.L0da7fe38
    # Line 4332
    move	$s3,$sp
.L0da7fdd8:
    # Line 4338
    move	$a0,$s0
    move	$a1,$s1
    lw	$a2,12($s1)
    move	$a3,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 4341
    lw	$a3,92($s1)
    move	$a2,$s3
    move	$a1,$s1
    # Line 4339
    lw	$a5,12($s1)
    lw	$a4,16($s1)
    # Line 4341
    move	$a0,$s0
    move	$t9,$s7
    # Line 4339
    addu	$a4,$a4,$a5
    # Line 4341
    jalr	$s7
    # Line 4339
    sw	$a4,12($s1)
    # Line 4337
    addiu	$s2,$s2,1
    # Line 4342
    lw	$v0,92($s1)
    lw	$at,96($s1)
    addu	$at,$at,$v0
    sw	$at,92($s1)
    # Line 4337
    bne	$s4,$s2,.L0da7fdd8
    # Line 4345
    sw	$s6,30652($s0)
    ld	$ra,-112($s8)
.L0da7fe38:
    # ld	gp,-96(s8)
    # Line 4347
    ld	$s0,-64($s8)
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s3,-56($s8)
    ld	$s4,-72($s8)
    ld	$s5,-48($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v1,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glCopyImage2

# Function: __glCopyImageSpans
# Declared: Line 4352 (Source lines: 4353-4391)
# Address: 0x0da7fe6c - 0x0da8001c (Size: 432 bytes, Frame: 0)
.globl __glCopyImageSpans
.ent __glCopyImageSpans
__glCopyImageSpans:
    # Line 4353
    move	$a2,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sd	$s6,-88($s8)
    # Line 4373
    move	$s6,$zero
    sd	$a2,-112($s8)
    sd	$s7,-96($s8)
    # Line 4371
    lw	$at,172($a1)
    sd	$s1,-72($s8)
    # Line 4353
    move	$s1,$a1
    # Line 4358
    lw	$a1,30652($a0)
    sd	$at,-120($s8)
    # Line 4356
    lw	$a2,352($s1)
    sd	$a1,-128($s8)
    sd	$gp,-104($s8)
    sd	$s4,-80($s8)
    # Line 4353
    move	$s4,$a0
    lui	$a0,0x17
    addiu	$a0,$a0,31228
    # Line 4365
    lw	$v1,168($s1)
    # Line 4353
    addu	$gp,$t9,$a0
    # Line 4365
    li	$a0,-16
    sll	$v1,$v1,0x4
    addiu	$v1,$v1,15
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    # Line 4368
    move	$s7,$sp
    subu	$sp,$sp,$v1
    # Line 4369
    move	$v0,$sp
    # Line 4373
    blez	$at,.L0da7fff8
    sd	$sp,-32($s8)
    sd	$s2,-168($s8)
    sd	$s5,-160($s8)
    sd	$s3,-152($s8)
    sd	$ra,-144($s8)
    sd	$s0,-136($s8)
    addiu	$v0,$a2,-2
    sd	$v0,-64($s8)
    addiu	$at,$a2,-1
    li	$a4,2
    slt	$a4,$a4,$a2
    sd	$at,-40($s8)
    sll	$at,$at,0x2
    sd	$at,-56($s8)
    b	.L0da7ff68
    sd	$a4,-48($s8)
.L0da7ff24:
    # Line 4385
    move	$a0,$s4
    sll	$t9,$a5,0x2
    addu	$t9,$t9,$s1
    lw	$t9,360($t9)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    lw	$a3,92($s1)
    # Line 4373
    addiu	$s6,$s6,1
    # Line 4386
    lw	$a4,92($s1)
    lw	$v1,96($s1)
    # Line 4389
    ld	$v0,-128($s8)
    # Line 4373
    ld	$at,-120($s8)
    # Line 4386
    addu	$v1,$v1,$a4
    sw	$v1,92($s1)
    # Line 4373
    beq	$at,$s6,.L0da7ffe4
    # Line 4389
    sw	$v0,30652($s4)
.L0da7ff68:
    # Line 4375
    move	$a0,$s4
    lw	$t9,360($s1)
    move	$a1,$s1
    move	$a3,$s7
    jalr	$t9
    lw	$a2,12($s1)
    # Line 4379
    li	$a5,1
    # Line 4378
    ld	$s2,-32($s8)
    move	$s0,$s7
    # Line 4376
    lw	$v1,12($s1)
    lw	$v0,16($s1)
    # Line 4379
    ld	$at,-48($s8)
    # Line 4376
    addu	$v0,$v0,$v1
    # Line 4379
    beqz	$at,.L0da7ff24
    # Line 4376
    sw	$v0,12($s1)
    # Line 4379
    addiu	$s3,$s1,4
    ld	$s5,-56($s8)
    addu	$s5,$s5,$s1
.L0da7ffb0:
    # Line 4380
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 4379
    addiu	$s3,$s3,4
    # Line 4381
    move	$at,$s0
    # Line 4382
    move	$s0,$s2
    # Line 4379
    bne	$s3,$s5,.L0da7ffb0
    # Line 4383
    move	$s2,$at
    b	.L0da7ff24
    ld	$a5,-40($s8)
.L0da7ffe4:
    ld	$s0,-136($s8)
    ld	$ra,-144($s8)
    ld	$s3,-152($s8)
    ld	$s5,-160($s8)
    ld	$s2,-168($s8)
.L0da7fff8:
    ld	$gp,-104($s8)
    # Line 4391
    ld	$s1,-72($s8)
    ld	$s4,-80($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ld	$v0,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyImageSpans

# Function: __glGenericPickCopyImageSpan
# Declared: Line 4407 (Source lines: 4409-4442)
# Address: 0x0da8001c - 0x0da800d4 (Size: 184 bytes, Frame: 208)
.globl __glGenericPickCopyImageSpan
.ent __glGenericPickCopyImageSpan
__glGenericPickCopyImageSpan:
    # Line 4409
    addiu	$sp,$sp,-80
    # Line 4416
    sb	$a2,12($sp)
    # Line 4418
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4409
    move	$s0,$a1
    # Line 4415
    li	$at,7
    sw	$at,8($sp)
    # sd	gp,40(sp)
    sd	$ra,32($sp)
    # Line 4409
    lui	$ra,0x17
    addiu	$ra,$ra,30796
    # addu	gp,t9,ra
    # Line 4418
    # lw $t9, -32736($gp) # &sub_0da80000
    # Line 4413
    li	$at,2
    # Line 4414
    sw	$at,4($sp)
    # Line 4418
    addiu	$t9,$t9,-29612
    bal __glSpanRGBAScaleBiasReduce
    # Line 4413
    sw	$at,0($sp)
    # Line 4418
    move	$a1,$v0
    beqz	$v0,.L0da800bc
    ld	$ra,32($sp)
.L0da80070:
    # Line 4425
    lbu	$v1,12($sp)
    li	$a2,0x8016
    beqz	$v1,.L0da80090
    nop
    lw	$v0,436($s0)
    lw	$a0,4($v0)
    beql	$a0,$a2,.L0da800a0
    # Line 4432
    lw	$v1,48($v0)
.L0da80090:
    # Line 4442
    move	$v0,$a1
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da800a0:
    # Line 4432
    lw	$at,180($s0)
    subu	$at,$at,$v1
    addiu	$at,$at,1
    bgez	$at,.L0da80090
    sw	$at,184($s0)
    b	.L0da80090
    # Line 4434
    sw	$zero,184($s0)
.L0da800bc:
    # Line 4425
    la	$a0,__glSpanCopy
    addiu	$a1,$v0,1
    sll	$a2,$v0,0x2
    addu	$a2,$a2,$s0
    b	.L0da80070
    sw	$a0,360($a2)
.end __glGenericPickCopyImageSpan

# Function: __glCopyImage3D
# Declared: Line 4445 (Source lines: 4447-4462)
# Address: 0x0da800d4 - 0x0da80184 (Size: 176 bytes, Frame: 240)
.globl __glCopyImage3D
.ent __glCopyImage3D
__glCopyImage3D:
    # Line 4447
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s5,48($sp)
    move	$s5,$a2
    sd	$s6,16($sp)
    move	$s6,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    # Line 4454
    lw	$s2,92($a1)
    sd	$s0,32($sp)
    # Line 4453
    lw	$s0,12($a1)
    sd	$s3,8($sp)
    # Line 4455
    move	$s3,$zero
    # sd	gp,56(sp)
    sd	$s4,24($sp)
    # Line 4452
    lw	$s4,176($a1)
    # Line 4447
    lui	$at,0x17
    addiu	$at,$at,30612
    # Line 4455
    blez	$s4,.L0da8015c
    # Line 4447
    nop
.L0da80128:
    # Line 4456
    move	$a0,$s6
    move	$a1,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 4455
    addiu	$s3,$s3,1
    # Line 4457
    lw	$v0,24($s1)
    # Line 4459
    lw	$v1,104($s1)
    # Line 4457
    addu	$s0,$v0,$s0
    # Line 4459
    addu	$s2,$v1,$s2
    # Line 4460
    sw	$s2,92($s1)
    # Line 4455
    bne	$s4,$s3,.L0da80128
    # Line 4458
    sw	$s0,12($s1)
    ld	$ra,64($sp)
.L0da8015c:
    # ld	gp,56(sp)
    # Line 4462
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCopyImage3D

# Function: __glGenericPickCopyImage
# Declared: Line 4464 (Source lines: 4466-4510)
# Address: 0x0da80184 - 0x0da80290 (Size: 268 bytes, Frame: 208)
.globl __glGenericPickCopyImage
.ent __glGenericPickCopyImage
__glGenericPickCopyImage:
    # Line 4470
    li	$at,-1
    # Line 4466
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$a0,32($sp)
    sd	$ra,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,30436
    addu	$gp,$t9,$v0
    # Line 4472
    # lw $t9, -30436($gp) # &__glGenericPickCopyImageSpan
    sd	$s0,0($sp)
    # Line 4466
    move	$s0,$a1
    # Line 4472
    bal __glGenericPickCopyImageSpan
    # Line 4470
    sw	$at,264($s0)
    # Line 4472
    lw	$a2,264($s0)
    move	$a1,$v0
    li	$v1,-1
    beq	$a2,$v1,.L0da80250
    ld	$a0,32($sp)
    # Line 4477
    addiu	$a1,$a2,1
.L0da801d4:
    # Line 4479
    li	$a3,1
    beq	$a1,$a3,.L0da80244
    li	$a4,2
    beq	$a1,$a4,.L0da8025c
    # Line 4487
    la	$a2,__glCopyImageSpans
    ld	$at,24($sp)
.L0da801ec:
    # Line 4489
    beqzl	$at,.L0da80214
    # Line 4505
    lw	$a3,24($s0)
    # Line 4491
    lw	$v0,436($s0)
    lw	$v0,0($v0)
    li	$v1,0x8011
    beq	$v0,$v1,.L0da80268
    li	$v1,0x8012
    beq	$v0,$v1,.L0da80270
    nop
.L0da80210:
    # Line 4505
    lw	$a3,24($s0)
.L0da80214:
    bgtz	$a3,.L0da80224
    # Line 4503
    sw	$a1,352($s0)
    # Line 4505
    lw	$a4,104($s0)
    blez	$a4,.L0da80278
.L0da80224:
    # Line 4506
    nop	# was lw $t9, -30432($gp) # &__glCopyImage3D
    bal __glCopyImage3D
    move	$a1,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
.L0da80238:
    ld	$gp,16($sp)
    # Line 4510
    jr	$ra
    addiu	$sp,$sp,80
.L0da80244:
    # Line 4481
    la	$a2,__glCopyImage1
    # Line 4482
    b	.L0da801ec
    ld	$at,24($sp)
.L0da80250:
    # Line 4475
    addiu	$at,$v0,-1
    b	.L0da801d4
    sw	$at,264($s0)
.L0da8025c:
    # Line 4484
    la	$a2,__glCopyImage2
    # Line 4485
    b	.L0da801ec
    ld	$at,24($sp)
.L0da80268:
    # Line 4494
    b	.L0da80210
    # Line 4493
    la	$a2,__glConv2dCopyImage
.L0da80270:
    b	.L0da80210
    # Line 4496
    la	$a2,__glSep2dCopyImage
.L0da80278:
    # Line 4508
    move	$a1,$s0
    jalr	$a2
    move	$t9,$a2
    ld	$ra,8($sp)
    b	.L0da80238
    ld	$s0,0($sp)
.end __glGenericPickCopyImage

# Function: __glInitReadImageSrcInfo
# Declared: Line 4520 (Source lines: 4525-4558)
# Address: 0x0da80290 - 0x0da8036c (Size: 220 bytes, Frame: 0)
.globl __glInitReadImageSrcInfo
.ent __glInitReadImageSrcInfo
__glInitReadImageSrcInfo:
    # Line 4526
    lw	$a6,3372($a0)
    addu	$a2,$a6,$a2
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 4525
    lui	$v1,0x17
    addiu	$v1,$v1,30168
    # Line 4526
    swc1	$f0,188($a1)
    # Line 4525
    # addu	at,t9,v1
    # Line 4526
    lbu	$v0,4552($a0)
    # Line 4538
    mtc1	$zero,$f3
    # Line 4554
    li	$a6,4
    # Line 4526
    beqz	$v0,.L0da8034c
    lw	$t0,3376($a0)
    # Line 4528
    lw	$v0,3416($a0)
    subu	$v0,$v0,$a3
    addu	$v0,$v0,$t0
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,192($a1)
.L0da802e8:
    # Line 4531
    lbu	$v1,3104($a0)
    # Line 4534
    li	$a2,5126
    # Line 4531
    beqz	$v1,.L0da80364
    # Line 4533
    li	$a3,6408
.L0da802f8:
    # Line 4534
    sw	$a2,4($a1)
    # Line 4536
    sw	$a5,172($a1)
    # Line 4535
    sw	$a4,168($a1)
    # Line 4533
    sw	$a3,0($a1)
    # Line 4537
    lwc1	$f2,3284($a0)
    # Line 4557
    sb	$zero,72($a1)
    # Line 4556
    sw	$zero,8($a1)
    # Line 4555
    sw	$zero,40($a1)
    # Line 4554
    sw	$a6,36($a1)
    # Line 4553
    sw	$a2,4($a1)
    # Line 4547
    sw	$a5,64($a1)
    # Line 4546
    sw	$a4,60($a1)
    # Line 4544
    sw	$zero,44($a1)
    # Line 4543
    sw	$zero,56($a1)
    # Line 4542
    sw	$zero,52($a1)
    # Line 4541
    sw	$zero,48($a1)
    # Line 4538
    swc1	$f3,196($a1)
    # Line 4540
    li	$a0,1
    sw	$a0,68($a1)
    # Line 4558
    jr	$ra
    # Line 4537
    swc1	$f2,160($a1)
.L0da8034c:
    # Line 4531
    addu	$v0,$t0,$a3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0da802e8
    swc1	$f0,192($a1)
.L0da80364:
    b	.L0da802f8
    # Line 4533
    li	$a3,6400
.end __glInitReadImageSrcInfo

# Function: __glGenericPickReadImage
# Declared: Line 4565 (Source lines: 4566-4641)
# Address: 0x0da8036c - 0x0da80498 (Size: 300 bytes, Frame: 208)
.globl __glGenericPickReadImage
.ent __glGenericPickReadImage
__glGenericPickReadImage:
    # Line 4585
    li	$v1,5
    # Line 4583
    li	$at,1
    # Line 4566
    addiu	$sp,$sp,-80
    # Line 4588
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4566
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 4586
    sb	$at,12($sp)
    # Line 4585
    sw	$v1,8($sp)
    sd	$ra,32($sp)
    sd	$gp,40($sp)
    # Line 4566
    lui	$v0,0x17
    addiu	$v0,$v0,29948
    addu	$gp,$t9,$v0
    # Line 4588
    # lw $t9, -32736($gp) # &sub_0da80000
    # Line 4584
    li	$ra,3
    sw	$ra,4($sp)
    # Line 4588
    addiu	$t9,$t9,-29612
    bal __glSpanRGBAScaleBiasReduce
    # Line 4583
    sw	$at,0($sp)
    # Line 4588
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 4597
    lw	$a4,264($s0)
    lw	$a3,16($sp)
    li	$a2,-1
    beq	$a4,$a2,.L0da8046c
    sw	$a3,356($s0)
    # Line 4601
    addiu	$a1,$a4,1
.L0da803dc:
    # Line 4603
    lw	$a4,436($s0)
    li	$a2,1
    lw	$v0,0($a4)
    # Line 4622
    # lw $t9, -30508($gp) # &__glReadPixelSpans
    # Line 4603
    li	$at,0x8011
    beq	$v0,$at,.L0da80464
    li	$v1,0x8012
    beq	$v0,$v1,.L0da80478
    nop
    # Line 4611
    beqz	$a1,.L0da80480
    nop
    beq	$a1,$a2,.L0da80488
    li	$a3,2
    beq	$a1,$a3,.L0da80490
    nop
.L0da80418:
    # Line 4626
    sw	$a1,352($s0)
    # Line 4629
    lw	$at,4($a4)
    li	$v1,0x8016
    beql	$at,$v1,.L0da80448
    # Line 4631
    lw	$a3,48($a4)
.L0da8042c:
    # Line 4640
    jal	__glReadPixelSpans
    move	$a1,$s0
    # Line 4641
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da80448:
    # Line 4631
    lw	$a2,180($s0)
    subu	$a2,$a2,$a3
    addiu	$a2,$a2,1
    bgez	$a2,.L0da8042c
    sw	$a2,184($s0)
    b	.L0da8042c
    # Line 4633
    sw	$zero,184($s0)
.L0da80464:
    # Line 4606
    b	.L0da80418
    # Line 4605
    nop	# was lw $t9, -29848($gp) # &__glConv2dReadPixels
.L0da8046c:
    # Line 4599
    addiu	$at,$v0,-1
    b	.L0da803dc
    sw	$at,264($s0)
.L0da80478:
    # Line 4609
    b	.L0da80418
    # Line 4608
    nop	# was lw $t9, -29844($gp) # &__glSep2dReadPixels
.L0da80480:
    # Line 4614
    b	.L0da80418
    # Line 4613
    nop	# was lw $t9, -30496($gp) # &__glReadPixels0
.L0da80488:
    # Line 4617
    b	.L0da80418
    # Line 4616
    nop	# was lw $t9, -30500($gp) # &__glReadPixels1
.L0da80490:
    # Line 4620
    b	.L0da80418
    # Line 4619
    nop	# was lw $t9, -30504($gp) # &__glReadPixels2
.end __glGenericPickReadImage

# Function: __glInitMemLoad
# Declared: Line 4648 (Source lines: 4650-4705)
# Address: 0x0da80498 - 0x0da805cc (Size: 308 bytes, Frame: 0)
.globl __glInitMemLoad
.ent __glInitMemLoad
__glInitMemLoad:
    # Line 4668
    sw	$zero,432($a1)
    # Line 4664
    sw	$zero,120($a1)
    # Line 4663
    sw	$zero,136($a1)
    # Line 4662
    sw	$zero,132($a1)
    # Line 4661
    sw	$zero,128($a1)
    # Line 4670
    li	$v0,6409
    # Line 4665
    li	$a5,1
    sw	$a5,124($a1)
    # Line 4667
    lw	$a0,172($a1)
    # Line 4666
    lw	$v1,168($a1)
    # Line 4660
    sw	$a3,88($a1)
    # Line 4650
    lui	$a3,0x17
    addiu	$a3,$a3,29648
    # addu	at,t9,a3
    # Line 4666
    sw	$v1,140($a1)
    # Line 4667
    sw	$a0,144($a1)
    # Line 4655
    mtc1	$zero,$f1
    # Line 4673
    li	$a0,5126
    # Line 4651
    lwc1	$f0,_lit_3f800000
    # Line 4658
    swc1	$f1,344($a1)
    # Line 4657
    swc1	$f1,340($a1)
    # Line 4656
    swc1	$f1,336($a1)
    # Line 4655
    swc1	$f1,332($a1)
    # Line 4654
    swc1	$f0,328($a1)
    # Line 4653
    swc1	$f0,324($a1)
    # Line 4652
    swc1	$f0,320($a1)
    # Line 4670
    beq	$a2,$v0,.L0da8055c
    # Line 4651
    swc1	$f0,316($a1)
    # Line 4670
    li	$v0,6410
    beq	$a2,$v0,.L0da80574
    li	$a4,6407
    beq	$a4,$a2,.L0da8058c
    # Line 4684
    li	$a3,4
    # Line 4670
    li	$a4,6408
    beq	$a4,$a2,.L0da805a0
    # Line 4689
    li	$v1,4
    # Line 4670
    li	$a4,6406
    beq	$a4,$a2,.L0da805b4
    li	$v1,0x8049
    beq	$a2,$v1,.L0da80544
    # Line 4698
    li	$a3,5126
    # Line 4705
    jr	$ra
    nop
.L0da80544:
    # Line 4699
    li	$v0,4
    # Line 4698
    sw	$a3,84($a1)
    # Line 4699
    sw	$v0,148($a1)
    # Line 4697
    li	$a0,6403
    # Line 4705
    jr	$ra
    # Line 4697
    sw	$a0,80($a1)
.L0da8055c:
    # Line 4674
    li	$a3,4
    # Line 4673
    sw	$a0,84($a1)
    # Line 4674
    sw	$a3,148($a1)
    # Line 4672
    li	$v1,6403
    # Line 4705
    jr	$ra
    # Line 4672
    sw	$v1,80($a1)
.L0da80574:
    # Line 4679
    li	$v1,4
    # Line 4677
    sw	$a5,80($a1)
    # Line 4679
    sw	$v1,148($a1)
    # Line 4678
    li	$v0,5126
    # Line 4705
    jr	$ra
    # Line 4678
    sw	$v0,84($a1)
.L0da8058c:
    # Line 4682
    sw	$a4,80($a1)
    # Line 4684
    sw	$a3,148($a1)
    # Line 4683
    li	$a0,5126
    # Line 4705
    jr	$ra
    # Line 4683
    sw	$a0,84($a1)
.L0da805a0:
    # Line 4687
    sw	$a4,80($a1)
    # Line 4689
    sw	$v1,148($a1)
    # Line 4688
    li	$v0,5126
    # Line 4705
    jr	$ra
    # Line 4688
    sw	$v0,84($a1)
.L0da805b4:
    # Line 4693
    li	$a0,5126
    # Line 4692
    sw	$a4,80($a1)
    # Line 4693
    sw	$a0,84($a1)
    # Line 4694
    li	$a3,4
    # Line 4705
    jr	$ra
    # Line 4694
    sw	$a3,148($a1)
.end __glInitMemLoad

# Function: __glInitMemGet
# Declared: Line 4711 (Source lines: 4715-4760)
# Address: 0x0da805cc - 0x0da806c4 (Size: 248 bytes, Frame: 0)
.globl __glInitMemGet
.ent __glInitMemGet
__glInitMemGet:
    # Line 4723
    sw	$zero,432($a1)
    # Line 4722
    sw	$a3,64($a1)
    # Line 4719
    sw	$zero,40($a1)
    # Line 4718
    sw	$zero,56($a1)
    # Line 4717
    sw	$zero,52($a1)
    # Line 4716
    sw	$zero,48($a1)
    # Line 4715
    sw	$a5,8($a1)
    # Line 4721
    sw	$a2,60($a1)
    # Line 4728
    li	$a0,5126
    # Line 4720
    li	$a6,1
    # Line 4725
    li	$at,6409
    beq	$a4,$at,.L0da80654
    # Line 4720
    sw	$a6,44($a1)
    # Line 4725
    li	$v0,6410
    beq	$a4,$v0,.L0da8066c
    li	$a2,6407
    beq	$a2,$a4,.L0da80684
    # Line 4739
    li	$at,4
    # Line 4725
    li	$a2,6408
    beq	$a2,$a4,.L0da80698
    # Line 4744
    li	$v1,4
    # Line 4725
    li	$a2,6406
    beq	$a2,$a4,.L0da806ac
    li	$v1,0x8049
    beq	$a4,$v1,.L0da8063c
    # Line 4753
    li	$at,5126
    # Line 4760
    jr	$ra
    nop
.L0da8063c:
    # Line 4754
    li	$v0,4
    # Line 4753
    sw	$at,4($a1)
    # Line 4754
    sw	$v0,68($a1)
    # Line 4752
    li	$a0,6403
    # Line 4760
    jr	$ra
    # Line 4752
    sw	$a0,0($a1)
.L0da80654:
    # Line 4728
    sw	$a0,4($a1)
    # Line 4729
    li	$at,4
    # Line 4727
    li	$v1,6403
    sw	$v1,0($a1)
    # Line 4760
    jr	$ra
    # Line 4729
    sw	$at,68($a1)
.L0da8066c:
    # Line 4734
    li	$v1,4
    # Line 4732
    sw	$a6,0($a1)
    # Line 4734
    sw	$v1,68($a1)
    # Line 4733
    li	$v0,5126
    # Line 4760
    jr	$ra
    # Line 4733
    sw	$v0,4($a1)
.L0da80684:
    # Line 4737
    sw	$a2,0($a1)
    # Line 4739
    sw	$at,68($a1)
    # Line 4738
    li	$a0,5126
    # Line 4760
    jr	$ra
    # Line 4738
    sw	$a0,4($a1)
.L0da80698:
    # Line 4742
    sw	$a2,0($a1)
    # Line 4744
    sw	$v1,68($a1)
    # Line 4743
    li	$v0,5126
    # Line 4760
    jr	$ra
    # Line 4743
    sw	$v0,4($a1)
.L0da806ac:
    # Line 4748
    li	$a0,5126
    # Line 4747
    sw	$a2,0($a1)
    # Line 4748
    sw	$a0,4($a1)
    # Line 4749
    li	$at,4
    # Line 4760
    jr	$ra
    # Line 4749
    sw	$at,68($a1)
.end __glInitMemGet

# Function: __glInitMemUnpack
# Declared: Line 4766 (Source lines: 4770-4782)
# Address: 0x0da806c4 - 0x0da80728 (Size: 100 bytes, Frame: 208)
.globl __glInitMemUnpack
.ent __glInitMemUnpack
__glInitMemUnpack:
    # Line 4770
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$at,0x17
    addiu	$at,$at,29092
    # addu	gp,t9,at
    # Line 4771
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 4781
    # lw $t9, -30560($gp) # &__glLoadUnpackModes
    # Line 4772
    lwc1	$f0,3284($a0)
    # Line 4773
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4781
    lbu	$a2,87($sp)
    # Line 4778
    sw	$a7,8($a1)
    # Line 4777
    sw	$a6,4($a1)
    # Line 4776
    sw	$a5,0($a1)
    # Line 4775
    sw	$a4,176($a1)
    # Line 4774
    sw	$a3,172($a1)
    # Line 4781
    bal __glLoadUnpackModes
    # Line 4772
    swc1	$f0,160($a1)
    # Line 4782
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitMemUnpack

# Function: __glInitMemPack
# Declared: Line 4787 (Source lines: 4790-4802)
# Address: 0x0da80728 - 0x0da80788 (Size: 96 bytes, Frame: 208)
.globl __glInitMemPack
.ent __glInitMemPack
__glInitMemPack:
    # Line 4790
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$at,0x17
    addiu	$at,$at,28992
    # addu	gp,t9,at
    # Line 4791
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 4801
    # lw $t9, -30516($gp) # &__glLoadPackModes
    # Line 4792
    lwc1	$f0,3284($a0)
    # Line 4798
    sw	$a7,88($a1)
    # Line 4797
    sw	$a6,84($a1)
    # Line 4796
    sw	$a5,80($a1)
    # Line 4795
    sw	$a4,176($a1)
    # Line 4794
    sw	$a3,172($a1)
    # Line 4793
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4801
    bal __glLoadPackModes
    # Line 4792
    swc1	$f0,160($a1)
    # Line 4802
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitMemPack

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

