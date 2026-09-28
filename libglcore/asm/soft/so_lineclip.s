# Source: ../soft/so_lineclip.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_lineclip.c
# Total Functions: 3

.text

# Function: __glClipLine
# Declared: Line 82 (Source lines: 83-326)
# Address: 0x0daba3d8 - 0x0dabaa9c (Size: 1732 bytes, Frame: 160)
.globl __glClipLine
.ent __glClipLine
__glClipLine:
    # Line 85
    move	$v1,$a2
    # Line 83
    addiu	$sp,$sp,-544
    sd	$s1,472($sp)
    move	$s1,$a2
    sd	$a2,416($sp)
    sd	$s2,504($sp)
    move	$s2,$a1
    sd	$s4,488($sp)
    move	$s4,$a0
    sd	$s5,480($sp)
    # Line 98
    lw	$s5,12($a1)
    # sd	gp,464(sp)
    lw	$at,0($a1)
    # Line 83
    lui	$v0,0x14
    addiu	$v0,$v0,-11120
    # addu	gp,t9,v0
    sd	$s6,496($sp)
    # Line 97
    lw	$s6,28088($a0)
    # Line 98
    lw	$t9,12($a2)
    nor	$at,$at,$zero
    # Line 97
    ori	$s6,$s6,0x20
    # Line 98
    and	$at,$at,$s6
    beqz	$at,.L0daba454
    or	$s5,$s5,$t9
    # Line 113
    move	$a0,$s4
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,408($sp)
    jalr	$t9
    move	$a2,$s6
    ld	$ra,408($sp)
.L0daba454:
    lw	$a3,0($s1)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$s6
    beqz	$a3,.L0daba484
    # Line 116
    move	$a0,$s4
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,408($sp)
    jalr	$t9
    move	$a2,$s6
    sd	$s3,456($sp)
    ld	$ra,408($sp)
.L0daba484:
    # Line 134
    addiu	$v1,$sp,0
    addiu	$v0,$sp,192
    sd	$s3,456($sp)
    # Line 125
    lw	$at,12496($s4)
    # Line 132
    srl	$s3,$s5,0x6
    beqz	$s3,.L0daba9c0
    sd	$at,448($sp)
    # Line 134
    la	$a0,__glNop
    sd	$ra,408($sp)
    sdc1	$f20,400($sp)
    mtc1	$zero,$f20
    sd	$s0,424($sp)
    lw	$s0,1652($s4)
    addiu	$v1,$v1,144
    addiu	$v0,$v0,144
    sd	$v0,440($sp)
    sd	$v1,432($sp)
.L0daba4c8:
    andi	$a3,$s3,0x1
    beqzl	$a3,.L0daba640
    # Line 202
    srl	$s3,$s3,0x1
    # Line 144
    lwc1	$f4,100($s2)
    lwc1	$f2,4($s0)
    mul.s	$f4,$f4,$f2
    lwc1	$f0,0($s0)
    lwc1	$f1,96($s2)
    # Line 146
    lwc1	$f7,96($s1)
    # Line 144
    mul.s	$f1,$f1,$f0
    # Line 146
    mul.s	$f7,$f7,$f0
    lwc1	$f0,100($s1)
    # Line 144
    lwc1	$f5,8($s0)
    # Line 146
    lwc1	$f3,104($s1)
    mul.s	$f0,$f0,$f2
    lwc1	$f6,108($s1)
    mul.s	$f3,$f3,$f5
    # Line 144
    lwc1	$f2,12($s0)
    # Line 146
    mul.s	$f6,$f6,$f2
    add.s	$f7,$f7,$f0
    # Line 144
    lwc1	$f0,104($s2)
    # Line 146
    add.s	$f3,$f3,$f7
    # Line 144
    mul.s	$f0,$f0,$f5
    add.s	$f1,$f1,$f4
    lwc1	$f7,108($s2)
    # Line 146
    add.s	$f6,$f6,$f3
    # Line 144
    mul.s	$f7,$f7,$f2
    add.s	$f0,$f0,$f1
    # Line 146
    c.lt.s	$f6,$f20
    # Line 144
    add.s	$f7,$f7,$f0
    # Line 146
    li	$a1,1
    bc1fl	.L0daba54c
    move	$a1,$zero
.L0daba54c:
    c.lt.s	$f7,$f20
    nop
    bc1f	.L0daba594
    nop
    beqzl	$a1,.L0daba8d8
    # Line 160
    sub.s	$f15,$f6,$f7
    # ld	gp,464(sp)
    # Line 152
    ld	$s0,424($sp)
    ld	$s1,472($sp)
    ld	$s2,504($sp)
    ld	$s3,456($sp)
    ld	$s4,488($sp)
    ld	$s5,480($sp)
    ld	$ra,408($sp)
    ld	$s6,496($sp)
    ldc1	$f20,400($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0daba594:
    # Line 168
    beqzl	$a1,.L0daba640
    # Line 202
    srl	$s3,$s3,0x1
    # Line 186
    sub.s	$f15,$f7,$f6
    div.s	$f15,$f7,$f15
    addiu	$a0,$sp,0
    ld	$t9,448($sp)
    move	$a1,$s1
    move	$a2,$s2
    jalr	$t9
    sdc1	$f15,392($sp)
    # Line 187
    lwc1	$f1,96($s2)
    lwc1	$f0,96($s1)
    sub.s	$f0,$f0,$f1
    ldc1	$f2,392($sp)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,96($sp)
    # Line 188
    lwc1	$f0,100($s2)
    lwc1	$f3,100($s1)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f0
    swc1	$f3,100($sp)
    # Line 189
    lwc1	$f3,104($s2)
    lwc1	$f1,104($s1)
    sub.s	$f1,$f1,$f3
    mul.s	$f1,$f1,$f2
    add.s	$f1,$f1,$f3
    swc1	$f1,104($sp)
    # Line 190
    lwc1	$f1,108($s2)
    lwc1	$f0,108($s1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 193
    ld	$v0,432($sp)
    la	$a0,__glNop
    # Line 190
    swc1	$f0,108($sp)
    # Line 191
    addiu	$s1,$sp,0
    # Line 192
    lw	$at,0($s2)
    # Line 194
    sw	$a0,8($sp)
    # Line 193
    sw	$v0,4($sp)
    # Line 192
    sw	$at,0($sp)
.L0daba63c:
    # Line 202
    srl	$s3,$s3,0x1
.L0daba640:
    bnez	$s3,.L0daba4c8
    # Line 201
    addiu	$s0,$s0,16
.L0daba648:
    addiu	$a3,$sp,0
    addiu	$v1,$sp,192
    # Line 206
    andi	$s5,$s5,0x3f
    beqz	$s5,.L0daba9d4
    # Line 208
    la	$s0,__gl_frustumClipPlanes
    mtc1	$zero,$f20
    lwc1	$f4,116($s2)
    lwc1	$f5,112($s2)
    lwc1	$f6,120($s2)
    lwc1	$f7,124($s2)
    addiu	$a3,$a3,144
    addiu	$v1,$v1,144
    sd	$v1,440($sp)
    sd	$a3,432($sp)
.L0daba680:
    andi	$at,$s5,0x1
    beqzl	$at,.L0daba78c
    # Line 268
    srl	$s5,$s5,0x1
    # Line 218
    lwc1	$f9,0($s0)
    # Line 220
    lwc1	$f8,112($s1)
    # Line 218
    mul.s	$f1,$f9,$f5
    lwc1	$f10,4($s0)
    # Line 220
    mul.s	$f8,$f8,$f9
    lwc1	$f9,116($s1)
    # Line 218
    lwc1	$f0,8($s0)
    # Line 220
    lwc1	$f2,120($s1)
    mul.s	$f9,$f9,$f10
    mul.s	$f2,$f2,$f0
    lwc1	$f11,124($s1)
    # Line 218
    mul.s	$f3,$f10,$f4
    lwc1	$f10,12($s0)
    # Line 220
    add.s	$f8,$f8,$f9
    mul.s	$f11,$f11,$f10
    add.s	$f2,$f2,$f8
    # Line 218
    mul.s	$f0,$f0,$f6
    add.s	$f1,$f1,$f3
    # Line 220
    add.s	$f11,$f11,$f2
    # Line 218
    mul.s	$f10,$f10,$f7
    add.s	$f0,$f0,$f1
    # Line 220
    c.lt.s	$f11,$f20
    # Line 218
    add.s	$f10,$f10,$f0
    # Line 220
    li	$a1,1
    bc1fl	.L0daba6f4
    move	$a1,$zero
.L0daba6f4:
    c.lt.s	$f10,$f20
    nop
    bc1f	.L0daba73c
    nop
    beqz	$a1,.L0daba978
    # Line 234
    move	$a2,$s1
    # ld	gp,464(sp)
    # Line 226
    ld	$s0,424($sp)
    ld	$s1,472($sp)
    ld	$s2,504($sp)
    ld	$s3,456($sp)
    ld	$s4,488($sp)
    ld	$s5,480($sp)
    ld	$ra,408($sp)
    ld	$s6,496($sp)
    ldc1	$f20,400($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0daba73c:
    # Line 238
    beqz	$a1,.L0daba788
    # Line 256
    move	$a2,$s2
    ld	$t9,448($sp)
    sub.s	$f15,$f10,$f11
    move	$a1,$s1
    addiu	$a0,$sp,0
    jalr	$t9
    div.s	$f15,$f10,$f15
    la	$a0,__glNop
    # Line 259
    ld	$v0,432($sp)
    # Line 258
    lw	$v1,0($s2)
    # Line 260
    sw	$a0,8($sp)
    # Line 259
    sw	$v0,4($sp)
    # Line 258
    sw	$v1,0($sp)
    # Line 257
    addiu	$s1,$sp,0
    # Line 260
    lwc1	$f4,116($s2)
    lwc1	$f5,112($s2)
    lwc1	$f6,120($s2)
    lwc1	$f7,124($s2)
.L0daba788:
    # Line 268
    srl	$s5,$s5,0x1
.L0daba78c:
    bnez	$s5,.L0daba680
    # Line 267
    addiu	$s0,$s0,16
.L0daba794:
    # Line 281
    lwc1	$f2,3284($s4)
    div.s	$f2,$f2,$f7
    # Line 276
    lwc1	$f1,1624($s4)
    # Line 277
    lwc1	$f0,1632($s4)
    # Line 289
    mul.s	$f13,$f1,$f5
    # Line 278
    lwc1	$f11,1640($s4)
    # Line 290
    mul.s	$f12,$f0,$f4
    # Line 287
    mul.s	$f3,$f6,$f11
    # Line 289
    mul.s	$f13,$f13,$f2
    # Line 290
    mul.s	$f12,$f12,$f2
    # Line 273
    lwc1	$f9,1628($s4)
    # Line 287
    mul.s	$f3,$f3,$f2
    # Line 274
    lwc1	$f8,1636($s4)
    # Line 289
    add.s	$f13,$f13,$f9
    # Line 275
    lwc1	$f10,1644($s4)
    # Line 290
    add.s	$f12,$f12,$f8
    # Line 287
    add.s	$f3,$f3,$f10
    # Line 288
    swc1	$f2,140($s2)
    # Line 290
    swc1	$f12,132($s2)
    # Line 289
    swc1	$f13,128($s2)
    # Line 287
    swc1	$f3,136($s2)
    # Line 292
    lwc1	$f3,124($s1)
    lwc1	$f2,3284($s4)
    div.s	$f2,$f2,$f3
    # Line 298
    lwc1	$f3,120($s1)
    mul.s	$f3,$f3,$f11
    # Line 293
    lwc1	$f11,112($s1)
    # Line 300
    mul.s	$f1,$f1,$f11
    # Line 294
    lwc1	$f11,116($s1)
    # Line 301
    mul.s	$f0,$f0,$f11
    # Line 300
    mul.s	$f1,$f1,$f2
    # Line 301
    mul.s	$f0,$f0,$f2
    # Line 298
    mul.s	$f3,$f3,$f2
    # Line 300
    add.s	$f1,$f1,$f9
    # Line 301
    add.s	$f0,$f0,$f8
    # Line 298
    add.s	$f3,$f3,$f10
    # Line 299
    swc1	$f2,140($s1)
    # Line 301
    swc1	$f0,132($s1)
    # Line 300
    swc1	$f1,128($s1)
    # Line 298
    swc1	$f3,136($s1)
    # Line 301
    lw	$a3,1304($s4)
    li	$at,7424
    beq	$a3,$at,.L0daba9e8
    ld	$a3,416($sp)
    # Line 320
    lw	$v0,0($s2)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s6
    beqzl	$v0,.L0daba870
    # Line 322
    lw	$v1,0($s1)
    lw	$t9,8($s2)
    move	$a0,$s4
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s6
    lw	$v1,0($s1)
.L0daba870:
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s6
    beqzl	$v1,.L0daba898
    # Line 324
    lw	$t9,12480($s4)
    # Line 323
    lw	$t9,8($s1)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    # Line 324
    lw	$t9,12480($s4)
.L0daba898:
    move	$a0,$s4
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
.L0daba8a8:
    # ld	gp,464(sp)
    # Line 326
    ld	$s0,424($sp)
    ld	$s1,472($sp)
    ld	$s2,504($sp)
    ld	$s3,456($sp)
    ld	$s4,488($sp)
    ld	$s5,480($sp)
    ld	$ra,408($sp)
    ld	$s6,496($sp)
    ldc1	$f20,400($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0daba8d8:
    # Line 160
    div.s	$f15,$f6,$f15
    addiu	$a0,$sp,192
    ld	$t9,448($sp)
    move	$a1,$s2
    move	$a2,$s1
    jalr	$t9
    sdc1	$f15,384($sp)
    # Line 161
    lwc1	$f1,96($s1)
    lwc1	$f0,96($s2)
    sub.s	$f0,$f0,$f1
    ldc1	$f2,384($sp)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,288($sp)
    # Line 162
    lwc1	$f0,100($s1)
    lwc1	$f3,100($s2)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f0
    swc1	$f3,292($sp)
    # Line 163
    lwc1	$f3,104($s1)
    lwc1	$f1,104($s2)
    sub.s	$f1,$f1,$f3
    mul.s	$f1,$f1,$f2
    add.s	$f1,$f1,$f3
    swc1	$f1,296($sp)
    # Line 164
    lwc1	$f1,108($s1)
    lwc1	$f0,108($s2)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 167
    ld	$at,440($sp)
    la	$a0,__glNop
    # Line 164
    swc1	$f0,300($sp)
    # Line 165
    addiu	$s2,$sp,192
    # Line 166
    lw	$a3,0($s1)
    # Line 168
    sw	$a0,200($sp)
    # Line 167
    sw	$at,196($sp)
    # Line 168
    b	.L0daba63c
    # Line 166
    sw	$a3,192($sp)
.L0daba978:
    # Line 234
    ld	$t9,448($sp)
    sub.s	$f15,$f11,$f10
    move	$a1,$s2
    addiu	$a0,$sp,192
    jalr	$t9
    div.s	$f15,$f11,$f15
    # Line 238
    lwc1	$f4,308($sp)
    lwc1	$f5,304($sp)
    lwc1	$f6,312($sp)
    lwc1	$f7,316($sp)
    # Line 235
    addiu	$s2,$sp,192
    la	$a0,__glNop
    # Line 237
    ld	$v1,440($sp)
    # Line 236
    lw	$v0,0($s1)
    # Line 238
    sw	$a0,200($sp)
    # Line 237
    sw	$v1,196($sp)
    # Line 238
    b	.L0daba788
    # Line 236
    sw	$v0,192($sp)
.L0daba9c0:
    # Line 202
    la	$a0,__glNop
    sd	$ra,408($sp)
    sd	$s0,424($sp)
    b	.L0daba648
    sdc1	$f20,400($sp)
.L0daba9d4:
    # Line 268
    lwc1	$f4,116($s2)
    lwc1	$f5,112($s2)
    lwc1	$f6,120($s2)
    b	.L0daba794
    lwc1	$f7,124($s2)
.L0daba9e8:
    # Line 301
    lw	$a3,0($a3)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$s6
    andi	$a3,$a3,0x19
    beqz	$a3,.L0dabaa14
    # Line 309
    ld	$t9,416($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    move	$a0,$s4
    jalr	$t9
    andi	$a2,$s6,0x19
.L0dabaa14:
    ld	$v0,416($sp)
    # Line 311
    addiu	$v0,$v0,144
    sw	$v0,4($s1)
    lw	$at,0($s2)
    li	$s0,-26
    nor	$at,$at,$zero
    and	$at,$at,$s6
    and	$at,$at,$s0
    beqzl	$at,.L0dabaa54
    # Line 315
    lw	$v1,0($s1)
    lw	$t9,8($s2)
    move	$a0,$s4
    move	$a1,$s2
    jalr	$t9
    and	$a2,$s0,$s6
    lw	$v1,0($s1)
.L0dabaa54:
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s6
    and	$v1,$v1,$s0
    beqzl	$v1,.L0dabaa80
    # Line 319
    lw	$t9,12480($s4)
    # Line 316
    lw	$t9,8($s1)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    and	$a2,$s0,$s6
    # Line 319
    lw	$t9,12480($s4)
.L0dabaa80:
    move	$a0,$s4
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    # Line 320
    addiu	$a3,$s1,144
    b	.L0daba8a8
    sw	$a3,4($s1)
.end __glClipLine

# Function: __glFastClipSmoothLine
# Declared: Line 328 (Source lines: 329-352)
# Address: 0x0dabaa9c - 0x0dabab5c (Size: 192 bytes, Frame: 208)
.globl __glFastClipSmoothLine
.ent __glFastClipSmoothLine
__glFastClipSmoothLine:
    # Line 329
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    lw	$a5,12($a2)
    lw	$a4,12($a1)
    lui	$v0,0x14
    addiu	$v0,$v0,-12852
    or	$at,$a4,$a5
    beqz	$at,.L0dabaaf4
    addu	$gp,$t9,$v0
    and	$v1,$a4,$a5
    beqz	$v1,.L0dabaad8
    # Line 345
    nop	# was lw $t9, -28308($gp) # &__glClipLine
    ld	$gp,32($sp)
    # Line 343
    jr	$ra
    addiu	$sp,$sp,80
.L0dabaad8:
    sd	$ra,40($sp)
    # Line 345
    bal __glClipLine
    nop
    # Line 346
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabaaf4:
    sd	$a0,8($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    # Line 348
    lw	$a2,28084($a0)
    move	$t9,$a1
    # Line 349
    lw	$t9,8($t9)
    sd	$ra,40($sp)
    # Line 348
    ori	$a2,$a2,0x1
    # Line 349
    jal	__glClipLine
    sd	$a2,0($sp)
    # Line 350
    ld	$t9,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a2,0($sp)
    ld	$t9,8($sp)
    # Line 351
    move	$a0,$t9
    lw	$t9,12480($t9)
    ld	$a1,24($sp)
    jalr	$t9
    ld	$a2,16($sp)
    # Line 352
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glFastClipSmoothLine

# Function: __glFastClipFlatLine
# Declared: Line 354 (Source lines: 355-388)
# Address: 0x0dabab5c - 0x0dabac28 (Size: 204 bytes, Frame: 208)
.globl __glFastClipFlatLine
.ent __glFastClipFlatLine
__glFastClipFlatLine:
    # Line 355
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    lw	$a5,12($a2)
    lw	$a4,12($a1)
    lui	$v0,0x14
    addiu	$v0,$v0,-13044
    or	$at,$a4,$a5
    beqz	$at,.L0dababb4
    addu	$gp,$t9,$v0
    and	$v1,$a4,$a5
    beqz	$v1,.L0dabab98
    # Line 371
    nop	# was lw $t9, -28308($gp) # &__glClipLine
    ld	$gp,32($sp)
    # Line 369
    jr	$ra
    addiu	$sp,$sp,80
.L0dabab98:
    sd	$ra,40($sp)
    # Line 371
    bal __glClipLine
    nop
    # Line 372
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dababb4:
    sd	$a0,8($sp)
    sd	$a1,24($sp)
    sd	$ra,40($sp)
    move	$t9,$a1
    sd	$a2,16($sp)
    # Line 381
    move	$a2,$a0
    # Line 374
    lw	$a2,28084($a2)
    # Line 381
    lw	$t9,8($t9)
    li	$a3,-2
    sd	$a2,0($sp)
    jal	__glClipLine
    and	$a2,$a2,$a3
    # Line 384
    ld	$t9,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    ld	$a2,0($sp)
    ld	$a0,8($sp)
    jalr	$t9
    ori	$a2,$a2,0x1
    ld	$t9,8($sp)
    # Line 387
    move	$a0,$t9
    lw	$t9,12480($t9)
    ld	$a1,24($sp)
    jalr	$t9
    ld	$a2,16($sp)
    # Line 388
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glFastClipFlatLine

