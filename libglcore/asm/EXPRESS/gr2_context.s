# Source: ../EXPRESS/gr2_context.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_context.c
# Total Functions: 22

.text

# Function: __glExpIoctl
# Declared: Line 54 (Source lines: 55-59)
# Address: 0x0da585d0 - 0x0da58604 (Size: 52 bytes, Frame: 48)
.globl __glExpIoctl
.ent __glExpIoctl
__glExpIoctl:
    # Line 55
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x1a
    addiu	$at,$at,-3432
    # addu	gp,t9,at
    # Line 59
    # lw $t9, -23004($gp) # &ioctl
    sd	$ra,0($sp)
    jal	ioctl
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpIoctl

# Function: GetBoardInfo
# Declared: Line 63 (Source lines: 64-220)
# Address: 0x0da58604 - 0x0da588a4 (Size: 672 bytes, Frame: 128)
.ent GetBoardInfo
GetBoardInfo:
    # Line 64
    addiu	$sp,$sp,-128
    sd	$s0,96($sp)
    move	$s0,$a0
    # Line 73
    lw	$t9,32($s0)
    sd	$ra,88($sp)
    jalr	$t9
    nop
    # Line 76
    addiu	$a2,$sp,0
    li	$a1,102
    # lw $t9, -32412($gp) # &__glExpIoctl
    # Line 73
    sw	$v0,0($sp)
    # Line 74
    addiu	$v0,$sp,16
    # Line 75
    li	$at,60
    sw	$at,8($sp)
    # Line 74
    sw	$v0,4($sp)
    # Line 76
    bal __glExpIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0da5882c
    # Line 83
    lbu	$a0,62($sp)
.L0da58650:
    li	$v1,4
    beq	$v1,$a0,.L0da58788
    li	$a1,5
    beq	$a0,$a1,.L0da58748
    # Line 88
    nop	# was lw $t9, -23000($gp) # &strcpy
    addiu	$a1,$sp,16
    jal	strcpy
    addiu	$a0,$s0,31520
.L0da58670:
    # Line 97
    lbu	$a2,70($sp)
    li	$a0,1
    beq	$a0,$a2,.L0da58848
    li	$at,2
    li	$v1,8
    beq	$a2,$at,.L0da58758
    li	$v0,4
    beq	$v0,$a2,.L0da587b4
    # Line 113
    lbu	$v0,57($sp)
    # Line 97
    beq	$a2,$v1,.L0da587e0
.L0da58698:
    # Line 126
    lbu	$a1,60($sp)
.L0da5869c:
    # Line 172
    li	$a3,24
    # Line 126
    beqz	$a1,.L0da58798
    ld	$ra,88($sp)
    # Line 172
    lbu	$a2,3109($s0)
    beqzl	$a2,.L0da586dc
    # Line 182
    sw	$zero,31512($s0)
    # Line 172
    lw	$a4,3128($s0)
    slti	$at,$a4,25
    beqzl	$at,.L0da586dc
    # Line 182
    sw	$zero,31512($s0)
    # Line 178
    sw	$a4,31512($s0)
    # Line 177
    sb	$a0,31565($s0)
    # Line 179
    li	$a3,24
    b	.L0da586e0
    subu	$a3,$a3,$a4
    # Line 182
    sw	$zero,31512($s0)
.L0da586dc:
    # Line 181
    sb	$zero,31565($s0)
.L0da586e0:
    # Line 182
    lbu	$at,3110($s0)
    beqz	$at,.L0da5870c
    # Line 192
    move	$a0,$zero
    # Line 182
    lw	$a4,3132($s0)
    slt	$v0,$a3,$a4
    bnezl	$v0,.L0da58710
    # Line 193
    sw	$zero,31516($s0)
    # Line 189
    sw	$a4,31516($s0)
    # Line 188
    li	$a0,1
    # Line 190
    b	.L0da58714
    # Line 188
    sb	$a0,31566($s0)
.L0da5870c:
    # Line 193
    sw	$zero,31516($s0)
.L0da58710:
    # Line 192
    sb	$zero,31566($s0)
.L0da58714:
    # Line 199
    beqzl	$a2,.L0da58740
    # Line 220
    ld	$s0,96($sp)
    # Line 199
    lbu	$v1,3110($s0)
    beqzl	$v1,.L0da58740
    # Line 220
    ld	$s0,96($sp)
    # Line 207
    lbu	$a1,31565($s0)
    beql	$a1,$a0,.L0da58740
    # Line 220
    ld	$s0,96($sp)
    # Line 211
    sb	$zero,31566($s0)
    # Line 210
    sb	$zero,31565($s0)
    # Line 220
    ld	$s0,96($sp)
.L0da58740:
    jr	$ra
    addiu	$sp,$sp,128
.L0da58748:
    # Line 94
    addiu	$at,$gp,-22600
    lw	$at,0($at)
    # Line 95
    b	.L0da58670
    # Line 94
    sw	$at,31520($s0)
.L0da58758:
    # Line 108
    lbu	$v0,57($sp)
    li	$v1,24
    bne	$v0,$v1,.L0da5869c
    # Line 126
    lbu	$a1,60($sp)
    # Line 108
    lbu	$a1,60($sp)
    beqz	$a1,.L0da58698
    # Line 109
    nop	# was lw $t9, -22996($gp) # &strcat
    addiu	$a1,$gp,-22568
    jal	strcat
    addiu	$a0,$s0,31520
    b	.L0da58698
    li	$a0,1
.L0da58788:
    # Line 91
    addiu	$at,$gp,-22608
    lw	$at,0($at)
    # Line 92
    b	.L0da58670
    # Line 91
    sw	$at,31520($s0)
.L0da58798:
    # Line 199
    lbu	$a2,3109($s0)
    sw	$zero,31516($s0)
    # Line 197
    sw	$zero,31512($s0)
    # Line 196
    sb	$zero,31565($s0)
    # Line 198
    move	$a0,$zero
    b	.L0da58714
    sb	$zero,31566($s0)
.L0da587b4:
    # Line 113
    li	$v1,24
    bne	$v0,$v1,.L0da58818
    # Line 116
    nop	# was lw $t9, -22996($gp) # &strcat
    # Line 113
    lbu	$a1,60($sp)
    beqz	$a1,.L0da58814
    # Line 114
    nop	# was lw $t9, -22996($gp) # &strcat
    addiu	$a1,$gp,-22560
    jal	strcat
    addiu	$a0,$s0,31520
    b	.L0da58698
    li	$a0,1
.L0da587e0:
    # Line 120
    lbu	$at,57($sp)
    li	$v0,24
    bne	$at,$v0,.L0da5869c
    # Line 126
    lbu	$a1,60($sp)
    # Line 120
    lbu	$v1,60($sp)
    beqz	$v1,.L0da58698
    # Line 121
    nop	# was lw $t9, -22996($gp) # &strcat
    la	$a1,sub_0dbf0000
    addiu	$a0,$s0,31520
    jal	strcat
    addiu	$a1,$a1,-20376
    b	.L0da58698
    li	$a0,1
.L0da58814:
    # Line 116
    # lw $t9, -22996($gp) # &strcat
.L0da58818:
    addiu	$a1,$gp,-22552
    jal	strcat
    addiu	$a0,$s0,31520
    b	.L0da58698
    li	$a0,1
.L0da5882c:
    # Line 77
    lw	$t9,20($s0)
    la	$a1,sub_0dbf0000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-20400
    b	.L0da58650
    # Line 83
    lbu	$a0,62($sp)
.L0da58848:
    # Line 99
    # lw $t9, -22996($gp) # &strcat
    addiu	$a1,$gp,-22592
    addiu	$a0,$s0,31520
    jal	strcat
    sd	$a0,80($sp)
    lbu	$at,57($sp)
    li	$v0,24
    beq	$at,$v0,.L0da5888c
    li	$a0,1
.L0da5886c:
    # Line 101
    lbu	$v1,60($sp)
    beqz	$v1,.L0da58698
    # Line 104
    nop	# was lw $t9, -22996($gp) # &strcat
    ld	$a0,80($sp)
    jal	strcat
    addiu	$a1,$gp,-22576
    b	.L0da58698
    li	$a0,1
.L0da5888c:
    # Line 101
    # lw $t9, -22996($gp) # &strcat
    ld	$a0,80($sp)
    jal	strcat
    addiu	$a1,$gp,-22584
    b	.L0da5886c
    li	$a0,1
.end GetBoardInfo

# Function: GetPixModeValue
# Declared: Line 290 (Source lines: 291-337)
# Address: 0x0da588a4 - 0x0da589b0 (Size: 268 bytes, Frame: 32)
.ent GetPixModeValue
GetPixModeValue:
    # Line 294
    lbu	$at,3104($a0)
    # Line 291
    addiu	$sp,$sp,-32
    # Line 300
    li	$a2,8
    # Line 294
    beqz	$at,.L0da58914
    move	$v0,$zero
    # Line 299
    lw	$v1,3144($a0)
    lw	$at,3140($a0)
    lw	$a3,3148($a0)
    addu	$at,$at,$v1
    # Line 300
    li	$v1,24
    # Line 299
    addu	$a3,$a3,$at
    # Line 300
    beq	$a3,$v1,.L0da58960
    li	$a1,12
    beq	$a3,$a1,.L0da5896c
    # Line 305
    li	$at,2
    # Line 300
    beq	$a3,$a2,.L0da58974
    li	$at,4
    beq	$a3,$at,.L0da58958
    sd	$v0,0($sp)
    # Line 314
    lw	$t9,20($a0)
    la	$a1,sub_0dbf0000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a1,$a1,-20360
    ld	$ra,8($sp)
.L0da58908:
    ld	$v0,0($sp)
    # Line 337
    jr	$ra
    addiu	$sp,$sp,32
.L0da58914:
    # Line 318
    lw	$a3,3136($a0)
    li	$a2,12
    beq	$a3,$a2,.L0da5898c
    li	$at,8
    beq	$a3,$at,.L0da58998
    li	$v1,4
    beq	$a3,$v1,.L0da589a4
    li	$a1,2
    beq	$a3,$a1,.L0da58980
    sd	$v0,0($sp)
    # Line 332
    lw	$t9,20($a0)
    la	$a1,sub_0dbf0000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a1,$a1,-20328
    b	.L0da58908
    ld	$ra,8($sp)
.L0da58958:
    # Line 312
    b	.L0da58908
    sd	$zero,0($sp)
.L0da58960:
    # Line 302
    li	$a2,4
    # Line 303
    b	.L0da58908
    sd	$a2,0($sp)
.L0da5896c:
    # Line 306
    b	.L0da58908
    sd	$at,0($sp)
.L0da58974:
    # Line 308
    li	$v1,1
    # Line 309
    b	.L0da58908
    sd	$v1,0($sp)
.L0da58980:
    # Line 329
    li	$a1,11
    # Line 330
    b	.L0da58908
    sd	$a1,0($sp)
.L0da5898c:
    # Line 320
    li	$a2,10
    # Line 321
    b	.L0da58908
    sd	$a2,0($sp)
.L0da58998:
    # Line 323
    li	$at,9
    # Line 324
    b	.L0da58908
    sd	$at,0($sp)
.L0da589a4:
    # Line 326
    li	$v1,8
    # Line 327
    b	.L0da58908
    sd	$v1,0($sp)
.end GetPixModeValue

# Function: __glExpAllocAccum
# Declared: Line 340 (Source lines: 341-344)
# Address: 0x0da589b0 - 0x0da589f0 (Size: 64 bytes, Frame: 32)
.globl __glExpAllocAccum
.ent __glExpAllocAccum
__glExpAllocAccum:
    # Line 342
    lw	$a2,3416($a0)
    # Line 341
    move	$at,$a0
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,-4424
    # addu	gp,t9,v0
    # Line 342
    lw	$t9,31420($a0)
    sd	$ra,0($sp)
    # Line 341
    move	$a0,$a1
    # Line 342
    jalr	$t9
    lw	$a1,3412($at)
    # Line 344
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpAllocAccum

# Function: __glExpUpdateViewport
# Declared: Line 350 (Source lines: 351-370)
# Address: 0x0da589f0 - 0x0da58aa8 (Size: 184 bytes, Frame: 48)
.globl __glExpUpdateViewport
.ent __glExpUpdateViewport
__glExpUpdateViewport:
    # Line 351
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-4488
    # addu	gp,t9,at
    # Line 356
    # lw $t9, -26004($gp) # &__glUpdateViewport
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glUpdateViewport
    # Line 351
    move	$s8,$a0
    # Line 360
    lw	$a1,1596($s8)
    mtc1	$a1,$f3
    # Line 358
    lw	$v1,1592($s8)
    # Line 360
    cvt.s.w	$f3,$f3
    # Line 358
    mtc1	$v1,$f0
    # Line 359
    lw	$a0,1600($s8)
    # Line 358
    cvt.s.w	$f0,$f0
    # Line 359
    addiu	$a0,$a0,-1
    mtc1	$a0,$f4
    # Line 361
    lw	$ra,1604($s8)
    # Line 359
    cvt.s.w	$f4,$f4
    # Line 361
    addiu	$ra,$ra,-1
    mtc1	$ra,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 364
    lui	$v0,0x4
    ori	$v0,$v0,0x277c
    # Line 363
    lwc1	$f1,_lit_3f800000
    lui	$v1,0x4
    # Line 359
    add.s	$f4,$f4,$f0
    # Line 363
    ori	$v1,$v1,0x20ec
    swc1	$f1,0($v1)
    # Line 361
    add.s	$f2,$f2,$f3
    # Line 364
    swc1	$f0,0($v0)
    # Line 365
    swc1	$f4,0($v0)
    # Line 366
    swc1	$f3,0($v0)
    # Line 367
    swc1	$f2,0($v0)
    # Line 368
    lwc1	$f1,1640($s8)
    # ld	gp,16(sp)
    swc1	$f1,0($v0)
    # Line 370
    ld	$ra,0($sp)
    # Line 369
    lwc1	$f0,1644($s8)
    # Line 370
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 369
    swc1	$f0,0($v0)
.end __glExpUpdateViewport

# Function: ApplyViewport
# Declared: Line 372 (Source lines: 373-376)
# Address: 0x0da58aa8 - 0x0da58af0 (Size: 72 bytes, Frame: 48)
.ent ApplyViewport
ApplyViewport:
    # Line 373
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-4672
    # addu	gp,t9,at
    # Line 374
    # lw $t9, -28996($gp) # &__glFindWindowSize
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glFindWindowSize
    # Line 373
    move	$s8,$a0
    # Line 375
    # lw $t9, -32404($gp) # &__glExpUpdateViewport
    bal __glExpUpdateViewport
    move	$a0,$s8
    # Line 376
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 378 (Source lines: 379-399)
# Address: 0x0da58af0 - 0x0da58b58 (Size: 104 bytes, Frame: 0)
.ent ApplyScissor
ApplyScissor:
    # Line 389
    move	$a2,$zero
    # Line 391
    move	$a4,$zero
    # Line 379
    lw	$at,1696($a0)
    # Line 395
    lui	$v0,0x4
    # Line 379
    andi	$at,$at,0x4000
    beqz	$at,.L0da58b48
    # Line 395
    ori	$v0,$v0,0x20f0
    # Line 386
    lw	$a4,2416($a0)
    # Line 384
    lw	$a2,2412($a0)
    # Line 385
    lw	$a3,2420($a0)
    # Line 387
    lw	$a5,2424($a0)
    # Line 385
    addu	$a3,$a3,$a2
    # Line 387
    addu	$a5,$a5,$a4
    addiu	$a5,$a5,-1
    # Line 385
    addiu	$a3,$a3,-1
.L0da58b2c:
    # Line 395
    sw	$a2,0($v0)
    # Line 396
    lui	$at,0x4
    ori	$at,$at,0x277c
    sw	$a4,0($at)
    # Line 397
    sw	$a3,0($at)
    # Line 399
    jr	$ra
    # Line 398
    sw	$a5,0($at)
.L0da58b48:
    # Line 390
    li	$a3,2047
    # Line 392
    li	$a5,2047
    b	.L0da58b2c
    nop
.end ApplyScissor

# Function: __glExpSetPixWritemask
# Declared: Line 401 (Source lines: 402-475)
# Address: 0x0da58b58 - 0x0da58d5c (Size: 516 bytes, Frame: 32)
.globl __glExpSetPixWritemask
.ent __glExpSetPixWritemask
__glExpSetPixWritemask:
    # Line 402
    lbu	$a3,3104($a0)
    beqz	$a3,.L0da58c58
    addiu	$sp,$sp,-32
    # Line 410
    lw	$v0,3144($a0)
    lw	$at,3140($a0)
    lw	$a2,3148($a0)
    addu	$at,$at,$v0
    addu	$a2,$a2,$at
.L0da58b78:
    # Line 412
    lw	$a5,1788($a0)
    # Line 421
    li	$a4,255
    # Line 419
    li	$a7,255
    # Line 412
    beqz	$a5,.L0da58c60
    # Line 422
    li	$v0,4
    # Line 416
    beqz	$a3,.L0da58c68
    nop
    lbu	$v1,1784($a0)
    beqz	$v1,.L0da58cac
    nop
.L0da58ba0:
    # Line 419
    lbu	$a1,1785($a0)
    beqz	$a1,.L0da58c78
    # Line 420
    li	$a6,255
.L0da58bac:
    lbu	$at,1786($a0)
    beqz	$at,.L0da58c80
    nop
.L0da58bb8:
    # Line 422
    li	$a1,12
    beq	$a2,$v0,.L0da58c88
    li	$v1,8
    beq	$a2,$v1,.L0da58cbc
    li	$v0,24
    beq	$a2,$a1,.L0da58cec
    li	$at,16
    beq	$a2,$at,.L0da58d0c
    # Line 433
    andi	$a3,$a7,0xf8
    # Line 422
    beq	$a2,$v0,.L0da58d3c
    lw	$a3,0($sp)
.L0da58be4:
    # Line 440
    lbu	$v1,3106($a0)
    # Line 448
    move	$a4,$a5
    li	$at,1029
    # Line 440
    beqz	$v1,.L0da58c10
    move	$a6,$a3
    # Line 448
    li	$a1,1028
    beq	$a5,$a1,.L0da58c70
    nop
    beq	$a4,$at,.L0da58cb4
    li	$v0,1032
    beq	$a4,$v0,.L0da58cdc
.L0da58c10:
    # Line 459
    lui	$a4,0x4
    lw	$a5,3184($a0)
    lui	$a2,0x4
    ori	$a2,$a2,0x242c
    blez	$a5,.L0da58d2c
    ori	$a4,$a4,0x200c
    lw	$at,3136($a0)
    li	$v0,2
    bne	$at,$v0,.L0da58c44
    li	$v1,1
    bne	$a5,$v1,.L0da58c44
    nop
    # Line 465
    sll	$a3,$a3,0x2
.L0da58c44:
    # Line 467
    sw	$a3,0($a4)
    # Line 468
    sw	$zero,0($a2)
    # Line 469
    sw	$zero,0($a2)
.L0da58c50:
    # Line 475
    jr	$ra
    addiu	$sp,$sp,32
.L0da58c58:
    b	.L0da58b78
    # Line 412
    lw	$a2,3136($a0)
.L0da58c60:
    # Line 416
    b	.L0da58be4
    move	$a3,$zero
.L0da58c68:
    b	.L0da58be4
    # Line 440
    lw	$a3,1780($a0)
.L0da58c70:
    # Line 451
    b	.L0da58c10
    # Line 450
    sllv	$a6,$a6,$a2
.L0da58c78:
    b	.L0da58bac
    # Line 420
    move	$a6,$zero
.L0da58c80:
    b	.L0da58bb8
    # Line 421
    move	$a4,$zero
.L0da58c88:
    # Line 424
    andi	$a3,$a7,0x80
    srl	$a3,$a3,0x4
    andi	$at,$a6,0xc0
    srl	$at,$at,0x5
    or	$a3,$a3,$at
    andi	$at,$a4,0x80
    srl	$at,$at,0x7
    # Line 425
    b	.L0da58be4
    # Line 424
    or	$a3,$a3,$at
.L0da58cac:
    b	.L0da58ba0
    # Line 419
    move	$a7,$zero
.L0da58cb4:
    # Line 454
    b	.L0da58c10
    # Line 453
    sllv	$a3,$a3,$a2
.L0da58cbc:
    # Line 427
    andi	$a3,$a7,0xe0
    andi	$at,$a4,0xc0
    srl	$at,$at,0x3
    or	$a3,$a3,$at
    andi	$at,$a6,0xe0
    srl	$at,$at,0x5
    # Line 428
    b	.L0da58be4
    # Line 427
    or	$a3,$a3,$at
.L0da58cdc:
    # Line 456
    sllv	$v0,$a3,$a2
    or	$a3,$v0,$a3
    b	.L0da58c10
    # Line 457
    move	$a6,$a3
.L0da58cec:
    # Line 430
    andi	$a3,$a7,0xf0
    andi	$at,$a4,0xf0
    sll	$at,$at,0x4
    or	$a3,$a3,$at
    andi	$at,$a6,0xf0
    srl	$at,$at,0x4
    # Line 431
    b	.L0da58be4
    # Line 430
    or	$a3,$a3,$at
.L0da58d0c:
    # Line 433
    sll	$a3,$a3,0x8
    andi	$at,$a6,0xfc
    sll	$at,$at,0x3
    or	$a3,$a3,$at
    andi	$at,$a4,0xf8
    srl	$at,$at,0x3
    # Line 434
    b	.L0da58be4
    # Line 433
    or	$a3,$a3,$at
.L0da58d2c:
    # Line 471
    sw	$zero,0($a4)
    # Line 472
    sw	$a3,0($a2)
    b	.L0da58c50
    # Line 473
    sw	$a6,0($a2)
.L0da58d3c:
    # Line 436
    andi	$a3,$a7,0xff
    andi	$at,$a6,0xff
    sll	$at,$at,0x8
    andi	$v0,$a4,0xff
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    # Line 437
    b	.L0da58be4
    # Line 436
    or	$a3,$a3,$at
.end __glExpSetPixWritemask

# Function: __glExpSetReadSource
# Declared: Line 477 (Source lines: 478-526)
# Address: 0x0da58d5c - 0x0da58e2c (Size: 208 bytes, Frame: 32)
.globl __glExpSetReadSource
.ent __glExpSetReadSource
__glExpSetReadSource:
    # Line 478
    addiu	$sp,$sp,-32
    lbu	$v0,3106($a0)
    lui	$v1,0x1a
    addiu	$v1,$v1,-5364
    beqz	$v0,.L0da58da0
    nop
    la	$v0,sub_0dbf0000
    lw	$a4,1788($a0)
    lui	$v0,%hi(jtbl_0dbeb0b8)
    addiu	$a3,$a4,-1028
    sltiu	$v1,$a3,9
    sll	$a3,$a3,0x2
    beqz	$v1,.L0da58da4
    addu	$a3,$a3,$v0
    lw	$v0,%lo(jtbl_0dbeb0b8)($a3)
    jr	$v0
    # Line 489
    li	$v1,1
.L0da58da0:
    # Line 511
    sw	$zero,0($sp)
.L0da58da4:
    lw	$a4,3184($a0)
.L0da58da8:
    li	$v0,2
    lui	$a3,0x4
    blez	$a4,.L0da58e1c
    ori	$a3,$a3,0x2428
    lw	$a5,3136($a0)
    # Line 518
    move	$a0,$zero
    # Line 511
    beq	$a5,$v0,.L0da58dd8
    li	$a5,1
.L0da58dc8:
    # Line 520
    sw	$a5,0($a3)
    # Line 521
    sw	$a0,0($a3)
.L0da58dd0:
    # Line 526
    jr	$ra
    addiu	$sp,$sp,32
.L0da58dd8:
    # Line 511
    bne	$a4,$a5,.L0da58dc8
    nop
    # Line 516
    b	.L0da58dc8
    li	$a0,1
.L0da58de8:
    # Line 487
    b	.L0da58da4
    # Line 486
    sw	$zero,0($sp)
.L0da58df0:
    # Line 490
    b	.L0da58da4
    # Line 489
    sw	$v1,0($sp)
.L0da58df8:
    # Line 497
    b	.L0da58da4
    # Line 496
    sw	$zero,0($sp)
.L0da58e00:
    # Line 502
    lw	$a2,3180($a0)
    addiu	$a1,$a4,-1033
    slt	$a1,$a1,$a2
    beqzl	$a1,.L0da58da8
    # Line 511
    lw	$a4,3184($a0)
    # Line 504
    b	.L0da58da4
    sw	$zero,0($sp)
.L0da58e1c:
    # Line 524
    lw	$v0,0($sp)
    # Line 523
    sw	$zero,0($a3)
    b	.L0da58dd0
    # Line 524
    sw	$v0,0($a3)
.end __glExpSetReadSource

# Function: __glExpSetReadBuffer
# Declared: Line 528 (Source lines: 529-570)
# Address: 0x0da58e2c - 0x0da58f08 (Size: 220 bytes, Frame: 32)
.globl __glExpSetReadBuffer
.ent __glExpSetReadBuffer
__glExpSetReadBuffer:
    # Line 529
    lbu	$at,3106($a0)
    # Line 535
    li	$v1,1029
    li	$a1,1033
    # Line 529
    beqz	$at,.L0da58edc
    addiu	$sp,$sp,-32
    # Line 535
    lw	$a3,1148($a0)
    li	$at,1034
    li	$v0,1028
    beq	$a3,$v0,.L0da58ee4
    move	$a2,$a3
    beq	$a2,$v1,.L0da58eec
    li	$v0,1035
    beq	$a2,$a1,.L0da58eb0
    li	$v1,1036
    beql	$a2,$at,.L0da58eb4
    # Line 546
    lw	$v1,3180($a0)
    # Line 535
    beql	$a2,$v0,.L0da58eb4
    # Line 546
    lw	$v1,3180($a0)
    # Line 535
    beql	$a2,$v1,.L0da58eb4
    # Line 546
    lw	$v1,3180($a0)
.L0da58e7c:
    # Line 555
    lw	$a3,3184($a0)
.L0da58e80:
    li	$at,2
    lui	$a2,0x4
    blez	$a3,.L0da58ef8
    ori	$a2,$a2,0x2428
    lw	$a4,3136($a0)
    # Line 562
    move	$a0,$zero
    # Line 555
    beq	$a4,$at,.L0da58ecc
    li	$a4,1
.L0da58ea0:
    # Line 564
    sw	$a4,0($a2)
    # Line 565
    sw	$a0,0($a2)
.L0da58ea8:
    # Line 570
    jr	$ra
    addiu	$sp,$sp,32
.L0da58eb0:
    # Line 546
    lw	$v1,3180($a0)
.L0da58eb4:
    addiu	$v0,$a3,-1033
    slt	$v0,$v0,$v1
    beqzl	$v0,.L0da58e80
    # Line 555
    lw	$a3,3184($a0)
    # Line 548
    b	.L0da58e7c
    sw	$zero,0($sp)
.L0da58ecc:
    # Line 555
    bne	$a3,$a4,.L0da58ea0
    nop
    # Line 560
    b	.L0da58ea0
    li	$a0,1
.L0da58edc:
    b	.L0da58e7c
    # Line 555
    sw	$zero,0($sp)
.L0da58ee4:
    # Line 538
    b	.L0da58e7c
    # Line 537
    sw	$zero,0($sp)
.L0da58eec:
    # Line 540
    li	$a1,1
    # Line 541
    b	.L0da58e7c
    # Line 540
    sw	$a1,0($sp)
.L0da58ef8:
    # Line 568
    lw	$at,0($sp)
    # Line 567
    sw	$zero,0($a2)
    b	.L0da58ea8
    # Line 568
    sw	$at,0($a2)
.end __glExpSetReadBuffer

# Function: __glExpUpdateHardwareState
# Declared: Line 581 (Source lines: 582-665)
# Address: 0x0da58f08 - 0x0da5912c (Size: 548 bytes, Frame: 48)
.globl __glExpUpdateHardwareState
.ent __glExpUpdateHardwareState
__glExpUpdateHardwareState:
    # Line 582
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x1a
    addiu	$at,$at,-5792
    # addu	gp,t9,at
    # Line 588
    # lw $t9, -31824($gp) # &__glExpPassDrawBuffer
    sd	$s0,16($sp)
    sd	$ra,0($sp)
    jal	__glExpPassDrawBuffer
    # Line 582
    move	$s0,$a0
    # Line 589
    # lw $t9, -31812($gp) # &__glExpEnableDither
    jal	__glExpEnableDither
    move	$a0,$s0
    # Line 590
    # lw $t9, -31808($gp) # &__glExpPassBlendFunc
    jal	__glExpPassBlendFunc
    move	$a0,$s0
    # Line 591
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    jal	__glExpEnableBlendFunc
    move	$a0,$s0
    # Line 592
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    jal	__glExpPassLogicOp
    move	$a0,$s0
    # Line 593
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    jal	__glExpEnableLogicOp
    move	$a0,$s0
    # Line 594
    # lw $t9, -31820($gp) # &__glExpPassColorMask
    jal	__glExpPassColorMask
    move	$a0,$s0
    # Line 595
    # lw $t9, -31816($gp) # &__glExpPassIndexMask
    jal	__glExpPassIndexMask
    move	$a0,$s0
    # Line 598
    # lw $t9, -31512($gp) # &__glExpPassColor
    jal	__glExpPassColor
    move	$a0,$s0
    # Line 599
    # lw $t9, -31508($gp) # &__glExpPassIndex
    jal	__glExpPassIndex
    move	$a0,$s0
    # Line 600
    # lw $t9, -31504($gp) # &__glExpPassNormal
    jal	__glExpPassNormal
    move	$a0,$s0
    # Line 601
    # lw $t9, -31928($gp) # &__glExpPassRasterPosData
    jal	__glExpPassRasterPosData
    move	$a0,$s0
    # Line 602
    # lw $t9, -31500($gp) # &__glExpPassEdgeFlag
    jal	__glExpPassEdgeFlag
    move	$a0,$s0
    # Line 605
    # lw $t9, -32368($gp) # &__glExpPassDepthFunc
    bal __glExpPassDepthFunc
    move	$a0,$s0
    # Line 606
    # lw $t9, -32364($gp) # &__glExpPassDepthMask
    bal __glExpPassDepthMask
    move	$a0,$s0
    # Line 607
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    bal __glExpEnableDepthTest
    move	$a0,$s0
    # Line 612
    # lw $t9, -32304($gp) # &__glExpEnableFog
    bal __glExpEnableFog
    move	$a0,$s0
    # Line 613
    # lw $t9, -32300($gp) # &__glExpPassFog
    bal __glExpPassFog
    move	$a0,$s0
    # Line 618
    # lw $t9, -31784($gp) # &__glExpPassShadeModel
    jal	__glExpPassShadeModel
    move	$a0,$s0
    # Line 619
    # lw $t9, -32240($gp) # &__glExpUpdateLightingState
    bal __glExpUpdateLightingState
    move	$a0,$s0
    # Line 622
    # lw $t9, -32224($gp) # &__glExpPassLineWidth
    bal __glExpPassLineWidth
    move	$a0,$s0
    # Line 623
    # lw $t9, -32220($gp) # &__glExpPassLineStipple
    bal __glExpPassLineStipple
    move	$a0,$s0
    # Line 624
    # lw $t9, -32216($gp) # &__glExpEnableLineStipple
    bal __glExpEnableLineStipple
    move	$a0,$s0
    # Line 625
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    jal	__glExpEnableLineSmooth
    move	$a0,$s0
    # Line 632
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    jal	__glExpEnablePointSmooth
    move	$a0,$s0
    # Line 635
    # lw $t9, -32052($gp) # &__glExpPassCullFace
    jal	__glExpPassCullFace
    move	$a0,$s0
    # Line 636
    # lw $t9, -32048($gp) # &__glExpEnableCullFace
    jal	__glExpEnableCullFace
    move	$a0,$s0
    # Line 637
    # lw $t9, -32040($gp) # &__glExpPassFrontFace
    jal	__glExpPassFrontFace
    move	$a0,$s0
    # Line 638
    # lw $t9, -32032($gp) # &__glExpEnablePolygonStipple
    jal	__glExpEnablePolygonStipple
    move	$a0,$s0
    # Line 639
    # lw $t9, -32028($gp) # &__glExpPassPolygonMode
    jal	__glExpPassPolygonMode
    move	$a0,$s0
    # Line 640
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    jal	__glExpPassPolygonOffset
    move	$a0,$s0
    # Line 643
    lw	$t9,12664($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 646
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 649
    # lw $t9, -31520($gp) # &__glExpPassStencilMode
    jal	__glExpPassStencilMode
    move	$a0,$s0
    # Line 650
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    jal	__glExpEnableStencilTest
    move	$a0,$s0
    # Line 651
    # lw $t9, -31524($gp) # &__glExpPassStencilMask
    jal	__glExpPassStencilMask
    move	$a0,$s0
    # Line 656
    # lw $t9, -31164($gp) # &__glExpUpdateMatrixState
    jal	__glExpUpdateMatrixState
    move	$a0,$s0
    # Line 657
    # lw $t9, -31088($gp) # &__glExpEnableClipPlanes
    jal	__glExpEnableClipPlanes
    move	$a0,$s0
    # Line 658
    # lw $t9, -31084($gp) # &__glExpPassClipPlanes
    jal	__glExpPassClipPlanes
    move	$a0,$s0
    # Line 659
    # lw $t9, -31168($gp) # &__glExpEnableNormalize
    jal	__glExpEnableNormalize
    move	$a0,$s0
    # Line 662
    lw	$t9,11920($s0)
    jalr	$t9
    move	$a0,$s0
    # ld	gp,8(sp)
    # Line 664
    li	$v0,1
    # Line 665
    ld	$ra,0($sp)
    # Line 664
    sb	$v0,31564($s0)
    # Line 665
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpUpdateHardwareState

# Function: __glExpPassMachineState
# Declared: Line 673 (Source lines: 674-680)
# Address: 0x0da5912c - 0x0da59198 (Size: 108 bytes, Frame: 48)
.globl __glExpPassMachineState
.ent __glExpPassMachineState
__glExpPassMachineState:
    # Line 674
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-6340
    # addu	gp,t9,at
    # Line 675
    # lw $t9, -31512($gp) # &__glExpPassColor
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jal	__glExpPassColor
    # Line 674
    move	$s0,$a0
    # Line 676
    # lw $t9, -31508($gp) # &__glExpPassIndex
    jal	__glExpPassIndex
    move	$a0,$s0
    # Line 677
    # lw $t9, -31504($gp) # &__glExpPassNormal
    jal	__glExpPassNormal
    move	$a0,$s0
    # Line 678
    # lw $t9, -31928($gp) # &__glExpPassRasterPosData
    jal	__glExpPassRasterPosData
    move	$a0,$s0
    # Line 679
    # lw $t9, -31500($gp) # &__glExpPassEdgeFlag
    jal	__glExpPassEdgeFlag
    move	$a0,$s0
    # Line 680
    ld	$ra,8($sp)
    # ld	gp,16(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpPassMachineState

# Function: __glExpGetMachineState
# Declared: Line 682 (Source lines: 683-693)
# Address: 0x0da59198 - 0x0da5920c (Size: 116 bytes, Frame: 48)
.globl __glExpGetMachineState
.ent __glExpGetMachineState
__glExpGetMachineState:
    # Line 683
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # sd	gp,8(sp)
    lbu	$at,31567($a0)
    lui	$v0,0x1a
    addiu	$v0,$v0,-6448
    beqz	$at,.L0da591c4
    nop
.L0da591b8:
    # ld	gp,8(sp)
    # Line 693
    jr	$ra
    addiu	$sp,$sp,48
.L0da591c4:
    # Line 687
    # lw $t9, -31496($gp) # &__glExpGetColor
    sd	$ra,16($sp)
    jal	__glExpGetColor
    ld	$a0,0($sp)
    # Line 688
    # lw $t9, -31492($gp) # &__glExpGetIndex
    jal	__glExpGetIndex
    ld	$a0,0($sp)
    # Line 689
    # lw $t9, -31488($gp) # &__glExpGetNormal
    jal	__glExpGetNormal
    ld	$a0,0($sp)
    # Line 690
    # lw $t9, -31924($gp) # &__glExpGetRasterPosData
    jal	__glExpGetRasterPosData
    ld	$a0,0($sp)
    # Line 691
    # lw $t9, -31484($gp) # &__glExpGetEdgeFlag
    jal	__glExpGetEdgeFlag
    ld	$a0,0($sp)
    b	.L0da591b8
    ld	$ra,16($sp)
.end __glExpGetMachineState

# Function: SwapBuffers
# Declared: Line 697 (Source lines: 698-735)
# Address: 0x0da5920c - 0x0da59370 (Size: 356 bytes, Frame: 192)
.ent SwapBuffers
SwapBuffers:
    # Line 698
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,24(sp)
    lbu	$at,3106($a0)
    lui	$v0,0x1a
    addiu	$v0,$v0,-6564
    beqz	$at,.L0da59360
    nop
    # Line 714
    lui	$a0,0x6
    ori	$a0,$a0,0xc040
    lui	$v1,0x4
    # Line 709
    lw	$a1,30664($s0)
    # Line 708
    lw	$v0,30660($s0)
    # Line 714
    ori	$v1,$v1,0x228c
    # Line 709
    sw	$a1,30660($s0)
    # Line 710
    sw	$v0,30664($s0)
    # Line 712
    lw	$at,31560($s0)
    # Line 711
    sw	$v0,11768($s0)
    # Line 712
    li	$a1,1
    subu	$a1,$a1,$at
    sw	$a1,31560($s0)
    # Line 714
    sw	$zero,0($v1)
.L0da59268:
    lw	$a1,0($a0)
    andi	$a1,$a1,0x1
    bnez	$a1,.L0da592b0
    # Line 720
    lui	$v0,0x4
    # Line 714
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    beqz	$at,.L0da59268
    nop
.L0da5928c:
    lw	$v1,0($sp)
    addiu	$v1,$v1,1
    sw	$v1,0($sp)
    lw	$v0,0($sp)
    slti	$v0,$v0,10
    bnez	$v0,.L0da5928c
    nop
    b	.L0da59268
    nop
.L0da592b0:
    # Line 720
    ori	$v0,$v0,0x2018
    # Line 715
    lui	$v1,0x6
    ori	$v1,$v1,0xd000
    sw	$zero,0($v1)
    # Line 720
    sw	$zero,0($v0)
    # Line 721
    lw	$a1,31560($s0)
    lui	$at,0x4
    ori	$at,$at,0x279c
    sw	$a1,0($at)
    lw	$a0,31560($s0)
    beqz	$a0,.L0da59330
    lw	$a0,31552($s0)
    sd	$ra,40($sp)
    # Line 725
    ori	$v1,$a0,0x4
    sw	$v1,31552($s0)
.L0da592ec:
    # Line 729
    lw	$a2,31508($s0)
    sw	$a2,8($sp)
    # Line 730
    lw	$a1,31560($s0)
    sw	$a1,12($sp)
    # Line 732
    addiu	$a2,$sp,8
    # Line 731
    lw	$a0,31552($s0)
    # Line 732
    # lw $t9, -32412($gp) # &__glExpIoctl
    li	$a1,1005
    # Line 731
    sw	$a0,16($sp)
    # Line 732
    bal __glExpIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0da59344
    ld	$ra,40($sp)
.L0da59320:
    # ld	gp,24(sp)
    # Line 735
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da59330:
    sd	$ra,40($sp)
    # Line 727
    li	$at,-5
    and	$at,$a0,$at
    b	.L0da592ec
    sw	$at,31552($s0)
.L0da59344:
    # Line 733
    lw	$t9,20($s0)
    la	$a1,sub_0dbf0000
    move	$a0,$s0
    jal	__glExpIoctl
    addiu	$a1,$a1,-20256
    b	.L0da59320
    ld	$ra,40($sp)
.L0da59360:
    # ld	gp,24(sp)
    # Line 704
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end SwapBuffers

# Function: Finish
# Declared: Line 738 (Source lines: 739-742)
# Address: 0x0da59370 - 0x0da593e8 (Size: 120 bytes, Frame: 32)
.ent Finish
Finish:
    # Line 739
    addiu	$sp,$sp,-32
    # Line 740
    lui	$a1,0x6
    ori	$a1,$a1,0xc040
    lui	$at,0x4
    ori	$at,$at,0x228c
    b	.L0da593a0
    sw	$zero,0($at)
.L0da5938c:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da593c4
    nop
.L0da593a0:
    lw	$v0,0($a1)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da5938c
    nop
    # Line 742
    addiu	$sp,$sp,32
    # Line 741
    lui	$v1,0x6
    ori	$v1,$v1,0xd000
    # Line 742
    jr	$ra
    # Line 741
    sw	$zero,0($v1)
.L0da593c4:
    # Line 740
    lw	$at,0($sp)
    addiu	$at,$at,1
    sw	$at,0($sp)
    lw	$a0,0($sp)
    slti	$a0,$a0,10
    bnez	$a0,.L0da593c4
    nop
    b	.L0da593a0
    nop
.end Finish

# Function: Flush
# Declared: Line 745 (Source lines: 749-750)
# Address: 0x0da593e8 - 0x0da593f8 (Size: 16 bytes, Frame: 0)
.ent Flush
Flush:
    # Line 749
    lui	$at,0x4
    ori	$at,$at,0x2018
    # Line 750
    jr	$ra
    # Line 749
    sw	$zero,0($at)
.end Flush

# Function: DestroyContext
# Declared: Line 754 (Source lines: 755-807)
# Address: 0x0da593f8 - 0x0da59508 (Size: 272 bytes, Frame: 48)
.ent DestroyContext
DestroyContext:
    # Line 755
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 759
    lw	$s1,__glCurrentContext
    sd	$ra,8($sp)
    sd	$gp,16($sp)
    # Line 755
    lui	$at,0x1a
    addiu	$at,$at,-7056
    addu	$gp,$t9,$at
    # Line 770
    # lw $t9, -29492($gp) # &__glFreeAttributeState
    sd	$s0,0($sp)
    # Line 755
    move	$s0,$a0
    # Line 770
    jal	__glFreeAttributeState
    # Line 762
    sw	$s0,__glCurrentContext
    # Line 772
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    lbu	$v0,3108($s0)
    beqzl	$v0,.L0da5945c
    # Line 785
    lbu	$v1,3109($s0)
    # Line 772
    lw	$t9,31428($s0)
    beqz	$t9,.L0da59458
    # Line 785
    addiu	$a0,$s0,31364
    jalr	$t9
    move	$a1,$s0
.L0da59458:
    lbu	$v1,3109($s0)
.L0da5945c:
    beqzl	$v1,.L0da59474
    # Line 790
    lbu	$at,3110($s0)
    # Line 785
    lbu	$a2,31565($s0)
    beqzl	$a2,.L0da594d4
    # Line 787
    lw	$t9,31296($s0)
.L0da59470:
    # Line 790
    lbu	$at,3110($s0)
.L0da59474:
    beqz	$at,.L0da59488
    # Line 799
    nop	# was lw $t9, -32232($gp) # &__glExpFreeLighting
    # Line 790
    lbu	$v0,31566($s0)
    beqz	$v0,.L0da594ec
.L0da59484:
    # Line 799
    nop	# was lw $t9, -32232($gp) # &__glExpFreeLighting
.L0da59488:
    bal __glExpFreeLighting
    move	$a0,$s0
    # Line 800
    # lw $t9, -32060($gp) # &__glExpFreePixelState
    jal	__glExpFreePixelState
    move	$a0,$s0
    # Line 803
    # lw $t9, -29016($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s0
    move	$v1,$s0
    ld	$s0,0($sp)
    bne	$v1,$s1,.L0da594c0
    ld	$ra,8($sp)
    # Line 805
    move	$s1,$zero
    ld	$s0,0($sp)
.L0da594c0:
    ld	$gp,16($sp)
    # Line 806
    sw	$s1,__glCurrentContext
    # Line 807
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da594d4:
    # Line 787
    beqz	$t9,.L0da59470
    # Line 790
    addiu	$a0,$s0,31232
    jalr	$t9
    move	$a1,$s0
    b	.L0da59474
    lbu	$at,3110($s0)
.L0da594ec:
    # Line 792
    lw	$t9,31176($s0)
    beqz	$t9,.L0da59484
    # Line 795
    addiu	$a0,$s0,31112
    jalr	$t9
    move	$a1,$s0
    b	.L0da59488
    # Line 799
    nop	# was lw $t9, -32232($gp) # &__glExpFreeLighting
.end DestroyContext

# Function: LoseCurrent
# Declared: Line 809 (Source lines: 810-827)
# Address: 0x0da59508 - 0x0da5958c (Size: 132 bytes, Frame: 48)
.ent LoseCurrent
LoseCurrent:
    # Line 817
    li	$v0,7168
    # Line 810
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    # Line 817
    lw	$at,3092($a0)
    # Line 810
    lui	$v1,0x1a
    addiu	$v1,$v1,-7328
    # Line 817
    bne	$at,$v0,.L0da59538
    # Line 810
    nop
    # Line 817
    lw	$a1,__glBeginMode
    li	$at,1
    bne	$a1,$at,.L0da59548
    sd	$a0,0($sp)
.L0da59538:
    # Line 818
    move	$v0,$zero
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da59548:
    ld	$a1,0($sp)
    # Line 821
    # lw $t9, -28988($gp) # &__glLoseCurrentBuffers
    sd	$ra,16($sp)
    move	$a0,$a1
    jal	__glLoseCurrentBuffers
    lw	$a1,31560($a1)
    # Line 823
    ld	$ra,0($sp)
    lw	$at,__glBeginMode
    sw	$at,3088($ra)
    # Line 824
    lw	$a2,4124($zero)
    # Line 827
    li	$v0,1
    # Line 824
    sw	$a2,31892($ra)
    # Line 827
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 825
    sw	$zero,__glCurrentContext
.end LoseCurrent

# Function: InitFnPtrs
# Declared: Line 833 (Source lines: 837-946)
# Address: 0x0da5958c - 0x0da59844 (Size: 696 bytes, Frame: 0)
.ent InitFnPtrs
InitFnPtrs:
    # Line 930
    la	$a1,__glSpanRenderStencil2
    # Line 945
    sb	$zero,31564($a0)
    # Line 940
    la	$v1,__glColorTableSGI
    # Line 930
    sw	$a1,12476($a0)
    # Line 926
    la	$a1,__glSpanRenderRGBA2
    # Line 940
    sw	$v1,12672($a0)
    # Line 929
    la	$v1,__glSpanRenderStencil
    # Line 926
    sw	$a1,12460($a0)
    # Line 922
    la	$a1,__glSpanReadStencil2
    # Line 929
    sw	$v1,12472($a0)
    # Line 925
    la	$v1,__glSpanRenderRGBA
    # Line 922
    sw	$a1,12444($a0)
    # Line 918
    la	$a1,__glSpanReadRGBA2
    # Line 925
    sw	$v1,12456($a0)
    # Line 921
    la	$v1,__glSpanReadStencil
    # Line 918
    sw	$a1,12428($a0)
    # Line 913
    la	$a1,__glGenericPickReadImage
    # Line 921
    sw	$v1,12440($a0)
    # Line 917
    la	$v1,__glSpanReadRGBA
    # Line 913
    sw	$a1,12584($a0)
    # Line 907
    la	$a1,__glGenericPickTriangleProcs
    # Line 917
    sw	$v1,12424($a0)
    # Line 912
    la	$v1,__glGenericPickCopyImage
    # Line 907
    sw	$a1,11824($a0)
    # Line 903
    la	$a1,__glGenericPickRenderBitmapProcs
    # Line 912
    sw	$v1,12580($a0)
    # Line 906
    la	$v1,__glGenericPickTextureProcs
    # Line 903
    sw	$a1,11828($a0)
    # Line 899
    la	$a1,__glGenericPickMvpMatrixProcs
    # Line 906
    sw	$v1,11804($a0)
    # Line 902
    la	$v1,__glGenericPickPointProcs
    # Line 899
    sw	$a1,11868($a0)
    # Line 895
    la	$a1,__glGenericPickTransformProcs
    # Line 902
    sw	$v1,11816($a0)
    # Line 898
    la	$v1,__glGenericPickInvTransposeProcs
    # Line 895
    sw	$a1,11812($a0)
    # Line 891
    la	$a1,__glExpPickBufferProcs
    # Line 898
    sw	$v1,11864($a0)
    # Line 894
    la	$v1,__glGenericPickFogProcs
    # Line 891
    sw	$a1,11844($a0)
    # Line 882
    la	$a1,__glRasterPos3
    # Line 894
    sw	$v1,11808($a0)
    # Line 890
    la	$v1,__glGenericPickBlendProcs
    # Line 882
    sw	$a1,12628($a0)
    # Line 878
    la	$a1,__glOddTStripVertex
    # Line 890
    sw	$v1,11796($a0)
    # Line 881
    la	$v1,__glRasterPos2
    # Line 878
    sw	$a1,11976($a0)
    # Line 873
    la	$a1,__glBeginQuads
    # Line 881
    sw	$v1,12624($a0)
    # Line 877
    la	$v1,__glEvenTStripVertex
    # Line 873
    sw	$a1,12064($a0)
    # Line 869
    la	$a1,__glBeginTStrip
    # Line 877
    sw	$v1,11980($a0)
    # Line 872
    la	$v1,__glBeginQStrip
    # Line 869
    sw	$a1,12056($a0)
    # Line 865
    la	$a1,__glBeginLStrip
    # Line 872
    sw	$v1,12068($a0)
    # Line 868
    la	$v1,__glBeginPolygon
    # Line 865
    sw	$a1,12048($a0)
    # Line 853
    la	$a1,__glMipsMultMatrix
    # Line 868
    sw	$v1,12072($a0)
    # Line 864
    la	$v1,__glBeginLLoop
    # Line 853
    sw	$a1,11892($a0)
    # Line 847
    la	$a1,__glLoadIdentityModelViewMatrix
    # Line 864
    sw	$v1,12044($a0)
    # Line 851
    la	$v1,__glMakeIdentity
    # Line 847
    sw	$a1,11904($a0)
    # Line 842
    la	$a1,__glGenericValidate
    # Line 851
    sw	$v1,11888($a0)
    # Line 846
    la	$v1,__glPopModelViewMatrix
    # Line 842
    sw	$a1,11792($a0)
    # Line 838
    la	$a1,__glExpDoEvalCoord2
    # Line 846
    sw	$v1,11900($a0)
    # Line 841
    la	$v1,__glClipPolygon
    # Line 838
    sw	$a1,12000($a0)
    # Line 936
    la	$a1,sub_0da60000
    # Line 841
    sw	$v1,12100($a0)
    # Line 837
    la	$v1,__glExpDoEvalCoord1
    # Line 936
    addiu	$a1,$a1,-27672
    sw	$a1,11776($a0)
    # Line 837
    sw	$v1,11996($a0)
    # Line 938
    la	$v0,__gl_varray_funcs
    # Line 935
    la	$v1,sub_0da60000
    # Line 934
    la	$at,__glComputeClipBox
    # Line 938
    sw	$v0,12668($a0)
    # Line 928
    la	$v0,__glSpanRenderDepth2
    # Line 934
    sw	$at,11924($a0)
    # Line 927
    la	$at,__glSpanRenderDepth
    # Line 928
    sw	$v0,12468($a0)
    # Line 924
    la	$v0,__glSpanRenderCI2
    # Line 927
    sw	$at,12464($a0)
    # Line 923
    la	$at,__glSpanRenderCI
    # Line 924
    sw	$v0,12452($a0)
    # Line 920
    la	$v0,__glSpanReadDepth2
    # Line 923
    sw	$at,12448($a0)
    # Line 919
    la	$at,__glSpanReadDepth
    # Line 920
    sw	$v0,12436($a0)
    # Line 916
    la	$v0,__glSpanReadCI2
    # Line 919
    sw	$at,12432($a0)
    # Line 915
    la	$at,__glSpanReadCI
    # Line 916
    sw	$v0,12420($a0)
    # Line 909
    la	$v0,__glGenericPickDepthProcs
    # Line 915
    sw	$at,12416($a0)
    # Line 908
    la	$at,__glGenericPickVertexProcs
    # Line 909
    sw	$v0,11872($a0)
    # Line 905
    la	$v0,__glGenericPickStoreProcs
    # Line 908
    sw	$at,11856($a0)
    # Line 904
    la	$at,__glExpPickSpanProcs
    # Line 905
    sw	$v0,11848($a0)
    # Line 901
    la	$v0,__glExpPickPixelProcs
    # Line 904
    sw	$at,11852($a0)
    # Line 900
    la	$at,__glGenericPickParameterClipProcs
    # Line 901
    sw	$v0,11832($a0)
    # Line 897
    la	$v0,__glGenericPickMatrixProcs
    # Line 900
    sw	$at,11840($a0)
    # Line 896
    la	$at,__glExpPickLineProcs
    # Line 897
    sw	$v0,11860($a0)
    # Line 893
    la	$v0,__glGenericPickColorMaterialProcs
    # Line 896
    sw	$at,11820($a0)
    # Line 892
    la	$at,__glGenericPickClipProcs
    # Line 893
    sw	$v0,11800($a0)
    # Line 889
    la	$v0,__glExpPickAllProcs
    # Line 892
    sw	$at,11836($a0)
    # Line 883
    la	$at,__glRasterPos4
    # Line 889
    sw	$v0,11876($a0)
    # Line 880
    la	$v0,__glSecondLinesVertex
    # Line 883
    sw	$at,12632($a0)
    # Line 879
    la	$at,__glFirstLinesVertex
    # Line 880
    sw	$v0,11972($a0)
    # Line 876
    la	$v0,__glNop
    # Line 879
    sw	$at,11968($a0)
    # Line 874
    la	$at,__glEndPrim
    # Line 876
    sw	$v0,11956($a0)
    # Line 871
    la	$v0,__glBeginTriangles
    # Line 874
    sw	$at,12076($a0)
    # Line 870
    la	$at,__glBeginTFan
    # Line 871
    sw	$v0,12052($a0)
    # Line 867
    la	$v0,__glBeginPoints
    # Line 870
    sw	$at,12060($a0)
    # Line 866
    la	$at,__glBeginLines
    # Line 867
    sw	$v0,12036($a0)
    # Line 859
    la	$v0,__glMipsNormalize
    # Line 866
    sw	$at,12040($a0)
    # Line 857
    la	$at,__glComputeInverseTranspose
    # Line 859
    sw	$v0,11912($a0)
    # Line 850
    la	$v0,__glInvertTransposeMatrix
    # Line 857
    sw	$at,11908($a0)
    # Line 849
    la	$at,__glCopyMatrix
    # Line 850
    sw	$v0,11884($a0)
    # Line 845
    la	$v0,__glPushModelViewMatrix
    # Line 849
    sw	$at,11880($a0)
    # Line 843
    la	$at,__glExpConvertStipple
    # Line 845
    sw	$v0,11896($a0)
    # Line 840
    la	$v0,__glRect
    # Line 843
    sw	$at,12664($a0)
    # Line 839
    la	$at,__glDrawBitmap
    # Line 840
    sw	$v0,12108($a0)
    # Line 943
    la	$v0,sub_0da60000
    # Line 839
    sw	$at,12516($a0)
    # Line 942
    la	$at,sub_0da60000
    # Line 935
    addiu	$v1,$v1,-27792
    # Line 943
    addiu	$v0,$v0,-28148
    # Line 942
    addiu	$at,$at,-27656
    sw	$at,84($a0)
    # Line 932
    la	$at,sub_0da60000
    # Line 943
    sw	$v0,120($a0)
    # Line 933
    la	$v0,sub_0da60000
    # Line 935
    sw	$v1,11780($a0)
    # Line 932
    addiu	$at,$at,-29968
    # Line 933
    addiu	$v0,$v0,-30040
    sw	$v0,11920($a0)
    # Line 946
    jr	$ra
    # Line 932
    sw	$at,11916($a0)
.end InitFnPtrs

# Function: InitBuffers
# Declared: Line 951 (Source lines: 952-1026)
# Address: 0x0da59844 - 0x0da59a38 (Size: 500 bytes, Frame: 48)
.ent InitBuffers
InitBuffers:
    # Line 964
    addiu	$a3,$a0,30668
    # Line 952
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 961
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 952
    move	$s0,$a0
    # Line 961
    lw	$v0,11764($a0)
    # Line 964
    lbu	$at,3106($a0)
    sw	$a3,30660($a0)
    # Line 961
    ori	$v0,$v0,0xff
    # Line 964
    beqz	$at,.L0da5999c
    # Line 961
    sw	$v0,11764($a0)
    # Line 966
    lbu	$a2,3105($s0)
    sd	$ra,8($sp)
    addiu	$at,$s0,30888
    beqz	$a2,.L0da599e4
    sw	$at,30664($s0)
    # Line 968
    # lw $t9, -32420($gp) # &__glExpInitCI
    move	$a0,$a3
    bal __glExpInitCI
    move	$a1,$s0
    # Line 969
    # lw $t9, -32420($gp) # &__glExpInitCI
    move	$a1,$s0
    bal __glExpInitCI
    lw	$a0,30664($s0)
    # Line 978
    lw	$v0,3180($s0)
.L0da598ac:
    blezl	$v0,.L0da59918
    # Line 996
    lbu	$v0,3108($s0)
    sd	$s2,16($sp)
    # Line 986
    move	$s2,$zero
    sd	$s1,24($sp)
    b	.L0da598e8
    move	$s1,$zero
.L0da598c8:
    # Line 988
    # lw $t9, -32420($gp) # &__glExpInitCI
    bal __glExpInitCI
    move	$a1,$s0
.L0da598d4:
    # Line 986
    lw	$v1,3180($s0)
    addiu	$s2,$s2,1
    slt	$v1,$s2,$v1
    beqz	$v1,.L0da5990c
    addiu	$s1,$s1,220
.L0da598e8:
    lbu	$a2,3105($s0)
    lw	$a0,31108($s0)
    bnez	$a2,.L0da598c8
    addu	$a0,$a0,$s1
    # Line 990
    # lw $t9, -31740($gp) # &__glExpInitRGB
    jal	__glExpInitRGB
    move	$a1,$s0
    b	.L0da598d4
    nop
.L0da5990c:
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    # Line 996
    lbu	$v0,3108($s0)
.L0da59918:
    # Line 995
    sb	$zero,4552($s0)
    # Line 996
    li	$at,1
    beqz	$v0,.L0da59940
    sw	$at,4556($s0)
    # Line 1000
    # lw $t9, -29720($gp) # &__glInitAccum64
    move	$a1,$s0
    jal	__glInitAccum64
    addiu	$a0,$s0,31364
    # Line 1001
    la	$v1,__glExpAllocAccum
    sw	$v1,31496($s0)
.L0da59940:
    lbu	$a2,3109($s0)
    beqz	$a2,.L0da599d4
    addiu	$a0,$s0,31232
    lbu	$at,31565($s0)
    beqz	$at,.L0da599c0
    # Line 1005
    nop	# was lw $t9, -32360($gp) # &__glExpInitDepth
    bal __glExpInitDepth
    move	$a1,$s0
.L0da59960:
    # Line 1015
    lbu	$v0,3110($s0)
.L0da59964:
    beqz	$v0,.L0da59980
    addiu	$a0,$s0,31112
    lbu	$v1,31566($s0)
    beqz	$v1,.L0da59a0c
    # Line 1019
    nop	# was lw $t9, -31516($gp) # &__glExpInitStencil
    jal	__glExpInitStencil
    move	$a1,$s0
.L0da59980:
    # Line 1025
    # lw $t9, -26084($gp) # &__glUpdateDepthRange
.L0da59984:
    jal	__glUpdateDepthRange
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1026
    jr	$ra
    addiu	$sp,$sp,48
.L0da5999c:
    # Line 972
    lbu	$a2,3105($s0)
    beqz	$a2,.L0da59a20
    sd	$ra,8($sp)
    # Line 976
    # lw $t9, -32420($gp) # &__glExpInitCI
    move	$a0,$a3
    bal __glExpInitCI
    move	$a1,$s0
    b	.L0da598ac
    # Line 978
    lw	$v0,3180($s0)
.L0da599c0:
    # Line 1007
    # lw $t9, -28888($gp) # &__glInitDepth
    jal	__glInitDepth
    move	$a1,$s0
    b	.L0da59964
    # Line 1015
    lbu	$v0,3110($s0)
.L0da599d4:
    lui	$at,0x7fff
    ori	$at,$at,0xff80
    b	.L0da59960
    sw	$at,31308($s0)
.L0da599e4:
    # Line 971
    # lw $t9, -31740($gp) # &__glExpInitRGB
    move	$a0,$a3
    jal	__glExpInitRGB
    move	$a1,$s0
    # Line 972
    # lw $t9, -31740($gp) # &__glExpInitRGB
    move	$a1,$s0
    jal	__glExpInitRGB
    lw	$a0,30664($s0)
    b	.L0da598ac
    # Line 978
    lw	$v0,3180($s0)
.L0da59a0c:
    # Line 1021
    # lw $t9, -27256($gp) # &__glInitStencil8
    jal	__glInitStencil8
    move	$a1,$s0
    b	.L0da59984
    # Line 1025
    nop	# was lw $t9, -26084($gp) # &__glUpdateDepthRange
.L0da59a20:
    # Line 978
    # lw $t9, -31740($gp) # &__glExpInitRGB
    move	$a0,$a3
    jal	__glExpInitRGB
    move	$a1,$s0
    b	.L0da598ac
    lw	$v0,3180($s0)
.end InitBuffers

# Function: MakeCurrent
# Declared: Line 1031 (Source lines: 1032-1241)
# Address: 0x0da59a38 - 0x0da59ebc (Size: 1156 bytes, Frame: 208)
.ent MakeCurrent
MakeCurrent:
    # Line 1039
    sw	$a0,__glCurrentContext
    # Line 1040
    lw	$v0,3088($a0)
    # Line 1032
    addiu	$sp,$sp,-80
    # Line 1040
    sw	$v0,__glBeginMode
    sd	$gp,24($sp)
    # Line 1041
    lw	$v0,31892($a0)
    # Line 1032
    lui	$at,0x1a
    addiu	$at,$at,-8656
    # Line 1041
    sw	$v0,4124($zero)
    # Line 1032
    addu	$gp,$t9,$at
    # Line 1043
    lw	$t9,56($a0)
    sd	$s0,40($sp)
    sd	$ra,32($sp)
    jalr	$t9
    # Line 1032
    move	$s0,$a0
    # Line 1051
    addiu	$a5,$s0,7648
    # Line 1043
    bnez	$v0,.L0da59d00
    # Line 1051
    move	$a0,$zero
    li	$a1,257
    # Line 1046
    la	$a6,sub_0dbf0000
    # Line 1050
    addiu	$v0,$s0,7648
    sw	$v0,5580($s0)
    # Line 1046
    addiu	$a6,$a6,9016
    # Line 1051
    addiu	$a4,$a6,2056
.L0da59a98:
    addu	$at,$a0,$a4
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da59a98
    sd	$at,0($v1)
    # Line 1052
    move	$a5,$a6
    li	$a1,257
    move	$a0,$zero
    addiu	$a4,$s0,5584
.L0da59ac4:
    addu	$v1,$a0,$a5
    addu	$a2,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da59ac4
    sd	$v1,0($a2)
    # Line 1057
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a3,11764($s0)
    lw	$a2,148($s0)
    sd	$v0,16($sp)
    ori	$a3,$a3,0x80
    andi	$a2,$a2,0x1
    beqz	$a2,.L0da59c78
    sw	$a3,11764($s0)
    # Line 1075
    lw	$t9,40($s0)
.L0da59b08:
    move	$a0,$s0
    jalr	$t9
    lw	$a1,31888($s0)
    # Line 1076
    lw	$t9,52($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 1075
    sw	$v0,31504($s0)
    # Line 1076
    lw	$a0,148($s0)
    andi	$at,$a0,0x1
    beqz	$at,.L0da59de0
.L0da59b30:
    # Line 1088
    andi	$v1,$a0,0x2
    beqz	$v1,.L0da59d30
    # Line 1104
    nop	# was lw $t9, -28992($gp) # &__glMakeCurrentBuffers
.L0da59b3c:
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    addiu	$a1,$s0,31560
    # Line 1109
    lui	$v1,0x4
    ori	$v1,$v1,0x2018
    sw	$zero,0($v1)
    # Line 1110
    lw	$a3,31560($s0)
    lui	$at,0x4
    ori	$at,$at,0x279c
    sw	$a3,0($at)
    lw	$a0,148($s0)
    andi	$a2,$a0,0x2
    beqz	$a2,.L0da59d48
.L0da59b70:
    # Line 1114
    andi	$a2,$a0,0x6
    beqz	$a2,.L0da59d68
    # Line 1170
    andi	$a3,$v0,0xff
    beqz	$a3,.L0da59b8c
    # Line 1177
    nop	# was lw $t9, -28996($gp) # &__glFindWindowSize
    jal	__glFindWindowSize
    move	$a0,$s0
.L0da59b8c:
    # Line 1179
    # lw $t9, -32404($gp) # &__glExpUpdateViewport
    bal __glExpUpdateViewport
    move	$a0,$s0
    lw	$at,148($s0)
.L0da59b9c:
    andi	$at,$at,0x1
    beqz	$at,.L0da59e34
    # Line 1203
    nop	# was lw $t9, -29024($gp) # &__glContextSetColorScales
.L0da59ba8:
    jal	__glContextSetColorScales
    move	$a0,$s0
    # Line 1208
    # lw $t9, -32176($gp) # &__glExpLoadPrimDispatchVectors
    bal __glExpLoadPrimDispatchVectors
    move	$a0,$s0
    lbu	$v1,31564($s0)
    beqz	$v1,.L0da59dd0
    # Line 1214
    nop	# was lw $t9, -32388($gp) # &__glExpUpdateHardwareState
    ld	$gp,24($sp)
.L0da59bcc:
    # Line 1241
    ld	$ra,32($sp)
    # Line 1214
    lw	$a2,4160($zero)
    # Line 1224
    addiu	$a4,$s0,7648
    # Line 1223
    addiu	$a3,$s0,9704
    # Line 1214
    beqz	$a2,.L0da59c38
    lw	$v0,4688($s0)
    beqz	$v0,.L0da59e80
    # Line 1224
    addiu	$a1,$s0,5584
    li	$a0,257
    move	$v0,$zero
    # Line 1223
    sw	$a3,5580($s0)
.L0da59bf8:
    # Line 1224
    addu	$v1,$v0,$a4
    addu	$at,$v0,$a1
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da59bf8
    sd	$at,0($v1)
.L0da59c14:
    # Line 1238
    lw	$v1,148($s0)
.L0da59c18:
    # Line 1241
    li	$v0,1
    # Line 1239
    li	$a2,-5
    # Line 1238
    ori	$v1,$v1,0x3
    # Line 1239
    and	$v1,$v1,$a2
    sw	$v1,148($s0)
    # Line 1241
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da59c38:
    # Line 1226
    beqz	$v0,.L0da59cc4
    # Line 1231
    li	$a0,257
    move	$v0,$zero
    li	$a1,4168
    addiu	$a4,$s0,5584
    # Line 1230
    addiu	$a2,$s0,9704
    sw	$a2,5580($s0)
.L0da59c54:
    # Line 1231
    addu	$at,$v0,$a1
    addu	$a3,$v0,$a4
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da59c54
    sd	$a3,0($at)
    b	.L0da59c18
    # Line 1238
    lw	$v1,148($s0)
.L0da59c78:
    # Line 1064
    li	$a1,8192
    lw	$t9,40($s0)
    move	$a0,$s0
    # Line 1063
    li	$a4,8192
    # Line 1064
    jal	__glExpUpdateHardwareState
    # Line 1063
    sw	$a4,31888($s0)
    # Line 1065
    lw	$t9,44($s0)
    lw	$a1,31888($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 1064
    sw	$v0,31504($s0)
    # Line 1065
    bltz	$v0,.L0da59e8c
    sw	$v0,31508($s0)
    # Line 1071
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-31228
    bal __glExpIoctl
    move	$a0,$s0
    b	.L0da59b08
    # Line 1075
    lw	$t9,40($s0)
.L0da59cc4:
    # Line 1234
    li	$v0,257
    move	$a0,$zero
    li	$a1,4168
    addiu	$a4,$s0,7648
    # Line 1233
    li	$at,4168
    sw	$at,5580($s0)
.L0da59cdc:
    # Line 1234
    addu	$a2,$a0,$a1
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da59cdc
    sd	$v1,0($a2)
    b	.L0da59c18
    # Line 1238
    lw	$v1,148($s0)
.L0da59d00:
    # Line 1046
    move	$a1,$v0
    move	$a0,$s0
    # lw $t9, -25872($gp) # &__glPixmapMakeCurrent
    # Line 1045
    li	$a2,-1
    sw	$a2,4124($zero)
    # Line 1046
    jal	__glPixmapMakeCurrent
    # Line 1045
    sw	$a2,31892($s0)
    # Line 1046
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da59d30:
    # Line 1098
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-26556
    bal __glExpGetMachineState
    move	$a0,$s0
    b	.L0da59b3c
    # Line 1104
    nop	# was lw $t9, -28992($gp) # &__glMakeCurrentBuffers
.L0da59d48:
    # Line 1114
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$v0,48($sp)
    addiu	$t9,$t9,-27252
    bal __glExpGetMachineState
    move	$a0,$s0
    lw	$a0,148($s0)
    b	.L0da59b70
    ld	$v0,48($sp)
.L0da59d68:
    # Line 1158
    # lw $t9, -29020($gp) # &__glSoftResetContext
    jal	__glSoftResetContext
    move	$a0,$s0
    # Line 1168
    move	$a0,$s0
    addiu	$a4,$sp,12
    lw	$t9,28($s0)
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 1169
    # lw $t9, -23156($gp) # &__glexpim_dispatchTable
    lw	$a3,12($sp)
    lw	$t9,668($t9)
    lw	$a2,8($sp)
    move	$a1,$zero
    jal	__glexpim_dispatchTable
    move	$a0,$zero
    # lw $t9, -23156($gp) # &__glexpim_dispatchTable
    # Line 1170
    move	$a0,$zero
    lw	$t9,152($t9)
    move	$a1,$zero
    lw	$a3,12($sp)
    jal	__glexpim_dispatchTable
    lw	$a2,8($sp)
    b	.L0da59b9c
    # Line 1179
    lw	$at,148($s0)
.L0da59dd0:
    # Line 1214
    bal __glExpUpdateHardwareState
    move	$a0,$s0
    b	.L0da59bcc
    ld	$gp,24($sp)
.L0da59de0:
    # Line 1081
    move	$a0,$s0
    # lw $t9, -32744($gp) # &sub_0da60000
    # Line 1080
    lui	$at,0x4
    ori	$at,$at,0x2398
    # Line 1081
    addiu	$t9,$t9,-30556
    bal __glExpIoctl
    # Line 1080
    sw	$zero,0($at)
    # Line 1082
    lui	$a3,0x4
    ori	$a3,$a3,0x2080
    # Line 1081
    lui	$at,0x4
    ori	$at,$at,0x2010
    sw	$v0,0($at)
    # Line 1082
    sw	$zero,0($a3)
    lbu	$a2,31566($s0)
    lui	$a0,0x4
    beqz	$a2,.L0da59eb4
    ori	$a0,$a0,0x2038
    # Line 1086
    lw	$at,3132($s0)
    sw	$at,0($a0)
.L0da59e2c:
    b	.L0da59b30
    # Line 1088
    lw	$a0,148($s0)
.L0da59e34:
    # Line 1187
    # lw $t9, -32384($gp) # &__glExpPassMachineState
    move	$a0,$s0
    # Line 1184
    addiu	$v0,$s0,31520
    # Line 1187
    bal __glExpPassMachineState
    # Line 1184
    sw	$v0,3316($s0)
    # Line 1189
    # lw $t9, -32168($gp) # &__glExpInitPrimDispatchState
    bal __glExpInitPrimDispatchState
    move	$a0,$s0
    # Line 1190
    # lw $t9, -32228($gp) # &__glExpInitLighting
    bal __glExpInitLighting
    move	$a0,$s0
    # Line 1191
    # lw $t9, -32056($gp) # &__glExpInitPixelState
    jal	__glExpInitPixelState
    move	$a0,$s0
    # Line 1197
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0da59ba8
    # Line 1203
    nop	# was lw $t9, -29024($gp) # &__glContextSetColorScales
.L0da59e80:
    ld	$v1,16($sp)
    b	.L0da59c14
    # Line 1226
    sw	$v1,5580($s0)
.L0da59e8c:
    # Line 1067
    lw	$t9,12($s0)
    move	$a0,$zero
    jal	__glContextSetColorScales
    move	$a1,$s0
    # Line 1068
    move	$v0,$zero
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da59eb4:
    b	.L0da59e2c
    # Line 1088
    sw	$zero,0($a0)
.end MakeCurrent

# Function: __glExpCreateContext
# Declared: Line 1248 (Source lines: 1250-1370)
# Address: 0x0da59ebc - 0x0da5a36c (Size: 1200 bytes, Frame: 208)
.globl __glExpCreateContext
.ent __glExpCreateContext
__glExpCreateContext:
    # Line 1250
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    # Line 1255
    li	$a2,31896
    sd	$a1,16($sp)
    li	$a1,1
    sd	$gp,24($sp)
    # Line 1250
    lui	$at,0x1a
    addiu	$at,$at,-9812
    addu	$gp,$t9,$at
    # Line 1255
    lw	$t9,4($a0)
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 1260
    li	$a0,19
    # Line 1255
    beqz	$v0,.L0da5a350
    move	$s1,$v0
    # Line 1330
    lwc1	$f2,_lit_3e000000
    ld	$a2,8($sp)
    # Line 1260
    move	$a1,$s1
    move	$v0,$zero
.L0da59f18:
    addu	$a3,$v0,$a1
    addu	$v1,$v0,$a2
    addiu	$v0,$v0,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da59f18
    sw	$v1,0($a3)
    # Line 1328
    lwc1	$f0,_lit_3f000000
    ld	$a2,16($sp)
    # Line 1261
    li	$v0,22
    move	$a0,$zero
    addiu	$a1,$s1,3100
.L0da59f48:
    addu	$a4,$a0,$a1
    addu	$a3,$a0,$a2
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da59f48
    sw	$a3,0($a4)
    # Line 1329
    lwc1	$f1,_lit_41200000
    # Line 1261
    lw	$a4,3128($s1)
    # Line 1281
    move	$a1,$zero
    # Line 1267
    la	$a2,__glNop
    # Line 1261
    slti	$a4,$a4,24
    bnez	$a4,.L0da59f88
    # Line 1281
    li	$a0,371
    # Line 1267
    li	$at,23
    sw	$at,3128($s1)
.L0da59f88:
    la	$v0,sub_0dbf0000
    # Line 1281
    la	$a6,__glexplc_dispatchTable
    # Line 1267
    addiu	$v0,$v0,9016
    # Line 1281
    move	$a5,$v0
.L0da59f98:
    addu	$v1,$a1,$a6
    addu	$a3,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da59f98
    sw	$v1,0($a3)
    # Line 1282
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$v0,1484
    la	$a6,__glexplc_vertexDispatchTable
.L0da59fc4:
    addu	$a3,$a0,$a6
    addu	$a4,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da59fc4
    sw	$a3,0($a4)
    # Line 1283
    li	$a0,42
    move	$a1,$zero
    addiu	$a5,$v0,1580
    la	$a6,__glexplc_colorDispatchTable
.L0da59ff0:
    addu	$a4,$a1,$a6
    addu	$at,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da59ff0
    sw	$a4,0($at)
    # Line 1284
    li	$a1,10
    move	$a0,$zero
    addiu	$a5,$v0,1748
    la	$a6,__glexplc_normalDispatchTable
.L0da5a01c:
    addu	$at,$a0,$a6
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a01c
    sw	$at,0($v1)
    # Line 1285
    li	$a1,32
    move	$a0,$zero
    addiu	$a5,$v0,1788
    la	$a6,__glexplc_texCoordDispatchTable
.L0da5a048:
    addu	$v1,$a0,$a6
    addu	$a3,$a0,$a5
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a048
    sw	$v1,0($a3)
    # Line 1286
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$v0,1916
    la	$a6,__glexplc_rasterPosDispatchTable
.L0da5a074:
    addu	$a3,$a0,$a6
    addu	$a4,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a074
    sw	$a3,0($a4)
    # Line 1287
    li	$a0,8
    move	$a1,$zero
    addiu	$a5,$v0,2012
    la	$a6,__glexplc_rectDispatchTable
.L0da5a0a0:
    addu	$a4,$a1,$a6
    addu	$at,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5a0a0
    sw	$a4,0($at)
    # Line 1289
    li	$a1,371
    move	$a0,$zero
    addiu	$a5,$v0,2056
    la	$a6,__glexpim_dispatchTable
.L0da5a0cc:
    addu	$at,$a0,$a6
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a0cc
    sw	$at,0($v1)
    # Line 1290
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$v0,3540
    la	$a6,__glexpim_vertexDispatchTable
.L0da5a0f8:
    addu	$v1,$a0,$a6
    addu	$a3,$a0,$a5
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a0f8
    sw	$v1,0($a3)
    # Line 1291
    li	$a0,42
    move	$a1,$zero
    addiu	$a5,$v0,3636
    la	$a6,__glexpim_colorDispatchTable
.L0da5a124:
    addu	$a3,$a1,$a6
    addu	$a4,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5a124
    sw	$a3,0($a4)
    # Line 1292
    li	$a1,10
    move	$a0,$zero
    addiu	$a5,$v0,3804
    la	$a6,__glexpim_normalDispatchTable
.L0da5a150:
    addu	$a4,$a0,$a6
    addu	$at,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a150
    sw	$a4,0($at)
    # Line 1293
    li	$a0,32
    move	$a1,$zero
    addiu	$a5,$v0,3844
    la	$a6,__glexpim_texCoordDispatchTable
.L0da5a17c:
    addu	$at,$a1,$a6
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5a17c
    sw	$at,0($v1)
    # Line 1294
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$v0,3972
    la	$a6,__glexpim_rasterPosDispatchTable
    # Line 1312
    li	$at,11
.L0da5a1ac:
    # Line 1294
    addu	$v1,$a0,$a6
    addu	$a3,$a0,$a5
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da5a1ac
    sw	$v1,0($a3)
    # Line 1295
    li	$a0,8
    move	$a1,$zero
    addiu	$a5,$v0,4068
    la	$a6,__glexpim_rectDispatchTable
    # Line 1323
    li	$v1,10
.L0da5a1dc:
    # Line 1295
    addu	$a3,$a1,$a6
    addu	$a4,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5a1dc
    sw	$a3,0($a4)
    # Line 1347
    sw	$a2,4652($s1)
    # Line 1346
    sw	$a2,4648($s1)
    # Line 1333
    swc1	$f2,3468($s1)
    # Line 1330
    swc1	$f2,3456($s1)
    # Line 1332
    swc1	$f1,3464($s1)
    # Line 1329
    swc1	$f1,3452($s1)
    # Line 1331
    swc1	$f0,3460($s1)
    # Line 1326
    li	$a3,2
    # Line 1339
    sw	$at,3368($s1)
    # Line 1338
    sw	$at,3364($s1)
    # Line 1337
    sw	$at,3360($s1)
    # Line 1336
    sw	$at,3356($s1)
    # Line 1335
    sw	$at,3352($s1)
    # Line 1313
    sw	$at,3436($s1)
    # Line 1312
    sw	$at,3428($s1)
    # Line 1306
    li	$at,3
    sw	$at,3440($s1)
    # Line 1344
    la	$at,__glListExecTable
    # Line 1326
    sw	$a3,3504($s1)
    # Line 1320
    li	$a3,128
    sw	$a3,3488($s1)
    # Line 1315
    li	$a3,30
    sw	$a3,3472($s1)
    # Line 1309
    li	$a3,6
    # Line 1344
    sw	$at,4656($s1)
    # Line 1350
    la	$at,sub_0da60000
    # Line 1309
    sw	$a3,3332($s1)
    # Line 1300
    li	$a3,2048
    # Line 1301
    sw	$a3,3348($s1)
    # Line 1300
    sw	$a3,3344($s1)
    # Line 1342
    la	$a3,__glGenericDlistCompiler
    # Line 1328
    swc1	$f0,3448($s1)
    # Line 1350
    addiu	$at,$at,-26056
    # Line 1342
    sw	$a3,4644($s1)
    # Line 1325
    sw	$v1,3500($s1)
    # Line 1323
    sw	$v1,3496($s1)
    # Line 1317
    li	$v1,16
    # Line 1318
    sw	$v1,3484($s1)
    # Line 1317
    sw	$v1,3480($s1)
    # Line 1314
    li	$v1,64
    sw	$v1,3444($s1)
    # Line 1308
    li	$v1,8
    sw	$v1,3328($s1)
    # Line 1345
    la	$v1,__glExpListExecTable
    # Line 1321
    li	$a4,32
    sw	$a4,3492($s1)
    # Line 1316
    lui	$a4,0x1
    sw	$a4,3476($s1)
    # Line 1310
    li	$a4,1
    # Line 1311
    sw	$a4,3340($s1)
    # Line 1310
    sw	$a4,3336($s1)
    # Line 1302
    li	$a4,6144
    # Line 1304
    sw	$a4,3376($s1)
    # Line 1302
    sw	$a4,3372($s1)
    # Line 1343
    la	$a4,__gl_GenericDlOps
    # Line 1345
    sw	$v1,4664($s1)
    # Line 1341
    la	$v1,__glExpDlistOptimizer
    # Line 1343
    sw	$a4,4660($s1)
    # Line 1349
    la	$a4,sub_0da60000
    # Line 1350
    sw	$at,92($s1)
    # Line 1341
    sw	$v1,4640($s1)
    # Line 1349
    addiu	$a4,$a4,-27384
    # Line 1350
    bnez	$s0,.L0da5a328
    # Line 1349
    sw	$a4,88($s1)
    # Line 1360
    # lw $t9, -29028($gp) # &__glEarlyInitContext
.L0da5a2fc:
    jal	__glEarlyInitContext
    move	$a0,$s1
    # Line 1362
    la	$a4,__glExpCopyContext
    ld	$gp,24($sp)
    # Line 1370
    ld	$s0,40($sp)
    move	$v0,$s1
    ld	$ra,32($sp)
    # Line 1362
    sw	$a4,116($s1)
    # Line 1370
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da5a328:
    # Line 1356
    # lw $t9, -31076($gp) # &__glShareDlist
    move	$a0,$s1
    jal	__glShareDlist
    move	$a1,$s0
    # Line 1357
    # lw $t9, -27048($gp) # &__glShareTextureObjects
    move	$a0,$s1
    jal	__glShareTextureObjects
    move	$a1,$s0
    b	.L0da5a2fc
    # Line 1360
    nop	# was lw $t9, -29028($gp) # &__glEarlyInitContext
.L0da5a350:
    # Line 1257
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glExpCreateContext

.late_rodata
jtbl_0dbeb0b8:
    .word .L0da58de8
    .word .L0da58df0
    .word .L0da58da4
    .word .L0da58da4
    .word .L0da58df8
    .word .L0da58e00
    .word .L0da58e00
    .word .L0da58e00
    .word .L0da58e00

.rdata
_lit_3e000000:
    .word 0x3e000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000

