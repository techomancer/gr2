# Source: ../EXPRESS/gr2_pick.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_pick.c
# Total Functions: 22

.text

# Function: LoadHardDispatchVectors
# Declared: Line 31 (Source lines: 32-55)
# Address: 0x0da5fc74 - 0x0da5fe18 (Size: 420 bytes, Frame: 32)
.ent LoadHardDispatchVectors
LoadHardDispatchVectors:
    # Line 33
    li	$a2,40
    addiu	$a1,$a0,31648
    # Line 32
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    # Line 33
    # lw $t9, -23008($gp) # &memcpy
    # Line 32
    move	$s7,$a0
    sd	$ra,8($sp)
    # Line 33
    jal	memcpy
    addiu	$a0,$a0,31568
    # Line 35
    li	$a0,24
    move	$a2,$zero
    lw	$a4,5580($s7)
    la	$a3,__glexpim_hardVertexDispatchTable
    ld	$ra,8($sp)
    addiu	$a4,$a4,1484
.L0da5fcb0:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fcb0
    sw	$at,0($v0)
    lbu	$v0,31688($s7)
    lbu	$a0,3104($s7)
    # Line 38
    li	$a2,42
    # Line 35
    beqz	$v0,.L0da5fd4c
    lw	$a5,5580($s7)
    beqz	$a0,.L0da5fdb8
    # Line 41
    addiu	$a3,$a5,1580
    # Line 38
    addiu	$a4,$a5,1580
    la	$a3,__glexpim_shadowRGBColorDispatchTable
    move	$a0,$zero
.L0da5fcf4:
    addu	$a1,$a0,$a4
    addu	$v1,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0da5fcf4
    sw	$v1,0($a1)
    # Line 44
    li	$a0,10
.L0da5fd14:
    lw	$a4,5580($s7)
    move	$a2,$zero
    la	$a3,__glexpim_shadowNormalDispatchTable
    addiu	$a4,$a4,1748
.L0da5fd24:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fd24
    sw	$at,0($v0)
    # Line 55
    ld	$s7,0($sp)
.L0da5fd44:
    jr	$ra
    addiu	$sp,$sp,32
.L0da5fd4c:
    # Line 50
    move	$a2,$zero
    # Line 44
    beqz	$a0,.L0da5fde8
    # Line 47
    addiu	$a3,$a5,1580
    move	$a2,$zero
    la	$a4,__glexpim_hardRGBColorDispatchTable
    li	$a0,42
.L0da5fd64:
    addu	$v1,$a2,$a3
    addu	$v0,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fd64
    sw	$v0,0($v1)
    # Line 53
    li	$a0,10
.L0da5fd84:
    lw	$a3,5580($s7)
    move	$a2,$zero
    la	$a4,__glexpim_hardNormalDispatchTable
    addiu	$a3,$a3,1748
.L0da5fd94:
    addu	$v0,$a2,$a3
    addu	$at,$a2,$a4
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fd94
    sw	$at,0($v0)
    b	.L0da5fd44
    # Line 55
    ld	$s7,0($sp)
.L0da5fdb8:
    # Line 41
    la	$a4,__glexpim_shadowIndexColorDispatchTable
    li	$a0,42
    move	$a2,$zero
.L0da5fdc4:
    addu	$v1,$a2,$a3
    addu	$v0,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fdc4
    sw	$v0,0($v1)
    b	.L0da5fd14
    # Line 44
    li	$a0,10
.L0da5fde8:
    # Line 50
    la	$a4,__glexpim_hardIndexColorDispatchTable
    li	$a0,42
    addiu	$a3,$a5,1580
.L0da5fdf4:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fdf4
    sw	$v1,0($a1)
    b	.L0da5fd84
    # Line 53
    li	$a0,10
.end LoadHardDispatchVectors

# Function: LoadSoftDispatchVectors
# Declared: Line 57 (Source lines: 58-64)
# Address: 0x0da5fe18 - 0x0da5fedc (Size: 196 bytes, Frame: 32)
.ent LoadSoftDispatchVectors
LoadSoftDispatchVectors:
    # Line 59
    li	$a2,40
    addiu	$a1,$a0,31608
    # Line 58
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    # Line 59
    # lw $t9, -23008($gp) # &memcpy
    # Line 58
    move	$s7,$a0
    sd	$ra,8($sp)
    # Line 59
    jal	memcpy
    addiu	$a0,$a0,31568
    # Line 61
    li	$a2,24
    move	$a0,$zero
    lw	$a4,5580($s7)
    la	$a3,__glexpim_vertexDispatchTable
    ld	$ra,8($sp)
    addiu	$a4,$a4,1484
.L0da5fe54:
    addu	$v0,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0da5fe54
    sw	$at,0($v0)
    # Line 62
    li	$a0,42
    lw	$a3,5580($s7)
    move	$a2,$zero
    la	$a4,__glexpim_colorDispatchTable
    addiu	$a3,$a3,1580
.L0da5fe84:
    addu	$v0,$a2,$a3
    addu	$at,$a2,$a4
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5fe84
    sw	$at,0($v0)
    # Line 63
    li	$a0,10
    move	$a2,$zero
    lw	$a3,5580($s7)
    la	$a4,__glexpim_normalDispatchTable
    # Line 64
    ld	$s7,0($sp)
    # Line 63
    addiu	$a3,$a3,1748
.L0da5feb8:
    addu	$v0,$a2,$a3
    addu	$at,$a2,$a4
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5feb8
    sw	$at,0($v0)
    # Line 64
    jr	$ra
    addiu	$sp,$sp,32
.end LoadSoftDispatchVectors

# Function: SwitchPrimDispatch
# Declared: Line 66 (Source lines: 67-94)
# Address: 0x0da5fedc - 0x0da5ffa8 (Size: 204 bytes, Frame: 32)
.ent SwitchPrimDispatch
SwitchPrimDispatch:
    # Line 67
    addiu	$sp,$sp,-32
    lbu	$at,31567($a0)
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    beqz	$at,.L0da5ff50
    move	$s0,$a0
    # Line 70
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-908
    bal __glExpDlistOptimizer
    move	$a0,$s0
    # Line 72
    # lw $t9, -32384($gp) # &__glExpPassMachineState
    bal __glExpPassMachineState
    move	$a0,$s0
    # Line 74
    sb	$zero,31567($s0)
    # Line 75
    lw	$v0,4124($zero)
    andi	$v0,$v0,0x1
    sw	$v0,4124($zero)
    # Line 80
    lw	$t9,11920($s0)
    # Line 78
    la	$at,__glNop
    # Line 80
    move	$a0,$s0
    jal	__glExpPassMachineState
    # Line 78
    sw	$at,12028($s0)
    # Line 81
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
.L0da5ff48:
    # Line 94
    jr	$ra
    addiu	$sp,$sp,32
.L0da5ff50:
    # Line 84
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-488
    bal __glExpDlistOptimizer
    move	$a0,$s0
    # Line 86
    # lw $t9, -32380($gp) # &__glExpGetMachineState
    bal __glExpGetMachineState
    move	$a0,$s0
    # Line 88
    li	$v0,1
    sb	$v0,31567($s0)
    # Line 89
    lw	$ra,4124($zero)
    li	$at,-2
    or	$ra,$ra,$at
    sw	$ra,4124($zero)
    # Line 91
    lw	$t9,11920($s0)
    jal	__glExpGetMachineState
    move	$a0,$s0
    # Line 92
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,8($sp)
    b	.L0da5ff48
    ld	$s0,0($sp)
.end SwitchPrimDispatch

# Function: __glExpLoadPrimDispatchVectors
# Declared: Line 96 (Source lines: 97-103)
# Address: 0x0da5ffa8 - 0x0da60000 (Size: 88 bytes, Frame: 32)
.globl __glExpLoadPrimDispatchVectors
.ent __glExpLoadPrimDispatchVectors
__glExpLoadPrimDispatchVectors:
    # Line 97
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lbu	$at,31567($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,30912
    beqz	$at,.L0da5ffe8
    nop
    # Line 99
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-488
    bal __glExpDlistOptimizer
    nop
    ld	$ra,8($sp)
.L0da5ffdc:
    # ld	gp,0(sp)
    # Line 103
    jr	$ra
    addiu	$sp,$sp,32
.L0da5ffe8:
    # Line 101
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-908
    bal __glExpDlistOptimizer
    nop
    b	.L0da5ffdc
    ld	$ra,8($sp)
.end __glExpLoadPrimDispatchVectors

# Function: SwitchLLoop
# Declared: Line 110 (Source lines: 111-116)
# Address: 0x0da60000 - 0x0da6004c (Size: 76 bytes, Frame: 48)
.ent SwitchLLoop
SwitchLLoop:
    # Line 111
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30824
    # addu	gp,t9,s8
    # Line 114
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 111
    move	$s8,$a0
    # Line 115
    lw	$t9,31576($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 116
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchLLoop

# Function: SwitchLStrip
# Declared: Line 118 (Source lines: 119-124)
# Address: 0x0da6004c - 0x0da60098 (Size: 76 bytes, Frame: 48)
.ent SwitchLStrip
SwitchLStrip:
    # Line 119
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30748
    # addu	gp,t9,s8
    # Line 122
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 119
    move	$s8,$a0
    # Line 123
    lw	$t9,31580($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 124
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchLStrip

# Function: SwitchLines
# Declared: Line 126 (Source lines: 127-132)
# Address: 0x0da60098 - 0x0da600e4 (Size: 76 bytes, Frame: 48)
.ent SwitchLines
SwitchLines:
    # Line 127
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30672
    # addu	gp,t9,s8
    # Line 130
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 127
    move	$s8,$a0
    # Line 131
    lw	$t9,31572($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 132
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchLines

# Function: SwitchPoints
# Declared: Line 134 (Source lines: 135-140)
# Address: 0x0da600e4 - 0x0da60130 (Size: 76 bytes, Frame: 48)
.ent SwitchPoints
SwitchPoints:
    # Line 135
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30596
    # addu	gp,t9,s8
    # Line 138
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 135
    move	$s8,$a0
    # Line 139
    lw	$t9,31568($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 140
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchPoints

# Function: SwitchPolygon
# Declared: Line 142 (Source lines: 143-148)
# Address: 0x0da60130 - 0x0da6017c (Size: 76 bytes, Frame: 48)
.ent SwitchPolygon
SwitchPolygon:
    # Line 143
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30520
    # addu	gp,t9,s8
    # Line 146
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 143
    move	$s8,$a0
    # Line 147
    lw	$t9,31604($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 148
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchPolygon

# Function: SwitchTStrip
# Declared: Line 150 (Source lines: 151-156)
# Address: 0x0da6017c - 0x0da601c8 (Size: 76 bytes, Frame: 48)
.ent SwitchTStrip
SwitchTStrip:
    # Line 151
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30444
    # addu	gp,t9,s8
    # Line 154
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 151
    move	$s8,$a0
    # Line 155
    lw	$t9,31588($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 156
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchTStrip

# Function: SwitchTFan
# Declared: Line 158 (Source lines: 159-164)
# Address: 0x0da601c8 - 0x0da60214 (Size: 76 bytes, Frame: 48)
.ent SwitchTFan
SwitchTFan:
    # Line 159
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30368
    # addu	gp,t9,s8
    # Line 162
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 159
    move	$s8,$a0
    # Line 163
    lw	$t9,31592($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 164
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchTFan

# Function: SwitchTriangles
# Declared: Line 166 (Source lines: 167-172)
# Address: 0x0da60214 - 0x0da60260 (Size: 76 bytes, Frame: 48)
.ent SwitchTriangles
SwitchTriangles:
    # Line 167
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30292
    # addu	gp,t9,s8
    # Line 170
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 167
    move	$s8,$a0
    # Line 171
    lw	$t9,31584($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 172
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchTriangles

# Function: SwitchQStrip
# Declared: Line 174 (Source lines: 175-180)
# Address: 0x0da60260 - 0x0da602ac (Size: 76 bytes, Frame: 48)
.ent SwitchQStrip
SwitchQStrip:
    # Line 175
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30216
    # addu	gp,t9,s8
    # Line 178
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 175
    move	$s8,$a0
    # Line 179
    lw	$t9,31600($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 180
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchQStrip

# Function: SwitchQuads
# Declared: Line 182 (Source lines: 183-188)
# Address: 0x0da602ac - 0x0da602f8 (Size: 76 bytes, Frame: 48)
.ent SwitchQuads
SwitchQuads:
    # Line 183
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,30140
    # addu	gp,t9,s8
    # Line 186
    # lw $t9, -32744($gp) # &sub_0da60000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    # Line 183
    move	$s8,$a0
    # Line 187
    lw	$t9,31596($s8)
    jal	sub_0da60000
    move	$a0,$s8
    # Line 188
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SwitchQuads

# Function: __glExpPickPrimDispatch
# Declared: Line 196 (Source lines: 197-360)
# Address: 0x0da602f8 - 0x0da60764 (Size: 1132 bytes, Frame: 48)
.globl __glExpPickPrimDispatch
.ent __glExpPickPrimDispatch
__glExpPickPrimDispatch:
    # Line 203
    move	$a5,$zero
    # Line 202
    move	$a6,$zero
    # Line 201
    move	$a4,$zero
    # Line 200
    move	$a3,$zero
    # Line 197
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 204
    move	$s1,$zero
    sd	$s0,0($sp)
    # Line 197
    move	$s0,$a0
    # sd	gp,16(sp)
    # Line 199
    lw	$a2,1696($a0)
    # Line 197
    lui	$v0,0x19
    addiu	$v0,$v0,30064
    # Line 209
    andi	$at,$a2,0x1
    beqz	$at,.L0da60680
    # Line 197
    nop
.L0da60338:
    # Line 217
    li	$a3,1
.L0da6033c:
    andi	$v1,$a2,0x20
.L0da60340:
    beqzl	$v1,.L0da60568
    # Line 223
    lw	$v1,1788($s0)
    lbu	$a1,3105($s0)
    beqzl	$a1,.L0da60568
    lw	$v1,1788($s0)
    # Line 227
    li	$a3,1
.L0da60358:
    lw	$at,30440($s0)
.L0da6035c:
    li	$a1,3057
    lui	$v0,0x8
    and	$at,$at,$v0
    beqz	$at,.L0da60380
    # Line 241
    ldc1	$f1,_lit8_3ff0000000000000
    # Line 227
    lw	$v1,1736($s0)
    beq	$v1,$a1,.L0da60384
    # Line 237
    andi	$at,$a2,0x400
    li	$a3,1
.L0da60380:
    andi	$at,$a2,0x400
.L0da60384:
    beqz	$at,.L0da603bc
    # Line 245
    andi	$a1,$a2,0x200
    # Line 241
    lwc1	$f0,436($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    nop
    bc1fl	.L0da603b8
    # Line 245
    li	$a4,1
    # Line 241
    lw	$v0,1800($s0)
    li	$v1,4354
    bne	$v0,$v1,.L0da603bc
    # Line 245
    andi	$a1,$a2,0x200
    li	$a4,1
.L0da603b8:
    andi	$a1,$a2,0x200
.L0da603bc:
    beqz	$a1,.L0da603f8
    # Line 248
    ldc1	$f2,_lit8_3ff0000000000000
    lwc1	$f1,448($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f2
    nop
    bc1fl	.L0da603f8
    # Line 253
    li	$a6,1
    # Line 248
    lw	$at,1804($s0)
    li	$v0,4354
    beq	$at,$v0,.L0da603f4
    andi	$v1,$a2,0x100
    beqz	$v1,.L0da603fc
    # Line 256
    andi	$a1,$a2,0x800
.L0da603f4:
    # Line 253
    li	$a6,1
.L0da603f8:
    # Line 256
    andi	$a1,$a2,0x800
.L0da603fc:
    beqzl	$a1,.L0da606ec
    lw	$a0,460($s0)
    # Line 265
    li	$a5,1
.L0da60408:
    # Line 278
    lw	$at,1712($s0)
.L0da6040c:
    beqzl	$at,.L0da60730
    lw	$a1,1716($s0)
    # Line 280
    li	$a4,1
.L0da60418:
    # Line 279
    li	$s1,1
.L0da6041c:
    # Line 283
    beqz	$a4,.L0da60594
    # Line 285
    la	$v0,sub_0da60000
.L0da60424:
    # Line 284
    lw	$v1,12036($s0)
    # Line 285
    addiu	$v0,$v0,228
    sw	$v0,31648($s0)
    # Line 284
    sw	$v1,31608($s0)
.L0da60434:
    # Line 291
    beqz	$a6,.L0da605b4
    # Line 298
    la	$v0,sub_0da60000
.L0da6043c:
    addiu	$v0,$v0,152
    sw	$v0,31652($s0)
    # Line 293
    lw	$a1,12048($s0)
    # Line 292
    lw	$v1,12044($s0)
    # Line 294
    lw	$at,12040($s0)
    # Line 293
    sw	$a1,31620($s0)
    # Line 296
    la	$a1,sub_0da60000
    # Line 294
    sw	$at,31612($s0)
    # Line 297
    la	$at,sub_0da60000
    # Line 292
    sw	$v1,31616($s0)
    # Line 296
    addiu	$a1,$a1,0
    # Line 297
    addiu	$at,$at,76
    sw	$at,31660($s0)
    # Line 296
    sw	$a1,31656($s0)
.L0da60474:
    # Line 309
    beqz	$a5,.L0da605fc
    nop
    # Line 314
    lw	$a1,12068($s0)
.L0da60480:
    # Line 315
    lw	$at,12064($s0)
    # Line 314
    sw	$a1,31640($s0)
    # Line 310
    lw	$a1,12072($s0)
    # Line 315
    sw	$at,31636($s0)
    # Line 311
    lw	$at,12056($s0)
    # Line 310
    sw	$a1,31644($s0)
    # Line 319
    la	$a1,sub_0da60000
    # Line 311
    sw	$at,31628($s0)
    # Line 320
    la	$at,sub_0da60000
    # Line 319
    addiu	$a1,$a1,456
    # Line 313
    lw	$v1,12052($s0)
    # Line 320
    addiu	$at,$at,532
    # Line 312
    lw	$v0,12060($s0)
    # Line 313
    sw	$v1,31624($s0)
    # Line 322
    la	$v1,sub_0da60000
    # Line 312
    sw	$v0,31632($s0)
    # Line 321
    la	$v0,sub_0da60000
    # Line 320
    sw	$at,31664($s0)
    # Line 322
    addiu	$v1,$v1,684
    # Line 321
    addiu	$v0,$v0,608
    sw	$v0,31680($s0)
    # Line 317
    la	$v0,sub_0da60000
    # Line 322
    sw	$v1,31676($s0)
    # Line 318
    la	$v1,sub_0da60000
    # Line 319
    sw	$a1,31672($s0)
    # Line 317
    addiu	$v0,$v0,304
    # Line 318
    addiu	$v1,$v1,380
    sw	$v1,31668($s0)
    # Line 317
    sw	$v0,31684($s0)
.L0da604f4:
    # Line 342
    sb	$s1,31688($s0)
    beqz	$s1,.L0da60740
    lw	$a0,4124($zero)
    # Line 344
    ori	$v0,$a0,0x1
    sw	$v0,4124($zero)
.L0da60508:
    # Line 346
    lbu	$v1,31567($s0)
    beq	$v1,$a3,.L0da6052c
    sd	$ra,24($sp)
    # Line 349
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$t9,$t9,-292
    bal __glExpDlistOptimizer
    move	$a0,$s0
    b	.L0da6053c
    ld	$ra,24($sp)
.L0da6052c:
    # Line 351
    # lw $t9, -32176($gp) # &__glExpLoadPrimDispatchVectors
    bal __glExpLoadPrimDispatchVectors
    move	$a0,$s0
    ld	$ra,24($sp)
.L0da6053c:
    move	$at,$s1
    beqz	$at,.L0da60554
    ld	$s1,8($sp)
    lbu	$v0,31567($s0)
    beqz	$v0,.L0da60750
    ld	$s1,8($sp)
.L0da60554:
    # ld	gp,16(sp)
    # Line 360
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 223
    lw	$v1,1788($s0)
.L0da60568:
    li	$a1,1032
    bnel	$v1,$a1,.L0da6035c
    # Line 227
    lw	$at,30440($s0)
    # Line 223
    andi	$at,$a2,0x2
    bnezl	$at,.L0da60358
    # Line 227
    li	$a3,1
    # Line 223
    andi	$v0,$a2,0x4
    beqzl	$v0,.L0da6035c
    # Line 227
    lw	$at,30440($s0)
    b	.L0da60358
    li	$a3,1
.L0da60594:
    # Line 283
    bnez	$a3,.L0da60424
    # Line 285
    la	$v0,sub_0da60000
    # Line 287
    la	$a1,__glExpBeginPoints
    # Line 288
    la	$v1,sub_0da60000
    # Line 287
    sw	$a1,31648($s0)
    # Line 288
    addiu	$v1,$v1,228
    b	.L0da60434
    sw	$v1,31608($s0)
.L0da605b4:
    # Line 291
    bnez	$a3,.L0da6043c
    # Line 298
    la	$v0,sub_0da60000
    # Line 302
    la	$v0,__glExpBeginLines
    sw	$v0,31652($s0)
    # Line 301
    la	$at,__glExpBeginLStrip
    # Line 300
    la	$a1,__glExpBeginLLoop
    # Line 306
    la	$v1,sub_0da60000
    # Line 301
    sw	$at,31660($s0)
    # Line 300
    sw	$a1,31656($s0)
    # Line 306
    addiu	$v1,$v1,152
    # Line 305
    la	$v0,sub_0da60000
    # Line 306
    sw	$v1,31612($s0)
    # Line 304
    la	$at,sub_0da60000
    # Line 305
    addiu	$v0,$v0,76
    sw	$v0,31620($s0)
    # Line 304
    addiu	$at,$at,0
    b	.L0da60474
    sw	$at,31616($s0)
.L0da605fc:
    # Line 309
    bnezl	$a3,.L0da60480
    # Line 314
    lw	$a1,12068($s0)
    # Line 329
    la	$v0,__glExpBeginQuads
    # Line 328
    la	$at,__glExpBeginQStrip
    # Line 329
    sw	$v0,31676($s0)
    # Line 327
    la	$a1,__glExpBeginTriangles
    # Line 328
    sw	$at,31680($s0)
    # Line 326
    la	$v1,__glExpBeginTFan
    # Line 327
    sw	$a1,31664($s0)
    # Line 325
    la	$v0,__glExpBeginTStrip
    # Line 326
    sw	$v1,31672($s0)
    # Line 324
    la	$at,__glExpBeginPolygon
    # Line 325
    sw	$v0,31668($s0)
    # Line 336
    la	$a1,sub_0da60000
    # Line 324
    sw	$at,31684($s0)
    # Line 335
    la	$v1,sub_0da60000
    # Line 336
    addiu	$a1,$a1,684
    sw	$a1,31636($s0)
    # Line 335
    addiu	$v1,$v1,608
    # Line 334
    la	$v0,sub_0da60000
    # Line 335
    sw	$v1,31640($s0)
    # Line 333
    la	$at,sub_0da60000
    # Line 334
    addiu	$v0,$v0,532
    sw	$v0,31624($s0)
    # Line 333
    addiu	$at,$at,456
    # Line 332
    la	$a1,sub_0da60000
    # Line 333
    sw	$at,31632($s0)
    # Line 331
    la	$v1,sub_0da60000
    # Line 332
    addiu	$a1,$a1,380
    sw	$a1,31628($s0)
    # Line 331
    addiu	$v1,$v1,304
    b	.L0da604f4
    sw	$v1,31644($s0)
.L0da60680:
    # Line 209
    lui	$v1,0xc03f
    and	$v1,$a2,$v1
    bnezl	$v1,.L0da6033c
    # Line 217
    li	$a3,1
    # Line 209
    andi	$a1,$a2,0x10
    beqz	$a1,.L0da606b4
    andi	$v1,$a2,0x8000
    lbu	$at,3109($s0)
    beqz	$at,.L0da606b4
    andi	$v1,$a2,0x8000
    lbu	$v0,31565($s0)
    beqz	$v0,.L0da60338
    andi	$v1,$a2,0x8000
.L0da606b4:
    beqzl	$v1,.L0da606d8
    lw	$v0,3092($s0)
    lbu	$a1,3110($s0)
    beqzl	$a1,.L0da606d8
    lw	$v0,3092($s0)
    lbu	$at,31566($s0)
    beqzl	$at,.L0da6033c
    # Line 217
    li	$a3,1
    # Line 209
    lw	$v0,3092($s0)
.L0da606d8:
    li	$v1,7168
    beq	$v0,$v1,.L0da60340
    # Line 217
    andi	$v1,$a2,0x20
    b	.L0da6033c
    li	$a3,1
.L0da606ec:
    # Line 256
    lw	$a2,464($s0)
    bnel	$a0,$a2,.L0da60408
    # Line 265
    li	$a5,1
    # Line 256
    beqz	$a4,.L0da60710
    li	$a7,6912
    beql	$a7,$a0,.L0da60408
    # Line 265
    li	$a5,1
    # Line 256
    beql	$a7,$a2,.L0da60408
    # Line 265
    li	$a5,1
.L0da60710:
    # Line 256
    beqz	$a6,.L0da60408
    li	$a7,6913
    beql	$a7,$a0,.L0da60408
    # Line 265
    li	$a5,1
    # Line 256
    bnel	$a7,$a2,.L0da6040c
    # Line 278
    lw	$at,1712($s0)
    b	.L0da60408
    # Line 265
    li	$a5,1
.L0da60730:
    # Line 278
    beqz	$a1,.L0da6041c
    nop
    b	.L0da60418
    # Line 280
    li	$a4,1
.L0da60740:
    # Line 346
    li	$at,-2
    and	$at,$a0,$at
    b	.L0da60508
    sw	$at,4124($zero)
.L0da60750:
    # Line 358
    # lw $t9, -32380($gp) # &__glExpGetMachineState
    bal __glExpGetMachineState
    move	$a0,$s0
    b	.L0da60554
    ld	$ra,24($sp)
.end __glExpPickPrimDispatch

# Function: __glExpInitPrimDispatchState
# Declared: Line 362 (Source lines: 363-376)
# Address: 0x0da60764 - 0x0da6078c (Size: 40 bytes, Frame: 0)
.globl __glExpInitPrimDispatchState
.ent __glExpInitPrimDispatchState
__glExpInitPrimDispatchState:
    # Line 369
    sw	$zero,31892($a0)
    # Line 368
    sb	$zero,31688($a0)
    # Line 367
    sb	$zero,31567($a0)
    # Line 363
    lui	$v1,0x19
    addiu	$v1,$v1,28932
    # addu	at,t9,v1
    # Line 375
    la	$v0,__glNop
    # Line 370
    sw	$zero,4124($zero)
    # Line 376
    jr	$ra
    # Line 375
    sw	$v0,12028($a0)
.end __glExpInitPrimDispatchState

# Function: __glExpPickBufferProcs
# Declared: Line 380 (Source lines: 381-383)
# Address: 0x0da6078c - 0x0da607c0 (Size: 52 bytes, Frame: 32)
.globl __glExpPickBufferProcs
.ent __glExpPickBufferProcs
__glExpPickBufferProcs:
    # Line 381
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,28892
    # addu	gp,t9,at
    # Line 382
    # lw $t9, -27844($gp) # &__glGenericPickBufferProcs
    sd	$ra,0($sp)
    jal	__glGenericPickBufferProcs
    nop
    # Line 383
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpPickBufferProcs

# Function: __glExpPickSpanProcs
# Declared: Line 387 (Source lines: 388-804)
# Address: 0x0da607c0 - 0x0da60fb4 (Size: 2036 bytes, Frame: 240)
.globl __glExpPickSpanProcs
.ent __glExpPickSpanProcs
__glExpPickSpanProcs:
    # Line 403
    sw	$zero,12172($a0)
    # Line 388
    addiu	$sp,$sp,-112
    sd	$s4,40($sp)
    # Line 397
    move	$s4,$zero
    sd	$s2,48($sp)
    # Line 388
    move	$s2,$a0
    sd	$s1,24($sp)
    # Line 403
    addiu	$s1,$a0,12176
    sd	$s0,32($sp)
    # Line 402
    addiu	$s0,$a0,12116
    sd	$s5,16($sp)
    # Line 391
    lw	$s5,11768($a0)
    sd	$s3,56($sp)
    # Line 390
    lw	$s3,30440($a0)
    # sd	gp,64(sp)
    # Line 388
    lui	$v1,0x19
    addiu	$v1,$v1,28840
    # addu	gp,t9,v1
    # Line 406
    la	$a1,__glStippleSpan
    # Line 402
    la	$v0,__glClipSpan
    # Line 403
    andi	$at,$s3,0x10
    beqz	$at,.L0da60830
    # Line 402
    sw	$v0,12112($a0)
    # Line 407
    addiu	$s1,$s2,12180
    la	$a2,__glStippleStippledSpan
    # Line 406
    addiu	$s0,$s2,12120
    sw	$a1,12116($s2)
    # Line 407
    sw	$a2,12176($s2)
.L0da60830:
    andi	$a0,$s3,0x200
    beqz	$a0,.L0da60a70
    andi	$a1,$s3,0x20
.L0da6083c:
    # Line 447
    andi	$v0,$s3,0x1
.L0da60840:
    beqz	$v0,.L0da6084c
    andi	$at,$s3,0x1200
    beqz	$at,.L0da60ac4
.L0da6084c:
    # Line 483
    andi	$a3,$s3,0x2
.L0da60850:
    beqz	$v0,.L0da60aa0
    nop
    beqz	$a3,.L0da60b20
    # Line 567
    la	$v1,__glShadeRGBASpan
    sw	$v1,0($s0)
    # Line 568
    sw	$v1,0($s1)
.L0da60868:
    # Line 583
    addiu	$s1,$s1,4
    # Line 586
    lui	$at,0x2
    # Line 583
    andi	$a1,$s3,0x8
    beqz	$a1,.L0da608e8
    # Line 582
    addiu	$s0,$s0,4
    # Line 585
    la	$a1,__glTextureSpan
    # Line 586
    la	$v1,__glTextureStippledSpan
    # Line 585
    sw	$a1,0($s0)
    # Line 586
    sw	$v1,0($s1)
    lw	$a2,1696($s2)
    and	$a2,$a2,$at
    beqzl	$a2,.L0da608e4
    # Line 617
    addiu	$s1,$s1,4
    sd	$a0,80($sp)
    # Line 590
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s2
    sd	$ra,88($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 591
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$v0,8($sp)
    move	$a0,$s2
    jal	__glLookUpTexture
    li	$a1,3553
    lw	$a3,228($v0)
    lw	$a2,64($a3)
    ld	$a0,80($sp)
    li	$at,6407
    beq	$a2,$at,.L0da60bbc
    ld	$ra,88($sp)
.L0da608e0:
    # Line 617
    addiu	$s1,$s1,4
.L0da608e4:
    # Line 616
    addiu	$s0,$s0,4
.L0da608e8:
    # Line 617
    andi	$v1,$s3,0x1000
    beqz	$v1,.L0da60914
    li	$a2,4354
    lw	$a1,1812($s2)
    beq	$a1,$a2,.L0da60b30
    # Line 624
    la	$v1,__glFogSpan
    # Line 625
    la	$at,__glFogStippledSpan
    # Line 624
    sw	$v1,0($s0)
    # Line 625
    sw	$at,0($s1)
.L0da6090c:
    # Line 628
    addiu	$s1,$s1,4
    # Line 627
    addiu	$s0,$s0,4
.L0da60914:
    # Line 633
    andi	$a2,$s3,0x20
    # Line 628
    beqz	$a0,.L0da60954
    # Line 632
    la	$at,__glAlphaTestSpan
    # Line 633
    addiu	$s1,$s1,4
    # Line 632
    addiu	$s0,$s0,4
    # Line 633
    la	$a1,__glAlphaTestStippledSpan
    # Line 632
    sw	$at,-4($s0)
    # Line 633
    beqz	$a2,.L0da60940
    sw	$a1,-4($s1)
    lbu	$v1,31566($s2)
    beqz	$v1,.L0da60b7c
.L0da60940:
    # Line 668
    andi	$a1,$s3,0x4
    beqz	$a1,.L0da60958
    # Line 703
    lui	$a1,0x8
    # Line 668
    lbu	$a2,31565($s2)
    beqz	$a2,.L0da60b44
.L0da60954:
    # Line 703
    lui	$a1,0x8
.L0da60958:
    # Line 670
    lbu	$at,30656($s2)
    # Line 702
    subu	$v1,$s0,$s2
    # Line 670
    beqz	$at,.L0da60978
    # Line 703
    and	$a1,$s3,$a1
    # Line 702
    addiu	$v1,$v1,-12112
    # Line 703
    li	$s4,1
    # Line 702
    sra	$v1,$v1,0x2
    sw	$v1,12232($s2)
.L0da60978:
    # Line 703
    beqz	$a1,.L0da60a1c
    li	$a4,3057
    lw	$a0,1736($s2)
    beq	$a4,$a0,.L0da60a1c
    # Line 710
    move	$v0,$a0
    # Line 713
    li	$a2,0x8007
    beq	$a0,$a2,.L0da609e0
    # Line 711
    lw	$a3,1756($s2)
    # Line 713
    li	$at,0x8008
    beq	$v0,$at,.L0da609e0
    li	$v1,0x800a
    beq	$v0,$v1,.L0da609e0
    li	$a1,0x800b
    beql	$v0,$a1,.L0da609e4
    # Line 719
    lw	$at,200($s5)
    # Line 713
    bne	$a4,$v0,.L0da609fc
    # Line 720
    li	$v1,0x8006
    # Line 713
    li	$a2,5376
    beq	$a3,$a2,.L0da609f8
    li	$at,5379
    beq	$a3,$at,.L0da609f8
    li	$v1,5388
    beq	$a3,$v1,.L0da609f8
    li	$a1,5391
    beq	$a3,$a1,.L0da609fc
    # Line 720
    li	$v1,0x8006
.L0da609e0:
    # Line 719
    lw	$at,200($s5)
.L0da609e4:
    sw	$at,0($s0)
    # Line 720
    lw	$a2,204($s5)
    addiu	$s1,$s1,4
    # Line 719
    addiu	$s0,$s0,4
    # Line 720
    sw	$a2,-4($s1)
.L0da609f8:
    li	$v1,0x8006
.L0da609fc:
    beql	$v0,$v1,.L0da60a20
    # Line 792
    lw	$v1,184($s5)
    # Line 724
    addiu	$s1,$s1,4
    # Line 723
    la	$a2,__glBlendSpan
    # Line 724
    la	$a1,__glBlendStippledSpan
    # Line 723
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 724
    sw	$a1,-4($s1)
.L0da60a1c:
    # Line 792
    lw	$v1,184($s5)
.L0da60a20:
    sw	$v1,0($s0)
    # Line 793
    lw	$at,188($s5)
    # Line 792
    addiu	$s0,$s0,4
    # Line 793
    sw	$at,0($s1)
.L0da60a30:
    # Line 804
    ld	$s1,24($sp)
    ld	$s5,16($sp)
    # Line 797
    subu	$v0,$s0,$s2
    addiu	$v0,$v0,-12112
    sra	$v0,$v0,0x2
    beqz	$s4,.L0da60ab4
    sw	$v0,12236($s2)
    # Line 799
    la	$v1,__glProcessReplicateSpan
    sw	$v1,12240($s2)
.L0da60a54:
    # Line 804
    ld	$s3,56($sp)
    ld	$s0,32($sp)
    # ld	gp,64(sp)
    ld	$s2,48($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da60a70:
    # Line 407
    beqz	$a1,.L0da60a84
    # Line 445
    andi	$at,$s3,0x4
    # Line 407
    lbu	$a2,31566($s2)
    beqz	$a2,.L0da60c5c
    # Line 445
    andi	$at,$s3,0x4
.L0da60a84:
    beqz	$at,.L0da60a98
    nop
    lbu	$v1,31565($s2)
    beqzl	$v1,.L0da60c28
    # Line 447
    lw	$v1,1536($s2)
.L0da60a98:
    b	.L0da60840
    andi	$v0,$s3,0x1
.L0da60aa0:
    # Line 571
    beqz	$a3,.L0da60c18
    # Line 575
    la	$a1,__glShadeCISpan
    sw	$a1,0($s0)
    # Line 576
    b	.L0da60868
    sw	$a1,0($s1)
.L0da60ab4:
    # Line 801
    la	$a2,__glProcessSpan
    # Line 802
    sw	$v0,12232($s2)
    b	.L0da60a54
    # Line 801
    sw	$a2,12240($s2)
.L0da60ac4:
    # Line 478
    lui	$at,0x8
    and	$at,$s3,$at
    bnez	$at,.L0da60850
    # Line 483
    andi	$a3,$s3,0x2
    # Line 478
    lbu	$v1,30656($s2)
    bnez	$v1,.L0da60850
    # Line 483
    andi	$a3,$s3,0x2
    # Line 478
    andi	$a1,$s3,0x8
    beqz	$a1,.L0da60df8
    # Line 547
    andi	$at,$s3,0x2
    # Line 484
    lw	$v0,1696($s2)
    lui	$a2,0x2
    and	$a2,$v0,$a2
    beqz	$a2,.L0da60b10
    move	$a0,$zero
    lui	$at,0x4000
    and	$at,$v0,$at
    beqzl	$at,.L0da60e34
    sd	$a0,72($sp)
.L0da60b10:
    # Line 491
    beqz	$a0,.L0da60e24
    # Line 544
    la	$v1,__glExpTextureSpan
.L0da60b18:
    # Line 547
    b	.L0da60a30
    addiu	$s0,$s0,4
.L0da60b20:
    # Line 568
    la	$v1,__glFlatRGBASpan
    # Line 570
    sw	$v1,0($s0)
    b	.L0da60868
    # Line 571
    sw	$v1,0($s1)
.L0da60b30:
    # Line 621
    la	$a2,__glFogSpanSlow
    # Line 622
    la	$a1,__glFogStippledSpanSlow
    # Line 621
    sw	$a2,0($s0)
    # Line 622
    b	.L0da6090c
    sw	$a1,0($s1)
.L0da60b44:
    # Line 670
    lw	$at,1536($s2)
    li	$v1,512
    beq	$at,$v1,.L0da60cdc
    # Line 676
    lui	$a1,0x4
    and	$a1,$s3,$a1
    beqzl	$a1,.L0da60c9c
    # Line 685
    addiu	$s1,$s1,4
    # Line 682
    addiu	$s1,$s1,4
    la	$at,__glDepthTestOffsetSpan
    # Line 681
    addiu	$s0,$s0,4
    la	$a2,__glDepthTestStippledOffsetSpan
    sw	$at,-4($s0)
    # Line 682
    b	.L0da60954
    sw	$a2,-4($s1)
.L0da60b7c:
    la	$a2,__glStencilTestSpan_asm
    # Line 643
    andi	$v1,$s3,0x4
    la	$a1,__glStencilTestStippledSpan
    # Line 639
    sw	$a2,0($s0)
    # Line 643
    beqz	$v1,.L0da60cc8
    sw	$a1,0($s1)
    lui	$at,0x4
    and	$at,$s3,$at
    beqz	$at,.L0da60cb4
    la	$a1,__glDepthTestStencilOffsetSpan
    la	$v1,__glDepthTestStencilStippledOffsetSpan
    # Line 648
    sw	$a1,4($s0)
    # Line 649
    sw	$v1,4($s1)
.L0da60bb0:
    # Line 668
    addiu	$s1,$s1,8
    b	.L0da60954
    # Line 667
    addiu	$s0,$s0,8
.L0da60bbc:
    # Line 591
    lw	$a2,56($a3)
    bnezl	$a2,.L0da608e4
    # Line 617
    addiu	$s1,$s1,4
    ld	$v0,8($sp)
    # Line 592
    lw	$v0,12($v0)
    li	$at,9986
    beq	$v0,$at,.L0da60d48
.L0da60bd8:
    # Line 597
    li	$a3,9987
.L0da60bdc:
    beq	$a3,$v0,.L0da60d78
.L0da60be0:
    # Line 602
    li	$a4,0x8146
.L0da60be4:
    beq	$a4,$v0,.L0da60da8
    ld	$a2,8($sp)
.L0da60bec:
    # Line 607
    bnel	$a3,$v0,.L0da608e4
    # Line 617
    addiu	$s1,$s1,4
    ld	$v1,8($sp)
    # Line 607
    lw	$v1,16($v1)
    bnel	$v1,$a4,.L0da608e4
    # Line 617
    addiu	$s1,$s1,4
    # Line 611
    la	$a2,__glTextureRGB_F_LML_Span
    # Line 612
    la	$a1,__glTextureRGB_F_LML_StippledSpan
    # Line 611
    sw	$a2,0($s0)
    b	.L0da608e0
    # Line 612
    sw	$a1,0($s1)
.L0da60c18:
    # Line 576
    la	$at,__glFlatCISpan
    # Line 578
    sw	$at,0($s0)
    b	.L0da60868
    # Line 579
    sw	$at,0($s1)
.L0da60c28:
    # Line 447
    li	$a1,512
    beq	$v1,$a1,.L0da60dcc
    # Line 453
    lui	$a2,0x4
    and	$a2,$s3,$a2
    beqzl	$a2,.L0da60d08
    # Line 462
    addiu	$s1,$s1,4
    # Line 459
    addiu	$s1,$s1,4
    # Line 458
    la	$v1,__glDepthTestOffsetSpan
    addiu	$s0,$s0,4
    la	$at,__glDepthTestStippledOffsetSpan
    sw	$v1,-4($s0)
    # Line 459
    b	.L0da60a98
    sw	$at,-4($s1)
.L0da60c5c:
    # Line 412
    la	$at,__glStencilTestSpan_asm
    # Line 420
    andi	$a1,$s3,0x4
    # Line 412
    la	$a2,__glStencilTestStippledSpan
    # Line 416
    sw	$at,0($s0)
    # Line 420
    beqz	$a1,.L0da60d34
    sw	$a2,0($s1)
    lui	$v1,0x4
    and	$v1,$s3,$v1
    beqz	$v1,.L0da60d20
    # Line 425
    la	$a2,__glDepthTestStencilOffsetSpan
    la	$a1,__glDepthTestStencilStippledOffsetSpan
    sw	$a2,4($s0)
    # Line 426
    sw	$a1,4($s1)
.L0da60c90:
    # Line 445
    addiu	$s1,$s1,8
    b	.L0da6083c
    # Line 444
    addiu	$s0,$s0,8
.L0da60c9c:
    la	$v1,__glDepthTestSpan_asm
    # Line 684
    addiu	$s0,$s0,4
    la	$at,__glDepthTestStippledSpan_asm
    sw	$v1,-4($s0)
    b	.L0da60954
    # Line 685
    sw	$at,-4($s1)
.L0da60cb4:
    la	$a2,__glDepthTestStencilSpan_asm
    la	$a1,__glDepthTestStencilStippledSpan_asm
    # Line 651
    sw	$a2,4($s0)
    b	.L0da60bb0
    # Line 652
    sw	$a1,4($s1)
.L0da60cc8:
    la	$v1,__glDepthPassSpan
    la	$at,__glDepthPassStippledSpan
    # Line 664
    sw	$v1,4($s0)
    b	.L0da60bb0
    # Line 665
    sw	$at,4($s1)
.L0da60cdc:
    # Line 675
    la	$a1,__glNop
    # ld	gp,64(sp)
    # Line 676
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    # Line 675
    sw	$a1,12240($s2)
    # Line 676
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da60d08:
    # Line 459
    la	$at,__glDepthTestSpan_asm
    # Line 461
    addiu	$s0,$s0,4
    # Line 459
    la	$a2,__glDepthTestStippledSpan_asm
    # Line 461
    sw	$at,-4($s0)
    b	.L0da60a98
    # Line 462
    sw	$a2,-4($s1)
.L0da60d20:
    # Line 426
    la	$a1,__glDepthTestStencilSpan_asm
    la	$v1,__glDepthTestStencilStippledSpan_asm
    # Line 428
    sw	$a1,4($s0)
    b	.L0da60c90
    # Line 429
    sw	$v1,4($s1)
.L0da60d34:
    la	$at,__glDepthPassSpan
    la	$a2,__glDepthPassStippledSpan
    # Line 441
    sw	$at,4($s0)
    b	.L0da60c90
    # Line 442
    sw	$a2,4($s1)
.L0da60d48:
    ld	$v1,8($sp)
    # Line 592
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0da60bdc
    # Line 597
    li	$a3,9987
    # Line 596
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 597
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    ld	$v0,8($sp)
    # Line 596
    sw	$a1,0($s0)
    # Line 597
    sw	$v1,0($s1)
    b	.L0da60bd8
    lw	$v0,12($v0)
.L0da60d78:
    ld	$a2,8($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0da60be4
    # Line 602
    li	$a4,0x8146
    # Line 601
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 602
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    ld	$v0,8($sp)
    # Line 601
    sw	$a1,0($s0)
    # Line 602
    sw	$v1,0($s1)
    b	.L0da60be0
    lw	$v0,12($v0)
.L0da60da8:
    lw	$a2,16($a2)
    bne	$a2,$a4,.L0da60bec
    # Line 606
    la	$a1,__glTextureRGB_F_F_Span
    # Line 607
    la	$v1,__glTextureRGB_F_F_StippledSpan
    ld	$v0,8($sp)
    # Line 606
    sw	$a1,0($s0)
    # Line 607
    sw	$v1,0($s1)
    b	.L0da60bec
    lw	$v0,12($v0)
.L0da60dcc:
    # Line 452
    la	$a2,__glNop
    # ld	gp,64(sp)
    # Line 453
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    # Line 452
    sw	$a2,12240($s2)
    # Line 453
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da60df8:
    # Line 547
    beqz	$at,.L0da60ee0
    # Line 551
    la	$v1,__glShadeRGBASpan
    sw	$v1,0($s0)
    # Line 552
    sw	$v1,0($s1)
.L0da60e08:
    # Line 561
    lw	$a2,184($s5)
    sw	$a2,4($s0)
    # Line 562
    lw	$a1,188($s5)
    # Line 561
    addiu	$s0,$s0,8
    b	.L0da60a30
    # Line 562
    sw	$a1,4($s1)
    # Line 544
    la	$v1,__glExpTextureSpan
.L0da60e24:
    # Line 545
    la	$at,__glExpTextureStippledSpan
    # Line 544
    sw	$v1,0($s0)
    b	.L0da60b18
    # Line 545
    sw	$at,0($s1)
.L0da60e34:
    # Line 489
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s2
    sd	$ra,88($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 490
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$v0,0($sp)
    move	$a0,$s2
    jal	__glLookUpTexture
    li	$a1,3553
    lw	$a3,228($v0)
    lw	$a1,64($a3)
    ld	$a0,72($sp)
    li	$a2,6407
    bne	$a1,$a2,.L0da60b10
    ld	$ra,88($sp)
    lw	$at,56($a3)
    bnez	$at,.L0da60b10
    # Line 491
    andi	$v1,$s3,0x2
    beqz	$v1,.L0da60ef0
    # Line 496
    la	$a1,__glShadeRGBASpan
    sw	$a1,0($s0)
    # Line 497
    sw	$a1,0($s1)
.L0da60e90:
    ld	$v0,0($sp)
    # Line 500
    lw	$v0,12($v0)
    li	$a2,9986
    beq	$v0,$a2,.L0da60f00
.L0da60ea0:
    # Line 509
    li	$a3,9987
.L0da60ea4:
    beq	$a3,$v0,.L0da60f34
.L0da60ea8:
    # Line 515
    li	$a4,0x8146
.L0da60eac:
    beq	$a4,$v0,.L0da60f68
    ld	$a2,0($sp)
.L0da60eb4:
    # Line 521
    beq	$a3,$v0,.L0da60f94
    ld	$a2,0($sp)
.L0da60ebc:
    # Line 527
    beqz	$a0,.L0da60e24
    # Line 544
    la	$v1,__glExpTextureSpan
    # Line 533
    lw	$a1,184($s5)
    sw	$a1,8($s0)
    # Line 532
    addiu	$s1,$s1,8
    # Line 534
    lw	$v1,188($s5)
    # Line 532
    addiu	$s0,$s0,8
    b	.L0da60b10
    # Line 534
    sw	$v1,0($s1)
.L0da60ee0:
    # Line 552
    la	$a2,__glFlatRGBASpan
    # Line 554
    sw	$a2,0($s0)
    b	.L0da60e08
    # Line 555
    sw	$a2,0($s1)
.L0da60ef0:
    # Line 497
    la	$at,__glFlatRGBASpan
    # Line 499
    sw	$at,0($s0)
    b	.L0da60e90
    # Line 500
    sw	$at,0($s1)
.L0da60f00:
    ld	$v1,0($sp)
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0da60ea4
    # Line 509
    li	$a3,9987
    li	$a0,1
    # Line 507
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 508
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    # Line 509
    ld	$v0,0($sp)
    # Line 507
    sw	$a1,4($s0)
    # Line 508
    sw	$v1,4($s1)
    b	.L0da60ea0
    # Line 509
    lw	$v0,12($v0)
.L0da60f34:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0da60eac
    # Line 515
    li	$a4,0x8146
    li	$a0,1
    # Line 513
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 514
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    # Line 515
    ld	$v0,0($sp)
    # Line 513
    sw	$a1,4($s0)
    # Line 514
    sw	$v1,4($s1)
    b	.L0da60ea8
    # Line 515
    lw	$v0,12($v0)
.L0da60f68:
    lw	$a2,16($a2)
    bne	$a2,$a4,.L0da60eb4
    nop
    # Line 521
    li	$a0,1
    # Line 519
    la	$a1,__glTextureRGB_F_F_Span
    # Line 520
    la	$v1,__glTextureRGB_F_F_StippledSpan
    # Line 521
    ld	$v0,0($sp)
    # Line 519
    sw	$a1,4($s0)
    # Line 520
    sw	$v1,4($s1)
    b	.L0da60eb4
    # Line 521
    lw	$v0,12($v0)
.L0da60f94:
    lw	$a2,16($a2)
    bne	$a2,$a4,.L0da60ebc
    # Line 525
    la	$v1,__glTextureRGB_F_LML_Span
    # Line 527
    li	$a0,1
    # Line 526
    la	$at,__glTextureRGB_F_LML_StippledSpan
    # Line 525
    sw	$v1,4($s0)
    b	.L0da60ebc
    # Line 526
    sw	$at,4($s1)
.end __glExpPickSpanProcs

# Function: __glExpPickLineProcs
# Declared: Line 830 (Source lines: 831-1057)
# Address: 0x0da60fb4 - 0x0da6147c (Size: 1224 bytes, Frame: 0)
.globl __glExpPickLineProcs
.ent __glExpPickLineProcs
__glExpPickLineProcs:
    # Line 831
    move	$t2,$zero
    move	$t0,$zero
    move	$t1,$zero
    move	$a7,$zero
    # Line 833
    lw	$a6,30440($a0)
    lw	$v0,28088($a0)
    # Line 831
    lui	$v1,0x19
    addiu	$v1,$v1,26804
    # Line 833
    beqz	$v0,.L0da61078
    # Line 831
    addu	$at,$t9,$v1
    # Line 844
    la	$a1,__glOtherLStripVertex
    sw	$a1,11964($a0)
.L0da60fe4:
    # Line 852
    move	$t3,$zero
    move	$t8,$zero
    # Line 844
    lw	$a3,3092($a0)
    li	$a2,7169
    beq	$a3,$a2,.L0da61090
    # Line 848
    li	$v0,7170
    beq	$a3,$v0,.L0da612b8
    # Line 850
    la	$v0,__glSelectLine
    # Line 854
    lw	$a5,1696($a0)
    # Line 862
    addiu	$a4,$a0,12312
    # Line 854
    andi	$a5,$a5,0x200
    beqz	$a5,.L0da6109c
    # Line 861
    addiu	$a3,$a0,12248
    # Line 856
    la	$v0,__glRenderAntiAliasLine
    sw	$v0,12480($a0)
.L0da61020:
    # Line 862
    beqz	$a5,.L0da610a8
    # Line 876
    la	$v1,__glScissorStippledLine
.L0da61028:
    addiu	$a4,$a4,4
.L0da6102c:
    # Line 873
    subu	$a2,$a3,$a0
    # Line 875
    addiu	$a3,$a3,4
    la	$a1,__glScissorLine
    # Line 873
    addiu	$a2,$a2,-12248
    sra	$a2,$a2,0x2
    sw	$a2,12376($a0)
    # Line 875
    sw	$a1,-4($a3)
    # Line 876
    beqz	$a5,.L0da610e8
    sw	$v1,-4($a4)
    # Line 900
    # lw $t9, -28200($gp) # &__glStencilTestStippledLine
.L0da61054:
    beqz	$a7,.L0da61120
    # Line 936
    andi	$a2,$a6,0x8
.L0da6105c:
    # Line 1049
    lw	$v0,1700($a0)
.L0da61060:
    andi	$v0,$v0,0x400
    beqz	$v0,.L0da61084
    # Line 1052
    la	$v1,__glPolygonOffsetLine
    sw	$v1,12488($a0)
    # Line 1057
    jr	$ra
    nop
.L0da61078:
    # Line 842
    la	$a1,__glOtherLStripVertexFast
    b	.L0da60fe4
    sw	$a1,11964($a0)
.L0da61084:
    # Line 1055
    lw	$a2,12480($a0)
    # Line 1057
    jr	$ra
    # Line 1055
    sw	$a2,12488($a0)
.L0da61090:
    # Line 848
    la	$v0,__glFeedbackLine
    b	.L0da6105c
    sw	$v0,12480($a0)
.L0da6109c:
    # Line 858
    la	$v1,__glRenderAliasLine
    b	.L0da61020
    sw	$v1,12480($a0)
.L0da610a8:
    # Line 862
    andi	$a1,$a6,0x8000
    beqz	$a1,.L0da610c8
    nop
    # Line 866
    sw	$zero,12312($a0)
    # Line 865
    la	$a2,__glStippleLine
    # Line 866
    addiu	$a4,$a0,12316
    # Line 865
    addiu	$a3,$a0,12252
    sw	$a2,12248($a0)
.L0da610c8:
    # Line 866
    bnezl	$a5,.L0da6102c
    # Line 876
    addiu	$a4,$a4,4
    # Line 866
    lw	$v0,452($a0)
    slti	$v0,$v0,2
    bnezl	$v0,.L0da6102c
    # Line 876
    addiu	$a4,$a4,4
    b	.L0da61028
    # Line 870
    li	$t3,1
.L0da610e8:
    # Line 876
    andi	$v1,$a6,0x20
    beqz	$v1,.L0da61100
    # Line 894
    andi	$a2,$a6,0x4
    # Line 876
    lbu	$a1,31566($a0)
    beqz	$a1,.L0da61328
    # Line 894
    andi	$a2,$a6,0x4
.L0da61100:
    beqz	$a2,.L0da61114
    # Line 912
    nop	# was lw $t9, -28200($gp) # &__glStencilTestStippledLine
    # Line 894
    lbu	$v0,31565($a0)
    beqz	$v0,.L0da612f8
.L0da61110:
    # Line 912
    nop	# was lw $t9, -28200($gp) # &__glStencilTestStippledLine
.L0da61114:
    la	$a7,__glStencilTestLine
.L0da61118:
    # Line 900
    b	.L0da61054
    move	$a7,$t1
.L0da61120:
    andi	$v1,$a6,0x1
    beqz	$v1,.L0da612c0
    andi	$a7,$a6,0x2
    beqz	$a7,.L0da612d4
    # Line 920
    la	$a1,__glShadeRGBASpan
    sw	$a1,0($a3)
    # Line 921
    sw	$a1,0($a4)
.L0da6113c:
    # Line 936
    addiu	$a4,$a4,4
    beqz	$a2,.L0da61160
    # Line 935
    addiu	$a3,$a3,4
    # Line 939
    addiu	$a4,$a4,4
    # Line 938
    la	$v1,__glTextureSpan
    # Line 939
    la	$v0,__glTextureStippledSpan
    # Line 938
    addiu	$a3,$a3,4
    sw	$v1,-4($a3)
    # Line 939
    sw	$v0,-4($a4)
.L0da61160:
    andi	$a1,$a6,0x1000
    beqz	$a1,.L0da61190
    nop
    lw	$a2,1812($a0)
    li	$v0,4354
    beq	$a2,$v0,.L0da612e4
    # Line 946
    la	$a1,__glFogSpan
    # Line 947
    la	$v1,__glFogStippledSpan
    # Line 946
    sw	$a1,0($a3)
    # Line 947
    sw	$v1,0($a4)
.L0da61188:
    # Line 950
    addiu	$a4,$a4,4
    # Line 949
    addiu	$a3,$a3,4
.L0da61190:
    # Line 950
    beqz	$a5,.L0da611e0
    nop
    # Line 955
    addiu	$a4,$a4,4
    # Line 954
    la	$v0,__glAntiAliasLine
    addiu	$a3,$a3,4
    # Line 955
    la	$a2,__glAntiAliasStippledLine
    # Line 954
    sw	$v0,-4($a3)
    # Line 955
    beqz	$a5,.L0da611e0
    sw	$a2,-4($a4)
    andi	$v1,$a6,0x20
    beqz	$v1,.L0da611cc
    # Line 977
    andi	$a2,$a6,0x4
    # Line 955
    lbu	$a1,31566($a0)
    beqz	$a1,.L0da6138c
    # Line 977
    andi	$a2,$a6,0x4
.L0da611cc:
    beqz	$a2,.L0da611e0
    # Line 983
    move	$t0,$t2
    # Line 977
    lbu	$v0,31565($a0)
    beqz	$v0,.L0da6135c
.L0da611dc:
    # Line 983
    move	$t0,$t2
.L0da611e0:
    bnezl	$t0,.L0da61060
    # Line 1049
    lw	$v0,1700($a0)
    # Line 983
    andi	$v1,$a6,0x200
    beqzl	$v1,.L0da61210
    # Line 1002
    lbu	$v0,30656($a0)
    addiu	$a4,$a4,4
    # Line 1001
    la	$a2,__glAlphaTestSpan
    # Line 1002
    la	$a1,__glAlphaTestStippledSpan
    # Line 1001
    addiu	$a3,$a3,4
    sw	$a2,-4($a3)
    # Line 1002
    sw	$a1,-4($a4)
    lbu	$v0,30656($a0)
.L0da61210:
    beqz	$v0,.L0da61220
    # Line 1012
    la	$v0,__glExpStoreStippledLine
    # Line 1006
    li	$t8,1
    # Line 1012
    la	$v0,__glExpStoreStippledLine
.L0da61220:
    # Line 1011
    la	$v1,__glExpStoreLine
    # Line 1009
    subu	$a5,$a3,$a0
    addiu	$a1,$a5,-12248
    sra	$a1,$a1,0x2
    sw	$a1,12380($a0)
    # Line 1011
    sw	$v1,0($a3)
    # Line 1017
    addiu	$a3,$a0,12392
    # Line 1012
    sw	$v0,0($a4)
    # Line 1018
    addiu	$a4,$a0,12396
    # Line 1014
    addiu	$a5,$a5,-12244
    sra	$a5,$a5,0x2
    # Line 1018
    beqz	$t3,.L0da6126c
    # Line 1015
    sw	$a5,12384($a0)
    # Line 1023
    addiu	$a4,$a0,12404
    # Line 1021
    la	$v0,__glWideStippleLineRep
    # Line 1020
    la	$a2,__glWideLineRep
    # Line 1022
    addiu	$a3,$a0,12400
    # Line 1021
    sw	$v0,12396($a0)
    # Line 1020
    sw	$a2,12392($a0)
.L0da6126c:
    # Line 1023
    beqz	$t8,.L0da613bc
    # Line 1026
    la	$a1,__glDrawBothLine
    # Line 1027
    la	$v1,__glDrawBothStippledLine
    # Line 1026
    sw	$a1,0($a3)
    # Line 1031
    beqz	$t3,.L0da613d4
    # Line 1027
    sw	$v1,0($a4)
.L0da61284:
    # Line 1040
    la	$a2,__glProcessLine
.L0da61288:
    sw	$a2,12388($a0)
.L0da6128c:
    andi	$v0,$a6,0x2000
    beqz	$v0,.L0da6105c
    lui	$v1,0x2
    and	$v1,$a6,$v1
    bnezl	$v1,.L0da61060
    # Line 1049
    lw	$v0,1700($a0)
    # Line 1045
    la	$a2,__glRenderFlatFogLine
    # Line 1044
    lw	$a1,12480($a0)
    # Line 1045
    sw	$a2,12480($a0)
    b	.L0da6105c
    # Line 1044
    sw	$a1,12484($a0)
.L0da612b8:
    # Line 850
    b	.L0da6105c
    sw	$v0,12480($a0)
.L0da612c0:
    # Line 924
    beqz	$a7,.L0da61400
    # Line 928
    la	$v1,__glShadeCISpan
    sw	$v1,0($a3)
    # Line 929
    b	.L0da6113c
    sw	$v1,0($a4)
.L0da612d4:
    # Line 921
    la	$a1,__glFlatRGBASpan
    # Line 923
    sw	$a1,0($a3)
    b	.L0da6113c
    # Line 924
    sw	$a1,0($a4)
.L0da612e4:
    # Line 943
    la	$v0,__glFogSpanSlow
    # Line 944
    la	$a2,__glFogStippledSpanSlow
    # Line 943
    sw	$v0,0($a3)
    # Line 944
    b	.L0da61188
    sw	$a2,0($a4)
.L0da612f8:
    # Line 897
    lw	$a7,1536($a0)
    li	$v1,512
    beq	$a7,$v1,.L0da61434
    # Line 900
    li	$a1,513
    beq	$a7,$a1,.L0da61424
    # Line 904
    la	$a2,__glDepthTestLine_asm
    # Line 906
    addiu	$a3,$a3,4
    sw	$a2,-4($a3)
.L0da61318:
    la	$v0,__glDepthTestStippledLine
    # Line 912
    addiu	$a4,$a4,4
    b	.L0da61110
    sw	$v0,-4($a4)
.L0da61328:
    # Line 879
    la	$a7,__glStencilTestLine
    # Line 883
    andi	$v1,$a6,0x4
    # Line 879
    # lw $t9, -28200($gp) # &__glStencilTestStippledLine
    # Line 882
    sw	$a7,0($a3)
    # Line 883
    beqz	$v1,.L0da61410
    sw	$t9,0($a4)
    # Line 885
    la	$a2,__glDepthTestStencilLine
    la	$a1,__glDepthTestStencilStippledLine
    sw	$a2,4($a3)
    # Line 886
    sw	$a1,4($a4)
.L0da61350:
    # Line 892
    addiu	$a4,$a4,8
    b	.L0da61118
    # Line 891
    addiu	$a3,$a3,8
.L0da6135c:
    # Line 980
    lw	$a7,1536($a0)
    li	$v0,512
    beq	$a7,$v0,.L0da6146c
    # Line 983
    li	$v1,513
    beq	$a7,$v1,.L0da6145c
    la	$a1,__glDepthTestLine_asm
    # Line 989
    addiu	$a3,$a3,4
    sw	$a1,-4($a3)
.L0da6137c:
    la	$a2,__glDepthTestStippledLine
    # Line 995
    addiu	$a4,$a4,4
    b	.L0da611dc
    sw	$a2,-4($a4)
.L0da6138c:
    la	$v1,__glStencilTestLine
    # Line 966
    andi	$v0,$a6,0x4
    # Line 965
    sw	$v1,0($a3)
    # Line 966
    beqz	$v0,.L0da61448
    sw	$t9,0($a4)
    la	$a2,__glDepthTestStencilLine
    la	$a1,__glDepthTestStencilStippledLine
    # Line 968
    sw	$a2,4($a3)
    # Line 969
    sw	$a1,4($a4)
.L0da613b0:
    # Line 975
    addiu	$a4,$a4,8
    b	.L0da611dc
    # Line 974
    addiu	$a3,$a3,8
.L0da613bc:
    la	$v1,__glNop
    # Line 1029
    sw	$v1,0($a3)
    # Line 1030
    sw	$v1,0($a4)
    # Line 1031
    lw	$v0,12384($a0)
    bnez	$t3,.L0da61284
    sw	$v0,12380($a0)
.L0da613d4:
    # Line 1034
    lw	$a1,12380($a0)
    bnez	$t3,.L0da61284
    sw	$a1,12376($a0)
    bnez	$t8,.L0da61288
    # Line 1040
    la	$a2,__glProcessLine
    # Line 1037
    li	$a2,3
    bne	$a5,$a2,.L0da61288
    # Line 1040
    la	$a2,__glProcessLine
    # Line 1038
    la	$v0,__glProcessLine3NW
    b	.L0da6128c
    sw	$v0,12388($a0)
.L0da61400:
    # Line 929
    la	$v1,__glFlatCISpan
    # Line 931
    sw	$v1,0($a3)
    b	.L0da6113c
    # Line 932
    sw	$v1,0($a4)
.L0da61410:
    # Line 886
    la	$a2,__glDepthPassLine
    la	$a1,__glDepthPassStippledLine
    # Line 888
    sw	$a2,4($a3)
    b	.L0da61350
    # Line 889
    sw	$a1,4($a4)
.L0da61424:
    # Line 904
    la	$v0,__glDepthTestLine_LESS_asm
    addiu	$a3,$a3,4
    b	.L0da61318
    sw	$v0,-4($a3)
.L0da61434:
    # Line 900
    # lw $t9, -28200($gp) # &__glStencilTestStippledLine
    # Line 899
    la	$v1,__glNop
    # Line 900
    li	$t1,1
    b	.L0da61118
    # Line 899
    sw	$v1,12388($a0)
.L0da61448:
    la	$a2,__glDepthPassLine
    la	$a1,__glDepthPassStippledLine
    # Line 971
    sw	$a2,4($a3)
    b	.L0da613b0
    # Line 972
    sw	$a1,4($a4)
.L0da6145c:
    la	$v0,__glDepthTestLine_LESS_asm
    # Line 987
    addiu	$a3,$a3,4
    b	.L0da6137c
    sw	$v0,-4($a3)
.L0da6146c:
    la	$v1,__glNop
    # Line 983
    li	$t2,1
    b	.L0da611dc
    # Line 982
    sw	$v1,12388($a0)
.end __glExpPickLineProcs

# Function: __glExpPickPixelProcs
# Declared: Line 1061 (Source lines: 1062-1118)
# Address: 0x0da6147c - 0x0da6172c (Size: 688 bytes, Frame: 208)
.globl __glExpPickPixelProcs
.ent __glExpPickPixelProcs
__glExpPickPixelProcs:
    # Line 1062
    addiu	$sp,$sp,-80
    sd	$ra,48($sp)
    sd	$s5,40($sp)
    sd	$s3,32($sp)
    move	$s3,$a0
    # sd	gp,24(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,25580
    # addu	gp,t9,v0
    # Line 1068
    # lw $t9, -27840($gp) # &__glGenericPickPixelProcs
    # Line 1065
    lw	$at,1700($s3)
    # Line 1064
    lw	$s5,1696($s3)
    # Line 1068
    jal	__glGenericPickPixelProcs
    sd	$at,16($sp)
    # Line 1071
    lwc1	$f5,724($s3)
    # Line 1073
    ld	$v1,-22040($gp)
    # Line 1070
    lwc1	$f4,720($s3)
    # Line 1071
    abs.s	$f5,$f5
    # Line 1073
    and	$v1,$s5,$v1
    beqz	$v1,.L0da61510
    # Line 1070
    abs.s	$f4,$f4
.L0da614d0:
    # Line 1073
    li	$a0,1
.L0da614d4:
    sdc1	$f4,0($sp)
    beqz	$a0,.L0da6158c
    sdc1	$f5,8($sp)
.L0da614e0:
    # Line 1105
    la	$at,__glSlowPickCopyPixels
.L0da614e4:
    # Line 1104
    la	$a1,__glSlowPickDrawPixels
    # Line 1105
    sw	$at,12572($s3)
    # Line 1104
    sw	$a1,12568($s3)
.L0da614f0:
    # Line 1110
    la	$v0,__glExpPickReadPixels
    # ld	gp,24(sp)
    # Line 1118
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 1110
    sw	$v0,12576($s3)
    # Line 1118
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da61510:
    # Line 1073
    andi	$v1,$s5,0x10
    beqz	$v1,.L0da61534
    andi	$v0,$s5,0x8000
    lbu	$a1,3109($s3)
    beqz	$a1,.L0da61534
    andi	$v0,$s5,0x8000
    lbu	$at,31565($s3)
    beqz	$at,.L0da614d0
    andi	$v0,$s5,0x8000
.L0da61534:
    beqzl	$v0,.L0da61558
    lw	$at,1788($s3)
    lbu	$v1,3110($s3)
    beqzl	$v1,.L0da61558
    lw	$at,1788($s3)
    lbu	$a1,31566($s3)
    beqz	$a1,.L0da614d4
    li	$a0,1
    lw	$at,1788($s3)
.L0da61558:
    li	$v0,1032
    beq	$at,$v0,.L0da614d0
    lui	$a1,0x8
    lw	$v1,30440($s3)
    and	$v1,$v1,$a1
    beqz	$v1,.L0da61580
    li	$v0,3057
    lw	$at,1736($s3)
    bne	$at,$v0,.L0da614d4
    li	$a0,1
.L0da61580:
    move	$a0,$zero
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
.L0da6158c:
    # lw $t9, -22984($gp) # &floorf
    jal	floorf
    ldc1	$f12,0($sp)
    ldc1	$f1,0($sp)
    c.lt.s	$f0,$f1
    nop
    bc1t	.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    # lw $t9, -22984($gp) # &floorf
    jal	floorf
    ldc1	$f12,8($sp)
    ldc1	$f2,8($sp)
    c.lt.s	$f0,$f2
    ldc1	$f5,_lit8_3ff0000000000000
    bc1t	.L0da614e0
    ldc1	$f4,0($sp)
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f5
    nop
    bc1t	.L0da614e0
    ldc1	$f6,_lit8_406fe00000000000
    c.lt.d	$f6,$f4
    nop
    bc1t	.L0da614e0
    ldc1	$f4,8($sp)
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f5
    nop
    bc1t	.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    c.lt.d	$f6,$f4
    nop
    bc1t	.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    lw	$v1,740($s3)
    lw	$v1,0($v1)
    bnez	$v1,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    lui	$a1,0x3000
    and	$a1,$s5,$a1
    beqz	$a1,.L0da616f8
    nop
    lw	$at,1160($s3)
    beqz	$at,.L0da616ec
    li	$a0,1
.L0da61640:
    bnez	$a0,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    lw	$v0,30640($s3)
    li	$v1,0x8421
    bne	$v0,$v1,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    lbu	$a1,30649($s3)
    li	$at,1
    beq	$a1,$at,.L0da614e0
    ld	$v0,16($sp)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da61700
    nop
    lw	$v1,4904($s3)
    beqz	$v1,.L0da61700
    li	$a0,1
.L0da61680:
    bnez	$a0,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    andi	$a1,$s5,0x2
    beqz	$a1,.L0da61708
    nop
    lw	$at,5064($s3)
    beqz	$at,.L0da61708
    li	$a0,1
.L0da616a0:
    bnez	$a0,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    andi	$v0,$s5,0x4
    beqz	$v0,.L0da61710
    nop
    lw	$v1,5224($s3)
    beqz	$v1,.L0da61710
    li	$a0,1
.L0da616c0:
    bnez	$a0,.L0da614e4
    # Line 1105
    la	$at,__glSlowPickCopyPixels
    # Line 1073
    lui	$a1,0x8000
    and	$a1,$s5,$a1
    beqz	$a1,.L0da6171c
    # Line 1108
    la	$a1,__glExpPickCopyPixels
    # Line 1073
    lw	$at,5384($s3)
    beqz	$at,.L0da6171c
    # Line 1108
    la	$a1,__glExpPickCopyPixels
    b	.L0da614e0
    # Line 1073
    li	$a0,1
.L0da616ec:
    lbu	$v0,1276($s3)
    bnez	$v0,.L0da61640
    li	$a0,1
.L0da616f8:
    b	.L0da61640
    move	$a0,$zero
.L0da61700:
    b	.L0da61680
    move	$a0,$zero
.L0da61708:
    b	.L0da616a0
    move	$a0,$zero
.L0da61710:
    b	.L0da616c0
    move	$a0,$zero
    # Line 1108
    la	$a1,__glExpPickCopyPixels
.L0da6171c:
    # Line 1107
    la	$v1,__glExpPickDrawPixels
    # Line 1108
    sw	$a1,12572($s3)
    b	.L0da614f0
    # Line 1107
    sw	$v1,12568($s3)
.end __glExpPickPixelProcs

# Function: __glExpPickBitmapProcs
# Declared: Line 1122 (Source lines: 1123-1148)
# Address: 0x0da6172c - 0x0da61800 (Size: 212 bytes, Frame: 0)
.globl __glExpPickBitmapProcs
.ent __glExpPickBitmapProcs
__glExpPickBitmapProcs:
    # Line 1125
    lw	$a3,1696($a0)
    # Line 1127
    li	$v1,7168
    lw	$v0,3092($a0)
    # Line 1123
    lui	$a1,0x19
    addiu	$a1,$a1,24892
    # Line 1127
    bne	$v0,$v1,.L0da617e4
    # Line 1123
    nop
    # Line 1127
    andi	$a2,$a3,0x40
    bnez	$a2,.L0da617e8
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
    # Line 1127
    lui	$v0,0xc03f
    and	$v0,$a3,$v0
    bnez	$v0,.L0da617e8
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
    # Line 1127
    andi	$v1,$a3,0x1
    bnez	$v1,.L0da617e8
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
    # Line 1127
    andi	$a1,$a3,0x10
    beqz	$a1,.L0da61794
    andi	$v1,$a3,0x8000
    lbu	$a2,3109($a0)
    beqz	$a2,.L0da61794
    andi	$v1,$a3,0x8000
    lbu	$v0,31565($a0)
    beqz	$v0,.L0da617e4
    andi	$v1,$a3,0x8000
.L0da61794:
    beqzl	$v1,.L0da617b8
    lw	$v0,1788($a0)
    lbu	$a1,3110($a0)
    beqzl	$a1,.L0da617b8
    lw	$v0,1788($a0)
    lbu	$a2,31566($a0)
    beqz	$a2,.L0da617e8
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
    # Line 1127
    lw	$v0,1788($a0)
.L0da617b8:
    li	$v1,1032
    beq	$v0,$v1,.L0da617e8
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
    # Line 1127
    lw	$a1,30440($a0)
    lui	$a2,0x8
    and	$a1,$a1,$a2
    beqz	$a1,.L0da617f8
    # Line 1141
    la	$a2,__glExpRenderBitmap
    # Line 1127
    lw	$v0,1736($a0)
    li	$v1,3057
    beq	$v0,$v1,.L0da617f4
.L0da617e4:
    # Line 1139
    la	$a1,__glExpSlowRenderBitmap
.L0da617e8:
    sw	$a1,12520($a0)
    # Line 1148
    jr	$ra
    nop
.L0da617f4:
    # Line 1141
    la	$a2,__glExpRenderBitmap
.L0da617f8:
    # Line 1148
    jr	$ra
    # Line 1141
    sw	$a2,12520($a0)
.end __glExpPickBitmapProcs

# Function: __glExpPickAllProcs
# Declared: Line 1152 (Source lines: 1153-1165)
# Address: 0x0da61800 - 0x0da61878 (Size: 120 bytes, Frame: 48)
.globl __glExpPickAllProcs
.ent __glExpPickAllProcs
__glExpPickAllProcs:
    # Line 1153
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    sd	$ra,16($sp)
    # sd	gp,24(sp)
    lui	$at,0x19
    addiu	$at,$at,24680
    # addu	gp,t9,at
    # Line 1157
    # lw $t9, -27824($gp) # &__glGenericPickAllProcs
    sd	$s0,8($sp)
    # Line 1153
    move	$s0,$a0
    # Line 1157
    jal	__glGenericPickAllProcs
    # Line 1155
    lw	$s7,11764($s0)
    # Line 1157
    andi	$v0,$s7,0x21
    beqz	$v0,.L0da6184c
    ld	$s7,0($sp)
    # Line 1160
    # lw $t9, -32244($gp) # &__glExpValidateLighting
    move	$a0,$s0
    bal __glExpValidateLighting
    ld	$s7,0($sp)
.L0da6184c:
    # Line 1163
    # lw $t9, -32148($gp) # &__glExpPickBitmapProcs
    bal __glExpPickBitmapProcs
    move	$a0,$s0
    # Line 1164
    # lw $t9, -32172($gp) # &__glExpPickPrimDispatch
    bal __glExpPickPrimDispatch
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    # ld	gp,24(sp)
    # Line 1165
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpPickAllProcs

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000

