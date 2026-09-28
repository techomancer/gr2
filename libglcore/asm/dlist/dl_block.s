# Source: ../dlist/dl_block.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_block.c
# Total Functions: 10

.text

# Function: __glDlistBlockStateInit
# Declared: Line 28 (Source lines: 34-75)
# Address: 0x0da6c98c - 0x0da6ca20 (Size: 148 bytes, Frame: 208)
.globl __glDlistBlockStateInit
.ent __glDlistBlockStateInit
__glDlistBlockStateInit:
    # Line 48
    sw	$a1,0($a5)
    # Line 60
    li	$a1,4
    # Line 34
    addiu	$sp,$sp,-80
    # sd	gp,0(sp)
    # Line 57
    sw	$zero,4($a5)
    # Line 51
    sw	$a4,20($a5)
    # Line 50
    sw	$a3,16($a5)
    # Line 49
    sw	$a2,12($a5)
    # Line 34
    lui	$at,0x19
    addiu	$at,$at,-20772
    # Line 55
    li	$v0,-1
    sw	$v0,8($a5)
    # Line 34
    # addu	gp,t9,at
    # Line 60
    lw	$t9,0($a0)
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 34
    move	$s0,$a5
    # Line 60
    move	$a2,$v0
    # Line 75
    ld	$ra,8($sp)
    # Line 60
    bnez	$v0,.L0da6c9fc
    sw	$v0,24($s0)
    # ld	gp,0(sp)
    # Line 61
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6c9fc:
    # Line 75
    li	$v0,1
    # ld	gp,0(sp)
    # Line 62
    sw	$zero,0($a2)
    # Line 67
    sw	$zero,40($s0)
    # Line 66
    sw	$zero,36($s0)
    # Line 64
    sw	$zero,28($s0)
    # Line 75
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDlistBlockStateInit

# Function: __glDlistBlockStateFree
# Declared: Line 78 (Source lines: 79-95)
# Address: 0x0da6ca20 - 0x0da6cac4 (Size: 164 bytes, Frame: 48)
.globl __glDlistBlockStateFree
.ent __glDlistBlockStateFree
__glDlistBlockStateFree:
    # Line 79
    addiu	$sp,$sp,-48
    move	$v0,$a1
    # Line 85
    lw	$a2,4($v0)
    sd	$a1,8($sp)
    lw	$a1,0($a1)
    multu	$a1,$a2
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 79
    lui	$v1,0x19
    addiu	$v1,$v1,-20920
    # addu	gp,t9,v1
    # Line 85
    lw	$t9,12($v0)
    lw	$a1,20($v0)
    mflo	$at
    jalr	$t9
    negu	$a0,$at
    li	$a3,-1
    bne	$v0,$a3,.L0da6ca80
    # Line 86
    ld	$ra,24($sp)
    move	$v0,$zero
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6ca80:
    ld	$t9,0($sp)
    # Line 87
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,8($sp)
    jalr	$t9
    lw	$a1,24($a1)
    ld	$t9,0($sp)
    # Line 88
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,8($sp)
    jalr	$t9
    lw	$a1,36($a1)
    # Line 95
    ld	$ra,24($sp)
    li	$v0,1
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistBlockStateFree

# Function: block_grow_region
# Declared: Line 104 (Source lines: 106-137)
# Address: 0x0da6cac4 - 0x0da6cc80 (Size: 444 bytes, Frame: 208)
.ent block_grow_region
block_grow_region:
    # Line 121
    lw	$v1,4($a1)
    lw	$v0,0($a1)
    subu	$v1,$a0,$v1
    multu	$v0,$v1
    # Line 106
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    move	$s0,$a1
    # Line 121
    lw	$t9,12($a1)
    lw	$a1,20($a1)
    sd	$ra,32($sp)
    sd	$a0,24($sp)
    # Line 109
    lw	$at,__glCurrentContext
    # Line 121
    mflo	$a0
    jalr	$t9
    sd	$at,8($sp)
    li	$a3,-1
    bne	$a3,$v0,.L0da6cb20
    sd	$v0,16($sp)
    ld	$ra,32($sp)
    # Line 122
    move	$v0,$zero
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6cb20:
    # Line 123
    lw	$a1,24($s0)
    ld	$t9,8($sp)
    sd	$s1,48($sp)
    ld	$s1,24($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    addiu	$s1,$s1,31
    srl	$s1,$s1,0x5
    sd	$s1,0($sp)
    sll	$s1,$s1,0x2
    jalr	$t9
    move	$a2,$s1
    bnez	$v0,.L0da6cb70
    sw	$v0,24($s0)
    ld	$ra,32($sp)
    # Line 124
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6cb70:
    ld	$t9,8($sp)
    # Line 125
    move	$a0,$t9
    lw	$t9,8($t9)
    move	$a2,$s1
    jalr	$t9
    lw	$a1,36($s0)
    sw	$v0,36($s0)
    beqz	$v0,.L0da6cc68
    ld	$a0,0($sp)
    # Line 128
    lw	$a1,4($s0)
    addiu	$a2,$a1,31
    srl	$a2,$a2,0x5
    sltu	$at,$a2,$a0
    beqz	$at,.L0da6cc24
    subu	$a5,$a0,$a2
    andi	$a3,$a5,0x1
    beqz	$a3,.L0da6cbd4
    sll	$a1,$a2,0x2
    # Line 129
    lw	$at,36($s0)
    addu	$at,$at,$a1
    sw	$zero,0($at)
    lw	$a4,24($s0)
    addu	$a4,$a4,$a1
    # Line 128
    addiu	$a1,$a1,4
    # Line 129
    sw	$zero,0($a4)
.L0da6cbd4:
    sra	$v1,$a5,0x1
    beqz	$v1,.L0da6cc20
    move	$a2,$a1
    move	$a0,$a2
.L0da6cbe4:
    lw	$a3,36($s0)
    addu	$a3,$a3,$a0
    sw	$zero,0($a3)
    lw	$v1,24($s0)
    addu	$v1,$v1,$a0
    sw	$zero,0($v1)
    lw	$at,36($s0)
    # Line 128
    addiu	$a4,$a0,4
    # Line 129
    addu	$at,$at,$a4
    sw	$zero,0($at)
    lw	$a3,24($s0)
    # Line 128
    addiu	$a0,$a4,4
    # Line 129
    addu	$a3,$a3,$a4
    # Line 128
    bne	$a0,$s1,.L0da6cbe4
    # Line 129
    sw	$zero,0($a3)
.L0da6cc20:
    # Line 128
    lw	$a1,4($s0)
.L0da6cc24:
    ld	$s1,48($sp)
    li	$at,-1
    # Line 132
    ld	$a3,24($sp)
    lw	$a4,8($s0)
    # Line 131
    lw	$v1,28($s0)
    # Line 132
    sw	$a3,4($s0)
    # Line 131
    subu	$a3,$a3,$a1
    addu	$v1,$v1,$a3
    # Line 132
    bne	$a4,$at,.L0da6cc54
    # Line 131
    sw	$v1,28($s0)
    ld	$a4,16($sp)
    # Line 134
    sw	$a4,8($s0)
.L0da6cc54:
    # Line 137
    li	$v0,1
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6cc68:
    ld	$ra,32($sp)
    # Line 126
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end block_grow_region

# Function: __glDlistPreallocBlocks
# Declared: Line 140 (Source lines: 141-147)
# Address: 0x0da6cc80 - 0x0da6cce8 (Size: 104 bytes, Frame: 32)
.globl __glDlistPreallocBlocks
.ent __glDlistPreallocBlocks
__glDlistPreallocBlocks:
    # Line 141
    move	$a5,$a0
    move	$a4,$a1
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lw	$a3,28($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,-21528
    sltu	$at,$a3,$a1
    bnez	$at,.L0da6ccb8
    nop
    # Line 147
    li	$v0,1
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6ccb8:
    # Line 145
    move	$a1,$a5
    lw	$a0,4($a5)
    # lw $t9, -32740($gp) # &sub_0da70000
    sd	$ra,8($sp)
    addu	$a0,$a0,$a4
    addiu	$t9,$t9,-13628
    bal __glDlistBlockStateFree
    subu	$a0,$a0,$a3
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistPreallocBlocks

# Function: __glDlistAllocBlock
# Declared: Line 151 (Source lines: 152-190)
# Address: 0x0da6cce8 - 0x0da6ce64 (Size: 380 bytes, Frame: 48)
.globl __glDlistAllocBlock
.ent __glDlistAllocBlock
__glDlistAllocBlock:
    # Line 152
    li	$a1,-1
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lw	$a7,8($a0)
    lui	$at,0x19
    addiu	$at,$at,-21632
    beq	$a1,$a7,.L0da6ce14
    nop
.L0da6cd10:
    # Line 163
    lw	$v1,28($s0)
    beqzl	$v1,.L0da6cde8
    # Line 167
    move	$a1,$s0
.L0da6cd1c:
    # Line 169
    lw	$a4,4($s0)
    move	$a6,$zero
    lw	$v0,24($s0)
    srl	$a4,$a4,0x5
    beqz	$a4,.L0da6cd6c
    lw	$a0,0($v0)
    bne	$a1,$a0,.L0da6cde0
    move	$a5,$v0
    move	$a5,$v0
    sll	$a0,$a4,0x2
    addu	$a0,$v0,$a0
    lw	$a4,4($a5)
.L0da6cd4c:
    addiu	$a5,$a5,4
    sltu	$a2,$a5,$a0
    beqz	$a2,.L0da6cd74
    addiu	$a6,$a6,1
    beql	$a1,$a4,.L0da6cd4c
    lw	$a4,4($a5)
    b	.L0da6cd78
    # Line 171
    li	$a0,1
.L0da6cd6c:
    # Line 169
    move	$a5,$v0
    move	$a4,$a0
.L0da6cd74:
    # Line 171
    li	$a0,1
.L0da6cd78:
    andi	$a3,$a4,0x1
    beqz	$a3,.L0da6cdac
    # Line 170
    sll	$a1,$a6,0x5
    # Line 172
    addiu	$a1,$a1,1
.L0da6cd88:
    sll	$a0,$a0,0x1
    and	$at,$a4,$a0
    beqz	$at,.L0da6cdac
    nop
    addiu	$a1,$a1,1
    sll	$a0,$a0,0x1
    and	$v1,$a4,$a0
    bnezl	$v1,.L0da6cd88
    addiu	$a1,$a1,1
.L0da6cdac:
    # ld	gp,0(sp)
    # Line 177
    lw	$a3,0($s0)
    multu	$a3,$a1
    # Line 179
    or	$a2,$a4,$a0
    sw	$a2,0($a5)
    # Line 180
    lw	$v1,28($s0)
    addiu	$v1,$v1,-1
    sw	$v1,28($s0)
    # Line 190
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 177
    mflo	$v0
    # Line 190
    jr	$ra
    # Line 177
    addu	$v0,$v0,$a7
.L0da6cde0:
    b	.L0da6cd74
    # Line 169
    move	$a4,$a0
.L0da6cde8:
    # Line 167
    # lw $t9, -32740($gp) # &sub_0da70000
    sd	$ra,16($sp)
    lw	$a0,4($s0)
    addiu	$t9,$t9,-13628
    bal __glDlistBlockStateFree
    addiu	$a0,$a0,32
    li	$a1,-1
    beqz	$v0,.L0da6ce50
    ld	$ra,16($sp)
    b	.L0da6cd1c
    lw	$a7,8($s0)
.L0da6ce14:
    # Line 162
    lw	$t9,12($s0)
    move	$a0,$zero
    sd	$ra,16($sp)
    jal	sub_0da70000
    lw	$a1,20($s0)
    move	$a7,$v0
    sw	$v0,8($s0)
    li	$a1,-1
    bne	$a1,$v0,.L0da6cd10
    ld	$ra,16($sp)
    # Line 163
    li	$v0,-1
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6ce50:
    # Line 167
    li	$v0,-1
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistAllocBlock

# Function: __glDlistFreeBlock
# Declared: Line 193 (Source lines: 206-224)
# Address: 0x0da6ce64 - 0x0da6ceb4 (Size: 80 bytes, Frame: 0)
.globl __glDlistFreeBlock
.ent __glDlistFreeBlock
__glDlistFreeBlock:
    # Line 206
    lw	$at,8($a0)
    lw	$v0,0($a0)
    subu	$at,$a1,$at
    divu	$zero,$at,$v0
    # Line 211
    li	$a2,1
    lw	$a1,24($a0)
    # Line 206
    mflo	$a3
    # Line 211
    sra	$a4,$a3,0x5
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lw	$v1,0($a1)
    sllv	$a2,$a2,$a3
    nor	$a2,$a2,$zero
    and	$v1,$v1,$a2
    sw	$v1,0($a1)
    # Line 212
    lw	$at,28($a0)
    # Line 206
    teq	$v0,$zero,0x7
    # Line 212
    addiu	$at,$at,1
    # Line 224
    jr	$ra
    # Line 212
    sw	$at,28($a0)
.end __glDlistFreeBlock

# Function: __glDlistCompactBlocks
# Declared: Line 226 (Source lines: 227-263)
# Address: 0x0da6ceb4 - 0x0da6d15c (Size: 680 bytes, Frame: 208)
.globl __glDlistCompactBlocks
.ent __glDlistCompactBlocks
__glDlistCompactBlocks:
    # Line 227
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 234
    move	$s0,$zero
    sd	$s5,24($sp)
    # Line 233
    move	$s5,$zero
    sd	$s1,8($sp)
    # Line 227
    move	$s1,$a0
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-22092
    # Line 234
    lw	$a2,4($a0)
    # Line 229
    lw	$v0,__glCurrentContext
    # Line 227
    # addu	gp,t9,at
    # Line 234
    beqz	$a2,.L0da6d010
    sd	$v0,0($sp)
    sd	$ra,40($sp)
    sd	$s7,48($sp)
    b	.L0da6cf18
    li	$s7,1
.L0da6cf04:
    # Line 236
    bne	$s5,$s0,.L0da6d058
    # Line 241
    sra	$a4,$s5,0x1f
.L0da6cf0c:
    # Line 234
    addiu	$s0,$s0,1
    sltu	$v1,$s0,$a2
    beqz	$v1,.L0da6d00c
.L0da6cf18:
    sra	$at,$s0,0x1f
    lw	$a0,24($s1)
    sra	$a7,$s0,0x1f
    xor	$a6,$s0,$a7
    subu	$a6,$a6,$a7
    andi	$a6,$a6,0x1f
    xor	$a6,$a6,$at
    sra	$a7,$s0,0x4
    srl	$a7,$a7,0x1b
    addu	$a7,$a7,$s0
    sra	$a7,$a7,0x5
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lw	$a5,0($a7)
    subu	$a6,$a6,$at
    sllv	$a6,$s7,$a6
    and	$a1,$a6,$a5
    beqz	$a1,.L0da6cf0c
    slt	$at,$s5,$s0
    beqz	$at,.L0da6cf04
    sra	$v0,$s5,0x4
    sra	$a1,$s5,0x1f
    xor	$v1,$s5,$a1
    subu	$v1,$v1,$a1
    sra	$a1,$s5,0x1f
    andi	$v1,$v1,0x1f
    xor	$v1,$v1,$a1
    srl	$v0,$v0,0x1b
    addu	$v0,$v0,$s5
    sra	$v0,$v0,0x5
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    subu	$v1,$v1,$a1
    sllv	$v1,$s7,$v1
    and	$v0,$v0,$v1
    beqz	$v0,.L0da6cf04
    nop
    # Line 236
    addiu	$s5,$s5,1
.L0da6cfb4:
    slt	$v1,$s5,$s0
    sra	$a1,$s5,0x4
    beqz	$v1,.L0da6cf04
    srl	$a1,$a1,0x1b
    sra	$v0,$s5,0x1f
    xor	$at,$s5,$v0
    subu	$at,$at,$v0
    sra	$v0,$s5,0x1f
    addu	$a1,$a1,$s5
    sra	$a1,$a1,0x5
    sll	$a1,$a1,0x2
    andi	$at,$at,0x1f
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    sllv	$at,$s7,$at
    and	$a1,$a1,$at
    bnezl	$a1,.L0da6cfb4
    addiu	$s5,$s5,1
    b	.L0da6cf04
    nop
.L0da6d00c:
    ld	$s7,48($sp)
.L0da6d010:
    # Line 251
    lw	$a1,0($s1)
    lw	$a2,28($s1)
    multu	$a1,$a2
    lw	$t9,12($s1)
    lw	$a1,20($s1)
    mflo	$a0
    jalr	$t9
    negu	$a0,$a0
    li	$at,-1
    bne	$v0,$at,.L0da6d0e4
    ld	$ra,40($sp)
    # Line 253
    move	$v0,$zero
    # ld	gp,16(sp)
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d058:
    # Line 241
    xor	$a3,$s5,$a4
    subu	$a3,$a3,$a4
    sra	$a4,$s5,0x1f
    andi	$a3,$a3,0x1f
    xor	$a3,$a3,$a4
    # Line 240
    nor	$a6,$a6,$zero
    and	$a5,$a6,$a5
    sw	$a5,0($a7)
    # Line 241
    sra	$a5,$s5,0x4
    srl	$a5,$a5,0x1b
    lw	$a2,24($s1)
    addu	$a5,$a5,$s5
    sra	$a5,$a5,0x5
    sll	$a5,$a5,0x2
    addu	$a2,$a2,$a5
    lw	$a1,0($a2)
    subu	$a3,$a3,$a4
    sllv	$a3,$s7,$a3
    or	$a1,$a1,$a3
    sw	$a1,0($a2)
    # Line 242
    lw	$a2,0($s1)
    multu	$s5,$a2
    mflo	$a0
    nop
    nop
    multu	$s0,$a2
    lw	$a4,8($s1)
    lw	$a3,20($s1)
    lw	$t9,16($s1)
    addu	$a0,$a0,$a4
    mflo	$a1
    jalr	$t9
    addu	$a1,$a1,$a4
    b	.L0da6cf0c
    lw	$a2,4($s1)
.L0da6d0e4:
    # Line 258
    lw	$a1,24($s1)
    # Line 255
    lw	$a2,4($s1)
    lw	$a3,28($s1)
    # Line 256
    sw	$zero,28($s1)
    # Line 258
    ld	$t9,0($sp)
    # Line 255
    subu	$a2,$a2,$a3
    sw	$a2,4($s1)
    # Line 258
    move	$a0,$t9
    lw	$t9,8($t9)
    srl	$a2,$a2,0x5
    sll	$a2,$a2,0x2
    jalr	$t9
    addiu	$a2,$a2,4
    sw	$v0,24($s1)
    bnez	$v0,.L0da6d140
    ld	$ra,40($sp)
    # Line 259
    move	$v0,$zero
    # ld	gp,16(sp)
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d140:
    # Line 263
    li	$v0,1
    # ld	gp,16(sp)
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDlistCompactBlocks

# Function: __glDlistIsBlock
# Declared: Line 266 (Source lines: 267-275)
# Address: 0x0da6d15c - 0x0da6d198 (Size: 60 bytes, Frame: 0)
.globl __glDlistIsBlock
.ent __glDlistIsBlock
__glDlistIsBlock:
    # Line 267
    lw	$v0,8($a0)
    slt	$at,$a1,$v0
    bnezl	$at,.L0da6d190
    # Line 273
    move	$v0,$zero
    # Line 267
    lw	$a3,4($a0)
    lw	$a2,0($a0)
    multu	$a2,$a3
    mflo	$v1
    addu	$v1,$v1,$v0
    sltu	$v1,$a1,$v1
    bnez	$v1,.L0da6d190
    # Line 273
    li	$v0,1
    move	$v0,$zero
.L0da6d190:
    # Line 275
    jr	$ra
    nop
.end __glDlistIsBlock

# Function: __glDlistTransientBlock
# Declared: Line 326 (Source lines: 333-343)
# Address: 0x0da6d198 - 0x0da6d1e4 (Size: 76 bytes, Frame: 0)
.globl __glDlistTransientBlock
.ent __glDlistTransientBlock
__glDlistTransientBlock:
    # Line 333
    lw	$a3,8($a0)
    lw	$v0,0($a0)
    subu	$a3,$a1,$a3
    divu	$zero,$a3,$v0
    # Line 338
    lw	$a1,36($a0)
    # Line 333
    mflo	$a3
    # Line 338
    sra	$a2,$a3,0x5
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$v1,0($a1)
    li	$a2,1
    sllv	$a2,$a2,$a3
    or	$v1,$v1,$a2
    sw	$v1,0($a1)
    # Line 339
    lw	$at,40($a0)
    # Line 333
    teq	$v0,$zero,0x7
    # Line 339
    addiu	$at,$at,1
    # Line 343
    jr	$ra
    # Line 339
    sw	$at,40($a0)
.end __glDlistTransientBlock

# Function: __glDlistFreeTransient
# Declared: Line 346 (Source lines: 348-354)
# Address: 0x0da6d1e4 - 0x0da6d260 (Size: 124 bytes, Frame: 0)
.globl __glDlistFreeTransient
.ent __glDlistFreeTransient
__glDlistFreeTransient:
    # Line 348
    lw	$at,4($a0)
    addiu	$at,$at,31
    srl	$at,$at,0x5
    beqz	$at,.L0da6d248
    move	$a2,$zero
    move	$a3,$zero
.L0da6d1fc:
    # Line 349
    lw	$at,24($a0)
    lw	$v0,36($a0)
    addu	$at,$at,$a3
    addu	$v0,$v0,$a3
    lw	$v0,0($v0)
    lw	$a1,0($at)
    nor	$v0,$v0,$zero
    and	$a1,$a1,$v0
    sw	$a1,0($at)
    # Line 350
    lw	$v1,36($a0)
    addu	$v1,$v1,$a3
    sw	$zero,0($v1)
    # Line 348
    lw	$v0,4($a0)
    addiu	$a2,$a2,1
    addiu	$v0,$v0,31
    srl	$v0,$v0,0x5
    sltu	$v0,$a2,$v0
    bnez	$v0,.L0da6d1fc
    addiu	$a3,$a3,4
.L0da6d248:
    # Line 352
    lw	$v0,28($a0)
    lw	$v1,40($a0)
    # Line 353
    sw	$zero,40($a0)
    # Line 352
    addu	$v0,$v0,$v1
    # Line 354
    jr	$ra
    # Line 352
    sw	$v0,28($a0)
.end __glDlistFreeTransient

