# Source: ../dlist/dl_matopt.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_matopt.c
# Total Functions: 4

.text

# Function: ApplyMatChange
# Declared: Line 60 (Source lines: 63-111)
# Address: 0x0da6ebf0 - 0x0da6ed94 (Size: 420 bytes, Frame: 0)
.ent ApplyMatChange
ApplyMatChange:
    # Line 63
    sltiu	$at,$a2,5632
    bnez	$at,.L0da6ec44
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0da6ec90
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0da6ed00
    sltiu	$a0,$a2,5635
    bnez	$a0,.L0da6ed54
    li	$at,5635
    bne	$a2,$at,.L0da6ecbc
    nop
    # Line 65
    lwc1	$f2,0($a3)
    swc1	$f2,76($a1)
    # Line 66
    lwc1	$f1,4($a3)
    # Line 68
    lw	$v0,4($a1)
    # Line 66
    swc1	$f1,84($a1)
    # Line 68
    ori	$v0,$v0,0x20
    # Line 67
    lwc1	$f0,8($a3)
    # Line 68
    sw	$v0,4($a1)
    # Line 111
    jr	$ra
    # Line 67
    swc1	$f0,80($a1)
.L0da6ec44:
    # Line 63
    sltiu	$v1,$a2,4609
    bnez	$v1,.L0da6ecc4
    sltiu	$a0,$a2,4610
    bnez	$a0,.L0da6ed24
    li	$at,4610
    bne	$a2,$at,.L0da6ecbc
    nop
    # Line 78
    lwc1	$f2,0($a3)
    swc1	$f2,40($a1)
    # Line 79
    lwc1	$f1,4($a3)
    swc1	$f1,44($a1)
    # Line 80
    lwc1	$f0,8($a3)
    # Line 82
    lw	$v0,4($a1)
    # Line 80
    swc1	$f0,48($a1)
    # Line 82
    ori	$v0,$v0,0x4
    # Line 81
    lwc1	$f3,12($a3)
    # Line 82
    sw	$v0,4($a1)
    # Line 111
    jr	$ra
    # Line 81
    swc1	$f3,52($a1)
.L0da6ec90:
    # Line 71
    lwc1	$f2,0($a3)
    swc1	$f2,56($a1)
    # Line 72
    lwc1	$f1,4($a3)
    swc1	$f1,60($a1)
    # Line 73
    lwc1	$f0,8($a3)
    # Line 75
    lw	$v1,4($a1)
    # Line 73
    swc1	$f0,64($a1)
    # Line 74
    lwc1	$f3,12($a3)
    # Line 75
    ori	$v1,$v1,0x8
    sw	$v1,4($a1)
    # Line 74
    swc1	$f3,68($a1)
.L0da6ecbc:
    # Line 111
    jr	$ra
    nop
.L0da6ecc4:
    # Line 63
    li	$a0,4608
    bne	$a2,$a0,.L0da6ecbc
    nop
    # Line 89
    lwc1	$f2,0($a3)
    swc1	$f2,8($a1)
    # Line 90
    lwc1	$f1,4($a3)
    swc1	$f1,12($a1)
    # Line 91
    lwc1	$f0,8($a3)
    # Line 93
    lw	$at,4($a1)
    # Line 91
    swc1	$f0,16($a1)
    # Line 93
    ori	$at,$at,0x1
    # Line 92
    lwc1	$f3,12($a3)
    # Line 93
    sw	$at,4($a1)
    # Line 111
    jr	$ra
    # Line 92
    swc1	$f3,20($a1)
.L0da6ed00:
    # Line 63
    li	$v0,5633
    bne	$a2,$v0,.L0da6ecbc
    nop
    # Line 85
    lwc1	$f3,0($a3)
    # Line 86
    lw	$v1,4($a1)
    # Line 85
    swc1	$f3,72($a1)
    # Line 86
    ori	$v1,$v1,0x10
    # Line 111
    jr	$ra
    # Line 86
    sw	$v1,4($a1)
.L0da6ed24:
    # Line 96
    lwc1	$f3,0($a3)
    swc1	$f3,24($a1)
    # Line 97
    lwc1	$f2,4($a3)
    swc1	$f2,28($a1)
    # Line 98
    lwc1	$f1,8($a3)
    # Line 100
    lw	$a0,4($a1)
    # Line 98
    swc1	$f1,32($a1)
    # Line 100
    ori	$a0,$a0,0x2
    # Line 99
    lwc1	$f0,12($a3)
    # Line 100
    sw	$a0,4($a1)
    # Line 111
    jr	$ra
    # Line 99
    swc1	$f0,36($a1)
.L0da6ed54:
    # Line 103
    lwc1	$f1,0($a3)
    swc1	$f1,8($a1)
    # Line 104
    lwc1	$f2,4($a3)
    swc1	$f2,12($a1)
    # Line 105
    lwc1	$f3,8($a3)
    # Line 108
    lw	$at,4($a1)
    # Line 105
    swc1	$f3,16($a1)
    # Line 108
    ori	$at,$at,0x3
    # Line 106
    lwc1	$f0,12($a3)
    # Line 108
    sw	$at,4($a1)
    # Line 107
    swc1	$f3,32($a1)
    swc1	$f2,28($a1)
    swc1	$f1,24($a1)
    swc1	$f0,36($a1)
    # Line 111
    jr	$ra
    # Line 106
    swc1	$f0,20($a1)
.end ApplyMatChange

# Function: FreeFastMaterial
# Declared: Line 118 (Source lines: 119-138)
# Address: 0x0da6ed94 - 0x0da6ee6c (Size: 216 bytes, Frame: 192)
.ent FreeFastMaterial
FreeFastMaterial:
    # Line 119
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    # Line 125
    addiu	$s1,$a1,4
    sd	$s5,8($sp)
    # Line 119
    move	$s5,$a0
    sd	$gp,16($sp)
    # Line 125
    lw	$at,0($a1)
    # Line 119
    lui	$v0,0x19
    addiu	$v0,$v0,-29996
    # Line 125
    beqz	$at,.L0da6ee58
    # Line 119
    addu	$gp,$t9,$v0
    sd	$ra,32($sp)
    b	.L0da6ede8
    sd	$s7,24($sp)
.L0da6edcc:
    # Line 134
    andi	$v1,$s7,0x20
.L0da6edd0:
    beqzl	$v1,.L0da6ede0
    # Line 125
    lw	$a1,0($s1)
    # Line 136
    addiu	$s1,$s1,12
    # Line 125
    lw	$a1,0($s1)
.L0da6ede0:
    beqz	$a1,.L0da6ee50
    addiu	$s1,$s1,4
.L0da6ede8:
    # Line 126
    lw	$s7,0($s1)
    andi	$at,$s7,0x1
    beqz	$at,.L0da6edfc
    addiu	$s1,$s1,4
    # Line 127
    addiu	$s1,$s1,16
.L0da6edfc:
    andi	$v0,$s7,0x2
    beqz	$v0,.L0da6ee10
    # Line 128
    andi	$v1,$s7,0x4
    addiu	$s1,$s1,16
    andi	$v1,$s7,0x4
.L0da6ee10:
    beqz	$v1,.L0da6ee20
    # Line 129
    andi	$a1,$s7,0x8
    addiu	$s1,$s1,16
    andi	$a1,$s7,0x8
.L0da6ee20:
    beqz	$a1,.L0da6ee30
    # Line 130
    andi	$at,$s7,0x10
    addiu	$s1,$s1,16
    andi	$at,$s7,0x10
.L0da6ee30:
    beqz	$at,.L0da6edcc
    # Line 134
    nop	# was lw $t9, -27264($gp) # &__glFreeSpecLUT
    lw	$a1,4($s1)
    move	$a0,$s5
    jal	__glFreeSpecLUT
    # Line 133
    addiu	$s1,$s1,8
    b	.L0da6edd0
    # Line 134
    andi	$v1,$s7,0x20
.L0da6ee50:
    ld	$s7,24($sp)
    ld	$ra,32($sp)
.L0da6ee58:
    ld	$gp,16($sp)
    # Line 138
    ld	$s1,0($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end FreeFastMaterial

# Function: __glDlistOptimizeMaterial
# Declared: Line 140 (Source lines: 141-310)
# Address: 0x0da6ee6c - 0x0da6f3b0 (Size: 1348 bytes, Frame: 240)
.globl __glDlistOptimizeMaterial
.ent __glDlistOptimizeMaterial
__glDlistOptimizeMaterial:
    # Line 141
    addiu	$sp,$sp,-752
    sd	$s2,712($sp)
    move	$s2,$a0
    sd	$gp,704($sp)
    lw	$at,4($a1)
    lui	$v0,0x19
    addiu	$v0,$v0,-30212
    andi	$at,$at,0x100
    beqz	$at,.L0da6f3a0
    addu	$gp,$t9,$v0
    sd	$s3,632($sp)
    sd	$s6,680($sp)
    sd	$s4,640($sp)
    sd	$ra,648($sp)
    sd	$s7,656($sp)
    sd	$s0,688($sp)
    sd	$s1,664($sp)
    # Line 162
    sw	$zero,92($sp)
    # Line 161
    sw	$zero,4($sp)
    # Line 163
    li	$at,1028
    # Line 164
    li	$a4,1029
    sw	$a4,88($sp)
    # Line 163
    sw	$at,0($sp)
    sd	$s5,672($sp)
    # Line 165
    lw	$v1,12($a1)
    sd	$s8,696($sp)
    addiu	$a3,$a1,12
    beqz	$v1,.L0da6f330
    sd	$a3,608($sp)
    sd	$s3,632($sp)
    sd	$s4,640($sp)
    sd	$ra,648($sp)
    sd	$s7,656($sp)
    sd	$s1,664($sp)
    sd	$s5,672($sp)
    li	$s6,98
    lw	$s8,184($sp)
    addiu	$at,$sp,176
    addiu	$at,$at,8
    ld	$v0,608($sp)
    sd	$at,720($sp)
    la	$s0,sub_0da70000
    lw	$v0,0($v0)
    b	.L0da6f154
    addiu	$s0,$s0,-5136
.L0da6ef20:
    # Line 233
    addiu	$s4,$sp,176
.L0da6ef24:
    addiu	$s3,$sp,208
    move	$s1,$zero
    sd	$zero,624($sp)
    # Line 230
    li	$s8,2
    addiu	$v1,$sp,0
    addiu	$a3,$sp,88
    # Line 229
    sw	$a3,180($sp)
    # Line 228
    sw	$v1,176($sp)
.L0da6ef44:
    # Line 233
    lw	$s5,0($s4)
    lw	$v0,4($s5)
    beqz	$v0,.L0da6f0a4
    # Line 234
    addiu	$s4,$s4,4
    # Line 238
    move	$a0,$v0
    # Line 241
    addiu	$s3,$s3,8
    addiu	$s1,$s1,8
    # Line 240
    lw	$at,0($s5)
    # Line 241
    sw	$v0,-4($s3)
    andi	$a4,$v0,0x1
    beqz	$a4,.L0da6ef9c
    # Line 240
    sw	$at,-8($s3)
    # Line 244
    lwc1	$f3,8($s5)
    swc1	$f3,0($s3)
    # Line 245
    lwc1	$f2,12($s5)
    swc1	$f2,4($s3)
    # Line 246
    lwc1	$f1,16($s5)
    swc1	$f1,8($s3)
    # Line 247
    lwc1	$f0,20($s5)
    addiu	$s3,$s3,16
    addiu	$s1,$s1,16
    swc1	$f0,-4($s3)
.L0da6ef9c:
    andi	$v1,$a0,0x2
    beqz	$v1,.L0da6efd4
    # Line 253
    andi	$a3,$a0,0x4
    # Line 250
    lwc1	$f3,24($s5)
    swc1	$f3,0($s3)
    # Line 251
    lwc1	$f2,28($s5)
    swc1	$f2,4($s3)
    # Line 252
    lwc1	$f1,32($s5)
    swc1	$f1,8($s3)
    # Line 253
    lwc1	$f0,36($s5)
    addiu	$s3,$s3,16
    addiu	$s1,$s1,16
    swc1	$f0,-4($s3)
    andi	$a3,$a0,0x4
.L0da6efd4:
    beqz	$a3,.L0da6f008
    # Line 259
    andi	$a4,$a0,0x8
    # Line 256
    lwc1	$f3,40($s5)
    swc1	$f3,0($s3)
    # Line 257
    lwc1	$f2,44($s5)
    swc1	$f2,4($s3)
    # Line 258
    lwc1	$f1,48($s5)
    swc1	$f1,8($s3)
    # Line 259
    lwc1	$f0,52($s5)
    addiu	$s3,$s3,16
    addiu	$s1,$s1,16
    swc1	$f0,-4($s3)
    andi	$a4,$a0,0x8
.L0da6f008:
    beqz	$a4,.L0da6f03c
    # Line 265
    andi	$at,$a0,0x10
    # Line 262
    lwc1	$f3,56($s5)
    swc1	$f3,0($s3)
    # Line 263
    lwc1	$f2,60($s5)
    swc1	$f2,4($s3)
    # Line 264
    lwc1	$f1,64($s5)
    swc1	$f1,8($s3)
    # Line 265
    lwc1	$f0,68($s5)
    addiu	$s3,$s3,16
    addiu	$s1,$s1,16
    swc1	$f0,-4($s3)
    andi	$at,$a0,0x10
.L0da6f03c:
    beqz	$at,.L0da6f07c
    # Line 271
    andi	$a3,$a0,0x20
    sd	$a0,728($sp)
    # Line 268
    # lw $t9, -27268($gp) # &__glCreateSpecLUT
    move	$a0,$s2
    # Line 270
    addiu	$s1,$s1,8
    # Line 268
    jal	__glCreateSpecLUT
    lwc1	$f13,72($s5)
    # Line 270
    addiu	$s3,$s3,8
    # Line 269
    lwc1	$f0,72($s5)
    # Line 270
    sw	$v0,-4($s3)
    ld	$a0,728($sp)
    # Line 271
    li	$v1,1
    sd	$v1,624($sp)
    # Line 269
    swc1	$f0,-8($s3)
    # Line 271
    andi	$a3,$a0,0x20
.L0da6f07c:
    beqz	$a3,.L0da6f0a8
    # Line 234
    ld	$a4,720($sp)
    # Line 274
    lwc1	$f3,76($s5)
    swc1	$f3,0($s3)
    # Line 275
    lwc1	$f2,80($s5)
    swc1	$f2,4($s3)
    # Line 276
    lwc1	$f1,84($s5)
    addiu	$s3,$s3,12
    addiu	$s1,$s1,12
    swc1	$f1,-4($s3)
.L0da6f0a4:
    # Line 234
    ld	$a4,720($sp)
.L0da6f0a8:
    bne	$s4,$a4,.L0da6ef44
    # Line 282
    move	$a0,$s2
    addiu	$s5,$s1,4
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    mtc1	$zero,$f4
    move	$a1,$s5
    bal __glDlistAllocOp2
    # Line 280
    swc1	$f4,0($s3)
    # Line 282
    beqz	$v0,.L0da6f36c
    move	$s4,$v0
    ld	$at,624($sp)
    # Line 283
    beqz	$at,.L0da6f0e4
    la	$v1,sub_0da70000
    addiu	$v1,$v1,-4716
    # Line 285
    sw	$v1,4($s4)
.L0da6f0e4:
    # Line 290
    move	$a2,$s5
    addiu	$a1,$sp,208
    addiu	$a0,$s4,16
    # lw $t9, -23008($gp) # &memcpy
    # Line 288
    ld	$a3,608($sp)
    li	$a4,1014
    # Line 287
    sh	$a4,12($s4)
    # Line 288
    sw	$s4,0($a3)
    # Line 290
    jal	memcpy
    # Line 289
    sw	$s7,0($s4)
    # Line 294
    ld	$at,616($sp)
    # Line 291
    move	$v1,$s4
    sd	$s4,608($sp)
    # Line 294
    beq	$at,$s7,.L0da6f13c
    move	$s1,$at
    # Line 298
    # lw $t9, -31028($gp) # &__glDlistFreeOp
.L0da6f124:
    move	$a0,$s2
    # Line 296
    move	$a1,$s1
    # Line 298
    bal __glDlistFreeOp
    # Line 297
    lw	$s1,0($s1)
    # Line 298
    bne	$s7,$s1,.L0da6f124
    nop	# was lw $t9, -31028($gp) # &__glDlistFreeOp
.L0da6f13c:
    # Line 303
    sw	$zero,92($sp)
    # Line 302
    sw	$zero,4($sp)
.L0da6f144:
    ld	$v0,608($sp)
    # Line 307
    lw	$v0,0($v0)
    beqzl	$v0,.L0da6f334
    ld	$gp,704($sp)
.L0da6f154:
    # Line 167
    lh	$a0,12($v0)
    li	$v1,96
    beq	$a0,$v1,.L0da6f178
    # Line 171
    move	$s7,$v0
    # Line 167
    beq	$a0,$s6,.L0da6f174
    # Line 307
    move	$a3,$v0
    b	.L0da6f144
    sd	$v0,608($sp)
.L0da6f174:
    # Line 171
    move	$s7,$v0
.L0da6f178:
    # Line 172
    lw	$s7,0($v0)
    beqz	$s7,.L0da6f1b0
    sd	$v0,616($sp)
    lh	$v0,12($s7)
.L0da6f188:
    li	$at,96
    beq	$v0,$at,.L0da6f364
    nop
    beq	$v0,$s6,.L0da6f364
    # Line 173
    li	$v0,1
.L0da6f19c:
    bnez	$v0,.L0da6f1b0
    nop
    # Line 172
    lw	$s7,0($s7)
    bnezl	$s7,.L0da6f188
    lh	$v0,12($s7)
.L0da6f1b0:
    ld	$v1,616($sp)
    # Line 186
    beq	$v1,$s7,.L0da6ef20
    move	$s1,$v1
    b	.L0da6f20c
    # Line 188
    lw	$v0,16($s1)
.L0da6f1c4:
    # Line 210
    sll	$s5,$s8,0x2
    blez	$s8,.L0da6f1fc
    addiu	$at,$sp,176
    addiu	$s4,$sp,176
    addu	$s5,$s5,$at
    # Line 219
    move	$a0,$s2
.L0da6f1dc:
    addiu	$a3,$sp,192
    move	$a2,$s3
    lw	$a1,0($s4)
    bal __glle_UnimplementedExtension
    move	$t9,$s0
    # Line 218
    addiu	$s4,$s4,4
    bne	$s4,$s5,.L0da6f1dc
    # Line 219
    move	$a0,$s2
.L0da6f1fc:
    # Line 186
    lw	$s1,0($s1)
    beq	$s7,$s1,.L0da6ef24
    # Line 233
    addiu	$s4,$sp,176
    # Line 188
    lw	$v0,16($s1)
.L0da6f20c:
    li	$a4,1032
    li	$v1,1028
    # Line 192
    beq	$v1,$v0,.L0da6f2ec
    # Line 189
    lw	$s3,20($s1)
    li	$a3,1029
    # Line 192
    beql	$a3,$v0,.L0da6f2fc
    # Line 199
    li	$s8,1
    # Line 192
    beq	$a4,$v0,.L0da6f308
    addiu	$at,$sp,88
.L0da6f230:
    # Line 208
    # lw $t9, -27324($gp) # &__glMaterialfv_size
    jal	__glMaterialfv_size
    move	$a0,$s3
    blez	$v0,.L0da6f1c4
    move	$s4,$v0
    addiu	$a0,$sp,192
    move	$v0,$s1
    move	$a2,$s4
    sll	$a1,$s4,0x2
    andi	$a3,$s4,0x1
    beqz	$a3,.L0da6f27c
    addu	$a1,$a1,$s1
    lh	$a4,12($s1)
    beql	$a4,$s6,.L0da6f31c
    # Line 212
    lw	$v1,24($v0)
    # Line 214
    lwc1	$f0,24($v0)
    swc1	$f0,0($a0)
.L0da6f274:
    # Line 210
    addiu	$v0,$v0,4
    addiu	$a0,$a0,4
.L0da6f27c:
    sra	$at,$a2,0x1
    beqz	$at,.L0da6f1c4
    nop
    b	.L0da6f2b8
    # Line 208
    lh	$a3,12($s1)
.L0da6f290:
    # Line 214
    swc1	$f1,0($a0)
.L0da6f294:
    # Line 208
    lh	$v1,12($s1)
    beql	$v1,$s6,.L0da6f2d8
    # Line 212
    lw	$at,28($v0)
    # Line 214
    lwc1	$f2,28($v0)
    swc1	$f2,4($a0)
.L0da6f2a8:
    # Line 210
    addiu	$v0,$v0,8
    beq	$v0,$a1,.L0da6f1c4
    addiu	$a0,$a0,8
    # Line 208
    lh	$a3,12($s1)
.L0da6f2b8:
    bnel	$a3,$s6,.L0da6f290
    # Line 214
    lwc1	$f1,24($v0)
    # Line 212
    lw	$a4,24($v0)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    b	.L0da6f294
    swc1	$f3,0($a0)
.L0da6f2d8:
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0da6f2a8
    swc1	$f0,4($a0)
.L0da6f2ec:
    # Line 195
    li	$s8,1
    addiu	$v1,$sp,0
    # Line 196
    b	.L0da6f230
    # Line 194
    sw	$v1,176($sp)
.L0da6f2fc:
    addiu	$a3,$sp,88
    # Line 200
    b	.L0da6f230
    # Line 198
    sw	$a3,176($sp)
.L0da6f308:
    # Line 204
    li	$s8,2
    # Line 203
    sw	$at,180($sp)
    addiu	$a4,$sp,0
    b	.L0da6f230
    # Line 202
    sw	$a4,176($sp)
.L0da6f31c:
    # Line 212
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    b	.L0da6f274
    swc1	$f1,0($a0)
.L0da6f330:
    ld	$gp,704($sp)
.L0da6f334:
    # Line 310
    ld	$s0,688($sp)
    ld	$s1,664($sp)
    ld	$s2,712($sp)
    ld	$s3,632($sp)
    ld	$s4,640($sp)
    ld	$s5,672($sp)
    ld	$s6,680($sp)
    ld	$ra,648($sp)
    ld	$s7,656($sp)
    ld	$s8,696($sp)
    jr	$ra
    addiu	$sp,$sp,752
.L0da6f364:
    b	.L0da6f19c
    # Line 173
    move	$v0,$zero
.L0da6f36c:
    ld	$gp,704($sp)
    # Line 283
    ld	$s0,688($sp)
    ld	$s1,664($sp)
    ld	$s2,712($sp)
    ld	$s3,632($sp)
    ld	$s4,640($sp)
    ld	$s5,672($sp)
    ld	$s6,680($sp)
    ld	$ra,648($sp)
    ld	$s7,656($sp)
    ld	$s8,696($sp)
    jr	$ra
    addiu	$sp,$sp,752
.L0da6f3a0:
    ld	$gp,704($sp)
    # Line 159
    ld	$s2,712($sp)
    jr	$ra
    addiu	$sp,$sp,752
.end __glDlistOptimizeMaterial

# Function: __glle_FastMaterial
# Declared: Line 313 (Source lines: 314-401)
# Address: 0x0da6f3b0 - 0x0da6f660 (Size: 688 bytes, Frame: 240)
.globl __glle_FastMaterial
.ent __glle_FastMaterial
__glle_FastMaterial:
    # Line 324
    li	$v0,1
    # Line 314
    addiu	$sp,$sp,-112
    sd	$s2,48($sp)
    # Line 324
    move	$s2,$zero
    sd	$s8,16($sp)
    move	$s8,$zero
    sd	$s1,32($sp)
    # Line 321
    lw	$s1,__glCurrentContext
    sd	$s4,40($sp)
    # Line 314
    move	$s4,$a0
    # sd	gp,24(sp)
    # Line 324
    lw	$at,__glBeginMode
    # Line 314
    lui	$v1,0x19
    addiu	$v1,$v1,-31560
    # Line 324
    beq	$at,$v0,.L0da6f638
    # Line 314
    nop
.L0da6f3f0:
    sd	$s6,80($sp)
.L0da6f3f4:
    # Line 335
    lw	$v0,0($s4)
    sd	$s7,56($sp)
    sd	$s0,8($sp)
    beqz	$v0,.L0da6f5d4
    addiu	$s0,$s4,4
    sd	$s3,88($sp)
    sd	$ra,72($sp)
    sd	$s5,64($sp)
    li	$s7,1029
    b	.L0da6f454
    li	$s6,1028
.L0da6f420:
    # Line 387
    andi	$a3,$s3,0x20
    beqz	$a3,.L0da6f448
    # Line 390
    lw	$a4,0($sp)
    lwc1	$f2,0($s0)
    swc1	$f2,68($a4)
    # Line 391
    lwc1	$f1,4($s0)
    swc1	$f1,72($a4)
    # Line 392
    lwc1	$f0,8($s0)
    addiu	$s0,$s0,12
    swc1	$f0,76($a4)
.L0da6f448:
    # Line 335
    lw	$v0,0($s0)
    beqz	$v0,.L0da6f5c0
    addiu	$s0,$s0,4
.L0da6f454:
    # Line 336
    lw	$s3,0($s0)
    # Line 340
    addiu	$at,$s1,28108
    # Line 337
    beq	$s6,$v0,.L0da6f5ac
    # Line 336
    addiu	$s0,$s0,4
    # Line 337
    beq	$s7,$v0,.L0da6f624
    # Line 345
    addiu	$at,$s1,28148
.L0da6f46c:
    # Line 348
    andi	$at,$s3,0x1
    beqz	$at,.L0da6f49c
    # Line 350
    lw	$v1,0($sp)
    lwc1	$f2,0($s0)
    swc1	$f2,0($v1)
    # Line 351
    lwc1	$f1,4($s0)
    swc1	$f1,4($v1)
    # Line 352
    lwc1	$f0,8($s0)
    swc1	$f0,8($v1)
    # Line 353
    lwc1	$f3,12($s0)
    addiu	$s0,$s0,16
    swc1	$f3,12($v1)
.L0da6f49c:
    andi	$a3,$s3,0x2
    beqz	$a3,.L0da6f4cc
    # Line 356
    lw	$a4,0($sp)
    lwc1	$f2,0($s0)
    swc1	$f2,16($a4)
    # Line 357
    lwc1	$f1,4($s0)
    swc1	$f1,20($a4)
    # Line 358
    lwc1	$f0,8($s0)
    swc1	$f0,24($a4)
    # Line 359
    lwc1	$f3,12($s0)
    addiu	$s0,$s0,16
    swc1	$f3,28($a4)
.L0da6f4cc:
    andi	$at,$s3,0x4
    beqz	$at,.L0da6f4fc
    # Line 362
    lw	$v1,0($sp)
    lwc1	$f2,0($s0)
    swc1	$f2,32($v1)
    # Line 363
    lwc1	$f1,4($s0)
    swc1	$f1,36($v1)
    # Line 364
    lwc1	$f0,8($s0)
    swc1	$f0,40($v1)
    # Line 365
    lwc1	$f3,12($s0)
    addiu	$s0,$s0,16
    swc1	$f3,44($v1)
.L0da6f4fc:
    andi	$a3,$s3,0x8
    beqz	$a3,.L0da6f54c
    # Line 374
    lw	$a4,0($sp)
    # Line 373
    lwc1	$f2,30796($s1)
    lwc1	$f1,12($s0)
    # Line 372
    lwc1	$f0,8($s0)
    # Line 373
    mul.s	$f1,$f1,$f2
    # Line 372
    lwc1	$f2,30764($s1)
    # Line 371
    lwc1	$f4,4($s0)
    # Line 372
    mul.s	$f0,$f0,$f2
    # Line 371
    lwc1	$f2,30760($s1)
    # Line 370
    lwc1	$f3,0($s0)
    # Line 371
    mul.s	$f4,$f4,$f2
    # Line 370
    lwc1	$f2,30756($s1)
    mul.s	$f3,$f3,$f2
    # Line 373
    addiu	$s0,$s0,16
    # Line 377
    swc1	$f1,60($a4)
    # Line 376
    swc1	$f0,56($a4)
    # Line 375
    swc1	$f4,52($a4)
    # Line 374
    swc1	$f3,48($a4)
.L0da6f54c:
    # Line 377
    andi	$at,$s3,0x10
    beqz	$at,.L0da6f420
    # Line 380
    lw	$v1,0($sp)
    lwc1	$f3,0($s0)
    lw	$s5,4($sp)
    swc1	$f3,64($v1)
    swc1	$f3,16($s5)
    # Line 381
    lw	$s4,4($s0)
    # Line 383
    move	$a0,$s1
    # Line 382
    lw	$v0,0($s4)
    # Line 381
    addiu	$s0,$s0,8
    # Line 383
    # lw $t9, -27264($gp) # &__glFreeSpecLUT
    # Line 382
    addiu	$v0,$v0,1
    sw	$v0,0($s4)
    # Line 383
    jal	__glFreeSpecLUT
    lw	$a1,32($s5)
    # Line 384
    sw	$s4,32($s5)
    # Line 385
    lwc1	$f1,4($s4)
    swc1	$f1,24($s5)
    # Line 387
    addiu	$a3,$s4,16
    # Line 386
    lwc1	$f0,8($s4)
    # Line 387
    sw	$a3,20($s5)
    b	.L0da6f420
    # Line 386
    swc1	$f0,28($s5)
.L0da6f5ac:
    # Line 341
    or	$s2,$s2,$s3
    # Line 340
    sw	$at,4($sp)
    # Line 339
    addiu	$a4,$s1,1328
    # Line 342
    b	.L0da6f46c
    # Line 339
    sw	$a4,0($sp)
.L0da6f5c0:
    ld	$s7,56($sp)
    ld	$s5,64($sp)
    ld	$ra,72($sp)
    ld	$s6,80($sp)
    ld	$s3,88($sp)
.L0da6f5d4:
    # Line 335
    li	$a3,-33
    or	$v1,$s8,$s2
    and	$v1,$v1,$a3
    beqz	$v1,.L0da6f600
    # Line 398
    move	$a0,$s1
    # lw $t9, -28320($gp) # &__glValidateMaterial
    move	$a1,$s2
    sd	$ra,72($sp)
    jal	__glValidateMaterial
    move	$a2,$s8
    ld	$ra,72($sp)
.L0da6f600:
    # ld	gp,24(sp)
    # Line 401
    move	$v0,$s0
    ld	$s0,8($sp)
    ld	$s1,32($sp)
    ld	$s2,48($sp)
    ld	$s4,40($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da6f624:
    # Line 346
    or	$s8,$s8,$s3
    # Line 345
    sw	$at,4($sp)
    # Line 344
    addiu	$a4,$s1,1408
    b	.L0da6f46c
    sw	$a4,0($sp)
.L0da6f638:
    # Line 324
    lw	$v1,28096($s1)
    beqzl	$v1,.L0da6f3f4
    sd	$s6,80($sp)
    # Line 332
    lw	$t9,12028($s1)
    sd	$ra,72($sp)
    jalr	$t9
    move	$a0,$s1
    sd	$s0,8($sp)
    b	.L0da6f3f0
    ld	$ra,72($sp)
.end __glle_FastMaterial

