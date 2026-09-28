# Source: ../soft/so_texture.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_texture.c
# Total Functions: 208

.text

# Function: __glLookUpTextureParams
# Declared: Line 49 (Source lines: 51-59)
# Address: 0x0dae9cac - 0x0dae9cf0 (Size: 68 bytes, Frame: 0)
.globl __glLookUpTextureParams
.ent __glLookUpTextureParams
__glLookUpTextureParams:
    # Line 51
    li	$at,3552
    beq	$a1,$at,.L0dae9cdc
    li	$v0,3553
    beq	$a1,$v0,.L0dae9ce4
    li	$v1,0x806f
    beq	$a1,$v1,.L0dae9cd0
    # Line 59
    move	$v0,$zero
    jr	$ra
    nop
.L0dae9cd0:
    # Line 57
    lw	$v0,2372($a0)
    jr	$ra
    addiu	$v0,$v0,448
.L0dae9cdc:
    # Line 53
    jr	$ra
    lw	$v0,2372($a0)
.L0dae9ce4:
    # Line 55
    lw	$v0,2372($a0)
    jr	$ra
    addiu	$v0,$v0,224
.end __glLookUpTextureParams

# Function: __glLookUpTextureTexobjs
# Declared: Line 63 (Source lines: 66-74)
# Address: 0x0dae9cf0 - 0x0dae9d38 (Size: 72 bytes, Frame: 0)
.globl __glLookUpTextureTexobjs
.ent __glLookUpTextureTexobjs
__glLookUpTextureTexobjs:
    # Line 66
    li	$at,3552
    beq	$a1,$at,.L0dae9d20
    li	$v0,3553
    beq	$a1,$v0,.L0dae9d2c
    li	$v1,0x806f
    beq	$a1,$v1,.L0dae9d14
    # Line 74
    move	$v0,$zero
    jr	$ra
    nop
.L0dae9d14:
    # Line 72
    lw	$v0,2372($a0)
    jr	$ra
    addiu	$v0,$v0,664
.L0dae9d20:
    # Line 68
    lw	$v0,2372($a0)
    jr	$ra
    addiu	$v0,$v0,216
.L0dae9d2c:
    # Line 70
    lw	$v0,2372($a0)
    jr	$ra
    addiu	$v0,$v0,440
.end __glLookUpTextureTexobjs

# Function: __glLookUpTexture
# Declared: Line 78 (Source lines: 80-94)
# Address: 0x0dae9d38 - 0x0dae9db8 (Size: 128 bytes, Frame: 0)
.globl __glLookUpTexture
.ent __glLookUpTexture
__glLookUpTexture:
    # Line 80
    li	$at,3552
    beq	$a1,$at,.L0dae9d7c
    li	$v0,3553
    beq	$a1,$v0,.L0dae9d88
    li	$v1,0x806f
    beq	$a1,$v1,.L0dae9d94
    li	$a2,0x8063
    beq	$a1,$a2,.L0dae9da0
    li	$at,0x8064
    beq	$a1,$at,.L0dae9dac
    li	$v0,0x8070
    beql	$a1,$v0,.L0dae9d74
    # Line 92
    lw	$v0,28204($a0)
    # Line 94
    jr	$ra
    move	$v0,$zero
.L0dae9d74:
    # Line 92
    jr	$ra
    lw	$v0,20($v0)
.L0dae9d7c:
    # Line 82
    lw	$v0,28204($a0)
    jr	$ra
    lw	$v0,0($v0)
.L0dae9d88:
    # Line 84
    lw	$v0,28204($a0)
    jr	$ra
    lw	$v0,4($v0)
.L0dae9d94:
    # Line 86
    lw	$v0,28204($a0)
    jr	$ra
    lw	$v0,8($v0)
.L0dae9da0:
    # Line 88
    lw	$v0,28204($a0)
    jr	$ra
    lw	$v0,12($v0)
.L0dae9dac:
    # Line 90
    lw	$v0,28204($a0)
    jr	$ra
    lw	$v0,16($v0)
.end __glLookUpTexture

# Function: __glLookUpTextureObject
# Declared: Line 98 (Source lines: 100-108)
# Address: 0x0dae9db8 - 0x0dae9e00 (Size: 72 bytes, Frame: 0)
.globl __glLookUpTextureObject
.ent __glLookUpTextureObject
__glLookUpTextureObject:
    # Line 100
    li	$at,3552
    beq	$a1,$at,.L0dae9de8
    li	$v0,3553
    beq	$a1,$v0,.L0dae9df4
    li	$v1,0x806f
    beq	$a1,$v1,.L0dae9ddc
    # Line 108
    move	$v0,$zero
    jr	$ra
    nop
.L0dae9ddc:
    # Line 106
    lw	$v0,28208($a0)
    jr	$ra
    lw	$v0,8($v0)
.L0dae9de8:
    # Line 102
    lw	$v0,28208($a0)
    jr	$ra
    lw	$v0,0($v0)
.L0dae9df4:
    # Line 104
    lw	$v0,28208($a0)
    jr	$ra
    lw	$v0,4($v0)
.end __glLookUpTextureObject

# Function: Clampf
# Declared: Line 112 (Source lines: 113-116)
# Address: 0x0dae9e00 - 0x0dae9e38 (Size: 56 bytes, Frame: 0)
.ent Clampf
Clampf:
    # Line 113
    c.lt.s	$f12,$f13
    nop
    bc1t	.L0dae9e30
    # Line 116
    mov.s	$f0,$f12
    # Line 114
    c.lt.s	$f14,$f12
    nop
    bc1f	.L0dae9e28
    nop
    # Line 115
    jr	$ra
    mov.s	$f0,$f14
.L0dae9e28:
    # Line 116
    jr	$ra
    nop
.L0dae9e30:
    # Line 114
    jr	$ra
    mov.s	$f0,$f13
.end Clampf

# Function: __glCopyTexImage
# Declared: Line 122 (Source lines: 124-126)
# Address: 0x0dae9e38 - 0x0dae9e6c (Size: 52 bytes, Frame: 48)
.globl __glCopyTexImage
.ent __glCopyTexImage
__glCopyTexImage:
    # Line 124
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-9680
    # addu	gp,t9,at
    # Line 125
    lw	$t9,12580($a0)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a2,1
    # Line 126
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCopyTexImage

# Function: __glReadTexImage
# Declared: Line 130 (Source lines: 132-134)
# Address: 0x0dae9e6c - 0x0dae9ea0 (Size: 52 bytes, Frame: 48)
.globl __glReadTexImage
.ent __glReadTexImage
__glReadTexImage:
    # Line 132
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-9732
    # addu	gp,t9,at
    # Line 133
    lw	$t9,12584($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 134
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glReadTexImage

# Function: __glTexInitTextureObject
# Declared: Line 152 (Source lines: 154-163)
# Address: 0x0dae9ea0 - 0x0dae9edc (Size: 60 bytes, Frame: 0)
.globl __glTexInitTextureObject
.ent __glTexInitTextureObject
__glTexInitTextureObject:
    # Line 158
    sb	$zero,12($a1)
    # Line 157
    sw	$a3,8($a1)
    # Line 161
    sw	$a2,236($a1)
    # Line 154
    lui	$a2,0x11
    addiu	$a2,$a2,-9784
    # addu	at,t9,a2
    # Line 156
    la	$v0,__glFreeTexObj
    # Line 162
    lwc1	$f0,_lit_3f800000
    # Line 160
    la	$a0,__glReadTexImage
    # Line 159
    la	$v1,__glCopyTexImage
    # Line 162
    swc1	$f0,240($a1)
    # Line 160
    sw	$a0,268($a1)
    # Line 159
    sw	$v1,264($a1)
    # Line 163
    jr	$ra
    # Line 156
    sw	$v0,4($a1)
.end __glTexInitTextureObject

# Function: __glShareTextureObjects
# Declared: Line 170 (Source lines: 172-174)
# Address: 0x0dae9edc - 0x0dae9ef4 (Size: 24 bytes, Frame: 0)
.globl __glShareTextureObjects
.ent __glShareTextureObjects
__glShareTextureObjects:
    # Line 172
    lw	$v0,28236($a1)
    sw	$v0,28236($a0)
    # Line 173
    lw	$at,8($v0)
    addiu	$at,$at,1
    # Line 174
    jr	$ra
    # Line 173
    sw	$at,8($v0)
.end __glShareTextureObjects

# Function: __glEarlyInitTextureState
# Declared: Line 176 (Source lines: 177-260)
# Address: 0x0dae9ef4 - 0x0daea0c0 (Size: 460 bytes, Frame: 224)
.globl __glEarlyInitTextureState
.ent __glEarlyInitTextureState
__glEarlyInitTextureState:
    # Line 177
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$s4,40($sp)
    sd	$s5,16($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$ra,48($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lw	$at,28232($a0)
    lui	$v0,0x11
    addiu	$v0,$v0,-9868
    bnez	$at,.L0dae9f40
    nop
    # Line 184
    la	$v1,__glTexInitTextureObject
    sw	$v1,28232($s0)
.L0dae9f40:
    lw	$a2,28224($s0)
    bnez	$a2,.L0dae9f50
    # Line 187
    la	$at,__glTexCreateLevel
    sw	$at,28224($s0)
.L0dae9f50:
    lw	$v0,28228($s0)
    bnez	$v0,.L0dae9f60
    # Line 190
    la	$v1,__glTexCreateProxyLevel
    sw	$v1,28228($s0)
.L0dae9f60:
    # Line 201
    li	$a2,224
    li	$a1,6
    move	$a0,$s0
    # Line 200
    lw	$s1,3340($s0)
    # Line 194
    li	$s7,6
    sw	$s7,3336($s0)
    # Line 195
    lw	$a3,3436($s0)
    li	$s6,1
    # Line 201
    lw	$t9,4($s0)
    # Line 195
    addiu	$a3,$a3,-1
    sllv	$a3,$s6,$a3
    # Line 196
    sw	$a3,3432($s0)
    # Line 201
    jalr	$t9
    # Line 195
    sw	$a3,3428($s0)
    # Line 204
    li	$a2,4
    lw	$t9,4($s0)
    li	$a1,6
    move	$a0,$s0
    jalr	$t9
    # Line 201
    sw	$v0,2372($s0)
    # Line 207
    li	$a2,36
    lw	$t9,4($s0)
    move	$a1,$s1
    move	$a0,$s0
    jalr	$t9
    # Line 204
    sw	$v0,28204($s0)
    # Line 207
    lw	$a4,28236($s0)
    beqz	$a4,.L0daea0a8
    sw	$v0,2376($s0)
.L0dae9fd4:
    # Line 231
    li	$a2,304
    lw	$t9,4($s0)
    li	$a1,6
    move	$a0,$s0
    jalr	$t9
    # Line 224
    lw	$s5,3436($s0)
    # Line 236
    li	$a2,4
    lw	$t9,4($s0)
    li	$a1,6
    move	$a0,$s0
    jalr	$t9
    # Line 231
    sw	$v0,28212($s0)
    # Line 241
    move	$s4,$zero
    # Line 240
    lw	$s1,28212($s0)
    # Line 236
    sw	$v0,28208($s0)
    # Line 241
    move	$s3,$zero
    addiu	$s2,$s1,16
.L0daea018:
    # Line 242
    move	$a0,$s0
    lw	$t9,28232($s0)
    move	$a1,$s1
    move	$a2,$zero
    jalr	$t9
    move	$a3,$s4
    # Line 248
    sw	$s6,0($s1)
    # Line 252
    lw	$a6,28204($s0)
    addu	$a6,$a6,$s3
    sw	$s2,0($a6)
    # Line 253
    lw	$a5,28208($s0)
    # Line 256
    li	$a2,100
    move	$a1,$s5
    # Line 253
    addu	$a5,$a5,$s3
    sw	$s1,0($a5)
    # Line 256
    move	$a0,$s0
    lw	$t9,4($s0)
    # Line 241
    addiu	$s2,$s2,304
    addiu	$s3,$s3,4
    # Line 256
    jalr	$t9
    # Line 241
    addiu	$s1,$s1,304
    addiu	$s4,$s4,1
    bne	$s4,$s7,.L0daea018
    # Line 256
    sw	$v0,-60($s1)
    # ld	gp,0(sp)
    # Line 260
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$ra,48($sp)
    ld	$s6,56($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea0a8:
    # Line 220
    # lw $t9, -27952($gp) # &__glNamesNewArray
    move	$a0,$s0
    jal	__glNamesNewArray
    li	$a1,1
    b	.L0dae9fd4
    sw	$v0,28236($s0)
.end __glEarlyInitTextureState

# Function: InitTextureMachine
# Declared: Line 271 (Source lines: 273-332)
# Address: 0x0daea0c0 - 0x0daea270 (Size: 432 bytes, Frame: 208)
.ent InitTextureMachine
InitTextureMachine:
    # Line 276
    sw	$a0,0($a2)
    # Line 281
    li	$v0,10497
    # Line 284
    li	$at,9986
    sw	$at,16($a2)
    # Line 283
    sw	$v0,12($a2)
    # Line 282
    sw	$v0,8($a2)
    # Line 281
    sw	$v0,4($a2)
    # Line 273
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    # Line 285
    li	$ra,9729
    sw	$ra,20($a2)
    # Line 286
    lwc1	$f3,3284($a0)
    sd	$s5,32($sp)
    sd	$s4,8($sp)
    swc1	$f3,172($a2)
    # Line 273
    move	$s4,$a1
    # Line 287
    lwc1	$f2,3284($a0)
    sd	$s0,16($sp)
    # Line 290
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 287
    swc1	$f2,176($a2)
    # Line 273
    move	$s0,$a2
    # Line 288
    lwc1	$f1,3284($a0)
    # Line 290
    addiu	$t9,$t9,-320
    sd	$s1,24($sp)
    # Line 288
    swc1	$f1,180($a2)
    # Line 273
    move	$s1,$a0
    # Line 289
    lwc1	$f0,3284($s1)
    # Line 290
    addiu	$a0,$a2,24
    bal __gllei_TexImage3DEXT
    # Line 289
    swc1	$f0,184($a2)
    # Line 292
    beqz	$s4,.L0daea214
    li	$s5,1
    li	$a0,2
    beq	$s5,$s4,.L0daea224
    li	$a1,3
    beql	$a0,$s4,.L0daea234
    # Line 302
    sw	$a1,232($s0)
    # Line 292
    beq	$a1,$s4,.L0daea240
    li	$v1,4
    beq	$s4,$v1,.L0daea250
    li	$a3,5
    beq	$s4,$a3,.L0daea260
.L0daea168:
    # Line 323
    li	$a2,100
    lw	$t9,4($s1)
    # Line 321
    lw	$s4,3436($s1)
    # Line 323
    move	$a0,$s1
    jal	sub_0daf0000
    move	$a1,$s4
    sw	$v0,228($s0)
    ld	$s1,24($sp)
    move	$a2,$s4
    sll	$a1,$s4,0x2
    blez	$s4,.L0daea200
    ld	$ra,0($sp)
    move	$a0,$zero
    andi	$at,$s4,0x1
    subu	$a1,$a1,$s4
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s4
    ld	$s4,8($sp)
    beqz	$at,.L0daea1cc
    sll	$a1,$a1,0x2
    ld	$s4,8($sp)
    # Line 329
    lw	$a3,228($s0)
    addu	$a3,$a3,$a0
    # Line 328
    addiu	$a0,$a0,100
    # Line 329
    sw	$s5,60($a3)
.L0daea1cc:
    sra	$at,$a2,0x1
    beqz	$at,.L0daea200
    move	$a4,$a0
    move	$a0,$a4
.L0daea1dc:
    lw	$a3,228($s0)
    addu	$a3,$a3,$a0
    sw	$s5,60($a3)
    lw	$v0,228($s0)
    # Line 328
    addiu	$v1,$a0,100
    addiu	$a0,$v1,100
    # Line 329
    addu	$v0,$v0,$v1
    # Line 328
    bne	$a0,$a1,.L0daea1dc
    # Line 329
    sw	$s5,60($v0)
.L0daea200:
    # Line 332
    ld	$s0,16($sp)
    ld	$s4,8($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daea214:
    # Line 294
    sw	$s5,232($s0)
    # Line 295
    lw	$at,28224($s1)
    # Line 296
    b	.L0daea168
    # Line 295
    sw	$at,244($s0)
.L0daea224:
    # Line 298
    sw	$a0,232($s0)
    # Line 299
    lw	$v0,28224($s1)
    # Line 300
    b	.L0daea168
    # Line 299
    sw	$v0,244($s0)
.L0daea234:
    # Line 303
    lw	$v1,28224($s1)
    # Line 304
    b	.L0daea168
    # Line 303
    sw	$v1,244($s0)
.L0daea240:
    # Line 306
    sw	$s5,232($s0)
    # Line 307
    lw	$a3,28228($s1)
    # Line 308
    b	.L0daea168
    # Line 307
    sw	$a3,244($s0)
.L0daea250:
    # Line 310
    sw	$a0,232($s0)
    # Line 311
    lw	$at,28228($s1)
    # Line 312
    b	.L0daea168
    # Line 311
    sw	$at,244($s0)
.L0daea260:
    # Line 314
    sw	$a1,232($s0)
    # Line 315
    lw	$v0,28228($s1)
    b	.L0daea168
    sw	$v0,244($s0)
.end InitTextureMachine

# Function: __glInitTextureState
# Declared: Line 334 (Source lines: 335-424)
# Address: 0x0daea270 - 0x0daea5b8 (Size: 840 bytes, Frame: 128)
.globl __glInitTextureState
.ent __glInitTextureState
__glInitTextureState:
    # Line 348
    lw	$a2,2376($a0)
    # Line 335
    addiu	$sp,$sp,-128
    sd	$s5,80($sp)
    move	$s5,$a0
    sd	$s7,72($sp)
    # Line 343
    lw	$s7,3436($a0)
    sd	$s3,96($sp)
    # Line 349
    move	$s3,$zero
    # sd	gp,88(sp)
    # Line 335
    lui	$at,0x11
    addiu	$at,$at,-10760
    # addu	gp,t9,at
    # Line 341
    lw	$v0,3336($a0)
    # Line 342
    lw	$a3,3340($a0)
    # Line 345
    lwc1	$f0,3284($a0)
    sd	$v0,16($sp)
    # Line 349
    blez	$a3,.L0daea318
    # Line 345
    swc1	$f0,212($a0)
    # Line 349
    move	$a5,$a3
    andi	$a0,$a3,0x3
    beqz	$a0,.L0daea2dc
    li	$a4,8448
.L0daea2c8:
    addiu	$a2,$a2,36
    addiu	$s3,$s3,1
    addi	$a0,$a0,-1
    bnez	$a0,.L0daea2c8
    # Line 350
    sw	$a4,-36($a2)
.L0daea2dc:
    move	$a7,$s3
    sra	$v1,$a5,0x2
    beqz	$v1,.L0daea310
    move	$a6,$a2
    move	$a2,$a7
    move	$a0,$a6
.L0daea2f4:
    # Line 349
    addiu	$a0,$a0,144
    # Line 350
    sw	$a4,-36($a0)
    sw	$a4,-72($a0)
    sw	$a4,-108($a0)
    # Line 349
    addiu	$a2,$a2,4
    bne	$a3,$a2,.L0daea2f4
    # Line 350
    sw	$a4,-144($a0)
.L0daea310:
    sd	$s4,56($sp)
    sd	$s0,64($sp)
.L0daea318:
    sd	$s2,24($sp)
    sd	$s6,32($sp)
    sd	$ra,8($sp)
    sd	$s1,40($sp)
    sd	$s8,48($sp)
    sdc1	$f30,0($sp)
    sd	$s0,64($sp)
    # Line 355
    lw	$s0,28204($s5)
    # Line 356
    ld	$a1,16($sp)
    sd	$s4,56($sp)
    # Line 354
    lw	$s4,2372($s5)
    # Line 356
    blez	$a1,.L0daea548
    move	$s3,$zero
    sd	$ra,8($sp)
    li	$s2,1
    la	$s8,sub_0daf0000
    lwc1	$f30,_lit_3f800000
    addiu	$s6,$s4,20
    addiu	$s8,$s8,-320
    sll	$s1,$s7,0x2
    subu	$s1,$s1,$s7
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$s7
    b	.L0daea400
    sll	$s1,$s1,0x2
.L0daea37c:
    # Line 378
    lw	$v1,0($s0)
    sw	$s2,232($v1)
    # Line 379
    lw	$v0,0($s0)
    lw	$at,28224($s5)
    sw	$at,244($v0)
.L0daea390:
    # Line 403
    blez	$s7,.L0daea3f0
    andi	$a1,$s7,0x1
    beqz	$a1,.L0daea3b4
    move	$a0,$zero
    # Line 406
    lw	$at,0($s0)
    lw	$at,228($at)
    addu	$at,$at,$a0
    # Line 405
    addiu	$a0,$a0,100
    # Line 406
    sw	$s2,60($at)
.L0daea3b4:
    sra	$v0,$a2,0x1
    beqz	$v0,.L0daea3f0
    move	$a3,$a0
    move	$a0,$a3
.L0daea3c4:
    lw	$a1,0($s0)
    lw	$a1,228($a1)
    addu	$a1,$a1,$a0
    sw	$s2,60($a1)
    lw	$v1,0($s0)
    lw	$v1,228($v1)
    # Line 405
    addiu	$a1,$a0,100
    addiu	$a0,$a1,100
    # Line 406
    addu	$v1,$v1,$a1
    # Line 405
    bne	$a0,$s1,.L0daea3c4
    # Line 406
    sw	$s2,60($v1)
.L0daea3f0:
    # Line 356
    addiu	$s3,$s3,1
    ld	$at,16($sp)
    beq	$at,$s3,.L0daea548
    addiu	$s0,$s0,4
.L0daea400:
    li	$a0,10497
    li	$v1,9986
    li	$v0,9729
    # Line 362
    sw	$v0,16($s4)
    # Line 361
    sw	$v1,12($s4)
    # Line 360
    sw	$a0,8($s4)
    # Line 359
    sw	$a0,4($s4)
    # Line 358
    sw	$a0,0($s4)
    # Line 363
    lwc1	$f4,3284($s5)
    swc1	$f4,168($s4)
    # Line 364
    lwc1	$f3,3284($s5)
    swc1	$f3,172($s4)
    # Line 365
    lwc1	$f2,3284($s5)
    swc1	$f2,176($s4)
    # Line 368
    move	$t9,$s8
    # Line 366
    lwc1	$f1,3284($s5)
    # Line 368
    move	$a0,$s6
    bal __gllei_TexImage3DEXT
    # Line 366
    swc1	$f1,180($s4)
    # Line 370
    sw	$zero,216($s4)
    # Line 371
    swc1	$f30,220($s4)
    # Line 375
    li	$a2,54
    # Line 374
    lw	$at,0($s0)
    # Line 375
    move	$a0,$zero
    # Line 356
    addiu	$s6,$s6,224
    # Line 374
    sw	$s5,0($at)
    # Line 375
    move	$a3,$s4
    lw	$a4,0($s0)
    # Line 356
    addiu	$s4,$s4,224
    li	$a1,3
    # Line 375
    addiu	$a4,$a4,4
.L0daea47c:
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0daea47c
    sw	$v0,0($v1)
    li	$v1,2
    # Line 376
    beqz	$s3,.L0daea37c
    # Line 403
    move	$a2,$s7
    # Line 376
    beq	$s3,$s2,.L0daea4e4
    li	$at,2
    beq	$s3,$v1,.L0daea4fc
    li	$at,3
    beq	$s3,$a1,.L0daea514
    li	$at,4
    beq	$s3,$at,.L0daea52c
    li	$v0,5
    bne	$s3,$v0,.L0daea390
    li	$at,3
    # Line 398
    lw	$v0,0($s0)
    sw	$at,232($v0)
    # Line 399
    lw	$a1,0($s0)
    lw	$v1,28228($s5)
    b	.L0daea390
    sw	$v1,244($a1)
.L0daea4e4:
    # Line 382
    lw	$v0,0($s0)
    sw	$at,232($v0)
    # Line 383
    lw	$a1,0($s0)
    lw	$v1,28224($s5)
    # Line 384
    b	.L0daea390
    # Line 383
    sw	$v1,244($a1)
.L0daea4fc:
    # Line 386
    lw	$v0,0($s0)
    sw	$at,232($v0)
    # Line 387
    lw	$a1,0($s0)
    lw	$v1,28224($s5)
    # Line 388
    b	.L0daea390
    # Line 387
    sw	$v1,244($a1)
.L0daea514:
    # Line 390
    lw	$at,0($s0)
    sw	$s2,232($at)
    # Line 391
    lw	$a1,0($s0)
    lw	$v1,28228($s5)
    # Line 392
    b	.L0daea390
    # Line 391
    sw	$v1,244($a1)
.L0daea52c:
    li	$a1,2
    # Line 394
    lw	$at,0($s0)
    sw	$a1,232($at)
    # Line 395
    lw	$v1,0($s0)
    lw	$v0,28228($s5)
    # Line 396
    b	.L0daea390
    # Line 395
    sw	$v0,244($v1)
.L0daea548:
    # ld	gp,88(sp)
    # Line 424
    ld	$s0,64($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    ld	$s3,96($sp)
    ld	$s4,56($sp)
    ld	$s6,32($sp)
    ld	$s7,72($sp)
    ld	$s8,48($sp)
    # Line 411
    li	$v0,9216
    # Line 418
    sw	$v0,2248($s5)
    # Line 417
    sw	$v0,2124($s5)
    # Line 414
    sw	$v0,2000($s5)
    # Line 412
    lwc1	$f30,3284($s5)
    # Line 411
    sw	$v0,1876($s5)
    # Line 424
    ld	$ra,8($sp)
    # Line 423
    swc1	$f30,2392($s5)
    # Line 422
    swc1	$f30,2388($s5)
    # Line 421
    swc1	$f30,2384($s5)
    # Line 420
    swc1	$f30,2380($s5)
    # Line 416
    swc1	$f30,2024($s5)
    # Line 415
    swc1	$f30,2008($s5)
    # Line 413
    swc1	$f30,1896($s5)
    # Line 412
    swc1	$f30,1880($s5)
    # Line 424
    ld	$s5,80($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glInitTextureState

# Function: __glFreeTextureState
# Declared: Line 426 (Source lines: 427-464)
# Address: 0x0daea5b8 - 0x0daea764 (Size: 428 bytes, Frame: 224)
.globl __glFreeTextureState
.ent __glFreeTextureState
__glFreeTextureState:
    # Line 427
    addiu	$sp,$sp,-96
    sd	$s2,64($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s4,32($sp)
    # Line 435
    lw	$s4,3436($a0)
    sd	$s1,16($sp)
    # Line 428
    lw	$s1,28204($a0)
    sd	$s3,40($sp)
    # Line 437
    move	$s3,$zero
    sd	$gp,0($sp)
    sd	$s5,8($sp)
    # Line 436
    lw	$s5,3336($a0)
    # Line 427
    lui	$at,0x11
    addiu	$at,$at,-11600
    # Line 437
    blez	$s5,.L0daea6a4
    # Line 427
    addu	$gp,$t9,$at
    sd	$s6,56($sp)
    sd	$ra,48($sp)
    # Line 437
    sll	$s2,$s4,0x2
    subu	$s2,$s2,$s4
    sll	$s2,$s2,0x3
    addu	$s2,$s2,$s4
    b	.L0daea634
    sll	$s2,$s2,0x2
.L0daea61c:
    addiu	$s3,$s3,1
    # Line 446
    lw	$t9,12($s0)
    # Line 437
    addiu	$s1,$s1,4
    # Line 446
    jalr	$t9
    move	$a0,$s0
    # Line 437
    beq	$s5,$s3,.L0daea698
.L0daea634:
    # Line 439
    nop	# was lw $t9, -26368($gp) # &__glBindTexture
    move	$a0,$s0
    move	$a1,$s3
    jal	__glBindTexture
    move	$a2,$zero
    blez	$s4,.L0daea68c
    move	$s6,$zero
    lw	$a1,0($s1)
    b	.L0daea660
    lw	$a1,228($a1)
.L0daea65c:
    # Line 441
    beq	$s6,$s2,.L0daea61c
.L0daea660:
    # Line 439
    addu	$a3,$s6,$a1
    lw	$a3,0($a3)
    beqz	$a3,.L0daea65c
    # Line 441
    addiu	$s6,$s6,100
    # Line 444
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a3
    lw	$a1,0($s1)
    b	.L0daea65c
    lw	$a1,228($a1)
.L0daea68c:
    # Line 441
    lw	$a1,0($s1)
    b	.L0daea61c
    lw	$a1,228($a1)
.L0daea698:
    ld	$ra,48($sp)
    ld	$s6,56($sp)
    ld	$s2,64($sp)
.L0daea6a4:
    # Line 448
    lw	$v0,28236($s0)
    lw	$at,8($v0)
    addiu	$at,$at,-1
    sw	$at,8($v0)
    lw	$a1,28236($s0)
    lw	$a2,8($a1)
    beqz	$a2,.L0daea750
    sd	$ra,48($sp)
    # Line 454
    lw	$t9,12($s0)
.L0daea6c8:
    lw	$a1,28204($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 452
    sw	$zero,28236($s0)
    # Line 455
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,28208($s0)
    # Line 456
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,28212($s0)
    # Line 457
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,2372($s0)
    # Line 458
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,2376($s0)
    ld	$gp,0($sp)
    # Line 463
    sw	$zero,2376($s0)
    # Line 462
    sw	$zero,2372($s0)
    # Line 461
    sw	$zero,28212($s0)
    # Line 460
    sw	$zero,28208($s0)
    # Line 459
    sw	$zero,28204($s0)
    # Line 464
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s3,40($sp)
    ld	$ra,48($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea750:
    # Line 450
    # lw $t9, -27944($gp) # &__glNamesFreeArray
    jal	__glNamesFreeArray
    move	$a0,$s0
    b	.L0daea6c8
    # Line 454
    lw	$t9,12($s0)
.end __glFreeTextureState

# Function: __glim_TexGenfv
# Declared: Line 468 (Source lines: 469-524)
# Address: 0x0daea764 - 0x0daea9a0 (Size: 572 bytes, Frame: 224)
.globl __glim_TexGenfv
.ent __glim_TexGenfv
__glim_TexGenfv:
    # Line 473
    li	$v0,1
    # Line 469
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    # Line 473
    lw	$s0,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 469
    lui	$v1,0x11
    addiu	$v1,$v1,-12028
    # Line 473
    beq	$at,$v0,.L0daea950
    # Line 469
    addu	$gp,$t9,$v1
    # Line 475
    li	$a3,8192
    beq	$a0,$a3,.L0daea89c
    li	$at,8193
    beq	$a0,$at,.L0daea8a8
    li	$v0,8194
    beq	$a0,$v0,.L0daea8b4
    li	$v1,8195
    beq	$a0,$v1,.L0daea7d0
    # Line 481
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 482
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea7d0:
    # Line 479
    addiu	$a4,$s0,2248
    # Line 484
    li	$a3,9472
.L0daea7d8:
    beq	$a1,$a3,.L0daea8c0
    li	$at,9473
    beq	$a1,$at,.L0daea92c
    li	$v0,9474
    beq	$a1,$v0,.L0daea810
    # Line 520
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 521
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea810:
    # Line 511
    lwc1	$f3,0($a2)
    swc1	$f3,0($sp)
    lwc1	$f2,4($a2)
    swc1	$f2,4($sp)
    lwc1	$f1,8($a2)
    swc1	$f1,8($sp)
    lwc1	$f0,12($a2)
    swc1	$f0,12($sp)
    # Line 512
    lw	$a5,29664($s0)
    lbu	$v1,268($a5)
    beqz	$v1,.L0daea860
    sd	$ra,40($sp)
    sd	$a4,48($sp)
    # Line 514
    lw	$t9,11908($s0)
    sd	$a5,16($sp)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a5
    ld	$a5,16($sp)
    ld	$a4,48($sp)
.L0daea860:
    # Line 516
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    ld	$ra,40($sp)
.L0daea878:
    # Line 523
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($s0)
    ld	$gp,24($sp)
    ori	$a0,$a0,0x1
    sw	$a0,11764($s0)
    # Line 524
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea89c:
    # Line 476
    addiu	$a4,$s0,1876
    b	.L0daea7d8
    # Line 484
    li	$a3,9472
.L0daea8a8:
    # Line 477
    addiu	$a4,$s0,2000
    b	.L0daea7d8
    # Line 484
    li	$a3,9472
.L0daea8b4:
    # Line 478
    addiu	$a4,$s0,2124
    b	.L0daea7d8
    # Line 484
    li	$a3,9472
.L0daea8c0:
    # Line 486
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a5,$f0
    li	$at,9216
    sll	$a5,$a5,0x0
    beq	$a5,$at,.L0daea974
    move	$a1,$a5
    li	$at,9217
    beq	$a1,$at,.L0daea974
    li	$v0,9218
    beq	$a1,$v0,.L0daea910
    # Line 499
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 500
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea910:
    # Line 492
    li	$v1,8194
    beq	$a0,$v1,.L0daea97c
    li	$a3,8195
    beq	$a0,$a3,.L0daea980
    # Line 493
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 497
    b	.L0daea878
    # Line 496
    sw	$a5,0($a4)
.L0daea92c:
    # Line 504
    lwc1	$f0,0($a2)
    swc1	$f0,20($a4)
    # Line 505
    lwc1	$f3,4($a2)
    swc1	$f3,24($a4)
    # Line 506
    lwc1	$f2,8($a2)
    swc1	$f2,28($a4)
    # Line 507
    lwc1	$f1,12($a2)
    # Line 508
    b	.L0daea878
    # Line 507
    swc1	$f1,32($a4)
.L0daea950:
    # Line 473
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea974:
    # Line 490
    b	.L0daea878
    # Line 489
    sw	$a5,0($a4)
.L0daea97c:
    # Line 493
    # lw $t9, -29008($gp) # &__glSetError
.L0daea980:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 494
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_TexGenfv

# Function: __glim_TexGenf
# Declared: Line 526 (Source lines: 527-537)
# Address: 0x0daea9a0 - 0x0daea9fc (Size: 92 bytes, Frame: 48)
.globl __glim_TexGenf
.ent __glim_TexGenf
__glim_TexGenf:
    # Line 527
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-12600
    beq	$a1,$at,.L0daea9e0
    nop
    # Line 534
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 535
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daea9e0:
    # Line 531
    # lw $t9, -27032($gp) # &__glim_TexGenfv
    bal __glim_TexGenfv
    addiu	$a2,$sp,32
    # Line 537
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexGenf

# Function: __glim_TexGendv
# Declared: Line 539 (Source lines: 540-595)
# Address: 0x0daea9fc - 0x0daeac58 (Size: 604 bytes, Frame: 224)
.globl __glim_TexGendv
.ent __glim_TexGendv
__glim_TexGendv:
    # Line 544
    li	$v0,1
    # Line 540
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    # Line 544
    lw	$s0,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 540
    lui	$v1,0x11
    addiu	$v1,$v1,-12692
    # Line 544
    beq	$at,$v0,.L0daeac08
    # Line 540
    addu	$gp,$t9,$v1
    # Line 546
    li	$a3,8192
    beq	$a0,$a3,.L0daeab44
    li	$at,8193
    beq	$a0,$at,.L0daeab50
    li	$v0,8194
    beq	$a0,$v0,.L0daeab5c
    li	$v1,8195
    beq	$a0,$v1,.L0daeaa68
    # Line 552
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 553
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeaa68:
    # Line 550
    addiu	$a4,$s0,2248
    # Line 555
    li	$a3,9472
.L0daeaa70:
    beq	$a1,$a3,.L0daeab68
    li	$at,9473
    beq	$a1,$at,.L0daeabd4
    li	$v0,9474
    beq	$a1,$v0,.L0daeaaa8
    # Line 591
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 592
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeaaa8:
    # Line 582
    ldc1	$f3,0($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    ldc1	$f2,8($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,16($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,24($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 583
    lw	$a5,29664($s0)
    lbu	$v1,268($a5)
    beqz	$v1,.L0daeab08
    sd	$ra,40($sp)
    sd	$a4,48($sp)
    # Line 585
    lw	$t9,11908($s0)
    sd	$a5,16($sp)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a5
    ld	$a5,16($sp)
    ld	$a4,48($sp)
.L0daeab08:
    # Line 587
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    ld	$ra,40($sp)
.L0daeab20:
    # Line 594
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($s0)
    ld	$gp,24($sp)
    ori	$a0,$a0,0x1
    sw	$a0,11764($s0)
    # Line 595
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeab44:
    # Line 547
    addiu	$a4,$s0,1876
    b	.L0daeaa70
    # Line 555
    li	$a3,9472
.L0daeab50:
    # Line 548
    addiu	$a4,$s0,2000
    b	.L0daeaa70
    # Line 555
    li	$a3,9472
.L0daeab5c:
    # Line 549
    addiu	$a4,$s0,2124
    b	.L0daeaa70
    # Line 555
    li	$a3,9472
.L0daeab68:
    # Line 557
    ldc1	$f0,0($a2)
    trunc.l.d	$f0,$f0
    dmfc1	$a5,$f0
    li	$at,9216
    sll	$a5,$a5,0x0
    beq	$a5,$at,.L0daeac2c
    move	$a1,$a5
    li	$at,9217
    beq	$a1,$at,.L0daeac2c
    li	$v0,9218
    beq	$a1,$v0,.L0daeabb8
    # Line 570
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 571
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeabb8:
    # Line 563
    li	$v1,8194
    beq	$a0,$v1,.L0daeac34
    li	$a3,8195
    beq	$a0,$a3,.L0daeac38
    # Line 564
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 568
    b	.L0daeab20
    # Line 567
    sw	$a5,0($a4)
.L0daeabd4:
    # Line 575
    ldc1	$f0,0($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,20($a4)
    # Line 576
    ldc1	$f3,8($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,24($a4)
    # Line 577
    ldc1	$f2,16($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,28($a4)
    # Line 578
    ldc1	$f1,24($a2)
    cvt.s.d	$f1,$f1
    # Line 579
    b	.L0daeab20
    # Line 578
    swc1	$f1,32($a4)
.L0daeac08:
    # Line 544
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeac2c:
    # Line 561
    b	.L0daeab20
    # Line 560
    sw	$a5,0($a4)
.L0daeac34:
    # Line 564
    # lw $t9, -29008($gp) # &__glSetError
.L0daeac38:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 565
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_TexGendv

# Function: __glim_TexGend
# Declared: Line 597 (Source lines: 598-608)
# Address: 0x0daeac58 - 0x0daeacb4 (Size: 92 bytes, Frame: 48)
.globl __glim_TexGend
.ent __glim_TexGend
__glim_TexGend:
    # Line 598
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sdc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-13296
    beq	$a1,$at,.L0daeac98
    nop
    # Line 605
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 606
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daeac98:
    # Line 602
    # lw $t9, -27024($gp) # &__glim_TexGendv
    bal __glim_TexGendv
    addiu	$a2,$sp,32
    # Line 608
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexGend

# Function: __glim_TexGeniv
# Declared: Line 610 (Source lines: 611-666)
# Address: 0x0daeacb4 - 0x0daeaf44 (Size: 656 bytes, Frame: 224)
.globl __glim_TexGeniv
.ent __glim_TexGeniv
__glim_TexGeniv:
    # Line 615
    li	$v0,1
    # Line 611
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    # Line 615
    lw	$s0,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 611
    lui	$v1,0x11
    addiu	$v1,$v1,-13388
    # Line 615
    beq	$at,$v0,.L0daeaef4
    # Line 611
    addu	$gp,$t9,$v1
    # Line 617
    li	$a3,8192
    beq	$a0,$a3,.L0daeae1c
    li	$at,8193
    beq	$a0,$at,.L0daeae28
    li	$v0,8194
    beq	$a0,$v0,.L0daeae34
    li	$v1,8195
    beq	$a0,$v1,.L0daead20
    # Line 623
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 624
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daead20:
    # Line 621
    addiu	$a4,$s0,2248
    # Line 626
    li	$a3,9472
.L0daead28:
    beq	$a1,$a3,.L0daeae40
    li	$at,9473
    beq	$a1,$at,.L0daeaea0
    li	$v0,9474
    beq	$a1,$v0,.L0daead60
    # Line 662
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 663
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daead60:
    # Line 653
    lw	$v0,0($a2)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lw	$at,4($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lw	$a5,8($a2)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lw	$a3,12($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 654
    lw	$a5,29664($s0)
    lbu	$v1,268($a5)
    beqz	$v1,.L0daeade0
    sd	$ra,40($sp)
    sd	$a4,48($sp)
    # Line 656
    lw	$t9,11908($s0)
    sd	$a5,16($sp)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a5
    ld	$a5,16($sp)
    ld	$a4,48($sp)
.L0daeade0:
    # Line 658
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
    ld	$ra,40($sp)
.L0daeadf8:
    # Line 665
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$v1,11764($s0)
    ld	$gp,24($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11764($s0)
    # Line 666
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeae1c:
    # Line 618
    addiu	$a4,$s0,1876
    b	.L0daead28
    # Line 626
    li	$a3,9472
.L0daeae28:
    # Line 619
    addiu	$a4,$s0,2000
    b	.L0daead28
    # Line 626
    li	$a3,9472
.L0daeae34:
    # Line 620
    addiu	$a4,$s0,2124
    b	.L0daead28
    # Line 626
    li	$a3,9472
.L0daeae40:
    # Line 628
    lw	$a5,0($a2)
    li	$a3,9216
    beq	$a5,$a3,.L0daeaf18
    move	$a1,$a5
    li	$at,9217
    beq	$a1,$at,.L0daeaf18
    li	$v0,9218
    beq	$a1,$v0,.L0daeae84
    # Line 641
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 642
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeae84:
    # Line 634
    li	$v1,8194
    beq	$a0,$v1,.L0daeaf20
    li	$a3,8195
    beq	$a0,$a3,.L0daeaf24
    # Line 635
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 639
    b	.L0daeadf8
    # Line 638
    sw	$a5,0($a4)
.L0daeaea0:
    # Line 646
    lw	$a3,0($a2)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,20($a4)
    # Line 647
    lw	$v1,4($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,24($a4)
    # Line 648
    lw	$v0,8($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,28($a4)
    # Line 649
    lw	$at,12($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 650
    b	.L0daeadf8
    # Line 649
    swc1	$f0,32($a4)
.L0daeaef4:
    # Line 615
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeaf18:
    # Line 632
    b	.L0daeadf8
    # Line 631
    sw	$a5,0($a4)
.L0daeaf20:
    # Line 635
    # lw $t9, -29008($gp) # &__glSetError
.L0daeaf24:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 636
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_TexGeniv

# Function: __glim_TexGeni
# Declared: Line 668 (Source lines: 669-679)
# Address: 0x0daeaf44 - 0x0daeafa0 (Size: 92 bytes, Frame: 48)
.globl __glim_TexGeni
.ent __glim_TexGeni
__glim_TexGeni:
    # Line 669
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    # sd	gp,0(sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-14044
    beq	$a1,$at,.L0daeaf84
    nop
    # Line 676
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 677
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daeaf84:
    # Line 673
    # lw $t9, -27016($gp) # &__glim_TexGeniv
    bal __glim_TexGeniv
    addiu	$a2,$sp,36
    # Line 679
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexGeni

# Function: __glTexGendv_size
# Declared: Line 681 (Source lines: 683-690)
# Address: 0x0daeafa0 - 0x0daeafd8 (Size: 56 bytes, Frame: 0)
.globl __glTexGendv_size
.ent __glTexGendv_size
__glTexGendv_size:
    # Line 683
    li	$at,9472
    beq	$a0,$at,.L0daeafcc
    li	$v0,9473
    beq	$a0,$v0,.L0daeafc4
    li	$v1,9474
    beq	$a0,$v1,.L0daeafc4
    # Line 690
    li	$v0,-1
    jr	$ra
    nop
.L0daeafc4:
    # Line 688
    jr	$ra
    li	$v0,4
.L0daeafcc:
    # Line 685
    li	$v0,1
    jr	$ra
    nop
.end __glTexGendv_size

# Function: __glTexGenfv_size
# Declared: Line 694 (Source lines: 695-696)
# Address: 0x0daeafd8 - 0x0daeb00c (Size: 52 bytes, Frame: 32)
.globl __glTexGenfv_size
.ent __glTexGenfv_size
__glTexGenfv_size:
    # Line 695
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-14192
    # addu	gp,t9,at
    # Line 696
    # lw $t9, -27008($gp) # &__glTexGendv_size
    sd	$ra,0($sp)
    bal __glTexGendv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTexGenfv_size

# Function: __glTexGeniv_size
# Declared: Line 699 (Source lines: 700-701)
# Address: 0x0daeb00c - 0x0daeb040 (Size: 52 bytes, Frame: 32)
.globl __glTexGeniv_size
.ent __glTexGeniv_size
__glTexGeniv_size:
    # Line 700
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-14244
    # addu	gp,t9,at
    # Line 701
    # lw $t9, -27008($gp) # &__glTexGendv_size
    sd	$ra,0($sp)
    bal __glTexGendv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTexGeniv_size

# Function: __glim_TexParameterfv
# Declared: Line 706 (Source lines: 707-840)
# Address: 0x0daeb040 - 0x0daeb55c (Size: 1308 bytes, Frame: 224)
.globl __glim_TexParameterfv
.ent __glim_TexParameterfv
__glim_TexParameterfv:
    # Line 712
    li	$v0,1
    # Line 707
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,24($sp)
    # Line 712
    lw	$s0,__glCurrentContext
    sd	$a2,8($sp)
    sd	$s2,40($sp)
    # Line 707
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,32($sp)
    # Line 712
    lw	$at,__glBeginMode
    # Line 707
    lui	$v1,0x11
    addiu	$v1,$v1,-14296
    # Line 712
    beq	$at,$v0,.L0daeb368
    # Line 707
    addu	$gp,$t9,$v1
    # Line 714
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    sd	$s3,56($sp)
    move	$a0,$s0
    bal __glLookUpTextureParams
    move	$a1,$s1
    # Line 715
    # lw $t9, -27068($gp) # &__glLookUpTexture
    # Line 714
    move	$s3,$v0
    # Line 715
    move	$a0,$s0
    bal __glLookUpTexture
    move	$a1,$s1
    # Line 717
    beqz	$s3,.L0daeb1a4
    sd	$v0,0($sp)
    # Line 722
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    move	$a1,$s1
    lw	$a3,0($v0)
    # Line 728
    sltiu	$v1,$s2,10242
    li	$at,4100
    # Line 722
    slti	$a3,$a3,3
    beqz	$a3,.L0daeb33c
    ld	$ra,48($sp)
    # Line 725
    li	$a0,0x8072
    sltu	$a4,$s2,$a0
    bnez	$a4,.L0daeb154
    nop
    # Line 728
    sltu	$at,$a0,$s2
    bnez	$at,.L0daeb234
    ld	$a3,8($sp)
    # Line 762
    lwc1	$f0,0($a3)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    li	$v1,10496
    sll	$a0,$a0,0x0
    beq	$a0,$v1,.L0daeb118
    li	$a4,10497
    bne	$a0,$a4,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb118:
    # Line 765
    sw	$a0,8($s3)
    ld	$s3,0($sp)
    sw	$a0,12($s3)
    ld	$s3,56($sp)
.L0daeb128:
    # Line 839
    li	$v0,2
    sw	$v0,__glBeginMode
    ld	$gp,32($sp)
    lw	$at,11764($s0)
    # Line 840
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    # Line 839
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 840
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb154:
    # Line 728
    bnez	$v1,.L0daeb1d0
    li	$a0,0x8066
    sltiu	$a3,$s2,10243
    beqz	$a3,.L0daeb298
    ld	$a3,8($sp)
    # Line 742
    lwc1	$f1,0($a3)
    trunc.l.s	$f1,$f1
    dmfc1	$a0,$f1
    li	$a4,10496
    sll	$a0,$a0,0x0
    beq	$a0,$a4,.L0daeb18c
    li	$a4,10497
    bne	$a0,$a4,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb18c:
    # Line 745
    sw	$a0,0($s3)
    ld	$s3,0($sp)
    sw	$a0,4($s3)
    b	.L0daeb128
    ld	$s3,56($sp)
.L0daeb1a0:
    # Line 728
    beq	$s2,$at,.L0daeb504
.L0daeb1a4:
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb1a8:
    li	$a0,1280
    jal	__glSetError
    ld	$s3,56($sp)
    ld	$gp,32($sp)
    # Line 720
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb1d0:
    # Line 728
    sltiu	$v1,$s2,10240
    bnez	$v1,.L0daeb1a0
    sltiu	$a3,$s2,10241
    bnez	$a3,.L0daeb3f8
    li	$a4,10241
    bne	$s2,$a4,.L0daeb1a4
    ld	$a3,8($sp)
    # Line 772
    lwc1	$f2,0($a3)
    trunc.l.s	$f2,$f2
    dmfc1	$a0,$f2
    nop
    sll	$a0,$a0,0x0
    sltiu	$at,$a0,9985
    bnez	$at,.L0daeb4c0
    sltiu	$a4,$a0,9986
    bnez	$a4,.L0daeb4f0
    sltiu	$at,$a0,9987
    bnez	$at,.L0daeb548
    sltiu	$v1,$a0,9988
    bnez	$v1,.L0daeb4f0
    li	$a3,0x8146
    bne	$a0,$a3,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb4f4
    # Line 780
    sw	$a0,12($s3)
.L0daeb234:
    # Line 728
    li	$a0,0x817a
    sltu	$a4,$s2,$a0
    bnez	$a4,.L0daeb2e8
    sltu	$at,$a0,$s2
    beqz	$at,.L0daeb43c
    li	$a0,0x819b
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0daeb47c
    sltu	$a3,$a0,$s2
    bnez	$a3,.L0daeb1a4
    ld	$a3,8($sp)
    # Line 822
    lwc1	$f3,0($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    li	$a4,0x819c
    sll	$a0,$a0,0x0
    beq	$a0,$a4,.L0daeb284
    li	$a4,0x819d
    bne	$a0,$a4,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb284:
    # Line 825
    sw	$a0,204($s3)
    ld	$s3,0($sp)
    sw	$a0,208($s3)
    b	.L0daeb128
    ld	$s3,56($sp)
.L0daeb298:
    # Line 728
    sltu	$at,$s2,$a0
    bnez	$at,.L0daeb390
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0daeb1a4
    ld	$s3,56($sp)
    # Line 805
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    bal __glLookUpTextureTexobjs
    move	$a1,$s1
    move	$s1,$v0
    # Line 806
    lwc1	$f14,3284($s0)
    # lw $t9, -32708($gp) # &sub_0daf0000
    mtc1	$zero,$f13
    ld	$a0,8($sp)
    addiu	$t9,$t9,-25088
    bal __glLookUpTextureObject
    lwc1	$f12,0($a0)
    swc1	$f0,4($s1)
    # Line 808
    b	.L0daeb128
    ld	$ra,48($sp)
.L0daeb2e8:
    # Line 728
    li	$a0,0x8179
    sltu	$at,$s2,$a0
    bnez	$at,.L0daeb3d4
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0daeb1a4
    ld	$a4,8($sp)
    # Line 730
    lwc1	$f3,0($a4)
    ld	$a3,0($sp)
    swc1	$f3,184($s3)
    swc1	$f3,188($a3)
    # Line 731
    lwc1	$f2,4($a4)
    swc1	$f2,188($s3)
    swc1	$f2,192($a3)
    # Line 732
    lwc1	$f1,8($a4)
    swc1	$f1,192($s3)
    swc1	$f1,196($a3)
    # Line 733
    lwc1	$f0,12($a4)
    swc1	$f0,196($s3)
    ld	$s3,56($sp)
    # Line 734
    b	.L0daeb128
    # Line 733
    swc1	$f0,200($a3)
.L0daeb33c:
    # Line 724
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s3,56($sp)
    ld	$gp,32($sp)
    # Line 725
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb368:
    # Line 712
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb390:
    # Line 728
    li	$at,10243
    bne	$s2,$at,.L0daeb1a4
    ld	$a3,8($sp)
    # Line 752
    lwc1	$f0,0($a3)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    li	$v1,10496
    sll	$a0,$a0,0x0
    beq	$a0,$v1,.L0daeb3c0
    li	$a4,10497
    bne	$a0,$a4,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb3c0:
    # Line 755
    sw	$a0,4($s3)
    ld	$s3,0($sp)
    sw	$a0,8($s3)
    b	.L0daeb128
    ld	$s3,56($sp)
.L0daeb3d4:
    # Line 728
    li	$at,0x80bf
    bne	$s2,$at,.L0daeb1a4
    ld	$a3,8($sp)
    # Line 833
    lwc1	$f1,0($a3)
    ld	$v1,0($sp)
    swc1	$f1,208($s3)
    ld	$s3,56($sp)
    b	.L0daeb128
    swc1	$f1,212($v1)
.L0daeb3f8:
    ld	$a3,8($sp)
    # Line 787
    lwc1	$f2,0($a3)
    trunc.l.s	$f2,$f2
    dmfc1	$a0,$f2
    li	$a4,9728
    sll	$a0,$a0,0x0
    beq	$a0,$a4,.L0daeb428
    li	$a4,9729
    beq	$a0,$a4,.L0daeb428
    li	$at,0x8146
    bne	$a0,$at,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb428:
    # Line 791
    sw	$a0,16($s3)
    ld	$v1,0($sp)
    ld	$s3,56($sp)
    b	.L0daeb128
    sw	$a0,20($v1)
.L0daeb43c:
    ld	$a4,8($sp)
    # Line 736
    lwc1	$f2,0($a4)
    ld	$a3,0($sp)
    swc1	$f2,168($s3)
    swc1	$f2,172($a3)
    # Line 737
    lwc1	$f1,4($a4)
    swc1	$f1,172($s3)
    swc1	$f1,176($a3)
    # Line 738
    lwc1	$f0,8($a4)
    swc1	$f0,176($s3)
    swc1	$f0,180($a3)
    # Line 739
    lwc1	$f3,12($a4)
    swc1	$f3,180($s3)
    ld	$s3,56($sp)
    # Line 740
    b	.L0daeb128
    # Line 739
    swc1	$f3,184($a3)
.L0daeb47c:
    # Line 728
    li	$at,0x819a
    bne	$s2,$at,.L0daeb1a4
    ld	$a3,8($sp)
    # Line 811
    lwc1	$f3,0($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    nop
    sll	$a0,$a0,0x0
    beqz	$a0,.L0daeb4ac
    li	$a4,1
    bne	$a4,$a0,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb4ac:
    # Line 814
    sw	$a0,200($s3)
    ld	$s3,0($sp)
    sw	$a0,204($s3)
    b	.L0daeb128
    ld	$s3,56($sp)
.L0daeb4c0:
    # Line 772
    sltiu	$at,$a0,9729
    bnez	$at,.L0daeb4e4
    sltiu	$v1,$a0,9730
    bnez	$v1,.L0daeb4f0
    li	$a3,9984
    bne	$a0,$a3,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb4f4
    # Line 780
    sw	$a0,12($s3)
.L0daeb4e4:
    # Line 772
    li	$a4,9728
    bne	$a0,$a4,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb4f0:
    # Line 780
    sw	$a0,12($s3)
.L0daeb4f4:
    ld	$s3,0($sp)
    sw	$a0,16($s3)
    b	.L0daeb128
    ld	$s3,56($sp)
.L0daeb504:
    # Line 798
    # lw $t9, -28384($gp) # &__glClampColorf
    move	$a0,$s0
    ld	$a2,8($sp)
    jal	__glClampColorf
    addiu	$a1,$s3,152
    # Line 799
    ld	$ra,0($sp)
    lwc1	$f3,152($s3)
    swc1	$f3,156($ra)
    lwc1	$f2,156($s3)
    swc1	$f2,160($ra)
    lwc1	$f1,160($s3)
    swc1	$f1,164($ra)
    lwc1	$f0,164($s3)
    ld	$s3,56($sp)
    swc1	$f0,168($ra)
    # Line 800
    b	.L0daeb128
    ld	$ra,48($sp)
.L0daeb548:
    # Line 772
    li	$at,9986
    bne	$a0,$at,.L0daeb1a8
    # Line 719
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb4f4
    # Line 780
    sw	$a0,12($s3)
.end __glim_TexParameterfv

# Function: __glim_TexParameterf
# Declared: Line 842 (Source lines: 843-861)
# Address: 0x0daeb55c - 0x0daeb668 (Size: 268 bytes, Frame: 48)
.globl __glim_TexParameterf
.ent __glim_TexParameterf
__glim_TexParameterf:
    # Line 843
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    li	$a3,0x8066
    lui	$v0,0x11
    addiu	$v0,$v0,-15604
    sltu	$at,$a1,$a3
    bnez	$at,.L0daeb5c8
    addu	$gp,$t9,$v0
    # Line 845
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0daeb600
    li	$a3,0x819a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0daeb634
    sltu	$at,$a3,$a1
    beqz	$at,.L0daeb600
    li	$v0,0x819b
    beq	$a1,$v0,.L0daeb600
    sd	$ra,8($sp)
.L0daeb5a8:
    # Line 858
    # lw $t9, -29008($gp) # &__glSetError
.L0daeb5ac:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 859
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daeb5c8:
    # Line 845
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0daeb5ec
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0daeb600
    li	$at,10243
    bne	$a1,$at,.L0daeb5ac
    # Line 858
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb600
    sd	$ra,8($sp)
.L0daeb5ec:
    # Line 845
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0daeb620
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0daeb5a8
    sd	$ra,8($sp)
.L0daeb600:
    # Line 855
    # lw $t9, -26996($gp) # &__glim_TexParameterfv
    sd	$ra,8($sp)
    bal __glim_TexParameterfv
    addiu	$a2,$sp,32
    # Line 861
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daeb620:
    # Line 845
    li	$a2,10240
    bne	$a1,$a2,.L0daeb5ac
    # Line 858
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb600
    sd	$ra,8($sp)
.L0daeb634:
    # Line 845
    li	$a3,0x80bf
    sltu	$at,$a1,$a3
    bnez	$at,.L0daeb654
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0daeb5ac
    # Line 858
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb600
    sd	$ra,8($sp)
.L0daeb654:
    # Line 845
    li	$v1,0x8072
    bne	$a1,$v1,.L0daeb5ac
    # Line 858
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daeb600
    sd	$ra,8($sp)
.end __glim_TexParameterf

# Function: __glim_TexParameteriv
# Declared: Line 863 (Source lines: 864-996)
# Address: 0x0daeb668 - 0x0daebbb4 (Size: 1356 bytes, Frame: 224)
.globl __glim_TexParameteriv
.ent __glim_TexParameteriv
__glim_TexParameteriv:
    # Line 869
    li	$v0,1
    # Line 864
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,24($sp)
    # Line 869
    lw	$s0,__glCurrentContext
    sd	$a2,8($sp)
    sd	$s2,40($sp)
    # Line 864
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,32($sp)
    # Line 869
    lw	$at,__glBeginMode
    # Line 864
    lui	$v1,0x11
    addiu	$v1,$v1,-15872
    # Line 869
    beq	$at,$v0,.L0daeb9ac
    # Line 864
    addu	$gp,$t9,$v1
    # Line 871
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    sd	$s3,56($sp)
    move	$a0,$s0
    bal __glLookUpTextureParams
    move	$a1,$s1
    # Line 872
    # lw $t9, -27068($gp) # &__glLookUpTexture
    # Line 871
    move	$s3,$v0
    # Line 872
    move	$a0,$s0
    bal __glLookUpTexture
    move	$a1,$s1
    # Line 874
    beqz	$s3,.L0daeb7b0
    sd	$v0,0($sp)
    # Line 879
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    move	$a1,$s1
    lw	$a3,0($v0)
    # Line 885
    sltiu	$at,$s2,10242
    # Line 919
    li	$v1,10496
    # Line 879
    slti	$a3,$a3,3
    beqz	$a3,.L0daeb980
    ld	$ra,48($sp)
    # Line 882
    li	$a0,0x8072
    sltu	$a4,$s2,$a0
    bnezl	$a4,.L0daeb76c
    ld	$a0,8($sp)
    # Line 885
    sltu	$at,$a0,$s2
    bnez	$at,.L0daeb830
    ld	$a0,8($sp)
    # Line 919
    lw	$a0,0($a0)
    beq	$a0,$v1,.L0daeb730
    li	$a3,10497
    bne	$a0,$a3,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb730:
    # Line 922
    ld	$a4,0($sp)
    sw	$a0,8($s3)
    ld	$s3,56($sp)
    sw	$a0,12($a4)
.L0daeb740:
    # Line 995
    li	$s2,2
    sw	$s2,__glBeginMode
    lw	$s1,11764($s0)
    ld	$gp,32($sp)
    # Line 996
    ld	$s2,40($sp)
    # Line 995
    ori	$s1,$s1,0x1
    sw	$s1,11764($s0)
    # Line 996
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb76c:
    # Line 885
    bnez	$at,.L0daeb7dc
    sltiu	$v1,$s2,10240
    sltiu	$v1,$s2,10243
    beqzl	$v1,.L0daeb888
    li	$a0,0x8066
    # Line 899
    lw	$a0,0($a0)
    li	$a3,10496
    beq	$a0,$a3,.L0daeb798
    li	$a3,10497
    bne	$a0,$a3,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb798:
    # Line 902
    sw	$a0,0($s3)
    ld	$a4,0($sp)
    ld	$s3,56($sp)
    b	.L0daeb740
    sw	$a0,4($a4)
.L0daeb7ac:
    # Line 885
    beq	$s2,$at,.L0daebb5c
.L0daeb7b0:
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb7b4:
    li	$a0,1280
    jal	__glSetError
    ld	$s3,56($sp)
    ld	$gp,32($sp)
    # Line 877
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb7dc:
    # Line 885
    bnez	$v1,.L0daeb7ac
    li	$at,4100
    sltiu	$a3,$s2,10241
    bnez	$a3,.L0daeba3c
    li	$a4,10241
    bne	$s2,$a4,.L0daeb7b0
    ld	$a0,8($sp)
    # Line 929
    lw	$a0,0($a0)
    sltiu	$at,$a0,9985
    bnez	$at,.L0daebb18
    sltiu	$a3,$a0,9986
    bnez	$a3,.L0daebb48
    sltiu	$a4,$a0,9987
    bnez	$a4,.L0daebba0
    sltiu	$at,$a0,9988
    bnez	$at,.L0daebb48
    li	$v1,0x8146
    bne	$a0,$v1,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebb4c
    # Line 937
    sw	$a0,12($s3)
.L0daeb830:
    # Line 885
    li	$a0,0x817a
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0daeb8fc
    sltu	$a4,$a0,$s2
    beqz	$a4,.L0daeba74
    li	$a0,0x819b
    sltu	$at,$s2,$a0
    bnez	$at,.L0daebae4
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0daeb7b0
    ld	$a0,8($sp)
    # Line 979
    lw	$a0,0($a0)
    li	$a3,0x819c
    beq	$a0,$a3,.L0daeb874
    li	$a3,0x819d
    bne	$a0,$a3,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb874:
    # Line 982
    sw	$a0,204($s3)
    ld	$a4,0($sp)
    ld	$s3,56($sp)
    b	.L0daeb740
    sw	$a0,208($a4)
.L0daeb888:
    # Line 885
    sltu	$at,$s2,$a0
    bnez	$at,.L0daeb9d4
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0daeb7b0
    ld	$s3,56($sp)
    # Line 963
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    bal __glLookUpTextureTexobjs
    move	$a1,$s1
    # Line 965
    ld	$ra,8($sp)
    lw	$ra,0($ra)
    mtc1	$ra,$f15
    nop
    cvt.s.w	$f15,$f15
    lwc1	$f16,_lit_40000000
    mul.s	$f15,$f15,$f16
    # Line 963
    move	$s1,$v0
    # Line 965
    lwc1	$f14,3284($s0)
    lwc1	$f16,_lit_3f800000
    mtc1	$zero,$f13
    # lw $t9, -32708($gp) # &sub_0daf0000
    add.s	$f15,$f15,$f16
    lwc1	$f12,3308($s0)
    addiu	$t9,$t9,-25088
    bal __glLookUpTextureObject
    mul.s	$f12,$f12,$f15
    swc1	$f0,4($s1)
    # Line 967
    b	.L0daeb740
    ld	$ra,48($sp)
.L0daeb8fc:
    # Line 885
    li	$a0,0x8179
    sltu	$at,$s2,$a0
    bnez	$at,.L0daeba0c
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0daeb7b0
    ld	$a4,8($sp)
    # Line 887
    lw	$a3,0($a4)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a3,0($sp)
    swc1	$f3,184($s3)
    swc1	$f3,188($a3)
    # Line 888
    lw	$v1,4($a4)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,188($s3)
    swc1	$f2,192($a3)
    # Line 889
    lw	$at,8($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,192($s3)
    swc1	$f1,196($a3)
    # Line 890
    lw	$a4,12($a4)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,196($s3)
    ld	$s3,56($sp)
    # Line 891
    b	.L0daeb740
    # Line 890
    swc1	$f0,200($a3)
.L0daeb980:
    # Line 881
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s3,56($sp)
    ld	$gp,32($sp)
    # Line 882
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb9ac:
    # Line 869
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daeb9d4:
    # Line 885
    li	$a4,10243
    bne	$s2,$a4,.L0daeb7b0
    ld	$a0,8($sp)
    # Line 909
    lw	$a0,0($a0)
    li	$at,10496
    beq	$a0,$at,.L0daeb9f8
    li	$a3,10497
    bne	$a0,$a3,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeb9f8:
    # Line 912
    sw	$a0,4($s3)
    ld	$a4,0($sp)
    ld	$s3,56($sp)
    b	.L0daeb740
    sw	$a0,8($a4)
.L0daeba0c:
    # Line 885
    li	$at,0x80bf
    bne	$s2,$at,.L0daeb7b0
    ld	$a3,8($sp)
    # Line 989
    lw	$a3,0($a3)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,0($sp)
    swc1	$f0,208($s3)
    ld	$s3,56($sp)
    b	.L0daeb740
    swc1	$f0,212($v1)
.L0daeba3c:
    ld	$a0,8($sp)
    # Line 944
    lw	$a0,0($a0)
    li	$a4,9728
    beq	$a0,$a4,.L0daeba60
    li	$a3,9729
    beq	$a0,$a3,.L0daeba60
    li	$a4,0x8146
    bne	$a0,$a4,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daeba60:
    # Line 948
    sw	$a0,16($s3)
    ld	$s3,0($sp)
    sw	$a0,20($s3)
    b	.L0daeb740
    ld	$s3,56($sp)
.L0daeba74:
    ld	$v1,8($sp)
    # Line 893
    lw	$at,0($v1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    swc1	$f0,168($s3)
    swc1	$f0,172($at)
    # Line 894
    lw	$a4,4($v1)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,172($s3)
    swc1	$f3,176($at)
    # Line 895
    lw	$a3,8($v1)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,176($s3)
    swc1	$f2,180($at)
    # Line 896
    lw	$v1,12($v1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,180($s3)
    ld	$s3,56($sp)
    # Line 897
    b	.L0daeb740
    # Line 896
    swc1	$f1,184($at)
.L0daebae4:
    # Line 885
    li	$v1,0x819a
    bne	$s2,$v1,.L0daeb7b0
    ld	$a0,8($sp)
    # Line 969
    lw	$a0,0($a0)
    beqz	$a0,.L0daebb04
    li	$a3,1
    bne	$a3,$a0,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daebb04:
    # Line 972
    sw	$a0,200($s3)
    ld	$a4,0($sp)
    ld	$s3,56($sp)
    b	.L0daeb740
    sw	$a0,204($a4)
.L0daebb18:
    # Line 929
    sltiu	$at,$a0,9729
    bnez	$at,.L0daebb3c
    sltiu	$v1,$a0,9730
    bnez	$v1,.L0daebb48
    li	$a3,9984
    bne	$a0,$a3,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebb4c
    # Line 937
    sw	$a0,12($s3)
.L0daebb3c:
    # Line 929
    li	$a4,9728
    bne	$a0,$a4,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daebb48:
    # Line 937
    sw	$a0,12($s3)
.L0daebb4c:
    ld	$s3,0($sp)
    sw	$a0,16($s3)
    b	.L0daeb740
    ld	$s3,56($sp)
.L0daebb5c:
    # Line 955
    # lw $t9, -28372($gp) # &__glClampColori
    move	$a0,$s0
    ld	$a2,8($sp)
    jal	__glClampColori
    addiu	$a1,$s3,152
    # Line 956
    ld	$ra,0($sp)
    lwc1	$f0,152($s3)
    swc1	$f0,156($ra)
    lwc1	$f3,156($s3)
    swc1	$f3,160($ra)
    lwc1	$f2,160($s3)
    swc1	$f2,164($ra)
    lwc1	$f1,164($s3)
    ld	$s3,56($sp)
    swc1	$f1,168($ra)
    # Line 957
    b	.L0daeb740
    ld	$ra,48($sp)
.L0daebba0:
    # Line 929
    li	$at,9986
    bne	$a0,$at,.L0daeb7b4
    # Line 876
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebb4c
    # Line 937
    sw	$a0,12($s3)
.end __glim_TexParameteriv

# Function: __glim_TexParameteri
# Declared: Line 998 (Source lines: 999-1017)
# Address: 0x0daebbb4 - 0x0daebcc0 (Size: 268 bytes, Frame: 48)
.globl __glim_TexParameteri
.ent __glim_TexParameteri
__glim_TexParameteri:
    # Line 999
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    li	$a4,0x8066
    lui	$v0,0x11
    addiu	$v0,$v0,-17228
    sltu	$at,$a1,$a4
    bnez	$at,.L0daebc20
    addu	$gp,$t9,$v0
    # Line 1001
    sltu	$v1,$a4,$a1
    beqz	$v1,.L0daebc58
    li	$a3,0x819a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0daebc8c
    sltu	$at,$a3,$a1
    beqz	$at,.L0daebc58
    li	$v0,0x819b
    beq	$a1,$v0,.L0daebc58
    sd	$ra,8($sp)
.L0daebc00:
    # Line 1014
    # lw $t9, -29008($gp) # &__glSetError
.L0daebc04:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1015
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daebc20:
    # Line 1001
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0daebc44
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0daebc58
    li	$at,10243
    bne	$a1,$at,.L0daebc04
    # Line 1014
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebc58
    sd	$ra,8($sp)
.L0daebc44:
    # Line 1001
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0daebc78
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0daebc00
    sd	$ra,8($sp)
.L0daebc58:
    # Line 1011
    # lw $t9, -26988($gp) # &__glim_TexParameteriv
    sd	$ra,8($sp)
    bal __glim_TexParameteriv
    addiu	$a2,$sp,36
    # Line 1017
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daebc78:
    # Line 1001
    li	$a2,10240
    bne	$a1,$a2,.L0daebc04
    # Line 1014
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebc58
    sd	$ra,8($sp)
.L0daebc8c:
    # Line 1001
    li	$a3,0x80bf
    sltu	$at,$a1,$a3
    bnez	$at,.L0daebcac
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0daebc04
    # Line 1014
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebc58
    sd	$ra,8($sp)
.L0daebcac:
    # Line 1001
    li	$v1,0x8072
    bne	$a1,$v1,.L0daebc04
    # Line 1014
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daebc58
    sd	$ra,8($sp)
.end __glim_TexParameteri

# Function: __glTexParameterfv_size
# Declared: Line 1019 (Source lines: 1020-1047)
# Address: 0x0daebcc0 - 0x0daebea0 (Size: 480 bytes, Frame: 0)
.globl __glTexParameterfv_size
.ent __glTexParameterfv_size
__glTexParameterfv_size:
    # Line 1020
    li	$a2,0x813a
    sltu	$at,$a0,$a2
    bnez	$at,.L0daebd10
    # Line 1021
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0daebd60
    li	$a2,0x8173
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daebd94
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0daebe14
    li	$a2,0x819a
    sltu	$at,$a0,$a2
    bnez	$at,.L0daebe1c
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0daebd60
    li	$v1,0x819b
    bne	$a0,$v1,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebd10:
    li	$a2,0x8066
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0daebd68
    sltu	$at,$a2,$a0
    beqz	$at,.L0daebd60
    li	$a2,0x809b
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0daebdc8
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0daebd60
    li	$a1,0x80bf
    beq	$a0,$a1,.L0daebd60
    nop
.L0daebd44:
    # Line 1047
    jr	$ra
    li	$v0,-1
.L0daebd4c:
    # Line 1021
    sltiu	$at,$a0,10240
    bnez	$at,.L0daebe3c
    sltiu	$v0,$a0,10241
    beqz	$v0,.L0daebd44
    nop
.L0daebd60:
    # Line 1038
    jr	$ra
    li	$v0,1
.L0daebd68:
    # Line 1021
    sltiu	$v1,$a0,10241
    bnez	$v1,.L0daebd4c
    sltiu	$a1,$a0,10242
    bnez	$a1,.L0daebd60
    sltiu	$at,$a0,10243
    bnez	$at,.L0daebe50
    sltiu	$v0,$a0,10244
    beqz	$v0,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebd94:
    li	$a2,0x813d
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daebde8
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0daebd60
    li	$a2,0x8172
    sltu	$at,$a0,$a2
    bnez	$at,.L0daebe08
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebdc8:
    li	$a2,0x809a
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daebe64
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebde8:
    li	$a2,0x813c
    sltu	$at,$a0,$a2
    bnez	$at,.L0daebe78
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebe08:
    li	$v1,0x8171
    bne	$a0,$v1,.L0daebd44
    nop
.L0daebe14:
    # Line 1041
    jr	$ra
    li	$v0,2
.L0daebe1c:
    # Line 1021
    li	$a2,0x817a
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0daebe8c
    sltu	$at,$a2,$a0
    bnez	$at,.L0daebd44
    nop
.L0daebe34:
    # Line 1045
    jr	$ra
    li	$v0,4
.L0daebe3c:
    # Line 1021
    li	$v0,4100
    bne	$a0,$v0,.L0daebd44
    nop
    b	.L0daebe34
    nop
.L0daebe50:
    li	$v1,10242
    bne	$a0,$v1,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebe64:
    li	$a1,0x8072
    bne	$a0,$a1,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebe78:
    li	$at,0x813b
    bne	$a0,$at,.L0daebd44
    nop
    b	.L0daebd60
    nop
.L0daebe8c:
    li	$v0,0x8179
    bne	$a0,$v0,.L0daebd44
    nop
    b	.L0daebe34
    nop
.end __glTexParameterfv_size

# Function: __glTexParameteriv_size
# Declared: Line 1051 (Source lines: 1052-1053)
# Address: 0x0daebea0 - 0x0daebed4 (Size: 52 bytes, Frame: 32)
.globl __glTexParameteriv_size
.ent __glTexParameteriv_size
__glTexParameteriv_size:
    # Line 1052
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-17976
    # addu	gp,t9,at
    # Line 1053
    # lw $t9, -26980($gp) # &__glTexParameterfv_size
    sd	$ra,0($sp)
    bal __glTexParameterfv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTexParameteriv_size

# Function: __glim_TexEnvfv
# Declared: Line 1058 (Source lines: 1059-1098)
# Address: 0x0daebed4 - 0x0daec038 (Size: 356 bytes, Frame: 192)
.globl __glim_TexEnvfv
.ent __glim_TexEnvfv
__glim_TexEnvfv:
    # Line 1062
    li	$v0,1
    # Line 1059
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 1062
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 1059
    lui	$v1,0x11
    addiu	$v1,$v1,-18028
    # Line 1062
    beq	$at,$v0,.L0daebffc
    # Line 1059
    addu	$gp,$t9,$v1
    # Line 1062
    sltiu	$a3,$a0,8960
    bnez	$a3,.L0daebfdc
    # Line 1066
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1070
    lw	$v0,3340($s0)
    addiu	$at,$a0,-8960
    sltu	$at,$at,$v0
    beqz	$at,.L0daebf50
    # Line 1079
    li	$a3,7681
    # Line 1077
    li	$v0,8704
    # Line 1075
    lw	$a4,2376($s0)
    sll	$at,$a0,0x3
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lui	$at,0x4
    ori	$at,$at,0xec00
    # Line 1077
    beq	$a1,$v0,.L0daebf74
    # Line 1075
    subu	$a4,$a4,$at
    # Line 1077
    li	$v0,8705
    beq	$a1,$v0,.L0daec020
    sd	$ra,16($sp)
.L0daebf50:
    # Line 1072
    # lw $t9, -29008($gp) # &__glSetError
.L0daebf54:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1073
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daebf74:
    # Line 1079
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    li	$v0,8449
    li	$v1,3042
    sll	$a0,$a0,0x0
    beq	$a0,$v1,.L0daebfb4
    li	$at,8448
    beq	$a0,$a3,.L0daebfb4
    li	$v1,0x8062
    beql	$a0,$at,.L0daebfb8
    # Line 1085
    sw	$a0,0($a4)
    # Line 1079
    beql	$a0,$v0,.L0daebfb8
    # Line 1085
    sw	$a0,0($a4)
    # Line 1079
    bne	$a0,$v1,.L0daebf54
    # Line 1072
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daebfb4:
    # Line 1085
    sw	$a0,0($a4)
.L0daebfb8:
    # Line 1097
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($s0)
    ld	$gp,0($sp)
    ori	$a0,$a0,0x1
    sw	$a0,11764($s0)
    # Line 1098
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daebfdc:
    sd	$ra,16($sp)
    # Line 1066
    jal	__glSetError
    li	$a0,1280
    # Line 1067
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daebffc:
    # Line 1062
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daec020:
    # Line 1092
    # lw $t9, -28388($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    jal	__glClampAndScaleColorf
    addiu	$a1,$a4,4
    b	.L0daebfb8
    ld	$ra,16($sp)
.end __glim_TexEnvfv

# Function: __glim_TexEnvf
# Declared: Line 1100 (Source lines: 1101-1111)
# Address: 0x0daec038 - 0x0daec094 (Size: 92 bytes, Frame: 48)
.globl __glim_TexEnvf
.ent __glim_TexEnvf
__glim_TexEnvf:
    # Line 1101
    li	$at,8704
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-18384
    beq	$a1,$at,.L0daec078
    nop
    # Line 1108
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1109
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daec078:
    # Line 1105
    # lw $t9, -26972($gp) # &__glim_TexEnvfv
    bal __glim_TexEnvfv
    addiu	$a2,$sp,32
    # Line 1111
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexEnvf

# Function: __glim_TexEnviv
# Declared: Line 1113 (Source lines: 1114-1153)
# Address: 0x0daec094 - 0x0daec1ec (Size: 344 bytes, Frame: 192)
.globl __glim_TexEnviv
.ent __glim_TexEnviv
__glim_TexEnviv:
    # Line 1117
    li	$v0,1
    # Line 1114
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 1117
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 1114
    lui	$v1,0x11
    addiu	$v1,$v1,-18476
    # Line 1117
    beq	$at,$v0,.L0daec1b0
    # Line 1114
    addu	$gp,$t9,$v1
    # Line 1117
    sltiu	$a3,$a0,8960
    bnez	$a3,.L0daec190
    # Line 1121
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1125
    lw	$v0,3340($s0)
    addiu	$at,$a0,-8960
    sltu	$at,$at,$v0
    beqz	$at,.L0daec110
    # Line 1134
    li	$a3,7681
    # Line 1132
    li	$v0,8704
    # Line 1130
    lw	$a4,2376($s0)
    sll	$at,$a0,0x3
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lui	$at,0x4
    ori	$at,$at,0xec00
    # Line 1132
    beq	$a1,$v0,.L0daec134
    # Line 1130
    subu	$a4,$a4,$at
    # Line 1132
    li	$v0,8705
    beq	$a1,$v0,.L0daec1d4
    sd	$ra,16($sp)
.L0daec110:
    # Line 1127
    # lw $t9, -29008($gp) # &__glSetError
.L0daec114:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1128
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daec134:
    # Line 1134
    lw	$a0,0($a2)
    li	$v0,8449
    li	$v1,3042
    beq	$a0,$v1,.L0daec168
    li	$at,8448
    beq	$a0,$a3,.L0daec168
    li	$v1,0x8062
    beql	$a0,$at,.L0daec16c
    # Line 1140
    sw	$a0,0($a4)
    # Line 1134
    beql	$a0,$v0,.L0daec16c
    # Line 1140
    sw	$a0,0($a4)
    # Line 1134
    bne	$a0,$v1,.L0daec114
    # Line 1127
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daec168:
    # Line 1140
    sw	$a0,0($a4)
.L0daec16c:
    # Line 1152
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($s0)
    ld	$gp,0($sp)
    ori	$a0,$a0,0x1
    sw	$a0,11764($s0)
    # Line 1153
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daec190:
    sd	$ra,16($sp)
    # Line 1121
    jal	__glSetError
    li	$a0,1280
    # Line 1122
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daec1b0:
    # Line 1117
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daec1d4:
    # Line 1147
    # lw $t9, -28376($gp) # &__glClampAndScaleColori
    move	$a0,$s0
    jal	__glClampAndScaleColori
    addiu	$a1,$a4,4
    b	.L0daec16c
    ld	$ra,16($sp)
.end __glim_TexEnviv

# Function: __glim_TexEnvi
# Declared: Line 1155 (Source lines: 1156-1166)
# Address: 0x0daec1ec - 0x0daec248 (Size: 92 bytes, Frame: 48)
.globl __glim_TexEnvi
.ent __glim_TexEnvi
__glim_TexEnvi:
    # Line 1156
    li	$at,8704
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    # sd	gp,0(sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-18820
    beq	$a1,$at,.L0daec22c
    nop
    # Line 1163
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1164
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daec22c:
    # Line 1160
    # lw $t9, -26964($gp) # &__glim_TexEnviv
    bal __glim_TexEnviv
    addiu	$a2,$sp,36
    # Line 1166
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_TexEnvi

# Function: __glTexEnvfv_size
# Declared: Line 1168 (Source lines: 1170-1176)
# Address: 0x0daec248 - 0x0daec278 (Size: 48 bytes, Frame: 0)
.globl __glTexEnvfv_size
.ent __glTexEnvfv_size
__glTexEnvfv_size:
    # Line 1170
    li	$at,8704
    beq	$a0,$at,.L0daec26c
    li	$v0,8705
    beq	$a0,$v0,.L0daec264
    nop
    # Line 1176
    jr	$ra
    li	$v0,-1
.L0daec264:
    # Line 1174
    jr	$ra
    li	$v0,4
.L0daec26c:
    # Line 1172
    li	$v0,1
    jr	$ra
    nop
.end __glTexEnvfv_size

# Function: __glTexEnviv_size
# Declared: Line 1180 (Source lines: 1181-1182)
# Address: 0x0daec278 - 0x0daec2ac (Size: 52 bytes, Frame: 32)
.globl __glTexEnviv_size
.ent __glTexEnviv_size
__glTexEnviv_size:
    # Line 1181
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-18960
    # addu	gp,t9,at
    # Line 1182
    # lw $t9, -26956($gp) # &__glTexEnvfv_size
    sd	$ra,0($sp)
    bal __glTexEnvfv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTexEnviv_size

# Function: __glExtractTexelL
# Declared: Line 1192 (Source lines: 1197-1207)
# Address: 0x0daec2ac - 0x0daec30c (Size: 96 bytes, Frame: 0)
.globl __glExtractTexelL
.ent __glExtractTexelL
__glExtractTexelL:
    # Line 1197
    bltzl	$a3,.L0daec2e0
    # Line 1202
    lwc1	$f0,156($a1)
    # Line 1197
    bltzl	$a4,.L0daec2e0
    # Line 1202
    lwc1	$f0,156($a1)
    # Line 1197
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec2e0
    # Line 1202
    lwc1	$f0,156($a1)
    # Line 1197
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec2e8
    # Line 1205
    lw	$a2,44($a0)
    # Line 1202
    lwc1	$f0,156($a1)
.L0daec2e0:
    # Line 1207
    jr	$ra
    # Line 1202
    swc1	$f0,12($a5)
.L0daec2e8:
    # Line 1205
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lwc1	$f1,0($v1)
    swc1	$f1,12($a5)
    # Line 1207
    jr	$ra
    nop
.end __glExtractTexelL

# Function: __glExtractTexelLA
# Declared: Line 1214 (Source lines: 1219-1231)
# Address: 0x0daec30c - 0x0daec380 (Size: 116 bytes, Frame: 0)
.globl __glExtractTexelLA
.ent __glExtractTexelLA
__glExtractTexelLA:
    # Line 1219
    bltzl	$a3,.L0daec340
    # Line 1224
    lwc1	$f1,156($a1)
    # Line 1219
    bltzl	$a4,.L0daec340
    # Line 1224
    lwc1	$f1,156($a1)
    # Line 1219
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec340
    # Line 1224
    lwc1	$f1,156($a1)
    # Line 1219
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec350
    # Line 1227
    lw	$a2,44($a0)
    # Line 1224
    lwc1	$f1,156($a1)
.L0daec340:
    swc1	$f1,12($a5)
    # Line 1225
    lwc1	$f0,168($a1)
    # Line 1231
    jr	$ra
    # Line 1225
    swc1	$f0,16($a5)
.L0daec350:
    # Line 1227
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    addu	$a2,$a2,$a2
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    # Line 1228
    lwc1	$f3,0($v1)
    swc1	$f3,12($a5)
    # Line 1229
    lwc1	$f2,4($v1)
    swc1	$f2,16($a5)
    # Line 1231
    jr	$ra
    nop
.end __glExtractTexelLA

# Function: __glExtractTexelRGB
# Declared: Line 1238 (Source lines: 1243-1257)
# Address: 0x0daec380 - 0x0daec408 (Size: 136 bytes, Frame: 0)
.globl __glExtractTexelRGB
.ent __glExtractTexelRGB
__glExtractTexelRGB:
    # Line 1243
    bltzl	$a3,.L0daec3b4
    # Line 1248
    lwc1	$f2,156($a1)
    # Line 1243
    bltzl	$a4,.L0daec3b4
    # Line 1248
    lwc1	$f2,156($a1)
    # Line 1243
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec3b4
    # Line 1248
    lwc1	$f2,156($a1)
    # Line 1243
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec3cc
    # Line 1252
    lw	$at,44($a0)
    # Line 1248
    lwc1	$f2,156($a1)
.L0daec3b4:
    swc1	$f2,0($a5)
    # Line 1249
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1250
    lwc1	$f0,164($a1)
    # Line 1257
    jr	$ra
    # Line 1250
    swc1	$f0,8($a5)
.L0daec3cc:
    # Line 1252
    lw	$v1,0($a0)
    sllv	$at,$a3,$at
    addu	$at,$at,$a4
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    # Line 1253
    lwc1	$f1,0($v1)
    swc1	$f1,0($a5)
    # Line 1254
    lwc1	$f0,4($v1)
    swc1	$f0,4($a5)
    # Line 1255
    lwc1	$f3,8($v1)
    swc1	$f3,8($a5)
    # Line 1257
    jr	$ra
    nop
.end __glExtractTexelRGB

# Function: __glExtractTexelRGBA
# Declared: Line 1264 (Source lines: 1269-1285)
# Address: 0x0daec408 - 0x0daec49c (Size: 148 bytes, Frame: 0)
.globl __glExtractTexelRGBA
.ent __glExtractTexelRGBA
__glExtractTexelRGBA:
    # Line 1269
    bltzl	$a3,.L0daec43c
    # Line 1274
    lwc1	$f3,156($a1)
    # Line 1269
    bltzl	$a4,.L0daec43c
    # Line 1274
    lwc1	$f3,156($a1)
    # Line 1269
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec43c
    # Line 1274
    lwc1	$f3,156($a1)
    # Line 1269
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec45c
    # Line 1279
    lw	$a2,44($a0)
    # Line 1274
    lwc1	$f3,156($a1)
.L0daec43c:
    swc1	$f3,0($a5)
    # Line 1275
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1276
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1277
    lwc1	$f0,168($a1)
    # Line 1285
    jr	$ra
    # Line 1277
    swc1	$f0,16($a5)
.L0daec45c:
    # Line 1279
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    # Line 1280
    lwc1	$f3,0($v1)
    swc1	$f3,0($a5)
    # Line 1281
    lwc1	$f2,4($v1)
    swc1	$f2,4($a5)
    # Line 1282
    lwc1	$f1,8($v1)
    swc1	$f1,8($a5)
    # Line 1283
    lwc1	$f0,12($v1)
    swc1	$f0,16($a5)
    # Line 1285
    jr	$ra
    nop
.end __glExtractTexelRGBA

# Function: __glExtractTexelA
# Declared: Line 1288 (Source lines: 1293-1303)
# Address: 0x0daec49c - 0x0daec4fc (Size: 96 bytes, Frame: 0)
.globl __glExtractTexelA
.ent __glExtractTexelA
__glExtractTexelA:
    # Line 1293
    bltzl	$a3,.L0daec4d0
    # Line 1298
    lwc1	$f0,168($a1)
    # Line 1293
    bltzl	$a4,.L0daec4d0
    # Line 1298
    lwc1	$f0,168($a1)
    # Line 1293
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec4d0
    # Line 1298
    lwc1	$f0,168($a1)
    # Line 1293
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec4d8
    # Line 1301
    lw	$a2,44($a0)
    # Line 1298
    lwc1	$f0,168($a1)
.L0daec4d0:
    # Line 1303
    jr	$ra
    # Line 1298
    swc1	$f0,16($a5)
.L0daec4d8:
    # Line 1301
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lwc1	$f1,0($v1)
    swc1	$f1,16($a5)
    # Line 1303
    jr	$ra
    nop
.end __glExtractTexelA

# Function: __glExtractTexelI
# Declared: Line 1306 (Source lines: 1311-1321)
# Address: 0x0daec4fc - 0x0daec55c (Size: 96 bytes, Frame: 0)
.globl __glExtractTexelI
.ent __glExtractTexelI
__glExtractTexelI:
    # Line 1311
    bltzl	$a3,.L0daec530
    # Line 1316
    lwc1	$f0,156($a1)
    # Line 1311
    bltzl	$a4,.L0daec530
    # Line 1316
    lwc1	$f0,156($a1)
    # Line 1311
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec530
    # Line 1316
    lwc1	$f0,156($a1)
    # Line 1311
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec538
    # Line 1319
    lw	$a2,44($a0)
    # Line 1316
    lwc1	$f0,156($a1)
.L0daec530:
    # Line 1321
    jr	$ra
    # Line 1316
    swc1	$f0,20($a5)
.L0daec538:
    # Line 1319
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lwc1	$f1,0($v1)
    swc1	$f1,20($a5)
    # Line 1321
    jr	$ra
    nop
.end __glExtractTexelI

# Function: __glExtractTexelRGB8
# Declared: Line 1324 (Source lines: 1327-1344)
# Address: 0x0daec55c - 0x0daec618 (Size: 188 bytes, Frame: 0)
.globl __glExtractTexelRGB8
.ent __glExtractTexelRGB8
__glExtractTexelRGB8:
    # Line 1330
    bltz	$a3,.L0daec58c
    # Line 1327
    lw	$a6,0($a1)
    # Line 1330
    bltzl	$a4,.L0daec590
    # Line 1335
    lwc1	$f2,156($a1)
    # Line 1330
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec590
    # Line 1335
    lwc1	$f2,156($a1)
    # Line 1330
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec5a8
    # Line 1339
    lw	$a2,44($a0)
.L0daec58c:
    # Line 1335
    lwc1	$f2,156($a1)
.L0daec590:
    swc1	$f2,0($a5)
    # Line 1336
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1337
    lwc1	$f0,164($a1)
    # Line 1344
    jr	$ra
    # Line 1337
    swc1	$f0,8($a5)
.L0daec5a8:
    # Line 1339
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    # Line 1340
    lbu	$at,0($v1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,3292($a6)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a5)
    # Line 1341
    lbu	$a2,1($v1)
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,3292($a6)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a5)
    # Line 1342
    lbu	$v1,2($v1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,3292($a6)
    mul.s	$f3,$f3,$f0
    swc1	$f3,8($a5)
    # Line 1344
    jr	$ra
    nop
.end __glExtractTexelRGB8

# Function: __glExtractTexelRGBA8
# Declared: Line 1347 (Source lines: 1350-1369)
# Address: 0x0daec618 - 0x0daec6f8 (Size: 224 bytes, Frame: 0)
.globl __glExtractTexelRGBA8
.ent __glExtractTexelRGBA8
__glExtractTexelRGBA8:
    # Line 1353
    bltz	$a3,.L0daec648
    # Line 1350
    lw	$a6,0($a1)
    # Line 1353
    bltzl	$a4,.L0daec64c
    # Line 1358
    lwc1	$f3,156($a1)
    # Line 1353
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec64c
    # Line 1358
    lwc1	$f3,156($a1)
    # Line 1353
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    bnezl	$v0,.L0daec66c
    # Line 1363
    lw	$a2,44($a0)
.L0daec648:
    # Line 1358
    lwc1	$f3,156($a1)
.L0daec64c:
    swc1	$f3,0($a5)
    # Line 1359
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1360
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1361
    lwc1	$f0,168($a1)
    # Line 1369
    jr	$ra
    # Line 1361
    swc1	$f0,16($a5)
.L0daec66c:
    # Line 1363
    lw	$v1,0($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    # Line 1364
    lbu	$v0,0($v1)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a6)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a5)
    # Line 1365
    lbu	$at,1($v1)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a6)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a5)
    # Line 1366
    lbu	$a2,2($v1)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a6)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a5)
    # Line 1367
    lbu	$v1,3($v1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a6)
    mul.s	$f0,$f0,$f1
    swc1	$f0,16($a5)
    # Line 1369
    jr	$ra
    nop
.end __glExtractTexelRGBA8

# Function: __glExtractTexelL_B
# Declared: Line 1376 (Source lines: 1384-1385)
# Address: 0x0daec6f8 - 0x0daec724 (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelL_B
.ent __glExtractTexelL_B
__glExtractTexelL_B:
    # Line 1384
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    lw	$at,0($a0)
    mflo	$v0
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1385
    jr	$ra
    # Line 1384
    swc1	$f0,12($a5)
.end __glExtractTexelL_B

# Function: __glExtractTexelLA_B
# Declared: Line 1392 (Source lines: 1399-1402)
# Address: 0x0daec724 - 0x0daec75c (Size: 56 bytes, Frame: 0)
.globl __glExtractTexelLA_B
.ent __glExtractTexelLA_B
__glExtractTexelLA_B:
    # Line 1399
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    lw	$at,0($a0)
    mflo	$v0
    addu	$v0,$v0,$a4
    addu	$v0,$v0,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1400
    lwc1	$f1,8($at)
    swc1	$f1,12($a5)
    # Line 1401
    lwc1	$f0,12($at)
    # Line 1402
    jr	$ra
    # Line 1401
    swc1	$f0,16($a5)
.end __glExtractTexelLA_B

# Function: __glExtractTexelRGB_B
# Declared: Line 1409 (Source lines: 1416-1420)
# Address: 0x0daec75c - 0x0daec7a0 (Size: 68 bytes, Frame: 0)
.globl __glExtractTexelRGB_B
.ent __glExtractTexelRGB_B
__glExtractTexelRGB_B:
    # Line 1416
    lw	$a1,4($a0)
    addiu	$a3,$a3,1
    mult	$a1,$a3
    lw	$at,0($a0)
    mflo	$v1
    addu	$v1,$v1,$a4
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1417
    lwc1	$f2,12($at)
    swc1	$f2,0($a5)
    # Line 1418
    lwc1	$f1,16($at)
    swc1	$f1,4($a5)
    # Line 1419
    lwc1	$f0,20($at)
    # Line 1420
    jr	$ra
    # Line 1419
    swc1	$f0,8($a5)
.end __glExtractTexelRGB_B

# Function: __glExtractTexelRGBA_B
# Declared: Line 1427 (Source lines: 1434-1439)
# Address: 0x0daec7a0 - 0x0daec7e8 (Size: 72 bytes, Frame: 0)
.globl __glExtractTexelRGBA_B
.ent __glExtractTexelRGBA_B
__glExtractTexelRGBA_B:
    # Line 1434
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    lw	$at,0($a0)
    mflo	$v0
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1435
    lwc1	$f3,16($at)
    swc1	$f3,0($a5)
    # Line 1436
    lwc1	$f2,20($at)
    swc1	$f2,4($a5)
    # Line 1437
    lwc1	$f1,24($at)
    swc1	$f1,8($a5)
    # Line 1438
    lwc1	$f0,28($at)
    # Line 1439
    jr	$ra
    # Line 1438
    swc1	$f0,16($a5)
.end __glExtractTexelRGBA_B

# Function: __glExtractTexelA_B
# Declared: Line 1442 (Source lines: 1450-1451)
# Address: 0x0daec7e8 - 0x0daec814 (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelA_B
.ent __glExtractTexelA_B
__glExtractTexelA_B:
    # Line 1450
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    lw	$at,0($a0)
    mflo	$v0
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1451
    jr	$ra
    # Line 1450
    swc1	$f0,16($a5)
.end __glExtractTexelA_B

# Function: __glExtractTexelI_B
# Declared: Line 1454 (Source lines: 1462-1463)
# Address: 0x0daec814 - 0x0daec840 (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelI_B
.ent __glExtractTexelI_B
__glExtractTexelI_B:
    # Line 1462
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    lw	$at,0($a0)
    mflo	$v0
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1463
    jr	$ra
    # Line 1462
    swc1	$f0,20($a5)
.end __glExtractTexelI_B

# Function: __glExtractTexelRGB8_B
# Declared: Line 1466 (Source lines: 1469-1478)
# Address: 0x0daec840 - 0x0daec8b8 (Size: 120 bytes, Frame: 0)
.globl __glExtractTexelRGB8_B
.ent __glExtractTexelRGB8_B
__glExtractTexelRGB8_B:
    # Line 1474
    lw	$a2,4($a0)
    addiu	$a3,$a3,1
    mult	$a2,$a3
    lw	$v0,0($a0)
    mflo	$v1
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1475
    lbu	$a0,4($v0)
    mtc1	$a0,$f0
    # Line 1469
    lw	$at,0($a1)
    # Line 1475
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a5)
    # Line 1476
    lbu	$v1,5($v0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    # Line 1477
    lbu	$v0,6($v0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($at)
    mul.s	$f0,$f0,$f1
    # Line 1478
    jr	$ra
    # Line 1477
    swc1	$f0,8($a5)
.end __glExtractTexelRGB8_B

# Function: __glExtractTexelRGBA8_B
# Declared: Line 1481 (Source lines: 1484-1494)
# Address: 0x0daec8b8 - 0x0daec94c (Size: 148 bytes, Frame: 0)
.globl __glExtractTexelRGBA8_B
.ent __glExtractTexelRGBA8_B
__glExtractTexelRGBA8_B:
    # Line 1489
    lw	$a2,4($a0)
    addiu	$a3,$a3,1
    mult	$a2,$a3
    lw	$v0,0($a0)
    mflo	$v1
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1490
    lbu	$a2,4($v0)
    mtc1	$a2,$f2
    # Line 1484
    lw	$at,0($a1)
    # Line 1490
    cvt.s.w	$f2,$f2
    lwc1	$f1,3292($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a5)
    # Line 1491
    lbu	$a0,5($v0)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a5)
    # Line 1492
    lbu	$v1,6($v0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a5)
    # Line 1493
    lbu	$v0,7($v0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($at)
    mul.s	$f0,$f0,$f1
    # Line 1494
    jr	$ra
    # Line 1493
    swc1	$f0,16($a5)
.end __glExtractTexelRGBA8_B

# Function: __glExtractTexel3L
# Declared: Line 1502 (Source lines: 1507-1520)
# Address: 0x0daec94c - 0x0daec9d8 (Size: 140 bytes, Frame: 0)
.globl __glExtractTexel3L
.ent __glExtractTexel3L
__glExtractTexel3L:
    # Line 1507
    bltzl	$a3,.L0daec998
    # Line 1514
    lwc1	$f0,156($a1)
    # Line 1507
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daec998
    # Line 1514
    lwc1	$f0,156($a1)
    # Line 1507
    bltzl	$a4,.L0daec998
    # Line 1514
    lwc1	$f0,156($a1)
    # Line 1507
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daec998
    # Line 1514
    lwc1	$f0,156($a1)
    # Line 1507
    bltzl	$a2,.L0daec998
    # Line 1514
    lwc1	$f0,156($a1)
    # Line 1507
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daec9a4
    # Line 1518
    lw	$v1,16($a0)
    # Line 1514
    lwc1	$f0,156($a1)
.L0daec998:
    swc1	$f0,12($a5)
    # Line 1520
    jr	$ra
    nop
.L0daec9a4:
    # Line 1518
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lwc1	$f1,0($a6)
    # Line 1520
    jr	$ra
    # Line 1518
    swc1	$f1,12($a5)
.end __glExtractTexel3L

# Function: __glExtractTexel3LA
# Declared: Line 1526 (Source lines: 1531-1546)
# Address: 0x0daec9d8 - 0x0daeca78 (Size: 160 bytes, Frame: 0)
.globl __glExtractTexel3LA
.ent __glExtractTexel3LA
__glExtractTexel3LA:
    # Line 1531
    bltzl	$a3,.L0daeca24
    # Line 1538
    lwc1	$f1,156($a1)
    # Line 1531
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daeca24
    # Line 1538
    lwc1	$f1,156($a1)
    # Line 1531
    bltzl	$a4,.L0daeca24
    # Line 1538
    lwc1	$f1,156($a1)
    # Line 1531
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daeca24
    # Line 1538
    lwc1	$f1,156($a1)
    # Line 1531
    bltzl	$a2,.L0daeca24
    # Line 1538
    lwc1	$f1,156($a1)
    # Line 1531
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daeca38
    # Line 1541
    lw	$v1,16($a0)
    # Line 1538
    lwc1	$f1,156($a1)
.L0daeca24:
    swc1	$f1,12($a5)
    # Line 1539
    lwc1	$f0,168($a1)
    swc1	$f0,16($a5)
    # Line 1546
    jr	$ra
    nop
.L0daeca38:
    # Line 1541
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    addu	$at,$at,$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    # Line 1543
    lwc1	$f3,0($a6)
    swc1	$f3,12($a5)
    # Line 1544
    lwc1	$f2,4($a6)
    # Line 1546
    jr	$ra
    # Line 1544
    swc1	$f2,16($a5)
.end __glExtractTexel3LA

# Function: __glExtractTexel3RGB
# Declared: Line 1552 (Source lines: 1557-1574)
# Address: 0x0daeca78 - 0x0daecb2c (Size: 180 bytes, Frame: 0)
.globl __glExtractTexel3RGB
.ent __glExtractTexel3RGB
__glExtractTexel3RGB:
    # Line 1557
    bltzl	$a3,.L0daecac4
    # Line 1564
    lwc1	$f2,156($a1)
    # Line 1557
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daecac4
    # Line 1564
    lwc1	$f2,156($a1)
    # Line 1557
    bltzl	$a4,.L0daecac4
    # Line 1564
    lwc1	$f2,156($a1)
    # Line 1557
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daecac4
    # Line 1564
    lwc1	$f2,156($a1)
    # Line 1557
    bltzl	$a2,.L0daecac4
    # Line 1564
    lwc1	$f2,156($a1)
    # Line 1557
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daecae0
    # Line 1568
    lw	$a6,16($a0)
    # Line 1564
    lwc1	$f2,156($a1)
.L0daecac4:
    swc1	$f2,0($a5)
    # Line 1565
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1566
    lwc1	$f0,164($a1)
    swc1	$f0,8($a5)
    # Line 1574
    jr	$ra
    nop
.L0daecae0:
    # Line 1568
    mult	$a6,$a2
    lw	$v1,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v1,$a3,$v1
    mflo	$v0
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    # Line 1570
    lwc1	$f1,0($a6)
    swc1	$f1,0($a5)
    # Line 1571
    lwc1	$f0,4($a6)
    swc1	$f0,4($a5)
    # Line 1572
    lwc1	$f3,8($a6)
    # Line 1574
    jr	$ra
    # Line 1572
    swc1	$f3,8($a5)
.end __glExtractTexel3RGB

# Function: __glExtractTexel3RGBA
# Declared: Line 1580 (Source lines: 1585-1604)
# Address: 0x0daecb2c - 0x0daecbec (Size: 192 bytes, Frame: 0)
.globl __glExtractTexel3RGBA
.ent __glExtractTexel3RGBA
__glExtractTexel3RGBA:
    # Line 1585
    bltzl	$a3,.L0daecb78
    # Line 1592
    lwc1	$f3,156($a1)
    # Line 1585
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daecb78
    # Line 1592
    lwc1	$f3,156($a1)
    # Line 1585
    bltzl	$a4,.L0daecb78
    # Line 1592
    lwc1	$f3,156($a1)
    # Line 1585
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daecb78
    # Line 1592
    lwc1	$f3,156($a1)
    # Line 1585
    bltzl	$a2,.L0daecb78
    # Line 1592
    lwc1	$f3,156($a1)
    # Line 1585
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daecb9c
    # Line 1597
    lw	$v1,16($a0)
    # Line 1592
    lwc1	$f3,156($a1)
.L0daecb78:
    swc1	$f3,0($a5)
    # Line 1593
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1594
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1595
    lwc1	$f0,168($a1)
    swc1	$f0,16($a5)
    # Line 1604
    jr	$ra
    nop
.L0daecb9c:
    # Line 1597
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    # Line 1599
    lwc1	$f3,0($a6)
    swc1	$f3,0($a5)
    # Line 1600
    lwc1	$f2,4($a6)
    swc1	$f2,4($a5)
    # Line 1601
    lwc1	$f1,8($a6)
    swc1	$f1,8($a5)
    # Line 1602
    lwc1	$f0,12($a6)
    # Line 1604
    jr	$ra
    # Line 1602
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA

# Function: __glExtractTexel3A
# Declared: Line 1606 (Source lines: 1611-1624)
# Address: 0x0daecbec - 0x0daecc78 (Size: 140 bytes, Frame: 0)
.globl __glExtractTexel3A
.ent __glExtractTexel3A
__glExtractTexel3A:
    # Line 1611
    bltzl	$a3,.L0daecc38
    # Line 1618
    lwc1	$f0,168($a1)
    # Line 1611
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daecc38
    # Line 1618
    lwc1	$f0,168($a1)
    # Line 1611
    bltzl	$a4,.L0daecc38
    # Line 1618
    lwc1	$f0,168($a1)
    # Line 1611
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daecc38
    # Line 1618
    lwc1	$f0,168($a1)
    # Line 1611
    bltzl	$a2,.L0daecc38
    # Line 1618
    lwc1	$f0,168($a1)
    # Line 1611
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daecc44
    # Line 1622
    lw	$v1,16($a0)
    # Line 1618
    lwc1	$f0,168($a1)
.L0daecc38:
    swc1	$f0,16($a5)
    # Line 1624
    jr	$ra
    nop
.L0daecc44:
    # Line 1622
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lwc1	$f1,0($a6)
    # Line 1624
    jr	$ra
    # Line 1622
    swc1	$f1,16($a5)
.end __glExtractTexel3A

# Function: __glExtractTexel3I
# Declared: Line 1626 (Source lines: 1631-1644)
# Address: 0x0daecc78 - 0x0daecd04 (Size: 140 bytes, Frame: 0)
.globl __glExtractTexel3I
.ent __glExtractTexel3I
__glExtractTexel3I:
    # Line 1631
    bltzl	$a3,.L0daeccc4
    # Line 1638
    lwc1	$f0,156($a1)
    # Line 1631
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daeccc4
    # Line 1638
    lwc1	$f0,156($a1)
    # Line 1631
    bltzl	$a4,.L0daeccc4
    # Line 1638
    lwc1	$f0,156($a1)
    # Line 1631
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daeccc4
    # Line 1638
    lwc1	$f0,156($a1)
    # Line 1631
    bltzl	$a2,.L0daeccc4
    # Line 1638
    lwc1	$f0,156($a1)
    # Line 1631
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daeccd0
    # Line 1642
    lw	$v1,16($a0)
    # Line 1638
    lwc1	$f0,156($a1)
.L0daeccc4:
    swc1	$f0,20($a5)
    # Line 1644
    jr	$ra
    nop
.L0daeccd0:
    # Line 1642
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lwc1	$f1,0($a6)
    # Line 1644
    jr	$ra
    # Line 1642
    swc1	$f1,20($a5)
.end __glExtractTexel3I

# Function: __glExtractTexel3RGB8
# Declared: Line 1646 (Source lines: 1649-1669)
# Address: 0x0daecd04 - 0x0daecdec (Size: 232 bytes, Frame: 0)
.globl __glExtractTexel3RGB8
.ent __glExtractTexel3RGB8
__glExtractTexel3RGB8:
    # Line 1652
    bltz	$a3,.L0daecd4c
    # Line 1649
    lw	$a7,0($a1)
    # Line 1652
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daecd50
    # Line 1659
    lwc1	$f2,156($a1)
    # Line 1652
    bltzl	$a4,.L0daecd50
    # Line 1659
    lwc1	$f2,156($a1)
    # Line 1652
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daecd50
    # Line 1659
    lwc1	$f2,156($a1)
    # Line 1652
    bltzl	$a2,.L0daecd50
    # Line 1659
    lwc1	$f2,156($a1)
    # Line 1652
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daecd6c
    # Line 1663
    lw	$v1,16($a0)
.L0daecd4c:
    # Line 1659
    lwc1	$f2,156($a1)
.L0daecd50:
    swc1	$f2,0($a5)
    # Line 1660
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1661
    lwc1	$f0,164($a1)
    swc1	$f0,8($a5)
    # Line 1669
    jr	$ra
    nop
.L0daecd6c:
    # Line 1663
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    # Line 1665
    lbu	$v0,0($a6)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,3292($a7)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a5)
    # Line 1666
    lbu	$at,1($a6)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,3292($a7)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a5)
    # Line 1667
    lbu	$a6,2($a6)
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,3292($a7)
    mul.s	$f3,$f3,$f0
    # Line 1669
    jr	$ra
    # Line 1667
    swc1	$f3,8($a5)
.end __glExtractTexel3RGB8

# Function: __glExtractTexel3RGBA8
# Declared: Line 1671 (Source lines: 1674-1696)
# Address: 0x0daecdec - 0x0daecef8 (Size: 268 bytes, Frame: 0)
.globl __glExtractTexel3RGBA8
.ent __glExtractTexel3RGBA8
__glExtractTexel3RGBA8:
    # Line 1677
    bltz	$a3,.L0daece34
    # Line 1674
    lw	$a7,0($a1)
    # Line 1677
    lw	$at,24($a0)
    slt	$at,$a3,$at
    beqzl	$at,.L0daece38
    # Line 1684
    lwc1	$f3,156($a1)
    # Line 1677
    bltzl	$a4,.L0daece38
    # Line 1684
    lwc1	$f3,156($a1)
    # Line 1677
    lw	$v0,20($a0)
    slt	$v0,$a4,$v0
    beqzl	$v0,.L0daece38
    # Line 1684
    lwc1	$f3,156($a1)
    # Line 1677
    bltzl	$a2,.L0daece38
    # Line 1684
    lwc1	$f3,156($a1)
    # Line 1677
    lw	$v1,28($a0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0daece5c
    # Line 1689
    lw	$v1,16($a0)
.L0daece34:
    # Line 1684
    lwc1	$f3,156($a1)
.L0daece38:
    swc1	$f3,0($a5)
    # Line 1685
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1686
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1687
    lwc1	$f0,168($a1)
    swc1	$f0,16($a5)
    # Line 1696
    jr	$ra
    nop
.L0daece5c:
    # Line 1689
    mult	$v1,$a2
    lw	$v0,44($a0)
    lw	$a6,0($a0)
    mfhi	$zero
    sllv	$v0,$a3,$v0
    mflo	$at
    addu	$at,$at,$v0
    addu	$at,$at,$a4
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    # Line 1691
    lbu	$v1,0($a6)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a7)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a5)
    # Line 1692
    lbu	$v0,1($a6)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a7)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a5)
    # Line 1693
    lbu	$at,2($a6)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a7)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a5)
    # Line 1694
    lbu	$a6,3($a6)
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a7)
    mul.s	$f0,$f0,$f1
    # Line 1696
    jr	$ra
    # Line 1694
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA8

# Function: __glExtractTexel3L_B
# Declared: Line 1703 (Source lines: 1713-1714)
# Address: 0x0daecef8 - 0x0daecf3c (Size: 68 bytes, Frame: 0)
.globl __glExtractTexel3L_B
.ent __glExtractTexel3L_B
__glExtractTexel3L_B:
    # Line 1713
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v0
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1714
    jr	$ra
    # Line 1713
    swc1	$f0,12($a5)
.end __glExtractTexel3L_B

# Function: __glExtractTexel3LA_B
# Declared: Line 1721 (Source lines: 1729-1733)
# Address: 0x0daecf3c - 0x0daecf8c (Size: 80 bytes, Frame: 0)
.globl __glExtractTexel3LA_B
.ent __glExtractTexel3LA_B
__glExtractTexel3LA_B:
    # Line 1729
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v0
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    addu	$v0,$v0,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1731
    lwc1	$f1,8($at)
    swc1	$f1,12($a5)
    # Line 1732
    lwc1	$f0,12($at)
    # Line 1733
    jr	$ra
    # Line 1732
    swc1	$f0,16($a5)
.end __glExtractTexel3LA_B

# Function: __glExtractTexel3RGB_B
# Declared: Line 1740 (Source lines: 1748-1753)
# Address: 0x0daecf8c - 0x0daecfe8 (Size: 92 bytes, Frame: 0)
.globl __glExtractTexel3RGB_B
.ent __glExtractTexel3RGB_B
__glExtractTexel3RGB_B:
    # Line 1748
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v1
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$a0
    addu	$v1,$v1,$a0
    addu	$v1,$v1,$a4
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1750
    lwc1	$f2,12($at)
    swc1	$f2,0($a5)
    # Line 1751
    lwc1	$f1,16($at)
    swc1	$f1,4($a5)
    # Line 1752
    lwc1	$f0,20($at)
    # Line 1753
    jr	$ra
    # Line 1752
    swc1	$f0,8($a5)
.end __glExtractTexel3RGB_B

# Function: __glExtractTexel3RGBA_B
# Declared: Line 1760 (Source lines: 1768-1774)
# Address: 0x0daecfe8 - 0x0daed048 (Size: 96 bytes, Frame: 0)
.globl __glExtractTexel3RGBA_B
.ent __glExtractTexel3RGBA_B
__glExtractTexel3RGBA_B:
    # Line 1768
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v0
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1770
    lwc1	$f3,16($at)
    swc1	$f3,0($a5)
    # Line 1771
    lwc1	$f2,20($at)
    swc1	$f2,4($a5)
    # Line 1772
    lwc1	$f1,24($at)
    swc1	$f1,8($a5)
    # Line 1773
    lwc1	$f0,28($at)
    # Line 1774
    jr	$ra
    # Line 1773
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA_B

# Function: __glExtractTexel3A_B
# Declared: Line 1777 (Source lines: 1787-1788)
# Address: 0x0daed048 - 0x0daed08c (Size: 68 bytes, Frame: 0)
.globl __glExtractTexel3A_B
.ent __glExtractTexel3A_B
__glExtractTexel3A_B:
    # Line 1787
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v0
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1788
    jr	$ra
    # Line 1787
    swc1	$f0,16($a5)
.end __glExtractTexel3A_B

# Function: __glExtractTexel3I_B
# Declared: Line 1791 (Source lines: 1801-1802)
# Address: 0x0daed08c - 0x0daed0d0 (Size: 68 bytes, Frame: 0)
.globl __glExtractTexel3I_B
.ent __glExtractTexel3I_B
__glExtractTexel3I_B:
    # Line 1801
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a1,16($a0)
    mflo	$v0
    nop
    addiu	$a2,$a2,1
    mult	$a1,$a2
    lw	$at,0($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$a4
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1802
    jr	$ra
    # Line 1801
    swc1	$f0,20($a5)
.end __glExtractTexel3I_B

# Function: __glExtractTexel3RGB8_B
# Declared: Line 1804 (Source lines: 1807-1818)
# Address: 0x0daed0d0 - 0x0daed160 (Size: 144 bytes, Frame: 0)
.globl __glExtractTexel3RGB8_B
.ent __glExtractTexel3RGB8_B
__glExtractTexel3RGB8_B:
    # Line 1813
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a3,16($a0)
    mflo	$v1
    nop
    addiu	$a6,$a2,1
    mult	$a3,$a6
    lw	$v0,0($a0)
    mflo	$a0
    addu	$v1,$v1,$a0
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1815
    lbu	$a0,4($v0)
    mtc1	$a0,$f0
    # Line 1807
    lw	$at,0($a1)
    # Line 1815
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a5)
    # Line 1816
    lbu	$v1,5($v0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    # Line 1817
    lbu	$v0,6($v0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($at)
    mul.s	$f0,$f0,$f1
    # Line 1818
    jr	$ra
    # Line 1817
    swc1	$f0,8($a5)
.end __glExtractTexel3RGB8_B

# Function: __glExtractTexel3RGBA8_B
# Declared: Line 1820 (Source lines: 1823-1835)
# Address: 0x0daed160 - 0x0daed20c (Size: 172 bytes, Frame: 0)
.globl __glExtractTexel3RGBA8_B
.ent __glExtractTexel3RGBA8_B
__glExtractTexel3RGBA8_B:
    # Line 1829
    lw	$at,4($a0)
    addiu	$v0,$a3,1
    mult	$at,$v0
    lw	$a3,16($a0)
    mflo	$v1
    nop
    addiu	$a6,$a2,1
    mult	$a3,$a6
    lw	$v0,0($a0)
    mflo	$a0
    addu	$v1,$v1,$a0
    addu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1831
    lbu	$a2,4($v0)
    mtc1	$a2,$f2
    # Line 1823
    lw	$at,0($a1)
    # Line 1831
    cvt.s.w	$f2,$f2
    lwc1	$f1,3292($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a5)
    # Line 1832
    lbu	$a0,5($v0)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a5)
    # Line 1833
    lbu	$v1,6($v0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a5)
    # Line 1834
    lbu	$v0,7($v0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($at)
    mul.s	$f0,$f0,$f1
    # Line 1835
    jr	$ra
    # Line 1834
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA8_B

# Function: IsTextureConsistent
# Declared: Line 1840 (Source lines: 1849-1902)
# Address: 0x0daed20c - 0x0daed388 (Size: 380 bytes, Frame: 0)
.ent IsTextureConsistent
IsTextureConsistent:
    # Line 1849
    lw	$t3,228($a1)
    lw	$t0,4($t3)
    # Line 1874
    li	$v1,9729
    # Line 1849
    beqz	$t0,.L0daed35c
    # Line 1860
    li	$v0,8449
    # Line 1849
    lw	$t1,8($t3)
    beqz	$t1,.L0daed35c
    nop
    lw	$t2,12($t3)
    beqz	$t2,.L0daed35c
    nop
    # Line 1860
    lw	$t9,64($t3)
    # Line 1855
    lw	$a7,56($t3)
    # Line 1859
    lw	$t8,3436($a0)
    # Line 1860
    lw	$at,2376($a0)
    # Line 1856
    addu	$a6,$a7,$a7
    # Line 1858
    subu	$a5,$t2,$a6
    # Line 1860
    lw	$at,0($at)
    # Line 1857
    subu	$a4,$t1,$a6
    # Line 1881
    sll	$t1,$t8,0x2
    # Line 1860
    beq	$at,$v0,.L0daed36c
    # Line 1856
    subu	$a3,$t0,$a6
.L0daed264:
    # Line 1874
    lw	$a0,16($a1)
.L0daed268:
    li	$v0,9728
    beq	$a0,$v0,.L0daed364
    # Line 1881
    slti	$at,$t8,2
    # Line 1874
    beq	$a0,$v1,.L0daed364
    li	$a2,0x8146
    beq	$a0,$a2,.L0daed364
    nop
    # Line 1881
    bnez	$at,.L0daed354
    addiu	$a0,$t3,100
    li	$t2,1
    lw	$t0,60($t3)
    subu	$t1,$t1,$t8
    sll	$t1,$t1,0x3
    addu	$t1,$t1,$t8
    sll	$t1,$t1,0x2
    b	.L0daed308
    addu	$t1,$t3,$t1
.L0daed2ac:
    # Line 1888
    sra	$a4,$a4,0x1
.L0daed2b0:
    beqz	$a4,.L0daed33c
    nop
.L0daed2b8:
    # Line 1890
    sra	$a5,$a5,0x1
    beqz	$a5,.L0daed344
    nop
.L0daed2c4:
    # Line 1893
    lw	$at,56($a0)
    bne	$at,$a7,.L0daed34c
    addu	$a2,$a6,$a3
    lw	$v0,60($a0)
    bne	$v0,$t0,.L0daed34c
    nop
    lw	$v1,4($a0)
    bne	$v1,$a2,.L0daed34c
    addu	$v0,$a6,$a4
    lw	$at,8($a0)
    bne	$at,$v0,.L0daed34c
    addu	$a2,$a6,$a5
    lw	$v1,12($a0)
    bne	$v1,$a2,.L0daed34c
    # Line 1884
    addiu	$a0,$a0,100
    beq	$a0,$t1,.L0daed354
    nop
.L0daed308:
    # Line 1881
    beq	$a3,$t2,.L0daed32c
    # Line 1885
    li	$a1,1
    move	$a1,$zero
.L0daed314:
    bnez	$a1,.L0daed354
    # Line 1886
    sra	$a3,$a3,0x1
    bnezl	$a3,.L0daed2b0
    # Line 1888
    sra	$a4,$a4,0x1
    b	.L0daed2ac
    # Line 1887
    li	$a3,1
.L0daed32c:
    # Line 1881
    bnel	$a4,$t2,.L0daed314
    # Line 1885
    move	$a1,$zero
    b	.L0daed314
    nop
.L0daed33c:
    b	.L0daed2b8
    # Line 1889
    li	$a4,1
.L0daed344:
    b	.L0daed2c4
    # Line 1891
    li	$a5,1
.L0daed34c:
    # Line 1898
    jr	$ra
    move	$v0,$zero
.L0daed354:
    # Line 1902
    jr	$ra
    li	$v0,1
.L0daed35c:
    # Line 1852
    jr	$ra
    move	$v0,$zero
.L0daed364:
    # Line 1878
    jr	$ra
    li	$v0,1
.L0daed36c:
    # Line 1865
    li	$at,6407
    beq	$t9,$at,.L0daed264
    li	$v0,6408
    beql	$t9,$v0,.L0daed268
    # Line 1874
    lw	$a0,16($a1)
    # Line 1866
    jr	$ra
    move	$v0,$zero
.end IsTextureConsistent

# Function: __glIsTextureConsistent
# Declared: Line 1905 (Source lines: 1906-1909)
# Address: 0x0daed388 - 0x0daed3d8 (Size: 80 bytes, Frame: 48)
.globl __glIsTextureConsistent
.ent __glIsTextureConsistent
__glIsTextureConsistent:
    # Line 1906
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x11
    addiu	$at,$at,-23328
    # addu	gp,t9,at
    # Line 1907
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glLookUpTexture
    # Line 1906
    move	$s8,$a0
    # Line 1909
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 1907
    move	$a1,$v0
    # Line 1909
    addiu	$t9,$t9,-11764
    bal __glExtractTexel3RGBA8_B
    move	$a0,$s8
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glIsTextureConsistent

# Function: CheckTexImageArgs
# Declared: Line 1912 (Source lines: 1915-2021)
# Address: 0x0daed3d8 - 0x0daedb18 (Size: 1856 bytes, Frame: 128)
.ent CheckTexImageArgs
CheckTexImageArgs:
    # Line 1915
    addiu	$sp,$sp,-128
    sd	$a0,0($sp)
    sd	$s3,56($sp)
    move	$s3,$a2
    sd	$s2,24($sp)
    move	$s2,$a3
    sd	$a4,8($sp)
    sd	$s1,32($sp)
    move	$s1,$a5
    sd	$s0,40($sp)
    # Line 1916
    # lw $t9, -27068($gp) # &__glLookUpTexture
    # Line 1915
    move	$s0,$a6
    sd	$ra,48($sp)
    # Line 1916
    bal __glLookUpTexture
    sd	$a7,16($sp)
    beqz	$v0,.L0daed63c
    move	$a0,$v0
    # Line 1918
    ld	$v1,16($sp)
    lw	$at,232($v0)
    bne	$at,$v1,.L0daed63c
    # Line 1924
    li	$v0,0x8034
    sltiu	$a1,$s0,5126
    bnez	$a1,.L0daed4fc
    sltiu	$t0,$s0,5127
    beqz	$t0,.L0daed668
.L0daed43c:
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed440:
    bnez	$at,.L0daed470
    # Line 1963
    sltiu	$v1,$s1,6408
    bnez	$v1,.L0daed484
    sltiu	$a1,$s1,6410
    bnez	$a1,.L0daed780
    sltiu	$t0,$s1,6411
    bnez	$t0,.L0daed484
    li	$at,0x8000
    bne	$s1,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed470:
    # Line 1963
    sltiu	$v1,$s1,6404
    bnez	$v1,.L0daed6b8
    sltiu	$a1,$s1,6405
    beqz	$a1,.L0daed768
    sltiu	$at,$s1,6406
.L0daed484:
    # Line 1972
    bltz	$s3,.L0daed5e0
    ld	$t0,0($sp)
    # Line 1974
    lw	$t0,3436($t0)
    slt	$t0,$s3,$t0
    beqz	$t0,.L0daed5e0
    # Line 1977
    li	$v0,0x8046
    slt	$at,$s2,$v0
    bnez	$at,.L0daed528
    # Line 1980
    slt	$v1,$v0,$s2
    beqz	$v1,.L0daed594
    li	$v0,0x8051
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daed7c8
    slt	$t0,$v0,$s2
    beqz	$t0,.L0daed594
    li	$v0,0x8057
    slt	$at,$s2,$v0
    bnez	$at,.L0daed988
    slt	$v1,$v0,$s2
    beqz	$v1,.L0daed594
    li	$v0,0x805a
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daedad0
    slt	$t0,$v0,$s2
    beqz	$t0,.L0daed594
    li	$at,0x805b
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed4fc:
    # Line 1924
    sltiu	$v1,$s0,5123
    bnez	$v1,.L0daed60c
    sltiu	$a1,$s0,5124
    bnez	$a1,.L0daed43c
    sltiu	$t0,$s0,5125
    bnez	$t0,.L0daed804
    sltiu	$at,$s0,5126
    beqz	$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed528:
    # Line 1980
    li	$v0,0x803b
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daed6d4
    slt	$a1,$v0,$s2
    beqz	$a1,.L0daed594
    li	$v0,0x8041
    slt	$t0,$s2,$v0
    bnez	$t0,.L0daed888
    slt	$at,$v0,$s2
    beqz	$at,.L0daed594
    li	$v0,0x8044
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daed9f8
    slt	$a1,$v0,$s2
    beqz	$a1,.L0daed594
    li	$t0,0x8045
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed578:
    # Line 1980
    slti	$at,$s2,2
    bnez	$at,.L0daed918
    slti	$v1,$s2,3
    beqz	$v1,.L0daed63c
.L0daed588:
    ld	$a1,16($sp)
.L0daed58c:
    # Line 1982
    slti	$a1,$a1,3
    beqz	$a1,.L0daed63c
.L0daed594:
    ld	$t0,8($sp)
.L0daed598:
    # Line 2017
    bltz	$t0,.L0daed5a8
    ld	$at,8($sp)
    slti	$at,$at,2
    bnez	$at,.L0daed5b4
.L0daed5a8:
    li	$v0,1
    b	.L0daed5b8
    nop
.L0daed5b4:
    move	$v0,$zero
.L0daed5b8:
    bnez	$v0,.L0daed5e4
    # Line 1976
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2021
    move	$v0,$a0
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daed5e0:
    # Line 1976
    # lw $t9, -29008($gp) # &__glSetError
.L0daed5e4:
    jal	__glSetError
    li	$a0,1281
    # Line 1977
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daed60c:
    # Line 1924
    sltiu	$v1,$s0,5121
    bnez	$v1,.L0daed630
    sltiu	$a1,$s0,5122
    bnez	$a1,.L0daed43c
    li	$t0,5122
    bne	$s0,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed630:
    # Line 1924
    li	$at,5120
    beq	$s0,$at,.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed63c:
    # Line 1920
    # lw $t9, -29008($gp) # &__glSetError
.L0daed640:
    jal	__glSetError
    li	$a0,1280
    # Line 1921
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daed668:
    # Line 1924
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0daed708
    sltu	$a1,$v0,$s0
    bnez	$a1,.L0daed840
    # Line 1949
    li	$t0,6408
.L0daed67c:
    beq	$s1,$t0,.L0daed43c
    li	$at,0x8000
    beq	$s1,$at,.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
    # Line 1954
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1955
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daed6b8:
    # Line 1963
    sltiu	$v1,$s1,6403
    bnez	$v1,.L0daed754
    sltiu	$a1,$s1,6404
    beqz	$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed6d4:
    # Line 1980
    slti	$t0,$s2,6407
    bnez	$t0,.L0daed79c
    slti	$at,$s2,6408
    bnez	$at,.L0daed594
    slti	$v1,$s2,6410
    bnez	$v1,.L0daed92c
    slti	$a1,$s2,6411
    bnez	$a1,.L0daed594
    li	$t0,10768
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed708:
    # Line 1924
    li	$v0,0x8032
    sltu	$at,$s0,$v0
    bnez	$at,.L0daed818
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0daed8f0
    # Line 1937
    li	$a1,6407
    beq	$s1,$a1,.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
    # Line 1941
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1942
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daed754:
    # Line 1963
    li	$t0,6400
    bne	$s1,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed768:
    # Line 1963
    bnez	$at,.L0daed860
    sltiu	$v1,$s1,6407
    beqz	$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed780:
    # Line 1963
    sltiu	$a1,$s1,6409
    bnez	$a1,.L0daed874
    sltiu	$t0,$s1,6410
    beqz	$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed79c:
    # Line 1980
    slti	$at,$s2,3
    bnez	$at,.L0daed578
    slti	$v1,$s2,4
    bnez	$v1,.L0daed588
    slti	$a1,$s2,6406
    bnez	$a1,.L0daed9bc
    slti	$t0,$s2,6407
    beqz	$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed7c8:
    # Line 1980
    li	$v0,0x804c
    slt	$at,$s2,$v0
    bnez	$at,.L0daed8bc
    slt	$v1,$v0,$s2
    beqz	$v1,.L0daed594
    li	$v0,0x804f
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daeda2c
    slt	$t0,$v0,$s2
    beqz	$t0,.L0daed594
    li	$at,0x8050
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed804:
    # Line 1924
    li	$v1,5124
    bne	$s0,$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed818:
    # Line 1924
    li	$a1,6656
    bne	$s0,$a1,.L0daed63c
    # Line 1926
    li	$t0,6400
    bne	$s1,$t0,.L0daed63c
    ld	$at,16($sp)
    # Line 1927
    slti	$at,$at,3
    beqz	$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed440
    # Line 1961
    sltiu	$at,$s1,6407
.L0daed840:
    # Line 1924
    li	$v0,0x8036
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0daed904
    sltu	$a1,$v0,$s0
    bnez	$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed67c
    # Line 1949
    li	$t0,6408
.L0daed860:
    # Line 1963
    li	$t0,6405
    bne	$s1,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed874:
    # Line 1963
    li	$at,6408
    bne	$s1,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed484
    nop
.L0daed888:
    # Line 1980
    li	$v0,0x803e
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daed948
    slt	$a1,$v0,$s2
    beqz	$a1,.L0daed594
    li	$v0,0x8040
    slt	$t0,$s2,$v0
    bnez	$t0,.L0daeda6c
    slt	$at,$v0,$s2
    bnez	$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed8bc:
    # Line 1980
    li	$v0,0x8049
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daed968
    slt	$a1,$v0,$s2
    beqz	$a1,.L0daed594
    li	$v0,0x804b
    slt	$t0,$s2,$v0
    bnez	$t0,.L0daeda94
    slt	$at,$v0,$s2
    bnez	$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed8f0:
    # Line 1924
    li	$v1,0x8033
    bne	$s0,$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed67c
    # Line 1949
    li	$t0,6408
.L0daed904:
    # Line 1924
    li	$a1,0x8035
    bne	$s0,$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed67c
    # Line 1949
    li	$t0,6408
.L0daed918:
    # Line 1980
    li	$t0,1
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed58c
    ld	$a1,16($sp)
.L0daed92c:
    # Line 1980
    slti	$at,$s2,6409
    bnez	$at,.L0daed9d0
    slti	$v1,$s2,6410
    beqz	$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed948:
    # Line 1980
    li	$v0,0x803d
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daed9e4
    slt	$t0,$v0,$s2
    bnez	$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed968:
    # Line 1980
    li	$v0,0x8048
    slt	$at,$s2,$v0
    bnez	$at,.L0daeda18
    slt	$v1,$v0,$s2
    bnez	$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed988:
    # Line 1980
    li	$v0,0x8054
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daeda4c
    slt	$t0,$v0,$s2
    beqz	$t0,.L0daed594
    li	$v0,0x8056
    slt	$at,$s2,$v0
    bnez	$at,.L0daedaf0
    slt	$v1,$v0,$s2
    bnez	$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed9bc:
    # Line 1980
    li	$a1,4
    bne	$s2,$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed58c
    ld	$a1,16($sp)
.L0daed9d0:
    # Line 1980
    li	$t0,6408
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed9e4:
    # Line 1980
    li	$at,0x803c
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daed9f8:
    # Line 1980
    li	$v0,0x8043
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daeda80
    slt	$a1,$v0,$s2
    bnez	$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda18:
    # Line 1980
    li	$t0,0x8047
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda2c:
    # Line 1980
    li	$v0,0x804e
    slt	$at,$s2,$v0
    bnez	$at,.L0daedaa8
    slt	$v1,$v0,$s2
    bnez	$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda4c:
    # Line 1980
    li	$v0,0x8053
    slt	$a1,$s2,$v0
    bnez	$a1,.L0daedabc
    slt	$t0,$v0,$s2
    bnez	$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda6c:
    # Line 1980
    li	$at,0x803f
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda80:
    # Line 1980
    li	$v1,0x8042
    bne	$s2,$v1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daeda94:
    # Line 1980
    li	$a1,0x804a
    bne	$s2,$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daedaa8:
    # Line 1980
    li	$t0,0x804d
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daedabc:
    # Line 1980
    li	$at,0x8052
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daedad0:
    # Line 1980
    li	$v0,0x8059
    slt	$v1,$s2,$v0
    bnez	$v1,.L0daedb04
    slt	$a1,$v0,$s2
    bnez	$a1,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daedaf0:
    # Line 1980
    li	$t0,0x8055
    bne	$s2,$t0,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.L0daedb04:
    # Line 1980
    li	$at,0x8058
    bne	$s2,$at,.L0daed640
    # Line 1920
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daed598
    ld	$t0,8($sp)
.end CheckTexImageArgs

# Function: ComputeTexLevelSize
# Declared: Line 2025 (Source lines: 2030-2204)
# Address: 0x0daedb18 - 0x0daee204 (Size: 1772 bytes, Frame: 208)
.ent ComputeTexLevelSize
ComputeTexLevelSize:
    # Line 2030
    addiu	$sp,$sp,-80
    lw	$t3,84($sp)
    li	$t9,1
    sllv	$t1,$t9,$a3
    addu	$t2,$t3,$t3
    subu	$v0,$a5,$t2
    mult	$t1,$v0
    lw	$t8,92($sp)
    slti	$at,$t8,3
    mflo	$t0
    beqz	$at,.L0daedb7c
    # Line 2040
    li	$v0,-1
    # Line 2037
    lw	$a3,3428($a0)
    slt	$v1,$a3,$t0
    bnez	$v1,.L0daedc54
    subu	$at,$a6,$t2
    mult	$at,$t1
    mflo	$a1
    slt	$a1,$a3,$a1
    bnez	$a1,.L0daedc54
    nop
    # Line 2042
    mult	$a5,$a6
    mflo	$a0
    b	.L0daedbd8
    # Line 2059
    sw	$zero,92($a2)
.L0daedb7c:
    # Line 2044
    lw	$a3,3432($a0)
    slt	$v0,$a3,$t0
    bnez	$v0,.L0daedc48
    subu	$a1,$a6,$t2
    mult	$a1,$t1
    mflo	$v1
    slt	$v1,$a3,$v1
    bnez	$v1,.L0daedc48
    subu	$v0,$a7,$t2
    mult	$v0,$t1
    mflo	$at
    slt	$at,$a3,$at
    bnez	$at,.L0daedc4c
    # Line 2048
    li	$v0,-1
    # Line 2050
    mult	$a5,$a6
    mflo	$v1
    nop
    nop
    mult	$v1,$a7
    mflo	$a0
    nop
    nop
    # Line 2059
    sw	$zero,92($a2)
.L0daedbd8:
    # Line 2058
    sw	$zero,88($a2)
    # Line 2057
    sw	$zero,84($a2)
    # Line 2056
    sw	$zero,80($a2)
    # Line 2055
    sw	$zero,76($a2)
    # Line 2054
    sw	$zero,72($a2)
    # Line 2059
    li	$a3,0x8046
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daedc5c
    # Line 2053
    sw	$a4,60($a2)
    # Line 2061
    slt	$at,$a3,$a4
    bnez	$at,.L0daedcd8
    li	$a3,0x8051
.L0daedc08:
    # Line 2091
    li	$a4,8
.L0daedc0c:
    li	$v1,3
    # Line 2087
    li	$v0,6410
    # Line 2089
    li	$a1,24
    # Line 2090
    sw	$a1,84($a2)
    # Line 2089
    sw	$a1,88($a2)
    # Line 2088
    sw	$v0,68($a2)
    # Line 2091
    beq	$t8,$v1,.L0daeded4
    # Line 2087
    sw	$v0,64($a2)
    # Line 2096
    beqz	$t3,.L0daedee4
    # Line 2100
    la	$at,__glExtractTexelLA_B
    sw	$at,96($a2)
.L0daedc38:
    # Line 2204
    mult	$a0,$a4
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,80
.L0daedc48:
    # Line 2048
    li	$v0,-1
.L0daedc4c:
    jr	$ra
    addiu	$sp,$sp,80
.L0daedc54:
    # Line 2040
    jr	$ra
    addiu	$sp,$sp,80
.L0daedc5c:
    # Line 2061
    li	$a3,0x803b
    slt	$v0,$a4,$a3
    bnez	$v0,.L0daedca4
    slt	$v1,$a3,$a4
    bnez	$v1,.L0daedd84
    li	$a3,0x8041
.L0daedc74:
    # Line 2164
    li	$a4,4
.L0daedc78:
    li	$at,3
    # Line 2161
    li	$a1,6406
    # Line 2163
    li	$v0,24
    sw	$v0,84($a2)
    # Line 2162
    sw	$a1,68($a2)
    # Line 2164
    beq	$t8,$at,.L0daedfb4
    # Line 2161
    sw	$a1,64($a2)
    # Line 2169
    beqz	$t3,.L0daedfd0
    # Line 2173
    la	$v1,__glExtractTexelA_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daedca4:
    # Line 2061
    slti	$a1,$a4,6407
    bnez	$a1,.L0daedd38
    slti	$at,$a4,6408
    bnez	$at,.L0daedd4c
    slti	$v0,$a4,6410
    bnez	$v0,.L0daede1c
    slti	$v1,$a4,6411
    bnez	$v1,.L0daedc08
    li	$a1,10768
    bne	$a4,$a1,.L0daedecc
    nop
    b	.L0daedd50
    # Line 2117
    li	$a4,12
.L0daedcd8:
    # Line 2061
    slt	$at,$a4,$a3
    bnez	$at,.L0daeddbc
    slt	$v0,$a3,$a4
    beqz	$v0,.L0daedd4c
    li	$a3,0x8057
    slt	$v1,$a4,$a3
    bnez	$v1,.L0daedf70
    slt	$a1,$a3,$a4
    bnez	$a1,.L0daee08c
    li	$a3,6408
.L0daedd00:
    # Line 2143
    li	$a4,16
.L0daedd04:
    # Line 2138
    sw	$a3,68($a2)
    # Line 2137
    sw	$a3,64($a2)
    # Line 2143
    li	$v0,3
    # Line 2139
    li	$at,24
    # Line 2142
    sw	$at,84($a2)
    # Line 2141
    sw	$at,80($a2)
    # Line 2140
    sw	$at,76($a2)
    # Line 2143
    beq	$t8,$v0,.L0daee174
    # Line 2139
    sw	$at,72($a2)
    # Line 2148
    beqz	$t3,.L0daee184
    # Line 2152
    la	$v1,__glExtractTexelRGBA_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daedd38:
    # Line 2061
    slti	$a1,$a4,3
    bnez	$a1,.L0daede00
    slti	$at,$a4,4
    beqz	$at,.L0daedef0
    slti	$v0,$a4,6406
.L0daedd4c:
    # Line 2117
    li	$a4,12
.L0daedd50:
    li	$v1,3
    # Line 2112
    li	$v0,6407
    # Line 2114
    li	$a1,24
    # Line 2116
    sw	$a1,80($a2)
    # Line 2115
    sw	$a1,76($a2)
    # Line 2114
    sw	$a1,72($a2)
    # Line 2113
    sw	$v0,68($a2)
    # Line 2117
    beq	$t8,$v1,.L0daedfa4
    # Line 2112
    sw	$v0,64($a2)
    # Line 2122
    beqz	$t3,.L0daedfc4
    # Line 2126
    la	$at,__glExtractTexelRGB_B
    b	.L0daedc38
    sw	$at,96($a2)
.L0daedd84:
    # Line 2061
    slt	$v0,$a4,$a3
    bnez	$v0,.L0daede5c
    slt	$v1,$a3,$a4
    beqz	$v1,.L0daede2c
    li	$a3,0x8044
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daee018
    slt	$at,$a3,$a4
    beqz	$at,.L0daedc08
    li	$v0,0x8045
    bne	$a4,$v0,.L0daedecc
    nop
    b	.L0daedc0c
    # Line 2091
    li	$a4,8
.L0daeddbc:
    # Line 2061
    li	$a3,0x804c
    slt	$v1,$a4,$a3
    bnez	$v1,.L0daede90
    slt	$a1,$a3,$a4
    bnez	$a1,.L0daedf48
    li	$a3,0x8049
.L0daeddd4:
    # Line 2185
    li	$a4,4
.L0daeddd8:
    # Line 2183
    sw	$a3,68($a2)
    # Line 2182
    sw	$a3,64($a2)
    # Line 2185
    li	$v0,3
    # Line 2184
    li	$at,24
    # Line 2185
    beq	$t8,$v0,.L0daee0bc
    # Line 2184
    sw	$at,92($a2)
    # Line 2190
    beqz	$t3,.L0daee168
    # Line 2194
    la	$v1,__glExtractTexelI_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daede00:
    # Line 2061
    slti	$a1,$a4,2
    bnez	$a1,.L0daedec4
    slti	$at,$a4,3
    beqz	$at,.L0daedecc
    nop
    b	.L0daedc0c
    # Line 2091
    li	$a4,8
.L0daede1c:
    # Line 2061
    slti	$v0,$a4,6409
    bnez	$v0,.L0daedff0
    slti	$v1,$a4,6410
    beqz	$v1,.L0daedecc
.L0daede2c:
    # Line 2068
    li	$a4,4
.L0daede30:
    li	$at,3
    # Line 2067
    li	$v0,24
    sw	$v0,88($a2)
    # Line 2065
    li	$a1,6409
    # Line 2066
    sw	$a1,68($a2)
    # Line 2068
    beq	$t8,$at,.L0daee0ac
    # Line 2065
    sw	$a1,64($a2)
    # Line 2073
    beqz	$t3,.L0daee0cc
    # Line 2077
    la	$v1,__glExtractTexelL_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daede5c:
    # Line 2061
    li	$a3,0x803e
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daedf08
    slt	$at,$a3,$a4
    beqz	$at,.L0daedc74
    li	$a3,0x8040
    slt	$v0,$a4,$a3
    bnez	$v0,.L0daee0e4
    slt	$v1,$a3,$a4
    bnez	$v1,.L0daedecc
    nop
    b	.L0daede30
    # Line 2068
    li	$a4,4
.L0daede90:
    # Line 2061
    li	$a3,0x8049
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daedf28
    slt	$at,$a3,$a4
    beqz	$at,.L0daeddd4
    li	$a5,0x804b
    slt	$v0,$a4,$a5
    bnez	$v0,.L0daee10c
    slt	$v1,$a5,$a4
    bnez	$v1,.L0daedecc
    nop
    b	.L0daeddd8
    # Line 2185
    li	$a4,4
.L0daedec4:
    # Line 2061
    beq	$a4,$t9,.L0daede30
    # Line 2068
    li	$a4,4
.L0daedecc:
    b	.L0daedc38
    # Line 2199
    lw	$a4,0($sp)
.L0daeded4:
    # Line 2091
    beqz	$t3,.L0daee0d8
    # Line 2094
    la	$a1,__glExtractTexel3LA_B
    b	.L0daedc38
    sw	$a1,96($a2)
.L0daedee4:
    # Line 2102
    la	$at,__glExtractTexelLA
    b	.L0daedc38
    sw	$at,96($a2)
.L0daedef0:
    # Line 2061
    bnez	$v0,.L0daedfdc
    slti	$v1,$a4,6407
    beqz	$v1,.L0daedecc
    nop
    b	.L0daedc78
    # Line 2164
    li	$a4,4
.L0daedf08:
    # Line 2061
    li	$a3,0x803d
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daee004
    slt	$at,$a3,$a4
    bnez	$at,.L0daedecc
    nop
    b	.L0daedc78
    # Line 2164
    li	$a4,4
.L0daedf28:
    # Line 2061
    li	$a3,0x8048
    slt	$v0,$a4,$a3
    bnez	$v0,.L0daee038
    slt	$v1,$a3,$a4
    bnez	$v1,.L0daedecc
    nop
    b	.L0daedc0c
    # Line 2091
    li	$a4,8
.L0daedf48:
    # Line 2061
    li	$a3,0x804f
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daee04c
    slt	$at,$a3,$a4
    beqz	$at,.L0daedd4c
    li	$v0,0x8050
    bne	$a4,$v0,.L0daedecc
    nop
    b	.L0daedd50
    # Line 2117
    li	$a4,12
.L0daedf70:
    # Line 2061
    li	$a3,0x8054
    slt	$v1,$a4,$a3
    bnez	$v1,.L0daee06c
    slt	$a1,$a3,$a4
    beqz	$a1,.L0daedd4c
    li	$a3,0x8056
    slt	$at,$a4,$a3
    bnez	$at,.L0daee1a8
    slt	$v0,$a3,$a4
    bnez	$v0,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daedfa4:
    # Line 2117
    beqz	$t3,.L0daee190
    # Line 2120
    la	$v1,__glExtractTexel3RGB_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daedfb4:
    # Line 2164
    beqz	$t3,.L0daee19c
    # Line 2167
    la	$a1,__glExtractTexel3A_B
    b	.L0daedc38
    sw	$a1,96($a2)
.L0daedfc4:
    # Line 2128
    la	$at,__glExtractTexelRGB
    b	.L0daedc38
    sw	$at,96($a2)
.L0daedfd0:
    # Line 2175
    la	$v0,__glExtractTexelA
    b	.L0daedc38
    sw	$v0,96($a2)
.L0daedfdc:
    # Line 2061
    li	$v1,4
    bne	$a4,$v1,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daedff0:
    li	$a3,6408
    bne	$a4,$a3,.L0daedecc
    nop
    b	.L0daedd04
    # Line 2143
    li	$a4,16
.L0daee004:
    # Line 2061
    li	$a1,0x803c
    bne	$a4,$a1,.L0daedecc
    nop
    b	.L0daedc78
    # Line 2164
    li	$a4,4
.L0daee018:
    # Line 2061
    li	$a3,0x8043
    slt	$at,$a4,$a3
    bnez	$at,.L0daee0f8
    slt	$v0,$a3,$a4
    bnez	$v0,.L0daedecc
    nop
    b	.L0daedc0c
    # Line 2091
    li	$a4,8
.L0daee038:
    # Line 2061
    li	$v1,0x8047
    bne	$a4,$v1,.L0daedecc
    nop
    b	.L0daedc0c
    # Line 2091
    li	$a4,8
.L0daee04c:
    # Line 2061
    li	$a3,0x804e
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daee120
    slt	$at,$a3,$a4
    bnez	$at,.L0daedecc
    nop
    b	.L0daedd50
    # Line 2117
    li	$a4,12
.L0daee06c:
    # Line 2061
    li	$a3,0x8053
    slt	$v0,$a4,$a3
    bnez	$v0,.L0daee134
    slt	$v1,$a3,$a4
    bnez	$v1,.L0daedecc
    nop
    b	.L0daedd50
    # Line 2117
    li	$a4,12
.L0daee08c:
    # Line 2061
    li	$a3,0x805a
    slt	$a1,$a4,$a3
    bnez	$a1,.L0daee148
    slt	$at,$a3,$a4
    bnez	$at,.L0daee1d0
    li	$a1,0x805b
    b	.L0daedd00
    li	$a3,6408
.L0daee0ac:
    # Line 2068
    beqz	$t3,.L0daee1e0
    # Line 2071
    la	$v0,__glExtractTexel3L_B
    b	.L0daedc38
    sw	$v0,96($a2)
.L0daee0bc:
    # Line 2185
    beqz	$t3,.L0daee1ec
    # Line 2188
    la	$v1,__glExtractTexel3I_B
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daee0cc:
    # Line 2079
    la	$a1,__glExtractTexelL
    b	.L0daedc38
    sw	$a1,96($a2)
.L0daee0d8:
    # Line 2096
    la	$at,__glExtractTexel3LA
    b	.L0daedc38
    sw	$at,96($a2)
.L0daee0e4:
    # Line 2061
    li	$v0,0x803f
    bne	$a4,$v0,.L0daedecc
    nop
    b	.L0daede30
    # Line 2068
    li	$a4,4
.L0daee0f8:
    # Line 2061
    li	$v1,0x8042
    bne	$a4,$v1,.L0daedecc
    nop
    b	.L0daede30
    # Line 2068
    li	$a4,4
.L0daee10c:
    # Line 2061
    li	$a1,0x804a
    bne	$a4,$a1,.L0daedecc
    nop
    b	.L0daeddd8
    # Line 2185
    li	$a4,4
.L0daee120:
    # Line 2061
    li	$at,0x804d
    bne	$a4,$at,.L0daedecc
    nop
    b	.L0daeddd4
    li	$a3,0x8049
.L0daee134:
    li	$v0,0x8052
    bne	$a4,$v0,.L0daedecc
    nop
    b	.L0daedd50
    # Line 2117
    li	$a4,12
.L0daee148:
    # Line 2061
    li	$a3,0x8059
    slt	$v1,$a4,$a3
    bnez	$v1,.L0daee1bc
    slt	$a1,$a3,$a4
    bnez	$a1,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daee168:
    # Line 2196
    la	$at,__glExtractTexelI
    b	.L0daedc38
    sw	$at,96($a2)
.L0daee174:
    # Line 2143
    beqz	$t3,.L0daee1f8
    # Line 2146
    la	$v0,__glExtractTexel3RGBA_B
    b	.L0daedc38
    sw	$v0,96($a2)
.L0daee184:
    # Line 2154
    la	$v1,__glExtractTexelRGBA
    b	.L0daedc38
    sw	$v1,96($a2)
.L0daee190:
    # Line 2122
    la	$a1,__glExtractTexel3RGB
    b	.L0daedc38
    sw	$a1,96($a2)
.L0daee19c:
    # Line 2169
    la	$at,__glExtractTexel3A
    b	.L0daedc38
    sw	$at,96($a2)
.L0daee1a8:
    # Line 2061
    li	$v0,0x8055
    bne	$a4,$v0,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daee1bc:
    li	$v1,0x8058
    bne	$a4,$v1,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daee1d0:
    bne	$a4,$a1,.L0daedecc
    nop
    b	.L0daedd00
    li	$a3,6408
.L0daee1e0:
    # Line 2073
    la	$at,__glExtractTexel3L
    b	.L0daedc38
    sw	$at,96($a2)
.L0daee1ec:
    # Line 2190
    la	$v0,__glExtractTexel3I
    b	.L0daedc38
    sw	$v0,96($a2)
.L0daee1f8:
    # Line 2148
    la	$v1,__glExtractTexel3RGBA
    b	.L0daedc38
    sw	$v1,96($a2)
.end ComputeTexLevelSize

# Function: __glTexCreateProxyLevel
# Declared: Line 2207 (Source lines: 2211-2252)
# Address: 0x0daee204 - 0x0daee354 (Size: 336 bytes, Frame: 240)
.globl __glTexCreateProxyLevel
.ent __glTexCreateProxyLevel
__glTexCreateProxyLevel:
    # Line 2211
    move	$v1,$a6
    addiu	$sp,$sp,-240
    sd	$ra,120($sp)
    move	$ra,$a2
    # Line 2215
    addiu	$a2,$sp,16
    sd	$a6,144($sp)
    sd	$a7,152($sp)
    # Line 2211
    move	$v0,$a7
    # Line 2215
    move	$a7,$a6
    # Line 2211
    move	$a6,$a5
    sd	$a5,136($sp)
    move	$a5,$a4
    sd	$a4,128($sp)
    move	$a4,$a3
    # Line 2215
    move	$a3,$ra
    # sd	gp,168(sp)
    sd	$s3,160($sp)
    # Line 2212
    lw	$s3,228($a1)
    # Line 2215
    sw	$v0,4($sp)
    # Line 2212
    sll	$t8,$ra,0x2
    # Line 2215
    lw	$at,244($sp)
    # Line 2212
    subu	$t8,$t8,$ra
    sll	$t8,$t8,0x3
    # Line 2215
    sw	$at,12($sp)
    # Line 2211
    lui	$at,0x11
    addiu	$at,$at,-27036
    # addu	gp,t9,at
    # Line 2215
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 2212
    addu	$t8,$t8,$ra
    sll	$t8,$t8,0x2
    # Line 2215
    addiu	$t9,$t9,-9448
    bal __glIsTextureConsistent
    # Line 2212
    addu	$s3,$s3,$t8
    # Line 2238
    ld	$a0,136($sp)
    # Line 2215
    bltz	$v0,.L0daee314
    ld	$ra,120($sp)
    # Line 2239
    ld	$v1,144($sp)
    sw	$v1,12($s3)
    # Line 2240
    ld	$v0,152($sp)
    ld	$at,128($sp)
    # Line 2238
    sw	$a0,8($s3)
    # Line 2240
    sw	$v0,56($s3)
    # Line 2237
    sw	$at,4($s3)
    # Line 2241
    lw	$at,76($sp)
    sw	$at,60($s3)
    # Line 2242
    lw	$a0,80($sp)
    sw	$a0,64($s3)
    # Line 2243
    lw	$v1,84($sp)
    sw	$v1,68($s3)
    # Line 2244
    lw	$v0,88($sp)
    sw	$v0,72($s3)
    # Line 2245
    lw	$at,92($sp)
    sw	$at,76($s3)
    # Line 2246
    lw	$a0,96($sp)
    sw	$a0,80($s3)
    # Line 2247
    lw	$v1,100($sp)
    sw	$v1,84($s3)
    # Line 2248
    lw	$v0,104($sp)
    sw	$v0,88($s3)
    # Line 2249
    lw	$at,108($sp)
    sw	$at,92($s3)
    # Line 2250
    lw	$a0,112($sp)
    sw	$a0,96($s3)
.L0daee300:
    # Line 2252
    move	$v0,$zero
    # ld	gp,168(sp)
    ld	$s3,160($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0daee314:
    # Line 2232
    sw	$zero,92($s3)
    # Line 2231
    sw	$zero,88($s3)
    # Line 2230
    sw	$zero,84($s3)
    # Line 2229
    sw	$zero,80($s3)
    # Line 2228
    sw	$zero,76($s3)
    # Line 2227
    sw	$zero,72($s3)
    # Line 2226
    sw	$zero,68($s3)
    # Line 2225
    sw	$zero,64($s3)
    # Line 2224
    sw	$zero,60($s3)
    # Line 2223
    sw	$zero,56($s3)
    # Line 2222
    sw	$zero,12($s3)
    # Line 2221
    sw	$zero,8($s3)
    # Line 2233
    la	$v0,__glNop
    # Line 2220
    sw	$zero,4($s3)
    # Line 2233
    b	.L0daee300
    sw	$v0,96($s3)
.end __glTexCreateProxyLevel

# Function: __glTexCreateLevel
# Declared: Line 2255 (Source lines: 2259-2343)
# Address: 0x0daee354 - 0x0daee630 (Size: 732 bytes, Frame: 144)
.globl __glTexCreateLevel
.ent __glTexCreateLevel
__glTexCreateLevel:
    # Line 2259
    move	$v1,$a6
    addiu	$sp,$sp,-272
    sd	$a2,120($sp)
    sd	$ra,200($sp)
    move	$ra,$a2
    # Line 2263
    addiu	$a2,$sp,16
    sd	$a1,128($sp)
    sd	$a0,152($sp)
    sd	$a6,160($sp)
    sd	$a7,168($sp)
    # Line 2259
    move	$v0,$a7
    # Line 2263
    move	$a7,$a6
    # Line 2259
    move	$a6,$a5
    sd	$a5,176($sp)
    move	$a5,$a4
    sd	$a4,144($sp)
    move	$a4,$a3
    # Line 2263
    move	$a3,$ra
    sd	$gp,184($sp)
    sd	$s0,192($sp)
    # Line 2260
    lw	$s0,228($a1)
    # Line 2263
    sw	$v0,4($sp)
    # Line 2260
    sll	$t8,$ra,0x2
    # Line 2263
    lw	$at,276($sp)
    # Line 2260
    subu	$t8,$t8,$ra
    sll	$t8,$t8,0x3
    # Line 2263
    sw	$at,12($sp)
    # Line 2259
    lui	$at,0x11
    addiu	$at,$at,-27372
    addu	$gp,$t9,$at
    # Line 2263
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 2260
    addu	$t8,$t8,$ra
    sll	$t8,$t8,0x2
    # Line 2263
    addiu	$t9,$t9,-9448
    bal __glIsTextureConsistent
    # Line 2260
    addu	$s0,$s0,$t8
    # Line 2263
    bltz	$v0,.L0daee610
    # Line 2268
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2269
    blez	$v0,.L0daee518
    lw	$a1,0($s0)
    ld	$t9,152($sp)
    # Line 2272
    move	$a0,$t9
    lw	$t9,8($t9)
    jal	__glSetError
    move	$a2,$v0
    beqz	$v0,.L0daee5ec
    sw	$v0,0($s0)
    # Line 2283
    ld	$a2,176($sp)
    ld	$a0,144($sp)
    mult	$a0,$a2
    # Line 2282
    ld	$a3,160($sp)
    # Line 2285
    # lw $t9, -27972($gp) # &__glFloorLog2
    # Line 2282
    sw	$a3,12($s0)
    # Line 2284
    ld	$a1,168($sp)
    # Line 2281
    sw	$a2,8($s0)
    # Line 2280
    sw	$a0,4($s0)
    # Line 2284
    addu	$a1,$a1,$a1
    sd	$a1,136($sp)
    subu	$a0,$a0,$a1
    # Line 2283
    mflo	$ra
    sw	$ra,16($s0)
    # Line 2285
    jal	__glFloorLog2
    # Line 2284
    sw	$a0,20($s0)
    # Line 2286
    ld	$a1,136($sp)
    ld	$a0,176($sp)
    # Line 2287
    # lw $t9, -27972($gp) # &__glFloorLog2
    # Line 2285
    sw	$v0,44($s0)
    # Line 2286
    subu	$a0,$a0,$a1
    # Line 2287
    jal	__glFloorLog2
    # Line 2286
    sw	$a0,24($s0)
    # Line 2288
    ld	$a1,136($sp)
    ld	$a0,160($sp)
    # Line 2289
    # lw $t9, -27972($gp) # &__glFloorLog2
    # Line 2287
    sw	$v0,48($s0)
    # Line 2288
    subu	$a0,$a0,$a1
    # Line 2289
    jal	__glFloorLog2
    # Line 2288
    sw	$a0,28($s0)
    # Line 2291
    lw	$at,24($s0)
    mtc1	$at,$f1
    # Line 2292
    lw	$t1,28($s0)
    # Line 2291
    cvt.s.w	$f1,$f1
    # Line 2292
    mtc1	$t1,$f0
    # Line 2290
    lw	$v1,20($s0)
    # Line 2292
    cvt.s.w	$f0,$f0
    # Line 2290
    mtc1	$v1,$f2
    # Line 2293
    ld	$t0,168($sp)
    # Line 2290
    cvt.s.w	$f2,$f2
    # Line 2289
    sw	$v0,52($s0)
    # Line 2293
    sw	$t0,56($s0)
    # Line 2292
    swc1	$f0,40($s0)
    # Line 2291
    swc1	$f1,36($s0)
    # Line 2290
    swc1	$f2,32($s0)
    # Line 2294
    lw	$v1,76($sp)
    sw	$v1,60($s0)
    # Line 2295
    lw	$v0,80($sp)
    sw	$v0,64($s0)
    # Line 2296
    lw	$at,84($sp)
    sw	$at,68($s0)
    # Line 2297
    lw	$t1,88($sp)
    sw	$t1,72($s0)
    # Line 2298
    lw	$t0,92($sp)
    sw	$t0,76($s0)
    # Line 2299
    lw	$v1,96($sp)
    sw	$v1,80($s0)
    # Line 2300
    lw	$v0,100($sp)
    sw	$v0,84($s0)
    # Line 2301
    lw	$at,104($sp)
    sw	$at,88($s0)
    # Line 2302
    lw	$t1,108($sp)
    sw	$t1,92($s0)
    # Line 2303
    lw	$t0,112($sp)
    b	.L0daee590
    sw	$t0,96($s0)
.L0daee518:
    beqz	$a1,.L0daee534
    ld	$t9,152($sp)
    # Line 2307
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    nop
    # Line 2308
    sw	$zero,0($s0)
.L0daee534:
    # Line 2329
    sw	$zero,92($s0)
    # Line 2328
    sw	$zero,88($s0)
    # Line 2327
    sw	$zero,84($s0)
    # Line 2326
    sw	$zero,80($s0)
    # Line 2325
    sw	$zero,76($s0)
    # Line 2324
    sw	$zero,72($s0)
    # Line 2323
    sw	$zero,68($s0)
    # Line 2322
    sw	$zero,64($s0)
    # Line 2320
    sw	$zero,56($s0)
    # Line 2319
    sw	$zero,52($s0)
    # Line 2318
    sw	$zero,48($s0)
    # Line 2317
    sw	$zero,44($s0)
    # Line 2316
    sw	$zero,28($s0)
    # Line 2315
    sw	$zero,24($s0)
    # Line 2314
    sw	$zero,20($s0)
    # Line 2313
    sw	$zero,16($s0)
    # Line 2312
    sw	$zero,12($s0)
    # Line 2311
    sw	$zero,8($s0)
    # Line 2310
    sw	$zero,4($s0)
    # Line 2330
    la	$at,__glNop
    # Line 2321
    li	$v1,1
    sw	$v1,60($s0)
    # Line 2330
    sw	$at,96($s0)
.L0daee590:
    ld	$t0,120($sp)
    # Line 2343
    ld	$ra,200($sp)
    # Line 2330
    beqz	$t0,.L0daee5b0
    ld	$gp,184($sp)
.L0daee5a0:
    # Line 2343
    lw	$v0,0($s0)
    ld	$s0,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0daee5b0:
    # Line 2335
    ld	$at,128($sp)
    lw	$v0,48($s0)
    sw	$v0,236($at)
    lw	$a0,44($s0)
    slt	$t1,$v0,$a0
    beqz	$t1,.L0daee5d4
    # Line 2337
    ld	$v1,128($sp)
    move	$v0,$a0
    sw	$a0,236($v1)
.L0daee5d4:
    lw	$a0,52($s0)
    slt	$t0,$v0,$a0
    beqz	$t0,.L0daee5a0
    ld	$t1,128($sp)
    b	.L0daee5a0
    # Line 2340
    sw	$a0,236($t1)
.L0daee5ec:
    # Line 2276
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 2277
    move	$v0,$zero
    ld	$ra,200($sp)
    ld	$gp,184($sp)
    ld	$s0,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0daee610:
    # Line 2268
    jalr	$t9
    li	$a0,1281
    # Line 2269
    move	$v0,$zero
    ld	$ra,200($sp)
    ld	$gp,184($sp)
    ld	$s0,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glTexCreateLevel

# Function: __glInitTexImageStore
# Declared: Line 2350 (Source lines: 2353-2403)
# Address: 0x0daee630 - 0x0daee76c (Size: 316 bytes, Frame: 0)
.globl __glInitTexImageStore
.ent __glInitTexImageStore
__glInitTexImageStore:
    # Line 2353
    lw	$a4,228($a2)
    sll	$a5,$a3,0x2
    subu	$a5,$a5,$a3
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$a3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    # Line 2360
    li	$a5,1
    # Line 2355
    lw	$a3,0($a4)
    # Line 2360
    sw	$a5,124($a1)
    # Line 2359
    sw	$zero,120($a1)
    # Line 2358
    sw	$zero,136($a1)
    # Line 2357
    sw	$zero,132($a1)
    # Line 2356
    sw	$zero,128($a1)
    # Line 2355
    sw	$a3,88($a1)
    # Line 2361
    lw	$a0,4($a4)
    sw	$a0,140($a1)
    # Line 2362
    lw	$v1,8($a4)
    sw	$v1,144($a1)
    # Line 2363
    lw	$v0,232($a2)
    sw	$v0,432($a1)
    lw	$at,232($a2)
    beq	$at,$a5,.L0daee6d8
.L0daee68c:
    # Line 2368
    li	$a3,6407
    lw	$a2,68($a4)
    li	$at,6409
    beq	$a2,$at,.L0daee6fc
    li	$v0,6410
    beq	$a2,$v0,.L0daee718
    # Line 2376
    li	$v1,5126
    # Line 2368
    beq	$a2,$a3,.L0daee72c
    # Line 2381
    li	$at,5126
    # Line 2368
    li	$a3,6408
    beq	$a2,$a3,.L0daee740
    # Line 2387
    li	$a0,4
    # Line 2368
    li	$a3,6406
    beq	$a2,$a3,.L0daee754
    li	$v1,0x8049
    beq	$a2,$v1,.L0daee6e4
    # Line 2396
    li	$v0,5126
    # Line 2403
    jr	$ra
    nop
.L0daee6d8:
    # Line 2365
    lw	$a0,56($a4)
    b	.L0daee68c
    sw	$a0,132($a1)
.L0daee6e4:
    # Line 2396
    sw	$v0,84($a1)
    # Line 2397
    li	$v1,4
    # Line 2395
    li	$at,6403
    sw	$at,80($a1)
    # Line 2403
    jr	$ra
    # Line 2397
    sw	$v1,148($a1)
.L0daee6fc:
    # Line 2370
    li	$a0,6403
    sw	$a0,80($a1)
    # Line 2371
    li	$at,5126
    # Line 2372
    li	$v0,4
    sw	$v0,148($a1)
    # Line 2403
    jr	$ra
    # Line 2371
    sw	$at,84($a1)
.L0daee718:
    # Line 2377
    li	$a0,4
    # Line 2375
    sw	$a5,80($a1)
    # Line 2376
    sw	$v1,84($a1)
    # Line 2403
    jr	$ra
    # Line 2377
    sw	$a0,148($a1)
.L0daee72c:
    # Line 2382
    li	$v0,4
    # Line 2380
    sw	$a3,80($a1)
    # Line 2381
    sw	$at,84($a1)
    # Line 2403
    jr	$ra
    # Line 2382
    sw	$v0,148($a1)
.L0daee740:
    # Line 2385
    sw	$a3,80($a1)
    # Line 2387
    sw	$a0,148($a1)
    # Line 2386
    li	$v1,5126
    # Line 2403
    jr	$ra
    # Line 2386
    sw	$v1,84($a1)
.L0daee754:
    # Line 2391
    li	$at,5126
    # Line 2390
    sw	$a3,80($a1)
    # Line 2391
    sw	$at,84($a1)
    # Line 2392
    li	$v0,4
    # Line 2403
    jr	$ra
    # Line 2392
    sw	$v0,148($a1)
.end __glInitTexImageStore

# Function: __glInitTexImageGet
# Declared: Line 2409 (Source lines: 2412-2462)
# Address: 0x0daee76c - 0x0daee8a8 (Size: 316 bytes, Frame: 0)
.globl __glInitTexImageGet
.ent __glInitTexImageGet
__glInitTexImageGet:
    # Line 2412
    lw	$a4,228($a2)
    sll	$a5,$a3,0x2
    subu	$a5,$a5,$a3
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$a3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    # Line 2419
    li	$a5,1
    # Line 2414
    lw	$a3,0($a4)
    # Line 2419
    sw	$a5,44($a1)
    # Line 2418
    sw	$zero,40($a1)
    # Line 2417
    sw	$zero,56($a1)
    # Line 2416
    sw	$zero,52($a1)
    # Line 2415
    sw	$zero,48($a1)
    # Line 2414
    sw	$a3,8($a1)
    # Line 2420
    lw	$a0,4($a4)
    sw	$a0,60($a1)
    # Line 2421
    lw	$v1,8($a4)
    sw	$v1,64($a1)
    # Line 2422
    lw	$v0,232($a2)
    sw	$v0,432($a1)
    lw	$at,232($a2)
    beq	$at,$a5,.L0daee814
.L0daee7c8:
    # Line 2427
    li	$a3,6407
    lw	$a2,68($a4)
    li	$at,6409
    beq	$a2,$at,.L0daee838
    li	$v0,6410
    beq	$a2,$v0,.L0daee854
    # Line 2435
    li	$v1,5126
    # Line 2427
    beq	$a2,$a3,.L0daee868
    # Line 2440
    li	$at,5126
    # Line 2427
    li	$a3,6408
    beq	$a2,$a3,.L0daee87c
    # Line 2446
    li	$a0,4
    # Line 2427
    li	$a3,6406
    beq	$a2,$a3,.L0daee890
    li	$v1,0x8049
    beq	$a2,$v1,.L0daee820
    # Line 2455
    li	$v0,5126
    # Line 2462
    jr	$ra
    nop
.L0daee814:
    # Line 2424
    lw	$a0,56($a4)
    b	.L0daee7c8
    sw	$a0,52($a1)
.L0daee820:
    # Line 2455
    sw	$v0,4($a1)
    # Line 2456
    li	$v1,4
    # Line 2454
    li	$at,6403
    sw	$at,0($a1)
    # Line 2462
    jr	$ra
    # Line 2456
    sw	$v1,68($a1)
.L0daee838:
    # Line 2429
    li	$a0,6403
    sw	$a0,0($a1)
    # Line 2430
    li	$at,5126
    # Line 2431
    li	$v0,4
    sw	$v0,68($a1)
    # Line 2462
    jr	$ra
    # Line 2430
    sw	$at,4($a1)
.L0daee854:
    # Line 2436
    li	$a0,4
    # Line 2434
    sw	$a5,0($a1)
    # Line 2435
    sw	$v1,4($a1)
    # Line 2462
    jr	$ra
    # Line 2436
    sw	$a0,68($a1)
.L0daee868:
    # Line 2441
    li	$v0,4
    # Line 2439
    sw	$a3,0($a1)
    # Line 2440
    sw	$at,4($a1)
    # Line 2462
    jr	$ra
    # Line 2441
    sw	$v0,68($a1)
.L0daee87c:
    # Line 2444
    sw	$a3,0($a1)
    # Line 2446
    sw	$a0,68($a1)
    # Line 2445
    li	$v1,5126
    # Line 2462
    jr	$ra
    # Line 2445
    sw	$v1,4($a1)
.L0daee890:
    # Line 2450
    li	$at,5126
    # Line 2449
    sw	$a3,0($a1)
    # Line 2450
    sw	$at,4($a1)
    # Line 2451
    li	$v0,4
    # Line 2462
    jr	$ra
    # Line 2451
    sw	$v0,68($a1)
.end __glInitTexImageGet

# Function: __glInitTexSourceUnpack
# Declared: Line 2469 (Source lines: 2473-2485)
# Address: 0x0daee8a8 - 0x0daee90c (Size: 100 bytes, Frame: 208)
.globl __glInitTexSourceUnpack
.ent __glInitTexSourceUnpack
__glInitTexSourceUnpack:
    # Line 2473
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-28736
    # addu	gp,t9,at
    # Line 2474
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 2484
    # lw $t9, -30560($gp) # &__glLoadUnpackModes
    # Line 2475
    lwc1	$f0,3284($a0)
    # Line 2476
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 2484
    lbu	$a2,87($sp)
    # Line 2481
    sw	$a7,8($a1)
    # Line 2480
    sw	$a6,4($a1)
    # Line 2479
    sw	$a5,0($a1)
    # Line 2478
    sw	$a4,176($a1)
    # Line 2477
    sw	$a3,172($a1)
    # Line 2484
    jal	__glLoadUnpackModes
    # Line 2475
    swc1	$f0,160($a1)
    # Line 2485
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitTexSourceUnpack

# Function: __glInitTexDestPack
# Declared: Line 2490 (Source lines: 2493-2505)
# Address: 0x0daee90c - 0x0daee96c (Size: 96 bytes, Frame: 208)
.globl __glInitTexDestPack
.ent __glInitTexDestPack
__glInitTexDestPack:
    # Line 2493
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$at,0x11
    addiu	$at,$at,-28836
    # addu	gp,t9,at
    # Line 2494
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 2504
    # lw $t9, -30516($gp) # &__glLoadPackModes
    # Line 2495
    lwc1	$f0,3284($a0)
    # Line 2501
    sw	$a7,88($a1)
    # Line 2500
    sw	$a6,84($a1)
    # Line 2499
    sw	$a5,80($a1)
    # Line 2498
    sw	$a4,176($a1)
    # Line 2497
    sw	$a3,172($a1)
    # Line 2496
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 2504
    jal	__glLoadPackModes
    # Line 2495
    swc1	$f0,160($a1)
    # Line 2505
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitTexDestPack

# Function: IsLegalRange
# Declared: Line 2519 (Source lines: 2521-2532)
# Address: 0x0daee96c - 0x0daee9c0 (Size: 84 bytes, Frame: 48)
.ent IsLegalRange
IsLegalRange:
    # Line 2521
    addiu	$sp,$sp,-48
    # Line 2525
    addu	$a4,$a3,$a3
    blez	$a2,.L0daee984
    subu	$a4,$a1,$a4
    # Line 2527
    subu	$a4,$a4,$a2
    addiu	$a4,$a4,1
.L0daee984:
    # Line 2528
    bltz	$a4,.L0daee998
    # Line 2532
    li	$v0,1
    # Line 2528
    addiu	$at,$a4,-1
    and	$at,$at,$a4
    beqz	$at,.L0daee9b8
.L0daee998:
    # Line 2529
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 2530
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0daee9b8:
    # Line 2532
    jr	$ra
    addiu	$sp,$sp,48
.end IsLegalRange

# Function: __glCheckTexImage1DArgs
# Declared: Line 2535 (Source lines: 2538-2555)
# Address: 0x0daee9c0 - 0x0daeea94 (Size: 212 bytes, Frame: 240)
.globl __glCheckTexImage1DArgs
.ent __glCheckTexImage1DArgs
__glCheckTexImage1DArgs:
    # Line 2538
    addiu	$sp,$sp,-112
    sd	$a5,16($sp)
    sd	$ra,32($sp)
    move	$ra,$a5
    move	$a5,$a6
    move	$a6,$a7
    # Line 2542
    li	$a7,1
    sd	$s0,40($sp)
    # sd	gp,24(sp)
    # Line 2538
    lui	$at,0x11
    addiu	$at,$at,-29016
    # addu	gp,t9,at
    # Line 2542
    # lw $t9, -32708($gp) # &sub_0daf0000
    sd	$a4,8($sp)
    move	$a4,$ra
    addiu	$t9,$t9,-11304
    bal __glIsTextureConsistent
    # Line 2538
    move	$s0,$a0
    # Line 2545
    ld	$ra,32($sp)
    # Line 2542
    beqz	$v0,.L0daeea60
    # Line 2547
    move	$a2,$zero
    # Line 2545
    lw	$a0,740($s0)
    lw	$v1,0($a0)
    li	$a6,0x8010
    beql	$v1,$a6,.L0daeea74
    sd	$v0,0($sp)
    sd	$v0,0($sp)
.L0daeea2c:
    # Line 2547
    # lw $t9, -32708($gp) # &sub_0daf0000
    move	$a0,$s0
    ld	$a1,8($sp)
    addiu	$t9,$t9,-5780
    bal __glInitTexDestPack
    ld	$a3,16($sp)
    # Line 2555
    ld	$s0,40($sp)
    # Line 2547
    beqz	$v0,.L0daeea7c
    nop
    # Line 2555
    ld	$ra,32($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daeea60:
    # Line 2545
    move	$v0,$zero
    # ld	gp,24(sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daeea74:
    # Line 2547
    b	.L0daeea2c
    lw	$a2,48($a0)
.L0daeea7c:
    # Line 2553
    ld	$ra,32($sp)
    move	$v0,$zero
    # ld	gp,24(sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCheckTexImage1DArgs

# Function: __glCheckTexImage2DArgs
# Declared: Line 2558 (Source lines: 2561-2590)
# Address: 0x0daeea94 - 0x0daeebe8 (Size: 340 bytes, Frame: 128)
.globl __glCheckTexImage2DArgs
.ent __glCheckTexImage2DArgs
__glCheckTexImage2DArgs:
    # Line 2561
    addiu	$sp,$sp,-128
    sd	$a5,8($sp)
    move	$a5,$a7
    # Line 2565
    li	$a7,2
    sd	$s1,24($sp)
    # Line 2561
    move	$s1,$a6
    # Line 2565
    lw	$a6,132($sp)
    sd	$s0,48($sp)
    # sd	gp,32(sp)
    sd	$ra,40($sp)
    # Line 2561
    lui	$ra,0x11
    addiu	$ra,$ra,-29228
    # addu	gp,t9,ra
    # Line 2565
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 2561
    move	$s0,$a0
    sd	$a4,16($sp)
    # Line 2565
    addiu	$t9,$t9,-11304
    bal __glIsTextureConsistent
    move	$a4,$s1
    # Line 2568
    ld	$ra,40($sp)
    # Line 2565
    beqz	$v0,.L0daeeba0
    # Line 2570
    li	$at,0x8012
    lw	$a3,740($s0)
    lw	$a2,0($a3)
    li	$a0,0x8011
    beql	$a0,$a2,.L0daeeb90
    sd	$v0,0($sp)
    beql	$a2,$at,.L0daeeb90
    sd	$v0,0($sp)
    sd	$v0,0($sp)
    move	$a2,$zero
.L0daeeb10:
    # lw $t9, -32708($gp) # &sub_0daf0000
    move	$a0,$s0
    ld	$a1,16($sp)
    addiu	$t9,$t9,-5780
    bal __glInitTexDestPack
    move	$a3,$s1
    # Line 2578
    ld	$ra,40($sp)
    # Line 2570
    beqz	$v0,.L0daeebd0
    # Line 2580
    li	$v1,0x8012
    lw	$a3,740($s0)
    lw	$a2,0($a3)
    li	$at,0x8011
    beq	$at,$a2,.L0daeeb98
    nop
    beq	$a2,$v1,.L0daeeb98
    move	$a2,$zero
.L0daeeb50:
    # lw $t9, -32708($gp) # &sub_0daf0000
    move	$a0,$s0
    ld	$a1,8($sp)
    addiu	$t9,$t9,-5780
    bal __glInitTexDestPack
    move	$a3,$s1
    # Line 2590
    ld	$s0,48($sp)
    # Line 2588
    ld	$s1,24($sp)
    # Line 2580
    beqz	$v0,.L0daeebb8
    # Line 2590
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    # ld	gp,32(sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
    sd	$v0,0($sp)
.L0daeeb90:
    # Line 2570
    b	.L0daeeb10
    lw	$a2,48($a3)
.L0daeeb98:
    # Line 2580
    b	.L0daeeb50
    lw	$a2,52($a3)
.L0daeeba0:
    # Line 2568
    move	$v0,$zero
    # ld	gp,32(sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daeebb8:
    # Line 2588
    move	$v0,$zero
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daeebd0:
    # Line 2578
    move	$v0,$zero
    # ld	gp,32(sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glCheckTexImage2DArgs

# Function: __glCheckTexImage3DArgs
# Declared: Line 2593 (Source lines: 2597-2630)
# Address: 0x0daeebe8 - 0x0daeed8c (Size: 420 bytes, Frame: 144)
.globl __glCheckTexImage3DArgs
.ent __glCheckTexImage3DArgs
__glCheckTexImage3DArgs:
    # Line 2597
    addiu	$sp,$sp,-144
    sd	$s1,40($sp)
    move	$s1,$a7
    # Line 2601
    li	$a7,3
    sd	$a6,16($sp)
    lw	$a6,156($sp)
    sd	$a5,8($sp)
    lw	$a5,148($sp)
    sd	$s0,32($sp)
    # sd	gp,48(sp)
    sd	$ra,56($sp)
    # Line 2597
    lui	$ra,0x11
    addiu	$ra,$ra,-29568
    # addu	gp,t9,ra
    # Line 2601
    # lw $t9, -32708($gp) # &sub_0daf0000
    # Line 2597
    move	$s0,$a0
    sd	$a4,24($sp)
    # Line 2601
    addiu	$t9,$t9,-11304
    bal __glIsTextureConsistent
    move	$a4,$s1
    # Line 2604
    ld	$ra,56($sp)
    # Line 2601
    beqz	$v0,.L0daeed20
    # Line 2606
    li	$at,0x8012
    lw	$a3,740($s0)
    lw	$a2,0($a3)
    li	$a0,0x8011
    beql	$a0,$a2,.L0daeed0c
    sd	$s2,64($sp)
    beql	$a2,$at,.L0daeed0c
    sd	$s2,64($sp)
    sd	$s2,64($sp)
    sd	$v0,0($sp)
    move	$a2,$zero
.L0daeec6c:
    move	$a0,$s0
    la	$s2,sub_0daf0000
    ld	$a1,24($sp)
    move	$a3,$s1
    addiu	$s2,$s2,-5780
    bal __glInitTexDestPack
    move	$t9,$s2
    # Line 2614
    ld	$ra,56($sp)
    # Line 2606
    beqz	$v0,.L0daeed70
    # Line 2616
    li	$v1,0x8012
    lw	$a3,740($s0)
    lw	$a2,0($a3)
    li	$at,0x8011
    beq	$at,$a2,.L0daeed18
    nop
    beq	$a2,$v1,.L0daeed18
    move	$a2,$zero
.L0daeecb0:
    move	$a0,$s0
    ld	$a1,8($sp)
    move	$a3,$s1
    bal __glInitTexDestPack
    move	$t9,$s2
    beqz	$v0,.L0daeed38
    # Line 2627
    move	$a0,$s0
    ld	$a1,16($sp)
    move	$a2,$zero
    move	$a3,$s1
    bal __glInitTexDestPack
    move	$t9,$s2
    # Line 2630
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    # Line 2628
    ld	$s0,32($sp)
    # Line 2627
    beqz	$v0,.L0daeed58
    ld	$s2,64($sp)
    # Line 2630
    ld	$s0,32($sp)
    # ld	gp,48(sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
    sd	$s2,64($sp)
.L0daeed0c:
    sd	$v0,0($sp)
    # Line 2606
    b	.L0daeec6c
    lw	$a2,48($a3)
.L0daeed18:
    # Line 2616
    b	.L0daeecb0
    lw	$a2,52($a3)
.L0daeed20:
    # Line 2604
    move	$v0,$zero
    # ld	gp,48(sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeed38:
    # Line 2624
    ld	$ra,56($sp)
    move	$v0,$zero
    # ld	gp,48(sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeed58:
    # Line 2628
    move	$v0,$zero
    ld	$ra,56($sp)
    # ld	gp,48(sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeed70:
    # Line 2614
    move	$v0,$zero
    # ld	gp,48(sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glCheckTexImage3DArgs

# Function: __glCheckCopyTexImageArgs
# Declared: Line 2634 (Source lines: 2640-2690)
# Address: 0x0daeed8c - 0x0daef008 (Size: 636 bytes, Frame: 144)
.globl __glCheckCopyTexImageArgs
.ent __glCheckCopyTexImageArgs
__glCheckCopyTexImageArgs:
    # Line 2644
    li	$a5,6408
    # Line 2640
    addiu	$sp,$sp,-144
    sd	$s4,0($sp)
    sd	$a6,16($sp)
    # Line 2644
    li	$a6,5126
    sd	$s0,24($sp)
    # Line 2640
    move	$s0,$a3
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s2,72($sp)
    move	$s2,$a0
    sd	$a7,8($sp)
    sd	$s3,64($sp)
    # Line 2644
    lw	$s3,156($sp)
    sd	$s5,32($sp)
    # sd	gp,56(sp)
    sd	$ra,48($sp)
    # Line 2640
    lui	$ra,0x11
    addiu	$ra,$ra,-29988
    # addu	gp,t9,ra
    # Line 2644
    # lw $t9, -32708($gp) # &sub_0daf0000
    lw	$s5,148($sp)
    move	$a7,$s3
    addiu	$t9,$t9,-11304
    bal __glIsTextureConsistent
    move	$a4,$s5
    li	$at,0x8063
    beq	$s1,$at,.L0daeefa4
    move	$s4,$v0
    li	$v1,0x8064
    beq	$s1,$v1,.L0daeefa4
    li	$a5,0x8070
    beq	$s1,$a5,.L0daeefa4
    # Line 2653
    li	$v0,1
    beq	$v0,$s0,.L0daeef40
    li	$t0,2
    beq	$s0,$t0,.L0daeef40
    li	$at,3
    beq	$s0,$at,.L0daeef40
    li	$v1,4
    beq	$s0,$v1,.L0daeef40
    # Line 2662
    ld	$ra,48($sp)
    # Line 2660
    beqz	$s4,.L0daeef14
    # Line 2662
    ld	$s1,40($sp)
    beq	$s3,$v0,.L0daeeef8
    # Line 2664
    slti	$a5,$s3,2
.L0daeee44:
    bnez	$a5,.L0daeee68
    move	$a2,$zero
    lw	$a0,740($s2)
    lw	$v0,0($a0)
    li	$t0,0x8011
    beq	$v0,$t0,.L0daeef0c
    li	$at,0x8012
    beq	$v0,$at,.L0daeef0c
    move	$a2,$zero
.L0daeee68:
    move	$a0,$s2
    la	$s0,sub_0daf0000
    ld	$a1,16($sp)
    move	$a3,$s5
    addiu	$s0,$s0,-5780
    bal __glInitTexDestPack
    move	$t9,$s0
    # Line 2679
    li	$a5,0x8012
    # Line 2664
    beqz	$v0,.L0daeefdc
    # Line 2679
    li	$v1,0x8011
    # Line 2676
    slti	$at,$s3,2
    bnezl	$at,.L0daeeed0
    nop
    # Line 2679
    lw	$a0,740($s2)
    lw	$v0,0($a0)
    beq	$v0,$v1,.L0daeef38
    nop
    beq	$v0,$a5,.L0daeef38
    move	$a2,$zero
.L0daeeeb4:
    move	$a0,$s2
    ld	$a1,8($sp)
    move	$a3,$s5
    bal __glInitTexDestPack
    move	$t9,$s0
    beqz	$v0,.L0daeef78
    nop
.L0daeeed0:
    # Line 2690
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    move	$v0,$s4
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeeef8:
    # Line 2664
    lw	$a0,740($s2)
    lw	$t0,0($a0)
    li	$at,0x8010
    bne	$t0,$at,.L0daeee44
    slti	$a5,$s3,2
.L0daeef0c:
    b	.L0daeee68
    lw	$a2,48($a0)
.L0daeef14:
    # Line 2662
    move	$v0,$zero
    ld	$s0,24($sp)
    # ld	gp,56(sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeef38:
    # Line 2679
    b	.L0daeeeb4
    lw	$a2,52($a0)
.L0daeef40:
    # Line 2656
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 2657
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeef78:
    # Line 2688
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeefa4:
    # Line 2651
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 2652
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daeefdc:
    # Line 2676
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glCheckCopyTexImageArgs

# Function: __glim_TexImage1D
# Declared: Line 2695 (Source lines: 2699-2747)
# Address: 0x0daef008 - 0x0daef268 (Size: 608 bytes, Frame: 176)
.globl __glim_TexImage1D
.ent __glim_TexImage1D
__glim_TexImage1D:
    # Line 2699
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-688
    sd	$ra,608($sp)
    sd	$s0,600($sp)
    # Line 2709
    lw	$s0,__glCurrentContext
    sd	$a7,584($sp)
    sd	$a6,576($sp)
    sd	$a5,568($sp)
    sd	$a4,552($sp)
    sd	$a3,544($sp)
    sd	$a2,560($sp)
    sd	$a1,536($sp)
    # sd	gp,592(sp)
    lw	$t2,__glBeginMode
    # Line 2699
    lui	$at,0x11
    addiu	$at,$at,-30624
    # Line 2709
    beqz	$t2,.L0daef0b4
    # Line 2699
    nop
    sd	$ra,608($sp)
    sd	$v0,536($sp)
    sd	$a3,544($sp)
    sd	$a4,552($sp)
    sd	$a2,560($sp)
    sd	$a5,568($sp)
    sd	$a6,576($sp)
    sd	$t3,616($sp)
    # Line 2709
    li	$v1,2
    beq	$t2,$v1,.L0daef0a0
    sd	$a7,584($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef0a0:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,616($sp)
.L0daef0b4:
    # Line 2712
    move	$a0,$s0
    move	$a1,$t3
    ld	$a2,536($sp)
    ld	$a3,560($sp)
    ld	$a4,544($sp)
    # lw $t9, -26824($gp) # &__glCheckTexImage1DArgs
    ld	$a5,552($sp)
    ld	$a6,568($sp)
    bal __glCheckTexImage1DArgs
    ld	$a7,576($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0daef0f8
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    # Line 2715
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef0f8:
    # Line 2717
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3552
    lw	$t0,0($v0)
    # Line 2720
    li	$at,0x8010
    # Line 2717
    slti	$t0,$t0,3
    beqz	$t0,.L0daef248
    move	$a0,$v0
    # Line 2720
    lw	$t2,740($s0)
    lw	$t3,48($t2)
    beqz	$t3,.L0daef138
    ld	$a4,544($sp)
    lw	$t1,0($t2)
    beq	$t1,$at,.L0daef23c
    # Line 2726
    subu	$a4,$a4,$t3
.L0daef138:
    ld	$a4,544($sp)
    sd	$a0,520($sp)
.L0daef140:
    # Line 2730
    ld	$a3,560($sp)
    ld	$a5,552($sp)
    ld	$a2,536($sp)
    move	$a0,$s0
    move	$a7,$a5
    ld	$t9,528($sp)
    li	$ra,1
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    addu	$a5,$a5,$a5
    addiu	$a5,$a5,1
    jal	__glLookUpTextureObject
    move	$a6,$a5
    ld	$at,584($sp)
    beqz	$at,.L0daef188
    ld	$ra,608($sp)
    bnez	$v0,.L0daef1b8
.L0daef188:
    # Line 2743
    ld	$t1,520($sp)
    # Line 2746
    li	$v1,2
    # Line 2743
    li	$t0,1
    sb	$t0,12($t1)
    # Line 2746
    sw	$v1,__glBeginMode
    lw	$v0,11764($s0)
    # ld	gp,592(sp)
    ori	$v0,$v0,0x1
    sw	$v0,11764($s0)
    # Line 2747
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef1b8:
    # Line 2734
    move	$a0,$s0
    sw	$zero,4($sp)
    ld	$a7,584($sp)
    ld	$a6,576($sp)
    ld	$a5,568($sp)
    li	$a4,1
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    li	$a3,1
    ld	$a2,544($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 2736
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2737
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2738
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2739
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daef188
    ld	$ra,608($sp)
.L0daef23c:
    sd	$a0,520($sp)
    # Line 2726
    b	.L0daef140
    addiu	$a4,$a4,1
.L0daef248:
    # Line 2719
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2720
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glim_TexImage1D

# Function: __gllei_TexImage1D
# Declared: Line 2749 (Source lines: 2752-2812)
# Address: 0x0daef268 - 0x0daef4b8 (Size: 592 bytes, Frame: 176)
.globl __gllei_TexImage1D
.ent __gllei_TexImage1D
__gllei_TexImage1D:
    # Line 2752
    move	$v0,$a2
    addiu	$sp,$sp,-688
    sd	$ra,600($sp)
    sd	$a7,576($sp)
    sd	$a6,568($sp)
    sd	$a5,552($sp)
    sd	$a4,544($sp)
    sd	$a3,560($sp)
    sd	$a2,536($sp)
    sd	$s0,592($sp)
    move	$s0,$a0
    # sd	gp,584(sp)
    # Line 2764
    lw	$t2,__glBeginMode
    # Line 2752
    lui	$at,0x11
    addiu	$at,$at,-31232
    # Line 2764
    beqz	$t2,.L0daef308
    # Line 2752
    nop
    sd	$ra,600($sp)
    sd	$v0,536($sp)
    sd	$a4,544($sp)
    sd	$a5,552($sp)
    sd	$a3,560($sp)
    sd	$a6,568($sp)
    sd	$a7,576($sp)
    # Line 2764
    li	$v1,2
    beq	$t2,$v1,.L0daef2f4
    sd	$a1,608($sp)
    # Line 2770
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2771
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef2f4:
    # Line 2767
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2768
    sw	$zero,__glBeginMode
    ld	$a1,608($sp)
.L0daef308:
    # Line 2776
    move	$a0,$s0
    ld	$a2,536($sp)
    ld	$a3,560($sp)
    ld	$a4,544($sp)
    # lw $t9, -26824($gp) # &__glCheckTexImage1DArgs
    ld	$a5,552($sp)
    ld	$a6,568($sp)
    bal __glCheckTexImage1DArgs
    ld	$a7,576($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0daef348
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    # Line 2779
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef348:
    # Line 2782
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3552
    lw	$t0,0($v0)
    # Line 2785
    li	$at,0x8010
    # Line 2782
    slti	$t0,$t0,3
    beqz	$t0,.L0daef498
    move	$a0,$v0
    # Line 2785
    lw	$t2,740($s0)
    lw	$t3,48($t2)
    beqz	$t3,.L0daef388
    ld	$a4,544($sp)
    lw	$t1,0($t2)
    beq	$t1,$at,.L0daef48c
    # Line 2791
    subu	$a4,$a4,$t3
.L0daef388:
    ld	$a4,544($sp)
    sd	$a0,520($sp)
.L0daef390:
    # Line 2794
    ld	$a3,560($sp)
    ld	$a5,552($sp)
    ld	$a2,536($sp)
    move	$a0,$s0
    move	$a7,$a5
    ld	$t9,528($sp)
    li	$ra,1
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    addu	$a5,$a5,$a5
    addiu	$a5,$a5,1
    jal	__glLookUpTextureObject
    move	$a6,$a5
    lw	$a7,692($sp)
    beqz	$a7,.L0daef3d8
    ld	$ra,600($sp)
    bnez	$v0,.L0daef408
.L0daef3d8:
    # Line 2808
    ld	$t0,520($sp)
    # Line 2811
    li	$v0,2
    # Line 2808
    li	$v1,1
    sb	$v1,12($t0)
    # Line 2811
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # ld	gp,584(sp)
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 2812
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef408:
    # Line 2799
    move	$a0,$s0
    ld	$a6,576($sp)
    ld	$a5,568($sp)
    li	$a4,1
    li	$a3,1
    ld	$a2,544($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    li	$t1,1
    bal __glInitTexSourceUnpack
    sw	$t1,4($sp)
    # Line 2801
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2802
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2803
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2804
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daef3d8
    ld	$ra,600($sp)
.L0daef48c:
    sd	$a0,520($sp)
    # Line 2791
    b	.L0daef390
    addiu	$a4,$a4,1
.L0daef498:
    # Line 2784
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2785
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __gllei_TexImage1D

# Function: __glim_TexImage2D
# Declared: Line 2816 (Source lines: 2819-2871)
# Address: 0x0daef4b8 - 0x0daef73c (Size: 644 bytes, Frame: 176)
.globl __glim_TexImage2D
.ent __glim_TexImage2D
__glim_TexImage2D:
    # Line 2819
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-688
    sd	$ra,608($sp)
    sd	$s0,600($sp)
    # Line 2829
    lw	$s0,__glCurrentContext
    sd	$a7,584($sp)
    sd	$a6,576($sp)
    sd	$a5,568($sp)
    sd	$a4,544($sp)
    sd	$a3,552($sp)
    sd	$a2,560($sp)
    sd	$a1,536($sp)
    # sd	gp,592(sp)
    lw	$t2,__glBeginMode
    # Line 2819
    lui	$at,0x11
    addiu	$at,$at,-31824
    # Line 2829
    beqz	$t2,.L0daef564
    # Line 2819
    nop
    sd	$ra,608($sp)
    sd	$v0,536($sp)
    sd	$a4,544($sp)
    sd	$a3,552($sp)
    sd	$a2,560($sp)
    sd	$a5,568($sp)
    sd	$a6,576($sp)
    sd	$a7,584($sp)
    # Line 2829
    li	$v1,2
    beq	$t2,$v1,.L0daef550
    sd	$t3,616($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef550:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,616($sp)
.L0daef564:
    # Line 2832
    move	$a0,$s0
    move	$a1,$t3
    ld	$a2,536($sp)
    ld	$a3,560($sp)
    ld	$a4,552($sp)
    ld	$a5,544($sp)
    ld	$a6,568($sp)
    # lw $t9, -26820($gp) # &__glCheckTexImage2DArgs
    ld	$t0,584($sp)
    ld	$a7,576($sp)
    bal __glCheckTexImage2DArgs
    sw	$t0,4($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0daef5b0
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    # Line 2835
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef5b0:
    # Line 2837
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3553
    lw	$t1,0($v0)
    ld	$a4,552($sp)
    # Line 2851
    ld	$a5,544($sp)
    # Line 2837
    slti	$t1,$t1,3
    beqz	$t1,.L0daef71c
    move	$a0,$v0
    # Line 2840
    lw	$t2,740($s0)
    lw	$t8,48($t2)
    beqzl	$t8,.L0daef604
    sd	$a0,520($sp)
    # Line 2844
    lw	$t3,0($t2)
    li	$at,0x8011
    beq	$t3,$at,.L0daef678
    li	$v1,0x8012
    beql	$t3,$v1,.L0daef67c
    # Line 2848
    lw	$t0,52($t2)
    sd	$a0,520($sp)
.L0daef604:
    # Line 2853
    move	$a0,$s0
    ld	$a2,536($sp)
    ld	$a3,560($sp)
    ld	$a6,568($sp)
    ld	$t9,528($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    jal	__glLookUpTextureObject
    addiu	$a6,$a6,1
    lw	$a7,692($sp)
    beqz	$a7,.L0daef648
    ld	$ra,608($sp)
    bnez	$v0,.L0daef69c
.L0daef648:
    # Line 2867
    ld	$t0,520($sp)
    # Line 2870
    li	$v0,2
    # Line 2867
    li	$v1,1
    sb	$v1,12($t0)
    # Line 2870
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # ld	gp,592(sp)
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 2871
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef678:
    # Line 2848
    lw	$t0,52($t2)
.L0daef67c:
    ld	$a5,544($sp)
    # Line 2847
    ld	$a4,552($sp)
    sd	$a0,520($sp)
    # Line 2848
    subu	$a5,$a5,$t0
    # Line 2847
    subu	$a4,$a4,$t8
    addiu	$a4,$a4,1
    # Line 2848
    b	.L0daef604
    addiu	$a5,$a5,1
.L0daef69c:
    # Line 2858
    move	$a0,$s0
    sw	$zero,4($sp)
    ld	$a6,584($sp)
    ld	$a5,576($sp)
    li	$a4,1
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    ld	$a3,544($sp)
    ld	$a2,552($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 2860
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2861
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2862
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2863
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daef648
    ld	$ra,608($sp)
.L0daef71c:
    # Line 2839
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2840
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glim_TexImage2D

# Function: __gllei_TexImage2D
# Declared: Line 2873 (Source lines: 2877-2940)
# Address: 0x0daef73c - 0x0daef9b8 (Size: 636 bytes, Frame: 176)
.globl __gllei_TexImage2D
.ent __gllei_TexImage2D
__gllei_TexImage2D:
    # Line 2877
    move	$v0,$a2
    addiu	$sp,$sp,-688
    sd	$ra,608($sp)
    sd	$a7,584($sp)
    sd	$a6,576($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a2,544($sp)
    sd	$s0,600($sp)
    move	$s0,$a0
    # sd	gp,592(sp)
    # Line 2889
    lw	$t2,__glBeginMode
    # Line 2877
    lui	$at,0x11
    addiu	$at,$at,-32468
    # Line 2889
    beqz	$t2,.L0daef7dc
    # Line 2877
    nop
    sd	$ra,608($sp)
    sd	$v0,544($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a6,576($sp)
    sd	$a7,584($sp)
    # Line 2889
    li	$v1,2
    beq	$t2,$v1,.L0daef7c8
    sd	$a1,616($sp)
    # Line 2895
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2896
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef7c8:
    # Line 2892
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2893
    sw	$zero,__glBeginMode
    ld	$a1,616($sp)
.L0daef7dc:
    ld	$a7,584($sp)
    # Line 2901
    ld	$a6,576($sp)
    ld	$a5,552($sp)
    ld	$a4,560($sp)
    ld	$a3,568($sp)
    ld	$a2,544($sp)
    lw	$t0,692($sp)
    # lw $t9, -26820($gp) # &__glCheckTexImage2DArgs
    move	$a0,$s0
    sd	$t0,528($sp)
    bal __glCheckTexImage2DArgs
    sw	$t0,4($sp)
    sd	$v0,536($sp)
    bnez	$v0,.L0daef828
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    # Line 2904
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef828:
    # Line 2906
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3553
    lw	$t1,0($v0)
    ld	$a4,560($sp)
    # Line 2920
    ld	$a5,552($sp)
    # Line 2906
    slti	$t1,$t1,3
    beqz	$t1,.L0daef998
    move	$a0,$v0
    # Line 2909
    lw	$t2,740($s0)
    lw	$t8,48($t2)
    beqzl	$t8,.L0daef87c
    sd	$a0,520($sp)
    # Line 2913
    lw	$t3,0($t2)
    li	$at,0x8011
    beq	$t3,$at,.L0daef8f0
    li	$v1,0x8012
    beql	$t3,$v1,.L0daef8f4
    # Line 2917
    lw	$t0,52($t2)
    sd	$a0,520($sp)
.L0daef87c:
    # Line 2922
    move	$a0,$s0
    ld	$a2,544($sp)
    ld	$a3,568($sp)
    ld	$a6,576($sp)
    ld	$t9,536($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    jal	__glLookUpTextureObject
    addiu	$a6,$a6,1
    lw	$a7,700($sp)
    beqz	$a7,.L0daef8c0
    ld	$ra,608($sp)
    bnez	$v0,.L0daef914
.L0daef8c0:
    # Line 2936
    ld	$t0,520($sp)
    # Line 2939
    li	$v0,2
    # Line 2936
    li	$v1,1
    sb	$v1,12($t0)
    # Line 2939
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # ld	gp,592(sp)
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 2940
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daef8f0:
    # Line 2917
    lw	$t0,52($t2)
.L0daef8f4:
    ld	$a5,552($sp)
    # Line 2916
    ld	$a4,560($sp)
    sd	$a0,520($sp)
    # Line 2917
    subu	$a5,$a5,$t0
    # Line 2916
    subu	$a4,$a4,$t8
    addiu	$a4,$a4,1
    # Line 2917
    b	.L0daef87c
    addiu	$a5,$a5,1
.L0daef914:
    # Line 2927
    move	$a0,$s0
    ld	$a6,528($sp)
    ld	$a5,584($sp)
    li	$a4,1
    ld	$a3,552($sp)
    ld	$a2,560($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    li	$t0,1
    bal __glInitTexSourceUnpack
    sw	$t0,4($sp)
    # Line 2929
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,544($sp)
    ld	$a2,536($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2930
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2931
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2932
    ld	$a2,536($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,544($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daef8c0
    ld	$ra,608($sp)
.L0daef998:
    # Line 2908
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2909
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __gllei_TexImage2D

# Function: __glim_TexImage3DEXT
# Declared: Line 2944 (Source lines: 2947-2999)
# Address: 0x0daef9b8 - 0x0daefc40 (Size: 648 bytes, Frame: 192)
.globl __glim_TexImage3DEXT
.ent __glim_TexImage3DEXT
__glim_TexImage3DEXT:
    # Line 2947
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-704
    sd	$ra,616($sp)
    sd	$s0,608($sp)
    # Line 2958
    lw	$s0,__glCurrentContext
    sd	$a7,592($sp)
    sd	$a6,584($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a2,576($sp)
    sd	$a1,544($sp)
    # sd	gp,600(sp)
    lw	$t2,__glBeginMode
    # Line 2947
    lui	$at,0x10
    addiu	$at,$at,32432
    # Line 2958
    beqz	$t2,.L0daefa64
    # Line 2947
    nop
    sd	$ra,616($sp)
    sd	$v0,544($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a2,576($sp)
    sd	$a6,584($sp)
    sd	$a7,592($sp)
    # Line 2958
    li	$v1,2
    beq	$t2,$v1,.L0daefa50
    sd	$t3,624($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefa50:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,624($sp)
.L0daefa64:
    # Line 2961
    ld	$a7,584($sp)
    ld	$a6,552($sp)
    ld	$a5,560($sp)
    ld	$a4,568($sp)
    ld	$a3,576($sp)
    ld	$a2,544($sp)
    move	$a1,$t3
    move	$a0,$s0
    lw	$t0,708($sp)
    ld	$t1,592($sp)
    # lw $t9, -26816($gp) # &__glCheckTexImage3DArgs
    sd	$t0,528($sp)
    sw	$t1,4($sp)
    bal __glCheckTexImage3DArgs
    sw	$t0,12($sp)
    sd	$v0,536($sp)
    bnez	$v0,.L0daefabc
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    # Line 2964
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefabc:
    # Line 2966
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,0x806f
    lw	$at,0($v0)
    ld	$a4,568($sp)
    # Line 2980
    ld	$a5,560($sp)
    # Line 2966
    slti	$at,$at,3
    beqz	$at,.L0daefc20
    move	$a0,$v0
    # Line 2969
    lw	$t2,740($s0)
    lw	$t8,48($t2)
    beqzl	$t8,.L0daefb10
    sd	$a0,520($sp)
    # Line 2973
    lw	$t3,0($t2)
    li	$v1,0x8011
    beq	$t3,$v1,.L0daefb7c
    li	$t0,0x8012
    beql	$t3,$t0,.L0daefb80
    # Line 2977
    lw	$t0,52($t2)
    sd	$a0,520($sp)
.L0daefb10:
    # Line 2982
    move	$a0,$s0
    ld	$a2,544($sp)
    ld	$t9,536($sp)
    li	$ra,3
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    ld	$a3,576($sp)
    ld	$a6,552($sp)
    jal	__glLookUpTextureObject
    ld	$a7,584($sp)
    lw	$a7,716($sp)
    beqz	$a7,.L0daefb4c
    ld	$ra,616($sp)
    bnez	$v0,.L0daefba0
.L0daefb4c:
    # Line 2995
    ld	$t0,520($sp)
    # Line 2998
    li	$v0,2
    # Line 2995
    li	$v1,1
    sb	$v1,12($t0)
    # Line 2998
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # ld	gp,600(sp)
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 2999
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefb7c:
    # Line 2977
    lw	$t0,52($t2)
.L0daefb80:
    ld	$a5,560($sp)
    # Line 2976
    ld	$a4,568($sp)
    sd	$a0,520($sp)
    # Line 2977
    subu	$a5,$a5,$t0
    # Line 2976
    subu	$a4,$a4,$t8
    addiu	$a4,$a4,1
    # Line 2977
    b	.L0daefb10
    addiu	$a5,$a5,1
.L0daefba0:
    # Line 2987
    move	$a0,$s0
    sw	$zero,4($sp)
    ld	$a6,528($sp)
    ld	$a5,592($sp)
    ld	$a4,552($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    ld	$a3,560($sp)
    ld	$a2,568($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 2989
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,544($sp)
    ld	$a2,536($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2990
    # lw $t9, -30244($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,16
    # Line 2991
    # lw $t9, -30744($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,16
    # Line 2992
    ld	$a2,536($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,544($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daefb4c
    ld	$ra,616($sp)
.L0daefc20:
    # Line 2968
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 2969
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.end __glim_TexImage3DEXT

# Function: __gllei_TexImage3DEXT
# Declared: Line 3001 (Source lines: 3006-3069)
# Address: 0x0daefc40 - 0x0daefec0 (Size: 640 bytes, Frame: 192)
.globl __gllei_TexImage3DEXT
.ent __gllei_TexImage3DEXT
__gllei_TexImage3DEXT:
    # Line 3006
    move	$v0,$a2
    addiu	$sp,$sp,-704
    sd	$ra,616($sp)
    sd	$a7,592($sp)
    sd	$a6,560($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    sd	$a3,584($sp)
    sd	$a2,552($sp)
    sd	$s0,608($sp)
    move	$s0,$a0
    # sd	gp,600(sp)
    # Line 3018
    lw	$t2,__glBeginMode
    # Line 3006
    lui	$at,0x10
    addiu	$at,$at,31784
    # Line 3018
    beqz	$t2,.L0daefce0
    # Line 3006
    nop
    sd	$ra,616($sp)
    sd	$v0,552($sp)
    sd	$a6,560($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    sd	$a3,584($sp)
    sd	$a7,592($sp)
    # Line 3018
    li	$v1,2
    beq	$t2,$v1,.L0daefccc
    sd	$a1,624($sp)
    # Line 3024
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 3025
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefccc:
    # Line 3021
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 3022
    sw	$zero,__glBeginMode
    ld	$a1,624($sp)
.L0daefce0:
    ld	$a7,592($sp)
    # Line 3030
    ld	$a6,560($sp)
    ld	$a5,568($sp)
    ld	$a4,576($sp)
    ld	$a3,584($sp)
    ld	$a2,552($sp)
    move	$a0,$s0
    lw	$t1,716($sp)
    lw	$t0,708($sp)
    # lw $t9, -26816($gp) # &__glCheckTexImage3DArgs
    sd	$t1,528($sp)
    sd	$t0,536($sp)
    sw	$t1,12($sp)
    bal __glCheckTexImage3DArgs
    sw	$t0,4($sp)
    sd	$v0,544($sp)
    bnez	$v0,.L0daefd38
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    # Line 3033
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefd38:
    # Line 3035
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,0x806f
    lw	$at,0($v0)
    ld	$a4,576($sp)
    # Line 3049
    ld	$a5,568($sp)
    # Line 3035
    slti	$at,$at,3
    beqz	$at,.L0daefea0
    move	$a0,$v0
    # Line 3038
    lw	$t2,740($s0)
    lw	$t8,48($t2)
    beqzl	$t8,.L0daefd8c
    sd	$a0,520($sp)
    # Line 3042
    lw	$t3,0($t2)
    li	$v1,0x8011
    beq	$t3,$v1,.L0daefdf8
    li	$t0,0x8012
    beql	$t3,$t0,.L0daefdfc
    # Line 3046
    lw	$t0,52($t2)
    sd	$a0,520($sp)
.L0daefd8c:
    # Line 3051
    move	$a0,$s0
    ld	$a2,552($sp)
    ld	$t9,544($sp)
    li	$ra,3
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    ld	$a3,584($sp)
    ld	$a6,560($sp)
    jal	__glLookUpTextureObject
    ld	$a7,592($sp)
    lw	$a7,724($sp)
    beqz	$a7,.L0daefdc8
    ld	$ra,616($sp)
    bnez	$v0,.L0daefe1c
.L0daefdc8:
    # Line 3065
    ld	$t0,520($sp)
    # Line 3068
    li	$v0,2
    # Line 3065
    li	$v1,1
    sb	$v1,12($t0)
    # Line 3068
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # ld	gp,600(sp)
    ori	$at,$at,0x1
    sw	$at,11764($s0)
    # Line 3069
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daefdf8:
    # Line 3046
    lw	$t0,52($t2)
.L0daefdfc:
    ld	$a5,568($sp)
    # Line 3045
    ld	$a4,576($sp)
    sd	$a0,520($sp)
    # Line 3046
    subu	$a5,$a5,$t0
    # Line 3045
    subu	$a4,$a4,$t8
    addiu	$a4,$a4,1
    # Line 3046
    b	.L0daefd8c
    addiu	$a5,$a5,1
.L0daefe1c:
    # Line 3056
    move	$a0,$s0
    ld	$a6,528($sp)
    ld	$a5,536($sp)
    ld	$a4,560($sp)
    ld	$a3,568($sp)
    ld	$a2,576($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    li	$t0,1
    bal __glInitTexSourceUnpack
    sw	$t0,4($sp)
    # Line 3058
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,552($sp)
    ld	$a2,544($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 3059
    # lw $t9, -30244($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,16
    # Line 3060
    # lw $t9, -30744($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,16
    # Line 3061
    ld	$a2,544($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,552($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0daefdc8
    ld	$ra,616($sp)
.L0daefea0:
    # Line 3037
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 3038
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.end __gllei_TexImage3DEXT

# Function: __glLoadDefaultFilterFuncSGIS
# Declared: Line 3079 (Source lines: 3084-3117)
# Address: 0x0daefec0 - 0x0daeffc8 (Size: 264 bytes, Frame: 0)
.ent __glLoadDefaultFilterFuncSGIS
__glLoadDefaultFilterFuncSGIS:
    # Line 3115
    lwc1	$f1,_lit_bafffbce
    # Line 3113
    lwc1	$f4,_lit_bc600086
    # Line 3112
    lwc1	$f3,_lit_bcb80022
    # Line 3115
    swc1	$f1,124($a0)
    # Line 3105
    lwc1	$f1,_lit_bd400000
    # Line 3112
    swc1	$f3,112($a0)
    # Line 3107
    lwc1	$f3,_lit_bd600086
    # Line 3113
    swc1	$f4,116($a0)
    # Line 3108
    lwc1	$f4,_lit_bd540032
    # Line 3107
    swc1	$f3,92($a0)
    # Line 3102
    lwc1	$f3,_lit_3bfffbce
    # Line 3108
    swc1	$f4,96($a0)
    # Line 3103
    lwc1	$f4,_lit_bc8fffbd
    # Line 3109
    swc1	$f1,100($a0)
    # Line 3105
    swc1	$f1,84($a0)
    # Line 3100
    lwc1	$f1,_lit_3daa0019
    # Line 3103
    swc1	$f4,76($a0)
    # Line 3098
    lwc1	$f4,_lit_3e400000
    # Line 3100
    swc1	$f1,64($a0)
    # Line 3095
    lwc1	$f1,_lit_3ebc7ffe
    # Line 3102
    swc1	$f3,72($a0)
    # Line 3097
    lwc1	$f3,_lit_3e7afff3
    # Line 3095
    swc1	$f1,44($a0)
    # Line 3090
    lwc1	$f1,_lit_3f297ffa
    # Line 3097
    swc1	$f3,52($a0)
    # Line 3092
    lwc1	$f3,_lit_3f0d4003
    # Line 3098
    swc1	$f4,56($a0)
    # Line 3093
    lwc1	$f4,_lit_3efc0011
    # Line 3092
    swc1	$f3,32($a0)
    # Line 3087
    lwc1	$f3,_lit_3f48fffc
    # Line 3093
    swc1	$f4,36($a0)
    # Line 3088
    lwc1	$f4,_lit_3f404007
    # Line 3090
    swc1	$f1,24($a0)
    # Line 3085
    lwc1	$f1,_lit_3f540000
    # Line 3088
    swc1	$f4,16($a0)
    # Line 3087
    swc1	$f3,12($a0)
    # Line 3116
    mtc1	$zero,$f2
    # Line 3085
    swc1	$f1,4($a0)
    # Line 3114
    lwc1	$f0,_lit_bbe00086
    # Line 3116
    swc1	$f2,128($a0)
    # Line 3111
    lwc1	$f2,_lit_bd000000
    # Line 3114
    swc1	$f0,120($a0)
    # Line 3110
    lwc1	$f0,_lit_bd1fff7a
    # Line 3111
    swc1	$f2,108($a0)
    # Line 3106
    lwc1	$f2,_lit_bd57ff9b
    # Line 3110
    swc1	$f0,104($a0)
    # Line 3104
    lwc1	$f0,_lit_bd0fffbd
    # Line 3106
    swc1	$f2,88($a0)
    # Line 3101
    lwc1	$f2,_lit_3d280065
    # Line 3104
    swc1	$f0,80($a0)
    # Line 3099
    lwc1	$f0,_lit_3e07ffde
    # Line 3101
    swc1	$f2,68($a0)
    # Line 3096
    lwc1	$f2,_lit_3e9c7ffe
    # Line 3099
    swc1	$f0,60($a0)
    # Line 3094
    lwc1	$f0,_lit_3edc7ffe
    # Line 3096
    swc1	$f2,48($a0)
    # Line 3091
    lwc1	$f2,_lit_3f1c0000
    # Line 3094
    swc1	$f0,40($a0)
    # Line 3089
    lwc1	$f0,_lit_3f35c001
    # Line 3091
    swc1	$f2,28($a0)
    # Line 3086
    lwc1	$f2,_lit_3f4fbff9
    # Line 3089
    swc1	$f0,20($a0)
    # Line 3084
    lwc1	$f0,_lit_3f554003
    # Line 3086
    swc1	$f2,8($a0)
    # Line 3117
    jr	$ra
    # Line 3084
    swc1	$f0,0($a0)
.end __glLoadDefaultFilterFuncSGIS

# Function: __glim_TexFilterFuncSGIS
# Declared: Line 3124 (Source lines: 3125-3169)
# Address: 0x0daeffc8 - 0x0daf0234 (Size: 620 bytes, Frame: 144)
.globl __glim_TexFilterFuncSGIS
.ent __glim_TexFilterFuncSGIS
__glim_TexFilterFuncSGIS:
    # Line 3125
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    sd	$s0,88($sp)
    move	$s0,$a3
    sd	$s1,80($sp)
    move	$s1,$a2
    sd	$a1,72($sp)
    # sd	gp,96(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x10
    addiu	$v1,$v1,30880
    beq	$at,$v0,.L0daf01bc
    nop
    # Line 3133
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a1,$a6
    bal __glLookUpTextureParams
    lw	$a0,__glCurrentContext
    # Line 3145
    move	$a1,$zero
    # Line 3133
    beqz	$v0,.L0daf01e0
    li	$a0,1
    # Line 3136
    ld	$a4,72($sp)
    li	$a5,0x8146
    beq	$a4,$a5,.L0daf0054
    # Line 3145
    li	$at,2
    # Line 3142
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # ld	gp,96(sp)
    # Line 3143
    ld	$ra,64($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daf0054:
    # Line 3145
    beq	$s1,$at,.L0daf0204
    # Line 3146
    addiu	$a3,$s1,-1
    # Line 3147
    addiu	$a1,$a1,1
.L0daf0060:
    sllv	$a2,$a0,$a1
    slti	$v1,$a2,1025
    beqz	$v1,.L0daf007c
    slti	$a4,$a2,1025
    bne	$a2,$a3,.L0daf0060
    addiu	$a1,$a1,1
.L0daf0078:
    slti	$a4,$a2,1025
.L0daf007c:
    beqz	$a4,.L0daf0210
    # Line 3157
    addiu	$a5,$s1,-1
    sdc1	$f26,0($sp)
    sdc1	$f24,8($sp)
    sdc1	$f28,16($sp)
    sdc1	$f22,32($sp)
    ldc1	$f22,_lit8_3ff0000000000000
    sd	$s5,56($sp)
    sdc1	$f30,40($sp)
    mtc1	$a5,$f30
    addiu	$s5,$v0,132
    sd	$s2,48($sp)
    cvt.s.w	$f30,$f30
    move	$s2,$v0
    sdc1	$f20,24($sp)
    lwc1	$f1,_lit_3d000000
    mtc1	$zero,$f20
    b	.L0daf00fc
    mul.s	$f30,$f30,$f1
.L0daf00c8:
    # Line 3165
    # lw $t9, -22928($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    trunc.w.s	$f1,$f0
    mfc1	$at,$f1
    nop
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    lwc1	$f0,0($at)
    swc1	$f0,20($s2)
.L0daf00f0:
    # Line 3158
    addiu	$s2,$s2,4
    beq	$s2,$s5,.L0daf0184
    # Line 3167
    add.s	$f20,$f30,$f20
.L0daf00fc:
    # Line 3159
    # lw $t9, -22928($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    sub.s	$f24,$f20,$f0
    ldc1	$f1,_lit8_3f50624dd2f1a9fc
    # Line 3160
    cvt.d.s	$f26,$f24
    c.lt.d	$f1,$f26
    sub.d	$f26,$f22,$f26
    bc1f	.L0daf00c8
    cvt.s.d	$f26,$f26
    # Line 3162
    # lw $t9, -22928($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    cvt.d.s	$f12,$f20
    # lw $t9, -22928($gp) # &truncf
    add.d	$f12,$f12,$f22
    mov.s	$f28,$f0
    jal	truncf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f2,$f28
    trunc.w.s	$f1,$f0
    mfc1	$a4,$f2
    mfc1	$v1,$f1
    sll	$a4,$a4,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    lwc1	$f1,0($v1)
    addu	$a4,$a4,$s0
    lwc1	$f0,0($a4)
    mul.s	$f1,$f1,$f24
    mul.s	$f0,$f0,$f26
    add.s	$f0,$f0,$f1
    b	.L0daf00f0
    swc1	$f0,20($s2)
.L0daf0184:
    # ld	gp,96(sp)
    # Line 3169
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,48($sp)
    ld	$s5,56($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,0($sp)
    ld	$ra,64($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daf01bc:
    # Line 3132
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # ld	gp,96(sp)
    ld	$ra,64($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daf01e0:
    # Line 3135
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # ld	gp,96(sp)
    # Line 3136
    ld	$ra,64($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daf0204:
    # Line 3147
    li	$a2,1
    b	.L0daf0078
    nop
.L0daf0210:
    # Line 3150
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # ld	gp,96(sp)
    # Line 3151
    ld	$ra,64($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_TexFilterFuncSGIS

# Function: __glNearestFilter1
# Declared: Line 3176 (Source lines: 3179-3196)
# Address: 0x0daf0234 - 0x0daf0308 (Size: 212 bytes, Frame: 224)
.globl __glNearestFilter1
.ent __glNearestFilter1
__glNearestFilter1:
    # Line 3184
    li	$v0,10497
    # Line 3179
    addiu	$sp,$sp,-96
    sd	$s0,8($sp)
    move	$s0,$a1
    sdc1	$f30,0($sp)
    # Line 3184
    lwc1	$f30,32($a1)
    sd	$s8,16($sp)
    # Line 3179
    move	$s8,$a0
    # sd	gp,24(sp)
    # Line 3184
    lw	$at,4($a0)
    # Line 3179
    lui	$v1,0x10
    addiu	$v1,$v1,30260
    # Line 3184
    beq	$at,$v0,.L0daf02dc
    # Line 3179
    nop
    # Line 3189
    mul.s	$f0,$f14,$f30
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 3188
    lw	$a0,20($s0)
    ldc1	$f30,0($sp)
    # Line 3189
    bltz	$a1,.L0daf02cc
    move	$a4,$a1
    # Line 3190
    slt	$a2,$a1,$a0
    bnez	$a2,.L0daf029c
    sd	$ra,32($sp)
    sd	$ra,32($sp)
    # Line 3191
    addiu	$a4,$a0,-1
.L0daf029c:
    # Line 3195
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s8
    move	$a2,$zero
    jalr	$t9
    move	$a3,$zero
    # ld	gp,24(sp)
    # Line 3196
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf02cc:
    sd	$ra,32($sp)
    # Line 3190
    move	$a4,$zero
    b	.L0daf029c
    ldc1	$f30,0($sp)
.L0daf02dc:
    # Line 3186
    # lw $t9, -23712($gp) # &__glFrac
    sd	$a5,40($sp)
    sd	$ra,32($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    mul.s	$f1,$f0,$f30
    trunc.w.s	$f1,$f1
    ldc1	$f30,0($sp)
    mfc1	$a4,$f1
    b	.L0daf029c
    ld	$a5,40($sp)
.end __glNearestFilter1

# Function: __glNearestFilter2
# Declared: Line 3203 (Source lines: 3206-3234)
# Address: 0x0daf0308 - 0x0daf0460 (Size: 344 bytes, Frame: 240)
.globl __glNearestFilter2
.ent __glNearestFilter2
__glNearestFilter2:
    # Line 3206
    mov.s	$f5,$f15
    # Line 3211
    li	$a3,10497
    # Line 3206
    addiu	$sp,$sp,-112
    sd	$s7,24($sp)
    move	$s7,$a5
    sd	$s0,8($sp)
    move	$s0,$a1
    sdc1	$f30,0($sp)
    # Line 3211
    lwc1	$f30,32($a1)
    sd	$s1,16($sp)
    # Line 3206
    move	$s1,$a0
    # sd	gp,32(sp)
    # Line 3211
    lw	$at,4($a0)
    # Line 3206
    lui	$v0,0x10
    addiu	$v0,$v0,30048
    # Line 3211
    beq	$at,$a3,.L0daf0408
    # Line 3206
    nop
    # Line 3216
    mul.s	$f0,$f14,$f30
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 3215
    lw	$a0,20($s0)
    sd	$s2,48($sp)
    # Line 3216
    bltz	$a1,.L0daf03f0
    move	$s2,$a1
    # Line 3217
    slt	$v1,$a1,$a0
    bnezl	$v1,.L0daf037c
    # Line 3222
    lw	$a2,8($s1)
    # Line 3218
    addiu	$s2,$a0,-1
.L0daf0378:
    # Line 3222
    lw	$a2,8($s1)
.L0daf037c:
    beq	$a2,$a3,.L0daf043c
    lwc1	$f30,36($s0)
    # Line 3227
    mul.s	$f1,$f5,$f30
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    # Line 3226
    lw	$a0,24($s0)
    ldc1	$f30,0($sp)
    # Line 3227
    bltz	$a1,.L0daf03f8
    move	$a3,$a1
    # Line 3228
    slt	$at,$a1,$a0
    bnez	$at,.L0daf03b4
    sd	$ra,56($sp)
    sd	$ra,56($sp)
    # Line 3229
    addiu	$a3,$a0,-1
.L0daf03b4:
    # Line 3233
    move	$a0,$s0
    move	$a1,$s1
    lw	$t9,96($s0)
    move	$a2,$zero
    move	$a4,$s2
    jalr	$t9
    move	$a5,$s7
    # ld	gp,32(sp)
    # Line 3234
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,48($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daf03f0:
    # Line 3217
    b	.L0daf0378
    move	$s2,$zero
.L0daf03f8:
    sd	$ra,56($sp)
    # Line 3228
    move	$a3,$zero
    b	.L0daf03b4
    ldc1	$f30,0($sp)
.L0daf0408:
    sd	$s2,48($sp)
    # Line 3213
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f5,40($sp)
    sd	$ra,56($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    mul.s	$f2,$f0,$f30
    trunc.w.s	$f2,$f2
    li	$a3,10497
    ldc1	$f5,40($sp)
    mfc1	$s2,$f2
    b	.L0daf0378
    ld	$ra,56($sp)
.L0daf043c:
    # Line 3224
    # lw $t9, -23712($gp) # &__glFrac
    sd	$ra,56($sp)
    jal	__glFrac
    mov.s	$f12,$f5
    mul.s	$f3,$f0,$f30
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
    b	.L0daf03b4
    ldc1	$f30,0($sp)
.end __glNearestFilter2

# Function: __glNearestFilter3
# Declared: Line 3240 (Source lines: 3243-3282)
# Address: 0x0daf0460 - 0x0daf063c (Size: 476 bytes, Frame: 128)
.globl __glNearestFilter3
.ent __glNearestFilter3
__glNearestFilter3:
    # Line 3243
    mov.s	$f6,$f16
    mov.s	$f5,$f15
    # Line 3248
    li	$a2,10497
    # Line 3243
    addiu	$sp,$sp,-128
    sd	$s5,24($sp)
    move	$s5,$a5
    sd	$s0,8($sp)
    move	$s0,$a1
    sdc1	$f30,0($sp)
    # Line 3248
    lwc1	$f30,32($a1)
    sd	$s1,16($sp)
    # Line 3243
    move	$s1,$a0
    # sd	gp,32(sp)
    # Line 3248
    lw	$at,4($a0)
    # Line 3243
    lui	$v0,0x10
    addiu	$v0,$v0,29704
    # Line 3248
    beq	$at,$a2,.L0daf05a8
    # Line 3243
    nop
    # Line 3253
    mul.s	$f0,$f14,$f30
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 3252
    lw	$a0,20($s0)
    sd	$s3,72($sp)
    # Line 3253
    bltz	$a1,.L0daf0588
    move	$s3,$a1
    # Line 3254
    slt	$v1,$a1,$a0
    bnezl	$v1,.L0daf04d8
    # Line 3259
    lw	$a6,8($s1)
    # Line 3255
    addiu	$s3,$a0,-1
.L0daf04d4:
    # Line 3259
    lw	$a6,8($s1)
.L0daf04d8:
    beq	$a6,$a2,.L0daf05e4
    lwc1	$f30,36($s0)
    # Line 3264
    mul.s	$f1,$f5,$f30
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    # Line 3263
    lw	$a0,24($s0)
    sd	$s2,56($sp)
    # Line 3264
    bltz	$a1,.L0daf0590
    move	$s2,$a1
    # Line 3265
    slt	$at,$a1,$a0
    bnezl	$at,.L0daf0510
    # Line 3270
    lw	$v0,12($s1)
    # Line 3266
    addiu	$s2,$a0,-1
.L0daf050c:
    # Line 3270
    lw	$v0,12($s1)
.L0daf0510:
    beq	$v0,$a2,.L0daf0618
    lwc1	$f30,40($s0)
    # Line 3275
    mul.s	$f2,$f6,$f30
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    # Line 3274
    lw	$a0,28($s0)
    ldc1	$f30,0($sp)
    # Line 3275
    bltz	$a1,.L0daf0598
    move	$a2,$a1
    # Line 3276
    slt	$v1,$a1,$a0
    bnez	$v1,.L0daf0548
    sd	$ra,64($sp)
    sd	$ra,64($sp)
    # Line 3277
    addiu	$a2,$a0,-1
.L0daf0548:
    # Line 3281
    move	$a0,$s0
    move	$a1,$s1
    lw	$t9,96($s0)
    move	$a3,$s2
    move	$a4,$s3
    jalr	$t9
    move	$a5,$s5
    # ld	gp,32(sp)
    # Line 3282
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,72($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daf0588:
    # Line 3254
    b	.L0daf04d4
    move	$s3,$zero
.L0daf0590:
    # Line 3265
    b	.L0daf050c
    move	$s2,$zero
.L0daf0598:
    sd	$ra,64($sp)
    # Line 3276
    move	$a2,$zero
    b	.L0daf0548
    ldc1	$f30,0($sp)
.L0daf05a8:
    sd	$s3,72($sp)
    sdc1	$f5,48($sp)
    # Line 3250
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f6,40($sp)
    sd	$ra,64($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    mul.s	$f3,$f0,$f30
    trunc.w.s	$f3,$f3
    li	$a2,10497
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    mfc1	$s3,$f3
    b	.L0daf04d4
    ld	$ra,64($sp)
.L0daf05e4:
    sd	$s2,56($sp)
    # Line 3261
    # lw $t9, -23712($gp) # &__glFrac
    sdc1	$f6,40($sp)
    sd	$ra,64($sp)
    jal	__glFrac
    mov.s	$f12,$f5
    mul.s	$f4,$f0,$f30
    trunc.w.s	$f4,$f4
    li	$a2,10497
    ldc1	$f6,40($sp)
    mfc1	$s2,$f4
    b	.L0daf050c
    ld	$ra,64($sp)
.L0daf0618:
    # Line 3272
    # lw $t9, -23712($gp) # &__glFrac
    sd	$ra,64($sp)
    jal	__glFrac
    mov.s	$f12,$f6
    mul.s	$f30,$f0,$f30
    trunc.w.s	$f30,$f30
    mfc1	$a2,$f30
    b	.L0daf0548
    ldc1	$f30,0($sp)
.end __glNearestFilter3

# Function: __glLinearFilter1
# Declared: Line 3288 (Source lines: 3291-3341)
# Address: 0x0daf063c - 0x0daf08c4 (Size: 648 bytes, Frame: 176)
.globl __glLinearFilter1
.ent __glLinearFilter1
__glLinearFilter1:
    # Line 3298
    li	$v0,10497
    # Line 3291
    addiu	$sp,$sp,-176
    sd	$a5,56($sp)
    sd	$s1,72($sp)
    move	$s1,$a0
    sdc1	$f28,48($sp)
    sd	$gp,104($sp)
    # Line 3298
    lw	$at,4($a0)
    # Line 3292
    lw	$v1,0($a0)
    # Line 3298
    lw	$a2,20($a1)
    sd	$s0,112($sp)
    # Line 3291
    move	$s0,$a1
    # Line 3298
    mtc1	$a2,$f5
    # Line 3291
    lui	$a1,0x10
    addiu	$a1,$a1,29228
    # Line 3298
    cvt.s.w	$f5,$f5
    sd	$a2,64($sp)
    sd	$v1,80($sp)
    lwc1	$f0,3280($v1)
    # Line 3291
    addu	$gp,$t9,$a1
    # Line 3298
    beq	$at,$v0,.L0daf0870
    mul.s	$f28,$f5,$f14
    # Line 3302
    mtc1	$zero,$f6
    c.lt.s	$f28,$f6
    nop
    bc1fl	.L0daf07a0
    # Line 3304
    c.lt.s	$f5,$f28
    sd	$ra,120($sp)
    mov.s	$f28,$f6
.L0daf06b0:
    # Line 3307
    # lw $t9, -22924($gp) # &floor
.L0daf06b4:
    # Line 3306
    sub.s	$f28,$f28,$f0
    sd	$ra,120($sp)
    # Line 3307
    jal	floor
    cvt.d.s	$f12,$f28
    trunc.w.d	$f0,$f0
    mfc1	$a2,$f0
    nop
    sd	$a2,96($sp)
    # Line 3308
    addiu	$a2,$a2,1
    sd	$a2,88($sp)
.L0daf06dc:
    # Line 3312
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    mov.s	$f28,$f0
    # Line 3315
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$zero
    ld	$a4,96($sp)
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3316
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$zero
    ld	$a4,88($sp)
    jalr	$t9
    addiu	$a5,$sp,24
    ld	$ra,120($sp)
    # Line 3319
    lw	$a0,64($s0)
    # Line 3341
    ld	$s0,112($sp)
    ld	$s1,72($sp)
    # Line 3319
    li	$at,6410
    # Line 3318
    ld	$v0,80($sp)
    # Line 3321
    lwc1	$f1,16($sp)
    # Line 3327
    lwc1	$f3,16($sp)
    # Line 3318
    lwc1	$f0,3284($v0)
    # Line 3319
    beq	$a0,$at,.L0daf07b8
    # Line 3318
    sub.s	$f0,$f0,$f28
    # Line 3319
    li	$v1,6409
    beq	$a0,$v1,.L0daf07d0
    li	$a2,6408
    beq	$a0,$a2,.L0daf07f0
    li	$at,6407
    beq	$a0,$at,.L0daf0808
    # Line 3335
    ld	$v1,56($sp)
    # Line 3319
    li	$v0,6406
    beq	$a0,$v0,.L0daf08ac
    # Line 3335
    lwc1	$f1,16($sp)
    # Line 3338
    ld	$a2,56($sp)
    # Line 3319
    li	$v1,0x8049
    beq	$a0,$v1,.L0daf0858
    # Line 3338
    lwc1	$f3,20($sp)
.L0daf0790:
    ld	$gp,104($sp)
    # Line 3341
    ldc1	$f28,48($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daf07a0:
    nop
    # Line 3304
    bc1f	.L0daf06b4
    # Line 3307
    nop	# was lw $t9, -22924($gp) # &floor
    sd	$ra,120($sp)
    b	.L0daf06b0
    # Line 3305
    mov.s	$f28,$f5
.L0daf07b8:
    # Line 3321
    ld	$a2,56($sp)
    mul.s	$f1,$f1,$f0
    lwc1	$f2,40($sp)
    mul.s	$f2,$f2,$f28
    add.s	$f1,$f1,$f2
    swc1	$f1,16($a2)
.L0daf07d0:
    # Line 3324
    lwc1	$f3,36($sp)
    lwc1	$f2,12($sp)
    mul.s	$f3,$f3,$f28
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$at,56($sp)
    # Line 3325
    b	.L0daf0790
    # Line 3324
    swc1	$f2,12($at)
.L0daf07f0:
    # Line 3327
    ld	$v0,56($sp)
    mul.s	$f3,$f3,$f0
    lwc1	$f4,40($sp)
    mul.s	$f4,$f4,$f28
    add.s	$f3,$f3,$f4
    swc1	$f3,16($v0)
.L0daf0808:
    # Line 3330
    lwc1	$f3,24($sp)
    lwc1	$f2,0($sp)
    mul.s	$f3,$f3,$f28
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$v1,56($sp)
    swc1	$f2,0($v1)
    # Line 3331
    lwc1	$f2,28($sp)
    lwc1	$f1,4($sp)
    mul.s	$f2,$f2,$f28
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    swc1	$f1,4($v1)
    # Line 3332
    lwc1	$f1,32($sp)
    lwc1	$f4,8($sp)
    mul.s	$f1,$f1,$f28
    mul.s	$f4,$f4,$f0
    add.s	$f4,$f4,$f1
    # Line 3333
    b	.L0daf0790
    # Line 3332
    swc1	$f4,8($v1)
.L0daf0858:
    # Line 3338
    mul.s	$f3,$f3,$f0
    lwc1	$f4,44($sp)
    mul.s	$f4,$f4,$f28
    add.s	$f3,$f3,$f4
    b	.L0daf0790
    swc1	$f3,20($a2)
.L0daf0870:
    # Line 3301
    # lw $t9, -22924($gp) # &floor
    # Line 3300
    sub.s	$f28,$f28,$f0
    sd	$ra,120($sp)
    # Line 3301
    jal	floor
    cvt.d.s	$f12,$f28
    trunc.w.d	$f4,$f0
    ld	$v0,64($sp)
    mfc1	$at,$f4
    addiu	$v0,$v0,-1
    and	$at,$at,$v0
    sd	$at,96($sp)
    # Line 3302
    addiu	$at,$at,1
    and	$at,$at,$v0
    b	.L0daf06dc
    sd	$at,88($sp)
.L0daf08ac:
    # Line 3335
    mul.s	$f1,$f1,$f0
    lwc1	$f2,40($sp)
    mul.s	$f2,$f2,$f28
    add.s	$f1,$f1,$f2
    # Line 3336
    b	.L0daf0790
    # Line 3335
    swc1	$f1,16($v1)
.end __glLinearFilter1

# Function: __glLinearFilter2
# Declared: Line 3347 (Source lines: 3350-3435)
# Address: 0x0daf08c4 - 0x0daf0dbc (Size: 1272 bytes, Frame: 144)
.globl __glLinearFilter2
.ent __glLinearFilter2
__glLinearFilter2:
    # Line 3360
    li	$a3,10497
    # Line 3350
    addiu	$sp,$sp,-272
    sd	$s0,160($sp)
    move	$s0,$a1
    # Line 3358
    lwc1	$f5,32($a1)
    sd	$a5,136($sp)
    sdc1	$f30,96($sp)
    trunc.w.s	$f5,$f5
    # Line 3350
    mov.s	$f30,$f15
    sd	$s1,152($sp)
    move	$s1,$a0
    # Line 3359
    cvt.s.w	$f5,$f5
    sdc1	$f24,112($sp)
    sdc1	$f28,104($sp)
    sd	$gp,168($sp)
    # Line 3350
    lui	$v1,0x10
    addiu	$v1,$v1,28580
    # Line 3359
    mul.s	$f0,$f5,$f14
    # Line 3351
    lw	$v0,0($a0)
    # Line 3350
    addu	$gp,$t9,$v1
    # Line 3360
    lw	$at,4($a0)
    sd	$v0,144($sp)
    lwc1	$f28,3280($v0)
    beq	$at,$a3,.L0daf0ce4
    # Line 3359
    mov.s	$f24,$f0
    # Line 3365
    mtc1	$zero,$f6
    c.lt.s	$f0,$f6
    nop
    bc1fl	.L0daf0aec
    # Line 3367
    c.lt.s	$f5,$f0
    sd	$ra,216($sp)
    mov.s	$f24,$f6
.L0daf0944:
    sd	$s2,184($sp)
.L0daf0948:
    # Line 3370
    # lw $t9, -22924($gp) # &floor
    # Line 3369
    sub.s	$f24,$f24,$f28
    sd	$s3,192($sp)
    sd	$ra,216($sp)
    # Line 3370
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f0,$f0
    mfc1	$s3,$f0
    sdc1	$f22,176($sp)
    li	$a0,10497
    # Line 3371
    addiu	$s2,$s3,1
.L0daf0974:
    # Line 3375
    lwc1	$f5,36($s0)
    trunc.w.s	$f5,$f5
    # Line 3376
    cvt.s.w	$f5,$f5
    mul.s	$f0,$f5,$f30
    lw	$a2,8($s1)
    # Line 3381
    mtc1	$zero,$f6
    # Line 3376
    beq	$a2,$a0,.L0daf0d30
    mov.s	$f22,$f0
    # Line 3381
    c.lt.s	$f0,$f6
    nop
    bc1fl	.L0daf0b04
    # Line 3383
    c.lt.s	$f5,$f0
    mov.s	$f22,$f6
.L0daf09a8:
    # Line 3386
    # lw $t9, -22924($gp) # &floor
.L0daf09ac:
    # Line 3385
    sub.s	$f22,$f22,$f28
    sd	$s4,200($sp)
    sd	$s5,208($sp)
    # Line 3386
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f0,$f0
    mfc1	$s5,$f0
    nop
    # Line 3387
    addiu	$s4,$s5,1
.L0daf09d0:
    # Line 3391
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f24
    # Line 3392
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3391
    mov.s	$f24,$f0
    # Line 3392
    jal	__glFrac
    mov.s	$f12,$f22
    mov.s	$f22,$f0
    # Line 3395
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s5
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3396
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s5
    move	$a4,$s2
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3397
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    lw	$t9,96($s0)
    move	$a4,$s3
    addiu	$a5,$sp,48
    jalr	$t9
    ld	$s5,144($sp)
    # Line 3398
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    lw	$t9,96($s0)
    move	$a4,$s2
    addiu	$a5,$sp,72
    jalr	$t9
    ld	$s3,192($sp)
    ld	$s2,184($sp)
    ld	$s4,200($sp)
    ld	$ra,216($sp)
    # Line 3408
    lw	$a0,64($s0)
    # Line 3435
    ld	$s0,160($sp)
    ld	$s1,152($sp)
    ldc1	$f28,104($sp)
    # Line 3400
    lwc1	$f5,3284($s5)
    # Line 3435
    ldc1	$f30,96($sp)
    ld	$s5,208($sp)
    # Line 3401
    sub.s	$f0,$f5,$f22
    # Line 3408
    li	$at,6410
    beq	$a0,$at,.L0daf0b60
    # Line 3400
    sub.s	$f5,$f5,$f24
    # Line 3408
    li	$v0,6409
    beq	$a0,$v0,.L0daf0b18
    li	$v1,6408
    beq	$a0,$v1,.L0daf0c54
    li	$a2,6407
    beq	$a0,$a2,.L0daf0bac
    li	$at,6406
    beq	$a0,$at,.L0daf0d74
    li	$v0,0x8049
    beq	$a0,$v0,.L0daf0c9c
.L0daf0ad8:
    ld	$gp,168($sp)
    # Line 3435
    ldc1	$f22,176($sp)
    ldc1	$f24,112($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0daf0aec:
    nop
    # Line 3367
    bc1fl	.L0daf0948
    sd	$s2,184($sp)
    sd	$ra,216($sp)
    b	.L0daf0944
    # Line 3368
    mov.s	$f24,$f5
.L0daf0b04:
    nop
    # Line 3383
    bc1f	.L0daf09ac
    # Line 3386
    nop	# was lw $t9, -22924($gp) # &floor
    b	.L0daf09a8
    # Line 3384
    mov.s	$f22,$f5
.L0daf0b18:
    # Line 3410
    mul.s	$f7,$f22,$f24
    mul.s	$f8,$f22,$f5
    mul.s	$f9,$f5,$f0
    mul.s	$f6,$f24,$f0
.L0daf0b28:
    # Line 3414
    lwc1	$f4,36($sp)
    lwc1	$f1,12($sp)
    mul.s	$f4,$f4,$f6
    lwc1	$f3,60($sp)
    mul.s	$f1,$f1,$f9
    mul.s	$f3,$f3,$f8
    lwc1	$f2,84($sp)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$v1,136($sp)
    # Line 3416
    b	.L0daf0ad8
    # Line 3414
    swc1	$f1,12($v1)
.L0daf0b60:
    # Line 3410
    mul.s	$f7,$f22,$f24
    mul.s	$f8,$f22,$f5
    mul.s	$f6,$f24,$f0
    mul.s	$f9,$f5,$f0
    lwc1	$f1,40($sp)
    lwc1	$f2,16($sp)
    mul.s	$f1,$f1,$f6
    lwc1	$f4,64($sp)
    mul.s	$f2,$f2,$f9
    mul.s	$f4,$f4,$f8
    lwc1	$f3,88($sp)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$a2,136($sp)
    ld	$s5,208($sp)
    b	.L0daf0b28
    swc1	$f2,16($a2)
.L0daf0bac:
    # Line 3418
    mul.s	$f7,$f22,$f24
    mul.s	$f8,$f22,$f5
    mul.s	$f9,$f5,$f0
    mul.s	$f6,$f24,$f0
.L0daf0bbc:
    # Line 3422
    lwc1	$f4,24($sp)
    lwc1	$f1,0($sp)
    mul.s	$f4,$f4,$f6
    lwc1	$f3,48($sp)
    mul.s	$f1,$f1,$f9
    mul.s	$f3,$f3,$f8
    lwc1	$f2,72($sp)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$at,136($sp)
    swc1	$f1,0($at)
    # Line 3423
    lwc1	$f3,28($sp)
    lwc1	$f4,4($sp)
    mul.s	$f3,$f3,$f6
    lwc1	$f2,52($sp)
    mul.s	$f4,$f4,$f9
    mul.s	$f2,$f2,$f8
    lwc1	$f1,76($sp)
    mul.s	$f1,$f1,$f7
    add.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    add.s	$f4,$f4,$f1
    swc1	$f4,4($at)
    # Line 3424
    lwc1	$f2,32($sp)
    lwc1	$f3,8($sp)
    mul.s	$f2,$f2,$f6
    lwc1	$f1,56($sp)
    mul.s	$f3,$f3,$f9
    mul.s	$f1,$f1,$f8
    lwc1	$f4,80($sp)
    mul.s	$f4,$f4,$f7
    add.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f4
    # Line 3425
    b	.L0daf0ad8
    # Line 3424
    swc1	$f3,8($at)
.L0daf0c54:
    # Line 3418
    mul.s	$f7,$f22,$f24
    mul.s	$f8,$f22,$f5
    mul.s	$f6,$f24,$f0
    mul.s	$f9,$f5,$f0
    lwc1	$f1,40($sp)
    lwc1	$f2,16($sp)
    mul.s	$f1,$f1,$f6
    lwc1	$f4,64($sp)
    mul.s	$f2,$f2,$f9
    mul.s	$f4,$f4,$f8
    lwc1	$f3,88($sp)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$v0,136($sp)
    b	.L0daf0bbc
    swc1	$f2,16($v0)
.L0daf0c9c:
    # Line 3431
    mul.s	$f3,$f24,$f0
    mul.s	$f6,$f22,$f5
    lwc1	$f4,44($sp)
    mul.s	$f1,$f5,$f0
    mul.s	$f3,$f3,$f4
    lwc1	$f2,20($sp)
    mul.s	$f4,$f22,$f24
    mul.s	$f1,$f1,$f2
    lwc1	$f2,68($sp)
    mul.s	$f6,$f6,$f2
    lwc1	$f2,92($sp)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f4
    ld	$v1,136($sp)
    b	.L0daf0ad8
    swc1	$f3,20($v1)
.L0daf0ce4:
    sd	$s2,184($sp)
    sd	$s3,192($sp)
    sd	$ra,216($sp)
    # Line 3362
    lw	$a0,20($s0)
    # Line 3364
    # lw $t9, -22924($gp) # &floor
    # Line 3363
    sub.s	$f24,$f0,$f28
    # Line 3362
    addiu	$a0,$a0,-1
    sd	$a0,120($sp)
    # Line 3364
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f0,$f0
    ld	$at,120($sp)
    mfc1	$s3,$f0
    sdc1	$f22,176($sp)
    li	$a0,10497
    and	$s3,$s3,$at
    # Line 3365
    addiu	$s2,$s3,1
    b	.L0daf0974
    and	$s2,$s2,$at
.L0daf0d30:
    sd	$s4,200($sp)
    sd	$s5,208($sp)
    # Line 3378
    lw	$t8,24($s0)
    # Line 3380
    # lw $t9, -22924($gp) # &floor
    # Line 3379
    sub.s	$f22,$f0,$f28
    # Line 3378
    addiu	$t8,$t8,-1
    sd	$t8,128($sp)
    # Line 3380
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f1,$f0
    ld	$at,128($sp)
    mfc1	$s5,$f1
    nop
    and	$s5,$s5,$at
    # Line 3381
    addiu	$s4,$s5,1
    b	.L0daf09d0
    and	$s4,$s4,$at
.L0daf0d74:
    # Line 3427
    mul.s	$f2,$f24,$f0
    mul.s	$f4,$f22,$f5
    lwc1	$f3,40($sp)
    mul.s	$f6,$f5,$f0
    mul.s	$f2,$f2,$f3
    lwc1	$f1,16($sp)
    mul.s	$f3,$f22,$f24
    mul.s	$f6,$f6,$f1
    lwc1	$f1,64($sp)
    mul.s	$f4,$f4,$f1
    lwc1	$f1,88($sp)
    mul.s	$f3,$f3,$f1
    add.s	$f2,$f2,$f6
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$at,136($sp)
    # Line 3429
    b	.L0daf0ad8
    # Line 3427
    swc1	$f2,16($at)
.end __glLinearFilter2

# Function: __glLinearFilter3
# Declared: Line 3440 (Source lines: 3443-3570)
# Address: 0x0daf0dbc - 0x0daf165c (Size: 2208 bytes, Frame: 160)
.globl __glLinearFilter3
.ent __glLinearFilter3
__glLinearFilter3:
    # Line 3454
    li	$a2,10497
    # Line 3443
    addiu	$sp,$sp,-416
    sd	$s0,264($sp)
    move	$s0,$a1
    sd	$a5,240($sp)
    # Line 3452
    lwc1	$f5,32($a1)
    sdc1	$f28,192($sp)
    # Line 3443
    mov.s	$f28,$f16
    # Line 3452
    trunc.w.s	$f5,$f5
    sd	$s1,256($sp)
    # Line 3443
    move	$s1,$a0
    sdc1	$f22,200($sp)
    # Line 3453
    cvt.s.w	$f5,$f5
    sdc1	$f26,208($sp)
    sd	$gp,248($sp)
    # Line 3454
    lw	$at,4($a0)
    # Line 3443
    lui	$v0,0x10
    addiu	$v0,$v0,27308
    # Line 3453
    mul.s	$f0,$f5,$f14
    sd	$s8,272($sp)
    # Line 3444
    lw	$s8,0($a0)
    # Line 3443
    addu	$gp,$t9,$v0
    # Line 3454
    lwc1	$f26,3280($s8)
    beq	$at,$a2,.L0daf14e4
    # Line 3453
    mov.s	$f22,$f0
    # Line 3459
    mtc1	$zero,$f7
    c.lt.s	$f0,$f7
    nop
    bc1fl	.L0daf10ec
    # Line 3461
    c.lt.s	$f5,$f0
    sd	$ra,352($sp)
    mov.s	$f22,$f7
.L0daf0e3c:
    sd	$s3,304($sp)
.L0daf0e40:
    sd	$s4,328($sp)
    # Line 3464
    # lw $t9, -22924($gp) # &floor
    # Line 3463
    sub.s	$f22,$f22,$f26
    sdc1	$f15,296($sp)
    sd	$ra,352($sp)
    # Line 3464
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f0,$f0
    sdc1	$f24,288($sp)
    mfc1	$s3,$f0
    li	$a0,10497
    ldc1	$f5,296($sp)
    # Line 3465
    addiu	$s4,$s3,1
.L0daf0e74:
    # Line 3469
    lwc1	$f6,36($s0)
    trunc.w.s	$f6,$f6
    # Line 3470
    cvt.s.w	$f6,$f6
    mul.s	$f0,$f6,$f5
    lw	$v1,8($s1)
    # Line 3475
    mtc1	$zero,$f7
    # Line 3470
    beq	$v1,$a0,.L0daf1538
    mov.s	$f24,$f0
    # Line 3475
    c.lt.s	$f0,$f7
    nop
    bc1fl	.L0daf1104
    # Line 3477
    c.lt.s	$f6,$f0
    mov.s	$f24,$f7
.L0daf0ea8:
    # Line 3480
    # lw $t9, -22924($gp) # &floor
.L0daf0eac:
    # Line 3479
    sub.s	$f24,$f24,$f26
    sd	$s6,312($sp)
    sd	$s5,336($sp)
    # Line 3480
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f0,$f0
    mfc1	$s6,$f0
    sdc1	$f20,280($sp)
    li	$a0,10497
    # Line 3481
    addiu	$s5,$s6,1
.L0daf0ed4:
    # Line 3485
    lwc1	$f5,40($s0)
    trunc.w.s	$f5,$f5
    # Line 3486
    cvt.s.w	$f5,$f5
    mul.s	$f0,$f5,$f28
    lw	$a6,12($s1)
    # Line 3491
    mtc1	$zero,$f7
    # Line 3486
    beq	$a6,$a0,.L0daf1580
    mov.s	$f20,$f0
    # Line 3491
    c.lt.s	$f0,$f7
    nop
    bc1fl	.L0daf1118
    # Line 3493
    c.lt.s	$f5,$f0
    mov.s	$f20,$f7
.L0daf0f08:
    # Line 3496
    # lw $t9, -22924($gp) # &floor
.L0daf0f0c:
    # Line 3495
    sub.s	$f20,$f20,$f26
    sd	$s2,320($sp)
    sd	$s7,344($sp)
    # Line 3496
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 3497
    addiu	$s2,$s7,1
.L0daf0f30:
    # Line 3501
    # lw $t9, -23712($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 3502
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3501
    mov.s	$f22,$f0
    # Line 3502
    jal	__glFrac
    mov.s	$f12,$f24
    # Line 3503
    # lw $t9, -23712($gp) # &__glFrac
    # Line 3502
    mov.s	$f24,$f0
    # Line 3503
    jal	__glFrac
    mov.s	$f12,$f20
    mov.s	$f20,$f0
    # Line 3506
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s7
    lw	$t9,96($s0)
    move	$a3,$s6
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3507
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s7
    lw	$t9,96($s0)
    move	$a3,$s6
    move	$a4,$s4
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3508
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s7
    lw	$t9,96($s0)
    move	$a3,$s5
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 3509
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s7
    lw	$t9,96($s0)
    move	$a3,$s5
    move	$a4,$s4
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 3511
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s6
    lw	$t9,96($s0)
    move	$a4,$s3
    addiu	$a5,$sp,96
    jalr	$t9
    ld	$s7,344($sp)
    # Line 3512
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,96($s0)
    move	$a3,$s6
    move	$a4,$s4
    jalr	$t9
    addiu	$a5,$sp,120
    # Line 3513
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s5
    lw	$t9,96($s0)
    move	$a4,$s3
    addiu	$a5,$sp,144
    jalr	$t9
    ld	$s6,312($sp)
    # Line 3514
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s5
    lw	$t9,96($s0)
    move	$a4,$s4
    addiu	$a5,$sp,168
    jalr	$t9
    ld	$s3,304($sp)
    ld	$s2,320($sp)
    ld	$s4,328($sp)
    ld	$s5,336($sp)
    ld	$ra,352($sp)
    # Line 3530
    lw	$a0,64($s0)
    # Line 3570
    ld	$s0,264($sp)
    # Line 3516
    lwc1	$f6,3284($s8)
    # Line 3570
    ld	$s1,256($sp)
    ld	$s8,272($sp)
    # Line 3518
    sub.s	$f5,$f6,$f20
    # Line 3570
    ldc1	$f26,208($sp)
    ldc1	$f28,192($sp)
    # Line 3517
    sub.s	$f0,$f6,$f24
    # Line 3530
    li	$at,6410
    beq	$a0,$at,.L0daf11c4
    # Line 3516
    sub.s	$f6,$f6,$f22
    # Line 3530
    li	$v0,6409
    beq	$a0,$v0,.L0daf112c
    li	$v1,6408
    beq	$a0,$v1,.L0daf13b4
    li	$a6,6407
    beq	$a0,$a6,.L0daf125c
    li	$at,6406
    beq	$a0,$at,.L0daf15c4
    li	$v0,0x8049
    beq	$a0,$v0,.L0daf144c
.L0daf10d4:
    ld	$gp,248($sp)
    # Line 3570
    ldc1	$f20,280($sp)
    ldc1	$f22,200($sp)
    ldc1	$f24,288($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0daf10ec:
    nop
    # Line 3461
    bc1fl	.L0daf0e40
    sd	$s3,304($sp)
    sd	$ra,352($sp)
    b	.L0daf0e3c
    # Line 3462
    mov.s	$f22,$f5
.L0daf1104:
    nop
    # Line 3477
    bc1f	.L0daf0eac
    # Line 3480
    nop	# was lw $t9, -22924($gp) # &floor
    b	.L0daf0ea8
    # Line 3478
    mov.s	$f24,$f6
.L0daf1118:
    nop
    # Line 3493
    bc1f	.L0daf0f0c
    # Line 3496
    nop	# was lw $t9, -22924($gp) # &floor
    b	.L0daf0f08
    # Line 3494
    mov.s	$f20,$f5
.L0daf112c:
    # Line 3532
    mul.s	$f12,$f22,$f24
    mul.s	$f8,$f24,$f6
    mul.s	$f7,$f20,$f12
    mul.s	$f12,$f12,$f5
    mul.s	$f9,$f20,$f8
    mul.s	$f11,$f6,$f0
    mul.s	$f8,$f8,$f5
    mul.s	$f13,$f22,$f0
    mul.s	$f10,$f20,$f11
    mul.s	$f11,$f11,$f5
    mul.s	$f14,$f20,$f13
    mul.s	$f13,$f13,$f5
.L0daf115c:
    # Line 3538
    lwc1	$f2,36($sp)
    lwc1	$f1,12($sp)
    mul.s	$f2,$f2,$f13
    lwc1	$f4,60($sp)
    mul.s	$f1,$f1,$f11
    mul.s	$f4,$f4,$f8
    lwc1	$f3,84($sp)
    mul.s	$f3,$f3,$f12
    add.s	$f1,$f1,$f2
    lwc1	$f2,108($sp)
    mul.s	$f2,$f2,$f10
    add.s	$f1,$f1,$f4
    lwc1	$f4,132($sp)
    mul.s	$f4,$f4,$f14
    add.s	$f1,$f1,$f3
    lwc1	$f3,156($sp)
    mul.s	$f3,$f3,$f9
    add.s	$f1,$f1,$f2
    lwc1	$f2,180($sp)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$v1,240($sp)
    # Line 3542
    b	.L0daf10d4
    # Line 3538
    swc1	$f1,12($v1)
.L0daf11c4:
    # Line 3532
    mul.s	$f7,$f22,$f24
    mul.s	$f9,$f24,$f6
    mul.s	$f12,$f7,$f5
    mul.s	$f7,$f20,$f7
    mul.s	$f8,$f9,$f5
    mul.s	$f14,$f22,$f0
    mul.s	$f9,$f20,$f9
    mul.s	$f10,$f6,$f0
    mul.s	$f13,$f14,$f5
    mul.s	$f14,$f20,$f14
    mul.s	$f11,$f10,$f5
    mul.s	$f10,$f20,$f10
    lwc1	$f1,40($sp)
    lwc1	$f2,16($sp)
    mul.s	$f1,$f1,$f13
    lwc1	$f16,64($sp)
    mul.s	$f2,$f2,$f11
    mul.s	$f16,$f16,$f8
    lwc1	$f4,88($sp)
    lwc1	$f3,112($sp)
    mul.s	$f4,$f4,$f12
    add.s	$f2,$f2,$f1
    lwc1	$f15,136($sp)
    mul.s	$f3,$f3,$f10
    add.s	$f2,$f2,$f16
    mul.s	$f15,$f15,$f14
    add.s	$f2,$f2,$f4
    lwc1	$f4,160($sp)
    mul.s	$f4,$f4,$f9
    add.s	$f2,$f2,$f3
    lwc1	$f3,184($sp)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$a6,240($sp)
    b	.L0daf115c
    swc1	$f2,16($a6)
.L0daf125c:
    # Line 3544
    mul.s	$f12,$f22,$f24
    mul.s	$f8,$f24,$f6
    mul.s	$f7,$f20,$f12
    mul.s	$f12,$f12,$f5
    mul.s	$f9,$f20,$f8
    mul.s	$f11,$f6,$f0
    mul.s	$f8,$f8,$f5
    mul.s	$f13,$f22,$f0
    mul.s	$f10,$f20,$f11
    mul.s	$f11,$f11,$f5
    mul.s	$f14,$f20,$f13
    mul.s	$f13,$f13,$f5
.L0daf128c:
    # Line 3550
    lwc1	$f4,24($sp)
    lwc1	$f3,0($sp)
    mul.s	$f4,$f4,$f13
    lwc1	$f2,48($sp)
    mul.s	$f3,$f3,$f11
    mul.s	$f2,$f2,$f8
    lwc1	$f1,72($sp)
    mul.s	$f1,$f1,$f12
    add.s	$f3,$f3,$f4
    lwc1	$f4,96($sp)
    mul.s	$f4,$f4,$f10
    add.s	$f3,$f3,$f2
    lwc1	$f2,120($sp)
    mul.s	$f2,$f2,$f14
    add.s	$f3,$f3,$f1
    lwc1	$f1,144($sp)
    mul.s	$f1,$f1,$f9
    add.s	$f3,$f3,$f4
    lwc1	$f4,168($sp)
    mul.s	$f4,$f4,$f7
    add.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f4
    ld	$at,240($sp)
    swc1	$f3,0($at)
    # Line 3552
    lwc1	$f3,28($sp)
    lwc1	$f2,4($sp)
    mul.s	$f3,$f3,$f13
    lwc1	$f1,52($sp)
    mul.s	$f2,$f2,$f11
    mul.s	$f1,$f1,$f8
    lwc1	$f4,76($sp)
    mul.s	$f4,$f4,$f12
    add.s	$f2,$f2,$f3
    lwc1	$f3,100($sp)
    mul.s	$f3,$f3,$f10
    add.s	$f2,$f2,$f1
    lwc1	$f1,124($sp)
    mul.s	$f1,$f1,$f14
    add.s	$f2,$f2,$f4
    lwc1	$f4,148($sp)
    mul.s	$f4,$f4,$f9
    add.s	$f2,$f2,$f3
    lwc1	$f3,172($sp)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($at)
    # Line 3554
    lwc1	$f2,32($sp)
    lwc1	$f1,8($sp)
    mul.s	$f2,$f2,$f13
    lwc1	$f4,56($sp)
    mul.s	$f1,$f1,$f11
    mul.s	$f4,$f4,$f8
    lwc1	$f3,80($sp)
    mul.s	$f3,$f3,$f12
    add.s	$f1,$f1,$f2
    lwc1	$f2,104($sp)
    mul.s	$f2,$f2,$f10
    add.s	$f1,$f1,$f4
    lwc1	$f4,128($sp)
    mul.s	$f4,$f4,$f14
    add.s	$f1,$f1,$f3
    lwc1	$f3,152($sp)
    mul.s	$f3,$f3,$f9
    add.s	$f1,$f1,$f2
    lwc1	$f2,176($sp)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    # Line 3556
    b	.L0daf10d4
    # Line 3554
    swc1	$f1,8($at)
.L0daf13b4:
    # Line 3544
    mul.s	$f7,$f22,$f24
    mul.s	$f9,$f24,$f6
    mul.s	$f12,$f7,$f5
    mul.s	$f7,$f20,$f7
    mul.s	$f8,$f9,$f5
    mul.s	$f14,$f22,$f0
    mul.s	$f9,$f20,$f9
    mul.s	$f10,$f6,$f0
    mul.s	$f13,$f14,$f5
    mul.s	$f14,$f20,$f14
    mul.s	$f11,$f10,$f5
    mul.s	$f10,$f20,$f10
    lwc1	$f3,40($sp)
    lwc1	$f4,16($sp)
    mul.s	$f3,$f3,$f13
    lwc1	$f2,64($sp)
    mul.s	$f4,$f4,$f11
    mul.s	$f2,$f2,$f8
    lwc1	$f16,88($sp)
    lwc1	$f15,112($sp)
    mul.s	$f16,$f16,$f12
    add.s	$f4,$f4,$f3
    lwc1	$f1,136($sp)
    mul.s	$f15,$f15,$f10
    add.s	$f4,$f4,$f2
    mul.s	$f1,$f1,$f14
    add.s	$f4,$f4,$f16
    lwc1	$f16,160($sp)
    mul.s	$f16,$f16,$f9
    add.s	$f4,$f4,$f15
    lwc1	$f15,184($sp)
    mul.s	$f15,$f15,$f7
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f16
    add.s	$f4,$f4,$f15
    ld	$v0,240($sp)
    b	.L0daf128c
    swc1	$f4,16($v0)
.L0daf144c:
    # Line 3564
    mul.s	$f9,$f24,$f6
    mul.s	$f10,$f22,$f0
    mul.s	$f2,$f9,$f5
    mul.s	$f9,$f20,$f9
    mul.s	$f7,$f10,$f5
    mul.s	$f10,$f20,$f10
    lwc1	$f8,44($sp)
    mul.s	$f1,$f6,$f0
    mul.s	$f7,$f7,$f8
    mul.s	$f8,$f22,$f24
    mul.s	$f3,$f1,$f5
    mul.s	$f1,$f20,$f1
    mul.s	$f11,$f8,$f5
    lwc1	$f4,20($sp)
    mul.s	$f8,$f20,$f8
    mul.s	$f3,$f3,$f4
    lwc1	$f4,68($sp)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,92($sp)
    mul.s	$f11,$f11,$f4
    add.s	$f7,$f7,$f3
    lwc1	$f4,116($sp)
    add.s	$f7,$f7,$f2
    mul.s	$f1,$f1,$f4
    lwc1	$f4,140($sp)
    mul.s	$f10,$f10,$f4
    add.s	$f7,$f7,$f11
    lwc1	$f11,164($sp)
    mul.s	$f9,$f9,$f11
    lwc1	$f11,188($sp)
    add.s	$f7,$f7,$f1
    mul.s	$f8,$f8,$f11
    add.s	$f7,$f7,$f10
    add.s	$f7,$f7,$f9
    add.s	$f7,$f7,$f8
    ld	$v1,240($sp)
    b	.L0daf10d4
    swc1	$f7,20($v1)
.L0daf14e4:
    sd	$s3,304($sp)
    sd	$s4,328($sp)
    sdc1	$f15,296($sp)
    sd	$ra,352($sp)
    # Line 3456
    lw	$a0,20($s0)
    # Line 3458
    # lw $t9, -22924($gp) # &floor
    # Line 3457
    sub.s	$f22,$f0,$f26
    # Line 3456
    addiu	$a0,$a0,-1
    sd	$a0,216($sp)
    # Line 3458
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f0,$f0
    sdc1	$f24,288($sp)
    ld	$at,216($sp)
    mfc1	$s3,$f0
    li	$a0,10497
    ldc1	$f5,296($sp)
    and	$s3,$s3,$at
    # Line 3459
    addiu	$s4,$s3,1
    b	.L0daf0e74
    and	$s4,$s4,$at
.L0daf1538:
    sd	$s6,312($sp)
    sd	$s5,336($sp)
    # Line 3472
    lw	$t8,24($s0)
    # Line 3474
    # lw $t9, -22924($gp) # &floor
    # Line 3473
    sub.s	$f24,$f0,$f26
    # Line 3472
    addiu	$t8,$t8,-1
    sd	$t8,232($sp)
    # Line 3474
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f1,$f0
    ld	$at,232($sp)
    mfc1	$s6,$f1
    sdc1	$f20,280($sp)
    li	$a0,10497
    and	$s6,$s6,$at
    # Line 3475
    addiu	$s5,$s6,1
    b	.L0daf0ed4
    and	$s5,$s5,$at
.L0daf1580:
    sd	$s2,320($sp)
    sd	$s7,344($sp)
    # Line 3488
    lw	$t8,28($s0)
    # Line 3490
    # lw $t9, -22924($gp) # &floor
    # Line 3489
    sub.s	$f20,$f0,$f26
    # Line 3488
    addiu	$t8,$t8,-1
    sd	$t8,224($sp)
    # Line 3490
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f2,$f0
    ld	$at,224($sp)
    mfc1	$s7,$f2
    nop
    and	$s7,$s7,$at
    # Line 3491
    addiu	$s2,$s7,1
    b	.L0daf0f30
    and	$s2,$s2,$at
.L0daf15c4:
    # Line 3558
    mul.s	$f7,$f24,$f6
    mul.s	$f8,$f22,$f0
    mul.s	$f11,$f7,$f5
    mul.s	$f7,$f20,$f7
    mul.s	$f3,$f8,$f5
    mul.s	$f8,$f20,$f8
    lwc1	$f4,40($sp)
    mul.s	$f10,$f6,$f0
    mul.s	$f3,$f3,$f4
    mul.s	$f4,$f22,$f24
    mul.s	$f1,$f10,$f5
    mul.s	$f10,$f20,$f10
    mul.s	$f9,$f4,$f5
    lwc1	$f2,16($sp)
    mul.s	$f4,$f20,$f4
    mul.s	$f1,$f1,$f2
    lwc1	$f2,64($sp)
    mul.s	$f11,$f11,$f2
    lwc1	$f2,88($sp)
    mul.s	$f9,$f9,$f2
    add.s	$f3,$f3,$f1
    lwc1	$f2,112($sp)
    add.s	$f3,$f3,$f11
    mul.s	$f10,$f10,$f2
    lwc1	$f2,136($sp)
    mul.s	$f8,$f8,$f2
    add.s	$f3,$f3,$f9
    lwc1	$f9,160($sp)
    mul.s	$f7,$f7,$f9
    lwc1	$f9,184($sp)
    add.s	$f3,$f3,$f10
    mul.s	$f4,$f4,$f9
    add.s	$f3,$f3,$f8
    add.s	$f3,$f3,$f7
    add.s	$f3,$f3,$f4
    ld	$at,240($sp)
    # Line 3562
    b	.L0daf10d4
    # Line 3558
    swc1	$f3,16($at)
.end __glLinearFilter3

# Function: __glFilter4Func
# Declared: Line 3576 (Source lines: 3579-3584)
# Address: 0x0daf165c - 0x0daf1690 (Size: 52 bytes, Frame: 192)
.globl __glFilter4Func
.ent __glFilter4Func
__glFilter4Func:
    # Line 3579
    addiu	$sp,$sp,-64
    # sd	gp,8(sp)
    lui	$at,0x10
    addiu	$at,$at,25100
    # addu	gp,t9,at
    # Line 3583
    lw	$t9,272($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a1,228($a0)
    # Line 3584
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glFilter4Func

# Function: __glLinearFilter
# Declared: Line 3590 (Source lines: 3593-3598)
# Address: 0x0daf1690 - 0x0daf16c4 (Size: 52 bytes, Frame: 192)
.globl __glLinearFilter
.ent __glLinearFilter
__glLinearFilter:
    # Line 3593
    addiu	$sp,$sp,-64
    # sd	gp,8(sp)
    lui	$at,0x10
    addiu	$at,$at,25048
    # addu	gp,t9,at
    # Line 3597
    lw	$t9,276($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a1,228($a0)
    # Line 3598
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glLinearFilter

# Function: __glNearestFilter
# Declared: Line 3604 (Source lines: 3607-3612)
# Address: 0x0daf16c4 - 0x0daf16f8 (Size: 52 bytes, Frame: 192)
.globl __glNearestFilter
.ent __glNearestFilter
__glNearestFilter:
    # Line 3607
    addiu	$sp,$sp,-64
    # sd	gp,8(sp)
    lui	$at,0x10
    addiu	$at,$at,24996
    # addu	gp,t9,at
    # Line 3611
    lw	$t9,280($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a1,228($a0)
    # Line 3612
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glNearestFilter

# Function: __glNMNFilter
# Declared: Line 3617 (Source lines: 3620-3636)
# Address: 0x0daf16f8 - 0x0daf178c (Size: 148 bytes, Frame: 192)
.globl __glNMNFilter
.ent __glNMNFilter
__glNMNFilter:
    # Line 3620
    lw	$v0,0($a0)
    lwc1	$f0,3280($v0)
    addiu	$sp,$sp,-64
    # sd	gp,0(sp)
    c.le.s	$f13,$f0
    lui	$at,0x10
    addiu	$at,$at,24944
    bc1f	.L0daf175c
    nop
    # Line 3626
    move	$a3,$zero
    sd	$ra,8($sp)
.L0daf1724:
    sd	$ra,8($sp)
.L0daf1728:
    # Line 3635
    lw	$a1,228($a0)
    lw	$t9,280($a0)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3636
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf175c:
    # Line 3629
    lwc1	$f1,_lit_3efff972
    add.s	$f1,$f13,$f1
    trunc.w.s	$f1,$f1
    # Line 3628
    lw	$a2,236($a0)
    # Line 3629
    mfc1	$a3,$f1
    nop
    slt	$at,$a2,$a3
    beqzl	$at,.L0daf1728
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    b	.L0daf1724
    # Line 3631
    move	$a3,$a2
.end __glNMNFilter

# Function: __glLMNFilter
# Declared: Line 3641 (Source lines: 3644-3660)
# Address: 0x0daf178c - 0x0daf1820 (Size: 148 bytes, Frame: 192)
.globl __glLMNFilter
.ent __glLMNFilter
__glLMNFilter:
    # Line 3644
    lw	$v0,0($a0)
    lwc1	$f0,3280($v0)
    addiu	$sp,$sp,-64
    # sd	gp,0(sp)
    c.le.s	$f13,$f0
    lui	$at,0x10
    addiu	$at,$at,24796
    bc1f	.L0daf17f0
    nop
    # Line 3650
    move	$a3,$zero
    sd	$ra,8($sp)
.L0daf17b8:
    sd	$ra,8($sp)
.L0daf17bc:
    # Line 3659
    lw	$a1,228($a0)
    lw	$t9,276($a0)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3660
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf17f0:
    # Line 3653
    lwc1	$f1,_lit_3efff972
    add.s	$f1,$f13,$f1
    trunc.w.s	$f1,$f1
    # Line 3652
    lw	$a2,236($a0)
    # Line 3653
    mfc1	$a3,$f1
    nop
    slt	$at,$a2,$a3
    beqzl	$at,.L0daf17bc
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    b	.L0daf17b8
    # Line 3655
    move	$a3,$a2
.end __glLMNFilter

# Function: __glNMLFilter
# Declared: Line 3665 (Source lines: 3668-3709)
# Address: 0x0daf1820 - 0x0daf1aa4 (Size: 644 bytes, Frame: 176)
.globl __glNMLFilter
.ent __glNMLFilter
__glNMLFilter:
    # Line 3668
    move	$a3,$a5
    mov.s	$f0,$f13
    # Line 3669
    lw	$a2,0($a0)
    # Line 3668
    addiu	$sp,$sp,-176
    sdc1	$f24,56($sp)
    mov.s	$f24,$f16
    sdc1	$f22,64($sp)
    mov.s	$f22,$f15
    sdc1	$f20,48($sp)
    mov.s	$f20,$f14
    sd	$s0,104($sp)
    # Line 3677
    trunc.w.s	$f1,$f13
    # Line 3668
    move	$s0,$a0
    # sd	gp,112(sp)
    # Line 3675
    lw	$a6,236($a0)
    # Line 3677
    mfc1	$a4,$f1
    # Line 3668
    lui	$v0,0x10
    addiu	$v0,$v0,24648
    # Line 3677
    slt	$at,$a4,$a6
    beqz	$at,.L0daf1978
    # Line 3668
    nop
    sd	$ra,120($sp)
    sd	$a2,96($sp)
    # Line 3677
    slti	$v1,$a4,-1
    bnez	$v1,.L0daf1978
    sdc1	$f0,72($sp)
    sd	$a3,88($sp)
    # Line 3682
    addiu	$a5,$sp,0
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    move	$a0,$s0
    lw	$t9,280($s0)
    lw	$a1,228($s0)
    sll	$a2,$a4,0x2
    subu	$a2,$a2,$a4
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sd	$a2,80($sp)
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,100
    # Line 3683
    move	$a0,$s0
    addiu	$a5,$sp,24
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    ld	$a2,80($sp)
    lw	$t9,280($s0)
    lw	$a1,228($s0)
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f12,72($sp)
    # Line 3684
    # lw $t9, -23712($gp) # &__glFrac
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    jal	__glFrac
    ldc1	$f20,48($sp)
    ld	$ra,120($sp)
    # Line 3686
    lw	$a0,228($s0)
    ld	$s0,104($sp)
    li	$at,6410
    # Line 3688
    lwc1	$f1,16($sp)
    # Line 3685
    ld	$v0,96($sp)
    # Line 3694
    lwc1	$f3,16($sp)
    # Line 3686
    lw	$a0,64($a0)
    # Line 3685
    lwc1	$f5,3284($v0)
    # Line 3686
    beq	$a0,$at,.L0daf19cc
    # Line 3685
    sub.s	$f5,$f5,$f0
    # Line 3686
    li	$a1,6409
    beq	$a0,$a1,.L0daf19e8
    li	$at,6408
    beq	$a0,$at,.L0daf1a08
    li	$v0,6407
    beq	$a0,$v0,.L0daf1a20
    # Line 3702
    ld	$at,88($sp)
    # Line 3686
    li	$v1,6406
    beq	$a0,$v1,.L0daf1a8c
    # Line 3702
    lwc1	$f4,16($sp)
    # Line 3686
    li	$a1,0x8049
    beq	$a0,$a1,.L0daf1a70
    # Line 3705
    lwc1	$f3,20($sp)
.L0daf196c:
    # ld	gp,112(sp)
    # Line 3709
    jr	$ra
    addiu	$sp,$sp,176
.L0daf1978:
    # Line 3680
    move	$a0,$s0
    move	$a5,$a3
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    sd	$ra,120($sp)
    lw	$a1,228($s0)
    lw	$t9,280($s0)
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    ldc1	$f20,48($sp)
    ld	$ra,120($sp)
    b	.L0daf196c
    ld	$s0,104($sp)
.L0daf19cc:
    # Line 3688
    mul.s	$f1,$f1,$f0
    lwc1	$f2,40($sp)
    mul.s	$f2,$f2,$f5
    add.s	$f1,$f1,$f2
    ld	$s0,88($sp)
    swc1	$f1,16($s0)
    ld	$s0,104($sp)
.L0daf19e8:
    # Line 3691
    lwc1	$f3,36($sp)
    lwc1	$f2,12($sp)
    mul.s	$f3,$f3,$f5
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$at,88($sp)
    # Line 3692
    b	.L0daf196c
    # Line 3691
    swc1	$f2,12($at)
.L0daf1a08:
    # Line 3694
    ld	$v0,88($sp)
    mul.s	$f3,$f3,$f0
    lwc1	$f4,40($sp)
    mul.s	$f4,$f4,$f5
    add.s	$f3,$f3,$f4
    swc1	$f3,16($v0)
.L0daf1a20:
    # Line 3697
    lwc1	$f3,24($sp)
    lwc1	$f2,0($sp)
    mul.s	$f3,$f3,$f5
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$v1,88($sp)
    swc1	$f2,0($v1)
    # Line 3698
    lwc1	$f2,28($sp)
    lwc1	$f1,4($sp)
    mul.s	$f2,$f2,$f5
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    swc1	$f1,4($v1)
    # Line 3699
    lwc1	$f1,32($sp)
    lwc1	$f4,8($sp)
    mul.s	$f1,$f1,$f5
    mul.s	$f4,$f4,$f0
    add.s	$f4,$f4,$f1
    # Line 3700
    b	.L0daf196c
    # Line 3699
    swc1	$f4,8($v1)
.L0daf1a70:
    # Line 3705
    mul.s	$f3,$f3,$f0
    lwc1	$f4,44($sp)
    mul.s	$f4,$f4,$f5
    add.s	$f3,$f3,$f4
    ld	$a1,88($sp)
    b	.L0daf196c
    swc1	$f3,20($a1)
.L0daf1a8c:
    # Line 3702
    mul.s	$f4,$f4,$f0
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f5
    add.s	$f4,$f4,$f1
    # Line 3703
    b	.L0daf196c
    # Line 3702
    swc1	$f4,16($at)
.end __glNMLFilter

# Function: __glLMLFilter
# Declared: Line 3714 (Source lines: 3717-3758)
# Address: 0x0daf1aa4 - 0x0daf1d28 (Size: 644 bytes, Frame: 176)
.globl __glLMLFilter
.ent __glLMLFilter
__glLMLFilter:
    # Line 3717
    move	$a3,$a5
    mov.s	$f0,$f13
    # Line 3718
    lw	$a2,0($a0)
    # Line 3717
    addiu	$sp,$sp,-176
    sdc1	$f24,56($sp)
    mov.s	$f24,$f16
    sdc1	$f22,64($sp)
    mov.s	$f22,$f15
    sdc1	$f20,48($sp)
    mov.s	$f20,$f14
    sd	$s0,104($sp)
    # Line 3726
    trunc.w.s	$f1,$f13
    # Line 3717
    move	$s0,$a0
    # sd	gp,112(sp)
    # Line 3724
    lw	$a6,236($a0)
    # Line 3726
    mfc1	$a4,$f1
    # Line 3717
    lui	$v0,0x10
    addiu	$v0,$v0,24004
    # Line 3726
    slt	$at,$a4,$a6
    beqz	$at,.L0daf1bfc
    # Line 3717
    nop
    sd	$ra,120($sp)
    sd	$a2,96($sp)
    # Line 3726
    slti	$v1,$a4,-1
    bnez	$v1,.L0daf1bfc
    sdc1	$f0,72($sp)
    sd	$a3,88($sp)
    # Line 3731
    addiu	$a5,$sp,0
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    move	$a0,$s0
    lw	$t9,276($s0)
    lw	$a1,228($s0)
    sll	$a2,$a4,0x2
    subu	$a2,$a2,$a4
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sd	$a2,80($sp)
    addu	$a1,$a1,$a2
    jalr	$t9
    addiu	$a1,$a1,100
    # Line 3732
    move	$a0,$s0
    addiu	$a5,$sp,24
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    ld	$a2,80($sp)
    lw	$t9,276($s0)
    lw	$a1,228($s0)
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f12,72($sp)
    # Line 3733
    # lw $t9, -23712($gp) # &__glFrac
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    jal	__glFrac
    ldc1	$f20,48($sp)
    ld	$ra,120($sp)
    # Line 3735
    lw	$a0,228($s0)
    ld	$s0,104($sp)
    li	$at,6410
    # Line 3737
    lwc1	$f1,16($sp)
    # Line 3734
    ld	$v0,96($sp)
    # Line 3743
    lwc1	$f3,16($sp)
    # Line 3735
    lw	$a0,64($a0)
    # Line 3734
    lwc1	$f5,3284($v0)
    # Line 3735
    beq	$a0,$at,.L0daf1c50
    # Line 3734
    sub.s	$f5,$f5,$f0
    # Line 3735
    li	$a1,6409
    beq	$a0,$a1,.L0daf1c6c
    li	$at,6408
    beq	$a0,$at,.L0daf1c8c
    li	$v0,6407
    beq	$a0,$v0,.L0daf1ca4
    # Line 3751
    ld	$at,88($sp)
    # Line 3735
    li	$v1,6406
    beq	$a0,$v1,.L0daf1d10
    # Line 3751
    lwc1	$f4,16($sp)
    # Line 3735
    li	$a1,0x8049
    beq	$a0,$a1,.L0daf1cf4
    # Line 3754
    lwc1	$f3,20($sp)
.L0daf1bf0:
    # ld	gp,112(sp)
    # Line 3758
    jr	$ra
    addiu	$sp,$sp,176
.L0daf1bfc:
    # Line 3729
    move	$a0,$s0
    move	$a5,$a3
    mov.s	$f16,$f24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    sd	$ra,120($sp)
    lw	$a1,228($s0)
    lw	$t9,276($s0)
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    ldc1	$f20,48($sp)
    ld	$ra,120($sp)
    b	.L0daf1bf0
    ld	$s0,104($sp)
.L0daf1c50:
    # Line 3737
    mul.s	$f1,$f1,$f0
    lwc1	$f2,40($sp)
    mul.s	$f2,$f2,$f5
    add.s	$f1,$f1,$f2
    ld	$s0,88($sp)
    swc1	$f1,16($s0)
    ld	$s0,104($sp)
.L0daf1c6c:
    # Line 3740
    lwc1	$f3,36($sp)
    lwc1	$f2,12($sp)
    mul.s	$f3,$f3,$f5
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$at,88($sp)
    # Line 3741
    b	.L0daf1bf0
    # Line 3740
    swc1	$f2,12($at)
.L0daf1c8c:
    # Line 3743
    ld	$v0,88($sp)
    mul.s	$f3,$f3,$f0
    lwc1	$f4,40($sp)
    mul.s	$f4,$f4,$f5
    add.s	$f3,$f3,$f4
    swc1	$f3,16($v0)
.L0daf1ca4:
    # Line 3746
    lwc1	$f3,24($sp)
    lwc1	$f2,0($sp)
    mul.s	$f3,$f3,$f5
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$v1,88($sp)
    swc1	$f2,0($v1)
    # Line 3747
    lwc1	$f2,28($sp)
    lwc1	$f1,4($sp)
    mul.s	$f2,$f2,$f5
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    swc1	$f1,4($v1)
    # Line 3748
    lwc1	$f1,32($sp)
    lwc1	$f4,8($sp)
    mul.s	$f1,$f1,$f5
    mul.s	$f4,$f4,$f0
    add.s	$f4,$f4,$f1
    # Line 3749
    b	.L0daf1bf0
    # Line 3748
    swc1	$f4,8($v1)
.L0daf1cf4:
    # Line 3754
    mul.s	$f3,$f3,$f0
    lwc1	$f4,44($sp)
    mul.s	$f4,$f4,$f5
    add.s	$f3,$f3,$f4
    ld	$a1,88($sp)
    b	.L0daf1bf0
    swc1	$f3,20($a1)
.L0daf1d10:
    # Line 3751
    mul.s	$f4,$f4,$f0
    lwc1	$f1,40($sp)
    mul.s	$f1,$f1,$f5
    add.s	$f4,$f4,$f1
    # Line 3752
    b	.L0daf1bf0
    # Line 3751
    swc1	$f4,16($at)
.end __glLMLFilter

# Function: __glFilter4Func2
# Declared: Line 3764 (Source lines: 3767-3941)
# Address: 0x0daf1d28 - 0x0daf2c7c (Size: 3924 bytes, Frame: 160)
.globl __glFilter4Func2
.ent __glFilter4Func2
__glFilter4Func2:
    # Line 3767
    mov.s	$f4,$f15
    # Line 3782
    li	$a3,10497
    # Line 3767
    addiu	$sp,$sp,-672
    sd	$s0,504($sp)
    move	$s0,$a1
    sd	$a5,488($sp)
    # Line 3780
    lwc1	$f0,32($a1)
    sd	$s1,496($sp)
    # Line 3767
    move	$s1,$a0
    # Line 3780
    trunc.w.s	$f0,$f0
    sdc1	$f24,448($sp)
    sd	$s2,512($sp)
    sdc1	$f22,464($sp)
    # Line 3781
    cvt.s.w	$f6,$f0
    sd	$gp,520($sp)
    # Line 3767
    lui	$v1,0x10
    addiu	$v1,$v1,23360
    # Line 3768
    lw	$v0,0($a0)
    sdc1	$f30,456($sp)
    # Line 3781
    mul.s	$f5,$f6,$f14
    # Line 3782
    lwc1	$f30,3280($v0)
    # Line 3767
    addu	$gp,$t9,$v1
    # Line 3782
    lw	$at,4($a0)
    mov.s	$f22,$f30
    # Line 3780
    mfc1	$s2,$f0
    # Line 3782
    beq	$at,$a3,.L0daf29e0
    # Line 3781
    mov.s	$f24,$f5
    sdc1	$f26,552($sp)
    # Line 3789
    mtc1	$zero,$f26
    c.lt.s	$f5,$f26
    nop
    bc1fl	.L0daf227c
    # Line 3791
    c.lt.s	$f6,$f5
    sd	$ra,608($sp)
    sdc1	$f20,536($sp)
    mov.s	$f24,$f26
.L0daf1db8:
    sd	$s5,600($sp)
.L0daf1dbc:
    sdc1	$f20,536($sp)
    # Line 3793
    sub.s	$f20,$f24,$f22
    sdc1	$f4,544($sp)
    # Line 3794
    # lw $t9, -22924($gp) # &floor
    sd	$ra,608($sp)
    cvt.d.s	$f20,$f20
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f1,$f0
    mfc1	$a1,$f1
    nop
    # Line 3795
    addiu	$s5,$a1,-1
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$a0,10497
    ldc1	$f5,544($sp)
    c.lt.s	$f0,$f26
    # Line 3794
    move	$a2,$a1
    sd	$a1,472($sp)
    # Line 3795
    bc1f	.L0daf1e20
    ldc1	$f26,552($sp)
    sd	$s3,560($sp)
    # Line 3796
    move	$s5,$zero
    ldc1	$f26,552($sp)
.L0daf1e20:
    sd	$s3,560($sp)
    # Line 3798
    addiu	$s3,$a1,1
    slt	$at,$s2,$s3
    beqzl	$at,.L0daf1e40
    sd	$s6,584($sp)
    sd	$s6,584($sp)
    # Line 3799
    move	$s3,$s2
    sd	$s6,584($sp)
.L0daf1e40:
    # Line 3801
    addiu	$s6,$s3,1
    slt	$v0,$s2,$s6
    beqzl	$v0,.L0daf1e60
    # Line 3808
    lwc1	$f2,36($s0)
    sd	$s4,576($sp)
    sdc1	$f28,528($sp)
    # Line 3802
    move	$s6,$s2
.L0daf1e5c:
    # Line 3808
    lwc1	$f2,36($s0)
.L0daf1e60:
    trunc.w.s	$f2,$f2
    # Line 3809
    cvt.s.w	$f6,$f2
    mul.s	$f4,$f6,$f5
    sdc1	$f28,528($sp)
    lw	$v1,8($s1)
    sd	$s4,576($sp)
    # Line 3808
    mfc1	$s4,$f2
    # Line 3809
    beq	$v1,$a0,.L0daf2aa8
    mov.s	$f28,$f4
    sdc1	$f26,552($sp)
    # Line 3816
    mtc1	$zero,$f26
    c.lt.s	$f4,$f26
    nop
    bc1fl	.L0daf2298
    # Line 3818
    c.lt.s	$f6,$f4
    mov.s	$f28,$f26
.L0daf1ea0:
    # Line 3820
    sub.s	$f24,$f28,$f22
.L0daf1ea4:
    sd	$s8,568($sp)
    # Line 3821
    # lw $t9, -22924($gp) # &floor
    sd	$s7,592($sp)
    cvt.d.s	$f24,$f24
    jal	floor
    mov.d	$f12,$f24
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    nop
    # Line 3822
    addiu	$s7,$a1,-1
    mtc1	$s7,$f28
    nop
    cvt.s.w	$f28,$f28
    # Line 3821
    move	$s8,$a1
    # Line 3825
    addiu	$s2,$a1,1
    # Line 3822
    c.lt.s	$f28,$f26
    # Line 3825
    slt	$a2,$s4,$s2
    ldc1	$f26,552($sp)
    # Line 3822
    bc1f	.L0daf1efc
    ldc1	$f28,528($sp)
    # Line 3823
    move	$s7,$zero
    ldc1	$f26,552($sp)
.L0daf1efc:
    # Line 3825
    beqzl	$a2,.L0daf1f10
    sd	$s4,616($sp)
    sd	$s4,616($sp)
    # Line 3826
    move	$s2,$s4
    sd	$s4,616($sp)
.L0daf1f10:
    # Line 3828
    ld	$a0,616($sp)
    addiu	$s4,$s2,1
    slt	$at,$a0,$s4
    beqz	$at,.L0daf1f2c
    # Line 3836
    nop	# was lw $t9, -22924($gp) # &floor
    # Line 3829
    move	$s4,$a0
.L0daf1f28:
    # Line 3836
    # lw $t9, -22924($gp) # &floor
.L0daf1f2c:
    jal	floor
    mov.d	$f12,$f20
    cvt.d.s	$f22,$f30
    sub.d	$f5,$f20,$f0
    ldc1	$f6,_lit8_4030000000000000
    mul.d	$f5,$f5,$f6
    add.d	$f5,$f5,$f22
    trunc.w.d	$f5,$f5
    mfc1	$v1,$f5
    # Line 3841
    mov.d	$f12,$f24
    # lw $t9, -22924($gp) # &floor
    # Line 3837
    sll	$a1,$v1,0x2
    addu	$a1,$a1,$s1
    # Line 3838
    lwc1	$f4,24($a1)
    # Line 3837
    lwc1	$f3,88($a1)
    # Line 3840
    li	$a0,32
    sdc1	$f4,408($sp)
    sdc1	$f3,416($sp)
    subu	$a0,$a0,$v1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lwc1	$f2,24($a0)
    # Line 3839
    sll	$v0,$v1,0x1e
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    lwc1	$f1,88($v0)
    sdc1	$f2,392($sp)
    # Line 3841
    jal	floor
    sdc1	$f1,400($sp)
    sub.d	$f10,$f24,$f0
    ldc1	$f11,_lit8_4030000000000000
    mul.d	$f10,$f10,$f11
    # Line 3849
    addiu	$a5,$sp,0
    # Line 3841
    add.d	$f10,$f10,$f22
    # Line 3849
    move	$a4,$s5
    move	$a3,$s7
    move	$a2,$zero
    # Line 3841
    trunc.w.d	$f10,$f10
    # Line 3849
    move	$a1,$s1
    move	$a0,$s0
    ldc1	$f20,536($sp)
    # Line 3841
    mfc1	$a7,$f10
    # Line 3849
    lw	$t9,96($s0)
    li	$t0,32
    # Line 3845
    subu	$t0,$t0,$a7
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$s1
    # Line 3842
    sll	$t1,$a7,0x2
    addu	$t1,$t1,$s1
    # Line 3843
    lwc1	$f9,24($t1)
    # Line 3845
    lwc1	$f30,24($t0)
    # Line 3842
    lwc1	$f8,88($t1)
    sdc1	$f9,432($sp)
    # Line 3844
    sll	$a6,$a7,0x1e
    subu	$a6,$a6,$a7
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s1
    lwc1	$f7,88($a6)
    sdc1	$f8,424($sp)
    # Line 3849
    jalr	$t9
    sdc1	$f7,440($sp)
    # Line 3850
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s7
    ld	$a4,472($sp)
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3851
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s7
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 3852
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s7
    move	$a4,$s6
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 3853
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s8
    lw	$t9,96($s0)
    move	$a4,$s5
    addiu	$a5,$sp,96
    jalr	$t9
    ld	$s7,472($sp)
    # Line 3854
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s8
    move	$a4,$s7
    jalr	$t9
    addiu	$a5,$sp,120
    # Line 3855
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s8
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,144
    # Line 3856
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s8
    move	$a4,$s6
    jalr	$t9
    addiu	$a5,$sp,168
    # Line 3857
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s2
    lw	$t9,96($s0)
    move	$a4,$s5
    addiu	$a5,$sp,192
    jalr	$t9
    ld	$s8,568($sp)
    # Line 3858
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s2
    move	$a4,$s7
    jalr	$t9
    addiu	$a5,$sp,216
    # Line 3859
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s2
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,240
    # Line 3860
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s2
    move	$a4,$s6
    jalr	$t9
    addiu	$a5,$sp,264
    # Line 3861
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    lw	$t9,96($s0)
    move	$a3,$s4
    move	$a4,$s5
    jalr	$t9
    addiu	$a5,$sp,288
    # Line 3862
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    lw	$t9,96($s0)
    move	$a4,$s7
    addiu	$a5,$sp,312
    jalr	$t9
    ld	$s5,600($sp)
    # Line 3863
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    lw	$t9,96($s0)
    move	$a4,$s3
    addiu	$a5,$sp,336
    jalr	$t9
    ld	$s7,592($sp)
    # Line 3864
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    lw	$t9,96($s0)
    move	$a4,$s6
    addiu	$a5,$sp,360
    jalr	$t9
    ld	$s3,560($sp)
    ld	$s4,576($sp)
    ld	$s6,584($sp)
    # Line 3887
    lw	$a0,64($s0)
    # Line 3941
    ld	$s0,504($sp)
    ld	$s1,496($sp)
    ld	$s2,512($sp)
    ldc1	$f22,464($sp)
    ldc1	$f24,448($sp)
    # Line 3887
    li	$at,6410
    beq	$a0,$at,.L0daf23d0
    ld	$ra,608($sp)
    li	$v0,6409
    beq	$a0,$v0,.L0daf22ac
    li	$v1,6408
    beq	$a0,$v1,.L0daf2798
    li	$a2,6407
    beq	$a0,$a2,.L0daf24f4
    li	$at,6406
    beq	$a0,$at,.L0daf2b58
    li	$v0,0x8049
    beq	$a0,$v0,.L0daf28bc
.L0daf226c:
    ld	$gp,520($sp)
    # Line 3941
    ldc1	$f30,456($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0daf227c:
    nop
    # Line 3791
    bc1fl	.L0daf1dbc
    sd	$s5,600($sp)
    sd	$ra,608($sp)
    sdc1	$f20,536($sp)
    b	.L0daf1db8
    # Line 3792
    mov.s	$f24,$f6
.L0daf2298:
    nop
    # Line 3818
    bc1fl	.L0daf1ea4
    # Line 3820
    sub.s	$f24,$f28,$f22
    b	.L0daf1ea0
    # Line 3819
    mov.s	$f28,$f6
.L0daf22ac:
    ldc1	$f19,392($sp)
    # Line 3889
    ldc1	$f4,440($sp)
    mul.s	$f8,$f19,$f30
    ldc1	$f13,432($sp)
    mul.s	$f9,$f19,$f4
    ldc1	$f0,424($sp)
    mul.s	$f5,$f19,$f13
    ldc1	$f16,400($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f15,$f16,$f30
    mul.s	$f14,$f16,$f4
    mul.s	$f18,$f16,$f13
    ldc1	$f6,408($sp)
    mul.s	$f16,$f16,$f0
    mul.s	$f11,$f6,$f30
    mul.s	$f17,$f6,$f4
    mul.s	$f10,$f6,$f13
    ldc1	$f7,416($sp)
    mul.s	$f6,$f6,$f0
    mul.s	$f12,$f7,$f30
    mul.s	$f4,$f7,$f4
    mul.s	$f13,$f7,$f13
    mul.s	$f7,$f7,$f0
.L0daf2308:
    # Line 3896
    lwc1	$f3,36($sp)
    lwc1	$f0,12($sp)
    mul.s	$f3,$f3,$f6
    lwc1	$f2,60($sp)
    mul.s	$f0,$f0,$f7
    mul.s	$f2,$f2,$f16
    lwc1	$f1,84($sp)
    mul.s	$f1,$f1,$f19
    add.s	$f0,$f0,$f3
    lwc1	$f3,108($sp)
    mul.s	$f3,$f3,$f13
    add.s	$f0,$f0,$f2
    lwc1	$f2,132($sp)
    mul.s	$f2,$f2,$f10
    add.s	$f0,$f0,$f1
    lwc1	$f1,156($sp)
    mul.s	$f1,$f1,$f18
    add.s	$f0,$f0,$f3
    lwc1	$f3,180($sp)
    mul.s	$f3,$f3,$f5
    add.s	$f0,$f0,$f2
    lwc1	$f2,204($sp)
    mul.s	$f2,$f2,$f4
    add.s	$f0,$f0,$f1
    lwc1	$f1,228($sp)
    mul.s	$f1,$f1,$f17
    add.s	$f0,$f0,$f3
    lwc1	$f3,252($sp)
    mul.s	$f3,$f3,$f14
    add.s	$f0,$f0,$f2
    lwc1	$f2,276($sp)
    mul.s	$f2,$f2,$f9
    add.s	$f0,$f0,$f1
    lwc1	$f1,300($sp)
    mul.s	$f1,$f1,$f12
    add.s	$f0,$f0,$f3
    lwc1	$f3,324($sp)
    mul.s	$f3,$f3,$f11
    add.s	$f0,$f0,$f2
    lwc1	$f2,348($sp)
    mul.s	$f2,$f2,$f15
    add.s	$f0,$f0,$f1
    lwc1	$f1,372($sp)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    ld	$v1,488($sp)
    # Line 3901
    b	.L0daf226c
    # Line 3896
    swc1	$f0,12($v1)
.L0daf23d0:
    # Line 3889
    ldc1	$f5,432($sp)
    ldc1	$f14,400($sp)
    mul.s	$f18,$f14,$f5
    ldc1	$f11,408($sp)
    mul.s	$f10,$f11,$f5
    ldc1	$f4,416($sp)
    mul.s	$f13,$f4,$f5
    ldc1	$f8,392($sp)
    lwc1	$f17,160($sp)
    mul.s	$f5,$f8,$f5
    mul.s	$f17,$f17,$f18
    ldc1	$f19,424($sp)
    mul.s	$f16,$f14,$f19
    mul.s	$f7,$f4,$f19
    mul.s	$f6,$f11,$f19
    mul.s	$f19,$f8,$f19
    lwc1	$f12,40($sp)
    lwc1	$f2,16($sp)
    mul.s	$f12,$f12,$f6
    lwc1	$f3,64($sp)
    mul.s	$f2,$f2,$f7
    mul.s	$f3,$f3,$f16
    lwc1	$f9,88($sp)
    lwc1	$f15,112($sp)
    mul.s	$f9,$f9,$f19
    add.s	$f2,$f2,$f12
    lwc1	$f0,136($sp)
    mul.s	$f15,$f15,$f13
    add.s	$f2,$f2,$f3
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f9
    mul.s	$f12,$f4,$f30
    add.s	$f2,$f2,$f15
    mul.s	$f15,$f14,$f30
    ldc1	$f9,440($sp)
    mul.s	$f14,$f14,$f9
    lwc1	$f3,184($sp)
    mul.s	$f3,$f3,$f5
    add.s	$f2,$f2,$f0
    mul.s	$f4,$f4,$f9
    add.s	$f2,$f2,$f17
    mul.s	$f17,$f11,$f9
    lwc1	$f0,208($sp)
    mul.s	$f0,$f0,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f3,232($sp)
    mul.s	$f3,$f3,$f17
    mul.s	$f9,$f8,$f9
    add.s	$f2,$f2,$f0
    lwc1	$f0,256($sp)
    mul.s	$f0,$f0,$f14
    add.s	$f2,$f2,$f3
    lwc1	$f3,280($sp)
    mul.s	$f3,$f3,$f9
    mul.s	$f11,$f11,$f30
    add.s	$f2,$f2,$f0
    lwc1	$f0,304($sp)
    mul.s	$f0,$f0,$f12
    add.s	$f2,$f2,$f3
    lwc1	$f3,328($sp)
    mul.s	$f3,$f3,$f11
    mul.s	$f8,$f8,$f30
    add.s	$f2,$f2,$f0
    lwc1	$f0,352($sp)
    mul.s	$f0,$f0,$f15
    add.s	$f2,$f2,$f3
    lwc1	$f3,376($sp)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$at,488($sp)
    b	.L0daf2308
    swc1	$f2,16($at)
.L0daf24f4:
    ldc1	$f19,392($sp)
    # Line 3903
    ldc1	$f4,440($sp)
    mul.s	$f8,$f19,$f30
    ldc1	$f13,432($sp)
    mul.s	$f9,$f19,$f4
    ldc1	$f0,424($sp)
    mul.s	$f5,$f19,$f13
    ldc1	$f16,400($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f15,$f16,$f30
    mul.s	$f14,$f16,$f4
    mul.s	$f18,$f16,$f13
    ldc1	$f6,408($sp)
    mul.s	$f16,$f16,$f0
    mul.s	$f11,$f6,$f30
    mul.s	$f17,$f6,$f4
    mul.s	$f10,$f6,$f13
    ldc1	$f7,416($sp)
    mul.s	$f6,$f6,$f0
    mul.s	$f12,$f7,$f30
    mul.s	$f4,$f7,$f4
    mul.s	$f13,$f7,$f13
    mul.s	$f7,$f7,$f0
.L0daf2550:
    # Line 3910
    lwc1	$f1,24($sp)
    lwc1	$f2,0($sp)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,48($sp)
    mul.s	$f2,$f2,$f7
    mul.s	$f0,$f0,$f16
    lwc1	$f3,72($sp)
    mul.s	$f3,$f3,$f19
    add.s	$f2,$f2,$f1
    lwc1	$f1,96($sp)
    mul.s	$f1,$f1,$f13
    add.s	$f2,$f2,$f0
    lwc1	$f0,120($sp)
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f3
    lwc1	$f3,144($sp)
    mul.s	$f3,$f3,$f18
    add.s	$f2,$f2,$f1
    lwc1	$f1,168($sp)
    mul.s	$f1,$f1,$f5
    add.s	$f2,$f2,$f0
    lwc1	$f0,192($sp)
    mul.s	$f0,$f0,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f3,216($sp)
    mul.s	$f3,$f3,$f17
    add.s	$f2,$f2,$f1
    lwc1	$f1,240($sp)
    mul.s	$f1,$f1,$f14
    add.s	$f2,$f2,$f0
    lwc1	$f0,264($sp)
    mul.s	$f0,$f0,$f9
    add.s	$f2,$f2,$f3
    lwc1	$f3,288($sp)
    mul.s	$f3,$f3,$f12
    add.s	$f2,$f2,$f1
    lwc1	$f1,312($sp)
    mul.s	$f1,$f1,$f11
    add.s	$f2,$f2,$f0
    lwc1	$f0,336($sp)
    mul.s	$f0,$f0,$f15
    add.s	$f2,$f2,$f3
    lwc1	$f3,360($sp)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$v0,488($sp)
    swc1	$f2,0($v0)
    # Line 3915
    lwc1	$f0,28($sp)
    lwc1	$f1,4($sp)
    mul.s	$f0,$f0,$f6
    lwc1	$f3,52($sp)
    mul.s	$f1,$f1,$f7
    mul.s	$f3,$f3,$f16
    lwc1	$f2,76($sp)
    mul.s	$f2,$f2,$f19
    add.s	$f1,$f1,$f0
    lwc1	$f0,100($sp)
    mul.s	$f0,$f0,$f13
    add.s	$f1,$f1,$f3
    lwc1	$f3,124($sp)
    mul.s	$f3,$f3,$f10
    add.s	$f1,$f1,$f2
    lwc1	$f2,148($sp)
    mul.s	$f2,$f2,$f18
    add.s	$f1,$f1,$f0
    lwc1	$f0,172($sp)
    mul.s	$f0,$f0,$f5
    add.s	$f1,$f1,$f3
    lwc1	$f3,196($sp)
    mul.s	$f3,$f3,$f4
    add.s	$f1,$f1,$f2
    lwc1	$f2,220($sp)
    mul.s	$f2,$f2,$f17
    add.s	$f1,$f1,$f0
    lwc1	$f0,244($sp)
    mul.s	$f0,$f0,$f14
    add.s	$f1,$f1,$f3
    lwc1	$f3,268($sp)
    mul.s	$f3,$f3,$f9
    add.s	$f1,$f1,$f2
    lwc1	$f2,292($sp)
    mul.s	$f2,$f2,$f12
    add.s	$f1,$f1,$f0
    lwc1	$f0,316($sp)
    mul.s	$f0,$f0,$f11
    add.s	$f1,$f1,$f3
    lwc1	$f3,340($sp)
    mul.s	$f3,$f3,$f15
    add.s	$f1,$f1,$f2
    lwc1	$f2,364($sp)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,4($v0)
    # Line 3920
    lwc1	$f3,32($sp)
    lwc1	$f0,8($sp)
    mul.s	$f3,$f3,$f6
    lwc1	$f2,56($sp)
    mul.s	$f0,$f0,$f7
    mul.s	$f2,$f2,$f16
    lwc1	$f1,80($sp)
    mul.s	$f1,$f1,$f19
    add.s	$f0,$f0,$f3
    lwc1	$f3,104($sp)
    mul.s	$f3,$f3,$f13
    add.s	$f0,$f0,$f2
    lwc1	$f2,128($sp)
    mul.s	$f2,$f2,$f10
    add.s	$f0,$f0,$f1
    lwc1	$f1,152($sp)
    mul.s	$f1,$f1,$f18
    add.s	$f0,$f0,$f3
    lwc1	$f3,176($sp)
    mul.s	$f3,$f3,$f5
    add.s	$f0,$f0,$f2
    lwc1	$f2,200($sp)
    mul.s	$f2,$f2,$f4
    add.s	$f0,$f0,$f1
    lwc1	$f1,224($sp)
    mul.s	$f1,$f1,$f17
    add.s	$f0,$f0,$f3
    lwc1	$f3,248($sp)
    mul.s	$f3,$f3,$f14
    add.s	$f0,$f0,$f2
    lwc1	$f2,272($sp)
    mul.s	$f2,$f2,$f9
    add.s	$f0,$f0,$f1
    lwc1	$f1,296($sp)
    mul.s	$f1,$f1,$f12
    add.s	$f0,$f0,$f3
    lwc1	$f3,320($sp)
    mul.s	$f3,$f3,$f11
    add.s	$f0,$f0,$f2
    lwc1	$f2,344($sp)
    mul.s	$f2,$f2,$f15
    add.s	$f0,$f0,$f1
    lwc1	$f1,368($sp)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 3925
    b	.L0daf226c
    # Line 3920
    swc1	$f0,8($v0)
.L0daf2798:
    # Line 3903
    ldc1	$f5,432($sp)
    ldc1	$f14,400($sp)
    mul.s	$f18,$f14,$f5
    ldc1	$f11,408($sp)
    mul.s	$f10,$f11,$f5
    ldc1	$f4,416($sp)
    mul.s	$f13,$f4,$f5
    ldc1	$f8,392($sp)
    lwc1	$f2,160($sp)
    mul.s	$f5,$f8,$f5
    mul.s	$f2,$f2,$f18
    ldc1	$f19,424($sp)
    mul.s	$f16,$f14,$f19
    mul.s	$f7,$f4,$f19
    mul.s	$f6,$f11,$f19
    mul.s	$f19,$f8,$f19
    lwc1	$f12,40($sp)
    lwc1	$f0,16($sp)
    mul.s	$f12,$f12,$f6
    lwc1	$f1,64($sp)
    mul.s	$f0,$f0,$f7
    mul.s	$f1,$f1,$f16
    lwc1	$f9,88($sp)
    lwc1	$f15,112($sp)
    mul.s	$f9,$f9,$f19
    add.s	$f0,$f0,$f12
    lwc1	$f3,136($sp)
    mul.s	$f15,$f15,$f13
    add.s	$f0,$f0,$f1
    mul.s	$f3,$f3,$f10
    add.s	$f0,$f0,$f9
    mul.s	$f12,$f4,$f30
    add.s	$f0,$f0,$f15
    mul.s	$f15,$f14,$f30
    ldc1	$f9,440($sp)
    mul.s	$f14,$f14,$f9
    lwc1	$f1,184($sp)
    mul.s	$f1,$f1,$f5
    mul.s	$f4,$f4,$f9
    add.s	$f0,$f0,$f3
    mul.s	$f17,$f11,$f9
    add.s	$f0,$f0,$f2
    lwc1	$f2,208($sp)
    mul.s	$f2,$f2,$f4
    add.s	$f0,$f0,$f1
    lwc1	$f1,232($sp)
    mul.s	$f1,$f1,$f17
    mul.s	$f9,$f8,$f9
    add.s	$f0,$f0,$f2
    lwc1	$f2,256($sp)
    mul.s	$f2,$f2,$f14
    add.s	$f0,$f0,$f1
    lwc1	$f1,280($sp)
    mul.s	$f1,$f1,$f9
    mul.s	$f11,$f11,$f30
    add.s	$f0,$f0,$f2
    lwc1	$f2,304($sp)
    mul.s	$f2,$f2,$f12
    add.s	$f0,$f0,$f1
    lwc1	$f1,328($sp)
    mul.s	$f1,$f1,$f11
    mul.s	$f8,$f8,$f30
    add.s	$f0,$f0,$f2
    lwc1	$f2,352($sp)
    mul.s	$f2,$f2,$f15
    add.s	$f0,$f0,$f1
    lwc1	$f1,376($sp)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    ld	$a2,488($sp)
    b	.L0daf2550
    swc1	$f0,16($a2)
.L0daf28bc:
    # Line 3934
    ldc1	$f0,424($sp)
    ldc1	$f7,416($sp)
    mul.s	$f2,$f7,$f0
    ldc1	$f8,432($sp)
    ldc1	$f5,408($sp)
    mul.s	$f6,$f5,$f8
    lwc1	$f3,20($sp)
    mul.s	$f10,$f5,$f0
    lwc1	$f9,140($sp)
    mul.s	$f2,$f2,$f3
    ldc1	$f4,400($sp)
    mul.s	$f6,$f6,$f9
    lwc1	$f1,44($sp)
    mul.s	$f9,$f4,$f0
    ldc1	$f3,392($sp)
    mul.s	$f10,$f10,$f1
    lwc1	$f1,68($sp)
    mul.s	$f0,$f3,$f0
    mul.s	$f9,$f9,$f1
    add.s	$f2,$f2,$f10
    mul.s	$f10,$f7,$f8
    lwc1	$f1,92($sp)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,116($sp)
    add.s	$f2,$f2,$f9
    mul.s	$f9,$f4,$f8
    mul.s	$f10,$f10,$f1
    add.s	$f2,$f2,$f0
    lwc1	$f0,164($sp)
    mul.s	$f9,$f9,$f0
    add.s	$f2,$f2,$f10
    mul.s	$f8,$f3,$f8
    add.s	$f2,$f2,$f6
    ldc1	$f6,440($sp)
    add.s	$f2,$f2,$f9
    mul.s	$f9,$f4,$f6
    lwc1	$f10,188($sp)
    mul.s	$f8,$f8,$f10
    mul.s	$f10,$f7,$f6
    mul.s	$f7,$f7,$f30
    mul.s	$f4,$f4,$f30
    add.s	$f2,$f2,$f8
    lwc1	$f8,308($sp)
    mul.s	$f7,$f7,$f8
    lwc1	$f0,260($sp)
    mul.s	$f8,$f5,$f6
    mul.s	$f9,$f9,$f0
    lwc1	$f0,236($sp)
    mul.s	$f8,$f8,$f0
    lwc1	$f0,212($sp)
    mul.s	$f10,$f10,$f0
    mul.s	$f6,$f3,$f6
    mul.s	$f5,$f5,$f30
    add.s	$f2,$f2,$f10
    lwc1	$f10,284($sp)
    mul.s	$f6,$f6,$f10
    add.s	$f2,$f2,$f8
    mul.s	$f3,$f3,$f30
    lwc1	$f8,332($sp)
    add.s	$f2,$f2,$f9
    mul.s	$f5,$f5,$f8
    add.s	$f2,$f2,$f6
    lwc1	$f6,356($sp)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,380($sp)
    add.s	$f2,$f2,$f7
    mul.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$v0,488($sp)
    b	.L0daf226c
    swc1	$f2,20($v0)
.L0daf29e0:
    sd	$s5,600($sp)
    sdc1	$f4,544($sp)
    sd	$ra,608($sp)
    # Line 3785
    sub.s	$f24,$f5,$f22
    # Line 3786
    lwc1	$f12,_lit_bf800000
    # Line 3784
    lw	$s2,20($s0)
    # Line 3786
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f24,$f12
    # Line 3784
    addiu	$s2,$s2,-1
    sdc1	$f24,384($sp)
    # Line 3786
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    # Line 3787
    ldc1	$f12,384($sp)
    # lw $t9, -22924($gp) # &floor
    # Line 3786
    mfc1	$s5,$f13
    # Line 3787
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3786
    and	$s5,$s5,$s2
    # Line 3788
    lwc1	$f14,_lit_3f800000
    ldc1	$f12,384($sp)
    # Line 3787
    trunc.w.d	$f13,$f0
    # Line 3788
    add.s	$f12,$f12,$f14
    sd	$s3,560($sp)
    # Line 3787
    mfc1	$t8,$f13
    # Line 3788
    # lw $t9, -22924($gp) # &floor
    cvt.d.s	$f12,$f12
    # Line 3787
    and	$t8,$t8,$s2
    # Line 3788
    jal	floor
    sd	$t8,472($sp)
    trunc.w.d	$f13,$f0
    # Line 3789
    lwc1	$f14,_lit_40000000
    ldc1	$f12,384($sp)
    sd	$s6,584($sp)
    add.s	$f12,$f12,$f14
    sdc1	$f20,536($sp)
    # lw $t9, -22924($gp) # &floor
    # Line 3788
    mfc1	$s3,$f13
    # Line 3789
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3788
    and	$s3,$s3,$s2
    sd	$s4,576($sp)
    # Line 3789
    trunc.w.d	$f20,$f0
    sdc1	$f28,528($sp)
    li	$a0,10497
    ldc1	$f5,544($sp)
    mfc1	$s6,$f20
    cvt.d.s	$f20,$f24
    b	.L0daf1e5c
    and	$s6,$s6,$s2
.L0daf2aa8:
    sd	$s7,592($sp)
    # Line 3811
    lw	$t8,24($s0)
    # Line 3812
    sub.s	$f24,$f4,$f22
    # Line 3813
    lwc1	$f12,_lit_bf800000
    # lw $t9, -22924($gp) # &floor
    # Line 3811
    addiu	$t8,$t8,-1
    # Line 3813
    add.s	$f12,$f24,$f12
    sd	$t8,480($sp)
    # Line 3812
    mov.s	$f28,$f24
    # Line 3813
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    sd	$s8,568($sp)
    ld	$t8,480($sp)
    # Line 3814
    # lw $t9, -22924($gp) # &floor
    # Line 3813
    mfc1	$s7,$f13
    # Line 3814
    cvt.d.s	$f12,$f24
    jal	floor
    # Line 3813
    and	$s7,$s7,$t8
    # Line 3814
    trunc.w.d	$f13,$f0
    # Line 3815
    # lw $t9, -22924($gp) # &floor
    lwc1	$f12,_lit_3f800000
    # Line 3814
    ld	$ra,480($sp)
    mfc1	$s8,$f13
    # Line 3815
    add.s	$f12,$f24,$f12
    # Line 3814
    and	$s8,$s8,$ra
    # Line 3815
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    # Line 3816
    lwc1	$f12,_lit_40000000
    add.s	$f12,$f24,$f12
    # Line 3815
    ld	$t8,480($sp)
    # Line 3816
    # lw $t9, -22924($gp) # &floor
    # Line 3815
    mfc1	$s2,$f13
    # Line 3816
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3815
    and	$s2,$s2,$t8
    # Line 3816
    trunc.w.d	$f24,$f0
    ld	$at,480($sp)
    mfc1	$s4,$f24
    cvt.d.s	$f24,$f28
    ldc1	$f28,528($sp)
    b	.L0daf1f28
    and	$s4,$s4,$at
.L0daf2b58:
    # Line 3927
    ldc1	$f10,424($sp)
    ldc1	$f6,416($sp)
    mul.s	$f1,$f6,$f10
    ldc1	$f7,432($sp)
    ldc1	$f4,408($sp)
    mul.s	$f5,$f4,$f7
    lwc1	$f2,16($sp)
    mul.s	$f9,$f4,$f10
    lwc1	$f8,136($sp)
    mul.s	$f1,$f1,$f2
    ldc1	$f3,400($sp)
    mul.s	$f5,$f5,$f8
    lwc1	$f0,40($sp)
    mul.s	$f8,$f3,$f10
    ldc1	$f2,392($sp)
    mul.s	$f9,$f9,$f0
    lwc1	$f0,64($sp)
    mul.s	$f10,$f2,$f10
    mul.s	$f8,$f8,$f0
    add.s	$f1,$f1,$f9
    mul.s	$f9,$f6,$f7
    lwc1	$f0,88($sp)
    mul.s	$f10,$f10,$f0
    lwc1	$f0,112($sp)
    add.s	$f1,$f1,$f8
    mul.s	$f8,$f3,$f7
    mul.s	$f9,$f9,$f0
    add.s	$f1,$f1,$f10
    lwc1	$f10,160($sp)
    mul.s	$f8,$f8,$f10
    add.s	$f1,$f1,$f9
    mul.s	$f7,$f2,$f7
    add.s	$f1,$f1,$f5
    ldc1	$f5,440($sp)
    add.s	$f1,$f1,$f8
    mul.s	$f8,$f3,$f5
    lwc1	$f9,184($sp)
    mul.s	$f7,$f7,$f9
    mul.s	$f9,$f6,$f5
    mul.s	$f6,$f6,$f30
    mul.s	$f3,$f3,$f30
    add.s	$f1,$f1,$f7
    lwc1	$f7,304($sp)
    mul.s	$f6,$f6,$f7
    lwc1	$f10,256($sp)
    mul.s	$f7,$f4,$f5
    mul.s	$f8,$f8,$f10
    lwc1	$f10,232($sp)
    mul.s	$f7,$f7,$f10
    lwc1	$f10,208($sp)
    mul.s	$f9,$f9,$f10
    mul.s	$f5,$f2,$f5
    mul.s	$f4,$f4,$f30
    add.s	$f1,$f1,$f9
    lwc1	$f9,280($sp)
    mul.s	$f5,$f5,$f9
    add.s	$f1,$f1,$f7
    mul.s	$f2,$f2,$f30
    lwc1	$f7,328($sp)
    add.s	$f1,$f1,$f8
    mul.s	$f4,$f4,$f7
    add.s	$f1,$f1,$f5
    lwc1	$f5,352($sp)
    mul.s	$f3,$f3,$f5
    lwc1	$f5,376($sp)
    add.s	$f1,$f1,$f6
    mul.s	$f2,$f2,$f5
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$v1,488($sp)
    # Line 3932
    b	.L0daf226c
    # Line 3927
    swc1	$f1,16($v1)
.end __glFilter4Func2

# Function: __glFilter4Func1
# Declared: Line 3947 (Source lines: 3950-4034)
# Address: 0x0daf2c7c - 0x0daf31d8 (Size: 1372 bytes, Frame: 160)
.globl __glFilter4Func1
.ent __glFilter4Func1
__glFilter4Func1:
    # Line 3962
    li	$v0,10497
    # Line 3950
    addiu	$sp,$sp,-288
    sd	$a5,144($sp)
    sd	$s1,168($sp)
    # Line 3960
    lwc1	$f0,32($a1)
    # Line 3950
    move	$s1,$a0
    sdc1	$f26,128($sp)
    # Line 3960
    trunc.w.s	$f0,$f0
    sd	$s4,176($sp)
    sd	$gp,160($sp)
    # Line 3962
    lw	$at,4($a0)
    # Line 3961
    cvt.s.w	$f6,$f0
    sd	$s0,152($sp)
    # Line 3950
    move	$s0,$a1
    lui	$a1,0x10
    # Line 3951
    lw	$v1,0($a0)
    sdc1	$f24,136($sp)
    # Line 3961
    mul.s	$f4,$f6,$f14
    # Line 3962
    lwc1	$f24,3280($v1)
    # Line 3950
    addiu	$a1,$a1,19436
    addu	$gp,$t9,$a1
    # Line 3962
    mov.s	$f5,$f24
    # Line 3960
    mfc1	$s4,$f0
    # Line 3962
    beq	$at,$v0,.L0daf30d8
    # Line 3961
    mov.s	$f26,$f4
    # Line 3969
    mtc1	$zero,$f1
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0daf2ee8
    # Line 3971
    c.lt.s	$f6,$f4
    sd	$ra,224($sp)
    sdc1	$f20,184($sp)
    mtc1	$zero,$f26
.L0daf2d00:
    sd	$s5,208($sp)
.L0daf2d04:
    sdc1	$f20,184($sp)
    # Line 3973
    sub.s	$f20,$f26,$f5
    sd	$s7,216($sp)
    # Line 3974
    # lw $t9, -22924($gp) # &floor
    sd	$ra,224($sp)
    cvt.d.s	$f20,$f20
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f2,$f0
    mfc1	$a0,$f2
    nop
    # Line 3975
    addiu	$s5,$a0,-1
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$zero,$f1
    c.lt.s	$f0,$f1
    nop
    bc1f	.L0daf2d5c
    # Line 3974
    move	$s7,$a0
    sd	$s2,192($sp)
    # Line 3976
    move	$s5,$zero
.L0daf2d5c:
    sd	$s2,192($sp)
    # Line 3978
    addiu	$s2,$a0,1
    slt	$a2,$s4,$s2
    beqzl	$a2,.L0daf2d7c
    sd	$s3,200($sp)
    sd	$s3,200($sp)
    # Line 3979
    move	$s2,$s4
    sd	$s3,200($sp)
.L0daf2d7c:
    # Line 3981
    addiu	$s3,$s2,1
    slt	$at,$s4,$s3
    beqz	$at,.L0daf2d94
    # Line 3989
    nop	# was lw $t9, -22924($gp) # &floor
    # Line 3982
    move	$s3,$s4
.L0daf2d90:
    # Line 3989
    # lw $t9, -22924($gp) # &floor
.L0daf2d94:
    jal	floor
    mov.d	$f12,$f20
    sub.d	$f7,$f20,$f0
    ldc1	$f8,_lit8_4030000000000000
    mul.d	$f7,$f7,$f8
    cvt.d.s	$f6,$f24
    add.d	$f6,$f6,$f7
    # Line 3997
    addiu	$a5,$sp,0
    move	$a4,$s5
    move	$a3,$zero
    # Line 3989
    trunc.w.d	$f6,$f6
    # Line 3997
    move	$a2,$zero
    move	$a1,$s1
    move	$a0,$s0
    # Line 3989
    mfc1	$v1,$f6
    # Line 3997
    lw	$t9,96($s0)
    # Line 3993
    li	$a6,32
    # Line 3992
    sll	$v0,$v1,0x1e
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    # Line 3990
    sll	$a7,$v1,0x2
    addu	$a7,$a7,$s1
    # Line 3991
    lwc1	$f5,24($a7)
    # Line 3992
    lwc1	$f26,88($v0)
    # Line 3990
    lwc1	$f4,88($a7)
    sdc1	$f5,120($sp)
    # Line 3993
    subu	$a6,$a6,$v1
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s1
    lwc1	$f3,24($a6)
    sdc1	$f4,112($sp)
    # Line 3997
    jalr	$t9
    sdc1	$f3,104($sp)
    # Line 3998
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    move	$a4,$s7
    lw	$t9,96($s0)
    addiu	$a5,$sp,24
    ldc1	$f20,184($sp)
    jalr	$t9
    ld	$s5,208($sp)
    # Line 3999
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    lw	$t9,96($s0)
    move	$a4,$s2
    addiu	$a5,$sp,48
    jalr	$t9
    ld	$s7,216($sp)
    # Line 4000
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    lw	$t9,96($s0)
    move	$a4,$s3
    addiu	$a5,$sp,72
    jalr	$t9
    ld	$s2,192($sp)
    ld	$s3,200($sp)
    # Line 4004
    lw	$a0,64($s0)
    # Line 4034
    ld	$s0,152($sp)
    ld	$s1,168($sp)
    ld	$s4,176($sp)
    ldc1	$f24,136($sp)
    # Line 4004
    li	$at,6410
    beq	$a0,$at,.L0daf2f04
    ld	$ra,224($sp)
    li	$v0,6409
    beq	$a0,$v0,.L0daf2f4c
    li	$v1,6408
    beq	$a0,$v1,.L0daf2f98
    li	$a2,6407
    beq	$a0,$a2,.L0daf2fe0
    li	$at,6406
    beq	$a0,$at,.L0daf318c
    li	$v0,0x8049
    beq	$a0,$v0,.L0daf308c
.L0daf2ed8:
    ld	$gp,160($sp)
    # Line 4034
    ldc1	$f26,128($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0daf2ee8:
    nop
    # Line 3971
    bc1fl	.L0daf2d04
    sd	$s5,208($sp)
    sd	$ra,224($sp)
    sdc1	$f20,184($sp)
    b	.L0daf2d00
    # Line 3972
    mov.s	$f26,$f6
.L0daf2f04:
    sdc1	$f4,232($sp)
    # Line 4006
    ldc1	$f4,112($sp)
    lwc1	$f3,16($sp)
    ldc1	$f2,120($sp)
    lwc1	$f1,40($sp)
    mul.s	$f3,$f3,$f4
    lwc1	$f0,64($sp)
    mul.s	$f1,$f1,$f2
    ldc1	$f2,104($sp)
    mul.s	$f0,$f0,$f26
    lwc1	$f4,88($sp)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    ld	$at,144($sp)
    ldc1	$f4,232($sp)
    swc1	$f3,16($at)
.L0daf2f4c:
    # Line 4010
    ldc1	$f3,112($sp)
    lwc1	$f2,12($sp)
    ldc1	$f1,120($sp)
    lwc1	$f0,36($sp)
    mul.s	$f2,$f2,$f3
    sdc1	$f4,232($sp)
    lwc1	$f4,60($sp)
    mul.s	$f0,$f0,$f1
    ldc1	$f1,104($sp)
    mul.s	$f4,$f4,$f26
    lwc1	$f3,84($sp)
    mul.s	$f3,$f3,$f1
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    ld	$a2,144($sp)
    ldc1	$f4,232($sp)
    # Line 4012
    b	.L0daf2ed8
    # Line 4010
    swc1	$f2,12($a2)
.L0daf2f98:
    # Line 4014
    ldc1	$f0,120($sp)
    ldc1	$f2,112($sp)
    lwc1	$f1,16($sp)
    sdc1	$f4,232($sp)
    lwc1	$f4,40($sp)
    mul.s	$f1,$f1,$f2
    lwc1	$f3,64($sp)
    mul.s	$f4,$f4,$f0
    ldc1	$f0,104($sp)
    mul.s	$f3,$f3,$f26
    lwc1	$f2,88($sp)
    mul.s	$f2,$f2,$f0
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$v1,144($sp)
    ldc1	$f4,232($sp)
    swc1	$f1,16($v1)
.L0daf2fe0:
    # Line 4018
    ldc1	$f3,120($sp)
    lwc1	$f0,24($sp)
    sdc1	$f4,232($sp)
    ldc1	$f4,112($sp)
    lwc1	$f1,0($sp)
    mul.s	$f0,$f0,$f3
    lwc1	$f2,48($sp)
    mul.s	$f1,$f1,$f4
    mul.s	$f2,$f2,$f26
    add.s	$f1,$f1,$f0
    lwc1	$f0,72($sp)
    add.s	$f1,$f1,$f2
    ldc1	$f2,104($sp)
    mul.s	$f0,$f0,$f2
    add.s	$f1,$f1,$f0
    ld	$v0,144($sp)
    swc1	$f1,0($v0)
    # Line 4020
    lwc1	$f1,28($sp)
    lwc1	$f0,4($sp)
    mul.s	$f1,$f1,$f3
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f1
    lwc1	$f1,52($sp)
    mul.s	$f1,$f1,$f26
    add.s	$f0,$f0,$f1
    lwc1	$f1,76($sp)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,4($v0)
    # Line 4022
    lwc1	$f1,32($sp)
    mul.s	$f1,$f1,$f3
    lwc1	$f3,8($sp)
    lwc1	$f0,56($sp)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f26
    lwc1	$f4,80($sp)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    ldc1	$f4,232($sp)
    # Line 4024
    b	.L0daf2ed8
    # Line 4022
    swc1	$f3,8($v0)
.L0daf308c:
    # Line 4030
    ldc1	$f0,120($sp)
    ldc1	$f2,112($sp)
    lwc1	$f1,20($sp)
    sdc1	$f4,232($sp)
    lwc1	$f4,44($sp)
    mul.s	$f1,$f1,$f2
    lwc1	$f3,68($sp)
    mul.s	$f4,$f4,$f0
    ldc1	$f0,104($sp)
    mul.s	$f3,$f3,$f26
    lwc1	$f2,92($sp)
    mul.s	$f2,$f2,$f0
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    ld	$at,144($sp)
    ldc1	$f4,232($sp)
    b	.L0daf2ed8
    swc1	$f1,20($at)
.L0daf30d8:
    sd	$s5,208($sp)
    sd	$ra,224($sp)
    # Line 3965
    sub.s	$f26,$f4,$f5
    # Line 3966
    lwc1	$f12,_lit_bf800000
    # Line 3964
    lw	$s4,20($s0)
    # Line 3966
    # lw $t9, -22924($gp) # &floor
    add.s	$f12,$f26,$f12
    # Line 3964
    addiu	$s4,$s4,-1
    sdc1	$f26,96($sp)
    # Line 3966
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    sd	$s7,216($sp)
    # Line 3967
    ldc1	$f12,96($sp)
    # lw $t9, -22924($gp) # &floor
    # Line 3966
    mfc1	$s5,$f13
    # Line 3967
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3966
    and	$s5,$s5,$s4
    # Line 3967
    trunc.w.d	$f13,$f0
    # Line 3968
    lwc1	$f14,_lit_3f800000
    ldc1	$f12,96($sp)
    add.s	$f12,$f12,$f14
    sd	$s2,192($sp)
    # lw $t9, -22924($gp) # &floor
    # Line 3967
    mfc1	$s7,$f13
    # Line 3968
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3967
    and	$s7,$s7,$s4
    # Line 3968
    trunc.w.d	$f13,$f0
    # Line 3969
    lwc1	$f14,_lit_40000000
    ldc1	$f12,96($sp)
    sd	$s3,200($sp)
    add.s	$f12,$f12,$f14
    sdc1	$f20,184($sp)
    # lw $t9, -22924($gp) # &floor
    # Line 3968
    mfc1	$s2,$f13
    # Line 3969
    cvt.d.s	$f12,$f12
    jal	floor
    # Line 3968
    and	$s2,$s2,$s4
    # Line 3969
    trunc.w.d	$f20,$f0
    mfc1	$s3,$f20
    cvt.d.s	$f20,$f26
    b	.L0daf2d90
    and	$s3,$s3,$s4
.L0daf318c:
    sdc1	$f4,232($sp)
    # Line 4026
    ldc1	$f4,112($sp)
    lwc1	$f3,16($sp)
    ldc1	$f2,120($sp)
    lwc1	$f1,40($sp)
    mul.s	$f3,$f3,$f4
    lwc1	$f0,64($sp)
    mul.s	$f1,$f1,$f2
    ldc1	$f2,104($sp)
    mul.s	$f0,$f0,$f26
    lwc1	$f4,88($sp)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    ld	$v1,144($sp)
    ldc1	$f4,232($sp)
    # Line 4028
    b	.L0daf2ed8
    # Line 4026
    swc1	$f3,16($v1)
.end __glFilter4Func1

# Function: __glTextureModulateL
# Declared: Line 4040 (Source lines: 4045-4048)
# Address: 0x0daf31d8 - 0x0daf320c (Size: 52 bytes, Frame: 0)
.globl __glTextureModulateL
.ent __glTextureModulateL
__glTextureModulateL:
    # Line 4045
    lwc1	$f0,12($a2)
    lwc1	$f4,0($a1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4046
    lwc1	$f2,4($a1)
    lwc1	$f3,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4047
    lwc1	$f0,8($a1)
    lwc1	$f1,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 4048
    jr	$ra
    # Line 4047
    swc1	$f0,8($a1)
.end __glTextureModulateL

# Function: __glTextureModulateLA
# Declared: Line 4052 (Source lines: 4057-4061)
# Address: 0x0daf320c - 0x0daf3250 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateLA
.ent __glTextureModulateLA
__glTextureModulateLA:
    # Line 4057
    lwc1	$f2,12($a2)
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4058
    lwc1	$f4,4($a1)
    lwc1	$f0,12($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4059
    lwc1	$f2,8($a1)
    lwc1	$f3,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4060
    lwc1	$f0,12($a1)
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4061
    jr	$ra
    # Line 4060
    swc1	$f0,12($a1)
.end __glTextureModulateLA

# Function: __glTextureModulateRGB
# Declared: Line 4065 (Source lines: 4070-4073)
# Address: 0x0daf3250 - 0x0daf3284 (Size: 52 bytes, Frame: 0)
.globl __glTextureModulateRGB
.ent __glTextureModulateRGB
__glTextureModulateRGB:
    # Line 4070
    lwc1	$f0,0($a2)
    lwc1	$f4,0($a1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4071
    lwc1	$f2,4($a1)
    lwc1	$f3,4($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4072
    lwc1	$f0,8($a1)
    lwc1	$f1,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4073
    jr	$ra
    # Line 4072
    swc1	$f0,8($a1)
.end __glTextureModulateRGB

# Function: __glTextureModulateRGBA
# Declared: Line 4077 (Source lines: 4082-4086)
# Address: 0x0daf3284 - 0x0daf32c8 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateRGBA
.ent __glTextureModulateRGBA
__glTextureModulateRGBA:
    # Line 4082
    lwc1	$f2,0($a2)
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4083
    lwc1	$f4,4($a1)
    lwc1	$f0,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4084
    lwc1	$f2,8($a1)
    lwc1	$f3,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4085
    lwc1	$f0,12($a1)
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4086
    jr	$ra
    # Line 4085
    swc1	$f0,12($a1)
.end __glTextureModulateRGBA

# Function: __glTextureModulateA
# Declared: Line 4090 (Source lines: 4095-4096)
# Address: 0x0daf32c8 - 0x0daf32dc (Size: 20 bytes, Frame: 0)
.globl __glTextureModulateA
.ent __glTextureModulateA
__glTextureModulateA:
    # Line 4095
    lwc1	$f1,16($a2)
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 4096
    jr	$ra
    # Line 4095
    swc1	$f0,12($a1)
.end __glTextureModulateA

# Function: __glTextureModulateI
# Declared: Line 4100 (Source lines: 4105-4109)
# Address: 0x0daf32dc - 0x0daf3320 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateI
.ent __glTextureModulateI
__glTextureModulateI:
    # Line 4105
    lwc1	$f2,20($a2)
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4106
    lwc1	$f4,4($a1)
    lwc1	$f0,20($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4107
    lwc1	$f2,8($a1)
    lwc1	$f3,20($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4108
    lwc1	$f0,12($a1)
    lwc1	$f1,20($a2)
    mul.s	$f0,$f0,$f1
    # Line 4109
    jr	$ra
    # Line 4108
    swc1	$f0,12($a1)
.end __glTextureModulateI

# Function: __glTextureDecalRGB
# Declared: Line 4114 (Source lines: 4116-4119)
# Address: 0x0daf3320 - 0x0daf3354 (Size: 52 bytes, Frame: 0)
.globl __glTextureDecalRGB
.ent __glTextureDecalRGB
__glTextureDecalRGB:
    # Line 4116
    lwc1	$f0,30756($a0)
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4117
    lwc1	$f3,30760($a0)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4118
    lwc1	$f1,30764($a0)
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4119
    jr	$ra
    # Line 4118
    swc1	$f0,8($a1)
.end __glTextureDecalRGB

# Function: __glTextureDecalRGBA
# Declared: Line 4122 (Source lines: 4124-4133)
# Address: 0x0daf3354 - 0x0daf33c4 (Size: 112 bytes, Frame: 0)
.globl __glTextureDecalRGBA
.ent __glTextureDecalRGBA
__glTextureDecalRGBA:
    # Line 4125
    lwc1	$f1,3284($a0)
    # Line 4124
    lwc1	$f3,16($a2)
    # Line 4127
    lwc1	$f2,0($a2)
    # Line 4125
    sub.s	$f1,$f1,$f3
    # Line 4127
    mul.s	$f2,$f2,$f3
    lwc1	$f4,0($a1)
    lwc1	$f0,30756($a0)
    mul.s	$f4,$f4,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4129
    lwc1	$f2,4($a2)
    lwc1	$f4,4($a1)
    mul.s	$f2,$f2,$f3
    mul.s	$f4,$f4,$f1
    lwc1	$f0,30760($a0)
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4131
    lwc1	$f2,8($a2)
    lwc1	$f0,8($a1)
    mul.s	$f2,$f2,$f3
    mul.s	$f0,$f0,$f1
    lwc1	$f1,30764($a0)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 4133
    jr	$ra
    # Line 4131
    swc1	$f0,8($a1)
.end __glTextureDecalRGBA

# Function: __glTextureBlendL
# Declared: Line 4138 (Source lines: 4140-4147)
# Address: 0x0daf33c4 - 0x0daf3420 (Size: 92 bytes, Frame: 0)
.globl __glTextureBlendL
.ent __glTextureBlendL
__glTextureBlendL:
    # Line 4142
    lw	$at,2376($a0)
    # Line 4140
    lwc1	$f2,12($a2)
    # Line 4141
    lwc1	$f1,3284($a0)
    # Line 4144
    lwc1	$f0,4($at)
    lwc1	$f4,0($a1)
    # Line 4141
    sub.s	$f1,$f1,$f2
    # Line 4144
    mul.s	$f0,$f0,$f2
    mul.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    # Line 4145
    lwc1	$f3,4($a1)
    # Line 4144
    swc1	$f4,0($a1)
    # Line 4145
    mul.s	$f3,$f3,$f1
    lwc1	$f4,8($at)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 4146
    lwc1	$f0,8($a1)
    # Line 4145
    swc1	$f3,4($a1)
    # Line 4146
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($at)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 4147
    jr	$ra
    # Line 4146
    swc1	$f0,8($a1)
.end __glTextureBlendL

# Function: __glTextureBlendLA
# Declared: Line 4150 (Source lines: 4152-4160)
# Address: 0x0daf3420 - 0x0daf348c (Size: 108 bytes, Frame: 0)
.globl __glTextureBlendLA
.ent __glTextureBlendLA
__glTextureBlendLA:
    # Line 4154
    lw	$at,2376($a0)
    # Line 4152
    lwc1	$f4,12($a2)
    # Line 4153
    lwc1	$f3,3284($a0)
    # Line 4156
    lwc1	$f2,4($at)
    lwc1	$f1,0($a1)
    # Line 4153
    sub.s	$f3,$f3,$f4
    # Line 4156
    mul.s	$f2,$f2,$f4
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    # Line 4157
    lwc1	$f0,4($a1)
    # Line 4156
    swc1	$f1,0($a1)
    # Line 4157
    mul.s	$f0,$f0,$f3
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f4
    add.s	$f0,$f0,$f1
    # Line 4158
    lwc1	$f2,8($a1)
    # Line 4157
    swc1	$f0,4($a1)
    # Line 4158
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4159
    lwc1	$f0,12($a1)
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4160
    jr	$ra
    # Line 4159
    swc1	$f0,12($a1)
.end __glTextureBlendLA

# Function: __glTextureBlendRGB
# Declared: Line 4163 (Source lines: 4165-4173)
# Address: 0x0daf348c - 0x0daf3500 (Size: 116 bytes, Frame: 0)
.globl __glTextureBlendRGB
.ent __glTextureBlendRGB
__glTextureBlendRGB:
    # Line 4165
    lwc1	$f3,0($a2)
    # Line 4170
    lwc1	$f2,3284($a0)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,0($a1)
    # Line 4168
    lw	$at,2376($a0)
    # Line 4170
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($at)
    mul.s	$f2,$f2,$f3
    add.s	$f1,$f1,$f2
    # Line 4166
    lwc1	$f0,4($a2)
    # Line 4167
    lwc1	$f2,8($a2)
    # Line 4170
    swc1	$f1,0($a1)
    # Line 4171
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f0
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,8($at)
    mul.s	$f4,$f4,$f0
    add.s	$f3,$f3,$f4
    swc1	$f3,4($a1)
    # Line 4172
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($at)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 4173
    jr	$ra
    # Line 4172
    swc1	$f0,8($a1)
.end __glTextureBlendRGB

# Function: __glTextureBlendRGBA
# Declared: Line 4176 (Source lines: 4178-4187)
# Address: 0x0daf3500 - 0x0daf3584 (Size: 132 bytes, Frame: 0)
.globl __glTextureBlendRGBA
.ent __glTextureBlendRGBA
__glTextureBlendRGBA:
    # Line 4178
    lwc1	$f0,0($a2)
    # Line 4183
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f0
    lwc1	$f3,0($a1)
    # Line 4181
    lw	$at,2376($a0)
    # Line 4183
    mul.s	$f3,$f3,$f4
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f0
    add.s	$f3,$f3,$f4
    # Line 4179
    lwc1	$f2,4($a2)
    # Line 4180
    lwc1	$f4,8($a2)
    # Line 4183
    swc1	$f3,0($a1)
    # Line 4184
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    lwc1	$f0,4($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 4185
    lwc1	$f3,3284($a0)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4186
    lwc1	$f0,12($a1)
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4187
    jr	$ra
    # Line 4186
    swc1	$f0,12($a1)
.end __glTextureBlendRGBA

# Function: __glTextureBlendA
# Declared: Line 4191 (Source lines: 4196-4197)
# Address: 0x0daf3584 - 0x0daf3598 (Size: 20 bytes, Frame: 0)
.globl __glTextureBlendA
.ent __glTextureBlendA
__glTextureBlendA:
    # Line 4196
    lwc1	$f1,16($a2)
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 4197
    jr	$ra
    # Line 4196
    swc1	$f0,12($a1)
.end __glTextureBlendA

# Function: __glTextureBlendI
# Declared: Line 4200 (Source lines: 4202-4210)
# Address: 0x0daf3598 - 0x0daf360c (Size: 116 bytes, Frame: 0)
.globl __glTextureBlendI
.ent __glTextureBlendI
__glTextureBlendI:
    # Line 4204
    lw	$at,2376($a0)
    # Line 4202
    lwc1	$f2,20($a2)
    # Line 4203
    lwc1	$f1,3284($a0)
    # Line 4206
    lwc1	$f3,4($at)
    lwc1	$f0,0($a1)
    # Line 4203
    sub.s	$f1,$f1,$f2
    # Line 4206
    mul.s	$f3,$f3,$f2
    mul.s	$f0,$f0,$f1
    add.s	$f0,$f0,$f3
    # Line 4207
    lwc1	$f4,4($a1)
    # Line 4206
    swc1	$f0,0($a1)
    # Line 4207
    mul.s	$f4,$f4,$f1
    lwc1	$f0,8($at)
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    # Line 4208
    lwc1	$f3,8($a1)
    # Line 4207
    swc1	$f4,4($a1)
    # Line 4208
    mul.s	$f3,$f3,$f1
    lwc1	$f4,12($at)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 4209
    lwc1	$f0,12($a1)
    # Line 4208
    swc1	$f3,8($a1)
    # Line 4209
    mul.s	$f0,$f0,$f1
    lwc1	$f1,16($at)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 4210
    jr	$ra
    # Line 4209
    swc1	$f0,12($a1)
.end __glTextureBlendI

# Function: __glTextureReplaceL
# Declared: Line 4215 (Source lines: 4217-4220)
# Address: 0x0daf360c - 0x0daf3640 (Size: 52 bytes, Frame: 0)
.globl __glTextureReplaceL
.ent __glTextureReplaceL
__glTextureReplaceL:
    # Line 4217
    lwc1	$f0,30756($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4218
    lwc1	$f3,30760($a0)
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4219
    lwc1	$f1,30764($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 4220
    jr	$ra
    # Line 4219
    swc1	$f0,8($a1)
.end __glTextureReplaceL

# Function: __glTextureReplaceLA
# Declared: Line 4223 (Source lines: 4225-4229)
# Address: 0x0daf3640 - 0x0daf3684 (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceLA
.ent __glTextureReplaceLA
__glTextureReplaceLA:
    # Line 4225
    lwc1	$f2,30756($a0)
    lwc1	$f1,12($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4226
    lwc1	$f0,30760($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4227
    lwc1	$f3,30764($a0)
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4228
    lwc1	$f1,30796($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4229
    jr	$ra
    # Line 4228
    swc1	$f0,12($a1)
.end __glTextureReplaceLA

# Function: __glTextureReplaceRGB
# Declared: Line 4232 (Source lines: 4234-4237)
# Address: 0x0daf3684 - 0x0daf36b8 (Size: 52 bytes, Frame: 0)
.globl __glTextureReplaceRGB
.ent __glTextureReplaceRGB
__glTextureReplaceRGB:
    # Line 4234
    lwc1	$f0,30756($a0)
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a1)
    # Line 4235
    lwc1	$f3,30760($a0)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4236
    lwc1	$f1,30764($a0)
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4237
    jr	$ra
    # Line 4236
    swc1	$f0,8($a1)
.end __glTextureReplaceRGB

# Function: __glTextureReplaceRGBA
# Declared: Line 4240 (Source lines: 4242-4246)
# Address: 0x0daf36b8 - 0x0daf36fc (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceRGBA
.ent __glTextureReplaceRGBA
__glTextureReplaceRGBA:
    # Line 4242
    lwc1	$f2,30756($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4243
    lwc1	$f0,30760($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4244
    lwc1	$f3,30764($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4245
    lwc1	$f1,30796($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4246
    jr	$ra
    # Line 4245
    swc1	$f0,12($a1)
.end __glTextureReplaceRGBA

# Function: __glTextureReplaceA
# Declared: Line 4249 (Source lines: 4251-4252)
# Address: 0x0daf36fc - 0x0daf3710 (Size: 20 bytes, Frame: 0)
.globl __glTextureReplaceA
.ent __glTextureReplaceA
__glTextureReplaceA:
    # Line 4251
    lwc1	$f1,30796($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4252
    jr	$ra
    # Line 4251
    swc1	$f0,12($a1)
.end __glTextureReplaceA

# Function: __glTextureReplaceI
# Declared: Line 4255 (Source lines: 4257-4261)
# Address: 0x0daf3710 - 0x0daf3754 (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceI
.ent __glTextureReplaceI
__glTextureReplaceI:
    # Line 4257
    lwc1	$f2,30756($a0)
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 4258
    lwc1	$f0,30760($a0)
    lwc1	$f4,20($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 4259
    lwc1	$f3,30764($a0)
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4260
    lwc1	$f1,30796($a0)
    lwc1	$f0,20($a2)
    mul.s	$f0,$f0,$f1
    # Line 4261
    jr	$ra
    # Line 4260
    swc1	$f0,12($a1)
.end __glTextureReplaceI

# Function: __GL_TEXENV_CLAMP
# Declared: Line 4279 (Source lines: 4280-4287)
# Address: 0x0daf3754 - 0x0daf378c (Size: 56 bytes, Frame: 0)
.globl __GL_TEXENV_CLAMP
.ent __GL_TEXENV_CLAMP
__GL_TEXENV_CLAMP:
    # Line 4280
    c.le.s	$f12,$f14
    nop
    bc1f	.L0daf3784
    # Line 4285
    mov.s	$f0,$f13
    # Line 4280
    c.le.s	$f13,$f12
    nop
    bc1f	.L0daf377c
    nop
    # Line 4283
    jr	$ra
    mov.s	$f0,$f12
.L0daf377c:
    # Line 4285
    jr	$ra
    nop
.L0daf3784:
    # Line 4287
    jr	$ra
    mov.s	$f0,$f14
.end __GL_TEXENV_CLAMP

# Function: __glTextureSBModulateL
# Declared: Line 33 (Source lines: 34-46)
# Address: 0x0daf378c - 0x0daf38a8 (Size: 284 bytes, Frame: 224)
.globl __glTextureSBModulateL
.ent __glTextureSBModulateL
__glTextureSBModulateL:
    # Line 34
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    # Line 40
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 35
    lw	$s4,28216($a0)
    # Line 40
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,40(sp)
    # Line 41
    lwc1	$f14,3284($a0)
    # Line 35
    addiu	$s4,$s4,4
    # Line 41
    lwc1	$f15,168($s4)
    # Line 34
    lui	$at,0x10
    addiu	$at,$at,16604
    # Line 41
    mul.s	$f15,$f15,$f16
    # Line 34
    # addu	gp,t9,at
    # Line 41
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 43
    lwc1	$f4,0($s0)
    lwc1	$f3,0($s8)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s8)
    # Line 44
    lwc1	$f1,4($s8)
    lwc1	$f2,4($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($s8)
    # Line 45
    lwc1	$f30,8($s8)
    lwc1	$f0,8($s0)
    mul.s	$f30,$f30,$f0
    # ld	gp,40(sp)
    # Line 46
    ld	$s1,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 45
    swc1	$f30,8($s8)
    # Line 46
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBModulateL

# Function: __glTextureSBModulateLA
# Declared: Line 49 (Source lines: 50-63)
# Address: 0x0daf38a8 - 0x0daf39fc (Size: 340 bytes, Frame: 224)
.globl __glTextureSBModulateLA
.ent __glTextureSBModulateLA
__glTextureSBModulateLA:
    # Line 50
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    # Line 56
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 51
    lw	$s4,28216($a0)
    # Line 56
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,40(sp)
    # Line 57
    lwc1	$f14,3284($a0)
    # Line 51
    addiu	$s4,$s4,4
    # Line 57
    lwc1	$f15,168($s4)
    # Line 50
    lui	$at,0x10
    addiu	$at,$at,16320
    # Line 57
    mul.s	$f15,$f15,$f16
    # Line 50
    # addu	gp,t9,at
    # Line 57
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 59
    lwc1	$f0,0($s0)
    lwc1	$f20,0($s8)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 60
    lwc1	$f3,4($s8)
    lwc1	$f4,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 61
    lwc1	$f1,8($s8)
    lwc1	$f2,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 62
    lwc1	$f20,12($s8)
    lwc1	$f0,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,40(sp)
    # Line 63
    ld	$s1,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 62
    swc1	$f20,12($s8)
    # Line 63
    ld	$s8,32($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBModulateLA

# Function: __glTextureSBModulateRGB
# Declared: Line 66 (Source lines: 67-78)
# Address: 0x0daf39fc - 0x0daf3b0c (Size: 272 bytes, Frame: 224)
.globl __glTextureSBModulateRGB
.ent __glTextureSBModulateRGB
__glTextureSBModulateRGB:
    # Line 73
    lwc1	$f14,3284($a0)
    # Line 67
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    sd	$s4,8($sp)
    # Line 68
    lw	$s4,28216($a0)
    # sd	gp,40(sp)
    # Line 73
    lwc1	$f15,0($a2)
    # Line 68
    addiu	$s4,$s4,4
    # Line 73
    lwc1	$f16,168($s4)
    # Line 67
    lui	$at,0x10
    addiu	$at,$at,15980
    # Line 73
    mul.s	$f15,$f15,$f16
    # Line 67
    # addu	gp,t9,at
    # Line 73
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 75
    lwc1	$f4,0($s0)
    lwc1	$f3,0($s8)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s8)
    # Line 76
    lwc1	$f1,4($s8)
    lwc1	$f2,4($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($s8)
    # Line 77
    lwc1	$f30,8($s8)
    lwc1	$f0,8($s0)
    mul.s	$f30,$f30,$f0
    # ld	gp,40(sp)
    # Line 78
    ld	$s1,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 77
    swc1	$f30,8($s8)
    # Line 78
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBModulateRGB

# Function: __glTextureSBModulateRGBA
# Declared: Line 81 (Source lines: 82-95)
# Address: 0x0daf3b0c - 0x0daf3c54 (Size: 328 bytes, Frame: 224)
.globl __glTextureSBModulateRGBA
.ent __glTextureSBModulateRGBA
__glTextureSBModulateRGBA:
    # Line 89
    lwc1	$f14,3284($a0)
    # Line 82
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    sd	$s4,8($sp)
    # Line 84
    lw	$s4,28216($a0)
    # sd	gp,40(sp)
    # Line 89
    lwc1	$f15,0($a2)
    # Line 84
    addiu	$s4,$s4,4
    # Line 89
    lwc1	$f16,168($s4)
    # Line 82
    lui	$at,0x10
    addiu	$at,$at,15708
    # Line 89
    mul.s	$f15,$f15,$f16
    # Line 82
    # addu	gp,t9,at
    # Line 89
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 91
    lwc1	$f0,0($s0)
    lwc1	$f20,0($s8)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 92
    lwc1	$f3,4($s8)
    lwc1	$f4,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 93
    lwc1	$f1,8($s8)
    lwc1	$f2,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 94
    lwc1	$f20,12($s8)
    lwc1	$f0,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,40(sp)
    # Line 95
    ld	$s1,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 94
    swc1	$f20,12($s8)
    # Line 95
    ld	$s8,32($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBModulateRGBA

# Function: __glTextureSBModulateA
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0daf3c54 - 0x0daf3cc8 (Size: 116 bytes, Frame: 192)
.globl __glTextureSBModulateA
.ent __glTextureSBModulateA
__glTextureSBModulateA:
    # Line 105
    lwc1	$f14,3284($a0)
    # Line 99
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    # Line 100
    lw	$at,28216($a0)
    sd	$ra,0($sp)
    # Line 105
    lwc1	$f15,16($a2)
    lwc1	$f16,184($at)
    # sd	gp,16(sp)
    # Line 99
    lui	$v0,0x10
    # Line 105
    mul.s	$f15,$f15,$f16
    # Line 99
    addiu	$v0,$v0,15380
    # addu	gp,t9,v0
    # Line 105
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,200($at)
    mtc1	$zero,$f13
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$v1,24($sp)
    swc1	$f0,16($v1)
    # Line 107
    lwc1	$f1,12($s8)
    mul.s	$f0,$f1,$f0
    # ld	gp,16(sp)
    # Line 108
    ld	$ra,0($sp)
    # Line 107
    swc1	$f0,12($s8)
    # Line 108
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateA

# Function: __glTextureSBModulateI
# Declared: Line 111 (Source lines: 112-125)
# Address: 0x0daf3cc8 - 0x0daf3e20 (Size: 344 bytes, Frame: 224)
.globl __glTextureSBModulateI
.ent __glTextureSBModulateI
__glTextureSBModulateI:
    # Line 112
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    # Line 118
    lwc1	$f16,20($a2)
    sd	$s4,8($sp)
    # Line 113
    lw	$s4,28216($a0)
    # Line 118
    swc1	$f16,16($a2)
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,40(sp)
    # Line 119
    lwc1	$f14,3284($a0)
    # Line 113
    addiu	$s4,$s4,4
    # Line 119
    lwc1	$f15,168($s4)
    # Line 112
    lui	$at,0x10
    addiu	$at,$at,15264
    # Line 119
    mul.s	$f15,$f15,$f16
    # Line 112
    # addu	gp,t9,at
    # Line 119
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 121
    lwc1	$f0,0($s0)
    lwc1	$f20,0($s8)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 122
    lwc1	$f3,4($s8)
    lwc1	$f4,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 123
    lwc1	$f1,8($s8)
    lwc1	$f2,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 124
    lwc1	$f20,12($s8)
    lwc1	$f0,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,40(sp)
    # Line 125
    ld	$s1,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 124
    swc1	$f20,12($s8)
    # Line 125
    ld	$s8,32($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBModulateI

# Function: __glTextureSBDecalRGB
# Declared: Line 130 (Source lines: 131-138)
# Address: 0x0daf3e20 - 0x0daf3f30 (Size: 272 bytes, Frame: 224)
.globl __glTextureSBDecalRGB
.ent __glTextureSBDecalRGB
__glTextureSBDecalRGB:
    # Line 134
    lwc1	$f14,3284($a0)
    # Line 131
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    sd	$s4,8($sp)
    # Line 132
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 134
    lwc1	$f15,0($a2)
    # Line 132
    addiu	$s4,$s4,4
    # Line 134
    lwc1	$f16,168($s4)
    # Line 131
    lui	$at,0x10
    addiu	$at,$at,14920
    # Line 134
    mul.s	$f15,$f15,$f16
    # Line 131
    # addu	gp,t9,at
    # Line 134
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 135
    lwc1	$f3,0($s0)
    lwc1	$f4,30756($s1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s8)
    # Line 136
    lwc1	$f2,30760($s1)
    lwc1	$f1,4($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($s8)
    # Line 137
    lwc1	$f0,30764($s1)
    lwc1	$f30,8($s0)
    mul.s	$f30,$f30,$f0
    # ld	gp,32(sp)
    # Line 138
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 137
    swc1	$f30,8($s8)
    # Line 138
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBDecalRGB

# Function: __glTextureSBDecalRGBA
# Declared: Line 141 (Source lines: 142-157)
# Address: 0x0daf3f30 - 0x0daf40a0 (Size: 368 bytes, Frame: 224)
.globl __glTextureSBDecalRGBA
.ent __glTextureSBDecalRGBA
__glTextureSBDecalRGBA:
    # Line 147
    lwc1	$f14,3284($a0)
    # Line 142
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    sd	$s4,8($sp)
    # Line 145
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 147
    lwc1	$f15,0($a2)
    # Line 145
    addiu	$s4,$s4,4
    # Line 147
    lwc1	$f16,168($s4)
    # Line 142
    lui	$at,0x10
    addiu	$at,$at,14648
    # Line 147
    mul.s	$f15,$f15,$f16
    # Line 142
    # addu	gp,t9,at
    # Line 147
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 149
    lwc1	$f2,3284($s1)
    # Line 151
    lwc1	$f4,0($s0)
    # Line 149
    sub.s	$f2,$f2,$f0
    # Line 151
    mul.s	$f4,$f4,$f0
    lwc1	$f1,0($s8)
    lwc1	$f3,30756($s1)
    mul.s	$f1,$f1,$f2
    mul.s	$f3,$f3,$f4
    add.s	$f1,$f1,$f3
    swc1	$f1,0($s8)
    # Line 153
    lwc1	$f20,4($s0)
    lwc1	$f3,4($s8)
    mul.s	$f20,$f20,$f0
    mul.s	$f3,$f3,$f2
    lwc1	$f4,30760($s1)
    mul.s	$f4,$f4,$f20
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 155
    lwc1	$f1,8($s0)
    lwc1	$f20,8($s8)
    mul.s	$f1,$f1,$f0
    mul.s	$f20,$f20,$f2
    lwc1	$f0,30764($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,32(sp)
    # Line 157
    ld	$s4,8($sp)
    # Line 155
    add.s	$f20,$f20,$f0
    # Line 157
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 155
    swc1	$f20,8($s8)
    # Line 157
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBDecalRGBA

# Function: __glTextureSBBlendL
# Declared: Line 162 (Source lines: 163-180)
# Address: 0x0daf40a0 - 0x0daf41fc (Size: 348 bytes, Frame: 224)
.globl __glTextureSBBlendL
.ent __glTextureSBBlendL
__glTextureSBBlendL:
    # Line 163
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 166
    lw	$t8,2376($a0)
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    addiu	$t8,$t8,4
    sd	$t8,40($sp)
    # Line 169
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 167
    lw	$s4,28216($a0)
    # Line 169
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 170
    lwc1	$f14,3284($a0)
    # Line 167
    addiu	$s4,$s4,4
    # Line 170
    lwc1	$f15,168($s4)
    # Line 163
    lui	$at,0x10
    addiu	$at,$at,14280
    # Line 170
    mul.s	$f15,$f15,$f16
    # Line 163
    # addu	gp,t9,at
    # Line 170
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 171
    lwc1	$f2,0($s0)
    # Line 175
    lwc1	$f1,3284($s1)
    # Line 177
    sub.s	$f30,$f1,$f2
    lwc1	$f5,0($s8)
    ld	$ra,40($sp)
    mul.s	$f5,$f5,$f30
    lwc1	$f30,0($ra)
    mul.s	$f30,$f30,$f2
    # Line 172
    lwc1	$f4,4($s0)
    # Line 177
    add.s	$f5,$f5,$f30
    # Line 175
    sub.s	$f3,$f1,$f4
    # Line 178
    lwc1	$f2,4($s8)
    # Line 177
    swc1	$f5,0($s8)
    # Line 178
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($ra)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    # Line 176
    sub.s	$f1,$f1,$f0
    # Line 179
    lwc1	$f30,8($s8)
    # Line 178
    swc1	$f2,4($s8)
    # Line 179
    mul.s	$f30,$f30,$f1
    lwc1	$f1,8($ra)
    mul.s	$f0,$f1,$f0
    # ld	gp,32(sp)
    # Line 180
    ld	$s0,56($sp)
    # Line 179
    add.s	$f30,$f30,$f0
    # Line 180
    ld	$s4,8($sp)
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    # Line 179
    swc1	$f30,8($s8)
    # Line 180
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBBlendL

# Function: __glTextureSBBlendLA
# Declared: Line 183 (Source lines: 184-203)
# Address: 0x0daf41fc - 0x0daf4390 (Size: 404 bytes, Frame: 224)
.globl __glTextureSBBlendLA
.ent __glTextureSBBlendLA
__glTextureSBBlendLA:
    # Line 184
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 187
    lw	$t8,2376($a0)
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    addiu	$t8,$t8,4
    sd	$t8,40($sp)
    # Line 190
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 188
    lw	$s4,28216($a0)
    # Line 190
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 191
    lwc1	$f14,3284($a0)
    # Line 188
    addiu	$s4,$s4,4
    # Line 191
    lwc1	$f15,168($s4)
    # Line 184
    lui	$at,0x10
    addiu	$at,$at,13932
    # Line 191
    mul.s	$f15,$f15,$f16
    # Line 184
    # addu	gp,t9,at
    # Line 191
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 192
    lwc1	$f2,0($s0)
    # Line 197
    lwc1	$f1,3284($s1)
    # Line 199
    sub.s	$f20,$f1,$f2
    lwc1	$f6,0($s8)
    ld	$ra,40($sp)
    mul.s	$f6,$f6,$f20
    lwc1	$f20,0($ra)
    mul.s	$f20,$f20,$f2
    # Line 193
    lwc1	$f5,4($s0)
    # Line 199
    add.s	$f6,$f6,$f20
    # Line 197
    sub.s	$f4,$f1,$f5
    # Line 200
    lwc1	$f2,4($s8)
    # Line 194
    lwc1	$f3,8($s0)
    # Line 199
    swc1	$f6,0($s8)
    # Line 200
    mul.s	$f2,$f2,$f4
    lwc1	$f4,4($ra)
    mul.s	$f4,$f4,$f5
    add.s	$f2,$f2,$f4
    # Line 198
    sub.s	$f1,$f1,$f3
    # Line 201
    lwc1	$f20,8($s8)
    # Line 200
    swc1	$f2,4($s8)
    # Line 201
    mul.s	$f20,$f20,$f1
    lwc1	$f1,8($ra)
    # Line 202
    lwc1	$f2,12($s8)
    # Line 201
    mul.s	$f1,$f1,$f3
    # Line 202
    mul.s	$f0,$f2,$f0
    # ld	gp,32(sp)
    # Line 203
    ld	$s0,56($sp)
    ld	$s4,8($sp)
    # Line 201
    add.s	$f20,$f20,$f1
    # Line 203
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    # Line 202
    swc1	$f0,12($s8)
    # Line 201
    swc1	$f20,8($s8)
    # Line 203
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBBlendLA

# Function: __glTextureSBBlendRGB
# Declared: Line 206 (Source lines: 207-223)
# Address: 0x0daf4390 - 0x0daf44e0 (Size: 336 bytes, Frame: 224)
.globl __glTextureSBBlendRGB
.ent __glTextureSBBlendRGB
__glTextureSBBlendRGB:
    # Line 213
    lwc1	$f14,3284($a0)
    # Line 207
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 210
    lw	$t8,2376($a0)
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    addiu	$t8,$t8,4
    sd	$t8,40($sp)
    sd	$s4,8($sp)
    # Line 211
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 213
    lwc1	$f15,0($a2)
    # Line 211
    addiu	$s4,$s4,4
    # Line 213
    lwc1	$f16,168($s4)
    # Line 207
    lui	$at,0x10
    addiu	$at,$at,13528
    # Line 213
    mul.s	$f15,$f15,$f16
    # Line 207
    # addu	gp,t9,at
    # Line 213
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 214
    lwc1	$f2,0($s0)
    # Line 218
    lwc1	$f1,3284($s1)
    # Line 220
    sub.s	$f30,$f1,$f2
    lwc1	$f5,0($s8)
    ld	$ra,40($sp)
    mul.s	$f5,$f5,$f30
    lwc1	$f30,0($ra)
    mul.s	$f30,$f30,$f2
    # Line 215
    lwc1	$f4,4($s0)
    # Line 220
    add.s	$f5,$f5,$f30
    # Line 218
    sub.s	$f3,$f1,$f4
    # Line 221
    lwc1	$f2,4($s8)
    # Line 220
    swc1	$f5,0($s8)
    # Line 221
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($ra)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    # Line 219
    sub.s	$f1,$f1,$f0
    # Line 222
    lwc1	$f30,8($s8)
    # Line 221
    swc1	$f2,4($s8)
    # Line 222
    mul.s	$f30,$f30,$f1
    lwc1	$f1,8($ra)
    mul.s	$f0,$f1,$f0
    # ld	gp,32(sp)
    # Line 223
    ld	$s0,56($sp)
    # Line 222
    add.s	$f30,$f30,$f0
    # Line 223
    ld	$s4,8($sp)
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    # Line 222
    swc1	$f30,8($s8)
    # Line 223
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBBlendRGB

# Function: __glTextureSBBlendRGBA
# Declared: Line 226 (Source lines: 227-244)
# Address: 0x0daf44e0 - 0x0daf466c (Size: 396 bytes, Frame: 224)
.globl __glTextureSBBlendRGBA
.ent __glTextureSBBlendRGBA
__glTextureSBBlendRGBA:
    # Line 233
    lwc1	$f14,3284($a0)
    # Line 227
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 230
    lw	$t8,2376($a0)
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    addiu	$t8,$t8,4
    sd	$t8,40($sp)
    sd	$s4,8($sp)
    # Line 231
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 233
    lwc1	$f15,0($a2)
    # Line 231
    addiu	$s4,$s4,4
    # Line 233
    lwc1	$f16,168($s4)
    # Line 227
    lui	$at,0x10
    addiu	$at,$at,13192
    # Line 233
    mul.s	$f15,$f15,$f16
    # Line 227
    # addu	gp,t9,at
    # Line 233
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 234
    lwc1	$f1,0($s0)
    # Line 238
    lwc1	$f2,3284($s1)
    # Line 240
    sub.s	$f0,$f2,$f1
    lwc1	$f20,0($s8)
    ld	$ra,40($sp)
    mul.s	$f20,$f20,$f0
    lwc1	$f0,0($ra)
    mul.s	$f0,$f0,$f1
    # Line 235
    lwc1	$f6,4($s0)
    # Line 240
    add.s	$f20,$f20,$f0
    # Line 238
    sub.s	$f5,$f2,$f6
    # Line 241
    lwc1	$f4,4($s8)
    # Line 236
    lwc1	$f3,8($s0)
    # Line 240
    swc1	$f20,0($s8)
    # Line 241
    mul.s	$f4,$f4,$f5
    lwc1	$f5,4($ra)
    mul.s	$f5,$f5,$f6
    add.s	$f4,$f4,$f5
    # Line 239
    sub.s	$f2,$f2,$f3
    # Line 242
    lwc1	$f1,8($s8)
    # Line 241
    swc1	$f4,4($s8)
    # Line 242
    mul.s	$f1,$f1,$f2
    lwc1	$f2,8($ra)
    mul.s	$f2,$f2,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 243
    lwc1	$f20,12($s8)
    lwc1	$f0,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,32(sp)
    # Line 244
    ld	$s4,8($sp)
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    ld	$s0,56($sp)
    # Line 243
    swc1	$f20,12($s8)
    # Line 244
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBBlendRGBA

# Function: __glTextureSBBlendA
# Declared: Line 247 (Source lines: 248-256)
# Address: 0x0daf466c - 0x0daf46e0 (Size: 116 bytes, Frame: 192)
.globl __glTextureSBBlendA
.ent __glTextureSBBlendA
__glTextureSBBlendA:
    # Line 254
    lwc1	$f14,3284($a0)
    # Line 248
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    # Line 249
    lw	$at,28216($a0)
    sd	$ra,0($sp)
    # Line 254
    lwc1	$f15,16($a2)
    lwc1	$f16,184($at)
    # sd	gp,16(sp)
    # Line 248
    lui	$v0,0x10
    # Line 254
    mul.s	$f15,$f15,$f16
    # Line 248
    addiu	$v0,$v0,12796
    # addu	gp,t9,v0
    # Line 254
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,200($at)
    mtc1	$zero,$f13
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$v1,24($sp)
    swc1	$f0,16($v1)
    # Line 255
    lwc1	$f1,12($s8)
    mul.s	$f0,$f1,$f0
    # ld	gp,16(sp)
    # Line 256
    ld	$ra,0($sp)
    # Line 255
    swc1	$f0,12($s8)
    # Line 256
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendA

# Function: __glTextureSBBlendI
# Declared: Line 259 (Source lines: 260-280)
# Address: 0x0daf46e0 - 0x0daf4888 (Size: 424 bytes, Frame: 224)
.globl __glTextureSBBlendI
.ent __glTextureSBBlendI
__glTextureSBBlendI:
    # Line 260
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 263
    lw	$t8,2376($a0)
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    addiu	$t8,$t8,4
    sd	$t8,40($sp)
    # Line 266
    lwc1	$f16,20($a2)
    sd	$s4,8($sp)
    # Line 264
    lw	$s4,28216($a0)
    # Line 266
    swc1	$f16,16($a2)
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 267
    lwc1	$f14,3284($a0)
    # Line 264
    addiu	$s4,$s4,4
    # Line 267
    lwc1	$f15,168($s4)
    # Line 260
    lui	$at,0x10
    addiu	$at,$at,12680
    # Line 267
    mul.s	$f15,$f15,$f16
    # Line 260
    # addu	gp,t9,at
    # Line 267
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 268
    lwc1	$f4,0($s0)
    # Line 273
    lwc1	$f1,3284($s1)
    # Line 276
    sub.s	$f3,$f1,$f4
    lwc1	$f2,0($s8)
    ld	$ra,40($sp)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($ra)
    mul.s	$f3,$f3,$f4
    # Line 269
    lwc1	$f20,4($s0)
    # Line 276
    add.s	$f2,$f2,$f3
    # Line 273
    sub.s	$f6,$f1,$f20
    # Line 277
    lwc1	$f5,4($s8)
    # Line 270
    lwc1	$f4,8($s0)
    # Line 276
    swc1	$f2,0($s8)
    # Line 277
    mul.s	$f5,$f5,$f6
    lwc1	$f6,4($ra)
    mul.s	$f6,$f6,$f20
    add.s	$f5,$f5,$f6
    # Line 274
    sub.s	$f3,$f1,$f4
    # Line 278
    lwc1	$f2,8($s8)
    # Line 277
    swc1	$f5,4($s8)
    # Line 278
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($ra)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    # Line 275
    sub.s	$f1,$f1,$f0
    # Line 279
    lwc1	$f20,12($s8)
    # Line 278
    swc1	$f2,8($s8)
    # Line 279
    mul.s	$f20,$f20,$f1
    lwc1	$f1,12($ra)
    mul.s	$f0,$f1,$f0
    # ld	gp,32(sp)
    # Line 280
    ld	$s4,8($sp)
    # Line 279
    add.s	$f20,$f20,$f0
    # Line 280
    ld	$s1,48($sp)
    ld	$s0,56($sp)
    ld	$ra,16($sp)
    # Line 279
    swc1	$f20,12($s8)
    # Line 280
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBBlendI

# Function: __glTextureSBReplaceL
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0daf4888 - 0x0daf49a4 (Size: 284 bytes, Frame: 224)
.globl __glTextureSBReplaceL
.ent __glTextureSBReplaceL
__glTextureSBReplaceL:
    # Line 286
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    # Line 289
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 287
    lw	$s4,28216($a0)
    # Line 289
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 290
    lwc1	$f14,3284($a0)
    # Line 287
    addiu	$s4,$s4,4
    # Line 290
    lwc1	$f15,168($s4)
    # Line 286
    lui	$at,0x10
    addiu	$at,$at,12256
    # Line 290
    mul.s	$f15,$f15,$f16
    # Line 286
    # addu	gp,t9,at
    # Line 290
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 291
    lwc1	$f3,0($s0)
    lwc1	$f4,30756($s1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s8)
    # Line 292
    lwc1	$f2,30760($s1)
    lwc1	$f1,4($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($s8)
    # Line 293
    lwc1	$f0,30764($s1)
    lwc1	$f30,8($s0)
    mul.s	$f30,$f30,$f0
    # ld	gp,32(sp)
    # Line 294
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 293
    swc1	$f30,8($s8)
    # Line 294
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBReplaceL

# Function: __glTextureSBReplaceLA
# Declared: Line 297 (Source lines: 298-307)
# Address: 0x0daf49a4 - 0x0daf4af8 (Size: 340 bytes, Frame: 224)
.globl __glTextureSBReplaceLA
.ent __glTextureSBReplaceLA
__glTextureSBReplaceLA:
    # Line 298
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    # Line 301
    lwc1	$f16,12($a2)
    sd	$s4,8($sp)
    # Line 299
    lw	$s4,28216($a0)
    # Line 301
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 302
    lwc1	$f14,3284($a0)
    # Line 299
    addiu	$s4,$s4,4
    # Line 302
    lwc1	$f15,168($s4)
    # Line 298
    lui	$at,0x10
    addiu	$at,$at,11972
    # Line 302
    mul.s	$f15,$f15,$f16
    # Line 298
    # addu	gp,t9,at
    # Line 302
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 303
    lwc1	$f20,0($s0)
    lwc1	$f0,30756($s1)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 304
    lwc1	$f4,30760($s1)
    lwc1	$f3,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 305
    lwc1	$f2,30764($s1)
    lwc1	$f1,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 306
    lwc1	$f0,30796($s1)
    lwc1	$f20,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,32(sp)
    # Line 307
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 306
    swc1	$f20,12($s8)
    # Line 307
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBReplaceLA

# Function: __glTextureSBReplaceRGB
# Declared: Line 310 (Source lines: 311-318)
# Address: 0x0daf4af8 - 0x0daf4c08 (Size: 272 bytes, Frame: 224)
.globl __glTextureSBReplaceRGB
.ent __glTextureSBReplaceRGB
__glTextureSBReplaceRGB:
    # Line 314
    lwc1	$f14,3284($a0)
    # Line 311
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    sd	$s4,8($sp)
    # Line 312
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 314
    lwc1	$f15,0($a2)
    # Line 312
    addiu	$s4,$s4,4
    # Line 314
    lwc1	$f16,168($s4)
    # Line 311
    lui	$at,0x10
    addiu	$at,$at,11632
    # Line 314
    mul.s	$f15,$f15,$f16
    # Line 311
    # addu	gp,t9,at
    # Line 314
    mtc1	$zero,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f30
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f30
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    # Line 315
    lwc1	$f3,0($s0)
    lwc1	$f4,30756($s1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s8)
    # Line 316
    lwc1	$f2,30760($s1)
    lwc1	$f1,4($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($s8)
    # Line 317
    lwc1	$f0,30764($s1)
    lwc1	$f30,8($s0)
    mul.s	$f30,$f30,$f0
    # ld	gp,32(sp)
    # Line 318
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 317
    swc1	$f30,8($s8)
    # Line 318
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBReplaceRGB

# Function: __glTextureSBReplaceRGBA
# Declared: Line 321 (Source lines: 322-330)
# Address: 0x0daf4c08 - 0x0daf4d50 (Size: 328 bytes, Frame: 224)
.globl __glTextureSBReplaceRGBA
.ent __glTextureSBReplaceRGBA
__glTextureSBReplaceRGBA:
    # Line 325
    lwc1	$f14,3284($a0)
    # Line 322
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    sd	$s4,8($sp)
    # Line 323
    lw	$s4,28216($a0)
    # sd	gp,32(sp)
    # Line 325
    lwc1	$f15,0($a2)
    # Line 323
    addiu	$s4,$s4,4
    # Line 325
    lwc1	$f16,168($s4)
    # Line 322
    lui	$at,0x10
    addiu	$at,$at,11360
    # Line 325
    mul.s	$f15,$f15,$f16
    # Line 322
    # addu	gp,t9,at
    # Line 325
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 326
    lwc1	$f20,0($s0)
    lwc1	$f0,30756($s1)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 327
    lwc1	$f4,30760($s1)
    lwc1	$f3,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 328
    lwc1	$f2,30764($s1)
    lwc1	$f1,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 329
    lwc1	$f0,30796($s1)
    lwc1	$f20,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,32(sp)
    # Line 330
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 329
    swc1	$f20,12($s8)
    # Line 330
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBReplaceRGBA

# Function: __glTextureSBReplaceA
# Declared: Line 333 (Source lines: 334-339)
# Address: 0x0daf4d50 - 0x0daf4dcc (Size: 124 bytes, Frame: 208)
.globl __glTextureSBReplaceA
.ent __glTextureSBReplaceA
__glTextureSBReplaceA:
    # Line 337
    lwc1	$f14,3284($a0)
    # Line 334
    addiu	$sp,$sp,-80
    sd	$a1,32($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$a2,24($sp)
    # Line 335
    lw	$at,28216($a0)
    sd	$ra,0($sp)
    # Line 337
    lwc1	$f15,16($a2)
    lwc1	$f16,184($at)
    # sd	gp,16(sp)
    # Line 334
    lui	$v0,0x10
    # Line 337
    mul.s	$f15,$f15,$f16
    # Line 334
    addiu	$v0,$v0,11032
    # addu	gp,t9,v0
    # Line 337
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,200($at)
    mtc1	$zero,$f13
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a0,24($sp)
    swc1	$f0,16($a0)
    # Line 338
    lwc1	$f1,30796($s8)
    mul.s	$f0,$f1,$f0
    # ld	gp,16(sp)
    ld	$v1,32($sp)
    # Line 339
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 338
    swc1	$f0,12($v1)
.end __glTextureSBReplaceA

# Function: __glTextureSBReplaceI
# Declared: Line 342 (Source lines: 343-352)
# Address: 0x0daf4dcc - 0x0daf4f24 (Size: 344 bytes, Frame: 224)
.globl __glTextureSBReplaceI
.ent __glTextureSBReplaceI
__glTextureSBReplaceI:
    # Line 343
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sdc1	$f20,0($sp)
    # Line 346
    lwc1	$f16,20($a2)
    sd	$s4,8($sp)
    # Line 344
    lw	$s4,28216($a0)
    # Line 346
    swc1	$f16,16($a2)
    swc1	$f16,8($a2)
    swc1	$f16,4($a2)
    swc1	$f16,0($a2)
    # sd	gp,32(sp)
    # Line 347
    lwc1	$f14,3284($a0)
    # Line 344
    addiu	$s4,$s4,4
    # Line 347
    lwc1	$f15,168($s4)
    # Line 343
    lui	$at,0x10
    addiu	$at,$at,10908
    # Line 347
    mul.s	$f15,$f15,$f16
    # Line 343
    # addu	gp,t9,at
    # Line 347
    mtc1	$zero,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    mov.s	$f13,$f20
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mov.s	$f13,$f20
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    swc1	$f0,16($s0)
    # Line 348
    lwc1	$f20,0($s0)
    lwc1	$f0,30756($s1)
    mul.s	$f20,$f20,$f0
    swc1	$f20,0($s8)
    # Line 349
    lwc1	$f4,30760($s1)
    lwc1	$f3,4($s0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 350
    lwc1	$f2,30764($s1)
    lwc1	$f1,8($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($s8)
    # Line 351
    lwc1	$f0,30796($s1)
    lwc1	$f20,16($s0)
    mul.s	$f20,$f20,$f0
    # ld	gp,32(sp)
    # Line 352
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 351
    swc1	$f20,12($s8)
    # Line 352
    ld	$s8,24($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSBReplaceI

# Function: __glTextureCTModulateL
# Declared: Line 33 (Source lines: 34-46)
# Address: 0x0daf4f24 - 0x0daf52c0 (Size: 924 bytes, Frame: 208)
.globl __glTextureCTModulateL
.ent __glTextureCTModulateL
__glTextureCTModulateL:
    # Line 41
    li	$at,6409
    # Line 34
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$a0,0($sp)
    # sd	gp,32(sp)
    # Line 40
    lwc1	$f5,12($a2)
    # Line 34
    lui	$v1,0x10
    # Line 35
    lw	$v0,28216($a0)
    # Line 40
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 34
    addiu	$v1,$v1,10564
    # Line 41
    lw	$a4,5444($a0)
    # Line 34
    # addu	gp,t9,v1
    # Line 35
    addiu	$v0,$v0,4
    # Line 41
    beq	$a4,$at,.L0daf5148
    sd	$v0,8($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf5148
    li	$at,0x8049
    beq	$a4,$at,.L0daf5148
    li	$v0,6407
    beq	$a4,$v0,.L0daf4fd0
    li	$v1,6408
    beq	$a4,$v1,.L0daf4fd0
.L0daf4f90:
    ld	$a0,16($sp)
    # Line 43
    lwc1	$f4,0($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a0)
    # Line 44
    lwc1	$f2,4($a0)
    lwc1	$f3,4($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 45
    lwc1	$f0,8($a0)
    lwc1	$f1,8($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,32(sp)
    # Line 46
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 45
    swc1	$f0,8($a0)
.L0daf4fd0:
    ld	$a1,8($sp)
    # Line 41
    lwc1	$f15,168($a1)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,40($sp)
    ld	$a2,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a1)
    lwc1	$f14,3284($a2)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$t1,5384($a3)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($a3)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($a3)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    ld	$a4,8($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a4)
    lwc1	$f14,3284($a3)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$t2,0($sp)
    lw	$v0,5384($t2)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($t2)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($t2)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,4($t8)
    ld	$t3,8($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($t2)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$v1,0($sp)
    lw	$at,5384($v1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($v1)
    mfc1	$ra,$f1
    nop
    mult	$a3,$ra
    lwc1	$f5,0($s0)
    lw	$v1,5376($v1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,8($v1)
    ld	$ra,40($sp)
    b	.L0daf4f90
    swc1	$f0,8($s0)
.L0daf5148:
    ld	$v0,8($sp)
    lwc1	$f15,168($v0)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,40($sp)
    ld	$v1,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($v0)
    lwc1	$f14,3284($v1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a0,0($sp)
    lw	$a6,5384($a0)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a4,5448($a0)
    mfc1	$a5,$f18
    nop
    mult	$a4,$a5
    lw	$a2,5376($a0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f17,0($a2)
    ld	$a1,8($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a1)
    lwc1	$f14,3284($a0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a7,0($sp)
    lw	$t9,5384($a7)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($a7)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($a7)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    ld	$t0,8($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($t0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t0)
    lwc1	$f14,3284($a7)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$ra,0($sp)
    lw	$v1,5384($ra)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$at,5448($ra)
    mfc1	$v0,$f1
    nop
    mult	$at,$v0
    lwc1	$f5,0($s0)
    lw	$ra,5376($ra)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf4f90
    swc1	$f0,8($s0)
.end __glTextureCTModulateL

# Function: __glTextureCTModulateLA
# Declared: Line 49 (Source lines: 50-63)
# Address: 0x0daf52c0 - 0x0daf5990 (Size: 1744 bytes, Frame: 208)
.globl __glTextureCTModulateLA
.ent __glTextureCTModulateLA
__glTextureCTModulateLA:
    # Line 50
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,24(sp)
    lui	$at,0x10
    # Line 56
    lwc1	$f5,12($a2)
    sd	$s4,0($sp)
    # Line 51
    lw	$s4,28216($a0)
    # Line 56
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 50
    addiu	$at,$at,9640
    # Line 57
    lw	$a4,5444($a0)
    # Line 50
    # addu	gp,t9,at
    # Line 57
    li	$at,6410
    beq	$a4,$at,.L0daf5650
    # Line 51
    addiu	$s4,$s4,4
    # Line 57
    li	$v0,6409
    beq	$a4,$v0,.L0daf5398
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf57c4
    li	$a3,6408
    beq	$a4,$a3,.L0daf56cc
    li	$at,6407
    beq	$a4,$at,.L0daf54f4
    li	$v0,6406
    beql	$a4,$v0,.L0daf5748
    lwc1	$f16,180($s4)
.L0daf5340:
    # Line 59
    lwc1	$f1,0($s8)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($s8)
    # Line 60
    lwc1	$f4,4($s8)
    lwc1	$f0,4($s0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 61
    lwc1	$f2,8($s8)
    lwc1	$f3,8($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 62
    lwc1	$f0,12($s8)
    lwc1	$f1,16($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,24(sp)
    # Line 63
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    # Line 62
    swc1	$f0,12($s8)
    # Line 63
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf5398:
    sd	$ra,40($sp)
.L0daf539c:
    # Line 57
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf5340
    swc1	$f0,8($s0)
.L0daf54f4:
    sd	$ra,40($sp)
.L0daf54f8:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf5340
    swc1	$f0,8($s0)
.L0daf5650:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s0)
    b	.L0daf539c
    swc1	$f0,16($s0)
.L0daf56cc:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s0)
    b	.L0daf54f8
    swc1	$f0,16($s0)
.L0daf5748:
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lwc1	$f5,0($s0)
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf5340
    swc1	$f0,16($s0)
.L0daf57c4:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf5340
    swc1	$f0,16($s0)
.end __glTextureCTModulateLA

# Function: __glTextureCTModulateRGB
# Declared: Line 66 (Source lines: 67-78)
# Address: 0x0daf5990 - 0x0daf5d20 (Size: 912 bytes, Frame: 208)
.globl __glTextureCTModulateRGB
.ent __glTextureCTModulateRGB
__glTextureCTModulateRGB:
    # Line 73
    li	$at,6409
    # Line 67
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$a1,16($sp)
    sd	$a0,0($sp)
    # sd	gp,32(sp)
    lui	$v1,0x10
    addiu	$v1,$v1,7896
    # Line 68
    lw	$v0,28216($a0)
    # Line 73
    lw	$a4,5444($a0)
    # Line 67
    # addu	gp,t9,v1
    # Line 68
    addiu	$v0,$v0,4
    # Line 73
    beq	$a4,$at,.L0daf5ba8
    sd	$v0,8($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf5ba8
    li	$at,0x8049
    beq	$a4,$at,.L0daf5ba8
    li	$v0,6407
    beq	$a4,$v0,.L0daf5a30
    li	$v1,6408
    beq	$a4,$v1,.L0daf5a30
.L0daf59ec:
    ld	$a0,16($sp)
    # Line 75
    lwc1	$f0,0($s0)
    lwc1	$f4,0($a0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($a0)
    # Line 76
    lwc1	$f2,4($a0)
    lwc1	$f3,4($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 77
    lwc1	$f0,8($a0)
    lwc1	$f1,8($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,32(sp)
    # Line 78
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 77
    swc1	$f0,8($a0)
.L0daf5a30:
    # Line 73
    ld	$a1,8($sp)
    lwc1	$f15,0($s0)
    lwc1	$f16,168($a1)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f16
    sd	$ra,40($sp)
    ld	$a2,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a1)
    lwc1	$f14,3284($a2)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$t1,5384($a3)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($a3)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($a3)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    ld	$a4,8($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a4)
    lwc1	$f14,3284($a3)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$t2,0($sp)
    lw	$v0,5384($t2)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($t2)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($t2)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,4($t8)
    ld	$t3,8($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($t2)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$v1,0($sp)
    lw	$at,5384($v1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($v1)
    mfc1	$ra,$f1
    nop
    mult	$a3,$ra
    lw	$v1,5376($v1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,8($v1)
    ld	$ra,40($sp)
    b	.L0daf59ec
    swc1	$f0,8($s0)
.L0daf5ba8:
    ld	$v0,8($sp)
    lwc1	$f15,0($s0)
    lwc1	$f16,168($v0)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f16
    sd	$ra,40($sp)
    ld	$v1,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($v0)
    lwc1	$f14,3284($v1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a0,0($sp)
    lw	$a6,5384($a0)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a4,5448($a0)
    mfc1	$a5,$f18
    nop
    mult	$a4,$a5
    lw	$a2,5376($a0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f17,0($a2)
    ld	$a1,8($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a1)
    lwc1	$f14,3284($a0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a7,0($sp)
    lw	$t9,5384($a7)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($a7)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($a7)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    ld	$t0,8($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($t0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t0)
    lwc1	$f14,3284($a7)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$ra,0($sp)
    lw	$v1,5384($ra)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$at,5448($ra)
    mfc1	$v0,$f1
    nop
    mult	$at,$v0
    lw	$ra,5376($ra)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf59ec
    swc1	$f0,8($s0)
.end __glTextureCTModulateRGB

# Function: __glTextureCTModulateRGBA
# Declared: Line 81 (Source lines: 82-95)
# Address: 0x0daf5d20 - 0x0daf63d8 (Size: 1720 bytes, Frame: 208)
.globl __glTextureCTModulateRGBA
.ent __glTextureCTModulateRGBA
__glTextureCTModulateRGBA:
    # Line 82
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,24(sp)
    # Line 89
    lw	$a4,5444($a0)
    # Line 82
    lui	$at,0x10
    addiu	$at,$at,6984
    # addu	gp,t9,at
    sd	$s4,0($sp)
    # Line 84
    lw	$s4,28216($a0)
    # Line 89
    li	$at,6410
    beq	$a4,$at,.L0daf60a4
    # Line 84
    addiu	$s4,$s4,4
    # Line 89
    li	$v0,6409
    beq	$a4,$v0,.L0daf5dec
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf620c
    li	$a3,6408
    beq	$a4,$a3,.L0daf611c
    li	$at,6407
    beq	$a4,$at,.L0daf5f48
    li	$v0,6406
    beql	$a4,$v0,.L0daf6194
    lwc1	$f16,180($s4)
.L0daf5d90:
    # Line 91
    lwc1	$f2,0($s0)
    lwc1	$f1,0($s8)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($s8)
    # Line 92
    lwc1	$f4,4($s8)
    lwc1	$f0,4($s0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 93
    lwc1	$f2,8($s8)
    lwc1	$f3,8($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 94
    lwc1	$f0,12($s8)
    lwc1	$f1,16($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,24(sp)
    # Line 95
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    # Line 94
    swc1	$f0,12($s8)
    # Line 95
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf5dec:
    sd	$ra,40($sp)
.L0daf5df0:
    # Line 89
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf5d90
    swc1	$f0,8($s0)
.L0daf5f48:
    sd	$ra,40($sp)
.L0daf5f4c:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf5d90
    swc1	$f0,8($s0)
.L0daf60a4:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    b	.L0daf5df0
    swc1	$f0,16($s0)
.L0daf611c:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    b	.L0daf5f4c
    swc1	$f0,16($s0)
.L0daf6194:
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf5d90
    swc1	$f0,16($s0)
.L0daf620c:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf5d90
    swc1	$f0,16($s0)
.end __glTextureCTModulateRGBA

# Function: __glTextureCTModulateA
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0daf63d8 - 0x0daf65d0 (Size: 504 bytes, Frame: 208)
.globl __glTextureCTModulateA
.ent __glTextureCTModulateA
__glTextureCTModulateA:
    # Line 99
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$a1,24($sp)
    sd	$a0,0($sp)
    # sd	gp,16(sp)
    # Line 100
    lw	$a5,28216($a0)
    # Line 105
    lw	$a4,5444($a0)
    # Line 99
    lui	$at,0x10
    addiu	$at,$at,5264
    # addu	gp,t9,at
    # Line 105
    li	$at,6406
    beq	$a4,$at,.L0daf64cc
    # Line 100
    addiu	$a5,$a5,4
    # Line 105
    li	$v0,0x8049
    beq	$a4,$v0,.L0daf64cc
    li	$v1,6408
    beq	$a4,$v1,.L0daf6550
    lwc1	$f5,16($s0)
    li	$a3,6410
    beql	$a4,$a3,.L0daf6450
    lwc1	$f15,180($a5)
.L0daf6430:
    ld	$s0,24($sp)
    # Line 107
    lwc1	$f0,12($s0)
    mul.s	$f0,$f0,$f5
    # ld	gp,16(sp)
    swc1	$f0,12($s0)
    # Line 108
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf6450:
    # Line 105
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,32($sp)
    ld	$t8,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($t8)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$ra,0($sp)
    lw	$v1,5384($ra)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($ra)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$ra,5376($ra)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f5,4($ra)
    ld	$ra,32($sp)
    b	.L0daf6430
    swc1	$f5,16($s0)
.L0daf64cc:
    lwc1	$f16,180($a5)
    lwc1	$f15,16($s0)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f16
    sd	$ra,32($sp)
    ld	$a0,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($a0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$v0,5384($a3)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($a3)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$a3,5376($a3)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,0($a3)
    ld	$ra,32($sp)
    b	.L0daf6430
    swc1	$f5,16($s0)
.L0daf6550:
    lwc1	$f15,180($a5)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,32($sp)
    ld	$v1,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($v1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$v0,5384($a3)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($a3)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$a3,5376($a3)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,12($a3)
    ld	$ra,32($sp)
    b	.L0daf6430
    swc1	$f5,16($s0)
.end __glTextureCTModulateA

# Function: __glTextureCTModulateI
# Declared: Line 111 (Source lines: 112-125)
# Address: 0x0daf65d0 - 0x0daf6c9c (Size: 1740 bytes, Frame: 208)
.globl __glTextureCTModulateI
.ent __glTextureCTModulateI
__glTextureCTModulateI:
    # Line 112
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,24(sp)
    lui	$at,0x10
    addiu	$at,$at,4760
    # Line 118
    lwc1	$f5,20($a2)
    sd	$s4,0($sp)
    # Line 113
    lw	$s4,28216($a0)
    # Line 118
    swc1	$f5,16($a2)
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 112
    # addu	gp,t9,at
    # Line 119
    lw	$a4,5444($a0)
    li	$at,6410
    # Line 118
    mov.s	$f4,$f5
    # Line 119
    beq	$a4,$at,.L0daf6968
    # Line 113
    addiu	$s4,$s4,4
    # Line 119
    li	$v0,6409
    beq	$a4,$v0,.L0daf66b0
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf6ad0
    li	$a3,6408
    beq	$a4,$a3,.L0daf69e0
    li	$at,6407
    beq	$a4,$at,.L0daf680c
    li	$v0,6406
    beql	$a4,$v0,.L0daf6a58
    lwc1	$f15,180($s4)
.L0daf6658:
    # Line 121
    lwc1	$f1,0($s8)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($s8)
    # Line 122
    lwc1	$f4,4($s8)
    lwc1	$f0,4($s0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 123
    lwc1	$f2,8($s8)
    lwc1	$f3,8($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 124
    lwc1	$f0,12($s8)
    lwc1	$f1,16($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,24(sp)
    # Line 125
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    # Line 124
    swc1	$f0,12($s8)
    # Line 125
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf66b0:
    sd	$ra,40($sp)
.L0daf66b4:
    # Line 119
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf6658
    swc1	$f0,8($s0)
.L0daf680c:
    sd	$ra,40($sp)
.L0daf6810:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf6658
    swc1	$f0,8($s0)
.L0daf6968:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s0)
    b	.L0daf66b4
    swc1	$f0,16($s0)
.L0daf69e0:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s0)
    b	.L0daf6810
    swc1	$f0,16($s0)
.L0daf6a58:
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lwc1	$f5,0($s0)
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf6658
    swc1	$f0,16($s0)
.L0daf6ad0:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf6658
    swc1	$f0,16($s0)
.end __glTextureCTModulateI

# Function: __glTextureCTDecalRGB
# Declared: Line 130 (Source lines: 131-138)
# Address: 0x0daf6c9c - 0x0daf7018 (Size: 892 bytes, Frame: 208)
.globl __glTextureCTDecalRGB
.ent __glTextureCTDecalRGB
__glTextureCTDecalRGB:
    # Line 134
    li	$at,6409
    # Line 131
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$a1,16($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lui	$v1,0x10
    addiu	$v1,$v1,3020
    # Line 132
    lw	$v0,28216($a0)
    # Line 134
    lw	$a4,5444($a0)
    # Line 131
    # addu	gp,t9,v1
    # Line 132
    addiu	$v0,$v0,4
    # Line 134
    beq	$a4,$at,.L0daf6eb0
    sd	$v0,0($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf6eb0
    li	$at,0x8049
    beq	$a4,$at,.L0daf6eb0
    li	$v0,6407
    beq	$a4,$v0,.L0daf6d48
    li	$v1,6408
    beq	$a4,$v1,.L0daf6d4c
    ld	$a1,0($sp)
.L0daf6d00:
    # Line 135
    lwc1	$f0,30756($s0)
    lwc1	$f4,0($s1)
    mul.s	$f4,$f4,$f0
    ld	$a0,16($sp)
    swc1	$f4,0($a0)
    # Line 136
    lwc1	$f3,30760($s0)
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 137
    lwc1	$f1,30764($s0)
    lwc1	$f0,8($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,8(sp)
    # Line 138
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 137
    swc1	$f0,8($a0)
.L0daf6d48:
    # Line 134
    ld	$a1,0($sp)
.L0daf6d4c:
    lwc1	$f15,0($s1)
    lwc1	$f16,168($a1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a1)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a7,5384($s0)
    addiu	$a7,$a7,-1
    mtc1	$a7,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a5,5448($s0)
    mfc1	$a6,$f18
    nop
    mult	$a5,$a6
    lw	$a3,5376($s0)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lwc1	$f17,0($a3)
    ld	$a2,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a2)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a2)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    ld	$t0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t0)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf6d00
    swc1	$f0,8($s1)
.L0daf6eb0:
    ld	$a4,0($sp)
    lwc1	$f15,0($s1)
    lwc1	$f16,168($a4)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t2,5384($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t0,5448($s0)
    mfc1	$t1,$f18
    nop
    mult	$t0,$t1
    lw	$a6,5376($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($s0)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($s0)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    ld	$t3,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf6d00
    swc1	$f0,8($s1)
.end __glTextureCTDecalRGB

# Function: __glTextureCTDecalRGBA
# Declared: Line 141 (Source lines: 142-157)
# Address: 0x0daf7018 - 0x0daf7700 (Size: 1768 bytes, Frame: 208)
.globl __glTextureCTDecalRGBA
.ent __glTextureCTDecalRGBA
__glTextureCTDecalRGBA:
    # Line 142
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    # sd	gp,16(sp)
    # Line 147
    lw	$a4,5444($a0)
    # Line 142
    lui	$at,0x10
    addiu	$at,$at,2128
    # addu	gp,t9,at
    sd	$s4,0($sp)
    # Line 145
    lw	$s4,28216($a0)
    # Line 147
    li	$at,6410
    beq	$a4,$at,.L0daf73cc
    # Line 145
    addiu	$s4,$s4,4
    # Line 147
    li	$v0,6409
    beq	$a4,$v0,.L0daf710c
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf7534
    li	$a3,6408
    beq	$a4,$a3,.L0daf7444
    li	$at,6407
    beq	$a4,$at,.L0daf726c
    li	$v0,6406
    beq	$a4,$v0,.L0daf74bc
    lwc1	$f5,16($s0)
.L0daf7088:
    # Line 149
    lwc1	$f1,3284($s1)
    # Line 151
    lwc1	$f4,0($s0)
    # Line 149
    sub.s	$f1,$f1,$f5
    # Line 151
    mul.s	$f4,$f4,$f5
    lwc1	$f2,0($s8)
    lwc1	$f3,30756($s1)
    mul.s	$f2,$f2,$f1
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,0($s8)
    # Line 153
    lwc1	$f0,4($s0)
    lwc1	$f3,4($s8)
    mul.s	$f0,$f0,$f5
    mul.s	$f3,$f3,$f1
    lwc1	$f4,30760($s1)
    mul.s	$f4,$f4,$f0
    add.s	$f3,$f3,$f4
    swc1	$f3,4($s8)
    # Line 155
    lwc1	$f2,8($s0)
    lwc1	$f0,8($s8)
    mul.s	$f2,$f2,$f5
    mul.s	$f0,$f0,$f1
    lwc1	$f1,30764($s1)
    mul.s	$f1,$f1,$f2
    # ld	gp,16(sp)
    add.s	$f0,$f0,$f1
    # Line 157
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 155
    swc1	$f0,8($s8)
    # Line 157
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf710c:
    sd	$ra,40($sp)
.L0daf7110:
    # Line 147
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,16($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf7088
    swc1	$f0,8($s0)
.L0daf726c:
    sd	$ra,40($sp)
.L0daf7270:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,16($s0)
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf7088
    swc1	$f0,8($s0)
.L0daf73cc:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    b	.L0daf7110
    swc1	$f0,16($s0)
.L0daf7444:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    b	.L0daf7270
    swc1	$f0,16($s0)
.L0daf74bc:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($s1)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f5,0($v1)
    ld	$ra,40($sp)
    b	.L0daf7088
    swc1	$f5,16($s0)
.L0daf7534:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s1)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f5,0($ra)
    ld	$ra,40($sp)
    b	.L0daf7088
    swc1	$f5,16($s0)
.end __glTextureCTDecalRGBA

# Function: __glTextureCTBlendL
# Declared: Line 162 (Source lines: 163-180)
# Address: 0x0daf7700 - 0x0daf7ae4 (Size: 996 bytes, Frame: 224)
.globl __glTextureCTBlendL
.ent __glTextureCTBlendL
__glTextureCTBlendL:
    # Line 170
    li	$at,6409
    # Line 163
    addiu	$sp,$sp,-96
    sd	$a2,0($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,40(sp)
    sd	$a1,24($sp)
    # Line 169
    lwc1	$f5,12($a2)
    # Line 163
    lui	$a1,0x10
    addiu	$a1,$a1,360
    # Line 169
    mov.s	$f7,$f5
    mov.s	$f6,$f5
    # Line 163
    # addu	gp,t9,a1
    # Line 167
    lw	$v1,28216($a0)
    # Line 166
    lw	$v0,2376($a0)
    # Line 169
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 166
    addiu	$v0,$v0,4
    # Line 170
    lw	$a4,5444($a0)
    # Line 167
    addiu	$v1,$v1,4
    sd	$v1,8($sp)
    # Line 170
    beq	$a4,$at,.L0daf796c
    sd	$v0,16($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf796c
    li	$at,0x8049
    beq	$a4,$at,.L0daf796c
    li	$v0,6407
    beq	$a4,$v0,.L0daf77f4
    li	$v1,6408
    beq	$a4,$v1,.L0daf77f8
    ld	$a4,8($sp)
.L0daf7784:
    # Line 175
    lwc1	$f1,3284($s0)
    # Line 177
    ld	$a0,24($sp)
    sub.s	$f0,$f1,$f5
    lwc1	$f4,0($a0)
    ld	$a3,16($sp)
    mul.s	$f4,$f4,$f0
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f4,$f4,$f0
    # Line 175
    sub.s	$f3,$f1,$f7
    # Line 178
    lwc1	$f2,4($a0)
    # Line 177
    swc1	$f4,0($a0)
    # Line 178
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f7
    add.s	$f2,$f2,$f3
    # Line 176
    sub.s	$f1,$f1,$f6
    # Line 179
    lwc1	$f0,8($a0)
    # Line 178
    swc1	$f2,4($a0)
    # Line 179
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f6
    # ld	gp,40(sp)
    add.s	$f0,$f0,$f1
    # Line 180
    ld	$s0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 179
    swc1	$f0,8($a0)
.L0daf77f4:
    ld	$a4,8($sp)
.L0daf77f8:
    # Line 170
    lwc1	$f15,168($a4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t3,5384($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t1,5448($s0)
    mfc1	$t2,$f18
    nop
    mult	$t1,$t2
    ld	$a6,0($sp)
    lw	$a7,5376($s0)
    mflo	$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a5,8($sp)
    swc1	$f17,0($a6)
    lwc1	$f15,4($a6)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a0,5384($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$v0,5448($s0)
    mfc1	$v1,$f18
    nop
    mult	$v0,$v1
    ld	$t9,0($sp)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,4($ra)
    ld	$t8,8($sp)
    swc1	$f17,4($t9)
    lwc1	$f15,8($t9)
    lwc1	$f16,176($t8)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t8)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    ld	$a3,0($sp)
    lw	$ra,5376($s0)
    lwc1	$f7,4($a3)
    lwc1	$f5,0($a3)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f6,8($ra)
    ld	$ra,48($sp)
    b	.L0daf7784
    swc1	$f6,8($a3)
.L0daf796c:
    ld	$a4,8($sp)
    lwc1	$f15,168($a4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t3,5384($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t1,5448($s0)
    mfc1	$t2,$f18
    nop
    mult	$t1,$t2
    ld	$a6,0($sp)
    lw	$a7,5376($s0)
    mflo	$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a5,8($sp)
    swc1	$f17,0($a6)
    lwc1	$f15,4($a6)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a0,5384($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$v0,5448($s0)
    mfc1	$v1,$f18
    nop
    mult	$v0,$v1
    ld	$t9,0($sp)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,0($ra)
    ld	$t8,8($sp)
    swc1	$f17,4($t9)
    lwc1	$f15,8($t9)
    lwc1	$f16,176($t8)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t8)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    ld	$a3,0($sp)
    lw	$ra,5376($s0)
    lwc1	$f7,4($a3)
    lwc1	$f5,0($a3)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f6,0($ra)
    ld	$ra,48($sp)
    b	.L0daf7784
    swc1	$f6,8($a3)
.end __glTextureCTBlendL

# Function: __glTextureCTBlendLA
# Declared: Line 183 (Source lines: 184-203)
# Address: 0x0daf7ae4 - 0x0daf8214 (Size: 1840 bytes, Frame: 224)
.globl __glTextureCTBlendLA
.ent __glTextureCTBlendLA
__glTextureCTBlendLA:
    # Line 184
    addiu	$sp,$sp,-96
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s0,40($sp)
    move	$s0,$a0
    # sd	gp,24(sp)
    lui	$at,0x10
    addiu	$at,$at,-636
    # Line 190
    lwc1	$f5,12($a2)
    # Line 184
    # addu	gp,t9,at
    # Line 191
    li	$at,6410
    # Line 190
    mov.s	$f6,$f5
    # Line 187
    lw	$v0,2376($a0)
    sd	$s4,0($sp)
    # Line 188
    lw	$s4,28216($a0)
    # Line 190
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    mov.s	$f7,$f5
    # Line 191
    lw	$a4,5444($a0)
    # Line 187
    addiu	$v0,$v0,4
    # Line 188
    addiu	$s4,$s4,4
    # Line 191
    beq	$a4,$at,.L0daf7ec4
    sd	$v0,32($sp)
    li	$v0,6409
    beq	$a4,$v0,.L0daf7bfc
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf8040
    li	$a3,6408
    beq	$a4,$a3,.L0daf7f40
    li	$at,6407
    beq	$a4,$at,.L0daf7d60
    li	$v0,6406
    beq	$a4,$v0,.L0daf7fbc
    lwc1	$f8,16($s1)
.L0daf7b78:
    # Line 197
    lwc1	$f1,3284($s0)
    # Line 199
    sub.s	$f0,$f1,$f5
    lwc1	$f4,0($s8)
    ld	$v1,32($sp)
    mul.s	$f4,$f4,$f0
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f5
    add.s	$f4,$f4,$f0
    # Line 197
    sub.s	$f3,$f1,$f6
    # Line 200
    lwc1	$f2,4($s8)
    # Line 199
    swc1	$f4,0($s8)
    # Line 200
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($v1)
    mul.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f3
    # Line 198
    sub.s	$f1,$f1,$f7
    # Line 201
    lwc1	$f0,8($s8)
    # Line 200
    swc1	$f2,4($s8)
    # Line 201
    mul.s	$f0,$f0,$f1
    lwc1	$f2,8($v1)
    # Line 202
    lwc1	$f1,12($s8)
    # Line 201
    mul.s	$f2,$f2,$f7
    # Line 202
    mul.s	$f1,$f1,$f8
    # ld	gp,24(sp)
    # Line 203
    ld	$s0,40($sp)
    # Line 201
    add.s	$f0,$f0,$f2
    # Line 203
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    # Line 202
    swc1	$f1,12($s8)
    # Line 201
    swc1	$f0,8($s8)
    # Line 203
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf7bfc:
    sd	$ra,48($sp)
.L0daf7c00:
    # Line 191
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a4,5384($s0)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a2,5448($s0)
    mfc1	$a3,$f18
    nop
    mult	$a2,$a3
    lw	$a0,5376($s0)
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t1,5384($s0)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($s0)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($s0)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f8,16($s1)
    lwc1	$f6,4($s1)
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f7,0($ra)
    ld	$ra,48($sp)
    b	.L0daf7b78
    swc1	$f7,8($s1)
.L0daf7d60:
    sd	$ra,48($sp)
.L0daf7d64:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f8,16($s1)
    lwc1	$f6,4($s1)
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f7,8($ra)
    ld	$ra,48($sp)
    b	.L0daf7b78
    swc1	$f7,8($s1)
.L0daf7ec4:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s0)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s0)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s1)
    b	.L0daf7c00
    swc1	$f0,16($s1)
.L0daf7f40:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s1)
    b	.L0daf7d64
    swc1	$f0,16($s1)
.L0daf7fbc:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f8
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($s0)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lwc1	$f7,8($s1)
    lwc1	$f6,4($s1)
    lwc1	$f5,0($s1)
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f8,0($v1)
    ld	$ra,48($sp)
    b	.L0daf7b78
    swc1	$f8,16($s1)
.L0daf8040:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s1)
    lwc1	$f15,16($s1)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f7,8($s1)
    lwc1	$f6,4($s1)
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f8,0($ra)
    ld	$ra,48($sp)
    b	.L0daf7b78
    swc1	$f8,16($s1)
.end __glTextureCTBlendLA

# Function: __glTextureCTBlendRGB
# Declared: Line 206 (Source lines: 207-223)
# Address: 0x0daf8214 - 0x0daf85d4 (Size: 960 bytes, Frame: 224)
.globl __glTextureCTBlendRGB
.ent __glTextureCTBlendRGB
__glTextureCTBlendRGB:
    # Line 213
    li	$at,6409
    # Line 207
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s1,32($sp)
    move	$s1,$a0
    # sd	gp,8(sp)
    # Line 213
    lw	$a4,5444($a0)
    sd	$a1,24($sp)
    # Line 207
    lui	$a1,0x10
    addiu	$a1,$a1,-2476
    # Line 210
    lw	$v0,2376($a0)
    # Line 211
    lw	$v1,28216($a0)
    # Line 207
    # addu	gp,t9,a1
    # Line 210
    addiu	$v0,$v0,4
    # Line 211
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 213
    beq	$a4,$at,.L0daf846c
    sd	$v0,16($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf846c
    li	$at,0x8049
    beq	$a4,$at,.L0daf846c
    li	$v0,6407
    beq	$a4,$v0,.L0daf8304
    li	$v1,6408
    beq	$a4,$v1,.L0daf8308
    ld	$a4,0($sp)
    lwc1	$f5,8($s0)
.L0daf8288:
    # Line 214
    lwc1	$f3,0($s0)
    # Line 218
    lwc1	$f1,3284($s1)
    # Line 220
    ld	$a0,24($sp)
    sub.s	$f2,$f1,$f3
    lwc1	$f0,0($a0)
    ld	$a3,16($sp)
    mul.s	$f0,$f0,$f2
    lwc1	$f2,0($a3)
    mul.s	$f2,$f2,$f3
    # Line 215
    lwc1	$f4,4($s0)
    # Line 220
    add.s	$f0,$f0,$f2
    # Line 218
    sub.s	$f3,$f1,$f4
    # Line 221
    lwc1	$f2,4($a0)
    # Line 220
    swc1	$f0,0($a0)
    # Line 221
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    # Line 219
    sub.s	$f1,$f1,$f5
    # Line 222
    lwc1	$f0,8($a0)
    # Line 221
    swc1	$f2,4($a0)
    # Line 222
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f5
    # ld	gp,8(sp)
    # Line 223
    ld	$s0,40($sp)
    # Line 222
    add.s	$f0,$f0,$f1
    # Line 223
    ld	$s1,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 222
    swc1	$f0,8($a0)
.L0daf8304:
    # Line 213
    ld	$a4,0($sp)
.L0daf8308:
    lwc1	$f15,0($s0)
    lwc1	$f16,168($a4)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t2,5384($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t0,5448($s1)
    mfc1	$t1,$f18
    nop
    mult	$t0,$t1
    lw	$a6,5376($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($s1)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($s1)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,4($t8)
    ld	$t3,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($s1)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f5,8($v1)
    ld	$ra,48($sp)
    b	.L0daf8288
    swc1	$f5,8($s0)
.L0daf846c:
    ld	$v1,0($sp)
    lwc1	$f15,0($s0)
    lwc1	$f16,168($v1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($v1)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a5,5384($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a3,5448($s1)
    mfc1	$a4,$f18
    nop
    mult	$a3,$a4
    lw	$a1,5376($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($a0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a0)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t3,5384($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t1,5448($s1)
    mfc1	$t2,$f18
    nop
    mult	$t1,$t2
    lw	$a7,5376($s1)
    mflo	$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($a6)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($a6)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s1)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f5,0($ra)
    ld	$ra,48($sp)
    b	.L0daf8288
    swc1	$f5,8($s0)
.end __glTextureCTBlendRGB

# Function: __glTextureCTBlendRGBA
# Declared: Line 226 (Source lines: 227-244)
# Address: 0x0daf85d4 - 0x0daf8ce8 (Size: 1812 bytes, Frame: 224)
.globl __glTextureCTBlendRGBA
.ent __glTextureCTBlendRGBA
__glTextureCTBlendRGBA:
    # Line 227
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s1,32($sp)
    move	$s1,$a0
    # sd	gp,16(sp)
    # Line 233
    lw	$a4,5444($a0)
    # Line 227
    lui	$at,0x10
    addiu	$at,$at,-3436
    # addu	gp,t9,at
    # Line 230
    lw	$v0,2376($a0)
    sd	$s4,0($sp)
    # Line 231
    lw	$s4,28216($a0)
    # Line 233
    li	$at,6410
    # Line 230
    addiu	$v0,$v0,4
    # Line 231
    addiu	$s4,$s4,4
    # Line 233
    beq	$a4,$at,.L0daf89a4
    sd	$v0,24($sp)
    li	$v0,6409
    beq	$a4,$v0,.L0daf86e4
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf8b14
    li	$a3,6408
    beq	$a4,$a3,.L0daf8a1c
    li	$at,6407
    beq	$a4,$at,.L0daf8844
    li	$v0,6406
    beql	$a4,$v0,.L0daf8a94
    lwc1	$f16,180($s4)
    lwc1	$f5,8($s0)
    ld	$s4,0($sp)
.L0daf8658:
    # Line 234
    lwc1	$f0,0($s0)
    # Line 238
    lwc1	$f3,3284($s1)
    # Line 240
    sub.s	$f4,$f3,$f0
    lwc1	$f2,0($s8)
    ld	$v1,24($sp)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,0($v1)
    mul.s	$f4,$f4,$f0
    # Line 235
    lwc1	$f1,4($s0)
    # Line 240
    add.s	$f2,$f2,$f4
    # Line 238
    sub.s	$f0,$f3,$f1
    # Line 241
    lwc1	$f4,4($s8)
    # Line 240
    swc1	$f2,0($s8)
    # Line 241
    mul.s	$f4,$f4,$f0
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f4,$f0
    # Line 239
    sub.s	$f3,$f3,$f5
    # Line 242
    lwc1	$f2,8($s8)
    # Line 241
    swc1	$f4,4($s8)
    # Line 242
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($v1)
    mul.s	$f3,$f3,$f5
    add.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 243
    lwc1	$f0,12($s8)
    lwc1	$f1,16($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,16(sp)
    # Line 244
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 243
    swc1	$f0,12($s8)
    # Line 244
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf86e4:
    sd	$ra,48($sp)
.L0daf86e8:
    # Line 233
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a4,5384($s1)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a2,5448($s1)
    mfc1	$a3,$f18
    nop
    mult	$a2,$a3
    lw	$a0,5376($s1)
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t1,5384($s1)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($s1)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($s1)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($s1)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$s4,5376($s1)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$s4,$s4,$ra
    ld	$ra,48($sp)
    lwc1	$f5,0($s4)
    ld	$s4,0($sp)
    b	.L0daf8658
    swc1	$f5,8($s0)
.L0daf8844:
    sd	$ra,48($sp)
.L0daf8848:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a4,5384($s1)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a2,5448($s1)
    mfc1	$a3,$f18
    nop
    mult	$a2,$a3
    lw	$a0,5376($s1)
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t1,5384($s1)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($s1)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($s1)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,4($a5)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($s1)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$s4,5376($s1)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$s4,$s4,$ra
    ld	$ra,48($sp)
    lwc1	$f5,8($s4)
    ld	$s4,0($sp)
    b	.L0daf8658
    swc1	$f5,8($s0)
.L0daf89a4:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$a3,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lwc1	$f0,4($a3)
    b	.L0daf86e8
    swc1	$f0,16($s0)
.L0daf8a1c:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,12($at)
    b	.L0daf8848
    swc1	$f0,16($s0)
.L0daf8a94:
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$ra,5384($s1)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$s4,$f1
    nop
    mult	$a3,$s4
    lwc1	$f5,8($s0)
    ld	$ra,48($sp)
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,0($v0)
    ld	$s4,0($sp)
    b	.L0daf8658
    swc1	$f0,16($s0)
.L0daf8b14:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a1,5384($s1)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$v1,5448($s1)
    mfc1	$a0,$f18
    nop
    mult	$v1,$a0
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a6,5384($s1)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a4,5448($s1)
    mfc1	$a5,$f18
    nop
    mult	$a4,$a5
    lw	$a2,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f17,0($a2)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t3,5384($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t1,5448($s1)
    mfc1	$t2,$f18
    nop
    mult	$t1,$t2
    lw	$a7,5376($s1)
    mflo	$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$at,5448($s1)
    mfc1	$v0,$f1
    nop
    mult	$at,$v0
    lwc1	$f5,8($s0)
    lw	$s4,5376($s1)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$s4,$s4,$ra
    ld	$ra,48($sp)
    lwc1	$f0,0($s4)
    ld	$s4,0($sp)
    b	.L0daf8658
    swc1	$f0,16($s0)
.end __glTextureCTBlendRGBA

# Function: __glTextureCTBlendA
# Declared: Line 247 (Source lines: 248-256)
# Address: 0x0daf8ce8 - 0x0daf8ee0 (Size: 504 bytes, Frame: 208)
.globl __glTextureCTBlendA
.ent __glTextureCTBlendA
__glTextureCTBlendA:
    # Line 248
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$a1,24($sp)
    sd	$a0,0($sp)
    # sd	gp,16(sp)
    # Line 249
    lw	$a5,28216($a0)
    # Line 254
    lw	$a4,5444($a0)
    # Line 248
    lui	$at,0x10
    addiu	$at,$at,-5248
    # addu	gp,t9,at
    # Line 254
    li	$at,6406
    beq	$a4,$at,.L0daf8ddc
    # Line 249
    addiu	$a5,$a5,4
    # Line 254
    li	$v0,0x8049
    beq	$a4,$v0,.L0daf8ddc
    li	$v1,6408
    beq	$a4,$v1,.L0daf8e60
    lwc1	$f5,16($s0)
    li	$a3,6410
    beql	$a4,$a3,.L0daf8d60
    lwc1	$f15,180($a5)
.L0daf8d40:
    ld	$s0,24($sp)
    # Line 255
    lwc1	$f0,12($s0)
    mul.s	$f0,$f0,$f5
    # ld	gp,16(sp)
    swc1	$f0,12($s0)
    # Line 256
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf8d60:
    # Line 254
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,32($sp)
    ld	$t8,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($t8)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$ra,0($sp)
    lw	$v1,5384($ra)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($ra)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$ra,5376($ra)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f5,4($ra)
    ld	$ra,32($sp)
    b	.L0daf8d40
    swc1	$f5,16($s0)
.L0daf8ddc:
    lwc1	$f16,180($a5)
    lwc1	$f15,16($s0)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f16
    sd	$ra,32($sp)
    ld	$a0,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($a0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$v0,5384($a3)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($a3)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$a3,5376($a3)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,0($a3)
    ld	$ra,32($sp)
    b	.L0daf8d40
    swc1	$f5,16($s0)
.L0daf8e60:
    lwc1	$f15,180($a5)
    mtc1	$zero,$f13
    mul.s	$f15,$f15,$f5
    sd	$ra,32($sp)
    ld	$v1,0($sp)
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    lwc1	$f14,3284($v1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    ld	$a3,0($sp)
    lw	$v0,5384($a3)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($a3)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lw	$a3,5376($a3)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,12($a3)
    ld	$ra,32($sp)
    b	.L0daf8d40
    swc1	$f5,16($s0)
.end __glTextureCTBlendA

# Function: __glTextureCTBlendI
# Declared: Line 259 (Source lines: 260-280)
# Address: 0x0daf8ee0 - 0x0daf961c (Size: 1852 bytes, Frame: 224)
.globl __glTextureCTBlendI
.ent __glTextureCTBlendI
__glTextureCTBlendI:
    # Line 260
    addiu	$sp,$sp,-96
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s4,0($sp)
    move	$s4,$a2
    sd	$s0,40($sp)
    move	$s0,$a0
    # sd	gp,24(sp)
    lui	$at,0x10
    addiu	$at,$at,-5752
    # Line 266
    lwc1	$f5,20($a2)
    # Line 260
    # addu	gp,t9,at
    # Line 267
    li	$at,6410
    # Line 266
    mov.s	$f7,$f5
    mov.s	$f8,$f5
    # Line 263
    lw	$v0,2376($a0)
    sd	$s1,8($sp)
    # Line 264
    lw	$s1,28216($a0)
    # Line 266
    swc1	$f5,16($a2)
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    mov.s	$f6,$f5
    # Line 267
    lw	$a4,5444($a0)
    # Line 263
    addiu	$v0,$v0,4
    # Line 264
    addiu	$s1,$s1,4
    # Line 267
    beq	$a4,$at,.L0daf92d8
    sd	$v0,32($sp)
    li	$v0,6409
    beq	$a4,$v0,.L0daf9010
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf9448
    li	$a3,6408
    beq	$a4,$a3,.L0daf9350
    li	$at,6407
    beq	$a4,$at,.L0daf9174
    li	$v0,6406
    beql	$a4,$v0,.L0daf93c8
    lwc1	$f15,180($s1)
.L0daf8f7c:
    # Line 273
    lwc1	$f1,3284($s0)
    # Line 276
    sub.s	$f3,$f1,$f5
    lwc1	$f2,0($s8)
    ld	$v1,32($sp)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($v1)
    mul.s	$f3,$f3,$f5
    add.s	$f2,$f2,$f3
    # Line 273
    sub.s	$f0,$f1,$f7
    # Line 277
    lwc1	$f4,4($s8)
    # Line 276
    swc1	$f2,0($s8)
    # Line 277
    mul.s	$f4,$f4,$f0
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f7
    add.s	$f4,$f4,$f0
    # Line 274
    sub.s	$f3,$f1,$f8
    # Line 278
    lwc1	$f2,8($s8)
    # Line 277
    swc1	$f4,4($s8)
    # Line 278
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($v1)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f3
    # Line 275
    sub.s	$f1,$f1,$f6
    # Line 279
    lwc1	$f0,12($s8)
    # Line 278
    swc1	$f2,8($s8)
    # Line 279
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($v1)
    mul.s	$f1,$f1,$f6
    # ld	gp,24(sp)
    add.s	$f0,$f0,$f1
    # Line 280
    ld	$s0,40($sp)
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    # Line 279
    swc1	$f0,12($s8)
    # Line 280
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf9010:
    sd	$ra,48($sp)
.L0daf9014:
    # Line 267
    lwc1	$f15,168($s1)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a4,5384($s0)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a2,5448($s0)
    mfc1	$a3,$f18
    nop
    mult	$a2,$a3
    lw	$a0,5376($s0)
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    swc1	$f17,0($s4)
    lwc1	$f15,4($s4)
    lwc1	$f16,172($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t1,5384($s0)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a7,5448($s0)
    mfc1	$t0,$f18
    nop
    mult	$a7,$t0
    lw	$a5,5376($s0)
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    swc1	$f17,4($s4)
    lwc1	$f15,8($s4)
    lwc1	$f16,176($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f6,16($s4)
    lwc1	$f7,4($s4)
    lwc1	$f5,0($s4)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f8,0($ra)
    ld	$ra,48($sp)
    b	.L0daf8f7c
    swc1	$f8,8($s4)
.L0daf9174:
    sd	$ra,48($sp)
.L0daf9178:
    lwc1	$f15,168($s1)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s4)
    lwc1	$f15,4($s4)
    lwc1	$f16,172($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s4)
    lwc1	$f15,8($s4)
    lwc1	$f16,176($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f6,16($s4)
    lwc1	$f7,4($s4)
    lwc1	$f5,0($s4)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f8,8($ra)
    ld	$ra,48($sp)
    b	.L0daf8f7c
    swc1	$f8,8($s4)
.L0daf92d8:
    lwc1	$f15,180($s1)
    mul.s	$f15,$f15,$f6
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s1)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s0)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s0)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s4)
    b	.L0daf9014
    swc1	$f0,16($s4)
.L0daf9350:
    lwc1	$f15,180($s1)
    mul.s	$f15,$f15,$f6
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s1)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s4)
    b	.L0daf9178
    swc1	$f0,16($s4)
.L0daf93c8:
    mul.s	$f15,$f15,$f6
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s1)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$ra,5448($s0)
    mfc1	$at,$f0
    nop
    mult	$ra,$at
    lwc1	$f8,8($s4)
    lwc1	$f7,4($s4)
    lwc1	$f5,0($s4)
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f6,0($v1)
    ld	$ra,48($sp)
    b	.L0daf8f7c
    swc1	$f6,16($s4)
.L0daf9448:
    lwc1	$f15,168($s1)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s1)
    sd	$ra,48($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s4)
    lwc1	$f15,4($s4)
    lwc1	$f16,172($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s4)
    lwc1	$f15,8($s4)
    lwc1	$f16,176($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s4)
    lwc1	$f15,16($s4)
    lwc1	$f16,180($s1)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s1)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,5448($s0)
    mfc1	$v1,$f0
    nop
    mult	$v0,$v1
    lwc1	$f8,8($s4)
    lwc1	$f7,4($s4)
    lwc1	$f5,0($s4)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f6,0($ra)
    ld	$ra,48($sp)
    b	.L0daf8f7c
    swc1	$f6,16($s4)
.end __glTextureCTBlendI

# Function: __glTextureCTReplaceL
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0daf961c - 0x0daf99a4 (Size: 904 bytes, Frame: 208)
.globl __glTextureCTReplaceL
.ent __glTextureCTReplaceL
__glTextureCTReplaceL:
    # Line 290
    li	$at,6409
    # Line 286
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    # Line 289
    lwc1	$f5,12($a2)
    # Line 286
    lui	$v1,0x10
    # Line 287
    lw	$v0,28216($a0)
    # Line 289
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 286
    addiu	$v1,$v1,-7604
    # Line 290
    lw	$a4,5444($a0)
    # Line 286
    # addu	gp,t9,v1
    # Line 287
    addiu	$v0,$v0,4
    # Line 290
    beq	$a4,$at,.L0daf983c
    sd	$v0,0($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0daf983c
    li	$at,0x8049
    beq	$a4,$at,.L0daf983c
    li	$v0,6407
    beq	$a4,$v0,.L0daf96d4
    li	$v1,6408
    beq	$a4,$v1,.L0daf96d8
    ld	$a1,0($sp)
.L0daf9690:
    # Line 291
    lwc1	$f4,30756($s0)
    mul.s	$f4,$f4,$f5
    ld	$a0,16($sp)
    swc1	$f4,0($a0)
    # Line 292
    lwc1	$f3,30760($s0)
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 293
    lwc1	$f1,30764($s0)
    lwc1	$f0,8($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,8(sp)
    # Line 294
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 293
    swc1	$f0,8($a0)
.L0daf96d4:
    ld	$a1,0($sp)
.L0daf96d8:
    # Line 290
    lwc1	$f15,168($a1)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a1)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a7,5384($s0)
    addiu	$a7,$a7,-1
    mtc1	$a7,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a5,5448($s0)
    mfc1	$a6,$f18
    nop
    mult	$a5,$a6
    lw	$a3,5376($s0)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lwc1	$f17,0($a3)
    ld	$a2,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a2)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a2)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    ld	$t0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t0)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf9690
    swc1	$f0,8($s1)
.L0daf983c:
    ld	$a4,0($sp)
    lwc1	$f15,168($a4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t2,5384($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t0,5448($s0)
    mfc1	$t1,$f18
    nop
    mult	$t0,$t1
    lw	$a6,5376($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($s0)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($s0)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    ld	$t3,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lwc1	$f5,0($s1)
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf9690
    swc1	$f0,8($s1)
.end __glTextureCTReplaceL

# Function: __glTextureCTReplaceLA
# Declared: Line 297 (Source lines: 298-307)
# Address: 0x0daf99a4 - 0x0dafa074 (Size: 1744 bytes, Frame: 208)
.globl __glTextureCTReplaceLA
.ent __glTextureCTReplaceLA
__glTextureCTReplaceLA:
    # Line 298
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    lui	$at,0x10
    # Line 301
    lwc1	$f5,12($a2)
    sd	$s4,0($sp)
    # Line 299
    lw	$s4,28216($a0)
    # Line 301
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 298
    addiu	$at,$at,-8508
    # Line 302
    lw	$a4,5444($a0)
    # Line 298
    # addu	gp,t9,at
    # Line 302
    li	$at,6410
    beq	$a4,$at,.L0daf9d34
    # Line 299
    addiu	$s4,$s4,4
    # Line 302
    li	$v0,6409
    beq	$a4,$v0,.L0daf9a7c
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf9ea8
    li	$a3,6408
    beq	$a4,$a3,.L0daf9db0
    li	$at,6407
    beq	$a4,$at,.L0daf9bd8
    li	$v0,6406
    beql	$a4,$v0,.L0daf9e2c
    lwc1	$f16,180($s4)
.L0daf9a24:
    # Line 303
    lwc1	$f1,30756($s0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($s8)
    # Line 304
    lwc1	$f0,30760($s0)
    lwc1	$f4,4($s1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 305
    lwc1	$f3,30764($s0)
    lwc1	$f2,8($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 306
    lwc1	$f1,30796($s0)
    lwc1	$f0,16($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,16(sp)
    # Line 307
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 306
    swc1	$f0,12($s8)
    # Line 307
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf9a7c:
    sd	$ra,40($sp)
.L0daf9a80:
    # Line 302
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf9a24
    swc1	$f0,8($s1)
.L0daf9bd8:
    sd	$ra,40($sp)
.L0daf9bdc:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0daf9a24
    swc1	$f0,8($s1)
.L0daf9d34:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s0)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s0)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s1)
    b	.L0daf9a80
    swc1	$f0,16($s1)
.L0daf9db0:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s1)
    b	.L0daf9bdc
    swc1	$f0,16($s1)
.L0daf9e2c:
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lwc1	$f5,0($s1)
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0daf9a24
    swc1	$f0,16($s1)
.L0daf9ea8:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s1)
    lwc1	$f15,16($s1)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0daf9a24
    swc1	$f0,16($s1)
.end __glTextureCTReplaceLA

# Function: __glTextureCTReplaceRGB
# Declared: Line 310 (Source lines: 311-318)
# Address: 0x0dafa074 - 0x0dafa3f0 (Size: 892 bytes, Frame: 208)
.globl __glTextureCTReplaceRGB
.ent __glTextureCTReplaceRGB
__glTextureCTReplaceRGB:
    # Line 314
    li	$at,6409
    # Line 311
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$a1,16($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-10252
    # Line 312
    lw	$v0,28216($a0)
    # Line 314
    lw	$a4,5444($a0)
    # Line 311
    # addu	gp,t9,v1
    # Line 312
    addiu	$v0,$v0,4
    # Line 314
    beq	$a4,$at,.L0dafa288
    sd	$v0,0($sp)
    li	$a3,6410
    beq	$a4,$a3,.L0dafa288
    li	$at,0x8049
    beq	$a4,$at,.L0dafa288
    li	$v0,6407
    beq	$a4,$v0,.L0dafa120
    li	$v1,6408
    beq	$a4,$v1,.L0dafa124
    ld	$a1,0($sp)
.L0dafa0d8:
    # Line 315
    lwc1	$f0,30756($s0)
    lwc1	$f4,0($s1)
    mul.s	$f4,$f4,$f0
    ld	$a0,16($sp)
    swc1	$f4,0($a0)
    # Line 316
    lwc1	$f3,30760($s0)
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 317
    lwc1	$f1,30764($s0)
    lwc1	$f0,8($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,8(sp)
    # Line 318
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 317
    swc1	$f0,8($a0)
.L0dafa120:
    # Line 314
    ld	$a1,0($sp)
.L0dafa124:
    lwc1	$f15,0($s1)
    lwc1	$f16,168($a1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a1)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a7,5384($s0)
    addiu	$a7,$a7,-1
    mtc1	$a7,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a5,5448($s0)
    mfc1	$a6,$f18
    nop
    mult	$a5,$a6
    lw	$a3,5376($s0)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lwc1	$f17,0($a3)
    ld	$a2,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a2)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a2)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    ld	$t0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t0)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0dafa0d8
    swc1	$f0,8($s1)
.L0dafa288:
    ld	$a4,0($sp)
    lwc1	$f15,0($s1)
    lwc1	$f16,168($a4)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($a4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t2,5384($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t0,5448($s0)
    mfc1	$t1,$f18
    nop
    mult	$t0,$t1
    lw	$a6,5376($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($a5)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($a5)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$ra,5448($s0)
    mfc1	$at,$f18
    nop
    mult	$ra,$at
    lw	$t8,5376($s0)
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    ld	$t3,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($t3)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($t3)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0dafa0d8
    swc1	$f0,8($s1)
.end __glTextureCTReplaceRGB

# Function: __glTextureCTReplaceRGBA
# Declared: Line 321 (Source lines: 322-330)
# Address: 0x0dafa3f0 - 0x0dafaaa8 (Size: 1720 bytes, Frame: 208)
.globl __glTextureCTReplaceRGBA
.ent __glTextureCTReplaceRGBA
__glTextureCTReplaceRGBA:
    # Line 322
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    # sd	gp,16(sp)
    # Line 325
    lw	$a4,5444($a0)
    # Line 322
    lui	$at,0x10
    addiu	$at,$at,-11144
    # addu	gp,t9,at
    sd	$s4,0($sp)
    # Line 323
    lw	$s4,28216($a0)
    # Line 325
    li	$at,6410
    beq	$a4,$at,.L0dafa774
    # Line 323
    addiu	$s4,$s4,4
    # Line 325
    li	$v0,6409
    beq	$a4,$v0,.L0dafa4bc
    li	$v1,0x8049
    beq	$a4,$v1,.L0dafa8dc
    li	$a3,6408
    beq	$a4,$a3,.L0dafa7ec
    li	$at,6407
    beq	$a4,$at,.L0dafa618
    li	$v0,6406
    beql	$a4,$v0,.L0dafa864
    lwc1	$f16,180($s4)
.L0dafa460:
    # Line 326
    lwc1	$f2,30756($s1)
    lwc1	$f1,0($s0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($s8)
    # Line 327
    lwc1	$f0,30760($s1)
    lwc1	$f4,4($s0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 328
    lwc1	$f3,30764($s1)
    lwc1	$f2,8($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 329
    lwc1	$f1,30796($s1)
    lwc1	$f0,16($s0)
    mul.s	$f0,$f0,$f1
    # ld	gp,16(sp)
    # Line 330
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 329
    swc1	$f0,12($s8)
    # Line 330
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dafa4bc:
    sd	$ra,40($sp)
.L0dafa4c0:
    # Line 325
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0dafa460
    swc1	$f0,8($s0)
.L0dafa618:
    sd	$ra,40($sp)
.L0dafa61c:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0dafa460
    swc1	$f0,8($s0)
.L0dafa774:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s1)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s1)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    b	.L0dafa4c0
    swc1	$f0,16($s0)
.L0dafa7ec:
    lwc1	$f16,180($s4)
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s1)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    b	.L0dafa61c
    swc1	$f0,16($s0)
.L0dafa864:
    lwc1	$f15,16($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s1)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lw	$v1,5376($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0dafa460
    swc1	$f0,16($s0)
.L0dafa8dc:
    lwc1	$f16,168($s4)
    lwc1	$f15,0($s0)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s1)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s1)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s1)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s1)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s0)
    lwc1	$f15,8($s0)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s1)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s0)
    lwc1	$f15,16($s0)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s1)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s1)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lw	$ra,5376($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0dafa460
    swc1	$f0,16($s0)
.end __glTextureCTReplaceRGBA

# Function: __glTextureCTReplaceA
# Declared: Line 333 (Source lines: 334-339)
# Address: 0x0dafaaa8 - 0x0dafac94 (Size: 492 bytes, Frame: 208)
.globl __glTextureCTReplaceA
.ent __glTextureCTReplaceA
__glTextureCTReplaceA:
    # Line 337
    li	$at,6406
    # Line 334
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    move	$s1,$a2
    sd	$s8,8($sp)
    move	$s8,$a1
    # sd	gp,16(sp)
    # Line 335
    lw	$a5,28216($a0)
    # Line 337
    lw	$a4,5444($a0)
    sd	$s0,24($sp)
    # Line 334
    lui	$s0,0x10
    addiu	$s0,$s0,-12864
    # addu	gp,t9,s0
    move	$s0,$a0
    # Line 337
    beq	$a4,$at,.L0dafaba0
    # Line 335
    addiu	$a5,$a5,4
    # Line 337
    li	$at,0x8049
    beq	$a4,$at,.L0dafaba0
    li	$v0,6408
    beq	$a4,$v0,.L0dafac1c
    lwc1	$f5,16($s1)
    li	$v1,6410
    beql	$a4,$v1,.L0dafab2c
    lwc1	$f15,180($a5)
.L0dafab08:
    # Line 338
    lwc1	$f0,30796($s0)
    mul.s	$f0,$f0,$f5
    # ld	gp,16(sp)
    # Line 339
    ld	$s0,24($sp)
    ld	$s1,0($sp)
    # Line 338
    swc1	$f0,12($s8)
    # Line 339
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dafab2c:
    # Line 337
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    sd	$ra,32($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($s0)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$a3,5376($s0)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,4($a3)
    ld	$ra,32($sp)
    b	.L0dafab08
    swc1	$f5,16($s1)
.L0dafaba0:
    lwc1	$f16,180($a5)
    lwc1	$f15,16($s1)
    mul.s	$f15,$f15,$f16
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    sd	$ra,32($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($s0)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$a3,5376($s0)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,0($a3)
    ld	$ra,32($sp)
    b	.L0dafab08
    swc1	$f5,16($s1)
.L0dafac1c:
    lwc1	$f15,180($a5)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($a5)
    sd	$ra,32($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v1,5384($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f0,$f2,$f0
    lwc1	$f1,_lit_3f000000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$at,5448($s0)
    mfc1	$v0,$f0
    nop
    mult	$at,$v0
    lw	$a3,5376($s0)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$a3,$a3,$ra
    lwc1	$f5,12($a3)
    ld	$ra,32($sp)
    b	.L0dafab08
    swc1	$f5,16($s1)
.end __glTextureCTReplaceA

# Function: __glTextureCTReplaceI
# Declared: Line 342 (Source lines: 343-352)
# Address: 0x0dafac94 - 0x0dafb360 (Size: 1740 bytes, Frame: 208)
.globl __glTextureCTReplaceI
.ent __glTextureCTReplaceI
__glTextureCTReplaceI:
    # Line 343
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    lui	$at,0x10
    addiu	$at,$at,-13356
    # Line 346
    lwc1	$f5,20($a2)
    sd	$s4,0($sp)
    # Line 344
    lw	$s4,28216($a0)
    # Line 346
    swc1	$f5,16($a2)
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 343
    # addu	gp,t9,at
    # Line 347
    lw	$a4,5444($a0)
    li	$at,6410
    # Line 346
    mov.s	$f4,$f5
    # Line 347
    beq	$a4,$at,.L0dafb02c
    # Line 344
    addiu	$s4,$s4,4
    # Line 347
    li	$v0,6409
    beq	$a4,$v0,.L0dafad74
    li	$v1,0x8049
    beq	$a4,$v1,.L0dafb194
    li	$a3,6408
    beq	$a4,$a3,.L0dafb0a4
    li	$at,6407
    beq	$a4,$at,.L0dafaed0
    li	$v0,6406
    beql	$a4,$v0,.L0dafb11c
    lwc1	$f15,180($s4)
.L0dafad1c:
    # Line 348
    lwc1	$f1,30756($s0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($s8)
    # Line 349
    lwc1	$f0,30760($s0)
    lwc1	$f4,4($s1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($s8)
    # Line 350
    lwc1	$f3,30764($s0)
    lwc1	$f2,8($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($s8)
    # Line 351
    lwc1	$f1,30796($s0)
    lwc1	$f0,16($s1)
    mul.s	$f0,$f0,$f1
    # ld	gp,16(sp)
    # Line 352
    ld	$s4,0($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 351
    swc1	$f0,12($s8)
    # Line 352
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dafad74:
    sd	$ra,40($sp)
.L0dafad78:
    # Line 347
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0dafad1c
    swc1	$f0,8($s1)
.L0dafaed0:
    sd	$ra,40($sp)
.L0dafaed4:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,8($ra)
    ld	$ra,40($sp)
    b	.L0dafad1c
    swc1	$f0,8($s1)
.L0dafb02c:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$at,5384($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v1,5448($s0)
    mfc1	$a3,$f1
    nop
    mult	$v1,$a3
    lw	$at,5376($s0)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    lwc1	$f5,0($s1)
    b	.L0dafad78
    swc1	$f0,16($s1)
.L0dafb0a4:
    lwc1	$f15,180($s4)
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$a3,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$a3,$at
    lw	$v0,5376($s0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f0,12($v0)
    lwc1	$f5,0($s1)
    b	.L0dafaed4
    swc1	$f0,16($s1)
.L0dafb11c:
    mul.s	$f15,$f15,$f4
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$v0,5384($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$ra,5448($s0)
    mfc1	$at,$f1
    nop
    mult	$ra,$at
    lwc1	$f5,0($s1)
    lw	$v1,5376($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    ld	$ra,40($sp)
    b	.L0dafad1c
    swc1	$f0,16($s1)
.L0dafb194:
    lwc1	$f15,168($s4)
    mul.s	$f15,$f15,$f5
    lwc1	$f14,3284($s0)
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,184($s4)
    sd	$ra,40($sp)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a1,5448($s0)
    mfc1	$a2,$f18
    nop
    mult	$a1,$a2
    lw	$v1,5376($s0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f17,0($v1)
    swc1	$f17,0($s1)
    lwc1	$f15,4($s1)
    lwc1	$f16,172($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,188($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t0,5384($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$a6,5448($s0)
    mfc1	$a7,$f18
    nop
    mult	$a6,$a7
    lw	$a4,5376($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f17,0($a4)
    swc1	$f17,4($s1)
    lwc1	$f15,8($s1)
    lwc1	$f16,176($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,192($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$t9,5384($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    nop
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    lwc1	$f19,_lit_3f000000
    add.s	$f18,$f18,$f19
    trunc.w.s	$f18,$f18
    lw	$t3,5448($s0)
    mfc1	$t8,$f18
    nop
    mult	$t3,$t8
    lw	$t1,5376($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,0($t1)
    swc1	$f17,8($s1)
    lwc1	$f15,16($s1)
    lwc1	$f16,180($s4)
    mul.s	$f15,$f15,$f16
    mtc1	$zero,$f13
    # lw $t9, -26640($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f12,196($s4)
    lwc1	$f14,3284($s0)
    bal __GL_TEXENV_CLAMP
    add.s	$f12,$f12,$f15
    lw	$a3,5384($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f0
    lwc1	$f2,_lit_3f000000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lw	$v0,5448($s0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    lwc1	$f5,0($s1)
    lw	$ra,5376($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f0,0($ra)
    ld	$ra,40($sp)
    b	.L0dafad1c
    swc1	$f0,16($s1)
.end __glTextureCTReplaceI

# Function: __glNopPolygonRho
# Declared: Line 4451 (Source lines: 4454-4455)
# Address: 0x0dafb360 - 0x0dafb374 (Size: 20 bytes, Frame: 0)
.globl __glNopPolygonRho
.ent __glNopPolygonRho
__glNopPolygonRho:
    # Line 4454
    lui	$v0,0x10
    addiu	$v0,$v0,-15096
    # addu	at,t9,v0
    # Line 4455
    jr	$ra
    mtc1	$zero,$f0
.end __glNopPolygonRho

# Function: __glComputePolygonRho
# Declared: Line 4464 (Source lines: 4467-4524)
# Address: 0x0dafb374 - 0x0dafb4e8 (Size: 372 bytes, Frame: 192)
.globl __glComputePolygonRho
.ent __glComputePolygonRho
__glComputePolygonRho:
    # Line 4475
    lwc1	$f5,256($a1)
    # Line 4476
    add.s	$f4,$f5,$f17
    # Line 4474
    lwc1	$f6,3284($a0)
    # Line 4476
    div.s	$f4,$f6,$f4
    # Line 4475
    sub.s	$f5,$f17,$f5
    div.s	$f5,$f6,$f5
    # Line 4479
    lwc1	$f12,244($a1)
    add.s	$f11,$f12,$f14
    # Line 4484
    lwc1	$f9,248($a1)
    # Line 4479
    sub.s	$f12,$f14,$f12
    # Line 4484
    add.s	$f7,$f9,$f15
    sub.s	$f9,$f15,$f9
    # Line 4479
    mul.s	$f12,$f12,$f5
    # Line 4484
    mul.s	$f9,$f9,$f5
    # Line 4467
    addiu	$sp,$sp,-64
    # Line 4484
    mul.s	$f7,$f7,$f4
    li	$a5,2
    # Line 4467
    lui	$v1,0x10
    # Line 4479
    mul.s	$f11,$f11,$f4
    # Line 4471
    lw	$v0,28216($a0)
    # Line 4467
    addiu	$v1,$v1,-15116
    # addu	at,t9,v1
    # Line 4479
    lw	$a4,228($v0)
    # Line 4484
    sub.s	$f7,$f7,$f9
    lw	$t9,232($v0)
    lwc1	$f9,36($a4)
    # Line 4479
    sub.s	$f11,$f11,$f12
    lwc1	$f12,32($a4)
    # Line 4484
    mul.s	$f7,$f7,$f9
    slt	$a5,$a5,$t9
    beqz	$a5,.L0dafb418
    # Line 4479
    mul.s	$f11,$f11,$f12
    # Line 4490
    lwc1	$f2,252($a1)
    add.s	$f1,$f2,$f16
    sub.s	$f2,$f16,$f2
    mul.s	$f2,$f2,$f5
    mul.s	$f1,$f1,$f4
    sub.s	$f1,$f1,$f2
    lwc1	$f0,40($a4)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($sp)
.L0dafb418:
    # Line 4494
    lwc1	$f5,276($a1)
    # Line 4495
    add.s	$f4,$f5,$f17
    div.s	$f4,$f6,$f4
    # Line 4494
    sub.s	$f5,$f17,$f5
    div.s	$f5,$f6,$f5
    # Line 4503
    lwc1	$f1,268($a1)
    add.s	$f0,$f1,$f15
    # Line 4498
    lwc1	$f2,264($a1)
    # Line 4503
    sub.s	$f1,$f15,$f1
    # Line 4498
    add.s	$f10,$f2,$f14
    # Line 4503
    mul.s	$f1,$f1,$f5
    # Line 4498
    sub.s	$f2,$f14,$f2
    # Line 4503
    mul.s	$f0,$f0,$f4
    # Line 4498
    mul.s	$f2,$f2,$f5
    mul.s	$f10,$f10,$f4
    # Line 4503
    sub.s	$f0,$f0,$f1
    mul.s	$f8,$f11,$f11
    mul.s	$f0,$f0,$f9
    # Line 4498
    sub.s	$f10,$f10,$f2
    # Line 4503
    mul.s	$f1,$f7,$f7
    # Line 4498
    mul.s	$f10,$f10,$f12
    # Line 4503
    mul.s	$f0,$f0,$f0
    mul.s	$f10,$f10,$f10
    add.s	$f8,$f8,$f1
    # Line 4516
    mov.s	$f7,$f8
    # Line 4503
    beqz	$a5,.L0dafb4e0
    add.s	$f10,$f10,$f0
    # Line 4509
    lwc1	$f0,272($a1)
    add.s	$f7,$f0,$f16
    sub.s	$f0,$f16,$f0
    mul.s	$f0,$f0,$f5
    mul.s	$f7,$f7,$f4
    sub.s	$f7,$f7,$f0
    lwc1	$f6,40($a4)
    mul.s	$f6,$f6,$f7
    # Line 4512
    lwc1	$f7,0($sp)
    mul.s	$f7,$f7,$f7
    # Line 4513
    mul.s	$f6,$f6,$f6
    # Line 4512
    add.s	$f7,$f7,$f8
    # Line 4513
    add.s	$f6,$f6,$f10
.L0dafb4b8:
    # Line 4517
    c.lt.s	$f6,$f7
    nop
    bc1f	.L0dafb4d4
    lwc1	$f5,_lit_3e800000
    # Line 4522
    mul.s	$f0,$f7,$f5
    jr	$ra
    addiu	$sp,$sp,64
.L0dafb4d4:
    # Line 4524
    mul.s	$f0,$f6,$f5
    jr	$ra
    addiu	$sp,$sp,64
.L0dafb4e0:
    b	.L0dafb4b8
    # Line 4517
    mov.s	$f6,$f10
.end __glComputePolygonRho

# Function: __glNopLineRho
# Declared: Line 4529 (Source lines: 4532-4533)
# Address: 0x0dafb4e8 - 0x0dafb4fc (Size: 20 bytes, Frame: 0)
.globl __glNopLineRho
.ent __glNopLineRho
__glNopLineRho:
    # Line 4532
    lui	$v0,0x10
    addiu	$v0,$v0,-15488
    # addu	at,t9,v0
    # Line 4533
    jr	$ra
    mtc1	$zero,$f0
.end __glNopLineRho

# Function: __glComputeLineRho
# Declared: Line 4536 (Source lines: 4546-4605)
# Address: 0x0dafb4fc - 0x0dafb650 (Size: 340 bytes, Frame: 0)
.globl __glComputeLineRho
.ent __glComputeLineRho
__glComputeLineRho:
    # Line 4547
    lw	$a4,29952($a0)
    # Line 4548
    lw	$a3,29956($a0)
    # Line 4551
    lwc1	$f0,128($a4)
    lwc1	$f11,128($a3)
    # Line 4552
    lwc1	$f10,132($a3)
    # Line 4551
    sub.s	$f11,$f11,$f0
    # Line 4552
    lwc1	$f0,132($a4)
    sub.s	$f10,$f10,$f0
    # Line 4554
    mul.s	$f6,$f11,$f11
    mul.s	$f7,$f10,$f10
    add.s	$f6,$f6,$f7
    sqrt.s	$f6,$f6
    # Line 4557
    lwc1	$f8,140($a4)
    # Line 4559
    lwc1	$f2,48($a4)
    mul.s	$f2,$f2,$f8
    # Line 4558
    lwc1	$f7,140($a3)
    # Line 4561
    lwc1	$f0,48($a3)
    # Line 4574
    sub.s	$f4,$f7,$f8
    # Line 4561
    mul.s	$f0,$f0,$f7
    # Line 4574
    mul.s	$f1,$f4,$f13
    sub.s	$f0,$f0,$f2
    sub.s	$f0,$f0,$f1
    div.s	$f0,$f0,$f16
    # Line 4560
    lwc1	$f3,52($a4)
    mul.s	$f3,$f3,$f8
    # Line 4562
    lwc1	$f2,52($a3)
    mul.s	$f2,$f2,$f7
    # Line 4576
    mul.s	$f1,$f4,$f14
    sub.s	$f14,$f2,$f3
    sub.s	$f14,$f14,$f1
    div.s	$f14,$f14,$f16
    # Line 4554
    lwc1	$f5,3284($a0)
    div.s	$f5,$f5,$f6
    # Line 4574
    mul.s	$f9,$f0,$f11
    # Line 4575
    mul.s	$f0,$f0,$f10
    # Line 4574
    mul.s	$f5,$f5,$f5
    # Line 4576
    mul.s	$f13,$f14,$f11
    # Line 4546
    lw	$at,28216($a0)
    # Line 4575
    mul.s	$f0,$f0,$f5
    # Line 4574
    lw	$a2,228($at)
    # Line 4577
    mul.s	$f14,$f14,$f10
    # Line 4574
    lwc1	$f1,32($a2)
    # Line 4576
    mul.s	$f13,$f13,$f5
    # Line 4575
    mul.s	$f0,$f0,$f1
    # Line 4574
    mul.s	$f9,$f9,$f5
    # Line 4577
    mul.s	$f14,$f14,$f5
    # Line 4582
    mul.s	$f0,$f10,$f0
    # Line 4574
    mul.s	$f9,$f9,$f1
    # Line 4576
    lwc1	$f1,36($a2)
    # Line 4577
    mul.s	$f14,$f14,$f1
    # Line 4576
    mul.s	$f13,$f13,$f1
    # Line 4582
    mul.s	$f9,$f11,$f9
    mul.s	$f14,$f10,$f14
    mul.s	$f13,$f11,$f13
    add.s	$f9,$f9,$f0
    add.s	$f13,$f13,$f14
    mul.s	$f9,$f9,$f9
    mul.s	$f13,$f13,$f13
    lw	$at,232($at)
    add.s	$f9,$f9,$f13
    slti	$at,$at,3
    bnez	$at,.L0dafb648
    mov.s	$f6,$f9
    # Line 4590
    lwc1	$f2,56($a4)
    # Line 4591
    lwc1	$f0,56($a3)
    # Line 4590
    mul.s	$f2,$f2,$f8
    # Line 4591
    mul.s	$f0,$f0,$f7
    # Line 4598
    mul.s	$f1,$f4,$f15
    sub.s	$f0,$f0,$f2
    sub.s	$f0,$f0,$f1
    div.s	$f0,$f0,$f16
    mul.s	$f6,$f0,$f11
    # Line 4599
    mul.s	$f0,$f0,$f10
    mul.s	$f0,$f0,$f5
    # Line 4598
    mul.s	$f6,$f6,$f5
    lwc1	$f1,40($a2)
    # Line 4599
    mul.s	$f0,$f0,$f1
    # Line 4598
    mul.s	$f6,$f6,$f1
    # Line 4602
    mul.s	$f0,$f10,$f0
    mul.s	$f6,$f11,$f6
    add.s	$f6,$f6,$f0
    mul.s	$f6,$f6,$f6
    add.s	$f6,$f6,$f9
.L0dafb648:
    # Line 4605
    jr	$ra
    mul.s	$f0,$f5,$f6
.end __glComputeLineRho

# Function: __glFastTextureFragment
# Declared: Line 4616 (Source lines: 4619-4628)
# Address: 0x0dafb650 - 0x0dafb6b8 (Size: 104 bytes, Frame: 240)
.globl __glFastTextureFragment
.ent __glFastTextureFragment
__glFastTextureFragment:
    # Line 4619
    addiu	$sp,$sp,-112
    # Line 4626
    addiu	$a5,$sp,0
    sd	$a1,56($sp)
    # sd	gp,40(sp)
    # Line 4619
    lui	$at,0x10
    sd	$s8,32($sp)
    move	$s8,$a0
    # Line 4620
    lw	$a0,28216($a0)
    # Line 4619
    addiu	$at,$at,-15848
    # addu	gp,t9,at
    # Line 4626
    lw	$t9,264($a0)
    sd	$ra,24($sp)
    mtc1	$zero,$f13
    jalr	$t9
    sd	$a0,48($sp)
    # Line 4627
    ld	$t9,48($sp)
    lw	$t9,260($t9)
    move	$a0,$s8
    ld	$a1,56($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 4628
    ld	$ra,24($sp)
    # ld	gp,40(sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glFastTextureFragment

# Function: __glTextureFragment
# Declared: Line 4633 (Source lines: 4636-4648)
# Address: 0x0dafb6b8 - 0x0dafb740 (Size: 136 bytes, Frame: 240)
.globl __glTextureFragment
.ent __glTextureFragment
__glTextureFragment:
    # Line 4636
    addiu	$sp,$sp,-112
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 4637
    lw	$s0,28216($a0)
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    lwc1	$f0,240($s0)
    # sd	gp,48(sp)
    # Line 4636
    lui	$at,0x10
    # Line 4637
    c.le.s	$f17,$f0
    # Line 4636
    addiu	$at,$at,-15952
    # addu	gp,t9,at
    # Line 4637
    bc1f	.L0dafb728
    mtc1	$zero,$f13
    # Line 4641
    lw	$t9,264($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 4647
    lw	$t9,260($s0)
.L0dafb704:
    ld	$a0,24($sp)
    ld	$a1,32($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    # ld	gp,48(sp)
    # Line 4648
    jr	$ra
    addiu	$sp,$sp,112
.L0dafb728:
    # Line 4643
    lw	$t9,268($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a5,$sp,0
    b	.L0dafb704
    # Line 4647
    lw	$t9,260($s0)
.end __glTextureFragment

# Function: __glMipMapFragment
# Declared: Line 4650 (Source lines: 4653-4689)
# Address: 0x0dafb740 - 0x0dafb884 (Size: 324 bytes, Frame: 240)
.globl __glMipMapFragment
.ent __glMipMapFragment
__glMipMapFragment:
    # Line 4653
    addiu	$sp,$sp,-112
    sd	$s0,40($sp)
    # Line 4654
    lw	$s0,28216($a0)
    lwc1	$f0,240($s0)
    # sd	gp,48(sp)
    c.le.s	$f17,$f0
    # Line 4653
    lui	$at,0x10
    addiu	$at,$at,-16088
    # Line 4654
    bc1t	.L0dafb85c
    # Line 4653
    nop
    # Line 4662
    mtc1	$zero,$f4
    c.eq.s	$f17,$f4
    nop
    bc1t	.L0dafb810
    # Line 4677
    move	$a3,$zero
    # Line 4678
    trunc.w.s	$f1,$f17
    mfc1	$a4,$f1
    nop
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dafb7c8
    # Line 4680
    li	$at,1
    # Line 4678
    addiu	$a3,$a3,1
.L0dafb798:
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dafb7c4
    nop
    addiu	$a3,$a3,1
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dafb7c4
    nop
    addiu	$a3,$a3,1
    sra	$a4,$a4,0x1
    bnezl	$a4,.L0dafb798
    addiu	$a3,$a3,1
.L0dafb7c4:
    # Line 4680
    li	$at,1
.L0dafb7c8:
    sllv	$at,$at,$a3
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f17,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a3,$f17
    nop
    cvt.s.w	$f17,$f17
    add.s	$f17,$f17,$f0
    ldc1	$f0,_lit8_3fe0000000000000
    cvt.d.s	$f17,$f17
    mul.d	$f17,$f17,$f0
    sd	$ra,56($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    b	.L0dafb820
    cvt.s.d	$f17,$f17
.L0dafb810:
    sd	$ra,56($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    # Line 4682
    mov.s	$f17,$f4
.L0dafb820:
    # Line 4684
    lw	$t9,268($s0)
    move	$a0,$s0
    mov.s	$f13,$f17
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 4688
    lw	$t9,260($s0)
.L0dafb838:
    ld	$a0,32($sp)
    ld	$a1,24($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    # ld	gp,48(sp)
    # Line 4689
    jr	$ra
    addiu	$sp,$sp,112
.L0dafb85c:
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    # Line 4662
    move	$a0,$s0
    lw	$t9,264($s0)
    mov.s	$f13,$f17
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a5,$sp,0
    b	.L0dafb838
    # Line 4688
    lw	$t9,260($s0)
.end __glMipMapFragment

# Function: Dot
# Declared: Line 4694 (Source lines: 4696-4696)
# Address: 0x0dafb884 - 0x0dafb8b4 (Size: 48 bytes, Frame: 0)
.ent Dot
Dot:
    # Line 4696
    lwc1	$f3,4($a1)
    lwc1	$f2,4($a0)
    lwc1	$f1,0($a1)
    lwc1	$f0,0($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($a0)
    mul.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f2
    jr	$ra
    add.s	$f0,$f0,$f1
.end Dot

# Function: SphereGen
# Declared: Line 4704 (Source lines: 4705-4730)
# Address: 0x0dafb8b4 - 0x0dafb9b4 (Size: 256 bytes, Frame: 208)
.ent SphereGen
SphereGen:
    # Line 4705
    addiu	$sp,$sp,-80
    sd	$s8,40($sp)
    move	$s8,$a2
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 4710
    addiu	$a1,$a1,96
    sd	$s1,24($sp)
    lw	$t9,11912($a0)
    # Line 4705
    move	$s1,$a0
    sd	$ra,32($sp)
    # Line 4710
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 4713
    # lw $t9, -32704($gp) # &sub_0db00000
    addiu	$a1,$sp,0
    addiu	$t9,$t9,-18300
    bal __glMipMapFragment
    addiu	$a0,$s0,32
    # Line 4716
    lwc1	$f1,_lit_40000000
    lwc1	$f4,32($s0)
    # Line 4718
    lwc1	$f2,40($s0)
    # Line 4716
    mul.s	$f4,$f4,$f1
    # Line 4717
    lwc1	$f3,36($s0)
    # Line 4718
    mul.s	$f2,$f2,$f1
    # Line 4717
    mul.s	$f3,$f3,$f1
    # Line 4716
    mul.s	$f4,$f4,$f0
    # Line 4718
    mul.s	$f2,$f2,$f0
    # Line 4716
    lwc1	$f8,0($sp)
    # Line 4717
    mul.s	$f3,$f3,$f0
    # Line 4718
    lwc1	$f0,8($sp)
    # Line 4716
    sub.s	$f8,$f8,$f4
    # Line 4717
    lwc1	$f7,4($sp)
    # Line 4718
    sub.s	$f0,$f0,$f2
    lwc1	$f2,_lit_3f800000
    # Line 4717
    sub.s	$f7,$f7,$f3
    # Line 4718
    add.s	$f0,$f0,$f2
    mul.s	$f2,$f7,$f7
    mul.s	$f6,$f8,$f8
    mul.s	$f0,$f0,$f0
    add.s	$f6,$f6,$f2
    add.s	$f6,$f6,$f0
    sqrt.s	$f6,$f6
    mul.s	$f6,$f6,$f1
    mtc1	$zero,$f0
    c.eq.s	$f6,$f0
    lwc1	$f5,3280($s1)
    bc1t	.L0dafb994
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    # Line 4725
    div.s	$f1,$f7,$f6
    # Line 4724
    div.s	$f2,$f8,$f6
    add.s	$f2,$f2,$f5
    swc1	$f2,0($s8)
    # Line 4725
    lwc1	$f0,3280($s1)
    add.s	$f0,$f0,$f1
    b	.L0dafb9a4
    swc1	$f0,4($s8)
.L0dafb994:
    ld	$s0,16($sp)
    # Line 4727
    swc1	$f5,0($s8)
    # Line 4728
    lwc1	$f3,3280($s1)
    swc1	$f3,4($s8)
.L0dafb9a4:
    # Line 4730
    ld	$s1,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end SphereGen

# Function: __glCalcMixedTexture
# Declared: Line 4735 (Source lines: 4736-4828)
# Address: 0x0dafb9b4 - 0x0dafbd70 (Size: 956 bytes, Frame: 224)
.globl __glCalcMixedTexture
.ent __glCalcMixedTexture
__glCalcMixedTexture:
    # Line 4738
    move	$a3,$zero
    # Line 4736
    addiu	$sp,$sp,-96
    sd	$s2,56($sp)
    move	$s2,$a1
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 4739
    lui	$at,0x4
    sd	$s1,40($sp)
    lw	$s1,1696($a0)
    # Line 4736
    lui	$v0,0x10
    addiu	$v0,$v0,-16716
    # Line 4739
    and	$at,$s1,$at
    beqz	$at,.L0dafbac4
    # Line 4736
    addu	$gp,$t9,$v0
    # Line 4744
    lw	$a0,1876($s0)
    li	$v1,9216
    beq	$a0,$v1,.L0dafbaf8
    li	$at,9218
    li	$a2,9217
    beql	$a0,$a2,.L0dafbc1c
    # Line 4752
    lwc1	$f3,16($s2)
    # Line 4744
    beq	$a0,$at,.L0dafbd24
.L0dafba10:
    # Line 4760
    nop	# was lw $t9, -32704($gp) # &sub_0db00000
    addiu	$t9,$t9,-18252
.L0dafba18:
    # Line 4762
    lui	$at,0x8
    and	$at,$s1,$at
    beqzl	$at,.L0dafbad8
    # Line 4786
    lwc1	$f1,52($s2)
    # Line 4767
    lw	$a0,2000($s0)
    li	$v0,9216
    beq	$a0,$v0,.L0dafbb3c
    li	$v1,9217
    beq	$a0,$v1,.L0dafbc5c
    li	$a2,9218
    beq	$a0,$a2,.L0dafbc0c
.L0dafba44:
    # Line 4786
    lui	$at,0x10
    and	$at,$s1,$at
    beqz	$at,.L0dafbae0
    # Line 4804
    lui	$a2,0x20
    # Line 4791
    lw	$a0,2124($s0)
    li	$v0,9216
    beq	$a0,$v0,.L0dafbb80
    li	$v1,9217
    beql	$a0,$v1,.L0dafbca0
    # Line 4799
    lwc1	$f2,16($s2)
.L0dafba6c:
    # Line 4804
    and	$a2,$s1,$a2
    beqzl	$a2,.L0dafbaec
    # Line 4822
    lwc1	$f3,60($s2)
    # Line 4809
    lw	$a0,2248($s0)
    li	$at,9216
    beq	$a0,$at,.L0dafbbc4
    li	$v0,9217
    beql	$a0,$v0,.L0dafbce0
    # Line 4817
    lwc1	$f3,2272($s0)
.L0dafba90:
    # Line 4826
    lw	$a2,29684($s0)
    # Line 4827
    lw	$t9,80($a2)
    addiu	$a1,$sp,0
    sd	$ra,64($sp)
    jal	sub_0db00000
    addiu	$a0,$s2,48
    ld	$gp,32($sp)
    # Line 4828
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dafbac4:
    # Line 4762
    # lw $t9, -32704($gp) # &sub_0db00000
    lwc1	$f0,48($s2)
    addiu	$t9,$t9,-18252
    b	.L0dafba18
    swc1	$f0,0($sp)
.L0dafbad8:
    b	.L0dafba44
    # Line 4786
    swc1	$f1,4($sp)
.L0dafbae0:
    # Line 4804
    lwc1	$f2,56($s2)
    b	.L0dafba6c
    swc1	$f2,8($sp)
.L0dafbaec:
    sd	$ra,64($sp)
    b	.L0dafba90
    # Line 4822
    swc1	$f3,12($sp)
.L0dafbaf8:
    # Line 4747
    lwc1	$f3,1884($s0)
    lwc1	$f2,100($s2)
    lwc1	$f0,1880($s0)
    lwc1	$f4,96($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,104($s2)
    lwc1	$f3,1888($s0)
    mul.s	$f4,$f4,$f0
    lwc1	$f0,108($s2)
    mul.s	$f1,$f1,$f3
    lwc1	$f3,1892($s0)
    mul.s	$f0,$f0,$f3
    add.s	$f4,$f4,$f2
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    # Line 4749
    b	.L0dafba10
    # Line 4747
    swc1	$f4,0($sp)
.L0dafbb3c:
    # Line 4770
    lwc1	$f0,2008($s0)
    lwc1	$f4,100($s2)
    lwc1	$f2,2004($s0)
    lwc1	$f1,96($s2)
    mul.s	$f4,$f4,$f0
    lwc1	$f3,104($s2)
    lwc1	$f0,2012($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,108($s2)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,2016($s0)
    mul.s	$f2,$f2,$f0
    add.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    # Line 4772
    b	.L0dafba44
    # Line 4770
    swc1	$f1,4($sp)
.L0dafbb80:
    # Line 4794
    lwc1	$f2,2132($s0)
    lwc1	$f1,100($s2)
    lwc1	$f4,2128($s0)
    lwc1	$f3,96($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,104($s2)
    lwc1	$f2,2136($s0)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,108($s2)
    mul.s	$f0,$f0,$f2
    lwc1	$f2,2140($s0)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    # Line 4796
    b	.L0dafba6c
    # Line 4794
    swc1	$f3,8($sp)
.L0dafbbc4:
    # Line 4812
    lwc1	$f4,2256($s0)
    lwc1	$f3,100($s2)
    lwc1	$f1,2252($s0)
    lwc1	$f0,96($s2)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,104($s2)
    lwc1	$f4,2260($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,108($s2)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,2264($s0)
    mul.s	$f1,$f1,$f4
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    sd	$ra,64($sp)
    # Line 4814
    b	.L0dafba90
    # Line 4812
    swc1	$f0,12($sp)
.L0dafbc0c:
    # Line 4779
    beqz	$a3,.L0dafbd54
.L0dafbc10:
    # Line 4782
    lwc1	$f2,20($sp)
    # Line 4783
    b	.L0dafba44
    # Line 4782
    swc1	$f2,4($sp)
.L0dafbc1c:
    # Line 4752
    lwc1	$f4,1896($s0)
    mul.s	$f3,$f3,$f4
    lwc1	$f1,20($s2)
    lwc1	$f2,1900($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,24($s2)
    lwc1	$f2,1904($s0)
    mul.s	$f0,$f0,$f2
    lwc1	$f4,28($s2)
    lwc1	$f2,1908($s0)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    # Line 4754
    b	.L0dafba10
    # Line 4752
    swc1	$f3,0($sp)
.L0dafbc5c:
    # Line 4775
    lwc1	$f0,16($s2)
    lwc1	$f1,2020($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,20($s2)
    lwc1	$f4,2024($s0)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,24($s2)
    lwc1	$f4,2028($s0)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,28($s2)
    lwc1	$f4,2032($s0)
    mul.s	$f1,$f1,$f4
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 4777
    b	.L0dafba44
    # Line 4775
    swc1	$f0,4($sp)
.L0dafbca0:
    # Line 4799
    lwc1	$f3,2144($s0)
    mul.s	$f2,$f2,$f3
    lwc1	$f0,20($s2)
    lwc1	$f1,2148($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,24($s2)
    lwc1	$f1,2152($s0)
    mul.s	$f4,$f4,$f1
    lwc1	$f3,28($s2)
    lwc1	$f1,2156($s0)
    mul.s	$f3,$f3,$f1
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    # Line 4801
    b	.L0dafba6c
    # Line 4799
    swc1	$f2,8($sp)
.L0dafbce0:
    # Line 4817
    lwc1	$f2,20($s2)
    lwc1	$f0,2268($s0)
    lwc1	$f4,16($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,24($s2)
    lwc1	$f3,2276($s0)
    mul.s	$f4,$f4,$f0
    lwc1	$f0,28($s2)
    mul.s	$f1,$f1,$f3
    lwc1	$f3,2280($s0)
    mul.s	$f0,$f0,$f3
    add.s	$f4,$f4,$f2
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    sd	$ra,64($sp)
    # Line 4819
    b	.L0dafba90
    # Line 4817
    swc1	$f4,12($sp)
.L0dafbd24:
    # Line 4756
    addiu	$a2,$sp,16
    # lw $t9, -32704($gp) # &sub_0db00000
    move	$a1,$s2
    sd	$ra,64($sp)
    addiu	$t9,$t9,-18252
    bal __glMipMapFragment
    move	$a0,$s0
    # Line 4758
    li	$a3,1
    # Line 4757
    lwc1	$f1,16($sp)
    ld	$ra,64($sp)
    b	.L0dafba10
    swc1	$f1,0($sp)
.L0dafbd54:
    # Line 4780
    move	$a0,$s0
    move	$a1,$s2
    sd	$ra,64($sp)
    bal __glMipMapFragment
    addiu	$a2,$sp,16
    b	.L0dafbc10
    ld	$ra,64($sp)
.end __glCalcMixedTexture

# Function: __glCalcSphereMap
# Declared: Line 4831 (Source lines: 4832-4843)
# Address: 0x0dafbd70 - 0x0dafbde0 (Size: 112 bytes, Frame: 192)
.globl __glCalcSphereMap
.ent __glCalcSphereMap
__glCalcSphereMap:
    # Line 4832
    addiu	$sp,$sp,-64
    # Line 4836
    addiu	$a2,$sp,0
    # sd	gp,32(sp)
    sd	$s8,24($sp)
    # Line 4832
    lui	$s8,0x10
    addiu	$s8,$s8,-17672
    # addu	gp,t9,s8
    # Line 4836
    # lw $t9, -32704($gp) # &sub_0db00000
    sd	$a1,40($sp)
    sd	$ra,16($sp)
    addiu	$t9,$t9,-18252
    bal __glMipMapFragment
    # Line 4832
    move	$s8,$a0
    ld	$a0,40($sp)
    # Line 4837
    lwc1	$f1,56($a0)
    swc1	$f1,8($sp)
    # Line 4838
    lwc1	$f0,60($a0)
    swc1	$f0,12($sp)
    # Line 4841
    lw	$a2,29684($s8)
    # Line 4842
    lw	$t9,80($a2)
    addiu	$a1,$sp,0
    jal	sub_0db00000
    addiu	$a0,$a0,48
    # Line 4843
    ld	$ra,16($sp)
    # ld	gp,32(sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glCalcSphereMap

# Function: __glCalcEyeLinear
# Declared: Line 4847 (Source lines: 4848-4865)
# Address: 0x0dafbde0 - 0x0dafbeac (Size: 204 bytes, Frame: 48)
.globl __glCalcEyeLinear
.ent __glCalcEyeLinear
__glCalcEyeLinear:
    # Line 4854
    lwc1	$f8,1884($a0)
    lwc1	$f7,100($a1)
    lwc1	$f5,1880($a0)
    lwc1	$f4,96($a1)
    mul.s	$f7,$f7,$f8
    lwc1	$f6,104($a1)
    lwc1	$f8,1888($a0)
    mul.s	$f4,$f4,$f5
    lwc1	$f5,108($a1)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,1892($a0)
    mul.s	$f5,$f5,$f8
    add.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    add.s	$f4,$f4,$f5
    # Line 4848
    addiu	$sp,$sp,-48
    # Line 4854
    swc1	$f4,0($sp)
    # Line 4857
    lwc1	$f6,2008($a0)
    lwc1	$f5,100($a1)
    lwc1	$f3,2004($a0)
    lwc1	$f2,96($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f4,104($a1)
    lwc1	$f6,2012($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,108($a1)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,2016($a0)
    mul.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($sp)
    # Line 4859
    lwc1	$f1,56($a1)
    swc1	$f1,8($sp)
    # Line 4860
    lwc1	$f0,60($a1)
    # sd	gp,24(sp)
    swc1	$f0,12($sp)
    # Line 4848
    lui	$at,0x10
    # Line 4863
    lw	$a2,29684($a0)
    # Line 4848
    addiu	$at,$at,-17784
    # addu	gp,t9,at
    # Line 4864
    lw	$t9,80($a2)
    sd	$ra,16($sp)
    addiu	$a0,$a1,48
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 4865
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCalcEyeLinear

# Function: __glCalcObjectLinear
# Declared: Line 4867 (Source lines: 4868-4885)
# Address: 0x0dafbeac - 0x0dafbf78 (Size: 204 bytes, Frame: 48)
.globl __glCalcObjectLinear
.ent __glCalcObjectLinear
__glCalcObjectLinear:
    # Line 4874
    lwc1	$f8,1900($a0)
    lwc1	$f7,20($a1)
    lwc1	$f5,1896($a0)
    lwc1	$f4,16($a1)
    mul.s	$f7,$f7,$f8
    lwc1	$f6,24($a1)
    lwc1	$f8,1904($a0)
    mul.s	$f4,$f4,$f5
    lwc1	$f5,28($a1)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,1908($a0)
    mul.s	$f5,$f5,$f8
    add.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    add.s	$f4,$f4,$f5
    # Line 4868
    addiu	$sp,$sp,-48
    # Line 4874
    swc1	$f4,0($sp)
    # Line 4877
    lwc1	$f6,2024($a0)
    lwc1	$f5,20($a1)
    lwc1	$f3,2020($a0)
    lwc1	$f2,16($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f4,24($a1)
    lwc1	$f6,2028($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,28($a1)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,2032($a0)
    mul.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($sp)
    # Line 4879
    lwc1	$f1,56($a1)
    swc1	$f1,8($sp)
    # Line 4880
    lwc1	$f0,60($a1)
    # sd	gp,24(sp)
    swc1	$f0,12($sp)
    # Line 4868
    lui	$at,0x10
    # Line 4883
    lw	$a2,29684($a0)
    # Line 4868
    addiu	$at,$at,-17988
    # addu	gp,t9,at
    # Line 4884
    lw	$t9,80($a2)
    sd	$ra,16($sp)
    addiu	$a0,$a1,48
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 4885
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCalcObjectLinear

# Function: __glCalcTexture
# Declared: Line 4887 (Source lines: 4888-4900)
# Address: 0x0dafbf78 - 0x0dafbfd4 (Size: 92 bytes, Frame: 48)
.globl __glCalcTexture
.ent __glCalcTexture
__glCalcTexture:
    # Line 4892
    lwc1	$f3,48($a1)
    # Line 4888
    addiu	$sp,$sp,-48
    # Line 4892
    swc1	$f3,0($sp)
    # Line 4893
    lwc1	$f2,52($a1)
    swc1	$f2,4($sp)
    # Line 4894
    lwc1	$f1,56($a1)
    swc1	$f1,8($sp)
    # Line 4895
    lwc1	$f0,60($a1)
    # sd	gp,24(sp)
    swc1	$f0,12($sp)
    # Line 4888
    lui	$at,0x10
    # Line 4898
    lw	$a2,29684($a0)
    # Line 4888
    addiu	$at,$at,-18192
    # addu	gp,t9,at
    # Line 4899
    lw	$t9,80($a2)
    sd	$ra,16($sp)
    addiu	$a0,$a1,48
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 4900
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCalcTexture

# Function: CheckTexSubImageArgs
# Declared: Line 4905 (Source lines: 4908-4978)
# Address: 0x0dafbfd4 - 0x0dafc320 (Size: 844 bytes, Frame: 240)
.ent CheckTexSubImageArgs
CheckTexSubImageArgs:
    # Line 4908
    addiu	$sp,$sp,-112
    sd	$a0,0($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s3,24($sp)
    move	$s3,$a2
    sd	$s2,48($sp)
    move	$s2,$a3
    sd	$s0,32($sp)
    # Line 4909
    # lw $t9, -27068($gp) # &__glLookUpTexture
    # Line 4908
    move	$s0,$a4
    sd	$ra,40($sp)
    # Line 4909
    jal	__glLookUpTexture
    sd	$a5,8($sp)
    beqz	$v0,.L0dafc0f8
    move	$a0,$v0
    li	$at,0x8063
    beq	$s1,$at,.L0dafc0f8
    # Line 4911
    li	$v1,0x8064
    beq	$s1,$v1,.L0dafc0f8
    li	$a6,0x8070
    beq	$s1,$a6,.L0dafc0f8
    # Line 4920
    ld	$at,8($sp)
    lw	$a7,232($v0)
    # Line 4924
    sltiu	$a6,$s0,5123
    # Line 4920
    bne	$a7,$at,.L0dafc0f8
    # Line 4978
    ld	$s1,16($sp)
    # Line 4924
    sltiu	$v1,$s0,5126
    bnez	$v1,.L0dafc09c
    nop
    sltiu	$a6,$s0,5127
    beqz	$a6,.L0dafc148
.L0dafc054:
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc058:
    # Line 4960
    sltiu	$a7,$s2,6407
    bnez	$a7,.L0dafc0c4
    # Line 4978
    ld	$s0,32($sp)
    # Line 4962
    sltiu	$at,$s2,6408
    beqz	$at,.L0dafc1cc
    sltiu	$a6,$s2,6410
.L0dafc070:
    # Line 4973
    bltz	$s3,.L0dafc1ec
    # Line 4978
    ld	$s2,48($sp)
    ld	$v1,0($sp)
    # Line 4973
    lw	$v1,3436($v1)
    slt	$v1,$s3,$v1
    beqz	$v1,.L0dafc1ec
    # Line 4978
    ld	$s3,24($sp)
    ld	$ra,40($sp)
    move	$v0,$a0
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc09c:
    # Line 4924
    bnez	$a6,.L0dafc124
    sltiu	$a7,$s0,5124
    bnez	$a7,.L0dafc054
    sltiu	$at,$s0,5125
    bnez	$at,.L0dafc294
    sltiu	$v1,$s0,5126
    beqz	$v1,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc0c4:
    bnez	$a6,.L0dafc1b0
    sltiu	$a7,$s2,6405
    bnez	$a7,.L0dafc070
    sltiu	$at,$s2,6406
    bnez	$at,.L0dafc2d0
    sltiu	$v1,$s2,6407
    beqz	$v1,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc0ec:
    # Line 4924
    li	$a6,5120
    beq	$s0,$a6,.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc0f8:
    # Line 4916
    # lw $t9, -29008($gp) # &__glSetError
.L0dafc0fc:
    jal	__glSetError
    li	$a0,1280
    # Line 4917
    move	$v0,$zero
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc124:
    # Line 4924
    sltiu	$a7,$s0,5121
    bnez	$a7,.L0dafc0ec
    sltiu	$at,$s0,5122
    bnez	$at,.L0dafc054
    li	$v1,5122
    bne	$s0,$v1,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc148:
    # Line 4924
    li	$v0,0x8034
    sltu	$a6,$s0,$v0
    bnez	$a6,.L0dafc218
    sltu	$a7,$v0,$s0
    beqz	$a7,.L0dafc170
    li	$v0,0x8036
    sltu	$at,$s0,$v0
    bnez	$at,.L0dafc30c
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0dafc0f8
.L0dafc170:
    # Line 4949
    li	$a6,6408
.L0dafc174:
    beq	$s2,$a6,.L0dafc054
    li	$a7,0x8000
    beq	$s2,$a7,.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
    # Line 4954
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 4955
    move	$v0,$zero
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc1b0:
    # Line 4962
    sltiu	$at,$s2,6403
    bnez	$at,.L0dafc264
    sltiu	$v1,$s2,6404
    beqz	$v1,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc1cc:
    # Line 4962
    bnez	$a6,.L0dafc278
    sltiu	$a7,$s2,6411
    bnez	$a7,.L0dafc070
    li	$at,0x8000
    bne	$s2,$at,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc1ec:
    # Line 4974
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 4975
    move	$v0,$zero
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc218:
    # Line 4924
    li	$v0,0x8032
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0dafc2a8
    sltu	$a6,$v0,$s0
    bnez	$a6,.L0dafc2f8
    # Line 4937
    li	$a7,6407
    beq	$s2,$a7,.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
    # Line 4941
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 4942
    move	$v0,$zero
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafc264:
    # Line 4962
    li	$at,6400
    bne	$s2,$at,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc278:
    # Line 4962
    sltiu	$v1,$s2,6409
    bnez	$v1,.L0dafc2e4
    sltiu	$a6,$s2,6410
    beqz	$a6,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc294:
    # Line 4924
    li	$a7,5124
    bne	$s0,$a7,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc2a8:
    # Line 4924
    li	$at,6656
    bne	$s0,$at,.L0dafc0f8
    # Line 4926
    li	$v1,6400
    bne	$s2,$v1,.L0dafc0f8
    ld	$a6,8($sp)
    # Line 4927
    slti	$a6,$a6,3
    beqz	$a6,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc058
    # Line 4962
    sltiu	$a6,$s2,6404
.L0dafc2d0:
    li	$a7,6405
    bne	$s2,$a7,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc2e4:
    # Line 4962
    li	$at,6408
    bne	$s2,$at,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc070
    nop
.L0dafc2f8:
    # Line 4924
    li	$v1,0x8033
    bne	$s0,$v1,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc174
    # Line 4949
    li	$a6,6408
.L0dafc30c:
    # Line 4924
    li	$a6,0x8035
    bne	$s0,$a6,.L0dafc0fc
    # Line 4916
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dafc174
    # Line 4949
    li	$a6,6408
.end CheckTexSubImageArgs

# Function: __glInitTexSubImageStore
# Declared: Line 4981 (Source lines: 4984-4994)
# Address: 0x0dafc320 - 0x0dafc3e0 (Size: 192 bytes, Frame: 128)
.globl __glInitTexSubImageStore
.ent __glInitTexSubImageStore
__glInitTexSubImageStore:
    # Line 4984
    addiu	$sp,$sp,-128
    sd	$a6,32($sp)
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a2,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    move	$at,$a2
    # Line 4985
    lw	$at,228($at)
    # sd	gp,16(sp)
    # Line 4984
    lui	$v0,0x10
    addiu	$v0,$v0,-19128
    # addu	gp,t9,v0
    # Line 4987
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    # Line 4985
    sll	$v0,$a3,0x2
    subu	$v0,$v0,$a3
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 4987
    jal	__glInitTexImageStore
    sd	$at,24($sp)
    ld	$a0,24($sp)
    # Line 4988
    ld	$ra,48($sp)
    lw	$a1,56($a0)
    addu	$a1,$a1,$ra
    sw	$a1,128($s8)
    # Line 4989
    ld	$v1,40($sp)
    lw	$v0,56($a0)
    addu	$v0,$v0,$v1
    sw	$v0,132($s8)
    # Line 4990
    ld	$at,32($sp)
    lw	$ra,56($a0)
    addu	$ra,$ra,$at
    sw	$ra,136($s8)
    # Line 4991
    lw	$a1,4($a0)
    sw	$a1,140($s8)
    # Line 4992
    lw	$a0,8($a0)
    # Line 4993
    ld	$v1,56($sp)
    # Line 4992
    sw	$a0,144($s8)
    # Line 4993
    lw	$v1,232($v1)
    # ld	gp,16(sp)
    # Line 4994
    ld	$ra,0($sp)
    # Line 4993
    sw	$v1,432($s8)
    # Line 4994
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glInitTexSubImageStore

# Function: CheckTexSubImageRange
# Declared: Line 4997 (Source lines: 4999-5008)
# Address: 0x0dafc3e0 - 0x0dafc434 (Size: 84 bytes, Frame: 192)
.ent CheckTexSubImageRange
CheckTexSubImageRange:
    # Line 5003
    bltz	$a3,.L0dafc414
    # Line 4999
    addiu	$sp,$sp,-64
    # Line 5003
    lw	$a5,56($a1)
    negu	$at,$a5
    slt	$at,$a2,$at
    bnez	$at,.L0dafc414
    addu	$v1,$a2,$a3
    subu	$v0,$a4,$a5
    slt	$v0,$v0,$v1
    bnez	$v0,.L0dafc414
    # Line 5008
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,64
.L0dafc414:
    # Line 5005
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5006
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.end CheckTexSubImageRange

# Function: __glCheckTexSubImage1DArgs
# Declared: Line 5011 (Source lines: 5015-5032)
# Address: 0x0dafc434 - 0x0dafc524 (Size: 240 bytes, Frame: 128)
.globl __glCheckTexSubImage1DArgs
.ent __glCheckTexSubImage1DArgs
__glCheckTexSubImage1DArgs:
    # Line 5015
    addiu	$sp,$sp,-128
    sd	$a3,16($sp)
    move	$a3,$a5
    # Line 5020
    li	$a5,1
    sd	$a4,24($sp)
    # sd	gp,40(sp)
    sd	$ra,48($sp)
    # Line 5015
    lui	$ra,0x10
    addiu	$ra,$ra,-19404
    # addu	gp,t9,ra
    # Line 5020
    # lw $t9, -32704($gp) # &sub_0db00000
    # Line 5015
    move	$a4,$a6
    sd	$a2,32($sp)
    # Line 5020
    addiu	$t9,$t9,-16428
    bal __glCalcTexture
    sd	$a0,8($sp)
    beqz	$v0,.L0dafc4e4
    move	$a0,$v0
    # Line 5024
    ld	$a6,32($sp)
    lw	$a1,228($v0)
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a1,$a1,$a5
    lw	$at,0($a1)
    beqz	$at,.L0dafc4f8
    sd	$a0,0($sp)
    ld	$a0,8($sp)
    # Line 5029
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a2,16($sp)
    ld	$a3,24($sp)
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    lw	$a4,4($a1)
    # ld	gp,40(sp)
    beqz	$v0,.L0dafc518
    # Line 5030
    ld	$ra,48($sp)
    # ld	gp,40(sp)
    # Line 5032
    ld	$ra,48($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafc4e4:
    # Line 5022
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafc4f8:
    # Line 5026
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5027
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafc518:
    # Line 5030
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,128
.end __glCheckTexSubImage1DArgs

# Function: __glCheckTexSubImage2DArgs
# Declared: Line 5035 (Source lines: 5040-5060)
# Address: 0x0dafc524 - 0x0dafc678 (Size: 340 bytes, Frame: 144)
.globl __glCheckTexSubImage2DArgs
.ent __glCheckTexSubImage2DArgs
__glCheckTexSubImage2DArgs:
    # Line 5040
    addiu	$sp,$sp,-144
    sd	$a5,32($sp)
    # Line 5045
    li	$a5,2
    sd	$a4,8($sp)
    lw	$a4,148($sp)
    sd	$a3,24($sp)
    # Line 5040
    move	$a3,$a7
    sd	$a6,16($sp)
    # sd	gp,56(sp)
    sd	$ra,72($sp)
    lui	$ra,0x10
    addiu	$ra,$ra,-19644
    # addu	gp,t9,ra
    # Line 5045
    # lw $t9, -32704($gp) # &sub_0db00000
    sd	$a2,40($sp)
    sd	$s0,64($sp)
    addiu	$t9,$t9,-16428
    bal __glCalcTexture
    # Line 5040
    move	$s0,$a0
    # Line 5045
    beqz	$v0,.L0dafc60c
    move	$a0,$v0
    # Line 5049
    ld	$a7,40($sp)
    lw	$at,228($v0)
    sll	$v1,$a7,0x2
    subu	$v1,$v1,$a7
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a7
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sd	$at,48($sp)
    lw	$at,0($at)
    beqz	$at,.L0dafc624
    sd	$a0,0($sp)
    # Line 5054
    ld	$a3,32($sp)
    ld	$a2,24($sp)
    # Line 5052
    # lw $t9, -32704($gp) # &sub_0db00000
    # Line 5054
    move	$a0,$s0
    ld	$a1,48($sp)
    # Line 5052
    addiu	$t9,$t9,-15392
    # Line 5054
    bal __glInitTexSubImageStore
    lw	$a4,4($a1)
    beqz	$v0,.L0dafc648
    # Line 5057
    move	$a0,$s0
    ld	$a2,8($sp)
    ld	$a4,48($sp)
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a3,16($sp)
    move	$a1,$a4
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    lw	$a4,8($a4)
    # Line 5060
    ld	$s0,64($sp)
    # Line 5057
    beqz	$v0,.L0dafc660
    nop
    # Line 5060
    ld	$ra,72($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc60c:
    # Line 5047
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc624:
    # Line 5051
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5052
    move	$v0,$zero
    ld	$ra,72($sp)
    # ld	gp,56(sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc648:
    # Line 5055
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc660:
    # Line 5058
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glCheckTexSubImage2DArgs

# Function: __glCheckTexSubImage3DArgs
# Declared: Line 5063 (Source lines: 5068-5091)
# Address: 0x0dafc678 - 0x0dafc818 (Size: 416 bytes, Frame: 160)
.globl __glCheckTexSubImage3DArgs
.ent __glCheckTexSubImage3DArgs
__glCheckTexSubImage3DArgs:
    # Line 5068
    addiu	$sp,$sp,-160
    sd	$a5,24($sp)
    # Line 5073
    li	$a5,3
    sd	$a4,8($sp)
    lw	$a4,180($sp)
    sd	$a3,32($sp)
    lw	$a3,172($sp)
    sd	$a7,16($sp)
    sd	$a6,40($sp)
    # sd	gp,64(sp)
    sd	$ra,72($sp)
    # Line 5068
    lui	$ra,0x10
    addiu	$ra,$ra,-19984
    # addu	gp,t9,ra
    # Line 5073
    # lw $t9, -32704($gp) # &sub_0db00000
    sd	$a2,48($sp)
    sd	$s0,56($sp)
    addiu	$t9,$t9,-16428
    bal __glCalcTexture
    # Line 5068
    move	$s0,$a0
    # Line 5073
    beqz	$v0,.L0dafc78c
    move	$a0,$v0
    # Line 5077
    ld	$v1,48($sp)
    sd	$s1,80($sp)
    lw	$s1,228($v0)
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$s1,$s1,$at
    lw	$at,0($s1)
    beqz	$at,.L0dafc7a4
    sd	$a0,0($sp)
    # Line 5082
    lw	$a4,4($s1)
    ld	$a3,40($sp)
    # Line 5080
    # lw $t9, -32704($gp) # &sub_0db00000
    # Line 5082
    ld	$a2,32($sp)
    move	$a1,$s1
    # Line 5080
    addiu	$t9,$t9,-15392
    # Line 5082
    bal __glInitTexSubImageStore
    move	$a0,$s0
    beqz	$v0,.L0dafc7cc
    # Line 5085
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    lw	$a4,8($s1)
    beqz	$v0,.L0dafc7e8
    # Line 5088
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a2,24($sp)
    lw	$a4,12($s1)
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    lw	$a3,164($sp)
    # ld	gp,64(sp)
    # Line 5089
    ld	$s0,56($sp)
    # Line 5088
    beqz	$v0,.L0dafc804
    ld	$s1,80($sp)
    # Line 5091
    ld	$s0,56($sp)
    ld	$ra,72($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dafc78c:
    # Line 5075
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,64(sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dafc7a4:
    # Line 5079
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s1,80($sp)
    # Line 5080
    move	$v0,$zero
    ld	$ra,72($sp)
    # ld	gp,64(sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dafc7cc:
    # Line 5083
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,64(sp)
    ld	$s0,56($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dafc7e8:
    # Line 5086
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,64(sp)
    ld	$s0,56($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dafc804:
    # Line 5089
    ld	$ra,72($sp)
    move	$v0,$zero
    # ld	gp,64(sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glCheckTexSubImage3DArgs

# Function: __glCheckCopyTexSubImageArgs
# Declared: Line 5095 (Source lines: 5100-5123)
# Address: 0x0dafc818 - 0x0dafc9b0 (Size: 408 bytes, Frame: 144)
.globl __glCheckCopyTexSubImageArgs
.ent __glCheckCopyTexSubImageArgs
__glCheckCopyTexSubImageArgs:
    # Line 5100
    addiu	$sp,$sp,-144
    sd	$a5,16($sp)
    # Line 5105
    lw	$a5,164($sp)
    sd	$a4,8($sp)
    li	$a4,5126
    sd	$a3,24($sp)
    li	$a3,6408
    # sd	gp,40(sp)
    sd	$ra,48($sp)
    # Line 5100
    lui	$ra,0x10
    addiu	$ra,$ra,-20400
    # addu	gp,t9,ra
    # Line 5105
    # lw $t9, -32704($gp) # &sub_0db00000
    sd	$a2,32($sp)
    sd	$s0,56($sp)
    addiu	$t9,$t9,-16428
    bal __glCalcTexture
    # Line 5100
    move	$s0,$a0
    # Line 5105
    beqz	$v0,.L0dafc924
    move	$a0,$v0
    # Line 5109
    ld	$v1,32($sp)
    sd	$s1,64($sp)
    lw	$s1,228($v0)
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$s1,$s1,$at
    lw	$at,0($s1)
    beqz	$at,.L0dafc93c
    sd	$a0,0($sp)
    # Line 5114
    lw	$a4,4($s1)
    lw	$a3,148($sp)
    # Line 5112
    # lw $t9, -32704($gp) # &sub_0db00000
    # Line 5114
    ld	$a2,24($sp)
    move	$a1,$s1
    # Line 5112
    addiu	$t9,$t9,-15392
    # Line 5114
    bal __glInitTexSubImageStore
    move	$a0,$s0
    beqz	$v0,.L0dafc964
    # Line 5117
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a2,8($sp)
    lw	$a4,8($s1)
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    lw	$a3,156($sp)
    beqz	$v0,.L0dafc980
    # Line 5120
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32704($gp) # &sub_0db00000
    ld	$a2,16($sp)
    lw	$a4,12($s1)
    addiu	$t9,$t9,-15392
    bal __glInitTexSubImageStore
    li	$a3,1
    # ld	gp,40(sp)
    # Line 5121
    ld	$s0,56($sp)
    # Line 5120
    beqz	$v0,.L0dafc99c
    ld	$s1,64($sp)
    # Line 5123
    ld	$s0,56($sp)
    ld	$ra,48($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc924:
    # Line 5107
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc93c:
    # Line 5111
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s1,64($sp)
    # Line 5112
    move	$v0,$zero
    ld	$ra,48($sp)
    # ld	gp,40(sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc964:
    # Line 5115
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc980:
    # Line 5118
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dafc99c:
    # Line 5121
    ld	$ra,48($sp)
    move	$v0,$zero
    # ld	gp,40(sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glCheckCopyTexSubImageArgs

# Function: __glim_TexSubImage1DEXT
# Declared: Line 5126 (Source lines: 5129-5152)
# Address: 0x0dafc9b0 - 0x0dafcb30 (Size: 384 bytes, Frame: 160)
.globl __glim_TexSubImage1DEXT
.ent __glim_TexSubImage1DEXT
__glim_TexSubImage1DEXT:
    # Line 5129
    move	$v0,$a1
    move	$a7,$a0
    addiu	$sp,$sp,-672
    sd	$ra,592($sp)
    sd	$s0,584($sp)
    # Line 5136
    lw	$s0,__glCurrentContext
    sd	$a6,568($sp)
    sd	$a5,560($sp)
    sd	$a4,544($sp)
    sd	$a3,552($sp)
    sd	$a2,536($sp)
    sd	$a1,528($sp)
    # sd	gp,576(sp)
    lw	$t2,__glBeginMode
    # Line 5129
    lui	$at,0x10
    addiu	$at,$at,-20808
    # Line 5136
    beqz	$t2,.L0dafca54
    # Line 5129
    nop
    sd	$ra,592($sp)
    sd	$v0,528($sp)
    sd	$a2,536($sp)
    sd	$a4,544($sp)
    sd	$a3,552($sp)
    sd	$a5,560($sp)
    sd	$a7,600($sp)
    # Line 5136
    li	$v1,2
    beq	$t2,$v1,.L0dafca40
    sd	$a6,568($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafca40:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$a7,600($sp)
.L0dafca54:
    # Line 5139
    move	$a0,$s0
    move	$a1,$a7
    ld	$a2,528($sp)
    ld	$a3,536($sp)
    # lw $t9, -26424($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,552($sp)
    ld	$a5,544($sp)
    bal __glCheckTexSubImage1DArgs
    ld	$a6,560($sp)
    sd	$v0,520($sp)
    bnez	$v0,.L0dafca94
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    # Line 5142
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafca94:
    # Line 5146
    move	$a0,$s0
    sw	$zero,4($sp)
    ld	$a7,568($sp)
    ld	$a6,560($sp)
    ld	$a5,544($sp)
    li	$a4,1
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    li	$a3,1
    ld	$a2,552($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 5148
    move	$a0,$s0
    move	$a6,$zero
    move	$a5,$zero
    ld	$a4,536($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,528($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5149
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5150
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5151
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,528($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5152
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end __glim_TexSubImage1DEXT

# Function: __gllei_TexSubImage1DEXT
# Declared: Line 5154 (Source lines: 5157-5191)
# Address: 0x0dafcb30 - 0x0dafccac (Size: 380 bytes, Frame: 160)
.globl __gllei_TexSubImage1DEXT
.ent __gllei_TexSubImage1DEXT
__gllei_TexSubImage1DEXT:
    # Line 5157
    move	$v0,$a2
    addiu	$sp,$sp,-672
    sd	$ra,592($sp)
    sd	$a7,568($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,536($sp)
    sd	$a2,528($sp)
    sd	$s0,584($sp)
    move	$s0,$a0
    # sd	gp,576(sp)
    # Line 5166
    lw	$t2,3088($a0)
    # Line 5157
    lui	$at,0x10
    addiu	$at,$at,-21192
    # Line 5166
    beqz	$t2,.L0dafcbd0
    # Line 5157
    nop
    sd	$ra,592($sp)
    sd	$v0,528($sp)
    sd	$a3,536($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a1,600($sp)
    # Line 5166
    li	$v1,2
    beq	$t2,$v1,.L0dafcbbc
    sd	$a7,568($sp)
    # Line 5172
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5173
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafcbbc:
    # Line 5169
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 5170
    sw	$zero,3088($s0)
    ld	$a1,600($sp)
.L0dafcbd0:
    # Line 5178
    move	$a0,$s0
    ld	$a2,528($sp)
    ld	$a3,536($sp)
    # lw $t9, -26424($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,560($sp)
    ld	$a5,552($sp)
    bal __glCheckTexSubImage1DArgs
    ld	$a6,544($sp)
    sd	$v0,520($sp)
    bnez	$v0,.L0dafcc0c
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    # Line 5181
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafcc0c:
    # Line 5185
    move	$a0,$s0
    ld	$a7,568($sp)
    ld	$a6,544($sp)
    ld	$a5,552($sp)
    li	$a4,1
    li	$a3,1
    ld	$a2,560($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    li	$t0,1
    jal	__glInitTexSourceUnpack
    sw	$t0,4($sp)
    # Line 5187
    move	$a0,$s0
    move	$a6,$zero
    move	$a5,$zero
    ld	$a4,536($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,528($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5188
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5189
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5190
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,528($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5191
    ld	$ra,592($sp)
    # ld	gp,576(sp)
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end __gllei_TexSubImage1DEXT

# Function: __glim_TexSubImage2DEXT
# Declared: Line 5193 (Source lines: 5197-5220)
# Address: 0x0dafccac - 0x0dafce3c (Size: 400 bytes, Frame: 176)
.globl __glim_TexSubImage2DEXT
.ent __glim_TexSubImage2DEXT
__glim_TexSubImage2DEXT:
    # Line 5197
    move	$t3,$a0
    addiu	$sp,$sp,-688
    sd	$ra,600($sp)
    sd	$a7,552($sp)
    sd	$a6,544($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    sd	$a3,584($sp)
    sd	$a2,560($sp)
    sd	$a1,536($sp)
    # sd	gp,592(sp)
    lui	$at,0x10
    addiu	$at,$at,-21572
    # Line 5204
    lw	$t2,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 5197
    # addu	gp,t9,at
    # Line 5204
    beqz	$t2,.L0dafcd5c
    sd	$v0,528($sp)
    sd	$ra,600($sp)
    sd	$v0,528($sp)
    sd	$a1,536($sp)
    sd	$a6,544($sp)
    sd	$a7,552($sp)
    sd	$a2,560($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    sd	$a3,584($sp)
    li	$v1,2
    beq	$t2,$v1,.L0dafcd40
    sd	$t3,608($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,600($sp)
    # ld	gp,592(sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafcd40:
    ld	$t9,528($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$t3,608($sp)
.L0dafcd5c:
    ld	$a0,528($sp)
    # Line 5207
    move	$a1,$t3
    ld	$a2,536($sp)
    ld	$a3,560($sp)
    ld	$a4,584($sp)
    ld	$a5,576($sp)
    ld	$ra,552($sp)
    # lw $t9, -26420($gp) # &__glCheckTexSubImage2DArgs
    ld	$a6,568($sp)
    sw	$ra,4($sp)
    bal __glCheckTexSubImage2DArgs
    ld	$a7,544($sp)
    sd	$v0,520($sp)
    bnez	$v0,.L0dafcda4
    ld	$ra,600($sp)
    # ld	gp,592(sp)
    # Line 5210
    jr	$ra
    addiu	$sp,$sp,688
.L0dafcda4:
    ld	$a0,528($sp)
    # Line 5214
    lw	$a7,692($sp)
    sw	$zero,4($sp)
    ld	$a6,552($sp)
    ld	$a5,544($sp)
    li	$a4,1
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    ld	$a3,568($sp)
    ld	$a2,576($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    ld	$a0,528($sp)
    # Line 5216
    move	$a6,$zero
    ld	$a5,584($sp)
    ld	$a4,560($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,536($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5217
    # lw $t9, -30248($gp) # &__glInitUnpacker
    ld	$a0,528($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5218
    # lw $t9, -30748($gp) # &__glInitPacker
    ld	$a0,528($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5219
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    ld	$a0,528($sp)
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5220
    ld	$ra,600($sp)
    # ld	gp,592(sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glim_TexSubImage2DEXT

# Function: __gllei_TexSubImage2DEXT
# Declared: Line 5222 (Source lines: 5226-5260)
# Address: 0x0dafce3c - 0x0dafcfc8 (Size: 396 bytes, Frame: 176)
.globl __gllei_TexSubImage2DEXT
.ent __gllei_TexSubImage2DEXT
__gllei_TexSubImage2DEXT:
    # Line 5226
    move	$v0,$a2
    addiu	$sp,$sp,-688
    sd	$ra,600($sp)
    sd	$a7,552($sp)
    sd	$a6,560($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    sd	$a3,544($sp)
    sd	$a2,536($sp)
    sd	$s0,592($sp)
    move	$s0,$a0
    # sd	gp,584(sp)
    # Line 5235
    lw	$t2,3088($a0)
    # Line 5226
    lui	$at,0x10
    addiu	$at,$at,-21972
    # Line 5235
    beqz	$t2,.L0dafcedc
    # Line 5226
    nop
    sd	$ra,600($sp)
    sd	$v0,536($sp)
    sd	$a3,544($sp)
    sd	$a7,552($sp)
    sd	$a6,560($sp)
    sd	$a5,568($sp)
    sd	$a4,576($sp)
    # Line 5235
    li	$v1,2
    beq	$t2,$v1,.L0dafcec8
    sd	$a1,608($sp)
    # Line 5241
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5242
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafcec8:
    # Line 5238
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 5239
    sw	$zero,3088($s0)
    ld	$a1,608($sp)
.L0dafcedc:
    ld	$a7,552($sp)
    # Line 5247
    ld	$a6,560($sp)
    ld	$a5,568($sp)
    ld	$a4,576($sp)
    ld	$a3,544($sp)
    ld	$a2,536($sp)
    lw	$t0,692($sp)
    # lw $t9, -26420($gp) # &__glCheckTexSubImage2DArgs
    move	$a0,$s0
    sd	$t0,520($sp)
    bal __glCheckTexSubImage2DArgs
    sw	$t0,4($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0dafcf28
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    # Line 5250
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafcf28:
    # Line 5254
    move	$a0,$s0
    ld	$a6,520($sp)
    ld	$a5,552($sp)
    li	$a4,1
    ld	$a3,560($sp)
    ld	$a2,568($sp)
    addiu	$a1,$sp,16
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    lw	$a7,700($sp)
    li	$t1,1
    jal	__glInitTexSourceUnpack
    sw	$t1,4($sp)
    # Line 5256
    move	$a0,$s0
    move	$a6,$zero
    ld	$a5,576($sp)
    ld	$a4,544($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5257
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5258
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5259
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5260
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __gllei_TexSubImage2DEXT

# Function: __glim_TexSubImage3DEXT
# Declared: Line 5262 (Source lines: 5266-5289)
# Address: 0x0dafcfc8 - 0x0dafd170 (Size: 424 bytes, Frame: 208)
.globl __glim_TexSubImage3DEXT
.ent __glim_TexSubImage3DEXT
__glim_TexSubImage3DEXT:
    # Line 5266
    move	$t3,$a0
    addiu	$sp,$sp,-720
    sd	$ra,632($sp)
    sd	$a7,592($sp)
    sd	$a6,576($sp)
    sd	$a5,600($sp)
    sd	$a4,608($sp)
    sd	$a3,616($sp)
    sd	$a2,584($sp)
    sd	$a1,568($sp)
    # sd	gp,624(sp)
    lui	$at,0x10
    addiu	$at,$at,-22368
    # Line 5273
    lw	$t2,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 5266
    # addu	gp,t9,at
    # Line 5273
    beqz	$t2,.L0dafd078
    sd	$v0,560($sp)
    sd	$ra,632($sp)
    sd	$v0,560($sp)
    sd	$a1,568($sp)
    sd	$a6,576($sp)
    sd	$a2,584($sp)
    sd	$a7,592($sp)
    sd	$a5,600($sp)
    sd	$a4,608($sp)
    sd	$a3,616($sp)
    li	$v1,2
    beq	$t2,$v1,.L0dafd05c
    sd	$t3,640($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,632($sp)
    # ld	gp,624(sp)
    jr	$ra
    addiu	$sp,$sp,720
.L0dafd05c:
    ld	$t9,560($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$t3,640($sp)
.L0dafd078:
    # Line 5276
    ld	$a7,576($sp)
    ld	$a6,600($sp)
    ld	$a5,608($sp)
    ld	$a4,616($sp)
    ld	$a3,584($sp)
    ld	$a2,568($sp)
    move	$a1,$t3
    ld	$a0,560($sp)
    # lw $t9, -26416($gp) # &__glCheckTexSubImage3DArgs
    lw	$at,732($sp)
    ld	$v0,592($sp)
    lw	$ra,724($sp)
    sd	$at,536($sp)
    sw	$v0,4($sp)
    sd	$ra,544($sp)
    sw	$ra,12($sp)
    bal __glCheckTexSubImage3DArgs
    sw	$at,20($sp)
    sd	$v0,552($sp)
    bnez	$v0,.L0dafd0d8
    ld	$ra,632($sp)
    # ld	gp,624(sp)
    # Line 5279
    jr	$ra
    addiu	$sp,$sp,720
.L0dafd0d8:
    ld	$a0,560($sp)
    # Line 5283
    lw	$a7,740($sp)
    sw	$zero,4($sp)
    ld	$a6,536($sp)
    ld	$a5,544($sp)
    ld	$a4,592($sp)
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    ld	$a3,576($sp)
    ld	$a2,600($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,32
    ld	$a0,560($sp)
    # Line 5285
    ld	$a6,608($sp)
    ld	$a5,616($sp)
    ld	$a4,584($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,568($sp)
    ld	$a2,552($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5286
    # lw $t9, -30244($gp) # &__glInitUnpacker3D
    ld	$a0,560($sp)
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,32
    # Line 5287
    # lw $t9, -30744($gp) # &__glInitPacker3D
    ld	$a0,560($sp)
    jal	__glInitPacker3D
    addiu	$a1,$sp,32
    # Line 5288
    ld	$a2,552($sp)
    lw	$t9,248($a2)
    ld	$a0,560($sp)
    ld	$a3,568($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 5289
    ld	$ra,632($sp)
    # ld	gp,624(sp)
    jr	$ra
    addiu	$sp,$sp,720
.end __glim_TexSubImage3DEXT

# Function: __gllei_TexSubImage3DEXT
# Declared: Line 5291 (Source lines: 5295-5329)
# Address: 0x0dafd170 - 0x0dafd314 (Size: 420 bytes, Frame: 208)
.globl __gllei_TexSubImage3DEXT
.ent __gllei_TexSubImage3DEXT
__gllei_TexSubImage3DEXT:
    # Line 5295
    move	$v0,$a2
    addiu	$sp,$sp,-720
    sd	$ra,632($sp)
    sd	$a7,584($sp)
    sd	$a6,592($sp)
    sd	$a5,600($sp)
    sd	$a4,608($sp)
    sd	$a3,576($sp)
    sd	$a2,568($sp)
    sd	$s0,624($sp)
    move	$s0,$a0
    # sd	gp,616(sp)
    # Line 5304
    lw	$t2,3088($a0)
    # Line 5295
    lui	$at,0x10
    addiu	$at,$at,-22792
    # Line 5304
    beqz	$t2,.L0dafd210
    # Line 5295
    nop
    sd	$ra,632($sp)
    sd	$v0,568($sp)
    sd	$a3,576($sp)
    sd	$a7,584($sp)
    sd	$a6,592($sp)
    sd	$a5,600($sp)
    sd	$a4,608($sp)
    # Line 5304
    li	$v1,2
    beq	$t2,$v1,.L0dafd1fc
    sd	$a1,640($sp)
    # Line 5310
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5311
    ld	$ra,632($sp)
    # ld	gp,616(sp)
    ld	$s0,624($sp)
    jr	$ra
    addiu	$sp,$sp,720
.L0dafd1fc:
    # Line 5307
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 5308
    sw	$zero,3088($s0)
    ld	$a1,640($sp)
.L0dafd210:
    ld	$a7,584($sp)
    # Line 5316
    ld	$a6,592($sp)
    ld	$a5,600($sp)
    ld	$a4,608($sp)
    ld	$a3,576($sp)
    ld	$a2,568($sp)
    move	$a0,$s0
    # lw $t9, -26416($gp) # &__glCheckTexSubImage3DArgs
    lw	$t2,740($sp)
    lw	$t1,732($sp)
    lw	$t0,724($sp)
    sd	$t2,536($sp)
    sd	$t1,544($sp)
    sd	$t0,552($sp)
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    bal __glCheckTexSubImage3DArgs
    sw	$t0,4($sp)
    sd	$v0,560($sp)
    bnez	$v0,.L0dafd274
    ld	$ra,632($sp)
    # ld	gp,616(sp)
    # Line 5319
    ld	$s0,624($sp)
    jr	$ra
    addiu	$sp,$sp,720
.L0dafd274:
    # Line 5323
    move	$a0,$s0
    ld	$a6,536($sp)
    ld	$a5,544($sp)
    ld	$a4,552($sp)
    ld	$a3,584($sp)
    ld	$a2,592($sp)
    addiu	$a1,$sp,32
    # lw $t9, -26832($gp) # &__glInitTexSourceUnpack
    lw	$a7,748($sp)
    li	$t3,1
    jal	__glInitTexSourceUnpack
    sw	$t3,4($sp)
    # Line 5325
    move	$a0,$s0
    ld	$a6,600($sp)
    ld	$a5,608($sp)
    ld	$a4,576($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,568($sp)
    ld	$a2,560($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5326
    # lw $t9, -30244($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,32
    # Line 5327
    # lw $t9, -30744($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,32
    # Line 5328
    ld	$a2,560($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,568($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 5329
    ld	$ra,632($sp)
    # ld	gp,616(sp)
    ld	$s0,624($sp)
    jr	$ra
    addiu	$sp,$sp,720
.end __gllei_TexSubImage3DEXT

# Function: __glEmptyFreeTexObj
# Declared: Line 5351 (Source lines: 5353-5353)
# Address: 0x0dafd314 - 0x0dafd31c (Size: 8 bytes, Frame: 0)
.globl __glEmptyFreeTexObj
.ent __glEmptyFreeTexObj
__glEmptyFreeTexObj:
    # Line 5353
    jr	$ra
    nop
.end __glEmptyFreeTexObj

# Function: __glFreeTexObj
# Declared: Line 5358 (Source lines: 5359-5370)
# Address: 0x0dafd31c - 0x0dafd3e8 (Size: 204 bytes, Frame: 192)
.globl __glFreeTexObj
.ent __glFreeTexObj
__glFreeTexObj:
    # Line 5359
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,0(sp)
    # Line 5362
    lw	$a3,3436($a0)
    # Line 5359
    lui	$at,0x10
    addiu	$at,$at,-23220
    # Line 5362
    blez	$a3,.L0dafd3dc
    # Line 5359
    nop
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    # Line 5362
    move	$s4,$zero
    lw	$a1,244($s0)
    sd	$s5,40($sp)
    sll	$s5,$a3,0x2
    subu	$s5,$s5,$a3
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a3
    b	.L0dafd378
    sll	$s5,$s5,0x2
.L0dafd374:
    # Line 5363
    beq	$s4,$s5,.L0dafd3a0
.L0dafd378:
    # Line 5362
    addu	$a3,$a1,$s4
    lw	$a3,0($a3)
    beqz	$a3,.L0dafd374
    # Line 5363
    addiu	$s4,$s4,100
    # Line 5366
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$a3
    b	.L0dafd374
    lw	$a1,244($s0)
.L0dafd3a0:
    ld	$s5,40($sp)
    ld	$s4,32($sp)
.L0dafd3a8:
    # Line 5368
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 5369
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # ld	gp,0(sp)
    # Line 5370
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd3dc:
    sd	$ra,24($sp)
    b	.L0dafd3a8
    # Line 5363
    lw	$a1,244($s0)
.end __glFreeTexObj

# Function: __glDisposeTexObj
# Declared: Line 5375 (Source lines: 5376-5385)
# Address: 0x0dafd3e8 - 0x0dafd430 (Size: 72 bytes, Frame: 32)
.globl __glDisposeTexObj
.ent __glDisposeTexObj
__glDisposeTexObj:
    # Line 5376
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0x10
    # Line 5379
    lw	$at,0($a1)
    # Line 5376
    addiu	$v0,$v0,-23424
    # addu	gp,t9,v0
    # Line 5379
    addiu	$at,$at,-1
    beqz	$at,.L0dafd418
    sw	$at,0($a1)
.L0dafd40c:
    # ld	gp,0(sp)
    # Line 5385
    jr	$ra
    addiu	$sp,$sp,32
.L0dafd418:
    # Line 5383
    lw	$t9,4($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0dafd40c
    ld	$ra,8($sp)
.end __glDisposeTexObj

# Function: __glim_GenTexturesEXT
# Declared: Line 5387 (Source lines: 5388-5398)
# Address: 0x0dafd430 - 0x0dafd514 (Size: 228 bytes, Frame: 192)
.globl __glim_GenTexturesEXT
.ent __glim_GenTexturesEXT
__glim_GenTexturesEXT:
    # Line 5389
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 5388
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    # Line 5389
    lw	$at,__glBeginMode
    # Line 5388
    lui	$v1,0x10
    addiu	$v1,$v1,-23496
    # Line 5389
    beq	$at,$v0,.L0dafd4ec
    # Line 5388
    addu	$gp,$t9,$v1
    # Line 5389
    bltz	$s0,.L0dafd4d0
    # Line 5390
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dafd46c:
    beqzl	$s0,.L0dafd4c0
    ld	$gp,0($sp)
    bnez	$s1,.L0dafd490
    # Line 5396
    move	$a0,$a5
    ld	$gp,0($sp)
    # Line 5392
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd490:
    # Line 5396
    move	$a3,$s1
    # lw $t9, -27908($gp) # &__glNamesGenNames
    move	$a2,$s0
    sd	$ra,24($sp)
    jal	__glNamesGenNames
    lw	$a1,28236($a5)
    ld	$gp,0($sp)
    # Line 5398
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd4c0:
    # Line 5390
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafd4d0:
    sd	$a5,32($sp)
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1281
    ld	$a5,32($sp)
    b	.L0dafd46c
    ld	$ra,24($sp)
.L0dafd4ec:
    # Line 5389
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_GenTexturesEXT

# Function: __glim_DeleteTexturesEXT
# Declared: Line 5400 (Source lines: 5401-5470)
# Address: 0x0dafd514 - 0x0dafd778 (Size: 612 bytes, Frame: 240)
.globl __glim_DeleteTexturesEXT
.ent __glim_DeleteTexturesEXT
__glim_DeleteTexturesEXT:
    # Line 5406
    li	$v0,1
    # Line 5401
    addiu	$sp,$sp,-112
    sd	$s3,32($sp)
    # Line 5406
    lw	$s3,__glCurrentContext
    sd	$s6,24($sp)
    # Line 5401
    move	$s6,$a1
    sd	$s5,8($sp)
    move	$s5,$a0
    sd	$gp,16($sp)
    # Line 5406
    lw	$at,__glBeginMode
    # Line 5401
    lui	$v1,0x10
    addiu	$v1,$v1,-23724
    # Line 5406
    beq	$at,$v0,.L0dafd74c
    # Line 5401
    addu	$gp,$t9,$v1
    # Line 5406
    bltz	$s5,.L0dafd738
    # Line 5407
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dafd554:
    beqzl	$s5,.L0dafd724
    ld	$gp,16($sp)
    sd	$ra,40($sp)
    sd	$s0,56($sp)
    # Line 5410
    lw	$s0,3336($s3)
    sd	$s8,64($sp)
    # Line 5409
    lw	$a3,28236($s3)
    sd	$s2,48($sp)
    # Line 5420
    lw	$s2,0($s6)
    sd	$a3,0($sp)
    beqz	$s5,.L0dafd6e4
    move	$s8,$s2
    sd	$ra,40($sp)
    sd	$s7,72($sp)
    sd	$s1,88($sp)
    move	$s1,$s6
    sd	$s4,80($sp)
    sll	$s4,$s5,0x2
    b	.L0dafd65c
    addu	$s4,$s4,$s6
.L0dafd5a4:
    # Line 5446
    lw	$s7,2372($s3)
    # Line 5448
    # lw $t9, -27928($gp) # &__glNamesUnlockData
    # Line 5446
    sll	$t8,$s6,0x3
    subu	$t8,$t8,$s6
    sll	$t8,$t8,0x5
    # Line 5448
    jal	__glNamesUnlockData
    # Line 5446
    addu	$s7,$s7,$t8
    # Line 5453
    lw	$v1,28204($s3)
    sll	$a0,$s6,0x2
    addu	$v1,$v1,$a0
    # Line 5451
    lw	$a5,28212($s3)
    sll	$at,$s6,0x2
    addu	$at,$at,$s6
    sll	$at,$at,0x2
    subu	$at,$at,$s6
    sll	$at,$at,0x4
    addu	$a5,$a5,$at
    # Line 5453
    addiu	$v0,$a5,16
    sw	$v0,0($v1)
    # Line 5454
    sw	$a5,0($s5)
    # Line 5455
    lw	$at,236($a5)
    # Line 5456
    move	$a2,$zero
    # Line 5455
    sw	$at,216($s7)
    # Line 5456
    move	$a4,$s7
    # Line 5455
    lwc1	$f0,240($a5)
    # Line 5456
    li	$a0,54
    addiu	$a5,$a5,20
    # Line 5455
    swc1	$f0,220($s7)
.L0dafd614:
    # Line 5456
    addu	$v1,$a2,$a4
    addu	$v0,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0dafd614
    sw	$v0,0($v1)
    li	$a0,2
    # Line 5459
    sw	$a0,__glBeginMode
    lw	$v1,11764($s3)
    ori	$v1,$v1,0x1
    sw	$v1,11764($s3)
    # Line 5460
    lw	$a0,0($s1)
.L0dafd648:
    # Line 5463
    bne	$a0,$s2,.L0dafd694
    # Line 5465
    move	$a0,$s3
.L0dafd650:
    # Line 5421
    addiu	$s1,$s1,4
    beq	$s1,$s4,.L0dafd6d8
    addiu	$s2,$s2,1
.L0dafd65c:
    # Line 5420
    lw	$a0,0($s1)
    beqz	$a0,.L0dafd6b4
    # Line 5440
    move	$s6,$zero
    beqz	$s0,.L0dafd648
    lw	$s5,28208($s3)
.L0dafd670:
    lw	$a1,0($s5)
    lw	$a3,236($a1)
    beql	$a3,$a0,.L0dafd5a4
    # Line 5448
    move	$a0,$s3
    # Line 5441
    addiu	$s6,$s6,1
    bne	$s0,$s6,.L0dafd670
    addiu	$s5,$s5,4
    b	.L0dafd648
    nop
.L0dafd694:
    # Line 5465
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    ld	$a1,0($sp)
    move	$a2,$s8
    jal	__glNamesDeleteRange
    subu	$a3,$s2,$s8
    # Line 5466
    lw	$s2,0($s1)
    b	.L0dafd650
    move	$s8,$s2
.L0dafd6b4:
    # Line 5424
    move	$a0,$s3
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    ld	$a1,0($sp)
    move	$a2,$s8
    jal	__glNamesDeleteRange
    subu	$a3,$s2,$s8
    # Line 5426
    lw	$s8,4($s1)
    # Line 5427
    b	.L0dafd650
    addiu	$s2,$s8,-1
.L0dafd6d8:
    ld	$s7,72($sp)
    ld	$s1,88($sp)
    ld	$s4,80($sp)
.L0dafd6e4:
    # Line 5469
    move	$a0,$s3
    ld	$a1,0($sp)
    # lw $t9, -27916($gp) # &__glNamesDeleteRange
    move	$a2,$s8
    subu	$a3,$s2,$s8
    jal	__glNamesDeleteRange
    ld	$s0,56($sp)
    ld	$gp,16($sp)
    # Line 5470
    ld	$s2,48($sp)
    ld	$s3,32($sp)
    ld	$s5,8($sp)
    ld	$ra,40($sp)
    ld	$s6,24($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafd724:
    # Line 5407
    ld	$s3,32($sp)
    ld	$s5,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafd738:
    sd	$ra,40($sp)
    jalr	$t9
    li	$a0,1281
    b	.L0dafd554
    ld	$ra,40($sp)
.L0dafd74c:
    # Line 5406
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$s3,32($sp)
    ld	$ra,40($sp)
    ld	$s5,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_DeleteTexturesEXT

# Function: __glBindTexture
# Declared: Line 5476 (Source lines: 5477-5553)
# Address: 0x0dafd778 - 0x0dafd9bc (Size: 580 bytes, Frame: 240)
.globl __glBindTexture
.ent __glBindTexture
__glBindTexture:
    # Line 5477
    move	$v0,$a2
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s1,56($sp)
    move	$s1,$a1
    sd	$gp,40($sp)
    lui	$at,0x10
    addiu	$at,$at,-24336
    bnez	$a2,.L0dafd854
    addu	$gp,$t9,$at
    sd	$s2,24($sp)
    # Line 5486
    lw	$s2,28212($s0)
    sll	$at,$s1,0x2
    addu	$at,$at,$s1
    sll	$at,$at,0x2
    subu	$at,$at,$s1
    sll	$at,$at,0x4
    addu	$s2,$s2,$at
    # Line 5491
    bnez	$s2,.L0dafd880
    sd	$v0,16($sp)
.L0dafd7cc:
    # Line 5500
    move	$a0,$s0
    lw	$t9,4($s0)
    li	$a2,304
    sd	$ra,64($sp)
    jalr	$t9
    li	$a1,1
    move	$a1,$v0
    sd	$v0,0($sp)
    move	$s2,$v0
    # Line 5503
    lw	$t9,28232($s0)
    move	$a0,$s0
    ld	$a2,16($sp)
    jalr	$t9
    move	$a3,$s1
    # Line 5504
    move	$a0,$s0
    # lw $t9, -32708($gp) # &sub_0daf0000
    move	$a1,$s1
    ld	$a2,0($sp)
    addiu	$t9,$t9,-24384
    jal	sub_0daf0000
    addiu	$a2,$a2,16
    # Line 5505
    move	$a0,$s0
    # lw $t9, -27940($gp) # &__glNamesNewData
    ld	$a3,0($sp)
    ld	$a2,16($sp)
    jal	__glNamesNewData
    lw	$a1,28236($s0)
    ld	$at,0($sp)
    # Line 5509
    lw	$ra,0($at)
    sd	$s4,32($sp)
    addiu	$ra,$ra,1
    sw	$ra,0($at)
    b	.L0dafd888
    ld	$ra,64($sp)
.L0dafd854:
    sd	$s2,24($sp)
    sd	$v0,16($sp)
    # Line 5491
    move	$a0,$s0
    # lw $t9, -27936($gp) # &__glNamesLockData
    move	$a2,$v0
    sd	$ra,64($sp)
    jal	__glNamesLockData
    lw	$a1,28236($s0)
    move	$s2,$v0
    beqz	$v0,.L0dafd7cc
    ld	$ra,64($sp)
.L0dafd880:
    # Line 5509
    lw	$at,8($s2)
    bne	$at,$s1,.L0dafd990
.L0dafd888:
    # Line 5533
    li	$v0,54
    move	$a0,$zero
    # Line 5529
    sll	$a2,$s1,0x2
    sd	$a2,8($sp)
    sd	$s4,32($sp)
    # Line 5528
    lw	$s4,2372($s0)
    # Line 5530
    lw	$a1,28208($s0)
    # Line 5528
    sll	$at,$s1,0x3
    subu	$at,$at,$s1
    sll	$at,$at,0x5
    # Line 5529
    lw	$a6,28204($s0)
    # Line 5530
    addu	$a1,$a1,$a2
    # Line 5528
    addu	$s4,$s4,$at
    # Line 5529
    addu	$a6,$a6,$a2
    lw	$a6,0($a6)
    # Line 5533
    move	$a3,$s4
    # Line 5530
    lw	$a1,0($a1)
    # Line 5533
    addiu	$a2,$a6,4
.L0dafd8d0:
    addu	$a4,$a0,$a2
    addu	$v1,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0dafd8d0
    sw	$v1,0($a4)
    # Line 5534
    lw	$a5,216($s4)
    sw	$a5,220($a6)
    lwc1	$f0,220($s4)
    swc1	$f0,224($a6)
    lw	$a4,236($a1)
    beqz	$a4,.L0dafd918
    # Line 5538
    nop	# was lw $t9, -27928($gp) # &__glNamesUnlockData
    sd	$ra,64($sp)
    jal	__glNamesUnlockData
    move	$a0,$s0
    ld	$ra,64($sp)
.L0dafd918:
    # Line 5549
    li	$v0,54
    move	$a2,$s4
    # Line 5545
    ld	$v1,8($sp)
    lw	$a1,28204($s0)
    ld	$gp,40($sp)
    addiu	$a0,$s2,16
    addu	$a1,$a1,$v1
    sw	$a0,0($a1)
    # Line 5553
    ld	$s1,56($sp)
    # Line 5546
    lw	$at,28208($s0)
    # Line 5549
    move	$a0,$zero
    addiu	$a1,$s2,20
    # Line 5546
    addu	$at,$at,$v1
    sw	$s2,0($at)
.L0dafd950:
    # Line 5549
    addu	$a5,$a0,$a2
    addu	$a4,$a0,$a1
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0dafd950
    sw	$a4,0($a5)
    # Line 5550
    lw	$a5,236($s2)
    sw	$a5,216($s4)
    lwc1	$f1,240($s2)
    # Line 5553
    ld	$s0,48($sp)
    ld	$s2,24($sp)
    # Line 5550
    swc1	$f1,220($s4)
    # Line 5553
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dafd990:
    # Line 5517
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    # Line 5518
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glBindTexture

# Function: __glim_BindTextureEXT
# Declared: Line 5555 (Source lines: 5556-5583)
# Address: 0x0dafd9bc - 0x0dafdad0 (Size: 276 bytes, Frame: 192)
.globl __glim_BindTextureEXT
.ent __glim_BindTextureEXT
__glim_BindTextureEXT:
    # Line 5556
    move	$a2,$a1
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-24916
    # Line 5562
    lw	$a4,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 5556
    addu	$gp,$t9,$at
    # Line 5562
    beqz	$a4,.L0dafda3c
    sd	$v0,0($sp)
    sd	$ra,24($sp)
    li	$v1,2
    beq	$a4,$v1,.L0dafda1c
    sd	$a2,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafda1c:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a2,32($sp)
    ld	$ra,24($sp)
.L0dafda3c:
    # Line 5564
    li	$at,3552
    beq	$s0,$at,.L0dafdab8
    li	$v0,3553
    beq	$s0,$v0,.L0dafdac4
    li	$v1,0x806f
    beq	$s0,$v1,.L0dafda78
    # Line 5575
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 5576
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dafda78:
    # Line 5572
    li	$a1,2
    sd	$ra,24($sp)
.L0dafda80:
    # Line 5579
    # lw $t9, -26368($gp) # &__glBindTexture
    bal __glBindTexture
    ld	$a0,0($sp)
    # Line 5582
    li	$a3,2
    sw	$a3,__glBeginMode
    ld	$a3,0($sp)
    ld	$gp,8($sp)
    # Line 5583
    ld	$s0,16($sp)
    # Line 5582
    lw	$a0,11764($a3)
    # Line 5583
    ld	$ra,24($sp)
    addiu	$sp,$sp,64
    # Line 5582
    ori	$a0,$a0,0x1
    # Line 5583
    jr	$ra
    # Line 5582
    sw	$a0,11764($a3)
.L0dafdab8:
    # Line 5566
    move	$a1,$zero
    # Line 5567
    b	.L0dafda80
    sd	$ra,24($sp)
.L0dafdac4:
    # Line 5569
    li	$a1,1
    # Line 5570
    b	.L0dafda80
    sd	$ra,24($sp)
.end __glim_BindTextureEXT

# Function: __glim_PrioritizeTexturesEXT
# Declared: Line 5586 (Source lines: 5589-5619)
# Address: 0x0dafdad0 - 0x0dafdc84 (Size: 436 bytes, Frame: 128)
.globl __glim_PrioritizeTexturesEXT
.ent __glim_PrioritizeTexturesEXT
__glim_PrioritizeTexturesEXT:
    # Line 5589
    move	$v0,$a1
    # Line 5593
    li	$v1,1
    # Line 5589
    addiu	$sp,$sp,-128
    sd	$s0,0($sp)
    # Line 5593
    lw	$s0,__glCurrentContext
    sd	$s6,24($sp)
    # Line 5589
    move	$s6,$a2
    sd	$gp,16($sp)
    # Line 5593
    lw	$at,__glBeginMode
    sd	$s4,8($sp)
    # Line 5589
    move	$s4,$a0
    lui	$a0,0x10
    addiu	$a0,$a0,-25192
    # Line 5593
    beq	$at,$v1,.L0dafdc58
    # Line 5589
    addu	$gp,$t9,$a0
    # Line 5593
    bltz	$s4,.L0dafdc3c
    # Line 5594
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dafdb14:
    beqzl	$s4,.L0dafdc28
    ld	$gp,16($sp)
    sd	$s2,80($sp)
    sd	$s3,72($sp)
    sd	$s1,64($sp)
    sd	$s5,56($sp)
    blez	$s4,.L0dafdc10
    sdc1	$f20,32($sp)
    sd	$ra,40($sp)
    move	$s2,$zero
    mtc1	$zero,$f20
    move	$s1,$v0
    sll	$s3,$s4,0x2
    la	$s5,sub_0daf0000
    addu	$s3,$s3,$v0
    b	.L0dafdb70
    addiu	$s5,$s5,-25088
.L0dafdb58:
    # Line 5617
    # lw $t9, -27928($gp) # &__glNamesUnlockData
.L0dafdb5c:
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$s4
.L0dafdb68:
    # Line 5596
    beq	$s1,$s3,.L0dafdbf8
    addiu	$s2,$s2,4
.L0dafdb70:
    # Line 5594
    lw	$a2,0($s1)
    beqz	$a2,.L0dafdb68
    # Line 5596
    addiu	$s1,$s1,4
    # Line 5600
    # lw $t9, -27936($gp) # &__glNamesLockData
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,28236($s0)
    beqz	$v0,.L0dafdb68
    move	$s4,$v0
    # Line 5606
    lwc1	$f14,3284($s0)
    mov.s	$f13,$f20
    move	$t9,$s5
    addu	$t8,$s2,$s6
    jalr	$s5
    lwc1	$f12,0($t8)
    swc1	$f0,240($s4)
    lw	$v1,8($s4)
    lw	$v0,28204($s0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v1,236($s4)
    lw	$at,220($v0)
    bne	$at,$v1,.L0dafdb5c
    # Line 5617
    nop	# was lw $t9, -27928($gp) # &__glNamesUnlockData
    # Line 5613
    swc1	$f0,224($v0)
    lw	$at,8($s4)
    lw	$a3,2372($s0)
    sll	$a4,$at,0x3
    subu	$a4,$a4,$at
    sll	$a4,$a4,0x5
    addu	$a3,$a3,$a4
    b	.L0dafdb58
    swc1	$f0,220($a3)
.L0dafdbf8:
    ldc1	$f20,32($sp)
    ld	$s5,56($sp)
    ld	$s1,64($sp)
    ld	$ra,40($sp)
    ld	$s3,72($sp)
    ld	$s2,80($sp)
.L0dafdc10:
    ld	$gp,16($sp)
    # Line 5619
    ld	$s0,0($sp)
    ld	$s4,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafdc28:
    # Line 5594
    ld	$s0,0($sp)
    ld	$s4,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafdc3c:
    sd	$v0,48($sp)
    sd	$ra,40($sp)
    jal	__glNamesUnlockData
    li	$a0,1281
    ld	$v0,48($sp)
    b	.L0dafdb14
    ld	$ra,40($sp)
.L0dafdc58:
    # Line 5593
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$ra,40($sp)
    ld	$s4,8($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_PrioritizeTexturesEXT

# Function: IsTextureResident
# Declared: Line 5623 (Source lines: 5626-5643)
# Address: 0x0dafdc84 - 0x0dafdd20 (Size: 156 bytes, Frame: 0)
.ent IsTextureResident
IsTextureResident:
    # Line 5626
    lw	$a3,3436($a0)
    li	$a7,9729
    blez	$a3,.L0dafdd08
    li	$a5,1
    li	$a6,9728
    lw	$a2,228($a1)
    sll	$a4,$a3,0x2
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    b	.L0dafdcc8
    addu	$a4,$a2,$a4
.L0dafdcb8:
    # Line 5640
    bnez	$a3,.L0dafdd08
    # Line 5628
    addiu	$a2,$a2,100
    beq	$a2,$a4,.L0dafdd08
    nop
.L0dafdcc8:
    # Line 5626
    lw	$at,0($a2)
    beqz	$at,.L0dafdd18
    nop
    # Line 5633
    lw	$a3,16($a1)
    beq	$a6,$a3,.L0dafdd10
    nop
    beq	$a7,$a3,.L0dafdd10
    nop
    # Line 5639
    lw	$v0,4($a2)
    bne	$v0,$a5,.L0dafdcb8
    # Line 5640
    move	$a3,$zero
    # Line 5639
    lw	$v1,8($a2)
    bne	$v1,$a5,.L0dafdcb8
    nop
    # Line 5640
    b	.L0dafdcb8
    li	$a3,1
.L0dafdd08:
    # Line 5643
    jr	$ra
    li	$v0,1
.L0dafdd10:
    # Line 5636
    jr	$ra
    li	$v0,1
.L0dafdd18:
    # Line 5630
    jr	$ra
    move	$v0,$zero
.end IsTextureResident

# Function: __glim_AreTexturesResidentEXT
# Declared: Line 5646 (Source lines: 5649-5683)
# Address: 0x0dafdd20 - 0x0dafdf64 (Size: 580 bytes, Frame: 128)
.globl __glim_AreTexturesResidentEXT
.ent __glim_AreTexturesResidentEXT
__glim_AreTexturesResidentEXT:
    # Line 5654
    li	$v0,1
    # Line 5652
    li	$a3,1
    # Line 5649
    addiu	$sp,$sp,-128
    sd	$s0,64($sp)
    # Line 5654
    lw	$s0,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s6,80($sp)
    # Line 5649
    move	$s6,$a2
    sd	$s5,56($sp)
    move	$s5,$a1
    sd	$s3,88($sp)
    move	$s3,$a0
    sd	$gp,72($sp)
    # Line 5654
    lw	$at,__glBeginMode
    # Line 5649
    lui	$v1,0x10
    addiu	$v1,$v1,-25784
    # Line 5654
    beq	$at,$v0,.L0dafdf30
    # Line 5649
    addu	$gp,$t9,$v1
    # Line 5654
    bltz	$s3,.L0dafdf1c
    # Line 5655
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dafdd70:
    beqz	$s3,.L0dafdf00
    move	$v0,$zero
    sd	$ra,8($sp)
    sd	$s1,24($sp)
    sd	$s8,40($sp)
    sd	$s7,32($sp)
    # Line 5657
    la	$s7,sub_0db00000
    sd	$s2,48($sp)
    sd	$s4,16($sp)
    la	$s4,sub_0daf0000
    move	$s2,$zero
    blez	$s3,.L0dafde40
    addiu	$s4,$s4,-11764
    addiu	$s7,$s7,-9084
    sll	$s8,$s3,0x2
    move	$s1,$s5
    b	.L0dafdde8
    sd	$ra,8($sp)
.L0dafddb8:
    sd	$zero,0($sp)
    # Line 5675
    addu	$at,$s2,$s6
    sb	$zero,0($at)
.L0dafddc4:
    # Line 5657
    addiu	$s1,$s1,4
    # Line 5680
    # lw $t9, -27928($gp) # &__glNamesUnlockData
    move	$a0,$s0
    # Line 5657
    addiu	$s2,$s2,1
    # Line 5680
    jal	__glNamesUnlockData
    move	$a1,$s3
    # Line 5657
    addu	$v1,$s8,$s5
    beq	$v1,$s1,.L0dafde44
    ld	$v0,0($sp)
.L0dafdde8:
    lw	$a2,0($s1)
    beqz	$a2,.L0dafde78
    # Line 5663
    nop	# was lw $t9, -27936($gp) # &__glNamesLockData
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,28236($s0)
    beqz	$v0,.L0dafdebc
    move	$s3,$v0
    # Line 5672
    move	$a0,$s0
    addiu	$a1,$v0,16
    jalr	$s4
    move	$t9,$s4
    beqz	$v0,.L0dafddb8
    move	$a0,$s0
    addiu	$a1,$s3,16
    bal __glim_PrioritizeTexturesEXT
    move	$t9,$s7
    beqz	$v0,.L0dafddb8
    li	$a3,1
    # Line 5678
    addu	$a4,$s2,$s6
    b	.L0dafddc4
    sb	$a3,0($a4)
.L0dafde40:
    ld	$v0,0($sp)
.L0dafde44:
    ld	$gp,72($sp)
    # Line 5683
    ld	$s0,64($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,88($sp)
    ld	$s4,16($sp)
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    ld	$ra,8($sp)
    ld	$s7,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafde78:
    # Line 5660
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 5661
    move	$v0,$zero
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,88($sp)
    ld	$s4,16($sp)
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    ld	$ra,8($sp)
    ld	$s7,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafdebc:
    # Line 5669
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 5670
    move	$v0,$zero
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,88($sp)
    ld	$s4,16($sp)
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    ld	$ra,8($sp)
    ld	$s7,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafdf00:
    ld	$gp,72($sp)
    # Line 5655
    ld	$s0,64($sp)
    ld	$s3,88($sp)
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dafdf1c:
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,1281
    b	.L0dafdd70
    ld	$ra,8($sp)
.L0dafdf30:
    # Line 5654
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s3,88($sp)
    ld	$ra,8($sp)
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_AreTexturesResidentEXT

# Function: __glim_IsTextureEXT
# Declared: Line 5686 (Source lines: 5687-5700)
# Address: 0x0dafdf64 - 0x0dafe028 (Size: 196 bytes, Frame: 48)
.globl __glim_IsTextureEXT
.ent __glim_IsTextureEXT
__glim_IsTextureEXT:
    # Line 5687
    move	$a2,$a0
    # Line 5689
    li	$v0,1
    # Line 5687
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 5689
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 5687
    lui	$v1,0x10
    addiu	$v1,$v1,-26364
    # Line 5689
    beq	$at,$v0,.L0dafe000
    # Line 5687
    addu	$gp,$t9,$v1
    # Line 5689
    beqz	$a2,.L0dafdfec
    # Line 5693
    nop	# was lw $t9, -27936($gp) # &__glNamesLockData
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glNamesLockData
    lw	$a1,28236($s0)
    bnez	$v0,.L0dafdfc4
    ld	$ra,16($sp)
    # Line 5696
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafdfc4:
    # Line 5698
    # lw $t9, -27928($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$v0
    # Line 5700
    li	$v0,1
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafdfec:
    # Line 5691
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafe000:
    # Line 5689
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_IsTextureEXT

# Function: __glim_CopyTexImage1DEXT
# Declared: Line 5713 (Source lines: 5720-5771)
# Address: 0x0dafe028 - 0x0dafe2a4 (Size: 636 bytes, Frame: 176)
.globl __glim_CopyTexImage1DEXT
.ent __glim_CopyTexImage1DEXT
__glim_CopyTexImage1DEXT:
    # Line 5720
    move	$v0,$a1
    move	$t2,$a0
    addiu	$sp,$sp,-688
    sd	$ra,600($sp)
    sd	$s0,592($sp)
    # Line 5730
    lw	$s0,__glCurrentContext
    sd	$a6,560($sp)
    sd	$a5,544($sp)
    sd	$a4,576($sp)
    sd	$a3,568($sp)
    sd	$a2,552($sp)
    sd	$a1,536($sp)
    # sd	gp,584(sp)
    lw	$a7,__glBeginMode
    # Line 5720
    lui	$at,0x10
    addiu	$at,$at,-26560
    # Line 5730
    beqz	$a7,.L0dafe0cc
    # Line 5720
    nop
    sd	$ra,600($sp)
    sd	$v0,536($sp)
    sd	$a5,544($sp)
    sd	$a2,552($sp)
    sd	$a6,560($sp)
    sd	$a3,568($sp)
    sd	$a4,576($sp)
    # Line 5730
    li	$v1,2
    beq	$a7,$v1,.L0dafe0b8
    sd	$t2,608($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe0b8:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t2,608($sp)
.L0dafe0cc:
    # Line 5733
    move	$a0,$s0
    move	$a1,$t2
    ld	$a2,536($sp)
    ld	$a3,552($sp)
    ld	$a4,568($sp)
    ld	$a5,576($sp)
    ld	$a6,544($sp)
    li	$a7,1
    li	$t0,1
    # lw $t9, -26812($gp) # &__glCheckCopyTexImageArgs
    ld	$t1,560($sp)
    sw	$t0,12($sp)
    jal	__glCheckCopyTexImageArgs
    sw	$t1,4($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0dafe120
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    # Line 5736
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe120:
    # Line 5738
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$at,0($v0)
    # Line 5741
    li	$t0,0x8010
    # Line 5738
    slti	$at,$at,3
    beqz	$at,.L0dafe284
    move	$a0,$v0
    # Line 5741
    lw	$t2,740($s0)
    lw	$t3,48($t2)
    beqz	$t3,.L0dafe160
    ld	$a4,544($sp)
    lw	$v1,0($t2)
    beq	$v1,$t0,.L0dafe270
    ld	$a4,544($sp)
.L0dafe160:
    sd	$a0,520($sp)
.L0dafe164:
    # Line 5751
    ld	$a3,552($sp)
    ld	$a5,560($sp)
    ld	$a2,536($sp)
    move	$a0,$s0
    move	$a7,$a5
    ld	$t9,528($sp)
    li	$ra,1
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    addu	$a5,$a5,$a5
    addiu	$a5,$a5,1
    jalr	$t9
    move	$a6,$a5
    beqz	$v0,.L0dafe24c
    ld	$ra,600($sp)
    # Line 5757
    move	$a0,$s0
    li	$a5,1
    ld	$a4,544($sp)
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,576($sp)
    ld	$a2,568($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,16
    # Line 5758
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    jal	__glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 5759
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5760
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5762
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,16
    bnez	$v0,.L0dafe224
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe224:
    # Line 5763
    ld	$a2,528($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5766
    ld	$v1,520($sp)
    ld	$ra,600($sp)
    li	$at,1
    sb	$at,12($v1)
.L0dafe24c:
    # Line 5770
    li	$t1,2
    sw	$t1,__glBeginMode
    lw	$t0,11764($s0)
    # ld	gp,584(sp)
    ori	$t0,$t0,0x1
    sw	$t0,11764($s0)
    # Line 5771
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe270:
    ld	$a4,544($sp)
    sd	$a0,520($sp)
    # Line 5747
    subu	$a4,$a4,$t3
    b	.L0dafe164
    addiu	$a4,$a4,1
.L0dafe284:
    # Line 5740
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5741
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glim_CopyTexImage1DEXT

# Function: __glim_CopyTexImage2DEXT
# Declared: Line 5773 (Source lines: 5779-5833)
# Address: 0x0dafe2a4 - 0x0dafe544 (Size: 672 bytes, Frame: 176)
.globl __glim_CopyTexImage2DEXT
.ent __glim_CopyTexImage2DEXT
__glim_CopyTexImage2DEXT:
    # Line 5779
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-688
    sd	$ra,608($sp)
    sd	$s0,600($sp)
    # Line 5789
    lw	$s0,__glCurrentContext
    sd	$a7,560($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,584($sp)
    sd	$a3,576($sp)
    sd	$a2,568($sp)
    sd	$a1,536($sp)
    # sd	gp,592(sp)
    lw	$t2,__glBeginMode
    # Line 5779
    lui	$at,0x10
    addiu	$at,$at,-27196
    # Line 5789
    beqz	$t2,.L0dafe350
    # Line 5779
    nop
    sd	$ra,608($sp)
    sd	$v0,536($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a7,560($sp)
    sd	$a2,568($sp)
    sd	$a3,576($sp)
    sd	$a4,584($sp)
    # Line 5789
    li	$v1,2
    beq	$t2,$v1,.L0dafe33c
    sd	$t3,616($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe33c:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,616($sp)
.L0dafe350:
    # Line 5792
    move	$a0,$s0
    move	$a1,$t3
    ld	$a2,536($sp)
    ld	$a3,568($sp)
    ld	$a4,576($sp)
    ld	$a5,584($sp)
    ld	$a6,552($sp)
    ld	$a7,544($sp)
    li	$t0,2
    # lw $t9, -26812($gp) # &__glCheckCopyTexImageArgs
    ld	$t1,560($sp)
    sw	$t0,12($sp)
    jal	__glCheckCopyTexImageArgs
    sw	$t1,4($sp)
    sd	$v0,528($sp)
    bnez	$v0,.L0dafe3a4
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    # Line 5795
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe3a4:
    # Line 5797
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3553
    lw	$at,0($v0)
    ld	$a4,552($sp)
    # Line 5811
    ld	$a5,544($sp)
    # Line 5797
    slti	$at,$at,3
    beqz	$at,.L0dafe524
    move	$a0,$v0
    # Line 5800
    lw	$t2,740($s0)
    lw	$t8,48($t2)
    beqzl	$t8,.L0dafe3f8
    sd	$a0,520($sp)
    # Line 5804
    lw	$t3,0($t2)
    li	$v1,0x8011
    beq	$t3,$v1,.L0dafe500
    li	$t0,0x8012
    beql	$t3,$t0,.L0dafe504
    # Line 5808
    lw	$t0,52($t2)
    sd	$a0,520($sp)
.L0dafe3f8:
    # Line 5813
    move	$a0,$s0
    ld	$a2,536($sp)
    ld	$a3,568($sp)
    ld	$a6,560($sp)
    ld	$t9,528($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    jalr	$t9
    addiu	$a6,$a6,1
    beqz	$v0,.L0dafe4dc
    ld	$ra,608($sp)
    # Line 5819
    move	$a0,$s0
    ld	$a5,544($sp)
    ld	$a4,552($sp)
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,584($sp)
    ld	$a2,576($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,16
    # Line 5820
    move	$a0,$s0
    # lw $t9, -26840($gp) # &__glInitTexImageStore
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    jal	__glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 5821
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5822
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5824
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,16
    bnez	$v0,.L0dafe4b4
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe4b4:
    # Line 5825
    ld	$a2,528($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,536($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5828
    ld	$v1,520($sp)
    ld	$ra,608($sp)
    li	$at,1
    sb	$at,12($v1)
.L0dafe4dc:
    # Line 5832
    li	$t1,2
    sw	$t1,__glBeginMode
    lw	$t0,11764($s0)
    # ld	gp,592(sp)
    ori	$t0,$t0,0x1
    sw	$t0,11764($s0)
    # Line 5833
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dafe500:
    # Line 5808
    lw	$t0,52($t2)
.L0dafe504:
    ld	$a5,544($sp)
    # Line 5807
    ld	$a4,552($sp)
    sd	$a0,520($sp)
    # Line 5808
    subu	$a5,$a5,$t0
    # Line 5807
    subu	$a4,$a4,$t8
    addiu	$a4,$a4,1
    # Line 5808
    b	.L0dafe3f8
    addiu	$a5,$a5,1
.L0dafe524:
    # Line 5799
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5800
    ld	$ra,608($sp)
    # ld	gp,592(sp)
    ld	$s0,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glim_CopyTexImage2DEXT

# Function: __glim_CopyTexSubImage1DEXT
# Declared: Line 5836 (Source lines: 5842-5872)
# Address: 0x0dafe544 - 0x0dafe730 (Size: 492 bytes, Frame: 160)
.globl __glim_CopyTexSubImage1DEXT
.ent __glim_CopyTexSubImage1DEXT
__glim_CopyTexSubImage1DEXT:
    # Line 5842
    move	$v0,$a1
    move	$t2,$a0
    addiu	$sp,$sp,-672
    sd	$ra,600($sp)
    sd	$s0,592($sp)
    # Line 5850
    lw	$s0,__glCurrentContext
    sd	$a5,576($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a2,552($sp)
    sd	$a1,544($sp)
    # sd	gp,584(sp)
    lw	$a6,__glBeginMode
    # Line 5842
    lui	$at,0x10
    addiu	$at,$at,-27868
    # Line 5850
    beqz	$a6,.L0dafe5e0
    # Line 5842
    nop
    sd	$ra,600($sp)
    sd	$v0,544($sp)
    sd	$a2,552($sp)
    sd	$a4,560($sp)
    sd	$a3,568($sp)
    sd	$a5,576($sp)
    # Line 5850
    li	$v1,2
    beq	$a6,$v1,.L0dafe5cc
    sd	$t2,608($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafe5cc:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t2,608($sp)
.L0dafe5e0:
    # Line 5853
    move	$a0,$s0
    ld	$a2,544($sp)
    ld	$a3,552($sp)
    move	$a4,$zero
    move	$a5,$zero
    ld	$a6,568($sp)
    ld	$a7,560($sp)
    li	$t0,1
    li	$t1,1
    sw	$t1,20($sp)
    # lw $t9, -26412($gp) # &__glCheckCopyTexSubImageArgs
    move	$a1,$t2
    ld	$t2,576($sp)
    sw	$t0,12($sp)
    bal __glCheckCopyTexSubImageArgs
    sw	$t2,4($sp)
    sd	$v0,536($sp)
    bnez	$v0,.L0dafe63c
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    # Line 5856
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafe63c:
    # Line 5858
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$at,0($v0)
    slti	$at,$at,3
    beqz	$at,.L0dafe710
    # Line 5865
    move	$a0,$s0
    li	$a5,1
    ld	$a4,576($sp)
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,560($sp)
    ld	$a2,568($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 5866
    move	$a0,$s0
    move	$a6,$zero
    move	$a5,$zero
    ld	$a4,552($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,544($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5867
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 5868
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 5870
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    bnez	$v0,.L0dafe6e4
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafe6e4:
    # Line 5871
    ld	$a2,536($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,544($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 5872
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0dafe710:
    # Line 5860
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5861
    ld	$ra,600($sp)
    # ld	gp,584(sp)
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end __glim_CopyTexSubImage1DEXT

# Function: __glim_CopyTexSubImage2DEXT
# Declared: Line 5874 (Source lines: 5882-5913)
# Address: 0x0dafe730 - 0x0dafe92c (Size: 508 bytes, Frame: 192)
.globl __glim_CopyTexSubImage2DEXT
.ent __glim_CopyTexSubImage2DEXT
__glim_CopyTexSubImage2DEXT:
    # Line 5882
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-704
    sd	$ra,616($sp)
    sd	$s0,608($sp)
    # Line 5890
    lw	$s0,__glCurrentContext
    sd	$a7,560($sp)
    sd	$a6,552($sp)
    sd	$a5,576($sp)
    sd	$a4,584($sp)
    sd	$a3,592($sp)
    sd	$a2,568($sp)
    sd	$a1,544($sp)
    # sd	gp,600(sp)
    lw	$t2,__glBeginMode
    # Line 5882
    lui	$at,0x10
    addiu	$at,$at,-28360
    # Line 5890
    beqz	$t2,.L0dafe7dc
    # Line 5882
    nop
    sd	$ra,616($sp)
    sd	$v0,544($sp)
    sd	$a6,552($sp)
    sd	$a7,560($sp)
    sd	$a2,568($sp)
    sd	$a5,576($sp)
    sd	$a4,584($sp)
    sd	$a3,592($sp)
    # Line 5890
    li	$v1,2
    beq	$t2,$v1,.L0dafe7c8
    sd	$t3,624($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafe7c8:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,624($sp)
.L0dafe7dc:
    # Line 5893
    move	$a0,$s0
    move	$a1,$t3
    ld	$a2,544($sp)
    ld	$a3,568($sp)
    ld	$a4,592($sp)
    move	$a5,$zero
    ld	$a6,584($sp)
    ld	$a7,576($sp)
    li	$t0,2
    sw	$t0,20($sp)
    ld	$t2,560($sp)
    # lw $t9, -26412($gp) # &__glCheckCopyTexSubImageArgs
    ld	$t1,552($sp)
    sw	$t2,12($sp)
    bal __glCheckCopyTexSubImageArgs
    sw	$t1,4($sp)
    sd	$v0,536($sp)
    bnez	$v0,.L0dafe838
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    # Line 5897
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafe838:
    # Line 5899
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3553
    lw	$at,0($v0)
    slti	$at,$at,3
    beqz	$at,.L0dafe90c
    # Line 5906
    move	$a0,$s0
    ld	$a5,560($sp)
    ld	$a4,552($sp)
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,576($sp)
    ld	$a2,584($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 5907
    move	$a0,$s0
    move	$a6,$zero
    ld	$a5,592($sp)
    ld	$a4,568($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,544($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5908
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 5909
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 5911
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    bnez	$v0,.L0dafe8e0
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafe8e0:
    # Line 5912
    ld	$a2,536($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,544($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 5913
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafe90c:
    # Line 5901
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5902
    ld	$ra,616($sp)
    # ld	gp,600(sp)
    ld	$s0,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.end __glim_CopyTexSubImage2DEXT

# Function: __glim_CopyTexSubImage3DEXT
# Declared: Line 5916 (Source lines: 5925-5956)
# Address: 0x0dafe92c - 0x0dafeb2c (Size: 512 bytes, Frame: 192)
.globl __glim_CopyTexSubImage3DEXT
.ent __glim_CopyTexSubImage3DEXT
__glim_CopyTexSubImage3DEXT:
    # Line 5925
    move	$v0,$a1
    move	$t3,$a0
    addiu	$sp,$sp,-704
    sd	$ra,624($sp)
    sd	$s0,616($sp)
    # Line 5933
    lw	$s0,__glCurrentContext
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    sd	$a4,592($sp)
    sd	$a3,600($sp)
    sd	$a2,560($sp)
    sd	$a1,552($sp)
    # sd	gp,608(sp)
    lw	$t2,__glBeginMode
    # Line 5925
    lui	$at,0x10
    addiu	$at,$at,-28868
    # Line 5933
    beqz	$t2,.L0dafe9d8
    # Line 5925
    nop
    sd	$ra,624($sp)
    sd	$v0,552($sp)
    sd	$a2,560($sp)
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    sd	$a4,592($sp)
    sd	$a3,600($sp)
    # Line 5933
    li	$v1,2
    beq	$t2,$v1,.L0dafe9c4
    sd	$t3,632($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,624($sp)
    # ld	gp,608(sp)
    ld	$s0,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafe9c4:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
    ld	$t3,632($sp)
.L0dafe9d8:
    # Line 5936
    ld	$a7,576($sp)
    ld	$a6,584($sp)
    ld	$a5,592($sp)
    ld	$a4,600($sp)
    ld	$a3,560($sp)
    ld	$a2,552($sp)
    move	$a1,$t3
    move	$a0,$s0
    li	$t1,3
    lw	$t0,708($sp)
    sw	$t1,20($sp)
    ld	$t2,568($sp)
    # lw $t9, -26412($gp) # &__glCheckCopyTexSubImageArgs
    sd	$t0,536($sp)
    sw	$t2,4($sp)
    bal __glCheckCopyTexSubImageArgs
    sw	$t0,12($sp)
    sd	$v0,544($sp)
    bnez	$v0,.L0dafea38
    ld	$ra,624($sp)
    # ld	gp,608(sp)
    # Line 5940
    ld	$s0,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafea38:
    # Line 5942
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$at,0($v0)
    slti	$at,$at,3
    beqz	$at,.L0dafeb0c
    # Line 5949
    move	$a0,$s0
    ld	$a5,536($sp)
    ld	$a4,568($sp)
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,576($sp)
    ld	$a2,584($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 5950
    move	$a0,$s0
    ld	$a6,592($sp)
    ld	$a5,600($sp)
    ld	$a4,560($sp)
    # lw $t9, -26428($gp) # &__glInitTexSubImageStore
    ld	$a3,552($sp)
    ld	$a2,544($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5951
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 5952
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 5954
    # lw $t9, -30520($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    bnez	$v0,.L0dafeae0
    ld	$ra,624($sp)
    # ld	gp,608(sp)
    ld	$s0,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafeae0:
    # Line 5955
    ld	$a2,544($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,552($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 5956
    ld	$ra,624($sp)
    # ld	gp,608(sp)
    ld	$s0,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0dafeb0c:
    # Line 5944
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5945
    ld	$ra,624($sp)
    # ld	gp,608(sp)
    ld	$s0,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.end __glim_CopyTexSubImage3DEXT

.rdata
_lit8_3f50624dd2f1a9fc:
    .word 0x3f50624d, 0xd2f1a9fc
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit_3bfffbce:
    .word 0x3bfffbce
_lit_3d000000:
    .word 0x3d000000
_lit_3d280065:
    .word 0x3d280065
_lit_3daa0019:
    .word 0x3daa0019
_lit_3e07ffde:
    .word 0x3e07ffde
_lit_3e400000:
    .word 0x3e400000
_lit_3e7afff3:
    .word 0x3e7afff3
_lit_3e800000:
    .word 0x3e800000
_lit_3e9c7ffe:
    .word 0x3e9c7ffe
_lit_3ebc7ffe:
    .word 0x3ebc7ffe
_lit_3edc7ffe:
    .word 0x3edc7ffe
_lit_3efc0011:
    .word 0x3efc0011
_lit_3efff972:
    .word 0x3efff972
_lit_3f000000:
    .word 0x3f000000
_lit_3f0d4003:
    .word 0x3f0d4003
_lit_3f1c0000:
    .word 0x3f1c0000
_lit_3f297ffa:
    .word 0x3f297ffa
_lit_3f35c001:
    .word 0x3f35c001
_lit_3f404007:
    .word 0x3f404007
_lit_3f48fffc:
    .word 0x3f48fffc
_lit_3f4fbff9:
    .word 0x3f4fbff9
_lit_3f540000:
    .word 0x3f540000
_lit_3f554003:
    .word 0x3f554003
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_bafffbce:
    .word 0xbafffbce
_lit_bbe00086:
    .word 0xbbe00086
_lit_bc600086:
    .word 0xbc600086
_lit_bc8fffbd:
    .word 0xbc8fffbd
_lit_bcb80022:
    .word 0xbcb80022
_lit_bd000000:
    .word 0xbd000000
_lit_bd0fffbd:
    .word 0xbd0fffbd
_lit_bd1fff7a:
    .word 0xbd1fff7a
_lit_bd400000:
    .word 0xbd400000
_lit_bd540032:
    .word 0xbd540032
_lit_bd57ff9b:
    .word 0xbd57ff9b
_lit_bd600086:
    .word 0xbd600086
_lit_bf800000:
    .word 0xbf800000

