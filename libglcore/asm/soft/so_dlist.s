# Source: ../soft/so_dlist.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_dlist.c
# Total Functions: 9

.text

# Function: __glGenericFreeDlist
# Declared: Line 41 (Source lines: 42-64)
# Address: 0x0daa7990 - 0x0daa7a5c (Size: 204 bytes, Frame: 208)
.globl __glGenericFreeDlist
.ent __glGenericFreeDlist
__glGenericFreeDlist:
    # Line 42
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    # sd	gp,32(sp)
    sd	$s4,8($sp)
    # Line 46
    lw	$s4,16($a1)
    # Line 42
    lui	$at,0x15
    addiu	$at,$at,-296
    # Line 46
    beqz	$s4,.L0daa79ec
    # Line 42
    nop
    # Line 49
    lw	$t9,4724($s0)
    move	$a0,$s0
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a1,12($s1)
    # Line 50
    addiu	$s4,$s4,-1
    beqz	$s4,.L0daa79ec
    ld	$ra,48($sp)
    # Line 54
    addiu	$v0,$s1,20
    sd	$s7,40($sp)
    sw	$v0,0($sp)
.L0daa79ec:
    sd	$s5,56($sp)
    # Line 58
    addiu	$s4,$s4,-1
    sd	$s7,40($sp)
    li	$s7,-1
    beq	$s7,$s4,.L0daa7a2c
    sd	$ra,48($sp)
    sd	$ra,48($sp)
    lw	$s5,0($sp)
.L0daa7a0c:
    # Line 59
    lw	$t9,0($s5)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,4($s5)
    # Line 58
    addiu	$s4,$s4,-1
    bne	$s7,$s4,.L0daa7a0c
    # Line 60
    addiu	$s5,$s5,8
    ld	$s5,56($sp)
.L0daa7a2c:
    # Line 63
    move	$a0,$s0
    lw	$t9,4724($s0)
    move	$a1,$s1
    ld	$s7,40($sp)
    jalr	$t9
    ld	$s4,8($sp)
    # ld	gp,32(sp)
    # Line 64
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glGenericFreeDlist

# Function: __glGenericExecuteDlist
# Declared: Line 71 (Source lines: 72-74)
# Address: 0x0daa7a5c - 0x0daa7a90 (Size: 52 bytes, Frame: 32)
.globl __glGenericExecuteDlist
.ent __glGenericExecuteDlist
__glGenericExecuteDlist:
    # Line 72
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x15
    addiu	$at,$at,-500
    # addu	gp,t9,at
    # Line 73
    # lw $t9, -23724($gp) # &__glDoInterpret
    sd	$ra,0($sp)
    jal	__glDoInterpret
    lw	$a0,12($a1)
    # Line 74
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGenericExecuteDlist

# Function: __glGenericAllocDlist
# Declared: Line 81 (Source lines: 82-108)
# Address: 0x0daa7a90 - 0x0daa7b68 (Size: 216 bytes, Frame: 208)
.globl __glGenericAllocDlist
.ent __glGenericAllocDlist
__glGenericAllocDlist:
    # Line 94
    sll	$at,$a2,0x3
    # Line 82
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    sd	$a0,8($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$v0,$a0
    # sd	gp,24(sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-552
    # addu	gp,t9,v1
    # Line 94
    lw	$t9,4716($v0)
    # Line 82
    move	$s1,$a1
    sd	$ra,32($sp)
    # Line 94
    jalr	$t9
    addiu	$a1,$at,20
    # Line 97
    la	$a3,__glGenericFreeDlist
    # Line 94
    beqz	$v0,.L0daa7b3c
    move	$s2,$v0
    # Line 97
    sw	$a3,4($v0)
    # Line 96
    li	$a4,1
    # Line 97
    beqz	$s1,.L0daa7b5c
    # Line 96
    sw	$a4,0($v0)
    # Line 99
    la	$at,__glGenericExecuteDlist
    sw	$at,8($v0)
.L0daa7af8:
    ld	$t9,8($sp)
    # Line 103
    move	$a0,$t9
    lw	$t9,4716($t9)
    jalr	$t9
    move	$a1,$s1
    # Line 108
    ld	$ra,32($sp)
    # Line 103
    beqz	$s1,.L0daa7b1c
    sw	$v0,12($s2)
    # Line 105
    addiu	$s0,$s0,1
.L0daa7b1c:
    # ld	gp,24(sp)
    # Line 107
    sw	$s0,16($s2)
    # Line 108
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    move	$v0,$s2
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa7b3c:
    # Line 95
    ld	$ra,32($sp)
    move	$v0,$zero
    # ld	gp,24(sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa7b5c:
    # Line 101
    la	$at,__glEmptyExecuteDlist
    b	.L0daa7af8
    sw	$at,8($v0)
.end __glGenericAllocDlist

# Function: __glle_Nop
# Declared: Line 116 (Source lines: 117-118)
# Address: 0x0daa7b68 - 0x0daa7b70 (Size: 8 bytes, Frame: 0)
.globl __glle_Nop
.ent __glle_Nop
__glle_Nop:
    # Line 118
    jr	$ra
    # Line 117
    move	$v0,$a0
.end __glle_Nop

# Function: __glGenericDlistCompiler
# Declared: Line 125 (Source lines: 126-258)
# Address: 0x0daa7b70 - 0x0daa7f10 (Size: 928 bytes, Frame: 208)
.globl __glGenericDlistCompiler
.ent __glGenericDlistCompiler
__glGenericDlistCompiler:
    # Line 142
    move	$a2,$zero
    # Line 141
    move	$a7,$zero
    # Line 126
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$s7,48($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x15
    # Line 144
    lw	$a5,12($a1)
    # Line 126
    addiu	$at,$at,-776
    # addu	gp,t9,at
    # Line 144
    beqz	$a5,.L0daa7bf4
    move	$s1,$a5
    b	.L0daa7bc0
    li	$s7,4
.L0daa7bb4:
    lw	$s1,0($s1)
    beqzl	$s1,.L0daa7bf4
    ld	$s7,48($sp)
.L0daa7bc0:
    lbu	$v1,14($s1)
    beqz	$v1,.L0daa7bd8
    andi	$a3,$a7,0x7
    beql	$a3,$s7,.L0daa7bdc
    # Line 153
    lw	$v1,8($s1)
    # Line 151
    addiu	$a7,$a7,4
.L0daa7bd8:
    # Line 153
    lw	$v1,8($s1)
.L0daa7bdc:
    lw	$at,4($s1)
    addu	$a7,$v1,$a7
    beqz	$at,.L0daa7bb4
    addiu	$a7,$a7,4
    b	.L0daa7bb4
    # Line 154
    addiu	$a2,$a2,1
.L0daa7bf4:
    sd	$ra,32($sp)
    sd	$v0,0($sp)
    # Line 159
    beqz	$a5,.L0daa7eb0
    move	$s1,$a5
    # Line 162
    # lw $t9, -28876($gp) # &__glGenericAllocDlist
    move	$a0,$s0
    bal __glGenericAllocDlist
    addiu	$a1,$a7,4
    move	$a5,$v0
    move	$a0,$v0
    # Line 170
    addiu	$t9,$v0,20
    beqz	$v0,.L0daa7ecc
    ld	$ra,32($sp)
    sd	$a0,40($sp)
    # Line 185
    move	$a7,$zero
    # Line 186
    la	$v0,__glle_Nop
    li	$a2,-1
    sd	$s7,48($sp)
    li	$s7,4
    b	.L0daa7e30
    lw	$t1,12($a5)
.L0daa7c48:
    lui	$a3,0xffff
    # Line 206
    addu	$a0,$a0,$a1
    addu	$a0,$a0,$a3
    lw	$a0,25536($a0)
.L0daa7c58:
    # Line 209
    sw	$a0,0($t1)
    lw	$a5,4($s1)
    beqz	$a5,.L0daa7c74
    addiu	$a1,$t1,4
    # Line 214
    addiu	$t9,$t9,8
    # Line 213
    sw	$a1,-4($t9)
    # Line 212
    sw	$a5,-8($t9)
.L0daa7c74:
    # Line 226
    lw	$t0,8($s1)
    # Line 228
    addiu	$a6,$s1,16
    # Line 229
    move	$a5,$a1
    # Line 226
    srl	$t0,$t0,0x2
    # Line 230
    sra	$t3,$t0,0x2
    # Line 243
    andi	$t0,$t0,0x3
    # Line 230
    addiu	$a0,$t3,-1
    bltz	$a0,.L0daa7d90
    move	$a1,$t3
    andi	$t2,$t3,0x3
    beqzl	$t2,.L0daa7cdc
    move	$t2,$a0
.L0daa7ca4:
    addiu	$a0,$a0,-1
    # Line 240
    addiu	$a5,$a5,16
    # Line 239
    addiu	$a6,$a6,16
    addi	$t2,$t2,-1
    # Line 232
    lw	$v1,-12($a6)
    # Line 234
    lw	$a4,-4($a6)
    # Line 233
    lw	$a3,-8($a6)
    # Line 235
    lw	$at,-16($a6)
    # Line 238
    sw	$a4,-4($a5)
    # Line 237
    sw	$a3,-8($a5)
    # Line 236
    sw	$v1,-12($a5)
    bnez	$t2,.L0daa7ca4
    # Line 235
    sw	$at,-16($a5)
    move	$t2,$a0
.L0daa7cdc:
    sra	$at,$a1,0x2
    move	$t8,$a5
    beqz	$at,.L0daa7d90
    move	$t3,$a6
    move	$a1,$t8
    move	$a5,$t2
    move	$a0,$t3
.L0daa7cf8:
    # Line 232
    lw	$a4,4($a0)
    # Line 235
    lw	$at,0($a0)
    # Line 233
    lw	$a3,8($a0)
    # Line 234
    lw	$v1,12($a0)
    # Line 235
    sw	$at,0($a1)
    # Line 236
    sw	$a4,4($a1)
    # Line 237
    sw	$a3,8($a1)
    # Line 238
    sw	$v1,12($a1)
    # Line 240
    addiu	$a1,$a1,64
    # Line 232
    lw	$a4,20($a0)
    # Line 235
    lw	$at,16($a0)
    # Line 233
    lw	$a3,24($a0)
    # Line 234
    lw	$v1,28($a0)
    # Line 235
    sw	$at,-48($a1)
    # Line 236
    sw	$a4,-44($a1)
    # Line 237
    sw	$a3,-40($a1)
    # Line 238
    sw	$v1,-36($a1)
    # Line 239
    addiu	$a0,$a0,64
    # Line 232
    lw	$a4,-28($a0)
    # Line 235
    lw	$at,-32($a0)
    # Line 233
    lw	$a3,-24($a0)
    # Line 234
    lw	$v1,-20($a0)
    # Line 235
    sw	$at,-32($a1)
    # Line 236
    sw	$a4,-28($a1)
    # Line 237
    sw	$a3,-24($a1)
    # Line 238
    sw	$v1,-20($a1)
    # Line 230
    addiu	$a5,$a5,-4
    # Line 232
    lw	$a3,-12($a0)
    # Line 234
    lw	$at,-4($a0)
    # Line 233
    lw	$a4,-8($a0)
    # Line 235
    lw	$v1,-16($a0)
    # Line 238
    sw	$at,-4($a1)
    # Line 237
    sw	$a4,-8($a1)
    # Line 236
    sw	$a3,-12($a1)
    # Line 230
    bne	$a5,$a2,.L0daa7cf8
    # Line 235
    sw	$v1,-16($a1)
    move	$a6,$a0
    move	$a5,$a1
.L0daa7d90:
    # Line 243
    addiu	$t0,$t0,-1
    bltz	$t0,.L0daa7e14
    addiu	$a0,$t0,1
    andi	$a1,$a0,0x3
    beqzl	$a1,.L0daa7dc8
    move	$a1,$t0
.L0daa7da8:
    addiu	$t0,$t0,-1
    # Line 244
    addiu	$a5,$a5,4
    addiu	$a6,$a6,4
    lw	$at,-4($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0daa7da8
    sw	$at,-4($a5)
    move	$a1,$t0
.L0daa7dc8:
    move	$t3,$a6
    move	$t2,$a5
    sra	$v1,$a0,0x2
    beqz	$v1,.L0daa7e14
    move	$a0,$t2
    move	$a5,$a1
    move	$a6,$t3
.L0daa7de4:
    lw	$v1,0($a6)
    sw	$v1,0($a0)
    lw	$at,4($a6)
    sw	$at,4($a0)
    lw	$a4,8($a6)
    addiu	$a0,$a0,16
    sw	$a4,-8($a0)
    addiu	$a6,$a6,16
    lw	$a3,-4($a6)
    # Line 243
    addiu	$a5,$a5,-4
    bne	$a5,$a2,.L0daa7de4
    # Line 244
    sw	$a3,-4($a0)
.L0daa7e14:
    # Line 248
    lw	$at,8($s1)
    # Line 187
    lw	$s1,0($s1)
    # Line 248
    addu	$t1,$at,$t1
    # Line 250
    addu	$a7,$at,$a7
    addiu	$a7,$a7,4
    # Line 187
    beqz	$s1,.L0daa7e8c
    # Line 248
    addiu	$t1,$t1,4
.L0daa7e30:
    # Line 190
    lbu	$at,14($s1)
    andi	$v1,$a7,0x7
    beqz	$at,.L0daa7e54
    lh	$a0,12($s1)
    beq	$v1,$s7,.L0daa7e58
    # Line 197
    slti	$a1,$a0,1000
    addiu	$a7,$a7,4
    # Line 196
    addiu	$t1,$t1,4
    # Line 195
    sw	$v0,-4($t1)
.L0daa7e54:
    # Line 197
    slti	$a1,$a0,1000
.L0daa7e58:
    beqz	$a1,.L0daa7e70
    sll	$a1,$a0,0x2
    # Line 201
    lw	$a0,4656($s0)
    addu	$a0,$a0,$a1
    b	.L0daa7c58
    lw	$a0,0($a0)
.L0daa7e70:
    slti	$a3,$a0,10000
    beqzl	$a3,.L0daa7c48
    # Line 206
    lw	$a0,4664($s0)
    # Line 203
    lw	$a0,4660($s0)
    addu	$a0,$a0,$a1
    b	.L0daa7c58
    lw	$a0,-4000($a0)
.L0daa7e8c:
    # Line 253
    la	$a3,__glle_Sentinel
    ld	$v0,40($sp)
    ld	$s7,48($sp)
    sw	$a3,0($t1)
.L0daa7e9c:
    # ld	gp,16(sp)
    # Line 258
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa7eb0:
    # Line 255
    # lw $t9, -28876($gp) # &__glGenericAllocDlist
    move	$a0,$s0
    move	$a1,$zero
    bal __glGenericAllocDlist
    move	$a2,$zero
    b	.L0daa7e9c
    ld	$ra,32($sp)
.L0daa7ecc:
    # Line 177
    lw	$t9,12648($s0)
    jal	__glGenericAllocDlist
    lw	$a0,4712($s0)
    # Line 178
    ld	$a4,0($sp)
    # Line 181
    li	$a0,1285
    # lw $t9, -29008($gp) # &__glSetError
    # Line 179
    sw	$zero,16($a4)
    # Line 178
    sw	$zero,12($a4)
    # Line 181
    bal __glSetError
    # Line 180
    sw	$zero,4688($s0)
    # Line 182
    move	$v0,$zero
    # ld	gp,16(sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glGenericDlistCompiler

# Function: __glNopFreeDlist
# Declared: Line 271 (Source lines: 272-282)
# Address: 0x0daa7f10 - 0x0daa7f44 (Size: 52 bytes, Frame: 32)
.globl __glNopFreeDlist
.ent __glNopFreeDlist
__glNopFreeDlist:
    # Line 272
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x15
    addiu	$at,$at,-1704
    # addu	gp,t9,at
    # Line 281
    # lw $t9, -22944($gp) # &free
    sd	$ra,0($sp)
    jal	free
    # Line 272
    move	$a0,$a1
    # Line 282
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glNopFreeDlist

# Function: __glNopExecuteDlist
# Declared: Line 286 (Source lines: 296-296)
# Address: 0x0daa7f44 - 0x0daa7f4c (Size: 8 bytes, Frame: 0)
.globl __glNopExecuteDlist
.ent __glNopExecuteDlist
__glNopExecuteDlist:
    # Line 296
    jr	$ra
    nop
.end __glNopExecuteDlist

# Function: __glNopAllocDlist
# Declared: Line 299 (Source lines: 300-315)
# Address: 0x0daa7f4c - 0x0daa7fb4 (Size: 104 bytes, Frame: 32)
.globl __glNopAllocDlist
.ent __glNopAllocDlist
__glNopAllocDlist:
    # Line 300
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$at,0x15
    addiu	$at,$at,-1764
    # addu	gp,t9,at
    # Line 309
    lw	$t9,4716($a0)
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a1,$a1,16
    bnez	$v0,.L0daa7f8c
    # Line 312
    la	$v1,__glNopFreeDlist
    # Line 310
    ld	$ra,8($sp)
    move	$v0,$zero
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daa7f8c:
    # Line 311
    li	$a1,1
    # Line 314
    sw	$zero,12($v0)
    # Line 313
    la	$a0,__glNopExecuteDlist
    # ld	gp,0(sp)
    # Line 315
    ld	$ra,8($sp)
    addiu	$sp,$sp,32
    # Line 312
    sw	$v1,4($v0)
    # Line 311
    sw	$a1,0($v0)
    # Line 315
    jr	$ra
    # Line 313
    sw	$a0,8($v0)
.end __glNopAllocDlist

# Function: __glNopDlistCompiler
# Declared: Line 320 (Source lines: 321-339)
# Address: 0x0daa7fb4 - 0x0daa8034 (Size: 128 bytes, Frame: 192)
.globl __glNopDlistCompiler
.ent __glNopDlistCompiler
__glNopDlistCompiler:
    # Line 321
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # sd	gp,24(sp)
    lui	$at,0x15
    addiu	$at,$at,-1868
    # addu	gp,t9,at
    # Line 327
    # lw $t9, -28856($gp) # &__glNopAllocDlist
    move	$a1,$zero
    sd	$ra,0($sp)
    bal __glNopAllocDlist
    sd	$a0,16($sp)
    beqz	$v0,.L0daa7ff4
    ld	$ra,0($sp)
.L0daa7fe8:
    # ld	gp,24(sp)
    # Line 339
    jr	$ra
    addiu	$sp,$sp,64
.L0daa7ff4:
    ld	$a0,16($sp)
    # Line 333
    lw	$t9,12648($a0)
    sd	$v0,32($sp)
    jal	__glNopAllocDlist
    lw	$a0,4712($a0)
    # Line 337
    li	$a0,1285
    # Line 334
    ld	$a2,8($sp)
    # Line 336
    ld	$a1,16($sp)
    # Line 337
    # lw $t9, -29008($gp) # &__glSetError
    # Line 335
    sw	$zero,16($a2)
    # Line 334
    sw	$zero,12($a2)
    # Line 337
    bal __glSetError
    # Line 336
    sw	$zero,4688($a1)
    ld	$v0,32($sp)
    b	.L0daa7fe8
    ld	$ra,0($sp)
.end __glNopDlistCompiler

