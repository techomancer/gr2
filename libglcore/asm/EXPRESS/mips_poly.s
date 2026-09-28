# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_poly.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glRenderFlatTriangle
# Declared: Line 201 (Source lines: 201-484)
# Address: 0x0db295a4 - 0x0db297e4 (Size: 576 bytes, Frame: 192)
.globl __glRenderFlatTriangle
.ent __glRenderFlatTriangle
__glRenderFlatTriangle:
    # Line 201
    addiu	$sp,$sp,-64
    # Line 205
    lw	$v0,132($a1)
    # Line 206
    lw	$v1,132($a2)
    # Line 207
    lw	$t0,132($a3)
    # Line 208
    move	$t1,$zero
    # Line 209
    slt	$t2,$v0,$v1
    # Line 210
    beqz	$t2,.L0db295f8
    # Line 212
    slt	$t3,$v1,$t0
    # Line 213
    bnez	$t3,.L0db29634
    # Line 217
    slt	$a4,$v0,$t0
    # Line 218
    beqz	$a4,.L0db295e4
    # Line 220
    move	$a5,$a2
    # Line 221
    move	$a2,$a3
    # Line 222
    move	$a3,$a5
    # Line 224
    b	.L0db29634
    # Line 225
    li	$t1,1
.L0db295e4:
    # Line 229
    move	$a6,$a1
    # Line 230
    move	$a1,$a3
    # Line 231
    move	$a3,$a2
    # Line 232
    b	.L0db29634
    # Line 233
    move	$a2,$a6
.L0db295f8:
    # Line 239
    slt	$a7,$v1,$t0
    # Line 240
    beqz	$a7,.L0db29628
    # Line 241
    move	$t8,$a1
    # Line 243
    slt	$v1,$v0,$t0
    # Line 244
    beqz	$v1,.L0db2961c
    # Line 246
    move	$a1,$a2
    # Line 247
    move	$a2,$t8
    # Line 249
    b	.L0db29634
    # Line 250
    li	$t1,1
.L0db2961c:
    # Line 254
    move	$a2,$a3
    # Line 255
    b	.L0db29634
    # Line 256
    move	$a3,$t8
.L0db29628:
    # Line 261
    move	$a1,$a3
    # Line 262
    move	$a3,$t8
    # Line 264
    li	$t1,1
.L0db29634:
    # Line 282
    lwc1	$f0,128($a3)
    # Line 283
    lwc1	$f1,128($a1)
    # Line 284
    lwc1	$f2,128($a2)
    # Line 285
    lwc1	$f3,132($a3)
    # Line 286
    sub.s	$f4,$f1,$f0
    # Line 287
    lwc1	$f5,132($a1)
    # Line 288
    lwc1	$f6,132($a2)
    # Line 289
    sub.s	$f7,$f2,$f0
    # Line 290
    sw	$ra,52($sp)
    # Line 292
    sub.s	$f8,$f5,$f3
    # Line 293
    sw	$a0,32($sp)
    # Line 294
    sw	$a1,36($sp)
    # Line 295
    sub.s	$f9,$f6,$f3
    # Line 296
    mul.s	$f10,$f7,$f8
    # Line 297
    sw	$a2,40($sp)
    # Line 298
    swc1	$f7,30188($a0)
    # Line 302
    mul.s	$f11,$f4,$f9
    # Line 303
    sw	$a3,44($sp)
    # Line 304
    swc1	$f4,30184($a0)
    # Line 305
    swc1	$f8,30192($a0)
    # Line 306
    swc1	$f9,30196($a0)
    # Line 307
    lbu	$a1,30525($a0)
    # Line 308
    lw	$a2,30440($a0)
    # Line 309
    sub.s	$f11,$f11,$f10
    # Line 310
    nop
    # Line 311
    swc1	$f11,30180($a0)
    # Line 315
    nop
    # Line 316
    lw	$a3,30180($a0)
    # Line 317
    nop
    # Line 318
    sll	$t0,$a3,0x1
    # Line 320
    sra	$t2,$a3,0x1f
    # Line 321
    sltiu	$t2,$t2,1
    # Line 327
    xor	$t3,$t2,$t1
    # Line 328
    addu	$t3,$a0,$t3
    # Line 329
    lbu	$t3,30520($t3)
    # Line 331
    beqz	$t0,.L0db297dc
    # Line 332
    sw	$t2,16($sp)
    # Line 333
    beq	$t3,$a1,.L0db297dc
    # Line 339
    andi	$a2,$a2,0x400
    # Line 340
    beqz	$a2,.L0db29728
    # Line 343
    sll	$a4,$t3,0x2
    # Line 344
    addu	$a4,$a0,$a4
    # Line 351
    lw	$a4,28088($a4)
    # Line 352
    b	.L0db29730
    # Line 353
    nop
.L0db296e8:
    # Line 356
    jalr	$t9
    # Line 357
    nop
    # Line 359
    b	.L0db29760
    # Line 360
    lw	$a0,32($sp)
.L0db296f8:
    # Line 363
    jalr	$t9
    # Line 364
    nop
    # Line 366
    b	.L0db2977c
    # Line 367
    lw	$a0,32($sp)
.L0db29708:
    # Line 370
    jalr	$t9
    # Line 371
    move	$a1,$a3
    # Line 373
    b	.L0db29798
    # Line 374
    lw	$a0,32($sp)
.L0db29718:
    # Line 377
    jalr	$t9
    # Line 378
    nop
    # Line 380
    b	.L0db297b4
    # Line 381
    lw	$a0,32($sp)
.L0db29728:
    # Line 387
    lw	$a4,28088($a0)
    # Line 388
    li	$t3,0
.L0db29730:
    # Line 398
    lw	$a1,28080($a0)
    # Line 399
    sll	$t3,$t3,0x4
    # Line 400
    addiu	$t3,$t3,144
    # Line 401
    addu	$t3,$a1,$t3
    # Line 402
    sw	$a1,28($sp)
    # Line 407
    lw	$a5,0($a1)
    # Line 408
    lw	$t9,8($a1)
    # Line 409
    andi	$a2,$a4,0x1b
    # Line 410
    nor	$a5,$a5,$zero
    # Line 411
    and	$a5,$a5,$a2
    # Line 415
    bnez	$a5,.L0db296e8
    # Line 416
    sw	$t3,4($a1)
.L0db29760:
    # Line 423
    lw	$a1,36($sp)
    # Line 424
    lw	$a2,28084($a0)
    # Line 425
    lw	$a6,0($a1)
    # Line 426
    lw	$t9,8($a1)
    # Line 427
    nor	$a6,$a6,$zero
    # Line 428
    and	$a6,$a6,$a2
    # Line 429
    bnez	$a6,.L0db296f8
.L0db2977c:
    # Line 433
    lw	$a3,40($sp)
    # Line 434
    lw	$a2,28084($a0)
    # Line 435
    lw	$a7,0($a3)
    # Line 436
    lw	$t9,8($a3)
    # Line 437
    nor	$a7,$a7,$zero
    # Line 438
    and	$a7,$a7,$a2
    # Line 439
    bnez	$a7,.L0db29708
.L0db29798:
    # Line 443
    lw	$a1,44($sp)
    # Line 444
    lw	$a2,28084($a0)
    # Line 445
    lw	$t8,0($a1)
    # Line 446
    lw	$t9,8($a1)
    # Line 447
    nor	$t8,$t8,$zero
    # Line 448
    and	$t8,$t8,$a2
    # Line 449
    bnez	$t8,.L0db29718
.L0db297b4:
    # Line 455
    lw	$a3,44($sp)
    # Line 467
    lw	$t9,12088($a0)
    # Line 468
    lw	$a2,40($sp)
    # Line 469
    lw	$a4,16($sp)
    # Line 470
    jalr	$t9
    # Line 471
    lw	$a1,36($sp)
    # Line 477
    lw	$v0,28($sp)
    # Line 478
    lw	$ra,52($sp)
    # Line 479
    addiu	$v1,$v0,144
    # Line 480
    sw	$v1,4($v0)
.L0db297dc:
    # Line 483
    jr	$ra
    # Line 484
    addiu	$sp,$sp,64
.end __glRenderFlatTriangle

# Function: __glRenderFlatOneFaceTriangle
# Declared: Line 495 (Source lines: 495-728)
# Address: 0x0db297e4 - 0x0db299f0 (Size: 524 bytes, Frame: 192)
.globl __glRenderFlatOneFaceTriangle
.ent __glRenderFlatOneFaceTriangle
__glRenderFlatOneFaceTriangle:
    # Line 495
    addiu	$sp,$sp,-64
    # Line 498
    lw	$t0,132($a1)
    # Line 499
    lw	$t1,132($a2)
    # Line 500
    lw	$t2,132($a3)
    # Line 501
    move	$t3,$zero
    # Line 502
    slt	$a4,$t0,$t1
    # Line 503
    beqz	$a4,.L0db29838
    # Line 505
    slt	$a5,$t1,$t2
    # Line 506
    bnez	$a5,.L0db29874
    # Line 510
    slt	$a6,$t0,$t2
    # Line 511
    beqz	$a6,.L0db29824
    # Line 513
    move	$a7,$a2
    # Line 514
    move	$a2,$a3
    # Line 515
    move	$a3,$a7
    # Line 517
    b	.L0db29874
    # Line 518
    li	$t3,1
.L0db29824:
    # Line 522
    move	$t8,$a1
    # Line 523
    move	$a1,$a3
    # Line 524
    move	$a3,$a2
    # Line 525
    b	.L0db29874
    # Line 526
    move	$a2,$t8
.L0db29838:
    # Line 530
    slt	$v0,$t1,$t2
    # Line 531
    beqz	$v0,.L0db29868
    # Line 532
    move	$v1,$a1
    # Line 534
    slt	$a1,$t0,$t2
    # Line 535
    beqz	$a1,.L0db2985c
    # Line 537
    move	$a1,$a2
    # Line 538
    move	$a2,$v1
    # Line 539
    b	.L0db29874
    # Line 540
    li	$t3,1
.L0db2985c:
    # Line 544
    move	$a2,$a3
    # Line 545
    b	.L0db29874
    # Line 546
    move	$a3,$v1
.L0db29868:
    # Line 551
    move	$a1,$a3
    # Line 552
    move	$a3,$v1
    # Line 553
    li	$t3,1
.L0db29874:
    # Line 569
    lwc1	$f12,128($a3)
    # Line 570
    lwc1	$f13,128($a1)
    # Line 571
    lwc1	$f14,128($a2)
    # Line 572
    lwc1	$f15,132($a3)
    # Line 573
    sub.s	$f16,$f13,$f12
    # Line 574
    lwc1	$f17,132($a1)
    # Line 575
    lwc1	$f18,132($a2)
    # Line 576
    sub.s	$f19,$f14,$f12
    # Line 577
    sw	$ra,52($sp)
    # Line 579
    sub.s	$f0,$f17,$f15
    # Line 580
    sw	$a0,32($sp)
    # Line 581
    sw	$a1,36($sp)
    # Line 582
    sub.s	$f1,$f18,$f15
    # Line 583
    mul.s	$f2,$f19,$f0
    # Line 584
    sw	$a2,40($sp)
    # Line 585
    swc1	$f19,30188($a0)
    # Line 589
    mul.s	$f3,$f16,$f1
    # Line 590
    sw	$a3,44($sp)
    # Line 591
    swc1	$f16,30184($a0)
    # Line 592
    swc1	$f0,30192($a0)
    # Line 593
    swc1	$f1,30196($a0)
    # Line 594
    lbu	$a2,30525($a0)
    # Line 595
    sub.s	$f3,$f3,$f2
    # Line 596
    nop
    # Line 597
    swc1	$f3,30180($a0)
    # Line 601
    nop
    # Line 602
    lw	$a3,30180($a0)
    # Line 603
    nop
    # Line 604
    sll	$t0,$a3,0x1
    # Line 606
    sra	$t1,$a3,0x1f
    # Line 607
    sltiu	$t1,$t1,1
    # Line 613
    xor	$t2,$t1,$t3
    # Line 614
    addu	$t2,$a0,$t2
    # Line 615
    lbu	$t2,30520($t2)
    # Line 616
    beqz	$t0,.L0db299e8
    # Line 617
    sw	$t1,16($sp)
    # Line 618
    beq	$t2,$a2,.L0db299e8
    # Line 622
    lw	$a1,28080($a0)
    # Line 623
    b	.L0db29954
    # Line 624
    lw	$t3,28088($a0)
.L0db29914:
    # Line 627
    jalr	$t9
    # Line 628
    nop
    # Line 630
    b	.L0db29974
    # Line 631
    lw	$a0,32($sp)
.L0db29924:
    # Line 634
    jalr	$t9
    # Line 635
    nop
    # Line 637
    b	.L0db29990
    # Line 638
    lw	$a0,32($sp)
.L0db29934:
    # Line 641
    jalr	$t9
    # Line 642
    move	$a1,$a3
    # Line 644
    b	.L0db299ac
    # Line 645
    lw	$a0,32($sp)
.L0db29944:
    # Line 648
    jalr	$t9
    # Line 649
    nop
    # Line 651
    b	.L0db299c8
    # Line 652
    lw	$a0,32($sp)
.L0db29954:
    # Line 657
    sw	$a1,28($sp)
    # Line 662
    lw	$a4,0($a1)
    # Line 663
    lw	$t9,8($a1)
    # Line 664
    andi	$a2,$t3,0x1b
    # Line 665
    nor	$a4,$a4,$zero
    # Line 666
    and	$a4,$a4,$a2
    # Line 670
    bnez	$a4,.L0db29914
    # Line 671
    nop
.L0db29974:
    # Line 675
    lw	$a1,36($sp)
    # Line 676
    lw	$a2,28084($a0)
    # Line 677
    lw	$a5,0($a1)
    # Line 678
    lw	$t9,8($a1)
    # Line 679
    nor	$a5,$a5,$zero
    # Line 680
    and	$a5,$a5,$a2
    # Line 681
    bnez	$a5,.L0db29924
.L0db29990:
    # Line 685
    lw	$a3,40($sp)
    # Line 686
    lw	$a2,28084($a0)
    # Line 687
    lw	$a6,0($a3)
    # Line 688
    lw	$t9,8($a3)
    # Line 689
    nor	$a6,$a6,$zero
    # Line 690
    and	$a6,$a6,$a2
    # Line 691
    bnez	$a6,.L0db29934
.L0db299ac:
    # Line 695
    lw	$a1,44($sp)
    # Line 696
    lw	$a2,28084($a0)
    # Line 697
    lw	$a7,0($a1)
    # Line 698
    lw	$t9,8($a1)
    # Line 699
    nor	$a7,$a7,$zero
    # Line 700
    and	$a7,$a7,$a2
    # Line 701
    bnez	$a7,.L0db29944
.L0db299c8:
    # Line 705
    lw	$a3,44($sp)
    # Line 716
    lw	$t9,12088($a0)
    # Line 717
    lw	$a2,40($sp)
    # Line 718
    lw	$a4,16($sp)
    # Line 719
    jalr	$t9
    # Line 720
    lw	$a1,36($sp)
    # Line 724
    lw	$ra,52($sp)
    # Line 725
    nop
.L0db299e8:
    # Line 727
    jr	$ra
    # Line 728
    addiu	$sp,$sp,64
.end __glRenderFlatOneFaceTriangle

# Function: __glRenderSmoothTriangle
# Declared: Line 740 (Source lines: 740-1006)
# Address: 0x0db299f0 - 0x0db29c30 (Size: 576 bytes, Frame: 192)
.globl __glRenderSmoothTriangle
.ent __glRenderSmoothTriangle
__glRenderSmoothTriangle:
    # Line 740
    addiu	$sp,$sp,-64
    # Line 744
    lw	$t8,132($a1)
    # Line 745
    lw	$v0,132($a2)
    # Line 746
    lw	$v1,132($a3)
    # Line 747
    move	$t0,$zero
    # Line 748
    slt	$t1,$t8,$v0
    # Line 749
    beqz	$t1,.L0db29a44
    # Line 751
    slt	$t2,$v0,$v1
    # Line 752
    bnez	$t2,.L0db29a80
    # Line 756
    slt	$t3,$t8,$v1
    # Line 757
    beqz	$t3,.L0db29a30
    # Line 759
    move	$a4,$a2
    # Line 760
    move	$a2,$a3
    # Line 761
    move	$a3,$a4
    # Line 763
    b	.L0db29a80
    # Line 764
    li	$t0,1
.L0db29a30:
    # Line 768
    move	$a5,$a1
    # Line 769
    move	$a1,$a3
    # Line 770
    move	$a3,$a2
    # Line 771
    b	.L0db29a80
    # Line 772
    move	$a2,$a5
.L0db29a44:
    # Line 778
    slt	$a6,$v0,$v1
    # Line 779
    beqz	$a6,.L0db29a74
    # Line 780
    move	$a7,$a1
    # Line 782
    slt	$v0,$t8,$v1
    # Line 783
    beqz	$v0,.L0db29a68
    # Line 785
    move	$a1,$a2
    # Line 786
    move	$a2,$a7
    # Line 788
    b	.L0db29a80
    # Line 789
    li	$t0,1
.L0db29a68:
    # Line 793
    move	$a2,$a3
    # Line 794
    b	.L0db29a80
    # Line 795
    move	$a3,$a7
.L0db29a74:
    # Line 800
    move	$a1,$a3
    # Line 801
    move	$a3,$a7
    # Line 803
    li	$t0,1
.L0db29a80:
    # Line 821
    lwc1	$f4,128($a3)
    # Line 822
    lwc1	$f5,128($a1)
    # Line 823
    lwc1	$f6,128($a2)
    # Line 824
    lwc1	$f7,132($a3)
    # Line 825
    sub.s	$f8,$f5,$f4
    # Line 826
    lwc1	$f9,132($a1)
    # Line 827
    lwc1	$f10,132($a2)
    # Line 828
    sub.s	$f11,$f6,$f4
    # Line 829
    sw	$ra,52($sp)
    # Line 831
    sub.s	$f12,$f9,$f7
    # Line 832
    sw	$a0,32($sp)
    # Line 833
    sw	$a1,36($sp)
    # Line 834
    sub.s	$f13,$f10,$f7
    # Line 835
    mul.s	$f14,$f11,$f12
    # Line 836
    sw	$a2,40($sp)
    # Line 837
    swc1	$f11,30188($a0)
    # Line 841
    mul.s	$f15,$f8,$f13
    # Line 842
    sw	$a3,44($sp)
    # Line 843
    swc1	$f8,30184($a0)
    # Line 844
    swc1	$f12,30192($a0)
    # Line 845
    swc1	$f13,30196($a0)
    # Line 846
    lbu	$v1,30525($a0)
    # Line 847
    lw	$t1,30440($a0)
    # Line 848
    sub.s	$f15,$f15,$f14
    # Line 849
    nop
    # Line 850
    swc1	$f15,30180($a0)
    # Line 854
    nop
    # Line 855
    lw	$t2,30180($a0)
    # Line 857
    lw	$t3,28084($a0)
    # Line 858
    sll	$a4,$t2,0x1
    # Line 860
    sra	$a5,$t2,0x1f
    # Line 861
    sltiu	$a5,$a5,1
    # Line 867
    xor	$a6,$a5,$t0
    # Line 868
    addu	$a6,$a0,$a6
    # Line 869
    lbu	$a6,30520($a6)
    # Line 871
    beqz	$a4,.L0db29c28
    # Line 872
    sw	$a5,16($sp)
    # Line 876
    beq	$a6,$v1,.L0db29c28
    # Line 882
    andi	$t1,$t1,0x400
    # Line 883
    beqz	$t1,.L0db29b34
    # Line 886
    sll	$a7,$a6,0x2
    # Line 887
    addu	$a7,$a0,$a7
    # Line 894
    lw	$a7,28088($a7)
    # Line 895
    b	.L0db29b3c
    # Line 896
    nop
.L0db29b34:
    # Line 901
    lw	$a7,28088($a0)
    # Line 902
    li	$a6,0
.L0db29b3c:
    # Line 909
    sll	$a6,$a6,0x4
    # Line 910
    or	$t3,$t3,$a7
    # Line 911
    sw	$t3,28($sp)
    # Line 913
    addu	$t8,$a1,$a6
    # Line 914
    addiu	$t8,$t8,144
    # Line 915
    sw	$t8,4($a1)
    # Line 917
    addu	$v0,$a2,$a6
    # Line 918
    addiu	$v0,$v0,144
    # Line 919
    sw	$v0,4($a2)
    # Line 921
    addu	$v1,$a3,$a6
    # Line 922
    addiu	$v1,$v1,144
    # Line 926
    lw	$t0,0($a1)
    # Line 927
    lw	$a2,28($sp)
    # Line 928
    lw	$t9,8($a1)
    # Line 929
    nor	$t0,$t0,$zero
    # Line 930
    and	$t0,$t0,$a2
    # Line 931
    beqz	$t0,.L0db29b90
    # Line 932
    sw	$v1,4($a3)
    # Line 933
    jalr	$t9
    # Line 934
    nop
    # Line 936
    lw	$a0,32($sp)
.L0db29b90:
    # Line 939
    lw	$a1,40($sp)
    # Line 940
    lw	$a2,28($sp)
    # Line 941
    lw	$t1,0($a1)
    # Line 942
    lw	$t9,8($a1)
    # Line 943
    nor	$t1,$t1,$zero
    # Line 944
    and	$t1,$t1,$a2
    # Line 945
    beqz	$t1,.L0db29bbc
    # Line 946
    nop
    # Line 947
    jalr	$t9
    # Line 948
    nop
    # Line 950
    lw	$a0,32($sp)
.L0db29bbc:
    # Line 953
    lw	$a1,44($sp)
    # Line 954
    lw	$a2,28($sp)
    # Line 955
    lw	$t2,0($a1)
    # Line 956
    lw	$t9,8($a1)
    # Line 957
    nor	$t2,$t2,$zero
    # Line 958
    and	$t2,$t2,$a2
    # Line 959
    beqz	$t2,.L0db29be8
    # Line 960
    nop
    # Line 961
    jalr	$t9
    # Line 962
    nop
    # Line 964
    lw	$a0,32($sp)
.L0db29be8:
    # Line 980
    lw	$a1,36($sp)
    # Line 981
    lw	$t9,12088($a0)
    # Line 982
    lw	$a2,40($sp)
    # Line 983
    lw	$a4,16($sp)
    # Line 984
    jalr	$t9
    # Line 985
    lw	$a3,44($sp)
    # Line 988
    lw	$t3,36($sp)
    # Line 989
    lw	$a4,40($sp)
    # Line 990
    lw	$a5,44($sp)
    # Line 991
    lw	$ra,52($sp)
    # Line 995
    addiu	$a6,$t3,144
    # Line 996
    sw	$a6,4($t3)
    # Line 998
    addiu	$a7,$a4,144
    # Line 999
    sw	$a7,4($a4)
    # Line 1001
    addiu	$t8,$a5,144
    # Line 1002
    sw	$t8,4($a5)
.L0db29c28:
    # Line 1005
    jr	$ra
    # Line 1006
    addiu	$sp,$sp,64
.end __glRenderSmoothTriangle

# Function: __glRenderSmoothOneFaceTriangle
# Declared: Line 1019 (Source lines: 1019-1223)
# Address: 0x0db29c30 - 0x0db29e08 (Size: 472 bytes, Frame: 192)
.globl __glRenderSmoothOneFaceTriangle
.ent __glRenderSmoothOneFaceTriangle
__glRenderSmoothOneFaceTriangle:
    # Line 1019
    addiu	$sp,$sp,-64
    # Line 1023
    lw	$v0,132($a1)
    # Line 1024
    lw	$v1,132($a2)
    # Line 1025
    lw	$t0,132($a3)
    # Line 1026
    move	$t1,$zero
    # Line 1027
    slt	$t2,$v0,$v1
    # Line 1028
    beqz	$t2,.L0db29c84
    # Line 1030
    slt	$t3,$v1,$t0
    # Line 1031
    bnez	$t3,.L0db29cc0
    # Line 1035
    slt	$a4,$v0,$t0
    # Line 1036
    beqz	$a4,.L0db29c70
    # Line 1038
    move	$a5,$a2
    # Line 1039
    move	$a2,$a3
    # Line 1040
    move	$a3,$a5
    # Line 1042
    b	.L0db29cc0
    # Line 1043
    li	$t1,1
.L0db29c70:
    # Line 1047
    move	$a6,$a1
    # Line 1048
    move	$a1,$a3
    # Line 1049
    move	$a3,$a2
    # Line 1050
    b	.L0db29cc0
    # Line 1051
    move	$a2,$a6
.L0db29c84:
    # Line 1057
    slt	$a7,$v1,$t0
    # Line 1058
    beqz	$a7,.L0db29cb4
    # Line 1059
    move	$t8,$a1
    # Line 1061
    slt	$v1,$v0,$t0
    # Line 1062
    beqz	$v1,.L0db29ca8
    # Line 1064
    move	$a1,$a2
    # Line 1065
    move	$a2,$t8
    # Line 1067
    b	.L0db29cc0
    # Line 1068
    li	$t1,1
.L0db29ca8:
    # Line 1072
    move	$a2,$a3
    # Line 1073
    b	.L0db29cc0
    # Line 1074
    move	$a3,$t8
.L0db29cb4:
    # Line 1079
    move	$a1,$a3
    # Line 1080
    move	$a3,$t8
    # Line 1082
    li	$t1,1
.L0db29cc0:
    # Line 1096
    lwc1	$f16,128($a3)
    # Line 1097
    lwc1	$f17,128($a1)
    # Line 1098
    lwc1	$f18,128($a2)
    # Line 1099
    lwc1	$f19,132($a3)
    # Line 1100
    sub.s	$f0,$f17,$f16
    # Line 1101
    lwc1	$f1,132($a1)
    # Line 1102
    lwc1	$f2,132($a2)
    # Line 1103
    sub.s	$f3,$f18,$f16
    # Line 1104
    sw	$ra,52($sp)
    # Line 1106
    sub.s	$f4,$f1,$f19
    # Line 1107
    sw	$a0,32($sp)
    # Line 1108
    sw	$a1,36($sp)
    # Line 1109
    sub.s	$f5,$f2,$f19
    # Line 1110
    mul.s	$f6,$f3,$f4
    # Line 1111
    sw	$a2,40($sp)
    # Line 1112
    swc1	$f3,30188($a0)
    # Line 1116
    mul.s	$f7,$f0,$f5
    # Line 1117
    sw	$a3,44($sp)
    # Line 1118
    swc1	$f0,30184($a0)
    # Line 1119
    swc1	$f4,30192($a0)
    # Line 1120
    swc1	$f5,30196($a0)
    # Line 1121
    lbu	$a2,30525($a0)
    # Line 1122
    lw	$a3,28088($a0)
    # Line 1123
    sub.s	$f7,$f7,$f6
    # Line 1124
    nop
    # Line 1125
    swc1	$f7,30180($a0)
    # Line 1129
    nop
    # Line 1130
    lw	$t0,30180($a0)
    # Line 1132
    lw	$t2,28084($a0)
    # Line 1133
    sll	$t3,$t0,0x1
    # Line 1135
    sra	$a4,$t0,0x1f
    # Line 1136
    sltiu	$a4,$a4,1
    # Line 1142
    xor	$a5,$a4,$t1
    # Line 1143
    addu	$a5,$a0,$a5
    # Line 1144
    lbu	$a5,30520($a5)
    # Line 1145
    beqz	$t3,.L0db29e00
    # Line 1146
    sw	$a4,16($sp)
    # Line 1150
    beq	$a5,$a2,.L0db29e00
    # Line 1153
    or	$t2,$t2,$a3
    # Line 1154
    sw	$t2,28($sp)
    # Line 1158
    lw	$a6,0($a1)
    # Line 1159
    lw	$a2,28($sp)
    # Line 1160
    lw	$t9,8($a1)
    # Line 1161
    nor	$a6,$a6,$zero
    # Line 1162
    and	$a6,$a6,$a2
    # Line 1163
    beqz	$a6,.L0db29d88
    # Line 1164
    nop
    # Line 1165
    jalr	$t9
    # Line 1166
    nop
    # Line 1168
    lw	$a0,32($sp)
.L0db29d88:
    # Line 1171
    lw	$a1,40($sp)
    # Line 1172
    lw	$a2,28($sp)
    # Line 1173
    lw	$a7,0($a1)
    # Line 1174
    lw	$t9,8($a1)
    # Line 1175
    nor	$a7,$a7,$zero
    # Line 1176
    and	$a7,$a7,$a2
    # Line 1177
    beqz	$a7,.L0db29db4
    # Line 1178
    nop
    # Line 1179
    jalr	$t9
    # Line 1180
    nop
    # Line 1182
    lw	$a0,32($sp)
.L0db29db4:
    # Line 1185
    lw	$a1,44($sp)
    # Line 1186
    lw	$a2,28($sp)
    # Line 1187
    lw	$t8,0($a1)
    # Line 1188
    lw	$t9,8($a1)
    # Line 1189
    nor	$t8,$t8,$zero
    # Line 1190
    and	$t8,$t8,$a2
    # Line 1191
    beqz	$t8,.L0db29de0
    # Line 1192
    nop
    # Line 1193
    jalr	$t9
    # Line 1194
    nop
    # Line 1196
    lw	$a0,32($sp)
.L0db29de0:
    # Line 1211
    lw	$a1,36($sp)
    # Line 1212
    lw	$t9,12088($a0)
    # Line 1213
    lw	$a2,40($sp)
    # Line 1214
    lw	$a4,16($sp)
    # Line 1215
    jalr	$t9
    # Line 1216
    lw	$a3,44($sp)
    # Line 1219
    lw	$ra,52($sp)
    # Line 1220
    nop
.L0db29e00:
    # Line 1222
    jr	$ra
    # Line 1223
    addiu	$sp,$sp,64
.end __glRenderSmoothOneFaceTriangle

# Function: __glRenderSmoothOneFaceTmesh
# Declared: Line 1238 (Source lines: 1238-1469)
# Address: 0x0db29e08 - 0x0db2a024 (Size: 540 bytes, Frame: 192)
.globl __glRenderSmoothOneFaceTmesh
.ent __glRenderSmoothOneFaceTmesh
__glRenderSmoothOneFaceTmesh:
    # Line 1238
    addiu	$sp,$sp,-64
    # Line 1242
    move	$v0,$a1
    # Line 1243
    lw	$v1,132($a1)
    # Line 1244
    lw	$t0,132($a2)
    # Line 1245
    lw	$t1,132($a3)
    # Line 1246
    move	$t2,$zero
    # Line 1247
    slt	$t3,$v1,$t0
    # Line 1248
    beqz	$t3,.L0db29e60
    # Line 1250
    slt	$a4,$t0,$t1
    # Line 1251
    bnez	$a4,.L0db29e9c
    # Line 1255
    slt	$a5,$v1,$t1
    # Line 1256
    beqz	$a5,.L0db29e4c
    # Line 1258
    move	$a6,$a2
    # Line 1259
    move	$a2,$a3
    # Line 1260
    move	$a3,$a6
    # Line 1262
    b	.L0db29e9c
    # Line 1263
    li	$t2,1
.L0db29e4c:
    # Line 1267
    move	$a7,$a1
    # Line 1268
    move	$a1,$a3
    # Line 1269
    move	$a3,$a2
    # Line 1270
    b	.L0db29e9c
    # Line 1271
    move	$a2,$a7
.L0db29e60:
    # Line 1277
    slt	$t8,$t0,$t1
    # Line 1278
    beqz	$t8,.L0db29e90
    # Line 1279
    move	$t0,$a1
    # Line 1281
    slt	$t3,$v1,$t1
    # Line 1282
    beqz	$t3,.L0db29e84
    # Line 1284
    move	$a1,$a2
    # Line 1285
    move	$a2,$t0
    # Line 1287
    b	.L0db29e9c
    # Line 1288
    li	$t2,1
.L0db29e84:
    # Line 1292
    move	$a2,$a3
    # Line 1293
    b	.L0db29e9c
    # Line 1294
    move	$a3,$t0
.L0db29e90:
    # Line 1299
    move	$a1,$a3
    # Line 1300
    move	$a3,$t0
    # Line 1302
    li	$t2,1
.L0db29e9c:
    # Line 1316
    lwc1	$f8,128($a3)
    # Line 1317
    lwc1	$f9,128($a1)
    # Line 1318
    lwc1	$f10,128($a2)
    # Line 1319
    lwc1	$f11,132($a3)
    # Line 1320
    sub.s	$f12,$f9,$f8
    # Line 1321
    lwc1	$f13,132($a1)
    # Line 1322
    lwc1	$f14,132($a2)
    # Line 1323
    sub.s	$f15,$f10,$f8
    # Line 1324
    sw	$ra,52($sp)
    # Line 1326
    sub.s	$f16,$f13,$f11
    # Line 1327
    sw	$a0,32($sp)
    # Line 1328
    sw	$a1,36($sp)
    # Line 1329
    sub.s	$f17,$f14,$f11
    # Line 1330
    mul.s	$f18,$f15,$f16
    # Line 1331
    sw	$a2,40($sp)
    # Line 1332
    swc1	$f15,30188($a0)
    # Line 1336
    mul.s	$f19,$f12,$f17
    # Line 1337
    sw	$a3,44($sp)
    # Line 1338
    swc1	$f12,30184($a0)
    # Line 1339
    swc1	$f16,30192($a0)
    # Line 1340
    swc1	$f17,30196($a0)
    # Line 1341
    lbu	$a4,30525($a0)
    # Line 1342
    lw	$a5,28088($a0)
    # Line 1343
    sub.s	$f19,$f19,$f18
    # Line 1344
    nop
    # Line 1345
    swc1	$f19,30180($a0)
    # Line 1349
    nop
    # Line 1350
    lw	$a6,30180($a0)
    # Line 1352
    lw	$a7,28084($a0)
    # Line 1353
    sll	$t8,$a6,0x1
    # Line 1355
    sra	$v1,$a6,0x1f
    # Line 1356
    sltiu	$v1,$v1,1
    # Line 1362
    xor	$a2,$v1,$t2
    # Line 1363
    addu	$a2,$a0,$a2
    # Line 1364
    lbu	$a2,30520($a2)
    # Line 1365
    beqz	$t8,.L0db2a014
    # Line 1366
    sw	$v1,16($sp)
    # Line 1370
    beq	$a2,$a4,.L0db2a014
    # Line 1373
    or	$a7,$a7,$a5
    # Line 1374
    lbu	$a3,30526($a0)
    # Line 1375
    sw	$a7,28($sp)
    # Line 1377
    bnez	$a3,.L0db29f90
    # Line 1378
    lw	$t0,0($v0)
    # Line 1384
    lw	$t9,8($v0)
    # Line 1385
    nor	$t0,$t0,$zero
    # Line 1386
    and	$t0,$t0,$a7
    # Line 1387
    beqz	$t0,.L0db29f68
    # Line 1388
    move	$a1,$v0
    # Line 1389
    jalr	$t9
    # Line 1390
    move	$a2,$a7
    # Line 1392
    lw	$a0,32($sp)
.L0db29f68:
    # Line 1408
    lw	$a1,36($sp)
    # Line 1409
    lw	$t9,12088($a0)
    # Line 1410
    lw	$a2,40($sp)
    # Line 1411
    lw	$a4,16($sp)
    # Line 1412
    jalr	$t9
    # Line 1413
    lw	$a3,44($sp)
    # Line 1416
    lw	$ra,52($sp)
    # Line 1417
    addiu	$sp,$sp,64
    # Line 1418
    jr	$ra
    # Line 1419
    nop
.L0db29f90:
    # Line 1424
    lw	$t1,0($a1)
    # Line 1425
    lw	$a2,28($sp)
    # Line 1426
    lw	$t9,8($a1)
    # Line 1427
    nor	$t1,$t1,$zero
    # Line 1428
    and	$t1,$t1,$a2
    # Line 1429
    beqz	$t1,.L0db29fb8
    # Line 1430
    nop
    # Line 1431
    jalr	$t9
    # Line 1432
    nop
    # Line 1434
    lw	$a0,32($sp)
.L0db29fb8:
    # Line 1437
    lw	$a1,40($sp)
    # Line 1438
    lw	$a2,28($sp)
    # Line 1439
    lw	$t2,0($a1)
    # Line 1440
    lw	$t9,8($a1)
    # Line 1441
    nor	$t2,$t2,$zero
    # Line 1442
    and	$t2,$t2,$a2
    # Line 1443
    beqz	$t2,.L0db29fe4
    # Line 1444
    nop
    # Line 1445
    jalr	$t9
    # Line 1446
    nop
    # Line 1448
    lw	$a0,32($sp)
.L0db29fe4:
    # Line 1451
    lw	$a1,44($sp)
    # Line 1452
    lw	$a2,28($sp)
    # Line 1453
    lw	$t3,0($a1)
    # Line 1454
    lw	$t9,8($a1)
    # Line 1455
    nor	$t3,$t3,$zero
    # Line 1456
    and	$t3,$t3,$a2
    # Line 1457
    beqz	$t3,.L0db29f68
    # Line 1458
    nop
    # Line 1459
    jalr	$t9
    # Line 1460
    nop
    # Line 1462
    b	.L0db29f68
    # Line 1463
    lw	$a0,32($sp)
.L0db2a014:
    # Line 1466
    li	$a4,1
    # Line 1467
    sb	$a4,30526($a0)
    # Line 1468
    jr	$ra
    # Line 1469
    addiu	$sp,$sp,64
.end __glRenderSmoothOneFaceTmesh

