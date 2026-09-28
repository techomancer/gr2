# Source: ../soft/so_math.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_math.c
# Total Functions: 5

.text

# Function: __glCopyMatrix
# Declared: Line 30 (Source lines: 32-52)
# Address: 0x0dac5570 - 0x0dac55fc (Size: 140 bytes, Frame: 0)
.globl __glCopyMatrix
.ent __glCopyMatrix
__glCopyMatrix:
    # Line 32
    lw	$at,64($a1)
    sw	$at,64($a0)
    # Line 33
    lwc1	$f0,0($a1)
    swc1	$f0,0($a0)
    # Line 34
    lwc1	$f4,4($a1)
    swc1	$f4,4($a0)
    # Line 35
    lwc1	$f3,8($a1)
    swc1	$f3,8($a0)
    # Line 36
    lwc1	$f2,12($a1)
    swc1	$f2,12($a0)
    # Line 38
    lwc1	$f1,16($a1)
    swc1	$f1,16($a0)
    # Line 39
    lwc1	$f0,20($a1)
    swc1	$f0,20($a0)
    # Line 40
    lwc1	$f4,24($a1)
    swc1	$f4,24($a0)
    # Line 41
    lwc1	$f3,28($a1)
    swc1	$f3,28($a0)
    # Line 43
    lwc1	$f2,32($a1)
    swc1	$f2,32($a0)
    # Line 44
    lwc1	$f1,36($a1)
    swc1	$f1,36($a0)
    # Line 45
    lwc1	$f0,40($a1)
    swc1	$f0,40($a0)
    # Line 46
    lwc1	$f4,44($a1)
    swc1	$f4,44($a0)
    # Line 48
    lwc1	$f3,48($a1)
    swc1	$f3,48($a0)
    # Line 49
    lwc1	$f2,52($a1)
    swc1	$f2,52($a0)
    # Line 50
    lwc1	$f1,56($a1)
    swc1	$f1,56($a0)
    # Line 51
    lwc1	$f0,60($a1)
    # Line 52
    jr	$ra
    # Line 51
    swc1	$f0,60($a0)
.end __glCopyMatrix

# Function: __glMakeIdentity
# Declared: Line 57 (Source lines: 58-70)
# Address: 0x0dac55fc - 0x0dac565c (Size: 96 bytes, Frame: 0)
.globl __glMakeIdentity
.ent __glMakeIdentity
__glMakeIdentity:
    # Line 69
    li	$v0,4
    # Line 58
    lui	$v1,0x13
    addiu	$v1,$v1,8812
    # addu	at,t9,v1
    # Line 61
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    # Line 69
    sw	$v0,64($a0)
    # Line 68
    swc1	$f0,60($a0)
    swc1	$f1,56($a0)
    # Line 67
    swc1	$f1,52($a0)
    swc1	$f1,48($a0)
    # Line 66
    swc1	$f1,44($a0)
    swc1	$f0,40($a0)
    # Line 65
    swc1	$f1,36($a0)
    swc1	$f1,32($a0)
    # Line 64
    swc1	$f1,28($a0)
    swc1	$f1,24($a0)
    # Line 63
    swc1	$f0,20($a0)
    swc1	$f1,16($a0)
    # Line 62
    swc1	$f1,12($a0)
    swc1	$f1,8($a0)
    # Line 61
    swc1	$f1,4($a0)
    # Line 70
    jr	$ra
    # Line 61
    swc1	$f0,0($a0)
.end __glMakeIdentity

# Function: __glMultMatrix
# Declared: Line 75 (Source lines: 83-102)
# Address: 0x0dac565c - 0x0dac5774 (Size: 280 bytes, Frame: 0)
.globl __glMultMatrix
.ent __glMultMatrix
__glMultMatrix:
    # Line 90
    addiu	$a4,$a1,64
    lwc1	$f18,60($a2)
    lwc1	$f5,56($a2)
    # Line 89
    lwc1	$f16,52($a2)
    lwc1	$f15,48($a2)
    # Line 88
    lwc1	$f14,44($a2)
    lwc1	$f13,40($a2)
    # Line 87
    lwc1	$f11,36($a2)
    lwc1	$f10,32($a2)
    # Line 86
    lwc1	$f19,28($a2)
    lwc1	$f17,24($a2)
    # Line 85
    lwc1	$f8,20($a2)
    lwc1	$f12,16($a2)
    # Line 84
    lwc1	$f4,12($a2)
    lwc1	$f9,8($a2)
    # Line 83
    lwc1	$f6,4($a2)
    lwc1	$f7,0($a2)
.L0dac56a0:
    # Line 93
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f7
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f12
    lwc1	$f1,8($a1)
    mul.s	$f1,$f1,$f10
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f15
    add.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 95
    lwc1	$f2,0($a1)
    mul.s	$f2,$f2,$f6
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f11
    lwc1	$f3,12($a1)
    mul.s	$f3,$f3,$f16
    add.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 97
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f9
    lwc1	$f0,4($a1)
    mul.s	$f0,$f0,$f17
    lwc1	$f3,8($a1)
    mul.s	$f3,$f3,$f13
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f5
    add.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,8($a0)
    # Line 99
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f19
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f14
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f18
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 92
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    bne	$a1,$a4,.L0dac56a0
    # Line 99
    swc1	$f0,-4($a0)
    # Line 102
    jr	$ra
    nop
.end __glMultMatrix

# Function: __glInvertTransposeMatrix
# Declared: Line 166 (Source lines: 167-354)
# Address: 0x0dac5774 - 0x0dac5c94 (Size: 1312 bytes, Frame: 176)
.globl __glInvertTransposeMatrix
.ent __glInvertTransposeMatrix
__glInvertTransposeMatrix:
    # Line 167
    addiu	$sp,$sp,-176
    lui	$v1,0x13
    # Line 174
    lw	$v0,64($a1)
    # Line 167
    addiu	$v1,$v1,8436
    # addu	at,t9,v1
    # Line 174
    sw	$v0,64($a0)
    mtc1	$zero,$f19
    lwc1	$f6,4($a1)
    lwc1	$f5,24($a1)
    lwc1	$f4,36($a1)
    lwc1	$f11,0($a1)
    lwc1	$f12,8($a1)
    lwc1	$f8,40($a1)
    lwc1	$f7,16($a1)
    lwc1	$f9,20($a1)
    lwc1	$f10,32($a1)
    # Line 184
    mov.s	$f15,$f7
    # Line 185
    mov.s	$f21,$f9
    # Line 187
    mov.s	$f14,$f10
    # Line 189
    mov.s	$f17,$f8
    # Line 174
    beqz	$v0,.L0dac593c
    # Line 183
    mov.s	$f16,$f12
    # Line 189
    mul.s	$f29,$f5,$f4
    mul.s	$f0,$f12,$f9
    mul.s	$f2,$f6,$f8
    mul.s	$f1,$f12,$f4
    mul.s	$f25,$f6,$f5
    mul.s	$f23,$f9,$f8
    sub.s	$f1,$f1,$f2
    sub.s	$f25,$f25,$f0
    sdc1	$f1,0($sp)
    mul.s	$f1,$f1,$f7
    sub.s	$f23,$f23,$f29
    mul.s	$f0,$f25,$f10
    mul.s	$f29,$f23,$f11
    add.s	$f0,$f0,$f1
    add.s	$f29,$f29,$f0
    # Line 188
    mov.s	$f31,$f4
    # Line 186
    mov.s	$f18,$f5
    # Line 181
    mov.s	$f13,$f11
    # Line 189
    c.eq.s	$f29,$f19
    # Line 182
    mov.s	$f27,$f6
    # Line 211
    lwc1	$f6,_lit_3f800000
    # Line 189
    bc1f	.L0dac5830
    # Line 214
    ldc1	$f2,0($sp)
    # Line 199
    jr	$ra
    addiu	$sp,$sp,176
.L0dac5830:
    # Line 211
    div.s	$f11,$f6,$f29
    # Line 218
    mul.s	$f3,$f13,$f18
    mul.s	$f12,$f16,$f15
    # Line 219
    mul.s	$f0,$f27,$f15
    # Line 213
    mul.s	$f5,$f21,$f14
    # Line 212
    mul.s	$f8,$f15,$f17
    # Line 215
    mul.s	$f10,$f16,$f14
    mul.s	$f9,$f13,$f17
    # Line 212
    mul.s	$f7,$f18,$f14
    # Line 213
    mul.s	$f4,$f15,$f31
    # Line 215
    sub.s	$f9,$f9,$f10
    # Line 219
    mul.s	$f10,$f13,$f21
    # Line 212
    sub.s	$f7,$f7,$f8
    # Line 216
    mul.s	$f8,$f13,$f31
    # Line 213
    sub.s	$f4,$f4,$f5
    # Line 216
    mul.s	$f5,$f27,$f14
    # Line 219
    sub.s	$f10,$f10,$f0
    # Line 218
    sub.s	$f12,$f12,$f3
    # Line 219
    mul.s	$f10,$f10,$f11
    # Line 216
    sub.s	$f5,$f5,$f8
    # Line 218
    mul.s	$f12,$f12,$f11
    # Line 216
    mul.s	$f5,$f5,$f11
    # Line 215
    mul.s	$f9,$f9,$f11
    # Line 213
    mul.s	$f4,$f4,$f11
    # Line 212
    mul.s	$f7,$f7,$f11
    # Line 211
    mul.s	$f1,$f23,$f11
    # Line 214
    mul.s	$f2,$f2,$f11
    # Line 217
    mul.s	$f3,$f25,$f11
    # Line 211
    swc1	$f1,0($a0)
    # Line 212
    swc1	$f7,4($a0)
    # Line 213
    swc1	$f4,8($a0)
    # Line 214
    swc1	$f2,16($a0)
    # Line 215
    swc1	$f9,20($a0)
    # Line 216
    swc1	$f5,24($a0)
    # Line 217
    swc1	$f3,32($a0)
    # Line 218
    swc1	$f12,36($a0)
    # Line 219
    swc1	$f10,40($a0)
    # Line 223
    lwc1	$f11,52($a1)
    neg.s	$f11,$f11
    # Line 239
    mul.s	$f12,$f12,$f11
    # Line 236
    mul.s	$f9,$f9,$f11
    # Line 222
    lwc1	$f0,48($a1)
    # Line 233
    mul.s	$f7,$f7,$f11
    # Line 222
    neg.s	$f0,$f0
    # Line 233
    mul.s	$f1,$f1,$f0
    # Line 236
    mul.s	$f2,$f2,$f0
    # Line 224
    lwc1	$f8,56($a1)
    # Line 239
    mul.s	$f3,$f3,$f0
    # Line 224
    neg.s	$f8,$f8
    # Line 233
    add.s	$f1,$f1,$f7
    # Line 236
    mul.s	$f5,$f5,$f8
    add.s	$f2,$f2,$f9
    # Line 239
    mul.s	$f10,$f10,$f8
    add.s	$f3,$f3,$f12
    # Line 233
    mul.s	$f4,$f4,$f8
    # Line 236
    add.s	$f2,$f2,$f5
    # Line 230
    swc1	$f6,60($a0)
    # Line 239
    add.s	$f3,$f3,$f10
    # Line 229
    swc1	$f19,56($a0)
    # Line 228
    swc1	$f19,52($a0)
    # Line 233
    add.s	$f1,$f1,$f4
    # Line 227
    swc1	$f19,48($a0)
    # Line 239
    swc1	$f3,44($a0)
    # Line 236
    swc1	$f2,28($a0)
    # Line 233
    swc1	$f1,12($a0)
.L0dac5934:
    # Line 354
    jr	$ra
    addiu	$sp,$sp,176
.L0dac593c:
    # Line 273
    mul.s	$f23,$f6,$f7
    sdc1	$f22,152($sp)
    mul.s	$f22,$f11,$f9
    # Line 276
    mul.s	$f27,$f9,$f10
    # Line 274
    mul.s	$f31,$f6,$f10
    mul.s	$f29,$f11,$f4
    # Line 276
    mul.s	$f25,$f7,$f4
    sdc1	$f20,144($sp)
    # Line 273
    sub.s	$f22,$f22,$f23
    # Line 296
    lwc1	$f20,60($a1)
    # Line 274
    sub.s	$f29,$f29,$f31
    # Line 296
    mul.s	$f20,$f20,$f22
    # Line 276
    sub.s	$f25,$f25,$f27
    # Line 291
    mul.s	$f16,$f5,$f29
    mul.s	$f3,$f12,$f25
    mul.s	$f17,$f8,$f22
    # Line 286
    lwc1	$f27,44($a1)
    # Line 295
    lwc1	$f23,28($a1)
    mul.s	$f2,$f27,$f22
    # Line 291
    sub.s	$f3,$f3,$f16
    # Line 282
    lwc1	$f1,12($a1)
    # Line 295
    mul.s	$f0,$f23,$f29
    # Line 291
    add.s	$f3,$f3,$f17
    # Line 295
    mul.s	$f16,$f1,$f25
    sdc1	$f3,72($sp)
    # Line 275
    lwc1	$f3,48($a1)
    # Line 277
    mul.s	$f18,$f9,$f3
    # Line 275
    mul.s	$f31,$f6,$f3
    # Line 295
    sub.s	$f0,$f0,$f2
    # Line 278
    mul.s	$f3,$f4,$f3
    # Line 275
    lwc1	$f2,52($a1)
    # Line 295
    sub.s	$f0,$f0,$f16
    # Line 275
    mul.s	$f21,$f11,$f2
    sdc1	$f0,104($sp)
    # Line 277
    mul.s	$f0,$f7,$f2
    # Line 278
    mul.s	$f2,$f10,$f2
    # Line 275
    sub.s	$f21,$f21,$f31
    # Line 287
    lwc1	$f31,56($a1)
    # Line 292
    mul.s	$f22,$f22,$f31
    # Line 296
    mul.s	$f23,$f23,$f21
    # Line 297
    mul.s	$f16,$f27,$f21
    # Line 293
    mul.s	$f17,$f8,$f21
    # Line 277
    sub.s	$f0,$f0,$f18
    # Line 292
    mul.s	$f21,$f5,$f21
    # Line 296
    mul.s	$f18,$f1,$f0
    # Line 278
    sub.s	$f2,$f2,$f3
    # Line 298
    mul.s	$f3,$f27,$f0
    # Line 292
    sub.s	$f21,$f21,$f22
    # Line 294
    mul.s	$f22,$f8,$f0
    # Line 292
    mul.s	$f0,$f12,$f0
    sub.s	$f21,$f21,$f0
    # Line 293
    mul.s	$f0,$f12,$f2
    sdc1	$f21,80($sp)
    # Line 297
    lwc1	$f21,60($a1)
    # Line 293
    sub.s	$f0,$f0,$f17
    # Line 297
    mul.s	$f17,$f21,$f29
    # Line 296
    sub.s	$f18,$f18,$f23
    # Line 293
    mul.s	$f29,$f29,$f31
    # Line 296
    add.s	$f18,$f18,$f20
    # Line 303
    mul.s	$f20,$f1,$f31
    # Line 294
    mul.s	$f23,$f5,$f2
    # Line 293
    add.s	$f0,$f0,$f29
    # Line 294
    mul.s	$f29,$f25,$f31
    # Line 297
    sub.s	$f16,$f16,$f17
    mul.s	$f17,$f1,$f2
    sdc1	$f0,112($sp)
    # Line 298
    lwc1	$f0,28($a1)
    mul.s	$f2,$f0,$f2
    sdc1	$f18,56($sp)
    # Line 297
    sub.s	$f16,$f16,$f17
    # Line 303
    mul.s	$f18,$f12,$f21
    # Line 294
    sub.s	$f22,$f22,$f29
    # Line 305
    mul.s	$f29,$f5,$f21
    # Line 298
    sub.s	$f2,$f2,$f3
    # Line 305
    mul.s	$f3,$f0,$f31
    # Line 303
    sub.s	$f18,$f18,$f20
    # Line 301
    mul.s	$f20,$f1,$f5
    # Line 294
    sub.s	$f22,$f22,$f23
    # Line 301
    mul.s	$f17,$f12,$f0
    # Line 305
    sub.s	$f29,$f29,$f3
    # Line 320
    mul.s	$f23,$f9,$f18
    sdc1	$f22,96($sp)
    mul.s	$f22,$f6,$f29
    # Line 304
    mul.s	$f0,$f0,$f8
    # Line 306
    mul.s	$f31,$f27,$f31
    # Line 320
    sub.s	$f22,$f22,$f23
    # Line 302
    mul.s	$f23,$f12,$f27
    # Line 304
    mul.s	$f27,$f5,$f27
    # Line 302
    mul.s	$f1,$f1,$f8
    # Line 301
    sub.s	$f17,$f17,$f20
    # Line 304
    sub.s	$f27,$f27,$f0
    # Line 302
    sub.s	$f23,$f23,$f1
    # Line 319
    mul.s	$f0,$f4,$f17
    mul.s	$f20,$f9,$f23
    sdc1	$f16,128($sp)
    # Line 320
    lwc1	$f16,52($a1)
    sdc1	$f17,136($sp)
    mul.s	$f17,$f16,$f17
    # Line 319
    sub.s	$f20,$f20,$f0
    mul.s	$f0,$f6,$f27
    sdc1	$f23,88($sp)
    # Line 321
    mul.s	$f23,$f16,$f23
    sdc1	$f27,32($sp)
    # Line 320
    add.s	$f17,$f17,$f22
    # Line 322
    mul.s	$f16,$f16,$f27
    lwc1	$f22,48($a1)
    # Line 319
    sub.s	$f20,$f20,$f0
    # Line 322
    mul.s	$f27,$f17,$f10
    sdc1	$f22,8($sp)
    mul.s	$f22,$f20,$f22
    add.s	$f22,$f22,$f27
    # Line 306
    mul.s	$f27,$f8,$f21
    sdc1	$f18,16($sp)
    # Line 321
    mul.s	$f18,$f4,$f18
    sdc1	$f29,40($sp)
    # Line 306
    sub.s	$f27,$f27,$f31
    # Line 322
    mul.s	$f29,$f4,$f29
    # Line 321
    sub.s	$f18,$f18,$f23
    # Line 322
    mul.s	$f23,$f9,$f27
    sdc1	$f27,48($sp)
    # Line 321
    mul.s	$f27,$f6,$f27
    # Line 322
    sub.s	$f23,$f23,$f29
    # Line 263
    mov.s	$f13,$f11
    # Line 265
    mov.s	$f15,$f7
    # Line 321
    sub.s	$f18,$f18,$f27
    # Line 298
    mul.s	$f21,$f21,$f25
    # Line 267
    mov.s	$f14,$f10
    # Line 322
    add.s	$f16,$f16,$f23
    mul.s	$f3,$f18,$f7
    # Line 328
    lwc1	$f4,_lit_3f800000
    # Line 346
    ldc1	$f10,16($sp)
    # Line 322
    mul.s	$f1,$f16,$f11
    sdc1	$f20,64($sp)
    # Line 298
    add.s	$f2,$f2,$f21
    ldc1	$f20,144($sp)
    # Line 348
    ldc1	$f8,32($sp)
    # Line 322
    add.s	$f3,$f3,$f22
    # Line 348
    ldc1	$f9,88($sp)
    sdc1	$f2,120($sp)
    # Line 344
    ldc1	$f0,48($sp)
    # Line 322
    add.s	$f1,$f1,$f3
    # Line 340
    ldc1	$f2,120($sp)
    # Line 350
    ldc1	$f7,80($sp)
    # Line 345
    ldc1	$f11,128($sp)
    # Line 322
    c.eq.s	$f1,$f19
    ldc1	$f22,152($sp)
    # Line 346
    ldc1	$f3,8($sp)
    # Line 322
    bc1f	.L0dac5b98
    sdc1	$f1,24($sp)
    # Line 327
    jr	$ra
    addiu	$sp,$sp,176
.L0dac5b98:
    # Line 328
    ldc1	$f5,24($sp)
    div.s	$f4,$f4,$f5
    # Line 338
    mul.s	$f1,$f3,$f8
    # Line 348
    mul.s	$f8,$f13,$f8
    # Line 344
    mul.s	$f5,$f3,$f9
    mul.s	$f12,$f13,$f0
    # Line 346
    ldc1	$f6,40($sp)
    # Line 338
    mul.s	$f19,$f14,$f6
    mul.s	$f0,$f15,$f0
    # Line 348
    mul.s	$f9,$f15,$f9
    # Line 338
    sub.s	$f19,$f19,$f1
    # Line 346
    mul.s	$f6,$f13,$f6
    # Line 338
    sub.s	$f19,$f19,$f0
    # Line 344
    mul.s	$f0,$f14,$f10
    # Line 348
    sub.s	$f8,$f8,$f9
    # Line 350
    mul.s	$f7,$f4,$f7
    # Line 347
    ldc1	$f9,112($sp)
    mul.s	$f9,$f4,$f9
    # Line 344
    sub.s	$f12,$f12,$f0
    # Line 343
    ldc1	$f0,64($sp)
    # Line 345
    mul.s	$f11,$f4,$f11
    # Line 342
    ldc1	$f1,96($sp)
    # Line 343
    mul.s	$f0,$f4,$f0
    # Line 342
    mul.s	$f1,$f4,$f1
    # Line 340
    mul.s	$f2,$f4,$f2
    # Line 346
    mul.s	$f10,$f15,$f10
    # Line 338
    mul.s	$f19,$f19,$f4
    # Line 344
    add.s	$f12,$f12,$f5
    # Line 348
    ldc1	$f5,136($sp)
    # Line 346
    mul.s	$f3,$f3,$f5
    # Line 348
    mul.s	$f5,$f14,$f5
    # Line 344
    mul.s	$f12,$f12,$f4
    # Line 338
    swc1	$f19,4($a0)
    # Line 349
    ldc1	$f19,56($sp)
    mul.s	$f19,$f4,$f19
    # Line 348
    add.s	$f8,$f8,$f5
    # Line 352
    ldc1	$f5,72($sp)
    mul.s	$f5,$f4,$f5
    # Line 348
    mul.s	$f8,$f8,$f4
    # Line 346
    sub.s	$f10,$f10,$f3
    # Line 340
    swc1	$f2,8($a0)
    # Line 339
    mul.s	$f3,$f18,$f4
    # Line 346
    sub.s	$f10,$f10,$f6
    # Line 351
    ldc1	$f6,104($sp)
    # Line 342
    swc1	$f1,12($a0)
    # Line 343
    swc1	$f0,48($a0)
    # Line 351
    mul.s	$f6,$f4,$f6
    # Line 345
    swc1	$f11,24($a0)
    # Line 339
    swc1	$f3,16($a0)
    # Line 341
    mul.s	$f3,$f17,$f4
    # Line 347
    swc1	$f9,28($a0)
    # Line 350
    swc1	$f7,44($a0)
    # Line 346
    mul.s	$f10,$f10,$f4
    # Line 344
    swc1	$f12,20($a0)
    # Line 349
    swc1	$f19,40($a0)
    # Line 337
    mul.s	$f4,$f16,$f4
    # Line 352
    swc1	$f5,60($a0)
    # Line 348
    swc1	$f8,52($a0)
    # Line 351
    swc1	$f6,56($a0)
    # Line 341
    swc1	$f3,32($a0)
    # Line 346
    swc1	$f10,36($a0)
    b	.L0dac5934
    # Line 337
    swc1	$f4,0($a0)
.end __glInvertTransposeMatrix

# Function: __glFloorLog2
# Declared: Line 361 (Source lines: 363-367)
# Address: 0x0dac5c94 - 0x0dac5cb8 (Size: 36 bytes, Frame: 0)
.globl __glFloorLog2
.ent __glFloorLog2
__glFloorLog2:
    # Line 363
    srl	$at,$a0,0x1
    beqz	$at,.L0dac5cb0
    li	$a3,1
    # Line 366
    addiu	$a3,$a3,1
.L0dac5ca4:
    srlv	$v0,$a0,$a3
    bnezl	$v0,.L0dac5ca4
    addiu	$a3,$a3,1
.L0dac5cb0:
    # Line 367
    jr	$ra
    addiu	$v0,$a3,-1
.end __glFloorLog2

.rdata
_lit_3f800000:
    .word 0x3f800000

