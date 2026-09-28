# Source: ../EXPRESS/gr2_ci.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_ci.c
# Total Functions: 11

.text

# Function: Store
# Declared: Line 33 (Source lines: 37-44)
# Address: 0x0da57ba8 - 0x0da57bf8 (Size: 80 bytes, Frame: 0)
.ent Store
Store:
    # Line 37
    lw	$a0,0($a1)
    lui	$at,0x5
    ori	$at,$at,0x20ac
    sw	$a0,0($at)
    # Line 38
    lw	$a0,4($a1)
    lui	$v1,0x5
    ori	$v1,$v1,0x277c
    sw	$a0,0($v1)
    # Line 39
    lw	$v0,8($a1)
    # Line 41
    lui	$at,0x4
    # Line 39
    sw	$v0,0($v1)
    # Line 41
    ori	$at,$at,0x277c
    # Line 40
    lwc1	$f0,12($a1)
    lui	$v0,0x4
    ori	$v0,$v0,0xe77c
    swc1	$f0,0($v0)
    # Line 41
    sw	$zero,0($at)
    # Line 42
    sw	$zero,0($at)
    # Line 44
    jr	$ra
    # Line 43
    sw	$zero,0($at)
.end Store

# Function: Store_ND
# Declared: Line 49 (Source lines: 51-61)
# Address: 0x0da57bf8 - 0x0da57c54 (Size: 92 bytes, Frame: 0)
.ent Store_ND
Store_ND:
    # Line 51
    lw	$v0,0($a0)
    # Line 54
    lw	$a2,0($a1)
    lui	$at,0x5
    ori	$at,$at,0x20ac
    sw	$a2,0($at)
    # Line 55
    lw	$a2,4($a1)
    lui	$a0,0x5
    ori	$a0,$a0,0x277c
    sw	$a2,0($a0)
    # Line 56
    lw	$v1,8($a1)
    sw	$v1,0($a0)
    # Line 57
    lwc1	$f1,3280($v0)
    lwc1	$f0,12($a1)
    # Line 58
    lui	$at,0x4
    # Line 57
    add.s	$f0,$f0,$f1
    # Line 58
    ori	$at,$at,0x277c
    # Line 57
    lui	$v0,0x4
    ori	$v0,$v0,0xe77c
    swc1	$f0,0($v0)
    # Line 58
    sw	$zero,0($at)
    # Line 59
    sw	$zero,0($at)
    # Line 61
    jr	$ra
    # Line 60
    sw	$zero,0($at)
.end Store_ND

# Function: Clear
# Declared: Line 63 (Source lines: 65-78)
# Address: 0x0da57c54 - 0x0da57cb8 (Size: 100 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 65
    lw	$a2,0($a0)
    lw	$at,1696($a2)
    # Line 72
    lui	$a0,0x4
    # Line 65
    andi	$at,$at,0x8
    beqz	$at,.L0da57c78
    # Line 72
    ori	$a0,$a0,0x277c
    # Line 69
    lui	$v0,0x4
    ori	$v0,$v0,0x2044
    sw	$zero,0($v0)
.L0da57c78:
    # Line 71
    lwc1	$f0,1776($a2)
    lui	$at,0x4
    ori	$at,$at,0xe410
    swc1	$f0,0($at)
    # Line 72
    sw	$zero,0($a0)
    # Line 73
    sw	$zero,0($a0)
    # Line 74
    sw	$zero,0($a0)
    lw	$v1,1696($a2)
    # Line 77
    lui	$v0,0x4
    # Line 74
    andi	$v1,$v1,0x8
    beqz	$v1,.L0da57cb0
    # Line 77
    li	$at,1
    ori	$v0,$v0,0x2044
    sw	$at,0($v0)
.L0da57cb0:
    # Line 78
    jr	$ra
    nop
.end Clear

# Function: CZClear
# Declared: Line 82 (Source lines: 84-102)
# Address: 0x0da57cb8 - 0x0da57d5c (Size: 164 bytes, Frame: 0)
.ent CZClear
CZClear:
    # Line 86
    lw	$v1,76($a1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    lw	$v0,0($a1)
    cvt.d.l	$f1,$f1
    ldc1	$f0,1544($v0)
    mul.d	$f0,$f0,$f1
    # Line 84
    lw	$a2,__glCurrentContext
    # Line 85
    lwc1	$f1,1776($a2)
    # Line 98
    li	$v0,-1
    # Line 85
    trunc.l.s	$f1,$f1
    # Line 93
    lui	$v1,0x4
    # Line 86
    lw	$at,1696($a2)
    trunc.w.d	$f0,$f0
    # Line 93
    ori	$v1,$v1,0x277c
    # Line 86
    andi	$at,$at,0x8
    # Line 85
    dmfc1	$a4,$f1
    # Line 86
    mfc1	$a3,$f0
    beqz	$at,.L0da57d18
    # Line 85
    sll	$a4,$a4,0x0
    # Line 90
    lui	$a0,0x4
    ori	$a0,$a0,0x2044
    sw	$zero,0($a0)
.L0da57d18:
    # Line 92
    lui	$a0,0x5
    ori	$a0,$a0,0xe280
    sw	$a4,0($a0)
    # Line 93
    sw	$zero,0($v1)
    # Line 94
    sw	$zero,0($v1)
    # Line 95
    sw	$zero,0($v1)
    # Line 97
    sw	$a3,0($v1)
    # Line 98
    sw	$v0,0($v1)
    lw	$at,1696($a2)
    andi	$at,$at,0x8
    beqz	$at,.L0da57d54
    # Line 101
    li	$a0,1
    lui	$at,0x4
    ori	$at,$at,0x2044
    sw	$a0,0($at)
.L0da57d54:
    # Line 102
    jr	$ra
    nop
.end CZClear

# Function: ReadColor
# Declared: Line 106 (Source lines: 107-162)
# Address: 0x0da57d5c - 0x0da57f7c (Size: 544 bytes, Frame: 240)
.ent ReadColor
ReadColor:
    # Line 107
    addiu	$sp,$sp,-112
    sd	$a3,40($sp)
    # Line 122
    lui	$t8,0x4
    ori	$t8,$t8,0x22a0
    # Line 121
    lui	$at,0x4
    ori	$at,$at,0x229c
    sd	$s2,24($sp)
    sd	$s0,8($sp)
    sd	$s1,32($sp)
    # Line 108
    lw	$s1,0($a0)
    # Line 118
    lw	$s0,12($a0)
    # sd	gp,56(sp)
    sd	$s1,64($sp)
    # Line 125
    move	$a0,$s1
    # Line 116
    lw	$s2,3376($s1)
    # Line 115
    lw	$s1,3372($s1)
    # Line 121
    sw	$zero,0($at)
    sd	$ra,16($sp)
    # Line 107
    lui	$ra,0x1a
    addiu	$ra,$ra,-1268
    # addu	gp,t9,ra
    # Line 125
    # lw $t9, -32392($gp) # &__glExpSetReadBuffer
    # Line 122
    sw	$zero,0($t8)
    # Line 116
    subu	$s2,$a2,$s2
    # Line 125
    bal __glExpSetReadBuffer
    # Line 115
    subu	$s1,$a1,$s1
    # Line 134
    lui	$a2,0x6
    ori	$a2,$a2,0xc040
    # Line 127
    lui	$a0,0x4
    ori	$a0,$a0,0x22f0
    sw	$zero,0($a0)
    ld	$a0,64($sp)
    # Line 128
    lui	$v1,0x4
    ori	$v1,$v1,0x22b4
    sw	$s1,0($v1)
    ld	$s1,32($sp)
    # Line 129
    lui	$at,0x4
    ori	$at,$at,0x277c
    sw	$s2,0($at)
    ld	$s2,24($sp)
    # Line 130
    li	$v0,1
    sw	$v0,0($at)
    # Line 131
    sw	$v0,0($at)
    # Line 132
    sw	$v0,0($at)
    # Line 133
    sw	$zero,0($at)
    # Line 134
    sw	$zero,0($at)
.L0da57e14:
    # Line 136
    lw	$at,0($a2)
    andi	$at,$at,0x1
    bnezl	$at,.L0da57e5c
    # Line 139
    lui	$a2,0x4
    # Line 136
    sw	$zero,0($sp)
    lw	$v0,0($sp)
    slti	$v0,$v0,10
    beqz	$v0,.L0da57e14
    nop
.L0da57e38:
    lw	$a1,0($sp)
    addiu	$a1,$a1,1
    sw	$a1,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da57e38
    nop
    b	.L0da57e14
    nop
.L0da57e5c:
    # Line 137
    lui	$a3,0x1
    ori	$a3,$a3,0x2088
    lw	$a3,0($a3)
    # Line 139
    ori	$a2,$a2,0x22f4
    # Line 142
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    sd	$a3,48($sp)
    # Line 138
    lui	$a3,0x6
    ori	$a3,$a3,0xd000
    sw	$zero,0($a3)
    # Line 142
    bal __glExpSetReadSource
    # Line 139
    sw	$zero,0($a2)
    # Line 145
    li	$at,2
    beq	$s0,$at,.L0da57eec
    ld	$ra,16($sp)
    li	$v0,4
    beq	$s0,$v0,.L0da57f10
    li	$v1,8
    beq	$s0,$v1,.L0da57f34
    li	$a1,12
    beq	$s0,$a1,.L0da57f58
    li	$v0,16
    move	$at,$s0
    beq	$at,$v0,.L0da57ec8
    ld	$s0,8($sp)
.L0da57ebc:
    # ld	gp,56(sp)
    # Line 162
    jr	$ra
    addiu	$sp,$sp,112
.L0da57ec8:
    ld	$a1,48($sp)
    # Line 159
    andi	$a1,$a1,0xffff
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    ld	$v1,40($sp)
    ld	$s0,8($sp)
    b	.L0da57ebc
    swc1	$f0,0($v1)
.L0da57eec:
    ld	$at,48($sp)
    # Line 147
    andi	$at,$at,0x3
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$s0,40($sp)
    swc1	$f1,0($s0)
    # Line 148
    b	.L0da57ebc
    ld	$s0,8($sp)
.L0da57f10:
    ld	$v1,48($sp)
    # Line 150
    andi	$v1,$v1,0xf
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$v0,40($sp)
    ld	$s0,8($sp)
    # Line 151
    b	.L0da57ebc
    # Line 150
    swc1	$f2,0($v0)
.L0da57f34:
    ld	$s0,48($sp)
    # Line 153
    andi	$s0,$s0,0xff
    dmtc1	$s0,$f3
    nop
    cvt.s.l	$f3,$f3
    ld	$a1,40($sp)
    ld	$s0,8($sp)
    # Line 154
    b	.L0da57ebc
    # Line 153
    swc1	$f3,0($a1)
.L0da57f58:
    ld	$v0,48($sp)
    # Line 156
    andi	$v0,$v0,0xfff
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    ld	$at,40($sp)
    ld	$s0,8($sp)
    # Line 157
    b	.L0da57ebc
    # Line 156
    swc1	$f0,0($at)
.end ReadColor

# Function: StoreSpan
# Declared: Line 166 (Source lines: 167-192)
# Address: 0x0da57f7c - 0x0da58054 (Size: 216 bytes, Frame: 128)
.ent StoreSpan
StoreSpan:
    # Line 167
    addiu	$sp,$sp,-128
    sd	$s1,72($sp)
    sd	$s4,56($sp)
    move	$s4,$a0
    # Line 177
    lw	$a0,30200($a0)
    # Line 175
    lw	$a2,30440($s4)
    # Line 173
    lw	$s1,30252($s4)
    # Line 177
    sw	$a0,0($sp)
    sd	$s0,64($sp)
    # Line 178
    lw	$v1,30204($s4)
    # sd	gp,80(sp)
    # Line 167
    lui	$v0,0x1a
    # Line 178
    sw	$v1,4($sp)
    # Line 167
    addiu	$v0,$v0,-1812
    # Line 179
    lw	$at,30208($s4)
    # Line 167
    # addu	gp,t9,v0
    # Line 182
    addiu	$s1,$s1,-1
    # Line 179
    sw	$at,8($sp)
    # Line 182
    bltz	$s1,.L0da58038
    # Line 180
    lw	$s0,30468($s4)
    sd	$ra,88($sp)
    sd	$s7,104($sp)
    # Line 182
    li	$s7,-1
    sd	$s5,96($sp)
    b	.L0da57fec
    andi	$s5,$a2,0x4
.L0da57fe4:
    beql	$s1,$s7,.L0da58030
    ld	$s7,104($sp)
.L0da57fec:
    # Line 183
    lwc1	$f0,0($s0)
    swc1	$f0,12($sp)
    # Line 184
    lw	$a0,11768($s4)
    lw	$t9,164($a0)
    # Line 186
    addiu	$s0,$s0,16
    # Line 182
    addiu	$s1,$s1,-1
    # Line 184
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 185
    lw	$a1,0($sp)
    # Line 188
    lw	$v0,8($sp)
    # Line 185
    addiu	$a1,$a1,1
    # Line 186
    beqz	$s5,.L0da57fe4
    # Line 185
    sw	$a1,0($sp)
    # Line 188
    lw	$at,30328($s4)
    addu	$at,$at,$v0
    b	.L0da57fe4
    sw	$at,8($sp)
.L0da58030:
    ld	$s5,96($sp)
    ld	$ra,88($sp)
.L0da58038:
    # Line 192
    move	$v0,$zero
    # ld	gp,80(sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 195 (Source lines: 196-241)
# Address: 0x0da58054 - 0x0da5818c (Size: 312 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 196
    addiu	$sp,$sp,-160
    sd	$s5,104($sp)
    sd	$s8,96($sp)
    sd	$s3,88($sp)
    # Line 207
    lw	$a3,30440($a0)
    sd	$s7,64($sp)
    # Line 205
    lw	$s7,30476($a0)
    # Line 209
    lw	$a2,30200($a0)
    sd	$s6,80($sp)
    # Line 204
    lw	$s6,30252($a0)
    # Line 209
    sw	$a2,0($sp)
    # Line 196
    move	$s3,$a0
    # Line 210
    lw	$v1,30204($a0)
    sd	$s1,72($sp)
    # sd	gp,56(sp)
    sw	$v1,4($sp)
    # Line 196
    lui	$v0,0x1a
    # Line 211
    lw	$at,30208($a0)
    # Line 196
    addiu	$v0,$v0,-2028
    # addu	gp,t9,v0
    # Line 211
    sw	$at,8($sp)
    # Line 212
    beqz	$s6,.L0da5816c
    lw	$s1,30468($a0)
    sd	$s2,136($sp)
    sd	$ra,128($sp)
    sd	$s4,120($sp)
    sd	$s0,112($sp)
    li	$s8,-1
    b	.L0da580d0
    andi	$s5,$a3,0x4
.L0da580cc:
    # Line 223
    beqz	$s6,.L0da58154
.L0da580d0:
    # Line 215
    slti	$a1,$s6,33
    bnez	$a1,.L0da580e0
    move	$s2,$s6
    # Line 217
    li	$s2,32
.L0da580e0:
    lui	$s0,0x8000
    # Line 221
    lw	$s4,0($s7)
    # Line 219
    subu	$s6,$s6,$s2
    # Line 223
    addiu	$s2,$s2,-1
    bltz	$s2,.L0da580cc
    # Line 221
    addiu	$s7,$s7,4
    b	.L0da5812c
    # Line 223
    and	$v1,$s4,$s0
.L0da58100:
    # Line 229
    addiu	$s1,$s1,16
    # Line 228
    addiu	$a2,$a2,1
    # Line 229
    beqz	$s5,.L0da58120
    # Line 228
    sw	$a2,0($sp)
    # Line 231
    lw	$v0,8($sp)
    lw	$at,30328($s3)
    addu	$at,$at,$v0
    sw	$at,8($sp)
.L0da58120:
    # Line 234
    srl	$s0,$s0,0x1
    # Line 223
    beq	$s2,$s8,.L0da580cc
    and	$v1,$s4,$s0
.L0da5812c:
    beqz	$v1,.L0da58100
    addiu	$s2,$s2,-1
    # Line 225
    lwc1	$f0,0($s1)
    swc1	$f0,12($sp)
    # Line 226
    lw	$a0,11768($s3)
    lw	$t9,164($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da58100
    lw	$a2,0($sp)
.L0da58154:
    ld	$s8,96($sp)
    ld	$s5,104($sp)
    ld	$s0,112($sp)
    ld	$s4,120($sp)
    ld	$ra,128($sp)
    ld	$s2,136($sp)
.L0da5816c:
    # Line 241
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s1,72($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end StoreStippledSpan

# Function: Resize
# Declared: Line 246 (Source lines: 248-251)
# Address: 0x0da5818c - 0x0da5819c (Size: 16 bytes, Frame: 0)
.ent Resize
Resize:
    # Line 250
    sw	$a2,8($a0)
    # Line 249
    sw	$a1,28($a0)
    # Line 251
    jr	$ra
    # Line 248
    sw	$a1,4($a0)
.end Resize

# Function: Move
# Declared: Line 254 (Source lines: 256-256)
# Address: 0x0da5819c - 0x0da581a4 (Size: 8 bytes, Frame: 0)
.ent Move
Move:
    # Line 256
    jr	$ra
    nop
.end Move

# Function: Pick
# Declared: Line 258 (Source lines: 259-265)
# Address: 0x0da581a4 - 0x0da581e0 (Size: 60 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 259
    lw	$v0,1696($a0)
    lui	$v1,0x1a
    addiu	$v1,$v1,-2364
    andi	$v0,$v0,0x8
    beqz	$v0,.L0da581d0
    nop
    # Line 263
    la	$a0,sub_0da50000
    addiu	$a0,$a0,31656
    sw	$a0,164($a1)
    # Line 265
    jr	$ra
    nop
.L0da581d0:
    # Line 261
    la	$a2,sub_0da50000
    addiu	$a2,$a2,31736
    # Line 265
    jr	$ra
    # Line 261
    sw	$a2,164($a1)
.end Pick

# Function: __glExpInitCI
# Declared: Line 267 (Source lines: 268-300)
# Address: 0x0da581e0 - 0x0da582d8 (Size: 248 bytes, Frame: 48)
.globl __glExpInitCI
.ent __glExpInitCI
__glExpInitCI:
    # Line 268
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-2424
    # addu	gp,t9,at
    # Line 271
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 268
    move	$s8,$a0
    # Line 282
    lwc1	$f0,_lit_3f800000
    # Line 299
    la	$v0,sub_0da50000
    # Line 274
    ld	$v1,24($sp)
    # Line 273
    sw	$zero,24($s8)
    # Line 299
    addiu	$v0,$v0,31928
    # Line 274
    lw	$ra,3136($v1)
    # Line 282
    swc1	$f0,88($s8)
    # Line 283
    swc1	$f0,92($s8)
    # Line 284
    swc1	$f0,96($s8)
    # Line 279
    la	$at,sub_0da60000
    # Line 285
    swc1	$f0,128($s8)
    # Line 281
    li	$a3,1
    # Line 279
    addiu	$at,$at,-32348
    # Line 277
    la	$a0,sub_0da60000
    # Line 279
    sw	$at,160($s8)
    # Line 273
    la	$at,sub_0da50000
    # Line 277
    addiu	$a0,$a0,-32356
    sw	$a0,60($s8)
    # Line 288
    la	$a0,sub_0da50000
    # Line 274
    sw	$ra,12($s8)
    # Line 276
    la	$a2,sub_0da60000
    # Line 281
    sllv	$a3,$a3,$ra
    # Line 292
    la	$ra,__glReadSpan
    # Line 288
    addiu	$a0,$a0,31656
    # Line 276
    addiu	$a2,$a2,-32372
    sw	$a2,56($s8)
    # Line 287
    la	$a2,sub_0da50000
    # Line 288
    sw	$a0,164($s8)
    # Line 273
    la	$a0,__glFetchSpan
    # Line 287
    addiu	$a2,$a2,31828
    # Line 281
    addiu	$a3,$a3,-1
    sw	$a3,72($s8)
    # Line 294
    la	$a3,sub_0da50000
    # Line 287
    sw	$a2,216($s8)
    # Line 295
    la	$a2,sub_0da60000
    # ld	gp,16(sp)
    # Line 273
    addiu	$at,$at,32092
    # Line 289
    sw	$at,168($s8)
    # Line 291
    sw	$at,172($s8)
    # Line 292
    sw	$ra,176($s8)
    # Line 300
    ld	$ra,0($sp)
    # Line 296
    sw	$a0,200($s8)
    # Line 297
    sw	$a0,204($s8)
    # Line 295
    addiu	$a2,$a2,-32684
    # Line 294
    addiu	$a3,$a3,32636
    sw	$a3,184($s8)
    # Line 295
    sw	$a2,188($s8)
    # Line 300
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 299
    sw	$v0,31692($v1)
.end __glExpInitCI

.rdata
_lit_3f800000:
    .word 0x3f800000

