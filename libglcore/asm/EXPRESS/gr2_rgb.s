# Source: ../EXPRESS/gr2_rgb.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_rgb.c
# Total Functions: 15

.text

# Function: Store
# Declared: Line 36 (Source lines: 40-47)
# Address: 0x0da67974 - 0x0da679c8 (Size: 84 bytes, Frame: 0)
.ent Store
Store:
    # Line 40
    lw	$a0,0($a1)
    lui	$at,0x5
    ori	$at,$at,0x20ac
    sw	$a0,0($at)
    # Line 41
    lw	$a0,4($a1)
    lui	$v1,0x5
    ori	$v1,$v1,0x277c
    sw	$a0,0($v1)
    # Line 42
    lw	$v0,8($a1)
    sw	$v0,0($v1)
    # Line 43
    lwc1	$f3,12($a1)
    lui	$at,0x4
    ori	$at,$at,0x277c
    swc1	$f3,0($at)
    # Line 44
    lwc1	$f2,16($a1)
    swc1	$f2,0($at)
    # Line 45
    lwc1	$f1,20($a1)
    swc1	$f1,0($at)
    # Line 46
    lwc1	$f0,24($a1)
    # Line 47
    jr	$ra
    # Line 46
    swc1	$f0,0($at)
.end Store

# Function: Store_B
# Declared: Line 52 (Source lines: 53-74)
# Address: 0x0da679c8 - 0x0da67a8c (Size: 196 bytes, Frame: 192)
.ent Store_B
Store_B:
    # Line 53
    move	$a6,$a0
    addiu	$sp,$sp,-64
    # sd	gp,24(sp)
    sd	$s8,16($sp)
    lui	$v0,0x19
    # Line 54
    lw	$a5,0($a0)
    # Line 53
    addiu	$v0,$v0,-352
    sd	$s0,32($sp)
    # Line 54
    lw	$at,1696($a5)
    # Line 53
    move	$s0,$a1
    # Line 54
    andi	$at,$at,0x2
    beqz	$at,.L0da67a24
    # Line 53
    nop
    # Line 62
    addiu	$a3,$sp,0
    move	$a2,$s0
    move	$a1,$a6
    lw	$t9,12548($a5)
    move	$a0,$a5
    sd	$ra,40($sp)
    jalr	$t9
    # Line 61
    addiu	$s8,$sp,0
    b	.L0da67a28
    ld	$ra,40($sp)
.L0da67a24:
    # Line 64
    addiu	$s8,$s0,12
.L0da67a28:
    # Line 67
    lw	$at,0($s0)
    lui	$v0,0x5
    ori	$v0,$v0,0x20ac
    sw	$at,0($v0)
    # Line 68
    lw	$at,4($s0)
    lui	$a3,0x5
    ori	$a3,$a3,0x277c
    sw	$at,0($a3)
    # Line 69
    lw	$a0,8($s0)
    sw	$a0,0($a3)
    # Line 70
    lwc1	$f3,0($s8)
    lui	$v1,0x4
    ori	$v1,$v1,0x277c
    swc1	$f3,0($v1)
    # Line 71
    lwc1	$f2,4($s8)
    swc1	$f2,0($v1)
    # Line 72
    lwc1	$f1,8($s8)
    # ld	gp,24(sp)
    swc1	$f1,0($v1)
    # Line 74
    ld	$s0,32($sp)
    # Line 73
    lwc1	$f0,12($s8)
    # Line 74
    ld	$s8,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 73
    swc1	$f0,0($v1)
.end Store_B

# Function: Clear
# Declared: Line 76 (Source lines: 78-100)
# Address: 0x0da67a8c - 0x0da67b34 (Size: 168 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 79
    lw	$a2,0($a0)
    # Line 78
    move	$a3,$zero
    # Line 79
    lw	$at,1696($a2)
    # Line 88
    lui	$a1,0x4
    ori	$a1,$a1,0x2044
    # Line 79
    andi	$at,$at,0x8
    beqz	$at,.L0da67ae8
    lwc1	$f4,1760($a2)
    # Line 83
    lwc1	$f0,1764($a2)
    # Line 86
    lw	$v0,12($a0)
    # Line 83
    add.s	$f0,$f0,$f4
    lwc1	$f5,1768($a2)
    # Line 86
    li	$v1,24
    beq	$v0,$v1,.L0da67ae0
    # Line 83
    add.s	$f5,$f5,$f0
    # Line 86
    trunc.w.s	$f1,$f5
    cvt.s.w	$f1,$f1
    c.eq.s	$f1,$f5
    nop
    bc1f	.L0da67aec
    # Line 93
    lui	$v0,0x4
.L0da67ae0:
    # Line 87
    li	$a3,1
    # Line 88
    sw	$zero,0($a1)
.L0da67ae8:
    # Line 93
    lui	$v0,0x4
.L0da67aec:
    ori	$v0,$v0,0x2410
    swc1	$f4,0($v0)
    # Line 94
    lwc1	$f0,1764($a2)
    lui	$at,0x4
    ori	$at,$at,0x277c
    swc1	$f0,0($at)
    # Line 95
    lwc1	$f3,1768($a2)
    # Line 96
    li	$a0,1
    # Line 95
    swc1	$f3,0($at)
    # Line 99
    lui	$v1,0x4
    # Line 96
    lwc1	$f2,1772($a2)
    # Line 99
    ori	$v1,$v1,0x2044
    # Line 96
    beq	$a0,$a3,.L0da67b2c
    swc1	$f2,0($at)
    # Line 100
    jr	$ra
    nop
.L0da67b2c:
    jr	$ra
    # Line 99
    sw	$a0,0($v1)
.end Clear

# Function: CZClear
# Declared: Line 103 (Source lines: 105-135)
# Address: 0x0da67b34 - 0x0da67c08 (Size: 212 bytes, Frame: 0)
.ent CZClear
CZClear:
    # Line 115
    lw	$v1,76($a1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    lw	$v0,0($a1)
    cvt.d.l	$f1,$f1
    ldc1	$f0,1544($v0)
    mul.d	$f0,$f0,$f1
    # Line 108
    lw	$v0,__glCurrentContext
    # Line 105
    move	$a3,$zero
    # Line 131
    li	$v1,-1
    # Line 115
    lw	$at,1696($v0)
    trunc.w.d	$f0,$f0
    # Line 113
    lwc1	$f6,1768($v0)
    # Line 112
    lwc1	$f5,1764($v0)
    # Line 115
    andi	$at,$at,0x8
    mfc1	$a4,$f0
    beqz	$at,.L0da67bc0
    # Line 111
    lwc1	$f4,1760($v0)
    # Line 119
    li	$at,24
    lw	$a1,12($a0)
    # Line 121
    lui	$v0,0x4
    # Line 119
    beql	$a1,$at,.L0da67bb8
    # Line 121
    ori	$v0,$v0,0x2044
    # Line 119
    add.s	$f3,$f4,$f5
    add.s	$f3,$f3,$f6
    trunc.w.s	$f2,$f3
    cvt.s.w	$f2,$f2
    c.eq.s	$f2,$f3
    nop
    bc1f	.L0da67bc4
    # Line 131
    li	$a0,1
    # Line 121
    ori	$v0,$v0,0x2044
.L0da67bb8:
    # Line 120
    li	$a3,1
    # Line 121
    sw	$zero,0($v0)
.L0da67bc0:
    # Line 131
    li	$a0,1
.L0da67bc4:
    # Line 125
    lui	$at,0x4
    ori	$at,$at,0x2280
    swc1	$f4,0($at)
    # Line 126
    lui	$a1,0x4
    ori	$a1,$a1,0x277c
    swc1	$f5,0($a1)
    # Line 127
    swc1	$f6,0($a1)
    # Line 128
    sw	$zero,0($a1)
    # Line 130
    sw	$a4,0($a1)
    # Line 131
    beq	$a0,$a3,.L0da67bf8
    sw	$v1,0($a1)
    # Line 135
    jr	$ra
    nop
.L0da67bf8:
    # Line 134
    lui	$at,0x4
    ori	$at,$at,0x2044
    # Line 135
    jr	$ra
    # Line 134
    sw	$a0,0($at)
.end CZClear

# Function: ReadColor
# Declared: Line 139 (Source lines: 140-179)
# Address: 0x0da67c08 - 0x0da67da0 (Size: 408 bytes, Frame: 224)
.ent ReadColor
ReadColor:
    # Line 140
    addiu	$sp,$sp,-96
    sd	$a3,8($sp)
    # Line 152
    lui	$t8,0x4
    ori	$t8,$t8,0x22a0
    # Line 151
    lui	$at,0x4
    ori	$at,$at,0x229c
    sd	$s0,48($sp)
    # Line 141
    lw	$s0,0($a0)
    sd	$s7,32($sp)
    sd	$s2,24($sp)
    # Line 155
    move	$a0,$s0
    # sd	gp,16(sp)
    # Line 147
    lw	$s2,3372($s0)
    # Line 148
    lw	$s7,3376($s0)
    # Line 151
    sw	$zero,0($at)
    sd	$ra,40($sp)
    # Line 140
    lui	$ra,0x19
    addiu	$ra,$ra,-928
    # addu	gp,t9,ra
    # Line 155
    # lw $t9, -32392($gp) # &__glExpSetReadBuffer
    # Line 152
    sw	$zero,0($t8)
    # Line 148
    subu	$s7,$a2,$s7
    # Line 155
    jal	__glExpSetReadBuffer
    # Line 147
    subu	$s2,$a1,$s2
    # Line 164
    lui	$a0,0x6
    ori	$a0,$a0,0xc040
    # Line 160
    li	$v0,1
    # Line 159
    lui	$at,0x4
    ori	$at,$at,0x277c
    # Line 158
    lui	$v1,0x4
    ori	$v1,$v1,0x22b4
    # Line 157
    lui	$a1,0x4
    ori	$a1,$a1,0x22f0
    sw	$zero,0($a1)
    # Line 158
    sw	$s2,0($v1)
    # Line 159
    sw	$s7,0($at)
    # Line 160
    sw	$v0,0($at)
    # Line 161
    sw	$v0,0($at)
    # Line 162
    sw	$v0,0($at)
    # Line 163
    sw	$zero,0($at)
    b	.L0da67cc4
    # Line 164
    sw	$zero,0($at)
.L0da67cb0:
    # Line 166
    sw	$zero,0($sp)
    lw	$a1,0($sp)
    slti	$a1,$a1,10
    bnez	$a1,.L0da67d7c
    nop
.L0da67cc4:
    lw	$at,0($a0)
    andi	$at,$at,0x1
    beqz	$at,.L0da67cb0
    nop
    # Line 172
    move	$a0,$s0
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    # Line 169
    lui	$v0,0x4
    # Line 167
    lui	$s2,0x1
    ori	$s2,$s2,0x2088
    lw	$s2,0($s2)
    # Line 169
    ori	$v0,$v0,0x22f4
    # Line 168
    lui	$v1,0x6
    ori	$v1,$v1,0xd000
    sw	$zero,0($v1)
    # Line 172
    jal	__glExpSetReadSource
    # Line 169
    sw	$zero,0($v0)
    # Line 175
    ld	$s7,8($sp)
    lw	$a0,31872($s0)
    andi	$a1,$s2,0xff
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f3,0($a0)
    # Line 178
    lwc1	$f1,_lit_3f800000
    # ld	gp,16(sp)
    # Line 175
    swc1	$f3,0($s7)
    # Line 176
    srl	$v1,$s2,0x8
    lw	$v0,31876($s0)
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f2,0($v0)
    # Line 177
    srl	$at,$s2,0x10
    # Line 179
    ld	$s2,24($sp)
    # Line 176
    swc1	$f2,4($s7)
    # Line 177
    andi	$at,$at,0xff
    lw	$ra,31880($s0)
    sll	$at,$at,0x2
    # Line 179
    ld	$s0,48($sp)
    # Line 177
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    # Line 178
    swc1	$f1,12($s7)
    # Line 179
    ld	$ra,40($sp)
    # Line 177
    swc1	$f0,8($s7)
    # Line 179
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da67d7c:
    # Line 166
    lw	$v0,0($sp)
    addiu	$v0,$v0,1
    sw	$v0,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da67d7c
    nop
    b	.L0da67cc4
    nop
.end ReadColor

# Function: StoreSpan
# Declared: Line 183 (Source lines: 184-212)
# Address: 0x0da67da0 - 0x0da67e90 (Size: 240 bytes, Frame: 128)
.ent StoreSpan
StoreSpan:
    # Line 184
    addiu	$sp,$sp,-128
    sd	$s1,72($sp)
    sd	$s4,56($sp)
    move	$s4,$a0
    # Line 194
    lw	$a0,30200($a0)
    # Line 192
    lw	$a2,30440($s4)
    # Line 190
    lw	$s1,30252($s4)
    # Line 194
    sw	$a0,0($sp)
    sd	$s0,64($sp)
    # Line 195
    lw	$v1,30204($s4)
    # sd	gp,80(sp)
    # Line 184
    lui	$v0,0x19
    # Line 195
    sw	$v1,4($sp)
    # Line 184
    addiu	$v0,$v0,-1336
    # Line 196
    lw	$at,30208($s4)
    # Line 184
    # addu	gp,t9,v0
    # Line 199
    addiu	$s1,$s1,-1
    # Line 196
    sw	$at,8($sp)
    # Line 199
    bltz	$s1,.L0da67e74
    # Line 197
    lw	$s0,30468($s4)
    sd	$ra,88($sp)
    sd	$s7,104($sp)
    # Line 199
    li	$s7,-1
    sd	$s5,96($sp)
    b	.L0da67e10
    andi	$s5,$a2,0x4
.L0da67e08:
    beql	$s1,$s7,.L0da67e6c
    ld	$s7,104($sp)
.L0da67e10:
    # Line 200
    lwc1	$f3,0($s0)
    swc1	$f3,12($sp)
    # Line 201
    lwc1	$f2,4($s0)
    swc1	$f2,16($sp)
    # Line 202
    lwc1	$f1,8($s0)
    swc1	$f1,20($sp)
    # Line 203
    lwc1	$f0,12($s0)
    swc1	$f0,24($sp)
    # Line 204
    lw	$a0,11768($s4)
    lw	$t9,164($a0)
    # Line 206
    addiu	$s0,$s0,16
    # Line 199
    addiu	$s1,$s1,-1
    # Line 204
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 205
    lw	$a1,0($sp)
    # Line 208
    lw	$v0,8($sp)
    # Line 205
    addiu	$a1,$a1,1
    # Line 206
    beqz	$s5,.L0da67e08
    # Line 205
    sw	$a1,0($sp)
    # Line 208
    lw	$at,30328($s4)
    addu	$at,$at,$v0
    b	.L0da67e08
    sw	$at,8($sp)
.L0da67e6c:
    ld	$s5,96($sp)
    ld	$ra,88($sp)
.L0da67e74:
    # Line 212
    move	$v0,$zero
    # ld	gp,80(sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 215 (Source lines: 216-264)
# Address: 0x0da67e90 - 0x0da67fe0 (Size: 336 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 216
    addiu	$sp,$sp,-160
    sd	$s5,104($sp)
    sd	$s8,96($sp)
    sd	$s3,88($sp)
    # Line 227
    lw	$a3,30440($a0)
    sd	$s7,64($sp)
    # Line 225
    lw	$s7,30476($a0)
    # Line 229
    lw	$a2,30200($a0)
    sd	$s6,80($sp)
    # Line 224
    lw	$s6,30252($a0)
    # Line 229
    sw	$a2,0($sp)
    # Line 216
    move	$s3,$a0
    # Line 230
    lw	$v1,30204($a0)
    sd	$s1,72($sp)
    # sd	gp,56(sp)
    sw	$v1,4($sp)
    # Line 216
    lui	$v0,0x19
    # Line 231
    lw	$at,30208($a0)
    # Line 216
    addiu	$v0,$v0,-1576
    # addu	gp,t9,v0
    # Line 231
    sw	$at,8($sp)
    # Line 232
    beqz	$s6,.L0da67fc0
    lw	$s1,30468($a0)
    sd	$s2,136($sp)
    sd	$ra,128($sp)
    sd	$s4,120($sp)
    sd	$s0,112($sp)
    li	$s8,-1
    b	.L0da67f0c
    andi	$s5,$a3,0x4
.L0da67f08:
    # Line 243
    beqz	$s6,.L0da67fa8
.L0da67f0c:
    # Line 235
    slti	$a1,$s6,33
    bnez	$a1,.L0da67f1c
    move	$s2,$s6
    # Line 237
    li	$s2,32
.L0da67f1c:
    lui	$s0,0x8000
    # Line 241
    lw	$s4,0($s7)
    # Line 239
    subu	$s6,$s6,$s2
    # Line 243
    addiu	$s2,$s2,-1
    bltz	$s2,.L0da67f08
    # Line 241
    addiu	$s7,$s7,4
    b	.L0da67f68
    # Line 243
    and	$v1,$s4,$s0
.L0da67f3c:
    # Line 252
    addiu	$s1,$s1,16
    # Line 251
    addiu	$a2,$a2,1
    # Line 252
    beqz	$s5,.L0da67f5c
    # Line 251
    sw	$a2,0($sp)
    # Line 254
    lw	$v0,8($sp)
    lw	$at,30328($s3)
    addu	$at,$at,$v0
    sw	$at,8($sp)
.L0da67f5c:
    # Line 257
    srl	$s0,$s0,0x1
    # Line 243
    beq	$s2,$s8,.L0da67f08
    and	$v1,$s4,$s0
.L0da67f68:
    beqz	$v1,.L0da67f3c
    addiu	$s2,$s2,-1
    # Line 245
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    # Line 246
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    # Line 247
    lwc1	$f1,8($s1)
    swc1	$f1,20($sp)
    # Line 248
    lwc1	$f0,12($s1)
    swc1	$f0,24($sp)
    # Line 249
    lw	$a0,11768($s3)
    lw	$t9,164($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da67f3c
    lw	$a2,0($sp)
.L0da67fa8:
    ld	$s8,96($sp)
    ld	$s5,104($sp)
    ld	$s0,112($sp)
    ld	$s4,120($sp)
    ld	$ra,128($sp)
    ld	$s2,136($sp)
.L0da67fc0:
    # Line 264
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s1,72($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end StoreStippledSpan

# Function: __glExpTextureSpan
# Declared: Line 269 (Source lines: 270-329)
# Address: 0x0da67fe0 - 0x0da683a4 (Size: 964 bytes, Frame: 176)
.globl __glExpTextureSpan
.ent __glExpTextureSpan
__glExpTextureSpan:
    # Line 289
    lwc1	$f1,30244($a0)
    # Line 287
    lwc1	$f2,30236($a0)
    # Line 285
    lwc1	$f3,30228($a0)
    # Line 271
    lw	$a2,30440($a0)
    # Line 270
    addiu	$sp,$sp,-176
    sdc1	$f30,80($sp)
    # Line 288
    lwc1	$f30,30240($a0)
    sdc1	$f28,72($sp)
    # Line 286
    lwc1	$f28,30232($a0)
    sdc1	$f22,56($sp)
    # Line 284
    lwc1	$f22,30224($a0)
    sdc1	$f24,64($sp)
    # Line 283
    lwc1	$f24,30220($a0)
    sdc1	$f26,48($sp)
    # Line 282
    lwc1	$f26,30216($a0)
    sdc1	$f20,40($sp)
    # Line 281
    lwc1	$f20,30212($a0)
    # Line 291
    lw	$v1,30200($a0)
    sd	$s3,88($sp)
    # Line 279
    lw	$s3,30252($a0)
    # Line 291
    mtc1	$v1,$f0
    lui	$at,0x4
    # sd	gp,104(sp)
    cvt.s.w	$f0,$f0
    # Line 270
    lui	$v0,0x19
    addiu	$v0,$v0,-1912
    # addu	gp,t9,v0
    # Line 292
    lwc1	$f4,_lit_3f800000
    # Line 291
    ori	$at,$at,0x20a4
    swc1	$f0,0($at)
    # Line 292
    swc1	$f4,0($at)
    # Line 293
    lw	$v1,30204($a0)
    sdc1	$f3,32($sp)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    sdc1	$f2,16($sp)
    # Line 294
    mtc1	$zero,$f2
    # Line 293
    swc1	$f3,0($at)
    # Line 294
    swc1	$f2,0($at)
    # Line 295
    lw	$v0,30208($a0)
    sdc1	$f1,24($sp)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,0($at)
    # Line 296
    lw	$t9,30328($a0)
    mtc1	$t9,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$s0,96($sp)
    # Line 270
    move	$s0,$a0
    # Line 298
    addiu	$s3,$s3,-1
    bltz	$s3,.L0da681e4
    # Line 296
    swc1	$f0,0($at)
    sd	$s5,136($sp)
    # Line 298
    li	$s5,-1
    sd	$s4,128($sp)
    andi	$s4,$a2,0x2
    sd	$s1,144($sp)
    lui	$s1,0x4
    addiu	$a0,$s3,1
    andi	$v1,$a0,0x1
    beqz	$v1,.L0da681c8
    ori	$s1,$s1,0x20a8
    # Line 299
    lwc1	$f18,3284($s0)
    div.s	$f18,$f18,$f30
    # Line 309
    addiu	$a1,$sp,0
    sd	$a0,112($sp)
    move	$a0,$s0
    ldc1	$f16,16($sp)
    ldc1	$f17,24($sp)
    # Line 308
    swc1	$f22,12($sp)
    # Line 307
    swc1	$f24,8($sp)
    # Line 309
    mul.s	$f17,$f17,$f18
    # Line 306
    swc1	$f26,4($sp)
    # Line 305
    swc1	$f20,0($sp)
    # Line 309
    mul.s	$f16,$f16,$f18
    ldc1	$f14,32($sp)
    lw	$t9,12532($s0)
    mul.s	$f15,$f28,$f18
    sd	$ra,120($sp)
    jalr	$t9
    mul.s	$f14,$f14,$f18
    # Line 311
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    # Line 312
    lwc1	$f2,4($sp)
    swc1	$f2,0($s1)
    # Line 313
    lwc1	$f1,8($sp)
    swc1	$f1,0($s1)
    ld	$a0,112($sp)
    # Line 314
    lwc1	$f0,12($sp)
    ld	$ra,120($sp)
    beqz	$s4,.L0da68184
    swc1	$f0,0($s1)
    # Line 320
    lwc1	$f3,30300($s0)
    # Line 319
    lwc1	$f2,30296($s0)
    # Line 320
    add.s	$f22,$f3,$f22
    # Line 318
    lwc1	$f1,30292($s0)
    # Line 319
    add.s	$f24,$f2,$f24
    # Line 317
    lwc1	$f0,30288($s0)
    # Line 318
    add.s	$f26,$f1,$f26
    # Line 317
    add.s	$f20,$f0,$f20
.L0da68184:
    # Line 298
    addiu	$s3,$s3,-1
    # Line 325
    lwc1	$f1,30396($s0)
    add.s	$f30,$f1,$f30
    # Line 326
    ldc1	$f2,24($sp)
    lwc1	$f3,30400($s0)
    # Line 324
    lwc1	$f0,30392($s0)
    # Line 326
    add.s	$f2,$f3,$f2
    # Line 324
    ldc1	$f3,16($sp)
    # Line 322
    lwc1	$f1,30384($s0)
    # Line 324
    add.s	$f3,$f0,$f3
    # Line 322
    ldc1	$f0,32($sp)
    sdc1	$f2,24($sp)
    # Line 323
    lwc1	$f2,30388($s0)
    # Line 322
    add.s	$f0,$f1,$f0
    sdc1	$f3,16($sp)
    # Line 323
    add.s	$f28,$f2,$f28
    sdc1	$f0,32($sp)
.L0da681c8:
    sra	$at,$a0,0x1
    bnez	$at,.L0da68250
    sd	$ra,120($sp)
.L0da681d4:
    ld	$s1,144($sp)
    ld	$s5,136($sp)
    ld	$s4,128($sp)
    ld	$ra,120($sp)
.L0da681e4:
    # Line 329
    move	$v0,$zero
    # ld	gp,104(sp)
    ld	$s0,96($sp)
    ld	$s3,88($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,64($sp)
    ldc1	$f26,48($sp)
    ldc1	$f28,72($sp)
    ldc1	$f30,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da68214:
    # Line 298
    addiu	$s3,$s3,-2
    # Line 325
    lwc1	$f3,30396($s0)
    # Line 323
    lwc1	$f1,30388($s0)
    # Line 325
    add.s	$f30,$f3,$f30
    # Line 323
    add.s	$f28,$f1,$f28
    # Line 324
    lwc1	$f2,30392($s0)
    add.s	$f6,$f2,$f6
    # Line 326
    lwc1	$f0,30400($s0)
    add.s	$f5,$f0,$f5
    # Line 322
    lwc1	$f0,30384($s0)
    add.s	$f4,$f0,$f4
    sdc1	$f5,24($sp)
    sdc1	$f6,16($sp)
    # Line 298
    beq	$s3,$s5,.L0da681d4
    sdc1	$f4,32($sp)
.L0da68250:
    # Line 299
    lwc1	$f18,3284($s0)
    div.s	$f18,$f18,$f30
    # Line 309
    addiu	$a1,$sp,0
    ldc1	$f16,16($sp)
    ldc1	$f17,24($sp)
    # Line 308
    swc1	$f22,12($sp)
    # Line 307
    swc1	$f24,8($sp)
    # Line 309
    mul.s	$f17,$f17,$f18
    # Line 306
    swc1	$f26,4($sp)
    # Line 305
    swc1	$f20,0($sp)
    # Line 309
    mul.s	$f16,$f16,$f18
    ldc1	$f14,32($sp)
    lw	$t9,12532($s0)
    mul.s	$f15,$f28,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    # Line 311
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    # Line 312
    lwc1	$f2,4($sp)
    swc1	$f2,0($s1)
    # Line 313
    lwc1	$f1,8($sp)
    ldc1	$f6,32($sp)
    swc1	$f1,0($s1)
    ldc1	$f5,24($sp)
    # Line 314
    lwc1	$f0,12($sp)
    ldc1	$f4,16($sp)
    beqz	$s4,.L0da682e4
    swc1	$f0,0($s1)
    # Line 320
    lwc1	$f3,30300($s0)
    # Line 319
    lwc1	$f2,30296($s0)
    # Line 320
    add.s	$f22,$f3,$f22
    # Line 318
    lwc1	$f1,30292($s0)
    # Line 319
    add.s	$f24,$f2,$f24
    # Line 317
    lwc1	$f0,30288($s0)
    # Line 318
    add.s	$f26,$f1,$f26
    # Line 317
    add.s	$f20,$f0,$f20
.L0da682e4:
    # Line 325
    lwc1	$f15,30396($s0)
    add.s	$f30,$f15,$f30
    # Line 299
    lwc1	$f14,3284($s0)
    div.s	$f14,$f14,$f30
    # Line 323
    lwc1	$f16,30388($s0)
    # Line 326
    lwc1	$f18,30400($s0)
    # Line 323
    add.s	$f28,$f16,$f28
    # Line 324
    lwc1	$f17,30392($s0)
    # Line 326
    add.s	$f5,$f18,$f5
    # Line 309
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 324
    add.s	$f4,$f17,$f4
    sdc1	$f5,24($sp)
    # Line 322
    lwc1	$f15,30384($s0)
    # Line 308
    swc1	$f22,12($sp)
    # Line 307
    swc1	$f24,8($sp)
    # Line 306
    swc1	$f26,4($sp)
    # Line 309
    mul.s	$f17,$f5,$f14
    # Line 305
    swc1	$f20,0($sp)
    # Line 322
    add.s	$f6,$f15,$f6
    # Line 309
    mul.s	$f16,$f4,$f14
    sdc1	$f4,16($sp)
    lw	$t9,12532($s0)
    mul.s	$f15,$f28,$f14
    sdc1	$f6,32($sp)
    jalr	$t9
    mul.s	$f14,$f6,$f14
    # Line 311
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    # Line 312
    lwc1	$f2,4($sp)
    swc1	$f2,0($s1)
    # Line 313
    lwc1	$f1,8($sp)
    ldc1	$f6,16($sp)
    swc1	$f1,0($s1)
    ldc1	$f5,24($sp)
    # Line 314
    lwc1	$f0,12($sp)
    ldc1	$f4,32($sp)
    beqz	$s4,.L0da68214
    swc1	$f0,0($s1)
    # Line 320
    lwc1	$f3,30300($s0)
    # Line 319
    lwc1	$f2,30296($s0)
    # Line 320
    add.s	$f22,$f3,$f22
    # Line 318
    lwc1	$f1,30292($s0)
    # Line 319
    add.s	$f24,$f2,$f24
    # Line 317
    lwc1	$f0,30288($s0)
    # Line 318
    add.s	$f26,$f1,$f26
    b	.L0da68214
    # Line 317
    add.s	$f20,$f0,$f20
.end __glExpTextureSpan

# Function: __glExpTextureStippledSpan
# Declared: Line 332 (Source lines: 333-414)
# Address: 0x0da683a4 - 0x0da68630 (Size: 652 bytes, Frame: 208)
.globl __glExpTextureStippledSpan
.ent __glExpTextureStippledSpan
__glExpTextureStippledSpan:
    # Line 333
    addiu	$sp,$sp,-208
    sd	$s1,96($sp)
    # Line 350
    lwc1	$f4,30224($a0)
    # Line 349
    lwc1	$f5,30220($a0)
    # Line 348
    lwc1	$f6,30216($a0)
    # Line 345
    lw	$a1,30476($a0)
    # Line 334
    lw	$a2,30440($a0)
    sdc1	$f22,64($sp)
    # Line 355
    lwc1	$f22,30244($a0)
    sdc1	$f20,80($sp)
    # Line 354
    lwc1	$f20,30240($a0)
    sdc1	$f28,48($sp)
    # Line 353
    lwc1	$f28,30236($a0)
    sdc1	$f24,56($sp)
    # Line 352
    lwc1	$f24,30232($a0)
    sdc1	$f26,72($sp)
    # Line 351
    lwc1	$f26,30228($a0)
    sdc1	$f30,40($sp)
    # Line 347
    lwc1	$f30,30212($a0)
    # Line 357
    lw	$v1,30200($a0)
    sd	$s8,88($sp)
    # Line 344
    lw	$s8,30252($a0)
    # Line 357
    mtc1	$v1,$f1
    lui	$at,0x4
    # sd	gp,104(sp)
    cvt.s.w	$f1,$f1
    # Line 333
    lui	$v0,0x19
    addiu	$v0,$v0,-2876
    # addu	gp,t9,v0
    # Line 358
    lwc1	$f0,_lit_3f800000
    # Line 357
    ori	$at,$at,0x20a4
    swc1	$f1,0($at)
    # Line 358
    swc1	$f0,0($at)
    # Line 333
    move	$s1,$a0
    # Line 359
    lw	$a0,30204($a0)
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 360
    mtc1	$zero,$f2
    # Line 359
    swc1	$f3,0($at)
    # Line 360
    swc1	$f2,0($at)
    # Line 361
    lw	$v1,30208($s1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,0($at)
    # Line 362
    lw	$v0,30328($s1)
    mtc1	$v0,$f0
    sd	$s4,144($sp)
    cvt.s.w	$f0,$f0
    sd	$s5,128($sp)
    sd	$s6,160($sp)
    sd	$s7,120($sp)
    sd	$a1,112($sp)
    beqz	$s8,.L0da68600
    swc1	$f0,0($at)
    sd	$s2,176($sp)
    sd	$s3,168($sp)
    sd	$ra,152($sp)
    sd	$s0,136($sp)
    li	$s6,-1
    andi	$s4,$a2,0x2
    lui	$s5,0x4
    lui	$s7,0x4
    ori	$s7,$s7,0x20b4
    b	.L0da684bc
    ori	$s5,$s5,0x20a8
.L0da684b8:
    # Line 373
    beqz	$s8,.L0da685e0
.L0da684bc:
    # Line 371
    ld	$v0,112($sp)
    # Line 365
    slti	$at,$s8,33
    bnez	$at,.L0da684d0
    move	$s2,$s8
    # Line 367
    li	$s2,32
.L0da684d0:
    lui	$s0,0x8000
    # Line 371
    lw	$s3,0($v0)
    addiu	$v0,$v0,4
    # Line 369
    subu	$s8,$s8,$s2
    # Line 373
    addiu	$s2,$s2,-1
    bltz	$s2,.L0da684b8
    sd	$v0,112($sp)
    b	.L0da68558
    and	$v1,$s3,$s0
.L0da684f4:
    # Line 392
    sw	$zero,0($s7)
.L0da684f8:
    # Line 373
    addiu	$s2,$s2,-1
    # Line 392
    beqzl	$s4,.L0da68528
    # Line 404
    lwc1	$f1,30396($s1)
    # Line 399
    lwc1	$f1,30300($s1)
    # Line 398
    lwc1	$f0,30296($s1)
    # Line 399
    add.s	$f4,$f1,$f4
    # Line 397
    lwc1	$f3,30292($s1)
    # Line 398
    add.s	$f5,$f0,$f5
    # Line 396
    lwc1	$f2,30288($s1)
    # Line 397
    add.s	$f6,$f3,$f6
    # Line 396
    add.s	$f30,$f2,$f30
    # Line 404
    lwc1	$f1,30396($s1)
.L0da68528:
    # Line 403
    lwc1	$f0,30392($s1)
    # Line 404
    add.s	$f20,$f1,$f20
    # Line 402
    lwc1	$f3,30388($s1)
    # Line 403
    add.s	$f28,$f0,$f28
    # Line 402
    add.s	$f24,$f3,$f24
    # Line 405
    lwc1	$f2,30400($s1)
    add.s	$f22,$f2,$f22
    # Line 401
    lwc1	$f2,30384($s1)
    # Line 407
    srl	$s0,$s0,0x1
    # Line 373
    beq	$s2,$s6,.L0da684b8
    # Line 401
    add.s	$f26,$f2,$f26
    # Line 373
    and	$v1,$s3,$s0
.L0da68558:
    beqz	$v1,.L0da684f4
    nop
    # Line 375
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f20
    sdc1	$f4,16($sp)
    sdc1	$f5,24($sp)
    sdc1	$f6,32($sp)
    # Line 385
    addiu	$a1,$sp,0
    # Line 383
    mov.s	$f16,$f5
    # Line 382
    mov.s	$f17,$f6
    # Line 384
    swc1	$f4,12($sp)
    # Line 383
    swc1	$f5,8($sp)
    # Line 385
    mul.s	$f17,$f22,$f14
    # Line 382
    swc1	$f6,4($sp)
    # Line 381
    swc1	$f30,0($sp)
    # Line 385
    mul.s	$f16,$f28,$f14
    # Line 384
    mov.s	$f15,$f4
    # Line 385
    lw	$t9,12532($s1)
    mul.s	$f15,$f24,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f26,$f14
    # Line 387
    lwc1	$f3,0($sp)
    swc1	$f3,0($s5)
    # Line 388
    lwc1	$f2,4($sp)
    swc1	$f2,0($s5)
    # Line 389
    lwc1	$f1,8($sp)
    ldc1	$f6,32($sp)
    swc1	$f1,0($s5)
    ldc1	$f5,24($sp)
    # Line 390
    lwc1	$f0,12($sp)
    ldc1	$f4,16($sp)
    b	.L0da684f8
    swc1	$f0,0($s5)
.L0da685e0:
    ld	$s7,120($sp)
    ld	$s5,128($sp)
    ld	$s0,136($sp)
    ld	$s4,144($sp)
    ld	$ra,152($sp)
    ld	$s6,160($sp)
    ld	$s3,168($sp)
    ld	$s2,176($sp)
.L0da68600:
    # Line 414
    move	$v0,$zero
    # ld	gp,104(sp)
    ld	$s1,96($sp)
    ld	$s8,88($sp)
    ldc1	$f20,80($sp)
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    ldc1	$f26,72($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glExpTextureStippledSpan

# Function: ReadSpan
# Declared: Line 417 (Source lines: 419-471)
# Address: 0x0da68630 - 0x0da6890c (Size: 732 bytes, Frame: 128)
.ent ReadSpan
ReadSpan:
    # Line 419
    addiu	$sp,$sp,-128
    sd	$s1,40($sp)
    move	$s1,$a4
    sd	$s3,8($sp)
    move	$s3,$a3
    # Line 431
    lui	$t8,0x4
    ori	$t8,$t8,0x22a0
    # Line 430
    lui	$at,0x4
    ori	$at,$at,0x229c
    sd	$s0,32($sp)
    # Line 420
    lw	$s0,0($a0)
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    # Line 434
    move	$a0,$s0
    # sd	gp,56(sp)
    # Line 426
    lw	$s4,3372($s0)
    # Line 427
    lw	$s5,3376($s0)
    # Line 430
    sw	$zero,0($at)
    sd	$ra,16($sp)
    # Line 419
    lui	$ra,0x19
    addiu	$ra,$ra,-3528
    # addu	gp,t9,ra
    # Line 434
    # lw $t9, -32392($gp) # &__glExpSetReadBuffer
    # Line 431
    sw	$zero,0($t8)
    # Line 427
    subu	$s5,$a2,$s5
    # Line 434
    jal	__glExpSetReadBuffer
    # Line 426
    subu	$s4,$a1,$s4
    # Line 434
    blez	$s1,.L0da688d4
    sd	$s7,64($sp)
    li	$a0,-1
    lwc1	$f4,_lit_3f800000
    li	$s7,1
    lui	$t3,0x4
    ori	$t3,$t3,0x22f4
    lui	$t2,0x6
    ori	$t2,$t2,0xd000
    lui	$t9,0x1
    ori	$t9,$t9,0x2088
    lui	$a4,0x6
    ori	$a4,$a4,0xc040
    lui	$t8,0x4
    ori	$t8,$t8,0x277c
    lui	$t1,0x4
    ori	$t1,$t1,0x22b4
    lui	$ra,0x4
    b	.L0da68854
    ori	$ra,$ra,0x22f0
.L0da686ec:
    # Line 454
    bltz	$a2,.L0da68848
    # Line 453
    move	$a3,$t9
    andi	$at,$a6,0x1
    beqz	$at,.L0da68764
    # Line 454
    move	$a5,$a6
    # Line 455
    lw	$v1,0($a3)
    # Line 458
    lw	$v0,31872($s0)
    andi	$a1,$v1,0xff
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    lwc1	$f2,0($v0)
    swc1	$f2,0($s3)
    # Line 459
    lw	$a1,31876($s0)
    srl	$at,$v1,0x8
    andi	$at,$at,0xff
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    lwc1	$f1,0($a1)
    # Line 454
    addiu	$a2,$a2,-1
    # Line 459
    swc1	$f1,4($s3)
    # Line 462
    addiu	$s3,$s3,16
    # Line 460
    lw	$v0,31880($s0)
    srl	$v1,$v1,0x10
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    # Line 455
    addiu	$a3,$a3,4
    # Line 461
    swc1	$f4,-4($s3)
    # Line 460
    swc1	$f0,-8($s3)
.L0da68764:
    move	$a6,$a2
    move	$a7,$s3
    sra	$at,$a5,0x1
    beqz	$at,.L0da68848
    move	$t0,$a3
    move	$a5,$a6
    move	$a2,$a7
    move	$a3,$t0
.L0da68784:
    # Line 455
    lw	$v0,0($a3)
    # Line 458
    lw	$at,31872($s0)
    andi	$v1,$v0,0xff
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lwc1	$f0,0($at)
    swc1	$f0,0($a2)
    # Line 459
    lw	$v1,31876($s0)
    srl	$a1,$v0,0x8
    andi	$a1,$a1,0xff
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f3,0($v1)
    swc1	$f3,4($a2)
    # Line 460
    lw	$at,31880($s0)
    srl	$v0,$v0,0x10
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 455
    lw	$v1,4($a3)
    # Line 460
    swc1	$f2,8($a2)
    # Line 461
    swc1	$f4,12($a2)
    # Line 458
    lw	$v0,31872($s0)
    andi	$a1,$v1,0xff
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    lwc1	$f1,0($v0)
    swc1	$f1,16($a2)
    # Line 459
    lw	$a1,31876($s0)
    srl	$at,$v1,0x8
    andi	$at,$at,0xff
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    lwc1	$f0,0($a1)
    # Line 462
    addiu	$a2,$a2,32
    # Line 455
    addiu	$a3,$a3,8
    # Line 459
    swc1	$f0,-12($a2)
    # Line 454
    addiu	$a5,$a5,-2
    # Line 460
    lw	$v0,31880($s0)
    srl	$v1,$v1,0x10
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f3,0($v0)
    # Line 461
    swc1	$f4,-4($a2)
    # Line 454
    bne	$a5,$a0,.L0da68784
    # Line 460
    swc1	$f3,-8($a2)
    move	$s3,$a2
.L0da68848:
    # Line 465
    sw	$zero,0($t2)
    # Line 466
    blez	$s1,.L0da688d4
    sw	$zero,0($t3)
.L0da68854:
    # Line 434
    slti	$a1,$s1,1400
    beqz	$a1,.L0da68864
    # Line 437
    li	$a6,1400
    move	$a6,$s1
.L0da68864:
    # Line 448
    subu	$s1,$s1,$a6
    # Line 439
    sw	$zero,0($ra)
    # Line 440
    sw	$s4,0($t1)
    # Line 449
    addu	$s4,$a6,$s4
    # Line 441
    sw	$s5,0($t8)
    # Line 442
    sw	$a6,0($t8)
    # Line 443
    sw	$s7,0($t8)
    # Line 444
    sw	$a6,0($t8)
    # Line 445
    sw	$zero,0($t8)
    # Line 446
    sw	$zero,0($t8)
.L0da6888c:
    # Line 451
    lw	$at,0($a4)
    andi	$at,$at,0x1
    bnez	$at,.L0da686ec
    # Line 454
    addiu	$a2,$a6,-1
    # Line 451
    sw	$zero,0($sp)
    lw	$v0,0($sp)
    slti	$v0,$v0,10
    beqz	$v0,.L0da6888c
    nop
.L0da688b0:
    lw	$a1,0($sp)
    addiu	$a1,$a1,1
    sw	$a1,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da688b0
    nop
    b	.L0da6888c
    nop
.L0da688d4:
    # Line 470
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    jal	__glExpSetReadSource
    move	$a0,$s0
    # Line 471
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$ra,16($sp)
    ld	$s5,48($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end ReadSpan

# Function: ReturnSpan
# Declared: Line 474 (Source lines: 476-532)
# Address: 0x0da6890c - 0x0da68b90 (Size: 644 bytes, Frame: 128)
.ent ReturnSpan
ReturnSpan:
    # Line 476
    addiu	$sp,$sp,-256
    sdc1	$f16,56($sp)
    sd	$s0,80($sp)
    move	$s0,$a3
    sd	$s2,72($sp)
    move	$s2,$a0
    sd	$a2,120($sp)
    sd	$a1,112($sp)
    sd	$s1,88($sp)
    move	$s1,$a5
    sd	$s6,64($sp)
    sd	$s3,136($sp)
    # Line 479
    lw	$s3,0($a0)
    sd	$gp,144($sp)
    # Line 476
    lui	$v0,0x19
    # Line 486
    lw	$a6,1696($s3)
    # Line 476
    addiu	$v0,$v0,-4260
    addu	$gp,$t9,$v0
    # Line 486
    move	$s6,$a6
    andi	$at,$a6,0x2
    beqz	$at,.L0da68984
    sd	$at,128($sp)
    # Line 489
    move	$a0,$s3
    sd	$ra,184($sp)
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    # Line 488
    li	$v1,-3
    and	$v1,$a6,$v1
    # Line 489
    bal __glExpEnableBlendFunc
    # Line 488
    sw	$v1,1696($s3)
    ld	$ra,184($sp)
.L0da68984:
    # Line 489
    andi	$a4,$s6,0x10
    beqz	$a4,.L0da689b4
    sd	$a4,96($sp)
    # Line 493
    move	$a0,$s3
    sd	$ra,184($sp)
    # Line 492
    lw	$a5,1696($s3)
    # Line 493
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    # Line 492
    li	$a6,-17
    and	$a5,$a5,$a6
    # Line 493
    jal	__glExpEnableDepthTest
    # Line 492
    sw	$a5,1696($s3)
    ld	$ra,184($sp)
.L0da689b4:
    # Line 493
    andi	$at,$s6,0x8000
    beqz	$at,.L0da689f8
    sd	$at,104($sp)
    # Line 497
    move	$a0,$s3
    sd	$ra,184($sp)
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    # Line 496
    lw	$v0,1696($s3)
    li	$v1,0x8000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 497
    bal __glExpEnableStencilTest
    # Line 496
    sw	$v0,1696($s3)
    sdc1	$f28,176($sp)
    sdc1	$f24,168($sp)
    sdc1	$f22,160($sp)
    sdc1	$f30,152($sp)
    ld	$ra,184($sp)
.L0da689f8:
    # Line 507
    addiu	$s1,$s1,-1
    # Line 505
    ld	$a4,112($sp)
    sdc1	$f24,168($sp)
    # Line 501
    lwc1	$f24,31456($s3)
    # Line 503
    ldc1	$f0,56($sp)
    sdc1	$f30,152($sp)
    lwc1	$f30,31464($s3)
    sdc1	$f22,160($sp)
    # Line 502
    lwc1	$f22,31460($s3)
    # Line 503
    mul.s	$f30,$f30,$f0
    # Line 506
    ld	$at,120($sp)
    sdc1	$f28,176($sp)
    # Line 502
    mul.s	$f22,$f22,$f0
    # Line 500
    lwc1	$f28,31452($s3)
    # Line 506
    sw	$at,4($sp)
    # Line 501
    mul.s	$f24,$f24,$f0
    # Line 505
    sw	$a4,0($sp)
    # Line 507
    bltz	$s1,.L0da68b00
    # Line 500
    mul.s	$f28,$f28,$f0
    sd	$ra,184($sp)
    sd	$s5,200($sp)
    # Line 507
    li	$s5,-1
    sd	$s4,192($sp)
    addiu	$s4,$sp,12
.L0da68a58:
    # Line 508
    lh	$a1,0($s0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f28
    swc1	$f2,12($sp)
    # Line 509
    lh	$a0,2($s0)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f24
    swc1	$f1,16($sp)
    # Line 510
    lh	$v1,4($s0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    swc1	$f0,20($sp)
    # Line 511
    lh	$v0,6($s0)
    mtc1	$v0,$f31
    nop
    cvt.s.w	$f31,$f31
    mul.s	$f31,$f31,$f30
    # Line 512
    move	$a2,$s4
    # Line 507
    addiu	$s1,$s1,-1
    # Line 512
    # lw $t9, -28360($gp) # &__glClampRGBColor
    move	$a1,$s4
    # Line 511
    swc1	$f31,24($sp)
    # Line 512
    jal	__glClampRGBColor
    lw	$a0,0($s2)
    # Line 513
    lw	$t9,164($s2)
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 514
    lw	$a4,0($sp)
    # Line 515
    addiu	$s0,$s0,8
    # Line 514
    addiu	$a4,$a4,1
    # Line 507
    bne	$s1,$s5,.L0da68a58
    # Line 514
    sw	$a4,0($sp)
    ld	$s5,200($sp)
    ld	$s4,192($sp)
    ld	$ra,184($sp)
.L0da68b00:
    ldc1	$f28,176($sp)
    ldc1	$f24,168($sp)
    ldc1	$f22,160($sp)
    ldc1	$f30,152($sp)
    ld	$s1,88($sp)
    ld	$s0,80($sp)
    ld	$v0,128($sp)
    # Line 507
    andi	$at,$s6,0x8012
    beqz	$at,.L0da68b2c
    ld	$s2,72($sp)
    # Line 524
    sw	$s6,1696($s3)
.L0da68b2c:
    beqz	$v0,.L0da68b48
    ld	$s6,64($sp)
    # Line 527
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    sd	$ra,184($sp)
    bal __glExpEnableBlendFunc
    move	$a0,$s3
    ld	$ra,184($sp)
.L0da68b48:
    ld	$v1,96($sp)
    beqz	$v1,.L0da68b64
    # Line 529
    nop	# was lw $t9, -32372($gp) # &__glExpEnableDepthTest
    sd	$ra,184($sp)
    jal	__glExpEnableDepthTest
    move	$a0,$s3
    ld	$ra,184($sp)
.L0da68b64:
    ld	$a4,104($sp)
    beqz	$a4,.L0da68b80
    # Line 531
    nop	# was lw $t9, -31528($gp) # &__glExpEnableStencilTest
    sd	$ra,184($sp)
    bal __glExpEnableStencilTest
    move	$a0,$s3
    ld	$ra,184($sp)
.L0da68b80:
    ld	$gp,144($sp)
    # Line 532
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end ReturnSpan

# Function: Resize
# Declared: Line 536 (Source lines: 538-541)
# Address: 0x0da68b90 - 0x0da68ba0 (Size: 16 bytes, Frame: 0)
.ent Resize
Resize:
    # Line 540
    sw	$a2,8($a0)
    # Line 539
    sw	$a1,28($a0)
    # Line 541
    jr	$ra
    # Line 538
    sw	$a1,4($a0)
.end Resize

# Function: Move
# Declared: Line 544 (Source lines: 546-546)
# Address: 0x0da68ba0 - 0x0da68ba8 (Size: 8 bytes, Frame: 0)
.ent Move
Move:
    # Line 546
    jr	$ra
    nop
.end Move

# Function: Pick
# Declared: Line 548 (Source lines: 549-557)
# Address: 0x0da68ba8 - 0x0da68bf4 (Size: 76 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 549
    lui	$a2,0x8
    lw	$v0,30440($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,-4928
    and	$v0,$v0,$a2
    beqz	$v0,.L0da68be4
    nop
    # Line 553
    la	$v0,sub_0da60000
    # Line 549
    lw	$a2,1736($a0)
    li	$a3,3057
    beq	$a2,$a3,.L0da68be4
    # Line 553
    addiu	$v0,$v0,31176
    sw	$v0,164($a1)
    # Line 557
    jr	$ra
    nop
.L0da68be4:
    # Line 555
    la	$v1,sub_0da60000
    addiu	$v1,$v1,31092
    # Line 557
    jr	$ra
    # Line 555
    sw	$v1,164($a1)
.end Pick

# Function: __glExpInitRGB
# Declared: Line 559 (Source lines: 560-600)
# Address: 0x0da68bf4 - 0x0da68d1c (Size: 296 bytes, Frame: 48)
.globl __glExpInitRGB
.ent __glExpInitRGB
__glExpInitRGB:
    # Line 560
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-5004
    # addu	gp,t9,at
    # Line 563
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 560
    move	$s8,$a0
    # Line 599
    la	$v0,sub_0da60000
    # Line 577
    lwc1	$f0,_lit_3f800000
    # Line 599
    addiu	$v0,$v0,31540
    # Line 566
    ld	$v1,24($sp)
    # Line 565
    sw	$zero,24($s8)
    # Line 570
    la	$a0,sub_0da70000
    # Line 566
    lw	$a3,3148($v1)
    lw	$at,3144($v1)
    lw	$ra,3140($v1)
    # Line 577
    swc1	$f0,88($s8)
    # Line 578
    swc1	$f0,92($s8)
    # Line 570
    addiu	$a0,$a0,-29792
    sw	$a0,60($s8)
    # Line 565
    la	$a0,sub_0da60000
    # Line 579
    swc1	$f0,96($s8)
    # Line 580
    swc1	$f0,128($s8)
    # Line 565
    addiu	$a0,$a0,31752
    # Line 588
    sw	$a0,168($s8)
    # Line 569
    la	$a2,sub_0da70000
    # Line 590
    sw	$a0,172($s8)
    # Line 565
    la	$a0,__glFetchSpan
    # Line 569
    addiu	$a2,$a2,-29808
    sw	$a2,56($s8)
    # Line 587
    la	$a2,sub_0da60000
    # Line 596
    sw	$a0,200($s8)
    # Line 597
    sw	$a0,204($s8)
    # Line 587
    addiu	$a2,$a2,31092
    sw	$a2,164($s8)
    # Line 595
    la	$a2,sub_0da60000
    # Line 566
    addu	$ra,$ra,$at
    # Line 572
    la	$at,sub_0da70000
    # Line 566
    addu	$a3,$a3,$ra
    # Line 574
    li	$ra,1
    sw	$ra,72($s8)
    # Line 575
    sw	$ra,76($s8)
    # Line 576
    sw	$ra,80($s8)
    # Line 581
    sw	$ra,100($s8)
    # Line 582
    sw	$ra,104($s8)
    # Line 583
    sw	$ra,108($s8)
    # Line 584
    sw	$ra,132($s8)
    # Line 592
    la	$ra,sub_0da70000
    # Line 572
    addiu	$at,$at,-29784
    # Line 566
    sw	$a3,12($s8)
    # Line 586
    la	$a3,sub_0da60000
    # Line 572
    sw	$at,160($s8)
    # Line 591
    la	$at,sub_0da70000
    # Line 586
    addiu	$a3,$a3,31372
    sw	$a3,216($s8)
    # Line 594
    la	$a3,sub_0da60000
    # ld	gp,16(sp)
    # Line 595
    addiu	$a2,$a2,32400
    sw	$a2,188($s8)
    # Line 592
    addiu	$ra,$ra,-30452
    sw	$ra,180($s8)
    # Line 600
    ld	$ra,0($sp)
    # Line 591
    addiu	$at,$at,-31184
    sw	$at,176($s8)
    # Line 594
    addiu	$a3,$a3,32160
    sw	$a3,184($s8)
    # Line 600
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 599
    sw	$v0,31692($v1)
.end __glExpInitRGB

.rdata
_lit_3f800000:
    .word 0x3f800000

