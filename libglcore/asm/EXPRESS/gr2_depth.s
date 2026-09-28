# Source: ../EXPRESS/gr2_depth.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_depth.c
# Total Functions: 11

.text

# Function: __glExpEnableDepthTest
# Declared: Line 31 (Source lines: 32-43)
# Address: 0x0da5a36c - 0x0da5a3d8 (Size: 108 bytes, Frame: 32)
.globl __glExpEnableDepthTest
.ent __glExpEnableDepthTest
__glExpEnableDepthTest:
    # Line 32
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lbu	$at,31565($a0)
    lui	$v0,0x1a
    addiu	$v0,$v0,-11012
    beqz	$at,.L0da5a3c4
    nop
    lw	$v1,1696($a0)
    # Line 38
    lui	$at,0x4
    # Line 32
    andi	$v1,$v1,0x10
    beqz	$v1,.L0da5a3c4
    # Line 38
    ori	$at,$at,0x2050
    sd	$ra,8($sp)
    li	$a1,1
    sw	$a1,0($at)
.L0da5a3a8:
    # Line 42
    # lw $t9, -32364($gp) # &__glExpPassDepthMask
    bal __glExpPassDepthMask
    nop
    # Line 43
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da5a3c4:
    sd	$ra,8($sp)
    # Line 40
    lui	$v0,0x4
    ori	$v0,$v0,0x2050
    b	.L0da5a3a8
    sw	$zero,0($v0)
.end __glExpEnableDepthTest

# Function: __glExpPassDepthFunc
# Declared: Line 45 (Source lines: 49-50)
# Address: 0x0da5a3d8 - 0x0da5a3f0 (Size: 24 bytes, Frame: 0)
.globl __glExpPassDepthFunc
.ent __glExpPassDepthFunc
__glExpPassDepthFunc:
    # Line 49
    lw	$at,1536($a0)
    lui	$v0,0x4
    ori	$v0,$v0,0x2090
    andi	$at,$at,0x7
    # Line 50
    jr	$ra
    # Line 49
    sw	$at,0($v0)
.end __glExpPassDepthFunc

# Function: __glExpPassDepthMask
# Declared: Line 52 (Source lines: 53-64)
# Address: 0x0da5a3f0 - 0x0da5a43c (Size: 76 bytes, Frame: 0)
.globl __glExpPassDepthMask
.ent __glExpPassDepthMask
__glExpPassDepthMask:
    # Line 53
    lbu	$at,31565($a0)
    beqz	$at,.L0da5a430
    # Line 62
    lui	$v0,0x4
    # Line 53
    lbu	$v0,1540($a0)
    # Line 60
    lui	$at,0x4
    # Line 53
    beqz	$v0,.L0da5a42c
    # Line 60
    ori	$at,$at,0x2028
    # Line 57
    lw	$v1,1696($a0)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0da5a430
    # Line 62
    lui	$v0,0x4
    # Line 60
    lw	$a1,31304($a0)
    sw	$a1,0($at)
    # Line 64
    jr	$ra
    nop
.L0da5a42c:
    # Line 62
    lui	$v0,0x4
.L0da5a430:
    ori	$v0,$v0,0x2028
    # Line 64
    jr	$ra
    # Line 62
    sw	$zero,0($v0)
.end __glExpPassDepthMask

# Function: Fetch
# Declared: Line 68 (Source lines: 69-106)
# Address: 0x0da5a43c - 0x0da5a568 (Size: 300 bytes, Frame: 192)
.ent Fetch
Fetch:
    # Line 94
    lui	$v0,0x6
    ori	$v0,$v0,0xc040
    # Line 90
    li	$v1,1
    # Line 89
    lui	$at,0x4
    ori	$at,$at,0x277c
    # Line 85
    lui	$a4,0x4
    ori	$a4,$a4,0x22a0
    # Line 84
    lui	$a6,0x4
    ori	$a6,$a6,0x229c
    # Line 80
    li	$t0,2
    # Line 69
    addiu	$sp,$sp,-64
    # Line 80
    lui	$a7,0x4
    ori	$a7,$a7,0x2428
    # sd	gp,16(sp)
    # Line 69
    lui	$a3,0x1a
    # Line 70
    lw	$a5,0($a0)
    # Line 69
    addiu	$a3,$a3,-11220
    # addu	gp,t9,a3
    # Line 77
    lw	$a0,3376($a5)
    # Line 76
    lw	$a3,3372($a5)
    # Line 80
    sw	$t0,0($a7)
    # Line 81
    sw	$zero,0($a7)
    # Line 84
    sw	$zero,0($a6)
    # Line 85
    sw	$zero,0($a4)
    # Line 77
    subu	$a0,$a2,$a0
    # Line 88
    lui	$a2,0x4
    ori	$a2,$a2,0x22b4
    # Line 76
    subu	$a1,$a1,$a3
    # Line 87
    lui	$a3,0x4
    ori	$a3,$a3,0x22f0
    sw	$zero,0($a3)
    # Line 88
    sw	$a1,0($a2)
    # Line 89
    sw	$a0,0($at)
    # Line 90
    sw	$v1,0($at)
    # Line 91
    sw	$v1,0($at)
    # Line 92
    sw	$v1,0($at)
    # Line 93
    sw	$zero,0($at)
    b	.L0da5a4ec
    # Line 94
    sw	$zero,0($at)
.L0da5a4d8:
    # Line 96
    sw	$zero,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da5a544
    nop
.L0da5a4ec:
    lw	$a1,0($v0)
    andi	$a1,$a1,0x1
    beqz	$a1,.L0da5a4d8
    # Line 104
    move	$a0,$a5
    sd	$ra,24($sp)
    # Line 99
    lui	$a2,0x4
    # Line 97
    lui	$a3,0x1
    ori	$a3,$a3,0x2088
    lw	$a3,0($a3)
    # Line 99
    ori	$a2,$a2,0x22f4
    # Line 104
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    sd	$a3,8($sp)
    # Line 98
    lui	$a3,0x6
    ori	$a3,$a3,0xd000
    sw	$zero,0($a3)
    # Line 104
    bal __glExpSetReadSource
    # Line 99
    sw	$zero,0($a2)
    # Line 106
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da5a544:
    # Line 96
    lw	$v1,0($sp)
    addiu	$v1,$v1,1
    sw	$v1,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da5a544
    nop
    b	.L0da5a4ec
    nop
.end Fetch

# Function: Store
# Declared: Line 110 (Source lines: 115-115)
# Address: 0x0da5a568 - 0x0da5a570 (Size: 8 bytes, Frame: 0)
.ent Store
Store:
    # Line 115
    jr	$ra
    li	$v0,1
.end Store

# Function: Store2
# Declared: Line 119 (Source lines: 124-124)
# Address: 0x0da5a570 - 0x0da5a578 (Size: 8 bytes, Frame: 0)
.ent Store2
Store2:
    # Line 124
    jr	$ra
    li	$v0,1
.end Store2

# Function: Clear
# Declared: Line 127 (Source lines: 130-146)
# Address: 0x0da5a578 - 0x0da5a600 (Size: 136 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 134
    lw	$v1,76($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    lw	$v0,0($a0)
    cvt.d.l	$f1,$f1
    ldc1	$f0,1544($v0)
    mul.d	$f0,$f0,$f1
    lw	$at,__glCurrentContext
    # Line 142
    li	$a1,1
    # Line 130
    move	$a2,$zero
    # Line 134
    lw	$at,1696($at)
    trunc.w.d	$f0,$f0
    # Line 138
    lui	$a0,0x4
    # Line 140
    lui	$v0,0x5
    # Line 134
    andi	$at,$at,0x8
    mfc1	$a3,$f0
    beqz	$at,.L0da5a5d0
    # Line 140
    ori	$v0,$v0,0xc280
    # Line 138
    ori	$a0,$a0,0x2044
    # Line 137
    li	$a2,1
    # Line 138
    sw	$zero,0($a0)
.L0da5a5d0:
    # Line 140
    sw	$zero,0($v0)
    # Line 141
    lui	$at,0x4
    ori	$at,$at,0x277c
    sw	$a3,0($at)
    # Line 142
    beq	$a1,$a2,.L0da5a5f0
    sw	$zero,0($at)
    # Line 146
    jr	$ra
    nop
.L0da5a5f0:
    # Line 145
    lui	$v0,0x4
    ori	$v0,$v0,0x2044
    # Line 146
    jr	$ra
    # Line 145
    sw	$a1,0($v0)
.end Clear

# Function: Resize
# Declared: Line 151 (Source lines: 153-153)
# Address: 0x0da5a600 - 0x0da5a608 (Size: 8 bytes, Frame: 0)
.ent Resize
Resize:
    # Line 153
    jr	$ra
    nop
.end Resize

# Function: Move
# Declared: Line 156 (Source lines: 158-158)
# Address: 0x0da5a608 - 0x0da5a610 (Size: 8 bytes, Frame: 0)
.ent Move
Move:
    # Line 158
    jr	$ra
    nop
.end Move

# Function: Pick
# Declared: Line 161 (Source lines: 163-163)
# Address: 0x0da5a610 - 0x0da5a618 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 163
    jr	$ra
    nop
.end Pick

# Function: __glExpInitDepth
# Declared: Line 165 (Source lines: 166-187)
# Address: 0x0da5a618 - 0x0da5a6e0 (Size: 200 bytes, Frame: 48)
.globl __glExpInitDepth
.ent __glExpInitDepth
__glExpInitDepth:
    # Line 166
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-11696
    # addu	gp,t9,at
    # Line 168
    # lw $t9, -28892($gp) # &__glInitDepth32
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitDepth32
    # Line 166
    move	$s8,$a0
    # Line 185
    la	$a3,sub_0da60000
    # Line 173
    ld	$v1,24($sp)
    # Line 172
    sw	$zero,24($s8)
    # Line 173
    lw	$a2,3128($v1)
    # Line 185
    addiu	$a3,$a3,-23184
    # Line 186
    la	$ra,sub_0da60000
    # Line 173
    sw	$a2,12($s8)
    # Line 184
    la	$a2,sub_0da60000
    # Line 175
    la	$a0,sub_0da60000
    # Line 176
    la	$v0,sub_0da60000
    # Line 178
    la	$at,sub_0da60000
    # Line 175
    addiu	$a0,$a0,-23040
    # Line 176
    addiu	$v0,$v0,-23032
    # Line 178
    addiu	$at,$at,-23024
    sw	$at,112($s8)
    # Line 176
    sw	$v0,60($s8)
    # Line 175
    sw	$a0,56($s8)
    # Line 186
    addiu	$ra,$ra,-23492
    # Line 180
    lw	$a0,3128($v1)
    # Line 184
    addiu	$a2,$a2,-23192
    # Line 180
    li	$v0,1
    sllv	$a0,$v0,$a0
    addiu	$a0,$a0,-1
    sw	$a0,76($s8)
    # Line 183
    la	$a0,sub_0da60000
    # ld	gp,16(sp)
    # Line 181
    lw	$v1,3128($v1)
    # Line 185
    sw	$a3,124($s8)
    # Line 184
    sw	$a2,116($s8)
    # Line 183
    addiu	$a0,$a0,-23176
    sw	$a0,120($s8)
    # Line 186
    sw	$ra,128($s8)
    # Line 187
    ld	$ra,0($sp)
    # Line 181
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    sw	$v0,72($s8)
    # Line 187
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpInitDepth

