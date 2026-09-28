# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_lighting.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glClampAndScaleColor
# Declared: Line 104 (Source lines: 104-179)
# Address: 0x0db291a8 - 0x0db29270 (Size: 200 bytes, Frame: 0)
.globl __glClampAndScaleColor
.ent __glClampAndScaleColor
__glClampAndScaleColor:
    # Line 104
    lwc1	$f0,408($a0)
    # Line 105
    lwc1	$f1,30756($a0)
    # Line 106
    lwc1	$f2,412($a0)
    # Line 107
    lwc1	$f3,30760($a0)
    # Line 108
    mul.s	$f4,$f0,$f1
    # Line 109
    lwc1	$f5,416($a0)
    # Line 110
    lwc1	$f6,30764($a0)
    # Line 112
    mul.s	$f8,$f2,$f3
    # Line 111
    lwc1	$f7,420($a0)
    # Line 113
    lwc1	$f9,30796($a0)
    # Line 115
    mul.s	$f10,$f5,$f6
    # Line 114
    mfc1	$v0,$f0
    # Line 116
    mfc1	$v1,$f2
    # Line 117
    mfc1	$a1,$f5
    # Line 119
    lui	$a2,0x3f80
    # Line 118
    mul.s	$f11,$f7,$f9
    # Line 121
    bltz	$v0,.L0db29230
    # Line 122
    slt	$a3,$a2,$v0
    # Line 123
    bnez	$a3,.L0db29238
.L0db291f4:
    # Line 125
    mfc1	$t0,$f7
.L0db291f8:
    # Line 127
    bltz	$v1,.L0db29240
    # Line 128
    slt	$t1,$a2,$v1
    # Line 129
    bnez	$t1,.L0db29248
.L0db29204:
    # Line 131
    swc1	$f4,168($a0)
.L0db29208:
    # Line 133
    bltz	$a1,.L0db29250
    # Line 134
    slt	$t2,$a2,$a1
    # Line 135
    bnez	$t2,.L0db29258
.L0db29214:
    # Line 137
    swc1	$f8,172($a0)
.L0db29218:
    # Line 139
    bltz	$t0,.L0db29260
    # Line 140
    slt	$t3,$a2,$t0
    # Line 141
    bnez	$t3,.L0db29268
.L0db29224:
    # Line 143
    swc1	$f10,176($a0)
.L0db29228:
    # Line 145
    jr	$ra
    # Line 146
    swc1	$f11,180($a0)
.L0db29230:
    # Line 150
    b	.L0db291f4
    # Line 151
    mtc1	$zero,$f4
.L0db29238:
    # Line 154
    b	.L0db291f8
    # Line 155
    mov.s	$f4,$f1
.L0db29240:
    # Line 158
    b	.L0db29204
    # Line 159
    mtc1	$zero,$f8
.L0db29248:
    # Line 162
    b	.L0db29208
    # Line 163
    mov.s	$f8,$f3
.L0db29250:
    # Line 166
    b	.L0db29214
    # Line 167
    mtc1	$zero,$f10
.L0db29258:
    # Line 170
    b	.L0db29218
    # Line 171
    mov.s	$f10,$f6
.L0db29260:
    # Line 174
    b	.L0db29224
    # Line 175
    mtc1	$zero,$f11
.L0db29268:
    # Line 178
    b	.L0db29228
    # Line 179
    mov.s	$f11,$f9
.end __glClampAndScaleColor

# Function: __glFastCalcRGBColor
# Declared: Line 195 (Source lines: 195-397)
# Address: 0x0db29270 - 0x0db294c8 (Size: 600 bytes, Frame: 192)
.globl __glFastCalcRGBColor
.ent __glFastCalcRGBColor
__glFastCalcRGBColor:
    # Line 195
    addiu	$sp,$sp,-64
    # Line 198
    sw	$ra,60($sp)
    # Line 199
    sdc1	$f20,48($sp)
    # Line 200
    sdc1	$f22,40($sp)
    # Line 201
    sdc1	$f24,32($sp)
    # Line 202
    sdc1	$f26,24($sp)
    # Line 207
    lw	$a4,28188($a0)
    # Line 208
    lwc1	$f12,32($a2)
    # Line 209
    lwc1	$f13,36($a2)
    # Line 210
    bnez	$a1,.L0db292dc
    # Line 211
    lwc1	$f14,40($a2)
    # Line 212
    move	$a5,$zero
    # Line 213
    addiu	$a6,$a2,144
    # Line 214
    b	.L0db292f4
    # Line 215
    addiu	$a7,$a0,28108
.L0db292ac:
    # Line 218
    b	.L0db29480
    # Line 219
    move	$t8,$zero
.L0db292b4:
    # Line 222
    b	.L0db29484
    # Line 223
    move	$t8,$t9
.L0db292bc:
    # Line 226
    b	.L0db29490
    # Line 227
    move	$v0,$zero
.L0db292c4:
    # Line 230
    b	.L0db29494
    # Line 231
    move	$v0,$v1
.L0db292cc:
    # Line 234
    b	.L0db294a0
    # Line 235
    move	$a0,$zero
.L0db292d4:
    # Line 238
    b	.L0db294a4
    # Line 239
    move	$a0,$a1
.L0db292dc:
    # Line 242
    neg.s	$f12,$f12
    # Line 243
    neg.s	$f13,$f13
    # Line 244
    neg.s	$f14,$f14
    # Line 245
    addiu	$a6,$a2,160
    # Line 246
    addiu	$a7,$a0,28148
    # Line 247
    li	$a5,48
.L0db292f4:
    # Line 251
    lwc1	$f15,0($a7)
    # Line 252
    lwc1	$f16,4($a7)
    # Line 253
    beqz	$a4,.L0db2945c
    # Line 254
    lwc1	$f17,8($a7)
.L0db29304:
    # Line 257
    addiu	$a2,$a4,0
    # Line 258
    addu	$a2,$a2,$a5
    # Line 264
    lwc1	$f18,0($a2)
    # Line 265
    lwc1	$f19,176($a4)
    # Line 266
    lwc1	$f20,4($a2)
    # Line 267
    lwc1	$f22,180($a4)
    # Line 268
    lwc1	$f24,8($a2)
    # Line 269
    add.s	$f15,$f15,$f18
    # Line 270
    mul.s	$f19,$f19,$f12
    # Line 271
    lwc1	$f26,184($a4)
    # Line 272
    add.s	$f16,$f16,$f20
    # Line 273
    mul.s	$f22,$f22,$f13
    # Line 274
    lwc1	$f0,160($a4)
    # Line 275
    add.s	$f17,$f17,$f24
    # Line 276
    mul.s	$f26,$f26,$f14
    # Line 277
    lwc1	$f1,164($a4)
    # Line 278
    nop
    # Line 279
    mul.s	$f0,$f0,$f12
    # Line 280
    lwc1	$f2,168($a4)
    # Line 281
    add.s	$f3,$f19,$f22
    # Line 282
    mul.s	$f1,$f1,$f13
    # Line 283
    lw	$a4,200($a4)
    # Line 284
    nop
    # Line 285
    mul.s	$f2,$f2,$f14
    # Line 286
    mtc1	$zero,$f4
    # Line 287
    add.s	$f3,$f3,$f26
    # Line 288
    nop
    # Line 289
    add.s	$f5,$f0,$f1
    # Line 290
    lwc1	$f6,16($a2)
    # Line 291
    lwc1	$f7,24($a7)
    # Line 292
    c.le.s	$f3,$f4
    # Line 293
    add.s	$f5,$f5,$f2
    # Line 294
    lwc1	$f8,20($a2)
    # Line 295
    bc1t	.L0db29458
    # Line 296
    sub.s	$f5,$f5,$f7
    # Line 297
    mul.s	$f6,$f6,$f3
    # Line 298
    nop
    # Line 299
    lwc1	$f9,28($a7)
    # Line 300
    mul.s	$f8,$f8,$f3
    # Line 301
    c.lt.s	$f5,$f4
    # Line 302
    lwc1	$f10,24($a2)
    # Line 303
    nop
    # Line 304
    mul.s	$f11,$f5,$f9
    # Line 305
    nop
    # Line 306
    add.s	$f15,$f15,$f6
    # Line 307
    mul.s	$f10,$f10,$f3
    # Line 308
    lwc1	$f18,3280($a0)
    # Line 309
    add.s	$f16,$f16,$f8
    # Line 310
    nop
    # Line 311
    add.s	$f11,$f11,$f18
    # Line 312
    nop
    # Line 318
    trunc.w.s	$f11,$f11
    # Line 320
    nop
    # Line 321
    bc1t	.L0db29458
    # Line 322
    add.s	$f17,$f17,$f10
    # Line 323
    mfc1	$t0,$f11
    # Line 324
    lw	$t1,20($a7)
    # Line 325
    lwc1	$f19,32($a2)
    # Line 326
    slti	$t2,$t0,256
    # Line 327
    beqz	$t2,.L0db29440
    # Line 328
    sll	$t0,$t0,0x2
    # Line 329
    addu	$t1,$t1,$t0
    # Line 330
    lwc1	$f20,0($t1)
    # Line 331
    lwc1	$f22,36($a2)
    # Line 332
    mul.s	$f19,$f19,$f20
    # Line 333
    lwc1	$f24,40($a2)
    # Line 334
    mul.s	$f22,$f22,$f20
    # Line 335
    lw	$t9,30756($a0)
    # Line 336
    mul.s	$f24,$f24,$f20
    # Line 337
    lw	$v1,30760($a0)
    # Line 338
    add.s	$f15,$f15,$f19
    # Line 339
    lw	$a1,30764($a0)
    # Line 340
    add.s	$f16,$f16,$f22
    # Line 341
    mfc1	$t8,$f15
    # Line 342
    bnez	$a4,.L0db29304
    # Line 343
    add.s	$f17,$f17,$f24
    # Line 344
    mfc1	$v0,$f16
    # Line 345
    b	.L0db29474
    # Line 346
    mfc1	$a0,$f17
.L0db29440:
    # Line 350
    lwc1	$f26,36($a2)
    # Line 351
    add.s	$f15,$f15,$f19
    # Line 352
    lwc1	$f0,40($a2)
    # Line 353
    add.s	$f16,$f16,$f26
    # Line 354
    nop
    # Line 355
    add.s	$f17,$f17,$f0
.L0db29458:
    # Line 359
    bnez	$a4,.L0db29304
.L0db2945c:
    # Line 363
    lw	$t9,30756($a0)
    # Line 364
    lw	$v1,30760($a0)
    # Line 365
    lw	$a1,30764($a0)
    # Line 366
    mfc1	$t8,$f15
    # Line 367
    mfc1	$v0,$f16
    # Line 368
    mfc1	$a0,$f17
.L0db29474:
    # Line 371
    bltz	$t8,.L0db292ac
    # Line 372
    slt	$t3,$t9,$t8
    # Line 373
    bnez	$t3,.L0db292b4
.L0db29480:
    # Line 375
    lw	$a4,36($a7)
.L0db29484:
    # Line 377
    bltz	$v0,.L0db292bc
    # Line 378
    slt	$a5,$v1,$v0
    # Line 379
    bnez	$a5,.L0db292c4
.L0db29490:
    # Line 381
    sw	$t8,0($a6)
.L0db29494:
    # Line 383
    bltz	$a0,.L0db292cc
    # Line 384
    slt	$a7,$a1,$a0
    # Line 385
    bnez	$a7,.L0db292d4
.L0db294a0:
    # Line 387
    sw	$v0,4($a6)
.L0db294a4:
    # Line 389
    sw	$a0,8($a6)
    # Line 390
    sw	$a4,12($a6)
    # Line 391
    lw	$ra,60($sp)
    # Line 392
    ldc1	$f20,48($sp)
    # Line 393
    ldc1	$f22,40($sp)
    # Line 394
    ldc1	$f24,32($sp)
    # Line 395
    ldc1	$f26,24($sp)
    # Line 396
    jr	$ra
    # Line 397
    addiu	$sp,$sp,64
.end __glFastCalcRGBColor

