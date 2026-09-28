# Source: ../soft/so_names.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_names.c
# Total Functions: 37

.text

# Function: __glNamesNewArray
# Declared: Line 224 (Source lines: 225-263)
# Address: 0x0dac603c - 0x0dac6184 (Size: 328 bytes, Frame: 208)
.globl __glNamesNewArray
.ent __glNamesNewArray
__glNamesNewArray:
    # Line 225
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,48(sp)
    lui	$at,0x13
    addiu	$at,$at,6188
    # addu	gp,t9,at
    # Line 229
    lw	$t9,0($a0)
    sd	$a1,24($sp)
    sd	$ra,40($sp)
    jalr	$t9
    li	$a1,100
    # Line 238
    ld	$a3,24($sp)
    # Line 229
    beqz	$v0,.L0dac615c
    move	$s1,$v0
    # Line 237
    sw	$zero,4($v0)
    # Line 236
    sw	$zero,0($v0)
    sd	$s3,0($sp)
    # Line 235
    li	$s3,1
    sd	$s4,8($sp)
    # Line 245
    li	$s4,3
    sd	$s5,56($sp)
    # Line 244
    li	$s5,16
    sw	$s5,16($v0)
    # Line 245
    sw	$s4,20($v0)
    # Line 246
    move	$s4,$zero
    # Line 235
    sw	$s3,8($v0)
    # Line 246
    move	$s3,$s1
    # Line 238
    sll	$v1,$a3,0x2
    la	$a2,sub_0dbf0000
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addiu	$a2,$a2,-11192
    addu	$v1,$v1,$a2
    addiu	$v1,$v1,24
    sw	$v1,12($v0)
.L0dac60d0:
    # Line 247
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    li	$a1,24
    beqz	$v0,.L0dac6154
    sw	$v0,24($s3)
    # Line 246
    addiu	$s4,$s4,1
    bne	$s4,$s5,.L0dac60d0
    addiu	$s3,$s3,4
.L0dac60f4:
    # Line 254
    move	$s4,$zero
    move	$s3,$s1
    ld	$s5,56($sp)
.L0dac6100:
    # Line 255
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    li	$a1,20
    bnez	$v0,.L0dac6120
    sw	$v0,88($s3)
    # Line 259
    b	.L0dac6130
    # Line 258
    sw	$s4,20($s1)
.L0dac6120:
    li	$at,3
    # Line 254
    addiu	$s4,$s4,1
    bne	$s4,$at,.L0dac6100
    addiu	$s3,$s3,4
.L0dac6130:
    # ld	gp,48(sp)
    # Line 263
    ld	$s0,32($sp)
    move	$v0,$s1
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac6154:
    # Line 251
    b	.L0dac60f4
    # Line 250
    sw	$s4,16($s1)
.L0dac615c:
    # Line 232
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 233
    move	$v0,$zero
    # ld	gp,48(sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glNamesNewArray

# Function: freeLeafData
# Declared: Line 266 (Source lines: 267-273)
# Address: 0x0dac6184 - 0x0dac61a4 (Size: 32 bytes, Frame: 32)
.ent freeLeafData
freeLeafData:
    # Line 272
    lw	$t9,12($a0)
    # Line 267
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 272
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 273
    jr	$ra
    addiu	$sp,$sp,32
.end freeLeafData

# Function: freeLeaf
# Declared: Line 276 (Source lines: 277-282)
# Address: 0x0dac61a4 - 0x0dac61fc (Size: 88 bytes, Frame: 48)
.ent freeLeaf
freeLeaf:
    # Line 277
    move	$a3,$a1
    addiu	$sp,$sp,-48
    lw	$a4,12($a1)
    sd	$ra,16($sp)
    sd	$s3,0($sp)
    beqz	$a4,.L0dac61dc
    move	$s3,$a0
    # Line 279
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$a3,8($sp)
    move	$a0,$s3
    addiu	$t9,$t9,24964
    bal __glNamesNewArray
    move	$a1,$a4
    ld	$a3,8($sp)
.L0dac61dc:
    # Line 281
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	sub_0dac0000
    move	$a1,$a3
    ld	$s3,0($sp)
    ld	$ra,16($sp)
    # Line 282
    jr	$ra
    addiu	$sp,$sp,48
.end freeLeaf

# Function: freeBranch
# Declared: Line 285 (Source lines: 286-288)
# Address: 0x0dac61fc - 0x0dac621c (Size: 32 bytes, Frame: 32)
.ent freeBranch
freeBranch:
    # Line 287
    lw	$t9,12($a0)
    # Line 286
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 287
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 288
    jr	$ra
    addiu	$sp,$sp,32
.end freeBranch

# Function: __glNamesFreeTree
# Declared: Line 294 (Source lines: 296-326)
# Address: 0x0dac621c - 0x0dac63a8 (Size: 396 bytes, Frame: 224)
.globl __glNamesFreeTree
.ent __glNamesFreeTree
__glNamesFreeTree:
.L0dac621c:
    # Line 296
    move	$a5,$a3
    addiu	$sp,$sp,-96
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s2,8($sp)
    move	$s2,$a1
    sd	$s0,24($sp)
    move	$s0,$a2
    # sd	gp,32(sp)
    lui	$at,0x13
    addiu	$at,$at,5708
    beqz	$a2,.L0dac6328
    nop
    # Line 302
    lw	$v0,4($s2)
    slt	$v0,$a5,$v0
    bnezl	$v0,.L0dac6340
    # Line 305
    lw	$a2,20($s0)
    # Line 312
    lw	$v1,12($s0)
    sd	$s4,48($sp)
    lw	$s4,12($s2)
    sd	$ra,40($sp)
    beqz	$v1,.L0dac62f4
    lw	$s4,4($s4)
    # Line 315
    lw	$s2,4($s0)
    lw	$a0,8($s0)
    sltu	$at,$a0,$s2
    bnez	$at,.L0dac62f4
    sd	$ra,40($sp)
    b	.L0dac62a4
    sd	$ra,40($sp)
.L0dac6294:
    addiu	$s2,$s2,1
.L0dac6298:
    sltu	$v0,$a0,$s2
    bnez	$v0,.L0dac62f4
    nop
.L0dac62a4:
    lw	$a4,4($s0)
    lw	$a1,12($s0)
    subu	$a4,$s2,$a4
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lw	$a1,0($a1)
    beql	$a1,$s4,.L0dac6298
    addiu	$s2,$s2,1
    # Line 318
    lw	$t9,16($s0)
    lw	$t9,12($t9)
    jalr	$t9
    move	$a0,$s1
    # Line 320
    lw	$v0,4($s0)
    lw	$at,12($s0)
    subu	$v0,$s2,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    sw	$s4,0($at)
    b	.L0dac6294
    lw	$a0,8($s0)
.L0dac62f4:
    # Line 324
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    move	$a1,$s0
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    ld	$s4,48($sp)
    ld	$ra,40($sp)
.L0dac6310:
    # ld	gp,32(sp)
    # Line 326
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac6328:
    # ld	gp,32(sp)
    # Line 302
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac6340:
    # Line 305
    move	$a1,$s2
    move	$a0,$s1
    # lw $t9, -27948($gp) # &__glNamesFreeTree
    sd	$ra,40($sp)
    addiu	$a3,$a5,1
    bal .L0dac621c
    sd	$a3,0($sp)
    # Line 306
    move	$a0,$s1
    # lw $t9, -27948($gp) # &__glNamesFreeTree
    move	$a1,$s2
    ld	$a3,0($sp)
    bal .L0dac621c
    lw	$a2,16($s0)
    # Line 307
    move	$a0,$s1
    # lw $t9, -27948($gp) # &__glNamesFreeTree
    move	$a1,$s2
    ld	$a3,0($sp)
    bal .L0dac621c
    lw	$a2,12($s0)
    # Line 309
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    addiu	$t9,$t9,25084
    bal __glNamesNewArray
    move	$a1,$s0
    b	.L0dac6310
    ld	$ra,40($sp)
.end __glNamesFreeTree

# Function: __glNamesFreeArray
# Declared: Line 327 (Source lines: 328-341)
# Address: 0x0dac63a8 - 0x0dac649c (Size: 244 bytes, Frame: 192)
.globl __glNamesFreeArray
.ent __glNamesFreeArray
__glNamesFreeArray:
    # Line 328
    addiu	$sp,$sp,-64
    sd	$s5,40($sp)
    sd	$s4,0($sp)
    # Line 331
    move	$s4,$zero
    sd	$s1,16($sp)
    # Line 328
    move	$s1,$a0
    sd	$s0,8($sp)
    move	$s0,$a1
    # sd	gp,24(sp)
    # Line 331
    lw	$at,16($a1)
    # Line 328
    lui	$v0,0x13
    addiu	$v0,$v0,5312
    # Line 331
    beqz	$at,.L0dac6414
    # Line 328
    nop
    sd	$ra,32($sp)
    # Line 331
    move	$s5,$s0
.L0dac63e8:
    # Line 332
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,24($s5)
    # Line 331
    addiu	$s4,$s4,1
    lw	$v1,16($s0)
    sltu	$v1,$s4,$v1
    bnez	$v1,.L0dac63e8
    addiu	$s5,$s5,4
    ld	$ra,32($sp)
    ld	$s5,40($sp)
.L0dac6414:
    # Line 334
    lw	$a2,20($s0)
    sd	$ra,32($sp)
    beqz	$a2,.L0dac6458
    move	$s4,$zero
    sd	$ra,32($sp)
    sd	$s5,40($sp)
    move	$s5,$s0
.L0dac6430:
    # Line 335
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,88($s5)
    # Line 334
    addiu	$s4,$s4,1
    lw	$at,20($s0)
    sltu	$at,$s4,$at
    bnez	$at,.L0dac6430
    addiu	$s5,$s5,4
    ld	$s5,40($sp)
.L0dac6458:
    # Line 338
    move	$a0,$s1
    move	$a1,$s0
    # lw $t9, -27948($gp) # &__glNamesFreeTree
    move	$a3,$zero
    lw	$a2,0($s0)
    bal __glNamesFreeTree
    ld	$s4,0($sp)
    # Line 340
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	__glNamesFreeTree
    move	$a1,$s0
    # ld	gp,24(sp)
    # Line 341
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glNamesFreeArray

# Function: findLeaf
# Declared: Line 356 (Source lines: 361-387)
# Address: 0x0dac649c - 0x0dac6520 (Size: 132 bytes, Frame: 0)
.ent findLeaf
findLeaf:
    # Line 361
    lw	$a5,4($a0)
    # Line 363
    blez	$a5,.L0dac64e8
    lw	$v0,0($a0)
    beqz	$v0,.L0dac64e0
    nop
    # Line 373
    lw	$a0,8($v0)
.L0dac64b4:
    lw	$v1,4($v0)
    # Line 374
    addiu	$a5,$a5,-1
    # Line 373
    sltu	$a0,$a0,$a1
    sltu	$v1,$v1,$a1
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v0,$v1,$v0
    # Line 374
    blez	$a5,.L0dac64e8
    # Line 373
    lw	$v0,12($v0)
    # Line 374
    bnezl	$v0,.L0dac64b4
    # Line 373
    lw	$a0,8($v0)
.L0dac64e0:
    # Line 376
    jr	$ra
    move	$v0,$zero
.L0dac64e8:
    # Line 374
    beqz	$v0,.L0dac64e0
    nop
    # Line 376
    lw	$a3,8($v0)
    lw	$a0,4($v0)
    sltu	$a3,$a3,$a1
    sltu	$a0,$a1,$a0
    and	$a0,$a0,$a2
    or	$a0,$a0,$a3
    beqz	$a0,.L0dac6518
    nop
    # Line 387
    jr	$ra
    move	$v0,$zero
.L0dac6518:
    # Line 386
    jr	$ra
    nop
.end findLeaf

# Function: copyLeafInfo
# Declared: Line 394 (Source lines: 400-406)
# Address: 0x0dac6520 - 0x0dac6578 (Size: 88 bytes, Frame: 0)
.ent copyLeafInfo
copyLeafInfo:
    # Line 400
    lw	$a7,4($a1)
    lw	$a6,8($a1)
    # Line 401
    lw	$at,4($a0)
    # Line 400
    subu	$a6,$a6,$a7
    addiu	$a6,$a6,1
    # Line 401
    beqz	$a6,.L0dac6570
    subu	$a7,$a7,$at
    move	$a3,$zero
    sll	$a4,$a7,0x2
    addu	$a5,$a7,$a6
    sll	$a5,$a5,0x2
.L0dac654c:
    # Line 404
    lw	$v0,12($a1)
    lw	$at,12($a0)
    addu	$v0,$v0,$a3
    # Line 403
    addiu	$a3,$a3,4
    # Line 404
    addu	$at,$at,$a4
    lw	$at,0($at)
    # Line 403
    addiu	$a4,$a4,4
    bne	$a4,$a5,.L0dac654c
    # Line 404
    sw	$at,0($v0)
.L0dac6570:
    # Line 406
    jr	$ra
    nop
.end copyLeafInfo

# Function: fixMemoryProblem
# Declared: Line 411 (Source lines: 412-433)
# Address: 0x0dac6578 - 0x0dac66a0 (Size: 296 bytes, Frame: 208)
.ent fixMemoryProblem
fixMemoryProblem:
    # Line 412
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s4,48($sp)
    move	$s4,$a1
    sd	$s0,40($sp)
    # Line 415
    lw	$s0,16($a1)
    sd	$s6,8($sp)
    sd	$s5,24($sp)
    sltiu	$at,$s0,16
    beqz	$at,.L0dac65dc
    li	$s5,16
    sd	$ra,0($sp)
    sll	$s6,$s0,0x2
    addu	$s6,$s6,$s4
.L0dac65b8:
    # Line 416
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    li	$a1,24
    beqz	$v0,.L0dac6678
    sw	$v0,24($s6)
    # Line 415
    addiu	$s0,$s0,1
    bne	$s5,$s0,.L0dac65b8
    addiu	$s6,$s6,4
.L0dac65dc:
    # Line 424
    lw	$s0,20($s4)
    sd	$s7,16($sp)
    li	$s7,3
    sltiu	$at,$s0,3
    beqz	$at,.L0dac6620
    # Line 423
    sw	$s5,16($s4)
    # Line 424
    sll	$s6,$s0,0x2
    addu	$s6,$s6,$s4
.L0dac65fc:
    # Line 425
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    li	$a1,20
    beqz	$v0,.L0dac664c
    sw	$v0,88($s6)
    # Line 424
    addiu	$s0,$s0,1
    bne	$s7,$s0,.L0dac65fc
    addiu	$s6,$s6,4
.L0dac6620:
    # Line 433
    li	$v0,1
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    # Line 432
    sw	$s7,20($s4)
    # Line 433
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$ra,0($sp)
    ld	$s6,8($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac664c:
    # Line 429
    move	$v0,$zero
    # Line 428
    sw	$s0,20($s4)
    # Line 429
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$ra,0($sp)
    ld	$s6,8($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac6678:
    # Line 420
    move	$v0,$zero
    # Line 419
    sw	$s0,16($s4)
    # Line 420
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s4,48($sp)
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end fixMemoryProblem

# Function: computeMax
# Declared: Line 440 (Source lines: 442-456)
# Address: 0x0dac66a0 - 0x0dac66e4 (Size: 68 bytes, Frame: 0)
.ent computeMax
computeMax:
    # Line 442
    slt	$at,$a1,$a2
    beqz	$at,.L0dac66c0
    nop
.L0dac66ac:
    lw	$a4,20($a0)
    beqz	$a4,.L0dac66c8
    # Line 453
    addiu	$a1,$a1,1
    bne	$a1,$a2,.L0dac66ac
    # Line 447
    move	$a0,$a4
.L0dac66c0:
    # Line 456
    jr	$ra
    lw	$v0,8($a0)
.L0dac66c8:
    # Line 447
    lw	$v0,16($a0)
    beqz	$v0,.L0dac66dc
    nop
    # Line 449
    jr	$ra
    lw	$v0,8($a0)
.L0dac66dc:
    # Line 451
    jr	$ra
    lw	$v0,4($a0)
.end computeMax

# Function: pushMaxVal
# Declared: Line 463 (Source lines: 467-483)
# Address: 0x0dac66e4 - 0x0dac6748 (Size: 100 bytes, Frame: 0)
.ent pushMaxVal
pushMaxVal:
    # Line 467
    lw	$a3,0($a0)
    beqz	$a3,.L0dac6738
    nop
    b	.L0dac6720
    lw	$v0,12($a3)
.L0dac66f8:
    # Line 471
    bne	$a4,$a0,.L0dac6710
    # Line 481
    move	$a0,$a3
    # Line 474
    lw	$at,20($a3)
    bnez	$at,.L0dac6740
    sw	$a1,8($a3)
.L0dac670c:
    # Line 481
    move	$a0,$a3
.L0dac6710:
    # Line 467
    lw	$a3,0($a3)
    beqz	$a3,.L0dac6738
    nop
    lw	$v0,12($a3)
.L0dac6720:
    bne	$v0,$a0,.L0dac66f8
    lw	$a4,16($a3)
    # Line 469
    beqz	$a4,.L0dac670c
    sw	$a1,4($a3)
    # Line 471
    jr	$ra
    nop
.L0dac6738:
    # Line 483
    jr	$ra
    nop
.L0dac6740:
    # Line 476
    jr	$ra
    nop
.end pushMaxVal

# Function: allocLeafData
# Declared: Line 485 (Source lines: 486-498)
# Address: 0x0dac6748 - 0x0dac67dc (Size: 148 bytes, Frame: 48)
.ent allocLeafData
allocLeafData:
    # Line 486
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    move	$s5,$a1
    # Line 490
    lw	$a1,8($a1)
    lw	$a2,4($s5)
    sd	$s7,0($sp)
    # Line 491
    lw	$t9,0($a0)
    # Line 490
    subu	$a1,$a1,$a2
    addiu	$s7,$a1,1
    # Line 491
    sll	$a1,$a1,0x2
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 493
    sll	$a2,$s7,0x2
    # Line 491
    beqz	$v0,.L0dac67c4
    sw	$v0,12($s5)
    # Line 493
    blez	$s7,.L0dac67ac
    move	$a1,$zero
.L0dac6790:
    # Line 496
    lw	$v0,12($s5)
    lw	$at,16($s5)
    addu	$v0,$v0,$a1
    lw	$at,4($at)
    # Line 495
    addiu	$a1,$a1,4
    bne	$a1,$a2,.L0dac6790
    # Line 496
    sw	$at,0($v0)
.L0dac67ac:
    ld	$ra,16($sp)
    # Line 498
    li	$v0,1
    ld	$s5,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dac67c4:
    ld	$ra,16($sp)
    # Line 493
    move	$v0,$zero
    ld	$s5,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end allocLeafData

# Function: reallocLeafData
# Declared: Line 501 (Source lines: 502-516)
# Address: 0x0dac67dc - 0x0dac6838 (Size: 92 bytes, Frame: 32)
.ent reallocLeafData
reallocLeafData:
    # Line 502
    addiu	$sp,$sp,-32
    sd	$a1,0($sp)
    # Line 507
    lw	$a2,8($a1)
    lw	$a3,4($a1)
    lw	$a1,12($a1)
    sd	$ra,8($sp)
    lw	$t9,8($a0)
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addiu	$a2,$a2,4
    beqz	$v0,.L0dac6828
    move	$a1,$v0
    # Line 510
    ld	$ra,0($sp)
    sw	$a1,12($ra)
    ld	$ra,8($sp)
    # Line 511
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0dac6828:
    ld	$ra,8($sp)
    # Line 516
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end reallocLeafData

# Function: allocLeaf
# Declared: Line 520 (Source lines: 521-541)
# Address: 0x0dac6838 - 0x0dac6890 (Size: 88 bytes, Frame: 32)
.ent allocLeaf
allocLeaf:
    # Line 521
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 524
    lw	$t9,0($a0)
    # Line 521
    move	$s0,$a1
    sd	$ra,0($sp)
    # Line 524
    jalr	$t9
    li	$a1,20
    bnez	$v0,.L0dac6874
    ld	$ra,0($sp)
    # Line 533
    lw	$v1,20($s0)
    addiu	$v1,$v1,-1
    sw	$v1,20($s0)
    # Line 534
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$s0
    lw	$v0,88($v0)
.L0dac6874:
    # Line 538
    sw	$zero,12($v0)
    # Line 537
    sw	$zero,0($v0)
    # Line 539
    lw	$a0,12($s0)
    # Line 541
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 539
    sw	$a0,16($v0)
.end allocLeaf

# Function: allocBranch
# Declared: Line 548 (Source lines: 549-569)
# Address: 0x0dac6890 - 0x0dac68e4 (Size: 84 bytes, Frame: 32)
.ent allocBranch
allocBranch:
    # Line 549
    addiu	$sp,$sp,-32
    # Line 552
    lw	$t9,0($a0)
    sd	$a1,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a1,24
    bnez	$v0,.L0dac68cc
    ld	$ra,0($sp)
    ld	$v1,8($sp)
    # Line 562
    lw	$a0,16($v1)
    addiu	$a0,$a0,-1
    sw	$a0,16($v1)
    # Line 563
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$v1
    lw	$v0,24($v0)
.L0dac68cc:
    # Line 567
    sw	$zero,0($v0)
    # Line 566
    sw	$zero,12($v0)
    sw	$zero,16($v0)
    sw	$zero,20($v0)
    # Line 569
    jr	$ra
    addiu	$sp,$sp,32
.end allocBranch

# Function: deleteChild
# Declared: Line 577 (Source lines: 579-606)
# Address: 0x0dac68e4 - 0x0dac69cc (Size: 232 bytes, Frame: 48)
.ent deleteChild
deleteChild:
    # Line 583
    lw	$a5,16($a1)
    lw	$a6,4($a0)
    lw	$at,12($a1)
    # Line 579
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 583
    bne	$at,$a2,.L0dac6948
    # Line 579
    move	$s0,$a1
    # Line 589
    lw	$v0,8($s0)
    # Line 586
    sw	$a5,12($s0)
    # Line 587
    lw	$a5,20($s0)
    # Line 588
    sw	$zero,20($s0)
    # Line 589
    sw	$v0,4($s0)
    beqz	$a5,.L0dac699c
    # Line 587
    sw	$a5,16($s0)
    # Line 591
    move	$a0,$a5
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a2,$a6
    sd	$ra,8($sp)
    addiu	$t9,$t9,26272
    bal __glNamesFreeArray
    addiu	$a1,$a3,1
    # Line 592
    sw	$v0,8($s0)
    ld	$s0,0($sp)
    b	.L0dac6988
    ld	$ra,8($sp)
.L0dac6948:
    # Line 593
    bnel	$a5,$a2,.L0dac69a8
    # Line 604
    lw	$a1,8($s0)
    # Line 595
    lw	$a5,20($s0)
    # Line 596
    sw	$zero,20($s0)
    beqz	$a5,.L0dac6990
    # Line 595
    sw	$a5,16($s0)
    # Line 598
    move	$a0,$a5
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a2,$a6
    sd	$ra,8($sp)
    addiu	$t9,$t9,26272
    bal __glNamesFreeArray
    addiu	$a1,$a3,1
    # Line 599
    sw	$v0,8($s0)
    ld	$s0,0($sp)
    ld	$ra,8($sp)
.L0dac6988:
    # Line 606
    jr	$ra
    addiu	$sp,$sp,48
.L0dac6990:
    # Line 600
    sw	$zero,8($s0)
    b	.L0dac6988
    ld	$s0,0($sp)
.L0dac699c:
    # Line 593
    sw	$zero,8($s0)
    b	.L0dac6988
    ld	$s0,0($sp)
.L0dac69a8:
    # Line 604
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s0
    sd	$ra,8($sp)
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 603
    sw	$zero,20($s0)
    ld	$ra,8($sp)
    b	.L0dac6988
    ld	$s0,0($sp)
.end deleteChild

# Function: addChild
# Declared: Line 613 (Source lines: 615-643)
# Address: 0x0dac69cc - 0x0dac6ab0 (Size: 228 bytes, Frame: 192)
.ent addChild
addChild:
    # Line 615
    move	$at,$a3
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 618
    move	$a0,$a1
    # lw $t9, -32720($gp) # &sub_0dac0000
    addiu	$a1,$a2,1
    sd	$ra,0($sp)
    addiu	$t9,$t9,26272
    bal __glNamesFreeArray
    move	$a2,$a3
    # Line 620
    sw	$s0,0($s1)
    lw	$at,8($s0)
    ld	$ra,0($sp)
    sltu	$at,$at,$v0
    beqz	$at,.L0dac6a44
    lw	$a0,16($s0)
    beqzl	$a0,.L0dac6a48
    # Line 626
    lw	$a1,4($s0)
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$v0
    move	$a0,$s0
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 623
    sw	$s1,20($s0)
    ld	$ra,0($sp)
    b	.L0dac6a68
    ld	$s1,16($sp)
.L0dac6a44:
    # Line 626
    lw	$a1,4($s0)
.L0dac6a48:
    sltu	$at,$a1,$v0
    beqzl	$at,.L0dac6a74
    # Line 641
    sw	$v0,4($s0)
    # Line 631
    sw	$v0,8($s0)
    # Line 629
    sw	$a0,20($s0)
    # Line 630
    sw	$s1,16($s0)
    # Line 631
    beqz	$a0,.L0dac6a90
    ld	$s1,16($sp)
.L0dac6a68:
    # Line 643
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac6a74:
    # Line 640
    sw	$a1,8($s0)
    # Line 637
    sw	$a0,20($s0)
    # Line 638
    lw	$v1,12($s0)
    # Line 639
    sw	$s1,12($s0)
    ld	$s1,16($sp)
    b	.L0dac6a68
    # Line 638
    sw	$v1,16($s0)
.L0dac6a90:
    # Line 634
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s0
    move	$a1,$v0
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    ld	$s1,16($sp)
    b	.L0dac6a68
    ld	$ra,0($sp)
.end addChild

# Function: splitParent
# Declared: Line 651 (Source lines: 656-700)
# Address: 0x0dac6ab0 - 0x0dac6c58 (Size: 424 bytes, Frame: 128)
.ent splitParent
splitParent:
    # Line 656
    addiu	$sp,$sp,-128
    sd	$s3,40($sp)
    move	$s3,$a2
    move	$a2,$a4
    sd	$a4,72($sp)
    sd	$a1,56($sp)
    # Line 667
    addiu	$a1,$a3,1
    sd	$a1,64($sp)
    # Line 656
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$a0,48($sp)
    sd	$ra,32($sp)
    move	$ra,$a0
    # Line 666
    lw	$a0,20($a0)
    # Line 664
    lw	$at,16($ra)
    # Line 656
    addiu	$t9,$t9,26272
    # Line 665
    lw	$v0,8($ra)
    # Line 664
    sw	$at,4($sp)
    # Line 663
    lw	$at,4($ra)
    # Line 662
    lw	$ra,12($ra)
    # Line 666
    sw	$a0,8($sp)
    # Line 665
    sw	$v0,20($sp)
    # Line 662
    sw	$ra,0($sp)
    # Line 667
    bal __glNamesFreeArray
    # Line 663
    sw	$at,16($sp)
    # Line 668
    sw	$s3,12($sp)
    # Line 667
    sw	$v0,24($sp)
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 669
    move	$a0,$s3
    ld	$a1,64($sp)
    addiu	$t9,$t9,26272
    bal __glNamesFreeArray
    ld	$a2,72($sp)
    addiu	$a6,$sp,12
    ld	$a0,48($sp)
    ld	$s3,40($sp)
    sw	$v0,28($sp)
    addiu	$a7,$sp,16
    addiu	$a2,$a7,12
    lw	$a5,0($a2)
    lw	$a4,-4($a2)
    sltu	$at,$a5,$a4
    beqzl	$at,.L0dac6b78
    # Line 672
    addiu	$a2,$a2,-4
    # Line 678
    sw	$a5,-4($a2)
    # Line 675
    lw	$v1,0($a6)
    # Line 677
    lw	$v0,-4($a6)
    # Line 676
    sw	$a4,0($a2)
    # Line 679
    sw	$v1,-4($a6)
    # Line 677
    sw	$v0,0($a6)
    # Line 672
    addiu	$a2,$a2,-4
.L0dac6b78:
    beq	$a2,$a7,.L0dac6be8
    # Line 691
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 669
    lw	$a4,-4($a2)
    lw	$a5,0($a2)
    sltu	$a3,$a5,$a4
    beqzl	$a3,.L0dac6bb0
    # Line 672
    addiu	$a2,$a2,-4
    # Line 678
    sw	$a5,-4($a2)
    # Line 675
    lw	$v0,-4($a6)
    # Line 677
    lw	$at,-8($a6)
    # Line 676
    sw	$a4,0($a2)
    # Line 679
    sw	$v0,-8($a6)
    # Line 677
    sw	$at,-4($a6)
    # Line 672
    addiu	$a2,$a2,-4
.L0dac6bb0:
    beq	$a2,$a7,.L0dac6be8
    # Line 691
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 669
    lw	$a4,-4($a2)
    lw	$a5,0($a2)
    sltu	$v1,$a5,$a4
    beqz	$v1,.L0dac6be8
    # Line 691
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 678
    sw	$a5,-4($a2)
    # Line 675
    lw	$at,-8($a6)
    # Line 677
    lw	$a3,-12($a6)
    # Line 676
    sw	$a4,0($a2)
    # Line 679
    sw	$at,-12($a6)
    # Line 677
    sw	$a3,-8($a6)
    # Line 691
    # lw $t9, -32720($gp) # &sub_0dac0000
.L0dac6be8:
    # Line 688
    sw	$zero,20($a0)
    # Line 691
    addiu	$t9,$t9,26340
    # Line 684
    lw	$a1,16($sp)
    # Line 685
    lw	$v1,0($sp)
    # Line 687
    lw	$v0,4($sp)
    # Line 684
    sw	$a1,4($a0)
    # Line 686
    lw	$a1,20($sp)
    # Line 687
    sw	$v0,16($a0)
    # Line 685
    sw	$v1,12($a0)
    # Line 686
    sw	$a1,8($a0)
    # Line 689
    sw	$a0,0($v1)
    # Line 691
    bal __glNamesFreeArray
    # Line 690
    sw	$a0,0($v0)
    # Line 693
    lw	$a0,24($sp)
    # Line 694
    lw	$v0,8($sp)
    # Line 693
    ld	$ra,56($sp)
    # Line 696
    lw	$at,12($sp)
    # Line 695
    lw	$v1,28($sp)
    # Line 697
    sw	$zero,20($ra)
    # Line 696
    sw	$at,16($ra)
    # Line 695
    sw	$v1,8($ra)
    # Line 694
    sw	$v0,12($ra)
    # Line 693
    sw	$a0,4($ra)
    # Line 698
    sw	$ra,0($v0)
    # Line 699
    sw	$ra,0($at)
    # Line 700
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end splitParent

# Function: buildParent
# Declared: Line 706 (Source lines: 708-726)
# Address: 0x0dac6c58 - 0x0dac6d08 (Size: 176 bytes, Frame: 208)
.ent buildParent
buildParent:
    # Line 708
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$s3,24($sp)
    move	$s3,$a3
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    move	$ra,$a0
    move	$a0,$a1
    sd	$a1,8($sp)
    # Line 711
    sw	$ra,0($a1)
    # Line 708
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 713
    move	$a1,$zero
    # Line 712
    sw	$ra,0($a2)
    # Line 708
    addiu	$t9,$t9,26272
    # Line 713
    bal __glNamesFreeArray
    move	$a2,$a3
    move	$s1,$v0
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 714
    move	$a0,$s0
    move	$a1,$zero
    addiu	$t9,$t9,26272
    bal __glNamesFreeArray
    move	$a2,$s3
    ld	$a1,8($sp)
    ld	$a0,0($sp)
    ld	$s3,24($sp)
    sltu	$at,$s1,$v0
    beqz	$at,.L0dac6ce8
    ld	$ra,16($sp)
    # Line 719
    sw	$v0,8($a0)
    # Line 718
    sw	$s0,16($a0)
    # Line 717
    sw	$s1,4($a0)
    # Line 719
    b	.L0dac6cf8
    # Line 716
    sw	$a1,12($a0)
.L0dac6ce8:
    # Line 724
    sw	$s1,8($a0)
    # Line 723
    sw	$a1,16($a0)
    # Line 722
    sw	$v0,4($a0)
    # Line 721
    sw	$s0,12($a0)
.L0dac6cf8:
    # Line 726
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end buildParent

# Function: insertLeaf
# Declared: Line 731 (Source lines: 733-811)
# Address: 0x0dac6d08 - 0x0dac6fa8 (Size: 672 bytes, Frame: 128)
.ent insertLeaf
insertLeaf:
    # Line 741
    lw	$v0,8($a2)
    # Line 733
    addiu	$sp,$sp,-128
    sd	$a0,8($sp)
    sd	$s7,16($sp)
    sd	$s0,24($sp)
    # Line 743
    lw	$s0,0($a1)
    # Line 733
    move	$s7,$a1
    sd	$s2,32($sp)
    # Line 743
    beqz	$s0,.L0dac6f5c
    # Line 742
    lw	$s2,4($a1)
    # Line 751
    move	$a3,$s2
    sd	$s1,56($sp)
    blez	$s2,.L0dac6d78
    move	$s1,$zero
    andi	$at,$s2,0x1
    beqz	$at,.L0dac6d64
    sra	$a5,$a3,0x1
    lw	$v1,4($s0)
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0dac6f44
    # Line 764
    addiu	$s1,$s1,1
    # Line 754
    lw	$s0,12($s0)
.L0dac6d60:
    sra	$a5,$a3,0x1
.L0dac6d64:
    bnezl	$a5,.L0dac6e88
    # Line 751
    lw	$v1,4($s0)
    sd	$s3,80($sp)
.L0dac6d70:
    sd	$s4,64($sp)
    # Line 764
    move	$s1,$s2
.L0dac6d78:
    sd	$s4,64($sp)
    # Line 772
    move	$s4,$a2
    sd	$s3,80($sp)
    # Line 773
    lw	$s3,0($s0)
    sd	$s6,72($sp)
    # Line 775
    beqz	$s3,.L0dac6f78
    addiu	$s1,$s1,-1
    sd	$ra,40($sp)
    la	$s6,sub_0dac0000
    sd	$s8,48($sp)
    la	$s8,sub_0dac0000
    sd	$s5,0($sp)
    addiu	$s6,$s6,26768
    addiu	$s8,$s8,27312
.L0dac6db0:
    lw	$at,20($s3)
    beqz	$at,.L0dac6ef8
    ld	$a0,8($sp)
    # Line 788
    move	$a1,$s7
    bal __glNamesFreeArray
    move	$t9,$s6
    move	$s5,$v0
    # Line 789
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s4
    move	$a4,$s2
    move	$a3,$s1
    bal __glNamesFreeArray
    move	$t9,$s8
    # Line 798
    addiu	$s1,$s1,-1
    # Line 796
    move	$s0,$s3
    # Line 797
    lw	$s3,0($s3)
    # Line 798
    bnez	$s3,.L0dac6db0
    # Line 795
    move	$s4,$s5
.L0dac6dfc:
    ld	$a0,8($sp)
    # Line 807
    move	$a1,$s7
    bal __glNamesFreeArray
    move	$t9,$s6
    move	$s5,$v0
    # Line 808
    move	$a0,$v0
    move	$a1,$s0
    move	$a2,$s4
    move	$a3,$s2
    ld	$s8,48($sp)
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$s3,80($sp)
    ld	$s6,72($sp)
    addiu	$t9,$t9,27736
    bal __glNamesFreeArray
    ld	$s1,56($sp)
    # Line 811
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    # Line 810
    lw	$ra,4($s7)
    # Line 811
    ld	$s4,64($sp)
    # Line 809
    sw	$s5,0($s7)
    # Line 810
    addiu	$ra,$ra,1
    sw	$ra,4($s7)
    # Line 811
    ld	$ra,40($sp)
    ld	$s5,0($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac6e6c:
    # Line 754
    sltu	$at,$at,$v0
    bnezl	$at,.L0dac6ed8
    # Line 756
    lw	$a1,20($s0)
    lw	$s0,16($s0)
.L0dac6e7c:
    # Line 764
    beql	$s2,$s1,.L0dac6d70
    sd	$s3,80($sp)
    # Line 751
    lw	$v1,4($s0)
.L0dac6e88:
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0dac6eb0
    # Line 764
    addiu	$s1,$s1,2
    # Line 754
    lw	$s0,12($s0)
.L0dac6e98:
    # Line 751
    lw	$a5,4($s0)
    sltu	$a5,$a5,$v0
    bnezl	$a5,.L0dac6e6c
    # Line 754
    lw	$at,8($s0)
    b	.L0dac6e7c
    lw	$s0,12($s0)
.L0dac6eb0:
    lw	$a6,8($s0)
    sltu	$a6,$a6,$v0
    bnezl	$a6,.L0dac6ec8
    # Line 756
    lw	$a1,20($s0)
    b	.L0dac6e98
    lw	$s0,16($s0)
.L0dac6ec8:
    beqz	$a1,.L0dac6ee8
    nop
    # Line 759
    b	.L0dac6e98
    move	$s0,$a1
.L0dac6ed8:
    # Line 756
    beqz	$a1,.L0dac6ef0
    nop
    # Line 759
    b	.L0dac6e7c
    move	$s0,$a1
.L0dac6ee8:
    b	.L0dac6e98
    # Line 761
    lw	$s0,16($s0)
.L0dac6ef0:
    b	.L0dac6e7c
    lw	$s0,16($s0)
.L0dac6ef8:
    # Line 779
    move	$a0,$s3
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s4
    move	$a2,$s1
    addiu	$t9,$t9,27084
    bal __glNamesFreeArray
    move	$a3,$s2
    # Line 780
    ld	$s0,24($sp)
    ld	$s1,56($sp)
    ld	$s2,32($sp)
    ld	$s3,80($sp)
    ld	$s4,64($sp)
    ld	$s5,0($sp)
    ld	$s6,72($sp)
    ld	$ra,40($sp)
    ld	$s7,16($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac6f44:
    # Line 754
    lw	$at,8($s0)
    sltu	$at,$at,$v0
    bnezl	$at,.L0dac6f90
    # Line 756
    lw	$a1,20($s0)
    b	.L0dac6d60
    lw	$s0,16($s0)
.L0dac6f5c:
    # Line 748
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    # Line 747
    sw	$a2,0($s7)
    # Line 746
    sw	$zero,4($s7)
    # Line 748
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac6f78:
    # Line 798
    la	$s6,sub_0dac0000
    sd	$ra,40($sp)
    sd	$s5,0($sp)
    sd	$s8,48($sp)
    b	.L0dac6dfc
    addiu	$s6,$s6,26768
.L0dac6f90:
    # Line 756
    beqz	$a1,.L0dac6fa0
    nop
    # Line 759
    b	.L0dac6d60
    move	$s0,$a1
.L0dac6fa0:
    b	.L0dac6d60
    # Line 761
    lw	$s0,16($s0)
.end insertLeaf

# Function: deleteLeaf
# Declared: Line 817 (Source lines: 819-886)
# Address: 0x0dac6fa8 - 0x0dac7210 (Size: 616 bytes, Frame: 128)
.ent deleteLeaf
deleteLeaf:
    # Line 819
    addiu	$sp,$sp,-128
    sd	$a0,48($sp)
    sd	$s8,80($sp)
    move	$s8,$a1
    sd	$s0,72($sp)
    # Line 827
    lw	$s0,0($a2)
    sd	$s5,64($sp)
    # Line 826
    lw	$s5,4($a1)
    sd	$s7,56($sp)
    # Line 827
    bnez	$s0,.L0dac6ff0
    # Line 826
    move	$s7,$s5
    # Line 831
    ld	$s0,72($sp)
    ld	$s5,64($sp)
    ld	$s7,56($sp)
    # Line 830
    sw	$zero,0($s8)
    # Line 831
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac6ff0:
    sd	$s2,24($sp)
    # Line 834
    move	$a0,$s8
    move	$a1,$s0
    sd	$ra,32($sp)
    sd	$s1,40($sp)
    # Line 831
    la	$s1,sub_0dac0000
    # Line 834
    addiu	$a3,$s5,-1
    sd	$a3,88($sp)
    # Line 831
    addiu	$s1,$s1,26852
    # Line 834
    bal __glNamesFreeArray
    move	$t9,$s1
    sd	$s6,8($sp)
    sd	$s4,0($sp)
    # Line 839
    lw	$at,16($s0)
    ld	$v0,88($sp)
    sd	$s3,16($sp)
    bnez	$at,.L0dac7104
    move	$s2,$v0
    addiu	$s3,$v0,-1
    sd	$s4,0($sp)
    b	.L0dac7084
    addiu	$s6,$s2,1
.L0dac7048:
    # Line 868
    lw	$v1,20($s0)
    bnez	$v1,.L0dac7134
    # Line 883
    addiu	$s6,$s6,-1
    # Line 881
    move	$a0,$s0
    move	$a1,$s4
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a2,$s2
    # Line 883
    addiu	$s2,$s2,-1
    addiu	$t9,$t9,27084
    # Line 881
    bal __glNamesFreeArray
    move	$a3,$s7
    # Line 884
    lw	$at,16($s1)
    # Line 883
    addiu	$s3,$s3,-1
    # Line 884
    bnez	$at,.L0dac7104
    move	$s0,$s1
.L0dac7084:
    # Line 845
    lw	$s1,0($s0)
    beqz	$s1,.L0dac71b8
    # Line 842
    lw	$s4,12($s0)
    # Line 859
    move	$a0,$s8
    move	$a1,$s1
    move	$a2,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a3,$s3
    la	$s5,sub_0dac0000
    addiu	$t9,$t9,26852
    bal __glNamesFreeArray
    addiu	$s5,$s5,25084
    ld	$a0,48($sp)
    # Line 860
    move	$a1,$s0
    bal __glNamesNewArray
    move	$t9,$s5
    # Line 863
    move	$a0,$s4
    la	$s0,sub_0dac0000
    move	$a1,$s6
    move	$a2,$s7
    addiu	$s0,$s0,26272
    bal __glNamesFreeArray
    move	$t9,$s0
    # Line 864
    lw	$a1,16($s1)
    beqz	$a1,.L0dac70fc
    # Line 863
    move	$s5,$v0
    # Line 864
    lw	$at,4($s1)
    sltu	$at,$at,$s5
    bnez	$at,.L0dac7048
    # Line 868
    move	$s0,$a1
.L0dac70fc:
    # Line 866
    b	.L0dac7048
    lw	$s0,12($s1)
.L0dac7104:
    # Line 886
    ld	$s0,72($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    ld	$s4,0($sp)
    ld	$s5,64($sp)
    ld	$s6,8($sp)
    ld	$ra,32($sp)
    ld	$s7,56($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7134:
    # Line 873
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$a0,48($sp)
    addiu	$t9,$t9,26768
    bal __glNamesFreeArray
    move	$a1,$s8
    move	$s5,$v0
    # Line 874
    move	$a0,$s0
    move	$a1,$v0
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a2,$s4
    move	$a3,$s2
    addiu	$t9,$t9,27312
    bal __glNamesFreeArray
    move	$a4,$s7
    # Line 876
    move	$a0,$s1
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s5
    move	$a2,$s3
    addiu	$t9,$t9,27084
    bal __glNamesFreeArray
    move	$a3,$s7
    # Line 877
    ld	$s0,72($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    ld	$s4,0($sp)
    ld	$s5,64($sp)
    ld	$s6,8($sp)
    ld	$ra,32($sp)
    ld	$s7,56($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac71b8:
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$a0,48($sp)
    addiu	$t9,$t9,25084
    # Line 852
    bal __glNamesNewArray
    move	$a1,$s0
    # Line 856
    ld	$s0,72($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    # Line 853
    sw	$s4,0($s8)
    # Line 854
    sw	$zero,0($s4)
    # Line 856
    ld	$s5,64($sp)
    # Line 855
    lw	$ra,4($s8)
    # Line 856
    ld	$s6,8($sp)
    ld	$s7,56($sp)
    # Line 855
    addiu	$ra,$ra,-1
    sw	$ra,4($s8)
    ld	$ra,32($sp)
    # Line 856
    ld	$s4,0($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end deleteLeaf

# Function: resizeLeaf
# Declared: Line 893 (Source lines: 895-924)
# Address: 0x0dac7210 - 0x0dac72f8 (Size: 232 bytes, Frame: 208)
.ent resizeLeaf
resizeLeaf:
    # Line 899
    lw	$a5,4($a1)
    # Line 902
    sw	$a2,4($a1)
    # Line 895
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    # Line 900
    lw	$at,8($a1)
    # Line 895
    move	$s0,$a1
    sd	$s1,8($sp)
    # Line 902
    bne	$a3,$at,.L0dac72b8
    # Line 895
    move	$s1,$a2
.L0dac7234:
    # Line 905
    lw	$v0,12($s0)
    # Line 907
    subu	$a6,$s1,$a5
    subu	$a5,$a3,$s1
    # Line 905
    beqz	$v0,.L0dac72a8
    # Line 907
    sll	$a2,$a6,0x2
    beqz	$a6,.L0dac7280
    addiu	$a5,$a5,1
    beqz	$a5,.L0dac7280
    sll	$a3,$a5,0x2
    move	$a1,$zero
.L0dac725c:
    # Line 920
    lw	$v0,12($s0)
    addu	$at,$v0,$a2
    # Line 916
    addiu	$a2,$a2,4
    # Line 920
    addu	$v0,$v0,$a1
    lw	$at,0($at)
    # Line 916
    addiu	$a1,$a1,4
    bne	$a1,$a3,.L0dac725c
    # Line 920
    sw	$at,0($v0)
    sd	$ra,24($sp)
.L0dac7280:
    # Line 923
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$ra,24($sp)
    addiu	$t9,$t9,26588
    bal __glNamesFreeArray
    move	$a1,$s0
    ld	$ra,24($sp)
    # Line 924
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac72a8:
    # Line 907
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac72b8:
    sd	$a3,0($sp)
    sd	$a5,32($sp)
    # Line 905
    move	$a1,$a3
    sd	$a0,40($sp)
    move	$a0,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$ra,24($sp)
    move	$ra,$a3
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 904
    sw	$a3,8($s0)
    ld	$a5,32($sp)
    ld	$a0,40($sp)
    ld	$a3,0($sp)
    b	.L0dac7234
    ld	$ra,24($sp)
.end resizeLeaf

# Function: prevLeaf
# Declared: Line 929 (Source lines: 934-981)
# Address: 0x0dac72f8 - 0x0dac7408 (Size: 272 bytes, Frame: 0)
.ent prevLeaf
prevLeaf:
    # Line 934
    lw	$v0,0($a0)
    # Line 940
    li	$a3,-1
    # Line 934
    beqz	$v0,.L0dac73e4
    # Line 937
    move	$a4,$a0
.L0dac7308:
    # Line 940
    lw	$at,20($v0)
    beq	$at,$a4,.L0dac7330
    lw	$a0,16($v0)
    # Line 947
    beq	$a0,$a4,.L0dac73d0
    # Line 961
    move	$a4,$v0
    # Line 962
    lw	$v0,0($v0)
    # Line 963
    bnez	$v0,.L0dac7308
    addiu	$a3,$a3,-1
.L0dac7328:
    # Line 965
    jr	$ra
    move	$v0,$zero
.L0dac7330:
    # Line 945
    move	$v0,$a0
    # Line 965
    beqz	$a0,.L0dac7328
    # Line 946
    addiu	$a3,$a3,1
.L0dac733c:
    # Line 965
    beqz	$a3,.L0dac736c
    negu	$a4,$a3
    andi	$v1,$a4,0x1
    beqz	$v1,.L0dac7364
    sra	$a1,$a4,0x1
    lw	$a0,20($v0)
    beqz	$a0,.L0dac73ec
    # Line 978
    addiu	$a3,$a3,1
    # Line 972
    move	$v0,$a0
.L0dac7360:
    sra	$a1,$a4,0x1
.L0dac7364:
    bnezl	$a1,.L0dac73a0
    # Line 965
    lw	$a0,20($v0)
.L0dac736c:
    # Line 981
    jr	$ra
    nop
.L0dac7374:
    # Line 972
    lw	$a0,16($v0)
    beqz	$a0,.L0dac73c0
    nop
    # Line 974
    move	$v0,$a0
.L0dac7384:
    # Line 965
    lw	$a0,20($v0)
    beqzl	$a0,.L0dac73b0
    # Line 972
    lw	$a0,16($v0)
    move	$v0,$a0
.L0dac7394:
    # Line 978
    beqz	$a3,.L0dac736c
    nop
    # Line 965
    lw	$a0,20($v0)
.L0dac73a0:
    beqz	$a0,.L0dac7374
    # Line 978
    addiu	$a3,$a3,2
    # Line 972
    b	.L0dac7384
    move	$v0,$a0
.L0dac73b0:
    beqz	$a0,.L0dac73c8
    nop
    # Line 974
    b	.L0dac7394
    move	$v0,$a0
.L0dac73c0:
    b	.L0dac7384
    # Line 976
    lw	$v0,12($v0)
.L0dac73c8:
    b	.L0dac7394
    lw	$v0,12($v0)
.L0dac73d0:
    # Line 950
    lw	$v0,12($v0)
    # Line 965
    bnez	$v0,.L0dac733c
    # Line 951
    addiu	$a3,$a3,1
    b	.L0dac7328
    nop
.L0dac73e4:
    # Line 935
    jr	$ra
    move	$v0,$zero
.L0dac73ec:
    # Line 972
    lw	$a0,16($v0)
    beqz	$a0,.L0dac7400
    nop
    # Line 974
    b	.L0dac7360
    move	$v0,$a0
.L0dac7400:
    b	.L0dac7360
    # Line 976
    lw	$v0,12($v0)
.end prevLeaf

# Function: firstLeaf
# Declared: Line 987 (Source lines: 992-1004)
# Address: 0x0dac7408 - 0x0dac7438 (Size: 48 bytes, Frame: 0)
.ent firstLeaf
firstLeaf:
    # Line 994
    lw	$v0,0($a0)
    # Line 993
    move	$a3,$zero
    # Line 994
    beqz	$v0,.L0dac7430
    # Line 992
    lw	$a4,4($a0)
    # Line 997
    beqz	$a4,.L0dac7428
.L0dac741c:
    # Line 1002
    addiu	$a3,$a3,1
    bne	$a4,$a3,.L0dac741c
    # Line 1001
    lw	$v0,12($v0)
.L0dac7428:
    # Line 1004
    jr	$ra
    nop
.L0dac7430:
    # Line 997
    jr	$ra
    move	$v0,$zero
.end firstLeaf

# Function: nextLeaf
# Declared: Line 1010 (Source lines: 1015-1061)
# Address: 0x0dac7438 - 0x0dac74c0 (Size: 136 bytes, Frame: 0)
.ent nextLeaf
nextLeaf:
    # Line 1015
    lw	$v0,0($a0)
    # Line 1021
    li	$a3,-1
    # Line 1015
    beqz	$v0,.L0dac74b8
    # Line 1018
    move	$a4,$a0
.L0dac7448:
    # Line 1021
    lw	$at,12($v0)
    beq	$at,$a4,.L0dac74a4
    lw	$a0,16($v0)
    # Line 1028
    bne	$a0,$a4,.L0dac7490
    # Line 1047
    move	$a4,$v0
    # Line 1028
    lw	$a0,20($v0)
    beqz	$a0,.L0dac7490
    # Line 1047
    move	$a4,$v0
    # Line 1035
    move	$v0,$a0
    # Line 1051
    beqz	$a0,.L0dac749c
    # Line 1036
    addiu	$a3,$a3,1
.L0dac7474:
    # Line 1051
    beqz	$a3,.L0dac7484
.L0dac7478:
    # Line 1058
    addiu	$a3,$a3,1
    bnez	$a3,.L0dac7478
    # Line 1057
    lw	$v0,12($v0)
.L0dac7484:
    # Line 1061
    jr	$ra
    nop
    # Line 1047
    move	$a4,$v0
.L0dac7490:
    # Line 1048
    lw	$v0,0($v0)
    # Line 1049
    bnez	$v0,.L0dac7448
    addiu	$a3,$a3,-1
.L0dac749c:
    # Line 1051
    jr	$ra
    move	$v0,$zero
.L0dac74a4:
    # Line 1026
    move	$v0,$a0
    # Line 1051
    bnez	$a0,.L0dac7474
    # Line 1027
    addiu	$a3,$a3,1
    b	.L0dac749c
    nop
.L0dac74b8:
    # Line 1016
    jr	$ra
    move	$v0,$zero
.end nextLeaf

# Function: mergeLeaves
# Declared: Line 1070 (Source lines: 1072-1149)
# Address: 0x0dac74c0 - 0x0dac7708 (Size: 584 bytes, Frame: 224)
.ent mergeLeaves
mergeLeaves:
    # Line 1072
    addiu	$sp,$sp,-96
    sd	$s2,16($sp)
    move	$s2,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s1,24($sp)
    lw	$a5,4($a2)
    lw	$at,12($a1)
    lw	$a6,4($a1)
    move	$s1,$a2
    bnez	$at,.L0dac7518
    sltu	$a4,$a6,$a5
    beqz	$a4,.L0dac75e4
    # Line 1082
    move	$a0,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$ra,40($sp)
    # Line 1081
    lw	$a1,8($s1)
    # Line 1082
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 1081
    sw	$a1,8($s0)
    b	.L0dac75f0
    # Line 1086
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
.L0dac7518:
    # Line 1087
    lw	$t1,8($s1)
    lw	$t2,8($s0)
    sd	$ra,40($sp)
    subu	$t0,$t1,$a5
    subu	$a7,$t2,$a6
    addiu	$a7,$a7,1
    beqz	$a4,.L0dac761c
    addiu	$t0,$t0,1
    sd	$a7,0($sp)
    sd	$t0,48($sp)
    sd	$t2,8($sp)
    # Line 1103
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s0
    move	$a0,$s2
    addiu	$t9,$t9,26588
    bal __glNamesFreeArray
    # Line 1102
    sw	$t1,8($s0)
    ld	$ra,40($sp)
    # Line 1103
    beqz	$v0,.L0dac76c8
    ld	$a0,48($sp)
    # Line 1110
    beqz	$a0,.L0dac75a0
    sll	$a4,$a0,0x2
    ld	$a2,0($sp)
    move	$a1,$zero
    sll	$a2,$a2,0x2
.L0dac757c:
    # Line 1113
    lw	$at,12($s0)
    lw	$a3,12($s1)
    addu	$at,$at,$a2
    # Line 1112
    addiu	$a2,$a2,4
    # Line 1113
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
    # Line 1112
    addiu	$a1,$a1,4
    bne	$a1,$a4,.L0dac757c
    # Line 1113
    sw	$a3,0($at)
.L0dac75a0:
    # Line 1116
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    move	$a1,$s1
    # Line 1118
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s0
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    lw	$a1,8($s0)
    ld	$ra,40($sp)
.L0dac75cc:
    # Line 1149
    li	$v0,1
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac75e4:
    sd	$ra,40($sp)
    # Line 1084
    sw	$a5,4($s0)
    # Line 1086
    # lw $t9, -32720($gp) # &sub_0dac0000
.L0dac75f0:
    move	$a0,$s2
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    move	$a1,$s1
    # Line 1087
    li	$v0,1
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac761c:
    sd	$t0,0($sp)
    sd	$a7,48($sp)
    sd	$t1,8($sp)
    # Line 1129
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s1
    move	$a0,$s2
    addiu	$t9,$t9,26588
    bal __glNamesFreeArray
    # Line 1128
    sw	$t2,8($s1)
    ld	$ra,40($sp)
    # Line 1129
    beqz	$v0,.L0dac76e8
    ld	$a0,48($sp)
    # Line 1136
    beqz	$a0,.L0dac7684
    sll	$a4,$a0,0x2
    ld	$a2,0($sp)
    move	$a1,$zero
    sll	$a2,$a2,0x2
.L0dac7660:
    # Line 1139
    lw	$at,12($s1)
    lw	$a3,12($s0)
    addu	$at,$at,$a2
    # Line 1138
    addiu	$a2,$a2,4
    # Line 1139
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
    # Line 1138
    addiu	$a1,$a1,4
    bne	$a1,$a4,.L0dac7660
    # Line 1139
    sw	$a3,0($at)
.L0dac7684:
    # Line 1142
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,24964
    bal __glNamesNewArray
    lw	$a1,12($s0)
    # Line 1143
    lw	$ra,4($s1)
    # Line 1147
    move	$a1,$s1
    # Line 1143
    sw	$ra,4($s0)
    # Line 1147
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1145
    lw	$ra,12($s1)
    # Line 1147
    move	$a0,$s2
    addiu	$t9,$t9,24996
    # Line 1145
    sw	$ra,12($s0)
    # Line 1147
    bal __glNamesNewArray
    # Line 1146
    sw	$zero,12($s1)
    b	.L0dac75cc
    ld	$ra,40($sp)
.L0dac76c8:
    # Line 1110
    move	$v0,$zero
    ld	$at,8($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    # Line 1109
    sw	$at,8($s0)
    # Line 1110
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac76e8:
    ld	$v0,8($sp)
    # Line 1136
    ld	$s0,32($sp)
    ld	$s2,16($sp)
    # Line 1135
    sw	$v0,8($s1)
    # Line 1136
    move	$v0,$zero
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end mergeLeaves

# Function: mergeLeaf
# Declared: Line 1155 (Source lines: 1157-1199)
# Address: 0x0dac7708 - 0x0dac7900 (Size: 504 bytes, Frame: 224)
.ent mergeLeaf
mergeLeaf:
    # Line 1157
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    sd	$a1,0($sp)
    sd	$s1,32($sp)
    move	$s1,$a2
    # Line 1160
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$a0,24($sp)
    sd	$ra,40($sp)
    addiu	$t9,$t9,29752
    bal __glNamesFreeArray
    move	$a0,$a2
    move	$s0,$v0
    beqz	$v0,.L0dac7790
    move	$a5,$v0
    lw	$v1,8($s1)
    lw	$at,4($s0)
    addiu	$v1,$v1,1
    bne	$at,$v1,.L0dac7844
    nop
    lw	$a6,12($s1)
    beqz	$a6,.L0dac784c
    lw	$v0,12($s0)
    # Line 1164
    beqz	$v0,.L0dac78d0
    nop
.L0dac7768:
    beqz	$a6,.L0dac78c8
    nop
    lw	$a4,4($s1)
    lw	$a3,8($s0)
    subu	$a3,$a3,$a4
    sltiu	$a3,$a3,1024
    bnez	$a3,.L0dac7854
    sd	$a5,16($sp)
    b	.L0dac7794
    # Line 1180
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
.L0dac7790:
    # lw $t9, -32720($gp) # &sub_0dac0000
.L0dac7794:
    addiu	$t9,$t9,29432
    bal __glNamesFreeArray
    move	$a0,$s1
    move	$s0,$v0
    beqz	$v0,.L0dac7830
    move	$a5,$v0
    lw	$v1,8($s0)
    lw	$at,4($s1)
    addiu	$v1,$v1,1
    bne	$at,$v1,.L0dac7834
    ld	$ra,40($sp)
    lw	$v0,12($s0)
    beqz	$v0,.L0dac78b8
    lw	$a6,12($s1)
    # Line 1184
    beqz	$a6,.L0dac7834
    ld	$ra,40($sp)
.L0dac77d4:
    beqz	$v0,.L0dac7834
    ld	$ra,40($sp)
    lw	$a4,4($s0)
    lw	$a3,8($s1)
    subu	$a3,$a3,$a4
    sltiu	$a3,$a3,1024
    beqz	$a3,.L0dac7830
    sd	$a5,8($sp)
    sd	$a5,8($sp)
.L0dac77f8:
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1188
    ld	$a0,24($sp)
    ld	$a1,0($sp)
    addiu	$t9,$t9,28584
    bal __glNamesFreeArray
    move	$a2,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1189
    ld	$a0,24($sp)
    move	$a1,$s1
    addiu	$t9,$t9,29888
    bal __glNamesFreeArray
    move	$a2,$s0
    beqz	$v0,.L0dac78d8
    ld	$s0,48($sp)
.L0dac7830:
    ld	$ra,40($sp)
.L0dac7834:
    # Line 1199
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac7844:
    b	.L0dac7794
    # Line 1180
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
.L0dac784c:
    # Line 1164
    bnez	$v0,.L0dac7768
    nop
.L0dac7854:
    sd	$a5,16($sp)
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1168
    ld	$a0,24($sp)
    ld	$a1,0($sp)
    # Line 1164
    addiu	$t9,$t9,28584
    # Line 1168
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1169
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$a0,24($sp)
    move	$a1,$s1
    addiu	$t9,$t9,29888
    bal __glNamesFreeArray
    move	$a2,$s0
    bnez	$v0,.L0dac7790
    ld	$s0,48($sp)
    # Line 1173
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$a0,24($sp)
    ld	$a1,0($sp)
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    ld	$a2,16($sp)
    ld	$ra,40($sp)
    # Line 1174
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac78b8:
    # Line 1184
    beqzl	$a6,.L0dac77f8
    sd	$a5,8($sp)
    b	.L0dac77d4
    nop
.L0dac78c8:
    b	.L0dac7794
    # Line 1180
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
.L0dac78d0:
    b	.L0dac7794
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
.L0dac78d8:
    # Line 1193
    # lw $t9, -32720($gp) # &sub_0dac0000
    ld	$a0,24($sp)
    ld	$a1,0($sp)
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    ld	$a2,8($sp)
    ld	$ra,40($sp)
    # Line 1194
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end mergeLeaf

# Function: __glNamesNewData
# Declared: Line 1201 (Source lines: 1203-1356)
# Address: 0x0dac7900 - 0x0dac7e98 (Size: 1432 bytes, Frame: 128)
.globl __glNamesNewData
.ent __glNamesNewData
__glNamesNewData:
    # Line 1203
    addiu	$sp,$sp,-128
    sd	$s0,80($sp)
    sd	$s4,56($sp)
    move	$s4,$a2
    # Line 1208
    li	$a2,1
    sd	$s3,64($sp)
    # Line 1203
    move	$s3,$a3
    sd	$s2,72($sp)
    move	$s2,$a0
    sd	$s1,32($sp)
    sd	$gp,40($sp)
    sd	$ra,48($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,-152
    addu	$gp,$t9,$ra
    # Line 1208
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1203
    move	$s1,$a1
    # Line 1208
    move	$a1,$s4
    addiu	$t9,$t9,25756
    bal __glNamesFreeArray
    move	$a0,$s1
    # Line 1214
    beqz	$v0,.L0dac7968
    # Line 1208
    move	$s0,$v0
    # Line 1214
    lw	$at,12($v0)
    bnez	$at,.L0dac799c
    nop
.L0dac7968:
    # Line 1218
    lw	$v1,16($s1)
    li	$a4,16
    bne	$v1,$a4,.L0dac7980
    li	$at,3
    lw	$a5,20($s1)
    beq	$a5,$at,.L0dac799c
.L0dac7980:
    # Line 1220
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,25976
    bal __glNamesFreeArray
    move	$a1,$s1
    beqz	$v0,.L0dac7df0
    # Line 1221
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dac799c:
    # Line 1218
    beqz	$s0,.L0dac7b34
    # Line 1231
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1247
    lw	$v0,12($s0)
    beqz	$v0,.L0dac7a34
    nop
    # Line 1252
    lw	$a2,16($s0)
    lw	$s1,4($s0)
    lw	$at,4($a2)
    subu	$s1,$s4,$s1
    sll	$s1,$s1,0x2
    addu	$a1,$v0,$s1
    lw	$a1,0($a1)
    bnel	$at,$a1,.L0dac7a14
    # Line 1255
    lw	$t9,12($a2)
.L0dac79d4:
    # Line 1262
    ld	$s2,72($sp)
    ld	$s4,56($sp)
    # Line 1256
    beqz	$s3,.L0dac79f8
    ld	$gp,40($sp)
    # Line 1260
    li	$at,1
    # Line 1259
    lw	$v1,12($s0)
    addu	$v1,$v1,$s1
    sw	$s3,0($v1)
    # Line 1260
    sw	$at,0($s3)
.L0dac79f8:
    # Line 1262
    li	$v0,1
    ld	$s0,80($sp)
    ld	$ra,48($sp)
    ld	$s1,32($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7a14:
    # Line 1255
    jal	sub_0dac0000
    move	$a0,$s2
    # Line 1256
    lw	$a4,16($s0)
    lw	$a5,12($s0)
    lw	$a4,4($a4)
    addu	$a5,$a5,$s1
    b	.L0dac79d4
    sw	$a4,0($a5)
.L0dac7a34:
    # Line 1262
    beqz	$s3,.L0dac7d38
    # Line 1268
    li	$v0,1
    # Line 1279
    lw	$a2,4($s0)
    # Line 1278
    addiu	$a0,$s4,-8
    # Line 1279
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0dac7a5c
    # Line 1278
    move	$v0,$a0
    # Line 1279
    sltu	$at,$s4,$a0
    beqzl	$at,.L0dac7a64
    # Line 1283
    lw	$a3,8($s0)
.L0dac7a5c:
    # Line 1280
    move	$v0,$a2
    # Line 1283
    lw	$a3,8($s0)
.L0dac7a64:
    # Line 1284
    subu	$a5,$v0,$a2
    # Line 1282
    addiu	$a1,$v0,15
    # Line 1283
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0dac7a84
    # Line 1282
    move	$a0,$a1
    # Line 1283
    sltu	$a4,$a1,$v0
    beqzl	$a4,.L0dac7a8c
    # Line 1284
    sltiu	$a5,$a5,16
.L0dac7a84:
    move	$a0,$a3
    sltiu	$a5,$a5,16
.L0dac7a8c:
    beqz	$a5,.L0dac7a98
    # Line 1288
    subu	$at,$a3,$a0
    move	$v0,$a2
.L0dac7a98:
    sltiu	$at,$at,16
    beqz	$at,.L0dac7aa8
    nop
    # Line 1291
    move	$a0,$a3
.L0dac7aa8:
    bnel	$a2,$v0,.L0dac7bd8
    sd	$v0,0($sp)
    sd	$v0,0($sp)
    bne	$a3,$a0,.L0dac7d5c
    sd	$a0,16($sp)
    # Line 1299
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,26440
    bal __glNamesFreeArray
    move	$a1,$s0
    beqz	$v0,.L0dac7e20
    # Line 1311
    move	$a2,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s1
    move	$a0,$s2
    addiu	$t9,$t9,30472
    # Line 1308
    lw	$v1,4($s0)
    # Line 1309
    li	$at,1
    # Line 1308
    lw	$v0,12($s0)
    subu	$v1,$s4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sw	$s3,0($v0)
    # Line 1311
    bal __glNamesFreeArray
    # Line 1309
    sw	$at,0($s3)
    # Line 1312
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,80($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7b34:
    # Line 1231
    move	$a0,$s2
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    move	$a1,$s1
    move	$s0,$v0
    # Line 1232
    sw	$s4,4($v0)
    beqz	$s3,.L0dac7b80
    sw	$s4,8($v0)
    # Line 1234
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,26440
    bal __glNamesFreeArray
    move	$a1,$s0
    beqz	$v0,.L0dac7e54
    # Line 1238
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1242
    lw	$v1,12($s0)
    # Line 1243
    li	$at,1
    # Line 1242
    sw	$s3,0($v1)
    # Line 1243
    sw	$at,0($s3)
.L0dac7b80:
    # Line 1245
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    move	$a1,$s1
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1246
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    move	$a1,$s1
    addiu	$t9,$t9,30472
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1247
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,80($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7bd8:
    sd	$a0,16($sp)
    # Line 1318
    bne	$a3,$a0,.L0dac7c10
    addiu	$a6,$v0,-1
    # Line 1325
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    move	$a1,$s0
    addiu	$t9,$t9,29200
    bal __glNamesFreeArray
    move	$a3,$a6
    la	$s0,sub_0dac0000
    la	$v0,sub_0dac0000
    addiu	$s0,$s0,27912
    b	.L0dac7c80
    addiu	$v0,$v0,26680
.L0dac7c10:
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$a6,8($sp)
    # Line 1330
    move	$a0,$s2
    # Line 1325
    addiu	$t9,$t9,26680
    # Line 1330
    bal __glNamesFreeArray
    move	$a1,$s1
    sd	$v0,24($sp)
    # Line 1332
    ld	$ra,16($sp)
    # Line 1334
    ld	$a3,8($sp)
    move	$a1,$s0
    # Line 1332
    addiu	$ra,$ra,1
    sw	$ra,4($v0)
    # Line 1334
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1333
    lw	$ra,8($s0)
    # Line 1334
    move	$a0,$s2
    addiu	$t9,$t9,29200
    # Line 1333
    sw	$ra,8($v0)
    # Line 1334
    bal __glNamesFreeArray
    lw	$a2,4($s0)
    # Line 1335
    move	$a0,$s2
    la	$s0,sub_0dac0000
    move	$a1,$s1
    ld	$a2,24($sp)
    addiu	$s0,$s0,27912
    bal __glNamesFreeArray
    move	$t9,$s0
    la	$v0,sub_0dac0000
    addiu	$v0,$v0,26680
.L0dac7c80:
    # Line 1337
    move	$a0,$s2
    move	$a1,$s1
    bal __glNamesFreeArray
    move	$t9,$v0
    move	$a2,$v0
    move	$s0,$v0
    # Line 1340
    move	$a1,$v0
    move	$a0,$s2
    # Line 1339
    ld	$ra,16($sp)
    # Line 1340
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1338
    ld	$v1,0($sp)
    # Line 1339
    sw	$ra,8($v0)
    # Line 1340
    addiu	$t9,$t9,26440
    bal __glNamesFreeArray
    # Line 1338
    sw	$v1,4($v0)
    # Line 1340
    beqz	$v0,.L0dac7d8c
    # Line 1354
    move	$a0,$s2
    move	$a1,$s1
    move	$a2,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1352
    li	$at,1
    # Line 1351
    lw	$v1,4($s0)
    addiu	$t9,$t9,27912
    lw	$v0,12($s0)
    subu	$v1,$s4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sw	$s3,0($v0)
    # Line 1354
    bal __glNamesFreeArray
    # Line 1352
    sw	$at,0($s3)
    # Line 1355
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    move	$a1,$s1
    addiu	$t9,$t9,30472
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1356
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,80($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7d38:
    ld	$gp,40($sp)
    # Line 1268
    ld	$s0,80($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7d5c:
    # Line 1318
    move	$a0,$s2
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s0
    ld	$a2,16($sp)
    addiu	$t9,$t9,29200
    bal __glNamesFreeArray
    addiu	$a2,$a2,1
    la	$s0,sub_0dac0000
    la	$v0,sub_0dac0000
    addiu	$s0,$s0,27912
    b	.L0dac7c80
    addiu	$v0,$v0,26680
.L0dac7d8c:
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1344
    move	$a0,$s2
    move	$a1,$s1
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1345
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s2
    move	$a1,$s1
    addiu	$t9,$t9,30472
    bal __glNamesFreeArray
    move	$a2,$s0
    # Line 1346
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1285
    jal	__glSetError
    ld	$s0,80($sp)
    # Line 1347
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7df0:
    # Line 1221
    li	$a0,1285
    jalr	$t9
    ld	$s0,80($sp)
    # Line 1222
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7e20:
    # Line 1303
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1285
    jal	__glSetError
    ld	$s0,80($sp)
    # Line 1304
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac7e54:
    # Line 1238
    move	$a0,$s2
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    move	$a1,$s0
    # Line 1239
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1285
    jal	__glSetError
    ld	$s0,80($sp)
    # Line 1240
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glNamesNewData

# Function: __glNamesLockData
# Declared: Line 1370 (Source lines: 1372-1389)
# Address: 0x0dac7e98 - 0x0dac7f30 (Size: 152 bytes, Frame: 192)
.globl __glNamesLockData
.ent __glNamesLockData
__glNamesLockData:
    # Line 1372
    move	$a0,$a1
    move	$at,$a2
    addiu	$sp,$sp,-64
    # sd	gp,8(sp)
    sd	$ra,16($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,-1584
    # addu	gp,t9,ra
    # Line 1380
    # lw $t9, -32720($gp) # &sub_0dac0000
    sd	$a2,0($sp)
    li	$a2,1
    addiu	$t9,$t9,25756
    bal __glNamesFreeArray
    move	$a1,$at
    # Line 1381
    beqz	$v0,.L0dac7f1c
    # Line 1389
    ld	$ra,16($sp)
    # Line 1381
    lw	$a2,12($v0)
    beqzl	$a2,.L0dac7f20
    # Line 1382
    ld	$ra,16($sp)
    # Line 1385
    lw	$a3,4($v0)
    ld	$a1,0($sp)
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    beqz	$a1,.L0dac7f10
    nop
    # Line 1387
    lw	$at,0($a1)
    addiu	$at,$at,1
    sw	$at,0($a1)
.L0dac7f10:
    # Line 1389
    move	$v0,$a1
    jr	$ra
    addiu	$sp,$sp,64
.L0dac7f1c:
    # Line 1382
    ld	$ra,16($sp)
.L0dac7f20:
    move	$v0,$zero
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glNamesLockData

# Function: __glNamesLockDataList
# Declared: Line 1404 (Source lines: 1407-1688)
# Address: 0x0dac7f30 - 0x0dac8a28 (Size: 2808 bytes, Frame: 224)
.globl __glNamesLockDataList
.ent __glNamesLockDataList
__glNamesLockDataList:
    # Line 1407
    addiu	$sp,$sp,-224
    sd	$s8,120($sp)
    sd	$zero,80($sp)
    sd	$zero,64($sp)
    sd	$s1,40($sp)
    move	$s1,$a6
    sd	$s4,48($sp)
    move	$s4,$a4
    sd	$s2,88($sp)
    move	$s2,$a2
    sd	$s6,72($sp)
    move	$s6,$a1
    # Line 1416
    addiu	$v0,$a3,-5120
    sltiu	$at,$v0,10
    sd	$s7,32($sp)
    # Line 1414
    lw	$s7,12($a1)
    # sd	gp,56(sp)
    # Line 1407
    lui	$v1,0x13
    addiu	$v1,$v1,-1736
    # addu	gp,t9,v1
    # Line 1416
    la	$v1,sub_0dbf0000
    sll	$v0,$v0,0x2
    # Line 1414
    lw	$s7,4($s7)
    # Line 1416
    lui	$v1,%hi(jtbl_0dbebc00)
    beqz	$at,.L0dac7fb0
    addu	$v0,$v0,$v1
    lw	$a3,%lo(jtbl_0dbebc00)($v0)
    jr	$a3
    nop
.L0dac7fa4:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    ld	$s3,152($sp)
.L0dac7fb0:
    # ld	gp,56(sp)
    # Line 1688
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s4,48($sp)
    ld	$s6,72($sp)
    ld	$s7,32($sp)
    ld	$s8,120($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dac7fd4:
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    sd	$s3,152($sp)
    # Line 1435
    la	$s3,sub_0dac0000
    move	$at,$a5
    sd	$a5,104($sp)
    addiu	$s3,$s3,25756
    # Line 1438
    addiu	$s2,$s2,-1
.L0dac7ffc:
    bltz	$s2,.L0dac8100
    # Line 1437
    move	$s8,$zero
    ld	$at,104($sp)
    # Line 1440
    lb	$s0,0($at)
    addiu	$at,$at,1
    sd	$at,104($sp)
    addu	$s0,$s0,$s4
    # Line 1441
    move	$s5,$zero
.L0dac801c:
    # Line 1442
    move	$a0,$s6
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
    # Line 1443
    beqzl	$v0,.L0dac80d8
    # Line 1468
    lw	$v1,0($s7)
    # Line 1443
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac80d8
    # Line 1468
    lw	$v1,0($s7)
    # Line 1453
    lw	$a3,8($v0)
    # Line 1449
    lw	$v1,4($v0)
    # Line 1448
    sw	$a0,0($sp)
    # Line 1453
    subu	$a3,$a3,$v1
    # Line 1449
    subu	$a1,$s0,$v1
    # Line 1452
    subu	$v1,$s4,$v1
    # Line 1449
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    # Line 1453
    sw	$a3,12($sp)
    # Line 1452
    sw	$v1,8($sp)
    # Line 1449
    sw	$a1,4($sp)
.L0dac8074:
    sd	$zero,64($sp)
    # Line 1455
    move	$a0,$zero
    # Line 1456
    lw	$a7,0($a1)
    # Line 1457
    addiu	$s1,$s1,4
    # Line 1458
    addiu	$s2,$s2,-1
    # Line 1456
    addiu	$a7,$a7,1
    sw	$a7,0($a1)
    # Line 1458
    bltz	$s2,.L0dac80ec
    # Line 1457
    sw	$a1,-4($s1)
    ld	$v1,104($sp)
    # Line 1459
    lw	$a3,8($sp)
    lb	$s0,0($v1)
    lw	$at,12($sp)
    addiu	$v1,$v1,1
    addu	$s0,$s0,$a3
    sltu	$at,$at,$s0
    beqz	$at,.L0dac89e0
    sd	$v1,104($sp)
    # Line 1464
    lw	$a7,4($v0)
    # Line 1465
    li	$s5,1
    # Line 1464
    addu	$s0,$a7,$s0
.L0dac80c8:
    # Line 1462
    move	$at,$a0
    b	.L0dac80ec
    sd	$a0,64($sp)
    # Line 1468
    lw	$v1,0($s7)
.L0dac80d8:
    # Line 1470
    li	$s8,1
    # Line 1469
    addiu	$s1,$s1,4
    # Line 1468
    addiu	$v1,$v1,1
    sw	$v1,0($s7)
    # Line 1469
    sw	$s7,-4($s1)
.L0dac80ec:
    ld	$a3,64($sp)
    # Line 1462
    bnez	$a3,.L0dac89d8
    nop
    bnez	$s5,.L0dac801c
    # Line 1441
    move	$s5,$zero
.L0dac8100:
    # Line 1462
    bnez	$s8,.L0dac7ffc
    # Line 1438
    addiu	$s2,$s2,-1
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
.L0dac811c:
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    sd	$s3,152($sp)
    # Line 1480
    la	$s3,sub_0dac0000
    move	$at,$a5
    sd	$a5,96($sp)
    addiu	$s3,$s3,25756
    # Line 1483
    addiu	$s2,$s2,-1
.L0dac8144:
    bltz	$s2,.L0dac8240
    # Line 1482
    move	$s8,$zero
    ld	$at,96($sp)
    # Line 1485
    lbu	$s0,0($at)
    addiu	$at,$at,1
    sd	$at,96($sp)
    addu	$s0,$s0,$s4
    # Line 1486
    move	$s5,$zero
.L0dac8164:
    # Line 1487
    move	$a0,$s6
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
    # Line 1488
    beqzl	$v0,.L0dac8218
    # Line 1513
    lw	$at,0($s7)
    # Line 1488
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8218
    # Line 1513
    lw	$at,0($s7)
    # Line 1498
    lw	$a3,8($v0)
    # Line 1494
    lw	$v1,4($v0)
    # Line 1493
    sw	$a0,16($sp)
    # Line 1498
    subu	$a3,$a3,$v1
    # Line 1494
    subu	$a1,$s0,$v1
    # Line 1497
    subu	$v1,$s4,$v1
    # Line 1494
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    # Line 1498
    sw	$a3,24($sp)
    # Line 1497
    sw	$v1,20($sp)
    # Line 1494
    sw	$a1,4($sp)
.L0dac81bc:
    sd	$zero,80($sp)
    # Line 1500
    move	$a0,$zero
    # Line 1501
    lw	$a7,0($a1)
    # Line 1502
    addiu	$s1,$s1,4
    # Line 1503
    addiu	$s2,$s2,-1
    # Line 1501
    addiu	$a7,$a7,1
    sw	$a7,0($a1)
    # Line 1503
    bltz	$s2,.L0dac822c
    # Line 1502
    sw	$a1,-4($s1)
    ld	$v1,96($sp)
    # Line 1504
    lw	$a3,20($sp)
    lbu	$s0,0($v1)
    lw	$at,24($sp)
    addiu	$v1,$v1,1
    addu	$s0,$s0,$a3
    sltu	$at,$at,$s0
    beqz	$at,.L0dac8a04
    sd	$v1,96($sp)
    # Line 1509
    lw	$a7,4($v0)
    # Line 1510
    li	$s5,1
    b	.L0dac8a1c
    # Line 1509
    addu	$s0,$a7,$s0
    # Line 1513
    lw	$at,0($s7)
.L0dac8218:
    # Line 1515
    li	$s8,1
    # Line 1514
    addiu	$s1,$s1,4
    # Line 1513
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1514
    sw	$s7,-4($s1)
.L0dac822c:
    ld	$v1,80($sp)
    # Line 1507
    bnez	$v1,.L0dac89fc
    nop
    bnez	$s5,.L0dac8164
    # Line 1486
    move	$s5,$zero
.L0dac8240:
    # Line 1507
    bnez	$s8,.L0dac8144
    # Line 1483
    addiu	$s2,$s2,-1
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
.L0dac825c:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1522
    move	$s8,$a5
    # Line 1524
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1523
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1524
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac8430
    addiu	$s3,$s3,25756
.L0dac8290:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1542
    move	$s8,$a5
    # Line 1544
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1543
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1544
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac84e0
    addiu	$s3,$s3,25756
.L0dac82c4:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1562
    move	$s8,$a5
    # Line 1564
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1563
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1564
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac8590
    addiu	$s3,$s3,25756
.L0dac82f8:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1582
    move	$s8,$a5
    # Line 1584
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1583
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1584
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac8640
    addiu	$s3,$s3,25756
.L0dac832c:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sdc1	$f30,112($sp)
    sd	$s8,120($sp)
    # Line 1602
    move	$s8,$a5
    # Line 1604
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1603
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1604
    li	$s5,-1
    la	$s3,sub_0dac0000
    dsll32	$at,$s4,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f30
    addiu	$s3,$s3,25756
    b	.L0dac86f0
    cvt.s.l	$f30,$f30
.L0dac8374:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1622
    move	$s8,$a5
    # Line 1624
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1623
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1624
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac87b0
    addiu	$s3,$s3,25756
.L0dac83a8:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1643
    move	$s8,$a5
    # Line 1645
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1644
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1645
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac8858
    addiu	$s3,$s3,25756
.L0dac83dc:
    sd	$s3,152($sp)
    sd	$s5,128($sp)
    sd	$s8,120($sp)
    # Line 1664
    move	$s8,$a5
    # Line 1666
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dac7fb0
    # Line 1665
    move	$v0,$zero
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 1666
    la	$s3,sub_0dac0000
    li	$s5,-1
    b	.L0dac8920
    addiu	$s3,$s3,25756
    # Line 1534
    lw	$at,0($s7)
.L0dac8414:
    # Line 1535
    addiu	$s1,$s1,4
    # Line 1534
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1535
    sw	$s7,-4($s1)
.L0dac8424:
    # Line 1524
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac84b0
    ld	$s5,128($sp)
.L0dac8430:
    # Line 1525
    lh	$s0,0($s8)
    addiu	$s8,$s8,2
    # Line 1526
    beqz	$v0,.L0dac845c
    # Line 1525
    addu	$s0,$s0,$s4
    # Line 1526
    lw	$at,4($v0)
    sltu	$at,$s0,$at
    bnez	$at,.L0dac8460
    # Line 1527
    move	$a0,$s6
    # Line 1526
    lw	$v1,8($v0)
    sltu	$v1,$v1,$s0
    beqz	$v1,.L0dac8470
.L0dac845c:
    # Line 1527
    move	$a0,$s6
.L0dac8460:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac8470:
    beqzl	$v0,.L0dac8414
    # Line 1534
    lw	$at,0($s7)
    # Line 1527
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8414
    # Line 1534
    lw	$at,0($s7)
    # Line 1530
    lw	$a3,4($v0)
    subu	$a3,$s0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    # Line 1531
    lw	$a7,0($a3)
    # Line 1532
    addiu	$s1,$s1,4
    # Line 1531
    addiu	$a7,$a7,1
    sw	$a7,0($a3)
    # Line 1532
    b	.L0dac8424
    sw	$a3,-4($s1)
.L0dac84b0:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1554
    lw	$a7,0($s7)
.L0dac84c4:
    # Line 1555
    addiu	$s1,$s1,4
    # Line 1554
    addiu	$a7,$a7,1
    sw	$a7,0($s7)
    # Line 1555
    sw	$s7,-4($s1)
.L0dac84d4:
    # Line 1544
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac8560
    ld	$s5,128($sp)
.L0dac84e0:
    # Line 1545
    lhu	$s0,0($s8)
    addiu	$s8,$s8,2
    # Line 1546
    beqz	$v0,.L0dac850c
    # Line 1545
    addu	$s0,$s0,$s4
    # Line 1546
    lw	$at,4($v0)
    sltu	$at,$s0,$at
    bnez	$at,.L0dac8510
    # Line 1547
    move	$a0,$s6
    # Line 1546
    lw	$v1,8($v0)
    sltu	$v1,$v1,$s0
    beqz	$v1,.L0dac8520
.L0dac850c:
    # Line 1547
    move	$a0,$s6
.L0dac8510:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac8520:
    beqzl	$v0,.L0dac84c4
    # Line 1554
    lw	$a7,0($s7)
    # Line 1547
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac84c4
    # Line 1554
    lw	$a7,0($s7)
    # Line 1550
    lw	$a3,4($v0)
    subu	$a3,$s0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    # Line 1551
    lw	$a7,0($a3)
    # Line 1552
    addiu	$s1,$s1,4
    # Line 1551
    addiu	$a7,$a7,1
    sw	$a7,0($a3)
    # Line 1552
    b	.L0dac84d4
    sw	$a3,-4($s1)
.L0dac8560:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1574
    lw	$a7,0($s7)
.L0dac8574:
    # Line 1575
    addiu	$s1,$s1,4
    # Line 1574
    addiu	$a7,$a7,1
    sw	$a7,0($s7)
    # Line 1575
    sw	$s7,-4($s1)
.L0dac8584:
    # Line 1564
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac8610
    ld	$s5,128($sp)
.L0dac8590:
    # Line 1565
    lw	$s0,0($s8)
    addiu	$s8,$s8,4
    # Line 1566
    beqz	$v0,.L0dac85bc
    # Line 1565
    addu	$s0,$s0,$s4
    # Line 1566
    lw	$at,4($v0)
    sltu	$at,$s0,$at
    bnez	$at,.L0dac85c0
    # Line 1567
    move	$a0,$s6
    # Line 1566
    lw	$v1,8($v0)
    sltu	$v1,$v1,$s0
    beqz	$v1,.L0dac85d0
.L0dac85bc:
    # Line 1567
    move	$a0,$s6
.L0dac85c0:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac85d0:
    beqzl	$v0,.L0dac8574
    # Line 1574
    lw	$a7,0($s7)
    # Line 1567
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8574
    # Line 1574
    lw	$a7,0($s7)
    # Line 1570
    lw	$a3,4($v0)
    subu	$a3,$s0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    # Line 1571
    lw	$a7,0($a3)
    # Line 1572
    addiu	$s1,$s1,4
    # Line 1571
    addiu	$a7,$a7,1
    sw	$a7,0($a3)
    # Line 1572
    b	.L0dac8584
    sw	$a3,-4($s1)
.L0dac8610:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1594
    lw	$a7,0($s7)
.L0dac8624:
    # Line 1595
    addiu	$s1,$s1,4
    # Line 1594
    addiu	$a7,$a7,1
    sw	$a7,0($s7)
    # Line 1595
    sw	$s7,-4($s1)
.L0dac8634:
    # Line 1584
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac86c0
    ld	$s5,128($sp)
.L0dac8640:
    # Line 1585
    lw	$s0,0($s8)
    addiu	$s8,$s8,4
    # Line 1586
    beqz	$v0,.L0dac866c
    # Line 1585
    addu	$s0,$s0,$s4
    # Line 1586
    lw	$at,4($v0)
    sltu	$at,$s0,$at
    bnez	$at,.L0dac8670
    # Line 1587
    move	$a0,$s6
    # Line 1586
    lw	$v1,8($v0)
    sltu	$v1,$v1,$s0
    beqz	$v1,.L0dac8680
.L0dac866c:
    # Line 1587
    move	$a0,$s6
.L0dac8670:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac8680:
    beqzl	$v0,.L0dac8624
    # Line 1594
    lw	$a7,0($s7)
    # Line 1587
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8624
    # Line 1594
    lw	$a7,0($s7)
    # Line 1590
    lw	$a3,4($v0)
    subu	$a3,$s0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    # Line 1591
    lw	$a7,0($a3)
    # Line 1592
    addiu	$s1,$s1,4
    # Line 1591
    addiu	$a7,$a7,1
    sw	$a7,0($a3)
    # Line 1592
    b	.L0dac8634
    sw	$a3,-4($s1)
.L0dac86c0:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1614
    lw	$a7,0($s7)
.L0dac86d4:
    # Line 1615
    addiu	$s1,$s1,4
    # Line 1614
    addiu	$a7,$a7,1
    sw	$a7,0($s7)
    # Line 1615
    sw	$s7,-4($s1)
.L0dac86e4:
    # Line 1604
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac877c
    ldc1	$f30,112($sp)
.L0dac86f0:
    # Line 1605
    lwc1	$f0,0($s8)
    add.s	$f0,$f0,$f30
    trunc.l.s	$f0,$f0
    dmfc1	$s0,$f0
    addiu	$s8,$s8,4
    # Line 1606
    beqz	$v0,.L0dac8728
    # Line 1605
    sll	$s0,$s0,0x0
    # Line 1606
    lw	$at,4($v0)
    sltu	$at,$s0,$at
    bnez	$at,.L0dac872c
    # Line 1607
    move	$a0,$s6
    # Line 1606
    lw	$v1,8($v0)
    sltu	$v1,$v1,$s0
    beqz	$v1,.L0dac873c
.L0dac8728:
    # Line 1607
    move	$a0,$s6
.L0dac872c:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac873c:
    beqzl	$v0,.L0dac86d4
    # Line 1614
    lw	$a7,0($s7)
    # Line 1607
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac86d4
    # Line 1614
    lw	$a7,0($s7)
    # Line 1610
    lw	$a3,4($v0)
    subu	$a3,$s0,$a3
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    # Line 1611
    lw	$a7,0($a3)
    # Line 1612
    addiu	$s1,$s1,4
    # Line 1611
    addiu	$a7,$a7,1
    sw	$a7,0($a3)
    # Line 1612
    b	.L0dac86e4
    sw	$a3,-4($s1)
.L0dac877c:
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1635
    lw	$a7,0($s7)
.L0dac8794:
    # Line 1636
    addiu	$s1,$s1,4
    # Line 1635
    addiu	$a7,$a7,1
    sw	$a7,0($s7)
    # Line 1636
    sw	$s7,-4($s1)
.L0dac87a4:
    # Line 1624
    addiu	$s2,$s2,-1
    beql	$s2,$s5,.L0dac7fa4
    ld	$s5,128($sp)
.L0dac87b0:
    # Line 1625
    lbu	$at,0($s8)
    lbu	$s0,1($s8)
    # Line 1626
    addiu	$s8,$s8,2
    # Line 1625
    sll	$at,$at,0x8
    or	$s0,$s0,$at
    # Line 1627
    beqz	$v0,.L0dac87e8
    # Line 1625
    addu	$s0,$s0,$s4
    # Line 1627
    lw	$v1,4($v0)
    sltu	$v1,$s0,$v1
    bnez	$v1,.L0dac87ec
    # Line 1628
    move	$a0,$s6
    # Line 1627
    lw	$a3,8($v0)
    sltu	$a3,$a3,$s0
    beqz	$a3,.L0dac87fc
.L0dac87e8:
    # Line 1628
    move	$a0,$s6
.L0dac87ec:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac87fc:
    beqzl	$v0,.L0dac8794
    # Line 1635
    lw	$a7,0($s7)
    # Line 1628
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8794
    # Line 1635
    lw	$a7,0($s7)
    # Line 1631
    lw	$a7,4($v0)
    subu	$a7,$s0,$a7
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    # Line 1632
    lw	$at,0($a7)
    # Line 1633
    addiu	$s1,$s1,4
    # Line 1632
    addiu	$at,$at,1
    sw	$at,0($a7)
    # Line 1633
    b	.L0dac87a4
    sw	$a7,-4($s1)
    # Line 1656
    lw	$at,0($s7)
.L0dac8840:
    # Line 1657
    addiu	$s1,$s1,4
    # Line 1656
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1657
    sw	$s7,-4($s1)
.L0dac8850:
    # Line 1645
    addiu	$s2,$s2,-1
    beq	$s2,$s5,.L0dac88f0
.L0dac8858:
    # Line 1647
    addiu	$s8,$s8,3
    # Line 1646
    lbu	$v1,-2($s8)
    lbu	$at,-3($s8)
    lbu	$s0,-1($s8)
    sll	$v1,$v1,0x8
    sll	$at,$at,0x10
    or	$at,$at,$v1
    or	$s0,$s0,$at
    # Line 1648
    beqz	$v0,.L0dac889c
    # Line 1646
    addu	$s0,$s0,$s4
    # Line 1648
    lw	$v1,4($v0)
    sltu	$v1,$s0,$v1
    bnez	$v1,.L0dac88a0
    # Line 1649
    move	$a0,$s6
    # Line 1648
    lw	$a3,8($v0)
    sltu	$a3,$a3,$s0
    beqz	$a3,.L0dac88b0
.L0dac889c:
    # Line 1649
    move	$a0,$s6
.L0dac88a0:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac88b0:
    beqzl	$v0,.L0dac8840
    # Line 1656
    lw	$at,0($s7)
    # Line 1649
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8840
    # Line 1656
    lw	$at,0($s7)
    # Line 1652
    lw	$a7,4($v0)
    subu	$a7,$s0,$a7
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    # Line 1653
    lw	$at,0($a7)
    # Line 1654
    addiu	$s1,$s1,4
    # Line 1653
    addiu	$at,$at,1
    sw	$at,0($a7)
    # Line 1654
    b	.L0dac8850
    sw	$a7,-4($s1)
.L0dac88f0:
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
    # Line 1678
    lw	$at,0($s7)
.L0dac8908:
    # Line 1679
    addiu	$s1,$s1,4
    # Line 1678
    addiu	$at,$at,1
    sw	$at,0($s7)
    # Line 1679
    sw	$s7,-4($s1)
.L0dac8918:
    # Line 1666
    addiu	$s2,$s2,-1
    beq	$s2,$s5,.L0dac89c4
.L0dac8920:
    # Line 1669
    addiu	$s8,$s8,4
    # Line 1667
    lbu	$s0,-1($s8)
    lbu	$a3,-2($s8)
    lbu	$v1,-3($s8)
    lbu	$at,-4($s8)
    sll	$a3,$a3,0x8
    sll	$v1,$v1,0x10
    sll	$at,$at,0x18
    or	$at,$at,$v1
    or	$s0,$s0,$a3
    or	$s0,$s0,$at
    # Line 1670
    beqz	$v0,.L0dac8970
    # Line 1667
    addu	$s0,$s0,$s4
    # Line 1670
    lw	$a7,4($v0)
    sltu	$a7,$s0,$a7
    bnez	$a7,.L0dac8974
    # Line 1671
    move	$a0,$s6
    # Line 1670
    lw	$at,8($v0)
    sltu	$at,$at,$s0
    beqz	$at,.L0dac8984
.L0dac8970:
    # Line 1671
    move	$a0,$s6
.L0dac8974:
    move	$a1,$s0
    li	$a2,1
    bal __glNamesFreeArray
    move	$t9,$s3
.L0dac8984:
    beqzl	$v0,.L0dac8908
    # Line 1678
    lw	$at,0($s7)
    # Line 1671
    lw	$a0,12($v0)
    beqzl	$a0,.L0dac8908
    # Line 1678
    lw	$at,0($s7)
    # Line 1674
    lw	$v1,4($v0)
    subu	$v1,$s0,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    # Line 1675
    lw	$a3,0($v1)
    # Line 1676
    addiu	$s1,$s1,4
    # Line 1675
    addiu	$a3,$a3,1
    sw	$a3,0($v1)
    # Line 1676
    b	.L0dac8918
    sw	$v1,-4($s1)
.L0dac89c4:
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$ra,144($sp)
    b	.L0dac7fb0
    ld	$s3,152($sp)
.L0dac89d8:
    b	.L0dac8074
    # Line 1453
    lw	$a1,4($sp)
.L0dac89e0:
    # Line 1461
    lw	$a7,0($sp)
    sll	$a3,$s0,0x2
    addu	$a3,$a3,$a7
    lw	$a3,0($a3)
    # Line 1462
    li	$a0,1
    b	.L0dac80c8
    # Line 1461
    sw	$a3,4($sp)
.L0dac89fc:
    b	.L0dac81bc
    # Line 1498
    lw	$a1,4($sp)
.L0dac8a04:
    # Line 1506
    lw	$v1,16($sp)
    sll	$at,$s0,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    # Line 1507
    li	$a0,1
    # Line 1506
    sw	$at,4($sp)
.L0dac8a1c:
    # Line 1507
    move	$a3,$a0
    b	.L0dac822c
    sd	$a0,80($sp)
.end __glNamesLockDataList

# Function: __glNamesUnlockData
# Declared: Line 1693 (Source lines: 1694-1707)
# Address: 0x0dac8a28 - 0x0dac8a70 (Size: 72 bytes, Frame: 32)
.globl __glNamesUnlockData
.ent __glNamesUnlockData
__glNamesUnlockData:
    # Line 1694
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0x13
    # Line 1699
    lw	$at,0($a1)
    # Line 1694
    addiu	$v0,$v0,-4544
    # addu	gp,t9,v0
    # Line 1699
    addiu	$at,$at,-1
    beqz	$at,.L0dac8a58
    sw	$at,0($a1)
.L0dac8a4c:
    # ld	gp,0(sp)
    # Line 1707
    jr	$ra
    addiu	$sp,$sp,32
.L0dac8a58:
    # Line 1705
    lw	$t9,12($a0)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0dac8a4c
    ld	$ra,8($sp)
.end __glNamesUnlockData

# Function: __glNamesUnlockDataList
# Declared: Line 1715 (Source lines: 1717-1736)
# Address: 0x0dac8a70 - 0x0dac8b68 (Size: 248 bytes, Frame: 208)
.globl __glNamesUnlockDataList
.ent __glNamesUnlockDataList
__glNamesUnlockDataList:
    # Line 1717
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    sd	$s2,24($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lui	$at,0x13
    addiu	$at,$at,-4616
    blez	$a1,.L0dac8ae0
    nop
    move	$a0,$a1
    move	$s1,$a2
    sll	$s2,$a1,0x2
    andi	$at,$a1,0x1
    beqz	$at,.L0dac8ac8
    addu	$s2,$s2,$a2
    # Line 1726
    lw	$a1,0($s1)
    # Line 1727
    lw	$v0,0($a1)
    # Line 1725
    addiu	$s1,$s1,4
    # Line 1727
    addiu	$v0,$v0,-1
    beqz	$v0,.L0dac8b48
    sw	$v0,0($a1)
.L0dac8ac8:
    sra	$v1,$a0,0x1
    bnez	$v1,.L0dac8b18
    sd	$ra,40($sp)
    ld	$s2,24($sp)
.L0dac8ad8:
    ld	$s1,32($sp)
    ld	$ra,40($sp)
.L0dac8ae0:
    # ld	gp,8(sp)
    # Line 1736
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac8af0:
    # Line 1733
    jalr	$t9
    move	$a0,$s0
.L0dac8af8:
    # Line 1726
    lw	$a1,4($s1)
    # Line 1727
    lw	$a3,0($a1)
    # Line 1725
    addiu	$s1,$s1,8
    # Line 1727
    addiu	$a3,$a3,-1
    beqz	$a3,.L0dac8b34
    sw	$a3,0($a1)
.L0dac8b10:
    # Line 1725
    beql	$s1,$s2,.L0dac8ad8
    ld	$s2,24($sp)
.L0dac8b18:
    # Line 1726
    lw	$a1,0($s1)
    # Line 1727
    lw	$at,0($a1)
    addiu	$at,$at,-1
    bnez	$at,.L0dac8af8
    sw	$at,0($a1)
    b	.L0dac8af0
    # Line 1733
    lw	$t9,12($s0)
.L0dac8b34:
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0dac8b10
    nop
.L0dac8b48:
    lw	$t9,12($s0)
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$a0,16($sp)
    b	.L0dac8ac8
    ld	$ra,40($sp)
.end __glNamesUnlockDataList

# Function: __glNamesGenRange
# Declared: Line 1739 (Source lines: 1741-1854)
# Address: 0x0dac8b68 - 0x0dac8f6c (Size: 1028 bytes, Frame: 128)
.globl __glNamesGenRange
.ent __glNamesGenRange
__glNamesGenRange:
    # Line 1753
    li	$v0,16
    # Line 1741
    addiu	$sp,$sp,-128
    sd	$s2,56($sp)
    move	$s2,$a2
    sd	$s3,48($sp)
    move	$s3,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$gp,40($sp)
    # Line 1753
    lw	$at,16($a1)
    # Line 1741
    lui	$v1,0x13
    addiu	$v1,$v1,-4864
    # Line 1753
    bne	$at,$v0,.L0dac8bb0
    # Line 1741
    addu	$gp,$t9,$v1
    # Line 1753
    li	$a4,3
    lw	$a3,20($s0)
    beq	$a3,$a4,.L0dac8bcc
    sd	$ra,64($sp)
.L0dac8bb0:
    # Line 1755
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    sd	$ra,64($sp)
    addiu	$t9,$t9,25976
    bal __glNamesFreeArray
    move	$a1,$s0
    beqz	$v0,.L0dac8e08
.L0dac8bcc:
    # Line 1761
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    sd	$s4,24($sp)
    sd	$s1,80($sp)
    addiu	$t9,$t9,29704
    bal __glNamesFreeArray
    move	$a0,$s0
    move	$s4,$v0
    move	$s1,$v0
    beqz	$v0,.L0dac8c34
    ld	$ra,64($sp)
    lw	$a1,4($s4)
    sltu	$at,$s2,$a1
    beqz	$at,.L0dac8ca8
    # Line 1767
    la	$v0,sub_0dac0000
    # Line 1766
    lw	$v1,12($s4)
    bnez	$v1,.L0dac8dac
    ld	$s1,80($sp)
    # Line 1771
    subu	$v0,$a1,$s2
    ld	$gp,40($sp)
    # Line 1772
    ld	$s0,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    # Line 1771
    sw	$v0,4($s4)
    # Line 1772
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8c34:
    # Line 1825
    beqz	$s1,.L0dac8e34
    ld	$s4,24($sp)
    # Line 1834
    lw	$a2,8($s1)
    ld	$ra,64($sp)
    # Line 1838
    move	$v0,$zero
    # Line 1834
    addu	$a1,$s2,$a2
    sltu	$a3,$a1,$a2
    bnez	$a3,.L0dac8d50
    move	$a0,$a2
    # Line 1838
    lw	$a4,12($s1)
    sd	$a1,72($sp)
    addiu	$at,$a0,1
    bnez	$a4,.L0dac8cf0
    sd	$at,16($sp)
    # Line 1843
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    # Line 1842
    addu	$a1,$s2,$a2
    # Line 1843
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 1842
    sw	$a1,8($s1)
    ld	$v0,16($sp)
    ld	$gp,40($sp)
    # Line 1845
    ld	$s0,32($sp)
    ld	$s1,80($sp)
    ld	$ra,64($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8ca8:
    # Line 1767
    beqz	$s4,.L0dac8c34
    addiu	$v0,$v0,29752
.L0dac8cb0:
    # Line 1788
    move	$a0,$s1
    bal __glNamesFreeArray
    move	$t9,$v0
    # Line 1789
    beqz	$v0,.L0dac8c34
    # Line 1788
    move	$s4,$v0
    # Line 1791
    lw	$a2,8($s1)
    # Line 1792
    lw	$a1,4($s4)
    # Line 1791
    addiu	$v0,$a2,1
    # Line 1792
    subu	$a0,$a1,$v0
    sltu	$v1,$a0,$s2
    beqzl	$v1,.L0dac8d6c
    lw	$at,12($s1)
    la	$v0,sub_0dac0000
    # Line 1822
    move	$s1,$s4
    b	.L0dac8cb0
    addiu	$v0,$v0,29752
.L0dac8cf0:
    # Line 1848
    move	$a0,$s3
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s0
    ld	$s2,72($sp)
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    ld	$s1,80($sp)
    move	$a2,$v0
    # Line 1852
    move	$a1,$s0
    # Line 1850
    ld	$ra,16($sp)
    # Line 1852
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    # Line 1850
    sw	$ra,4($v0)
    # Line 1852
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    # Line 1851
    sw	$s2,8($v0)
    ld	$v0,16($sp)
    ld	$gp,40($sp)
    # Line 1854
    ld	$s0,32($sp)
    ld	$ra,64($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8d50:
    ld	$gp,40($sp)
    # Line 1838
    ld	$s0,32($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8d6c:
    # Line 1792
    beqz	$at,.L0dac8ef8
    sd	$a0,0($sp)
    ld	$ra,64($sp)
    # Line 1805
    lw	$v1,12($s4)
    sd	$v0,8($sp)
    bnez	$v1,.L0dac8e94
    ld	$s1,80($sp)
    ld	$gp,40($sp)
    # Line 1810
    ld	$s0,32($sp)
    # Line 1808
    subu	$v0,$a1,$s2
    # Line 1810
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    # Line 1808
    sw	$v0,4($s4)
    # Line 1810
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8dac:
    # Line 1777
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    move	$a1,$s0
    move	$a2,$v0
    # Line 1781
    move	$a1,$s0
    move	$a0,$s3
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1779
    li	$ra,1
    sw	$ra,4($v0)
    # Line 1781
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    # Line 1780
    sw	$s2,8($v0)
    # Line 1783
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8e08:
    # Line 1756
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 1757
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$ra,64($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8e34:
    # Line 1826
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    move	$a1,$s0
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    ld	$s1,80($sp)
    move	$a2,$v0
    # Line 1830
    move	$a1,$s0
    move	$a0,$s3
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1828
    li	$ra,1
    sw	$ra,4($v0)
    # Line 1830
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    # Line 1829
    sw	$s2,8($v0)
    # Line 1832
    li	$v0,1
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8e94:
    # Line 1812
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    move	$a1,$s0
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    ld	$s4,8($sp)
    move	$a2,$v0
    # Line 1816
    move	$a1,$s0
    move	$a0,$s3
    # Line 1815
    addu	$ra,$s2,$s4
    # Line 1816
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1815
    addiu	$ra,$ra,-1
    sw	$ra,8($v0)
    # Line 1816
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    # Line 1814
    sw	$s4,4($v0)
    ld	$gp,40($sp)
    # Line 1818
    ld	$s0,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$ra,64($sp)
    move	$v0,$s4
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8ef8:
    sd	$v0,8($sp)
    # Line 1799
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    # Line 1798
    addu	$a1,$s2,$a2
    # Line 1799
    addiu	$t9,$t9,26340
    bal __glNamesFreeArray
    # Line 1798
    sw	$a1,8($s1)
    ld	$at,0($sp)
    # Line 1799
    bne	$s2,$at,.L0dac8f28
    ld	$ra,64($sp)
    lw	$v1,12($s4)
    beqz	$v1,.L0dac8f4c
.L0dac8f28:
    ld	$v0,8($sp)
    ld	$gp,40($sp)
    # Line 1805
    ld	$s0,32($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac8f4c:
    # Line 1802
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s3
    move	$a1,$s0
    addiu	$t9,$t9,30472
    bal __glNamesFreeArray
    move	$a2,$s1
    b	.L0dac8f28
    ld	$ra,64($sp)
.end __glNamesGenRange

# Function: __glNamesDeleteRange
# Declared: Line 1859 (Source lines: 1861-1955)
# Address: 0x0dac8f6c - 0x0dac9334 (Size: 968 bytes, Frame: 160)
.globl __glNamesDeleteRange
.ent __glNamesDeleteRange
__glNamesDeleteRange:
    # Line 1861
    addiu	$sp,$sp,-160
    sd	$s1,88($sp)
    move	$s1,$a0
    sd	$s2,112($sp)
    move	$s2,$a1
    sd	$s3,104($sp)
    move	$s3,$a2
    sd	$a3,64($sp)
    sd	$gp,96($sp)
    lui	$at,0x13
    addiu	$at,$at,-5892
    beqz	$a3,.L0dac9288
    addu	$gp,$t9,$at
    # Line 1879
    lw	$v1,16($s2)
    sd	$s4,72($sp)
    li	$a4,16
    beq	$v1,$a4,.L0dac9270
    # Line 1878
    move	$s4,$zero
    sd	$ra,56($sp)
.L0dac8fb8:
    # Line 1881
    li	$s4,1
    sd	$s0,80($sp)
.L0dac8fc0:
    # Line 1888
    move	$a0,$s2
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s3
    sd	$ra,56($sp)
    addiu	$t9,$t9,25756
    bal __glNamesFreeArray
    move	$a2,$zero
    sd	$s6,40($sp)
    sd	$s8,48($sp)
    sd	$s5,24($sp)
    sd	$s7,32($sp)
    beqz	$v0,.L0dac917c
    move	$s0,$v0
    sd	$s2,8($sp)
    sd	$s4,16($sp)
    sd	$s5,24($sp)
    la	$s6,sub_0dac0000
    ld	$s8,64($sp)
    sd	$s7,32($sp)
    addiu	$s6,$s6,29752
    addu	$s8,$s8,$s3
    b	.L0dac904c
    addiu	$s8,$s8,-1
.L0dac901c:
    # Line 1920
    bne	$a3,$s2,.L0dac90c4
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1924
    move	$a0,$s1
    move	$a1,$s0
    addiu	$t9,$t9,29200
    bal __glNamesFreeArray
    addiu	$a3,$s7,-1
    la	$s6,sub_0dac0000
    addiu	$s6,$s6,29752
.L0dac9040:
    ld	$at,0($sp)
.L0dac9044:
    # Line 1889
    beqz	$at,.L0dac917c
    move	$s0,$at
.L0dac904c:
    # Line 1890
    move	$a0,$s0
    bal __glNamesFreeArray
    move	$t9,$s6
    # Line 1891
    lw	$a2,4($s0)
    sd	$v0,0($sp)
    # Line 1892
    lw	$a3,8($s0)
    # Line 1891
    move	$s7,$a2
    # Line 1893
    sltu	$v0,$s8,$a2
    bnez	$v0,.L0dac917c
    # Line 1892
    move	$s2,$a3
    # Line 1893
    sltu	$v1,$s2,$s3
    bnez	$v1,.L0dac9040
    sltu	$a4,$s7,$s3
    beqz	$a4,.L0dac9090
    # Line 1896
    sltu	$a5,$s8,$s2
    move	$s7,$s3
    sltu	$a5,$s8,$s2
.L0dac9090:
    beqzl	$a5,.L0dac90a0
    # Line 1897
    lw	$at,12($s0)
    move	$s2,$s8
    lw	$at,12($s0)
.L0dac90a0:
    # Line 1904
    move	$s4,$s7
    # Line 1897
    beqz	$at,.L0dac91b8
    # Line 1903
    ld	$s5,8($sp)
    lw	$s5,12($s5)
    # Line 1904
    sltu	$v1,$s2,$s7
    bnez	$v1,.L0dac91b8
    # Line 1903
    lw	$s5,4($s5)
    b	.L0dac921c
    # Line 1904
    addiu	$s6,$s2,1
.L0dac90c4:
    ld	$at,16($sp)
    # Line 1924
    beqz	$at,.L0dac90e4
    # Line 1927
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    addiu	$t9,$t9,25976
    bal __glNamesFreeArray
    ld	$a1,8($sp)
    beqz	$v0,.L0dac92f4
.L0dac90e4:
    # Line 1933
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    addiu	$t9,$t9,26680
    bal __glNamesFreeArray
    ld	$a1,8($sp)
    move	$v1,$v0
    sd	$v0,0($sp)
    # Line 1935
    addiu	$a4,$s2,1
    sw	$a4,4($v0)
    # Line 1933
    move	$s3,$v0
    # Line 1936
    lw	$v0,8($s0)
    sw	$v0,8($v1)
    lw	$at,12($s0)
    beqz	$at,.L0dac9148
    # Line 1938
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    addiu	$t9,$t9,26440
    bal __glNamesFreeArray
    ld	$a1,0($sp)
    beqz	$v0,.L0dac92a0
    # Line 1948
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s0
    addiu	$t9,$t9,25888
    bal __glNamesFreeArray
    move	$a1,$s3
.L0dac9148:
    # Line 1950
    move	$a0,$s1
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a1,$s0
    addiu	$a3,$s7,-1
    addiu	$t9,$t9,29200
    bal __glNamesFreeArray
    lw	$a2,4($s0)
    # Line 1951
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    ld	$a1,8($sp)
    addiu	$t9,$t9,27912
    bal __glNamesFreeArray
    move	$a2,$s3
.L0dac917c:
    ld	$gp,96($sp)
    # Line 1955
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,72($sp)
    ld	$s5,24($sp)
    ld	$s6,40($sp)
    ld	$ra,56($sp)
    ld	$s7,32($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dac91b0:
    # Line 1904
    lw	$a3,8($s0)
    addiu	$s6,$s6,29752
.L0dac91b8:
    bne	$a2,$s7,.L0dac901c
    nop
    bne	$a3,$s2,.L0dac9250
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1916
    move	$a0,$s1
    ld	$a1,8($sp)
    addiu	$t9,$t9,28584
    bal __glNamesFreeArray
    move	$a2,$s0
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1917
    move	$a0,$s1
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    move	$a1,$s0
    b	.L0dac9044
    ld	$at,0($sp)
.L0dac91f8:
    # Line 1908
    lw	$at,12($s0)
    subu	$v1,$s4,$v1
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sw	$s5,0($at)
    lw	$a2,4($s0)
    # Line 1904
    addiu	$s4,$s4,1
.L0dac9214:
    beql	$s6,$s4,.L0dac91b0
    la	$s6,sub_0dac0000
.L0dac921c:
    lw	$a1,12($s0)
    subu	$a4,$s4,$a2
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lw	$a1,0($a1)
    beql	$a1,$s5,.L0dac9214
    addiu	$s4,$s4,1
    # Line 1906
    lw	$t9,16($s0)
    lw	$t9,12($t9)
    jal	sub_0dac0000
    move	$a0,$s1
    b	.L0dac91f8
    # Line 1908
    lw	$v1,4($s0)
.L0dac9250:
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1920
    move	$a0,$s1
    move	$a1,$s0
    addiu	$t9,$t9,29200
    bal __glNamesFreeArray
    addiu	$a2,$s2,1
    b	.L0dac9044
    ld	$at,0($sp)
.L0dac9270:
    # Line 1879
    lw	$at,20($s2)
    li	$v1,3
    beql	$at,$v1,.L0dac8fc0
    sd	$s0,80($sp)
    b	.L0dac8fb8
    sd	$ra,56($sp)
.L0dac9288:
    ld	$gp,96($sp)
    # Line 1871
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dac92a0:
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1944
    move	$a0,$s1
    addiu	$t9,$t9,24996
    bal __glNamesNewArray
    move	$a1,$s3
    # Line 1945
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$gp,96($sp)
    # Line 1946
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,72($sp)
    ld	$s5,24($sp)
    ld	$s6,40($sp)
    ld	$ra,56($sp)
    ld	$s7,32($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dac92f4:
    # Line 1928
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$gp,96($sp)
    # Line 1929
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,72($sp)
    ld	$s5,24($sp)
    ld	$s6,40($sp)
    ld	$ra,56($sp)
    ld	$s7,32($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glNamesDeleteRange

# Function: __glNamesIsName
# Declared: Line 1958 (Source lines: 1960-1967)
# Address: 0x0dac9334 - 0x0dac9390 (Size: 92 bytes, Frame: 48)
.globl __glNamesIsName
.ent __glNamesIsName
__glNamesIsName:
    # Line 1960
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    sd	$ra,8($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,-6860
    # addu	gp,t9,ra
    # Line 1964
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1960
    move	$a0,$a1
    move	$a1,$a2
    # Line 1964
    addiu	$t9,$t9,25756
    bal __glNamesFreeArray
    li	$a2,1
    # ld	gp,0(sp)
    beqz	$v0,.L0dac9384
    # Line 1967
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    # Line 1965
    ld	$ra,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0dac9384:
    # Line 1967
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end __glNamesIsName

# Function: __glNamesGenNames
# Declared: Line 1975 (Source lines: 1977-1987)
# Address: 0x0dac9390 - 0x0dac9460 (Size: 208 bytes, Frame: 192)
.globl __glNamesGenNames
.ent __glNamesGenNames
__glNamesGenNames:
    # Line 1977
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$a3,0($sp)
    # sd	gp,8(sp)
    lui	$at,0x13
    addiu	$at,$at,-6952
    bnez	$a3,.L0dac93c4
    nop
    # ld	gp,8(sp)
    # Line 1981
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac93c4:
    # Line 1982
    # lw $t9, -27920($gp) # &__glNamesGenRange
    sd	$ra,24($sp)
    bal __glNamesGenRange
    move	$a2,$s0
    ld	$a4,0($sp)
    # Line 1983
    sll	$a1,$s0,0x2
    blez	$s0,.L0dac9450
    ld	$ra,24($sp)
    addu	$a1,$a1,$a4
    move	$a0,$a4
    move	$a6,$s0
    andi	$a2,$s0,0x3
    beqz	$a2,.L0dac9414
    move	$a3,$a0
.L0dac93fc:
    # Line 1984
    sw	$v0,0($a0)
    # Line 1983
    addiu	$v0,$v0,1
    addi	$a2,$a2,-1
    bnez	$a2,.L0dac93fc
    addiu	$a0,$a0,4
    move	$a3,$a0
.L0dac9414:
    sra	$a5,$a6,0x2
    beqz	$a5,.L0dac9450
    move	$a2,$v0
    move	$v0,$a3
    move	$a0,$a2
.L0dac9428:
    addiu	$v0,$v0,16
    addiu	$at,$a0,1
    # Line 1984
    sw	$at,-12($v0)
    # Line 1983
    addiu	$at,$at,1
    # Line 1984
    sw	$at,-8($v0)
    sw	$a0,-16($v0)
    # Line 1983
    addiu	$at,$at,1
    addiu	$a0,$at,1
    bne	$v0,$a1,.L0dac9428
    # Line 1984
    sw	$at,-4($v0)
.L0dac9450:
    # ld	gp,8(sp)
    # Line 1987
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glNamesGenNames

# Function: __glNamesDeleteNames
# Declared: Line 1992 (Source lines: 1994-2013)
# Address: 0x0dac9460 - 0x0dac95a8 (Size: 328 bytes, Frame: 224)
.globl __glNamesDeleteNames
.ent __glNamesDeleteNames
__glNamesDeleteNames:
    # Line 1994
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    sd	$s1,48($sp)
    sd	$ra,32($sp)
    sd	$s2,8($sp)
    move	$s2,$a1
    sd	$s3,0($sp)
    move	$s3,$a0
    # sd	gp,16(sp)
    lui	$at,0x13
    addiu	$at,$at,-7160
    # addu	gp,t9,at
    # Line 2005
    lw	$a5,0($a3)
    andi	$at,$a2,0x1
    beqz	$a2,.L0dac94dc
    move	$a6,$a5
    move	$a0,$a2
    move	$s0,$a3
    sll	$s1,$a2,0x2
    beqz	$at,.L0dac94c8
    addu	$s1,$s1,$a3
    lw	$v0,0($s0)
    bnel	$v0,$a5,.L0dac9578
    sd	$a0,24($sp)
.L0dac94c0:
    # Line 2006
    addiu	$a5,$a5,1
    addiu	$s0,$s0,4
.L0dac94c8:
    sra	$v1,$a0,0x1
    bnez	$v1,.L0dac9534
    sd	$ra,32($sp)
.L0dac94d4:
    ld	$s0,40($sp)
    ld	$s1,48($sp)
.L0dac94dc:
    # Line 2012
    move	$a0,$s3
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    move	$a1,$s2
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    # ld	gp,16(sp)
    # Line 2013
    ld	$ra,32($sp)
    ld	$s2,8($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac950c:
    # Line 2008
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    move	$a1,$s2
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    # Line 2009
    lw	$a5,4($s0)
    move	$a6,$a5
    # Line 2006
    addiu	$s0,$s0,8
.L0dac952c:
    beq	$s0,$s1,.L0dac94d4
    addiu	$a5,$a5,1
.L0dac9534:
    # Line 2005
    lw	$a4,0($s0)
    bne	$a4,$a5,.L0dac9558
    # Line 2008
    move	$a0,$s3
.L0dac9540:
    # Line 2005
    lw	$at,4($s0)
    # Line 2006
    addiu	$a5,$a5,1
    # Line 2005
    beql	$at,$a5,.L0dac952c
    # Line 2006
    addiu	$s0,$s0,8
    b	.L0dac950c
    # Line 2008
    move	$a0,$s3
.L0dac9558:
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    move	$a1,$s2
    move	$a2,$a6
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    # Line 2009
    lw	$a5,0($s0)
    b	.L0dac9540
    move	$a6,$a5
.L0dac9578:
    # Line 2008
    move	$a0,$s3
    move	$a1,$s2
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    move	$a2,$a6
    sd	$ra,32($sp)
    bal __glNamesDeleteRange
    subu	$a3,$a5,$a6
    ld	$a0,24($sp)
    # Line 2009
    lw	$a5,0($s0)
    ld	$ra,32($sp)
    b	.L0dac94c0
    move	$a6,$a5
.end __glNamesDeleteNames

.late_rodata
jtbl_0dbebc00:
    .word .L0dac7fd4
    .word .L0dac811c
    .word .L0dac825c
    .word .L0dac8290
    .word .L0dac82c4
    .word .L0dac82f8
    .word .L0dac832c
    .word .L0dac8374
    .word .L0dac83a8
    .word .L0dac83dc

