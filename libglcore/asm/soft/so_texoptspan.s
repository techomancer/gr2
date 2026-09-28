# Source: ../soft/so_texoptspan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_texoptspan.c
# Total Functions: 12

.text

# Function: __glTextureRGB_F_F_Span
# Declared: Line 85 (Source lines: 86-322)
# Address: 0x0dafeb2c - 0x0daffc94 (Size: 4456 bytes, Frame: 160)
.globl __glTextureRGB_F_F_Span
.ent __glTextureRGB_F_F_Span
__glTextureRGB_F_F_Span:
    # Line 86
    move	$v0,$a0
    # Line 115
    lwc1	$f5,30240($a0)
    # Line 113
    lwc1	$f6,30228($a0)
    # Line 111
    lw	$a3,30468($a0)
    # Line 86
    addiu	$sp,$sp,-416
    sd	$s0,272($sp)
    sd	$s2,312($sp)
    sd	$s3,304($sp)
    sd	$s4,280($sp)
    sd	$s5,256($sp)
    sd	$s6,296($sp)
    sd	$s7,248($sp)
    sd	$s8,240($sp)
    sdc1	$f20,184($sp)
    sdc1	$f22,168($sp)
    sdc1	$f24,160($sp)
    sdc1	$f26,176($sp)
    sdc1	$f28,152($sp)
    sdc1	$f30,144($sp)
    sd	$ra,288($sp)
    sd	$s1,264($sp)
    # Line 109
    lw	$s1,28216($a0)
    sd	$gp,320($sp)
    # Line 86
    lui	$v1,0x10
    addiu	$v1,$v1,-29380
    addu	$gp,$t9,$v1
    # Line 114
    lwc1	$f1,30232($a0)
    # Line 107
    lw	$a4,2376($a0)
    # Line 93
    lwc1	$f0,3280($a0)
    sdc1	$f1,128($sp)
    # Line 117
    lw	$at,30252($a0)
    sdc1	$f0,136($sp)
    # Line 107
    lw	$a4,0($a4)
    # Line 117
    addiu	$at,$at,-1
    bltz	$at,.L0daffab8
    sd	$at,344($sp)
    addiu	$s6,$sp,48
    li	$a5,-1
    li	$s3,1
    li	$s5,4
    li	$a0,32
    ldc1	$f7,_lit8_4030000000000000
    dmtc1	$zero,$f26
    mtc1	$zero,$f20
    li	$t3,10497
    addiu	$at,$sp,12
    sd	$at,200($sp)
    addiu	$a2,$sp,0
    xori	$a1,$a4,0x2101
    sltiu	$a1,$a1,1
    addiu	$a2,$a2,-4
    sd	$a2,328($sp)
    b	.L0dafeff8
    sd	$a1,336($sp)
.L0dafec04:
    ldc1	$f6,_lit8_bff0000000000000
    # Line 190
    add.d	$f6,$f24,$f6
    c.lt.d	$f6,$f26
    li	$v0,1
    bc1fl	.L0dafec1c
    move	$v0,$zero
.L0dafec1c:
    beqz	$v0,.L0daffa1c
    add.d	$f5,$f24,$f5
    c.lt.d	$f5,$f26
.L0dafec28:
    nop
    bc1fl	.L0daff764
    # Line 192
    add.d	$f7,$f24,$f7
    sdc1	$f4,360($sp)
    li	$s8,15
.L0dafec3c:
    # Line 209
    # lw $t9, -22924($gp) # &floor
.L0dafec40:
    sdc1	$f4,360($sp)
    mov.d	$f12,$f24
    jal	floor
    mov.s	$f28,$f4
    trunc.w.d	$f1,$f0
    mfc1	$a3,$f1
    nop
    # Line 210
    addiu	$v1,$a3,-1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 209
    sw	$a3,20($sp)
    # Line 213
    addiu	$v0,$a3,1
    # Line 210
    bc1f	.L0dafec84
    sw	$v1,16($sp)
    # Line 211
    sw	$zero,16($sp)
.L0dafec84:
    # Line 213
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f28,$f2
    nop
    bc1f	.L0dafecb0
    sw	$v0,24($sp)
    # Line 214
    trunc.w.s	$f3,$f28
    mfc1	$v0,$f3
    nop
    sw	$v0,24($sp)
.L0dafecb0:
    # Line 216
    addiu	$a1,$v0,1
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f28,$f0
    nop
    bc1f	.L0dafece0
    sw	$a1,28($sp)
    # Line 217
    trunc.w.s	$f1,$f28
    mfc1	$a2,$f1
    nop
    sw	$a2,28($sp)
.L0dafece0:
    # Line 222
    # lw $t9, -22924($gp) # &floor
.L0dafece4:
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f6,$f22,$f0
    ldc1	$f7,_lit8_4030000000000000
    ld	$a7,192($sp)
    mul.d	$f6,$f6,$f7
    lwc1	$f28,3280($a7)
    cvt.d.s	$f28,$f28
    add.d	$f6,$f6,$f28
    trunc.w.d	$f6,$f6
    mfc1	$a4,$f6
    # Line 227
    mov.d	$f12,$f24
    # lw $t9, -22924($gp) # &floor
    # Line 223
    sll	$a6,$a4,0x2
    addu	$a6,$a6,$s1
    # Line 224
    lwc1	$f5,24($a6)
    # Line 223
    lwc1	$f4,88($a6)
    li	$a5,32
    # Line 224
    swc1	$f5,36($sp)
    # Line 223
    swc1	$f4,32($sp)
    # Line 226
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s1
    lwc1	$f3,24($a5)
    # Line 225
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s1
    lwc1	$f2,88($a3)
    # Line 226
    swc1	$f3,44($sp)
    # Line 227
    jal	floor
    # Line 225
    swc1	$f2,40($sp)
    # Line 227
    sub.d	$f4,$f24,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f4,$f4,$f7
    li	$a5,-1
    add.d	$f4,$f4,$f28
    li	$t3,10497
    # Line 235
    addiu	$a6,$sp,112
    move	$s0,$zero
    # Line 227
    trunc.w.d	$f4,$f4
    ldc1	$f6,368($sp)
    ldc1	$f5,376($sp)
    ld	$a4,384($sp)
    mfc1	$v0,$f4
    ld	$a3,392($sp)
    li	$a0,32
    # Line 228
    sll	$a1,$v0,0x2
    addu	$a1,$a1,$s1
    # Line 229
    lwc1	$f3,24($a1)
    # Line 231
    subu	$v1,$a0,$v0
    # Line 230
    sll	$at,$v0,0x1e
    subu	$at,$at,$v0
    ld	$v0,192($sp)
    # Line 228
    lwc1	$f2,88($a1)
    # Line 229
    swc1	$f3,116($sp)
    # Line 231
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lwc1	$f1,24($v1)
    # Line 230
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    lwc1	$f0,88($at)
    # Line 228
    swc1	$f2,112($sp)
    # Line 231
    swc1	$f1,124($sp)
    # Line 230
    swc1	$f0,120($sp)
    # Line 235
    lwc1	$f4,0($a6)
.L0dafedec:
    addiu	$t0,$sp,32
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s6
    # Line 237
    lwc1	$f1,4($t0)
    lwc1	$f2,8($t0)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($t0)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($t0)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 235
    addiu	$s0,$s0,1
    addiu	$a6,$a6,4
    # Line 237
    swc1	$f3,12($a7)
    swc1	$f2,8($a7)
    swc1	$f1,4($a7)
    swc1	$f0,0($a7)
    # Line 235
    bnel	$s0,$s5,.L0dafedec
    lwc1	$f4,0($a6)
    # Line 272
    mov.s	$f4,$f20
    # Line 273
    move	$s0,$zero
    li	$t0,3
    # Line 260
    addiu	$s4,$sp,16
    # Line 235
    beqz	$s7,.L0daff78c
    # Line 272
    mov.s	$f8,$f20
.L0dafee54:
    li	$at,2
.L0dafee58:
    # Line 247
    beq	$s7,$at,.L0daff7e4
    # Line 259
    mov.s	$f9,$f20
    # Line 273
    addiu	$s4,$sp,16
    # Line 272
    mov.s	$f9,$f20
.L0dafee68:
    # Line 273
    addiu	$t2,$sp,0
    li	$a6,3
    sllv	$t1,$s3,$t0
    and	$t1,$t1,$s8
    # Line 276
    sllv	$at,$s3,$a6
    # Line 274
    addiu	$a6,$a6,-1
    # Line 273
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s6
    # Line 276
    and	$at,$at,$s2
    beqz	$at,.L0daff268
    nop
    # Line 277
    lwc1	$f3,0($a7)
.L0dafee9c:
    # Line 279
    lwc1	$f2,164($s1)
    # Line 278
    lwc1	$f1,160($s1)
    # Line 279
    mul.s	$f2,$f2,$f3
    # Line 277
    lwc1	$f0,156($s1)
    # Line 278
    mul.s	$f1,$f1,$f3
    # Line 277
    mul.s	$f0,$f0,$f3
    # Line 279
    add.s	$f8,$f2,$f8
    # Line 278
    add.s	$f4,$f1,$f4
    # Line 277
    add.s	$f9,$f0,$f9
.L0dafeec0:
    # Line 276
    sllv	$v1,$s3,$a6
    and	$v1,$v1,$s2
    beqz	$v1,.L0daff2c4
    # Line 274
    addiu	$a6,$a6,-1
    # Line 277
    lwc1	$f2,4($a7)
.L0dafeed4:
    # Line 279
    lwc1	$f1,164($s1)
    # Line 278
    lwc1	$f0,160($s1)
    # Line 279
    mul.s	$f1,$f1,$f2
    # Line 277
    lwc1	$f3,156($s1)
    # Line 278
    mul.s	$f0,$f0,$f2
    # Line 277
    mul.s	$f3,$f3,$f2
    # Line 279
    add.s	$f8,$f1,$f8
    # Line 278
    add.s	$f4,$f0,$f4
    # Line 277
    add.s	$f9,$f3,$f9
.L0dafeef8:
    # Line 276
    sllv	$a1,$s3,$a6
    and	$a1,$a1,$s2
    beqz	$a1,.L0daff320
    # Line 274
    addiu	$a6,$a6,-1
    # Line 277
    lwc1	$f1,8($a7)
.L0dafef0c:
    # Line 279
    lwc1	$f0,164($s1)
    # Line 278
    lwc1	$f3,160($s1)
    # Line 279
    mul.s	$f0,$f0,$f1
    # Line 277
    lwc1	$f2,156($s1)
    # Line 278
    mul.s	$f3,$f3,$f1
    # Line 277
    mul.s	$f2,$f2,$f1
    # Line 279
    add.s	$f8,$f0,$f8
    # Line 278
    add.s	$f4,$f3,$f4
    # Line 277
    add.s	$f9,$f2,$f9
.L0dafef30:
    # Line 273
    addiu	$t0,$t0,-1
    # Line 276
    sllv	$a2,$s3,$a6
    and	$a2,$a2,$s2
    beqz	$a2,.L0daff37c
    # Line 273
    addiu	$s0,$s0,1
    # Line 277
    lwc1	$f0,12($a7)
.L0dafef48:
    # Line 279
    lwc1	$f3,164($s1)
    # Line 278
    lwc1	$f2,160($s1)
    # Line 279
    mul.s	$f3,$f3,$f0
    # Line 277
    lwc1	$f1,156($s1)
    # Line 278
    mul.s	$f2,$f2,$f0
    # Line 277
    mul.s	$f1,$f1,$f0
    # Line 279
    add.s	$f8,$f3,$f8
    # Line 278
    add.s	$f4,$f2,$f4
    # Line 277
    add.s	$f9,$f1,$f9
.L0dafef6c:
    # Line 273
    bne	$s0,$s5,.L0dafee68
    addiu	$s4,$s4,4
    li	$at,8448
.L0dafef78:
    # Line 255
    beq	$a4,$at,.L0daff9d8
    li	$a1,7681
.L0dafef80:
    li	$v1,0x8062
    # Line 296
    beq	$a4,$v1,.L0daff780
    ld	$a2,336($sp)
    beq	$a4,$a1,.L0daff780
    move	$a6,$zero
    or	$a2,$a6,$a2
.L0dafef98:
    beqzl	$a2,.L0daff968
    # Line 309
    lwc1	$f1,3284($v0)
    # Line 299
    lwc1	$f2,30756($v0)
    mul.s	$f2,$f2,$f9
    swc1	$f2,0($a3)
    # Line 300
    lwc1	$f1,30760($v0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a3)
    # Line 301
    lwc1	$f0,30764($v0)
    mul.s	$f0,$f0,$f8
    swc1	$f0,8($a3)
.L0dafefc4:
    # Line 318
    lwc1	$f2,30396($v0)
    # Line 316
    lwc1	$f3,30384($v0)
    # Line 318
    add.s	$f5,$f2,$f5
    # Line 316
    add.s	$f6,$f3,$f6
    # Line 317
    ldc1	$f0,128($sp)
    lwc1	$f1,30388($v0)
    # Line 117
    ld	$at,344($sp)
    # Line 319
    addiu	$a3,$a3,16
    # Line 317
    add.s	$f0,$f1,$f0
    # Line 117
    addiu	$at,$at,-1
    sd	$at,344($sp)
    beq	$at,$a5,.L0daffab8
    sdc1	$f0,128($sp)
.L0dafeff8:
    # Line 118
    lwc1	$f30,3284($v0)
    div.s	$f30,$f30,$f5
    # Line 134
    move	$s2,$zero
    # Line 122
    move	$s7,$zero
    ldc1	$f4,_lit8_4000000000000000
    # Line 136
    li	$s0,-1
    # Line 134
    mul.s	$f24,$f6,$f30
    # Line 124
    lw	$a6,228($s1)
    ldc1	$f9,_lit8_3ff0000000000000
    # Line 134
    lw	$v1,4($s1)
    # Line 131
    lwc1	$f28,32($a6)
    # Line 127
    lw	$s4,0($a6)
    # Line 125
    lw	$a2,44($a6)
    # Line 134
    mul.s	$f24,$f24,$f28
    # Line 128
    lw	$s8,20($a6)
    sd	$a2,224($sp)
    sd	$s4,232($sp)
    # Line 134
    ldc1	$f0,136($sp)
    # Line 129
    lw	$a1,24($a6)
    # Line 128
    addiu	$s4,$s8,-1
    # Line 134
    sub.s	$f24,$f24,$f0
    # Line 129
    addiu	$a1,$a1,-1
    sd	$a1,208($sp)
    # Line 134
    bne	$v1,$t3,.L0daff0cc
    cvt.d.s	$f22,$f24
    # Line 136
    ld	$s7,328($sp)
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    sd	$v0,192($sp)
    add.s	$f8,$f4,$f24
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sd	$a6,216($sp)
    c.lt.s	$f8,$f20
    sdc1	$f5,376($sp)
    addiu	$s0,$s0,1
    bc1f	.L0daff3d8
    sdc1	$f6,368($sp)
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$at,$f0
    nop
    and	$at,$at,$s4
    b	.L0daff3f8
    sw	$at,4($s7)
.L0daff0cc:
    ldc1	$f8,_lit8_bff0000000000000
    # Line 145
    add.d	$f8,$f22,$f8
    c.lt.d	$f8,$f26
    li	$a7,1
    bc1fl	.L0daff0e4
    move	$a7,$zero
.L0daff0e4:
    beqz	$a7,.L0daffa00
    add.d	$f4,$f22,$f4
    c.lt.d	$f4,$f26
.L0daff0f0:
    nop
    bc1fl	.L0daff738
    # Line 147
    add.d	$f9,$f22,$f9
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    li	$s2,15
.L0daff114:
    sd	$a6,216($sp)
.L0daff118:
    sdc1	$f30,352($sp)
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    # Line 164
    # lw $t9, -23708($gp) # &__glFloor
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    jal	__glFloor
    mov.s	$f12,$f24
    # Line 165
    addiu	$v1,$v0,-1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$a3,10497
    # Line 164
    sw	$v0,4($sp)
    # Line 165
    c.lt.s	$f0,$f20
    ldc1	$f5,352($sp)
    # Line 168
    addiu	$a4,$v0,1
    # Line 165
    bc1f	.L0daff16c
    sw	$v1,0($sp)
    # Line 166
    sw	$zero,0($sp)
.L0daff16c:
    # Line 168
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f28,$f1
    nop
    bc1f	.L0daff198
    sw	$a4,8($sp)
    # Line 169
    trunc.w.s	$f2,$f28
    mfc1	$a4,$f2
    nop
    sw	$a4,8($sp)
.L0daff198:
    # Line 171
    addiu	$a1,$a4,1
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f28,$f3
    nop
    bc1f	.L0daff1c8
    sw	$a1,12($sp)
    # Line 172
    trunc.w.s	$f0,$f28
    mfc1	$a2,$f0
    nop
    sw	$a2,12($sp)
.L0daff1c8:
    ldc1	$f30,128($sp)
    # Line 179
    mul.s	$f30,$f30,$f5
    # Line 176
    ld	$v1,216($sp)
    lwc1	$f4,36($v1)
    # Line 179
    mul.s	$f30,$f30,$f4
    move	$s8,$zero
    # Line 181
    li	$s0,-1
    # Line 179
    ldc1	$f0,136($sp)
    # Line 181
    ld	$s4,200($sp)
    # Line 179
    lw	$at,8($s1)
    sub.s	$f30,$f30,$f0
    ldc1	$f7,_lit8_3ff0000000000000
    ldc1	$f5,_lit8_4000000000000000
    bne	$at,$a3,.L0dafec04
    cvt.d.s	$f24,$f30
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0daff574
    addiu	$s0,$s0,1
    ld	$a0,216($sp)
    # Line 183
    lw	$a0,24($a0)
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a2,208($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$a2
    b	.L0daff598
    sw	$a1,4($s4)
.L0daff268:
    # Line 276
    bnezl	$t1,.L0dafee9c
    # Line 277
    lwc1	$f3,0($a7)
    # Line 281
    ld	$a2,224($sp)
    lw	$a1,0($s4)
    lw	$v1,0($t2)
    sllv	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    ld	$v1,232($sp)
    lwc1	$f0,0($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    # Line 283
    lwc1	$f3,8($at)
    # Line 282
    lwc1	$f2,4($at)
    # Line 283
    mul.s	$f3,$f3,$f0
    # Line 281
    lwc1	$f1,0($at)
    # Line 282
    mul.s	$f2,$f2,$f0
    # Line 281
    mul.s	$f1,$f1,$f0
    # Line 283
    add.s	$f8,$f3,$f8
    # Line 282
    add.s	$f4,$f2,$f4
    b	.L0dafeec0
    # Line 281
    add.s	$f9,$f1,$f9
.L0daff2c4:
    # Line 276
    bnezl	$t1,.L0dafeed4
    # Line 277
    lwc1	$f2,4($a7)
    # Line 281
    ld	$a2,224($sp)
    lw	$a1,0($s4)
    lw	$v1,4($t2)
    sllv	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    ld	$v1,232($sp)
    lwc1	$f3,4($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    # Line 283
    lwc1	$f2,8($at)
    # Line 282
    lwc1	$f1,4($at)
    # Line 283
    mul.s	$f2,$f2,$f3
    # Line 281
    lwc1	$f0,0($at)
    # Line 282
    mul.s	$f1,$f1,$f3
    # Line 281
    mul.s	$f0,$f0,$f3
    # Line 283
    add.s	$f8,$f2,$f8
    # Line 282
    add.s	$f4,$f1,$f4
    b	.L0dafeef8
    # Line 281
    add.s	$f9,$f0,$f9
.L0daff320:
    # Line 276
    bnezl	$t1,.L0dafef0c
    # Line 277
    lwc1	$f1,8($a7)
    # Line 281
    ld	$a2,224($sp)
    lw	$a1,0($s4)
    lw	$v1,8($t2)
    sllv	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    ld	$v1,232($sp)
    lwc1	$f2,8($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    # Line 283
    lwc1	$f1,8($at)
    # Line 282
    lwc1	$f0,4($at)
    # Line 283
    mul.s	$f1,$f1,$f2
    # Line 281
    lwc1	$f3,0($at)
    # Line 282
    mul.s	$f0,$f0,$f2
    # Line 281
    mul.s	$f3,$f3,$f2
    # Line 283
    add.s	$f8,$f1,$f8
    # Line 282
    add.s	$f4,$f0,$f4
    b	.L0dafef30
    # Line 281
    add.s	$f9,$f3,$f9
.L0daff37c:
    # Line 276
    bnezl	$t1,.L0dafef48
    # Line 277
    lwc1	$f0,12($a7)
    # Line 281
    ld	$a2,224($sp)
    lw	$a1,0($s4)
    lw	$v1,12($t2)
    sllv	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    ld	$v1,232($sp)
    lwc1	$f1,12($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    # Line 283
    lwc1	$f0,8($at)
    # Line 282
    lwc1	$f3,4($at)
    # Line 283
    mul.s	$f0,$f0,$f1
    # Line 281
    lwc1	$f2,0($at)
    # Line 282
    mul.s	$f3,$f3,$f1
    # Line 281
    mul.s	$f2,$f2,$f1
    # Line 283
    add.s	$f8,$f0,$f8
    # Line 282
    add.s	$f4,$f3,$f4
    b	.L0dafef6c
    # Line 281
    add.s	$f9,$f2,$f9
.L0daff3d8:
    # Line 140
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$at,$f1
    nop
    and	$at,$at,$s4
    sw	$at,4($s7)
.L0daff3f8:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0daff450
    addiu	$s0,$s0,1
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$s4
    b	.L0daff470
    sw	$v1,8($s7)
.L0daff450:
    # Line 140
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$s4
    sw	$a1,8($s7)
.L0daff470:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0daff4c8
    addiu	$s0,$s0,1
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a2,$f0
    nop
    and	$a2,$a2,$s4
    b	.L0daff4e8
    sw	$a2,12($s7)
.L0daff4c8:
    # Line 140
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$at,$f1
    nop
    and	$at,$at,$s4
    sw	$at,12($s7)
.L0daff4e8:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0daff548
    # Line 140
    nop	# was lw $t9, -22924($gp) # &floor
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    sdc1	$f30,352($sp)
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    li	$a3,10497
    ldc1	$f5,352($sp)
    and	$v1,$v1,$s4
    b	.L0daff56c
    sw	$v1,16($s7)
.L0daff548:
    sdc1	$f30,352($sp)
    # Line 140
    jalr	$t9
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$a1,$f1
    li	$a3,10497
    ldc1	$f5,352($sp)
    and	$a1,$a1,$s4
    sw	$a1,16($s7)
.L0daff56c:
    # Line 143
    b	.L0daff1c8
    li	$s7,1
.L0daff574:
    # Line 185
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f2,$f0
    ld	$at,208($sp)
    mfc1	$a2,$f2
    nop
    and	$a2,$a2,$at
    sw	$a2,4($s4)
.L0daff598:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0daff5fc
    addiu	$s0,$s0,1
    ld	$v0,216($sp)
    # Line 183
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,208($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0daff620
    sw	$v1,8($s4)
.L0daff5fc:
    # Line 185
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$at,208($sp)
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$at
    sw	$a2,8($s4)
.L0daff620:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0daff684
    addiu	$s0,$s0,1
    ld	$v0,216($sp)
    # Line 183
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,208($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0daff6a8
    sw	$v1,12($s4)
.L0daff684:
    # Line 185
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$at,208($sp)
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$at
    sw	$a2,12($s4)
.L0daff6a8:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0daff70c
    # Line 188
    addiu	$s7,$s7,1
    ld	$v0,216($sp)
    # Line 183
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,208($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0daff730
    sw	$v1,16($s4)
.L0daff70c:
    # Line 185
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$at,208($sp)
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$at
    sw	$a2,16($s4)
.L0daff730:
    # Line 188
    b	.L0dafece4
    # Line 222
    nop	# was lw $t9, -22924($gp) # &floor
.L0daff738:
    # Line 147
    c.lt.d	$f9,$f26
    nop
    bc1fl	.L0daff928
    # Line 149
    c.lt.s	$f24,$f20
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    li	$s2,14
.L0daff764:
    # Line 192
    c.lt.d	$f7,$f26
    nop
    bc1fl	.L0daff950
    # Line 194
    c.lt.s	$f30,$f20
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    li	$s8,14
.L0daff780:
    # Line 296
    li	$a6,1
    b	.L0dafef98
    or	$a2,$a6,$a2
.L0daff78c:
    # Line 235
    bnez	$s2,.L0dafee58
    li	$at,2
    # Line 247
    ld	$a1,224($sp)
    # Line 246
    lw	$v1,0($sp)
    # Line 235
    bnez	$s8,.L0dafee54
    # Line 247
    addiu	$a7,$sp,48
    # Line 245
    mov.s	$f9,$f20
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 247
    move	$s0,$zero
    li	$t0,3
    # Line 246
    lw	$at,16($sp)
    # Line 247
    sllv	$t0,$t0,$a1
    sll	$t0,$t0,0x2
    # Line 246
    sllv	$at,$at,$a1
    addu	$at,$at,$v1
    sll	$a6,$at,0x2
    subu	$a6,$a6,$at
    ld	$at,232($sp)
    sll	$a6,$a6,0x2
    b	.L0daffb68
    addu	$a6,$a6,$at
.L0daff7e4:
    # Line 259
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 260
    move	$s0,$zero
    addiu	$t2,$sp,0
.L0daff7f4:
    sll	$a7,$s0,0x2
    ld	$at,224($sp)
    lw	$a6,0($s4)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s6
    sllv	$a6,$a6,$at
    # Line 263
    lw	$a1,0($t2)
    lw	$at,12($t2)
    lw	$v1,8($t2)
    addu	$a1,$a1,$a6
    addu	$at,$at,$a6
    addu	$v1,$v1,$a6
    sll	$t0,$v1,0x2
    subu	$t0,$t0,$v1
    lw	$v1,4($t2)
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    addu	$v1,$v1,$a6
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,232($sp)
    lwc1	$f13,12($a7)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 264
    lwc1	$f11,4($a2)
    # Line 265
    lwc1	$f3,8($a2)
    # Line 264
    mul.s	$f11,$f11,$f13
    # Line 263
    lwc1	$f16,8($a7)
    # Line 265
    mul.s	$f3,$f3,$f13
    # Line 263
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a1
    # Line 264
    lwc1	$f14,4($t0)
    mul.s	$f14,$f14,$f16
    # Line 263
    lwc1	$f0,0($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 264
    lwc1	$f2,4($v1)
    mul.s	$f2,$f2,$f0
    # Line 265
    lwc1	$f12,8($v1)
    # Line 263
    lwc1	$f1,4($a7)
    sll	$at,$at,0x2
    # Line 265
    mul.s	$f12,$f12,$f0
    # Line 263
    addu	$at,$at,$a1
    # Line 265
    lwc1	$f10,8($at)
    lwc1	$f15,8($t0)
    mul.s	$f10,$f10,$f1
    add.s	$f12,$f12,$f8
    mul.s	$f8,$f15,$f16
    # Line 263
    lwc1	$f15,0($v1)
    mul.s	$f15,$f15,$f0
    # Line 265
    add.s	$f10,$f10,$f12
    # Line 264
    lwc1	$f0,4($at)
    # Line 265
    add.s	$f8,$f8,$f10
    # Line 264
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f2,$f4
    # Line 263
    lwc1	$f12,0($at)
    # Line 265
    add.s	$f8,$f3,$f8
    # Line 263
    mul.s	$f12,$f12,$f1
    add.s	$f15,$f15,$f9
    lwc1	$f10,0($t0)
    # Line 264
    add.s	$f4,$f0,$f4
    # Line 263
    mul.s	$f10,$f10,$f16
    add.s	$f12,$f12,$f15
    lwc1	$f9,0($a2)
    # Line 264
    add.s	$f4,$f14,$f4
    # Line 263
    mul.s	$f9,$f9,$f13
    add.s	$f10,$f10,$f12
    # Line 264
    add.s	$f4,$f11,$f4
    # Line 260
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 263
    add.s	$f9,$f9,$f10
    # Line 260
    bne	$s0,$s5,.L0daff7f4
    addiu	$t2,$sp,0
    b	.L0dafef78
    li	$at,8448
.L0daff928:
    nop
    # Line 149
    bc1f	.L0daffa38
    nop
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    # Line 151
    b	.L0daff114
    li	$s2,12
.L0daff950:
    nop
    # Line 194
    bc1f	.L0daffa5c
    nop
    sdc1	$f4,360($sp)
    # Line 196
    b	.L0dafec3c
    li	$s8,12
.L0daff968:
    # Line 309
    sub.s	$f1,$f1,$f9
    lwc1	$f0,0($a3)
    # Line 307
    lw	$a1,2376($v0)
    # Line 309
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f9
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 310
    lwc1	$f3,3284($v0)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a1)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a3)
    # Line 311
    lwc1	$f1,3284($v0)
    sub.s	$f1,$f1,$f8
    lwc1	$f0,8($a3)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    b	.L0dafefc4
    swc1	$f0,8($a3)
.L0daff9cc:
    li	$a2,8448
    # Line 255
    bne	$a4,$a2,.L0dafef80
    li	$a1,7681
.L0daff9d8:
    # Line 293
    lwc1	$f3,4($a3)
    # Line 294
    lwc1	$f0,8($a3)
    # Line 293
    mul.s	$f3,$f3,$f4
    # Line 292
    lwc1	$f2,0($a3)
    # Line 294
    mul.s	$f0,$f0,$f8
    # Line 292
    mul.s	$f2,$f2,$f9
    # Line 294
    swc1	$f0,8($a3)
    # Line 293
    swc1	$f3,4($a3)
    # Line 294
    b	.L0dafefc4
    # Line 292
    swc1	$f2,0($a3)
.L0daffa00:
    # Line 145
    cvt.d.s	$f1,$f28
    c.lt.d	$f1,$f4
    nop
    bc1fl	.L0daff118
    sd	$a6,216($sp)
    b	.L0daff0f0
    c.lt.d	$f4,$f26
.L0daffa1c:
    # Line 190
    cvt.d.s	$f2,$f28
    c.lt.d	$f2,$f5
    nop
    bc1f	.L0dafec40
    # Line 209
    nop	# was lw $t9, -22924($gp) # &floor
    b	.L0dafec28
    # Line 190
    c.lt.d	$f5,$f26
.L0daffa38:
    # Line 151
    beqzl	$a7,.L0daffa70
    # Line 153
    cvt.d.s	$f10,$f28
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    li	$s2,8
.L0daffa5c:
    # Line 196
    beqzl	$v0,.L0daffa9c
    # Line 198
    cvt.d.s	$f8,$f4
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    li	$s8,8
.L0daffa70:
    # Line 153
    c.lt.d	$f10,$f8
    nop
    bc1fl	.L0daffbd4
    # Line 155
    c.lt.s	$f28,$f24
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    li	$s2,15
.L0daffa9c:
    # Line 198
    c.lt.d	$f8,$f6
    nop
    bc1fl	.L0daffbfc
    # Line 200
    c.lt.s	$f4,$f30
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    li	$s8,15
.L0daffab8:
    # Line 322
    move	$v0,$zero
    ld	$gp,320($sp)
    ld	$s0,272($sp)
    ld	$s1,264($sp)
    ld	$s2,312($sp)
    ld	$s3,304($sp)
    ld	$s4,280($sp)
    ld	$s5,256($sp)
    ld	$s6,296($sp)
    ld	$s7,248($sp)
    ld	$s8,240($sp)
    ldc1	$f20,184($sp)
    ldc1	$f22,168($sp)
    ldc1	$f24,160($sp)
    ldc1	$f26,176($sp)
    ld	$ra,288($sp)
    ldc1	$f28,152($sp)
    ldc1	$f30,144($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0daffb08:
    # Line 252
    addiu	$a6,$a6,-48
.L0daffb0c:
    # Line 247
    addiu	$a7,$a7,8
    # Line 250
    addiu	$a6,$a6,12
    # Line 248
    lwc1	$f2,-4($a7)
    # Line 250
    lwc1	$f1,-4($a6)
    li	$v1,3
    # Line 249
    lwc1	$f0,-8($a6)
    # Line 250
    mul.s	$f1,$f1,$f2
    xor	$at,$s0,$a1
    # Line 248
    lwc1	$f3,-12($a6)
    # Line 249
    mul.s	$f0,$f0,$f2
    # Line 250
    subu	$at,$at,$a1
    sra	$a1,$s0,0x1f
    # Line 248
    mul.s	$f3,$f3,$f2
    # Line 247
    addiu	$s0,$s0,1
    # Line 250
    add.s	$f8,$f1,$f8
    andi	$at,$at,0x3
    xor	$at,$at,$a1
    # Line 249
    add.s	$f4,$f0,$f4
    # Line 250
    subu	$at,$at,$a1
    beq	$at,$v1,.L0daffbc8
    # Line 248
    add.s	$f9,$f3,$f9
.L0daffb60:
    li	$a2,16
    # Line 247
    beq	$s0,$a2,.L0daff9cc
.L0daffb68:
    # Line 250
    addiu	$a6,$a6,12
    li	$v1,3
    sra	$a1,$s0,0x1f
    # Line 248
    lwc1	$f1,0($a7)
    # Line 250
    lwc1	$f0,-4($a6)
    xor	$at,$s0,$a1
    # Line 249
    lwc1	$f3,-8($a6)
    # Line 250
    mul.s	$f0,$f0,$f1
    subu	$at,$at,$a1
    # Line 248
    lwc1	$f2,-12($a6)
    # Line 249
    mul.s	$f3,$f3,$f1
    # Line 250
    sra	$a1,$s0,0x1f
    # Line 247
    addiu	$s0,$s0,1
    # Line 248
    mul.s	$f2,$f2,$f1
    # Line 250
    andi	$at,$at,0x3
    add.s	$f8,$f0,$f8
    xor	$at,$at,$a1
    subu	$at,$at,$a1
    # Line 249
    add.s	$f4,$f3,$f4
    # Line 250
    sra	$a1,$s0,0x1f
    bne	$at,$v1,.L0daffb0c
    # Line 248
    add.s	$f9,$f2,$f9
    b	.L0daffb08
    # Line 252
    addu	$a6,$t0,$a6
.L0daffbc8:
    addu	$a6,$t0,$a6
    b	.L0daffb60
    addiu	$a6,$a6,-48
.L0daffbd4:
    nop
    # Line 155
    bc1fl	.L0daffc14
    # Line 157
    c.lt.d	$f10,$f9
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    li	$s2,7
.L0daffbfc:
    nop
    # Line 200
    bc1fl	.L0daffc3c
    # Line 202
    c.lt.d	$f8,$f7
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    li	$s8,7
.L0daffc14:
    nop
    # Line 157
    bc1fl	.L0daffc54
    # Line 159
    c.lt.d	$f10,$f4
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    li	$s2,3
.L0daffc3c:
    nop
    # Line 202
    bc1fl	.L0daffc7c
    # Line 204
    c.lt.d	$f8,$f5
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    li	$s8,3
.L0daffc54:
    nop
    # Line 159
    bc1fl	.L0daff118
    sd	$a6,216($sp)
    sd	$v0,192($sp)
    sd	$a3,392($sp)
    sd	$a4,384($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    b	.L0daff114
    # Line 161
    li	$s2,1
.L0daffc7c:
    nop
    # Line 204
    bc1f	.L0dafec40
    # Line 209
    nop	# was lw $t9, -22924($gp) # &floor
    sdc1	$f4,360($sp)
    b	.L0dafec3c
    # Line 206
    li	$s8,1
.end __glTextureRGB_F_F_Span

# Function: __glTextureRGB_F_F_StippledSpan
# Declared: Line 332 (Source lines: 333-590)
# Address: 0x0daffc94 - 0x0db00d9c (Size: 4360 bytes, Frame: 224)
.globl __glTextureRGB_F_F_StippledSpan
.ent __glTextureRGB_F_F_StippledSpan
__glTextureRGB_F_F_StippledSpan:
    # Line 364
    lwc1	$f5,30240($a0)
    # Line 362
    lwc1	$f6,30228($a0)
    # Line 359
    lw	$a3,30468($a0)
    # Line 333
    addiu	$sp,$sp,-480
    sd	$s0,320($sp)
    sd	$s2,296($sp)
    sd	$s3,336($sp)
    sd	$s4,312($sp)
    sd	$s5,344($sp)
    sd	$s7,352($sp)
    sd	$s8,328($sp)
    sdc1	$f20,176($sp)
    sdc1	$f22,160($sp)
    sdc1	$f24,168($sp)
    sdc1	$f26,152($sp)
    sdc1	$f28,184($sp)
    sd	$ra,304($sp)
    sd	$s6,376($sp)
    move	$s6,$a0
    sdc1	$f30,192($sp)
    # Line 363
    lwc1	$f30,30232($a0)
    sd	$s1,360($sp)
    # Line 357
    lw	$s1,28216($a0)
    sd	$gp,368($sp)
    # Line 333
    lui	$v0,0xf
    addiu	$v0,$v0,31700
    addu	$gp,$t9,$v0
    # Line 355
    lw	$a4,2376($a0)
    # Line 360
    lw	$v1,30476($a0)
    # Line 341
    lwc1	$f0,3280($a0)
    # Line 358
    lw	$at,30252($a0)
    sd	$v1,224($sp)
    sdc1	$f0,128($sp)
    sd	$at,216($sp)
    # Line 364
    beqz	$at,.L0db00d34
    # Line 355
    lw	$a4,0($a4)
    sd	$s2,296($sp)
    sd	$ra,304($sp)
    sd	$s4,312($sp)
    sd	$s0,320($sp)
    sd	$s8,328($sp)
    sdc1	$f26,152($sp)
    sdc1	$f22,160($sp)
    sdc1	$f24,168($sp)
    # Line 364
    addiu	$s5,$sp,48
    li	$t0,-1
    li	$t1,8448
    li	$s3,1
    li	$s7,4
    li	$a6,32
    ldc1	$f7,_lit8_4030000000000000
    dmtc1	$zero,$f28
    mtc1	$zero,$f20
    addiu	$at,$sp,12
    sd	$at,240($sp)
    addiu	$a2,$sp,0
    xori	$a1,$a4,0x2101
    sltiu	$a1,$a1,1
    addiu	$a2,$a2,-4
    sd	$a2,232($sp)
    b	.L0daffd94
    sd	$a1,384($sp)
.L0daffd8c:
    ld	$v1,216($sp)
    # Line 375
    beqz	$v1,.L0db00d34
.L0daffd94:
    ld	$a1,216($sp)
    # Line 367
    move	$a5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0daffdb0
    # Line 371
    ld	$at,216($sp)
    # Line 369
    li	$a5,32
    # Line 371
    ld	$at,216($sp)
.L0daffdb0:
    lui	$a0,0x8000
    # Line 373
    ld	$a2,224($sp)
    # Line 371
    subu	$at,$at,$a5
    # Line 375
    addiu	$a5,$a5,-1
    # Line 373
    lw	$v1,0($a2)
    addiu	$a2,$a2,4
    sd	$at,216($sp)
    sd	$a2,224($sp)
    # Line 375
    bltz	$a5,.L0daffd8c
    sd	$v1,392($sp)
    b	.L0db001cc
    ld	$a2,392($sp)
.L0daffde0:
    ldc1	$f7,_lit8_bff0000000000000
    # Line 451
    add.d	$f7,$f24,$f7
    c.lt.d	$f7,$f28
    li	$v0,1
    bc1fl	.L0daffdf8
    move	$v0,$zero
.L0daffdf8:
    beqz	$v0,.L0db00afc
    add.d	$f6,$f24,$f6
    c.lt.d	$f6,$f28
.L0daffe04:
    nop
    bc1fl	.L0db0075c
    # Line 453
    add.d	$f8,$f24,$f8
    sdc1	$f5,400($sp)
    li	$s8,15
.L0daffe18:
    # Line 470
    # lw $t9, -22924($gp) # &floor
.L0daffe1c:
    sdc1	$f5,400($sp)
    mov.d	$f12,$f24
    jal	floor
    mov.s	$f26,$f5
    trunc.w.d	$f1,$f0
    mfc1	$a0,$f1
    nop
    # Line 471
    addiu	$a1,$a0,-1
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 470
    sw	$a0,20($sp)
    # Line 474
    addiu	$v0,$a0,1
    # Line 471
    bc1f	.L0daffe60
    sw	$a1,16($sp)
    # Line 472
    sw	$zero,16($sp)
.L0daffe60:
    # Line 474
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f26,$f2
    nop
    bc1f	.L0daffe8c
    sw	$v0,24($sp)
    # Line 475
    trunc.w.s	$f3,$f26
    mfc1	$v0,$f3
    nop
    sw	$v0,24($sp)
.L0daffe8c:
    # Line 477
    addiu	$a2,$v0,1
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f26,$f0
    nop
    bc1f	.L0daffebc
    sw	$a2,28($sp)
    # Line 478
    trunc.w.s	$f1,$f26
    mfc1	$at,$f1
    nop
    sw	$at,28($sp)
.L0daffebc:
    # Line 483
    # lw $t9, -22924($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f6,$f22,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f6,$f6,$f7
    lwc1	$f26,3280($s6)
    cvt.d.s	$f26,$f26
    add.d	$f6,$f6,$f26
    trunc.w.d	$f6,$f6
    mfc1	$v1,$f6
    # Line 488
    mov.d	$f12,$f24
    # lw $t9, -22924($gp) # &floor
    # Line 484
    sll	$a1,$v1,0x2
    addu	$a1,$a1,$s1
    # Line 485
    lwc1	$f5,24($a1)
    # Line 484
    lwc1	$f4,88($a1)
    li	$a0,32
    # Line 485
    swc1	$f5,36($sp)
    # Line 484
    swc1	$f4,32($sp)
    # Line 487
    subu	$a0,$a0,$v1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lwc1	$f3,24($a0)
    # Line 486
    sll	$v0,$v1,0x1e
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    lwc1	$f2,88($v0)
    # Line 487
    swc1	$f3,44($sp)
    # Line 488
    jal	floor
    # Line 486
    swc1	$f2,40($sp)
    # Line 488
    sub.d	$f4,$f24,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f4,$f4,$f7
    li	$t0,-1
    add.d	$f4,$f4,$f26
    li	$t1,8448
    # Line 496
    addiu	$t2,$sp,112
    move	$s0,$zero
    # Line 488
    trunc.w.d	$f4,$f4
    ldc1	$f6,416($sp)
    ldc1	$f5,424($sp)
    ld	$v0,288($sp)
    mfc1	$a3,$f4
    ld	$a0,456($sp)
    li	$a6,32
    # Line 489
    sll	$a5,$a3,0x2
    # Line 492
    subu	$a4,$a6,$a3
    # Line 491
    sll	$a2,$a3,0x1e
    subu	$a2,$a2,$a3
    ld	$a3,448($sp)
    # Line 489
    addu	$a5,$a5,$s1
    # Line 490
    lwc1	$f3,24($a5)
    # Line 489
    lwc1	$f2,88($a5)
    ld	$a5,432($sp)
    # Line 492
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s1
    lwc1	$f1,24($a4)
    ld	$a4,440($sp)
    # Line 490
    swc1	$f3,116($sp)
    # Line 491
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    lwc1	$f0,88($a2)
    # Line 489
    swc1	$f2,112($sp)
    # Line 492
    swc1	$f1,124($sp)
    # Line 491
    swc1	$f0,120($sp)
    # Line 496
    lwc1	$f4,0($t2)
.L0dafffcc:
    addiu	$t3,$sp,32
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 498
    lwc1	$f1,4($t3)
    lwc1	$f2,8($t3)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($t3)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($t3)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 496
    addiu	$s0,$s0,1
    addiu	$t2,$t2,4
    # Line 498
    swc1	$f3,12($a7)
    swc1	$f2,8($a7)
    swc1	$f1,4($a7)
    swc1	$f0,0($a7)
    # Line 496
    bnel	$s0,$s7,.L0dafffcc
    lwc1	$f4,0($t2)
    # Line 533
    mov.s	$f4,$f20
    # Line 534
    move	$s0,$zero
    li	$t2,3
    # Line 521
    addiu	$s4,$sp,16
    # Line 496
    beqz	$v0,.L0db007b4
    # Line 533
    mov.s	$f8,$f20
.L0db00034:
    li	$at,2
.L0db00038:
    # Line 508
    beq	$v0,$at,.L0db0080c
    # Line 520
    mov.s	$f9,$f20
    # Line 534
    addiu	$s4,$sp,16
    # Line 533
    mov.s	$f9,$f20
.L0db00048:
    # Line 534
    addiu	$t8,$sp,0
    li	$v0,3
    sllv	$t3,$s3,$t2
    and	$t3,$t3,$s8
    # Line 537
    sllv	$at,$s3,$v0
    # Line 535
    addiu	$v0,$v0,-1
    # Line 534
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 537
    and	$at,$at,$s2
    beqz	$at,.L0db003e8
    nop
    # Line 538
    lwc1	$f3,0($a7)
.L0db0007c:
    # Line 540
    lwc1	$f2,164($s1)
    # Line 539
    lwc1	$f1,160($s1)
    # Line 540
    mul.s	$f2,$f2,$f3
    # Line 538
    lwc1	$f0,156($s1)
    # Line 539
    mul.s	$f1,$f1,$f3
    # Line 538
    mul.s	$f0,$f0,$f3
    # Line 540
    add.s	$f8,$f2,$f8
    # Line 539
    add.s	$f4,$f1,$f4
    # Line 538
    add.s	$f9,$f0,$f9
.L0db000a0:
    # Line 537
    sllv	$v1,$s3,$v0
    and	$v1,$v1,$s2
    beqz	$v1,.L0db00444
    # Line 535
    addiu	$v0,$v0,-1
    # Line 538
    lwc1	$f2,4($a7)
.L0db000b4:
    # Line 540
    lwc1	$f1,164($s1)
    # Line 539
    lwc1	$f0,160($s1)
    # Line 540
    mul.s	$f1,$f1,$f2
    # Line 538
    lwc1	$f3,156($s1)
    # Line 539
    mul.s	$f0,$f0,$f2
    # Line 538
    mul.s	$f3,$f3,$f2
    # Line 540
    add.s	$f8,$f1,$f8
    # Line 539
    add.s	$f4,$f0,$f4
    # Line 538
    add.s	$f9,$f3,$f9
.L0db000d8:
    # Line 537
    sllv	$a1,$s3,$v0
    and	$a1,$a1,$s2
    beqz	$a1,.L0db004a0
    # Line 535
    addiu	$v0,$v0,-1
    # Line 538
    lwc1	$f1,8($a7)
.L0db000ec:
    # Line 540
    lwc1	$f0,164($s1)
    # Line 539
    lwc1	$f3,160($s1)
    # Line 540
    mul.s	$f0,$f0,$f1
    # Line 538
    lwc1	$f2,156($s1)
    # Line 539
    mul.s	$f3,$f3,$f1
    # Line 538
    mul.s	$f2,$f2,$f1
    # Line 540
    add.s	$f8,$f0,$f8
    # Line 539
    add.s	$f4,$f3,$f4
    # Line 538
    add.s	$f9,$f2,$f9
.L0db00110:
    # Line 534
    addiu	$t2,$t2,-1
    # Line 537
    sllv	$a2,$s3,$v0
    and	$a2,$a2,$s2
    beqz	$a2,.L0db004fc
    # Line 534
    addiu	$s0,$s0,1
    # Line 538
    lwc1	$f0,12($a7)
.L0db00128:
    # Line 540
    lwc1	$f3,164($s1)
    # Line 539
    lwc1	$f2,160($s1)
    # Line 540
    mul.s	$f3,$f3,$f0
    # Line 538
    lwc1	$f1,156($s1)
    # Line 539
    mul.s	$f2,$f2,$f0
    # Line 538
    mul.s	$f1,$f1,$f0
    # Line 540
    add.s	$f8,$f3,$f8
    # Line 539
    add.s	$f4,$f2,$f4
    # Line 538
    add.s	$f9,$f1,$f9
.L0db0014c:
    # Line 534
    bne	$s0,$s7,.L0db00048
    addiu	$s4,$s4,4
.L0db00154:
    # Line 516
    beq	$a4,$t1,.L0db00ad4
    li	$v1,7681
.L0db0015c:
    li	$at,0x8062
    # Line 557
    beq	$a4,$at,.L0db00778
    ld	$a1,384($sp)
    beq	$a4,$v1,.L0db00778
    move	$v0,$zero
    or	$a1,$v0,$a1
.L0db00174:
    beqzl	$a1,.L0db00a4c
    # Line 570
    lwc1	$f2,3284($s6)
    # Line 560
    lwc1	$f2,30756($s6)
    mul.s	$f2,$f2,$f9
    swc1	$f2,0($a3)
    # Line 561
    lwc1	$f1,30760($s6)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a3)
    # Line 562
    lwc1	$f0,30764($s6)
    mul.s	$f0,$f0,$f8
    swc1	$f0,8($a3)
.L0db001a0:
    # Line 580
    lwc1	$f1,30396($s6)
    # Line 583
    srl	$a0,$a0,0x1
    # Line 579
    lwc1	$f0,30388($s6)
    # Line 580
    add.s	$f5,$f1,$f5
    # Line 581
    addiu	$a3,$a3,16
    # Line 578
    lwc1	$f3,30384($s6)
    # Line 579
    add.s	$f30,$f0,$f30
    # Line 375
    addiu	$a5,$a5,-1
    beq	$a5,$t0,.L0daffd8c
    # Line 578
    add.s	$f6,$f3,$f6
    ld	$a2,392($sp)
.L0db001cc:
    li	$v1,10497
    ldc1	$f9,_lit8_bff0000000000000
    # Line 375
    and	$a2,$a2,$a0
    beqz	$a2,.L0db001a0
    # Line 381
    move	$v0,$zero
    # Line 377
    lwc1	$f4,3284($s6)
    div.s	$f4,$f4,$f5
    # Line 393
    move	$s2,$zero
    # Line 395
    li	$s0,-1
    # Line 383
    lw	$a7,228($s1)
    sdc1	$f4,136($sp)
    # Line 393
    mul.s	$f4,$f6,$f4
    # Line 395
    ld	$s4,232($sp)
    # Line 393
    lw	$at,4($s1)
    sd	$a7,272($sp)
    # Line 390
    lwc1	$f26,32($a7)
    # Line 386
    lw	$a1,0($a7)
    # Line 384
    lw	$s8,44($a7)
    # Line 393
    mul.s	$f4,$f4,$f26
    sd	$a1,256($sp)
    # Line 388
    lw	$a1,24($a7)
    # Line 387
    lw	$a7,20($a7)
    # Line 393
    ldc1	$f22,128($sp)
    sd	$s8,248($sp)
    # Line 387
    addiu	$s8,$a7,-1
    # Line 393
    sub.s	$f4,$f4,$f22
    # Line 388
    addiu	$a1,$a1,-1
    sd	$a1,280($sp)
    # Line 393
    beq	$at,$v1,.L0db00968
    cvt.d.s	$f22,$f4
    # Line 405
    add.d	$f9,$f22,$f9
    c.lt.d	$f9,$f28
    li	$a7,1
    ldc1	$f8,_lit8_4000000000000000
    bc1fl	.L0db0025c
    move	$a7,$zero
.L0db0025c:
    beqz	$a7,.L0db00ab0
    add.d	$f8,$f22,$f8
    c.lt.d	$f8,$f28
.L0db00268:
    nop
    bc1f	.L0db00558
    ldc1	$f10,_lit8_3ff0000000000000
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    # Line 407
    li	$s2,15
.L0db00294:
    sd	$v0,288($sp)
.L0db00298:
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    # Line 424
    # lw $t9, -23708($gp) # &__glFloor
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    jal	__glFloor
    mov.s	$f12,$f4
    # Line 425
    addiu	$a2,$v0,-1
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 424
    sw	$v0,4($sp)
    # Line 428
    addiu	$a0,$v0,1
    # Line 425
    bc1f	.L0db002e4
    sw	$a2,0($sp)
    # Line 426
    sw	$zero,0($sp)
.L0db002e4:
    # Line 428
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f26,$f1
    nop
    bc1f	.L0db00310
    sw	$a0,8($sp)
    # Line 429
    trunc.w.s	$f2,$f26
    mfc1	$a0,$f2
    nop
    sw	$a0,8($sp)
.L0db00310:
    # Line 431
    addiu	$at,$a0,1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f26,$f3
    nop
    bc1f	.L0db00340
    sw	$at,12($sp)
    # Line 432
    trunc.w.s	$f0,$f26
    mfc1	$v1,$f0
    nop
    sw	$v1,12($sp)
.L0db00340:
    ldc1	$f4,136($sp)
    # Line 440
    mul.s	$f4,$f30,$f4
    # Line 437
    ld	$s8,272($sp)
    lwc1	$f5,36($s8)
    # Line 440
    mul.s	$f4,$f4,$f5
    ldc1	$f6,_lit8_4000000000000000
    # Line 442
    li	$s0,-1
    ld	$s4,240($sp)
    # Line 440
    ldc1	$f24,128($sp)
    ldc1	$f8,_lit8_3ff0000000000000
    lw	$a1,8($s1)
    sub.s	$f4,$f4,$f24
    li	$a2,10497
    move	$s8,$zero
    bne	$a1,$a2,.L0daffde0
    cvt.d.s	$f24,$f4
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f4
    c.lt.s	$f6,$f20
    addiu	$s0,$s0,1
    bc1f	.L0db00590
    sdc1	$f4,408($sp)
    ld	$ra,272($sp)
    # Line 444
    lw	$ra,24($ra)
    mtc1	$ra,$f12
    nop
    cvt.s.w	$f12,$f12
    ldc1	$f26,408($sp)
    add.s	$f12,$f12,$f26
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,280($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db005b8
    sw	$at,4($s4)
.L0db003e8:
    # Line 537
    bnezl	$t3,.L0db0007c
    # Line 538
    lwc1	$f3,0($a7)
    # Line 542
    ld	$v1,248($sp)
    lw	$at,0($s4)
    lw	$a2,0($t8)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f0,0($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 544
    lwc1	$f3,8($a1)
    # Line 543
    lwc1	$f2,4($a1)
    # Line 544
    mul.s	$f3,$f3,$f0
    # Line 542
    lwc1	$f1,0($a1)
    # Line 543
    mul.s	$f2,$f2,$f0
    # Line 542
    mul.s	$f1,$f1,$f0
    # Line 544
    add.s	$f8,$f3,$f8
    # Line 543
    add.s	$f4,$f2,$f4
    b	.L0db000a0
    # Line 542
    add.s	$f9,$f1,$f9
.L0db00444:
    # Line 537
    bnezl	$t3,.L0db000b4
    # Line 538
    lwc1	$f2,4($a7)
    # Line 542
    ld	$v1,248($sp)
    lw	$at,0($s4)
    lw	$a2,4($t8)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f3,4($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 544
    lwc1	$f2,8($a1)
    # Line 543
    lwc1	$f1,4($a1)
    # Line 544
    mul.s	$f2,$f2,$f3
    # Line 542
    lwc1	$f0,0($a1)
    # Line 543
    mul.s	$f1,$f1,$f3
    # Line 542
    mul.s	$f0,$f0,$f3
    # Line 544
    add.s	$f8,$f2,$f8
    # Line 543
    add.s	$f4,$f1,$f4
    b	.L0db000d8
    # Line 542
    add.s	$f9,$f0,$f9
.L0db004a0:
    # Line 537
    bnezl	$t3,.L0db000ec
    # Line 538
    lwc1	$f1,8($a7)
    # Line 542
    ld	$v1,248($sp)
    lw	$at,0($s4)
    lw	$a2,8($t8)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f2,8($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 544
    lwc1	$f1,8($a1)
    # Line 543
    lwc1	$f0,4($a1)
    # Line 544
    mul.s	$f1,$f1,$f2
    # Line 542
    lwc1	$f3,0($a1)
    # Line 543
    mul.s	$f0,$f0,$f2
    # Line 542
    mul.s	$f3,$f3,$f2
    # Line 544
    add.s	$f8,$f1,$f8
    # Line 543
    add.s	$f4,$f0,$f4
    b	.L0db00110
    # Line 542
    add.s	$f9,$f3,$f9
.L0db004fc:
    # Line 537
    bnezl	$t3,.L0db00128
    # Line 538
    lwc1	$f0,12($a7)
    # Line 542
    ld	$v1,248($sp)
    lw	$at,0($s4)
    lw	$a2,12($t8)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f1,12($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 544
    lwc1	$f0,8($a1)
    # Line 543
    lwc1	$f3,4($a1)
    # Line 544
    mul.s	$f0,$f0,$f1
    # Line 542
    lwc1	$f2,0($a1)
    # Line 543
    mul.s	$f3,$f3,$f1
    # Line 542
    mul.s	$f2,$f2,$f1
    # Line 544
    add.s	$f8,$f0,$f8
    # Line 543
    add.s	$f4,$f3,$f4
    b	.L0db0014c
    # Line 542
    add.s	$f9,$f2,$f9
.L0db00558:
    # Line 407
    add.d	$f10,$f22,$f10
    c.lt.d	$f10,$f28
    nop
    bc1fl	.L0db00784
    # Line 409
    c.lt.s	$f4,$f20
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    li	$s2,14
.L0db00590:
    # Line 446
    # lw $t9, -22924($gp) # &floor
    cvt.d.s	$f12,$f6
    jal	floor
    ldc1	$f26,408($sp)
    trunc.w.d	$f0,$f0
    ld	$a2,280($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$a2
    sw	$a1,4($s4)
.L0db005b8:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db0061c
    addiu	$s0,$s0,1
    ld	$a3,272($sp)
    # Line 444
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,280($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db00640
    sw	$at,8($s4)
.L0db0061c:
    # Line 446
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a2,280($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    sw	$a1,8($s4)
.L0db00640:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db006a4
    addiu	$s0,$s0,1
    ld	$a3,272($sp)
    # Line 444
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,280($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db006c8
    sw	$at,12($s4)
.L0db006a4:
    # Line 446
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a2,280($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    sw	$a1,12($s4)
.L0db006c8:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db00728
    ld	$a3,272($sp)
    # Line 444
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,280($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db0074c
    sw	$at,16($s4)
.L0db00728:
    # Line 446
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a2,280($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    sw	$a1,16($s4)
.L0db0074c:
    ld	$at,288($sp)
    # Line 449
    addiu	$at,$at,1
    b	.L0daffebc
    sd	$at,288($sp)
.L0db0075c:
    # Line 453
    c.lt.d	$f8,$f28
    nop
    bc1fl	.L0db00950
    # Line 455
    c.lt.s	$f4,$f20
    sdc1	$f5,400($sp)
    b	.L0daffe18
    li	$s8,14
.L0db00778:
    # Line 557
    li	$v0,1
    b	.L0db00174
    or	$a1,$v0,$a1
.L0db00784:
    nop
    # Line 409
    bc1f	.L0db00b18
    nop
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    # Line 411
    b	.L0db00294
    li	$s2,12
.L0db007b4:
    # Line 496
    bnez	$s2,.L0db00038
    li	$at,2
    # Line 508
    ld	$a2,248($sp)
    # Line 507
    lw	$a1,0($sp)
    # Line 496
    bnez	$s8,.L0db00034
    # Line 508
    addiu	$a7,$sp,48
    # Line 506
    mov.s	$f9,$f20
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 508
    move	$s0,$zero
    li	$t2,3
    # Line 507
    lw	$v1,16($sp)
    # Line 508
    sllv	$t2,$t2,$a2
    sll	$t2,$t2,0x2
    # Line 507
    sllv	$v1,$v1,$a2
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,256($sp)
    sll	$v0,$v0,0x2
    b	.L0db00c10
    addu	$v0,$v0,$v1
.L0db0080c:
    # Line 520
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 521
    move	$s0,$zero
    addiu	$t8,$sp,0
.L0db0081c:
    sll	$a7,$s0,0x2
    ld	$v1,248($sp)
    lw	$v0,0($s4)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    sllv	$v0,$v0,$v1
    # Line 524
    lw	$a1,0($t8)
    lw	$at,12($t8)
    lw	$v1,8($t8)
    addu	$a1,$a1,$v0
    addu	$at,$at,$v0
    addu	$v1,$v1,$v0
    sll	$t2,$v1,0x2
    subu	$t2,$t2,$v1
    lw	$v1,4($t8)
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    addu	$v1,$v1,$v0
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,256($sp)
    lwc1	$f13,12($a7)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 525
    lwc1	$f11,4($a2)
    # Line 526
    lwc1	$f3,8($a2)
    # Line 525
    mul.s	$f11,$f11,$f13
    # Line 524
    lwc1	$f16,8($a7)
    # Line 526
    mul.s	$f3,$f3,$f13
    # Line 524
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$a1
    # Line 525
    lwc1	$f14,4($t2)
    mul.s	$f14,$f14,$f16
    # Line 524
    lwc1	$f0,0($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 525
    lwc1	$f2,4($v1)
    mul.s	$f2,$f2,$f0
    # Line 526
    lwc1	$f12,8($v1)
    # Line 524
    lwc1	$f1,4($a7)
    sll	$at,$at,0x2
    # Line 526
    mul.s	$f12,$f12,$f0
    # Line 524
    addu	$at,$at,$a1
    # Line 526
    lwc1	$f10,8($at)
    lwc1	$f15,8($t2)
    mul.s	$f10,$f10,$f1
    add.s	$f12,$f12,$f8
    mul.s	$f8,$f15,$f16
    # Line 524
    lwc1	$f15,0($v1)
    mul.s	$f15,$f15,$f0
    # Line 526
    add.s	$f10,$f10,$f12
    # Line 525
    lwc1	$f0,4($at)
    # Line 526
    add.s	$f8,$f8,$f10
    # Line 525
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f2,$f4
    # Line 524
    lwc1	$f12,0($at)
    # Line 526
    add.s	$f8,$f3,$f8
    # Line 524
    mul.s	$f12,$f12,$f1
    add.s	$f15,$f15,$f9
    lwc1	$f10,0($t2)
    # Line 525
    add.s	$f4,$f0,$f4
    # Line 524
    mul.s	$f10,$f10,$f16
    add.s	$f12,$f12,$f15
    lwc1	$f9,0($a2)
    # Line 525
    add.s	$f4,$f14,$f4
    # Line 524
    mul.s	$f9,$f9,$f13
    add.s	$f10,$f10,$f12
    # Line 525
    add.s	$f4,$f11,$f4
    # Line 521
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 524
    add.s	$f9,$f9,$f10
    # Line 521
    bne	$s0,$s7,.L0db0081c
    addiu	$t8,$sp,0
    b	.L0db00154
    nop
.L0db00950:
    nop
    # Line 455
    bc1f	.L0db00b44
    nop
    sdc1	$f5,400($sp)
    # Line 457
    b	.L0daffe18
    li	$s8,12
.L0db00968:
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sd	$a7,264($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db009bc
    sdc1	$f4,144($sp)
.L0db0098c:
    # Line 400
    # lw $t9, -22924($gp) # &floor
    jal	floor
    ldc1	$f12,200($sp)
    trunc.w.d	$f4,$f0
    mfc1	$a1,$f4
    nop
    and	$a1,$a1,$s8
    sw	$a1,4($s4)
.L0db009ac:
    # Line 395
    addiu	$s0,$s0,1
    li	$a2,3
    beq	$s0,$a2,.L0db00a40
    addiu	$s4,$s4,4
.L0db009bc:
    # Line 396
    mtc1	$s0,$f24
    nop
    cvt.s.w	$f24,$f24
    ldc1	$f12,144($sp)
    add.s	$f12,$f24,$f12
    # lw $t9, -22924($gp) # &floor
    sdc1	$f12,208($sp)
    cvt.d.s	$f12,$f12
    jal	floor
    sdc1	$f12,200($sp)
    trunc.w.d	$f1,$f0
    ldc1	$f0,208($sp)
    mfc1	$at,$f1
    c.lt.s	$f0,$f20
    and	$at,$at,$s8
    bc1f	.L0db0098c
    sw	$at,4($s4)
    ld	$v0,264($sp)
    # Line 398
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    ldc1	$f13,144($sp)
    add.s	$f12,$f12,$f13
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f24
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$s8
    b	.L0db009ac
    sw	$v1,4($s4)
.L0db00a40:
    # Line 403
    li	$a1,1
    b	.L0db00340
    sd	$a1,288($sp)
.L0db00a4c:
    # Line 570
    sub.s	$f2,$f2,$f9
    lwc1	$f1,0($a3)
    # Line 568
    lw	$a2,2376($s6)
    # Line 570
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f9
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 571
    lwc1	$f0,3284($s6)
    sub.s	$f0,$f0,$f4
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a3)
    # Line 572
    lwc1	$f2,3284($s6)
    sub.s	$f2,$f2,$f8
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    b	.L0db001a0
    swc1	$f1,8($a3)
.L0db00ab0:
    # Line 405
    cvt.d.s	$f3,$f26
    c.lt.d	$f3,$f8
    nop
    bc1fl	.L0db00298
    sd	$v0,288($sp)
    b	.L0db00268
    c.lt.d	$f8,$f28
.L0db00acc:
    # Line 516
    bne	$a4,$t1,.L0db0015c
    li	$v1,7681
.L0db00ad4:
    # Line 554
    lwc1	$f1,4($a3)
    # Line 555
    lwc1	$f2,8($a3)
    # Line 554
    mul.s	$f1,$f1,$f4
    # Line 553
    lwc1	$f0,0($a3)
    # Line 555
    mul.s	$f2,$f2,$f8
    # Line 553
    mul.s	$f0,$f0,$f9
    # Line 555
    swc1	$f2,8($a3)
    # Line 554
    swc1	$f1,4($a3)
    # Line 555
    b	.L0db001a0
    # Line 553
    swc1	$f0,0($a3)
.L0db00afc:
    # Line 451
    cvt.d.s	$f3,$f26
    c.lt.d	$f3,$f6
    nop
    bc1f	.L0daffe1c
    # Line 470
    nop	# was lw $t9, -22924($gp) # &floor
    b	.L0daffe04
    # Line 451
    c.lt.d	$f6,$f28
.L0db00b18:
    # Line 411
    beqzl	$a7,.L0db00b58
    # Line 413
    cvt.d.s	$f11,$f26
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    li	$s2,8
.L0db00b44:
    # Line 457
    beqzl	$v0,.L0db00b8c
    # Line 459
    cvt.d.s	$f9,$f5
    sdc1	$f5,400($sp)
    b	.L0daffe18
    li	$s8,8
.L0db00b58:
    # Line 413
    c.lt.d	$f11,$f9
    nop
    bc1fl	.L0db00c74
    # Line 415
    c.lt.s	$f26,$f4
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    li	$s2,15
.L0db00b8c:
    # Line 459
    c.lt.d	$f9,$f7
    nop
    bc1fl	.L0db00ca4
    # Line 461
    c.lt.s	$f5,$f4
    sdc1	$f5,400($sp)
    b	.L0daffe18
    li	$s8,15
.L0db00ba8:
    # Line 513
    addiu	$v0,$v0,-48
.L0db00bac:
    # Line 511
    addiu	$v0,$v0,12
    li	$a1,3
    # Line 508
    addiu	$s0,$s0,1
    # Line 509
    lwc1	$f3,4($a7)
    # Line 511
    lwc1	$f2,-4($v0)
    sra	$a2,$s0,0x1f
    # Line 510
    lwc1	$f1,-8($v0)
    # Line 511
    mul.s	$f2,$f2,$f3
    xor	$v1,$s0,$a2
    # Line 509
    lwc1	$f0,-12($v0)
    # Line 510
    mul.s	$f1,$f1,$f3
    # Line 511
    subu	$v1,$v1,$a2
    sra	$a2,$s0,0x1f
    # Line 509
    mul.s	$f0,$f0,$f3
    # Line 508
    addiu	$s0,$s0,1
    # Line 511
    add.s	$f8,$f2,$f8
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a2
    # Line 510
    add.s	$f4,$f1,$f4
    # Line 511
    subu	$v1,$v1,$a2
    beq	$v1,$a1,.L0db00c68
    # Line 509
    add.s	$f9,$f0,$f9
.L0db00c04:
    # Line 508
    addiu	$a7,$a7,8
    li	$at,16
    beq	$s0,$at,.L0db00acc
.L0db00c10:
    # Line 511
    addiu	$v0,$v0,12
    # Line 509
    lwc1	$f2,0($a7)
    # Line 511
    lwc1	$f1,-4($v0)
    li	$a1,3
    # Line 510
    lwc1	$f0,-8($v0)
    # Line 511
    mul.s	$f1,$f1,$f2
    sra	$a2,$s0,0x1f
    # Line 509
    lwc1	$f3,-12($v0)
    # Line 510
    mul.s	$f0,$f0,$f2
    # Line 511
    xor	$v1,$s0,$a2
    subu	$v1,$v1,$a2
    # Line 509
    mul.s	$f3,$f3,$f2
    # Line 511
    sra	$a2,$s0,0x1f
    add.s	$f8,$f1,$f8
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a2
    # Line 510
    add.s	$f4,$f0,$f4
    # Line 511
    subu	$v1,$v1,$a2
    bne	$v1,$a1,.L0db00bac
    # Line 509
    add.s	$f9,$f3,$f9
    b	.L0db00ba8
    # Line 513
    addu	$v0,$t2,$v0
.L0db00c68:
    addu	$v0,$t2,$v0
    b	.L0db00c04
    addiu	$v0,$v0,-48
.L0db00c74:
    nop
    # Line 415
    bc1fl	.L0db00cbc
    # Line 417
    c.lt.d	$f11,$f10
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    li	$s2,7
.L0db00ca4:
    nop
    # Line 461
    bc1fl	.L0db00cec
    # Line 463
    c.lt.d	$f9,$f8
    sdc1	$f5,400($sp)
    b	.L0daffe18
    li	$s8,7
.L0db00cbc:
    nop
    # Line 417
    bc1fl	.L0db00d04
    # Line 419
    c.lt.d	$f11,$f8
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    li	$s2,3
.L0db00cec:
    nop
    # Line 463
    bc1fl	.L0db00d84
    # Line 465
    c.lt.d	$f9,$f6
    sdc1	$f5,400($sp)
    b	.L0daffe18
    li	$s8,3
.L0db00d04:
    nop
    # Line 419
    bc1fl	.L0db00298
    sd	$v0,288($sp)
    sd	$v0,288($sp)
    sd	$a0,456($sp)
    sd	$a3,448($sp)
    sd	$a4,440($sp)
    sd	$a5,432($sp)
    sdc1	$f5,424($sp)
    sdc1	$f6,416($sp)
    b	.L0db00294
    # Line 421
    li	$s2,1
.L0db00d34:
    # Line 590
    move	$v0,$zero
    ld	$gp,368($sp)
    ld	$s0,320($sp)
    ld	$s1,360($sp)
    ld	$s2,296($sp)
    ld	$s3,336($sp)
    ld	$s4,312($sp)
    ld	$s5,344($sp)
    ld	$s6,376($sp)
    ld	$s7,352($sp)
    ld	$s8,328($sp)
    ldc1	$f20,176($sp)
    ldc1	$f22,160($sp)
    ldc1	$f24,168($sp)
    ldc1	$f26,152($sp)
    ld	$ra,304($sp)
    ldc1	$f28,184($sp)
    ldc1	$f30,192($sp)
    jr	$ra
    addiu	$sp,$sp,480
.L0db00d84:
    nop
    # Line 465
    bc1f	.L0daffe1c
    # Line 470
    nop	# was lw $t9, -22924($gp) # &floor
    sdc1	$f5,400($sp)
    b	.L0daffe18
    # Line 467
    li	$s8,1
.end __glTextureRGB_F_F_StippledSpan

# Function: __glTextureRGB_F_LML_Span
# Declared: Line 600 (Source lines: 601-1216)
# Address: 0x0db00d9c - 0x0db02de4 (Size: 8264 bytes, Frame: 128)
.globl __glTextureRGB_F_LML_Span
.ent __glTextureRGB_F_LML_Span
__glTextureRGB_F_LML_Span:
    # Line 633
    lwc1	$f5,30232($a0)
    # Line 632
    lwc1	$f6,30228($a0)
    # Line 601
    addiu	$sp,$sp,-512
    sd	$s1,280($sp)
    sd	$s3,392($sp)
    sd	$s4,376($sp)
    sd	$s6,384($sp)
    sd	$s7,360($sp)
    sd	$s8,248($sp)
    sdc1	$f20,224($sp)
    sdc1	$f22,200($sp)
    sdc1	$f24,192($sp)
    sdc1	$f26,216($sp)
    sd	$ra,368($sp)
    sd	$s2,400($sp)
    move	$s2,$a0
    sdc1	$f30,176($sp)
    # Line 635
    lwc1	$f30,30244($a0)
    sdc1	$f28,184($sp)
    # Line 634
    lwc1	$f28,30240($a0)
    sd	$s5,296($sp)
    # Line 630
    lw	$s5,30468($a0)
    sd	$s0,312($sp)
    # Line 628
    lw	$s0,28216($a0)
    # Line 609
    lwc1	$f0,3280($a0)
    # Line 637
    lw	$at,30252($a0)
    # sd	gp,352(sp)
    # Line 601
    lui	$v0,0xf
    addiu	$v0,$v0,27340
    # addu	gp,t9,v0
    # Line 626
    lw	$v0,2376($a0)
    sdc1	$f0,128($sp)
    # Line 637
    addiu	$at,$at,-1
    # Line 626
    lw	$v0,0($v0)
    sd	$at,448($sp)
    # Line 637
    bltz	$at,.L0db02ae0
    sd	$v0,456($sp)
    addiu	$s3,$sp,48
    li	$a5,-1
    li	$s1,1
    li	$s4,4
    mtc1	$zero,$f26
    li	$a3,10497
    addiu	$a2,$sp,12
    sd	$a2,288($sp)
    addiu	$a1,$sp,0
    ld	$v1,456($sp)
    addiu	$a1,$a1,-4
    sd	$a1,408($sp)
    xori	$v1,$v1,0x2101
    sltiu	$v1,$v1,1
    b	.L0db01270
    sd	$v1,440($sp)
.L0db00e70:
    ldc1	$f7,_lit8_bff0000000000000
    # Line 714
    add.d	$f7,$f20,$f7
    dmtc1	$zero,$f1
    c.lt.d	$f7,$f1
    nop
    bc1fl	.L0db00e8c
    move	$a3,$zero
.L0db00e8c:
    beqz	$a3,.L0db0254c
    add.d	$f6,$f20,$f6
    dmtc1	$zero,$f1
.L0db00e98:
    c.lt.d	$f6,$f1
    ldc1	$f5,_lit8_3ff0000000000000
    bc1f	.L0db01d0c
    dmtc1	$zero,$f1
    sdc1	$f0,160($sp)
    sd	$at,304($sp)
.L0db00eb0:
    # Line 733
    # lw $t9, -22924($gp) # &floor
    sdc1	$f0,160($sp)
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f3,$f0
    mfc1	$a0,$f3
    nop
    # Line 734
    addiu	$v1,$a0,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    ldc1	$f5,160($sp)
    c.lt.s	$f2,$f26
    # Line 733
    sw	$a0,20($sp)
    # Line 737
    addiu	$v0,$a0,1
    # Line 734
    bc1f	.L0db00ef8
    sw	$v1,16($sp)
    # Line 735
    sw	$zero,16($sp)
.L0db00ef8:
    # Line 737
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db00f24
    sw	$v0,24($sp)
    # Line 738
    trunc.w.s	$f1,$f5
    mfc1	$v0,$f1
    nop
    sw	$v0,24($sp)
.L0db00f24:
    # Line 740
    addiu	$a1,$v0,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f5,$f2
    nop
    bc1f	.L0db00f54
    sw	$a1,28($sp)
    # Line 741
    trunc.w.s	$f3,$f5
    mfc1	$a2,$f3
    nop
    sw	$a2,28($sp)
.L0db00f54:
    # Line 746
    # lw $t9, -22924($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f8,$f22,$f0
    ldc1	$f9,_lit8_4030000000000000
    mul.d	$f8,$f8,$f9
    lwc1	$f24,3280($s2)
    cvt.d.s	$f24,$f24
    add.d	$f8,$f8,$f24
    trunc.w.d	$f8,$f8
    mfc1	$a4,$f8
    # Line 751
    mov.d	$f12,$f20
    # lw $t9, -22924($gp) # &floor
    # Line 747
    sll	$a6,$a4,0x2
    addu	$a6,$a6,$s0
    # Line 748
    lwc1	$f7,24($a6)
    # Line 747
    lwc1	$f6,88($a6)
    li	$a5,32
    # Line 748
    swc1	$f7,36($sp)
    # Line 747
    swc1	$f6,32($sp)
    # Line 750
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s0
    lwc1	$f5,24($a5)
    # Line 749
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lwc1	$f4,88($a3)
    # Line 750
    swc1	$f5,44($sp)
    # Line 751
    jal	floor
    # Line 749
    swc1	$f4,40($sp)
    # Line 751
    sub.d	$f4,$f20,$f0
    ldc1	$f5,_lit8_4030000000000000
    mul.d	$f4,$f4,$f5
    add.d	$f4,$f4,$f24
    li	$a3,10497
    li	$a5,-1
    trunc.w.d	$f4,$f4
    # Line 759
    addiu	$a6,$sp,112
    move	$s6,$zero
    ldc1	$f6,464($sp)
    # Line 751
    mfc1	$v0,$f4
    ldc1	$f5,472($sp)
    li	$v1,32
    # Line 752
    sll	$a0,$v0,0x2
    # Line 755
    subu	$v1,$v1,$v0
    # Line 754
    sll	$at,$v0,0x1e
    subu	$at,$at,$v0
    ld	$v0,304($sp)
    # Line 752
    addu	$a0,$a0,$s0
    # Line 753
    lwc1	$f3,24($a0)
    # Line 752
    lwc1	$f2,88($a0)
    ld	$a0,272($sp)
    # Line 753
    swc1	$f3,116($sp)
    # Line 755
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    lwc1	$f1,24($v1)
    # Line 754
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    lwc1	$f0,88($at)
    # Line 752
    swc1	$f2,112($sp)
    # Line 755
    swc1	$f1,124($sp)
    # Line 754
    swc1	$f0,120($sp)
    # Line 759
    lwc1	$f0,0($a6)
.L0db01058:
    addiu	$a7,$sp,32
    sll	$a4,$s6,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s3
    # Line 761
    lwc1	$f2,4($a7)
    lwc1	$f3,8($a7)
    mul.s	$f2,$f2,$f0
    lwc1	$f4,12($a7)
    mul.s	$f3,$f3,$f0
    lwc1	$f1,0($a7)
    mul.s	$f4,$f4,$f0
    mul.s	$f1,$f1,$f0
    # Line 759
    addiu	$s6,$s6,1
    addiu	$a6,$a6,4
    # Line 761
    swc1	$f4,12($a4)
    swc1	$f3,8($a4)
    swc1	$f2,4($a4)
    swc1	$f1,0($a4)
    # Line 759
    bnel	$s6,$s4,.L0db01058
    lwc1	$f0,0($a6)
    # Line 796
    mov.s	$f20,$f26
    # Line 797
    move	$s6,$zero
    li	$a6,3
    # Line 784
    addiu	$s8,$sp,16
    # Line 759
    beqz	$a0,.L0db01dc8
    # Line 796
    mov.s	$f22,$f26
.L0db010c0:
    li	$at,2
.L0db010c4:
    # Line 771
    beq	$a0,$at,.L0db02288
    # Line 783
    mov.s	$f24,$f26
    # Line 797
    addiu	$s8,$sp,16
    # Line 796
    mov.s	$f24,$f26
.L0db010d4:
    # Line 797
    addiu	$t0,$sp,0
    li	$a0,3
    sllv	$a7,$s1,$a6
    and	$a7,$a7,$v0
    # Line 800
    sllv	$at,$s1,$a0
    # Line 798
    addiu	$a0,$a0,-1
    # Line 797
    sll	$a4,$s6,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s3
    # Line 800
    and	$at,$at,$s7
    beqz	$at,.L0db017b8
    nop
    # Line 801
    lwc1	$f4,0($a4)
.L0db01108:
    # Line 803
    lwc1	$f3,164($s0)
    # Line 802
    lwc1	$f2,160($s0)
    # Line 803
    mul.s	$f3,$f3,$f4
    # Line 801
    lwc1	$f1,156($s0)
    # Line 802
    mul.s	$f2,$f2,$f4
    # Line 801
    mul.s	$f1,$f1,$f4
    # Line 803
    add.s	$f22,$f3,$f22
    # Line 802
    add.s	$f20,$f2,$f20
    # Line 801
    add.s	$f24,$f1,$f24
.L0db0112c:
    # Line 800
    sllv	$v1,$s1,$a0
    and	$v1,$v1,$s7
    beqz	$v1,.L0db01814
    # Line 798
    addiu	$a0,$a0,-1
    # Line 801
    lwc1	$f3,4($a4)
.L0db01140:
    # Line 803
    lwc1	$f2,164($s0)
    # Line 802
    lwc1	$f1,160($s0)
    # Line 803
    mul.s	$f2,$f2,$f3
    # Line 801
    lwc1	$f4,156($s0)
    # Line 802
    mul.s	$f1,$f1,$f3
    # Line 801
    mul.s	$f4,$f4,$f3
    # Line 803
    add.s	$f22,$f2,$f22
    # Line 802
    add.s	$f20,$f1,$f20
    # Line 801
    add.s	$f24,$f4,$f24
.L0db01164:
    # Line 800
    sllv	$a1,$s1,$a0
    and	$a1,$a1,$s7
    beqz	$a1,.L0db01870
    # Line 798
    addiu	$a0,$a0,-1
    # Line 801
    lwc1	$f2,8($a4)
.L0db01178:
    # Line 803
    lwc1	$f1,164($s0)
    # Line 802
    lwc1	$f4,160($s0)
    # Line 803
    mul.s	$f1,$f1,$f2
    # Line 801
    lwc1	$f3,156($s0)
    # Line 802
    mul.s	$f4,$f4,$f2
    # Line 801
    mul.s	$f3,$f3,$f2
    # Line 803
    add.s	$f22,$f1,$f22
    # Line 802
    add.s	$f20,$f4,$f20
    # Line 801
    add.s	$f24,$f3,$f24
.L0db0119c:
    # Line 797
    addiu	$a6,$a6,-1
    # Line 800
    sllv	$a2,$s1,$a0
    and	$a2,$a2,$s7
    beqz	$a2,.L0db018cc
    # Line 797
    addiu	$s6,$s6,1
    # Line 801
    lwc1	$f1,12($a4)
.L0db011b4:
    # Line 803
    lwc1	$f4,164($s0)
    # Line 802
    lwc1	$f3,160($s0)
    # Line 803
    mul.s	$f4,$f4,$f1
    # Line 801
    lwc1	$f2,156($s0)
    # Line 802
    mul.s	$f3,$f3,$f1
    # Line 801
    mul.s	$f2,$f2,$f1
    # Line 803
    add.s	$f22,$f4,$f22
    # Line 802
    add.s	$f20,$f3,$f20
    # Line 801
    add.s	$f24,$f2,$f24
.L0db011d8:
    # Line 797
    bne	$s6,$s4,.L0db010d4
    addiu	$s8,$s8,4
.L0db011e0:
    # Line 1176
    ld	$at,456($sp)
.L0db011e4:
    li	$v1,8448
    beq	$at,$v1,.L0db01da0
    li	$v1,7681
.L0db011f0:
    # Line 1189
    ld	$a1,456($sp)
    li	$a2,0x8062
    beq	$a1,$a2,.L0db01928
    ld	$at,456($sp)
    beq	$at,$v1,.L0db01928
    move	$v0,$zero
    ld	$a1,440($sp)
.L0db0120c:
    or	$a1,$v0,$a1
    beqzl	$a1,.L0db01d2c
    # Line 1202
    lwc1	$f2,3284($s2)
    # Line 1192
    lwc1	$f3,30756($s2)
    mul.s	$f3,$f3,$f24
    swc1	$f3,0($s5)
    # Line 1193
    lwc1	$f2,30760($s2)
    mul.s	$f2,$f2,$f20
    swc1	$f2,4($s5)
    # Line 1194
    lwc1	$f1,30764($s2)
    mul.s	$f1,$f1,$f22
    swc1	$f1,8($s5)
.L0db0123c:
    # Line 1212
    lwc1	$f3,30400($s2)
    # Line 1211
    lwc1	$f2,30396($s2)
    # Line 1212
    add.s	$f30,$f3,$f30
    # Line 1210
    lwc1	$f1,30388($s2)
    # Line 1211
    add.s	$f28,$f2,$f28
    # Line 1209
    lwc1	$f4,30384($s2)
    # Line 1210
    add.s	$f5,$f1,$f5
    # Line 637
    ld	$a2,448($sp)
    # Line 1213
    addiu	$s5,$s5,16
    # Line 1209
    add.s	$f6,$f4,$f6
    # Line 637
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0db02ae0
    sd	$a2,448($sp)
.L0db01270:
    # Line 638
    lwc1	$f8,3284($s2)
    div.s	$f7,$f8,$f28
    lw	$a7,4($s0)
    # Line 658
    move	$s7,$zero
    # Line 638
    mul.s	$f0,$f30,$f7
    # Line 658
    ldc1	$f22,128($sp)
    # Line 824
    mov.s	$f9,$f26
    # Line 638
    lwc1	$f2,240($s0)
    mul.s	$f1,$f5,$f7
    lw	$a6,228($s0)
    # Line 660
    li	$s6,-1
    # Line 638
    c.le.s	$f0,$f2
    # Line 648
    move	$a0,$a6
    # Line 638
    mul.s	$f7,$f6,$f7
    bc1f	.L0db01364
    sdc1	$f1,136($sp)
    # Line 646
    move	$v0,$zero
    # Line 655
    lwc1	$f0,32($a6)
    # Line 652
    lw	$a4,20($a6)
    # Line 651
    lw	$v1,0($a6)
    # Line 658
    mul.s	$f20,$f7,$f0
    # Line 649
    lw	$at,44($a6)
    sd	$v1,256($sp)
    # Line 653
    lw	$s8,24($a6)
    sd	$at,264($sp)
    ldc1	$f7,_lit8_4000000000000000
    addiu	$s8,$s8,-1
    # Line 658
    sub.s	$f20,$f20,$f22
    sd	$s8,416($sp)
    # Line 652
    addiu	$s8,$a4,-1
    # Line 658
    bne	$a3,$a7,.L0db01618
    cvt.d.s	$f22,$f20
    # Line 660
    ld	$v0,408($sp)
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    sd	$a0,336($sp)
    add.s	$f8,$f7,$f20
    sd	$v0,328($sp)
    sd	$a4,320($sp)
    sdc1	$f5,472($sp)
    c.lt.s	$f8,$f26
    sdc1	$f6,464($sp)
    addiu	$s6,$s6,1
    bc1f	.L0db01964
    sdc1	$f0,152($sp)
    ld	$a0,320($sp)
    # Line 662
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    ld	$a2,328($sp)
    and	$a1,$a1,$s8
    b	.L0db01984
    sw	$a1,4($a2)
.L0db01364:
    # Line 779
    c.eq.s	$f0,$f26
    nop
    bc1t	.L0db013ec
    # Line 819
    move	$v0,$zero
    # Line 820
    trunc.w.s	$f1,$f0
    mfc1	$a0,$f1
    nop
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db013c0
    # Line 822
    sllv	$a1,$s1,$v0
    # Line 820
    addiu	$v0,$v0,1
.L0db01390:
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db013bc
    nop
    addiu	$v0,$v0,1
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db013bc
    nop
    addiu	$v0,$v0,1
    sra	$a0,$a0,0x1
    bnezl	$a0,.L0db01390
    addiu	$v0,$v0,1
.L0db013bc:
    # Line 822
    sllv	$a1,$s1,$v0
.L0db013c0:
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f0,$f2
    div.s	$f1,$f1,$f2
    mtc1	$v0,$f9
    nop
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f1
    ldc1	$f1,128($sp)
    mul.s	$f9,$f9,$f1
.L0db013ec:
    # Line 832
    trunc.w.s	$f1,$f9
    # Line 828
    lw	$a0,236($s0)
    # Line 832
    cvt.s.w	$f0,$f1
    mfc1	$v0,$f1
    # Line 835
    sll	$s8,$a0,0x2
    subu	$s8,$s8,$a0
    # Line 832
    addiu	$at,$v0,1
    slt	$a2,$a0,$at
    sub.s	$f0,$f9,$f0
    slti	$at,$at,0
    or	$a2,$a2,$at
    beqz	$a2,.L0db01e20
    sub.s	$f24,$f8,$f0
    # Line 835
    sll	$s8,$s8,0x3
    addu	$s8,$s8,$a0
    sll	$s8,$s8,0x2
    addu	$s8,$s8,$a6
    # Line 836
    lw	$at,44($s8)
    sd	$s8,336($sp)
    # Line 837
    lw	$v1,0($s8)
    sd	$at,264($sp)
    # Line 841
    lwc1	$f0,32($s8)
    # Line 839
    lw	$at,24($s8)
    # Line 838
    lw	$s8,20($s8)
    # Line 842
    mul.s	$f8,$f7,$f0
    sd	$v1,256($sp)
    # Line 838
    addiu	$s8,$s8,-1
    # Line 839
    addiu	$at,$at,-1
    sd	$at,416($sp)
    # Line 842
    beq	$a3,$a7,.L0db02614
    mov.s	$f20,$f8
    # Line 846
    c.lt.s	$f8,$f26
    nop
    bc1fl	.L0db01934
    # Line 848
    c.lt.s	$f0,$f8
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    mov.s	$f20,$f26
.L0db01484:
    # Line 850
    ldc1	$f2,128($sp)
.L0db01488:
    # Line 851
    # lw $t9, -23708($gp) # &__glFloor
    # Line 850
    sub.s	$f20,$f20,$f2
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    # Line 851
    jal	__glFloor
    mov.s	$f12,$f20
    move	$s7,$v0
    # Line 852
    addiu	$s6,$v0,1
.L0db014a8:
    # Line 855
    ld	$a1,336($sp)
    # Line 856
    ldc1	$f5,136($sp)
    # Line 855
    lwc1	$f0,36($a1)
    # Line 856
    mul.s	$f5,$f5,$f0
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db02640
    mov.s	$f22,$f5
    # Line 860
    c.lt.s	$f5,$f26
    nop
    bc1fl	.L0db01950
    # Line 862
    c.lt.s	$f0,$f5
    mov.s	$f22,$f26
.L0db014dc:
    # Line 864
    ldc1	$f6,128($sp)
.L0db014e0:
    # Line 865
    # lw $t9, -23708($gp) # &__glFloor
    # Line 864
    sub.s	$f22,$f22,$f6
    # Line 865
    jal	__glFloor
    mov.s	$f12,$f22
    sd	$v0,432($sp)
    # Line 866
    addiu	$a2,$v0,1
    sd	$a2,424($sp)
.L0db014fc:
    # Line 869
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 870
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f0,232($sp)
    jal	__glFrac
    mov.s	$f12,$f22
    li	$a3,10497
    li	$a5,-1
    ldc1	$f6,464($sp)
    ldc1	$f5,472($sp)
    ld	$v0,424($sp)
    # Line 872
    nor	$a7,$s8,$zero
    # Line 871
    ldc1	$f7,232($sp)
    lwc1	$f10,3284($s2)
    # Line 872
    and	$t0,$a7,$s7
    ld	$a4,416($sp)
    # Line 871
    sub.s	$f8,$f10,$f7
    # Line 872
    ld	$a0,432($sp)
    nor	$a4,$a4,$zero
    sub.s	$f10,$f10,$f0
    and	$a6,$a4,$a0
    or	$at,$t0,$a6
    beqz	$at,.L0db02410
    mul.s	$f9,$f8,$f10
    # Line 885
    lwc1	$f22,164($s0)
    # Line 884
    lwc1	$f20,160($s0)
    # Line 885
    mul.s	$f22,$f22,$f9
    # Line 883
    lwc1	$f24,156($s0)
    # Line 884
    mul.s	$f20,$f20,$f9
    # Line 883
    mul.s	$f24,$f24,$f9
.L0db01578:
    # Line 891
    and	$t1,$a7,$s6
    or	$at,$t1,$a6
    beqz	$at,.L0db02450
    mul.s	$f9,$f7,$f10
    # Line 896
    lwc1	$f3,164($s0)
    # Line 895
    lwc1	$f2,160($s0)
    # Line 896
    mul.s	$f3,$f3,$f9
    # Line 894
    lwc1	$f1,156($s0)
    # Line 895
    mul.s	$f2,$f2,$f9
    # Line 894
    mul.s	$f1,$f1,$f9
    # Line 896
    add.s	$f22,$f3,$f22
    # Line 895
    add.s	$f20,$f2,$f20
    # Line 894
    add.s	$f24,$f1,$f24
.L0db015ac:
    # Line 902
    mul.s	$f9,$f0,$f8
    ld	$at,264($sp)
    and	$a0,$a4,$v0
    or	$v1,$t0,$a0
    beqz	$v1,.L0db0249c
    # Line 913
    or	$a1,$t1,$a0
    # Line 907
    lwc1	$f2,164($s0)
    # Line 906
    lwc1	$f1,160($s0)
    # Line 907
    mul.s	$f2,$f2,$f9
    # Line 905
    lwc1	$f4,156($s0)
    # Line 906
    mul.s	$f1,$f1,$f9
    # Line 905
    mul.s	$f4,$f4,$f9
    # Line 907
    add.s	$f22,$f2,$f22
    # Line 906
    add.s	$f20,$f1,$f20
    # Line 905
    add.s	$f24,$f4,$f24
.L0db015e8:
    # Line 913
    beqz	$a1,.L0db024e4
    mul.s	$f8,$f0,$f7
    # Line 918
    lwc1	$f1,164($s0)
    # Line 917
    lwc1	$f4,160($s0)
    # Line 918
    mul.s	$f1,$f1,$f8
    # Line 916
    lwc1	$f3,156($s0)
    # Line 917
    mul.s	$f4,$f4,$f8
    # Line 916
    mul.s	$f3,$f3,$f8
    # Line 918
    add.s	$f22,$f1,$f22
    # Line 917
    add.s	$f20,$f4,$f20
    # Line 918
    b	.L0db011e0
    # Line 916
    add.s	$f24,$f3,$f24
.L0db01618:
    ldc1	$f8,_lit8_bff0000000000000
    # Line 669
    add.d	$f8,$f22,$f8
    dmtc1	$zero,$f1
    c.lt.d	$f8,$f1
    li	$a4,1
    bc1fl	.L0db01634
    move	$a4,$zero
.L0db01634:
    beqz	$a4,.L0db02530
    add.d	$f7,$f22,$f7
    dmtc1	$zero,$f1
.L0db01640:
    c.lt.d	$f7,$f1
    nop
    bc1f	.L0db01cdc
    ldc1	$f9,_lit8_3ff0000000000000
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    # Line 671
    li	$s7,15
.L0db01664:
    sd	$a0,336($sp)
.L0db01668:
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    # Line 688
    # lw $t9, -23708($gp) # &__glFloor
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 689
    addiu	$a2,$v0,-1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    li	$a0,10497
    # Line 688
    sw	$v0,4($sp)
    ldc1	$f6,136($sp)
    # Line 689
    c.lt.s	$f2,$f26
    ldc1	$f5,152($sp)
    # Line 692
    addiu	$a3,$v0,1
    # Line 689
    bc1f	.L0db016b8
    sw	$a2,0($sp)
    # Line 690
    sw	$zero,0($sp)
.L0db016b8:
    # Line 692
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f5,$f3
    nop
    bc1f	.L0db016e4
    sw	$a3,8($sp)
    # Line 693
    trunc.w.s	$f4,$f5
    mfc1	$a3,$f4
    nop
    sw	$a3,8($sp)
.L0db016e4:
    # Line 695
    addiu	$at,$a3,1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f5,$f1
    nop
    bc1f	.L0db01714
    sw	$at,12($sp)
    # Line 696
    trunc.w.s	$f2,$f5
    mfc1	$v1,$f2
    nop
    sw	$v1,12($sp)
.L0db01714:
    ld	$a2,336($sp)
    # Line 700
    lwc1	$f0,36($a2)
    # Line 703
    move	$v0,$zero
    # Line 714
    li	$a3,1
    # Line 703
    mul.s	$f24,$f6,$f0
    # Line 705
    li	$s6,-1
    ld	$s8,288($sp)
    # Line 716
    li	$at,15
    # Line 703
    ldc1	$f1,128($sp)
    # Line 718
    li	$v1,14
    # Line 703
    lw	$a1,8($s0)
    sub.s	$f24,$f24,$f1
    # Line 722
    li	$a2,8
    ldc1	$f6,_lit8_4000000000000000
    # Line 703
    bne	$a1,$a0,.L0db00e70
    cvt.d.s	$f20,$f24
    # Line 705
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    addiu	$s6,$s6,1
    bc1f	.L0db01b18
    sd	$v0,304($sp)
    ld	$a3,336($sp)
    # Line 707
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,416($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db01b3c
    sw	$at,4($s8)
.L0db017b8:
    # Line 800
    bnezl	$a7,.L0db01108
    # Line 801
    lwc1	$f4,0($a4)
    # Line 805
    ld	$v1,264($sp)
    lw	$at,0($s8)
    lw	$a2,0($t0)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f4,0($a4)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 807
    lwc1	$f3,8($a1)
    # Line 806
    lwc1	$f2,4($a1)
    # Line 807
    mul.s	$f3,$f3,$f4
    # Line 805
    lwc1	$f1,0($a1)
    # Line 806
    mul.s	$f2,$f2,$f4
    # Line 805
    mul.s	$f1,$f1,$f4
    # Line 807
    add.s	$f22,$f3,$f22
    # Line 806
    add.s	$f20,$f2,$f20
    b	.L0db0112c
    # Line 805
    add.s	$f24,$f1,$f24
.L0db01814:
    # Line 800
    bnezl	$a7,.L0db01140
    # Line 801
    lwc1	$f3,4($a4)
    # Line 805
    ld	$v1,264($sp)
    lw	$at,0($s8)
    lw	$a2,4($t0)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f3,4($a4)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 807
    lwc1	$f2,8($a1)
    # Line 806
    lwc1	$f1,4($a1)
    # Line 807
    mul.s	$f2,$f2,$f3
    # Line 805
    lwc1	$f4,0($a1)
    # Line 806
    mul.s	$f1,$f1,$f3
    # Line 805
    mul.s	$f4,$f4,$f3
    # Line 807
    add.s	$f22,$f2,$f22
    # Line 806
    add.s	$f20,$f1,$f20
    b	.L0db01164
    # Line 805
    add.s	$f24,$f4,$f24
.L0db01870:
    # Line 800
    bnezl	$a7,.L0db01178
    # Line 801
    lwc1	$f2,8($a4)
    # Line 805
    ld	$v1,264($sp)
    lw	$at,0($s8)
    lw	$a2,8($t0)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f2,8($a4)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 807
    lwc1	$f1,8($a1)
    # Line 806
    lwc1	$f4,4($a1)
    # Line 807
    mul.s	$f1,$f1,$f2
    # Line 805
    lwc1	$f3,0($a1)
    # Line 806
    mul.s	$f4,$f4,$f2
    # Line 805
    mul.s	$f3,$f3,$f2
    # Line 807
    add.s	$f22,$f1,$f22
    # Line 806
    add.s	$f20,$f4,$f20
    b	.L0db0119c
    # Line 805
    add.s	$f24,$f3,$f24
.L0db018cc:
    # Line 800
    bnezl	$a7,.L0db011b4
    # Line 801
    lwc1	$f1,12($a4)
    # Line 805
    ld	$v1,264($sp)
    lw	$at,0($s8)
    lw	$a2,12($t0)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,256($sp)
    lwc1	$f1,12($a4)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 807
    lwc1	$f4,8($a1)
    # Line 806
    lwc1	$f3,4($a1)
    # Line 807
    mul.s	$f4,$f4,$f1
    # Line 805
    lwc1	$f2,0($a1)
    # Line 806
    mul.s	$f3,$f3,$f1
    # Line 805
    mul.s	$f2,$f2,$f1
    # Line 807
    add.s	$f22,$f4,$f22
    # Line 806
    add.s	$f20,$f3,$f20
    b	.L0db011d8
    # Line 805
    add.s	$f24,$f2,$f24
.L0db01928:
    # Line 1189
    li	$v0,1
    b	.L0db0120c
    ld	$a1,440($sp)
.L0db01934:
    nop
    # Line 848
    bc1f	.L0db01488
    # Line 850
    ldc1	$f2,128($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    b	.L0db01484
    # Line 849
    mov.s	$f20,$f0
.L0db01950:
    nop
    # Line 862
    bc1f	.L0db014e0
    # Line 864
    ldc1	$f6,128($sp)
    b	.L0db014dc
    # Line 863
    mov.s	$f22,$f0
.L0db01964:
    # Line 664
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    ld	$a2,328($sp)
    and	$a1,$a1,$s8
    sw	$a1,4($a2)
.L0db01984:
    # Line 660
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db019e0
    addiu	$s6,$s6,1
    ld	$a2,320($sp)
    # Line 662
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$at,$f0
    ld	$v1,328($sp)
    and	$at,$at,$s8
    b	.L0db01a00
    sw	$at,8($v1)
.L0db019e0:
    # Line 664
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$v1,$f1
    ld	$a1,328($sp)
    and	$v1,$v1,$s8
    sw	$v1,8($a1)
.L0db01a00:
    # Line 660
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db01a5c
    addiu	$s6,$s6,1
    ld	$a0,320($sp)
    # Line 662
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    ld	$a2,328($sp)
    and	$a1,$a1,$s8
    b	.L0db01a7c
    sw	$a1,12($a2)
.L0db01a5c:
    # Line 664
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$a2,$f1
    ld	$at,328($sp)
    and	$a2,$a2,$s8
    sw	$a2,12($at)
.L0db01a7c:
    # Line 660
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db01ae0
    ld	$a3,320($sp)
    # Line 662
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    li	$a0,10497
    ldc1	$f6,136($sp)
    mfc1	$at,$f0
    ldc1	$f5,152($sp)
    ld	$v1,328($sp)
    and	$at,$at,$s8
    b	.L0db01b0c
    sw	$at,16($v1)
.L0db01ae0:
    # Line 664
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    li	$a0,10497
    ldc1	$f6,136($sp)
    mfc1	$v1,$f1
    ld	$a1,328($sp)
    ldc1	$f5,152($sp)
    and	$v1,$v1,$s8
    sw	$v1,16($a1)
.L0db01b0c:
    # Line 667
    li	$a1,1
    b	.L0db01714
    sd	$a1,272($sp)
.L0db01b18:
    # Line 709
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f2,$f0
    ld	$at,416($sp)
    mfc1	$a2,$f2
    nop
    and	$a2,$a2,$at
    sw	$a2,4($s8)
.L0db01b3c:
    # Line 705
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db01ba0
    addiu	$s6,$s6,1
    ld	$v0,336($sp)
    # Line 707
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,416($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0db01bc4
    sw	$v1,8($s8)
.L0db01ba0:
    # Line 709
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$at,416($sp)
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$at
    sw	$a2,8($s8)
.L0db01bc4:
    # Line 705
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db01c28
    addiu	$s6,$s6,1
    ld	$v0,336($sp)
    # Line 707
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,416($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0db01c4c
    sw	$v1,12($s8)
.L0db01c28:
    # Line 709
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$at,416($sp)
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$at
    sw	$a2,12($s8)
.L0db01c4c:
    # Line 705
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db01cac
    ld	$v0,336($sp)
    # Line 707
    lw	$v0,24($v0)
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,416($sp)
    mfc1	$v1,$f0
    ld	$v0,272($sp)
    and	$v1,$v1,$a1
    b	.L0db01cd0
    sw	$v1,16($s8)
.L0db01cac:
    # Line 709
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$at,416($sp)
    mfc1	$a2,$f1
    ld	$v0,272($sp)
    and	$a2,$a2,$at
    sw	$a2,16($s8)
.L0db01cd0:
    # Line 712
    addiu	$v0,$v0,1
    b	.L0db00f54
    sd	$v0,272($sp)
.L0db01cdc:
    # Line 671
    add.d	$f9,$f22,$f9
    dmtc1	$zero,$f2
    c.lt.d	$f9,$f2
    nop
    bc1fl	.L0db023cc
    # Line 673
    c.lt.s	$f20,$f26
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    li	$s7,14
.L0db01d0c:
    # Line 716
    add.d	$f5,$f20,$f5
    c.lt.d	$f5,$f1
    nop
    bc1f	.L0db023f0
    # Line 730
    li	$at,1
    sdc1	$f0,160($sp)
    # Line 718
    b	.L0db00eb0
    sd	$v1,304($sp)
.L0db01d2c:
    # Line 1202
    sub.s	$f2,$f2,$f24
    lwc1	$f1,0($s5)
    # Line 1200
    lw	$a1,2376($s2)
    # Line 1202
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f24
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s5)
    # Line 1203
    lwc1	$f4,3284($s2)
    sub.s	$f4,$f4,$f20
    lwc1	$f3,4($s5)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($a1)
    mul.s	$f4,$f4,$f20
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s5)
    # Line 1204
    lwc1	$f2,3284($s2)
    sub.s	$f2,$f2,$f22
    lwc1	$f1,8($s5)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    b	.L0db0123c
    swc1	$f1,8($s5)
.L0db01d90:
    # Line 1176
    ld	$a2,456($sp)
    li	$at,8448
    bne	$a2,$at,.L0db011f0
    li	$v1,7681
.L0db01da0:
    # Line 1186
    lwc1	$f4,4($s5)
    # Line 1187
    lwc1	$f1,8($s5)
    # Line 1186
    mul.s	$f4,$f4,$f20
    # Line 1185
    lwc1	$f3,0($s5)
    # Line 1187
    mul.s	$f1,$f1,$f22
    # Line 1185
    mul.s	$f3,$f3,$f24
    # Line 1187
    swc1	$f1,8($s5)
    # Line 1186
    swc1	$f4,4($s5)
    # Line 1187
    b	.L0db0123c
    # Line 1185
    swc1	$f3,0($s5)
.L0db01dc8:
    # Line 759
    bnez	$s7,.L0db010c4
    li	$at,2
    li	$a4,3
    # Line 770
    lw	$a1,0($sp)
    # Line 759
    bnez	$v0,.L0db010c0
    # Line 771
    ld	$a2,264($sp)
    # Line 769
    mov.s	$f24,$f26
    mov.s	$f22,$f26
    mov.s	$f20,$f26
    # Line 771
    addiu	$a0,$sp,48
    move	$s6,$zero
    # Line 770
    lw	$v1,16($sp)
    # Line 771
    sllv	$a4,$a4,$a2
    sll	$a4,$a4,0x2
    # Line 770
    sllv	$v1,$v1,$a2
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,256($sp)
    sll	$v0,$v0,0x2
    b	.L0db02bd4
    addu	$v0,$v0,$v1
.L0db01e20:
    # Line 934
    sll	$s8,$v0,0x2
    subu	$s8,$s8,$v0
    sll	$s8,$s8,0x3
    addu	$s8,$s8,$v0
    sll	$s8,$s8,0x2
    sd	$s8,344($sp)
    addu	$s8,$a6,$s8
    # Line 935
    lw	$at,44($s8)
    sd	$s8,336($sp)
    # Line 936
    lw	$v1,0($s8)
    sd	$at,264($sp)
    # Line 940
    lwc1	$f8,32($s8)
    # Line 938
    lw	$at,24($s8)
    # Line 937
    lw	$s8,20($s8)
    sdc1	$f8,152($sp)
    # Line 941
    mul.s	$f8,$f7,$f8
    sd	$zero,272($sp)
    sd	$v1,256($sp)
    # Line 937
    addiu	$s8,$s8,-1
    # Line 938
    addiu	$at,$at,-1
    sd	$at,416($sp)
    # Line 941
    beq	$a3,$a7,.L0db02c40
    mov.s	$f22,$f8
    # Line 946
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db02568
    ldc1	$f4,152($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 948
    mov.s	$f22,$f26
.L0db01ea0:
    sdc1	$f5,472($sp)
.L0db01ea4:
    # Line 950
    ldc1	$f9,128($sp)
    sdc1	$f6,464($sp)
    # Line 951
    # lw $t9, -23708($gp) # &__glFloor
    # Line 950
    sub.s	$f22,$f22,$f9
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 951
    jal	__glFloor
    mov.s	$f12,$f22
    move	$s7,$v0
    # Line 952
    addiu	$s6,$v0,1
.L0db01ecc:
    # Line 955
    ld	$a1,336($sp)
    # Line 956
    ldc1	$f5,136($sp)
    # Line 955
    lwc1	$f20,36($a1)
    # Line 956
    mul.s	$f5,$f5,$f20
    lw	$at,8($s0)
    li	$v1,10497
    sdc1	$f20,160($sp)
    beq	$at,$v1,.L0db02c7c
    mov.s	$f20,$f5
    # Line 961
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db02590
    ldc1	$f1,160($sp)
    # Line 963
    mov.s	$f20,$f26
.L0db01f04:
    # Line 965
    ldc1	$f21,128($sp)
.L0db01f08:
    # Line 966
    # lw $t9, -23708($gp) # &__glFloor
    # Line 965
    sub.s	$f20,$f20,$f21
    # Line 966
    jal	__glFloor
    mov.s	$f12,$f20
    sd	$v0,432($sp)
    # Line 967
    addiu	$a2,$v0,1
    sd	$a2,424($sp)
.L0db01f24:
    # Line 970
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 971
    # lw $t9, -23712($gp) # &__glFrac
    # Line 970
    mov.s	$f22,$f0
    # Line 971
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 972
    lwc1	$f1,3284($s2)
    ld	$a3,344($sp)
    # Line 973
    mul.s	$f6,$f24,$f22
    # Line 972
    sub.s	$f8,$f1,$f22
    li	$v1,2
    # Line 1004
    nor	$a7,$s8,$zero
    and	$t0,$a7,$s7
    # Line 973
    mul.s	$f8,$f24,$f8
    ld	$at,272($sp)
    sub.s	$f1,$f1,$f0
    mul.s	$f5,$f0,$f6
    # Line 1004
    ld	$a4,416($sp)
    ld	$a6,432($sp)
    # Line 973
    mul.s	$f6,$f6,$f1
    # Line 1004
    nor	$a4,$a4,$zero
    and	$a6,$a4,$a6
    # Line 973
    mul.s	$f7,$f0,$f8
    # Line 1004
    or	$a1,$t0,$a6
    # Line 973
    beq	$at,$v1,.L0db02670
    mul.s	$f8,$f8,$f1
    # Line 1019
    and	$t1,$a7,$s6
    ld	$a0,424($sp)
    # Line 1004
    beqz	$a1,.L0db0288c
    ld	$a2,264($sp)
    # Line 1013
    lwc1	$f22,164($s0)
    # Line 1012
    lwc1	$f20,160($s0)
    # Line 1013
    mul.s	$f22,$f22,$f8
    # Line 1011
    lwc1	$f24,156($s0)
    # Line 1012
    mul.s	$f20,$f20,$f8
    # Line 1011
    mul.s	$f24,$f24,$f8
.L0db01fb8:
    # Line 1028
    ld	$v1,432($sp)
    # Line 1019
    or	$at,$t1,$a6
    beqz	$at,.L0db028cc
    # Line 1030
    and	$a0,$a4,$a0
    # Line 1024
    lwc1	$f3,164($s0)
    # Line 1023
    lwc1	$f2,160($s0)
    # Line 1024
    mul.s	$f3,$f3,$f6
    # Line 1022
    lwc1	$f1,156($s0)
    # Line 1023
    mul.s	$f2,$f2,$f6
    # Line 1022
    mul.s	$f1,$f1,$f6
    # Line 1024
    add.s	$f22,$f3,$f22
    # Line 1023
    add.s	$f20,$f2,$f20
    # Line 1022
    add.s	$f24,$f1,$f24
.L0db01fec:
    # Line 1030
    or	$v1,$t0,$a0
    beqz	$v1,.L0db02918
    # Line 1039
    ld	$at,424($sp)
    # Line 1035
    lwc1	$f2,164($s0)
    # Line 1034
    lwc1	$f1,160($s0)
    # Line 1035
    mul.s	$f2,$f2,$f7
    # Line 1033
    lwc1	$f4,156($s0)
    # Line 1034
    mul.s	$f1,$f1,$f7
    # Line 1033
    mul.s	$f4,$f4,$f7
    # Line 1035
    add.s	$f22,$f2,$f22
    # Line 1034
    add.s	$f20,$f1,$f20
    # Line 1033
    add.s	$f24,$f4,$f24
.L0db0201c:
    # Line 1041
    or	$a1,$t1,$a0
    beqz	$a1,.L0db02964
    # Line 1050
    ld	$a2,424($sp)
    # Line 1046
    lwc1	$f1,164($s0)
    # Line 1045
    lwc1	$f4,160($s0)
    # Line 1046
    mul.s	$f1,$f1,$f5
    # Line 1044
    lwc1	$f3,156($s0)
    # Line 1045
    mul.s	$f4,$f4,$f5
    # Line 1044
    mul.s	$f3,$f3,$f5
    # Line 1046
    add.s	$f22,$f1,$f22
    # Line 1045
    add.s	$f20,$f4,$f20
    # Line 1044
    add.s	$f24,$f3,$f24
.L0db0204c:
    # Line 1058
    lw	$a1,228($s0)
    sd	$zero,272($sp)
    li	$at,10497
    addu	$a1,$a1,$a3
    addiu	$a1,$a1,100
    # Line 1064
    lwc1	$f0,32($a1)
    # Line 1065
    lw	$a2,4($s0)
    sd	$a1,336($sp)
    sdc1	$f0,152($sp)
    # Line 1060
    lw	$s8,0($a1)
    # Line 1062
    lw	$v1,24($a1)
    # Line 1065
    ldc1	$f8,168($sp)
    sd	$s8,256($sp)
    # Line 1061
    lw	$s8,20($a1)
    # Line 1065
    mul.s	$f8,$f8,$f0
    # Line 1059
    lw	$a1,44($a1)
    # Line 1062
    addiu	$v1,$v1,-1
    sd	$v1,416($sp)
    sd	$a1,264($sp)
    # Line 1061
    addiu	$s8,$s8,-1
    # Line 1065
    beq	$a2,$at,.L0db02cb8
    mov.s	$f0,$f8
    # Line 1070
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db025a8
    # Line 1072
    mov.s	$f1,$f26
    sdc1	$f26,208($sp)
.L0db020b8:
    # Line 1074
    ldc1	$f2,128($sp)
    ldc1	$f12,208($sp)
    # Line 1075
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1074
    sub.s	$f12,$f12,$f2
    # Line 1075
    jal	__glFloor
    sdc1	$f12,208($sp)
    move	$s7,$v0
    # Line 1076
    addiu	$s6,$v0,1
.L0db020d8:
    # Line 1079
    ld	$v1,336($sp)
    # Line 1080
    ldc1	$f5,136($sp)
    # Line 1079
    lwc1	$f1,36($v1)
    # Line 1080
    mul.s	$f5,$f5,$f1
    # Line 1087
    mov.s	$f2,$f26
    li	$at,10497
    # Line 1080
    lw	$a2,8($s0)
    sdc1	$f1,160($sp)
    mov.s	$f3,$f5
    beq	$a2,$at,.L0db02ce8
    sdc1	$f5,240($sp)
    # Line 1085
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db025c8
    ldc1	$f4,160($sp)
    sdc1	$f26,240($sp)
.L0db02118:
    # Line 1089
    ldc1	$f3,128($sp)
    ldc1	$f12,240($sp)
    # Line 1090
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1089
    sub.s	$f12,$f12,$f3
    # Line 1090
    jal	__glFloor
    sdc1	$f12,240($sp)
    sd	$v0,432($sp)
    # Line 1091
    addiu	$a1,$v0,1
    sd	$a1,424($sp)
.L0db0213c:
    # Line 1094
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    ldc1	$f12,208($sp)
    # Line 1095
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f0,232($sp)
    jal	__glFrac
    ldc1	$f12,240($sp)
    li	$a3,10497
    li	$a5,-1
    # Line 1097
    ldc1	$f10,232($sp)
    ldc1	$f9,144($sp)
    # Line 1096
    lwc1	$f1,3284($s2)
    ldc1	$f6,464($sp)
    # Line 1097
    mul.s	$f7,$f9,$f10
    # Line 1096
    sub.s	$f10,$f1,$f10
    ldc1	$f5,472($sp)
    # Line 1128
    ld	$a6,432($sp)
    ld	$a4,416($sp)
    # Line 1097
    mul.s	$f9,$f9,$f10
    sub.s	$f1,$f1,$f0
    mul.s	$f10,$f0,$f7
    li	$at,2
    # Line 1128
    nor	$a7,$s8,$zero
    # Line 1097
    mul.s	$f7,$f7,$f1
    # Line 1128
    and	$t0,$a7,$s7
    # Line 1097
    ld	$a2,272($sp)
    mul.s	$f8,$f0,$f9
    # Line 1143
    and	$t1,$a7,$s6
    # Line 1097
    beq	$a2,$at,.L0db02778
    mul.s	$f9,$f9,$f1
    ld	$a0,424($sp)
    # Line 1128
    nor	$a4,$a4,$zero
    and	$a6,$a4,$a6
    or	$v1,$t0,$a6
    beqz	$v1,.L0db029b0
    # Line 1141
    ld	$a1,432($sp)
    # Line 1137
    lwc1	$f3,164($s0)
    # Line 1136
    lwc1	$f2,160($s0)
    # Line 1137
    mul.s	$f3,$f3,$f9
    # Line 1135
    lwc1	$f1,156($s0)
    # Line 1136
    mul.s	$f2,$f2,$f9
    # Line 1135
    mul.s	$f1,$f1,$f9
    # Line 1137
    add.s	$f22,$f3,$f22
    # Line 1136
    add.s	$f20,$f2,$f20
    # Line 1135
    add.s	$f24,$f1,$f24
.L0db021f0:
    # Line 1152
    ld	$v1,432($sp)
    # Line 1143
    or	$at,$t1,$a6
    beqz	$at,.L0db029fc
    # Line 1154
    and	$a0,$a4,$a0
    # Line 1148
    lwc1	$f2,164($s0)
    # Line 1147
    lwc1	$f1,160($s0)
    # Line 1148
    mul.s	$f2,$f2,$f7
    # Line 1146
    lwc1	$f4,156($s0)
    # Line 1147
    mul.s	$f1,$f1,$f7
    # Line 1146
    mul.s	$f4,$f4,$f7
    # Line 1148
    add.s	$f22,$f2,$f22
    # Line 1147
    add.s	$f20,$f1,$f20
    # Line 1146
    add.s	$f24,$f4,$f24
.L0db02224:
    # Line 1154
    or	$v1,$t0,$a0
    beqz	$v1,.L0db02a48
    # Line 1163
    ld	$at,424($sp)
    # Line 1159
    lwc1	$f1,164($s0)
    # Line 1158
    lwc1	$f4,160($s0)
    # Line 1159
    mul.s	$f1,$f1,$f8
    # Line 1157
    lwc1	$f3,156($s0)
    # Line 1158
    mul.s	$f4,$f4,$f8
    # Line 1157
    mul.s	$f3,$f3,$f8
    # Line 1159
    add.s	$f22,$f1,$f22
    # Line 1158
    add.s	$f20,$f4,$f20
    # Line 1157
    add.s	$f24,$f3,$f24
.L0db02254:
    # Line 1165
    or	$a1,$t1,$a0
    beqz	$a1,.L0db02a94
    # Line 1174
    ld	$a2,424($sp)
    # Line 1170
    lwc1	$f4,164($s0)
    # Line 1169
    lwc1	$f3,160($s0)
    # Line 1170
    mul.s	$f4,$f4,$f10
    # Line 1168
    lwc1	$f2,156($s0)
    # Line 1169
    mul.s	$f3,$f3,$f10
    # Line 1168
    mul.s	$f2,$f2,$f10
    # Line 1170
    add.s	$f22,$f4,$f22
    # Line 1169
    add.s	$f20,$f3,$f20
    # Line 1170
    b	.L0db011e0
    # Line 1168
    add.s	$f24,$f2,$f24
.L0db02288:
    # Line 783
    mov.s	$f22,$f26
    mov.s	$f20,$f26
    # Line 784
    move	$s6,$zero
    addiu	$t0,$sp,0
.L0db02298:
    sll	$a4,$s6,0x2
    ld	$v1,264($sp)
    lw	$v0,0($s8)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s3
    sllv	$v0,$v0,$v1
    # Line 787
    lw	$a1,0($t0)
    lw	$v1,12($t0)
    lw	$a0,8($t0)
    addu	$a1,$a1,$v0
    addu	$v1,$v1,$v0
    addu	$a0,$a0,$v0
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    lw	$a0,4($t0)
    sll	$a2,$v1,0x2
    subu	$a2,$a2,$v1
    addu	$a0,$a0,$v0
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$a1,256($sp)
    lwc1	$f3,12($a4)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 788
    lwc1	$f1,4($a2)
    # Line 789
    lwc1	$f12,8($a2)
    # Line 788
    mul.s	$f1,$f1,$f3
    # Line 787
    lwc1	$f8,8($a4)
    # Line 789
    mul.s	$f12,$f12,$f3
    # Line 787
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    # Line 788
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f8
    # Line 787
    lwc1	$f9,0($a4)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    # Line 788
    lwc1	$f11,4($a0)
    mul.s	$f11,$f11,$f9
    # Line 789
    lwc1	$f2,8($a0)
    # Line 787
    lwc1	$f10,4($a4)
    sll	$v1,$v1,0x2
    # Line 789
    mul.s	$f2,$f2,$f9
    # Line 787
    addu	$v1,$v1,$a1
    # Line 789
    lwc1	$f0,8($v1)
    lwc1	$f7,8($at)
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f22
    mul.s	$f22,$f7,$f8
    # Line 787
    lwc1	$f7,0($a0)
    mul.s	$f7,$f7,$f9
    # Line 789
    add.s	$f0,$f0,$f2
    # Line 788
    lwc1	$f9,4($v1)
    # Line 789
    add.s	$f22,$f22,$f0
    # Line 788
    mul.s	$f9,$f9,$f10
    add.s	$f20,$f11,$f20
    # Line 787
    lwc1	$f2,0($v1)
    # Line 789
    add.s	$f22,$f12,$f22
    # Line 787
    mul.s	$f2,$f2,$f10
    add.s	$f7,$f7,$f24
    lwc1	$f0,0($at)
    # Line 788
    add.s	$f20,$f9,$f20
    # Line 787
    mul.s	$f0,$f0,$f8
    add.s	$f2,$f2,$f7
    lwc1	$f24,0($a2)
    # Line 788
    add.s	$f20,$f4,$f20
    # Line 787
    mul.s	$f24,$f24,$f3
    add.s	$f0,$f0,$f2
    # Line 788
    add.s	$f20,$f1,$f20
    # Line 784
    addiu	$s6,$s6,1
    addiu	$s8,$s8,4
    # Line 787
    add.s	$f24,$f24,$f0
    # Line 784
    bne	$s6,$s4,.L0db02298
    addiu	$t0,$sp,0
    b	.L0db011e4
    # Line 1176
    ld	$at,456($sp)
.L0db023cc:
    nop
    # Line 673
    bc1f	.L0db025e0
    nop
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    # Line 675
    b	.L0db01664
    li	$s7,12
.L0db023f0:
    # Line 718
    c.lt.s	$f24,$f26
    nop
    bc1f	.L0db02600
    # Line 724
    li	$v1,15
    # Line 720
    li	$a1,12
    sdc1	$f0,160($sp)
    b	.L0db00eb0
    sd	$a1,304($sp)
.L0db02410:
    # Line 889
    ld	$v1,256($sp)
    ld	$at,264($sp)
    sllv	$at,$a0,$at
    addu	$at,$at,$s7
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 891
    lwc1	$f22,8($a2)
    # Line 890
    lwc1	$f20,4($a2)
    # Line 891
    mul.s	$f22,$f22,$f9
    # Line 889
    lwc1	$f24,0($a2)
    # Line 890
    mul.s	$f20,$f20,$f9
    b	.L0db01578
    # Line 889
    mul.s	$f24,$f24,$f9
.L0db02450:
    # Line 900
    ld	$a2,256($sp)
    ld	$a1,264($sp)
    sllv	$a1,$a0,$a1
    addu	$a1,$a1,$s6
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 902
    lwc1	$f3,8($v1)
    # Line 901
    lwc1	$f2,4($v1)
    # Line 902
    mul.s	$f3,$f3,$f9
    # Line 900
    lwc1	$f1,0($v1)
    # Line 901
    mul.s	$f2,$f2,$f9
    # Line 900
    mul.s	$f1,$f1,$f9
    # Line 902
    add.s	$f22,$f3,$f22
    # Line 901
    add.s	$f20,$f2,$f20
    b	.L0db015ac
    # Line 900
    add.s	$f24,$f1,$f24
.L0db0249c:
    # Line 911
    sllv	$at,$v0,$at
    ld	$v1,256($sp)
    addu	$at,$at,$s7
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 913
    lwc1	$f2,8($a2)
    # Line 912
    lwc1	$f1,4($a2)
    # Line 913
    mul.s	$f2,$f2,$f9
    # Line 911
    lwc1	$f4,0($a2)
    # Line 912
    mul.s	$f1,$f1,$f9
    # Line 911
    mul.s	$f4,$f4,$f9
    # Line 913
    add.s	$f22,$f2,$f22
    # Line 912
    add.s	$f20,$f1,$f20
    b	.L0db015e8
    # Line 911
    add.s	$f24,$f4,$f24
.L0db024e4:
    # Line 922
    ld	$a2,256($sp)
    ld	$a1,264($sp)
    sllv	$a1,$v0,$a1
    addu	$a1,$a1,$s6
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 924
    lwc1	$f1,8($v1)
    # Line 923
    lwc1	$f4,4($v1)
    # Line 924
    mul.s	$f1,$f1,$f8
    # Line 922
    lwc1	$f3,0($v1)
    # Line 923
    mul.s	$f4,$f4,$f8
    # Line 922
    mul.s	$f3,$f3,$f8
    # Line 924
    add.s	$f22,$f1,$f22
    # Line 923
    add.s	$f20,$f4,$f20
    b	.L0db011e0
    # Line 922
    add.s	$f24,$f3,$f24
.L0db02530:
    # Line 669
    cvt.d.s	$f2,$f0
    c.lt.d	$f2,$f7
    nop
    bc1fl	.L0db01668
    sd	$a0,336($sp)
    b	.L0db01640
    dmtc1	$zero,$f1
.L0db0254c:
    # Line 714
    cvt.d.s	$f3,$f5
    c.lt.d	$f3,$f6
    nop
    bc1f	.L0db00eb0
    sd	$v0,304($sp)
    b	.L0db00e98
    dmtc1	$zero,$f1
.L0db02568:
    # Line 948
    c.lt.s	$f4,$f8
    nop
    bc1fl	.L0db01ea4
    sdc1	$f5,472($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    b	.L0db01ea0
    ldc1	$f22,152($sp)
.L0db02590:
    # Line 963
    c.lt.s	$f1,$f5
    nop
    bc1f	.L0db01f08
    # Line 965
    ldc1	$f21,128($sp)
    b	.L0db01f04
    ldc1	$f20,160($sp)
.L0db025a8:
    ldc1	$f2,152($sp)
    # Line 1072
    c.lt.s	$f2,$f8
    nop
    bc1f	.L0db020b8
    sdc1	$f0,208($sp)
    ldc1	$f3,152($sp)
    b	.L0db020b8
    sdc1	$f3,208($sp)
.L0db025c8:
    # Line 1087
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db02118
    ldc1	$f1,160($sp)
    b	.L0db02118
    sdc1	$f1,240($sp)
.L0db025e0:
    # Line 675
    beqzl	$a4,.L0db02b30
    # Line 677
    cvt.d.s	$f10,$f0
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    li	$s7,8
.L0db02600:
    # Line 720
    beqzl	$a3,.L0db02b58
    # Line 722
    cvt.d.s	$f8,$f0
    sdc1	$f0,160($sp)
    b	.L0db00eb0
    sd	$a2,304($sp)
.L0db02614:
    ldc1	$f20,128($sp)
    # Line 845
    # lw $t9, -23708($gp) # &__glFloor
    # Line 844
    sub.s	$f20,$f8,$f20
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    # Line 845
    jal	__glFloor
    mov.s	$f12,$f20
    and	$s7,$v0,$s8
    # Line 846
    addiu	$s6,$s7,1
    b	.L0db014a8
    and	$s6,$s6,$s8
.L0db02640:
    ldc1	$f22,128($sp)
    # Line 859
    # lw $t9, -23708($gp) # &__glFloor
    # Line 858
    sub.s	$f22,$f5,$f22
    # Line 859
    jal	__glFloor
    mov.s	$f12,$f22
    ld	$v1,416($sp)
    and	$at,$v0,$v1
    sd	$at,432($sp)
    # Line 860
    addiu	$at,$at,1
    and	$at,$at,$v1
    b	.L0db014fc
    sd	$at,424($sp)
.L0db02670:
    ld	$v1,264($sp)
    sd	$v0,480($sp)
    # Line 1002
    ld	$v0,424($sp)
    ld	$a1,256($sp)
    sllv	$v0,$v0,$v1
    addu	$a2,$v0,$s6
    sll	$at,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    addu	$a2,$a2,$at
    # Line 1003
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f5
    # Line 1002
    addu	$v0,$v0,$s7
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a1
    addu	$at,$at,$v0
    # Line 1003
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f7
    # Line 1004
    lwc1	$f2,8($a2)
    # Line 1002
    ld	$v0,432($sp)
    # Line 1004
    mul.s	$f2,$f2,$f5
    # Line 1002
    sllv	$v0,$v0,$v1
    addu	$a0,$v0,$s6
    sll	$v1,$a0,0x2
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v1,$v1,$a0
    # Line 1003
    lwc1	$f4,4($v1)
    mul.s	$f4,$f4,$f6
    # Line 1004
    lwc1	$f0,8($v1)
    # Line 1002
    addu	$v0,$v0,$s7
    # Line 1004
    mul.s	$f0,$f0,$f6
    # Line 1002
    sll	$a0,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v0,$v0,$a0
    # Line 1004
    lwc1	$f22,8($v0)
    lwc1	$f24,8($at)
    mul.s	$f22,$f22,$f8
    mul.s	$f24,$f24,$f7
    # Line 1003
    lwc1	$f20,4($v0)
    mul.s	$f20,$f20,$f8
    # Line 1004
    add.s	$f22,$f22,$f0
    # Line 1002
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f6
    # Line 1004
    add.s	$f22,$f22,$f24
    # Line 1002
    lwc1	$f24,0($v0)
    mul.s	$f24,$f24,$f8
    # Line 1004
    add.s	$f22,$f22,$f2
    # Line 1002
    lwc1	$f2,0($at)
    # Line 1003
    add.s	$f20,$f20,$f4
    # Line 1002
    mul.s	$f2,$f2,$f7
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($a2)
    # Line 1003
    add.s	$f20,$f20,$f3
    # Line 1002
    mul.s	$f0,$f0,$f5
    add.s	$f24,$f24,$f2
    # Line 1003
    add.s	$f20,$f20,$f1
    ld	$v0,480($sp)
    # Line 1004
    b	.L0db0204c
    # Line 1002
    add.s	$f24,$f24,$f0
.L0db02778:
    # Line 1126
    ld	$a1,256($sp)
    ld	$a0,264($sp)
    sd	$v0,480($sp)
    # Line 1120
    ld	$v0,424($sp)
    sllv	$v0,$v0,$a0
    addu	$v1,$v0,$s7
    # Line 1126
    addu	$v0,$v0,$s6
    sll	$a2,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a1
    addu	$a2,$a2,$v0
    # Line 1127
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f10
    # Line 1120
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 1121
    lwc1	$f3,4($at)
    # Line 1108
    ld	$v1,432($sp)
    # Line 1121
    mul.s	$f3,$f3,$f8
    # Line 1108
    sllv	$v1,$v1,$a0
    # Line 1114
    addu	$a0,$v1,$s6
    sll	$v0,$a0,0x2
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v0,$v0,$a0
    # Line 1115
    lwc1	$f11,4($v0)
    mul.s	$f11,$f11,$f7
    # Line 1108
    addu	$v1,$v1,$s7
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v1,$v1,$a0
    # Line 1110
    lwc1	$f12,8($v1)
    # Line 1116
    lwc1	$f4,8($v0)
    # Line 1110
    mul.s	$f12,$f12,$f9
    # Line 1122
    lwc1	$f0,8($at)
    # Line 1116
    mul.s	$f4,$f4,$f7
    # Line 1122
    mul.s	$f0,$f0,$f8
    # Line 1109
    lwc1	$f2,4($v1)
    # Line 1110
    add.s	$f12,$f12,$f22
    # Line 1109
    mul.s	$f2,$f2,$f9
    # Line 1128
    lwc1	$f22,8($a2)
    # Line 1116
    add.s	$f4,$f4,$f12
    # Line 1128
    mul.s	$f22,$f22,$f10
    # Line 1122
    add.s	$f0,$f0,$f4
    # Line 1108
    lwc1	$f4,0($v1)
    mul.s	$f4,$f4,$f9
    # Line 1109
    add.s	$f20,$f2,$f20
    # Line 1114
    lwc1	$f2,0($v0)
    # Line 1128
    add.s	$f22,$f22,$f0
    # Line 1114
    mul.s	$f2,$f2,$f7
    # Line 1108
    add.s	$f4,$f4,$f24
    # Line 1120
    lwc1	$f0,0($at)
    # Line 1115
    add.s	$f20,$f11,$f20
    # Line 1120
    mul.s	$f0,$f0,$f8
    # Line 1114
    add.s	$f2,$f2,$f4
    # Line 1126
    lwc1	$f24,0($a2)
    # Line 1121
    add.s	$f20,$f3,$f20
    # Line 1126
    mul.s	$f24,$f24,$f10
    # Line 1120
    add.s	$f0,$f0,$f2
    # Line 1127
    add.s	$f20,$f1,$f20
    ld	$v0,480($sp)
    # Line 1128
    b	.L0db011e0
    # Line 1126
    add.s	$f24,$f24,$f0
.L0db0288c:
    # Line 1017
    ld	$a1,432($sp)
    sllv	$a1,$a1,$a2
    ld	$a2,256($sp)
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1019
    lwc1	$f22,8($v1)
    # Line 1018
    lwc1	$f20,4($v1)
    # Line 1019
    mul.s	$f22,$f22,$f8
    # Line 1017
    lwc1	$f24,0($v1)
    # Line 1018
    mul.s	$f20,$f20,$f8
    b	.L0db01fb8
    # Line 1017
    mul.s	$f24,$f24,$f8
.L0db028cc:
    ld	$a1,264($sp)
    # Line 1028
    sllv	$v1,$v1,$a1
    ld	$a1,256($sp)
    addu	$v1,$v1,$s6
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 1030
    lwc1	$f3,8($at)
    # Line 1029
    lwc1	$f2,4($at)
    # Line 1030
    mul.s	$f3,$f3,$f6
    # Line 1028
    lwc1	$f1,0($at)
    # Line 1029
    mul.s	$f2,$f2,$f6
    # Line 1028
    mul.s	$f1,$f1,$f6
    # Line 1030
    add.s	$f22,$f3,$f22
    # Line 1029
    add.s	$f20,$f2,$f20
    b	.L0db01fec
    # Line 1028
    add.s	$f24,$f1,$f24
.L0db02918:
    ld	$v1,264($sp)
    # Line 1039
    sllv	$at,$at,$v1
    ld	$v1,256($sp)
    addu	$at,$at,$s7
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1041
    lwc1	$f2,8($a2)
    # Line 1040
    lwc1	$f1,4($a2)
    # Line 1041
    mul.s	$f2,$f2,$f7
    # Line 1039
    lwc1	$f4,0($a2)
    # Line 1040
    mul.s	$f1,$f1,$f7
    # Line 1039
    mul.s	$f4,$f4,$f7
    # Line 1041
    add.s	$f22,$f2,$f22
    # Line 1040
    add.s	$f20,$f1,$f20
    b	.L0db0201c
    # Line 1039
    add.s	$f24,$f4,$f24
.L0db02964:
    ld	$at,264($sp)
    # Line 1050
    sllv	$a2,$a2,$at
    ld	$at,256($sp)
    addu	$a2,$a2,$s6
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 1052
    lwc1	$f1,8($a1)
    # Line 1051
    lwc1	$f4,4($a1)
    # Line 1052
    mul.s	$f1,$f1,$f5
    # Line 1050
    lwc1	$f3,0($a1)
    # Line 1051
    mul.s	$f4,$f4,$f5
    # Line 1050
    mul.s	$f3,$f3,$f5
    # Line 1052
    add.s	$f22,$f1,$f22
    # Line 1051
    add.s	$f20,$f4,$f20
    b	.L0db0204c
    # Line 1050
    add.s	$f24,$f3,$f24
.L0db029b0:
    ld	$a2,264($sp)
    # Line 1141
    sllv	$a1,$a1,$a2
    ld	$a2,256($sp)
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1143
    lwc1	$f4,8($v1)
    # Line 1142
    lwc1	$f3,4($v1)
    # Line 1143
    mul.s	$f4,$f4,$f9
    # Line 1141
    lwc1	$f2,0($v1)
    # Line 1142
    mul.s	$f3,$f3,$f9
    # Line 1141
    mul.s	$f2,$f2,$f9
    # Line 1143
    add.s	$f22,$f4,$f22
    # Line 1142
    add.s	$f20,$f3,$f20
    b	.L0db021f0
    # Line 1141
    add.s	$f24,$f2,$f24
.L0db029fc:
    ld	$a1,264($sp)
    # Line 1152
    sllv	$v1,$v1,$a1
    ld	$a1,256($sp)
    addu	$v1,$v1,$s6
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 1154
    lwc1	$f3,8($at)
    # Line 1153
    lwc1	$f2,4($at)
    # Line 1154
    mul.s	$f3,$f3,$f7
    # Line 1152
    lwc1	$f1,0($at)
    # Line 1153
    mul.s	$f2,$f2,$f7
    # Line 1152
    mul.s	$f1,$f1,$f7
    # Line 1154
    add.s	$f22,$f3,$f22
    # Line 1153
    add.s	$f20,$f2,$f20
    b	.L0db02224
    # Line 1152
    add.s	$f24,$f1,$f24
.L0db02a48:
    ld	$v1,264($sp)
    # Line 1163
    sllv	$at,$at,$v1
    ld	$v1,256($sp)
    addu	$at,$at,$s7
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1165
    lwc1	$f2,8($a2)
    # Line 1164
    lwc1	$f1,4($a2)
    # Line 1165
    mul.s	$f2,$f2,$f8
    # Line 1163
    lwc1	$f4,0($a2)
    # Line 1164
    mul.s	$f1,$f1,$f8
    # Line 1163
    mul.s	$f4,$f4,$f8
    # Line 1165
    add.s	$f22,$f2,$f22
    # Line 1164
    add.s	$f20,$f1,$f20
    b	.L0db02254
    # Line 1163
    add.s	$f24,$f4,$f24
.L0db02a94:
    ld	$at,264($sp)
    # Line 1174
    sllv	$a2,$a2,$at
    ld	$at,256($sp)
    addu	$a2,$a2,$s6
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 1176
    lwc1	$f1,8($a1)
    # Line 1175
    lwc1	$f4,4($a1)
    # Line 1176
    mul.s	$f1,$f1,$f10
    # Line 1174
    lwc1	$f3,0($a1)
    # Line 1175
    mul.s	$f4,$f4,$f10
    # Line 1174
    mul.s	$f3,$f3,$f10
    # Line 1176
    add.s	$f22,$f1,$f22
    # Line 1175
    add.s	$f20,$f4,$f20
    b	.L0db011e0
    # Line 1174
    add.s	$f24,$f3,$f24
.L0db02ae0:
    # Line 1216
    move	$v0,$zero
    # ld	gp,352(sp)
    ld	$s0,312($sp)
    ld	$s1,280($sp)
    ld	$s2,400($sp)
    ld	$s3,392($sp)
    ld	$s4,376($sp)
    ld	$s5,296($sp)
    ld	$s6,384($sp)
    ld	$s7,360($sp)
    ld	$s8,248($sp)
    ldc1	$f20,224($sp)
    ldc1	$f22,200($sp)
    ldc1	$f24,192($sp)
    ldc1	$f26,216($sp)
    ld	$ra,368($sp)
    ldc1	$f28,184($sp)
    ldc1	$f30,176($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0db02b30:
    # Line 677
    c.lt.d	$f10,$f8
    nop
    bc1fl	.L0db02d28
    # Line 679
    c.lt.s	$f0,$f20
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    li	$s7,15
.L0db02b58:
    # Line 722
    c.lt.d	$f8,$f7
    nop
    bc1f	.L0db02d4c
    # Line 728
    li	$a2,3
    sdc1	$f0,160($sp)
    # Line 724
    b	.L0db00eb0
    sd	$v1,304($sp)
.L0db02b74:
    # Line 776
    addiu	$v0,$v0,-48
.L0db02b78:
    # Line 771
    addiu	$a0,$a0,8
    # Line 774
    addiu	$v0,$v0,12
    # Line 772
    lwc1	$f1,-4($a0)
    # Line 774
    lwc1	$f4,-4($v0)
    li	$a1,3
    # Line 773
    lwc1	$f3,-8($v0)
    # Line 774
    mul.s	$f4,$f4,$f1
    xor	$v1,$s6,$a2
    # Line 772
    lwc1	$f2,-12($v0)
    # Line 773
    mul.s	$f3,$f3,$f1
    # Line 774
    subu	$v1,$v1,$a2
    sra	$a2,$s6,0x1f
    # Line 772
    mul.s	$f2,$f2,$f1
    # Line 771
    addiu	$s6,$s6,1
    # Line 774
    add.s	$f22,$f4,$f22
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a2
    # Line 773
    add.s	$f20,$f3,$f20
    # Line 774
    subu	$v1,$v1,$a2
    beq	$v1,$a1,.L0db02c34
    # Line 772
    add.s	$f24,$f2,$f24
.L0db02bcc:
    li	$at,16
    # Line 771
    beq	$s6,$at,.L0db01d90
.L0db02bd4:
    # Line 774
    addiu	$v0,$v0,12
    li	$a1,3
    sra	$a2,$s6,0x1f
    # Line 772
    lwc1	$f4,0($a0)
    # Line 774
    lwc1	$f3,-4($v0)
    xor	$v1,$s6,$a2
    # Line 773
    lwc1	$f2,-8($v0)
    # Line 774
    mul.s	$f3,$f3,$f4
    subu	$v1,$v1,$a2
    # Line 772
    lwc1	$f1,-12($v0)
    # Line 773
    mul.s	$f2,$f2,$f4
    # Line 774
    sra	$a2,$s6,0x1f
    # Line 771
    addiu	$s6,$s6,1
    # Line 772
    mul.s	$f1,$f1,$f4
    # Line 774
    andi	$v1,$v1,0x3
    add.s	$f22,$f3,$f22
    xor	$v1,$v1,$a2
    subu	$v1,$v1,$a2
    # Line 773
    add.s	$f20,$f2,$f20
    # Line 774
    sra	$a2,$s6,0x1f
    bne	$v1,$a1,.L0db02b78
    # Line 772
    add.s	$f24,$f1,$f24
    b	.L0db02b74
    # Line 776
    addu	$v0,$a4,$v0
.L0db02c34:
    addu	$v0,$a4,$v0
    b	.L0db02bcc
    addiu	$v0,$v0,-48
.L0db02c40:
    sdc1	$f5,472($sp)
    ldc1	$f22,128($sp)
    sdc1	$f6,464($sp)
    # Line 944
    # lw $t9, -23708($gp) # &__glFloor
    # Line 943
    sub.s	$f22,$f8,$f22
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 944
    jal	__glFloor
    mov.s	$f12,$f22
    # Line 946
    li	$s7,1
    sd	$s7,272($sp)
    # Line 944
    and	$s7,$v0,$s8
    # Line 945
    addiu	$s6,$s7,1
    # Line 946
    b	.L0db01ecc
    # Line 945
    and	$s6,$s6,$s8
.L0db02c7c:
    ldc1	$f20,128($sp)
    # Line 959
    # lw $t9, -23708($gp) # &__glFloor
    # Line 958
    sub.s	$f20,$f5,$f20
    # Line 959
    jal	__glFloor
    mov.s	$f12,$f20
    ld	$v1,272($sp)
    # Line 961
    addiu	$v1,$v1,1
    sd	$v1,272($sp)
    # Line 959
    ld	$v1,416($sp)
    and	$at,$v0,$v1
    sd	$at,432($sp)
    # Line 960
    addiu	$at,$at,1
    and	$at,$at,$v1
    # Line 961
    b	.L0db01f24
    sd	$at,424($sp)
.L0db02cb8:
    ldc1	$f21,128($sp)
    # Line 1067
    sub.s	$f21,$f8,$f21
    # Line 1068
    # lw $t9, -23708($gp) # &__glFloor
    mov.s	$f12,$f21
    jal	__glFloor
    sdc1	$f21,208($sp)
    # Line 1070
    li	$s7,1
    sd	$s7,272($sp)
    # Line 1068
    and	$s7,$v0,$s8
    # Line 1069
    addiu	$s6,$s7,1
    # Line 1070
    b	.L0db020d8
    # Line 1069
    and	$s6,$s6,$s8
.L0db02ce8:
    ldc1	$f23,128($sp)
    # Line 1082
    sub.s	$f23,$f5,$f23
    # Line 1083
    # lw $t9, -23708($gp) # &__glFloor
    mov.s	$f12,$f23
    jal	__glFloor
    sdc1	$f23,240($sp)
    ld	$v1,272($sp)
    # Line 1085
    addiu	$v1,$v1,1
    sd	$v1,272($sp)
    # Line 1083
    ld	$v1,416($sp)
    and	$at,$v0,$v1
    sd	$at,432($sp)
    # Line 1084
    addiu	$at,$at,1
    and	$at,$at,$v1
    # Line 1085
    b	.L0db0213c
    sd	$at,424($sp)
.L0db02d28:
    nop
    # Line 679
    bc1fl	.L0db02d68
    # Line 681
    c.lt.d	$f10,$f9
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    li	$s7,7
.L0db02d4c:
    # Line 724
    c.lt.s	$f0,$f24
    nop
    bc1f	.L0db02d8c
    # Line 726
    li	$a1,7
    sdc1	$f0,160($sp)
    b	.L0db00eb0
    sd	$a1,304($sp)
.L0db02d68:
    nop
    # Line 681
    bc1fl	.L0db02da8
    # Line 683
    c.lt.d	$f10,$f7
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    li	$s7,3
.L0db02d8c:
    # Line 726
    c.lt.d	$f8,$f5
    nop
    bc1fl	.L0db02dcc
    # Line 728
    c.lt.d	$f8,$f6
    sdc1	$f0,160($sp)
    b	.L0db00eb0
    sd	$a2,304($sp)
.L0db02da8:
    nop
    # Line 683
    bc1fl	.L0db01668
    sd	$a0,336($sp)
    sd	$v0,272($sp)
    sdc1	$f5,472($sp)
    sdc1	$f6,464($sp)
    sdc1	$f0,152($sp)
    b	.L0db01664
    # Line 685
    li	$s7,1
.L0db02dcc:
    nop
    # Line 728
    bc1f	.L0db00eb0
    sd	$v0,304($sp)
    sdc1	$f0,160($sp)
    b	.L0db00eb0
    sd	$at,304($sp)
.end __glTextureRGB_F_LML_Span

# Function: __glTextureRGB_F_LML_StippledSpan
# Declared: Line 1226 (Source lines: 1227-1862)
# Address: 0x0db02de4 - 0x0db04f48 (Size: 8548 bytes, Frame: 160)
.globl __glTextureRGB_F_LML_StippledSpan
.ent __glTextureRGB_F_LML_StippledSpan
__glTextureRGB_F_LML_StippledSpan:
    # Line 1227
    addiu	$sp,$sp,-544
    sd	$s1,256($sp)
    sd	$s3,304($sp)
    sd	$s5,264($sp)
    sd	$s6,312($sp)
    sd	$s7,248($sp)
    sd	$s8,272($sp)
    sdc1	$f20,176($sp)
    sdc1	$f22,184($sp)
    sdc1	$f24,192($sp)
    sdc1	$f26,200($sp)
    sd	$ra,320($sp)
    # sd	gp,408(sp)
    sd	$s0,392($sp)
    sd	$s4,400($sp)
    lui	$v1,0xf
    addiu	$v1,$v1,19076
    sd	$s2,416($sp)
    move	$s2,$a0
    # Line 1257
    lw	$s4,30468($s2)
    # Line 1261
    lwc1	$f5,30232($a0)
    # Line 1260
    lwc1	$f6,30228($a0)
    sdc1	$f30,208($sp)
    # Line 1263
    lwc1	$f30,30244($a0)
    sdc1	$f28,216($sp)
    # Line 1262
    lwc1	$f28,30240($a0)
    # Line 1258
    lw	$a0,30476($a0)
    # Line 1255
    lw	$s0,28216($s2)
    # Line 1227
    # addu	gp,t9,v1
    sd	$a0,424($sp)
    # Line 1236
    lwc1	$f0,3280($s2)
    # Line 1253
    lw	$v0,2376($s2)
    # Line 1256
    lw	$at,30252($s2)
    sdc1	$f0,128($sp)
    # Line 1253
    lw	$v0,0($v0)
    sd	$at,432($sp)
    # Line 1263
    beqz	$at,.L0db04e78
    sd	$v0,488($sp)
    sd	$s3,304($sp)
    sd	$s6,312($sp)
    sd	$ra,320($sp)
    sd	$s7,248($sp)
    sdc1	$f20,176($sp)
    sdc1	$f22,184($sp)
    sdc1	$f24,192($sp)
    addiu	$s8,$sp,48
    li	$a4,-1
    li	$s1,1
    li	$s5,4
    mtc1	$zero,$f26
    li	$a5,10497
    addiu	$at,$sp,12
    sd	$at,336($sp)
    addiu	$a2,$sp,0
    ld	$a1,488($sp)
    addiu	$a2,$a2,-4
    sd	$a2,440($sp)
    xori	$a1,$a1,0x2101
    sltiu	$a1,$a1,1
    b	.L0db02ee0
    sd	$a1,464($sp)
.L0db02ed8:
    ld	$v1,432($sp)
    # Line 1274
    beqz	$v1,.L0db04e78
.L0db02ee0:
    ld	$a1,432($sp)
    # Line 1266
    move	$a2,$a1
    sd	$a1,480($sp)
    slti	$a1,$a1,33
    bnez	$a1,.L0db02efc
    # Line 1268
    li	$at,32
    sd	$at,480($sp)
.L0db02efc:
    lui	$s3,0x8000
    # Line 1272
    ld	$a1,424($sp)
    # Line 1270
    ld	$v1,480($sp)
    ld	$a2,432($sp)
    # Line 1272
    lw	$at,0($a1)
    addiu	$a1,$a1,4
    # Line 1270
    subu	$a2,$a2,$v1
    # Line 1274
    addiu	$v1,$v1,-1
    sd	$a2,432($sp)
    sd	$v1,480($sp)
    sd	$a1,424($sp)
    bltz	$v1,.L0db02ed8
    sd	$at,472($sp)
    b	.L0db03344
    ld	$at,472($sp)
.L0db02f38:
    ldc1	$f7,_lit8_bff0000000000000
    # Line 1353
    add.d	$f7,$f20,$f7
    dmtc1	$zero,$f1
    c.lt.d	$f7,$f1
    nop
    bc1fl	.L0db02f54
    move	$a3,$zero
.L0db02f54:
    beqz	$a3,.L0db0469c
    add.d	$f6,$f20,$f6
    dmtc1	$zero,$f1
.L0db02f60:
    c.lt.d	$f6,$f1
    ldc1	$f5,_lit8_3ff0000000000000
    bc1f	.L0db03e30
    dmtc1	$zero,$f1
    sdc1	$f0,160($sp)
    sd	$v1,360($sp)
.L0db02f78:
    # Line 1372
    # lw $t9, -22924($gp) # &floor
    sdc1	$f0,160($sp)
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f3,$f0
    mfc1	$a0,$f3
    nop
    # Line 1373
    addiu	$a1,$a0,-1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    ldc1	$f5,160($sp)
    c.lt.s	$f2,$f26
    # Line 1372
    sw	$a0,20($sp)
    # Line 1376
    addiu	$v0,$a0,1
    # Line 1373
    bc1f	.L0db02fc0
    sw	$a1,16($sp)
    # Line 1374
    sw	$zero,16($sp)
.L0db02fc0:
    # Line 1376
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db02fec
    sw	$v0,24($sp)
    # Line 1377
    trunc.w.s	$f1,$f5
    mfc1	$v0,$f1
    nop
    sw	$v0,24($sp)
.L0db02fec:
    # Line 1379
    addiu	$a2,$v0,1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f5,$f2
    nop
    bc1f	.L0db0301c
    sw	$a2,28($sp)
    # Line 1380
    trunc.w.s	$f3,$f5
    mfc1	$at,$f3
    nop
    sw	$at,28($sp)
.L0db0301c:
    # Line 1385
    # lw $t9, -22924($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f8,$f22,$f0
    ldc1	$f9,_lit8_4030000000000000
    mul.d	$f8,$f8,$f9
    lwc1	$f24,3280($s2)
    cvt.d.s	$f24,$f24
    add.d	$f8,$f8,$f24
    trunc.w.d	$f8,$f8
    mfc1	$v1,$f8
    # Line 1390
    mov.d	$f12,$f20
    # lw $t9, -22924($gp) # &floor
    # Line 1386
    sll	$a1,$v1,0x2
    addu	$a1,$a1,$s0
    # Line 1387
    lwc1	$f7,24($a1)
    # Line 1386
    lwc1	$f6,88($a1)
    li	$a0,32
    # Line 1387
    swc1	$f7,36($sp)
    # Line 1386
    swc1	$f6,32($sp)
    # Line 1389
    subu	$a0,$a0,$v1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    lwc1	$f5,24($a0)
    # Line 1388
    sll	$v0,$v1,0x1e
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    lwc1	$f4,88($v0)
    # Line 1389
    swc1	$f5,44($sp)
    # Line 1390
    jal	floor
    # Line 1388
    swc1	$f4,40($sp)
    # Line 1390
    sub.d	$f4,$f20,$f0
    ldc1	$f5,_lit8_4030000000000000
    mul.d	$f4,$f4,$f5
    add.d	$f4,$f4,$f24
    li	$a4,-1
    li	$a5,10497
    # Line 1398
    addiu	$a3,$sp,112
    # Line 1390
    trunc.w.d	$f4,$f4
    # Line 1398
    move	$s6,$zero
    ldc1	$f6,496($sp)
    ld	$a0,288($sp)
    # Line 1390
    mfc1	$at,$f4
    ldc1	$f5,504($sp)
    li	$v0,32
    # Line 1391
    sll	$v1,$at,0x2
    addu	$v1,$v1,$s0
    # Line 1392
    lwc1	$f3,24($v1)
    # Line 1394
    subu	$v0,$v0,$at
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    lwc1	$f1,24($v0)
    ld	$v0,360($sp)
    # Line 1391
    lwc1	$f2,88($v1)
    # Line 1392
    swc1	$f3,116($sp)
    # Line 1393
    sll	$a2,$at,0x1e
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s0
    lwc1	$f0,88($a2)
    # Line 1391
    swc1	$f2,112($sp)
    # Line 1394
    swc1	$f1,124($sp)
    # Line 1393
    swc1	$f0,120($sp)
    # Line 1398
    lwc1	$f0,0($a3)
.L0db03120:
    addiu	$a7,$sp,32
    sll	$a6,$s6,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s8
    # Line 1400
    lwc1	$f2,4($a7)
    lwc1	$f3,8($a7)
    mul.s	$f2,$f2,$f0
    lwc1	$f4,12($a7)
    mul.s	$f3,$f3,$f0
    lwc1	$f1,0($a7)
    mul.s	$f4,$f4,$f0
    mul.s	$f1,$f1,$f0
    # Line 1398
    addiu	$s6,$s6,1
    addiu	$a3,$a3,4
    # Line 1400
    swc1	$f4,12($a6)
    swc1	$f3,8($a6)
    swc1	$f2,4($a6)
    swc1	$f1,0($a6)
    # Line 1398
    bnel	$s6,$s5,.L0db03120
    lwc1	$f0,0($a3)
    # Line 1435
    mov.s	$f20,$f26
    # Line 1436
    move	$s6,$zero
    # Line 1422
    mov.s	$f24,$f26
    # Line 1398
    beqz	$a0,.L0db03eec
    # Line 1435
    mov.s	$f22,$f26
.L0db03184:
    li	$at,2
.L0db03188:
    # Line 1410
    beq	$a0,$at,.L0db043d0
    # Line 1436
    addiu	$s8,$sp,16
    li	$a7,3
    # Line 1435
    mov.s	$f24,$f26
    addiu	$a0,$sp,48
.L0db0319c:
    # Line 1436
    addiu	$t1,$sp,0
    li	$a3,3
    sllv	$t0,$s1,$a7
    and	$t0,$t0,$v0
    # Line 1439
    sllv	$at,$s1,$a3
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1436
    sll	$a6,$s6,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a0
    # Line 1439
    and	$at,$at,$s7
    beqz	$at,.L0db038a4
    nop
    # Line 1440
    lwc1	$f4,0($a6)
.L0db031d0:
    # Line 1442
    lwc1	$f3,164($s0)
    # Line 1441
    lwc1	$f2,160($s0)
    # Line 1442
    mul.s	$f3,$f3,$f4
    # Line 1440
    lwc1	$f1,156($s0)
    # Line 1441
    mul.s	$f2,$f2,$f4
    # Line 1440
    mul.s	$f1,$f1,$f4
    # Line 1442
    add.s	$f22,$f3,$f22
    # Line 1441
    add.s	$f20,$f2,$f20
    # Line 1440
    add.s	$f24,$f1,$f24
.L0db031f4:
    # Line 1439
    sllv	$v1,$s1,$a3
    and	$v1,$v1,$s7
    beqz	$v1,.L0db03900
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1440
    lwc1	$f3,4($a6)
.L0db03208:
    # Line 1442
    lwc1	$f2,164($s0)
    # Line 1441
    lwc1	$f1,160($s0)
    # Line 1442
    mul.s	$f2,$f2,$f3
    # Line 1440
    lwc1	$f4,156($s0)
    # Line 1441
    mul.s	$f1,$f1,$f3
    # Line 1440
    mul.s	$f4,$f4,$f3
    # Line 1442
    add.s	$f22,$f2,$f22
    # Line 1441
    add.s	$f20,$f1,$f20
    # Line 1440
    add.s	$f24,$f4,$f24
.L0db0322c:
    # Line 1439
    sllv	$a1,$s1,$a3
    and	$a1,$a1,$s7
    beqz	$a1,.L0db0395c
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1440
    lwc1	$f2,8($a6)
.L0db03240:
    # Line 1442
    lwc1	$f1,164($s0)
    # Line 1441
    lwc1	$f4,160($s0)
    # Line 1442
    mul.s	$f1,$f1,$f2
    # Line 1440
    lwc1	$f3,156($s0)
    # Line 1441
    mul.s	$f4,$f4,$f2
    # Line 1440
    mul.s	$f3,$f3,$f2
    # Line 1442
    add.s	$f22,$f1,$f22
    # Line 1441
    add.s	$f20,$f4,$f20
    # Line 1440
    add.s	$f24,$f3,$f24
.L0db03264:
    # Line 1436
    addiu	$a7,$a7,-1
    # Line 1439
    sllv	$a2,$s1,$a3
    and	$a2,$a2,$s7
    beqz	$a2,.L0db039b8
    # Line 1436
    addiu	$s6,$s6,1
    # Line 1440
    lwc1	$f1,12($a6)
.L0db0327c:
    # Line 1442
    lwc1	$f4,164($s0)
    # Line 1441
    lwc1	$f3,160($s0)
    # Line 1442
    mul.s	$f4,$f4,$f1
    # Line 1440
    lwc1	$f2,156($s0)
    # Line 1441
    mul.s	$f3,$f3,$f1
    # Line 1440
    mul.s	$f2,$f2,$f1
    # Line 1442
    add.s	$f22,$f4,$f22
    # Line 1441
    add.s	$f20,$f3,$f20
    # Line 1440
    add.s	$f24,$f2,$f24
.L0db032a0:
    # Line 1436
    bne	$s6,$s5,.L0db0319c
    addiu	$s8,$s8,4
.L0db032a8:
    # Line 1815
    ld	$at,488($sp)
.L0db032ac:
    li	$v1,8448
    beq	$at,$v1,.L0db03ec4
    addiu	$s8,$sp,48
    li	$v1,7681
.L0db032bc:
    # Line 1828
    ld	$a1,488($sp)
    li	$a2,0x8062
    beq	$a1,$a2,.L0db03a14
    ld	$at,488($sp)
    beq	$at,$v1,.L0db03a14
    move	$v0,$zero
    ld	$a1,464($sp)
.L0db032d8:
    or	$a1,$v0,$a1
    beqzl	$a1,.L0db03e50
    # Line 1841
    lwc1	$f2,3284($s2)
    # Line 1831
    lwc1	$f3,30756($s2)
    mul.s	$f3,$f3,$f24
    swc1	$f3,0($s4)
    # Line 1832
    lwc1	$f2,30760($s2)
    mul.s	$f2,$f2,$f20
    swc1	$f2,4($s4)
    # Line 1833
    lwc1	$f1,30764($s2)
    mul.s	$f1,$f1,$f22
    swc1	$f1,8($s4)
.L0db03308:
    # Line 1855
    srl	$s3,$s3,0x1
    # Line 1852
    lwc1	$f3,30400($s2)
    # Line 1851
    lwc1	$f2,30396($s2)
    # Line 1852
    add.s	$f30,$f3,$f30
    # Line 1850
    lwc1	$f1,30388($s2)
    # Line 1851
    add.s	$f28,$f2,$f28
    # Line 1849
    lwc1	$f4,30384($s2)
    # Line 1850
    add.s	$f5,$f1,$f5
    # Line 1274
    ld	$a2,480($sp)
    # Line 1853
    addiu	$s4,$s4,16
    # Line 1849
    add.s	$f6,$f4,$f6
    # Line 1274
    addiu	$a2,$a2,-1
    beq	$a2,$a4,.L0db02ed8
    sd	$a2,480($sp)
    ld	$at,472($sp)
.L0db03344:
    # Line 1298
    li	$s6,-1
    # Line 1274
    and	$at,$at,$s3
    beqz	$at,.L0db03308
    # Line 1463
    mov.s	$f9,$f26
    # Line 1276
    lwc1	$f8,3284($s2)
    div.s	$f7,$f8,$f28
    mul.s	$f0,$f30,$f7
    lw	$t0,4($s0)
    # Line 1296
    move	$s7,$zero
    # Line 1276
    lwc1	$f2,240($s0)
    mul.s	$f1,$f5,$f7
    lw	$a7,228($s0)
    # Line 1296
    ldc1	$f22,128($sp)
    # Line 1276
    c.le.s	$f0,$f2
    # Line 1286
    move	$a3,$a7
    # Line 1276
    mul.s	$f7,$f6,$f7
    bc1f	.L0db0344c
    sdc1	$f1,136($sp)
    # Line 1284
    move	$a0,$zero
    # Line 1293
    lwc1	$f0,32($a7)
    # Line 1290
    lw	$a6,20($a7)
    # Line 1289
    lw	$a1,0($a7)
    # Line 1296
    mul.s	$f20,$f7,$f0
    # Line 1287
    lw	$v1,44($a7)
    sd	$a1,280($sp)
    # Line 1291
    lw	$v0,24($a7)
    sd	$v1,296($sp)
    ldc1	$f7,_lit8_4000000000000000
    addiu	$v0,$v0,-1
    # Line 1296
    sub.s	$f20,$f20,$f22
    sd	$v0,448($sp)
    # Line 1290
    addiu	$v0,$a6,-1
    # Line 1296
    bne	$a5,$t0,.L0db03704
    cvt.d.s	$f22,$f20
    # Line 1298
    ld	$a0,440($sp)
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    sd	$v0,456($sp)
    sd	$a3,384($sp)
    add.s	$f8,$f7,$f20
    sd	$a0,376($sp)
    sd	$a6,368($sp)
    sdc1	$f5,504($sp)
    c.lt.s	$f8,$f26
    sdc1	$f6,496($sp)
    addiu	$s6,$s6,1
    bc1f	.L0db03a50
    sdc1	$f0,152($sp)
    ld	$a2,368($sp)
    # Line 1300
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,456($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    ld	$v1,376($sp)
    b	.L0db03a78
    sw	$at,4($v1)
.L0db0344c:
    # Line 1418
    c.eq.s	$f0,$f26
    nop
    bc1t	.L0db034d4
    # Line 1458
    move	$v0,$zero
    # Line 1459
    trunc.w.s	$f1,$f0
    mfc1	$a0,$f1
    nop
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db034a8
    # Line 1461
    sllv	$a1,$s1,$v0
    # Line 1459
    addiu	$v0,$v0,1
.L0db03478:
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db034a4
    nop
    addiu	$v0,$v0,1
    sra	$a0,$a0,0x1
    beqz	$a0,.L0db034a4
    nop
    addiu	$v0,$v0,1
    sra	$a0,$a0,0x1
    bnezl	$a0,.L0db03478
    addiu	$v0,$v0,1
.L0db034a4:
    # Line 1461
    sllv	$a1,$s1,$v0
.L0db034a8:
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f0,$f2
    div.s	$f1,$f1,$f2
    mtc1	$v0,$f9
    nop
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f1
    ldc1	$f1,128($sp)
    mul.s	$f9,$f9,$f1
.L0db034d4:
    # Line 1471
    trunc.w.s	$f1,$f9
    cvt.s.w	$f0,$f1
    mfc1	$v0,$f1
    # Line 1467
    lw	$a0,236($s0)
    # Line 1471
    addiu	$at,$v0,1
    slt	$a2,$a0,$at
    sub.s	$f0,$f9,$f0
    slti	$at,$at,0
    or	$a2,$a2,$at
    beqz	$a2,.L0db03f44
    sub.s	$f24,$f8,$f0
    # Line 1474
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a7
    # Line 1476
    lw	$at,0($v0)
    # Line 1475
    lw	$a2,44($v0)
    sd	$at,280($sp)
    # Line 1480
    lwc1	$f0,32($v0)
    # Line 1478
    lw	$a1,24($v0)
    # Line 1477
    lw	$v1,20($v0)
    # Line 1481
    mul.s	$f8,$f7,$f0
    sd	$a2,296($sp)
    # Line 1477
    addiu	$v1,$v1,-1
    # Line 1478
    addiu	$a1,$a1,-1
    sd	$a1,448($sp)
    sd	$v1,456($sp)
    # Line 1481
    beq	$a5,$t0,.L0db04764
    mov.s	$f20,$f8
    # Line 1485
    c.lt.s	$f8,$f26
    nop
    bc1fl	.L0db03a20
    # Line 1487
    c.lt.s	$f0,$f8
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    mov.s	$f20,$f26
.L0db0356c:
    # Line 1489
    ldc1	$f2,128($sp)
.L0db03570:
    sd	$v0,384($sp)
    # Line 1490
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1489
    sub.s	$f20,$f20,$f2
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    # Line 1490
    jal	__glFloor
    mov.s	$f12,$f20
    sd	$v0,344($sp)
    ld	$a0,384($sp)
    # Line 1491
    addiu	$v1,$v0,1
    sd	$v1,352($sp)
.L0db0359c:
    # Line 1494
    lwc1	$f0,36($a0)
    # Line 1495
    ldc1	$f5,136($sp)
    mul.s	$f5,$f5,$f0
    lw	$a1,8($s0)
    li	$a2,10497
    beq	$a1,$a2,.L0db047a4
    mov.s	$f22,$f5
    # Line 1499
    c.lt.s	$f5,$f26
    nop
    bc1fl	.L0db03a3c
    # Line 1501
    c.lt.s	$f0,$f5
    mov.s	$f22,$f26
.L0db035cc:
    # Line 1503
    ldc1	$f6,128($sp)
.L0db035d0:
    # Line 1504
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1503
    sub.s	$f22,$f22,$f6
    # Line 1504
    jal	__glFloor
    mov.s	$f12,$f22
    move	$s6,$v0
    # Line 1505
    addiu	$s7,$v0,1
.L0db035e8:
    # Line 1508
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 1509
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f0,232($sp)
    jal	__glFrac
    mov.s	$f12,$f22
    li	$a4,-1
    li	$a5,10497
    ldc1	$f6,496($sp)
    ld	$v0,352($sp)
    ldc1	$f5,504($sp)
    # Line 1511
    ld	$a0,344($sp)
    ld	$a7,456($sp)
    # Line 1510
    ldc1	$f7,232($sp)
    lwc1	$f10,3284($s2)
    # Line 1511
    ld	$a3,448($sp)
    nor	$a7,$a7,$zero
    # Line 1510
    sub.s	$f9,$f10,$f7
    # Line 1511
    nor	$a3,$a3,$zero
    and	$a6,$a3,$s6
    sub.s	$f10,$f10,$f0
    and	$t0,$a7,$a0
    or	$at,$t0,$a6
    beqz	$at,.L0db0455c
    mul.s	$f8,$f9,$f10
    # Line 1524
    lwc1	$f22,164($s0)
    # Line 1523
    lwc1	$f20,160($s0)
    # Line 1524
    mul.s	$f22,$f22,$f8
    # Line 1522
    lwc1	$f24,156($s0)
    # Line 1523
    mul.s	$f20,$f20,$f8
    # Line 1522
    mul.s	$f24,$f24,$f8
.L0db03668:
    # Line 1530
    mul.s	$f8,$f7,$f10
    and	$t1,$a7,$v0
    or	$at,$t1,$a6
    beqz	$at,.L0db0459c
    # Line 1541
    and	$a6,$a3,$s7
    # Line 1535
    lwc1	$f3,164($s0)
    # Line 1534
    lwc1	$f2,160($s0)
    # Line 1535
    mul.s	$f3,$f3,$f8
    # Line 1533
    lwc1	$f1,156($s0)
    # Line 1534
    mul.s	$f2,$f2,$f8
    # Line 1533
    mul.s	$f1,$f1,$f8
    # Line 1535
    add.s	$f22,$f3,$f22
    # Line 1534
    add.s	$f20,$f2,$f20
    # Line 1533
    add.s	$f24,$f1,$f24
.L0db036a0:
    # Line 1541
    or	$v1,$t0,$a6
    beqz	$v1,.L0db045e8
    mul.s	$f8,$f0,$f9
    # Line 1546
    lwc1	$f2,164($s0)
    # Line 1545
    lwc1	$f1,160($s0)
    # Line 1546
    mul.s	$f2,$f2,$f8
    # Line 1544
    lwc1	$f4,156($s0)
    # Line 1545
    mul.s	$f1,$f1,$f8
    # Line 1544
    mul.s	$f4,$f4,$f8
    # Line 1546
    add.s	$f22,$f2,$f22
    # Line 1545
    add.s	$f20,$f1,$f20
    # Line 1544
    add.s	$f24,$f4,$f24
.L0db036d0:
    # Line 1552
    or	$a1,$t1,$a6
    beqz	$a1,.L0db04634
    mul.s	$f8,$f0,$f7
    # Line 1557
    lwc1	$f1,164($s0)
    # Line 1556
    lwc1	$f4,160($s0)
    # Line 1557
    mul.s	$f1,$f1,$f8
    # Line 1555
    lwc1	$f3,156($s0)
    # Line 1556
    mul.s	$f4,$f4,$f8
    # Line 1555
    mul.s	$f3,$f3,$f8
    # Line 1557
    add.s	$f22,$f1,$f22
    # Line 1556
    add.s	$f20,$f4,$f20
    # Line 1557
    b	.L0db032a8
    # Line 1555
    add.s	$f24,$f3,$f24
.L0db03704:
    ldc1	$f8,_lit8_bff0000000000000
    # Line 1307
    add.d	$f8,$f22,$f8
    dmtc1	$zero,$f1
    c.lt.d	$f8,$f1
    li	$v0,1
    bc1fl	.L0db03720
    move	$v0,$zero
.L0db03720:
    beqz	$v0,.L0db04680
    add.d	$f7,$f22,$f7
    dmtc1	$zero,$f1
.L0db0372c:
    c.lt.d	$f7,$f1
    nop
    bc1f	.L0db03e00
    ldc1	$f9,_lit8_3ff0000000000000
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    # Line 1309
    li	$s7,15
.L0db03750:
    sd	$a3,384($sp)
.L0db03754:
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    # Line 1326
    # lw $t9, -23708($gp) # &__glFloor
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 1327
    addiu	$a2,$v0,-1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    li	$a0,10497
    # Line 1326
    sw	$v0,4($sp)
    ldc1	$f6,136($sp)
    # Line 1327
    c.lt.s	$f2,$f26
    ldc1	$f5,152($sp)
    # Line 1330
    addiu	$a3,$v0,1
    # Line 1327
    bc1f	.L0db037a4
    sw	$a2,0($sp)
    # Line 1328
    sw	$zero,0($sp)
.L0db037a4:
    # Line 1330
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f5,$f3
    nop
    bc1f	.L0db037d0
    sw	$a3,8($sp)
    # Line 1331
    trunc.w.s	$f4,$f5
    mfc1	$a3,$f4
    nop
    sw	$a3,8($sp)
.L0db037d0:
    # Line 1333
    addiu	$at,$a3,1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f5,$f1
    nop
    bc1f	.L0db03800
    sw	$at,12($sp)
    # Line 1334
    trunc.w.s	$f2,$f5
    mfc1	$v1,$f2
    nop
    sw	$v1,12($sp)
.L0db03800:
    ld	$a2,384($sp)
    # Line 1339
    lwc1	$f0,36($a2)
    # Line 1342
    move	$v0,$zero
    mul.s	$f24,$f6,$f0
    # Line 1353
    li	$a3,1
    # Line 1344
    li	$s6,-1
    # Line 1355
    li	$v1,15
    # Line 1342
    ldc1	$f1,128($sp)
    # Line 1369
    li	$at,1
    # Line 1342
    lw	$a1,8($s0)
    sub.s	$f24,$f24,$f1
    # Line 1357
    li	$a2,14
    ldc1	$f6,_lit8_4000000000000000
    # Line 1342
    bne	$a1,$a0,.L0db02f38
    cvt.d.s	$f20,$f24
    # Line 1344
    ld	$s8,336($sp)
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    addiu	$s6,$s6,1
    bc1f	.L0db03c34
    sd	$v0,360($sp)
    ld	$a3,384($sp)
    # Line 1346
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,448($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db03c58
    sw	$at,4($s8)
.L0db038a4:
    # Line 1439
    bnezl	$t0,.L0db031d0
    # Line 1440
    lwc1	$f4,0($a6)
    # Line 1444
    ld	$v1,296($sp)
    lw	$at,0($s8)
    lw	$a2,0($t1)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,280($sp)
    lwc1	$f4,0($a6)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 1446
    lwc1	$f3,8($a1)
    # Line 1445
    lwc1	$f2,4($a1)
    # Line 1446
    mul.s	$f3,$f3,$f4
    # Line 1444
    lwc1	$f1,0($a1)
    # Line 1445
    mul.s	$f2,$f2,$f4
    # Line 1444
    mul.s	$f1,$f1,$f4
    # Line 1446
    add.s	$f22,$f3,$f22
    # Line 1445
    add.s	$f20,$f2,$f20
    b	.L0db031f4
    # Line 1444
    add.s	$f24,$f1,$f24
.L0db03900:
    # Line 1439
    bnezl	$t0,.L0db03208
    # Line 1440
    lwc1	$f3,4($a6)
    # Line 1444
    ld	$v1,296($sp)
    lw	$at,0($s8)
    lw	$a2,4($t1)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,280($sp)
    lwc1	$f3,4($a6)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 1446
    lwc1	$f2,8($a1)
    # Line 1445
    lwc1	$f1,4($a1)
    # Line 1446
    mul.s	$f2,$f2,$f3
    # Line 1444
    lwc1	$f4,0($a1)
    # Line 1445
    mul.s	$f1,$f1,$f3
    # Line 1444
    mul.s	$f4,$f4,$f3
    # Line 1446
    add.s	$f22,$f2,$f22
    # Line 1445
    add.s	$f20,$f1,$f20
    b	.L0db0322c
    # Line 1444
    add.s	$f24,$f4,$f24
.L0db0395c:
    # Line 1439
    bnezl	$t0,.L0db03240
    # Line 1440
    lwc1	$f2,8($a6)
    # Line 1444
    ld	$v1,296($sp)
    lw	$at,0($s8)
    lw	$a2,8($t1)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,280($sp)
    lwc1	$f2,8($a6)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 1446
    lwc1	$f1,8($a1)
    # Line 1445
    lwc1	$f4,4($a1)
    # Line 1446
    mul.s	$f1,$f1,$f2
    # Line 1444
    lwc1	$f3,0($a1)
    # Line 1445
    mul.s	$f4,$f4,$f2
    # Line 1444
    mul.s	$f3,$f3,$f2
    # Line 1446
    add.s	$f22,$f1,$f22
    # Line 1445
    add.s	$f20,$f4,$f20
    b	.L0db03264
    # Line 1444
    add.s	$f24,$f3,$f24
.L0db039b8:
    # Line 1439
    bnezl	$t0,.L0db0327c
    # Line 1440
    lwc1	$f1,12($a6)
    # Line 1444
    ld	$v1,296($sp)
    lw	$at,0($s8)
    lw	$a2,12($t1)
    sllv	$at,$at,$v1
    addu	$a2,$a2,$at
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    ld	$a2,280($sp)
    lwc1	$f1,12($a6)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    # Line 1446
    lwc1	$f4,8($a1)
    # Line 1445
    lwc1	$f3,4($a1)
    # Line 1446
    mul.s	$f4,$f4,$f1
    # Line 1444
    lwc1	$f2,0($a1)
    # Line 1445
    mul.s	$f3,$f3,$f1
    # Line 1444
    mul.s	$f2,$f2,$f1
    # Line 1446
    add.s	$f22,$f4,$f22
    # Line 1445
    add.s	$f20,$f3,$f20
    b	.L0db032a0
    # Line 1444
    add.s	$f24,$f2,$f24
.L0db03a14:
    # Line 1828
    li	$v0,1
    b	.L0db032d8
    ld	$a1,464($sp)
.L0db03a20:
    nop
    # Line 1487
    bc1f	.L0db03570
    # Line 1489
    ldc1	$f2,128($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    b	.L0db0356c
    # Line 1488
    mov.s	$f20,$f0
.L0db03a3c:
    nop
    # Line 1501
    bc1f	.L0db035d0
    # Line 1503
    ldc1	$f6,128($sp)
    b	.L0db035cc
    # Line 1502
    mov.s	$f22,$f0
.L0db03a50:
    # Line 1302
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f0,$f0
    ld	$a2,456($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$a2
    ld	$a2,376($sp)
    sw	$a1,4($a2)
.L0db03a78:
    # Line 1298
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db03adc
    addiu	$s6,$s6,1
    ld	$a3,368($sp)
    # Line 1300
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,456($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    ld	$v1,376($sp)
    b	.L0db03b04
    sw	$at,8($v1)
.L0db03adc:
    # Line 1302
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$a2,456($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    ld	$a2,376($sp)
    sw	$a1,8($a2)
.L0db03b04:
    # Line 1298
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db03b68
    addiu	$s6,$s6,1
    ld	$a3,368($sp)
    # Line 1300
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,456($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    ld	$v1,376($sp)
    b	.L0db03b90
    sw	$at,12($v1)
.L0db03b68:
    # Line 1302
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$a2,456($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    ld	$a2,376($sp)
    sw	$a1,12($a2)
.L0db03b90:
    # Line 1298
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db03bf8
    ld	$a3,368($sp)
    # Line 1300
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,456($sp)
    mfc1	$at,$f0
    li	$a0,10497
    ldc1	$f6,136($sp)
    and	$at,$at,$v1
    ld	$v1,376($sp)
    ldc1	$f5,152($sp)
    b	.L0db03c28
    sw	$at,16($v1)
.L0db03bf8:
    # Line 1302
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$a2,456($sp)
    mfc1	$a1,$f1
    li	$a0,10497
    and	$a1,$a1,$a2
    ld	$a2,376($sp)
    ldc1	$f6,136($sp)
    ldc1	$f5,152($sp)
    sw	$a1,16($a2)
.L0db03c28:
    # Line 1305
    li	$at,1
    b	.L0db03800
    sd	$at,288($sp)
.L0db03c34:
    # Line 1348
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f2,$f0
    ld	$a1,448($sp)
    mfc1	$v1,$f2
    nop
    and	$v1,$v1,$a1
    sw	$v1,4($s8)
.L0db03c58:
    # Line 1344
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db03cbc
    addiu	$s6,$s6,1
    ld	$a2,384($sp)
    # Line 1346
    lw	$a2,24($a2)
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,448($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db03ce0
    sw	$at,8($s8)
.L0db03cbc:
    # Line 1348
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$a2,448($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    sw	$a1,8($s8)
.L0db03ce0:
    # Line 1344
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db03d44
    addiu	$s6,$s6,1
    ld	$a3,384($sp)
    # Line 1346
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v1,448($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v1
    b	.L0db03d68
    sw	$at,12($s8)
.L0db03d44:
    # Line 1348
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$a2,448($sp)
    mfc1	$a1,$f1
    nop
    and	$a1,$a1,$a2
    sw	$a1,12($s8)
.L0db03d68:
    # Line 1344
    mtc1	$s6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f0,$f7,$f24
    c.lt.s	$f0,$f26
    nop
    bc1f	.L0db03dcc
    ld	$a3,384($sp)
    # Line 1346
    lw	$a3,24($a3)
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,448($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    ld	$v0,288($sp)
    b	.L0db03df0
    sw	$at,16($s8)
.L0db03dcc:
    # Line 1348
    # lw $t9, -22924($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f1,$f0
    ld	$a1,448($sp)
    mfc1	$v1,$f1
    ld	$v0,288($sp)
    and	$v1,$v1,$a1
    sw	$v1,16($s8)
.L0db03df0:
    addiu	$s8,$sp,48
    # Line 1351
    addiu	$v0,$v0,1
    b	.L0db0301c
    sd	$v0,288($sp)
.L0db03e00:
    # Line 1309
    add.d	$f9,$f22,$f9
    dmtc1	$zero,$f2
    c.lt.d	$f9,$f2
    nop
    bc1fl	.L0db0451c
    # Line 1311
    c.lt.s	$f20,$f26
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    li	$s7,14
.L0db03e30:
    # Line 1355
    add.d	$f5,$f20,$f5
    c.lt.d	$f5,$f1
    nop
    bc1fl	.L0db04540
    # Line 1357
    c.lt.s	$f24,$f26
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$a2,360($sp)
.L0db03e50:
    # Line 1841
    sub.s	$f2,$f2,$f24
    lwc1	$f1,0($s4)
    # Line 1839
    lw	$at,2376($s2)
    # Line 1841
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($at)
    mul.s	$f2,$f2,$f24
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s4)
    # Line 1842
    lwc1	$f4,3284($s2)
    sub.s	$f4,$f4,$f20
    lwc1	$f3,4($s4)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($at)
    mul.s	$f4,$f4,$f20
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s4)
    # Line 1843
    lwc1	$f2,3284($s2)
    sub.s	$f2,$f2,$f22
    lwc1	$f1,8($s4)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($at)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    b	.L0db03308
    swc1	$f1,8($s4)
.L0db03eb4:
    # Line 1815
    ld	$v1,488($sp)
    li	$a1,8448
    bne	$v1,$a1,.L0db032bc
    li	$v1,7681
.L0db03ec4:
    # Line 1825
    lwc1	$f4,4($s4)
    # Line 1826
    lwc1	$f1,8($s4)
    # Line 1825
    mul.s	$f4,$f4,$f20
    # Line 1824
    lwc1	$f3,0($s4)
    # Line 1826
    mul.s	$f1,$f1,$f22
    # Line 1824
    mul.s	$f3,$f3,$f24
    # Line 1826
    swc1	$f1,8($s4)
    # Line 1825
    swc1	$f4,4($s4)
    # Line 1826
    b	.L0db03308
    # Line 1824
    swc1	$f3,0($s4)
.L0db03eec:
    # Line 1398
    bnez	$s7,.L0db03188
    li	$at,2
    # Line 1409
    lw	$v1,16($sp)
    # Line 1398
    bnez	$v0,.L0db03184
    li	$a3,3
    # Line 1409
    lw	$a1,0($sp)
    # Line 1408
    mov.s	$f22,$f26
    mov.s	$f20,$f26
    mov.s	$f24,$f26
    # Line 1410
    ld	$a2,296($sp)
    addiu	$a0,$sp,48
    move	$s6,$zero
    sllv	$a3,$a3,$a2
    sll	$a3,$a3,0x2
    # Line 1409
    sllv	$v1,$v1,$a2
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,280($sp)
    sll	$v0,$v0,0x2
    b	.L0db04cd4
    addu	$v0,$v0,$v1
.L0db03f44:
    sd	$zero,288($sp)
    # Line 1573
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    sd	$at,328($sp)
    addu	$at,$a7,$at
    # Line 1574
    lw	$v1,44($at)
    # Line 1575
    lw	$a1,0($at)
    sd	$at,384($sp)
    sd	$v1,296($sp)
    # Line 1579
    lwc1	$f8,32($at)
    # Line 1577
    lw	$v1,24($at)
    # Line 1576
    lw	$at,20($at)
    sdc1	$f8,152($sp)
    # Line 1580
    mul.s	$f8,$f7,$f8
    sd	$a1,280($sp)
    # Line 1576
    addiu	$at,$at,-1
    # Line 1577
    addiu	$v1,$v1,-1
    sd	$v1,448($sp)
    sd	$at,456($sp)
    # Line 1580
    beq	$a5,$t0,.L0db04d44
    mov.s	$f22,$f8
    # Line 1585
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db046b8
    ldc1	$f4,152($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 1587
    mov.s	$f22,$f26
.L0db03fc8:
    sdc1	$f5,504($sp)
.L0db03fcc:
    # Line 1589
    ldc1	$f9,128($sp)
    sdc1	$f6,496($sp)
    # Line 1590
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1589
    sub.s	$f22,$f22,$f9
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 1590
    jal	__glFloor
    mov.s	$f12,$f22
    sd	$v0,344($sp)
    # Line 1591
    addiu	$v0,$v0,1
    sd	$v0,352($sp)
.L0db03ff8:
    ld	$a2,384($sp)
    # Line 1595
    ldc1	$f5,136($sp)
    # Line 1594
    lwc1	$f20,36($a2)
    # Line 1595
    mul.s	$f5,$f5,$f20
    lw	$v1,8($s0)
    li	$a1,10497
    sdc1	$f20,160($sp)
    beq	$v1,$a1,.L0db04d8c
    mov.s	$f20,$f5
    # Line 1600
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db046e0
    ldc1	$f1,160($sp)
    # Line 1602
    mov.s	$f20,$f26
.L0db04030:
    # Line 1604
    ldc1	$f21,128($sp)
.L0db04034:
    # Line 1605
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1604
    sub.s	$f20,$f20,$f21
    # Line 1605
    jal	__glFloor
    mov.s	$f12,$f20
    move	$s6,$v0
    # Line 1606
    addiu	$s7,$v0,1
.L0db0404c:
    # Line 1609
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 1610
    # lw $t9, -23712($gp) # &__glFrac
    # Line 1609
    mov.s	$f22,$f0
    # Line 1610
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 1611
    lwc1	$f1,3284($s2)
    ld	$t1,352($sp)
    # Line 1612
    mul.s	$f6,$f24,$f22
    # Line 1611
    sub.s	$f8,$f1,$f22
    # Line 1641
    ld	$a2,352($sp)
    li	$v1,2
    # Line 1612
    ld	$at,288($sp)
    mul.s	$f8,$f24,$f8
    ld	$a0,296($sp)
    sub.s	$f1,$f1,$f0
    mul.s	$f5,$f0,$f6
    # Line 1641
    sllv	$a1,$s7,$a0
    # Line 1643
    ld	$a3,448($sp)
    # Line 1612
    mul.s	$f6,$f6,$f1
    # Line 1641
    sllv	$a0,$s6,$a0
    # Line 1643
    nor	$a3,$a3,$zero
    # Line 1612
    mul.s	$f7,$f0,$f8
    # Line 1643
    and	$a6,$a3,$s6
    # Line 1612
    beq	$at,$v1,.L0db047cc
    mul.s	$f8,$f8,$f1
    ld	$a7,456($sp)
    # Line 1643
    ld	$t0,344($sp)
    # Line 1656
    ld	$v1,344($sp)
    # Line 1643
    nor	$a7,$a7,$zero
    and	$t0,$a7,$t0
    or	$a1,$t0,$a6
    beqz	$a1,.L0db049e0
    ld	$at,296($sp)
    # Line 1652
    lwc1	$f22,164($s0)
    # Line 1651
    lwc1	$f20,160($s0)
    # Line 1652
    mul.s	$f22,$f22,$f8
    # Line 1650
    lwc1	$f24,156($s0)
    # Line 1651
    mul.s	$f20,$f20,$f8
    # Line 1650
    mul.s	$f24,$f24,$f8
.L0db040f0:
    # Line 1658
    and	$t1,$a7,$t1
    or	$at,$t1,$a6
    beqz	$at,.L0db04a1c
    # Line 1669
    and	$a6,$a3,$s7
    # Line 1663
    lwc1	$f3,164($s0)
    # Line 1662
    lwc1	$f2,160($s0)
    # Line 1663
    mul.s	$f3,$f3,$f6
    # Line 1661
    lwc1	$f1,156($s0)
    # Line 1662
    mul.s	$f2,$f2,$f6
    # Line 1661
    mul.s	$f1,$f1,$f6
    # Line 1663
    add.s	$f22,$f3,$f22
    # Line 1662
    add.s	$f20,$f2,$f20
    # Line 1661
    add.s	$f24,$f1,$f24
.L0db04124:
    # Line 1669
    or	$at,$t0,$a6
    beqz	$at,.L0db04a6c
    # Line 1678
    ld	$v1,344($sp)
    # Line 1674
    lwc1	$f2,164($s0)
    # Line 1673
    lwc1	$f1,160($s0)
    # Line 1674
    mul.s	$f2,$f2,$f7
    # Line 1672
    lwc1	$f4,156($s0)
    # Line 1673
    mul.s	$f1,$f1,$f7
    # Line 1672
    mul.s	$f4,$f4,$f7
    # Line 1674
    add.s	$f22,$f2,$f22
    # Line 1673
    add.s	$f20,$f1,$f20
    # Line 1672
    add.s	$f24,$f4,$f24
.L0db04154:
    # Line 1680
    or	$v1,$t1,$a6
    beqz	$v1,.L0db04ab8
    # Line 1689
    ld	$a2,352($sp)
    # Line 1685
    lwc1	$f1,164($s0)
    # Line 1684
    lwc1	$f4,160($s0)
    # Line 1685
    mul.s	$f1,$f1,$f5
    # Line 1683
    lwc1	$f3,156($s0)
    # Line 1684
    mul.s	$f4,$f4,$f5
    # Line 1683
    mul.s	$f3,$f3,$f5
    # Line 1685
    add.s	$f22,$f1,$f22
    # Line 1684
    add.s	$f20,$f4,$f20
    # Line 1683
    add.s	$f24,$f3,$f24
.L0db04184:
    # Line 1697
    ld	$v1,328($sp)
    lw	$at,228($s0)
    sd	$zero,288($sp)
    li	$a2,10497
    addu	$at,$at,$v1
    addiu	$at,$at,100
    # Line 1698
    lw	$v1,44($at)
    # Line 1704
    lw	$a1,4($s0)
    sd	$at,384($sp)
    sd	$v1,296($sp)
    # Line 1699
    lw	$v1,0($at)
    # Line 1704
    ldc1	$f8,168($sp)
    # Line 1703
    lwc1	$f2,32($at)
    sd	$v1,280($sp)
    # Line 1700
    lw	$v1,20($at)
    # Line 1701
    lw	$at,24($at)
    # Line 1704
    mul.s	$f8,$f8,$f2
    sdc1	$f2,152($sp)
    # Line 1701
    addiu	$at,$at,-1
    # Line 1700
    addiu	$v1,$v1,-1
    sd	$v1,456($sp)
    sd	$at,448($sp)
    # Line 1704
    beq	$a1,$a2,.L0db04dc0
    mov.s	$f0,$f8
    # Line 1709
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db046f8
    # Line 1711
    mov.s	$f1,$f26
    sdc1	$f26,224($sp)
.L0db041f8:
    # Line 1713
    ldc1	$f2,128($sp)
    ldc1	$f12,224($sp)
    # Line 1714
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1713
    sub.s	$f12,$f12,$f2
    # Line 1714
    jal	__glFloor
    sdc1	$f12,224($sp)
    sd	$v0,344($sp)
    # Line 1715
    addiu	$a1,$v0,1
    sd	$a1,352($sp)
.L0db0421c:
    ld	$v1,384($sp)
    # Line 1719
    ldc1	$f5,136($sp)
    # Line 1718
    lwc1	$f1,36($v1)
    # Line 1719
    mul.s	$f5,$f5,$f1
    # Line 1726
    mov.s	$f2,$f26
    li	$at,10497
    # Line 1719
    lw	$a2,8($s0)
    sdc1	$f1,160($sp)
    mov.s	$f3,$f5
    beq	$a2,$at,.L0db04dfc
    sdc1	$f5,240($sp)
    # Line 1724
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db04718
    ldc1	$f4,160($sp)
    sdc1	$f26,240($sp)
.L0db0425c:
    # Line 1728
    ldc1	$f3,128($sp)
    ldc1	$f12,240($sp)
    # Line 1729
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1728
    sub.s	$f12,$f12,$f3
    # Line 1729
    jal	__glFloor
    sdc1	$f12,240($sp)
    move	$s6,$v0
    # Line 1730
    addiu	$s7,$v0,1
    ldc1	$f0,224($sp)
.L0db04280:
    # Line 1733
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    # Line 1734
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f0,232($sp)
    jal	__glFrac
    ldc1	$f12,240($sp)
    li	$a4,-1
    # Line 1736
    ldc1	$f10,232($sp)
    ldc1	$f9,144($sp)
    # Line 1735
    lwc1	$f1,3284($s2)
    li	$a5,10497
    # Line 1736
    mul.s	$f7,$f9,$f10
    # Line 1735
    sub.s	$f10,$f1,$f10
    ldc1	$f6,496($sp)
    ldc1	$f5,504($sp)
    ld	$t1,352($sp)
    # Line 1736
    mul.s	$f9,$f9,$f10
    sub.s	$f1,$f1,$f0
    mul.s	$f10,$f0,$f7
    li	$a2,2
    # Line 1767
    ld	$a3,448($sp)
    # Line 1736
    mul.s	$f7,$f7,$f1
    ld	$a1,288($sp)
    # Line 1767
    nor	$a3,$a3,$zero
    # Line 1736
    mul.s	$f8,$f0,$f9
    # Line 1767
    and	$a6,$a3,$s6
    # Line 1736
    beq	$a1,$a2,.L0db048c8
    mul.s	$f9,$f9,$f1
    ld	$a7,456($sp)
    # Line 1767
    ld	$t0,344($sp)
    # Line 1780
    ld	$a2,344($sp)
    # Line 1767
    nor	$a7,$a7,$zero
    and	$t0,$a7,$t0
    or	$at,$t0,$a6
    beqz	$at,.L0db04bec
    ld	$a1,296($sp)
    # Line 1776
    lwc1	$f3,164($s0)
    # Line 1775
    lwc1	$f2,160($s0)
    # Line 1776
    mul.s	$f3,$f3,$f9
    # Line 1774
    lwc1	$f1,156($s0)
    # Line 1775
    mul.s	$f2,$f2,$f9
    # Line 1774
    mul.s	$f1,$f1,$f9
    # Line 1776
    add.s	$f22,$f3,$f22
    # Line 1775
    add.s	$f20,$f2,$f20
    # Line 1774
    add.s	$f24,$f1,$f24
.L0db04338:
    # Line 1782
    and	$t1,$a7,$t1
    or	$at,$t1,$a6
    beqz	$at,.L0db04b04
    # Line 1793
    and	$a6,$a3,$s7
    # Line 1787
    lwc1	$f2,164($s0)
    # Line 1786
    lwc1	$f1,160($s0)
    # Line 1787
    mul.s	$f2,$f2,$f7
    # Line 1785
    lwc1	$f4,156($s0)
    # Line 1786
    mul.s	$f1,$f1,$f7
    # Line 1785
    mul.s	$f4,$f4,$f7
    # Line 1787
    add.s	$f22,$f2,$f22
    # Line 1786
    add.s	$f20,$f1,$f20
    # Line 1785
    add.s	$f24,$f4,$f24
.L0db0436c:
    # Line 1793
    or	$at,$t0,$a6
    beqz	$at,.L0db04b54
    # Line 1802
    ld	$a2,344($sp)
    # Line 1798
    lwc1	$f1,164($s0)
    # Line 1797
    lwc1	$f4,160($s0)
    # Line 1798
    mul.s	$f1,$f1,$f8
    # Line 1796
    lwc1	$f3,156($s0)
    # Line 1797
    mul.s	$f4,$f4,$f8
    # Line 1796
    mul.s	$f3,$f3,$f8
    # Line 1798
    add.s	$f22,$f1,$f22
    # Line 1797
    add.s	$f20,$f4,$f20
    # Line 1796
    add.s	$f24,$f3,$f24
.L0db0439c:
    # Line 1804
    or	$v1,$t1,$a6
    beqz	$v1,.L0db04ba0
    ld	$at,296($sp)
    # Line 1809
    lwc1	$f4,164($s0)
    # Line 1808
    lwc1	$f3,160($s0)
    # Line 1809
    mul.s	$f4,$f4,$f10
    # Line 1807
    lwc1	$f2,156($s0)
    # Line 1808
    mul.s	$f3,$f3,$f10
    # Line 1807
    mul.s	$f2,$f2,$f10
    # Line 1809
    add.s	$f22,$f4,$f22
    # Line 1808
    add.s	$f20,$f3,$f20
    # Line 1809
    b	.L0db032a8
    # Line 1807
    add.s	$f24,$f2,$f24
.L0db043d0:
    # Line 1423
    addiu	$s8,$sp,16
    addiu	$a3,$sp,48
    # Line 1422
    mov.s	$f22,$f26
    mov.s	$f20,$f26
    # Line 1423
    move	$s6,$zero
    addiu	$t1,$sp,0
.L0db043e8:
    sll	$a6,$s6,0x2
    ld	$v1,296($sp)
    lw	$v0,0($s8)
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a3
    sllv	$v0,$v0,$v1
    # Line 1426
    lw	$a1,0($t1)
    lw	$v1,12($t1)
    lw	$a0,8($t1)
    addu	$a1,$a1,$v0
    addu	$v1,$v1,$v0
    addu	$a0,$a0,$v0
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    lw	$a0,4($t1)
    sll	$a2,$v1,0x2
    subu	$a2,$a2,$v1
    addu	$a0,$a0,$v0
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$a1,280($sp)
    lwc1	$f3,12($a6)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 1427
    lwc1	$f1,4($a2)
    # Line 1428
    lwc1	$f12,8($a2)
    # Line 1427
    mul.s	$f1,$f1,$f3
    # Line 1426
    lwc1	$f8,8($a6)
    # Line 1428
    mul.s	$f12,$f12,$f3
    # Line 1426
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    # Line 1427
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f8
    # Line 1426
    lwc1	$f9,0($a6)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    # Line 1427
    lwc1	$f11,4($a0)
    mul.s	$f11,$f11,$f9
    # Line 1428
    lwc1	$f2,8($a0)
    # Line 1426
    lwc1	$f10,4($a6)
    sll	$v1,$v1,0x2
    # Line 1428
    mul.s	$f2,$f2,$f9
    # Line 1426
    addu	$v1,$v1,$a1
    # Line 1428
    lwc1	$f0,8($v1)
    lwc1	$f7,8($at)
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f22
    mul.s	$f22,$f7,$f8
    # Line 1426
    lwc1	$f7,0($a0)
    mul.s	$f7,$f7,$f9
    # Line 1428
    add.s	$f0,$f0,$f2
    # Line 1427
    lwc1	$f9,4($v1)
    # Line 1428
    add.s	$f22,$f22,$f0
    # Line 1427
    mul.s	$f9,$f9,$f10
    add.s	$f20,$f11,$f20
    # Line 1426
    lwc1	$f2,0($v1)
    # Line 1428
    add.s	$f22,$f12,$f22
    # Line 1426
    mul.s	$f2,$f2,$f10
    add.s	$f7,$f7,$f24
    lwc1	$f0,0($at)
    # Line 1427
    add.s	$f20,$f9,$f20
    # Line 1426
    mul.s	$f0,$f0,$f8
    add.s	$f2,$f2,$f7
    lwc1	$f24,0($a2)
    # Line 1427
    add.s	$f20,$f4,$f20
    # Line 1426
    mul.s	$f24,$f24,$f3
    add.s	$f0,$f0,$f2
    # Line 1427
    add.s	$f20,$f1,$f20
    # Line 1423
    addiu	$s6,$s6,1
    addiu	$s8,$s8,4
    # Line 1426
    add.s	$f24,$f24,$f0
    # Line 1423
    bne	$s6,$s5,.L0db043e8
    addiu	$t1,$sp,0
    b	.L0db032ac
    # Line 1815
    ld	$at,488($sp)
.L0db0451c:
    nop
    # Line 1311
    bc1f	.L0db04730
    nop
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    # Line 1313
    b	.L0db03750
    li	$s7,12
.L0db04540:
    nop
    # Line 1357
    bc1f	.L0db04750
    # Line 1361
    li	$a2,8
    # Line 1359
    li	$a1,12
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$a1,360($sp)
.L0db0455c:
    # Line 1528
    ld	$v1,280($sp)
    ld	$at,296($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$a0
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1530
    lwc1	$f22,8($a2)
    # Line 1529
    lwc1	$f20,4($a2)
    # Line 1530
    mul.s	$f22,$f22,$f8
    # Line 1528
    lwc1	$f24,0($a2)
    # Line 1529
    mul.s	$f20,$f20,$f8
    b	.L0db03668
    # Line 1528
    mul.s	$f24,$f24,$f8
.L0db0459c:
    # Line 1539
    ld	$a2,280($sp)
    ld	$a1,296($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$v0
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1541
    lwc1	$f3,8($v1)
    # Line 1540
    lwc1	$f2,4($v1)
    # Line 1541
    mul.s	$f3,$f3,$f8
    # Line 1539
    lwc1	$f1,0($v1)
    # Line 1540
    mul.s	$f2,$f2,$f8
    # Line 1539
    mul.s	$f1,$f1,$f8
    # Line 1541
    add.s	$f22,$f3,$f22
    # Line 1540
    add.s	$f20,$f2,$f20
    b	.L0db036a0
    # Line 1539
    add.s	$f24,$f1,$f24
.L0db045e8:
    ld	$at,296($sp)
    # Line 1550
    ld	$v1,280($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$a0
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1552
    lwc1	$f2,8($a2)
    # Line 1551
    lwc1	$f1,4($a2)
    # Line 1552
    mul.s	$f2,$f2,$f8
    # Line 1550
    lwc1	$f4,0($a2)
    # Line 1551
    mul.s	$f1,$f1,$f8
    # Line 1550
    mul.s	$f4,$f4,$f8
    # Line 1552
    add.s	$f22,$f2,$f22
    # Line 1551
    add.s	$f20,$f1,$f20
    b	.L0db036d0
    # Line 1550
    add.s	$f24,$f4,$f24
.L0db04634:
    # Line 1561
    ld	$a2,280($sp)
    ld	$a1,296($sp)
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$v0
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1563
    lwc1	$f1,8($v1)
    # Line 1562
    lwc1	$f4,4($v1)
    # Line 1563
    mul.s	$f1,$f1,$f8
    # Line 1561
    lwc1	$f3,0($v1)
    # Line 1562
    mul.s	$f4,$f4,$f8
    # Line 1561
    mul.s	$f3,$f3,$f8
    # Line 1563
    add.s	$f22,$f1,$f22
    # Line 1562
    add.s	$f20,$f4,$f20
    b	.L0db032a8
    # Line 1561
    add.s	$f24,$f3,$f24
.L0db04680:
    # Line 1307
    cvt.d.s	$f2,$f0
    c.lt.d	$f2,$f7
    nop
    bc1fl	.L0db03754
    sd	$a3,384($sp)
    b	.L0db0372c
    dmtc1	$zero,$f1
.L0db0469c:
    # Line 1353
    cvt.d.s	$f3,$f5
    c.lt.d	$f3,$f6
    nop
    bc1f	.L0db02f78
    sd	$v0,360($sp)
    b	.L0db02f60
    dmtc1	$zero,$f1
.L0db046b8:
    # Line 1587
    c.lt.s	$f4,$f8
    nop
    bc1fl	.L0db03fcc
    sdc1	$f5,504($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    b	.L0db03fc8
    ldc1	$f22,152($sp)
.L0db046e0:
    # Line 1602
    c.lt.s	$f1,$f5
    nop
    bc1f	.L0db04034
    # Line 1604
    ldc1	$f21,128($sp)
    b	.L0db04030
    ldc1	$f20,160($sp)
.L0db046f8:
    ldc1	$f2,152($sp)
    # Line 1711
    c.lt.s	$f2,$f8
    nop
    bc1f	.L0db041f8
    sdc1	$f0,224($sp)
    ldc1	$f3,152($sp)
    b	.L0db041f8
    sdc1	$f3,224($sp)
.L0db04718:
    # Line 1726
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db0425c
    ldc1	$f1,160($sp)
    b	.L0db0425c
    sdc1	$f1,240($sp)
.L0db04730:
    # Line 1313
    beqzl	$v0,.L0db04c34
    # Line 1315
    cvt.d.s	$f10,$f0
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    li	$s7,8
.L0db04750:
    # Line 1359
    beqzl	$a3,.L0db04c5c
    # Line 1361
    cvt.d.s	$f8,$f0
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$a2,360($sp)
.L0db04764:
    ldc1	$f20,128($sp)
    sd	$v0,384($sp)
    # Line 1484
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1483
    sub.s	$f20,$f8,$f20
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    # Line 1484
    jal	__glFloor
    mov.s	$f12,$f20
    ld	$v1,456($sp)
    ld	$a0,384($sp)
    and	$at,$v0,$v1
    sd	$at,344($sp)
    # Line 1485
    addiu	$at,$at,1
    and	$at,$at,$v1
    b	.L0db0359c
    sd	$at,352($sp)
.L0db047a4:
    ldc1	$f22,128($sp)
    # Line 1498
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1497
    sub.s	$f22,$f5,$f22
    # Line 1498
    jal	__glFloor
    mov.s	$f12,$f22
    ld	$at,448($sp)
    and	$s6,$v0,$at
    # Line 1499
    addiu	$s7,$s6,1
    b	.L0db035e8
    and	$s7,$s7,$at
.L0db047cc:
    # Line 1641
    ld	$at,280($sp)
    sd	$v0,512($sp)
    addu	$v0,$a1,$a2
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$at
    addu	$v0,$v0,$v1
    # Line 1642
    lwc1	$f1,4($v0)
    # Line 1641
    ld	$v1,344($sp)
    # Line 1642
    mul.s	$f1,$f1,$f5
    # Line 1641
    addu	$a1,$a1,$v1
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1642
    lwc1	$f3,4($v1)
    mul.s	$f3,$f3,$f7
    # Line 1643
    lwc1	$f2,8($v0)
    mul.s	$f2,$f2,$f5
    # Line 1641
    addu	$a2,$a0,$a2
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 1642
    lwc1	$f4,4($a1)
    mul.s	$f4,$f4,$f6
    # Line 1643
    lwc1	$f0,8($a1)
    # Line 1641
    ld	$a2,344($sp)
    # Line 1643
    mul.s	$f0,$f0,$f6
    # Line 1641
    addu	$a0,$a0,$a2
    sll	$a2,$a0,0x1
    sll	$a0,$a0,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a0,$a0,$a2
    # Line 1643
    lwc1	$f22,8($a0)
    lwc1	$f24,8($v1)
    mul.s	$f22,$f22,$f8
    mul.s	$f24,$f24,$f7
    # Line 1642
    lwc1	$f20,4($a0)
    mul.s	$f20,$f20,$f8
    # Line 1643
    add.s	$f22,$f22,$f0
    # Line 1641
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f6
    # Line 1643
    add.s	$f22,$f22,$f24
    # Line 1641
    lwc1	$f24,0($a0)
    mul.s	$f24,$f24,$f8
    # Line 1643
    add.s	$f22,$f22,$f2
    # Line 1641
    lwc1	$f2,0($v1)
    # Line 1642
    add.s	$f20,$f20,$f4
    # Line 1641
    mul.s	$f2,$f2,$f7
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($v0)
    # Line 1642
    add.s	$f20,$f20,$f3
    # Line 1641
    mul.s	$f0,$f0,$f5
    add.s	$f24,$f24,$f2
    # Line 1642
    add.s	$f20,$f20,$f1
    ld	$v0,512($sp)
    # Line 1643
    b	.L0db04184
    # Line 1641
    add.s	$f24,$f24,$f0
.L0db048c8:
    ld	$a0,296($sp)
    sd	$v0,512($sp)
    # Line 1759
    ld	$a1,344($sp)
    # Line 1765
    ld	$a2,280($sp)
    # Line 1759
    sllv	$v1,$s7,$a0
    addu	$a1,$v1,$a1
    sll	$v0,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v0,$v0,$a1
    # Line 1760
    lwc1	$f3,4($v0)
    # Line 1765
    ld	$a1,352($sp)
    # Line 1760
    mul.s	$f3,$f3,$f8
    # Line 1765
    addu	$v1,$v1,$a1
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a2
    addu	$at,$at,$v1
    # Line 1766
    lwc1	$f1,4($at)
    mul.s	$f1,$f1,$f10
    # Line 1747
    sllv	$a0,$s6,$a0
    # Line 1753
    addu	$a1,$a0,$a1
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1754
    lwc1	$f11,4($v1)
    # Line 1747
    ld	$a1,344($sp)
    # Line 1754
    mul.s	$f11,$f11,$f7
    # Line 1747
    addu	$a0,$a0,$a1
    sll	$a1,$a0,0x1
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$a0,$a0,$a1
    # Line 1749
    lwc1	$f12,8($a0)
    # Line 1755
    lwc1	$f4,8($v1)
    # Line 1749
    mul.s	$f12,$f12,$f9
    # Line 1761
    lwc1	$f0,8($v0)
    # Line 1755
    mul.s	$f4,$f4,$f7
    # Line 1761
    mul.s	$f0,$f0,$f8
    # Line 1748
    lwc1	$f2,4($a0)
    # Line 1749
    add.s	$f12,$f12,$f22
    # Line 1748
    mul.s	$f2,$f2,$f9
    # Line 1767
    lwc1	$f22,8($at)
    # Line 1755
    add.s	$f4,$f4,$f12
    # Line 1767
    mul.s	$f22,$f22,$f10
    # Line 1761
    add.s	$f0,$f0,$f4
    # Line 1747
    lwc1	$f4,0($a0)
    mul.s	$f4,$f4,$f9
    # Line 1748
    add.s	$f20,$f2,$f20
    # Line 1753
    lwc1	$f2,0($v1)
    # Line 1767
    add.s	$f22,$f22,$f0
    # Line 1753
    mul.s	$f2,$f2,$f7
    # Line 1747
    add.s	$f4,$f4,$f24
    # Line 1759
    lwc1	$f0,0($v0)
    # Line 1754
    add.s	$f20,$f11,$f20
    # Line 1759
    mul.s	$f0,$f0,$f8
    # Line 1753
    add.s	$f2,$f2,$f4
    # Line 1765
    lwc1	$f24,0($at)
    # Line 1760
    add.s	$f20,$f3,$f20
    # Line 1765
    mul.s	$f24,$f24,$f10
    # Line 1759
    add.s	$f0,$f0,$f2
    # Line 1766
    add.s	$f20,$f1,$f20
    ld	$v0,512($sp)
    # Line 1767
    b	.L0db032a8
    # Line 1765
    add.s	$f24,$f24,$f0
.L0db049e0:
    # Line 1656
    sllv	$at,$s6,$at
    addu	$at,$at,$v1
    ld	$v1,280($sp)
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1658
    lwc1	$f22,8($a2)
    # Line 1657
    lwc1	$f20,4($a2)
    # Line 1658
    mul.s	$f22,$f22,$f8
    # Line 1656
    lwc1	$f24,0($a2)
    # Line 1657
    mul.s	$f20,$f20,$f8
    b	.L0db040f0
    # Line 1656
    mul.s	$f24,$f24,$f8
.L0db04a1c:
    # Line 1667
    ld	$a2,352($sp)
    ld	$a1,296($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$a2
    ld	$a2,280($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1669
    lwc1	$f3,8($v1)
    # Line 1668
    lwc1	$f2,4($v1)
    # Line 1669
    mul.s	$f3,$f3,$f6
    # Line 1667
    lwc1	$f1,0($v1)
    # Line 1668
    mul.s	$f2,$f2,$f6
    # Line 1667
    mul.s	$f1,$f1,$f6
    # Line 1669
    add.s	$f22,$f3,$f22
    # Line 1668
    add.s	$f20,$f2,$f20
    b	.L0db04124
    # Line 1667
    add.s	$f24,$f1,$f24
.L0db04a6c:
    ld	$at,296($sp)
    # Line 1678
    sllv	$at,$s7,$at
    addu	$at,$at,$v1
    ld	$v1,280($sp)
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1680
    lwc1	$f2,8($a2)
    # Line 1679
    lwc1	$f1,4($a2)
    # Line 1680
    mul.s	$f2,$f2,$f7
    # Line 1678
    lwc1	$f4,0($a2)
    # Line 1679
    mul.s	$f1,$f1,$f7
    # Line 1678
    mul.s	$f4,$f4,$f7
    # Line 1680
    add.s	$f22,$f2,$f22
    # Line 1679
    add.s	$f20,$f1,$f20
    b	.L0db04154
    # Line 1678
    add.s	$f24,$f4,$f24
.L0db04ab8:
    ld	$a1,296($sp)
    # Line 1689
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$a2
    ld	$a2,280($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1691
    lwc1	$f1,8($v1)
    # Line 1690
    lwc1	$f4,4($v1)
    # Line 1691
    mul.s	$f1,$f1,$f5
    # Line 1689
    lwc1	$f3,0($v1)
    # Line 1690
    mul.s	$f4,$f4,$f5
    # Line 1689
    mul.s	$f3,$f3,$f5
    # Line 1691
    add.s	$f22,$f1,$f22
    # Line 1690
    add.s	$f20,$f4,$f20
    b	.L0db04184
    # Line 1689
    add.s	$f24,$f3,$f24
.L0db04b04:
    # Line 1791
    ld	$v1,352($sp)
    ld	$at,296($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$v1
    ld	$v1,280($sp)
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1793
    lwc1	$f4,8($a2)
    # Line 1792
    lwc1	$f3,4($a2)
    # Line 1793
    mul.s	$f4,$f4,$f7
    # Line 1791
    lwc1	$f2,0($a2)
    # Line 1792
    mul.s	$f3,$f3,$f7
    # Line 1791
    mul.s	$f2,$f2,$f7
    # Line 1793
    add.s	$f22,$f4,$f22
    # Line 1792
    add.s	$f20,$f3,$f20
    b	.L0db0436c
    # Line 1791
    add.s	$f24,$f2,$f24
.L0db04b54:
    ld	$a1,296($sp)
    # Line 1802
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$a2
    ld	$a2,280($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1804
    lwc1	$f3,8($v1)
    # Line 1803
    lwc1	$f2,4($v1)
    # Line 1804
    mul.s	$f3,$f3,$f8
    # Line 1802
    lwc1	$f1,0($v1)
    # Line 1803
    mul.s	$f2,$f2,$f8
    # Line 1802
    mul.s	$f1,$f1,$f8
    # Line 1804
    add.s	$f22,$f3,$f22
    # Line 1803
    add.s	$f20,$f2,$f20
    b	.L0db0439c
    # Line 1802
    add.s	$f24,$f1,$f24
.L0db04ba0:
    # Line 1813
    ld	$v1,352($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$v1
    ld	$v1,280($sp)
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 1815
    lwc1	$f2,8($a2)
    # Line 1814
    lwc1	$f1,4($a2)
    # Line 1815
    mul.s	$f2,$f2,$f10
    # Line 1813
    lwc1	$f4,0($a2)
    # Line 1814
    mul.s	$f1,$f1,$f10
    # Line 1813
    mul.s	$f4,$f4,$f10
    # Line 1815
    add.s	$f22,$f2,$f22
    # Line 1814
    add.s	$f20,$f1,$f20
    b	.L0db032a8
    # Line 1813
    add.s	$f24,$f4,$f24
.L0db04bec:
    # Line 1780
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$a2
    ld	$a2,280($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1782
    lwc1	$f1,8($v1)
    # Line 1781
    lwc1	$f4,4($v1)
    # Line 1782
    mul.s	$f1,$f1,$f9
    # Line 1780
    lwc1	$f3,0($v1)
    # Line 1781
    mul.s	$f4,$f4,$f9
    # Line 1780
    mul.s	$f3,$f3,$f9
    # Line 1782
    add.s	$f22,$f1,$f22
    # Line 1781
    add.s	$f20,$f4,$f20
    b	.L0db04338
    # Line 1780
    add.s	$f24,$f3,$f24
.L0db04c34:
    # Line 1315
    c.lt.d	$f10,$f8
    nop
    bc1fl	.L0db04e38
    # Line 1317
    c.lt.s	$f0,$f20
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    li	$s7,15
.L0db04c5c:
    # Line 1361
    c.lt.d	$f8,$f7
    nop
    bc1f	.L0db04e5c
    # Line 1363
    li	$a2,15
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$a2,360($sp)
.L0db04c78:
    # Line 1410
    addiu	$a0,$a0,8
    # Line 1413
    addiu	$v0,$v0,12
    # Line 1411
    lwc1	$f1,-4($a0)
    # Line 1413
    lwc1	$f4,-4($v0)
    li	$v1,3
    # Line 1412
    lwc1	$f3,-8($v0)
    # Line 1413
    mul.s	$f4,$f4,$f1
    xor	$at,$s6,$a1
    # Line 1411
    lwc1	$f2,-12($v0)
    # Line 1412
    mul.s	$f3,$f3,$f1
    # Line 1413
    subu	$at,$at,$a1
    sra	$a1,$s6,0x1f
    # Line 1411
    mul.s	$f2,$f2,$f1
    # Line 1410
    addiu	$s6,$s6,1
    # Line 1413
    add.s	$f22,$f4,$f22
    andi	$at,$at,0x3
    xor	$at,$at,$a1
    # Line 1412
    add.s	$f20,$f3,$f20
    # Line 1413
    subu	$at,$at,$a1
    beq	$at,$v1,.L0db04d38
    # Line 1411
    add.s	$f24,$f2,$f24
.L0db04ccc:
    li	$a2,16
    # Line 1410
    beq	$s6,$a2,.L0db03eb4
.L0db04cd4:
    # Line 1413
    addiu	$v0,$v0,12
    li	$v1,3
    sra	$a1,$s6,0x1f
    # Line 1411
    lwc1	$f4,0($a0)
    # Line 1413
    lwc1	$f3,-4($v0)
    xor	$at,$s6,$a1
    # Line 1412
    lwc1	$f2,-8($v0)
    # Line 1413
    mul.s	$f3,$f3,$f4
    subu	$at,$at,$a1
    # Line 1411
    lwc1	$f1,-12($v0)
    # Line 1412
    mul.s	$f2,$f2,$f4
    # Line 1413
    sra	$a1,$s6,0x1f
    # Line 1410
    addiu	$s6,$s6,1
    # Line 1411
    mul.s	$f1,$f1,$f4
    # Line 1413
    andi	$at,$at,0x3
    add.s	$f22,$f3,$f22
    xor	$at,$at,$a1
    subu	$at,$at,$a1
    # Line 1412
    add.s	$f20,$f2,$f20
    # Line 1413
    sra	$a1,$s6,0x1f
    bne	$at,$v1,.L0db04c78
    # Line 1411
    add.s	$f24,$f1,$f24
    # Line 1415
    addu	$v0,$a3,$v0
    b	.L0db04c78
    addiu	$v0,$v0,-48
.L0db04d38:
    addu	$v0,$a3,$v0
    b	.L0db04ccc
    addiu	$v0,$v0,-48
.L0db04d44:
    sdc1	$f5,504($sp)
    ldc1	$f22,128($sp)
    sdc1	$f6,496($sp)
    # Line 1583
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1582
    sub.s	$f22,$f8,$f22
    sdc1	$f7,168($sp)
    sdc1	$f0,144($sp)
    # Line 1583
    jal	__glFloor
    mov.s	$f12,$f22
    # Line 1585
    li	$a1,1
    sd	$a1,288($sp)
    # Line 1583
    ld	$a1,456($sp)
    and	$v1,$v0,$a1
    sd	$v1,344($sp)
    # Line 1584
    addiu	$v1,$v1,1
    and	$v1,$v1,$a1
    # Line 1585
    b	.L0db03ff8
    sd	$v1,352($sp)
.L0db04d8c:
    ldc1	$f20,128($sp)
    # Line 1598
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1597
    sub.s	$f20,$f5,$f20
    # Line 1598
    jal	__glFloor
    mov.s	$f12,$f20
    ld	$v1,288($sp)
    ld	$at,448($sp)
    # Line 1600
    addiu	$v1,$v1,1
    sd	$v1,288($sp)
    # Line 1598
    and	$s6,$v0,$at
    # Line 1599
    addiu	$s7,$s6,1
    # Line 1600
    b	.L0db0404c
    # Line 1599
    and	$s7,$s7,$at
.L0db04dc0:
    ldc1	$f21,128($sp)
    # Line 1706
    sub.s	$f21,$f8,$f21
    # Line 1707
    # lw $t9, -23708($gp) # &__glFloor
    mov.s	$f12,$f21
    jal	__glFloor
    sdc1	$f21,224($sp)
    # Line 1709
    li	$a2,1
    sd	$a2,288($sp)
    # Line 1707
    ld	$a2,456($sp)
    and	$a1,$v0,$a2
    sd	$a1,344($sp)
    # Line 1708
    addiu	$a1,$a1,1
    and	$a1,$a1,$a2
    # Line 1709
    b	.L0db0421c
    sd	$a1,352($sp)
.L0db04dfc:
    ldc1	$f23,128($sp)
    # Line 1721
    sub.s	$f23,$f5,$f23
    # Line 1722
    # lw $t9, -23708($gp) # &__glFloor
    mov.s	$f12,$f23
    jal	__glFloor
    sdc1	$f23,240($sp)
    ld	$v1,288($sp)
    ldc1	$f0,224($sp)
    ld	$at,448($sp)
    # Line 1724
    addiu	$v1,$v1,1
    sd	$v1,288($sp)
    # Line 1722
    and	$s6,$v0,$at
    # Line 1723
    addiu	$s7,$s6,1
    # Line 1724
    b	.L0db04280
    # Line 1723
    and	$s7,$s7,$at
.L0db04e38:
    nop
    # Line 1317
    bc1fl	.L0db04ec8
    # Line 1319
    c.lt.d	$f10,$f9
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    li	$s7,7
.L0db04e5c:
    # Line 1363
    c.lt.s	$f0,$f24
    nop
    bc1f	.L0db04eec
    # Line 1365
    li	$a1,7
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$a1,360($sp)
.L0db04e78:
    # Line 1862
    move	$v0,$zero
    # ld	gp,408(sp)
    ld	$s0,392($sp)
    ld	$s1,256($sp)
    ld	$s2,416($sp)
    ld	$s3,304($sp)
    ld	$s4,400($sp)
    ld	$s5,264($sp)
    ld	$s6,312($sp)
    ld	$s7,248($sp)
    ld	$s8,272($sp)
    ldc1	$f20,176($sp)
    ldc1	$f22,184($sp)
    ldc1	$f24,192($sp)
    ldc1	$f26,200($sp)
    ld	$ra,320($sp)
    ldc1	$f28,216($sp)
    ldc1	$f30,208($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0db04ec8:
    nop
    # Line 1319
    bc1fl	.L0db04f0c
    # Line 1321
    c.lt.d	$f10,$f7
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    li	$s7,3
.L0db04eec:
    # Line 1365
    c.lt.d	$f8,$f5
    nop
    bc1fl	.L0db04f30
    # Line 1367
    c.lt.d	$f8,$f6
    sdc1	$f0,160($sp)
    li	$a2,3
    b	.L0db02f78
    sd	$a2,360($sp)
.L0db04f0c:
    nop
    # Line 1321
    bc1fl	.L0db03754
    sd	$a3,384($sp)
    sd	$a0,288($sp)
    sdc1	$f5,504($sp)
    sdc1	$f6,496($sp)
    sdc1	$f0,152($sp)
    b	.L0db03750
    # Line 1323
    li	$s7,1
.L0db04f30:
    nop
    # Line 1367
    bc1f	.L0db02f78
    sd	$v0,360($sp)
    sdc1	$f0,160($sp)
    b	.L0db02f78
    sd	$at,360($sp)
.end __glTextureRGB_F_LML_StippledSpan

# Function: __glTextureRGB_L_NML_Span
# Declared: Line 1872 (Source lines: 1873-2171)
# Address: 0x0db04f48 - 0x0db05a14 (Size: 2764 bytes, Frame: 128)
.globl __glTextureRGB_L_NML_Span
.ent __glTextureRGB_L_NML_Span
__glTextureRGB_L_NML_Span:
    # Line 1873
    addiu	$sp,$sp,-256
    sd	$s6,152($sp)
    sd	$s7,104($sp)
    sd	$s8,96($sp)
    sdc1	$f28,24($sp)
    sdc1	$f30,16($sp)
    sd	$ra,144($sp)
    sd	$s1,120($sp)
    move	$s1,$a0
    sdc1	$f26,48($sp)
    # Line 1903
    lwc1	$f26,30244($a0)
    sdc1	$f20,56($sp)
    # Line 1902
    lwc1	$f20,30240($a0)
    sdc1	$f24,32($sp)
    # Line 1901
    lwc1	$f24,30232($a0)
    sdc1	$f22,40($sp)
    # Line 1900
    lwc1	$f22,30228($a0)
    sd	$s2,168($sp)
    # Line 1898
    lw	$s2,30468($a0)
    sd	$s0,128($sp)
    # Line 1896
    lw	$s0,28216($a0)
    # sd	gp,176(sp)
    # Line 1881
    lwc1	$f0,3280($a0)
    sd	$s5,112($sp)
    # Line 1873
    lui	$s5,0xf
    addiu	$s5,$s5,10528
    sdc1	$f0,0($sp)
    # addu	gp,t9,s5
    sd	$s4,136($sp)
    # Line 1905
    lw	$s4,30252($a0)
    sd	$s3,160($sp)
    # Line 1894
    lw	$s3,2376($a0)
    # Line 1905
    addiu	$s4,$s4,-1
    bltz	$s4,.L0db0594c
    # Line 1894
    lw	$s3,0($s3)
    # Line 1905
    li	$a0,-1
    li	$a4,7681
    li	$s6,0x8062
    li	$a3,8448
    mtc1	$zero,$f5
    li	$s5,10497
    xori	$at,$s3,0x2101
    sltiu	$at,$at,1
    b	.L0db05154
    sd	$at,184($sp)
.L0db04ffc:
    # Line 2058
    trunc.w.s	$f30,$f8
    # Line 2054
    lw	$v0,236($s0)
    # Line 2058
    cvt.s.w	$f6,$f30
    mfc1	$a7,$f30
    # Line 2060
    sll	$s7,$v0,0x2
    subu	$s7,$s7,$v0
    # Line 2058
    addiu	$a1,$a7,1
    slt	$v1,$v0,$a1
    sub.s	$f6,$f8,$f6
    slti	$a1,$a1,0
    or	$v1,$v1,$a1
    beqz	$v1,.L0db055c4
    sub.s	$f30,$f7,$f6
    # Line 2060
    sll	$s7,$s7,0x3
    addu	$s7,$s7,$v0
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$a6
    # Line 2061
    beq	$s5,$a5,.L0db0584c
    lwc1	$f28,32($s7)
    # Line 2066
    mul.s	$f1,$f12,$f28
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    # Line 2065
    lw	$v0,20($s7)
    # Line 2066
    bltz	$a5,.L0db057cc
    move	$s8,$a5
    # Line 2067
    slt	$at,$a5,$v0
    bnezl	$at,.L0db05074
    # Line 2070
    lw	$v1,8($s0)
    # Line 2068
    addiu	$s8,$v0,-1
.L0db05070:
    # Line 2070
    lw	$v1,8($s0)
.L0db05074:
    ldc1	$f2,8($sp)
    beq	$v1,$s5,.L0db05878
    lwc1	$f28,36($s7)
    # Line 2075
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    # Line 2074
    lw	$a6,24($s7)
    # Line 2075
    mfc1	$a7,$f2
    # Line 2074
    move	$v0,$a6
    # Line 2075
    bltz	$a7,.L0db057d4
    move	$a5,$a7
    # Line 2076
    slt	$a1,$a7,$v0
    bnez	$a1,.L0db050b0
    # Line 2077
    addiu	$at,$a6,-1
    addiu	$a5,$v0,-1
.L0db050ac:
    addiu	$at,$a6,-1
.L0db050b0:
    lw	$a2,20($s7)
    nor	$at,$at,$zero
    and	$at,$at,$a5
    addiu	$a2,$a2,-1
    nor	$a2,$a2,$zero
    and	$a2,$a2,$s8
    or	$a2,$a2,$at
    beqzl	$a2,.L0db0579c
    # Line 2085
    lw	$at,44($s7)
    # Line 2083
    lwc1	$f7,164($s0)
    # Line 2082
    lwc1	$f0,160($s0)
    # Line 2081
    lwc1	$f8,156($s0)
.L0db050e0:
    # Line 2132
    beq	$s3,$a3,.L0db05538
.L0db050e4:
    # Line 2144
    move	$v0,$zero
    beq	$s3,$s6,.L0db05404
    ld	$at,184($sp)
    beq	$s3,$a4,.L0db05404
    nop
.L0db050f8:
    or	$at,$v0,$at
    beqzl	$at,.L0db05560
    # Line 2157
    lwc1	$f2,3284($s1)
    # Line 2147
    lwc1	$f1,30756($s1)
    mul.s	$f1,$f1,$f8
    swc1	$f1,0($s2)
    # Line 2148
    lwc1	$f4,30760($s1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s2)
    # Line 2149
    lwc1	$f3,30764($s1)
    mul.s	$f3,$f3,$f7
    swc1	$f3,8($s2)
.L0db05128:
    # Line 1905
    addiu	$s4,$s4,-1
    # Line 2167
    lwc1	$f1,30400($s1)
    # Line 2166
    lwc1	$f4,30396($s1)
    # Line 2167
    add.s	$f26,$f1,$f26
    # Line 2165
    lwc1	$f3,30388($s1)
    # Line 2166
    add.s	$f20,$f4,$f20
    # Line 2164
    lwc1	$f2,30384($s1)
    # Line 2165
    add.s	$f24,$f3,$f24
    # Line 2168
    addiu	$s2,$s2,16
    # Line 1905
    beq	$s4,$a0,.L0db0594c
    # Line 2164
    add.s	$f22,$f2,$f22
.L0db05154:
    # Line 1906
    lwc1	$f7,3284($s1)
    div.s	$f12,$f7,$f20
    mul.s	$f0,$f26,$f12
    lw	$a5,4($s0)
    lwc1	$f2,240($s0)
    mul.s	$f1,$f24,$f12
    lw	$a6,228($s0)
    # Line 2050
    mov.s	$f8,$f5
    # Line 1906
    c.le.s	$f0,$f2
    # Line 1916
    move	$s7,$a6
    # Line 1906
    mul.s	$f12,$f22,$f12
    bc1f	.L0db05374
    sdc1	$f1,8($sp)
    # Line 1918
    lw	$at,0($a6)
    sd	$zero,192($sp)
    # Line 1917
    lw	$a2,44($a6)
    sd	$at,80($sp)
    # Line 1922
    lwc1	$f28,32($a6)
    # Line 1920
    lw	$a1,24($a6)
    # Line 1919
    lw	$v1,20($a6)
    # Line 1923
    mul.s	$f0,$f12,$f28
    sd	$a2,88($sp)
    # Line 1919
    addiu	$v1,$v1,-1
    # Line 1920
    addiu	$a1,$a1,-1
    sd	$a1,64($sp)
    sd	$v1,72($sp)
    # Line 1923
    beq	$s5,$a5,.L0db057dc
    mov.s	$f30,$f0
    # Line 1928
    c.lt.s	$f0,$f5
    nop
    bc1fl	.L0db0540c
    # Line 1930
    c.lt.s	$f28,$f0
    mov.s	$f30,$f5
.L0db051d8:
    # Line 1932
    ldc1	$f3,0($sp)
.L0db051dc:
    # Line 1933
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1932
    sub.s	$f30,$f30,$f3
    # Line 1933
    jal	__glFloor
    mov.s	$f12,$f30
    mtc1	$zero,$f5
    sd	$v0,208($sp)
    # Line 1934
    addiu	$s8,$v0,1
.L0db051f8:
    # Line 1937
    lwc1	$f0,36($s7)
    # Line 1938
    ldc1	$f6,8($sp)
    mul.s	$f6,$f6,$f0
    lw	$v1,8($s0)
    beq	$v1,$s5,.L0db05814
    mov.s	$f28,$f6
    # Line 1943
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db05420
    # Line 1945
    c.lt.s	$f0,$f6
    mov.s	$f28,$f5
.L0db05224:
    # Line 1947
    ldc1	$f7,0($sp)
.L0db05228:
    # Line 1948
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1947
    sub.s	$f28,$f28,$f7
    # Line 1948
    jal	__glFloor
    mov.s	$f12,$f28
    sd	$v0,200($sp)
    # Line 1949
    addiu	$s7,$v0,1
.L0db05240:
    # Line 1952
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f30
    # Line 1953
    # lw $t9, -23712($gp) # &__glFrac
    # Line 1952
    mov.s	$f30,$f0
    # Line 1953
    jal	__glFrac
    mov.s	$f12,$f28
    li	$a0,-1
    # Line 1954
    lwc1	$f1,3284($s1)
    # Line 1955
    mul.s	$f10,$f0,$f30
    li	$a3,8448
    # Line 1954
    sub.s	$f6,$f1,$f30
    li	$a4,7681
    mtc1	$zero,$f5
    # Line 1955
    sub.s	$f1,$f1,$f0
    ld	$a5,208($sp)
    # Line 1986
    ld	$a6,64($sp)
    ld	$a7,200($sp)
    # Line 1955
    mul.s	$f11,$f30,$f1
    ld	$a1,192($sp)
    mul.s	$f9,$f0,$f6
    li	$a2,2
    beq	$a1,$a2,.L0db05434
    mul.s	$f6,$f6,$f1
    # Line 1999
    ld	$a1,200($sp)
    # Line 1986
    nor	$a6,$a6,$zero
    ld	$t0,72($sp)
    # Line 2012
    and	$v0,$a6,$s7
    # Line 1986
    and	$a7,$a6,$a7
    nor	$t0,$t0,$zero
    and	$t1,$t0,$a5
    or	$at,$t1,$a7
    beqz	$at,.L0db05680
    # Line 2001
    and	$t2,$t0,$s8
    # Line 1995
    lwc1	$f7,164($s0)
    # Line 1994
    lwc1	$f0,160($s0)
    # Line 1995
    mul.s	$f7,$f7,$f6
    # Line 1993
    lwc1	$f8,156($s0)
    # Line 1994
    mul.s	$f0,$f0,$f6
    # Line 1993
    mul.s	$f8,$f8,$f6
.L0db052e0:
    # Line 2001
    or	$at,$t2,$a7
    beqz	$at,.L0db056c0
    # Line 2010
    ld	$v1,200($sp)
    # Line 2006
    lwc1	$f3,164($s0)
    # Line 2005
    lwc1	$f2,160($s0)
    # Line 2006
    mul.s	$f3,$f3,$f11
    # Line 2004
    lwc1	$f1,156($s0)
    # Line 2005
    mul.s	$f2,$f2,$f11
    # Line 2004
    mul.s	$f1,$f1,$f11
    # Line 2006
    add.s	$f7,$f3,$f7
    # Line 2005
    add.s	$f0,$f2,$f0
    # Line 2004
    add.s	$f8,$f1,$f8
.L0db05310:
    # Line 2012
    or	$v1,$t1,$v0
    beqz	$v1,.L0db0570c
    ld	$at,88($sp)
    # Line 2017
    lwc1	$f2,164($s0)
    # Line 2016
    lwc1	$f1,160($s0)
    # Line 2017
    mul.s	$f2,$f2,$f9
    # Line 2015
    lwc1	$f4,156($s0)
    # Line 2016
    mul.s	$f1,$f1,$f9
    # Line 2015
    mul.s	$f4,$f4,$f9
    # Line 2017
    add.s	$f7,$f2,$f7
    # Line 2016
    add.s	$f0,$f1,$f0
    # Line 2015
    add.s	$f8,$f4,$f8
.L0db05340:
    # Line 2023
    or	$a1,$t2,$v0
    beqz	$a1,.L0db05754
    # Line 2032
    ld	$a2,80($sp)
    # Line 2028
    lwc1	$f1,164($s0)
    # Line 2027
    lwc1	$f4,160($s0)
    # Line 2028
    mul.s	$f1,$f1,$f10
    # Line 2026
    lwc1	$f3,156($s0)
    # Line 2027
    mul.s	$f4,$f4,$f10
    # Line 2026
    mul.s	$f3,$f3,$f10
    # Line 2028
    add.s	$f7,$f1,$f7
    # Line 2027
    add.s	$f0,$f4,$f0
    # Line 2028
    b	.L0db050e0
    # Line 2026
    add.s	$f8,$f3,$f8
.L0db05374:
    # Line 2034
    c.eq.s	$f0,$f5
    nop
    bc1t	.L0db04ffc
    # Line 2045
    move	$v0,$zero
    # Line 2046
    trunc.w.s	$f2,$f0
    mfc1	$a7,$f2
    nop
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db053d0
    li	$at,1
    addiu	$v0,$v0,1
.L0db053a0:
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db053cc
    nop
    addiu	$v0,$v0,1
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db053cc
    nop
    addiu	$v0,$v0,1
    sra	$a7,$a7,0x1
    bnezl	$a7,.L0db053a0
    addiu	$v0,$v0,1
.L0db053cc:
    li	$at,1
.L0db053d0:
    # Line 2048
    sllv	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f0,$f2
    div.s	$f1,$f1,$f2
    mtc1	$v0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f1
    ldc1	$f1,0($sp)
    b	.L0db04ffc
    mul.s	$f8,$f8,$f1
.L0db05404:
    # Line 2144
    b	.L0db050f8
    li	$v0,1
.L0db0540c:
    nop
    # Line 1930
    bc1f	.L0db051dc
    # Line 1932
    ldc1	$f3,0($sp)
    b	.L0db051d8
    # Line 1931
    mov.s	$f30,$f28
.L0db05420:
    nop
    # Line 1945
    bc1f	.L0db05228
    # Line 1947
    ldc1	$f7,0($sp)
    b	.L0db05224
    # Line 1946
    mov.s	$f28,$f0
.L0db05434:
    ld	$v1,88($sp)
    # Line 1984
    ld	$a2,80($sp)
    sllv	$at,$s7,$v1
    addu	$a3,$at,$s8
    sll	$a6,$a3,0x1
    sll	$a3,$a3,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a2
    addu	$a3,$a3,$a6
    # Line 1985
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f10
    # Line 1984
    addu	$at,$at,$a5
    sll	$a6,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a2
    addu	$a6,$a6,$at
    # Line 1985
    lwc1	$f2,4($a6)
    mul.s	$f2,$f2,$f9
    # Line 1986
    lwc1	$f13,8($a3)
    # Line 1984
    ld	$at,200($sp)
    # Line 1986
    mul.s	$f13,$f13,$f10
    # Line 1984
    sllv	$at,$at,$v1
    addu	$a1,$at,$s8
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 1985
    lwc1	$f3,4($v1)
    mul.s	$f3,$f3,$f11
    # Line 1986
    lwc1	$f12,8($v1)
    # Line 1984
    addu	$at,$at,$a5
    # Line 1986
    mul.s	$f12,$f12,$f11
    # Line 1984
    sll	$a1,$at,0x1
    sll	$at,$at,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$at,$at,$a1
    # Line 1986
    lwc1	$f7,8($at)
    lwc1	$f8,8($a6)
    mul.s	$f7,$f7,$f6
    mul.s	$f8,$f8,$f9
    # Line 1985
    lwc1	$f0,4($at)
    mul.s	$f0,$f0,$f6
    # Line 1986
    add.s	$f7,$f7,$f12
    # Line 1984
    lwc1	$f12,0($v1)
    mul.s	$f12,$f12,$f11
    # Line 1986
    add.s	$f7,$f7,$f8
    # Line 1984
    lwc1	$f8,0($at)
    mul.s	$f8,$f8,$f6
    # Line 1986
    add.s	$f7,$f7,$f13
    # Line 1984
    lwc1	$f13,0($a6)
    # Line 1985
    add.s	$f0,$f0,$f3
    # Line 1984
    mul.s	$f13,$f13,$f9
    add.s	$f8,$f8,$f12
    lwc1	$f12,0($a3)
    # Line 1985
    add.s	$f0,$f0,$f2
    # Line 1984
    mul.s	$f12,$f12,$f10
    add.s	$f8,$f8,$f13
    # Line 2132
    li	$a2,8448
    # Line 1985
    add.s	$f0,$f0,$f1
    li	$a3,8448
    # Line 2132
    bne	$s3,$a2,.L0db050e4
    # Line 1984
    add.s	$f8,$f8,$f12
.L0db05538:
    # Line 2141
    lwc1	$f3,4($s2)
    # Line 2142
    lwc1	$f4,8($s2)
    # Line 2141
    mul.s	$f3,$f3,$f0
    # Line 2140
    lwc1	$f2,0($s2)
    # Line 2142
    mul.s	$f4,$f4,$f7
    # Line 2140
    mul.s	$f2,$f2,$f8
    # Line 2142
    swc1	$f4,8($s2)
    # Line 2141
    swc1	$f3,4($s2)
    # Line 2142
    b	.L0db05128
    # Line 2140
    swc1	$f2,0($s2)
.L0db05560:
    # Line 2157
    sub.s	$f2,$f2,$f8
    lwc1	$f1,0($s2)
    # Line 2155
    lw	$at,2376($s1)
    # Line 2157
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($at)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s2)
    # Line 2158
    lwc1	$f4,3284($s1)
    sub.s	$f4,$f4,$f0
    lwc1	$f3,4($s2)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($at)
    mul.s	$f4,$f4,$f0
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s2)
    # Line 2159
    lwc1	$f2,3284($s1)
    sub.s	$f2,$f2,$f7
    lwc1	$f1,8($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($at)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f2
    b	.L0db05128
    swc1	$f1,8($s2)
.L0db055c4:
    # Line 2093
    sll	$v0,$a7,0x2
    subu	$v0,$v0,$a7
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a7
    sll	$v0,$v0,0x2
    addu	$s7,$a6,$v0
    # Line 2094
    beq	$s5,$a5,.L0db0599c
    lwc1	$f28,32($s7)
    # Line 2099
    mul.s	$f3,$f12,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    # Line 2098
    lw	$a6,20($s7)
    # Line 2099
    bltz	$a5,.L0db0593c
    move	$s8,$a5
    # Line 2100
    slt	$v1,$a5,$a6
    bnezl	$v1,.L0db05610
    # Line 2103
    lw	$a1,8($s0)
    # Line 2101
    addiu	$s8,$a6,-1
.L0db0560c:
    # Line 2103
    lw	$a1,8($s0)
.L0db05610:
    ldc1	$f4,8($sp)
    beq	$a1,$s5,.L0db059d4
    lwc1	$f28,36($s7)
    # Line 2108
    mul.s	$f4,$f4,$f28
    trunc.w.s	$f4,$f4
    # Line 2107
    lw	$a6,24($s7)
    # Line 2108
    mfc1	$a7,$f4
    # Line 2107
    move	$t0,$a6
    # Line 2108
    bltz	$a7,.L0db05944
    move	$a5,$a7
    # Line 2109
    slt	$a2,$a7,$t0
    bnez	$a2,.L0db0564c
    # Line 2110
    addiu	$v1,$a6,-1
    addiu	$a5,$t0,-1
.L0db05648:
    addiu	$v1,$a6,-1
.L0db0564c:
    lw	$at,20($s7)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a5
    addiu	$at,$at,-1
    nor	$at,$at,$zero
    and	$at,$at,$s8
    or	$at,$at,$v1
    beqz	$at,.L0db058a8
    # Line 2128
    sra	$a2,$a5,0x1
    # Line 2116
    lwc1	$f7,164($s0)
    # Line 2115
    lwc1	$f0,160($s0)
    # Line 2116
    b	.L0db050e0
    # Line 2114
    lwc1	$f8,156($s0)
.L0db05680:
    ld	$a2,88($sp)
    # Line 1999
    sllv	$a1,$a1,$a2
    ld	$a2,80($sp)
    addu	$a1,$a1,$a5
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2001
    lwc1	$f7,8($v1)
    # Line 2000
    lwc1	$f0,4($v1)
    # Line 2001
    mul.s	$f7,$f7,$f6
    # Line 1999
    lwc1	$f8,0($v1)
    # Line 2000
    mul.s	$f0,$f0,$f6
    b	.L0db052e0
    # Line 1999
    mul.s	$f8,$f8,$f6
.L0db056c0:
    ld	$a1,88($sp)
    # Line 2010
    sllv	$v1,$v1,$a1
    ld	$a1,80($sp)
    addu	$v1,$v1,$s8
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 2012
    lwc1	$f3,8($at)
    # Line 2011
    lwc1	$f2,4($at)
    # Line 2012
    mul.s	$f3,$f3,$f11
    # Line 2010
    lwc1	$f1,0($at)
    # Line 2011
    mul.s	$f2,$f2,$f11
    # Line 2010
    mul.s	$f1,$f1,$f11
    # Line 2012
    add.s	$f7,$f3,$f7
    # Line 2011
    add.s	$f0,$f2,$f0
    b	.L0db05310
    # Line 2010
    add.s	$f8,$f1,$f8
.L0db0570c:
    # Line 2021
    ld	$v1,80($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$a5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2023
    lwc1	$f2,8($a2)
    # Line 2022
    lwc1	$f1,4($a2)
    # Line 2023
    mul.s	$f2,$f2,$f9
    # Line 2021
    lwc1	$f4,0($a2)
    # Line 2022
    mul.s	$f1,$f1,$f9
    # Line 2021
    mul.s	$f4,$f4,$f9
    # Line 2023
    add.s	$f7,$f2,$f7
    # Line 2022
    add.s	$f0,$f1,$f0
    b	.L0db05340
    # Line 2021
    add.s	$f8,$f4,$f8
.L0db05754:
    ld	$a1,88($sp)
    # Line 2032
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$s8
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2034
    lwc1	$f1,8($v1)
    # Line 2033
    lwc1	$f4,4($v1)
    # Line 2034
    mul.s	$f1,$f1,$f10
    # Line 2032
    lwc1	$f3,0($v1)
    # Line 2033
    mul.s	$f4,$f4,$f10
    # Line 2032
    mul.s	$f3,$f3,$f10
    # Line 2034
    add.s	$f7,$f1,$f7
    # Line 2033
    add.s	$f0,$f4,$f0
    b	.L0db050e0
    # Line 2032
    add.s	$f8,$f3,$f8
.L0db0579c:
    # Line 2086
    lw	$a2,0($s7)
    # Line 2085
    sllv	$at,$a5,$at
    addu	$at,$at,$s8
    # Line 2086
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$a2,$a2,$v1
    addu	$a2,$a2,$at
    # Line 2090
    lwc1	$f7,8($a2)
    # Line 2089
    lwc1	$f0,4($a2)
    b	.L0db050e0
    # Line 2088
    lwc1	$f8,0($a2)
.L0db057cc:
    # Line 2067
    b	.L0db05070
    move	$s8,$zero
.L0db057d4:
    # Line 2076
    b	.L0db050ac
    move	$a5,$zero
.L0db057dc:
    ldc1	$f30,0($sp)
    # Line 1926
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1925
    sub.s	$f30,$f0,$f30
    # Line 1926
    jal	__glFloor
    mov.s	$f12,$f30
    # Line 1928
    li	$at,1
    sd	$at,192($sp)
    # Line 1926
    ld	$at,72($sp)
    mtc1	$zero,$f5
    and	$s8,$v0,$at
    sd	$s8,208($sp)
    # Line 1927
    addiu	$s8,$s8,1
    # Line 1928
    b	.L0db051f8
    # Line 1927
    and	$s8,$s8,$at
.L0db05814:
    ldc1	$f28,0($sp)
    # Line 1941
    # lw $t9, -23708($gp) # &__glFloor
    # Line 1940
    sub.s	$f28,$f6,$f28
    # Line 1941
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$at,192($sp)
    # Line 1943
    addiu	$at,$at,1
    sd	$at,192($sp)
    # Line 1941
    ld	$at,64($sp)
    and	$s7,$v0,$at
    sd	$s7,200($sp)
    # Line 1942
    addiu	$s7,$s7,1
    # Line 1943
    b	.L0db05240
    # Line 1942
    and	$s7,$s7,$at
.L0db0584c:
    # Line 2063
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    nop
    mul.s	$f0,$f0,$f28
    trunc.w.s	$f0,$f0
    li	$a0,-1
    li	$a3,8448
    li	$a4,7681
    mfc1	$s8,$f0
    b	.L0db05070
    mtc1	$zero,$f5
.L0db05878:
    # Line 2072
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    ldc1	$f12,8($sp)
    mul.s	$f1,$f0,$f28
    li	$a0,-1
    trunc.w.s	$f1,$f1
    li	$a3,8448
    li	$a4,7681
    mtc1	$zero,$f5
    mfc1	$a5,$f1
    b	.L0db050ac
    lw	$a6,24($s7)
.L0db058a8:
    # Line 2125
    lw	$a1,228($s0)
    addu	$a1,$a1,$v0
    # Line 2128
    lw	$at,144($a1)
    # Line 2129
    lw	$a1,100($a1)
    # Line 2128
    sllv	$a2,$a2,$at
    sra	$at,$s8,0x1
    addu	$a2,$a2,$at
    # Line 2129
    sll	$at,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    addu	$a1,$a1,$a2
    # Line 2130
    lwc1	$f8,0($a1)
    # Line 2131
    lwc1	$f0,4($a1)
    # Line 2130
    mul.s	$f8,$f8,$f6
    # Line 2132
    lwc1	$f7,8($a1)
    # Line 2131
    mul.s	$f0,$f0,$f6
    # Line 2118
    lw	$a2,44($s7)
    # Line 2119
    lw	$v1,0($s7)
    # Line 2132
    mul.s	$f7,$f7,$f6
    # Line 2118
    sllv	$a2,$a5,$a2
    addu	$a2,$a2,$s8
    # Line 2119
    sll	$at,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$at,$at,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a2
    # Line 2122
    lwc1	$f3,8($v1)
    # Line 2121
    lwc1	$f2,4($v1)
    # Line 2122
    mul.s	$f3,$f3,$f30
    # Line 2120
    lwc1	$f1,0($v1)
    # Line 2121
    mul.s	$f2,$f2,$f30
    # Line 2120
    mul.s	$f1,$f1,$f30
    # Line 2132
    add.s	$f7,$f7,$f3
    # Line 2131
    add.s	$f0,$f0,$f2
    b	.L0db050e0
    # Line 2130
    add.s	$f8,$f8,$f1
.L0db0593c:
    # Line 2100
    b	.L0db0560c
    move	$s8,$zero
.L0db05944:
    # Line 2109
    b	.L0db05648
    move	$a5,$zero
.L0db0594c:
    # Line 2171
    move	$v0,$zero
    # ld	gp,176(sp)
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    ld	$s4,136($sp)
    ld	$s5,112($sp)
    ld	$s6,152($sp)
    ld	$s7,104($sp)
    ld	$s8,96($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ldc1	$f26,48($sp)
    ld	$ra,144($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db0599c:
    # Line 2096
    # lw $t9, -23712($gp) # &__glFrac
    sd	$v0,224($sp)
    jal	__glFrac
    sdc1	$f6,216($sp)
    mul.s	$f0,$f0,$f28
    li	$a0,-1
    li	$a3,8448
    trunc.w.s	$f0,$f0
    li	$a4,7681
    mtc1	$zero,$f5
    ldc1	$f6,216($sp)
    mfc1	$s8,$f0
    b	.L0db0560c
    ld	$v0,224($sp)
.L0db059d4:
    # Line 2105
    # lw $t9, -23712($gp) # &__glFrac
    sd	$v0,224($sp)
    sdc1	$f6,216($sp)
    jal	__glFrac
    ldc1	$f12,8($sp)
    mul.s	$f1,$f0,$f28
    li	$a0,-1
    li	$a3,8448
    li	$a4,7681
    trunc.w.s	$f1,$f1
    mtc1	$zero,$f5
    lw	$a6,24($s7)
    ldc1	$f6,216($sp)
    mfc1	$a5,$f1
    b	.L0db05648
    ld	$v0,224($sp)
.end __glTextureRGB_L_NML_Span

# Function: __glTextureRGB_L_NML_StippledSpan
# Declared: Line 2181 (Source lines: 2182-2500)
# Address: 0x0db05a14 - 0x0db06580 (Size: 2924 bytes, Frame: 160)
.globl __glTextureRGB_L_NML_StippledSpan
.ent __glTextureRGB_L_NML_StippledSpan
__glTextureRGB_L_NML_StippledSpan:
    # Line 2182
    addiu	$sp,$sp,-288
    sd	$s1,104($sp)
    sd	$s5,112($sp)
    sd	$s6,128($sp)
    sd	$s7,120($sp)
    sd	$s8,136($sp)
    sdc1	$f28,16($sp)
    sdc1	$f30,24($sp)
    sd	$ra,96($sp)
    sd	$s2,168($sp)
    move	$s2,$a0
    sdc1	$f26,48($sp)
    # Line 2214
    lwc1	$f26,30244($a0)
    sdc1	$f20,56($sp)
    # Line 2213
    lwc1	$f20,30240($a0)
    sdc1	$f24,32($sp)
    # Line 2212
    lwc1	$f24,30232($a0)
    sdc1	$f22,40($sp)
    # Line 2211
    lwc1	$f22,30228($a0)
    sd	$s3,160($sp)
    # Line 2208
    lw	$s3,30468($a0)
    sd	$s0,144($sp)
    # Line 2206
    lw	$s0,28216($a0)
    # sd	gp,176(sp)
    # Line 2182
    lui	$v0,0xf
    addiu	$v0,$v0,7764
    # addu	gp,t9,v0
    # Line 2209
    lw	$v1,30476($a0)
    # Line 2191
    lwc1	$f0,3280($a0)
    # Line 2207
    lw	$at,30252($a0)
    sd	$v1,184($sp)
    sdc1	$f0,0($sp)
    sd	$s4,152($sp)
    # Line 2204
    lw	$s4,2376($a0)
    sd	$at,192($sp)
    # Line 2214
    beqz	$at,.L0db06530
    # Line 2204
    lw	$s4,0($s4)
    sd	$ra,96($sp)
    sd	$s1,104($sp)
    sd	$s5,112($sp)
    sd	$s7,120($sp)
    sdc1	$f28,16($sp)
    sdc1	$f30,24($sp)
    # Line 2214
    li	$a0,-1
    li	$a4,7681
    li	$s8,0x8062
    li	$a3,8448
    mtc1	$zero,$f5
    li	$s6,10497
    xori	$a1,$s4,0x2101
    sltiu	$a1,$a1,1
    b	.L0db05af0
    sd	$a1,200($sp)
.L0db05ae8:
    ld	$a2,192($sp)
    # Line 2225
    beqz	$a2,.L0db06530
.L0db05af0:
    ld	$at,192($sp)
    # Line 2217
    move	$s5,$at
    slti	$at,$at,33
    bnez	$at,.L0db05b0c
    # Line 2221
    ld	$a1,192($sp)
    # Line 2219
    li	$s5,32
    # Line 2221
    ld	$a1,192($sp)
.L0db05b0c:
    lui	$s1,0x8000
    # Line 2223
    ld	$v1,184($sp)
    # Line 2221
    subu	$a1,$a1,$s5
    # Line 2225
    addiu	$s5,$s5,-1
    # Line 2223
    lw	$a2,0($v1)
    addiu	$v1,$v1,4
    sd	$a1,192($sp)
    sd	$v1,184($sp)
    # Line 2225
    bltz	$s5,.L0db05ae8
    sd	$a2,240($sp)
    b	.L0db05c98
    ld	$v1,240($sp)
.L0db05b3c:
    # Line 2380
    trunc.w.s	$f30,$f8
    # Line 2376
    lw	$v0,236($s0)
    # Line 2380
    cvt.s.w	$f6,$f30
    mfc1	$a7,$f30
    # Line 2382
    sll	$s7,$v0,0x2
    subu	$s7,$s7,$v0
    # Line 2380
    addiu	$v1,$a7,1
    slt	$at,$v0,$v1
    sub.s	$f6,$f8,$f6
    slti	$v1,$v1,0
    or	$at,$at,$v1
    beqz	$at,.L0db06118
    sub.s	$f30,$f7,$f6
    # Line 2382
    sll	$s7,$s7,0x3
    addu	$s7,$s7,$v0
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$a6
    # Line 2383
    beq	$s6,$a5,.L0db063a8
    lwc1	$f28,32($s7)
    # Line 2388
    mul.s	$f1,$f12,$f28
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f1
    # Line 2387
    lw	$a5,20($s7)
    # Line 2388
    bltz	$a6,.L0db06324
    move	$v0,$a6
    # Line 2389
    slt	$at,$a6,$a5
    bnezl	$at,.L0db05bb4
    # Line 2392
    lw	$v1,8($s0)
    # Line 2390
    addiu	$v0,$a5,-1
.L0db05bb0:
    # Line 2392
    lw	$v1,8($s0)
.L0db05bb4:
    ldc1	$f2,8($sp)
    beq	$v1,$s6,.L0db063d4
    lwc1	$f28,36($s7)
    # Line 2397
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    # Line 2396
    lw	$a7,24($s7)
    # Line 2397
    mfc1	$t0,$f2
    # Line 2396
    move	$a5,$a7
    # Line 2397
    bltz	$t0,.L0db0632c
    move	$a6,$t0
    # Line 2398
    slt	$a1,$t0,$a5
    bnez	$a1,.L0db05bf0
    # Line 2399
    addiu	$at,$a7,-1
    addiu	$a6,$a5,-1
.L0db05bec:
    addiu	$at,$a7,-1
.L0db05bf0:
    lw	$a2,20($s7)
    nor	$at,$at,$zero
    and	$at,$at,$a6
    addiu	$a2,$a2,-1
    nor	$a2,$a2,$zero
    and	$a2,$a2,$v0
    or	$a2,$a2,$at
    beqzl	$a2,.L0db062f4
    # Line 2407
    lw	$at,44($s7)
    # Line 2405
    lwc1	$f0,164($s0)
    # Line 2404
    lwc1	$f7,160($s0)
    # Line 2403
    lwc1	$f8,156($s0)
.L0db05c20:
    # Line 2454
    beq	$s4,$a3,.L0db0608c
.L0db05c24:
    # Line 2466
    move	$v0,$zero
    beq	$s4,$s8,.L0db05f58
    ld	$at,200($sp)
    beq	$s4,$a4,.L0db05f58
    nop
.L0db05c38:
    or	$at,$v0,$at
    beqzl	$at,.L0db060b4
    # Line 2479
    lwc1	$f1,3284($s2)
    # Line 2469
    lwc1	$f1,30756($s2)
    mul.s	$f1,$f1,$f8
    swc1	$f1,0($s3)
    # Line 2470
    lwc1	$f4,30760($s2)
    mul.s	$f4,$f4,$f7
    swc1	$f4,4($s3)
    # Line 2471
    lwc1	$f3,30764($s2)
    mul.s	$f3,$f3,$f0
    swc1	$f3,8($s3)
.L0db05c68:
    # Line 2490
    lwc1	$f1,30400($s2)
    # Line 2489
    lwc1	$f4,30396($s2)
    # Line 2490
    add.s	$f26,$f1,$f26
    # Line 2488
    lwc1	$f3,30388($s2)
    # Line 2489
    add.s	$f20,$f4,$f20
    # Line 2493
    srl	$s1,$s1,0x1
    # Line 2487
    lwc1	$f2,30384($s2)
    # Line 2488
    add.s	$f24,$f3,$f24
    # Line 2491
    addiu	$s3,$s3,16
    # Line 2225
    beq	$s5,$a0,.L0db05ae8
    # Line 2487
    add.s	$f22,$f2,$f22
    ld	$v1,240($sp)
.L0db05c98:
    # Line 2372
    mov.s	$f8,$f5
    # Line 2225
    and	$v1,$v1,$s1
    beqz	$v1,.L0db05c68
    addiu	$s5,$s5,-1
    # Line 2228
    lwc1	$f7,3284($s2)
    div.s	$f12,$f7,$f20
    mul.s	$f0,$f26,$f12
    lwc1	$f2,240($s0)
    mul.s	$f1,$f24,$f12
    lw	$a6,228($s0)
    c.le.s	$f0,$f2
    lw	$a5,4($s0)
    mul.s	$f12,$f22,$f12
    bc1f	.L0db05ec8
    sdc1	$f1,8($sp)
    # Line 2238
    move	$s7,$a6
    # Line 2240
    lw	$v1,0($a6)
    sd	$zero,208($sp)
    # Line 2239
    lw	$at,44($a6)
    sd	$v1,88($sp)
    # Line 2244
    lwc1	$f28,32($a6)
    # Line 2242
    lw	$a2,24($a6)
    # Line 2241
    lw	$a1,20($a6)
    # Line 2245
    mul.s	$f0,$f12,$f28
    sd	$at,80($sp)
    # Line 2241
    addiu	$a1,$a1,-1
    # Line 2242
    addiu	$a2,$a2,-1
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 2245
    beq	$s6,$a5,.L0db06334
    mov.s	$f30,$f0
    # Line 2250
    c.lt.s	$f0,$f5
    nop
    bc1fl	.L0db05f60
    # Line 2252
    c.lt.s	$f28,$f0
    mov.s	$f30,$f5
.L0db05d28:
    # Line 2254
    ldc1	$f3,0($sp)
.L0db05d2c:
    # Line 2255
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2254
    sub.s	$f30,$f30,$f3
    # Line 2255
    jal	__glFloor
    mov.s	$f12,$f30
    mtc1	$zero,$f5
    sd	$v0,232($sp)
    # Line 2256
    addiu	$a1,$v0,1
    sd	$a1,224($sp)
.L0db05d4c:
    # Line 2259
    lwc1	$f0,36($s7)
    # Line 2260
    ldc1	$f6,8($sp)
    mul.s	$f6,$f6,$f0
    lw	$a2,8($s0)
    beq	$a2,$s6,.L0db06370
    mov.s	$f28,$f6
    # Line 2265
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db05f74
    # Line 2267
    c.lt.s	$f0,$f6
    mov.s	$f28,$f5
.L0db05d78:
    # Line 2269
    ldc1	$f7,0($sp)
.L0db05d7c:
    # Line 2270
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2269
    sub.s	$f28,$f28,$f7
    # Line 2270
    jal	__glFloor
    mov.s	$f12,$f28
    sd	$v0,216($sp)
    # Line 2271
    addiu	$s7,$v0,1
.L0db05d94:
    # Line 2274
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f30
    # Line 2275
    # lw $t9, -23712($gp) # &__glFrac
    # Line 2274
    mov.s	$f30,$f0
    # Line 2275
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2276
    lwc1	$f1,3284($s2)
    li	$a0,-1
    li	$a3,8448
    sub.s	$f6,$f1,$f30
    li	$a4,7681
    # Line 2277
    mul.s	$f11,$f0,$f30
    sub.s	$f1,$f1,$f0
    mtc1	$zero,$f5
    ld	$a6,232($sp)
    ld	$a5,224($sp)
    mul.s	$f10,$f30,$f1
    ld	$at,208($sp)
    mul.s	$f9,$f0,$f6
    li	$v1,2
    beq	$at,$v1,.L0db05f88
    mul.s	$f6,$f6,$f1
    ld	$t1,72($sp)
    # Line 2308
    ld	$t0,216($sp)
    ld	$a7,64($sp)
    nor	$t1,$t1,$zero
    # Line 2323
    and	$t3,$t1,$a5
    # Line 2308
    nor	$a7,$a7,$zero
    and	$t0,$a7,$t0
    and	$t2,$t1,$a6
    or	$a1,$t2,$t0
    beqz	$a1,.L0db061d4
    # Line 2323
    or	$at,$t3,$t0
    # Line 2317
    lwc1	$f0,164($s0)
    # Line 2316
    lwc1	$f7,160($s0)
    # Line 2317
    mul.s	$f0,$f0,$f6
    # Line 2315
    lwc1	$f8,156($s0)
    # Line 2316
    mul.s	$f7,$f7,$f6
    # Line 2315
    mul.s	$f8,$f8,$f6
.L0db05e34:
    # Line 2334
    and	$v0,$a7,$s7
    # Line 2323
    beqz	$at,.L0db06218
    # Line 2332
    ld	$v1,216($sp)
    # Line 2328
    lwc1	$f3,164($s0)
    # Line 2327
    lwc1	$f2,160($s0)
    # Line 2328
    mul.s	$f3,$f3,$f10
    # Line 2326
    lwc1	$f1,156($s0)
    # Line 2327
    mul.s	$f2,$f2,$f10
    # Line 2326
    mul.s	$f1,$f1,$f10
    # Line 2328
    add.s	$f0,$f3,$f0
    # Line 2327
    add.s	$f7,$f2,$f7
    # Line 2326
    add.s	$f8,$f1,$f8
.L0db05e64:
    # Line 2334
    or	$v1,$t2,$v0
    beqz	$v1,.L0db06264
    ld	$at,80($sp)
    # Line 2339
    lwc1	$f2,164($s0)
    # Line 2338
    lwc1	$f1,160($s0)
    # Line 2339
    mul.s	$f2,$f2,$f9
    # Line 2337
    lwc1	$f4,156($s0)
    # Line 2338
    mul.s	$f1,$f1,$f9
    # Line 2337
    mul.s	$f4,$f4,$f9
    # Line 2339
    add.s	$f0,$f2,$f0
    # Line 2338
    add.s	$f7,$f1,$f7
    # Line 2337
    add.s	$f8,$f4,$f8
.L0db05e94:
    # Line 2345
    or	$a1,$t3,$v0
    beqz	$a1,.L0db062ac
    # Line 2354
    ld	$a2,88($sp)
    # Line 2350
    lwc1	$f1,164($s0)
    # Line 2349
    lwc1	$f4,160($s0)
    # Line 2350
    mul.s	$f1,$f1,$f11
    # Line 2348
    lwc1	$f3,156($s0)
    # Line 2349
    mul.s	$f4,$f4,$f11
    # Line 2348
    mul.s	$f3,$f3,$f11
    # Line 2350
    add.s	$f0,$f1,$f0
    # Line 2349
    add.s	$f7,$f4,$f7
    # Line 2350
    b	.L0db05c20
    # Line 2348
    add.s	$f8,$f3,$f8
.L0db05ec8:
    # Line 2356
    c.eq.s	$f0,$f5
    nop
    bc1t	.L0db05b3c
    # Line 2367
    move	$v0,$zero
    # Line 2368
    trunc.w.s	$f2,$f0
    mfc1	$a7,$f2
    nop
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db05f24
    li	$at,1
    addiu	$v0,$v0,1
.L0db05ef4:
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db05f20
    nop
    addiu	$v0,$v0,1
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db05f20
    nop
    addiu	$v0,$v0,1
    sra	$a7,$a7,0x1
    bnezl	$a7,.L0db05ef4
    addiu	$v0,$v0,1
.L0db05f20:
    li	$at,1
.L0db05f24:
    # Line 2370
    sllv	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f0,$f2
    div.s	$f1,$f1,$f2
    mtc1	$v0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f1
    ldc1	$f1,0($sp)
    b	.L0db05b3c
    mul.s	$f8,$f8,$f1
.L0db05f58:
    # Line 2466
    b	.L0db05c38
    li	$v0,1
.L0db05f60:
    nop
    # Line 2252
    bc1f	.L0db05d2c
    # Line 2254
    ldc1	$f3,0($sp)
    b	.L0db05d28
    # Line 2253
    mov.s	$f30,$f28
.L0db05f74:
    nop
    # Line 2267
    bc1f	.L0db05d7c
    # Line 2269
    ldc1	$f7,0($sp)
    b	.L0db05d78
    # Line 2268
    mov.s	$f28,$f0
.L0db05f88:
    # Line 2306
    ld	$a2,88($sp)
    ld	$v1,80($sp)
    sllv	$at,$s7,$v1
    addu	$a3,$at,$a5
    sll	$a7,$a3,0x1
    sll	$a3,$a3,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a2
    addu	$a3,$a3,$a7
    # Line 2307
    lwc1	$f13,4($a3)
    mul.s	$f13,$f13,$f11
    # Line 2306
    addu	$at,$at,$a6
    sll	$a7,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a2
    addu	$a7,$a7,$at
    # Line 2307
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f9
    # Line 2308
    lwc1	$f1,8($a3)
    # Line 2306
    ld	$at,216($sp)
    # Line 2308
    mul.s	$f1,$f1,$f11
    # Line 2306
    sllv	$at,$at,$v1
    addu	$a1,$at,$a5
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2307
    lwc1	$f3,4($v1)
    mul.s	$f3,$f3,$f10
    # Line 2308
    lwc1	$f8,8($v1)
    # Line 2306
    addu	$at,$at,$a6
    # Line 2308
    mul.s	$f8,$f8,$f10
    # Line 2306
    sll	$a1,$at,0x1
    sll	$at,$at,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$at,$at,$a1
    # Line 2308
    lwc1	$f0,8($at)
    lwc1	$f4,8($a7)
    mul.s	$f0,$f0,$f6
    mul.s	$f4,$f4,$f9
    # Line 2306
    lwc1	$f12,0($v1)
    mul.s	$f12,$f12,$f10
    # Line 2307
    lwc1	$f7,4($at)
    # Line 2308
    add.s	$f0,$f0,$f8
    # Line 2307
    mul.s	$f7,$f7,$f6
    # Line 2306
    lwc1	$f8,0($at)
    # Line 2308
    add.s	$f0,$f0,$f4
    # Line 2306
    mul.s	$f8,$f8,$f6
    # Line 2308
    add.s	$f0,$f0,$f1
    # Line 2306
    lwc1	$f1,0($a7)
    # Line 2307
    add.s	$f7,$f7,$f3
    # Line 2306
    mul.s	$f1,$f1,$f9
    add.s	$f8,$f8,$f12
    lwc1	$f12,0($a3)
    # Line 2307
    add.s	$f7,$f7,$f2
    # Line 2306
    mul.s	$f12,$f12,$f11
    add.s	$f8,$f8,$f1
    # Line 2454
    li	$a2,8448
    # Line 2307
    add.s	$f7,$f7,$f13
    li	$a3,8448
    # Line 2454
    bne	$s4,$a2,.L0db05c24
    # Line 2306
    add.s	$f8,$f8,$f12
.L0db0608c:
    # Line 2463
    lwc1	$f2,4($s3)
    # Line 2464
    lwc1	$f3,8($s3)
    # Line 2463
    mul.s	$f2,$f2,$f7
    # Line 2462
    lwc1	$f1,0($s3)
    # Line 2464
    mul.s	$f3,$f3,$f0
    # Line 2462
    mul.s	$f1,$f1,$f8
    # Line 2464
    swc1	$f3,8($s3)
    # Line 2463
    swc1	$f2,4($s3)
    # Line 2464
    b	.L0db05c68
    # Line 2462
    swc1	$f1,0($s3)
.L0db060b4:
    # Line 2479
    sub.s	$f1,$f1,$f8
    lwc1	$f4,0($s3)
    # Line 2477
    lw	$at,2376($s2)
    # Line 2479
    mul.s	$f4,$f4,$f1
    lwc1	$f1,4($at)
    mul.s	$f1,$f1,$f8
    add.s	$f4,$f4,$f1
    swc1	$f4,0($s3)
    # Line 2480
    lwc1	$f3,3284($s2)
    sub.s	$f3,$f3,$f7
    lwc1	$f2,4($s3)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($at)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,4($s3)
    # Line 2481
    lwc1	$f1,3284($s2)
    sub.s	$f1,$f1,$f0
    lwc1	$f4,8($s3)
    mul.s	$f4,$f4,$f1
    lwc1	$f1,12($at)
    mul.s	$f1,$f1,$f0
    add.s	$f4,$f4,$f1
    b	.L0db05c68
    swc1	$f4,8($s3)
.L0db06118:
    # Line 2415
    sll	$v0,$a7,0x2
    subu	$v0,$v0,$a7
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a7
    sll	$v0,$v0,0x2
    addu	$s7,$a6,$v0
    # Line 2416
    beq	$s6,$a5,.L0db064b0
    lwc1	$f28,32($s7)
    # Line 2421
    mul.s	$f2,$f12,$f28
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    # Line 2420
    lw	$a7,20($s7)
    # Line 2421
    bltz	$a6,.L0db064a0
    move	$a5,$a6
    # Line 2422
    slt	$v1,$a6,$a7
    bnezl	$v1,.L0db06164
    # Line 2425
    lw	$a1,8($s0)
    # Line 2423
    addiu	$a5,$a7,-1
.L0db06160:
    # Line 2425
    lw	$a1,8($s0)
.L0db06164:
    ldc1	$f3,8($sp)
    beq	$a1,$s6,.L0db064e8
    lwc1	$f28,36($s7)
    # Line 2430
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    # Line 2429
    lw	$a7,24($s7)
    # Line 2430
    mfc1	$t0,$f3
    # Line 2429
    move	$t1,$a7
    # Line 2430
    bltz	$t0,.L0db064a8
    move	$a6,$t0
    # Line 2431
    slt	$a2,$t0,$t1
    bnez	$a2,.L0db061a0
    # Line 2432
    addiu	$v1,$a7,-1
    addiu	$a6,$t1,-1
.L0db0619c:
    addiu	$v1,$a7,-1
.L0db061a0:
    lw	$at,20($s7)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a6
    addiu	$at,$at,-1
    nor	$at,$at,$zero
    and	$at,$at,$a5
    or	$at,$at,$v1
    beqz	$at,.L0db0640c
    # Line 2450
    sra	$a2,$a6,0x1
    # Line 2438
    lwc1	$f0,164($s0)
    # Line 2437
    lwc1	$f7,160($s0)
    # Line 2438
    b	.L0db05c20
    # Line 2436
    lwc1	$f8,156($s0)
.L0db061d4:
    ld	$a2,80($sp)
    # Line 2321
    ld	$a1,216($sp)
    sllv	$a1,$a1,$a2
    ld	$a2,88($sp)
    addu	$a1,$a1,$a6
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2323
    lwc1	$f0,8($v1)
    # Line 2322
    lwc1	$f7,4($v1)
    # Line 2323
    mul.s	$f0,$f0,$f6
    # Line 2321
    lwc1	$f8,0($v1)
    # Line 2322
    mul.s	$f7,$f7,$f6
    b	.L0db05e34
    # Line 2321
    mul.s	$f8,$f8,$f6
.L0db06218:
    ld	$a1,80($sp)
    # Line 2332
    sllv	$v1,$v1,$a1
    ld	$a1,88($sp)
    addu	$v1,$v1,$a5
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 2334
    lwc1	$f3,8($at)
    # Line 2333
    lwc1	$f2,4($at)
    # Line 2334
    mul.s	$f3,$f3,$f10
    # Line 2332
    lwc1	$f1,0($at)
    # Line 2333
    mul.s	$f2,$f2,$f10
    # Line 2332
    mul.s	$f1,$f1,$f10
    # Line 2334
    add.s	$f0,$f3,$f0
    # Line 2333
    add.s	$f7,$f2,$f7
    b	.L0db05e64
    # Line 2332
    add.s	$f8,$f1,$f8
.L0db06264:
    # Line 2343
    ld	$v1,88($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$a6
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2345
    lwc1	$f2,8($a2)
    # Line 2344
    lwc1	$f1,4($a2)
    # Line 2345
    mul.s	$f2,$f2,$f9
    # Line 2343
    lwc1	$f4,0($a2)
    # Line 2344
    mul.s	$f1,$f1,$f9
    # Line 2343
    mul.s	$f4,$f4,$f9
    # Line 2345
    add.s	$f0,$f2,$f0
    # Line 2344
    add.s	$f7,$f1,$f7
    b	.L0db05e94
    # Line 2343
    add.s	$f8,$f4,$f8
.L0db062ac:
    ld	$a1,80($sp)
    # Line 2354
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$a5
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2356
    lwc1	$f1,8($v1)
    # Line 2355
    lwc1	$f4,4($v1)
    # Line 2356
    mul.s	$f1,$f1,$f11
    # Line 2354
    lwc1	$f3,0($v1)
    # Line 2355
    mul.s	$f4,$f4,$f11
    # Line 2354
    mul.s	$f3,$f3,$f11
    # Line 2356
    add.s	$f0,$f1,$f0
    # Line 2355
    add.s	$f7,$f4,$f7
    b	.L0db05c20
    # Line 2354
    add.s	$f8,$f3,$f8
.L0db062f4:
    # Line 2408
    lw	$a2,0($s7)
    # Line 2407
    sllv	$at,$a6,$at
    addu	$at,$at,$v0
    # Line 2408
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$a2,$a2,$v1
    addu	$a2,$a2,$at
    # Line 2412
    lwc1	$f0,8($a2)
    # Line 2411
    lwc1	$f7,4($a2)
    b	.L0db05c20
    # Line 2410
    lwc1	$f8,0($a2)
.L0db06324:
    # Line 2389
    b	.L0db05bb0
    move	$v0,$zero
.L0db0632c:
    # Line 2398
    b	.L0db05bec
    move	$a6,$zero
.L0db06334:
    ldc1	$f30,0($sp)
    # Line 2248
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2247
    sub.s	$f30,$f0,$f30
    # Line 2248
    jal	__glFloor
    mov.s	$f12,$f30
    # Line 2250
    li	$v1,1
    sd	$v1,208($sp)
    # Line 2248
    ld	$v1,72($sp)
    mtc1	$zero,$f5
    and	$v0,$v0,$v1
    sd	$v0,232($sp)
    # Line 2249
    addiu	$v0,$v0,1
    and	$v0,$v0,$v1
    # Line 2250
    b	.L0db05d4c
    sd	$v0,224($sp)
.L0db06370:
    ldc1	$f28,0($sp)
    # Line 2263
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2262
    sub.s	$f28,$f6,$f28
    # Line 2263
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$at,208($sp)
    # Line 2265
    addiu	$at,$at,1
    sd	$at,208($sp)
    # Line 2263
    ld	$at,64($sp)
    and	$s7,$v0,$at
    sd	$s7,216($sp)
    # Line 2264
    addiu	$s7,$s7,1
    # Line 2265
    b	.L0db05d94
    # Line 2264
    and	$s7,$s7,$at
.L0db063a8:
    # Line 2385
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    nop
    mul.s	$f0,$f0,$f28
    trunc.w.s	$f0,$f0
    li	$a0,-1
    li	$a3,8448
    li	$a4,7681
    mfc1	$v0,$f0
    b	.L0db05bb0
    mtc1	$zero,$f5
.L0db063d4:
    # Line 2394
    # lw $t9, -23712($gp) # &__glFrac
    sd	$v0,256($sp)
    jal	__glFrac
    ldc1	$f12,8($sp)
    mul.s	$f1,$f0,$f28
    li	$a0,-1
    li	$a3,8448
    trunc.w.s	$f1,$f1
    li	$a4,7681
    mtc1	$zero,$f5
    lw	$a7,24($s7)
    mfc1	$a6,$f1
    b	.L0db05bec
    ld	$v0,256($sp)
.L0db0640c:
    # Line 2447
    lw	$a1,228($s0)
    addu	$a1,$a1,$v0
    # Line 2450
    lw	$at,144($a1)
    # Line 2451
    lw	$a1,100($a1)
    # Line 2450
    sllv	$a2,$a2,$at
    sra	$at,$a5,0x1
    addu	$a2,$a2,$at
    # Line 2451
    sll	$at,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    addu	$a1,$a1,$a2
    # Line 2452
    lwc1	$f8,0($a1)
    # Line 2453
    lwc1	$f7,4($a1)
    # Line 2452
    mul.s	$f8,$f8,$f6
    # Line 2454
    lwc1	$f0,8($a1)
    # Line 2453
    mul.s	$f7,$f7,$f6
    # Line 2440
    lw	$a2,44($s7)
    # Line 2441
    lw	$v1,0($s7)
    # Line 2454
    mul.s	$f0,$f0,$f6
    # Line 2440
    sllv	$a2,$a6,$a2
    addu	$a2,$a2,$a5
    # Line 2441
    sll	$at,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$at,$at,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a2
    # Line 2444
    lwc1	$f3,8($v1)
    # Line 2443
    lwc1	$f2,4($v1)
    # Line 2444
    mul.s	$f3,$f3,$f30
    # Line 2442
    lwc1	$f1,0($v1)
    # Line 2443
    mul.s	$f2,$f2,$f30
    # Line 2442
    mul.s	$f1,$f1,$f30
    # Line 2454
    add.s	$f0,$f0,$f3
    # Line 2453
    add.s	$f7,$f7,$f2
    b	.L0db05c20
    # Line 2452
    add.s	$f8,$f8,$f1
.L0db064a0:
    # Line 2422
    b	.L0db06160
    move	$a5,$zero
.L0db064a8:
    # Line 2431
    b	.L0db0619c
    move	$a6,$zero
.L0db064b0:
    # Line 2418
    # lw $t9, -23712($gp) # &__glFrac
    sd	$v0,264($sp)
    jal	__glFrac
    sdc1	$f6,248($sp)
    mul.s	$f1,$f0,$f28
    li	$a0,-1
    li	$a3,8448
    trunc.w.s	$f1,$f1
    li	$a4,7681
    mtc1	$zero,$f5
    ldc1	$f6,248($sp)
    mfc1	$a5,$f1
    b	.L0db06160
    ld	$v0,264($sp)
.L0db064e8:
    sd	$v0,264($sp)
    # Line 2427
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a5,256($sp)
    sdc1	$f6,248($sp)
    jal	__glFrac
    ldc1	$f12,8($sp)
    mul.s	$f2,$f0,$f28
    li	$a0,-1
    li	$a3,8448
    li	$a4,7681
    mtc1	$zero,$f5
    trunc.w.s	$f2,$f2
    lw	$a7,24($s7)
    ldc1	$f6,248($sp)
    ld	$a5,256($sp)
    mfc1	$a6,$f2
    b	.L0db0619c
    ld	$v0,264($sp)
.L0db06530:
    # Line 2500
    move	$v0,$zero
    # ld	gp,176(sp)
    ld	$s0,144($sp)
    ld	$s1,104($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    ld	$s4,152($sp)
    ld	$s5,112($sp)
    ld	$s6,128($sp)
    ld	$s7,120($sp)
    ld	$s8,136($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ldc1	$f26,48($sp)
    ld	$ra,96($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end __glTextureRGB_L_NML_StippledSpan

# Function: __glTextureRGB_L_LML_Span
# Declared: Line 2510 (Source lines: 2511-3080)
# Address: 0x0db06580 - 0x0db07a08 (Size: 5256 bytes, Frame: 160)
.globl __glTextureRGB_L_LML_Span
.ent __glTextureRGB_L_LML_Span
__glTextureRGB_L_LML_Span:
    # Line 2511
    addiu	$sp,$sp,-288
    sd	$s4,168($sp)
    sd	$s5,136($sp)
    sd	$s6,200($sp)
    sd	$s7,128($sp)
    sd	$s8,192($sp)
    sdc1	$f20,72($sp)
    sdc1	$f22,56($sp)
    sdc1	$f24,48($sp)
    sdc1	$f26,64($sp)
    sdc1	$f28,40($sp)
    sdc1	$f30,32($sp)
    sd	$ra,176($sp)
    sd	$s1,152($sp)
    move	$s1,$a0
    sd	$s2,232($sp)
    # Line 2536
    lw	$s2,30468($a0)
    sd	$s0,160($sp)
    # Line 2534
    lw	$s0,28216($a0)
    # sd	gp,184(sp)
    # Line 2511
    lui	$v0,0xf
    addiu	$v0,$v0,4840
    # addu	gp,t9,v0
    # Line 2519
    lwc1	$f0,3280($a0)
    # Line 2538
    lwc1	$f1,30228($a0)
    # Line 2541
    lwc1	$f4,30244($a0)
    # Line 2540
    lwc1	$f3,30240($a0)
    # Line 2539
    lwc1	$f2,30232($a0)
    sdc1	$f4,96($sp)
    sdc1	$f3,80($sp)
    sdc1	$f2,88($sp)
    sdc1	$f1,104($sp)
    sdc1	$f0,0($sp)
    # Line 2543
    lw	$at,30252($a0)
    sd	$s3,208($sp)
    # Line 2532
    lw	$s3,2376($a0)
    # Line 2543
    addiu	$at,$at,-1
    sd	$at,248($sp)
    bltz	$at,.L0db078f0
    # Line 2532
    lw	$s3,0($s3)
    # Line 2543
    li	$a3,-1
    li	$a0,8448
    mtc1	$zero,$f30
    li	$v0,10497
    xori	$v1,$s3,0x2101
    sltiu	$v1,$v1,1
    b	.L0db06870
    sd	$v1,240($sp)
.L0db06640:
    nop
    # Line 2568
    bc1f	.L0db06654
    # Line 2570
    ldc1	$f5,0($sp)
    # Line 2569
    mov.s	$f26,$f7
.L0db06650:
    # Line 2570
    ldc1	$f5,0($sp)
.L0db06654:
    # Line 2571
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2570
    sub.s	$f26,$f26,$f5
    # Line 2571
    jal	__glFloor
    mov.s	$f12,$f26
    li	$a0,10497
    move	$s5,$v0
    # Line 2572
    addiu	$s4,$v0,1
    ldc1	$f0,24($sp)
.L0db06674:
    # Line 2575
    lwc1	$f6,36($s6)
    # Line 2576
    mul.s	$f5,$f0,$f6
    lw	$a1,8($s0)
    beq	$a1,$a0,.L0db0742c
    mov.s	$f28,$f5
    # Line 2581
    c.lt.s	$f5,$f30
    nop
    bc1fl	.L0db06b98
    # Line 2583
    c.lt.s	$f6,$f5
    mov.s	$f28,$f30
.L0db0669c:
    # Line 2585
    ldc1	$f6,0($sp)
.L0db066a0:
    # Line 2586
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2585
    sub.s	$f28,$f28,$f6
    # Line 2586
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 2587
    addiu	$s7,$v0,1
.L0db066b8:
    # Line 2590
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2591
    # lw $t9, -23712($gp) # &__glFrac
    # Line 2590
    mov.s	$f26,$f0
    # Line 2591
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2593
    mul.s	$f7,$f0,$f26
    # Line 2592
    lwc1	$f6,3284($s1)
    li	$v0,10497
    li	$a0,8448
    # Line 2593
    sub.s	$f1,$f6,$f0
    li	$a3,-1
    # Line 2624
    ld	$a4,216($sp)
    # Line 2592
    sub.s	$f8,$f6,$f26
    # Line 2593
    mul.s	$f5,$f26,$f1
    ld	$a2,224($sp)
    mul.s	$f9,$f0,$f8
    li	$at,2
    beq	$a2,$at,.L0db06bac
    mul.s	$f8,$f8,$f1
    # Line 2624
    nor	$a6,$s8,$zero
    nor	$a4,$a4,$zero
    and	$a5,$a4,$s6
    and	$a7,$a6,$s5
    or	$v1,$a7,$a5
    beqz	$v1,.L0db07160
    # Line 2639
    and	$t0,$a6,$s4
    # Line 2633
    lwc1	$f20,164($s0)
    # Line 2632
    lwc1	$f24,160($s0)
    # Line 2633
    mul.s	$f20,$f20,$f8
    # Line 2631
    lwc1	$f22,156($s0)
    # Line 2632
    mul.s	$f24,$f24,$f8
    # Line 2631
    mul.s	$f22,$f22,$f8
.L0db06740:
    # Line 2639
    or	$at,$t0,$a5
    beqz	$at,.L0db071a0
    # Line 2650
    and	$a5,$a4,$s7
    # Line 2644
    lwc1	$f3,164($s0)
    # Line 2643
    lwc1	$f2,160($s0)
    # Line 2644
    mul.s	$f3,$f3,$f5
    # Line 2642
    lwc1	$f1,156($s0)
    # Line 2643
    mul.s	$f2,$f2,$f5
    # Line 2642
    mul.s	$f1,$f1,$f5
    # Line 2644
    add.s	$f20,$f3,$f20
    # Line 2643
    add.s	$f24,$f2,$f24
    # Line 2642
    add.s	$f22,$f1,$f22
.L0db06770:
    # Line 2650
    or	$v1,$a7,$a5
    beqz	$v1,.L0db071ec
    ld	$at,112($sp)
    # Line 2655
    lwc1	$f2,164($s0)
    # Line 2654
    lwc1	$f1,160($s0)
    # Line 2655
    mul.s	$f2,$f2,$f9
    # Line 2653
    lwc1	$f4,156($s0)
    # Line 2654
    mul.s	$f1,$f1,$f9
    # Line 2653
    mul.s	$f4,$f4,$f9
    # Line 2655
    add.s	$f20,$f2,$f20
    # Line 2654
    add.s	$f24,$f1,$f24
    # Line 2653
    add.s	$f22,$f4,$f22
.L0db067a0:
    # Line 2661
    or	$a1,$t0,$a5
    beqz	$a1,.L0db07234
    # Line 2670
    ld	$a2,120($sp)
    # Line 2666
    lwc1	$f1,164($s0)
    # Line 2665
    lwc1	$f4,160($s0)
    # Line 2666
    mul.s	$f1,$f1,$f7
    # Line 2664
    lwc1	$f3,156($s0)
    # Line 2665
    mul.s	$f4,$f4,$f7
    # Line 2664
    mul.s	$f3,$f3,$f7
    # Line 2666
    add.s	$f20,$f1,$f20
    # Line 2665
    add.s	$f24,$f4,$f24
    # Line 2664
    add.s	$f22,$f3,$f22
.L0db067d0:
    # Line 3040
    beq	$s3,$a0,.L0db06cac
.L0db067d4:
    li	$at,7681
    li	$a2,0x8062
    # Line 3053
    beq	$s3,$a2,.L0db06b8c
    ld	$v1,240($sp)
    beq	$s3,$at,.L0db06b8c
    move	$a4,$zero
    or	$v1,$a4,$v1
.L0db067f0:
    beqzl	$v1,.L0db06cfc
    # Line 3066
    sub.s	$f2,$f6,$f22
    # Line 3056
    lwc1	$f4,30756($s1)
    mul.s	$f4,$f4,$f22
    swc1	$f4,0($s2)
    # Line 3057
    lwc1	$f3,30760($s1)
    mul.s	$f3,$f3,$f24
    swc1	$f3,4($s2)
    # Line 3058
    lwc1	$f2,30764($s1)
    mul.s	$f2,$f2,$f20
    swc1	$f2,8($s2)
.L0db0681c:
    # Line 3076
    ldc1	$f3,96($sp)
    lwc1	$f4,30400($s1)
    # Line 3075
    ldc1	$f1,80($sp)
    lwc1	$f2,30396($s1)
    # Line 3076
    add.s	$f3,$f4,$f3
    # Line 2543
    ld	$a1,248($sp)
    # Line 3075
    add.s	$f1,$f2,$f1
    # Line 3073
    lwc1	$f2,30384($s1)
    # Line 3074
    lwc1	$f4,30388($s1)
    sdc1	$f3,96($sp)
    ldc1	$f3,88($sp)
    sdc1	$f1,80($sp)
    # Line 3073
    ldc1	$f1,104($sp)
    # Line 3074
    add.s	$f3,$f4,$f3
    # Line 3077
    addiu	$s2,$s2,16
    # Line 2543
    addiu	$a1,$a1,-1
    # Line 3073
    add.s	$f1,$f2,$f1
    sd	$a1,248($sp)
    sdc1	$f3,88($sp)
    # Line 2543
    beq	$a1,$a3,.L0db078f0
    sdc1	$f1,104($sp)
.L0db06870:
    # Line 2544
    ldc1	$f1,80($sp)
    lwc1	$f6,3284($s1)
    div.s	$f1,$f6,$f1
    ldc1	$f5,96($sp)
    mul.s	$f5,$f5,$f1
    ldc1	$f2,88($sp)
    lw	$a5,4($s0)
    lwc1	$f3,240($s0)
    mul.s	$f2,$f2,$f1
    lw	$a4,228($s0)
    ldc1	$f0,104($sp)
    c.le.s	$f5,$f3
    # Line 2688
    mov.s	$f7,$f30
    # Line 2544
    mul.s	$f0,$f0,$f1
    bc1f	.L0db06904
    sdc1	$f2,24($sp)
    # Line 2554
    move	$s6,$a4
    sd	$zero,224($sp)
    # Line 2557
    lw	$s8,20($a4)
    # Line 2556
    lw	$a1,0($a4)
    # Line 2560
    lwc1	$f7,32($a4)
    # Line 2555
    lw	$v1,44($a4)
    sd	$a1,120($sp)
    # Line 2561
    mul.s	$f6,$f0,$f7
    # Line 2558
    lw	$at,24($a4)
    sd	$v1,112($sp)
    # Line 2557
    addiu	$s8,$s8,-1
    # Line 2558
    addiu	$at,$at,-1
    sd	$at,216($sp)
    # Line 2561
    beq	$v0,$a5,.L0db073f8
    mov.s	$f26,$f6
    # Line 2566
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db06640
    # Line 2568
    c.lt.s	$f7,$f6
    b	.L0db06650
    mov.s	$f26,$f30
.L0db06904:
    # Line 2672
    c.eq.s	$f5,$f30
    nop
    bc1t	.L0db06990
    # Line 2683
    move	$a6,$zero
    # Line 2684
    trunc.w.s	$f2,$f5
    mfc1	$a7,$f2
    nop
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db06960
    li	$at,1
    addiu	$a6,$a6,1
.L0db06930:
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db0695c
    nop
    addiu	$a6,$a6,1
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db0695c
    nop
    addiu	$a6,$a6,1
    sra	$a7,$a7,0x1
    bnezl	$a7,.L0db06930
    addiu	$a6,$a6,1
.L0db0695c:
    li	$at,1
.L0db06960:
    # Line 2686
    sllv	$at,$at,$a6
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f5,$f2
    div.s	$f1,$f1,$f2
    mtc1	$a6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f7,$f7,$f1
    ldc1	$f1,0($sp)
    mul.s	$f7,$f7,$f1
.L0db06990:
    # Line 2696
    trunc.w.s	$f20,$f7
    # Line 2692
    lw	$a7,236($s0)
    # Line 2696
    cvt.s.w	$f5,$f20
    mfc1	$a6,$f20
    # Line 2699
    sll	$s6,$a7,0x2
    subu	$s6,$s6,$a7
    # Line 2696
    addiu	$a1,$a6,1
    slt	$v1,$a7,$a1
    sub.s	$f5,$f7,$f5
    slti	$a1,$a1,0
    or	$v1,$v1,$a1
    beqz	$v1,.L0db06d5c
    sub.s	$f20,$f6,$f5
    # Line 2699
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$a7
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$a4
    # Line 2702
    lw	$s8,20($s6)
    # Line 2701
    lw	$a1,0($s6)
    # Line 2705
    lwc1	$f7,32($s6)
    # Line 2700
    lw	$v1,44($s6)
    sd	$a1,120($sp)
    # Line 2706
    mul.s	$f6,$f0,$f7
    # Line 2703
    lw	$at,24($s6)
    sd	$v1,112($sp)
    # Line 2702
    addiu	$s8,$s8,-1
    # Line 2703
    addiu	$at,$at,-1
    sd	$at,216($sp)
    # Line 2706
    beq	$v0,$a5,.L0db07460
    mov.s	$f26,$f6
    # Line 2710
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db06cd4
    # Line 2712
    c.lt.s	$f7,$f6
    mov.s	$f26,$f30
.L0db06a1c:
    # Line 2714
    ldc1	$f21,0($sp)
.L0db06a20:
    # Line 2715
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2714
    sub.s	$f26,$f26,$f21
    # Line 2715
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2716
    addiu	$s4,$v0,1
.L0db06a38:
    # Line 2719
    lwc1	$f6,36($s6)
    # Line 2720
    ldc1	$f5,24($sp)
    mul.s	$f5,$f5,$f6
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db07484
    mov.s	$f28,$f5
    # Line 2724
    c.lt.s	$f5,$f30
    nop
    bc1fl	.L0db06ce8
    # Line 2726
    c.lt.s	$f6,$f5
    mov.s	$f28,$f30
.L0db06a68:
    # Line 2728
    ldc1	$f6,0($sp)
.L0db06a6c:
    # Line 2729
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2728
    sub.s	$f28,$f28,$f6
    # Line 2729
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 2730
    addiu	$s7,$v0,1
.L0db06a84:
    # Line 2733
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2734
    # lw $t9, -23712($gp) # &__glFrac
    # Line 2733
    mov.s	$f26,$f0
    # Line 2734
    jal	__glFrac
    mov.s	$f12,$f28
    li	$v0,10497
    li	$a0,8448
    li	$a3,-1
    # Line 2736
    nor	$a6,$s8,$zero
    # Line 2735
    lwc1	$f6,3284($s1)
    # Line 2736
    ld	$a4,216($sp)
    and	$a7,$a6,$s5
    sub.s	$f9,$f6,$f0
    nor	$a4,$a4,$zero
    and	$a5,$a4,$s6
    # Line 2735
    sub.s	$f7,$f6,$f26
    # Line 2755
    mul.s	$f5,$f26,$f9
    # Line 2736
    or	$a1,$a7,$a5
    beqz	$a1,.L0db0727c
    mul.s	$f8,$f7,$f9
    # Line 2749
    lwc1	$f20,164($s0)
    # Line 2748
    lwc1	$f24,160($s0)
    # Line 2749
    mul.s	$f20,$f20,$f8
    # Line 2747
    lwc1	$f22,156($s0)
    # Line 2748
    mul.s	$f24,$f24,$f8
    # Line 2747
    mul.s	$f22,$f22,$f8
.L0db06af4:
    # Line 2755
    and	$t0,$a6,$s4
    or	$at,$t0,$a5
    beqz	$at,.L0db072bc
    # Line 2766
    and	$a5,$a4,$s7
    # Line 2760
    lwc1	$f3,164($s0)
    # Line 2759
    lwc1	$f2,160($s0)
    # Line 2760
    mul.s	$f3,$f3,$f5
    # Line 2758
    lwc1	$f1,156($s0)
    # Line 2759
    mul.s	$f2,$f2,$f5
    # Line 2758
    mul.s	$f1,$f1,$f5
    # Line 2760
    add.s	$f20,$f3,$f20
    # Line 2759
    add.s	$f24,$f2,$f24
    # Line 2758
    add.s	$f22,$f1,$f22
.L0db06b28:
    # Line 2777
    or	$a1,$t0,$a5
    # Line 2766
    or	$v1,$a7,$a5
    beqz	$v1,.L0db07308
    mul.s	$f9,$f0,$f7
    # Line 2771
    lwc1	$f2,164($s0)
    # Line 2770
    lwc1	$f1,160($s0)
    # Line 2771
    mul.s	$f2,$f2,$f9
    # Line 2769
    lwc1	$f4,156($s0)
    # Line 2770
    mul.s	$f1,$f1,$f9
    # Line 2769
    mul.s	$f4,$f4,$f9
    # Line 2771
    add.s	$f20,$f2,$f20
    # Line 2770
    add.s	$f24,$f1,$f24
    # Line 2769
    add.s	$f22,$f4,$f22
.L0db06b5c:
    # Line 2777
    beqz	$a1,.L0db07354
    mul.s	$f7,$f0,$f26
    # Line 2782
    lwc1	$f1,164($s0)
    # Line 2781
    lwc1	$f4,160($s0)
    # Line 2782
    mul.s	$f1,$f1,$f7
    # Line 2780
    lwc1	$f3,156($s0)
    # Line 2781
    mul.s	$f4,$f4,$f7
    # Line 2780
    mul.s	$f3,$f3,$f7
    # Line 2782
    add.s	$f20,$f1,$f20
    # Line 2781
    add.s	$f24,$f4,$f24
    # Line 2782
    b	.L0db067d0
    # Line 2780
    add.s	$f22,$f3,$f22
.L0db06b8c:
    # Line 3053
    li	$a4,1
    b	.L0db067f0
    or	$v1,$a4,$v1
.L0db06b98:
    nop
    # Line 2583
    bc1fl	.L0db066a0
    # Line 2585
    ldc1	$f6,0($sp)
    b	.L0db0669c
    # Line 2584
    mov.s	$f28,$f6
.L0db06bac:
    ld	$a1,112($sp)
    # Line 2622
    ld	$at,120($sp)
    sllv	$a2,$s7,$a1
    addu	$v1,$a2,$s4
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$at
    addu	$v1,$v1,$a0
    # Line 2623
    lwc1	$f1,4($v1)
    mul.s	$f1,$f1,$f7
    # Line 2622
    addu	$a2,$a2,$s5
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a0,$a0,$a2
    # Line 2623
    lwc1	$f3,4($a0)
    mul.s	$f3,$f3,$f9
    # Line 2624
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f7
    # Line 2622
    sllv	$a1,$s6,$a1
    addu	$a4,$a1,$s4
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    addu	$a2,$a2,$a4
    # Line 2623
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    # Line 2624
    lwc1	$f0,8($a2)
    # Line 2622
    addu	$a1,$a1,$s5
    # Line 2624
    mul.s	$f0,$f0,$f5
    # Line 2622
    sll	$a4,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    addu	$a1,$a1,$a4
    # Line 2624
    lwc1	$f20,8($a1)
    lwc1	$f22,8($a0)
    mul.s	$f20,$f20,$f8
    mul.s	$f22,$f22,$f9
    # Line 2623
    lwc1	$f24,4($a1)
    mul.s	$f24,$f24,$f8
    # Line 2624
    add.s	$f20,$f20,$f0
    # Line 2622
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2624
    add.s	$f20,$f20,$f22
    # Line 2622
    lwc1	$f22,0($a1)
    mul.s	$f22,$f22,$f8
    # Line 2624
    add.s	$f20,$f20,$f2
    # Line 2622
    lwc1	$f2,0($a0)
    # Line 2623
    add.s	$f24,$f24,$f4
    # Line 2622
    mul.s	$f2,$f2,$f9
    add.s	$f22,$f22,$f0
    lwc1	$f0,0($v1)
    # Line 2623
    add.s	$f24,$f24,$f3
    # Line 2622
    mul.s	$f0,$f0,$f7
    add.s	$f22,$f22,$f2
    # Line 3040
    li	$at,8448
    # Line 2623
    add.s	$f24,$f24,$f1
    li	$a0,8448
    # Line 3040
    bne	$s3,$at,.L0db067d4
    # Line 2622
    add.s	$f22,$f22,$f0
.L0db06cac:
    # Line 3050
    lwc1	$f3,4($s2)
    # Line 3051
    lwc1	$f4,8($s2)
    # Line 3050
    mul.s	$f3,$f3,$f24
    # Line 3049
    lwc1	$f2,0($s2)
    # Line 3051
    mul.s	$f4,$f4,$f20
    # Line 3049
    mul.s	$f2,$f2,$f22
    # Line 3051
    swc1	$f4,8($s2)
    # Line 3050
    swc1	$f3,4($s2)
    # Line 3051
    b	.L0db0681c
    # Line 3049
    swc1	$f2,0($s2)
.L0db06cd4:
    nop
    # Line 2712
    bc1f	.L0db06a20
    # Line 2714
    ldc1	$f21,0($sp)
    b	.L0db06a1c
    # Line 2713
    mov.s	$f26,$f7
.L0db06ce8:
    nop
    # Line 2726
    bc1fl	.L0db06a6c
    # Line 2728
    ldc1	$f6,0($sp)
    b	.L0db06a68
    # Line 2727
    mov.s	$f28,$f6
.L0db06cfc:
    # Line 3066
    lwc1	$f1,0($s2)
    # Line 3064
    lw	$a1,2376($s1)
    # Line 3066
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s2)
    # Line 3067
    lwc1	$f4,3284($s1)
    sub.s	$f4,$f4,$f24
    lwc1	$f3,4($s2)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($a1)
    mul.s	$f4,$f4,$f24
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s2)
    # Line 3068
    lwc1	$f2,3284($s1)
    sub.s	$f2,$f2,$f20
    lwc1	$f1,8($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f20
    add.s	$f1,$f1,$f2
    b	.L0db0681c
    swc1	$f1,8($s2)
.L0db06d5c:
    sd	$zero,224($sp)
    # Line 2798
    sll	$s6,$a6,0x2
    subu	$s6,$s6,$a6
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$a6
    sll	$s6,$s6,0x2
    sd	$s6,144($sp)
    addu	$s6,$a4,$s6
    # Line 2801
    lw	$s8,20($s6)
    # Line 2800
    lw	$a1,0($s6)
    # Line 2804
    lwc1	$f7,32($s6)
    # Line 2799
    lw	$v1,44($s6)
    sd	$a1,120($sp)
    # Line 2805
    mul.s	$f6,$f0,$f7
    # Line 2802
    lw	$at,24($s6)
    sd	$v1,112($sp)
    # Line 2801
    addiu	$s8,$s8,-1
    # Line 2802
    addiu	$at,$at,-1
    sd	$at,216($sp)
    # Line 2805
    beq	$v0,$a5,.L0db07940
    mov.s	$f26,$f6
    # Line 2810
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db073a0
    # Line 2812
    c.lt.s	$f7,$f6
    sdc1	$f0,8($sp)
    sdc1	$f5,16($sp)
    mov.s	$f26,$f30
.L0db06dcc:
    # Line 2814
    ldc1	$f3,0($sp)
.L0db06dd0:
    # Line 2815
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2814
    sub.s	$f26,$f26,$f3
    sdc1	$f0,8($sp)
    sdc1	$f5,16($sp)
    # Line 2815
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2816
    addiu	$s4,$v0,1
.L0db06df0:
    # Line 2819
    lwc1	$f6,36($s6)
    # Line 2820
    ldc1	$f5,24($sp)
    mul.s	$f5,$f5,$f6
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db07974
    mov.s	$f28,$f5
    # Line 2825
    c.lt.s	$f5,$f30
    nop
    bc1fl	.L0db073bc
    # Line 2827
    c.lt.s	$f6,$f5
    mov.s	$f28,$f30
.L0db06e20:
    # Line 2829
    ldc1	$f6,0($sp)
.L0db06e24:
    # Line 2830
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2829
    sub.s	$f28,$f28,$f6
    # Line 2830
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 2831
    addiu	$s7,$v0,1
.L0db06e3c:
    # Line 2834
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2835
    # lw $t9, -23712($gp) # &__glFrac
    # Line 2834
    mov.s	$f26,$f0
    # Line 2835
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2836
    lwc1	$f1,3284($s1)
    # Line 2837
    mul.s	$f6,$f26,$f20
    # Line 2836
    sub.s	$f7,$f1,$f26
    ld	$v0,144($sp)
    ld	$at,112($sp)
    # Line 2837
    mul.s	$f7,$f7,$f20
    # Line 2866
    ld	$a0,120($sp)
    # Line 2837
    sub.s	$f1,$f1,$f0
    mul.s	$f8,$f0,$f6
    li	$a2,2
    # Line 2868
    ld	$a4,216($sp)
    # Line 2837
    mul.s	$f6,$f6,$f1
    ld	$a1,224($sp)
    # Line 2868
    nor	$a4,$a4,$zero
    # Line 2837
    mul.s	$f5,$f0,$f7
    # Line 2868
    and	$a5,$a4,$s6
    # Line 2837
    beq	$a1,$a2,.L0db074ac
    mul.s	$f7,$f7,$f1
    # Line 2868
    nor	$a6,$s8,$zero
    and	$a7,$a6,$s5
    or	$at,$a7,$a5
    beqz	$at,.L0db076ac
    # Line 2883
    and	$t0,$a6,$s4
    # Line 2877
    lwc1	$f20,164($s0)
    # Line 2876
    lwc1	$f24,160($s0)
    # Line 2877
    mul.s	$f20,$f20,$f7
    # Line 2875
    lwc1	$f22,156($s0)
    # Line 2876
    mul.s	$f24,$f24,$f7
    # Line 2875
    mul.s	$f22,$f22,$f7
.L0db06ecc:
    # Line 2883
    or	$at,$t0,$a5
    beqz	$at,.L0db076ec
    # Line 2894
    and	$a5,$a4,$s7
    # Line 2888
    lwc1	$f3,164($s0)
    # Line 2887
    lwc1	$f2,160($s0)
    # Line 2888
    mul.s	$f3,$f3,$f6
    # Line 2886
    lwc1	$f1,156($s0)
    # Line 2887
    mul.s	$f2,$f2,$f6
    # Line 2886
    mul.s	$f1,$f1,$f6
    # Line 2888
    add.s	$f20,$f3,$f20
    # Line 2887
    add.s	$f24,$f2,$f24
    # Line 2886
    add.s	$f22,$f1,$f22
.L0db06efc:
    # Line 2894
    or	$v1,$a7,$a5
    beqz	$v1,.L0db07738
    ld	$at,112($sp)
    # Line 2899
    lwc1	$f2,164($s0)
    # Line 2898
    lwc1	$f1,160($s0)
    # Line 2899
    mul.s	$f2,$f2,$f5
    # Line 2897
    lwc1	$f4,156($s0)
    # Line 2898
    mul.s	$f1,$f1,$f5
    # Line 2897
    mul.s	$f4,$f4,$f5
    # Line 2899
    add.s	$f20,$f2,$f20
    # Line 2898
    add.s	$f24,$f1,$f24
    # Line 2897
    add.s	$f22,$f4,$f22
.L0db06f2c:
    # Line 2905
    or	$a1,$t0,$a5
    beqz	$a1,.L0db07780
    # Line 2914
    ld	$a2,120($sp)
    # Line 2910
    lwc1	$f1,164($s0)
    # Line 2909
    lwc1	$f4,160($s0)
    # Line 2910
    mul.s	$f1,$f1,$f8
    # Line 2908
    lwc1	$f3,156($s0)
    # Line 2909
    mul.s	$f4,$f4,$f8
    # Line 2908
    mul.s	$f3,$f3,$f8
    # Line 2910
    add.s	$f20,$f1,$f20
    # Line 2909
    add.s	$f24,$f4,$f24
    # Line 2908
    add.s	$f22,$f3,$f22
.L0db06f5c:
    # Line 2922
    lw	$s6,228($s0)
    sd	$zero,224($sp)
    addu	$s6,$s6,$v0
    addiu	$s6,$s6,100
    # Line 2923
    lw	$a1,44($s6)
    li	$at,10497
    # Line 2929
    lw	$a2,4($s0)
    sd	$a1,112($sp)
    ldc1	$f6,8($sp)
    # Line 2928
    lwc1	$f7,32($s6)
    # Line 2924
    lw	$s8,0($s6)
    # Line 2926
    lw	$v1,24($s6)
    # Line 2929
    mul.s	$f6,$f6,$f7
    sd	$s8,120($sp)
    # Line 2925
    lw	$s8,20($s6)
    # Line 2926
    addiu	$v1,$v1,-1
    sd	$v1,216($sp)
    # Line 2925
    addiu	$s8,$s8,-1
    # Line 2929
    beq	$a2,$at,.L0db079a8
    mov.s	$f26,$f6
    # Line 2934
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db073d0
    # Line 2936
    c.lt.s	$f7,$f6
    mov.s	$f26,$f30
.L0db06fc0:
    # Line 2938
    ldc1	$f7,0($sp)
.L0db06fc4:
    # Line 2939
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2938
    sub.s	$f26,$f26,$f7
    # Line 2939
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2940
    addiu	$s4,$v0,1
.L0db06fdc:
    # Line 2943
    lwc1	$f6,36($s6)
    # Line 2944
    ldc1	$f5,24($sp)
    mul.s	$f5,$f5,$f6
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db079d4
    mov.s	$f28,$f5
    # Line 2949
    c.lt.s	$f5,$f30
    nop
    bc1fl	.L0db073e4
    # Line 2951
    c.lt.s	$f6,$f5
    mov.s	$f28,$f30
.L0db0700c:
    # Line 2953
    ldc1	$f6,0($sp)
.L0db07010:
    # Line 2954
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2953
    sub.s	$f28,$f28,$f6
    # Line 2954
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 2955
    addiu	$s7,$v0,1
.L0db07028:
    # Line 2958
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2959
    # lw $t9, -23712($gp) # &__glFrac
    # Line 2958
    mov.s	$f26,$f0
    # Line 2959
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2961
    ldc1	$f9,16($sp)
    # Line 2960
    lwc1	$f6,3284($s1)
    # Line 2961
    mul.s	$f5,$f9,$f26
    # Line 2960
    sub.s	$f1,$f6,$f26
    li	$v0,10497
    li	$a0,8448
    li	$a3,-1
    # Line 2961
    mul.s	$f9,$f9,$f1
    ld	$v1,112($sp)
    sub.s	$f1,$f6,$f0
    mul.s	$f7,$f0,$f5
    li	$a2,2
    # Line 2992
    ld	$a4,216($sp)
    # Line 2961
    mul.s	$f5,$f5,$f1
    ld	$a1,224($sp)
    # Line 2992
    nor	$a4,$a4,$zero
    # Line 2961
    mul.s	$f8,$f0,$f9
    # Line 2992
    and	$a5,$a4,$s6
    # Line 2961
    beq	$a1,$a2,.L0db075a4
    mul.s	$f9,$f9,$f1
    # Line 2992
    nor	$a6,$s8,$zero
    and	$a7,$a6,$s5
    or	$at,$a7,$a5
    beqz	$at,.L0db077c8
    # Line 3007
    and	$t0,$a6,$s4
    # Line 3001
    lwc1	$f4,164($s0)
    # Line 3000
    lwc1	$f3,160($s0)
    # Line 3001
    mul.s	$f4,$f4,$f9
    # Line 2999
    lwc1	$f2,156($s0)
    # Line 3000
    mul.s	$f3,$f3,$f9
    # Line 2999
    mul.s	$f2,$f2,$f9
    # Line 3001
    add.s	$f20,$f4,$f20
    # Line 3000
    add.s	$f24,$f3,$f24
    # Line 2999
    add.s	$f22,$f2,$f22
.L0db070cc:
    # Line 3007
    or	$at,$t0,$a5
    beqz	$at,.L0db07814
    # Line 3018
    and	$a5,$a4,$s7
    # Line 3012
    lwc1	$f3,164($s0)
    # Line 3011
    lwc1	$f2,160($s0)
    # Line 3012
    mul.s	$f3,$f3,$f5
    # Line 3010
    lwc1	$f1,156($s0)
    # Line 3011
    mul.s	$f2,$f2,$f5
    # Line 3010
    mul.s	$f1,$f1,$f5
    # Line 3012
    add.s	$f20,$f3,$f20
    # Line 3011
    add.s	$f24,$f2,$f24
    # Line 3010
    add.s	$f22,$f1,$f22
.L0db070fc:
    # Line 3018
    or	$v1,$a7,$a5
    beqz	$v1,.L0db07860
    ld	$at,112($sp)
    # Line 3023
    lwc1	$f2,164($s0)
    # Line 3022
    lwc1	$f1,160($s0)
    # Line 3023
    mul.s	$f2,$f2,$f8
    # Line 3021
    lwc1	$f4,156($s0)
    # Line 3022
    mul.s	$f1,$f1,$f8
    # Line 3021
    mul.s	$f4,$f4,$f8
    # Line 3023
    add.s	$f20,$f2,$f20
    # Line 3022
    add.s	$f24,$f1,$f24
    # Line 3021
    add.s	$f22,$f4,$f22
.L0db0712c:
    # Line 3029
    or	$a1,$t0,$a5
    beqz	$a1,.L0db078a8
    # Line 3038
    ld	$a2,120($sp)
    # Line 3034
    lwc1	$f1,164($s0)
    # Line 3033
    lwc1	$f4,160($s0)
    # Line 3034
    mul.s	$f1,$f1,$f7
    # Line 3032
    lwc1	$f3,156($s0)
    # Line 3033
    mul.s	$f4,$f4,$f7
    # Line 3032
    mul.s	$f3,$f3,$f7
    # Line 3034
    add.s	$f20,$f1,$f20
    # Line 3033
    add.s	$f24,$f4,$f24
    # Line 3034
    b	.L0db067d0
    # Line 3032
    add.s	$f22,$f3,$f22
.L0db07160:
    ld	$at,112($sp)
    # Line 2637
    ld	$v1,120($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2639
    lwc1	$f20,8($a2)
    # Line 2638
    lwc1	$f24,4($a2)
    # Line 2639
    mul.s	$f20,$f20,$f8
    # Line 2637
    lwc1	$f22,0($a2)
    # Line 2638
    mul.s	$f24,$f24,$f8
    b	.L0db06740
    # Line 2637
    mul.s	$f22,$f22,$f8
.L0db071a0:
    # Line 2648
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2650
    lwc1	$f3,8($v1)
    # Line 2649
    lwc1	$f2,4($v1)
    # Line 2650
    mul.s	$f3,$f3,$f5
    # Line 2648
    lwc1	$f1,0($v1)
    # Line 2649
    mul.s	$f2,$f2,$f5
    # Line 2648
    mul.s	$f1,$f1,$f5
    # Line 2650
    add.s	$f20,$f3,$f20
    # Line 2649
    add.s	$f24,$f2,$f24
    b	.L0db06770
    # Line 2648
    add.s	$f22,$f1,$f22
.L0db071ec:
    # Line 2659
    ld	$v1,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2661
    lwc1	$f2,8($a2)
    # Line 2660
    lwc1	$f1,4($a2)
    # Line 2661
    mul.s	$f2,$f2,$f9
    # Line 2659
    lwc1	$f4,0($a2)
    # Line 2660
    mul.s	$f1,$f1,$f9
    # Line 2659
    mul.s	$f4,$f4,$f9
    # Line 2661
    add.s	$f20,$f2,$f20
    # Line 2660
    add.s	$f24,$f1,$f24
    b	.L0db067a0
    # Line 2659
    add.s	$f22,$f4,$f22
.L0db07234:
    ld	$a1,112($sp)
    # Line 2670
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2672
    lwc1	$f1,8($v1)
    # Line 2671
    lwc1	$f4,4($v1)
    # Line 2672
    mul.s	$f1,$f1,$f7
    # Line 2670
    lwc1	$f3,0($v1)
    # Line 2671
    mul.s	$f4,$f4,$f7
    # Line 2670
    mul.s	$f3,$f3,$f7
    # Line 2672
    add.s	$f20,$f1,$f20
    # Line 2671
    add.s	$f24,$f4,$f24
    b	.L0db067d0
    # Line 2670
    add.s	$f22,$f3,$f22
.L0db0727c:
    # Line 2753
    ld	$v1,120($sp)
    ld	$at,112($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2755
    lwc1	$f20,8($a2)
    # Line 2754
    lwc1	$f24,4($a2)
    # Line 2755
    mul.s	$f20,$f20,$f8
    # Line 2753
    lwc1	$f22,0($a2)
    # Line 2754
    mul.s	$f24,$f24,$f8
    b	.L0db06af4
    # Line 2753
    mul.s	$f22,$f22,$f8
.L0db072bc:
    # Line 2764
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2766
    lwc1	$f3,8($v1)
    # Line 2765
    lwc1	$f2,4($v1)
    # Line 2766
    mul.s	$f3,$f3,$f5
    # Line 2764
    lwc1	$f1,0($v1)
    # Line 2765
    mul.s	$f2,$f2,$f5
    # Line 2764
    mul.s	$f1,$f1,$f5
    # Line 2766
    add.s	$f20,$f3,$f20
    # Line 2765
    add.s	$f24,$f2,$f24
    b	.L0db06b28
    # Line 2764
    add.s	$f22,$f1,$f22
.L0db07308:
    ld	$at,112($sp)
    # Line 2775
    ld	$v1,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2777
    lwc1	$f2,8($a2)
    # Line 2776
    lwc1	$f1,4($a2)
    # Line 2777
    mul.s	$f2,$f2,$f9
    # Line 2775
    lwc1	$f4,0($a2)
    # Line 2776
    mul.s	$f1,$f1,$f9
    # Line 2775
    mul.s	$f4,$f4,$f9
    # Line 2777
    add.s	$f20,$f2,$f20
    # Line 2776
    add.s	$f24,$f1,$f24
    b	.L0db06b5c
    # Line 2775
    add.s	$f22,$f4,$f22
.L0db07354:
    # Line 2786
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2788
    lwc1	$f1,8($v1)
    # Line 2787
    lwc1	$f4,4($v1)
    # Line 2788
    mul.s	$f1,$f1,$f7
    # Line 2786
    lwc1	$f3,0($v1)
    # Line 2787
    mul.s	$f4,$f4,$f7
    # Line 2786
    mul.s	$f3,$f3,$f7
    # Line 2788
    add.s	$f20,$f1,$f20
    # Line 2787
    add.s	$f24,$f4,$f24
    b	.L0db067d0
    # Line 2786
    add.s	$f22,$f3,$f22
.L0db073a0:
    nop
    # Line 2812
    bc1f	.L0db06dd0
    # Line 2814
    ldc1	$f3,0($sp)
    sdc1	$f0,8($sp)
    sdc1	$f5,16($sp)
    b	.L0db06dcc
    # Line 2813
    mov.s	$f26,$f7
.L0db073bc:
    nop
    # Line 2827
    bc1fl	.L0db06e24
    # Line 2829
    ldc1	$f6,0($sp)
    b	.L0db06e20
    # Line 2828
    mov.s	$f28,$f6
.L0db073d0:
    nop
    # Line 2936
    bc1fl	.L0db06fc4
    # Line 2938
    ldc1	$f7,0($sp)
    b	.L0db06fc0
    # Line 2937
    mov.s	$f26,$f7
.L0db073e4:
    nop
    # Line 2951
    bc1fl	.L0db07010
    # Line 2953
    ldc1	$f6,0($sp)
    b	.L0db0700c
    # Line 2952
    mov.s	$f28,$f6
.L0db073f8:
    ldc1	$f26,0($sp)
    # Line 2564
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2563
    sub.s	$f26,$f6,$f26
    # Line 2564
    jal	__glFloor
    mov.s	$f12,$f26
    li	$a0,10497
    ldc1	$f0,24($sp)
    # Line 2566
    li	$s5,1
    sd	$s5,224($sp)
    # Line 2564
    and	$s5,$v0,$s8
    # Line 2565
    addiu	$s4,$s5,1
    # Line 2566
    b	.L0db06674
    # Line 2565
    and	$s4,$s4,$s8
.L0db0742c:
    ldc1	$f28,0($sp)
    # Line 2579
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2578
    sub.s	$f28,$f5,$f28
    # Line 2579
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,224($sp)
    ld	$at,216($sp)
    # Line 2581
    addiu	$v1,$v1,1
    sd	$v1,224($sp)
    # Line 2579
    and	$s6,$v0,$at
    # Line 2580
    addiu	$s7,$s6,1
    # Line 2581
    b	.L0db066b8
    # Line 2580
    and	$s7,$s7,$at
.L0db07460:
    ldc1	$f26,0($sp)
    # Line 2709
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2708
    sub.s	$f26,$f6,$f26
    # Line 2709
    jal	__glFloor
    mov.s	$f12,$f26
    and	$s5,$v0,$s8
    # Line 2710
    addiu	$s4,$s5,1
    b	.L0db06a38
    and	$s4,$s4,$s8
.L0db07484:
    ldc1	$f28,0($sp)
    # Line 2723
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2722
    sub.s	$f28,$f5,$f28
    # Line 2723
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$at,216($sp)
    and	$s6,$v0,$at
    # Line 2724
    addiu	$s7,$s6,1
    b	.L0db06a84
    and	$s7,$s7,$at
.L0db074ac:
    sd	$v0,256($sp)
    # Line 2866
    sllv	$v0,$s7,$at
    addu	$a1,$v0,$s4
    sll	$a2,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    addu	$a1,$a1,$a2
    # Line 2867
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f8
    # Line 2866
    addu	$v0,$v0,$s5
    sll	$a2,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    addu	$a2,$a2,$v0
    # Line 2867
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f5
    # Line 2868
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f8
    # Line 2866
    sllv	$at,$s6,$at
    addu	$v1,$at,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    # Line 2867
    lwc1	$f4,4($v0)
    mul.s	$f4,$f4,$f6
    # Line 2868
    lwc1	$f0,8($v0)
    # Line 2866
    addu	$at,$at,$s5
    # Line 2868
    mul.s	$f0,$f0,$f6
    # Line 2866
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$at,$at,$v1
    # Line 2868
    lwc1	$f20,8($at)
    lwc1	$f22,8($a2)
    mul.s	$f20,$f20,$f7
    mul.s	$f22,$f22,$f5
    # Line 2867
    lwc1	$f24,4($at)
    mul.s	$f24,$f24,$f7
    # Line 2868
    add.s	$f20,$f20,$f0
    # Line 2866
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f6
    # Line 2868
    add.s	$f20,$f20,$f22
    # Line 2866
    lwc1	$f22,0($at)
    mul.s	$f22,$f22,$f7
    # Line 2868
    add.s	$f20,$f20,$f2
    # Line 2866
    lwc1	$f2,0($a2)
    # Line 2867
    add.s	$f24,$f24,$f4
    # Line 2866
    mul.s	$f2,$f2,$f5
    add.s	$f22,$f22,$f0
    lwc1	$f0,0($a1)
    # Line 2867
    add.s	$f24,$f24,$f3
    # Line 2866
    mul.s	$f0,$f0,$f8
    add.s	$f22,$f22,$f2
    # Line 2867
    add.s	$f24,$f24,$f1
    ld	$v0,256($sp)
    # Line 2868
    b	.L0db06f5c
    # Line 2866
    add.s	$f22,$f22,$f0
.L0db075a4:
    # Line 2990
    ld	$a2,120($sp)
    sd	$v0,256($sp)
    # Line 2984
    sllv	$v0,$s7,$v1
    addu	$a1,$v0,$s5
    # Line 2990
    addu	$v0,$v0,$s4
    sll	$a4,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a2
    addu	$a4,$a4,$v0
    # Line 2991
    lwc1	$f1,4($a4)
    mul.s	$f1,$f1,$f7
    # Line 2984
    sll	$at,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$at,$at,$a1
    # Line 2985
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f8
    # Line 2972
    sllv	$v1,$s6,$v1
    # Line 2978
    addu	$a1,$v1,$s4
    sll	$v0,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v0,$v0,$a1
    # Line 2979
    lwc1	$f10,4($v0)
    mul.s	$f10,$f10,$f5
    # Line 2972
    addu	$v1,$v1,$s5
    sll	$a1,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2974
    lwc1	$f11,8($v1)
    # Line 2980
    lwc1	$f4,8($v0)
    # Line 2974
    mul.s	$f11,$f11,$f9
    # Line 2986
    lwc1	$f0,8($at)
    # Line 2980
    mul.s	$f4,$f4,$f5
    # Line 2986
    mul.s	$f0,$f0,$f8
    # Line 2973
    lwc1	$f2,4($v1)
    # Line 2974
    add.s	$f11,$f11,$f20
    # Line 2973
    mul.s	$f2,$f2,$f9
    # Line 2992
    lwc1	$f20,8($a4)
    # Line 2980
    add.s	$f4,$f4,$f11
    # Line 2992
    mul.s	$f20,$f20,$f7
    # Line 2986
    add.s	$f0,$f0,$f4
    # Line 2972
    lwc1	$f4,0($v1)
    mul.s	$f4,$f4,$f9
    # Line 2973
    add.s	$f24,$f2,$f24
    # Line 2978
    lwc1	$f2,0($v0)
    # Line 2992
    add.s	$f20,$f20,$f0
    # Line 2978
    mul.s	$f2,$f2,$f5
    # Line 2972
    add.s	$f4,$f4,$f22
    # Line 2984
    lwc1	$f0,0($at)
    # Line 2979
    add.s	$f24,$f10,$f24
    # Line 2984
    mul.s	$f0,$f0,$f8
    # Line 2978
    add.s	$f2,$f2,$f4
    # Line 2990
    lwc1	$f22,0($a4)
    # Line 2985
    add.s	$f24,$f3,$f24
    # Line 2990
    mul.s	$f22,$f22,$f7
    # Line 2984
    add.s	$f0,$f0,$f2
    # Line 2991
    add.s	$f24,$f1,$f24
    ld	$v0,256($sp)
    # Line 2992
    b	.L0db067d0
    # Line 2990
    add.s	$f22,$f22,$f0
.L0db076ac:
    # Line 2881
    ld	$v1,120($sp)
    ld	$at,112($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2883
    lwc1	$f20,8($a2)
    # Line 2882
    lwc1	$f24,4($a2)
    # Line 2883
    mul.s	$f20,$f20,$f7
    # Line 2881
    lwc1	$f22,0($a2)
    # Line 2882
    mul.s	$f24,$f24,$f7
    b	.L0db06ecc
    # Line 2881
    mul.s	$f22,$f22,$f7
.L0db076ec:
    # Line 2892
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2894
    lwc1	$f3,8($v1)
    # Line 2893
    lwc1	$f2,4($v1)
    # Line 2894
    mul.s	$f3,$f3,$f6
    # Line 2892
    lwc1	$f1,0($v1)
    # Line 2893
    mul.s	$f2,$f2,$f6
    # Line 2892
    mul.s	$f1,$f1,$f6
    # Line 2894
    add.s	$f20,$f3,$f20
    # Line 2893
    add.s	$f24,$f2,$f24
    b	.L0db06efc
    # Line 2892
    add.s	$f22,$f1,$f22
.L0db07738:
    # Line 2903
    ld	$v1,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 2905
    lwc1	$f2,8($a2)
    # Line 2904
    lwc1	$f1,4($a2)
    # Line 2905
    mul.s	$f2,$f2,$f5
    # Line 2903
    lwc1	$f4,0($a2)
    # Line 2904
    mul.s	$f1,$f1,$f5
    # Line 2903
    mul.s	$f4,$f4,$f5
    # Line 2905
    add.s	$f20,$f2,$f20
    # Line 2904
    add.s	$f24,$f1,$f24
    b	.L0db06f2c
    # Line 2903
    add.s	$f22,$f4,$f22
.L0db07780:
    ld	$a1,112($sp)
    # Line 2914
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 2916
    lwc1	$f1,8($v1)
    # Line 2915
    lwc1	$f4,4($v1)
    # Line 2916
    mul.s	$f1,$f1,$f8
    # Line 2914
    lwc1	$f3,0($v1)
    # Line 2915
    mul.s	$f4,$f4,$f8
    # Line 2914
    mul.s	$f3,$f3,$f8
    # Line 2916
    add.s	$f20,$f1,$f20
    # Line 2915
    add.s	$f24,$f4,$f24
    b	.L0db06f5c
    # Line 2914
    add.s	$f22,$f3,$f22
.L0db077c8:
    # Line 3005
    ld	$v1,120($sp)
    ld	$at,112($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3007
    lwc1	$f4,8($a2)
    # Line 3006
    lwc1	$f3,4($a2)
    # Line 3007
    mul.s	$f4,$f4,$f9
    # Line 3005
    lwc1	$f2,0($a2)
    # Line 3006
    mul.s	$f3,$f3,$f9
    # Line 3005
    mul.s	$f2,$f2,$f9
    # Line 3007
    add.s	$f20,$f4,$f20
    # Line 3006
    add.s	$f24,$f3,$f24
    b	.L0db070cc
    # Line 3005
    add.s	$f22,$f2,$f22
.L0db07814:
    # Line 3016
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3018
    lwc1	$f3,8($v1)
    # Line 3017
    lwc1	$f2,4($v1)
    # Line 3018
    mul.s	$f3,$f3,$f5
    # Line 3016
    lwc1	$f1,0($v1)
    # Line 3017
    mul.s	$f2,$f2,$f5
    # Line 3016
    mul.s	$f1,$f1,$f5
    # Line 3018
    add.s	$f20,$f3,$f20
    # Line 3017
    add.s	$f24,$f2,$f24
    b	.L0db070fc
    # Line 3016
    add.s	$f22,$f1,$f22
.L0db07860:
    # Line 3027
    ld	$v1,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3029
    lwc1	$f2,8($a2)
    # Line 3028
    lwc1	$f1,4($a2)
    # Line 3029
    mul.s	$f2,$f2,$f8
    # Line 3027
    lwc1	$f4,0($a2)
    # Line 3028
    mul.s	$f1,$f1,$f8
    # Line 3027
    mul.s	$f4,$f4,$f8
    # Line 3029
    add.s	$f20,$f2,$f20
    # Line 3028
    add.s	$f24,$f1,$f24
    b	.L0db0712c
    # Line 3027
    add.s	$f22,$f4,$f22
.L0db078a8:
    ld	$a1,112($sp)
    # Line 3038
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$s4
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3040
    lwc1	$f1,8($v1)
    # Line 3039
    lwc1	$f4,4($v1)
    # Line 3040
    mul.s	$f1,$f1,$f7
    # Line 3038
    lwc1	$f3,0($v1)
    # Line 3039
    mul.s	$f4,$f4,$f7
    # Line 3038
    mul.s	$f3,$f3,$f7
    # Line 3040
    add.s	$f20,$f1,$f20
    # Line 3039
    add.s	$f24,$f4,$f24
    b	.L0db067d0
    # Line 3038
    add.s	$f22,$f3,$f22
.L0db078f0:
    # Line 3080
    move	$v0,$zero
    # ld	gp,184(sp)
    ld	$s0,160($sp)
    ld	$s1,152($sp)
    ld	$s2,232($sp)
    ld	$s3,208($sp)
    ld	$s4,168($sp)
    ld	$s5,136($sp)
    ld	$s6,200($sp)
    ld	$s7,128($sp)
    ld	$s8,192($sp)
    ldc1	$f20,72($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,48($sp)
    ldc1	$f26,64($sp)
    ld	$ra,176($sp)
    ldc1	$f28,40($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0db07940:
    ldc1	$f26,0($sp)
    # Line 2808
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2807
    sub.s	$f26,$f6,$f26
    sdc1	$f0,8($sp)
    sdc1	$f5,16($sp)
    # Line 2808
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 2810
    li	$s5,1
    sd	$s5,224($sp)
    # Line 2808
    and	$s5,$v0,$s8
    # Line 2809
    addiu	$s4,$s5,1
    # Line 2810
    b	.L0db06df0
    # Line 2809
    and	$s4,$s4,$s8
.L0db07974:
    ldc1	$f28,0($sp)
    # Line 2823
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2822
    sub.s	$f28,$f5,$f28
    # Line 2823
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,224($sp)
    ld	$at,216($sp)
    # Line 2825
    addiu	$v1,$v1,1
    sd	$v1,224($sp)
    # Line 2823
    and	$s6,$v0,$at
    # Line 2824
    addiu	$s7,$s6,1
    # Line 2825
    b	.L0db06e3c
    # Line 2824
    and	$s7,$s7,$at
.L0db079a8:
    ldc1	$f26,0($sp)
    # Line 2932
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2931
    sub.s	$f26,$f6,$f26
    # Line 2932
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 2934
    li	$s5,1
    sd	$s5,224($sp)
    # Line 2932
    and	$s5,$v0,$s8
    # Line 2933
    addiu	$s4,$s5,1
    # Line 2934
    b	.L0db06fdc
    # Line 2933
    and	$s4,$s4,$s8
.L0db079d4:
    ldc1	$f28,0($sp)
    # Line 2947
    # lw $t9, -23708($gp) # &__glFloor
    # Line 2946
    sub.s	$f28,$f5,$f28
    # Line 2947
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,224($sp)
    ld	$at,216($sp)
    # Line 2949
    addiu	$v1,$v1,1
    sd	$v1,224($sp)
    # Line 2947
    and	$s6,$v0,$at
    # Line 2948
    addiu	$s7,$s6,1
    # Line 2949
    b	.L0db07028
    # Line 2948
    and	$s7,$s7,$at
.end __glTextureRGB_L_LML_Span

# Function: __glTextureRGB_L_LML_StippledSpan
# Declared: Line 3090 (Source lines: 3091-3679)
# Address: 0x0db07a08 - 0x0db09008 (Size: 5632 bytes, Frame: 192)
.globl __glTextureRGB_L_LML_StippledSpan
.ent __glTextureRGB_L_LML_StippledSpan
__glTextureRGB_L_LML_StippledSpan:
    # Line 3123
    lwc1	$f6,30244($a0)
    # Line 3122
    lwc1	$f8,30240($a0)
    # Line 3121
    lwc1	$f7,30232($a0)
    # Line 3120
    lwc1	$f5,30228($a0)
    # Line 3091
    addiu	$sp,$sp,-320
    sd	$s2,120($sp)
    sd	$s5,144($sp)
    sd	$s6,128($sp)
    sd	$s7,152($sp)
    sd	$s8,160($sp)
    sdc1	$f20,32($sp)
    sdc1	$f22,48($sp)
    sdc1	$f24,56($sp)
    sdc1	$f26,40($sp)
    sdc1	$f28,64($sp)
    sdc1	$f30,72($sp)
    sd	$ra,136($sp)
    sd	$s1,168($sp)
    move	$s1,$a0
    sd	$s3,192($sp)
    # Line 3117
    lw	$s3,30468($a0)
    sd	$s0,176($sp)
    # Line 3115
    lw	$s0,28216($a0)
    # sd	gp,200(sp)
    # Line 3091
    lui	$v0,0xf
    addiu	$v0,$v0,-416
    # addu	gp,t9,v0
    # Line 3118
    lw	$v1,30476($a0)
    # Line 3100
    lwc1	$f0,3280($a0)
    # Line 3116
    lw	$at,30252($a0)
    sd	$v1,208($sp)
    sdc1	$f0,0($sp)
    sd	$s4,184($sp)
    # Line 3113
    lw	$s4,2376($a0)
    sd	$at,216($sp)
    # Line 3123
    beqz	$at,.L0db08fb8
    # Line 3113
    lw	$s4,0($s4)
    sd	$s2,120($sp)
    sd	$s6,128($sp)
    sd	$ra,136($sp)
    sd	$s5,144($sp)
    sd	$s7,152($sp)
    sd	$s8,160($sp)
    sdc1	$f20,32($sp)
    sdc1	$f26,40($sp)
    sdc1	$f22,48($sp)
    sdc1	$f24,56($sp)
    sdc1	$f28,64($sp)
    # Line 3123
    li	$v0,-1
    mtc1	$zero,$f30
    li	$a0,10497
    xori	$a1,$s4,0x2101
    sltiu	$a1,$a1,1
    b	.L0db07aec
    sd	$a1,224($sp)
.L0db07ae4:
    ld	$a2,216($sp)
    # Line 3134
    beqz	$a2,.L0db08fb8
.L0db07aec:
    ld	$at,216($sp)
    # Line 3126
    move	$v1,$at
    sd	$at,248($sp)
    slti	$at,$at,33
    bnez	$at,.L0db07b08
    # Line 3128
    li	$a1,32
    sd	$a1,248($sp)
.L0db07b08:
    lui	$s2,0x8000
    # Line 3132
    ld	$at,208($sp)
    # Line 3130
    ld	$a2,248($sp)
    ld	$v1,216($sp)
    # Line 3132
    lw	$a1,0($at)
    addiu	$at,$at,4
    # Line 3130
    subu	$v1,$v1,$a2
    # Line 3134
    addiu	$a2,$a2,-1
    sd	$v1,216($sp)
    sd	$a2,248($sp)
    sd	$at,208($sp)
    bltz	$a2,.L0db07ae4
    sd	$a1,232($sp)
    b	.L0db07dfc
    ld	$at,232($sp)
.L0db07b44:
    # Line 3288
    trunc.w.s	$f20,$f11
    # Line 3284
    lw	$a6,236($s0)
    # Line 3288
    cvt.s.w	$f9,$f20
    mfc1	$a5,$f20
    # Line 3291
    sll	$s5,$a6,0x2
    subu	$s5,$s5,$a6
    # Line 3288
    addiu	$at,$a5,1
    slt	$a2,$a6,$at
    sub.s	$f9,$f11,$f9
    slti	$at,$at,0
    or	$a2,$a2,$at
    beqz	$a2,.L0db082d4
    sub.s	$f20,$f10,$f9
    # Line 3291
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a6
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$a3
    # Line 3293
    lw	$at,0($s5)
    # Line 3292
    lw	$a2,44($s5)
    sd	$at,104($sp)
    # Line 3297
    lwc1	$f11,32($s5)
    # Line 3295
    lw	$a1,24($s5)
    # Line 3294
    lw	$v1,20($s5)
    # Line 3298
    mul.s	$f10,$f0,$f11
    sd	$a2,96($sp)
    # Line 3294
    addiu	$v1,$v1,-1
    # Line 3295
    addiu	$a1,$a1,-1
    sd	$a1,88($sp)
    sd	$v1,80($sp)
    # Line 3298
    beq	$a0,$a4,.L0db08a38
    mov.s	$f26,$f10
    # Line 3302
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db0823c
    # Line 3304
    c.lt.s	$f11,$f10
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    mov.s	$f26,$f30
.L0db07be4:
    sdc1	$f5,280($sp)
.L0db07be8:
    # Line 3306
    ldc1	$f21,0($sp)
    sdc1	$f6,272($sp)
    # Line 3307
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3306
    sub.s	$f26,$f26,$f21
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    # Line 3307
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s8,$v0
    # Line 3308
    addiu	$s7,$v0,1
.L0db07c10:
    # Line 3311
    lwc1	$f5,36($s5)
    # Line 3312
    ldc1	$f0,24($sp)
    mul.s	$f0,$f0,$f5
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db08a70
    mov.s	$f28,$f0
    # Line 3316
    c.lt.s	$f0,$f30
    nop
    bc1fl	.L0db08260
    # Line 3318
    c.lt.s	$f5,$f0
    mov.s	$f28,$f30
.L0db07c40:
    # Line 3320
    ldc1	$f1,0($sp)
.L0db07c44:
    # Line 3321
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3320
    sub.s	$f28,$f28,$f1
    # Line 3321
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 3322
    addiu	$s5,$v0,1
.L0db07c5c:
    # Line 3325
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3326
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3325
    mov.s	$f26,$f0
    # Line 3326
    jal	__glFrac
    mov.s	$f12,$f28
    li	$v0,-1
    li	$a0,10497
    ldc1	$f8,256($sp)
    ldc1	$f7,264($sp)
    ldc1	$f6,272($sp)
    ldc1	$f5,280($sp)
    # Line 3328
    ld	$a5,80($sp)
    ld	$a3,88($sp)
    # Line 3327
    lwc1	$f10,3284($s1)
    # Line 3328
    nor	$a5,$a5,$zero
    nor	$a3,$a3,$zero
    sub.s	$f9,$f10,$f0
    and	$a4,$a3,$s6
    and	$a6,$a5,$s8
    # Line 3327
    sub.s	$f13,$f10,$f26
    # Line 3347
    mul.s	$f12,$f26,$f9
    # Line 3328
    or	$a1,$a6,$a4
    beqz	$a1,.L0db08834
    mul.s	$f11,$f13,$f9
    # Line 3341
    lwc1	$f22,164($s0)
    # Line 3340
    lwc1	$f20,160($s0)
    # Line 3341
    mul.s	$f22,$f22,$f11
    # Line 3339
    lwc1	$f24,156($s0)
    # Line 3340
    mul.s	$f20,$f20,$f11
    # Line 3339
    mul.s	$f24,$f24,$f11
.L0db07cdc:
    # Line 3347
    and	$a7,$a5,$s7
    or	$at,$a7,$a4
    beqz	$at,.L0db08874
    # Line 3358
    and	$a4,$a3,$s5
    # Line 3352
    lwc1	$f3,164($s0)
    # Line 3351
    lwc1	$f2,160($s0)
    # Line 3352
    mul.s	$f3,$f3,$f12
    # Line 3350
    lwc1	$f1,156($s0)
    # Line 3351
    mul.s	$f2,$f2,$f12
    # Line 3350
    mul.s	$f1,$f1,$f12
    # Line 3352
    add.s	$f22,$f3,$f22
    # Line 3351
    add.s	$f20,$f2,$f20
    # Line 3350
    add.s	$f24,$f1,$f24
.L0db07d10:
    # Line 3358
    or	$v1,$a6,$a4
    beqz	$v1,.L0db088c0
    mul.s	$f9,$f0,$f13
    # Line 3363
    lwc1	$f2,164($s0)
    # Line 3362
    lwc1	$f1,160($s0)
    # Line 3363
    mul.s	$f2,$f2,$f9
    # Line 3361
    lwc1	$f4,156($s0)
    # Line 3362
    mul.s	$f1,$f1,$f9
    # Line 3361
    mul.s	$f4,$f4,$f9
    # Line 3363
    add.s	$f22,$f2,$f22
    # Line 3362
    add.s	$f20,$f1,$f20
    # Line 3361
    add.s	$f24,$f4,$f24
.L0db07d40:
    # Line 3369
    or	$a1,$a7,$a4
    beqz	$a1,.L0db0890c
    mul.s	$f13,$f0,$f26
    # Line 3374
    lwc1	$f1,164($s0)
    # Line 3373
    lwc1	$f4,160($s0)
    # Line 3374
    mul.s	$f1,$f1,$f13
    # Line 3372
    lwc1	$f3,156($s0)
    # Line 3373
    mul.s	$f4,$f4,$f13
    # Line 3372
    mul.s	$f3,$f3,$f13
    # Line 3374
    add.s	$f22,$f1,$f22
    # Line 3373
    add.s	$f20,$f4,$f20
    # Line 3372
    add.s	$f24,$f3,$f24
.L0db07d70:
    li	$a2,8448
    # Line 3632
    beq	$s4,$a2,.L0db08214
.L0db07d78:
    li	$v1,7681
    li	$at,0x8062
    # Line 3645
    beq	$s4,$at,.L0db080cc
    ld	$a1,224($sp)
    beq	$s4,$v1,.L0db080cc
    move	$a3,$zero
    or	$a1,$a3,$a1
.L0db07d94:
    beqzl	$a1,.L0db08274
    # Line 3658
    sub.s	$f2,$f10,$f24
    # Line 3648
    lwc1	$f4,30756($s1)
    mul.s	$f4,$f4,$f24
    swc1	$f4,0($s3)
    # Line 3649
    lwc1	$f3,30760($s1)
    mul.s	$f3,$f3,$f20
    swc1	$f3,4($s3)
    # Line 3650
    lwc1	$f2,30764($s1)
    mul.s	$f2,$f2,$f22
    swc1	$f2,8($s3)
.L0db07dc0:
    # Line 3672
    srl	$s2,$s2,0x1
    # Line 3669
    lwc1	$f4,30400($s1)
    # Line 3668
    lwc1	$f3,30396($s1)
    # Line 3669
    add.s	$f6,$f4,$f6
    # Line 3667
    lwc1	$f2,30388($s1)
    # Line 3668
    add.s	$f8,$f3,$f8
    # Line 3666
    lwc1	$f1,30384($s1)
    # Line 3667
    add.s	$f7,$f2,$f7
    # Line 3134
    ld	$a2,248($sp)
    # Line 3670
    addiu	$s3,$s3,16
    # Line 3666
    add.s	$f5,$f1,$f5
    # Line 3134
    addiu	$a2,$a2,-1
    beq	$a2,$v0,.L0db07ae4
    sd	$a2,248($sp)
    ld	$at,232($sp)
.L0db07dfc:
    and	$at,$at,$s2
    beqz	$at,.L0db07dc0
    # Line 3280
    mov.s	$f11,$f30
    # Line 3136
    lwc1	$f10,3284($s1)
    div.s	$f0,$f10,$f8
    mul.s	$f9,$f6,$f0
    lwc1	$f2,240($s0)
    mul.s	$f1,$f7,$f0
    lw	$a3,228($s0)
    c.le.s	$f9,$f2
    lw	$a4,4($s0)
    mul.s	$f0,$f5,$f0
    bc1f	.L0db0803c
    sdc1	$f1,24($sp)
    # Line 3146
    move	$s5,$a3
    # Line 3148
    lw	$at,0($a3)
    sd	$zero,240($sp)
    # Line 3147
    lw	$a2,44($a3)
    sd	$at,104($sp)
    # Line 3152
    lwc1	$f11,32($a3)
    # Line 3150
    lw	$a1,24($a3)
    # Line 3149
    lw	$v1,20($a3)
    # Line 3153
    mul.s	$f10,$f0,$f11
    sd	$a2,96($sp)
    # Line 3149
    addiu	$v1,$v1,-1
    # Line 3150
    addiu	$a1,$a1,-1
    sd	$a1,88($sp)
    sd	$v1,80($sp)
    # Line 3153
    beq	$a0,$a4,.L0db089c0
    mov.s	$f26,$f10
    # Line 3158
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db080d8
    # Line 3160
    c.lt.s	$f11,$f10
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    mov.s	$f26,$f30
.L0db07e98:
    sdc1	$f5,280($sp)
.L0db07e9c:
    # Line 3162
    ldc1	$f3,0($sp)
    sdc1	$f6,272($sp)
    # Line 3163
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3162
    sub.s	$f26,$f26,$f3
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    # Line 3163
    jal	__glFloor
    mov.s	$f12,$f26
    li	$a0,10497
    move	$s8,$v0
    # Line 3164
    addiu	$s7,$v0,1
.L0db07ec8:
    # Line 3167
    lwc1	$f5,36($s5)
    # Line 3168
    ldc1	$f0,24($sp)
    mul.s	$f0,$f0,$f5
    lw	$v1,8($s0)
    beq	$v1,$a0,.L0db08a04
    mov.s	$f28,$f0
    # Line 3173
    c.lt.s	$f0,$f30
    nop
    bc1fl	.L0db080fc
    # Line 3175
    c.lt.s	$f5,$f0
    mov.s	$f28,$f30
.L0db07ef4:
    # Line 3177
    ldc1	$f1,0($sp)
.L0db07ef8:
    # Line 3178
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3177
    sub.s	$f28,$f28,$f1
    # Line 3178
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 3179
    addiu	$s5,$v0,1
.L0db07f10:
    # Line 3182
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3183
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3182
    mov.s	$f26,$f0
    # Line 3183
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3185
    mul.s	$f13,$f0,$f26
    li	$v0,-1
    li	$a0,10497
    # Line 3184
    lwc1	$f10,3284($s1)
    ldc1	$f8,256($sp)
    ldc1	$f7,264($sp)
    # Line 3185
    sub.s	$f1,$f10,$f0
    ldc1	$f6,272($sp)
    ldc1	$f5,280($sp)
    # Line 3184
    sub.s	$f11,$f10,$f26
    # Line 3185
    mul.s	$f12,$f26,$f1
    ld	$a1,240($sp)
    mul.s	$f9,$f0,$f11
    li	$a2,2
    beq	$a1,$a2,.L0db08110
    mul.s	$f11,$f11,$f1
    ld	$a5,80($sp)
    # Line 3216
    ld	$a3,88($sp)
    nor	$a5,$a5,$zero
    nor	$a3,$a3,$zero
    and	$a4,$a3,$s6
    and	$a6,$a5,$s8
    or	$at,$a6,$a4
    beqz	$at,.L0db08718
    # Line 3231
    and	$a7,$a5,$s7
    # Line 3225
    lwc1	$f22,164($s0)
    # Line 3224
    lwc1	$f20,160($s0)
    # Line 3225
    mul.s	$f22,$f22,$f11
    # Line 3223
    lwc1	$f24,156($s0)
    # Line 3224
    mul.s	$f20,$f20,$f11
    # Line 3223
    mul.s	$f24,$f24,$f11
.L0db07fa8:
    # Line 3231
    or	$at,$a7,$a4
    beqz	$at,.L0db08758
    # Line 3242
    and	$a4,$a3,$s5
    # Line 3236
    lwc1	$f3,164($s0)
    # Line 3235
    lwc1	$f2,160($s0)
    # Line 3236
    mul.s	$f3,$f3,$f12
    # Line 3234
    lwc1	$f1,156($s0)
    # Line 3235
    mul.s	$f2,$f2,$f12
    # Line 3234
    mul.s	$f1,$f1,$f12
    # Line 3236
    add.s	$f22,$f3,$f22
    # Line 3235
    add.s	$f20,$f2,$f20
    # Line 3234
    add.s	$f24,$f1,$f24
.L0db07fd8:
    # Line 3242
    or	$v1,$a6,$a4
    beqz	$v1,.L0db087a4
    ld	$at,96($sp)
    # Line 3247
    lwc1	$f2,164($s0)
    # Line 3246
    lwc1	$f1,160($s0)
    # Line 3247
    mul.s	$f2,$f2,$f9
    # Line 3245
    lwc1	$f4,156($s0)
    # Line 3246
    mul.s	$f1,$f1,$f9
    # Line 3245
    mul.s	$f4,$f4,$f9
    # Line 3247
    add.s	$f22,$f2,$f22
    # Line 3246
    add.s	$f20,$f1,$f20
    # Line 3245
    add.s	$f24,$f4,$f24
.L0db08008:
    # Line 3253
    or	$a1,$a7,$a4
    beqz	$a1,.L0db087ec
    # Line 3262
    ld	$a2,104($sp)
    # Line 3258
    lwc1	$f1,164($s0)
    # Line 3257
    lwc1	$f4,160($s0)
    # Line 3258
    mul.s	$f1,$f1,$f13
    # Line 3256
    lwc1	$f3,156($s0)
    # Line 3257
    mul.s	$f4,$f4,$f13
    # Line 3256
    mul.s	$f3,$f3,$f13
    # Line 3258
    add.s	$f22,$f1,$f22
    # Line 3257
    add.s	$f20,$f4,$f20
    # Line 3258
    b	.L0db07d70
    # Line 3256
    add.s	$f24,$f3,$f24
.L0db0803c:
    # Line 3264
    c.eq.s	$f9,$f30
    nop
    bc1t	.L0db07b44
    # Line 3275
    move	$a5,$zero
    # Line 3276
    trunc.w.s	$f2,$f9
    mfc1	$a6,$f2
    nop
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db08098
    li	$at,1
    addiu	$a5,$a5,1
.L0db08068:
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db08094
    nop
    addiu	$a5,$a5,1
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db08094
    nop
    addiu	$a5,$a5,1
    sra	$a6,$a6,0x1
    bnezl	$a6,.L0db08068
    addiu	$a5,$a5,1
.L0db08094:
    li	$at,1
.L0db08098:
    # Line 3278
    sllv	$at,$at,$a5
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f9,$f2
    div.s	$f1,$f1,$f2
    mtc1	$a5,$f11
    nop
    cvt.s.w	$f11,$f11
    add.s	$f11,$f11,$f1
    ldc1	$f1,0($sp)
    b	.L0db07b44
    mul.s	$f11,$f11,$f1
.L0db080cc:
    # Line 3645
    li	$a3,1
    b	.L0db07d94
    or	$a1,$a3,$a1
.L0db080d8:
    nop
    # Line 3160
    bc1fl	.L0db07e9c
    sdc1	$f5,280($sp)
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    b	.L0db07e98
    # Line 3161
    mov.s	$f26,$f11
.L0db080fc:
    nop
    # Line 3175
    bc1f	.L0db07ef8
    # Line 3177
    ldc1	$f1,0($sp)
    b	.L0db07ef4
    # Line 3176
    mov.s	$f28,$f5
.L0db08110:
    # Line 3214
    ld	$v1,104($sp)
    ld	$a3,96($sp)
    sllv	$at,$s5,$a3
    addu	$a1,$at,$s7
    sll	$a2,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v1
    addu	$a1,$a1,$a2
    # Line 3215
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f13
    # Line 3214
    addu	$at,$at,$s8
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3215
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f9
    # Line 3216
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f13
    sd	$v0,288($sp)
    # Line 3214
    sllv	$a3,$s6,$a3
    addu	$v0,$a3,$s7
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 3215
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f12
    # Line 3216
    lwc1	$f0,8($at)
    # Line 3214
    addu	$a3,$a3,$s8
    # Line 3216
    mul.s	$f0,$f0,$f12
    # Line 3214
    sll	$v0,$a3,0x1
    sll	$a3,$a3,0x2
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$a3,$a3,$v0
    # Line 3216
    lwc1	$f22,8($a3)
    lwc1	$f24,8($a2)
    mul.s	$f22,$f22,$f11
    mul.s	$f24,$f24,$f9
    # Line 3215
    lwc1	$f20,4($a3)
    mul.s	$f20,$f20,$f11
    # Line 3216
    add.s	$f22,$f22,$f0
    # Line 3214
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f12
    # Line 3216
    add.s	$f22,$f22,$f24
    # Line 3214
    lwc1	$f24,0($a3)
    mul.s	$f24,$f24,$f11
    # Line 3216
    add.s	$f22,$f22,$f2
    # Line 3214
    lwc1	$f2,0($a2)
    # Line 3215
    add.s	$f20,$f20,$f4
    # Line 3214
    mul.s	$f2,$f2,$f9
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($a1)
    # Line 3215
    add.s	$f20,$f20,$f3
    # Line 3214
    mul.s	$f0,$f0,$f13
    add.s	$f24,$f24,$f2
    li	$v1,8448
    # Line 3215
    add.s	$f20,$f20,$f1
    ld	$v0,288($sp)
    # Line 3632
    bne	$s4,$v1,.L0db07d78
    # Line 3214
    add.s	$f24,$f24,$f0
.L0db08214:
    # Line 3642
    lwc1	$f3,4($s3)
    # Line 3643
    lwc1	$f4,8($s3)
    # Line 3642
    mul.s	$f3,$f3,$f20
    # Line 3641
    lwc1	$f2,0($s3)
    # Line 3643
    mul.s	$f4,$f4,$f22
    # Line 3641
    mul.s	$f2,$f2,$f24
    # Line 3643
    swc1	$f4,8($s3)
    # Line 3642
    swc1	$f3,4($s3)
    # Line 3643
    b	.L0db07dc0
    # Line 3641
    swc1	$f2,0($s3)
.L0db0823c:
    nop
    # Line 3304
    bc1fl	.L0db07be8
    sdc1	$f5,280($sp)
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    b	.L0db07be4
    # Line 3305
    mov.s	$f26,$f11
.L0db08260:
    nop
    # Line 3318
    bc1f	.L0db07c44
    # Line 3320
    ldc1	$f1,0($sp)
    b	.L0db07c40
    # Line 3319
    mov.s	$f28,$f5
.L0db08274:
    # Line 3658
    lwc1	$f1,0($s3)
    # Line 3656
    lw	$at,2376($s1)
    # Line 3658
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($at)
    mul.s	$f2,$f2,$f24
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s3)
    # Line 3659
    lwc1	$f4,3284($s1)
    sub.s	$f4,$f4,$f20
    lwc1	$f3,4($s3)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($at)
    mul.s	$f4,$f4,$f20
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s3)
    # Line 3660
    lwc1	$f2,3284($s1)
    sub.s	$f2,$f2,$f22
    lwc1	$f1,8($s3)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($at)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    b	.L0db07dc0
    swc1	$f1,8($s3)
.L0db082d4:
    # Line 3390
    sll	$s5,$a5,0x2
    subu	$s5,$s5,$a5
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a5
    sll	$s5,$s5,0x2
    sd	$s5,112($sp)
    addu	$s5,$a3,$s5
    # Line 3392
    lw	$at,0($s5)
    sd	$zero,240($sp)
    # Line 3391
    lw	$a2,44($s5)
    sd	$at,104($sp)
    # Line 3396
    lwc1	$f11,32($s5)
    # Line 3394
    lw	$a1,24($s5)
    # Line 3393
    lw	$v1,20($s5)
    # Line 3397
    mul.s	$f10,$f0,$f11
    sd	$a2,96($sp)
    # Line 3393
    addiu	$v1,$v1,-1
    # Line 3394
    addiu	$a1,$a1,-1
    sd	$a1,88($sp)
    sd	$v1,80($sp)
    # Line 3397
    beq	$a0,$a4,.L0db08ed8
    mov.s	$f26,$f10
    # Line 3402
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db08958
    # Line 3404
    c.lt.s	$f11,$f10
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    sdc1	$f0,8($sp)
    sdc1	$f9,16($sp)
    mov.s	$f26,$f30
.L0db08358:
    sdc1	$f5,280($sp)
.L0db0835c:
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    # Line 3406
    ldc1	$f3,0($sp)
    sdc1	$f8,256($sp)
    # Line 3407
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3406
    sub.s	$f26,$f26,$f3
    sdc1	$f0,8($sp)
    sdc1	$f9,16($sp)
    # Line 3407
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s8,$v0
    # Line 3408
    addiu	$s7,$v0,1
.L0db0838c:
    # Line 3411
    lwc1	$f5,36($s5)
    # Line 3412
    ldc1	$f0,24($sp)
    mul.s	$f0,$f0,$f5
    lw	$at,8($s0)
    li	$v1,10497
    beq	$at,$v1,.L0db08f20
    mov.s	$f28,$f0
    # Line 3417
    c.lt.s	$f0,$f30
    nop
    bc1fl	.L0db08984
    # Line 3419
    c.lt.s	$f5,$f0
    mov.s	$f28,$f30
.L0db083bc:
    # Line 3421
    ldc1	$f1,0($sp)
.L0db083c0:
    # Line 3422
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3421
    sub.s	$f28,$f28,$f1
    # Line 3422
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 3423
    addiu	$s5,$v0,1
.L0db083d8:
    # Line 3426
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3427
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3426
    mov.s	$f26,$f0
    # Line 3427
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3428
    lwc1	$f1,3284($s1)
    li	$a2,2
    # Line 3429
    mul.s	$f7,$f26,$f20
    # Line 3428
    sub.s	$f8,$f1,$f26
    # Line 3429
    ld	$a1,240($sp)
    ld	$a5,80($sp)
    # Line 3460
    ld	$a3,88($sp)
    # Line 3429
    mul.s	$f8,$f8,$f20
    # Line 3460
    nor	$a5,$a5,$zero
    # Line 3429
    sub.s	$f1,$f1,$f0
    mul.s	$f6,$f0,$f7
    # Line 3475
    and	$a7,$a5,$s7
    # Line 3460
    nor	$a3,$a3,$zero
    # Line 3429
    mul.s	$f7,$f7,$f1
    # Line 3460
    and	$a4,$a3,$s6
    and	$a6,$a5,$s8
    # Line 3429
    mul.s	$f5,$f0,$f8
    # Line 3460
    or	$at,$a6,$a4
    # Line 3429
    beq	$a1,$a2,.L0db08a98
    mul.s	$f8,$f8,$f1
    ld	$a2,96($sp)
    # Line 3460
    beqz	$at,.L0db08ca4
    # Line 3473
    sllv	$a2,$s6,$a2
    # Line 3469
    lwc1	$f22,164($s0)
    # Line 3468
    lwc1	$f20,160($s0)
    # Line 3469
    mul.s	$f22,$f22,$f8
    # Line 3467
    lwc1	$f24,156($s0)
    # Line 3468
    mul.s	$f20,$f20,$f8
    # Line 3467
    mul.s	$f24,$f24,$f8
.L0db08468:
    # Line 3475
    or	$at,$a7,$a4
    beqz	$at,.L0db08cdc
    # Line 3486
    and	$a4,$a3,$s5
    # Line 3480
    lwc1	$f3,164($s0)
    # Line 3479
    lwc1	$f2,160($s0)
    # Line 3480
    mul.s	$f3,$f3,$f7
    # Line 3478
    lwc1	$f1,156($s0)
    # Line 3479
    mul.s	$f2,$f2,$f7
    # Line 3478
    mul.s	$f1,$f1,$f7
    # Line 3480
    add.s	$f22,$f3,$f22
    # Line 3479
    add.s	$f20,$f2,$f20
    # Line 3478
    add.s	$f24,$f1,$f24
.L0db08498:
    # Line 3486
    or	$v1,$a6,$a4
    beqz	$v1,.L0db08d28
    # Line 3495
    ld	$at,104($sp)
    # Line 3491
    lwc1	$f2,164($s0)
    # Line 3490
    lwc1	$f1,160($s0)
    # Line 3491
    mul.s	$f2,$f2,$f5
    # Line 3489
    lwc1	$f4,156($s0)
    # Line 3490
    mul.s	$f1,$f1,$f5
    # Line 3489
    mul.s	$f4,$f4,$f5
    # Line 3491
    add.s	$f22,$f2,$f22
    # Line 3490
    add.s	$f20,$f1,$f20
    # Line 3489
    add.s	$f24,$f4,$f24
.L0db084c8:
    # Line 3497
    or	$a1,$a7,$a4
    beqz	$a1,.L0db08d70
    ld	$v1,96($sp)
    # Line 3502
    lwc1	$f1,164($s0)
    # Line 3501
    lwc1	$f4,160($s0)
    # Line 3502
    mul.s	$f1,$f1,$f6
    # Line 3500
    lwc1	$f3,156($s0)
    # Line 3501
    mul.s	$f4,$f4,$f6
    # Line 3500
    mul.s	$f3,$f3,$f6
    # Line 3502
    add.s	$f22,$f1,$f22
    # Line 3501
    add.s	$f20,$f4,$f20
    # Line 3500
    add.s	$f24,$f3,$f24
.L0db084f8:
    # Line 3514
    ld	$v1,112($sp)
    lw	$s5,228($s0)
    sd	$zero,240($sp)
    li	$at,10497
    addu	$s5,$s5,$v1
    addiu	$s5,$s5,100
    # Line 3515
    lw	$a1,44($s5)
    # Line 3521
    ldc1	$f10,8($sp)
    # Line 3516
    lw	$v1,0($s5)
    sd	$a1,96($sp)
    # Line 3517
    lw	$a1,20($s5)
    # Line 3520
    lwc1	$f11,32($s5)
    sd	$v1,104($sp)
    # Line 3518
    lw	$v1,24($s5)
    # Line 3521
    mul.s	$f10,$f10,$f11
    lw	$a2,4($s0)
    # Line 3518
    addiu	$v1,$v1,-1
    # Line 3517
    addiu	$a1,$a1,-1
    sd	$a1,80($sp)
    sd	$v1,88($sp)
    # Line 3521
    beq	$a2,$at,.L0db08f54
    mov.s	$f26,$f10
    # Line 3526
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db08998
    # Line 3528
    c.lt.s	$f11,$f10
    mov.s	$f26,$f30
.L0db08564:
    # Line 3530
    ldc1	$f11,0($sp)
.L0db08568:
    # Line 3531
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3530
    sub.s	$f26,$f26,$f11
    # Line 3531
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s8,$v0
    # Line 3532
    addiu	$s7,$v0,1
.L0db08580:
    # Line 3535
    lwc1	$f5,36($s5)
    # Line 3536
    ldc1	$f0,24($sp)
    mul.s	$f0,$f0,$f5
    lw	$a1,8($s0)
    li	$a2,10497
    beq	$a1,$a2,.L0db08f84
    mov.s	$f28,$f0
    # Line 3541
    c.lt.s	$f0,$f30
    nop
    bc1fl	.L0db089ac
    # Line 3543
    c.lt.s	$f5,$f0
    mov.s	$f28,$f30
.L0db085b0:
    # Line 3545
    ldc1	$f1,0($sp)
.L0db085b4:
    # Line 3546
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3545
    sub.s	$f28,$f28,$f1
    # Line 3546
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 3547
    addiu	$s5,$v0,1
.L0db085cc:
    # Line 3550
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3551
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3550
    mov.s	$f26,$f0
    # Line 3551
    jal	__glFrac
    mov.s	$f12,$f28
    li	$v0,-1
    # Line 3553
    ldc1	$f13,16($sp)
    # Line 3552
    lwc1	$f10,3284($s1)
    li	$a0,10497
    # Line 3553
    mul.s	$f9,$f13,$f26
    # Line 3552
    sub.s	$f1,$f10,$f26
    ldc1	$f8,256($sp)
    ldc1	$f7,264($sp)
    ldc1	$f6,272($sp)
    # Line 3553
    mul.s	$f13,$f13,$f1
    ldc1	$f5,280($sp)
    sub.s	$f1,$f10,$f0
    mul.s	$f12,$f0,$f9
    li	$v1,2
    mul.s	$f9,$f9,$f1
    # Line 3584
    ld	$a3,88($sp)
    # Line 3553
    ld	$at,240($sp)
    mul.s	$f11,$f0,$f13
    # Line 3584
    nor	$a3,$a3,$zero
    # Line 3553
    beq	$at,$v1,.L0db08b98
    mul.s	$f13,$f13,$f1
    ld	$v1,96($sp)
    ld	$a5,80($sp)
    # Line 3584
    and	$a4,$a3,$s6
    nor	$a5,$a5,$zero
    and	$a6,$a5,$s8
    or	$a1,$a6,$a4
    beqz	$a1,.L0db08e94
    # Line 3597
    sllv	$v1,$s6,$v1
    # Line 3593
    lwc1	$f4,164($s0)
    # Line 3592
    lwc1	$f3,160($s0)
    # Line 3593
    mul.s	$f4,$f4,$f13
    # Line 3591
    lwc1	$f2,156($s0)
    # Line 3592
    mul.s	$f3,$f3,$f13
    # Line 3591
    mul.s	$f2,$f2,$f13
    # Line 3593
    add.s	$f22,$f4,$f22
    # Line 3592
    add.s	$f20,$f3,$f20
    # Line 3591
    add.s	$f24,$f2,$f24
.L0db08680:
    # Line 3599
    and	$a7,$a5,$s7
    or	$at,$a7,$a4
    beqz	$at,.L0db08db8
    # Line 3610
    and	$a4,$a3,$s5
    # Line 3604
    lwc1	$f3,164($s0)
    # Line 3603
    lwc1	$f2,160($s0)
    # Line 3604
    mul.s	$f3,$f3,$f9
    # Line 3602
    lwc1	$f1,156($s0)
    # Line 3603
    mul.s	$f2,$f2,$f9
    # Line 3602
    mul.s	$f1,$f1,$f9
    # Line 3604
    add.s	$f22,$f3,$f22
    # Line 3603
    add.s	$f20,$f2,$f20
    # Line 3602
    add.s	$f24,$f1,$f24
.L0db086b4:
    # Line 3610
    or	$v1,$a6,$a4
    beqz	$v1,.L0db08e04
    # Line 3619
    ld	$a1,104($sp)
    # Line 3615
    lwc1	$f2,164($s0)
    # Line 3614
    lwc1	$f1,160($s0)
    # Line 3615
    mul.s	$f2,$f2,$f11
    # Line 3613
    lwc1	$f4,156($s0)
    # Line 3614
    mul.s	$f1,$f1,$f11
    # Line 3613
    mul.s	$f4,$f4,$f11
    # Line 3615
    add.s	$f22,$f2,$f22
    # Line 3614
    add.s	$f20,$f1,$f20
    # Line 3613
    add.s	$f24,$f4,$f24
.L0db086e4:
    # Line 3621
    or	$a1,$a7,$a4
    beqz	$a1,.L0db08e4c
    # Line 3630
    ld	$at,104($sp)
    # Line 3626
    lwc1	$f1,164($s0)
    # Line 3625
    lwc1	$f4,160($s0)
    # Line 3626
    mul.s	$f1,$f1,$f12
    # Line 3624
    lwc1	$f3,156($s0)
    # Line 3625
    mul.s	$f4,$f4,$f12
    # Line 3624
    mul.s	$f3,$f3,$f12
    # Line 3626
    add.s	$f22,$f1,$f22
    # Line 3625
    add.s	$f20,$f4,$f20
    # Line 3626
    b	.L0db07d70
    # Line 3624
    add.s	$f24,$f3,$f24
.L0db08718:
    # Line 3229
    ld	$v1,104($sp)
    ld	$at,96($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s8
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3231
    lwc1	$f22,8($a2)
    # Line 3230
    lwc1	$f20,4($a2)
    # Line 3231
    mul.s	$f22,$f22,$f11
    # Line 3229
    lwc1	$f24,0($a2)
    # Line 3230
    mul.s	$f20,$f20,$f11
    b	.L0db07fa8
    # Line 3229
    mul.s	$f24,$f24,$f11
.L0db08758:
    # Line 3240
    ld	$a2,104($sp)
    ld	$a1,96($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3242
    lwc1	$f3,8($v1)
    # Line 3241
    lwc1	$f2,4($v1)
    # Line 3242
    mul.s	$f3,$f3,$f12
    # Line 3240
    lwc1	$f1,0($v1)
    # Line 3241
    mul.s	$f2,$f2,$f12
    # Line 3240
    mul.s	$f1,$f1,$f12
    # Line 3242
    add.s	$f22,$f3,$f22
    # Line 3241
    add.s	$f20,$f2,$f20
    b	.L0db07fd8
    # Line 3240
    add.s	$f24,$f1,$f24
.L0db087a4:
    # Line 3251
    ld	$v1,104($sp)
    sllv	$at,$s5,$at
    addu	$at,$at,$s8
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3253
    lwc1	$f2,8($a2)
    # Line 3252
    lwc1	$f1,4($a2)
    # Line 3253
    mul.s	$f2,$f2,$f9
    # Line 3251
    lwc1	$f4,0($a2)
    # Line 3252
    mul.s	$f1,$f1,$f9
    # Line 3251
    mul.s	$f4,$f4,$f9
    # Line 3253
    add.s	$f22,$f2,$f22
    # Line 3252
    add.s	$f20,$f1,$f20
    b	.L0db08008
    # Line 3251
    add.s	$f24,$f4,$f24
.L0db087ec:
    ld	$a1,96($sp)
    # Line 3262
    sllv	$a1,$s5,$a1
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3264
    lwc1	$f1,8($v1)
    # Line 3263
    lwc1	$f4,4($v1)
    # Line 3264
    mul.s	$f1,$f1,$f13
    # Line 3262
    lwc1	$f3,0($v1)
    # Line 3263
    mul.s	$f4,$f4,$f13
    # Line 3262
    mul.s	$f3,$f3,$f13
    # Line 3264
    add.s	$f22,$f1,$f22
    # Line 3263
    add.s	$f20,$f4,$f20
    b	.L0db07d70
    # Line 3262
    add.s	$f24,$f3,$f24
.L0db08834:
    # Line 3345
    ld	$v1,104($sp)
    ld	$at,96($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s8
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3347
    lwc1	$f22,8($a2)
    # Line 3346
    lwc1	$f20,4($a2)
    # Line 3347
    mul.s	$f22,$f22,$f11
    # Line 3345
    lwc1	$f24,0($a2)
    # Line 3346
    mul.s	$f20,$f20,$f11
    b	.L0db07cdc
    # Line 3345
    mul.s	$f24,$f24,$f11
.L0db08874:
    # Line 3356
    ld	$a2,104($sp)
    ld	$a1,96($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3358
    lwc1	$f3,8($v1)
    # Line 3357
    lwc1	$f2,4($v1)
    # Line 3358
    mul.s	$f3,$f3,$f12
    # Line 3356
    lwc1	$f1,0($v1)
    # Line 3357
    mul.s	$f2,$f2,$f12
    # Line 3356
    mul.s	$f1,$f1,$f12
    # Line 3358
    add.s	$f22,$f3,$f22
    # Line 3357
    add.s	$f20,$f2,$f20
    b	.L0db07d10
    # Line 3356
    add.s	$f24,$f1,$f24
.L0db088c0:
    ld	$at,96($sp)
    # Line 3367
    ld	$v1,104($sp)
    sllv	$at,$s5,$at
    addu	$at,$at,$s8
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a2,$a2,$at
    # Line 3369
    lwc1	$f2,8($a2)
    # Line 3368
    lwc1	$f1,4($a2)
    # Line 3369
    mul.s	$f2,$f2,$f9
    # Line 3367
    lwc1	$f4,0($a2)
    # Line 3368
    mul.s	$f1,$f1,$f9
    # Line 3367
    mul.s	$f4,$f4,$f9
    # Line 3369
    add.s	$f22,$f2,$f22
    # Line 3368
    add.s	$f20,$f1,$f20
    b	.L0db07d40
    # Line 3367
    add.s	$f24,$f4,$f24
.L0db0890c:
    # Line 3378
    ld	$a2,104($sp)
    ld	$a1,96($sp)
    sllv	$a1,$s5,$a1
    addu	$a1,$a1,$s7
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    addu	$v1,$v1,$a1
    # Line 3380
    lwc1	$f1,8($v1)
    # Line 3379
    lwc1	$f4,4($v1)
    # Line 3380
    mul.s	$f1,$f1,$f13
    # Line 3378
    lwc1	$f3,0($v1)
    # Line 3379
    mul.s	$f4,$f4,$f13
    # Line 3378
    mul.s	$f3,$f3,$f13
    # Line 3380
    add.s	$f22,$f1,$f22
    # Line 3379
    add.s	$f20,$f4,$f20
    b	.L0db07d70
    # Line 3378
    add.s	$f24,$f3,$f24
.L0db08958:
    nop
    # Line 3404
    bc1fl	.L0db0835c
    sdc1	$f5,280($sp)
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    sdc1	$f0,8($sp)
    sdc1	$f9,16($sp)
    b	.L0db08358
    # Line 3405
    mov.s	$f26,$f11
.L0db08984:
    nop
    # Line 3419
    bc1f	.L0db083c0
    # Line 3421
    ldc1	$f1,0($sp)
    b	.L0db083bc
    # Line 3420
    mov.s	$f28,$f5
.L0db08998:
    nop
    # Line 3528
    bc1fl	.L0db08568
    # Line 3530
    ldc1	$f11,0($sp)
    b	.L0db08564
    # Line 3529
    mov.s	$f26,$f11
.L0db089ac:
    nop
    # Line 3543
    bc1f	.L0db085b4
    # Line 3545
    ldc1	$f1,0($sp)
    b	.L0db085b0
    # Line 3544
    mov.s	$f28,$f5
.L0db089c0:
    sdc1	$f5,280($sp)
    ldc1	$f26,0($sp)
    sdc1	$f6,272($sp)
    # Line 3156
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3155
    sub.s	$f26,$f10,$f26
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    # Line 3156
    jal	__glFloor
    mov.s	$f12,$f26
    li	$a0,10497
    ld	$at,80($sp)
    # Line 3158
    li	$v1,1
    sd	$v1,240($sp)
    # Line 3156
    and	$s8,$v0,$at
    # Line 3157
    addiu	$s7,$s8,1
    # Line 3158
    b	.L0db07ec8
    # Line 3157
    and	$s7,$s7,$at
.L0db08a04:
    ldc1	$f28,0($sp)
    # Line 3171
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3170
    sub.s	$f28,$f0,$f28
    # Line 3171
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,240($sp)
    ld	$at,88($sp)
    # Line 3173
    addiu	$v1,$v1,1
    sd	$v1,240($sp)
    # Line 3171
    and	$s6,$v0,$at
    # Line 3172
    addiu	$s5,$s6,1
    # Line 3173
    b	.L0db07f10
    # Line 3172
    and	$s5,$s5,$at
.L0db08a38:
    sdc1	$f5,280($sp)
    ldc1	$f26,0($sp)
    sdc1	$f6,272($sp)
    # Line 3301
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3300
    sub.s	$f26,$f10,$f26
    sdc1	$f7,264($sp)
    sdc1	$f8,256($sp)
    # Line 3301
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$at,80($sp)
    and	$s8,$v0,$at
    # Line 3302
    addiu	$s7,$s8,1
    b	.L0db07c10
    and	$s7,$s7,$at
.L0db08a70:
    ldc1	$f28,0($sp)
    # Line 3315
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3314
    sub.s	$f28,$f0,$f28
    # Line 3315
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$at,88($sp)
    and	$s6,$v0,$at
    # Line 3316
    addiu	$s5,$s6,1
    b	.L0db07c5c
    and	$s5,$s5,$at
.L0db08a98:
    # Line 3458
    ld	$v1,104($sp)
    ld	$a2,96($sp)
    sd	$a0,296($sp)
    sllv	$at,$s5,$a2
    addu	$a0,$at,$s7
    sll	$a1,$a0,0x1
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$v1
    addu	$a0,$a0,$a1
    # Line 3459
    lwc1	$f1,4($a0)
    mul.s	$f1,$f1,$f6
    # Line 3458
    addu	$at,$at,$s8
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    addu	$a1,$a1,$at
    # Line 3459
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f5
    # Line 3460
    lwc1	$f2,8($a0)
    mul.s	$f2,$f2,$f6
    # Line 3458
    sllv	$a2,$s6,$a2
    addu	$v0,$a2,$s7
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 3459
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f7
    # Line 3460
    lwc1	$f0,8($at)
    # Line 3458
    addu	$a2,$a2,$s8
    # Line 3460
    mul.s	$f0,$f0,$f7
    # Line 3458
    sll	$v0,$a2,0x1
    sll	$a2,$a2,0x2
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$a2,$a2,$v0
    # Line 3460
    lwc1	$f22,8($a2)
    lwc1	$f24,8($a1)
    mul.s	$f22,$f22,$f8
    mul.s	$f24,$f24,$f5
    # Line 3459
    lwc1	$f20,4($a2)
    mul.s	$f20,$f20,$f8
    # Line 3460
    add.s	$f22,$f22,$f0
    # Line 3458
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f7
    # Line 3460
    add.s	$f22,$f22,$f24
    # Line 3458
    lwc1	$f24,0($a2)
    mul.s	$f24,$f24,$f8
    # Line 3460
    add.s	$f22,$f22,$f2
    # Line 3458
    lwc1	$f2,0($a1)
    # Line 3459
    add.s	$f20,$f20,$f4
    # Line 3458
    mul.s	$f2,$f2,$f5
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($a0)
    # Line 3459
    add.s	$f20,$f20,$f3
    # Line 3458
    mul.s	$f0,$f0,$f6
    add.s	$f24,$f24,$f2
    # Line 3459
    add.s	$f20,$f20,$f1
    ld	$a0,296($sp)
    # Line 3460
    b	.L0db084f8
    # Line 3458
    add.s	$f24,$f24,$f0
.L0db08b98:
    # Line 3582
    ld	$a1,104($sp)
    sd	$v0,288($sp)
    ld	$v0,96($sp)
    # Line 3576
    sllv	$at,$s5,$v0
    addu	$v1,$at,$s8
    # Line 3582
    addu	$at,$at,$s7
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    addu	$a2,$a2,$at
    # Line 3583
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f12
    # Line 3576
    sll	$a3,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$a3,$a3,$v1
    # Line 3577
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f11
    # Line 3564
    sllv	$v0,$s6,$v0
    # Line 3570
    addu	$v1,$v0,$s7
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 3571
    lwc1	$f14,4($at)
    mul.s	$f14,$f14,$f9
    # Line 3564
    addu	$v0,$v0,$s8
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3566
    lwc1	$f15,8($v0)
    # Line 3572
    lwc1	$f4,8($at)
    # Line 3566
    mul.s	$f15,$f15,$f13
    # Line 3578
    lwc1	$f0,8($a3)
    # Line 3572
    mul.s	$f4,$f4,$f9
    # Line 3578
    mul.s	$f0,$f0,$f11
    # Line 3565
    lwc1	$f2,4($v0)
    # Line 3566
    add.s	$f15,$f15,$f22
    # Line 3565
    mul.s	$f2,$f2,$f13
    # Line 3584
    lwc1	$f22,8($a2)
    # Line 3572
    add.s	$f4,$f4,$f15
    # Line 3584
    mul.s	$f22,$f22,$f12
    # Line 3578
    add.s	$f0,$f0,$f4
    # Line 3564
    lwc1	$f4,0($v0)
    mul.s	$f4,$f4,$f13
    # Line 3565
    add.s	$f20,$f2,$f20
    # Line 3570
    lwc1	$f2,0($at)
    # Line 3584
    add.s	$f22,$f22,$f0
    # Line 3570
    mul.s	$f2,$f2,$f9
    # Line 3564
    add.s	$f4,$f4,$f24
    # Line 3576
    lwc1	$f0,0($a3)
    # Line 3571
    add.s	$f20,$f14,$f20
    # Line 3576
    mul.s	$f0,$f0,$f11
    # Line 3570
    add.s	$f2,$f2,$f4
    # Line 3582
    lwc1	$f24,0($a2)
    # Line 3577
    add.s	$f20,$f3,$f20
    # Line 3582
    mul.s	$f24,$f24,$f12
    # Line 3576
    add.s	$f0,$f0,$f2
    # Line 3583
    add.s	$f20,$f1,$f20
    ld	$v0,288($sp)
    # Line 3584
    b	.L0db07d70
    # Line 3582
    add.s	$f24,$f24,$f0
.L0db08ca4:
    # Line 3473
    ld	$at,104($sp)
    addu	$a2,$a2,$s8
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 3475
    lwc1	$f22,8($a1)
    # Line 3474
    lwc1	$f20,4($a1)
    # Line 3475
    mul.s	$f22,$f22,$f8
    # Line 3473
    lwc1	$f24,0($a1)
    # Line 3474
    mul.s	$f20,$f20,$f8
    b	.L0db08468
    # Line 3473
    mul.s	$f24,$f24,$f8
.L0db08cdc:
    # Line 3484
    ld	$a1,104($sp)
    ld	$v1,96($sp)
    sllv	$v1,$s6,$v1
    addu	$v1,$v1,$s7
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 3486
    lwc1	$f3,8($at)
    # Line 3485
    lwc1	$f2,4($at)
    # Line 3486
    mul.s	$f3,$f3,$f7
    # Line 3484
    lwc1	$f1,0($at)
    # Line 3485
    mul.s	$f2,$f2,$f7
    # Line 3484
    mul.s	$f1,$f1,$f7
    # Line 3486
    add.s	$f22,$f3,$f22
    # Line 3485
    add.s	$f20,$f2,$f20
    b	.L0db08498
    # Line 3484
    add.s	$f24,$f1,$f24
.L0db08d28:
    ld	$a2,96($sp)
    # Line 3495
    sllv	$a2,$s5,$a2
    addu	$a2,$a2,$s8
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 3497
    lwc1	$f2,8($a1)
    # Line 3496
    lwc1	$f1,4($a1)
    # Line 3497
    mul.s	$f2,$f2,$f5
    # Line 3495
    lwc1	$f4,0($a1)
    # Line 3496
    mul.s	$f1,$f1,$f5
    # Line 3495
    mul.s	$f4,$f4,$f5
    # Line 3497
    add.s	$f22,$f2,$f22
    # Line 3496
    add.s	$f20,$f1,$f20
    b	.L0db084c8
    # Line 3495
    add.s	$f24,$f4,$f24
.L0db08d70:
    # Line 3506
    ld	$a1,104($sp)
    sllv	$v1,$s5,$v1
    addu	$v1,$v1,$s7
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 3508
    lwc1	$f1,8($at)
    # Line 3507
    lwc1	$f4,4($at)
    # Line 3508
    mul.s	$f1,$f1,$f6
    # Line 3506
    lwc1	$f3,0($at)
    # Line 3507
    mul.s	$f4,$f4,$f6
    # Line 3506
    mul.s	$f3,$f3,$f6
    # Line 3508
    add.s	$f22,$f1,$f22
    # Line 3507
    add.s	$f20,$f4,$f20
    b	.L0db084f8
    # Line 3506
    add.s	$f24,$f3,$f24
.L0db08db8:
    ld	$a2,96($sp)
    # Line 3608
    ld	$at,104($sp)
    sllv	$a2,$s6,$a2
    addu	$a2,$a2,$s7
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 3610
    lwc1	$f4,8($a1)
    # Line 3609
    lwc1	$f3,4($a1)
    # Line 3610
    mul.s	$f4,$f4,$f9
    # Line 3608
    lwc1	$f2,0($a1)
    # Line 3609
    mul.s	$f3,$f3,$f9
    # Line 3608
    mul.s	$f2,$f2,$f9
    # Line 3610
    add.s	$f22,$f4,$f22
    # Line 3609
    add.s	$f20,$f3,$f20
    b	.L0db086b4
    # Line 3608
    add.s	$f24,$f2,$f24
.L0db08e04:
    ld	$v1,96($sp)
    # Line 3619
    sllv	$v1,$s5,$v1
    addu	$v1,$v1,$s8
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 3621
    lwc1	$f3,8($at)
    # Line 3620
    lwc1	$f2,4($at)
    # Line 3621
    mul.s	$f3,$f3,$f11
    # Line 3619
    lwc1	$f1,0($at)
    # Line 3620
    mul.s	$f2,$f2,$f11
    # Line 3619
    mul.s	$f1,$f1,$f11
    # Line 3621
    add.s	$f22,$f3,$f22
    # Line 3620
    add.s	$f20,$f2,$f20
    b	.L0db086e4
    # Line 3619
    add.s	$f24,$f1,$f24
.L0db08e4c:
    ld	$a2,96($sp)
    # Line 3630
    sllv	$a2,$s5,$a2
    addu	$a2,$a2,$s7
    sll	$a1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 3632
    lwc1	$f2,8($a1)
    # Line 3631
    lwc1	$f1,4($a1)
    # Line 3632
    mul.s	$f2,$f2,$f12
    # Line 3630
    lwc1	$f4,0($a1)
    # Line 3631
    mul.s	$f1,$f1,$f12
    # Line 3630
    mul.s	$f4,$f4,$f12
    # Line 3632
    add.s	$f22,$f2,$f22
    # Line 3631
    add.s	$f20,$f1,$f20
    b	.L0db07d70
    # Line 3630
    add.s	$f24,$f4,$f24
.L0db08e94:
    # Line 3597
    ld	$a1,104($sp)
    addu	$v1,$v1,$s8
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 3599
    lwc1	$f1,8($at)
    # Line 3598
    lwc1	$f4,4($at)
    # Line 3599
    mul.s	$f1,$f1,$f13
    # Line 3597
    lwc1	$f3,0($at)
    # Line 3598
    mul.s	$f4,$f4,$f13
    # Line 3597
    mul.s	$f3,$f3,$f13
    # Line 3599
    add.s	$f22,$f1,$f22
    # Line 3598
    add.s	$f20,$f4,$f20
    b	.L0db08680
    # Line 3597
    add.s	$f24,$f3,$f24
.L0db08ed8:
    sdc1	$f5,280($sp)
    sdc1	$f6,272($sp)
    sdc1	$f7,264($sp)
    ldc1	$f26,0($sp)
    sdc1	$f8,256($sp)
    # Line 3400
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3399
    sub.s	$f26,$f10,$f26
    sdc1	$f0,8($sp)
    sdc1	$f9,16($sp)
    # Line 3400
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$at,80($sp)
    # Line 3402
    li	$v1,1
    sd	$v1,240($sp)
    # Line 3400
    and	$s8,$v0,$at
    # Line 3401
    addiu	$s7,$s8,1
    # Line 3402
    b	.L0db0838c
    # Line 3401
    and	$s7,$s7,$at
.L0db08f20:
    ldc1	$f28,0($sp)
    # Line 3415
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3414
    sub.s	$f28,$f0,$f28
    # Line 3415
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,240($sp)
    ld	$at,88($sp)
    # Line 3417
    addiu	$v1,$v1,1
    sd	$v1,240($sp)
    # Line 3415
    and	$s6,$v0,$at
    # Line 3416
    addiu	$s5,$s6,1
    # Line 3417
    b	.L0db083d8
    # Line 3416
    and	$s5,$s5,$at
.L0db08f54:
    ldc1	$f26,0($sp)
    # Line 3524
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3523
    sub.s	$f26,$f10,$f26
    # Line 3524
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$at,80($sp)
    # Line 3526
    li	$v1,1
    sd	$v1,240($sp)
    # Line 3524
    and	$s8,$v0,$at
    # Line 3525
    addiu	$s7,$s8,1
    # Line 3526
    b	.L0db08580
    # Line 3525
    and	$s7,$s7,$at
.L0db08f84:
    ldc1	$f28,0($sp)
    # Line 3539
    # lw $t9, -23708($gp) # &__glFloor
    # Line 3538
    sub.s	$f28,$f0,$f28
    # Line 3539
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$v1,240($sp)
    ld	$at,88($sp)
    # Line 3541
    addiu	$v1,$v1,1
    sd	$v1,240($sp)
    # Line 3539
    and	$s6,$v0,$at
    # Line 3540
    addiu	$s5,$s6,1
    # Line 3541
    b	.L0db085cc
    # Line 3540
    and	$s5,$s5,$at
.L0db08fb8:
    # Line 3679
    move	$v0,$zero
    # ld	gp,200(sp)
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    ld	$s2,120($sp)
    ld	$s3,192($sp)
    ld	$s4,184($sp)
    ld	$s5,144($sp)
    ld	$s6,128($sp)
    ld	$s7,152($sp)
    ld	$s8,160($sp)
    ldc1	$f20,32($sp)
    ldc1	$f22,48($sp)
    ldc1	$f24,56($sp)
    ldc1	$f26,40($sp)
    ld	$ra,136($sp)
    ldc1	$f28,64($sp)
    ldc1	$f30,72($sp)
    jr	$ra
    addiu	$sp,$sp,320
.end __glTextureRGB_L_LML_StippledSpan

# Function: __glTextureRGB_N_N_Span
# Declared: Line 3689 (Source lines: 3690-3795)
# Address: 0x0db09008 - 0x0db09364 (Size: 860 bytes, Frame: 176)
.globl __glTextureRGB_N_N_Span
.ent __glTextureRGB_N_N_Span
__glTextureRGB_N_N_Span:
    # Line 3714
    li	$a7,7681
    li	$a6,8448
    # Line 3690
    addiu	$sp,$sp,-176
    sd	$s1,40($sp)
    move	$s1,$a0
    sdc1	$f22,8($sp)
    # Line 3712
    lwc1	$f22,30240($a0)
    sdc1	$f20,16($sp)
    # Line 3711
    lwc1	$f20,30232($a0)
    sdc1	$f24,0($sp)
    # Line 3710
    lwc1	$f24,30228($a0)
    sd	$s0,56($sp)
    # Line 3708
    lw	$s0,30468($a0)
    sd	$s2,64($sp)
    # Line 3706
    lw	$s2,28216($a0)
    # sd	gp,48(sp)
    # Line 3690
    lui	$at,0xf
    addiu	$at,$at,-6048
    # addu	gp,t9,at
    sd	$s7,24($sp)
    # Line 3714
    lw	$s7,30252($a0)
    sd	$s5,32($sp)
    # Line 3704
    lw	$s5,2376($a0)
    # Line 3714
    addiu	$s7,$s7,-1
    bltz	$s7,.L0db09334
    # Line 3704
    lw	$s5,0($s5)
    # Line 3714
    li	$a0,10497
    li	$a2,0x8062
    li	$a5,-1
    sd	$s3,128($sp)
    sd	$s6,120($sp)
    sd	$ra,112($sp)
    sd	$s4,104($sp)
    sd	$s8,96($sp)
    sdc1	$f26,88($sp)
    sdc1	$f28,80($sp)
    xori	$v0,$s5,0x2101
    sltiu	$v0,$v0,1
    b	.L0db09178
    sd	$v0,72($sp)
.L0db090a8:
    # Line 3732
    move	$s4,$zero
.L0db090ac:
    # Line 3736
    lw	$v1,8($s2)
.L0db090b0:
    mul.s	$f12,$f20,$f28
    beq	$v1,$a0,.L0db092dc
    lwc1	$f26,36($s3)
    # Line 3741
    mul.s	$f0,$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$t1,$f0
    nop
    bltz	$t1,.L0db09234
    move	$t0,$t1
    # Line 3742
    lw	$a1,24($s3)
    slt	$a1,$t1,$a1
    bnez	$a1,.L0db090ec
    # Line 3743
    nor	$at,$s6,$zero
    move	$t0,$s8
.L0db090e8:
    nor	$at,$s6,$zero
.L0db090ec:
    nor	$v0,$s8,$zero
    and	$v0,$v0,$t0
    and	$at,$at,$s4
    or	$at,$at,$v0
    beqz	$at,.L0db091dc
    # Line 3757
    sllv	$v1,$t0,$a3
    # Line 3753
    lwc1	$f5,164($s2)
    # Line 3752
    lwc1	$f4,160($s2)
    # Line 3759
    beq	$s5,$a6,.L0db09204
    # Line 3751
    lwc1	$f6,156($s2)
.L0db09114:
    # Line 3769
    move	$a3,$zero
    beq	$s5,$a2,.L0db0922c
    ld	$v0,72($sp)
    beq	$s5,$a7,.L0db0922c
    nop
.L0db09128:
    or	$v0,$a3,$v0
    beqzl	$v0,.L0db0923c
    # Line 3782
    lwc1	$f1,3284($s1)
    # Line 3772
    lwc1	$f3,30756($s1)
    mul.s	$f3,$f3,$f6
    swc1	$f3,0($s0)
    # Line 3773
    lwc1	$f2,30760($s1)
    mul.s	$f2,$f2,$f4
    swc1	$f2,4($s0)
    # Line 3774
    lwc1	$f1,30764($s1)
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($s0)
.L0db09158:
    # Line 3791
    lwc1	$f2,30396($s1)
    # Line 3790
    lwc1	$f1,30388($s1)
    # Line 3791
    add.s	$f22,$f2,$f22
    # Line 3789
    lwc1	$f0,30384($s1)
    # Line 3790
    add.s	$f20,$f1,$f20
    # Line 3792
    addiu	$s0,$s0,16
    # Line 3714
    beq	$s7,$a5,.L0db09318
    # Line 3789
    add.s	$f24,$f0,$f24
.L0db09178:
    # Line 3715
    lwc1	$f28,3284($s1)
    div.s	$f28,$f28,$f22
    # Line 3720
    lw	$s3,228($s2)
    # Line 3714
    addiu	$s7,$s7,-1
    # Line 3726
    lw	$v1,4($s2)
    lwc1	$f26,32($s3)
    # Line 3722
    lw	$a4,0($s3)
    # Line 3724
    lw	$s8,24($s3)
    # Line 3723
    lw	$t0,20($s3)
    # Line 3721
    lw	$a3,44($s3)
    # Line 3724
    addiu	$s8,$s8,-1
    # Line 3723
    addiu	$s6,$t0,-1
    # Line 3726
    beq	$v1,$a0,.L0db092a0
    mul.s	$f12,$f24,$f28
    # Line 3731
    mul.s	$f0,$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$t1,$f0
    nop
    bltz	$t1,.L0db090a8
    move	$s4,$t1
    # Line 3732
    slt	$at,$t1,$t0
    bnezl	$at,.L0db090b0
    # Line 3736
    lw	$v1,8($s2)
    b	.L0db090ac
    # Line 3733
    move	$s4,$s6
.L0db091dc:
    # Line 3757
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 3759
    lwc1	$f5,8($v0)
    # Line 3758
    lwc1	$f4,4($v0)
    # Line 3759
    bne	$s5,$a6,.L0db09114
    # Line 3757
    lwc1	$f6,0($v0)
.L0db09204:
    # Line 3766
    lwc1	$f2,4($s0)
    # Line 3767
    lwc1	$f3,8($s0)
    # Line 3766
    mul.s	$f2,$f2,$f4
    # Line 3765
    lwc1	$f1,0($s0)
    # Line 3767
    mul.s	$f3,$f3,$f5
    # Line 3765
    mul.s	$f1,$f1,$f6
    # Line 3767
    swc1	$f3,8($s0)
    # Line 3766
    swc1	$f2,4($s0)
    # Line 3767
    b	.L0db09158
    # Line 3765
    swc1	$f1,0($s0)
.L0db0922c:
    # Line 3769
    b	.L0db09128
    li	$a3,1
.L0db09234:
    # Line 3742
    b	.L0db090e8
    move	$t0,$zero
.L0db0923c:
    # Line 3782
    sub.s	$f1,$f1,$f6
    lwc1	$f0,0($s0)
    # Line 3780
    lw	$a1,2376($s1)
    # Line 3782
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f6
    add.s	$f0,$f0,$f1
    swc1	$f0,0($s0)
    # Line 3783
    lwc1	$f3,3284($s1)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,4($s0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a1)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($s0)
    # Line 3784
    lwc1	$f1,3284($s1)
    sub.s	$f1,$f1,$f5
    lwc1	$f0,8($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f5
    add.s	$f0,$f0,$f1
    b	.L0db09158
    swc1	$f0,8($s0)
.L0db092a0:
    # Line 3728
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a3,144($sp)
    jal	__glFrac
    sd	$a4,136($sp)
    mul.s	$f2,$f0,$f26
    li	$a0,10497
    li	$a2,0x8062
    li	$a5,-1
    trunc.w.s	$f2,$f2
    li	$a6,8448
    li	$a7,7681
    ld	$a4,136($sp)
    mfc1	$s4,$f2
    b	.L0db090ac
    ld	$a3,144($sp)
.L0db092dc:
    # Line 3738
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a3,144($sp)
    jal	__glFrac
    sd	$a4,136($sp)
    mul.s	$f3,$f0,$f26
    li	$a0,10497
    li	$a2,0x8062
    li	$a5,-1
    trunc.w.s	$f3,$f3
    li	$a6,8448
    li	$a7,7681
    ld	$a4,136($sp)
    mfc1	$t0,$f3
    b	.L0db090e8
    ld	$a3,144($sp)
.L0db09318:
    ldc1	$f28,80($sp)
    ldc1	$f26,88($sp)
    ld	$s8,96($sp)
    ld	$s4,104($sp)
    ld	$ra,112($sp)
    ld	$s6,120($sp)
    ld	$s3,128($sp)
.L0db09334:
    # Line 3795
    move	$v0,$zero
    # ld	gp,48(sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s5,32($sp)
    ld	$s7,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glTextureRGB_N_N_Span

# Function: __glTextureRGB_N_N_StippledSpan
# Declared: Line 3805 (Source lines: 3806-3933)
# Address: 0x0db09364 - 0x0db0973c (Size: 984 bytes, Frame: 208)
.globl __glTextureRGB_N_N_StippledSpan
.ent __glTextureRGB_N_N_StippledSpan
__glTextureRGB_N_N_StippledSpan:
    # Line 3806
    addiu	$sp,$sp,-208
    sd	$s2,56($sp)
    move	$s2,$a0
    sdc1	$f22,8($sp)
    # Line 3830
    lwc1	$f22,30240($a0)
    sdc1	$f20,16($sp)
    # Line 3829
    lwc1	$f20,30232($a0)
    sdc1	$f24,0($sp)
    # Line 3828
    lwc1	$f24,30228($a0)
    sd	$s1,24($sp)
    # Line 3825
    lw	$s1,30468($a0)
    sd	$s3,48($sp)
    # Line 3823
    lw	$s3,28216($a0)
    # sd	gp,32(sp)
    # Line 3806
    lui	$v0,0xf
    addiu	$v0,$v0,-6908
    # Line 3826
    lw	$v1,30476($a0)
    # Line 3806
    # addu	gp,t9,v0
    # Line 3824
    lw	$at,30252($a0)
    sd	$v1,64($sp)
    sd	$s6,40($sp)
    # Line 3821
    lw	$s6,2376($a0)
    sd	$at,72($sp)
    # Line 3830
    beqz	$at,.L0db09710
    # Line 3821
    lw	$s6,0($s6)
    sd	$ra,152($sp)
    sd	$s4,144($sp)
    sd	$s0,136($sp)
    sd	$s5,128($sp)
    sd	$s7,120($sp)
    sd	$s8,112($sp)
    sdc1	$f26,104($sp)
    sdc1	$f28,96($sp)
    # Line 3830
    li	$a6,-1
    li	$t0,7681
    li	$a3,0x8062
    li	$a7,8448
    li	$a2,10497
    xori	$a1,$s6,0x2101
    sltiu	$a1,$a1,1
    b	.L0db09414
    sd	$a1,80($sp)
.L0db0940c:
    ld	$at,72($sp)
    # Line 3841
    beqz	$at,.L0db096f0
.L0db09414:
    ld	$v0,72($sp)
    lui	$s0,0x8000
    # Line 3833
    move	$s7,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0db09430
    # Line 3837
    ld	$a1,72($sp)
    # Line 3835
    li	$s7,32
.L0db09430:
    # Line 3837
    subu	$a1,$a1,$s7
    # Line 3839
    ld	$v1,64($sp)
    # Line 3841
    addiu	$s7,$s7,-1
    sd	$a1,72($sp)
    # Line 3839
    addiu	$v1,$v1,4
    lw	$at,-4($v1)
    sd	$v1,64($sp)
    # Line 3841
    bltz	$s7,.L0db0940c
    sd	$at,88($sp)
    b	.L0db09534
    ld	$v0,88($sp)
.L0db0945c:
    # Line 3862
    move	$s5,$zero
.L0db09460:
    # Line 3866
    lw	$v0,8($s3)
.L0db09464:
    mul.s	$f12,$f20,$f26
    beq	$v0,$a2,.L0db096ac
    lwc1	$f28,36($s4)
    # Line 3871
    mul.s	$f0,$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    bltz	$t2,.L0db095fc
    move	$t1,$t2
    # Line 3872
    lw	$v1,24($s4)
    slt	$v1,$t2,$v1
    bnez	$v1,.L0db094a0
    # Line 3873
    nor	$a1,$a0,$zero
    move	$t1,$s8
.L0db0949c:
    nor	$a1,$a0,$zero
.L0db094a0:
    nor	$at,$s8,$zero
    and	$at,$at,$t1
    and	$a1,$a1,$s5
    or	$a1,$a1,$at
    beqz	$a1,.L0db095a0
    # Line 3888
    sllv	$v1,$t1,$a4
    # Line 3884
    lwc1	$f5,164($s3)
    # Line 3883
    lwc1	$f4,160($s3)
    # Line 3890
    beq	$s6,$a7,.L0db095c8
    # Line 3882
    lwc1	$f6,156($s3)
.L0db094c8:
    ld	$at,80($sp)
    # Line 3900
    beq	$s6,$a3,.L0db095f4
    li	$a0,1
    beq	$s6,$t0,.L0db095f0
    move	$a0,$zero
    or	$at,$a0,$at
.L0db094e0:
    beqzl	$at,.L0db09604
    # Line 3913
    lwc1	$f1,3284($s2)
    # Line 3903
    lwc1	$f3,30756($s2)
    mul.s	$f3,$f3,$f6
    swc1	$f3,0($s1)
    # Line 3904
    lwc1	$f2,30760($s2)
    mul.s	$f2,$f2,$f4
    swc1	$f2,4($s1)
    # Line 3905
    lwc1	$f1,30764($s2)
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($s1)
.L0db0950c:
    # Line 3923
    lwc1	$f2,30396($s2)
    # Line 3922
    lwc1	$f1,30388($s2)
    # Line 3923
    add.s	$f22,$f2,$f22
    # Line 3926
    srl	$s0,$s0,0x1
    # Line 3921
    lwc1	$f0,30384($s2)
    # Line 3922
    add.s	$f20,$f1,$f20
    # Line 3924
    addiu	$s1,$s1,16
    # Line 3841
    beq	$s7,$a6,.L0db0940c
    # Line 3921
    add.s	$f24,$f0,$f24
    ld	$v0,88($sp)
.L0db09534:
    # Line 3841
    and	$v0,$v0,$s0
    beqz	$v0,.L0db0950c
    addiu	$s7,$s7,-1
    # Line 3844
    lwc1	$f26,3284($s2)
    div.s	$f26,$f26,$f22
    # Line 3849
    lw	$s4,228($s3)
    # Line 3856
    lw	$v1,4($s3)
    lwc1	$f28,32($s4)
    # Line 3851
    lw	$a5,0($s4)
    # Line 3853
    lw	$s8,24($s4)
    # Line 3852
    lw	$t1,20($s4)
    # Line 3850
    lw	$a4,44($s4)
    # Line 3853
    addiu	$s8,$s8,-1
    # Line 3852
    addiu	$a0,$t1,-1
    # Line 3856
    beq	$v1,$a2,.L0db09668
    mul.s	$f12,$f24,$f26
    # Line 3861
    mul.s	$f0,$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    bltz	$t2,.L0db0945c
    move	$s5,$t2
    # Line 3862
    slt	$at,$t2,$t1
    bnezl	$at,.L0db09464
    # Line 3866
    lw	$v0,8($s3)
    b	.L0db09460
    # Line 3863
    move	$s5,$a0
.L0db095a0:
    # Line 3888
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    addu	$v0,$v0,$v1
    # Line 3890
    lwc1	$f5,8($v0)
    # Line 3889
    lwc1	$f4,4($v0)
    # Line 3890
    bne	$s6,$a7,.L0db094c8
    # Line 3888
    lwc1	$f6,0($v0)
.L0db095c8:
    # Line 3897
    lwc1	$f2,4($s1)
    # Line 3898
    lwc1	$f3,8($s1)
    # Line 3897
    mul.s	$f2,$f2,$f4
    # Line 3896
    lwc1	$f1,0($s1)
    # Line 3898
    mul.s	$f3,$f3,$f5
    # Line 3896
    mul.s	$f1,$f1,$f6
    # Line 3898
    swc1	$f3,8($s1)
    # Line 3897
    swc1	$f2,4($s1)
    # Line 3898
    b	.L0db0950c
    # Line 3896
    swc1	$f1,0($s1)
.L0db095f0:
    # Line 3900
    li	$a0,1
.L0db095f4:
    b	.L0db094e0
    or	$at,$a0,$at
.L0db095fc:
    # Line 3872
    b	.L0db0949c
    move	$t1,$zero
.L0db09604:
    # Line 3913
    sub.s	$f1,$f1,$f6
    lwc1	$f0,0($s1)
    # Line 3911
    lw	$a1,2376($s2)
    # Line 3913
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f6
    add.s	$f0,$f0,$f1
    swc1	$f0,0($s1)
    # Line 3914
    lwc1	$f3,3284($s2)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a1)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($s1)
    # Line 3915
    lwc1	$f1,3284($s2)
    sub.s	$f1,$f1,$f5
    lwc1	$f0,8($s1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f5
    add.s	$f0,$f0,$f1
    b	.L0db0950c
    swc1	$f0,8($s1)
.L0db09668:
    # Line 3858
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a0,176($sp)
    sd	$a4,168($sp)
    jal	__glFrac
    sd	$a5,160($sp)
    mul.s	$f2,$f0,$f28
    li	$a2,10497
    li	$a3,0x8062
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f2,$f2
    li	$t0,7681
    ld	$a5,160($sp)
    ld	$a4,168($sp)
    mfc1	$s5,$f2
    b	.L0db09460
    ld	$a0,176($sp)
.L0db096ac:
    # Line 3868
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a0,176($sp)
    sd	$a4,168($sp)
    jal	__glFrac
    sd	$a5,160($sp)
    mul.s	$f3,$f0,$f28
    li	$a2,10497
    li	$a3,0x8062
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f3,$f3
    li	$t0,7681
    ld	$a5,160($sp)
    ld	$a4,168($sp)
    mfc1	$t1,$f3
    b	.L0db0949c
    ld	$a0,176($sp)
.L0db096f0:
    ldc1	$f28,96($sp)
    ldc1	$f26,104($sp)
    ld	$s8,112($sp)
    ld	$s7,120($sp)
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$s4,144($sp)
    ld	$ra,152($sp)
.L0db09710:
    # Line 3933
    move	$v0,$zero
    # ld	gp,32(sp)
    ld	$s1,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glTextureRGB_N_N_StippledSpan

# Function: __glTextureRGB_N_NMN_Span
# Declared: Line 3943 (Source lines: 3944-4086)
# Address: 0x0db0973c - 0x0db09bf8 (Size: 1212 bytes, Frame: 192)
.globl __glTextureRGB_N_NMN_Span
.ent __glTextureRGB_N_NMN_Span
__glTextureRGB_N_NMN_Span:
    # Line 3944
    addiu	$sp,$sp,-192
    sd	$s1,80($sp)
    sd	$s4,72($sp)
    sd	$s6,56($sp)
    sd	$s8,88($sp)
    sdc1	$f28,0($sp)
    sdc1	$f30,8($sp)
    sd	$ra,64($sp)
    sd	$s3,128($sp)
    move	$s3,$a0
    sdc1	$f22,24($sp)
    # Line 3970
    lwc1	$f22,30244($a0)
    sdc1	$f24,16($sp)
    # Line 3969
    lwc1	$f24,30240($a0)
    sdc1	$f26,32($sp)
    # Line 3968
    lwc1	$f26,30232($a0)
    sdc1	$f20,40($sp)
    # Line 3967
    lwc1	$f20,30228($a0)
    sd	$s2,136($sp)
    # Line 3965
    lw	$s2,30468($a0)
    sd	$s0,120($sp)
    # Line 3963
    lw	$s0,28216($a0)
    # sd	gp,112(sp)
    # Line 3944
    lui	$at,0xf
    # Line 3952
    lwc1	$f0,3280($a0)
    # Line 3944
    addiu	$at,$at,-7892
    # addu	gp,t9,at
    sdc1	$f0,48($sp)
    sd	$s7,96($sp)
    # Line 3972
    lw	$s7,30252($a0)
    sd	$s5,104($sp)
    # Line 3961
    lw	$s5,2376($a0)
    # Line 3972
    addiu	$s7,$s7,-1
    bltz	$s7,.L0db09ba8
    # Line 3961
    lw	$s5,0($s5)
    sd	$s6,56($sp)
    sd	$ra,64($sp)
    sd	$s4,72($sp)
    sd	$s1,80($sp)
    sd	$s8,88($sp)
    sdc1	$f28,0($sp)
    sdc1	$f30,8($sp)
    # Line 3972
    li	$a6,-1
    li	$a7,7681
    li	$a2,0x8062
    li	$a5,8448
    li	$a0,10497
    lwc1	$f7,_lit_3efff972
    lwc1	$f6,_lit_3f000000
    li	$t0,1
    mtc1	$zero,$f5
    xori	$v0,$s5,0x2101
    sltiu	$v0,$v0,1
    b	.L0db09964
    sd	$v0,144($sp)
.L0db09818:
    # Line 3994
    c.le.s	$f8,$f6
    nop
    bc1f	.L0db09a74
    # Line 3998
    move	$a3,$zero
.L0db09828:
    # Line 4007
    sll	$s1,$a3,0x2
.L0db0982c:
    subu	$s1,$s1,$a3
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$a3
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$t1
.L0db09840:
    # Line 4015
    lwc1	$f30,32($s1)
    # Line 4011
    lw	$a4,0($s1)
    # Line 4010
    lw	$a3,44($s1)
    # Line 4013
    lw	$s8,24($s1)
    # Line 4015
    lw	$s6,4($s0)
    # Line 4012
    lw	$t1,20($s1)
    # Line 4013
    addiu	$s8,$s8,-1
    # Line 4015
    beq	$s6,$a0,.L0db09b10
    # Line 4012
    addiu	$s6,$t1,-1
    # Line 4020
    mul.s	$f1,$f12,$f30
    trunc.w.s	$f1,$f1
    mfc1	$t2,$f1
    nop
    bltz	$t2,.L0db09a9c
    move	$s4,$t2
    # Line 4021
    slt	$at,$t2,$t1
    bnezl	$at,.L0db09890
    # Line 4025
    lw	$v0,8($s0)
    # Line 4022
    move	$s4,$s6
.L0db0988c:
    # Line 4025
    lw	$v0,8($s0)
.L0db09890:
    mul.s	$f12,$f26,$f28
    beq	$v0,$a0,.L0db09b5c
    lwc1	$f30,36($s1)
    # Line 4030
    mul.s	$f2,$f12,$f30
    trunc.w.s	$f2,$f2
    mfc1	$t2,$f2
    nop
    bltz	$t2,.L0db09aa4
    move	$t1,$t2
    # Line 4031
    lw	$v1,24($s1)
    slt	$v1,$t2,$v1
    bnez	$v1,.L0db098cc
    # Line 4032
    nor	$a1,$s6,$zero
    move	$t1,$s8
.L0db098c8:
    nor	$a1,$s6,$zero
.L0db098cc:
    nor	$at,$s8,$zero
    and	$at,$at,$t1
    and	$a1,$a1,$s4
    or	$a1,$a1,$at
    beqz	$a1,.L0db09a1c
    # Line 4047
    sllv	$v1,$t1,$a3
    # Line 4043
    lwc1	$f9,164($s0)
    # Line 4042
    lwc1	$f4,160($s0)
    # Line 4049
    beq	$s5,$a5,.L0db09a44
    # Line 4041
    lwc1	$f8,156($s0)
.L0db098f4:
    # Line 4059
    move	$a3,$zero
    beq	$s5,$a2,.L0db09a6c
    ld	$at,144($sp)
    beq	$s5,$a7,.L0db09a6c
    nop
.L0db09908:
    or	$at,$a3,$at
    beqzl	$at,.L0db09aac
    # Line 4072
    lwc1	$f3,3284($s3)
    # Line 4062
    lwc1	$f1,30756($s3)
    mul.s	$f1,$f1,$f8
    swc1	$f1,0($s2)
    # Line 4063
    lwc1	$f0,30760($s3)
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($s2)
    # Line 4064
    lwc1	$f3,30764($s3)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s2)
.L0db09938:
    # Line 3972
    addiu	$s7,$s7,-1
    # Line 4082
    lwc1	$f1,30400($s3)
    # Line 4081
    lwc1	$f0,30396($s3)
    # Line 4082
    add.s	$f22,$f1,$f22
    # Line 4080
    lwc1	$f3,30388($s3)
    # Line 4081
    add.s	$f24,$f0,$f24
    # Line 4079
    lwc1	$f2,30384($s3)
    # Line 4080
    add.s	$f26,$f3,$f26
    # Line 4083
    addiu	$s2,$s2,16
    # Line 3972
    beq	$s7,$a6,.L0db09ba8
    # Line 4079
    add.s	$f20,$f2,$f20
.L0db09964:
    # Line 3973
    lwc1	$f28,3284($s3)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f22,$f28
    lwc1	$f2,240($s0)
    c.le.s	$f4,$f2
    # Line 3994
    mov.s	$f8,$f5
    # Line 3973
    lw	$t1,228($s0)
    bc1f	.L0db09990
    # Line 4015
    mul.s	$f12,$f20,$f28
    # Line 3981
    b	.L0db09840
    move	$s1,$t1
.L0db09990:
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0db09818
    # Line 3989
    move	$a3,$zero
    # Line 3990
    trunc.w.s	$f0,$f4
    mfc1	$a4,$f0
    nop
    sra	$a4,$a4,0x1
    beqz	$a4,.L0db099ec
    # Line 3992
    sllv	$at,$t0,$a3
    # Line 3990
    addiu	$a3,$a3,1
.L0db099bc:
    sra	$a4,$a4,0x1
    beqz	$a4,.L0db099e8
    nop
    addiu	$a3,$a3,1
    sra	$a4,$a4,0x1
    beqz	$a4,.L0db099e8
    nop
    addiu	$a3,$a3,1
    sra	$a4,$a4,0x1
    bnezl	$a4,.L0db099bc
    addiu	$a3,$a3,1
.L0db099e8:
    # Line 3992
    sllv	$at,$t0,$a3
.L0db099ec:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a3,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,48($sp)
    b	.L0db09818
    mul.s	$f8,$f8,$f0
.L0db09a1c:
    # Line 4047
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 4049
    lwc1	$f9,8($v0)
    # Line 4048
    lwc1	$f4,4($v0)
    # Line 4049
    bne	$s5,$a5,.L0db098f4
    # Line 4047
    lwc1	$f8,0($v0)
.L0db09a44:
    # Line 4056
    lwc1	$f3,4($s2)
    # Line 4057
    lwc1	$f0,8($s2)
    # Line 4056
    mul.s	$f3,$f3,$f4
    # Line 4055
    lwc1	$f2,0($s2)
    # Line 4057
    mul.s	$f0,$f0,$f9
    # Line 4055
    mul.s	$f2,$f2,$f8
    # Line 4057
    swc1	$f0,8($s2)
    # Line 4056
    swc1	$f3,4($s2)
    # Line 4057
    b	.L0db09938
    # Line 4055
    swc1	$f2,0($s2)
.L0db09a6c:
    # Line 4059
    b	.L0db09908
    li	$a3,1
.L0db09a74:
    # Line 4001
    add.s	$f1,$f8,$f7
    trunc.w.s	$f1,$f1
    # Line 4000
    lw	$a4,236($s0)
    # Line 4001
    mfc1	$a3,$f1
    nop
    slt	$a1,$a4,$a3
    beqz	$a1,.L0db0982c
    # Line 4007
    sll	$s1,$a3,0x2
    b	.L0db09828
    # Line 4003
    move	$a3,$a4
.L0db09a9c:
    # Line 4021
    b	.L0db0988c
    move	$s4,$zero
.L0db09aa4:
    # Line 4031
    b	.L0db098c8
    move	$t1,$zero
.L0db09aac:
    # Line 4072
    sub.s	$f3,$f3,$f8
    lwc1	$f2,0($s2)
    # Line 4070
    lw	$at,2376($s3)
    # Line 4072
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f3
    swc1	$f2,0($s2)
    # Line 4073
    lwc1	$f1,3284($s3)
    sub.s	$f1,$f1,$f4
    lwc1	$f0,4($s2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f4
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s2)
    # Line 4074
    lwc1	$f3,3284($s3)
    sub.s	$f3,$f3,$f9
    lwc1	$f2,8($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f9
    add.s	$f2,$f2,$f3
    b	.L0db09938
    swc1	$f2,8($s2)
.L0db09b10:
    # Line 4017
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a3,160($sp)
    jal	__glFrac
    sd	$a4,152($sp)
    li	$a0,10497
    mul.s	$f4,$f0,$f30
    li	$a2,0x8062
    li	$a5,8448
    li	$a6,-1
    li	$a7,7681
    li	$t0,1
    mtc1	$zero,$f5
    trunc.w.s	$f4,$f4
    lwc1	$f6,_lit_3f000000
    lwc1	$f7,_lit_3efff972
    ld	$a4,152($sp)
    mfc1	$s4,$f4
    b	.L0db0988c
    ld	$a3,160($sp)
.L0db09b5c:
    # Line 4027
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a3,160($sp)
    jal	__glFrac
    sd	$a4,152($sp)
    li	$a0,10497
    mul.s	$f0,$f0,$f30
    li	$a2,0x8062
    li	$a5,8448
    li	$a6,-1
    li	$a7,7681
    li	$t0,1
    mtc1	$zero,$f5
    trunc.w.s	$f0,$f0
    lwc1	$f6,_lit_3f000000
    lwc1	$f7,_lit_3efff972
    ld	$a4,152($sp)
    mfc1	$t1,$f0
    b	.L0db098c8
    ld	$a3,160($sp)
.L0db09ba8:
    # Line 4086
    move	$v0,$zero
    # ld	gp,112(sp)
    ld	$s0,120($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,128($sp)
    ld	$s4,72($sp)
    ld	$s5,104($sp)
    ld	$s6,56($sp)
    ld	$s7,96($sp)
    ld	$s8,88($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,32($sp)
    ld	$ra,64($sp)
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glTextureRGB_N_NMN_Span

# Function: __glTextureRGB_N_NMN_StippledSpan
# Declared: Line 4096 (Source lines: 4097-4259)
# Address: 0x0db09bf8 - 0x0db0a138 (Size: 1344 bytes, Frame: 224)
.globl __glTextureRGB_N_NMN_StippledSpan
.ent __glTextureRGB_N_NMN_StippledSpan
__glTextureRGB_N_NMN_StippledSpan:
    # Line 4097
    addiu	$sp,$sp,-224
    sd	$s1,72($sp)
    sd	$s2,56($sp)
    sd	$s5,80($sp)
    sd	$s7,88($sp)
    sd	$s8,96($sp)
    sdc1	$f28,0($sp)
    sdc1	$f30,8($sp)
    sd	$ra,64($sp)
    sd	$s4,112($sp)
    move	$s4,$a0
    sdc1	$f22,24($sp)
    # Line 4125
    lwc1	$f22,30244($a0)
    sdc1	$f24,16($sp)
    # Line 4124
    lwc1	$f24,30240($a0)
    sdc1	$f26,32($sp)
    # Line 4123
    lwc1	$f26,30232($a0)
    sdc1	$f20,40($sp)
    # Line 4122
    lwc1	$f20,30228($a0)
    sd	$s3,136($sp)
    # Line 4119
    lw	$s3,30468($a0)
    sd	$s0,104($sp)
    # Line 4117
    lw	$s0,28216($a0)
    # sd	gp,120(sp)
    # Line 4097
    lui	$v0,0xf
    addiu	$v0,$v0,-9104
    # addu	gp,t9,v0
    # Line 4120
    lw	$v1,30476($a0)
    # Line 4106
    lwc1	$f0,3280($a0)
    # Line 4118
    lw	$at,30252($a0)
    sd	$v1,144($sp)
    sdc1	$f0,48($sp)
    sd	$s6,128($sp)
    # Line 4115
    lw	$s6,2376($a0)
    sd	$at,152($sp)
    # Line 4125
    beqz	$at,.L0db0a0e8
    # Line 4115
    lw	$s6,0($s6)
    sd	$s2,56($sp)
    sd	$ra,64($sp)
    sd	$s1,72($sp)
    sd	$s5,80($sp)
    sd	$s7,88($sp)
    sd	$s8,96($sp)
    sdc1	$f28,0($sp)
    sdc1	$f30,8($sp)
    # Line 4125
    li	$a6,-1
    li	$t0,7681
    li	$a3,0x8062
    li	$a7,8448
    li	$a2,10497
    lwc1	$f7,_lit_3efff972
    lwc1	$f6,_lit_3f000000
    li	$t1,1
    mtc1	$zero,$f5
    xori	$a1,$s6,0x2101
    sltiu	$a1,$a1,1
    b	.L0db09ce8
    sd	$a1,160($sp)
.L0db09ce0:
    ld	$at,152($sp)
    # Line 4136
    beqz	$at,.L0db0a0e8
.L0db09ce8:
    ld	$v0,152($sp)
    # Line 4128
    move	$s7,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0db09d04
    # Line 4132
    ld	$a1,152($sp)
    # Line 4130
    li	$s7,32
    # Line 4132
    ld	$a1,152($sp)
.L0db09d04:
    lui	$s2,0x8000
    # Line 4134
    ld	$v1,144($sp)
    # Line 4132
    subu	$a1,$a1,$s7
    # Line 4136
    addiu	$s7,$s7,-1
    # Line 4134
    lw	$at,0($v1)
    addiu	$v1,$v1,4
    sd	$a1,152($sp)
    sd	$v1,144($sp)
    # Line 4136
    bltz	$s7,.L0db09ce0
    sd	$at,168($sp)
    b	.L0db09e84
    ld	$at,168($sp)
.L0db09d34:
    # Line 4160
    c.le.s	$f8,$f6
    nop
    bc1f	.L0db09fa4
    # Line 4164
    move	$a0,$zero
.L0db09d44:
    # Line 4173
    sll	$s1,$a0,0x2
.L0db09d48:
    subu	$s1,$s1,$a0
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$a0
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$a4
.L0db09d5c:
    # Line 4181
    lwc1	$f30,32($s1)
    # Line 4177
    lw	$a4,0($s1)
    # Line 4176
    lw	$a5,44($s1)
    # Line 4179
    lw	$a0,24($s1)
    # Line 4181
    lw	$s8,4($s0)
    # Line 4178
    lw	$t2,20($s1)
    # Line 4179
    addiu	$a0,$a0,-1
    # Line 4181
    beq	$s8,$a2,.L0db0a040
    # Line 4178
    addiu	$s8,$t2,-1
    # Line 4186
    mul.s	$f1,$f12,$f30
    trunc.w.s	$f1,$f1
    mfc1	$t3,$f1
    nop
    bltz	$t3,.L0db09fcc
    move	$s5,$t3
    # Line 4187
    slt	$a1,$t3,$t2
    bnezl	$a1,.L0db09dac
    # Line 4191
    lw	$at,8($s0)
    # Line 4188
    move	$s5,$s8
.L0db09da8:
    # Line 4191
    lw	$at,8($s0)
.L0db09dac:
    mul.s	$f12,$f26,$f28
    beq	$at,$a2,.L0db0a094
    lwc1	$f30,36($s1)
    # Line 4196
    mul.s	$f2,$f12,$f30
    trunc.w.s	$f2,$f2
    mfc1	$t3,$f2
    nop
    bltz	$t3,.L0db09fd4
    move	$t2,$t3
    # Line 4197
    lw	$v0,24($s1)
    slt	$v0,$t3,$v0
    bnez	$v0,.L0db09de8
    # Line 4198
    nor	$v1,$s8,$zero
    move	$t2,$a0
.L0db09de4:
    nor	$v1,$s8,$zero
.L0db09de8:
    nor	$a1,$a0,$zero
    and	$a1,$a1,$t2
    and	$v1,$v1,$s5
    or	$v1,$v1,$a1
    beqz	$v1,.L0db09f48
    # Line 4213
    sllv	$v1,$t2,$a5
    # Line 4209
    lwc1	$f9,164($s0)
    # Line 4208
    lwc1	$f8,160($s0)
    # Line 4215
    beq	$s6,$a7,.L0db09f70
    # Line 4207
    lwc1	$f4,156($s0)
.L0db09e10:
    ld	$a1,160($sp)
    # Line 4225
    beq	$s6,$a3,.L0db09f9c
    li	$a0,1
    beq	$s6,$t0,.L0db09f98
    move	$a0,$zero
    or	$a1,$a0,$a1
.L0db09e28:
    beqzl	$a1,.L0db09fdc
    # Line 4238
    lwc1	$f3,3284($s4)
    # Line 4228
    lwc1	$f1,30756($s4)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s3)
    # Line 4229
    lwc1	$f0,30760($s4)
    mul.s	$f0,$f0,$f8
    swc1	$f0,4($s3)
    # Line 4230
    lwc1	$f3,30764($s4)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s3)
.L0db09e54:
    # Line 4249
    lwc1	$f1,30400($s4)
    # Line 4248
    lwc1	$f0,30396($s4)
    # Line 4249
    add.s	$f22,$f1,$f22
    # Line 4247
    lwc1	$f3,30388($s4)
    # Line 4248
    add.s	$f24,$f0,$f24
    # Line 4252
    srl	$s2,$s2,0x1
    # Line 4246
    lwc1	$f2,30384($s4)
    # Line 4247
    add.s	$f26,$f3,$f26
    # Line 4250
    addiu	$s3,$s3,16
    # Line 4136
    beq	$s7,$a6,.L0db09ce0
    # Line 4246
    add.s	$f20,$f2,$f20
    ld	$at,168($sp)
.L0db09e84:
    # Line 4160
    mov.s	$f8,$f5
    # Line 4136
    and	$at,$at,$s2
    beqz	$at,.L0db09e54
    addiu	$s7,$s7,-1
    # Line 4139
    lwc1	$f28,3284($s4)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f22,$f28
    lwc1	$f2,240($s0)
    c.le.s	$f4,$f2
    lw	$a4,228($s0)
    bc1f	.L0db09ebc
    # Line 4181
    mul.s	$f12,$f20,$f28
    # Line 4147
    b	.L0db09d5c
    move	$s1,$a4
.L0db09ebc:
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0db09d34
    # Line 4155
    move	$a0,$zero
    # Line 4156
    trunc.w.s	$f0,$f4
    mfc1	$a5,$f0
    nop
    sra	$a5,$a5,0x1
    beqz	$a5,.L0db09f18
    # Line 4158
    sllv	$at,$t1,$a0
    # Line 4156
    addiu	$a0,$a0,1
.L0db09ee8:
    sra	$a5,$a5,0x1
    beqz	$a5,.L0db09f14
    nop
    addiu	$a0,$a0,1
    sra	$a5,$a5,0x1
    beqz	$a5,.L0db09f14
    nop
    addiu	$a0,$a0,1
    sra	$a5,$a5,0x1
    bnezl	$a5,.L0db09ee8
    addiu	$a0,$a0,1
.L0db09f14:
    # Line 4158
    sllv	$at,$t1,$a0
.L0db09f18:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,48($sp)
    b	.L0db09d34
    mul.s	$f8,$f8,$f0
.L0db09f48:
    # Line 4213
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 4215
    lwc1	$f9,8($v0)
    # Line 4214
    lwc1	$f8,4($v0)
    # Line 4215
    bne	$s6,$a7,.L0db09e10
    # Line 4213
    lwc1	$f4,0($v0)
.L0db09f70:
    # Line 4222
    lwc1	$f3,4($s3)
    # Line 4223
    lwc1	$f0,8($s3)
    # Line 4222
    mul.s	$f3,$f3,$f8
    # Line 4221
    lwc1	$f2,0($s3)
    # Line 4223
    mul.s	$f0,$f0,$f9
    # Line 4221
    mul.s	$f2,$f2,$f4
    # Line 4223
    swc1	$f0,8($s3)
    # Line 4222
    swc1	$f3,4($s3)
    # Line 4223
    b	.L0db09e54
    # Line 4221
    swc1	$f2,0($s3)
.L0db09f98:
    # Line 4225
    li	$a0,1
.L0db09f9c:
    b	.L0db09e28
    or	$a1,$a0,$a1
.L0db09fa4:
    # Line 4167
    add.s	$f1,$f8,$f7
    trunc.w.s	$f1,$f1
    # Line 4166
    lw	$a5,236($s0)
    # Line 4167
    mfc1	$a0,$f1
    nop
    slt	$a1,$a5,$a0
    beqz	$a1,.L0db09d48
    # Line 4173
    sll	$s1,$a0,0x2
    b	.L0db09d44
    # Line 4169
    move	$a0,$a5
.L0db09fcc:
    # Line 4187
    b	.L0db09da8
    move	$s5,$zero
.L0db09fd4:
    # Line 4197
    b	.L0db09de4
    move	$t2,$zero
.L0db09fdc:
    # Line 4238
    sub.s	$f3,$f3,$f4
    lwc1	$f2,0($s3)
    # Line 4236
    lw	$at,2376($s4)
    # Line 4238
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,0($s3)
    # Line 4239
    lwc1	$f1,3284($s4)
    sub.s	$f1,$f1,$f8
    lwc1	$f0,4($s3)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s3)
    # Line 4240
    lwc1	$f3,3284($s4)
    sub.s	$f3,$f3,$f9
    lwc1	$f2,8($s3)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f9
    add.s	$f2,$f2,$f3
    b	.L0db09e54
    swc1	$f2,8($s3)
.L0db0a040:
    # Line 4183
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a0,192($sp)
    sd	$a4,184($sp)
    jal	__glFrac
    sd	$a5,176($sp)
    li	$a2,10497
    li	$a3,0x8062
    mul.s	$f4,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    li	$t0,7681
    li	$t1,1
    mtc1	$zero,$f5
    lwc1	$f6,_lit_3f000000
    trunc.w.s	$f4,$f4
    lwc1	$f7,_lit_3efff972
    ld	$a5,176($sp)
    ld	$a4,184($sp)
    mfc1	$s5,$f4
    b	.L0db09da8
    ld	$a0,192($sp)
.L0db0a094:
    # Line 4193
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a0,192($sp)
    sd	$a4,184($sp)
    jal	__glFrac
    sd	$a5,176($sp)
    li	$a2,10497
    li	$a3,0x8062
    mul.s	$f0,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    li	$t0,7681
    li	$t1,1
    mtc1	$zero,$f5
    lwc1	$f6,_lit_3f000000
    trunc.w.s	$f0,$f0
    lwc1	$f7,_lit_3efff972
    ld	$a5,176($sp)
    ld	$a4,184($sp)
    mfc1	$t2,$f0
    b	.L0db09de4
    ld	$a0,192($sp)
.L0db0a0e8:
    # Line 4259
    move	$v0,$zero
    # ld	gp,120(sp)
    ld	$s0,104($sp)
    ld	$s1,72($sp)
    ld	$s2,56($sp)
    ld	$s3,136($sp)
    ld	$s4,112($sp)
    ld	$s5,80($sp)
    ld	$s6,128($sp)
    ld	$s7,88($sp)
    ld	$s8,96($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,32($sp)
    ld	$ra,64($sp)
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glTextureRGB_N_NMN_StippledSpan

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3efff972:
    .word 0x3efff972
_lit_3f000000:
    .word 0x3f000000

