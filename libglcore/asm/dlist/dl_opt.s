# Source: ../dlist/dl_opt.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_opt.c
# Total Functions: 23

.text

# Function: __glGenericDlistOptimizer
# Declared: Line 30 (Source lines: 31-37)
# Address: 0x0da6e3d4 - 0x0da6e408 (Size: 52 bytes, Frame: 32)
.globl __glGenericDlistOptimizer
.ent __glGenericDlistOptimizer
__glGenericDlistOptimizer:
    # Line 31
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-27500
    # addu	gp,t9,at
    # Line 36
    # lw $t9, -30932($gp) # &__glDlistOptimizeMaterial
    sd	$ra,0($sp)
    bal __glDlistOptimizeMaterial
    nop
    # Line 37
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGenericDlistOptimizer

# Function: __gllc_Begin
# Declared: Line 63 (Source lines: 64-123)
# Address: 0x0da6e408 - 0x0da6e548 (Size: 320 bytes, Frame: 48)
.globl __gllc_Begin
.ent __gllc_Begin
__gllc_Begin:
    # Line 70
    move	$a1,$zero
    # Line 64
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 68
    lw	$at,__glCurrentContext
    # sd	gp,16(sp)
    # Line 64
    lui	$v0,0x19
    addiu	$v0,$v0,-27552
    # addu	gp,t9,v0
    # Line 70
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    bal __glDlistAllocOp2
    move	$a0,$at
    # Line 111
    li	$a5,1009
    # Line 70
    beqz	$v0,.L0da6e46c
    # Line 71
    ld	$a0,0($sp)
    la	$a3,sub_0dbf0000
    sltiu	$v1,$a0,10
    sll	$a0,$a0,0x2
    lui	$a3,%hi(jtbl_0dbeb228)
    beqz	$v1,.L0da6e51c
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbeb228)($a0)
    jr	$a3
    # Line 92
    la	$a2,__glle_Begin_Polygon
.L0da6e46c:
    # Line 71
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e47c:
    # Line 76
    la	$a2,__glle_Begin_LineLoop
    # Line 77
    b	.L0da6e490
    # Line 75
    li	$a5,1000
.L0da6e488:
    # Line 100
    la	$a2,__glle_Begin_TriangleFan
    # Line 99
    li	$a5,1006
.L0da6e490:
    # Line 120
    ld	$a6,8($sp)
    # Line 122
    move	$a1,$v0
    # Line 120
    lw	$a4,4696($a6)
    # Line 122
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    move	$a0,$a6
    # Line 120
    ori	$a4,$a4,0x80
    sw	$a4,4696($a6)
    # Line 122
    bal __glDlistAppendOp
    # Line 121
    sh	$a5,12($v0)
    # Line 123
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e4c4:
    # Line 80
    la	$a2,__glle_Begin_LineStrip
    # Line 81
    b	.L0da6e490
    # Line 79
    li	$a5,1001
.L0da6e4d0:
    # Line 84
    la	$a2,__glle_Begin_Lines
    # Line 85
    b	.L0da6e490
    # Line 83
    li	$a5,1002
.L0da6e4dc:
    # Line 88
    la	$a2,__glle_Begin_Points
    # Line 89
    b	.L0da6e490
    # Line 87
    li	$a5,1003
.L0da6e4e8:
    # Line 93
    b	.L0da6e490
    # Line 91
    li	$a5,1004
.L0da6e4f0:
    # Line 96
    la	$a2,__glle_Begin_TriangleStrip
    # Line 97
    b	.L0da6e490
    # Line 95
    li	$a5,1005
.L0da6e4fc:
    # Line 104
    la	$a2,__glle_Begin_Triangles
    # Line 105
    b	.L0da6e490
    # Line 103
    li	$a5,1007
.L0da6e508:
    # Line 108
    la	$a2,__glle_Begin_QuadStrip
    # Line 109
    b	.L0da6e490
    # Line 107
    li	$a5,1008
.L0da6e514:
    # Line 113
    b	.L0da6e490
    # Line 112
    la	$a2,__glle_Begin_Quads
.L0da6e51c:
    # Line 116
    la	$a2,__glle_InvalidEnum
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    # Line 115
    li	$a5,1011
    # Line 116
    bal __glDlistAppendOp
    # Line 115
    sh	$a5,12($v0)
    # Line 117
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Begin

# Function: __glle_Begin_LineLoop
# Declared: Line 127 (Source lines: 128-130)
# Address: 0x0da6e548 - 0x0da6e58c (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_LineLoop
.ent __glle_Begin_LineLoop
__glle_Begin_LineLoop:
    # Line 128
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-27872
    # addu	gp,t9,at
    # Line 129
    lw	$t9,4196($zero)
    # Line 128
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 129
    jalr	$t9
    li	$a0,2
    # ld	gp,16(sp)
    # Line 130
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_LineLoop

# Function: __glle_Begin_LineStrip
# Declared: Line 133 (Source lines: 134-136)
# Address: 0x0da6e58c - 0x0da6e5d0 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_LineStrip
.ent __glle_Begin_LineStrip
__glle_Begin_LineStrip:
    # Line 134
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-27940
    # addu	gp,t9,at
    # Line 135
    lw	$t9,4196($zero)
    # Line 134
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 135
    jalr	$t9
    li	$a0,3
    # ld	gp,16(sp)
    # Line 136
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_LineStrip

# Function: __glle_Begin_Lines
# Declared: Line 139 (Source lines: 140-142)
# Address: 0x0da6e5d0 - 0x0da6e614 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_Lines
.ent __glle_Begin_Lines
__glle_Begin_Lines:
    # Line 140
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28008
    # addu	gp,t9,at
    # Line 141
    lw	$t9,4196($zero)
    # Line 140
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 141
    jalr	$t9
    li	$a0,1
    # ld	gp,16(sp)
    # Line 142
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_Lines

# Function: __glle_Begin_Points
# Declared: Line 145 (Source lines: 146-148)
# Address: 0x0da6e614 - 0x0da6e658 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_Points
.ent __glle_Begin_Points
__glle_Begin_Points:
    # Line 146
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28076
    # addu	gp,t9,at
    # Line 147
    lw	$t9,4196($zero)
    # Line 146
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 147
    jalr	$t9
    move	$a0,$zero
    # ld	gp,16(sp)
    # Line 148
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_Points

# Function: __glle_Begin_Polygon
# Declared: Line 151 (Source lines: 152-154)
# Address: 0x0da6e658 - 0x0da6e69c (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_Polygon
.ent __glle_Begin_Polygon
__glle_Begin_Polygon:
    # Line 152
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28144
    # addu	gp,t9,at
    # Line 153
    lw	$t9,4196($zero)
    # Line 152
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 153
    jalr	$t9
    li	$a0,9
    # ld	gp,16(sp)
    # Line 154
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_Polygon

# Function: __glle_Begin_TriangleStrip
# Declared: Line 157 (Source lines: 158-160)
# Address: 0x0da6e69c - 0x0da6e6e0 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_TriangleStrip
.ent __glle_Begin_TriangleStrip
__glle_Begin_TriangleStrip:
    # Line 158
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28212
    # addu	gp,t9,at
    # Line 159
    lw	$t9,4196($zero)
    # Line 158
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 159
    jalr	$t9
    li	$a0,5
    # ld	gp,16(sp)
    # Line 160
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_TriangleStrip

# Function: __glle_Begin_TriangleFan
# Declared: Line 163 (Source lines: 164-166)
# Address: 0x0da6e6e0 - 0x0da6e724 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_TriangleFan
.ent __glle_Begin_TriangleFan
__glle_Begin_TriangleFan:
    # Line 164
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28280
    # addu	gp,t9,at
    # Line 165
    lw	$t9,4196($zero)
    # Line 164
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 165
    jalr	$t9
    li	$a0,6
    # ld	gp,16(sp)
    # Line 166
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_TriangleFan

# Function: __glle_Begin_Triangles
# Declared: Line 169 (Source lines: 170-172)
# Address: 0x0da6e724 - 0x0da6e768 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_Triangles
.ent __glle_Begin_Triangles
__glle_Begin_Triangles:
    # Line 170
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28348
    # addu	gp,t9,at
    # Line 171
    lw	$t9,4196($zero)
    # Line 170
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 171
    jalr	$t9
    li	$a0,4
    # ld	gp,16(sp)
    # Line 172
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_Triangles

# Function: __glle_Begin_QuadStrip
# Declared: Line 175 (Source lines: 176-178)
# Address: 0x0da6e768 - 0x0da6e7ac (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_QuadStrip
.ent __glle_Begin_QuadStrip
__glle_Begin_QuadStrip:
    # Line 176
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28416
    # addu	gp,t9,at
    # Line 177
    lw	$t9,4196($zero)
    # Line 176
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 177
    jalr	$t9
    li	$a0,8
    # ld	gp,16(sp)
    # Line 178
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_QuadStrip

# Function: __glle_Begin_Quads
# Declared: Line 181 (Source lines: 182-184)
# Address: 0x0da6e7ac - 0x0da6e7f0 (Size: 68 bytes, Frame: 48)
.globl __glle_Begin_Quads
.ent __glle_Begin_Quads
__glle_Begin_Quads:
    # Line 182
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-28484
    # addu	gp,t9,at
    # Line 183
    lw	$t9,4196($zero)
    # Line 182
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 183
    jalr	$t9
    li	$a0,7
    # ld	gp,16(sp)
    # Line 184
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Begin_Quads

# Function: __gllc_InvalidValue
# Declared: Line 193 (Source lines: 194-201)
# Address: 0x0da6e7f0 - 0x0da6e858 (Size: 104 bytes, Frame: 48)
.globl __gllc_InvalidValue
.ent __gllc_InvalidValue
__gllc_InvalidValue:
    # Line 194
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-28552
    # addu	gp,t9,at
    # Line 197
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    move	$a1,$zero
    sd	$ra,16($sp)
    bal __glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0da6e82c
    # Line 198
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e82c:
    # Line 200
    la	$a2,__glle_InvalidValue
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 199
    li	$v1,1010
    # Line 200
    bal __glDlistAppendOp
    # Line 199
    sh	$v1,12($v0)
    # Line 201
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_InvalidValue

# Function: __gllc_InvalidEnum
# Declared: Line 203 (Source lines: 204-211)
# Address: 0x0da6e858 - 0x0da6e8c0 (Size: 104 bytes, Frame: 48)
.globl __gllc_InvalidEnum
.ent __gllc_InvalidEnum
__gllc_InvalidEnum:
    # Line 204
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-28656
    # addu	gp,t9,at
    # Line 207
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    move	$a1,$zero
    sd	$ra,16($sp)
    bal __glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0da6e894
    # Line 208
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e894:
    # Line 210
    la	$a2,__glle_InvalidEnum
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 209
    li	$v1,1011
    # Line 210
    bal __glDlistAppendOp
    # Line 209
    sh	$v1,12($v0)
    # Line 211
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_InvalidEnum

# Function: __gllc_InvalidOperation
# Declared: Line 213 (Source lines: 214-221)
# Address: 0x0da6e8c0 - 0x0da6e928 (Size: 104 bytes, Frame: 48)
.globl __gllc_InvalidOperation
.ent __gllc_InvalidOperation
__gllc_InvalidOperation:
    # Line 214
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-28760
    # addu	gp,t9,at
    # Line 217
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    move	$a1,$zero
    sd	$ra,16($sp)
    bal __glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0da6e8fc
    # Line 218
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e8fc:
    # Line 220
    la	$a2,__glle_InvalidOperation
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 219
    li	$v1,1012
    # Line 220
    bal __glDlistAppendOp
    # Line 219
    sh	$v1,12($v0)
    # Line 221
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_InvalidOperation

# Function: __gllc_TableTooLarge
# Declared: Line 223 (Source lines: 224-230)
# Address: 0x0da6e928 - 0x0da6e990 (Size: 104 bytes, Frame: 48)
.globl __gllc_TableTooLarge
.ent __gllc_TableTooLarge
__gllc_TableTooLarge:
    # Line 224
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-28864
    # addu	gp,t9,at
    # Line 226
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    move	$a1,$zero
    sd	$ra,16($sp)
    bal __glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0da6e964
    # Line 227
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6e964:
    # Line 229
    la	$a2,__glle_TableTooLarge
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 228
    li	$v1,1015
    # Line 229
    bal __glDlistAppendOp
    # Line 228
    sh	$v1,12($v0)
    # Line 230
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TableTooLarge

# Function: __gllc_UnimplementedExtension
# Declared: Line 236 (Source lines: 237-244)
# Address: 0x0da6e990 - 0x0da6e9fc (Size: 108 bytes, Frame: 32)
.globl __gllc_UnimplementedExtension
.ent __gllc_UnimplementedExtension
__gllc_UnimplementedExtension:
    # Line 240
    move	$a1,$zero
    # Line 237
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-28968
    # addu	gp,t9,at
    # Line 240
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    # Line 239
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 240
    bal __glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0da6e9d0
    # Line 241
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6e9d0:
    # Line 243
    la	$a2,__glle_UnimplementedExtension
    move	$a1,$v0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 242
    li	$v1,1013
    # Line 243
    bal __glDlistAppendOp
    # Line 242
    sh	$v1,12($v0)
    # Line 244
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_UnimplementedExtension

# Function: __gllc_Error
# Declared: Line 247 (Source lines: 248-264)
# Address: 0x0da6e9fc - 0x0da6ea9c (Size: 160 bytes, Frame: 32)
.globl __gllc_Error
.ent __gllc_Error
__gllc_Error:
    # Line 249
    li	$at,1281
    # Line 248
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-29076
    # Line 249
    beq	$a1,$at,.L0da6ea54
    # Line 248
    addu	$gp,$t9,$v0
    # Line 249
    li	$v1,1280
    beq	$a1,$v1,.L0da6ea6c
    li	$a2,1282
    beq	$a1,$a2,.L0da6ea84
    li	$at,0x8031
    beq	$a1,$at,.L0da6ea40
    # Line 260
    nop	# was lw $t9, -30964($gp) # &__gllc_TableTooLarge
.L0da6ea34:
    ld	$gp,0($sp)
    # Line 264
    jr	$ra
    addiu	$sp,$sp,32
.L0da6ea40:
    sd	$ra,8($sp)
    # Line 260
    bal __gllc_TableTooLarge
    nop
    b	.L0da6ea34
    ld	$ra,8($sp)
.L0da6ea54:
    # Line 251
    # lw $t9, -30976($gp) # &__gllc_InvalidValue
    sd	$ra,8($sp)
    bal __gllc_InvalidValue
    nop
    b	.L0da6ea34
    ld	$ra,8($sp)
.L0da6ea6c:
    # Line 254
    # lw $t9, -30972($gp) # &__gllc_InvalidEnum
    sd	$ra,8($sp)
    bal __gllc_InvalidEnum
    nop
    b	.L0da6ea34
    ld	$ra,8($sp)
.L0da6ea84:
    # Line 257
    # lw $t9, -30968($gp) # &__gllc_InvalidOperation
    sd	$ra,8($sp)
    bal __gllc_InvalidOperation
    nop
    b	.L0da6ea34
    ld	$ra,8($sp)
.end __gllc_Error

# Function: __glle_InvalidValue
# Declared: Line 269 (Source lines: 270-272)
# Address: 0x0da6ea9c - 0x0da6eae0 (Size: 68 bytes, Frame: 48)
.globl __glle_InvalidValue
.ent __glle_InvalidValue
__glle_InvalidValue:
    # Line 270
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-29236
    # addu	gp,t9,at
    # Line 271
    # lw $t9, -29008($gp) # &__glSetError
    # Line 270
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 271
    jal	__glSetError
    li	$a0,1281
    # ld	gp,16(sp)
    # Line 272
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_InvalidValue

# Function: __glle_InvalidEnum
# Declared: Line 275 (Source lines: 276-278)
# Address: 0x0da6eae0 - 0x0da6eb24 (Size: 68 bytes, Frame: 48)
.globl __glle_InvalidEnum
.ent __glle_InvalidEnum
__glle_InvalidEnum:
    # Line 276
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-29304
    # addu	gp,t9,at
    # Line 277
    # lw $t9, -29008($gp) # &__glSetError
    # Line 276
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 277
    jal	__glSetError
    li	$a0,1280
    # ld	gp,16(sp)
    # Line 278
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_InvalidEnum

# Function: __glle_InvalidOperation
# Declared: Line 281 (Source lines: 282-284)
# Address: 0x0da6eb24 - 0x0da6eb68 (Size: 68 bytes, Frame: 48)
.globl __glle_InvalidOperation
.ent __glle_InvalidOperation
__glle_InvalidOperation:
    # Line 282
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-29372
    # addu	gp,t9,at
    # Line 283
    # lw $t9, -29008($gp) # &__glSetError
    # Line 282
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 283
    jal	__glSetError
    li	$a0,1282
    # ld	gp,16(sp)
    # Line 284
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_InvalidOperation

# Function: __glle_TableTooLarge
# Declared: Line 287 (Source lines: 288-290)
# Address: 0x0da6eb68 - 0x0da6ebac (Size: 68 bytes, Frame: 48)
.globl __glle_TableTooLarge
.ent __glle_TableTooLarge
__glle_TableTooLarge:
    # Line 288
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-29440
    # addu	gp,t9,at
    # Line 289
    # lw $t9, -29008($gp) # &__glSetError
    # Line 288
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 289
    jal	__glSetError
    li	$a0,0x8031
    # ld	gp,16(sp)
    # Line 290
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TableTooLarge

# Function: __glle_UnimplementedExtension
# Declared: Line 300 (Source lines: 301-303)
# Address: 0x0da6ebac - 0x0da6ebf0 (Size: 68 bytes, Frame: 48)
.globl __glle_UnimplementedExtension
.ent __glle_UnimplementedExtension
__glle_UnimplementedExtension:
    # Line 301
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,-29508
    # addu	gp,t9,at
    # Line 302
    # lw $t9, -29008($gp) # &__glSetError
    # Line 301
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 302
    jal	__glSetError
    li	$a0,1282
    # ld	gp,16(sp)
    # Line 303
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_UnimplementedExtension

.late_rodata
jtbl_0dbeb228:
    .word .L0da6e4dc
    .word .L0da6e4d0
    .word .L0da6e47c
    .word .L0da6e4c4
    .word .L0da6e4fc
    .word .L0da6e4f0
    .word .L0da6e488
    .word .L0da6e514
    .word .L0da6e508
    .word .L0da6e4e8

