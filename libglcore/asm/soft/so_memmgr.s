# Source: ../soft/so_memmgr.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_memmgr.c
# Total Functions: 6

.text

# Function: NewBlock
# Declared: Line 72 (Source lines: 73-86)
# Address: 0x0dac5cb8 - 0x0dac5d54 (Size: 156 bytes, Frame: 48)
.ent NewBlock
NewBlock:
    # Line 73
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    move	$t9,$a0
    # Line 76
    lw	$t9,0($t9)
    sd	$a1,0($sp)
    sd	$ra,24($sp)
    jalr	$t9
    li	$a1,16
    move	$at,$v0
    bnez	$v0,.L0dac5cf4
    sd	$v0,16($sp)
    ld	$ra,24($sp)
    # Line 77
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0dac5cf4:
    # Line 80
    sw	$zero,4($v0)
    # Line 79
    ld	$a1,0($sp)
    # Line 78
    sw	$zero,12($v0)
    # Line 81
    ld	$a0,8($sp)
    # Line 79
    sw	$a1,0($v0)
    # Line 81
    lw	$t9,0($a0)
    jalr	$t9
    nop
    ld	$v1,16($sp)
    beqz	$v0,.L0dac5d30
    sw	$v0,8($v1)
    ld	$ra,24($sp)
    ld	$v0,16($sp)
    # Line 86
    jr	$ra
    addiu	$sp,$sp,48
.L0dac5d30:
    ld	$t9,8($sp)
    # Line 83
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$ra,24($sp)
    # Line 84
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end NewBlock

# Function: DeleteBlock
# Declared: Line 89 (Source lines: 90-93)
# Address: 0x0dac5d54 - 0x0dac5d94 (Size: 64 bytes, Frame: 48)
.ent DeleteBlock
DeleteBlock:
    # Line 90
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 91
    lw	$t9,12($s8)
    sd	$a1,16($sp)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a1,8($a1)
    # Line 92
    lw	$t9,12($s8)
    move	$a0,$s8
    jalr	$t9
    ld	$a1,16($sp)
    ld	$ra,0($sp)
    # Line 93
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DeleteBlock

# Function: __glNewArena
# Declared: Line 98 (Source lines: 99-112)
# Address: 0x0dac5d94 - 0x0dac5e44 (Size: 176 bytes, Frame: 48)
.globl __glNewArena
.ent __glNewArena
__glNewArena:
    # Line 99
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x13
    addiu	$at,$at,6868
    # addu	gp,t9,at
    # Line 103
    lw	$t9,0($a0)
    li	$a1,12
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a0,0($sp)
    move	$a4,$v0
    bnez	$a4,.L0dac5ddc
    sd	$v0,8($sp)
    # Line 104
    ld	$ra,24($sp)
    move	$v0,$zero
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dac5ddc:
    # Line 106
    ld	$v1,0($sp)
    # lw $t9, -32720($gp) # &sub_0dac0000
    lui	$a1,0x4
    move	$a0,$v1
    addiu	$t9,$t9,23736
    bal __glFloorLog2
    # Line 105
    sw	$v1,0($a4)
    # Line 106
    beqz	$v0,.L0dac5e1c
    move	$a4,$v0
    # Line 112
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    # ld	gp,16(sp)
    addiu	$sp,$sp,48
    # Line 111
    sw	$a4,4($v0)
    # Line 112
    jr	$ra
    # Line 111
    sw	$a4,8($v0)
.L0dac5e1c:
    ld	$t9,0($sp)
    # Line 108
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0dac0000
    ld	$a1,8($sp)
    # Line 109
    ld	$ra,24($sp)
    move	$v0,$zero
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glNewArena

# Function: __glDeleteArena
# Declared: Line 118 (Source lines: 119-129)
# Address: 0x0dac5e44 - 0x0dac5ed0 (Size: 140 bytes, Frame: 192)
.globl __glDeleteArena
.ent __glDeleteArena
__glDeleteArena:
    # Line 119
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$s0,16($sp)
    # Line 123
    lw	$s0,0($a0)
    # sd	gp,8(sp)
    # Line 124
    lw	$a1,4($a0)
    # Line 119
    lui	$at,0x13
    addiu	$at,$at,6692
    # Line 124
    beqz	$a1,.L0dac5ea8
    # Line 119
    nop
    sd	$s4,40($sp)
    # Line 124
    la	$s4,sub_0dac0000
    sd	$ra,24($sp)
    sd	$s1,32($sp)
    addiu	$s4,$s4,23892
.L0dac5e88:
    # Line 125
    lw	$s1,12($a1)
    # Line 126
    move	$a0,$s0
    bal __glFloorLog2
    move	$t9,$s4
    # Line 124
    bnez	$s1,.L0dac5e88
    move	$a1,$s1
    ld	$s1,32($sp)
    ld	$s4,40($sp)
.L0dac5ea8:
    # Line 128
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s8
    # ld	gp,8(sp)
    # Line 129
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDeleteArena

# Function: __glArenaAlloc
# Declared: Line 135 (Source lines: 136-172)
# Address: 0x0dac5ed0 - 0x0dac5fc0 (Size: 240 bytes, Frame: 192)
.globl __glArenaAlloc
.ent __glArenaAlloc
__glArenaAlloc:
    # Line 136
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lui	$v0,0x13
    addiu	$v0,$v0,6552
    sd	$s0,24($sp)
    # Line 141
    lw	$a4,8($a0)
    # Line 143
    andi	$a6,$a1,0x7
    subu	$a6,$a1,$a6
    lw	$a5,4($a4)
    lw	$at,0($a4)
    addiu	$s0,$a6,8
    subu	$at,$at,$a5
    sltu	$at,$at,$s0
    beqz	$at,.L0dac5f98
    # Line 136
    addu	$gp,$t9,$v0
    # Line 162
    move	$a1,$s0
    lui	$v0,0x4
    sltu	$v1,$s0,$v0
    beqz	$v1,.L0dac5f38
    # Line 166
    nop	# was lw $t9, -32720($gp) # &sub_0dac0000
    sd	$ra,32($sp)
    sd	$a4,0($sp)
    # Line 163
    move	$a1,$v0
    # Line 166
    # lw $t9, -32720($gp) # &sub_0dac0000
.L0dac5f38:
    sd	$a4,0($sp)
    sd	$ra,32($sp)
    addiu	$t9,$t9,23736
    bal __glFloorLog2
    lw	$a0,0($s1)
    move	$a0,$v0
    bnez	$v0,.L0dac5f70
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    # Line 167
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac5f70:
    ld	$gp,8($sp)
    ld	$at,0($sp)
    # Line 169
    sw	$a0,12($at)
    # Line 170
    sw	$a0,8($s1)
    # Line 172
    ld	$s1,16($sp)
    # Line 171
    sw	$s0,4($a0)
    # Line 172
    ld	$s0,24($sp)
    lw	$v0,8($a0)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac5f98:
    # Line 154
    addu	$v1,$a6,$a5
    ld	$gp,8($sp)
    # Line 155
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    lw	$v0,8($a4)
    addiu	$sp,$sp,64
    # Line 154
    addiu	$v1,$v1,8
    sw	$v1,4($a4)
    # Line 155
    jr	$ra
    addu	$v0,$v0,$a5
.end __glArenaAlloc

# Function: __glArenaFreeAll
# Declared: Line 179 (Source lines: 180-194)
# Address: 0x0dac5fc0 - 0x0dac603c (Size: 124 bytes, Frame: 192)
.globl __glArenaFreeAll
.ent __glArenaFreeAll
__glArenaFreeAll:
    # Line 180
    addiu	$sp,$sp,-64
    # sd	gp,0(sp)
    lui	$v0,0x13
    sd	$s4,8($sp)
    # Line 184
    lw	$s4,0($a0)
    # Line 185
    lw	$at,4($a0)
    # Line 180
    addiu	$v0,$v0,6312
    # addu	gp,t9,v0
    # Line 186
    lw	$a1,12($at)
    # Line 188
    sw	$zero,4($at)
    # Line 187
    sw	$zero,12($at)
    # Line 190
    beqz	$a1,.L0dac602c
    # Line 189
    sw	$at,8($a0)
    sd	$s1,32($sp)
    # Line 190
    la	$s1,sub_0dac0000
    sd	$s0,24($sp)
    sd	$ra,16($sp)
    addiu	$s1,$s1,23892
.L0dac6008:
    # Line 191
    lw	$s0,12($a1)
    # Line 192
    move	$a0,$s4
    bal __glFloorLog2
    move	$t9,$s1
    # Line 190
    bnez	$s0,.L0dac6008
    move	$a1,$s0
    ld	$s1,32($sp)
    ld	$ra,16($sp)
    ld	$s0,24($sp)
.L0dac602c:
    # ld	gp,0(sp)
    # Line 194
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glArenaFreeAll

