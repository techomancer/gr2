# Source: ../EXPRESS/gr2_shadow.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_shadow.c
# Total Functions: 52

.text

# Function: __glexpim_shadowColor3ub
# Declared: Line 32 (Source lines: 33-42)
# Address: 0x0da68d1c - 0x0da68db0 (Size: 148 bytes, Frame: 208)
.globl __glexpim_shadowColor3ub
.ent __glexpim_shadowColor3ub
__glexpim_shadowColor3ub:
    # Line 33
    addiu	$sp,$sp,-80
    sd	$a1,32($sp)
    sd	$a2,24($sp)
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 38
    sll	$at,$a2,0x2
    # Line 33
    lui	$a3,0x19
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 34
    lw	$a0,__glCurrentContext
    # Line 33
    addiu	$a3,$a3,-5300
    # Line 36
    sll	$v1,$s8,0x2
    addu	$v1,$v1,$a0
    lwc1	$f3,3528($v1)
    # Line 33
    # addu	gp,t9,a3
    # Line 37
    sll	$v0,$a1,0x2
    # Line 36
    swc1	$f3,408($a0)
    # Line 37
    addu	$v0,$v0,$a0
    lwc1	$f2,3528($v0)
    # Line 40
    lw	$t9,12008($a0)
    # Line 39
    lwc1	$f1,3284($a0)
    # Line 37
    swc1	$f2,412($a0)
    # Line 38
    addu	$at,$at,$a0
    lwc1	$f0,3528($at)
    # Line 39
    swc1	$f1,420($a0)
    # Line 40
    jalr	$t9
    # Line 38
    swc1	$f0,416($a0)
    # Line 41
    # lw $t9, -31472($gp) # &__glexpim_Color3ub
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3ub
    ld	$a2,24($sp)
    # Line 42
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3ub

# Function: __glexpim_shadowColor3ubv
# Declared: Line 45 (Source lines: 46-55)
# Address: 0x0da68db0 - 0x0da68e40 (Size: 144 bytes, Frame: 48)
.globl __glexpim_shadowColor3ubv
.ent __glexpim_shadowColor3ubv
__glexpim_shadowColor3ubv:
    # Line 49
    lbu	$a1,0($a0)
    # Line 46
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 47
    lw	$a0,__glCurrentContext
    # Line 49
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lwc1	$f3,3528($a1)
    swc1	$f3,408($a0)
    # Line 50
    lbu	$v1,1($s8)
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f2,3528($v1)
    # Line 46
    lui	$v0,0x19
    addiu	$v0,$v0,-5448
    # Line 50
    swc1	$f2,412($a0)
    # Line 46
    # addu	gp,t9,v0
    # Line 51
    lbu	$at,2($s8)
    # Line 53
    lw	$t9,12008($a0)
    # Line 52
    lwc1	$f1,3284($a0)
    # Line 51
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f0,3528($at)
    # Line 52
    swc1	$f1,420($a0)
    # Line 53
    jalr	$t9
    # Line 51
    swc1	$f0,416($a0)
    # Line 54
    # lw $t9, -31468($gp) # &__glexpim_Color3ubv
    bal __glexpim_Color3ubv
    move	$a0,$s8
    # Line 55
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3ubv

# Function: __glexpim_shadowColor3b
# Declared: Line 57 (Source lines: 58-67)
# Address: 0x0da68e40 - 0x0da68ef4 (Size: 180 bytes, Frame: 208)
.globl __glexpim_shadowColor3b
.ent __glexpim_shadowColor3b
__glexpim_shadowColor3b:
    # Line 62
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 58
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 59
    lw	$a0,__glCurrentContext
    # Line 62
    cvt.s.w	$f1,$f1
    # Line 61
    lwc1	$f4,3292($a0)
    # Line 62
    mul.s	$f1,$f1,$f4
    sd	$a2,24($sp)
    # Line 63
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 61
    sll	$v0,$s8,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    sd	$a1,32($sp)
    sd	$ra,0($sp)
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 58
    lui	$at,0x19
    # Line 63
    mul.s	$f2,$f2,$f4
    # Line 58
    addiu	$at,$at,-5592
    # Line 64
    lwc1	$f3,3284($a0)
    # Line 61
    mul.s	$f0,$f0,$f4
    # Line 58
    # addu	gp,t9,at
    # Line 65
    lw	$t9,12008($a0)
    # Line 64
    swc1	$f3,420($a0)
    # Line 62
    swc1	$f1,412($a0)
    # Line 63
    swc1	$f2,416($a0)
    # Line 65
    jalr	$t9
    # Line 61
    swc1	$f0,408($a0)
    # Line 66
    # lw $t9, -31464($gp) # &__glexpim_Color3b
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3b
    ld	$a2,24($sp)
    # Line 67
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3b

# Function: __glexpim_shadowColor3bv
# Declared: Line 69 (Source lines: 70-79)
# Address: 0x0da68ef4 - 0x0da68fa8 (Size: 180 bytes, Frame: 48)
.globl __glexpim_shadowColor3bv
.ent __glexpim_shadowColor3bv
__glexpim_shadowColor3bv:
    # Line 70
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 73
    lb	$a0,0($a0)
    sll	$a0,$a0,0x1
    addiu	$a0,$a0,1
    mtc1	$a0,$f3
    # Line 71
    lw	$a0,__glCurrentContext
    # Line 73
    cvt.s.w	$f3,$f3
    lwc1	$f1,3292($a0)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($a0)
    # Line 74
    lb	$v1,1($s8)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($a0)
    # Line 75
    lb	$v0,2($s8)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 70
    lui	$at,0x19
    addiu	$at,$at,-5772
    # Line 75
    mul.s	$f0,$f0,$f1
    # Line 70
    # addu	gp,t9,at
    # Line 76
    lwc1	$f1,3284($a0)
    # Line 77
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    # Line 76
    swc1	$f1,420($a0)
    # Line 77
    jalr	$t9
    # Line 75
    swc1	$f0,416($a0)
    # Line 78
    # lw $t9, -31460($gp) # &__glexpim_Color3bv
    bal __glexpim_Color3bv
    move	$a0,$s8
    # Line 79
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3bv

# Function: __glexpim_shadowColor3d
# Declared: Line 81 (Source lines: 82-91)
# Address: 0x0da68fa8 - 0x0da69024 (Size: 124 bytes, Frame: 208)
.globl __glexpim_shadowColor3d
.ent __glexpim_shadowColor3d
__glexpim_shadowColor3d:
    # Line 82
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 86
    cvt.s.d	$f2,$f13
    sdc1	$f30,0($sp)
    # Line 82
    mov.d	$f30,$f12
    # Line 87
    cvt.s.d	$f3,$f14
    sd	$ra,24($sp)
    # Line 83
    lw	$a0,__glCurrentContext
    # Line 85
    cvt.s.d	$f1,$f12
    # sd	gp,32(sp)
    # Line 87
    swc1	$f3,416($a0)
    # Line 86
    swc1	$f2,412($a0)
    # Line 82
    lui	$at,0x19
    addiu	$at,$at,-5952
    # addu	gp,t9,at
    # Line 89
    lw	$t9,12008($a0)
    # Line 88
    lwc1	$f0,3284($a0)
    # Line 85
    swc1	$f1,408($a0)
    # Line 89
    jalr	$t9
    # Line 88
    swc1	$f0,420($a0)
    # Line 90
    # lw $t9, -31456($gp) # &__glexpim_Color3d
    mov.d	$f12,$f30
    ldc1	$f13,16($sp)
    bal __glexpim_Color3d
    ldc1	$f14,8($sp)
    # Line 91
    ld	$ra,24($sp)
    # ld	gp,32(sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3d

# Function: __glexpim_shadowColor3dv
# Declared: Line 93 (Source lines: 94-103)
# Address: 0x0da69024 - 0x0da6909c (Size: 120 bytes, Frame: 48)
.globl __glexpim_shadowColor3dv
.ent __glexpim_shadowColor3dv
__glexpim_shadowColor3dv:
    # Line 94
    addiu	$sp,$sp,-48
    # Line 97
    ldc1	$f2,0($a0)
    sd	$s8,8($sp)
    # Line 94
    move	$s8,$a0
    # Line 97
    cvt.s.d	$f2,$f2
    # Line 95
    lw	$a0,__glCurrentContext
    # Line 97
    swc1	$f2,408($a0)
    # Line 98
    ldc1	$f1,8($s8)
    cvt.s.d	$f1,$f1
    # sd	gp,16(sp)
    # Line 94
    lui	$at,0x19
    addiu	$at,$at,-6076
    # Line 98
    swc1	$f1,412($a0)
    # Line 94
    # addu	gp,t9,at
    # Line 99
    ldc1	$f0,16($s8)
    # Line 101
    lw	$t9,12008($a0)
    # Line 100
    lwc1	$f1,3284($a0)
    # Line 99
    cvt.s.d	$f0,$f0
    sd	$ra,0($sp)
    # Line 100
    swc1	$f1,420($a0)
    # Line 101
    jalr	$t9
    # Line 99
    swc1	$f0,416($a0)
    # Line 102
    # lw $t9, -31452($gp) # &__glexpim_Color3dv
    bal __glexpim_Color3dv
    move	$a0,$s8
    # Line 103
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3dv

# Function: __glexpim_shadowColor3f
# Declared: Line 105 (Source lines: 106-115)
# Address: 0x0da6909c - 0x0da6910c (Size: 112 bytes, Frame: 208)
.globl __glexpim_shadowColor3f
.ent __glexpim_shadowColor3f
__glexpim_shadowColor3f:
    # Line 106
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    # Line 107
    lw	$a0,__glCurrentContext
    # Line 106
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 111
    swc1	$f14,416($a0)
    # Line 110
    swc1	$f13,412($a0)
    # sd	gp,32(sp)
    # Line 106
    lui	$at,0x19
    addiu	$at,$at,-6196
    # addu	gp,t9,at
    # Line 113
    lw	$t9,12008($a0)
    # Line 112
    lwc1	$f0,3284($a0)
    # Line 109
    swc1	$f12,408($a0)
    # Line 113
    jalr	$t9
    # Line 112
    swc1	$f0,420($a0)
    # Line 114
    # lw $t9, -31448($gp) # &__glexpim_Color3f
    mov.s	$f12,$f30
    ldc1	$f13,16($sp)
    bal __glexpim_Color3f
    ldc1	$f14,8($sp)
    # Line 115
    ld	$ra,24($sp)
    # ld	gp,32(sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3f

# Function: __glexpim_shadowColor3fv
# Declared: Line 117 (Source lines: 118-127)
# Address: 0x0da6910c - 0x0da69178 (Size: 108 bytes, Frame: 48)
.globl __glexpim_shadowColor3fv
.ent __glexpim_shadowColor3fv
__glexpim_shadowColor3fv:
    # Line 118
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 119
    lw	$a0,__glCurrentContext
    # Line 121
    lwc1	$f3,0($s8)
    # sd	gp,16(sp)
    # Line 118
    lui	$at,0x19
    # Line 121
    swc1	$f3,408($a0)
    # Line 118
    addiu	$at,$at,-6308
    # Line 122
    lwc1	$f2,4($s8)
    # Line 118
    # addu	gp,t9,at
    # Line 124
    lwc1	$f1,3284($a0)
    # Line 122
    swc1	$f2,412($a0)
    # Line 125
    lw	$t9,12008($a0)
    # Line 123
    lwc1	$f0,8($s8)
    # Line 124
    swc1	$f1,420($a0)
    # Line 125
    jalr	$t9
    # Line 123
    swc1	$f0,416($a0)
    # Line 126
    # lw $t9, -31444($gp) # &__glexpim_Color3fv
    bal __glexpim_Color3fv
    move	$a0,$s8
    # Line 127
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3fv

# Function: __glexpim_shadowColor3i
# Declared: Line 129 (Source lines: 130-139)
# Address: 0x0da69178 - 0x0da69230 (Size: 184 bytes, Frame: 208)
.globl __glexpim_shadowColor3i
.ent __glexpim_shadowColor3i
__glexpim_shadowColor3i:
    # Line 134
    mtc1	$a1,$f1
    # Line 130
    addiu	$sp,$sp,-80
    # Line 134
    cvt.s.w	$f1,$f1
    # sd	gp,16(sp)
    # Line 135
    mtc1	$a2,$f2
    # Line 130
    lui	$at,0x19
    addiu	$at,$at,-6416
    # Line 135
    cvt.s.w	$f2,$f2
    # Line 130
    # addu	gp,t9,at
    # Line 133
    mtc1	$a0,$f0
    lwc1	$f3,_lit_40000000
    cvt.s.w	$f0,$f0
    # Line 135
    mul.s	$f2,$f2,$f3
    # Line 134
    mul.s	$f1,$f1,$f3
    sd	$s8,8($sp)
    # Line 133
    mul.s	$f0,$f0,$f3
    # Line 130
    move	$s8,$a0
    # Line 133
    lwc1	$f3,_lit_3f800000
    # Line 131
    lw	$a0,__glCurrentContext
    # Line 134
    add.s	$f1,$f1,$f3
    # Line 133
    lwc1	$f4,3308($a0)
    # Line 135
    add.s	$f2,$f2,$f3
    # Line 134
    mul.s	$f1,$f1,$f4
    sd	$a2,24($sp)
    # Line 133
    add.s	$f0,$f0,$f3
    # Line 135
    mul.s	$f2,$f2,$f4
    sd	$a1,32($sp)
    # Line 136
    lwc1	$f3,3284($a0)
    # Line 133
    mul.s	$f0,$f0,$f4
    sd	$ra,0($sp)
    # Line 137
    lw	$t9,12008($a0)
    # Line 136
    swc1	$f3,420($a0)
    # Line 135
    swc1	$f2,416($a0)
    # Line 134
    swc1	$f1,412($a0)
    # Line 137
    jalr	$t9
    # Line 133
    swc1	$f0,408($a0)
    # Line 138
    # lw $t9, -31440($gp) # &__glexpim_Color3i
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3i
    ld	$a2,24($sp)
    # Line 139
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3i

# Function: __glexpim_shadowColor3iv
# Declared: Line 141 (Source lines: 142-151)
# Address: 0x0da69230 - 0x0da692ec (Size: 188 bytes, Frame: 48)
.globl __glexpim_shadowColor3iv
.ent __glexpim_shadowColor3iv
__glexpim_shadowColor3iv:
    # Line 142
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 145
    lw	$a0,0($a0)
    mtc1	$a0,$f5
    # sd	gp,16(sp)
    # Line 142
    lui	$v1,0x19
    # Line 145
    cvt.s.w	$f5,$f5
    # Line 142
    addiu	$v1,$v1,-6600
    # addu	gp,t9,v1
    # Line 145
    lwc1	$f3,_lit_40000000
    mul.s	$f5,$f5,$f3
    lwc1	$f2,_lit_3f800000
    # Line 143
    lw	$a0,__glCurrentContext
    # Line 145
    add.s	$f5,$f5,$f2
    lwc1	$f1,3308($a0)
    mul.s	$f5,$f5,$f1
    swc1	$f5,408($a0)
    # Line 146
    lw	$v0,4($s8)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,412($a0)
    # Line 147
    lw	$at,8($s8)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 148
    lwc1	$f1,3284($a0)
    # Line 149
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    # Line 148
    swc1	$f1,420($a0)
    # Line 149
    jalr	$t9
    # Line 147
    swc1	$f0,416($a0)
    # Line 150
    # lw $t9, -31436($gp) # &__glexpim_Color3iv
    bal __glexpim_Color3iv
    move	$a0,$s8
    # Line 151
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3iv

# Function: __glexpim_shadowColor3ui
# Declared: Line 153 (Source lines: 154-163)
# Address: 0x0da692ec - 0x0da6939c (Size: 176 bytes, Frame: 208)
.globl __glexpim_shadowColor3ui
.ent __glexpim_shadowColor3ui
__glexpim_shadowColor3ui:
    # Line 158
    dsll32	$v1,$a1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    # Line 154
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 158
    cvt.s.l	$f1,$f1
    # Line 157
    dsll32	$v0,$a0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # Line 154
    move	$s8,$a0
    # Line 155
    lw	$a0,__glCurrentContext
    # Line 157
    cvt.s.l	$f0,$f0
    sd	$a2,24($sp)
    # Line 159
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    sd	$a1,32($sp)
    # Line 157
    lwc1	$f4,3308($a0)
    # Line 159
    cvt.s.l	$f2,$f2
    sd	$ra,0($sp)
    # Line 157
    mul.s	$f0,$f0,$f4
    # sd	gp,16(sp)
    # Line 154
    lui	$at,0x19
    # Line 158
    mul.s	$f1,$f1,$f4
    # Line 154
    addiu	$at,$at,-6788
    # Line 160
    lwc1	$f3,3284($a0)
    # Line 159
    mul.s	$f2,$f2,$f4
    # Line 154
    # addu	gp,t9,at
    # Line 161
    lw	$t9,12008($a0)
    # Line 160
    swc1	$f3,420($a0)
    # Line 158
    swc1	$f1,412($a0)
    # Line 157
    swc1	$f0,408($a0)
    # Line 161
    jalr	$t9
    # Line 159
    swc1	$f2,416($a0)
    # Line 162
    # lw $t9, -31432($gp) # &__glexpim_Color3ui
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3ui
    ld	$a2,24($sp)
    # Line 163
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3ui

# Function: __glexpim_shadowColor3uiv
# Declared: Line 165 (Source lines: 166-175)
# Address: 0x0da6939c - 0x0da69454 (Size: 184 bytes, Frame: 48)
.globl __glexpim_shadowColor3uiv
.ent __glexpim_shadowColor3uiv
__glexpim_shadowColor3uiv:
    # Line 166
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 169
    lw	$a0,0($a0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 167
    lw	$a0,__glCurrentContext
    # Line 169
    lwc1	$f1,3308($a0)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($a0)
    # Line 170
    lw	$v1,4($s8)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($a0)
    # Line 171
    lw	$v0,8($s8)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    # sd	gp,16(sp)
    # Line 166
    lui	$at,0x19
    addiu	$at,$at,-6964
    # Line 171
    mul.s	$f0,$f0,$f1
    # Line 166
    # addu	gp,t9,at
    # Line 172
    lwc1	$f1,3284($a0)
    # Line 173
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    # Line 172
    swc1	$f1,420($a0)
    # Line 173
    jalr	$t9
    # Line 171
    swc1	$f0,416($a0)
    # Line 174
    # lw $t9, -31428($gp) # &__glexpim_Color3uiv
    bal __glexpim_Color3uiv
    move	$a0,$s8
    # Line 175
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3uiv

# Function: __glexpim_shadowColor3s
# Declared: Line 177 (Source lines: 178-187)
# Address: 0x0da69454 - 0x0da69508 (Size: 180 bytes, Frame: 208)
.globl __glexpim_shadowColor3s
.ent __glexpim_shadowColor3s
__glexpim_shadowColor3s:
    # Line 182
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 178
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 179
    lw	$a0,__glCurrentContext
    # Line 182
    cvt.s.w	$f1,$f1
    # Line 181
    lwc1	$f4,3300($a0)
    # Line 182
    mul.s	$f1,$f1,$f4
    sd	$a2,24($sp)
    # Line 183
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 181
    sll	$v0,$s8,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    sd	$a1,32($sp)
    sd	$ra,0($sp)
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 178
    lui	$at,0x19
    # Line 183
    mul.s	$f2,$f2,$f4
    # Line 178
    addiu	$at,$at,-7148
    # Line 184
    lwc1	$f3,3284($a0)
    # Line 181
    mul.s	$f0,$f0,$f4
    # Line 178
    # addu	gp,t9,at
    # Line 185
    lw	$t9,12008($a0)
    # Line 184
    swc1	$f3,420($a0)
    # Line 182
    swc1	$f1,412($a0)
    # Line 183
    swc1	$f2,416($a0)
    # Line 185
    jalr	$t9
    # Line 181
    swc1	$f0,408($a0)
    # Line 186
    # lw $t9, -31424($gp) # &__glexpim_Color3s
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3s
    ld	$a2,24($sp)
    # Line 187
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3s

# Function: __glexpim_shadowColor3sv
# Declared: Line 189 (Source lines: 190-199)
# Address: 0x0da69508 - 0x0da695bc (Size: 180 bytes, Frame: 48)
.globl __glexpim_shadowColor3sv
.ent __glexpim_shadowColor3sv
__glexpim_shadowColor3sv:
    # Line 190
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 193
    lh	$a0,0($a0)
    sll	$a0,$a0,0x1
    addiu	$a0,$a0,1
    mtc1	$a0,$f3
    # Line 191
    lw	$a0,__glCurrentContext
    # Line 193
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($a0)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($a0)
    # Line 194
    lh	$v1,2($s8)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($a0)
    # Line 195
    lh	$v0,4($s8)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 190
    lui	$at,0x19
    addiu	$at,$at,-7328
    # Line 195
    mul.s	$f0,$f0,$f1
    # Line 190
    # addu	gp,t9,at
    # Line 196
    lwc1	$f1,3284($a0)
    # Line 197
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    # Line 196
    swc1	$f1,420($a0)
    # Line 197
    jalr	$t9
    # Line 195
    swc1	$f0,416($a0)
    # Line 198
    # lw $t9, -31420($gp) # &__glexpim_Color3sv
    bal __glexpim_Color3sv
    move	$a0,$s8
    # Line 199
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3sv

# Function: __glexpim_shadowColor3us
# Declared: Line 201 (Source lines: 202-211)
# Address: 0x0da695bc - 0x0da69658 (Size: 156 bytes, Frame: 208)
.globl __glexpim_shadowColor3us
.ent __glexpim_shadowColor3us
__glexpim_shadowColor3us:
    # Line 206
    mtc1	$a1,$f1
    # Line 202
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 203
    lw	$a0,__glCurrentContext
    # Line 206
    cvt.s.w	$f1,$f1
    # Line 205
    lwc1	$f4,3300($a0)
    # Line 206
    mul.s	$f1,$f1,$f4
    # Line 207
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    sd	$a2,24($sp)
    # Line 205
    mtc1	$s8,$f0
    sd	$a1,32($sp)
    sd	$ra,0($sp)
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 202
    lui	$at,0x19
    # Line 207
    mul.s	$f2,$f2,$f4
    # Line 202
    addiu	$at,$at,-7508
    # Line 208
    lwc1	$f3,3284($a0)
    # Line 205
    mul.s	$f0,$f0,$f4
    # Line 202
    # addu	gp,t9,at
    # Line 209
    lw	$t9,12008($a0)
    # Line 208
    swc1	$f3,420($a0)
    # Line 207
    swc1	$f2,416($a0)
    # Line 206
    swc1	$f1,412($a0)
    # Line 209
    jalr	$t9
    # Line 205
    swc1	$f0,408($a0)
    # Line 210
    # lw $t9, -31416($gp) # &__glexpim_Color3us
    move	$a0,$s8
    ld	$a1,32($sp)
    bal __glexpim_Color3us
    ld	$a2,24($sp)
    # Line 211
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor3us

# Function: __glexpim_shadowColor3usv
# Declared: Line 213 (Source lines: 214-223)
# Address: 0x0da69658 - 0x0da696f4 (Size: 156 bytes, Frame: 48)
.globl __glexpim_shadowColor3usv
.ent __glexpim_shadowColor3usv
__glexpim_shadowColor3usv:
    # Line 214
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 217
    lhu	$a0,0($a0)
    mtc1	$a0,$f3
    # Line 215
    lw	$a0,__glCurrentContext
    # Line 217
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($a0)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($a0)
    # Line 218
    lhu	$v1,2($s8)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($a0)
    # Line 219
    lhu	$v0,4($s8)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 214
    lui	$at,0x19
    addiu	$at,$at,-7664
    # Line 219
    mul.s	$f0,$f0,$f1
    # Line 214
    # addu	gp,t9,at
    # Line 220
    lwc1	$f1,3284($a0)
    # Line 221
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    # Line 220
    swc1	$f1,420($a0)
    # Line 221
    jalr	$t9
    # Line 219
    swc1	$f0,416($a0)
    # Line 222
    # lw $t9, -31412($gp) # &__glexpim_Color3usv
    bal __glexpim_Color3usv
    move	$a0,$s8
    # Line 223
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor3usv

# Function: __glexpim_shadowColor4ub
# Declared: Line 227 (Source lines: 228-237)
# Address: 0x0da696f4 - 0x0da69798 (Size: 164 bytes, Frame: 208)
.globl __glexpim_shadowColor4ub
.ent __glexpim_shadowColor4ub
__glexpim_shadowColor4ub:
    # Line 228
    addiu	$sp,$sp,-80
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 229
    lw	$a0,__glCurrentContext
    # Line 234
    sll	$at,$a3,0x2
    # Line 231
    sll	$a4,$s8,0x2
    addu	$a4,$a4,$a0
    lwc1	$f3,3528($a4)
    # Line 228
    lui	$a5,0x19
    # Line 232
    sll	$v1,$a1,0x2
    # Line 231
    swc1	$f3,408($a0)
    # Line 232
    addu	$v1,$v1,$a0
    lwc1	$f2,3528($v1)
    # Line 228
    addiu	$a5,$a5,-7820
    # Line 233
    sll	$v0,$a2,0x2
    # Line 232
    swc1	$f2,412($a0)
    # Line 233
    addu	$v0,$v0,$a0
    lwc1	$f1,3528($v0)
    # Line 228
    # addu	gp,t9,a5
    # Line 235
    lw	$t9,12008($a0)
    # Line 233
    swc1	$f1,416($a0)
    # Line 234
    addu	$at,$at,$a0
    lwc1	$f0,3528($at)
    sd	$ra,0($sp)
    # Line 235
    jalr	$t9
    # Line 234
    swc1	$f0,420($a0)
    # Line 236
    move	$a0,$s8
    # lw $t9, -31408($gp) # &__glexpim_Color4ub
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4ub
    ld	$a3,24($sp)
    # Line 237
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4ub

# Function: __glexpim_shadowColor4ubv
# Declared: Line 239 (Source lines: 240-249)
# Address: 0x0da69798 - 0x0da69834 (Size: 156 bytes, Frame: 48)
.globl __glexpim_shadowColor4ubv
.ent __glexpim_shadowColor4ubv
__glexpim_shadowColor4ubv:
    # Line 243
    lbu	$a2,0($a0)
    # Line 240
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 241
    lw	$a0,__glCurrentContext
    # Line 243
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    lwc1	$f3,3528($a2)
    swc1	$f3,408($a0)
    # Line 244
    lbu	$a1,1($s8)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lwc1	$f2,3528($a1)
    swc1	$f2,412($a0)
    # Line 245
    lbu	$v1,2($s8)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f1,3528($v1)
    # sd	gp,16(sp)
    # Line 240
    lui	$v0,0x19
    # Line 245
    swc1	$f1,416($a0)
    # Line 240
    addiu	$v0,$v0,-7984
    # Line 246
    lbu	$at,3($s8)
    # Line 240
    # addu	gp,t9,v0
    # Line 247
    lw	$t9,12008($a0)
    # Line 246
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f0,3528($at)
    sd	$ra,0($sp)
    # Line 247
    jalr	$t9
    # Line 246
    swc1	$f0,420($a0)
    # Line 248
    # lw $t9, -31404($gp) # &__glexpim_Color4ubv
    bal __glexpim_Color4ubv
    move	$a0,$s8
    # Line 249
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4ubv

# Function: __glexpim_shadowColor4b
# Declared: Line 251 (Source lines: 252-261)
# Address: 0x0da69834 - 0x0da69900 (Size: 204 bytes, Frame: 208)
.globl __glexpim_shadowColor4b
.ent __glexpim_shadowColor4b
__glexpim_shadowColor4b:
    # Line 256
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 252
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 253
    lw	$a0,__glCurrentContext
    # Line 256
    cvt.s.w	$f1,$f1
    sd	$a2,32($sp)
    # Line 257
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 255
    lwc1	$f4,3292($a0)
    # Line 257
    cvt.s.w	$f2,$f2
    # Line 256
    mul.s	$f1,$f1,$f4
    # Line 257
    mul.s	$f2,$f2,$f4
    sd	$a3,24($sp)
    # Line 258
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 255
    sll	$v0,$s8,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    sd	$a1,40($sp)
    cvt.s.w	$f0,$f0
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 258
    mul.s	$f3,$f3,$f4
    # Line 252
    lui	$at,0x19
    addiu	$at,$at,-8140
    # Line 255
    mul.s	$f0,$f0,$f4
    # Line 252
    # addu	gp,t9,at
    # Line 259
    lw	$t9,12008($a0)
    # Line 256
    swc1	$f1,412($a0)
    # Line 258
    swc1	$f3,420($a0)
    # Line 257
    swc1	$f2,416($a0)
    # Line 259
    jalr	$t9
    # Line 255
    swc1	$f0,408($a0)
    # Line 260
    move	$a0,$s8
    # lw $t9, -31400($gp) # &__glexpim_Color4b
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4b
    ld	$a3,24($sp)
    # Line 261
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4b

# Function: __glexpim_shadowColor4bv
# Declared: Line 263 (Source lines: 264-273)
# Address: 0x0da69900 - 0x0da699cc (Size: 204 bytes, Frame: 48)
.globl __glexpim_shadowColor4bv
.ent __glexpim_shadowColor4bv
__glexpim_shadowColor4bv:
    # Line 267
    lb	$a2,0($a0)
    # Line 264
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 267
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f4
    # Line 264
    move	$s8,$a0
    # Line 265
    lw	$a0,__glCurrentContext
    # Line 267
    cvt.s.w	$f4,$f4
    lwc1	$f1,3292($a0)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($a0)
    # Line 268
    lb	$a1,1($s8)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($a0)
    # Line 269
    lb	$v1,2($s8)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($a0)
    # Line 270
    lb	$v0,3($s8)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 264
    lui	$at,0x19
    # Line 270
    mul.s	$f0,$f0,$f1
    # Line 264
    addiu	$at,$at,-8344
    # addu	gp,t9,at
    # Line 271
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 270
    swc1	$f0,420($a0)
    # Line 272
    # lw $t9, -31396($gp) # &__glexpim_Color4bv
    bal __glexpim_Color4bv
    move	$a0,$s8
    # Line 273
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4bv

# Function: __glexpim_shadowColor4d
# Declared: Line 275 (Source lines: 276-285)
# Address: 0x0da699cc - 0x0da69a50 (Size: 132 bytes, Frame: 208)
.globl __glexpim_shadowColor4d
.ent __glexpim_shadowColor4d
__glexpim_shadowColor4d:
    # Line 276
    addiu	$sp,$sp,-80
    sdc1	$f15,8($sp)
    # Line 279
    cvt.s.d	$f0,$f12
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 280
    cvt.s.d	$f1,$f13
    sdc1	$f30,0($sp)
    # Line 276
    mov.d	$f30,$f12
    # Line 282
    cvt.s.d	$f3,$f15
    sd	$ra,32($sp)
    # Line 277
    lw	$a0,__glCurrentContext
    # Line 281
    cvt.s.d	$f2,$f14
    # sd	gp,40(sp)
    # Line 282
    swc1	$f3,420($a0)
    # Line 276
    lui	$at,0x19
    addiu	$at,$at,-8548
    # addu	gp,t9,at
    # Line 283
    lw	$t9,12008($a0)
    # Line 281
    swc1	$f2,416($a0)
    # Line 280
    swc1	$f1,412($a0)
    # Line 283
    jalr	$t9
    # Line 279
    swc1	$f0,408($a0)
    # Line 284
    mov.d	$f12,$f30
    # lw $t9, -31392($gp) # &__glexpim_Color4d
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    bal __glexpim_Color4d
    ldc1	$f15,8($sp)
    # Line 285
    ld	$ra,32($sp)
    # ld	gp,40(sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4d

# Function: __glexpim_shadowColor4dv
# Declared: Line 287 (Source lines: 288-297)
# Address: 0x0da69a50 - 0x0da69acc (Size: 124 bytes, Frame: 48)
.globl __glexpim_shadowColor4dv
.ent __glexpim_shadowColor4dv
__glexpim_shadowColor4dv:
    # Line 288
    addiu	$sp,$sp,-48
    # Line 291
    ldc1	$f3,0($a0)
    sd	$s8,8($sp)
    # Line 288
    move	$s8,$a0
    # Line 291
    cvt.s.d	$f3,$f3
    # Line 289
    lw	$a0,__glCurrentContext
    # Line 291
    swc1	$f3,408($a0)
    # Line 292
    ldc1	$f2,8($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,412($a0)
    # Line 293
    ldc1	$f1,16($s8)
    cvt.s.d	$f1,$f1
    # sd	gp,16(sp)
    # Line 288
    lui	$at,0x19
    # Line 293
    swc1	$f1,416($a0)
    # Line 288
    addiu	$at,$at,-8680
    # Line 294
    ldc1	$f0,24($s8)
    # Line 288
    # addu	gp,t9,at
    # Line 295
    lw	$t9,12008($a0)
    # Line 294
    cvt.s.d	$f0,$f0
    sd	$ra,0($sp)
    # Line 295
    jalr	$t9
    # Line 294
    swc1	$f0,420($a0)
    # Line 296
    # lw $t9, -31388($gp) # &__glexpim_Color4dv
    bal __glexpim_Color4dv
    move	$a0,$s8
    # Line 297
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4dv

# Function: __glexpim_shadowColor4f
# Declared: Line 299 (Source lines: 300-309)
# Address: 0x0da69acc - 0x0da69b40 (Size: 116 bytes, Frame: 208)
.globl __glexpim_shadowColor4f
.ent __glexpim_shadowColor4f
__glexpim_shadowColor4f:
    # Line 300
    addiu	$sp,$sp,-80
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    # Line 301
    lw	$a0,__glCurrentContext
    # Line 300
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 306
    swc1	$f15,420($a0)
    # sd	gp,40(sp)
    # Line 300
    lui	$at,0x19
    addiu	$at,$at,-8804
    # addu	gp,t9,at
    # Line 307
    lw	$t9,12008($a0)
    # Line 305
    swc1	$f14,416($a0)
    # Line 304
    swc1	$f13,412($a0)
    # Line 307
    jalr	$t9
    # Line 303
    swc1	$f12,408($a0)
    # Line 308
    mov.s	$f12,$f30
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    bal __glexpim_Color4f
    ldc1	$f15,8($sp)
    # Line 309
    ld	$ra,32($sp)
    # ld	gp,40(sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4f

# Function: __glexpim_shadowColor4fv
# Declared: Line 311 (Source lines: 312-321)
# Address: 0x0da69b40 - 0x0da69bac (Size: 108 bytes, Frame: 48)
.globl __glexpim_shadowColor4fv
.ent __glexpim_shadowColor4fv
__glexpim_shadowColor4fv:
    # Line 312
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 313
    lw	$a0,__glCurrentContext
    # Line 315
    lwc1	$f3,0($s8)
    swc1	$f3,408($a0)
    # Line 316
    lwc1	$f2,4($s8)
    # sd	gp,16(sp)
    swc1	$f2,412($a0)
    # Line 312
    lui	$at,0x19
    # Line 317
    lwc1	$f1,8($s8)
    # Line 312
    addiu	$at,$at,-8920
    # addu	gp,t9,at
    # Line 317
    swc1	$f1,416($a0)
    # Line 319
    lw	$t9,12008($a0)
    # Line 318
    lwc1	$f0,12($s8)
    sd	$ra,0($sp)
    # Line 319
    jalr	$t9
    # Line 318
    swc1	$f0,420($a0)
    # Line 320
    # lw $t9, -31380($gp) # &__glexpim_Color4fv
    bal __glexpim_Color4fv
    move	$a0,$s8
    # Line 321
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4fv

# Function: __glexpim_shadowColor4i
# Declared: Line 323 (Source lines: 324-333)
# Address: 0x0da69bac - 0x0da69c88 (Size: 220 bytes, Frame: 208)
.globl __glexpim_shadowColor4i
.ent __glexpim_shadowColor4i
__glexpim_shadowColor4i:
    # Line 324
    addiu	$sp,$sp,-80
    # Line 330
    mtc1	$a3,$f3
    # sd	gp,16(sp)
    # Line 324
    lui	$at,0x19
    # Line 330
    cvt.s.w	$f3,$f3
    # Line 324
    addiu	$at,$at,-9028
    # addu	gp,t9,at
    # Line 327
    lwc1	$f4,_lit_40000000
    # Line 330
    mul.s	$f3,$f3,$f4
    # Line 329
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 328
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 327
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 328
    mul.s	$f1,$f1,$f4
    sd	$s8,8($sp)
    # Line 324
    move	$s8,$a0
    # Line 329
    mul.s	$f2,$f2,$f4
    # Line 325
    lw	$a0,__glCurrentContext
    # Line 327
    lwc1	$f5,_lit_3f800000
    mul.s	$f0,$f0,$f4
    # Line 328
    add.s	$f1,$f1,$f5
    # Line 327
    lwc1	$f4,3308($a0)
    # Line 330
    add.s	$f3,$f3,$f5
    # Line 328
    mul.s	$f1,$f1,$f4
    # Line 329
    add.s	$f2,$f2,$f5
    # Line 330
    mul.s	$f3,$f3,$f4
    sd	$a3,24($sp)
    # Line 327
    add.s	$f0,$f0,$f5
    # Line 329
    mul.s	$f2,$f2,$f4
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    # Line 327
    mul.s	$f0,$f0,$f4
    sd	$ra,0($sp)
    # Line 331
    lw	$t9,12008($a0)
    # Line 330
    swc1	$f3,420($a0)
    # Line 329
    swc1	$f2,416($a0)
    # Line 328
    swc1	$f1,412($a0)
    # Line 331
    jalr	$t9
    # Line 327
    swc1	$f0,408($a0)
    # Line 332
    move	$a0,$s8
    # lw $t9, -31376($gp) # &__glexpim_Color4i
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4i
    ld	$a3,24($sp)
    # Line 333
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4i

# Function: __glexpim_shadowColor4iv
# Declared: Line 335 (Source lines: 336-345)
# Address: 0x0da69c88 - 0x0da69d5c (Size: 212 bytes, Frame: 48)
.globl __glexpim_shadowColor4iv
.ent __glexpim_shadowColor4iv
__glexpim_shadowColor4iv:
    # Line 336
    addiu	$sp,$sp,-48
    # Line 339
    lw	$a1,0($a0)
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    mtc1	$a1,$f6
    # Line 336
    move	$s8,$a0
    lui	$a0,0x19
    # Line 339
    cvt.s.w	$f6,$f6
    # Line 336
    addiu	$a0,$a0,-9248
    # addu	gp,t9,a0
    # Line 339
    lwc1	$f3,_lit_40000000
    mul.s	$f6,$f6,$f3
    lwc1	$f2,_lit_3f800000
    # Line 337
    lw	$a0,__glCurrentContext
    # Line 339
    add.s	$f6,$f6,$f2
    lwc1	$f1,3308($a0)
    mul.s	$f6,$f6,$f1
    swc1	$f6,408($a0)
    # Line 340
    lw	$v1,4($s8)
    mtc1	$v1,$f5
    nop
    cvt.s.w	$f5,$f5
    mul.s	$f5,$f5,$f3
    add.s	$f5,$f5,$f2
    mul.s	$f5,$f5,$f1
    swc1	$f5,412($a0)
    # Line 341
    lw	$v0,8($s8)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,416($a0)
    # Line 342
    lw	$at,12($s8)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 343
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 342
    swc1	$f0,420($a0)
    # Line 344
    # lw $t9, -31372($gp) # &__glexpim_Color4iv
    bal __glexpim_Color4iv
    move	$a0,$s8
    # Line 345
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4iv

# Function: __glexpim_shadowColor4ui
# Declared: Line 347 (Source lines: 348-357)
# Address: 0x0da69d5c - 0x0da69e30 (Size: 212 bytes, Frame: 208)
.globl __glexpim_shadowColor4ui
.ent __glexpim_shadowColor4ui
__glexpim_shadowColor4ui:
    # Line 352
    dsll32	$v1,$a1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 348
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 349
    lw	$a0,__glCurrentContext
    # Line 351
    lwc1	$f4,3308($a0)
    # Line 352
    mul.s	$f1,$f1,$f4
    sd	$a3,24($sp)
    # Line 354
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    sd	$a2,32($sp)
    cvt.s.l	$f3,$f3
    # Line 353
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 351
    dsll32	$v0,$s8,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    sd	$a1,40($sp)
    # Line 353
    mul.s	$f2,$f2,$f4
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 354
    mul.s	$f3,$f3,$f4
    # Line 348
    lui	$at,0x19
    addiu	$at,$at,-9460
    # Line 351
    mul.s	$f0,$f0,$f4
    # Line 348
    # addu	gp,t9,at
    # Line 355
    lw	$t9,12008($a0)
    # Line 352
    swc1	$f1,412($a0)
    # Line 354
    swc1	$f3,420($a0)
    # Line 353
    swc1	$f2,416($a0)
    # Line 355
    jalr	$t9
    # Line 351
    swc1	$f0,408($a0)
    # Line 356
    move	$a0,$s8
    # lw $t9, -31368($gp) # &__glexpim_Color4ui
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4ui
    ld	$a3,24($sp)
    # Line 357
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4ui

# Function: __glexpim_shadowColor4uiv
# Declared: Line 359 (Source lines: 360-369)
# Address: 0x0da69e30 - 0x0da69efc (Size: 204 bytes, Frame: 48)
.globl __glexpim_shadowColor4uiv
.ent __glexpim_shadowColor4uiv
__glexpim_shadowColor4uiv:
    # Line 363
    lw	$a2,0($a0)
    # Line 360
    addiu	$sp,$sp,-48
    # Line 363
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f4
    sd	$s8,8($sp)
    # Line 360
    move	$s8,$a0
    # Line 363
    cvt.s.l	$f4,$f4
    # Line 361
    lw	$a0,__glCurrentContext
    # Line 363
    lwc1	$f1,3308($a0)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($a0)
    # Line 364
    lw	$a1,4($s8)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($a0)
    # Line 365
    lw	$v1,8($s8)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($a0)
    # Line 366
    lw	$v0,12($s8)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    # sd	gp,16(sp)
    # Line 360
    lui	$at,0x19
    # Line 366
    mul.s	$f0,$f0,$f1
    # Line 360
    addiu	$at,$at,-9672
    # addu	gp,t9,at
    # Line 367
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 366
    swc1	$f0,420($a0)
    # Line 368
    # lw $t9, -31364($gp) # &__glexpim_Color4uiv
    bal __glexpim_Color4uiv
    move	$a0,$s8
    # Line 369
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4uiv

# Function: __glexpim_shadowColor4s
# Declared: Line 371 (Source lines: 372-381)
# Address: 0x0da69efc - 0x0da69fc8 (Size: 204 bytes, Frame: 208)
.globl __glexpim_shadowColor4s
.ent __glexpim_shadowColor4s
__glexpim_shadowColor4s:
    # Line 376
    sll	$v1,$a1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 372
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 373
    lw	$a0,__glCurrentContext
    # Line 376
    cvt.s.w	$f1,$f1
    sd	$a2,32($sp)
    # Line 377
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 375
    lwc1	$f4,3300($a0)
    # Line 377
    cvt.s.w	$f2,$f2
    # Line 376
    mul.s	$f1,$f1,$f4
    # Line 377
    mul.s	$f2,$f2,$f4
    sd	$a3,24($sp)
    # Line 378
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 375
    sll	$v0,$s8,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    sd	$a1,40($sp)
    cvt.s.w	$f0,$f0
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 378
    mul.s	$f3,$f3,$f4
    # Line 372
    lui	$at,0x19
    addiu	$at,$at,-9876
    # Line 375
    mul.s	$f0,$f0,$f4
    # Line 372
    # addu	gp,t9,at
    # Line 379
    lw	$t9,12008($a0)
    # Line 376
    swc1	$f1,412($a0)
    # Line 378
    swc1	$f3,420($a0)
    # Line 377
    swc1	$f2,416($a0)
    # Line 379
    jalr	$t9
    # Line 375
    swc1	$f0,408($a0)
    # Line 380
    move	$a0,$s8
    # lw $t9, -31360($gp) # &__glexpim_Color4s
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4s
    ld	$a3,24($sp)
    # Line 381
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4s

# Function: __glexpim_shadowColor4sv
# Declared: Line 383 (Source lines: 384-393)
# Address: 0x0da69fc8 - 0x0da6a094 (Size: 204 bytes, Frame: 48)
.globl __glexpim_shadowColor4sv
.ent __glexpim_shadowColor4sv
__glexpim_shadowColor4sv:
    # Line 387
    lh	$a2,0($a0)
    # Line 384
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 387
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f4
    # Line 384
    move	$s8,$a0
    # Line 385
    lw	$a0,__glCurrentContext
    # Line 387
    cvt.s.w	$f4,$f4
    lwc1	$f1,3300($a0)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($a0)
    # Line 388
    lh	$a1,2($s8)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($a0)
    # Line 389
    lh	$v1,4($s8)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($a0)
    # Line 390
    lh	$v0,6($s8)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 384
    lui	$at,0x19
    # Line 390
    mul.s	$f0,$f0,$f1
    # Line 384
    addiu	$at,$at,-10080
    # addu	gp,t9,at
    # Line 391
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 390
    swc1	$f0,420($a0)
    # Line 392
    # lw $t9, -31356($gp) # &__glexpim_Color4sv
    bal __glexpim_Color4sv
    move	$a0,$s8
    # Line 393
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4sv

# Function: __glexpim_shadowColor4us
# Declared: Line 395 (Source lines: 396-405)
# Address: 0x0da6a094 - 0x0da6a144 (Size: 176 bytes, Frame: 208)
.globl __glexpim_shadowColor4us
.ent __glexpim_shadowColor4us
__glexpim_shadowColor4us:
    # Line 400
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 396
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 397
    lw	$a0,__glCurrentContext
    # Line 402
    mtc1	$a3,$f3
    # Line 399
    lwc1	$f4,3300($a0)
    # Line 402
    cvt.s.w	$f3,$f3
    # Line 400
    mul.s	$f1,$f1,$f4
    # Line 402
    mul.s	$f3,$f3,$f4
    # Line 401
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    sd	$a3,24($sp)
    # Line 399
    mtc1	$s8,$f0
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    cvt.s.w	$f0,$f0
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 401
    mul.s	$f2,$f2,$f4
    # Line 396
    lui	$at,0x19
    addiu	$at,$at,-10284
    # Line 399
    mul.s	$f0,$f0,$f4
    # Line 396
    # addu	gp,t9,at
    # Line 403
    lw	$t9,12008($a0)
    # Line 402
    swc1	$f3,420($a0)
    # Line 401
    swc1	$f2,416($a0)
    # Line 400
    swc1	$f1,412($a0)
    # Line 403
    jalr	$t9
    # Line 399
    swc1	$f0,408($a0)
    # Line 404
    move	$a0,$s8
    # lw $t9, -31352($gp) # &__glexpim_Color4us
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    bal __glexpim_Color4us
    ld	$a3,24($sp)
    # Line 405
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_shadowColor4us

# Function: __glexpim_shadowColor4usv
# Declared: Line 407 (Source lines: 408-417)
# Address: 0x0da6a144 - 0x0da6a1f0 (Size: 172 bytes, Frame: 48)
.globl __glexpim_shadowColor4usv
.ent __glexpim_shadowColor4usv
__glexpim_shadowColor4usv:
    # Line 411
    lhu	$a2,0($a0)
    # Line 408
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 411
    mtc1	$a2,$f4
    # Line 408
    move	$s8,$a0
    # Line 409
    lw	$a0,__glCurrentContext
    # Line 411
    cvt.s.w	$f4,$f4
    lwc1	$f1,3300($a0)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($a0)
    # Line 412
    lhu	$a1,2($s8)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($a0)
    # Line 413
    lhu	$v1,4($s8)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($a0)
    # Line 414
    lhu	$v0,6($s8)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # sd	gp,16(sp)
    # Line 408
    lui	$at,0x19
    # Line 414
    mul.s	$f0,$f0,$f1
    # Line 408
    addiu	$at,$at,-10460
    # addu	gp,t9,at
    # Line 415
    lw	$t9,12008($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 414
    swc1	$f0,420($a0)
    # Line 416
    # lw $t9, -31348($gp) # &__glexpim_Color4usv
    bal __glexpim_Color4usv
    move	$a0,$s8
    # Line 417
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowColor4usv

# Function: __glexpim_shadowNormal3d
# Declared: Line 421 (Source lines: 422-429)
# Address: 0x0da6a1f0 - 0x0da6a23c (Size: 76 bytes, Frame: 48)
.globl __glexpim_shadowNormal3d
.ent __glexpim_shadowNormal3d
__glexpim_shadowNormal3d:
    # Line 425
    cvt.s.d	$f0,$f12
    # Line 426
    cvt.s.d	$f1,$f13
    # Line 422
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 423
    lw	$at,__glCurrentContext
    # Line 427
    cvt.s.d	$f2,$f14
    # sd	gp,8(sp)
    # Line 422
    lui	$v0,0x19
    addiu	$v0,$v0,-10632
    # addu	gp,t9,v0
    # Line 428
    # lw $t9, -31208($gp) # &__glexpim_Normal3d
    # Line 427
    swc1	$f2,192($at)
    # Line 426
    swc1	$f1,188($at)
    # Line 428
    bal __glexpim_Normal3d
    # Line 425
    swc1	$f0,184($at)
    # Line 429
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowNormal3d

# Function: __glexpim_shadowNormal3dv
# Declared: Line 431 (Source lines: 432-443)
# Address: 0x0da6a23c - 0x0da6a294 (Size: 88 bytes, Frame: 32)
.globl __glexpim_shadowNormal3dv
.ent __glexpim_shadowNormal3dv
__glexpim_shadowNormal3dv:
    # Line 432
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 433
    lw	$at,__glCurrentContext
    # sd	gp,8(sp)
    # Line 437
    ldc1	$f1,8($a0)
    # Line 432
    lui	$v0,0x19
    # Line 438
    ldc1	$f2,16($a0)
    # Line 440
    cvt.s.d	$f1,$f1
    # Line 432
    addiu	$v0,$v0,-10708
    # Line 439
    ldc1	$f0,0($a0)
    # Line 441
    cvt.s.d	$f2,$f2
    # Line 432
    # addu	gp,t9,v0
    # Line 442
    # lw $t9, -31204($gp) # &__glexpim_Normal3dv
    # Line 439
    cvt.s.d	$f0,$f0
    # Line 441
    swc1	$f2,192($at)
    # Line 440
    swc1	$f1,188($at)
    # Line 442
    bal __glexpim_Normal3dv
    # Line 439
    swc1	$f0,184($at)
    # Line 443
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowNormal3dv

# Function: __glexpim_shadowNormal3f
# Declared: Line 445 (Source lines: 446-453)
# Address: 0x0da6a294 - 0x0da6a2d4 (Size: 64 bytes, Frame: 48)
.globl __glexpim_shadowNormal3f
.ent __glexpim_shadowNormal3f
__glexpim_shadowNormal3f:
    # Line 446
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 447
    lw	$at,__glCurrentContext
    # sd	gp,8(sp)
    # Line 446
    lui	$v0,0x19
    addiu	$v0,$v0,-10796
    # addu	gp,t9,v0
    # Line 452
    # lw $t9, -31200($gp) # &__glexpim_Normal3f
    # Line 451
    swc1	$f14,192($at)
    # Line 450
    swc1	$f13,188($at)
    # Line 452
    bal __glexpim_Normal3f
    # Line 449
    swc1	$f12,184($at)
    # Line 453
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowNormal3f

# Function: __glexpim_shadowNormal3fv
# Declared: Line 455 (Source lines: 456-467)
# Address: 0x0da6a2d4 - 0x0da6a320 (Size: 76 bytes, Frame: 32)
.globl __glexpim_shadowNormal3fv
.ent __glexpim_shadowNormal3fv
__glexpim_shadowNormal3fv:
    # Line 456
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 463
    lwc1	$f0,0($a0)
    # Line 461
    lwc1	$f1,4($a0)
    # Line 457
    lw	$at,__glCurrentContext
    # Line 462
    lwc1	$f2,8($a0)
    # sd	gp,8(sp)
    # Line 456
    lui	$v0,0x19
    addiu	$v0,$v0,-10860
    # addu	gp,t9,v0
    # Line 466
    # lw $t9, -31196($gp) # &__glexpim_Normal3fv
    # Line 465
    swc1	$f2,192($at)
    # Line 464
    swc1	$f1,188($at)
    # Line 466
    bal __glexpim_Normal3fv
    # Line 463
    swc1	$f0,184($at)
    # Line 467
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowNormal3fv

# Function: __glexpim_shadowNormal3b
# Declared: Line 469 (Source lines: 470-477)
# Address: 0x0da6a320 - 0x0da6a3a0 (Size: 128 bytes, Frame: 48)
.globl __glexpim_shadowNormal3b
.ent __glexpim_shadowNormal3b
__glexpim_shadowNormal3b:
    # Line 475
    sll	$a4,$a2,0x1
    addiu	$a4,$a4,1
    mtc1	$a4,$f2
    # Line 474
    sll	$a3,$a1,0x1
    # Line 475
    cvt.s.w	$f2,$f2
    # Line 474
    addiu	$a3,$a3,1
    mtc1	$a3,$f1
    # Line 471
    lw	$at,__glCurrentContext
    # Line 473
    sll	$v1,$a0,0x1
    # Line 474
    cvt.s.w	$f1,$f1
    # Line 473
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    lwc1	$f3,3292($at)
    cvt.s.w	$f0,$f0
    # Line 474
    mul.s	$f1,$f1,$f3
    # Line 470
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 475
    mul.s	$f2,$f2,$f3
    # sd	gp,8(sp)
    # Line 470
    lui	$v0,0x19
    # Line 473
    mul.s	$f0,$f0,$f3
    # Line 470
    addiu	$v0,$v0,-10936
    # addu	gp,t9,v0
    # Line 476
    # lw $t9, -31192($gp) # &__glexpim_Normal3b
    # Line 475
    swc1	$f2,192($at)
    # Line 474
    swc1	$f1,188($at)
    # Line 476
    bal __glexpim_Normal3b
    # Line 473
    swc1	$f0,184($at)
    # Line 477
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowNormal3b

# Function: __glexpim_shadowNormal3bv
# Declared: Line 479 (Source lines: 480-487)
# Address: 0x0da6a3a0 - 0x0da6a434 (Size: 148 bytes, Frame: 32)
.globl __glexpim_shadowNormal3bv
.ent __glexpim_shadowNormal3bv
__glexpim_shadowNormal3bv:
    # Line 483
    lb	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 481
    lw	$at,__glCurrentContext
    # Line 483
    cvt.s.w	$f3,$f3
    lwc1	$f1,3292($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,184($at)
    # Line 484
    lb	$a1,1($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,188($at)
    # Line 485
    lb	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 480
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    # Line 485
    mul.s	$f0,$f0,$f1
    # Line 480
    addiu	$v0,$v0,-11064
    # addu	gp,t9,v0
    # Line 486
    # lw $t9, -31188($gp) # &__glexpim_Normal3bv
    sd	$ra,0($sp)
    bal __glexpim_Normal3bv
    # Line 485
    swc1	$f0,192($at)
    # Line 487
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowNormal3bv

# Function: __glexpim_shadowNormal3s
# Declared: Line 489 (Source lines: 490-497)
# Address: 0x0da6a434 - 0x0da6a4b4 (Size: 128 bytes, Frame: 48)
.globl __glexpim_shadowNormal3s
.ent __glexpim_shadowNormal3s
__glexpim_shadowNormal3s:
    # Line 495
    sll	$a4,$a2,0x1
    addiu	$a4,$a4,1
    mtc1	$a4,$f2
    # Line 494
    sll	$a3,$a1,0x1
    # Line 495
    cvt.s.w	$f2,$f2
    # Line 494
    addiu	$a3,$a3,1
    mtc1	$a3,$f1
    # Line 491
    lw	$at,__glCurrentContext
    # Line 493
    sll	$v1,$a0,0x1
    # Line 494
    cvt.s.w	$f1,$f1
    # Line 493
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    lwc1	$f3,3300($at)
    cvt.s.w	$f0,$f0
    # Line 494
    mul.s	$f1,$f1,$f3
    # Line 490
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 495
    mul.s	$f2,$f2,$f3
    # sd	gp,8(sp)
    # Line 490
    lui	$v0,0x19
    # Line 493
    mul.s	$f0,$f0,$f3
    # Line 490
    addiu	$v0,$v0,-11212
    # addu	gp,t9,v0
    # Line 496
    # lw $t9, -31184($gp) # &__glexpim_Normal3s
    # Line 495
    swc1	$f2,192($at)
    # Line 494
    swc1	$f1,188($at)
    # Line 496
    bal __glexpim_Normal3s
    # Line 493
    swc1	$f0,184($at)
    # Line 497
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowNormal3s

# Function: __glexpim_shadowNormal3sv
# Declared: Line 499 (Source lines: 500-507)
# Address: 0x0da6a4b4 - 0x0da6a548 (Size: 148 bytes, Frame: 32)
.globl __glexpim_shadowNormal3sv
.ent __glexpim_shadowNormal3sv
__glexpim_shadowNormal3sv:
    # Line 503
    lh	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 501
    lw	$at,__glCurrentContext
    # Line 503
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,184($at)
    # Line 504
    lh	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,188($at)
    # Line 505
    lh	$v1,4($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 500
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    # Line 505
    mul.s	$f0,$f0,$f1
    # Line 500
    addiu	$v0,$v0,-11340
    # addu	gp,t9,v0
    # Line 506
    # lw $t9, -31180($gp) # &__glexpim_Normal3sv
    sd	$ra,0($sp)
    bal __glexpim_Normal3sv
    # Line 505
    swc1	$f0,192($at)
    # Line 507
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowNormal3sv

# Function: __glexpim_shadowNormal3i
# Declared: Line 509 (Source lines: 510-518)
# Address: 0x0da6a548 - 0x0da6a5d0 (Size: 136 bytes, Frame: 48)
.globl __glexpim_shadowNormal3i
.ent __glexpim_shadowNormal3i
__glexpim_shadowNormal3i:
    # Line 516
    mtc1	$a2,$f2
    # Line 510
    addiu	$sp,$sp,-48
    # Line 516
    cvt.s.w	$f2,$f2
    # sd	gp,8(sp)
    # Line 515
    mtc1	$a1,$f1
    # Line 510
    lui	$v0,0x19
    addiu	$v0,$v0,-11488
    # Line 515
    cvt.s.w	$f1,$f1
    # Line 510
    # addu	gp,t9,v0
    # Line 514
    mtc1	$a0,$f0
    lwc1	$f3,_lit_40000000
    cvt.s.w	$f0,$f0
    # Line 515
    mul.s	$f1,$f1,$f3
    # Line 516
    mul.s	$f2,$f2,$f3
    # Line 511
    lw	$at,__glCurrentContext
    # Line 514
    lwc1	$f4,_lit_3f800000
    mul.s	$f0,$f0,$f3
    # Line 515
    add.s	$f1,$f1,$f4
    # Line 514
    lwc1	$f3,3308($at)
    # Line 516
    add.s	$f2,$f2,$f4
    # Line 515
    mul.s	$f1,$f1,$f3
    # Line 514
    add.s	$f0,$f0,$f4
    # Line 516
    mul.s	$f2,$f2,$f3
    # Line 514
    mul.s	$f0,$f0,$f3
    sd	$ra,0($sp)
    # Line 517
    # lw $t9, -31176($gp) # &__glexpim_Normal3i
    # Line 516
    swc1	$f2,192($at)
    # Line 515
    swc1	$f1,188($at)
    # Line 517
    bal __glexpim_Normal3i
    # Line 514
    swc1	$f0,184($at)
    # Line 518
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_shadowNormal3i

# Function: __glexpim_shadowNormal3iv
# Declared: Line 520 (Source lines: 521-529)
# Address: 0x0da6a5d0 - 0x0da6a66c (Size: 156 bytes, Frame: 32)
.globl __glexpim_shadowNormal3iv
.ent __glexpim_shadowNormal3iv
__glexpim_shadowNormal3iv:
    # Line 525
    lw	$a2,0($a0)
    # Line 521
    addiu	$sp,$sp,-32
    # Line 525
    mtc1	$a2,$f5
    # sd	gp,8(sp)
    # Line 521
    lui	$a1,0x19
    # Line 525
    cvt.s.w	$f5,$f5
    # Line 521
    addiu	$a1,$a1,-11624
    # addu	gp,t9,a1
    # Line 525
    lwc1	$f3,_lit_40000000
    mul.s	$f5,$f5,$f3
    lwc1	$f2,_lit_3f800000
    # Line 522
    lw	$at,__glCurrentContext
    # Line 525
    add.s	$f5,$f5,$f2
    lwc1	$f1,3308($at)
    mul.s	$f5,$f5,$f1
    swc1	$f5,184($at)
    # Line 526
    lw	$v1,4($a0)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,188($at)
    # Line 527
    lw	$v0,8($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 528
    # lw $t9, -31172($gp) # &__glexpim_Normal3iv
    sd	$ra,0($sp)
    bal __glexpim_Normal3iv
    # Line 527
    swc1	$f0,192($at)
    # Line 529
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowNormal3iv

# Function: __glexpim_shadowIndexd
# Declared: Line 533 (Source lines: 534-538)
# Address: 0x0da6a66c - 0x0da6a6a8 (Size: 60 bytes, Frame: 32)
.globl __glexpim_shadowIndexd
.ent __glexpim_shadowIndexd
__glexpim_shadowIndexd:
    # Line 536
    cvt.s.d	$f0,$f12
    # Line 534
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-11780
    # addu	gp,t9,v0
    # Line 537
    # lw $t9, -31344($gp) # &__glexpim_Indexd
    # Line 536
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 537
    bal __glexpim_Indexd
    # Line 536
    swc1	$f0,424($at)
    # Line 538
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexd

# Function: __glexpim_shadowIndexf
# Declared: Line 540 (Source lines: 541-545)
# Address: 0x0da6a6a8 - 0x0da6a6e0 (Size: 56 bytes, Frame: 32)
.globl __glexpim_shadowIndexf
.ent __glexpim_shadowIndexf
__glexpim_shadowIndexf:
    # Line 541
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-11840
    # addu	gp,t9,v0
    # Line 544
    # lw $t9, -31340($gp) # &__glexpim_Indexf
    # Line 543
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 544
    bal __glexpim_Indexf
    # Line 543
    swc1	$f12,424($at)
    # Line 545
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexf

# Function: __glexpim_shadowIndexi
# Declared: Line 547 (Source lines: 548-552)
# Address: 0x0da6a6e0 - 0x0da6a720 (Size: 64 bytes, Frame: 32)
.globl __glexpim_shadowIndexi
.ent __glexpim_shadowIndexi
__glexpim_shadowIndexi:
    # Line 548
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 550
    mtc1	$a0,$f0
    # Line 548
    lui	$v0,0x19
    addiu	$v0,$v0,-11896
    # Line 550
    cvt.s.w	$f0,$f0
    # Line 548
    # addu	gp,t9,v0
    # Line 551
    # lw $t9, -31336($gp) # &__glexpim_Indexi
    # Line 550
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 551
    bal __glexpim_Indexi
    # Line 550
    swc1	$f0,424($at)
    # Line 552
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexi

# Function: __glexpim_shadowIndexs
# Declared: Line 554 (Source lines: 555-559)
# Address: 0x0da6a720 - 0x0da6a760 (Size: 64 bytes, Frame: 32)
.globl __glexpim_shadowIndexs
.ent __glexpim_shadowIndexs
__glexpim_shadowIndexs:
    # Line 555
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 557
    mtc1	$a0,$f0
    # Line 555
    lui	$v0,0x19
    addiu	$v0,$v0,-11960
    # Line 557
    cvt.s.w	$f0,$f0
    # Line 555
    # addu	gp,t9,v0
    # Line 558
    # lw $t9, -31332($gp) # &__glexpim_Indexs
    # Line 557
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 558
    bal __glexpim_Indexs
    # Line 557
    swc1	$f0,424($at)
    # Line 559
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexs

# Function: __glexpim_shadowIndexub
# Declared: Line 561 (Source lines: 562-566)
# Address: 0x0da6a760 - 0x0da6a7a0 (Size: 64 bytes, Frame: 32)
.globl __glexpim_shadowIndexub
.ent __glexpim_shadowIndexub
__glexpim_shadowIndexub:
    # Line 562
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 564
    mtc1	$a0,$f0
    # Line 562
    lui	$v0,0x19
    addiu	$v0,$v0,-12024
    # Line 564
    cvt.s.w	$f0,$f0
    # Line 562
    # addu	gp,t9,v0
    # Line 565
    # lw $t9, -31328($gp) # &__glexpim_Indexub
    # Line 564
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 565
    bal __glexpim_Indexub
    # Line 564
    swc1	$f0,424($at)
    # Line 566
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexub

# Function: __glexpim_shadowIndexdv
# Declared: Line 568 (Source lines: 569-573)
# Address: 0x0da6a7a0 - 0x0da6a7e0 (Size: 64 bytes, Frame: 32)
.globl __glexpim_shadowIndexdv
.ent __glexpim_shadowIndexdv
__glexpim_shadowIndexdv:
    # Line 569
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-12088
    # Line 571
    ldc1	$f0,0($a0)
    # Line 569
    # addu	gp,t9,v0
    # Line 572
    # lw $t9, -31324($gp) # &__glexpim_Indexdv
    # Line 571
    cvt.s.d	$f0,$f0
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 572
    bal __glexpim_Indexdv
    # Line 571
    swc1	$f0,424($at)
    # Line 573
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexdv

# Function: __glexpim_shadowIndexfv
# Declared: Line 575 (Source lines: 576-580)
# Address: 0x0da6a7e0 - 0x0da6a81c (Size: 60 bytes, Frame: 32)
.globl __glexpim_shadowIndexfv
.ent __glexpim_shadowIndexfv
__glexpim_shadowIndexfv:
    # Line 578
    lw	$at,__glCurrentContext
    # Line 576
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-12152
    # addu	gp,t9,v0
    # Line 579
    # lw $t9, -31320($gp) # &__glexpim_Indexfv
    # Line 578
    lwc1	$f0,0($a0)
    sd	$ra,0($sp)
    # Line 579
    bal __glexpim_Indexfv
    # Line 578
    swc1	$f0,424($at)
    # Line 580
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexfv

# Function: __glexpim_shadowIndexiv
# Declared: Line 582 (Source lines: 583-587)
# Address: 0x0da6a81c - 0x0da6a860 (Size: 68 bytes, Frame: 32)
.globl __glexpim_shadowIndexiv
.ent __glexpim_shadowIndexiv
__glexpim_shadowIndexiv:
    # Line 585
    lw	$v1,0($a0)
    # Line 583
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 585
    mtc1	$v1,$f0
    # Line 583
    lui	$v0,0x19
    addiu	$v0,$v0,-12212
    # Line 585
    cvt.s.w	$f0,$f0
    # Line 583
    # addu	gp,t9,v0
    # Line 586
    # lw $t9, -31316($gp) # &__glexpim_Indexiv
    # Line 585
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 586
    bal __glexpim_Indexiv
    # Line 585
    swc1	$f0,424($at)
    # Line 587
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexiv

# Function: __glexpim_shadowIndexsv
# Declared: Line 589 (Source lines: 590-594)
# Address: 0x0da6a860 - 0x0da6a8a4 (Size: 68 bytes, Frame: 32)
.globl __glexpim_shadowIndexsv
.ent __glexpim_shadowIndexsv
__glexpim_shadowIndexsv:
    # Line 592
    lh	$v1,0($a0)
    # Line 590
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 592
    mtc1	$v1,$f0
    # Line 590
    lui	$v0,0x19
    addiu	$v0,$v0,-12280
    # Line 592
    cvt.s.w	$f0,$f0
    # Line 590
    # addu	gp,t9,v0
    # Line 593
    # lw $t9, -31312($gp) # &__glexpim_Indexsv
    # Line 592
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 593
    bal __glexpim_Indexsv
    # Line 592
    swc1	$f0,424($at)
    # Line 594
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexsv

# Function: __glexpim_shadowIndexubv
# Declared: Line 596 (Source lines: 597-601)
# Address: 0x0da6a8a4 - 0x0da6a8e8 (Size: 68 bytes, Frame: 32)
.globl __glexpim_shadowIndexubv
.ent __glexpim_shadowIndexubv
__glexpim_shadowIndexubv:
    # Line 599
    lbu	$v1,0($a0)
    # Line 597
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    # Line 599
    mtc1	$v1,$f0
    # Line 597
    lui	$v0,0x19
    addiu	$v0,$v0,-12348
    # Line 599
    cvt.s.w	$f0,$f0
    # Line 597
    # addu	gp,t9,v0
    # Line 600
    # lw $t9, -31308($gp) # &__glexpim_Indexubv
    # Line 599
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 600
    bal __glexpim_Indexubv
    # Line 599
    swc1	$f0,424($at)
    # Line 601
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_shadowIndexubv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

