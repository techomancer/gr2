# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_zline.ma
# Category: mips
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glDepthTestLine_LESS_asm
# Declared: Line 34 (Source lines: 34-194)
# Address: 0x0db2819c - 0x0db28338 (Size: 412 bytes, Frame: 48)
.globl __glDepthTestLine_LESS_asm
.ent __glDepthTestLine_LESS_asm
__glDepthTestLine_LESS_asm:
    # Line 34
    lw	$v0,29876($a0)
    # Line 35
    lw	$v1,3376($a0)
    # Line 36
    lw	$a1,31260($a0)
    # Line 37
    addiu	$sp,$sp,-48
    # Line 38
    sub	$v0,$v0,$v1
    # Line 39
    multu	$v0,$a1
    # Line 40
    sw	$s0,44($sp)
    # Line 41
    sw	$s1,40($sp)
    # Line 42
    sw	$s2,36($sp)
    # Line 43
    sw	$s3,32($sp)
    # Line 44
    sw	$s4,28($sp)
    # Line 45
    sw	$s5,24($sp)
    # Line 46
    sw	$s6,20($sp)
    # Line 54
    lw	$a2,30252($a0)
    # Line 55
    lw	$a3,29884($a0)
    # Line 56
    lw	$t0,29892($a0)
    # Line 57
    lw	$t1,29880($a0)
    # Line 58
    lw	$t2,29888($a0)
    # Line 59
    lw	$t3,29872($a0)
    # Line 60
    lw	$a4,29896($a0)
    # Line 61
    lw	$a5,3372($a0)
    # Line 62
    lw	$a6,29900($a0)
    # Line 65
    lw	$a7,31248($a0)
    # Line 67
    sub	$t3,$t3,$a5
    # Line 68
    mflo	$s0
    # Line 69
    add	$s0,$s0,$t3
    # Line 70
    sll	$s0,$s0,0x2
    # Line 75
    bgtz	$t0,.L0db28220
    # Line 73
    addu	$s1,$a7,$s0
    # Line 79
    beqz	$t2,.L0db2822c
    # Line 78
    sub	$a3,$a3,$a1
    # Line 81
    b	.L0db2822c
    # Line 80
    sub	$t1,$t1,$a1
.L0db28220:
    # Line 86
    beqz	$t2,.L0db2822c
    # Line 85
    add	$a3,$a3,$a1
    # Line 87
    add	$t1,$t1,$a1
.L0db2822c:
    # Line 95
    lw	$s5,31320($a0)
    # Line 98
    lw	$t9,30328($a0)
    # Line 91
    sll	$s3,$a3,0x2
    # Line 105
    addi	$a1,$a2,-1
    # Line 90
    sll	$s2,$t1,0x2
    # Line 106
    andi	$a3,$a1,0x1f
    # Line 111
    lui	$t0,0x7fff
    # Line 92
    sub	$s3,$s3,$s2
    # Line 93
    lw	$s4,30476($a0)
    # Line 96
    lw	$s6,31312($a0)
    # Line 97
    lw	$t8,30208($a0)
    # Line 100
    lw	$v0,30332($a0)
    # Line 102
    move	$v1,$zero
    # Line 107
    addi	$a3,$a3,1
    # Line 108
    srl	$a1,$a1,0x5
    # Line 111
    ori	$t0,$t0,0xffff
    # Line 112
    addi	$t1,$zero,-1
    # Line 99
    srav	$t9,$t9,$s5
.L0db28274:
    # Line 115
    srlv	$t2,$t8,$s5
    # Line 116
    addu	$t2,$t2,$s6
    # Line 118
    bgtz	$a1,.L0db2828c
    # Line 117
    move	$t3,$zero
    # Line 120
    b	.L0db28290
    # Line 119
    move	$a5,$a3
.L0db2828c:
    # Line 123
    li	$a5,32
.L0db28290:
    # Line 126
    lui	$a7,0x8000
.L0db28294:
    # Line 129
    lw	$s0,0($s1)
    # Line 130
    addu	$a4,$a4,$a6
    # Line 131
    addi	$a5,$a5,-1
    # Line 132
    sltu	$at,$t2,$s0
    bnez	$at,.L0db282b8
    nop
    # Line 135
    addi	$v1,$v1,1
    # Line 137
    b	.L0db282bc
    # Line 136
    or	$t3,$t3,$a7
.L0db282b8:
    # Line 141
    sw	$t2,0($s1)
.L0db282bc:
    # Line 145
    bgez	$a4,.L0db282cc
    # Line 144
    addu	$t2,$t2,$t9
    # Line 148
    addu	$s1,$s1,$s3
    # Line 149
    and	$a4,$a4,$t0
.L0db282cc:
    # Line 153
    addu	$s1,$s1,$s2
    # Line 156
    bgtz	$a5,.L0db28294
    # Line 154
    srl	$a7,$a7,0x1
    # Line 158
    xor	$t3,$t3,$t1
    # Line 161
    addi	$a1,$a1,-1
    # Line 159
    sw	$t3,0($s4)
    # Line 160
    addi	$s4,$s4,4
    # Line 164
    bgez	$a1,.L0db28274
    # Line 162
    addu	$t8,$t8,$v0
    # Line 168
    lw	$s0,44($sp)
    # Line 169
    lw	$s1,40($sp)
    # Line 170
    lw	$s2,36($sp)
    # Line 171
    lw	$s3,32($sp)
    # Line 172
    lw	$s4,28($sp)
    # Line 173
    lw	$s5,24($sp)
    # Line 174
    lw	$s6,20($sp)
    # Line 178
    bnez	$v1,.L0db2831c
    # Line 175
    addiu	$sp,$sp,48
    # Line 182
    jr	$ra
    # Line 181
    li	$v0,0
.L0db2831c:
    # Line 186
    beq	$v1,$a2,.L0db2832c
    nop
    # Line 188
    jr	$ra
    # Line 187
    li	$v0,1
.L0db2832c:
    # Line 192
    li	$v0,1
    # Line 194
    jr	$ra
    # Line 193
    sb	$v0,30480($a0)
.end __glDepthTestLine_LESS_asm

# Function: __glDepthTestLine_LESS_s_asm
# Declared: Line 208 (Source lines: 208-368)
# Address: 0x0db28338 - 0x0db284d4 (Size: 412 bytes, Frame: 48)
.globl __glDepthTestLine_LESS_s_asm
.ent __glDepthTestLine_LESS_s_asm
__glDepthTestLine_LESS_s_asm:
    # Line 208
    lw	$t8,29876($a0)
    # Line 209
    lw	$t9,3376($a0)
    # Line 210
    lw	$v0,31260($a0)
    # Line 211
    addiu	$sp,$sp,-48
    # Line 212
    sub	$t8,$t8,$t9
    # Line 213
    multu	$t8,$v0
    # Line 214
    sw	$s0,44($sp)
    # Line 215
    sw	$s1,40($sp)
    # Line 216
    sw	$s2,36($sp)
    # Line 217
    sw	$s3,32($sp)
    # Line 218
    sw	$s4,28($sp)
    # Line 219
    sw	$s5,24($sp)
    # Line 220
    sw	$s6,20($sp)
    # Line 228
    lw	$v1,30252($a0)
    # Line 229
    lw	$a1,29884($a0)
    # Line 230
    lw	$a2,29892($a0)
    # Line 231
    lw	$a3,29880($a0)
    # Line 232
    lw	$t0,29888($a0)
    # Line 233
    lw	$t1,29872($a0)
    # Line 234
    lw	$t2,29896($a0)
    # Line 235
    lw	$t3,3372($a0)
    # Line 236
    lw	$a4,29900($a0)
    # Line 239
    lw	$a5,31248($a0)
    # Line 241
    sub	$t1,$t1,$t3
    # Line 242
    mflo	$a6
    # Line 243
    add	$a6,$a6,$t1
    # Line 244
    sll	$a6,$a6,0x2
    # Line 249
    bgtz	$a2,.L0db283bc
    # Line 247
    addu	$a7,$a5,$a6
    # Line 253
    beqz	$t0,.L0db283c8
    # Line 252
    sub	$a1,$a1,$v0
    # Line 255
    b	.L0db283c8
    # Line 254
    sub	$a3,$a3,$v0
.L0db283bc:
    # Line 260
    beqz	$t0,.L0db283c8
    # Line 259
    add	$a1,$a1,$v0
    # Line 261
    add	$a3,$a3,$v0
.L0db283c8:
    # Line 269
    lw	$s3,31320($a0)
    # Line 272
    lw	$s6,30328($a0)
    # Line 265
    sll	$s1,$a1,0x2
    # Line 279
    addi	$v0,$v1,-1
    # Line 264
    sll	$s0,$a3,0x2
    # Line 280
    andi	$a1,$v0,0x1f
    # Line 285
    lui	$a2,0x7fff
    # Line 266
    sub	$s1,$s1,$s0
    # Line 267
    lw	$s2,30476($a0)
    # Line 270
    lw	$s4,31312($a0)
    # Line 271
    lw	$s5,30208($a0)
    # Line 274
    lw	$t8,30332($a0)
    # Line 276
    move	$t9,$zero
    # Line 281
    addi	$a1,$a1,1
    # Line 282
    srl	$v0,$v0,0x5
    # Line 285
    ori	$a2,$a2,0xffff
    # Line 286
    addi	$a3,$zero,-1
    # Line 273
    srav	$s6,$s6,$s3
.L0db28410:
    # Line 289
    srlv	$t0,$s5,$s3
    # Line 290
    addu	$t0,$t0,$s4
    # Line 292
    bgtz	$v0,.L0db28428
    # Line 291
    move	$t1,$zero
    # Line 294
    b	.L0db2842c
    # Line 293
    move	$t3,$a1
.L0db28428:
    # Line 297
    li	$t3,32
.L0db2842c:
    # Line 300
    lui	$a5,0x8000
.L0db28430:
    # Line 303
    lw	$a6,0($a7)
    # Line 304
    addu	$t2,$t2,$a4
    # Line 305
    addi	$t3,$t3,-1
    # Line 306
    slt	$at,$t0,$a6
    bnez	$at,.L0db28454
    nop
    # Line 309
    addi	$t9,$t9,1
    # Line 311
    b	.L0db28458
    # Line 310
    or	$t1,$t1,$a5
.L0db28454:
    # Line 315
    sw	$t0,0($a7)
.L0db28458:
    # Line 319
    bgez	$t2,.L0db28468
    # Line 318
    addu	$t0,$t0,$s6
    # Line 322
    addu	$a7,$a7,$s1
    # Line 323
    and	$t2,$t2,$a2
.L0db28468:
    # Line 327
    addu	$a7,$a7,$s0
    # Line 330
    bgtz	$t3,.L0db28430
    # Line 328
    srl	$a5,$a5,0x1
    # Line 332
    xor	$t1,$t1,$a3
    # Line 335
    addi	$v0,$v0,-1
    # Line 333
    sw	$t1,0($s2)
    # Line 334
    addi	$s2,$s2,4
    # Line 338
    bgez	$v0,.L0db28410
    # Line 336
    addu	$s5,$s5,$t8
    # Line 342
    lw	$s0,44($sp)
    # Line 343
    lw	$s1,40($sp)
    # Line 344
    lw	$s2,36($sp)
    # Line 345
    lw	$s3,32($sp)
    # Line 346
    lw	$s4,28($sp)
    # Line 347
    lw	$s5,24($sp)
    # Line 348
    lw	$s6,20($sp)
    # Line 352
    bnez	$t9,.L0db284b8
    # Line 349
    addiu	$sp,$sp,48
    # Line 356
    jr	$ra
    # Line 355
    li	$v0,0
.L0db284b8:
    # Line 360
    beq	$t9,$v1,.L0db284c8
    nop
    # Line 362
    jr	$ra
    # Line 361
    li	$v0,1
.L0db284c8:
    # Line 366
    li	$v0,1
    # Line 368
    jr	$ra
    # Line 367
    sb	$v0,30480($a0)
.end __glDepthTestLine_LESS_s_asm

# Function: __glDepthTestLine_asm
# Declared: Line 382 (Source lines: 382-950)
# Address: 0x0db284d4 - 0x0db288f4 (Size: 1056 bytes, Frame: 48)
.globl __glDepthTestLine_asm
.ent __glDepthTestLine_asm
__glDepthTestLine_asm:
    # Line 382
    lw	$a7,29876($a0)
    # Line 383
    lw	$t8,3376($a0)
    # Line 384
    lw	$t9,31260($a0)
    # Line 385
    addiu	$sp,$sp,-48
    # Line 386
    sub	$a7,$a7,$t8
    # Line 387
    multu	$a7,$t9
    # Line 388
    sw	$s0,44($sp)
    # Line 389
    sw	$s1,40($sp)
    # Line 390
    sw	$s2,36($sp)
    # Line 391
    sw	$s3,32($sp)
    # Line 392
    sw	$s4,28($sp)
    # Line 393
    sw	$s5,24($sp)
    # Line 394
    sw	$s6,20($sp)
    # Line 395
    sw	$s7,16($sp)
    # Line 396
    sw	$s8,12($sp)
    # Line 404
    lw	$v0,30252($a0)
    # Line 405
    lw	$v1,29884($a0)
    # Line 406
    lw	$a1,29892($a0)
    # Line 407
    lw	$a2,29880($a0)
    # Line 408
    lw	$a3,29888($a0)
    # Line 409
    lw	$t0,29872($a0)
    # Line 410
    lw	$t1,29896($a0)
    # Line 411
    lw	$t2,29900($a0)
    # Line 412
    lw	$t3,3372($a0)
    # Line 413
    lw	$a4,12408($a0)
    # Line 416
    lw	$a5,31248($a0)
    # Line 418
    sub	$t0,$t0,$t3
    # Line 419
    mflo	$a6
    # Line 420
    add	$a6,$a6,$t0
    # Line 421
    sll	$a6,$a6,0x2
    # Line 426
    bgtz	$a1,.L0db28564
    # Line 424
    addu	$a7,$a5,$a6
    # Line 430
    beqz	$a3,.L0db28570
    # Line 429
    sub	$v1,$v1,$t9
    # Line 432
    b	.L0db28570
    # Line 431
    sub	$a2,$a2,$t9
.L0db28564:
    # Line 437
    beqz	$a3,.L0db28570
    # Line 436
    add	$v1,$v1,$t9
    # Line 438
    add	$a2,$a2,$t9
.L0db28570:
    # Line 446
    lw	$s3,31320($a0)
    # Line 448
    lw	$t9,30328($a0)
    # Line 441
    sll	$s0,$a2,0x2
    # Line 454
    addi	$a1,$v0,-1
    # Line 442
    sll	$s1,$v1,0x2
    # Line 455
    andi	$a2,$a1,0x1f
    # Line 443
    sub	$s1,$s1,$s0
    # Line 444
    lw	$s2,30476($a0)
    # Line 447
    lw	$t8,30208($a0)
    # Line 451
    move	$v1,$zero
    # Line 456
    addi	$a2,$a2,1
    # Line 457
    srl	$a1,$a1,0x5
    # Line 449
    srav	$t9,$t9,$s3
.L0db285a4:
    # Line 460
    lw	$a3,31312($a0)
    # Line 461
    srlv	$t0,$t8,$s3
    # Line 463
    move	$t3,$zero
    # Line 464
    bgtz	$a1,.L0db285c0
    # Line 462
    addu	$t0,$t0,$a3
    # Line 466
    b	.L0db285c4
    # Line 465
    move	$a5,$a2
.L0db285c0:
    # Line 469
    li	$a5,32
.L0db285c4:
    # Line 472
    lui	$a6,0x8000
.L0db285c8:
    # Line 476
    lw	$a3,0($a7)
    # Line 477
    jr	$a4
    # Line 478
    addu	$t1,$t1,$t2
.L0db285d4:
    # Line 494
    bgez	$t1,.L0db285e8
    # Line 493
    addu	$t0,$t0,$t9
    # Line 499
    sll	$t1,$t1,0x1
    # Line 497
    addu	$a7,$a7,$s1
    # Line 500
    srl	$t1,$t1,0x1
.L0db285e8:
    # Line 504
    addu	$a7,$a7,$s0
    # Line 507
    bgtz	$a5,.L0db285c8
    # Line 505
    srl	$a6,$a6,0x1
    # Line 509
    nor	$t3,$t3,$zero
    # Line 510
    sw	$t3,0($s2)
    # Line 511
    lw	$t0,30332($a0)
    # Line 513
    addi	$a1,$a1,-1
    # Line 512
    addi	$s2,$s2,4
    # Line 516
    bgez	$a1,.L0db285a4
    # Line 514
    addu	$t8,$t8,$t0
    # Line 520
    lw	$s0,44($sp)
    # Line 521
    lw	$s1,40($sp)
    # Line 522
    lw	$s2,36($sp)
    # Line 523
    lw	$s3,32($sp)
    # Line 524
    lw	$s4,28($sp)
    # Line 525
    lw	$s5,24($sp)
    # Line 526
    lw	$s6,20($sp)
    # Line 527
    lw	$s7,16($sp)
    # Line 528
    lw	$s8,12($sp)
    # Line 532
    bnez	$v1,.L0db28644
    # Line 529
    addiu	$sp,$sp,48
    # Line 536
    jr	$ra
    # Line 535
    li	$v0,0
.L0db28644:
    # Line 540
    beq	$v1,$v0,.L0db28654
    nop
    # Line 542
    jr	$ra
    # Line 541
    li	$v0,1
.L0db28654:
    # Line 546
    li	$v0,1
    # Line 548
    jr	$ra
    # Line 547
    sb	$v0,30480($a0)
    # Line 570
    addi	$v1,$v1,1
    # Line 571
    b	.L0db285d4
    # Line 572
    or	$t3,$t3,$a6
    # Line 579
    sltu	$at,$a3,$t0
    bnez	$at,.L0db28680
    # Line 580
    addi	$a5,$a5,-1
    # Line 583
    b	.L0db285d4
    # Line 584
    sw	$t0,0($a7)
.L0db28680:
    # Line 588
    addi	$v1,$v1,1
    # Line 589
    b	.L0db285d4
    # Line 590
    or	$t3,$t3,$a6
    # Line 597
    slt	$at,$a3,$t0
    bnez	$at,.L0db286a0
    # Line 598
    addi	$a5,$a5,-1
    # Line 601
    b	.L0db285d4
    # Line 602
    sw	$t0,0($a7)
.L0db286a0:
    # Line 606
    addi	$v1,$v1,1
    # Line 607
    b	.L0db285d4
    # Line 608
    or	$t3,$t3,$a6
    # Line 615
    sltu	$at,$t0,$a3
    beqz	$at,.L0db286c0
    # Line 616
    addi	$a5,$a5,-1
    # Line 619
    b	.L0db285d4
    # Line 620
    sw	$t0,0($a7)
.L0db286c0:
    # Line 624
    addi	$v1,$v1,1
    # Line 625
    b	.L0db285d4
    # Line 626
    or	$t3,$t3,$a6
    # Line 633
    slt	$at,$t0,$a3
    beqz	$at,.L0db286e0
    # Line 634
    addi	$a5,$a5,-1
    # Line 637
    b	.L0db285d4
    # Line 638
    sw	$t0,0($a7)
.L0db286e0:
    # Line 642
    addi	$v1,$v1,1
    # Line 643
    b	.L0db285d4
    # Line 644
    or	$t3,$t3,$a6
    # Line 651
    bne	$t0,$a3,.L0db286fc
    # Line 652
    addi	$a5,$a5,-1
    # Line 655
    b	.L0db285d4
    # Line 656
    sw	$t0,0($a7)
.L0db286fc:
    # Line 660
    addi	$v1,$v1,1
    # Line 661
    b	.L0db285d4
    # Line 662
    or	$t3,$t3,$a6
    # Line 669
    sltu	$at,$a3,$t0
    beqz	$at,.L0db2871c
    # Line 670
    addi	$a5,$a5,-1
    # Line 673
    b	.L0db285d4
    # Line 674
    sw	$t0,0($a7)
.L0db2871c:
    # Line 678
    addi	$v1,$v1,1
    # Line 679
    b	.L0db285d4
    # Line 680
    or	$t3,$t3,$a6
    # Line 687
    slt	$at,$a3,$t0
    beqz	$at,.L0db2873c
    # Line 688
    addi	$a5,$a5,-1
    # Line 691
    b	.L0db285d4
    # Line 692
    sw	$t0,0($a7)
.L0db2873c:
    # Line 696
    addi	$v1,$v1,1
    # Line 697
    b	.L0db285d4
    # Line 698
    or	$t3,$t3,$a6
    # Line 705
    beq	$t0,$a3,.L0db28758
    # Line 706
    addi	$a5,$a5,-1
    # Line 709
    b	.L0db285d4
    # Line 710
    sw	$t0,0($a7)
.L0db28758:
    # Line 714
    addi	$v1,$v1,1
    # Line 715
    b	.L0db285d4
    # Line 716
    or	$t3,$t3,$a6
    # Line 723
    sltu	$at,$t0,$a3
    bnez	$at,.L0db28778
    # Line 724
    addi	$a5,$a5,-1
    # Line 727
    b	.L0db285d4
    # Line 728
    sw	$t0,0($a7)
.L0db28778:
    # Line 732
    addi	$v1,$v1,1
    # Line 733
    b	.L0db285d4
    # Line 734
    or	$t3,$t3,$a6
    # Line 741
    slt	$at,$t0,$a3
    bnez	$at,.L0db28798
    # Line 742
    addi	$a5,$a5,-1
    # Line 745
    b	.L0db285d4
    # Line 746
    sw	$t0,0($a7)
.L0db28798:
    # Line 750
    addi	$v1,$v1,1
    # Line 751
    b	.L0db285d4
    # Line 752
    or	$t3,$t3,$a6
    # Line 759
    addi	$a5,$a5,-1
    # Line 760
    b	.L0db285d4
    # Line 761
    sw	$t0,0($a7)
    # Line 768
    sltu	$at,$a3,$t0
    bnez	$at,.L0db287c4
    # Line 769
    addi	$a5,$a5,-1
    # Line 772
    b	.L0db285d4
    # Line 773
    nop
.L0db287c4:
    # Line 777
    addi	$v1,$v1,1
    # Line 778
    b	.L0db285d4
    # Line 779
    or	$t3,$t3,$a6
    # Line 786
    slt	$at,$a3,$t0
    bnez	$at,.L0db287e4
    # Line 787
    addi	$a5,$a5,-1
    # Line 790
    b	.L0db285d4
    # Line 791
    nop
.L0db287e4:
    # Line 795
    addi	$v1,$v1,1
    # Line 796
    b	.L0db285d4
    # Line 797
    or	$t3,$t3,$a6
    # Line 804
    sltu	$at,$t0,$a3
    beqz	$at,.L0db28804
    # Line 805
    addi	$a5,$a5,-1
    # Line 808
    b	.L0db285d4
    # Line 809
    nop
.L0db28804:
    # Line 813
    addi	$v1,$v1,1
    # Line 814
    b	.L0db285d4
    # Line 815
    or	$t3,$t3,$a6
    # Line 822
    slt	$at,$t0,$a3
    beqz	$at,.L0db28824
    # Line 823
    addi	$a5,$a5,-1
    # Line 826
    b	.L0db285d4
    # Line 827
    nop
.L0db28824:
    # Line 831
    addi	$v1,$v1,1
    # Line 832
    b	.L0db285d4
    # Line 833
    or	$t3,$t3,$a6
    # Line 840
    bne	$t0,$a3,.L0db28840
    # Line 841
    addi	$a5,$a5,-1
    # Line 844
    b	.L0db285d4
    # Line 845
    nop
.L0db28840:
    # Line 849
    addi	$v1,$v1,1
    # Line 850
    b	.L0db285d4
    # Line 851
    or	$t3,$t3,$a6
    # Line 858
    sltu	$at,$a3,$t0
    beqz	$at,.L0db28860
    # Line 859
    addi	$a5,$a5,-1
    # Line 862
    b	.L0db285d4
    # Line 863
    nop
.L0db28860:
    # Line 867
    addi	$v1,$v1,1
    # Line 868
    b	.L0db285d4
    # Line 869
    or	$t3,$t3,$a6
    # Line 876
    slt	$at,$a3,$t0
    beqz	$at,.L0db28880
    # Line 877
    addi	$a5,$a5,-1
    # Line 880
    b	.L0db285d4
    # Line 881
    nop
.L0db28880:
    # Line 885
    addi	$v1,$v1,1
    # Line 886
    b	.L0db285d4
    # Line 887
    or	$t3,$t3,$a6
    # Line 894
    beq	$t0,$a3,.L0db2889c
    # Line 895
    addi	$a5,$a5,-1
    # Line 898
    b	.L0db285d4
    # Line 899
    nop
.L0db2889c:
    # Line 903
    addi	$v1,$v1,1
    # Line 904
    b	.L0db285d4
    # Line 905
    or	$t3,$t3,$a6
    # Line 912
    sltu	$at,$t0,$a3
    bnez	$at,.L0db288bc
    # Line 913
    addi	$a5,$a5,-1
    # Line 916
    b	.L0db285d4
    # Line 917
    nop
.L0db288bc:
    # Line 921
    addi	$v1,$v1,1
    # Line 922
    b	.L0db285d4
    # Line 923
    or	$t3,$t3,$a6
    # Line 930
    slt	$at,$t0,$a3
    bnez	$at,.L0db288dc
    # Line 931
    addi	$a5,$a5,-1
    # Line 934
    b	.L0db285d4
    # Line 935
    nop
.L0db288dc:
    # Line 939
    addi	$v1,$v1,1
    # Line 940
    b	.L0db285d4
    # Line 941
    or	$t3,$t3,$a6
    # Line 948
    addi	$a5,$a5,-1
    # Line 949
    b	.L0db285d4
    # Line 950
    nop
.end __glDepthTestLine_asm

