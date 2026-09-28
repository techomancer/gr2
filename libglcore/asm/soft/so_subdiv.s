# Source: ../soft/so_subdiv.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_subdiv.c
# Total Functions: 29

.text

# Function: __glim_SubdivPatchParameterfSGIX
# Declared: Line 296 (Source lines: 297-326)
# Address: 0x0dadc3c8 - 0x0dadc508 (Size: 320 bytes, Frame: 48)
.globl __glim_SubdivPatchParameterfSGIX
.ent __glim_SubdivPatchParameterfSGIX
__glim_SubdivPatchParameterfSGIX:
    # Line 299
    li	$a3,24593
    lw	$a2,__glCurrentContext
    li	$at,24592
    # Line 297
    addiu	$sp,$sp,-48
    sdc1	$f28,0($sp)
    mov.s	$f28,$f13
    sd	$gp,16($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,-19296
    # Line 299
    beq	$a0,$at,.L0dadc480
    # Line 297
    addu	$gp,$t9,$v0
    # Line 299
    beq	$a3,$a0,.L0dadc424
    # Line 304
    lwc1	$f0,_lit_46288400
    # Line 303
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 304
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dadc420:
    lwc1	$f0,_lit_46288400
.L0dadc424:
    c.eq.s	$f28,$f0
    # Line 308
    lwc1	$f2,_lit_46289c00
    # Line 304
    bc1t	.L0dadc460
    lwc1	$f1,_lit_46288c00
    c.eq.s	$f28,$f1
    nop
    bc1t	.L0dadc460
    # Line 308
    c.eq.s	$f28,$f2
    nop
    bc1t	.L0dadc460
    lwc1	$f3,_lit_4628a400
    c.eq.s	$f28,$f3
    nop
    bc1f	.L0dadc4b8
    # Line 312
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dadc460:
    # Line 315
    trunc.l.s	$f0,$f28
    dmfc1	$v1,$f0
    nop
    sw	$v1,5540($a2)
.L0dadc470:
    ld	$gp,16($sp)
    # Line 326
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dadc480:
    # Line 304
    beq	$a3,$a0,.L0dadc420
    # Line 313
    lwc1	$f1,_lit_40800000
    c.lt.s	$f1,$f28
    sd	$ra,24($sp)
    bc1f	.L0dadc4d8
    sd	$a2,8($sp)
    # Line 319
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 320
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dadc4b8:
    sd	$ra,24($sp)
    # Line 312
    jalr	$t9
    li	$a0,1280
    # Line 313
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dadc4d8:
    # Line 322
    # lw $t9, -22936($gp) # &ceil
    jal	ceil
    cvt.d.s	$f12,$f28
    trunc.w.d	$f3,$f0
    # Line 323
    cvt.s.w	$f2,$f3
    # Line 322
    ld	$a1,8($sp)
    mfc1	$ra,$f3
    # Line 323
    sub.s	$f2,$f2,$f28
    # Line 322
    sw	$ra,5532($a1)
    ld	$ra,24($sp)
    b	.L0dadc470
    # Line 323
    swc1	$f2,5536($a1)
.end __glim_SubdivPatchParameterfSGIX

# Function: __glim_SubdivPatchParameteriSGIX
# Declared: Line 329 (Source lines: 330-334)
# Address: 0x0dadc508 - 0x0dadc540 (Size: 56 bytes, Frame: 32)
.globl __glim_SubdivPatchParameteriSGIX
.ent __glim_SubdivPatchParameteriSGIX
__glim_SubdivPatchParameteriSGIX:
    # Line 330
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-19616
    # addu	gp,t9,at
    # Line 332
    # lw $t9, -27208($gp) # &__glim_SubdivPatchParameterfSGIX
    mtc1	$a1,$f13
    sd	$ra,0($sp)
    bal __glim_SubdivPatchParameterfSGIX
    cvt.s.w	$f13,$f13
    # Line 334
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_SubdivPatchParameteriSGIX

# Function: __glim_SubdivPatchSGIX
# Declared: Line 338 (Source lines: 341-742)
# Address: 0x0dadc540 - 0x0dae0c84 (Size: 18244 bytes, Frame: 160)
.globl __glim_SubdivPatchSGIX
.ent __glim_SubdivPatchSGIX
__glim_SubdivPatchSGIX:
    # Line 341
    addiu	$sp,$sp,-2592
    sd	$zero,2408($sp)
    sd	$s1,2416($sp)
    sd	$gp,2440($sp)
    lui	$at,0x12
    addiu	$at,$at,-19672
    sd	$s2,2448($sp)
    # Line 353
    lui	$s2,0xff
    sd	$s0,2432($sp)
    # Line 354
    lui	$s0,0x1fff
    ori	$s0,$s0,0xffff
    # Line 353
    ori	$s2,$s2,0xffff
    sd	$s3,2424($sp)
    # Line 343
    lw	$s3,__glCurrentContext
    # Line 341
    addu	$gp,$t9,$at
    # Line 361
    beqz	$a0,.L0dae0800
    lw	$s1,5532($s3)
    # Line 365
    bnezl	$a1,.L0dadc5c8
    # Line 378
    lw	$t0,8($a1)
    sd	$zero,2480($sp)
    # Line 374
    move	$t0,$zero
    move	$a7,$zero
    # Line 379
    bnez	$a2,.L0dadc5dc
    # Line 374
    move	$a4,$zero
.L0dadc5a0:
    sd	$s6,1608($sp)
    sd	$s4,1496($sp)
    sd	$s8,1512($sp)
    sd	$s5,1504($sp)
    sd	$s7,1488($sp)
    sd	$zero,2472($sp)
    sd	$zero,2488($sp)
    sd	$zero,2456($sp)
    # Line 382
    b	.L0dadc610
    sd	$zero,2464($sp)
.L0dadc5c8:
    # Line 377
    lw	$a7,4($a1)
    # Line 379
    lw	$at,12($a1)
    # Line 376
    lw	$a4,0($a1)
    # Line 379
    beqz	$a2,.L0dadc5a0
    sd	$at,2480($sp)
.L0dadc5dc:
    sd	$s6,1608($sp)
    sd	$s4,1496($sp)
    sd	$s8,1512($sp)
    sd	$s5,1504($sp)
    sd	$s7,1488($sp)
    # Line 384
    lw	$v0,0($a2)
    # Line 387
    lw	$at,12($a2)
    # Line 386
    lw	$a3,8($a2)
    # Line 385
    lw	$v1,4($a2)
    sd	$at,2472($sp)
    sd	$a3,2488($sp)
    sd	$v1,2456($sp)
    sd	$v0,2464($sp)
.L0dadc610:
    # Line 392
    lw	$a1,8($a0)
    # Line 391
    lw	$a6,4($a0)
    # Line 392
    addiu	$a1,$a1,4
    # Line 391
    addiu	$a6,$a6,4
    lw	$s4,-4($a6)
    # Line 393
    lw	$a2,12($a0)
    # Line 392
    lw	$s5,-4($a1)
    # Line 391
    addiu	$s4,$s4,-1
    # Line 393
    addiu	$a2,$a2,4
    lw	$s7,-4($a2)
    # Line 392
    addiu	$s5,$s5,-1
    # Line 390
    lw	$a5,0($a0)
    # Line 393
    addiu	$s7,$s7,-1
    move	$s6,$s7
    sd	$s7,2376($sp)
    # Line 390
    addiu	$a5,$a5,4
    # Line 393
    move	$s8,$s7
    # Line 390
    lw	$s8,-4($a5)
    sd	$s5,2400($sp)
    sd	$s4,2384($sp)
    addiu	$s8,$s8,-1
    # Line 401
    slti	$v0,$s8,8
    beqz	$v0,.L0dadc68c
    sd	$s8,2392($sp)
    slti	$a3,$s4,9
    beqz	$a3,.L0dadc68c
    slti	$at,$s5,9
    beqz	$at,.L0dadc68c
    slti	$v0,$s7,8
    bnez	$v0,.L0dadc6d8
    nop
.L0dadc68c:
    sd	$a4,2544($sp)
    sd	$a1,2536($sp)
    sd	$a2,2528($sp)
    sd	$a5,2520($sp)
    sd	$a6,2512($sp)
    sd	$a7,2504($sp)
    # Line 405
    # lw $t9, -29008($gp) # &__glSetError
    sd	$t0,2496($sp)
    sd	$ra,1480($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,1480($sp)
    ld	$t0,2496($sp)
    ld	$a7,2504($sp)
    ld	$a6,2512($sp)
    ld	$a5,2520($sp)
    ld	$a2,2528($sp)
    ld	$a1,2536($sp)
    ld	$a4,2544($sp)
.L0dadc6d8:
    bnez	$a4,.L0dadc71c
    nop
    bnez	$a7,.L0dadc71c
    nop
    # Line 409
    bnez	$t0,.L0dadc71c
    ld	$v1,2480($sp)
    bnez	$v1,.L0dadc71c
    ld	$a3,2464($sp)
    bnez	$a3,.L0dadc71c
    ld	$at,2456($sp)
    bnez	$at,.L0dadc71c
    ld	$v0,2488($sp)
    bnez	$v0,.L0dadc71c
    ld	$v1,2472($sp)
    bnez	$v1,.L0dadc71c
    lui	$a3,0x8000
    sd	$a3,2408($sp)
.L0dadc71c:
    # Line 414
    bltz	$s7,.L0dadcae0
    sb	$zero,5576($s3)
.L0dadc724:
    # Line 429
    beqz	$a4,.L0dadc778
    addiu	$t1,$sp,128
    beqz	$a7,.L0dadc778
    addiu	$t1,$sp,128
    beqz	$t0,.L0dadc778
    addiu	$t1,$sp,128
    ld	$at,2480($sp)
    beqz	$at,.L0dadc778
    addiu	$t1,$sp,128
    ld	$v0,2464($sp)
    beqz	$v0,.L0dadc778
    addiu	$t1,$sp,128
    ld	$v1,2456($sp)
    beqz	$v1,.L0dadc778
    addiu	$t1,$sp,128
    ld	$a3,2488($sp)
    beqz	$a3,.L0dadc778
    addiu	$t1,$sp,128
    ld	$at,2472($sp)
    bnez	$at,.L0dadc874
    addiu	$t1,$sp,128
.L0dadc778:
    addiu	$t2,$sp,32
    addiu	$a0,$sp,0
    addiu	$t9,$sp,0
    addiu	$t3,$t9,24
    addiu	$t8,$t9,29
    b	.L0dadc7d8
    addiu	$t9,$t9,32
.L0dadc794:
    # Line 433
    slt	$at,$a0,$t8
    beqzl	$at,.L0dadc7a8
    # Line 431
    addiu	$a0,$a0,1
    # Line 434
    sw	$zero,0($t1)
    # Line 431
    addiu	$a0,$a0,1
.L0dadc7a8:
    # Line 432
    slt	$v0,$a0,$t3
    beqz	$v0,.L0dadc7b8
    sb	$zero,0($a0)
    # Line 433
    sw	$zero,4($t2)
.L0dadc7b8:
    slt	$v1,$a0,$t8
    beqzl	$v1,.L0dadc7cc
    # Line 431
    addiu	$t2,$t2,8
    # Line 434
    sw	$zero,4($t1)
    # Line 431
    addiu	$t2,$t2,8
.L0dadc7cc:
    addiu	$a0,$a0,1
    beq	$a0,$t9,.L0dadc7ec
    addiu	$t1,$t1,8
.L0dadc7d8:
    # Line 432
    slt	$a3,$a0,$t3
    beqz	$a3,.L0dadc794
    sb	$zero,0($a0)
    b	.L0dadc794
    # Line 433
    sw	$zero,0($t2)
.L0dadc7ec:
    # Line 431
    bnez	$a4,.L0dadc7f8
    nop
    # Line 436
    addiu	$a4,$sp,0
.L0dadc7f8:
    bnez	$a7,.L0dadc804
    nop
    # Line 437
    addiu	$a7,$sp,0
.L0dadc804:
    bnez	$t0,.L0dadc814
    ld	$at,2480($sp)
    # Line 438
    addiu	$t0,$sp,0
    ld	$at,2480($sp)
.L0dadc814:
    bnez	$at,.L0dadc828
    ld	$v1,2464($sp)
    # Line 439
    addiu	$v0,$sp,0
    sd	$v0,2480($sp)
    ld	$v1,2464($sp)
.L0dadc828:
    bnez	$v1,.L0dadc83c
    ld	$at,2456($sp)
    # Line 440
    addiu	$a3,$sp,0
    sd	$a3,2464($sp)
    ld	$at,2456($sp)
.L0dadc83c:
    bnez	$at,.L0dadc850
    ld	$v1,2488($sp)
    # Line 441
    addiu	$v0,$sp,0
    sd	$v0,2456($sp)
    ld	$v1,2488($sp)
.L0dadc850:
    bnez	$v1,.L0dadc864
    ld	$at,2472($sp)
    # Line 442
    addiu	$a3,$sp,0
    sd	$a3,2488($sp)
    ld	$at,2472($sp)
.L0dadc864:
    bnezl	$at,.L0dadc878
    # Line 457
    lw	$s7,5540($s3)
    # Line 443
    addiu	$v0,$sp,0
    sd	$v0,2472($sp)
.L0dadc874:
    # Line 457
    lw	$s7,5540($s3)
.L0dadc878:
    li	$v1,10785
    beq	$s7,$v1,.L0dadcb04
    li	$a3,10787
    beq	$s7,$a3,.L0daddc3c
    li	$at,10791
    beq	$s7,$at,.L0dade9dc
    li	$v0,10793
    beq	$s7,$v0,.L0dadf798
    addiu	$s7,$sp,256
    lbu	$t8,248($sp)
    ld	$s6,1608($sp)
    ld	$s4,1496($sp)
    ld	$s8,1512($sp)
    ld	$s5,1504($sp)
.L0dadc8b0:
    # Line 569
    beqz	$t8,.L0dadc9a8
    sb	$zero,5577($s3)
.L0dadc8b8:
    # Line 582
    sw	$s0,5572($s3)
.L0dadc8bc:
    # Line 581
    sw	$s2,5568($s3)
    # Line 582
    ld	$a3,2408($sp)
    ld	$s7,1488($sp)
    lui	$v1,0x8000
    and	$v1,$a3,$v1
    beqz	$v1,.L0dadcbd8
    # Line 580
    sw	$a3,5564($s3)
.L0dadc8d8:
    # Line 673
    # lw $t9, -22964($gp) # &getenv
    la	$a0,sub_0db30000
    sd	$ra,1480($sp)
    jal	getenv
    addiu	$a0,$a0,-20664
    bnez	$v0,.L0dadc98c
    ld	$ra,1480($sp)
    # Line 675
    # lw $t9, -32712($gp) # &sub_0dae0000
    addiu	$a2,$sp,128
    addiu	$a1,$sp,32
    addiu	$t9,$t9,8136
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,256
    li	$s0,2
    addiu	$a0,$sp,1416
    addiu	$s3,$sp,1416
    # Line 677
    sw	$s0,16($a0)
    sw	$s0,12($a0)
    sw	$s0,8($a0)
    sw	$s0,4($a0)
    sw	$s0,0($a0)
    # Line 676
    la	$s2,sub_0dae0000
    # Line 680
    addiu	$a1,$sp,1416
    move	$a0,$zero
    # Line 676
    addiu	$s2,$s2,19328
    # Line 680
    jalr	$s2
    move	$t9,$s2
    # Line 681
    beqz	$s1,.L0dae0bf8
    ld	$ra,1480($sp)
    li	$at,1
    beq	$s1,$at,.L0dae0c18
    # Line 686
    move	$a0,$s1
    # Line 681
    beq	$s1,$s0,.L0dae0940
    li	$v0,3
    beq	$s1,$v0,.L0dae09c4
    li	$v1,4
    beql	$s1,$v1,.L0dae0830
    # Line 718
    addiu	$s6,$s1,-1
    ld	$gp,2440($sp)
    # Line 737
    ld	$s0,2432($sp)
    ld	$s1,2416($sp)
    ld	$s2,2448($sp)
    ld	$s3,2424($sp)
    jr	$ra
    addiu	$sp,$sp,2592
.L0dadc98c:
    ld	$gp,2440($sp)
    # Line 742
    ld	$s0,2432($sp)
    ld	$s1,2416($sp)
    ld	$s2,2448($sp)
    ld	$s3,2424($sp)
    jr	$ra
    addiu	$sp,$sp,2592
.L0dadc9a8:
    # Line 569
    lbu	$a3,1412($sp)
    bnezl	$a3,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    # Line 570
    lw	$at,5548($s3)
    li	$v0,1
    bnel	$at,$v0,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    # Line 570
    lbu	$v1,1413($sp)
    bnezl	$v1,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    # Line 570
    lbu	$a3,1414($sp)
    bnezl	$a3,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    # Line 570
    lw	$at,5560($s3)
    li	$v0,1
    bnel	$at,$v0,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    # Line 570
    lbu	$v1,5576($s3)
    bnezl	$v1,.L0dadc8bc
    # Line 582
    sw	$s0,5572($s3)
    sd	$a4,2544($sp)
    sd	$a7,2504($sp)
    sd	$t0,2496($sp)
    # Line 570
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 572
    lw	$a1,1408($sp)
    sd	$ra,1480($sp)
    # Line 570
    addiu	$t9,$t9,3204
    # Line 572
    sll	$a2,$a1,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s7
    sd	$a1,1456($sp)
    move	$a0,$a1
    sll	$a1,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s7
    bal __glim_SubdivPatchSGIX
    sd	$a1,1440($sp)
    ld	$a3,1456($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 573
    ld	$a1,1440($sp)
    move	$a0,$a3
    addiu	$t9,$t9,3204
    sll	$a2,$a3,0x2
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s7
    ld	$a3,1456($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 574
    move	$a0,$a3
    addiu	$t9,$t9,3204
    sll	$a1,$a3,0x4
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s7
    sd	$a1,1448($sp)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s7
    ld	$a3,1456($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 575
    ld	$a1,1448($sp)
    move	$a0,$a3
    addiu	$t9,$t9,3204
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s7
    ld	$t0,2496($sp)
    ld	$a7,2504($sp)
    ld	$a4,2544($sp)
    li	$ra,1
    # Line 576
    sb	$ra,5577($s3)
    b	.L0dadc8b8
    ld	$ra,1480($sp)
.L0dadcae0:
    # Line 416
    move	$a2,$a1
    # Line 417
    move	$s6,$s5
    # Line 418
    move	$v1,$t0
    sd	$t0,2480($sp)
    # Line 420
    li	$at,1
    # Line 419
    ld	$v0,2488($sp)
    # Line 420
    sb	$at,5576($s3)
    b	.L0dadc724
    sd	$v0,2472($sp)
.L0dadcb04:
    # Line 459
    li	$at,3
    sw	$at,5544($s3)
    # Line 461
    lwc1	$f3,0($a5)
    swc1	$f3,256($sp)
    lwc1	$f2,4($a5)
    swc1	$f2,260($sp)
    # Line 462
    lwc1	$f1,8($a5)
    swc1	$f1,264($sp)
    # Line 463
    lwc1	$f0,0($a6)
    swc1	$f0,268($sp)
    lwc1	$f3,4($a6)
    swc1	$f3,272($sp)
    # Line 464
    lwc1	$f2,8($a6)
    swc1	$f2,276($sp)
    # Line 465
    lwc1	$f1,0($a1)
    swc1	$f1,280($sp)
    lwc1	$f0,4($a1)
    swc1	$f0,284($sp)
    # Line 466
    lwc1	$f3,8($a1)
    swc1	$f3,288($sp)
    # Line 467
    lwc1	$f2,0($a2)
    swc1	$f2,292($sp)
    lwc1	$f1,4($a2)
    swc1	$f1,296($sp)
    # Line 468
    slti	$a3,$s8,3
    lwc1	$f0,8($a2)
    # Line 459
    sw	$at,1408($sp)
    # Line 468
    bnez	$a3,.L0dadd1c8
    swc1	$f0,300($sp)
    sll	$a0,$s4,0x2
    subu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a6
    lw	$v0,12($a0)
    lw	$v1,36($a5)
    bne	$v0,$v1,.L0dadd1cc
    # Line 470
    move	$t8,$zero
    lw	$a3,16($a0)
    lw	$at,40($a5)
    bne	$a3,$at,.L0dadd1cc
    move	$t8,$zero
    lw	$v0,20($a0)
    lw	$v1,44($a5)
    bne	$v0,$v1,.L0dadd1cc
    move	$t8,$zero
    lwc1	$f2,36($a5)
    swc1	$f2,304($sp)
    lwc1	$f1,40($a5)
    swc1	$f1,308($sp)
    lwc1	$f0,44($a5)
    li	$t8,1
    b	.L0dadd1ec
    swc1	$f0,312($sp)
.L0dadcbd8:
    # Line 588
    andi	$a0,$s2,0x10
    lb	$at,0($a7)
    lb	$v1,0($t0)
    lb	$v0,0($a4)
    ld	$a3,2480($sp)
    sll	$v1,$v1,0x8
    sll	$v0,$v0,0x18
    lb	$a3,0($a3)
    sll	$at,$at,0x10
    or	$at,$at,$v0
    or	$a3,$a3,$v1
    or	$a3,$a3,$at
    beqz	$a0,.L0dae0a74
    sw	$a3,32($sp)
    # Line 591
    lb	$a0,3($a4)
.L0dadcc14:
    andi	$a3,$s2,0x20
    sll	$a1,$a0,0x18
    beqz	$a3,.L0dae0a7c
    sw	$a1,36($sp)
    # Line 592
    lb	$a0,4($t0)
.L0dadcc28:
    andi	$at,$s2,0x40
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    beqz	$at,.L0dae0a84
    sw	$a2,36($sp)
    ld	$a0,2480($sp)
    # Line 593
    lb	$a0,3($a0)
.L0dadcc44:
    andi	$a3,$s2,0x80
    sll	$a1,$a0,0x8
    or	$a1,$a1,$a2
    beqz	$a3,.L0dae0a8c
    sw	$a1,36($sp)
    # Line 594
    lb	$a0,4($a7)
.L0dadcc5c:
    # Line 596
    addiu	$t0,$t0,5
    addiu	$a7,$a7,5
    addiu	$a4,$a4,4
    andi	$a3,$s2,0x100
    ld	$v0,2480($sp)
    # Line 594
    or	$at,$a0,$a1
    sw	$at,36($sp)
    # Line 596
    addiu	$v0,$v0,4
    beqz	$a3,.L0dae0a94
    sd	$v0,2480($sp)
    # Line 597
    lb	$a0,0($a4)
    addiu	$a4,$a4,1
.L0dadcc8c:
    andi	$v1,$s2,0x200
    sll	$a2,$a0,0x18
    beqz	$v1,.L0dae0a9c
    sw	$a2,40($sp)
    # Line 598
    lb	$a1,0($a4)
    addiu	$a4,$a4,1
.L0dadcca4:
    andi	$a3,$s2,0x400
    sll	$a0,$a1,0x10
    or	$a0,$a2,$a0
    beqz	$a3,.L0dae0aa4
    sw	$a0,40($sp)
    # Line 599
    lb	$a2,0($a4)
    addiu	$a4,$a4,1
.L0dadccc0:
    andi	$a3,$s2,0x800
    sll	$a1,$a2,0x8
    or	$a1,$a1,$a0
    beqz	$a3,.L0dae0aac
    sw	$a1,40($sp)
    # Line 600
    lb	$a0,0($a4)
.L0dadccd8:
    or	$a3,$a0,$a1
    lui	$t1,0x1
    and	$at,$s2,$t1
    beqz	$at,.L0dae0ab4
    sw	$a3,40($sp)
    # Line 602
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0dadccf4:
    sll	$a1,$a0,0x18
    lui	$a6,0x2
    and	$v0,$s2,$a6
    beqz	$v0,.L0dae0abc
    sw	$a1,44($sp)
    # Line 603
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0dadcd10:
    lui	$a5,0x4
    and	$v1,$s2,$a5
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    beqz	$v1,.L0dae0ac4
    sw	$a2,44($sp)
    # Line 604
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0dadcd30:
    lui	$a4,0x8
    and	$a3,$s2,$a4
    sll	$a1,$a0,0x8
    or	$a1,$a1,$a2
    beqz	$a3,.L0dae0acc
    sw	$a1,44($sp)
    # Line 605
    lb	$a0,0($t0)
.L0dadcd4c:
    or	$a3,$a0,$a1
    lui	$t8,0x10
    and	$at,$s2,$t8
    beqz	$at,.L0dae0ad4
    sw	$a3,44($sp)
    ld	$v0,2480($sp)
    # Line 607
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2480($sp)
.L0dadcd70:
    sll	$a2,$a0,0x18
    lui	$t3,0x20
    and	$v1,$s2,$t3
    beqz	$v1,.L0dae0adc
    sw	$a2,48($sp)
    ld	$a3,2480($sp)
    # Line 608
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2480($sp)
.L0dadcd94:
    lui	$t2,0x40
    and	$at,$s2,$t2
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$at,.L0dae0ae4
    sw	$a1,48($sp)
    ld	$a3,2480($sp)
    # Line 609
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2480($sp)
.L0dadcdbc:
    lui	$t0,0x80
    and	$at,$s2,$t0
    sll	$a2,$a0,0x8
    or	$a2,$a2,$a1
    beqz	$at,.L0dae0aec
    sw	$a2,48($sp)
    ld	$a0,2480($sp)
    # Line 610
    lb	$a0,0($a0)
.L0dadcddc:
    andi	$at,$s2,0x1000
    or	$a3,$a0,$a2
    beqz	$at,.L0dae0af4
    sw	$a3,48($sp)
    # Line 612
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0dadcdf4:
    andi	$v0,$s2,0x2000
    sll	$a2,$a0,0x18
    beqz	$v0,.L0dae0afc
    sw	$a2,52($sp)
    # Line 613
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0dadce0c:
    andi	$v1,$s2,0x4000
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$v1,.L0dae0b04
    sw	$a1,52($sp)
    # Line 614
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0dadce28:
    andi	$a3,$s2,0x8000
    sll	$a2,$a0,0x8
    or	$a2,$a2,$a1
    beqz	$a3,.L0dae0b0c
    sw	$a2,52($sp)
    # Line 615
    lb	$a0,0($a7)
.L0dadce40:
    # Line 621
    ld	$at,2456($sp)
    ld	$v0,2464($sp)
    # Line 615
    or	$v1,$a0,$a2
    sw	$v1,52($sp)
    # Line 621
    lb	$v0,0($v0)
    lb	$at,0($at)
    sll	$v0,$v0,0x10
    sll	$at,$at,0x18
    or	$at,$at,$v0
    ld	$v0,2472($sp)
    ld	$a1,2488($sp)
    lb	$v0,0($v0)
    lb	$a3,0($a1)
    sll	$v0,$v0,0x8
    or	$a3,$a3,$v0
    # Line 622
    andi	$v0,$s0,0x10
    # Line 621
    or	$a3,$a3,$at
    sw	$a3,128($sp)
    # Line 622
    beqz	$v0,.L0dae0b14
    lb	$a1,1($a1)
    # Line 624
    ld	$a3,2456($sp)
    ld	$a0,2384($sp)
    addu	$a0,$a0,$a3
    lb	$a0,0($a0)
.L0dadcea0:
    andi	$at,$s0,0x20
    sll	$a2,$a0,0x18
    beqz	$at,.L0dae0b1c
    sw	$a2,132($sp)
    ld	$a0,2464($sp)
    # Line 625
    lb	$a0,2($a0)
.L0dadceb8:
    andi	$a3,$s0,0x40
    sll	$a7,$a0,0x10
    or	$a7,$a2,$a7
    beqz	$a3,.L0dae0b24
    sw	$a7,132($sp)
    # Line 626
    ld	$a3,2464($sp)
    ld	$a0,2392($sp)
    addu	$a0,$a0,$a3
    lb	$a0,0($a0)
.L0dadcedc:
    andi	$at,$s0,0x80
    sll	$a2,$a0,0x8
    or	$a2,$a2,$a7
    beqz	$at,.L0dae0b2c
    sw	$a2,132($sp)
    ld	$a0,2488($sp)
    # Line 627
    lb	$a0,3($a0)
.L0dadcef8:
    andi	$at,$s0,0xa0
    or	$a3,$a0,$a2
    beqz	$at,.L0dae0b34
    sw	$a3,132($sp)
    # Line 629
    ld	$a3,2488($sp)
    ld	$a0,2400($sp)
    addu	$a0,$a0,$a3
    lb	$a0,0($a0)
.L0dadcf18:
    andi	$at,$s0,0x140
    sll	$a2,$a0,0x18
    beqz	$at,.L0dae0b3c
    sw	$a2,136($sp)
    ld	$a0,2472($sp)
    # Line 630
    lb	$a0,2($a0)
.L0dadcf30:
    andi	$a3,$s0,0x280
    sll	$a7,$a0,0x10
    or	$a7,$a2,$a7
    beqz	$a3,.L0dae0b44
    sw	$a7,136($sp)
    # Line 631
    ld	$a3,2472($sp)
    ld	$a0,2376($sp)
    addu	$a0,$a0,$a3
    lb	$a0,0($a0)
.L0dadcf54:
    andi	$at,$s0,0x500
    sll	$a2,$a0,0x8
    or	$a2,$a2,$a7
    beqz	$at,.L0dae0b4c
    sw	$a2,136($sp)
    ld	$a0,2456($sp)
    # Line 632
    lb	$a0,3($a0)
.L0dadcf70:
    # Line 634
    ld	$v0,2464($sp)
    ld	$v1,2456($sp)
    addiu	$v0,$v0,3
    addiu	$v1,$v1,4
    sd	$v1,2456($sp)
    ld	$a3,2488($sp)
    ld	$at,2472($sp)
    sd	$v0,2464($sp)
    addiu	$a3,$a3,4
    addiu	$at,$at,3
    sd	$at,2472($sp)
    # Line 632
    or	$at,$a0,$a2
    sd	$a3,2488($sp)
    # Line 634
    andi	$a3,$s0,0x1000
    beqz	$a3,.L0dae0b54
    # Line 632
    sw	$at,136($sp)
    ld	$v0,2464($sp)
    # Line 635
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2464($sp)
.L0dadcfc0:
    andi	$v1,$s0,0x2000
    sll	$a7,$a0,0x18
    beqz	$v1,.L0dae0b5c
    sw	$a7,140($sp)
    ld	$a3,2464($sp)
    # Line 636
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2464($sp)
.L0dadcfe0:
    andi	$at,$s0,0x4000
    sll	$a2,$a0,0x10
    or	$a2,$a7,$a2
    beqz	$at,.L0dae0b64
    sw	$a2,140($sp)
    ld	$a3,2464($sp)
    # Line 637
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2464($sp)
.L0dadd004:
    andi	$at,$s0,0x8000
    sll	$a7,$a0,0x8
    or	$a7,$a7,$a2
    beqz	$at,.L0dae0b6c
    sw	$a7,140($sp)
    ld	$a0,2464($sp)
    # Line 638
    lb	$a0,0($a0)
.L0dadd020:
    and	$at,$s0,$t8
    or	$a3,$a0,$a7
    beqz	$at,.L0dae0b74
    sw	$a3,140($sp)
    ld	$v0,2488($sp)
    # Line 640
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2488($sp)
.L0dadd040:
    and	$v1,$s0,$t3
    sll	$a7,$a0,0x18
    beqz	$v1,.L0dae0b7c
    sw	$a7,144($sp)
    ld	$a3,2488($sp)
    # Line 641
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2488($sp)
.L0dadd060:
    and	$at,$s0,$t2
    sll	$a2,$a0,0x10
    or	$a2,$a7,$a2
    beqz	$at,.L0dae0b84
    sw	$a2,144($sp)
    ld	$a3,2488($sp)
    # Line 642
    lb	$a7,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2488($sp)
.L0dadd084:
    and	$at,$s0,$t0
    sll	$a0,$a7,0x8
    or	$a0,$a0,$a2
    beqz	$at,.L0dae0b8c
    sw	$a0,144($sp)
    ld	$a2,2488($sp)
    # Line 643
    lb	$a2,0($a2)
.L0dadd0a0:
    or	$a3,$a2,$a0
    lui	$at,0x100
    and	$at,$s0,$at
    beqz	$at,.L0dae0b94
    sw	$a3,144($sp)
    ld	$v0,2472($sp)
    # Line 645
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2472($sp)
.L0dadd0c4:
    sll	$a2,$a0,0x18
    lui	$v1,0x200
    and	$v1,$s0,$v1
    beqz	$v1,.L0dae0b9c
    sw	$a2,148($sp)
    ld	$a3,2472($sp)
    # Line 646
    lb	$a0,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2472($sp)
.L0dadd0e8:
    lui	$at,0x400
    and	$at,$s0,$at
    sll	$a7,$a0,0x10
    or	$a7,$a2,$a7
    beqz	$at,.L0dae0ba4
    sw	$a7,148($sp)
    ld	$v0,2472($sp)
    # Line 647
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2472($sp)
.L0dadd110:
    lui	$v1,0x800
    and	$v1,$s0,$v1
    sll	$a2,$a0,0x8
    or	$a2,$a2,$a7
    beqz	$v1,.L0dae0bac
    sw	$a2,148($sp)
    ld	$a0,2472($sp)
    # Line 648
    lb	$a0,0($a0)
.L0dadd130:
    and	$at,$s0,$t1
    or	$a3,$a0,$a2
    beqz	$at,.L0dae0bb4
    sw	$a3,148($sp)
    ld	$v0,2456($sp)
    # Line 650
    lb	$a0,0($v0)
    addiu	$v0,$v0,1
    sd	$v0,2456($sp)
.L0dadd150:
    and	$v1,$s0,$a6
    sll	$a7,$a0,0x18
    beqz	$v1,.L0dae0bbc
    sw	$a7,152($sp)
    ld	$a3,2456($sp)
    # Line 651
    lb	$a2,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2456($sp)
.L0dadd170:
    and	$at,$s0,$a5
    sll	$a0,$a2,0x10
    or	$a0,$a7,$a0
    beqz	$at,.L0dae0bc4
    sw	$a0,152($sp)
    ld	$a3,2456($sp)
    # Line 652
    lb	$a5,0($a3)
    addiu	$a3,$a3,1
    sd	$a3,2456($sp)
.L0dadd194:
    and	$at,$s0,$a4
    sll	$a2,$a5,0x8
    or	$a2,$a2,$a0
    beqz	$at,.L0dae0bcc
    sw	$a2,152($sp)
    ld	$a0,2456($sp)
    # Line 653
    lb	$a0,0($a0)
.L0dadd1b0:
    sd	$ra,1480($sp)
    or	$a3,$a0,$a2
    # Line 655
    sll	$at,$a1,0x18
    sw	$at,156($sp)
    b	.L0dadc8d8
    # Line 653
    sw	$a3,152($sp)
.L0dadd1c8:
    # Line 470
    move	$t8,$zero
.L0dadd1cc:
    lui	$s0,0x1fff
    ori	$s0,$s0,0xffcf
    mtc1	$zero,$f3
    lui	$s2,0xff
    ori	$s2,$s2,0xffef
    swc1	$f3,312($sp)
    swc1	$f3,308($sp)
    swc1	$f3,304($sp)
.L0dadd1ec:
    slti	$at,$s5,4
    bnez	$at,.L0dadd258
    sll	$a0,$s8,0x2
    subu	$a0,$a0,$s8
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a5
    lw	$v0,12($a0)
    lw	$v1,48($a1)
    bne	$v0,$v1,.L0dadd25c
    # Line 471
    li	$a3,-193
    lw	$a3,16($a0)
    lw	$at,52($a1)
    bne	$a3,$at,.L0dadd25c
    li	$a3,-193
    lw	$v0,20($a0)
    lw	$v1,56($a1)
    bne	$v0,$v1,.L0dadd25c
    li	$a3,-193
    lwc1	$f2,48($a1)
    swc1	$f2,316($sp)
    lwc1	$f1,52($a1)
    swc1	$f1,320($sp)
    li	$a0,1
    lwc1	$f0,56($a1)
    sb	$a0,1412($sp)
    b	.L0dadd280
    swc1	$f0,324($sp)
.L0dadd258:
    li	$a3,-193
.L0dadd25c:
    and	$s0,$s0,$a3
    li	$a0,-33
    and	$s2,$s2,$a0
    mtc1	$zero,$f3
    move	$a0,$zero
    sb	$zero,1412($sp)
    swc1	$f3,324($sp)
    swc1	$f3,320($sp)
    swc1	$f3,316($sp)
.L0dadd280:
    slti	$at,$s6,3
    bnez	$at,.L0dadd2ec
    sll	$t1,$s5,0x2
    subu	$t1,$t1,$s5
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a1
    lw	$v0,12($t1)
    lw	$v1,36($a2)
    bne	$v0,$v1,.L0dadd2f0
    # Line 472
    li	$at,-769
    lw	$at,16($t1)
    lw	$v0,40($a2)
    bne	$at,$v0,.L0dadd2f0
    li	$at,-769
    lw	$v1,20($t1)
    lw	$a3,44($a2)
    bne	$v1,$a3,.L0dadd2f0
    li	$at,-769
    lwc1	$f2,36($a2)
    swc1	$f2,328($sp)
    lwc1	$f1,40($a2)
    swc1	$f1,332($sp)
    li	$s7,1
    lwc1	$f0,44($a2)
    sb	$s7,1413($sp)
    b	.L0dadd314
    swc1	$f0,336($sp)
.L0dadd2ec:
    li	$at,-769
.L0dadd2f0:
    and	$s0,$s0,$at
    li	$s7,-65
    and	$s2,$s2,$s7
    mtc1	$zero,$f3
    move	$s7,$zero
    sb	$zero,1413($sp)
    swc1	$f3,336($sp)
    swc1	$f3,332($sp)
    swc1	$f3,328($sp)
.L0dadd314:
    slti	$v0,$s4,4
    bnez	$v0,.L0dadd384
    sll	$t1,$s6,0x2
    subu	$t1,$t1,$s6
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a2
    lw	$v1,12($t1)
    lw	$a3,48($a6)
    bnel	$v1,$a3,.L0dadd388
    sd	$zero,2200($sp)
    # Line 473
    lw	$at,16($t1)
    lw	$v0,52($a6)
    bnel	$at,$v0,.L0dadd388
    sd	$zero,2200($sp)
    lw	$v1,20($t1)
    lw	$a3,56($a6)
    bnel	$v1,$a3,.L0dadd388
    sd	$zero,2200($sp)
    lwc1	$f2,48($a6)
    swc1	$f2,340($sp)
    lwc1	$f1,52($a6)
    li	$at,1
    swc1	$f1,344($sp)
    sd	$at,2200($sp)
    lwc1	$f0,56($a6)
    sb	$at,1414($sp)
    b	.L0dadd3ac
    swc1	$f0,348($sp)
.L0dadd384:
    sd	$zero,2200($sp)
.L0dadd388:
    sb	$zero,1414($sp)
    li	$v0,-129
    li	$v1,-3073
    mtc1	$zero,$f3
    and	$s0,$s0,$v1
    and	$s2,$s2,$v0
    swc1	$f3,348($sp)
    swc1	$f3,344($sp)
    swc1	$f3,340($sp)
.L0dadd3ac:
    # Line 475
    sltu	$t2,$zero,$a0
    sltu	$at,$zero,$t8
    sd	$at,2144($sp)
    addu	$at,$at,$t2
    subu	$s8,$s8,$at
    addiu	$s8,$s8,-1
    slti	$a3,$s8,5
    bnez	$a3,.L0dadd3d4
    # Line 473
    li	$t1,24
    # Line 475
    li	$s8,4
.L0dadd3d4:
    sd	$t2,2104($sp)
    sd	$s7,2208($sp)
    li	$a0,-1
    sw	$s8,5548($s3)
    li	$t9,4
    subu	$t3,$t9,$s8
    li	$v1,1
    ld	$v0,2144($sp)
    sllv	$v1,$v1,$s8
    addiu	$s8,$s8,-1
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    sd	$at,2152($sp)
    addu	$a5,$at,$a5
    addiu	$a5,$a5,36
    li	$v0,16
    subu	$v0,$v0,$v1
    sll	$v1,$v0,0xc
    sll	$v0,$v0,0x8
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$s0,$v1,$s0
    beq	$s8,$a0,.L0dae0bd4
    and	$s2,$v0,$s2
    addiu	$s7,$sp,256
    addiu	$t2,$s7,96
    addiu	$a3,$s8,1
    sd	$a3,2352($sp)
    andi	$a3,$a3,0x3
    beqz	$a3,.L0dadd48c
    sd	$a3,2368($sp)
.L0dadd454:
    lwc1	$f2,0($a5)
    addiu	$s8,$s8,-1
    addiu	$a5,$a5,12
    swc1	$f2,0($t2)
    addiu	$t2,$t2,12
    lwc1	$f1,-8($a5)
    ld	$at,2368($sp)
    addiu	$t1,$t1,3
    swc1	$f1,-8($t2)
    addi	$at,$at,-1
    lwc1	$f0,-4($a5)
    sd	$at,2368($sp)
    bnez	$at,.L0dadd454
    swc1	$f0,-4($t2)
.L0dadd48c:
    sd	$t1,2176($sp)
    move	$a3,$t2
    sd	$t2,2184($sp)
    move	$v1,$a5
    sd	$a5,2192($sp)
    ld	$v0,2352($sp)
    sd	$s8,2168($sp)
    move	$s8,$t1
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dadd544
    ld	$s8,1512($sp)
    ld	$t9,2168($sp)
    ld	$a5,2176($sp)
    ld	$t1,2184($sp)
    ld	$t2,2192($sp)
    ld	$s8,1512($sp)
.L0dadd4cc:
    lwc1	$f2,0($t2)
    swc1	$f2,0($t1)
    lwc1	$f1,4($t2)
    swc1	$f1,4($t1)
    lwc1	$f0,8($t2)
    swc1	$f0,8($t1)
    lwc1	$f3,12($t2)
    swc1	$f3,12($t1)
    lwc1	$f2,16($t2)
    swc1	$f2,16($t1)
    lwc1	$f1,20($t2)
    swc1	$f1,20($t1)
    lwc1	$f0,24($t2)
    swc1	$f0,24($t1)
    lwc1	$f3,28($t2)
    swc1	$f3,28($t1)
    lwc1	$f2,32($t2)
    swc1	$f2,32($t1)
    lwc1	$f1,36($t2)
    swc1	$f1,36($t1)
    lwc1	$f0,40($t2)
    addiu	$t2,$t2,48
    addiu	$t1,$t1,48
    swc1	$f0,-8($t1)
    addiu	$a5,$a5,12
    lwc1	$f3,-4($t2)
    addiu	$t9,$t9,-4
    bne	$t9,$a0,.L0dadd4cc
    swc1	$f3,-4($t1)
    move	$t1,$a5
.L0dadd544:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadd5f4
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$t9,$t3,1
    andi	$a5,$t9,0x3
    beqz	$a5,.L0dadd584
    addu	$t2,$t2,$s7
.L0dadd564:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,12
    addiu	$t1,$t1,3
    addi	$a5,$a5,-1
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a5,.L0dadd564
    swc1	$f4,-4($t2)
.L0dadd584:
    move	$a3,$t3
    sd	$t3,2216($sp)
    move	$v1,$t1
    sd	$t1,2232($sp)
    move	$v0,$t2
    sra	$at,$t9,0x2
    beqz	$at,.L0dadd5f4
    sd	$t2,2224($sp)
    ld	$t1,2216($sp)
    ld	$a5,2232($sp)
    ld	$t2,2224($sp)
.L0dadd5b0:
    addiu	$t2,$t2,48
    addiu	$a5,$a5,12
    addiu	$t1,$t1,-4
    swc1	$f4,-48($t2)
    swc1	$f4,-44($t2)
    swc1	$f4,-40($t2)
    swc1	$f4,-36($t2)
    swc1	$f4,-32($t2)
    swc1	$f4,-28($t2)
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bne	$t1,$a0,.L0dadd5b0
    swc1	$f4,-4($t2)
    move	$t1,$a5
.L0dadd5f4:
    ld	$t9,2208($sp)
    # Line 476
    ld	$at,2104($sp)
    sltu	$t9,$zero,$t9
    addu	$at,$at,$t9
    subu	$s5,$s5,$at
    addiu	$s5,$s5,-2
    slti	$at,$s5,5
    bnezl	$at,.L0dadd620
    sw	$s5,5556($s3)
    li	$s5,4
    sw	$s5,5556($s3)
.L0dadd620:
    li	$t3,4
    subu	$t3,$t3,$s5
    li	$v0,1
    sllv	$v0,$v0,$s5
    addiu	$s5,$s5,-1
    li	$at,16
    subu	$at,$at,$v0
    sll	$v0,$at,0x14
    sll	$at,$at,0x10
    nor	$at,$at,$zero
    nor	$v0,$v0,$zero
    ld	$v1,2104($sp)
    and	$s0,$v0,$s0
    and	$s2,$at,$s2
    sll	$a3,$v1,0x2
    subu	$a3,$a3,$v1
    sll	$a3,$a3,0x2
    addu	$a1,$a3,$a1
    beq	$s5,$a0,.L0dadd770
    addiu	$a1,$a1,48
    sll	$t2,$t1,0x2
    addiu	$a5,$s5,1
    sd	$a5,2360($sp)
    andi	$a5,$a5,0x3
    beqz	$a5,.L0dadd6b8
    addu	$t2,$t2,$s7
.L0dadd688:
    lwc1	$f1,0($a1)
    swc1	$f1,0($t2)
    addiu	$s5,$s5,-1
    lwc1	$f0,4($a1)
    addiu	$a1,$a1,12
    addiu	$t2,$t2,12
    swc1	$f0,-8($t2)
    addiu	$t1,$t1,3
    lwc1	$f3,-4($a1)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dadd688
    swc1	$f3,-4($t2)
.L0dadd6b8:
    move	$a3,$t1
    sd	$t1,2248($sp)
    move	$v1,$t2
    sd	$t2,2272($sp)
    move	$v0,$a1
    ld	$at,2360($sp)
    sd	$a1,2280($sp)
    sd	$s5,2240($sp)
    sra	$at,$at,0x2
    beqz	$at,.L0dadd770
    ld	$s5,1504($sp)
    ld	$t2,2240($sp)
    ld	$a1,2248($sp)
    ld	$a5,2272($sp)
    ld	$t1,2280($sp)
    ld	$s5,1504($sp)
.L0dadd6f8:
    lwc1	$f1,0($t1)
    swc1	$f1,0($a5)
    lwc1	$f0,4($t1)
    swc1	$f0,4($a5)
    lwc1	$f3,8($t1)
    swc1	$f3,8($a5)
    lwc1	$f2,12($t1)
    swc1	$f2,12($a5)
    lwc1	$f1,16($t1)
    swc1	$f1,16($a5)
    lwc1	$f0,20($t1)
    swc1	$f0,20($a5)
    lwc1	$f3,24($t1)
    swc1	$f3,24($a5)
    lwc1	$f2,28($t1)
    swc1	$f2,28($a5)
    lwc1	$f1,32($t1)
    swc1	$f1,32($a5)
    lwc1	$f0,36($t1)
    swc1	$f0,36($a5)
    lwc1	$f3,40($t1)
    addiu	$t1,$t1,48
    addiu	$a5,$a5,48
    swc1	$f3,-8($a5)
    addiu	$a1,$a1,12
    lwc1	$f2,-4($t1)
    addiu	$t2,$t2,-4
    bne	$t2,$a0,.L0dadd6f8
    swc1	$f2,-4($a5)
    move	$t1,$a1
.L0dadd770:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadd824
    ld	$s5,1504($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a5,$t3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dadd7b4
    addu	$t2,$t2,$s7
.L0dadd794:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,12
    addiu	$t1,$t1,3
    addi	$a1,$a1,-1
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dadd794
    swc1	$f4,-4($t2)
.L0dadd7b4:
    move	$a3,$t3
    sd	$t3,2264($sp)
    move	$v1,$t1
    sd	$t1,2304($sp)
    move	$v0,$t2
    sra	$at,$a5,0x2
    beqz	$at,.L0dadd824
    sd	$t2,2296($sp)
    ld	$a5,2264($sp)
    ld	$a1,2304($sp)
    ld	$t1,2296($sp)
.L0dadd7e0:
    addiu	$t1,$t1,48
    addiu	$a1,$a1,12
    addiu	$a5,$a5,-4
    swc1	$f4,-48($t1)
    swc1	$f4,-44($t1)
    swc1	$f4,-40($t1)
    swc1	$f4,-36($t1)
    swc1	$f4,-32($t1)
    swc1	$f4,-28($t1)
    swc1	$f4,-24($t1)
    swc1	$f4,-20($t1)
    swc1	$f4,-16($t1)
    swc1	$f4,-12($t1)
    swc1	$f4,-8($t1)
    bne	$a5,$a0,.L0dadd7e0
    swc1	$f4,-4($t1)
    move	$t1,$a1
.L0dadd824:
    ld	$at,2200($sp)
    # Line 477
    sltu	$at,$zero,$at
    sd	$at,1992($sp)
    addu	$at,$t9,$at
    subu	$s6,$s6,$at
    addiu	$s6,$s6,-1
    slti	$at,$s6,5
    bnezl	$at,.L0dadd850
    sw	$s6,5560($s3)
    li	$s6,4
    sw	$s6,5560($s3)
.L0dadd850:
    li	$t3,4
    subu	$t3,$t3,$s6
    li	$v1,1
    sllv	$v1,$v1,$s6
    addiu	$s6,$s6,-1
    li	$v0,16
    sll	$a3,$t9,0x2
    subu	$a3,$a3,$t9
    sll	$a3,$a3,0x2
    addu	$a2,$a3,$a2
    addiu	$a2,$a2,36
    subu	$v0,$v0,$v1
    sll	$v1,$v0,0x18
    sll	$v0,$v0,0x14
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$s0,$v1,$s0
    beq	$s6,$a0,.L0dadd990
    and	$s2,$v0,$s2
    sll	$t2,$t1,0x2
    addiu	$a5,$s6,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dadd8e0
    addu	$t2,$t2,$s7
.L0dadd8b0:
    lwc1	$f0,0($a2)
    swc1	$f0,0($t2)
    addiu	$s6,$s6,-1
    lwc1	$f3,4($a2)
    addiu	$a2,$a2,12
    addiu	$t2,$t2,12
    swc1	$f3,-8($t2)
    addiu	$t1,$t1,3
    lwc1	$f2,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dadd8b0
    swc1	$f2,-4($t2)
.L0dadd8e0:
    move	$t9,$t1
    move	$v1,$t2
    sd	$t2,2288($sp)
    move	$v0,$a2
    sd	$a2,2256($sp)
    sd	$s6,2312($sp)
    sra	$at,$a5,0x2
    beqz	$at,.L0dadd990
    ld	$s6,1608($sp)
    ld	$t1,2312($sp)
    move	$a1,$t9
    ld	$a2,2288($sp)
    ld	$a5,2256($sp)
    ld	$s6,1608($sp)
.L0dadd918:
    lwc1	$f0,0($a5)
    swc1	$f0,0($a2)
    lwc1	$f3,4($a5)
    swc1	$f3,4($a2)
    lwc1	$f2,8($a5)
    swc1	$f2,8($a2)
    lwc1	$f1,12($a5)
    swc1	$f1,12($a2)
    lwc1	$f0,16($a5)
    swc1	$f0,16($a2)
    lwc1	$f3,20($a5)
    swc1	$f3,20($a2)
    lwc1	$f2,24($a5)
    swc1	$f2,24($a2)
    lwc1	$f1,28($a5)
    swc1	$f1,28($a2)
    lwc1	$f0,32($a5)
    swc1	$f0,32($a2)
    lwc1	$f3,36($a5)
    swc1	$f3,36($a2)
    lwc1	$f2,40($a5)
    addiu	$a5,$a5,48
    addiu	$a2,$a2,48
    swc1	$f2,-8($a2)
    addiu	$a1,$a1,12
    lwc1	$f1,-4($a5)
    addiu	$t1,$t1,-4
    bne	$t1,$a0,.L0dadd918
    swc1	$f1,-4($a2)
    move	$t1,$a1
.L0dadd990:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadda40
    ld	$s6,1608($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dadd9d4
    addu	$t2,$t2,$s7
.L0dadd9b4:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,12
    addiu	$t1,$t1,3
    addi	$a1,$a1,-1
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dadd9b4
    swc1	$f4,-4($t2)
.L0dadd9d4:
    move	$t9,$t3
    move	$v1,$t1
    sd	$t1,2320($sp)
    move	$v0,$t2
    sra	$at,$a2,0x2
    beqz	$at,.L0dadda40
    sd	$t2,2160($sp)
    move	$a2,$t9
    ld	$a1,2320($sp)
    ld	$a5,2160($sp)
.L0dadd9fc:
    addiu	$a5,$a5,48
    addiu	$a1,$a1,12
    addiu	$a2,$a2,-4
    swc1	$f4,-48($a5)
    swc1	$f4,-44($a5)
    swc1	$f4,-40($a5)
    swc1	$f4,-36($a5)
    swc1	$f4,-32($a5)
    swc1	$f4,-28($a5)
    swc1	$f4,-24($a5)
    swc1	$f4,-20($a5)
    swc1	$f4,-16($a5)
    swc1	$f4,-12($a5)
    swc1	$f4,-8($a5)
    bne	$a2,$a0,.L0dadd9fc
    swc1	$f4,-4($a5)
    move	$t1,$a1
.L0dadda40:
    ld	$v0,1992($sp)
    # Line 478
    ld	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s4,$s4,$at
    addiu	$s4,$s4,-2
    slti	$a3,$s4,5
    bnezl	$a3,.L0dadda68
    sw	$s4,5552($s3)
    li	$s4,4
    sw	$s4,5552($s3)
.L0dadda68:
    li	$t3,4
    subu	$t3,$t3,$s4
    ld	$at,2152($sp)
    li	$a3,1
    sllv	$a3,$a3,$s4
    addiu	$s4,$s4,-1
    li	$v1,16
    addu	$a6,$at,$a6
    addiu	$a6,$a6,48
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0x10
    sll	$v1,$v1,0xc
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    and	$s0,$a3,$s0
    beq	$s4,$a0,.L0daddba0
    and	$s2,$v1,$s2
    sll	$t2,$t1,0x2
    addiu	$a2,$s4,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0daddaf0
    addu	$t2,$t2,$s7
.L0daddac0:
    lwc1	$f3,0($a6)
    swc1	$f3,0($t2)
    addiu	$s4,$s4,-1
    lwc1	$f2,4($a6)
    addiu	$a6,$a6,12
    addiu	$t2,$t2,12
    swc1	$f2,-8($t2)
    addiu	$t1,$t1,3
    lwc1	$f1,-4($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0daddac0
    swc1	$f1,-4($t2)
.L0daddaf0:
    move	$v1,$t1
    sd	$t1,2336($sp)
    move	$v0,$t2
    sd	$t2,2344($sp)
    move	$t9,$a6
    sd	$s4,2328($sp)
    sra	$at,$a2,0x2
    beqz	$at,.L0daddba0
    ld	$s4,1496($sp)
    ld	$a6,2328($sp)
    ld	$a1,2336($sp)
    ld	$a2,2344($sp)
    move	$a5,$t9
    ld	$s4,1496($sp)
.L0daddb28:
    lwc1	$f3,0($a5)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a5)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a5)
    swc1	$f1,8($a2)
    lwc1	$f0,12($a5)
    swc1	$f0,12($a2)
    lwc1	$f3,16($a5)
    swc1	$f3,16($a2)
    lwc1	$f2,20($a5)
    swc1	$f2,20($a2)
    lwc1	$f1,24($a5)
    swc1	$f1,24($a2)
    lwc1	$f0,28($a5)
    swc1	$f0,28($a2)
    lwc1	$f3,32($a5)
    swc1	$f3,32($a2)
    lwc1	$f2,36($a5)
    swc1	$f2,36($a2)
    lwc1	$f1,40($a5)
    addiu	$a5,$a5,48
    addiu	$a2,$a2,48
    swc1	$f1,-8($a2)
    addiu	$a1,$a1,12
    lwc1	$f0,-4($a5)
    addiu	$a6,$a6,-4
    bne	$a6,$a0,.L0daddb28
    swc1	$f0,-4($a2)
    move	$t1,$a1
.L0daddba0:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadc8b0
    ld	$s4,1496($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0daddbe0
    addu	$t2,$t2,$s7
.L0daddbc4:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,12
    addi	$a1,$a1,-1
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0daddbc4
    swc1	$f4,-4($t2)
.L0daddbe0:
    move	$a6,$t3
    sra	$at,$a2,0x2
    beqz	$at,.L0daddc34
    move	$a5,$t2
    move	$a1,$a6
    move	$a2,$a5
.L0daddbf8:
    addiu	$a2,$a2,48
    addiu	$a1,$a1,-4
    swc1	$f4,-48($a2)
    swc1	$f4,-44($a2)
    swc1	$f4,-40($a2)
    swc1	$f4,-36($a2)
    swc1	$f4,-32($a2)
    swc1	$f4,-28($a2)
    swc1	$f4,-24($a2)
    swc1	$f4,-20($a2)
    swc1	$f4,-16($a2)
    swc1	$f4,-12($a2)
    swc1	$f4,-8($a2)
    bne	$a1,$a0,.L0daddbf8
    swc1	$f4,-4($a2)
.L0daddc34:
    b	.L0dadc8b0
    nop
.L0daddc3c:
    # Line 481
    li	$v1,4
    sw	$v1,5544($s3)
    # Line 483
    lwc1	$f3,4($a5)
    swc1	$f3,256($sp)
    lwc1	$f2,8($a5)
    swc1	$f2,260($sp)
    # Line 484
    lwc1	$f1,12($a5)
    swc1	$f1,264($sp)
    lw	$a3,0($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,268($sp)
    # Line 485
    lwc1	$f3,4($a6)
    swc1	$f3,272($sp)
    lwc1	$f2,8($a6)
    swc1	$f2,276($sp)
    # Line 486
    lwc1	$f1,12($a6)
    swc1	$f1,280($sp)
    lw	$v0,0($a6)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,284($sp)
    # Line 487
    lwc1	$f3,4($a1)
    swc1	$f3,288($sp)
    lwc1	$f2,8($a1)
    swc1	$f2,292($sp)
    # Line 488
    lwc1	$f1,12($a1)
    swc1	$f1,296($sp)
    lw	$at,0($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,300($sp)
    # Line 489
    lwc1	$f3,4($a2)
    swc1	$f3,304($sp)
    lwc1	$f2,8($a2)
    swc1	$f2,308($sp)
    # Line 490
    lwc1	$f1,12($a2)
    swc1	$f1,312($sp)
    lw	$a3,0($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 481
    sw	$v1,1408($sp)
    # Line 490
    slti	$v0,$s8,3
    bnez	$v0,.L0daddd70
    swc1	$f0,316($sp)
    sll	$a0,$s4,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a6
    lw	$at,20($a0)
    lw	$v0,52($a5)
    bne	$at,$v0,.L0daddd74
    # Line 492
    move	$t8,$zero
    lw	$a3,24($a0)
    lw	$at,56($a5)
    bne	$a3,$at,.L0daddd74
    move	$t8,$zero
    lw	$v0,28($a0)
    lw	$v1,60($a5)
    bne	$v0,$v1,.L0daddd74
    move	$t8,$zero
    lwc1	$f3,52($a5)
    swc1	$f3,320($sp)
    lwc1	$f2,56($a5)
    swc1	$f2,324($sp)
    lwc1	$f1,60($a5)
    swc1	$f1,328($sp)
    lw	$a3,48($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$t8,1
    b	.L0daddd98
    swc1	$f0,332($sp)
.L0daddd70:
    move	$t8,$zero
.L0daddd74:
    lui	$s0,0x1fff
    ori	$s0,$s0,0xffcf
    mtc1	$zero,$f0
    lui	$s2,0xff
    ori	$s2,$s2,0xffef
    swc1	$f0,332($sp)
    swc1	$f0,328($sp)
    swc1	$f0,324($sp)
    swc1	$f0,320($sp)
.L0daddd98:
    slti	$at,$s5,4
    bnez	$at,.L0dadde14
    sll	$a0,$s8,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a5
    lw	$v0,20($a0)
    lw	$v1,68($a1)
    bne	$v0,$v1,.L0dadde18
    # Line 493
    li	$at,-193
    lw	$a3,24($a0)
    lw	$at,72($a1)
    bne	$a3,$at,.L0dadde18
    li	$at,-193
    lw	$v0,28($a0)
    lw	$v1,76($a1)
    bne	$v0,$v1,.L0dadde18
    li	$at,-193
    lwc1	$f0,68($a1)
    swc1	$f0,336($sp)
    lwc1	$f3,72($a1)
    swc1	$f3,340($sp)
    lwc1	$f2,76($a1)
    swc1	$f2,344($sp)
    lw	$a0,64($a1)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    li	$a0,1
    sb	$a0,1412($sp)
    b	.L0dadde40
    swc1	$f1,348($sp)
.L0dadde14:
    li	$at,-193
.L0dadde18:
    and	$s0,$s0,$at
    li	$a3,-33
    and	$s2,$s2,$a3
    mtc1	$zero,$f1
    move	$a0,$zero
    sb	$zero,1412($sp)
    swc1	$f1,348($sp)
    swc1	$f1,344($sp)
    swc1	$f1,340($sp)
    swc1	$f1,336($sp)
.L0dadde40:
    slti	$v0,$s6,3
    bnez	$v0,.L0daddec0
    sll	$t1,$s5,0x2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a1
    lw	$v1,20($t1)
    lw	$a3,52($a2)
    bnel	$v1,$a3,.L0daddec4
    sd	$zero,2208($sp)
    # Line 494
    lw	$at,24($t1)
    lw	$v0,56($a2)
    bnel	$at,$v0,.L0daddec4
    sd	$zero,2208($sp)
    lw	$v1,28($t1)
    lw	$a3,60($a2)
    bnel	$v1,$a3,.L0daddec4
    sd	$zero,2208($sp)
    lwc1	$f1,52($a2)
    swc1	$f1,352($sp)
    lwc1	$f0,56($a2)
    swc1	$f0,356($sp)
    lwc1	$f3,60($a2)
    swc1	$f3,360($sp)
    lw	$v0,48($a2)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    li	$at,1
    sd	$at,2208($sp)
    sb	$at,1413($sp)
    b	.L0daddeec
    swc1	$f2,364($sp)
.L0daddec0:
    sd	$zero,2208($sp)
.L0daddec4:
    sb	$zero,1413($sp)
    li	$v1,-65
    li	$a3,-769
    mtc1	$zero,$f2
    and	$s0,$s0,$a3
    and	$s2,$s2,$v1
    swc1	$f2,364($sp)
    swc1	$f2,360($sp)
    swc1	$f2,356($sp)
    swc1	$f2,352($sp)
.L0daddeec:
    slti	$at,$s4,4
    bnez	$at,.L0daddf6c
    sll	$t1,$s6,0x2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a2
    lw	$v0,20($t1)
    lw	$v1,68($a6)
    bnel	$v0,$v1,.L0daddf70
    sd	$zero,2200($sp)
    # Line 495
    lw	$at,24($t1)
    lw	$v0,72($a6)
    bnel	$at,$v0,.L0daddf70
    sd	$zero,2200($sp)
    lw	$v1,28($t1)
    lw	$a3,76($a6)
    bnel	$v1,$a3,.L0daddf70
    sd	$zero,2200($sp)
    lwc1	$f2,68($a6)
    swc1	$f2,368($sp)
    lwc1	$f1,72($a6)
    swc1	$f1,372($sp)
    lwc1	$f0,76($a6)
    swc1	$f0,376($sp)
    lw	$v0,64($a6)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    li	$at,1
    sd	$at,2200($sp)
    sb	$at,1414($sp)
    b	.L0daddf98
    swc1	$f3,380($sp)
.L0daddf6c:
    sd	$zero,2200($sp)
.L0daddf70:
    sb	$zero,1414($sp)
    li	$v1,-129
    li	$a3,-3073
    mtc1	$zero,$f3
    and	$s0,$s0,$a3
    and	$s2,$s2,$v1
    swc1	$f3,380($sp)
    swc1	$f3,376($sp)
    swc1	$f3,372($sp)
    swc1	$f3,368($sp)
.L0daddf98:
    li	$t1,32
    # Line 497
    sltu	$v0,$zero,$a0
    sltu	$at,$zero,$t8
    sd	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s8,$s8,$at
    addiu	$s8,$s8,-1
    slti	$at,$s8,5
    bnez	$at,.L0daddfc4
    sd	$v0,2104($sp)
    li	$s8,4
.L0daddfc4:
    li	$a0,-1
    sw	$s8,5548($s3)
    li	$t3,4
    subu	$t3,$t3,$s8
    li	$a3,1
    sllv	$a3,$a3,$s8
    addiu	$s8,$s8,-1
    li	$v1,16
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0xc
    sll	$v1,$v1,0x8
    ld	$at,2144($sp)
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    sll	$at,$at,0x2
    sll	$at,$at,0x2
    sd	$at,1960($sp)
    and	$s0,$a3,$s0
    and	$s2,$v1,$s2
    addu	$a5,$at,$a5
    beq	$s8,$a0,.L0dae0be0
    addiu	$a5,$a5,48
    addiu	$s7,$sp,256
    addiu	$t9,$s8,1
    sd	$t9,2136($sp)
    andi	$t9,$t9,0x3
    beqz	$t9,.L0dade074
    addiu	$t2,$s7,128
.L0dade034:
    lwc1	$f3,4($a5)
    swc1	$f3,0($t2)
    lwc1	$f2,8($a5)
    swc1	$f2,4($t2)
    lwc1	$f1,12($a5)
    swc1	$f1,8($t2)
    lw	$at,0($a5)
    mtc1	$at,$f0
    addiu	$s8,$s8,-1
    cvt.s.w	$f0,$f0
    addiu	$a5,$a5,16
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$t9,$t9,-1
    bnez	$t9,.L0dade034
    swc1	$f0,-4($t2)
.L0dade074:
    sd	$t1,2072($sp)
    move	$a3,$t2
    sd	$t2,2080($sp)
    move	$v1,$a5
    sd	$a5,2088($sp)
    ld	$v0,2136($sp)
    sd	$s8,2064($sp)
    move	$s8,$t1
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dade17c
    ld	$s8,1512($sp)
    ld	$t1,2064($sp)
    ld	$a5,2072($sp)
    ld	$t2,2080($sp)
    ld	$t9,2088($sp)
    ld	$s8,1512($sp)
.L0dade0b4:
    lwc1	$f3,4($t9)
    swc1	$f3,0($t2)
    lwc1	$f2,8($t9)
    swc1	$f2,4($t2)
    lwc1	$f1,12($t9)
    swc1	$f1,8($t2)
    lw	$a3,0($t9)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($t2)
    lwc1	$f3,20($t9)
    swc1	$f3,16($t2)
    lwc1	$f2,24($t9)
    swc1	$f2,20($t2)
    lwc1	$f1,28($t9)
    swc1	$f1,24($t2)
    lw	$v1,16($t9)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,28($t2)
    lwc1	$f3,36($t9)
    swc1	$f3,32($t2)
    lwc1	$f2,40($t9)
    swc1	$f2,36($t2)
    lwc1	$f1,44($t9)
    swc1	$f1,40($t2)
    lw	$v0,32($t9)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,44($t2)
    lwc1	$f3,52($t9)
    swc1	$f3,48($t2)
    lwc1	$f2,56($t9)
    swc1	$f2,52($t2)
    lwc1	$f1,60($t9)
    swc1	$f1,56($t2)
    lw	$at,48($t9)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$t9,$t9,64
    addiu	$t2,$t2,64
    addiu	$a5,$a5,16
    addiu	$t1,$t1,-4
    bne	$t1,$a0,.L0dade0b4
    swc1	$f0,-4($t2)
    move	$t1,$a5
.L0dade17c:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dade240
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$t9,$t3,1
    andi	$a5,$t9,0x3
    beqz	$a5,.L0dade1c0
    addu	$t2,$t2,$s7
.L0dade19c:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a5,$a5,-1
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a5,.L0dade19c
    swc1	$f4,-4($t2)
.L0dade1c0:
    move	$a3,$t3
    sd	$t3,2096($sp)
    move	$v1,$t1
    sd	$t1,2112($sp)
    move	$v0,$t2
    sra	$at,$t9,0x2
    beqz	$at,.L0dade240
    sd	$t2,2120($sp)
    ld	$t1,2096($sp)
    ld	$a5,2112($sp)
    ld	$t2,2120($sp)
.L0dade1ec:
    addiu	$t2,$t2,64
    addiu	$a5,$a5,16
    addiu	$t1,$t1,-4
    swc1	$f4,-64($t2)
    swc1	$f4,-60($t2)
    swc1	$f4,-56($t2)
    swc1	$f4,-52($t2)
    swc1	$f4,-48($t2)
    swc1	$f4,-44($t2)
    swc1	$f4,-40($t2)
    swc1	$f4,-36($t2)
    swc1	$f4,-32($t2)
    swc1	$f4,-28($t2)
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bne	$t1,$a0,.L0dade1ec
    swc1	$f4,-4($t2)
    move	$t1,$a5
.L0dade240:
    ld	$t9,2208($sp)
    # Line 498
    ld	$at,2104($sp)
    sltu	$t9,$zero,$t9
    addu	$at,$at,$t9
    subu	$s5,$s5,$at
    addiu	$s5,$s5,-2
    slti	$at,$s5,5
    bnezl	$at,.L0dade26c
    sw	$s5,5556($s3)
    li	$s5,4
    sw	$s5,5556($s3)
.L0dade26c:
    li	$t3,4
    subu	$t3,$t3,$s5
    li	$v0,1
    sllv	$v0,$v0,$s5
    addiu	$s5,$s5,-1
    li	$at,16
    subu	$at,$at,$v0
    sll	$v0,$at,0x14
    sll	$at,$at,0x10
    nor	$at,$at,$zero
    nor	$v0,$v0,$zero
    ld	$a3,2104($sp)
    and	$s0,$v0,$s0
    and	$s2,$at,$s2
    sll	$a3,$a3,0x2
    sll	$a3,$a3,0x2
    addu	$a1,$a3,$a1
    beq	$s5,$a0,.L0dade418
    addiu	$a1,$a1,64
    sll	$t2,$t1,0x2
    addiu	$a5,$s5,1
    sd	$a5,2128($sp)
    andi	$a5,$a5,0x3
    beqz	$a5,.L0dade310
    addu	$t2,$t2,$s7
.L0dade2d0:
    lwc1	$f3,4($a1)
    swc1	$f3,0($t2)
    lwc1	$f2,8($a1)
    swc1	$f2,4($t2)
    lwc1	$f1,12($a1)
    swc1	$f1,8($t2)
    lw	$at,0($a1)
    mtc1	$at,$f0
    addiu	$s5,$s5,-1
    cvt.s.w	$f0,$f0
    addiu	$a1,$a1,16
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a5,$a5,-1
    bnez	$a5,.L0dade2d0
    swc1	$f0,-4($t2)
.L0dade310:
    sd	$t1,1936($sp)
    move	$a3,$t2
    sd	$t2,1944($sp)
    move	$v1,$a1
    sd	$a1,1952($sp)
    ld	$v0,2128($sp)
    sd	$s5,1928($sp)
    move	$s5,$t1
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dade418
    ld	$s5,1504($sp)
    ld	$t2,1928($sp)
    ld	$a1,1936($sp)
    ld	$a5,1944($sp)
    ld	$t1,1952($sp)
    ld	$s5,1504($sp)
.L0dade350:
    lwc1	$f3,4($t1)
    swc1	$f3,0($a5)
    lwc1	$f2,8($t1)
    swc1	$f2,4($a5)
    lwc1	$f1,12($t1)
    swc1	$f1,8($a5)
    lw	$a3,0($t1)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a5)
    lwc1	$f3,20($t1)
    swc1	$f3,16($a5)
    lwc1	$f2,24($t1)
    swc1	$f2,20($a5)
    lwc1	$f1,28($t1)
    swc1	$f1,24($a5)
    lw	$v1,16($t1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,28($a5)
    lwc1	$f3,36($t1)
    swc1	$f3,32($a5)
    lwc1	$f2,40($t1)
    swc1	$f2,36($a5)
    lwc1	$f1,44($t1)
    swc1	$f1,40($a5)
    lw	$v0,32($t1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,44($a5)
    lwc1	$f3,52($t1)
    swc1	$f3,48($a5)
    lwc1	$f2,56($t1)
    swc1	$f2,52($a5)
    lwc1	$f1,60($t1)
    swc1	$f1,56($a5)
    lw	$at,48($t1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$t1,$t1,64
    addiu	$a5,$a5,64
    addiu	$a1,$a1,16
    addiu	$t2,$t2,-4
    bne	$t2,$a0,.L0dade350
    swc1	$f0,-4($a5)
    move	$t1,$a1
.L0dade418:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dade4e0
    ld	$s5,1504($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a5,$t3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dade460
    addu	$t2,$t2,$s7
.L0dade43c:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a1,$a1,-1
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dade43c
    swc1	$f4,-4($t2)
.L0dade460:
    move	$a3,$t3
    sd	$t3,1968($sp)
    move	$v1,$t1
    sd	$t1,1976($sp)
    move	$v0,$t2
    sra	$at,$a5,0x2
    beqz	$at,.L0dade4e0
    sd	$t2,1984($sp)
    ld	$a5,1968($sp)
    ld	$a1,1976($sp)
    ld	$t1,1984($sp)
.L0dade48c:
    addiu	$t1,$t1,64
    addiu	$a1,$a1,16
    addiu	$a5,$a5,-4
    swc1	$f4,-64($t1)
    swc1	$f4,-60($t1)
    swc1	$f4,-56($t1)
    swc1	$f4,-52($t1)
    swc1	$f4,-48($t1)
    swc1	$f4,-44($t1)
    swc1	$f4,-40($t1)
    swc1	$f4,-36($t1)
    swc1	$f4,-32($t1)
    swc1	$f4,-28($t1)
    swc1	$f4,-24($t1)
    swc1	$f4,-20($t1)
    swc1	$f4,-16($t1)
    swc1	$f4,-12($t1)
    swc1	$f4,-8($t1)
    bne	$a5,$a0,.L0dade48c
    swc1	$f4,-4($t1)
    move	$t1,$a1
.L0dade4e0:
    ld	$at,2200($sp)
    # Line 499
    sltu	$at,$zero,$at
    sd	$at,1992($sp)
    addu	$at,$t9,$at
    subu	$s6,$s6,$at
    addiu	$s6,$s6,-1
    slti	$at,$s6,5
    bnezl	$at,.L0dade50c
    sw	$s6,5560($s3)
    li	$s6,4
    sw	$s6,5560($s3)
.L0dade50c:
    li	$t3,4
    subu	$t3,$t3,$s6
    li	$v1,1
    sllv	$v1,$v1,$s6
    addiu	$s6,$s6,-1
    sll	$a3,$t9,0x2
    sll	$a3,$a3,0x2
    addu	$a2,$a3,$a2
    addiu	$a2,$a2,48
    li	$v0,16
    subu	$v0,$v0,$v1
    sll	$v1,$v0,0x18
    sll	$v0,$v0,0x14
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$s0,$v1,$s0
    beq	$s6,$a0,.L0dade6a8
    and	$s2,$v0,$s2
    sll	$t2,$t1,0x2
    addiu	$a5,$s6,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dade5a8
    addu	$t2,$t2,$s7
.L0dade568:
    lwc1	$f3,4($a2)
    swc1	$f3,0($t2)
    lwc1	$f2,8($a2)
    swc1	$f2,4($t2)
    lwc1	$f1,12($a2)
    swc1	$f1,8($t2)
    lw	$at,0($a2)
    mtc1	$at,$f0
    addiu	$s6,$s6,-1
    cvt.s.w	$f0,$f0
    addiu	$a2,$a2,16
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0dade568
    swc1	$f0,-4($t2)
.L0dade5a8:
    move	$a3,$t1
    sd	$t1,2008($sp)
    move	$v1,$t2
    sd	$t2,2016($sp)
    move	$t9,$a2
    sd	$s6,2000($sp)
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dade6a8
    ld	$s6,1608($sp)
    ld	$t1,2000($sp)
    ld	$a1,2008($sp)
    ld	$a2,2016($sp)
    move	$a5,$t9
    ld	$s6,1608($sp)
.L0dade5e0:
    lwc1	$f3,4($a5)
    swc1	$f3,0($a2)
    lwc1	$f2,8($a5)
    swc1	$f2,4($a2)
    lwc1	$f1,12($a5)
    swc1	$f1,8($a2)
    lw	$a3,0($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a2)
    lwc1	$f3,20($a5)
    swc1	$f3,16($a2)
    lwc1	$f2,24($a5)
    swc1	$f2,20($a2)
    lwc1	$f1,28($a5)
    swc1	$f1,24($a2)
    lw	$v1,16($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,28($a2)
    lwc1	$f3,36($a5)
    swc1	$f3,32($a2)
    lwc1	$f2,40($a5)
    swc1	$f2,36($a2)
    lwc1	$f1,44($a5)
    swc1	$f1,40($a2)
    lw	$v0,32($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,44($a2)
    lwc1	$f3,52($a5)
    swc1	$f3,48($a2)
    lwc1	$f2,56($a5)
    swc1	$f2,52($a2)
    lwc1	$f1,60($a5)
    swc1	$f1,56($a2)
    lw	$at,48($a5)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a5,$a5,64
    addiu	$a2,$a2,64
    addiu	$a1,$a1,16
    addiu	$t1,$t1,-4
    bne	$t1,$a0,.L0dade5e0
    swc1	$f0,-4($a2)
    move	$t1,$a1
.L0dade6a8:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dade76c
    ld	$s6,1608($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dade6f0
    addu	$t2,$t2,$s7
.L0dade6cc:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a1,$a1,-1
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dade6cc
    swc1	$f4,-4($t2)
.L0dade6f0:
    move	$v1,$t3
    sd	$t3,2024($sp)
    move	$v0,$t1
    sd	$t1,2032($sp)
    sra	$at,$a2,0x2
    beqz	$at,.L0dade76c
    move	$t9,$t2
    ld	$a2,2024($sp)
    ld	$a1,2032($sp)
    move	$a5,$t9
.L0dade718:
    addiu	$a5,$a5,64
    addiu	$a1,$a1,16
    addiu	$a2,$a2,-4
    swc1	$f4,-64($a5)
    swc1	$f4,-60($a5)
    swc1	$f4,-56($a5)
    swc1	$f4,-52($a5)
    swc1	$f4,-48($a5)
    swc1	$f4,-44($a5)
    swc1	$f4,-40($a5)
    swc1	$f4,-36($a5)
    swc1	$f4,-32($a5)
    swc1	$f4,-28($a5)
    swc1	$f4,-24($a5)
    swc1	$f4,-20($a5)
    swc1	$f4,-16($a5)
    swc1	$f4,-12($a5)
    swc1	$f4,-8($a5)
    bne	$a2,$a0,.L0dade718
    swc1	$f4,-4($a5)
    move	$t1,$a1
.L0dade76c:
    # Line 500
    ld	$v0,1992($sp)
    ld	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s4,$s4,$at
    addiu	$s4,$s4,-2
    slti	$a3,$s4,5
    bnezl	$a3,.L0dade794
    sw	$s4,5552($s3)
    li	$s4,4
    sw	$s4,5552($s3)
.L0dade794:
    li	$t3,4
    subu	$t3,$t3,$s4
    ld	$at,1960($sp)
    li	$a3,1
    sllv	$a3,$a3,$s4
    addiu	$s4,$s4,-1
    li	$v1,16
    addu	$a6,$at,$a6
    addiu	$a6,$a6,64
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0x10
    sll	$v1,$v1,0xc
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    and	$s0,$a3,$s0
    beq	$s4,$a0,.L0dade92c
    and	$s2,$v1,$s2
    sll	$t2,$t1,0x2
    addiu	$a2,$s4,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dade82c
    addu	$t2,$t2,$s7
.L0dade7ec:
    lwc1	$f3,4($a6)
    swc1	$f3,0($t2)
    lwc1	$f2,8($a6)
    swc1	$f2,4($t2)
    lwc1	$f1,12($a6)
    swc1	$f1,8($t2)
    lw	$at,0($a6)
    mtc1	$at,$f0
    addiu	$s4,$s4,-1
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,16
    addiu	$t2,$t2,16
    addiu	$t1,$t1,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0dade7ec
    swc1	$f0,-4($t2)
.L0dade82c:
    move	$a3,$t1
    sd	$t1,2048($sp)
    move	$v1,$t2
    sd	$t2,2056($sp)
    move	$t9,$a6
    sd	$s4,2040($sp)
    sra	$v0,$a2,0x2
    beqz	$v0,.L0dade92c
    ld	$s4,1496($sp)
    ld	$a6,2040($sp)
    ld	$a1,2048($sp)
    ld	$a2,2056($sp)
    move	$a5,$t9
    ld	$s4,1496($sp)
.L0dade864:
    lwc1	$f3,4($a5)
    swc1	$f3,0($a2)
    lwc1	$f2,8($a5)
    swc1	$f2,4($a2)
    lwc1	$f1,12($a5)
    swc1	$f1,8($a2)
    lw	$a3,0($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a2)
    lwc1	$f3,20($a5)
    swc1	$f3,16($a2)
    lwc1	$f2,24($a5)
    swc1	$f2,20($a2)
    lwc1	$f1,28($a5)
    swc1	$f1,24($a2)
    lw	$v1,16($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,28($a2)
    lwc1	$f3,36($a5)
    swc1	$f3,32($a2)
    lwc1	$f2,40($a5)
    swc1	$f2,36($a2)
    lwc1	$f1,44($a5)
    swc1	$f1,40($a2)
    lw	$v0,32($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,44($a2)
    lwc1	$f3,52($a5)
    swc1	$f3,48($a2)
    lwc1	$f2,56($a5)
    swc1	$f2,52($a2)
    lwc1	$f1,60($a5)
    swc1	$f1,56($a2)
    lw	$at,48($a5)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a5,$a5,64
    addiu	$a2,$a2,64
    addiu	$a1,$a1,16
    addiu	$a6,$a6,-4
    bne	$a6,$a0,.L0dade864
    swc1	$f0,-4($a2)
    move	$t1,$a1
.L0dade92c:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadc8b0
    ld	$s4,1496($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dade970
    addu	$t2,$t2,$s7
.L0dade950:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,16
    addi	$a1,$a1,-1
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dade950
    swc1	$f4,-4($t2)
.L0dade970:
    move	$a6,$t3
    sra	$at,$a2,0x2
    beqz	$at,.L0dade9d4
    move	$a5,$t2
    move	$a2,$a6
    move	$a1,$a5
.L0dade988:
    addiu	$a1,$a1,64
    addiu	$a2,$a2,-4
    swc1	$f4,-64($a1)
    swc1	$f4,-60($a1)
    swc1	$f4,-56($a1)
    swc1	$f4,-52($a1)
    swc1	$f4,-48($a1)
    swc1	$f4,-44($a1)
    swc1	$f4,-40($a1)
    swc1	$f4,-36($a1)
    swc1	$f4,-32($a1)
    swc1	$f4,-28($a1)
    swc1	$f4,-24($a1)
    swc1	$f4,-20($a1)
    swc1	$f4,-16($a1)
    swc1	$f4,-12($a1)
    swc1	$f4,-8($a1)
    bne	$a2,$a0,.L0dade988
    swc1	$f4,-4($a1)
.L0dade9d4:
    b	.L0dadc8b0
    nop
.L0dade9dc:
    # Line 503
    li	$v1,5
    sw	$v1,5544($s3)
    # Line 505
    lwc1	$f3,8($a5)
    swc1	$f3,256($sp)
    lwc1	$f2,12($a5)
    swc1	$f2,260($sp)
    # Line 506
    lwc1	$f1,16($a5)
    swc1	$f1,264($sp)
    lwc1	$f0,0($a5)
    swc1	$f0,268($sp)
    # Line 507
    lwc1	$f3,4($a5)
    swc1	$f3,272($sp)
    # Line 508
    lwc1	$f2,8($a6)
    swc1	$f2,276($sp)
    lwc1	$f1,12($a6)
    swc1	$f1,280($sp)
    # Line 509
    lwc1	$f0,16($a6)
    swc1	$f0,284($sp)
    lwc1	$f3,0($a6)
    swc1	$f3,288($sp)
    # Line 510
    lwc1	$f2,4($a6)
    swc1	$f2,292($sp)
    # Line 511
    lwc1	$f1,8($a1)
    swc1	$f1,296($sp)
    lwc1	$f0,12($a1)
    swc1	$f0,300($sp)
    # Line 512
    lwc1	$f3,16($a1)
    swc1	$f3,304($sp)
    lwc1	$f2,0($a1)
    swc1	$f2,308($sp)
    # Line 513
    lwc1	$f1,4($a1)
    swc1	$f1,312($sp)
    # Line 514
    lwc1	$f0,8($a2)
    swc1	$f0,316($sp)
    lwc1	$f3,12($a2)
    swc1	$f3,320($sp)
    # Line 515
    lwc1	$f2,16($a2)
    swc1	$f2,324($sp)
    lwc1	$f1,0($a2)
    swc1	$f1,328($sp)
    # Line 516
    slti	$v0,$s8,3
    lwc1	$f0,4($a2)
    # Line 503
    sw	$v1,1408($sp)
    # Line 516
    bnez	$v0,.L0dadeb00
    swc1	$f0,332($sp)
    sll	$a0,$s4,0x2
    addu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a6
    lw	$a3,28($a0)
    lw	$at,68($a5)
    bne	$a3,$at,.L0dadeb04
    # Line 518
    move	$t8,$zero
    lw	$a3,32($a0)
    lw	$at,72($a5)
    bne	$a3,$at,.L0dadeb04
    move	$t8,$zero
    lw	$v0,36($a0)
    lw	$v1,76($a5)
    bne	$v0,$v1,.L0dadeb04
    move	$t8,$zero
    lwc1	$f0,68($a5)
    swc1	$f0,336($sp)
    lwc1	$f3,72($a5)
    swc1	$f3,340($sp)
    lwc1	$f2,76($a5)
    swc1	$f2,344($sp)
    lwc1	$f1,60($a5)
    swc1	$f1,348($sp)
    lwc1	$f0,64($a5)
    li	$t8,1
    b	.L0dadeb2c
    swc1	$f0,352($sp)
.L0dadeb00:
    move	$t8,$zero
.L0dadeb04:
    lui	$s0,0x1fff
    ori	$s0,$s0,0xffcf
    mtc1	$zero,$f1
    lui	$s2,0xff
    ori	$s2,$s2,0xffef
    swc1	$f1,352($sp)
    swc1	$f1,348($sp)
    swc1	$f1,344($sp)
    swc1	$f1,340($sp)
    swc1	$f1,336($sp)
.L0dadeb2c:
    slti	$at,$s5,4
    bnez	$at,.L0dadeba8
    sll	$a0,$s8,0x2
    addu	$a0,$a0,$s8
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a5
    lw	$v0,28($a0)
    lw	$v1,88($a1)
    bne	$v0,$v1,.L0dadebac
    # Line 519
    li	$a3,-193
    lw	$a3,32($a0)
    lw	$at,92($a1)
    bne	$a3,$at,.L0dadebac
    li	$a3,-193
    lw	$v0,36($a0)
    lw	$v1,96($a1)
    bne	$v0,$v1,.L0dadebac
    li	$a3,-193
    lwc1	$f2,88($a1)
    swc1	$f2,356($sp)
    lwc1	$f1,92($a1)
    swc1	$f1,360($sp)
    lwc1	$f0,96($a1)
    swc1	$f0,364($sp)
    lwc1	$f3,80($a1)
    swc1	$f3,368($sp)
    li	$a0,1
    lwc1	$f2,84($a1)
    sb	$a0,1412($sp)
    b	.L0dadebd8
    swc1	$f2,372($sp)
.L0dadeba8:
    li	$a3,-193
.L0dadebac:
    and	$s0,$s0,$a3
    li	$a0,-33
    and	$s2,$s2,$a0
    mtc1	$zero,$f3
    move	$a0,$zero
    sb	$zero,1412($sp)
    swc1	$f3,372($sp)
    swc1	$f3,368($sp)
    swc1	$f3,364($sp)
    swc1	$f3,360($sp)
    swc1	$f3,356($sp)
.L0dadebd8:
    slti	$at,$s6,3
    bnez	$at,.L0dadec58
    sll	$t1,$s5,0x2
    addu	$t1,$t1,$s5
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a1
    lw	$v0,28($t1)
    lw	$v1,68($a2)
    bnel	$v0,$v1,.L0dadec5c
    sd	$zero,2208($sp)
    # Line 520
    lw	$at,32($t1)
    lw	$v0,72($a2)
    bnel	$at,$v0,.L0dadec5c
    sd	$zero,2208($sp)
    lw	$v1,36($t1)
    lw	$a3,76($a2)
    bnel	$v1,$a3,.L0dadec5c
    sd	$zero,2208($sp)
    lwc1	$f0,68($a2)
    swc1	$f0,376($sp)
    lwc1	$f3,72($a2)
    swc1	$f3,380($sp)
    lwc1	$f2,76($a2)
    swc1	$f2,384($sp)
    lwc1	$f1,60($a2)
    li	$at,1
    swc1	$f1,388($sp)
    sd	$at,2208($sp)
    lwc1	$f0,64($a2)
    sb	$at,1413($sp)
    b	.L0dadec88
    swc1	$f0,392($sp)
.L0dadec58:
    sd	$zero,2208($sp)
.L0dadec5c:
    sb	$zero,1413($sp)
    li	$v0,-65
    li	$v1,-769
    mtc1	$zero,$f1
    and	$s0,$s0,$v1
    and	$s2,$s2,$v0
    swc1	$f1,392($sp)
    swc1	$f1,388($sp)
    swc1	$f1,384($sp)
    swc1	$f1,380($sp)
    swc1	$f1,376($sp)
.L0dadec88:
    slti	$a3,$s4,4
    bnez	$a3,.L0daded08
    sll	$t1,$s6,0x2
    addu	$t1,$t1,$s6
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a2
    lw	$at,28($t1)
    lw	$v0,88($a6)
    bnel	$at,$v0,.L0daded0c
    sd	$zero,2200($sp)
    # Line 521
    lw	$at,32($t1)
    lw	$v0,92($a6)
    bnel	$at,$v0,.L0daded0c
    sd	$zero,2200($sp)
    lw	$v1,36($t1)
    lw	$a3,96($a6)
    bnel	$v1,$a3,.L0daded0c
    sd	$zero,2200($sp)
    lwc1	$f2,88($a6)
    swc1	$f2,396($sp)
    lwc1	$f1,92($a6)
    swc1	$f1,400($sp)
    lwc1	$f0,96($a6)
    swc1	$f0,404($sp)
    lwc1	$f3,80($a6)
    li	$at,1
    swc1	$f3,408($sp)
    sd	$at,2200($sp)
    lwc1	$f2,84($a6)
    sb	$at,1414($sp)
    b	.L0daded38
    swc1	$f2,412($sp)
.L0daded08:
    sd	$zero,2200($sp)
.L0daded0c:
    sb	$zero,1414($sp)
    li	$v0,-129
    li	$v1,-3073
    mtc1	$zero,$f3
    and	$s0,$s0,$v1
    and	$s2,$s2,$v0
    swc1	$f3,412($sp)
    swc1	$f3,408($sp)
    swc1	$f3,404($sp)
    swc1	$f3,400($sp)
    swc1	$f3,396($sp)
.L0daded38:
    li	$t1,40
    # Line 523
    sltu	$v0,$zero,$a0
    sltu	$at,$zero,$t8
    sd	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s8,$s8,$at
    addiu	$s8,$s8,-1
    slti	$a3,$s8,5
    bnez	$a3,.L0daded64
    sd	$v0,2104($sp)
    li	$s8,4
.L0daded64:
    li	$a0,-1
    sw	$s8,5548($s3)
    li	$t3,4
    subu	$t3,$t3,$s8
    li	$a3,1
    sllv	$a3,$a3,$s8
    addiu	$s8,$s8,-1
    li	$v1,16
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0xc
    sll	$v1,$v1,0x8
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    ld	$v0,2144($sp)
    and	$s0,$a3,$s0
    and	$s2,$v1,$s2
    sll	$at,$v0,0x2
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    sd	$at,1816($sp)
    addu	$a5,$at,$a5
    beq	$s8,$a0,.L0dae0bec
    addiu	$a5,$a5,60
    addiu	$s7,$sp,256
    addiu	$t9,$s8,1
    sd	$t9,1912($sp)
    andi	$t9,$t9,0x3
    beqz	$t9,.L0dadee18
    addiu	$t2,$s7,160
.L0dadedd8:
    lwc1	$f0,8($a5)
    swc1	$f0,0($t2)
    lwc1	$f3,12($a5)
    swc1	$f3,4($t2)
    lwc1	$f2,16($a5)
    swc1	$f2,8($t2)
    addiu	$s8,$s8,-1
    lwc1	$f1,0($a5)
    addiu	$a5,$a5,20
    addiu	$t2,$t2,20
    swc1	$f1,-8($t2)
    addiu	$t1,$t1,5
    lwc1	$f0,-16($a5)
    addi	$t9,$t9,-1
    bnez	$t9,.L0dadedd8
    swc1	$f0,-4($t2)
.L0dadee18:
    move	$a3,$t1
    sd	$t1,1736($sp)
    move	$v1,$t2
    sd	$t2,1744($sp)
    move	$v0,$a5
    ld	$at,1912($sp)
    sd	$a5,1752($sp)
    sd	$s8,1728($sp)
    sra	$at,$at,0x2
    beqz	$at,.L0dadef10
    ld	$s8,1512($sp)
    ld	$t9,1728($sp)
    ld	$a5,1736($sp)
    ld	$t1,1744($sp)
    ld	$t2,1752($sp)
    ld	$s8,1512($sp)
.L0dadee58:
    lwc1	$f0,8($t2)
    swc1	$f0,0($t1)
    lwc1	$f3,12($t2)
    swc1	$f3,4($t1)
    lwc1	$f2,16($t2)
    swc1	$f2,8($t1)
    lwc1	$f1,0($t2)
    swc1	$f1,12($t1)
    lwc1	$f0,4($t2)
    swc1	$f0,16($t1)
    lwc1	$f3,28($t2)
    swc1	$f3,20($t1)
    lwc1	$f2,32($t2)
    swc1	$f2,24($t1)
    lwc1	$f1,36($t2)
    swc1	$f1,28($t1)
    lwc1	$f0,20($t2)
    swc1	$f0,32($t1)
    lwc1	$f3,24($t2)
    swc1	$f3,36($t1)
    lwc1	$f2,48($t2)
    swc1	$f2,40($t1)
    lwc1	$f1,52($t2)
    swc1	$f1,44($t1)
    lwc1	$f0,56($t2)
    swc1	$f0,48($t1)
    lwc1	$f3,40($t2)
    swc1	$f3,52($t1)
    lwc1	$f2,44($t2)
    swc1	$f2,56($t1)
    lwc1	$f1,68($t2)
    swc1	$f1,60($t1)
    lwc1	$f0,72($t2)
    swc1	$f0,64($t1)
    lwc1	$f3,76($t2)
    swc1	$f3,68($t1)
    lwc1	$f2,60($t2)
    addiu	$t2,$t2,80
    addiu	$t1,$t1,80
    swc1	$f2,-8($t1)
    addiu	$a5,$a5,20
    lwc1	$f1,-16($t2)
    addiu	$t9,$t9,-4
    bne	$t9,$a0,.L0dadee58
    swc1	$f1,-4($t1)
    move	$t1,$a5
.L0dadef10:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadefe8
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$t9,$t3,1
    andi	$a5,$t9,0x3
    beqz	$a5,.L0dadef58
    addu	$t2,$t2,$s7
.L0dadef30:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,20
    addiu	$t1,$t1,5
    addi	$a5,$a5,-1
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a5,.L0dadef30
    swc1	$f4,-4($t2)
.L0dadef58:
    move	$a3,$t3
    sd	$t3,1760($sp)
    move	$v1,$t1
    sd	$t1,1768($sp)
    move	$v0,$t2
    sra	$at,$t9,0x2
    beqz	$at,.L0dadefe8
    sd	$t2,1776($sp)
    ld	$t1,1760($sp)
    ld	$a5,1768($sp)
    ld	$t2,1776($sp)
.L0dadef84:
    addiu	$t2,$t2,80
    addiu	$a5,$a5,20
    addiu	$t1,$t1,-4
    swc1	$f4,-80($t2)
    swc1	$f4,-76($t2)
    swc1	$f4,-72($t2)
    swc1	$f4,-68($t2)
    swc1	$f4,-64($t2)
    swc1	$f4,-60($t2)
    swc1	$f4,-56($t2)
    swc1	$f4,-52($t2)
    swc1	$f4,-48($t2)
    swc1	$f4,-44($t2)
    swc1	$f4,-40($t2)
    swc1	$f4,-36($t2)
    swc1	$f4,-32($t2)
    swc1	$f4,-28($t2)
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bne	$t1,$a0,.L0dadef84
    swc1	$f4,-4($t2)
    move	$t1,$a5
.L0dadefe8:
    ld	$t9,2208($sp)
    # Line 524
    ld	$at,2104($sp)
    sltu	$t9,$zero,$t9
    addu	$at,$at,$t9
    subu	$s5,$s5,$at
    addiu	$s5,$s5,-2
    slti	$at,$s5,5
    bnezl	$at,.L0dadf014
    sw	$s5,5556($s3)
    li	$s5,4
    sw	$s5,5556($s3)
.L0dadf014:
    li	$t3,4
    subu	$t3,$t3,$s5
    li	$v0,1
    sllv	$v0,$v0,$s5
    addiu	$s5,$s5,-1
    li	$at,16
    subu	$at,$at,$v0
    sll	$v0,$at,0x14
    sll	$at,$at,0x10
    nor	$at,$at,$zero
    nor	$v0,$v0,$zero
    ld	$v1,2104($sp)
    and	$s0,$v0,$s0
    and	$s2,$at,$s2
    sll	$a3,$v1,0x2
    addu	$a3,$a3,$v1
    sll	$a3,$a3,0x2
    addu	$a1,$a3,$a1
    beq	$s5,$a0,.L0dadf1b4
    addiu	$a1,$a1,80
    sll	$t2,$t1,0x2
    addiu	$a5,$s5,1
    sd	$a5,1920($sp)
    andi	$a5,$a5,0x3
    beqz	$a5,.L0dadf0bc
    addu	$t2,$t2,$s7
.L0dadf07c:
    lwc1	$f1,8($a1)
    swc1	$f1,0($t2)
    lwc1	$f0,12($a1)
    swc1	$f0,4($t2)
    lwc1	$f3,16($a1)
    swc1	$f3,8($t2)
    addiu	$s5,$s5,-1
    lwc1	$f2,0($a1)
    addiu	$a1,$a1,20
    addiu	$t2,$t2,20
    swc1	$f2,-8($t2)
    addiu	$t1,$t1,5
    lwc1	$f1,-16($a1)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dadf07c
    swc1	$f1,-4($t2)
.L0dadf0bc:
    move	$a3,$t1
    sd	$t1,1792($sp)
    move	$v1,$t2
    sd	$t2,1800($sp)
    move	$v0,$a1
    ld	$at,1920($sp)
    sd	$a1,1808($sp)
    sd	$s5,1784($sp)
    sra	$at,$at,0x2
    beqz	$at,.L0dadf1b4
    ld	$s5,1504($sp)
    ld	$t1,1784($sp)
    ld	$a1,1792($sp)
    ld	$t2,1800($sp)
    ld	$a5,1808($sp)
    ld	$s5,1504($sp)
.L0dadf0fc:
    lwc1	$f1,8($a5)
    swc1	$f1,0($t2)
    lwc1	$f0,12($a5)
    swc1	$f0,4($t2)
    lwc1	$f3,16($a5)
    swc1	$f3,8($t2)
    lwc1	$f2,0($a5)
    swc1	$f2,12($t2)
    lwc1	$f1,4($a5)
    swc1	$f1,16($t2)
    lwc1	$f0,28($a5)
    swc1	$f0,20($t2)
    lwc1	$f3,32($a5)
    swc1	$f3,24($t2)
    lwc1	$f2,36($a5)
    swc1	$f2,28($t2)
    lwc1	$f1,20($a5)
    swc1	$f1,32($t2)
    lwc1	$f0,24($a5)
    swc1	$f0,36($t2)
    lwc1	$f3,48($a5)
    swc1	$f3,40($t2)
    lwc1	$f2,52($a5)
    swc1	$f2,44($t2)
    lwc1	$f1,56($a5)
    swc1	$f1,48($t2)
    lwc1	$f0,40($a5)
    swc1	$f0,52($t2)
    lwc1	$f3,44($a5)
    swc1	$f3,56($t2)
    lwc1	$f2,68($a5)
    swc1	$f2,60($t2)
    lwc1	$f1,72($a5)
    swc1	$f1,64($t2)
    lwc1	$f0,76($a5)
    swc1	$f0,68($t2)
    lwc1	$f3,60($a5)
    addiu	$a5,$a5,80
    addiu	$t2,$t2,80
    swc1	$f3,-8($t2)
    addiu	$a1,$a1,20
    lwc1	$f2,-16($a5)
    addiu	$t1,$t1,-4
    bne	$t1,$a0,.L0dadf0fc
    swc1	$f2,-4($t2)
    move	$t1,$a1
.L0dadf1b4:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadf290
    ld	$s5,1504($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a5,$t3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dadf200
    addu	$t2,$t2,$s7
.L0dadf1d8:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,20
    addiu	$t1,$t1,5
    addi	$a1,$a1,-1
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dadf1d8
    swc1	$f4,-4($t2)
.L0dadf200:
    move	$a3,$t3
    sd	$t3,1824($sp)
    move	$v1,$t1
    sd	$t1,1832($sp)
    move	$v0,$t2
    sra	$at,$a5,0x2
    beqz	$at,.L0dadf290
    sd	$t2,1840($sp)
    ld	$a5,1824($sp)
    ld	$a1,1832($sp)
    ld	$t1,1840($sp)
.L0dadf22c:
    addiu	$t1,$t1,80
    addiu	$a1,$a1,20
    addiu	$a5,$a5,-4
    swc1	$f4,-80($t1)
    swc1	$f4,-76($t1)
    swc1	$f4,-72($t1)
    swc1	$f4,-68($t1)
    swc1	$f4,-64($t1)
    swc1	$f4,-60($t1)
    swc1	$f4,-56($t1)
    swc1	$f4,-52($t1)
    swc1	$f4,-48($t1)
    swc1	$f4,-44($t1)
    swc1	$f4,-40($t1)
    swc1	$f4,-36($t1)
    swc1	$f4,-32($t1)
    swc1	$f4,-28($t1)
    swc1	$f4,-24($t1)
    swc1	$f4,-20($t1)
    swc1	$f4,-16($t1)
    swc1	$f4,-12($t1)
    swc1	$f4,-8($t1)
    bne	$a5,$a0,.L0dadf22c
    swc1	$f4,-4($t1)
    move	$t1,$a1
.L0dadf290:
    ld	$at,2200($sp)
    # Line 525
    sltu	$at,$zero,$at
    sd	$at,1992($sp)
    addu	$at,$t9,$at
    subu	$s6,$s6,$at
    addiu	$s6,$s6,-1
    slti	$at,$s6,5
    bnezl	$at,.L0dadf2bc
    sw	$s6,5560($s3)
    li	$s6,4
    sw	$s6,5560($s3)
.L0dadf2bc:
    li	$t3,4
    subu	$t3,$t3,$s6
    li	$v1,1
    sllv	$v1,$v1,$s6
    addiu	$s6,$s6,-1
    li	$v0,16
    sll	$a3,$t9,0x2
    addu	$a3,$a3,$t9
    sll	$a3,$a3,0x2
    addu	$a2,$a3,$a2
    addiu	$a2,$a2,60
    subu	$v0,$v0,$v1
    sll	$v1,$v0,0x18
    sll	$v0,$v0,0x14
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$s0,$v1,$s0
    beq	$s6,$a0,.L0dadf44c
    and	$s2,$v0,$s2
    sll	$t2,$t1,0x2
    addiu	$a5,$s6,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dadf35c
    addu	$t2,$t2,$s7
.L0dadf31c:
    lwc1	$f2,8($a2)
    swc1	$f2,0($t2)
    lwc1	$f1,12($a2)
    swc1	$f1,4($t2)
    lwc1	$f0,16($a2)
    swc1	$f0,8($t2)
    addiu	$s6,$s6,-1
    lwc1	$f3,0($a2)
    addiu	$a2,$a2,20
    addiu	$t2,$t2,20
    swc1	$f3,-8($t2)
    addiu	$t1,$t1,5
    lwc1	$f2,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dadf31c
    swc1	$f2,-4($t2)
.L0dadf35c:
    move	$v1,$t1
    sd	$t1,1856($sp)
    move	$v0,$t2
    sd	$t2,1864($sp)
    move	$t9,$a2
    sd	$s6,1848($sp)
    sra	$at,$a5,0x2
    beqz	$at,.L0dadf44c
    ld	$s6,1608($sp)
    ld	$a5,1848($sp)
    ld	$a1,1856($sp)
    ld	$t1,1864($sp)
    move	$a2,$t9
    ld	$s6,1608($sp)
.L0dadf394:
    lwc1	$f2,8($a2)
    swc1	$f2,0($t1)
    lwc1	$f1,12($a2)
    swc1	$f1,4($t1)
    lwc1	$f0,16($a2)
    swc1	$f0,8($t1)
    lwc1	$f3,0($a2)
    swc1	$f3,12($t1)
    lwc1	$f2,4($a2)
    swc1	$f2,16($t1)
    lwc1	$f1,28($a2)
    swc1	$f1,20($t1)
    lwc1	$f0,32($a2)
    swc1	$f0,24($t1)
    lwc1	$f3,36($a2)
    swc1	$f3,28($t1)
    lwc1	$f2,20($a2)
    swc1	$f2,32($t1)
    lwc1	$f1,24($a2)
    swc1	$f1,36($t1)
    lwc1	$f0,48($a2)
    swc1	$f0,40($t1)
    lwc1	$f3,52($a2)
    swc1	$f3,44($t1)
    lwc1	$f2,56($a2)
    swc1	$f2,48($t1)
    lwc1	$f1,40($a2)
    swc1	$f1,52($t1)
    lwc1	$f0,44($a2)
    swc1	$f0,56($t1)
    lwc1	$f3,68($a2)
    swc1	$f3,60($t1)
    lwc1	$f2,72($a2)
    swc1	$f2,64($t1)
    lwc1	$f1,76($a2)
    swc1	$f1,68($t1)
    lwc1	$f0,60($a2)
    addiu	$a2,$a2,80
    addiu	$t1,$t1,80
    swc1	$f0,-8($t1)
    addiu	$a1,$a1,20
    lwc1	$f3,-16($a2)
    addiu	$a5,$a5,-4
    bne	$a5,$a0,.L0dadf394
    swc1	$f3,-4($t1)
    move	$t1,$a1
.L0dadf44c:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadf524
    ld	$s6,1608($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dadf498
    addu	$t2,$t2,$s7
.L0dadf470:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,20
    addiu	$t1,$t1,5
    addi	$a1,$a1,-1
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dadf470
    swc1	$f4,-4($t2)
.L0dadf498:
    move	$v1,$t3
    sd	$t3,1872($sp)
    move	$v0,$t1
    sd	$t1,1880($sp)
    sra	$at,$a2,0x2
    beqz	$at,.L0dadf524
    move	$t9,$t2
    ld	$a2,1872($sp)
    ld	$a1,1880($sp)
    move	$a5,$t9
.L0dadf4c0:
    addiu	$a5,$a5,80
    addiu	$a1,$a1,20
    addiu	$a2,$a2,-4
    swc1	$f4,-80($a5)
    swc1	$f4,-76($a5)
    swc1	$f4,-72($a5)
    swc1	$f4,-68($a5)
    swc1	$f4,-64($a5)
    swc1	$f4,-60($a5)
    swc1	$f4,-56($a5)
    swc1	$f4,-52($a5)
    swc1	$f4,-48($a5)
    swc1	$f4,-44($a5)
    swc1	$f4,-40($a5)
    swc1	$f4,-36($a5)
    swc1	$f4,-32($a5)
    swc1	$f4,-28($a5)
    swc1	$f4,-24($a5)
    swc1	$f4,-20($a5)
    swc1	$f4,-16($a5)
    swc1	$f4,-12($a5)
    swc1	$f4,-8($a5)
    bne	$a2,$a0,.L0dadf4c0
    swc1	$f4,-4($a5)
    move	$t1,$a1
.L0dadf524:
    ld	$v0,1992($sp)
    # Line 526
    ld	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s4,$s4,$at
    addiu	$s4,$s4,-2
    slti	$a3,$s4,5
    bnezl	$a3,.L0dadf54c
    sw	$s4,5552($s3)
    li	$s4,4
    sw	$s4,5552($s3)
.L0dadf54c:
    li	$t3,4
    subu	$t3,$t3,$s4
    ld	$at,1816($sp)
    li	$a3,1
    sllv	$a3,$a3,$s4
    addiu	$s4,$s4,-1
    li	$v1,16
    addu	$a6,$at,$a6
    addiu	$a6,$a6,80
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0x10
    sll	$v1,$v1,0xc
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    and	$s0,$a3,$s0
    beq	$s4,$a0,.L0dadf6d4
    and	$s2,$v1,$s2
    sll	$t2,$t1,0x2
    addiu	$a2,$s4,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dadf5e4
    addu	$t2,$t2,$s7
.L0dadf5a4:
    lwc1	$f3,8($a6)
    swc1	$f3,0($t2)
    lwc1	$f2,12($a6)
    swc1	$f2,4($t2)
    lwc1	$f1,16($a6)
    swc1	$f1,8($t2)
    addiu	$s4,$s4,-1
    lwc1	$f0,0($a6)
    addiu	$a6,$a6,20
    addiu	$t2,$t2,20
    swc1	$f0,-8($t2)
    addiu	$t1,$t1,5
    lwc1	$f3,-16($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dadf5a4
    swc1	$f3,-4($t2)
.L0dadf5e4:
    move	$v1,$t1
    sd	$t1,1896($sp)
    move	$t9,$t2
    move	$v0,$a6
    sd	$a6,1904($sp)
    sd	$s4,1888($sp)
    sra	$at,$a2,0x2
    beqz	$at,.L0dadf6d4
    ld	$s4,1496($sp)
    ld	$a5,1888($sp)
    ld	$a1,1896($sp)
    move	$a6,$t9
    ld	$a2,1904($sp)
    ld	$s4,1496($sp)
.L0dadf61c:
    lwc1	$f3,8($a2)
    swc1	$f3,0($a6)
    lwc1	$f2,12($a2)
    swc1	$f2,4($a6)
    lwc1	$f1,16($a2)
    swc1	$f1,8($a6)
    lwc1	$f0,0($a2)
    swc1	$f0,12($a6)
    lwc1	$f3,4($a2)
    swc1	$f3,16($a6)
    lwc1	$f2,28($a2)
    swc1	$f2,20($a6)
    lwc1	$f1,32($a2)
    swc1	$f1,24($a6)
    lwc1	$f0,36($a2)
    swc1	$f0,28($a6)
    lwc1	$f3,20($a2)
    swc1	$f3,32($a6)
    lwc1	$f2,24($a2)
    swc1	$f2,36($a6)
    lwc1	$f1,48($a2)
    swc1	$f1,40($a6)
    lwc1	$f0,52($a2)
    swc1	$f0,44($a6)
    lwc1	$f3,56($a2)
    swc1	$f3,48($a6)
    lwc1	$f2,40($a2)
    swc1	$f2,52($a6)
    lwc1	$f1,44($a2)
    swc1	$f1,56($a6)
    lwc1	$f0,68($a2)
    swc1	$f0,60($a6)
    lwc1	$f3,72($a2)
    swc1	$f3,64($a6)
    lwc1	$f2,76($a2)
    swc1	$f2,68($a6)
    lwc1	$f1,60($a2)
    addiu	$a2,$a2,80
    addiu	$a6,$a6,80
    swc1	$f1,-8($a6)
    addiu	$a1,$a1,20
    lwc1	$f0,-16($a2)
    addiu	$a5,$a5,-4
    bne	$a5,$a0,.L0dadf61c
    swc1	$f0,-4($a6)
    move	$t1,$a1
.L0dadf6d4:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadc8b0
    ld	$s4,1496($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dadf71c
    addu	$t2,$t2,$s7
.L0dadf6f8:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,20
    addi	$a1,$a1,-1
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dadf6f8
    swc1	$f4,-4($t2)
.L0dadf71c:
    move	$a6,$t3
    sra	$at,$a2,0x2
    beqz	$at,.L0dadf790
    move	$a5,$t2
    move	$a1,$a6
    move	$a2,$a5
.L0dadf734:
    addiu	$a2,$a2,80
    addiu	$a1,$a1,-4
    swc1	$f4,-80($a2)
    swc1	$f4,-76($a2)
    swc1	$f4,-72($a2)
    swc1	$f4,-68($a2)
    swc1	$f4,-64($a2)
    swc1	$f4,-60($a2)
    swc1	$f4,-56($a2)
    swc1	$f4,-52($a2)
    swc1	$f4,-48($a2)
    swc1	$f4,-44($a2)
    swc1	$f4,-40($a2)
    swc1	$f4,-36($a2)
    swc1	$f4,-32($a2)
    swc1	$f4,-28($a2)
    swc1	$f4,-24($a2)
    swc1	$f4,-20($a2)
    swc1	$f4,-16($a2)
    swc1	$f4,-12($a2)
    swc1	$f4,-8($a2)
    bne	$a1,$a0,.L0dadf734
    swc1	$f4,-4($a2)
.L0dadf790:
    b	.L0dadc8b0
    nop
.L0dadf798:
    # Line 529
    li	$v1,6
    sw	$v1,5544($s3)
    # Line 531
    lwc1	$f3,12($a5)
    swc1	$f3,256($sp)
    lwc1	$f2,16($a5)
    swc1	$f2,260($sp)
    # Line 532
    lwc1	$f1,20($a5)
    swc1	$f1,264($sp)
    lw	$a3,8($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,268($sp)
    # Line 533
    lwc1	$f3,0($a5)
    swc1	$f3,272($sp)
    lwc1	$f2,4($a5)
    swc1	$f2,276($sp)
    # Line 535
    lwc1	$f1,12($a6)
    swc1	$f1,280($sp)
    lwc1	$f0,16($a6)
    swc1	$f0,284($sp)
    # Line 536
    lwc1	$f3,20($a6)
    swc1	$f3,288($sp)
    lw	$v0,8($a6)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,292($sp)
    # Line 537
    lwc1	$f1,0($a6)
    swc1	$f1,296($sp)
    lwc1	$f0,4($a6)
    swc1	$f0,300($sp)
    # Line 539
    lwc1	$f3,12($a1)
    swc1	$f3,304($sp)
    lwc1	$f2,16($a1)
    swc1	$f2,308($sp)
    # Line 540
    lwc1	$f1,20($a1)
    swc1	$f1,312($sp)
    lw	$at,8($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,316($sp)
    # Line 541
    lwc1	$f3,0($a1)
    swc1	$f3,320($sp)
    lwc1	$f2,4($a1)
    swc1	$f2,324($sp)
    # Line 543
    lwc1	$f1,12($a2)
    swc1	$f1,328($sp)
    lwc1	$f0,16($a2)
    swc1	$f0,332($sp)
    # Line 544
    lwc1	$f3,20($a2)
    swc1	$f3,336($sp)
    lw	$a3,8($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,340($sp)
    # Line 545
    lwc1	$f1,0($a2)
    swc1	$f1,344($sp)
    slti	$v0,$s8,3
    lwc1	$f0,4($a2)
    # Line 529
    sw	$v1,1408($sp)
    # Line 545
    bnez	$v0,.L0dadf924
    swc1	$f0,348($sp)
    sll	$a0,$s4,0x2
    subu	$a0,$a0,$s4
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a6
    lw	$at,36($a0)
    lw	$v0,84($a5)
    bne	$at,$v0,.L0dadf928
    # Line 548
    move	$t8,$zero
    lw	$a3,40($a0)
    lw	$at,88($a5)
    bne	$a3,$at,.L0dadf928
    move	$t8,$zero
    lw	$v0,44($a0)
    lw	$v1,92($a5)
    bne	$v0,$v1,.L0dadf928
    move	$t8,$zero
    lwc1	$f1,84($a5)
    swc1	$f1,352($sp)
    lwc1	$f0,88($a5)
    swc1	$f0,356($sp)
    lwc1	$f3,92($a5)
    swc1	$f3,360($sp)
    lw	$a3,80($a5)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,364($sp)
    lwc1	$f1,72($a5)
    swc1	$f1,368($sp)
    lwc1	$f0,76($a5)
    li	$t8,1
    b	.L0dadf954
    swc1	$f0,372($sp)
.L0dadf924:
    move	$t8,$zero
.L0dadf928:
    lui	$s0,0x1fff
    ori	$s0,$s0,0xffcf
    mtc1	$zero,$f2
    lui	$s2,0xff
    ori	$s2,$s2,0xffef
    swc1	$f2,372($sp)
    swc1	$f2,368($sp)
    swc1	$f2,364($sp)
    swc1	$f2,360($sp)
    swc1	$f2,356($sp)
    swc1	$f2,352($sp)
.L0dadf954:
    slti	$at,$s5,4
    bnez	$at,.L0dadf9e8
    sll	$a0,$s8,0x2
    subu	$a0,$a0,$s8
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a5
    lw	$v0,36($a0)
    lw	$v1,108($a1)
    bne	$v0,$v1,.L0dadf9ec
    # Line 549
    li	$at,-193
    lw	$a3,40($a0)
    lw	$at,112($a1)
    bne	$a3,$at,.L0dadf9ec
    li	$at,-193
    lw	$v0,44($a0)
    lw	$v1,116($a1)
    bne	$v0,$v1,.L0dadf9ec
    li	$at,-193
    lwc1	$f0,108($a1)
    swc1	$f0,376($sp)
    lwc1	$f3,112($a1)
    swc1	$f3,380($sp)
    lwc1	$f2,116($a1)
    swc1	$f2,384($sp)
    lw	$a0,104($a1)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,388($sp)
    lwc1	$f0,96($a1)
    swc1	$f0,392($sp)
    li	$a0,1
    lwc1	$f3,100($a1)
    sb	$a0,1412($sp)
    b	.L0dadfa1c
    swc1	$f3,396($sp)
.L0dadf9e8:
    li	$at,-193
.L0dadf9ec:
    and	$s0,$s0,$at
    li	$a3,-33
    and	$s2,$s2,$a3
    mtc1	$zero,$f1
    move	$a0,$zero
    sb	$zero,1412($sp)
    swc1	$f1,396($sp)
    swc1	$f1,392($sp)
    swc1	$f1,388($sp)
    swc1	$f1,384($sp)
    swc1	$f1,380($sp)
    swc1	$f1,376($sp)
.L0dadfa1c:
    slti	$v0,$s6,3
    bnez	$v0,.L0dadfab4
    sll	$t1,$s5,0x2
    subu	$t1,$t1,$s5
    sll	$t1,$t1,0x1
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a1
    lw	$v1,36($t1)
    lw	$a3,84($a2)
    bnel	$v1,$a3,.L0dadfab8
    sd	$zero,2208($sp)
    # Line 550
    lw	$at,40($t1)
    lw	$v0,88($a2)
    bnel	$at,$v0,.L0dadfab8
    sd	$zero,2208($sp)
    lw	$v1,44($t1)
    lw	$a3,92($a2)
    bnel	$v1,$a3,.L0dadfab8
    sd	$zero,2208($sp)
    lwc1	$f3,84($a2)
    swc1	$f3,400($sp)
    lwc1	$f2,88($a2)
    swc1	$f2,404($sp)
    lwc1	$f1,92($a2)
    swc1	$f1,408($sp)
    lw	$v0,80($a2)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,412($sp)
    lwc1	$f3,72($a2)
    li	$at,1
    swc1	$f3,416($sp)
    sd	$at,2208($sp)
    lwc1	$f2,76($a2)
    sb	$at,1413($sp)
    b	.L0dadfae8
    swc1	$f2,420($sp)
.L0dadfab4:
    sd	$zero,2208($sp)
.L0dadfab8:
    sb	$zero,1413($sp)
    li	$v1,-65
    li	$a3,-769
    mtc1	$zero,$f0
    and	$s0,$s0,$a3
    and	$s2,$s2,$v1
    swc1	$f0,420($sp)
    swc1	$f0,416($sp)
    swc1	$f0,412($sp)
    swc1	$f0,408($sp)
    swc1	$f0,404($sp)
    swc1	$f0,400($sp)
.L0dadfae8:
    slti	$at,$s4,4
    bnez	$at,.L0dadfb80
    sll	$t1,$s6,0x2
    subu	$t1,$t1,$s6
    sll	$t1,$t1,0x1
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$a2
    lw	$v0,36($t1)
    lw	$v1,108($a6)
    bnel	$v0,$v1,.L0dadfb84
    sd	$zero,2200($sp)
    # Line 551
    lw	$at,40($t1)
    lw	$v0,112($a6)
    bnel	$at,$v0,.L0dadfb84
    sd	$zero,2200($sp)
    lw	$v1,44($t1)
    lw	$a3,116($a6)
    bnel	$v1,$a3,.L0dadfb84
    sd	$zero,2200($sp)
    lwc1	$f2,108($a6)
    swc1	$f2,424($sp)
    lwc1	$f1,112($a6)
    swc1	$f1,428($sp)
    lwc1	$f0,116($a6)
    swc1	$f0,432($sp)
    lw	$v0,104($a6)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,436($sp)
    lwc1	$f2,96($a6)
    li	$at,1
    swc1	$f2,440($sp)
    sd	$at,2200($sp)
    lwc1	$f1,100($a6)
    sb	$at,1414($sp)
    b	.L0dadfbb4
    swc1	$f1,444($sp)
.L0dadfb80:
    sd	$zero,2200($sp)
.L0dadfb84:
    sb	$zero,1414($sp)
    li	$v1,-129
    li	$a3,-3073
    mtc1	$zero,$f3
    and	$s0,$s0,$a3
    and	$s2,$s2,$v1
    swc1	$f3,444($sp)
    swc1	$f3,440($sp)
    swc1	$f3,436($sp)
    swc1	$f3,432($sp)
    swc1	$f3,428($sp)
    swc1	$f3,424($sp)
.L0dadfbb4:
    li	$t1,48
    # Line 553
    sltu	$v0,$zero,$a0
    sltu	$at,$zero,$t8
    sd	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s8,$s8,$at
    addiu	$s8,$s8,-1
    slti	$at,$s8,5
    bnez	$at,.L0dadfbe0
    sd	$v0,2104($sp)
    li	$s8,4
.L0dadfbe0:
    li	$a0,-1
    sw	$s8,5548($s3)
    li	$t3,4
    subu	$t3,$t3,$s8
    li	$a3,1
    sllv	$a3,$a3,$s8
    addiu	$s8,$s8,-1
    li	$v1,16
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0xc
    sll	$v1,$v1,0x8
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    ld	$v0,2144($sp)
    and	$s0,$a3,$s0
    and	$s2,$v1,$s2
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    sd	$at,1616($sp)
    addu	$a5,$at,$a5
    beq	$s8,$a0,.L0dae0c78
    addiu	$a5,$a5,72
    addiu	$s7,$sp,256
    addiu	$t9,$s8,1
    sd	$t9,1712($sp)
    andi	$t9,$t9,0x3
    beqz	$t9,.L0dadfcac
    addiu	$t2,$s7,192
.L0dadfc58:
    lwc1	$f1,12($a5)
    swc1	$f1,0($t2)
    lwc1	$f0,16($a5)
    swc1	$f0,4($t2)
    lwc1	$f3,20($a5)
    swc1	$f3,8($t2)
    lw	$at,8($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,12($t2)
    addiu	$s8,$s8,-1
    lwc1	$f1,0($a5)
    addiu	$a5,$a5,24
    addiu	$t2,$t2,24
    swc1	$f1,-8($t2)
    addiu	$t1,$t1,6
    lwc1	$f0,-20($a5)
    addi	$t9,$t9,-1
    bnez	$t9,.L0dadfc58
    swc1	$f0,-4($t2)
.L0dadfcac:
    sd	$t1,1528($sp)
    move	$a3,$t2
    sd	$t2,1536($sp)
    move	$v1,$a5
    sd	$a5,1544($sp)
    ld	$v0,1712($sp)
    sd	$s8,1520($sp)
    move	$s8,$t1
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dadfdf4
    ld	$s8,1512($sp)
    ld	$t9,1520($sp)
    ld	$a5,1528($sp)
    ld	$t1,1536($sp)
    ld	$t2,1544($sp)
    ld	$s8,1512($sp)
.L0dadfcec:
    lwc1	$f1,12($t2)
    swc1	$f1,0($t1)
    lwc1	$f0,16($t2)
    swc1	$f0,4($t1)
    lwc1	$f3,20($t2)
    swc1	$f3,8($t1)
    lw	$a3,8($t2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,12($t1)
    lwc1	$f1,0($t2)
    swc1	$f1,16($t1)
    lwc1	$f0,4($t2)
    swc1	$f0,20($t1)
    lwc1	$f3,36($t2)
    swc1	$f3,24($t1)
    lwc1	$f2,40($t2)
    swc1	$f2,28($t1)
    lwc1	$f1,44($t2)
    swc1	$f1,32($t1)
    lw	$v1,32($t2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,36($t1)
    lwc1	$f3,24($t2)
    swc1	$f3,40($t1)
    lwc1	$f2,28($t2)
    swc1	$f2,44($t1)
    lwc1	$f1,60($t2)
    swc1	$f1,48($t1)
    lwc1	$f0,64($t2)
    swc1	$f0,52($t1)
    lwc1	$f3,68($t2)
    swc1	$f3,56($t1)
    lw	$v0,56($t2)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,60($t1)
    lwc1	$f1,48($t2)
    swc1	$f1,64($t1)
    lwc1	$f0,52($t2)
    swc1	$f0,68($t1)
    lwc1	$f3,84($t2)
    swc1	$f3,72($t1)
    lwc1	$f2,88($t2)
    swc1	$f2,76($t1)
    lwc1	$f1,92($t2)
    swc1	$f1,80($t1)
    lw	$at,80($t2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,84($t1)
    lwc1	$f3,72($t2)
    addiu	$t2,$t2,96
    addiu	$t1,$t1,96
    swc1	$f3,-8($t1)
    addiu	$a5,$a5,24
    lwc1	$f2,-20($t2)
    addiu	$t9,$t9,-4
    bne	$t9,$a0,.L0dadfcec
    swc1	$f2,-4($t1)
    move	$t1,$a5
.L0dadfdf4:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadfee0
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$t9,$t3,1
    andi	$a5,$t9,0x3
    beqz	$a5,.L0dadfe40
    addu	$t2,$t2,$s7
.L0dadfe14:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,24
    addiu	$t1,$t1,6
    addi	$a5,$a5,-1
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a5,.L0dadfe14
    swc1	$f4,-4($t2)
.L0dadfe40:
    move	$a3,$t3
    sd	$t3,1552($sp)
    move	$v1,$t1
    sd	$t1,1560($sp)
    move	$v0,$t2
    sra	$at,$t9,0x2
    beqz	$at,.L0dadfee0
    sd	$t2,1568($sp)
    ld	$t2,1552($sp)
    ld	$a5,1560($sp)
    ld	$t1,1568($sp)
.L0dadfe6c:
    addiu	$t1,$t1,96
    addiu	$a5,$a5,24
    addiu	$t2,$t2,-4
    swc1	$f4,-96($t1)
    swc1	$f4,-92($t1)
    swc1	$f4,-88($t1)
    swc1	$f4,-84($t1)
    swc1	$f4,-80($t1)
    swc1	$f4,-76($t1)
    swc1	$f4,-72($t1)
    swc1	$f4,-68($t1)
    swc1	$f4,-64($t1)
    swc1	$f4,-60($t1)
    swc1	$f4,-56($t1)
    swc1	$f4,-52($t1)
    swc1	$f4,-48($t1)
    swc1	$f4,-44($t1)
    swc1	$f4,-40($t1)
    swc1	$f4,-36($t1)
    swc1	$f4,-32($t1)
    swc1	$f4,-28($t1)
    swc1	$f4,-24($t1)
    swc1	$f4,-20($t1)
    swc1	$f4,-16($t1)
    swc1	$f4,-12($t1)
    swc1	$f4,-8($t1)
    bne	$t2,$a0,.L0dadfe6c
    swc1	$f4,-4($t1)
    move	$t1,$a5
.L0dadfee0:
    ld	$t9,2208($sp)
    # Line 554
    ld	$at,2104($sp)
    sltu	$t9,$zero,$t9
    addu	$at,$at,$t9
    subu	$s5,$s5,$at
    addiu	$s5,$s5,-2
    slti	$at,$s5,5
    bnezl	$at,.L0dadff0c
    sw	$s5,5556($s3)
    li	$s5,4
    sw	$s5,5556($s3)
.L0dadff0c:
    li	$t3,4
    subu	$t3,$t3,$s5
    li	$v1,1
    sllv	$v1,$v1,$s5
    addiu	$s5,$s5,-1
    li	$v0,16
    subu	$v0,$v0,$v1
    sll	$v1,$v0,0x14
    sll	$v0,$v0,0x10
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    ld	$at,2104($sp)
    and	$s0,$v1,$s0
    and	$s2,$v0,$s2
    sll	$a3,$at,0x2
    subu	$a3,$a3,$at
    sll	$a3,$a3,0x1
    sll	$a3,$a3,0x2
    addu	$a1,$a3,$a1
    beq	$s5,$a0,.L0dae0114
    addiu	$a1,$a1,96
    sll	$t2,$t1,0x2
    addiu	$a5,$s5,1
    sd	$a5,1720($sp)
    andi	$a5,$a5,0x3
    beqz	$a5,.L0dadffcc
    addu	$t2,$t2,$s7
.L0dadff78:
    lwc1	$f3,12($a1)
    swc1	$f3,0($t2)
    lwc1	$f2,16($a1)
    swc1	$f2,4($t2)
    lwc1	$f1,20($a1)
    swc1	$f1,8($t2)
    lw	$at,8($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($t2)
    addiu	$s5,$s5,-1
    lwc1	$f3,0($a1)
    addiu	$a1,$a1,24
    addiu	$t2,$t2,24
    swc1	$f3,-8($t2)
    addiu	$t1,$t1,6
    lwc1	$f2,-20($a1)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dadff78
    swc1	$f2,-4($t2)
.L0dadffcc:
    sd	$t1,1584($sp)
    move	$a3,$t2
    sd	$t2,1592($sp)
    move	$v1,$a1
    sd	$a1,1600($sp)
    ld	$v0,1720($sp)
    sd	$s5,1576($sp)
    move	$s5,$t1
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dae0114
    ld	$s5,1504($sp)
    ld	$t2,1576($sp)
    ld	$a1,1584($sp)
    ld	$a5,1592($sp)
    ld	$t1,1600($sp)
    ld	$s5,1504($sp)
.L0dae000c:
    lwc1	$f3,12($t1)
    swc1	$f3,0($a5)
    lwc1	$f2,16($t1)
    swc1	$f2,4($a5)
    lwc1	$f1,20($t1)
    swc1	$f1,8($a5)
    lw	$a3,8($t1)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a5)
    lwc1	$f3,0($t1)
    swc1	$f3,16($a5)
    lwc1	$f2,4($t1)
    swc1	$f2,20($a5)
    lwc1	$f1,36($t1)
    swc1	$f1,24($a5)
    lwc1	$f0,40($t1)
    swc1	$f0,28($a5)
    lwc1	$f3,44($t1)
    swc1	$f3,32($a5)
    lw	$v1,32($t1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,36($a5)
    lwc1	$f1,24($t1)
    swc1	$f1,40($a5)
    lwc1	$f0,28($t1)
    swc1	$f0,44($a5)
    lwc1	$f3,60($t1)
    swc1	$f3,48($a5)
    lwc1	$f2,64($t1)
    swc1	$f2,52($a5)
    lwc1	$f1,68($t1)
    swc1	$f1,56($a5)
    lw	$v0,56($t1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,60($a5)
    lwc1	$f3,48($t1)
    swc1	$f3,64($a5)
    lwc1	$f2,52($t1)
    swc1	$f2,68($a5)
    lwc1	$f1,84($t1)
    swc1	$f1,72($a5)
    lwc1	$f0,88($t1)
    swc1	$f0,76($a5)
    lwc1	$f3,92($t1)
    swc1	$f3,80($a5)
    lw	$at,80($t1)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,84($a5)
    lwc1	$f1,72($t1)
    addiu	$t1,$t1,96
    addiu	$a5,$a5,96
    swc1	$f1,-8($a5)
    addiu	$a1,$a1,24
    lwc1	$f0,-20($t1)
    addiu	$t2,$t2,-4
    bne	$t2,$a0,.L0dae000c
    swc1	$f0,-4($a5)
    move	$t1,$a1
.L0dae0114:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dae0204
    ld	$s5,1504($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a5,$t3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dae0164
    addu	$t2,$t2,$s7
.L0dae0138:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,24
    addiu	$t1,$t1,6
    addi	$a1,$a1,-1
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dae0138
    swc1	$f4,-4($t2)
.L0dae0164:
    move	$a3,$t3
    sd	$t3,1624($sp)
    move	$v1,$t1
    sd	$t1,1632($sp)
    move	$v0,$t2
    sra	$at,$a5,0x2
    beqz	$at,.L0dae0204
    sd	$t2,1640($sp)
    ld	$t1,1624($sp)
    ld	$a1,1632($sp)
    ld	$a5,1640($sp)
.L0dae0190:
    addiu	$a5,$a5,96
    addiu	$a1,$a1,24
    addiu	$t1,$t1,-4
    swc1	$f4,-96($a5)
    swc1	$f4,-92($a5)
    swc1	$f4,-88($a5)
    swc1	$f4,-84($a5)
    swc1	$f4,-80($a5)
    swc1	$f4,-76($a5)
    swc1	$f4,-72($a5)
    swc1	$f4,-68($a5)
    swc1	$f4,-64($a5)
    swc1	$f4,-60($a5)
    swc1	$f4,-56($a5)
    swc1	$f4,-52($a5)
    swc1	$f4,-48($a5)
    swc1	$f4,-44($a5)
    swc1	$f4,-40($a5)
    swc1	$f4,-36($a5)
    swc1	$f4,-32($a5)
    swc1	$f4,-28($a5)
    swc1	$f4,-24($a5)
    swc1	$f4,-20($a5)
    swc1	$f4,-16($a5)
    swc1	$f4,-12($a5)
    swc1	$f4,-8($a5)
    bne	$t1,$a0,.L0dae0190
    swc1	$f4,-4($a5)
    move	$t1,$a1
.L0dae0204:
    ld	$at,2200($sp)
    # Line 555
    sltu	$at,$zero,$at
    sd	$at,1992($sp)
    addu	$at,$t9,$at
    subu	$s6,$s6,$at
    addiu	$s6,$s6,-1
    slti	$at,$s6,5
    bnezl	$at,.L0dae0230
    sw	$s6,5560($s3)
    li	$s6,4
    sw	$s6,5560($s3)
.L0dae0230:
    li	$t3,4
    subu	$t3,$t3,$s6
    li	$v0,1
    sllv	$v0,$v0,$s6
    addiu	$s6,$s6,-1
    li	$at,16
    sll	$a3,$t9,0x2
    subu	$a3,$a3,$t9
    sll	$a3,$a3,0x1
    subu	$at,$at,$v0
    sll	$v0,$at,0x18
    sll	$at,$at,0x14
    sll	$a3,$a3,0x2
    addu	$a2,$a3,$a2
    nor	$at,$at,$zero
    nor	$v0,$v0,$zero
    and	$s0,$v0,$s0
    and	$s2,$at,$s2
    beq	$s6,$a0,.L0dae0428
    addiu	$a2,$a2,72
    sll	$t2,$t1,0x2
    addiu	$a5,$s6,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dae02e8
    addu	$t2,$t2,$s7
.L0dae0294:
    lwc1	$f1,12($a2)
    swc1	$f1,0($t2)
    lwc1	$f0,16($a2)
    swc1	$f0,4($t2)
    lwc1	$f3,20($a2)
    swc1	$f3,8($t2)
    lw	$at,8($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,12($t2)
    addiu	$s6,$s6,-1
    lwc1	$f1,0($a2)
    addiu	$a2,$a2,24
    addiu	$t2,$t2,24
    swc1	$f1,-8($t2)
    addiu	$t1,$t1,6
    lwc1	$f0,-20($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dae0294
    swc1	$f0,-4($t2)
.L0dae02e8:
    move	$a3,$t1
    sd	$t1,1656($sp)
    move	$v1,$t2
    sd	$t2,1664($sp)
    move	$t9,$a2
    sd	$s6,1648($sp)
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dae0428
    ld	$s6,1608($sp)
    ld	$t1,1648($sp)
    ld	$a1,1656($sp)
    ld	$a2,1664($sp)
    move	$a5,$t9
    ld	$s6,1608($sp)
.L0dae0320:
    lwc1	$f1,12($a5)
    swc1	$f1,0($a2)
    lwc1	$f0,16($a5)
    swc1	$f0,4($a2)
    lwc1	$f3,20($a5)
    swc1	$f3,8($a2)
    lw	$a3,8($a5)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,12($a2)
    lwc1	$f1,0($a5)
    swc1	$f1,16($a2)
    lwc1	$f0,4($a5)
    swc1	$f0,20($a2)
    lwc1	$f3,36($a5)
    swc1	$f3,24($a2)
    lwc1	$f2,40($a5)
    swc1	$f2,28($a2)
    lwc1	$f1,44($a5)
    swc1	$f1,32($a2)
    lw	$v1,32($a5)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,36($a2)
    lwc1	$f3,24($a5)
    swc1	$f3,40($a2)
    lwc1	$f2,28($a5)
    swc1	$f2,44($a2)
    lwc1	$f1,60($a5)
    swc1	$f1,48($a2)
    lwc1	$f0,64($a5)
    swc1	$f0,52($a2)
    lwc1	$f3,68($a5)
    swc1	$f3,56($a2)
    lw	$v0,56($a5)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,60($a2)
    lwc1	$f1,48($a5)
    swc1	$f1,64($a2)
    lwc1	$f0,52($a5)
    swc1	$f0,68($a2)
    lwc1	$f3,84($a5)
    swc1	$f3,72($a2)
    lwc1	$f2,88($a5)
    swc1	$f2,76($a2)
    lwc1	$f1,92($a5)
    swc1	$f1,80($a2)
    lw	$at,80($a5)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,84($a2)
    lwc1	$f3,72($a5)
    addiu	$a5,$a5,96
    addiu	$a2,$a2,96
    swc1	$f3,-8($a2)
    addiu	$a1,$a1,24
    lwc1	$f2,-20($a5)
    addiu	$t1,$t1,-4
    bne	$t1,$a0,.L0dae0320
    swc1	$f2,-4($a2)
    move	$t1,$a1
.L0dae0428:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dae0514
    ld	$s6,1608($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dae0478
    addu	$t2,$t2,$s7
.L0dae044c:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,24
    addiu	$t1,$t1,6
    addi	$a1,$a1,-1
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dae044c
    swc1	$f4,-4($t2)
.L0dae0478:
    move	$v1,$t3
    sd	$t3,1672($sp)
    move	$v0,$t1
    sd	$t1,1680($sp)
    sra	$at,$a2,0x2
    beqz	$at,.L0dae0514
    move	$t9,$t2
    ld	$a5,1672($sp)
    ld	$a1,1680($sp)
    move	$a2,$t9
.L0dae04a0:
    addiu	$a2,$a2,96
    addiu	$a1,$a1,24
    addiu	$a5,$a5,-4
    swc1	$f4,-96($a2)
    swc1	$f4,-92($a2)
    swc1	$f4,-88($a2)
    swc1	$f4,-84($a2)
    swc1	$f4,-80($a2)
    swc1	$f4,-76($a2)
    swc1	$f4,-72($a2)
    swc1	$f4,-68($a2)
    swc1	$f4,-64($a2)
    swc1	$f4,-60($a2)
    swc1	$f4,-56($a2)
    swc1	$f4,-52($a2)
    swc1	$f4,-48($a2)
    swc1	$f4,-44($a2)
    swc1	$f4,-40($a2)
    swc1	$f4,-36($a2)
    swc1	$f4,-32($a2)
    swc1	$f4,-28($a2)
    swc1	$f4,-24($a2)
    swc1	$f4,-20($a2)
    swc1	$f4,-16($a2)
    swc1	$f4,-12($a2)
    swc1	$f4,-8($a2)
    bne	$a5,$a0,.L0dae04a0
    swc1	$f4,-4($a2)
    move	$t1,$a1
.L0dae0514:
    ld	$v0,1992($sp)
    # Line 556
    ld	$at,2144($sp)
    addu	$at,$at,$v0
    subu	$s4,$s4,$at
    addiu	$s4,$s4,-2
    slti	$a3,$s4,5
    bnezl	$a3,.L0dae053c
    sw	$s4,5552($s3)
    li	$s4,4
    sw	$s4,5552($s3)
.L0dae053c:
    li	$t3,4
    subu	$t3,$t3,$s4
    ld	$at,1616($sp)
    li	$a3,1
    sllv	$a3,$a3,$s4
    addiu	$s4,$s4,-1
    li	$v1,16
    addu	$a6,$at,$a6
    addiu	$a6,$a6,96
    subu	$v1,$v1,$a3
    sll	$a3,$v1,0x10
    sll	$v1,$v1,0xc
    nor	$v1,$v1,$zero
    nor	$a3,$a3,$zero
    and	$s0,$a3,$s0
    beq	$s4,$a0,.L0dae0728
    and	$s2,$v1,$s2
    sll	$t2,$t1,0x2
    addiu	$a2,$s4,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dae05e8
    addu	$t2,$t2,$s7
.L0dae0594:
    lwc1	$f3,12($a6)
    swc1	$f3,0($t2)
    lwc1	$f2,16($a6)
    swc1	$f2,4($t2)
    lwc1	$f1,20($a6)
    swc1	$f1,8($t2)
    lw	$at,8($a6)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($t2)
    addiu	$s4,$s4,-1
    lwc1	$f3,0($a6)
    addiu	$a6,$a6,24
    addiu	$t2,$t2,24
    swc1	$f3,-8($t2)
    addiu	$t1,$t1,6
    lwc1	$f2,-20($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dae0594
    swc1	$f2,-4($t2)
.L0dae05e8:
    move	$a3,$t1
    sd	$t1,1696($sp)
    move	$v1,$t2
    sd	$t2,1704($sp)
    move	$t9,$a6
    sd	$s4,1688($sp)
    sra	$v0,$a2,0x2
    beqz	$v0,.L0dae0728
    ld	$s4,1496($sp)
    ld	$a6,1688($sp)
    ld	$a1,1696($sp)
    ld	$a2,1704($sp)
    move	$a5,$t9
    ld	$s4,1496($sp)
.L0dae0620:
    lwc1	$f3,12($a5)
    swc1	$f3,0($a2)
    lwc1	$f2,16($a5)
    swc1	$f2,4($a2)
    lwc1	$f1,20($a5)
    swc1	$f1,8($a2)
    lw	$a3,8($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a2)
    lwc1	$f3,0($a5)
    swc1	$f3,16($a2)
    lwc1	$f2,4($a5)
    swc1	$f2,20($a2)
    lwc1	$f1,36($a5)
    swc1	$f1,24($a2)
    lwc1	$f0,40($a5)
    swc1	$f0,28($a2)
    lwc1	$f3,44($a5)
    swc1	$f3,32($a2)
    lw	$v1,32($a5)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,36($a2)
    lwc1	$f1,24($a5)
    swc1	$f1,40($a2)
    lwc1	$f0,28($a5)
    swc1	$f0,44($a2)
    lwc1	$f3,60($a5)
    swc1	$f3,48($a2)
    lwc1	$f2,64($a5)
    swc1	$f2,52($a2)
    lwc1	$f1,68($a5)
    swc1	$f1,56($a2)
    lw	$v0,56($a5)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,60($a2)
    lwc1	$f3,48($a5)
    swc1	$f3,64($a2)
    lwc1	$f2,52($a5)
    swc1	$f2,68($a2)
    lwc1	$f1,84($a5)
    swc1	$f1,72($a2)
    lwc1	$f0,88($a5)
    swc1	$f0,76($a2)
    lwc1	$f3,92($a5)
    swc1	$f3,80($a2)
    lw	$at,80($a5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,84($a2)
    lwc1	$f1,72($a5)
    addiu	$a5,$a5,96
    addiu	$a2,$a2,96
    swc1	$f1,-8($a2)
    addiu	$a1,$a1,24
    lwc1	$f0,-20($a5)
    addiu	$a6,$a6,-4
    bne	$a6,$a0,.L0dae0620
    swc1	$f0,-4($a2)
    move	$t1,$a1
.L0dae0728:
    addiu	$t3,$t3,-1
    beq	$t3,$a0,.L0dadc8b0
    ld	$s4,1496($sp)
    mtc1	$zero,$f4
    sll	$t2,$t1,0x2
    addiu	$a2,$t3,1
    andi	$a1,$a2,0x3
    beqz	$a1,.L0dae0774
    addu	$t2,$t2,$s7
.L0dae074c:
    addiu	$t3,$t3,-1
    addiu	$t2,$t2,24
    addi	$a1,$a1,-1
    swc1	$f4,-24($t2)
    swc1	$f4,-20($t2)
    swc1	$f4,-16($t2)
    swc1	$f4,-12($t2)
    swc1	$f4,-8($t2)
    bnez	$a1,.L0dae074c
    swc1	$f4,-4($t2)
.L0dae0774:
    move	$a6,$t3
    sra	$at,$a2,0x2
    beqz	$at,.L0dae07f8
    move	$a5,$t2
    move	$a2,$a6
    move	$a1,$a5
.L0dae078c:
    addiu	$a1,$a1,96
    addiu	$a2,$a2,-4
    swc1	$f4,-96($a1)
    swc1	$f4,-92($a1)
    swc1	$f4,-88($a1)
    swc1	$f4,-84($a1)
    swc1	$f4,-80($a1)
    swc1	$f4,-76($a1)
    swc1	$f4,-72($a1)
    swc1	$f4,-68($a1)
    swc1	$f4,-64($a1)
    swc1	$f4,-60($a1)
    swc1	$f4,-56($a1)
    swc1	$f4,-52($a1)
    swc1	$f4,-48($a1)
    swc1	$f4,-44($a1)
    swc1	$f4,-40($a1)
    swc1	$f4,-36($a1)
    swc1	$f4,-32($a1)
    swc1	$f4,-28($a1)
    swc1	$f4,-24($a1)
    swc1	$f4,-20($a1)
    swc1	$f4,-16($a1)
    swc1	$f4,-12($a1)
    swc1	$f4,-8($a1)
    bne	$a2,$a0,.L0dae078c
    swc1	$f4,-4($a1)
.L0dae07f8:
    b	.L0dadc8b0
    nop
.L0dae0800:
    # Line 364
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1480($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,2440($sp)
    # Line 365
    ld	$s0,2432($sp)
    ld	$s1,2416($sp)
    ld	$ra,1480($sp)
    ld	$s2,2448($sp)
    ld	$s3,2424($sp)
    jr	$ra
    addiu	$sp,$sp,2592
.L0dae0830:
    # Line 718
    addiu	$s8,$s1,-2
    addiu	$at,$sp,1416
    sll	$s0,$s1,0x2
    addu	$s0,$s0,$at
    addiu	$at,$s1,-3
    la	$s3,sub_0daf0000
    lw	$v0,-12($s0)
    sd	$at,1472($sp)
    addiu	$s3,$s3,-32748
    addiu	$v0,$v0,2
    sd	$v0,1464($sp)
    ld	$a0,1472($sp)
.L0dae0860:
    # Line 720
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 721
    lw	$s7,-8($s0)
    addiu	$s7,$s7,2
    # Line 723
    move	$a0,$s8
.L0dae0878:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 724
    lw	$s5,-4($s0)
    addiu	$s5,$s5,2
    # Line 726
    move	$a0,$s6
.L0dae0890:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 727
    lw	$s4,0($s0)
    addiu	$s4,$s4,2
    # Line 729
    move	$a0,$s1
.L0dae08a8:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 730
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$t9,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a3,0($s0)
    slt	$a3,$a3,$s4
    bnez	$a3,.L0dae08a8
    # Line 729
    move	$a0,$s1
    # Line 730
    lw	$at,-4($s0)
    slt	$at,$at,$s5
    bnez	$at,.L0dae0890
    # Line 726
    move	$a0,$s6
    # Line 730
    lw	$v0,-8($s0)
    slt	$v0,$v0,$s7
    bnez	$v0,.L0dae0878
    # Line 723
    move	$a0,$s8
    # Line 730
    ld	$a3,1464($sp)
    lw	$v1,-12($s0)
    slt	$v1,$v1,$a3
    bnez	$v1,.L0dae0860
    ld	$a0,1472($sp)
    ld	$gp,2440($sp)
.L0dae0910:
    # Line 739
    ld	$s0,2432($sp)
    ld	$s1,2416($sp)
    ld	$s2,2448($sp)
    ld	$s3,2424($sp)
    ld	$s4,1496($sp)
    ld	$s5,1504($sp)
    ld	$s6,1608($sp)
    ld	$ra,1480($sp)
    ld	$s7,1488($sp)
    ld	$s8,1512($sp)
    jr	$ra
    addiu	$sp,$sp,2592
.L0dae0940:
    # Line 692
    la	$s3,sub_0daf0000
    addiu	$s5,$sp,1416
    sll	$s0,$s1,0x2
    addu	$s0,$s0,$s5
    lw	$s5,-4($s0)
    addiu	$s6,$s1,-1
    addiu	$s3,$s3,-32748
    addiu	$s5,$s5,2
    # Line 694
    move	$a0,$s6
.L0dae0964:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 695
    lw	$s4,0($s0)
    addiu	$s4,$s4,2
    # Line 697
    move	$a0,$s1
.L0dae097c:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 698
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$t9,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a3,0($s0)
    slt	$a3,$a3,$s4
    bnez	$a3,.L0dae097c
    # Line 697
    move	$a0,$s1
    # Line 698
    lw	$at,-4($s0)
    slt	$at,$at,$s5
    bnez	$at,.L0dae0964
    # Line 694
    move	$a0,$s6
    b	.L0dae0910
    ld	$gp,2440($sp)
.L0dae09c4:
    # Line 703
    addiu	$s6,$s1,-1
    la	$s3,sub_0daf0000
    addiu	$s7,$sp,1416
    sll	$s0,$s1,0x2
    addu	$s0,$s0,$s7
    lw	$s7,-8($s0)
    addiu	$s8,$s1,-2
    addiu	$s3,$s3,-32748
    addiu	$s7,$s7,2
    # Line 705
    move	$a0,$s8
.L0dae09ec:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 706
    lw	$s5,-4($s0)
    addiu	$s5,$s5,2
    # Line 708
    move	$a0,$s6
.L0dae0a04:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 709
    lw	$s4,0($s0)
    addiu	$s4,$s4,2
    # Line 711
    move	$a0,$s1
.L0dae0a1c:
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 712
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$t9,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a3,0($s0)
    slt	$a3,$a3,$s4
    bnez	$a3,.L0dae0a1c
    # Line 711
    move	$a0,$s1
    # Line 712
    lw	$at,-4($s0)
    slt	$at,$at,$s5
    bnez	$at,.L0dae0a04
    # Line 708
    move	$a0,$s6
    # Line 712
    lw	$v0,-8($s0)
    slt	$v0,$v0,$s7
    bnez	$v0,.L0dae09ec
    # Line 705
    move	$a0,$s8
    b	.L0dae0910
    ld	$gp,2440($sp)
.L0dae0a74:
    b	.L0dadcc14
    # Line 591
    move	$a0,$zero
.L0dae0a7c:
    b	.L0dadcc28
    # Line 592
    move	$a0,$zero
.L0dae0a84:
    b	.L0dadcc44
    # Line 593
    move	$a0,$zero
.L0dae0a8c:
    b	.L0dadcc5c
    # Line 594
    move	$a0,$zero
.L0dae0a94:
    b	.L0dadcc8c
    # Line 597
    move	$a0,$zero
.L0dae0a9c:
    b	.L0dadcca4
    # Line 598
    move	$a1,$zero
.L0dae0aa4:
    b	.L0dadccc0
    # Line 599
    move	$a2,$zero
.L0dae0aac:
    b	.L0dadccd8
    # Line 600
    move	$a0,$zero
.L0dae0ab4:
    b	.L0dadccf4
    # Line 602
    move	$a0,$zero
.L0dae0abc:
    b	.L0dadcd10
    # Line 603
    move	$a0,$zero
.L0dae0ac4:
    b	.L0dadcd30
    # Line 604
    move	$a0,$zero
.L0dae0acc:
    b	.L0dadcd4c
    # Line 605
    move	$a0,$zero
.L0dae0ad4:
    b	.L0dadcd70
    # Line 607
    move	$a0,$zero
.L0dae0adc:
    b	.L0dadcd94
    # Line 608
    move	$a0,$zero
.L0dae0ae4:
    b	.L0dadcdbc
    # Line 609
    move	$a0,$zero
.L0dae0aec:
    b	.L0dadcddc
    # Line 610
    move	$a0,$zero
.L0dae0af4:
    b	.L0dadcdf4
    # Line 612
    move	$a0,$zero
.L0dae0afc:
    b	.L0dadce0c
    # Line 613
    move	$a0,$zero
.L0dae0b04:
    b	.L0dadce28
    # Line 614
    move	$a0,$zero
.L0dae0b0c:
    b	.L0dadce40
    # Line 615
    move	$a0,$zero
.L0dae0b14:
    b	.L0dadcea0
    # Line 624
    move	$a0,$zero
.L0dae0b1c:
    b	.L0dadceb8
    # Line 625
    move	$a0,$zero
.L0dae0b24:
    b	.L0dadcedc
    # Line 626
    move	$a0,$zero
.L0dae0b2c:
    b	.L0dadcef8
    # Line 627
    move	$a0,$zero
.L0dae0b34:
    b	.L0dadcf18
    # Line 629
    move	$a0,$zero
.L0dae0b3c:
    b	.L0dadcf30
    # Line 630
    move	$a0,$zero
.L0dae0b44:
    b	.L0dadcf54
    # Line 631
    move	$a0,$zero
.L0dae0b4c:
    b	.L0dadcf70
    # Line 632
    move	$a0,$zero
.L0dae0b54:
    b	.L0dadcfc0
    # Line 635
    move	$a0,$zero
.L0dae0b5c:
    b	.L0dadcfe0
    # Line 636
    move	$a0,$zero
.L0dae0b64:
    b	.L0dadd004
    # Line 637
    move	$a0,$zero
.L0dae0b6c:
    b	.L0dadd020
    # Line 638
    move	$a0,$zero
.L0dae0b74:
    b	.L0dadd040
    # Line 640
    move	$a0,$zero
.L0dae0b7c:
    b	.L0dadd060
    # Line 641
    move	$a0,$zero
.L0dae0b84:
    b	.L0dadd084
    # Line 642
    move	$a7,$zero
.L0dae0b8c:
    b	.L0dadd0a0
    # Line 643
    move	$a2,$zero
.L0dae0b94:
    b	.L0dadd0c4
    # Line 645
    move	$a0,$zero
.L0dae0b9c:
    b	.L0dadd0e8
    # Line 646
    move	$a0,$zero
.L0dae0ba4:
    b	.L0dadd110
    # Line 647
    move	$a0,$zero
.L0dae0bac:
    b	.L0dadd130
    # Line 648
    move	$a0,$zero
.L0dae0bb4:
    b	.L0dadd150
    # Line 650
    move	$a0,$zero
.L0dae0bbc:
    b	.L0dadd170
    # Line 651
    move	$a2,$zero
.L0dae0bc4:
    b	.L0dadd194
    # Line 652
    move	$a5,$zero
.L0dae0bcc:
    b	.L0dadd1b0
    # Line 653
    move	$a0,$zero
.L0dae0bd4:
    # Line 475
    addiu	$s7,$sp,256
    b	.L0dadd544
    ld	$s8,1512($sp)
.L0dae0be0:
    # Line 497
    addiu	$s7,$sp,256
    b	.L0dade17c
    ld	$s8,1512($sp)
.L0dae0bec:
    # Line 523
    addiu	$s7,$sp,256
    b	.L0dadef10
    ld	$s8,1512($sp)
.L0dae0bf8:
    # Line 683
    # lw $t9, -32708($gp) # &sub_0daf0000
    move	$a0,$s1
    lw	$a1,1416($sp)
    addiu	$t9,$t9,-32748
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0dae0910
    ld	$gp,2440($sp)
.L0dae0c18:
    # Line 686
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 687
    la	$s3,sub_0daf0000
    move	$a0,$s1
    addiu	$s3,$s3,-32748
    addiu	$t8,$sp,1416
    sll	$s0,$s1,0x2
    addu	$s0,$s0,$t8
    lw	$a1,0($s0)
    move	$t9,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    # Line 688
    move	$a0,$s1
    addiu	$a1,$sp,1416
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 689
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$t9,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0dae0910
    ld	$gp,2440($sp)
.L0dae0c78:
    # Line 553
    addiu	$s7,$sp,256
    b	.L0dadfdf4
    ld	$s8,1512($sp)
.end __glim_SubdivPatchSGIX

# Function: CopyVertex
# Declared: Line 747 (Source lines: 748-755)
# Address: 0x0dae0c84 - 0x0dae0d08 (Size: 132 bytes, Frame: 0)
.ent CopyVertex
CopyVertex:
    # Line 748
    move	$t0,$a0
    andi	$a7,$a0,0x3
    blez	$a0,.L0dae0d00
    move	$a6,$a1
    move	$a5,$a2
    sll	$a4,$a0,0x2
    beqz	$a7,.L0dae0cbc
    addu	$a4,$a4,$a1
.L0dae0ca4:
    # Line 751
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    # Line 752
    lwc1	$f0,-4($a6)
    addi	$a7,$a7,-1
    bnez	$a7,.L0dae0ca4
    swc1	$f0,-4($a5)
.L0dae0cbc:
    sra	$at,$t0,0x2
    move	$a2,$a5
    beqz	$at,.L0dae0d00
    move	$a7,$a6
    move	$a1,$a2
    move	$a0,$a7
.L0dae0cd4:
    lwc1	$f0,0($a0)
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    swc1	$f2,8($a1)
    # Line 751
    addiu	$a1,$a1,16
    # Line 752
    lwc1	$f1,12($a0)
    # Line 751
    addiu	$a0,$a0,16
    bne	$a0,$a4,.L0dae0cd4
    # Line 752
    swc1	$f1,-4($a1)
.L0dae0d00:
    # Line 755
    jr	$ra
    nop
.end CopyVertex

# Function: CopyRVertex
# Declared: Line 759 (Source lines: 763-767)
# Address: 0x0dae0d08 - 0x0dae0d90 (Size: 136 bytes, Frame: 0)
.ent CopyRVertex
CopyRVertex:
    # Line 763
    move	$t1,$a0
    blez	$a0,.L0dae0d88
    addiu	$t0,$a0,-1
    addiu	$a4,$a1,-4
    andi	$a7,$a0,0x3
    sll	$a5,$t0,0x2
    addu	$a6,$a5,$a2
    beqz	$a7,.L0dae0d44
    addu	$a5,$a5,$a1
.L0dae0d2c:
    addiu	$a5,$a5,-4
    addiu	$a6,$a6,-4
    # Line 764
    lwc1	$f0,4($a5)
    addi	$a7,$a7,-1
    bnez	$a7,.L0dae0d2c
    swc1	$f0,4($a6)
.L0dae0d44:
    sra	$at,$t1,0x2
    move	$a2,$a6
    beqz	$at,.L0dae0d88
    move	$a7,$a5
    move	$a0,$a2
    move	$a1,$a7
.L0dae0d5c:
    lwc1	$f0,0($a1)
    swc1	$f0,0($a0)
    lwc1	$f3,-4($a1)
    swc1	$f3,-4($a0)
    lwc1	$f2,-8($a1)
    swc1	$f2,-8($a0)
    # Line 763
    addiu	$a0,$a0,-16
    # Line 764
    lwc1	$f1,-12($a1)
    # Line 763
    addiu	$a1,$a1,-16
    bne	$a1,$a4,.L0dae0d5c
    # Line 764
    swc1	$f1,4($a0)
.L0dae0d88:
    # Line 767
    jr	$ra
    nop
.end CopyRVertex

# Function: NormalizedCrossProduct
# Declared: Line 771 (Source lines: 775-783)
# Address: 0x0dae0d90 - 0x0dae0e30 (Size: 160 bytes, Frame: 0)
.ent NormalizedCrossProduct
NormalizedCrossProduct:
    # Line 775
    lwc1	$f1,8($a1)
    lwc1	$f0,4($a0)
    lwc1	$f2,8($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 776
    lwc1	$f2,8($a0)
    lwc1	$f1,0($a1)
    lwc1	$f3,8($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,0($a0)
    mul.s	$f2,$f2,$f3
    sub.s	$f1,$f1,$f2
    swc1	$f1,4($a2)
    # Line 777
    lwc1	$f3,4($a1)
    lwc1	$f2,0($a0)
    lwc1	$f4,4($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f4
    # Line 779
    mul.s	$f4,$f0,$f0
    # Line 777
    sub.s	$f2,$f2,$f3
    # Line 779
    mul.s	$f3,$f1,$f1
    mul.s	$f5,$f2,$f2
    add.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f5
    sqrt.s	$f4,$f4
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f4
    div.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    # Line 781
    mul.s	$f1,$f1,$f3
    mul.s	$f2,$f2,$f3
    mul.s	$f0,$f0,$f3
    swc1	$f2,8($a2)
    swc1	$f1,4($a2)
    # Line 783
    jr	$ra
    # Line 781
    swc1	$f0,0($a2)
.end NormalizedCrossProduct

# Function: SubdivSmoothEdge
# Declared: Line 787 (Source lines: 788-796)
# Address: 0x0dae0e30 - 0x0dae0f9c (Size: 364 bytes, Frame: 208)
.ent SubdivSmoothEdge
SubdivSmoothEdge:
    # Line 788
    ldc1	$f4,_lit8_4008000000000000
    move	$t2,$a2
    move	$t1,$a3
    move	$t9,$a0
    andi	$at,$a0,0x1
    blez	$a0,.L0dae0f94
    addiu	$sp,$sp,-80
    move	$t8,$a4
    move	$t0,$a1
    move	$t3,$a5
    ldc1	$f5,_lit8_3fc0000000000000
    sll	$a7,$a0,0x2
    beqz	$at,.L0dae0ebc
    addu	$a7,$a7,$a4
    # Line 793
    lwc1	$f3,0($t2)
    cvt.d.s	$f3,$f3
    lwc1	$f2,0($t0)
    mul.d	$f3,$f3,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    lwc1	$f1,0($t1)
    add.d	$f2,$f2,$f3
    cvt.d.s	$f1,$f1
    lwc1	$f0,0($t8)
    add.d	$f1,$f1,$f2
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    mul.d	$f0,$f0,$f5
    # Line 792
    addiu	$t8,$t8,4
    addiu	$t1,$t1,4
    # Line 793
    cvt.s.d	$f0,$f0
    # Line 792
    addiu	$t0,$t0,4
    addiu	$t2,$t2,4
    addiu	$t3,$t3,4
    # Line 793
    swc1	$f0,-4($t3)
.L0dae0ebc:
    move	$at,$t0
    move	$a6,$t1
    move	$v1,$t8
    move	$a5,$t3
    sd	$t1,24($sp)
    sd	$t2,8($sp)
    sd	$t8,0($sp)
    sd	$t0,16($sp)
    move	$v0,$t2
    sra	$v0,$t9,0x1
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    beqz	$v0,.L0dae0f94
    ld	$a4,8($sp)
    ld	$a1,24($sp)
    move	$a0,$a5
.L0dae0efc:
    lwc1	$f0,0($a2)
    cvt.d.s	$f0,$f0
    lwc1	$f1,0($a4)
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    add.d	$f0,$f0,$f1
    lwc1	$f3,0($a1)
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f0
    lwc1	$f2,0($a3)
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f3
    mul.d	$f2,$f2,$f5
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a0)
    lwc1	$f1,4($a2)
    cvt.d.s	$f1,$f1
    lwc1	$f2,4($a4)
    mul.d	$f1,$f1,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    add.d	$f1,$f1,$f2
    lwc1	$f0,4($a1)
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    lwc1	$f3,4($a3)
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f0
    mul.d	$f3,$f3,$f5
    # Line 792
    addiu	$a1,$a1,8
    addiu	$a2,$a2,8
    addiu	$a4,$a4,8
    # Line 793
    cvt.s.d	$f3,$f3
    # Line 792
    addiu	$a0,$a0,8
    addiu	$a3,$a3,8
    bne	$a3,$a7,.L0dae0efc
    # Line 793
    swc1	$f3,-4($a0)
.L0dae0f94:
    # Line 796
    jr	$ra
    addiu	$sp,$sp,80
.end SubdivSmoothEdge

# Function: SubdivRegCreaseEdge
# Declared: Line 800 (Source lines: 801-809)
# Address: 0x0dae0f9c - 0x0dae109c (Size: 256 bytes, Frame: 0)
.ent SubdivRegCreaseEdge
SubdivRegCreaseEdge:
    # Line 801
    move	$a7,$a2
    move	$t2,$a0
    andi	$t1,$a0,0x3
    blez	$a0,.L0dae1094
    move	$a6,$a3
    move	$t0,$a1
    ldc1	$f4,_lit8_3fe0000000000000
    sll	$a5,$a0,0x2
    beqz	$t1,.L0dae0ff4
    addu	$a5,$a5,$a1
.L0dae0fc4:
    # Line 806
    lwc1	$f0,0($t0)
    lwc1	$f1,0($a7)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    # Line 805
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    # Line 806
    cvt.s.d	$f0,$f0
    # Line 805
    addiu	$a6,$a6,4
    addi	$t1,$t1,-1
    bnez	$t1,.L0dae0fc4
    # Line 806
    swc1	$f0,-4($a6)
.L0dae0ff4:
    move	$a3,$a6
    move	$t3,$t0
    move	$t1,$a7
    sra	$at,$t2,0x2
    beqz	$at,.L0dae1094
    move	$a2,$t1
    move	$a1,$a3
    move	$a0,$t3
.L0dae1014:
    lwc1	$f0,0($a0)
    lwc1	$f1,0($a2)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    lwc1	$f2,4($a0)
    lwc1	$f3,4($a2)
    add.s	$f2,$f2,$f3
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a1)
    lwc1	$f0,8($a0)
    lwc1	$f1,8($a2)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a1)
    lwc1	$f2,12($a0)
    lwc1	$f3,12($a2)
    add.s	$f2,$f2,$f3
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    # Line 805
    addiu	$a2,$a2,16
    # Line 806
    cvt.s.d	$f2,$f2
    # Line 805
    addiu	$a1,$a1,16
    addiu	$a0,$a0,16
    bne	$a0,$a5,.L0dae1014
    # Line 806
    swc1	$f2,-4($a1)
.L0dae1094:
    # Line 809
    jr	$ra
    nop
.end SubdivRegCreaseEdge

# Function: SubdivIRRegCreaseEdge
# Declared: Line 813 (Source lines: 814-822)
# Address: 0x0dae109c - 0x0dae11e0 (Size: 324 bytes, Frame: 0)
.ent SubdivIRRegCreaseEdge
SubdivIRRegCreaseEdge:
    # Line 814
    ldc1	$f4,_lit8_4014000000000000
    move	$a7,$a2
    move	$t2,$a0
    andi	$t1,$a0,0x3
    blez	$a0,.L0dae11d8
    ldc1	$f5,_lit8_4008000000000000
    move	$t0,$a1
    move	$a6,$a3
    ldc1	$f6,_lit8_3fc0000000000000
    sll	$a5,$a0,0x2
    beqz	$t1,.L0dae1108
    addu	$a5,$a5,$a1
.L0dae10cc:
    # Line 819
    lwc1	$f0,0($t0)
    cvt.d.s	$f0,$f0
    lwc1	$f1,0($a7)
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f5
    add.d	$f0,$f0,$f1
    mul.d	$f0,$f0,$f6
    # Line 818
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    # Line 819
    cvt.s.d	$f0,$f0
    # Line 818
    addiu	$a6,$a6,4
    addi	$t1,$t1,-1
    bnez	$t1,.L0dae10cc
    # Line 819
    swc1	$f0,-4($a6)
.L0dae1108:
    move	$a3,$a6
    move	$t3,$t0
    move	$t1,$a7
    sra	$at,$t2,0x2
    beqz	$at,.L0dae11d8
    move	$a2,$t1
    move	$a1,$a3
    move	$a0,$t3
.L0dae1128:
    lwc1	$f0,0($a0)
    cvt.d.s	$f0,$f0
    lwc1	$f1,0($a2)
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f5
    add.d	$f0,$f0,$f1
    mul.d	$f0,$f0,$f6
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    cvt.d.s	$f3,$f3
    lwc1	$f0,4($a2)
    mul.d	$f3,$f3,$f4
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    add.d	$f3,$f3,$f0
    mul.d	$f3,$f3,$f6
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    cvt.d.s	$f2,$f2
    lwc1	$f3,8($a2)
    mul.d	$f2,$f2,$f4
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    add.d	$f2,$f2,$f3
    mul.d	$f2,$f2,$f6
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a1)
    lwc1	$f1,12($a0)
    cvt.d.s	$f1,$f1
    lwc1	$f2,12($a2)
    mul.d	$f1,$f1,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    add.d	$f1,$f1,$f2
    mul.d	$f1,$f1,$f6
    # Line 818
    addiu	$a2,$a2,16
    # Line 819
    cvt.s.d	$f1,$f1
    # Line 818
    addiu	$a1,$a1,16
    addiu	$a0,$a0,16
    bne	$a0,$a5,.L0dae1128
    # Line 819
    swc1	$f1,-4($a1)
.L0dae11d8:
    # Line 822
    jr	$ra
    nop
.end SubdivIRRegCreaseEdge

# Function: SubdivEdge
# Declared: Line 826 (Source lines: 828-848)
# Address: 0x0dae11e0 - 0x0dae12c0 (Size: 224 bytes, Frame: 208)
.ent SubdivEdge
SubdivEdge:
    # Line 828
    addiu	$sp,$sp,-80
    # Line 830
    lb	$t1,87($sp)
    andi	$v0,$a7,0x4
    # Line 838
    andi	$t0,$a7,0x1
    # Line 830
    beqz	$t1,.L0dae1208
    andi	$at,$a6,0x4
    bnez	$at,.L0dae120c
    # Line 833
    nop	# was lw $t9, -32712($gp) # &sub_0dae0000
    # Line 830
    beqz	$v0,.L0dae1228
    # Line 833
    andi	$at,$a6,0x1
.L0dae1208:
    # lw $t9, -32712($gp) # &sub_0dae0000
.L0dae120c:
    sd	$ra,0($sp)
    addiu	$t9,$t9,3632
    bal __glim_SubdivPatchSGIX
    nop
    ld	$ra,0($sp)
.L0dae1220:
    # Line 848
    jr	$ra
    addiu	$sp,$sp,80
.L0dae1228:
    # Line 833
    andi	$a3,$t1,0x2
    beqz	$a3,.L0dae12a8
    # Line 845
    nop	# was lw $t9, -32712($gp) # &sub_0dae0000
    # Line 833
    beqz	$at,.L0dae124c
    # Line 834
    andi	$v0,$a7,0x2
    bnez	$v0,.L0dae1288
    andi	$v1,$a7,0x8
    bnez	$v1,.L0dae128c
    # Line 838
    nop	# was lw $t9, -32712($gp) # &sub_0dae0000
.L0dae124c:
    beqz	$a3,.L0dae12a4
    # Line 839
    andi	$v0,$a6,0x8
    # Line 838
    beqz	$t0,.L0dae12a4
    # Line 839
    andi	$at,$a6,0x2
    bnez	$at,.L0dae1270
    # Line 843
    nop	# was lw $t9, -32712($gp) # &sub_0dae0000
    # Line 839
    beqz	$v0,.L0dae12a4
    sd	$ra,0($sp)
    # Line 843
    # lw $t9, -32712($gp) # &sub_0dae0000
.L0dae1270:
    sd	$ra,0($sp)
    addiu	$t9,$t9,4252
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0dae1220
    ld	$ra,0($sp)
.L0dae1288:
    # Line 838
    # lw $t9, -32712($gp) # &sub_0dae0000
.L0dae128c:
    sd	$ra,0($sp)
    addiu	$t9,$t9,4252
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0dae1220
    ld	$ra,0($sp)
.L0dae12a4:
    # Line 845
    # lw $t9, -32712($gp) # &sub_0dae0000
.L0dae12a8:
    sd	$ra,0($sp)
    addiu	$t9,$t9,3996
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0dae1220
    ld	$ra,0($sp)
.end SubdivEdge

# Function: PrepSmoothVertex
# Declared: Line 852 (Source lines: 857-865)
# Address: 0x0dae12c0 - 0x0dae1318 (Size: 88 bytes, Frame: 0)
.ent PrepSmoothVertex
PrepSmoothVertex:
    # Line 857
    mult	$a0,$a1
    mflo	$at
    sll	$v1,$at,0x2
    # Line 863
    addu	$a6,$v1,$a4
    sw	$a6,24($a5)
    # Line 860
    addu	$a1,$v1,$a2
    sw	$a1,12($a5)
    # Line 861
    subu	$v0,$at,$a0
    # Line 858
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    # Line 861
    sll	$v0,$v0,0x2
    # Line 857
    addu	$v1,$v1,$a3
    sw	$v1,0($a5)
    # Line 862
    addu	$v1,$v0,$a4
    sw	$v1,20($a5)
    # Line 861
    addu	$v0,$v0,$a3
    sw	$v0,16($a5)
    # Line 859
    addu	$v0,$at,$a2
    # Line 858
    addu	$at,$at,$a3
    # Line 859
    sw	$v0,8($a5)
    # Line 865
    jr	$ra
    # Line 858
    sw	$at,4($a5)
.end PrepSmoothVertex

# Function: UpdateSmoothVertex
# Declared: Line 869 (Source lines: 870-884)
# Address: 0x0dae1318 - 0x0dae1410 (Size: 248 bytes, Frame: 0)
.ent UpdateSmoothVertex
UpdateSmoothVertex:
    # Line 870
    blez	$a0,.L0dae1408
    move	$a5,$a3
    move	$a6,$zero
    addiu	$t3,$a1,1
    sll	$t3,$t3,0x2
    sll	$t1,$a0,0x2
    addu	$t1,$t1,$a3
    slti	$t2,$a1,1
    la	$v0,sub_0dbf0000
    xori	$t2,$t2,0x1
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10584
    addu	$at,$at,$v0
    lwc1	$f7,-4($at)
    b	.L0dae13b8
    lwc1	$f8,-8($at)
.L0dae1358:
    sra	$at,$a7,0x1
.L0dae135c:
    mov.s	$f6,$f5
    beqz	$at,.L0dae13a4
    move	$t0,$a0
    mov.s	$f4,$f6
    move	$a0,$t0
.L0dae1370:
    # Line 879
    lw	$v1,0($a0)
    addu	$v1,$v1,$a6
    lwc1	$f0,0($v1)
    add.s	$f0,$f0,$f4
    swc1	$f0,0($a5)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a6
    lwc1	$f4,0($v0)
    add.s	$f4,$f4,$f0
    # Line 878
    addiu	$a0,$a0,8
    bne	$a0,$a3,.L0dae1370
    # Line 879
    swc1	$f4,0($a5)
    mov.s	$f5,$f4
.L0dae13a4:
    # Line 881
    mul.s	$f1,$f7,$f5
    # Line 876
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    beq	$a5,$t1,.L0dae1408
    # Line 881
    swc1	$f1,-4($a5)
.L0dae13b8:
    # Line 877
    lw	$a4,0($a2)
    addu	$a4,$a4,$a6
    lwc1	$f5,0($a4)
    mul.s	$f5,$f5,$f8
    addu	$a3,$t3,$a2
    move	$a7,$a1
    andi	$at,$a1,0x1
    addiu	$a0,$a2,4
    beqz	$t2,.L0dae13a4
    swc1	$f5,0($a5)
    beqz	$at,.L0dae135c
    sra	$at,$a7,0x1
    # Line 879
    lw	$v0,0($a0)
    addu	$v0,$v0,$a6
    lwc1	$f0,0($v0)
    add.s	$f5,$f0,$f5
    # Line 878
    addiu	$a0,$a0,4
    # Line 879
    swc1	$f5,0($a5)
    b	.L0dae1358
    nop
.L0dae1408:
    # Line 884
    jr	$ra
    nop
.end UpdateSmoothVertex

# Function: UpdateConicalVertex
# Declared: Line 888 (Source lines: 889-903)
# Address: 0x0dae1410 - 0x0dae1508 (Size: 248 bytes, Frame: 0)
.ent UpdateConicalVertex
UpdateConicalVertex:
    # Line 889
    blez	$a0,.L0dae1500
    move	$a5,$a3
    move	$a6,$zero
    addiu	$t3,$a1,1
    sll	$t3,$t3,0x2
    sll	$t1,$a0,0x2
    addu	$t1,$t1,$a3
    slti	$t2,$a1,1
    la	$v0,sub_0dbf0000
    xori	$t2,$t2,0x1
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10584
    addu	$at,$at,$v0
    lwc1	$f7,76($at)
    b	.L0dae14b0
    lwc1	$f8,72($at)
.L0dae1450:
    sra	$at,$a7,0x1
.L0dae1454:
    mov.s	$f6,$f5
    beqz	$at,.L0dae149c
    move	$t0,$a0
    mov.s	$f4,$f6
    move	$a0,$t0
.L0dae1468:
    # Line 898
    lw	$v1,0($a0)
    addu	$v1,$v1,$a6
    lwc1	$f0,0($v1)
    add.s	$f0,$f0,$f4
    swc1	$f0,0($a5)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a6
    lwc1	$f4,0($v0)
    add.s	$f4,$f4,$f0
    # Line 897
    addiu	$a0,$a0,8
    bne	$a0,$a3,.L0dae1468
    # Line 898
    swc1	$f4,0($a5)
    mov.s	$f5,$f4
.L0dae149c:
    # Line 900
    mul.s	$f1,$f7,$f5
    # Line 895
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    beq	$a5,$t1,.L0dae1500
    # Line 900
    swc1	$f1,-4($a5)
.L0dae14b0:
    # Line 896
    lw	$a4,0($a2)
    addu	$a4,$a4,$a6
    lwc1	$f5,0($a4)
    mul.s	$f5,$f5,$f8
    addu	$a3,$t3,$a2
    move	$a7,$a1
    andi	$at,$a1,0x1
    addiu	$a0,$a2,4
    beqz	$t2,.L0dae149c
    swc1	$f5,0($a5)
    beqz	$at,.L0dae1454
    sra	$at,$a7,0x1
    # Line 898
    lw	$v0,0($a0)
    addu	$v0,$v0,$a6
    lwc1	$f0,0($v0)
    add.s	$f5,$f0,$f5
    # Line 897
    addiu	$a0,$a0,4
    # Line 898
    swc1	$f5,0($a5)
    b	.L0dae1450
    nop
.L0dae1500:
    # Line 903
    jr	$ra
    nop
.end UpdateConicalVertex

# Function: PrepCreaseVertex
# Declared: Line 907 (Source lines: 910-914)
# Address: 0x0dae1508 - 0x0dae1518 (Size: 16 bytes, Frame: 0)
.ent PrepCreaseVertex
PrepCreaseVertex:
    # Line 912
    sw	$a2,8($a3)
    # Line 911
    sw	$a1,4($a3)
    # Line 914
    jr	$ra
    # Line 910
    sw	$a0,0($a3)
.end PrepCreaseVertex

# Function: UpdateCreaseVertex
# Declared: Line 918 (Source lines: 919-931)
# Address: 0x0dae1518 - 0x0dae15a4 (Size: 140 bytes, Frame: 0)
.ent UpdateCreaseVertex
UpdateCreaseVertex:
    # Line 919
    ldc1	$f5,_lit8_4018000000000000
    move	$a4,$a2
    blez	$a0,.L0dae159c
    ldc1	$f6,_lit8_3fc0000000000000
    sll	$a6,$a0,0x2
    addiu	$a7,$a1,4
    move	$a5,$zero
    addu	$a6,$a6,$a2
.L0dae1538:
    # Line 924
    lw	$at,0($a1)
    addu	$at,$at,$a5
    lwc1	$f4,0($at)
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f5
    cvt.s.d	$f4,$f4
    move	$a0,$a7
    swc1	$f4,0($a4)
    # Line 926
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f0,0($v1)
    add.s	$f0,$f0,$f4
    swc1	$f0,0($a4)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f4,0($v0)
    add.s	$f4,$f4,$f0
    # Line 923
    addiu	$a4,$a4,4
    addiu	$a5,$a5,4
    # Line 928
    cvt.d.s	$f1,$f4
    # Line 926
    swc1	$f4,-4($a4)
    # Line 928
    mul.d	$f1,$f1,$f6
    cvt.s.d	$f1,$f1
    # Line 923
    bne	$a4,$a6,.L0dae1538
    # Line 928
    swc1	$f1,-4($a4)
.L0dae159c:
    # Line 931
    jr	$ra
    nop
.end UpdateCreaseVertex

# Function: UpdateVertex
# Declared: Line 935 (Source lines: 936-952)
# Address: 0x0dae15a4 - 0x0dae16d0 (Size: 300 bytes, Frame: 192)
.ent UpdateVertex
UpdateVertex:
    # Line 936
    addiu	$sp,$sp,-64
    move	$a7,$a1
    move	$t0,$a2
    # Line 940
    beqz	$a0,.L0dae15c4
    # Line 936
    move	$a6,$a3
    # Line 940
    andi	$at,$a0,0x4
    beqz	$at,.L0dae15f0
    # Line 942
    andi	$at,$a0,0x10
.L0dae15c4:
    move	$a0,$a7
    move	$a1,$t0
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a2,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,4888
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    ld	$ra,0($sp)
.L0dae15e8:
    # Line 952
    jr	$ra
    addiu	$sp,$sp,64
.L0dae15f0:
    # Line 942
    beqz	$at,.L0dae1620
    # Line 946
    move	$a3,$a7
    # Line 944
    move	$a0,$a7
    move	$a1,$t0
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a2,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,5136
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0dae15e8
    ld	$ra,0($sp)
.L0dae1620:
    andi	$at,$a0,0x3
    beqz	$at,.L0dae1650
    # Line 946
    move	$a1,$a4
    move	$a0,$a7
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,5400
    bal __glim_SubdivPatchSGIX
    move	$a2,$a4
    b	.L0dae15e8
    ld	$ra,0($sp)
.L0dae1650:
    blez	$a7,.L0dae15e8
    move	$a0,$zero
    sll	$a2,$a7,0x2
    andi	$at,$a7,0x1
    beqz	$at,.L0dae1680
    addu	$a2,$a2,$a4
    # Line 949
    lw	$a5,0($a6)
    addu	$a5,$a5,$a0
    lwc1	$f0,0($a5)
    # Line 948
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    # Line 949
    swc1	$f0,-4($a1)
.L0dae1680:
    move	$a7,$a1
    sra	$at,$a3,0x1
    beqz	$at,.L0dae16c8
    move	$a4,$a0
    move	$a0,$a7
    move	$a1,$a4
.L0dae1698:
    lw	$at,0($a6)
    addu	$at,$at,$a1
    lwc1	$f2,0($at)
    swc1	$f2,0($a0)
    lw	$a5,0($a6)
    # Line 948
    addiu	$a0,$a0,8
    addiu	$a1,$a1,4
    # Line 949
    addu	$a5,$a5,$a1
    lwc1	$f1,0($a5)
    # Line 948
    addiu	$a1,$a1,4
    bne	$a0,$a2,.L0dae1698
    # Line 949
    swc1	$f1,-4($a0)
.L0dae16c8:
    b	.L0dae15e8
    nop
.end UpdateVertex

# Function: SmoothPosition
# Declared: Line 956 (Source lines: 957-971)
# Address: 0x0dae16d0 - 0x0dae17c8 (Size: 248 bytes, Frame: 0)
.ent SmoothPosition
SmoothPosition:
    # Line 957
    blez	$a0,.L0dae17c0
    move	$a5,$a3
    move	$a6,$zero
    addiu	$t3,$a1,1
    sll	$t3,$t3,0x2
    sll	$t1,$a0,0x2
    addu	$t1,$t1,$a3
    slti	$t2,$a1,1
    la	$v0,sub_0dbf0000
    xori	$t2,$t2,0x1
    sll	$at,$a1,0x3
    addiu	$v0,$v0,-10584
    addu	$at,$at,$v0
    lwc1	$f7,140($at)
    b	.L0dae1770
    lwc1	$f8,136($at)
.L0dae1710:
    sra	$at,$a7,0x1
.L0dae1714:
    mov.s	$f6,$f5
    beqz	$at,.L0dae175c
    move	$t0,$a0
    mov.s	$f4,$f6
    move	$a0,$t0
.L0dae1728:
    # Line 966
    lw	$v1,0($a0)
    addu	$v1,$v1,$a6
    lwc1	$f0,0($v1)
    add.s	$f0,$f0,$f4
    swc1	$f0,0($a5)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a6
    lwc1	$f4,0($v0)
    add.s	$f4,$f4,$f0
    # Line 965
    addiu	$a0,$a0,8
    bne	$a0,$a3,.L0dae1728
    # Line 966
    swc1	$f4,0($a5)
    mov.s	$f5,$f4
.L0dae175c:
    # Line 968
    mul.s	$f1,$f7,$f5
    # Line 963
    addiu	$a6,$a6,4
    addiu	$a5,$a5,4
    beq	$a5,$t1,.L0dae17c0
    # Line 968
    swc1	$f1,-4($a5)
.L0dae1770:
    # Line 964
    lw	$a4,0($a2)
    addu	$a4,$a4,$a6
    lwc1	$f5,0($a4)
    mul.s	$f5,$f5,$f8
    addu	$a3,$t3,$a2
    move	$a7,$a1
    andi	$at,$a1,0x1
    addiu	$a0,$a2,4
    beqz	$t2,.L0dae175c
    swc1	$f5,0($a5)
    beqz	$at,.L0dae1714
    sra	$at,$a7,0x1
    # Line 966
    lw	$v0,0($a0)
    addu	$v0,$v0,$a6
    lwc1	$f0,0($v0)
    add.s	$f5,$f0,$f5
    # Line 965
    addiu	$a0,$a0,4
    # Line 966
    swc1	$f5,0($a5)
    b	.L0dae1710
    nop
.L0dae17c0:
    # Line 971
    jr	$ra
    nop
.end SmoothPosition

# Function: CreasePosition
# Declared: Line 975 (Source lines: 976-994)
# Address: 0x0dae17c8 - 0x0dae1890 (Size: 200 bytes, Frame: 0)
.ent CreasePosition
CreasePosition:
    # Line 976
    andi	$at,$a0,0x1
    beqz	$at,.L0dae1884
    # Line 981
    ldc1	$f4,_lit8_4010000000000000
.L0dae17d4:
    lwc1	$f8,_lit_3f800000
    move	$a4,$a3
    sll	$a6,$a1,0x2
    blez	$a1,.L0dae187c
    lwc1	$f7,_lit_bf800000
    addu	$a6,$a6,$a3
    move	$a5,$zero
    addiu	$a7,$a2,4
    ldc1	$f9,_lit8_3ff0000000000000
    cvt.s.d	$f6,$f4
.L0dae17fc:
    # Line 985
    lw	$at,0($a2)
    addu	$at,$at,$a5
    lwc1	$f5,0($at)
    mul.s	$f5,$f5,$f6
    # Line 986
    mov.s	$f4,$f6
    move	$a1,$a7
    # Line 985
    swc1	$f5,0($a4)
    # Line 988
    lw	$v1,0($a1)
    add.s	$f4,$f4,$f8
    addu	$v1,$v1,$a5
    add.s	$f1,$f4,$f7
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    add.s	$f0,$f0,$f5
    add.s	$f4,$f4,$f8
    swc1	$f0,0($a4)
    lw	$v0,4($a1)
    add.s	$f1,$f4,$f7
    addu	$v0,$v0,$a5
    lwc1	$f5,0($v0)
    mul.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    # Line 991
    cvt.d.s	$f3,$f4
    # Line 984
    addiu	$a4,$a4,4
    # Line 991
    div.d	$f3,$f9,$f3
    # Line 984
    addiu	$a5,$a5,4
    # Line 991
    cvt.d.s	$f2,$f5
    # Line 988
    swc1	$f5,-4($a4)
    # Line 991
    mul.d	$f2,$f2,$f3
    cvt.s.d	$f2,$f2
    # Line 984
    bne	$a4,$a6,.L0dae17fc
    # Line 991
    swc1	$f2,-4($a4)
.L0dae187c:
    # Line 994
    jr	$ra
    nop
.L0dae1884:
    # Line 981
    ldc1	$f4,_lit8_4008000000000000
    b	.L0dae17d4
    nop
.end CreasePosition

# Function: FinalPosition
# Declared: Line 998 (Source lines: 999-1014)
# Address: 0x0dae1890 - 0x0dae1988 (Size: 248 bytes, Frame: 192)
.ent FinalPosition
FinalPosition:
    # Line 999
    addiu	$sp,$sp,-64
    move	$a7,$a1
    move	$t0,$a2
    # Line 1004
    beqz	$a0,.L0dae18b0
    # Line 999
    move	$a6,$a3
    # Line 1004
    andi	$at,$a0,0x4
    beqz	$at,.L0dae18d8
    # Line 1008
    sll	$a2,$a7,0x2
.L0dae18b0:
    # Line 1006
    move	$a0,$a7
    move	$a1,$t0
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a2,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,5840
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0dae1980
    ld	$ra,0($sp)
.L0dae18d8:
    andi	$at,$a0,0x3
    beqz	$at,.L0dae1908
    # Line 1008
    move	$a3,$a7
    move	$a1,$a7
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a2,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,6088
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0dae1980
    ld	$ra,0($sp)
.L0dae1908:
    blez	$a7,.L0dae1980
    move	$a0,$a4
    addu	$a2,$a2,$a4
    andi	$at,$a7,0x1
    beqz	$at,.L0dae1938
    move	$a1,$zero
    # Line 1011
    lw	$a5,0($a6)
    addu	$a5,$a5,$a1
    lwc1	$f0,0($a5)
    # Line 1010
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    # Line 1011
    swc1	$f0,-4($a0)
.L0dae1938:
    move	$a7,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0dae1980
    move	$a4,$a1
    move	$a1,$a7
    move	$a0,$a4
.L0dae1950:
    lw	$at,0($a6)
    addu	$at,$at,$a0
    lwc1	$f2,0($at)
    swc1	$f2,0($a1)
    lw	$a5,0($a6)
    # Line 1010
    addiu	$a1,$a1,8
    addiu	$a0,$a0,4
    # Line 1011
    addu	$a5,$a5,$a0
    lwc1	$f1,0($a5)
    # Line 1010
    addiu	$a0,$a0,4
    bne	$a1,$a2,.L0dae1950
    # Line 1011
    swc1	$f1,-4($a1)
.L0dae1980:
    # Line 1014
    jr	$ra
    addiu	$sp,$sp,64
.end FinalPosition

# Function: SmoothNormal
# Declared: Line 1018 (Source lines: 1019-1036)
# Address: 0x0dae1988 - 0x0dae1af0 (Size: 360 bytes, Frame: 208)
.ent SmoothNormal
SmoothNormal:
    # Line 1022
    addiu	$t3,$a0,0
    move	$a4,$zero
    la	$at,sub_0dbf0000
    # Line 1019
    addiu	$sp,$sp,-80
    # Line 1021
    mtc1	$zero,$f0
    # Line 1022
    sll	$a5,$a0,0x3
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1021
    swc1	$f0,8($sp)
    swc1	$f0,4($sp)
    # Line 1022
    blez	$a0,.L0dae1acc
    # Line 1021
    swc1	$f0,0($sp)
    # Line 1022
    addu	$a5,$a5,$a0
    addiu	$t9,$a0,-1
    addiu	$a6,$a1,4
    li	$t8,-1
    addiu	$at,$at,-10584
    addiu	$a5,$a5,1
    sll	$a5,$a5,0x2
    b	.L0dae1ab4
    addu	$a5,$a5,$at
.L0dae19e0:
    # Line 1027
    move	$t1,$a4
.L0dae19e4:
    move	$a7,$zero
    lwc1	$f4,176($a5)
    sll	$t2,$t1,0x2
    addu	$t2,$t2,$a1
    # Line 1030
    lw	$v0,0($a6)
    addu	$v0,$v0,$a7
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 1031
    lw	$at,0($t2)
    addu	$at,$at,$a7
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,0($t0)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($t0)
    # Line 1030
    lw	$a3,0($a6)
    # Line 1029
    addiu	$v0,$a7,4
    # Line 1030
    addu	$a3,$a3,$v0
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a0)
    # Line 1031
    lw	$v1,0($t2)
    addu	$v1,$v1,$v0
    lwc1	$f2,0($v1)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,4($t0)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($t0)
    # Line 1030
    lw	$v1,0($a6)
    # Line 1029
    addiu	$v0,$v0,4
    # Line 1030
    addu	$v1,$v1,$v0
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,8($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a0)
    # Line 1031
    lw	$at,0($t2)
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($t0)
    add.s	$f1,$f1,$f2
    # Line 1026
    addiu	$a6,$a6,4
    addiu	$a4,$a4,1
    addiu	$a5,$a5,4
    # Line 1031
    swc1	$f1,8($t0)
    # Line 1026
    beq	$a4,$t3,.L0dae1acc
.L0dae1ab4:
    # Line 1027
    addiu	$a0,$sp,0
    # Line 1022
    bne	$a4,$t8,.L0dae19e0
    # Line 1027
    addiu	$t0,$sp,16
    move	$t1,$t9
    b	.L0dae19e4
    nop
.L0dae1acc:
    # Line 1035
    # lw $t9, -32712($gp) # &sub_0dae0000
    addiu	$a1,$sp,16
    sd	$ra,32($sp)
    addiu	$t9,$t9,3472
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1036
    jr	$ra
    addiu	$sp,$sp,80
.end SmoothNormal

# Function: CreaseNormal
# Declared: Line 1040 (Source lines: 1041-1084)
# Address: 0x0dae1af0 - 0x0dae1ddc (Size: 748 bytes, Frame: 208)
.ent CreaseNormal
CreaseNormal:
    # Line 1049
    li	$a7,1
    addiu	$t2,$a1,1
    sll	$a6,$a1,0x3
    # Line 1041
    addiu	$sp,$sp,-80
    # Line 1043
    mtc1	$zero,$f0
    # Line 1049
    slti	$t8,$a1,1
    xori	$t8,$t8,0x1
    # Line 1044
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1043
    swc1	$f0,8($sp)
    swc1	$f0,4($sp)
    # Line 1049
    beqz	$t8,.L0dae1c7c
    # Line 1043
    swc1	$f0,0($sp)
    # Line 1049
    addu	$a6,$a6,$a1
    addiu	$a5,$a2,4
    la	$t3,sub_0dbf0000
    addiu	$a6,$a6,1
    sll	$a6,$a6,0x2
    addiu	$t3,$t3,-10584
    addu	$a6,$a6,$t3
    move	$t0,$zero
.L0dae1b48:
    lwc1	$f4,504($a6)
    addiu	$t1,$sp,0
    # Line 1052
    lw	$a4,0($a5)
    addu	$a4,$a4,$t0
    lwc1	$f2,0($a4)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,0($t1)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($t1)
    lw	$v1,0($a5)
    # Line 1051
    addiu	$v0,$t0,4
    # Line 1052
    addu	$v1,$v1,$v0
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($t1)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($t1)
    lw	$at,0($a5)
    # Line 1051
    addiu	$v0,$v0,4
    # Line 1052
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($t1)
    add.s	$f1,$f1,$f2
    # Line 1049
    addiu	$a5,$a5,4
    addiu	$a7,$a7,1
    addiu	$a6,$a6,4
    # Line 1052
    swc1	$f1,8($t1)
    # Line 1049
    bne	$t2,$a7,.L0dae1b48
    move	$t0,$zero
.L0dae1bc0:
    # Line 1058
    li	$a6,5
    # Line 1049
    andi	$at,$a0,0x1
    beqz	$at,.L0dae1c88
    # Line 1058
    move	$a5,$a2
    move	$a7,$zero
    move	$a1,$t3
    move	$t0,$zero
.L0dae1bdc:
    lwc1	$f4,872($a1)
    addiu	$a0,$sp,16
    # Line 1061
    lw	$at,0($a5)
    addu	$at,$at,$t0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    lw	$a4,0($a5)
    # Line 1060
    addiu	$v1,$t0,4
    # Line 1061
    addu	$a4,$a4,$v1
    lwc1	$f2,0($a4)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,4($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a0)
    lw	$v0,0($a5)
    # Line 1060
    addiu	$v1,$v1,4
    # Line 1061
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,8($a0)
    add.s	$f3,$f3,$f0
    # Line 1058
    addiu	$a5,$a5,4
    addiu	$a7,$a7,1
    addiu	$a1,$a1,4
    # Line 1061
    swc1	$f3,8($a0)
    # Line 1058
    bne	$a7,$a6,.L0dae1bdc
    move	$t0,$zero
.L0dae1c54:
    # Line 1082
    move	$a2,$a3
    # lw $t9, -32712($gp) # &sub_0dae0000
    addiu	$a1,$sp,16
    sd	$ra,32($sp)
    addiu	$t9,$t9,3472
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1084
    jr	$ra
    addiu	$sp,$sp,80
.L0dae1c7c:
    # Line 1049
    la	$t3,sub_0dbf0000
    b	.L0dae1bc0
    addiu	$t3,$t3,-10584
.L0dae1c88:
    # Line 1058
    slti	$at,$a1,4
    beqz	$at,.L0dae1d38
    # Line 1073
    sll	$a6,$a1,0x3
    # Line 1066
    move	$a7,$zero
    bltz	$a1,.L0dae1c54
    sll	$a6,$a1,0x3
    move	$a5,$a2
    addiu	$t2,$a1,1
    addu	$a6,$a6,$a1
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$t3
    move	$t0,$zero
.L0dae1cb8:
    lwc1	$f4,860($a6)
    addiu	$a0,$sp,16
    # Line 1069
    lw	$a4,0($a5)
    addu	$a4,$a4,$t0
    lwc1	$f2,0($a4)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,0($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    lw	$v1,0($a5)
    # Line 1068
    addiu	$v0,$t0,4
    # Line 1069
    addu	$v1,$v1,$v0
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a0)
    lw	$at,0($a5)
    # Line 1068
    addiu	$v0,$v0,4
    # Line 1069
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($a0)
    add.s	$f1,$f1,$f2
    # Line 1066
    addiu	$a5,$a5,4
    addiu	$a7,$a7,1
    addiu	$a6,$a6,4
    # Line 1069
    swc1	$f1,8($a0)
    # Line 1066
    bne	$t2,$a7,.L0dae1cb8
    move	$t0,$zero
    b	.L0dae1c54
    sd	$ra,32($sp)
.L0dae1d38:
    # Line 1073
    li	$a7,1
    beqz	$t8,.L0dae1c54
    addu	$a6,$a6,$a1
    addiu	$a5,$a2,4
    addiu	$t2,$a1,1
    addiu	$a6,$a6,1
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$t3
    move	$t0,$zero
.L0dae1d5c:
    lwc1	$f4,856($a6)
    addiu	$a0,$sp,16
    # Line 1076
    lw	$a4,0($a5)
    addu	$a4,$a4,$t0
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    lw	$v1,0($a5)
    # Line 1075
    addiu	$v0,$t0,4
    # Line 1076
    addu	$v1,$v1,$v0
    lwc1	$f2,0($v1)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,4($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a0)
    lw	$at,0($a5)
    # Line 1075
    addiu	$v0,$v0,4
    # Line 1076
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,8($a0)
    add.s	$f3,$f3,$f0
    # Line 1073
    addiu	$a5,$a5,4
    addiu	$a7,$a7,1
    addiu	$a6,$a6,4
    # Line 1076
    swc1	$f3,8($a0)
    # Line 1073
    bne	$t2,$a7,.L0dae1d5c
    move	$t0,$zero
    b	.L0dae1c54
    sd	$ra,32($sp)
.end CreaseNormal

# Function: CornerNormal
# Declared: Line 1088 (Source lines: 1089-1107)
# Address: 0x0dae1ddc - 0x0dae1f44 (Size: 360 bytes, Frame: 208)
.ent CornerNormal
CornerNormal:
    # Line 1093
    addiu	$t3,$a0,0
    move	$a4,$zero
    la	$at,sub_0dbf0000
    # Line 1089
    addiu	$sp,$sp,-80
    # Line 1092
    mtc1	$zero,$f0
    # Line 1093
    sll	$a5,$a0,0x3
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1092
    swc1	$f0,8($sp)
    swc1	$f0,4($sp)
    # Line 1093
    blez	$a0,.L0dae1f20
    # Line 1092
    swc1	$f0,0($sp)
    # Line 1093
    addu	$a5,$a5,$a0
    addiu	$t9,$a0,-1
    addiu	$a6,$a1,4
    li	$t8,-1
    addiu	$at,$at,-10584
    addiu	$a5,$a5,1
    sll	$a5,$a5,0x2
    b	.L0dae1f08
    addu	$a5,$a5,$at
.L0dae1e34:
    # Line 1097
    move	$t1,$a4
.L0dae1e38:
    move	$a7,$zero
    lwc1	$f4,504($a5)
    sll	$t2,$t1,0x2
    addu	$t2,$t2,$a1
    # Line 1100
    lw	$v0,0($a6)
    addu	$v0,$v0,$a7
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 1101
    lw	$at,0($t2)
    addu	$at,$at,$a7
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,0($t0)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($t0)
    # Line 1100
    lw	$a3,0($a6)
    # Line 1099
    addiu	$v0,$a7,4
    # Line 1100
    addu	$a3,$a3,$v0
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a0)
    # Line 1101
    lw	$v1,0($t2)
    addu	$v1,$v1,$v0
    lwc1	$f2,0($v1)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,4($t0)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($t0)
    # Line 1100
    lw	$v1,0($a6)
    # Line 1099
    addiu	$v0,$v0,4
    # Line 1100
    addu	$v1,$v1,$v0
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,8($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a0)
    # Line 1101
    lw	$at,0($t2)
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($t0)
    add.s	$f1,$f1,$f2
    # Line 1096
    addiu	$a6,$a6,4
    addiu	$a4,$a4,1
    addiu	$a5,$a5,4
    # Line 1101
    swc1	$f1,8($t0)
    # Line 1096
    beq	$a4,$t3,.L0dae1f20
.L0dae1f08:
    # Line 1097
    addiu	$a0,$sp,0
    # Line 1093
    bne	$a4,$t8,.L0dae1e34
    # Line 1097
    addiu	$t0,$sp,16
    move	$t1,$t9
    b	.L0dae1e38
    nop
.L0dae1f20:
    # Line 1105
    # lw $t9, -32712($gp) # &sub_0dae0000
    addiu	$a1,$sp,16
    sd	$ra,32($sp)
    addiu	$t9,$t9,3472
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1107
    jr	$ra
    addiu	$sp,$sp,80
.end CornerNormal

# Function: ComputeNormal
# Declared: Line 1111 (Source lines: 1112-1122)
# Address: 0x0dae1f44 - 0x0dae1fc8 (Size: 132 bytes, Frame: 48)
.ent ComputeNormal
ComputeNormal:
    # Line 1112
    addiu	$sp,$sp,-48
    move	$a6,$a1
    andi	$at,$a0,0x3
    beqz	$at,.L0dae1f78
    move	$a5,$a2
    # Line 1115
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$a6
    sd	$ra,0($sp)
    addiu	$t9,$t9,6896
    bal __glim_SubdivPatchSGIX
    move	$a2,$a5
    b	.L0dae1fa0
    ld	$ra,0($sp)
.L0dae1f78:
    andi	$at,$a0,0x8
    beqz	$at,.L0dae1fa8
    sd	$ra,0($sp)
    # Line 1117
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$a6
    move	$a1,$a5
    addiu	$t9,$t9,7644
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    ld	$ra,0($sp)
.L0dae1fa0:
    # Line 1122
    jr	$ra
    addiu	$sp,$sp,48
.L0dae1fa8:
    # Line 1119
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$a6
    move	$a1,$a5
    addiu	$t9,$t9,6536
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    b	.L0dae1fa0
    ld	$ra,0($sp)
.end ComputeNormal

# Function: InitSubdivision
# Declared: Line 1131 (Source lines: 1132-1715)
# Address: 0x0dae1fc8 - 0x0dae4b80 (Size: 11192 bytes, Frame: 128)
.ent InitSubdivision
InitSubdivision:
    # Line 1132
    addiu	$sp,$sp,-1152
    sd	$s1,848($sp)
    # Line 1134
    lw	$t9,__glCurrentContext
    sdc1	$f30,56($sp)
    # Line 1146
    lui	$v1,0x80
    # Line 1143
    lw	$t8,5572($t9)
    # Line 1138
    lwc1	$f30,5536($t9)
    # Line 1137
    lw	$s1,5544($t9)
    sd	$a1,872($sp)
    sd	$a2,880($sp)
    sd	$a0,240($sp)
    # Line 1139
    lw	$at,5548($t9)
    # Line 1145
    lbu	$a7,5577($t9)
    # Line 1140
    lw	$a0,5552($t9)
    # Line 1144
    lw	$a6,5532($t9)
    # Line 1142
    lw	$a2,5560($t9)
    # Line 1141
    lw	$a1,5556($t9)
    sd	$a6,152($sp)
    sd	$a2,168($sp)
    sd	$a1,752($sp)
    sd	$a0,80($sp)
    sd	$a7,704($sp)
    # Line 1146
    lw	$v0,1696($t9)
    # Line 1136
    lw	$a7,5540($t9)
    sd	$at,72($sp)
    # Line 1146
    and	$v0,$v0,$v1
    beqz	$at,.L0dae46b8
    sd	$v0,744($sp)
    # Line 1155
    move	$a2,$zero
.L0dae203c:
    ld	$at,80($sp)
    beqz	$at,.L0dae4728
    sw	$a2,-21840($gp)
.L0dae2048:
    sd	$s2,1096($sp)
.L0dae204c:
    sd	$s3,1080($sp)
    sd	$s4,1088($sp)
    sd	$s0,1072($sp)
    sdc1	$f24,1024($sp)
    # Line 1156
    move	$a3,$zero
.L0dae2060:
    # Line 1162
    mtc1	$zero,$f24
    li	$a5,4
    li	$s3,3
    li	$a2,2
    move	$s2,$zero
    la	$s0,sub_0dbf0000
    # Line 1156
    la	$s4,sub_0dbf0000
    sw	$a3,-21836($gp)
    # Line 1162
    addiu	$s0,$s0,17296
    # Line 1156
    addiu	$s4,$s4,-10584
    # Line 1162
    addiu	$t3,$s4,20
    b	.L0dae209c
    move	$t0,$s4
.L0dae2094:
    beq	$t0,$t3,.L0dae21d4
    addiu	$s2,$s2,1
.L0dae209c:
    lw	$at,1224($t0)
    mult	$at,$s1
    li	$t2,1
    move	$a4,$s0
    li	$v0,1
    mflo	$t1
    blez	$t1,.L0dae2094
    addiu	$t0,$t0,4
    slt	$at,$t1,$t2
    beqzl	$at,.L0dae20c8
    move	$t2,$t1
.L0dae20c8:
    sll	$a3,$t1,0x2
    andi	$a6,$t2,0x1
    beqz	$a6,.L0dae2104
    addu	$a3,$a3,$s0
    # Line 1164
    beqzl	$s2,.L0dae463c
    # Line 1167
    swc1	$f24,144($a4)
    # Line 1164
    beql	$s2,$v0,.L0dae465c
    # Line 1171
    swc1	$f24,756($a4)
    # Line 1164
    beql	$s2,$a2,.L0dae4664
    # Line 1175
    swc1	$f24,1372($a4)
    # Line 1164
    beql	$s2,$s3,.L0dae466c
    # Line 1179
    swc1	$f24,2276($a4)
    # Line 1164
    beql	$s2,$a5,.L0dae46b0
    # Line 1183
    swc1	$f24,2276($a4)
.L0dae2100:
    # Line 1163
    addiu	$a4,$a4,4
.L0dae2104:
    sra	$v1,$t2,0x1
    beqz	$v1,.L0dae2094
    nop
    b	.L0dae215c
    nop
.L0dae2118:
    # Line 1167
    swc1	$f24,144($a4)
    # Line 1166
    swc1	$f24,0($a4)
.L0dae2120:
    # Line 1164
    beqz	$s2,.L0dae2190
    # Line 1163
    addiu	$a4,$a4,4
    li	$a6,1
    # Line 1164
    beql	$s2,$a6,.L0dae219c
    # Line 1171
    swc1	$f24,756($a4)
    # Line 1164
    beql	$s2,$a2,.L0dae21ac
    # Line 1175
    swc1	$f24,1372($a4)
    # Line 1164
    beql	$s2,$s3,.L0dae21bc
    # Line 1179
    swc1	$f24,2276($a4)
    # Line 1164
    beql	$s2,$a5,.L0dae21cc
    # Line 1183
    swc1	$f24,2276($a4)
.L0dae214c:
    # Line 1163
    addiu	$a4,$a4,4
    sltu	$at,$a4,$a3
    beqz	$at,.L0dae2094
    nop
.L0dae215c:
    # Line 1164
    beqz	$s2,.L0dae2118
    li	$v0,1
    beql	$s2,$v0,.L0dae21a4
    # Line 1171
    swc1	$f24,756($a4)
    # Line 1164
    beql	$s2,$a2,.L0dae21b4
    # Line 1175
    swc1	$f24,1372($a4)
    # Line 1164
    beql	$s2,$s3,.L0dae21c4
    # Line 1179
    swc1	$f24,2276($a4)
    # Line 1164
    bne	$s2,$a5,.L0dae2120
    nop
    # Line 1183
    swc1	$f24,2276($a4)
    b	.L0dae2120
    # Line 1182
    swc1	$f24,1880($a4)
.L0dae2190:
    # Line 1167
    swc1	$f24,144($a4)
    b	.L0dae214c
    # Line 1166
    swc1	$f24,0($a4)
.L0dae219c:
    # Line 1172
    b	.L0dae214c
    # Line 1170
    swc1	$f24,576($a4)
.L0dae21a4:
    # Line 1172
    b	.L0dae2120
    # Line 1170
    swc1	$f24,576($a4)
.L0dae21ac:
    # Line 1176
    b	.L0dae214c
    # Line 1174
    swc1	$f24,1120($a4)
.L0dae21b4:
    # Line 1176
    b	.L0dae2120
    # Line 1174
    swc1	$f24,1120($a4)
.L0dae21bc:
    # Line 1180
    b	.L0dae214c
    # Line 1178
    swc1	$f24,1880($a4)
.L0dae21c4:
    # Line 1180
    b	.L0dae2120
    # Line 1178
    swc1	$f24,1880($a4)
.L0dae21cc:
    b	.L0dae214c
    # Line 1182
    swc1	$f24,1880($a4)
.L0dae21d4:
    # Line 1162
    li	$v1,10787
    beq	$a7,$v1,.L0dae4810
    # Line 1195
    li	$a6,10793
    beql	$a7,$a6,.L0dae4a10
    sd	$ra,1032($sp)
    sd	$s6,1048($sp)
    # Line 1202
    la	$s2,sub_0dae0000
    sd	$ra,1032($sp)
    sd	$t8,696($sp)
    addiu	$s2,$s2,3204
.L0dae21fc:
    sd	$s5,1056($sp)
    ld	$a1,240($sp)
    # Line 1213
    move	$a0,$s1
    move	$t9,$s2
    sll	$s6,$s1,0x2
    sd	$s6,96($sp)
    sd	$s6,360($sp)
    sd	$s6,720($sp)
    sd	$s6,784($sp)
    sd	$s6,776($sp)
    sd	$s6,368($sp)
    sd	$s6,464($sp)
    addu	$s6,$s6,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$s6,144
    # Line 1214
    move	$a0,$s1
    move	$t9,$s2
    ld	$a2,240($sp)
    ld	$a1,464($sp)
    addu	$s5,$s1,$s1
    sd	$s5,712($sp)
    sll	$s5,$s5,0x2
    sd	$s5,440($sp)
    addu	$s5,$s5,$s0
    addu	$a1,$a1,$a2
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$s5,144
    ld	$a2,240($sp)
    # Line 1215
    ld	$a1,440($sp)
    move	$a0,$s1
    move	$t9,$s2
    addu	$a1,$a1,$a2
    addiu	$a2,$s6,288
    bal __glim_SubdivPatchSGIX
    sd	$a2,248($sp)
    sd	$s8,1040($sp)
    sd	$s7,1064($sp)
    # Line 1216
    addiu	$a2,$s5,288
    move	$a0,$s1
    move	$t9,$s2
    ld	$a3,240($sp)
    sll	$a1,$s1,0x2
    subu	$a1,$a1,$s1
    sd	$a1,544($sp)
    sll	$a1,$a1,0x2
    sd	$a1,792($sp)
    sd	$a1,800($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a1,$a1,$a3
    # Line 1217
    move	$a0,$s1
    move	$a2,$s5
    move	$t9,$s2
    sll	$s8,$s1,0x2
    ld	$a1,240($sp)
    sll	$s7,$s8,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a1,$s7,$a1
    # Line 1218
    move	$a0,$s1
    move	$t9,$s2
    ld	$s5,800($sp)
    addiu	$a2,$s0,288
    sd	$a2,176($sp)
    ld	$a3,240($sp)
    sll	$a1,$s1,0x2
    addu	$a1,$a1,$s1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    bal __glim_SubdivPatchSGIX
    sd	$a1,688($sp)
    # Line 1219
    move	$a0,$s1
    move	$t9,$s2
    addiu	$a2,$s6,432
    sd	$a2,352($sp)
    ld	$a3,240($sp)
    sll	$a1,$s1,0x2
    subu	$a1,$a1,$s1
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    bal __glim_SubdivPatchSGIX
    sd	$a1,768($sp)
    # Line 1220
    move	$a0,$s1
    move	$t9,$s2
    addu	$a2,$s5,$s0
    addiu	$a2,$a2,144
    ld	$a3,240($sp)
    sll	$a1,$s1,0x3
    subu	$a1,$a1,$s1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    bal __glim_SubdivPatchSGIX
    sd	$a1,760($sp)
    ld	$a3,872($sp)
    # Line 1223
    lbu	$v0,0($a3)
    sb	$v0,5168($s0)
    # Line 1224
    lbu	$at,1($a3)
    sb	$at,5169($s0)
    # Line 1225
    lbu	$a6,2($a3)
    sb	$a6,5170($s0)
    # Line 1226
    lbu	$v1,3($a3)
    sb	$v1,5171($s0)
    # Line 1227
    lbu	$v0,4($a3)
    sb	$v0,5172($s0)
    # Line 1228
    lbu	$at,4($a3)
    sb	$at,5173($s0)
    # Line 1229
    lbu	$a6,5($a3)
    sb	$a6,5174($s0)
    # Line 1230
    lbu	$v1,6($a3)
    sb	$v1,5175($s0)
    # Line 1231
    lbu	$v0,6($a3)
    sb	$v0,5176($s0)
    # Line 1232
    lbu	$at,6($a3)
    sb	$at,5177($s0)
    # Line 1233
    lbu	$a6,7($a3)
    sb	$a6,5178($s0)
    # Line 1234
    lbu	$a3,7($a3)
    sb	$a3,5179($s0)
    move	$a3,$s0
    # Line 1237
    lbu	$v0,5179($a3)
    lbu	$at,5178($a3)
    lbu	$a6,5177($a3)
    sb	$v0,5211($a3)
    sb	$at,5210($a3)
    sb	$a6,5209($a3)
    lbu	$v1,5176($a3)
    lbu	$v0,5175($a3)
    lbu	$at,5174($a3)
    sb	$v1,5208($a3)
    sb	$v0,5207($a3)
    sb	$at,5206($a3)
    lbu	$a6,5173($a3)
    lbu	$v1,5172($a3)
    lbu	$v0,5171($a3)
    sb	$a6,5205($a3)
    sb	$v1,5204($a3)
    sb	$v0,5203($a3)
    lbu	$at,5170($a3)
    lbu	$a6,5169($a3)
    lbu	$v1,5168($a3)
    sb	$at,5202($a3)
    sb	$a6,5201($a3)
    sb	$v1,5200($a3)
    # Line 1236
    ld	$a5,880($sp)
    ld	$a4,872($sp)
    addiu	$a3,$s0,13
    addiu	$a5,$a5,52
    addiu	$a7,$a4,116
    b	.L0dae2480
    addiu	$a4,$a4,52
.L0dae2450:
    # Line 1244
    sb	$zero,5200($a3)
.L0dae2454:
    # Line 1240
    lbu	$v0,-16($a4)
    sb	$v0,5169($a3)
    # Line 1239
    addiu	$a4,$a4,8
    # Line 1240
    lw	$a6,4($a5)
    li	$v1,1
    li	$at,32
    beq	$a6,$at,.L0dae24a0
    # Line 1239
    addiu	$a5,$a5,8
    # Line 1244
    sb	$zero,5201($a3)
.L0dae2478:
    # Line 1239
    beq	$a4,$a7,.L0dae24a8
    addiu	$a3,$a3,2
.L0dae2480:
    # Line 1240
    lbu	$at,-20($a4)
    sb	$at,5168($a3)
    lw	$v1,0($a5)
    li	$a6,32
    bne	$v1,$a6,.L0dae2450
    li	$v0,1
    # Line 1242
    b	.L0dae2454
    sb	$v0,5200($a3)
.L0dae24a0:
    b	.L0dae2478
    sb	$v1,5201($a3)
.L0dae24a8:
    ld	$a6,880($sp)
    # Line 1253
    lbu	$v0,2($a6)
    # Line 1248
    sw	$a6,-21860($gp)
    # Line 1250
    lbu	$a6,1($a6)
    li	$at,32
    # Line 1253
    xor	$v0,$v0,$at
    # Line 1250
    xor	$a6,$a6,$at
    sltiu	$a6,$a6,1
    # Line 1253
    sltiu	$v0,$v0,1
    sd	$v0,472($sp)
    blez	$s1,.L0dae25a4
    sd	$a6,480($sp)
    addu	$a3,$s7,$s0
    move	$a4,$s0
    move	$t1,$s8
    andi	$t0,$s8,0x3
    ld	$a6,240($sp)
    sll	$a7,$s1,0x3
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a6
    sll	$a5,$s1,0x2
    addu	$a5,$a5,$s1
    sll	$a5,$a5,0x2
    sll	$a5,$a5,0x2
    beqz	$t0,.L0dae2534
    addu	$a5,$a5,$a6
.L0dae2510:
    # Line 1259
    lwc1	$f1,0($a7)
    # Line 1258
    addiu	$a4,$a4,4
    addiu	$a7,$a7,4
    # Line 1259
    swc1	$f1,5228($a4)
    # Line 1258
    addiu	$a5,$a5,4
    # Line 1260
    lwc1	$f0,-4($a5)
    addi	$t0,$t0,-1
    bnez	$t0,.L0dae2510
    swc1	$f0,5372($a4)
.L0dae2534:
    move	$t3,$a5
    move	$t2,$a4
    sra	$at,$t1,0x2
    beqz	$at,.L0dae25a4
    move	$t0,$a7
    move	$a4,$t3
    move	$a7,$t2
    move	$a5,$t0
.L0dae2554:
    # Line 1259
    lwc1	$f1,0($a5)
    swc1	$f1,5232($a7)
    # Line 1260
    lwc1	$f0,0($a4)
    swc1	$f0,5376($a7)
    # Line 1259
    lwc1	$f3,4($a5)
    swc1	$f3,5236($a7)
    # Line 1260
    lwc1	$f2,4($a4)
    swc1	$f2,5380($a7)
    # Line 1259
    lwc1	$f1,8($a5)
    swc1	$f1,5240($a7)
    # Line 1260
    lwc1	$f0,8($a4)
    swc1	$f0,5384($a7)
    # Line 1259
    lwc1	$f3,12($a5)
    # Line 1258
    addiu	$a5,$a5,16
    # Line 1259
    swc1	$f3,5244($a7)
    # Line 1258
    addiu	$a4,$a4,16
    # Line 1260
    lwc1	$f2,-4($a4)
    # Line 1258
    addiu	$a7,$a7,16
    bne	$a7,$a3,.L0dae2554
    # Line 1260
    swc1	$f2,5372($a7)
.L0dae25a4:
    # Line 1264
    ld	$v0,152($sp)
    bltz	$v0,.L0dae3aa0
    sd	$zero,88($sp)
    sd	$s7,808($sp)
    sd	$s4,104($sp)
    sd	$s8,736($sp)
    addiu	$s8,$s0,5232
    sd	$s8,456($sp)
    addiu	$v1,$s4,4
    sd	$v1,112($sp)
    addiu	$v1,$s0,8152
    sd	$v1,816($sp)
    ld	$v1,696($sp)
    addiu	$s8,$s4,16
    sd	$s8,312($sp)
    andi	$s8,$v1,0x10
    sd	$s8,136($sp)
    andi	$s8,$v1,0x40
    ld	$s6,792($sp)
    sd	$s8,120($sp)
    li	$s8,-1
    addu	$s6,$s6,$s0
    sd	$s6,224($sp)
    move	$s6,$s4
    ld	$s6,72($sp)
    addiu	$s5,$s0,4800
    sd	$s5,496($sp)
    addu	$s5,$s6,$s0
    sd	$s5,960($sp)
    addiu	$at,$s0,5376
    sd	$at,448($sp)
    addiu	$at,$s4,12
    sd	$at,280($sp)
    addiu	$at,$s0,8112
    sd	$at,832($sp)
    ld	$at,168($sp)
    addiu	$s5,$s0,5128
    addiu	$v0,$s4,8
    addiu	$at,$at,15
    mult	$at,$s1
    sd	$v0,216($sp)
    ld	$v0,80($sp)
    addiu	$a6,$s0,4656
    sd	$a6,512($sp)
    addu	$a6,$v0,$s0
    addiu	$v0,$v0,-1
    addiu	$at,$s0,144
    sd	$at,184($sp)
    addiu	$at,$s0,576
    sd	$at,208($sp)
    addiu	$at,$s0,1120
    sd	$at,272($sp)
    mflo	$at
    sll	$at,$at,0x2
    sd	$a6,952($sp)
    andi	$a6,$v1,0x800
    sd	$a6,144($sp)
    andi	$a6,$v1,0x20
    andi	$v1,$v1,0x200
    sd	$v1,232($sp)
    addiu	$v1,$s0,756
    sd	$v1,200($sp)
    addiu	$v1,$s0,1372
    sd	$v1,264($sp)
    addiu	$v1,$s0,3756
    sd	$v1,328($sp)
    addiu	$v1,$s0,2672
    addiu	$s6,$s6,-1
    mult	$s6,$s1
    sd	$v1,288($sp)
    sd	$a6,128($sp)
    addiu	$a6,$s0,936
    sd	$a6,192($sp)
    addiu	$a6,$s0,1624
    sd	$a6,256($sp)
    addiu	$a6,$s0,4440
    sd	$a6,320($sp)
    addiu	$a6,$s0,3072
    sd	$a6,336($sp)
    addiu	$a6,$s0,1880
    sd	$a6,296($sp)
    mflo	$a6
    ld	$v1,152($sp)
    sd	$at,344($sp)
    mult	$v0,$s1
    addiu	$v1,$v1,1
    sll	$v1,$v1,0x2
    addiu	$s6,$s0,2276
    sd	$s6,304($sp)
    la	$s6,sub_0dae0000
    addu	$v1,$v1,$s4
    sd	$v1,160($sp)
    addiu	$s6,$s6,3632
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s0
    addiu	$a6,$a6,4656
    sd	$a6,504($sp)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,4800
    b	.L0dae27b4
    sd	$v1,488($sp)
.L0dae2740:
    la	$s4,sub_0dbf0000
    addiu	$s4,$s4,-10584
.L0dae2748:
    ld	$v0,456($sp)
    addiu	$s8,$s8,1
    addiu	$v0,$v0,576
    sd	$v0,456($sp)
    ld	$v1,504($sp)
    ld	$a6,496($sp)
    ld	$v0,160($sp)
    addiu	$v1,$v1,576
    addiu	$a6,$a6,576
    sd	$a6,496($sp)
    ld	$a6,488($sp)
    ld	$at,512($sp)
    sd	$v1,504($sp)
    ld	$v1,88($sp)
    addiu	$at,$at,576
    sd	$at,512($sp)
    ld	$at,448($sp)
    addiu	$v1,$v1,1
    addiu	$a6,$a6,576
    addiu	$at,$at,576
    sd	$at,448($sp)
    ld	$at,104($sp)
    sd	$a6,488($sp)
    sd	$v1,88($sp)
    addiu	$at,$at,4
    beq	$at,$v0,.L0dae3ab0
    sd	$at,104($sp)
.L0dae27b4:
    la	$s7,sub_0dae0000
    ld	$v0,104($sp)
    ld	$a6,112($sp)
    # Line 1269
    ld	$at,184($sp)
    # Line 1266
    beq	$v0,$s4,.L0dae2f04
    # Line 1318
    lw	$t8,-21860($gp)
    # Line 1266
    ld	$v1,104($sp)
    la	$s7,sub_0dae0000
    ld	$v0,216($sp)
    beq	$v1,$a6,.L0dae35c8
    addiu	$s7,$s7,4576
    ld	$at,104($sp)
    ld	$v1,104($sp)
    beq	$at,$v0,.L0dae37c8
    ld	$a6,280($sp)
    ld	$at,104($sp)
    beq	$v1,$a6,.L0dae3930
    ld	$v0,312($sp)
    lw	$a6,24($sp)
    beq	$at,$v0,.L0dae3a44
    # Line 1306
    ld	$v1,104($sp)
    # Line 1266
    lw	$at,20($sp)
    sd	$a6,568($sp)
    # Line 1306
    bne	$v1,$s4,.L0dae2fd4
    sd	$at,576($sp)
.L0dae2818:
    # Line 1309
    lw	$v0,1224($s4)
    sd	$v0,424($sp)
.L0dae2820:
    # Line 1315
    ld	$v1,576($sp)
    ld	$t3,464($sp)
    # Line 1317
    ld	$at,568($sp)
    # Line 1315
    addu	$v0,$t3,$v1
    # Line 1317
    addu	$t3,$t3,$at
    sd	$t3,432($sp)
    sw	$t3,8116($s0)
    # Line 1320
    li	$t3,3
    sd	$v0,600($sp)
    # Line 1315
    sw	$v0,8112($s0)
    # Line 1319
    ld	$v0,440($sp)
    # Line 1310
    ld	$at,104($sp)
    # Line 1316
    sw	$zero,8192($s0)
    # Line 1319
    addu	$v0,$v0,$v1
    sd	$v0,608($sp)
    # Line 1318
    lbu	$a6,1($t8)
    # Line 1310
    lw	$at,1224($at)
    # Line 1319
    sw	$v0,8120($s0)
    # Line 1318
    sw	$a6,8196($s0)
    # Line 1320
    ld	$v1,128($sp)
    lbu	$a6,0($t8)
    sd	$at,648($sp)
    beqz	$v1,.L0dae289c
    sw	$a6,8200($s0)
    # Line 1322
    ld	$t3,440($sp)
    lw	$a6,16($sp)
    addu	$a6,$a6,$t3
    sw	$a6,8124($s0)
    # Line 1323
    lbu	$v1,5($t8)
    li	$t3,4
    sw	$v1,8204($s0)
.L0dae289c:
    ld	$at,72($sp)
    move	$a7,$t8
    # Line 1326
    move	$t1,$s8
    # Line 1323
    blez	$at,.L0dae2920
    move	$a5,$zero
    ld	$t2,72($sp)
    sll	$t0,$t3,0x2
    addu	$t0,$t0,$s0
    move	$a4,$t2
    andi	$v0,$t2,0x1
    addu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    beqz	$v0,.L0dae2914
    addu	$t2,$t2,$s0
    ld	$at,88($sp)
    beqz	$at,.L0dae3a10
    nop
.L0dae28e0:
    # Line 1326
    sll	$v1,$t1,0x3
    addu	$v1,$v1,$t1
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,5232
    sw	$v1,8112($t0)
    # Line 1325
    addiu	$t0,$t0,4
    # Line 1327
    lbu	$v0,12($a7)
    # Line 1325
    addiu	$a7,$a7,1
    addu	$a5,$a5,$s1
    # Line 1327
    sw	$v0,8188($t0)
.L0dae2914:
    sra	$a6,$a4,0x1
    bnez	$a6,.L0dae2e5c
    ld	$at,88($sp)
.L0dae2920:
    # Line 1330
    ld	$at,120($sp)
    ld	$v0,72($sp)
    # Line 1329
    sw	$t3,-21848($gp)
    # Line 1330
    beqz	$at,.L0dae2940
    addu	$t3,$v0,$t3
    lw	$v1,-21840($gp)
    beqz	$v1,.L0dae3808
    # Line 1332
    ld	$a6,568($sp)
.L0dae2940:
    ld	$a6,424($sp)
    # Line 1338
    addiu	$at,$a6,-2
    mult	$at,$s1
    mflo	$v1
    nop
    # Line 1340
    addiu	$a6,$a6,-3
    mult	$a6,$s1
    # Line 1339
    sw	$zero,8232($s0)
    sd	$at,536($sp)
    # Line 1338
    ld	$at,576($sp)
    sd	$a6,672($sp)
    sll	$v1,$v1,0x2
    addu	$a6,$v1,$at
    sw	$a6,8152($s0)
    # Line 1340
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$v0,$at
    sw	$at,8156($s0)
    sd	$a6,584($sp)
    # Line 1341
    lbu	$a6,0($t8)
    sw	$a6,8236($s0)
    # Line 1342
    ld	$a6,568($sp)
    sd	$v1,664($sp)
    sd	$at,632($sp)
    # Line 1344
    addu	$v1,$v1,$a6
    sd	$v1,592($sp)
    # Line 1342
    addu	$v0,$v0,$a6
    sd	$v0,640($sp)
    sw	$v0,8160($s0)
    # Line 1335
    addiu	$v0,$t3,-1
    # Line 1343
    lbu	$at,28($t8)
    # Line 1345
    li	$t3,4
    # Line 1344
    sw	$v1,8164($s0)
    # Line 1343
    sw	$at,8240($s0)
    # Line 1345
    ld	$a6,144($sp)
    lbu	$at,2($t8)
    # Line 1335
    sw	$v0,-21856($gp)
    # Line 1345
    beqz	$a6,.L0dae2a08
    sw	$at,8244($s0)
    ld	$a6,424($sp)
    # Line 1347
    addiu	$a6,$a6,-1
    mult	$a6,$s1
    ld	$a6,576($sp)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    sw	$v1,8168($s0)
    # Line 1348
    lbu	$v0,11($t8)
    li	$t3,5
    sw	$v0,8248($s0)
.L0dae2a08:
    ld	$at,80($sp)
    move	$a7,$t8
    # Line 1351
    move	$t1,$s8
    # Line 1348
    blez	$at,.L0dae2a8c
    move	$a5,$zero
    ld	$t2,80($sp)
    sll	$t0,$t3,0x2
    addu	$t0,$t0,$s0
    move	$a4,$t2
    andi	$v0,$t2,0x1
    addu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    beqz	$v0,.L0dae2a80
    addu	$t2,$t2,$s0
    ld	$at,88($sp)
    beqz	$at,.L0dae3a18
    nop
.L0dae2a4c:
    # Line 1351
    sll	$v1,$t1,0x3
    addu	$v1,$v1,$t1
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,5376
    sw	$v1,8152($t0)
    # Line 1350
    addiu	$t0,$t0,4
    # Line 1352
    lbu	$v0,24($a7)
    # Line 1350
    addiu	$a7,$a7,1
    addu	$a5,$a5,$s1
    # Line 1352
    sw	$v0,8228($t0)
.L0dae2a80:
    sra	$a6,$a4,0x1
    bnez	$a6,.L0dae2eb4
    ld	$a6,88($sp)
.L0dae2a8c:
    # Line 1355
    ld	$at,136($sp)
    ld	$v0,80($sp)
    # Line 1354
    sw	$t3,-21844($gp)
    # Line 1355
    beqz	$at,.L0dae2ab0
    addu	$t3,$v0,$t3
    lw	$v1,-21836($gp)
    # Line 1357
    sll	$at,$t3,0x2
    # Line 1355
    beqz	$v1,.L0dae3824
    # Line 1357
    lw	$v0,16($sp)
.L0dae2ab0:
    # Line 1367
    lw	$s3,16($sp)
    # Line 1363
    ld	$a6,152($sp)
    # Line 1367
    li	$v1,2
    # Line 1360
    addiu	$at,$t3,-1
    # Line 1363
    beqz	$a6,.L0dae3ab0
    # Line 1360
    sw	$at,-21852($gp)
    ld	$v0,104($sp)
    # Line 1363
    beq	$v0,$s4,.L0dae2748
    # Line 1367
    ld	$a6,536($sp)
    li	$s2,2
    slt	$v1,$v1,$a6
    beqz	$v1,.L0dae3844
    sd	$v1,680($sp)
    ld	$at,536($sp)
    ld	$s4,576($sp)
    sll	$s7,$s1,0x2
    addu	$s7,$s7,$s4
    sd	$s8,1104($sp)
    li	$s8,1
    sd	$s8,1008($sp)
    sll	$s8,$s1,0x2
    subu	$s8,$s8,$s1
    sll	$s8,$s8,0x2
    addiu	$at,$at,-1
    lw	$v0,32($sp)
    sd	$s3,616($sp)
    sd	$at,976($sp)
    ld	$at,616($sp)
    sd	$v0,944($sp)
    addu	$v0,$s1,$s1
    sll	$v0,$v0,0x2
    addu	$s3,$v0,$s4
    addu	$s4,$s8,$s4
    addu	$s8,$s8,$at
    addu	$v0,$v0,$at
    sd	$v0,992($sp)
.L0dae2b40:
    # Line 1369
    addu	$a6,$s2,$s2
    sd	$a6,1016($sp)
    addiu	$a6,$a6,-1
    mult	$a6,$s1
    move	$a4,$s8
    move	$a3,$s7
    move	$a2,$s3
    ld	$a1,992($sp)
    move	$a0,$s1
    move	$t9,$s6
    ld	$a6,944($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1376
    ld	$a6,1016($sp)
    mult	$a6,$s1
    move	$a0,$s1
    move	$a1,$s8
    move	$a2,$s3
    ld	$a3,992($sp)
    move	$a4,$s4
    move	$t9,$s6
    ld	$a6,944($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1367
    addiu	$s2,$s2,1
    ld	$v1,360($sp)
    ld	$a6,720($sp)
    ld	$v0,992($sp)
    ld	$at,368($sp)
    addu	$s7,$a6,$s7
    addu	$s8,$v1,$s8
    addu	$v0,$at,$v0
    addu	$s3,$at,$s3
    ld	$at,1008($sp)
    sd	$v0,992($sp)
    ld	$v0,976($sp)
    addu	$s4,$v1,$s4
    addiu	$at,$at,1
    bne	$at,$v0,.L0dae2b40
    sd	$at,1008($sp)
    lw	$t8,-21860($gp)
    ld	$s3,616($sp)
    ld	$s8,1104($sp)
    la	$s7,sub_0dae0000
    ld	$v1,72($sp)
    la	$s4,sub_0dbf0000
    addiu	$s7,$s7,4576
    beqz	$v1,.L0dae2c1c
    addiu	$s4,$s4,-10584
    ld	$at,704($sp)
.L0dae2c18:
    beqz	$at,.L0dae3a00
.L0dae2c1c:
    ld	$v0,120($sp)
    # Line 1389
    beqz	$v0,.L0dae2c2c
    ld	$v1,72($sp)
    beqz	$v1,.L0dae3a20
.L0dae2c2c:
    ld	$a3,432($sp)
.L0dae2c30:
    # Line 1393
    ld	$a4,608($sp)
    ld	$a2,600($sp)
    move	$a0,$s1
    move	$t9,$s7
    lb	$a7,5168($s0)
    lb	$t0,5($t8)
    ld	$a5,944($sp)
    ld	$s2,440($sp)
    lb	$a6,5173($s0)
    sw	$t0,4($sp)
    addu	$a5,$s2,$a5
    addu	$s2,$s2,$s3
    bal __glim_SubdivPatchSGIX
    move	$a1,$s2
    ld	$a6,72($sp)
    ld	$a3,608($sp)
    ld	$v1,72($sp)
    beqz	$a6,.L0dae2c88
    ld	$v0,128($sp)
    ld	$at,704($sp)
    beqz	$at,.L0dae3a08
    nop
.L0dae2c88:
    # Line 1402
    beqz	$v0,.L0dae2c98
    nop
    beqz	$v1,.L0dae3a34
    # Line 1403
    lw	$at,-21840($gp)
.L0dae2c98:
    ld	$a4,432($sp)
    # Line 1406
    ld	$a2,600($sp)
    ld	$a1,568($sp)
    move	$a0,$s1
    move	$t9,$s7
    lb	$a7,5168($s0)
    lw	$t0,-21860($gp)
    lw	$a5,40($sp)
    lb	$a6,5174($s0)
    lb	$t0,6($t0)
    sd	$a5,968($sp)
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    ld	$at,80($sp)
    ld	$a3,496($sp)
    beqz	$at,.L0dae385c
    # Line 1420
    ld	$v0,664($sp)
    addu	$v0,$v0,$s3
    sd	$v0,824($sp)
.L0dae2ce4:
    ld	$a7,424($sp)
    # Line 1424
    addiu	$a7,$a7,-1
    mult	$a7,$s1
    ld	$a4,592($sp)
    ld	$a2,584($sp)
    move	$a0,$s1
    ld	$a6,648($sp)
    mflo	$a1
    lw	$t0,36($sp)
    addiu	$a6,$a6,-1
    mult	$a6,$s1
    lw	$a5,-21860($gp)
    move	$t9,$s7
    sd	$t0,728($sp)
    lb	$a5,11($a5)
    lb	$a7,5169($s0)
    lb	$a6,5179($s0)
    sw	$a5,4($sp)
    ld	$a5,576($sp)
    sll	$a1,$a1,0x2
    sd	$a1,560($sp)
    addu	$a1,$a1,$a5
    sd	$a1,520($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    sd	$a5,552($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    ld	$at,80($sp)
    ld	$t2,824($sp)
    ld	$a3,592($sp)
    beqz	$at,.L0dae3884
    ld	$t1,944($sp)
    ld	$a3,488($sp)
.L0dae2d6c:
    ld	$t3,648($sp)
.L0dae2d70:
    # Line 1437
    addiu	$t3,$t3,-2
    mult	$t3,$s1
    ld	$a4,632($sp)
    ld	$a2,584($sp)
    move	$a1,$t2
    lw	$t0,-21860($gp)
    move	$a0,$s1
    move	$t9,$s7
    lb	$t0,4($t0)
    lb	$a7,5169($s0)
    lb	$a6,5172($s0)
    sw	$t0,4($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    sd	$a5,528($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t1
    lw	$at,-21860($gp)
    # Line 1451
    li	$t1,1
    # Line 1437
    ld	$a6,728($sp)
    lbu	$at,0($at)
    ld	$a5,440($sp)
    li	$v0,32
    bne	$at,$v0,.L0dae2fe4
    addu	$a5,$a5,$a6
    ld	$v1,112($sp)
    ld	$v0,104($sp)
    bne	$v0,$v1,.L0dae3604
    nop
    # Line 1451
    b	.L0dae3604
    lbu	$t1,5169($s0)
.L0dae2dec:
    # Line 1326
    sll	$v0,$t1,0x3
    addu	$v0,$v0,$t1
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$a5
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    addiu	$v0,$v0,5232
    sw	$v0,8112($t0)
    move	$t1,$s8
    # Line 1327
    lbu	$at,12($a7)
    # Line 1325
    addu	$a5,$a5,$s1
    # Line 1323
    beqz	$a6,.L0dae2e70
    # Line 1327
    sw	$at,8192($t0)
.L0dae2e20:
    # Line 1325
    addiu	$a7,$a7,2
    # Line 1326
    sll	$a6,$t1,0x3
    addu	$a6,$a6,$t1
    sll	$a6,$a6,0x4
    addu	$a6,$a6,$a5
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s0
    addiu	$a6,$a6,5232
    sw	$a6,8116($t0)
    # Line 1325
    addiu	$t0,$t0,8
    # Line 1327
    lbu	$v1,11($a7)
    # Line 1325
    addu	$a5,$a5,$s1
    beq	$t0,$t2,.L0dae2920
    # Line 1327
    sw	$v1,8188($t0)
    ld	$at,88($sp)
.L0dae2e5c:
    # Line 1326
    move	$t1,$s8
    # Line 1323
    bnez	$at,.L0dae2dec
    ld	$a6,88($sp)
    # Line 1326
    b	.L0dae2dec
    move	$t1,$zero
.L0dae2e70:
    b	.L0dae2e20
    move	$t1,$zero
.L0dae2e78:
    # Line 1350
    addiu	$a7,$a7,2
    # Line 1351
    sll	$v1,$t1,0x3
    addu	$v1,$v1,$t1
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,5376
    sw	$v1,8156($t0)
    # Line 1350
    addiu	$t0,$t0,8
    # Line 1352
    lbu	$v0,23($a7)
    # Line 1350
    addu	$a5,$a5,$s1
    beq	$t0,$t2,.L0dae2a8c
    # Line 1352
    sw	$v0,8228($t0)
    ld	$a6,88($sp)
.L0dae2eb4:
    # Line 1351
    move	$t1,$s8
    # Line 1348
    beqz	$a6,.L0dae2efc
    ld	$at,88($sp)
.L0dae2ec0:
    # Line 1351
    sll	$v1,$t1,0x3
    addu	$v1,$v1,$t1
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,5376
    sw	$v1,8152($t0)
    move	$t1,$s8
    # Line 1352
    lbu	$v0,24($a7)
    # Line 1350
    addu	$a5,$a5,$s1
    # Line 1348
    bnez	$at,.L0dae2e78
    # Line 1352
    sw	$v0,8232($t0)
    # Line 1351
    b	.L0dae2e78
    move	$t1,$zero
.L0dae2efc:
    b	.L0dae2ec0
    move	$t1,$zero
.L0dae2f04:
    addiu	$s7,$s7,4576
    # Line 1269
    sw	$s0,32($sp)
    # Line 1268
    sw	$s0,16($sp)
    # Line 1269
    sw	$at,36($sp)
    sd	$at,576($sp)
    ld	$v0,176($sp)
    # Line 1268
    sw	$at,20($sp)
    # Line 1269
    ld	$a6,168($sp)
    sw	$v0,40($sp)
    sd	$v0,568($sp)
    beqz	$a6,.L0dae2f3c
    # Line 1268
    sw	$v0,24($sp)
    ld	$at,704($sp)
    # Line 1269
    beqz	$at,.L0dae3a84
.L0dae2f3c:
    ld	$v0,232($sp)
    # Line 1274
    beqz	$v0,.L0dae2f4c
    ld	$v1,168($sp)
    beqz	$v1,.L0dae3a94
.L0dae2f4c:
    ld	$t1,248($sp)
.L0dae2f50:
    # Line 1275
    move	$t2,$s1
.L0dae2f54:
    andi	$t0,$s1,0x3
    blez	$s1,.L0dae2fcc
    ld	$a4,224($sp)
    ld	$a7,464($sp)
    move	$a5,$t1
    beqz	$t0,.L0dae2f88
    addu	$a7,$a7,$t1
.L0dae2f70:
    # Line 1280
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    # Line 1281
    lwc1	$f2,-4($a5)
    addi	$t0,$t0,-1
    bnez	$t0,.L0dae2f70
    swc1	$f2,284($a4)
.L0dae2f88:
    sra	$at,$t2,0x2
    move	$t1,$a4
    beqz	$at,.L0dae2fcc
    move	$t0,$a5
    move	$a4,$t1
    move	$a5,$t0
.L0dae2fa0:
    lwc1	$f2,0($a5)
    swc1	$f2,288($a4)
    lwc1	$f1,4($a5)
    swc1	$f1,292($a4)
    lwc1	$f0,8($a5)
    swc1	$f0,296($a4)
    # Line 1280
    addiu	$a4,$a4,16
    # Line 1281
    lwc1	$f3,12($a5)
    # Line 1280
    addiu	$a5,$a5,16
    bne	$a5,$a7,.L0dae2fa0
    # Line 1281
    swc1	$f3,284($a4)
.L0dae2fcc:
    ld	$v0,104($sp)
    # Line 1306
    beq	$v0,$s4,.L0dae2818
.L0dae2fd4:
    ld	$v1,104($sp)
    # Line 1308
    lw	$v1,1220($v1)
    b	.L0dae2820
    sd	$v1,424($sp)
.L0dae2fe4:
    # Line 1480
    move	$a0,$s1
    ld	$a1,600($sp)
    ld	$a2,608($sp)
    move	$a3,$s2
    ld	$a4,432($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
    # Line 1486
    ld	$a6,680($sp)
    sd	$s3,616($sp)
    beqz	$a6,.L0dae3110
    li	$s2,2
    ld	$at,616($sp)
    sd	$s8,1104($sp)
    sll	$s8,$s1,0x2
    ld	$s4,568($sp)
    addu	$s3,$s1,$s1
    sll	$s3,$s3,0x2
    addu	$s4,$s3,$s4
    sd	$s4,984($sp)
    ld	$s4,576($sp)
    subu	$s8,$s8,$s1
    sll	$s8,$s8,0x2
    addu	$s3,$s3,$s4
    addu	$s4,$s8,$s4
    addu	$s8,$s8,$at
.L0dae3048:
    # Line 1487
    move	$a0,$s1
    move	$a1,$s2
    ld	$a2,616($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a3,576($sp)
    ld	$a4,568($sp)
    addiu	$t9,$t9,4800
    bal __glim_SubdivPatchSGIX
    move	$a5,$s5
    # Line 1492
    addu	$a4,$s2,$s2
    sd	$a4,1016($sp)
    addiu	$a4,$a4,-1
    mult	$a4,$s1
    move	$a2,$s5
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a1,6
    move	$a0,$s1
    addiu	$t9,$t9,4888
    ld	$a4,728($sp)
    mflo	$a3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$a4
    # Line 1496
    ld	$a6,1016($sp)
    mult	$a6,$s1
    move	$a0,$s1
    move	$a1,$s3
    move	$a2,$s4
    move	$a3,$s8
    ld	$a4,984($sp)
    move	$t9,$s6
    ld	$a6,728($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1486
    addiu	$s2,$s2,1
    ld	$a6,368($sp)
    ld	$at,536($sp)
    ld	$v0,360($sp)
    addu	$s3,$a6,$s3
    ld	$v1,984($sp)
    addu	$s8,$v0,$s8
    addu	$s4,$v0,$s4
    addu	$v1,$a6,$v1
    bne	$at,$s2,.L0dae3048
    sd	$v1,984($sp)
    la	$s4,sub_0dbf0000
    ld	$s8,1104($sp)
    addiu	$s4,$s4,-10584
.L0dae3110:
    ld	$v0,112($sp)
    ld	$at,104($sp)
    beq	$at,$v0,.L0dae36c8
.L0dae311c:
    ld	$t1,480($sp)
.L0dae3120:
    # Line 1506
    move	$a0,$s1
    ld	$a1,600($sp)
    ld	$a2,432($sp)
    ld	$a3,568($sp)
    ld	$a4,608($sp)
    move	$t9,$s7
    dsll32	$a7,$t1,0x18
    ld	$a6,968($sp)
    ld	$a5,464($sp)
    lw	$v1,-21860($gp)
    dsra32	$a7,$a7,0x18
    addu	$a5,$a5,$a6
    lb	$v1,1($v1)
    lb	$a6,5168($s0)
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    ld	$v0,112($sp)
    ld	$at,104($sp)
    bne	$at,$v0,.L0dae3174
    ld	$t1,472($sp)
    # Line 1514
    lbu	$t1,5171($s0)
.L0dae3174:
    move	$a0,$s1
    ld	$a1,584($sp)
    ld	$a2,592($sp)
    ld	$a3,640($sp)
    ld	$a4,520($sp)
    move	$t9,$s7
    dsll32	$a7,$t1,0x18
    ld	$a6,968($sp)
    ld	$a5,528($sp)
    lw	$v1,-21860($gp)
    dsra32	$a7,$a7,0x18
    addu	$a5,$a5,$a6
    lb	$v1,2($v1)
    lb	$a6,5169($s0)
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    # Line 1523
    ld	$at,680($sp)
    beqz	$at,.L0dae32d4
    li	$s2,2
    ld	$s3,712($sp)
    sll	$s3,$s3,0x2
    ld	$at,576($sp)
    li	$s7,1
    sd	$s7,1008($sp)
    sd	$s8,1104($sp)
    ld	$s8,536($sp)
    sll	$s7,$s1,0x2
    ld	$s4,544($sp)
    addiu	$s8,$s8,-1
    sd	$s8,976($sp)
    ld	$s8,568($sp)
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$at
    addu	$v0,$s7,$s8
    addu	$s7,$s7,$at
    addu	$s8,$s3,$s8
    addu	$s3,$s3,$at
    sd	$v0,1000($sp)
.L0dae320c:
    # Line 1525
    addu	$a6,$s2,$s2
    sd	$a6,1016($sp)
    addiu	$a6,$a6,-2
    mult	$a6,$s1
    move	$a4,$s8
    move	$a3,$s7
    move	$a2,$s3
    ld	$a1,1000($sp)
    move	$a0,$s1
    move	$t9,$s6
    ld	$a6,968($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1532
    ld	$a6,1016($sp)
    addiu	$a6,$a6,-1
    mult	$a6,$s1
    move	$a0,$s1
    move	$a1,$s8
    move	$a2,$s3
    move	$a3,$s4
    ld	$a4,1000($sp)
    move	$t9,$s6
    ld	$a6,968($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1523
    addiu	$s2,$s2,1
    ld	$v1,360($sp)
    ld	$v0,368($sp)
    addu	$s4,$v1,$s4
    addu	$s3,$v0,$s3
    ld	$at,720($sp)
    ld	$a6,1000($sp)
    addu	$s8,$v0,$s8
    addu	$s7,$at,$s7
    addu	$a6,$at,$a6
    ld	$at,1008($sp)
    ld	$v0,976($sp)
    sd	$a6,1000($sp)
    addiu	$at,$at,1
    bne	$at,$v0,.L0dae320c
    sd	$at,1008($sp)
    la	$s7,sub_0dae0000
    la	$s4,sub_0dbf0000
    ld	$s8,1104($sp)
    addiu	$s7,$s7,4576
    addiu	$s4,$s4,-10584
.L0dae32d4:
    ld	$v0,112($sp)
    ld	$at,104($sp)
    lw	$t1,-21860($gp)
    bne	$at,$v0,.L0dae32f0
    lbu	$t1,28($t1)
    # Line 1540
    b	.L0dae32fc
    lbu	$t2,5170($s0)
.L0dae32f0:
    li	$t2,32
    xor	$t2,$t2,$t1
    sltiu	$t2,$t2,1
.L0dae32fc:
    ld	$a7,648($sp)
    addiu	$a7,$a7,-3
    mult	$a7,$s1
    move	$a0,$s1
    ld	$a1,640($sp)
    ld	$a2,584($sp)
    ld	$a3,632($sp)
    ld	$a4,592($sp)
    move	$t9,$s7
    mfhi	$zero
    dsll32	$a6,$t2,0x18
    dsra32	$a6,$a6,0x18
    dsll32	$t0,$t1,0x18
    dsra32	$t0,$t0,0x18
    lb	$a7,5169($s0)
    sw	$t0,4($sp)
    ld	$t0,968($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    ld	$a4,560($sp)
    ld	$a6,968($sp)
    ld	$a5,552($sp)
    ld	$v0,112($sp)
    ld	$at,104($sp)
    addu	$a5,$a5,$a6
    ld	$a6,568($sp)
    bne	$at,$v0,.L0dae33a8
    addu	$a4,$a4,$a6
    # Line 1554
    move	$a0,$s1
    ld	$a1,592($sp)
    ld	$a2,520($sp)
    ld	$a3,584($sp)
    lw	$t0,-21860($gp)
    move	$t9,$s7
    lb	$a7,5178($s0)
    lb	$t0,10($t0)
    lb	$a6,5171($s0)
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    b	.L0dae33d8
    nop
.L0dae33a8:
    sd	$s8,1104($sp)
    # Line 1562
    move	$a0,$s1
    ld	$a1,592($sp)
    ld	$a2,520($sp)
    ld	$a3,584($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
    la	$s7,sub_0dae0000
    la	$s4,sub_0dbf0000
    ld	$s8,1104($sp)
    addiu	$s7,$s7,4576
    addiu	$s4,$s4,-10584
.L0dae33d8:
    lbu	$a0,5168($s0)
    li	$at,3
    beq	$at,$a0,.L0dae38a0
    lw	$t0,-21856($gp)
.L0dae33e8:
    # Line 1579
    move	$a1,$s1
.L0dae33ec:
    move	$a2,$t0
    ld	$a3,832($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a5,728($sp)
    ld	$a4,464($sp)
    addiu	$t9,$t9,5540
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$a5
    lbu	$a0,5169($s0)
    li	$at,3
    beq	$at,$a0,.L0dae38e8
    lw	$t0,-21852($gp)
.L0dae341c:
    # Line 1591
    move	$a1,$s1
.L0dae3420:
    move	$a2,$t0
    ld	$a3,816($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a5,728($sp)
    ld	$a4,528($sp)
    addiu	$t9,$t9,5540
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$a5
    # Line 1598
    ld	$at,72($sp)
    blez	$at,.L0dae3508
    move	$s2,$zero
    move	$s3,$s0
    ld	$v0,88($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae34f8
    ld	$s4,456($sp)
    # Line 1599
    lbu	$t1,5212($s3)
.L0dae3464:
    lw	$a4,-21856($gp)
    lw	$a3,-21848($gp)
    addiu	$a4,$a4,1
    addu	$a3,$a3,$s2
    addiu	$t0,$a3,1
    div	$zero,$t0,$a4
    move	$a5,$s4
    move	$a0,$s1
    move	$t9,$s7
    # Line 1598
    addiu	$s3,$s3,1
    # Line 1599
    lw	$a1,8112($s0)
    lb	$a6,5168($s0)
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a2,8112($a3)
    lw	$t0,-21860($gp)
    lw	$a3,8108($a3)
    teq	$a4,$zero,0x7
    addu	$t0,$s2,$t0
    lb	$t0,12($t0)
    mfhi	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lw	$a4,8112($a4)
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    # Line 1598
    ld	$a6,960($sp)
    ld	$at,96($sp)
    addiu	$s2,$s2,1
    beq	$s3,$a6,.L0dae3500
    addu	$s4,$at,$s4
    li	$v1,1
    ld	$v0,88($sp)
    bnel	$v0,$v1,.L0dae3464
    # Line 1599
    lbu	$t1,5212($s3)
.L0dae34f8:
    b	.L0dae3464
    lbu	$t1,5180($s3)
.L0dae3500:
    la	$s4,sub_0dbf0000
    addiu	$s4,$s4,-10584
.L0dae3508:
    # Line 1609
    ld	$at,80($sp)
    li	$v1,1
    blez	$at,.L0dae2748
    move	$s2,$zero
    ld	$v0,88($sp)
    move	$s3,$s0
    beq	$v0,$v1,.L0dae35c0
    ld	$s4,448($sp)
    # Line 1610
    lbu	$t1,5224($s3)
.L0dae352c:
    lw	$a4,-21852($gp)
    lw	$a3,-21844($gp)
    addiu	$a4,$a4,1
    addu	$a3,$a3,$s2
    addiu	$t0,$a3,1
    div	$zero,$t0,$a4
    move	$a5,$s4
    move	$a0,$s1
    move	$t9,$s7
    # Line 1609
    addiu	$s3,$s3,1
    # Line 1610
    lw	$a1,8152($s0)
    lb	$a6,5169($s0)
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a2,8152($a3)
    lw	$t0,-21860($gp)
    lw	$a3,8148($a3)
    teq	$a4,$zero,0x7
    addu	$t0,$s2,$t0
    lb	$t0,24($t0)
    mfhi	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lw	$a4,8152($a4)
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    # Line 1609
    ld	$a6,952($sp)
    ld	$at,96($sp)
    addiu	$s2,$s2,1
    beq	$s3,$a6,.L0dae2740
    addu	$s4,$at,$s4
    li	$v1,1
    ld	$v0,88($sp)
    bnel	$v0,$v1,.L0dae352c
    # Line 1610
    lbu	$t1,5224($s3)
.L0dae35c0:
    b	.L0dae352c
    lbu	$t1,5192($s3)
.L0dae35c8:
    # Line 1288
    ld	$at,192($sp)
    # Line 1287
    sw	$s0,16($sp)
    # Line 1288
    sw	$at,40($sp)
    # Line 1287
    ld	$at,176($sp)
    ld	$a6,184($sp)
    # Line 1288
    ld	$v1,200($sp)
    ld	$v0,208($sp)
    # Line 1289
    sw	$a6,48($sp)
    # Line 1288
    sw	$v1,36($sp)
    sw	$v0,32($sp)
    sd	$a6,576($sp)
    # Line 1287
    sw	$a6,20($sp)
    sd	$at,568($sp)
    # Line 1290
    b	.L0dae2fcc
    # Line 1287
    sw	$at,24($sp)
.L0dae3604:
    # Line 1451
    move	$a0,$s1
    ld	$a1,600($sp)
    ld	$a2,608($sp)
    move	$a3,$s2
    ld	$a4,432($sp)
    move	$t9,$s7
    lb	$a6,5168($s0)
    dsll32	$a7,$t1,0x18
    li	$t0,32
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    sd	$s3,616($sp)
    # Line 1460
    ld	$at,680($sp)
    addu	$s3,$s1,$s1
    beqz	$at,.L0dae3110
    li	$s2,2
    sll	$s3,$s3,0x2
    ld	$s4,576($sp)
    ld	$v0,536($sp)
    sll	$s7,$s1,0x2
    addu	$s7,$s7,$s4
    addiu	$v0,$v0,-1
    sd	$s8,1104($sp)
    li	$s8,1
    sd	$s8,1008($sp)
    ld	$s8,568($sp)
    sd	$v0,976($sp)
    ld	$at,672($sp)
    addu	$s8,$s3,$s8
    addu	$s3,$s3,$s4
    addiu	$at,$at,-1
    sd	$at,624($sp)
    ld	$at,616($sp)
    sd	$s8,984($sp)
    sll	$s8,$s1,0x2
    subu	$s8,$s8,$s1
    sll	$s8,$s8,0x2
    addu	$s4,$s8,$s4
    b	.L0dae3760
    addu	$s8,$s8,$at
.L0dae36a8:
    ld	$s8,1104($sp)
    # Line 1486
    ld	$a6,112($sp)
    la	$s7,sub_0dae0000
    ld	$v1,104($sp)
    la	$s4,sub_0dbf0000
    addiu	$s7,$s7,4576
    bne	$v1,$a6,.L0dae311c
    addiu	$s4,$s4,-10584
.L0dae36c8:
    # Line 1506
    b	.L0dae3120
    lbu	$t1,5170($s0)
.L0dae36d0:
    # Line 1468
    ld	$t2,1016($sp)
    mult	$t2,$s1
    move	$a0,$s1
    move	$a1,$s3
    move	$a2,$s4
    move	$a3,$s8
    ld	$a4,984($sp)
    li	$a6,1
    mfhi	$zero
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$t0,32
    sw	$t0,4($sp)
    ld	$t0,728($sp)
    addiu	$t9,$t9,4576
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    # Line 1460
    addiu	$s2,$s2,1
    ld	$a6,720($sp)
    ld	$v1,360($sp)
    addu	$s7,$a6,$s7
    ld	$v0,368($sp)
    ld	$at,984($sp)
    addu	$s8,$v1,$s8
    addu	$s3,$v0,$s3
    addu	$at,$v0,$at
    sd	$at,984($sp)
    ld	$at,1008($sp)
    ld	$v0,976($sp)
    addu	$s4,$v1,$s4
    addiu	$at,$at,1
    beq	$at,$v0,.L0dae36a8
    sd	$at,1008($sp)
.L0dae3760:
    # Line 1461
    move	$a0,$s3
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$s4
    move	$a2,$s7
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    move	$a3,$s5
    # Line 1465
    addu	$a3,$s2,$s2
    sd	$a3,1016($sp)
    addiu	$a3,$a3,-1
    mult	$a3,$s1
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$s5
    move	$a0,$s1
    addiu	$t9,$t9,5400
    ld	$a3,728($sp)
    mflo	$a2
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    ld	$v0,624($sp)
    ld	$at,1008($sp)
    bne	$at,$v0,.L0dae36d0
    # Line 1468
    li	$t1,1
    b	.L0dae36d0
    lbu	$t1,5169($s0)
.L0dae37c8:
    ld	$v1,200($sp)
    # Line 1293
    ld	$v0,272($sp)
    # Line 1294
    sw	$v1,48($sp)
    # Line 1293
    sw	$v0,32($sp)
    ld	$at,256($sp)
    sd	$v1,576($sp)
    ld	$a6,264($sp)
    sw	$at,40($sp)
    # Line 1292
    ld	$at,208($sp)
    # Line 1293
    sw	$a6,36($sp)
    # Line 1292
    ld	$a6,192($sp)
    sw	$v1,20($sp)
    sw	$at,16($sp)
    sd	$a6,568($sp)
    # Line 1295
    b	.L0dae2fcc
    # Line 1292
    sw	$a6,24($sp)
.L0dae3808:
    # Line 1332
    sll	$v1,$t3,0x2
    addu	$v1,$v1,$s0
    sw	$a6,8112($v1)
    # Line 1333
    lbu	$v0,6($t8)
    addiu	$t3,$t3,1
    b	.L0dae2940
    sw	$v0,8192($v1)
.L0dae3824:
    # Line 1357
    addu	$at,$at,$s0
    ld	$v1,664($sp)
    addu	$v0,$v0,$v1
    sw	$v0,8152($at)
    # Line 1358
    lbu	$a6,4($t8)
    addiu	$t3,$t3,1
    b	.L0dae2ab0
    sw	$a6,8232($at)
.L0dae3844:
    # Line 1367
    ld	$a6,72($sp)
    lw	$at,32($sp)
    beqz	$a6,.L0dae2c1c
    sd	$at,944($sp)
    b	.L0dae2c18
    ld	$at,704($sp)
.L0dae385c:
    ld	$v0,136($sp)
    ld	$a3,632($sp)
    # Line 1420
    beqz	$v0,.L0dae3878
    # Line 1423
    ld	$a6,664($sp)
    ld	$v1,80($sp)
    # Line 1420
    beqz	$v1,.L0dae4528
    # Line 1421
    lw	$v1,-21836($gp)
.L0dae3878:
    # Line 1423
    addu	$a6,$a6,$s3
.L0dae387c:
    b	.L0dae2ce4
    sd	$a6,824($sp)
.L0dae3884:
    ld	$at,144($sp)
    # Line 1433
    beqz	$at,.L0dae3898
    ld	$v0,80($sp)
    beqz	$v0,.L0dae4540
    # Line 1434
    lw	$a6,-21836($gp)
.L0dae3898:
    b	.L0dae2d70
    ld	$t3,648($sp)
.L0dae38a0:
    # Line 1562
    move	$t1,$t0
    andi	$at,$t0,0x1
    blez	$t0,.L0dae33e8
    move	$a4,$s0
    move	$a5,$s0
    sll	$a7,$t0,0x2
    beqz	$at,.L0dae38d4
    addu	$a7,$a7,$s0
    lw	$v0,8192($a4)
    li	$v1,32
    beql	$v0,$v1,.L0dae4644
    # Line 1576
    lw	$v0,8112($a4)
.L0dae38d0:
    # Line 1574
    addiu	$a4,$a4,4
.L0dae38d4:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dae3980
    # Line 1562
    lw	$a6,8192($a4)
.L0dae38e0:
    b	.L0dae33ec
    # Line 1579
    move	$a1,$s1
.L0dae38e8:
    move	$t1,$t0
    andi	$at,$t0,0x1
    blez	$t0,.L0dae341c
    move	$a4,$s0
    move	$a5,$s0
    sll	$a7,$t0,0x2
    beqz	$at,.L0dae391c
    addu	$a7,$a7,$s0
    li	$v1,32
    lw	$v0,8232($a4)
    beql	$v0,$v1,.L0dae4650
    # Line 1588
    lw	$v1,8152($a4)
.L0dae3918:
    # Line 1586
    addiu	$a4,$a4,4
.L0dae391c:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dae39c8
    # Line 1579
    lw	$v0,8232($a4)
.L0dae3928:
    b	.L0dae3420
    # Line 1591
    move	$a1,$s1
.L0dae3930:
    ld	$at,264($sp)
    # Line 1298
    ld	$a6,296($sp)
    # Line 1299
    sw	$at,48($sp)
    # Line 1298
    sw	$a6,32($sp)
    ld	$v1,288($sp)
    sd	$at,576($sp)
    ld	$v0,304($sp)
    sw	$v1,40($sp)
    # Line 1297
    ld	$v1,272($sp)
    # Line 1298
    sw	$v0,36($sp)
    # Line 1297
    ld	$v0,256($sp)
    sw	$at,20($sp)
    sw	$v1,16($sp)
    sd	$v0,568($sp)
    # Line 1300
    b	.L0dae2fcc
    # Line 1297
    sw	$v0,24($sp)
.L0dae3970:
    # Line 1574
    addiu	$a4,$a4,8
.L0dae3974:
    beq	$a4,$a7,.L0dae38e0
    nop
    # Line 1562
    lw	$a6,8192($a4)
.L0dae3980:
    li	$at,32
    beq	$a6,$at,.L0dae39a8
    li	$v1,32
.L0dae398c:
    lw	$v0,8196($a4)
    bnel	$v0,$v1,.L0dae3974
    # Line 1574
    addiu	$a4,$a4,8
    # Line 1576
    lw	$a6,8116($a4)
    addiu	$a5,$a5,4
    b	.L0dae3970
    sw	$a6,8108($a5)
.L0dae39a8:
    lw	$at,8112($a4)
    addiu	$a5,$a5,4
    b	.L0dae398c
    sw	$at,8108($a5)
.L0dae39b8:
    # Line 1586
    addiu	$a4,$a4,8
.L0dae39bc:
    beq	$a4,$a7,.L0dae3928
    nop
    # Line 1579
    lw	$v0,8232($a4)
.L0dae39c8:
    li	$v1,32
    beq	$v0,$v1,.L0dae39f0
    li	$at,32
.L0dae39d4:
    lw	$a6,8236($a4)
    bnel	$a6,$at,.L0dae39bc
    # Line 1586
    addiu	$a4,$a4,8
    # Line 1588
    lw	$v0,8156($a4)
    addiu	$a5,$a5,4
    b	.L0dae39b8
    sw	$v0,8148($a5)
.L0dae39f0:
    lw	$v1,8152($a4)
    addiu	$a5,$a5,4
    b	.L0dae39d4
    sw	$v1,8148($a5)
.L0dae3a00:
    # Line 1389
    b	.L0dae2c30
    ld	$a3,512($sp)
.L0dae3a08:
    # Line 1402
    b	.L0dae2c98
    ld	$a3,504($sp)
.L0dae3a10:
    # Line 1326
    b	.L0dae28e0
    move	$t1,$zero
.L0dae3a18:
    # Line 1351
    b	.L0dae2a4c
    move	$t1,$zero
.L0dae3a20:
    # Line 1390
    lw	$a6,-21840($gp)
    bnez	$a6,.L0dae2c30
    ld	$a3,432($sp)
    # Line 1391
    b	.L0dae2c30
    ld	$a3,568($sp)
.L0dae3a34:
    # Line 1403
    bnez	$at,.L0dae2c98
    nop
    # Line 1404
    b	.L0dae2c98
    move	$a3,$s2
.L0dae3a44:
    ld	$v0,304($sp)
    # Line 1303
    ld	$at,336($sp)
    # Line 1304
    sw	$v0,48($sp)
    # Line 1303
    sw	$at,32($sp)
    ld	$a6,320($sp)
    sd	$v0,576($sp)
    ld	$v1,328($sp)
    sw	$a6,40($sp)
    # Line 1302
    ld	$a6,296($sp)
    # Line 1303
    sw	$v1,36($sp)
    # Line 1302
    ld	$v1,288($sp)
    sw	$v0,20($sp)
    sw	$a6,16($sp)
    sd	$v1,568($sp)
    b	.L0dae2fcc
    sw	$v1,24($sp)
.L0dae3a84:
    ld	$t1,344($sp)
    # Line 1274
    ld	$at,240($sp)
    b	.L0dae2f50
    addu	$t1,$t1,$at
.L0dae3a94:
    ld	$t1,352($sp)
    # Line 1276
    b	.L0dae2f54
    # Line 1275
    move	$t2,$s1
.L0dae3aa0:
    # Line 1264
    lw	$v0,52($sp)
    sd	$s7,808($sp)
    sd	$s8,736($sp)
    sd	$v0,648($sp)
.L0dae3ab0:
    ld	$ra,648($sp)
    sd	$s1,88($sp)
    # Line 1625
    addiu	$ra,$ra,-1
    mult	$ra,$s1
    # Line 1623
    sw	$zero,-21832($gp)
    # Line 1625
    move	$s8,$s1
    ld	$s8,1040($sp)
    ld	$s6,1048($sp)
    ld	$s5,1056($sp)
    ld	$s3,1080($sp)
    ld	$s4,1088($sp)
    ld	$s2,1096($sp)
    la	$s7,sub_0dae0000
    ld	$a2,784($sp)
    ld	$a1,776($sp)
    addiu	$s7,$s7,4800
    mflo	$t0
    slt	$v1,$s1,$t0
    beqz	$v1,.L0dae3bb8
    ld	$ra,1032($sp)
    ld	$ra,1032($sp)
    ld	$s8,1040($sp)
    ld	$s6,1048($sp)
    ld	$s5,1056($sp)
    ld	$s3,1080($sp)
    ld	$s4,1088($sp)
    ld	$s2,1096($sp)
    ld	$a2,784($sp)
    ld	$a1,776($sp)
    sll	$a3,$t0,0x2
    subu	$t1,$t0,$s1
    andi	$a7,$t1,0x3
    la	$s7,sub_0dae0000
    lw	$a6,36($sp)
    ld	$a5,88($sp)
    addiu	$s7,$s7,4800
    addu	$a3,$a3,$a6
    subu	$a4,$a5,$s1
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a6
    sll	$a4,$a4,0x2
    beqz	$a7,.L0dae3b74
    addu	$a4,$a4,$s0
.L0dae3b5c:
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    # Line 1626
    lwc1	$f3,-4($a5)
    addi	$a7,$a7,-1
    bnez	$a7,.L0dae3b5c
    swc1	$f3,8268($a4)
.L0dae3b74:
    move	$t0,$a4
    sra	$at,$t1,0x2
    beqz	$at,.L0dae3bb8
    move	$a7,$a5
    move	$a4,$t0
    move	$a5,$a7
.L0dae3b8c:
    lwc1	$f3,0($a5)
    swc1	$f3,8272($a4)
    lwc1	$f2,4($a5)
    swc1	$f2,8276($a4)
    lwc1	$f1,8($a5)
    swc1	$f1,8280($a4)
    # Line 1625
    addiu	$a4,$a4,16
    # Line 1626
    lwc1	$f0,12($a5)
    # Line 1625
    addiu	$a5,$a5,16
    bne	$a5,$a3,.L0dae3b8c
    # Line 1626
    swc1	$f0,8268($a4)
.L0dae3bb8:
    # Line 1629
    c.eq.s	$f30,$f24
    nop
    bc1t	.L0dae3c24
    li	$a4,1
    la	$a6,sub_0dbf0000
    # Line 1631
    ld	$a3,152($sp)
    addiu	$a6,$a6,-10584
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    lw	$a3,1224($a3)
    slti	$v0,$a3,3
    bnez	$v0,.L0dae3c04
    move	$s2,$zero
    ldc1	$f5,_lit8_3fe0000000000000
    addu	$t0,$a1,$s0
    move	$t1,$s0
    move	$a5,$zero
    b	.L0dae4564
    addiu	$t3,$a3,-2
.L0dae3c04:
    # Line 1634
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a0,152($sp)
    addiu	$t9,$t9,31916
    bal __glim_SubdivPatchSGIX
    move	$a1,$zero
    # Line 1635
    li	$a4,2
    ld	$ra,1032($sp)
    ld	$s2,1096($sp)
.L0dae3c24:
    ld	$at,744($sp)
    beqzl	$at,.L0dae439c
    ldc1	$f24,1024($sp)
    # Line 1638
    blez	$a4,.L0dae4378
    sd	$zero,384($sp)
    addiu	$s5,$s0,8152
    sd	$s5,816($sp)
    addiu	$s5,$s0,5128
    addiu	$s8,$s0,10784
    addiu	$s4,$s0,8112
    sd	$s4,832($sp)
    sd	$s8,904($sp)
    la	$s8,sub_0dae0000
    la	$v0,sub_0dbf0000
    ld	$v1,152($sp)
    addiu	$s8,$s8,6536
    addiu	$v0,$v0,-10584
    sll	$a6,$v1,0x2
    addu	$a6,$a6,$v0
    sd	$a6,840($sp)
    ld	$at,544($sp)
    addiu	$s4,$v1,-1
    ld	$s3,720($sp)
    sll	$at,$at,0x2
    sd	$at,920($sp)
    addu	$s3,$s3,$s0
    addiu	$s3,$s3,10784
    sd	$s3,912($sp)
    move	$s3,$v1
    subu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    sll	$at,$s3,0x2
    addu	$at,$at,$v0
    addu	$v1,$v1,$v0
    sd	$v1,928($sp)
    b	.L0dae3cf8
    sd	$at,656($sp)
.L0dae3cb8:
    # Line 1698
    sll	$a3,$a4,0x2
    addu	$a3,$a3,$s0
    addiu	$a3,$a3,10748
.L0dae3cc4:
    move	$a1,$t0
    ld	$a2,816($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 1638
    addiu	$s4,$s4,-1
    ld	$v0,384($sp)
    ld	$a6,656($sp)
    ld	$at,928($sp)
    addiu	$v0,$v0,1
    addiu	$a6,$a6,-4
    sd	$a6,656($sp)
    beq	$a6,$at,.L0dae4378
    sd	$v0,384($sp)
.L0dae3cf8:
    ld	$a4,656($sp)
    # Line 1641
    li	$s2,2
    # Line 1639
    lw	$a4,1224($a4)
    # Line 1641
    move	$v0,$s1
    ld	$at,912($sp)
    # Line 1639
    move	$a6,$a4
    # Line 1641
    slti	$v1,$a4,5
    bnez	$v1,.L0dae3f0c
    sd	$a4,648($sp)
    ld	$v1,720($sp)
    lw	$s6,36($sp)
    sd	$s1,392($sp)
    sd	$v1,400($sp)
    ld	$a6,920($sp)
    sd	$at,376($sp)
    ld	$at,712($sp)
    sd	$a6,408($sp)
    ld	$a6,648($sp)
    sll	$at,$at,0x2
    sd	$at,416($sp)
    addiu	$a6,$a6,-2
    b	.L0dae3dcc
    sd	$a6,936($sp)
.L0dae3d54:
    ld	$v0,384($sp)
.L0dae3d58:
    # Line 1663
    lw	$a6,-21832($gp)
    # Line 1659
    beqz	$v0,.L0dae3ee4
    ld	$a2,376($sp)
.L0dae3d64:
    # Line 1663
    li	$a0,6
    move	$a1,$s5
    bal __glim_SubdivPatchSGIX
    move	$t9,$s8
.L0dae3d74:
    # Line 1641
    ld	$v1,376($sp)
.L0dae3d78:
    ld	$v0,720($sp)
    ld	$at,368($sp)
    ld	$a6,416($sp)
    addu	$v1,$v0,$v1
    addu	$a6,$a6,$at
    ld	$at,400($sp)
    sd	$v1,376($sp)
    ld	$v1,936($sp)
    addu	$at,$at,$v0
    sd	$a6,416($sp)
    ld	$a6,392($sp)
    sd	$at,400($sp)
    ld	$at,360($sp)
    addu	$a6,$a6,$s1
    sd	$a6,392($sp)
    ld	$a6,408($sp)
    addiu	$s2,$s2,1
    slt	$v1,$s2,$v1
    addu	$a6,$a6,$at
    beqz	$v1,.L0dae3f0c
    sd	$a6,408($sp)
.L0dae3dcc:
    lw	$v0,-21860($gp)
    lbu	$v0,0($v0)
    li	$v1,32
    beq	$v0,$v1,.L0dae3e5c
    # Line 1653
    move	$a0,$s1
    move	$a1,$s2
    lw	$a4,40($sp)
    move	$a3,$s6
    lw	$a2,32($sp)
    move	$a5,$s5
    bal __glim_SubdivPatchSGIX
    move	$t9,$s7
    lw	$v1,-21864($gp)
    beqz	$v1,.L0dae3d54
    # Line 1659
    move	$a0,$s1
    lw	$a4,-21832($gp)
    move	$a2,$s5
    # lw $t9, -32712($gp) # &sub_0dae0000
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    ld	$a4,392($sp)
    li	$a1,6
    addiu	$t9,$t9,5840
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
    b	.L0dae3d58
    ld	$v0,384($sp)
.L0dae3e5c:
    # Line 1643
    move	$a3,$s5
    ld	$a0,416($sp)
    ld	$a2,408($sp)
    ld	$a1,400($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    addu	$a2,$a2,$s6
    addu	$a1,$a1,$s6
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s6
    lw	$at,-21864($gp)
    beqz	$at,.L0dae3d74
    # Line 1648
    move	$a2,$s5
    lw	$a4,-21832($gp)
    move	$a1,$s1
    # lw $t9, -32712($gp) # &sub_0dae0000
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    ld	$a4,392($sp)
    li	$a0,1
    addiu	$t9,$t9,6088
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
    b	.L0dae3d78
    # Line 1641
    ld	$v1,376($sp)
.L0dae3ee4:
    # Line 1663
    sll	$a2,$a6,0x3
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a6
    ld	$a6,392($sp)
    addu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s0
    b	.L0dae3d64
    addiu	$a2,$a2,10328
.L0dae3f0c:
    ld	$a6,72($sp)
    la	$s2,sub_0dae0000
    ld	$v1,80($sp)
    # Line 1641
    blez	$a6,.L0dae3f88
    addiu	$s2,$s2,8004
    move	$a5,$zero
    lw	$v0,-21848($gp)
    ld	$t0,72($sp)
    sll	$a7,$v0,0x2
    addu	$a7,$a7,$s0
    move	$a2,$t0
    andi	$at,$t0,0x1
    addu	$t0,$t0,$v0
    sll	$t0,$t0,0x2
    beqz	$at,.L0dae3f7c
    addu	$t0,$t0,$s0
    beqz	$s3,.L0dae4364
    # Line 1672
    move	$a4,$s4
.L0dae3f54:
    # Line 1671
    addiu	$a7,$a7,4
    # Line 1672
    sll	$at,$a4,0x3
    addu	$at,$at,$a4
    sll	$at,$at,0x4
    addu	$at,$at,$a5
    # Line 1671
    addu	$a5,$a5,$s1
    # Line 1672
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    addiu	$at,$at,5232
    sw	$at,8108($a7)
.L0dae3f7c:
    sra	$v0,$a2,0x1
    bnez	$v0,.L0dae41c0
    nop
.L0dae3f88:
    # Line 1674
    lbu	$a0,5168($s0)
    # Line 1671
    ld	$t0,80($sp)
    # Line 1675
    move	$a4,$s4
    # Line 1671
    blez	$v1,.L0dae3ffc
    andi	$a6,$t0,0x1
    lw	$at,-21844($gp)
    move	$a5,$zero
    move	$a2,$t0
    sll	$a7,$at,0x2
    addu	$a7,$a7,$s0
    addu	$t0,$t0,$at
    sll	$t0,$t0,0x2
    beqz	$a6,.L0dae3ff0
    addu	$t0,$t0,$s0
    beqz	$s3,.L0dae4370
    nop
.L0dae3fc8:
    # Line 1674
    addiu	$a7,$a7,4
    # Line 1675
    sll	$at,$a4,0x3
    addu	$at,$at,$a4
    sll	$at,$at,0x4
    addu	$at,$at,$a5
    # Line 1674
    addu	$a5,$a5,$s1
    # Line 1675
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    addiu	$at,$at,5376
    sw	$at,8148($a7)
.L0dae3ff0:
    sra	$v0,$a2,0x1
    bnez	$v0,.L0dae420c
    nop
.L0dae3ffc:
    li	$v1,3
    # Line 1674
    beq	$v1,$a0,.L0dae424c
    lw	$t0,-21856($gp)
.L0dae4008:
    # Line 1679
    lw	$a6,-21864($gp)
.L0dae400c:
    beqz	$a6,.L0dae4060
    # Line 1685
    move	$a1,$s1
    move	$a2,$t0
    # lw $t9, -32712($gp) # &sub_0dae0000
    lw	$a5,-21832($gp)
    ld	$a3,832($sp)
    addiu	$t9,$t9,6288
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$a0,5168($s0)
    lw	$t0,-21856($gp)
.L0dae4060:
    ld	$v0,840($sp)
    ld	$at,656($sp)
    # Line 1686
    lw	$a6,-21832($gp)
    # Line 1685
    bne	$at,$v0,.L0dae4090
    ld	$a3,904($sp)
    # Line 1686
    sll	$a3,$a6,0x3
    subu	$a3,$a3,$a6
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    addiu	$a3,$a3,10328
.L0dae4090:
    move	$a1,$t0
    ld	$a2,832($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    lbu	$a0,5169($s0)
    li	$v1,32
    li	$a6,3
    beq	$a6,$a0,.L0dae4294
    lw	$t0,-21852($gp)
.L0dae40b4:
    # Line 1690
    lw	$at,-21864($gp)
.L0dae40b8:
    beqz	$at,.L0dae4120
    # Line 1696
    ld	$a6,648($sp)
    move	$a1,$s1
    move	$a2,$t0
    addiu	$a6,$a6,-3
    mult	$a6,$s1
    # lw $t9, -32712($gp) # &sub_0dae0000
    lw	$a6,-21832($gp)
    ld	$a3,816($sp)
    addiu	$t9,$t9,6288
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    mflo	$a4
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$a0,5169($s0)
    lw	$t0,-21852($gp)
.L0dae4120:
    ld	$v0,840($sp)
    ld	$a6,648($sp)
    ld	$at,656($sp)
    # Line 1638
    addiu	$s3,$s3,-1
    # Line 1696
    sll	$a4,$a6,0x2
    bne	$at,$v0,.L0dae3cb8
    subu	$a4,$a4,$a6
    # Line 1698
    lw	$a6,-21832($gp)
    sll	$a3,$a6,0x3
    subu	$a3,$a3,$a6
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    b	.L0dae3cc4
    addiu	$a3,$a3,10292
.L0dae4164:
    # Line 1672
    move	$a4,$s4
.L0dae4168:
    sll	$a6,$a4,0x3
    addu	$a6,$a6,$a4
    sll	$a6,$a6,0x4
    addu	$a6,$a6,$a5
    # Line 1671
    addu	$a5,$a5,$s1
    # Line 1672
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s0
    addiu	$a6,$a6,5232
    # Line 1641
    beqz	$s3,.L0dae41d0
    # Line 1672
    sw	$a6,8112($a7)
    move	$a4,$s4
.L0dae4194:
    # Line 1671
    addiu	$a7,$a7,8
    # Line 1672
    sll	$at,$a4,0x3
    addu	$at,$at,$a4
    sll	$at,$at,0x4
    addu	$at,$at,$a5
    # Line 1671
    addu	$a5,$a5,$s1
    # Line 1672
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    addiu	$at,$at,5232
    # Line 1671
    beq	$a7,$t0,.L0dae3f88
    # Line 1672
    sw	$at,8108($a7)
.L0dae41c0:
    # Line 1641
    bnez	$s3,.L0dae4164
    # Line 1672
    move	$a4,$zero
    b	.L0dae4168
    nop
.L0dae41d0:
    move	$a4,$zero
    b	.L0dae4194
    nop
.L0dae41dc:
    # Line 1675
    move	$a4,$s4
.L0dae41e0:
    # Line 1674
    addiu	$a7,$a7,8
    # Line 1675
    sll	$v0,$a4,0x3
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$a5
    # Line 1674
    addu	$a5,$a5,$s1
    # Line 1675
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    addiu	$v0,$v0,5376
    # Line 1674
    beq	$a7,$t0,.L0dae3ffc
    # Line 1675
    sw	$v0,8148($a7)
.L0dae420c:
    # Line 1671
    beqz	$s3,.L0dae4218
    # Line 1675
    move	$a4,$zero
    move	$a4,$s4
.L0dae4218:
    sll	$v1,$a4,0x3
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$a5
    # Line 1674
    addu	$a5,$a5,$s1
    # Line 1675
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,5376
    # Line 1671
    bnez	$s3,.L0dae41dc
    # Line 1675
    sw	$v1,8152($a7)
    move	$a4,$zero
    b	.L0dae41e0
    nop
.L0dae424c:
    # Line 1674
    move	$a2,$t0
    andi	$at,$t0,0x1
    blez	$t0,.L0dae4008
    move	$a4,$s0
    move	$a5,$s0
    sll	$a7,$t0,0x2
    beqz	$at,.L0dae4280
    addu	$a7,$a7,$s0
    lw	$v0,8192($a4)
    li	$v1,32
    beql	$v0,$v1,.L0dae4510
    # Line 1681
    lw	$at,8112($a4)
.L0dae427c:
    # Line 1679
    addiu	$a4,$a4,4
.L0dae4280:
    sra	$a6,$a2,0x1
    bnezl	$a6,.L0dae42f0
    # Line 1674
    lw	$v0,8192($a4)
.L0dae428c:
    b	.L0dae400c
    # Line 1679
    lw	$a6,-21864($gp)
.L0dae4294:
    # Line 1686
    move	$a2,$t0
    andi	$at,$t0,0x1
    blez	$t0,.L0dae40b4
    move	$a4,$s0
    move	$a5,$s0
    sll	$a7,$t0,0x2
    beqz	$at,.L0dae42c4
    addu	$a7,$a7,$s0
    lw	$v0,8232($a4)
    beql	$v0,$v1,.L0dae451c
    # Line 1692
    lw	$v0,8152($a4)
.L0dae42c0:
    # Line 1690
    addiu	$a4,$a4,4
.L0dae42c4:
    sra	$a6,$a2,0x1
    bnezl	$a6,.L0dae4344
    # Line 1686
    lw	$v0,8232($a4)
.L0dae42d0:
    b	.L0dae40b8
    # Line 1690
    lw	$at,-21864($gp)
.L0dae42d8:
    # Line 1681
    lw	$at,8116($a4)
    sw	$at,8108($a5)
    # Line 1679
    addiu	$a4,$a4,8
.L0dae42e4:
    beq	$a4,$a7,.L0dae428c
    nop
    # Line 1674
    lw	$v0,8192($a4)
.L0dae42f0:
    li	$v1,32
    beq	$v0,$v1,.L0dae4310
    li	$at,32
.L0dae42fc:
    lw	$a6,8196($a4)
    bnel	$a6,$at,.L0dae42e4
    # Line 1679
    addiu	$a4,$a4,8
    b	.L0dae42d8
    # Line 1681
    addiu	$a5,$a5,4
.L0dae4310:
    lw	$v0,8112($a4)
    addiu	$a5,$a5,4
    b	.L0dae42fc
    sw	$v0,8108($a5)
.L0dae4320:
    # Line 1692
    lw	$v1,8152($a4)
    sw	$v1,8148($a5)
.L0dae4328:
    # Line 1686
    lw	$a6,8236($a4)
    beql	$a6,$at,.L0dae4358
    # Line 1692
    lw	$a6,8156($a4)
.L0dae4334:
    # Line 1690
    addiu	$a4,$a4,8
    beq	$a4,$a7,.L0dae42d0
    nop
    # Line 1686
    lw	$v0,8232($a4)
.L0dae4344:
    li	$v1,32
    bne	$v0,$v1,.L0dae4328
    li	$at,32
    b	.L0dae4320
    # Line 1692
    addiu	$a5,$a5,4
.L0dae4358:
    addiu	$a5,$a5,4
    b	.L0dae4334
    sw	$a6,8148($a5)
.L0dae4364:
    # Line 1672
    move	$a4,$zero
    b	.L0dae3f54
    nop
.L0dae4370:
    # Line 1675
    b	.L0dae3fc8
    move	$a4,$zero
.L0dae4378:
    ld	$s8,1040($sp)
    ld	$s6,1048($sp)
    ld	$s5,1056($sp)
    # Line 1638
    c.eq.s	$f30,$f24
    ld	$s3,1080($sp)
    ld	$s4,1088($sp)
    bc1f	.L0dae4674
    ld	$s2,1096($sp)
    ldc1	$f24,1024($sp)
.L0dae439c:
    ld	$ra,1032($sp)
    # Line 1702
    blez	$s1,.L0dae447c
    ld	$s7,1064($sp)
    move	$a4,$s0
    sll	$a2,$s1,0x4
    ld	$a6,240($sp)
    ld	$a3,808($sp)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    addu	$a3,$a3,$s0
    ld	$s0,1072($sp)
    ld	$t0,736($sp)
    sll	$a5,$s1,0x2
    subu	$a5,$a5,$s1
    sll	$a5,$a5,0x2
    sll	$a5,$a5,0x2
    andi	$a7,$t0,0x3
    beqz	$a7,.L0dae440c
    addu	$a5,$a5,$a6
.L0dae43e8:
    # Line 1708
    lwc1	$f1,0($a5)
    # Line 1707
    addiu	$a4,$a4,4
    addiu	$a5,$a5,4
    # Line 1708
    swc1	$f1,5228($a4)
    # Line 1707
    addiu	$a2,$a2,4
    # Line 1709
    lwc1	$f0,-4($a2)
    addi	$a7,$a7,-1
    bnez	$a7,.L0dae43e8
    swc1	$f0,5372($a4)
.L0dae440c:
    move	$t2,$a2
    move	$t1,$a4
    sra	$a6,$t0,0x2
    beqz	$a6,.L0dae447c
    move	$a7,$a5
    move	$a2,$t2
    move	$a0,$t1
    move	$a4,$a7
.L0dae442c:
    # Line 1708
    lwc1	$f1,0($a4)
    swc1	$f1,5232($a0)
    # Line 1709
    lwc1	$f0,0($a2)
    swc1	$f0,5376($a0)
    # Line 1708
    lwc1	$f3,4($a4)
    swc1	$f3,5236($a0)
    # Line 1709
    lwc1	$f2,4($a2)
    swc1	$f2,5380($a0)
    # Line 1708
    lwc1	$f1,8($a4)
    swc1	$f1,5240($a0)
    # Line 1709
    lwc1	$f0,8($a2)
    swc1	$f0,5384($a0)
    # Line 1708
    lwc1	$f3,12($a4)
    # Line 1707
    addiu	$a4,$a4,16
    # Line 1708
    swc1	$f3,5244($a0)
    # Line 1707
    addiu	$a2,$a2,16
    # Line 1709
    lwc1	$f2,-4($a2)
    # Line 1707
    addiu	$a0,$a0,16
    bne	$a0,$a3,.L0dae442c
    # Line 1709
    swc1	$f2,5372($a0)
.L0dae447c:
    ld	$at,752($sp)
    # Line 1707
    beqz	$at,.L0dae47b0
    ld	$s0,1072($sp)
.L0dae4488:
    # Line 1712
    move	$a0,$zero
.L0dae448c:
    ld	$v0,168($sp)
    bnez	$v0,.L0dae44f8
    sw	$a0,-21840($gp)
    ld	$v1,768($sp)
    ld	$a6,760($sp)
    lwc1	$f3,0($v1)
    lwc1	$f2,0($a6)
    c.eq.s	$f2,$f3
    nop
    bc1f	.L0dae44f8
    # Line 1713
    ld	$at,768($sp)
    ld	$v0,760($sp)
    lwc1	$f1,4($at)
    lwc1	$f0,4($v0)
    c.eq.s	$f0,$f1
    nop
    bc1f	.L0dae44f8
    ld	$v1,768($sp)
    ld	$a6,760($sp)
    lwc1	$f3,8($v1)
    lwc1	$f2,8($a6)
    c.eq.s	$f2,$f3
    nop
    bc1f	.L0dae44fc
    move	$a0,$zero
    b	.L0dae44fc
    li	$a0,1
.L0dae44f8:
    move	$a0,$zero
.L0dae44fc:
    sw	$a0,-21836($gp)
    # Line 1715
    ld	$s1,848($sp)
    ldc1	$f30,56($sp)
    jr	$ra
    addiu	$sp,$sp,1152
.L0dae4510:
    # Line 1681
    addiu	$a5,$a5,4
    b	.L0dae427c
    sw	$at,8108($a5)
.L0dae451c:
    # Line 1692
    addiu	$a5,$a5,4
    b	.L0dae42c0
    sw	$v0,8148($a5)
.L0dae4528:
    # Line 1421
    bnez	$v1,.L0dae387c
    # Line 1423
    addu	$a6,$a6,$s3
    ld	$a3,664($sp)
    # Line 1422
    addu	$a3,$a3,$s3
    b	.L0dae2ce4
    sd	$a3,824($sp)
.L0dae4540:
    # Line 1434
    bnez	$a6,.L0dae3898
    nop
    # Line 1435
    b	.L0dae2d6c
    ld	$a3,520($sp)
.L0dae4550:
    # Line 1631
    addu	$t0,$a1,$t0
    addiu	$s2,$s2,1
    slt	$at,$s2,$t3
    beqz	$at,.L0dae3c04
    addu	$t1,$a2,$t1
.L0dae4564:
    sra	$a7,$s2,0x1
    move	$t2,$s1
    lw	$a3,48($sp)
    blez	$s1,.L0dae4550
    addu	$a5,$a5,$s1
    addiu	$a7,$a7,1
    mult	$a7,$s1
    move	$a4,$t1
    andi	$at,$s1,0x1
    andi	$a7,$s2,0x1
    mflo	$a6
    sll	$a6,$a6,0x2
    beqz	$at,.L0dae45c4
    addu	$a3,$a3,$a6
    beqz	$a7,.L0dae4634
    lwc1	$f4,0($a3)
    # Line 1632
    lwc1	$f0,4($a3)
    add.s	$f0,$f0,$f4
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    cvt.s.d	$f0,$f0
    swc1	$f0,9640($a4)
.L0dae45bc:
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
.L0dae45c4:
    sra	$at,$t2,0x1
    beqz	$at,.L0dae4550
    nop
    b	.L0dae45e8
    nop
.L0dae45d8:
    swc1	$f4,9644($a4)
.L0dae45dc:
    addiu	$a4,$a4,8
    beq	$a4,$t0,.L0dae4550
    addiu	$a3,$a3,8
.L0dae45e8:
    # Line 1631
    beqz	$a7,.L0dae462c
    lwc1	$f4,0($a3)
    # Line 1632
    lwc1	$f1,4($a3)
    add.s	$f1,$f1,$f4
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f5
    cvt.s.d	$f1,$f1
    swc1	$f1,9640($a4)
.L0dae4608:
    # Line 1631
    beqz	$a7,.L0dae45d8
    lwc1	$f4,4($a3)
    # Line 1632
    lwc1	$f2,8($a3)
    add.s	$f2,$f2,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    cvt.s.d	$f2,$f2
    b	.L0dae45dc
    swc1	$f2,9644($a4)
.L0dae462c:
    b	.L0dae4608
    swc1	$f4,9640($a4)
.L0dae4634:
    b	.L0dae45bc
    swc1	$f4,9640($a4)
.L0dae463c:
    b	.L0dae2100
    # Line 1166
    swc1	$f24,0($a4)
.L0dae4644:
    # Line 1576
    addiu	$a5,$a5,4
    b	.L0dae38d0
    sw	$v0,8108($a5)
.L0dae4650:
    # Line 1588
    addiu	$a5,$a5,4
    b	.L0dae3918
    sw	$v1,8148($a5)
.L0dae465c:
    b	.L0dae2100
    # Line 1170
    swc1	$f24,576($a4)
.L0dae4664:
    b	.L0dae2100
    # Line 1174
    swc1	$f24,1120($a4)
.L0dae466c:
    b	.L0dae2100
    # Line 1178
    swc1	$f24,1880($a4)
.L0dae4674:
    ld	$a0,152($sp)
    # Line 1702
    lw	$a1,-21832($gp)
    ldc1	$f24,1024($sp)
    ld	$s8,1040($sp)
    ld	$s6,1048($sp)
    ld	$s5,1056($sp)
    ld	$s7,1064($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$s3,1080($sp)
    ld	$s4,1088($sp)
    addiu	$t9,$t9,32220
    bal __glim_SubdivPatchSGIX
    ld	$s2,1096($sp)
    b	.L0dae439c
    ldc1	$f24,1024($sp)
.L0dae46b0:
    b	.L0dae2100
    # Line 1182
    swc1	$f24,1880($a4)
.L0dae46b8:
    # Line 1146
    sll	$a3,$s1,0x2
    sll	$a3,$a3,0x2
    ld	$a6,240($sp)
    sll	$a2,$s1,0x2
    addu	$a2,$a2,$s1
    sll	$a2,$a2,0x2
    addu	$a3,$a3,$a6
    addu	$a2,$a2,$a6
    lwc1	$f0,0($a2)
    lwc1	$f3,0($a3)
    c.eq.s	$f3,$f0
    nop
    bc1fl	.L0dae203c
    # Line 1155
    move	$a2,$zero
    lwc1	$f1,4($a3)
    lwc1	$f2,4($a2)
    c.eq.s	$f1,$f2
    nop
    bc1fl	.L0dae203c
    move	$a2,$zero
    lwc1	$f3,8($a3)
    lwc1	$f0,8($a2)
    c.eq.s	$f3,$f0
    nop
    bc1f	.L0dae203c
    move	$a2,$zero
    b	.L0dae203c
    li	$a2,1
.L0dae4728:
    sll	$a3,$s1,0x2
    sll	$a3,$a3,0x2
    ld	$at,240($sp)
    sll	$a6,$s1,0x3
    subu	$a6,$a6,$s1
    sll	$a6,$a6,0x2
    addu	$a3,$a3,$at
    addu	$a6,$a6,$at
    lwc1	$f2,0($a6)
    lwc1	$f1,0($a3)
    c.eq.s	$f1,$f2
    nop
    bc1f	.L0dae2048
    sd	$a6,760($sp)
    # Line 1156
    ld	$a6,760($sp)
    lwc1	$f3,4($a3)
    lwc1	$f0,4($a6)
    c.eq.s	$f3,$f0
    nop
    bc1f	.L0dae2048
    ld	$at,760($sp)
    lwc1	$f1,8($a3)
    lwc1	$f2,8($at)
    c.eq.s	$f1,$f2
    nop
    bc1fl	.L0dae204c
    sd	$s2,1096($sp)
    sd	$s2,1096($sp)
    sd	$s3,1080($sp)
    sd	$s4,1088($sp)
    sd	$s0,1072($sp)
    sdc1	$f24,1024($sp)
    b	.L0dae2060
    li	$a3,1
.L0dae47b0:
    # Line 1707
    ld	$v0,768($sp)
    ld	$v1,688($sp)
    lwc1	$f0,0($v0)
    lwc1	$f3,0($v1)
    c.eq.s	$f3,$f0
    nop
    bc1f	.L0dae4488
    # Line 1712
    ld	$a6,768($sp)
    ld	$at,688($sp)
    lwc1	$f2,4($a6)
    lwc1	$f1,4($at)
    c.eq.s	$f1,$f2
    nop
    bc1f	.L0dae4488
    ld	$v0,768($sp)
    ld	$v1,688($sp)
    lwc1	$f0,8($v0)
    lwc1	$f3,8($v1)
    c.eq.s	$f3,$f0
    nop
    bc1f	.L0dae448c
    move	$a0,$zero
    b	.L0dae448c
    li	$a0,1
.L0dae4810:
    sd	$ra,1032($sp)
    sd	$t8,696($sp)
    sd	$s6,1048($sp)
    # Line 1194
    lui	$s6,0xff
    sdc1	$f28,1112($sp)
    ldc1	$f28,_lit8_3f70101010101010
    sll	$v1,$s1,0x2
    sd	$s7,1064($sp)
    # Line 1193
    move	$s7,$s1
    # Line 1194
    li	$s1,7
    li	$v0,7
    sd	$v1,888($sp)
    sd	$s8,1040($sp)
    ld	$at,240($sp)
    la	$s8,sub_0dae0000
    sw	$v0,5544($t9)
    addiu	$s2,$at,644
    addiu	$s8,$s8,3336
    addiu	$a6,$at,-28
    sd	$a6,64($sp)
    sd	$s5,1056($sp)
    sll	$s5,$s7,0x2
    subu	$s5,$s5,$s7
    sll	$s5,$s5,0x3
    subu	$s5,$s5,$s7
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$at
.L0dae487c:
    # Line 1196
    move	$a0,$s7
    move	$a1,$s5
    move	$a2,$s2
    bal __glim_SubdivPatchSGIX
    move	$t9,$s8
    # Line 1197
    lwc1	$f5,12($s2)
    trunc.w.s	$f5,$f5
    mfc1	$t0,$f5
    nop
    andi	$t2,$t0,0xff
    dmtc1	$t2,$f3
    nop
    cvt.s.l	$f3,$f3
    srl	$t3,$t0,0x18
    dmtc1	$t3,$f4
    nop
    cvt.s.l	$f4,$f4
    and	$t1,$s6,$t0
    srl	$t1,$t1,0x10
    dmtc1	$t1,$f2
    nop
    cvt.s.l	$f2,$f2
    andi	$t0,$t0,0xff00
    srl	$t0,$t0,0x8
    dmtc1	$t0,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f28
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f28
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f28
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f28
    # Line 1196
    move	$a0,$s7
    move	$t9,$s8
    # Line 1197
    cvt.s.d	$f3,$f3
    # Line 1195
    addiu	$s2,$s2,-28
    ld	$a7,888($sp)
    # Line 1197
    cvt.s.d	$f4,$f4
    # Line 1196
    move	$a2,$s2
    # Line 1195
    subu	$s5,$s5,$a7
    # Line 1197
    cvt.s.d	$f2,$f2
    # Line 1196
    move	$a1,$s5
    # Line 1197
    swc1	$f4,40($s2)
    cvt.s.d	$f1,$f1
    swc1	$f3,52($s2)
    swc1	$f2,44($s2)
    # Line 1196
    bal __glim_SubdivPatchSGIX
    # Line 1197
    swc1	$f1,48($s2)
    lwc1	$f0,12($s2)
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    andi	$at,$v1,0xff
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    srl	$v0,$v1,0x18
    dmtc1	$v0,$f3
    nop
    cvt.s.l	$f3,$f3
    and	$a6,$s6,$v1
    srl	$a6,$a6,0x10
    dmtc1	$a6,$f1
    nop
    cvt.s.l	$f1,$f1
    andi	$v1,$v1,0xff00
    srl	$v1,$v1,0x8
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f28
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f28
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f28
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f28
    cvt.s.d	$f2,$f2
    # Line 1195
    addiu	$s2,$s2,-28
    # Line 1197
    cvt.s.d	$f3,$f3
    # Line 1195
    ld	$v0,888($sp)
    ld	$at,64($sp)
    # Line 1197
    cvt.s.d	$f1,$f1
    # Line 1195
    subu	$s5,$s5,$v0
    # Line 1197
    swc1	$f3,40($s2)
    cvt.s.d	$f0,$f0
    swc1	$f2,52($s2)
    swc1	$f1,44($s2)
    # Line 1195
    bne	$s2,$at,.L0dae487c
    # Line 1197
    swc1	$f0,48($s2)
    ldc1	$f28,1112($sp)
    ld	$s7,1064($sp)
    ld	$s5,1056($sp)
    # Line 1195
    la	$s2,sub_0dae0000
    ld	$s8,1040($sp)
    b	.L0dae21fc
    addiu	$s2,$s2,3204
.L0dae4a10:
    sd	$t8,696($sp)
    sd	$s6,1048($sp)
    # Line 1201
    lui	$s6,0xff
    sdc1	$f28,1112($sp)
    ldc1	$f28,_lit8_3f70101010101010
    sd	$s1,864($sp)
    sll	$v1,$s1,0x2
    # Line 1200
    move	$v0,$s1
    # Line 1201
    li	$s1,9
    sd	$s7,1064($sp)
    sd	$s8,1040($sp)
    la	$s2,sub_0dae0000
    ld	$at,240($sp)
    sd	$v1,888($sp)
    addiu	$s2,$s2,3204
    addiu	$s8,$at,828
    addiu	$a6,$at,-20
    sd	$a6,856($sp)
    sd	$s8,896($sp)
    addiu	$s7,$s8,28
    addiu	$s8,$s8,16
    sd	$s5,1056($sp)
    li	$s5,9
    sw	$s5,5544($t9)
    sll	$s5,$v0,0x2
    subu	$s5,$s5,$v0
    sll	$s5,$s5,0x3
    subu	$s5,$s5,$v0
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$at
.L0dae4a88:
    ld	$a0,864($sp)
    # Line 1203
    move	$a1,$s5
    ld	$a2,896($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    # Line 1204
    move	$a1,$s7
    # lw $t9, -22932($gp) # &bcopy
    move	$a0,$s8
    # Line 1202
    addiu	$s8,$s8,-36
    # Line 1204
    jal	bcopy
    li	$a2,2
    ld	$v0,896($sp)
    # Line 1205
    lwc1	$f1,12($v0)
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f1
    nop
    andi	$v1,$a6,0xff
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    srl	$at,$a6,0x18
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    and	$at,$s6,$a6
    srl	$at,$at,0x10
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    andi	$a6,$a6,0xff00
    srl	$a6,$a6,0x8
    dmtc1	$a6,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f28
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f28
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f28
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f28
    # Line 1202
    addiu	$s7,$s7,-36
    # Line 1205
    cvt.s.d	$f3,$f3
    # Line 1202
    addiu	$v0,$v0,-36
    ld	$v1,888($sp)
    # Line 1205
    cvt.s.d	$f0,$f0
    sd	$v0,896($sp)
    # Line 1202
    subu	$s5,$s5,$v1
    # Line 1205
    cvt.s.d	$f2,$f2
    # Line 1202
    ld	$at,856($sp)
    # Line 1205
    swc1	$f0,48($v0)
    cvt.s.d	$f1,$f1
    swc1	$f3,60($v0)
    swc1	$f2,52($v0)
    # Line 1202
    bne	$s8,$at,.L0dae4a88
    # Line 1205
    swc1	$f1,56($v0)
    ldc1	$f28,1112($sp)
    ld	$s7,1064($sp)
    ld	$s5,1056($sp)
    b	.L0dae21fc
    ld	$s8,1040($sp)
.end InitSubdivision

# Function: DoRow
# Declared: Line 1719 (Source lines: 1720-2263)
# Address: 0x0dae4b80 - 0x0dae6cdc (Size: 8540 bytes, Frame: 240)
.ent DoRow
DoRow:
    # Line 1720
    addiu	$sp,$sp,-624
    sd	$s1,384($sp)
    move	$s1,$a0
    # Line 1738
    li	$t8,32
    lw	$t1,-21860($gp)
    # Line 1722
    lw	$a5,__glCurrentContext
    sd	$s0,376($sp)
    sd	$s3,392($sp)
    # Line 1724
    lw	$s3,5544($a5)
    # Line 1725
    lw	$a2,5572($a5)
    # Line 1726
    lw	$s0,5556($a5)
    # Line 1736
    sll	$a4,$a0,0x2
    addu	$a3,$a4,$a1
    lw	$t0,0($a3)
    # Line 1727
    lw	$a7,5560($a5)
    # Line 1728
    lbu	$a5,5577($a5)
    # Line 1736
    addiu	$t0,$t0,1
    sw	$t0,0($a3)
    sd	$t0,232($sp)
    # Line 1741
    lbu	$t9,2($t1)
    # Line 1738
    lbu	$t3,1($t1)
    # Line 1736
    move	$at,$t0
    # Line 1741
    xor	$t9,$t9,$t8
    # Line 1738
    xor	$t8,$t8,$t3
    # Line 1741
    sltiu	$t9,$t9,1
    # Line 1745
    beqz	$a0,.L0dae545c
    # Line 1738
    sltiu	$t8,$t8,1
    # Line 1745
    li	$t2,3
    li	$a0,1
    beq	$s1,$a0,.L0dae5fb4
    li	$at,2
    beql	$s1,$at,.L0dae6078
    # Line 1812
    lw	$a6,-4($a3)
    # Line 1745
    beq	$s1,$t2,.L0dae6164
    li	$v0,4
    sd	$s6,576($sp)
    sd	$s8,536($sp)
    sd	$s7,552($sp)
    beq	$s1,$v0,.L0dae6234
    sd	$s5,568($sp)
    sd	$s2,560($sp)
    lw	$s7,28($sp)
    la	$s8,sub_0dbf0000
    lw	$s5,32($sp)
    lw	$s6,16($sp)
    addiu	$s8,$s8,17296
.L0dae4c38:
    # Line 1834
    la	$t0,sub_0dbf0000
    # Line 1835
    ld	$v0,232($sp)
    # Line 1834
    addiu	$t0,$t0,-10584
    addu	$t0,$a4,$t0
    # Line 1835
    lw	$a1,1224($t0)
    sd	$t0,344($sp)
    # Line 1834
    lw	$t0,1220($t0)
    # Line 1835
    move	$a0,$a1
    addiu	$at,$a1,-1
    bne	$at,$v0,.L0dae4f0c
    # Line 1834
    move	$s2,$t0
    # Line 1835
    beqz	$s0,.L0dae5f38
    # Line 1843
    addiu	$v1,$s0,-1
    mult	$v1,$s3
    li	$at,1
    sll	$v0,$s3,0x2
    sd	$v0,280($sp)
    sll	$a6,$s1,0x3
    addu	$a6,$a6,$s1
    sll	$a6,$a6,0x4
    mflo	$a3
    addu	$a3,$a3,$a6
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s8
    # Line 1847
    beq	$s1,$at,.L0dae5f64
    # Line 1843
    addiu	$a3,$a3,4656
    sd	$a7,240($sp)
.L0dae4ca4:
    sd	$a2,248($sp)
    sd	$ra,528($sp)
    sd	$a0,256($sp)
    sd	$a5,328($sp)
    # Line 1849
    lbu	$t2,5208($s8)
.L0dae4cb8:
    move	$a0,$s3
    ld	$s0,240($sp)
    lb	$a6,5170($s8)
    dsll32	$a7,$t2,0x18
    dsra32	$a7,$a7,0x18
    addu	$a4,$s3,$s3
    sd	$a4,320($sp)
    sll	$a4,$a4,0x2
    ld	$a1,280($sp)
    addu	$a4,$a4,$s7
    lb	$ra,8($t1)
    addu	$a5,$a1,$s6
    # lw $t9, -32712($gp) # &sub_0dae0000
    addu	$a2,$a1,$s5
    sw	$ra,4($sp)
    addiu	$t9,$t9,4576
    bal __glim_SubdivPatchSGIX
    addu	$a1,$a1,$s7
    la	$t1,sub_0dae0000
    beqz	$s0,.L0dae4d14
    addiu	$t1,$t1,4576
    ld	$at,328($sp)
    beqz	$at,.L0dae5f80
.L0dae4d14:
    ld	$v0,248($sp)
    # Line 1863
    andi	$v0,$v0,0x400
    beqz	$v0,.L0dae4d2c
    # Line 1867
    addiu	$at,$s2,-2
    # Line 1863
    beqz	$s0,.L0dae6434
    # Line 1867
    addiu	$at,$s2,-2
.L0dae4d2c:
    mult	$at,$s3
    lw	$a3,24($sp)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$a3,$a3,$t2
.L0dae4d40:
    li	$v0,1
    # Line 1864
    beq	$s1,$v0,.L0dae5fac
.L0dae4d48:
    # Line 1869
    lbu	$t3,5209($s8)
.L0dae4d4c:
    addiu	$s1,$s2,-3
    mult	$s1,$s3
    ld	$a5,256($sp)
    mflo	$a2
    nop
    addiu	$a5,$a5,-3
    mult	$a5,$s3
    addu	$a1,$t2,$s7
    move	$a0,$s3
    lw	$a4,-21860($gp)
    move	$t9,$t1
    lb	$a6,5171($s8)
    lb	$a4,9($a4)
    mfhi	$zero
    dsll32	$a7,$t3,0x18
    dsra32	$a7,$a7,0x18
    sw	$a4,4($sp)
    sll	$a2,$a2,0x2
    addu	$a4,$a2,$s7
    addu	$a2,$a2,$s5
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    sd	$s7,408($sp)
    sd	$s5,80($sp)
    sd	$s2,40($sp)
    sd	$s1,312($sp)
    # Line 1880
    li	$s0,1
    ld	$ra,528($sp)
    slti	$a6,$s2,5
    bnez	$a6,.L0dae4ee8
    ld	$s8,536($sp)
    li	$s8,2
    sll	$s5,$s3,0x2
    sd	$s5,488($sp)
    la	$s5,sub_0dae0000
    sll	$s7,$s3,0x2
    sd	$s7,472($sp)
    ld	$s1,320($sp)
    ld	$at,80($sp)
    ld	$v0,408($sp)
    sll	$s1,$s1,0x2
    addu	$s7,$s1,$at
    addu	$s1,$s1,$v0
    addiu	$s5,$s5,3632
    sd	$s4,544($sp)
    ld	$s2,312($sp)
    sll	$s4,$s3,0x2
    sd	$s4,496($sp)
    addiu	$s2,$s2,1
    sd	$s2,464($sp)
    sll	$s2,$s3,0x2
    addu	$s4,$s2,$v0
    addu	$s2,$s2,$at
    sll	$at,$s3,0x2
    subu	$at,$at,$s3
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    sd	$at,504($sp)
.L0dae4e3c:
    # Line 1882
    addu	$a6,$s0,$s0
    mult	$a6,$s3
    move	$a4,$s7
    move	$a3,$s4
    move	$a2,$s1
    move	$a1,$s2
    move	$a0,$s3
    move	$t9,$s5
    sd	$a6,512($sp)
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    # Line 1880
    addiu	$s8,$s8,1
    # Line 1889
    ld	$a6,512($sp)
    addiu	$a6,$a6,1
    mult	$a6,$s3
    move	$a0,$s3
    move	$a1,$s7
    move	$a2,$s1
    ld	$a3,504($sp)
    move	$a4,$s2
    move	$t9,$s5
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    # Line 1880
    ld	$a6,488($sp)
    addiu	$s0,$s0,1
    addu	$s1,$a6,$s1
    ld	$at,496($sp)
    ld	$v0,504($sp)
    ld	$v1,472($sp)
    addu	$s2,$at,$s2
    addu	$s4,$at,$s4
    ld	$at,464($sp)
    addu	$s7,$a6,$s7
    addu	$v0,$v1,$v0
    bne	$s8,$at,.L0dae4e3c
    sd	$v0,504($sp)
    ld	$ra,528($sp)
    ld	$s8,536($sp)
    ld	$s4,544($sp)
.L0dae4ee8:
    # Line 1896
    ld	$s0,376($sp)
    ld	$s1,384($sp)
    ld	$s2,560($sp)
    ld	$s3,392($sp)
    ld	$s5,568($sp)
    ld	$s6,576($sp)
    ld	$s7,552($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0dae4f0c:
    addiu	$at,$a0,-2
    mult	$at,$s3
    addiu	$v0,$a1,-2
    sd	$s4,544($sp)
    sll	$s4,$s3,0x2
    sd	$s4,424($sp)
    sd	$s4,488($sp)
    move	$a4,$s4
    sd	$s4,496($sp)
    move	$at,$s4
    sd	$s4,280($sp)
    ld	$v1,232($sp)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s6
    bne	$v0,$v1,.L0dae50fc
    sd	$a6,288($sp)
    andi	$v0,$a2,0x100
    beqz	$s0,.L0dae6470
    sd	$v0,208($sp)
    sd	$s5,80($sp)
    sd	$a7,240($sp)
    sd	$a2,248($sp)
    sd	$ra,528($sp)
    sd	$a0,256($sp)
    sd	$a4,272($sp)
    # Line 1905
    sll	$v0,$s3,0x2
    sd	$v0,280($sp)
    addu	$v0,$v0,$s5
    sd	$v0,304($sp)
    addu	$at,$s3,$s3
    sll	$at,$at,0x2
    sd	$at,168($sp)
    addu	$at,$at,$s7
    sd	$at,200($sp)
    sll	$t3,$s1,0x3
    addu	$t3,$t3,$s1
    sll	$t3,$t3,0x6
    addu	$t3,$t3,$s8
    addiu	$t3,$t3,4656
.L0dae4fac:
    # Line 1910
    move	$a5,$s6
    move	$a4,$t3
    move	$a1,$s7
    move	$a0,$s3
    lb	$a7,5170($s8)
    lw	$t0,24($sp)
    lb	$a6,5175($s8)
    lb	$t8,7($t1)
    sd	$t0,72($sp)
    # Line 1909
    la	$s5,sub_0dae0000
    # Line 1910
    ld	$a3,280($sp)
    sw	$t8,4($sp)
    # Line 1909
    addiu	$s5,$s5,4576
    # Line 1910
    addu	$a2,$a3,$s7
    addu	$a3,$a3,$t0
    sd	$a2,184($sp)
    sd	$a3,224($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    li	$v0,32
    li	$a0,4
    slt	$a0,$a0,$s2
    lw	$at,-21860($gp)
    ld	$a6,168($sp)
    ld	$v1,72($sp)
    lbu	$at,3($at)
    addu	$a5,$a6,$s6
    addu	$a6,$a6,$v1
    bne	$at,$v0,.L0dae57c0
    sd	$a6,192($sp)
    li	$v0,1
    beql	$s1,$v0,.L0dae6778
    sd	$a0,160($sp)
    sd	$a0,160($sp)
    # Line 1922
    li	$t1,1
.L0dae5038:
    sd	$s0,264($sp)
    move	$a0,$s3
    ld	$a1,184($sp)
    ld	$a2,200($sp)
    ld	$a3,192($sp)
    ld	$a4,304($sp)
    move	$t9,$s5
    lb	$a6,5170($s8)
    dsll32	$a7,$t1,0x18
    li	$t0,32
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    # Line 1931
    ld	$at,160($sp)
    beqz	$at,.L0dae6754
    li	$s0,2
    sd	$s1,88($sp)
    sll	$s1,$s3,0x2
    ld	$s8,256($sp)
    subu	$s1,$s1,$s3
    sll	$s1,$s1,0x2
    addiu	$s8,$s8,-2
    sd	$s2,40($sp)
    sd	$s4,592($sp)
    move	$s4,$s2
    addiu	$s4,$s2,-2
    addu	$s2,$s3,$s3
    sll	$s2,$s2,0x2
    la	$at,sub_0dbf0000
    sd	$s4,144($sp)
    sd	$s7,408($sp)
    addiu	$at,$at,17296
    addiu	$at,$at,5128
    sd	$at,480($sp)
    ld	$at,408($sp)
    addiu	$s4,$s4,1
    sll	$s7,$s3,0x2
    addu	$s7,$s7,$at
    sd	$s7,456($sp)
    ld	$s7,80($sp)
    sd	$s4,400($sp)
    addu	$s4,$s2,$at
    addu	$s2,$s2,$s7
    ld	$s7,72($sp)
    sd	$s8,176($sp)
    li	$s8,3
    addu	$s7,$s1,$s7
    b	.L0dae63b0
    addu	$s1,$s1,$at
.L0dae50fc:
    sd	$a0,256($sp)
    sd	$a3,352($sp)
    ld	$s4,280($sp)
    sd	$t8,584($sp)
    sd	$t9,336($sp)
    # Line 2100
    addu	$s4,$s4,$s6
    ld	$v1,232($sp)
    sd	$s4,296($sp)
    ld	$s4,544($sp)
    sra	$a6,$v1,0x1f
    xor	$v0,$v1,$a6
    sra	$v1,$v1,0x1f
    subu	$v0,$v0,$a6
    andi	$v0,$v0,0x1
    xor	$v0,$v0,$v1
    subu	$v0,$v0,$v1
    addiu	$v1,$s2,-2
    beqz	$v0,.L0dae6790
    sd	$v1,144($sp)
    sd	$s7,408($sp)
    sd	$s5,80($sp)
    # Line 2108
    move	$s0,$zero
    lw	$v0,24($sp)
    slti	$at,$t0,2
    bnez	$at,.L0dae521c
    sd	$v0,72($sp)
    sd	$ra,528($sp)
    sd	$s2,40($sp)
    ld	$s2,80($sp)
    sll	$s1,$s3,0x2
    ld	$at,408($sp)
    ld	$s7,72($sp)
    la	$s5,sub_0dae0000
    move	$s4,$at
    addu	$s7,$s1,$s7
    ld	$s8,40($sp)
    addu	$s1,$s1,$at
    addiu	$s5,$s5,3632
    sd	$s8,416($sp)
    li	$s8,1
.L0dae519c:
    # Line 2109
    addu	$a6,$s0,$s0
    mult	$a6,$s3
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$a3,$s7
    move	$a4,$s2
    move	$t9,$s5
    # Line 2108
    addiu	$s8,$s8,1
    # Line 2109
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    ld	$v1,496($sp)
    # Line 2108
    addiu	$s0,$s0,1
    ld	$v0,488($sp)
    addu	$s2,$v1,$s2
    ld	$at,416($sp)
    addu	$s4,$v1,$s4
    addu	$s1,$v0,$s1
    slt	$at,$s8,$at
    bnez	$at,.L0dae519c
    addu	$s7,$v0,$s7
    ld	$s4,544($sp)
    ld	$ra,528($sp)
    ld	$s2,40($sp)
    ld	$s5,80($sp)
    lw	$t3,-21860($gp)
    la	$s8,sub_0dbf0000
    ld	$s7,408($sp)
    lbu	$t3,1($t3)
    addiu	$s8,$s8,17296
.L0dae521c:
    sd	$ra,528($sp)
    li	$at,32
    beq	$at,$t3,.L0dae655c
    addiu	$s1,$s8,5128
    sd	$s2,40($sp)
    # Line 2127
    li	$a1,1
    move	$a0,$s3
    move	$a3,$s7
    move	$a4,$s5
    ld	$s8,72($sp)
    # Line 2123
    la	$s4,sub_0dae0000
    # Line 2127
    move	$a5,$s1
    move	$a2,$s8
    # Line 2123
    addiu	$s4,$s4,4800
    # Line 2127
    bal __glim_SubdivPatchSGIX
    move	$t9,$s4
    # Line 2132
    li	$a1,6
    move	$a0,$s3
    la	$s2,sub_0dae0000
    move	$a2,$s1
    ld	$a3,296($sp)
    addiu	$s2,$s2,4888
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    la	$s0,sub_0dae0000
    addiu	$s0,$s0,5384
.L0dae5284:
    lw	$at,-21860($gp)
    lbu	$at,2($at)
    li	$v0,32
    beq	$at,$v0,.L0dae65b4
    # Line 2147
    move	$a0,$s3
    ld	$a1,144($sp)
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s5
    move	$a5,$s1
    bal __glim_SubdivPatchSGIX
    move	$t9,$s4
    # Line 2152
    move	$a0,$s3
    li	$a1,6
    move	$a2,$s1
    ld	$a3,288($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$s2
    ld	$ra,528($sp)
.L0dae52d0:
    ld	$v0,40($sp)
    # Line 2158
    slti	$v0,$v0,5
    bnez	$v0,.L0dae5430
    li	$s0,2
    sll	$a6,$s3,0x2
    subu	$a6,$a6,$s3
    sll	$a6,$a6,0x2
    sd	$a6,368($sp)
    ld	$v1,40($sp)
    addu	$at,$s3,$s3
    sll	$v0,$s3,0x2
    sd	$v0,128($sp)
    ld	$v0,232($sp)
    sll	$at,$at,0x2
    sd	$at,120($sp)
    addiu	$v0,$v0,1
    srl	$at,$v0,0x1f
    addu	$at,$at,$v0
    sra	$at,$at,0x1
    subu	$v1,$v1,$at
    addiu	$v1,$v1,-1
    beq	$v1,$s0,.L0dae53c0
    sd	$v1,432($sp)
.L0dae532c:
    # Line 2170
    move	$a0,$s3
.L0dae5330:
    move	$a1,$s0
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s5
    move	$a5,$s1
    bal __glim_SubdivPatchSGIX
    move	$t9,$s4
    # Line 2175
    addu	$a4,$s0,$s0
    addiu	$a4,$a4,-1
    mult	$a4,$s3
    move	$a0,$s3
    move	$a2,$s1
    li	$a1,6
    move	$t9,$s2
    mflo	$a3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$s6
    ld	$ra,528($sp)
.L0dae537c:
    # Line 2158
    ld	$a6,488($sp)
    ld	$v1,368($sp)
    ld	$v0,496($sp)
    ld	$at,120($sp)
    addiu	$s0,$s0,1
    addu	$v1,$v1,$a6
    addu	$at,$at,$v0
    ld	$v0,424($sp)
    sd	$at,120($sp)
    ld	$at,128($sp)
    ld	$a6,144($sp)
    sd	$v1,368($sp)
    addu	$at,$at,$v0
    beq	$a6,$s0,.L0dae5430
    sd	$at,128($sp)
    ld	$v1,432($sp)
    bne	$v1,$s0,.L0dae532c
.L0dae53c0:
    lw	$a6,-21860($gp)
    lbu	$a6,28($a6)
    li	$at,32
    bne	$a6,$at,.L0dae5330
    # Line 2170
    move	$a0,$s3
    # Line 2162
    move	$a3,$s1
    ld	$a0,120($sp)
    ld	$a2,128($sp)
    ld	$a1,368($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    addu	$a2,$a2,$s5
    addu	$a1,$a1,$s8
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s7
    # Line 2166
    addu	$a3,$s0,$s0
    addiu	$a3,$a3,-1
    mult	$a3,$s3
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$s3
    move	$a1,$s1
    addiu	$t9,$t9,5400
    mflo	$a2
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s6
    b	.L0dae537c
    ld	$ra,528($sp)
.L0dae5430:
    # Line 2263
    ld	$s0,376($sp)
    ld	$s1,384($sp)
    ld	$s2,560($sp)
    ld	$s3,392($sp)
    ld	$s4,544($sp)
    ld	$s5,568($sp)
    ld	$s6,576($sp)
    ld	$s7,552($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0dae545c:
    # Line 1748
    la	$a3,sub_0dbf0000
    lw	$a3,-9360($a3)
    mult	$s3,$a3
    mflo	$a4
    blez	$a4,.L0dae54d8
    move	$a5,$a4
    la	$t0,sub_0dbf0000
    sll	$a1,$a4,0x2
    andi	$a0,$a4,0x3
    addiu	$t0,$t0,17296
    beqz	$a0,.L0dae54a0
    addu	$a1,$a1,$t0
.L0dae548c:
    addiu	$t0,$t0,4
    # Line 1749
    lwc1	$f0,428($t0)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dae548c
    swc1	$f0,-4($t0)
.L0dae54a0:
    sra	$at,$a5,0x2
    beqz	$at,.L0dae54d8
    move	$a4,$t0
    move	$a0,$a4
.L0dae54b0:
    lwc1	$f0,444($a0)
    # Line 1748
    addiu	$a0,$a0,16
    # Line 1749
    lwc1	$f3,424($a0)
    swc1	$f0,-4($a0)
    lwc1	$f2,420($a0)
    swc1	$f3,-8($a0)
    lwc1	$f1,416($a0)
    swc1	$f2,-12($a0)
    # Line 1748
    bne	$a0,$a1,.L0dae54b0
    # Line 1749
    swc1	$f1,-16($a0)
.L0dae54d8:
    # Line 1757
    sll	$s1,$s3,0x2
    sd	$s1,496($sp)
    la	$a6,sub_0dbf0000
    # Line 1759
    addu	$v0,$s3,$s3
    sll	$v0,$v0,0x2
    addiu	$a6,$a6,17296
    # Line 1758
    sw	$zero,8192($a6)
    # Line 1759
    addu	$v0,$v0,$a6
    # Line 1757
    addu	$s1,$s1,$a6
    addiu	$v1,$s1,288
    # Line 1759
    addiu	$t2,$v0,288
    sw	$t2,8116($a6)
    # Line 1757
    sw	$v1,8112($a6)
    # Line 1760
    lbu	$v1,3($t1)
    # Line 1761
    addiu	$v0,$v0,144
    sw	$v0,8120($a6)
    # Line 1760
    sw	$v1,8196($a6)
    # Line 1762
    lbu	$at,28($t1)
    # Line 1763
    addiu	$t2,$s1,144
    sw	$t2,8124($a6)
    # Line 1762
    sw	$at,8200($a6)
    # Line 1764
    andi	$v0,$a2,0x80
    lbu	$v1,1($t1)
    li	$t2,4
    beqz	$v0,.L0dae555c
    sw	$v1,8204($a6)
    la	$v0,sub_0dbf0000
    addiu	$v0,$v0,17296
    # Line 1766
    addiu	$v1,$v0,288
    sw	$v1,8128($v0)
    # Line 1767
    lbu	$at,7($t1)
    li	$t2,5
    sw	$at,8208($v0)
.L0dae555c:
    blez	$s0,.L0dae6780
    move	$a0,$t1
    move	$a4,$s0
    andi	$a5,$s0,0x3
    sll	$t3,$t2,0x2
    la	$at,sub_0dbf0000
    addu	$t8,$s0,$t2
    sll	$t0,$t8,0x2
    addiu	$at,$at,17296
    addiu	$a1,$at,5232
    addu	$t3,$t3,$at
    beqz	$a5,.L0dae55b4
    addu	$t0,$t0,$at
.L0dae5590:
    # Line 1769
    addiu	$t3,$t3,4
    addiu	$a0,$a0,1
    ld	$v1,496($sp)
    # Line 1770
    sw	$a1,8108($t3)
    addi	$a5,$a5,-1
    # Line 1771
    lbu	$v0,15($a0)
    # Line 1769
    addu	$a1,$v1,$a1
    bnez	$a5,.L0dae5590
    # Line 1771
    sw	$v0,8188($t3)
.L0dae55b4:
    move	$t9,$a0
    move	$a5,$t3
    sra	$a6,$a4,0x2
    beqz	$a6,.L0dae5624
    move	$s0,$a1
    move	$a0,$t9
    move	$a1,$a5
    move	$a4,$s0
.L0dae55d4:
    # Line 1769
    ld	$v0,496($sp)
    # Line 1770
    sw	$a4,8112($a1)
    # Line 1771
    lbu	$at,16($a0)
    # Line 1769
    addu	$a4,$v0,$a4
    # Line 1770
    sw	$a4,8116($a1)
    # Line 1771
    sw	$at,8192($a1)
    lbu	$a6,17($a0)
    # Line 1769
    addu	$a4,$v0,$a4
    # Line 1770
    sw	$a4,8120($a1)
    # Line 1771
    sw	$a6,8196($a1)
    # Line 1769
    addiu	$a0,$a0,4
    # Line 1771
    lbu	$a6,14($a0)
    # Line 1769
    addu	$a4,$v0,$a4
    # Line 1770
    sw	$a4,8124($a1)
    # Line 1771
    sw	$a6,8200($a1)
    # Line 1769
    addiu	$a1,$a1,16
    # Line 1771
    lbu	$at,15($a0)
    # Line 1769
    addu	$a4,$v0,$a4
    bne	$a1,$t0,.L0dae55d4
    # Line 1771
    sw	$at,8188($a1)
.L0dae5624:
    # Line 1773
    sw	$t2,-21848($gp)
    # Line 1774
    andi	$v0,$a2,0x100
    beqz	$v0,.L0dae563c
    move	$t2,$t8
    lw	$v1,-21840($gp)
    beqz	$v1,.L0dae6730
.L0dae563c:
    # Line 1783
    addiu	$a0,$a3,-2
    mult	$a0,$s3
    la	$v0,sub_0dbf0000
    mflo	$at
    addiu	$v0,$v0,17296
    # Line 1787
    addiu	$v1,$a3,-3
    mult	$v1,$s3
    # Line 1784
    sw	$zero,8232($v0)
    # Line 1783
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addiu	$v1,$at,288
    # Line 1785
    addiu	$at,$at,144
    sw	$at,8156($v0)
    # Line 1783
    sw	$v1,8152($v0)
    # Line 1786
    lbu	$a6,2($t1)
    # Line 1779
    addiu	$v1,$t2,-1
    # Line 1788
    li	$t2,3
    # Line 1786
    sw	$a6,8236($v0)
    # Line 1787
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$v0
    addiu	$a6,$a0,288
    sw	$a6,8160($v0)
    # Line 1779
    sw	$v1,-21856($gp)
    # Line 1788
    lbu	$at,3($t1)
    andi	$a6,$a2,0x200
    beqz	$a6,.L0dae56c4
    sw	$at,8240($v0)
    la	$a6,sub_0dbf0000
    addiu	$a6,$a6,17296
    # Line 1790
    sw	$a0,8164($a6)
    # Line 1791
    lbu	$v1,9($t1)
    li	$t2,4
    sw	$v1,8244($a6)
.L0dae56c4:
    blez	$a7,.L0dae6788
    move	$a0,$t1
    move	$a4,$a7
    andi	$a5,$a7,0x3
    sll	$t3,$t2,0x2
    la	$at,sub_0dbf0000
    addu	$t9,$a7,$t2
    sll	$t0,$t9,0x2
    addiu	$at,$at,17296
    addiu	$a1,$at,5376
    addu	$t3,$t3,$at
    beqz	$a5,.L0dae571c
    addu	$t0,$t0,$at
.L0dae56f8:
    # Line 1793
    addiu	$t3,$t3,4
    addiu	$a0,$a0,1
    ld	$v1,496($sp)
    # Line 1794
    sw	$a1,8148($t3)
    addi	$a5,$a5,-1
    # Line 1795
    lbu	$v0,19($a0)
    # Line 1793
    addu	$a1,$v1,$a1
    bnez	$a5,.L0dae56f8
    # Line 1795
    sw	$v0,8228($t3)
.L0dae571c:
    move	$a7,$a0
    move	$a5,$t3
    sra	$a6,$a4,0x2
    beqz	$a6,.L0dae578c
    move	$t8,$a1
    move	$a0,$a7
    move	$a1,$a5
    move	$a4,$t8
.L0dae573c:
    # Line 1793
    ld	$v0,496($sp)
    # Line 1794
    sw	$a4,8152($a1)
    # Line 1795
    lbu	$at,20($a0)
    # Line 1793
    addu	$a4,$v0,$a4
    # Line 1794
    sw	$a4,8156($a1)
    # Line 1795
    sw	$at,8232($a1)
    lbu	$a6,21($a0)
    # Line 1793
    addu	$a4,$v0,$a4
    # Line 1794
    sw	$a4,8160($a1)
    # Line 1795
    sw	$a6,8236($a1)
    # Line 1793
    addiu	$a0,$a0,4
    # Line 1795
    lbu	$a6,18($a0)
    # Line 1793
    addu	$a4,$v0,$a4
    # Line 1794
    sw	$a4,8164($a1)
    # Line 1795
    sw	$a6,8240($a1)
    # Line 1793
    addiu	$a1,$a1,16
    # Line 1795
    lbu	$at,19($a0)
    # Line 1793
    addu	$a4,$v0,$a4
    bne	$a1,$t0,.L0dae573c
    # Line 1795
    sw	$at,8228($a1)
.L0dae578c:
    # Line 1797
    sw	$t2,-21844($gp)
    # Line 1798
    andi	$v0,$a2,0x400
    beqz	$v0,.L0dae57a4
    move	$t2,$t9
    lw	$v1,-21836($gp)
    beqz	$v1,.L0dae66f4
.L0dae57a4:
    # Line 1804
    ld	$s0,376($sp)
    ld	$s1,384($sp)
    ld	$s3,392($sp)
    addiu	$sp,$sp,624
    # Line 1803
    addiu	$a0,$t2,-1
    # Line 1804
    jr	$ra
    # Line 1803
    sw	$a0,-21852($gp)
.L0dae57c0:
    sd	$s0,264($sp)
    sd	$a0,160($sp)
    # Line 1951
    move	$a0,$s3
    ld	$a1,184($sp)
    ld	$a2,200($sp)
    # Line 1931
    la	$s5,sub_0dae0000
    # Line 1951
    ld	$a3,192($sp)
    ld	$a4,304($sp)
    # Line 1931
    addiu	$s5,$s5,3632
    # Line 1951
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    # Line 1957
    ld	$at,160($sp)
    beqz	$at,.L0dae66e0
    li	$s0,2
    sd	$s1,88($sp)
    sll	$s1,$s3,0x2
    sd	$s2,40($sp)
    sd	$s4,592($sp)
    move	$s4,$s2
    addiu	$s4,$s2,-2
    sd	$s4,144($sp)
    addu	$s2,$s3,$s3
    sd	$s7,408($sp)
    addiu	$s7,$s8,5128
    sd	$s7,480($sp)
    ld	$at,408($sp)
    ld	$s7,80($sp)
    sll	$s2,$s2,0x2
    addu	$s4,$s2,$at
    addu	$s2,$s2,$s7
    ld	$s7,72($sp)
    subu	$s1,$s1,$s3
    sll	$s1,$s1,0x2
    addu	$s7,$s1,$s7
    addu	$s1,$s1,$at
.L0dae584c:
    # Line 1958
    move	$a0,$s3
    move	$a1,$s0
    ld	$a2,72($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a3,408($sp)
    ld	$a4,80($sp)
    addiu	$t9,$t9,4800
    bal __glim_SubdivPatchSGIX
    ld	$a5,480($sp)
    # Line 1963
    addu	$a4,$s0,$s0
    sd	$a4,512($sp)
    addiu	$a4,$a4,-1
    mult	$a4,$s3
    ld	$a2,480($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a1,6
    move	$a0,$s3
    addiu	$t9,$t9,4888
    mflo	$a3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$s6
    # Line 1967
    ld	$a6,512($sp)
    mult	$a6,$s3
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$a3,$s7
    move	$a4,$s2
    move	$t9,$s5
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    # Line 1957
    addiu	$s0,$s0,1
    ld	$v1,496($sp)
    ld	$at,144($sp)
    ld	$v0,488($sp)
    addu	$s2,$v1,$s2
    addu	$s4,$v1,$s4
    addu	$s1,$v0,$s1
    bne	$at,$s0,.L0dae584c
    addu	$s7,$v0,$s7
    ld	$s2,40($sp)
    ld	$s1,88($sp)
    la	$s5,sub_0dae0000
    ld	$s7,408($sp)
    ld	$s4,592($sp)
    addiu	$s5,$s5,4576
.L0dae5910:
    # Line 1980
    sw	$zero,8192($s8)
    # Line 1981
    ld	$at,200($sp)
    # Line 1979
    ld	$v0,184($sp)
    # Line 1982
    lw	$t1,-21860($gp)
    # Line 1981
    sw	$at,8116($s8)
    # Line 1979
    sw	$v0,8112($s8)
    # Line 1983
    ld	$a6,192($sp)
    # Line 1982
    lbu	$t2,3($t1)
    # Line 1983
    sw	$a6,8120($s8)
    # Line 1982
    sw	$t2,8196($s8)
    # Line 1985
    ld	$v0,224($sp)
    # Line 1984
    lbu	$v1,28($t1)
    # Line 1986
    ld	$at,248($sp)
    # Line 1985
    sw	$v0,8124($s8)
    # Line 1984
    sw	$v1,8200($s8)
    # Line 1986
    andi	$at,$at,0x80
    lbu	$v0,1($t1)
    li	$t2,4
    beqz	$at,.L0dae5970
    sw	$v0,8204($s8)
    # Line 1988
    sw	$s7,8128($s8)
    # Line 1989
    lbu	$v1,7($t1)
    li	$t2,5
    sw	$v1,8208($s8)
.L0dae5970:
    ld	$a6,264($sp)
    blez	$a6,.L0dae6760
    move	$a0,$t1
    sll	$t3,$t2,0x2
    addu	$t3,$t3,$s8
    ld	$t8,264($sp)
    sll	$a1,$s1,0x3
    addu	$a1,$a1,$s1
    sll	$a1,$a1,0x4
    move	$t9,$t8
    andi	$a7,$t8,0x3
    addu	$t8,$t8,$t2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s8
    sll	$t0,$t8,0x2
    addu	$t0,$t0,$s8
    beqz	$a7,.L0dae59d8
    addiu	$a1,$a1,4656
.L0dae59b8:
    # Line 1992
    sw	$a1,8112($t3)
    # Line 1991
    addu	$a1,$s4,$a1
    addiu	$t3,$t3,4
    addiu	$a0,$a0,1
    # Line 1993
    lbu	$at,15($a0)
    addi	$a7,$a7,-1
    bnez	$a7,.L0dae59b8
    sw	$at,8188($t3)
.L0dae59d8:
    move	$a5,$a0
    move	$s0,$t3
    sra	$v0,$t9,0x2
    beqz	$v0,.L0dae5a44
    move	$ra,$a1
    move	$a1,$a5
    move	$a7,$s0
    move	$a0,$ra
.L0dae59f8:
    # Line 1992
    sw	$a0,8112($a7)
    # Line 1993
    lbu	$at,16($a1)
    sw	$at,8192($a7)
    # Line 1991
    addu	$a0,$s4,$a0
    # Line 1992
    sw	$a0,8116($a7)
    # Line 1993
    lbu	$a6,17($a1)
    sw	$a6,8196($a7)
    # Line 1991
    addu	$a0,$s4,$a0
    # Line 1992
    sw	$a0,8120($a7)
    # Line 1993
    lbu	$a6,18($a1)
    # Line 1991
    addiu	$a1,$a1,4
    # Line 1993
    sw	$a6,8200($a7)
    # Line 1991
    addu	$a0,$s4,$a0
    # Line 1992
    sw	$a0,8124($a7)
    # Line 1991
    addiu	$a7,$a7,16
    # Line 1993
    lbu	$v1,15($a1)
    # Line 1991
    addu	$a0,$s4,$a0
    bne	$a7,$t0,.L0dae59f8
    # Line 1993
    sw	$v1,8188($a7)
.L0dae5a44:
    # Line 1996
    ld	$v0,208($sp)
    # Line 1995
    sw	$t2,-21848($gp)
    # Line 1996
    beqz	$v0,.L0dae5a5c
    move	$t2,$t8
    lw	$v1,-21840($gp)
    beqz	$v1,.L0dae668c
.L0dae5a5c:
    ld	$v1,144($sp)
    # Line 2005
    mult	$v1,$s3
    # Line 2001
    addiu	$a2,$t2,-1
    # Line 2005
    mflo	$at
    # Line 2006
    sw	$zero,8232($s8)
    # Line 2009
    addiu	$v0,$s2,-3
    mult	$v0,$s3
    # Line 2005
    sll	$at,$at,0x2
    # Line 2007
    ld	$v0,72($sp)
    # Line 2005
    addu	$v1,$at,$s7
    sw	$v1,8152($s8)
    # Line 2007
    addu	$at,$at,$v0
    sw	$at,8156($s8)
    # Line 2010
    li	$t2,3
    # Line 2008
    lbu	$a6,2($t1)
    # Line 2001
    sw	$a2,-21856($gp)
    sd	$v1,112($sp)
    # Line 2008
    sw	$a6,8236($s8)
    # Line 2010
    ld	$a6,248($sp)
    # Line 2009
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$s7,$a1,$s7
    sw	$s7,8160($s8)
    sd	$s7,104($sp)
    # Line 2010
    lbu	$s7,3($t1)
    andi	$a6,$a6,0x200
    sd	$a6,96($sp)
    sw	$s7,8240($s8)
    beqz	$a6,.L0dae5af0
    ld	$s7,552($sp)
    ld	$t2,80($sp)
    # Line 2012
    addu	$t2,$a1,$t2
    sw	$t2,8164($s8)
    # Line 2013
    lbu	$a6,9($t1)
    ld	$s7,552($sp)
    li	$t2,4
    sw	$a6,8244($s8)
.L0dae5af0:
    ld	$at,240($sp)
    blez	$at,.L0dae676c
    move	$a0,$t1
    sll	$t3,$t2,0x2
    addu	$t3,$t3,$s8
    ld	$t9,240($sp)
    sll	$a7,$s1,0x3
    addu	$a7,$a7,$s1
    sll	$a7,$a7,0x4
    move	$ra,$t9
    andi	$t8,$t9,0x3
    addu	$t9,$t9,$t2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s8
    sll	$t0,$t9,0x2
    addu	$t0,$t0,$s8
    beqz	$t8,.L0dae5b58
    addiu	$a7,$a7,4800
.L0dae5b38:
    # Line 2016
    sw	$a7,8152($t3)
    # Line 2015
    addu	$a7,$s4,$a7
    addiu	$t3,$t3,4
    addiu	$a0,$a0,1
    # Line 2017
    lbu	$at,19($a0)
    addi	$t8,$t8,-1
    bnez	$t8,.L0dae5b38
    sw	$at,8228($t3)
.L0dae5b58:
    move	$s0,$a0
    move	$t8,$t3
    sra	$v0,$ra,0x2
    beqz	$v0,.L0dae5bc4
    move	$a5,$a7
    move	$a7,$s0
    move	$a0,$t8
    move	$t3,$a5
.L0dae5b78:
    # Line 2016
    sw	$t3,8152($a0)
    # Line 2017
    lbu	$v0,20($a7)
    sw	$v0,8232($a0)
    # Line 2015
    addu	$t3,$s4,$t3
    # Line 2016
    sw	$t3,8156($a0)
    # Line 2017
    lbu	$at,21($a7)
    sw	$at,8236($a0)
    # Line 2015
    addu	$t3,$s4,$t3
    # Line 2016
    sw	$t3,8160($a0)
    # Line 2017
    lbu	$at,22($a7)
    # Line 2015
    addiu	$a7,$a7,4
    # Line 2017
    sw	$at,8240($a0)
    # Line 2015
    addu	$t3,$s4,$t3
    # Line 2016
    sw	$t3,8164($a0)
    # Line 2015
    addiu	$a0,$a0,16
    # Line 2017
    lbu	$v1,19($a7)
    # Line 2015
    addu	$t3,$s4,$t3
    bne	$a0,$t0,.L0dae5b78
    # Line 2017
    sw	$v1,8228($a0)
.L0dae5bc4:
    # Line 2020
    ld	$s0,248($sp)
    # Line 2019
    sw	$t2,-21844($gp)
    # Line 2020
    andi	$s0,$s0,0x400
    beqz	$s0,.L0dae5be0
    move	$t2,$t9
    lw	$at,-21836($gp)
    beqz	$at,.L0dae66ac
.L0dae5be0:
    # Line 2025
    lbu	$a0,5170($s8)
    addiu	$v1,$t2,-1
    li	$v0,3
    beq	$v0,$a0,.L0dae64c4
    sw	$v1,-21852($gp)
.L0dae5bf4:
    # Line 2036
    addiu	$a3,$s8,8112
    sd	$a1,152($sp)
    # Line 2031
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 2036
    move	$a1,$s3
    ld	$a4,280($sp)
    # Line 2031
    addiu	$t9,$t9,5540
    # Line 2036
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$s6
    lw	$a2,-21852($gp)
    lbu	$a0,5171($s8)
    la	$t2,sub_0dae0000
    li	$a6,3
    beq	$a6,$a0,.L0dae6510
    addiu	$t2,$t2,5540
.L0dae5c2c:
    sd	$s0,216($sp)
.L0dae5c30:
    # Line 2048
    move	$a1,$s3
    addiu	$a3,$s8,8152
    ld	$a4,288($sp)
    bal __glim_SubdivPatchSGIX
    move	$t9,$t2
    # Line 2055
    ld	$at,264($sp)
    move	$s0,$zero
    blez	$at,.L0dae5d34
    ld	$ra,528($sp)
    ld	$v0,264($sp)
    sd	$s1,88($sp)
    move	$s1,$s8
    addiu	$s7,$s8,1
    addu	$v0,$v0,$s8
    ld	$at,88($sp)
    sd	$v0,448($sp)
    sd	$s2,40($sp)
    sll	$s2,$at,0x3
    addu	$s2,$s2,$at
    sll	$s2,$s2,0x4
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$s8
    beq	$s8,$s7,.L0dae5d20
    addiu	$s2,$s2,5232
    # Line 2056
    lbu	$t1,5216($s1)
.L0dae5c94:
    lw	$a4,-21856($gp)
    lw	$a3,-21848($gp)
    addiu	$a4,$a4,1
    addu	$a3,$a3,$s0
    addiu	$t0,$a3,1
    div	$zero,$t0,$a4
    move	$a0,$s3
    move	$t9,$s5
    move	$a5,$s2
    # Line 2055
    addiu	$s1,$s1,1
    # Line 2056
    lb	$a6,5170($s8)
    lw	$a1,8112($s8)
    lw	$v1,-21860($gp)
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    addu	$v1,$s0,$v1
    # Line 2055
    addiu	$s0,$s0,1
    # Line 2056
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s8
    lw	$a2,8112($a3)
    lw	$a3,8108($a3)
    lb	$v1,12($v1)
    teq	$a4,$zero,0x7
    mfhi	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s8
    lw	$a4,8112($a4)
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    # Line 2055
    ld	$a6,448($sp)
    addu	$s2,$s4,$s2
    beq	$s1,$a6,.L0dae5d28
    ld	$ra,528($sp)
    bnel	$s1,$s7,.L0dae5c94
    # Line 2056
    lbu	$t1,5216($s1)
.L0dae5d20:
    b	.L0dae5c94
    lbu	$t1,5184($s1)
.L0dae5d28:
    ld	$s7,552($sp)
    ld	$s2,40($sp)
    ld	$s1,88($sp)
.L0dae5d34:
    # Line 2066
    ld	$at,240($sp)
    blez	$at,.L0dae5e20
    move	$s0,$zero
    ld	$v0,240($sp)
    sd	$s1,88($sp)
    move	$s1,$s8
    addiu	$s7,$s8,1
    addu	$v0,$v0,$s8
    ld	$at,88($sp)
    sd	$v0,440($sp)
    sd	$s2,40($sp)
    sll	$s2,$at,0x3
    addu	$s2,$s2,$at
    sll	$s2,$s2,0x4
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$s8
    beq	$s8,$s7,.L0dae5e0c
    addiu	$s2,$s2,5376
    # Line 2067
    lbu	$t1,5220($s1)
.L0dae5d80:
    lw	$a4,-21852($gp)
    lw	$a3,-21844($gp)
    addiu	$a4,$a4,1
    addu	$a3,$a3,$s0
    addiu	$t0,$a3,1
    div	$zero,$t0,$a4
    move	$a0,$s3
    move	$t9,$s5
    move	$a5,$s2
    # Line 2066
    addiu	$s1,$s1,1
    # Line 2067
    lb	$a6,5171($s8)
    lw	$a1,8152($s8)
    lw	$v1,-21860($gp)
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    addu	$v1,$s0,$v1
    # Line 2066
    addiu	$s0,$s0,1
    # Line 2067
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s8
    lw	$a2,8152($a3)
    lw	$a3,8148($a3)
    lb	$v1,20($v1)
    teq	$a4,$zero,0x7
    mfhi	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s8
    lw	$a4,8152($a4)
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    # Line 2066
    ld	$a6,440($sp)
    addu	$s2,$s4,$s2
    beq	$s1,$a6,.L0dae5e14
    ld	$ra,528($sp)
    bnel	$s1,$s7,.L0dae5d80
    # Line 2067
    lbu	$t1,5220($s1)
.L0dae5e0c:
    b	.L0dae5d80
    lbu	$t1,5188($s1)
.L0dae5e14:
    ld	$s7,552($sp)
    ld	$s2,40($sp)
    ld	$s1,88($sp)
.L0dae5e20:
    ld	$at,216($sp)
    # Line 2066
    beqz	$at,.L0dae5f14
    ld	$s4,544($sp)
    lw	$t1,-21860($gp)
    lbu	$v0,10($t1)
    bnez	$v0,.L0dae5f18
    # Line 2100
    ld	$s0,376($sp)
    ld	$v1,240($sp)
    # Line 2079
    beqz	$v1,.L0dae68d0
    ld	$v0,96($sp)
    ld	$s5,240($sp)
    # Line 2082
    addiu	$s5,$s5,-1
    mult	$s5,$s3
    ld	$s5,568($sp)
    sll	$s2,$s1,0x3
    addu	$s2,$s2,$s1
    sll	$s2,$s2,0x4
    mflo	$s0
    addu	$s0,$s0,$s2
    ld	$s2,560($sp)
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s8
    ld	$s8,536($sp)
    addiu	$s0,$s0,5376
.L0dae5e80:
    # Line 2093
    blez	$s3,.L0dae5f14
    ld	$a3,256($sp)
    addiu	$a3,$a3,-1
    mult	$a3,$s3
    ld	$a2,272($sp)
    move	$a1,$s0
    move	$a4,$s3
    addu	$a2,$a2,$s0
    andi	$a3,$s3,0x3
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s6
    beqz	$a3,.L0dae5ed0
    ld	$s6,576($sp)
.L0dae5eb8:
    # Line 2095
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    # Line 2096
    lwc1	$f1,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dae5eb8
    swc1	$f1,-4($a0)
.L0dae5ed0:
    move	$a5,$a0
    sra	$a6,$a4,0x2
    beqz	$a6,.L0dae5f14
    move	$a3,$a1
    move	$a0,$a5
    move	$a1,$a3
.L0dae5ee8:
    lwc1	$f1,0($a1)
    swc1	$f1,0($a0)
    lwc1	$f0,4($a1)
    swc1	$f0,4($a0)
    lwc1	$f3,8($a1)
    swc1	$f3,8($a0)
    # Line 2095
    addiu	$a0,$a0,16
    # Line 2096
    lwc1	$f2,12($a1)
    # Line 2095
    addiu	$a1,$a1,16
    bne	$a1,$a2,.L0dae5ee8
    # Line 2096
    swc1	$f2,-4($a0)
.L0dae5f14:
    # Line 2100
    ld	$s0,376($sp)
.L0dae5f18:
    ld	$s1,384($sp)
    ld	$s2,560($sp)
    ld	$s3,392($sp)
    ld	$s5,568($sp)
    ld	$s6,576($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0dae5f38:
    # Line 1843
    andi	$at,$a2,0x80
    beqz	$at,.L0dae5f48
    # Line 1844
    lw	$v0,-21840($gp)
    beqz	$v0,.L0dae6908
.L0dae5f48:
    # Line 1847
    lw	$a3,24($sp)
    sll	$a6,$s3,0x2
    sd	$a6,280($sp)
    addu	$a3,$a3,$a6
.L0dae5f58:
    li	$at,1
    bnel	$s1,$at,.L0dae4ca4
    sd	$a7,240($sp)
.L0dae5f64:
    sd	$a7,240($sp)
    sd	$a2,248($sp)
    sd	$ra,528($sp)
    sd	$a0,256($sp)
    sd	$a5,328($sp)
    # Line 1849
    b	.L0dae4cb8
    lbu	$t2,5176($s8)
.L0dae5f80:
    # Line 1863
    addiu	$a6,$s2,-2
    mult	$a6,$s3
    li	$v0,1
    sll	$a3,$s1,0x3
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x6
    addu	$a3,$a3,$s8
    addiu	$a3,$a3,4800
    mflo	$t2
    # Line 1864
    bne	$s1,$v0,.L0dae4d48
    # Line 1863
    sll	$t2,$t2,0x2
.L0dae5fac:
    # Line 1869
    b	.L0dae4d4c
    lbu	$t3,5177($s8)
.L0dae5fb4:
    # Line 1806
    lw	$a6,-4($a3)
    sd	$s6,576($sp)
    addiu	$s6,$a6,-2
    div	$zero,$s6,$t2
    mfhi	$v1
    sd	$s5,568($sp)
    # Line 1807
    addiu	$s5,$a6,-1
    div	$zero,$s5,$t2
    mfhi	$at
    nop
    nop
    # Line 1808
    div	$zero,$a6,$t2
    mfhi	$s6
    nop
    nop
    # Line 1809
    div	$zero,$t0,$t2
    teq	$t2,$zero,0x7
    # Line 1808
    teq	$t2,$zero,0x7
    # Line 1807
    teq	$t2,$zero,0x7
    sd	$s8,536($sp)
    # Line 1806
    la	$s8,sub_0dbf0000
    sd	$s2,560($sp)
    teq	$t2,$zero,0x7
    addiu	$s8,$s8,17296
    sd	$s7,552($sp)
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$s8
    sw	$v0,24($sp)
    # Line 1807
    sll	$s7,$at,0x3
    addu	$s7,$s7,$at
    sll	$s7,$s7,0x4
    addu	$s7,$s7,$s8
    # Line 1808
    sll	$s5,$s6,0x3
    addu	$s5,$s5,$s6
    sll	$s5,$s5,0x4
    addu	$s5,$s5,$s8
    # Line 1809
    mfhi	$at
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s8
    # Line 1810
    b	.L0dae4c38
    # Line 1809
    addiu	$s6,$s6,576
.L0dae6078:
    sd	$s6,576($sp)
    # Line 1812
    addiu	$s6,$a6,-2
    div	$zero,$s6,$t2
    mfhi	$v1
    sd	$s5,568($sp)
    # Line 1813
    addiu	$s5,$a6,-1
    div	$zero,$s5,$t2
    mfhi	$at
    nop
    nop
    # Line 1814
    div	$zero,$a6,$t2
    mfhi	$s6
    nop
    nop
    # Line 1815
    div	$zero,$t0,$t2
    teq	$t2,$zero,0x7
    # Line 1814
    teq	$t2,$zero,0x7
    # Line 1813
    teq	$t2,$zero,0x7
    sd	$s8,536($sp)
    # Line 1812
    la	$s8,sub_0dbf0000
    sd	$s2,560($sp)
    teq	$t2,$zero,0x7
    addiu	$s8,$s8,17296
    sd	$s7,552($sp)
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,576
    sw	$v0,24($sp)
    # Line 1813
    sll	$s7,$at,0x2
    subu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    subu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,576
    # Line 1814
    sll	$s5,$s6,0x2
    subu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    subu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s8
    addiu	$s5,$s5,576
    # Line 1815
    mfhi	$at
    sll	$s6,$at,0x6
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s8
    # Line 1816
    b	.L0dae4c38
    # Line 1815
    addiu	$s6,$s6,1120
.L0dae6164:
    # Line 1818
    lw	$a6,-4($a3)
    sd	$s6,576($sp)
    addiu	$s6,$a6,-2
    div	$zero,$s6,$t2
    mfhi	$v1
    sd	$s5,568($sp)
    # Line 1819
    addiu	$s5,$a6,-1
    div	$zero,$s5,$t2
    mfhi	$at
    nop
    nop
    # Line 1820
    div	$zero,$a6,$t2
    mfhi	$s6
    nop
    nop
    # Line 1821
    div	$zero,$t0,$t2
    teq	$t2,$zero,0x7
    # Line 1820
    teq	$t2,$zero,0x7
    # Line 1819
    teq	$t2,$zero,0x7
    sd	$s8,536($sp)
    # Line 1818
    la	$s8,sub_0dbf0000
    sd	$s2,560($sp)
    teq	$t2,$zero,0x7
    addiu	$s8,$s8,17296
    sd	$s7,552($sp)
    sll	$v0,$v1,0x6
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,1120
    sw	$v0,24($sp)
    # Line 1819
    sll	$s7,$at,0x6
    subu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,1120
    # Line 1820
    sll	$s5,$s6,0x6
    subu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s8
    addiu	$s5,$s5,1120
    # Line 1821
    mfhi	$at
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s8
    # Line 1822
    b	.L0dae4c38
    # Line 1821
    addiu	$s6,$s6,1880
.L0dae6234:
    # Line 1824
    lw	$a6,-4($a3)
    addiu	$s6,$a6,-2
    div	$zero,$s6,$t2
    mfhi	$v1
    nop
    # Line 1825
    addiu	$s5,$a6,-1
    div	$zero,$s5,$t2
    mfhi	$at
    nop
    nop
    # Line 1826
    div	$zero,$a6,$t2
    mfhi	$s6
    nop
    nop
    # Line 1827
    div	$zero,$t0,$t2
    teq	$t2,$zero,0x7
    # Line 1826
    teq	$t2,$zero,0x7
    # Line 1825
    teq	$t2,$zero,0x7
    # Line 1824
    la	$s8,sub_0dbf0000
    sd	$s2,560($sp)
    teq	$t2,$zero,0x7
    addiu	$s8,$s8,17296
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,1880
    sw	$v0,24($sp)
    # Line 1825
    sll	$s7,$at,0x2
    subu	$s7,$s7,$at
    sll	$s7,$s7,0x3
    addu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    subu	$s7,$s7,$at
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,1880
    # Line 1826
    sll	$s5,$s6,0x2
    subu	$s5,$s5,$s6
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    subu	$s5,$s5,$s6
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s8
    addiu	$s5,$s5,1880
    # Line 1827
    mfhi	$at
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s8
    b	.L0dae4c38
    addiu	$s6,$s6,3072
.L0dae6330:
    # Line 1939
    ld	$t2,512($sp)
    mult	$t2,$s3
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$a3,$s7
    move	$a4,$s2
    li	$a6,1
    move	$t9,$s5
    # Line 1931
    addiu	$s8,$s8,1
    mfhi	$zero
    # Line 1939
    dsll32	$a7,$t1,0x18
    li	$t0,32
    sw	$t0,4($sp)
    dsra32	$a7,$a7,0x18
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    # Line 1931
    ld	$a6,488($sp)
    addiu	$s0,$s0,1
    addu	$s1,$a6,$s1
    ld	$at,496($sp)
    ld	$v0,456($sp)
    ld	$v1,424($sp)
    addu	$s2,$at,$s2
    addu	$s4,$at,$s4
    ld	$at,400($sp)
    addu	$s7,$a6,$s7
    addu	$v0,$v1,$v0
    beq	$s8,$at,.L0dae6418
    sd	$v0,456($sp)
.L0dae63b0:
    # Line 1932
    move	$a0,$s4
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$s1
    ld	$a2,456($sp)
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    ld	$a3,480($sp)
    # Line 1936
    addu	$a3,$s0,$s0
    sd	$a3,512($sp)
    addiu	$a3,$a3,-1
    mult	$a3,$s3
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a1,480($sp)
    move	$a0,$s3
    addiu	$t9,$t9,5400
    mflo	$a2
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s6
    ld	$at,176($sp)
    bne	$s8,$at,.L0dae6330
    # Line 1939
    li	$t1,1
    la	$t1,sub_0dbf0000
    addiu	$t1,$t1,17296
    b	.L0dae6330
    lbu	$t1,5171($t1)
.L0dae6418:
    ld	$s2,40($sp)
    ld	$s1,88($sp)
    ld	$s7,408($sp)
    la	$s8,sub_0dbf0000
    ld	$s4,592($sp)
    b	.L0dae5910
    addiu	$s8,$s8,17296
.L0dae6434:
    # Line 1864
    lw	$at,-21836($gp)
    bnez	$at,.L0dae4d2c
    # Line 1867
    addiu	$at,$s2,-2
    # Line 1865
    addiu	$t2,$s2,-1
    mult	$t2,$s3
    mflo	$a3
    nop
    addiu	$a6,$s2,-2
    mult	$a6,$s3
    lw	$a6,24($sp)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    mflo	$t2
    b	.L0dae4d40
    sll	$t2,$t2,0x2
.L0dae6470:
    ld	$at,208($sp)
    # Line 1905
    beqz	$at,.L0dae6484
    # Line 1906
    lw	$v0,-21840($gp)
    beqzl	$v0,.L0dae6bf4
    sd	$s5,80($sp)
.L0dae6484:
    sd	$s5,80($sp)
    sd	$a7,240($sp)
    sd	$a2,248($sp)
    sd	$ra,528($sp)
    sd	$a0,256($sp)
    sd	$a4,272($sp)
    # Line 1909
    sll	$at,$s3,0x2
    sd	$at,280($sp)
    addu	$at,$at,$s5
    sd	$at,304($sp)
    addu	$t3,$s3,$s3
    sll	$t3,$t3,0x2
    sd	$t3,168($sp)
    addu	$t3,$t3,$s7
    b	.L0dae4fac
    sd	$t3,200($sp)
.L0dae64c4:
    # Line 2025
    slti	$v0,$a2,2
    bnez	$v0,.L0dae5bf4
    move	$a7,$s8
    addiu	$t0,$s8,4
    sll	$t1,$a2,0x2
    addiu	$t2,$a2,-1
    andi	$at,$t2,0x1
    beqz	$at,.L0dae64fc
    addu	$t1,$t1,$s8
    lw	$v0,8192($t0)
    li	$v1,32
    beql	$v0,$v1,.L0dae6c50
    # Line 2033
    lw	$a6,8112($t0)
.L0dae64f8:
    # Line 2031
    addiu	$t0,$t0,4
.L0dae64fc:
    sra	$a6,$t2,0x1
    bnezl	$a6,.L0dae6614
    # Line 2025
    lw	$v0,8192($t0)
.L0dae6508:
    b	.L0dae5bf4
    sd	$a1,152($sp)
.L0dae6510:
    # Line 2036
    slti	$at,$a2,2
    bnez	$at,.L0dae5c2c
    move	$a7,$s8
    addiu	$t0,$s8,4
    sll	$t1,$a2,0x2
    addiu	$t3,$a2,-1
    andi	$at,$t3,0x1
    beqz	$at,.L0dae6548
    addu	$t1,$t1,$s8
    lw	$v0,8232($t0)
    li	$v1,32
    beql	$v0,$v1,.L0dae6c5c
    # Line 2045
    lw	$at,8152($t0)
.L0dae6544:
    # Line 2043
    addiu	$t0,$t0,4
.L0dae6548:
    sra	$a6,$t3,0x1
    bnezl	$a6,.L0dae665c
    # Line 2036
    lw	$a6,8232($t0)
.L0dae6554:
    b	.L0dae5c30
    sd	$s0,216($sp)
.L0dae655c:
    ld	$a0,280($sp)
    # Line 2119
    move	$a3,$s1
    ld	$s8,72($sp)
    addu	$a2,$a0,$s5
    la	$s0,sub_0dae0000
    addu	$a1,$a0,$s8
    addu	$a0,$a0,$s7
    addiu	$s0,$s0,5384
    bal __glim_SubdivPatchSGIX
    move	$t9,$s0
    sd	$s2,40($sp)
    # Line 2123
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$s3
    move	$a1,$s1
    addiu	$t9,$t9,5400
    bal __glim_SubdivPatchSGIX
    ld	$a2,296($sp)
    la	$s2,sub_0dae0000
    la	$s4,sub_0dae0000
    addiu	$s2,$s2,4888
    b	.L0dae5284
    addiu	$s4,$s4,4800
.L0dae65b4:
    ld	$a1,144($sp)
    # Line 2139
    mult	$a1,$s3
    move	$a3,$s1
    move	$t9,$s0
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$a2,$a0,$s5
    addu	$a1,$a0,$s8
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s7
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 2143
    move	$a0,$s3
    move	$a1,$s1
    addiu	$t9,$t9,5400
    bal __glim_SubdivPatchSGIX
    ld	$a2,288($sp)
    b	.L0dae52d0
    ld	$ra,528($sp)
.L0dae65fc:
    # Line 2033
    lw	$at,8116($t0)
    sw	$at,8108($a7)
    # Line 2031
    addiu	$t0,$t0,8
.L0dae6608:
    beq	$t0,$t1,.L0dae6508
    nop
    # Line 2025
    lw	$v0,8192($t0)
.L0dae6614:
    li	$v1,32
    beq	$v0,$v1,.L0dae6634
    li	$at,32
.L0dae6620:
    lw	$a6,8196($t0)
    bnel	$a6,$at,.L0dae6608
    # Line 2031
    addiu	$t0,$t0,8
    b	.L0dae65fc
    # Line 2033
    addiu	$a7,$a7,4
.L0dae6634:
    lw	$v0,8112($t0)
    addiu	$a7,$a7,4
    b	.L0dae6620
    sw	$v0,8108($a7)
.L0dae6644:
    # Line 2045
    lw	$v1,8156($t0)
    sw	$v1,8148($a7)
    # Line 2043
    addiu	$t0,$t0,8
.L0dae6650:
    beq	$t0,$t1,.L0dae6554
    nop
    # Line 2036
    lw	$a6,8232($t0)
.L0dae665c:
    li	$at,32
    beq	$a6,$at,.L0dae667c
    li	$v1,32
.L0dae6668:
    lw	$v0,8236($t0)
    bnel	$v0,$v1,.L0dae6650
    # Line 2043
    addiu	$t0,$t0,8
    b	.L0dae6644
    # Line 2045
    addiu	$a7,$a7,4
.L0dae667c:
    lw	$a6,8152($t0)
    addiu	$a7,$a7,4
    b	.L0dae6668
    sw	$a6,8148($a7)
.L0dae668c:
    # Line 1998
    ld	$v1,304($sp)
    sll	$v0,$t2,0x2
    addu	$v0,$v0,$s8
    sw	$v1,8112($v0)
    # Line 1999
    lbu	$at,8($t1)
    addiu	$t2,$t2,1
    b	.L0dae5a5c
    sw	$at,8192($v0)
.L0dae66ac:
    # Line 2022
    addiu	$v0,$s2,-1
    mult	$v0,$s3
    sll	$a6,$t2,0x2
    addu	$a6,$a6,$s8
    ld	$v0,72($sp)
    mflo	$at
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    sw	$at,8152($a6)
    # Line 2023
    lbu	$v1,10($t1)
    addiu	$t2,$t2,1
    b	.L0dae5be0
    sw	$v1,8232($a6)
.L0dae66e0:
    # Line 1957
    addiu	$v1,$s2,-2
    la	$s5,sub_0dae0000
    sd	$v1,144($sp)
    b	.L0dae5910
    addiu	$s5,$s5,4576
.L0dae66f4:
    # Line 1800
    addiu	$at,$a3,-1
    mult	$at,$s3
    la	$a6,sub_0dbf0000
    sll	$v0,$t2,0x2
    addiu	$a6,$a6,17296
    addu	$v0,$v0,$a6
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    addiu	$v1,$v1,144
    sw	$v1,8152($v0)
    # Line 1801
    lbu	$at,10($t1)
    addiu	$t2,$t2,1
    b	.L0dae57a4
    sw	$at,8232($v0)
.L0dae6730:
    la	$v1,sub_0dbf0000
    # Line 1776
    sll	$v0,$t2,0x2
    addiu	$v1,$v1,17296
    addu	$v0,$v0,$v1
    sw	$s1,8112($v0)
    # Line 1777
    lbu	$at,8($t1)
    addiu	$t2,$t2,1
    b	.L0dae563c
    sw	$at,8192($v0)
.L0dae6754:
    # Line 1931
    addiu	$a6,$s2,-2
    b	.L0dae5910
    sd	$a6,144($sp)
.L0dae6760:
    ld	$t8,264($sp)
    b	.L0dae5a44
    # Line 1991
    addu	$t8,$t8,$t2
.L0dae676c:
    ld	$t9,240($sp)
    b	.L0dae5bc4
    # Line 2015
    addu	$t9,$t9,$t2
.L0dae6778:
    # Line 1922
    b	.L0dae5038
    lbu	$t1,5171($s8)
.L0dae6780:
    b	.L0dae5624
    # Line 1769
    addu	$t8,$s0,$t2
.L0dae6788:
    b	.L0dae578c
    # Line 1793
    addu	$t9,$a7,$t2
.L0dae6790:
    # Line 2184
    move	$a0,$s3
    move	$a3,$s7
    move	$a5,$s6
    ld	$s0,584($sp)
    sd	$ra,528($sp)
    sd	$s5,80($sp)
    # Line 2158
    la	$s5,sub_0dae0000
    # Line 2184
    ld	$a2,280($sp)
    ld	$a1,80($sp)
    # Line 2158
    addiu	$s5,$s5,3632
    # Line 2184
    move	$t9,$s5
    addu	$a4,$a2,$a1
    addu	$a2,$a2,$s7
    sd	$a4,304($sp)
    bal __glim_SubdivPatchSGIX
    sd	$a2,184($sp)
    ld	$at,344($sp)
    ld	$a6,352($sp)
    lw	$at,1224($at)
    lw	$a6,0($a6)
    addiu	$at,$at,-3
    bne	$a6,$at,.L0dae67f0
    # Line 2191
    move	$t1,$s0
    lbu	$t1,5170($s8)
.L0dae67f0:
    ld	$a5,296($sp)
    ld	$a3,80($sp)
    ld	$a2,304($sp)
    ld	$a1,184($sp)
    move	$a0,$s3
    dsll32	$a6,$s0,0x18
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    dsra32	$a6,$a6,0x18
    addu	$a4,$s3,$s3
    sd	$a4,48($sp)
    sll	$a4,$a4,0x2
    la	$s1,sub_0dae0000
    lw	$v0,-21860($gp)
    addu	$a4,$a4,$s7
    addiu	$s1,$s1,4576
    lb	$v0,1($v0)
    move	$t9,$s1
    bal __glim_SubdivPatchSGIX
    sw	$v0,4($sp)
    # Line 2201
    li	$s0,2
    addiu	$v0,$s2,-3
    slti	$at,$s2,4
    bnez	$at,.L0dae6c30
    sd	$v0,312($sp)
    sll	$v1,$s3,0x2
    subu	$v1,$v1,$s3
    sll	$v1,$v1,0x2
    ld	$s8,256($sp)
    sd	$v1,368($sp)
    sll	$s4,$s3,0x2
    addiu	$s8,$s8,-1
    sd	$s8,136($sp)
    li	$s8,3
    ld	$at,232($sp)
    sd	$s2,40($sp)
    ld	$s2,48($sp)
    addiu	$at,$at,2
    sd	$at,360($sp)
    ld	$at,80($sp)
    sll	$s2,$s2,0x2
    ld	$a6,40($sp)
    addu	$s1,$s4,$at
    addu	$s4,$s4,$s7
    sd	$s4,456($sp)
    addu	$s4,$s2,$s7
    addu	$s2,$s2,$at
    addiu	$at,$a6,-2
    addiu	$a6,$a6,-1
    sd	$a6,56($sp)
    addiu	$a6,$a6,1
    sd	$at,144($sp)
    addiu	$at,$at,1
    sd	$at,400($sp)
    b	.L0dae69a8
    sd	$a6,416($sp)
.L0dae68d0:
    # Line 2082
    beqz	$v0,.L0dae68e0
    # Line 2083
    lw	$v1,-21836($gp)
    beqz	$v1,.L0dae6c68
    ld	$a6,256($sp)
.L0dae68e0:
    ld	$s2,256($sp)
    # Line 2093
    addiu	$s2,$s2,-3
    mult	$s2,$s3
    ld	$s8,536($sp)
    ld	$s5,568($sp)
    ld	$s2,560($sp)
    mflo	$s0
    sll	$s0,$s0,0x2
    b	.L0dae5e80
    addu	$s0,$s0,$s6
.L0dae6908:
    # Line 1845
    move	$a3,$s7
    sll	$at,$s3,0x2
    b	.L0dae5f58
    sd	$at,280($sp)
.L0dae6918:
    # Line 2215
    addu	$a6,$s0,$s0
.L0dae691c:
    sd	$a6,512($sp)
    addiu	$a6,$a6,-2
    mult	$a6,$s3
    move	$a4,$s2
    ld	$a3,456($sp)
    move	$a2,$s4
    move	$a1,$s1
    move	$a0,$s3
    move	$t9,$s5
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
.L0dae6950:
    ld	$at,400($sp)
    slt	$at,$s8,$at
    bnez	$at,.L0dae6a3c
    # Line 2201
    addiu	$s0,$s0,1
    addiu	$s8,$s8,1
.L0dae6964:
    ld	$a6,496($sp)
    ld	$v1,488($sp)
    addu	$s2,$a6,$s2
    addu	$s4,$a6,$s4
    ld	$a6,424($sp)
    ld	$v0,368($sp)
    ld	$at,456($sp)
    addu	$s1,$a6,$s1
    addu	$v0,$v0,$v1
    ld	$v1,360($sp)
    sd	$v0,368($sp)
    ld	$v0,416($sp)
    addiu	$v1,$v1,2
    addu	$at,$a6,$at
    sd	$at,456($sp)
    beq	$s8,$v0,.L0dae6a7c
    sd	$v1,360($sp)
.L0dae69a8:
    li	$a6,3
    lw	$at,-21860($gp)
    la	$t1,sub_0dbf0000
    li	$v0,32
    lbu	$at,28($at)
    addiu	$t1,$t1,17296
    bne	$at,$v0,.L0dae6918
    ld	$v1,360($sp)
    ld	$v0,136($sp)
    bnel	$v0,$v1,.L0dae691c
    # Line 2215
    addu	$a6,$s0,$s0
    # Line 2203
    beq	$s8,$a6,.L0dae69e0
    # Line 2205
    lbu	$t1,5170($t1)
    li	$t1,1
.L0dae69e0:
    addu	$t2,$s0,$s0
    sd	$t2,512($sp)
    addiu	$t2,$t2,-2
    mult	$t2,$s3
    li	$a7,1
    move	$a4,$s2
    ld	$a3,456($sp)
    move	$a2,$s4
    move	$a1,$s1
    move	$a0,$s3
    mfhi	$zero
    dsll32	$a6,$t1,0x18
    li	$t0,32
    # lw $t9, -32712($gp) # &sub_0dae0000
    sw	$t0,4($sp)
    dsra32	$a6,$a6,0x18
    addiu	$t9,$t9,4576
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    b	.L0dae6950
    nop
.L0dae6a3c:
    # Line 2224
    ld	$a4,512($sp)
    addiu	$a4,$a4,-1
    mult	$a4,$s3
    move	$a0,$s3
    move	$a1,$s2
    ld	$a3,368($sp)
    move	$a2,$s4
    move	$t9,$s5
    addu	$a3,$a3,$s7
    move	$a4,$s1
    mflo	$a5
    sll	$a5,$a5,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s6
    b	.L0dae6964
    # Line 2201
    addiu	$s8,$s8,1
.L0dae6a7c:
    la	$s8,sub_0dbf0000
    la	$s1,sub_0dae0000
    ld	$s4,544($sp)
    addiu	$s8,$s8,17296
    addiu	$s1,$s1,4576
.L0dae6a90:
    ld	$v0,344($sp)
    ld	$at,352($sp)
    lw	$v0,1224($v0)
    lw	$at,0($at)
    addiu	$v0,$v0,-3
    bne	$at,$v0,.L0dae6ab4
    ld	$s2,560($sp)
    # Line 2232
    b	.L0dae6ab8
    lbu	$t1,5171($s8)
.L0dae6ab4:
    ld	$t1,336($sp)
.L0dae6ab8:
    ld	$t3,56($sp)
    mult	$t3,$s3
    ld	$t2,144($sp)
    mflo	$a4
    nop
    nop
    mult	$t2,$s3
    ld	$t0,312($sp)
    mflo	$a1
    nop
    nop
    mult	$t0,$s3
    ld	$a5,288($sp)
    move	$a0,$s3
    move	$t9,$s1
    ld	$a6,336($sp)
    mfhi	$zero
    dsll32	$a7,$t1,0x18
    dsra32	$a7,$a7,0x18
    dsll32	$a6,$a6,0x18
    lw	$t0,-21860($gp)
    dsra32	$a6,$a6,0x18
    sll	$a4,$a4,0x2
    lb	$t0,2($t0)
    sd	$a4,64($sp)
    addu	$a4,$a4,$s7
    sw	$t0,4($sp)
    ld	$t0,80($sp)
    sd	$a4,520($sp)
    sll	$a1,$a1,0x2
    addu	$s0,$a1,$t0
    addu	$a1,$a1,$s7
    move	$a2,$s0
    sd	$a1,112($sp)
    mflo	$a3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$t0
    ld	$v1,136($sp)
    mult	$v1,$s3
    ld	$t1,520($sp)
    ld	$s7,552($sp)
    ld	$a5,80($sp)
    ld	$v0,344($sp)
    ld	$a4,64($sp)
    ld	$at,352($sp)
    lw	$v0,1224($v0)
    addu	$a4,$a4,$a5
    lw	$at,0($at)
    addiu	$v0,$v0,-3
    mflo	$a5
    sll	$a5,$a5,0x2
    bne	$at,$v0,.L0dae6bcc
    addu	$a5,$a5,$s6
    # Line 2244
    move	$a0,$s3
    move	$a1,$t1
    move	$a2,$s0
    ld	$a3,112($sp)
    move	$t9,$s1
    ld	$s5,568($sp)
    lw	$t0,-21860($gp)
    ld	$s6,576($sp)
    lb	$a7,5171($s8)
    lb	$t0,10($t0)
    lb	$a6,5210($s8)
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    b	.L0dae5430
    ld	$ra,528($sp)
.L0dae6bcc:
    # Line 2254
    move	$a0,$s3
    move	$a1,$t1
    move	$a2,$s0
    ld	$a3,112($sp)
    move	$t9,$s5
    ld	$s8,536($sp)
    bal __glim_SubdivPatchSGIX
    ld	$s6,576($sp)
    b	.L0dae5430
    ld	$ra,528($sp)
.L0dae6bf4:
    sd	$a7,240($sp)
    sd	$a2,248($sp)
    sd	$ra,528($sp)
    sd	$a0,256($sp)
    sd	$a4,272($sp)
    sd	$a4,280($sp)
    # Line 1907
    move	$t3,$a4
    addu	$t3,$a4,$s5
    sd	$t3,304($sp)
    addu	$at,$s3,$s3
    sll	$at,$at,0x2
    sd	$at,168($sp)
    addu	$at,$at,$s7
    b	.L0dae4fac
    sd	$at,200($sp)
.L0dae6c30:
    # Line 2201
    addiu	$at,$s2,-1
    addiu	$v0,$s2,-2
    ld	$v1,256($sp)
    sd	$v0,144($sp)
    sd	$at,56($sp)
    addiu	$v1,$v1,-1
    b	.L0dae6a90
    sd	$v1,136($sp)
.L0dae6c50:
    # Line 2033
    addiu	$a7,$a7,4
    b	.L0dae64f8
    sw	$a6,8108($a7)
.L0dae6c5c:
    # Line 2045
    addiu	$a7,$a7,4
    b	.L0dae6544
    sw	$at,8148($a7)
.L0dae6c68:
    # Line 2084
    addiu	$a6,$a6,-1
    mult	$a6,$s3
    # Line 2085
    ld	$a3,104($sp)
    ld	$a2,112($sp)
    # Line 2084
    mflo	$s0
    # Line 2085
    move	$a0,$s3
    addiu	$a5,$s2,-1
    mult	$a5,$s3
    move	$t9,$s5
    lb	$a7,5171($s8)
    ld	$t0,72($sp)
    lb	$t8,9($t1)
    ld	$a4,80($sp)
    ld	$a1,152($sp)
    lb	$a6,5177($s8)
    sw	$t8,4($sp)
    addu	$a1,$a1,$a4
    # Line 2084
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s6
    # Line 2085
    move	$a5,$s0
    mflo	$a4
    sll	$a4,$a4,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$t0
    ld	$ra,528($sp)
    ld	$s8,536($sp)
    ld	$s2,560($sp)
    b	.L0dae5e80
    ld	$s5,568($sp)
.end DoRow

# Function: DoNormal
# Declared: Line 2267 (Source lines: 2268-2458)
# Address: 0x0dae6cdc - 0x0dae7cac (Size: 4048 bytes, Frame: 208)
.ent DoNormal
DoNormal:
    # Line 2279
    lw	$v1,-21832($gp)
    # Line 2268
    addiu	$sp,$sp,-464
    sd	$a0,168($sp)
    sd	$a1,296($sp)
    # Line 2279
    sltiu	$v1,$v1,1
    sd	$v1,176($sp)
    sd	$s4,160($sp)
    # Line 2270
    lw	$s4,__glCurrentContext
    # Line 2279
    mtc1	$zero,$f0
    sdc1	$f24,16($sp)
    # Line 2274
    lwc1	$f24,5536($s4)
    # Line 2276
    lw	$v0,5560($s4)
    # Line 2275
    lw	$at,5556($s4)
    # Line 2279
    c.eq.s	$f24,$f0
    # Line 2273
    lw	$s4,5544($s4)
    sd	$v0,280($sp)
    # Line 2279
    bc1t	.L0dae6d2c
    sd	$at,272($sp)
    # Line 2283
    b	.L0dae6d30
    li	$a5,2
.L0dae6d2c:
    li	$a5,1
.L0dae6d30:
    sd	$s2,424($sp)
    sd	$s3,432($sp)
    sd	$s6,376($sp)
    sd	$ra,416($sp)
    sd	$s0,384($sp)
    sd	$s1,408($sp)
    sd	$s5,392($sp)
    sd	$s7,400($sp)
    sd	$s8,368($sp)
    # Line 2285
    blez	$a5,.L0dae7c14
    sd	$zero,96($sp)
    sd	$s2,424($sp)
    sd	$s3,432($sp)
    sd	$ra,416($sp)
    sd	$s1,408($sp)
    sd	$s7,400($sp)
    addu	$s6,$s4,$s4
    sd	$s6,224($sp)
    la	$s6,sub_0dae0000
    sll	$s5,$s4,0x2
    sd	$s5,344($sp)
    sll	$s5,$s4,0x2
    sd	$s5,144($sp)
    la	$s5,sub_0dae0000
    sd	$s8,368($sp)
    addiu	$s6,$s6,6536
    addiu	$s5,$s5,4800
    sll	$s0,$s4,0x2
    sd	$s0,352($sp)
    sll	$v1,$s4,0x2
    sd	$v1,312($sp)
    sll	$v1,$s4,0x2
    subu	$v1,$v1,$s4
    sll	$a6,$s4,0x2
    sd	$a6,320($sp)
    ld	$a6,296($sp)
    sd	$v1,232($sp)
    ld	$v1,168($sp)
    addiu	$s0,$a6,-1
    sd	$s0,264($sp)
    addiu	$s0,$v1,-2
    subu	$s0,$v1,$s0
    sll	$s0,$s0,0x2
    sll	$v0,$s4,0x2
    sd	$v0,360($sp)
    addu	$v0,$s4,$s4
    sll	$v0,$v0,0x2
    sd	$v0,136($sp)
    ld	$v0,176($sp)
    addiu	$a6,$a6,-2
    sd	$a6,256($sp)
    sll	$a6,$v0,0x3
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x3
    addu	$a6,$a6,$v0
    sd	$a6,72($sp)
    addu	$a6,$s4,$a6
    sd	$a6,216($sp)
    la	$a6,sub_0dbf0000
    sll	$at,$s4,0x2
    sd	$at,304($sp)
    addiu	$a6,$a6,-10584
    addu	$s0,$s0,$a6
    sd	$s0,200($sp)
    addiu	$s0,$v1,-4
    subu	$s0,$v1,$s0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$a6
    sd	$s0,184($sp)
    subu	$s0,$v1,$a5
    sll	$s0,$s0,0x2
    sll	$at,$v1,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x4
    sd	$at,288($sp)
    addiu	$at,$v1,-1
    subu	$at,$v1,$at
    sll	$at,$at,0x2
    addu	$at,$at,$a6
    sd	$at,248($sp)
    addiu	$at,$v1,-3
    subu	$at,$v1,$at
    sll	$at,$at,0x2
    addu	$at,$at,$a6
    sd	$at,192($sp)
    sll	$at,$v1,0x2
    addu	$at,$at,$a6
    sd	$at,152($sp)
    la	$at,sub_0dbf0000
    addu	$s0,$s0,$a6
    sd	$s0,240($sp)
    addiu	$at,$at,17296
    addiu	$s0,$at,10784
    sd	$s0,80($sp)
    addiu	$s0,$at,5128
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    sd	$v1,48($sp)
    addiu	$v1,$at,8112
    sd	$v1,120($sp)
    sll	$v1,$v0,0x2
    subu	$v1,$v1,$v0
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$v0
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$v0
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$v0
    sd	$v1,64($sp)
    addu	$v1,$s4,$v1
    sd	$v1,208($sp)
    addiu	$a6,$at,8152
    sd	$a6,112($sp)
    sll	$a6,$v0,0x3
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x3
    addu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    addiu	$a6,$a6,10328
    sd	$a6,88($sp)
    sll	$a6,$v0,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    addiu	$a6,$a6,8272
    b	.L0dae6f98
    sd	$a6,128($sp)
.L0dae6f48:
    # Line 2450
    addiu	$a3,$a3,10748
.L0dae6f4c:
    move	$a1,$a7
    la	$a0,sub_0dbf0000
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a2,112($sp)
    addiu	$a0,$a0,17296
    addiu	$t9,$t9,8004
    bal __glim_SubdivPatchSGIX
    lbu	$a0,5171($a0)
.L0dae6f6c:
    # Line 2285
    ld	$v0,240($sp)
.L0dae6f70:
    ld	$v1,96($sp)
    ld	$at,48($sp)
    ld	$a6,288($sp)
    addiu	$v1,$v1,1
    addiu	$at,$at,-4
    addiu	$a6,$a6,-144
    sd	$a6,288($sp)
    sd	$at,48($sp)
    beq	$at,$v0,.L0dae7c14
    sd	$v1,96($sp)
.L0dae6f98:
    la	$v0,sub_0dbf0000
    # Line 2286
    ld	$at,48($sp)
    ld	$v1,48($sp)
    addiu	$v0,$v0,-10584
    beq	$at,$v0,.L0dae70b8
    ld	$a6,248($sp)
    ld	$at,48($sp)
    beq	$v1,$a6,.L0dae77c0
    ld	$v0,200($sp)
    ld	$v1,48($sp)
    beq	$at,$v0,.L0dae7888
    ld	$a6,192($sp)
    ld	$at,48($sp)
    beq	$v1,$a6,.L0dae7934
    ld	$v0,184($sp)
    bne	$at,$v0,.L0dae7140
    # Line 2309
    ld	$a6,264($sp)
    # Line 2308
    ld	$v0,256($sp)
    li	$at,3
    div	$zero,$v0,$at
    mfhi	$v1
    nop
    nop
    # Line 2309
    div	$zero,$a6,$at
    # Line 2310
    ld	$v0,296($sp)
    # Line 2309
    mfhi	$a6
    nop
    nop
    # Line 2310
    div	$zero,$v0,$at
    # Line 2308
    teq	$at,$zero,0x7
    # Line 2309
    teq	$at,$zero,0x7
    # Line 2310
    teq	$at,$zero,0x7
    la	$at,sub_0dbf0000
    addiu	$at,$at,17296
    # Line 2308
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$v1
    # Line 2309
    sll	$v1,$a6,0x2
    subu	$v1,$v1,$a6
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a6
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a6
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a6
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$at
    addiu	$v1,$v1,3072
    sw	$v1,4($sp)
    # Line 2308
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$at
    addiu	$v0,$v0,3072
    sw	$v0,0($sp)
    # Line 2310
    mfhi	$v0
    sll	$a6,$v0,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    addiu	$a6,$a6,3072
    b	.L0dae7140
    sw	$a6,8($sp)
.L0dae70b8:
    # Line 2288
    ld	$at,256($sp)
    li	$a6,3
    div	$zero,$at,$a6
    # Line 2289
    ld	$v1,264($sp)
    # Line 2288
    mfhi	$v0
    nop
    nop
    # Line 2289
    div	$zero,$v1,$a6
    # Line 2290
    ld	$at,296($sp)
    # Line 2289
    mfhi	$v1
    nop
    nop
    # Line 2290
    div	$zero,$at,$a6
    # Line 2288
    teq	$a6,$zero,0x7
    # Line 2289
    teq	$a6,$zero,0x7
    # Line 2288
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    # Line 2289
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    la	$v1,sub_0dbf0000
    # Line 2290
    teq	$a6,$zero,0x7
    # Line 2288
    sll	$at,$at,0x4
    addiu	$v1,$v1,17296
    addu	$at,$at,$v1
    sw	$at,0($sp)
    # Line 2289
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$v1
    sw	$v0,4($sp)
    # Line 2290
    mfhi	$a6
    sll	$v0,$a6,0x3
    addu	$v0,$v0,$a6
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$v1
    sw	$v0,8($sp)
.L0dae7140:
    # Line 2393
    li	$s1,2
    ld	$a7,48($sp)
    lw	$s8,4($sp)
    ld	$s7,224($sp)
    # Line 2314
    lw	$a7,1224($a7)
    li	$a5,2
    ld	$v1,296($sp)
    move	$at,$a7
    la	$at,sub_0dbf0000
    addiu	$v0,$a7,-1
    addiu	$a6,$a7,-2
    slt	$a5,$a5,$a6
    sd	$a7,56($sp)
    beq	$v0,$v1,.L0dae71dc
    # Line 2393
    ld	$s3,56($sp)
    # Line 2319
    ld	$s7,216($sp)
    ld	$s3,208($sp)
    la	$at,sub_0dbf0000
    sll	$s2,$s4,0x2
    lw	$v1,8($sp)
    beqz	$a5,.L0dae7920
    li	$s1,2
    addiu	$at,$at,17296
    lw	$s8,4($sp)
    sd	$v1,328($sp)
    addu	$s2,$s2,$at
    addiu	$s2,$s2,10784
    sll	$s7,$s7,0x2
    sll	$s3,$s3,0x2
    addu	$s3,$s3,$at
    addu	$s7,$s7,$at
    addiu	$s7,$s7,10328
    lw	$a6,0($sp)
    ld	$v0,56($sp)
    addiu	$s3,$s3,8272
    sd	$a6,336($sp)
    addiu	$v0,$v0,-2
    b	.L0dae761c
    sd	$v0,104($sp)
.L0dae71dc:
    # Line 2393
    beqz	$a5,.L0dae7364
    ld	$v0,232($sp)
    sll	$v0,$v0,0x2
    sd	$v0,24($sp)
    addiu	$at,$at,17296
    sll	$s2,$s4,0x2
    sd	$s2,32($sp)
    addu	$s2,$s2,$at
    addiu	$s3,$s3,-2
    sll	$s7,$s7,0x2
    sd	$s7,40($sp)
    ld	$s7,72($sp)
    sd	$s3,104($sp)
    ld	$s3,64($sp)
    addiu	$s2,$s2,10784
    addu	$s7,$s4,$s7
    addu	$s3,$s4,$s3
    sll	$s3,$s3,0x2
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$at
    addu	$s3,$s3,$at
    addiu	$s3,$s3,8272
    b	.L0dae72ac
    addiu	$s7,$s7,10328
.L0dae723c:
    ld	$v0,96($sp)
.L0dae7240:
    # Line 2411
    beqz	$v0,.L0dae735c
    # Line 2415
    move	$a2,$s2
.L0dae7248:
    li	$a0,6
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
.L0dae7258:
    # Line 2393
    addiu	$s1,$s1,1
.L0dae725c:
    ld	$v1,360($sp)
    ld	$v0,32($sp)
    ld	$at,352($sp)
    addu	$s2,$v1,$s2
    ld	$a6,344($sp)
    addu	$s3,$at,$s3
    ld	$at,304($sp)
    addu	$s7,$a6,$s7
    ld	$a6,40($sp)
    addu	$v0,$v0,$v1
    ld	$v1,104($sp)
    addu	$a6,$a6,$at
    ld	$at,312($sp)
    sd	$a6,40($sp)
    ld	$a6,24($sp)
    sd	$v0,32($sp)
    slt	$v1,$s1,$v1
    addu	$a6,$a6,$at
    beqz	$v1,.L0dae7364
    sd	$a6,24($sp)
.L0dae72ac:
    lw	$v0,-21860($gp)
    lbu	$v0,3($v0)
    li	$v1,32
    beq	$v0,$v1,.L0dae7308
    # Line 2405
    move	$a0,$s4
    move	$a1,$s1
    lw	$a4,8($sp)
    move	$a3,$s8
    lw	$a2,0($sp)
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    lw	$v1,-21864($gp)
    beqz	$v1,.L0dae723c
    # Line 2411
    move	$a0,$s4
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a1,6
    move	$a2,$s0
    addiu	$t9,$t9,5840
    bal __glim_SubdivPatchSGIX
    move	$a3,$s3
    b	.L0dae7240
    ld	$v0,96($sp)
.L0dae7308:
    # Line 2395
    move	$a3,$s0
    ld	$a0,40($sp)
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    addu	$a2,$a2,$s8
    addu	$a1,$a1,$s8
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s8
    lw	$at,-21864($gp)
    beqz	$at,.L0dae7258
    # Line 2400
    li	$a0,1
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$s4
    move	$a2,$s0
    addiu	$t9,$t9,6088
    bal __glim_SubdivPatchSGIX
    move	$a3,$s3
    b	.L0dae725c
    # Line 2393
    addiu	$s1,$s1,1
.L0dae735c:
    # Line 2415
    b	.L0dae7248
    move	$a2,$s7
.L0dae7364:
    ld	$at,272($sp)
    # Line 2393
    ld	$a7,288($sp)
    blez	$at,.L0dae7408
    la	$a6,sub_0dbf0000
    addiu	$a6,$a6,17296
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a6
    lw	$at,-21848($gp)
    addiu	$a7,$a7,5232
    ld	$a5,272($sp)
    sll	$t0,$at,0x2
    addu	$t0,$t0,$a6
    move	$t2,$a5
    andi	$t1,$a5,0x3
    addu	$a5,$a5,$at
    sll	$a5,$a5,0x2
    beqz	$t1,.L0dae73c4
    addu	$a5,$a5,$a6
.L0dae73ac:
    # Line 2423
    addiu	$t0,$t0,4
    # Line 2424
    sw	$a7,8108($t0)
    # Line 2423
    ld	$at,320($sp)
    addi	$t1,$t1,-1
    bnez	$t1,.L0dae73ac
    addu	$a7,$at,$a7
.L0dae73c4:
    sra	$v0,$t2,0x2
    move	$t3,$t0
    beqz	$v0,.L0dae7408
    move	$t1,$a7
    move	$t0,$t3
    move	$a7,$t1
.L0dae73dc:
    ld	$a6,320($sp)
    # Line 2424
    sw	$a7,8112($t0)
    # Line 2423
    addiu	$t0,$t0,16
    addu	$v1,$a6,$a7
    # Line 2424
    sw	$v1,8100($t0)
    # Line 2423
    addu	$v1,$a6,$v1
    # Line 2424
    sw	$v1,8104($t0)
    # Line 2423
    addu	$v1,$a6,$v1
    addu	$a7,$a6,$v1
    bne	$t0,$a5,.L0dae73dc
    # Line 2424
    sw	$v1,8108($t0)
.L0dae7408:
    # Line 2423
    lw	$at,-21844($gp)
    ld	$a6,280($sp)
    ld	$a5,280($sp)
    ld	$t0,288($sp)
    blez	$a6,.L0dae74ac
    andi	$t1,$a5,0x3
    sll	$a7,$at,0x2
    sll	$t0,$t0,0x2
    move	$t2,$a5
    la	$a6,sub_0dbf0000
    addu	$a5,$a5,$at
    sll	$a5,$a5,0x2
    addiu	$a6,$a6,17296
    addu	$a7,$a7,$a6
    addu	$a5,$a5,$a6
    addu	$t0,$t0,$a6
    beqz	$t1,.L0dae7468
    addiu	$t0,$t0,5376
.L0dae7450:
    # Line 2426
    addiu	$a7,$a7,4
    # Line 2427
    sw	$t0,8148($a7)
    # Line 2426
    ld	$at,320($sp)
    addi	$t1,$t1,-1
    bnez	$t1,.L0dae7450
    addu	$t0,$at,$t0
.L0dae7468:
    move	$t3,$a7
    sra	$v0,$t2,0x2
    beqz	$v0,.L0dae74ac
    move	$t1,$t0
    move	$t0,$t3
    move	$a7,$t1
.L0dae7480:
    ld	$a6,320($sp)
    # Line 2427
    sw	$a7,8152($t0)
    # Line 2426
    addiu	$t0,$t0,16
    addu	$v1,$a6,$a7
    # Line 2427
    sw	$v1,8140($t0)
    # Line 2426
    addu	$v1,$a6,$v1
    # Line 2427
    sw	$v1,8144($t0)
    # Line 2426
    addu	$v1,$a6,$v1
    addu	$a7,$a6,$v1
    bne	$t0,$a5,.L0dae7480
    # Line 2427
    sw	$v1,8148($t0)
.L0dae74ac:
    la	$a6,sub_0dbf0000
    addiu	$a6,$a6,17296
    # Line 2426
    lbu	$a6,5168($a6)
    li	$at,3
    beq	$a6,$at,.L0dae79fc
    lw	$a5,-21856($gp)
.L0dae74c4:
    # Line 2431
    lw	$at,-21864($gp)
.L0dae74c8:
    beqz	$at,.L0dae74f8
    # Line 2437
    move	$a1,$s4
    move	$a2,$a5
    ld	$a3,120($sp)
    la	$a0,sub_0dbf0000
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a4,128($sp)
    addiu	$a0,$a0,17296
    addiu	$t9,$t9,6288
    bal __glim_SubdivPatchSGIX
    lbu	$a0,5170($a0)
    lw	$a5,-21856($gp)
.L0dae74f8:
    ld	$v0,152($sp)
    ld	$at,48($sp)
    bne	$at,$v0,.L0dae750c
    ld	$a3,80($sp)
    ld	$a3,88($sp)
.L0dae750c:
    # Line 2438
    move	$a1,$a5
    la	$a0,sub_0dbf0000
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a2,120($sp)
    addiu	$a0,$a0,17296
    addiu	$t9,$t9,8004
    bal __glim_SubdivPatchSGIX
    lbu	$a0,5170($a0)
    la	$a5,sub_0dbf0000
    addiu	$a5,$a5,17296
    lbu	$a6,5169($a5)
    li	$at,3
    beq	$a6,$at,.L0dae7a4c
    lw	$a7,-21852($gp)
.L0dae7544:
    # Line 2442
    lw	$a6,-21864($gp)
.L0dae7548:
    beqz	$a6,.L0dae75a0
    ld	$t0,56($sp)
    # Line 2448
    addiu	$t0,$t0,-3
    mult	$t0,$s4
    ld	$a3,112($sp)
    move	$a2,$a7
    # lw $t9, -32712($gp) # &sub_0dae0000
    la	$a5,sub_0dbf0000
    move	$a1,$s4
    addiu	$t9,$t9,6288
    addiu	$a5,$a5,17296
    ld	$a6,64($sp)
    lbu	$a0,5171($a5)
    mflo	$a4
    addu	$a4,$a4,$a6
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    la	$a5,sub_0dbf0000
    lw	$a7,-21852($gp)
    addiu	$a5,$a5,17296
.L0dae75a0:
    ld	$at,56($sp)
    ld	$a6,48($sp)
    sll	$t0,$at,0x2
    subu	$t0,$t0,$at
    ld	$at,152($sp)
    # Line 2450
    sll	$a3,$t0,0x2
    # Line 2448
    bne	$a6,$at,.L0dae6f48
    # Line 2450
    addu	$a3,$a3,$a5
    ld	$a3,72($sp)
    addu	$a3,$t0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    b	.L0dae6f4c
    addiu	$a3,$a3,10292
.L0dae75d8:
    ld	$a6,96($sp)
    # Line 2326
    beqz	$a6,.L0dae766c
    # Line 2330
    move	$a2,$s2
.L0dae75e4:
    li	$a0,6
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
    # Line 2319
    addiu	$s1,$s1,1
    ld	$v1,352($sp)
    ld	$v0,344($sp)
    addu	$s3,$v1,$s3
    ld	$at,104($sp)
    addu	$s7,$v0,$s7
    ld	$v0,360($sp)
    slt	$at,$s1,$at
    beqz	$at,.L0dae7674
    addu	$s2,$v0,$s2
.L0dae761c:
    # Line 2320
    move	$a0,$s4
    move	$a1,$s1
    ld	$a2,336($sp)
    move	$a3,$s8
    ld	$a4,328($sp)
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    lw	$a6,-21864($gp)
    beqz	$a6,.L0dae75d8
    # Line 2326
    move	$a0,$s4
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a1,6
    move	$a2,$s0
    addiu	$t9,$t9,5840
    bal __glim_SubdivPatchSGIX
    move	$a3,$s3
    ld	$at,96($sp)
    bnez	$at,.L0dae75e4
    # Line 2330
    move	$a2,$s2
.L0dae766c:
    b	.L0dae75e4
    move	$a2,$s7
.L0dae7674:
    # Line 2319
    lw	$v0,-21860($gp)
    lbu	$v0,1($v0)
    li	$v1,32
    beq	$v0,$v1,.L0dae7a90
    # Line 2348
    move	$a0,$s4
    lw	$a4,8($sp)
    move	$a3,$s8
    lw	$a2,0($sp)
    li	$a1,1
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    lw	$v1,-21864($gp)
    beqz	$v1,.L0dae76c8
    # Line 2354
    move	$a0,$s4
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a1,6
    move	$a2,$s0
    addiu	$t9,$t9,5840
    bal __glim_SubdivPatchSGIX
    ld	$a3,128($sp)
.L0dae76c8:
    ld	$v0,152($sp)
    ld	$at,48($sp)
    bne	$at,$v0,.L0dae76dc
    ld	$a2,80($sp)
    ld	$a2,88($sp)
.L0dae76dc:
    # Line 2358
    li	$a0,6
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
.L0dae76ec:
    ld	$s1,56($sp)
.L0dae76f0:
    addiu	$s1,$s1,-3
    mult	$s1,$s4
    lw	$v1,-21860($gp)
    lbu	$v1,2($v1)
    li	$a6,32
    mflo	$s1
    beq	$v1,$a6,.L0dae7ae0
    # Line 2376
    move	$a0,$s4
    ld	$a1,104($sp)
    lw	$a4,8($sp)
    move	$a3,$s8
    lw	$a2,0($sp)
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s5
    lw	$at,-21864($gp)
    beqz	$at,.L0dae7768
    # Line 2382
    move	$a0,$s4
    move	$a2,$s0
    li	$a1,6
    # lw $t9, -32712($gp) # &sub_0dae0000
    la	$a4,sub_0dbf0000
    ld	$a3,64($sp)
    addiu	$t9,$t9,5840
    addiu	$a4,$a4,17296
    addu	$a3,$s1,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
.L0dae7768:
    ld	$v0,152($sp)
    ld	$at,48($sp)
    # Line 2386
    sll	$a2,$s1,0x2
    # Line 2382
    bne	$at,$v0,.L0dae779c
    la	$a6,sub_0dbf0000
    la	$a6,sub_0dbf0000
    ld	$a2,72($sp)
    addiu	$a6,$a6,17296
    # Line 2386
    addu	$a2,$s1,$a2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    b	.L0dae77a8
    addiu	$a2,$a2,10328
.L0dae779c:
    addiu	$a6,$a6,17296
    addu	$a2,$a2,$a6
    addiu	$a2,$a2,10784
.L0dae77a8:
    li	$a0,6
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    move	$t9,$s6
    b	.L0dae6f70
    # Line 2285
    ld	$v0,240($sp)
.L0dae77c0:
    # Line 2293
    ld	$a6,256($sp)
    li	$v1,3
    div	$zero,$a6,$v1
    # Line 2294
    ld	$v0,264($sp)
    # Line 2293
    mfhi	$at
    nop
    nop
    # Line 2294
    div	$zero,$v0,$v1
    # Line 2295
    ld	$a6,296($sp)
    # Line 2294
    mfhi	$v0
    nop
    nop
    # Line 2295
    div	$zero,$a6,$v1
    # Line 2293
    teq	$v1,$zero,0x7
    # Line 2294
    teq	$v1,$zero,0x7
    # Line 2295
    teq	$v1,$zero,0x7
    la	$v1,sub_0dbf0000
    # Line 2293
    sll	$a6,$at,0x2
    subu	$a6,$a6,$at
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$at
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    # Line 2294
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addiu	$v1,$v1,17296
    addu	$at,$at,$v1
    addiu	$at,$at,576
    sw	$at,4($sp)
    # Line 2293
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$v1
    addiu	$a6,$a6,576
    sw	$a6,0($sp)
    # Line 2295
    mfhi	$a6
    sll	$v0,$a6,0x2
    subu	$v0,$v0,$a6
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$a6
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a6
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addiu	$v0,$v0,576
    # Line 2296
    b	.L0dae7140
    # Line 2295
    sw	$v0,8($sp)
.L0dae7888:
    # Line 2298
    ld	$v1,256($sp)
    li	$v0,3
    div	$zero,$v1,$v0
    # Line 2299
    ld	$at,264($sp)
    # Line 2298
    mfhi	$a6
    nop
    nop
    # Line 2299
    div	$zero,$at,$v0
    # Line 2300
    ld	$v1,296($sp)
    # Line 2299
    mfhi	$at
    nop
    nop
    # Line 2300
    div	$zero,$v1,$v0
    # Line 2298
    teq	$v0,$zero,0x7
    # Line 2299
    teq	$v0,$zero,0x7
    # Line 2298
    sll	$v1,$a6,0x6
    subu	$v1,$v1,$a6
    # Line 2299
    sll	$a6,$at,0x6
    subu	$a6,$a6,$at
    la	$at,sub_0dbf0000
    # Line 2300
    teq	$v0,$zero,0x7
    # Line 2298
    sll	$v1,$v1,0x2
    addiu	$at,$at,17296
    addu	$v1,$v1,$at
    addiu	$v1,$v1,1120
    sw	$v1,0($sp)
    # Line 2299
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    addiu	$a6,$a6,1120
    sw	$a6,4($sp)
    # Line 2300
    mfhi	$v0
    sll	$a6,$v0,0x6
    subu	$a6,$a6,$v0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$at
    addiu	$a6,$a6,1120
    # Line 2301
    b	.L0dae7140
    # Line 2300
    sw	$a6,8($sp)
.L0dae7920:
    # Line 2319
    lw	$s8,4($sp)
    ld	$a6,56($sp)
    addiu	$a6,$a6,-2
    b	.L0dae7674
    sd	$a6,104($sp)
.L0dae7934:
    # Line 2303
    ld	$a6,256($sp)
    li	$v1,3
    div	$zero,$a6,$v1
    # Line 2304
    ld	$v0,264($sp)
    # Line 2303
    mfhi	$at
    nop
    nop
    # Line 2304
    div	$zero,$v0,$v1
    # Line 2305
    ld	$a6,296($sp)
    # Line 2304
    mfhi	$v0
    nop
    nop
    # Line 2305
    div	$zero,$a6,$v1
    # Line 2303
    teq	$v1,$zero,0x7
    # Line 2304
    teq	$v1,$zero,0x7
    # Line 2305
    teq	$v1,$zero,0x7
    la	$v1,sub_0dbf0000
    # Line 2303
    sll	$a6,$at,0x2
    subu	$a6,$a6,$at
    sll	$a6,$a6,0x3
    addu	$a6,$a6,$at
    sll	$a6,$a6,0x2
    subu	$a6,$a6,$at
    # Line 2304
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addiu	$v1,$v1,17296
    addu	$at,$at,$v1
    addiu	$at,$at,1880
    sw	$at,4($sp)
    # Line 2303
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$v1
    addiu	$a6,$a6,1880
    sw	$a6,0($sp)
    # Line 2305
    mfhi	$a6
    sll	$v0,$a6,0x2
    subu	$v0,$v0,$a6
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$a6
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addiu	$v0,$v0,1880
    # Line 2306
    b	.L0dae7140
    # Line 2305
    sw	$v0,8($sp)
.L0dae79fc:
    # Line 2426
    sll	$a7,$a5,0x2
    blez	$a5,.L0dae74c4
    la	$v0,sub_0dbf0000
    move	$a2,$a5
    andi	$at,$a5,0x1
    addiu	$v0,$v0,17296
    move	$t1,$v0
    move	$t0,$v0
    beqz	$at,.L0dae7a38
    addu	$a7,$a7,$v0
    lw	$v1,8192($t0)
    li	$a6,32
    beql	$v1,$a6,.L0dae7c54
    # Line 2433
    lw	$at,8112($t0)
.L0dae7a34:
    # Line 2431
    addiu	$t0,$t0,4
.L0dae7a38:
    sra	$at,$a2,0x1
    bnezl	$at,.L0dae7b78
    # Line 2426
    lw	$v1,8192($t0)
.L0dae7a44:
    b	.L0dae74c8
    # Line 2431
    lw	$at,-21864($gp)
.L0dae7a4c:
    # Line 2438
    move	$a2,$a7
    andi	$at,$a7,0x1
    blez	$a7,.L0dae7544
    move	$t0,$a5
    move	$t1,$a5
    sll	$t2,$a7,0x2
    beqz	$at,.L0dae7a7c
    addu	$t2,$t2,$a5
    li	$v1,32
    lw	$v0,8232($t0)
    beq	$v0,$v1,.L0dae7c60
    # Line 2442
    addiu	$t0,$t0,4
.L0dae7a7c:
    sra	$a6,$a2,0x1
    bnezl	$a6,.L0dae7bb8
    # Line 2438
    lw	$at,8232($t0)
.L0dae7a88:
    b	.L0dae7548
    # Line 2442
    lw	$a6,-21864($gp)
.L0dae7a90:
    # Line 2338
    move	$a1,$s8
    move	$a3,$s0
    ld	$a2,136($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$a0,144($sp)
    addu	$a2,$a2,$s8
    addiu	$t9,$t9,5384
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s8
    lw	$at,-21864($gp)
    beqz	$at,.L0dae76ec
    # Line 2343
    li	$a0,1
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a1,$s4
    move	$a2,$s0
    addiu	$t9,$t9,6088
    bal __glim_SubdivPatchSGIX
    ld	$a3,128($sp)
    b	.L0dae76f0
    ld	$s1,56($sp)
.L0dae7ae0:
    ld	$a2,104($sp)
    # Line 2365
    mult	$a2,$s4
    ld	$a1,56($sp)
    mflo	$a0
    nop
    addiu	$a1,$a1,-1
    mult	$a1,$s4
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a3,$s0
    sll	$s2,$s1,0x2
    addiu	$t9,$t9,5384
    addu	$a1,$s2,$s8
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s8
    mflo	$a2
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$s8
    lw	$at,-21864($gp)
    ld	$v0,48($sp)
    beqz	$at,.L0dae6f6c
    ld	$v1,152($sp)
    ld	$a3,64($sp)
    bne	$v0,$v1,.L0dae7be4
    la	$a6,sub_0dbf0000
    # Line 2370
    addu	$a3,$s1,$a3
    addiu	$a6,$a6,17296
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    b	.L0dae7bf4
    addiu	$a3,$a3,8272
.L0dae7b5c:
    # Line 2426
    lw	$at,8196($t0)
    beql	$at,$v0,.L0dae7b94
    # Line 2433
    lw	$v0,8116($t0)
.L0dae7b68:
    # Line 2431
    addiu	$t0,$t0,8
    beq	$t0,$a7,.L0dae7a44
    nop
    # Line 2426
    lw	$v1,8192($t0)
.L0dae7b78:
    li	$a6,32
    bne	$v1,$a6,.L0dae7b5c
    li	$v0,32
    # Line 2433
    lw	$at,8112($t0)
    addiu	$t1,$t1,4
    b	.L0dae7b5c
    sw	$at,8108($t1)
.L0dae7b94:
    addiu	$t1,$t1,4
    b	.L0dae7b68
    sw	$v0,8108($t1)
.L0dae7ba0:
    # Line 2438
    lw	$v1,8236($t0)
    beq	$v1,$a6,.L0dae7bd4
    # Line 2442
    addiu	$t0,$t0,8
.L0dae7bac:
    beq	$t0,$t2,.L0dae7a88
    nop
    # Line 2438
    lw	$at,8232($t0)
.L0dae7bb8:
    li	$v0,32
    bne	$at,$v0,.L0dae7ba0
    li	$a6,32
    # Line 2444
    lw	$v1,8156($t1)
    addiu	$t1,$t1,4
    b	.L0dae7ba0
    sw	$v1,8148($t1)
.L0dae7bd4:
    lw	$a6,8156($t1)
    addiu	$t1,$t1,4
    b	.L0dae7bac
    sw	$a6,8148($t1)
.L0dae7be4:
    la	$a3,sub_0dbf0000
    addiu	$a3,$a3,17296
    # Line 2370
    addu	$a3,$s2,$a3
    addiu	$a3,$a3,10784
.L0dae7bf4:
    # lw $t9, -32712($gp) # &sub_0dae0000
    li	$a0,1
    move	$a1,$s4
    addiu	$t9,$t9,6088
    bal __glim_SubdivPatchSGIX
    move	$a2,$s0
    b	.L0dae6f70
    # Line 2285
    ld	$v0,240($sp)
.L0dae7c14:
    ld	$s8,368($sp)
    ld	$s6,376($sp)
    ld	$s0,384($sp)
    mtc1	$zero,$f1
    ld	$s5,392($sp)
    ld	$s7,400($sp)
    c.eq.s	$f24,$f1
    ld	$s1,408($sp)
    ld	$s2,424($sp)
    bc1f	.L0dae7c70
    ld	$s3,432($sp)
    ld	$ra,416($sp)
.L0dae7c44:
    # Line 2458
    ld	$s4,160($sp)
    ldc1	$f24,16($sp)
    jr	$ra
    addiu	$sp,$sp,464
.L0dae7c54:
    # Line 2433
    addiu	$t1,$t1,4
    b	.L0dae7a34
    sw	$at,8108($t1)
.L0dae7c60:
    # Line 2444
    lw	$v0,8156($t1)
    addiu	$t1,$t1,4
    b	.L0dae7a7c
    sw	$v0,8148($t1)
.L0dae7c70:
    ld	$a0,168($sp)
    # Line 2456
    ld	$a1,176($sp)
    ld	$s8,368($sp)
    ld	$s6,376($sp)
    ld	$s0,384($sp)
    ld	$s5,392($sp)
    ld	$s7,400($sp)
    # lw $t9, -32712($gp) # &sub_0dae0000
    ld	$s1,408($sp)
    ld	$s2,424($sp)
    addiu	$t9,$t9,32220
    bal __glim_SubdivPatchSGIX
    ld	$s3,432($sp)
    b	.L0dae7c44
    ld	$ra,416($sp)
.end DoNormal

# Function: DoInterpolate
# Declared: Line 2462 (Source lines: 2465-2479)
# Address: 0x0dae7cac - 0x0dae7ddc (Size: 304 bytes, Frame: 0)
.ent DoInterpolate
DoInterpolate:
    # Line 2469
    la	$v1,sub_0dbf0000
    # Line 2465
    lw	$at,__glCurrentContext
    # Line 2469
    sll	$v0,$a0,0x2
    addiu	$v1,$v1,-10584
    addu	$v0,$v0,$v1
    lw	$v0,1224($v0)
    # Line 2468
    lw	$v1,5544($at)
    # Line 2469
    addiu	$v0,$v0,-2
    mult	$v0,$v1
    la	$a4,sub_0dbf0000
    ldc1	$f5,_lit8_3ff0000000000000
    addiu	$a4,$a4,17296
    lwc1	$f4,5536($at)
    sll	$a2,$a1,0x2
    subu	$a2,$a2,$a1
    sll	$a2,$a2,0x2
    subu	$a2,$a2,$a1
    sll	$a2,$a2,0x2
    subu	$a2,$a2,$a1
    sll	$a2,$a2,0x2
    mflo	$a5
    blez	$a5,.L0dae7dd4
    subu	$a2,$a2,$a1
    li	$a6,1
    slt	$at,$a5,$a6
    beqzl	$at,.L0dae7d18
    move	$a6,$a5
.L0dae7d18:
    sll	$a3,$a5,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a4
    addu	$a3,$a3,$a4
    cvt.d.s	$f0,$f4
    andi	$at,$a6,0x1
    beqz	$at,.L0dae7d64
    sub.d	$f5,$f5,$f0
    # Line 2476
    lwc1	$f1,8272($a2)
    lwc1	$f2,9640($a4)
    mul.s	$f1,$f1,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    # Line 2475
    addiu	$a4,$a4,4
    addiu	$a2,$a2,4
    # Line 2476
    swc1	$f1,8268($a2)
.L0dae7d64:
    move	$a7,$a4
    sra	$v0,$a6,0x1
    beqz	$v0,.L0dae7dd4
    move	$a5,$a2
    move	$a2,$a7
    move	$a1,$a5
.L0dae7d7c:
    lwc1	$f3,8276($a1)
    lwc1	$f1,9644($a2)
    mul.s	$f3,$f3,$f4
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f5
    lwc1	$f2,8272($a1)
    lwc1	$f0,9640($a2)
    mul.s	$f2,$f2,$f4
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f1
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f0
    cvt.s.d	$f3,$f3
    # Line 2475
    addiu	$a1,$a1,8
    addiu	$a2,$a2,8
    # Line 2476
    cvt.s.d	$f2,$f2
    # Line 2475
    sltu	$v1,$a2,$a3
    # Line 2476
    swc1	$f3,8268($a1)
    # Line 2475
    bnez	$v1,.L0dae7d7c
    # Line 2476
    swc1	$f2,8264($a1)
.L0dae7dd4:
    # Line 2479
    jr	$ra
    nop
.end DoInterpolate

# Function: DoInterpolateNormal
# Declared: Line 2483 (Source lines: 2490-2518)
# Address: 0x0dae7ddc - 0x0dae8014 (Size: 568 bytes, Frame: 0)
.ent DoInterpolateNormal
DoInterpolateNormal:
    # Line 2497
    la	$t0,sub_0dbf0000
    la	$v0,sub_0dbf0000
    # Line 2490
    lw	$at,__glCurrentContext
    # Line 2497
    sll	$t1,$a0,0x2
    addiu	$v0,$v0,-10584
    addu	$t1,$t1,$v0
    lw	$a3,1220($t1)
    # Line 2490
    lwc1	$f5,5536($at)
    # Line 2497
    slti	$at,$a3,3
    bnez	$at,.L0dae8008
    addiu	$a3,$a3,-3
    la	$t0,sub_0dbf0000
    addiu	$t0,$t0,17296
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    addiu	$a4,$a2,3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    sll	$a6,$a3,0x2
    subu	$a6,$a6,$a3
    sll	$a6,$a6,0x1
    sll	$a4,$a4,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$t0
    addu	$a4,$a4,$t0
    move	$a5,$a2
.L0dae7e44:
    move	$a7,$a6
    # Line 2500
    lwc1	$f2,10784($a5)
    swc1	$f2,10784($a7)
    lwc1	$f1,10788($a5)
    # Line 2497
    addiu	$a4,$a4,-12
    # Line 2500
    swc1	$f1,10788($a7)
    # Line 2497
    addiu	$a2,$a2,-12
    # Line 2500
    lwc1	$f0,10792($a5)
    # Line 2497
    addiu	$a3,$a3,-1
    addiu	$a6,$a6,-24
    # Line 2500
    swc1	$f0,10792($a7)
    # Line 2497
    bgez	$a3,.L0dae7e44
    move	$a5,$a2
.L0dae7e78:
    # Line 2506
    lw	$a7,1224($t1)
    addiu	$a4,$t0,24
    addiu	$a2,$t0,12
    slti	$at,$a7,5
    bnez	$at,.L0dae7f08
    li	$a3,1
    addiu	$a6,$a7,-3
    ldc1	$f4,_lit8_3fe0000000000000
    move	$a5,$a2
.L0dae7e9c:
    # Line 2509
    lwc1	$f2,10804($a5)
    lwc1	$f1,10780($a5)
    lwc1	$f0,10776($a5)
    add.s	$f1,$f1,$f2
    lwc1	$f2,10800($a5)
    add.s	$f0,$f0,$f2
    lwc1	$f3,10772($a5)
    cvt.d.s	$f1,$f1
    lwc1	$f2,10796($a5)
    mul.d	$f1,$f1,$f4
    cvt.d.s	$f0,$f0
    add.s	$f3,$f3,$f2
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    cvt.s.d	$f1,$f1
    # Line 2506
    addiu	$a4,$a4,24
    # Line 2509
    cvt.s.d	$f0,$f0
    # Line 2506
    addiu	$a2,$a2,24
    addiu	$a3,$a3,2
    # Line 2509
    cvt.s.d	$f3,$f3
    # Line 2506
    slt	$v0,$a3,$a6
    # Line 2509
    swc1	$f1,10792($a5)
    swc1	$f0,10788($a5)
    swc1	$f3,10784($a5)
    # Line 2506
    bnez	$v0,.L0dae7e9c
    move	$a5,$a2
.L0dae7f08:
    ldc1	$f4,_lit8_3ff0000000000000
    slti	$v1,$a7,3
    bnez	$v1,.L0dae8000
    sll	$a3,$a7,0x2
    li	$a5,1
    subu	$a3,$a3,$a7
    addiu	$a3,$a3,-6
    slt	$a4,$a3,$a5
    beqzl	$a4,.L0dae7f30
    move	$a5,$a3
.L0dae7f30:
    cvt.d.s	$f0,$f5
    move	$a2,$t0
    sub.d	$f4,$f4,$f0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$t0
    andi	$at,$a5,0x1
    sll	$a4,$a1,0x3
    subu	$a4,$a4,$a1
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$a1
    sll	$a4,$a4,0x2
    beqz	$at,.L0dae7f90
    addu	$a4,$a4,$t0
    # Line 2515
    lwc1	$f1,10328($a4)
    lwc1	$f2,10784($a2)
    mul.s	$f1,$f1,$f5
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    # Line 2514
    addiu	$a2,$a2,4
    addiu	$a4,$a4,4
    # Line 2515
    swc1	$f1,10324($a4)
.L0dae7f90:
    sra	$at,$a5,0x1
    move	$a7,$a2
    beqz	$at,.L0dae8000
    move	$a6,$a4
    move	$a2,$a7
    move	$a1,$a6
.L0dae7fa8:
    lwc1	$f3,10332($a1)
    lwc1	$f1,10788($a2)
    mul.s	$f3,$f3,$f5
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    lwc1	$f2,10328($a1)
    lwc1	$f0,10784($a2)
    mul.s	$f2,$f2,$f5
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f1
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f0
    cvt.s.d	$f3,$f3
    # Line 2514
    addiu	$a1,$a1,8
    addiu	$a2,$a2,8
    # Line 2515
    cvt.s.d	$f2,$f2
    # Line 2514
    sltu	$v0,$a2,$a3
    # Line 2515
    swc1	$f3,10324($a1)
    # Line 2514
    bnez	$v0,.L0dae7fa8
    # Line 2515
    swc1	$f2,10320($a1)
.L0dae8000:
    # Line 2518
    jr	$ra
    nop
.L0dae8008:
    # Line 2497
    addiu	$t0,$t0,17296
    b	.L0dae7e78
    nop
.end DoInterpolateNormal

# Function: DoRender
# Declared: Line 2523 (Source lines: 2524-2851)
# Address: 0x0dae8014 - 0x0dae95f8 (Size: 5604 bytes, Frame: 160)
.ent DoRender
DoRender:
    # Line 2538
    li	$a3,3
    # Line 2524
    addiu	$sp,$sp,-160
    sd	$s0,80($sp)
    move	$s0,$a0
    sd	$s5,72($sp)
    # Line 2535
    lw	$t0,-21832($gp)
    # Line 2524
    move	$s5,$a1
    sd	$s4,88($sp)
    # Line 2535
    sltiu	$t0,$t0,1
    sd	$t0,32($sp)
    move	$at,$t0
    sd	$s7,64($sp)
    # Line 2526
    lw	$s7,__glCurrentContext
    # Line 2532
    lui	$at,0x80
    sd	$s2,96($sp)
    # Line 2531
    lwc1	$f0,5536($s7)
    # Line 2530
    lbu	$s2,5576($s7)
    # Line 2528
    lw	$s4,5540($s7)
    # Line 2531
    trunc.w.s	$f0,$f0
    sd	$s2,48($sp)
    # Line 2529
    lw	$s2,5544($s7)
    # Line 2532
    lw	$s7,1696($s7)
    # Line 2531
    mfc1	$a5,$f0
    # Line 2538
    beqz	$a0,.L0dae86cc
    # Line 2532
    and	$s7,$s7,$at
    # Line 2538
    li	$at,1
    beq	$s0,$at,.L0dae88ac
    li	$v0,2
    beq	$s0,$v0,.L0dae8b4c
    nop
    beq	$s0,$a3,.L0dae8d2c
    li	$v1,4
    beq	$s0,$v1,.L0dae8d8c
    sd	$s1,120($sp)
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    addiu	$s1,$s1,17296
.L0dae80a8:
    # Line 2564
    la	$a2,sub_0dbf0000
    sll	$a0,$s0,0x2
    addiu	$a2,$a2,-10584
    addu	$a0,$a0,$a2
    sd	$a0,40($sp)
    lw	$a0,1224($a0)
    addiu	$v0,$a0,-1
    mult	$v0,$s2
    mflo	$a7
    slt	$at,$s2,$a7
    beqz	$at,.L0dae819c
    move	$s3,$s2
    lw	$a6,0($sp)
    li	$t1,1
    subu	$a3,$a7,$s2
    slt	$a2,$a3,$t1
    beqzl	$a2,.L0dae80f0
    move	$t1,$a3
.L0dae80f0:
    sll	$a1,$a7,0x2
    addu	$a1,$a1,$a6
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$a6
    andi	$a6,$t1,0x3
    subu	$a3,$s3,$s2
    sll	$s3,$t0,0x2
    subu	$s3,$s3,$t0
    sll	$s3,$s3,0x2
    subu	$s3,$s3,$t0
    sll	$s3,$s3,0x2
    subu	$s3,$s3,$t0
    sll	$s3,$s3,0x2
    subu	$s3,$s3,$t0
    addu	$a3,$a3,$s3
    ld	$s3,112($sp)
    sll	$a3,$a3,0x2
    beqz	$a6,.L0dae8154
    addu	$a3,$a3,$s1
.L0dae813c:
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
    # Line 2565
    lwc1	$f1,-4($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dae813c
    swc1	$f1,8268($a3)
.L0dae8154:
    move	$a7,$a3
    sra	$at,$t1,0x2
    beqz	$at,.L0dae819c
    move	$a6,$a4
    move	$a4,$a7
    move	$a3,$a6
.L0dae816c:
    lwc1	$f1,0($a3)
    swc1	$f1,8272($a4)
    lwc1	$f0,4($a3)
    swc1	$f0,8276($a4)
    lwc1	$f3,8($a3)
    # Line 2564
    addiu	$a4,$a4,16
    # Line 2565
    swc1	$f3,8264($a4)
    # Line 2564
    addiu	$a3,$a3,16
    # Line 2565
    lwc1	$f2,-4($a3)
    # Line 2564
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0dae816c
    # Line 2565
    swc1	$f2,8268($a4)
.L0dae819c:
    # Line 2564
    beqz	$a5,.L0dae82dc
    ld	$s3,112($sp)
    # Line 2568
    slti	$v1,$a0,3
    bnez	$v1,.L0dae82c0
    move	$a6,$zero
    ldc1	$f5,_lit8_3fe0000000000000
    move	$a7,$s1
    sll	$t3,$s2,0x2
    sll	$t8,$s2,0x2
    move	$a1,$zero
    addiu	$t2,$a0,-2
    sll	$a5,$s2,0x2
    b	.L0dae81e8
    addu	$a5,$a5,$s1
.L0dae81d4:
    addu	$a5,$t3,$a5
    addiu	$a6,$a6,1
    slt	$at,$a6,$t2
    beqz	$at,.L0dae82c0
    addu	$a7,$t8,$a7
.L0dae81e8:
    sra	$a3,$a6,0x1
    move	$t1,$s2
    lw	$a0,4($sp)
    blez	$s2,.L0dae81d4
    addu	$a1,$a1,$s2
    addiu	$a3,$a3,1
    mult	$a3,$s2
    andi	$a4,$a6,0x1
    andi	$at,$s2,0x1
    move	$a3,$a7
    mflo	$a2
    sll	$a2,$a2,0x2
    beqz	$at,.L0dae8248
    addu	$a0,$a0,$a2
    beqz	$a4,.L0dae82b8
    lwc1	$f4,0($a0)
    # Line 2569
    lwc1	$f2,4($a0)
    add.s	$f2,$f2,$f4
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    cvt.s.d	$f2,$f2
    swc1	$f2,9640($a3)
.L0dae8240:
    addiu	$a3,$a3,4
    addiu	$a0,$a0,4
.L0dae8248:
    sra	$at,$t1,0x1
    beqz	$at,.L0dae81d4
    nop
    b	.L0dae8280
    nop
.L0dae825c:
    lwc1	$f3,8($a0)
    add.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    cvt.s.d	$f3,$f3
    swc1	$f3,9644($a3)
.L0dae8274:
    addiu	$a3,$a3,8
    beq	$a3,$a5,.L0dae81d4
    addiu	$a0,$a0,8
.L0dae8280:
    # Line 2568
    beqz	$a4,.L0dae82b0
    lwc1	$f4,0($a0)
    # Line 2569
    lwc1	$f0,4($a0)
    add.s	$f0,$f0,$f4
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    cvt.s.d	$f0,$f0
    swc1	$f0,9640($a3)
.L0dae82a0:
    # Line 2568
    bnez	$a4,.L0dae825c
    lwc1	$f4,4($a0)
    b	.L0dae8274
    # Line 2569
    swc1	$f4,9644($a3)
.L0dae82b0:
    b	.L0dae82a0
    swc1	$f4,9640($a3)
.L0dae82b8:
    b	.L0dae8240
    swc1	$f4,9640($a3)
.L0dae82c0:
    # Line 2571
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$s0
    sd	$ra,104($sp)
    addiu	$t9,$t9,31916
    bal __glim_SubdivPatchSGIX
    move	$a1,$t0
    ld	$ra,104($sp)
.L0dae82dc:
    beqz	$s7,.L0dae82f8
    sd	$ra,104($sp)
    # Line 2574
    # lw $t9, -32712($gp) # &sub_0dae0000
    move	$a0,$s0
    addiu	$t9,$t9,27868
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$s5,1
.L0dae82f8:
    # Line 2580
    # lw $t9, -22904($gp) # &glBegin
    jal	glBegin
    li	$a0,5
    # Line 2581
    li	$at,10785
    beq	$s4,$at,.L0dae8638
    li	$v0,10787
    beq	$s4,$v0,.L0dae8700
    li	$v1,10791
    beq	$s4,$v1,.L0dae8908
    li	$a2,10793
    beq	$s4,$a2,.L0dae837c
    # Line 2764
    ld	$at,48($sp)
    ld	$s1,120($sp)
    # Line 2845
    la	$a1,sub_0db30000
    # lw $t9, -22952($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-20640
    jal	fprintf
    addiu	$a0,$a0,32
.L0dae8344:
    # Line 2847
    # lw $t9, -22828($gp) # &glEnd
.L0dae8348:
    ld	$s3,112($sp)
    jal	glEnd
    ld	$s1,120($sp)
    ld	$ra,104($sp)
    # Line 2851
    ld	$s0,80($sp)
    ld	$s2,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    ld	$s7,64($sp)
    ld	$a2,32($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 2849
    sw	$a2,-21832($gp)
.L0dae837c:
    ld	$a0,40($sp)
    # Line 2764
    beqz	$at,.L0dae8e00
    lw	$a0,1224($a0)
    sd	$s6,136($sp)
    sd	$s8,128($sp)
    # Line 2818
    move	$s3,$zero
    # Line 2817
    subu	$a1,$a0,$s5
    move	$a2,$a1
    # Line 2818
    blez	$a1,.L0dae8344
    sd	$a1,8($sp)
    ld	$s8,8($sp)
    sll	$v0,$s2,0x2
    sd	$v0,24($sp)
    ld	$v0,32($sp)
    move	$s0,$zero
    addiu	$s8,$s8,-1
    sll	$s5,$v0,0x3
    subu	$s5,$s5,$v0
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$v0
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$at,$s2,0x2
    sd	$at,16($sp)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    addiu	$s4,$at,8272
    addiu	$s6,$at,8284
    addiu	$at,$at,8300
    b	.L0dae84dc
    sd	$at,56($sp)
.L0dae841c:
    # Line 2832
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2833
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2834
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    bne	$s8,$s3,.L0dae8604
    # Line 2836
    nop	# was lw $t9, -22768($gp) # &glTexCoord2fv
    # Line 2818
    addu	$s0,$s0,$s2
.L0dae84ac:
    ld	$v0,16($sp)
    addiu	$s3,$s3,1
    ld	$at,24($sp)
    addu	$s6,$v0,$s6
    addu	$s4,$v0,$s4
    ld	$v1,56($sp)
    ld	$a2,8($sp)
    addu	$s5,$at,$s5
    addu	$v1,$v0,$v1
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae862c
    sd	$v1,56($sp)
.L0dae84dc:
    lw	$a2,-21832($gp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    addu	$a0,$s0,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    beqz	$s7,.L0dae841c
    addiu	$a0,$a0,8300
    # Line 2820
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2821
    lw	$a1,-21832($gp)
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2822
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2823
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    beql	$s8,$s3,.L0dae84ac
    # Line 2818
    addu	$s0,$s0,$s2
    # Line 2825
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,56($sp)
    # Line 2826
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2827
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2828
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae84ac
    # Line 2818
    addu	$s0,$s0,$s2
.L0dae8604:
    # Line 2836
    jalr	$t9
    ld	$a0,56($sp)
    # Line 2837
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2838
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae84ac
    # Line 2818
    addu	$s0,$s0,$s2
.L0dae862c:
    ld	$s8,128($sp)
    b	.L0dae8344
    ld	$s6,136($sp)
.L0dae8638:
    # Line 2583
    ld	$a2,48($sp)
    ld	$a0,40($sp)
    beqz	$a2,.L0dae908c
    lw	$a0,1224($a0)
    sd	$s8,128($sp)
    # Line 2615
    move	$s3,$zero
    # Line 2614
    subu	$a1,$a0,$s5
    move	$a2,$a1
    # Line 2615
    blez	$a1,.L0dae8344
    sd	$a1,8($sp)
    move	$s0,$zero
    sll	$v0,$s2,0x2
    ld	$s8,8($sp)
    sll	$at,$s2,0x2
    sd	$at,16($sp)
    ld	$at,32($sp)
    sd	$v0,24($sp)
    addiu	$s8,$s8,-1
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s4,$at,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$s1
    b	.L0dae8800
    addiu	$s4,$s4,8272
.L0dae86cc:
    # Line 2540
    div	$zero,$s5,$a3
    sd	$s1,120($sp)
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    teq	$a3,$zero,0x7
    addiu	$s1,$s1,17296
    mfhi	$a2
    sll	$v1,$a2,0x3
    addu	$v1,$v1,$a2
    sll	$v1,$v1,0x4
    addu	$v1,$v1,$s1
    # Line 2541
    b	.L0dae80a8
    # Line 2540
    sw	$v1,0($sp)
.L0dae8700:
    # Line 2633
    ld	$at,48($sp)
    ld	$a0,40($sp)
    beqz	$at,.L0dae9200
    lw	$a0,1224($a0)
    sd	$s6,136($sp)
    sd	$s8,128($sp)
    # Line 2678
    move	$s3,$zero
    # Line 2677
    subu	$a1,$a0,$s5
    move	$a2,$a1
    # Line 2678
    blez	$a1,.L0dae8344
    sd	$a1,8($sp)
    move	$s0,$zero
    sll	$v0,$s2,0x2
    ld	$s8,8($sp)
    sll	$at,$s2,0x2
    sd	$at,16($sp)
    ld	$at,32($sp)
    sd	$v0,24($sp)
    addiu	$s8,$s8,-1
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s1
    addiu	$s4,$s6,8272
    b	.L0dae8a48
    addiu	$s6,$s6,8284
.L0dae879c:
    # Line 2624
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    bne	$s8,$s3,.L0dae8894
    # Line 2626
    nop	# was lw $t9, -22688($gp) # &glVertex3fv
    # Line 2615
    addu	$s0,$s0,$s2
.L0dae87e0:
    addiu	$s3,$s3,1
    ld	$v0,16($sp)
    ld	$a2,8($sp)
    ld	$at,24($sp)
    addu	$s4,$v0,$s4
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae88a4
    addu	$s5,$at,$s5
.L0dae8800:
    beqz	$s7,.L0dae879c
    lw	$a1,-21832($gp)
    # Line 2617
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2618
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    beql	$s8,$s3,.L0dae87e0
    # Line 2615
    addu	$s0,$s0,$s2
    # Line 2620
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2621
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae87e0
    # Line 2615
    addu	$s0,$s0,$s2
.L0dae8894:
    # Line 2626
    jalr	$t9
    move	$a0,$s4
    b	.L0dae87e0
    # Line 2615
    addu	$s0,$s0,$s2
.L0dae88a4:
    b	.L0dae8344
    ld	$s8,128($sp)
.L0dae88ac:
    # Line 2543
    div	$zero,$s5,$a3
    sd	$s1,120($sp)
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    teq	$a3,$zero,0x7
    addiu	$s1,$s1,17296
    mfhi	$at
    # Line 2544
    sll	$v0,$at,0x3
    addu	$v0,$v0,$at
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$s1
    sw	$v0,4($sp)
    # Line 2543
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    addiu	$a2,$a2,576
    # Line 2545
    b	.L0dae80a8
    # Line 2543
    sw	$a2,0($sp)
.L0dae8908:
    # Line 2700
    ld	$v1,48($sp)
    ld	$a0,40($sp)
    beqz	$v1,.L0dae9410
    lw	$a0,1224($a0)
    sd	$s6,136($sp)
    # Line 2741
    move	$s3,$zero
    # Line 2740
    subu	$a1,$a0,$s5
    move	$a2,$a1
    # Line 2741
    blez	$a1,.L0dae8344
    sd	$a1,8($sp)
    move	$s0,$zero
    sll	$v0,$s2,0x2
    sd	$s8,128($sp)
    ld	$s8,8($sp)
    sll	$at,$s2,0x2
    sd	$at,16($sp)
    ld	$at,32($sp)
    sd	$v0,24($sp)
    addiu	$s8,$s8,-1
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s1
    addiu	$s4,$s6,8272
    b	.L0dae8bf4
    addiu	$s6,$s6,8284
.L0dae89a4:
    # Line 2689
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2690
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    bne	$s8,$s3,.L0dae8b24
    # Line 2692
    nop	# was lw $t9, -22856($gp) # &glColor4fv
    # Line 2678
    addu	$s0,$s0,$s2
.L0dae8a24:
    addiu	$s3,$s3,1
    ld	$v0,16($sp)
    ld	$at,24($sp)
    ld	$a2,8($sp)
    addu	$s6,$v0,$s6
    addu	$s4,$v0,$s4
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae8b40
    addu	$s5,$at,$s5
.L0dae8a48:
    beqz	$s7,.L0dae89a4
    lw	$a1,-21832($gp)
    # Line 2680
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2681
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2682
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    beql	$s8,$s3,.L0dae8a24
    # Line 2678
    addu	$s0,$s0,$s2
    # Line 2684
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2685
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2686
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae8a24
    # Line 2678
    addu	$s0,$s0,$s2
.L0dae8b24:
    # Line 2692
    jalr	$t9
    move	$a0,$s6
    # Line 2693
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae8a24
    # Line 2678
    addu	$s0,$s0,$s2
.L0dae8b40:
    ld	$s8,128($sp)
    b	.L0dae8344
    ld	$s6,136($sp)
.L0dae8b4c:
    # Line 2547
    div	$zero,$s5,$a3
    sd	$s1,120($sp)
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    teq	$a3,$zero,0x7
    addiu	$s1,$s1,17296
    mfhi	$at
    sll	$v0,$at,0x6
    subu	$v0,$v0,$at
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    addiu	$v0,$v0,1120
    sw	$v0,0($sp)
    # Line 2548
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    addiu	$a2,$a2,576
    # Line 2549
    b	.L0dae80a8
    # Line 2548
    sw	$a2,4($sp)
.L0dae8bac:
    # Line 2747
    jalr	$t9
    move	$a0,$s6
    # Line 2748
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2749
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    # Line 2741
    addu	$s0,$s0,$s2
.L0dae8bd0:
    addiu	$s3,$s3,1
    ld	$at,16($sp)
    ld	$a2,24($sp)
    ld	$v1,8($sp)
    addu	$s6,$at,$s6
    addu	$s4,$at,$s4
    slt	$v1,$s3,$v1
    beqz	$v1,.L0dae8d20
    addu	$s5,$a2,$s5
.L0dae8bf4:
    lw	$a2,-21832($gp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    addu	$a0,$s0,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    beqz	$s7,.L0dae8cb0
    addiu	$a0,$a0,8284
    # Line 2743
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2744
    lw	$a1,-21832($gp)
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2745
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    beql	$s8,$s3,.L0dae8bd0
    # Line 2741
    addu	$s0,$s0,$s2
    b	.L0dae8bac
    # Line 2747
    nop	# was lw $t9, -22768($gp) # &glTexCoord2fv
.L0dae8cb0:
    # Line 2753
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2754
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    beql	$s8,$s3,.L0dae8bd0
    # Line 2741
    addu	$s0,$s0,$s2
    # Line 2756
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s6
    # Line 2757
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae8bd0
    # Line 2741
    addu	$s0,$s0,$s2
.L0dae8d20:
    ld	$s8,128($sp)
    b	.L0dae8344
    ld	$s6,136($sp)
.L0dae8d2c:
    # Line 2551
    div	$zero,$s5,$a3
    sd	$s1,120($sp)
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    teq	$a3,$zero,0x7
    addiu	$s1,$s1,17296
    mfhi	$at
    # Line 2552
    sll	$v0,$at,0x6
    subu	$v0,$v0,$at
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    addiu	$v0,$v0,1120
    sw	$v0,4($sp)
    # Line 2551
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    addiu	$a2,$a2,1880
    # Line 2553
    b	.L0dae80a8
    # Line 2551
    sw	$a2,0($sp)
.L0dae8d8c:
    # Line 2555
    div	$zero,$s5,$a3
    la	$s1,sub_0dbf0000
    sd	$s3,112($sp)
    teq	$a3,$zero,0x7
    addiu	$s1,$s1,17296
    mfhi	$a2
    # Line 2556
    sll	$at,$a2,0x2
    subu	$at,$at,$a2
    sll	$at,$at,0x3
    addu	$at,$at,$a2
    sll	$at,$at,0x2
    subu	$at,$at,$a2
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    addiu	$at,$at,1880
    sw	$at,4($sp)
    # Line 2555
    sll	$v1,$a2,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    addiu	$v1,$v1,3072
    b	.L0dae80a8
    sw	$v1,0($sp)
.L0dae8e00:
    sd	$s6,136($sp)
    # Line 2765
    slti	$v0,$a0,3
    bnez	$v0,.L0dae8344
    move	$s3,$zero
    move	$s0,$zero
    sll	$at,$s2,0x2
    sd	$at,24($sp)
    ld	$a2,32($sp)
    sll	$s6,$s2,0x2
    sd	$s6,16($sp)
    sll	$s5,$a2,0x3
    subu	$s5,$s5,$a2
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a2
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$v1,$a2,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    addiu	$s4,$v1,8272
    addiu	$s6,$v1,8284
    addiu	$v1,$v1,8300
    b	.L0dae8f9c
    sd	$v1,56($sp)
.L0dae8e80:
    # Line 2767
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2768
    lw	$a1,-21832($gp)
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2769
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2770
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2771
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,56($sp)
    # Line 2772
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2773
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2774
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    # Line 2765
    ld	$v0,56($sp)
.L0dae8f64:
    ld	$at,16($sp)
    addu	$s0,$s0,$s2
    addiu	$s3,$s3,1
    addu	$v0,$at,$v0
    ld	$a2,40($sp)
    sd	$v0,56($sp)
    addu	$s6,$at,$s6
    lw	$a2,1224($a2)
    addu	$s4,$at,$s4
    ld	$at,24($sp)
    addiu	$a2,$a2,-2
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae9084
    addu	$s5,$at,$s5
.L0dae8f9c:
    lw	$a2,-21832($gp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    addu	$a0,$s0,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    bnez	$s7,.L0dae8e80
    addiu	$a0,$a0,8300
    # Line 2776
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2777
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2778
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2779
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,56($sp)
    # Line 2780
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2781
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae8f64
    # Line 2765
    ld	$v0,56($sp)
.L0dae9084:
    b	.L0dae8344
    ld	$s6,136($sp)
.L0dae908c:
    # Line 2584
    slti	$a2,$a0,3
    bnez	$a2,.L0dae8344
    move	$s3,$zero
    move	$s0,$zero
    sll	$at,$s2,0x2
    sd	$at,16($sp)
    ld	$at,32($sp)
    sll	$v0,$s2,0x2
    sd	$v0,24($sp)
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s4,$at,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$s1
    b	.L0dae91a4
    addiu	$s4,$s4,8272
.L0dae90fc:
    # Line 2586
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2587
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2588
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2589
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    # Line 2584
    addu	$s0,$s0,$s2
.L0dae917c:
    ld	$a2,40($sp)
    ld	$at,16($sp)
    addiu	$s3,$s3,1
    lw	$a2,1224($a2)
    addu	$s4,$at,$s4
    ld	$at,24($sp)
    addiu	$a2,$a2,-2
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae91f8
    addu	$s5,$at,$s5
.L0dae91a4:
    bnez	$s7,.L0dae90fc
    lw	$a1,-21832($gp)
    # Line 2591
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2592
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae917c
    # Line 2584
    addu	$s0,$s0,$s2
.L0dae91f8:
    b	.L0dae8348
    # Line 2847
    nop	# was lw $t9, -22828($gp) # &glEnd
.L0dae9200:
    sd	$s6,136($sp)
    # Line 2634
    slti	$a2,$a0,3
    bnez	$a2,.L0dae8344
    move	$s3,$zero
    sll	$at,$s2,0x2
    sd	$at,24($sp)
    ld	$at,32($sp)
    move	$s0,$zero
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s6,$s2,0x2
    sd	$s6,16($sp)
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s1
    addiu	$s4,$s6,8272
    b	.L0dae936c
    addiu	$s6,$s6,8284
.L0dae9278:
    # Line 2636
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2637
    lw	$a1,-21832($gp)
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2638
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2639
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2640
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2641
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    # Line 2634
    addu	$s0,$s0,$s2
.L0dae9340:
    ld	$at,16($sp)
    ld	$a2,40($sp)
    addiu	$s3,$s3,1
    addu	$s6,$at,$s6
    lw	$a2,1224($a2)
    addu	$s4,$at,$s4
    ld	$at,24($sp)
    addiu	$a2,$a2,-2
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae9408
    addu	$s5,$at,$s5
.L0dae936c:
    bnez	$s7,.L0dae9278
    lw	$a1,-21832($gp)
    # Line 2643
    # lw $t9, -22856($gp) # &glColor4fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2644
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2645
    # lw $t9, -22856($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
    # Line 2646
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae9340
    # Line 2634
    addu	$s0,$s0,$s2
.L0dae9408:
    b	.L0dae8344
    ld	$s6,136($sp)
.L0dae9410:
    sd	$s6,136($sp)
    # Line 2701
    slti	$a2,$a0,3
    bnez	$a2,.L0dae8344
    move	$s3,$zero
    sll	$at,$s2,0x2
    sd	$at,24($sp)
    ld	$at,32($sp)
    move	$s0,$zero
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    addiu	$s5,$s5,10328
    sll	$s6,$s2,0x2
    sd	$s6,16($sp)
    sll	$s6,$at,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s1
    addiu	$s4,$s6,8272
    b	.L0dae9550
    addiu	$s6,$s6,8284
.L0dae9488:
    # Line 2703
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2704
    lw	$a1,-21832($gp)
    # lw $t9, -22800($gp) # &glNormal3fv
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2705
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2706
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s6
    # Line 2707
    # lw $t9, -22800($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s5
    # Line 2708
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
.L0dae9520:
    # Line 2701
    addu	$s0,$s0,$s2
    ld	$at,16($sp)
    ld	$a2,40($sp)
    addiu	$s3,$s3,1
    addu	$s6,$at,$s6
    lw	$a2,1224($a2)
    addu	$s4,$at,$s4
    ld	$at,24($sp)
    addiu	$a2,$a2,-2
    slt	$a2,$s3,$a2
    beqz	$a2,.L0dae95f0
    addu	$s5,$at,$s5
.L0dae9550:
    lw	$a2,-21832($gp)
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a2
    addu	$a0,$s0,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    bnez	$s7,.L0dae9488
    addiu	$a0,$a0,8284
    # Line 2710
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2711
    lw	$a1,-21832($gp)
    # lw $t9, -22688($gp) # &glVertex3fv
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2712
    # lw $t9, -22768($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s6
    # Line 2713
    # lw $t9, -22688($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s4
    b	.L0dae9520
    nop
.L0dae95f0:
    b	.L0dae8344
    ld	$s6,136($sp)
.end DoRender

.rdata
_lit8_3f70101010101010:
    .word 0x3f701010, 0x10101010
_lit8_3fc0000000000000:
    .word 0x3fc00000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40800000:
    .word 0x40800000
_lit_46288400:
    .word 0x46288400
_lit_46288c00:
    .word 0x46288c00
_lit_46289c00:
    .word 0x46289c00
_lit_4628a400:
    .word 0x4628a400
_lit_bf800000:
    .word 0xbf800000

