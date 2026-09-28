# Source: ../EXPRESS/gr2_stencil.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_stencil.c
# Total Functions: 11

.text

# Function: __glExpEnableStencilTest
# Declared: Line 31 (Source lines: 32-49)
# Address: 0x0da6a8e8 - 0x0da6a980 (Size: 152 bytes, Frame: 48)
.globl __glExpEnableStencilTest
.ent __glExpEnableStencilTest
__glExpEnableStencilTest:
    # Line 32
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lbu	$at,31566($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,-12416
    beqz	$at,.L0da6a930
    addu	$gp,$t9,$v0
    lw	$v1,1696($s0)
    andi	$v1,$v1,0x8000
    beqz	$v1,.L0da6a930
    # Line 38
    nop	# was lw $t9, -31520($gp) # &__glExpPassStencilMode
    sd	$ra,16($sp)
    bal __glExpPassStencilMode
    move	$a0,$s0
    b	.L0da6a964
    # Line 48
    nop	# was lw $t9, -31524($gp) # &__glExpPassStencilMask
.L0da6a930:
    # Line 41
    lui	$a1,0x4
    sd	$ra,16($sp)
    ori	$a1,$a1,0x277c
    # Line 40
    lui	$at,0x4
    ori	$at,$at,0x203c
    sw	$zero,0($at)
    # Line 41
    sw	$zero,0($a1)
    # Line 42
    sw	$zero,0($a1)
    # Line 43
    sw	$zero,0($a1)
    # Line 44
    sw	$zero,0($a1)
    # Line 45
    sw	$zero,0($a1)
    # Line 46
    sw	$zero,0($a1)
    # Line 48
    # lw $t9, -31524($gp) # &__glExpPassStencilMask
.L0da6a964:
    bal __glExpPassStencilMask
    move	$a0,$s0
    # Line 49
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpEnableStencilTest

# Function: __glExpPassStencilMask
# Declared: Line 51 (Source lines: 52-62)
# Address: 0x0da6a980 - 0x0da6a9c0 (Size: 64 bytes, Frame: 0)
.globl __glExpPassStencilMask
.ent __glExpPassStencilMask
__glExpPassStencilMask:
    # Line 52
    lbu	$at,31566($a0)
    # Line 58
    lui	$a1,0x4
    # Line 52
    beqz	$at,.L0da6a9b0
    # Line 58
    ori	$a1,$a1,0x2040
    # Line 52
    lw	$v0,1696($a0)
    andi	$v0,$v0,0x8000
    beqz	$v0,.L0da6a9b4
    # Line 60
    lui	$at,0x4
    # Line 58
    lh	$v1,1578($a0)
    sw	$v1,0($a1)
    # Line 62
    jr	$ra
    nop
.L0da6a9b0:
    # Line 60
    lui	$at,0x4
.L0da6a9b4:
    ori	$at,$at,0x2040
    # Line 62
    jr	$ra
    # Line 60
    sw	$zero,0($at)
.end __glExpPassStencilMask

# Function: __glExpPassStencilMode
# Declared: Line 64 (Source lines: 65-182)
# Address: 0x0da6a9c0 - 0x0da6abd0 (Size: 528 bytes, Frame: 0)
.globl __glExpPassStencilMode
.ent __glExpPassStencilMode
__glExpPassStencilMode:
    # Line 65
    lw	$a3,1568($a0)
    # Line 95
    move	$a4,$zero
    # Line 65
    addiu	$a3,$a3,-512
    lui	$v0,0x19
    addiu	$v0,$v0,-12632
    # addu	at,t9,v0
    # lw $t9, -32664($gp) # &sub_0dbf0000
    sltiu	$v0,$a3,8
    sll	$a3,$a3,0x2
    lui	$t9,%hi(jtbl_0dbeb208)
    beqz	$v0,.L0da6a9fc
    addu	$a3,$a3,$t9
    lw	$v0,%lo(jtbl_0dbeb208)($a3)
    jr	$v0
    nop
.L0da6a9fc:
    # Line 99
    lw	$a3,1580($a0)
    li	$a1,7681
    li	$a7,7680
    beq	$a7,$a3,.L0da6aaf8
    li	$v1,5386
    beq	$a3,$v1,.L0da6ab18
    nop
    beqz	$a3,.L0da6ab30
    nop
    beq	$a3,$a1,.L0da6ab48
    li	$a2,7682
    beq	$a3,$a2,.L0da6ab60
    li	$v0,7683
    beq	$a3,$v0,.L0da6ab78
    # Line 119
    move	$a6,$zero
.L0da6aa38:
    # Line 123
    lw	$a3,1584($a0)
    li	$a1,7681
    li	$v0,7683
    beq	$a7,$a3,.L0da6ab00
    li	$v1,5386
    beq	$a3,$v1,.L0da6ab20
    nop
    beqz	$a3,.L0da6ab38
    nop
    beq	$a3,$a1,.L0da6ab50
    li	$a2,7682
    beq	$a3,$a2,.L0da6ab68
    nop
    beq	$a3,$v0,.L0da6ab80
    # Line 143
    move	$a5,$zero
.L0da6aa74:
    # Line 147
    lw	$a3,1588($a0)
    li	$a1,7681
    li	$v0,7683
    beq	$a7,$a3,.L0da6ab08
    li	$v1,5386
    beq	$a3,$v1,.L0da6ab28
    nop
    beqz	$a3,.L0da6ab40
    nop
    beq	$a3,$a1,.L0da6ab58
    li	$a2,7682
    beq	$a3,$a2,.L0da6ab70
    nop
    beq	$a3,$v0,.L0da6ab88
    # Line 167
    move	$a3,$zero
.L0da6aab0:
    # Line 169
    lw	$v0,1696($a0)
    # Line 172
    li	$v1,1
    # Line 169
    lui	$a7,0x4
    andi	$v0,$v0,0x8000
    beqz	$v0,.L0da6ab10
    ori	$a7,$a7,0x203c
    # Line 172
    sw	$v1,0($a7)
.L0da6aacc:
    # Line 176
    lui	$a1,0x4
    lh	$v0,1574($a0)
    ori	$a1,$a1,0x277c
    sw	$v0,0($a1)
    # Line 177
    sw	$a4,0($a1)
    # Line 178
    lh	$a2,1576($a0)
    sw	$a2,0($a1)
    # Line 179
    sw	$a6,0($a1)
    # Line 180
    sw	$a5,0($a1)
    # Line 182
    jr	$ra
    # Line 181
    sw	$a3,0($a1)
.L0da6aaf8:
    # Line 102
    b	.L0da6aa38
    # Line 101
    move	$a6,$zero
.L0da6ab00:
    # Line 126
    b	.L0da6aa74
    # Line 125
    move	$a5,$zero
.L0da6ab08:
    # Line 150
    b	.L0da6aab0
    # Line 149
    move	$a3,$zero
.L0da6ab10:
    b	.L0da6aacc
    # Line 174
    sw	$zero,0($a7)
.L0da6ab18:
    # Line 105
    b	.L0da6aa38
    # Line 104
    li	$a6,1
.L0da6ab20:
    # Line 129
    b	.L0da6aa74
    # Line 128
    li	$a5,1
.L0da6ab28:
    # Line 153
    b	.L0da6aab0
    # Line 152
    li	$a3,1
.L0da6ab30:
    # Line 108
    b	.L0da6aa38
    # Line 107
    li	$a6,2
.L0da6ab38:
    # Line 132
    b	.L0da6aa74
    # Line 131
    li	$a5,2
.L0da6ab40:
    # Line 156
    b	.L0da6aab0
    # Line 155
    li	$a3,2
.L0da6ab48:
    # Line 111
    b	.L0da6aa38
    # Line 110
    li	$a6,3
.L0da6ab50:
    # Line 135
    b	.L0da6aa74
    # Line 134
    li	$a5,3
.L0da6ab58:
    # Line 159
    b	.L0da6aab0
    # Line 158
    li	$a3,3
.L0da6ab60:
    # Line 114
    b	.L0da6aa38
    # Line 113
    li	$a6,4
.L0da6ab68:
    # Line 138
    b	.L0da6aa74
    # Line 137
    li	$a5,4
.L0da6ab70:
    # Line 162
    b	.L0da6aab0
    # Line 161
    li	$a3,4
.L0da6ab78:
    # Line 117
    b	.L0da6aa38
    # Line 116
    li	$a6,5
.L0da6ab80:
    # Line 141
    b	.L0da6aa74
    # Line 140
    li	$a5,5
.L0da6ab88:
    # Line 165
    b	.L0da6aab0
    # Line 164
    li	$a3,5
.L0da6ab90:
    # Line 72
    b	.L0da6a9fc
    # Line 71
    move	$a4,$zero
.L0da6ab98:
    # Line 75
    b	.L0da6a9fc
    # Line 74
    li	$a4,1
.L0da6aba0:
    # Line 78
    b	.L0da6a9fc
    # Line 77
    li	$a4,2
.L0da6aba8:
    # Line 81
    b	.L0da6a9fc
    # Line 80
    li	$a4,3
.L0da6abb0:
    # Line 84
    b	.L0da6a9fc
    # Line 83
    li	$a4,4
.L0da6abb8:
    # Line 87
    b	.L0da6a9fc
    # Line 86
    li	$a4,5
.L0da6abc0:
    # Line 90
    b	.L0da6a9fc
    # Line 89
    li	$a4,6
.L0da6abc8:
    # Line 93
    b	.L0da6a9fc
    # Line 92
    li	$a4,7
.end __glExpPassStencilMode

# Function: Fetch
# Declared: Line 186 (Source lines: 187-225)
# Address: 0x0da6abd0 - 0x0da6ad00 (Size: 304 bytes, Frame: 192)
.ent Fetch
Fetch:
    # Line 212
    lui	$a4,0x6
    ori	$a4,$a4,0xc040
    # Line 208
    li	$v0,1
    # Line 207
    lui	$at,0x4
    ori	$at,$at,0x277c
    # Line 203
    lui	$a3,0x4
    ori	$a3,$a3,0x22a0
    # Line 202
    lui	$a6,0x4
    ori	$a6,$a6,0x229c
    # Line 198
    li	$t0,2
    # Line 187
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    # Line 188
    lw	$a5,0($a0)
    # Line 187
    lui	$a0,0x19
    # Line 198
    lui	$a7,0x4
    ori	$a7,$a7,0x2428
    # Line 187
    addiu	$a0,$a0,-13160
    # addu	gp,t9,a0
    # Line 194
    lw	$a0,3372($a5)
    # Line 195
    lw	$v1,3376($a5)
    # Line 198
    sw	$t0,0($a7)
    # Line 199
    sw	$zero,0($a7)
    # Line 202
    sw	$zero,0($a6)
    # Line 203
    sw	$zero,0($a3)
    # Line 194
    subu	$a0,$a1,$a0
    # Line 206
    lui	$a1,0x4
    ori	$a1,$a1,0x22b4
    # Line 195
    subu	$v1,$a2,$v1
    # Line 205
    lui	$a2,0x4
    ori	$a2,$a2,0x22f0
    sw	$zero,0($a2)
    # Line 206
    sw	$a0,0($a1)
    # Line 207
    sw	$v1,0($at)
    # Line 208
    sw	$v0,0($at)
    # Line 209
    sw	$v0,0($at)
    # Line 210
    sw	$v0,0($at)
    # Line 211
    sw	$zero,0($at)
    b	.L0da6ac80
    # Line 212
    sw	$zero,0($at)
.L0da6ac6c:
    # Line 214
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6acdc
    nop
.L0da6ac80:
    lw	$v0,0($a4)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da6ac6c
    # Line 223
    move	$a0,$a5
    sd	$ra,24($sp)
    # Line 217
    lui	$v1,0x4
    # Line 215
    lui	$a1,0x1
    ori	$a1,$a1,0x2088
    lw	$a1,0($a1)
    # Line 217
    ori	$v1,$v1,0x22f4
    # Line 223
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    sd	$a1,8($sp)
    # Line 216
    lui	$a1,0x6
    ori	$a1,$a1,0xd000
    sw	$zero,0($a1)
    # Line 223
    jal	__glExpSetReadSource
    # Line 217
    sw	$zero,0($v1)
    # ld	gp,16(sp)
    # Line 225
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    andi	$v0,$v0,0xf
.L0da6acdc:
    # Line 214
    lw	$a1,0($sp)
    addiu	$a1,$a1,1
    sw	$a1,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da6acdc
    nop
    b	.L0da6ac80
    nop
.end Fetch

# Function: Store
# Declared: Line 228 (Source lines: 229-252)
# Address: 0x0da6ad00 - 0x0da6adb4 (Size: 180 bytes, Frame: 48)
.ent Store
Store:
    # Line 229
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-13464
    # addu	gp,t9,v0
    # Line 251
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    # Line 244
    lui	$v0,0x5
    ori	$v0,$v0,0x277c
    # Line 245
    mtc1	$zero,$f0
    # Line 237
    li	$a4,3
    # Line 236
    li	$a5,15
    # Line 230
    lw	$v1,0($a0)
    # Line 233
    li	$a6,1
    # Line 234
    lui	$at,0x4
    ori	$at,$at,0x277c
    # Line 233
    lui	$a7,0x4
    ori	$a7,$a7,0x203c
    sw	$a6,0($a7)
    # Line 234
    sw	$a3,0($at)
    # Line 235
    sw	$zero,0($at)
    # Line 236
    sw	$a5,0($at)
    # Line 237
    sw	$a4,0($at)
    # Line 238
    sw	$a4,0($at)
    # Line 239
    sw	$a4,0($at)
    # Line 241
    lui	$a4,0x4
    lw	$a3,0($a0)
    ori	$a4,$a4,0x2040
    # Line 251
    move	$a0,$v1
    # Line 241
    lh	$a3,1578($a3)
    # Line 243
    lui	$v1,0x5
    ori	$v1,$v1,0x20ac
    # Line 241
    sw	$a3,0($a4)
    # Line 243
    sw	$a1,0($v1)
    # Line 244
    sw	$a2,0($v0)
    # Line 245
    swc1	$f0,0($at)
    # Line 246
    swc1	$f0,0($at)
    # Line 247
    swc1	$f0,0($at)
    # Line 248
    swc1	$f0,0($at)
    # Line 251
    bal __glExpEnableStencilTest
    # Line 249
    swc1	$f0,0($at)
    # Line 252
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end Store

# Function: TestFunc
# Declared: Line 255 (Source lines: 260-260)
# Address: 0x0da6adb4 - 0x0da6adbc (Size: 8 bytes, Frame: 0)
.ent TestFunc
TestFunc:
    # Line 260
    jr	$ra
    li	$v0,1
.end TestFunc

# Function: Clear
# Declared: Line 263 (Source lines: 267-269)
# Address: 0x0da6adbc - 0x0da6ade8 (Size: 44 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 267
    lw	$v0,0($a0)
    lh	$v0,1572($v0)
    lui	$v1,0x4
    ori	$v1,$v1,0x2284
    sw	$v0,0($v1)
    # Line 268
    lw	$at,0($a0)
    lui	$v0,0x4
    lh	$at,1578($at)
    ori	$v0,$v0,0x277c
    # Line 269
    jr	$ra
    # Line 268
    sw	$at,0($v0)
.end Clear

# Function: Resize
# Declared: Line 274 (Source lines: 276-276)
# Address: 0x0da6ade8 - 0x0da6adf0 (Size: 8 bytes, Frame: 0)
.ent Resize
Resize:
    # Line 276
    jr	$ra
    nop
.end Resize

# Function: Move
# Declared: Line 279 (Source lines: 281-281)
# Address: 0x0da6adf0 - 0x0da6adf8 (Size: 8 bytes, Frame: 0)
.ent Move
Move:
    # Line 281
    jr	$ra
    nop
.end Move

# Function: Pick
# Declared: Line 284 (Source lines: 286-286)
# Address: 0x0da6adf8 - 0x0da6ae00 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 286
    jr	$ra
    nop
.end Pick

# Function: __glExpInitStencil
# Declared: Line 288 (Source lines: 289-308)
# Address: 0x0da6ae00 - 0x0da6aeb4 (Size: 180 bytes, Frame: 48)
.globl __glExpInitStencil
.ent __glExpInitStencil
__glExpInitStencil:
    # Line 289
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-13720
    # addu	gp,t9,at
    # Line 290
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 289
    move	$s8,$a0
    # Line 301
    la	$at,sub_0da70000
    addiu	$at,$at,-21248
    # Line 292
    sw	$zero,24($s8)
    # Line 293
    ld	$v0,24($sp)
    # Line 292
    la	$a2,__glNop
    # Line 300
    la	$ra,sub_0da70000
    # Line 293
    lw	$v0,3132($v0)
    # Line 307
    sw	$a2,112($s8)
    # Line 306
    sw	$a2,108($s8)
    # Line 305
    sw	$a2,104($s8)
    # Line 302
    la	$v1,sub_0da70000
    # Line 304
    la	$a0,sub_0da70000
    # Line 298
    la	$a2,sub_0da70000
    # Line 302
    addiu	$v1,$v1,-21552
    # Line 304
    addiu	$a0,$a0,-21068
    sw	$a0,100($s8)
    # Line 296
    la	$a0,sub_0da70000
    # Line 302
    sw	$v1,96($s8)
    # Line 295
    la	$v1,sub_0da70000
    # ld	gp,16(sp)
    # Line 301
    sw	$at,92($s8)
    # Line 293
    sw	$v0,12($s8)
    # Line 300
    addiu	$ra,$ra,-21060
    sw	$ra,116($s8)
    # Line 308
    ld	$ra,0($sp)
    # Line 298
    addiu	$a2,$a2,-21000
    sw	$a2,88($s8)
    # Line 295
    addiu	$v1,$v1,-21016
    # Line 296
    addiu	$a0,$a0,-21008
    sw	$a0,60($s8)
    # Line 295
    sw	$v1,56($s8)
    # Line 308
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpInitStencil

.late_rodata
jtbl_0dbeb208:
    .word .L0da6ab90
    .word .L0da6ab98
    .word .L0da6aba0
    .word .L0da6aba8
    .word .L0da6abb0
    .word .L0da6abb8
    .word .L0da6abc0
    .word .L0da6abc8

