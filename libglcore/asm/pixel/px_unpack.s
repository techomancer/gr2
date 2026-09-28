# Source: ../pixel/px_unpack.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_unpack.c
# Total Functions: 89

.text

# Function: __glElementsPerGroup
# Declared: Line 29 (Source lines: 31-42)
# Address: 0x0da835a8 - 0x0da83608 (Size: 96 bytes, Frame: 0)
.globl __glElementsPerGroup
.ent __glElementsPerGroup
__glElementsPerGroup:
    # Line 31
    li	$at,6407
    beq	$a0,$at,.L0da835f4
    li	$v0,6410
    beq	$a0,$v0,.L0da83600
    li	$v1,6408
    beq	$a0,$v1,.L0da835e8
    li	$a1,0x8000
    beq	$a0,$a1,.L0da835e8
    li	$at,1
    beq	$a0,$at,.L0da835dc
    # Line 42
    li	$v0,1
    jr	$ra
    nop
.L0da835dc:
    # Line 40
    li	$v0,2
    jr	$ra
    nop
.L0da835e8:
    # Line 38
    li	$v0,4
    jr	$ra
    nop
.L0da835f4:
    # Line 33
    li	$v0,3
    jr	$ra
    nop
.L0da83600:
    # Line 35
    jr	$ra
    li	$v0,2
.end __glElementsPerGroup

# Function: __glBytesPerElement
# Declared: Line 49 (Source lines: 50-73)
# Address: 0x0da83608 - 0x0da83708 (Size: 256 bytes, Frame: 0)
.globl __glBytesPerElement
.ent __glBytesPerElement
__glBytesPerElement:
    # Line 50
    li	$a3,0x8032
    lui	$v1,0x17
    addiu	$v1,$v1,16992
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da83650
    nop
    # Line 51
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0da836cc
    li	$a3,0x8035
    sltu	$a2,$a0,$a3
    bnez	$a2,.L0da83698
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0da83690
    li	$v1,0x8036
    beq	$a0,$v1,.L0da83700
    # Line 57
    lwc1	$f0,_lit_3f800000
.L0da83648:
    # Line 73
    jr	$ra
    lwc1	$f0,_lit_40800000
.L0da83650:
    # Line 51
    sltiu	$a1,$a0,5122
    bnez	$a1,.L0da8367c
    sltiu	$a2,$a0,5123
    bnez	$a2,.L0da836c0
    sltiu	$v0,$a0,6656
    bnez	$v0,.L0da836b8
    sltiu	$v1,$a0,6657
    beqz	$v1,.L0da83648
    # Line 61
    lwc1	$f0,_lit_3e000000
    jr	$ra
    nop
.L0da8367c:
    # Line 51
    sltiu	$a1,$a0,5121
    bnez	$a1,.L0da836d8
    sltiu	$a2,$a0,5122
    beqz	$a2,.L0da83648
    nop
.L0da83690:
    # Line 68
    jr	$ra
    lwc1	$f0,_lit_3f800000
.L0da83698:
    # Line 51
    li	$a3,0x8034
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da836ec
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da83648
    # Line 55
    lwc1	$f0,_lit_3f000000
    jr	$ra
    nop
.L0da836b8:
    # Line 51
    li	$a1,5123
    bne	$a0,$a1,.L0da83648
.L0da836c0:
    # Line 64
    lwc1	$f0,_lit_40000000
    jr	$ra
    nop
.L0da836cc:
    # Line 53
    lwc1	$f0,_lit_3eaaaaab
    jr	$ra
    nop
.L0da836d8:
    # Line 51
    li	$a2,5120
    bne	$a0,$a2,.L0da83648
    nop
    b	.L0da83690
    nop
.L0da836ec:
    li	$v0,0x8033
    bne	$a0,$v0,.L0da83648
    nop
    # Line 59
    jr	$ra
    lwc1	$f0,_lit_3f000000
.L0da83700:
    # Line 57
    jr	$ra
    nop
.end __glBytesPerElement

# Function: __glSpecElementsPerGroup
# Declared: Line 83 (Source lines: 84-111)
# Address: 0x0da83708 - 0x0da83794 (Size: 140 bytes, Frame: 0)
.globl __glSpecElementsPerGroup
.ent __glSpecElementsPerGroup
__glSpecElementsPerGroup:
    # Line 84
    li	$at,0x8032
    beq	$a1,$at,.L0da83764
    li	$v0,0x8033
    beq	$a1,$v0,.L0da83764
    li	$v1,0x8034
    beq	$a1,$v1,.L0da83764
    li	$a2,0x8035
    beq	$a1,$a2,.L0da83764
    li	$at,0x8036
    beq	$a1,$at,.L0da83764
    # Line 100
    li	$v0,6407
    beq	$a0,$v0,.L0da83780
    li	$v1,6410
    beq	$a0,$v1,.L0da83788
    li	$a2,6408
    beq	$a0,$a2,.L0da83774
    li	$at,0x8000
    beq	$a0,$at,.L0da83774
    li	$v0,1
    beq	$a0,$v0,.L0da8376c
    nop
    # Line 111
    jr	$ra
    li	$v0,1
.L0da83764:
    # Line 95
    jr	$ra
    li	$v0,1
.L0da8376c:
    # Line 109
    jr	$ra
    li	$v0,2
.L0da83774:
    # Line 107
    li	$v0,4
    jr	$ra
    nop
.L0da83780:
    # Line 102
    jr	$ra
    li	$v0,3
.L0da83788:
    # Line 104
    li	$v0,2
    jr	$ra
    nop
.end __glSpecElementsPerGroup

# Function: __glSpecBytesPerElement
# Declared: Line 120 (Source lines: 121-141)
# Address: 0x0da83794 - 0x0da838a8 (Size: 276 bytes, Frame: 0)
.globl __glSpecBytesPerElement
.ent __glSpecBytesPerElement
__glSpecBytesPerElement:
    # Line 121
    sltiu	$at,$a0,5126
    bnez	$at,.L0da837d8
    # Line 122
    sltiu	$v0,$a0,5127
    bnez	$v0,.L0da837fc
    li	$a2,0x8034
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da8383c
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0da83820
    li	$a2,0x8036
    sltu	$at,$a0,$a2
    bnez	$at,.L0da83894
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0da83834
    nop
    b	.L0da837fc
    nop
.L0da837d8:
    sltiu	$v1,$a0,5123
    bnez	$v1,.L0da83804
    sltiu	$a1,$a0,5124
    bnez	$a1,.L0da83820
    sltiu	$at,$a0,5125
    bnez	$at,.L0da83864
    sltiu	$v0,$a0,5126
    beqz	$v0,.L0da83834
    nop
.L0da837fc:
    # Line 137
    jr	$ra
    li	$v0,4
.L0da83804:
    # Line 122
    sltiu	$v1,$a0,5121
    bnez	$v1,.L0da83828
    sltiu	$a1,$a0,5122
    bnez	$a1,.L0da8388c
    li	$at,5122
    bne	$a0,$at,.L0da83834
    nop
.L0da83820:
    # Line 127
    jr	$ra
    li	$v0,2
.L0da83828:
    # Line 122
    li	$v0,5120
    beq	$a0,$v0,.L0da8388c
    nop
.L0da83834:
    # Line 141
    jr	$ra
    move	$v0,$zero
.L0da8383c:
    # Line 122
    li	$a2,0x8032
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da83878
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0da8388c
    li	$at,0x8033
    bne	$a0,$at,.L0da83834
    nop
    b	.L0da83820
    nop
.L0da83864:
    li	$v0,5124
    bne	$a0,$v0,.L0da83834
    nop
    b	.L0da837fc
    nop
.L0da83878:
    li	$v1,6656
    bne	$a0,$v1,.L0da83834
    nop
    # Line 139
    jr	$ra
    li	$v0,1
.L0da8388c:
    # Line 131
    jr	$ra
    li	$v0,1
.L0da83894:
    # Line 122
    li	$a1,0x8035
    bne	$a0,$a1,.L0da83834
    nop
    b	.L0da837fc
    nop
.end __glSpecBytesPerElement

# Function: __glInitUnpacker
# Declared: Line 146 (Source lines: 147-213)
# Address: 0x0da838a8 - 0x0da83a84 (Size: 476 bytes, Frame: 240)
.globl __glInitUnpacker
.ent __glInitUnpacker
__glInitUnpacker:
    # Line 168
    lw	$a0,0($a1)
    # Line 147
    addiu	$sp,$sp,-112
    sd	$s2,72($sp)
    sd	$s5,80($sp)
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s6,8($sp)
    # Line 166
    lw	$s6,40($a1)
    sd	$s4,0($sp)
    # Line 165
    lw	$s4,68($a1)
    sd	$s7,32($sp)
    # Line 164
    lw	$s7,52($a1)
    sd	$s3,40($sp)
    # Line 163
    lw	$s3,48($a1)
    sd	$s8,16($sp)
    # Line 162
    lw	$s8,8($a1)
    sd	$s1,24($sp)
    # sd	gp,64(sp)
    # Line 147
    lui	$at,0x17
    addiu	$at,$at,16320
    # addu	gp,t9,at
    # Line 168
    # lw $t9, -30256($gp) # &__glSpecElementsPerGroup
    # Line 161
    lw	$s1,4($a1)
    sd	$ra,48($sp)
    # Line 168
    bal __glSpecElementsPerGroup
    move	$a1,$s1
    # Line 171
    # lw $t9, -30252($gp) # &__glSpecBytesPerElement
    # Line 168
    move	$s2,$v0
    # Line 171
    move	$a0,$s1
    bal __glSpecBytesPerElement
    # Line 169
    lw	$s5,60($s0)
    # Line 171
    li	$a5,1
    beq	$v0,$a5,.L0da83a28
    ld	$ra,48($sp)
.L0da83930:
    # Line 175
    mult	$v0,$s2
    mflo	$a1
    nop
    nop
    mult	$a1,$s5
    li	$a6,6656
    mflo	$a0
    beq	$a6,$s1,.L0da83a30
    # Line 177
    addiu	$a2,$s5,7
.L0da83954:
    div	$zero,$a0,$s4
    teq	$s4,$zero,0x7
    # Line 181
    andi	$a2,$s3,0x7
    # Line 177
    mfhi	$a4
    beqz	$a4,.L0da83974
    ld	$s5,80($sp)
    # Line 181
    subu	$v1,$s4,$a4
    addu	$a0,$v1,$a0
.L0da83974:
    beqz	$a2,.L0da83980
    ld	$s4,0($sp)
    # Line 183
    beq	$a6,$s1,.L0da83998
.L0da83980:
    move	$a3,$s6
    beqz	$a3,.L0da839a4
    ld	$s6,8($sp)
    slti	$at,$v0,2
    bnez	$at,.L0da839a4
    ld	$s6,8($sp)
.L0da83998:
    # Line 185
    sb	$zero,72($s0)
    b	.L0da839a8
    ld	$s6,8($sp)
.L0da839a4:
    # Line 187
    sb	$a5,72($s0)
.L0da839a8:
    mult	$s7,$a0
    # ld	gp,64(sp)
    ld	$s7,32($sp)
    # Line 191
    sra	$a3,$s3,0x1f
    xor	$a2,$s3,$a3
    # Line 187
    mflo	$a4
    beq	$a6,$s1,.L0da83a44
    addu	$a4,$a4,$s8
    # Line 195
    mult	$a1,$s3
    ld	$s8,16($sp)
    mflo	$s1
    addu	$s1,$s1,$a4
    sw	$s1,12($s0)
    ld	$s1,24($sp)
.L0da839e0:
    # Line 212
    sb	$zero,430($s0)
    # Line 211
    sb	$zero,429($s0)
    # Line 210
    sb	$a5,428($s0)
    # Line 209
    sb	$zero,427($s0)
    # Line 208
    sb	$zero,426($s0)
    # Line 207
    sb	$a5,425($s0)
    # Line 206
    sb	$zero,424($s0)
    # Line 203
    sw	$zero,24($s0)
    # Line 202
    sw	$v0,36($s0)
    # Line 201
    sw	$s2,32($s0)
    # Line 200
    sw	$s2,28($s0)
    # Line 199
    sw	$a1,20($s0)
    # Line 198
    sw	$a0,16($s0)
    # Line 213
    ld	$s0,56($sp)
    ld	$s2,72($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da83a28:
    b	.L0da83930
    # Line 172
    move	$s6,$zero
.L0da83a30:
    # Line 177
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    b	.L0da83954
    sra	$a0,$a0,0x3
.L0da83a44:
    # Line 191
    subu	$a2,$a2,$a3
    ld	$s8,16($sp)
    ld	$s7,32($sp)
    sra	$a3,$s3,0x1f
    andi	$a2,$a2,0x7
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    # Line 193
    sw	$a2,76($s0)
    # Line 191
    sra	$s1,$s3,0x2
    srl	$s1,$s1,0x1d
    addu	$s1,$s1,$s3
    sra	$s1,$s1,0x3
    addu	$s1,$s1,$a4
    sw	$s1,12($s0)
    # Line 193
    b	.L0da839e0
    ld	$s1,24($sp)
.end __glInitUnpacker

# Function: __glInitUnpacker3D
# Declared: Line 215 (Source lines: 216-228)
# Address: 0x0da83a84 - 0x0da83af4 (Size: 112 bytes, Frame: 48)
.globl __glInitUnpacker3D
.ent __glInitUnpacker3D
__glInitUnpacker3D:
    # Line 216
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x17
    addiu	$at,$at,15844
    # addu	gp,t9,at
    # Line 220
    # lw $t9, -30248($gp) # &__glInitUnpacker
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glInitUnpacker
    # Line 216
    move	$s8,$a1
    # Line 223
    lw	$at,64($s8)
    lw	$ra,16($s8)
    mult	$ra,$at
    # Line 225
    lw	$a1,56($s8)
    # Line 223
    mflo	$a0
    nop
    nop
    # Line 225
    mult	$a1,$a0
    # ld	gp,16(sp)
    lw	$v0,12($s8)
    # Line 228
    ld	$ra,0($sp)
    # Line 227
    sw	$a0,24($s8)
    # Line 225
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,12($s8)
    # Line 228
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitUnpacker3D

# Function: __glSpanUnpackBitmap
# Declared: Line 235 (Source lines: 237-555)
# Address: 0x0da83af4 - 0x0da845a0 (Size: 2732 bytes, Frame: 0)
.globl __glSpanUnpackBitmap
.ent __glSpanUnpackBitmap
__glSpanUnpackBitmap:
    # Line 265
    li	$a6,1
    # Line 263
    lwc1	$f4,3284($a0)
    # Line 258
    lw	$a7,168($a1)
    # Line 252
    lw	$t0,312($a1)
    # Line 260
    lbu	$t1,0($a2)
    # Line 256
    lw	$t2,76($a1)
    # Line 265
    lw	$v0,44($a1)
    # Line 237
    lui	$v1,0x17
    addiu	$v1,$v1,15732
    # Line 265
    beqz	$v0,.L0da83e20
    # Line 237
    nop
    # Line 265
    la	$v0,sub_0dbf0000
    sll	$a4,$t2,0x2
    sltiu	$v1,$t2,8
    lui	$v0,%hi(jtbl_0dbeb3a8)
    beqz	$v1,.L0da83bf0
    addu	$a4,$a4,$v0
    lw	$v1,%lo(jtbl_0dbeb3a8)($a4)
    jr	$v1
    nop
.L0da83b44:
    # Line 270
    lh	$a6,0($t0)
    andi	$a0,$t1,0x2
    beqz	$a0,.L0da843b0
    addiu	$t0,$t0,2
    # Line 271
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0da83b5c:
    # Line 274
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83b68:
    # Line 276
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da84360
    # Line 277
    lh	$a6,0($t0)
.L0da83b74:
    # Line 281
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83b80:
    # Line 283
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da8429c
    # Line 284
    lh	$a6,0($t0)
.L0da83b8c:
    # Line 288
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83b98:
    # Line 290
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da8424c
    # Line 291
    lh	$a6,0($t0)
.L0da83ba4:
    # Line 295
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83bb0:
    # Line 297
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da8422c
    # Line 298
    lh	$a6,0($t0)
.L0da83bbc:
    # Line 302
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83bc8:
    # Line 304
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da84214
    # Line 305
    lh	$a6,0($t0)
.L0da83bd4:
    # Line 309
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83bf4
    # Line 321
    slti	$a1,$a7,8
.L0da83be0:
    # Line 311
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da841f8
    # Line 316
    addiu	$a7,$a7,-1
.L0da83bec:
    # Line 317
    addiu	$a2,$a2,1
.L0da83bf0:
    # Line 321
    slti	$a1,$a7,8
.L0da83bf4:
    bnez	$a1,.L0da83d98
    mtc1	$zero,$f5
    b	.L0da83c54
    # Line 324
    addiu	$a7,$a7,-8
.L0da83c04:
    # Line 327
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0da83c0c:
    # Line 330
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83c80
.L0da83c14:
    # Line 335
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83c9c
.L0da83c1c:
    # Line 340
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83cb8
.L0da83c24:
    # Line 345
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83cd4
.L0da83c2c:
    # Line 350
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83cf0
.L0da83c34:
    # Line 355
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83d0c
.L0da83c3c:
    # Line 360
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83d28
.L0da83c44:
    # Line 363
    slti	$v0,$a7,8
    bnez	$v0,.L0da83d98
    nop
    # Line 324
    addiu	$a7,$a7,-8
.L0da83c54:
    # Line 323
    addiu	$a2,$a2,1
    # Line 325
    addiu	$a6,$a6,-1
    bnez	$a6,.L0da83c0c
    # Line 322
    lbu	$t1,-1($a2)
    # Line 326
    lh	$a6,0($t0)
    andi	$v1,$t1,0x1
    bnez	$v1,.L0da83c04
    addiu	$t0,$t0,2
    # Line 328
    swc1	$f5,0($a3)
    b	.L0da83c0c
    addiu	$a3,$a3,4
.L0da83c80:
    # Line 331
    lh	$a6,0($t0)
    andi	$a0,$t1,0x2
    beqz	$a0,.L0da83d44
    addiu	$t0,$t0,2
    # Line 332
    swc1	$f4,0($a3)
    b	.L0da83c14
    addiu	$a3,$a3,4
.L0da83c9c:
    # Line 336
    lh	$a6,0($t0)
    andi	$a1,$t1,0x4
    beqz	$a1,.L0da83d50
    addiu	$t0,$t0,2
    # Line 337
    swc1	$f4,0($a3)
    b	.L0da83c1c
    addiu	$a3,$a3,4
.L0da83cb8:
    # Line 341
    lh	$a6,0($t0)
    andi	$v0,$t1,0x8
    beqz	$v0,.L0da83d5c
    addiu	$t0,$t0,2
    # Line 342
    swc1	$f4,0($a3)
    b	.L0da83c24
    addiu	$a3,$a3,4
.L0da83cd4:
    # Line 346
    lh	$a6,0($t0)
    andi	$v1,$t1,0x10
    beqz	$v1,.L0da83d68
    addiu	$t0,$t0,2
    # Line 347
    swc1	$f4,0($a3)
    b	.L0da83c2c
    addiu	$a3,$a3,4
.L0da83cf0:
    # Line 351
    lh	$a6,0($t0)
    andi	$a0,$t1,0x20
    beqz	$a0,.L0da83d74
    addiu	$t0,$t0,2
    # Line 352
    swc1	$f4,0($a3)
    b	.L0da83c34
    addiu	$a3,$a3,4
.L0da83d0c:
    # Line 356
    lh	$a6,0($t0)
    andi	$a1,$t1,0x40
    beqz	$a1,.L0da83d80
    addiu	$t0,$t0,2
    # Line 357
    swc1	$f4,0($a3)
    b	.L0da83c3c
    addiu	$a3,$a3,4
.L0da83d28:
    # Line 361
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0da83d8c
    addiu	$t0,$t0,2
    # Line 362
    swc1	$f4,0($a3)
    b	.L0da83c44
    addiu	$a3,$a3,4
.L0da83d44:
    # Line 333
    swc1	$f5,0($a3)
    b	.L0da83c14
    addiu	$a3,$a3,4
.L0da83d50:
    # Line 338
    swc1	$f5,0($a3)
    b	.L0da83c1c
    addiu	$a3,$a3,4
.L0da83d5c:
    # Line 343
    swc1	$f5,0($a3)
    b	.L0da83c24
    addiu	$a3,$a3,4
.L0da83d68:
    # Line 348
    swc1	$f5,0($a3)
    b	.L0da83c2c
    addiu	$a3,$a3,4
.L0da83d74:
    # Line 353
    swc1	$f5,0($a3)
    b	.L0da83c34
    addiu	$a3,$a3,4
.L0da83d80:
    # Line 358
    swc1	$f5,0($a3)
    b	.L0da83c3c
    addiu	$a3,$a3,4
.L0da83d8c:
    # Line 363
    swc1	$f5,0($a3)
    b	.L0da83c44
    addiu	$a3,$a3,4
.L0da83d98:
    beqz	$a7,.L0da83e18
    # Line 368
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83f08
    # Line 367
    lbu	$t1,0($a2)
.L0da83da8:
    # Line 371
    li	$a2,1
    beq	$a7,$a2,.L0da841c8
    # Line 374
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84140
.L0da83db8:
    # Line 377
    li	$v1,2
    beq	$a7,$v1,.L0da841d0
    # Line 380
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da8415c
.L0da83dc8:
    # Line 383
    li	$a0,3
    beq	$a7,$a0,.L0da841d8
    # Line 386
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84178
.L0da83dd8:
    # Line 389
    li	$a1,4
    beq	$a7,$a1,.L0da841e0
    # Line 392
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84194
.L0da83de8:
    # Line 395
    li	$v0,5
    beq	$a7,$v0,.L0da841e8
    # Line 398
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da841b0
.L0da83df8:
    # Line 401
    li	$v1,6
    beq	$a7,$v1,.L0da841f0
    nop
    # Line 403
    bne	$a6,$a2,.L0da83e18
    andi	$a0,$t1,0x40
    beqz	$a0,.L0da84244
    # Line 407
    mtc1	$zero,$f0
    # Line 406
    swc1	$f4,0($a3)
.L0da83e18:
    # Line 555
    jr	$ra
    nop
.L0da83e20:
    # Line 407
    la	$v0,sub_0dbf0000
    sltiu	$v1,$t2,8
    sll	$a4,$t2,0x2
    addiu	$v0,$v0,-19512
    beqz	$v1,.L0da83ef4
    addu	$a4,$a4,$v0
    lw	$v1,%lo(jtbl_0dbeb3a8)($a4)
    jr	$v1
    nop
.L0da83e44:
    # Line 414
    lh	$a6,0($t0)
    andi	$a0,$t1,0x40
    beqz	$a0,.L0da84530
    addiu	$t0,$t0,2
    # Line 415
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0da83e5c:
    # Line 418
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83e68:
    # Line 420
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da844e8
    # Line 421
    lh	$a6,0($t0)
.L0da83e74:
    # Line 425
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83e80:
    # Line 427
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da84480
    # Line 428
    lh	$a6,0($t0)
.L0da83e8c:
    # Line 432
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83e98:
    # Line 434
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da84448
    # Line 435
    lh	$a6,0($t0)
.L0da83ea4:
    # Line 439
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83eb0:
    # Line 441
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da84418
    # Line 442
    lh	$a6,0($t0)
.L0da83ebc:
    # Line 446
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83ec8:
    # Line 448
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da843f0
    # Line 449
    lh	$a6,0($t0)
.L0da83ed4:
    # Line 453
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da83ef8
    # Line 465
    slti	$a1,$a7,8
.L0da83ee0:
    # Line 455
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0da843d8
    # Line 456
    lh	$a6,0($t0)
.L0da83eec:
    # Line 461
    addiu	$a2,$a2,1
    # Line 460
    addiu	$a7,$a7,-1
.L0da83ef4:
    # Line 465
    slti	$a1,$a7,8
.L0da83ef8:
    bnez	$a1,.L0da840bc
    nop
    b	.L0da83f58
    mtc1	$zero,$f5
.L0da83f08:
    # Line 369
    lh	$a6,0($t0)
    andi	$v0,$t1,0x1
    beqz	$v0,.L0da842d0
    addiu	$t0,$t0,2
    # Line 370
    swc1	$f4,0($a3)
    b	.L0da83da8
    addiu	$a3,$a3,4
.L0da83f24:
    # Line 486
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0da83f2c:
    # Line 489
    addiu	$a6,$a6,-1
.L0da83f30:
    beqz	$a6,.L0da83ff8
.L0da83f34:
    # Line 494
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84014
.L0da83f3c:
    # Line 499
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84030
.L0da83f44:
    # Line 504
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da8404c
.L0da83f4c:
    # Line 507
    slti	$v1,$a7,8
    bnez	$v1,.L0da840bc
    nop
.L0da83f58:
    # Line 468
    addiu	$a7,$a7,-8
    # Line 467
    addiu	$a2,$a2,1
    # Line 469
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83fa4
    # Line 466
    lbu	$t1,-1($a2)
.L0da83f6c:
    # Line 474
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83fc0
.L0da83f74:
    # Line 479
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da83fdc
.L0da83f7c:
    # Line 484
    addiu	$a6,$a6,-1
    bnez	$a6,.L0da83f30
    # Line 489
    addiu	$a6,$a6,-1
    # Line 485
    lh	$a6,0($t0)
    andi	$a0,$t1,0x10
    bnez	$a0,.L0da83f24
    addiu	$t0,$t0,2
    # Line 487
    swc1	$f5,0($a3)
    b	.L0da83f2c
    addiu	$a3,$a3,4
.L0da83fa4:
    # Line 470
    lh	$a6,0($t0)
    andi	$a1,$t1,0x80
    beqz	$a1,.L0da84068
    addiu	$t0,$t0,2
    # Line 471
    swc1	$f4,0($a3)
    b	.L0da83f6c
    addiu	$a3,$a3,4
.L0da83fc0:
    # Line 475
    lh	$a6,0($t0)
    andi	$v0,$t1,0x40
    beqz	$v0,.L0da84074
    addiu	$t0,$t0,2
    # Line 476
    swc1	$f4,0($a3)
    b	.L0da83f74
    addiu	$a3,$a3,4
.L0da83fdc:
    # Line 480
    lh	$a6,0($t0)
    andi	$v1,$t1,0x20
    beqz	$v1,.L0da84080
    addiu	$t0,$t0,2
    # Line 481
    swc1	$f4,0($a3)
    b	.L0da83f7c
    addiu	$a3,$a3,4
.L0da83ff8:
    # Line 490
    lh	$a6,0($t0)
    andi	$a0,$t1,0x8
    beqz	$a0,.L0da8408c
    addiu	$t0,$t0,2
    # Line 491
    swc1	$f4,0($a3)
    b	.L0da83f34
    addiu	$a3,$a3,4
.L0da84014:
    # Line 495
    lh	$a6,0($t0)
    andi	$a1,$t1,0x4
    beqz	$a1,.L0da84098
    addiu	$t0,$t0,2
    # Line 496
    swc1	$f4,0($a3)
    b	.L0da83f3c
    addiu	$a3,$a3,4
.L0da84030:
    # Line 500
    lh	$a6,0($t0)
    andi	$v0,$t1,0x2
    beqz	$v0,.L0da840a4
    addiu	$t0,$t0,2
    # Line 501
    swc1	$f4,0($a3)
    b	.L0da83f44
    addiu	$a3,$a3,4
.L0da8404c:
    # Line 505
    lh	$a6,0($t0)
    andi	$v1,$t1,0x1
    beqz	$v1,.L0da840b0
    addiu	$t0,$t0,2
    # Line 506
    swc1	$f4,0($a3)
    b	.L0da83f4c
    addiu	$a3,$a3,4
.L0da84068:
    # Line 472
    swc1	$f5,0($a3)
    b	.L0da83f6c
    addiu	$a3,$a3,4
.L0da84074:
    # Line 477
    swc1	$f5,0($a3)
    b	.L0da83f74
    addiu	$a3,$a3,4
.L0da84080:
    # Line 482
    swc1	$f5,0($a3)
    b	.L0da83f7c
    addiu	$a3,$a3,4
.L0da8408c:
    # Line 492
    swc1	$f5,0($a3)
    b	.L0da83f34
    addiu	$a3,$a3,4
.L0da84098:
    # Line 497
    swc1	$f5,0($a3)
    b	.L0da83f3c
    addiu	$a3,$a3,4
.L0da840a4:
    # Line 502
    swc1	$f5,0($a3)
    b	.L0da83f44
    addiu	$a3,$a3,4
.L0da840b0:
    # Line 507
    swc1	$f5,0($a3)
    b	.L0da83f4c
    addiu	$a3,$a3,4
.L0da840bc:
    beqz	$a7,.L0da83e18
    # Line 512
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84264
    # Line 511
    lbu	$t1,0($a2)
.L0da840cc:
    # Line 515
    li	$a2,1
    beq	$a7,$a2,.L0da84398
    # Line 518
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84280
.L0da840dc:
    # Line 521
    li	$a0,2
    beq	$a7,$a0,.L0da843a0
    # Line 524
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da842b4
.L0da840ec:
    # Line 527
    li	$a1,3
    beq	$a7,$a1,.L0da843a8
    # Line 530
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da842e0
.L0da840fc:
    # Line 533
    li	$v0,4
    beq	$a7,$v0,.L0da843c0
    # Line 536
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da8430c
.L0da8410c:
    # Line 539
    li	$v1,5
    beq	$a7,$v1,.L0da843c8
    # Line 542
    addiu	$a6,$a6,-1
    beqz	$a6,.L0da84338
.L0da8411c:
    # Line 545
    li	$a0,6
    beq	$a7,$a0,.L0da843d0
    nop
    # Line 547
    bne	$a6,$a2,.L0da83e18
    andi	$a1,$t1,0x2
    beqz	$a1,.L0da84440
    # Line 551
    mtc1	$zero,$f2
    # Line 555
    jr	$ra
    # Line 550
    swc1	$f4,0($a3)
.L0da84140:
    # Line 375
    lh	$a6,0($t0)
    andi	$v0,$t1,0x2
    beqz	$v0,.L0da842fc
    addiu	$t0,$t0,2
    # Line 376
    swc1	$f4,0($a3)
    b	.L0da83db8
    addiu	$a3,$a3,4
.L0da8415c:
    # Line 381
    lh	$a6,0($t0)
    andi	$v1,$t1,0x4
    beqz	$v1,.L0da84328
    addiu	$t0,$t0,2
    # Line 382
    swc1	$f4,0($a3)
    b	.L0da83dc8
    addiu	$a3,$a3,4
.L0da84178:
    # Line 387
    lh	$a6,0($t0)
    andi	$a0,$t1,0x8
    beqz	$a0,.L0da84350
    addiu	$t0,$t0,2
    # Line 388
    swc1	$f4,0($a3)
    b	.L0da83dd8
    addiu	$a3,$a3,4
.L0da84194:
    # Line 393
    lh	$a6,0($t0)
    andi	$a1,$t1,0x10
    beqz	$a1,.L0da84378
    addiu	$t0,$t0,2
    # Line 394
    swc1	$f4,0($a3)
    b	.L0da83de8
    addiu	$a3,$a3,4
.L0da841b0:
    # Line 399
    andi	$a6,$t1,0x20
    beqz	$a6,.L0da84388
    lh	$a6,0($t0)
    # Line 400
    swc1	$f4,0($a3)
    b	.L0da83df8
    addiu	$a3,$a3,4
.L0da841c8:
    # Line 373
    jr	$ra
    nop
.L0da841d0:
    # Line 379
    jr	$ra
    nop
.L0da841d8:
    # Line 385
    jr	$ra
    nop
.L0da841e0:
    # Line 391
    jr	$ra
    nop
.L0da841e8:
    # Line 397
    jr	$ra
    nop
.L0da841f0:
    # Line 403
    jr	$ra
    nop
.L0da841f8:
    # Line 312
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0da84408
    addiu	$t0,$t0,2
    # Line 313
    swc1	$f4,0($a3)
    b	.L0da83bec
    addiu	$a3,$a3,4
.L0da84214:
    # Line 305
    andi	$v1,$t1,0x40
    beqz	$v1,.L0da84430
    addiu	$t0,$t0,2
    # Line 306
    swc1	$f4,0($a3)
    b	.L0da83bd4
    addiu	$a3,$a3,4
.L0da8422c:
    # Line 298
    andi	$a0,$t1,0x20
    beqz	$a0,.L0da84460
    addiu	$t0,$t0,2
    # Line 299
    swc1	$f4,0($a3)
    b	.L0da83bbc
    addiu	$a3,$a3,4
.L0da84244:
    # Line 555
    jr	$ra
    # Line 407
    swc1	$f0,0($a3)
.L0da8424c:
    # Line 291
    andi	$a1,$t1,0x10
    beqz	$a1,.L0da84470
    addiu	$t0,$t0,2
    # Line 292
    swc1	$f4,0($a3)
    b	.L0da83ba4
    addiu	$a3,$a3,4
.L0da84264:
    # Line 513
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0da84498
    addiu	$t0,$t0,2
    # Line 514
    swc1	$f4,0($a3)
    b	.L0da840cc
    addiu	$a3,$a3,4
.L0da84280:
    # Line 519
    lh	$a6,0($t0)
    andi	$v1,$t1,0x40
    beqz	$v1,.L0da844a8
    addiu	$t0,$t0,2
    # Line 520
    swc1	$f4,0($a3)
    b	.L0da840dc
    addiu	$a3,$a3,4
.L0da8429c:
    # Line 284
    andi	$a0,$t1,0x8
    beqz	$a0,.L0da844b8
    addiu	$t0,$t0,2
    # Line 285
    swc1	$f4,0($a3)
    b	.L0da83b8c
    addiu	$a3,$a3,4
.L0da842b4:
    # Line 525
    lh	$a6,0($t0)
    andi	$a1,$t1,0x20
    beqz	$a1,.L0da844c8
    addiu	$t0,$t0,2
    # Line 526
    swc1	$f4,0($a3)
    b	.L0da840ec
    addiu	$a3,$a3,4
.L0da842d0:
    # Line 371
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da83da8
    swc1	$f1,-4($a3)
.L0da842e0:
    # Line 531
    lh	$a6,0($t0)
    andi	$v0,$t1,0x10
    beqz	$v0,.L0da844d8
    addiu	$t0,$t0,2
    # Line 532
    swc1	$f4,0($a3)
    b	.L0da840fc
    addiu	$a3,$a3,4
.L0da842fc:
    # Line 377
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da83db8
    swc1	$f2,-4($a3)
.L0da8430c:
    # Line 537
    lh	$a6,0($t0)
    andi	$v1,$t1,0x8
    beqz	$v1,.L0da84500
    addiu	$t0,$t0,2
    # Line 538
    swc1	$f4,0($a3)
    b	.L0da8410c
    addiu	$a3,$a3,4
.L0da84328:
    # Line 383
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83dc8
    swc1	$f3,-4($a3)
.L0da84338:
    # Line 543
    andi	$a0,$t1,0x4
    beqz	$a0,.L0da84510
    lh	$a6,0($t0)
    # Line 544
    swc1	$f4,0($a3)
    b	.L0da8411c
    addiu	$a3,$a3,4
.L0da84350:
    # Line 389
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da83dd8
    swc1	$f0,-4($a3)
.L0da84360:
    # Line 277
    andi	$a1,$t1,0x4
    beqz	$a1,.L0da84520
    addiu	$t0,$t0,2
    # Line 278
    swc1	$f4,0($a3)
    b	.L0da83b74
    addiu	$a3,$a3,4
.L0da84378:
    # Line 395
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da83de8
    swc1	$f1,-4($a3)
.L0da84388:
    # Line 401
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da83df8
    swc1	$f2,-4($a3)
.L0da84398:
    # Line 517
    jr	$ra
    nop
.L0da843a0:
    # Line 523
    jr	$ra
    nop
.L0da843a8:
    # Line 529
    jr	$ra
    nop
.L0da843b0:
    # Line 272
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83b5c
    swc1	$f3,-4($a3)
.L0da843c0:
    # Line 535
    jr	$ra
    nop
.L0da843c8:
    # Line 541
    jr	$ra
    nop
.L0da843d0:
    # Line 547
    jr	$ra
    nop
.L0da843d8:
    # Line 456
    andi	$v0,$t1,0x1
    beqz	$v0,.L0da84540
    addiu	$t0,$t0,2
    # Line 457
    swc1	$f4,0($a3)
    b	.L0da83eec
    addiu	$a3,$a3,4
.L0da843f0:
    # Line 449
    andi	$v1,$t1,0x2
    beqz	$v1,.L0da84550
    addiu	$t0,$t0,2
    # Line 450
    swc1	$f4,0($a3)
    b	.L0da83ed4
    addiu	$a3,$a3,4
.L0da84408:
    # Line 314
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da83bec
    swc1	$f0,-4($a3)
.L0da84418:
    # Line 442
    andi	$a0,$t1,0x4
    beqz	$a0,.L0da84560
    addiu	$t0,$t0,2
    # Line 443
    swc1	$f4,0($a3)
    b	.L0da83ebc
    addiu	$a3,$a3,4
.L0da84430:
    # Line 307
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da83bd4
    swc1	$f1,-4($a3)
.L0da84440:
    # Line 555
    jr	$ra
    # Line 551
    swc1	$f2,0($a3)
.L0da84448:
    # Line 435
    andi	$a1,$t1,0x8
    beqz	$a1,.L0da84570
    addiu	$t0,$t0,2
    # Line 436
    swc1	$f4,0($a3)
    b	.L0da83ea4
    addiu	$a3,$a3,4
.L0da84460:
    # Line 300
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83bbc
    swc1	$f3,-4($a3)
.L0da84470:
    # Line 293
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da83ba4
    swc1	$f0,-4($a3)
.L0da84480:
    # Line 428
    andi	$v0,$t1,0x10
    beqz	$v0,.L0da84580
    addiu	$t0,$t0,2
    # Line 429
    swc1	$f4,0($a3)
    b	.L0da83e8c
    addiu	$a3,$a3,4
.L0da84498:
    # Line 515
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da840cc
    swc1	$f1,-4($a3)
.L0da844a8:
    # Line 521
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da840dc
    swc1	$f2,-4($a3)
.L0da844b8:
    # Line 286
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83b8c
    swc1	$f3,-4($a3)
.L0da844c8:
    # Line 527
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da840ec
    swc1	$f0,-4($a3)
.L0da844d8:
    # Line 533
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da840fc
    swc1	$f1,-4($a3)
.L0da844e8:
    # Line 421
    andi	$v1,$t1,0x20
    beqz	$v1,.L0da84590
    addiu	$t0,$t0,2
    # Line 422
    swc1	$f4,0($a3)
    b	.L0da83e74
    addiu	$a3,$a3,4
.L0da84500:
    # Line 539
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da8410c
    swc1	$f2,-4($a3)
.L0da84510:
    # Line 545
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da8411c
    swc1	$f3,-4($a3)
.L0da84520:
    # Line 279
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da83b74
    swc1	$f0,-4($a3)
.L0da84530:
    # Line 416
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da83e5c
    swc1	$f1,-4($a3)
.L0da84540:
    # Line 458
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da83eec
    swc1	$f2,-4($a3)
.L0da84550:
    # Line 451
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83ed4
    swc1	$f3,-4($a3)
.L0da84560:
    # Line 444
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0da83ebc
    swc1	$f0,-4($a3)
.L0da84570:
    # Line 437
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0da83ea4
    swc1	$f1,-4($a3)
.L0da84580:
    # Line 430
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0da83e8c
    swc1	$f2,-4($a3)
.L0da84590:
    # Line 423
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0da83e74
    swc1	$f3,-4($a3)
.end __glSpanUnpackBitmap

# Function: __glSpanUnpackBitmap2
# Declared: Line 563 (Source lines: 565-743)
# Address: 0x0da845a0 - 0x0da84d90 (Size: 2032 bytes, Frame: 0)
.globl __glSpanUnpackBitmap2
.ent __glSpanUnpackBitmap2
__glSpanUnpackBitmap2:
    # Line 582
    lw	$a7,180($a1)
    # Line 584
    lbu	$a6,0($a2)
    # Line 580
    lw	$t0,76($a1)
    # Line 584
    lw	$v0,44($a1)
    # Line 565
    lui	$v1,0x17
    addiu	$v1,$v1,13000
    # Line 584
    beqz	$v0,.L0da848d8
    # Line 565
    nop
    # Line 584
    la	$v0,sub_0dbf0000
    sll	$a5,$t0,0x2
    sltiu	$v1,$t0,8
    lui	$v0,%hi(jtbl_0dbeb3e8)
    beqz	$v1,.L0da846c0
    addu	$a5,$a5,$v0
    lw	$v1,%lo(jtbl_0dbeb3e8)($a5)
    jr	$v1
    # Line 589
    andi	$a1,$a6,0x2
.L0da845e4:
    beqz	$a1,.L0da84d18
    # Line 590
    mtc1	$zero,$f0
    # Line 589
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da845f8:
    # Line 591
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da84600:
    # Line 592
    andi	$a4,$a6,0x4
    beqz	$a4,.L0da84cf4
    # Line 594
    mtc1	$zero,$f3
    # Line 593
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84618:
    # Line 595
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da84620:
    # Line 596
    andi	$v0,$a6,0x8
    beqz	$v0,.L0da84cb0
    # Line 598
    mtc1	$zero,$f1
    # Line 597
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84638:
    # Line 599
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da84640:
    # Line 600
    andi	$v1,$a6,0x10
    beqz	$v1,.L0da84c8c
    # Line 602
    mtc1	$zero,$f2
    # Line 601
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84658:
    # Line 603
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da84660:
    # Line 604
    andi	$a1,$a6,0x20
    beqz	$a1,.L0da84c80
    # Line 606
    mtc1	$zero,$f1
    # Line 605
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84678:
    # Line 607
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da84680:
    # Line 608
    andi	$a4,$a6,0x40
    beqz	$a4,.L0da84c74
    # Line 610
    mtc1	$zero,$f0
    # Line 609
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84698:
    # Line 611
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da846c0
.L0da846a0:
    # Line 612
    andi	$v0,$a6,0x80
    beqz	$v0,.L0da84c68
    # Line 614
    mtc1	$zero,$f3
    # Line 613
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da846b8:
    # Line 616
    addiu	$a2,$a2,1
    # Line 615
    addiu	$a7,$a7,-1
.L0da846c0:
    # Line 620
    slti	$v1,$a7,8
    bnez	$v1,.L0da847ec
    mtc1	$zero,$f4
    b	.L0da846e8
    # Line 621
    lbu	$a6,0($a2)
.L0da846d4:
    # Line 639
    addiu	$a3,$a3,4
.L0da846d8:
    slti	$a1,$a7,8
    bnez	$a1,.L0da847ec
    nop
    # Line 621
    lbu	$a6,0($a2)
.L0da846e8:
    # Line 623
    addiu	$a7,$a7,-8
    andi	$a4,$a6,0x1
    beqz	$a4,.L0da847b0
    # Line 622
    addiu	$a2,$a2,1
    # Line 624
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84704:
    # Line 625
    andi	$v0,$a6,0x2
    beqzl	$v0,.L0da847bc
    # Line 627
    swc1	$f4,0($a3)
    # Line 626
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da8471c:
    # Line 627
    andi	$v1,$a6,0x4
    beqzl	$v1,.L0da847c4
    # Line 629
    swc1	$f4,0($a3)
    # Line 628
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84734:
    # Line 629
    andi	$a1,$a6,0x8
    beqzl	$a1,.L0da847cc
    # Line 631
    swc1	$f4,0($a3)
    # Line 630
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da8474c:
    # Line 631
    andi	$a4,$a6,0x10
    beqzl	$a4,.L0da847d4
    # Line 633
    swc1	$f4,0($a3)
    # Line 632
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84764:
    # Line 633
    andi	$v0,$a6,0x20
    beqzl	$v0,.L0da847dc
    # Line 635
    swc1	$f4,0($a3)
    # Line 634
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da8477c:
    # Line 635
    andi	$v1,$a6,0x40
    beqzl	$v1,.L0da847e4
    # Line 637
    swc1	$f4,0($a3)
    # Line 636
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84794:
    # Line 637
    andi	$a1,$a6,0x80
    beqzl	$a1,.L0da846d4
    # Line 639
    swc1	$f4,0($a3)
    # Line 638
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    b	.L0da846d8
    swc1	$f2,-4($a3)
.L0da847b0:
    # Line 625
    swc1	$f4,0($a3)
    b	.L0da84704
    addiu	$a3,$a3,4
.L0da847bc:
    b	.L0da8471c
    # Line 627
    addiu	$a3,$a3,4
.L0da847c4:
    b	.L0da84734
    # Line 629
    addiu	$a3,$a3,4
.L0da847cc:
    b	.L0da8474c
    # Line 631
    addiu	$a3,$a3,4
.L0da847d4:
    b	.L0da84764
    # Line 633
    addiu	$a3,$a3,4
.L0da847dc:
    b	.L0da8477c
    # Line 635
    addiu	$a3,$a3,4
.L0da847e4:
    b	.L0da84794
    # Line 637
    addiu	$a3,$a3,4
.L0da847ec:
    # Line 639
    beqz	$a7,.L0da848d0
    nop
    # Line 642
    lbu	$a6,0($a2)
    # Line 644
    li	$v0,1
    # Line 642
    andi	$a4,$a6,0x1
    beqz	$a4,.L0da849ec
    # Line 644
    mtc1	$zero,$f1
    # Line 643
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84814:
    # Line 648
    andi	$a4,$a6,0x4
    # Line 644
    beq	$a7,$v0,.L0da84c38
    # Line 645
    andi	$v1,$a6,0x2
    beqz	$v1,.L0da84bf4
    # Line 647
    mtc1	$zero,$f1
    # Line 646
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84834:
    # Line 647
    li	$a1,2
    beq	$a7,$a1,.L0da84c40
    nop
    # Line 648
    beqz	$a4,.L0da84c00
    # Line 650
    mtc1	$zero,$f2
    # Line 649
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84854:
    # Line 650
    li	$v0,3
    beq	$a7,$v0,.L0da84c48
    # Line 651
    andi	$v1,$a6,0x8
    beqz	$v1,.L0da84c0c
    # Line 653
    mtc1	$zero,$f3
    # Line 652
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84874:
    # Line 653
    li	$a1,4
    beq	$a7,$a1,.L0da84c50
    # Line 654
    andi	$a4,$a6,0x10
    beqz	$a4,.L0da84c18
    # Line 656
    mtc1	$zero,$f0
    # Line 655
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84894:
    # Line 656
    li	$v0,5
    beq	$a7,$v0,.L0da84c58
    # Line 657
    andi	$v1,$a6,0x20
    beqz	$v1,.L0da84c24
    # Line 659
    mtc1	$zero,$f1
    # Line 658
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da848b4:
    # Line 659
    li	$a1,6
    beq	$a7,$a1,.L0da84c60
    # Line 660
    andi	$a4,$a6,0x40
    beqz	$a4,.L0da84c30
    # Line 662
    mtc1	$zero,$f2
    # Line 661
    lwc1	$f1,3284($a0)
    swc1	$f1,0($a3)
.L0da848d0:
    # Line 743
    jr	$ra
    nop
.L0da848d8:
    # Line 662
    la	$v0,sub_0dbf0000
    sltiu	$v1,$t0,8
    sll	$a5,$t0,0x2
    addiu	$v0,$v0,-19448
    beqz	$v1,.L0da849d8
    addu	$a5,$a5,$v0
    lw	$v1,%lo(jtbl_0dbeb3e8)($a5)
    jr	$v1
    # Line 667
    andi	$a1,$a6,0x40
.L0da848fc:
    beqz	$a1,.L0da84d84
    # Line 668
    mtc1	$zero,$f3
    # Line 667
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84910:
    # Line 669
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da84918:
    # Line 670
    andi	$a4,$a6,0x20
    beqz	$a4,.L0da84d78
    # Line 672
    mtc1	$zero,$f2
    # Line 671
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84930:
    # Line 673
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da84938:
    # Line 674
    andi	$v0,$a6,0x10
    beqz	$v0,.L0da84d6c
    # Line 676
    mtc1	$zero,$f1
    # Line 675
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84950:
    # Line 677
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da84958:
    # Line 678
    andi	$v1,$a6,0x8
    beqz	$v1,.L0da84d60
    # Line 680
    mtc1	$zero,$f0
    # Line 679
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84970:
    # Line 681
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da84978:
    # Line 682
    andi	$a1,$a6,0x4
    beqz	$a1,.L0da84d54
    # Line 684
    mtc1	$zero,$f3
    # Line 683
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84990:
    # Line 685
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da84998:
    # Line 686
    andi	$a4,$a6,0x2
    beqz	$a4,.L0da84d48
    # Line 688
    mtc1	$zero,$f2
    # Line 687
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da849b0:
    # Line 689
    addiu	$a7,$a7,-1
    beqz	$a7,.L0da849d8
.L0da849b8:
    # Line 690
    andi	$v0,$a6,0x1
    beqz	$v0,.L0da84d3c
    # Line 692
    mtc1	$zero,$f1
    # Line 691
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da849d0:
    # Line 694
    addiu	$a2,$a2,1
    # Line 693
    addiu	$a7,$a7,-1
.L0da849d8:
    # Line 698
    slti	$v1,$a7,8
    bnez	$v1,.L0da84b10
    nop
    b	.L0da84a54
    mtc1	$zero,$f4
.L0da849ec:
    # Line 644
    addiu	$a3,$a3,4
    b	.L0da84814
    swc1	$f1,-4($a3)
.L0da849f8:
    # Line 710
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84a00:
    # Line 711
    andi	$a1,$a6,0x4
    beqzl	$a1,.L0da84af8
    # Line 713
    swc1	$f4,0($a3)
    # Line 712
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84a18:
    # Line 713
    andi	$a4,$a6,0x2
    beqzl	$a4,.L0da84b00
    # Line 715
    swc1	$f4,0($a3)
    # Line 714
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84a30:
    # Line 715
    andi	$v0,$a6,0x1
    beqzl	$v0,.L0da84b08
    # Line 717
    swc1	$f4,0($a3)
    # Line 716
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84a48:
    # Line 717
    slti	$v1,$a7,8
    bnez	$v1,.L0da84b10
    nop
.L0da84a54:
    # Line 699
    lbu	$a6,0($a2)
    # Line 701
    addiu	$a7,$a7,-8
    andi	$a1,$a6,0x80
    beqz	$a1,.L0da84ad4
    # Line 700
    addiu	$a2,$a2,1
    # Line 702
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84a74:
    # Line 703
    andi	$a4,$a6,0x40
    beqzl	$a4,.L0da84ae0
    # Line 705
    swc1	$f4,0($a3)
    # Line 704
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84a8c:
    # Line 705
    andi	$v0,$a6,0x20
    beqzl	$v0,.L0da84ae8
    # Line 707
    swc1	$f4,0($a3)
    # Line 706
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84aa4:
    # Line 707
    andi	$v1,$a6,0x10
    beqzl	$v1,.L0da84af0
    # Line 709
    swc1	$f4,0($a3)
    # Line 708
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84abc:
    # Line 709
    andi	$a1,$a6,0x8
    bnezl	$a1,.L0da849f8
    # Line 710
    lwc1	$f2,3284($a0)
    # Line 711
    swc1	$f4,0($a3)
    b	.L0da84a00
    addiu	$a3,$a3,4
.L0da84ad4:
    # Line 703
    swc1	$f4,0($a3)
    b	.L0da84a74
    addiu	$a3,$a3,4
.L0da84ae0:
    b	.L0da84a8c
    # Line 705
    addiu	$a3,$a3,4
.L0da84ae8:
    b	.L0da84aa4
    # Line 707
    addiu	$a3,$a3,4
.L0da84af0:
    b	.L0da84abc
    # Line 709
    addiu	$a3,$a3,4
.L0da84af8:
    b	.L0da84a18
    # Line 713
    addiu	$a3,$a3,4
.L0da84b00:
    b	.L0da84a30
    # Line 715
    addiu	$a3,$a3,4
.L0da84b08:
    b	.L0da84a48
    # Line 717
    addiu	$a3,$a3,4
.L0da84b10:
    beqz	$a7,.L0da848d0
    nop
    # Line 720
    lbu	$a6,0($a2)
    andi	$a4,$a6,0x80
    beqz	$a4,.L0da84c98
    # Line 722
    mtc1	$zero,$f3
    # Line 721
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84b34:
    # Line 722
    li	$v0,1
    beq	$a7,$v0,.L0da84d00
    # Line 723
    andi	$v1,$a6,0x40
    beqz	$v1,.L0da84ca4
    # Line 725
    mtc1	$zero,$f0
    # Line 724
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84b54:
    # Line 725
    li	$a1,2
    beq	$a7,$a1,.L0da84d08
    # Line 726
    andi	$a4,$a6,0x20
    beqz	$a4,.L0da84cbc
    # Line 728
    mtc1	$zero,$f2
    # Line 727
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0da84b74:
    # Line 728
    li	$v0,3
    beq	$a7,$v0,.L0da84d10
    # Line 729
    andi	$v1,$a6,0x10
    beqz	$v1,.L0da84cc8
    # Line 731
    mtc1	$zero,$f3
    # Line 730
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0da84b94:
    # Line 731
    li	$a1,4
    beq	$a7,$a1,.L0da84d24
    # Line 732
    andi	$a4,$a6,0x8
    beqz	$a4,.L0da84cd4
    # Line 734
    mtc1	$zero,$f0
    # Line 733
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0da84bb4:
    # Line 734
    li	$v0,5
    beq	$a7,$v0,.L0da84d2c
    # Line 735
    andi	$v1,$a6,0x4
    beqz	$v1,.L0da84ce0
    # Line 737
    mtc1	$zero,$f1
    # Line 736
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0da84bd4:
    # Line 737
    li	$a1,6
    beq	$a7,$a1,.L0da84d34
    # Line 738
    andi	$a4,$a6,0x2
    beqz	$a4,.L0da84cec
    # Line 740
    mtc1	$zero,$f2
    # Line 739
    lwc1	$f0,3284($a0)
    # Line 743
    jr	$ra
    # Line 739
    swc1	$f0,0($a3)
.L0da84bf4:
    # Line 647
    addiu	$a3,$a3,4
    b	.L0da84834
    swc1	$f1,-4($a3)
.L0da84c00:
    # Line 650
    addiu	$a3,$a3,4
    b	.L0da84854
    swc1	$f2,-4($a3)
.L0da84c0c:
    # Line 653
    addiu	$a3,$a3,4
    b	.L0da84874
    swc1	$f3,-4($a3)
.L0da84c18:
    # Line 656
    addiu	$a3,$a3,4
    b	.L0da84894
    swc1	$f0,-4($a3)
.L0da84c24:
    # Line 659
    addiu	$a3,$a3,4
    b	.L0da848b4
    swc1	$f1,-4($a3)
.L0da84c30:
    # Line 743
    jr	$ra
    # Line 662
    swc1	$f2,0($a3)
.L0da84c38:
    # Line 645
    jr	$ra
    nop
.L0da84c40:
    # Line 648
    jr	$ra
    nop
.L0da84c48:
    # Line 651
    jr	$ra
    nop
.L0da84c50:
    # Line 654
    jr	$ra
    nop
.L0da84c58:
    # Line 657
    jr	$ra
    nop
.L0da84c60:
    # Line 660
    jr	$ra
    nop
.L0da84c68:
    # Line 614
    addiu	$a3,$a3,4
    b	.L0da846b8
    swc1	$f3,-4($a3)
.L0da84c74:
    # Line 610
    addiu	$a3,$a3,4
    b	.L0da84698
    swc1	$f0,-4($a3)
.L0da84c80:
    # Line 606
    addiu	$a3,$a3,4
    b	.L0da84678
    swc1	$f1,-4($a3)
.L0da84c8c:
    # Line 602
    addiu	$a3,$a3,4
    b	.L0da84658
    swc1	$f2,-4($a3)
.L0da84c98:
    # Line 722
    addiu	$a3,$a3,4
    b	.L0da84b34
    swc1	$f3,-4($a3)
.L0da84ca4:
    # Line 725
    addiu	$a3,$a3,4
    b	.L0da84b54
    swc1	$f0,-4($a3)
.L0da84cb0:
    # Line 598
    addiu	$a3,$a3,4
    b	.L0da84638
    swc1	$f1,-4($a3)
.L0da84cbc:
    # Line 728
    addiu	$a3,$a3,4
    b	.L0da84b74
    swc1	$f2,-4($a3)
.L0da84cc8:
    # Line 731
    addiu	$a3,$a3,4
    b	.L0da84b94
    swc1	$f3,-4($a3)
.L0da84cd4:
    # Line 734
    addiu	$a3,$a3,4
    b	.L0da84bb4
    swc1	$f0,-4($a3)
.L0da84ce0:
    # Line 737
    addiu	$a3,$a3,4
    b	.L0da84bd4
    swc1	$f1,-4($a3)
.L0da84cec:
    # Line 743
    jr	$ra
    # Line 740
    swc1	$f2,0($a3)
.L0da84cf4:
    # Line 594
    addiu	$a3,$a3,4
    b	.L0da84618
    swc1	$f3,-4($a3)
.L0da84d00:
    # Line 723
    jr	$ra
    nop
.L0da84d08:
    # Line 726
    jr	$ra
    nop
.L0da84d10:
    # Line 729
    jr	$ra
    nop
.L0da84d18:
    # Line 590
    addiu	$a3,$a3,4
    b	.L0da845f8
    swc1	$f0,-4($a3)
.L0da84d24:
    # Line 732
    jr	$ra
    nop
.L0da84d2c:
    # Line 735
    jr	$ra
    nop
.L0da84d34:
    # Line 738
    jr	$ra
    nop
.L0da84d3c:
    # Line 692
    addiu	$a3,$a3,4
    b	.L0da849d0
    swc1	$f1,-4($a3)
.L0da84d48:
    # Line 688
    addiu	$a3,$a3,4
    b	.L0da849b0
    swc1	$f2,-4($a3)
.L0da84d54:
    # Line 684
    addiu	$a3,$a3,4
    b	.L0da84990
    swc1	$f3,-4($a3)
.L0da84d60:
    # Line 680
    addiu	$a3,$a3,4
    b	.L0da84970
    swc1	$f0,-4($a3)
.L0da84d6c:
    # Line 676
    addiu	$a3,$a3,4
    b	.L0da84950
    swc1	$f1,-4($a3)
.L0da84d78:
    # Line 672
    addiu	$a3,$a3,4
    b	.L0da84930
    swc1	$f2,-4($a3)
.L0da84d84:
    # Line 668
    addiu	$a3,$a3,4
    b	.L0da84910
    swc1	$f3,-4($a3)
.end __glSpanUnpackBitmap2

# Function: __glSpanUnpackRGBubyte
# Declared: Line 752 (Source lines: 765-782)
# Address: 0x0da84d90 - 0x0da84e7c (Size: 236 bytes, Frame: 0)
.globl __glSpanUnpackRGBubyte
.ent __glSpanUnpackRGBubyte
__glSpanUnpackRGBubyte:
    # Line 765
    lw	$a5,180($a1)
    # Line 771
    li	$a7,1
    slt	$v0,$a5,$a7
    beqzl	$v0,.L0da84da4
    move	$a7,$a5
.L0da84da4:
    move	$a6,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0da84de8
    # Line 769
    lw	$a4,312($a1)
    # Line 773
    lbu	$v1,0($a2)
    sb	$v1,0($a3)
    # Line 774
    lbu	$v0,1($a2)
    sb	$v0,1($a3)
    # Line 775
    lbu	$at,2($a2)
    sb	$at,2($a3)
    # Line 780
    addiu	$a6,$a6,1
    # Line 779
    lh	$a0,0($a4)
    # Line 778
    addiu	$a4,$a4,2
    # Line 776
    addiu	$a3,$a3,3
    # Line 779
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    addu	$a2,$v1,$a2
.L0da84de8:
    move	$t1,$a6
    move	$t0,$a4
    move	$t2,$a2
    move	$t3,$a3
    sra	$a0,$a7,0x1
    beqz	$a0,.L0da84e74
    move	$a1,$t3
    move	$a4,$t0
    move	$a2,$t1
    move	$a3,$t2
.L0da84e10:
    # Line 773
    lbu	$at,0($a3)
    sb	$at,0($a1)
    # Line 774
    lbu	$a0,1($a3)
    sb	$a0,1($a1)
    # Line 775
    lbu	$v1,2($a3)
    sb	$v1,2($a1)
    # Line 779
    lh	$v0,0($a4)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    addu	$at,$at,$a3
    # Line 773
    lbu	$v0,0($at)
    sb	$v0,3($a1)
    # Line 774
    lbu	$a3,1($at)
    sb	$a3,4($a1)
    # Line 775
    lbu	$a0,2($at)
    # Line 778
    addiu	$a4,$a4,4
    # Line 775
    sb	$a0,5($a1)
    # Line 776
    addiu	$a1,$a1,6
    # Line 779
    lh	$v1,-2($a4)
    # Line 780
    addiu	$a2,$a2,2
    slt	$v0,$a2,$a5
    # Line 779
    sll	$a3,$v1,0x2
    subu	$a3,$a3,$v1
    # Line 780
    bnez	$v0,.L0da84e10
    # Line 779
    addu	$a3,$a3,$at
.L0da84e74:
    # Line 782
    jr	$ra
    nop
.end __glSpanUnpackRGBubyte

# Function: __glSpanUnpackIndexUbyte
# Declared: Line 791 (Source lines: 804-819)
# Address: 0x0da84e7c - 0x0da84f48 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackIndexUbyte
.ent __glSpanUnpackIndexUbyte
__glSpanUnpackIndexUbyte:
    # Line 804
    lw	$a5,180($a1)
    # Line 810
    li	$t0,1
    slt	$at,$a5,$t0
    beqzl	$at,.L0da84e90
    move	$t0,$a5
.L0da84e90:
    move	$a4,$zero
    andi	$a7,$t0,0x3
    beqz	$a7,.L0da84ec4
    # Line 808
    lw	$a6,312($a1)
.L0da84ea0:
    # Line 812
    lbu	$v1,0($a2)
    # Line 817
    addiu	$a4,$a4,1
    # Line 815
    addiu	$a6,$a6,2
    # Line 812
    sb	$v1,0($a3)
    # Line 813
    addiu	$a3,$a3,1
    # Line 816
    lh	$v0,-2($a6)
    addi	$a7,$a7,-1
    bnez	$a7,.L0da84ea0
    addu	$a2,$v0,$a2
.L0da84ec4:
    move	$t1,$a4
    move	$t3,$a2
    move	$t2,$a3
    move	$a7,$a6
    sra	$a0,$t0,0x2
    beqz	$a0,.L0da84f40
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t2
    move	$a4,$t3
.L0da84eec:
    # Line 812
    lbu	$a0,0($a4)
    sb	$a0,0($a2)
    # Line 816
    lh	$v1,0($a3)
    addu	$v1,$v1,$a4
    # Line 812
    lbu	$a0,0($v1)
    sb	$a0,1($a2)
    # Line 816
    lh	$v0,2($a3)
    addu	$v0,$v0,$v1
    # Line 812
    lbu	$v1,0($v0)
    sb	$v1,2($a2)
    # Line 816
    lh	$at,4($a3)
    addu	$at,$at,$v0
    # Line 812
    lbu	$v1,0($at)
    # Line 815
    addiu	$a3,$a3,8
    # Line 813
    addiu	$a2,$a2,4
    # Line 812
    sb	$v1,-1($a2)
    # Line 817
    addiu	$a1,$a1,4
    # Line 816
    lh	$a4,-2($a3)
    # Line 817
    slt	$v0,$a1,$a5
    bnez	$v0,.L0da84eec
    # Line 816
    addu	$a4,$a4,$at
.L0da84f40:
    # Line 819
    jr	$ra
    nop
.end __glSpanUnpackIndexUbyte

# Function: __glSpanUnpackRGBAubyte
# Declared: Line 833 (Source lines: 846-864)
# Address: 0x0da84f48 - 0x0da85040 (Size: 248 bytes, Frame: 0)
.globl __glSpanUnpackRGBAubyte
.ent __glSpanUnpackRGBAubyte
__glSpanUnpackRGBAubyte:
    # Line 846
    lw	$a5,180($a1)
    # Line 852
    li	$a7,1
    slt	$v0,$a5,$a7
    beqzl	$v0,.L0da84f5c
    move	$a7,$a5
.L0da84f5c:
    move	$a6,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0da84fa4
    # Line 850
    lw	$a4,312($a1)
    # Line 854
    lbu	$v1,0($a2)
    sb	$v1,0($a3)
    # Line 855
    lbu	$v0,1($a2)
    sb	$v0,1($a3)
    # Line 856
    lbu	$at,2($a2)
    sb	$at,2($a3)
    # Line 857
    lbu	$a0,3($a2)
    sb	$a0,3($a3)
    # Line 862
    addiu	$a6,$a6,1
    # Line 861
    lh	$v1,0($a4)
    # Line 860
    addiu	$a4,$a4,2
    # Line 858
    addiu	$a3,$a3,4
    # Line 861
    sll	$v1,$v1,0x2
    addu	$a2,$v1,$a2
.L0da84fa4:
    move	$t1,$a6
    move	$t0,$a4
    move	$t2,$a2
    move	$t3,$a3
    sra	$a0,$a7,0x1
    beqz	$a0,.L0da85038
    move	$a1,$t3
    move	$a4,$t0
    move	$a2,$t1
    move	$a3,$t2
.L0da84fcc:
    # Line 854
    lbu	$at,0($a3)
    sb	$at,0($a1)
    # Line 855
    lbu	$a0,1($a3)
    sb	$a0,1($a1)
    # Line 856
    lbu	$v1,2($a3)
    sb	$v1,2($a1)
    # Line 857
    lbu	$v0,3($a3)
    sb	$v0,3($a1)
    # Line 861
    lh	$at,0($a4)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    # Line 854
    lbu	$a3,0($at)
    sb	$a3,4($a1)
    # Line 855
    lbu	$a0,1($at)
    sb	$a0,5($a1)
    # Line 856
    lbu	$v1,2($at)
    sb	$v1,6($a1)
    # Line 857
    lbu	$v0,3($at)
    # Line 860
    addiu	$a4,$a4,4
    # Line 857
    sb	$v0,7($a1)
    # Line 858
    addiu	$a1,$a1,8
    # Line 861
    lh	$a3,-2($a4)
    # Line 862
    addiu	$a2,$a2,2
    slt	$v0,$a2,$a5
    # Line 861
    sll	$a3,$a3,0x2
    # Line 862
    bnez	$v0,.L0da84fcc
    # Line 861
    addu	$a3,$a3,$at
.L0da85038:
    # Line 864
    jr	$ra
    nop
.end __glSpanUnpackRGBAubyte

# Function: __glSpanSwapBytes2
# Declared: Line 871 (Source lines: 875-893)
# Address: 0x0da85040 - 0x0da85104 (Size: 196 bytes, Frame: 0)
.globl __glSpanSwapBytes2
.ent __glSpanSwapBytes2
__glSpanSwapBytes2:
    # Line 879
    lw	$v0,32($a1)
    # Line 875
    lw	$at,180($a1)
    # Line 885
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da850fc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85090
    move	$t1,$a5
.L0da85068:
    addiu	$a5,$a5,1
    # Line 891
    addiu	$a2,$a2,2
    # Line 890
    addiu	$a3,$a3,2
    # Line 886
    lbu	$a0,-2($a2)
    addi	$a1,$a1,-1
    # Line 888
    lbu	$v1,-1($a2)
    # Line 889
    sb	$a0,-1($a3)
    bnez	$a1,.L0da85068
    # Line 888
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0da85090:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0da850fc
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da850ac:
    lbu	$at,1($a2)
    # Line 886
    lbu	$a0,0($a2)
    # Line 888
    sb	$at,0($a3)
    # Line 889
    sb	$a0,1($a3)
    # Line 888
    lbu	$v1,3($a2)
    # Line 886
    lbu	$v0,2($a2)
    # Line 888
    sb	$v1,2($a3)
    # Line 889
    sb	$v0,3($a3)
    # Line 888
    lbu	$at,5($a2)
    # Line 886
    lbu	$a0,4($a2)
    # Line 891
    addiu	$a2,$a2,8
    # Line 888
    sb	$at,4($a3)
    # Line 889
    sb	$a0,5($a3)
    # Line 890
    addiu	$a3,$a3,8
    # Line 886
    lbu	$v1,-2($a2)
    # Line 885
    addiu	$a1,$a1,4
    # Line 888
    lbu	$v0,-1($a2)
    # Line 889
    sb	$v1,-1($a3)
    # Line 885
    bne	$a4,$a1,.L0da850ac
    # Line 888
    sb	$v0,-2($a3)
.L0da850fc:
    # Line 893
    jr	$ra
    nop
.end __glSpanSwapBytes2

# Function: __glSpanSwapBytes2Dst
# Declared: Line 901 (Source lines: 905-923)
# Address: 0x0da85104 - 0x0da851c8 (Size: 196 bytes, Frame: 0)
.globl __glSpanSwapBytes2Dst
.ent __glSpanSwapBytes2Dst
__glSpanSwapBytes2Dst:
    # Line 909
    lw	$v0,112($a1)
    # Line 905
    lw	$at,180($a1)
    # Line 915
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da851c0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85154
    move	$t1,$a5
.L0da8512c:
    addiu	$a5,$a5,1
    # Line 921
    addiu	$a2,$a2,2
    # Line 920
    addiu	$a3,$a3,2
    # Line 916
    lbu	$a0,-2($a2)
    addi	$a1,$a1,-1
    # Line 918
    lbu	$v1,-1($a2)
    # Line 919
    sb	$a0,-1($a3)
    bnez	$a1,.L0da8512c
    # Line 918
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0da85154:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0da851c0
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85170:
    lbu	$at,1($a2)
    # Line 916
    lbu	$a0,0($a2)
    # Line 918
    sb	$at,0($a3)
    # Line 919
    sb	$a0,1($a3)
    # Line 918
    lbu	$v1,3($a2)
    # Line 916
    lbu	$v0,2($a2)
    # Line 918
    sb	$v1,2($a3)
    # Line 919
    sb	$v0,3($a3)
    # Line 918
    lbu	$at,5($a2)
    # Line 916
    lbu	$a0,4($a2)
    # Line 921
    addiu	$a2,$a2,8
    # Line 918
    sb	$at,4($a3)
    # Line 919
    sb	$a0,5($a3)
    # Line 920
    addiu	$a3,$a3,8
    # Line 916
    lbu	$v1,-2($a2)
    # Line 915
    addiu	$a1,$a1,4
    # Line 918
    lbu	$v0,-1($a2)
    # Line 919
    sb	$v1,-1($a3)
    # Line 915
    bne	$a4,$a1,.L0da85170
    # Line 918
    sb	$v0,-2($a3)
.L0da851c0:
    # Line 923
    jr	$ra
    nop
.end __glSpanSwapBytes2Dst

# Function: __glSpanSwapAndSkipBytes2
# Declared: Line 930 (Source lines: 934-959)
# Address: 0x0da851c8 - 0x0da852cc (Size: 260 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes2
.ent __glSpanSwapAndSkipBytes2
__glSpanSwapAndSkipBytes2:
    # Line 940
    lw	$a6,312($a1)
    # Line 934
    lw	$t3,180($a1)
    # Line 939
    lw	$t8,20($a1)
    # Line 938
    lw	$a5,32($a1)
    # Line 946
    blez	$t3,.L0da852c4
    move	$a7,$zero
    b	.L0da852a8
    # Line 947
    move	$t0,$a5
.L0da851e8:
    addiu	$a1,$a1,1
.L0da851ec:
    # Line 953
    addiu	$a2,$a2,2
    # Line 952
    addiu	$a3,$a3,2
    # Line 948
    lbu	$v0,-2($a2)
    addi	$a4,$a4,-1
    # Line 950
    lbu	$at,-1($a2)
    # Line 951
    sb	$v0,-1($a3)
    bnez	$a4,.L0da851e8
    # Line 950
    sb	$at,-2($a3)
    move	$t1,$a1
.L0da85210:
    sra	$v1,$t0,0x2
    move	$t9,$a3
    beqz	$v1,.L0da85284
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0da8522c:
    lbu	$v1,1($a1)
    # Line 948
    lbu	$v0,0($a1)
    # Line 950
    sb	$v1,0($a4)
    # Line 951
    sb	$v0,1($a4)
    # Line 950
    lbu	$at,3($a1)
    # Line 948
    lbu	$a0,2($a1)
    # Line 950
    sb	$at,2($a4)
    # Line 951
    sb	$a0,3($a4)
    # Line 950
    lbu	$v1,5($a1)
    # Line 948
    lbu	$v0,4($a1)
    # Line 953
    addiu	$a1,$a1,8
    # Line 950
    sb	$v1,4($a4)
    # Line 951
    sb	$v0,5($a4)
    # Line 952
    addiu	$a4,$a4,8
    # Line 948
    lbu	$at,-2($a1)
    # Line 947
    addiu	$a2,$a2,4
    # Line 950
    lbu	$a0,-1($a1)
    # Line 951
    sb	$at,-1($a4)
    # Line 947
    bne	$a5,$a2,.L0da8522c
    # Line 950
    sb	$a0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0da85284:
    # Line 946
    addiu	$a7,$a7,1
    # Line 957
    lh	$at,0($a6)
    addiu	$at,$at,-1
    mult	$at,$t8
    # Line 956
    addiu	$a6,$a6,2
    # Line 957
    mflo	$a0
    # Line 946
    beq	$t3,$a7,.L0da852c4
    # Line 957
    addu	$a2,$a0,$a2
    # Line 947
    move	$t0,$a5
.L0da852a8:
    blez	$a5,.L0da85284
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85210
    move	$t1,$a1
    b	.L0da851ec
    addiu	$a1,$a1,1
.L0da852c4:
    # Line 959
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes2

# Function: __glSpanSwapBytes4
# Declared: Line 966 (Source lines: 970-992)
# Address: 0x0da852cc - 0x0da853e0 (Size: 276 bytes, Frame: 0)
.globl __glSpanSwapBytes4
.ent __glSpanSwapBytes4
__glSpanSwapBytes4:
    # Line 974
    lw	$v0,32($a1)
    # Line 970
    lw	$at,180($a1)
    # Line 980
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da853d8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da8532c
    move	$t1,$a5
.L0da852f4:
    addiu	$a5,$a5,1
    # Line 990
    addiu	$a2,$a2,4
    # Line 989
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 981
    lbu	$a0,-2($a2)
    # Line 983
    lbu	$v0,-4($a2)
    # Line 984
    lbu	$at,-3($a2)
    # Line 985
    lbu	$v1,-1($a2)
    # Line 988
    sb	$v0,-1($a3)
    # Line 987
    sb	$at,-2($a3)
    # Line 986
    sb	$a0,-3($a3)
    bnez	$a1,.L0da852f4
    # Line 985
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0da8532c:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da853d8
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85348:
    # Line 981
    lbu	$v0,2($a2)
    # Line 985
    lbu	$v1,3($a2)
    # Line 983
    lbu	$a0,0($a2)
    # Line 984
    lbu	$at,1($a2)
    # Line 985
    sb	$v1,0($a3)
    # Line 986
    sb	$v0,1($a3)
    # Line 987
    sb	$at,2($a3)
    # Line 988
    sb	$a0,3($a3)
    # Line 990
    addiu	$a2,$a2,16
    # Line 981
    lbu	$v0,-10($a2)
    # Line 985
    lbu	$v1,-9($a2)
    # Line 983
    lbu	$a0,-12($a2)
    # Line 984
    lbu	$at,-11($a2)
    # Line 985
    sb	$v1,4($a3)
    # Line 986
    sb	$v0,5($a3)
    # Line 987
    sb	$at,6($a3)
    # Line 988
    sb	$a0,7($a3)
    # Line 989
    addiu	$a3,$a3,16
    # Line 981
    lbu	$v0,-6($a2)
    # Line 985
    lbu	$v1,-5($a2)
    # Line 983
    lbu	$a0,-8($a2)
    # Line 984
    lbu	$at,-7($a2)
    # Line 985
    sb	$v1,-8($a3)
    # Line 986
    sb	$v0,-7($a3)
    # Line 987
    sb	$at,-6($a3)
    # Line 988
    sb	$a0,-5($a3)
    # Line 980
    addiu	$a1,$a1,4
    # Line 981
    lbu	$at,-2($a2)
    # Line 983
    lbu	$v1,-4($a2)
    # Line 984
    lbu	$v0,-3($a2)
    # Line 985
    lbu	$a0,-1($a2)
    # Line 988
    sb	$v1,-1($a3)
    # Line 987
    sb	$v0,-2($a3)
    # Line 986
    sb	$at,-3($a3)
    # Line 980
    bne	$a4,$a1,.L0da85348
    # Line 985
    sb	$a0,-4($a3)
.L0da853d8:
    # Line 992
    jr	$ra
    nop
.end __glSpanSwapBytes4

# Function: __glSpanSwapBytes4Dst
# Declared: Line 1000 (Source lines: 1004-1026)
# Address: 0x0da853e0 - 0x0da854f4 (Size: 276 bytes, Frame: 0)
.globl __glSpanSwapBytes4Dst
.ent __glSpanSwapBytes4Dst
__glSpanSwapBytes4Dst:
    # Line 1008
    lw	$v0,112($a1)
    # Line 1004
    lw	$at,180($a1)
    # Line 1014
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da854ec
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85440
    move	$t1,$a5
.L0da85408:
    addiu	$a5,$a5,1
    # Line 1024
    addiu	$a2,$a2,4
    # Line 1023
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1015
    lbu	$a0,-2($a2)
    # Line 1017
    lbu	$v0,-4($a2)
    # Line 1018
    lbu	$at,-3($a2)
    # Line 1019
    lbu	$v1,-1($a2)
    # Line 1022
    sb	$v0,-1($a3)
    # Line 1021
    sb	$at,-2($a3)
    # Line 1020
    sb	$a0,-3($a3)
    bnez	$a1,.L0da85408
    # Line 1019
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0da85440:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da854ec
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da8545c:
    # Line 1015
    lbu	$v0,2($a2)
    # Line 1019
    lbu	$v1,3($a2)
    # Line 1017
    lbu	$a0,0($a2)
    # Line 1018
    lbu	$at,1($a2)
    # Line 1019
    sb	$v1,0($a3)
    # Line 1020
    sb	$v0,1($a3)
    # Line 1021
    sb	$at,2($a3)
    # Line 1022
    sb	$a0,3($a3)
    # Line 1024
    addiu	$a2,$a2,16
    # Line 1015
    lbu	$v0,-10($a2)
    # Line 1019
    lbu	$v1,-9($a2)
    # Line 1017
    lbu	$a0,-12($a2)
    # Line 1018
    lbu	$at,-11($a2)
    # Line 1019
    sb	$v1,4($a3)
    # Line 1020
    sb	$v0,5($a3)
    # Line 1021
    sb	$at,6($a3)
    # Line 1022
    sb	$a0,7($a3)
    # Line 1023
    addiu	$a3,$a3,16
    # Line 1015
    lbu	$v0,-6($a2)
    # Line 1019
    lbu	$v1,-5($a2)
    # Line 1017
    lbu	$a0,-8($a2)
    # Line 1018
    lbu	$at,-7($a2)
    # Line 1019
    sb	$v1,-8($a3)
    # Line 1020
    sb	$v0,-7($a3)
    # Line 1021
    sb	$at,-6($a3)
    # Line 1022
    sb	$a0,-5($a3)
    # Line 1014
    addiu	$a1,$a1,4
    # Line 1015
    lbu	$at,-2($a2)
    # Line 1017
    lbu	$v1,-4($a2)
    # Line 1018
    lbu	$v0,-3($a2)
    # Line 1019
    lbu	$a0,-1($a2)
    # Line 1022
    sb	$v1,-1($a3)
    # Line 1021
    sb	$v0,-2($a3)
    # Line 1020
    sb	$at,-3($a3)
    # Line 1014
    bne	$a4,$a1,.L0da8545c
    # Line 1019
    sb	$a0,-4($a3)
.L0da854ec:
    # Line 1026
    jr	$ra
    nop
.end __glSpanSwapBytes4Dst

# Function: __glSpanSwapAndSkipBytes4
# Declared: Line 1033 (Source lines: 1037-1066)
# Address: 0x0da854f4 - 0x0da85648 (Size: 340 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes4
.ent __glSpanSwapAndSkipBytes4
__glSpanSwapAndSkipBytes4:
    # Line 1043
    lw	$a6,312($a1)
    # Line 1037
    lw	$t3,180($a1)
    # Line 1042
    lw	$t8,20($a1)
    # Line 1041
    lw	$a5,32($a1)
    # Line 1049
    blez	$t3,.L0da85640
    move	$a7,$zero
    b	.L0da85624
    # Line 1050
    move	$t0,$a5
.L0da85514:
    addiu	$a1,$a1,1
.L0da85518:
    # Line 1053
    lbu	$a0,3($a2)
    # Line 1051
    lbu	$v1,2($a2)
    # Line 1060
    addiu	$a2,$a2,4
    # Line 1053
    sb	$a0,0($a3)
    # Line 1054
    sb	$v1,1($a3)
    # Line 1059
    addiu	$a3,$a3,4
    # Line 1055
    lbu	$v0,-4($a2)
    addi	$a4,$a4,-1
    # Line 1057
    lbu	$at,-3($a2)
    # Line 1058
    sb	$v0,-1($a3)
    bnez	$a4,.L0da85514
    # Line 1057
    sb	$at,-2($a3)
    move	$t1,$a1
.L0da8554c:
    sra	$at,$t0,0x2
    move	$t9,$a3
    beqz	$at,.L0da85600
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0da85568:
    # Line 1053
    lbu	$at,3($a1)
    # Line 1051
    lbu	$a0,2($a1)
    # Line 1053
    sb	$at,0($a4)
    # Line 1054
    sb	$a0,1($a4)
    # Line 1057
    lbu	$v1,1($a1)
    # Line 1055
    lbu	$v0,0($a1)
    # Line 1057
    sb	$v1,2($a4)
    # Line 1058
    sb	$v0,3($a4)
    # Line 1053
    lbu	$at,7($a1)
    # Line 1051
    lbu	$a0,6($a1)
    # Line 1053
    sb	$at,4($a4)
    # Line 1054
    sb	$a0,5($a4)
    # Line 1057
    lbu	$v1,5($a1)
    # Line 1055
    lbu	$v0,4($a1)
    # Line 1057
    sb	$v1,6($a4)
    # Line 1058
    sb	$v0,7($a4)
    # Line 1053
    lbu	$at,11($a1)
    # Line 1051
    lbu	$a0,10($a1)
    # Line 1053
    sb	$at,8($a4)
    # Line 1054
    sb	$a0,9($a4)
    # Line 1057
    lbu	$v1,9($a1)
    # Line 1055
    lbu	$v0,8($a1)
    # Line 1057
    sb	$v1,10($a4)
    # Line 1058
    sb	$v0,11($a4)
    # Line 1053
    lbu	$at,15($a1)
    # Line 1051
    lbu	$a0,14($a1)
    # Line 1060
    addiu	$a1,$a1,16
    # Line 1053
    sb	$at,12($a4)
    # Line 1054
    sb	$a0,13($a4)
    # Line 1059
    addiu	$a4,$a4,16
    # Line 1055
    lbu	$v1,-4($a1)
    # Line 1050
    addiu	$a2,$a2,4
    # Line 1057
    lbu	$v0,-3($a1)
    # Line 1058
    sb	$v1,-1($a4)
    # Line 1050
    bne	$a5,$a2,.L0da85568
    # Line 1057
    sb	$v0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0da85600:
    # Line 1049
    addiu	$a7,$a7,1
    # Line 1064
    lh	$v1,0($a6)
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    # Line 1063
    addiu	$a6,$a6,2
    # Line 1064
    mflo	$v0
    # Line 1049
    beq	$t3,$a7,.L0da85640
    # Line 1064
    addu	$a2,$v0,$a2
    # Line 1050
    move	$t0,$a5
.L0da85624:
    blez	$a5,.L0da85600
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da8554c
    move	$t1,$a1
    b	.L0da85518
    addiu	$a1,$a1,1
.L0da85640:
    # Line 1066
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes4

# Function: __glSpanSkipPixels1
# Declared: Line 1073 (Source lines: 1077-1096)
# Address: 0x0da85648 - 0x0da85724 (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels1
.ent __glSpanSkipPixels1
__glSpanSkipPixels1:
    # Line 1082
    lw	$a6,312($a1)
    # Line 1077
    lw	$t3,180($a1)
    # Line 1081
    lw	$t8,20($a1)
    # Line 1080
    lw	$a5,32($a1)
    # Line 1088
    blez	$t3,.L0da8571c
    move	$a7,$zero
    b	.L0da85700
    # Line 1089
    move	$t0,$a5
.L0da85668:
    addiu	$a1,$a1,1
.L0da8566c:
    # Line 1090
    addiu	$a3,$a3,1
    addiu	$a2,$a2,1
    lbu	$at,-1($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da85668
    sb	$at,-1($a3)
    move	$t1,$a1
.L0da85688:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0da856dc
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0da856a4:
    lbu	$v0,0($a4)
    sb	$v0,0($a1)
    lbu	$at,1($a4)
    sb	$at,1($a1)
    lbu	$a0,2($a4)
    addiu	$a1,$a1,4
    sb	$a0,-2($a1)
    addiu	$a4,$a4,4
    lbu	$v1,-1($a4)
    # Line 1089
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da856a4
    # Line 1090
    sb	$v1,-1($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0da856dc:
    # Line 1088
    addiu	$a7,$a7,1
    # Line 1094
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1093
    addiu	$a6,$a6,2
    # Line 1094
    mflo	$v1
    # Line 1088
    beq	$t3,$a7,.L0da8571c
    # Line 1094
    addu	$a2,$v1,$a2
    # Line 1089
    move	$t0,$a5
.L0da85700:
    blez	$a5,.L0da856dc
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85688
    move	$t1,$a1
    b	.L0da8566c
    addiu	$a1,$a1,1
.L0da8571c:
    # Line 1096
    jr	$ra
    nop
.end __glSpanSkipPixels1

# Function: __glSpanSkipPixels2
# Declared: Line 1104 (Source lines: 1108-1127)
# Address: 0x0da85724 - 0x0da85800 (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels2
.ent __glSpanSkipPixels2
__glSpanSkipPixels2:
    # Line 1113
    lw	$a6,312($a1)
    # Line 1108
    lw	$t3,180($a1)
    # Line 1112
    lw	$t8,20($a1)
    # Line 1111
    lw	$a5,32($a1)
    # Line 1119
    blez	$t3,.L0da857f8
    move	$a7,$zero
    b	.L0da857dc
    # Line 1120
    move	$t0,$a5
.L0da85744:
    addiu	$a1,$a1,1
.L0da85748:
    # Line 1121
    addiu	$a3,$a3,2
    addiu	$a2,$a2,2
    lhu	$at,-2($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da85744
    sh	$at,-2($a3)
    move	$t1,$a1
.L0da85764:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0da857b8
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0da85780:
    lhu	$v0,0($a4)
    sh	$v0,0($a1)
    lhu	$at,2($a4)
    sh	$at,2($a1)
    lhu	$a0,4($a4)
    addiu	$a1,$a1,8
    sh	$a0,-4($a1)
    addiu	$a4,$a4,8
    lhu	$v1,-2($a4)
    # Line 1120
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da85780
    # Line 1121
    sh	$v1,-2($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0da857b8:
    # Line 1119
    addiu	$a7,$a7,1
    # Line 1125
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1124
    addiu	$a6,$a6,2
    # Line 1125
    mflo	$v1
    # Line 1119
    beq	$t3,$a7,.L0da857f8
    # Line 1125
    addu	$a2,$v1,$a2
    # Line 1120
    move	$t0,$a5
.L0da857dc:
    blez	$a5,.L0da857b8
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85764
    move	$t1,$a1
    b	.L0da85748
    addiu	$a1,$a1,1
.L0da857f8:
    # Line 1127
    jr	$ra
    nop
.end __glSpanSkipPixels2

# Function: __glSpanSkipPixels4
# Declared: Line 1135 (Source lines: 1139-1158)
# Address: 0x0da85800 - 0x0da858dc (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels4
.ent __glSpanSkipPixels4
__glSpanSkipPixels4:
    # Line 1144
    lw	$a6,312($a1)
    # Line 1139
    lw	$t3,180($a1)
    # Line 1143
    lw	$t8,20($a1)
    # Line 1142
    lw	$a5,32($a1)
    # Line 1150
    blez	$t3,.L0da858d4
    move	$a7,$zero
    b	.L0da858b8
    # Line 1151
    move	$t0,$a5
.L0da85820:
    addiu	$a1,$a1,1
.L0da85824:
    # Line 1152
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da85820
    sw	$at,-4($a3)
    move	$t1,$a1
.L0da85840:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0da85894
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0da8585c:
    lw	$v0,0($a4)
    sw	$v0,0($a1)
    lw	$at,4($a4)
    sw	$at,4($a1)
    lw	$a0,8($a4)
    addiu	$a1,$a1,16
    sw	$a0,-8($a1)
    addiu	$a4,$a4,16
    lw	$v1,-4($a4)
    # Line 1151
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da8585c
    # Line 1152
    sw	$v1,-4($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0da85894:
    # Line 1150
    addiu	$a7,$a7,1
    # Line 1156
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1155
    addiu	$a6,$a6,2
    # Line 1156
    mflo	$v1
    # Line 1150
    beq	$t3,$a7,.L0da858d4
    # Line 1156
    addu	$a2,$v1,$a2
    # Line 1151
    move	$t0,$a5
.L0da858b8:
    blez	$a5,.L0da85894
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85840
    move	$t1,$a1
    b	.L0da85824
    addiu	$a1,$a1,1
.L0da858d4:
    # Line 1158
    jr	$ra
    nop
.end __glSpanSkipPixels4

# Function: __glSpanSlowSkipPixels2
# Declared: Line 1166 (Source lines: 1170-1195)
# Address: 0x0da858dc - 0x0da859e0 (Size: 260 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels2
.ent __glSpanSlowSkipPixels2
__glSpanSlowSkipPixels2:
    # Line 1176
    lw	$a6,312($a1)
    # Line 1170
    lw	$t3,180($a1)
    # Line 1175
    lw	$t8,20($a1)
    # Line 1174
    lw	$a5,32($a1)
    # Line 1182
    blez	$t3,.L0da859d8
    move	$a7,$zero
    b	.L0da859bc
    # Line 1183
    move	$t0,$a5
.L0da858fc:
    addiu	$a1,$a1,1
.L0da85900:
    # Line 1189
    addiu	$a2,$a2,2
    # Line 1188
    addiu	$a3,$a3,2
    # Line 1185
    lbu	$v0,-1($a2)
    addi	$a4,$a4,-1
    # Line 1186
    lbu	$at,-2($a2)
    # Line 1187
    sb	$v0,-1($a3)
    bnez	$a4,.L0da858fc
    # Line 1186
    sb	$at,-2($a3)
    move	$t1,$a1
.L0da85924:
    sra	$v1,$t0,0x2
    move	$t9,$a3
    beqz	$v1,.L0da85998
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0da85940:
    lbu	$v1,0($a1)
    # Line 1185
    lbu	$v0,1($a1)
    # Line 1186
    sb	$v1,0($a4)
    # Line 1187
    sb	$v0,1($a4)
    # Line 1186
    lbu	$at,2($a1)
    # Line 1185
    lbu	$a0,3($a1)
    # Line 1186
    sb	$at,2($a4)
    # Line 1187
    sb	$a0,3($a4)
    # Line 1186
    lbu	$v1,4($a1)
    # Line 1185
    lbu	$v0,5($a1)
    # Line 1189
    addiu	$a1,$a1,8
    # Line 1186
    sb	$v1,4($a4)
    # Line 1187
    sb	$v0,5($a4)
    # Line 1188
    addiu	$a4,$a4,8
    # Line 1185
    lbu	$at,-1($a1)
    # Line 1183
    addiu	$a2,$a2,4
    # Line 1186
    lbu	$a0,-2($a1)
    # Line 1187
    sb	$at,-1($a4)
    # Line 1183
    bne	$a5,$a2,.L0da85940
    # Line 1186
    sb	$a0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0da85998:
    # Line 1182
    addiu	$a7,$a7,1
    # Line 1193
    lh	$at,0($a6)
    addiu	$at,$at,-1
    mult	$at,$t8
    # Line 1192
    addiu	$a6,$a6,2
    # Line 1193
    mflo	$a0
    # Line 1182
    beq	$t3,$a7,.L0da859d8
    # Line 1193
    addu	$a2,$a0,$a2
    # Line 1183
    move	$t0,$a5
.L0da859bc:
    blez	$a5,.L0da85998
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85924
    move	$t1,$a1
    b	.L0da85900
    addiu	$a1,$a1,1
.L0da859d8:
    # Line 1195
    jr	$ra
    nop
.end __glSpanSlowSkipPixels2

# Function: __glSpanSlowSkipPixels4
# Declared: Line 1203 (Source lines: 1207-1236)
# Address: 0x0da859e0 - 0x0da85b34 (Size: 340 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels4
.ent __glSpanSlowSkipPixels4
__glSpanSlowSkipPixels4:
    # Line 1213
    lw	$a6,312($a1)
    # Line 1207
    lw	$t3,180($a1)
    # Line 1212
    lw	$t8,20($a1)
    # Line 1211
    lw	$a5,32($a1)
    # Line 1219
    blez	$t3,.L0da85b2c
    move	$a7,$zero
    b	.L0da85b10
    # Line 1220
    move	$t0,$a5
.L0da85a00:
    addiu	$a1,$a1,1
.L0da85a04:
    # Line 1230
    addiu	$a2,$a2,4
    # Line 1229
    addiu	$a3,$a3,4
    addi	$a4,$a4,-1
    # Line 1222
    lbu	$v0,-3($a2)
    # Line 1224
    lbu	$a0,-1($a2)
    # Line 1223
    lbu	$v1,-2($a2)
    # Line 1225
    lbu	$at,-4($a2)
    # Line 1228
    sb	$a0,-1($a3)
    # Line 1227
    sb	$v1,-2($a3)
    # Line 1226
    sb	$v0,-3($a3)
    bnez	$a4,.L0da85a00
    # Line 1225
    sb	$at,-4($a3)
    move	$t1,$a1
.L0da85a38:
    sra	$at,$t0,0x2
    move	$t9,$a3
    beqz	$at,.L0da85aec
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0da85a54:
    # Line 1222
    lbu	$a0,1($a1)
    # Line 1225
    lbu	$at,0($a1)
    # Line 1223
    lbu	$v1,2($a1)
    # Line 1224
    lbu	$v0,3($a1)
    # Line 1225
    sb	$at,0($a4)
    # Line 1226
    sb	$a0,1($a4)
    # Line 1227
    sb	$v1,2($a4)
    # Line 1228
    sb	$v0,3($a4)
    # Line 1230
    addiu	$a1,$a1,16
    # Line 1222
    lbu	$a0,-11($a1)
    # Line 1225
    lbu	$at,-12($a1)
    # Line 1223
    lbu	$v1,-10($a1)
    # Line 1224
    lbu	$v0,-9($a1)
    # Line 1225
    sb	$at,4($a4)
    # Line 1226
    sb	$a0,5($a4)
    # Line 1227
    sb	$v1,6($a4)
    # Line 1228
    sb	$v0,7($a4)
    # Line 1229
    addiu	$a4,$a4,16
    # Line 1222
    lbu	$a0,-7($a1)
    # Line 1225
    lbu	$at,-8($a1)
    # Line 1223
    lbu	$v1,-6($a1)
    # Line 1224
    lbu	$v0,-5($a1)
    # Line 1225
    sb	$at,-8($a4)
    # Line 1226
    sb	$a0,-7($a4)
    # Line 1227
    sb	$v1,-6($a4)
    # Line 1228
    sb	$v0,-5($a4)
    # Line 1220
    addiu	$a2,$a2,4
    # Line 1222
    lbu	$v1,-3($a1)
    # Line 1224
    lbu	$at,-1($a1)
    # Line 1223
    lbu	$a0,-2($a1)
    # Line 1225
    lbu	$v0,-4($a1)
    # Line 1228
    sb	$at,-1($a4)
    # Line 1227
    sb	$a0,-2($a4)
    # Line 1226
    sb	$v1,-3($a4)
    # Line 1220
    bne	$a5,$a2,.L0da85a54
    # Line 1225
    sb	$v0,-4($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0da85aec:
    # Line 1219
    addiu	$a7,$a7,1
    # Line 1234
    lh	$v1,0($a6)
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    # Line 1233
    addiu	$a6,$a6,2
    # Line 1234
    mflo	$v0
    # Line 1219
    beq	$t3,$a7,.L0da85b2c
    # Line 1234
    addu	$a2,$v0,$a2
    # Line 1220
    move	$t0,$a5
.L0da85b10:
    blez	$a5,.L0da85aec
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85a38
    move	$t1,$a1
    b	.L0da85a04
    addiu	$a1,$a1,1
.L0da85b2c:
    # Line 1236
    jr	$ra
    nop
.end __glSpanSlowSkipPixels4

# Function: __glSpanAlignPixels2
# Declared: Line 1243 (Source lines: 1247-1266)
# Address: 0x0da85b34 - 0x0da85bf8 (Size: 196 bytes, Frame: 0)
.globl __glSpanAlignPixels2
.ent __glSpanAlignPixels2
__glSpanAlignPixels2:
    # Line 1251
    lw	$v0,32($a1)
    # Line 1247
    lw	$at,180($a1)
    # Line 1258
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da85bf0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85b84
    move	$t1,$a5
.L0da85b5c:
    addiu	$a5,$a5,1
    # Line 1264
    addiu	$a2,$a2,2
    # Line 1263
    addiu	$a3,$a3,2
    # Line 1260
    lbu	$a0,-1($a2)
    addi	$a1,$a1,-1
    # Line 1261
    lbu	$v1,-2($a2)
    # Line 1262
    sb	$a0,-1($a3)
    bnez	$a1,.L0da85b5c
    # Line 1261
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0da85b84:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0da85bf0
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85ba0:
    lbu	$at,0($a2)
    # Line 1260
    lbu	$a0,1($a2)
    # Line 1261
    sb	$at,0($a3)
    # Line 1262
    sb	$a0,1($a3)
    # Line 1261
    lbu	$v1,2($a2)
    # Line 1260
    lbu	$v0,3($a2)
    # Line 1261
    sb	$v1,2($a3)
    # Line 1262
    sb	$v0,3($a3)
    # Line 1261
    lbu	$at,4($a2)
    # Line 1260
    lbu	$a0,5($a2)
    # Line 1264
    addiu	$a2,$a2,8
    # Line 1261
    sb	$at,4($a3)
    # Line 1262
    sb	$a0,5($a3)
    # Line 1263
    addiu	$a3,$a3,8
    # Line 1260
    lbu	$v1,-1($a2)
    # Line 1258
    addiu	$a1,$a1,4
    # Line 1261
    lbu	$v0,-2($a2)
    # Line 1262
    sb	$v1,-1($a3)
    # Line 1258
    bne	$a4,$a1,.L0da85ba0
    # Line 1261
    sb	$v0,-2($a3)
.L0da85bf0:
    # Line 1266
    jr	$ra
    nop
.end __glSpanAlignPixels2

# Function: __glSpanAlignPixels2Dst
# Declared: Line 1274 (Source lines: 1278-1297)
# Address: 0x0da85bf8 - 0x0da85cbc (Size: 196 bytes, Frame: 0)
.globl __glSpanAlignPixels2Dst
.ent __glSpanAlignPixels2Dst
__glSpanAlignPixels2Dst:
    # Line 1282
    lw	$v0,112($a1)
    # Line 1278
    lw	$at,180($a1)
    # Line 1289
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da85cb4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85c48
    move	$t1,$a5
.L0da85c20:
    addiu	$a5,$a5,1
    # Line 1295
    addiu	$a2,$a2,2
    # Line 1294
    addiu	$a3,$a3,2
    # Line 1291
    lbu	$a0,-1($a2)
    addi	$a1,$a1,-1
    # Line 1292
    lbu	$v1,-2($a2)
    # Line 1293
    sb	$a0,-1($a3)
    bnez	$a1,.L0da85c20
    # Line 1292
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0da85c48:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0da85cb4
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85c64:
    lbu	$at,0($a2)
    # Line 1291
    lbu	$a0,1($a2)
    # Line 1292
    sb	$at,0($a3)
    # Line 1293
    sb	$a0,1($a3)
    # Line 1292
    lbu	$v1,2($a2)
    # Line 1291
    lbu	$v0,3($a2)
    # Line 1292
    sb	$v1,2($a3)
    # Line 1293
    sb	$v0,3($a3)
    # Line 1292
    lbu	$at,4($a2)
    # Line 1291
    lbu	$a0,5($a2)
    # Line 1295
    addiu	$a2,$a2,8
    # Line 1292
    sb	$at,4($a3)
    # Line 1293
    sb	$a0,5($a3)
    # Line 1294
    addiu	$a3,$a3,8
    # Line 1291
    lbu	$v1,-1($a2)
    # Line 1289
    addiu	$a1,$a1,4
    # Line 1292
    lbu	$v0,-2($a2)
    # Line 1293
    sb	$v1,-1($a3)
    # Line 1289
    bne	$a4,$a1,.L0da85c64
    # Line 1292
    sb	$v0,-2($a3)
.L0da85cb4:
    # Line 1297
    jr	$ra
    nop
.end __glSpanAlignPixels2Dst

# Function: __glSpanAlignPixels4
# Declared: Line 1304 (Source lines: 1308-1331)
# Address: 0x0da85cbc - 0x0da85dd0 (Size: 276 bytes, Frame: 0)
.globl __glSpanAlignPixels4
.ent __glSpanAlignPixels4
__glSpanAlignPixels4:
    # Line 1312
    lw	$v0,32($a1)
    # Line 1308
    lw	$at,180($a1)
    # Line 1319
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da85dc8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85d1c
    move	$t1,$a5
.L0da85ce4:
    addiu	$a5,$a5,1
    # Line 1329
    addiu	$a2,$a2,4
    # Line 1328
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1321
    lbu	$a0,-3($a2)
    # Line 1323
    lbu	$v0,-1($a2)
    # Line 1322
    lbu	$at,-2($a2)
    # Line 1324
    lbu	$v1,-4($a2)
    # Line 1327
    sb	$v0,-1($a3)
    # Line 1326
    sb	$at,-2($a3)
    # Line 1325
    sb	$a0,-3($a3)
    bnez	$a1,.L0da85ce4
    # Line 1324
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0da85d1c:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da85dc8
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85d38:
    # Line 1321
    lbu	$v0,1($a2)
    # Line 1324
    lbu	$v1,0($a2)
    # Line 1322
    lbu	$at,2($a2)
    # Line 1323
    lbu	$a0,3($a2)
    # Line 1324
    sb	$v1,0($a3)
    # Line 1325
    sb	$v0,1($a3)
    # Line 1326
    sb	$at,2($a3)
    # Line 1327
    sb	$a0,3($a3)
    # Line 1329
    addiu	$a2,$a2,16
    # Line 1321
    lbu	$v0,-11($a2)
    # Line 1324
    lbu	$v1,-12($a2)
    # Line 1322
    lbu	$at,-10($a2)
    # Line 1323
    lbu	$a0,-9($a2)
    # Line 1324
    sb	$v1,4($a3)
    # Line 1325
    sb	$v0,5($a3)
    # Line 1326
    sb	$at,6($a3)
    # Line 1327
    sb	$a0,7($a3)
    # Line 1328
    addiu	$a3,$a3,16
    # Line 1321
    lbu	$v0,-7($a2)
    # Line 1324
    lbu	$v1,-8($a2)
    # Line 1322
    lbu	$at,-6($a2)
    # Line 1323
    lbu	$a0,-5($a2)
    # Line 1324
    sb	$v1,-8($a3)
    # Line 1325
    sb	$v0,-7($a3)
    # Line 1326
    sb	$at,-6($a3)
    # Line 1327
    sb	$a0,-5($a3)
    # Line 1319
    addiu	$a1,$a1,4
    # Line 1321
    lbu	$at,-3($a2)
    # Line 1323
    lbu	$v1,-1($a2)
    # Line 1322
    lbu	$v0,-2($a2)
    # Line 1324
    lbu	$a0,-4($a2)
    # Line 1327
    sb	$v1,-1($a3)
    # Line 1326
    sb	$v0,-2($a3)
    # Line 1325
    sb	$at,-3($a3)
    # Line 1319
    bne	$a4,$a1,.L0da85d38
    # Line 1324
    sb	$a0,-4($a3)
.L0da85dc8:
    # Line 1331
    jr	$ra
    nop
.end __glSpanAlignPixels4

# Function: __glSpanAlignPixels4Dst
# Declared: Line 1339 (Source lines: 1343-1366)
# Address: 0x0da85dd0 - 0x0da85ee4 (Size: 276 bytes, Frame: 0)
.globl __glSpanAlignPixels4Dst
.ent __glSpanAlignPixels4Dst
__glSpanAlignPixels4Dst:
    # Line 1347
    lw	$v0,112($a1)
    # Line 1343
    lw	$at,180($a1)
    # Line 1354
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da85edc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da85e30
    move	$t1,$a5
.L0da85df8:
    addiu	$a5,$a5,1
    # Line 1364
    addiu	$a2,$a2,4
    # Line 1363
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1356
    lbu	$a0,-3($a2)
    # Line 1358
    lbu	$v0,-1($a2)
    # Line 1357
    lbu	$at,-2($a2)
    # Line 1359
    lbu	$v1,-4($a2)
    # Line 1362
    sb	$v0,-1($a3)
    # Line 1361
    sb	$at,-2($a3)
    # Line 1360
    sb	$a0,-3($a3)
    bnez	$a1,.L0da85df8
    # Line 1359
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0da85e30:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da85edc
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da85e4c:
    # Line 1356
    lbu	$v0,1($a2)
    # Line 1359
    lbu	$v1,0($a2)
    # Line 1357
    lbu	$at,2($a2)
    # Line 1358
    lbu	$a0,3($a2)
    # Line 1359
    sb	$v1,0($a3)
    # Line 1360
    sb	$v0,1($a3)
    # Line 1361
    sb	$at,2($a3)
    # Line 1362
    sb	$a0,3($a3)
    # Line 1364
    addiu	$a2,$a2,16
    # Line 1356
    lbu	$v0,-11($a2)
    # Line 1359
    lbu	$v1,-12($a2)
    # Line 1357
    lbu	$at,-10($a2)
    # Line 1358
    lbu	$a0,-9($a2)
    # Line 1359
    sb	$v1,4($a3)
    # Line 1360
    sb	$v0,5($a3)
    # Line 1361
    sb	$at,6($a3)
    # Line 1362
    sb	$a0,7($a3)
    # Line 1363
    addiu	$a3,$a3,16
    # Line 1356
    lbu	$v0,-7($a2)
    # Line 1359
    lbu	$v1,-8($a2)
    # Line 1357
    lbu	$at,-6($a2)
    # Line 1358
    lbu	$a0,-5($a2)
    # Line 1359
    sb	$v1,-8($a3)
    # Line 1360
    sb	$v0,-7($a3)
    # Line 1361
    sb	$at,-6($a3)
    # Line 1362
    sb	$a0,-5($a3)
    # Line 1354
    addiu	$a1,$a1,4
    # Line 1356
    lbu	$at,-3($a2)
    # Line 1358
    lbu	$v1,-1($a2)
    # Line 1357
    lbu	$v0,-2($a2)
    # Line 1359
    lbu	$a0,-4($a2)
    # Line 1362
    sb	$v1,-1($a3)
    # Line 1361
    sb	$v0,-2($a3)
    # Line 1360
    sb	$at,-3($a3)
    # Line 1354
    bne	$a4,$a1,.L0da85e4c
    # Line 1359
    sb	$a0,-4($a3)
.L0da85edc:
    # Line 1366
    jr	$ra
    nop
.end __glSpanAlignPixels4Dst

# Function: __glSpanUnpackUbyte
# Declared: Line 1373 (Source lines: 1377-1389)
# Address: 0x0da85ee4 - 0x0da85fbc (Size: 216 bytes, Frame: 0)
.globl __glSpanUnpackUbyte
.ent __glSpanUnpackUbyte
__glSpanUnpackUbyte:
    # Line 1380
    lw	$v0,28($a1)
    # Line 1377
    lw	$at,180($a1)
    # Line 1386
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0da85fb4
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da85f38
    move	$t0,$a6
.L0da85f0c:
    addiu	$a6,$a6,1
    # Line 1387
    lbu	$v1,0($a2)
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f0,3528($v1)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da85f0c
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da85f38:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0da85fb4
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0da85f54:
    lbu	$a1,0($a2)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lwc1	$f0,3528($a1)
    swc1	$f0,0($a4)
    lbu	$v1,1($a2)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f3,3528($v1)
    swc1	$f3,4($a4)
    lbu	$v0,2($a2)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f2,3528($v0)
    swc1	$f2,8($a4)
    lbu	$at,3($a2)
    addiu	$a4,$a4,16
    addiu	$a2,$a2,4
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f1,3528($at)
    # Line 1386
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0da85f54
    # Line 1387
    swc1	$f1,-4($a4)
.L0da85fb4:
    # Line 1389
    jr	$ra
    nop
.end __glSpanUnpackUbyte

# Function: __glSpanUnpackByte
# Declared: Line 1396 (Source lines: 1400-1412)
# Address: 0x0da85fbc - 0x0da860e4 (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackByte
.ent __glSpanUnpackByte
__glSpanUnpackByte:
    # Line 1403
    lw	$v0,28($a1)
    # Line 1400
    lw	$at,180($a1)
    # Line 1409
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0da860dc
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da86020
    move	$t0,$a6
.L0da85fe4:
    # Line 1410
    lb	$v1,0($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    # Line 1409
    addiu	$a6,$a6,1
    # Line 1410
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a4,$a4,-1
    bnez	$a4,.L0da85fe4
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da86020:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0da860dc
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0da8603c:
    lb	$a1,0($a2)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lb	$v1,1($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lb	$v0,2($a2)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lb	$at,3($a2)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,4
    # Line 1409
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0da8603c
    # Line 1410
    swc1	$f2,-4($a4)
.L0da860dc:
    # Line 1412
    jr	$ra
    nop
.end __glSpanUnpackByte

# Function: __glSpanUnpackUshort
# Declared: Line 1419 (Source lines: 1423-1435)
# Address: 0x0da860e4 - 0x0da861e4 (Size: 256 bytes, Frame: 0)
.globl __glSpanUnpackUshort
.ent __glSpanUnpackUshort
__glSpanUnpackUshort:
    # Line 1426
    lw	$v0,28($a1)
    # Line 1423
    lw	$at,180($a1)
    # Line 1432
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0da861dc
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da86140
    move	$t0,$a6
.L0da8610c:
    # Line 1433
    lhu	$v1,0($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    # Line 1432
    addiu	$a6,$a6,1
    # Line 1433
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a4,$a4,-1
    bnez	$a4,.L0da8610c
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da86140:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0da861dc
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0da8615c:
    lhu	$a1,0($a2)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lhu	$v1,2($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lhu	$v0,4($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lhu	$at,6($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,8
    # Line 1432
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0da8615c
    # Line 1433
    swc1	$f2,-4($a4)
.L0da861dc:
    # Line 1435
    jr	$ra
    nop
.end __glSpanUnpackUshort

# Function: __glSpanUnpackShort
# Declared: Line 1442 (Source lines: 1446-1458)
# Address: 0x0da861e4 - 0x0da8630c (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackShort
.ent __glSpanUnpackShort
__glSpanUnpackShort:
    # Line 1449
    lw	$v0,28($a1)
    # Line 1446
    lw	$at,180($a1)
    # Line 1455
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0da86304
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da86248
    move	$t0,$a6
.L0da8620c:
    # Line 1456
    lh	$v1,0($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    # Line 1455
    addiu	$a6,$a6,1
    # Line 1456
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a4,$a4,-1
    bnez	$a4,.L0da8620c
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da86248:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0da86304
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0da86264:
    lh	$a1,0($a2)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lh	$v1,2($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lh	$v0,4($a2)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lh	$at,6($a2)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,8
    # Line 1455
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0da86264
    # Line 1456
    swc1	$f2,-4($a4)
.L0da86304:
    # Line 1458
    jr	$ra
    nop
.end __glSpanUnpackShort

# Function: __glSpanUnpackUint
# Declared: Line 1465 (Source lines: 1469-1481)
# Address: 0x0da8630c - 0x0da86434 (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackUint
.ent __glSpanUnpackUint
__glSpanUnpackUint:
    # Line 1472
    lw	$v0,28($a1)
    # Line 1469
    lw	$at,180($a1)
    # Line 1478
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0da8642c
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da86370
    move	$t0,$a6
.L0da86334:
    # Line 1479
    lw	$v1,0($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1478
    addiu	$a6,$a6,1
    # Line 1479
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    bnez	$a4,.L0da86334
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da86370:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0da8642c
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0da8638c:
    lw	$a1,0($a2)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lw	$v1,4($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lw	$v0,8($a2)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lw	$at,12($a2)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,16
    # Line 1478
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0da8638c
    # Line 1479
    swc1	$f2,-4($a4)
.L0da8642c:
    # Line 1481
    jr	$ra
    nop
.end __glSpanUnpackUint

# Function: __glSpanUnpackInt
# Declared: Line 1488 (Source lines: 1490-1504)
# Address: 0x0da86434 - 0x0da8656c (Size: 312 bytes, Frame: 0)
.globl __glSpanUnpackInt
.ent __glSpanUnpackInt
__glSpanUnpackInt:
    # Line 1492
    lw	$v1,180($a1)
    # Line 1495
    lw	$a1,28($a1)
    # Line 1501
    mult	$v1,$a1
    move	$a7,$zero
    # Line 1490
    lui	$v0,0x17
    addiu	$v0,$v0,5172
    # addu	at,t9,v0
    # Line 1501
    mflo	$a6
    blez	$a6,.L0da86564
    andi	$a5,$a6,0x3
    move	$t0,$a6
    lwc1	$f5,_lit_3f800000
    beqz	$a5,.L0da864a4
    lwc1	$f4,_lit_40000000
.L0da8646c:
    # Line 1502
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1501
    addiu	$a7,$a7,1
    # Line 1502
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a5,$a5,-1
    bnez	$a5,.L0da8646c
    swc1	$f0,-4($a3)
.L0da864a4:
    move	$t1,$a7
    move	$t3,$a2
    move	$t2,$a3
    sra	$v0,$t0,0x2
    beqz	$v0,.L0da86564
    move	$a5,$t2
    move	$a3,$t1
    move	$a2,$t3
.L0da864c4:
    lw	$v0,0($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a5)
    lw	$a4,4($a2)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    add.s	$f3,$f3,$f5
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    lw	$a1,8($a2)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a5)
    lw	$v1,12($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    add.s	$f3,$f3,$f5
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a5,$a5,16
    addiu	$a2,$a2,16
    # Line 1501
    addiu	$a3,$a3,4
    bne	$a6,$a3,.L0da864c4
    # Line 1502
    swc1	$f2,-4($a5)
.L0da86564:
    # Line 1504
    jr	$ra
    nop
.end __glSpanUnpackInt

# Function: __glSpanUnpack332Ubyte
# Declared: Line 1510 (Source lines: 1512-1529)
# Address: 0x0da8656c - 0x0da86610 (Size: 164 bytes, Frame: 0)
.globl __glSpanUnpack332Ubyte
.ent __glSpanUnpack332Ubyte
__glSpanUnpack332Ubyte:
    # Line 1523
    move	$a5,$zero
    # Line 1514
    lw	$a6,180($a1)
    # Line 1512
    lui	$v0,0x17
    addiu	$v0,$v0,4860
    # Line 1523
    blez	$a6,.L0da86608
    # Line 1512
    nop
    # Line 1523
    ldc1	$f5,_lit8_4008000000000000
    ldc1	$f4,_lit8_401c000000000000
.L0da8658c:
    # Line 1524
    lbu	$v1,0($a2)
    # Line 1525
    andi	$a1,$v1,0xe0
    sra	$a1,$a1,0x5
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1526
    andi	$a0,$v1,0x1c
    sra	$a0,$a0,0x2
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1527
    andi	$v1,$v1,0x3
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1525
    cvt.s.d	$f2,$f2
    # Line 1527
    addiu	$a3,$a3,12
    # Line 1526
    cvt.s.d	$f1,$f1
    # Line 1524
    addiu	$a2,$a2,1
    # Line 1523
    addiu	$a5,$a5,1
    # Line 1527
    cvt.s.d	$f0,$f0
    # Line 1525
    swc1	$f2,-12($a3)
    # Line 1526
    swc1	$f1,-8($a3)
    # Line 1523
    bne	$a6,$a5,.L0da8658c
    # Line 1527
    swc1	$f0,-4($a3)
.L0da86608:
    # Line 1529
    jr	$ra
    nop
.end __glSpanUnpack332Ubyte

# Function: __glSpanUnpack4444Ushort
# Declared: Line 1535 (Source lines: 1537-1555)
# Address: 0x0da86610 - 0x0da866d4 (Size: 196 bytes, Frame: 0)
.globl __glSpanUnpack4444Ushort
.ent __glSpanUnpack4444Ushort
__glSpanUnpack4444Ushort:
    # Line 1548
    move	$a5,$zero
    # Line 1539
    lw	$a6,180($a1)
    # Line 1537
    lui	$v0,0x17
    addiu	$v0,$v0,4696
    # Line 1548
    blez	$a6,.L0da866cc
    # Line 1537
    nop
    # Line 1548
    ldc1	$f4,_lit8_402e000000000000
.L0da8662c:
    # Line 1549
    lhu	$v1,0($a2)
    # Line 1553
    andi	$v0,$v1,0xf
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1550
    andi	$a1,$v1,0xf000
    sra	$a1,$a1,0xc
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1551
    andi	$a0,$v1,0xf00
    sra	$a0,$a0,0x8
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1552
    andi	$v1,$v1,0xf0
    sra	$v1,$v1,0x4
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1550
    cvt.s.d	$f3,$f3
    # Line 1551
    cvt.s.d	$f2,$f2
    # Line 1553
    addiu	$a3,$a3,16
    # Line 1552
    cvt.s.d	$f1,$f1
    # Line 1549
    addiu	$a2,$a2,2
    # Line 1548
    addiu	$a5,$a5,1
    # Line 1553
    cvt.s.d	$f0,$f0
    # Line 1550
    swc1	$f3,-16($a3)
    # Line 1551
    swc1	$f2,-12($a3)
    # Line 1552
    swc1	$f1,-8($a3)
    # Line 1548
    bne	$a6,$a5,.L0da8662c
    # Line 1553
    swc1	$f0,-4($a3)
.L0da866cc:
    # Line 1555
    jr	$ra
    nop
.end __glSpanUnpack4444Ushort

# Function: __glSpanUnpack5551Ushort
# Declared: Line 1561 (Source lines: 1563-1581)
# Address: 0x0da866d4 - 0x0da8678c (Size: 184 bytes, Frame: 0)
.globl __glSpanUnpack5551Ushort
.ent __glSpanUnpack5551Ushort
__glSpanUnpack5551Ushort:
    # Line 1574
    move	$a5,$zero
    # Line 1565
    lw	$a6,180($a1)
    # Line 1563
    lui	$v0,0x17
    addiu	$v0,$v0,4500
    # Line 1574
    blez	$a6,.L0da86784
    # Line 1563
    nop
    # Line 1574
    ldc1	$f4,_lit8_403f000000000000
.L0da866f0:
    # Line 1575
    lhu	$v1,0($a2)
    # Line 1576
    andi	$v0,$v1,0xf800
    sra	$v0,$v0,0xb
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1577
    andi	$a1,$v1,0x7c0
    sra	$a1,$a1,0x6
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1578
    andi	$a0,$v1,0x3e
    sra	$a0,$a0,0x1
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1579
    andi	$v1,$v1,0x1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1576
    cvt.s.d	$f3,$f3
    # Line 1577
    cvt.s.d	$f2,$f2
    # Line 1579
    addiu	$a3,$a3,16
    # Line 1575
    addiu	$a2,$a2,2
    # Line 1578
    cvt.s.d	$f1,$f1
    # Line 1574
    addiu	$a5,$a5,1
    # Line 1576
    swc1	$f3,-16($a3)
    # Line 1577
    swc1	$f2,-12($a3)
    # Line 1578
    swc1	$f1,-8($a3)
    # Line 1574
    bne	$a6,$a5,.L0da866f0
    # Line 1579
    swc1	$f0,-4($a3)
.L0da86784:
    # Line 1581
    jr	$ra
    nop
.end __glSpanUnpack5551Ushort

# Function: __glSpanUnpack8888Uint
# Declared: Line 1587 (Source lines: 1589-1608)
# Address: 0x0da8678c - 0x0da86858 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpack8888Uint
.ent __glSpanUnpack8888Uint
__glSpanUnpack8888Uint:
    # Line 1600
    move	$a5,$zero
    lui	$a4,0xff00
    # Line 1591
    lw	$a7,180($a1)
    # Line 1589
    lui	$v0,0x17
    addiu	$v0,$v0,4316
    # Line 1600
    blez	$a7,.L0da86850
    # Line 1589
    nop
    # Line 1600
    lui	$a6,0xff
    ldc1	$f4,_lit8_406fe00000000000
.L0da867b0:
    # Line 1601
    lw	$v1,0($a2)
    # Line 1606
    andi	$v0,$v1,0xff
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1603
    and	$a1,$a4,$v1
    srl	$a1,$a1,0x18
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1604
    and	$a0,$a6,$v1
    srl	$a0,$a0,0x10
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1605
    andi	$v1,$v1,0xff00
    srl	$v1,$v1,0x8
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1603
    cvt.s.d	$f3,$f3
    # Line 1604
    cvt.s.d	$f2,$f2
    # Line 1606
    addiu	$a3,$a3,16
    # Line 1605
    cvt.s.d	$f1,$f1
    # Line 1601
    addiu	$a2,$a2,4
    # Line 1600
    addiu	$a5,$a5,1
    # Line 1606
    cvt.s.d	$f0,$f0
    # Line 1603
    swc1	$f3,-16($a3)
    # Line 1604
    swc1	$f2,-12($a3)
    # Line 1605
    swc1	$f1,-8($a3)
    # Line 1600
    bne	$a7,$a5,.L0da867b0
    # Line 1606
    swc1	$f0,-4($a3)
.L0da86850:
    # Line 1608
    jr	$ra
    nop
.end __glSpanUnpack8888Uint

# Function: __glSpanUnpack_10_10_10_2_Uint
# Declared: Line 1614 (Source lines: 1617-1636)
# Address: 0x0da86858 - 0x0da8692c (Size: 212 bytes, Frame: 0)
.globl __glSpanUnpack_10_10_10_2_Uint
.ent __glSpanUnpack_10_10_10_2_Uint
__glSpanUnpack_10_10_10_2_Uint:
    # Line 1628
    move	$a5,$zero
    lui	$a6,0x3f
    # Line 1619
    lw	$a7,180($a1)
    # Line 1617
    lui	$v0,0x17
    addiu	$v0,$v0,4112
    # Line 1628
    blez	$a7,.L0da86924
    # Line 1617
    nop
    # Line 1628
    ori	$a6,$a6,0xf000
    lui	$a4,0xffc0
    ldc1	$f5,_lit8_4008000000000000
    ldc1	$f4,_lit8_408ff80000000000
.L0da86884:
    # Line 1629
    lw	$v0,0($a2)
    # Line 1634
    andi	$a1,$v0,0x3
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1631
    and	$a0,$a4,$v0
    srl	$a0,$a0,0x16
    dmtc1	$a0,$f3
    nop
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1632
    and	$v1,$a6,$v0
    srl	$v1,$v1,0xc
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1633
    andi	$v0,$v0,0xffc
    srl	$v0,$v0,0x2
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1631
    cvt.s.d	$f3,$f3
    # Line 1632
    cvt.s.d	$f2,$f2
    # Line 1634
    addiu	$a3,$a3,16
    # Line 1633
    cvt.s.d	$f1,$f1
    # Line 1629
    addiu	$a2,$a2,4
    # Line 1628
    addiu	$a5,$a5,1
    # Line 1634
    cvt.s.d	$f0,$f0
    # Line 1631
    swc1	$f3,-16($a3)
    # Line 1632
    swc1	$f2,-12($a3)
    # Line 1633
    swc1	$f1,-8($a3)
    # Line 1628
    bne	$a7,$a5,.L0da86884
    # Line 1634
    swc1	$f0,-4($a3)
.L0da86924:
    # Line 1636
    jr	$ra
    nop
.end __glSpanUnpack_10_10_10_2_Uint

# Function: __glSpanUnpackUbyteI
# Declared: Line 1643 (Source lines: 1647-1657)
# Address: 0x0da8692c - 0x0da869f8 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackUbyteI
.ent __glSpanUnpackUbyteI
__glSpanUnpackUbyteI:
    # Line 1647
    lw	$a4,180($a1)
    # Line 1654
    move	$a5,$zero
    blez	$a4,.L0da869f0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86974
    move	$a7,$a3
.L0da86948:
    # Line 1655
    lbu	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1654
    addiu	$a5,$a5,1
    # Line 1655
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86948
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86974:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da869f0
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86990:
    lbu	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lbu	$at,1($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lbu	$a0,2($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lbu	$v1,3($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,4
    # Line 1654
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86990
    # Line 1655
    swc1	$f1,-4($a2)
.L0da869f0:
    # Line 1657
    jr	$ra
    nop
.end __glSpanUnpackUbyteI

# Function: __glSpanUnpackByteI
# Declared: Line 1664 (Source lines: 1668-1678)
# Address: 0x0da869f8 - 0x0da86ac4 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackByteI
.ent __glSpanUnpackByteI
__glSpanUnpackByteI:
    # Line 1668
    lw	$a4,180($a1)
    # Line 1675
    move	$a5,$zero
    blez	$a4,.L0da86abc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86a40
    move	$a7,$a3
.L0da86a14:
    # Line 1676
    lb	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1675
    addiu	$a5,$a5,1
    # Line 1676
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86a14
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86a40:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da86abc
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86a5c:
    lb	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lb	$at,1($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lb	$a0,2($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lb	$v1,3($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,4
    # Line 1675
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86a5c
    # Line 1676
    swc1	$f1,-4($a2)
.L0da86abc:
    # Line 1678
    jr	$ra
    nop
.end __glSpanUnpackByteI

# Function: __glSpanUnpackUshortI
# Declared: Line 1685 (Source lines: 1689-1699)
# Address: 0x0da86ac4 - 0x0da86b90 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackUshortI
.ent __glSpanUnpackUshortI
__glSpanUnpackUshortI:
    # Line 1689
    lw	$a4,180($a1)
    # Line 1696
    move	$a5,$zero
    blez	$a4,.L0da86b88
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86b0c
    move	$a7,$a3
.L0da86ae0:
    # Line 1697
    lhu	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1696
    addiu	$a5,$a5,1
    # Line 1697
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86ae0
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86b0c:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da86b88
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86b28:
    lhu	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lhu	$at,2($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lhu	$a0,4($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lhu	$v1,6($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,8
    # Line 1696
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86b28
    # Line 1697
    swc1	$f1,-4($a2)
.L0da86b88:
    # Line 1699
    jr	$ra
    nop
.end __glSpanUnpackUshortI

# Function: __glSpanUnpackShortI
# Declared: Line 1706 (Source lines: 1710-1720)
# Address: 0x0da86b90 - 0x0da86c5c (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackShortI
.ent __glSpanUnpackShortI
__glSpanUnpackShortI:
    # Line 1710
    lw	$a4,180($a1)
    # Line 1717
    move	$a5,$zero
    blez	$a4,.L0da86c54
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86bd8
    move	$a7,$a3
.L0da86bac:
    # Line 1718
    lh	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1717
    addiu	$a5,$a5,1
    # Line 1718
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86bac
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86bd8:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da86c54
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86bf4:
    lh	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lh	$at,2($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lh	$a0,4($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lh	$v1,6($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,8
    # Line 1717
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86bf4
    # Line 1718
    swc1	$f1,-4($a2)
.L0da86c54:
    # Line 1720
    jr	$ra
    nop
.end __glSpanUnpackShortI

# Function: __glSpanUnpackUintI
# Declared: Line 1727 (Source lines: 1731-1741)
# Address: 0x0da86c5c - 0x0da86d50 (Size: 244 bytes, Frame: 0)
.globl __glSpanUnpackUintI
.ent __glSpanUnpackUintI
__glSpanUnpackUintI:
    # Line 1731
    lw	$a4,180($a1)
    # Line 1738
    move	$a5,$zero
    blez	$a4,.L0da86d48
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86cac
    move	$a7,$a3
.L0da86c78:
    # Line 1739
    lw	$at,0($a2)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 1738
    addiu	$a5,$a5,1
    # Line 1739
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86c78
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86cac:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da86d48
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86cc8:
    lw	$v0,0($a3)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    swc1	$f0,0($a2)
    lw	$at,4($a3)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a2)
    lw	$a0,8($a3)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a2)
    lw	$v1,12($a3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1738
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86cc8
    # Line 1739
    swc1	$f1,-4($a2)
.L0da86d48:
    # Line 1741
    jr	$ra
    nop
.end __glSpanUnpackUintI

# Function: __glSpanUnpackIntI
# Declared: Line 1748 (Source lines: 1752-1762)
# Address: 0x0da86d50 - 0x0da86e1c (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackIntI
.ent __glSpanUnpackIntI
__glSpanUnpackIntI:
    # Line 1752
    lw	$a4,180($a1)
    # Line 1759
    move	$a5,$zero
    blez	$a4,.L0da86e14
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86d98
    move	$a7,$a3
.L0da86d6c:
    # Line 1760
    lw	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1759
    addiu	$a5,$a5,1
    # Line 1760
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86d6c
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86d98:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0da86e14
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86db4:
    lw	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lw	$at,4($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lw	$a0,8($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lw	$v1,12($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1759
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86db4
    # Line 1760
    swc1	$f1,-4($a2)
.L0da86e14:
    # Line 1762
    jr	$ra
    nop
.end __glSpanUnpackIntI

# Function: __glSpanUnpackNonCompUint
# Declared: Line 1770 (Source lines: 1774-1786)
# Address: 0x0da86e1c - 0x0da86f1c (Size: 256 bytes, Frame: 0)
.globl __glSpanUnpackNonCompUint
.ent __glSpanUnpackNonCompUint
__glSpanUnpackNonCompUint:
    # Line 1777
    lw	$v0,28($a1)
    # Line 1774
    lw	$at,180($a1)
    # Line 1783
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0da86f14
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da86e78
    move	$a7,$a3
.L0da86e44:
    # Line 1784
    lw	$v1,0($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 1783
    addiu	$a5,$a5,1
    # Line 1784
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0da86e44
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da86e78:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0da86f14
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da86e94:
    lw	$a0,0($a3)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    nop
    cvt.s.l	$f0,$f0
    swc1	$f0,0($a2)
    lw	$v1,4($a3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a2)
    lw	$v0,8($a3)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a2)
    lw	$at,12($a3)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1783
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da86e94
    # Line 1784
    swc1	$f1,-4($a2)
.L0da86f14:
    # Line 1786
    jr	$ra
    nop
.end __glSpanUnpackNonCompUint

# Function: __glSpanClampPreFloat
# Declared: Line 1793 (Source lines: 1795-1812)
# Address: 0x0da86f1c - 0x0da87010 (Size: 244 bytes, Frame: 0)
.globl __glSpanClampPreFloat
.ent __glSpanClampPreFloat
__glSpanClampPreFloat:
    # Line 1797
    lw	$v1,180($a1)
    # Line 1798
    lw	$a1,28($a1)
    # Line 1806
    mult	$v1,$a1
    move	$a6,$zero
    # Line 1804
    lwc1	$f5,3284($a0)
    # Line 1795
    lui	$v0,0x17
    addiu	$v0,$v0,2380
    # Line 1806
    mflo	$a7
    blez	$a7,.L0da86f80
    # Line 1795
    nop
    # Line 1806
    move	$a4,$a7
    andi	$v0,$a7,0x1
    beqz	$v0,.L0da86f74
    mtc1	$zero,$f6
    # Line 1807
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1806
    addiu	$a6,$a6,1
    # Line 1807
    bc1f	.L0da86ff8
    addiu	$a2,$a2,4
    # Line 1808
    mov.s	$f4,$f5
.L0da86f6c:
    # Line 1810
    swc1	$f4,0($a3)
.L0da86f70:
    addiu	$a3,$a3,4
.L0da86f74:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0da86fc8
    # Line 1807
    lwc1	$f4,0($a2)
.L0da86f80:
    # Line 1812
    jr	$ra
    nop
.L0da86f88:
    # Line 1808
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da86fa0
    # Line 1810
    swc1	$f4,0($a3)
    # Line 1809
    mov.s	$f4,$f6
.L0da86f9c:
    # Line 1810
    swc1	$f4,0($a3)
.L0da86fa0:
    # Line 1807
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da86fe0
    addiu	$a2,$a2,8
    # Line 1808
    mov.s	$f4,$f5
.L0da86fb8:
    # Line 1810
    swc1	$f4,4($a3)
.L0da86fbc:
    # Line 1806
    beq	$a7,$a6,.L0da86f80
    # Line 1810
    addiu	$a3,$a3,8
    # Line 1807
    lwc1	$f4,0($a2)
.L0da86fc8:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da86f88
    # Line 1806
    addiu	$a6,$a6,2
    # Line 1808
    b	.L0da86f9c
    mov.s	$f4,$f5
.L0da86fe0:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da86fbc
    # Line 1810
    swc1	$f4,4($a3)
    b	.L0da86fb8
    # Line 1809
    mov.s	$f4,$f6
.L0da86ff8:
    # Line 1808
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da86f70
    # Line 1810
    swc1	$f4,0($a3)
    b	.L0da86f6c
    # Line 1809
    mov.s	$f4,$f6
.end __glSpanClampPreFloat

# Function: __glSpanClampNegPreFloat
# Declared: Line 1824 (Source lines: 1828-1843)
# Address: 0x0da87010 - 0x0da870fc (Size: 236 bytes, Frame: 0)
.globl __glSpanClampNegPreFloat
.ent __glSpanClampNegPreFloat
__glSpanClampNegPreFloat:
    # Line 1829
    lw	$v0,28($a1)
    # Line 1828
    lw	$at,180($a1)
    # Line 1837
    mult	$at,$v0
    # Line 1835
    lwc1	$f5,3284($a0)
    # Line 1837
    move	$a5,$zero
    # Line 1836
    neg.s	$f6,$f5
    # Line 1837
    mflo	$a6
    blez	$a6,.L0da8706c
    move	$a1,$a6
    andi	$v1,$a6,0x1
    beqz	$v1,.L0da87064
    sra	$a0,$a1,0x1
    # Line 1838
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1837
    addiu	$a5,$a5,1
    # Line 1838
    bc1f	.L0da870e4
    addiu	$a2,$a2,4
    # Line 1839
    mov.s	$f4,$f5
.L0da87058:
    # Line 1841
    swc1	$f4,0($a3)
.L0da8705c:
    addiu	$a3,$a3,4
    sra	$a0,$a1,0x1
.L0da87064:
    bnezl	$a0,.L0da870b4
    # Line 1838
    lwc1	$f4,0($a2)
.L0da8706c:
    # Line 1843
    jr	$ra
    nop
.L0da87074:
    # Line 1839
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da8708c
    # Line 1841
    swc1	$f4,0($a3)
    # Line 1840
    mov.s	$f4,$f6
.L0da87088:
    # Line 1841
    swc1	$f4,0($a3)
.L0da8708c:
    # Line 1838
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da870cc
    addiu	$a2,$a2,8
    # Line 1839
    mov.s	$f4,$f5
.L0da870a4:
    # Line 1841
    swc1	$f4,4($a3)
.L0da870a8:
    # Line 1837
    beq	$a6,$a5,.L0da8706c
    # Line 1841
    addiu	$a3,$a3,8
    # Line 1838
    lwc1	$f4,0($a2)
.L0da870b4:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87074
    # Line 1837
    addiu	$a5,$a5,2
    # Line 1839
    b	.L0da87088
    mov.s	$f4,$f5
.L0da870cc:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da870a8
    # Line 1841
    swc1	$f4,4($a3)
    b	.L0da870a4
    # Line 1840
    mov.s	$f4,$f6
.L0da870e4:
    # Line 1839
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da8705c
    # Line 1841
    swc1	$f4,0($a3)
    b	.L0da87058
    # Line 1840
    mov.s	$f4,$f6
.end __glSpanClampNegPreFloat

# Function: __glSpanClampPostFloat
# Declared: Line 1850 (Source lines: 1852-1869)
# Address: 0x0da870fc - 0x0da871f0 (Size: 244 bytes, Frame: 0)
.globl __glSpanClampPostFloat
.ent __glSpanClampPostFloat
__glSpanClampPostFloat:
    # Line 1854
    lw	$v1,184($a1)
    # Line 1855
    lw	$a1,108($a1)
    # Line 1863
    mult	$v1,$a1
    move	$a6,$zero
    # Line 1861
    lwc1	$f5,3284($a0)
    # Line 1852
    lui	$v0,0x17
    addiu	$v0,$v0,1900
    # Line 1863
    mflo	$a7
    blez	$a7,.L0da87160
    # Line 1852
    nop
    # Line 1863
    move	$a4,$a7
    andi	$v0,$a7,0x1
    beqz	$v0,.L0da87154
    mtc1	$zero,$f6
    # Line 1864
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1863
    addiu	$a6,$a6,1
    # Line 1864
    bc1f	.L0da871d8
    addiu	$a2,$a2,4
    # Line 1865
    mov.s	$f4,$f5
.L0da8714c:
    # Line 1867
    swc1	$f4,0($a3)
.L0da87150:
    addiu	$a3,$a3,4
.L0da87154:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0da871a8
    # Line 1864
    lwc1	$f4,0($a2)
.L0da87160:
    # Line 1869
    jr	$ra
    nop
.L0da87168:
    # Line 1865
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87180
    # Line 1867
    swc1	$f4,0($a3)
    # Line 1866
    mov.s	$f4,$f6
.L0da8717c:
    # Line 1867
    swc1	$f4,0($a3)
.L0da87180:
    # Line 1864
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da871c0
    addiu	$a2,$a2,8
    # Line 1865
    mov.s	$f4,$f5
.L0da87198:
    # Line 1867
    swc1	$f4,4($a3)
.L0da8719c:
    # Line 1863
    beq	$a7,$a6,.L0da87160
    # Line 1867
    addiu	$a3,$a3,8
    # Line 1864
    lwc1	$f4,0($a2)
.L0da871a8:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87168
    # Line 1863
    addiu	$a6,$a6,2
    # Line 1865
    b	.L0da8717c
    mov.s	$f4,$f5
.L0da871c0:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da8719c
    # Line 1867
    swc1	$f4,4($a3)
    b	.L0da87198
    # Line 1866
    mov.s	$f4,$f6
.L0da871d8:
    # Line 1865
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87150
    # Line 1867
    swc1	$f4,0($a3)
    b	.L0da8714c
    # Line 1866
    mov.s	$f4,$f6
.end __glSpanClampPostFloat

# Function: __glSpanClampRed
# Declared: Line 1872 (Source lines: 1874-1892)
# Address: 0x0da871f0 - 0x0da87324 (Size: 308 bytes, Frame: 0)
.globl __glSpanClampRed
.ent __glSpanClampRed
__glSpanClampRed:
    # Line 1881
    lwc1	$f5,30756($a0)
    # Line 1883
    move	$a6,$zero
    # Line 1874
    lui	$v0,0x17
    # Line 1876
    lw	$a7,184($a1)
    # Line 1874
    addiu	$v0,$v0,1656
    # addu	at,t9,v0
    # Line 1883
    blez	$a7,.L0da87264
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da87258
    mtc1	$zero,$f6
    # Line 1884
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da8730c
    # Line 1883
    addiu	$a6,$a6,1
    # Line 1885
    mov.s	$f4,$f5
.L0da87234:
    # Line 1887
    swc1	$f4,0($a3)
.L0da87238:
    # Line 1888
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1889
    lwc1	$f1,8($a2)
    swc1	$f1,8($a3)
    # Line 1890
    lwc1	$f0,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f0,-4($a3)
.L0da87258:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da872e0
    # Line 1884
    lwc1	$f4,0($a2)
.L0da87264:
    # Line 1892
    jr	$ra
    nop
.L0da8726c:
    # Line 1885
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87284
    # Line 1887
    swc1	$f4,0($a3)
    # Line 1886
    mov.s	$f4,$f6
.L0da87280:
    # Line 1887
    swc1	$f4,0($a3)
.L0da87284:
    # Line 1888
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 1889
    lwc1	$f4,8($a2)
    swc1	$f4,8($a3)
    # Line 1890
    lwc1	$f3,12($a2)
    swc1	$f3,12($a3)
    # Line 1884
    lwc1	$f4,16($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0da872f8
    # Line 1885
    c.lt.s	$f4,$f6
    mov.s	$f4,$f5
.L0da872b4:
    # Line 1887
    swc1	$f4,16($a3)
.L0da872b8:
    # Line 1888
    lwc1	$f3,20($a2)
    swc1	$f3,20($a3)
    # Line 1889
    lwc1	$f2,24($a2)
    swc1	$f2,24($a3)
    # Line 1890
    addiu	$a3,$a3,32
    lwc1	$f1,28($a2)
    addiu	$a2,$a2,32
    # Line 1883
    beq	$a7,$a6,.L0da87264
    # Line 1890
    swc1	$f1,-4($a3)
    # Line 1884
    lwc1	$f4,0($a2)
.L0da872e0:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da8726c
    # Line 1883
    addiu	$a6,$a6,2
    # Line 1885
    b	.L0da87280
    mov.s	$f4,$f5
.L0da872f8:
    nop
    bc1fl	.L0da872b8
    # Line 1887
    swc1	$f4,16($a3)
    b	.L0da872b4
    # Line 1886
    mov.s	$f4,$f6
.L0da8730c:
    # Line 1885
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87238
    # Line 1887
    swc1	$f4,0($a3)
    b	.L0da87234
    # Line 1886
    mov.s	$f4,$f6
.end __glSpanClampRed

# Function: __glSpanClampGreen
# Declared: Line 1894 (Source lines: 1896-1914)
# Address: 0x0da87324 - 0x0da87458 (Size: 308 bytes, Frame: 0)
.globl __glSpanClampGreen
.ent __glSpanClampGreen
__glSpanClampGreen:
    # Line 1903
    lwc1	$f5,30760($a0)
    # Line 1905
    move	$a6,$zero
    # Line 1896
    lui	$v0,0x17
    # Line 1898
    lw	$a7,184($a1)
    # Line 1896
    addiu	$v0,$v0,1348
    # addu	at,t9,v0
    # Line 1905
    blez	$a7,.L0da87398
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da8738c
    mtc1	$zero,$f6
    # Line 1906
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    # Line 1907
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87440
    # Line 1905
    addiu	$a6,$a6,1
    # Line 1908
    mov.s	$f4,$f5
.L0da87370:
    # Line 1910
    swc1	$f4,4($a3)
.L0da87374:
    # Line 1911
    lwc1	$f2,8($a2)
    swc1	$f2,8($a3)
    # Line 1912
    lwc1	$f1,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f1,-4($a3)
.L0da8738c:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da8740c
    # Line 1906
    lwc1	$f3,0($a2)
.L0da87398:
    # Line 1914
    jr	$ra
    nop
.L0da873a0:
    # Line 1908
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da873b8
    # Line 1910
    swc1	$f4,4($a3)
    # Line 1909
    mov.s	$f4,$f6
.L0da873b4:
    # Line 1910
    swc1	$f4,4($a3)
.L0da873b8:
    # Line 1911
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 1912
    lwc1	$f4,12($a2)
    swc1	$f4,12($a3)
    # Line 1906
    lwc1	$f3,16($a2)
    swc1	$f3,16($a3)
    # Line 1907
    lwc1	$f4,20($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0da8742c
    # Line 1908
    c.lt.s	$f4,$f6
    mov.s	$f4,$f5
.L0da873e8:
    # Line 1910
    swc1	$f4,20($a3)
.L0da873ec:
    # Line 1911
    lwc1	$f2,24($a2)
    swc1	$f2,24($a3)
    # Line 1912
    addiu	$a3,$a3,32
    lwc1	$f1,28($a2)
    addiu	$a2,$a2,32
    # Line 1905
    beq	$a7,$a6,.L0da87398
    # Line 1912
    swc1	$f1,-4($a3)
    # Line 1906
    lwc1	$f3,0($a2)
.L0da8740c:
    swc1	$f3,0($a3)
    # Line 1907
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da873a0
    # Line 1905
    addiu	$a6,$a6,2
    # Line 1908
    b	.L0da873b4
    mov.s	$f4,$f5
.L0da8742c:
    nop
    bc1fl	.L0da873ec
    # Line 1910
    swc1	$f4,20($a3)
    b	.L0da873e8
    # Line 1909
    mov.s	$f4,$f6
.L0da87440:
    # Line 1908
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87374
    # Line 1910
    swc1	$f4,4($a3)
    b	.L0da87370
    # Line 1909
    mov.s	$f4,$f6
.end __glSpanClampGreen

# Function: __glSpanClampBlue
# Declared: Line 1916 (Source lines: 1918-1936)
# Address: 0x0da87458 - 0x0da87588 (Size: 304 bytes, Frame: 0)
.globl __glSpanClampBlue
.ent __glSpanClampBlue
__glSpanClampBlue:
    # Line 1925
    lwc1	$f5,30764($a0)
    # Line 1927
    move	$a6,$zero
    # Line 1918
    lui	$v0,0x17
    # Line 1920
    lw	$a7,184($a1)
    # Line 1918
    addiu	$v0,$v0,1040
    # addu	at,t9,v0
    # Line 1927
    blez	$a7,.L0da874cc
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da874c0
    mtc1	$zero,$f6
    # Line 1928
    lwc1	$f1,0($a2)
    swc1	$f1,0($a3)
    # Line 1929
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 1930
    lwc1	$f4,8($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87570
    # Line 1927
    addiu	$a6,$a6,1
    # Line 1931
    mov.s	$f4,$f5
.L0da874ac:
    # Line 1933
    swc1	$f4,8($a3)
.L0da874b0:
    # Line 1934
    lwc1	$f2,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f2,-4($a3)
.L0da874c0:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da87530
    # Line 1928
    lwc1	$f3,0($a2)
.L0da874cc:
    # Line 1936
    jr	$ra
    nop
.L0da874d4:
    nop
    # Line 1931
    bc1fl	.L0da874e8
    # Line 1933
    swc1	$f4,8($a3)
    # Line 1932
    mov.s	$f4,$f6
.L0da874e4:
    # Line 1933
    swc1	$f4,8($a3)
.L0da874e8:
    # Line 1934
    lwc1	$f0,12($a2)
    swc1	$f0,12($a3)
    # Line 1928
    lwc1	$f4,16($a2)
    swc1	$f4,16($a3)
    # Line 1929
    lwc1	$f3,20($a2)
    swc1	$f3,20($a3)
    # Line 1930
    lwc1	$f4,24($a2)
    c.lt.s	$f5,$f4
    # Line 1934
    addiu	$a2,$a2,32
    # Line 1930
    bc1f	.L0da87558
    # Line 1934
    addiu	$a3,$a3,32
    # Line 1931
    mov.s	$f4,$f5
.L0da87518:
    # Line 1927
    addiu	$a6,$a6,2
.L0da8751c:
    # Line 1933
    swc1	$f4,-8($a3)
    # Line 1934
    lwc1	$f1,-4($a2)
    # Line 1927
    beq	$a7,$a6,.L0da874cc
    # Line 1934
    swc1	$f1,-4($a3)
    # Line 1928
    lwc1	$f3,0($a2)
.L0da87530:
    swc1	$f3,0($a3)
    # Line 1929
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1930
    lwc1	$f4,8($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0da874d4
    # Line 1931
    c.lt.s	$f4,$f6
    b	.L0da874e4
    mov.s	$f4,$f5
.L0da87558:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da8751c
    # Line 1927
    addiu	$a6,$a6,2
    b	.L0da87518
    # Line 1932
    mov.s	$f4,$f6
.L0da87570:
    # Line 1931
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da874b0
    # Line 1933
    swc1	$f4,8($a3)
    b	.L0da874ac
    # Line 1932
    mov.s	$f4,$f6
.end __glSpanClampBlue

# Function: __glSpanClampAlpha
# Declared: Line 1938 (Source lines: 1940-1958)
# Address: 0x0da87588 - 0x0da876b8 (Size: 304 bytes, Frame: 0)
.globl __glSpanClampAlpha
.ent __glSpanClampAlpha
__glSpanClampAlpha:
    # Line 1947
    lwc1	$f5,30796($a0)
    # Line 1949
    move	$a6,$zero
    # Line 1940
    lui	$v0,0x17
    # Line 1942
    lw	$a7,184($a1)
    # Line 1940
    addiu	$v0,$v0,736
    # addu	at,t9,v0
    # Line 1949
    blez	$a7,.L0da875f8
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da875ec
    mtc1	$zero,$f6
    # Line 1950
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 1951
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 1952
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 1953
    lwc1	$f4,12($a2)
    c.lt.s	$f5,$f4
    # Line 1949
    addiu	$a6,$a6,1
    # Line 1953
    bc1f	.L0da876a0
    addiu	$a2,$a2,16
    # Line 1954
    mov.s	$f4,$f5
.L0da875e4:
    # Line 1956
    swc1	$f4,12($a3)
.L0da875e8:
    addiu	$a3,$a3,16
.L0da875ec:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da87658
    # Line 1950
    lwc1	$f3,0($a2)
.L0da875f8:
    # Line 1958
    jr	$ra
    nop
.L0da87600:
    # Line 1954
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87618
    # Line 1956
    swc1	$f4,12($a3)
    # Line 1955
    mov.s	$f4,$f6
.L0da87614:
    # Line 1956
    swc1	$f4,12($a3)
.L0da87618:
    # Line 1950
    lwc1	$f0,16($a2)
    swc1	$f0,16($a3)
    # Line 1951
    lwc1	$f4,20($a2)
    swc1	$f4,20($a3)
    # Line 1952
    lwc1	$f3,24($a2)
    swc1	$f3,24($a3)
    # Line 1953
    lwc1	$f4,28($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87688
    addiu	$a2,$a2,32
    # Line 1954
    mov.s	$f4,$f5
.L0da87648:
    # Line 1956
    swc1	$f4,28($a3)
.L0da8764c:
    # Line 1949
    beq	$a7,$a6,.L0da875f8
    # Line 1956
    addiu	$a3,$a3,32
    # Line 1950
    lwc1	$f3,0($a2)
.L0da87658:
    swc1	$f3,0($a3)
    # Line 1951
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1952
    lwc1	$f1,8($a2)
    swc1	$f1,8($a3)
    # Line 1953
    lwc1	$f4,12($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87600
    # Line 1949
    addiu	$a6,$a6,2
    # Line 1954
    b	.L0da87614
    mov.s	$f4,$f5
.L0da87688:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da8764c
    # Line 1956
    swc1	$f4,28($a3)
    b	.L0da87648
    # Line 1955
    mov.s	$f4,$f6
.L0da876a0:
    # Line 1954
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da875e8
    # Line 1956
    swc1	$f4,12($a3)
    b	.L0da875e4
    # Line 1955
    mov.s	$f4,$f6
.end __glSpanClampAlpha

# Function: __glSpanClampRGB
# Declared: Line 1961 (Source lines: 1963-1992)
# Address: 0x0da876b8 - 0x0da878e0 (Size: 552 bytes, Frame: 0)
.globl __glSpanClampRGB
.ent __glSpanClampRGB
__glSpanClampRGB:
    # Line 1972
    lwc1	$f10,30764($a0)
    # Line 1971
    lwc1	$f8,30760($a0)
    # Line 1970
    lwc1	$f9,30756($a0)
    # Line 1975
    move	$a6,$zero
    # Line 1963
    lui	$v0,0x17
    # Line 1965
    lw	$a7,184($a1)
    # Line 1963
    addiu	$v0,$v0,432
    # addu	at,t9,v0
    # Line 1975
    blez	$a7,.L0da8775c
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da87750
    mtc1	$zero,$f7
    # Line 1976
    lwc1	$f5,0($a2)
    c.lt.s	$f9,$f5
    nop
    bc1f	.L0da878a0
    # Line 1975
    addiu	$a6,$a6,1
    # Line 1977
    mov.s	$f5,$f9
.L0da87704:
    # Line 1979
    swc1	$f5,0($a3)
.L0da87708:
    # Line 1981
    lwc1	$f6,4($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0da878b8
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0da87720:
    # Line 1984
    swc1	$f6,4($a3)
.L0da87724:
    # Line 1986
    lwc1	$f4,8($a2)
    c.lt.s	$f10,$f4
    nop
    bc1fl	.L0da878cc
    # Line 1987
    c.lt.s	$f4,$f7
    mov.s	$f4,$f10
.L0da8773c:
    # Line 1989
    swc1	$f4,8($a3)
.L0da87740:
    # Line 1990
    lwc1	$f0,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f0,-4($a3)
.L0da87750:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da87790
    # Line 1976
    lwc1	$f5,0($a2)
.L0da8775c:
    # Line 1992
    jr	$ra
    nop
.L0da87764:
    # Line 1987
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0da8777c
    # Line 1975
    addiu	$a6,$a6,2
    # Line 1988
    mov.s	$f4,$f7
.L0da87778:
    # Line 1975
    addiu	$a6,$a6,2
.L0da8777c:
    # Line 1989
    swc1	$f4,-8($a3)
    # Line 1990
    lwc1	$f1,-4($a2)
    # Line 1975
    beq	$a7,$a6,.L0da8775c
    # Line 1990
    swc1	$f1,-4($a3)
    # Line 1976
    lwc1	$f5,0($a2)
.L0da87790:
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da8783c
    # Line 1977
    c.lt.s	$f5,$f7
    mov.s	$f5,$f9
.L0da877a4:
    # Line 1979
    swc1	$f5,0($a3)
.L0da877a8:
    # Line 1981
    lwc1	$f6,4($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0da87850
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0da877c0:
    # Line 1984
    swc1	$f6,4($a3)
.L0da877c4:
    # Line 1986
    lwc1	$f4,8($a2)
    c.lt.s	$f10,$f4
    nop
    bc1fl	.L0da87864
    # Line 1987
    c.lt.s	$f4,$f7
    mov.s	$f4,$f10
.L0da877dc:
    # Line 1989
    swc1	$f4,8($a3)
.L0da877e0:
    # Line 1990
    lwc1	$f2,12($a2)
    swc1	$f2,12($a3)
    # Line 1976
    lwc1	$f5,16($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da87878
    # Line 1977
    c.lt.s	$f5,$f7
    mov.s	$f5,$f9
.L0da87800:
    # Line 1979
    swc1	$f5,16($a3)
.L0da87804:
    # Line 1981
    lwc1	$f6,20($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0da8788c
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0da8781c:
    # Line 1984
    swc1	$f6,20($a3)
.L0da87820:
    # Line 1986
    lwc1	$f4,24($a2)
    c.lt.s	$f10,$f4
    # Line 1990
    addiu	$a2,$a2,32
    # Line 1986
    bc1f	.L0da87764
    # Line 1990
    addiu	$a3,$a3,32
    # Line 1987
    b	.L0da87778
    mov.s	$f4,$f10
.L0da8783c:
    nop
    # Line 1977
    bc1fl	.L0da877a8
    # Line 1979
    swc1	$f5,0($a3)
    b	.L0da877a4
    # Line 1978
    mov.s	$f5,$f7
.L0da87850:
    nop
    # Line 1982
    bc1fl	.L0da877c4
    # Line 1984
    swc1	$f6,4($a3)
    b	.L0da877c0
    # Line 1983
    mov.s	$f6,$f7
.L0da87864:
    nop
    # Line 1987
    bc1fl	.L0da877e0
    # Line 1989
    swc1	$f4,8($a3)
    b	.L0da877dc
    # Line 1988
    mov.s	$f4,$f7
.L0da87878:
    nop
    # Line 1977
    bc1fl	.L0da87804
    # Line 1979
    swc1	$f5,16($a3)
    b	.L0da87800
    # Line 1978
    mov.s	$f5,$f7
.L0da8788c:
    nop
    # Line 1982
    bc1fl	.L0da87820
    # Line 1984
    swc1	$f6,20($a3)
    b	.L0da8781c
    # Line 1983
    mov.s	$f6,$f7
.L0da878a0:
    # Line 1977
    c.lt.s	$f5,$f7
    nop
    bc1fl	.L0da87708
    # Line 1979
    swc1	$f5,0($a3)
    b	.L0da87704
    # Line 1978
    mov.s	$f5,$f7
.L0da878b8:
    nop
    # Line 1982
    bc1fl	.L0da87724
    # Line 1984
    swc1	$f6,4($a3)
    b	.L0da87720
    # Line 1983
    mov.s	$f6,$f7
.L0da878cc:
    nop
    # Line 1987
    bc1fl	.L0da87740
    # Line 1989
    swc1	$f4,8($a3)
    b	.L0da8773c
    # Line 1988
    mov.s	$f4,$f7
.end __glSpanClampRGB

# Function: __glSpanClampRGBA
# Declared: Line 1995 (Source lines: 1997-2033)
# Address: 0x0da878e0 - 0x0da87b88 (Size: 680 bytes, Frame: 0)
.globl __glSpanClampRGBA
.ent __glSpanClampRGBA
__glSpanClampRGBA:
    # Line 2009
    lwc1	$f10,30796($a0)
    # Line 2008
    lwc1	$f8,30764($a0)
    # Line 2007
    lwc1	$f9,30760($a0)
    # Line 2006
    lwc1	$f7,30756($a0)
    # Line 2012
    move	$a6,$zero
    # Line 1997
    lui	$v0,0x17
    # Line 1999
    lw	$a7,184($a1)
    # Line 1997
    addiu	$v0,$v0,-120
    # addu	at,t9,v0
    # Line 2012
    blez	$a7,.L0da87998
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da8798c
    mtc1	$zero,$f6
    # Line 2013
    lwc1	$f4,0($a2)
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0da87b30
    # Line 2012
    addiu	$a6,$a6,1
    # Line 2014
    mov.s	$f4,$f7
.L0da87930:
    # Line 2016
    swc1	$f4,0($a3)
.L0da87934:
    # Line 2018
    lwc1	$f5,4($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da87b48
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0da8794c:
    # Line 2021
    swc1	$f5,4($a3)
.L0da87950:
    # Line 2023
    lwc1	$f4,8($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da87b5c
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0da87968:
    # Line 2026
    swc1	$f4,8($a3)
.L0da8796c:
    # Line 2028
    lwc1	$f5,12($a2)
    c.lt.s	$f10,$f5
    nop
    bc1f	.L0da87b70
    addiu	$a2,$a2,16
    # Line 2029
    mov.s	$f5,$f10
.L0da87984:
    # Line 2031
    swc1	$f5,12($a3)
.L0da87988:
    addiu	$a3,$a3,16
.L0da8798c:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da87a88
    # Line 2013
    lwc1	$f4,0($a2)
.L0da87998:
    # Line 2033
    jr	$ra
    nop
.L0da879a0:
    # Line 2014
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da879b8
    # Line 2016
    swc1	$f4,0($a3)
    # Line 2015
    mov.s	$f4,$f6
.L0da879b4:
    # Line 2016
    swc1	$f4,0($a3)
.L0da879b8:
    # Line 2018
    lwc1	$f5,4($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da87aa0
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0da879d0:
    # Line 2021
    swc1	$f5,4($a3)
.L0da879d4:
    # Line 2023
    lwc1	$f4,8($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da87ab4
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0da879ec:
    # Line 2026
    swc1	$f4,8($a3)
.L0da879f0:
    # Line 2028
    lwc1	$f5,12($a2)
    c.lt.s	$f10,$f5
    nop
    bc1fl	.L0da87ac8
    # Line 2029
    c.lt.s	$f5,$f6
    mov.s	$f5,$f10
.L0da87a08:
    # Line 2031
    swc1	$f5,12($a3)
.L0da87a0c:
    # Line 2013
    lwc1	$f4,16($a2)
    c.lt.s	$f7,$f4
    nop
    bc1fl	.L0da87adc
    # Line 2014
    c.lt.s	$f4,$f6
    mov.s	$f4,$f7
.L0da87a24:
    # Line 2016
    swc1	$f4,16($a3)
.L0da87a28:
    # Line 2018
    lwc1	$f5,20($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0da87af0
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0da87a40:
    # Line 2021
    swc1	$f5,20($a3)
.L0da87a44:
    # Line 2023
    lwc1	$f4,24($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da87b04
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0da87a5c:
    # Line 2026
    swc1	$f4,24($a3)
.L0da87a60:
    # Line 2028
    lwc1	$f5,28($a2)
    c.lt.s	$f10,$f5
    nop
    bc1f	.L0da87b18
    addiu	$a2,$a2,32
    # Line 2029
    mov.s	$f5,$f10
.L0da87a78:
    # Line 2031
    swc1	$f5,28($a3)
.L0da87a7c:
    # Line 2012
    beq	$a7,$a6,.L0da87998
    # Line 2031
    addiu	$a3,$a3,32
    # Line 2013
    lwc1	$f4,0($a2)
.L0da87a88:
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0da879a0
    # Line 2012
    addiu	$a6,$a6,2
    # Line 2014
    b	.L0da879b4
    mov.s	$f4,$f7
.L0da87aa0:
    nop
    # Line 2019
    bc1fl	.L0da879d4
    # Line 2021
    swc1	$f5,4($a3)
    b	.L0da879d0
    # Line 2020
    mov.s	$f5,$f6
.L0da87ab4:
    nop
    # Line 2024
    bc1fl	.L0da879f0
    # Line 2026
    swc1	$f4,8($a3)
    b	.L0da879ec
    # Line 2025
    mov.s	$f4,$f6
.L0da87ac8:
    nop
    # Line 2029
    bc1fl	.L0da87a0c
    # Line 2031
    swc1	$f5,12($a3)
    b	.L0da87a08
    # Line 2030
    mov.s	$f5,$f6
.L0da87adc:
    nop
    # Line 2014
    bc1fl	.L0da87a28
    # Line 2016
    swc1	$f4,16($a3)
    b	.L0da87a24
    # Line 2015
    mov.s	$f4,$f6
.L0da87af0:
    nop
    # Line 2019
    bc1fl	.L0da87a44
    # Line 2021
    swc1	$f5,20($a3)
    b	.L0da87a40
    # Line 2020
    mov.s	$f5,$f6
.L0da87b04:
    nop
    # Line 2024
    bc1fl	.L0da87a60
    # Line 2026
    swc1	$f4,24($a3)
    b	.L0da87a5c
    # Line 2025
    mov.s	$f4,$f6
.L0da87b18:
    # Line 2029
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0da87a7c
    # Line 2031
    swc1	$f5,28($a3)
    b	.L0da87a78
    # Line 2030
    mov.s	$f5,$f6
.L0da87b30:
    # Line 2014
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da87934
    # Line 2016
    swc1	$f4,0($a3)
    b	.L0da87930
    # Line 2015
    mov.s	$f4,$f6
.L0da87b48:
    nop
    # Line 2019
    bc1fl	.L0da87950
    # Line 2021
    swc1	$f5,4($a3)
    b	.L0da8794c
    # Line 2020
    mov.s	$f5,$f6
.L0da87b5c:
    nop
    # Line 2024
    bc1fl	.L0da8796c
    # Line 2026
    swc1	$f4,8($a3)
    b	.L0da87968
    # Line 2025
    mov.s	$f4,$f6
.L0da87b70:
    # Line 2029
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0da87988
    # Line 2031
    swc1	$f5,12($a3)
    b	.L0da87984
    # Line 2030
    mov.s	$f5,$f6
.end __glSpanClampRGBA

# Function: __glSpanClampSigned
# Declared: Line 2041 (Source lines: 2043-2058)
# Address: 0x0da87b88 - 0x0da87c34 (Size: 172 bytes, Frame: 0)
.globl __glSpanClampSigned
.ent __glSpanClampSigned
__glSpanClampSigned:
    # Line 2046
    lw	$a0,108($a1)
    # Line 2045
    lw	$v1,184($a1)
    # Line 2053
    mult	$v1,$a0
    move	$a5,$zero
    # Line 2043
    lui	$v0,0x17
    addiu	$v0,$v0,-800
    # addu	at,t9,v0
    # Line 2053
    mflo	$a6
    blez	$a6,.L0da87be8
    andi	$a1,$a6,0x1
    move	$a4,$a6
    beqz	$a1,.L0da87bdc
    mtc1	$zero,$f5
    # Line 2054
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f5
    # Line 2053
    addiu	$a5,$a5,1
    # Line 2054
    bc1f	.L0da87bd4
    addiu	$a2,$a2,4
    # Line 2055
    mov.s	$f4,$f5
.L0da87bd4:
    # Line 2056
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0da87bdc:
    sra	$v0,$a4,0x1
    bnezl	$v0,.L0da87c1c
    # Line 2054
    lwc1	$f4,0($a2)
.L0da87be8:
    # Line 2058
    jr	$ra
    nop
.L0da87bf0:
    # Line 2056
    swc1	$f4,0($a3)
    # Line 2054
    lwc1	$f4,4($a2)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da87c0c
    addiu	$a2,$a2,8
    # Line 2055
    mov.s	$f4,$f5
.L0da87c0c:
    # Line 2056
    swc1	$f4,4($a3)
    # Line 2053
    beq	$a6,$a5,.L0da87be8
    # Line 2056
    addiu	$a3,$a3,8
    # Line 2054
    lwc1	$f4,0($a2)
.L0da87c1c:
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da87bf0
    # Line 2053
    addiu	$a5,$a5,2
    b	.L0da87bf0
    # Line 2055
    mov.s	$f4,$f5
.end __glSpanClampSigned

# Function: __glSpanExpandRed
# Declared: Line 2064 (Source lines: 2066-2081)
# Address: 0x0da87c34 - 0x0da87d28 (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandRed
.ent __glSpanExpandRed
__glSpanExpandRed:
    # Line 2073
    lwc1	$f5,30756($a0)
    # Line 2072
    lwc1	$f4,30796($a0)
    # Line 2075
    move	$a7,$zero
    # Line 2066
    lui	$v0,0x17
    # Line 2068
    lw	$a6,180($a1)
    # Line 2066
    addiu	$v0,$v0,-972
    # addu	at,t9,v0
    # Line 2075
    blez	$a6,.L0da87d20
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0da87c90
    mtc1	$zero,$f6
.L0da87c64:
    # Line 2076
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2075
    addiu	$a7,$a7,1
    # Line 2079
    addiu	$a3,$a3,16
    # Line 2076
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2077
    swc1	$f6,-12($a3)
    # Line 2078
    swc1	$f6,-8($a3)
    bnez	$a4,.L0da87c64
    # Line 2079
    swc1	$f4,-4($a3)
.L0da87c90:
    move	$t2,$a7
    sra	$v1,$a5,0x2
    move	$t0,$a3
    beqz	$v1,.L0da87d20
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da87cb0:
    # Line 2076
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f5
    swc1	$f0,0($a3)
    # Line 2077
    swc1	$f6,4($a3)
    # Line 2078
    swc1	$f6,8($a3)
    # Line 2079
    swc1	$f4,12($a3)
    # Line 2076
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,16($a3)
    # Line 2077
    swc1	$f6,20($a3)
    # Line 2078
    swc1	$f6,24($a3)
    # Line 2079
    swc1	$f4,28($a3)
    # Line 2076
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f5
    swc1	$f2,32($a3)
    # Line 2077
    swc1	$f6,36($a3)
    # Line 2078
    swc1	$f6,40($a3)
    # Line 2079
    swc1	$f4,44($a3)
    # Line 2076
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f5
    # Line 2079
    addiu	$a3,$a3,64
    # Line 2076
    addiu	$a4,$a4,16
    # Line 2075
    addiu	$a2,$a2,4
    # Line 2076
    swc1	$f1,-16($a3)
    # Line 2077
    swc1	$f6,-12($a3)
    # Line 2078
    swc1	$f6,-8($a3)
    # Line 2075
    bne	$a6,$a2,.L0da87cb0
    # Line 2079
    swc1	$f4,-4($a3)
.L0da87d20:
    # Line 2081
    jr	$ra
    nop
.end __glSpanExpandRed

# Function: __glSpanExpandGreen
# Declared: Line 2086 (Source lines: 2088-2103)
# Address: 0x0da87d28 - 0x0da87e1c (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandGreen
.ent __glSpanExpandGreen
__glSpanExpandGreen:
    # Line 2095
    lwc1	$f5,30796($a0)
    # Line 2094
    lwc1	$f4,30760($a0)
    # Line 2097
    move	$a7,$zero
    # Line 2088
    lui	$v0,0x17
    # Line 2090
    lw	$a6,180($a1)
    # Line 2088
    addiu	$v0,$v0,-1216
    # addu	at,t9,v0
    # Line 2097
    blez	$a6,.L0da87e14
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0da87d84
    mtc1	$zero,$f6
.L0da87d58:
    # Line 2098
    swc1	$f6,0($a3)
    # Line 2099
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2097
    addiu	$a7,$a7,1
    # Line 2101
    addiu	$a3,$a3,16
    # Line 2099
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-12($a3)
    # Line 2100
    swc1	$f6,-8($a3)
    bnez	$a4,.L0da87d58
    # Line 2101
    swc1	$f5,-4($a3)
.L0da87d84:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0da87e14
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da87da4:
    # Line 2098
    swc1	$f6,0($a3)
    # Line 2099
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($a3)
    # Line 2100
    swc1	$f6,8($a3)
    # Line 2101
    swc1	$f5,12($a3)
    # Line 2098
    swc1	$f6,16($a3)
    # Line 2099
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($a3)
    # Line 2100
    swc1	$f6,24($a3)
    # Line 2101
    swc1	$f5,28($a3)
    # Line 2098
    swc1	$f6,32($a3)
    # Line 2099
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,36($a3)
    # Line 2100
    swc1	$f6,40($a3)
    # Line 2101
    swc1	$f5,44($a3)
    # Line 2098
    swc1	$f6,48($a3)
    # Line 2099
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    # Line 2101
    addiu	$a3,$a3,64
    # Line 2099
    addiu	$a4,$a4,16
    # Line 2097
    addiu	$a2,$a2,4
    # Line 2099
    swc1	$f1,-12($a3)
    # Line 2100
    swc1	$f6,-8($a3)
    # Line 2097
    bne	$a6,$a2,.L0da87da4
    # Line 2101
    swc1	$f5,-4($a3)
.L0da87e14:
    # Line 2103
    jr	$ra
    nop
.end __glSpanExpandGreen

# Function: __glSpanExpandBlue
# Declared: Line 2108 (Source lines: 2110-2125)
# Address: 0x0da87e1c - 0x0da87f10 (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandBlue
.ent __glSpanExpandBlue
__glSpanExpandBlue:
    # Line 2117
    lwc1	$f5,30796($a0)
    # Line 2116
    lwc1	$f4,30764($a0)
    # Line 2119
    move	$a7,$zero
    # Line 2110
    lui	$v0,0x17
    # Line 2112
    lw	$a6,180($a1)
    # Line 2110
    addiu	$v0,$v0,-1460
    # addu	at,t9,v0
    # Line 2119
    blez	$a6,.L0da87f08
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0da87e78
    mtc1	$zero,$f6
.L0da87e4c:
    # Line 2120
    swc1	$f6,0($a3)
    # Line 2121
    swc1	$f6,4($a3)
    # Line 2122
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2119
    addiu	$a7,$a7,1
    # Line 2123
    addiu	$a3,$a3,16
    # Line 2122
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da87e4c
    # Line 2123
    swc1	$f5,-4($a3)
.L0da87e78:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0da87f08
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da87e98:
    # Line 2120
    swc1	$f6,0($a3)
    # Line 2121
    swc1	$f6,4($a3)
    # Line 2122
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,8($a3)
    # Line 2123
    swc1	$f5,12($a3)
    # Line 2120
    swc1	$f6,16($a3)
    # Line 2121
    swc1	$f6,20($a3)
    # Line 2122
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a3)
    # Line 2123
    swc1	$f5,28($a3)
    # Line 2120
    swc1	$f6,32($a3)
    # Line 2121
    swc1	$f6,36($a3)
    # Line 2122
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,40($a3)
    # Line 2123
    swc1	$f5,44($a3)
    # Line 2120
    swc1	$f6,48($a3)
    # Line 2121
    swc1	$f6,52($a3)
    # Line 2122
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    # Line 2123
    addiu	$a3,$a3,64
    # Line 2122
    addiu	$a4,$a4,16
    # Line 2119
    addiu	$a2,$a2,4
    # Line 2122
    swc1	$f1,-8($a3)
    # Line 2119
    bne	$a6,$a2,.L0da87e98
    # Line 2123
    swc1	$f5,-4($a3)
.L0da87f08:
    # Line 2125
    jr	$ra
    nop
.end __glSpanExpandBlue

# Function: __glSpanExpandAlpha
# Declared: Line 2130 (Source lines: 2132-2146)
# Address: 0x0da87f10 - 0x0da88000 (Size: 240 bytes, Frame: 0)
.globl __glSpanExpandAlpha
.ent __glSpanExpandAlpha
__glSpanExpandAlpha:
    # Line 2138
    lwc1	$f4,30796($a0)
    # Line 2140
    move	$a7,$zero
    # Line 2132
    lui	$v0,0x17
    # Line 2134
    lw	$a6,180($a1)
    # Line 2132
    addiu	$v0,$v0,-1704
    # addu	at,t9,v0
    # Line 2140
    blez	$a6,.L0da87ff8
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0da87f68
    mtc1	$zero,$f5
.L0da87f3c:
    # Line 2141
    swc1	$f5,0($a3)
    # Line 2142
    swc1	$f5,4($a3)
    # Line 2143
    swc1	$f5,8($a3)
    # Line 2144
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2140
    addiu	$a7,$a7,1
    # Line 2144
    addiu	$a3,$a3,16
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    bnez	$a4,.L0da87f3c
    swc1	$f0,-4($a3)
.L0da87f68:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0da87ff8
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da87f88:
    # Line 2141
    swc1	$f5,0($a3)
    # Line 2142
    swc1	$f5,4($a3)
    # Line 2143
    swc1	$f5,8($a3)
    # Line 2144
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,12($a3)
    # Line 2141
    swc1	$f5,16($a3)
    # Line 2142
    swc1	$f5,20($a3)
    # Line 2143
    swc1	$f5,24($a3)
    # Line 2144
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,28($a3)
    # Line 2141
    swc1	$f5,32($a3)
    # Line 2142
    swc1	$f5,36($a3)
    # Line 2143
    swc1	$f5,40($a3)
    # Line 2144
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,44($a3)
    # Line 2141
    swc1	$f5,48($a3)
    # Line 2142
    swc1	$f5,52($a3)
    # Line 2143
    swc1	$f5,56($a3)
    # Line 2144
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    addiu	$a3,$a3,64
    addiu	$a4,$a4,16
    # Line 2140
    addiu	$a2,$a2,4
    bne	$a6,$a2,.L0da87f88
    # Line 2144
    swc1	$f1,-4($a3)
.L0da87ff8:
    # Line 2146
    jr	$ra
    nop
.end __glSpanExpandAlpha

# Function: __glSpanExpandRGB
# Declared: Line 2151 (Source lines: 2155-2175)
# Address: 0x0da88000 - 0x0da880e8 (Size: 232 bytes, Frame: 0)
.globl __glSpanExpandRGB
.ent __glSpanExpandRGB
__glSpanExpandRGB:
    # Line 2164
    lwc1	$f6,30764($a0)
    # Line 2163
    lwc1	$f7,30760($a0)
    # Line 2162
    lwc1	$f4,30756($a0)
    # Line 2155
    lw	$a5,180($a1)
    # Line 2160
    lwc1	$f5,30796($a0)
    # Line 2166
    move	$a6,$zero
    blez	$a5,.L0da880e0
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da88064
    move	$t0,$a6
    # Line 2168
    lwc1	$f1,4($a2)
    # Line 2167
    lwc1	$f2,0($a2)
    # Line 2168
    mul.s	$f1,$f1,$f7
    # Line 2169
    lwc1	$f0,8($a2)
    # Line 2167
    mul.s	$f2,$f2,$f4
    # Line 2169
    mul.s	$f0,$f0,$f6
    # Line 2166
    addiu	$a6,$a6,1
    # Line 2173
    addiu	$a3,$a3,16
    # Line 2169
    addiu	$a2,$a2,12
    # Line 2173
    swc1	$f5,-4($a3)
    # Line 2170
    swc1	$f2,-16($a3)
    # Line 2171
    swc1	$f1,-12($a3)
    # Line 2172
    swc1	$f0,-8($a3)
    move	$t0,$a6
.L0da88064:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da880e0
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da88080:
    # Line 2167
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2168
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f7
    # Line 2169
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f6
    # Line 2170
    swc1	$f0,0($a3)
    # Line 2171
    swc1	$f3,4($a3)
    # Line 2172
    swc1	$f2,8($a3)
    # Line 2173
    swc1	$f5,12($a3)
    # Line 2167
    lwc1	$f1,12($a2)
    mul.s	$f1,$f1,$f4
    # Line 2168
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f7
    # Line 2169
    lwc1	$f3,20($a2)
    mul.s	$f3,$f3,$f6
    # Line 2173
    addiu	$a3,$a3,32
    # Line 2169
    addiu	$a2,$a2,24
    # Line 2166
    addiu	$a1,$a1,2
    # Line 2170
    swc1	$f1,-16($a3)
    # Line 2171
    swc1	$f0,-12($a3)
    # Line 2172
    swc1	$f3,-8($a3)
    # Line 2166
    bne	$a5,$a1,.L0da88080
    # Line 2173
    swc1	$f5,-4($a3)
.L0da880e0:
    # Line 2175
    jr	$ra
    nop
.end __glSpanExpandRGB

# Function: __glSpanExpandLuminance
# Declared: Line 2180 (Source lines: 2184-2202)
# Address: 0x0da880e8 - 0x0da88200 (Size: 280 bytes, Frame: 0)
.globl __glSpanExpandLuminance
.ent __glSpanExpandLuminance
__glSpanExpandLuminance:
    # Line 2193
    lwc1	$f6,30764($a0)
    # Line 2192
    lwc1	$f7,30760($a0)
    # Line 2191
    lwc1	$f4,30756($a0)
    # Line 2184
    lw	$a5,180($a1)
    # Line 2189
    lwc1	$f5,30796($a0)
    # Line 2195
    move	$a6,$zero
    blez	$a5,.L0da881f8
    move	$a4,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0da8814c
    move	$a7,$a3
.L0da88114:
    # Line 2196
    lwc1	$f0,0($a2)
    # Line 2197
    mul.s	$f2,$f4,$f0
    # Line 2198
    mul.s	$f1,$f7,$f0
    # Line 2199
    mul.s	$f0,$f6,$f0
    # Line 2195
    addiu	$a6,$a6,1
    # Line 2200
    addiu	$a3,$a3,16
    # Line 2196
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    # Line 2197
    swc1	$f2,-16($a3)
    # Line 2198
    swc1	$f1,-12($a3)
    # Line 2199
    swc1	$f0,-8($a3)
    bnez	$a1,.L0da88114
    # Line 2200
    swc1	$f5,-4($a3)
    move	$a7,$a3
.L0da8814c:
    sra	$at,$a4,0x2
    move	$t1,$a6
    beqz	$at,.L0da881f8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da88168:
    # Line 2196
    lwc1	$f0,0($a3)
    # Line 2197
    mul.s	$f2,$f4,$f0
    # Line 2198
    mul.s	$f1,$f7,$f0
    # Line 2199
    mul.s	$f0,$f6,$f0
    # Line 2197
    swc1	$f2,0($a2)
    # Line 2198
    swc1	$f1,4($a2)
    # Line 2199
    swc1	$f0,8($a2)
    # Line 2200
    swc1	$f5,12($a2)
    # Line 2196
    lwc1	$f3,4($a3)
    # Line 2197
    mul.s	$f1,$f4,$f3
    # Line 2198
    mul.s	$f0,$f7,$f3
    # Line 2199
    mul.s	$f3,$f6,$f3
    # Line 2197
    swc1	$f1,16($a2)
    # Line 2198
    swc1	$f0,20($a2)
    # Line 2199
    swc1	$f3,24($a2)
    # Line 2200
    swc1	$f5,28($a2)
    # Line 2196
    lwc1	$f2,8($a3)
    # Line 2197
    mul.s	$f0,$f4,$f2
    # Line 2198
    mul.s	$f3,$f7,$f2
    # Line 2199
    mul.s	$f2,$f6,$f2
    # Line 2197
    swc1	$f0,32($a2)
    # Line 2198
    swc1	$f3,36($a2)
    # Line 2199
    swc1	$f2,40($a2)
    # Line 2200
    swc1	$f5,44($a2)
    # Line 2196
    lwc1	$f1,12($a3)
    # Line 2197
    mul.s	$f3,$f4,$f1
    # Line 2198
    mul.s	$f2,$f7,$f1
    # Line 2199
    mul.s	$f1,$f6,$f1
    # Line 2200
    addiu	$a2,$a2,64
    # Line 2196
    addiu	$a3,$a3,16
    # Line 2195
    addiu	$a1,$a1,4
    # Line 2197
    swc1	$f3,-16($a2)
    # Line 2198
    swc1	$f2,-12($a2)
    # Line 2199
    swc1	$f1,-8($a2)
    # Line 2195
    bne	$a5,$a1,.L0da88168
    # Line 2200
    swc1	$f5,-4($a2)
.L0da881f8:
    # Line 2202
    jr	$ra
    nop
.end __glSpanExpandLuminance

# Function: __glSpanExpandLuminanceAlpha
# Declared: Line 2207 (Source lines: 2211-2229)
# Address: 0x0da88200 - 0x0da882e8 (Size: 232 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlpha
.ent __glSpanExpandLuminanceAlpha
__glSpanExpandLuminanceAlpha:
    # Line 2220
    lwc1	$f6,30764($a0)
    # Line 2219
    lwc1	$f7,30760($a0)
    # Line 2218
    lwc1	$f4,30756($a0)
    # Line 2211
    lw	$a5,180($a1)
    # Line 2216
    lwc1	$f5,30796($a0)
    # Line 2222
    move	$a6,$zero
    blez	$a5,.L0da882e0
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da88264
    move	$t0,$a6
    # Line 2223
    lwc1	$f1,0($a2)
    # Line 2224
    mul.s	$f3,$f4,$f1
    # Line 2225
    mul.s	$f2,$f7,$f1
    # Line 2226
    mul.s	$f1,$f6,$f1
    swc1	$f1,8($a3)
    # Line 2225
    swc1	$f2,4($a3)
    # Line 2224
    swc1	$f3,0($a3)
    # Line 2227
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f5
    # Line 2222
    addiu	$a6,$a6,1
    # Line 2227
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da88264:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da882e0
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da88280:
    # Line 2223
    lwc1	$f1,0($a2)
    # Line 2224
    mul.s	$f3,$f4,$f1
    # Line 2225
    mul.s	$f2,$f7,$f1
    # Line 2226
    mul.s	$f1,$f6,$f1
    # Line 2224
    swc1	$f3,0($a3)
    # Line 2225
    swc1	$f2,4($a3)
    # Line 2226
    swc1	$f1,8($a3)
    # Line 2227
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f5
    swc1	$f0,12($a3)
    # Line 2223
    lwc1	$f3,8($a2)
    # Line 2224
    mul.s	$f1,$f4,$f3
    # Line 2225
    mul.s	$f0,$f7,$f3
    # Line 2226
    mul.s	$f3,$f6,$f3
    # Line 2224
    swc1	$f1,16($a3)
    # Line 2225
    swc1	$f0,20($a3)
    # Line 2226
    swc1	$f3,24($a3)
    # Line 2227
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f5
    addiu	$a3,$a3,32
    addiu	$a2,$a2,16
    # Line 2222
    addiu	$a1,$a1,2
    bne	$a5,$a1,.L0da88280
    # Line 2227
    swc1	$f2,-4($a3)
.L0da882e0:
    # Line 2229
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlpha

# Function: __glSpanExpandRedAlpha
# Declared: Line 2234 (Source lines: 2236-2256)
# Address: 0x0da882e8 - 0x0da88404 (Size: 284 bytes, Frame: 0)
.globl __glSpanExpandRedAlpha
.ent __glSpanExpandRedAlpha
__glSpanExpandRedAlpha:
    # Line 2246
    lwc1	$f5,30756($a0)
    # Line 2244
    lwc1	$f4,30796($a0)
    # Line 2249
    move	$a7,$zero
    # Line 2236
    lui	$v0,0x17
    # Line 2238
    lw	$a6,180($a1)
    # Line 2236
    addiu	$v0,$v0,-2688
    # addu	at,t9,v0
    # Line 2249
    blez	$a6,.L0da883fc
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0da8834c
    mtc1	$zero,$f6
.L0da88318:
    # Line 2251
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 2252
    swc1	$f6,4($a3)
    # Line 2253
    swc1	$f6,8($a3)
    # Line 2254
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f4
    # Line 2249
    addiu	$a7,$a7,1
    # Line 2254
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    addi	$a4,$a4,-1
    bnez	$a4,.L0da88318
    swc1	$f0,-4($a3)
.L0da8834c:
    move	$t2,$a7
    sra	$v1,$a5,0x2
    move	$t0,$a3
    beqz	$v1,.L0da883fc
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da8836c:
    # Line 2251
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 2252
    swc1	$f6,4($a3)
    # Line 2253
    swc1	$f6,8($a3)
    # Line 2254
    lwc1	$f0,4($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,12($a3)
    # Line 2251
    lwc1	$f3,8($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,16($a3)
    # Line 2252
    swc1	$f6,20($a3)
    # Line 2253
    swc1	$f6,24($a3)
    # Line 2254
    lwc1	$f2,12($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,28($a3)
    # Line 2251
    lwc1	$f1,16($a4)
    mul.s	$f1,$f1,$f5
    swc1	$f1,32($a3)
    # Line 2252
    swc1	$f6,36($a3)
    # Line 2253
    swc1	$f6,40($a3)
    # Line 2254
    lwc1	$f0,20($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,44($a3)
    # Line 2251
    lwc1	$f3,24($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,48($a3)
    # Line 2252
    swc1	$f6,52($a3)
    # Line 2253
    swc1	$f6,56($a3)
    # Line 2254
    lwc1	$f2,28($a4)
    mul.s	$f2,$f2,$f4
    addiu	$a3,$a3,64
    addiu	$a4,$a4,32
    # Line 2249
    addiu	$a2,$a2,4
    bne	$a6,$a2,.L0da8836c
    # Line 2254
    swc1	$f2,-4($a3)
.L0da883fc:
    # Line 2256
    jr	$ra
    nop
.end __glSpanExpandRedAlpha

# Function: __glSpanExpandIntensity
# Declared: Line 2262 (Source lines: 2266-2284)
# Address: 0x0da88404 - 0x0da884e0 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandIntensity
.ent __glSpanExpandIntensity
__glSpanExpandIntensity:
    # Line 2275
    lwc1	$f6,30764($a0)
    # Line 2274
    lwc1	$f7,30760($a0)
    # Line 2273
    lwc1	$f4,30756($a0)
    # Line 2266
    lw	$a5,180($a1)
    # Line 2271
    lwc1	$f5,30796($a0)
    # Line 2277
    move	$a6,$zero
    blez	$a5,.L0da884d8
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da88464
    move	$t0,$a6
    # Line 2278
    lwc1	$f0,0($a2)
    # Line 2279
    mul.s	$f3,$f4,$f0
    # Line 2280
    mul.s	$f2,$f7,$f0
    # Line 2281
    mul.s	$f1,$f6,$f0
    # Line 2282
    mul.s	$f0,$f5,$f0
    # Line 2277
    addiu	$a6,$a6,1
    # Line 2282
    addiu	$a3,$a3,16
    # Line 2278
    addiu	$a2,$a2,4
    # Line 2279
    swc1	$f3,-16($a3)
    # Line 2280
    swc1	$f2,-12($a3)
    # Line 2281
    swc1	$f1,-8($a3)
    # Line 2282
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da88464:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da884d8
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da88480:
    # Line 2278
    lwc1	$f2,0($a2)
    # Line 2279
    mul.s	$f1,$f4,$f2
    # Line 2280
    mul.s	$f0,$f7,$f2
    # Line 2281
    mul.s	$f3,$f6,$f2
    # Line 2282
    mul.s	$f2,$f5,$f2
    # Line 2279
    swc1	$f1,0($a3)
    # Line 2280
    swc1	$f0,4($a3)
    # Line 2281
    swc1	$f3,8($a3)
    # Line 2282
    swc1	$f2,12($a3)
    # Line 2278
    lwc1	$f1,4($a2)
    # Line 2279
    mul.s	$f0,$f4,$f1
    # Line 2280
    mul.s	$f3,$f7,$f1
    # Line 2281
    mul.s	$f2,$f6,$f1
    # Line 2282
    addiu	$a3,$a3,32
    mul.s	$f1,$f5,$f1
    # Line 2278
    addiu	$a2,$a2,8
    # Line 2277
    addiu	$a1,$a1,2
    # Line 2279
    swc1	$f0,-16($a3)
    # Line 2280
    swc1	$f3,-12($a3)
    # Line 2281
    swc1	$f2,-8($a3)
    # Line 2277
    bne	$a5,$a1,.L0da88480
    # Line 2282
    swc1	$f1,-4($a3)
.L0da884d8:
    # Line 2284
    jr	$ra
    nop
.end __glSpanExpandIntensity

# Function: __glSpanExpandRedNS
# Declared: Line 2290 (Source lines: 2292-2305)
# Address: 0x0da884e0 - 0x0da885bc (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandRedNS
.ent __glSpanExpandRedNS
__glSpanExpandRedNS:
    # Line 2299
    move	$a6,$zero
    # Line 2292
    lui	$v0,0x17
    # Line 2294
    lw	$a5,180($a1)
    # Line 2292
    addiu	$v0,$v0,-3192
    # addu	at,t9,v0
    # Line 2299
    blez	$a5,.L0da885b4
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0da88534
    mtc1	$zero,$f4
.L0da8850c:
    addiu	$a6,$a6,1
    # Line 2303
    addiu	$a3,$a3,16
    # Line 2300
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2301
    swc1	$f4,-12($a3)
    # Line 2302
    swc1	$f4,-8($a3)
    bnez	$a4,.L0da8850c
    # Line 2303
    swc1	$f5,-4($a3)
.L0da88534:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da885b4
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da88554:
    # Line 2300
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2301
    swc1	$f4,4($a3)
    # Line 2302
    swc1	$f4,8($a3)
    # Line 2303
    swc1	$f5,12($a3)
    # Line 2300
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2301
    swc1	$f4,20($a3)
    # Line 2302
    swc1	$f4,24($a3)
    # Line 2303
    swc1	$f5,28($a3)
    # Line 2300
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2301
    swc1	$f4,36($a3)
    # Line 2302
    swc1	$f4,40($a3)
    # Line 2303
    swc1	$f5,44($a3)
    addiu	$a3,$a3,64
    # Line 2300
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2299
    addiu	$a2,$a2,4
    # Line 2300
    swc1	$f1,-16($a3)
    # Line 2301
    swc1	$f4,-12($a3)
    # Line 2302
    swc1	$f4,-8($a3)
    # Line 2299
    bne	$a5,$a2,.L0da88554
    # Line 2303
    swc1	$f5,-4($a3)
.L0da885b4:
    # Line 2305
    jr	$ra
    nop
.end __glSpanExpandRedNS

# Function: __glSpanExpandGreenNS
# Declared: Line 2311 (Source lines: 2313-2326)
# Address: 0x0da885bc - 0x0da88698 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandGreenNS
.ent __glSpanExpandGreenNS
__glSpanExpandGreenNS:
    # Line 2320
    move	$a6,$zero
    # Line 2313
    lui	$v0,0x17
    # Line 2315
    lw	$a5,180($a1)
    # Line 2313
    addiu	$v0,$v0,-3412
    # addu	at,t9,v0
    # Line 2320
    blez	$a5,.L0da88690
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0da88610
    mtc1	$zero,$f4
.L0da885e8:
    addiu	$a6,$a6,1
    # Line 2321
    swc1	$f4,0($a3)
    # Line 2324
    addiu	$a3,$a3,16
    # Line 2322
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-12($a3)
    # Line 2323
    swc1	$f4,-8($a3)
    bnez	$a4,.L0da885e8
    # Line 2324
    swc1	$f5,-4($a3)
.L0da88610:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0da88690
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da88630:
    # Line 2321
    swc1	$f4,0($a3)
    # Line 2322
    lwc1	$f0,0($a4)
    swc1	$f0,4($a3)
    # Line 2323
    swc1	$f4,8($a3)
    # Line 2324
    swc1	$f5,12($a3)
    # Line 2321
    swc1	$f4,16($a3)
    # Line 2322
    lwc1	$f3,4($a4)
    swc1	$f3,20($a3)
    # Line 2323
    swc1	$f4,24($a3)
    # Line 2324
    swc1	$f5,28($a3)
    # Line 2321
    swc1	$f4,32($a3)
    # Line 2322
    lwc1	$f2,8($a4)
    swc1	$f2,36($a3)
    # Line 2323
    swc1	$f4,40($a3)
    # Line 2324
    swc1	$f5,44($a3)
    # Line 2321
    swc1	$f4,48($a3)
    # Line 2324
    addiu	$a3,$a3,64
    # Line 2322
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2320
    addiu	$a2,$a2,4
    # Line 2322
    swc1	$f1,-12($a3)
    # Line 2323
    swc1	$f4,-8($a3)
    # Line 2320
    bne	$a5,$a2,.L0da88630
    # Line 2324
    swc1	$f5,-4($a3)
.L0da88690:
    # Line 2326
    jr	$ra
    nop
.end __glSpanExpandGreenNS

# Function: __glSpanExpandBlueNS
# Declared: Line 2332 (Source lines: 2334-2347)
# Address: 0x0da88698 - 0x0da88774 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandBlueNS
.ent __glSpanExpandBlueNS
__glSpanExpandBlueNS:
    # Line 2341
    move	$a6,$zero
    # Line 2334
    lui	$v0,0x17
    # Line 2336
    lw	$a5,180($a1)
    # Line 2334
    addiu	$v0,$v0,-3632
    # addu	at,t9,v0
    # Line 2341
    blez	$a5,.L0da8876c
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0da886ec
    mtc1	$zero,$f4
.L0da886c4:
    addiu	$a6,$a6,1
    # Line 2342
    swc1	$f4,0($a3)
    # Line 2343
    swc1	$f4,4($a3)
    # Line 2345
    addiu	$a3,$a3,16
    # Line 2344
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da886c4
    # Line 2345
    swc1	$f5,-4($a3)
.L0da886ec:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0da8876c
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da8870c:
    # Line 2342
    swc1	$f4,0($a3)
    # Line 2343
    swc1	$f4,4($a3)
    # Line 2344
    lwc1	$f0,0($a4)
    swc1	$f0,8($a3)
    # Line 2345
    swc1	$f5,12($a3)
    # Line 2342
    swc1	$f4,16($a3)
    # Line 2343
    swc1	$f4,20($a3)
    # Line 2344
    lwc1	$f3,4($a4)
    swc1	$f3,24($a3)
    # Line 2345
    swc1	$f5,28($a3)
    # Line 2342
    swc1	$f4,32($a3)
    # Line 2343
    swc1	$f4,36($a3)
    # Line 2344
    lwc1	$f2,8($a4)
    swc1	$f2,40($a3)
    # Line 2345
    swc1	$f5,44($a3)
    # Line 2342
    swc1	$f4,48($a3)
    # Line 2343
    swc1	$f4,52($a3)
    # Line 2345
    addiu	$a3,$a3,64
    # Line 2344
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2341
    addiu	$a2,$a2,4
    # Line 2344
    swc1	$f1,-8($a3)
    # Line 2341
    bne	$a5,$a2,.L0da8870c
    # Line 2345
    swc1	$f5,-4($a3)
.L0da8876c:
    # Line 2347
    jr	$ra
    nop
.end __glSpanExpandBlueNS

# Function: __glSpanExpandAlphaNS
# Declared: Line 2353 (Source lines: 2355-2368)
# Address: 0x0da88774 - 0x0da8884c (Size: 216 bytes, Frame: 0)
.globl __glSpanExpandAlphaNS
.ent __glSpanExpandAlphaNS
__glSpanExpandAlphaNS:
    # Line 2362
    move	$a6,$zero
    # Line 2355
    lui	$v0,0x17
    # Line 2357
    lw	$a5,180($a1)
    # Line 2355
    addiu	$v0,$v0,-3852
    # addu	at,t9,v0
    # Line 2362
    blez	$a5,.L0da88844
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da887c4
    mtc1	$zero,$f4
.L0da8879c:
    addiu	$a6,$a6,1
    # Line 2366
    addiu	$a3,$a3,16
    # Line 2363
    swc1	$f4,-16($a3)
    # Line 2364
    swc1	$f4,-12($a3)
    # Line 2365
    swc1	$f4,-8($a3)
    # Line 2366
    addiu	$a2,$a2,4
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da8879c
    swc1	$f0,-4($a3)
.L0da887c4:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0da88844
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da887e4:
    # Line 2363
    swc1	$f4,0($a3)
    # Line 2364
    swc1	$f4,4($a3)
    # Line 2365
    swc1	$f4,8($a3)
    # Line 2366
    lwc1	$f0,0($a4)
    swc1	$f0,12($a3)
    # Line 2363
    swc1	$f4,16($a3)
    # Line 2364
    swc1	$f4,20($a3)
    # Line 2365
    swc1	$f4,24($a3)
    # Line 2366
    lwc1	$f3,4($a4)
    swc1	$f3,28($a3)
    # Line 2363
    swc1	$f4,32($a3)
    # Line 2364
    swc1	$f4,36($a3)
    # Line 2365
    swc1	$f4,40($a3)
    # Line 2366
    lwc1	$f2,8($a4)
    addiu	$a3,$a3,64
    swc1	$f2,-20($a3)
    # Line 2363
    swc1	$f4,-16($a3)
    # Line 2364
    swc1	$f4,-12($a3)
    # Line 2365
    swc1	$f4,-8($a3)
    # Line 2366
    addiu	$a4,$a4,16
    lwc1	$f1,-4($a4)
    # Line 2362
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da887e4
    # Line 2366
    swc1	$f1,-4($a3)
.L0da88844:
    # Line 2368
    jr	$ra
    nop
.end __glSpanExpandAlphaNS

# Function: __glSpanExpandRGBNS
# Declared: Line 2374 (Source lines: 2376-2388)
# Address: 0x0da8884c - 0x0da8894c (Size: 256 bytes, Frame: 0)
.globl __glSpanExpandRGBNS
.ent __glSpanExpandRGBNS
__glSpanExpandRGBNS:
    # Line 2382
    move	$a6,$zero
    # Line 2376
    lui	$v0,0x17
    # Line 2378
    lw	$a5,180($a1)
    # Line 2376
    addiu	$v0,$v0,-4068
    # addu	at,t9,v0
    # Line 2382
    blez	$a5,.L0da88944
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da888a4
    lwc1	$f4,_lit_3f800000
.L0da88874:
    # Line 2383
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2384
    lwc1	$f1,4($a2)
    # Line 2382
    addiu	$a6,$a6,1
    # Line 2384
    swc1	$f1,4($a3)
    # Line 2386
    addiu	$a3,$a3,16
    # Line 2385
    lwc1	$f0,8($a2)
    addiu	$a2,$a2,12
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da88874
    # Line 2386
    swc1	$f4,-4($a3)
.L0da888a4:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da88944
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da888c4:
    # Line 2383
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    # Line 2384
    lwc1	$f1,4($a4)
    swc1	$f1,4($a3)
    # Line 2385
    lwc1	$f0,8($a4)
    swc1	$f0,8($a3)
    # Line 2386
    swc1	$f4,12($a3)
    # Line 2383
    lwc1	$f3,12($a4)
    swc1	$f3,16($a3)
    # Line 2384
    lwc1	$f2,16($a4)
    swc1	$f2,20($a3)
    # Line 2385
    lwc1	$f1,20($a4)
    swc1	$f1,24($a3)
    # Line 2386
    swc1	$f4,28($a3)
    # Line 2383
    lwc1	$f0,24($a4)
    swc1	$f0,32($a3)
    # Line 2384
    lwc1	$f3,28($a4)
    swc1	$f3,36($a3)
    # Line 2385
    lwc1	$f2,32($a4)
    swc1	$f2,40($a3)
    # Line 2386
    swc1	$f4,44($a3)
    # Line 2383
    lwc1	$f1,36($a4)
    swc1	$f1,48($a3)
    # Line 2384
    lwc1	$f0,40($a4)
    swc1	$f0,52($a3)
    # Line 2386
    addiu	$a3,$a3,64
    # Line 2385
    lwc1	$f3,44($a4)
    addiu	$a4,$a4,48
    # Line 2382
    addiu	$a2,$a2,4
    # Line 2385
    swc1	$f3,-8($a3)
    # Line 2382
    bne	$a5,$a2,.L0da888c4
    # Line 2386
    swc1	$f4,-4($a3)
.L0da88944:
    # Line 2388
    jr	$ra
    nop
.end __glSpanExpandRGBNS

# Function: __glSpanExpandLuminanceNS
# Declared: Line 2394 (Source lines: 2396-2410)
# Address: 0x0da8894c - 0x0da88a24 (Size: 216 bytes, Frame: 0)
.globl __glSpanExpandLuminanceNS
.ent __glSpanExpandLuminanceNS
__glSpanExpandLuminanceNS:
    # Line 2403
    move	$a6,$zero
    # Line 2396
    lui	$v0,0x17
    # Line 2398
    lw	$a5,180($a1)
    # Line 2396
    addiu	$v0,$v0,-4324
    # addu	at,t9,v0
    # Line 2403
    blez	$a5,.L0da88a1c
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da8899c
    lwc1	$f4,_lit_3f800000
.L0da88974:
    addiu	$a6,$a6,1
    # Line 2408
    addiu	$a3,$a3,16
    # Line 2404
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    # Line 2405
    swc1	$f0,-16($a3)
    # Line 2406
    swc1	$f0,-12($a3)
    # Line 2407
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da88974
    # Line 2408
    swc1	$f4,-4($a3)
.L0da8899c:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da88a1c
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da889bc:
    # Line 2404
    lwc1	$f0,0($a4)
    # Line 2405
    swc1	$f0,0($a3)
    # Line 2406
    swc1	$f0,4($a3)
    # Line 2407
    swc1	$f0,8($a3)
    # Line 2408
    swc1	$f4,12($a3)
    # Line 2404
    lwc1	$f3,4($a4)
    # Line 2405
    swc1	$f3,16($a3)
    # Line 2406
    swc1	$f3,20($a3)
    # Line 2407
    swc1	$f3,24($a3)
    # Line 2408
    swc1	$f4,28($a3)
    # Line 2404
    lwc1	$f2,8($a4)
    # Line 2405
    swc1	$f2,32($a3)
    # Line 2406
    swc1	$f2,36($a3)
    # Line 2407
    swc1	$f2,40($a3)
    # Line 2408
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2404
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2403
    addiu	$a2,$a2,4
    # Line 2405
    swc1	$f1,-16($a3)
    # Line 2406
    swc1	$f1,-12($a3)
    # Line 2407
    swc1	$f1,-8($a3)
    # Line 2403
    bne	$a5,$a2,.L0da889bc
    # Line 2408
    swc1	$f4,-4($a3)
.L0da88a1c:
    # Line 2410
    jr	$ra
    nop
.end __glSpanExpandLuminanceNS

# Function: __glSpanExpandLuminanceAlphaNS
# Declared: Line 2416 (Source lines: 2420-2432)
# Address: 0x0da88a24 - 0x0da88b04 (Size: 224 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlphaNS
.ent __glSpanExpandLuminanceAlphaNS
__glSpanExpandLuminanceAlphaNS:
    # Line 2420
    lw	$a4,180($a1)
    # Line 2425
    move	$a5,$zero
    blez	$a4,.L0da88afc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da88a70
    move	$a7,$a3
.L0da88a40:
    # Line 2426
    lwc1	$f1,0($a2)
    # Line 2425
    addiu	$a5,$a5,1
    # Line 2430
    addiu	$a3,$a3,16
    # Line 2427
    swc1	$f1,-16($a3)
    # Line 2428
    swc1	$f1,-12($a3)
    # Line 2429
    swc1	$f1,-8($a3)
    # Line 2430
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da88a40
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da88a70:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da88afc
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da88a8c:
    # Line 2426
    lwc1	$f1,0($a3)
    # Line 2427
    swc1	$f1,0($a2)
    # Line 2428
    swc1	$f1,4($a2)
    # Line 2429
    swc1	$f1,8($a2)
    # Line 2430
    lwc1	$f0,4($a3)
    swc1	$f0,12($a2)
    # Line 2426
    lwc1	$f3,8($a3)
    # Line 2427
    swc1	$f3,16($a2)
    # Line 2428
    swc1	$f3,20($a2)
    # Line 2429
    swc1	$f3,24($a2)
    # Line 2430
    lwc1	$f2,12($a3)
    swc1	$f2,28($a2)
    # Line 2426
    lwc1	$f1,16($a3)
    # Line 2427
    swc1	$f1,32($a2)
    # Line 2428
    swc1	$f1,36($a2)
    # Line 2429
    swc1	$f1,40($a2)
    # Line 2430
    lwc1	$f0,20($a3)
    swc1	$f0,44($a2)
    # Line 2426
    lwc1	$f3,24($a3)
    # Line 2430
    addiu	$a2,$a2,64
    # Line 2427
    swc1	$f3,-16($a2)
    # Line 2428
    swc1	$f3,-12($a2)
    # Line 2429
    swc1	$f3,-8($a2)
    # Line 2430
    addiu	$a3,$a3,32
    lwc1	$f2,-4($a3)
    # Line 2425
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da88a8c
    # Line 2430
    swc1	$f2,-4($a2)
.L0da88afc:
    # Line 2432
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlphaNS

# Function: __glSpanExpandRedAlphaNS
# Declared: Line 2438 (Source lines: 2440-2457)
# Address: 0x0da88b04 - 0x0da88bf0 (Size: 236 bytes, Frame: 0)
.globl __glSpanExpandRedAlphaNS
.ent __glSpanExpandRedAlphaNS
__glSpanExpandRedAlphaNS:
    # Line 2450
    move	$a6,$zero
    # Line 2440
    lui	$v0,0x17
    # Line 2442
    lw	$a5,180($a1)
    # Line 2440
    addiu	$v0,$v0,-4764
    # addu	at,t9,v0
    # Line 2450
    blez	$a5,.L0da88be8
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da88b58
    mtc1	$zero,$f4
.L0da88b2c:
    # Line 2452
    lwc1	$f1,0($a2)
    # Line 2450
    addiu	$a6,$a6,1
    # Line 2455
    addiu	$a3,$a3,16
    # Line 2452
    swc1	$f1,-16($a3)
    # Line 2453
    swc1	$f4,-12($a3)
    # Line 2454
    swc1	$f4,-8($a3)
    # Line 2455
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da88b2c
    swc1	$f0,-4($a3)
.L0da88b58:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da88be8
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da88b78:
    # Line 2452
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 2453
    swc1	$f4,4($a3)
    # Line 2454
    swc1	$f4,8($a3)
    # Line 2455
    lwc1	$f0,4($a4)
    swc1	$f0,12($a3)
    # Line 2452
    lwc1	$f3,8($a4)
    swc1	$f3,16($a3)
    # Line 2453
    swc1	$f4,20($a3)
    # Line 2454
    swc1	$f4,24($a3)
    # Line 2455
    lwc1	$f2,12($a4)
    swc1	$f2,28($a3)
    # Line 2452
    lwc1	$f1,16($a4)
    swc1	$f1,32($a3)
    # Line 2453
    swc1	$f4,36($a3)
    # Line 2454
    swc1	$f4,40($a3)
    # Line 2455
    lwc1	$f0,20($a4)
    swc1	$f0,44($a3)
    # Line 2452
    lwc1	$f3,24($a4)
    # Line 2455
    addiu	$a3,$a3,64
    # Line 2452
    swc1	$f3,-16($a3)
    # Line 2453
    swc1	$f4,-12($a3)
    # Line 2454
    swc1	$f4,-8($a3)
    # Line 2455
    addiu	$a4,$a4,32
    lwc1	$f2,-4($a4)
    # Line 2450
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da88b78
    # Line 2455
    swc1	$f2,-4($a3)
.L0da88be8:
    # Line 2457
    jr	$ra
    nop
.end __glSpanExpandRedAlphaNS

# Function: __glSpanExpandIntensityNS
# Declared: Line 2464 (Source lines: 2468-2480)
# Address: 0x0da88bf0 - 0x0da88cbc (Size: 204 bytes, Frame: 0)
.globl __glSpanExpandIntensityNS
.ent __glSpanExpandIntensityNS
__glSpanExpandIntensityNS:
    # Line 2468
    lw	$a4,180($a1)
    # Line 2473
    move	$a5,$zero
    blez	$a4,.L0da88cb4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da88c38
    move	$a7,$a3
.L0da88c0c:
    addiu	$a5,$a5,1
    # Line 2478
    addiu	$a3,$a3,16
    # Line 2474
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    # Line 2475
    swc1	$f0,-16($a3)
    # Line 2476
    swc1	$f0,-12($a3)
    # Line 2477
    swc1	$f0,-8($a3)
    bnez	$a1,.L0da88c0c
    # Line 2478
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da88c38:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da88cb4
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da88c54:
    # Line 2474
    lwc1	$f0,0($a3)
    # Line 2475
    swc1	$f0,0($a2)
    # Line 2476
    swc1	$f0,4($a2)
    # Line 2477
    swc1	$f0,8($a2)
    # Line 2478
    swc1	$f0,12($a2)
    # Line 2474
    lwc1	$f3,4($a3)
    # Line 2475
    swc1	$f3,16($a2)
    # Line 2476
    swc1	$f3,20($a2)
    # Line 2477
    swc1	$f3,24($a2)
    # Line 2478
    swc1	$f3,28($a2)
    # Line 2474
    lwc1	$f2,8($a3)
    # Line 2475
    swc1	$f2,32($a2)
    # Line 2476
    swc1	$f2,36($a2)
    # Line 2477
    swc1	$f2,40($a2)
    # Line 2478
    swc1	$f2,44($a2)
    addiu	$a2,$a2,64
    # Line 2474
    lwc1	$f1,12($a3)
    addiu	$a3,$a3,16
    # Line 2473
    addiu	$a1,$a1,4
    # Line 2475
    swc1	$f1,-16($a2)
    # Line 2476
    swc1	$f1,-12($a2)
    # Line 2477
    swc1	$f1,-8($a2)
    # Line 2473
    bne	$a4,$a1,.L0da88c54
    # Line 2478
    swc1	$f1,-4($a2)
.L0da88cb4:
    # Line 2480
    jr	$ra
    nop
.end __glSpanExpandIntensityNS

# Function: __glSpanZeroFillAlpha
# Declared: Line 2487 (Source lines: 2489-2501)
# Address: 0x0da88cbc - 0x0da88dbc (Size: 256 bytes, Frame: 0)
.globl __glSpanZeroFillAlpha
.ent __glSpanZeroFillAlpha
__glSpanZeroFillAlpha:
    # Line 2495
    move	$a6,$zero
    # Line 2489
    lui	$v0,0x17
    # Line 2491
    lw	$a5,180($a1)
    # Line 2489
    addiu	$v0,$v0,-5204
    # addu	at,t9,v0
    # Line 2495
    blez	$a5,.L0da88db4
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da88d14
    mtc1	$zero,$f4
.L0da88ce4:
    # Line 2496
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2497
    lwc1	$f1,4($a2)
    # Line 2495
    addiu	$a6,$a6,1
    # Line 2497
    swc1	$f1,4($a3)
    # Line 2499
    addiu	$a2,$a2,16
    # Line 2498
    lwc1	$f0,-8($a2)
    # Line 2499
    addiu	$a3,$a3,16
    addi	$a4,$a4,-1
    # Line 2498
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da88ce4
    # Line 2499
    swc1	$f4,-4($a3)
.L0da88d14:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da88db4
    move	$t1,$a2
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0da88d34:
    # Line 2496
    lwc1	$f2,0($a3)
    swc1	$f2,0($a4)
    # Line 2497
    lwc1	$f1,4($a3)
    swc1	$f1,4($a4)
    # Line 2498
    lwc1	$f0,8($a3)
    swc1	$f0,8($a4)
    # Line 2499
    swc1	$f4,12($a4)
    # Line 2496
    lwc1	$f3,16($a3)
    swc1	$f3,16($a4)
    # Line 2497
    lwc1	$f2,20($a3)
    swc1	$f2,20($a4)
    # Line 2498
    lwc1	$f1,24($a3)
    swc1	$f1,24($a4)
    # Line 2499
    swc1	$f4,28($a4)
    # Line 2496
    lwc1	$f0,32($a3)
    swc1	$f0,32($a4)
    # Line 2497
    lwc1	$f3,36($a3)
    swc1	$f3,36($a4)
    # Line 2498
    lwc1	$f2,40($a3)
    swc1	$f2,40($a4)
    # Line 2499
    swc1	$f4,44($a4)
    # Line 2496
    lwc1	$f1,48($a3)
    swc1	$f1,48($a4)
    # Line 2497
    lwc1	$f0,52($a3)
    swc1	$f0,52($a4)
    # Line 2499
    addiu	$a3,$a3,64
    # Line 2498
    lwc1	$f3,-8($a3)
    # Line 2499
    addiu	$a4,$a4,64
    # Line 2495
    addiu	$a2,$a2,4
    # Line 2498
    swc1	$f3,-8($a4)
    # Line 2495
    bne	$a5,$a2,.L0da88d34
    # Line 2499
    swc1	$f4,-4($a4)
.L0da88db4:
    # Line 2501
    jr	$ra
    nop
.end __glSpanZeroFillAlpha

# Function: __glSpanScaleRGBA
# Declared: Line 2508 (Source lines: 2516-2534)
# Address: 0x0da88dbc - 0x0da88ebc (Size: 256 bytes, Frame: 0)
.globl __glSpanScaleRGBA
.ent __glSpanScaleRGBA
__glSpanScaleRGBA:
    # Line 2523
    lwc1	$f6,30796($a0)
    # Line 2522
    lwc1	$f7,30764($a0)
    # Line 2521
    lwc1	$f4,30760($a0)
    # Line 2516
    lw	$a5,180($a1)
    # Line 2520
    lwc1	$f5,30756($a0)
    # Line 2524
    move	$a6,$zero
    blez	$a5,.L0da88eb4
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da88e28
    move	$t0,$a6
    # Line 2526
    lwc1	$f2,4($a2)
    # Line 2527
    lwc1	$f3,0($a2)
    # Line 2526
    mul.s	$f2,$f2,$f4
    # Line 2527
    mul.s	$f3,$f3,$f5
    # Line 2528
    swc1	$f2,4($a3)
    # Line 2527
    swc1	$f3,0($a3)
    # Line 2529
    lwc1	$f1,8($a2)
    # Line 2530
    lwc1	$f0,12($a2)
    # Line 2529
    mul.s	$f1,$f1,$f7
    # Line 2530
    mul.s	$f0,$f0,$f6
    # Line 2524
    addiu	$a6,$a6,1
    # Line 2532
    addiu	$a3,$a3,16
    # Line 2530
    addiu	$a2,$a2,16
    # Line 2531
    swc1	$f1,-8($a3)
    # Line 2532
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da88e28:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da88eb4
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da88e44:
    # Line 2527
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2526
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2527
    swc1	$f3,0($a3)
    # Line 2528
    swc1	$f2,4($a3)
    # Line 2529
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2530
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2531
    swc1	$f1,8($a3)
    # Line 2532
    swc1	$f0,12($a3)
    # Line 2527
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2526
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2527
    swc1	$f3,16($a3)
    # Line 2528
    swc1	$f2,20($a3)
    # Line 2529
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2530
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2532
    addiu	$a3,$a3,32
    # Line 2530
    addiu	$a2,$a2,32
    # Line 2524
    addiu	$a1,$a1,2
    # Line 2531
    swc1	$f1,-8($a3)
    # Line 2524
    bne	$a5,$a1,.L0da88e44
    # Line 2532
    swc1	$f0,-4($a3)
.L0da88eb4:
    # Line 2534
    jr	$ra
    nop
.end __glSpanScaleRGBA

# Function: __glSpanScaleABGR
# Declared: Line 2541 (Source lines: 2549-2567)
# Address: 0x0da88ebc - 0x0da88fbc (Size: 256 bytes, Frame: 0)
.globl __glSpanScaleABGR
.ent __glSpanScaleABGR
__glSpanScaleABGR:
    # Line 2556
    lwc1	$f6,30796($a0)
    # Line 2555
    lwc1	$f7,30764($a0)
    # Line 2554
    lwc1	$f4,30760($a0)
    # Line 2549
    lw	$a5,180($a1)
    # Line 2553
    lwc1	$f5,30756($a0)
    # Line 2557
    move	$a6,$zero
    blez	$a5,.L0da88fb4
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da88f28
    move	$t0,$a6
    # Line 2559
    lwc1	$f1,4($a2)
    # Line 2560
    lwc1	$f2,8($a2)
    # Line 2559
    mul.s	$f1,$f1,$f7
    # Line 2562
    lwc1	$f3,12($a2)
    # Line 2560
    mul.s	$f2,$f2,$f4
    # Line 2558
    lwc1	$f0,0($a2)
    # Line 2562
    mul.s	$f3,$f3,$f5
    # Line 2558
    mul.s	$f0,$f0,$f6
    # Line 2557
    addiu	$a6,$a6,1
    # Line 2565
    addiu	$a3,$a3,16
    # Line 2561
    addiu	$a2,$a2,16
    # Line 2562
    swc1	$f3,-16($a3)
    # Line 2563
    swc1	$f2,-12($a3)
    # Line 2564
    swc1	$f1,-8($a3)
    # Line 2565
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da88f28:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da88fb4
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da88f44:
    # Line 2562
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f5
    # Line 2560
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f4
    # Line 2559
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f7
    # Line 2558
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f6
    # Line 2562
    swc1	$f3,0($a3)
    # Line 2563
    swc1	$f2,4($a3)
    # Line 2564
    swc1	$f1,8($a3)
    # Line 2565
    swc1	$f0,12($a3)
    # Line 2562
    lwc1	$f3,28($a2)
    mul.s	$f3,$f3,$f5
    # Line 2560
    lwc1	$f2,24($a2)
    mul.s	$f2,$f2,$f4
    # Line 2559
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f7
    # Line 2558
    lwc1	$f0,16($a2)
    # Line 2565
    addiu	$a3,$a3,32
    # Line 2558
    mul.s	$f0,$f0,$f6
    # Line 2561
    addiu	$a2,$a2,32
    # Line 2557
    addiu	$a1,$a1,2
    # Line 2562
    swc1	$f3,-16($a3)
    # Line 2563
    swc1	$f2,-12($a3)
    # Line 2564
    swc1	$f1,-8($a3)
    # Line 2557
    bne	$a5,$a1,.L0da88f44
    # Line 2565
    swc1	$f0,-4($a3)
.L0da88fb4:
    # Line 2567
    jr	$ra
    nop
.end __glSpanScaleABGR

# Function: __glSpanPreReorderABGR
# Declared: Line 2574 (Source lines: 2578-2593)
# Address: 0x0da88fbc - 0x0da890c4 (Size: 264 bytes, Frame: 0)
.globl __glSpanPreReorderABGR
.ent __glSpanPreReorderABGR
__glSpanPreReorderABGR:
    # Line 2578
    lw	$a4,180($a1)
    # Line 2583
    move	$a5,$zero
    blez	$a4,.L0da890bc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da89010
    move	$a7,$a3
.L0da88fd8:
    addiu	$a5,$a5,1
    # Line 2591
    addiu	$a3,$a3,16
    # Line 2587
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    # Line 2584
    lwc1	$f0,-16($a2)
    # Line 2588
    lwc1	$f3,-4($a2)
    # Line 2586
    lwc1	$f2,-8($a2)
    # Line 2585
    lwc1	$f1,-12($a2)
    # Line 2588
    swc1	$f3,-16($a3)
    # Line 2589
    swc1	$f2,-12($a3)
    # Line 2590
    swc1	$f1,-8($a3)
    bnez	$a1,.L0da88fd8
    # Line 2591
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da89010:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da890bc
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da8902c:
    # Line 2584
    lwc1	$f0,0($a3)
    # Line 2588
    lwc1	$f3,12($a3)
    # Line 2586
    lwc1	$f2,8($a3)
    # Line 2585
    lwc1	$f1,4($a3)
    # Line 2588
    swc1	$f3,0($a2)
    # Line 2589
    swc1	$f2,4($a2)
    # Line 2590
    swc1	$f1,8($a2)
    # Line 2591
    swc1	$f0,12($a2)
    addiu	$a2,$a2,64
    # Line 2584
    lwc1	$f0,16($a3)
    # Line 2588
    lwc1	$f3,28($a3)
    # Line 2586
    lwc1	$f2,24($a3)
    # Line 2585
    lwc1	$f1,20($a3)
    # Line 2588
    swc1	$f3,-48($a2)
    # Line 2589
    swc1	$f2,-44($a2)
    # Line 2590
    swc1	$f1,-40($a2)
    # Line 2591
    swc1	$f0,-36($a2)
    # Line 2587
    addiu	$a3,$a3,64
    # Line 2584
    lwc1	$f0,-32($a3)
    # Line 2588
    lwc1	$f3,-20($a3)
    # Line 2586
    lwc1	$f2,-24($a3)
    # Line 2585
    lwc1	$f1,-28($a3)
    # Line 2588
    swc1	$f3,-32($a2)
    # Line 2589
    swc1	$f2,-28($a2)
    # Line 2590
    swc1	$f1,-24($a2)
    # Line 2591
    swc1	$f0,-20($a2)
    # Line 2583
    addiu	$a1,$a1,4
    # Line 2584
    lwc1	$f0,-16($a3)
    # Line 2588
    lwc1	$f3,-4($a3)
    # Line 2586
    lwc1	$f2,-8($a3)
    # Line 2585
    lwc1	$f1,-12($a3)
    # Line 2588
    swc1	$f3,-16($a2)
    # Line 2589
    swc1	$f2,-12($a2)
    # Line 2590
    swc1	$f1,-8($a2)
    # Line 2583
    bne	$a4,$a1,.L0da8902c
    # Line 2591
    swc1	$f0,-4($a2)
.L0da890bc:
    # Line 2593
    jr	$ra
    nop
.end __glSpanPreReorderABGR

# Function: __glSpanPreUnscaleRGBA
# Declared: Line 2600 (Source lines: 2608-2626)
# Address: 0x0da890c4 - 0x0da891c4 (Size: 256 bytes, Frame: 0)
.globl __glSpanPreUnscaleRGBA
.ent __glSpanPreUnscaleRGBA
__glSpanPreUnscaleRGBA:
    # Line 2615
    lwc1	$f6,30816($a0)
    # Line 2614
    lwc1	$f7,30812($a0)
    # Line 2613
    lwc1	$f4,30808($a0)
    # Line 2608
    lw	$a5,180($a1)
    # Line 2612
    lwc1	$f5,30804($a0)
    # Line 2616
    move	$a6,$zero
    blez	$a5,.L0da891bc
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da89130
    move	$t0,$a6
    # Line 2618
    lwc1	$f2,4($a2)
    # Line 2619
    lwc1	$f3,0($a2)
    # Line 2618
    mul.s	$f2,$f2,$f4
    # Line 2619
    mul.s	$f3,$f3,$f5
    # Line 2620
    swc1	$f2,4($a3)
    # Line 2619
    swc1	$f3,0($a3)
    # Line 2621
    lwc1	$f1,8($a2)
    # Line 2622
    lwc1	$f0,12($a2)
    # Line 2621
    mul.s	$f1,$f1,$f7
    # Line 2622
    mul.s	$f0,$f0,$f6
    # Line 2616
    addiu	$a6,$a6,1
    # Line 2624
    addiu	$a3,$a3,16
    # Line 2622
    addiu	$a2,$a2,16
    # Line 2623
    swc1	$f1,-8($a3)
    # Line 2624
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da89130:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da891bc
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da8914c:
    # Line 2619
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2618
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2619
    swc1	$f3,0($a3)
    # Line 2620
    swc1	$f2,4($a3)
    # Line 2621
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2622
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2623
    swc1	$f1,8($a3)
    # Line 2624
    swc1	$f0,12($a3)
    # Line 2619
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2618
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2619
    swc1	$f3,16($a3)
    # Line 2620
    swc1	$f2,20($a3)
    # Line 2621
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2622
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2624
    addiu	$a3,$a3,32
    # Line 2622
    addiu	$a2,$a2,32
    # Line 2616
    addiu	$a1,$a1,2
    # Line 2623
    swc1	$f1,-8($a3)
    # Line 2616
    bne	$a5,$a1,.L0da8914c
    # Line 2624
    swc1	$f0,-4($a3)
.L0da891bc:
    # Line 2626
    jr	$ra
    nop
.end __glSpanPreUnscaleRGBA

# Function: __glSpanPostUnscaleRGBA
# Declared: Line 2634 (Source lines: 2642-2660)
# Address: 0x0da891c4 - 0x0da892c4 (Size: 256 bytes, Frame: 0)
.globl __glSpanPostUnscaleRGBA
.ent __glSpanPostUnscaleRGBA
__glSpanPostUnscaleRGBA:
    # Line 2649
    lwc1	$f6,30816($a0)
    # Line 2648
    lwc1	$f7,30812($a0)
    # Line 2647
    lwc1	$f4,30808($a0)
    # Line 2642
    lw	$a5,184($a1)
    # Line 2646
    lwc1	$f5,30804($a0)
    # Line 2650
    move	$a6,$zero
    blez	$a5,.L0da892bc
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da89230
    move	$t0,$a6
    # Line 2652
    lwc1	$f2,4($a2)
    # Line 2653
    lwc1	$f3,0($a2)
    # Line 2652
    mul.s	$f2,$f2,$f4
    # Line 2653
    mul.s	$f3,$f3,$f5
    # Line 2654
    swc1	$f2,4($a3)
    # Line 2653
    swc1	$f3,0($a3)
    # Line 2655
    lwc1	$f1,8($a2)
    # Line 2656
    lwc1	$f0,12($a2)
    # Line 2655
    mul.s	$f1,$f1,$f7
    # Line 2656
    mul.s	$f0,$f0,$f6
    # Line 2650
    addiu	$a6,$a6,1
    # Line 2658
    addiu	$a3,$a3,16
    # Line 2656
    addiu	$a2,$a2,16
    # Line 2657
    swc1	$f1,-8($a3)
    # Line 2658
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da89230:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da892bc
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da8924c:
    # Line 2653
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2652
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2653
    swc1	$f3,0($a3)
    # Line 2654
    swc1	$f2,4($a3)
    # Line 2655
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2656
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2657
    swc1	$f1,8($a3)
    # Line 2658
    swc1	$f0,12($a3)
    # Line 2653
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2652
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2653
    swc1	$f3,16($a3)
    # Line 2654
    swc1	$f2,20($a3)
    # Line 2655
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2656
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2658
    addiu	$a3,$a3,32
    # Line 2656
    addiu	$a2,$a2,32
    # Line 2650
    addiu	$a1,$a1,2
    # Line 2657
    swc1	$f1,-8($a3)
    # Line 2650
    bne	$a5,$a1,.L0da8924c
    # Line 2658
    swc1	$f0,-4($a3)
.L0da892bc:
    # Line 2660
    jr	$ra
    nop
.end __glSpanPostUnscaleRGBA

# Function: __glSpanUnscaleABGR
# Declared: Line 2667 (Source lines: 2675-2693)
# Address: 0x0da892c4 - 0x0da893c4 (Size: 256 bytes, Frame: 0)
.globl __glSpanUnscaleABGR
.ent __glSpanUnscaleABGR
__glSpanUnscaleABGR:
    # Line 2682
    lwc1	$f6,30816($a0)
    # Line 2681
    lwc1	$f7,30812($a0)
    # Line 2680
    lwc1	$f4,30808($a0)
    # Line 2675
    lw	$a5,184($a1)
    # Line 2679
    lwc1	$f5,30804($a0)
    # Line 2683
    move	$a6,$zero
    blez	$a5,.L0da893bc
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0da89330
    move	$t0,$a6
    # Line 2685
    lwc1	$f1,4($a2)
    # Line 2686
    lwc1	$f2,8($a2)
    # Line 2685
    mul.s	$f1,$f1,$f4
    # Line 2688
    lwc1	$f3,12($a2)
    # Line 2686
    mul.s	$f2,$f2,$f7
    # Line 2684
    lwc1	$f0,0($a2)
    # Line 2688
    mul.s	$f3,$f3,$f6
    # Line 2684
    mul.s	$f0,$f0,$f5
    # Line 2683
    addiu	$a6,$a6,1
    # Line 2691
    addiu	$a3,$a3,16
    # Line 2687
    addiu	$a2,$a2,16
    # Line 2688
    swc1	$f3,-16($a3)
    # Line 2689
    swc1	$f2,-12($a3)
    # Line 2690
    swc1	$f1,-8($a3)
    # Line 2691
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0da89330:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0da893bc
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0da8934c:
    # Line 2688
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f6
    # Line 2686
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f7
    # Line 2685
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f4
    # Line 2684
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2688
    swc1	$f3,0($a3)
    # Line 2689
    swc1	$f2,4($a3)
    # Line 2690
    swc1	$f1,8($a3)
    # Line 2691
    swc1	$f0,12($a3)
    # Line 2688
    lwc1	$f3,28($a2)
    mul.s	$f3,$f3,$f6
    # Line 2686
    lwc1	$f2,24($a2)
    mul.s	$f2,$f2,$f7
    # Line 2685
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f4
    # Line 2684
    lwc1	$f0,16($a2)
    # Line 2691
    addiu	$a3,$a3,32
    # Line 2684
    mul.s	$f0,$f0,$f5
    # Line 2687
    addiu	$a2,$a2,32
    # Line 2683
    addiu	$a1,$a1,2
    # Line 2688
    swc1	$f3,-16($a3)
    # Line 2689
    swc1	$f2,-12($a3)
    # Line 2690
    swc1	$f1,-8($a3)
    # Line 2683
    bne	$a5,$a1,.L0da8934c
    # Line 2691
    swc1	$f0,-4($a3)
.L0da893bc:
    # Line 2693
    jr	$ra
    nop
.end __glSpanUnscaleABGR

# Function: __glSpanGetMemRGBA
# Declared: Line 2705 (Source lines: 2712-2724)
# Address: 0x0da893c4 - 0x0da894cc (Size: 264 bytes, Frame: 0)
.globl __glSpanGetMemRGBA
.ent __glSpanGetMemRGBA
__glSpanGetMemRGBA:
    # Line 2712
    lw	$a4,180($a1)
    # Line 2717
    move	$a5,$zero
    blez	$a4,.L0da894c4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da89418
    move	$a7,$a3
.L0da893e0:
    # Line 2718
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    # Line 2719
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 2720
    lwc1	$f1,8($a2)
    # Line 2717
    addiu	$a5,$a5,1
    # Line 2721
    addiu	$a3,$a3,16
    # Line 2720
    swc1	$f1,-8($a3)
    # Line 2721
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da893e0
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da89418:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da894c4
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da89434:
    # Line 2718
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    # Line 2719
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    # Line 2720
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    # Line 2721
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    # Line 2718
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    # Line 2719
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    # Line 2720
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    # Line 2721
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    # Line 2718
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    # Line 2719
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    # Line 2720
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    # Line 2721
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    # Line 2718
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    # Line 2719
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    # Line 2720
    lwc1	$f1,56($a3)
    # Line 2721
    addiu	$a2,$a2,64
    # Line 2720
    swc1	$f1,-8($a2)
    # Line 2721
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 2717
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da89434
    # Line 2721
    swc1	$f0,-4($a2)
.L0da894c4:
    # Line 2724
    jr	$ra
    nop
.end __glSpanGetMemRGBA

# Function: __glSpanGetMemRGB
# Declared: Line 2730 (Source lines: 2732-2749)
# Address: 0x0da894cc - 0x0da895cc (Size: 256 bytes, Frame: 0)
.globl __glSpanGetMemRGB
.ent __glSpanGetMemRGB
__glSpanGetMemRGB:
    # Line 2742
    move	$a6,$zero
    # Line 2732
    lui	$v0,0x17
    # Line 2737
    lw	$a5,180($a1)
    # Line 2732
    addiu	$v0,$v0,-7268
    # addu	at,t9,v0
    # Line 2742
    blez	$a5,.L0da895c4
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da89524
    mtc1	$zero,$f4
.L0da894f4:
    # Line 2743
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2744
    lwc1	$f1,4($a2)
    # Line 2742
    addiu	$a6,$a6,1
    # Line 2744
    swc1	$f1,4($a3)
    # Line 2746
    addiu	$a3,$a3,16
    # Line 2745
    lwc1	$f0,8($a2)
    addiu	$a2,$a2,12
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0da894f4
    # Line 2746
    swc1	$f4,-4($a3)
.L0da89524:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da895c4
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da89544:
    # Line 2743
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    # Line 2744
    lwc1	$f1,4($a4)
    swc1	$f1,4($a3)
    # Line 2745
    lwc1	$f0,8($a4)
    swc1	$f0,8($a3)
    # Line 2746
    swc1	$f4,12($a3)
    # Line 2743
    lwc1	$f3,12($a4)
    swc1	$f3,16($a3)
    # Line 2744
    lwc1	$f2,16($a4)
    swc1	$f2,20($a3)
    # Line 2745
    lwc1	$f1,20($a4)
    swc1	$f1,24($a3)
    # Line 2746
    swc1	$f4,28($a3)
    # Line 2743
    lwc1	$f0,24($a4)
    swc1	$f0,32($a3)
    # Line 2744
    lwc1	$f3,28($a4)
    swc1	$f3,36($a3)
    # Line 2745
    lwc1	$f2,32($a4)
    swc1	$f2,40($a3)
    # Line 2746
    swc1	$f4,44($a3)
    # Line 2743
    lwc1	$f1,36($a4)
    swc1	$f1,48($a3)
    # Line 2744
    lwc1	$f0,40($a4)
    swc1	$f0,52($a3)
    # Line 2746
    addiu	$a3,$a3,64
    # Line 2745
    lwc1	$f3,44($a4)
    addiu	$a4,$a4,48
    # Line 2742
    addiu	$a2,$a2,4
    # Line 2745
    swc1	$f3,-8($a3)
    # Line 2742
    bne	$a5,$a2,.L0da89544
    # Line 2746
    swc1	$f4,-4($a3)
.L0da895c4:
    # Line 2749
    jr	$ra
    nop
.end __glSpanGetMemRGB

# Function: __glSpanGetMemL
# Declared: Line 2755 (Source lines: 2757-2773)
# Address: 0x0da895cc - 0x0da896a4 (Size: 216 bytes, Frame: 0)
.globl __glSpanGetMemL
.ent __glSpanGetMemL
__glSpanGetMemL:
    # Line 2767
    move	$a6,$zero
    # Line 2757
    lui	$v0,0x17
    # Line 2762
    lw	$a5,180($a1)
    # Line 2757
    addiu	$v0,$v0,-7524
    # addu	at,t9,v0
    # Line 2767
    blez	$a5,.L0da8969c
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da8961c
    mtc1	$zero,$f4
.L0da895f4:
    addiu	$a6,$a6,1
    # Line 2771
    addiu	$a3,$a3,16
    # Line 2768
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2769
    swc1	$f4,-12($a3)
    # Line 2770
    swc1	$f4,-8($a3)
    bnez	$a4,.L0da895f4
    # Line 2771
    swc1	$f4,-4($a3)
.L0da8961c:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da8969c
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da8963c:
    # Line 2768
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2769
    swc1	$f4,4($a3)
    # Line 2770
    swc1	$f4,8($a3)
    # Line 2771
    swc1	$f4,12($a3)
    # Line 2768
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2769
    swc1	$f4,20($a3)
    # Line 2770
    swc1	$f4,24($a3)
    # Line 2771
    swc1	$f4,28($a3)
    # Line 2768
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2769
    swc1	$f4,36($a3)
    # Line 2770
    swc1	$f4,40($a3)
    # Line 2771
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2768
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2767
    addiu	$a2,$a2,4
    # Line 2768
    swc1	$f1,-16($a3)
    # Line 2769
    swc1	$f4,-12($a3)
    # Line 2770
    swc1	$f4,-8($a3)
    # Line 2767
    bne	$a5,$a2,.L0da8963c
    # Line 2771
    swc1	$f4,-4($a3)
.L0da8969c:
    # Line 2773
    jr	$ra
    nop
.end __glSpanGetMemL

# Function: __glSpanGetMemLA
# Declared: Line 2779 (Source lines: 2781-2797)
# Address: 0x0da896a4 - 0x0da89790 (Size: 236 bytes, Frame: 0)
.globl __glSpanGetMemLA
.ent __glSpanGetMemLA
__glSpanGetMemLA:
    # Line 2791
    move	$a6,$zero
    # Line 2781
    lui	$v0,0x17
    # Line 2786
    lw	$a5,180($a1)
    # Line 2781
    addiu	$v0,$v0,-7740
    # addu	at,t9,v0
    # Line 2791
    blez	$a5,.L0da89788
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da896f8
    mtc1	$zero,$f4
.L0da896cc:
    # Line 2792
    lwc1	$f1,0($a2)
    # Line 2791
    addiu	$a6,$a6,1
    # Line 2795
    addiu	$a3,$a3,16
    # Line 2792
    swc1	$f1,-16($a3)
    # Line 2793
    swc1	$f4,-12($a3)
    # Line 2794
    swc1	$f4,-8($a3)
    # Line 2795
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da896cc
    swc1	$f0,-4($a3)
.L0da896f8:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da89788
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da89718:
    # Line 2792
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 2793
    swc1	$f4,4($a3)
    # Line 2794
    swc1	$f4,8($a3)
    # Line 2795
    lwc1	$f0,4($a4)
    swc1	$f0,12($a3)
    # Line 2792
    lwc1	$f3,8($a4)
    swc1	$f3,16($a3)
    # Line 2793
    swc1	$f4,20($a3)
    # Line 2794
    swc1	$f4,24($a3)
    # Line 2795
    lwc1	$f2,12($a4)
    swc1	$f2,28($a3)
    # Line 2792
    lwc1	$f1,16($a4)
    swc1	$f1,32($a3)
    # Line 2793
    swc1	$f4,36($a3)
    # Line 2794
    swc1	$f4,40($a3)
    # Line 2795
    lwc1	$f0,20($a4)
    swc1	$f0,44($a3)
    # Line 2792
    lwc1	$f3,24($a4)
    # Line 2795
    addiu	$a3,$a3,64
    # Line 2792
    swc1	$f3,-16($a3)
    # Line 2793
    swc1	$f4,-12($a3)
    # Line 2794
    swc1	$f4,-8($a3)
    # Line 2795
    addiu	$a4,$a4,32
    lwc1	$f2,-4($a4)
    # Line 2791
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0da89718
    # Line 2795
    swc1	$f2,-4($a3)
.L0da89788:
    # Line 2797
    jr	$ra
    nop
.end __glSpanGetMemLA

# Function: __glSpanGetMemI
# Declared: Line 2803 (Source lines: 2805-2821)
# Address: 0x0da89790 - 0x0da89868 (Size: 216 bytes, Frame: 0)
.globl __glSpanGetMemI
.ent __glSpanGetMemI
__glSpanGetMemI:
    # Line 2815
    move	$a6,$zero
    # Line 2805
    lui	$v0,0x17
    # Line 2810
    lw	$a5,180($a1)
    # Line 2805
    addiu	$v0,$v0,-7976
    # addu	at,t9,v0
    # Line 2815
    blez	$a5,.L0da89860
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0da897e0
    mtc1	$zero,$f4
.L0da897b8:
    addiu	$a6,$a6,1
    # Line 2819
    addiu	$a3,$a3,16
    # Line 2816
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2817
    swc1	$f4,-12($a3)
    # Line 2818
    swc1	$f4,-8($a3)
    bnez	$a4,.L0da897b8
    # Line 2819
    swc1	$f4,-4($a3)
.L0da897e0:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0da89860
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0da89800:
    # Line 2816
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2817
    swc1	$f4,4($a3)
    # Line 2818
    swc1	$f4,8($a3)
    # Line 2819
    swc1	$f4,12($a3)
    # Line 2816
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2817
    swc1	$f4,20($a3)
    # Line 2818
    swc1	$f4,24($a3)
    # Line 2819
    swc1	$f4,28($a3)
    # Line 2816
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2817
    swc1	$f4,36($a3)
    # Line 2818
    swc1	$f4,40($a3)
    # Line 2819
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2816
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2815
    addiu	$a2,$a2,4
    # Line 2816
    swc1	$f1,-16($a3)
    # Line 2817
    swc1	$f4,-12($a3)
    # Line 2818
    swc1	$f4,-8($a3)
    # Line 2815
    bne	$a5,$a2,.L0da89800
    # Line 2819
    swc1	$f4,-4($a3)
.L0da89860:
    # Line 2821
    jr	$ra
    nop
.end __glSpanGetMemI

# Function: __glSpanMemPutRGBA
# Declared: Line 2834 (Source lines: 2841-2853)
# Address: 0x0da89868 - 0x0da89970 (Size: 264 bytes, Frame: 0)
.globl __glSpanMemPutRGBA
.ent __glSpanMemPutRGBA
__glSpanMemPutRGBA:
    # Line 2841
    lw	$a4,180($a1)
    # Line 2846
    move	$a5,$zero
    blez	$a4,.L0da89968
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da898bc
    move	$a7,$a3
.L0da89884:
    # Line 2847
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    # Line 2848
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 2849
    lwc1	$f1,8($a2)
    # Line 2846
    addiu	$a5,$a5,1
    # Line 2850
    addiu	$a3,$a3,16
    # Line 2849
    swc1	$f1,-8($a3)
    # Line 2850
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da89884
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da898bc:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da89968
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da898d8:
    # Line 2847
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    # Line 2848
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    # Line 2849
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    # Line 2850
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    # Line 2847
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    # Line 2848
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    # Line 2849
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    # Line 2850
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    # Line 2847
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    # Line 2848
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    # Line 2849
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    # Line 2850
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    # Line 2847
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    # Line 2848
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    # Line 2849
    lwc1	$f1,56($a3)
    # Line 2850
    addiu	$a2,$a2,64
    # Line 2849
    swc1	$f1,-8($a2)
    # Line 2850
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 2846
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da898d8
    # Line 2850
    swc1	$f0,-4($a2)
.L0da89968:
    # Line 2853
    jr	$ra
    nop
.end __glSpanMemPutRGBA

# Function: __glSpanMemPutRGB
# Declared: Line 2859 (Source lines: 2866-2878)
# Address: 0x0da89970 - 0x0da89a50 (Size: 224 bytes, Frame: 0)
.globl __glSpanMemPutRGB
.ent __glSpanMemPutRGB
__glSpanMemPutRGB:
    # Line 2866
    lw	$a4,180($a1)
    # Line 2871
    move	$a5,$zero
    blez	$a4,.L0da89a48
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da899bc
    move	$t1,$a5
.L0da8998c:
    # Line 2872
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2873
    lwc1	$f1,4($a2)
    # Line 2871
    addiu	$a5,$a5,1
    # Line 2875
    addiu	$a2,$a2,16
    # Line 2873
    swc1	$f1,4($a3)
    # Line 2874
    addiu	$a3,$a3,12
    lwc1	$f0,-8($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da8998c
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0da899bc:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0da89a48
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0da899d8:
    # Line 2872
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2873
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 2874
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 2872
    lwc1	$f3,16($a2)
    swc1	$f3,12($a3)
    # Line 2873
    lwc1	$f2,20($a2)
    swc1	$f2,16($a3)
    # Line 2874
    lwc1	$f1,24($a2)
    swc1	$f1,20($a3)
    # Line 2872
    lwc1	$f0,32($a2)
    swc1	$f0,24($a3)
    # Line 2873
    lwc1	$f3,36($a2)
    swc1	$f3,28($a3)
    # Line 2874
    lwc1	$f2,40($a2)
    swc1	$f2,32($a3)
    # Line 2872
    lwc1	$f1,48($a2)
    swc1	$f1,36($a3)
    # Line 2873
    lwc1	$f0,52($a2)
    # Line 2875
    addiu	$a2,$a2,64
    # Line 2873
    swc1	$f0,40($a3)
    # Line 2874
    addiu	$a3,$a3,48
    lwc1	$f3,-8($a2)
    # Line 2871
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da899d8
    # Line 2874
    swc1	$f3,-4($a3)
.L0da89a48:
    # Line 2878
    jr	$ra
    nop
.end __glSpanMemPutRGB

# Function: __glSpanMemPutL
# Declared: Line 2884 (Source lines: 2891-2901)
# Address: 0x0da89a50 - 0x0da89ae0 (Size: 144 bytes, Frame: 0)
.globl __glSpanMemPutL
.ent __glSpanMemPutL
__glSpanMemPutL:
    # Line 2891
    lw	$a4,180($a1)
    # Line 2896
    move	$a5,$zero
    blez	$a4,.L0da89ad8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da89a8c
    move	$t1,$a5
.L0da89a6c:
    addiu	$a5,$a5,1
    # Line 2898
    addiu	$a2,$a2,16
    # Line 2897
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da89a6c
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0da89a8c:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a6,0x2
    beqz	$at,.L0da89ad8
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0da89aa8:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 2898
    addiu	$a2,$a2,64
    # Line 2897
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 2896
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da89aa8
    # Line 2897
    swc1	$f1,-4($a3)
.L0da89ad8:
    # Line 2901
    jr	$ra
    nop
.end __glSpanMemPutL

# Function: __glSpanMemPutLA
# Declared: Line 2907 (Source lines: 2914-2925)
# Address: 0x0da89ae0 - 0x0da89b98 (Size: 184 bytes, Frame: 0)
.globl __glSpanMemPutLA
.ent __glSpanMemPutLA
__glSpanMemPutLA:
    # Line 2914
    lw	$a4,180($a1)
    # Line 2919
    move	$a5,$zero
    blez	$a4,.L0da89b90
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da89b24
    move	$a7,$a3
.L0da89afc:
    # Line 2920
    lwc1	$f1,0($a2)
    # Line 2919
    addiu	$a5,$a5,1
    # Line 2922
    addiu	$a3,$a3,8
    # Line 2920
    swc1	$f1,-8($a3)
    # Line 2922
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da89afc
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0da89b24:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0da89b90
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0da89b40:
    # Line 2920
    lwc1	$f1,0($a3)
    swc1	$f1,0($a2)
    # Line 2922
    lwc1	$f0,12($a3)
    swc1	$f0,4($a2)
    # Line 2920
    lwc1	$f3,16($a3)
    swc1	$f3,8($a2)
    # Line 2922
    lwc1	$f2,28($a3)
    swc1	$f2,12($a2)
    # Line 2920
    lwc1	$f1,32($a3)
    swc1	$f1,16($a2)
    # Line 2922
    lwc1	$f0,44($a3)
    swc1	$f0,20($a2)
    # Line 2920
    lwc1	$f3,48($a3)
    # Line 2922
    addiu	$a2,$a2,32
    # Line 2920
    swc1	$f3,-8($a2)
    # Line 2922
    addiu	$a3,$a3,64
    lwc1	$f2,-4($a3)
    # Line 2919
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da89b40
    # Line 2922
    swc1	$f2,-4($a2)
.L0da89b90:
    # Line 2925
    jr	$ra
    nop
.end __glSpanMemPutLA

# Function: __glSpanMemPutI
# Declared: Line 2931 (Source lines: 2938-2948)
# Address: 0x0da89b98 - 0x0da89c28 (Size: 144 bytes, Frame: 0)
.globl __glSpanMemPutI
.ent __glSpanMemPutI
__glSpanMemPutI:
    # Line 2938
    lw	$a4,180($a1)
    # Line 2943
    move	$a5,$zero
    blez	$a4,.L0da89c20
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da89bd4
    move	$t1,$a5
.L0da89bb4:
    addiu	$a5,$a5,1
    # Line 2945
    addiu	$a2,$a2,16
    # Line 2944
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0da89bb4
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0da89bd4:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a6,0x2
    beqz	$at,.L0da89c20
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0da89bf0:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 2945
    addiu	$a2,$a2,64
    # Line 2944
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 2943
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0da89bf0
    # Line 2944
    swc1	$f1,-4($a3)
.L0da89c20:
    # Line 2948
    jr	$ra
    nop
.end __glSpanMemPutI

.late_rodata
jtbl_0dbeb3a8:
    .word .L0da83bf0
    .word .L0da83b44
    .word .L0da83b68
    .word .L0da83b80
    .word .L0da83b98
    .word .L0da83bb0
    .word .L0da83bc8
    .word .L0da83be0
    .word .L0da83ef4
    .word .L0da83e44
    .word .L0da83e68
    .word .L0da83e80
    .word .L0da83e98
    .word .L0da83eb0
    .word .L0da83ec8
    .word .L0da83ee0
jtbl_0dbeb3e8:
    .word .L0da846c0
    .word .L0da845e4
    .word .L0da84600
    .word .L0da84620
    .word .L0da84640
    .word .L0da84660
    .word .L0da84680
    .word .L0da846a0
    .word .L0da849d8
    .word .L0da848fc
    .word .L0da84918
    .word .L0da84938
    .word .L0da84958
    .word .L0da84978
    .word .L0da84998
    .word .L0da849b8

.rdata
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_403f000000000000:
    .word 0x403f0000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_408ff80000000000:
    .word 0x408ff800, 0x00000000
_lit_3e000000:
    .word 0x3e000000
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40800000:
    .word 0x40800000

