# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_vapi.ma
# Category: mips
# Compiler Options: 
# Total Functions: 12

.text

# Function: __glim_MipsVertex3fv
# Declared: Line 63 (Source lines: 63-96)
# Address: 0x0db2735c - 0x0db273cc (Size: 112 bytes, Frame: 0)
.globl __glim_MipsVertex3fv
.ent __glim_MipsVertex3fv
__glim_MipsVertex3fv:
    # Line 63
    lw	$t1,__glCurrentContext
    # Line 64
    lwc1	$f10,0($a0)
    # Line 65
    lwc1	$f12,4($a0)
    # Line 66
    lw	$t2,12696($t1)
    # Line 67
    lw	$t3,29664($t1)
    # Line 68
    lw	$a4,11988($t1)
    # Line 69
    lwc1	$f14,8($a0)
    # Line 70
    lui	$a5,0x3f80
    # Line 71
    sw	$a4,8($t2)
    # Line 72
    swc1	$f10,16($t2)
    # Line 73
    swc1	$f12,20($t2)
    # Line 74
    swc1	$f14,24($t2)
    # Line 75
    sw	$a5,28($t2)
    # Line 76
    move	$a1,$a0
    # Line 77
    lw	$t9,260($t3)
    # Line 78
    addi	$a2,$t3,176
    # Line 79
    move	$t0,$ra
    # Line 81
    jalr	$t9
    # Line 82
    addi	$a0,$t2,112
    # Line 85
    lw	$t9,11948($t1)
    # Line 86
    move	$a0,$t1
    # Line 87
    move	$a1,$t2
    # Line 89
    jalr	$t9
    # Line 90
    sw	$zero,0($t2)
    # Line 93
    lw	$t9,11928($t1)
    # Line 94
    move	$ra,$t0
    # Line 95
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 96
    nop
.end __glim_MipsVertex3fv

# Function: __glim_MipsVertex2fv
# Declared: Line 110 (Source lines: 110-141)
# Address: 0x0db273cc - 0x0db27438 (Size: 108 bytes, Frame: 0)
.globl __glim_MipsVertex2fv
.ent __glim_MipsVertex2fv
__glim_MipsVertex2fv:
    # Line 110
    lw	$t1,__glCurrentContext
    # Line 111
    lwc1	$f0,0($a0)
    # Line 112
    lwc1	$f1,4($a0)
    # Line 113
    lw	$t2,12696($t1)
    # Line 114
    lw	$t3,29664($t1)
    # Line 115
    lw	$a4,11984($t1)
    # Line 116
    lui	$a5,0x3f80
    # Line 117
    swc1	$f0,16($t2)
    # Line 118
    swc1	$f1,20($t2)
    # Line 119
    sw	$a4,8($t2)
    # Line 120
    sw	$zero,24($t2)
    # Line 121
    sw	$a5,28($t2)
    # Line 122
    move	$a1,$a0
    # Line 123
    lw	$t9,248($t3)
    # Line 124
    addi	$a2,$t3,176
    # Line 125
    move	$t0,$ra
    # Line 127
    jalr	$t9
    # Line 128
    addi	$a0,$t2,112
    # Line 130
    lw	$t9,11944($t1)
    # Line 131
    move	$a0,$t1
    # Line 132
    move	$a1,$t2
    # Line 134
    jalr	$t9
    # Line 135
    sw	$zero,0($t2)
    # Line 138
    lw	$t9,11928($t1)
    # Line 139
    move	$ra,$t0
    # Line 140
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 141
    nop
.end __glim_MipsVertex2fv

# Function: __glim_MipsVertex4fv
# Declared: Line 155 (Source lines: 155-187)
# Address: 0x0db27438 - 0x0db274a8 (Size: 112 bytes, Frame: 0)
.globl __glim_MipsVertex4fv
.ent __glim_MipsVertex4fv
__glim_MipsVertex4fv:
    # Line 155
    lw	$t1,__glCurrentContext
    # Line 156
    lwc1	$f2,0($a0)
    # Line 157
    lwc1	$f3,4($a0)
    # Line 158
    lwc1	$f4,8($a0)
    # Line 159
    lwc1	$f5,12($a0)
    # Line 160
    lw	$t2,12696($t1)
    # Line 161
    lw	$t3,29664($t1)
    # Line 162
    lw	$a4,11992($t1)
    # Line 163
    swc1	$f2,16($t2)
    # Line 164
    swc1	$f3,20($t2)
    # Line 165
    swc1	$f4,24($t2)
    # Line 166
    swc1	$f5,28($t2)
    # Line 167
    sw	$a4,8($t2)
    # Line 168
    lw	$t9,256($t3)
    # Line 169
    move	$a1,$a0
    # Line 170
    addi	$a2,$t3,176
    # Line 171
    move	$t0,$ra
    # Line 173
    jalr	$t9
    # Line 174
    addi	$a0,$t2,112
    # Line 176
    lw	$t9,11952($t1)
    # Line 177
    move	$a0,$t1
    # Line 178
    move	$a1,$t2
    # Line 180
    jalr	$t9
    # Line 181
    sw	$zero,0($t2)
    # Line 184
    lw	$t9,11928($t1)
    # Line 185
    move	$ra,$t0
    # Line 186
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 187
    nop
.end __glim_MipsVertex4fv

# Function: __glim_MipsVertex3fvFast
# Declared: Line 220 (Source lines: 220-244)
# Address: 0x0db274a8 - 0x0db274f8 (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex3fvFast
.ent __glim_MipsVertex3fvFast
__glim_MipsVertex3fvFast:
    # Line 220
    lw	$t1,__glCurrentContext
    # Line 221
    move	$t0,$ra
    # Line 222
    lw	$t2,12696($t1)
    # Line 223
    lw	$t3,29664($t1)
    # Line 224
    lw	$a4,11988($t1)
    # Line 225
    lw	$t9,252($t3)
    # Line 226
    sw	$a4,8($t2)
    # Line 227
    move	$a1,$a0
    # Line 228
    addi	$a0,$t2,112
    # Line 230
    jalr	$t9
    # Line 231
    addi	$a2,$t3,176
    # Line 233
    lw	$t9,11948($t1)
    # Line 234
    move	$a0,$t1
    # Line 235
    move	$a1,$t2
    # Line 237
    jalr	$t9
    # Line 238
    sw	$zero,0($t2)
    # Line 241
    lw	$t9,11956($t1)
    # Line 242
    move	$ra,$t0
    # Line 243
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 244
    nop
.end __glim_MipsVertex3fvFast

# Function: __glim_MipsVertex2fvFast
# Declared: Line 258 (Source lines: 258-282)
# Address: 0x0db274f8 - 0x0db27548 (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex2fvFast
.ent __glim_MipsVertex2fvFast
__glim_MipsVertex2fvFast:
    # Line 258
    lw	$t1,__glCurrentContext
    # Line 259
    move	$t0,$ra
    # Line 260
    lw	$t2,12696($t1)
    # Line 261
    lw	$t3,29664($t1)
    # Line 262
    lw	$a4,11984($t1)
    # Line 263
    lw	$t9,248($t3)
    # Line 264
    sw	$a4,8($t2)
    # Line 265
    move	$a1,$a0
    # Line 266
    addi	$a0,$t2,112
    # Line 268
    jalr	$t9
    # Line 269
    addi	$a2,$t3,176
    # Line 271
    lw	$t9,11944($t1)
    # Line 272
    move	$a0,$t1
    # Line 273
    move	$a1,$t2
    # Line 275
    jalr	$t9
    # Line 276
    sw	$zero,0($t2)
    # Line 279
    lw	$t9,11956($t1)
    # Line 280
    move	$ra,$t0
    # Line 281
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 282
    nop
.end __glim_MipsVertex2fvFast

# Function: __glim_MipsVertex4fvFast
# Declared: Line 296 (Source lines: 296-320)
# Address: 0x0db27548 - 0x0db27598 (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex4fvFast
.ent __glim_MipsVertex4fvFast
__glim_MipsVertex4fvFast:
    # Line 296
    lw	$t1,__glCurrentContext
    # Line 297
    move	$t0,$ra
    # Line 298
    lw	$t2,12696($t1)
    # Line 299
    lw	$t3,29664($t1)
    # Line 300
    lw	$a4,11992($t1)
    # Line 301
    lw	$t9,256($t3)
    # Line 302
    sw	$a4,8($t2)
    # Line 303
    move	$a1,$a0
    # Line 304
    addi	$a0,$t2,112
    # Line 306
    jalr	$t9
    # Line 307
    addi	$a2,$t3,176
    # Line 309
    lw	$t9,11952($t1)
    # Line 310
    move	$a0,$t1
    # Line 311
    move	$a1,$t2
    # Line 313
    jalr	$t9
    # Line 314
    sw	$zero,0($t2)
    # Line 317
    lw	$t9,11956($t1)
    # Line 318
    move	$ra,$t0
    # Line 319
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 320
    nop
.end __glim_MipsVertex4fvFast

# Function: __glim_MipsNoXFVertex3fv
# Declared: Line 356 (Source lines: 356-381)
# Address: 0x0db27598 - 0x0db275f0 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex3fv
.ent __glim_MipsNoXFVertex3fv
__glim_MipsNoXFVertex3fv:
    # Line 356
    lw	$t1,__glCurrentContext
    # Line 357
    lwc1	$f0,0($a0)
    # Line 358
    lwc1	$f2,4($a0)
    # Line 359
    lw	$t2,12696($t1)
    # Line 360
    lw	$t3,11988($t1)
    # Line 361
    lwc1	$f4,8($a0)
    # Line 362
    lwc1	$f6,3284($t1)
    # Line 363
    sw	$t3,8($t2)
    # Line 364
    swc1	$f0,16($t2)
    # Line 365
    swc1	$f2,20($t2)
    # Line 366
    swc1	$f4,24($t2)
    # Line 367
    swc1	$f6,28($t2)
    # Line 368
    lw	$t9,11948($t1)
    # Line 369
    move	$t0,$ra
    # Line 370
    move	$a0,$t1
    # Line 371
    move	$a1,$t2
    # Line 373
    jalr	$t9
    # Line 374
    sw	$zero,0($t2)
    # Line 378
    lw	$t9,11928($t1)
    # Line 379
    move	$ra,$t0
    # Line 380
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 381
    nop
.end __glim_MipsNoXFVertex3fv

# Function: __glim_MipsNoXFVertex2fv
# Declared: Line 395 (Source lines: 395-420)
# Address: 0x0db275f0 - 0x0db27648 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex2fv
.ent __glim_MipsNoXFVertex2fv
__glim_MipsNoXFVertex2fv:
    # Line 395
    lw	$t1,__glCurrentContext
    # Line 396
    lwc1	$f0,0($a0)
    # Line 397
    lwc1	$f2,4($a0)
    # Line 398
    lw	$t2,12696($t1)
    # Line 399
    lw	$t3,11984($t1)
    # Line 400
    lwc1	$f6,3284($t1)
    # Line 401
    sw	$t3,8($t2)
    # Line 402
    swc1	$f0,16($t2)
    # Line 403
    swc1	$f2,20($t2)
    # Line 404
    sw	$zero,24($t2)
    # Line 405
    swc1	$f6,28($t2)
    # Line 406
    mtc1	$zero,$f4
    # Line 407
    lw	$t9,11944($t1)
    # Line 408
    move	$t0,$ra
    # Line 409
    move	$a0,$t1
    # Line 410
    move	$a1,$t2
    # Line 412
    jalr	$t9
    # Line 413
    sw	$zero,0($t2)
    # Line 417
    lw	$t9,11928($t1)
    # Line 418
    move	$ra,$t0
    # Line 419
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 420
    nop
.end __glim_MipsNoXFVertex2fv

# Function: __glim_MipsNoXFVertex4fv
# Declared: Line 434 (Source lines: 434-459)
# Address: 0x0db27648 - 0x0db276a0 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex4fv
.ent __glim_MipsNoXFVertex4fv
__glim_MipsNoXFVertex4fv:
    # Line 434
    lw	$t1,__glCurrentContext
    # Line 435
    lwc1	$f0,0($a0)
    # Line 436
    lwc1	$f2,4($a0)
    # Line 437
    move	$t0,$ra
    # Line 438
    lw	$t2,12696($t1)
    # Line 439
    lw	$t3,11992($t1)
    # Line 440
    lwc1	$f4,8($a0)
    # Line 441
    lwc1	$f6,12($a0)
    # Line 442
    sw	$t3,8($t2)
    # Line 443
    swc1	$f0,16($t2)
    # Line 444
    swc1	$f2,20($t2)
    # Line 445
    swc1	$f4,24($t2)
    # Line 446
    swc1	$f6,28($t2)
    # Line 447
    lw	$t9,11952($t1)
    # Line 448
    move	$a0,$t1
    # Line 449
    move	$a1,$t2
    # Line 451
    jalr	$t9
    # Line 452
    sw	$zero,0($t2)
    # Line 456
    lw	$t9,11928($t1)
    # Line 457
    move	$ra,$t0
    # Line 458
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 459
    nop
.end __glim_MipsNoXFVertex4fv

# Function: __glim_MipsNoXFVertex3fvFast
# Declared: Line 499 (Source lines: 499-524)
# Address: 0x0db276a0 - 0x0db276f8 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex3fvFast
.ent __glim_MipsNoXFVertex3fvFast
__glim_MipsNoXFVertex3fvFast:
    # Line 499
    lw	$t1,__glCurrentContext
    # Line 500
    lwc1	$f0,0($a0)
    # Line 501
    lwc1	$f2,4($a0)
    # Line 502
    lwc1	$f4,8($a0)
    # Line 503
    lw	$t2,12696($t1)
    # Line 504
    lw	$t3,11988($t1)
    # Line 505
    lwc1	$f6,3284($t1)
    # Line 506
    swc1	$f0,16($t2)
    # Line 507
    swc1	$f2,20($t2)
    # Line 508
    swc1	$f4,24($t2)
    # Line 509
    swc1	$f6,28($t2)
    # Line 510
    sw	$t3,8($t2)
    # Line 511
    lw	$t9,11948($t1)
    # Line 512
    move	$t0,$ra
    # Line 513
    move	$a0,$t1
    # Line 514
    move	$a1,$t2
    # Line 516
    jalr	$t9
    # Line 517
    sw	$zero,0($t2)
    # Line 521
    lw	$t9,11956($t1)
    # Line 522
    move	$ra,$t0
    # Line 523
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 524
    nop
.end __glim_MipsNoXFVertex3fvFast

# Function: __glim_MipsNoXFVertex4fvFast
# Declared: Line 580 (Source lines: 580-605)
# Address: 0x0db276f8 - 0x0db27750 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex4fvFast
.ent __glim_MipsNoXFVertex4fvFast
__glim_MipsNoXFVertex4fvFast:
    # Line 580
    lw	$t1,__glCurrentContext
    # Line 581
    lwc1	$f0,0($a0)
    # Line 582
    lwc1	$f2,4($a0)
    # Line 583
    lwc1	$f4,8($a0)
    # Line 584
    lw	$t2,12696($t1)
    # Line 585
    lw	$t3,11992($t1)
    # Line 586
    lwc1	$f6,12($a0)
    # Line 587
    swc1	$f0,16($t2)
    # Line 588
    swc1	$f2,20($t2)
    # Line 589
    swc1	$f4,24($t2)
    # Line 590
    swc1	$f6,28($t2)
    # Line 591
    sw	$t3,8($t2)
    # Line 592
    lw	$t9,11952($t1)
    # Line 593
    move	$t0,$ra
    # Line 594
    move	$a0,$t1
    # Line 595
    move	$a1,$t2
    # Line 597
    jalr	$t9
    # Line 598
    sw	$zero,0($t2)
    # Line 602
    lw	$t9,11956($t1)
    # Line 603
    move	$ra,$t0
    # Line 604
    sw	$v0,12($t2)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 605
    nop
.end __glim_MipsNoXFVertex4fvFast

# Function: __glim_MipsNoXFVertex2fvFast2D
# Declared: Line 627 (Source lines: 627-701)
# Address: 0x0db27750 - 0x0db27848 (Size: 248 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex2fvFast2D
.ent __glim_MipsNoXFVertex2fvFast2D
__glim_MipsNoXFVertex2fvFast2D:
    # Line 627
    lw	$a4,__glCurrentContext
    # Line 628
    lwc1	$f6,0($a0)
    # Line 629
    lwc1	$f7,4($a0)
    # Line 630
    lw	$a1,12696($a4)
    # Line 631
    lw	$a5,11984($a4)
    # Line 632
    addiu	$a6,$a4,29752
    # Line 633
    swc1	$f6,16($a1)
    # Line 634
    swc1	$f7,20($a1)
    # Line 635
    lwc1	$f8,0($a6)
    # Line 636
    lwc1	$f9,4($a6)
    # Line 637
    sw	$a5,8($a1)
    # Line 638
    sw	$zero,0($a1)
    # Line 639
    mul.s	$f10,$f6,$f8
    # Line 640
    lwc1	$f11,48($a6)
    # Line 641
    lwc1	$f12,16($a6)
    # Line 642
    mul.s	$f13,$f6,$f9
    # Line 643
    lwc1	$f14,52($a6)
    # Line 644
    lwc1	$f15,20($a6)
    # Line 645
    mul.s	$f16,$f7,$f12
    # Line 646
    li	$v0,0
    # Line 647
    add.s	$f10,$f10,$f11
    # Line 648
    mul.s	$f17,$f7,$f15
    # Line 649
    lw	$a7,29736($a4)
    # Line 650
    add.s	$f13,$f13,$f14
    # Line 651
    lw	$t8,29744($a4)
    # Line 652
    lw	$v1,29740($a4)
    # Line 653
    add.s	$f18,$f10,$f16
    # Line 654
    move	$a0,$a4
    # Line 655
    lw	$a2,29748($a4)
    # Line 656
    add.s	$f19,$f13,$f17
    # Line 657
    mfc1	$a3,$f18
    # Line 658
    lw	$t0,4552($a4)
    # Line 659
    lw	$t9,11956($a4)
    # Line 660
    slt	$t1,$a3,$a7
    # Line 661
    mfc1	$t2,$f19
    # Line 662
    bnez	$t1,.L0db27808
    # Line 663
    slt	$t3,$a3,$t8
.L0db277e4:
    # Line 665
    beqz	$t3,.L0db27810
    # Line 666
    slt	$a4,$t2,$v1
.L0db277ec:
    # Line 668
    bnez	$a4,.L0db27818
    # Line 669
    slt	$a5,$t2,$a2
.L0db277f4:
    # Line 671
    beqz	$a5,.L0db27830
    # Line 672
    sw	$a3,128($a1)
.L0db277fc:
    # Line 674
    sw	$t2,132($a1)
    # Line 675
    sw	$v0,12($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 676
    nop
.L0db27808:
    # Line 681
    b	.L0db277e4
    # Line 682
    ori	$v0,$v0,0x1
.L0db27810:
    # Line 684
    b	.L0db277ec
    # Line 685
    ori	$v0,$v0,0x2
.L0db27818:
    # Line 687
    bnez	$t0,.L0db27828
    # Line 688
    nop
    # Line 689
    b	.L0db277f4
    # Line 690
    ori	$v0,$v0,0x4
.L0db27828:
    # Line 692
    b	.L0db277f4
    # Line 693
    ori	$v0,$v0,0x8
.L0db27830:
    # Line 695
    bnez	$t0,.L0db27840
    # Line 696
    nop
    # Line 697
    b	.L0db277fc
    # Line 698
    ori	$v0,$v0,0x8
.L0db27840:
    # Line 700
    b	.L0db277fc
    # Line 701
    ori	$v0,$v0,0x4
.end __glim_MipsNoXFVertex2fvFast2D

