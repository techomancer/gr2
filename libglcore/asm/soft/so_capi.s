# Source: ../soft/so_capi.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_capi.c
# Total Functions: 38

.text

# Function: __glim_Color3ub
# Declared: Line 21 (Source lines: 22-30)
# Address: 0x0da9e174 - 0x0da9e1e4 (Size: 112 bytes, Frame: 48)
.globl __glim_Color3ub
.ent __glim_Color3ub
__glim_Color3ub:
    # Line 22
    addiu	$sp,$sp,-48
    # Line 23
    lw	$at,__glCurrentContext
    sd	$ra,0($sp)
    # Line 25
    sll	$a3,$a0,0x2
    # Line 29
    move	$a0,$at
    # sd	gp,8(sp)
    # Line 27
    sll	$v0,$a2,0x2
    # Line 22
    lui	$a4,0x16
    addiu	$a4,$a4,-26892
    # Line 25
    addu	$a3,$a3,$at
    lwc1	$f3,3528($a3)
    # Line 22
    # addu	gp,t9,a4
    # Line 26
    sll	$v1,$a1,0x2
    # Line 25
    swc1	$f3,408($at)
    # Line 26
    addu	$v1,$v1,$at
    lwc1	$f2,3528($v1)
    # Line 29
    lw	$t9,12008($at)
    # Line 28
    lwc1	$f1,3284($at)
    # Line 26
    swc1	$f2,412($at)
    # Line 27
    addu	$v0,$v0,$at
    lwc1	$f0,3528($v0)
    # Line 28
    swc1	$f1,420($at)
    # Line 29
    jalr	$t9
    # Line 27
    swc1	$f0,416($at)
    # Line 30
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3ub

# Function: __glim_Color3ubv
# Declared: Line 55 (Source lines: 56-64)
# Address: 0x0da9e1e4 - 0x0da9e260 (Size: 124 bytes, Frame: 32)
.globl __glim_Color3ubv
.ent __glim_Color3ubv
__glim_Color3ubv:
    # Line 59
    lbu	$a2,0($a0)
    # Line 57
    lw	$at,__glCurrentContext
    # Line 59
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    lwc1	$f3,3528($a2)
    # Line 56
    addiu	$sp,$sp,-32
    # Line 59
    swc1	$f3,408($at)
    sd	$ra,0($sp)
    # Line 60
    lbu	$a1,1($a0)
    # sd	gp,8(sp)
    # Line 56
    lui	$v1,0x16
    # Line 60
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    lwc1	$f2,3528($a1)
    # Line 56
    addiu	$v1,$v1,-27004
    # addu	gp,t9,v1
    # Line 60
    swc1	$f2,412($at)
    # Line 63
    lw	$t9,12008($at)
    # Line 61
    lbu	$v0,2($a0)
    # Line 62
    lwc1	$f1,3284($at)
    # Line 63
    move	$a0,$at
    # Line 61
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$at
    lwc1	$f0,3528($v0)
    # Line 62
    swc1	$f1,420($at)
    # Line 63
    jalr	$t9
    # Line 61
    swc1	$f0,416($at)
    # Line 64
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3ubv

# Function: __glim_Color3b
# Declared: Line 94 (Source lines: 95-103)
# Address: 0x0da9e260 - 0x0da9e2ec (Size: 140 bytes, Frame: 48)
.globl __glim_Color3b
.ent __glim_Color3b
__glim_Color3b:
    # Line 95
    addiu	$sp,$sp,-48
    # Line 100
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    sd	$ra,0($sp)
    # Line 99
    sll	$a1,$a1,0x1
    # Line 100
    cvt.s.w	$f2,$f2
    # Line 99
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    # Line 96
    lw	$at,__glCurrentContext
    # Line 98
    sll	$v1,$a0,0x1
    # Line 99
    cvt.s.w	$f1,$f1
    # Line 98
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    lwc1	$f4,3292($at)
    # Line 102
    move	$a0,$at
    # Line 98
    cvt.s.w	$f0,$f0
    # Line 99
    mul.s	$f1,$f1,$f4
    # sd	gp,8(sp)
    # Line 95
    lui	$v0,0x16
    # Line 100
    mul.s	$f2,$f2,$f4
    # Line 95
    addiu	$v0,$v0,-27128
    # Line 101
    lwc1	$f3,3284($at)
    # Line 98
    mul.s	$f0,$f0,$f4
    # Line 95
    # addu	gp,t9,v0
    # Line 102
    lw	$t9,12008($at)
    # Line 101
    swc1	$f3,420($at)
    # Line 100
    swc1	$f2,416($at)
    # Line 99
    swc1	$f1,412($at)
    # Line 102
    jalr	$t9
    # Line 98
    swc1	$f0,408($at)
    # Line 103
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3b

# Function: __glim_Color3bv
# Declared: Line 105 (Source lines: 106-114)
# Address: 0x0da9e2ec - 0x0da9e38c (Size: 160 bytes, Frame: 32)
.globl __glim_Color3bv
.ent __glim_Color3bv
__glim_Color3bv:
    # Line 109
    lb	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 107
    lw	$at,__glCurrentContext
    # Line 109
    cvt.s.w	$f3,$f3
    lwc1	$f1,3292($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($at)
    # Line 110
    lb	$a1,1($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($at)
    # Line 111
    lb	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 106
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    lui	$v0,0x16
    addiu	$v0,$v0,-27268
    # Line 111
    mul.s	$f0,$f0,$f1
    # Line 106
    # addu	gp,t9,v0
    # Line 112
    lwc1	$f1,3284($at)
    # Line 113
    lw	$t9,12008($at)
    move	$a0,$at
    # Line 112
    swc1	$f1,420($at)
    # Line 113
    jalr	$t9
    # Line 111
    swc1	$f0,416($at)
    # Line 114
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3bv

# Function: __glim_Color3d
# Declared: Line 116 (Source lines: 117-125)
# Address: 0x0da9e38c - 0x0da9e3e0 (Size: 84 bytes, Frame: 48)
.globl __glim_Color3d
.ent __glim_Color3d
__glim_Color3d:
    # Line 121
    cvt.s.d	$f2,$f13
    # Line 122
    cvt.s.d	$f3,$f14
    # Line 117
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 118
    lw	$a0,__glCurrentContext
    # Line 120
    cvt.s.d	$f1,$f12
    # sd	gp,8(sp)
    # Line 122
    swc1	$f3,416($a0)
    # Line 121
    swc1	$f2,412($a0)
    # Line 117
    lui	$at,0x16
    addiu	$at,$at,-27428
    # addu	gp,t9,at
    # Line 124
    lw	$t9,12008($a0)
    # Line 123
    lwc1	$f0,3284($a0)
    # Line 120
    swc1	$f1,408($a0)
    # Line 124
    jalr	$t9
    # Line 123
    swc1	$f0,420($a0)
    # Line 125
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3d

# Function: __glim_Color3dv
# Declared: Line 127 (Source lines: 128-136)
# Address: 0x0da9e3e0 - 0x0da9e444 (Size: 100 bytes, Frame: 32)
.globl __glim_Color3dv
.ent __glim_Color3dv
__glim_Color3dv:
    # Line 131
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    # Line 129
    lw	$at,__glCurrentContext
    # Line 131
    swc1	$f2,408($at)
    # Line 132
    ldc1	$f1,8($a0)
    # Line 128
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 132
    cvt.s.d	$f1,$f1
    # sd	gp,8(sp)
    # Line 128
    lui	$v0,0x16
    addiu	$v0,$v0,-27512
    # Line 132
    swc1	$f1,412($at)
    # Line 128
    # addu	gp,t9,v0
    # Line 133
    ldc1	$f0,16($a0)
    # Line 135
    lw	$t9,12008($at)
    # Line 134
    lwc1	$f1,3284($at)
    # Line 133
    cvt.s.d	$f0,$f0
    # Line 135
    move	$a0,$at
    # Line 134
    swc1	$f1,420($at)
    # Line 135
    jalr	$t9
    # Line 133
    swc1	$f0,416($at)
    # Line 136
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3dv

# Function: __glim_Color3i
# Declared: Line 162 (Source lines: 163-171)
# Address: 0x0da9e444 - 0x0da9e4d8 (Size: 148 bytes, Frame: 48)
.globl __glim_Color3i
.ent __glim_Color3i
__glim_Color3i:
    # Line 167
    mtc1	$a1,$f1
    # Line 163
    addiu	$sp,$sp,-48
    # Line 167
    cvt.s.w	$f1,$f1
    # sd	gp,8(sp)
    # Line 168
    mtc1	$a2,$f2
    # Line 163
    lui	$v0,0x16
    addiu	$v0,$v0,-27612
    # Line 168
    cvt.s.w	$f2,$f2
    # Line 163
    # addu	gp,t9,v0
    # Line 166
    mtc1	$a0,$f0
    lwc1	$f3,_lit_40000000
    cvt.s.w	$f0,$f0
    # Line 168
    mul.s	$f2,$f2,$f3
    # Line 167
    mul.s	$f1,$f1,$f3
    # Line 166
    mul.s	$f0,$f0,$f3
    lwc1	$f3,_lit_3f800000
    # Line 164
    lw	$at,__glCurrentContext
    # Line 167
    add.s	$f1,$f1,$f3
    # Line 166
    lwc1	$f4,3308($at)
    # Line 168
    add.s	$f2,$f2,$f3
    # Line 167
    mul.s	$f1,$f1,$f4
    # Line 166
    add.s	$f0,$f0,$f3
    # Line 168
    mul.s	$f2,$f2,$f4
    sd	$ra,0($sp)
    # Line 169
    lwc1	$f3,3284($at)
    # Line 166
    mul.s	$f0,$f0,$f4
    # Line 170
    move	$a0,$at
    lw	$t9,12008($at)
    # Line 169
    swc1	$f3,420($at)
    # Line 168
    swc1	$f2,416($at)
    # Line 167
    swc1	$f1,412($at)
    # Line 170
    jalr	$t9
    # Line 166
    swc1	$f0,408($at)
    # Line 171
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3i

# Function: __glim_Color3iv
# Declared: Line 173 (Source lines: 174-182)
# Address: 0x0da9e4d8 - 0x0da9e580 (Size: 168 bytes, Frame: 32)
.globl __glim_Color3iv
.ent __glim_Color3iv
__glim_Color3iv:
    # Line 177
    lw	$a2,0($a0)
    # Line 174
    addiu	$sp,$sp,-32
    # Line 177
    mtc1	$a2,$f5
    # sd	gp,8(sp)
    # Line 174
    lui	$a1,0x16
    # Line 177
    cvt.s.w	$f5,$f5
    # Line 174
    addiu	$a1,$a1,-27760
    # addu	gp,t9,a1
    # Line 177
    lwc1	$f3,_lit_40000000
    mul.s	$f5,$f5,$f3
    lwc1	$f2,_lit_3f800000
    # Line 175
    lw	$at,__glCurrentContext
    # Line 177
    add.s	$f5,$f5,$f2
    lwc1	$f1,3308($at)
    mul.s	$f5,$f5,$f1
    swc1	$f5,408($at)
    # Line 178
    lw	$v1,4($a0)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,412($at)
    # Line 179
    lw	$v0,8($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    sd	$ra,0($sp)
    # Line 180
    lwc1	$f1,3284($at)
    # Line 181
    lw	$t9,12008($at)
    move	$a0,$at
    # Line 180
    swc1	$f1,420($at)
    # Line 181
    jalr	$t9
    # Line 179
    swc1	$f0,416($at)
    # Line 182
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3iv

# Function: __glim_Color3ui
# Declared: Line 184 (Source lines: 185-193)
# Address: 0x0da9e580 - 0x0da9e610 (Size: 144 bytes, Frame: 48)
.globl __glim_Color3ui
.ent __glim_Color3ui
__glim_Color3ui:
    # Line 190
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 189
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    # Line 185
    addiu	$sp,$sp,-48
    # Line 186
    lw	$at,__glCurrentContext
    # Line 189
    cvt.s.l	$f1,$f1
    # Line 188
    dsll32	$v1,$a0,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    sd	$ra,0($sp)
    lwc1	$f4,3308($at)
    cvt.s.l	$f0,$f0
    # Line 192
    move	$a0,$at
    # Line 189
    mul.s	$f1,$f1,$f4
    # sd	gp,8(sp)
    # Line 185
    lui	$v0,0x16
    # Line 190
    mul.s	$f2,$f2,$f4
    # Line 185
    addiu	$v0,$v0,-27928
    # Line 191
    lwc1	$f3,3284($at)
    # Line 188
    mul.s	$f0,$f0,$f4
    # Line 185
    # addu	gp,t9,v0
    # Line 192
    lw	$t9,12008($at)
    # Line 191
    swc1	$f3,420($at)
    # Line 190
    swc1	$f2,416($at)
    # Line 189
    swc1	$f1,412($at)
    # Line 192
    jalr	$t9
    # Line 188
    swc1	$f0,408($at)
    # Line 193
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3ui

# Function: __glim_Color3uiv
# Declared: Line 195 (Source lines: 196-204)
# Address: 0x0da9e610 - 0x0da9e6b4 (Size: 164 bytes, Frame: 32)
.globl __glim_Color3uiv
.ent __glim_Color3uiv
__glim_Color3uiv:
    # Line 199
    lw	$a2,0($a0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 197
    lw	$at,__glCurrentContext
    # Line 199
    lwc1	$f1,3308($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($at)
    # Line 200
    lw	$a1,4($a0)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($at)
    # Line 201
    lw	$v1,8($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 196
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    lui	$v0,0x16
    addiu	$v0,$v0,-28072
    # Line 201
    mul.s	$f0,$f0,$f1
    # Line 196
    # addu	gp,t9,v0
    # Line 202
    lwc1	$f1,3284($at)
    # Line 203
    lw	$t9,12008($at)
    move	$a0,$at
    # Line 202
    swc1	$f1,420($at)
    # Line 203
    jalr	$t9
    # Line 201
    swc1	$f0,416($at)
    # Line 204
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3uiv

# Function: __glim_Color3s
# Declared: Line 206 (Source lines: 207-215)
# Address: 0x0da9e6b4 - 0x0da9e740 (Size: 140 bytes, Frame: 48)
.globl __glim_Color3s
.ent __glim_Color3s
__glim_Color3s:
    # Line 207
    addiu	$sp,$sp,-48
    # Line 212
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    sd	$ra,0($sp)
    # Line 211
    sll	$a1,$a1,0x1
    # Line 212
    cvt.s.w	$f2,$f2
    # Line 211
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    # Line 208
    lw	$at,__glCurrentContext
    # Line 210
    sll	$v1,$a0,0x1
    # Line 211
    cvt.s.w	$f1,$f1
    # Line 210
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    lwc1	$f4,3300($at)
    # Line 214
    move	$a0,$at
    # Line 210
    cvt.s.w	$f0,$f0
    # Line 211
    mul.s	$f1,$f1,$f4
    # sd	gp,8(sp)
    # Line 207
    lui	$v0,0x16
    # Line 212
    mul.s	$f2,$f2,$f4
    # Line 207
    addiu	$v0,$v0,-28236
    # Line 213
    lwc1	$f3,3284($at)
    # Line 210
    mul.s	$f0,$f0,$f4
    # Line 207
    # addu	gp,t9,v0
    # Line 214
    lw	$t9,12008($at)
    # Line 213
    swc1	$f3,420($at)
    # Line 212
    swc1	$f2,416($at)
    # Line 211
    swc1	$f1,412($at)
    # Line 214
    jalr	$t9
    # Line 210
    swc1	$f0,408($at)
    # Line 215
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3s

# Function: __glim_Color3sv
# Declared: Line 217 (Source lines: 218-226)
# Address: 0x0da9e740 - 0x0da9e7e0 (Size: 160 bytes, Frame: 32)
.globl __glim_Color3sv
.ent __glim_Color3sv
__glim_Color3sv:
    # Line 221
    lh	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 219
    lw	$at,__glCurrentContext
    # Line 221
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($at)
    # Line 222
    lh	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($at)
    # Line 223
    lh	$v1,4($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 218
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    lui	$v0,0x16
    addiu	$v0,$v0,-28376
    # Line 223
    mul.s	$f0,$f0,$f1
    # Line 218
    # addu	gp,t9,v0
    # Line 224
    lwc1	$f1,3284($at)
    # Line 225
    lw	$t9,12008($at)
    move	$a0,$at
    # Line 224
    swc1	$f1,420($at)
    # Line 225
    jalr	$t9
    # Line 223
    swc1	$f0,416($at)
    # Line 226
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3sv

# Function: __glim_Color3us
# Declared: Line 228 (Source lines: 229-237)
# Address: 0x0da9e7e0 - 0x0da9e858 (Size: 120 bytes, Frame: 48)
.globl __glim_Color3us
.ent __glim_Color3us
__glim_Color3us:
    # Line 234
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 233
    mtc1	$a1,$f1
    # Line 229
    addiu	$sp,$sp,-48
    # Line 230
    lw	$at,__glCurrentContext
    # Line 233
    cvt.s.w	$f1,$f1
    sd	$ra,0($sp)
    # Line 232
    mtc1	$a0,$f0
    lwc1	$f4,3300($at)
    # Line 236
    move	$a0,$at
    # Line 232
    cvt.s.w	$f0,$f0
    # Line 233
    mul.s	$f1,$f1,$f4
    # sd	gp,8(sp)
    # Line 229
    lui	$v0,0x16
    # Line 234
    mul.s	$f2,$f2,$f4
    # Line 229
    addiu	$v0,$v0,-28536
    # Line 235
    lwc1	$f3,3284($at)
    # Line 232
    mul.s	$f0,$f0,$f4
    # Line 229
    # addu	gp,t9,v0
    # Line 236
    lw	$t9,12008($at)
    # Line 235
    swc1	$f3,420($at)
    # Line 234
    swc1	$f2,416($at)
    # Line 233
    swc1	$f1,412($at)
    # Line 236
    jalr	$t9
    # Line 232
    swc1	$f0,408($at)
    # Line 237
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color3us

# Function: __glim_Color3usv
# Declared: Line 239 (Source lines: 240-248)
# Address: 0x0da9e858 - 0x0da9e8e0 (Size: 136 bytes, Frame: 32)
.globl __glim_Color3usv
.ent __glim_Color3usv
__glim_Color3usv:
    # Line 243
    lhu	$a2,0($a0)
    mtc1	$a2,$f3
    # Line 241
    lw	$at,__glCurrentContext
    # Line 243
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,408($at)
    # Line 244
    lhu	$a1,2($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,412($at)
    # Line 245
    lhu	$v1,4($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 240
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    lui	$v0,0x16
    addiu	$v0,$v0,-28656
    # Line 245
    mul.s	$f0,$f0,$f1
    # Line 240
    # addu	gp,t9,v0
    # Line 246
    lwc1	$f1,3284($at)
    # Line 247
    lw	$t9,12008($at)
    move	$a0,$at
    # Line 246
    swc1	$f1,420($at)
    # Line 247
    jalr	$t9
    # Line 245
    swc1	$f0,416($at)
    # Line 248
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color3usv

# Function: __glim_Color4ub
# Declared: Line 252 (Source lines: 253-261)
# Address: 0x0da9e8e0 - 0x0da9e958 (Size: 120 bytes, Frame: 48)
.globl __glim_Color4ub
.ent __glim_Color4ub
__glim_Color4ub:
    # Line 253
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # sd	gp,8(sp)
    # Line 254
    lw	$at,__glCurrentContext
    # Line 259
    sll	$v0,$a3,0x2
    # Line 256
    sll	$a5,$a0,0x2
    addu	$a5,$a5,$at
    lwc1	$f3,3528($a5)
    # Line 253
    lui	$a4,0x16
    # Line 257
    sll	$a1,$a1,0x2
    # Line 256
    swc1	$f3,408($at)
    # Line 257
    addu	$a1,$a1,$at
    lwc1	$f2,3528($a1)
    # Line 253
    addiu	$a0,$a4,-28792
    # Line 258
    sll	$v1,$a2,0x2
    # Line 257
    swc1	$f2,412($at)
    # Line 258
    addu	$v1,$v1,$at
    lwc1	$f1,3528($v1)
    # Line 253
    # addu	gp,t9,a0
    # Line 260
    lw	$t9,12008($at)
    # Line 258
    swc1	$f1,416($at)
    # Line 259
    addu	$v0,$v0,$at
    lwc1	$f0,3528($v0)
    # Line 260
    move	$a0,$at
    jalr	$t9
    # Line 259
    swc1	$f0,420($at)
    # Line 261
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4ub

# Function: __glim_Color4ubv
# Declared: Line 263 (Source lines: 264-272)
# Address: 0x0da9e958 - 0x0da9e9e0 (Size: 136 bytes, Frame: 32)
.globl __glim_Color4ubv
.ent __glim_Color4ubv
__glim_Color4ubv:
    # Line 267
    lbu	$a3,0($a0)
    # Line 265
    lw	$at,__glCurrentContext
    # Line 267
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    lwc1	$f3,3528($a3)
    swc1	$f3,408($at)
    # Line 268
    lbu	$a2,1($a0)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    lwc1	$f2,3528($a2)
    swc1	$f2,412($at)
    # Line 269
    lbu	$a1,2($a0)
    # Line 264
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 269
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    lwc1	$f1,3528($a1)
    # sd	gp,8(sp)
    # Line 264
    lui	$v1,0x16
    # Line 269
    swc1	$f1,416($at)
    # Line 264
    addiu	$v1,$v1,-28912
    # Line 270
    lbu	$v0,3($a0)
    # Line 264
    # addu	gp,t9,v1
    # Line 271
    lw	$t9,12008($at)
    # Line 270
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$at
    lwc1	$f0,3528($v0)
    # Line 271
    move	$a0,$at
    jalr	$t9
    # Line 270
    swc1	$f0,420($at)
    # Line 272
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4ubv

# Function: __glim_Color4b
# Declared: Line 274 (Source lines: 275-283)
# Address: 0x0da9e9e0 - 0x0da9ea7c (Size: 156 bytes, Frame: 48)
.globl __glim_Color4b
.ent __glim_Color4b
__glim_Color4b:
    # Line 279
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    # Line 276
    lw	$at,__glCurrentContext
    # Line 279
    cvt.s.w	$f1,$f1
    # Line 278
    lwc1	$f4,3292($at)
    # Line 279
    mul.s	$f1,$f1,$f4
    # Line 280
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 281
    sll	$a3,$a3,0x1
    # Line 280
    cvt.s.w	$f2,$f2
    # Line 281
    addiu	$a3,$a3,1
    mtc1	$a3,$f3
    # Line 278
    sll	$v1,$a0,0x1
    # Line 281
    cvt.s.w	$f3,$f3
    # Line 278
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 275
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 278
    cvt.s.w	$f0,$f0
    # Line 281
    mul.s	$f3,$f3,$f4
    # Line 282
    move	$a0,$at
    # sd	gp,8(sp)
    # Line 280
    mul.s	$f2,$f2,$f4
    # Line 275
    lui	$v0,0x16
    addiu	$v0,$v0,-29048
    # Line 278
    mul.s	$f0,$f0,$f4
    # Line 275
    # addu	gp,t9,v0
    # Line 282
    lw	$t9,12008($at)
    # Line 281
    swc1	$f3,420($at)
    # Line 280
    swc1	$f2,416($at)
    # Line 279
    swc1	$f1,412($at)
    # Line 282
    jalr	$t9
    # Line 278
    swc1	$f0,408($at)
    # Line 283
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4b

# Function: __glim_Color4bv
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0da9ea7c - 0x0da9eb34 (Size: 184 bytes, Frame: 32)
.globl __glim_Color4bv
.ent __glim_Color4bv
__glim_Color4bv:
    # Line 289
    lb	$a3,0($a0)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    # Line 287
    lw	$at,__glCurrentContext
    # Line 289
    cvt.s.w	$f4,$f4
    lwc1	$f1,3292($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($at)
    # Line 290
    lb	$a2,1($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($at)
    # Line 291
    lb	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($at)
    # Line 292
    lb	$v1,3($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 286
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x16
    # Line 292
    mul.s	$f0,$f0,$f1
    # Line 286
    addiu	$v0,$v0,-29204
    # addu	gp,t9,v0
    # Line 293
    lw	$t9,12008($at)
    sd	$ra,0($sp)
    move	$a0,$at
    jalr	$t9
    # Line 292
    swc1	$f0,420($at)
    # Line 294
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4bv

# Function: __glim_Color4d
# Declared: Line 296 (Source lines: 297-305)
# Address: 0x0da9eb34 - 0x0da9eb88 (Size: 84 bytes, Frame: 48)
.globl __glim_Color4d
.ent __glim_Color4d
__glim_Color4d:
    # Line 300
    cvt.s.d	$f0,$f12
    # Line 301
    cvt.s.d	$f1,$f13
    # Line 303
    cvt.s.d	$f3,$f15
    # Line 297
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 298
    lw	$a0,__glCurrentContext
    # Line 302
    cvt.s.d	$f2,$f14
    # sd	gp,8(sp)
    # Line 303
    swc1	$f3,420($a0)
    # Line 297
    lui	$at,0x16
    addiu	$at,$at,-29388
    # addu	gp,t9,at
    # Line 304
    lw	$t9,12008($a0)
    # Line 302
    swc1	$f2,416($a0)
    # Line 301
    swc1	$f1,412($a0)
    # Line 304
    jalr	$t9
    # Line 300
    swc1	$f0,408($a0)
    # Line 305
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4d

# Function: __glim_Color4dv
# Declared: Line 307 (Source lines: 308-316)
# Address: 0x0da9eb88 - 0x0da9ebf0 (Size: 104 bytes, Frame: 32)
.globl __glim_Color4dv
.ent __glim_Color4dv
__glim_Color4dv:
    # Line 311
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    # Line 309
    lw	$at,__glCurrentContext
    # Line 311
    swc1	$f3,408($at)
    # Line 312
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,412($at)
    # Line 313
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    # Line 308
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x16
    # Line 313
    swc1	$f1,416($at)
    # Line 308
    addiu	$v0,$v0,-29472
    # Line 314
    ldc1	$f0,24($a0)
    # Line 308
    # addu	gp,t9,v0
    # Line 315
    lw	$t9,12008($at)
    # Line 314
    cvt.s.d	$f0,$f0
    sd	$ra,0($sp)
    # Line 315
    move	$a0,$at
    jalr	$t9
    # Line 314
    swc1	$f0,420($at)
    # Line 316
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4dv

# Function: __glim_Color4i
# Declared: Line 342 (Source lines: 343-351)
# Address: 0x0da9ebf0 - 0x0da9eca0 (Size: 176 bytes, Frame: 48)
.globl __glim_Color4i
.ent __glim_Color4i
__glim_Color4i:
    # Line 343
    addiu	$sp,$sp,-48
    # Line 349
    mtc1	$a3,$f3
    # sd	gp,8(sp)
    # Line 343
    lui	$v0,0x16
    # Line 349
    cvt.s.w	$f3,$f3
    # Line 343
    addiu	$v0,$v0,-29576
    # addu	gp,t9,v0
    # Line 346
    lwc1	$f4,_lit_40000000
    # Line 349
    mul.s	$f3,$f3,$f4
    # Line 348
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 347
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 346
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 347
    mul.s	$f1,$f1,$f4
    # Line 348
    mul.s	$f2,$f2,$f4
    # Line 344
    lw	$at,__glCurrentContext
    # Line 346
    lwc1	$f5,_lit_3f800000
    mul.s	$f0,$f0,$f4
    # Line 347
    add.s	$f1,$f1,$f5
    # Line 346
    lwc1	$f4,3308($at)
    # Line 349
    add.s	$f3,$f3,$f5
    # Line 347
    mul.s	$f1,$f1,$f4
    # Line 348
    add.s	$f2,$f2,$f5
    # Line 349
    mul.s	$f3,$f3,$f4
    # Line 346
    add.s	$f0,$f0,$f5
    # Line 348
    mul.s	$f2,$f2,$f4
    sd	$ra,0($sp)
    # Line 346
    mul.s	$f0,$f0,$f4
    # Line 350
    move	$a0,$at
    lw	$t9,12008($at)
    # Line 349
    swc1	$f3,420($at)
    # Line 348
    swc1	$f2,416($at)
    # Line 347
    swc1	$f1,412($at)
    # Line 350
    jalr	$t9
    # Line 346
    swc1	$f0,408($at)
    # Line 351
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4i

# Function: __glim_Color4iv
# Declared: Line 353 (Source lines: 354-362)
# Address: 0x0da9eca0 - 0x0da9ed60 (Size: 192 bytes, Frame: 32)
.globl __glim_Color4iv
.ent __glim_Color4iv
__glim_Color4iv:
    # Line 357
    lw	$a3,0($a0)
    # Line 354
    addiu	$sp,$sp,-32
    # Line 357
    mtc1	$a3,$f6
    # sd	gp,8(sp)
    # Line 354
    lui	$a2,0x16
    # Line 357
    cvt.s.w	$f6,$f6
    # Line 354
    addiu	$a2,$a2,-29752
    # addu	gp,t9,a2
    # Line 357
    lwc1	$f3,_lit_40000000
    mul.s	$f6,$f6,$f3
    lwc1	$f2,_lit_3f800000
    # Line 355
    lw	$at,__glCurrentContext
    # Line 357
    add.s	$f6,$f6,$f2
    lwc1	$f1,3308($at)
    mul.s	$f6,$f6,$f1
    swc1	$f6,408($at)
    # Line 358
    lw	$a1,4($a0)
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    mul.s	$f5,$f5,$f3
    add.s	$f5,$f5,$f2
    mul.s	$f5,$f5,$f1
    swc1	$f5,412($at)
    # Line 359
    lw	$v1,8($a0)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,416($at)
    # Line 360
    lw	$v0,12($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 361
    lw	$t9,12008($at)
    sd	$ra,0($sp)
    move	$a0,$at
    jalr	$t9
    # Line 360
    swc1	$f0,420($at)
    # Line 362
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4iv

# Function: __glim_Color4ui
# Declared: Line 364 (Source lines: 365-373)
# Address: 0x0da9ed60 - 0x0da9ee08 (Size: 168 bytes, Frame: 48)
.globl __glim_Color4ui
.ent __glim_Color4ui
__glim_Color4ui:
    # Line 369
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 366
    lw	$at,__glCurrentContext
    # Line 368
    lwc1	$f4,3308($at)
    # Line 369
    mul.s	$f1,$f1,$f4
    # Line 370
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 371
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 368
    dsll32	$v1,$a0,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    # Line 365
    addiu	$sp,$sp,-48
    # Line 368
    cvt.s.l	$f0,$f0
    sd	$ra,0($sp)
    # Line 371
    mul.s	$f3,$f3,$f4
    # Line 372
    move	$a0,$at
    # sd	gp,8(sp)
    # Line 370
    mul.s	$f2,$f2,$f4
    # Line 365
    lui	$v0,0x16
    addiu	$v0,$v0,-29944
    # Line 368
    mul.s	$f0,$f0,$f4
    # Line 365
    # addu	gp,t9,v0
    # Line 372
    lw	$t9,12008($at)
    # Line 371
    swc1	$f3,420($at)
    # Line 370
    swc1	$f2,416($at)
    # Line 369
    swc1	$f1,412($at)
    # Line 372
    jalr	$t9
    # Line 368
    swc1	$f0,408($at)
    # Line 373
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4ui

# Function: __glim_Color4uiv
# Declared: Line 375 (Source lines: 376-384)
# Address: 0x0da9ee08 - 0x0da9eec4 (Size: 188 bytes, Frame: 32)
.globl __glim_Color4uiv
.ent __glim_Color4uiv
__glim_Color4uiv:
    # Line 379
    lw	$a3,0($a0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 377
    lw	$at,__glCurrentContext
    # Line 379
    lwc1	$f1,3308($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($at)
    # Line 380
    lw	$a2,4($a0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($at)
    # Line 381
    lw	$a1,8($a0)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($at)
    # Line 382
    lw	$v1,12($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 376
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x16
    # Line 382
    mul.s	$f0,$f0,$f1
    # Line 376
    addiu	$v0,$v0,-30112
    # addu	gp,t9,v0
    # Line 383
    lw	$t9,12008($at)
    sd	$ra,0($sp)
    move	$a0,$at
    jalr	$t9
    # Line 382
    swc1	$f0,420($at)
    # Line 384
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4uiv

# Function: __glim_Color4s
# Declared: Line 386 (Source lines: 387-395)
# Address: 0x0da9eec4 - 0x0da9ef60 (Size: 156 bytes, Frame: 48)
.globl __glim_Color4s
.ent __glim_Color4s
__glim_Color4s:
    # Line 391
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    # Line 388
    lw	$at,__glCurrentContext
    # Line 391
    cvt.s.w	$f1,$f1
    # Line 390
    lwc1	$f4,3300($at)
    # Line 391
    mul.s	$f1,$f1,$f4
    # Line 392
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 393
    sll	$a3,$a3,0x1
    # Line 392
    cvt.s.w	$f2,$f2
    # Line 393
    addiu	$a3,$a3,1
    mtc1	$a3,$f3
    # Line 390
    sll	$v1,$a0,0x1
    # Line 393
    cvt.s.w	$f3,$f3
    # Line 390
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 387
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 390
    cvt.s.w	$f0,$f0
    # Line 393
    mul.s	$f3,$f3,$f4
    # Line 394
    move	$a0,$at
    # sd	gp,8(sp)
    # Line 392
    mul.s	$f2,$f2,$f4
    # Line 387
    lui	$v0,0x16
    addiu	$v0,$v0,-30300
    # Line 390
    mul.s	$f0,$f0,$f4
    # Line 387
    # addu	gp,t9,v0
    # Line 394
    lw	$t9,12008($at)
    # Line 393
    swc1	$f3,420($at)
    # Line 392
    swc1	$f2,416($at)
    # Line 391
    swc1	$f1,412($at)
    # Line 394
    jalr	$t9
    # Line 390
    swc1	$f0,408($at)
    # Line 395
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4s

# Function: __glim_Color4sv
# Declared: Line 397 (Source lines: 398-406)
# Address: 0x0da9ef60 - 0x0da9f018 (Size: 184 bytes, Frame: 32)
.globl __glim_Color4sv
.ent __glim_Color4sv
__glim_Color4sv:
    # Line 401
    lh	$a3,0($a0)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    # Line 399
    lw	$at,__glCurrentContext
    # Line 401
    cvt.s.w	$f4,$f4
    lwc1	$f1,3300($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($at)
    # Line 402
    lh	$a2,2($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($at)
    # Line 403
    lh	$a1,4($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($at)
    # Line 404
    lh	$v1,6($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 398
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x16
    # Line 404
    mul.s	$f0,$f0,$f1
    # Line 398
    addiu	$v0,$v0,-30456
    # addu	gp,t9,v0
    # Line 405
    lw	$t9,12008($at)
    sd	$ra,0($sp)
    move	$a0,$at
    jalr	$t9
    # Line 404
    swc1	$f0,420($at)
    # Line 406
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4sv

# Function: __glim_Color4us
# Declared: Line 408 (Source lines: 409-417)
# Address: 0x0da9f018 - 0x0da9f09c (Size: 132 bytes, Frame: 48)
.globl __glim_Color4us
.ent __glim_Color4us
__glim_Color4us:
    # Line 413
    mtc1	$a1,$f1
    # Line 410
    lw	$at,__glCurrentContext
    # Line 413
    cvt.s.w	$f1,$f1
    # Line 412
    lwc1	$f4,3300($at)
    # Line 413
    mul.s	$f1,$f1,$f4
    # Line 414
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 415
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 412
    mtc1	$a0,$f0
    # Line 409
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 412
    cvt.s.w	$f0,$f0
    # Line 415
    mul.s	$f3,$f3,$f4
    # Line 416
    move	$a0,$at
    # sd	gp,8(sp)
    # Line 414
    mul.s	$f2,$f2,$f4
    # Line 409
    lui	$v0,0x16
    addiu	$v0,$v0,-30640
    # Line 412
    mul.s	$f0,$f0,$f4
    # Line 409
    # addu	gp,t9,v0
    # Line 416
    lw	$t9,12008($at)
    # Line 415
    swc1	$f3,420($at)
    # Line 414
    swc1	$f2,416($at)
    # Line 413
    swc1	$f1,412($at)
    # Line 416
    jalr	$t9
    # Line 412
    swc1	$f0,408($at)
    # Line 417
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Color4us

# Function: __glim_Color4usv
# Declared: Line 419 (Source lines: 420-428)
# Address: 0x0da9f09c - 0x0da9f134 (Size: 152 bytes, Frame: 32)
.globl __glim_Color4usv
.ent __glim_Color4usv
__glim_Color4usv:
    # Line 423
    lhu	$a3,0($a0)
    mtc1	$a3,$f4
    # Line 421
    lw	$at,__glCurrentContext
    # Line 423
    cvt.s.w	$f4,$f4
    lwc1	$f1,3300($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,408($at)
    # Line 424
    lhu	$a2,2($a0)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,412($at)
    # Line 425
    lhu	$a1,4($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,416($at)
    # Line 426
    lhu	$v1,6($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 420
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0x16
    # Line 426
    mul.s	$f0,$f0,$f1
    # Line 420
    addiu	$v0,$v0,-30772
    # addu	gp,t9,v0
    # Line 427
    lw	$t9,12008($at)
    sd	$ra,0($sp)
    move	$a0,$at
    jalr	$t9
    # Line 426
    swc1	$f0,420($at)
    # Line 428
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Color4usv

# Function: __glim_Indexd
# Declared: Line 432 (Source lines: 435-436)
# Address: 0x0da9f134 - 0x0da9f144 (Size: 16 bytes, Frame: 0)
.globl __glim_Indexd
.ent __glim_Indexd
__glim_Indexd:
    # Line 435
    cvt.s.d	$f0,$f12
    lw	$at,__glCurrentContext
    # Line 436
    jr	$ra
    # Line 435
    swc1	$f0,424($at)
.end __glim_Indexd

# Function: __glim_Indexf
# Declared: Line 438 (Source lines: 441-442)
# Address: 0x0da9f144 - 0x0da9f150 (Size: 12 bytes, Frame: 0)
.globl __glim_Indexf
.ent __glim_Indexf
__glim_Indexf:
    # Line 441
    lw	$at,__glCurrentContext
    # Line 442
    jr	$ra
    # Line 441
    swc1	$f12,424($at)
.end __glim_Indexf

# Function: __glim_Indexi
# Declared: Line 444 (Source lines: 447-448)
# Address: 0x0da9f150 - 0x0da9f168 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexi
.ent __glim_Indexi
__glim_Indexi:
    # Line 447
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 448
    jr	$ra
    # Line 447
    swc1	$f0,424($at)
.end __glim_Indexi

# Function: __glim_Indexs
# Declared: Line 450 (Source lines: 453-454)
# Address: 0x0da9f168 - 0x0da9f180 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexs
.ent __glim_Indexs
__glim_Indexs:
    # Line 453
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 454
    jr	$ra
    # Line 453
    swc1	$f0,424($at)
.end __glim_Indexs

# Function: __glim_Indexdv
# Declared: Line 456 (Source lines: 459-460)
# Address: 0x0da9f180 - 0x0da9f194 (Size: 20 bytes, Frame: 0)
.globl __glim_Indexdv
.ent __glim_Indexdv
__glim_Indexdv:
    # Line 459
    ldc1	$f0,0($a0)
    cvt.s.d	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 460
    jr	$ra
    # Line 459
    swc1	$f0,424($at)
.end __glim_Indexdv

# Function: __glim_Indexfv
# Declared: Line 462 (Source lines: 465-466)
# Address: 0x0da9f194 - 0x0da9f1a4 (Size: 16 bytes, Frame: 0)
.globl __glim_Indexfv
.ent __glim_Indexfv
__glim_Indexfv:
    # Line 465
    lw	$at,__glCurrentContext
    lwc1	$f0,0($a0)
    # Line 466
    jr	$ra
    # Line 465
    swc1	$f0,424($at)
.end __glim_Indexfv

# Function: __glim_Indexiv
# Declared: Line 468 (Source lines: 471-472)
# Address: 0x0da9f1a4 - 0x0da9f1c0 (Size: 28 bytes, Frame: 0)
.globl __glim_Indexiv
.ent __glim_Indexiv
__glim_Indexiv:
    # Line 471
    lw	$v0,0($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 472
    jr	$ra
    # Line 471
    swc1	$f0,424($at)
.end __glim_Indexiv

# Function: __glim_Indexsv
# Declared: Line 474 (Source lines: 477-478)
# Address: 0x0da9f1c0 - 0x0da9f1dc (Size: 28 bytes, Frame: 0)
.globl __glim_Indexsv
.ent __glim_Indexsv
__glim_Indexsv:
    # Line 477
    lh	$v0,0($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 478
    jr	$ra
    # Line 477
    swc1	$f0,424($at)
.end __glim_Indexsv

# Function: __glim_Indexub
# Declared: Line 480 (Source lines: 483-484)
# Address: 0x0da9f1dc - 0x0da9f1f4 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexub
.ent __glim_Indexub
__glim_Indexub:
    # Line 483
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 484
    jr	$ra
    # Line 483
    swc1	$f0,424($at)
.end __glim_Indexub

# Function: __glim_Indexubv
# Declared: Line 486 (Source lines: 489-490)
# Address: 0x0da9f1f4 - 0x0da9f210 (Size: 28 bytes, Frame: 0)
.globl __glim_Indexubv
.ent __glim_Indexubv
__glim_Indexubv:
    # Line 489
    lbu	$v0,0($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$at,__glCurrentContext
    # Line 490
    jr	$ra
    # Line 489
    swc1	$f0,424($at)
.end __glim_Indexubv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

