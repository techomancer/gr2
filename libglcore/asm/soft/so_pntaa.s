# Source: ../soft/so_pntaa.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntaa.c
# Total Functions: 4

.text

# Function: __glBuildAntiAliasIndex
# Declared: Line 30 (Source lines: 32-36)
# Address: 0x0dacc398 - 0x0dacc3dc (Size: 68 bytes, Frame: 0)
.globl __glBuildAntiAliasIndex
.ent __glBuildAntiAliasIndex
__glBuildAntiAliasIndex:
    # Line 32
    lui	$a1,0x13
    addiu	$a1,$a1,-19248
    # addu	at,t9,a1
    # Line 36
    lwc1	$f1,_lit_41700000
    mul.s	$f1,$f13,$f1
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f2,$f12
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f2
    mfc1	$v0,$f1
    li	$a0,-16
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    mtc1	$v0,$f0
    jr	$ra
    cvt.s.w	$f0,$f0
.end __glBuildAntiAliasIndex

# Function: Coverage
# Declared: Line 77 (Source lines: 91-120)
# Address: 0x0dacc3dc - 0x0dacc570 (Size: 404 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 91
    lwc1	$f6,_lit_bec00000
    # Line 97
    add.s	$f10,$f13,$f6
    # Line 91
    add.s	$f6,$f12,$f6
    # Line 97
    lwc1	$f15,_lit_3e800000
    add.s	$f8,$f10,$f15
    mul.s	$f10,$f10,$f10
    mul.s	$f5,$f6,$f6
    add.s	$f11,$f8,$f15
    mul.s	$f8,$f8,$f8
    lwc1	$f7,_lit_3d800000
    add.s	$f9,$f11,$f15
    mul.s	$f11,$f11,$f11
    li	$a1,3
    # Line 95
    mtc1	$zero,$f0
    # Line 97
    mul.s	$f9,$f9,$f9
    sub.s	$f5,$f14,$f5
    c.le.s	$f10,$f5
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 97
    bc1fl	.L0dacc434
    # Line 103
    c.le.s	$f8,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f8,$f5
.L0dacc434:
    nop
    bc1fl	.L0dacc448
    # Line 107
    c.le.s	$f11,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f11,$f5
.L0dacc448:
    nop
    bc1fl	.L0dacc45c
    # Line 111
    c.le.s	$f9,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f9,$f5
.L0dacc45c:
    # Line 97
    mul.s	$f5,$f6,$f6
    # Line 111
    bc1f	.L0dacc46c
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 115
    add.s	$f0,$f0,$f7
.L0dacc46c:
    # Line 97
    sub.s	$f5,$f14,$f5
    c.le.s	$f10,$f5
    nop
    bc1fl	.L0dacc488
    # Line 103
    c.le.s	$f8,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f8,$f5
.L0dacc488:
    nop
    bc1fl	.L0dacc49c
    # Line 107
    c.le.s	$f11,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f11,$f5
.L0dacc49c:
    nop
    bc1fl	.L0dacc4b0
    # Line 111
    c.le.s	$f9,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f9,$f5
.L0dacc4b0:
    # Line 97
    mul.s	$f5,$f6,$f6
    # Line 111
    bc1f	.L0dacc4c0
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 115
    add.s	$f0,$f0,$f7
.L0dacc4c0:
    # Line 97
    sub.s	$f5,$f14,$f5
    c.le.s	$f10,$f5
    nop
    bc1fl	.L0dacc4dc
    # Line 103
    c.le.s	$f8,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f8,$f5
.L0dacc4dc:
    nop
    bc1fl	.L0dacc4f0
    # Line 107
    c.le.s	$f11,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f11,$f5
.L0dacc4f0:
    nop
    bc1fl	.L0dacc504
    # Line 111
    c.le.s	$f9,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f9,$f5
.L0dacc504:
    nop
    bc1f	.L0dacc514
    # Line 97
    mul.s	$f5,$f6,$f6
    # Line 115
    add.s	$f0,$f0,$f7
.L0dacc514:
    # Line 97
    sub.s	$f5,$f14,$f5
    c.le.s	$f10,$f5
    nop
    bc1fl	.L0dacc530
    # Line 103
    c.le.s	$f8,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f8,$f5
.L0dacc530:
    nop
    bc1fl	.L0dacc544
    # Line 107
    c.le.s	$f11,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f11,$f5
.L0dacc544:
    nop
    bc1fl	.L0dacc558
    # Line 111
    c.le.s	$f9,$f5
    add.s	$f0,$f0,$f7
    c.le.s	$f9,$f5
.L0dacc558:
    nop
    bc1f	.L0dacc568
    nop
    # Line 115
    add.s	$f0,$f0,$f7
.L0dacc568:
    # Line 120
    jr	$ra
    nop
.end Coverage

# Function: __glRenderAntiAliasedRGBPoint
# Declared: Line 123 (Source lines: 124-206)
# Address: 0x0dacc570 - 0x0dacc820 (Size: 688 bytes, Frame: 224)
.globl __glRenderAntiAliasedRGBPoint
.ent __glRenderAntiAliasedRGBPoint
__glRenderAntiAliasedRGBPoint:
    # Line 124
    addiu	$sp,$sp,-224
    sd	$s0,88($sp)
    move	$s0,$a1
    sd	$s3,112($sp)
    move	$s3,$a0
    # sd	gp,120(sp)
    lui	$v0,0x13
    # Line 143
    lwc1	$f1,132($a1)
    # Line 162
    lwc1	$f2,136($a1)
    # Line 140
    lwc1	$f0,3280($a0)
    sdc1	$f24,72($sp)
    # Line 162
    trunc.l.s	$f2,$f2
    # Line 142
    lwc1	$f24,128($a1)
    sdc1	$f20,64($sp)
    # Line 140
    lwc1	$f20,436($a0)
    # Line 162
    dmfc1	$a3,$f2
    sd	$s1,104($sp)
    # Line 129
    lw	$s1,30440($a0)
    # Line 162
    sll	$a3,$a3,0x0
    sw	$a3,8($sp)
    # Line 124
    addiu	$v0,$v0,-19720
    # Line 162
    lbu	$at,30524($a0)
    # Line 124
    # addu	gp,t9,v0
    sdc1	$f1,56($sp)
    # Line 162
    beqz	$at,.L0dacc5f4
    # Line 140
    mul.s	$f20,$f20,$f0
    # Line 164
    lwc1	$f3,30492($s3)
    trunc.l.s	$f3,$f3
    dmfc1	$at,$f3
    nop
    sll	$at,$at,0x0
    addu	$at,$at,$a3
    sw	$at,8($sp)
.L0dacc5f4:
    # Line 167
    lw	$v1,4($s0)
    lwc1	$f3,0($v1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($v1)
    swc1	$f2,16($sp)
    lwc1	$f1,8($v1)
    swc1	$f1,20($sp)
    lwc1	$f4,12($v1)
    andi	$v0,$s1,0x8
    beqz	$v0,.L0dacc65c
    swc1	$f4,24($sp)
    # Line 169
    lwc1	$f18,60($s0)
    lwc1	$f17,3284($s3)
    div.s	$f18,$f17,$f18
    # Line 170
    addiu	$a1,$sp,12
    lwc1	$f16,56($s0)
    move	$a0,$s3
    lwc1	$f15,52($s0)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s0)
    lw	$t9,12532($s3)
    mul.s	$f15,$f15,$f18
    sd	$ra,176($sp)
    jalr	$t9
    mul.s	$f14,$f14,$f18
    ld	$ra,176($sp)
.L0dacc65c:
    andi	$a2,$s1,0x1000
    beqz	$a2,.L0dacc69c
    ld	$s1,104($sp)
    # Line 175
    move	$a0,$s3
    lwc1	$f14,104($s0)
    lw	$t9,12536($s3)
    addiu	$a1,$sp,0
    sd	$ra,176($sp)
    jalr	$t9
    ld	$s1,104($sp)
    sd	$s5,168($sp)
    sd	$s6,160($sp)
    sdc1	$f30,144($sp)
    sdc1	$f28,136($sp)
    sdc1	$f22,128($sp)
    ld	$ra,176($sp)
.L0dacc69c:
    sdc1	$f28,136($sp)
    ldc1	$f28,56($sp)
    # Line 189
    sub.s	$f3,$f28,$f20
    trunc.w.s	$f3,$f3
    cvt.s.w	$f4,$f3
    # Line 191
    add.s	$f1,$f20,$f28
    # Line 188
    sub.s	$f2,$f24,$f20
    # Line 191
    trunc.w.s	$f1,$f1
    # Line 188
    trunc.w.s	$f2,$f2
    ld	$s0,88($sp)
    sdc1	$f30,144($sp)
    # Line 191
    mfc1	$a1,$f1
    # Line 188
    cvt.s.w	$f1,$f2
    # Line 189
    mfc1	$a0,$f3
    # Line 188
    lwc1	$f3,3280($s3)
    # Line 187
    lwc1	$f30,24($sp)
    sdc1	$f22,128($sp)
    # Line 189
    add.s	$f22,$f4,$f3
    sdc1	$f24,152($sp)
    sd	$s5,168($sp)
    # Line 188
    add.s	$f1,$f1,$f3
    sd	$s6,160($sp)
    mfc1	$s6,$f2
    # Line 189
    sub.s	$f22,$f22,$f28
    # Line 191
    subu	$a1,$a1,$a0
    move	$s5,$a1
    # Line 188
    sub.s	$f1,$f1,$f24
    # Line 186
    lwc1	$f28,3284($s3)
    # Line 190
    sw	$a0,4($sp)
    # Line 191
    bltz	$a1,.L0dacc7f4
    sdc1	$f1,80($sp)
    ldc1	$f4,152($sp)
    sd	$ra,176($sp)
    add.s	$f4,$f20,$f4
    sd	$s4,184($sp)
    li	$s4,-1
    sdc1	$f26,200($sp)
    trunc.w.s	$f4,$f4
    mtc1	$zero,$f26
    la	$s1,sub_0dad0000
    sd	$s7,192($sp)
    mfc1	$s7,$f4
    mul.s	$f24,$f20,$f20
    addiu	$s1,$s1,-15396
    subu	$s7,$s7,$s6
    addiu	$a2,$s7,1
    b	.L0dacc774
    sd	$a2,96($sp)
.L0dacc75c:
    # Line 194
    lw	$a0,4($sp)
.L0dacc760:
    # Line 191
    addiu	$s5,$s5,-1
    # Line 203
    add.s	$f22,$f28,$f22
    # Line 204
    addiu	$a0,$a0,1
    # Line 191
    beq	$s5,$s4,.L0dacc7dc
    # Line 204
    sw	$a0,4($sp)
.L0dacc774:
    ldc1	$f20,80($sp)
    # Line 193
    sw	$s6,0($sp)
    # Line 194
    bltz	$s7,.L0dacc760
    move	$s0,$s7
    b	.L0dacc7b4
    # Line 195
    mov.s	$f12,$f20
.L0dacc78c:
    # Line 197
    swc1	$f5,24($sp)
    # Line 198
    lw	$t9,12616($s3)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11768($s3)
.L0dacc7a0:
    # Line 201
    lw	$at,0($sp)
    addiu	$at,$at,1
    # Line 194
    beq	$s0,$s4,.L0dacc75c
    # Line 201
    sw	$at,0($sp)
    # Line 195
    mov.s	$f12,$f20
.L0dacc7b4:
    mov.s	$f13,$f22
    mov.s	$f14,$f24
    bal __glBuildAntiAliasIndex
    move	$t9,$s1
    c.lt.s	$f26,$f0
    # Line 194
    addiu	$s0,$s0,-1
    # Line 195
    bc1f	.L0dacc7a0
    # Line 200
    add.s	$f20,$f28,$f20
    b	.L0dacc78c
    # Line 197
    mul.s	$f5,$f0,$f30
.L0dacc7dc:
    ldc1	$f26,200($sp)
    ld	$s7,192($sp)
    ld	$s1,104($sp)
    ld	$s0,88($sp)
    ld	$s4,184($sp)
    ld	$ra,176($sp)
.L0dacc7f4:
    # ld	gp,120(sp)
    # Line 206
    ld	$s3,112($sp)
    ld	$s5,168($sp)
    ld	$s6,160($sp)
    ldc1	$f20,64($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,72($sp)
    ldc1	$f28,136($sp)
    ldc1	$f30,144($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glRenderAntiAliasedRGBPoint

# Function: __glRenderAntiAliasedCIPoint
# Declared: Line 208 (Source lines: 209-284)
# Address: 0x0dacc820 - 0x0dacca74 (Size: 596 bytes, Frame: 224)
.globl __glRenderAntiAliasedCIPoint
.ent __glRenderAntiAliasedCIPoint
__glRenderAntiAliasedCIPoint:
    # Line 209
    move	$a3,$a1
    addiu	$sp,$sp,-224
    sd	$s3,88($sp)
    move	$s3,$a0
    # Line 246
    lwc1	$f2,136($a1)
    sd	$gp,96($sp)
    # Line 226
    lwc1	$f0,128($a1)
    # Line 246
    trunc.l.s	$f2,$f2
    # Line 224
    lwc1	$f1,3280($a0)
    sdc1	$f24,64($sp)
    # Line 227
    lwc1	$f24,132($a1)
    # Line 246
    dmfc1	$a4,$f2
    sdc1	$f20,56($sp)
    # Line 224
    lwc1	$f20,436($a0)
    # Line 246
    sll	$a4,$a4,0x0
    sw	$a4,8($sp)
    # Line 209
    lui	$v0,0x13
    # Line 246
    lbu	$at,30524($a0)
    # Line 209
    addiu	$v0,$v0,-20408
    addu	$gp,$t9,$v0
    # Line 246
    beqz	$at,.L0dacc894
    # Line 224
    mul.s	$f20,$f20,$f1
    # Line 248
    lwc1	$f3,30492($s3)
    trunc.l.s	$f3,$f3
    dmfc1	$at,$f3
    nop
    sll	$at,$at,0x0
    addu	$at,$at,$a4
    sw	$at,8($sp)
.L0dacc894:
    # Line 251
    lw	$v1,4($a3)
    lwc1	$f5,0($v1)
    swc1	$f5,12($sp)
    lw	$v0,30440($s3)
    andi	$v0,$v0,0x1000
    beqzl	$v0,.L0dacc8f0
    # Line 267
    sub.s	$f2,$f24,$f20
    sdc1	$f0,136($sp)
    # Line 253
    move	$a0,$s3
    lw	$t9,12536($s3)
    lwc1	$f14,104($a3)
    sd	$ra,192($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    sd	$s5,152($sp)
    sd	$s4,144($sp)
    sdc1	$f30,120($sp)
    sdc1	$f28,112($sp)
    sdc1	$f22,104($sp)
    lwc1	$f5,12($sp)
    ldc1	$f0,136($sp)
    ld	$ra,192($sp)
    # Line 267
    sub.s	$f2,$f24,$f20
.L0dacc8f0:
    trunc.w.s	$f2,$f2
    sdc1	$f22,104($sp)
    cvt.s.w	$f22,$f2
    sdc1	$f28,112($sp)
    # Line 266
    sub.s	$f28,$f0,$f20
    trunc.w.s	$f28,$f28
    sd	$s2,184($sp)
    cvt.s.w	$f4,$f28
    sd	$s1,168($sp)
    sd	$s7,160($sp)
    sdc1	$f26,128($sp)
    sdc1	$f30,120($sp)
    # Line 269
    add.s	$f3,$f20,$f24
    # Line 265
    mov.s	$f30,$f5
    sd	$s4,144($sp)
    # Line 266
    lwc1	$f1,3280($s3)
    # Line 269
    trunc.w.s	$f3,$f3
    sd	$s5,152($sp)
    # Line 266
    mfc1	$s5,$f28
    add.s	$f4,$f4,$f1
    # Line 264
    lwc1	$f28,3284($s3)
    # Line 267
    mfc1	$a0,$f2
    add.s	$f22,$f22,$f1
    # Line 269
    mfc1	$a1,$f3
    # Line 268
    sw	$a0,4($sp)
    # Line 266
    sub.s	$f4,$f4,$f0
    # Line 269
    subu	$a1,$a1,$a0
    move	$s4,$a1
    # Line 267
    sub.s	$f22,$f22,$f24
    # Line 269
    bltz	$a1,.L0dacca48
    sdc1	$f4,72($sp)
    add.s	$f3,$f20,$f0
    sd	$ra,192($sp)
    sd	$s0,176($sp)
    trunc.w.s	$f3,$f3
    li	$s2,-1
    mtc1	$zero,$f26
    la	$s1,sub_0dad0000
    mfc1	$s7,$f3
    mul.s	$f24,$f20,$f20
    addiu	$s1,$s1,-15396
    subu	$s7,$s7,$s5
    addiu	$a2,$s7,1
    b	.L0dacc9bc
    sd	$a2,80($sp)
.L0dacc9a4:
    # Line 272
    lw	$a0,4($sp)
.L0dacc9a8:
    # Line 269
    addiu	$s4,$s4,-1
    # Line 281
    add.s	$f22,$f28,$f22
    # Line 282
    addiu	$a0,$a0,1
    # Line 269
    beq	$s4,$s2,.L0dacca30
    # Line 282
    sw	$a0,4($sp)
.L0dacc9bc:
    ldc1	$f20,72($sp)
    # Line 271
    sw	$s5,0($sp)
    # Line 272
    bltz	$s7,.L0dacc9a8
    move	$s0,$s7
    b	.L0dacca08
    # Line 273
    mov.s	$f12,$f20
.L0dacc9d4:
    # Line 275
    mov.s	$f12,$f30
    bal __glBuildAntiAliasIndex
    mov.s	$f13,$f0
    swc1	$f0,12($sp)
    # Line 276
    lw	$t9,12616($s3)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11768($s3)
.L0dacc9f4:
    # Line 279
    lw	$at,0($sp)
    addiu	$at,$at,1
    # Line 272
    beq	$s0,$s2,.L0dacc9a4
    # Line 279
    sw	$at,0($sp)
    # Line 273
    mov.s	$f12,$f20
.L0dacca08:
    mov.s	$f13,$f22
    mov.s	$f14,$f24
    bal __glBuildAntiAliasIndex
    move	$t9,$s1
    c.lt.s	$f26,$f0
    # Line 272
    addiu	$s0,$s0,-1
    # Line 273
    bc1f	.L0dacc9f4
    # Line 278
    add.s	$f20,$f28,$f20
    b	.L0dacc9d4
    # Line 275
    nop	# was lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
.L0dacca30:
    ldc1	$f26,128($sp)
    ld	$s7,160($sp)
    ld	$s1,168($sp)
    ld	$s0,176($sp)
    ld	$s2,184($sp)
    ld	$ra,192($sp)
.L0dacca48:
    ld	$gp,96($sp)
    # Line 284
    ld	$s3,88($sp)
    ld	$s4,144($sp)
    ld	$s5,152($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,104($sp)
    ldc1	$f24,64($sp)
    ldc1	$f28,112($sp)
    ldc1	$f30,120($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glRenderAntiAliasedCIPoint

.rdata
_lit_3d800000:
    .word 0x3d800000
_lit_3e800000:
    .word 0x3e800000
_lit_3f000000:
    .word 0x3f000000
_lit_41700000:
    .word 0x41700000
_lit_bec00000:
    .word 0xbec00000

