# Source: ../EXPRESS/gr2_lighting.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_lighting.c
# Total Functions: 19

.text

# Function: __glExpInitLUTCache
# Declared: Line 71 (Source lines: 72-80)
# Address: 0x0da5d904 - 0x0da5d954 (Size: 80 bytes, Frame: 48)
.globl __glExpInitLUTCache
.ent __glExpInitLUTCache
__glExpInitLUTCache:
    # Line 76
    li	$a1,20
    # Line 72
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-24732
    # addu	gp,t9,at
    # Line 76
    lw	$t9,0($a0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 72
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 76
    sw	$v0,31864($s8)
    # Line 80
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,48
    # Line 79
    li	$v1,1
    sw	$v1,4($v0)
    # Line 80
    jr	$ra
    # Line 78
    sw	$zero,0($v0)
.end __glExpInitLUTCache

# Function: __glExpFreeLUTCache
# Declared: Line 82 (Source lines: 83-97)
# Address: 0x0da5d954 - 0x0da5d9f0 (Size: 156 bytes, Frame: 192)
.globl __glExpFreeLUTCache
.ent __glExpFreeLUTCache
__glExpFreeLUTCache:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$s4,40($sp)
    sd	$s5,32($sp)
    sd	$ra,24($sp)
    sd	$s0,0($sp)
    sd	$s1,8($sp)
    # Line 90
    lw	$s1,31864($a0)
    # Line 83
    move	$s0,$a0
    # sd	gp,16(sp)
    # Line 91
    lw	$a1,0($s1)
    # Line 83
    lui	$at,0x1a
    addiu	$at,$at,-24812
    # Line 91
    blez	$a1,.L0da5d9c8
    # Line 83
    nop
    sd	$ra,24($sp)
    # Line 91
    move	$s4,$s1
    sll	$s5,$a1,0x2
    subu	$s5,$s5,$a1
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s1
    # Line 94
    lw	$t9,12($s0)
.L0da5d9a8:
    move	$a0,$s0
    jalr	$t9
    lw	$a1,16($s4)
    # Line 92
    addiu	$s4,$s4,12
    bnel	$s4,$s5,.L0da5d9a8
    # Line 94
    lw	$t9,12($s0)
    ld	$s5,32($sp)
    ld	$s4,40($sp)
.L0da5d9c8:
    # Line 96
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # ld	gp,16(sp)
    # Line 97
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glExpFreeLUTCache

# Function: findEntry
# Declared: Line 99 (Source lines: 108-125)
# Address: 0x0da5d9f0 - 0x0da5da54 (Size: 100 bytes, Frame: 0)
.ent findEntry
findEntry:
    # Line 108
    lw	$a2,0($a0)
    # Line 125
    move	$v0,$zero
    # Line 110
    blez	$a2,.L0da5da4c
    move	$a5,$zero
    move	$a4,$a0
    b	.L0da5da1c
    lwc1	$f0,8($a4)
    # Line 122
    addiu	$a5,$a5,1
.L0da5da10:
    beq	$a2,$a5,.L0da5da4c
    addiu	$a4,$a4,12
    # Line 110
    lwc1	$f0,8($a4)
.L0da5da1c:
    c.eq.s	$f0,$f13
    nop
    bc1fl	.L0da5da10
    # Line 122
    addiu	$a5,$a5,1
    # Line 110
    lwc1	$f1,12($a4)
    c.eq.s	$f1,$f14
    nop
    bc1fl	.L0da5da10
    # Line 122
    addiu	$a5,$a5,1
    # Line 118
    lw	$v0,16($a4)
    # Line 120
    jr	$ra
    # Line 119
    sw	$a5,0($a3)
.L0da5da4c:
    # Line 125
    jr	$ra
    # Line 124
    sw	$a5,0($a3)
.end findEntry

# Function: __glExpCreateSpecLUT
# Declared: Line 128 (Source lines: 129-205)
# Address: 0x0da5da54 - 0x0da5dcf0 (Size: 668 bytes, Frame: 144)
.globl __glExpCreateSpecLUT
.ent __glExpCreateSpecLUT
__glExpCreateSpecLUT:
    # Line 129
    addiu	$sp,$sp,-144
    sd	$s1,56($sp)
    # Line 142
    addiu	$a3,$sp,0
    sdc1	$f24,32($sp)
    # Line 129
    mov.s	$f24,$f13
    sd	$s0,64($sp)
    # Line 140
    lw	$s0,31864($a0)
    sd	$gp,80($sp)
    sd	$ra,72($sp)
    # Line 129
    lui	$ra,0x1a
    addiu	$ra,$ra,-25068
    addu	$gp,$t9,$ra
    # Line 142
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$a0,40($sp)
    move	$a0,$s0
    addiu	$t9,$t9,-9744
    bal __glExpFreeLUTCache
    lwc1	$f14,_lit_bf800000
    beqz	$v0,.L0da5dad0
    move	$s1,$v0
    # Line 144
    ld	$ra,72($sp)
    ld	$gp,80($sp)
    ld	$s0,64($sp)
    # Line 143
    lw	$at,0($s1)
    # Line 144
    ldc1	$f24,32($sp)
    move	$v0,$s1
    # Line 143
    addiu	$at,$at,1
    sw	$at,0($s1)
    # Line 144
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da5dad0:
    # Line 151
    lw	$s1,0($s0)
    # Line 152
    lw	$a5,4($s0)
    # Line 151
    addiu	$s1,$s1,1
    # Line 152
    slt	$v1,$a5,$s1
    bnez	$v1,.L0da5dcb4
    # Line 151
    sw	$s1,0($s0)
.L0da5dae8:
    # Line 157
    lw	$a5,0($sp)
    li	$at,1
    subu	$a6,$s1,$a5
    beq	$a6,$at,.L0da5db2c
    # Line 169
    nop	# was lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,-12
    sll	$a0,$a5,0x2
    subu	$a0,$a0,$a5
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    addiu	$a1,$a0,8
    jal	memcpy
    addiu	$a0,$a0,20
    lw	$a5,0($sp)
.L0da5db2c:
    # Line 176
    ld	$a0,40($sp)
    lwc1	$f0,_lit_bf800000
    # Line 173
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    # Line 174
    swc1	$f24,8($a4)
    # Line 173
    addiu	$a3,$a4,8
    # Line 175
    swc1	$f0,4($a3)
    # Line 176
    lw	$t9,0($a0)
    li	$a1,532
    jalr	$t9
    sd	$a3,48($sp)
    ldc1	$f5,_lit8_3ff0000000000000
    dmtc1	$zero,$f2
    cvt.d.s	$f1,$f24
    move	$s1,$v0
    c.eq.d	$f1,$f2
    ld	$at,48($sp)
    sdc1	$f1,8($sp)
    bc1f	.L0da5dc7c
    sw	$v0,8($at)
    dmtc1	$zero,$f6
    sd	$s2,104($sp)
    sd	$s5,112($sp)
    sdc1	$f28,88($sp)
    sdc1	$f26,96($sp)
.L0da5db98:
    # Line 189
    sub.d	$f26,$f5,$f6
    ldc1	$f28,_lit8_405f800000000000
    div.d	$f26,$f26,$f28
    sub.d	$f26,$f6,$f26
    # Line 191
    sub.d	$f0,$f5,$f26
    ldc1	$f28,_lit8_405fc00000000000
    div.d	$f28,$f28,$f0
    # Line 190
    addiu	$s0,$s1,20
    # Line 191
    li	$s5,-1
    li	$s2,127
    sdc1	$f26,24($sp)
    sdc1	$f28,16($sp)
    div.d	$f28,$f5,$f28
.L0da5dbcc:
    # Line 192
    cvt.s.d	$f12,$f26
    mov.s	$f13,$f24
    # lw $t9, -22992($gp) # &powf
    # Line 193
    add.d	$f26,$f28,$f26
    # Line 191
    addiu	$s2,$s2,-1
    # Line 192
    jal	powf
    addiu	$s0,$s0,4
    # Line 191
    bne	$s2,$s5,.L0da5dbcc
    # Line 192
    swc1	$f0,-4($s0)
    ldc1	$f28,88($sp)
    ldc1	$f26,96($sp)
    ld	$s2,104($sp)
    # Line 191
    ldc1	$f1,8($sp)
    dmtc1	$zero,$f0
    # Line 201
    ldc1	$f3,16($sp)
    # Line 205
    ld	$s0,64($sp)
    # Line 191
    c.lt.d	$f0,$f1
    # Line 205
    ld	$ra,72($sp)
    # Line 191
    bc1f	.L0da5dc34
    ld	$s5,112($sp)
    # Line 197
    mtc1	$zero,$f2
    ldc1	$f28,88($sp)
    ldc1	$f26,96($sp)
    ld	$s2,104($sp)
    ld	$s5,112($sp)
    swc1	$f2,20($s1)
.L0da5dc34:
    # Line 201
    ldc1	$f4,_lit8_3ff0083126e978d5
    mul.d	$f3,$f3,$f4
    lwc1	$f0,_lit_bf800000
    ld	$gp,80($sp)
    # Line 200
    ldc1	$f4,24($sp)
    # Line 203
    swc1	$f24,12($s1)
    # Line 205
    ldc1	$f24,32($sp)
    # Line 200
    cvt.s.d	$f4,$f4
    li	$v0,1
    # Line 202
    sw	$v0,0($s1)
    # Line 201
    cvt.s.d	$f3,$f3
    # Line 205
    move	$v0,$s1
    # Line 204
    swc1	$f0,16($s1)
    # Line 200
    swc1	$f4,4($s1)
    # Line 201
    swc1	$f3,8($s1)
    # Line 205
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da5dc7c:
    ldc1	$f14,8($sp)
    ldc1	$f13,_lit8_3ff0000000000000
    # Line 183
    div.d	$f13,$f13,$f14
    # lw $t9, -22992($gp) # &powf
    lwc1	$f12,_lit_3a378034
    jal	powf
    cvt.s.d	$f13,$f13
    sd	$s2,104($sp)
    sd	$s5,112($sp)
    sdc1	$f28,88($sp)
    sdc1	$f26,96($sp)
    ldc1	$f5,_lit8_3ff0000000000000
    b	.L0da5db98
    cvt.d.s	$f6,$f0
.L0da5dcb4:
    # Line 157
    move	$a1,$s0
    sll	$a2,$a5,0x2
    ld	$t9,40($sp)
    # Line 156
    addiu	$ra,$a5,6
    sw	$ra,4($s0)
    # Line 157
    move	$a0,$t9
    lw	$t9,8($t9)
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    jalr	$t9
    addiu	$a2,$a2,92
    ld	$at,40($sp)
    move	$s0,$v0
    b	.L0da5dae8
    sw	$v0,31864($at)
.end __glExpCreateSpecLUT

# Function: __glExpCreateSpotLUT
# Declared: Line 208 (Source lines: 210-292)
# Address: 0x0da5dcf0 - 0x0da5df7c (Size: 652 bytes, Frame: 160)
.globl __glExpCreateSpotLUT
.ent __glExpCreateSpotLUT
__glExpCreateSpotLUT:
    # Line 210
    addiu	$sp,$sp,-160
    sd	$s1,88($sp)
    # Line 223
    addiu	$a3,$sp,0
    sdc1	$f22,40($sp)
    # Line 210
    mov.s	$f22,$f14
    sdc1	$f20,48($sp)
    mov.s	$f20,$f13
    sd	$a0,56($sp)
    sd	$gp,112($sp)
    sd	$ra,104($sp)
    lui	$ra,0x1a
    addiu	$ra,$ra,-25736
    addu	$gp,$t9,$ra
    # Line 223
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$s0,96($sp)
    # Line 221
    lw	$s0,31864($a0)
    # Line 223
    addiu	$t9,$t9,-9744
    bal __glExpFreeLUTCache
    move	$a0,$s0
    beqz	$v0,.L0da5dd74
    move	$s1,$v0
    # Line 225
    ld	$ra,104($sp)
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ldc1	$f20,48($sp)
    # Line 224
    lw	$at,0($s1)
    # Line 225
    ldc1	$f22,40($sp)
    move	$v0,$s1
    # Line 224
    addiu	$at,$at,1
    sw	$at,0($s1)
    # Line 225
    ld	$s1,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da5dd74:
    # Line 232
    lw	$s1,0($s0)
    # Line 233
    lw	$a5,4($s0)
    # Line 232
    addiu	$s1,$s1,1
    # Line 233
    slt	$v1,$a5,$s1
    bnez	$v1,.L0da5df40
    # Line 232
    sw	$s1,0($s0)
.L0da5dd8c:
    # Line 238
    lw	$a5,0($sp)
    li	$at,1
    subu	$a6,$s1,$a5
    beq	$a6,$at,.L0da5ddd0
    # Line 250
    nop	# was lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,-12
    sll	$a0,$a5,0x2
    subu	$a0,$a0,$a5
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    addiu	$a1,$a0,8
    jal	memcpy
    addiu	$a0,$a0,20
    lw	$a5,0($sp)
.L0da5ddd0:
    # Line 257
    ld	$a0,56($sp)
    # Line 254
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    # Line 255
    swc1	$f20,8($a4)
    # Line 254
    addiu	$a3,$a4,8
    # Line 256
    swc1	$f22,4($a3)
    # Line 257
    lw	$t9,0($a0)
    li	$a1,532
    jalr	$t9
    sd	$a3,64($sp)
    dmtc1	$zero,$f4
    cvt.d.s	$f6,$f20
    ldc1	$f5,_lit8_3ff0000000000000
    c.eq.d	$f6,$f4
    ld	$at,64($sp)
    move	$s1,$v0
    bc1f	.L0da5df1c
    sw	$v0,8($at)
    # Line 262
    mov.d	$f6,$f4
.L0da5de24:
    # Line 264
    cvt.d.s	$f4,$f22
    c.lt.d	$f6,$f4
    # Line 279
    addiu	$s0,$s1,20
    # Line 264
    bc1fl	.L0da5de50
    sdc1	$f28,32($sp)
    sd	$s2,72($sp)
    sd	$s5,80($sp)
    sdc1	$f24,24($sp)
    sdc1	$f28,32($sp)
    # Line 272
    mov.d	$f6,$f4
    sdc1	$f28,32($sp)
.L0da5de50:
    sdc1	$f24,24($sp)
    # Line 278
    sub.d	$f24,$f5,$f6
    ldc1	$f28,_lit8_403e000000000000
    div.d	$f24,$f24,$f28
    sub.d	$f24,$f6,$f24
    # Line 280
    sub.d	$f0,$f5,$f24
    ldc1	$f28,_lit8_403f000000000000
    div.d	$f28,$f28,$f0
    sd	$s5,80($sp)
    li	$s5,-1
    sd	$s2,72($sp)
    li	$s2,31
    sdc1	$f24,16($sp)
    sdc1	$f28,8($sp)
    div.d	$f28,$f5,$f28
.L0da5de8c:
    # Line 281
    cvt.s.d	$f12,$f24
    mov.s	$f13,$f20
    # lw $t9, -22992($gp) # &powf
    # Line 282
    add.d	$f24,$f28,$f24
    # Line 280
    addiu	$s2,$s2,-1
    # Line 281
    jal	powf
    addiu	$s0,$s0,4
    # Line 280
    bne	$s2,$s5,.L0da5de8c
    # Line 281
    swc1	$f0,-4($s0)
    # Line 285
    mtc1	$zero,$f2
    # Line 288
    ldc1	$f1,_lit8_3ff0083126e978d5
    ld	$gp,112($sp)
    # Line 292
    ld	$s0,96($sp)
    ld	$s2,72($sp)
    ld	$s5,80($sp)
    # Line 288
    ldc1	$f0,8($sp)
    # Line 290
    swc1	$f20,12($s1)
    # Line 292
    ldc1	$f20,48($sp)
    # Line 288
    mul.d	$f0,$f0,$f1
    # Line 291
    swc1	$f22,16($s1)
    # Line 292
    ldc1	$f22,40($sp)
    ldc1	$f24,24($sp)
    # Line 287
    ldc1	$f1,16($sp)
    # Line 292
    ldc1	$f28,32($sp)
    li	$v0,1
    # Line 287
    cvt.s.d	$f1,$f1
    # Line 289
    sw	$v0,0($s1)
    # Line 292
    move	$v0,$s1
    # Line 288
    cvt.s.d	$f0,$f0
    # Line 292
    ld	$ra,104($sp)
    # Line 285
    swc1	$f2,20($s1)
    # Line 287
    swc1	$f1,4($s1)
    # Line 288
    swc1	$f0,8($s1)
    # Line 292
    ld	$s1,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da5df1c:
    ldc1	$f13,_lit8_3ff0000000000000
    # Line 264
    div.d	$f13,$f13,$f6
    # lw $t9, -22992($gp) # &powf
    lwc1	$f12,_lit_3a378034
    jal	powf
    cvt.s.d	$f13,$f13
    ldc1	$f5,_lit8_3ff0000000000000
    b	.L0da5de24
    cvt.d.s	$f6,$f0
.L0da5df40:
    # Line 238
    move	$a1,$s0
    sll	$a2,$a5,0x2
    ld	$t9,56($sp)
    # Line 237
    addiu	$ra,$a5,6
    sw	$ra,4($s0)
    # Line 238
    move	$a0,$t9
    lw	$t9,8($t9)
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    jalr	$t9
    addiu	$a2,$a2,92
    ld	$at,56($sp)
    move	$s0,$v0
    b	.L0da5dd8c
    sw	$v0,31864($at)
.end __glExpCreateSpotLUT

# Function: __glExpFreeLightLUT
# Declared: Line 295 (Source lines: 296-327)
# Address: 0x0da5df7c - 0x0da5e074 (Size: 248 bytes, Frame: 192)
.globl __glExpFreeLightLUT
.ent __glExpFreeLightLUT
__glExpFreeLightLUT:
    # Line 296
    move	$v0,$a0
    addiu	$sp,$sp,-64
    # sd	gp,32(sp)
    lui	$at,0x1a
    addiu	$at,$at,-26388
    beqz	$a1,.L0da5dfb8
    nop
    # Line 306
    lw	$v1,0($a1)
    sd	$v0,24($sp)
    addiu	$v1,$v1,-1
    blez	$v1,.L0da5dfc4
    sw	$v1,0($a1)
    # ld	gp,32(sp)
    # Line 307
    jr	$ra
    addiu	$sp,$sp,64
.L0da5dfb8:
    # ld	gp,32(sp)
    # Line 302
    jr	$ra
    addiu	$sp,$sp,64
.L0da5dfc4:
    # Line 311
    addiu	$a3,$sp,0
    lwc1	$f14,16($a1)
    lwc1	$f13,12($a1)
    # Line 309
    ld	$a0,24($sp)
    # Line 311
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,40($sp)
    # Line 309
    lw	$a0,31864($a0)
    # Line 311
    addiu	$t9,$t9,-9744
    bal __glExpFreeLUTCache
    sd	$a0,16($sp)
    lw	$a2,0($v0)
    bnez	$a2,.L0da5e00c
    ld	$ra,40($sp)
    ld	$a5,16($sp)
    lw	$a5,0($a5)
    slti	$a3,$a5,32
    beqz	$a3,.L0da5e018
    sd	$v0,8($sp)
.L0da5e00c:
    # ld	gp,32(sp)
    # Line 327
    jr	$ra
    addiu	$sp,$sp,64
.L0da5e018:
    # Line 321
    ld	$a1,16($sp)
    addiu	$a4,$a5,-1
    sw	$a4,0($a1)
    # Line 322
    lw	$a3,0($sp)
    # lw $t9, -23008($gp) # &memcpy
    subu	$a4,$a4,$a3
    sll	$a2,$a4,0x2
    subu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addiu	$a1,$a0,20
    jal	memcpy
    addiu	$a0,$a0,8
    ld	$t9,24($sp)
    # Line 325
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0da5e00c
    ld	$ra,40($sp)
.end __glExpFreeLightLUT

# Function: __glExpLoadSpecLUT
# Declared: Line 332 (Source lines: 335-354)
# Address: 0x0da5e074 - 0x0da5e18c (Size: 280 bytes, Frame: 0)
.ent __glExpLoadSpecLUT
__glExpLoadSpecLUT:
    # Line 335
    lwc1	$f4,_lit_40e00000
    lw	$a5,4($a1)
    # Line 350
    move	$a1,$zero
    # Line 335
    lui	$a3,0x4
    beqz	$a2,.L0da5e15c
    ori	$a3,$a3,0x2200
    # Line 341
    lwc1	$f2,_lit_41c80000
    # Line 340
    lwc1	$f0,_lit_41c00000
    swc1	$f0,0($a3)
    lwc1	$f3,8($a5)
    swc1	$f3,0($a3)
    # Line 341
    swc1	$f2,0($a3)
    lwc1	$f1,4($a5)
    # Line 342
    lwc1	$f0,_lit_3f800000
    # Line 341
    swc1	$f1,0($a3)
    # Line 342
    swc1	$f4,0($a3)
    swc1	$f0,0($a3)
.L0da5e0b8:
    # Line 350
    li	$a4,128
    # Line 349
    addiu	$a2,$a5,20
    # Line 350
    lui	$a3,0x4
    ori	$a3,$a3,0x21d0
.L0da5e0c8:
    # Line 351
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,4($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,8($a2)
    swc1	$f2,0($a3)
    lwc1	$f1,12($a2)
    swc1	$f1,0($a3)
    lwc1	$f0,16($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,20($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,24($a2)
    swc1	$f2,0($a3)
    lwc1	$f1,28($a2)
    swc1	$f1,0($a3)
    lwc1	$f0,32($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,36($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,40($a2)
    swc1	$f2,0($a3)
    lwc1	$f1,44($a2)
    swc1	$f1,0($a3)
    lwc1	$f0,48($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,52($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,56($a2)
    swc1	$f2,0($a3)
    # Line 352
    addiu	$a2,$a2,64
    # Line 351
    lwc1	$f1,-4($a2)
    # Line 350
    addiu	$a1,$a1,16
    bne	$a1,$a4,.L0da5e0c8
    # Line 351
    swc1	$f1,0($a3)
    # Line 354
    jr	$ra
    nop
.L0da5e15c:
    # Line 345
    lwc1	$f3,_lit_40400000
    # Line 344
    lwc1	$f1,_lit_40000000
    swc1	$f1,0($a3)
    lwc1	$f0,8($a5)
    swc1	$f0,0($a3)
    # Line 345
    swc1	$f3,0($a3)
    lwc1	$f2,4($a5)
    # Line 346
    mtc1	$zero,$f1
    # Line 345
    swc1	$f2,0($a3)
    # Line 346
    swc1	$f4,0($a3)
    b	.L0da5e0b8
    swc1	$f1,0($a3)
.end __glExpLoadSpecLUT

# Function: __glExpLoadSpotLUT
# Declared: Line 357 (Source lines: 360-374)
# Address: 0x0da5e18c - 0x0da5e2f4 (Size: 360 bytes, Frame: 0)
.ent __glExpLoadSpotLUT
__glExpLoadSpotLUT:
    # Line 364
    mtc1	$a2,$f0
    # Line 370
    lui	$a4,0x4
    # Line 360
    lw	$a3,8($a1)
    # Line 364
    cvt.s.w	$f0,$f0
    # Line 365
    lwc1	$f4,_lit_41e80000
    # Line 364
    lwc1	$f1,_lit_41f80000
    lui	$at,0x4
    ori	$at,$at,0x2200
    swc1	$f1,0($at)
    swc1	$f0,0($at)
    # Line 365
    swc1	$f4,0($at)
    # Line 370
    ori	$a4,$a4,0x2218
    # Line 365
    lwc1	$f3,8($a3)
    # Line 366
    lwc1	$f2,_lit_41f00000
    # Line 367
    lwc1	$f1,_lit_40000000
    # Line 365
    swc1	$f3,0($at)
    # Line 366
    swc1	$f2,0($at)
    # Line 367
    add.s	$f0,$f0,$f1
    # Line 366
    lwc1	$f2,4($a3)
    # Line 367
    lwc1	$f1,_lit_40e00000
    # Line 369
    addiu	$a3,$a3,20
    # Line 366
    swc1	$f2,0($at)
    # Line 367
    swc1	$f1,0($at)
    swc1	$f0,0($at)
    # Line 371
    lwc1	$f0,0($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,4($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,8($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,12($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,16($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,20($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,24($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,28($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,32($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,36($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,40($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,44($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,48($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,52($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,56($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,60($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,64($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,68($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,72($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,76($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,80($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,84($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,88($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,92($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,96($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,100($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,104($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,108($a3)
    swc1	$f1,0($a4)
    lwc1	$f0,112($a3)
    swc1	$f0,0($a4)
    lwc1	$f3,116($a3)
    swc1	$f3,0($a4)
    lwc1	$f2,120($a3)
    swc1	$f2,0($a4)
    lwc1	$f1,124($a3)
    swc1	$f1,0($a4)
    # Line 374
    jr	$ra
    nop
.end __glExpLoadSpotLUT

# Function: __glExpLoadAmbientSum
# Declared: Line 376 (Source lines: 377-411)
# Address: 0x0da5e2f4 - 0x0da5e460 (Size: 364 bytes, Frame: 32)
.ent __glExpLoadAmbientSum
__glExpLoadAmbientSum:
    # Line 382
    lbu	$at,3105($a0)
    # Line 377
    addiu	$sp,$sp,-32
    # Line 382
    lw	$a3,1704($a0)
    beqz	$at,.L0da5e338
    # Line 380
    lw	$a4,1488($a0)
    # Line 387
    mtc1	$zero,$f4
    # Line 389
    swc1	$f4,8($sp)
    # Line 388
    swc1	$f4,4($sp)
.L0da5e314:
    # Line 410
    lui	$v0,0x4
.L0da5e318:
    ori	$v0,$v0,0x21d4
    swc1	$f4,0($v0)
    lwc1	$f1,4($sp)
    swc1	$f1,0($v0)
    lwc1	$f0,8($sp)
    # Line 411
    addiu	$sp,$sp,32
    jr	$ra
    # Line 410
    swc1	$f0,0($v0)
.L0da5e338:
    # Line 392
    lwc1	$f5,1312($a0)
    # Line 391
    lwc1	$f4,1308($a0)
    # Line 392
    swc1	$f5,4($sp)
    # Line 393
    lwc1	$f6,1316($a0)
    swc1	$f6,8($sp)
    lw	$v1,31852($a0)
    bnez	$v1,.L0da5e314
    # Line 391
    swc1	$f4,0($sp)
    # Line 393
    lbu	$a1,1324($a0)
    bnez	$a1,.L0da5e318
    # Line 410
    lui	$v0,0x4
    # Line 395
    lbu	$at,1325($a0)
    bnez	$at,.L0da5e318
    # Line 410
    lui	$v0,0x4
    # Line 396
    lw	$a6,3328($a0)
    # Line 399
    blez	$a6,.L0da5e314
    move	$a2,$zero
    move	$a0,$zero
    move	$a7,$a6
    andi	$v0,$a6,0x1
    beqz	$v0,.L0da5e3cc
    li	$a5,1
    sllv	$v1,$a5,$a2
    and	$v1,$v1,$a3
    beqz	$v1,.L0da5e3c4
    # Line 401
    addu	$a1,$a0,$a4
    lwc1	$f0,0($a1)
    add.s	$f4,$f0,$f4
    swc1	$f4,0($sp)
    # Line 402
    lwc1	$f3,4($a1)
    add.s	$f5,$f3,$f5
    swc1	$f5,4($sp)
    # Line 403
    lwc1	$f2,8($a1)
    add.s	$f6,$f2,$f6
    swc1	$f6,8($sp)
.L0da5e3c4:
    # Line 399
    addiu	$a0,$a0,116
    addiu	$a2,$a2,1
.L0da5e3cc:
    sra	$at,$a7,0x1
    bnez	$at,.L0da5e41c
    # Line 401
    addu	$at,$a0,$a4
.L0da5e3d8:
    b	.L0da5e318
    # Line 410
    lui	$v0,0x4
.L0da5e3e0:
    # Line 399
    beqz	$v0,.L0da5e410
    addiu	$a0,$a0,116
    # Line 401
    addu	$v1,$a0,$a4
    lwc1	$f3,0($v1)
    add.s	$f4,$f3,$f4
    swc1	$f4,0($sp)
    # Line 402
    lwc1	$f2,4($v1)
    add.s	$f5,$f2,$f5
    swc1	$f5,4($sp)
    # Line 403
    lwc1	$f1,8($v1)
    add.s	$f6,$f1,$f6
    swc1	$f6,8($sp)
.L0da5e410:
    # Line 399
    beq	$a6,$a2,.L0da5e3d8
    addiu	$a0,$a0,116
    # Line 401
    addu	$at,$a0,$a4
.L0da5e41c:
    # Line 399
    sllv	$a1,$a5,$a2
    addiu	$a2,$a2,1
    sllv	$v0,$a5,$a2
    addiu	$a2,$a2,1
    and	$a1,$a1,$a3
    beqz	$a1,.L0da5e3e0
    and	$v0,$v0,$a3
    # Line 401
    lwc1	$f2,0($at)
    add.s	$f4,$f2,$f4
    swc1	$f4,0($sp)
    # Line 402
    lwc1	$f1,4($at)
    add.s	$f5,$f1,$f5
    swc1	$f5,4($sp)
    # Line 403
    lwc1	$f0,8($at)
    add.s	$f6,$f0,$f6
    b	.L0da5e3e0
    swc1	$f6,8($sp)
.end __glExpLoadAmbientSum

# Function: __glExpLoadLightPath
# Declared: Line 413 (Source lines: 414-454)
# Address: 0x0da5e460 - 0x0da5e5d4 (Size: 372 bytes, Frame: 48)
.ent __glExpLoadLightPath
__glExpLoadLightPath:
    # Line 414
    lwc1	$f4,_lit_3f800000
    lui	$a5,0x4
    lui	$a4,0x4
    lui	$a3,0x4
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sdc1	$f24,0($sp)
    mtc1	$zero,$f24
    lw	$at,1696($a0)
    ori	$a3,$a3,0x2350
    ori	$a4,$a4,0x277c
    andi	$at,$at,0x40
    beqz	$at,.L0da5e554
    ori	$a5,$a5,0x2438
    # Line 428
    # lw $t9, -32744($gp) # &sub_0da60000
    # Line 420
    swc1	$f24,0($a5)
    sd	$ra,16($sp)
    lwc1	$f0,_lit_3f800000
    li	$ra,1
    sw	$ra,0($a4)
    # Line 421
    swc1	$f0,0($a3)
    # Line 428
    move	$a0,$s0
    # Line 421
    lbu	$a5,1325($s0)
    # Line 428
    addiu	$t9,$t9,-7436
    bal __glExpFreeLightLUT
    # Line 421
    sw	$a5,0($a4)
    # Line 430
    lwc1	$f2,_lit_40c00000
    lui	$a0,0x4
    ori	$a0,$a0,0x2214
    swc1	$f2,0($a0)
    lbu	$v0,1324($s0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a0)
    ld	$ra,16($sp)
    # Line 432
    lw	$at,31852($s0)
    li	$v1,1
    # Line 433
    lwc1	$f2,_lit_40400000
    # Line 432
    bnez	$at,.L0da5e518
    lwc1	$f1,_lit_3f800000
    lbu	$a1,1324($s0)
    # Line 437
    lwc1	$f4,_lit_40a00000
    # Line 432
    beqz	$a1,.L0da5e574
    # Line 437
    lwc1	$f3,_lit_40400000
.L0da5e518:
    # Line 434
    lwc1	$f0,_lit_40800000
    # Line 435
    lwc1	$f3,_lit_40a00000
    # Line 433
    swc1	$f2,0($a0)
    swc1	$f1,0($a0)
    # Line 434
    swc1	$f0,0($a0)
    swc1	$f24,0($a0)
    # Line 435
    swc1	$f3,0($a0)
    swc1	$f24,0($a0)
.L0da5e538:
    # Line 453
    lui	$s0,0x4
    ori	$s0,$s0,0x220c
    swc1	$f24,0($s0)
    # Line 454
    ld	$s0,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5e554:
    # Line 425
    ld	$s0,8($sp)
    # Line 423
    swc1	$f24,0($a5)
    # Line 425
    ldc1	$f24,0($sp)
    addiu	$sp,$sp,48
    # Line 423
    sw	$zero,0($a4)
    # Line 424
    swc1	$f4,0($a3)
    # Line 425
    jr	$ra
    # Line 424
    sw	$zero,0($a4)
.L0da5e574:
    # Line 437
    swc1	$f3,0($a0)
    swc1	$f24,0($a0)
    lbu	$at,1325($s0)
    lwc1	$f5,_lit_40800000
    beqzl	$at,.L0da5e5a0
    # Line 441
    lw	$v0,31848($s0)
    # Line 440
    swc1	$f5,0($a0)
    swc1	$f24,0($a0)
    # Line 441
    swc1	$f4,0($a0)
    b	.L0da5e538
    swc1	$f24,0($a0)
.L0da5e5a0:
    beq	$v0,$v1,.L0da5e5bc
    lwc1	$f0,_lit_3f800000
    # Line 448
    swc1	$f5,0($a0)
    swc1	$f24,0($a0)
    # Line 449
    swc1	$f4,0($a0)
    b	.L0da5e538
    swc1	$f0,0($a0)
.L0da5e5bc:
    lwc1	$f1,_lit_3f800000
    # Line 444
    swc1	$f5,0($a0)
    swc1	$f1,0($a0)
    # Line 445
    swc1	$f4,0($a0)
    b	.L0da5e538
    swc1	$f24,0($a0)
.end __glExpLoadLightPath

# Function: __glExpLoadLightSource
# Declared: Line 456 (Source lines: 457-570)
# Address: 0x0da5e5d4 - 0x0da5e990 (Size: 956 bytes, Frame: 128)
.ent __glExpLoadLightSource
__glExpLoadLightSource:
    # Line 476
    lwc1	$f2,_lit_3e99999a
    # Line 464
    lui	$a6,0x4
    lui	$a5,0x4
    lui	$a4,0x4
    # Line 457
    addiu	$sp,$sp,-128
    sd	$a1,64($sp)
    sdc1	$f24,48($sp)
    # Line 464
    mtc1	$zero,$f24
    ori	$a4,$a4,0x2408
    ori	$a5,$a5,0x2404
    ori	$a6,$a6,0x2394
    sd	$s1,80($sp)
    # Line 457
    move	$s1,$a0
    # Line 459
    sll	$at,$a1,0x2
    subu	$at,$at,$a1
    sll	$at,$at,0x2
    sd	$s2,72($sp)
    lw	$s2,31824($a0)
    sd	$s0,88($sp)
    # Line 460
    lw	$s0,1488($a0)
    # Line 459
    addu	$s2,$s2,$at
    # Line 464
    lui	$a2,0x4
    ori	$a2,$a2,0x2200
    # Line 461
    lw	$v0,28104($a0)
    # Line 464
    lwc1	$f1,_lit_40a00000
    # Line 461
    sll	$v1,$a1,0x3
    # Line 464
    mtc1	$a1,$f0
    # Line 461
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x5
    # Line 464
    cvt.s.w	$f0,$f0
    swc1	$f1,0($a2)
    # Line 461
    addu	$v0,$v0,$v1
    sd	$v0,56($sp)
    # Line 460
    sll	$v0,$a1,0x3
    subu	$v0,$v0,$a1
    # Line 464
    swc1	$f0,0($a2)
    # Line 460
    sll	$v0,$v0,0x2
    # Line 464
    lbu	$at,3105($a0)
    # Line 460
    addu	$v0,$v0,$a1
    sll	$v0,$v0,0x2
    # Line 464
    beqz	$at,.L0da5e8e0
    # Line 460
    addu	$s0,$s0,$v0
    # Line 476
    lwc1	$f4,_lit_3de147ae
    # Line 474
    swc1	$f24,0($a6)
    swc1	$f24,0($a6)
    swc1	$f24,0($a6)
    # Line 476
    lwc1	$f5,_lit_3f170a3d
    lwc1	$f1,20($s0)
    lwc1	$f3,16($s0)
    mul.s	$f1,$f1,$f5
    lwc1	$f0,24($s0)
    mul.s	$f3,$f3,$f2
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    # Line 481
    swc1	$f3,0($a5)
    swc1	$f3,0($a5)
    swc1	$f3,0($a5)
    # Line 483
    lwc1	$f1,32($s0)
    lwc1	$f3,36($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,40($s0)
    mul.s	$f3,$f3,$f5
    mul.s	$f2,$f2,$f4
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    # Line 488
    swc1	$f1,0($a4)
    swc1	$f1,0($a4)
    swc1	$f1,0($a4)
.L0da5e6e8:
    # Line 497
    lwc1	$f4,60($s0)
    c.eq.s	$f4,$f24
    lui	$a0,0x4
    bc1t	.L0da5e890
    ori	$a0,$a0,0x21fc
    # Line 514
    lwc1	$f1,76($s0)
    lwc1	$f4,64($s0)
    div.s	$f4,$f4,$f1
    swc1	$f4,16($sp)
    # Line 515
    lwc1	$f2,76($s0)
    lwc1	$f1,68($s0)
    div.s	$f1,$f1,$f2
    swc1	$f1,20($sp)
    # Line 516
    lwc1	$f3,76($s0)
    lwc1	$f2,72($s0)
    div.s	$f2,$f2,$f3
    swc1	$f2,24($sp)
    # Line 517
    lwc1	$f1,3284($s1)
    swc1	$f1,28($sp)
    # Line 520
    swc1	$f4,0($a0)
    lwc1	$f3,20($sp)
    swc1	$f3,0($a0)
    lwc1	$f2,24($sp)
    swc1	$f2,0($a0)
    lwc1	$f1,28($sp)
    swc1	$f1,0($a0)
.L0da5e750:
    # Line 526
    lwc1	$f2,60($s0)
    c.eq.s	$f2,$f24
    nop
    bc1t	.L0da5e87c
    ldc1	$f4,_lit8_4066800000000000
    lwc1	$f0,100($s0)
    cvt.d.s	$f3,$f0
    c.eq.d	$f3,$f4
    nop
    bc1t	.L0da5e880
    # Line 527
    lwc1	$f2,_lit_41f80000
    lbu	$a3,31868($s1)
    beqz	$a3,.L0da5e92c
    sd	$ra,96($sp)
.L0da5e788:
    # Line 547
    # lw $t9, -22988($gp) # &cosf
    lwc1	$f12,_lit_3c8efa35
    # Line 546
    lwc1	$f24,96($s0)
    # Line 547
    jal	cosf
    mul.s	$f12,$f0,$f12
    # Line 548
    lw	$a1,8($s2)
    beqz	$a1,.L0da5e7d4
    # Line 551
    nop	# was lw $t9, -32260($gp) # &__glExpFreeLightLUT
    # Line 548
    lwc1	$f1,0($s2)
    c.eq.s	$f1,$f24
    nop
    bc1f	.L0da5e7d4
    # Line 551
    nop	# was lw $t9, -32260($gp) # &__glExpFreeLightLUT
    # Line 548
    lwc1	$f2,4($s2)
    c.eq.s	$f2,$f0
    nop
    bc1t	.L0da5e804
    sdc1	$f0,40($sp)
    # Line 551
    # lw $t9, -32260($gp) # &__glExpFreeLightLUT
.L0da5e7d4:
    sdc1	$f0,40($sp)
    bal __glExpFreeLightLUT
    move	$a0,$s1
    # Line 552
    # lw $t9, -32264($gp) # &__glExpCreateSpotLUT
    move	$a0,$s1
    mov.s	$f13,$f24
    bal __glExpCreateSpotLUT
    ldc1	$f14,40($sp)
    ldc1	$f3,40($sp)
    # Line 553
    swc1	$f24,0($s2)
    # Line 552
    sw	$v0,8($s2)
    # Line 554
    swc1	$f3,4($s2)
.L0da5e804:
    # Line 556
    # lw $t9, -32744($gp) # &sub_0da60000
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-7796
    bal __glExpFreeLightLUT
    ld	$a2,64($sp)
    ld	$at,56($sp)
    # Line 562
    lwc1	$f2,132($at)
    lui	$ra,0x4
    ori	$ra,$ra,0x2210
    swc1	$f2,0($ra)
    lwc1	$f1,136($at)
    swc1	$f1,0($ra)
    lwc1	$f4,140($at)
    swc1	$f4,0($ra)
    ld	$ra,96($sp)
.L0da5e844:
    # Line 568
    lwc1	$f24,108($s0)
    lui	$at,0x4
    ori	$at,$at,0x2424
    swc1	$f24,0($at)
    lwc1	$f4,112($s0)
    # Line 570
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    # Line 568
    swc1	$f4,0($at)
    # Line 570
    ldc1	$f24,48($sp)
    # Line 568
    lwc1	$f3,104($s0)
    # Line 570
    ld	$s0,88($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 568
    swc1	$f3,0($at)
.L0da5e87c:
    # Line 527
    lwc1	$f2,_lit_41f80000
.L0da5e880:
    lwc1	$f1,_lit_bf800000
    swc1	$f2,0($a2)
    b	.L0da5e844
    swc1	$f1,0($a2)
.L0da5e890:
    # Line 506
    lw	$t9,11912($s1)
    addiu	$a1,$s0,64
    sd	$ra,96($sp)
    jal	sub_0da60000
    addiu	$a0,$sp,0
    # Line 507
    swc1	$f24,12($sp)
    # Line 510
    lwc1	$f2,0($sp)
    lui	$v0,0x4
    ori	$v0,$v0,0x21fc
    swc1	$f2,0($v0)
    lwc1	$f1,4($sp)
    swc1	$f1,0($v0)
    lwc1	$f4,8($sp)
    ld	$ra,96($sp)
    swc1	$f4,0($v0)
    lui	$a2,0x4
    lwc1	$f3,12($sp)
    ori	$a2,$a2,0x2200
    b	.L0da5e750
    swc1	$f3,0($v0)
.L0da5e8e0:
    # Line 491
    lwc1	$f3,0($s0)
    swc1	$f3,0($a6)
    lwc1	$f2,4($s0)
    swc1	$f2,0($a6)
    lwc1	$f1,8($s0)
    swc1	$f1,0($a6)
    # Line 494
    lwc1	$f4,16($s0)
    swc1	$f4,0($a5)
    lwc1	$f3,20($s0)
    swc1	$f3,0($a5)
    lwc1	$f2,24($s0)
    swc1	$f2,0($a5)
    # Line 497
    lwc1	$f1,32($s0)
    swc1	$f1,0($a4)
    lwc1	$f4,36($s0)
    swc1	$f4,0($a4)
    lwc1	$f3,40($s0)
    b	.L0da5e6e8
    swc1	$f3,0($a4)
.L0da5e92c:
    # Line 536
    addiu	$a2,$sp,32
    li	$a1,15015
    # lw $t9, -32412($gp) # &__glExpIoctl
    # Line 535
    li	$a3,4
    sw	$a3,32($sp)
    # Line 536
    bal __glExpIoctl
    lw	$a0,31504($s1)
    li	$a4,-1
    beq	$v0,$a4,.L0da5e960
    # Line 540
    li	$at,1
    sb	$at,31868($s1)
    b	.L0da5e788
    lwc1	$f0,100($s0)
.L0da5e960:
    # Line 537
    lw	$t9,20($s1)
    la	$a1,sub_0db30000
    move	$a0,$s1
    jal	__glExpIoctl
    addiu	$a1,$a1,-21344
    # Line 538
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$ra,96($sp)
    ld	$s2,72($sp)
    ldc1	$f24,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glExpLoadLightSource

# Function: __glExpValidateMaterial
# Declared: Line 574 (Source lines: 575-667)
# Address: 0x0da5e990 - 0x0da5ed44 (Size: 948 bytes, Frame: 208)
.globl __glExpValidateMaterial
.ent __glExpValidateMaterial
__glExpValidateMaterial:
    # Line 575
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s0,16($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lbu	$at,3105($a0)
    lui	$v0,0x1a
    addiu	$v0,$v0,-28968
    beqz	$at,.L0da5ebc4
    nop
    andi	$v1,$a1,0x20
    beqz	$v1,.L0da5ea30
    # Line 593
    lwc1	$f2,_lit_41980000
    lwc1	$f0,_lit_41900000
    lui	$at,0x4
    ori	$at,$at,0x2200
    swc1	$f0,0($at)
    lwc1	$f3,1396($s0)
    lui	$a3,0x4
    ori	$a3,$a3,0xe77c
    swc1	$f3,0($a3)
    swc1	$f2,0($at)
    lwc1	$f1,1396($s0)
    lwc1	$f0,1404($s0)
    sub.s	$f0,$f0,$f1
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    lwc1	$f3,_lit_41a00000
    swc1	$f0,0($a3)
    swc1	$f3,0($at)
    lwc1	$f2,1396($s0)
    lwc1	$f0,1400($s0)
    sub.s	$f0,$f0,$f2
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a3)
.L0da5ea30:
    # Line 610
    andi	$v0,$a1,0x10
.L0da5ea34:
    beqz	$v0,.L0da5ed3c
    nop
    # Line 618
    lw	$a1,31832($s0)
    sdc1	$f28,24($sp)
    beqz	$a1,.L0da5eb98
    # Line 616
    lwc1	$f28,1392($s0)
    # Line 618
    lwc1	$f1,31828($s0)
    c.eq.s	$f1,$f28
    nop
    bc1f	.L0da5eb98
    sd	$ra,32($sp)
.L0da5ea60:
    # Line 623
    addiu	$a1,$s0,31828
    # Line 621
    # lw $t9, -32744($gp) # &sub_0da60000
    # Line 623
    move	$a0,$s0
    move	$a2,$zero
    # Line 621
    addiu	$t9,$t9,-8076
    # Line 623
    bal __glExpFreeLightLUT
    ldc1	$f28,24($sp)
    ld	$ra,32($sp)
    lbu	$at,3105($s0)
.L0da5ea84:
    beqz	$at,.L0da5ec80
    andi	$v0,$s1,0x20
    # Line 633
    lui	$a3,0x4
    lui	$v1,0x4
    # Line 623
    beqz	$v0,.L0da5eafc
    # Line 633
    lwc1	$f2,_lit_41a80000
    ori	$v1,$v1,0xe77c
    ori	$a3,$a3,0x2200
    swc1	$f2,0($a3)
    lwc1	$f1,1476($s0)
    lwc1	$f0,_lit_41b00000
    swc1	$f1,0($v1)
    swc1	$f0,0($a3)
    lwc1	$f3,1476($s0)
    lwc1	$f2,1484($s0)
    sub.s	$f2,$f2,$f3
    ldc1	$f3,_lit8_3fe0000000000000
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f3
    cvt.s.d	$f2,$f2
    lwc1	$f1,_lit_41b80000
    swc1	$f2,0($v1)
    swc1	$f1,0($a3)
    lwc1	$f0,1476($s0)
    lwc1	$f2,1480($s0)
    sub.s	$f2,$f2,$f0
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f3
    cvt.s.d	$f2,$f2
    swc1	$f2,0($v1)
.L0da5eafc:
    # Line 650
    andi	$at,$s1,0x10
.L0da5eb00:
    beqz	$at,.L0da5eb78
    # Line 666
    mtc1	$zero,$f4
    # Line 658
    lw	$a1,31840($s0)
    sdc1	$f28,24($sp)
    beqz	$a1,.L0da5eb2c
    # Line 656
    lwc1	$f28,1472($s0)
    # Line 658
    lwc1	$f3,31836($s0)
    c.eq.s	$f3,$f28
    nop
    bc1t	.L0da5eb54
    sd	$ra,32($sp)
.L0da5eb2c:
    # Line 659
    # lw $t9, -32260($gp) # &__glExpFreeLightLUT
    sd	$ra,32($sp)
    bal __glExpFreeLightLUT
    move	$a0,$s0
    # Line 660
    # lw $t9, -32268($gp) # &__glExpCreateSpecLUT
    move	$a0,$s0
    bal __glExpCreateSpecLUT
    mov.s	$f13,$f28
    # Line 661
    swc1	$f28,31836($s0)
    # Line 660
    sw	$v0,31840($s0)
.L0da5eb54:
    # Line 663
    move	$a0,$s0
    # lw $t9, -32744($gp) # &sub_0da60000
    li	$a2,1
    addiu	$a1,$s0,31836
    addiu	$t9,$t9,-8076
    bal __glExpFreeLightLUT
    ldc1	$f28,24($sp)
    ld	$ra,32($sp)
    # Line 666
    mtc1	$zero,$f4
.L0da5eb78:
    # ld	gp,0(sp)
    # Line 667
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    addiu	$sp,$sp,80
    # Line 666
    lui	$at,0x4
    ori	$at,$at,0x220c
    # Line 667
    jr	$ra
    # Line 666
    swc1	$f4,0($at)
.L0da5eb98:
    # Line 619
    # lw $t9, -32260($gp) # &__glExpFreeLightLUT
    sd	$ra,32($sp)
    bal __glExpFreeLightLUT
    move	$a0,$s0
    # Line 620
    # lw $t9, -32268($gp) # &__glExpCreateSpecLUT
    move	$a0,$s0
    bal __glExpCreateSpecLUT
    mov.s	$f13,$f28
    # Line 621
    swc1	$f28,31828($s0)
    b	.L0da5ea60
    # Line 620
    sw	$v0,31832($s0)
.L0da5ebc4:
    # Line 593
    andi	$v0,$a1,0x8
    beqz	$v0,.L0da5ebf4
    # Line 598
    andi	$a3,$a1,0x1
    lwc1	$f2,1376($s0)
    lui	$v1,0x4
    ori	$v1,$v1,0x21d8
    swc1	$f2,0($v1)
    lwc1	$f1,1380($s0)
    swc1	$f1,0($v1)
    lwc1	$f0,1384($s0)
    swc1	$f0,0($v1)
    andi	$a3,$a1,0x1
.L0da5ebf4:
    beqz	$a3,.L0da5ec20
    # Line 602
    andi	$v0,$a1,0x2
    lwc1	$f1,1328($s0)
    lui	$at,0x4
    ori	$at,$at,0x21e0
    swc1	$f1,0($at)
    lwc1	$f0,1332($s0)
    swc1	$f0,0($at)
    lwc1	$f3,1336($s0)
    swc1	$f3,0($at)
    andi	$v0,$a1,0x2
.L0da5ec20:
    beqz	$v0,.L0da5ec54
    # Line 606
    andi	$a3,$a1,0x4
    lwc1	$f1,1344($s0)
    lui	$v1,0x4
    ori	$v1,$v1,0x21e8
    swc1	$f1,0($v1)
    lwc1	$f0,1348($s0)
    swc1	$f0,0($v1)
    lwc1	$f3,1352($s0)
    swc1	$f3,0($v1)
    lwc1	$f2,1356($s0)
    swc1	$f2,0($v1)
    andi	$a3,$a1,0x4
.L0da5ec54:
    beqz	$a3,.L0da5ea34
    # Line 610
    andi	$v0,$a1,0x10
    lwc1	$f0,1360($s0)
    lui	$at,0x4
    ori	$at,$at,0x21f0
    swc1	$f0,0($at)
    lwc1	$f3,1364($s0)
    swc1	$f3,0($at)
    lwc1	$f2,1368($s0)
    b	.L0da5ea30
    swc1	$f2,0($at)
.L0da5ec80:
    # Line 633
    andi	$v0,$s1,0x8
    beqz	$v0,.L0da5ecb0
    # Line 638
    andi	$a3,$s1,0x1
    lwc1	$f3,1456($s0)
    lui	$v1,0x4
    ori	$v1,$v1,0x21dc
    swc1	$f3,0($v1)
    lwc1	$f2,1460($s0)
    swc1	$f2,0($v1)
    lwc1	$f1,1464($s0)
    swc1	$f1,0($v1)
    andi	$a3,$s1,0x1
.L0da5ecb0:
    beqz	$a3,.L0da5ecdc
    # Line 642
    andi	$v0,$s1,0x2
    lwc1	$f2,1408($s0)
    lui	$at,0x4
    ori	$at,$at,0x21e4
    swc1	$f2,0($at)
    lwc1	$f1,1412($s0)
    swc1	$f1,0($at)
    lwc1	$f0,1416($s0)
    swc1	$f0,0($at)
    andi	$v0,$s1,0x2
.L0da5ecdc:
    beqz	$v0,.L0da5ed10
    # Line 646
    andi	$a3,$s1,0x4
    lwc1	$f2,1424($s0)
    lui	$v1,0x4
    ori	$v1,$v1,0x21ec
    swc1	$f2,0($v1)
    lwc1	$f1,1428($s0)
    swc1	$f1,0($v1)
    lwc1	$f0,1432($s0)
    swc1	$f0,0($v1)
    lwc1	$f3,1436($s0)
    swc1	$f3,0($v1)
    andi	$a3,$s1,0x4
.L0da5ed10:
    beqz	$a3,.L0da5eb00
    # Line 650
    andi	$at,$s1,0x10
    lwc1	$f1,1440($s0)
    lui	$at,0x4
    ori	$at,$at,0x21f4
    swc1	$f1,0($at)
    lwc1	$f0,1444($s0)
    swc1	$f0,0($at)
    lwc1	$f3,1448($s0)
    b	.L0da5eafc
    swc1	$f3,0($at)
.L0da5ed3c:
    b	.L0da5ea84
    # Line 623
    lbu	$at,3105($s0)
.end __glExpValidateMaterial

# Function: __glExpValidateColorMaterial
# Declared: Line 669 (Source lines: 670-719)
# Address: 0x0da5ed44 - 0x0da5ee7c (Size: 312 bytes, Frame: 0)
.globl __glExpValidateColorMaterial
.ent __glExpValidateColorMaterial
__glExpValidateColorMaterial:
    # Line 670
    lbu	$at,3104($a0)
    # Line 686
    li	$v1,1028
    # Line 670
    beqz	$at,.L0da5edbc
    # Line 684
    move	$a4,$zero
    # Line 670
    lw	$v0,1696($a0)
    andi	$v0,$v0,0x80
    beqz	$v0,.L0da5edf4
    # Line 686
    li	$at,1032
    # Line 682
    lw	$a3,1296($a0)
    # Line 686
    beq	$a3,$v1,.L0da5edc4
    # Line 683
    lw	$a2,1300($a0)
    # Line 686
    li	$a1,1029
    beq	$a3,$a1,.L0da5edcc
    nop
    beq	$a3,$at,.L0da5edd4
.L0da5ed80:
    # Line 698
    li	$v0,5632
    beq	$a2,$v0,.L0da5ee0c
    li	$v1,4610
    # Line 703
    lui	$at,0x4
    # Line 698
    beq	$a2,$v1,.L0da5ee28
    # Line 703
    li	$v0,4
    # Line 698
    li	$a1,4608
    # Line 706
    lui	$v1,0x4
    # Line 698
    beq	$a2,$a1,.L0da5ee40
    li	$at,4609
    beq	$a2,$at,.L0da5ee5c
    li	$v0,5634
    # Line 712
    lui	$a1,0x4
    # Line 698
    beq	$a2,$v0,.L0da5eddc
    # Line 712
    li	$at,5
.L0da5edbc:
    # Line 719
    jr	$ra
    nop
.L0da5edc4:
    # Line 689
    b	.L0da5ed80
    # Line 688
    move	$a4,$zero
.L0da5edcc:
    # Line 692
    b	.L0da5ed80
    # Line 691
    li	$a4,1
.L0da5edd4:
    b	.L0da5ed80
    # Line 694
    li	$a4,2
.L0da5eddc:
    # Line 712
    ori	$a1,$a1,0x2204
    li	$v1,1
    sw	$at,0($a1)
    sw	$a4,0($a1)
    # Line 719
    jr	$ra
    # Line 712
    sw	$v1,0($a1)
.L0da5edf4:
    # Line 716
    lui	$at,0x4
    ori	$at,$at,0x2204
    sw	$zero,0($at)
    sw	$zero,0($at)
    # Line 719
    jr	$ra
    # Line 716
    sw	$zero,0($at)
.L0da5ee0c:
    # Line 700
    lui	$v1,0x4
    ori	$v1,$v1,0x2204
    li	$v0,1
    sw	$v0,0($v1)
    sw	$a4,0($v1)
    # Line 719
    jr	$ra
    # Line 700
    sw	$v0,0($v1)
.L0da5ee28:
    # Line 703
    ori	$at,$at,0x2204
    li	$a1,1
    sw	$v0,0($at)
    sw	$a4,0($at)
    # Line 719
    jr	$ra
    # Line 703
    sw	$a1,0($at)
.L0da5ee40:
    # Line 706
    ori	$v1,$v1,0x2204
    li	$v0,1
    li	$a1,2
    sw	$a1,0($v1)
    sw	$a4,0($v1)
    # Line 719
    jr	$ra
    # Line 706
    sw	$v0,0($v1)
.L0da5ee5c:
    # Line 709
    li	$v0,3
    li	$a1,1
    lui	$at,0x4
    ori	$at,$at,0x2204
    sw	$v0,0($at)
    sw	$a4,0($at)
    # Line 719
    jr	$ra
    # Line 709
    sw	$a1,0($at)
.end __glExpValidateColorMaterial

# Function: __glExpValidateLightSource
# Declared: Line 721 (Source lines: 733-734)
# Address: 0x0da5ee7c - 0x0da5ee94 (Size: 24 bytes, Frame: 0)
.globl __glExpValidateLightSource
.ent __glExpValidateLightSource
__glExpValidateLightSource:
    # Line 733
    lw	$at,31860($a0)
    li	$v0,1
    sllv	$v0,$v0,$a1
    or	$at,$at,$v0
    # Line 734
    jr	$ra
    # Line 733
    sw	$at,31860($a0)
.end __glExpValidateLightSource

# Function: __glExpValidateLighting
# Declared: Line 736 (Source lines: 737-833)
# Address: 0x0da5ee94 - 0x0da5f1c0 (Size: 812 bytes, Frame: 208)
.globl __glExpValidateLighting
.ent __glExpValidateLighting
__glExpValidateLighting:
    # Line 737
    addiu	$sp,$sp,-208
    sd	$s3,24($sp)
    move	$s3,$a0
    sd	$s6,16($sp)
    # Line 742
    lw	$s6,31860($a0)
    sd	$gp,8($sp)
    # Line 737
    lui	$v0,0x1a
    # Line 741
    lw	$at,31844($a0)
    sd	$s1,0($sp)
    # Line 740
    lw	$s1,1704($a0)
    # Line 737
    addiu	$v0,$v0,-30252
    addu	$gp,$t9,$v0
    # Line 742
    beq	$s1,$at,.L0da5ef58
    sd	$at,88($sp)
    sd	$zero,72($sp)
    sd	$s4,152($sp)
    # Line 756
    move	$s4,$zero
    sd	$s5,160($sp)
    # Line 759
    move	$s5,$zero
    sd	$zero,80($sp)
    sd	$s2,144($sp)
    sd	$s0,136($sp)
    # Line 758
    li	$s0,-1
    sd	$s0,96($sp)
    # Line 755
    lw	$v1,3328($s3)
    # Line 763
    move	$s0,$zero
    # Line 754
    lw	$a2,1488($s3)
    sd	$v1,40($sp)
    # Line 763
    blez	$v1,.L0da5f1b0
    sd	$a2,64($sp)
    sd	$ra,112($sp)
    sd	$s3,56($sp)
    move	$s3,$zero
    sdc1	$f22,104($sp)
    mtc1	$zero,$f22
    sdc1	$f30,184($sp)
    lwc1	$f30,_lit_bf800000
    sdc1	$f28,176($sp)
    lwc1	$f28,_lit_40a00000
    sdc1	$f24,168($sp)
    lwc1	$f24,_lit_40c00000
    sd	$s8,120($sp)
    li	$s8,1
    lui	$s2,0x4
    sd	$s7,128($sp)
    la	$s7,sub_0da60000
    ori	$s2,$s2,0x2200
    b	.L0da5efe0
    addiu	$s7,$s7,-6700
.L0da5ef58:
    ld	$at,88($sp)
    # Line 799
    and	$at,$at,$s6
    beqz	$at,.L0da5f0f8
    # Line 832
    nop	# was lw $t9, -32744($gp) # &sub_0da60000
    sd	$s2,144($sp)
    sd	$s7,128($sp)
    sd	$s8,120($sp)
    sdc1	$f22,104($sp)
    sd	$s5,160($sp)
    # Line 807
    move	$s5,$zero
    sd	$s4,152($sp)
    # Line 808
    move	$s4,$zero
    sd	$s0,136($sp)
    # Line 806
    lw	$v0,3328($s3)
    # Line 811
    move	$s0,$zero
    # Line 805
    lw	$v1,1488($s3)
    sd	$v0,32($sp)
    # Line 811
    blez	$v0,.L0da5f190
    sd	$v1,48($sp)
    sd	$ra,112($sp)
    move	$s2,$zero
    mtc1	$zero,$f22
    la	$s7,sub_0da60000
    li	$s8,1
    b	.L0da5f148
    addiu	$s7,$s7,-6700
.L0da5efc0:
    ld	$a0,56($sp)
.L0da5efc4:
    # Line 785
    move	$a1,$s0
    bal __glExpFreeLightLUT
    move	$t9,$s7
.L0da5efd0:
    # Line 763
    ld	$at,40($sp)
.L0da5efd4:
    addiu	$s0,$s0,1
    beq	$at,$s0,.L0da5f074
    addiu	$s3,$s3,116
.L0da5efe0:
    # Line 769
    move	$at,$s0
    # Line 763
    sllv	$a1,$s8,$s0
    and	$v0,$a1,$s1
    beqz	$v0,.L0da5efd0
    ld	$v1,96($sp)
    # Line 777
    ld	$a2,64($sp)
    # Line 763
    mtc1	$s0,$f4
    # Line 777
    or	$s5,$a1,$s5
    # Line 763
    bltz	$v1,.L0da5f06c
    cvt.s.w	$f4,$f4
    # Line 771
    swc1	$f24,0($s2)
    swc1	$f4,0($s2)
.L0da5f010:
    # Line 773
    swc1	$f28,0($s2)
    swc1	$f4,0($s2)
    # Line 774
    swc1	$f24,0($s2)
    swc1	$f30,0($s2)
    # Line 777
    addu	$a2,$s3,$a2
    lwc1	$f0,60($a2)
    # Line 776
    addiu	$s4,$s4,1
    # Line 780
    ld	$at,72($sp)
    # Line 777
    c.eq.s	$f0,$f22
    ld	$v1,88($sp)
    bc1t	.L0da5f054
    # Line 784
    and	$v1,$a1,$v1
    # Line 780
    addiu	$at,$at,1
    ld	$v0,80($sp)
    sd	$at,72($sp)
    # Line 781
    or	$v0,$a1,$v0
    sd	$v0,80($sp)
.L0da5f054:
    # Line 784
    beqz	$v1,.L0da5efc0
    and	$a2,$a1,$s6
    beqz	$a2,.L0da5efd4
    # Line 763
    ld	$at,40($sp)
    b	.L0da5efc4
    ld	$a0,56($sp)
.L0da5f06c:
    # Line 769
    b	.L0da5f010
    sd	$s0,96($sp)
.L0da5f074:
    ldc1	$f30,184($sp)
    ldc1	$f28,176($sp)
    ldc1	$f24,168($sp)
    ldc1	$f22,104($sp)
    ld	$s8,120($sp)
    ld	$s7,128($sp)
    ld	$s0,136($sp)
    ld	$ra,112($sp)
    ld	$s3,56($sp)
.L0da5f098:
    ld	$a2,96($sp)
    # Line 790
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    sd	$ra,112($sp)
    # Line 791
    mtc1	$s4,$f1
    # Line 796
    ld	$v0,80($sp)
    # Line 790
    lwc1	$f0,_lit_40800000
    # Line 791
    cvt.s.w	$f1,$f1
    # Line 797
    ld	$v1,72($sp)
    # Line 791
    lwc1	$f2,_lit_41200000
    # Line 790
    swc1	$f0,0($s2)
    swc1	$f3,0($s2)
    # Line 791
    swc1	$f2,0($s2)
    swc1	$f1,0($s2)
    ld	$s2,144($sp)
    # Line 799
    sw	$zero,31860($s3)
    # Line 797
    sw	$v1,31856($s3)
    # Line 796
    sw	$v0,31852($s3)
    # Line 793
    sw	$s5,31844($s3)
    ld	$s5,160($sp)
    # Line 794
    sw	$s4,31848($s3)
    ld	$s4,152($sp)
.L0da5f0f4:
    # Line 832
    # lw $t9, -32744($gp) # &sub_0da60000
.L0da5f0f8:
    sd	$ra,112($sp)
    addiu	$t9,$t9,-7072
    bal __glExpFreeLightLUT
    move	$a0,$s3
    ld	$gp,8($sp)
    # Line 833
    ld	$s1,0($sp)
    ld	$ra,112($sp)
    ld	$s3,24($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da5f124:
    # Line 817
    beqz	$at,.L0da5f138
    # Line 821
    move	$a0,$s3
    move	$a1,$s0
    bal __glExpFreeLightLUT
    move	$t9,$s7
.L0da5f138:
    # Line 811
    ld	$v0,32($sp)
    addiu	$s0,$s0,1
    beq	$v0,$s0,.L0da5f17c
    addiu	$s2,$s2,116
.L0da5f148:
    sllv	$a0,$s8,$s0
    and	$v1,$a0,$s1
    beqz	$v1,.L0da5f138
    ld	$a2,48($sp)
    addu	$a2,$s2,$a2
    lwc1	$f0,60($a2)
    c.eq.s	$f0,$f22
    # Line 817
    and	$at,$a0,$s6
    # Line 811
    bc1t	.L0da5f124
    nop
    # Line 817
    or	$s4,$a0,$s4
    b	.L0da5f124
    # Line 816
    addiu	$s5,$s5,1
.L0da5f17c:
    ldc1	$f22,104($sp)
    ld	$s8,120($sp)
    ld	$s7,128($sp)
    ld	$ra,112($sp)
    ld	$s2,144($sp)
.L0da5f190:
    sd	$ra,112($sp)
    # Line 829
    sw	$zero,31860($s3)
    # Line 827
    sw	$s5,31856($s3)
    ld	$s5,160($sp)
    # Line 826
    sw	$s4,31852($s3)
    ld	$s4,152($sp)
    b	.L0da5f0f4
    ld	$s0,136($sp)
.L0da5f1b0:
    # Line 763
    lui	$s2,0x4
    ld	$s0,136($sp)
    b	.L0da5f098
    ori	$s2,$s2,0x2200
.end __glExpValidateLighting

# Function: __glExpUpdateLightingState
# Declared: Line 835 (Source lines: 836-874)
# Address: 0x0da5f1c0 - 0x0da5f2f0 (Size: 304 bytes, Frame: 48)
.globl __glExpUpdateLightingState
.ent __glExpUpdateLightingState
__glExpUpdateLightingState:
    # Line 839
    lw	$a4,31824($a0)
    # Line 836
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    # Line 840
    lw	$a5,3328($a0)
    # Line 836
    lui	$at,0x1a
    addiu	$at,$at,-31064
    # addu	gp,t9,at
    andi	$a3,$a5,0x3
    # Line 840
    sll	$a2,$a5,0x2
    blez	$a5,.L0da5f2e4
    move	$a6,$a5
    lwc1	$f4,_lit_bf800000
    move	$a0,$a4
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    beqz	$a3,.L0da5f220
    addu	$a2,$a2,$a4
.L0da5f20c:
    # Line 850
    addiu	$a0,$a0,12
    # Line 852
    swc1	$f4,-8($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0da5f20c
    # Line 851
    swc1	$f4,-12($a0)
.L0da5f220:
    sra	$at,$a6,0x2
    beqz	$at,.L0da5f258
    move	$a3,$a0
    move	$a0,$a3
.L0da5f230:
    # Line 852
    swc1	$f4,40($a0)
    # Line 851
    swc1	$f4,36($a0)
    # Line 852
    swc1	$f4,28($a0)
    # Line 851
    swc1	$f4,24($a0)
    # Line 852
    swc1	$f4,16($a0)
    # Line 851
    swc1	$f4,12($a0)
    # Line 852
    swc1	$f4,4($a0)
    # Line 850
    addiu	$a0,$a0,48
    bne	$a0,$a2,.L0da5f230
    # Line 851
    swc1	$f4,-48($a0)
.L0da5f258:
    sd	$ra,16($sp)
.L0da5f25c:
    # Line 870
    li	$a2,63
    li	$a1,63
    move	$a0,$s0
    # lw $t9, -32256($gp) # &__glExpValidateMaterial
    # Line 860
    mtc1	$zero,$f0
    lwc1	$f1,_lit_41200000
    # Line 856
    swc1	$f4,31836($s0)
    # Line 855
    swc1	$f4,31828($s0)
    # Line 859
    lwc1	$f2,_lit_40800000
    lui	$v0,0x4
    ori	$v0,$v0,0x2200
    swc1	$f2,0($v0)
    swc1	$f4,0($v0)
    # Line 860
    swc1	$f1,0($v0)
    swc1	$f0,0($v0)
    # Line 868
    sw	$zero,31860($s0)
    # Line 866
    sw	$zero,31856($s0)
    # Line 865
    sw	$zero,31852($s0)
    # Line 863
    sw	$zero,31848($s0)
    # Line 870
    bal __glExpValidateMaterial
    # Line 862
    sw	$zero,31844($s0)
    # Line 871
    # lw $t9, -32252($gp) # &__glExpValidateColorMaterial
    bal __glExpValidateColorMaterial
    move	$a0,$s0
    # Line 873
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$v1,11764($s0)
    # ld	gp,0(sp)
    # Line 874
    ld	$ra,16($sp)
    # Line 873
    ori	$v1,$v1,0x20
    sw	$v1,11764($s0)
    # Line 874
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5f2e4:
    # Line 850
    lwc1	$f4,_lit_bf800000
    b	.L0da5f25c
    sd	$ra,16($sp)
.end __glExpUpdateLightingState

# Function: __glExpEnableLighting
# Declared: Line 876 (Source lines: 877-886)
# Address: 0x0da5f2f0 - 0x0da5f328 (Size: 56 bytes, Frame: 32)
.globl __glExpEnableLighting
.ent __glExpEnableLighting
__glExpEnableLighting:
    # Line 877
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    sd	$ra,0($sp)
    lui	$ra,0x1a
    addiu	$ra,$ra,-31368
    # addu	gp,t9,ra
    # Line 885
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-7072
    bal __glExpFreeLightLUT
    nop
    # Line 886
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpEnableLighting

# Function: __glExpFreeLighting
# Declared: Line 890 (Source lines: 891-900)
# Address: 0x0da5f328 - 0x0da5f37c (Size: 84 bytes, Frame: 48)
.globl __glExpFreeLighting
.ent __glExpFreeLighting
__glExpFreeLighting:
    # Line 891
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-31424
    # addu	gp,t9,at
    # Line 894
    # lw $t9, -32272($gp) # &__glExpFreeLUTCache
    sd	$s0,8($sp)
    sd	$ra,0($sp)
    bal __glExpFreeLUTCache
    # Line 891
    move	$s0,$a0
    # Line 894
    lw	$a1,31824($s0)
    beqz	$a1,.L0da5f36c
    ld	$ra,0($sp)
    # Line 898
    lw	$t9,12($s0)
    jal	__glExpFreeLUTCache
    move	$a0,$s0
    ld	$ra,0($sp)
.L0da5f36c:
    # ld	gp,16(sp)
    # Line 900
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpFreeLighting

# Function: __glExpInitLighting
# Declared: Line 902 (Source lines: 903-938)
# Address: 0x0da5f37c - 0x0da5f4cc (Size: 336 bytes, Frame: 48)
.globl __glExpInitLighting
.ent __glExpInitLighting
__glExpInitLighting:
    # Line 903
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    sd	$ra,8($sp)
    # sd	gp,24(sp)
    lui	$at,0x1a
    addiu	$at,$at,-31508
    # addu	gp,t9,at
    # Line 908
    # lw $t9, -32276($gp) # &__glExpInitLUTCache
    sd	$s0,0($sp)
    # Line 903
    move	$s0,$a0
    # Line 908
    bal __glExpInitLUTCache
    # Line 906
    lw	$s8,3328($s0)
    # Line 911
    lw	$t9,4($s0)
    move	$a0,$s0
    move	$a1,$s8
    jal	__glExpInitLUTCache
    li	$a2,12
    # Line 915
    lwc1	$f4,_lit_40000000
    mtc1	$zero,$f5
    # Line 929
    lui	$a2,0x4
    # Line 928
    lui	$a3,0x4
    # Line 927
    lui	$a4,0x4
    # Line 911
    sw	$v0,31824($s0)
    # Line 915
    lwc1	$f6,_lit_3f800000
    lwc1	$f0,_lit_40e00000
    lui	$a0,0x4
    ori	$a0,$a0,0x2214
    swc1	$f0,0($a0)
    swc1	$f6,0($a0)
    # Line 925
    lui	$a5,0x4
    # Line 915
    lbu	$v0,3105($s0)
    # Line 924
    lui	$at,0x4
    # Line 922
    lui	$v1,0x4
    # Line 915
    beqz	$v0,.L0da5f4c0
    ld	$s8,16($sp)
    # Line 922
    ori	$v1,$v1,0x21d8
    # Line 930
    lui	$a1,0x4
    ori	$a1,$a1,0x21f4
    # Line 929
    ori	$a2,$a2,0x21ec
    # Line 928
    ori	$a3,$a3,0x21e4
    # Line 927
    ori	$a4,$a4,0x21dc
    # Line 925
    ori	$a5,$a5,0x21f0
    # Line 924
    ori	$at,$at,0x21e8
    # Line 923
    lui	$v0,0x4
    ori	$v0,$v0,0x21e0
    # Line 922
    swc1	$f5,0($v1)
    swc1	$f5,0($v1)
    swc1	$f5,0($v1)
    # Line 923
    swc1	$f5,0($v0)
    swc1	$f5,0($v0)
    swc1	$f5,0($v0)
    # Line 924
    swc1	$f5,0($at)
    swc1	$f6,0($at)
    swc1	$f5,0($at)
    swc1	$f5,0($at)
    # Line 925
    swc1	$f5,0($a5)
    swc1	$f5,0($a5)
    swc1	$f6,0($a5)
    # Line 927
    swc1	$f5,0($a4)
    swc1	$f5,0($a4)
    swc1	$f5,0($a4)
    # Line 928
    swc1	$f5,0($a3)
    swc1	$f5,0($a3)
    swc1	$f5,0($a3)
    # Line 929
    swc1	$f5,0($a2)
    swc1	$f6,0($a2)
    swc1	$f5,0($a2)
    swc1	$f5,0($a2)
    # Line 930
    swc1	$f5,0($a1)
    swc1	$f5,0($a1)
    swc1	$f6,0($a1)
    # Line 932
    swc1	$f4,0($a0)
    swc1	$f6,0($a0)
.L0da5f4a0:
    # Line 937
    # lw $t9, -32240($gp) # &__glExpUpdateLightingState
    bal __glExpUpdateLightingState
    move	$a0,$s0
    # Line 938
    ld	$ra,8($sp)
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5f4c0:
    # Line 934
    swc1	$f4,0($a0)
    b	.L0da5f4a0
    swc1	$f5,0($a0)
.end __glExpInitLighting

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_3ff0083126e978d5:
    .word 0x3ff00831, 0x26e978d5
_lit8_403e000000000000:
    .word 0x403e0000, 0x00000000
_lit8_403f000000000000:
    .word 0x403f0000, 0x00000000
_lit8_405f800000000000:
    .word 0x405f8000, 0x00000000
_lit8_405fc00000000000:
    .word 0x405fc000, 0x00000000
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000
_lit_3a378034:
    .word 0x3a378034
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3de147ae:
    .word 0x3de147ae
_lit_3e99999a:
    .word 0x3e99999a
_lit_3f170a3d:
    .word 0x3f170a3d
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_40a00000:
    .word 0x40a00000
_lit_40c00000:
    .word 0x40c00000
_lit_40e00000:
    .word 0x40e00000
_lit_41200000:
    .word 0x41200000
_lit_41900000:
    .word 0x41900000
_lit_41980000:
    .word 0x41980000
_lit_41a00000:
    .word 0x41a00000
_lit_41a80000:
    .word 0x41a80000
_lit_41b00000:
    .word 0x41b00000
_lit_41b80000:
    .word 0x41b80000
_lit_41c00000:
    .word 0x41c00000
_lit_41c80000:
    .word 0x41c80000
_lit_41e80000:
    .word 0x41e80000
_lit_41f00000:
    .word 0x41f00000
_lit_41f80000:
    .word 0x41f80000
_lit_bf800000:
    .word 0xbf800000

