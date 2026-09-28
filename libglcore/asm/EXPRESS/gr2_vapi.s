# Source: ../EXPRESS/gr2_vapi.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_vapi.c
# Total Functions: 86

.text

# Function: __glExpPassColor
# Declared: Line 33 (Source lines: 34-43)
# Address: 0x0da6aeb4 - 0x0da6aeec (Size: 56 bytes, Frame: 0)
.globl __glExpPassColor
.ent __glExpPassColor
__glExpPassColor:
    # Line 34
    lbu	$at,3104($a0)
    # Line 38
    lui	$v0,0x4
    # Line 34
    beqz	$at,.L0da6aee4
    # Line 38
    ori	$v0,$v0,0xa608
    lwc1	$f3,408($a0)
    swc1	$f3,0($v0)
    # Line 39
    lwc1	$f2,412($a0)
    swc1	$f2,0($v0)
    # Line 40
    lwc1	$f1,416($a0)
    swc1	$f1,0($v0)
    # Line 41
    lwc1	$f0,420($a0)
    swc1	$f0,0($v0)
.L0da6aee4:
    # Line 43
    jr	$ra
    nop
.end __glExpPassColor

# Function: __glExpPassIndex
# Declared: Line 45 (Source lines: 46-52)
# Address: 0x0da6aeec - 0x0da6af0c (Size: 32 bytes, Frame: 0)
.globl __glExpPassIndex
.ent __glExpPassIndex
__glExpPassIndex:
    # Line 46
    lbu	$at,3105($a0)
    # Line 50
    lui	$v0,0x4
    # Line 46
    beqz	$at,.L0da6af04
    # Line 50
    ori	$v0,$v0,0xe3f8
    lwc1	$f0,424($a0)
    swc1	$f0,0($v0)
.L0da6af04:
    # Line 52
    jr	$ra
    nop
.end __glExpPassIndex

# Function: __glExpPassNormal
# Declared: Line 54 (Source lines: 58-61)
# Address: 0x0da6af0c - 0x0da6af30 (Size: 36 bytes, Frame: 0)
.globl __glExpPassNormal
.ent __glExpPassNormal
__glExpPassNormal:
    # Line 58
    lwc1	$f2,184($a0)
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f2,0($at)
    # Line 59
    lwc1	$f1,188($a0)
    swc1	$f1,0($at)
    # Line 60
    lwc1	$f0,192($a0)
    # Line 61
    jr	$ra
    # Line 60
    swc1	$f0,0($at)
.end __glExpPassNormal

# Function: __glExpPassEdgeFlag
# Declared: Line 63 (Source lines: 65-66)
# Address: 0x0da6af30 - 0x0da6af44 (Size: 20 bytes, Frame: 0)
.globl __glExpPassEdgeFlag
.ent __glExpPassEdgeFlag
__glExpPassEdgeFlag:
    # Line 65
    lui	$v0,0x4
    lbu	$at,429($a0)
    ori	$v0,$v0,0x23d8
    # Line 66
    jr	$ra
    # Line 65
    sw	$at,0($v0)
.end __glExpPassEdgeFlag

# Function: __glExpGetColor
# Declared: Line 68 (Source lines: 69-88)
# Address: 0x0da6af44 - 0x0da6b040 (Size: 252 bytes, Frame: 48)
.globl __glExpGetColor
.ent __glExpGetColor
__glExpGetColor:
    # Line 69
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lbu	$at,3104($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,-14044
    beqz	$at,.L0da6b010
    nop
    # Line 76
    lui	$a2,0x6
    ori	$a2,$a2,0xc040
    lui	$v1,0x4
    ori	$v1,$v1,0x228c
    # Line 75
    lui	$a1,0x4
    ori	$a1,$a1,0x23a4
    sw	$zero,0($a1)
    b	.L0da6af98
    # Line 76
    sw	$zero,0($v1)
.L0da6af84:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6b01c
    nop
.L0da6af98:
    lw	$v0,0($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da6af84
    # Line 78
    lui	$a4,0x1
    ori	$a4,$a4,0x2088
    lwc1	$f3,0($a4)
    # Line 79
    lui	$a3,0x1
    # Line 78
    swc1	$f3,408($a0)
    # Line 79
    ori	$a3,$a3,0x208c
    lwc1	$f2,0($a3)
    # Line 84
    lui	$v1,0x4
    # Line 80
    lui	$a2,0x1
    # Line 79
    swc1	$f2,412($a0)
    # Line 80
    ori	$a2,$a2,0x2090
    lwc1	$f1,0($a2)
    # Line 84
    ori	$v1,$v1,0x22f4
    # Line 81
    lui	$a1,0x1
    # Line 80
    swc1	$f1,416($a0)
    # Line 81
    ori	$a1,$a1,0x2094
    lwc1	$f0,0($a1)
    # Line 83
    lui	$a1,0x6
    ori	$a1,$a1,0xd000
    sw	$zero,0($a1)
    # Line 81
    swc1	$f0,420($a0)
    # Line 84
    sw	$zero,0($v1)
    # Line 86
    lw	$t9,12008($a0)
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0da6b010:
    # ld	gp,8(sp)
    # Line 88
    jr	$ra
    addiu	$sp,$sp,48
.L0da6b01c:
    # Line 76
    lw	$v0,0($sp)
    addiu	$v0,$v0,1
    sw	$v0,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6b01c
    nop
    b	.L0da6af98
    nop
.end __glExpGetColor

# Function: __glExpGetIndex
# Declared: Line 90 (Source lines: 91-105)
# Address: 0x0da6b040 - 0x0da6b0e4 (Size: 164 bytes, Frame: 32)
.globl __glExpGetIndex
.ent __glExpGetIndex
__glExpGetIndex:
    # Line 91
    lbu	$at,3105($a0)
    beqz	$at,.L0da6b0b8
    addiu	$sp,$sp,-32
    # Line 98
    lui	$a2,0x6
    ori	$a2,$a2,0xc040
    lui	$v0,0x4
    ori	$v0,$v0,0x228c
    # Line 97
    lui	$v1,0x4
    ori	$v1,$v1,0x23a4
    sw	$zero,0($v1)
    b	.L0da6b084
    # Line 98
    sw	$zero,0($v0)
.L0da6b070:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6b0c0
    nop
.L0da6b084:
    lw	$v0,0($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da6b070
    # Line 100
    lui	$a1,0x1
    ori	$a1,$a1,0x2088
    lwc1	$f0,0($a1)
    # Line 103
    lui	$v1,0x4
    ori	$v1,$v1,0x22f4
    # Line 100
    swc1	$f0,424($a0)
    # Line 102
    lui	$a1,0x6
    ori	$a1,$a1,0xd000
    sw	$zero,0($a1)
    # Line 103
    sw	$zero,0($v1)
.L0da6b0b8:
    # Line 105
    jr	$ra
    addiu	$sp,$sp,32
.L0da6b0c0:
    # Line 98
    lw	$v0,0($sp)
    addiu	$v0,$v0,1
    sw	$v0,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6b0c0
    nop
    b	.L0da6b084
    nop
.end __glExpGetIndex

# Function: __glExpGetNormal
# Declared: Line 107 (Source lines: 108-122)
# Address: 0x0da6b0e4 - 0x0da6b1a0 (Size: 188 bytes, Frame: 32)
.globl __glExpGetNormal
.ent __glExpGetNormal
__glExpGetNormal:
    # Line 108
    addiu	$sp,$sp,-32
    # Line 114
    lui	$a2,0x6
    ori	$a2,$a2,0xc040
    lui	$at,0x4
    ori	$at,$at,0x228c
    # Line 113
    lui	$v0,0x4
    ori	$v0,$v0,0x23a8
    sw	$zero,0($v0)
    b	.L0da6b120
    # Line 114
    sw	$zero,0($at)
.L0da6b10c:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da6b17c
    nop
.L0da6b120:
    lw	$v0,0($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da6b10c
    # Line 116
    lui	$v0,0x1
    ori	$v0,$v0,0x2088
    lwc1	$f2,0($v0)
    # Line 117
    lui	$at,0x1
    # Line 116
    swc1	$f2,184($a0)
    # Line 117
    ori	$at,$at,0x208c
    lwc1	$f1,0($at)
    # Line 121
    lui	$v1,0x4
    # Line 118
    lui	$a1,0x1
    # Line 117
    swc1	$f1,188($a0)
    # Line 118
    ori	$a1,$a1,0x2090
    lwc1	$f0,0($a1)
    # Line 121
    ori	$v1,$v1,0x22f4
    # Line 122
    addiu	$sp,$sp,32
    # Line 118
    swc1	$f0,192($a0)
    # Line 120
    lui	$a0,0x6
    ori	$a0,$a0,0xd000
    sw	$zero,0($a0)
    # Line 122
    jr	$ra
    # Line 121
    sw	$zero,0($v1)
.L0da6b17c:
    # Line 114
    lw	$a1,0($sp)
    addiu	$a1,$a1,1
    sw	$a1,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da6b17c
    nop
    b	.L0da6b120
    nop
.end __glExpGetNormal

# Function: __glExpGetEdgeFlag
# Declared: Line 125 (Source lines: 128-128)
# Address: 0x0da6b1a0 - 0x0da6b1a8 (Size: 8 bytes, Frame: 0)
.globl __glExpGetEdgeFlag
.ent __glExpGetEdgeFlag
__glExpGetEdgeFlag:
    # Line 128
    jr	$ra
    nop
.end __glExpGetEdgeFlag

# Function: __glexpim_EdgeFlag
# Declared: Line 135 (Source lines: 138-140)
# Address: 0x0da6b1a8 - 0x0da6b1c0 (Size: 24 bytes, Frame: 0)
.globl __glexpim_EdgeFlag
.ent __glexpim_EdgeFlag
__glexpim_EdgeFlag:
    # Line 138
    lw	$v0,__glCurrentContext
    # Line 139
    lui	$at,0x4
    ori	$at,$at,0x23d8
    # Line 138
    sb	$a0,429($v0)
    # Line 140
    jr	$ra
    # Line 139
    sw	$a0,0($at)
.end __glexpim_EdgeFlag

# Function: __glexpim_EdgeFlagv
# Declared: Line 142 (Source lines: 145-147)
# Address: 0x0da6b1c0 - 0x0da6b1e0 (Size: 32 bytes, Frame: 0)
.globl __glexpim_EdgeFlagv
.ent __glexpim_EdgeFlagv
__glexpim_EdgeFlagv:
    # Line 145
    lw	$a1,__glCurrentContext
    lbu	$v1,0($a0)
    sb	$v1,429($a1)
    # Line 146
    lui	$v0,0x4
    lbu	$at,0($a0)
    ori	$v0,$v0,0x23d8
    # Line 147
    jr	$ra
    # Line 146
    sw	$at,0($v0)
.end __glexpim_EdgeFlagv

# Function: __glexpim_Color3ub
# Declared: Line 151 (Source lines: 153-157)
# Address: 0x0da6b1e0 - 0x0da6b1f8 (Size: 24 bytes, Frame: 0)
.globl __glexpim_Color3ub
.ent __glexpim_Color3ub
__glexpim_Color3ub:
    # Line 153
    lui	$at,0x5
    ori	$at,$at,0x8608
    sw	$a0,0($at)
    sw	$a1,0($at)
    # Line 157
    jr	$ra
    # Line 153
    sw	$a2,0($at)
.end __glexpim_Color3ub

# Function: __glexpim_Color3ubv
# Declared: Line 159 (Source lines: 161-165)
# Address: 0x0da6b1f8 - 0x0da6b21c (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3ubv
.ent __glexpim_Color3ubv
__glexpim_Color3ubv:
    # Line 161
    lbu	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a1,0($v0)
    lbu	$v1,1($a0)
    sw	$v1,0($v0)
    lbu	$at,2($a0)
    # Line 165
    jr	$ra
    # Line 161
    sw	$at,0($v0)
.end __glexpim_Color3ubv

# Function: __glexpim_Color3b
# Declared: Line 167 (Source lines: 169-173)
# Address: 0x0da6b21c - 0x0da6b240 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3b
.ent __glexpim_Color3b
__glexpim_Color3b:
    # Line 169
    sll	$at,$a2,0x1
    sll	$v1,$a1,0x1
    sll	$a0,$a0,0x1
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 173
    jr	$ra
    # Line 169
    sw	$at,0($v0)
.end __glexpim_Color3b

# Function: __glexpim_Color3bv
# Declared: Line 175 (Source lines: 177-181)
# Address: 0x0da6b240 - 0x0da6b270 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3bv
.ent __glexpim_Color3bv
__glexpim_Color3bv:
    # Line 177
    lb	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sll	$a1,$a1,0x1
    sw	$a1,0($v0)
    lb	$v1,1($a0)
    sll	$v1,$v1,0x1
    sw	$v1,0($v0)
    lb	$at,2($a0)
    sll	$at,$at,0x1
    # Line 181
    jr	$ra
    # Line 177
    sw	$at,0($v0)
.end __glexpim_Color3bv

# Function: __glexpim_Color3d
# Declared: Line 183 (Source lines: 185-186)
# Address: 0x0da6b270 - 0x0da6b294 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3d
.ent __glexpim_Color3d
__glexpim_Color3d:
    # Line 185
    cvt.s.d	$f0,$f14
    cvt.s.d	$f2,$f12
    cvt.s.d	$f1,$f13
    lui	$at,0x4
    ori	$at,$at,0x8608
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 186
    jr	$ra
    # Line 185
    swc1	$f0,0($at)
.end __glexpim_Color3d

# Function: __glexpim_Color3dv
# Declared: Line 188 (Source lines: 190-191)
# Address: 0x0da6b294 - 0x0da6b2c4 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3dv
.ent __glexpim_Color3dv
__glexpim_Color3dv:
    # Line 190
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    lui	$at,0x4
    ori	$at,$at,0x8608
    swc1	$f2,0($at)
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($at)
    ldc1	$f0,16($a0)
    cvt.s.d	$f0,$f0
    # Line 191
    jr	$ra
    # Line 190
    swc1	$f0,0($at)
.end __glexpim_Color3dv

# Function: __glexpim_Color3f
# Declared: Line 193 (Source lines: 195-196)
# Address: 0x0da6b2c4 - 0x0da6b2dc (Size: 24 bytes, Frame: 0)
.globl __glexpim_Color3f
.ent __glexpim_Color3f
__glexpim_Color3f:
    # Line 195
    lui	$at,0x4
    ori	$at,$at,0x8608
    swc1	$f12,0($at)
    swc1	$f13,0($at)
    # Line 196
    jr	$ra
    # Line 195
    swc1	$f14,0($at)
.end __glexpim_Color3f

# Function: __glexpim_Color3fv
# Declared: Line 198 (Source lines: 200-201)
# Address: 0x0da6b2dc - 0x0da6b300 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3fv
.ent __glexpim_Color3fv
__glexpim_Color3fv:
    # Line 200
    lwc1	$f2,0($a0)
    lui	$at,0x4
    ori	$at,$at,0x8608
    swc1	$f2,0($at)
    lwc1	$f1,4($a0)
    swc1	$f1,0($at)
    lwc1	$f0,8($a0)
    # Line 201
    jr	$ra
    # Line 200
    swc1	$f0,0($at)
.end __glexpim_Color3fv

# Function: __glexpim_Color3i
# Declared: Line 203 (Source lines: 205-209)
# Address: 0x0da6b300 - 0x0da6b324 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3i
.ent __glexpim_Color3i
__glexpim_Color3i:
    # Line 205
    sra	$at,$a2,0x17
    sra	$v1,$a1,0x17
    sra	$a0,$a0,0x17
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 209
    jr	$ra
    # Line 205
    sw	$at,0($v0)
.end __glexpim_Color3i

# Function: __glexpim_Color3iv
# Declared: Line 211 (Source lines: 213-217)
# Address: 0x0da6b324 - 0x0da6b354 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3iv
.ent __glexpim_Color3iv
__glexpim_Color3iv:
    # Line 213
    lw	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sra	$a1,$a1,0x17
    sw	$a1,0($v0)
    lw	$v1,4($a0)
    sra	$v1,$v1,0x17
    sw	$v1,0($v0)
    lw	$at,8($a0)
    sra	$at,$at,0x17
    # Line 217
    jr	$ra
    # Line 213
    sw	$at,0($v0)
.end __glexpim_Color3iv

# Function: __glexpim_Color3ui
# Declared: Line 219 (Source lines: 221-225)
# Address: 0x0da6b354 - 0x0da6b378 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3ui
.ent __glexpim_Color3ui
__glexpim_Color3ui:
    # Line 221
    srl	$at,$a2,0x18
    srl	$v1,$a1,0x18
    srl	$a0,$a0,0x18
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 225
    jr	$ra
    # Line 221
    sw	$at,0($v0)
.end __glexpim_Color3ui

# Function: __glexpim_Color3uiv
# Declared: Line 227 (Source lines: 229-233)
# Address: 0x0da6b378 - 0x0da6b3a8 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3uiv
.ent __glexpim_Color3uiv
__glexpim_Color3uiv:
    # Line 229
    lw	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    srl	$a1,$a1,0x18
    sw	$a1,0($v0)
    lw	$v1,4($a0)
    srl	$v1,$v1,0x18
    sw	$v1,0($v0)
    lw	$at,8($a0)
    srl	$at,$at,0x18
    # Line 233
    jr	$ra
    # Line 229
    sw	$at,0($v0)
.end __glexpim_Color3uiv

# Function: __glexpim_Color3s
# Declared: Line 235 (Source lines: 237-241)
# Address: 0x0da6b3a8 - 0x0da6b3cc (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3s
.ent __glexpim_Color3s
__glexpim_Color3s:
    # Line 237
    sra	$at,$a2,0x7
    sra	$v1,$a1,0x7
    sra	$a0,$a0,0x7
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 241
    jr	$ra
    # Line 237
    sw	$at,0($v0)
.end __glexpim_Color3s

# Function: __glexpim_Color3sv
# Declared: Line 243 (Source lines: 245-249)
# Address: 0x0da6b3cc - 0x0da6b3fc (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3sv
.ent __glexpim_Color3sv
__glexpim_Color3sv:
    # Line 245
    lh	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sra	$a1,$a1,0x7
    sw	$a1,0($v0)
    lh	$v1,2($a0)
    sra	$v1,$v1,0x7
    sw	$v1,0($v0)
    lh	$at,4($a0)
    sra	$at,$at,0x7
    # Line 249
    jr	$ra
    # Line 245
    sw	$at,0($v0)
.end __glexpim_Color3sv

# Function: __glexpim_Color3us
# Declared: Line 251 (Source lines: 253-257)
# Address: 0x0da6b3fc - 0x0da6b420 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Color3us
.ent __glexpim_Color3us
__glexpim_Color3us:
    # Line 253
    srl	$at,$a2,0x8
    srl	$v1,$a1,0x8
    srl	$a0,$a0,0x8
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 257
    jr	$ra
    # Line 253
    sw	$at,0($v0)
.end __glexpim_Color3us

# Function: __glexpim_Color3usv
# Declared: Line 259 (Source lines: 261-265)
# Address: 0x0da6b420 - 0x0da6b450 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Color3usv
.ent __glexpim_Color3usv
__glexpim_Color3usv:
    # Line 261
    lhu	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x8608
    srl	$a1,$a1,0x8
    sw	$a1,0($v0)
    lhu	$v1,2($a0)
    srl	$v1,$v1,0x8
    sw	$v1,0($v0)
    lhu	$at,4($a0)
    srl	$at,$at,0x8
    # Line 265
    jr	$ra
    # Line 261
    sw	$at,0($v0)
.end __glexpim_Color3usv

# Function: __glexpim_Color4ub
# Declared: Line 269 (Source lines: 271-276)
# Address: 0x0da6b450 - 0x0da6b46c (Size: 28 bytes, Frame: 0)
.globl __glexpim_Color4ub
.ent __glexpim_Color4ub
__glexpim_Color4ub:
    # Line 271
    lui	$at,0x5
    ori	$at,$at,0xa608
    sw	$a0,0($at)
    sw	$a1,0($at)
    sw	$a2,0($at)
    # Line 276
    jr	$ra
    # Line 271
    sw	$a3,0($at)
.end __glexpim_Color4ub

# Function: __glexpim_Color4ubv
# Declared: Line 278 (Source lines: 280-285)
# Address: 0x0da6b46c - 0x0da6b498 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4ubv
.ent __glexpim_Color4ubv
__glexpim_Color4ubv:
    # Line 280
    lbu	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$at,0($v0)
    lbu	$a1,1($a0)
    sw	$a1,0($v0)
    lbu	$v1,2($a0)
    sw	$v1,0($v0)
    lbu	$at,3($a0)
    # Line 285
    jr	$ra
    # Line 280
    sw	$at,0($v0)
.end __glexpim_Color4ubv

# Function: __glexpim_Color4b
# Declared: Line 287 (Source lines: 289-294)
# Address: 0x0da6b498 - 0x0da6b4c4 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4b
.ent __glexpim_Color4b
__glexpim_Color4b:
    # Line 289
    sll	$at,$a3,0x1
    sll	$a1,$a1,0x1
    sll	$v1,$a2,0x1
    sll	$a2,$a0,0x1
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$a2,0($v0)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    # Line 294
    jr	$ra
    # Line 289
    sw	$at,0($v0)
.end __glexpim_Color4b

# Function: __glexpim_Color4bv
# Declared: Line 296 (Source lines: 298-303)
# Address: 0x0da6b4c4 - 0x0da6b500 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4bv
.ent __glexpim_Color4bv
__glexpim_Color4bv:
    # Line 298
    lb	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sll	$at,$at,0x1
    sw	$at,0($v0)
    lb	$a1,1($a0)
    sll	$a1,$a1,0x1
    sw	$a1,0($v0)
    lb	$v1,2($a0)
    sll	$v1,$v1,0x1
    sw	$v1,0($v0)
    lb	$at,3($a0)
    sll	$at,$at,0x1
    # Line 303
    jr	$ra
    # Line 298
    sw	$at,0($v0)
.end __glexpim_Color4bv

# Function: __glexpim_Color4d
# Declared: Line 305 (Source lines: 307-308)
# Address: 0x0da6b500 - 0x0da6b52c (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4d
.ent __glexpim_Color4d
__glexpim_Color4d:
    # Line 307
    cvt.s.d	$f0,$f15
    cvt.s.d	$f1,$f14
    cvt.s.d	$f3,$f12
    cvt.s.d	$f2,$f13
    lui	$at,0x4
    ori	$at,$at,0xa608
    swc1	$f3,0($at)
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 308
    jr	$ra
    # Line 307
    swc1	$f0,0($at)
.end __glexpim_Color4d

# Function: __glexpim_Color4dv
# Declared: Line 310 (Source lines: 312-313)
# Address: 0x0da6b52c - 0x0da6b568 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4dv
.ent __glexpim_Color4dv
__glexpim_Color4dv:
    # Line 312
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    lui	$at,0x4
    ori	$at,$at,0xa608
    swc1	$f3,0($at)
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($at)
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($at)
    ldc1	$f0,24($a0)
    cvt.s.d	$f0,$f0
    # Line 313
    jr	$ra
    # Line 312
    swc1	$f0,0($at)
.end __glexpim_Color4dv

# Function: __glexpim_Color4f
# Declared: Line 315 (Source lines: 317-318)
# Address: 0x0da6b568 - 0x0da6b584 (Size: 28 bytes, Frame: 0)
.globl __glexpim_Color4f
.ent __glexpim_Color4f
__glexpim_Color4f:
    # Line 317
    lui	$at,0x4
    ori	$at,$at,0xa608
    swc1	$f12,0($at)
    swc1	$f13,0($at)
    swc1	$f14,0($at)
    # Line 318
    jr	$ra
    # Line 317
    swc1	$f15,0($at)
.end __glexpim_Color4f

# Function: __glexpim_Color4fv
# Declared: Line 320 (Source lines: 322-323)
# Address: 0x0da6b584 - 0x0da6b5b0 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4fv
.ent __glexpim_Color4fv
__glexpim_Color4fv:
    # Line 322
    lwc1	$f3,0($a0)
    lui	$at,0x4
    ori	$at,$at,0xa608
    swc1	$f3,0($at)
    lwc1	$f2,4($a0)
    swc1	$f2,0($at)
    lwc1	$f1,8($a0)
    swc1	$f1,0($at)
    lwc1	$f0,12($a0)
    # Line 323
    jr	$ra
    # Line 322
    swc1	$f0,0($at)
.end __glexpim_Color4fv

# Function: __glexpim_Color4i
# Declared: Line 325 (Source lines: 327-332)
# Address: 0x0da6b5b0 - 0x0da6b5dc (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4i
.ent __glexpim_Color4i
__glexpim_Color4i:
    # Line 327
    sra	$at,$a3,0x17
    sra	$a1,$a1,0x17
    sra	$v1,$a2,0x17
    sra	$a2,$a0,0x17
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$a2,0($v0)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    # Line 332
    jr	$ra
    # Line 327
    sw	$at,0($v0)
.end __glexpim_Color4i

# Function: __glexpim_Color4iv
# Declared: Line 334 (Source lines: 336-341)
# Address: 0x0da6b5dc - 0x0da6b618 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4iv
.ent __glexpim_Color4iv
__glexpim_Color4iv:
    # Line 336
    lw	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sra	$at,$at,0x17
    sw	$at,0($v0)
    lw	$a1,4($a0)
    sra	$a1,$a1,0x17
    sw	$a1,0($v0)
    lw	$v1,8($a0)
    sra	$v1,$v1,0x17
    sw	$v1,0($v0)
    lw	$at,12($a0)
    sra	$at,$at,0x17
    # Line 341
    jr	$ra
    # Line 336
    sw	$at,0($v0)
.end __glexpim_Color4iv

# Function: __glexpim_Color4ui
# Declared: Line 343 (Source lines: 345-350)
# Address: 0x0da6b618 - 0x0da6b644 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4ui
.ent __glexpim_Color4ui
__glexpim_Color4ui:
    # Line 345
    srl	$at,$a3,0x18
    srl	$a1,$a1,0x18
    srl	$v1,$a2,0x18
    srl	$a2,$a0,0x18
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$a2,0($v0)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    # Line 350
    jr	$ra
    # Line 345
    sw	$at,0($v0)
.end __glexpim_Color4ui

# Function: __glexpim_Color4uiv
# Declared: Line 352 (Source lines: 354-359)
# Address: 0x0da6b644 - 0x0da6b680 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4uiv
.ent __glexpim_Color4uiv
__glexpim_Color4uiv:
    # Line 354
    lw	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    srl	$at,$at,0x18
    sw	$at,0($v0)
    lw	$a1,4($a0)
    srl	$a1,$a1,0x18
    sw	$a1,0($v0)
    lw	$v1,8($a0)
    srl	$v1,$v1,0x18
    sw	$v1,0($v0)
    lw	$at,12($a0)
    srl	$at,$at,0x18
    # Line 359
    jr	$ra
    # Line 354
    sw	$at,0($v0)
.end __glexpim_Color4uiv

# Function: __glexpim_Color4s
# Declared: Line 361 (Source lines: 363-368)
# Address: 0x0da6b680 - 0x0da6b6ac (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4s
.ent __glexpim_Color4s
__glexpim_Color4s:
    # Line 363
    sra	$at,$a3,0x7
    sra	$a1,$a1,0x7
    sra	$v1,$a2,0x7
    sra	$a2,$a0,0x7
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$a2,0($v0)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    # Line 368
    jr	$ra
    # Line 363
    sw	$at,0($v0)
.end __glexpim_Color4s

# Function: __glexpim_Color4sv
# Declared: Line 370 (Source lines: 372-377)
# Address: 0x0da6b6ac - 0x0da6b6e8 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4sv
.ent __glexpim_Color4sv
__glexpim_Color4sv:
    # Line 372
    lh	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sra	$at,$at,0x7
    sw	$at,0($v0)
    lh	$a1,2($a0)
    sra	$a1,$a1,0x7
    sw	$a1,0($v0)
    lh	$v1,4($a0)
    sra	$v1,$v1,0x7
    sw	$v1,0($v0)
    lh	$at,6($a0)
    sra	$at,$at,0x7
    # Line 377
    jr	$ra
    # Line 372
    sw	$at,0($v0)
.end __glexpim_Color4sv

# Function: __glexpim_Color4us
# Declared: Line 379 (Source lines: 381-386)
# Address: 0x0da6b6e8 - 0x0da6b714 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Color4us
.ent __glexpim_Color4us
__glexpim_Color4us:
    # Line 381
    srl	$at,$a3,0x8
    srl	$a1,$a1,0x8
    srl	$v1,$a2,0x8
    srl	$a2,$a0,0x8
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    sw	$a2,0($v0)
    sw	$a1,0($v0)
    sw	$v1,0($v0)
    # Line 386
    jr	$ra
    # Line 381
    sw	$at,0($v0)
.end __glexpim_Color4us

# Function: __glexpim_Color4usv
# Declared: Line 388 (Source lines: 390-395)
# Address: 0x0da6b714 - 0x0da6b750 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Color4usv
.ent __glexpim_Color4usv
__glexpim_Color4usv:
    # Line 390
    lhu	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0xa608
    srl	$at,$at,0x8
    sw	$at,0($v0)
    lhu	$a1,2($a0)
    srl	$a1,$a1,0x8
    sw	$a1,0($v0)
    lhu	$v1,4($a0)
    srl	$v1,$v1,0x8
    sw	$v1,0($v0)
    lhu	$at,6($a0)
    srl	$at,$at,0x8
    # Line 395
    jr	$ra
    # Line 390
    sw	$at,0($v0)
.end __glexpim_Color4usv

# Function: __glexpim_Indexd
# Declared: Line 399 (Source lines: 401-402)
# Address: 0x0da6b750 - 0x0da6b764 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Indexd
.ent __glexpim_Indexd
__glexpim_Indexd:
    # Line 401
    cvt.s.d	$f0,$f12
    lui	$at,0x4
    ori	$at,$at,0xe3f8
    # Line 402
    jr	$ra
    # Line 401
    swc1	$f0,0($at)
.end __glexpim_Indexd

# Function: __glexpim_Indexf
# Declared: Line 404 (Source lines: 406-407)
# Address: 0x0da6b764 - 0x0da6b774 (Size: 16 bytes, Frame: 0)
.globl __glexpim_Indexf
.ent __glexpim_Indexf
__glexpim_Indexf:
    # Line 406
    lui	$at,0x4
    ori	$at,$at,0xe3f8
    # Line 407
    jr	$ra
    # Line 406
    swc1	$f12,0($at)
.end __glexpim_Indexf

# Function: __glexpim_Indexi
# Declared: Line 409 (Source lines: 411-412)
# Address: 0x0da6b774 - 0x0da6b784 (Size: 16 bytes, Frame: 0)
.globl __glexpim_Indexi
.ent __glexpim_Indexi
__glexpim_Indexi:
    # Line 411
    lui	$at,0x5
    ori	$at,$at,0xe3f8
    # Line 412
    jr	$ra
    # Line 411
    sw	$a0,0($at)
.end __glexpim_Indexi

# Function: __glexpim_Indexs
# Declared: Line 414 (Source lines: 416-417)
# Address: 0x0da6b784 - 0x0da6b794 (Size: 16 bytes, Frame: 0)
.globl __glexpim_Indexs
.ent __glexpim_Indexs
__glexpim_Indexs:
    # Line 416
    lui	$at,0x5
    ori	$at,$at,0xe3f8
    # Line 417
    jr	$ra
    # Line 416
    sw	$a0,0($at)
.end __glexpim_Indexs

# Function: __glexpim_Indexub
# Declared: Line 419 (Source lines: 422-423)
# Address: 0x0da6b794 - 0x0da6b7a4 (Size: 16 bytes, Frame: 0)
.globl __glexpim_Indexub
.ent __glexpim_Indexub
__glexpim_Indexub:
    # Line 422
    lui	$at,0x5
    ori	$at,$at,0xe3f8
    # Line 423
    jr	$ra
    # Line 422
    sw	$a0,0($at)
.end __glexpim_Indexub

# Function: __glexpim_Indexdv
# Declared: Line 425 (Source lines: 427-428)
# Address: 0x0da6b7a4 - 0x0da6b7bc (Size: 24 bytes, Frame: 0)
.globl __glexpim_Indexdv
.ent __glexpim_Indexdv
__glexpim_Indexdv:
    # Line 427
    ldc1	$f0,0($a0)
    cvt.s.d	$f0,$f0
    lui	$at,0x4
    ori	$at,$at,0xe3f8
    # Line 428
    jr	$ra
    # Line 427
    swc1	$f0,0($at)
.end __glexpim_Indexdv

# Function: __glexpim_Indexfv
# Declared: Line 430 (Source lines: 432-433)
# Address: 0x0da6b7bc - 0x0da6b7d0 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Indexfv
.ent __glexpim_Indexfv
__glexpim_Indexfv:
    # Line 432
    lui	$at,0x4
    lwc1	$f0,0($a0)
    ori	$at,$at,0xe3f8
    # Line 433
    jr	$ra
    # Line 432
    swc1	$f0,0($at)
.end __glexpim_Indexfv

# Function: __glexpim_Indexiv
# Declared: Line 435 (Source lines: 437-438)
# Address: 0x0da6b7d0 - 0x0da6b7e4 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Indexiv
.ent __glexpim_Indexiv
__glexpim_Indexiv:
    # Line 437
    lui	$v0,0x5
    lw	$at,0($a0)
    ori	$v0,$v0,0xe3f8
    # Line 438
    jr	$ra
    # Line 437
    sw	$at,0($v0)
.end __glexpim_Indexiv

# Function: __glexpim_Indexsv
# Declared: Line 440 (Source lines: 442-443)
# Address: 0x0da6b7e4 - 0x0da6b7f8 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Indexsv
.ent __glexpim_Indexsv
__glexpim_Indexsv:
    # Line 442
    lui	$v0,0x5
    lh	$at,0($a0)
    ori	$v0,$v0,0xe3f8
    # Line 443
    jr	$ra
    # Line 442
    sw	$at,0($v0)
.end __glexpim_Indexsv

# Function: __glexpim_Indexubv
# Declared: Line 445 (Source lines: 448-449)
# Address: 0x0da6b7f8 - 0x0da6b80c (Size: 20 bytes, Frame: 0)
.globl __glexpim_Indexubv
.ent __glexpim_Indexubv
__glexpim_Indexubv:
    # Line 448
    lui	$v0,0x5
    lbu	$at,0($a0)
    ori	$v0,$v0,0xe3f8
    # Line 449
    jr	$ra
    # Line 448
    sw	$at,0($v0)
.end __glexpim_Indexubv

# Function: __glexpim_Vertex2dv
# Declared: Line 453 (Source lines: 455-456)
# Address: 0x0da6b80c - 0x0da6b830 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Vertex2dv
.ent __glexpim_Vertex2dv
__glexpim_Vertex2dv:
    # Line 455
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    lui	$at,0x4
    ori	$at,$at,0x698c
    swc1	$f1,0($at)
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    # Line 456
    jr	$ra
    # Line 455
    swc1	$f0,0($at)
.end __glexpim_Vertex2dv

# Function: __glexpim_Vertex2fv
# Declared: Line 458 (Source lines: 460-461)
# Address: 0x0da6b830 - 0x0da6b84c (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex2fv
.ent __glexpim_Vertex2fv
__glexpim_Vertex2fv:
    # Line 460
    lwc1	$f1,0($a0)
    lui	$at,0x4
    ori	$at,$at,0x698c
    swc1	$f1,0($at)
    lwc1	$f0,4($a0)
    # Line 461
    jr	$ra
    # Line 460
    swc1	$f0,0($at)
.end __glexpim_Vertex2fv

# Function: __glexpim_Vertex2d
# Declared: Line 463 (Source lines: 465-466)
# Address: 0x0da6b84c - 0x0da6b868 (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex2d
.ent __glexpim_Vertex2d
__glexpim_Vertex2d:
    # Line 465
    cvt.s.d	$f1,$f12
    lui	$at,0x4
    cvt.s.d	$f0,$f13
    ori	$at,$at,0x698c
    swc1	$f1,0($at)
    # Line 466
    jr	$ra
    # Line 465
    swc1	$f0,0($at)
.end __glexpim_Vertex2d

# Function: __glexpim_Vertex2f
# Declared: Line 468 (Source lines: 470-471)
# Address: 0x0da6b868 - 0x0da6b87c (Size: 20 bytes, Frame: 0)
.globl __glexpim_Vertex2f
.ent __glexpim_Vertex2f
__glexpim_Vertex2f:
    # Line 470
    lui	$at,0x4
    ori	$at,$at,0x698c
    swc1	$f12,0($at)
    # Line 471
    jr	$ra
    # Line 470
    swc1	$f13,0($at)
.end __glexpim_Vertex2f

# Function: __glexpim_Vertex2i
# Declared: Line 473 (Source lines: 475-476)
# Address: 0x0da6b87c - 0x0da6b890 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Vertex2i
.ent __glexpim_Vertex2i
__glexpim_Vertex2i:
    # Line 475
    lui	$at,0x5
    ori	$at,$at,0x698c
    sw	$a0,0($at)
    # Line 476
    jr	$ra
    # Line 475
    sw	$a1,0($at)
.end __glexpim_Vertex2i

# Function: __glexpim_Vertex2iv
# Declared: Line 478 (Source lines: 480-481)
# Address: 0x0da6b890 - 0x0da6b8ac (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex2iv
.ent __glexpim_Vertex2iv
__glexpim_Vertex2iv:
    # Line 480
    lw	$v1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x698c
    sw	$v1,0($v0)
    lw	$at,4($a0)
    # Line 481
    jr	$ra
    # Line 480
    sw	$at,0($v0)
.end __glexpim_Vertex2iv

# Function: __glexpim_Vertex2s
# Declared: Line 483 (Source lines: 485-486)
# Address: 0x0da6b8ac - 0x0da6b8c0 (Size: 20 bytes, Frame: 0)
.globl __glexpim_Vertex2s
.ent __glexpim_Vertex2s
__glexpim_Vertex2s:
    # Line 485
    lui	$at,0x5
    ori	$at,$at,0x698c
    sw	$a0,0($at)
    # Line 486
    jr	$ra
    # Line 485
    sw	$a1,0($at)
.end __glexpim_Vertex2s

# Function: __glexpim_Vertex2sv
# Declared: Line 488 (Source lines: 490-491)
# Address: 0x0da6b8c0 - 0x0da6b8dc (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex2sv
.ent __glexpim_Vertex2sv
__glexpim_Vertex2sv:
    # Line 490
    lh	$v1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x698c
    sw	$v1,0($v0)
    lh	$at,2($a0)
    # Line 491
    jr	$ra
    # Line 490
    sw	$at,0($v0)
.end __glexpim_Vertex2sv

# Function: __glexpim_Vertex3dv
# Declared: Line 495 (Source lines: 497-498)
# Address: 0x0da6b8dc - 0x0da6b90c (Size: 48 bytes, Frame: 0)
.globl __glexpim_Vertex3dv
.ent __glexpim_Vertex3dv
__glexpim_Vertex3dv:
    # Line 497
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    lui	$at,0x4
    ori	$at,$at,0x498c
    swc1	$f2,0($at)
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($at)
    ldc1	$f0,16($a0)
    cvt.s.d	$f0,$f0
    # Line 498
    jr	$ra
    # Line 497
    swc1	$f0,0($at)
.end __glexpim_Vertex3dv

# Function: __glexpim_Vertex3fv
# Declared: Line 500 (Source lines: 502-503)
# Address: 0x0da6b90c - 0x0da6b930 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Vertex3fv
.ent __glexpim_Vertex3fv
__glexpim_Vertex3fv:
    # Line 502
    lwc1	$f2,0($a0)
    lui	$at,0x4
    ori	$at,$at,0x498c
    swc1	$f2,0($at)
    lwc1	$f1,4($a0)
    swc1	$f1,0($at)
    lwc1	$f0,8($a0)
    # Line 503
    jr	$ra
    # Line 502
    swc1	$f0,0($at)
.end __glexpim_Vertex3fv

# Function: __glexpim_Vertex3d
# Declared: Line 505 (Source lines: 507-508)
# Address: 0x0da6b930 - 0x0da6b954 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Vertex3d
.ent __glexpim_Vertex3d
__glexpim_Vertex3d:
    # Line 507
    cvt.s.d	$f0,$f14
    cvt.s.d	$f2,$f12
    cvt.s.d	$f1,$f13
    lui	$at,0x4
    ori	$at,$at,0x498c
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 508
    jr	$ra
    # Line 507
    swc1	$f0,0($at)
.end __glexpim_Vertex3d

# Function: __glexpim_Vertex3f
# Declared: Line 510 (Source lines: 512-513)
# Address: 0x0da6b954 - 0x0da6b96c (Size: 24 bytes, Frame: 0)
.globl __glexpim_Vertex3f
.ent __glexpim_Vertex3f
__glexpim_Vertex3f:
    # Line 512
    lui	$at,0x4
    ori	$at,$at,0x498c
    swc1	$f12,0($at)
    swc1	$f13,0($at)
    # Line 513
    jr	$ra
    # Line 512
    swc1	$f14,0($at)
.end __glexpim_Vertex3f

# Function: __glexpim_Vertex3i
# Declared: Line 515 (Source lines: 517-518)
# Address: 0x0da6b96c - 0x0da6b984 (Size: 24 bytes, Frame: 0)
.globl __glexpim_Vertex3i
.ent __glexpim_Vertex3i
__glexpim_Vertex3i:
    # Line 517
    lui	$at,0x5
    ori	$at,$at,0x498c
    sw	$a0,0($at)
    sw	$a1,0($at)
    # Line 518
    jr	$ra
    # Line 517
    sw	$a2,0($at)
.end __glexpim_Vertex3i

# Function: __glexpim_Vertex3iv
# Declared: Line 520 (Source lines: 522-523)
# Address: 0x0da6b984 - 0x0da6b9a8 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Vertex3iv
.ent __glexpim_Vertex3iv
__glexpim_Vertex3iv:
    # Line 522
    lw	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x498c
    sw	$a1,0($v0)
    lw	$v1,4($a0)
    sw	$v1,0($v0)
    lw	$at,8($a0)
    # Line 523
    jr	$ra
    # Line 522
    sw	$at,0($v0)
.end __glexpim_Vertex3iv

# Function: __glexpim_Vertex3s
# Declared: Line 525 (Source lines: 527-528)
# Address: 0x0da6b9a8 - 0x0da6b9c0 (Size: 24 bytes, Frame: 0)
.globl __glexpim_Vertex3s
.ent __glexpim_Vertex3s
__glexpim_Vertex3s:
    # Line 527
    lui	$at,0x5
    ori	$at,$at,0x498c
    sw	$a0,0($at)
    sw	$a1,0($at)
    # Line 528
    jr	$ra
    # Line 527
    sw	$a2,0($at)
.end __glexpim_Vertex3s

# Function: __glexpim_Vertex3sv
# Declared: Line 530 (Source lines: 532-533)
# Address: 0x0da6b9c0 - 0x0da6b9e4 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Vertex3sv
.ent __glexpim_Vertex3sv
__glexpim_Vertex3sv:
    # Line 532
    lh	$a1,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x498c
    sw	$a1,0($v0)
    lh	$v1,2($a0)
    sw	$v1,0($v0)
    lh	$at,4($a0)
    # Line 533
    jr	$ra
    # Line 532
    sw	$at,0($v0)
.end __glexpim_Vertex3sv

# Function: __glexpim_Vertex4dv
# Declared: Line 537 (Source lines: 539-540)
# Address: 0x0da6b9e4 - 0x0da6ba20 (Size: 60 bytes, Frame: 0)
.globl __glexpim_Vertex4dv
.ent __glexpim_Vertex4dv
__glexpim_Vertex4dv:
    # Line 539
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    lui	$at,0x4
    ori	$at,$at,0x298c
    swc1	$f3,0($at)
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($at)
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($at)
    ldc1	$f0,24($a0)
    cvt.s.d	$f0,$f0
    # Line 540
    jr	$ra
    # Line 539
    swc1	$f0,0($at)
.end __glexpim_Vertex4dv

# Function: __glexpim_Vertex4fv
# Declared: Line 542 (Source lines: 544-545)
# Address: 0x0da6ba20 - 0x0da6ba4c (Size: 44 bytes, Frame: 0)
.globl __glexpim_Vertex4fv
.ent __glexpim_Vertex4fv
__glexpim_Vertex4fv:
    # Line 544
    lwc1	$f3,0($a0)
    lui	$at,0x4
    ori	$at,$at,0x298c
    swc1	$f3,0($at)
    lwc1	$f2,4($a0)
    swc1	$f2,0($at)
    lwc1	$f1,8($a0)
    swc1	$f1,0($at)
    lwc1	$f0,12($a0)
    # Line 545
    jr	$ra
    # Line 544
    swc1	$f0,0($at)
.end __glexpim_Vertex4fv

# Function: __glexpim_Vertex4d
# Declared: Line 547 (Source lines: 549-550)
# Address: 0x0da6ba4c - 0x0da6ba78 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Vertex4d
.ent __glexpim_Vertex4d
__glexpim_Vertex4d:
    # Line 549
    cvt.s.d	$f0,$f15
    cvt.s.d	$f1,$f14
    cvt.s.d	$f3,$f12
    cvt.s.d	$f2,$f13
    lui	$at,0x4
    ori	$at,$at,0x298c
    swc1	$f3,0($at)
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 550
    jr	$ra
    # Line 549
    swc1	$f0,0($at)
.end __glexpim_Vertex4d

# Function: __glexpim_Vertex4f
# Declared: Line 552 (Source lines: 554-555)
# Address: 0x0da6ba78 - 0x0da6ba94 (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex4f
.ent __glexpim_Vertex4f
__glexpim_Vertex4f:
    # Line 554
    lui	$at,0x4
    ori	$at,$at,0x298c
    swc1	$f12,0($at)
    swc1	$f13,0($at)
    swc1	$f14,0($at)
    # Line 555
    jr	$ra
    # Line 554
    swc1	$f15,0($at)
.end __glexpim_Vertex4f

# Function: __glexpim_Vertex4i
# Declared: Line 557 (Source lines: 559-560)
# Address: 0x0da6ba94 - 0x0da6bab0 (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex4i
.ent __glexpim_Vertex4i
__glexpim_Vertex4i:
    # Line 559
    lui	$at,0x5
    ori	$at,$at,0x298c
    sw	$a0,0($at)
    sw	$a1,0($at)
    sw	$a2,0($at)
    # Line 560
    jr	$ra
    # Line 559
    sw	$a3,0($at)
.end __glexpim_Vertex4i

# Function: __glexpim_Vertex4iv
# Declared: Line 562 (Source lines: 564-565)
# Address: 0x0da6bab0 - 0x0da6badc (Size: 44 bytes, Frame: 0)
.globl __glexpim_Vertex4iv
.ent __glexpim_Vertex4iv
__glexpim_Vertex4iv:
    # Line 564
    lw	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x298c
    sw	$at,0($v0)
    lw	$a1,4($a0)
    sw	$a1,0($v0)
    lw	$v1,8($a0)
    sw	$v1,0($v0)
    lw	$at,12($a0)
    # Line 565
    jr	$ra
    # Line 564
    sw	$at,0($v0)
.end __glexpim_Vertex4iv

# Function: __glexpim_Vertex4s
# Declared: Line 567 (Source lines: 569-570)
# Address: 0x0da6badc - 0x0da6baf8 (Size: 28 bytes, Frame: 0)
.globl __glexpim_Vertex4s
.ent __glexpim_Vertex4s
__glexpim_Vertex4s:
    # Line 569
    lui	$at,0x5
    ori	$at,$at,0x298c
    sw	$a0,0($at)
    sw	$a1,0($at)
    sw	$a2,0($at)
    # Line 570
    jr	$ra
    # Line 569
    sw	$a3,0($at)
.end __glexpim_Vertex4s

# Function: __glexpim_Vertex4sv
# Declared: Line 572 (Source lines: 574-575)
# Address: 0x0da6baf8 - 0x0da6bb24 (Size: 44 bytes, Frame: 0)
.globl __glexpim_Vertex4sv
.ent __glexpim_Vertex4sv
__glexpim_Vertex4sv:
    # Line 574
    lh	$at,0($a0)
    lui	$v0,0x5
    ori	$v0,$v0,0x298c
    sw	$at,0($v0)
    lh	$a1,2($a0)
    sw	$a1,0($v0)
    lh	$v1,4($a0)
    sw	$v1,0($v0)
    lh	$at,6($a0)
    # Line 575
    jr	$ra
    # Line 574
    sw	$at,0($v0)
.end __glexpim_Vertex4sv

# Function: __glexpim_Normal3d
# Declared: Line 579 (Source lines: 581-582)
# Address: 0x0da6bb24 - 0x0da6bb48 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Normal3d
.ent __glexpim_Normal3d
__glexpim_Normal3d:
    # Line 581
    cvt.s.d	$f0,$f14
    cvt.s.d	$f2,$f12
    cvt.s.d	$f1,$f13
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    # Line 582
    jr	$ra
    # Line 581
    swc1	$f0,0($at)
.end __glexpim_Normal3d

# Function: __glexpim_Normal3dv
# Declared: Line 584 (Source lines: 586-587)
# Address: 0x0da6bb48 - 0x0da6bb78 (Size: 48 bytes, Frame: 0)
.globl __glexpim_Normal3dv
.ent __glexpim_Normal3dv
__glexpim_Normal3dv:
    # Line 586
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f2,0($at)
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($at)
    ldc1	$f0,16($a0)
    cvt.s.d	$f0,$f0
    # Line 587
    jr	$ra
    # Line 586
    swc1	$f0,0($at)
.end __glexpim_Normal3dv

# Function: __glexpim_Normal3f
# Declared: Line 589 (Source lines: 591-592)
# Address: 0x0da6bb78 - 0x0da6bb90 (Size: 24 bytes, Frame: 0)
.globl __glexpim_Normal3f
.ent __glexpim_Normal3f
__glexpim_Normal3f:
    # Line 591
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f12,0($at)
    swc1	$f13,0($at)
    # Line 592
    jr	$ra
    # Line 591
    swc1	$f14,0($at)
.end __glexpim_Normal3f

# Function: __glexpim_Normal3fv
# Declared: Line 594 (Source lines: 596-597)
# Address: 0x0da6bb90 - 0x0da6bbb4 (Size: 36 bytes, Frame: 0)
.globl __glexpim_Normal3fv
.ent __glexpim_Normal3fv
__glexpim_Normal3fv:
    # Line 596
    lwc1	$f2,0($a0)
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f2,0($at)
    lwc1	$f1,4($a0)
    swc1	$f1,0($at)
    lwc1	$f0,8($a0)
    # Line 597
    jr	$ra
    # Line 596
    swc1	$f0,0($at)
.end __glexpim_Normal3fv

# Function: __glexpim_Normal3b
# Declared: Line 599 (Source lines: 601-604)
# Address: 0x0da6bbb4 - 0x0da6bc1c (Size: 104 bytes, Frame: 0)
.globl __glexpim_Normal3b
.ent __glexpim_Normal3b
__glexpim_Normal3b:
    # Line 602
    sll	$a0,$a0,0x1
    addiu	$a0,$a0,1
    mtc1	$a0,$f0
    # Line 601
    lw	$v0,__glCurrentContext
    # Line 602
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($v0)
    mul.s	$f4,$f4,$f0
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    lui	$at,0x4
    ori	$at,$at,0x2434
    cvt.s.w	$f3,$f3
    swc1	$f4,0($at)
    lwc1	$f2,3292($v0)
    mul.s	$f2,$f2,$f3
    sll	$v1,$a2,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f2,0($at)
    lwc1	$f0,3292($v0)
    mul.s	$f0,$f0,$f1
    # Line 604
    jr	$ra
    # Line 602
    swc1	$f0,0($at)
.end __glexpim_Normal3b

# Function: __glexpim_Normal3bv
# Declared: Line 606 (Source lines: 608-612)
# Address: 0x0da6bc1c - 0x0da6bc94 (Size: 120 bytes, Frame: 0)
.globl __glexpim_Normal3bv
.ent __glexpim_Normal3bv
__glexpim_Normal3bv:
    # Line 609
    lb	$v0,0($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    # Line 608
    lw	$v0,__glCurrentContext
    # Line 609
    cvt.s.w	$f0,$f0
    lwc1	$f4,3292($v0)
    mul.s	$f4,$f4,$f0
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f4,0($at)
    lb	$a1,1($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($at)
    lb	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($v0)
    mul.s	$f0,$f0,$f1
    # Line 612
    jr	$ra
    # Line 609
    swc1	$f0,0($at)
.end __glexpim_Normal3bv

# Function: __glexpim_Normal3s
# Declared: Line 614 (Source lines: 616-619)
# Address: 0x0da6bc94 - 0x0da6bcfc (Size: 104 bytes, Frame: 0)
.globl __glexpim_Normal3s
.ent __glexpim_Normal3s
__glexpim_Normal3s:
    # Line 617
    sll	$a0,$a0,0x1
    addiu	$a0,$a0,1
    mtc1	$a0,$f0
    # Line 616
    lw	$v0,__glCurrentContext
    # Line 617
    cvt.s.w	$f0,$f0
    lwc1	$f4,3300($v0)
    mul.s	$f4,$f4,$f0
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    lui	$at,0x4
    ori	$at,$at,0x2434
    cvt.s.w	$f3,$f3
    swc1	$f4,0($at)
    lwc1	$f2,3300($v0)
    mul.s	$f2,$f2,$f3
    sll	$v1,$a2,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f2,0($at)
    lwc1	$f0,3300($v0)
    mul.s	$f0,$f0,$f1
    # Line 619
    jr	$ra
    # Line 617
    swc1	$f0,0($at)
.end __glexpim_Normal3s

# Function: __glexpim_Normal3sv
# Declared: Line 621 (Source lines: 623-626)
# Address: 0x0da6bcfc - 0x0da6bd74 (Size: 120 bytes, Frame: 0)
.globl __glexpim_Normal3sv
.ent __glexpim_Normal3sv
__glexpim_Normal3sv:
    # Line 624
    lh	$v0,0($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    # Line 623
    lw	$v0,__glCurrentContext
    # Line 624
    cvt.s.w	$f0,$f0
    lwc1	$f4,3300($v0)
    mul.s	$f4,$f4,$f0
    lui	$at,0x4
    ori	$at,$at,0x2434
    swc1	$f4,0($at)
    lh	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($at)
    lh	$v1,4($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($v0)
    mul.s	$f0,$f0,$f1
    # Line 626
    jr	$ra
    # Line 624
    swc1	$f0,0($at)
.end __glexpim_Normal3sv

# Function: __glexpim_Normal3i
# Declared: Line 628 (Source lines: 629-634)
# Address: 0x0da6bd74 - 0x0da6bdf0 (Size: 124 bytes, Frame: 0)
.globl __glexpim_Normal3i
.ent __glexpim_Normal3i
__glexpim_Normal3i:
    # Line 631
    mtc1	$a0,$f1
    # Line 629
    lui	$v1,0x19
    # Line 631
    cvt.s.w	$f1,$f1
    # Line 629
    addiu	$v1,$v1,-17676
    # addu	at,t9,v1
    # Line 631
    lwc1	$f4,_lit_40000000
    mul.s	$f1,$f1,$f4
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 630
    lw	$v1,__glCurrentContext
    # Line 631
    lwc1	$f2,_lit_3f800000
    lwc1	$f3,3308($v1)
    add.s	$f1,$f1,$f2
    mul.s	$f0,$f0,$f4
    mul.s	$f3,$f3,$f1
    lui	$v0,0x4
    add.s	$f0,$f0,$f2
    mtc1	$a2,$f1
    ori	$v0,$v0,0x2434
    swc1	$f3,0($v0)
    cvt.s.w	$f1,$f1
    lwc1	$f3,3308($v1)
    mul.s	$f3,$f3,$f0
    mul.s	$f1,$f1,$f4
    swc1	$f3,0($v0)
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($v1)
    mul.s	$f0,$f0,$f1
    # Line 634
    jr	$ra
    # Line 631
    swc1	$f0,0($v0)
.end __glexpim_Normal3i

# Function: __glexpim_Normal3iv
# Declared: Line 636 (Source lines: 637-641)
# Address: 0x0da6bdf0 - 0x0da6be7c (Size: 140 bytes, Frame: 0)
.globl __glexpim_Normal3iv
.ent __glexpim_Normal3iv
__glexpim_Normal3iv:
    # Line 639
    lw	$a1,0($a0)
    mtc1	$a1,$f4
    # Line 637
    lui	$v1,0x19
    # Line 639
    cvt.s.w	$f4,$f4
    # Line 637
    addiu	$v1,$v1,-17800
    # addu	at,t9,v1
    # Line 639
    lwc1	$f3,_lit_40000000
    mul.s	$f4,$f4,$f3
    lwc1	$f2,_lit_3f800000
    # Line 638
    lw	$v1,__glCurrentContext
    # Line 639
    add.s	$f4,$f4,$f2
    lwc1	$f1,3308($v1)
    mul.s	$f1,$f1,$f4
    lui	$v0,0x4
    ori	$v0,$v0,0x2434
    swc1	$f1,0($v0)
    lw	$a1,4($a0)
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f4,3308($v1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,0($v0)
    lw	$a0,8($a0)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($v1)
    mul.s	$f0,$f0,$f1
    # Line 641
    jr	$ra
    # Line 639
    swc1	$f0,0($v0)
.end __glexpim_Normal3iv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

