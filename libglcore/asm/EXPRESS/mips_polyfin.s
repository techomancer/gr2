# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_polyfin.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glEvenTStripVertex
# Declared: Line 90 (Source lines: 90-129)
# Address: 0x0db2693c - 0x0db269c4 (Size: 136 bytes, Frame: 0)
.globl __glEvenTStripVertex
.ent __glEvenTStripVertex
__glEvenTStripVertex:
    # Line 90
    lw	$a2,12700($a0)
    # Line 91
    lw	$a3,12704($a0)
    # Line 92
    li	$v0,1
    # Line 93
    sb	$zero,29852($a0)
    # Line 94
    sb	$v0,184($a1)
    # Line 96
    lw	$v1,12($a1)
    # Line 97
    lw	$t0,12($a2)
    # Line 98
    lw	$t1,12($a3)
    # Line 99
    sw	$a1,28080($a0)
    # Line 100
    or	$a4,$v1,$t0
    # Line 101
    lw	$t2,11976($a0)
    # Line 102
    or	$a4,$a4,$t1
    # Line 103
    bnez	$a4,.L0db26988
    # Line 104
    sw	$t2,11956($a0)
    # Line 105
    lw	$t9,12084($a0)
    # Line 106
    sw	$a3,12696($a0)
    # Line 107
    sw	$a2,12704($a0)
    # Line 108
    sw	$a1,12700($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 109
    nop
.L0db26988:
    # Line 112
    sw	$a3,12696($a0)
    # Line 114
    and	$t3,$v1,$t0
    # Line 115
    and	$t3,$t3,$t1
    # Line 116
    sw	$a1,12700($a0)
    # Line 117
    bnez	$t3,.L0db269bc
    # Line 118
    sw	$a2,12704($a0)
    # Line 119
    lw	$t9,12096($a0)
    # Line 120
    addiu	$sp,$sp,-48
    # Line 121
    sw	$ra,36($sp)
    # Line 122
    jalr	$t9
    # Line 123
    sw	$a4,16($sp)
    # Line 125
    lw	$ra,36($sp)
    # Line 126
    addiu	$sp,$sp,48
.L0db269bc:
    # Line 128
    jr	$ra
    # Line 129
    nop
.end __glEvenTStripVertex

# Function: __glOddTStripVertex
# Declared: Line 140 (Source lines: 140-177)
# Address: 0x0db269c4 - 0x0db26a4c (Size: 136 bytes, Frame: 0)
.globl __glOddTStripVertex
.ent __glOddTStripVertex
__glOddTStripVertex:
    # Line 140
    lw	$a3,12700($a0)
    # Line 141
    lw	$a2,12704($a0)
    # Line 142
    li	$a4,1
    # Line 143
    sb	$zero,29852($a0)
    # Line 144
    sb	$a4,184($a1)
    # Line 145
    lw	$a5,12($a1)
    # Line 146
    lw	$a6,12($a3)
    # Line 147
    lw	$a7,12($a2)
    # Line 148
    sw	$a1,28080($a0)
    # Line 149
    or	$a4,$a5,$a6
    # Line 150
    lw	$t8,11980($a0)
    # Line 151
    or	$a4,$a4,$a7
    # Line 152
    bnez	$a4,.L0db26a10
    # Line 153
    sw	$t8,11956($a0)
    # Line 154
    lw	$t9,12084($a0)
    # Line 155
    sw	$a2,12696($a0)
    # Line 156
    sw	$a3,12704($a0)
    # Line 157
    sw	$a1,12700($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 158
    nop
.L0db26a10:
    # Line 161
    sw	$a2,12696($a0)
    # Line 162
    and	$t9,$a5,$a6
    # Line 163
    and	$t9,$t9,$a7
    # Line 164
    sw	$a1,12700($a0)
    # Line 165
    bnez	$t9,.L0db26a44
    # Line 166
    sw	$a3,12704($a0)
    # Line 167
    lw	$t9,12096($a0)
    # Line 168
    addiu	$sp,$sp,-48
    # Line 169
    sw	$ra,36($sp)
    # Line 170
    jalr	$t9
    # Line 171
    sw	$a4,16($sp)
    # Line 173
    lw	$ra,36($sp)
    # Line 174
    addiu	$sp,$sp,48
.L0db26a44:
    # Line 176
    jr	$ra
    # Line 177
    nop
.end __glOddTStripVertex

# Function: __glEvenTStripVertexFast
# Declared: Line 189 (Source lines: 189-231)
# Address: 0x0db26a4c - 0x0db26ac0 (Size: 116 bytes, Frame: 0)
.globl __glEvenTStripVertexFast
.ent __glEvenTStripVertexFast
__glEvenTStripVertexFast:
    # Line 189
    lw	$a2,12700($a0)
    # Line 190
    lw	$a3,12704($a0)
    # Line 192
    lw	$v1,12($a2)
    # Line 193
    lw	$t0,12($a3)
    # Line 194
    lw	$t1,11976($a0)
    # Line 195
    or	$a4,$v0,$v1
    # Line 196
    lw	$t9,12084($a0)
    # Line 197
    or	$a4,$a4,$t0
    # Line 198
    bnez	$a4,.L0db26a84
    # Line 199
    sw	$t1,11956($a0)
    # Line 200
    sw	$a3,12696($a0)
    # Line 201
    sw	$a2,12704($a0)
    # Line 202
    sw	$a1,12700($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 203
    nop
.L0db26a84:
    # Line 206
    sw	$a3,12696($a0)
    # Line 208
    and	$t2,$v0,$v1
    # Line 209
    and	$t2,$t2,$t0
    # Line 210
    sw	$a1,12700($a0)
    # Line 211
    bnez	$t2,.L0db26ab8
    # Line 212
    sw	$a2,12704($a0)
    # Line 213
    lw	$t9,12096($a0)
    # Line 214
    addiu	$sp,$sp,-48
    # Line 215
    sw	$ra,36($sp)
    # Line 216
    jalr	$t9
    # Line 217
    sw	$a4,16($sp)
    # Line 219
    lw	$ra,36($sp)
    # Line 220
    addiu	$sp,$sp,48
.L0db26ab8:
    # Line 230
    jr	$ra
    # Line 231
    nop
.end __glEvenTStripVertexFast

# Function: __glOddTStripVertexFast
# Declared: Line 242 (Source lines: 242-274)
# Address: 0x0db26ac0 - 0x0db26b34 (Size: 116 bytes, Frame: 0)
.globl __glOddTStripVertexFast
.ent __glOddTStripVertexFast
__glOddTStripVertexFast:
    # Line 242
    lw	$a3,12700($a0)
    # Line 243
    lw	$a2,12704($a0)
    # Line 244
    lw	$t3,12($a3)
    # Line 245
    lw	$a5,12($a2)
    # Line 246
    lw	$a6,11980($a0)
    # Line 247
    or	$a4,$v0,$t3
    # Line 248
    lw	$t9,12084($a0)
    # Line 249
    or	$a4,$a4,$a5
    # Line 250
    bnez	$a4,.L0db26af8
    # Line 251
    sw	$a6,11956($a0)
    # Line 252
    sw	$a2,12696($a0)
    # Line 253
    sw	$a3,12704($a0)
    # Line 254
    sw	$a1,12700($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 255
    nop
.L0db26af8:
    # Line 258
    sw	$a2,12696($a0)
    # Line 259
    and	$a7,$v0,$t3
    # Line 260
    and	$a7,$a7,$a5
    # Line 261
    sw	$a1,12700($a0)
    # Line 262
    bnez	$a7,.L0db26b2c
    # Line 263
    sw	$a3,12704($a0)
    # Line 264
    lw	$t9,12096($a0)
    # Line 265
    addiu	$sp,$sp,-48
    # Line 266
    sw	$ra,36($sp)
    # Line 267
    jalr	$t9
    # Line 268
    sw	$a4,16($sp)
    # Line 270
    lw	$ra,36($sp)
    # Line 271
    addiu	$sp,$sp,48
.L0db26b2c:
    # Line 273
    jr	$ra
    # Line 274
    nop
.end __glOddTStripVertexFast

# Function: __glFourthQuadsVertex
# Declared: Line 300 (Source lines: 300-367)
# Address: 0x0db26b34 - 0x0db26c30 (Size: 252 bytes, Frame: 0)
.globl __glFourthQuadsVertex
.ent __glFourthQuadsVertex
__glFourthQuadsVertex:
    # Line 300
    addiu	$sp,$sp,-96
    # Line 301
    # sd	gp,24(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,3380
    daddu	$gp,$gp,$t9
    # Line 302
    addiu	$a2,$a0,12720
    # Line 303
    lbu	$t8,429($a0)
    # Line 304
    addiu	$a3,$a0,12912
    # Line 305
    addiu	$v0,$a0,13104
    # Line 306
    sb	$t8,184($a1)
    # Line 307
    sb	$zero,29852($a0)
    # Line 308
    sw	$a1,28080($a0)
    # Line 309
    sw	$a2,12696($a0)
    # Line 310
    la	$v1,__glFirstQuadsVertex
    # Line 311
    lw	$t0,12($a1)
    # Line 312
    lw	$t1,12($a2)
    # Line 313
    lw	$t2,12($a3)
    # Line 314
    lw	$t3,12($v0)
    # Line 315
    sw	$v1,11956($a0)
    # Line 316
    or	$a4,$t0,$t1
    # Line 317
    or	$a5,$t2,$t3
    # Line 318
    or	$a6,$a4,$a5
    # Line 319
    bnez	$a6,.L0db26be8
    # Line 320
    lbu	$a7,184($a3)
    # Line 321
    sb	$zero,184($a3)
    # Line 322
    lw	$t9,12080($a0)
    # Line 323
    sw	$a0,16($sp)
    # Line 324
    sw	$a1,40($sp)
    # Line 325
    sw	$a3,48($sp)
    # Line 326
    sw	$v0,56($sp)
    # Line 327
    sw	$ra,32($sp)
    # Line 328
    jalr	$t9
    # Line 329
    sb	$a7,64($sp)
    # Line 331
    lbu	$t8,64($sp)
    # Line 332
    lw	$a2,48($sp)
    # Line 333
    lw	$a0,16($sp)
    # Line 334
    lw	$a1,40($sp)
    # Line 335
    lw	$a3,56($sp)
    # Line 336
    lw	$t9,12080($a0)
    # Line 337
    sb	$t8,184($a2)
    # Line 338
    sb	$zero,184($a1)
    # Line 339
    lw	$ra,32($sp)
    # Line 340
    # ld	gp,24(sp)
    # Line 341
    addiu	$sp,$sp,96
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 342
    nop
.L0db26be8:
    # Line 346
    and	$t9,$t0,$t1
    # Line 347
    and	$v1,$t2,$t3
    # Line 348
    and	$t0,$t9,$v1
    # Line 349
    bnez	$t0,.L0db26c24
    # Line 350
    sw	$a2,72($sp)
    # Line 351
    sw	$a3,76($sp)
    # Line 352
    sw	$v0,80($sp)
    # Line 353
    sw	$a1,84($sp)
    # Line 354
    # lw $t9, -27776($gp) # &__glDoPolygonClip
    # Line 355
    sw	$ra,32($sp)
    # Line 356
    addiu	$a1,$sp,72
    # Line 357
    li	$a2,4
    # Line 358
    jal	__glDoPolygonClip
    # Line 359
    move	$a3,$a6
    # Line 362
    lw	$ra,32($sp)
.L0db26c24:
    # Line 365
    # ld	gp,24(sp)
    # Line 366
    jr	$ra
    # Line 367
    addiu	$sp,$sp,96
.end __glFourthQuadsVertex

