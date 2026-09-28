# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_xform.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 15

.text

# Function: __glMipsXForm2_2DNRW
# Declared: Line 259 (Source lines: 259-278)
# Address: 0x0db2a384 - 0x0db2a3d4 (Size: 80 bytes, Frame: 0)
.globl __glMipsXForm2_2DNRW
.ent __glMipsXForm2_2DNRW
__glMipsXForm2_2DNRW:
    # Line 259
    lwc1	$f0,0($a1)
    # Line 260
    lwc1	$f1,0($a2)
    # Line 261
    lwc1	$f2,4($a1)
    # Line 262
    lwc1	$f3,20($a2)
    # Line 263
    mul.s	$f4,$f0,$f1
    # Line 264
    lwc1	$f5,48($a2)
    # Line 265
    lwc1	$f6,52($a2)
    # Line 266
    mul.s	$f7,$f2,$f3
    # Line 267
    lwc1	$f8,56($a2)
    # Line 268
    lui	$v0,0x3f80
    # Line 270
    nop
    nop
    # Line 271
    add.s	$f4,$f4,$f5
    # Line 272
    swc1	$f8,8($a0)
    # Line 273
    sw	$v0,12($a0)
    # Line 274
    add.s	$f7,$f7,$f6
    # Line 275
    nop
    # Line 276
    swc1	$f4,0($a0)
    # Line 277
    jr	$ra
    # Line 278
    swc1	$f7,4($a0)
.end __glMipsXForm2_2DNRW

# Function: __glMipsXForm2_2DW
# Declared: Line 295 (Source lines: 295-320)
# Address: 0x0db2a3d4 - 0x0db2a43c (Size: 104 bytes, Frame: 0)
.globl __glMipsXForm2_2DW
.ent __glMipsXForm2_2DW
__glMipsXForm2_2DW:
    # Line 295
    lwc1	$f9,0($a1)
    # Line 296
    lwc1	$f10,0($a2)
    # Line 297
    lwc1	$f11,4($a2)
    # Line 298
    lwc1	$f12,4($a1)
    # Line 299
    mul.s	$f13,$f9,$f10
    # Line 300
    lwc1	$f14,16($a2)
    # Line 301
    lwc1	$f15,48($a2)
    # Line 302
    mul.s	$f16,$f9,$f11
    # Line 303
    lwc1	$f17,20($a2)
    # Line 304
    lwc1	$f18,52($a2)
    # Line 305
    mul.s	$f14,$f12,$f14
    # Line 306
    lwc1	$f19,56($a2)
    # Line 307
    add.s	$f13,$f13,$f15
    # Line 308
    mul.s	$f17,$f12,$f17
    # Line 309
    lui	$v1,0x3f80
    # Line 310
    add.s	$f16,$f16,$f18
    # Line 311
    nop
    # Line 312
    swc1	$f19,8($a0)
    # Line 313
    add.s	$f13,$f13,$f14
    # Line 314
    nop
    # Line 315
    sw	$v1,12($a0)
    # Line 316
    add.s	$f16,$f16,$f17
    # Line 317
    nop
    # Line 318
    swc1	$f13,0($a0)
    # Line 319
    jr	$ra
    # Line 320
    swc1	$f16,4($a0)
.end __glMipsXForm2_2DW

# Function: __glMipsXForm2_W
# Declared: Line 337 (Source lines: 337-368)
# Address: 0x0db2a43c - 0x0db2a4bc (Size: 128 bytes, Frame: 0)
.globl __glMipsXForm2_W
.ent __glMipsXForm2_W
__glMipsXForm2_W:
    # Line 337
    lwc1	$f0,0($a1)
    # Line 338
    lwc1	$f1,0($a2)
    # Line 339
    lwc1	$f2,4($a2)
    # Line 340
    lwc1	$f3,4($a1)
    # Line 341
    mul.s	$f4,$f0,$f1
    # Line 342
    lwc1	$f5,16($a2)
    # Line 343
    lwc1	$f6,48($a2)
    # Line 344
    mul.s	$f7,$f0,$f2
    # Line 345
    lwc1	$f8,8($a2)
    # Line 346
    lwc1	$f9,52($a2)
    # Line 347
    mul.s	$f5,$f3,$f5
    # Line 348
    lwc1	$f10,20($a2)
    # Line 349
    add.s	$f4,$f4,$f6
    # Line 350
    mul.s	$f11,$f0,$f8
    # Line 351
    lwc1	$f12,24($a2)
    # Line 352
    add.s	$f7,$f7,$f9
    # Line 353
    mul.s	$f10,$f3,$f10
    # Line 354
    lwc1	$f13,56($a2)
    # Line 355
    add.s	$f4,$f4,$f5
    # Line 356
    mul.s	$f12,$f3,$f12
    # Line 357
    lui	$a1,0x3f80
    # Line 358
    add.s	$f11,$f11,$f13
    # Line 359
    nop
    # Line 360
    swc1	$f4,0($a0)
    # Line 361
    add.s	$f7,$f7,$f10
    # Line 362
    nop
    # Line 363
    sw	$a1,12($a0)
    # Line 364
    add.s	$f11,$f11,$f12
    # Line 365
    nop
    # Line 366
    swc1	$f7,4($a0)
    # Line 367
    jr	$ra
    # Line 368
    swc1	$f11,8($a0)
.end __glMipsXForm2_W

# Function: __glMipsXForm2
# Declared: Line 385 (Source lines: 385-423)
# Address: 0x0db2a4bc - 0x0db2a558 (Size: 156 bytes, Frame: 0)
.globl __glMipsXForm2
.ent __glMipsXForm2
__glMipsXForm2:
    # Line 385
    lwc1	$f14,0($a1)
    # Line 386
    lwc1	$f15,0($a2)
    # Line 387
    lwc1	$f16,4($a2)
    # Line 388
    lwc1	$f17,4($a1)
    # Line 389
    mul.s	$f18,$f14,$f15
    # Line 390
    lwc1	$f19,16($a2)
    # Line 391
    lwc1	$f0,48($a2)
    # Line 392
    mul.s	$f1,$f14,$f16
    # Line 393
    lwc1	$f2,20($a2)
    # Line 394
    lwc1	$f3,52($a2)
    # Line 395
    mul.s	$f19,$f17,$f19
    # Line 396
    lwc1	$f4,8($a2)
    # Line 397
    add.s	$f18,$f18,$f0
    # Line 398
    mul.s	$f2,$f17,$f2
    # Line 399
    lwc1	$f5,12($a2)
    # Line 400
    add.s	$f1,$f1,$f3
    # Line 401
    mul.s	$f6,$f14,$f4
    # Line 402
    lwc1	$f7,24($a2)
    # Line 403
    add.s	$f18,$f18,$f19
    # Line 404
    mul.s	$f8,$f14,$f5
    # Line 405
    lwc1	$f9,56($a2)
    # Line 406
    add.s	$f1,$f1,$f2
    # Line 407
    lwc1	$f10,28($a2)
    # Line 408
    mul.s	$f7,$f17,$f7
    # Line 409
    lwc1	$f11,60($a2)
    # Line 410
    add.s	$f6,$f6,$f9
    # Line 411
    mul.s	$f10,$f17,$f10
    # Line 412
    swc1	$f18,0($a0)
    # Line 413
    add.s	$f8,$f8,$f11
    # Line 414
    nop
    # Line 415
    swc1	$f1,4($a0)
    # Line 416
    add.s	$f6,$f6,$f7
    # Line 418
    nop
    nop
    # Line 419
    add.s	$f8,$f8,$f10
    # Line 420
    nop
    # Line 421
    swc1	$f6,8($a0)
    # Line 422
    jr	$ra
    # Line 423
    swc1	$f8,12($a0)
.end __glMipsXForm2

# Function: __glMipsXForm3_2DNRW
# Declared: Line 440 (Source lines: 440-462)
# Address: 0x0db2a558 - 0x0db2a5b4 (Size: 92 bytes, Frame: 0)
.globl __glMipsXForm3_2DNRW
.ent __glMipsXForm3_2DNRW
__glMipsXForm3_2DNRW:
    # Line 440
    lwc1	$f12,0($a1)
    # Line 441
    lwc1	$f13,0($a2)
    # Line 442
    lwc1	$f14,4($a1)
    # Line 443
    lwc1	$f15,20($a2)
    # Line 444
    mul.s	$f16,$f12,$f13
    # Line 445
    lwc1	$f17,8($a1)
    # Line 446
    lwc1	$f18,40($a2)
    # Line 447
    mul.s	$f19,$f14,$f15
    # Line 448
    lwc1	$f0,48($a2)
    # Line 449
    lwc1	$f1,52($a2)
    # Line 450
    mul.s	$f2,$f17,$f18
    # Line 451
    lwc1	$f3,56($a2)
    # Line 452
    add.s	$f16,$f16,$f0
    # Line 453
    lui	$a2,0x3f80
    # Line 454
    nop
    # Line 455
    add.s	$f19,$f19,$f1
    # Line 456
    nop
    # Line 457
    sw	$a2,12($a0)
    # Line 458
    add.s	$f2,$f2,$f3
    # Line 459
    swc1	$f16,0($a0)
    # Line 460
    swc1	$f19,4($a0)
    # Line 461
    jr	$ra
    # Line 462
    swc1	$f2,8($a0)
.end __glMipsXForm3_2DNRW

# Function: __glMipsXForm3_2DW
# Declared: Line 479 (Source lines: 479-508)
# Address: 0x0db2a5b4 - 0x0db2a62c (Size: 120 bytes, Frame: 0)
.globl __glMipsXForm3_2DW
.ent __glMipsXForm3_2DW
__glMipsXForm3_2DW:
    # Line 479
    lwc1	$f4,0($a1)
    # Line 480
    lwc1	$f5,0($a2)
    # Line 481
    lwc1	$f6,4($a2)
    # Line 482
    lwc1	$f7,4($a1)
    # Line 483
    mul.s	$f8,$f4,$f5
    # Line 484
    lwc1	$f9,16($a2)
    # Line 485
    lwc1	$f10,48($a2)
    # Line 486
    mul.s	$f11,$f4,$f6
    # Line 487
    lwc1	$f12,20($a2)
    # Line 488
    lwc1	$f13,52($a2)
    # Line 489
    mul.s	$f9,$f7,$f9
    # Line 490
    lwc1	$f14,40($a2)
    # Line 491
    add.s	$f8,$f8,$f10
    # Line 492
    lwc1	$f15,8($a1)
    # Line 493
    mul.s	$f12,$f7,$f12
    # Line 494
    lwc1	$f16,56($a2)
    # Line 495
    add.s	$f11,$f11,$f13
    # Line 496
    mul.s	$f17,$f15,$f14
    # Line 497
    lui	$a3,0x3f80
    # Line 498
    add.s	$f8,$f8,$f9
    # Line 500
    nop
    nop
    # Line 501
    add.s	$f11,$f11,$f12
    # Line 502
    nop
    # Line 503
    sw	$a3,12($a0)
    # Line 504
    add.s	$f17,$f17,$f16
    # Line 505
    swc1	$f8,0($a0)
    # Line 506
    swc1	$f11,4($a0)
    # Line 507
    jr	$ra
    # Line 508
    swc1	$f17,8($a0)
.end __glMipsXForm3_2DW

# Function: __glMipsXForm3_W
# Declared: Line 528 (Source lines: 528-570)
# Address: 0x0db2a62c - 0x0db2a6d8 (Size: 172 bytes, Frame: 0)
.globl __glMipsXForm3_W
.ent __glMipsXForm3_W
__glMipsXForm3_W:
    # Line 528
    lwc1	$f18,0($a1)
    # Line 529
    lwc1	$f19,0($a2)
    # Line 530
    lwc1	$f0,4($a2)
    # Line 531
    lwc1	$f1,8($a1)
    # Line 532
    mul.s	$f2,$f18,$f19
    # Line 533
    lwc1	$f3,4($a1)
    # Line 534
    lwc1	$f4,16($a2)
    # Line 535
    mul.s	$f5,$f18,$f0
    # Line 536
    lwc1	$f6,48($a2)
    # Line 537
    lwc1	$f7,20($a2)
    # Line 538
    mul.s	$f4,$f3,$f4
    # Line 539
    lwc1	$f8,52($a2)
    # Line 540
    add.s	$f2,$f2,$f6
    # Line 541
    lwc1	$f9,8($a2)
    # Line 542
    mul.s	$f7,$f3,$f7
    # Line 543
    lwc1	$f10,32($a2)
    # Line 544
    add.s	$f5,$f5,$f8
    # Line 545
    mul.s	$f11,$f18,$f9
    # Line 546
    lwc1	$f12,24($a2)
    # Line 547
    add.s	$f2,$f2,$f4
    # Line 548
    mul.s	$f10,$f1,$f10
    # Line 549
    lwc1	$f13,36($a2)
    # Line 550
    add.s	$f5,$f5,$f7
    # Line 551
    lwc1	$f14,56($a2)
    # Line 552
    mul.s	$f12,$f3,$f12
    # Line 553
    lwc1	$f15,40($a2)
    # Line 554
    add.s	$f11,$f11,$f14
    # Line 555
    mul.s	$f13,$f1,$f13
    # Line 556
    lui	$a4,0x3f80
    # Line 557
    add.s	$f2,$f2,$f10
    # Line 558
    mul.s	$f15,$f1,$f15
    # Line 559
    nop
    # Line 560
    add.s	$f11,$f11,$f12
    # Line 561
    swc1	$f2,0($a0)
    # Line 562
    nop
    # Line 563
    add.s	$f5,$f5,$f13
    # Line 564
    nop
    # Line 565
    sw	$a4,12($a0)
    # Line 566
    add.s	$f11,$f11,$f15
    # Line 567
    nop
    # Line 568
    swc1	$f5,4($a0)
    # Line 569
    jr	$ra
    # Line 570
    swc1	$f11,8($a0)
.end __glMipsXForm3_W

# Function: __glMipsXForm3AsmLink_W
# Declared: Line 587 (Source lines: 587-626)
# Address: 0x0db2a6d8 - 0x0db2a778 (Size: 160 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink_W
.ent __glMipsXForm3AsmLink_W
__glMipsXForm3AsmLink_W:
    # Line 587
    lwc1	$f16,0($a2)
    # Line 588
    lwc1	$f17,4($a2)
    # Line 589
    lwc1	$f18,16($a2)
    # Line 590
    mul.s	$f19,$f10,$f16
    # Line 591
    lwc1	$f0,48($a2)
    # Line 592
    lwc1	$f1,20($a2)
    # Line 593
    mul.s	$f2,$f10,$f17
    # Line 594
    lwc1	$f3,52($a2)
    # Line 595
    lwc1	$f4,8($a2)
    # Line 596
    mul.s	$f18,$f12,$f18
    # Line 597
    add.s	$f19,$f19,$f0
    # Line 598
    lwc1	$f5,32($a2)
    # Line 599
    mul.s	$f1,$f12,$f1
    # Line 600
    add.s	$f2,$f2,$f3
    # Line 601
    mul.s	$f6,$f10,$f4
    # Line 602
    lwc1	$f7,24($a2)
    # Line 603
    add.s	$f19,$f19,$f18
    # Line 604
    mul.s	$f5,$f14,$f5
    # Line 605
    lwc1	$f8,36($a2)
    # Line 606
    add.s	$f2,$f2,$f1
    # Line 607
    lwc1	$f9,56($a2)
    # Line 608
    mul.s	$f7,$f12,$f7
    # Line 609
    lwc1	$f10,40($a2)
    # Line 610
    add.s	$f6,$f6,$f9
    # Line 611
    mul.s	$f8,$f14,$f8
    # Line 612
    lui	$a5,0x3f80
    # Line 613
    add.s	$f19,$f19,$f5
    # Line 614
    mul.s	$f10,$f14,$f10
    # Line 615
    nop
    # Line 616
    add.s	$f6,$f6,$f7
    # Line 617
    swc1	$f19,0($a0)
    # Line 618
    nop
    # Line 619
    add.s	$f2,$f2,$f8
    # Line 620
    nop
    # Line 621
    sw	$a5,12($a0)
    # Line 622
    add.s	$f6,$f6,$f10
    # Line 623
    nop
    # Line 624
    swc1	$f2,4($a0)
    # Line 625
    jr	$ra
    # Line 626
    swc1	$f6,8($a0)
.end __glMipsXForm3AsmLink_W

# Function: __glMipsXForm3
# Declared: Line 646 (Source lines: 646-698)
# Address: 0x0db2a778 - 0x0db2a84c (Size: 212 bytes, Frame: 0)
.globl __glMipsXForm3
.ent __glMipsXForm3
__glMipsXForm3:
    # Line 646
    lwc1	$f11,0($a1)
    # Line 647
    lwc1	$f12,0($a2)
    # Line 648
    lwc1	$f13,4($a2)
    # Line 649
    lwc1	$f14,4($a1)
    # Line 650
    mul.s	$f15,$f11,$f12
    # Line 651
    lwc1	$f16,16($a2)
    # Line 652
    lwc1	$f17,48($a2)
    # Line 653
    mul.s	$f18,$f11,$f13
    # Line 654
    lwc1	$f19,20($a2)
    # Line 655
    lwc1	$f0,8($a1)
    # Line 656
    mul.s	$f16,$f14,$f16
    # Line 657
    lwc1	$f1,32($a2)
    # Line 658
    add.s	$f15,$f15,$f17
    # Line 659
    lwc1	$f2,52($a2)
    # Line 660
    mul.s	$f19,$f14,$f19
    # Line 661
    lwc1	$f3,36($a2)
    # Line 662
    add.s	$f18,$f18,$f2
    # Line 663
    mul.s	$f1,$f0,$f1
    # Line 664
    lwc1	$f4,8($a2)
    # Line 665
    add.s	$f15,$f15,$f16
    # Line 666
    mul.s	$f3,$f0,$f3
    # Line 667
    lwc1	$f5,12($a2)
    # Line 668
    add.s	$f18,$f18,$f19
    # Line 669
    mul.s	$f6,$f11,$f4
    # Line 670
    lwc1	$f7,24($a2)
    # Line 671
    add.s	$f15,$f15,$f1
    # Line 672
    mul.s	$f8,$f11,$f5
    # Line 673
    lwc1	$f9,28($a2)
    # Line 674
    add.s	$f18,$f18,$f3
    # Line 675
    lwc1	$f10,56($a2)
    # Line 676
    mul.s	$f7,$f14,$f7
    # Line 677
    lwc1	$f11,40($a2)
    # Line 678
    add.s	$f6,$f6,$f10
    # Line 679
    lwc1	$f12,60($a2)
    # Line 680
    mul.s	$f9,$f14,$f9
    # Line 681
    lwc1	$f13,44($a2)
    # Line 682
    add.s	$f8,$f8,$f12
    # Line 683
    mul.s	$f11,$f0,$f11
    # Line 684
    swc1	$f15,0($a0)
    # Line 685
    add.s	$f6,$f6,$f7
    # Line 686
    mul.s	$f13,$f0,$f13
    # Line 687
    swc1	$f18,4($a0)
    # Line 688
    add.s	$f8,$f8,$f9
    # Line 690
    nop
    nop
    # Line 691
    add.s	$f6,$f6,$f11
    # Line 693
    nop
    nop
    # Line 694
    add.s	$f8,$f8,$f13
    # Line 695
    swc1	$f6,8($a0)
    # Line 696
    nop
    # Line 697
    jr	$ra
    # Line 698
    swc1	$f8,12($a0)
.end __glMipsXForm3

# Function: __glMipsXForm3AsmLink
# Declared: Line 716 (Source lines: 716-765)
# Address: 0x0db2a84c - 0x0db2a914 (Size: 200 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink
.ent __glMipsXForm3AsmLink
__glMipsXForm3AsmLink:
    # Line 716
    lwc1	$f15,0($a2)
    # Line 717
    lwc1	$f16,4($a2)
    # Line 718
    lwc1	$f17,16($a2)
    # Line 719
    mul.s	$f18,$f10,$f15
    # Line 720
    lwc1	$f19,48($a2)
    # Line 721
    lwc1	$f0,20($a2)
    # Line 722
    mul.s	$f1,$f10,$f16
    # Line 723
    lwc1	$f2,32($a2)
    # Line 724
    lwc1	$f3,52($a2)
    # Line 725
    mul.s	$f17,$f12,$f17
    # Line 726
    add.s	$f18,$f18,$f19
    # Line 727
    lwc1	$f4,36($a2)
    # Line 728
    mul.s	$f0,$f12,$f0
    # Line 729
    add.s	$f1,$f1,$f3
    # Line 730
    lwc1	$f5,8($a2)
    # Line 731
    mul.s	$f2,$f14,$f2
    # Line 732
    add.s	$f18,$f18,$f17
    # Line 733
    lwc1	$f6,12($a2)
    # Line 734
    mul.s	$f4,$f14,$f4
    # Line 735
    add.s	$f1,$f1,$f0
    # Line 736
    mul.s	$f7,$f10,$f5
    # Line 737
    lwc1	$f8,24($a2)
    # Line 738
    add.s	$f18,$f18,$f2
    # Line 739
    mul.s	$f9,$f10,$f6
    # Line 740
    lwc1	$f10,28($a2)
    # Line 741
    add.s	$f1,$f1,$f4
    # Line 742
    lwc1	$f11,56($a2)
    # Line 743
    mul.s	$f8,$f12,$f8
    # Line 744
    lwc1	$f13,40($a2)
    # Line 745
    add.s	$f7,$f7,$f11
    # Line 746
    lwc1	$f15,60($a2)
    # Line 747
    mul.s	$f10,$f12,$f10
    # Line 748
    lwc1	$f16,44($a2)
    # Line 749
    add.s	$f9,$f9,$f15
    # Line 750
    mul.s	$f13,$f14,$f13
    # Line 751
    swc1	$f18,0($a0)
    # Line 752
    add.s	$f7,$f7,$f8
    # Line 753
    mul.s	$f16,$f14,$f16
    # Line 754
    swc1	$f1,4($a0)
    # Line 755
    add.s	$f9,$f9,$f10
    # Line 757
    nop
    nop
    # Line 758
    add.s	$f7,$f7,$f13
    # Line 760
    nop
    nop
    # Line 761
    add.s	$f9,$f9,$f16
    # Line 762
    swc1	$f7,8($a0)
    # Line 763
    nop
    # Line 764
    jr	$ra
    # Line 765
    swc1	$f9,12($a0)
.end __glMipsXForm3AsmLink

# Function: __glMipsXForm4_2DNRW
# Declared: Line 782 (Source lines: 782-812)
# Address: 0x0db2a914 - 0x0db2a990 (Size: 124 bytes, Frame: 0)
.globl __glMipsXForm4_2DNRW
.ent __glMipsXForm4_2DNRW
__glMipsXForm4_2DNRW:
    # Line 782
    lwc1	$f17,0($a1)
    # Line 783
    lwc1	$f18,0($a2)
    # Line 784
    lwc1	$f19,12($a1)
    # Line 785
    lwc1	$f0,48($a2)
    # Line 786
    mul.s	$f1,$f17,$f18
    # Line 787
    lwc1	$f2,4($a1)
    # Line 788
    lwc1	$f3,20($a2)
    # Line 789
    mul.s	$f0,$f19,$f0
    # Line 790
    lwc1	$f4,52($a2)
    # Line 791
    swc1	$f19,12($a0)
    # Line 792
    mul.s	$f5,$f2,$f3
    # Line 793
    lwc1	$f6,8($a1)
    # Line 794
    lwc1	$f7,40($a2)
    # Line 795
    mul.s	$f4,$f19,$f4
    # Line 796
    lwc1	$f8,56($a2)
    # Line 797
    add.s	$f1,$f1,$f0
    # Line 798
    mul.s	$f9,$f6,$f7
    # Line 800
    nop
    nop
    # Line 801
    mul.s	$f8,$f19,$f8
    # Line 802
    swc1	$f1,0($a0)
    # Line 803
    add.s	$f5,$f5,$f4
    # Line 806
    nop
    nop
    nop
    # Line 807
    swc1	$f5,4($a0)
    # Line 808
    add.s	$f9,$f9,$f8
    # Line 810
    nop
    nop
    # Line 811
    jr	$ra
    # Line 812
    swc1	$f9,8($a0)
.end __glMipsXForm4_2DNRW

# Function: __glMipsXForm4_2DW
# Declared: Line 830 (Source lines: 830-866)
# Address: 0x0db2a990 - 0x0db2aa24 (Size: 148 bytes, Frame: 0)
.globl __glMipsXForm4_2DW
.ent __glMipsXForm4_2DW
__glMipsXForm4_2DW:
    # Line 830
    lwc1	$f10,0($a1)
    # Line 831
    lwc1	$f11,0($a2)
    # Line 832
    lwc1	$f12,4($a1)
    # Line 833
    lwc1	$f13,16($a2)
    # Line 834
    mul.s	$f14,$f10,$f11
    # Line 835
    lwc1	$f15,4($a2)
    # Line 836
    nop
    # Line 837
    mul.s	$f13,$f12,$f13
    # Line 838
    lwc1	$f16,20($a2)
    # Line 839
    nop
    # Line 840
    mul.s	$f17,$f10,$f15
    # Line 841
    lwc1	$f18,12($a1)
    # Line 842
    lwc1	$f19,48($a2)
    # Line 843
    mul.s	$f16,$f12,$f16
    # Line 844
    lwc1	$f0,52($a2)
    # Line 845
    add.s	$f14,$f14,$f13
    # Line 846
    mul.s	$f19,$f18,$f19
    # Line 847
    lwc1	$f1,8($a1)
    # Line 848
    lwc1	$f2,40($a2)
    # Line 849
    mul.s	$f0,$f18,$f0
    # Line 850
    lwc1	$f3,56($a2)
    # Line 851
    add.s	$f17,$f17,$f16
    # Line 852
    mul.s	$f4,$f1,$f2
    # Line 853
    swc1	$f18,12($a0)
    # Line 854
    add.s	$f14,$f14,$f19
    # Line 855
    mul.s	$f3,$f18,$f3
    # Line 856
    nop
    # Line 857
    add.s	$f17,$f17,$f0
    # Line 858
    swc1	$f14,0($a0)
    # Line 861
    nop
    nop
    nop
    # Line 862
    add.s	$f4,$f4,$f3
    # Line 863
    swc1	$f17,4($a0)
    # Line 864
    nop
    # Line 865
    jr	$ra
    # Line 866
    swc1	$f4,8($a0)
.end __glMipsXForm4_2DW

# Function: __glMipsXForm4_W
# Declared: Line 888 (Source lines: 888-935)
# Address: 0x0db2aa24 - 0x0db2aae4 (Size: 192 bytes, Frame: 0)
.globl __glMipsXForm4_W
.ent __glMipsXForm4_W
__glMipsXForm4_W:
    # Line 888
    lwc1	$f5,0($a1)
    # Line 889
    lwc1	$f6,0($a2)
    # Line 890
    lwc1	$f7,4($a1)
    # Line 891
    lwc1	$f8,16($a2)
    # Line 892
    mul.s	$f9,$f5,$f6
    # Line 893
    mfc1	$a6,$f21
    # Line 894
    lwc1	$f10,4($a2)
    # Line 895
    mul.s	$f8,$f7,$f8
    # Line 896
    lwc1	$f11,20($a2)
    # Line 897
    mul.s	$f12,$f5,$f10
    # Line 898
    lwc1	$f13,8($a1)
    # Line 899
    lwc1	$f14,32($a2)
    # Line 900
    mul.s	$f11,$f7,$f11
    # Line 901
    lwc1	$f15,36($a2)
    # Line 902
    add.s	$f9,$f9,$f8
    # Line 903
    mul.s	$f14,$f13,$f14
    # Line 904
    lwc1	$f16,12($a1)
    # Line 905
    lwc1	$f17,8($a2)
    # Line 906
    mul.s	$f15,$f13,$f15
    # Line 907
    lwc1	$f18,24($a2)
    # Line 908
    add.s	$f12,$f12,$f11
    # Line 909
    mul.s	$f19,$f5,$f17
    # Line 910
    lwc1	$f0,48($a2)
    # Line 911
    add.s	$f9,$f9,$f14
    # Line 912
    mul.s	$f18,$f7,$f18
    # Line 913
    lwc1	$f1,40($a2)
    # Line 914
    add.s	$f12,$f12,$f15
    # Line 915
    mul.s	$f0,$f16,$f0
    # Line 916
    nop
    # Line 917
    lwc1	$f2,52($a2)
    # Line 918
    mul.s	$f1,$f13,$f1
    # Line 919
    lwc1	$f3,56($a2)
    # Line 920
    add.s	$f19,$f19,$f18
    # Line 921
    mul.s	$f2,$f16,$f2
    # Line 922
    nop
    # Line 923
    add.s	$f9,$f9,$f0
    # Line 924
    mul.s	$f3,$f16,$f3
    # Line 925
    nop
    # Line 926
    add.s	$f19,$f19,$f1
    # Line 927
    mtc1	$a6,$f21
    # Line 928
    add.s	$f12,$f12,$f2
    # Line 929
    swc1	$f16,12($a0)
    # Line 930
    nop
    # Line 931
    add.s	$f19,$f19,$f3
    # Line 932
    swc1	$f9,0($a0)
    # Line 933
    swc1	$f12,4($a0)
    # Line 934
    jr	$ra
    # Line 935
    swc1	$f19,8($a0)
.end __glMipsXForm4_W

# Function: __glMipsXForm4
# Declared: Line 957 (Source lines: 957-1021)
# Address: 0x0db2aae4 - 0x0db2abd4 (Size: 240 bytes, Frame: 0)
.globl __glMipsXForm4
.ent __glMipsXForm4
__glMipsXForm4:
    # Line 957
    lwc1	$f4,0($a1)
    # Line 958
    lwc1	$f5,0($a2)
    # Line 959
    lwc1	$f6,4($a1)
    # Line 960
    lwc1	$f7,16($a2)
    # Line 961
    mul.s	$f8,$f4,$f5
    # Line 962
    lwc1	$f9,4($a2)
    # Line 963
    mfc1	$a7,$f21
    # Line 964
    mul.s	$f7,$f6,$f7
    # Line 965
    lwc1	$f10,20($a2)
    # Line 966
    lwc1	$f11,8($a1)
    # Line 967
    mul.s	$f12,$f4,$f9
    # Line 968
    lwc1	$f13,32($a2)
    # Line 969
    lwc1	$f14,36($a2)
    # Line 970
    mul.s	$f10,$f6,$f10
    # Line 971
    add.s	$f8,$f8,$f7
    # Line 972
    mul.s	$f13,$f11,$f13
    # Line 973
    lwc1	$f15,48($a2)
    # Line 974
    lwc1	$f16,12($a1)
    # Line 975
    mul.s	$f14,$f11,$f14
    # Line 976
    lwc1	$f17,52($a2)
    # Line 977
    add.s	$f12,$f12,$f10
    # Line 978
    mul.s	$f15,$f16,$f15
    # Line 979
    lwc1	$f18,8($a2)
    # Line 980
    add.s	$f8,$f8,$f13
    # Line 981
    mul.s	$f17,$f16,$f17
    # Line 982
    lwc1	$f19,24($a2)
    # Line 983
    add.s	$f12,$f12,$f14
    # Line 984
    mul.s	$f0,$f4,$f18
    # Line 985
    lwc1	$f1,12($a2)
    # Line 986
    add.s	$f8,$f8,$f15
    # Line 987
    mul.s	$f19,$f6,$f19
    # Line 988
    lwc1	$f2,28($a2)
    # Line 989
    add.s	$f12,$f12,$f17
    # Line 990
    mul.s	$f3,$f4,$f1
    # Line 991
    lwc1	$f4,40($a2)
    # Line 992
    swc1	$f8,0($a0)
    # Line 993
    mul.s	$f2,$f6,$f2
    # Line 994
    lwc1	$f5,44($a2)
    # Line 995
    add.s	$f0,$f0,$f19
    # Line 996
    mul.s	$f4,$f11,$f4
    # Line 997
    lwc1	$f6,56($a2)
    # Line 998
    swc1	$f12,4($a0)
    # Line 999
    mul.s	$f5,$f11,$f5
    # Line 1000
    lwc1	$f7,60($a2)
    # Line 1001
    add.s	$f3,$f3,$f2
    # Line 1002
    mul.s	$f6,$f16,$f6
    # Line 1003
    nop
    # Line 1009
    add.s	$f8,$f0,$f4
    # Line 1010
    mul.s	$f7,$f16,$f7
    # Line 1011
    nop
    # Line 1012
    add.s	$f9,$f3,$f5
    # Line 1013
    mtc1	$a7,$f21
    # Line 1014
    add.s	$f8,$f8,$f6
    # Line 1016
    nop
    nop
    # Line 1017
    add.s	$f9,$f9,$f7
    # Line 1018
    swc1	$f8,8($a0)
    # Line 1019
    nop
    # Line 1020
    jr	$ra
    # Line 1021
    swc1	$f9,12($a0)
.end __glMipsXForm4

# Function: __glMipsMultMatrix
# Declared: Line 1043 (Source lines: 1042-1107)
# Address: 0x0db2abd4 - 0x0db2ac9c (Size: 200 bytes, Frame: 0)
.globl __glMipsMultMatrix
.ent __glMipsMultMatrix
__glMipsMultMatrix:
    # Line 1043
    bne	$a0,$a2,.L0db2ac60
    # Line 1042
    addiu	$sp,$sp,-64
    # Line 1046
    lwc1	$f10,0($a2)
    # Line 1047
    lwc1	$f11,8($a2)
    # Line 1048
    lwc1	$f12,16($a2)
    # Line 1049
    lwc1	$f13,24($a2)
    # Line 1050
    lwc1	$f14,32($a2)
    # Line 1051
    lwc1	$f15,40($a2)
    # Line 1052
    lwc1	$f16,48($a2)
    # Line 1053
    lwc1	$f17,56($a2)
    # Line 1054
    swc1	$f10,0($sp)
    # Line 1055
    swc1	$f11,8($sp)
    # Line 1056
    swc1	$f12,16($sp)
    # Line 1057
    swc1	$f13,24($sp)
    # Line 1058
    swc1	$f14,32($sp)
    # Line 1059
    swc1	$f15,40($sp)
    # Line 1060
    swc1	$f16,48($sp)
    # Line 1061
    swc1	$f17,56($sp)
    # Line 1062
    lwc1	$f18,4($a2)
    # Line 1063
    lwc1	$f19,12($a2)
    # Line 1064
    lwc1	$f0,20($a2)
    # Line 1065
    lwc1	$f1,28($a2)
    # Line 1066
    lwc1	$f2,36($a2)
    # Line 1067
    lwc1	$f3,44($a2)
    # Line 1068
    lwc1	$f4,52($a2)
    # Line 1069
    lwc1	$f5,60($a2)
    # Line 1078
    move	$a2,$sp
    # Line 1070
    swc1	$f18,4($sp)
    # Line 1071
    swc1	$f19,12($sp)
    # Line 1072
    swc1	$f0,20($sp)
    # Line 1073
    swc1	$f1,28($sp)
    # Line 1074
    swc1	$f2,36($sp)
    # Line 1075
    swc1	$f3,44($sp)
    # Line 1076
    swc1	$f4,52($sp)
    # Line 1077
    swc1	$f5,60($sp)
.L0db2ac60:
    # Line 1086
    move	$t0,$ra
    # Line 1087
    bal	__glMipsXForm4
    nop
    # Line 1090
    addi	$a0,$a0,16
    # Line 1092
    bal	__glMipsXForm4
    # Line 1091
    addi	$a1,$a1,16
    # Line 1095
    addi	$a0,$a0,16
    # Line 1097
    bal	__glMipsXForm4
    # Line 1096
    addi	$a1,$a1,16
    # Line 1100
    addi	$a0,$a0,16
    # Line 1102
    bal	__glMipsXForm4
    # Line 1101
    addi	$a1,$a1,16
    # Line 1105
    move	$ra,$t0
    # Line 1107
    jr	$ra
    # Line 1106
    addiu	$sp,$sp,64
.end __glMipsMultMatrix

