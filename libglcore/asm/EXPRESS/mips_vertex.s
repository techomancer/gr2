# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_vertex.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 6

.text

# Function: __glValidateVertex2
# Declared: Line 160 (Source lines: 160-336)
# Address: 0x0db27848 - 0x0db27a04 (Size: 444 bytes, Frame: 208)
.globl __glValidateVertex2
.ent __glValidateVertex2
__glValidateVertex2:
    # Line 160
    addiu	$sp,$sp,-80
    # Line 163
    sd	$ra,72($sp)
    # Line 164
    sd	$s3,64($sp)
    # Line 165
    sd	$s2,56($sp)
    # Line 166
    sd	$s1,48($sp)
    # Line 167
    sd	$s0,40($sp)
    # Line 171
    lw	$v0,0($a1)
    # Line 172
    move	$s0,$a0
    # Line 173
    move	$s1,$a1
    # Line 175
    lw	$s2,29664($s0)
    # Line 177
    lui	$v1,0x3f80
    # Line 178
    nor	$v0,$v0,$zero
    # Line 179
    and	$s3,$v0,$a2
    # Line 180
    andi	$a0,$s3,0x10
    # Line 181
    bnez	$a0,.L0db278dc
    # Line 182
    sw	$v1,108($a1)
.L0db27888:
    # Line 186
    andi	$a1,$s3,0x8
    # Line 187
    beqz	$a1,.L0db2799c
    # Line 189
    lw	$a2,64($s2)
    # Line 190
    lbu	$a3,268($s2)
    # Line 191
    beqz	$a2,.L0db278f8
    # Line 192
    lw	$t0,1696($s0)
.L0db278a0:
    # Line 196
    bnez	$a3,.L0db27924
.L0db278a4:
    # Line 200
    lui	$at,0x40
    and	$t0,$t0,$at
    # Line 201
    beqz	$t0,.L0db27988
    # Line 204
    lw	$t9,164($s2)
    # Line 205
    addiu	$a0,$sp,24
    # Line 206
    addiu	$a1,$s1,32
    # Line 207
    jalr	$t9
    # Line 208
    addiu	$a2,$s2,88
    # Line 211
    lw	$t9,11912($s0)
    # Line 212
    addiu	$a0,$s1,32
    # Line 213
    jalr	$t9
    # Line 214
    addiu	$a1,$sp,24
    # Line 216
    b	.L0db2799c
    # Line 217
    nop
.L0db278dc:
    # Line 221
    lw	$t9,72($s2)
    # Line 222
    addiu	$a0,$s1,96
    # Line 223
    addiu	$a1,$s1,16
    # Line 224
    jalr	$t9
    # Line 225
    addiu	$a2,$s2,0
    # Line 227
    b	.L0db27888
    # Line 228
    nop
.L0db278f8:
    # Line 233
    lwc1	$f0,32($s1)
    # Line 234
    lwc1	$f1,16($s1)
    # Line 235
    lwc1	$f2,36($s1)
    # Line 236
    mul.s	$f3,$f0,$f1
    # Line 237
    lwc1	$f4,20($s1)
    # Line 238
    nop
    # Line 239
    mul.s	$f5,$f2,$f4
    # Line 240
    add.s	$f3,$f3,$f5
    # Line 241
    neg.s	$f3,$f3
    # Line 242
    b	.L0db278a0
    # Line 243
    swc1	$f3,44($s1)
.L0db27924:
    # Line 247
    lw	$t9,11908($s0)
    # Line 248
    move	$a0,$s0
    # Line 249
    jalr	$t9
    # Line 250
    move	$a1,$s2
    # Line 252
    lw	$t0,1696($s0)
    # Line 253
    b	.L0db278a4
    # Line 254
    nop
.L0db27940:
    # Line 259
    andi	$t1,$s3,0x40
    # Line 260
    beqz	$t1,.L0db27964
    # Line 261
    lw	$t9,12544($s0)
    # Line 262
    move	$a0,$s0
    # Line 263
    jalr	$t9
    # Line 264
    move	$a1,$s1
    # Line 267
    andi	$t2,$s3,0x4
    # Line 268
    beqz	$t2,.L0db279a4
    # Line 269
    swc1	$f0,176($s1)
.L0db27964:
    # Line 275
    sw	$zero,24($s1)
    # Line 276
    lui	$t3,0x3f80
    # Line 277
    lw	$t9,12004($s0)
    # Line 278
    move	$a0,$s0
    # Line 279
    move	$a1,$s1
    # Line 280
    jalr	$t9
    # Line 282
    sw	$t3,28($s1)
    # Line 283
    b	.L0db279a4
    # Line 284
    nop
.L0db27988:
    # Line 289
    lw	$t9,164($s2)
    # Line 290
    addiu	$a0,$s1,32
    # Line 291
    addiu	$a1,$s1,32
    # Line 292
    jalr	$t9
    # Line 293
    addiu	$a2,$s2,88
.L0db2799c:
    # Line 298
    andi	$a4,$s3,0x44
    # Line 299
    bnez	$a4,.L0db27940
.L0db279a4:
    # Line 304
    andi	$a5,$s3,0x1
    # Line 305
    beqz	$a5,.L0db279c0
    # Line 306
    lw	$t9,12012($s0)
    # Line 307
    move	$a0,$s0
    # Line 308
    li	$a1,0
    # Line 309
    jalr	$t9
    # Line 310
    move	$a2,$s1
.L0db279c0:
    # Line 316
    andi	$a6,$s3,0x2
    # Line 317
    beqz	$a6,.L0db279dc
    # Line 318
    lw	$t9,12012($s0)
    # Line 319
    move	$a0,$s0
    # Line 320
    li	$a1,1
    # Line 321
    jalr	$t9
    # Line 322
    move	$a2,$s1
.L0db279dc:
    # Line 327
    lw	$a7,0($s1)
    # Line 328
    ld	$s0,40($sp)
    # Line 329
    ld	$s2,56($sp)
    # Line 330
    or	$a7,$a7,$s3
    # Line 331
    sw	$a7,0($s1)
    # Line 332
    ld	$ra,72($sp)
    # Line 333
    ld	$s1,48($sp)
    # Line 334
    ld	$s3,64($sp)
    # Line 335
    jr	$ra
    # Line 336
    addiu	$sp,$sp,80
.end __glValidateVertex2

# Function: __glValidateVertex3
# Declared: Line 349 (Source lines: 349-527)
# Address: 0x0db27a04 - 0x0db27bc8 (Size: 452 bytes, Frame: 208)
.globl __glValidateVertex3
.ent __glValidateVertex3
__glValidateVertex3:
    # Line 349
    addiu	$sp,$sp,-80
    # Line 352
    sd	$ra,72($sp)
    # Line 353
    sd	$s3,64($sp)
    # Line 354
    sd	$s2,56($sp)
    # Line 355
    sd	$s1,48($sp)
    # Line 356
    sd	$s0,40($sp)
    # Line 360
    lw	$t8,0($a1)
    # Line 361
    move	$s0,$a0
    # Line 362
    move	$s1,$a1
    # Line 364
    lw	$s2,29664($s0)
    # Line 366
    lui	$t9,0x3f80
    # Line 367
    nor	$t8,$t8,$zero
    # Line 368
    and	$s3,$t8,$a2
    # Line 369
    andi	$v0,$s3,0x10
    # Line 370
    bnez	$v0,.L0db27a98
    # Line 371
    sw	$t9,108($a1)
.L0db27a44:
    # Line 375
    andi	$v1,$s3,0x8
    # Line 376
    beqz	$v1,.L0db27b60
    # Line 378
    lw	$a0,64($s2)
    # Line 379
    lbu	$a1,268($s2)
    # Line 380
    beqz	$a0,.L0db27ab4
    # Line 381
    lw	$a2,1696($s0)
.L0db27a5c:
    # Line 385
    bnez	$a1,.L0db27aec
.L0db27a60:
    # Line 389
    lui	$at,0x40
    and	$a2,$a2,$at
    # Line 390
    beqz	$a2,.L0db27b4c
    # Line 393
    lw	$t9,164($s2)
    # Line 394
    addiu	$a0,$sp,24
    # Line 395
    addiu	$a1,$s1,32
    # Line 396
    jalr	$t9
    # Line 397
    addiu	$a2,$s2,88
    # Line 400
    lw	$t9,11912($s0)
    # Line 401
    addiu	$a0,$s1,32
    # Line 402
    jalr	$t9
    # Line 403
    addiu	$a1,$sp,24
    # Line 405
    b	.L0db27b60
    # Line 406
    nop
.L0db27a98:
    # Line 410
    lw	$t9,76($s2)
    # Line 411
    addiu	$a0,$s1,96
    # Line 412
    addiu	$a1,$s1,16
    # Line 413
    jalr	$t9
    # Line 414
    addiu	$a2,$s2,0
    # Line 416
    b	.L0db27a44
    # Line 417
    nop
.L0db27ab4:
    # Line 423
    lwc1	$f6,32($s1)
    # Line 424
    lwc1	$f7,16($s1)
    # Line 425
    lwc1	$f8,36($s1)
    # Line 426
    mul.s	$f9,$f6,$f7
    # Line 427
    lwc1	$f10,20($s1)
    # Line 428
    lwc1	$f11,40($s1)
    # Line 429
    mul.s	$f12,$f8,$f10
    # Line 430
    lwc1	$f13,24($s1)
    # Line 431
    add.s	$f9,$f9,$f12
    # Line 432
    mul.s	$f14,$f11,$f13
    # Line 433
    add.s	$f9,$f9,$f14
    # Line 434
    neg.s	$f9,$f9
    # Line 435
    b	.L0db27a5c
    # Line 436
    swc1	$f9,44($s1)
.L0db27aec:
    # Line 440
    lw	$t9,11908($s0)
    # Line 441
    move	$a0,$s0
    # Line 442
    jalr	$t9
    # Line 443
    move	$a1,$s2
    # Line 445
    lw	$a2,1696($s0)
    # Line 446
    b	.L0db27a60
    # Line 447
    nop
.L0db27b08:
    # Line 452
    andi	$a3,$s3,0x40
    # Line 453
    beqz	$a3,.L0db27b2c
    # Line 454
    lw	$t9,12544($s0)
    # Line 455
    move	$a0,$s0
    # Line 456
    jalr	$t9
    # Line 457
    move	$a1,$s1
    # Line 460
    andi	$t0,$s3,0x4
    # Line 461
    beqz	$t0,.L0db27b68
    # Line 462
    swc1	$f0,176($s1)
.L0db27b2c:
    # Line 467
    lui	$t1,0x3f80
    # Line 468
    lw	$t9,12004($s0)
    # Line 469
    move	$a0,$s0
    # Line 470
    move	$a1,$s1
    # Line 471
    jalr	$t9
    # Line 473
    sw	$t1,28($s1)
    # Line 474
    b	.L0db27b68
    # Line 475
    nop
.L0db27b4c:
    # Line 480
    lw	$t9,164($s2)
    # Line 481
    addiu	$a0,$s1,32
    # Line 482
    addiu	$a1,$s1,32
    # Line 483
    jalr	$t9
    # Line 484
    addiu	$a2,$s2,88
.L0db27b60:
    # Line 489
    andi	$t2,$s3,0x44
    # Line 490
    bnez	$t2,.L0db27b08
.L0db27b68:
    # Line 495
    andi	$t3,$s3,0x1
    # Line 496
    beqz	$t3,.L0db27b84
    # Line 497
    lw	$t9,12012($s0)
    # Line 498
    move	$a0,$s0
    # Line 499
    li	$a1,0
    # Line 500
    jalr	$t9
    # Line 501
    move	$a2,$s1
.L0db27b84:
    # Line 507
    andi	$a4,$s3,0x2
    # Line 508
    beqz	$a4,.L0db27ba0
    # Line 509
    lw	$t9,12012($s0)
    # Line 510
    move	$a0,$s0
    # Line 511
    li	$a1,1
    # Line 512
    jalr	$t9
    # Line 513
    move	$a2,$s1
.L0db27ba0:
    # Line 518
    lw	$a5,0($s1)
    # Line 519
    ld	$s0,40($sp)
    # Line 520
    ld	$s2,56($sp)
    # Line 521
    or	$a5,$a5,$s3
    # Line 522
    sw	$a5,0($s1)
    # Line 523
    ld	$ra,72($sp)
    # Line 524
    ld	$s1,48($sp)
    # Line 525
    ld	$s3,64($sp)
    # Line 526
    jr	$ra
    # Line 527
    addiu	$sp,$sp,80
.end __glValidateVertex3

# Function: __glValidateVertex4
# Declared: Line 541 (Source lines: 541-722)
# Address: 0x0db27bc8 - 0x0db27d94 (Size: 460 bytes, Frame: 208)
.globl __glValidateVertex4
.ent __glValidateVertex4
__glValidateVertex4:
    # Line 541
    addiu	$sp,$sp,-80
    # Line 544
    sd	$ra,72($sp)
    # Line 545
    sd	$s3,64($sp)
    # Line 546
    sd	$s2,56($sp)
    # Line 547
    sd	$s1,48($sp)
    # Line 548
    sd	$s0,40($sp)
    # Line 552
    lw	$a6,0($a1)
    # Line 553
    move	$s0,$a0
    # Line 554
    move	$s1,$a1
    # Line 556
    lw	$s2,29664($s0)
    # Line 558
    lui	$a7,0x3f80
    # Line 559
    nor	$a6,$a6,$zero
    # Line 560
    and	$s3,$a6,$a2
    # Line 561
    andi	$t8,$s3,0x10
    # Line 562
    bnez	$t8,.L0db27c60
    # Line 563
    sw	$a7,108($a1)
.L0db27c08:
    # Line 567
    andi	$t9,$s3,0x8
    # Line 568
    beqz	$t9,.L0db27d2c
    # Line 570
    lw	$v0,28($s1)
    # Line 571
    lbu	$v1,268($s2)
    # Line 572
    lw	$a0,1696($s0)
    # Line 573
    bnez	$v0,.L0db27c7c
    # Line 576
    sw	$zero,44($s1)
.L0db27c24:
    # Line 580
    bnez	$v1,.L0db27cbc
.L0db27c28:
    # Line 584
    lui	$at,0x40
    and	$a0,$a0,$at
    # Line 585
    beqz	$a0,.L0db27d18
    # Line 588
    lw	$t9,164($s2)
    # Line 589
    addiu	$a0,$sp,24
    # Line 590
    addiu	$a1,$s1,32
    # Line 591
    jalr	$t9
    # Line 592
    addiu	$a2,$s2,88
    # Line 595
    lw	$t9,11912($s0)
    # Line 596
    addiu	$a0,$s1,32
    # Line 597
    jalr	$t9
    # Line 598
    addiu	$a1,$sp,24
    # Line 600
    b	.L0db27d2c
    # Line 601
    nop
.L0db27c60:
    # Line 605
    lw	$t9,80($s2)
    # Line 606
    addiu	$a0,$s1,96
    # Line 607
    addiu	$a1,$s1,16
    # Line 608
    jalr	$t9
    # Line 609
    addiu	$a2,$s2,0
    # Line 611
    b	.L0db27c08
    # Line 612
    nop
.L0db27c7c:
    # Line 618
    lwc1	$f15,32($s1)
    # Line 619
    lwc1	$f16,16($s1)
    # Line 620
    lwc1	$f17,36($s1)
    # Line 621
    mul.s	$f18,$f15,$f16
    # Line 622
    lwc1	$f19,20($s1)
    # Line 623
    lwc1	$f0,40($s1)
    # Line 624
    mul.s	$f1,$f17,$f19
    # Line 625
    lwc1	$f2,24($s1)
    # Line 626
    add.s	$f18,$f18,$f1
    # Line 627
    mul.s	$f3,$f0,$f2
    # Line 628
    lwc1	$f4,28($s1)
    # Line 629
    add.s	$f18,$f18,$f3
    # Line 630
    neg.s	$f18,$f18
    # Line 631
    div.s	$f18,$f18,$f4
    # Line 632
    b	.L0db27c24
    # Line 633
    swc1	$f18,44($s1)
.L0db27cbc:
    # Line 637
    lw	$t9,11908($s0)
    # Line 638
    move	$a0,$s0
    # Line 639
    jalr	$t9
    # Line 640
    move	$a1,$s2
    # Line 642
    lw	$a0,1696($s0)
    # Line 643
    b	.L0db27c28
    # Line 644
    nop
.L0db27cd8:
    # Line 649
    andi	$a1,$s3,0x40
    # Line 650
    beqz	$a1,.L0db27cfc
    # Line 651
    lw	$t9,12544($s0)
    # Line 652
    move	$a0,$s0
    # Line 653
    jalr	$t9
    # Line 654
    move	$a1,$s1
    # Line 657
    andi	$a2,$s3,0x4
    # Line 658
    beqz	$a2,.L0db27d34
    # Line 659
    swc1	$f0,176($s1)
.L0db27cfc:
    # Line 663
    lw	$t9,12004($s0)
    # Line 664
    move	$a0,$s0
    # Line 665
    move	$a1,$s1
    # Line 666
    jalr	$t9
    # Line 668
    nop
    # Line 669
    b	.L0db27d34
    # Line 670
    nop
.L0db27d18:
    # Line 675
    lw	$t9,164($s2)
    # Line 676
    addiu	$a0,$s1,32
    # Line 677
    addiu	$a1,$s1,32
    # Line 678
    jalr	$t9
    # Line 679
    addiu	$a2,$s2,88
.L0db27d2c:
    # Line 684
    andi	$a3,$s3,0x44
    # Line 685
    bnez	$a3,.L0db27cd8
.L0db27d34:
    # Line 690
    andi	$t0,$s3,0x1
    # Line 691
    beqz	$t0,.L0db27d50
    # Line 692
    lw	$t9,12012($s0)
    # Line 693
    move	$a0,$s0
    # Line 694
    li	$a1,0
    # Line 695
    jalr	$t9
    # Line 696
    move	$a2,$s1
.L0db27d50:
    # Line 702
    andi	$t1,$s3,0x2
    # Line 703
    beqz	$t1,.L0db27d6c
    # Line 704
    lw	$t9,12012($s0)
    # Line 705
    move	$a0,$s0
    # Line 706
    li	$a1,1
    # Line 707
    jalr	$t9
    # Line 708
    move	$a2,$s1
.L0db27d6c:
    # Line 713
    lw	$t2,0($s1)
    # Line 714
    ld	$s0,40($sp)
    # Line 715
    ld	$s2,56($sp)
    # Line 716
    or	$t2,$t2,$s3
    # Line 717
    sw	$t2,0($s1)
    # Line 718
    ld	$ra,72($sp)
    # Line 719
    ld	$s1,48($sp)
    # Line 720
    ld	$s3,64($sp)
    # Line 721
    jr	$ra
    # Line 722
    addiu	$sp,$sp,80
.end __glValidateVertex4

# Function: __glValidateLitVertex2
# Declared: Line 743 (Source lines: 743-835)
# Address: 0x0db27d94 - 0x0db27e84 (Size: 240 bytes, Frame: 0)
.globl __glValidateLitVertex2
.ent __glValidateLitVertex2
__glValidateLitVertex2:
    # Line 743
    move	$t3,$ra
    # Line 746
    lw	$a4,0($a1)
    # Line 747
    move	$t0,$a0
    # Line 748
    move	$t1,$a1
    # Line 750
    lw	$a5,29664($t0)
    # Line 751
    nor	$a6,$a4,$zero
    # Line 752
    and	$t2,$a6,$a2
    # Line 753
    or	$a4,$a4,$t2
    # Line 754
    sw	$a4,0($t1)
    # Line 756
    andi	$a7,$t2,0x8
    # Line 757
    beqz	$a7,.L0db27e5c
    # Line 760
    lw	$t8,64($a5)
    # Line 761
    lbu	$v0,268($a5)
    # Line 762
    beqz	$t8,.L0db27de0
    # Line 763
    lw	$t9,164($a5)
.L0db27dd0:
    # Line 767
    beqz	$v0,.L0db27e50
    # Line 768
    addiu	$a0,$t1,32
    # Line 770
    b	.L0db27e0c
    # Line 771
    nop
.L0db27de0:
    # Line 776
    lwc1	$f5,32($t1)
    # Line 777
    lwc1	$f6,16($t1)
    # Line 778
    lwc1	$f7,36($t1)
    # Line 779
    mul.s	$f8,$f5,$f6
    # Line 780
    lwc1	$f9,20($t1)
    # Line 781
    nop
    # Line 782
    mul.s	$f10,$f7,$f9
    # Line 783
    add.s	$f8,$f8,$f10
    # Line 784
    neg.s	$f8,$f8
    # Line 785
    b	.L0db27dd0
    # Line 786
    swc1	$f8,44($t1)
.L0db27e0c:
    # Line 792
    addiu	$sp,$sp,-80
    # Line 793
    sd	$ra,72($sp)
    # Line 794
    sw	$t0,40($sp)
    # Line 795
    sw	$t1,48($sp)
    # Line 796
    sw	$t2,56($sp)
    # Line 797
    lw	$t9,11908($t0)
    # Line 798
    move	$a0,$t0
    # Line 799
    jalr	$t9
    # Line 800
    move	$a1,$a5
    # Line 802
    ld	$t3,72($sp)
    # Line 803
    lw	$t0,40($sp)
    # Line 804
    lw	$t1,48($sp)
    # Line 805
    lw	$t2,56($sp)
    # Line 806
    addiu	$sp,$sp,80
    # Line 807
    lw	$a5,29664($t0)
    # Line 808
    addiu	$a0,$t1,32
    # Line 809
    lw	$t9,164($a5)
.L0db27e50:
    # Line 815
    addiu	$a1,$t1,32
    # Line 816
    jalr	$t9
    # Line 817
    addiu	$a2,$a5,88
.L0db27e5c:
    # Line 823
    andi	$v1,$t2,0x1
    # Line 824
    move	$ra,$t3
    # Line 825
    beqz	$v1,.L0db27e7c
    # Line 826
    lw	$t9,12012($t0)
    # Line 827
    move	$a0,$t0
    # Line 828
    li	$a1,0
    # Line 829
    move	$a2,$t1
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 830
    nop
.L0db27e7c:
    # Line 834
    jr	$ra
    # Line 835
    nop
.end __glValidateLitVertex2

# Function: __glValidateLitVertex3
# Declared: Line 847 (Source lines: 847-941)
# Address: 0x0db27e84 - 0x0db27f7c (Size: 248 bytes, Frame: 0)
.globl __glValidateLitVertex3
.ent __glValidateLitVertex3
__glValidateLitVertex3:
    # Line 847
    move	$t3,$ra
    # Line 850
    lw	$a3,0($a1)
    # Line 851
    move	$t0,$a0
    # Line 852
    move	$t1,$a1
    # Line 854
    lw	$a4,29664($t0)
    # Line 855
    nor	$a5,$a3,$zero
    # Line 856
    and	$t2,$a5,$a2
    # Line 857
    or	$a3,$a3,$t2
    # Line 858
    sw	$a3,0($t1)
    # Line 860
    andi	$a6,$t2,0x8
    # Line 861
    beqz	$a6,.L0db27ed4
    # Line 864
    lw	$a7,64($a4)
    # Line 865
    lbu	$t8,268($a4)
    # Line 866
    beqz	$a7,.L0db27efc
    # Line 867
    lw	$t9,164($a4)
.L0db27ec0:
    # Line 871
    bnez	$t8,.L0db27f34
    # Line 872
    addiu	$a0,$t1,32
.L0db27ec8:
    # Line 878
    addiu	$a1,$t1,32
    # Line 879
    jalr	$t9
    # Line 880
    addiu	$a2,$a4,88
.L0db27ed4:
    # Line 886
    andi	$t9,$t2,0x1
    # Line 887
    move	$ra,$t3
    # Line 888
    beqz	$t9,.L0db27ef4
    # Line 889
    lw	$t9,12012($t0)
    # Line 890
    move	$a0,$t0
    # Line 891
    li	$a1,0
    # Line 892
    move	$a2,$t1
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 893
    nop
.L0db27ef4:
    # Line 897
    jr	$ra
    # Line 898
    nop
.L0db27efc:
    # Line 904
    lwc1	$f11,32($t1)
    # Line 905
    lwc1	$f12,16($t1)
    # Line 906
    lwc1	$f13,36($t1)
    # Line 907
    mul.s	$f14,$f11,$f12
    # Line 908
    lwc1	$f15,20($t1)
    # Line 909
    lwc1	$f16,40($t1)
    # Line 910
    mul.s	$f17,$f13,$f15
    # Line 911
    lwc1	$f18,24($t1)
    # Line 912
    add.s	$f14,$f14,$f17
    # Line 913
    mul.s	$f19,$f16,$f18
    # Line 914
    add.s	$f14,$f14,$f19
    # Line 915
    neg.s	$f14,$f14
    # Line 916
    b	.L0db27ec0
    # Line 917
    swc1	$f14,44($t1)
.L0db27f34:
    # Line 923
    addiu	$sp,$sp,-80
    # Line 924
    sd	$ra,72($sp)
    # Line 925
    sw	$t0,40($sp)
    # Line 926
    sw	$t1,48($sp)
    # Line 927
    sw	$t2,56($sp)
    # Line 928
    lw	$t9,11908($t0)
    # Line 929
    move	$a0,$t0
    # Line 930
    jalr	$t9
    # Line 931
    move	$a1,$a4
    # Line 933
    ld	$t3,72($sp)
    # Line 934
    lw	$t0,40($sp)
    # Line 935
    lw	$t1,48($sp)
    # Line 936
    lw	$t2,56($sp)
    # Line 937
    addiu	$sp,$sp,80
    # Line 938
    lw	$a4,29664($t0)
    # Line 939
    addiu	$a0,$t1,32
    # Line 940
    b	.L0db27ec8
    # Line 941
    lw	$t9,164($a4)
.end __glValidateLitVertex3

# Function: __glValidateLitVertex4
# Declared: Line 955 (Source lines: 955-1055)
# Address: 0x0db27f7c - 0x0db28084 (Size: 264 bytes, Frame: 0)
.globl __glValidateLitVertex4
.ent __glValidateLitVertex4
__glValidateLitVertex4:
    # Line 955
    move	$t3,$ra
    # Line 958
    lw	$v0,0($a1)
    # Line 959
    move	$t0,$a0
    # Line 960
    move	$t1,$a1
    # Line 962
    lw	$v1,29664($t0)
    # Line 963
    nor	$a0,$v0,$zero
    # Line 964
    and	$t2,$a0,$a2
    # Line 965
    or	$v0,$v0,$t2
    # Line 966
    sw	$v0,0($t1)
    # Line 968
    andi	$a1,$t2,0x8
    # Line 969
    beqz	$a1,.L0db2805c
    # Line 972
    lw	$a2,28($t1)
    # Line 973
    lbu	$a3,268($v1)
    # Line 974
    bnez	$a2,.L0db27fcc
    # Line 975
    lw	$t9,164($v1)
    # Line 978
    sw	$zero,44($t1)
.L0db27fbc:
    # Line 982
    beqz	$a3,.L0db28050
    # Line 983
    addiu	$a0,$t1,32
    # Line 985
    b	.L0db2800c
    # Line 986
    nop
.L0db27fcc:
    # Line 991
    lwc1	$f0,32($t1)
    # Line 992
    lwc1	$f1,16($t1)
    # Line 993
    lwc1	$f2,36($t1)
    # Line 994
    mul.s	$f3,$f0,$f1
    # Line 995
    lwc1	$f4,20($t1)
    # Line 996
    lwc1	$f5,40($t1)
    # Line 997
    mul.s	$f6,$f2,$f4
    # Line 998
    lwc1	$f7,24($t1)
    # Line 999
    add.s	$f3,$f3,$f6
    # Line 1000
    mul.s	$f8,$f5,$f7
    # Line 1001
    lwc1	$f9,28($t1)
    # Line 1002
    add.s	$f3,$f3,$f8
    # Line 1003
    neg.s	$f3,$f3
    # Line 1004
    div.s	$f3,$f3,$f9
    # Line 1005
    b	.L0db27fbc
    # Line 1006
    swc1	$f3,44($t1)
.L0db2800c:
    # Line 1012
    addiu	$sp,$sp,-80
    # Line 1013
    sd	$ra,72($sp)
    # Line 1014
    sw	$t0,40($sp)
    # Line 1015
    sw	$t1,48($sp)
    # Line 1016
    sw	$t2,56($sp)
    # Line 1017
    lw	$t9,11908($t0)
    # Line 1018
    move	$a0,$t0
    # Line 1019
    jalr	$t9
    # Line 1020
    move	$a1,$v1
    # Line 1022
    ld	$t3,72($sp)
    # Line 1023
    lw	$t0,40($sp)
    # Line 1024
    lw	$t1,48($sp)
    # Line 1025
    lw	$t2,56($sp)
    # Line 1026
    addiu	$sp,$sp,80
    # Line 1027
    lw	$v1,29664($t0)
    # Line 1028
    addiu	$a0,$t1,32
    # Line 1029
    lw	$t9,164($v1)
.L0db28050:
    # Line 1035
    addiu	$a1,$t1,32
    # Line 1036
    jalr	$t9
    # Line 1037
    addiu	$a2,$v1,88
.L0db2805c:
    # Line 1043
    andi	$a4,$t2,0x1
    # Line 1044
    move	$ra,$t3
    # Line 1045
    beqz	$a4,.L0db2807c
    # Line 1046
    lw	$t9,12012($t0)
    # Line 1047
    move	$a0,$t0
    # Line 1048
    li	$a1,0
    # Line 1049
    move	$a2,$t1
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 1050
    nop
.L0db2807c:
    # Line 1054
    jr	$ra
    # Line 1055
    nop
.end __glValidateLitVertex4

