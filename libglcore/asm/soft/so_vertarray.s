# Source: ../soft/so_vertarray.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertarray.c
# Total Functions: 17

.text

# Function: __glInitVertexArrayState
# Declared: Line 31 (Source lines: 32-50)
# Address: 0x0db0ab10 - 0x0db0ab64 (Size: 84 bytes, Frame: 0)
.globl __glInitVertexArrayState
.ent __glInitVertexArrayState
__glInitVertexArrayState:
    # Line 37
    li	$v1,4
    # Line 38
    li	$a1,5126
    # Line 48
    sw	$a1,4840($a0)
    # Line 47
    sw	$v1,4836($a0)
    # Line 45
    sw	$a1,4812($a0)
    # Line 43
    sw	$a1,4788($a0)
    # Line 42
    sw	$v1,4784($a0)
    # Line 40
    sw	$a1,4760($a0)
    # Line 32
    lui	$a2,0xf
    addiu	$a2,$a2,-12968
    # addu	at,t9,a2
    la	$v0,__glNop
    # Line 38
    sw	$a1,4736($a0)
    # Line 37
    sw	$v1,4732($a0)
    # Line 49
    sw	$v0,4876($a0)
    # Line 46
    sw	$v0,4856($a0)
    # Line 44
    sw	$v0,4828($a0)
    # Line 41
    sw	$v0,4804($a0)
    # Line 39
    sw	$v0,4776($a0)
    # Line 50
    jr	$ra
    # Line 36
    sw	$v0,4752($a0)
.end __glInitVertexArrayState

# Function: __glim_ArrayElementEXT
# Declared: Line 52 (Source lines: 53-75)
# Address: 0x0db0ab64 - 0x0db0acc4 (Size: 352 bytes, Frame: 192)
.globl __glim_ArrayElementEXT
.ent __glim_ArrayElementEXT
__glim_ArrayElementEXT:
    # Line 53
    addiu	$sp,$sp,-64
    sd	$s5,8($sp)
    move	$s5,$a0
    sd	$s1,0($sp)
    # Line 54
    lw	$s1,__glCurrentContext
    # sd	gp,24(sp)
    sd	$s7,16($sp)
    # Line 55
    lw	$s7,4888($s1)
    # Line 53
    lui	$v0,0xf
    addiu	$v0,$v0,-13052
    # Line 55
    andi	$at,$s7,0x1
    beqz	$at,.L0db0abbc
    # Line 53
    nop
    # Line 58
    lw	$a2,4764($s1)
    mult	$a2,$s5
    sd	$ra,32($sp)
    lw	$t9,4776($s1)
    lw	$a0,4756($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
.L0db0abbc:
    andi	$at,$s7,0x2
    beqz	$at,.L0db0abf0
    # Line 61
    andi	$at,$s7,0x4
    lw	$a2,4792($s1)
    mult	$a2,$s5
    sd	$ra,32($sp)
    lw	$t9,4804($s1)
    lw	$a0,4780($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
    andi	$at,$s7,0x4
.L0db0abf0:
    beqz	$at,.L0db0ac20
    # Line 64
    andi	$at,$s7,0x8
    lw	$a2,4844($s1)
    mult	$a2,$s5
    sd	$ra,32($sp)
    lw	$t9,4856($s1)
    lw	$a0,4832($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
    andi	$at,$s7,0x8
.L0db0ac20:
    beqz	$at,.L0db0ac50
    # Line 67
    andi	$at,$s7,0x10
    lw	$a2,4816($s1)
    mult	$a2,$s5
    sd	$ra,32($sp)
    lw	$t9,4828($s1)
    lw	$a0,4808($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
    andi	$at,$s7,0x10
.L0db0ac50:
    beqz	$at,.L0db0ac80
    # Line 70
    andi	$at,$s7,0x20
    lw	$a2,4864($s1)
    mult	$a2,$s5
    sd	$ra,32($sp)
    lw	$t9,4876($s1)
    lw	$a0,4860($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
    andi	$at,$s7,0x20
.L0db0ac80:
    beqz	$at,.L0db0acb0
    ld	$s7,16($sp)
    # Line 73
    lw	$a2,4740($s1)
    mult	$a2,$s5
    ld	$s7,16($sp)
    sd	$ra,32($sp)
    lw	$t9,4752($s1)
    lw	$a0,4728($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$ra,32($sp)
.L0db0acb0:
    # ld	gp,24(sp)
    # Line 75
    ld	$s1,0($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_ArrayElementEXT

# Function: __glim_DrawArraysEXT
# Declared: Line 77 (Source lines: 80-95)
# Address: 0x0db0acc4 - 0x0db0ad88 (Size: 196 bytes, Frame: 48)
.globl __glim_DrawArraysEXT
.ent __glim_DrawArraysEXT
__glim_DrawArraysEXT:
    # Line 81
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 80
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 81
    lw	$at,__glBeginMode
    # Line 80
    lui	$v1,0xf
    addiu	$v1,$v1,-13404
    # Line 81
    beq	$at,$v0,.L0db0ad68
    # Line 80
    addu	$gp,$t9,$v1
    # Line 84
    bltz	$a1,.L0db0ad4c
    # Line 85
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 84
    bltz	$a2,.L0db0ad48
    # Line 86
    sltiu	$a3,$a0,10
    bnez	$a3,.L0db0ad1c
    sd	$ra,8($sp)
    # Line 90
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 91
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0ad1c:
    # Line 94
    lw	$ra,4888($a4)
    lw	$t9,12668($a4)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    jalr	$t9
    nop
    # Line 95
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0ad48:
    # Line 85
    # lw $t9, -29008($gp) # &__glSetError
.L0db0ad4c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 86
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0ad68:
    # Line 81
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_DrawArraysEXT

# Function: __glim_VertexPointerEXT
# Declared: Line 265 (Source lines: 270-303)
# Address: 0x0db0ad88 - 0x0db0aef4 (Size: 364 bytes, Frame: 192)
.globl __glim_VertexPointerEXT
.ent __glim_VertexPointerEXT
__glim_VertexPointerEXT:
    # Line 271
    lw	$a6,__glCurrentContext
    # Line 270
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,-13600
    # Line 273
    bltz	$a2,.L0db0ae54
    # Line 270
    addu	$gp,$t9,$at
    # Line 273
    bltz	$a3,.L0db0ae54
    # Line 295
    la	$a7,sub_0dbf0000
    # Line 273
    slti	$v0,$a0,2
    bnez	$v0,.L0db0ae54
    slti	$v1,$a0,5
    beqz	$v1,.L0db0ae54
    # Line 278
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0db0ae7c
    sltiu	$at,$a1,5131
    beqz	$at,.L0db0ae7c
    # Line 284
    lui	$t0,0xfffe
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$t0
    lw	$a5,-21828($gp)
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    addu	$v0,$v0,$v1
    lw	$v0,28672($v0)
    # Line 299
    li	$v1,-256
    # Line 284
    beqz	$v0,.L0db0aecc
    sw	$v0,4752($a6)
    # Line 294
    sw	$a1,4736($a6)
    # Line 293
    sw	$a0,4732($a6)
    # Line 294
    beqz	$a2,.L0db0aea4
    # Line 292
    sw	$a4,4728($a6)
    # Line 295
    addiu	$a7,$a7,-9336
    move	$a4,$a2
.L0db0ae18:
    # Line 298
    sw	$a3,4748($a6)
    # Line 297
    sw	$a2,4744($a6)
    # Line 295
    sw	$a4,4740($a6)
    ld	$gp,0($sp)
    # Line 299
    lw	$v0,4880($a6)
    sll	$at,$a1,0x2
    addu	$at,$at,$a7
    lw	$at,-19136($at)
    # Line 303
    addiu	$sp,$sp,64
    # Line 299
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sll	$v0,$a0,0x4
    or	$at,$at,$v0
    # Line 303
    jr	$ra
    # Line 299
    sw	$at,4880($a6)
.L0db0ae54:
    # Line 275
    li	$a0,1281
    # lw $t9, -29008($gp) # &__glSetError
    # Line 274
    la	$v0,__glNop
    sd	$ra,8($sp)
    # Line 275
    jal	__glSetError
    # Line 274
    sw	$v0,4752($a6)
    # Line 276
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0ae7c:
    # Line 280
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 279
    la	$v1,__glNop
    sd	$ra,8($sp)
    # Line 280
    jal	__glSetError
    # Line 279
    sw	$v1,4752($a6)
    # Line 281
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0aea4:
    # Line 295
    la	$a7,sub_0dbf0000
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a1
    addu	$a4,$a4,$a0
    addiu	$a7,$a7,-9336
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t0
    b	.L0db0ae18
    lw	$a4,28672($a4)
.L0db0aecc:
    # Line 287
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 286
    la	$a5,__glNop
    sd	$ra,8($sp)
    # Line 287
    jal	__glSetError
    # Line 286
    sw	$a5,4752($a6)
    # Line 288
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_VertexPointerEXT

# Function: __glim_NormalPointerEXT
# Declared: Line 305 (Source lines: 309-341)
# Address: 0x0db0aef4 - 0x0db0b030 (Size: 316 bytes, Frame: 48)
.globl __glim_NormalPointerEXT
.ent __glim_NormalPointerEXT
__glim_NormalPointerEXT:
    # Line 310
    lw	$a5,__glCurrentContext
    # Line 323
    sll	$a7,$a0,0x2
    # Line 309
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,-13964
    # Line 312
    bltz	$a1,.L0db0afe0
    # Line 309
    addu	$gp,$t9,$at
    # Line 312
    bltz	$a2,.L0db0afe0
    # Line 333
    la	$a6,sub_0dbf0000
    # Line 317
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0db0afa0
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0db0afa0
    # Line 323
    lui	$t0,0xfffe
    lw	$a4,-21824($gp)
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t0
    lw	$a4,28684($a4)
    # Line 337
    li	$v1,-3841
    # Line 323
    beqz	$a4,.L0db0b008
    sw	$a4,4776($a5)
    # Line 332
    sw	$a0,4760($a5)
    beqz	$a1,.L0db0afc8
    # Line 331
    sw	$a3,4756($a5)
    # Line 333
    addiu	$a6,$a6,-9336
    move	$a3,$a1
.L0db0af68:
    # Line 336
    sw	$a2,4772($a5)
    # Line 335
    sw	$a1,4768($a5)
    # Line 333
    sw	$a3,4764($a5)
    ld	$gp,0($sp)
    # Line 337
    lw	$at,4880($a5)
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a6
    lw	$v0,-19136($v0)
    # Line 341
    addiu	$sp,$sp,48
    # Line 337
    and	$at,$at,$v1
    sll	$v0,$v0,0x8
    or	$at,$at,$v0
    # Line 341
    jr	$ra
    # Line 337
    sw	$at,4880($a5)
.L0db0afa0:
    # Line 319
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 318
    la	$v1,__glNop
    sd	$ra,8($sp)
    # Line 319
    jal	__glSetError
    # Line 318
    sw	$v1,4776($a5)
    # Line 320
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0afc8:
    # Line 333
    la	$a6,sub_0dbf0000
    addiu	$a6,$a6,-9336
    addu	$a3,$a7,$a6
    addu	$a3,$a3,$t0
    b	.L0db0af68
    lw	$a3,28684($a3)
.L0db0afe0:
    # Line 314
    li	$a0,1281
    # lw $t9, -29008($gp) # &__glSetError
    # Line 313
    la	$a7,__glNop
    sd	$ra,8($sp)
    # Line 314
    jal	__glSetError
    # Line 313
    sw	$a7,4776($a5)
    # Line 315
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0b008:
    # Line 326
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 325
    la	$t0,__glNop
    sd	$ra,8($sp)
    # Line 326
    jal	__glSetError
    # Line 325
    sw	$t0,4776($a5)
    # Line 327
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_NormalPointerEXT

# Function: __glim_ColorPointerEXT
# Declared: Line 343 (Source lines: 348-381)
# Address: 0x0db0b030 - 0x0db0b1a8 (Size: 376 bytes, Frame: 192)
.globl __glim_ColorPointerEXT
.ent __glim_ColorPointerEXT
__glim_ColorPointerEXT:
    # Line 349
    lw	$a6,__glCurrentContext
    # Line 348
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,-14280
    # Line 351
    bltz	$a2,.L0db0b108
    # Line 348
    addu	$gp,$t9,$at
    # Line 351
    bltz	$a3,.L0db0b108
    # Line 373
    la	$a7,sub_0dbf0000
    # Line 351
    slti	$v0,$a0,3
    bnez	$v0,.L0db0b108
    slti	$v1,$a0,5
    beqz	$v1,.L0db0b108
    # Line 356
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0db0b130
    sltiu	$at,$a1,5131
    beqz	$at,.L0db0b130
    # Line 362
    lui	$t0,0xfffe
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$t0
    lw	$a5,-21820($gp)
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    addu	$v0,$v0,$v1
    lw	$v0,28672($v0)
    # Line 377
    lui	$v1,0xf
    # Line 362
    beqz	$v0,.L0db0b180
    sw	$v0,4804($a6)
    # Line 372
    sw	$a1,4788($a6)
    # Line 371
    sw	$a0,4784($a6)
    # Line 370
    sw	$a4,4780($a6)
    # Line 377
    ori	$v1,$v1,0xf000
    # Line 372
    beqz	$a2,.L0db0b158
    # Line 377
    nor	$v1,$v1,$zero
    # Line 373
    move	$a4,$a2
    addiu	$a7,$a7,-9336
.L0db0b0c8:
    # Line 376
    sw	$a3,4800($a6)
    # Line 375
    sw	$a2,4796($a6)
    # Line 373
    sw	$a4,4792($a6)
    ld	$gp,0($sp)
    # Line 377
    lw	$at,4880($a6)
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$a7
    lw	$v0,-19136($v0)
    # Line 381
    addiu	$sp,$sp,64
    # Line 377
    and	$at,$at,$v1
    sll	$v0,$v0,0xc
    or	$at,$at,$v0
    sll	$v0,$a0,0x10
    or	$at,$at,$v0
    # Line 381
    jr	$ra
    # Line 377
    sw	$at,4880($a6)
.L0db0b108:
    # Line 353
    li	$a0,1281
    # lw $t9, -29008($gp) # &__glSetError
    # Line 352
    la	$a1,__glNop
    sd	$ra,8($sp)
    # Line 353
    jal	__glSetError
    # Line 352
    sw	$a1,4804($a6)
    # Line 354
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0b130:
    # Line 358
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 357
    la	$a2,__glNop
    sd	$ra,8($sp)
    # Line 358
    jal	__glSetError
    # Line 357
    sw	$a2,4804($a6)
    # Line 359
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0b158:
    # Line 373
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a1
    la	$a7,sub_0dbf0000
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,-9336
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t0
    b	.L0db0b0c8
    lw	$a4,28672($a4)
.L0db0b180:
    # Line 365
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 364
    la	$a5,__glNop
    sd	$ra,8($sp)
    # Line 365
    jal	__glSetError
    # Line 364
    sw	$a5,4804($a6)
    # Line 366
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_ColorPointerEXT

# Function: __glim_TexCoordPointerEXT
# Declared: Line 383 (Source lines: 388-422)
# Address: 0x0db0b1a8 - 0x0db0b318 (Size: 368 bytes, Frame: 192)
.globl __glim_TexCoordPointerEXT
.ent __glim_TexCoordPointerEXT
__glim_TexCoordPointerEXT:
    # Line 389
    lw	$a6,__glCurrentContext
    # Line 388
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,-14656
    # Line 391
    bltz	$a2,.L0db0b2a0
    # Line 388
    addu	$gp,$t9,$at
    # Line 391
    bltz	$a3,.L0db0b2a0
    # Line 413
    la	$a7,sub_0dbf0000
    # Line 391
    blez	$a0,.L0db0b2a0
    slti	$v0,$a0,5
    beqz	$v0,.L0db0b2a0
    # Line 396
    sltiu	$v1,$a1,5120
    bnez	$v1,.L0db0b278
    sltiu	$a5,$a1,5131
    beqz	$a5,.L0db0b278
    # Line 402
    lui	$t0,0xfffe
    sll	$at,$a0,0x2
    addu	$at,$at,$t0
    lw	$v1,-21816($gp)
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    lw	$at,28672($at)
    # Line 417
    lui	$v1,0x7f0
    # Line 402
    beqz	$at,.L0db0b2f0
    sw	$at,4856($a6)
    # Line 412
    sw	$a1,4840($a6)
    # Line 411
    sw	$a0,4836($a6)
    # Line 412
    beqz	$a2,.L0db0b2c8
    # Line 410
    sw	$a4,4832($a6)
    # Line 413
    addiu	$a7,$a7,-9336
    move	$a4,$a2
.L0db0b234:
    # Line 417
    nor	$v1,$v1,$zero
    # Line 416
    sw	$a3,4852($a6)
    # Line 415
    sw	$a2,4848($a6)
    # Line 413
    sw	$a4,4844($a6)
    ld	$gp,0($sp)
    # Line 417
    lw	$at,4880($a6)
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$a7
    lw	$v0,-19136($v0)
    # Line 422
    addiu	$sp,$sp,64
    # Line 417
    and	$at,$at,$v1
    sll	$v0,$v0,0x14
    or	$at,$at,$v0
    sll	$v0,$a0,0x18
    or	$at,$at,$v0
    # Line 422
    jr	$ra
    # Line 417
    sw	$at,4880($a6)
.L0db0b278:
    # Line 398
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 397
    la	$v1,__glNop
    sd	$ra,8($sp)
    # Line 398
    jal	__glSetError
    # Line 397
    sw	$v1,4856($a6)
    # Line 399
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0b2a0:
    # Line 393
    li	$a0,1281
    # lw $t9, -29008($gp) # &__glSetError
    # Line 392
    la	$a1,__glNop
    sd	$ra,8($sp)
    # Line 393
    jal	__glSetError
    # Line 392
    sw	$a1,4856($a6)
    # Line 394
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db0b2c8:
    # Line 413
    la	$a7,sub_0dbf0000
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$a1
    addu	$a4,$a4,$a0
    addiu	$a7,$a7,-9336
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t0
    b	.L0db0b234
    lw	$a4,28672($a4)
.L0db0b2f0:
    # Line 405
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 404
    la	$a5,__glNop
    sd	$ra,8($sp)
    # Line 405
    jal	__glSetError
    # Line 404
    sw	$a5,4856($a6)
    # Line 406
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_TexCoordPointerEXT

# Function: __glim_EdgeFlagPointerEXT
# Declared: Line 425 (Source lines: 428-445)
# Address: 0x0db0b318 - 0x0db0b3a8 (Size: 144 bytes, Frame: 48)
.globl __glim_EdgeFlagPointerEXT
.ent __glim_EdgeFlagPointerEXT
__glim_EdgeFlagPointerEXT:
    # Line 429
    lw	$a4,__glCurrentContext
    # Line 428
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    lui	$at,0xf
    addiu	$at,$at,-15024
    # Line 431
    bltz	$a0,.L0db0b380
    # Line 428
    nop
    # Line 431
    bltzl	$a1,.L0db0b384
    # Line 433
    li	$a0,1281
    # Line 437
    beqz	$a0,.L0db0b378
    sw	$a2,4860($a4)
    # Line 438
    move	$a2,$a0
.L0db0b348:
    # Line 441
    lui	$v1,0x800
    # Line 440
    sw	$a1,4872($a4)
    # Line 438
    sw	$a2,4864($a4)
    # Line 439
    sw	$a0,4868($a4)
    # Line 444
    la	$a0,glEdgeFlagv
    # ld	gp,0(sp)
    # Line 441
    lw	$v0,4880($a4)
    # Line 445
    addiu	$sp,$sp,48
    # Line 444
    sw	$a0,4876($a4)
    # Line 441
    or	$v0,$v0,$v1
    # Line 445
    jr	$ra
    # Line 441
    sw	$v0,4880($a4)
.L0db0b378:
    b	.L0db0b348
    # Line 438
    li	$a2,1
.L0db0b380:
    # Line 433
    li	$a0,1281
.L0db0b384:
    # lw $t9, -29008($gp) # &__glSetError
    # Line 432
    la	$a1,__glNop
    sd	$ra,8($sp)
    # Line 433
    jal	__glSetError
    # Line 432
    sw	$a1,4876($a4)
    # Line 434
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_EdgeFlagPointerEXT

# Function: __glim_IndexPointerEXT
# Declared: Line 447 (Source lines: 451-482)
# Address: 0x0db0b3a8 - 0x0db0b4e8 (Size: 320 bytes, Frame: 48)
.globl __glim_IndexPointerEXT
.ent __glim_IndexPointerEXT
__glim_IndexPointerEXT:
    # Line 452
    lw	$a5,__glCurrentContext
    # Line 465
    sll	$a7,$a0,0x2
    # Line 451
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0xf
    addiu	$at,$at,-15168
    # Line 454
    bltz	$a1,.L0db0b498
    # Line 451
    addu	$gp,$t9,$at
    # Line 454
    bltz	$a2,.L0db0b498
    # Line 475
    la	$a6,sub_0dbf0000
    # Line 459
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0db0b458
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0db0b458
    # Line 465
    lui	$t0,0xfffe
    lw	$a4,-21812($gp)
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$t0
    lw	$a4,28676($a4)
    # Line 479
    lui	$v1,0xfff
    ori	$v1,$v1,0xffff
    # Line 465
    beqz	$a4,.L0db0b4c0
    sw	$a4,4828($a5)
    # Line 474
    sw	$a0,4812($a5)
    beqz	$a1,.L0db0b480
    # Line 473
    sw	$a3,4808($a5)
    # Line 475
    addiu	$a6,$a6,-9336
    move	$a3,$a1
.L0db0b420:
    # Line 478
    sw	$a2,4824($a5)
    # Line 477
    sw	$a1,4820($a5)
    # Line 475
    sw	$a3,4816($a5)
    ld	$gp,0($sp)
    # Line 479
    lw	$at,4880($a5)
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a6
    lw	$v0,-19136($v0)
    # Line 482
    addiu	$sp,$sp,48
    # Line 479
    and	$at,$at,$v1
    sll	$v0,$v0,0x1c
    or	$at,$at,$v0
    # Line 482
    jr	$ra
    # Line 479
    sw	$at,4880($a5)
.L0db0b458:
    # Line 461
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 460
    la	$v1,__glNop
    sd	$ra,8($sp)
    # Line 461
    jal	__glSetError
    # Line 460
    sw	$v1,4828($a5)
    # Line 462
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0b480:
    # Line 475
    la	$a6,sub_0dbf0000
    addiu	$a6,$a6,-9336
    addu	$a3,$a7,$a6
    addu	$a3,$a3,$t0
    b	.L0db0b420
    lw	$a3,28676($a3)
.L0db0b498:
    # Line 456
    li	$a0,1281
    # lw $t9, -29008($gp) # &__glSetError
    # Line 455
    la	$a7,__glNop
    sd	$ra,8($sp)
    # Line 456
    jal	__glSetError
    # Line 455
    sw	$a7,4828($a5)
    # Line 457
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0b4c0:
    # Line 468
    li	$a0,1280
    # lw $t9, -29008($gp) # &__glSetError
    # Line 467
    la	$t0,__glNop
    sd	$ra,8($sp)
    # Line 468
    jal	__glSetError
    # Line 467
    sw	$t0,4828($a5)
    # Line 469
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_IndexPointerEXT

# Function: __glim_ColorPointer
# Declared: Line 485 (Source lines: 485-491)
# Address: 0x0db0b4e8 - 0x0db0b548 (Size: 96 bytes, Frame: 48)
.globl __glim_ColorPointer
.ent __glim_ColorPointer
__glim_ColorPointer:
    # Line 485
    move	$a4,$a3
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-15488
    beq	$at,$v0,.L0db0b52c
    nop
    # Line 490
    # lw $t9, -26156($gp) # &__glim_ColorPointerEXT
    bal __glim_ColorPointerEXT
    move	$a3,$zero
    # Line 491
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0b52c:
    # Line 487
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 488
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorPointer

# Function: __glim_DrawElements
# Declared: Line 494 (Source lines: 494-525)
# Address: 0x0db0b548 - 0x0db0b714 (Size: 460 bytes, Frame: 208)
.globl __glim_DrawElements
.ent __glim_DrawElements
__glim_DrawElements:
    # Line 494
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$a3,0($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s1,8($sp)
    move	$s1,$a1
    # sd	gp,24(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-15584
    beq	$at,$v0,.L0db0b6c4
    nop
    # Line 495
    bltz	$s1,.L0db0b6ec
    # Line 502
    li	$v0,5125
    sltiu	$a4,$a0,10
    beqz	$a4,.L0db0b5a8
    li	$a1,5121
    beq	$a1,$s0,.L0db0b5d0
    li	$at,5123
    beql	$s0,$at,.L0db0b5d4
    # Line 508
    lw	$t9,4196($zero)
    # Line 502
    beq	$s0,$v0,.L0db0b5d0
    sd	$ra,32($sp)
.L0db0b5a8:
    # Line 505
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # ld	gp,24(sp)
    # Line 506
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0b5d0:
    # Line 508
    lw	$t9,4196($zero)
.L0db0b5d4:
    sd	$ra,32($sp)
    jalr	$t9
    nop
    li	$v1,5121
    # Line 509
    beq	$v1,$s0,.L0db0b620
    li	$a4,5123
    beq	$s0,$a4,.L0db0b654
    li	$at,5125
    beq	$s0,$at,.L0db0b68c
    nop
.L0db0b5fc:
    # Line 524
    lw	$t9,4212($zero)
    jalr	$t9
    nop
    # ld	gp,24(sp)
    # Line 525
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0b620:
    # Line 512
    blez	$s1,.L0db0b5fc
    sd	$s4,40($sp)
    ld	$s4,0($sp)
    move	$s0,$s4
    addu	$s4,$s1,$s4
    # Line 513
    lw	$t9,4960($zero)
.L0db0b638:
    jalr	$t9
    lbu	$a0,0($s0)
    # Line 512
    addiu	$s0,$s0,1
    bnel	$s0,$s4,.L0db0b638
    # Line 513
    lw	$t9,4960($zero)
    b	.L0db0b5fc
    ld	$s4,40($sp)
.L0db0b654:
    # Line 516
    blez	$s1,.L0db0b5fc
    sd	$s4,40($sp)
    ld	$at,0($sp)
    move	$s0,$at
    addu	$s4,$s1,$s1
    addu	$s4,$s4,$at
    # Line 517
    lw	$t9,4960($zero)
.L0db0b670:
    jalr	$t9
    lhu	$a0,0($s0)
    # Line 516
    addiu	$s0,$s0,2
    bnel	$s0,$s4,.L0db0b670
    # Line 517
    lw	$t9,4960($zero)
    b	.L0db0b5fc
    ld	$s4,40($sp)
.L0db0b68c:
    # Line 520
    blez	$s1,.L0db0b5fc
    ld	$at,0($sp)
    move	$s0,$at
    sd	$s4,40($sp)
    sll	$s4,$s1,0x2
    addu	$s4,$s4,$at
    # Line 521
    lw	$t9,4960($zero)
.L0db0b6a8:
    jalr	$t9
    lw	$a0,0($s0)
    # Line 520
    addiu	$s0,$s0,4
    bnel	$s0,$s4,.L0db0b6a8
    # Line 521
    lw	$t9,4960($zero)
    b	.L0db0b5fc
    ld	$s4,40($sp)
.L0db0b6c4:
    # Line 495
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    # ld	gp,24(sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0b6ec:
    # Line 499
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1281
    # ld	gp,24(sp)
    # Line 500
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_DrawElements

# Function: __glim_EdgeFlagPointer
# Declared: Line 528 (Source lines: 528-534)
# Address: 0x0db0b714 - 0x0db0b774 (Size: 96 bytes, Frame: 32)
.globl __glim_EdgeFlagPointer
.ent __glim_EdgeFlagPointer
__glim_EdgeFlagPointer:
    # Line 528
    move	$a2,$a1
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-16044
    beq	$at,$v0,.L0db0b758
    nop
    # Line 533
    # lw $t9, -26148($gp) # &__glim_EdgeFlagPointerEXT
    bal __glim_EdgeFlagPointerEXT
    move	$a1,$zero
    # Line 534
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db0b758:
    # Line 530
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 531
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EdgeFlagPointer

# Function: __glim_IndexPointer
# Declared: Line 537 (Source lines: 537-543)
# Address: 0x0db0b774 - 0x0db0b7d4 (Size: 96 bytes, Frame: 48)
.globl __glim_IndexPointer
.ent __glim_IndexPointer
__glim_IndexPointer:
    # Line 537
    move	$a3,$a2
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-16140
    beq	$at,$v0,.L0db0b7b8
    nop
    # Line 542
    # lw $t9, -26144($gp) # &__glim_IndexPointerEXT
    bal __glim_IndexPointerEXT
    move	$a2,$zero
    # Line 543
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0b7b8:
    # Line 539
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 540
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_IndexPointer

# Function: __glim_InterleavedArrays
# Declared: Line 546 (Source lines: 546-613)
# Address: 0x0db0b7d4 - 0x0db0ba2c (Size: 600 bytes, Frame: 208)
.globl __glim_InterleavedArrays
.ent __glim_InterleavedArrays
__glim_InterleavedArrays:
    # Line 579
    li	$v0,1
    # Line 546
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    # Line 579
    lw	$s0,__glCurrentContext
    sd	$s2,24($sp)
    # Line 546
    move	$s2,$a2
    sd	$s1,0($sp)
    move	$s1,$a1
    sd	$gp,16($sp)
    # Line 579
    lw	$at,__glBeginMode
    # Line 546
    lui	$v1,0xf
    addiu	$v1,$v1,-16236
    # Line 579
    beq	$at,$v0,.L0db0b9d4
    # Line 546
    addu	$gp,$t9,$v1
    # Line 579
    bltz	$s1,.L0db0ba00
    # Line 585
    sltiu	$a4,$a0,10784
    bnez	$a4,.L0db0b960
    sltiu	$at,$a0,10798
    beqz	$at,.L0db0b964
    # Line 586
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$s3,40($sp)
    # Line 587
    sll	$s3,$a0,0x3
    la	$at,sub_0dbf0000
    addu	$s3,$s3,$a0
    sll	$s3,$s3,0x2
    addiu	$at,$at,-9336
    addu	$s3,$s3,$at
    lui	$at,0x6
    beqz	$s1,.L0db0b98c
    subu	$s3,$s3,$at
.L0db0b84c:
    # Line 591
    lw	$t9,5580($s0)
    lw	$t9,876($t9)
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,0x8079
    # Line 592
    lw	$t9,5580($s0)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8077
    lbu	$at,6384($s3)
    beqz	$at,.L0db0b998
    lw	$a1,5580($s0)
    # Line 594
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8078
    # Line 595
    lw	$t9,5580($s0)
    move	$a3,$s2
    lw	$t9,904($t9)
    move	$a2,$s1
    li	$a1,5126
    jalr	$t9
    lw	$a0,6388($s3)
    # Line 597
    lbu	$at,6385($s3)
.L0db0b8a8:
    beqz	$at,.L0db0b9ac
    lw	$a1,5580($s0)
    # Line 600
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8076
    # Line 601
    lw	$t9,5580($s0)
    move	$a2,$s1
    lw	$a1,6400($s3)
    lw	$t9,872($t9)
    lw	$a3,6404($s3)
    lw	$a0,6392($s3)
    jalr	$t9
    addu	$a3,$a3,$s2
    # Line 603
    lbu	$at,6386($s3)
.L0db0b8e0:
    beqz	$at,.L0db0b9c0
    lw	$a1,5580($s0)
    # Line 606
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8075
    # Line 607
    lw	$t9,5580($s0)
    move	$a1,$s1
    lw	$t9,900($t9)
    lw	$a2,6408($s3)
    li	$a0,5126
    jalr	$t9
    addu	$a2,$a2,$s2
    # Line 611
    lw	$t9,5580($s0)
.L0db0b914:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8074
    # Line 612
    lw	$t9,5580($s0)
    move	$a2,$s1
    li	$a1,5126
    lw	$t9,908($t9)
    lw	$a3,6412($s3)
    lw	$a0,6396($s3)
    jalr	$t9
    addu	$a3,$a3,$s2
    ld	$s3,40($sp)
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 613
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0b960:
    # Line 586
    # lw $t9, -29008($gp) # &__glSetError
.L0db0b964:
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,16($sp)
    # Line 587
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0b98c:
    sd	$ra,32($sp)
    b	.L0db0b84c
    # Line 590
    lw	$s1,6416($s3)
.L0db0b998:
    # Line 597
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8078
    b	.L0db0b8a8
    lbu	$at,6385($s3)
.L0db0b9ac:
    # Line 603
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8076
    b	.L0db0b8e0
    lbu	$at,6386($s3)
.L0db0b9c0:
    # Line 609
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8075
    b	.L0db0b914
    # Line 611
    lw	$t9,5580($s0)
.L0db0b9d4:
    # Line 579
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0ba00:
    # Line 582
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,16($sp)
    # Line 583
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_InterleavedArrays

# Function: __glim_NormalPointer
# Declared: Line 616 (Source lines: 616-622)
# Address: 0x0db0ba2c - 0x0db0ba8c (Size: 96 bytes, Frame: 48)
.globl __glim_NormalPointer
.ent __glim_NormalPointer
__glim_NormalPointer:
    # Line 616
    move	$a3,$a2
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-16836
    beq	$at,$v0,.L0db0ba70
    nop
    # Line 621
    # lw $t9, -26160($gp) # &__glim_NormalPointerEXT
    bal __glim_NormalPointerEXT
    move	$a2,$zero
    # Line 622
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0ba70:
    # Line 618
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 619
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_NormalPointer

# Function: __glim_TexCoordPointer
# Declared: Line 625 (Source lines: 625-631)
# Address: 0x0db0ba8c - 0x0db0baec (Size: 96 bytes, Frame: 48)
.globl __glim_TexCoordPointer
.ent __glim_TexCoordPointer
__glim_TexCoordPointer:
    # Line 625
    move	$a4,$a3
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-16932
    beq	$at,$v0,.L0db0bad0
    nop
    # Line 630
    # lw $t9, -26152($gp) # &__glim_TexCoordPointerEXT
    bal __glim_TexCoordPointerEXT
    move	$a3,$zero
    # Line 631
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0bad0:
    # Line 627
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 628
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexCoordPointer

# Function: __glim_VertexPointer
# Declared: Line 634 (Source lines: 634-640)
# Address: 0x0db0baec - 0x0db0bb4c (Size: 96 bytes, Frame: 48)
.globl __glim_VertexPointer
.ent __glim_VertexPointer
__glim_VertexPointer:
    # Line 634
    move	$a4,$a3
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0xf
    addiu	$v1,$v1,-17028
    beq	$at,$v0,.L0db0bb30
    nop
    # Line 639
    # lw $t9, -26164($gp) # &__glim_VertexPointerEXT
    bal __glim_VertexPointerEXT
    move	$a3,$zero
    # Line 640
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0bb30:
    # Line 636
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 637
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_VertexPointer

