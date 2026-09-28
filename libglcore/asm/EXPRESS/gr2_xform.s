# Source: ../EXPRESS/gr2_xform.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_xform.c
# Total Functions: 23

.text

# Function: __glExpEnableNormalize
# Declared: Line 28 (Source lines: 29-37)
# Address: 0x0da6be7c - 0x0da6bebc (Size: 64 bytes, Frame: 0)
.globl __glExpEnableNormalize
.ent __glExpEnableNormalize
__glExpEnableNormalize:
    # Line 29
    lui	$a3,0x4
    lui	$a2,0x4
    lw	$at,1696($a0)
    ori	$a2,$a2,0x2208
    lui	$v0,0x40
    and	$at,$at,$v0
    beqz	$at,.L0da6beb0
    ori	$a3,$a3,0x238c
    # Line 31
    li	$at,1
    sw	$at,0($a3)
    # Line 32
    sw	$at,0($a2)
    # Line 37
    jr	$ra
    nop
.L0da6beb0:
    # Line 34
    sw	$zero,0($a3)
    # Line 37
    jr	$ra
    # Line 35
    sw	$zero,0($a2)
.end __glExpEnableNormalize

# Function: __glExpUpdateMatrixState
# Declared: Line 39 (Source lines: 43-51)
# Address: 0x0da6bebc - 0x0da6c064 (Size: 424 bytes, Frame: 0)
.globl __glExpUpdateMatrixState
.ent __glExpUpdateMatrixState
__glExpUpdateMatrixState:
    # Line 43
    lw	$a1,29664($a0)
    # Line 44
    lwc1	$f2,0($a1)
    lui	$v1,0x4
    ori	$v1,$v1,0x20dc
    swc1	$f2,0($v1)
    lwc1	$f1,4($a1)
    swc1	$f1,0($v1)
    lwc1	$f0,8($a1)
    swc1	$f0,0($v1)
    lwc1	$f4,12($a1)
    swc1	$f4,0($v1)
    lwc1	$f3,16($a1)
    swc1	$f3,0($v1)
    lwc1	$f2,20($a1)
    swc1	$f2,0($v1)
    lwc1	$f1,24($a1)
    swc1	$f1,0($v1)
    lwc1	$f0,28($a1)
    swc1	$f0,0($v1)
    lwc1	$f4,32($a1)
    swc1	$f4,0($v1)
    lwc1	$f3,36($a1)
    swc1	$f3,0($v1)
    lwc1	$f2,40($a1)
    swc1	$f2,0($v1)
    lwc1	$f1,44($a1)
    swc1	$f1,0($v1)
    lwc1	$f0,48($a1)
    swc1	$f0,0($v1)
    lwc1	$f4,52($a1)
    swc1	$f4,0($v1)
    lwc1	$f3,56($a1)
    swc1	$f3,0($v1)
    lwc1	$f2,60($a1)
    swc1	$f2,0($v1)
    # Line 46
    lw	$v1,29672($a0)
    # Line 47
    lwc1	$f1,0($v1)
    lui	$v0,0x4
    ori	$v0,$v0,0x20e0
    swc1	$f1,0($v0)
    lwc1	$f0,4($v1)
    swc1	$f0,0($v0)
    lwc1	$f4,8($v1)
    swc1	$f4,0($v0)
    lwc1	$f3,12($v1)
    swc1	$f3,0($v0)
    lwc1	$f2,16($v1)
    swc1	$f2,0($v0)
    lwc1	$f1,20($v1)
    swc1	$f1,0($v0)
    lwc1	$f0,24($v1)
    swc1	$f0,0($v0)
    lwc1	$f4,28($v1)
    swc1	$f4,0($v0)
    lwc1	$f3,32($v1)
    swc1	$f3,0($v0)
    lwc1	$f2,36($v1)
    swc1	$f2,0($v0)
    lwc1	$f1,40($v1)
    swc1	$f1,0($v0)
    lwc1	$f0,44($v1)
    swc1	$f0,0($v0)
    lwc1	$f4,48($v1)
    swc1	$f4,0($v0)
    lwc1	$f3,52($v1)
    swc1	$f3,0($v0)
    lwc1	$f2,56($v1)
    swc1	$f2,0($v0)
    lwc1	$f1,60($v1)
    swc1	$f1,0($v0)
    # Line 49
    lw	$v0,29684($a0)
    # Line 50
    lwc1	$f0,0($v0)
    lui	$at,0x4
    ori	$at,$at,0x20e8
    swc1	$f0,0($at)
    lwc1	$f4,4($v0)
    swc1	$f4,0($at)
    lwc1	$f3,8($v0)
    swc1	$f3,0($at)
    lwc1	$f2,12($v0)
    swc1	$f2,0($at)
    lwc1	$f1,16($v0)
    swc1	$f1,0($at)
    lwc1	$f0,20($v0)
    swc1	$f0,0($at)
    lwc1	$f4,24($v0)
    swc1	$f4,0($at)
    lwc1	$f3,28($v0)
    swc1	$f3,0($at)
    lwc1	$f2,32($v0)
    swc1	$f2,0($at)
    lwc1	$f1,36($v0)
    swc1	$f1,0($at)
    lwc1	$f0,40($v0)
    swc1	$f0,0($at)
    lwc1	$f4,44($v0)
    swc1	$f4,0($at)
    lwc1	$f3,48($v0)
    swc1	$f3,0($at)
    lwc1	$f2,52($v0)
    swc1	$f2,0($at)
    lwc1	$f1,56($v0)
    swc1	$f1,0($at)
    lwc1	$f0,60($v0)
    # Line 51
    jr	$ra
    # Line 50
    swc1	$f0,0($at)
.end __glExpUpdateMatrixState

# Function: __glExpPassMatrix
# Declared: Line 53 (Source lines: 54-81)
# Address: 0x0da6c064 - 0x0da6c2f0 (Size: 652 bytes, Frame: 48)
.globl __glExpPassMatrix
.ent __glExpPassMatrix
__glExpPassMatrix:
    # Line 58
    li	$at,5888
    # Line 54
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    # Line 58
    lw	$a1,1648($a0)
    # Line 54
    lui	$v0,0x19
    addiu	$v0,$v0,-18428
    # Line 58
    beq	$a1,$at,.L0da6c0a0
    # Line 54
    nop
    # Line 58
    li	$v1,5889
    beq	$a1,$v1,.L0da6c1b4
    li	$a2,5890
    beq	$a1,$a2,.L0da6c260
.L0da6c094:
    nop
    # Line 81
    jr	$ra
    addiu	$sp,$sp,48
.L0da6c0a0:
    # Line 60
    lw	$a3,29664($a0)
    sd	$a0,0($sp)
    move	$a1,$a3
    # Line 62
    lwc1	$f0,60($a3)
    lbu	$at,268($a3)
    lwc1	$f1,56($a3)
    lwc1	$f2,52($a3)
    lwc1	$f3,48($a3)
    lwc1	$f4,44($a3)
    lwc1	$f5,40($a3)
    lwc1	$f6,36($a3)
    lwc1	$f7,32($a3)
    lwc1	$f8,28($a3)
    lwc1	$f9,24($a3)
    lwc1	$f10,20($a3)
    lui	$v0,0x4
    ori	$v0,$v0,0x20dc
    lwc1	$f11,16($a3)
    lwc1	$f12,12($a3)
    lwc1	$f15,0($a3)
    lwc1	$f14,4($a3)
    lwc1	$f13,8($a3)
    swc1	$f15,0($v0)
    swc1	$f14,0($v0)
    swc1	$f13,0($v0)
    swc1	$f12,0($v0)
    swc1	$f11,0($v0)
    swc1	$f10,0($v0)
    swc1	$f9,0($v0)
    swc1	$f8,0($v0)
    swc1	$f7,0($v0)
    swc1	$f6,0($v0)
    swc1	$f5,0($v0)
    swc1	$f4,0($v0)
    swc1	$f3,0($v0)
    swc1	$f2,0($v0)
    swc1	$f1,0($v0)
    beqz	$at,.L0da6c160
    swc1	$f0,0($v0)
    ld	$t9,0($sp)
    # Line 64
    move	$a0,$t9
    lw	$t9,11908($t9)
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$a3,0($sp)
    ld	$ra,16($sp)
    lw	$a3,29664($a3)
.L0da6c160:
    # Line 67
    lwc1	$f0,128($a3)
    lwc1	$f1,124($a3)
    lwc1	$f2,120($a3)
    lwc1	$f3,112($a3)
    lwc1	$f4,108($a3)
    lwc1	$f5,104($a3)
    lwc1	$f6,96($a3)
    lwc1	$f7,92($a3)
    lwc1	$f8,88($a3)
    lui	$at,0x4
    ori	$at,$at,0x20e4
    swc1	$f8,0($at)
    swc1	$f7,0($at)
    swc1	$f6,0($at)
    swc1	$f5,0($at)
    swc1	$f4,0($at)
    swc1	$f3,0($at)
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 68
    b	.L0da6c094
    # Line 67
    swc1	$f0,0($at)
.L0da6c1b4:
    # Line 70
    lw	$a2,29672($a0)
    # Line 71
    lw	$v1,1708($a0)
    lwc1	$f9,60($a2)
    lwc1	$f10,56($a2)
    lwc1	$f11,52($a2)
    lwc1	$f12,48($a2)
    lwc1	$f13,44($a2)
    lwc1	$f14,40($a2)
    lwc1	$f15,36($a2)
    lwc1	$f0,32($a2)
    lwc1	$f1,28($a2)
    lwc1	$f2,24($a2)
    lwc1	$f3,20($a2)
    lui	$v0,0x4
    ori	$v0,$v0,0x20e0
    lwc1	$f4,16($a2)
    lwc1	$f5,12($a2)
    lwc1	$f8,0($a2)
    lwc1	$f7,4($a2)
    lwc1	$f6,8($a2)
    swc1	$f8,0($v0)
    swc1	$f7,0($v0)
    swc1	$f6,0($v0)
    swc1	$f5,0($v0)
    swc1	$f4,0($v0)
    swc1	$f3,0($v0)
    swc1	$f2,0($v0)
    swc1	$f1,0($v0)
    swc1	$f0,0($v0)
    swc1	$f15,0($v0)
    swc1	$f14,0($v0)
    swc1	$f13,0($v0)
    swc1	$f12,0($v0)
    swc1	$f11,0($v0)
    swc1	$f10,0($v0)
    beqz	$v1,.L0da6c094
    swc1	$f9,0($v0)
    # Line 73
    # lw $t9, -31084($gp) # &__glExpPassClipPlanes
    sd	$ra,16($sp)
    bal __glExpPassClipPlanes
    nop
    b	.L0da6c094
    ld	$ra,16($sp)
.L0da6c260:
    # Line 78
    lui	$at,0x4
    # Line 77
    lw	$v0,29684($a0)
    # Line 78
    lwc1	$f3,0($v0)
    ori	$at,$at,0x20e8
    swc1	$f3,0($at)
    lwc1	$f2,4($v0)
    swc1	$f2,0($at)
    lwc1	$f1,8($v0)
    swc1	$f1,0($at)
    lwc1	$f0,12($v0)
    swc1	$f0,0($at)
    lwc1	$f3,16($v0)
    swc1	$f3,0($at)
    lwc1	$f2,20($v0)
    swc1	$f2,0($at)
    lwc1	$f1,24($v0)
    swc1	$f1,0($at)
    lwc1	$f0,28($v0)
    swc1	$f0,0($at)
    lwc1	$f3,32($v0)
    swc1	$f3,0($at)
    lwc1	$f2,36($v0)
    swc1	$f2,0($at)
    lwc1	$f1,40($v0)
    swc1	$f1,0($at)
    lwc1	$f0,44($v0)
    swc1	$f0,0($at)
    lwc1	$f3,48($v0)
    swc1	$f3,0($at)
    lwc1	$f2,52($v0)
    swc1	$f2,0($at)
    lwc1	$f1,56($v0)
    swc1	$f1,0($at)
    lwc1	$f0,60($v0)
    b	.L0da6c094
    swc1	$f0,0($at)
.end __glExpPassMatrix

# Function: __glexpim_Frustum
# Declared: Line 83 (Source lines: 86-91)
# Address: 0x0da6c2f0 - 0x0da6c338 (Size: 72 bytes, Frame: 208)
.globl __glexpim_Frustum
.ent __glexpim_Frustum
__glexpim_Frustum:
    # Line 86
    addiu	$sp,$sp,-80
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19080
    # addu	gp,t9,at
    # Line 89
    # lw $t9, -26012($gp) # &__glim_Frustum
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Frustum
    # Line 87
    lw	$s8,__glCurrentContext
    # Line 90
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 91
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Frustum

# Function: __glexpim_LoadIdentity
# Declared: Line 93 (Source lines: 94-99)
# Address: 0x0da6c338 - 0x0da6c380 (Size: 72 bytes, Frame: 32)
.globl __glexpim_LoadIdentity
.ent __glexpim_LoadIdentity
__glexpim_LoadIdentity:
    # Line 94
    addiu	$sp,$sp,-32
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19152
    # addu	gp,t9,at
    # Line 97
    # lw $t9, -26064($gp) # &__glim_LoadIdentity
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_LoadIdentity
    # Line 95
    lw	$s8,__glCurrentContext
    # Line 98
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 99
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_LoadIdentity

# Function: __glexpim_LoadMatrixf
# Declared: Line 101 (Source lines: 102-107)
# Address: 0x0da6c380 - 0x0da6c3c8 (Size: 72 bytes, Frame: 48)
.globl __glexpim_LoadMatrixf
.ent __glexpim_LoadMatrixf
__glexpim_LoadMatrixf:
    # Line 102
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19224
    # addu	gp,t9,at
    # Line 105
    # lw $t9, -26060($gp) # &__glim_LoadMatrixf
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_LoadMatrixf
    # Line 103
    lw	$s8,__glCurrentContext
    # Line 106
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 107
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_LoadMatrixf

# Function: __glexpim_LoadMatrixd
# Declared: Line 109 (Source lines: 110-115)
# Address: 0x0da6c3c8 - 0x0da6c410 (Size: 72 bytes, Frame: 48)
.globl __glexpim_LoadMatrixd
.ent __glexpim_LoadMatrixd
__glexpim_LoadMatrixd:
    # Line 110
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19296
    # addu	gp,t9,at
    # Line 113
    # lw $t9, -26056($gp) # &__glim_LoadMatrixd
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_LoadMatrixd
    # Line 111
    lw	$s8,__glCurrentContext
    # Line 114
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 115
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_LoadMatrixd

# Function: __glexpim_MatrixMode
# Declared: Line 117 (Source lines: 118-120)
# Address: 0x0da6c410 - 0x0da6c444 (Size: 52 bytes, Frame: 32)
.globl __glexpim_MatrixMode
.ent __glexpim_MatrixMode
__glexpim_MatrixMode:
    # Line 118
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-19368
    # addu	gp,t9,at
    # Line 119
    # lw $t9, -26068($gp) # &__glim_MatrixMode
    sd	$ra,0($sp)
    jal	__glim_MatrixMode
    nop
    # Line 120
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_MatrixMode

# Function: __glexpim_MultMatrixf
# Declared: Line 122 (Source lines: 123-128)
# Address: 0x0da6c444 - 0x0da6c48c (Size: 72 bytes, Frame: 48)
.globl __glexpim_MultMatrixf
.ent __glexpim_MultMatrixf
__glexpim_MultMatrixf:
    # Line 123
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19420
    # addu	gp,t9,at
    # Line 126
    # lw $t9, -26052($gp) # &__glim_MultMatrixf
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_MultMatrixf
    # Line 124
    lw	$s8,__glCurrentContext
    # Line 127
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 128
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_MultMatrixf

# Function: __glexpim_MultMatrixd
# Declared: Line 130 (Source lines: 131-136)
# Address: 0x0da6c48c - 0x0da6c4d4 (Size: 72 bytes, Frame: 48)
.globl __glexpim_MultMatrixd
.ent __glexpim_MultMatrixd
__glexpim_MultMatrixd:
    # Line 131
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19492
    # addu	gp,t9,at
    # Line 134
    # lw $t9, -26048($gp) # &__glim_MultMatrixd
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_MultMatrixd
    # Line 132
    lw	$s8,__glCurrentContext
    # Line 135
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 136
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_MultMatrixd

# Function: __glexpim_Ortho
# Declared: Line 138 (Source lines: 141-146)
# Address: 0x0da6c4d4 - 0x0da6c51c (Size: 72 bytes, Frame: 208)
.globl __glexpim_Ortho
.ent __glexpim_Ortho
__glexpim_Ortho:
    # Line 141
    addiu	$sp,$sp,-80
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19564
    # addu	gp,t9,at
    # Line 144
    # lw $t9, -26008($gp) # &__glim_Ortho
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Ortho
    # Line 142
    lw	$s8,__glCurrentContext
    # Line 145
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 146
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Ortho

# Function: __glexpim_DepthRange
# Declared: Line 148 (Source lines: 149-154)
# Address: 0x0da6c51c - 0x0da6c564 (Size: 72 bytes, Frame: 48)
.globl __glexpim_DepthRange
.ent __glexpim_DepthRange
__glexpim_DepthRange:
    # Line 149
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19636
    # addu	gp,t9,at
    # Line 152
    # lw $t9, -25992($gp) # &__glim_DepthRange
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_DepthRange
    # Line 150
    lw	$s8,__glCurrentContext
    # Line 153
    # lw $t9, -32404($gp) # &__glExpUpdateViewport
    jal	__glExpUpdateViewport
    move	$a0,$s8
    # Line 154
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_DepthRange

# Function: __glexpim_PopMatrix
# Declared: Line 156 (Source lines: 157-162)
# Address: 0x0da6c564 - 0x0da6c5ac (Size: 72 bytes, Frame: 32)
.globl __glexpim_PopMatrix
.ent __glexpim_PopMatrix
__glexpim_PopMatrix:
    # Line 157
    addiu	$sp,$sp,-32
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19708
    # addu	gp,t9,at
    # Line 160
    # lw $t9, -26016($gp) # &__glim_PopMatrix
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_PopMatrix
    # Line 158
    lw	$s8,__glCurrentContext
    # Line 161
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 162
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_PopMatrix

# Function: __glexpim_PushMatrix
# Declared: Line 164 (Source lines: 165-167)
# Address: 0x0da6c5ac - 0x0da6c5e0 (Size: 52 bytes, Frame: 16)
.globl __glexpim_PushMatrix
.ent __glexpim_PushMatrix
__glexpim_PushMatrix:
    # Line 165
    addiu	$sp,$sp,-16
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-19780
    # addu	gp,t9,at
    # Line 166
    # lw $t9, -26020($gp) # &__glim_PushMatrix
    sd	$ra,0($sp)
    jal	__glim_PushMatrix
    nop
    # Line 167
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glexpim_PushMatrix

# Function: __glexpim_Rotated
# Declared: Line 169 (Source lines: 170-175)
# Address: 0x0da6c5e0 - 0x0da6c628 (Size: 72 bytes, Frame: 192)
.globl __glexpim_Rotated
.ent __glexpim_Rotated
__glexpim_Rotated:
    # Line 170
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19832
    # addu	gp,t9,at
    # Line 173
    # lw $t9, -26040($gp) # &__glim_Rotated
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Rotated
    # Line 171
    lw	$s8,__glCurrentContext
    # Line 174
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 175
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Rotated

# Function: __glexpim_Rotatef
# Declared: Line 177 (Source lines: 178-183)
# Address: 0x0da6c628 - 0x0da6c670 (Size: 72 bytes, Frame: 192)
.globl __glexpim_Rotatef
.ent __glexpim_Rotatef
__glexpim_Rotatef:
    # Line 178
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19904
    # addu	gp,t9,at
    # Line 181
    # lw $t9, -26044($gp) # &__glim_Rotatef
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Rotatef
    # Line 179
    lw	$s8,__glCurrentContext
    # Line 182
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 183
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Rotatef

# Function: __glexpim_Scaled
# Declared: Line 185 (Source lines: 186-191)
# Address: 0x0da6c670 - 0x0da6c6b8 (Size: 72 bytes, Frame: 192)
.globl __glexpim_Scaled
.ent __glexpim_Scaled
__glexpim_Scaled:
    # Line 186
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-19976
    # addu	gp,t9,at
    # Line 189
    # lw $t9, -26032($gp) # &__glim_Scaled
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Scaled
    # Line 187
    lw	$s8,__glCurrentContext
    # Line 190
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 191
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Scaled

# Function: __glexpim_Scalef
# Declared: Line 193 (Source lines: 194-199)
# Address: 0x0da6c6b8 - 0x0da6c700 (Size: 72 bytes, Frame: 192)
.globl __glexpim_Scalef
.ent __glexpim_Scalef
__glexpim_Scalef:
    # Line 194
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-20048
    # addu	gp,t9,at
    # Line 197
    # lw $t9, -26036($gp) # &__glim_Scalef
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Scalef
    # Line 195
    lw	$s8,__glCurrentContext
    # Line 198
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 199
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Scalef

# Function: __glexpim_Translated
# Declared: Line 201 (Source lines: 202-207)
# Address: 0x0da6c700 - 0x0da6c748 (Size: 72 bytes, Frame: 192)
.globl __glexpim_Translated
.ent __glexpim_Translated
__glexpim_Translated:
    # Line 202
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-20120
    # addu	gp,t9,at
    # Line 205
    # lw $t9, -26024($gp) # &__glim_Translated
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Translated
    # Line 203
    lw	$s8,__glCurrentContext
    # Line 206
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 207
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Translated

# Function: __glexpim_Translatef
# Declared: Line 209 (Source lines: 210-215)
# Address: 0x0da6c748 - 0x0da6c79c (Size: 84 bytes, Frame: 192)
.globl __glexpim_Translatef
.ent __glexpim_Translatef
__glexpim_Translatef:
    # Line 213
    cvt.d.s	$f14,$f14
    cvt.d.s	$f13,$f13
    cvt.d.s	$f12,$f12
    # Line 210
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-20192
    # addu	gp,t9,at
    # Line 213
    # lw $t9, -26024($gp) # &__glim_Translated
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glim_Translated
    # Line 211
    lw	$s8,__glCurrentContext
    # Line 214
    # lw $t9, -31160($gp) # &__glExpPassMatrix
    bal __glExpPassMatrix
    move	$a0,$s8
    # Line 215
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Translatef

# Function: __glExpEnableClipPlanes
# Declared: Line 219 (Source lines: 225-231)
# Address: 0x0da6c79c - 0x0da6c7e0 (Size: 68 bytes, Frame: 0)
.globl __glExpEnableClipPlanes
.ent __glExpEnableClipPlanes
__glExpEnableClipPlanes:
    # Line 226
    lw	$at,3332($a0)
    move	$a3,$zero
    blez	$at,.L0da6c7d8
    # Line 225
    lw	$a2,1708($a0)
    # Line 226
    lui	$a4,0x4
    ori	$a4,$a4,0x20b8
.L0da6c7b4:
    # Line 227
    andi	$v0,$a2,0x1
    sltu	$v0,$zero,$v0
    sw	$v0,0($a4)
    # Line 228
    sw	$a3,0($a4)
    # Line 226
    lw	$at,3332($a0)
    addiu	$a3,$a3,1
    slt	$at,$a3,$at
    bnez	$at,.L0da6c7b4
    # Line 229
    sra	$a2,$a2,0x1
.L0da6c7d8:
    # Line 231
    jr	$ra
    nop
.end __glExpEnableClipPlanes

# Function: __glExpPassClipPlanes
# Declared: Line 233 (Source lines: 239-247)
# Address: 0x0da6c7e0 - 0x0da6c848 (Size: 104 bytes, Frame: 0)
.globl __glExpPassClipPlanes
.ent __glExpPassClipPlanes
__glExpPassClipPlanes:
    # Line 239
    lw	$at,3332($a0)
    lui	$a4,0x4
    lui	$a5,0x4
    blez	$at,.L0da6c840
    move	$a2,$zero
    ori	$a5,$a5,0x277c
    ori	$a4,$a4,0x20bc
    move	$a3,$zero
.L0da6c800:
    # Line 240
    lw	$v0,1652($a0)
    # Line 241
    sw	$a2,0($a4)
    # Line 240
    addu	$v0,$v0,$a3
    # Line 242
    lwc1	$f3,0($v0)
    swc1	$f3,0($a5)
    # Line 243
    lwc1	$f2,4($v0)
    swc1	$f2,0($a5)
    # Line 244
    lwc1	$f1,8($v0)
    swc1	$f1,0($a5)
    # Line 245
    lwc1	$f0,12($v0)
    swc1	$f0,0($a5)
    # Line 239
    lw	$at,3332($a0)
    addiu	$a2,$a2,1
    slt	$at,$a2,$at
    bnez	$at,.L0da6c800
    addiu	$a3,$a3,16
.L0da6c840:
    # Line 247
    jr	$ra
    nop
.end __glExpPassClipPlanes

# Function: __glexpim_ClipPlane
# Declared: Line 249 (Source lines: 250-278)
# Address: 0x0da6c848 - 0x0da6c98c (Size: 324 bytes, Frame: 208)
.globl __glexpim_ClipPlane
.ent __glexpim_ClipPlane
__glexpim_ClipPlane:
    # Line 253
    li	$v0,1
    # Line 250
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    # Line 253
    lw	$s0,__glCurrentContext
    sd	$s1,32($sp)
    # Line 250
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 253
    lw	$at,__glBeginMode
    # Line 250
    lui	$v1,0x19
    addiu	$v1,$v1,-20448
    # Line 253
    beq	$at,$v0,.L0da6c964
    # Line 250
    addu	$gp,$t9,$v1
    # Line 253
    lw	$at,3332($s0)
    addiu	$a2,$s1,-12288
    sltu	$a2,$a2,$at
    beqz	$a2,.L0da6c940
    # Line 257
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 260
    ldc1	$f3,0($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    # Line 261
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    # Line 262
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    # Line 263
    ldc1	$f0,24($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 268
    lw	$a4,29664($s0)
    lbu	$v0,268($a4)
    beqz	$v0,.L0da6c8e4
    sd	$ra,48($sp)
    # Line 270
    lw	$t9,11908($s0)
    sd	$a4,16($sp)
    move	$a0,$s0
    jal	__glSetError
    move	$a1,$a4
    ld	$a4,16($sp)
.L0da6c8e4:
    # Line 272
    addiu	$a2,$a4,88
    addiu	$a1,$sp,0
    lw	$a0,1652($s0)
    sll	$a3,$s1,0x4
    lw	$t9,168($a4)
    addu	$a0,$a0,$a3
    lui	$a3,0x3
    jalr	$t9
    subu	$a0,$a0,$a3
    # Line 275
    li	$a5,2
    sw	$a5,__glBeginMode
    lw	$a4,11764($s0)
    # Line 277
    # lw $t9, -31084($gp) # &__glExpPassClipPlanes
    move	$a0,$s0
    # Line 275
    ori	$a4,$a4,0x1
    # Line 277
    bal __glExpPassClipPlanes
    # Line 275
    sw	$a4,11764($s0)
    ld	$ra,48($sp)
    # Line 278
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6c940:
    sd	$ra,48($sp)
    # Line 257
    jal	__glExpPassClipPlanes
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 258
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6c964:
    # Line 253
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_ClipPlane

