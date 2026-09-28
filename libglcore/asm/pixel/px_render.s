# Source: ../pixel/px_render.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_render.c
# Total Functions: 25

.text

# Function: __glSlowDrawPixelsStore
# Declared: Line 31 (Source lines: 32-48)
# Address: 0x0da8109c - 0x0da81174 (Size: 216 bytes, Frame: 240)
.globl __glSlowDrawPixelsStore
.ent __glSlowDrawPixelsStore
__glSlowDrawPixelsStore:
    # Line 37
    li	$a3,13
    move	$a4,$zero
    # Line 32
    addiu	$sp,$sp,-112
    # Line 37
    addiu	$a5,$sp,0
    sd	$a0,56($sp)
    sd	$s0,72($sp)
    # Line 33
    lw	$s0,0($a0)
    # sd	gp,64(sp)
    # Line 32
    lui	$at,0x17
    addiu	$at,$at,26572
    # addu	gp,t9,at
.L0da810c8:
    # Line 37
    addu	$v1,$a4,$a5
    addu	$v0,$a4,$a1
    addiu	$a4,$a4,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da810c8
    sw	$v0,0($v1)
    lbu	$v1,28220($s0)
    beqzl	$v1,.L0da81130
    # Line 40
    lw	$a2,1696($s0)
    # Line 39
    lwc1	$f18,276($s0)
    lwc1	$f17,3284($s0)
    div.s	$f18,$f17,$f18
    # Line 40
    addiu	$a1,$sp,12
    lwc1	$f16,272($s0)
    move	$a0,$s0
    lwc1	$f15,268($s0)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,264($s0)
    lw	$t9,12532($s0)
    mul.s	$f15,$f15,$f18
    sd	$ra,80($sp)
    jalr	$t9
    mul.s	$f14,$f14,$f18
    ld	$ra,80($sp)
    lw	$a2,1696($s0)
.L0da81130:
    andi	$a2,$a2,0x20
    beqz	$a2,.L0da81150
    sd	$ra,80($sp)
    # Line 45
    lw	$t9,12536($s0)
    move	$a0,$s0
    lwc1	$f14,320($s0)
    jalr	$t9
    addiu	$a1,$sp,0
.L0da81150:
    # Line 47
    lw	$t9,12616($s0)
    ld	$a0,56($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,80($sp)
    # Line 48
    ld	$s0,72($sp)
    # ld	gp,64(sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSlowDrawPixelsStore

# Function: __glSpanRenderRGBubyte
# Declared: Line 56 (Source lines: 58-111)
# Address: 0x0da81174 - 0x0da81358 (Size: 484 bytes, Frame: 128)
.globl __glSpanRenderRGBubyte
.ent __glSpanRenderRGBubyte
__glSpanRenderRGBubyte:
    # Line 58
    addiu	$sp,$sp,-256
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,152($sp)
    # Line 75
    lw	$at,208($a1)
    # Line 58
    lui	$a2,0x17
    addiu	$a2,$a2,26356
    sd	$at,184($sp)
    # addu	gp,t9,a2
    sd	$s3,120($sp)
    # Line 76
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$s1,80($sp)
    # Line 81
    lw	$s1,30584($a0)
    sd	$s5,72($sp)
    # Line 79
    lw	$s5,30576($a0)
    sd	$s8,56($sp)
    # Line 77
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 74
    lw	$s4,240($a1)
    sd	$s6,112($sp)
    # Line 73
    lw	$s6,236($a1)
    # Line 76
    add.s	$f0,$f0,$f1
    sd	$s2,128($sp)
    # Line 80
    lw	$s2,30580($a0)
    sd	$s0,88($sp)
    # Line 83
    lw	$s0,248($a1)
    sd	$s2,208($sp)
    # Line 82
    lw	$s2,12588($a0)
    # Line 83
    sw	$s0,8($sp)
    # Line 58
    move	$s3,$a0
    # Line 84
    lw	$a3,30588($a0)
    # Line 76
    trunc.w.s	$f0,$f0
    sd	$s6,160($sp)
    # Line 84
    lwc1	$f1,1020($a3)
    sd	$s5,200($sp)
    # Line 76
    mfc1	$v0,$f0
    # Line 84
    swc1	$f1,24($sp)
    sd	$s1,216($sp)
    # Line 86
    lw	$a0,204($a1)
    sd	$v0,176($sp)
    # Line 85
    lw	$v1,220($a1)
    sd	$a0,144($sp)
    # Line 87
    beq	$at,$v0,.L0da81310
    sd	$v1,192($sp)
    b	.L0da812d8
    ld	$v1,192($sp)
    # Line 97
    lbu	$v1,0($s5)
.L0da8123c:
    ld	$a3,200($sp)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    # Line 96
    lh	$s1,0($s6)
    # Line 97
    swc1	$f0,12($sp)
    # Line 98
    lbu	$v0,1($s5)
    ld	$v1,208($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    lwc1	$f3,0($v0)
    swc1	$f3,16($sp)
    # Line 99
    addiu	$s5,$s5,3
    lbu	$at,-1($s5)
    ld	$v0,216($sp)
    # Line 96
    addiu	$s6,$s6,2
    # Line 99
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 95
    addiu	$s7,$s7,1
    # Line 96
    addu	$s1,$s1,$s0
    # Line 99
    swc1	$f2,20($sp)
    # Line 104
    addiu	$a1,$sp,0
.L0da81298:
    move	$t9,$s2
    # Line 101
    sw	$s0,0($sp)
    # Line 104
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 105
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da81298
    # Line 104
    addiu	$a1,$sp,0
    # Line 95
    bnel	$s8,$s7,.L0da8123c
    # Line 97
    lbu	$v1,0($s5)
.L0da812bc:
    # Line 87
    ld	$at,184($sp)
    ld	$v0,160($sp)
    ld	$a3,176($sp)
    addu	$at,$v0,$at
    beq	$a3,$at,.L0da81310
    sd	$at,184($sp)
    ld	$v1,192($sp)
.L0da812d8:
    # Line 88
    beqz	$v1,.L0da81310
    # Line 92
    ld	$s5,152($sp)
    ld	$s6,168($sp)
    # Line 95
    move	$s7,$zero
    # Line 93
    ld	$s0,184($sp)
    # Line 91
    lw	$s6,312($s6)
    # Line 89
    ld	$a3,192($sp)
    # Line 93
    sw	$s0,4($sp)
    # Line 90
    ld	$s0,144($sp)
    # Line 89
    addiu	$a3,$a3,-1
    # Line 95
    blez	$s8,.L0da812bc
    sd	$a3,192($sp)
    b	.L0da8123c
    # Line 97
    lbu	$v1,0($s5)
.L0da81310:
    # ld	gp,136(sp)
    # Line 111
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 109
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 110
    ld	$ra,176($sp)
    # Line 111
    ld	$s6,112($sp)
    # Line 109
    sw	$s7,220($s8)
    # Line 110
    sw	$ra,208($s8)
    # Line 111
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glSpanRenderRGBubyte

# Function: __glSpanRenderRGBubyte2
# Declared: Line 121 (Source lines: 123-170)
# Address: 0x0da81358 - 0x0da814ec (Size: 404 bytes, Frame: 240)
.globl __glSpanRenderRGBubyte2
.ent __glSpanRenderRGBubyte2
__glSpanRenderRGBubyte2:
    # Line 123
    addiu	$sp,$sp,-240
    sd	$a1,120($sp)
    sd	$s5,96($sp)
    sd	$s2,56($sp)
    sd	$s1,88($sp)
    sd	$s4,72($sp)
    # sd	gp,112(sp)
    sd	$a2,136($sp)
    # Line 139
    lw	$at,208($a1)
    # Line 123
    lui	$a2,0x17
    addiu	$a2,$a2,25872
    sd	$at,160($sp)
    # addu	gp,t9,a2
    sd	$s8,104($sp)
    # Line 138
    lw	$s8,240($a1)
    # Line 142
    lw	$a3,30588($a0)
    sd	$s0,80($sp)
    # Line 137
    lw	$s0,236($a1)
    # Line 142
    lwc1	$f2,1020($a3)
    # Line 140
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 142
    swc1	$f2,24($sp)
    sd	$s3,64($sp)
    # Line 143
    lw	$a3,248($a1)
    # Line 123
    move	$s3,$a0
    # Line 140
    add.s	$f0,$f0,$f1
    # Line 143
    sw	$a3,8($sp)
    sd	$s0,128($sp)
    # Line 149
    lw	$s4,212($a1)
    # Line 140
    trunc.w.s	$f0,$f0
    # Line 147
    lw	$s0,12588($s3)
    # Line 146
    lw	$s1,30584($s3)
    # Line 145
    lw	$s2,30580($s3)
    # Line 140
    mfc1	$v0,$f0
    # Line 144
    lw	$s5,30576($s3)
    # Line 150
    lw	$a0,220($a1)
    sd	$v0,152($sp)
    # Line 148
    lw	$v1,204($a1)
    sd	$a0,168($sp)
    # Line 151
    beq	$at,$v0,.L0da814b0
    sd	$v1,144($sp)
    sd	$s6,192($sp)
    sd	$ra,184($sp)
    sd	$s7,176($sp)
.L0da81408:
    ld	$at,168($sp)
    # Line 153
    ld	$v0,168($sp)
    # Line 152
    beqz	$at,.L0da814a4
    ld	$v1,160($sp)
    # Line 156
    ld	$s6,144($sp)
    # Line 154
    ld	$s7,136($sp)
    # Line 155
    sw	$v1,4($sp)
    # Line 153
    addiu	$v0,$v0,-1
    sd	$v0,168($sp)
    # Line 158
    lbu	$a2,0($s7)
.L0da81430:
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s5
    lwc1	$f5,0($a2)
    swc1	$f5,12($sp)
    # Line 159
    lbu	$a1,1($s7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s2
    lwc1	$f4,0($a1)
    swc1	$f4,16($sp)
    # Line 160
    lbu	$a0,2($s7)
    addiu	$s7,$s7,3
    # Line 164
    move	$t9,$s0
    # Line 160
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lwc1	$f3,0($a0)
    # Line 164
    addiu	$a1,$sp,0
    # Line 161
    sw	$s6,0($sp)
    # Line 160
    swc1	$f3,20($sp)
    # Line 164
    jalr	$s0
    lw	$a0,11768($s3)
    # Line 165
    addu	$s6,$s8,$s6
    bnel	$s4,$s6,.L0da81430
    # Line 158
    lbu	$a2,0($s7)
    # Line 151
    ld	$at,160($sp)
    ld	$v0,128($sp)
    ld	$a3,152($sp)
    addu	$at,$v0,$at
    bne	$a3,$at,.L0da81408
    sd	$at,160($sp)
.L0da814a4:
    ld	$s7,176($sp)
    ld	$ra,184($sp)
    ld	$s6,192($sp)
.L0da814b0:
    # ld	gp,112(sp)
    # Line 170
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s4,72($sp)
    ld	$s5,96($sp)
    ld	$s8,104($sp)
    ld	$a0,120($sp)
    # Line 169
    ld	$a3,152($sp)
    # Line 168
    ld	$v1,168($sp)
    # Line 170
    addiu	$sp,$sp,240
    # Line 169
    sw	$a3,208($a0)
    # Line 170
    jr	$ra
    # Line 168
    sw	$v1,220($a0)
.end __glSpanRenderRGBubyte2

# Function: __glSpanRenderRGBAubyte
# Declared: Line 177 (Source lines: 179-233)
# Address: 0x0da814ec - 0x0da816e4 (Size: 504 bytes, Frame: 144)
.globl __glSpanRenderRGBAubyte
.ent __glSpanRenderRGBAubyte
__glSpanRenderRGBAubyte:
    # Line 179
    addiu	$sp,$sp,-272
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,152($sp)
    # Line 196
    lw	$at,208($a1)
    # Line 179
    lui	$a2,0x17
    addiu	$a2,$a2,25468
    sd	$at,184($sp)
    # addu	gp,t9,a2
    sd	$s3,120($sp)
    move	$s3,$a0
    sd	$s5,72($sp)
    # Line 200
    lw	$s5,30576($a0)
    sd	$s6,112($sp)
    # Line 194
    lw	$s6,236($a1)
    sd	$s1,80($sp)
    # Line 202
    lw	$s1,30584($a0)
    sd	$s6,160($sp)
    sd	$s5,200($sp)
    sd	$s1,224($sp)
    sd	$s0,88($sp)
    # Line 203
    lw	$s0,30588($a0)
    sd	$s8,56($sp)
    # Line 198
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 195
    lw	$s4,240($a1)
    sd	$s2,128($sp)
    # Line 197
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 201
    lw	$s2,30580($a0)
    # Line 205
    lw	$a3,248($a1)
    # Line 197
    add.s	$f0,$f0,$f1
    sd	$s2,208($sp)
    # Line 204
    lw	$s2,12588($a0)
    # Line 205
    sw	$a3,8($sp)
    # Line 197
    trunc.w.s	$f0,$f0
    sd	$s0,216($sp)
    # Line 207
    lw	$a0,204($a1)
    # Line 206
    lw	$v1,220($a1)
    # Line 197
    mfc1	$v0,$f0
    sd	$a0,144($sp)
    sd	$v1,192($sp)
    # Line 208
    beq	$at,$v0,.L0da8169c
    sd	$v0,176($sp)
    b	.L0da81664
    ld	$a3,192($sp)
    # Line 218
    lbu	$a3,0($s5)
.L0da815b0:
    ld	$s1,200($sp)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s1
    lwc1	$f1,0($a3)
    # Line 217
    lh	$s1,0($s6)
    # Line 218
    swc1	$f1,12($sp)
    # Line 219
    lbu	$v1,1($s5)
    ld	$a3,208($sp)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    swc1	$f0,16($sp)
    # Line 220
    lbu	$v0,2($s5)
    ld	$v1,224($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    lwc1	$f3,0($v0)
    swc1	$f3,20($sp)
    # Line 221
    addiu	$s5,$s5,4
    lbu	$at,-1($s5)
    ld	$v0,216($sp)
    # Line 217
    addiu	$s6,$s6,2
    # Line 221
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 216
    addiu	$s7,$s7,1
    # Line 217
    addu	$s1,$s1,$s0
    # Line 221
    swc1	$f2,24($sp)
    # Line 226
    addiu	$a1,$sp,0
.L0da81624:
    move	$t9,$s2
    # Line 223
    sw	$s0,0($sp)
    # Line 226
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 227
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da81624
    # Line 226
    addiu	$a1,$sp,0
    # Line 216
    bnel	$s8,$s7,.L0da815b0
    # Line 218
    lbu	$a3,0($s5)
.L0da81648:
    # Line 208
    ld	$v0,184($sp)
    ld	$v1,160($sp)
    ld	$at,176($sp)
    addu	$v0,$v1,$v0
    beq	$at,$v0,.L0da8169c
    sd	$v0,184($sp)
    ld	$a3,192($sp)
.L0da81664:
    # Line 209
    beqz	$a3,.L0da8169c
    # Line 213
    ld	$s5,152($sp)
    # Line 211
    ld	$s0,144($sp)
    ld	$s6,168($sp)
    # Line 214
    ld	$at,184($sp)
    # Line 210
    ld	$s7,192($sp)
    # Line 212
    lw	$s6,312($s6)
    # Line 214
    sw	$at,4($sp)
    # Line 210
    addiu	$s7,$s7,-1
    sd	$s7,192($sp)
    # Line 216
    blez	$s8,.L0da81648
    move	$s7,$zero
    b	.L0da815b0
    # Line 218
    lbu	$a3,0($s5)
.L0da8169c:
    # ld	gp,136(sp)
    # Line 233
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 231
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 232
    ld	$ra,176($sp)
    # Line 233
    ld	$s6,112($sp)
    # Line 231
    sw	$s7,220($s8)
    # Line 232
    sw	$ra,208($s8)
    # Line 233
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glSpanRenderRGBAubyte

# Function: __glSpanRenderRGBAubyte2
# Declared: Line 241 (Source lines: 243-291)
# Address: 0x0da816e4 - 0x0da8188c (Size: 424 bytes, Frame: 240)
.globl __glSpanRenderRGBAubyte2
.ent __glSpanRenderRGBAubyte2
__glSpanRenderRGBAubyte2:
    # Line 243
    addiu	$sp,$sp,-240
    sd	$s5,104($sp)
    move	$s5,$a0
    sd	$s3,72($sp)
    sd	$s2,64($sp)
    sd	$s8,112($sp)
    # sd	gp,128(sp)
    sd	$s1,96($sp)
    # Line 259
    lw	$at,208($a1)
    # Line 243
    lui	$s1,0x17
    addiu	$s1,$s1,24964
    sd	$at,168($sp)
    # addu	gp,t9,s1
    sd	$a1,120($sp)
    sd	$s0,88($sp)
    # Line 257
    lw	$s0,236($a1)
    sd	$s4,80($sp)
    # Line 262
    lw	$a3,248($a1)
    sd	$s0,136($sp)
    # Line 258
    lw	$s0,240($a1)
    # Line 260
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 262
    sw	$a3,8($sp)
    sd	$a2,152($sp)
    # Line 267
    lw	$s8,12588($a0)
    # Line 266
    lw	$s1,30588($a0)
    # Line 265
    lw	$s2,30584($a0)
    # Line 260
    add.s	$f0,$f0,$f1
    # Line 264
    lw	$s3,30580($a0)
    # Line 263
    lw	$v1,30576($a0)
    # Line 270
    lw	$a2,220($a1)
    # Line 260
    trunc.w.s	$f0,$f0
    # Line 269
    lw	$s4,212($a1)
    # Line 268
    lw	$a1,204($a1)
    sd	$a2,176($sp)
    # Line 260
    mfc1	$v0,$f0
    sd	$a1,144($sp)
    sd	$v1,56($sp)
    # Line 271
    beq	$at,$v0,.L0da81850
    sd	$v0,160($sp)
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s7,184($sp)
.L0da81790:
    ld	$at,176($sp)
    # Line 273
    ld	$v0,176($sp)
    # Line 272
    beqz	$at,.L0da81844
    ld	$v1,168($sp)
    # Line 276
    ld	$s6,144($sp)
    # Line 274
    ld	$s7,152($sp)
    # Line 275
    sw	$v1,4($sp)
    # Line 273
    addiu	$v0,$v0,-1
    sd	$v0,176($sp)
    # Line 278
    lbu	$a3,0($s7)
.L0da817b8:
    ld	$a4,56($sp)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lwc1	$f5,0($a3)
    swc1	$f5,12($sp)
    # Line 279
    lbu	$a2,1($s7)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s3
    lwc1	$f4,0($a2)
    swc1	$f4,16($sp)
    # Line 280
    lbu	$a1,2($s7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s2
    lwc1	$f3,0($a1)
    swc1	$f3,20($sp)
    # Line 281
    lbu	$a0,3($s7)
    addiu	$s7,$s7,4
    # Line 285
    move	$t9,$s8
    # Line 281
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lwc1	$f2,0($a0)
    # Line 285
    addiu	$a1,$sp,0
    # Line 282
    sw	$s6,0($sp)
    # Line 281
    swc1	$f2,24($sp)
    # Line 285
    jalr	$s8
    lw	$a0,11768($s5)
    # Line 286
    addu	$s6,$s0,$s6
    bnel	$s4,$s6,.L0da817b8
    # Line 278
    lbu	$a3,0($s7)
    # Line 271
    ld	$v0,168($sp)
    ld	$v1,136($sp)
    ld	$at,160($sp)
    addu	$v0,$v1,$v0
    bne	$at,$v0,.L0da81790
    sd	$v0,168($sp)
.L0da81844:
    ld	$s7,184($sp)
    ld	$ra,192($sp)
    ld	$s6,200($sp)
.L0da81850:
    # ld	gp,128(sp)
    # Line 291
    ld	$s1,96($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    ld	$s5,104($sp)
    ld	$a3,120($sp)
    # Line 289
    ld	$a0,176($sp)
    # Line 290
    ld	$s0,160($sp)
    # Line 291
    ld	$s8,112($sp)
    # Line 289
    sw	$a0,220($a3)
    # Line 290
    sw	$s0,208($a3)
    # Line 291
    ld	$s0,88($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glSpanRenderRGBAubyte2

# Function: __glSpanRenderDepthUint
# Declared: Line 299 (Source lines: 301-351)
# Address: 0x0da8188c - 0x0da81a44 (Size: 440 bytes, Frame: 240)
.globl __glSpanRenderDepthUint
.ent __glSpanRenderDepthUint
__glSpanRenderDepthUint:
    # Line 301
    addiu	$sp,$sp,-240
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,144($sp)
    # Line 313
    li	$a2,32
    sd	$s1,80($sp)
    # Line 318
    lw	$at,208($a1)
    # Line 301
    lui	$s1,0x17
    addiu	$s1,$s1,24540
    sd	$at,184($sp)
    # addu	gp,t9,s1
    # Line 319
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 313
    lw	$a3,31244($a0)
    sd	$s8,56($sp)
    # Line 320
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 317
    lw	$s4,240($a1)
    sd	$s2,128($sp)
    # Line 316
    lw	$s2,236($a1)
    # Line 322
    lwc1	$f3,360($a0)
    sd	$s0,88($sp)
    # Line 313
    lw	$s0,31320($a0)
    # Line 322
    swc1	$f3,12($sp)
    sd	$s3,120($sp)
    # Line 323
    lwc1	$f2,364($a0)
    # Line 301
    move	$s3,$a0
    # Line 319
    add.s	$f0,$f0,$f1
    # Line 323
    swc1	$f2,16($sp)
    sd	$s2,160($sp)
    # Line 324
    lwc1	$f1,368($a0)
    # Line 313
    addu	$a3,$a3,$s0
    # Line 319
    trunc.w.s	$f0,$f0
    # Line 324
    swc1	$f1,20($sp)
    # Line 313
    subu	$a2,$a2,$a3
    # Line 325
    lwc1	$f1,372($a0)
    # Line 319
    mfc1	$v0,$f0
    sd	$a2,200($sp)
    # Line 325
    swc1	$f1,24($sp)
    sd	$v0,176($sp)
    # Line 328
    lw	$a0,204($a1)
    # Line 326
    lw	$s2,12588($s3)
    # Line 327
    lw	$v1,220($a1)
    sd	$a0,152($sp)
    # Line 329
    beq	$at,$v0,.L0da819fc
    sd	$v1,192($sp)
    b	.L0da819c4
    ld	$a3,192($sp)
    # Line 339
    addiu	$s5,$s5,4
.L0da81960:
    # Line 338
    addiu	$s6,$s6,2
    lh	$s1,-2($s6)
    # Line 339
    ld	$v0,200($sp)
    lw	$at,-4($s5)
    # Line 337
    addiu	$s7,$s7,1
    # Line 338
    addu	$s1,$s1,$s0
    # Line 339
    srlv	$at,$at,$v0
    sw	$at,8($sp)
    # Line 344
    addiu	$a1,$sp,0
.L0da81984:
    move	$t9,$s2
    # Line 341
    sw	$s0,0($sp)
    # Line 344
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 345
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da81984
    # Line 344
    addiu	$a1,$sp,0
    # Line 337
    bne	$s8,$s7,.L0da81960
    # Line 339
    addiu	$s5,$s5,4
.L0da819a8:
    # Line 329
    ld	$v0,184($sp)
    ld	$v1,160($sp)
    ld	$at,176($sp)
    addu	$v0,$v1,$v0
    beq	$at,$v0,.L0da819fc
    sd	$v0,184($sp)
    ld	$a3,192($sp)
.L0da819c4:
    # Line 330
    beqz	$a3,.L0da819fc
    # Line 334
    ld	$s5,144($sp)
    # Line 332
    ld	$s0,152($sp)
    ld	$s6,168($sp)
    # Line 335
    ld	$at,184($sp)
    # Line 331
    ld	$s7,192($sp)
    # Line 333
    lw	$s6,312($s6)
    # Line 335
    sw	$at,4($sp)
    # Line 331
    addiu	$s7,$s7,-1
    sd	$s7,192($sp)
    # Line 337
    blez	$s8,.L0da819a8
    move	$s7,$zero
    b	.L0da81960
    # Line 339
    addiu	$s5,$s5,4
.L0da819fc:
    # ld	gp,136(sp)
    # Line 351
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 349
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 350
    ld	$ra,176($sp)
    # Line 351
    ld	$s6,112($sp)
    # Line 349
    sw	$s7,220($s8)
    # Line 350
    sw	$ra,208($s8)
    # Line 351
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glSpanRenderDepthUint

# Function: __glSpanRenderDepthUint1
# Declared: Line 360 (Source lines: 362-406)
# Address: 0x0da81a44 - 0x0da81b98 (Size: 340 bytes, Frame: 224)
.globl __glSpanRenderDepthUint1
.ent __glSpanRenderDepthUint1
__glSpanRenderDepthUint1:
    # Line 362
    addiu	$sp,$sp,-224
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$a1,120($sp)
    sd	$a2,136($sp)
    sd	$s1,88($sp)
    sd	$s2,56($sp)
    # Line 373
    li	$s2,32
    # sd	gp,104(sp)
    # Line 379
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 376
    lw	$v0,236($a1)
    sd	$s8,96($sp)
    # Line 378
    lw	$s8,208($a1)
    sd	$s0,80($sp)
    # Line 377
    lw	$s0,240($a1)
    sd	$s5,112($sp)
    # Line 373
    lw	$s5,31320($a0)
    # Line 381
    lwc1	$f3,360($a0)
    sd	$s4,72($sp)
    # Line 373
    lw	$s4,31244($a0)
    # Line 381
    swc1	$f3,12($sp)
    # Line 362
    lui	$at,0x17
    # Line 382
    lwc1	$f2,364($a0)
    # Line 362
    addiu	$at,$at,24100
    # Line 379
    add.s	$f0,$f0,$f1
    # Line 382
    swc1	$f2,16($sp)
    # Line 362
    # addu	gp,t9,at
    # Line 383
    lwc1	$f1,368($a0)
    # Line 373
    addu	$s4,$s4,$s5
    # Line 379
    trunc.w.s	$f0,$f0
    # Line 383
    swc1	$f1,20($sp)
    # Line 373
    subu	$s2,$s2,$s4
    # Line 384
    lwc1	$f1,372($a0)
    # Line 379
    mfc1	$at,$f0
    sd	$v0,128($sp)
    # Line 384
    swc1	$f1,24($sp)
    sd	$at,152($sp)
    # Line 388
    lw	$s5,220($a1)
    # Line 387
    lw	$s4,212($a1)
    # Line 386
    lw	$v0,204($a1)
    # Line 385
    lw	$s1,12588($a0)
    # Line 389
    beq	$s8,$at,.L0da81b60
    sd	$v0,144($sp)
    sd	$s6,176($sp)
    sd	$ra,168($sp)
    sd	$s7,160($sp)
.L0da81b00:
    # Line 390
    beqz	$s5,.L0da81b54
    # Line 394
    ld	$s6,144($sp)
    # Line 392
    ld	$s7,136($sp)
    # Line 393
    sw	$s8,4($sp)
    # Line 391
    addiu	$s5,$s5,-1
    # Line 400
    addiu	$a1,$sp,0
.L0da81b18:
    # Line 396
    addiu	$s7,$s7,4
    lw	$v1,-4($s7)
    # Line 400
    move	$t9,$s1
    # Line 397
    sw	$s6,0($sp)
    # Line 396
    srlv	$v1,$v1,$s2
    sw	$v1,8($sp)
    # Line 400
    jalr	$s1
    lw	$a0,11768($s3)
    # Line 401
    addu	$s6,$s0,$s6
    bne	$s4,$s6,.L0da81b18
    # Line 400
    addiu	$a1,$sp,0
    ld	$at,128($sp)
    # Line 389
    ld	$a3,152($sp)
    addu	$s8,$at,$s8
    bne	$a3,$s8,.L0da81b00
.L0da81b54:
    ld	$s7,160($sp)
    ld	$ra,168($sp)
    ld	$s6,176($sp)
.L0da81b60:
    # ld	gp,104(sp)
    # Line 406
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$v0,120($sp)
    # Line 405
    ld	$v1,152($sp)
    # Line 406
    ld	$s4,72($sp)
    ld	$s8,96($sp)
    # Line 405
    sw	$v1,208($v0)
    # Line 404
    sw	$s5,220($v0)
    # Line 406
    ld	$s5,112($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderDepthUint1

# Function: __glSpanRenderStencilUshort
# Declared: Line 414 (Source lines: 416-458)
# Address: 0x0da81b98 - 0x0da81d10 (Size: 376 bytes, Frame: 192)
.globl __glSpanRenderStencilUshort
.ent __glSpanRenderStencilUshort
__glSpanRenderStencilUshort:
    # Line 416
    addiu	$sp,$sp,-192
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    sd	$a1,112($sp)
    sd	$s4,40($sp)
    # Line 437
    lw	$s4,31204($a0)
    sd	$s5,16($sp)
    # Line 432
    lw	$s5,240($a1)
    # sd	gp,80(sp)
    # Line 416
    lui	$v0,0x17
    addiu	$v0,$v0,23760
    # addu	gp,t9,v0
    # Line 438
    lw	$a4,220($a1)
    # Line 434
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 431
    lw	$v1,236($a1)
    sd	$a4,128($sp)
    # Line 434
    add.s	$f0,$f0,$f1
    sd	$a2,88($sp)
    sd	$s0,32($sp)
    # Line 439
    lw	$s0,204($a1)
    # Line 434
    trunc.w.s	$f0,$f0
    # Line 435
    lw	$a2,184($a1)
    sd	$s0,96($sp)
    # Line 433
    lw	$s0,208($a1)
    # Line 434
    mfc1	$at,$f0
    sd	$v1,104($sp)
    sd	$a2,136($sp)
    # Line 440
    beq	$s0,$at,.L0da81cc8
    sd	$at,120($sp)
    b	.L0da81c8c
    addiu	$s6,$a0,31112
    # Line 448
    addiu	$s7,$s7,2
.L0da81c30:
    lh	$s3,-2($s7)
    ld	$at,144($sp)
    # Line 447
    addiu	$s8,$s8,1
    # Line 448
    addu	$s3,$s3,$s1
    # Line 449
    lhu	$s2,0($at)
    addiu	$at,$at,2
    sd	$at,144($sp)
    # Line 451
    move	$a0,$s6
.L0da81c50:
    move	$a2,$s0
    move	$a3,$s2
    move	$a1,$s1
    jalr	$s4
    move	$t9,$s4
    # Line 452
    addu	$s1,$s5,$s1
    bne	$s1,$s3,.L0da81c50
    # Line 451
    move	$a0,$s6
    # Line 447
    ld	$v0,136($sp)
    bne	$v0,$s8,.L0da81c30
    # Line 448
    addiu	$s7,$s7,2
.L0da81c7c:
    ld	$a4,104($sp)
    # Line 440
    ld	$v1,120($sp)
    addu	$s0,$a4,$s0
    beq	$v1,$s0,.L0da81cc8
.L0da81c8c:
    ld	$at,128($sp)
    # Line 441
    beqz	$at,.L0da81cc8
    # Line 443
    ld	$s1,96($sp)
    # Line 447
    move	$s8,$zero
    ld	$v0,136($sp)
    ld	$s7,112($sp)
    # Line 445
    ld	$v1,88($sp)
    # Line 442
    ld	$a4,128($sp)
    # Line 444
    lw	$s7,312($s7)
    sd	$v1,144($sp)
    # Line 442
    addiu	$a4,$a4,-1
    # Line 447
    blez	$v0,.L0da81c7c
    sd	$a4,128($sp)
    b	.L0da81c30
    # Line 448
    addiu	$s7,$s7,2
.L0da81cc8:
    # ld	gp,80(sp)
    # Line 458
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$ra,112($sp)
    # Line 457
    ld	$at,120($sp)
    # Line 456
    ld	$s8,128($sp)
    # Line 458
    ld	$s6,56($sp)
    # Line 457
    sw	$at,208($ra)
    # Line 456
    sw	$s8,220($ra)
    # Line 458
    ld	$ra,48($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glSpanRenderStencilUshort

# Function: __glSpanRenderStencilUshort2
# Declared: Line 466 (Source lines: 468-502)
# Address: 0x0da81d10 - 0x0da81e18 (Size: 264 bytes, Frame: 160)
.globl __glSpanRenderStencilUshort2
.ent __glSpanRenderStencilUshort2
__glSpanRenderStencilUshort2:
    # Line 468
    addiu	$sp,$sp,-160
    sd	$a2,72($sp)
    sd	$a1,48($sp)
    sd	$s7,40($sp)
    # Line 489
    lw	$s7,220($a1)
    sd	$s1,16($sp)
    # Line 488
    lw	$s1,212($a1)
    sd	$s5,24($sp)
    # Line 486
    lw	$s5,31204($a0)
    sd	$s2,0($sp)
    # Line 482
    lw	$s2,240($a1)
    # Line 484
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # sd	gp,56(sp)
    # Line 468
    lui	$at,0x17
    # Line 484
    add.s	$f0,$f0,$f1
    # Line 468
    addiu	$at,$at,23384
    # addu	gp,t9,at
    # Line 487
    lw	$v1,204($a1)
    # Line 484
    trunc.w.s	$f0,$f0
    sd	$s0,8($sp)
    # Line 483
    lw	$s0,208($a1)
    sd	$s8,32($sp)
    # Line 484
    mfc1	$s8,$f0
    # Line 481
    lw	$v0,236($a1)
    sd	$v1,80($sp)
    # Line 490
    beq	$s0,$s8,.L0da81de8
    sd	$v0,64($sp)
    sd	$s3,104($sp)
    sd	$ra,96($sp)
    sd	$s4,88($sp)
    sd	$s6,112($sp)
    addiu	$s6,$a0,31112
.L0da81d94:
    # Line 491
    beqz	$s7,.L0da81dd8
    # Line 494
    ld	$s3,80($sp)
    # Line 493
    ld	$s4,72($sp)
    # Line 492
    addiu	$s7,$s7,-1
    # Line 496
    lhu	$a3,0($s4)
.L0da81da8:
    move	$a2,$s0
    move	$a0,$s6
    addiu	$s4,$s4,2
    move	$a1,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 497
    addu	$s3,$s2,$s3
    bnel	$s1,$s3,.L0da81da8
    # Line 496
    lhu	$a3,0($s4)
    ld	$a3,64($sp)
    # Line 490
    addu	$s0,$a3,$s0
    bne	$s8,$s0,.L0da81d94
.L0da81dd8:
    ld	$s4,88($sp)
    ld	$ra,96($sp)
    ld	$s6,112($sp)
    ld	$s3,104($sp)
.L0da81de8:
    # ld	gp,56(sp)
    # Line 502
    ld	$s1,16($sp)
    ld	$s0,48($sp)
    ld	$s2,0($sp)
    ld	$s5,24($sp)
    # Line 501
    sw	$s8,208($s0)
    # Line 500
    sw	$s7,220($s0)
    # Line 502
    ld	$s0,8($sp)
    ld	$s7,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glSpanRenderStencilUshort2

# Function: __glSpanRenderStencilUbyte
# Declared: Line 509 (Source lines: 511-553)
# Address: 0x0da81e18 - 0x0da81f90 (Size: 376 bytes, Frame: 192)
.globl __glSpanRenderStencilUbyte
.ent __glSpanRenderStencilUbyte
__glSpanRenderStencilUbyte:
    # Line 511
    addiu	$sp,$sp,-192
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    sd	$a1,112($sp)
    sd	$s4,40($sp)
    # Line 532
    lw	$s4,31204($a0)
    sd	$s5,16($sp)
    # Line 527
    lw	$s5,240($a1)
    # sd	gp,80(sp)
    # Line 511
    lui	$v0,0x17
    addiu	$v0,$v0,23120
    # addu	gp,t9,v0
    # Line 533
    lw	$a4,220($a1)
    # Line 529
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 526
    lw	$v1,236($a1)
    sd	$a4,128($sp)
    # Line 529
    add.s	$f0,$f0,$f1
    sd	$a2,88($sp)
    sd	$s0,32($sp)
    # Line 534
    lw	$s0,204($a1)
    # Line 529
    trunc.w.s	$f0,$f0
    # Line 530
    lw	$a2,184($a1)
    sd	$s0,96($sp)
    # Line 528
    lw	$s0,208($a1)
    # Line 529
    mfc1	$at,$f0
    sd	$v1,104($sp)
    sd	$a2,136($sp)
    # Line 535
    beq	$s0,$at,.L0da81f48
    sd	$at,120($sp)
    b	.L0da81f0c
    addiu	$s6,$a0,31112
    # Line 543
    addiu	$s7,$s7,2
.L0da81eb0:
    lh	$s3,-2($s7)
    ld	$at,144($sp)
    # Line 542
    addiu	$s8,$s8,1
    # Line 543
    addu	$s3,$s3,$s1
    # Line 544
    lbu	$s2,0($at)
    addiu	$at,$at,1
    sd	$at,144($sp)
    # Line 546
    move	$a0,$s6
.L0da81ed0:
    move	$a2,$s0
    move	$a3,$s2
    move	$a1,$s1
    jalr	$s4
    move	$t9,$s4
    # Line 547
    addu	$s1,$s5,$s1
    bne	$s1,$s3,.L0da81ed0
    # Line 546
    move	$a0,$s6
    # Line 542
    ld	$v0,136($sp)
    bne	$v0,$s8,.L0da81eb0
    # Line 543
    addiu	$s7,$s7,2
.L0da81efc:
    ld	$a4,104($sp)
    # Line 535
    ld	$v1,120($sp)
    addu	$s0,$a4,$s0
    beq	$v1,$s0,.L0da81f48
.L0da81f0c:
    ld	$at,128($sp)
    # Line 536
    beqz	$at,.L0da81f48
    # Line 538
    ld	$s1,96($sp)
    # Line 542
    move	$s8,$zero
    ld	$v0,136($sp)
    ld	$s7,112($sp)
    # Line 540
    ld	$v1,88($sp)
    # Line 537
    ld	$a4,128($sp)
    # Line 539
    lw	$s7,312($s7)
    sd	$v1,144($sp)
    # Line 537
    addiu	$a4,$a4,-1
    # Line 542
    blez	$v0,.L0da81efc
    sd	$a4,128($sp)
    b	.L0da81eb0
    # Line 543
    addiu	$s7,$s7,2
.L0da81f48:
    # ld	gp,80(sp)
    # Line 553
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$ra,112($sp)
    # Line 552
    ld	$at,120($sp)
    # Line 551
    ld	$s8,128($sp)
    # Line 553
    ld	$s6,56($sp)
    # Line 552
    sw	$at,208($ra)
    # Line 551
    sw	$s8,220($ra)
    # Line 553
    ld	$ra,48($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glSpanRenderStencilUbyte

# Function: __glSpanRenderStencilUbyte2
# Declared: Line 561 (Source lines: 563-597)
# Address: 0x0da81f90 - 0x0da82098 (Size: 264 bytes, Frame: 160)
.globl __glSpanRenderStencilUbyte2
.ent __glSpanRenderStencilUbyte2
__glSpanRenderStencilUbyte2:
    # Line 563
    addiu	$sp,$sp,-160
    sd	$a2,72($sp)
    sd	$a1,48($sp)
    sd	$s7,40($sp)
    # Line 584
    lw	$s7,220($a1)
    sd	$s1,16($sp)
    # Line 583
    lw	$s1,212($a1)
    sd	$s5,24($sp)
    # Line 581
    lw	$s5,31204($a0)
    sd	$s2,0($sp)
    # Line 577
    lw	$s2,240($a1)
    # Line 579
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # sd	gp,56(sp)
    # Line 563
    lui	$at,0x17
    # Line 579
    add.s	$f0,$f0,$f1
    # Line 563
    addiu	$at,$at,22744
    # addu	gp,t9,at
    # Line 582
    lw	$v1,204($a1)
    # Line 579
    trunc.w.s	$f0,$f0
    sd	$s0,8($sp)
    # Line 578
    lw	$s0,208($a1)
    sd	$s8,32($sp)
    # Line 579
    mfc1	$s8,$f0
    # Line 576
    lw	$v0,236($a1)
    sd	$v1,80($sp)
    # Line 585
    beq	$s0,$s8,.L0da82068
    sd	$v0,64($sp)
    sd	$s3,104($sp)
    sd	$ra,96($sp)
    sd	$s4,88($sp)
    sd	$s6,112($sp)
    addiu	$s6,$a0,31112
.L0da82014:
    # Line 586
    beqz	$s7,.L0da82058
    # Line 589
    ld	$s3,80($sp)
    # Line 588
    ld	$s4,72($sp)
    # Line 587
    addiu	$s7,$s7,-1
    # Line 591
    lbu	$a3,0($s4)
.L0da82028:
    move	$a2,$s0
    move	$a0,$s6
    addiu	$s4,$s4,1
    move	$a1,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 592
    addu	$s3,$s2,$s3
    bnel	$s1,$s3,.L0da82028
    # Line 591
    lbu	$a3,0($s4)
    ld	$a3,64($sp)
    # Line 585
    addu	$s0,$a3,$s0
    bne	$s8,$s0,.L0da82014
.L0da82058:
    ld	$s4,88($sp)
    ld	$ra,96($sp)
    ld	$s6,112($sp)
    ld	$s3,104($sp)
.L0da82068:
    # ld	gp,56(sp)
    # Line 597
    ld	$s1,16($sp)
    ld	$s0,48($sp)
    ld	$s2,0($sp)
    ld	$s5,24($sp)
    # Line 596
    sw	$s8,208($s0)
    # Line 595
    sw	$s7,220($s0)
    # Line 597
    ld	$s0,8($sp)
    ld	$s7,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glSpanRenderStencilUbyte2

# Function: __glSpanRenderCIushort
# Declared: Line 605 (Source lines: 607-653)
# Address: 0x0da82098 - 0x0da82234 (Size: 412 bytes, Frame: 240)
.globl __glSpanRenderCIushort
.ent __glSpanRenderCIushort
__glSpanRenderCIushort:
    # Line 607
    addiu	$sp,$sp,-240
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,144($sp)
    # Line 624
    lw	$at,208($a1)
    # Line 607
    lui	$a2,0x17
    addiu	$a2,$a2,22480
    sd	$at,184($sp)
    # addu	gp,t9,a2
    sd	$s1,80($sp)
    # Line 622
    lw	$s1,236($a1)
    sd	$s3,120($sp)
    # Line 607
    move	$s3,$a0
    sd	$s1,160($sp)
    sd	$s2,128($sp)
    # Line 629
    lw	$s2,12588($a0)
    sd	$s0,88($sp)
    # Line 627
    lw	$s0,30740($a0)
    sd	$s8,56($sp)
    # Line 625
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 626
    lw	$s8,184($a1)
    # Line 630
    lw	$a3,248($a1)
    # Line 625
    add.s	$f0,$f0,$f1
    sd	$s4,96($sp)
    # Line 623
    lw	$s4,240($a1)
    # Line 630
    sw	$a3,8($sp)
    # Line 625
    trunc.w.s	$f0,$f0
    sd	$s0,200($sp)
    # Line 632
    lw	$a0,204($a1)
    # Line 631
    lw	$v1,220($a1)
    # Line 625
    mfc1	$v0,$f0
    sd	$a0,152($sp)
    sd	$v1,192($sp)
    # Line 633
    beq	$at,$v0,.L0da821ec
    sd	$v0,176($sp)
    b	.L0da821b4
    ld	$v0,192($sp)
    # Line 643
    ld	$v0,200($sp)
.L0da82144:
    lhu	$at,0($s5)
    and	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$s5,$s5,2
    # Line 642
    lh	$s1,0($s6)
    addiu	$s6,$s6,2
    # Line 641
    addiu	$s7,$s7,1
    # Line 642
    addu	$s1,$s1,$s0
    # Line 643
    swc1	$f2,12($sp)
    # Line 646
    addiu	$a1,$sp,0
.L0da82174:
    move	$t9,$s2
    # Line 645
    sw	$s0,0($sp)
    # Line 646
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 647
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da82174
    # Line 646
    addiu	$a1,$sp,0
    # Line 641
    bne	$s8,$s7,.L0da82144
    # Line 643
    ld	$v0,200($sp)
.L0da82198:
    # Line 633
    ld	$a3,184($sp)
    ld	$at,160($sp)
    ld	$v1,176($sp)
    addu	$a3,$at,$a3
    beq	$v1,$a3,.L0da821ec
    sd	$a3,184($sp)
    ld	$v0,192($sp)
.L0da821b4:
    # Line 634
    beqz	$v0,.L0da821ec
    # Line 638
    ld	$s5,144($sp)
    # Line 636
    ld	$s0,152($sp)
    # Line 641
    move	$s7,$zero
    ld	$s6,168($sp)
    # Line 639
    ld	$a3,184($sp)
    # Line 635
    ld	$v1,192($sp)
    # Line 637
    lw	$s6,312($s6)
    # Line 639
    sw	$a3,4($sp)
    # Line 635
    addiu	$v1,$v1,-1
    # Line 641
    blez	$s8,.L0da82198
    sd	$v1,192($sp)
    b	.L0da82144
    # Line 643
    ld	$v0,200($sp)
.L0da821ec:
    # ld	gp,136(sp)
    # Line 653
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 651
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 652
    ld	$ra,176($sp)
    # Line 653
    ld	$s6,112($sp)
    # Line 651
    sw	$s7,220($s8)
    # Line 652
    sw	$ra,208($s8)
    # Line 653
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glSpanRenderCIushort

# Function: __glSpanRenderCIushort2
# Declared: Line 662 (Source lines: 664-704)
# Address: 0x0da82234 - 0x0da8236c (Size: 312 bytes, Frame: 224)
.globl __glSpanRenderCIushort2
.ent __glSpanRenderCIushort2
__glSpanRenderCIushort2:
    # Line 664
    addiu	$sp,$sp,-224
    sd	$a1,120($sp)
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$s4,72($sp)
    sd	$s5,112($sp)
    # sd	gp,104(sp)
    lui	$a3,0x17
    addiu	$a3,$a3,22068
    # addu	gp,t9,a3
    sd	$s8,96($sp)
    # Line 680
    lw	$s8,208($a1)
    sd	$s1,88($sp)
    # Line 684
    lw	$s1,12588($a0)
    sd	$s2,56($sp)
    # Line 682
    lw	$s2,30740($a0)
    sd	$s0,80($sp)
    # Line 681
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 679
    lw	$s0,240($a1)
    # Line 685
    lw	$v1,248($a1)
    # Line 681
    add.s	$f0,$f0,$f1
    sd	$a2,136($sp)
    # Line 678
    lw	$a2,236($a1)
    # Line 685
    sw	$v1,8($sp)
    # Line 681
    trunc.w.s	$f0,$f0
    sd	$a2,128($sp)
    # Line 688
    lw	$s5,220($a1)
    # Line 686
    lw	$v0,204($a1)
    # Line 681
    mfc1	$at,$f0
    # Line 687
    lw	$s4,212($a1)
    sd	$v0,144($sp)
    # Line 689
    beq	$s8,$at,.L0da82334
    sd	$at,152($sp)
    sd	$s6,176($sp)
    sd	$ra,168($sp)
    sd	$s7,160($sp)
.L0da822c8:
    # Line 690
    beqz	$s5,.L0da82328
    # Line 694
    ld	$s6,144($sp)
    # Line 692
    ld	$s7,136($sp)
    # Line 693
    sw	$s8,4($sp)
    # Line 691
    addiu	$s5,$s5,-1
    # Line 696
    sw	$s6,0($sp)
.L0da822e0:
    # Line 697
    lhu	$a4,0($s7)
    and	$a4,$a4,$s2
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 698
    addiu	$a1,$sp,0
    # Line 697
    addiu	$s7,$s7,2
    # Line 698
    move	$t9,$s1
    # Line 697
    swc1	$f2,12($sp)
    # Line 698
    jalr	$s1
    lw	$a0,11768($s3)
    # Line 699
    addu	$s6,$s0,$s6
    bnel	$s4,$s6,.L0da822e0
    # Line 696
    sw	$s6,0($sp)
    ld	$v0,128($sp)
    # Line 689
    ld	$at,152($sp)
    addu	$s8,$v0,$s8
    bne	$at,$s8,.L0da822c8
.L0da82328:
    ld	$s7,160($sp)
    ld	$ra,168($sp)
    ld	$s6,176($sp)
.L0da82334:
    # ld	gp,104(sp)
    # Line 704
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$v1,120($sp)
    # Line 703
    ld	$a0,152($sp)
    # Line 704
    ld	$s4,72($sp)
    ld	$s8,96($sp)
    # Line 703
    sw	$a0,208($v1)
    # Line 702
    sw	$s5,220($v1)
    # Line 704
    ld	$s5,112($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderCIushort2

# Function: __glSpanRenderCIubyte
# Declared: Line 712 (Source lines: 714-760)
# Address: 0x0da8236c - 0x0da82504 (Size: 408 bytes, Frame: 240)
.globl __glSpanRenderCIubyte
.ent __glSpanRenderCIubyte
__glSpanRenderCIubyte:
    # Line 714
    addiu	$sp,$sp,-240
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,144($sp)
    # Line 731
    lw	$at,208($a1)
    # Line 714
    lui	$a2,0x17
    addiu	$a2,$a2,21756
    sd	$at,184($sp)
    # addu	gp,t9,a2
    sd	$s1,80($sp)
    # Line 729
    lw	$s1,236($a1)
    sd	$s3,120($sp)
    # Line 714
    move	$s3,$a0
    sd	$s1,160($sp)
    sd	$s2,128($sp)
    # Line 736
    lw	$s2,12588($a0)
    sd	$s0,88($sp)
    # Line 735
    lw	$s0,30572($a0)
    sd	$s8,56($sp)
    # Line 732
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 733
    lw	$s8,184($a1)
    # Line 737
    lw	$a3,248($a1)
    # Line 732
    add.s	$f0,$f0,$f1
    sd	$s4,96($sp)
    # Line 730
    lw	$s4,240($a1)
    # Line 737
    sw	$a3,8($sp)
    # Line 732
    trunc.w.s	$f0,$f0
    sd	$s0,200($sp)
    # Line 739
    lw	$a0,204($a1)
    # Line 738
    lw	$v1,220($a1)
    # Line 732
    mfc1	$v0,$f0
    sd	$a0,152($sp)
    sd	$v1,192($sp)
    # Line 740
    beq	$at,$v0,.L0da824bc
    sd	$v0,176($sp)
    b	.L0da82484
    ld	$at,192($sp)
    # Line 750
    addiu	$s5,$s5,1
.L0da82418:
    # Line 749
    addiu	$s6,$s6,2
    # Line 750
    lbu	$at,-1($s5)
    ld	$v0,200($sp)
    # Line 749
    lh	$s1,-2($s6)
    # Line 750
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 748
    addiu	$s7,$s7,1
    # Line 749
    addu	$s1,$s1,$s0
    # Line 750
    swc1	$f2,12($sp)
    # Line 753
    addiu	$a1,$sp,0
.L0da82444:
    move	$t9,$s2
    # Line 752
    sw	$s0,0($sp)
    # Line 753
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 754
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da82444
    # Line 753
    addiu	$a1,$sp,0
    # Line 748
    bne	$s8,$s7,.L0da82418
    # Line 750
    addiu	$s5,$s5,1
.L0da82468:
    # Line 740
    ld	$v1,184($sp)
    ld	$a3,160($sp)
    ld	$v0,176($sp)
    addu	$v1,$a3,$v1
    beq	$v0,$v1,.L0da824bc
    sd	$v1,184($sp)
    ld	$at,192($sp)
.L0da82484:
    # Line 741
    beqz	$at,.L0da824bc
    # Line 745
    ld	$s5,144($sp)
    # Line 743
    ld	$s0,152($sp)
    # Line 748
    move	$s7,$zero
    ld	$s6,168($sp)
    # Line 746
    ld	$v1,184($sp)
    # Line 742
    ld	$v0,192($sp)
    # Line 744
    lw	$s6,312($s6)
    # Line 746
    sw	$v1,4($sp)
    # Line 742
    addiu	$v0,$v0,-1
    # Line 748
    blez	$s8,.L0da82468
    sd	$v0,192($sp)
    b	.L0da82418
    # Line 750
    addiu	$s5,$s5,1
.L0da824bc:
    # ld	gp,136(sp)
    # Line 760
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 758
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 759
    ld	$ra,176($sp)
    # Line 760
    ld	$s6,112($sp)
    # Line 758
    sw	$s7,220($s8)
    # Line 759
    sw	$ra,208($s8)
    # Line 760
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glSpanRenderCIubyte

# Function: __glSpanRenderCIubyte2
# Declared: Line 769 (Source lines: 771-811)
# Address: 0x0da82504 - 0x0da82638 (Size: 308 bytes, Frame: 224)
.globl __glSpanRenderCIubyte2
.ent __glSpanRenderCIubyte2
__glSpanRenderCIubyte2:
    # Line 771
    addiu	$sp,$sp,-224
    sd	$a1,120($sp)
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$s4,72($sp)
    sd	$s5,112($sp)
    # sd	gp,104(sp)
    lui	$a3,0x17
    addiu	$a3,$a3,21348
    # addu	gp,t9,a3
    sd	$s8,96($sp)
    # Line 787
    lw	$s8,208($a1)
    sd	$s1,88($sp)
    # Line 791
    lw	$s1,12588($a0)
    sd	$s2,56($sp)
    # Line 790
    lw	$s2,30572($a0)
    sd	$s0,80($sp)
    # Line 788
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 786
    lw	$s0,240($a1)
    # Line 792
    lw	$v1,248($a1)
    # Line 788
    add.s	$f0,$f0,$f1
    sd	$a2,136($sp)
    # Line 785
    lw	$a2,236($a1)
    # Line 792
    sw	$v1,8($sp)
    # Line 788
    trunc.w.s	$f0,$f0
    sd	$a2,128($sp)
    # Line 795
    lw	$s5,220($a1)
    # Line 793
    lw	$v0,204($a1)
    # Line 788
    mfc1	$at,$f0
    # Line 794
    lw	$s4,212($a1)
    sd	$v0,144($sp)
    # Line 796
    beq	$s8,$at,.L0da82600
    sd	$at,152($sp)
    sd	$s6,176($sp)
    sd	$ra,168($sp)
    sd	$s7,160($sp)
.L0da82598:
    # Line 797
    beqz	$s5,.L0da825f4
    # Line 801
    ld	$s6,144($sp)
    # Line 799
    ld	$s7,136($sp)
    # Line 800
    sw	$s8,4($sp)
    # Line 798
    addiu	$s5,$s5,-1
    # Line 803
    sw	$s6,0($sp)
.L0da825b0:
    # Line 804
    lbu	$a4,0($s7)
    # Line 805
    addiu	$a1,$sp,0
    # Line 804
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s2
    lwc1	$f2,0($a4)
    addiu	$s7,$s7,1
    # Line 805
    move	$t9,$s1
    # Line 804
    swc1	$f2,12($sp)
    # Line 805
    jalr	$s1
    lw	$a0,11768($s3)
    # Line 806
    addu	$s6,$s0,$s6
    bnel	$s4,$s6,.L0da825b0
    # Line 803
    sw	$s6,0($sp)
    ld	$v0,128($sp)
    # Line 796
    ld	$at,152($sp)
    addu	$s8,$v0,$s8
    bne	$at,$s8,.L0da82598
.L0da825f4:
    ld	$s7,160($sp)
    ld	$ra,168($sp)
    ld	$s6,176($sp)
.L0da82600:
    # ld	gp,104(sp)
    # Line 811
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$v1,120($sp)
    # Line 810
    ld	$a0,152($sp)
    # Line 811
    ld	$s4,72($sp)
    ld	$s8,96($sp)
    # Line 810
    sw	$a0,208($v1)
    # Line 809
    sw	$s5,220($v1)
    # Line 811
    ld	$s5,112($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderCIubyte2

# Function: __glSpanRenderCIubyte3
# Declared: Line 819 (Source lines: 821-875)
# Address: 0x0da82638 - 0x0da82818 (Size: 480 bytes, Frame: 144)
.globl __glSpanRenderCIubyte3
.ent __glSpanRenderCIubyte3
__glSpanRenderCIubyte3:
    # Line 821
    addiu	$sp,$sp,-272
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,168($sp)
    # sd	gp,136(sp)
    sd	$a2,152($sp)
    # Line 839
    lw	$at,208($a1)
    # Line 821
    lui	$a2,0x17
    addiu	$a2,$a2,21040
    sd	$at,184($sp)
    # addu	gp,t9,a2
    sd	$s3,120($sp)
    move	$s3,$a0
    sd	$s5,72($sp)
    # Line 843
    lw	$s5,30576($a0)
    sd	$s6,112($sp)
    # Line 837
    lw	$s6,236($a1)
    sd	$s1,80($sp)
    # Line 845
    lw	$s1,30584($a0)
    sd	$s6,160($sp)
    sd	$s5,200($sp)
    sd	$s1,224($sp)
    sd	$s0,88($sp)
    # Line 846
    lw	$s0,30588($a0)
    sd	$s8,56($sp)
    # Line 841
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 838
    lw	$s4,240($a1)
    sd	$s2,128($sp)
    # Line 840
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 844
    lw	$s2,30580($a0)
    # Line 848
    lw	$a3,248($a1)
    # Line 840
    add.s	$f0,$f0,$f1
    sd	$s2,208($sp)
    # Line 847
    lw	$s2,12588($a0)
    # Line 848
    sw	$a3,8($sp)
    # Line 840
    trunc.w.s	$f0,$f0
    sd	$s0,216($sp)
    # Line 850
    lw	$a0,204($a1)
    # Line 849
    lw	$v1,220($a1)
    # Line 840
    mfc1	$v0,$f0
    sd	$a0,144($sp)
    sd	$v1,192($sp)
    # Line 851
    beq	$at,$v0,.L0da827d0
    sd	$v0,176($sp)
    b	.L0da82798
    ld	$at,192($sp)
    # Line 861
    lbu	$at,0($s5)
.L0da826fc:
    # Line 862
    ld	$s1,200($sp)
    sll	$at,$at,0x2
    addu	$s1,$at,$s1
    lwc1	$f1,0($s1)
    # Line 863
    ld	$a3,208($sp)
    # Line 860
    lh	$s1,0($s6)
    # Line 862
    swc1	$f1,12($sp)
    # Line 863
    addu	$a3,$at,$a3
    lwc1	$f0,0($a3)
    # Line 864
    ld	$v1,224($sp)
    # Line 861
    addiu	$s5,$s5,1
    # Line 863
    swc1	$f0,16($sp)
    # Line 864
    addu	$v1,$at,$v1
    lwc1	$f3,0($v1)
    # Line 865
    ld	$v0,216($sp)
    # Line 860
    addiu	$s6,$s6,2
    # Line 864
    swc1	$f3,20($sp)
    # Line 865
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 859
    addiu	$s7,$s7,1
    # Line 860
    addu	$s1,$s1,$s0
    # Line 865
    swc1	$f2,24($sp)
    # Line 868
    addiu	$a1,$sp,0
.L0da82758:
    move	$t9,$s2
    # Line 867
    sw	$s0,0($sp)
    # Line 868
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 869
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da82758
    # Line 868
    addiu	$a1,$sp,0
    # Line 859
    bnel	$s8,$s7,.L0da826fc
    # Line 861
    lbu	$at,0($s5)
.L0da8277c:
    # Line 851
    ld	$v1,184($sp)
    ld	$a3,160($sp)
    ld	$v0,176($sp)
    addu	$v1,$a3,$v1
    beq	$v0,$v1,.L0da827d0
    sd	$v1,184($sp)
    ld	$at,192($sp)
.L0da82798:
    # Line 852
    beqz	$at,.L0da827d0
    # Line 856
    ld	$s5,152($sp)
    # Line 854
    ld	$s0,144($sp)
    # Line 859
    move	$s7,$zero
    ld	$s6,168($sp)
    # Line 857
    ld	$v1,184($sp)
    # Line 853
    ld	$v0,192($sp)
    # Line 855
    lw	$s6,312($s6)
    # Line 857
    sw	$v1,4($sp)
    # Line 853
    addiu	$v0,$v0,-1
    # Line 859
    blez	$s8,.L0da8277c
    sd	$v0,192($sp)
    b	.L0da826fc
    # Line 861
    lbu	$at,0($s5)
.L0da827d0:
    # ld	gp,136(sp)
    # Line 875
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 873
    ld	$s7,192($sp)
    ld	$s8,168($sp)
    # Line 874
    ld	$ra,176($sp)
    # Line 875
    ld	$s6,112($sp)
    # Line 873
    sw	$s7,220($s8)
    # Line 874
    sw	$ra,208($s8)
    # Line 875
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glSpanRenderCIubyte3

# Function: __glSpanRenderCIubyte4
# Declared: Line 884 (Source lines: 886-934)
# Address: 0x0da82818 - 0x0da829a8 (Size: 400 bytes, Frame: 240)
.globl __glSpanRenderCIubyte4
.ent __glSpanRenderCIubyte4
__glSpanRenderCIubyte4:
    # Line 886
    addiu	$sp,$sp,-240
    sd	$a1,120($sp)
    # Line 906
    lw	$a3,30576($a0)
    # Line 903
    lw	$at,208($a1)
    sd	$s4,80($sp)
    sd	$a3,56($sp)
    sd	$at,168($sp)
    sd	$s5,104($sp)
    # Line 886
    move	$s5,$a0
    sd	$s8,112($sp)
    # Line 910
    lw	$s8,12588($a0)
    sd	$s2,64($sp)
    # Line 908
    lw	$s2,30584($a0)
    sd	$s3,72($sp)
    # Line 907
    lw	$s3,30580($a0)
    # sd	gp,128(sp)
    sd	$s1,96($sp)
    # Line 886
    lui	$s1,0x17
    addiu	$s1,$s1,20560
    # addu	gp,t9,s1
    # Line 909
    lw	$s1,30588($a0)
    sd	$s0,88($sp)
    # Line 901
    lw	$s0,236($a1)
    # Line 904
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$a2,152($sp)
    # Line 911
    lw	$a2,248($a1)
    # Line 904
    add.s	$f0,$f0,$f1
    sd	$s0,136($sp)
    # Line 902
    lw	$s0,240($a1)
    # Line 911
    sw	$a2,8($sp)
    # Line 904
    trunc.w.s	$f0,$f0
    # Line 913
    lw	$s4,212($a1)
    # Line 914
    lw	$a0,220($a1)
    # Line 912
    lw	$v1,204($a1)
    # Line 904
    mfc1	$v0,$f0
    sd	$a0,176($sp)
    sd	$v1,144($sp)
    # Line 915
    beq	$at,$v0,.L0da8296c
    sd	$v0,160($sp)
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s7,184($sp)
.L0da828c4:
    ld	$at,176($sp)
    # Line 917
    ld	$v0,176($sp)
    # Line 916
    beqz	$at,.L0da82960
    ld	$v1,168($sp)
    # Line 920
    ld	$s6,144($sp)
    # Line 918
    ld	$s7,152($sp)
    # Line 919
    sw	$v1,4($sp)
    # Line 917
    addiu	$v0,$v0,-1
    sd	$v0,176($sp)
    # Line 922
    sw	$s6,0($sp)
.L0da828ec:
    # Line 923
    lbu	$a0,0($s7)
    # Line 924
    ld	$a3,56($sp)
    sll	$a0,$a0,0x2
    addu	$a3,$a0,$a3
    lwc1	$f5,0($a3)
    swc1	$f5,12($sp)
    # Line 925
    addu	$a2,$a0,$s3
    lwc1	$f4,0($a2)
    swc1	$f4,16($sp)
    # Line 926
    addu	$a1,$a0,$s2
    lwc1	$f3,0($a1)
    # Line 923
    addiu	$s7,$s7,1
    # Line 926
    swc1	$f3,20($sp)
    # Line 927
    addu	$a0,$a0,$s1
    lwc1	$f2,0($a0)
    # Line 928
    move	$t9,$s8
    addiu	$a1,$sp,0
    # Line 927
    swc1	$f2,24($sp)
    # Line 928
    jalr	$s8
    lw	$a0,11768($s5)
    # Line 929
    addu	$s6,$s0,$s6
    bnel	$s4,$s6,.L0da828ec
    # Line 922
    sw	$s6,0($sp)
    # Line 915
    ld	$at,168($sp)
    ld	$v0,136($sp)
    ld	$a3,160($sp)
    addu	$at,$v0,$at
    bne	$a3,$at,.L0da828c4
    sd	$at,168($sp)
.L0da82960:
    ld	$s7,184($sp)
    ld	$ra,192($sp)
    ld	$s6,200($sp)
.L0da8296c:
    # ld	gp,128(sp)
    # Line 934
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    ld	$s5,104($sp)
    ld	$s8,112($sp)
    ld	$a0,120($sp)
    # Line 933
    ld	$a3,160($sp)
    # Line 932
    ld	$v1,176($sp)
    # Line 934
    addiu	$sp,$sp,240
    # Line 933
    sw	$a3,208($a0)
    # Line 934
    jr	$ra
    # Line 932
    sw	$v1,220($a0)
.end __glSpanRenderCIubyte4

# Function: __glSpanRenderRGBA
# Declared: Line 941 (Source lines: 943-990)
# Address: 0x0da829a8 - 0x0da82b38 (Size: 400 bytes, Frame: 224)
.globl __glSpanRenderRGBA
.ent __glSpanRenderRGBA
__glSpanRenderRGBA:
    # Line 943
    addiu	$sp,$sp,-224
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,160($sp)
    sd	$s8,56($sp)
    # Line 960
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 957
    lw	$s4,240($a1)
    # sd	gp,128(sp)
    # Line 943
    lui	$a3,0x17
    addiu	$a3,$a3,20160
    # Line 958
    lw	$at,208($a1)
    # Line 943
    # addu	gp,t9,a3
    # Line 965
    lw	$v1,248($a1)
    sd	$at,176($sp)
    # Line 959
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$s3,120($sp)
    # Line 943
    move	$s3,$a0
    # Line 959
    add.s	$f0,$f0,$f1
    sd	$s2,136($sp)
    # Line 962
    lw	$s2,12588($a0)
    # Line 964
    lw	$a0,220($a1)
    # Line 959
    trunc.w.s	$f0,$f0
    sd	$a2,144($sp)
    # Line 956
    lw	$a2,236($a1)
    # Line 965
    sw	$v1,8($sp)
    # Line 959
    mfc1	$v0,$f0
    sd	$a2,152($sp)
    sd	$a0,184($sp)
    # Line 966
    beq	$at,$v0,.L0da82af0
    sd	$v0,168($sp)
    b	.L0da82ab8
    ld	$a3,184($sp)
    # Line 975
    lwc1	$f1,0($s5)
.L0da82a44:
    # Line 974
    lh	$s1,0($s6)
    # Line 975
    swc1	$f1,12($sp)
    # Line 976
    lwc1	$f0,4($s5)
    swc1	$f0,16($sp)
    # Line 977
    lwc1	$f3,8($s5)
    # Line 978
    addiu	$s5,$s5,16
    # Line 977
    swc1	$f3,20($sp)
    # Line 974
    addiu	$s6,$s6,2
    # Line 978
    lwc1	$f2,-4($s5)
    # Line 973
    addiu	$s7,$s7,1
    # Line 974
    addu	$s1,$s1,$s0
    # Line 978
    swc1	$f2,24($sp)
    # Line 983
    addiu	$a1,$sp,0
.L0da82a78:
    move	$t9,$s2
    # Line 980
    sw	$s0,0($sp)
    # Line 983
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 984
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da82a78
    # Line 983
    addiu	$a1,$sp,0
    # Line 973
    bnel	$s8,$s7,.L0da82a44
    # Line 975
    lwc1	$f1,0($s5)
.L0da82a9c:
    # Line 966
    ld	$v0,176($sp)
    ld	$v1,152($sp)
    ld	$at,168($sp)
    addu	$v0,$v1,$v0
    beq	$at,$v0,.L0da82af0
    sd	$v0,176($sp)
    ld	$a3,184($sp)
.L0da82ab8:
    # Line 967
    beqz	$a3,.L0da82af0
    ld	$s6,160($sp)
    # Line 971
    ld	$s5,144($sp)
    # Line 972
    ld	$at,176($sp)
    # Line 969
    lw	$s0,204($s6)
    # Line 968
    ld	$s7,184($sp)
    # Line 970
    lw	$s6,312($s6)
    # Line 972
    sw	$at,4($sp)
    # Line 968
    addiu	$s7,$s7,-1
    sd	$s7,184($sp)
    # Line 973
    blez	$s8,.L0da82a9c
    move	$s7,$zero
    b	.L0da82a44
    # Line 975
    lwc1	$f1,0($s5)
.L0da82af0:
    # ld	gp,128(sp)
    # Line 990
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 988
    ld	$s7,184($sp)
    ld	$s8,160($sp)
    # Line 989
    ld	$ra,168($sp)
    # Line 990
    ld	$s6,112($sp)
    # Line 988
    sw	$s7,220($s8)
    # Line 989
    sw	$ra,208($s8)
    # Line 990
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderRGBA

# Function: __glSpanRenderRGBA2
# Declared: Line 998 (Source lines: 1000-1042)
# Address: 0x0da82b38 - 0x0da82c88 (Size: 336 bytes, Frame: 208)
.globl __glSpanRenderRGBA2
.ent __glSpanRenderRGBA2
__glSpanRenderRGBA2:
    # Line 1000
    addiu	$sp,$sp,-208
    sd	$a1,128($sp)
    sd	$s1,80($sp)
    move	$s1,$a0
    sd	$s4,96($sp)
    # sd	gp,104(sp)
    # Line 1012
    lw	$v1,236($a1)
    sd	$s3,64($sp)
    # Line 1018
    lw	$s3,12588($a0)
    sd	$s0,72($sp)
    # Line 1016
    lw	$s0,184($a1)
    sd	$s2,56($sp)
    # Line 1013
    lw	$s2,240($a1)
    # Line 1015
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$a2,120($sp)
    # Line 1000
    lui	$a2,0x17
    # Line 1015
    add.s	$f0,$f0,$f1
    # Line 1000
    addiu	$a2,$a2,19760
    # addu	gp,t9,a2
    # Line 1020
    lw	$v0,248($a1)
    # Line 1015
    trunc.w.s	$f0,$f0
    sd	$s8,88($sp)
    # Line 1014
    lw	$s8,208($a1)
    # Line 1020
    sw	$v0,8($sp)
    # Line 1015
    mfc1	$at,$f0
    sd	$v1,112($sp)
    # Line 1021
    lw	$s4,220($a1)
    # Line 1022
    beq	$s8,$at,.L0da82c54
    sd	$at,136($sp)
    sd	$s6,168($sp)
    sd	$ra,160($sp)
    sd	$s5,152($sp)
    b	.L0da82bd4
    sd	$s7,144($sp)
.L0da82bc4:
    ld	$at,112($sp)
    ld	$a3,136($sp)
    addu	$s8,$at,$s8
    beq	$a3,$s8,.L0da82c44
.L0da82bd4:
    # Line 1028
    move	$s7,$zero
    # Line 1023
    beqz	$s4,.L0da82c44
    ld	$s5,128($sp)
    # Line 1026
    ld	$s6,120($sp)
    # Line 1024
    addiu	$s4,$s4,-1
    # Line 1025
    lw	$s5,204($s5)
    # Line 1028
    blez	$s0,.L0da82bc4
    # Line 1027
    sw	$s8,4($sp)
    # Line 1029
    lwc1	$f5,0($s6)
.L0da82bf8:
    swc1	$f5,12($sp)
    # Line 1030
    lwc1	$f4,4($s6)
    swc1	$f4,16($sp)
    # Line 1031
    lwc1	$f3,8($s6)
    # Line 1036
    addiu	$a1,$sp,0
    # Line 1032
    addiu	$s6,$s6,16
    # Line 1031
    swc1	$f3,20($sp)
    # Line 1036
    move	$t9,$s3
    # Line 1032
    lwc1	$f2,-4($s6)
    # Line 1033
    sw	$s5,0($sp)
    # Line 1037
    addu	$s5,$s2,$s5
    # Line 1032
    swc1	$f2,24($sp)
    # Line 1036
    jalr	$s3
    lw	$a0,11768($s1)
    # Line 1028
    addiu	$s7,$s7,1
    bnel	$s0,$s7,.L0da82bf8
    # Line 1029
    lwc1	$f5,0($s6)
    b	.L0da82bc4
    nop
.L0da82c44:
    ld	$s7,144($sp)
    ld	$s5,152($sp)
    ld	$ra,160($sp)
    ld	$s6,168($sp)
.L0da82c54:
    # ld	gp,104(sp)
    # Line 1042
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s8,128($sp)
    ld	$s3,64($sp)
    # Line 1041
    ld	$at,136($sp)
    # Line 1040
    sw	$s4,220($s8)
    # Line 1042
    ld	$s4,96($sp)
    # Line 1041
    sw	$at,208($s8)
    # Line 1042
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glSpanRenderRGBA2

# Function: __glSpanRenderDepth
# Declared: Line 1049 (Source lines: 1051-1100)
# Address: 0x0da82c88 - 0x0da82e3c (Size: 436 bytes, Frame: 224)
.globl __glSpanRenderDepth
.ent __glSpanRenderDepth
__glSpanRenderDepth:
    # Line 1051
    addiu	$sp,$sp,-224
    sd	$s0,88($sp)
    sd	$s2,136($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,160($sp)
    sd	$a2,144($sp)
    # sd	gp,128(sp)
    # Line 1067
    lwc1	$f3,200($a1)
    lwc1	$f1,164($a1)
    # Line 1066
    lw	$at,208($a1)
    # Line 1064
    lw	$a3,236($a1)
    sd	$s3,120($sp)
    # Line 1070
    lw	$s3,12588($a0)
    sd	$s8,56($sp)
    # Line 1068
    lw	$s8,184($a1)
    # Line 1071
    lwc1	$f4,360($a0)
    sd	$s4,96($sp)
    # Line 1065
    lw	$s4,240($a1)
    # Line 1071
    swc1	$f4,12($sp)
    sd	$a3,152($sp)
    # Line 1072
    lwc1	$f2,364($a0)
    sd	$at,176($sp)
    # Line 1067
    add.s	$f1,$f1,$f3
    # Line 1072
    swc1	$f2,16($sp)
    sd	$s1,80($sp)
    # Line 1073
    lwc1	$f2,368($a0)
    # Line 1051
    move	$s1,$a0
    # Line 1067
    trunc.w.s	$f1,$f1
    # Line 1073
    swc1	$f2,20($sp)
    # Line 1051
    lui	$a0,0x17
    # Line 1074
    lwc1	$f0,372($s1)
    # Line 1051
    addiu	$a0,$a0,19424
    # Line 1067
    mfc1	$v0,$f1
    # Line 1074
    swc1	$f0,24($sp)
    # Line 1051
    # addu	gp,t9,a0
    # Line 1076
    lw	$v1,220($a1)
    sd	$v0,168($sp)
    # Line 1077
    beq	$at,$v0,.L0da82df4
    sd	$v1,184($sp)
    b	.L0da82dbc
    ld	$at,184($sp)
    # Line 1087
    lw	$at,31308($s1)
.L0da82d3c:
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,0($s5)
    mul.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    addiu	$s5,$s5,4
    # Line 1085
    addiu	$s6,$s6,2
    lh	$s2,-2($s6)
    # Line 1087
    dmfc1	$at,$f0
    # Line 1084
    addiu	$s7,$s7,1
    # Line 1085
    addu	$s2,$s2,$s0
    # Line 1087
    sw	$at,8($sp)
    # Line 1093
    addiu	$a1,$sp,0
.L0da82d7c:
    move	$t9,$s3
    # Line 1090
    sw	$s0,0($sp)
    # Line 1093
    jalr	$s3
    lw	$a0,11768($s1)
    # Line 1094
    addu	$s0,$s4,$s0
    bne	$s0,$s2,.L0da82d7c
    # Line 1093
    addiu	$a1,$sp,0
    # Line 1084
    bnel	$s8,$s7,.L0da82d3c
    # Line 1087
    lw	$at,31308($s1)
.L0da82da0:
    # Line 1077
    ld	$v1,176($sp)
    ld	$a3,152($sp)
    ld	$v0,168($sp)
    addu	$v1,$a3,$v1
    beq	$v0,$v1,.L0da82df4
    sd	$v1,176($sp)
    ld	$at,184($sp)
.L0da82dbc:
    # Line 1078
    beqz	$at,.L0da82df4
    # Line 1082
    ld	$s5,144($sp)
    ld	$s6,160($sp)
    # Line 1084
    move	$s7,$zero
    # Line 1083
    ld	$v1,176($sp)
    # Line 1080
    lw	$s0,204($s6)
    # Line 1079
    ld	$v0,184($sp)
    # Line 1081
    lw	$s6,312($s6)
    # Line 1083
    sw	$v1,4($sp)
    # Line 1079
    addiu	$v0,$v0,-1
    # Line 1084
    blez	$s8,.L0da82da0
    sd	$v0,184($sp)
    b	.L0da82d3c
    # Line 1087
    lw	$at,31308($s1)
.L0da82df4:
    # ld	gp,128(sp)
    # Line 1100
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 1098
    ld	$s7,184($sp)
    ld	$s8,160($sp)
    # Line 1099
    ld	$ra,168($sp)
    # Line 1100
    ld	$s6,112($sp)
    # Line 1098
    sw	$s7,220($s8)
    # Line 1099
    sw	$ra,208($s8)
    # Line 1100
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderDepth

# Function: __glSpanRenderDepth2
# Declared: Line 1108 (Source lines: 1110-1152)
# Address: 0x0da82e3c - 0x0da82fb0 (Size: 372 bytes, Frame: 208)
.globl __glSpanRenderDepth2
.ent __glSpanRenderDepth2
__glSpanRenderDepth2:
    # Line 1110
    addiu	$sp,$sp,-208
    sd	$a1,128($sp)
    sd	$s1,80($sp)
    move	$s1,$a0
    sd	$a2,120($sp)
    sd	$s4,96($sp)
    # Line 1125
    lwc1	$f3,200($a1)
    lwc1	$f1,164($a1)
    # Line 1122
    lw	$v1,236($a1)
    sd	$s3,64($sp)
    # Line 1128
    lw	$s3,12588($a0)
    sd	$s0,72($sp)
    # Line 1126
    lw	$s0,184($a1)
    sd	$s8,88($sp)
    # Line 1124
    lw	$s8,208($a1)
    # Line 1129
    lwc1	$f4,360($a0)
    sd	$s2,56($sp)
    # Line 1123
    lw	$s2,240($a1)
    # Line 1129
    swc1	$f4,12($sp)
    # Line 1125
    add.s	$f1,$f1,$f3
    # Line 1130
    lwc1	$f2,364($a0)
    # sd	gp,104(sp)
    # Line 1110
    lui	$v0,0x17
    # Line 1130
    swc1	$f2,16($sp)
    # Line 1125
    trunc.w.s	$f1,$f1
    # Line 1131
    lwc1	$f2,368($a0)
    # Line 1110
    addiu	$v0,$v0,18988
    # addu	gp,t9,v0
    # Line 1131
    swc1	$f2,20($sp)
    # Line 1125
    mfc1	$at,$f1
    # Line 1132
    lwc1	$f0,372($a0)
    sd	$v1,112($sp)
    sd	$at,136($sp)
    swc1	$f0,24($sp)
    # Line 1135
    beq	$s8,$at,.L0da82f7c
    # Line 1134
    lw	$s4,220($a1)
    sd	$s6,168($sp)
    sd	$ra,160($sp)
    sd	$s5,152($sp)
    b	.L0da82ef0
    sd	$s7,144($sp)
.L0da82ee0:
    ld	$at,112($sp)
    # Line 1135
    ld	$a3,136($sp)
    addu	$s8,$at,$s8
    beq	$a3,$s8,.L0da82f6c
.L0da82ef0:
    # Line 1141
    move	$s7,$zero
    # Line 1136
    beqz	$s4,.L0da82f6c
    ld	$s5,128($sp)
    # Line 1139
    ld	$s6,120($sp)
    # Line 1137
    addiu	$s4,$s4,-1
    # Line 1138
    lw	$s5,204($s5)
    # Line 1141
    blez	$s0,.L0da82ee0
    # Line 1140
    sw	$s8,4($sp)
    # Line 1142
    sw	$s5,0($sp)
.L0da82f14:
    # Line 1143
    lw	$t9,31308($s1)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f6
    nop
    cvt.s.l	$f6,$f6
    lwc1	$f5,0($s6)
    mul.s	$f5,$f5,$f6
    trunc.l.s	$f5,$f5
    # Line 1146
    addiu	$a1,$sp,0
    # Line 1143
    addiu	$s6,$s6,4
    # Line 1141
    addiu	$s7,$s7,1
    # Line 1143
    dmfc1	$t8,$f5
    # Line 1147
    addu	$s5,$s2,$s5
    # Line 1146
    move	$t9,$s3
    # Line 1143
    sw	$t8,8($sp)
    # Line 1146
    jalr	$s3
    lw	$a0,11768($s1)
    # Line 1141
    bnel	$s0,$s7,.L0da82f14
    # Line 1142
    sw	$s5,0($sp)
    b	.L0da82ee0
    nop
.L0da82f6c:
    ld	$s7,144($sp)
    ld	$s5,152($sp)
    ld	$ra,160($sp)
    ld	$s6,168($sp)
.L0da82f7c:
    # ld	gp,104(sp)
    # Line 1152
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s8,128($sp)
    ld	$s3,64($sp)
    # Line 1151
    ld	$at,136($sp)
    # Line 1150
    sw	$s4,220($s8)
    # Line 1152
    ld	$s4,96($sp)
    # Line 1151
    sw	$at,208($s8)
    # Line 1152
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glSpanRenderDepth2

# Function: __glSpanRenderCI
# Declared: Line 1159 (Source lines: 1161-1207)
# Address: 0x0da82fb0 - 0x0da83150 (Size: 416 bytes, Frame: 240)
.globl __glSpanRenderCI
.ent __glSpanRenderCI
__glSpanRenderCI:
    # Line 1161
    addiu	$sp,$sp,-240
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    sd	$a1,160($sp)
    # sd	gp,128(sp)
    sd	$s0,88($sp)
    lui	$s0,0x17
    # Line 1175
    lw	$a3,236($a1)
    # Line 1161
    addiu	$s0,$s0,18616
    # addu	gp,t9,s0
    sd	$a3,152($sp)
    # Line 1177
    lw	$at,208($a1)
    sd	$s8,56($sp)
    # Line 1179
    lw	$s8,184($a1)
    sd	$s4,96($sp)
    # Line 1176
    lw	$s4,240($a1)
    sd	$s2,136($sp)
    sd	$s3,120($sp)
    # Line 1178
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1161
    move	$s3,$a0
    sd	$a2,144($sp)
    # Line 1178
    add.s	$f0,$f0,$f1
    # Line 1180
    lw	$a2,30740($a0)
    # Line 1183
    lw	$a0,248($a1)
    # Line 1182
    lw	$s2,12588($s3)
    # Line 1178
    trunc.w.s	$f0,$f0
    # Line 1183
    sw	$a0,8($sp)
    sd	$at,176($sp)
    # Line 1185
    lw	$v1,220($a1)
    # Line 1178
    mfc1	$v0,$f0
    sd	$a2,192($sp)
    sd	$v1,184($sp)
    # Line 1186
    beq	$at,$v0,.L0da83108
    sd	$v0,168($sp)
    b	.L0da830d0
    ld	$v0,184($sp)
    # Line 1195
    lwc1	$f3,0($s5)
.L0da83054:
    trunc.w.s	$f3,$f3
    ld	$v0,192($sp)
    mfc1	$at,$f3
    nop
    and	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$s5,$s5,4
    # Line 1194
    lh	$s1,0($s6)
    addiu	$s6,$s6,2
    # Line 1193
    addiu	$s7,$s7,1
    # Line 1194
    addu	$s1,$s1,$s0
    # Line 1195
    swc1	$f2,12($sp)
    # Line 1200
    addiu	$a1,$sp,0
.L0da83090:
    move	$t9,$s2
    # Line 1197
    sw	$s0,0($sp)
    # Line 1200
    jalr	$s2
    lw	$a0,11768($s3)
    # Line 1201
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0da83090
    # Line 1200
    addiu	$a1,$sp,0
    # Line 1193
    bnel	$s8,$s7,.L0da83054
    # Line 1195
    lwc1	$f3,0($s5)
.L0da830b4:
    # Line 1186
    ld	$a3,176($sp)
    ld	$at,152($sp)
    ld	$v1,168($sp)
    addu	$a3,$at,$a3
    beq	$v1,$a3,.L0da83108
    sd	$a3,176($sp)
    ld	$v0,184($sp)
.L0da830d0:
    # Line 1187
    beqz	$v0,.L0da83108
    # Line 1191
    ld	$s5,144($sp)
    ld	$s6,160($sp)
    # Line 1193
    move	$s7,$zero
    # Line 1192
    ld	$a3,176($sp)
    # Line 1189
    lw	$s0,204($s6)
    # Line 1188
    ld	$v1,184($sp)
    # Line 1190
    lw	$s6,312($s6)
    # Line 1192
    sw	$a3,4($sp)
    # Line 1188
    addiu	$v1,$v1,-1
    # Line 1193
    blez	$s8,.L0da830b4
    sd	$v1,184($sp)
    b	.L0da83054
    # Line 1195
    lwc1	$f3,0($s5)
.L0da83108:
    # ld	gp,128(sp)
    # Line 1207
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    # Line 1205
    ld	$s7,184($sp)
    ld	$s8,160($sp)
    # Line 1206
    ld	$ra,168($sp)
    # Line 1207
    ld	$s6,112($sp)
    # Line 1205
    sw	$s7,220($s8)
    # Line 1206
    sw	$ra,208($s8)
    # Line 1207
    ld	$ra,104($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glSpanRenderCI

# Function: __glSpanRenderCI2
# Declared: Line 1215 (Source lines: 1217-1258)
# Address: 0x0da83150 - 0x0da832b4 (Size: 356 bytes, Frame: 224)
.globl __glSpanRenderCI2
.ent __glSpanRenderCI2
__glSpanRenderCI2:
    # Line 1217
    addiu	$sp,$sp,-224
    sd	$a1,128($sp)
    sd	$s2,56($sp)
    move	$s2,$a0
    sd	$s8,96($sp)
    # sd	gp,104(sp)
    lui	$a3,0x17
    addiu	$a3,$a3,18200
    # addu	gp,t9,a3
    # Line 1232
    lw	$at,208($a1)
    sd	$s3,64($sp)
    # Line 1237
    lw	$s3,12588($a0)
    sd	$s1,88($sp)
    # Line 1235
    lw	$s1,30740($a0)
    sd	$s0,80($sp)
    # Line 1233
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1234
    lw	$s0,184($a1)
    sd	$s4,72($sp)
    # Line 1233
    add.s	$f0,$f0,$f1
    # Line 1231
    lw	$s4,240($a1)
    sd	$at,144($sp)
    # Line 1238
    lw	$v1,248($a1)
    # Line 1233
    trunc.w.s	$f0,$f0
    sd	$a2,120($sp)
    # Line 1230
    lw	$a2,236($a1)
    # Line 1238
    sw	$v1,8($sp)
    # Line 1233
    mfc1	$v0,$f0
    sd	$a2,112($sp)
    # Line 1240
    lw	$s8,220($a1)
    # Line 1241
    beq	$at,$v0,.L0da83280
    sd	$v0,136($sp)
    sd	$s6,176($sp)
    sd	$ra,168($sp)
    sd	$s5,160($sp)
    b	.L0da831fc
    sd	$s7,152($sp)
.L0da831e4:
    ld	$v0,144($sp)
    ld	$v1,112($sp)
    ld	$at,136($sp)
    addu	$v0,$v1,$v0
    beq	$at,$v0,.L0da83270
    sd	$v0,144($sp)
.L0da831fc:
    # Line 1247
    move	$s7,$zero
    # Line 1242
    beqz	$s8,.L0da83270
    ld	$s5,128($sp)
    # Line 1245
    ld	$s6,120($sp)
    # Line 1243
    addiu	$s8,$s8,-1
    # Line 1246
    ld	$a3,144($sp)
    # Line 1244
    lw	$s5,204($s5)
    # Line 1247
    blez	$s0,.L0da831e4
    # Line 1246
    sw	$a3,4($sp)
    # Line 1248
    lwc1	$f3,0($s6)
.L0da83224:
    trunc.w.s	$f3,$f3
    mfc1	$t8,$f3
    nop
    and	$t8,$t8,$s1
    mtc1	$t8,$f2
    # Line 1252
    addiu	$a1,$sp,0
    # Line 1248
    cvt.s.w	$f2,$f2
    addiu	$s6,$s6,4
    # Line 1252
    move	$t9,$s3
    # Line 1247
    addiu	$s7,$s7,1
    # Line 1249
    sw	$s5,0($sp)
    # Line 1253
    addu	$s5,$s4,$s5
    # Line 1248
    swc1	$f2,12($sp)
    # Line 1252
    jalr	$s3
    lw	$a0,11768($s2)
    # Line 1247
    bnel	$s0,$s7,.L0da83224
    # Line 1248
    lwc1	$f3,0($s6)
    b	.L0da831e4
    nop
.L0da83270:
    ld	$s7,152($sp)
    ld	$s5,160($sp)
    ld	$ra,168($sp)
    ld	$s6,176($sp)
.L0da83280:
    # ld	gp,104(sp)
    # Line 1258
    ld	$s0,80($sp)
    ld	$s1,88($sp)
    ld	$s2,56($sp)
    ld	$at,128($sp)
    # Line 1257
    ld	$v0,136($sp)
    # Line 1258
    ld	$s3,64($sp)
    ld	$s4,72($sp)
    # Line 1257
    sw	$v0,208($at)
    # Line 1256
    sw	$s8,220($at)
    # Line 1258
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glSpanRenderCI2

# Function: __glSpanRenderStencil
# Declared: Line 1265 (Source lines: 1267-1308)
# Address: 0x0da832b4 - 0x0da83448 (Size: 404 bytes, Frame: 192)
.globl __glSpanRenderStencil
.ent __glSpanRenderStencil
__glSpanRenderStencil:
    # Line 1267
    addiu	$sp,$sp,-192
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$s4,40($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    sd	$a1,104($sp)
    sd	$s5,16($sp)
    # Line 1282
    lw	$s5,240($a1)
    # sd	gp,80(sp)
    # Line 1286
    li	$v0,1
    # Line 1281
    lw	$a4,236($a1)
    sd	$a2,88($sp)
    # Line 1267
    lui	$a2,0x17
    addiu	$a2,$a2,17844
    sd	$a4,96($sp)
    # addu	gp,t9,a2
    sd	$s1,24($sp)
    # Line 1290
    lw	$s1,220($a1)
    # Line 1284
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$s1,120($sp)
    # Line 1267
    move	$s1,$a0
    # Line 1284
    add.s	$f0,$f0,$f1
    # Line 1286
    lw	$v1,3132($a0)
    sd	$s0,32($sp)
    # Line 1285
    lw	$s0,184($a1)
    # Line 1284
    trunc.w.s	$f0,$f0
    # Line 1286
    sllv	$v0,$v0,$v1
    sd	$s0,136($sp)
    # Line 1283
    lw	$s0,208($a1)
    # Line 1284
    mfc1	$at,$f0
    # Line 1286
    addiu	$v0,$v0,-1
    sd	$v0,128($sp)
    # Line 1291
    beq	$s0,$at,.L0da83400
    sd	$at,112($sp)
    b	.L0da833c4
    addiu	$s6,$s1,31112
    # Line 1298
    ld	$at,144($sp)
.L0da83358:
    # Line 1299
    lwc1	$f2,0($s7)
    addiu	$s7,$s7,4
    # Line 1298
    lh	$s4,0($at)
    # Line 1299
    trunc.w.s	$f2,$f2
    # Line 1298
    addiu	$at,$at,2
    sd	$at,144($sp)
    # Line 1299
    ld	$at,128($sp)
    mfc1	$s3,$f2
    # Line 1297
    addiu	$s8,$s8,1
    # Line 1298
    addu	$s4,$s4,$s2
    # Line 1299
    and	$s3,$s3,$at
    # Line 1301
    move	$a0,$s6
.L0da83388:
    lw	$t9,31204($s1)
    move	$a2,$s0
    move	$a1,$s2
    jalr	$t9
    move	$a3,$s3
    # Line 1302
    addu	$s2,$s5,$s2
    bne	$s2,$s4,.L0da83388
    # Line 1301
    move	$a0,$s6
    # Line 1297
    ld	$v0,136($sp)
    bne	$v0,$s8,.L0da83358
    # Line 1298
    ld	$at,144($sp)
.L0da833b4:
    ld	$a4,96($sp)
    # Line 1291
    ld	$v1,112($sp)
    addu	$s0,$a4,$s0
    beq	$v1,$s0,.L0da83400
.L0da833c4:
    ld	$at,120($sp)
    # Line 1292
    beqz	$at,.L0da83400
    # Line 1297
    move	$s8,$zero
    ld	$s2,104($sp)
    ld	$v0,136($sp)
    # Line 1293
    ld	$v1,120($sp)
    # Line 1295
    lw	$s7,312($s2)
    # Line 1294
    lw	$s2,204($s2)
    # Line 1293
    addiu	$v1,$v1,-1
    sd	$v1,120($sp)
    sd	$s7,144($sp)
    # Line 1297
    blez	$v0,.L0da833b4
    # Line 1296
    ld	$s7,88($sp)
    b	.L0da83358
    # Line 1298
    ld	$at,144($sp)
.L0da83400:
    # ld	gp,80(sp)
    # Line 1308
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$ra,104($sp)
    # Line 1307
    ld	$at,112($sp)
    # Line 1306
    ld	$s8,120($sp)
    # Line 1308
    ld	$s6,56($sp)
    # Line 1307
    sw	$at,208($ra)
    # Line 1306
    sw	$s8,220($ra)
    # Line 1308
    ld	$ra,48($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glSpanRenderStencil

# Function: __glSpanRenderStencil2
# Declared: Line 1316 (Source lines: 1318-1354)
# Address: 0x0da83448 - 0x0da835a0 (Size: 344 bytes, Frame: 160)
.globl __glSpanRenderStencil2
.ent __glSpanRenderStencil2
__glSpanRenderStencil2:
    # Line 1318
    addiu	$sp,$sp,-160
    sd	$a2,56($sp)
    sd	$a1,72($sp)
    sd	$s1,24($sp)
    # Line 1335
    lw	$s1,184($a1)
    sd	$s6,8($sp)
    # Line 1332
    lw	$s6,240($a1)
    sd	$s2,0($sp)
    # Line 1318
    move	$s2,$a0
    # Line 1331
    lw	$v0,236($a1)
    # Line 1340
    lw	$v1,220($a1)
    sd	$s7,32($sp)
    # Line 1336
    li	$s7,1
    sd	$v1,80($sp)
    # Line 1334
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$v0,48($sp)
    sd	$s0,16($sp)
    add.s	$f0,$f0,$f1
    # sd	gp,40(sp)
    # Line 1318
    lui	$at,0x17
    addiu	$at,$at,17440
    # Line 1334
    trunc.w.s	$f0,$f0
    # Line 1318
    # addu	gp,t9,at
    # Line 1336
    lw	$t9,3132($a0)
    # Line 1333
    lw	$s0,208($a1)
    # Line 1334
    mfc1	$at,$f0
    # Line 1336
    sllv	$s7,$s7,$t9
    addiu	$s7,$s7,-1
    # Line 1341
    beq	$s0,$at,.L0da8356c
    sd	$at,64($sp)
    sd	$s3,112($sp)
    sd	$ra,104($sp)
    sd	$s4,96($sp)
    sd	$s5,88($sp)
    sd	$s8,120($sp)
    b	.L0da83528
    addiu	$s8,$s2,31112
    # Line 1348
    lwc1	$f2,0($s4)
.L0da834e4:
    move	$a2,$s0
    move	$a0,$s8
    trunc.w.s	$f2,$f2
    # Line 1347
    addiu	$s4,$s4,4
    # Line 1346
    addiu	$s5,$s5,1
    # Line 1348
    lw	$t9,31204($s2)
    mfc1	$a3,$f2
    move	$a1,$s3
    jalr	$t9
    and	$a3,$a3,$s7
    # Line 1349
    addu	$s3,$s6,$s3
    # Line 1346
    bnel	$s1,$s5,.L0da834e4
    # Line 1348
    lwc1	$f2,0($s4)
.L0da83518:
    ld	$v0,48($sp)
    # Line 1341
    ld	$at,64($sp)
    addu	$s0,$v0,$s0
    beq	$at,$s0,.L0da83558
.L0da83528:
    ld	$v1,80($sp)
    ld	$s3,72($sp)
    # Line 1342
    beqz	$v1,.L0da83558
    # Line 1345
    ld	$s4,56($sp)
    # Line 1343
    ld	$a3,80($sp)
    # Line 1346
    move	$s5,$zero
    # Line 1344
    lw	$s3,204($s3)
    # Line 1343
    addiu	$a3,$a3,-1
    # Line 1346
    blez	$s1,.L0da83518
    sd	$a3,80($sp)
    b	.L0da834e4
    # Line 1348
    lwc1	$f2,0($s4)
.L0da83558:
    ld	$s8,120($sp)
    ld	$s5,88($sp)
    ld	$s4,96($sp)
    ld	$ra,104($sp)
    ld	$s3,112($sp)
.L0da8356c:
    # ld	gp,40(sp)
    # Line 1354
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 1353
    ld	$s7,72($sp)
    # Line 1352
    ld	$s6,80($sp)
    # Line 1354
    ld	$s2,0($sp)
    ld	$at,64($sp)
    # Line 1352
    sw	$s6,220($s7)
    # Line 1354
    ld	$s6,8($sp)
    # Line 1353
    sw	$at,208($s7)
    # Line 1354
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glSpanRenderStencil2

