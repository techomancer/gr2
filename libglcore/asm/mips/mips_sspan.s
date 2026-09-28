# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_sspan.ma
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glStencilTestSpan_asm
# Declared: Line 73 (Source lines: 71-531)
# Address: 0x0db26da4 - 0x0db2735c (Size: 1464 bytes, Frame: 0)
.globl __glStencilTestSpan_asm
.ent __glStencilTestSpan_asm
__glStencilTestSpan_asm:
    # Line 73
    lw	$a1,30252($a0)
    # Line 71
    lw	$v0,30456($a0)
    # Line 72
    lw	$v1,30476($a0)
    # Line 74
    lw	$a2,31184($a0)
    # Line 75
    lw	$a3,31188($a0)
    # Line 77
    move	$t0,$zero
    # Line 78
    addi	$t1,$zero,-1
    # Line 80
    li	$t3,0
    # Line 79
    move	$t2,$a1
.L0db26dc8:
    # Line 84
    beqz	$t2,.L0db27330
    # Line 83
    move	$a4,$t2
    # Line 87
    sltiu	$at,$a4,33
    bnez	$at,.L0db26de4
    # Line 86
    move	$a5,$zero
    # Line 89
    b	.L0db26e14
    # Line 88
    addi	$t2,$t2,-32
.L0db26de4:
    # Line 102
    la	$at,sub_0db30000
    # Line 96
    addi	$a6,$a4,-1
    # Line 101
    sll	$t8,$a6,0x2
    # Line 102
    addu	$at,$at,$t8
    lw	$t8,-20616($at)
    # Line 94
    li	$t3,32
    # Line 95
    sub	$t3,$t3,$a4
    # Line 98
    lbu	$a7,0($v0)
    # Line 103
    daddu	$t8,$t8,$gp
    # Line 92
    sub	$t2,$t2,$a4
    # Line 104
    jr	$t8
    # Line 99
    sub	$v0,$v0,$t3
.L0db26e14:
    # Line 114
    lbu	$t9,0($v0)
    # Line 118
    lbu	$a7,1($v0)
    # Line 115
    add	$a4,$a2,$t9
    # Line 116
    lbu	$a6,0($a4)
    # Line 117
    add	$t8,$t9,$a3
    # Line 119
    bnez	$a6,.L0db26e40
    nop
    # Line 122
    lbu	$t9,0($t8)
    # Line 123
    ori	$a5,$a5,0x8000
    # Line 124
    addi	$t0,$t0,1
    # Line 125
    sb	$t9,0($v0)
.L0db26e40:
    # Line 128
    add	$a4,$a2,$a7
    # Line 129
    lbu	$a6,0($a4)
    # Line 130
    add	$t8,$a7,$a3
    # Line 131
    lbu	$a7,2($v0)
    # Line 132
    bnez	$a6,.L0db26e68
    nop
    # Line 135
    lbu	$t9,0($t8)
    # Line 136
    ori	$a5,$a5,0x4000
    # Line 137
    addi	$t0,$t0,1
    # Line 138
    sb	$t9,1($v0)
.L0db26e68:
    # Line 140
    add	$a4,$a2,$a7
    # Line 141
    lbu	$a6,0($a4)
    # Line 142
    add	$t8,$a7,$a3
    # Line 143
    lbu	$a7,3($v0)
    # Line 144
    bnez	$a6,.L0db26e90
    nop
    # Line 147
    lbu	$t9,0($t8)
    # Line 148
    ori	$a5,$a5,0x2000
    # Line 149
    addi	$t0,$t0,1
    # Line 150
    sb	$t9,2($v0)
.L0db26e90:
    # Line 152
    add	$a4,$a2,$a7
    # Line 153
    lbu	$a6,0($a4)
    # Line 154
    add	$t8,$a7,$a3
    # Line 155
    lbu	$a7,4($v0)
    # Line 156
    bnez	$a6,.L0db26eb8
    nop
    # Line 159
    lbu	$t9,0($t8)
    # Line 160
    ori	$a5,$a5,0x1000
    # Line 161
    addi	$t0,$t0,1
    # Line 162
    sb	$t9,3($v0)
.L0db26eb8:
    # Line 164
    add	$a4,$a2,$a7
    # Line 165
    lbu	$a6,0($a4)
    # Line 166
    add	$t8,$a7,$a3
    # Line 167
    lbu	$a7,5($v0)
    # Line 168
    bnez	$a6,.L0db26ee0
    nop
    # Line 171
    lbu	$t9,0($t8)
    # Line 172
    ori	$a5,$a5,0x800
    # Line 173
    addi	$t0,$t0,1
    # Line 174
    sb	$t9,4($v0)
.L0db26ee0:
    # Line 176
    add	$a4,$a2,$a7
    # Line 177
    lbu	$a6,0($a4)
    # Line 178
    add	$t8,$a7,$a3
    # Line 179
    lbu	$a7,6($v0)
    # Line 180
    bnez	$a6,.L0db26f08
    nop
    # Line 183
    lbu	$t9,0($t8)
    # Line 184
    ori	$a5,$a5,0x400
    # Line 185
    addi	$t0,$t0,1
    # Line 186
    sb	$t9,5($v0)
.L0db26f08:
    # Line 188
    add	$a4,$a2,$a7
    # Line 189
    lbu	$a6,0($a4)
    # Line 190
    add	$t8,$a7,$a3
    # Line 191
    lbu	$a7,7($v0)
    # Line 192
    bnez	$a6,.L0db26f30
    nop
    # Line 195
    lbu	$t9,0($t8)
    # Line 196
    ori	$a5,$a5,0x200
    # Line 197
    addi	$t0,$t0,1
    # Line 198
    sb	$t9,6($v0)
.L0db26f30:
    # Line 200
    add	$a4,$a2,$a7
    # Line 201
    lbu	$a6,0($a4)
    # Line 202
    add	$t8,$a7,$a3
    # Line 203
    lbu	$a7,8($v0)
    # Line 204
    bnez	$a6,.L0db26f58
    nop
    # Line 207
    lbu	$t9,0($t8)
    # Line 208
    ori	$a5,$a5,0x100
    # Line 209
    addi	$t0,$t0,1
    # Line 210
    sb	$t9,7($v0)
.L0db26f58:
    # Line 212
    add	$a4,$a2,$a7
    # Line 213
    lbu	$a6,0($a4)
    # Line 214
    add	$t8,$a7,$a3
    # Line 215
    lbu	$a7,9($v0)
    # Line 216
    bnez	$a6,.L0db26f80
    nop
    # Line 219
    lbu	$t9,0($t8)
    # Line 220
    ori	$a5,$a5,0x80
    # Line 221
    addi	$t0,$t0,1
    # Line 222
    sb	$t9,8($v0)
.L0db26f80:
    # Line 224
    add	$a4,$a2,$a7
    # Line 225
    lbu	$a6,0($a4)
    # Line 226
    add	$t8,$a7,$a3
    # Line 227
    lbu	$a7,10($v0)
    # Line 228
    bnez	$a6,.L0db26fa8
    nop
    # Line 231
    lbu	$t9,0($t8)
    # Line 232
    ori	$a5,$a5,0x40
    # Line 233
    addi	$t0,$t0,1
    # Line 234
    sb	$t9,9($v0)
.L0db26fa8:
    # Line 236
    add	$a4,$a2,$a7
    # Line 237
    lbu	$a6,0($a4)
    # Line 238
    add	$t8,$a7,$a3
    # Line 239
    lbu	$a7,11($v0)
    # Line 240
    bnez	$a6,.L0db26fd0
    nop
    # Line 243
    lbu	$t9,0($t8)
    # Line 244
    ori	$a5,$a5,0x20
    # Line 245
    addi	$t0,$t0,1
    # Line 246
    sb	$t9,10($v0)
.L0db26fd0:
    # Line 248
    add	$a4,$a2,$a7
    # Line 249
    lbu	$a6,0($a4)
    # Line 250
    add	$t8,$a7,$a3
    # Line 251
    lbu	$a7,12($v0)
    # Line 252
    bnez	$a6,.L0db26ff8
    nop
    # Line 255
    lbu	$t9,0($t8)
    # Line 256
    ori	$a5,$a5,0x10
    # Line 257
    addi	$t0,$t0,1
    # Line 258
    sb	$t9,11($v0)
.L0db26ff8:
    # Line 260
    add	$a4,$a2,$a7
    # Line 261
    lbu	$a6,0($a4)
    # Line 262
    add	$t8,$a7,$a3
    # Line 263
    lbu	$a7,13($v0)
    # Line 264
    bnez	$a6,.L0db27020
    nop
    # Line 267
    lbu	$t9,0($t8)
    # Line 268
    ori	$a5,$a5,0x8
    # Line 269
    addi	$t0,$t0,1
    # Line 270
    sb	$t9,12($v0)
.L0db27020:
    # Line 272
    add	$a4,$a2,$a7
    # Line 273
    lbu	$a6,0($a4)
    # Line 274
    add	$t8,$a7,$a3
    # Line 275
    lbu	$a7,14($v0)
    # Line 276
    bnez	$a6,.L0db27048
    nop
    # Line 279
    lbu	$t9,0($t8)
    # Line 280
    ori	$a5,$a5,0x4
    # Line 281
    addi	$t0,$t0,1
    # Line 282
    sb	$t9,13($v0)
.L0db27048:
    # Line 284
    add	$a4,$a2,$a7
    # Line 285
    lbu	$a6,0($a4)
    # Line 286
    add	$t8,$a7,$a3
    # Line 287
    lbu	$a7,15($v0)
    # Line 288
    bnez	$a6,.L0db27070
    nop
    # Line 291
    lbu	$t9,0($t8)
    # Line 292
    ori	$a5,$a5,0x2
    # Line 293
    addi	$t0,$t0,1
    # Line 294
    sb	$t9,14($v0)
.L0db27070:
    # Line 296
    add	$a4,$a2,$a7
    # Line 297
    lbu	$a6,0($a4)
    # Line 298
    add	$t8,$a7,$a3
    # Line 299
    lbu	$a7,16($v0)
    # Line 300
    bnez	$a6,.L0db27098
    nop
    # Line 303
    lbu	$t9,0($t8)
    # Line 304
    ori	$a5,$a5,0x1
    # Line 305
    addi	$t0,$t0,1
    # Line 306
    sb	$t9,15($v0)
.L0db27098:
    # Line 310
    sll	$a5,$a5,0x10
    # Line 313
    add	$a4,$a2,$a7
    # Line 314
    lbu	$a6,0($a4)
    # Line 315
    add	$t8,$a7,$a3
    # Line 316
    lbu	$a7,17($v0)
    # Line 317
    bnez	$a6,.L0db270c4
    nop
    # Line 320
    lbu	$t9,0($t8)
    # Line 321
    ori	$a5,$a5,0x8000
    # Line 322
    addi	$t0,$t0,1
    # Line 323
    sb	$t9,16($v0)
.L0db270c4:
    # Line 325
    add	$a4,$a2,$a7
    # Line 326
    lbu	$a6,0($a4)
    # Line 327
    add	$t8,$a7,$a3
    # Line 328
    lbu	$a7,18($v0)
    # Line 329
    bnez	$a6,.L0db270ec
    nop
    # Line 332
    lbu	$t9,0($t8)
    # Line 333
    ori	$a5,$a5,0x4000
    # Line 334
    addi	$t0,$t0,1
    # Line 335
    sb	$t9,17($v0)
.L0db270ec:
    # Line 337
    add	$a4,$a2,$a7
    # Line 338
    lbu	$a6,0($a4)
    # Line 339
    add	$t8,$a7,$a3
    # Line 340
    lbu	$a7,19($v0)
    # Line 341
    bnez	$a6,.L0db27114
    nop
    # Line 344
    lbu	$t9,0($t8)
    # Line 345
    ori	$a5,$a5,0x2000
    # Line 346
    addi	$t0,$t0,1
    # Line 347
    sb	$t9,18($v0)
.L0db27114:
    # Line 349
    add	$a4,$a2,$a7
    # Line 350
    lbu	$a6,0($a4)
    # Line 351
    add	$t8,$a7,$a3
    # Line 352
    lbu	$a7,20($v0)
    # Line 353
    bnez	$a6,.L0db2713c
    nop
    # Line 356
    lbu	$t9,0($t8)
    # Line 357
    ori	$a5,$a5,0x1000
    # Line 358
    addi	$t0,$t0,1
    # Line 359
    sb	$t9,19($v0)
.L0db2713c:
    # Line 361
    add	$a4,$a2,$a7
    # Line 362
    lbu	$a6,0($a4)
    # Line 363
    add	$t8,$a7,$a3
    # Line 364
    lbu	$a7,21($v0)
    # Line 365
    bnez	$a6,.L0db27164
    nop
    # Line 368
    lbu	$t9,0($t8)
    # Line 369
    ori	$a5,$a5,0x800
    # Line 370
    addi	$t0,$t0,1
    # Line 371
    sb	$t9,20($v0)
.L0db27164:
    # Line 373
    add	$a4,$a2,$a7
    # Line 374
    lbu	$a6,0($a4)
    # Line 375
    add	$t8,$a7,$a3
    # Line 376
    lbu	$a7,22($v0)
    # Line 377
    bnez	$a6,.L0db2718c
    nop
    # Line 380
    lbu	$t9,0($t8)
    # Line 381
    ori	$a5,$a5,0x400
    # Line 382
    addi	$t0,$t0,1
    # Line 383
    sb	$t9,21($v0)
.L0db2718c:
    # Line 385
    add	$a4,$a2,$a7
    # Line 386
    lbu	$a6,0($a4)
    # Line 387
    add	$t8,$a7,$a3
    # Line 388
    lbu	$a7,23($v0)
    # Line 389
    bnez	$a6,.L0db271b4
    nop
    # Line 392
    lbu	$t9,0($t8)
    # Line 393
    ori	$a5,$a5,0x200
    # Line 394
    addi	$t0,$t0,1
    # Line 395
    sb	$t9,22($v0)
.L0db271b4:
    # Line 397
    add	$a4,$a2,$a7
    # Line 398
    lbu	$a6,0($a4)
    # Line 399
    add	$t8,$a7,$a3
    # Line 400
    lbu	$a7,24($v0)
    # Line 401
    bnez	$a6,.L0db271dc
    nop
    # Line 404
    lbu	$t9,0($t8)
    # Line 405
    ori	$a5,$a5,0x100
    # Line 406
    addi	$t0,$t0,1
    # Line 407
    sb	$t9,23($v0)
.L0db271dc:
    # Line 409
    add	$a4,$a2,$a7
    # Line 410
    lbu	$a6,0($a4)
    # Line 411
    add	$t8,$a7,$a3
    # Line 412
    lbu	$a7,25($v0)
    # Line 413
    bnez	$a6,.L0db27204
    nop
    # Line 416
    lbu	$t9,0($t8)
    # Line 417
    ori	$a5,$a5,0x80
    # Line 418
    addi	$t0,$t0,1
    # Line 419
    sb	$t9,24($v0)
.L0db27204:
    # Line 421
    add	$a4,$a2,$a7
    # Line 422
    lbu	$a6,0($a4)
    # Line 423
    add	$t8,$a7,$a3
    # Line 424
    lbu	$a7,26($v0)
    # Line 425
    bnez	$a6,.L0db2722c
    nop
    # Line 428
    lbu	$t9,0($t8)
    # Line 429
    ori	$a5,$a5,0x40
    # Line 430
    addi	$t0,$t0,1
    # Line 431
    sb	$t9,25($v0)
.L0db2722c:
    # Line 433
    add	$a4,$a2,$a7
    # Line 434
    lbu	$a6,0($a4)
    # Line 435
    add	$t8,$a7,$a3
    # Line 436
    lbu	$a7,27($v0)
    # Line 437
    bnez	$a6,.L0db27254
    nop
    # Line 440
    lbu	$t9,0($t8)
    # Line 441
    ori	$a5,$a5,0x20
    # Line 442
    addi	$t0,$t0,1
    # Line 443
    sb	$t9,26($v0)
.L0db27254:
    # Line 445
    add	$a4,$a2,$a7
    # Line 446
    lbu	$a6,0($a4)
    # Line 447
    add	$t8,$a7,$a3
    # Line 448
    lbu	$a7,28($v0)
    # Line 449
    bnez	$a6,.L0db2727c
    nop
    # Line 452
    lbu	$t9,0($t8)
    # Line 453
    ori	$a5,$a5,0x10
    # Line 454
    addi	$t0,$t0,1
    # Line 455
    sb	$t9,27($v0)
.L0db2727c:
    # Line 457
    add	$a4,$a2,$a7
    # Line 458
    lbu	$a6,0($a4)
    # Line 459
    add	$t8,$a7,$a3
    # Line 460
    lbu	$a7,29($v0)
    # Line 461
    bnez	$a6,.L0db272a4
    nop
    # Line 464
    lbu	$t9,0($t8)
    # Line 465
    ori	$a5,$a5,0x8
    # Line 466
    addi	$t0,$t0,1
    # Line 467
    sb	$t9,28($v0)
.L0db272a4:
    # Line 469
    add	$a4,$a2,$a7
    # Line 470
    lbu	$a6,0($a4)
    # Line 471
    add	$t8,$a7,$a3
    # Line 472
    lbu	$a7,30($v0)
    # Line 473
    bnez	$a6,.L0db272cc
    nop
    # Line 476
    lbu	$t9,0($t8)
    # Line 477
    ori	$a5,$a5,0x4
    # Line 478
    addi	$t0,$t0,1
    # Line 479
    sb	$t9,29($v0)
.L0db272cc:
    # Line 481
    add	$a4,$a2,$a7
    # Line 482
    lbu	$a6,0($a4)
    # Line 483
    add	$t8,$a7,$a3
    # Line 484
    lbu	$a7,31($v0)
    # Line 485
    bnez	$a6,.L0db272f4
    nop
    # Line 488
    lbu	$t9,0($t8)
    # Line 489
    ori	$a5,$a5,0x2
    # Line 490
    addi	$t0,$t0,1
    # Line 491
    sb	$t9,30($v0)
.L0db272f4:
    # Line 493
    add	$a4,$a2,$a7
    # Line 494
    lbu	$a6,0($a4)
    # Line 495
    add	$t8,$a7,$a3
    # Line 496
    bnez	$a6,.L0db27318
    nop
    # Line 499
    lbu	$t9,0($t8)
    # Line 500
    ori	$a5,$a5,0x1
    # Line 501
    addi	$t0,$t0,1
    # Line 502
    sb	$t9,31($v0)
.L0db27318:
    # Line 506
    sllv	$a5,$a5,$t3
    # Line 507
    xor	$a5,$a5,$t1
    # Line 505
    addiu	$v0,$v0,32
    # Line 508
    sw	$a5,0($v1)
    # Line 510
    b	.L0db26dc8
    # Line 509
    addi	$v1,$v1,4
.L0db27330:
    # Line 515
    bnez	$t0,.L0db27340
    nop
    # Line 519
    jr	$ra
    # Line 518
    li	$v0,0
.L0db27340:
    # Line 523
    beq	$t0,$a1,.L0db27350
    nop
    # Line 525
    jr	$ra
    # Line 524
    li	$v0,1
.L0db27350:
    # Line 529
    li	$v0,1
    # Line 531
    jr	$ra
    # Line 530
    sb	$v0,30480($a0)
.end __glStencilTestSpan_asm

