# Source: ../EXPRESS/gr2_prim.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_prim.c
# Total Functions: 22

.text

# Function: __glExpEndLLoop
# Declared: Line 28 (Source lines: 29-35)
# Address: 0x0da64b70 - 0x0da64ba0 (Size: 48 bytes, Frame: 0)
.globl __glExpEndLLoop
.ent __glExpEndLLoop
__glExpEndLLoop:
    # Line 34
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 29
    lui	$a1,0x19
    addiu	$a1,$a1,11512
    # addu	at,t9,a1
    # Line 32
    la	$a1,__glNop
    # Line 33
    lui	$v1,0x4
    ori	$v1,$v1,0x2168
    # Line 32
    sw	$a1,12076($a0)
    # Line 33
    sw	$zero,0($v1)
    # Line 35
    jr	$ra
    # Line 34
    sw	$zero,0($v0)
.end __glExpEndLLoop

# Function: __glExpBeginLLoop
# Declared: Line 37 (Source lines: 38-44)
# Address: 0x0da64ba0 - 0x0da64bd0 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginLLoop
.ent __glExpBeginLLoop
__glExpBeginLLoop:
    # Line 43
    lui	$v0,0x4
    ori	$v0,$v0,0x3164
    # Line 38
    lui	$a1,0x19
    addiu	$a1,$a1,11464
    # addu	at,t9,a1
    # Line 41
    la	$a1,__glExpEndLLoop
    # Line 42
    lui	$v1,0x4
    ori	$v1,$v1,0x2160
    # Line 41
    sw	$a1,12076($a0)
    # Line 42
    sw	$zero,0($v1)
    # Line 44
    jr	$ra
    # Line 43
    sw	$zero,0($v0)
.end __glExpBeginLLoop

# Function: __glExpEndLStrip
# Declared: Line 46 (Source lines: 47-53)
# Address: 0x0da64bd0 - 0x0da64c00 (Size: 48 bytes, Frame: 0)
.globl __glExpEndLStrip
.ent __glExpEndLStrip
__glExpEndLStrip:
    # Line 52
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 47
    lui	$a1,0x19
    addiu	$a1,$a1,11416
    # addu	at,t9,a1
    # Line 50
    la	$a1,__glNop
    # Line 51
    lui	$v1,0x4
    ori	$v1,$v1,0x215c
    # Line 50
    sw	$a1,12076($a0)
    # Line 51
    sw	$zero,0($v1)
    # Line 53
    jr	$ra
    # Line 52
    sw	$zero,0($v0)
.end __glExpEndLStrip

# Function: __glExpBeginLStrip
# Declared: Line 55 (Source lines: 56-62)
# Address: 0x0da64c00 - 0x0da64c30 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginLStrip
.ent __glExpBeginLStrip
__glExpBeginLStrip:
    # Line 61
    lui	$v0,0x4
    ori	$v0,$v0,0x3158
    # Line 56
    lui	$a1,0x19
    addiu	$a1,$a1,11368
    # addu	at,t9,a1
    # Line 59
    la	$a1,__glExpEndLStrip
    # Line 60
    lui	$v1,0x4
    ori	$v1,$v1,0x25f0
    # Line 59
    sw	$a1,12076($a0)
    # Line 60
    sw	$zero,0($v1)
    # Line 62
    jr	$ra
    # Line 61
    sw	$zero,0($v0)
.end __glExpBeginLStrip

# Function: __glExpEndLines
# Declared: Line 64 (Source lines: 65-71)
# Address: 0x0da64c30 - 0x0da64c60 (Size: 48 bytes, Frame: 0)
.globl __glExpEndLines
.ent __glExpEndLines
__glExpEndLines:
    # Line 70
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 65
    lui	$a1,0x19
    addiu	$a1,$a1,11320
    # addu	at,t9,a1
    # Line 68
    la	$a1,__glNop
    # Line 69
    lui	$v1,0x4
    ori	$v1,$v1,0x215c
    # Line 68
    sw	$a1,12076($a0)
    # Line 69
    sw	$zero,0($v1)
    # Line 71
    jr	$ra
    # Line 70
    sw	$zero,0($v0)
.end __glExpEndLines

# Function: __glExpBeginLines
# Declared: Line 73 (Source lines: 74-80)
# Address: 0x0da64c60 - 0x0da64c90 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginLines
.ent __glExpBeginLines
__glExpBeginLines:
    # Line 79
    lui	$v0,0x4
    ori	$v0,$v0,0x33ac
    # Line 74
    lui	$a1,0x19
    addiu	$a1,$a1,11272
    # addu	at,t9,a1
    # Line 77
    la	$a1,__glExpEndLines
    # Line 78
    lui	$v1,0x4
    ori	$v1,$v1,0x25f0
    # Line 77
    sw	$a1,12076($a0)
    # Line 78
    sw	$zero,0($v1)
    # Line 80
    jr	$ra
    # Line 79
    sw	$zero,0($v0)
.end __glExpBeginLines

# Function: __glExpEndPoints
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0da64c90 - 0x0da64cc0 (Size: 48 bytes, Frame: 0)
.globl __glExpEndPoints
.ent __glExpEndPoints
__glExpEndPoints:
    # Line 88
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 83
    lui	$a1,0x19
    addiu	$a1,$a1,11224
    # addu	at,t9,a1
    # Line 86
    la	$a1,__glNop
    # Line 87
    lui	$v1,0x4
    ori	$v1,$v1,0x25a0
    # Line 86
    sw	$a1,12076($a0)
    # Line 87
    sw	$zero,0($v1)
    # Line 89
    jr	$ra
    # Line 88
    sw	$zero,0($v0)
.end __glExpEndPoints

# Function: __glExpBeginPoints
# Declared: Line 91 (Source lines: 92-98)
# Address: 0x0da64cc0 - 0x0da64cf0 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginPoints
.ent __glExpBeginPoints
__glExpBeginPoints:
    # Line 97
    lui	$v0,0x4
    ori	$v0,$v0,0x348c
    # Line 92
    lui	$a1,0x19
    addiu	$a1,$a1,11176
    # addu	at,t9,a1
    # Line 95
    la	$a1,__glExpEndPoints
    # Line 96
    lui	$v1,0x4
    ori	$v1,$v1,0x2474
    # Line 95
    sw	$a1,12076($a0)
    # Line 96
    sw	$zero,0($v1)
    # Line 98
    jr	$ra
    # Line 97
    sw	$zero,0($v0)
.end __glExpBeginPoints

# Function: __glExpEndPolygon
# Declared: Line 100 (Source lines: 101-114)
# Address: 0x0da64cf0 - 0x0da64d38 (Size: 72 bytes, Frame: 0)
.globl __glExpEndPolygon
.ent __glExpEndPolygon
__glExpEndPolygon:
    # Line 104
    lw	$v0,460($a0)
    # Line 101
    lui	$a2,0x19
    addiu	$a2,$a2,11128
    # addu	at,t9,a2
    # Line 104
    la	$a1,__glNop
    li	$v1,6914
    beq	$v0,$v1,.L0da64d1c
    sw	$a1,12076($a0)
    # Line 110
    lui	$v0,0x4
    ori	$v0,$v0,0x23f0
    sw	$zero,0($v0)
.L0da64d1c:
    # Line 113
    lui	$v1,0x4
    ori	$v1,$v1,0x3194
    # Line 112
    lui	$a0,0x4
    ori	$a0,$a0,0x23f4
    sw	$zero,0($a0)
    # Line 114
    jr	$ra
    # Line 113
    sw	$zero,0($v1)
.end __glExpEndPolygon

# Function: __glExpBeginPolygon
# Declared: Line 116 (Source lines: 117-123)
# Address: 0x0da64d38 - 0x0da64d68 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginPolygon
.ent __glExpBeginPolygon
__glExpBeginPolygon:
    # Line 122
    lui	$v0,0x4
    ori	$v0,$v0,0x33e0
    # Line 117
    lui	$a1,0x19
    addiu	$a1,$a1,11056
    # addu	at,t9,a1
    # Line 120
    la	$a1,__glExpEndPolygon
    # Line 121
    lui	$v1,0x4
    ori	$v1,$v1,0x23dc
    # Line 120
    sw	$a1,12076($a0)
    # Line 121
    sw	$zero,0($v1)
    # Line 123
    jr	$ra
    # Line 122
    sw	$zero,0($v0)
.end __glExpBeginPolygon

# Function: __glExpEndTStrip
# Declared: Line 125 (Source lines: 126-132)
# Address: 0x0da64d68 - 0x0da64d98 (Size: 48 bytes, Frame: 0)
.globl __glExpEndTStrip
.ent __glExpEndTStrip
__glExpEndTStrip:
    # Line 131
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 126
    lui	$a1,0x19
    addiu	$a1,$a1,11008
    # addu	at,t9,a1
    # Line 129
    la	$a1,__glNop
    # Line 130
    lui	$v1,0x4
    ori	$v1,$v1,0x2128
    # Line 129
    sw	$a1,12076($a0)
    # Line 130
    sw	$zero,0($v1)
    # Line 132
    jr	$ra
    # Line 131
    sw	$zero,0($v0)
.end __glExpEndTStrip

# Function: __glExpBeginTStrip
# Declared: Line 134 (Source lines: 135-141)
# Address: 0x0da64d98 - 0x0da64dc8 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginTStrip
.ent __glExpBeginTStrip
__glExpBeginTStrip:
    # Line 140
    lui	$v0,0x4
    ori	$v0,$v0,0x311c
    # Line 135
    lui	$a1,0x19
    addiu	$a1,$a1,10960
    # addu	at,t9,a1
    # Line 138
    la	$a1,__glExpEndTStrip
    # Line 139
    lui	$v1,0x4
    ori	$v1,$v1,0x2118
    # Line 138
    sw	$a1,12076($a0)
    # Line 139
    sw	$zero,0($v1)
    # Line 141
    jr	$ra
    # Line 140
    sw	$zero,0($v0)
.end __glExpBeginTStrip

# Function: __glExpEndTFan
# Declared: Line 143 (Source lines: 144-150)
# Address: 0x0da64dc8 - 0x0da64df8 (Size: 48 bytes, Frame: 0)
.globl __glExpEndTFan
.ent __glExpEndTFan
__glExpEndTFan:
    # Line 149
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 144
    lui	$a1,0x19
    addiu	$a1,$a1,10912
    # addu	at,t9,a1
    # Line 147
    la	$a1,__glNop
    # Line 148
    lui	$v1,0x4
    ori	$v1,$v1,0x2128
    # Line 147
    sw	$a1,12076($a0)
    # Line 148
    sw	$zero,0($v1)
    # Line 150
    jr	$ra
    # Line 149
    sw	$zero,0($v0)
.end __glExpEndTFan

# Function: __glExpBeginTFan
# Declared: Line 152 (Source lines: 153-159)
# Address: 0x0da64df8 - 0x0da64e28 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginTFan
.ent __glExpBeginTFan
__glExpBeginTFan:
    # Line 158
    lui	$v0,0x4
    ori	$v0,$v0,0x33b4
    # Line 153
    lui	$a1,0x19
    addiu	$a1,$a1,10864
    # addu	at,t9,a1
    # Line 156
    la	$a1,__glExpEndTFan
    # Line 157
    lui	$v1,0x4
    ori	$v1,$v1,0x2118
    # Line 156
    sw	$a1,12076($a0)
    # Line 157
    sw	$zero,0($v1)
    # Line 159
    jr	$ra
    # Line 158
    sw	$zero,0($v0)
.end __glExpBeginTFan

# Function: __glExpEndTriangles
# Declared: Line 161 (Source lines: 162-168)
# Address: 0x0da64e28 - 0x0da64e58 (Size: 48 bytes, Frame: 0)
.globl __glExpEndTriangles
.ent __glExpEndTriangles
__glExpEndTriangles:
    # Line 167
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 162
    lui	$a1,0x19
    addiu	$a1,$a1,10816
    # addu	at,t9,a1
    # Line 165
    la	$a1,__glNop
    # Line 166
    lui	$v1,0x4
    ori	$v1,$v1,0x23c4
    # Line 165
    sw	$a1,12076($a0)
    # Line 166
    sw	$zero,0($v1)
    # Line 168
    jr	$ra
    # Line 167
    sw	$zero,0($v0)
.end __glExpEndTriangles

# Function: __glExpBeginTriangles
# Declared: Line 170 (Source lines: 171-177)
# Address: 0x0da64e58 - 0x0da64e88 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginTriangles
.ent __glExpBeginTriangles
__glExpBeginTriangles:
    # Line 176
    lui	$v0,0x4
    ori	$v0,$v0,0x33c8
    # Line 171
    lui	$a1,0x19
    addiu	$a1,$a1,10768
    # addu	at,t9,a1
    # Line 174
    la	$a1,__glExpEndTriangles
    # Line 175
    lui	$v1,0x4
    ori	$v1,$v1,0x23c0
    # Line 174
    sw	$a1,12076($a0)
    # Line 175
    sw	$zero,0($v1)
    # Line 177
    jr	$ra
    # Line 176
    sw	$zero,0($v0)
.end __glExpBeginTriangles

# Function: __glExpEndQStrip
# Declared: Line 179 (Source lines: 180-186)
# Address: 0x0da64e88 - 0x0da64eb8 (Size: 48 bytes, Frame: 0)
.globl __glExpEndQStrip
.ent __glExpEndQStrip
__glExpEndQStrip:
    # Line 185
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 180
    lui	$a1,0x19
    addiu	$a1,$a1,10720
    # addu	at,t9,a1
    # Line 183
    la	$a1,__glNop
    # Line 184
    lui	$v1,0x4
    ori	$v1,$v1,0x2144
    # Line 183
    sw	$a1,12076($a0)
    # Line 184
    sw	$zero,0($v1)
    # Line 186
    jr	$ra
    # Line 185
    sw	$zero,0($v0)
.end __glExpEndQStrip

# Function: __glExpBeginQStrip
# Declared: Line 188 (Source lines: 189-195)
# Address: 0x0da64eb8 - 0x0da64ee8 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginQStrip
.ent __glExpBeginQStrip
__glExpBeginQStrip:
    # Line 194
    lui	$v0,0x4
    ori	$v0,$v0,0x3134
    # Line 189
    lui	$a1,0x19
    addiu	$a1,$a1,10672
    # addu	at,t9,a1
    # Line 192
    la	$a1,__glExpEndQStrip
    # Line 193
    lui	$v1,0x4
    ori	$v1,$v1,0x2130
    # Line 192
    sw	$a1,12076($a0)
    # Line 193
    sw	$zero,0($v1)
    # Line 195
    jr	$ra
    # Line 194
    sw	$zero,0($v0)
.end __glExpBeginQStrip

# Function: __glExpEndQuads
# Declared: Line 197 (Source lines: 198-204)
# Address: 0x0da64ee8 - 0x0da64f18 (Size: 48 bytes, Frame: 0)
.globl __glExpEndQuads
.ent __glExpEndQuads
__glExpEndQuads:
    # Line 203
    lui	$v0,0x4
    ori	$v0,$v0,0x3194
    # Line 198
    lui	$a1,0x19
    addiu	$a1,$a1,10624
    # addu	at,t9,a1
    # Line 201
    la	$a1,__glNop
    # Line 202
    lui	$v1,0x4
    ori	$v1,$v1,0x23d0
    # Line 201
    sw	$a1,12076($a0)
    # Line 202
    sw	$zero,0($v1)
    # Line 204
    jr	$ra
    # Line 203
    sw	$zero,0($v0)
.end __glExpEndQuads

# Function: __glExpBeginQuads
# Declared: Line 206 (Source lines: 207-213)
# Address: 0x0da64f18 - 0x0da64f48 (Size: 48 bytes, Frame: 0)
.globl __glExpBeginQuads
.ent __glExpBeginQuads
__glExpBeginQuads:
    # Line 212
    lui	$v0,0x4
    ori	$v0,$v0,0x33d4
    # Line 207
    lui	$a1,0x19
    addiu	$a1,$a1,10576
    # addu	at,t9,a1
    # Line 210
    la	$a1,__glExpEndQuads
    # Line 211
    lui	$v1,0x4
    ori	$v1,$v1,0x23cc
    # Line 210
    sw	$a1,12076($a0)
    # Line 211
    sw	$zero,0($v1)
    # Line 213
    jr	$ra
    # Line 212
    sw	$zero,0($v0)
.end __glExpBeginQuads

# Function: __glexpim_Begin
# Declared: Line 215 (Source lines: 216-235)
# Address: 0x0da64f48 - 0x0da65010 (Size: 200 bytes, Frame: 48)
.globl __glexpim_Begin
.ent __glexpim_Begin
__glexpim_Begin:
    # Line 216
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,10528
    # Line 220
    lw	$a2,__glBeginMode
    # Line 218
    lw	$v0,__glCurrentContext
    # Line 216
    addu	$gp,$t9,$at
    # Line 220
    beqz	$a2,.L0da64f94
    sd	$v0,0($sp)
    li	$v1,2
    bne	$a2,$v1,.L0da64fc0
    sd	$ra,24($sp)
    ld	$t9,0($sp)
    # Line 223
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0da64f94:
    ld	$at,8($sp)
    # Line 226
    sltiu	$at,$at,10
    bnez	$at,.L0da64fdc
    sd	$ra,24($sp)
    # Line 230
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 231
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da64fc0:
    # Line 225
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 226
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da64fdc:
    # Line 233
    li	$ra,1
    ld	$t9,8($sp)
    # Line 234
    ld	$a0,0($sp)
    # Line 233
    sw	$ra,__glBeginMode
    # Line 234
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$a0
    lw	$t9,31568($t9)
    jalr	$t9
    nop
    # Line 235
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Begin

# Function: __glexpim_End
# Declared: Line 237 (Source lines: 238-250)
# Address: 0x0da65010 - 0x0da65070 (Size: 96 bytes, Frame: 16)
.globl __glexpim_End
.ent __glexpim_End
__glexpim_End:
    # Line 240
    lw	$a0,__glCurrentContext
    # Line 238
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 240
    lw	$at,__glBeginMode
    # Line 238
    lui	$v0,0x19
    addiu	$v0,$v0,10328
    # Line 240
    beqz	$at,.L0da65054
    # Line 238
    nop
    # Line 248
    lw	$t9,12076($a0)
    jalr	$t9
    nop
    # Line 250
    ld	$ra,8($sp)
    # Line 249
    sw	$zero,__glBeginMode
    # ld	gp,0(sp)
    # Line 250
    jr	$ra
    addiu	$sp,$sp,16
.L0da65054:
    # Line 244
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 245
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glexpim_End

