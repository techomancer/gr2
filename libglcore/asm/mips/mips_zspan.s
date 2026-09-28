# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_zspan.ma
# Category: mips
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glDepthTestSpan_asm
# Declared: Line 41 (Source lines: 41-591)
# Address: 0x0db28ab0 - 0x0db28e60 (Size: 944 bytes, Frame: 0)
.globl __glDepthTestSpan_asm
.ent __glDepthTestSpan_asm
__glDepthTestSpan_asm:
    # Line 41
    addiu	$sp,$sp,-32
    # Line 42
    sw	$s0,28($sp)
    # Line 43
    sw	$s1,24($sp)
    # Line 48
    lw	$v1,31320($a0)
    # Line 50
    lw	$t3,30328($a0)
    # Line 54
    lw	$a3,30252($a0)
    # Line 47
    lw	$v0,30208($a0)
    # Line 49
    lw	$a1,31312($a0)
    # Line 52
    lw	$a2,30332($a0)
    # Line 53
    lw	$t2,30444($a0)
    # Line 55
    lw	$a7,12244($a0)
    # Line 56
    lw	$s0,30476($a0)
    # Line 59
    move	$t8,$ra
    # Line 62
    move	$a6,$zero
    # Line 51
    srav	$t3,$t3,$v1
    # Line 61
    move	$t9,$a3
.L0db28af0:
    # Line 67
    beqz	$t9,.L0db28b48
    # Line 68
    move	$s1,$t9
    # Line 70
    sltiu	$at,$s1,33
    bnez	$at,.L0db28b08
    # Line 71
    move	$a4,$zero
    # Line 72
    li	$s1,32
.L0db28b08:
    # Line 75
    sub	$t9,$t9,$s1
    # Line 76
    srlv	$t0,$v0,$v1
    # Line 77
    addu	$t0,$t0,$a1
    # Line 78
    lui	$a5,0x8000
.L0db28b18:
    # Line 81
    blez	$s1,.L0db28b34
    # Line 84
    lw	$t1,0($t2)
    # Line 85
    jalr	$a7
    # Line 86
    addi	$s1,$s1,-1
    # Line 92
    addiu	$t2,$t2,4
    # Line 95
    b	.L0db28b18
    # Line 94
    srl	$a5,$a5,0x1
.L0db28b34:
    # Line 97
    nor	$a4,$a4,$zero
    # Line 98
    sw	$a4,0($s0)
    # Line 99
    addi	$s0,$s0,4
    # Line 101
    b	.L0db28af0
    # Line 100
    addu	$v0,$v0,$a2
.L0db28b48:
    # Line 106
    lw	$s1,24($sp)
    # Line 107
    lw	$s0,28($sp)
    # Line 111
    bnez	$a6,.L0db28b60
    # Line 108
    addiu	$sp,$sp,32
    # Line 115
    jr	$t8
    # Line 114
    li	$v0,0
.L0db28b60:
    # Line 119
    beq	$a6,$a3,.L0db28b70
    nop
    # Line 121
    jr	$t8
    # Line 120
    li	$v0,1
.L0db28b70:
    # Line 125
    li	$v0,1
    # Line 127
    jr	$t8
    # Line 126
    sb	$v0,30480($a0)
    # Line 147
    addi	$a6,$a6,1
    # Line 148
    addu	$t0,$t0,$t3
    # Line 149
    jr	$ra
    # Line 150
    or	$a4,$a4,$a5
    # Line 159
    sltu	$at,$t1,$t0
    bnez	$at,.L0db28ba4
    # Line 160
    nop
    # Line 163
    sw	$t0,0($t2)
    # Line 164
    jr	$ra
    # Line 165
    addu	$t0,$t0,$t3
.L0db28ba4:
    # Line 169
    addi	$a6,$a6,1
    # Line 170
    addu	$t0,$t0,$t3
    # Line 171
    jr	$ra
    # Line 172
    or	$a4,$a4,$a5
    # Line 181
    slt	$at,$t1,$t0
    bnez	$at,.L0db28bcc
    # Line 182
    nop
    # Line 185
    sw	$t0,0($t2)
    # Line 186
    jr	$ra
    # Line 187
    addu	$t0,$t0,$t3
.L0db28bcc:
    # Line 191
    addi	$a6,$a6,1
    # Line 192
    addu	$t0,$t0,$t3
    # Line 193
    jr	$ra
    # Line 194
    or	$a4,$a4,$a5
    # Line 203
    sltu	$at,$t0,$t1
    beqz	$at,.L0db28bf4
    # Line 204
    nop
    # Line 207
    sw	$t0,0($t2)
    # Line 208
    jr	$ra
    # Line 209
    addu	$t0,$t0,$t3
.L0db28bf4:
    # Line 213
    addi	$a6,$a6,1
    # Line 214
    addu	$t0,$t0,$t3
    # Line 215
    jr	$ra
    # Line 216
    or	$a4,$a4,$a5
    # Line 225
    slt	$at,$t0,$t1
    beqz	$at,.L0db28c1c
    # Line 226
    nop
    # Line 229
    sw	$t0,0($t2)
    # Line 230
    jr	$ra
    # Line 231
    addu	$t0,$t0,$t3
.L0db28c1c:
    # Line 235
    addi	$a6,$a6,1
    # Line 236
    addu	$t0,$t0,$t3
    # Line 237
    jr	$ra
    # Line 238
    or	$a4,$a4,$a5
    # Line 247
    bne	$t0,$t1,.L0db28c40
    # Line 248
    nop
    # Line 251
    sw	$t0,0($t2)
    # Line 252
    jr	$ra
    # Line 253
    addu	$t0,$t0,$t3
.L0db28c40:
    # Line 257
    addi	$a6,$a6,1
    # Line 258
    addu	$t0,$t0,$t3
    # Line 259
    jr	$ra
    # Line 260
    or	$a4,$a4,$a5
    # Line 269
    sltu	$at,$t1,$t0
    beqz	$at,.L0db28c68
    # Line 270
    nop
    # Line 273
    sw	$t0,0($t2)
    # Line 274
    jr	$ra
    # Line 275
    addu	$t0,$t0,$t3
.L0db28c68:
    # Line 279
    addi	$a6,$a6,1
    # Line 280
    addu	$t0,$t0,$t3
    # Line 281
    jr	$ra
    # Line 282
    or	$a4,$a4,$a5
    # Line 291
    slt	$at,$t1,$t0
    beqz	$at,.L0db28c90
    # Line 292
    nop
    # Line 295
    sw	$t0,0($t2)
    # Line 296
    jr	$ra
    # Line 297
    addu	$t0,$t0,$t3
.L0db28c90:
    # Line 301
    addi	$a6,$a6,1
    # Line 302
    addu	$t0,$t0,$t3
    # Line 303
    jr	$ra
    # Line 304
    or	$a4,$a4,$a5
    # Line 313
    beq	$t0,$t1,.L0db28cb4
    # Line 314
    nop
    # Line 317
    sw	$t0,0($t2)
    # Line 318
    jr	$ra
    # Line 319
    addu	$t0,$t0,$t3
.L0db28cb4:
    # Line 323
    addi	$a6,$a6,1
    # Line 324
    addu	$t0,$t0,$t3
    # Line 325
    jr	$ra
    # Line 326
    or	$a4,$a4,$a5
    # Line 335
    sltu	$at,$t0,$t1
    bnez	$at,.L0db28cdc
    # Line 336
    nop
    # Line 339
    sw	$t0,0($t2)
    # Line 340
    jr	$ra
    # Line 341
    addu	$t0,$t0,$t3
.L0db28cdc:
    # Line 345
    addi	$a6,$a6,1
    # Line 346
    addu	$t0,$t0,$t3
    # Line 347
    jr	$ra
    # Line 348
    or	$a4,$a4,$a5
    # Line 357
    slt	$at,$t0,$t1
    bnez	$at,.L0db28d04
    # Line 358
    nop
    # Line 361
    sw	$t0,0($t2)
    # Line 362
    jr	$ra
    # Line 363
    addu	$t0,$t0,$t3
.L0db28d04:
    # Line 367
    addi	$a6,$a6,1
    # Line 368
    addu	$t0,$t0,$t3
    # Line 369
    jr	$ra
    # Line 370
    or	$a4,$a4,$a5
    # Line 379
    sw	$t0,0($t2)
    # Line 380
    jr	$ra
    # Line 381
    addu	$t0,$t0,$t3
    # Line 390
    sltu	$at,$t1,$t0
    bnez	$at,.L0db28d34
    # Line 391
    addu	$t0,$t0,$t3
    # Line 394
    jr	$ra
    # Line 395
    nop
.L0db28d34:
    # Line 399
    addi	$a6,$a6,1
    # Line 400
    jr	$ra
    # Line 401
    or	$a4,$a4,$a5
    # Line 410
    slt	$at,$t1,$t0
    bnez	$at,.L0db28d54
    # Line 411
    addu	$t0,$t0,$t3
    # Line 414
    jr	$ra
    # Line 415
    nop
.L0db28d54:
    # Line 419
    addi	$a6,$a6,1
    # Line 420
    jr	$ra
    # Line 421
    or	$a4,$a4,$a5
    # Line 430
    sltu	$at,$t0,$t1
    beqz	$at,.L0db28d74
    # Line 431
    addu	$t0,$t0,$t3
    # Line 434
    jr	$ra
    # Line 435
    nop
.L0db28d74:
    # Line 439
    addi	$a6,$a6,1
    # Line 440
    jr	$ra
    # Line 441
    or	$a4,$a4,$a5
    # Line 450
    slt	$at,$t0,$t1
    beqz	$at,.L0db28d94
    # Line 451
    addu	$t0,$t0,$t3
    # Line 454
    jr	$ra
    # Line 455
    nop
.L0db28d94:
    # Line 459
    addi	$a6,$a6,1
    # Line 460
    jr	$ra
    # Line 461
    or	$a4,$a4,$a5
    # Line 470
    bne	$t0,$t1,.L0db28db0
    # Line 471
    addu	$t0,$t0,$t3
    # Line 474
    jr	$ra
    # Line 475
    nop
.L0db28db0:
    # Line 479
    addi	$a6,$a6,1
    # Line 480
    jr	$ra
    # Line 481
    or	$a4,$a4,$a5
    # Line 490
    sltu	$at,$t1,$t0
    beqz	$at,.L0db28dd0
    # Line 491
    addu	$t0,$t0,$t3
    # Line 494
    jr	$ra
    # Line 495
    nop
.L0db28dd0:
    # Line 499
    addi	$a6,$a6,1
    # Line 500
    jr	$ra
    # Line 501
    or	$a4,$a4,$a5
    # Line 510
    slt	$at,$t1,$t0
    beqz	$at,.L0db28df0
    # Line 511
    addu	$t0,$t0,$t3
    # Line 514
    jr	$ra
    # Line 515
    nop
.L0db28df0:
    # Line 519
    addi	$a6,$a6,1
    # Line 520
    jr	$ra
    # Line 521
    or	$a4,$a4,$a5
    # Line 530
    beq	$t0,$t1,.L0db28e0c
    # Line 531
    addu	$t0,$t0,$t3
    # Line 534
    jr	$ra
    # Line 535
    nop
.L0db28e0c:
    # Line 539
    addi	$a6,$a6,1
    # Line 540
    jr	$ra
    # Line 541
    or	$a4,$a4,$a5
    # Line 550
    sltu	$at,$t0,$t1
    bnez	$at,.L0db28e2c
    # Line 551
    addu	$t0,$t0,$t3
    # Line 554
    jr	$ra
    # Line 555
    nop
.L0db28e2c:
    # Line 559
    addi	$a6,$a6,1
    # Line 560
    jr	$ra
    # Line 561
    or	$a4,$a4,$a5
    # Line 570
    slt	$at,$t0,$t1
    bnez	$at,.L0db28e4c
    # Line 571
    addu	$t0,$t0,$t3
    # Line 574
    jr	$ra
    # Line 575
    nop
.L0db28e4c:
    # Line 579
    addi	$a6,$a6,1
    # Line 580
    jr	$ra
    # Line 581
    or	$a4,$a4,$a5
    # Line 590
    jr	$ra
    # Line 591
    addu	$t0,$t0,$t3
.end __glDepthTestSpan_asm

# Function: __glDepthTestStippledSpan_asm
# Declared: Line 609 (Source lines: 609-698)
# Address: 0x0db28e60 - 0x0db28f44 (Size: 228 bytes, Frame: 0)
.globl __glDepthTestStippledSpan_asm
.ent __glDepthTestStippledSpan_asm
__glDepthTestStippledSpan_asm:
    # Line 609
    addiu	$sp,$sp,-32
    # Line 610
    sw	$s0,28($sp)
    # Line 611
    sw	$s1,24($sp)
    # Line 617
    lw	$t9,31320($a0)
    # Line 620
    lw	$t3,30328($a0)
    # Line 623
    lw	$a1,30252($a0)
    # Line 616
    lw	$t8,30208($a0)
    # Line 618
    lw	$v0,31312($a0)
    # Line 619
    lw	$t2,30444($a0)
    # Line 622
    lw	$v1,30332($a0)
    # Line 624
    lw	$a2,12244($a0)
    # Line 625
    lw	$a3,30476($a0)
    # Line 628
    move	$a7,$ra
    # Line 631
    move	$a6,$zero
    # Line 621
    srav	$t3,$t3,$t9
    # Line 630
    move	$s0,$a1
.L0db28ea0:
    # Line 634
    beqz	$s0,.L0db28f24
    nop
    # Line 636
    move	$s1,$s0
    # Line 638
    sltiu	$at,$s1,33
    bnez	$at,.L0db28ebc
    nop
    # Line 640
    li	$s1,32
.L0db28ebc:
    # Line 644
    srlv	$t0,$t8,$t9
    # Line 643
    sub	$s0,$s0,$s1
    # Line 645
    addu	$t0,$t0,$v0
    # Line 647
    lw	$a0,0($a3)
    # Line 648
    move	$a4,$zero
    # Line 650
    lui	$a5,0x8000
.L0db28ed4:
    # Line 653
    addi	$s1,$s1,-1
    # Line 654
    bltz	$s1,.L0db28f0c
    nop
    # Line 656
    and	$t1,$a0,$a5
    # Line 657
    bnez	$t1,.L0db28ef8
    nop
    # Line 660
    addu	$t0,$t0,$t3
    # Line 662
    b	.L0db28f00
    # Line 661
    addi	$a6,$a6,1
.L0db28ef8:
    # Line 666
    jalr	$a2
    # Line 665
    lw	$t1,0($t2)
.L0db28f00:
    # Line 671
    addiu	$t2,$t2,4
    # Line 674
    b	.L0db28ed4
    # Line 672
    srl	$a5,$a5,0x1
.L0db28f0c:
    # Line 676
    nor	$a4,$a4,$zero
    # Line 677
    and	$a4,$a4,$a0
    # Line 678
    sw	$a4,0($a3)
    # Line 679
    addi	$a3,$a3,4
    # Line 681
    b	.L0db28ea0
    # Line 680
    addu	$t8,$t8,$v1
.L0db28f24:
    # Line 686
    lw	$s1,24($sp)
    # Line 687
    lw	$s0,28($sp)
    # Line 691
    beq	$a6,$a1,.L0db28f3c
    # Line 688
    addiu	$sp,$sp,32
    # Line 693
    jr	$a7
    # Line 692
    li	$v0,0
.L0db28f3c:
    # Line 698
    jr	$a7
    # Line 697
    li	$v0,1
.end __glDepthTestStippledSpan_asm

# Function: __glDepthTestStencilSpan_asm
# Declared: Line 714 (Source lines: 714-838)
# Address: 0x0db28f44 - 0x0db29070 (Size: 300 bytes, Frame: 0)
.globl __glDepthTestStencilSpan_asm
.ent __glDepthTestStencilSpan_asm
__glDepthTestStencilSpan_asm:
    # Line 714
    addiu	$sp,$sp,-32
    # Line 715
    sw	$s0,28($sp)
    # Line 716
    sw	$s1,24($sp)
    # Line 717
    sw	$s2,20($sp)
    # Line 718
    sw	$s3,16($sp)
    # Line 719
    sw	$s4,12($sp)
    # Line 724
    lw	$s0,31320($a0)
    # Line 730
    lw	$t3,30328($a0)
    # Line 733
    lw	$t9,30252($a0)
    # Line 723
    lw	$a7,30208($a0)
    # Line 725
    lw	$s1,31312($a0)
    # Line 726
    lw	$t2,30444($a0)
    # Line 727
    lw	$s2,30456($a0)
    # Line 728
    lw	$s3,31192($a0)
    # Line 729
    lw	$s4,31196($a0)
    # Line 732
    lw	$t8,30332($a0)
    # Line 734
    lw	$v0,12244($a0)
    # Line 735
    lw	$v1,30476($a0)
    # Line 738
    move	$a1,$ra
    # Line 741
    move	$a6,$zero
    # Line 731
    srav	$t3,$t3,$s0
    # Line 740
    move	$a2,$t9
.L0db28f9c:
    # Line 744
    beqz	$a2,.L0db29030
    nop
    # Line 746
    move	$a3,$a2
    # Line 748
    sltiu	$at,$a3,33
    bnez	$at,.L0db28fb8
    nop
    # Line 750
    li	$a3,32
.L0db28fb8:
    # Line 754
    srlv	$t0,$a7,$s0
    # Line 753
    sub	$a2,$a2,$a3
    # Line 755
    addu	$t0,$t0,$s1
    # Line 756
    move	$a4,$zero
    # Line 757
    lui	$a5,0x8000
.L0db28fcc:
    # Line 760
    addi	$a3,$a3,-1
    # Line 761
    bltz	$a3,.L0db2901c
    nop
    # Line 764
    jalr	$v0
    # Line 763
    lw	$t1,0($t2)
    # Line 773
    and	$at,$a4,$a5
    # Line 774
    beqz	$at,.L0db28ffc
    # Line 771
    lbu	$t1,0($s2)
    # Line 779
    move	$at,$s3
    # Line 780
    add	$at,$at,$t1
    # Line 782
    b	.L0db29008
    # Line 781
    lbu	$t1,0($at)
.L0db28ffc:
    # Line 787
    move	$at,$s4
    # Line 788
    add	$at,$at,$t1
    # Line 789
    lbu	$t1,0($at)
.L0db29008:
    # Line 793
    sb	$t1,0($s2)
    # Line 795
    addiu	$t2,$t2,4
    # Line 796
    addiu	$s2,$s2,1
    # Line 799
    b	.L0db28fcc
    # Line 797
    srl	$a5,$a5,0x1
.L0db2901c:
    # Line 801
    nor	$a4,$a4,$zero
    # Line 802
    sw	$a4,0($v1)
    # Line 803
    addi	$v1,$v1,4
    # Line 805
    b	.L0db28f9c
    # Line 804
    addu	$a7,$a7,$t8
.L0db29030:
    # Line 811
    lw	$s4,12($sp)
    # Line 812
    lw	$s3,16($sp)
    # Line 813
    lw	$s2,20($sp)
    # Line 814
    lw	$s1,24($sp)
    # Line 815
    lw	$s0,28($sp)
    # Line 819
    bnez	$a6,.L0db29054
    # Line 816
    addiu	$sp,$sp,32
    # Line 823
    jr	$a1
    # Line 822
    li	$v0,0
.L0db29054:
    # Line 828
    beq	$a6,$t9,.L0db29064
    nop
    # Line 832
    jr	$a1
    # Line 831
    li	$v0,1
.L0db29064:
    # Line 836
    li	$v0,1
    # Line 838
    jr	$a1
    # Line 837
    sw	$v0,30480($a0)
.end __glDepthTestStencilSpan_asm

# Function: __glDepthTestStencilStippledSpan_asm
# Declared: Line 854 (Source lines: 854-980)
# Address: 0x0db29070 - 0x0db291a8 (Size: 312 bytes, Frame: 0)
.globl __glDepthTestStencilStippledSpan_asm
.ent __glDepthTestStencilStippledSpan_asm
__glDepthTestStencilStippledSpan_asm:
    # Line 854
    addiu	$sp,$sp,-32
    # Line 855
    sw	$s0,28($sp)
    # Line 856
    sw	$s1,24($sp)
    # Line 857
    sw	$s2,20($sp)
    # Line 858
    sw	$s3,16($sp)
    # Line 859
    sw	$s4,12($sp)
    # Line 864
    lw	$s0,31320($a0)
    # Line 870
    lw	$t3,30328($a0)
    # Line 873
    lw	$t9,30252($a0)
    # Line 863
    lw	$a7,30208($a0)
    # Line 865
    lw	$s1,31312($a0)
    # Line 866
    lw	$t2,30444($a0)
    # Line 867
    lw	$s2,30456($a0)
    # Line 868
    lw	$s3,31192($a0)
    # Line 869
    lw	$s4,31196($a0)
    # Line 872
    lw	$t8,30332($a0)
    # Line 874
    lw	$v0,12244($a0)
    # Line 875
    lw	$v1,30476($a0)
    # Line 878
    move	$a0,$ra
    # Line 881
    move	$a6,$zero
    # Line 871
    srav	$t3,$t3,$s0
    # Line 880
    move	$a1,$t9
.L0db290c8:
    # Line 884
    beqz	$a1,.L0db2917c
    nop
    # Line 886
    move	$a2,$a1
    # Line 888
    sltiu	$at,$a2,33
    bnez	$at,.L0db290e4
    nop
    # Line 890
    li	$a2,32
.L0db290e4:
    # Line 894
    srlv	$t0,$a7,$s0
    # Line 893
    sub	$a1,$a1,$a2
    # Line 895
    addu	$t0,$t0,$s1
    # Line 896
    lw	$a3,0($v1)
    # Line 897
    move	$a4,$zero
    # Line 898
    lui	$a5,0x8000
.L0db290fc:
    # Line 901
    addi	$a2,$a2,-1
    # Line 902
    bltz	$a2,.L0db29164
    nop
    # Line 904
    and	$t1,$a3,$a5
    # Line 905
    bnez	$t1,.L0db29120
    nop
    # Line 908
    addu	$t0,$t0,$t3
    # Line 910
    b	.L0db29154
    # Line 909
    addi	$a6,$a6,1
.L0db29120:
    # Line 914
    jalr	$v0
    # Line 913
    lw	$t1,0($t2)
    # Line 923
    and	$at,$a4,$a5
    # Line 924
    beqz	$at,.L0db29144
    # Line 921
    lbu	$t1,0($s2)
    # Line 929
    move	$at,$s3
    # Line 930
    add	$at,$at,$t1
    # Line 932
    b	.L0db29150
    # Line 931
    lbu	$t1,0($at)
.L0db29144:
    # Line 937
    move	$at,$s4
    # Line 938
    add	$at,$at,$t1
    # Line 939
    lbu	$t1,0($at)
.L0db29150:
    # Line 943
    sb	$t1,0($s2)
.L0db29154:
    # Line 946
    addiu	$t2,$t2,4
    # Line 947
    addiu	$s2,$s2,1
    # Line 950
    b	.L0db290fc
    # Line 948
    srl	$a5,$a5,0x1
.L0db29164:
    # Line 952
    nor	$a4,$a4,$zero
    # Line 953
    and	$a4,$a4,$a3
    # Line 954
    sw	$a4,0($v1)
    # Line 955
    addi	$v1,$v1,4
    # Line 957
    b	.L0db290c8
    # Line 956
    addu	$a7,$a7,$t8
.L0db2917c:
    # Line 963
    lw	$s4,12($sp)
    # Line 964
    lw	$s3,16($sp)
    # Line 965
    lw	$s2,20($sp)
    # Line 966
    lw	$s1,24($sp)
    # Line 967
    lw	$s0,28($sp)
    # Line 972
    beq	$a6,$t9,.L0db291a0
    # Line 968
    addiu	$sp,$sp,32
    # Line 975
    jr	$a0
    # Line 974
    li	$v0,0
.L0db291a0:
    # Line 980
    jr	$a0
    # Line 979
    li	$v0,1
.end __glDepthTestStencilStippledSpan_asm

