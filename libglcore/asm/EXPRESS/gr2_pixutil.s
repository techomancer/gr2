# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS/gr2_pixutil.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glExpSwapToPipe4
# Declared: Line 255 (Source lines: 255-341)
# Address: 0x0db24268 - 0x0db24678 (Size: 1040 bytes, Frame: 0)
.globl __glExpSwapToPipe4
.ent __glExpSwapToPipe4
__glExpSwapToPipe4:
    # Line 255
    lui	$t3,0x4
    addiu	$t3,$t3,8192
    # Line 256
    addi	$a2,$a2,-16
    # Line 257
    bltz	$a2,.L0db24450
    # Line 258
    nop
.L0db2427c:
    # Line 260
    lwr	$t0,2($a1)
    nop
    # Line 261
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a1)
    lwr	$t2,0($a1)
    lwl	$t2,3($a1)
    # Line 262
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,452($t3)
    or	$t2,$t1,$t0
    lwr	$t0,10($a1)
    lwr	$t2,4($a1)
    lwl	$t2,7($a1)
    # Line 263
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,14($a1)
    lwr	$t2,8($a1)
    lwl	$t2,11($a1)
    # Line 264
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,18($a1)
    lwr	$t2,12($a1)
    lwl	$t2,15($a1)
    # Line 265
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,22($a1)
    lwr	$t2,16($a1)
    lwl	$t2,19($a1)
    # Line 266
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,26($a1)
    lwr	$t2,20($a1)
    lwl	$t2,23($a1)
    # Line 267
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,30($a1)
    lwr	$t2,24($a1)
    lwl	$t2,27($a1)
    # Line 268
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,34($a1)
    lwr	$t2,28($a1)
    lwl	$t2,31($a1)
    # Line 269
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,38($a1)
    lwr	$t2,32($a1)
    lwl	$t2,35($a1)
    # Line 270
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,42($a1)
    lwr	$t2,36($a1)
    lwl	$t2,39($a1)
    # Line 271
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,46($a1)
    lwr	$t2,40($a1)
    lwl	$t2,43($a1)
    # Line 272
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,50($a1)
    lwr	$t2,44($a1)
    lwl	$t2,47($a1)
    # Line 273
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,54($a1)
    lwr	$t2,48($a1)
    lwl	$t2,51($a1)
    # Line 274
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,58($a1)
    lwr	$t2,52($a1)
    lwl	$t2,55($a1)
    # Line 275
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,62($a1)
    lwr	$t2,56($a1)
    lwl	$t2,59($a1)
    # Line 276
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t2,60($a1)
    lwl	$t2,63($a1)
    # Line 277
    addi	$a1,$a1,64
    # Line 278
    sw	$t2,1916($t3)
    # Line 279
    addi	$a2,$a2,-16
    # Line 280
    bgez	$a2,.L0db2427c
    # Line 281
    nop
.L0db24450:
    # Line 283
    addi	$a2,$a2,16
    # Line 284
    bgtz	$a2,.L0db24464
    # Line 285
    nop
    # Line 286
    jr	$ra
    # Line 287
    nop
.L0db24464:
    # Line 289
    andi	$t1,$a2,0x8
    # Line 290
    beq	$zero,$t1,.L0db24558
    # Line 291
    nop
    # Line 292
    lwr	$t0,2($a1)
    nop
    # Line 293
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a1)
    lwr	$t2,0($a1)
    lwl	$t2,3($a1)
    # Line 294
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,452($t3)
    or	$t2,$t1,$t0
    lwr	$t0,10($a1)
    lwr	$t2,4($a1)
    lwl	$t2,7($a1)
    # Line 295
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,14($a1)
    lwr	$t2,8($a1)
    lwl	$t2,11($a1)
    # Line 296
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,18($a1)
    lwr	$t2,12($a1)
    lwl	$t2,15($a1)
    # Line 297
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,22($a1)
    lwr	$t2,16($a1)
    lwl	$t2,19($a1)
    # Line 298
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,26($a1)
    lwr	$t2,20($a1)
    lwl	$t2,23($a1)
    # Line 299
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,30($a1)
    lwr	$t2,24($a1)
    lwl	$t2,27($a1)
    # Line 300
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t2,28($a1)
    lwl	$t2,31($a1)
    # Line 301
    addi	$a1,$a1,32
    # Line 302
    sw	$t2,1916($t3)
.L0db24558:
    # Line 304
    andi	$t1,$a2,0x4
    # Line 305
    beq	$zero,$t1,.L0db245dc
    # Line 306
    nop
    # Line 307
    lwr	$t0,2($a1)
    nop
    # Line 308
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a1)
    lwr	$t2,0($a1)
    lwl	$t2,3($a1)
    # Line 309
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,452($t3)
    or	$t2,$t1,$t0
    lwr	$t0,10($a1)
    lwr	$t2,4($a1)
    lwl	$t2,7($a1)
    # Line 310
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t0,14($a1)
    lwr	$t2,8($a1)
    lwl	$t2,11($a1)
    # Line 311
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,1916($t3)
    or	$t2,$t1,$t0
    lwr	$t2,12($a1)
    lwl	$t2,15($a1)
    # Line 312
    addi	$a1,$a1,16
    # Line 313
    sw	$t2,1916($t3)
.L0db245dc:
    # Line 315
    andi	$t1,$a2,0x2
    # Line 316
    beq	$zero,$t1,.L0db24628
    # Line 317
    nop
    # Line 318
    lwr	$t0,2($a1)
    nop
    # Line 319
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a1)
    lwr	$t2,0($a1)
    lwl	$t2,3($a1)
    # Line 320
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,452($t3)
    or	$t2,$t1,$t0
    lwr	$t2,4($a1)
    lwl	$t2,7($a1)
    # Line 321
    addi	$a1,$a1,8
    # Line 322
    sw	$t2,1916($t3)
.L0db24628:
    # Line 324
    andi	$t1,$a2,0x1
    # Line 325
    beq	$zero,$t1,.L0db24658
    # Line 326
    nop
    # Line 327
    lwr	$t0,2($a1)
    nop
    # Line 328
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t2,0($a1)
    lwl	$t2,3($a1)
    # Line 329
    addi	$a1,$a1,4
    # Line 330
    sw	$t2,452($t3)
.L0db24658:
    # Line 332
    li	$t1,16
    # Line 333
    sub	$a2,$t1,$a2
.L0db24660:
    # Line 335
    sw	$t2,1916($t3)
    # Line 336
    addi	$a2,$a2,-1
    # Line 337
    bgtz	$a2,.L0db24660
    # Line 338
    nop
    # Line 340
    jr	$ra
    # Line 341
    nop
.end __glExpSwapToPipe4

# Function: __glExpSwapAndCopy4
# Declared: Line 362 (Source lines: 362-444)
# Address: 0x0db24678 - 0x0db24a7c (Size: 1028 bytes, Frame: 0)
.globl __glExpSwapAndCopy4
.ent __glExpSwapAndCopy4
__glExpSwapAndCopy4:
    # Line 362
    addi	$a2,$a2,-16
    # Line 363
    bltz	$a2,.L0db2485c
    # Line 364
    nop
.L0db24684:
    # Line 366
    lwr	$t0,2($a0)
    nop
    # Line 367
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    lwr	$t2,0($a0)
    lwl	$t2,3($a0)
    # Line 368
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    lwr	$t2,4($a0)
    lwl	$t2,7($a0)
    # Line 369
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    lwr	$t2,8($a0)
    lwl	$t2,11($a0)
    # Line 370
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    lwr	$t0,18($a0)
    lwr	$t2,12($a0)
    lwl	$t2,15($a0)
    # Line 371
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,12($a1)
    or	$t2,$t1,$t0
    lwr	$t0,22($a0)
    lwr	$t2,16($a0)
    lwl	$t2,19($a0)
    # Line 372
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,16($a1)
    or	$t2,$t1,$t0
    lwr	$t0,26($a0)
    lwr	$t2,20($a0)
    lwl	$t2,23($a0)
    # Line 373
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,20($a1)
    or	$t2,$t1,$t0
    lwr	$t0,30($a0)
    lwr	$t2,24($a0)
    lwl	$t2,27($a0)
    # Line 374
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,24($a1)
    or	$t2,$t1,$t0
    lwr	$t0,34($a0)
    lwr	$t2,28($a0)
    lwl	$t2,31($a0)
    # Line 375
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,28($a1)
    or	$t2,$t1,$t0
    lwr	$t0,38($a0)
    lwr	$t2,32($a0)
    lwl	$t2,35($a0)
    # Line 376
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,32($a1)
    or	$t2,$t1,$t0
    lwr	$t0,42($a0)
    lwr	$t2,36($a0)
    lwl	$t2,39($a0)
    # Line 377
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,36($a1)
    or	$t2,$t1,$t0
    lwr	$t0,46($a0)
    lwr	$t2,40($a0)
    lwl	$t2,43($a0)
    # Line 378
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,40($a1)
    or	$t2,$t1,$t0
    lwr	$t0,50($a0)
    lwr	$t2,44($a0)
    lwl	$t2,47($a0)
    # Line 379
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,44($a1)
    or	$t2,$t1,$t0
    lwr	$t0,54($a0)
    lwr	$t2,48($a0)
    lwl	$t2,51($a0)
    # Line 380
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,48($a1)
    or	$t2,$t1,$t0
    lwr	$t0,58($a0)
    lwr	$t2,52($a0)
    lwl	$t2,55($a0)
    # Line 381
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,52($a1)
    or	$t2,$t1,$t0
    lwr	$t0,62($a0)
    lwr	$t2,56($a0)
    lwl	$t2,59($a0)
    # Line 382
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,56($a1)
    or	$t2,$t1,$t0
    lwr	$t2,60($a0)
    lwl	$t2,63($a0)
    # Line 383
    addi	$a0,$a0,64
    # Line 384
    sw	$t2,60($a1)
    # Line 385
    addi	$a1,$a1,64
    # Line 386
    addi	$a2,$a2,-16
    # Line 387
    bgez	$a2,.L0db24684
    # Line 388
    nop
.L0db2485c:
    # Line 390
    addi	$a2,$a2,16
    # Line 391
    bgtz	$a2,.L0db24870
    # Line 392
    nop
    # Line 393
    jr	$ra
    # Line 394
    nop
.L0db24870:
    # Line 396
    andi	$t3,$a2,0x8
    # Line 397
    beq	$zero,$t3,.L0db24968
    # Line 398
    nop
    # Line 399
    lwr	$t0,2($a0)
    nop
    # Line 400
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    lwr	$t2,0($a0)
    lwl	$t2,3($a0)
    # Line 401
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    lwr	$t2,4($a0)
    lwl	$t2,7($a0)
    # Line 402
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    lwr	$t2,8($a0)
    lwl	$t2,11($a0)
    # Line 403
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    lwr	$t0,18($a0)
    lwr	$t2,12($a0)
    lwl	$t2,15($a0)
    # Line 404
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,12($a1)
    or	$t2,$t1,$t0
    lwr	$t0,22($a0)
    lwr	$t2,16($a0)
    lwl	$t2,19($a0)
    # Line 405
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,16($a1)
    or	$t2,$t1,$t0
    lwr	$t0,26($a0)
    lwr	$t2,20($a0)
    lwl	$t2,23($a0)
    # Line 406
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,20($a1)
    or	$t2,$t1,$t0
    lwr	$t0,30($a0)
    lwr	$t2,24($a0)
    lwl	$t2,27($a0)
    # Line 407
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,24($a1)
    or	$t2,$t1,$t0
    lwr	$t2,28($a0)
    lwl	$t2,31($a0)
    # Line 408
    addi	$a0,$a0,32
    # Line 409
    sw	$t2,28($a1)
    # Line 410
    addi	$a1,$a1,32
.L0db24968:
    # Line 412
    andi	$t3,$a2,0x4
    # Line 413
    beq	$zero,$t3,.L0db249f0
    # Line 414
    nop
    # Line 415
    lwr	$t0,2($a0)
    nop
    # Line 416
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    lwr	$t2,0($a0)
    lwl	$t2,3($a0)
    # Line 417
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    lwr	$t2,4($a0)
    lwl	$t2,7($a0)
    # Line 418
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    lwr	$t2,8($a0)
    lwl	$t2,11($a0)
    # Line 419
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    lwr	$t2,12($a0)
    lwl	$t2,15($a0)
    # Line 420
    addi	$a0,$a0,16
    # Line 421
    sw	$t2,12($a1)
    # Line 422
    addi	$a1,$a1,16
.L0db249f0:
    # Line 424
    andi	$t3,$a2,0x2
    # Line 425
    beq	$zero,$t3,.L0db24a40
    # Line 426
    nop
    # Line 427
    lwr	$t0,2($a0)
    nop
    # Line 428
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    lwr	$t2,0($a0)
    lwl	$t2,3($a0)
    # Line 429
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t2,4($a0)
    lwl	$t2,7($a0)
    # Line 430
    addi	$a0,$a0,8
    # Line 431
    sw	$t2,4($a1)
    # Line 432
    addi	$a1,$a1,8
.L0db24a40:
    # Line 434
    andi	$t3,$a2,0x1
    # Line 435
    beq	$zero,$t3,.L0db24a74
    # Line 436
    nop
    # Line 437
    lwr	$t0,2($a0)
    nop
    # Line 438
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t2,0($a0)
    lwl	$t2,3($a0)
    # Line 439
    addi	$a0,$a0,4
    # Line 440
    sw	$t2,0($a1)
    # Line 441
    addi	$a1,$a1,4
.L0db24a74:
    # Line 443
    jr	$ra
    # Line 444
    nop
.end __glExpSwapAndCopy4

# Function: __glExpSwapStuffAndCopy4
# Declared: Line 466 (Source lines: 466-548)
# Address: 0x0db24a7c - 0x0db24e80 (Size: 1028 bytes, Frame: 0)
.globl __glExpSwapStuffAndCopy4
.ent __glExpSwapStuffAndCopy4
__glExpSwapStuffAndCopy4:
    # Line 466
    addi	$a2,$a2,-16
    # Line 467
    bltz	$a2,.L0db24c60
    # Line 468
    nop
.L0db24a88:
    # Line 470
    lwr	$t0,2($a0)
    nop
    # Line 471
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,3($a0)
    # Line 472
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,7($a0)
    # Line 473
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,11($a0)
    # Line 474
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    lwr	$t0,18($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,15($a0)
    # Line 475
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,12($a1)
    or	$t2,$t1,$t0
    lwr	$t0,22($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,19($a0)
    # Line 476
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,16($a1)
    or	$t2,$t1,$t0
    lwr	$t0,26($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,23($a0)
    # Line 477
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,20($a1)
    or	$t2,$t1,$t0
    lwr	$t0,30($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,27($a0)
    # Line 478
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,24($a1)
    or	$t2,$t1,$t0
    lwr	$t0,34($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,31($a0)
    # Line 479
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,28($a1)
    or	$t2,$t1,$t0
    lwr	$t0,38($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,35($a0)
    # Line 480
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,32($a1)
    or	$t2,$t1,$t0
    lwr	$t0,42($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,39($a0)
    # Line 481
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,36($a1)
    or	$t2,$t1,$t0
    lwr	$t0,46($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,43($a0)
    # Line 482
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,40($a1)
    or	$t2,$t1,$t0
    lwr	$t0,50($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,47($a0)
    # Line 483
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,44($a1)
    or	$t2,$t1,$t0
    lwr	$t0,54($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,51($a0)
    # Line 484
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,48($a1)
    or	$t2,$t1,$t0
    lwr	$t0,58($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,55($a0)
    # Line 485
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,52($a1)
    or	$t2,$t1,$t0
    lwr	$t0,62($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,59($a0)
    # Line 486
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,56($a1)
    or	$t2,$t1,$t0
    ori	$t2,$t2,0xff
    lwl	$t2,63($a0)
    # Line 487
    addi	$a0,$a0,64
    # Line 488
    sw	$t2,60($a1)
    # Line 489
    addi	$a1,$a1,64
    # Line 490
    addi	$a2,$a2,-16
    # Line 491
    bgez	$a2,.L0db24a88
    # Line 492
    nop
.L0db24c60:
    # Line 494
    addi	$a2,$a2,16
    # Line 495
    bgtz	$a2,.L0db24c74
    # Line 496
    nop
    # Line 497
    jr	$ra
    # Line 498
    nop
.L0db24c74:
    # Line 500
    andi	$t3,$a2,0x8
    # Line 501
    beq	$zero,$t3,.L0db24d6c
    # Line 502
    nop
    # Line 503
    lwr	$t0,2($a0)
    nop
    # Line 504
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,3($a0)
    # Line 505
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,7($a0)
    # Line 506
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,11($a0)
    # Line 507
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    lwr	$t0,18($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,15($a0)
    # Line 508
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,12($a1)
    or	$t2,$t1,$t0
    lwr	$t0,22($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,19($a0)
    # Line 509
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,16($a1)
    or	$t2,$t1,$t0
    lwr	$t0,26($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,23($a0)
    # Line 510
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,20($a1)
    or	$t2,$t1,$t0
    lwr	$t0,30($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,27($a0)
    # Line 511
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,24($a1)
    or	$t2,$t1,$t0
    ori	$t2,$t2,0xff
    lwl	$t2,31($a0)
    # Line 512
    addi	$a0,$a0,32
    # Line 513
    sw	$t2,28($a1)
    # Line 514
    addi	$a1,$a1,32
.L0db24d6c:
    # Line 516
    andi	$t3,$a2,0x4
    # Line 517
    beq	$zero,$t3,.L0db24df4
    # Line 518
    nop
    # Line 519
    lwr	$t0,2($a0)
    nop
    # Line 520
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,3($a0)
    # Line 521
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    lwr	$t0,10($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,7($a0)
    # Line 522
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,4($a1)
    or	$t2,$t1,$t0
    lwr	$t0,14($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,11($a0)
    # Line 523
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,8($a1)
    or	$t2,$t1,$t0
    ori	$t2,$t2,0xff
    lwl	$t2,15($a0)
    # Line 524
    addi	$a0,$a0,16
    # Line 525
    sw	$t2,12($a1)
    # Line 526
    addi	$a1,$a1,16
.L0db24df4:
    # Line 528
    andi	$t3,$a2,0x2
    # Line 529
    beq	$zero,$t3,.L0db24e44
    # Line 530
    nop
    # Line 531
    lwr	$t0,2($a0)
    nop
    # Line 532
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    lwr	$t0,6($a0)
    ori	$t2,$t2,0xff
    lwl	$t2,3($a0)
    # Line 533
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    sw	$t2,0($a1)
    or	$t2,$t1,$t0
    ori	$t2,$t2,0xff
    lwl	$t2,7($a0)
    # Line 534
    addi	$a0,$a0,8
    # Line 535
    sw	$t2,4($a1)
    # Line 536
    addi	$a1,$a1,8
.L0db24e44:
    # Line 538
    andi	$t3,$a2,0x1
    # Line 539
    beq	$zero,$t3,.L0db24e78
    # Line 540
    nop
    # Line 541
    lwr	$t0,2($a0)
    nop
    # Line 542
    sll	$t0,$t0,0x10
    srl	$t1,$t0,0x10
    or	$t2,$t1,$t0
    ori	$t2,$t2,0xff
    lwl	$t2,3($a0)
    # Line 543
    addi	$a0,$a0,4
    # Line 544
    sw	$t2,0($a1)
    # Line 545
    addi	$a1,$a1,4
.L0db24e78:
    # Line 547
    jr	$ra
    # Line 548
    nop
.end __glExpSwapStuffAndCopy4

