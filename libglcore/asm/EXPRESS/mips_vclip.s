# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_vclip.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 6

.text

# Function: __glMipsClipCheckFrustum
# Declared: Line 198 (Source lines: 198-283)
# Address: 0x0db2a024 - 0x0db2a100 (Size: 220 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum
.ent __glMipsClipCheckFrustum
__glMipsClipCheckFrustum:
    # Line 198
    lwc1	$f0,124($a1)
    # Line 199
    lwc1	$f1,112($a1)
    # Line 200
    lwc1	$f2,3284($a0)
    # Line 201
    neg.s	$f3,$f0
    # Line 202
    lwc1	$f4,1624($a0)
    # Line 203
    c.lt.s	$f1,$f3
    # Line 204
    move	$v0,$zero
    # Line 205
    lwc1	$f5,116($a1)
    # Line 206
    mul.s	$f6,$f1,$f4
    # Line 207
    bc1t	.L0db2a0d0
    # Line 208
    c.le.s	$f1,$f0
.L0db2a050:
    # Line 211
    lwc1	$f7,1632($a0)
    # Line 212
    lwc1	$f8,120($a1)
    # Line 213
    bc1f	.L0db2a0d8
    # Line 214
    c.lt.s	$f5,$f3
.L0db2a060:
    # Line 217
    lwc1	$f9,1640($a0)
    # Line 218
    div.s	$f10,$f2,$f0
    # Line 219
    mul.s	$f11,$f5,$f7
    # Line 220
    bc1t	.L0db2a0e0
    # Line 221
    c.le.s	$f5,$f0
.L0db2a074:
    # Line 224
    lwc1	$f12,1628($a0)
    # Line 225
    mul.s	$f13,$f8,$f9
    # Line 226
    bc1f	.L0db2a0e8
    # Line 227
    c.lt.s	$f8,$f3
.L0db2a084:
    # Line 233
    mul.s	$f6,$f6,$f10
    # Line 234
    bc1t	.L0db2a0f0
    # Line 235
    c.le.s	$f8,$f0
.L0db2a090:
    # Line 238
    mul.s	$f11,$f11,$f10
    # Line 239
    lwc1	$f14,1636($a0)
    # Line 240
    bc1f	.L0db2a0f8
    # Line 241
    mul.s	$f13,$f13,$f10
.L0db2a0a0:
    # Line 244
    bnez	$v0,.L0db2a0c8
    # Line 245
    add.s	$f6,$f6,$f12
    # Line 246
    lwc1	$f15,1644($a0)
    # Line 248
    add.s	$f11,$f11,$f14
    # Line 249
    swc1	$f6,128($a1)
    # Line 251
    add.s	$f13,$f13,$f15
    # Line 252
    swc1	$f11,132($a1)
    # Line 253
    swc1	$f10,140($a1)
    # Line 255
    jr	$ra
    # Line 256
    swc1	$f13,136($a1)
.L0db2a0c8:
    # Line 258
    jr	$ra
    # Line 259
    swc1	$f10,140($a1)
.L0db2a0d0:
    # Line 262
    b	.L0db2a050
    # Line 263
    ori	$v0,$v0,0x1
.L0db2a0d8:
    # Line 266
    b	.L0db2a060
    # Line 267
    ori	$v0,$v0,0x2
.L0db2a0e0:
    # Line 270
    b	.L0db2a074
    # Line 271
    ori	$v0,$v0,0x4
.L0db2a0e8:
    # Line 274
    b	.L0db2a084
    # Line 275
    ori	$v0,$v0,0x8
.L0db2a0f0:
    # Line 278
    b	.L0db2a090
    # Line 279
    ori	$v0,$v0,0x10
.L0db2a0f8:
    # Line 282
    b	.L0db2a0a0
    # Line 283
    ori	$v0,$v0,0x20
.end __glMipsClipCheckFrustum

# Function: __glMipsClipCheckFrustum_W
# Declared: Line 301 (Source lines: 301-374)
# Address: 0x0db2a100 - 0x0db2a1c8 (Size: 200 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum_W
.ent __glMipsClipCheckFrustum_W
__glMipsClipCheckFrustum_W:
    # Line 301
    lui	$v1,0x3f80
    # Line 302
    lw	$a2,112($a1)
    # Line 303
    lw	$a3,116($a1)
    # Line 304
    lwc1	$f16,120($a1)
    # Line 305
    mtc1	$v1,$f17
    # Line 306
    mtc1	$a2,$f18
    # Line 307
    mtc1	$a3,$f19
    # Line 308
    neg.s	$f0,$f17
    # Line 309
    move	$v0,$zero
    # Line 310
    lwc1	$f1,1624($a0)
    # Line 311
    lwc1	$f2,1632($a0)
    # Line 312
    lwc1	$f3,1640($a0)
    # Line 313
    lwc1	$f4,1628($a0)
    # Line 314
    c.lt.s	$f18,$f0
    # Line 315
    lwc1	$f5,1636($a0)
    # Line 316
    mul.s	$f18,$f18,$f1
    # Line 317
    bc1t	.L0db2a1a0
    # Line 318
    c.lt.s	$f19,$f0
.L0db2a148:
    # Line 321
    mul.s	$f19,$f19,$f2
    # Line 322
    bc1t	.L0db2a1a8
    # Line 323
    c.lt.s	$f16,$f0
.L0db2a154:
    # Line 326
    mul.s	$f6,$f16,$f3
    # Line 327
    bc1t	.L0db2a1b8
    # Line 328
    add.s	$f18,$f18,$f4
.L0db2a160:
    # Line 331
    slt	$a4,$v1,$a2
    # Line 332
    bnez	$a4,.L0db2a198
    # Line 333
    add.s	$f19,$f19,$f5
.L0db2a16c:
    # Line 336
    lwc1	$f7,1644($a0)
    # Line 337
    slt	$a5,$v1,$a3
    # Line 338
    c.le.s	$f16,$f17
    # Line 339
    bnez	$a5,.L0db2a1b0
    # Line 340
    add.s	$f6,$f6,$f7
.L0db2a180:
    # Line 343
    swc1	$f18,128($a1)
    # Line 344
    bc1f	.L0db2a1c0
.L0db2a188:
    # Line 347
    swc1	$f19,132($a1)
    # Line 348
    sw	$v1,140($a1)
    # Line 349
    jr	$ra
    # Line 350
    swc1	$f6,136($a1)
.L0db2a198:
    # Line 353
    b	.L0db2a16c
    # Line 354
    ori	$v0,$v0,0x2
.L0db2a1a0:
    # Line 357
    b	.L0db2a148
    # Line 358
    ori	$v0,$v0,0x1
.L0db2a1a8:
    # Line 361
    b	.L0db2a154
    # Line 362
    ori	$v0,$v0,0x4
.L0db2a1b0:
    # Line 365
    b	.L0db2a180
    # Line 366
    ori	$v0,$v0,0x8
.L0db2a1b8:
    # Line 369
    b	.L0db2a160
    # Line 370
    ori	$v0,$v0,0x10
.L0db2a1c0:
    # Line 373
    b	.L0db2a188
    # Line 374
    ori	$v0,$v0,0x20
.end __glMipsClipCheckFrustum_W

# Function: __glMipsClipCheckFrustum2D
# Declared: Line 395 (Source lines: 395-444)
# Address: 0x0db2a1c8 - 0x0db2a264 (Size: 156 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum2D
.ent __glMipsClipCheckFrustum2D
__glMipsClipCheckFrustum2D:
    # Line 395
    lwc1	$f8,3284($a0)
    # Line 396
    lwc1	$f9,112($a1)
    # Line 397
    lwc1	$f10,116($a1)
    # Line 398
    neg.s	$f11,$f8
    # Line 399
    c.le.s	$f9,$f8
    # Line 400
    li	$v0,15
    # Line 401
    lwc1	$f12,1624($a0)
    # Line 402
    bc1f	.L0db2a1f0
    # Line 403
    c.lt.s	$f9,$f11
    # Line 404
    xori	$v0,$v0,0x2
.L0db2a1f0:
    # Line 407
    mul.s	$f9,$f9,$f12
    # Line 408
    bc1t	.L0db2a200
    # Line 409
    c.lt.s	$f10,$f11
    # Line 410
    xori	$v0,$v0,0x1
.L0db2a200:
    # Line 413
    lwc1	$f13,1632($a0)
    # Line 414
    bc1t	.L0db2a210
    # Line 415
    c.le.s	$f10,$f8
    # Line 416
    xori	$v0,$v0,0x4
.L0db2a210:
    # Line 419
    mul.s	$f10,$f10,$f13
    # Line 420
    bc1f	.L0db2a220
    # Line 421
    lwc1	$f14,120($a1)
    # Line 422
    xori	$v0,$v0,0x8
.L0db2a220:
    # Line 425
    lwc1	$f15,1640($a0)
    # Line 426
    lwc1	$f16,1628($a0)
    # Line 427
    lwc1	$f17,1636($a0)
    # Line 428
    mul.s	$f14,$f14,$f15
    # Line 429
    add.s	$f9,$f9,$f16
    # Line 430
    lwc1	$f18,1644($a0)
    # Line 431
    bnez	$v0,.L0db2a25c
    # Line 432
    add.s	$f10,$f10,$f17
    # Line 433
    swc1	$f9,128($a1)
    # Line 434
    nop
    # Line 435
    add.s	$f14,$f14,$f18
    # Line 436
    swc1	$f10,132($a1)
    # Line 437
    swc1	$f8,140($a1)
    # Line 439
    jr	$ra
    # Line 440
    swc1	$f14,136($a1)
.L0db2a25c:
    # Line 443
    jr	$ra
    # Line 444
    swc1	$f8,140($a1)
.end __glMipsClipCheckFrustum2D

# Function: __glMipsClipCheckAll2
# Declared: Line 468 (Source lines: 468-492)
# Address: 0x0db2a264 - 0x0db2a2c4 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll2
.ent __glMipsClipCheckAll2
__glMipsClipCheckAll2:
    # Line 468
    addiu	$sp,$sp,-48
    # Line 472
    # sd	gp,8(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,-10748
    daddu	$gp,$gp,$t9
    # Line 482
    # lw $t9, -26108($gp) # &__glClipCheckAll2
    # Line 474
    sw	$ra,44($sp)
    # Line 475
    sw	$t3,36($sp)
    # Line 476
    sw	$t2,32($sp)
    # Line 477
    sw	$t1,28($sp)
    # Line 478
    sw	$t0,24($sp)
    # Line 479
    sw	$a1,20($sp)
    # Line 482
    jal	__glClipCheckAll2
    # Line 480
    sw	$a0,16($sp)
    # Line 483
    lw	$ra,44($sp)
    # Line 484
    lw	$t3,36($sp)
    # Line 485
    lw	$t2,32($sp)
    # Line 486
    lw	$t1,28($sp)
    # Line 487
    lw	$t0,24($sp)
    # Line 488
    lw	$a1,20($sp)
    # Line 489
    lw	$a0,16($sp)
    # Line 490
    # ld	gp,8(sp)
    # Line 492
    jr	$ra
    # Line 491
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll2

# Function: __glMipsClipCheckAll3
# Declared: Line 501 (Source lines: 501-525)
# Address: 0x0db2a2c4 - 0x0db2a324 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll3
.ent __glMipsClipCheckAll3
__glMipsClipCheckAll3:
    # Line 501
    addiu	$sp,$sp,-48
    # Line 505
    # sd	gp,8(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,-10844
    daddu	$gp,$gp,$t9
    # Line 515
    # lw $t9, -26104($gp) # &__glClipCheckAll3
    # Line 507
    sw	$ra,44($sp)
    # Line 508
    sw	$t3,36($sp)
    # Line 509
    sw	$t2,32($sp)
    # Line 510
    sw	$t1,28($sp)
    # Line 511
    sw	$t0,24($sp)
    # Line 512
    sw	$a1,20($sp)
    # Line 515
    jal	__glClipCheckAll3
    # Line 513
    sw	$a0,16($sp)
    # Line 516
    lw	$ra,44($sp)
    # Line 517
    lw	$t3,36($sp)
    # Line 518
    lw	$t2,32($sp)
    # Line 519
    lw	$t1,28($sp)
    # Line 520
    lw	$t0,24($sp)
    # Line 521
    lw	$a1,20($sp)
    # Line 522
    lw	$a0,16($sp)
    # Line 523
    # ld	gp,8(sp)
    # Line 525
    jr	$ra
    # Line 524
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll3

# Function: __glMipsClipCheckAll
# Declared: Line 534 (Source lines: 534-558)
# Address: 0x0db2a324 - 0x0db2a384 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll
.ent __glMipsClipCheckAll
__glMipsClipCheckAll:
    # Line 534
    addiu	$sp,$sp,-48
    # Line 538
    # sd	gp,8(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,-10940
    daddu	$gp,$gp,$t9
    # Line 548
    # lw $t9, -26100($gp) # &__glClipCheckAll
    # Line 540
    sw	$ra,44($sp)
    # Line 541
    sw	$t3,36($sp)
    # Line 542
    sw	$t2,32($sp)
    # Line 543
    sw	$t1,28($sp)
    # Line 544
    sw	$t0,24($sp)
    # Line 545
    sw	$a1,20($sp)
    # Line 548
    jal	__glClipCheckAll
    # Line 546
    sw	$a0,16($sp)
    # Line 549
    lw	$ra,44($sp)
    # Line 550
    lw	$t3,36($sp)
    # Line 551
    lw	$t2,32($sp)
    # Line 552
    lw	$t1,28($sp)
    # Line 553
    lw	$t0,24($sp)
    # Line 554
    lw	$a1,20($sp)
    # Line 555
    lw	$a0,16($sp)
    # Line 556
    # ld	gp,8(sp)
    # Line 558
    jr	$ra
    # Line 557
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll

