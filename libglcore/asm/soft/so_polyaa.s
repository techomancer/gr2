# Source: ../soft/so_polyaa.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyaa.c
# Total Functions: 8

.text

# Function: FindLineEquation
# Declared: Line 99 (Source lines: 101-131)
# Address: 0x0daccf2c - 0x0daccffc (Size: 208 bytes, Frame: 0)
.ent FindLineEquation
FindLineEquation:
    # Line 101
    lwc1	$f5,4($a1)
    lwc1	$f4,4($a2)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0daccfc4
    # Line 110
    move	$at,$a1
    # Line 111
    move	$a1,$a2
    lwc1	$f7,0($a2)
    lwc1	$f5,4($a2)
    lwc1	$f6,0($at)
    lwc1	$f4,4($at)
.L0daccf58:
    # Line 119
    sub.s	$f0,$f4,$f5
    # Line 120
    sub.s	$f3,$f6,$f7
    # Line 121
    neg.s	$f1,$f0
    # Line 122
    swc1	$f3,4($a0)
    # Line 121
    swc1	$f1,0($a0)
    # Line 123
    lwc1	$f1,4($a1)
    lwc1	$f2,0($a1)
    mul.s	$f1,$f1,$f3
    mul.s	$f2,$f2,$f0
    sub.s	$f2,$f2,$f1
    swc1	$f2,8($a0)
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f3
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f0
    sub.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    mtc1	$zero,$f0
    c.lt.s	$f0,$f1
    nop
    bc1f	.L0daccfb8
    # Line 127
    li	$v0,1
    # Line 131
    jr	$ra
    # Line 127
    sb	$v0,12($a0)
.L0daccfb8:
    # Line 129
    sb	$zero,12($a0)
    # Line 131
    jr	$ra
    nop
.L0daccfc4:
    # Line 111
    c.eq.s	$f5,$f4
    lwc1	$f6,0($a2)
    bc1f	.L0daccf58
    lwc1	$f7,0($a1)
    c.lt.s	$f6,$f7
    nop
    bc1f	.L0daccf58
    # Line 115
    move	$v1,$a1
    # Line 116
    move	$a1,$a2
    lwc1	$f7,0($a2)
    lwc1	$f5,4($a2)
    lwc1	$f6,0($v1)
    b	.L0daccf58
    lwc1	$f4,4($v1)
.end FindLineEquation

# Function: FindPlaneEquation
# Declared: Line 139 (Source lines: 149-177)
# Address: 0x0daccffc - 0x0dacd08c (Size: 144 bytes, Frame: 0)
.ent FindPlaneEquation
FindPlaneEquation:
    # Line 167
    sub.s	$f4,$f18,$f16
    # Line 149
    lwc1	$f0,128($a1)
    # Line 167
    sub.s	$f7,$f17,$f16
    # Line 154
    lwc1	$f17,128($a3)
    # Line 150
    lwc1	$f5,132($a1)
    lwc1	$f9,132($a2)
    # Line 154
    sub.s	$f17,$f17,$f0
    # Line 149
    lwc1	$f3,128($a2)
    # Line 150
    sub.s	$f9,$f9,$f5
    # Line 167
    mul.s	$f6,$f7,$f17
    # Line 155
    lwc1	$f8,132($a3)
    # Line 149
    sub.s	$f3,$f3,$f0
    # Line 167
    mul.s	$f17,$f9,$f17
    # Line 155
    sub.s	$f8,$f8,$f5
    # Line 167
    mul.s	$f18,$f4,$f3
    mul.s	$f3,$f3,$f8
    sub.s	$f3,$f3,$f17
    sub.s	$f6,$f6,$f18
    # Line 174
    div.s	$f2,$f6,$f3
    # Line 167
    mul.s	$f7,$f7,$f8
    mul.s	$f4,$f4,$f9
    sub.s	$f4,$f4,$f7
    # Line 173
    div.s	$f1,$f4,$f3
    # Line 167
    mul.s	$f5,$f5,$f6
    mul.s	$f0,$f0,$f4
    mul.s	$f4,$f3,$f16
    add.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f4
    # Line 176
    neg.s	$f0,$f0
    div.s	$f0,$f0,$f3
    # Line 175
    lwc1	$f3,_lit_3f800000
    swc1	$f3,8($a0)
    # Line 174
    swc1	$f2,4($a0)
    # Line 173
    swc1	$f1,0($a0)
    # Line 177
    jr	$ra
    # Line 176
    swc1	$f0,12($a0)
.end FindPlaneEquation

# Function: FindP
# Declared: Line 182 (Source lines: 184-184)
# Address: 0x0dacd08c - 0x0dacd0b0 (Size: 36 bytes, Frame: 0)
.ent FindP
FindP:
    # Line 184
    lwc1	$f2,4($a0)
    lwc1	$f1,0($a0)
    mul.s	$f2,$f2,$f14
    mul.s	$f1,$f1,$f13
    add.s	$f1,$f1,$f2
    lwc1	$f0,12($a0)
    add.s	$f0,$f0,$f1
    jr	$ra
    neg.s	$f0,$f0
.end FindP

# Function: ComputeCoverageStuff
# Declared: Line 210 (Source lines: 215-224)
# Address: 0x0dacd0b0 - 0x0dacd118 (Size: 104 bytes, Frame: 0)
.ent ComputeCoverageStuff
ComputeCoverageStuff:
    # Line 221
    mult	$a1,$a1
    mflo	$at
    # Line 222
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 215
    lwc1	$f3,_lit_3f800000
    # Line 222
    div.s	$f2,$f3,$f2
    # Line 215
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    div.s	$f3,$f3,$f4
    # Line 217
    lwc1	$f1,_lit_3f000000
    mul.s	$f0,$f3,$f1
    # Line 223
    sw	$a1,8($a0)
    # Line 217
    lwc1	$f4,_lit_bf000000
    # Line 218
    sub.s	$f1,$f1,$f0
    # Line 221
    sw	$at,12($a0)
    # Line 216
    swc1	$f3,4($a0)
    # Line 217
    add.s	$f0,$f0,$f4
    # Line 215
    swc1	$f3,0($a0)
    # Line 222
    swc1	$f2,16($a0)
    # Line 220
    swc1	$f1,36($a0)
    # Line 219
    swc1	$f0,32($a0)
    # Line 218
    swc1	$f1,28($a0)
    # Line 224
    jr	$ra
    # Line 217
    swc1	$f0,24($a0)
.end ComputeCoverageStuff

# Function: Coverage
# Declared: Line 229 (Source lines: 236-294)
# Address: 0x0dacd118 - 0x0dacd410 (Size: 760 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 236
    move	$t0,$zero
    # Line 240
    lwc1	$f4,0($a1)
    # Line 241
    lwc1	$f6,0($a2)
    lwc1	$f17,32($a3)
    # Line 240
    lwc1	$f12,24($a3)
    # Line 241
    lbu	$at,20($a3)
    add.s	$f17,$f17,$f6
    # Line 237
    lw	$a6,8($a3)
    # Line 241
    beqz	$at,.L0dacd264
    # Line 240
    add.s	$f12,$f12,$f4
    # Line 251
    lwc1	$f7,36($a3)
    add.s	$f7,$f7,$f6
    lwc1	$f9,12($a0)
    # Line 250
    lwc1	$f10,28($a3)
    # Line 251
    mul.s	$f0,$f9,$f7
    # Line 250
    add.s	$f10,$f10,$f4
    # Line 251
    lwc1	$f11,8($a0)
    mul.s	$f11,$f11,$f10
    add.s	$f0,$f0,$f11
    lwc1	$f8,16($a0)
    add.s	$f0,$f0,$f8
    mtc1	$zero,$f5
    c.lt.s	$f5,$f0
    li	$v0,1
    lbu	$a7,20($a0)
    bc1fl	.L0dacd184
    move	$v0,$zero
.L0dacd184:
    bne	$v0,$a7,.L0dacd268
    # Line 262
    lwc1	$f15,_lit_497423f0
    # Line 251
    lwc1	$f4,28($a0)
    mul.s	$f0,$f7,$f4
    lwc1	$f13,24($a0)
    mul.s	$f13,$f10,$f13
    add.s	$f0,$f0,$f13
    lwc1	$f6,32($a0)
    add.s	$f0,$f0,$f6
    c.lt.s	$f5,$f0
    li	$v1,1
    lbu	$a5,36($a0)
    bc1fl	.L0dacd1bc
    move	$v1,$zero
.L0dacd1bc:
    bne	$v1,$a5,.L0dacd268
    # Line 262
    lwc1	$f15,_lit_497423f0
    # Line 252
    lwc1	$f15,44($a0)
    mul.s	$f0,$f7,$f15
    lwc1	$f14,40($a0)
    mul.s	$f14,$f10,$f14
    add.s	$f0,$f0,$f14
    lwc1	$f16,48($a0)
    add.s	$f0,$f0,$f16
    c.lt.s	$f5,$f0
    li	$a4,1
    lbu	$t1,52($a0)
    bc1fl	.L0dacd1f4
    move	$a4,$zero
.L0dacd1f4:
    bnel	$a4,$t1,.L0dacd268
    # Line 262
    lwc1	$f15,_lit_497423f0
    # Line 252
    mul.s	$f0,$f9,$f17
    add.s	$f0,$f0,$f11
    add.s	$f0,$f0,$f8
    c.lt.s	$f5,$f0
    li	$at,1
    bc1fl	.L0dacd218
    move	$at,$zero
.L0dacd218:
    bne	$at,$a7,.L0dacd264
    mov.s	$f7,$f17
    mul.s	$f1,$f4,$f7
    add.s	$f1,$f1,$f13
    add.s	$f1,$f1,$f6
    c.lt.s	$f5,$f1
    li	$v0,1
    bc1fl	.L0dacd23c
    move	$v0,$zero
.L0dacd23c:
    bnel	$v0,$a5,.L0dacd268
    # Line 262
    lwc1	$f15,_lit_497423f0
    # Line 252
    mul.s	$f2,$f15,$f7
    add.s	$f2,$f2,$f14
    add.s	$f2,$f2,$f16
    c.lt.s	$f5,$f2
    li	$v1,1
    bc1fl	.L0dacd260
    move	$v1,$zero
.L0dacd260:
    beq	$v1,$t1,.L0dacd408
.L0dacd264:
    # Line 262
    lwc1	$f15,_lit_497423f0
.L0dacd268:
    # Line 266
    move	$t1,$zero
    # Line 263
    lwc1	$f14,_lit_bf800000
    # Line 264
    mov.s	$f13,$f15
    # Line 266
    blez	$a6,.L0dacd3b0
    # Line 265
    mov.s	$f16,$f14
    # Line 266
    mtc1	$zero,$f5
    lwc1	$f18,0($a3)
    lwc1	$f9,12($a0)
    lwc1	$f19,8($a0)
    lwc1	$f8,16($a0)
    lbu	$a7,20($a0)
    b	.L0dacd2a8
    lwc1	$f10,4($a3)
.L0dacd29c:
    addiu	$t1,$t1,1
    beq	$a6,$t1,.L0dacd3b0
    # Line 278
    add.s	$f12,$f18,$f12
.L0dacd2a8:
    # Line 267
    mov.s	$f4,$f17
    # Line 268
    move	$a5,$zero
    mov.s	$f11,$f12
    b	.L0dacd2c8
    mul.s	$f7,$f19,$f12
.L0dacd2bc:
    addiu	$a5,$a5,1
.L0dacd2c0:
    beq	$a6,$a5,.L0dacd29c
    # Line 276
    add.s	$f4,$f10,$f4
.L0dacd2c8:
    # Line 268
    mul.s	$f3,$f9,$f4
    add.s	$f3,$f3,$f7
    add.s	$f3,$f3,$f8
    c.lt.s	$f5,$f3
    li	$a4,1
    bc1fl	.L0dacd2e4
    move	$a4,$zero
.L0dacd2e4:
    bne	$a4,$a7,.L0dacd2bc
    mov.s	$f6,$f4
    lwc1	$f2,28($a0)
    lwc1	$f1,24($a0)
    mul.s	$f2,$f2,$f6
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f2
    lwc1	$f0,32($a0)
    add.s	$f0,$f0,$f1
    c.lt.s	$f5,$f0
    li	$v0,1
    lbu	$at,36($a0)
    bc1fl	.L0dacd31c
    move	$v0,$zero
.L0dacd31c:
    bnel	$at,$v0,.L0dacd2c0
    addiu	$a5,$a5,1
    # Line 269
    lwc1	$f0,44($a0)
    lwc1	$f3,40($a0)
    mul.s	$f0,$f0,$f6
    mul.s	$f3,$f3,$f11
    add.s	$f3,$f3,$f0
    lwc1	$f2,48($a0)
    add.s	$f2,$f2,$f3
    c.lt.s	$f5,$f2
    li	$a4,1
    lbu	$v1,52($a0)
    bc1fl	.L0dacd354
    move	$a4,$zero
.L0dacd354:
    bnel	$v1,$a4,.L0dacd2c0
    # Line 268
    addiu	$a5,$a5,1
    # Line 269
    c.lt.s	$f12,$f15
    nop
    bc1f	.L0dacd370
    # Line 274
    addiu	$t0,$t0,1
    # Line 270
    mov.s	$f15,$f12
.L0dacd370:
    c.lt.s	$f14,$f12
    nop
    bc1fl	.L0dacd388
    # Line 271
    c.lt.s	$f4,$f13
    mov.s	$f14,$f12
    c.lt.s	$f4,$f13
.L0dacd388:
    nop
    bc1fl	.L0dacd39c
    # Line 272
    c.lt.s	$f16,$f4
    mov.s	$f13,$f4
    c.lt.s	$f16,$f4
.L0dacd39c:
    nop
    bc1f	.L0dacd2bc
    nop
    b	.L0dacd2bc
    # Line 273
    mov.s	$f16,$f4
.L0dacd3b0:
    # Line 266
    beqz	$t0,.L0dacd3ec
    nop
    # Line 285
    add.s	$f1,$f15,$f14
    lwc1	$f2,_lit_3f000000
    # Line 286
    add.s	$f0,$f13,$f16
    # Line 285
    mul.s	$f1,$f1,$f2
    # Line 286
    mul.s	$f0,$f0,$f2
    # Line 285
    swc1	$f1,0($a1)
    # Line 286
    swc1	$f0,0($a2)
    lw	$at,12($a3)
    bne	$at,$t0,.L0dacd3ec
    # Line 290
    lwc1	$f0,_lit_3f800000
    # Line 289
    li	$v0,1
    # Line 290
    jr	$ra
    # Line 289
    sb	$v0,20($a3)
.L0dacd3ec:
    # Line 294
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,16($a3)
    # Line 293
    sb	$zero,20($a3)
    # Line 294
    jr	$ra
    mul.s	$f0,$f0,$f1
.L0dacd408:
    # Line 253
    jr	$ra
    lwc1	$f0,_lit_3f800000
.end Coverage

# Function: FillAASubTriangle
# Declared: Line 395 (Source lines: 397-727)
# Address: 0x0dacd410 - 0x0daceaf4 (Size: 5860 bytes, Frame: 0)
.ent FillAASubTriangle
FillAASubTriangle:
    # Line 397
    lui	$at,0x1
    ori	$at,$at,0x3a0
    subu	$sp,$sp,$at
    sd	$s4,336($sp)
    move	$s4,$zero
    sd	$zero,544($sp)
    sd	$zero,456($sp)
    sd	$zero,392($sp)
    sdc1	$f22,96($sp)
    sdc1	$f28,88($sp)
    sd	$a1,448($sp)
    sd	$s1,360($sp)
    # Line 412
    lw	$s1,280($a2)
    sd	$s2,352($sp)
    # Line 397
    move	$s2,$a2
    # Line 422
    lwc1	$f28,3284($s1)
    # Line 421
    lwc1	$f22,3280($s1)
    # Line 397
    move	$a3,$s8
    addu	$s8,$sp,$at
    sd	$a0,232($sp)
    # Line 434
    lw	$a6,30144($s1)
    # Line 433
    lw	$a5,30148($s1)
    # Line 432
    lw	$a4,29716($s1)
    # Line 430
    lw	$a2,30176($s1)
    # Line 429
    lw	$a1,30172($s1)
    sd	$a4,384($sp)
    sd	$a2,512($sp)
    sd	$a1,528($sp)
    sd	$a5,432($sp)
    # Line 417
    lw	$a5,3376($s1)
    sd	$a6,368($sp)
    # Line 435
    lw	$at,30140($s1)
    # Line 416
    lw	$a6,3416($s1)
    sd	$a3,344($sp)
    sd	$at,416($sp)
    # Line 436
    lw	$v0,30168($s1)
    # Line 437
    lw	$v1,30164($s1)
    # Line 438
    lw	$a0,30160($s1)
    sd	$v0,440($sp)
    # Line 415
    lbu	$v0,4552($s1)
    sd	$a0,408($sp)
    # Line 428
    lw	$a0,30156($s1)
    sd	$v1,376($sp)
    # Line 431
    lw	$a3,29708($s1)
    # Line 427
    lw	$v1,30152($s1)
    sd	$a0,504($sp)
    sd	$a3,400($sp)
    # Line 439
    lw	$a3,30440($s1)
    sd	$v1,536($sp)
    sd	$v0,312($sp)
    andi	$at,$a3,0x2
    beqz	$at,.L0daceae4
    sd	$at,248($sp)
.L0dacd4e4:
    # Line 448
    andi	$a4,$a3,0x20
    sd	$a4,480($sp)
    # Line 446
    lui	$at,0xffff
    # Line 447
    lui	$v0,0xffff
    # Line 448
    lui	$v1,0xffff
    addu	$v1,$v1,$s8
    # Line 447
    addu	$v0,$v0,$s8
    # Line 446
    addu	$at,$at,$s8
    addiu	$at,$at,32736
    # Line 447
    addiu	$v0,$v0,-32
    # Line 448
    addiu	$v1,$v1,-288
    sw	$v1,30476($s1)
    # Line 447
    sw	$v0,30472($s1)
    # Line 448
    beqz	$a4,.L0dacd558
    # Line 446
    sw	$at,30468($s1)
    # Line 450
    lw	$at,31112($s1)
    ld	$v1,232($sp)
    lw	$a4,3376($at)
    lw	$v0,31140($s1)
    subu	$v1,$v1,$a4
    mult	$v0,$v1
    lw	$a4,31128($s1)
    mflo	$v0
    addu	$a4,$a4,$v0
    ld	$v0,536($sp)
    lw	$at,3372($at)
    addu	$a4,$a4,$v0
    subu	$a4,$a4,$at
    sw	$a4,30456($s1)
.L0dacd558:
    andi	$at,$a3,0x4
    beqz	$at,.L0dacd5a8
    sd	$at,488($sp)
    # Line 455
    lw	$v1,31232($s1)
    ld	$v0,232($sp)
    lw	$a4,3376($v1)
    lw	$at,31260($s1)
    subu	$v0,$v0,$a4
    mult	$at,$v0
    lw	$v1,3372($v1)
    lw	$v0,31248($s1)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$v0,$v0,$a4
    ld	$a4,536($sp)
    sll	$v1,$v1,0x2
    sll	$a4,$a4,0x2
    addu	$v0,$v0,$a4
    subu	$v0,$v0,$v1
    sw	$v0,30444($s1)
.L0dacd5a8:
    sd	$s5,624($sp)
    sd	$s3,616($sp)
    sd	$s6,592($sp)
    sd	$s7,584($sp)
    sdc1	$f26,568($sp)
    # Line 459
    ld	$v1,448($sp)
    ld	$at,232($sp)
    sdc1	$f30,552($sp)
    lw	$v0,11768($s1)
    slt	$at,$at,$v1
    beqz	$at,.L0dacea70
    sw	$v0,30484($s1)
    sd	$ra,608($sp)
    sd	$s0,600($sp)
    sdc1	$f20,576($sp)
    sdc1	$f24,560($sp)
    dmtc1	$zero,$f30
    mtc1	$zero,$f26
    andi	$s6,$a3,0x4000
    andi	$v1,$a3,0x10
    andi	$a4,$a3,0x8
    sd	$a4,264($sp)
    sd	$v1,296($sp)
    sd	$s6,256($sp)
    addiu	$s6,$s2,240
    ld	$s7,536($sp)
    addiu	$s3,$sp,28
    sd	$s3,320($sp)
    la	$s3,sub_0dad0000
    addiu	$s7,$s7,1
    sd	$s7,240($sp)
    addiu	$s7,$s2,176
    lw	$v0,72($sp)
    addiu	$s3,$s3,-12008
    ld	$at,528($sp)
    sd	$v0,464($sp)
    lui	$v0,0x4
    addiu	$at,$at,-1
    sd	$at,288($sp)
    andi	$at,$a3,0x1
    and	$v0,$a3,$v0
    andi	$s5,$a3,0x1000
    sd	$s5,280($sp)
    ld	$s5,232($sp)
    sd	$v0,472($sp)
    sd	$at,424($sp)
    subu	$s5,$s5,$a5
    subu	$s5,$a6,$s5
    addiu	$s5,$s5,-1
    sd	$s5,520($sp)
    la	$s5,sub_0dad0000
    sd	$at,272($sp)
    b	.L0dacdb90
    addiu	$s5,$s5,-12148
.L0dacd680:
    sd	$zero,328($sp)
    # Line 503
    li	$a1,-1
.L0dacd688:
    ld	$v1,528($sp)
    # Line 515
    slt	$v1,$v1,$a1
    beqz	$v1,.L0dacd6a0
    li	$a4,1
    # Line 516
    li	$a1,-1
    sd	$zero,328($sp)
.L0dacd6a0:
    # Line 517
    ld	$at,328($sp)
    beq	$a4,$at,.L0dace40c
    ld	$s0,528($sp)
.L0dacd6ac:
    li	$v0,-1
    # Line 547
    beq	$a1,$v0,.L0dace398
    ld	$a0,536($sp)
    # Line 551
    ld	$v1,272($sp)
    subu	$a0,$a1,$a0
    beqz	$v1,.L0dace3a4
    move	$s0,$a0
    ld	$a4,248($sp)
    ld	$at,264($sp)
    beqz	$a4,.L0dacd734
    nop
    # Line 555
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 558
    lwc1	$f4,30300($s1)
    # Line 557
    lwc1	$f0,30296($s1)
    # Line 558
    mul.s	$f4,$f4,$f1
    # Line 557
    mul.s	$f0,$f0,$f1
    # Line 556
    lwc1	$f5,30292($s1)
    # Line 558
    lwc1	$f3,30224($s1)
    # Line 556
    mul.s	$f5,$f5,$f1
    # Line 558
    add.s	$f3,$f3,$f4
    # Line 555
    lwc1	$f4,30288($s1)
    # Line 557
    lwc1	$f2,30220($s1)
    # Line 555
    mul.s	$f4,$f4,$f1
    # Line 557
    add.s	$f2,$f2,$f0
    # Line 556
    lwc1	$f1,30216($s1)
    # Line 555
    lwc1	$f0,30212($s1)
    # Line 556
    add.s	$f1,$f1,$f5
    # Line 555
    add.s	$f0,$f0,$f4
    # Line 558
    swc1	$f3,30224($s1)
    # Line 557
    swc1	$f2,30220($s1)
    # Line 556
    swc1	$f1,30216($s1)
    # Line 555
    swc1	$f0,30212($s1)
.L0dacd734:
    # Line 558
    beqz	$at,.L0dacd7b0
    ld	$v0,256($sp)
    # Line 561
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 565
    lwc1	$f1,30400($s1)
    # Line 564
    lwc1	$f6,30396($s1)
    # Line 565
    mul.s	$f1,$f1,$f3
    # Line 563
    lwc1	$f2,30392($s1)
    # Line 564
    mul.s	$f6,$f6,$f3
    # Line 565
    lwc1	$f0,30244($s1)
    # Line 563
    mul.s	$f2,$f2,$f3
    # Line 564
    lwc1	$f5,30240($s1)
    # Line 565
    add.s	$f0,$f0,$f1
    # Line 562
    lwc1	$f1,30388($s1)
    # Line 564
    add.s	$f5,$f5,$f6
    # Line 562
    mul.s	$f1,$f1,$f3
    # Line 561
    lwc1	$f6,30384($s1)
    # Line 563
    lwc1	$f4,30236($s1)
    # Line 561
    mul.s	$f6,$f6,$f3
    # Line 563
    add.s	$f4,$f4,$f2
    # Line 562
    lwc1	$f3,30232($s1)
    # Line 561
    lwc1	$f2,30228($s1)
    # Line 562
    add.s	$f3,$f3,$f1
    # Line 565
    swc1	$f0,30244($s1)
    # Line 561
    add.s	$f2,$f2,$f6
    # Line 564
    swc1	$f5,30240($s1)
    # Line 563
    swc1	$f4,30236($s1)
    # Line 562
    swc1	$f3,30232($s1)
    # Line 561
    swc1	$f2,30228($s1)
.L0dacd7ac:
    ld	$v0,256($sp)
.L0dacd7b0:
    # Line 569
    beqz	$v0,.L0dacd7d4
    ld	$v0,472($sp)
    # Line 573
    lw	$at,30328($s1)
    mult	$at,$a0
    lw	$v1,30208($s1)
    mflo	$a4
    addu	$v1,$v1,$a4
    sw	$v1,30208($s1)
    ld	$v0,472($sp)
.L0dacd7d4:
    beqz	$v0,.L0dacd830
    ld	$at,488($sp)
    # Line 576
    lw	$v1,30328($s1)
    mult	$a0,$v1
    mflo	$a2
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,30340($s1)
    cvt.d.s	$f2,$f0
    lwc1	$f4,30488($s1)
    c.eq.d	$f2,$f30
    add.s	$f4,$f4,$f1
    bc1t	.L0dacd830
    swc1	$f4,30488($s1)
    # Line 578
    negu	$a4,$a2
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f0
    lwc1	$f2,30504($s1)
    add.s	$f2,$f2,$f3
    swc1	$f2,30504($s1)
.L0dacd830:
    beqz	$at,.L0dacd848
    ld	$a4,480($sp)
    # Line 582
    sll	$v1,$a0,0x2
    lw	$v0,30444($s1)
    addu	$v0,$v0,$v1
    sw	$v0,30444($s1)
.L0dacd848:
    beqz	$a4,.L0dacd85c
    ld	$v0,280($sp)
    # Line 585
    lw	$at,30456($s1)
    addu	$at,$at,$a0
    sw	$at,30456($s1)
.L0dacd85c:
    beqz	$v0,.L0dacd888
    li	$v1,-1
    # Line 588
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,30436($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f4,30248($s1)
    add.s	$f4,$f4,$f1
    swc1	$f4,30248($s1)
    li	$v1,-1
.L0dacd888:
    # Line 591
    beq	$a1,$v1,.L0dacd8c8
    ld	$a4,464($sp)
    li	$at,-1
    beq	$a4,$at,.L0dacd8c8
    ld	$a2,464($sp)
    # Line 595
    subu	$a2,$a2,$a1
    addiu	$a2,$a2,1
    blez	$a2,.L0dacd8c8
    ld	$a4,232($sp)
    ld	$at,400($sp)
    slt	$a4,$a4,$at
    bnez	$a4,.L0dacd8c8
    ld	$v1,384($sp)
    # Line 601
    ld	$v0,232($sp)
    slt	$v0,$v0,$v1
    bnez	$v0,.L0dace77c
.L0dacd8c8:
    ld	$at,440($sp)
.L0dacd8cc:
    # Line 612
    ld	$a4,512($sp)
    # Line 618
    ld	$v0,528($sp)
    lui	$v1,0x7fff
    # Line 612
    addu	$a4,$a4,$at
    bltz	$a4,.L0dace0f0
    sd	$a4,512($sp)
    ld	$v1,408($sp)
    # Line 618
    ld	$a4,288($sp)
    addu	$v0,$v0,$v1
    addu	$a4,$a4,$v1
    sd	$a4,288($sp)
    sd	$v0,528($sp)
.L0dacd8fc:
    # Line 622
    ld	$v1,432($sp)
    # Line 621
    ld	$v0,232($sp)
    ld	$a4,520($sp)
    # Line 622
    ld	$at,504($sp)
    # Line 621
    addiu	$v0,$v0,1
    addiu	$a4,$a4,-1
    # Line 622
    addu	$at,$at,$v1
    sd	$at,504($sp)
    sd	$a4,520($sp)
    bltz	$at,.L0dace120
    sd	$v0,232($sp)
    ld	$v1,416($sp)
    # Line 675
    ld	$v0,536($sp)
    ld	$a4,240($sp)
    ld	$at,424($sp)
    addu	$v0,$v0,$v1
    addu	$a4,$a4,$v1
    ld	$v1,480($sp)
    sd	$a4,240($sp)
    beqz	$at,.L0dace3d4
    sd	$v0,536($sp)
    ld	$at,248($sp)
    beqz	$at,.L0dacd9d8
    ld	$v0,264($sp)
    # Line 678
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 681
    lwc1	$f3,30300($s1)
    mul.s	$f3,$f3,$f4
    # Line 680
    lwc1	$f2,30296($s1)
    # Line 681
    lwc1	$f1,30268($s1)
    # Line 680
    mul.s	$f2,$f2,$f4
    # Line 681
    sub.s	$f1,$f1,$f3
    lwc1	$f0,30224($s1)
    # Line 679
    lwc1	$f3,30292($s1)
    # Line 681
    add.s	$f0,$f0,$f1
    # Line 680
    lwc1	$f1,30264($s1)
    # Line 679
    mul.s	$f3,$f3,$f4
    # Line 680
    sub.s	$f1,$f1,$f2
    lwc1	$f5,30220($s1)
    # Line 678
    lwc1	$f2,30288($s1)
    # Line 680
    add.s	$f5,$f5,$f1
    # Line 679
    lwc1	$f1,30260($s1)
    # Line 678
    mul.s	$f2,$f2,$f4
    # Line 679
    sub.s	$f1,$f1,$f3
    lwc1	$f4,30216($s1)
    add.s	$f4,$f4,$f1
    # Line 678
    lwc1	$f1,30256($s1)
    sub.s	$f1,$f1,$f2
    lwc1	$f3,30212($s1)
    add.s	$f3,$f3,$f1
    # Line 681
    swc1	$f0,30224($s1)
    # Line 680
    swc1	$f5,30220($s1)
    # Line 679
    swc1	$f4,30216($s1)
    # Line 678
    swc1	$f3,30212($s1)
.L0dacd9d8:
    # Line 681
    beqz	$v0,.L0dacda78
    nop
    # Line 684
    mtc1	$s0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 688
    lwc1	$f0,30400($s1)
    mul.s	$f0,$f0,$f6
    lwc1	$f4,30360($s1)
    # Line 687
    lwc1	$f5,30396($s1)
    # Line 688
    sub.s	$f4,$f4,$f0
    lwc1	$f3,30244($s1)
    # Line 687
    mul.s	$f5,$f5,$f6
    # Line 688
    add.s	$f3,$f3,$f4
    # Line 686
    lwc1	$f4,30392($s1)
    # Line 687
    lwc1	$f2,30356($s1)
    # Line 686
    mul.s	$f4,$f4,$f6
    # Line 687
    sub.s	$f2,$f2,$f5
    lwc1	$f1,30240($s1)
    # Line 685
    lwc1	$f5,30388($s1)
    # Line 687
    add.s	$f1,$f1,$f2
    # Line 686
    lwc1	$f2,30352($s1)
    # Line 685
    mul.s	$f5,$f5,$f6
    # Line 686
    sub.s	$f2,$f2,$f4
    lwc1	$f0,30236($s1)
    # Line 684
    lwc1	$f4,30384($s1)
    # Line 686
    add.s	$f0,$f0,$f2
    # Line 685
    lwc1	$f2,30348($s1)
    # Line 684
    mul.s	$f4,$f4,$f6
    # Line 685
    sub.s	$f2,$f2,$f5
    lwc1	$f6,30232($s1)
    add.s	$f6,$f6,$f2
    # Line 684
    lwc1	$f2,30344($s1)
    sub.s	$f2,$f2,$f4
    lwc1	$f5,30228($s1)
    # Line 688
    swc1	$f3,30244($s1)
    # Line 684
    add.s	$f5,$f5,$f2
    # Line 687
    swc1	$f1,30240($s1)
    # Line 686
    swc1	$f0,30236($s1)
    # Line 685
    swc1	$f6,30232($s1)
    # Line 684
    swc1	$f5,30228($s1)
.L0dacda78:
    # Line 692
    beqz	$v1,.L0dacda90
    ld	$v0,256($sp)
    # Line 697
    lw	$at,30456($s1)
    lw	$a4,30464($s1)
    addu	$a4,$a4,$at
    sw	$a4,30456($s1)
.L0dacda90:
    beqz	$v0,.L0dacdabc
    ld	$v1,472($sp)
    # Line 702
    lw	$v0,30328($s1)
    mult	$v0,$s0
    lw	$a4,30320($s1)
    lw	$v1,30208($s1)
    mflo	$at
    subu	$a4,$a4,$at
    addu	$v1,$v1,$a4
    sw	$v1,30208($s1)
    ld	$v1,472($sp)
.L0dacdabc:
    beqz	$v1,.L0dacdb34
    ld	$v1,488($sp)
    # Line 705
    lw	$at,30328($s1)
    mult	$at,$s0
    lw	$a0,30320($s1)
    mflo	$a2
    subu	$a4,$a0,$a2
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,30340($s1)
    cvt.d.s	$f3,$f0
    lwc1	$f1,30488($s1)
    c.eq.d	$f3,$f30
    add.s	$f1,$f1,$f2
    lwc1	$f5,30504($s1)
    # Line 709
    subu	$a4,$a2,$a0
    # Line 705
    bc1f	.L0dacded8
    swc1	$f1,30488($s1)
    # Line 707
    negu	$v0,$a0
    mtc1	$v0,$f4
    nop
    cvt.d.w	$f4,$f4
    ldc1	$f1,_lit8_3ee4f8b588e368f1
    div.d	$f4,$f4,$f1
    cvt.d.s	$f3,$f5
    add.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    swc1	$f3,30504($s1)
.L0dacdb30:
    ld	$v1,488($sp)
.L0dacdb34:
    # Line 709
    beqz	$v1,.L0dacdb50
    # Line 713
    sll	$v0,$s0,0x2
    lw	$at,30444($s1)
    # Line 715
    lw	$a4,30452($s1)
    # Line 713
    subu	$at,$at,$v0
    # Line 715
    addu	$a4,$a4,$at
    sw	$a4,30444($s1)
.L0dacdb50:
    ld	$v1,280($sp)
    beqz	$v1,.L0dacdb88
    ld	$at,448($sp)
    # Line 719
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,30436($s1)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,30424($s1)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,30248($s1)
    add.s	$f1,$f1,$f2
    swc1	$f1,30248($s1)
.L0dacdb84:
    ld	$at,448($sp)
.L0dacdb88:
    ld	$a4,232($sp)
    beq	$a4,$at,.L0dacea48
.L0dacdb90:
    ld	$v1,232($sp)
    # Line 487
    ld	$s0,536($sp)
    # Line 484
    li	$v0,1
    # Line 487
    mtc1	$v1,$f24
    sd	$v0,328($sp)
    ld	$a4,520($sp)
    cvt.s.w	$f24,$f24
    andi	$v1,$v1,0x1f
    andi	$a4,$a4,0x1f
    sd	$a4,304($sp)
    sd	$v1,496($sp)
    b	.L0dacdbf8
    add.s	$f24,$f24,$f22
.L0dacdbc4:
    li	$v0,31
    # Line 494
    and	$v1,$s0,$v0
    sll	$s4,$a2,0x2
    addu	$s4,$s4,$s1
    lw	$s4,30012($s4)
    subu	$v0,$v0,$v1
    sllv	$at,$at,$v0
    and	$s4,$s4,$at
    sltiu	$s4,$s4,1
.L0dacdbe8:
    beqz	$s4,.L0dacdd08
    ld	$v1,248($sp)
    # Line 487
    addiu	$s0,$s0,-1
.L0dacdbf4:
    # Line 496
    move	$s4,$zero
.L0dacdbf8:
    # Line 488
    mtc1	$s0,$f25
    nop
    cvt.s.w	$f25,$f25
    # Line 491
    addiu	$a2,$sp,80
    addiu	$a1,$sp,76
    move	$a0,$s7
    # Line 488
    add.s	$f25,$f25,$f22
    # Line 491
    move	$a3,$s6
    move	$t9,$s3
    # Line 489
    swc1	$f24,80($sp)
    # Line 488
    swc1	$f25,76($sp)
    # Line 491
    bal __glEndPoints
    # Line 490
    sb	$zero,260($s2)
    # Line 492
    c.eq.s	$f0,$f26
    ld	$v0,312($sp)
    ld	$a2,304($sp)
    bc1t	.L0dacdc5c
    # Line 491
    mov.s	$f20,$f0
    ld	$at,296($sp)
    # Line 492
    beqz	$at,.L0dacdbe8
    nop
    bnez	$v0,.L0dacdbc4
    li	$at,1
    b	.L0dacdbc4
    ld	$a2,496($sp)
.L0dacdc5c:
    ld	$s0,240($sp)
.L0dacdc60:
    # Line 497
    mtc1	$s0,$f27
    nop
    cvt.s.w	$f27,$f27
    # Line 500
    addiu	$a2,$sp,80
    addiu	$a1,$sp,76
    move	$a0,$s7
    # Line 497
    add.s	$f27,$f27,$f22
    # Line 500
    move	$a3,$s6
    move	$t9,$s3
    # Line 498
    swc1	$f24,80($sp)
    # Line 497
    swc1	$f27,76($sp)
    # Line 500
    bal __glEndPoints
    # Line 499
    sb	$zero,260($s2)
    # Line 500
    c.eq.s	$f0,$f26
    ld	$a4,312($sp)
    li	$v0,1
    bc1t	.L0dacd680
    mov.s	$f20,$f0
    # Line 504
    c.eq.s	$f0,$f28
    nop
    bc1t	.L0dacded0
    ld	$v1,296($sp)
    # Line 508
    beqzl	$v1,.L0dacdcf4
    ld	$v0,544($sp)
    beqz	$a4,.L0dace0e4
    li	$v1,31
    ld	$a0,304($sp)
.L0dacdccc:
    # Line 511
    and	$a4,$s0,$v1
    sll	$at,$a0,0x2
    addu	$at,$at,$s1
    lw	$at,30012($at)
    subu	$v1,$v1,$a4
    sllv	$v0,$v0,$v1
    and	$at,$at,$v0
    sltiu	$at,$at,1
    sd	$at,544($sp)
    ld	$v0,544($sp)
.L0dacdcf4:
    ld	$at,248($sp)
    beqz	$v0,.L0dacdef4
    # Line 496
    addiu	$s0,$s0,1
.L0dacdd00:
    # Line 515
    b	.L0dacdc60
    sd	$zero,544($sp)
.L0dacdd08:
    # Line 494
    ld	$v0,272($sp)
    beqz	$v1,.L0dace0bc
    lw	$a2,8($sp)
    move	$a0,$s2
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    bal __glEndPoints
    move	$t9,$s5
    ld	$a4,272($sp)
    beqz	$a4,.L0dacdd7c
    swc1	$f0,28($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,16
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,32
    swc1	$f0,32($sp)
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,48
    swc1	$f0,36($sp)
    bal __glEndPoints
    move	$t9,$s5
    swc1	$f0,40($sp)
.L0dacdd7c:
    ld	$at,264($sp)
    beqz	$at,.L0dacde30
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,128
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,200($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,144
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,208($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,80
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,216($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,96
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,224($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,112
    bal __glEndPoints
    move	$t9,$s5
    ldc1	$f19,200($sp)
    lwc1	$f18,3284($s1)
    div.s	$f18,$f18,$f19
    ldc1	$f17,208($sp)
    mul.s	$f17,$f17,$f18
    ld	$a1,320($sp)
    ldc1	$f15,224($sp)
    mul.s	$f16,$f0,$f18
    ldc1	$f14,216($sp)
    lw	$t9,12532($s1)
    mul.s	$f15,$f15,$f18
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0dacde30:
    ld	$v0,280($sp)
    beqz	$v0,.L0dacde60
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,160
    bal __glEndPoints
    move	$t9,$s5
    # lw $t9, -28632($gp) # &__glFogFragmentSlow
    mov.s	$f14,$f0
    move	$a0,$s1
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0dacde60:
    ld	$v1,272($sp)
    beqz	$v1,.L0dace984
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f20
    swc1	$f1,40($sp)
.L0dacde74:
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    trunc.w.s	$f3,$f14
    trunc.w.s	$f2,$f13
    mfc1	$v0,$f3
    ld	$a4,256($sp)
    mfc1	$at,$f2
    sw	$v0,20($sp)
    beqz	$a4,.L0dacdeb8
    sw	$at,16($sp)
    addiu	$a0,$s2,64
    bal __glEndPoints
    move	$t9,$s5
    trunc.l.s	$f4,$f0
    dmfc1	$v1,$f4
    nop
    sw	$v1,24($sp)
.L0dacdeb8:
    lw	$t9,12616($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,11768($s1)
    b	.L0dacdbf4
    # Line 487
    addiu	$s0,$s0,-1
.L0dacded0:
    # Line 508
    b	.L0dacd688
    # Line 507
    move	$a1,$s0
.L0dacded8:
    # Line 709
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f5
    b	.L0dacdb30
    swc1	$f1,30504($s1)
.L0dacdef4:
    # Line 511
    ld	$v1,272($sp)
    beqz	$at,.L0dace560
    lw	$a2,8($sp)
    move	$a0,$s2
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    bal __glEndPoints
    move	$t9,$s5
    ld	$v0,272($sp)
    beqz	$v0,.L0dacdf68
    swc1	$f0,28($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,16
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,32
    swc1	$f0,32($sp)
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,48
    swc1	$f0,36($sp)
    bal __glEndPoints
    move	$t9,$s5
    swc1	$f0,40($sp)
.L0dacdf68:
    ld	$v1,264($sp)
    beqz	$v1,.L0dace01c
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,128
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,168($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,144
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,176($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,80
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,184($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,96
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,192($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,112
    bal __glEndPoints
    move	$t9,$s5
    ldc1	$f19,168($sp)
    lwc1	$f18,3284($s1)
    div.s	$f18,$f18,$f19
    ldc1	$f17,176($sp)
    mul.s	$f17,$f17,$f18
    ld	$a1,320($sp)
    ldc1	$f15,192($sp)
    mul.s	$f16,$f0,$f18
    ldc1	$f14,184($sp)
    lw	$t9,12532($s1)
    mul.s	$f15,$f15,$f18
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0dace01c:
    ld	$a4,280($sp)
    beqz	$a4,.L0dace04c
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,160
    bal __glEndPoints
    move	$t9,$s5
    # lw $t9, -28632($gp) # &__glFogFragmentSlow
    mov.s	$f14,$f0
    move	$a0,$s1
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0dace04c:
    ld	$at,272($sp)
    beqz	$at,.L0dacea08
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f20
    swc1	$f1,40($sp)
.L0dace060:
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    trunc.w.s	$f3,$f14
    trunc.w.s	$f2,$f13
    mfc1	$a4,$f3
    ld	$v0,256($sp)
    mfc1	$v1,$f2
    sw	$a4,20($sp)
    beqz	$v0,.L0dace0a4
    sw	$v1,16($sp)
    addiu	$a0,$s2,64
    bal __glEndPoints
    move	$t9,$s5
    trunc.l.s	$f4,$f0
    dmfc1	$at,$f4
    nop
    sw	$at,24($sp)
.L0dace0a4:
    lw	$t9,12616($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,11768($s1)
    b	.L0dacdd00
    nop
.L0dace0bc:
    # Line 494
    lwc1	$f1,0($a2)
    beqz	$v0,.L0dacdd7c
    swc1	$f1,28($sp)
    lwc1	$f4,4($a2)
    swc1	$f4,32($sp)
    lwc1	$f3,8($a2)
    swc1	$f3,36($sp)
    lwc1	$f2,12($a2)
    b	.L0dacdd7c
    swc1	$f2,40($sp)
.L0dace0e4:
    ld	$a0,496($sp)
    b	.L0dacdccc
    nop
.L0dace0f0:
    ori	$v1,$v1,0xffff
    # Line 615
    ld	$a4,376($sp)
    ld	$at,288($sp)
    # Line 616
    ld	$v0,512($sp)
    # Line 615
    addu	$at,$at,$a4
    # Line 616
    and	$v0,$v0,$v1
    # Line 615
    ld	$v1,528($sp)
    sd	$v0,512($sp)
    sd	$at,288($sp)
    addu	$v1,$v1,$a4
    # Line 616
    b	.L0dacd8fc
    sd	$v1,528($sp)
.L0dace120:
    # Line 625
    ld	$v0,368($sp)
    ld	$v1,240($sp)
    addu	$v1,$v1,$v0
    # Line 626
    ld	$a4,504($sp)
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    and	$a4,$a4,$at
    # Line 625
    ld	$at,536($sp)
    sd	$a4,504($sp)
    # Line 626
    ld	$a4,424($sp)
    sd	$v1,240($sp)
    # Line 625
    addu	$at,$at,$v0
    # Line 626
    beqz	$a4,.L0dace9d0
    sd	$at,536($sp)
    ld	$v0,248($sp)
    ld	$v1,264($sp)
    beqz	$v0,.L0dace1e4
    nop
    # Line 630
    mtc1	$s0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 633
    lwc1	$f5,30300($s1)
    mul.s	$f5,$f5,$f0
    # Line 632
    lwc1	$f4,30296($s1)
    # Line 633
    lwc1	$f3,30284($s1)
    # Line 632
    mul.s	$f4,$f4,$f0
    # Line 633
    sub.s	$f3,$f3,$f5
    lwc1	$f2,30224($s1)
    # Line 631
    lwc1	$f5,30292($s1)
    # Line 633
    add.s	$f2,$f2,$f3
    # Line 632
    lwc1	$f3,30280($s1)
    # Line 631
    mul.s	$f5,$f5,$f0
    # Line 632
    sub.s	$f3,$f3,$f4
    lwc1	$f1,30220($s1)
    # Line 630
    lwc1	$f4,30288($s1)
    # Line 632
    add.s	$f1,$f1,$f3
    # Line 631
    lwc1	$f3,30276($s1)
    # Line 630
    mul.s	$f4,$f4,$f0
    # Line 631
    sub.s	$f3,$f3,$f5
    lwc1	$f0,30216($s1)
    add.s	$f0,$f0,$f3
    # Line 630
    lwc1	$f3,30272($s1)
    sub.s	$f3,$f3,$f4
    lwc1	$f5,30212($s1)
    add.s	$f5,$f5,$f3
    # Line 633
    swc1	$f2,30224($s1)
    # Line 632
    swc1	$f1,30220($s1)
    # Line 631
    swc1	$f0,30216($s1)
    # Line 630
    swc1	$f5,30212($s1)
.L0dace1e4:
    # Line 633
    beqz	$v1,.L0dace288
    ld	$a4,480($sp)
    # Line 636
    mtc1	$s0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 640
    lwc1	$f3,30400($s1)
    mul.s	$f3,$f3,$f2
    lwc1	$f0,30380($s1)
    # Line 639
    lwc1	$f1,30396($s1)
    # Line 640
    sub.s	$f0,$f0,$f3
    lwc1	$f6,30244($s1)
    # Line 639
    mul.s	$f1,$f1,$f2
    # Line 640
    add.s	$f6,$f6,$f0
    # Line 638
    lwc1	$f0,30392($s1)
    # Line 639
    lwc1	$f5,30376($s1)
    # Line 638
    mul.s	$f0,$f0,$f2
    # Line 639
    sub.s	$f5,$f5,$f1
    lwc1	$f4,30240($s1)
    # Line 637
    lwc1	$f1,30388($s1)
    # Line 639
    add.s	$f4,$f4,$f5
    # Line 638
    lwc1	$f5,30372($s1)
    # Line 637
    mul.s	$f1,$f1,$f2
    # Line 638
    sub.s	$f5,$f5,$f0
    lwc1	$f3,30236($s1)
    # Line 636
    lwc1	$f0,30384($s1)
    # Line 638
    add.s	$f3,$f3,$f5
    # Line 637
    lwc1	$f5,30368($s1)
    # Line 636
    mul.s	$f0,$f0,$f2
    # Line 637
    sub.s	$f5,$f5,$f1
    lwc1	$f2,30232($s1)
    add.s	$f2,$f2,$f5
    # Line 636
    lwc1	$f5,30364($s1)
    sub.s	$f5,$f5,$f0
    lwc1	$f1,30228($s1)
    # Line 640
    swc1	$f6,30244($s1)
    # Line 636
    add.s	$f1,$f1,$f5
    # Line 639
    swc1	$f4,30240($s1)
    # Line 638
    swc1	$f3,30236($s1)
    # Line 637
    swc1	$f2,30232($s1)
    # Line 636
    swc1	$f1,30228($s1)
.L0dace284:
    ld	$a4,480($sp)
.L0dace288:
    # Line 644
    beqz	$a4,.L0dace2a0
    ld	$v1,256($sp)
    # Line 649
    lw	$v0,30456($s1)
    lw	$at,30460($s1)
    addu	$at,$at,$v0
    sw	$at,30456($s1)
.L0dace2a0:
    beqz	$v1,.L0dace2cc
    ld	$a4,472($sp)
    # Line 653
    lw	$v1,30328($s1)
    mult	$v1,$s0
    lw	$at,30324($s1)
    lw	$a4,30208($s1)
    mflo	$v0
    subu	$at,$at,$v0
    addu	$a4,$a4,$at
    sw	$a4,30208($s1)
    ld	$a4,472($sp)
.L0dace2cc:
    beqz	$a4,.L0dace344
    ld	$a4,488($sp)
    # Line 656
    lw	$v0,30328($s1)
    mult	$v0,$s0
    lw	$a0,30324($s1)
    mflo	$a2
    subu	$at,$a0,$a2
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f0,30340($s1)
    cvt.d.s	$f5,$f0
    lwc1	$f3,30488($s1)
    c.eq.d	$f5,$f30
    add.s	$f3,$f3,$f4
    lwc1	$f5,30504($s1)
    # Line 661
    subu	$at,$a2,$a0
    # Line 656
    bc1f	.L0dace754
    swc1	$f3,30488($s1)
    # Line 658
    negu	$v1,$a0
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    ldc1	$f3,_lit8_3ee4f8b588e368f1
    div.d	$f2,$f2,$f3
    cvt.d.s	$f1,$f5
    add.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    swc1	$f1,30504($s1)
.L0dace340:
    ld	$a4,488($sp)
.L0dace344:
    # Line 661
    beqz	$a4,.L0dace360
    # Line 665
    sll	$v1,$s0,0x2
    lw	$v0,30444($s1)
    # Line 667
    lw	$at,30448($s1)
    # Line 665
    subu	$v0,$v0,$v1
    # Line 667
    addu	$at,$at,$v0
    sw	$at,30444($s1)
.L0dace360:
    ld	$a4,280($sp)
    beqz	$a4,.L0dacdb88
    ld	$at,448($sp)
    # Line 671
    mtc1	$s0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,30436($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f4,30428($s1)
    sub.s	$f4,$f4,$f1
    lwc1	$f3,30248($s1)
    add.s	$f3,$f3,$f4
    b	.L0dacdb84
    swc1	$f3,30248($s1)
.L0dace398:
    # Line 591
    move	$s0,$zero
    b	.L0dacd888
    li	$v1,-1
.L0dace3a4:
    ld	$at,248($sp)
    # Line 565
    beqz	$at,.L0dacd7b0
    ld	$v0,256($sp)
    # Line 569
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f4,30304($s1)
    mul.s	$f4,$f4,$f1
    lwc1	$f3,30212($s1)
    add.s	$f3,$f3,$f4
    b	.L0dacd7ac
    swc1	$f3,30212($s1)
.L0dace3d4:
    ld	$v0,248($sp)
    # Line 688
    beqz	$v0,.L0dacda78
    nop
    # Line 692
    mtc1	$s0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f4,30288($s1)
    mul.s	$f4,$f4,$f1
    lwc1	$f3,30256($s1)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,30212($s1)
    add.s	$f2,$f2,$f3
    b	.L0dacda78
    swc1	$f2,30212($s1)
.L0dace40c:
    b	.L0dace44c
    sd	$a1,632($sp)
.L0dace414:
    ld	$a2,304($sp)
.L0dace418:
    # Line 529
    and	$v0,$s0,$at
    sll	$v1,$a2,0x2
    addu	$v1,$v1,$s1
    lw	$v1,30012($v1)
    subu	$at,$at,$v0
    sllv	$a4,$a4,$at
    and	$v1,$v1,$a4
    sltiu	$v1,$v1,1
    sd	$v1,456($sp)
    ld	$a4,456($sp)
.L0dace440:
    beqz	$a4,.L0dace588
    # Line 522
    addiu	$s0,$s0,1
    sd	$zero,456($sp)
.L0dace44c:
    # Line 523
    mtc1	$s0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 526
    addiu	$a2,$sp,80
    addiu	$a1,$sp,76
    move	$a0,$s7
    # Line 523
    add.s	$f2,$f2,$f22
    # Line 526
    move	$a3,$s6
    move	$t9,$s3
    # Line 524
    swc1	$f24,80($sp)
    # Line 523
    swc1	$f2,76($sp)
    # Line 526
    bal __glEndPoints
    # Line 525
    sb	$zero,260($s2)
    # Line 527
    c.eq.s	$f0,$f26
    ld	$v0,312($sp)
    li	$a4,1
    bc1t	.L0dace4b4
    # Line 526
    mov.s	$f20,$f0
    ld	$at,296($sp)
    # Line 527
    beqzl	$at,.L0dace440
    ld	$a4,456($sp)
    bnez	$v0,.L0dace414
    li	$at,31
    ld	$a2,496($sp)
    b	.L0dace418
    nop
.L0dace4b4:
    ld	$s0,288($sp)
.L0dace4b8:
    # Line 532
    mtc1	$s0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 535
    addiu	$a2,$sp,80
    addiu	$a1,$sp,76
    move	$a0,$s7
    # Line 532
    add.s	$f3,$f3,$f22
    # Line 535
    move	$a3,$s6
    move	$t9,$s3
    # Line 533
    swc1	$f24,80($sp)
    # Line 532
    swc1	$f3,76($sp)
    # Line 535
    bal __glEndPoints
    # Line 534
    sb	$zero,260($s2)
    # Line 535
    c.eq.s	$f0,$f26
    mov.s	$f20,$f0
    ld	$a4,312($sp)
    bc1t	.L0dace770
    ld	$a1,632($sp)
    # Line 538
    c.eq.s	$f0,$f28
    nop
    bc1t	.L0dace7a0
    ld	$v1,296($sp)
    # Line 542
    beqz	$v1,.L0dace548
    li	$v0,1
    beqz	$a4,.L0dace9c4
    li	$v1,31
    ld	$a0,304($sp)
    # Line 545
    and	$a4,$s0,$v1
.L0dace528:
    sll	$at,$a0,0x2
    addu	$at,$at,$s1
    lw	$at,30012($at)
    subu	$v1,$v1,$a4
    sllv	$v0,$v0,$v1
    and	$at,$at,$v0
    sltiu	$at,$at,1
    sd	$at,392($sp)
.L0dace548:
    ld	$v0,392($sp)
    ld	$at,248($sp)
    beqz	$v0,.L0dace7ac
    # Line 531
    addiu	$s0,$s0,-1
.L0dace558:
    # Line 547
    b	.L0dace4b8
    sd	$zero,392($sp)
.L0dace560:
    # Line 511
    lwc1	$f4,0($a2)
    beqz	$v1,.L0dacdf68
    swc1	$f4,28($sp)
    lwc1	$f3,4($a2)
    swc1	$f3,32($sp)
    lwc1	$f2,8($a2)
    swc1	$f2,36($sp)
    lwc1	$f1,12($a2)
    b	.L0dacdf68
    swc1	$f1,40($sp)
.L0dace588:
    ld	$a4,248($sp)
    # Line 529
    ld	$v0,272($sp)
    beqz	$a4,.L0dace99c
    lw	$a2,8($sp)
    move	$a0,$s2
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    bal __glEndPoints
    move	$t9,$s5
    ld	$at,272($sp)
    beqz	$at,.L0dace600
    swc1	$f0,28($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,16
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,32
    swc1	$f0,32($sp)
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,48
    swc1	$f0,36($sp)
    bal __glEndPoints
    move	$t9,$s5
    swc1	$f0,40($sp)
.L0dace600:
    ld	$v0,264($sp)
    beqz	$v0,.L0dace6b4
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,128
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,136($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,144
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,144($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,80
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,152($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,96
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,160($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,112
    bal __glEndPoints
    move	$t9,$s5
    ldc1	$f19,136($sp)
    lwc1	$f18,3284($s1)
    div.s	$f18,$f18,$f19
    ldc1	$f17,144($sp)
    mul.s	$f17,$f17,$f18
    ld	$a1,320($sp)
    ldc1	$f15,160($sp)
    mul.s	$f16,$f0,$f18
    ldc1	$f14,152($sp)
    lw	$t9,12532($s1)
    mul.s	$f15,$f15,$f18
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0dace6b4:
    ld	$v1,280($sp)
    beqz	$v1,.L0dace6e4
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,160
    bal __glEndPoints
    move	$t9,$s5
    # lw $t9, -28632($gp) # &__glFogFragmentSlow
    mov.s	$f14,$f0
    move	$a0,$s1
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0dace6e4:
    ld	$a4,272($sp)
    beqz	$a4,.L0daceab4
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f20
    swc1	$f1,40($sp)
.L0dace6f8:
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    trunc.w.s	$f3,$f14
    trunc.w.s	$f2,$f13
    mfc1	$v1,$f3
    ld	$at,256($sp)
    mfc1	$v0,$f2
    sw	$v1,20($sp)
    beqz	$at,.L0dace73c
    sw	$v0,16($sp)
    addiu	$a0,$s2,64
    bal __glEndPoints
    move	$t9,$s5
    trunc.l.s	$f4,$f0
    dmfc1	$a4,$f4
    nop
    sw	$a4,24($sp)
.L0dace73c:
    lw	$t9,12616($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,11768($s1)
    b	.L0dace44c
    sd	$zero,456($sp)
.L0dace754:
    # Line 661
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f5
    b	.L0dace340
    swc1	$f1,30504($s1)
.L0dace770:
    # Line 537
    li	$v0,-1
    # Line 538
    b	.L0dacd6ac
    sd	$v0,464($sp)
.L0dace77c:
    # Line 606
    move	$a0,$s1
    # Line 605
    sw	$a2,30252($s1)
    # Line 606
    lw	$t9,12240($s1)
    # Line 604
    ld	$v1,232($sp)
    # Line 603
    sw	$a1,30200($s1)
    # Line 606
    jalr	$t9
    # Line 604
    sw	$v1,30204($s1)
    b	.L0dacd8cc
    ld	$at,440($sp)
.L0dace7a0:
    # Line 541
    move	$a4,$s0
    # Line 542
    b	.L0dacd6ac
    sd	$s0,464($sp)
.L0dace7ac:
    # Line 545
    ld	$a4,272($sp)
    beqz	$at,.L0dacea20
    lw	$a2,8($sp)
    move	$a0,$s2
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    bal __glEndPoints
    move	$t9,$s5
    ld	$v0,272($sp)
    swc1	$f0,28($sp)
    beqz	$v0,.L0dace828
    ld	$a1,632($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,16
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,32
    swc1	$f0,32($sp)
    bal __glEndPoints
    move	$t9,$s5
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,48
    swc1	$f0,36($sp)
    bal __glEndPoints
    move	$t9,$s5
    swc1	$f0,40($sp)
    ld	$a1,632($sp)
.L0dace828:
    ld	$v1,264($sp)
    beqz	$v1,.L0dace8e0
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,128
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,112($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,144
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,120($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,80
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,128($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,96
    bal __glEndPoints
    move	$t9,$s5
    sdc1	$f0,104($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,112
    bal __glEndPoints
    move	$t9,$s5
    ldc1	$f19,112($sp)
    lwc1	$f18,3284($s1)
    div.s	$f18,$f18,$f19
    ldc1	$f17,120($sp)
    mul.s	$f17,$f17,$f18
    ld	$a1,320($sp)
    ldc1	$f15,104($sp)
    mul.s	$f16,$f0,$f18
    ldc1	$f14,128($sp)
    lw	$t9,12532($s1)
    mul.s	$f15,$f15,$f18
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
    ld	$a1,632($sp)
.L0dace8e0:
    ld	$a4,280($sp)
    beqz	$a4,.L0dace914
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    addiu	$a0,$s2,160
    bal __glEndPoints
    move	$t9,$s5
    # lw $t9, -28632($gp) # &__glFogFragmentSlow
    mov.s	$f14,$f0
    move	$a0,$s1
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
    ld	$a1,632($sp)
.L0dace914:
    ld	$at,272($sp)
    beqz	$at,.L0daceacc
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f20
    swc1	$f1,40($sp)
.L0dace928:
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    trunc.w.s	$f3,$f14
    trunc.w.s	$f2,$f13
    mfc1	$a4,$f3
    ld	$v0,256($sp)
    mfc1	$v1,$f2
    sw	$a4,20($sp)
    beqz	$v0,.L0dace96c
    sw	$v1,16($sp)
    addiu	$a0,$s2,64
    bal __glEndPoints
    move	$t9,$s5
    trunc.l.s	$f4,$f0
    dmfc1	$at,$f4
    nop
    sw	$at,24($sp)
.L0dace96c:
    lw	$t9,12616($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,11768($s1)
    b	.L0dace558
    nop
.L0dace984:
    # Line 494
    # lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0dacde74
    swc1	$f0,28($sp)
.L0dace99c:
    # Line 529
    lwc1	$f1,0($a2)
    beqz	$v0,.L0dace600
    swc1	$f1,28($sp)
    lwc1	$f4,4($a2)
    swc1	$f4,32($sp)
    lwc1	$f3,8($a2)
    swc1	$f3,36($sp)
    lwc1	$f2,12($a2)
    b	.L0dace600
    swc1	$f2,40($sp)
.L0dace9c4:
    ld	$a0,496($sp)
    b	.L0dace528
    # Line 545
    and	$a4,$s0,$v1
.L0dace9d0:
    ld	$v1,248($sp)
    # Line 640
    beqz	$v1,.L0dace288
    ld	$a4,480($sp)
    # Line 644
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,30288($s1)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,30272($s1)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,30212($s1)
    add.s	$f1,$f1,$f2
    b	.L0dace284
    swc1	$f1,30212($s1)
.L0dacea08:
    # Line 511
    # lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0dace060
    swc1	$f0,28($sp)
.L0dacea20:
    # Line 545
    lwc1	$f1,0($a2)
    beqz	$a4,.L0dace828
    swc1	$f1,28($sp)
    lwc1	$f4,4($a2)
    swc1	$f4,32($sp)
    lwc1	$f3,8($a2)
    swc1	$f3,36($sp)
    lwc1	$f2,12($a2)
    b	.L0dace828
    swc1	$f2,40($sp)
.L0dacea48:
    ldc1	$f30,552($sp)
    ldc1	$f24,560($sp)
    ldc1	$f26,568($sp)
    ldc1	$f20,576($sp)
    ld	$s7,584($sp)
    ld	$s6,592($sp)
    ld	$s0,600($sp)
    ld	$ra,608($sp)
    ld	$s3,616($sp)
    ld	$s5,624($sp)
.L0dacea70:
    # Line 727
    ld	$s2,352($sp)
    ld	$s4,336($sp)
    ldc1	$f22,96($sp)
    ldc1	$f28,88($sp)
    ld	$at,344($sp)
    # Line 723
    ld	$v0,536($sp)
    ld	$a4,512($sp)
    # Line 725
    ld	$a0,528($sp)
    # Line 724
    ld	$v1,504($sp)
    # Line 726
    sw	$a4,30176($s1)
    # Line 725
    sw	$a0,30172($s1)
    # Line 724
    sw	$v1,30156($s1)
    # Line 723
    sw	$v0,30152($s1)
    # Line 727
    ld	$s1,360($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0daceab4:
    # Line 529
    # lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0dace6f8
    swc1	$f0,28($sp)
.L0daceacc:
    # Line 545
    # lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0dace928
    swc1	$f0,28($sp)
.L0daceae4:
    # Line 444
    lw	$at,28080($s1)
    lw	$at,4($at)
    b	.L0dacd4e4
    sw	$at,8($sp)
.end FillAASubTriangle

# Function: SetInitialParameters
# Declared: Line 735 (Source lines: 738-882)
# Address: 0x0daceaf4 - 0x0dacf1a0 (Size: 1708 bytes, Frame: 240)
.ent SetInitialParameters
SetInitialParameters:
    # Line 738
    mov.s	$f4,$f15
    # Line 742
    lw	$at,30144($a0)
    # Line 738
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 742
    mtc1	$at,$f0
    # Line 738
    move	$s0,$a0
    # Line 740
    lw	$v0,30140($a0)
    # Line 742
    cvt.s.w	$f0,$f0
    sdc1	$f24,8($sp)
    # Line 740
    mtc1	$v0,$f24
    sdc1	$f20,16($sp)
    # Line 738
    mov.s	$f20,$f16
    # Line 740
    cvt.s.w	$f24,$f24
    sdc1	$f22,0($sp)
    # Line 742
    lw	$a7,30440($a0)
    # Line 738
    mov.s	$f22,$f17
    sd	$s8,24($sp)
    # Line 742
    andi	$s8,$a7,0x1000
    c.lt.s	$f24,$f0
    andi	$a6,$a7,0x4000
    andi	$a5,$a7,0x2
    bc1f	.L0daceda4
    andi	$a4,$a7,0x1
    beqz	$a4,.L0dacf120
    nop
    beqz	$a5,.L0dacec34
    # Line 761
    andi	$v1,$a7,0x8
    # Line 747
    lwc1	$f6,30288($s0)
    mul.s	$f3,$f6,$f20
    lwc1	$f2,30304($s0)
    # Line 748
    mul.s	$f0,$f6,$f24
    # Line 747
    lwc1	$f1,0($a2)
    mul.s	$f5,$f2,$f22
    add.s	$f1,$f1,$f3
    # Line 748
    add.s	$f0,$f0,$f2
    # Line 751
    lwc1	$f3,30292($s0)
    # Line 747
    add.s	$f1,$f1,$f5
    # Line 752
    mul.s	$f5,$f3,$f24
    # Line 749
    add.s	$f6,$f6,$f0
    # Line 751
    lwc1	$f7,30308($s0)
    mul.s	$f2,$f3,$f20
    # Line 749
    swc1	$f6,30272($s0)
    # Line 755
    lwc1	$f6,30296($s0)
    # Line 748
    swc1	$f0,30256($s0)
    # Line 747
    swc1	$f1,30212($s0)
    # Line 752
    add.s	$f5,$f5,$f7
    # Line 751
    lwc1	$f0,4($a2)
    mul.s	$f1,$f7,$f22
    add.s	$f0,$f0,$f2
    # Line 756
    mul.s	$f7,$f6,$f24
    # Line 753
    add.s	$f3,$f3,$f5
    # Line 755
    mul.s	$f2,$f6,$f20
    # Line 751
    add.s	$f0,$f0,$f1
    # Line 752
    swc1	$f5,30260($s0)
    # Line 755
    lwc1	$f1,30312($s0)
    # Line 753
    swc1	$f3,30276($s0)
    # Line 751
    swc1	$f0,30216($s0)
    # Line 756
    add.s	$f7,$f7,$f1
    # Line 755
    lwc1	$f0,8($a2)
    mul.s	$f3,$f1,$f22
    add.s	$f0,$f0,$f2
    # Line 759
    lwc1	$f2,30300($s0)
    # Line 757
    add.s	$f6,$f6,$f7
    # Line 756
    swc1	$f7,30264($s0)
    # Line 760
    mul.s	$f1,$f2,$f24
    # Line 755
    add.s	$f0,$f0,$f3
    # Line 757
    swc1	$f6,30280($s0)
    # Line 759
    mul.s	$f5,$f2,$f20
    lwc1	$f3,30316($s0)
    # Line 755
    swc1	$f0,30220($s0)
    # Line 759
    lwc1	$f0,12($a2)
    # Line 760
    add.s	$f1,$f1,$f3
    # Line 759
    mul.s	$f3,$f3,$f22
    add.s	$f0,$f0,$f5
    # Line 761
    add.s	$f2,$f2,$f1
    # Line 759
    add.s	$f0,$f0,$f3
    # Line 760
    swc1	$f1,30268($s0)
    # Line 761
    swc1	$f2,30284($s0)
    # Line 759
    swc1	$f0,30224($s0)
    # Line 761
    andi	$v1,$a7,0x8
.L0dacec34:
    beqz	$v1,.L0daced54
    nop
    # Line 765
    lwc1	$f7,30384($s0)
    # Line 764
    lwc1	$f6,140($a1)
    # Line 765
    lwc1	$f1,48($a1)
    mul.s	$f5,$f7,$f20
    mul.s	$f1,$f1,$f6
    lwc1	$f3,30404($s0)
    # Line 767
    mul.s	$f0,$f7,$f24
    # Line 765
    mul.s	$f2,$f3,$f22
    add.s	$f1,$f1,$f5
    # Line 767
    add.s	$f0,$f0,$f3
    # Line 765
    add.s	$f1,$f1,$f2
    # Line 770
    lwc1	$f2,30388($s0)
    # Line 768
    add.s	$f7,$f7,$f0
    # Line 772
    mul.s	$f3,$f2,$f24
    # Line 767
    swc1	$f0,30344($s0)
    # Line 768
    swc1	$f7,30364($s0)
    # Line 765
    swc1	$f1,30228($s0)
    # Line 770
    mul.s	$f1,$f2,$f20
    lwc1	$f5,52($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f0,30408($s0)
    # Line 772
    add.s	$f3,$f3,$f0
    # Line 770
    mul.s	$f7,$f0,$f22
    add.s	$f5,$f5,$f1
    # Line 773
    add.s	$f2,$f2,$f3
    # Line 770
    add.s	$f5,$f5,$f7
    # Line 775
    lwc1	$f7,30392($s0)
    # Line 772
    swc1	$f3,30348($s0)
    # Line 777
    mul.s	$f0,$f7,$f24
    # Line 773
    swc1	$f2,30368($s0)
    # Line 770
    swc1	$f5,30232($s0)
    # Line 775
    mul.s	$f5,$f7,$f20
    lwc1	$f1,56($a1)
    mul.s	$f1,$f1,$f6
    lwc1	$f3,30412($s0)
    # Line 777
    add.s	$f0,$f0,$f3
    # Line 775
    mul.s	$f2,$f3,$f22
    add.s	$f1,$f1,$f5
    # Line 778
    add.s	$f7,$f7,$f0
    # Line 775
    add.s	$f1,$f1,$f2
    # Line 780
    lwc1	$f2,30396($s0)
    # Line 778
    swc1	$f7,30372($s0)
    # Line 780
    mul.s	$f7,$f2,$f20
    # Line 777
    swc1	$f0,30352($s0)
    # Line 775
    swc1	$f1,30236($s0)
    # Line 782
    mul.s	$f3,$f2,$f24
    # Line 780
    lwc1	$f5,60($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f6,30416($s0)
    # Line 782
    add.s	$f3,$f3,$f6
    # Line 780
    mul.s	$f0,$f6,$f22
    add.s	$f5,$f5,$f7
    # Line 785
    lwc1	$f7,30400($s0)
    # Line 783
    add.s	$f2,$f2,$f3
    # Line 782
    swc1	$f3,30356($s0)
    # Line 786
    mul.s	$f6,$f7,$f24
    # Line 780
    add.s	$f5,$f5,$f0
    # Line 783
    swc1	$f2,30376($s0)
    # Line 785
    mul.s	$f1,$f7,$f20
    lwc1	$f0,30420($s0)
    # Line 780
    swc1	$f5,30240($s0)
    # Line 785
    lwc1	$f5,180($a1)
    # Line 786
    add.s	$f6,$f6,$f0
    # Line 785
    mul.s	$f0,$f0,$f22
    add.s	$f5,$f5,$f1
    # Line 787
    add.s	$f7,$f7,$f6
    # Line 785
    add.s	$f5,$f5,$f0
    # Line 786
    swc1	$f6,30360($s0)
    # Line 787
    swc1	$f7,30380($s0)
    # Line 785
    swc1	$f5,30244($s0)
.L0daced54:
    # Line 793
    beqz	$a6,.L0dacf044
    nop
    lw	$a3,1696($s0)
    lui	$at,0x100
    and	$a3,$a3,$at
    beqzl	$a3,.L0daceff8
    # Line 801
    lwc1	$f6,30340($s0)
    sdc1	$f4,40($sp)
    # Line 799
    move	$a0,$s0
    # lw $t9, -27752($gp) # &__glPolygonOffsetZ
    mov.s	$f14,$f20
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f5,30336($s0)
    lwc1	$f6,30340($s0)
    sw	$v0,30208($s0)
    ldc1	$f4,40($sp)
    b	.L0dacf020
    ld	$ra,48($sp)
.L0daceda4:
    # Line 811
    beqz	$a4,.L0dacf160
    nop
    beqz	$a5,.L0dacee88
    # Line 829
    andi	$v0,$a7,0x8
    # Line 816
    lwc1	$f0,30288($s0)
    mul.s	$f6,$f0,$f20
    lwc1	$f5,30304($s0)
    # Line 817
    mul.s	$f2,$f0,$f24
    # Line 816
    lwc1	$f3,0($a2)
    mul.s	$f7,$f5,$f22
    add.s	$f3,$f3,$f6
    # Line 817
    add.s	$f2,$f2,$f5
    # Line 819
    lwc1	$f6,30292($s0)
    # Line 816
    add.s	$f3,$f3,$f7
    # Line 820
    mul.s	$f7,$f6,$f24
    # Line 818
    sub.s	$f0,$f2,$f0
    # Line 819
    lwc1	$f1,30308($s0)
    mul.s	$f5,$f6,$f20
    # Line 818
    swc1	$f0,30272($s0)
    # Line 823
    lwc1	$f0,30296($s0)
    # Line 817
    swc1	$f2,30256($s0)
    # Line 816
    swc1	$f3,30212($s0)
    # Line 820
    add.s	$f7,$f7,$f1
    # Line 819
    lwc1	$f2,4($a2)
    mul.s	$f3,$f1,$f22
    add.s	$f2,$f2,$f5
    # Line 824
    mul.s	$f1,$f0,$f24
    # Line 821
    sub.s	$f6,$f7,$f6
    # Line 823
    mul.s	$f5,$f0,$f20
    # Line 819
    add.s	$f2,$f2,$f3
    # Line 820
    swc1	$f7,30260($s0)
    # Line 823
    lwc1	$f3,30312($s0)
    # Line 821
    swc1	$f6,30276($s0)
    # Line 819
    swc1	$f2,30216($s0)
    # Line 824
    add.s	$f1,$f1,$f3
    # Line 823
    lwc1	$f2,8($a2)
    mul.s	$f6,$f3,$f22
    add.s	$f2,$f2,$f5
    # Line 827
    lwc1	$f5,30300($s0)
    # Line 825
    sub.s	$f0,$f1,$f0
    # Line 824
    swc1	$f1,30264($s0)
    # Line 828
    mul.s	$f3,$f5,$f24
    # Line 823
    add.s	$f2,$f2,$f6
    # Line 825
    swc1	$f0,30280($s0)
    # Line 827
    mul.s	$f7,$f5,$f20
    lwc1	$f6,30316($s0)
    # Line 823
    swc1	$f2,30220($s0)
    # Line 827
    lwc1	$f2,12($a2)
    # Line 828
    add.s	$f3,$f3,$f6
    # Line 827
    mul.s	$f6,$f6,$f22
    add.s	$f2,$f2,$f7
    # Line 829
    sub.s	$f5,$f3,$f5
    # Line 827
    add.s	$f2,$f2,$f6
    # Line 828
    swc1	$f3,30268($s0)
    # Line 829
    swc1	$f5,30284($s0)
    # Line 827
    swc1	$f2,30224($s0)
    # Line 829
    andi	$v0,$a7,0x8
.L0dacee88:
    beqz	$v0,.L0dacefa8
    nop
    # Line 833
    lwc1	$f1,30384($s0)
    # Line 832
    lwc1	$f0,140($a1)
    # Line 833
    lwc1	$f3,48($a1)
    mul.s	$f7,$f1,$f20
    mul.s	$f3,$f3,$f0
    lwc1	$f6,30404($s0)
    # Line 835
    mul.s	$f2,$f1,$f24
    # Line 833
    mul.s	$f5,$f6,$f22
    add.s	$f3,$f3,$f7
    # Line 835
    add.s	$f2,$f2,$f6
    # Line 833
    add.s	$f3,$f3,$f5
    # Line 838
    lwc1	$f5,30388($s0)
    # Line 836
    sub.s	$f1,$f2,$f1
    # Line 840
    mul.s	$f6,$f5,$f24
    # Line 835
    swc1	$f2,30344($s0)
    # Line 836
    swc1	$f1,30364($s0)
    # Line 833
    swc1	$f3,30228($s0)
    # Line 838
    mul.s	$f3,$f5,$f20
    lwc1	$f7,52($a1)
    mul.s	$f7,$f7,$f0
    lwc1	$f2,30408($s0)
    # Line 840
    add.s	$f6,$f6,$f2
    # Line 838
    mul.s	$f1,$f2,$f22
    add.s	$f7,$f7,$f3
    # Line 841
    sub.s	$f5,$f6,$f5
    # Line 838
    add.s	$f7,$f7,$f1
    # Line 843
    lwc1	$f1,30392($s0)
    # Line 840
    swc1	$f6,30348($s0)
    # Line 845
    mul.s	$f2,$f1,$f24
    # Line 841
    swc1	$f5,30368($s0)
    # Line 838
    swc1	$f7,30232($s0)
    # Line 843
    mul.s	$f7,$f1,$f20
    lwc1	$f3,56($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f6,30412($s0)
    # Line 845
    add.s	$f2,$f2,$f6
    # Line 843
    mul.s	$f5,$f6,$f22
    add.s	$f3,$f3,$f7
    # Line 846
    sub.s	$f1,$f2,$f1
    # Line 843
    add.s	$f3,$f3,$f5
    # Line 848
    lwc1	$f5,30396($s0)
    # Line 846
    swc1	$f1,30372($s0)
    # Line 848
    mul.s	$f1,$f5,$f20
    # Line 845
    swc1	$f2,30352($s0)
    # Line 843
    swc1	$f3,30236($s0)
    # Line 850
    mul.s	$f6,$f5,$f24
    # Line 848
    lwc1	$f7,60($a1)
    mul.s	$f7,$f7,$f0
    lwc1	$f0,30416($s0)
    # Line 850
    add.s	$f6,$f6,$f0
    # Line 848
    mul.s	$f2,$f0,$f22
    add.s	$f7,$f7,$f1
    # Line 853
    lwc1	$f1,30400($s0)
    # Line 851
    sub.s	$f5,$f6,$f5
    # Line 850
    swc1	$f6,30356($s0)
    # Line 854
    mul.s	$f0,$f1,$f24
    # Line 848
    add.s	$f7,$f7,$f2
    # Line 851
    swc1	$f5,30376($s0)
    # Line 853
    mul.s	$f3,$f1,$f20
    lwc1	$f2,30420($s0)
    # Line 848
    swc1	$f7,30240($s0)
    # Line 853
    lwc1	$f7,180($a1)
    # Line 854
    add.s	$f0,$f0,$f2
    # Line 853
    mul.s	$f2,$f2,$f22
    add.s	$f7,$f7,$f3
    # Line 855
    sub.s	$f1,$f0,$f1
    # Line 853
    add.s	$f7,$f7,$f2
    # Line 854
    swc1	$f0,30360($s0)
    # Line 855
    swc1	$f1,30380($s0)
    # Line 853
    swc1	$f7,30244($s0)
.L0dacefa8:
    # Line 861
    beqz	$a6,.L0dacf0cc
    nop
    lw	$v1,1696($s0)
    lui	$a3,0x100
    and	$v1,$v1,$a3
    beqzl	$v1,.L0dacf080
    # Line 869
    lwc1	$f6,30340($s0)
    sdc1	$f4,40($sp)
    # Line 867
    move	$a0,$s0
    # lw $t9, -27752($gp) # &__glPolygonOffsetZ
    mov.s	$f14,$f20
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f5,30336($s0)
    lwc1	$f6,30340($s0)
    sw	$v0,30208($s0)
    ldc1	$f4,40($sp)
    b	.L0dacf0a8
    ld	$ra,48($sp)
.L0daceff8:
    # Line 801
    mul.s	$f2,$f6,$f20
    lwc1	$f5,30336($s0)
    mul.s	$f1,$f5,$f22
    lwc1	$f0,136($a1)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$at,$f0
    nop
    sw	$at,30208($s0)
.L0dacf020:
    # Line 804
    mul.s	$f0,$f6,$f24
    add.s	$f0,$f0,$f5
    # Line 806
    add.s	$f3,$f6,$f0
    # Line 805
    trunc.w.s	$f0,$f0
    # Line 806
    trunc.w.s	$f3,$f3
    # Line 805
    mfc1	$v1,$f0
    # Line 806
    mfc1	$v0,$f3
    # Line 805
    sw	$v1,30320($s0)
    # Line 806
    sw	$v0,30324($s0)
.L0dacf044:
    beqzl	$s8,.L0dacf108
    # Line 882
    ld	$s0,32($sp)
    # Line 809
    lwc1	$f2,30436($s0)
    # Line 810
    mul.s	$f3,$f2,$f24
    # Line 809
    mul.s	$f1,$f2,$f20
    lwc1	$f0,30432($s0)
    # Line 810
    add.s	$f3,$f3,$f0
    # Line 809
    mul.s	$f0,$f0,$f22
    add.s	$f1,$f1,$f4
    # Line 811
    add.s	$f2,$f2,$f3
    # Line 809
    add.s	$f1,$f1,$f0
    # Line 810
    swc1	$f3,30424($s0)
    # Line 811
    swc1	$f2,30428($s0)
    b	.L0dacf104
    # Line 809
    swc1	$f1,30248($s0)
.L0dacf080:
    # Line 869
    mul.s	$f2,$f6,$f20
    lwc1	$f5,30336($s0)
    mul.s	$f1,$f5,$f22
    lwc1	$f0,136($a1)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$a3,$f0
    nop
    sw	$a3,30208($s0)
.L0dacf0a8:
    # Line 872
    mul.s	$f0,$f6,$f24
    add.s	$f0,$f0,$f5
    # Line 874
    sub.s	$f3,$f0,$f6
    # Line 873
    trunc.w.s	$f0,$f0
    # Line 874
    trunc.w.s	$f3,$f3
    # Line 873
    mfc1	$v0,$f0
    # Line 874
    mfc1	$at,$f3
    # Line 873
    sw	$v0,30320($s0)
    # Line 874
    sw	$at,30324($s0)
.L0dacf0cc:
    beqzl	$s8,.L0dacf108
    # Line 882
    ld	$s0,32($sp)
    # Line 877
    lwc1	$f2,30436($s0)
    # Line 878
    mul.s	$f3,$f2,$f24
    # Line 877
    mul.s	$f1,$f2,$f20
    lwc1	$f0,30432($s0)
    # Line 878
    add.s	$f3,$f3,$f0
    # Line 877
    mul.s	$f0,$f0,$f22
    add.s	$f1,$f1,$f4
    # Line 879
    sub.s	$f2,$f3,$f2
    # Line 877
    add.s	$f1,$f1,$f0
    # Line 878
    swc1	$f3,30424($s0)
    # Line 879
    swc1	$f2,30428($s0)
    # Line 877
    swc1	$f1,30248($s0)
.L0dacf104:
    # Line 882
    ld	$s0,32($sp)
.L0dacf108:
    ld	$s8,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dacf120:
    # Line 787
    beqz	$a5,.L0daced54
    nop
    # Line 791
    lwc1	$f0,30288($s0)
    # Line 792
    mul.s	$f1,$f0,$f24
    # Line 791
    mul.s	$f3,$f0,$f20
    lwc1	$f2,30304($s0)
    # Line 792
    add.s	$f1,$f1,$f2
    # Line 791
    lwc1	$f5,0($a2)
    mul.s	$f2,$f2,$f22
    add.s	$f5,$f5,$f3
    # Line 793
    add.s	$f0,$f0,$f1
    # Line 791
    add.s	$f5,$f5,$f2
    # Line 792
    swc1	$f1,30256($s0)
    # Line 793
    swc1	$f0,30272($s0)
    b	.L0daced54
    # Line 791
    swc1	$f5,30212($s0)
.L0dacf160:
    # Line 855
    beqz	$a5,.L0dacefa8
    nop
    # Line 859
    lwc1	$f3,30288($s0)
    # Line 860
    mul.s	$f5,$f3,$f24
    # Line 859
    mul.s	$f1,$f3,$f20
    lwc1	$f0,30304($s0)
    # Line 860
    add.s	$f5,$f5,$f0
    # Line 859
    lwc1	$f2,0($a2)
    mul.s	$f0,$f0,$f22
    add.s	$f2,$f2,$f1
    # Line 861
    sub.s	$f3,$f5,$f3
    # Line 859
    add.s	$f2,$f2,$f0
    # Line 860
    swc1	$f5,30256($s0)
    # Line 861
    swc1	$f3,30272($s0)
    b	.L0dacefa8
    # Line 859
    swc1	$f2,30212($s0)
.end SetInitialParameters

# Function: __glFillAntiAliasedTriangle
# Declared: Line 892 (Source lines: 895-1213)
# Address: 0x0dacf1a0 - 0x0dacfeb4 (Size: 3348 bytes, Frame: 160)
.globl __glFillAntiAliasedTriangle
.ent __glFillAntiAliasedTriangle
__glFillAntiAliasedTriangle:
    # Line 895
    addiu	$sp,$sp,-672
    sdc1	$f20,464($sp)
    # Line 917
    lwc1	$f20,30196($a0)
    sdc1	$f26,472($sp)
    # Line 916
    lwc1	$f26,30192($a0)
    sdc1	$f22,456($sp)
    # Line 915
    lwc1	$f22,30188($a0)
    sdc1	$f24,448($sp)
    # Line 914
    lwc1	$f24,30184($a0)
    # Line 919
    sw	$a0,280($sp)
    sd	$s1,544($sp)
    # Line 942
    lw	$s1,3440($a0)
    li	$v0,1
    sllv	$s1,$v0,$s1
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f6,128($a1)
    mul.s	$f6,$f6,$f0
    trunc.w.s	$f6,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f0
    swc1	$f6,288($sp)
    # Line 943
    lw	$a5,3440($a0)
    sllv	$a5,$v0,$a5
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,128($a2)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    sd	$s2,568($sp)
    swc1	$f0,304($sp)
    # Line 895
    move	$s2,$a2
    # Line 944
    lw	$a2,3440($a0)
    sllv	$a2,$v0,$a2
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f4,128($a3)
    mul.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    cvt.s.w	$f4,$f4
    div.s	$f4,$f4,$f5
    swc1	$f4,320($sp)
    # Line 895
    move	$s1,$a1
    # Line 945
    lw	$a1,3440($a0)
    sllv	$a1,$v0,$a1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,132($s1)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f2
    sd	$s0,536($sp)
    swc1	$f1,292($sp)
    # Line 895
    move	$s0,$a0
    # Line 946
    lw	$a0,3440($a0)
    sllv	$a0,$v0,$a0
    mtc1	$a0,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f3,132($s2)
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f5
    swc1	$f3,308($sp)
    # Line 947
    lw	$v1,3440($s0)
    sllv	$v0,$v0,$v1
    mtc1	$v0,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f2,132($a3)
    mul.s	$f2,$f2,$f5
    trunc.w.s	$f2,$f2
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f5
    # Line 950
    sub.s	$f0,$f0,$f4
    sub.s	$f6,$f6,$f4
    sub.s	$f3,$f3,$f2
    sd	$s3,560($sp)
    sub.s	$f1,$f1,$f2
    mul.s	$f6,$f6,$f3
    # sd	gp,552(sp)
    # Line 947
    swc1	$f2,324($sp)
    # Line 950
    mul.s	$f0,$f0,$f1
    # Line 948
    lwc1	$f1,136($s1)
    # Line 895
    lui	$at,0x13
    addiu	$at,$at,-31032
    # Line 948
    swc1	$f1,296($sp)
    # Line 895
    # addu	gp,t9,at
    # Line 949
    lwc1	$f2,136($s2)
    # Line 950
    sub.s	$f6,$f6,$f0
    mtc1	$zero,$f1
    # Line 895
    move	$s3,$a3
    # Line 949
    swc1	$f2,312($sp)
    # Line 950
    c.eq.s	$f6,$f1
    lwc1	$f0,136($a3)
    sd	$a4,528($sp)
    bc1f	.L0dacf374
    swc1	$f0,328($sp)
    # ld	gp,552(sp)
    # Line 953
    ld	$s0,536($sp)
    ld	$s1,544($sp)
    ld	$s2,568($sp)
    ld	$s3,560($sp)
    ldc1	$f20,464($sp)
    ldc1	$f22,456($sp)
    ldc1	$f24,448($sp)
    ldc1	$f26,472($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dacf374:
    # Line 958
    lwc1	$f1,3284($s0)
    div.s	$f1,$f1,$f6
    # Line 968
    addiu	$a3,$sp,320
    addiu	$a2,$sp,304
    addiu	$a1,$sp,288
    sd	$s5,608($sp)
    # Line 953
    addiu	$s5,$sp,0
    # Line 968
    addiu	$a0,$s5,184
    # Line 963
    lw	$v0,4($s2)
    sd	$ra,600($sp)
    # Line 961
    lw	$ra,30440($s0)
    # Line 962
    lw	$at,4($s1)
    sd	$v0,520($sp)
    # Line 953
    # lw $t9, -32716($gp) # &sub_0dad0000
    sd	$at,512($sp)
    sd	$ra,488($sp)
    addiu	$t9,$t9,-12500
    # Line 968
    bal __glEndPoints
    sdc1	$f1,408($sp)
    # Line 969
    addiu	$a3,$sp,288
    # lw $t9, -32716($gp) # &sub_0dad0000
    addiu	$a2,$sp,320
    addiu	$a1,$sp,304
    addiu	$t9,$t9,-12500
    bal __glEndPoints
    addiu	$a0,$s5,200
    # Line 970
    addiu	$a3,$sp,304
    # lw $t9, -32716($gp) # &sub_0dad0000
    addiu	$a2,$sp,288
    addiu	$a1,$sp,320
    addiu	$t9,$t9,-12500
    bal __glEndPoints
    addiu	$a0,$s5,216
    lw	$at,1808($s0)
    li	$a0,4354
    beq	$at,$a0,.L0dacfca0
    # Line 974
    li	$a1,4
.L0dacf408:
    # Line 976
    # lw $t9, -32716($gp) # &sub_0dad0000
    addiu	$t9,$t9,-12112
    bal __glEndPoints
    addiu	$a0,$s5,240
    ld	$a0,488($sp)
    andi	$at,$a0,0x1
    beqz	$at,.L0dacfca8
    andi	$a0,$a0,0x2
    beqz	$a0,.L0dacf5e8
    sd	$s4,592($sp)
    # Line 995
    ldc1	$f4,408($sp)
    mul.s	$f3,$f20,$f4
    mul.s	$f5,$f26,$f4
    # Line 992
    lw	$a6,4($s3)
    # Line 993
    ld	$a4,512($sp)
    # Line 996
    mul.s	$f2,$f24,$f4
    # Line 993
    lwc1	$f16,0($a6)
    lwc1	$f15,0($a4)
    # Line 994
    ld	$a5,520($sp)
    # Line 996
    mul.s	$f4,$f22,$f4
    # Line 993
    sub.s	$f15,$f15,$f16
    # Line 994
    lwc1	$f13,0($a5)
    # Line 995
    mul.s	$f14,$f3,$f15
    # Line 994
    sub.s	$f13,$f13,$f16
    # Line 996
    mul.s	$f15,$f4,$f15
    # Line 995
    mul.s	$f16,$f5,$f13
    # Line 996
    mul.s	$f13,$f2,$f13
    sub.s	$f13,$f13,$f15
    # Line 995
    sub.s	$f14,$f14,$f16
    # Line 996
    swc1	$f13,30304($s0)
    # Line 995
    swc1	$f14,30288($s0)
    # Line 997
    lwc1	$f11,4($a6)
    lwc1	$f12,4($a4)
    # Line 998
    lwc1	$f10,4($a5)
    # Line 997
    sub.s	$f12,$f12,$f11
    # Line 998
    sub.s	$f10,$f10,$f11
    # Line 999
    mul.s	$f11,$f3,$f12
    # Line 1000
    mul.s	$f12,$f4,$f12
    # Line 999
    mul.s	$f13,$f5,$f10
    # Line 1000
    mul.s	$f10,$f2,$f10
    sub.s	$f10,$f10,$f12
    # Line 999
    sub.s	$f11,$f11,$f13
    # Line 1000
    swc1	$f10,30308($s0)
    # Line 999
    swc1	$f11,30292($s0)
    # Line 1001
    lwc1	$f8,8($a6)
    lwc1	$f9,8($a4)
    # Line 1002
    lwc1	$f7,8($a5)
    # Line 1001
    sub.s	$f9,$f9,$f8
    # Line 1002
    sub.s	$f7,$f7,$f8
    # Line 1003
    mul.s	$f8,$f3,$f9
    # Line 1004
    mul.s	$f9,$f4,$f9
    # Line 1003
    mul.s	$f10,$f5,$f7
    # Line 1004
    mul.s	$f7,$f2,$f7
    sub.s	$f7,$f7,$f9
    # Line 1003
    sub.s	$f8,$f8,$f10
    # Line 1004
    swc1	$f7,30312($s0)
    # Line 1003
    swc1	$f8,30296($s0)
    # Line 1005
    lwc1	$f8,12($a6)
    # Line 1006
    lwc1	$f7,12($a5)
    # Line 1005
    lwc1	$f6,12($a4)
    # Line 1006
    sub.s	$f7,$f7,$f8
    # Line 1005
    sub.s	$f6,$f6,$f8
    # Line 1007
    mul.s	$f5,$f5,$f7
    # Line 1008
    mul.s	$f4,$f4,$f6
    mul.s	$f2,$f2,$f7
    # Line 1007
    mul.s	$f3,$f3,$f6
    # Line 1011
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s1
    # Line 1008
    sub.s	$f2,$f2,$f4
    # Line 1011
    addiu	$a0,$sp,0
    # Line 992
    la	$s4,sub_0dad0000
    # Line 1007
    sub.s	$f3,$f3,$f5
    sd	$a6,504($sp)
    # Line 992
    addiu	$s4,$s4,-12292
    # Line 1008
    swc1	$f2,30316($s0)
    # Line 1007
    swc1	$f3,30300($s0)
    # Line 1011
    move	$t9,$s4
    lwc1	$f18,0($a6)
    lwc1	$f17,0($a5)
    bal __glEndPoints
    lwc1	$f16,0($a4)
    # Line 1012
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,16
    ld	$t8,512($sp)
    ld	$t9,520($sp)
    ld	$ra,504($sp)
    lwc1	$f16,4($t8)
    lwc1	$f17,4($t9)
    lwc1	$f18,4($ra)
    bal __glEndPoints
    move	$t9,$s4
    # Line 1013
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,32
    move	$t9,$s4
    ld	$v1,504($sp)
    ld	$v0,520($sp)
    ld	$at,512($sp)
    lwc1	$f18,8($v1)
    lwc1	$f17,8($v0)
    bal __glEndPoints
    lwc1	$f16,8($at)
    # Line 1014
    move	$a3,$s3
    move	$t9,$s4
    ld	$a2,504($sp)
    ld	$a0,512($sp)
    ld	$a1,520($sp)
    lwc1	$f18,12($a2)
    move	$a2,$s2
    lwc1	$f17,12($a1)
    move	$a1,$s1
    lwc1	$f16,12($a0)
    bal __glEndPoints
    addiu	$a0,$s5,48
    b	.L0dacf61c
    ld	$v0,488($sp)
.L0dacf5e8:
    # Line 1016
    lw	$at,28080($s0)
    lw	$at,4($at)
    # Line 1017
    lwc1	$f4,0($at)
    swc1	$f4,30212($s0)
    # Line 1018
    lwc1	$f3,4($at)
    swc1	$f3,30216($s0)
    # Line 1019
    lwc1	$f2,8($at)
    swc1	$f2,30220($s0)
    # Line 1020
    la	$s4,sub_0dad0000
    lwc1	$f1,12($at)
    addiu	$s4,$s4,-12292
    swc1	$f1,30224($s0)
    ld	$v0,488($sp)
.L0dacf61c:
    andi	$v0,$v0,0x8
    beqz	$v0,.L0dacf990
    # Line 1038
    ldc1	$f23,408($sp)
    mul.s	$f21,$f20,$f23
    mul.s	$f25,$f26,$f23
    # Line 1039
    mul.s	$f19,$f24,$f23
    # Line 1030
    lwc1	$f1,140($s3)
    # Line 1031
    lwc1	$f10,48($s3)
    # Line 1028
    lwc1	$f18,140($s1)
    # Line 1036
    lwc1	$f9,48($s1)
    # Line 1031
    mul.s	$f10,$f10,$f1
    # Line 1036
    mul.s	$f9,$f9,$f18
    # Line 1039
    mul.s	$f23,$f22,$f23
    # Line 1029
    lwc1	$f0,140($s2)
    # Line 1037
    lwc1	$f7,48($s2)
    mul.s	$f7,$f7,$f0
    # Line 1036
    sub.s	$f9,$f9,$f10
    # Line 1038
    mul.s	$f8,$f21,$f9
    # Line 1037
    sub.s	$f7,$f7,$f10
    # Line 1039
    mul.s	$f9,$f23,$f9
    # Line 1038
    mul.s	$f10,$f25,$f7
    # Line 1039
    mul.s	$f7,$f19,$f7
    sub.s	$f7,$f7,$f9
    # Line 1034
    lwc1	$f31,60($s3)
    # Line 1038
    sub.s	$f8,$f8,$f10
    # Line 1033
    lwc1	$f2,56($s3)
    # Line 1032
    lwc1	$f5,52($s3)
    # Line 1039
    swc1	$f7,30404($s0)
    # Line 1038
    swc1	$f8,30384($s0)
    # Line 1032
    mul.s	$f5,$f5,$f1
    # Line 1040
    lwc1	$f6,52($s1)
    # Line 1041
    lwc1	$f4,52($s2)
    # Line 1040
    mul.s	$f6,$f6,$f18
    # Line 1041
    mul.s	$f4,$f4,$f0
    # Line 1040
    sub.s	$f6,$f6,$f5
    # Line 1041
    sub.s	$f4,$f4,$f5
    # Line 1042
    mul.s	$f5,$f21,$f6
    # Line 1043
    mul.s	$f6,$f23,$f6
    # Line 1042
    mul.s	$f7,$f25,$f4
    # Line 1043
    mul.s	$f4,$f19,$f4
    sub.s	$f4,$f4,$f6
    # Line 1042
    sub.s	$f5,$f5,$f7
    # Line 1043
    swc1	$f4,30408($s0)
    # Line 1042
    swc1	$f5,30388($s0)
    # Line 1033
    mul.s	$f2,$f2,$f1
    # Line 1044
    lwc1	$f3,56($s1)
    # Line 1045
    lwc1	$f29,56($s2)
    # Line 1044
    mul.s	$f3,$f3,$f18
    # Line 1045
    mul.s	$f29,$f29,$f0
    # Line 1044
    sub.s	$f3,$f3,$f2
    # Line 1045
    sub.s	$f29,$f29,$f2
    # Line 1046
    mul.s	$f2,$f21,$f3
    # Line 1047
    mul.s	$f3,$f23,$f3
    # Line 1046
    mul.s	$f4,$f25,$f29
    # Line 1047
    mul.s	$f29,$f19,$f29
    # Line 1046
    sub.s	$f2,$f2,$f4
    # Line 1047
    sub.s	$f29,$f29,$f3
    # Line 1046
    swc1	$f2,30392($s0)
    # Line 1047
    swc1	$f29,30412($s0)
    # Line 1034
    mul.s	$f31,$f31,$f1
    # Line 1049
    lwc1	$f29,60($s2)
    # Line 1048
    lwc1	$f27,60($s1)
    # Line 1049
    mul.s	$f29,$f29,$f0
    # Line 1048
    mul.s	$f27,$f27,$f18
    # Line 1049
    sub.s	$f29,$f29,$f31
    sdc1	$f25,360($sp)
    # Line 1048
    sub.s	$f27,$f27,$f31
    # Line 1050
    mul.s	$f25,$f25,$f29
    sdc1	$f23,376($sp)
    # Line 1051
    mul.s	$f23,$f23,$f27
    sdc1	$f19,368($sp)
    mul.s	$f19,$f19,$f29
    sdc1	$f21,400($sp)
    # Line 1050
    mul.s	$f21,$f21,$f27
    # Line 1051
    sub.s	$f19,$f19,$f23
    # Line 1050
    sub.s	$f21,$f21,$f25
    # Line 1054
    move	$a0,$s0
    addiu	$a1,$s0,30140
    # Line 1051
    swc1	$f19,30416($s0)
    # Line 1050
    swc1	$f21,30396($s0)
    sd	$a1,496($sp)
    # Line 1054
    lwc1	$f17,60($s1)
    lw	$t9,12528($s0)
    lwc1	$f16,56($s1)
    mul.s	$f17,$f17,$f18
    sdc1	$f18,424($sp)
    lwc1	$f15,52($s1)
    mul.s	$f16,$f16,$f18
    sdc1	$f1,432($sp)
    lwc1	$f14,48($s1)
    mul.s	$f15,$f15,$f18
    sdc1	$f0,440($sp)
    jal	sub_0dad0000
    mul.s	$f14,$f14,$f18
    lwc1	$f18,60($s1)
    mul.s	$f18,$f18,$f0
    ldc1	$f19,424($sp)
    mul.s	$f18,$f18,$f19
    sdc1	$f18,384($sp)
    # Line 1060
    swc1	$f18,180($s1)
    # Line 1061
    ldc1	$f18,440($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s2)
    mul.s	$f17,$f17,$f18
    ld	$a1,496($sp)
    lwc1	$f15,52($s2)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s2)
    lw	$t9,12528($s0)
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f18,60($s2)
    mul.s	$f18,$f18,$f0
    ldc1	$f19,440($sp)
    mul.s	$f18,$f18,$f19
    sdc1	$f18,392($sp)
    # Line 1067
    swc1	$f18,180($s2)
    # Line 1068
    ldc1	$f18,432($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s3)
    mul.s	$f17,$f17,$f18
    ld	$a1,496($sp)
    lwc1	$f15,52($s3)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s3)
    lw	$t9,12528($s0)
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f25,60($s3)
    mul.s	$f25,$f25,$f0
    ldc1	$f19,432($sp)
    mul.s	$f25,$f25,$f19
    # Line 1078
    ldc1	$f31,384($sp)
    ldc1	$f27,392($sp)
    sub.s	$f31,$f31,$f25
    ldc1	$f23,400($sp)
    ldc1	$f29,360($sp)
    sub.s	$f27,$f27,$f25
    mul.s	$f23,$f23,$f31
    # Line 1079
    ldc1	$f21,368($sp)
    # Line 1078
    mul.s	$f29,$f29,$f27
    # Line 1079
    mul.s	$f21,$f21,$f27
    ldc1	$f27,376($sp)
    mul.s	$f27,$f27,$f31
    # Line 1078
    sub.s	$f23,$f23,$f29
    # Line 1079
    sub.s	$f21,$f21,$f27
    # Line 1083
    move	$a3,$s3
    # Line 1074
    swc1	$f25,180($s3)
    # Line 1078
    swc1	$f23,30400($s0)
    # Line 1079
    swc1	$f21,30420($s0)
    # Line 1083
    move	$a2,$s2
    lwc1	$f18,48($s3)
    move	$a1,$s1
    lwc1	$f17,48($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    addiu	$a0,$s5,80
    lwc1	$f16,48($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$t9,$s4
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1087
    move	$a3,$s3
    move	$a2,$s2
    ldc1	$f19,432($sp)
    lwc1	$f18,52($s3)
    move	$a1,$s1
    lwc1	$f17,52($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    addiu	$a0,$s5,96
    lwc1	$f16,52($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$t9,$s4
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1091
    move	$a3,$s3
    move	$a2,$s2
    ldc1	$f19,432($sp)
    lwc1	$f18,56($s3)
    move	$a1,$s1
    lwc1	$f17,56($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    addiu	$a0,$s5,112
    lwc1	$f16,56($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$t9,$s4
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1095
    move	$a3,$s3
    move	$a2,$s2
    ldc1	$f19,432($sp)
    lwc1	$f18,60($s3)
    move	$a1,$s1
    lwc1	$f17,60($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    addiu	$a0,$s5,128
    lwc1	$f16,60($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$t9,$s4
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1099
    lwc1	$f18,180($s3)
    lwc1	$f17,180($s2)
    lwc1	$f16,180($s1)
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,144
    bal __glEndPoints
    move	$t9,$s4
.L0dacf990:
    ld	$v1,488($sp)
.L0dacf994:
    # Line 1119
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0dacfa1c
    ldc1	$f27,408($sp)
    # Line 1128
    mul.s	$f21,$f24,$f27
    # Line 1127
    mul.s	$f25,$f26,$f27
    # Line 1125
    lwc1	$f0,136($s3)
    # Line 1126
    lwc1	$f31,136($s2)
    # Line 1127
    mul.s	$f23,$f20,$f27
    # Line 1125
    lwc1	$f29,136($s1)
    # Line 1126
    sub.s	$f31,$f31,$f0
    # Line 1128
    mul.s	$f27,$f22,$f27
    # Line 1125
    sub.s	$f29,$f29,$f0
    # Line 1127
    mul.s	$f25,$f25,$f31
    mul.s	$f23,$f23,$f29
    # Line 1128
    mul.s	$f27,$f27,$f29
    mul.s	$f21,$f21,$f31
    # Line 1127
    sub.s	$f23,$f23,$f25
    # Line 1129
    trunc.w.s	$f25,$f23
    # Line 1134
    move	$a3,$s3
    move	$a2,$s2
    # Line 1128
    sub.s	$f21,$f21,$f27
    # Line 1134
    move	$a1,$s1
    move	$t9,$s4
    # Line 1129
    mfc1	$a0,$f25
    # Line 1128
    swc1	$f21,30336($s0)
    # Line 1127
    swc1	$f23,30340($s0)
    # Line 1129
    sw	$a0,30328($s0)
    # Line 1130
    sll	$a0,$a0,0x5
    sw	$a0,30332($s0)
    # Line 1134
    addiu	$a0,$s5,64
    lwc1	$f18,136($s3)
    lwc1	$f17,136($s2)
    bal __glEndPoints
    lwc1	$f16,136($s1)
.L0dacfa1c:
    ld	$a5,488($sp)
    andi	$a5,$a5,0x1000
    beqz	$a5,.L0dacfaf4
    li	$v0,4354
    lw	$at,1812($s0)
    bnel	$at,$v0,.L0dacfa50
    # Line 1147
    lw	$t9,12544($s0)
    # Line 1143
    lwc1	$f5,104($s2)
    # Line 1144
    lwc1	$f0,104($s3)
    # Line 1142
    lwc1	$f6,104($s1)
    # Line 1143
    swc1	$f5,340($sp)
    # Line 1144
    b	.L0dacfa94
    # Line 1142
    swc1	$f6,336($sp)
.L0dacfa50:
    # Line 1147
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    sdc1	$f0,416($sp)
    # Line 1148
    lw	$t9,12544($s0)
    move	$a1,$s2
    move	$a0,$s0
    jalr	$t9
    # Line 1147
    swc1	$f0,336($sp)
    sdc1	$f0,576($sp)
    # Line 1149
    lw	$t9,12544($s0)
    move	$a1,$s3
    move	$a0,$s0
    jalr	$t9
    # Line 1148
    swc1	$f0,340($sp)
    ldc1	$f6,416($sp)
    ldc1	$f5,576($sp)
.L0dacfa94:
    ldc1	$f1,408($sp)
    # Line 1153
    mul.s	$f2,$f20,$f1
    sub.s	$f3,$f6,$f0
    mul.s	$f6,$f26,$f1
    # Line 1154
    mul.s	$f31,$f24,$f1
    # Line 1153
    sub.s	$f4,$f5,$f0
    # Line 1154
    mul.s	$f1,$f22,$f1
    # Line 1153
    mul.s	$f0,$f6,$f4
    # Line 1154
    mul.s	$f1,$f1,$f3
    mul.s	$f31,$f31,$f4
    # Line 1153
    mul.s	$f2,$f2,$f3
    # Line 1154
    sub.s	$f31,$f31,$f1
    # Line 1157
    move	$a3,$s3
    move	$a2,$s2
    # Line 1153
    sub.s	$f0,$f2,$f0
    # Line 1157
    move	$a1,$s1
    addiu	$a0,$s5,160
    # Line 1154
    swc1	$f31,30432($s0)
    # Line 1153
    swc1	$f0,30436($s0)
    # Line 1157
    move	$t9,$s4
    lwc1	$f18,104($s3)
    lwc1	$f17,104($s2)
    bal __glEndPoints
    lwc1	$f16,104($s1)
.L0dacfaf4:
    # Line 1171
    div.s	$f14,$f24,$f26
    # Line 1161
    lwc1	$f5,3280($s0)
    lwc1	$f6,132($s1)
    add.s	$f1,$f6,$f5
    # Line 1162
    lwc1	$f2,132($s2)
    # Line 1171
    sub.s	$f0,$f6,$f2
    # Line 1170
    lwc1	$f4,128($s2)
    # Line 1161
    trunc.w.s	$f1,$f1
    sdc1	$f0,344($sp)
    # Line 1170
    lwc1	$f0,128($s1)
    sub.s	$f4,$f0,$f4
    # Line 1171
    cvt.s.w	$f3,$f1
    sdc1	$f4,352($sp)
    # Line 1163
    lwc1	$f4,132($s3)
    add.s	$f4,$f4,$f5
    # Line 1162
    add.s	$f2,$f2,$f5
    ld	$s5,608($sp)
    # Line 1163
    trunc.w.s	$f4,$f4
    # Line 1171
    ld	$v1,528($sp)
    # Line 1161
    mfc1	$a5,$f1
    # Line 1162
    trunc.w.s	$f2,$f2
    # Line 1163
    mfc1	$s4,$f4
    sd	$a5,584($sp)
    # Line 1171
    add.s	$f5,$f5,$f3
    sd	$s4,480($sp)
    # Line 1162
    mfc1	$s4,$f2
    # Line 1171
    beqz	$v1,.L0dacfd38
    sub.s	$f5,$f5,$f6
    # Line 1175
    mul.s	$f13,$f14,$f5
    # Line 1174
    mov.s	$f24,$f5
    # Line 1175
    # lw $t9, -27764($gp) # &__glSnapXLeft
    move	$a0,$s0
    ld	$s3,584($sp)
    bal __glSnapXLeft
    add.s	$f13,$f13,$f0
    # Line 1177
    lw	$ra,30152($s0)
    mtc1	$ra,$f18
    move	$a0,$s0
    move	$a1,$s1
    cvt.s.w	$f18,$f18
    ld	$a2,512($sp)
    mov.s	$f17,$f24
    lwc1	$f16,3280($s0)
    lwc1	$f15,336($sp)
    # lw $t9, -32716($gp) # &sub_0dad0000
    add.s	$f16,$f16,$f18
    lwc1	$f18,128($s1)
    addiu	$t9,$t9,-5388
    bal __glEndPoints
    sub.s	$f16,$f16,$f18
    bne	$s3,$s4,.L0dacfc08
    ld	$ra,600($sp)
    # Line 1182
    la	$s1,sub_0dad0000
    addiu	$s1,$s1,-11248
.L0dacfbcc:
    ld	$at,480($sp)
    bnel	$s4,$at,.L0dacfc50
    # Line 1188
    div.s	$f14,$f22,$f20
.L0dacfbd8:
    # ld	gp,552(sp)
.L0dacfbdc:
    # Line 1213
    ld	$s0,536($sp)
    ld	$s1,544($sp)
    ld	$s2,568($sp)
    ld	$s3,560($sp)
    ld	$s4,592($sp)
    ldc1	$f20,464($sp)
    ldc1	$f22,456($sp)
    ldc1	$f24,448($sp)
    ldc1	$f26,472($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dacfc08:
    # Line 1180
    ldc1	$f15,344($sp)
    ldc1	$f14,352($sp)
    div.s	$f14,$f14,$f15
    mul.s	$f15,$f14,$f24
    # lw $t9, -27760($gp) # &__glSnapXRight
    lwc1	$f13,128($s1)
    addiu	$a0,$s0,30140
    bal __glSnapXRight
    add.s	$f13,$f13,$f15
    # Line 1182
    addiu	$a2,$sp,0
    la	$s1,sub_0dad0000
    move	$a1,$s4
    move	$a0,$s3
    addiu	$s1,$s1,-11248
    bal __glEndPoints
    move	$t9,$s1
    b	.L0dacfbcc
    ld	$ra,600($sp)
.L0dacfc50:
    # Line 1188
    mtc1	$s4,$f16
    nop
    cvt.s.w	$f16,$f16
    lwc1	$f15,3280($s0)
    add.s	$f15,$f15,$f16
    lwc1	$f16,132($s2)
    sub.s	$f15,$f15,$f16
    mul.s	$f15,$f15,$f14
    # lw $t9, -27760($gp) # &__glSnapXRight
    lwc1	$f13,128($s2)
    addiu	$a0,$s0,30140
    bal __glSnapXRight
    add.s	$f13,$f13,$f15
    # Line 1190
    move	$a0,$s4
    ld	$a1,480($sp)
    addiu	$a2,$sp,0
    bal __glEndPoints
    move	$t9,$s1
    b	.L0dacfbd8
    ld	$ra,600($sp)
.L0dacfca0:
    # Line 972
    b	.L0dacf408
    li	$a1,8
.L0dacfca8:
    # Line 1099
    beqz	$a0,.L0dacfe08
    sd	$s4,592($sp)
    # Line 1112
    ldc1	$f19,408($sp)
    mul.s	$f18,$f20,$f19
    # Line 1110
    ld	$t8,512($sp)
    # Line 1112
    mul.s	$f21,$f26,$f19
    # Line 1109
    lw	$ra,4($s3)
    # Line 1111
    ld	$t9,520($sp)
    # Line 1113
    mul.s	$f17,$f24,$f19
    # Line 1110
    lwc1	$f27,0($ra)
    # Line 1111
    lwc1	$f25,0($t9)
    # Line 1113
    mul.s	$f19,$f22,$f19
    # Line 1110
    lwc1	$f23,0($t8)
    # Line 1111
    sub.s	$f25,$f25,$f27
    # Line 1110
    sub.s	$f23,$f23,$f27
    # Line 1112
    mul.s	$f21,$f21,$f25
    # Line 1113
    mul.s	$f19,$f19,$f23
    mul.s	$f17,$f17,$f25
    # Line 1112
    mul.s	$f18,$f18,$f23
    # Line 1116
    move	$a3,$s3
    # Line 1113
    sub.s	$f17,$f17,$f19
    # Line 1116
    move	$a2,$s2
    move	$a1,$s1
    # Line 1112
    sub.s	$f18,$f18,$f21
    # Line 1116
    addiu	$a0,$sp,0
    # Line 1109
    la	$s4,sub_0dad0000
    # Line 1113
    swc1	$f17,30304($s0)
    # Line 1112
    swc1	$f18,30288($s0)
    # Line 1109
    addiu	$s4,$s4,-12292
    # Line 1116
    lwc1	$f16,0($t8)
    lwc1	$f17,0($t9)
    lwc1	$f18,0($ra)
    bal __glEndPoints
    move	$t9,$s4
    b	.L0dacf994
    ld	$v1,488($sp)
.L0dacfd38:
    # Line 1195
    mul.s	$f13,$f14,$f5
    # Line 1194
    mov.s	$f24,$f5
    # Line 1195
    # lw $t9, -27760($gp) # &__glSnapXRight
    addiu	$a0,$s0,30140
    ld	$s3,584($sp)
    bal __glSnapXRight
    add.s	$f13,$f13,$f0
    bne	$s3,$s4,.L0dacfe24
    ld	$ra,600($sp)
    # Line 1201
    la	$s3,sub_0dad0000
    la	$s1,sub_0dad0000
    addiu	$s3,$s3,-5388
    addiu	$s1,$s1,-11248
.L0dacfd6c:
    ld	$at,480($sp)
    beql	$s4,$at,.L0dacfbdc
    nop
    # Line 1207
    div.s	$f14,$f22,$f20
    # Line 1206
    mtc1	$s4,$f25
    nop
    cvt.s.w	$f25,$f25
    lwc1	$f24,3280($s0)
    add.s	$f24,$f24,$f25
    lwc1	$f25,132($s2)
    sub.s	$f24,$f24,$f25
    # Line 1207
    mul.s	$f15,$f14,$f24
    # lw $t9, -27764($gp) # &__glSnapXLeft
    lwc1	$f13,128($s2)
    move	$a0,$s0
    bal __glSnapXLeft
    add.s	$f13,$f13,$f15
    # Line 1209
    lw	$v0,30152($s0)
    mtc1	$v0,$f17
    nop
    cvt.s.w	$f17,$f17
    move	$a0,$s0
    lwc1	$f16,3280($s0)
    move	$a1,$s2
    ld	$a2,520($sp)
    add.s	$f16,$f16,$f17
    lwc1	$f17,128($s2)
    lwc1	$f15,340($sp)
    move	$t9,$s3
    sub.s	$f16,$f16,$f17
    bal __glEndPoints
    mov.s	$f17,$f24
    # Line 1210
    move	$a0,$s4
    ld	$a1,480($sp)
    addiu	$a2,$sp,0
    bal __glEndPoints
    move	$t9,$s1
    b	.L0dacfbd8
    ld	$ra,600($sp)
.L0dacfe08:
    # Line 1119
    lw	$at,28080($s0)
    lw	$at,4($at)
    la	$s4,sub_0dad0000
    lwc1	$f1,0($at)
    addiu	$s4,$s4,-12292
    b	.L0dacf990
    swc1	$f1,30212($s0)
.L0dacfe24:
    ldc1	$f15,344($sp)
    # Line 1198
    ldc1	$f14,352($sp)
    div.s	$f14,$f14,$f15
    mul.s	$f15,$f14,$f24
    # lw $t9, -27764($gp) # &__glSnapXLeft
    lwc1	$f13,128($s1)
    move	$a0,$s0
    bal __glSnapXLeft
    add.s	$f13,$f13,$f15
    # Line 1200
    lw	$ra,30152($s0)
    mtc1	$ra,$f17
    nop
    cvt.s.w	$f17,$f17
    lwc1	$f15,336($sp)
    ld	$a2,512($sp)
    lwc1	$f16,3280($s0)
    move	$a1,$s1
    # lw $t9, -32716($gp) # &sub_0dad0000
    add.s	$f16,$f16,$f17
    lwc1	$f17,128($s1)
    move	$a0,$s0
    addiu	$t9,$t9,-5388
    sub.s	$f16,$f16,$f17
    bal __glEndPoints
    mov.s	$f17,$f24
    # Line 1201
    addiu	$a2,$sp,0
    la	$s1,sub_0dad0000
    move	$a1,$s4
    move	$a0,$s3
    addiu	$s1,$s1,-11248
    bal __glEndPoints
    move	$t9,$s1
    la	$s3,sub_0dad0000
    ld	$ra,600($sp)
    b	.L0dacfd6c
    addiu	$s3,$s3,-5388
.end __glFillAntiAliasedTriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_497423f0:
    .word 0x497423f0
_lit_bf000000:
    .word 0xbf000000
_lit_bf800000:
    .word 0xbf800000

