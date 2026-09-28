# Source: ../EXPRESS/gr2_listcomp.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_listcomp.c
# Total Functions: 7

.text

# Function: __glexple_Vertex3fv
# Declared: Line 48 (Source lines: 49-58)
# Address: 0x0da5f93c - 0x0da5f9ac (Size: 112 bytes, Frame: 48)
.globl __glexple_Vertex3fv
.ent __glexple_Vertex3fv
__glexple_Vertex3fv:
    # Line 49
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lw	$at,4124($zero)
    lui	$v0,0x19
    addiu	$v0,$v0,32556
    bltz	$at,.L0da5f994
    nop
    # Line 54
    lui	$v1,0x4
    lwc1	$f2,0($s0)
    ori	$v1,$v1,0x498c
    swc1	$f2,0($v1)
    lwc1	$f1,4($s0)
    swc1	$f1,0($v1)
    lwc1	$f0,8($s0)
    swc1	$f0,0($v1)
.L0da5f980:
    # ld	gp,0(sp)
    # Line 58
    addiu	$v0,$s0,12
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5f994:
    # Line 56
    lw	$t9,5696($zero)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    b	.L0da5f980
    ld	$ra,16($sp)
.end __glexple_Vertex3fv

# Function: __glexple_Color3fv
# Declared: Line 61 (Source lines: 62-71)
# Address: 0x0da5f9ac - 0x0da5fa1c (Size: 112 bytes, Frame: 48)
.globl __glexple_Color3fv
.ent __glexple_Color3fv
__glexple_Color3fv:
    # Line 62
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lw	$at,4124($zero)
    lui	$v0,0x19
    addiu	$v0,$v0,32444
    bnez	$at,.L0da5f9f4
    nop
    # Line 67
    lui	$v1,0x4
    lwc1	$f2,0($s0)
    ori	$v1,$v1,0x8608
    swc1	$f2,0($v1)
    lwc1	$f1,4($s0)
    swc1	$f1,0($v1)
    lwc1	$f0,8($s0)
    b	.L0da5fa08
    swc1	$f0,0($v1)
.L0da5f9f4:
    # Line 69
    lw	$t9,5768($zero)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da5fa08:
    # ld	gp,0(sp)
    # Line 71
    addiu	$v0,$s0,12
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexple_Color3fv

# Function: __glexple_Normal3fv
# Declared: Line 74 (Source lines: 75-84)
# Address: 0x0da5fa1c - 0x0da5fa8c (Size: 112 bytes, Frame: 48)
.globl __glexple_Normal3fv
.ent __glexple_Normal3fv
__glexple_Normal3fv:
    # Line 75
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # sd	gp,0(sp)
    lw	$at,4124($zero)
    lui	$v0,0x19
    addiu	$v0,$v0,32332
    bnez	$at,.L0da5fa64
    nop
    # Line 80
    lui	$v1,0x4
    lwc1	$f2,0($s0)
    ori	$v1,$v1,0x2434
    swc1	$f2,0($v1)
    lwc1	$f1,4($s0)
    swc1	$f1,0($v1)
    lwc1	$f0,8($s0)
    b	.L0da5fa78
    swc1	$f0,0($v1)
.L0da5fa64:
    # Line 82
    lw	$t9,5936($zero)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da5fa78:
    # ld	gp,0(sp)
    # Line 84
    addiu	$v0,$s0,12
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexple_Normal3fv

# Function: __glexplc_Vertex3fv
# Declared: Line 104 (Source lines: 105-119)
# Address: 0x0da5fa8c - 0x0da5fb2c (Size: 160 bytes, Frame: 48)
.globl __glexplc_Vertex3fv
.ent __glexplc_Vertex3fv
__glexplc_Vertex3fv:
    # Line 110
    li	$a1,12
    # Line 105
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 108
    lw	$at,__glCurrentContext
    # sd	gp,16(sp)
    # Line 105
    lui	$v0,0x19
    addiu	$v0,$v0,32220
    # addu	gp,t9,v0
    # Line 110
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da5fad4
    # Line 111
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5fad4:
    # Line 114
    ld	$a0,0($sp)
    # Line 112
    li	$a1,10000
    sh	$a1,12($v0)
    # Line 114
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 115
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 116
    lwc1	$f0,8($a0)
    # Line 118
    la	$a2,__glexple_Vertex3fv
    # Line 117
    ld	$a3,8($sp)
    # Line 116
    swc1	$f0,24($v0)
    # Line 118
    move	$a1,$v0
    # Line 117
    lw	$v1,4696($a3)
    # Line 118
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 117
    ori	$v1,$v1,0x1
    # Line 118
    jal	__glDlistAppendOp
    # Line 117
    sw	$v1,4696($a3)
    # Line 119
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexplc_Vertex3fv

# Function: __glexplc_Color3fv
# Declared: Line 121 (Source lines: 122-136)
# Address: 0x0da5fb2c - 0x0da5fbcc (Size: 160 bytes, Frame: 48)
.globl __glexplc_Color3fv
.ent __glexplc_Color3fv
__glexplc_Color3fv:
    # Line 127
    li	$a1,12
    # Line 122
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 125
    lw	$at,__glCurrentContext
    # sd	gp,16(sp)
    # Line 122
    lui	$v0,0x19
    addiu	$v0,$v0,32060
    # addu	gp,t9,v0
    # Line 127
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da5fb74
    # Line 128
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5fb74:
    # Line 131
    ld	$a0,0($sp)
    # Line 129
    li	$a1,10001
    sh	$a1,12($v0)
    # Line 131
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 132
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 133
    lwc1	$f0,8($a0)
    # Line 135
    la	$a2,__glexple_Color3fv
    # Line 134
    ld	$a3,8($sp)
    # Line 133
    swc1	$f0,24($v0)
    # Line 135
    move	$a1,$v0
    # Line 134
    lw	$v1,4696($a3)
    # Line 135
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 134
    ori	$v1,$v1,0x4
    # Line 135
    jal	__glDlistAppendOp
    # Line 134
    sw	$v1,4696($a3)
    # Line 136
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexplc_Color3fv

# Function: __glexplc_Normal3fv
# Declared: Line 138 (Source lines: 139-153)
# Address: 0x0da5fbcc - 0x0da5fc6c (Size: 160 bytes, Frame: 48)
.globl __glexplc_Normal3fv
.ent __glexplc_Normal3fv
__glexplc_Normal3fv:
    # Line 144
    li	$a1,12
    # Line 139
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 142
    lw	$at,__glCurrentContext
    # sd	gp,16(sp)
    # Line 139
    lui	$v0,0x19
    addiu	$v0,$v0,31900
    # addu	gp,t9,v0
    # Line 144
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da5fc14
    # Line 145
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5fc14:
    # Line 148
    ld	$a0,0($sp)
    # Line 146
    li	$a1,10002
    sh	$a1,12($v0)
    # Line 148
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 149
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 150
    lwc1	$f0,8($a0)
    # Line 152
    la	$a2,__glexple_Normal3fv
    # Line 151
    ld	$a3,8($sp)
    # Line 150
    swc1	$f0,24($v0)
    # Line 152
    move	$a1,$v0
    # Line 151
    lw	$v1,4696($a3)
    # Line 152
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 151
    ori	$v1,$v1,0x2
    # Line 152
    jal	__glDlistAppendOp
    # Line 151
    sw	$v1,4696($a3)
    # Line 153
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexplc_Normal3fv

# Function: __glExpDlistOptimizer
# Declared: Line 165 (Source lines: 185-185)
# Address: 0x0da5fc6c - 0x0da5fc74 (Size: 8 bytes, Frame: 0)
.globl __glExpDlistOptimizer
.ent __glExpDlistOptimizer
__glExpDlistOptimizer:
    # Line 185
    jr	$ra
    nop
.end __glExpDlistOptimizer

