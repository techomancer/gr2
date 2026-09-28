# Source: ../soft/so_lighting.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_lighting.c
# Total Functions: 31

.text

# Function: __glScaleColorf
# Declared: Line 30 (Source lines: 32-36)
# Address: 0x0dab7dac - 0x0dab7df0 (Size: 68 bytes, Frame: 0)
.globl __glScaleColorf
.ent __glScaleColorf
__glScaleColorf:
    # Line 32
    lwc1	$f2,30756($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 33
    lwc1	$f0,30760($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 34
    lwc1	$f3,30764($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 35
    lwc1	$f1,30796($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 36
    jr	$ra
    # Line 35
    swc1	$f0,12($a1)
.end __glScaleColorf

# Function: __glClampAndScaleColorf
# Declared: Line 41 (Source lines: 42-60)
# Address: 0x0dab7df0 - 0x0dab7ef8 (Size: 264 bytes, Frame: 0)
.globl __glClampAndScaleColorf
.ent __glClampAndScaleColorf
__glClampAndScaleColorf:
    # Line 45
    lwc1	$f0,30756($a0)
    lwc1	$f5,0($a2)
    mul.s	$f5,$f5,$f0
    # Line 42
    lui	$v0,0x14
    addiu	$v0,$v0,-1416
    # addu	at,t9,v0
    # Line 45
    mtc1	$zero,$f4
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0dab7e24
    swc1	$f5,0($a1)
    # Line 46
    mov.s	$f5,$f4
    swc1	$f4,0($a1)
.L0dab7e24:
    lwc1	$f6,30756($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0dab7e40
    # Line 49
    lwc1	$f0,30760($a0)
    # Line 47
    swc1	$f6,0($a1)
    # Line 49
    lwc1	$f0,30760($a0)
.L0dab7e40:
    lwc1	$f5,4($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0dab7e60
    swc1	$f5,4($a1)
    # Line 50
    mov.s	$f5,$f4
    swc1	$f4,4($a1)
.L0dab7e60:
    lwc1	$f6,30760($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0dab7e7c
    # Line 53
    lwc1	$f0,30764($a0)
    # Line 51
    swc1	$f6,4($a1)
    # Line 53
    lwc1	$f0,30764($a0)
.L0dab7e7c:
    lwc1	$f5,8($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0dab7e9c
    swc1	$f5,8($a1)
    # Line 54
    mov.s	$f5,$f4
    swc1	$f4,8($a1)
.L0dab7e9c:
    lwc1	$f6,30764($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0dab7eb8
    # Line 57
    lwc1	$f0,30796($a0)
    # Line 55
    swc1	$f6,8($a1)
    # Line 57
    lwc1	$f0,30796($a0)
.L0dab7eb8:
    lwc1	$f5,12($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0dab7ed8
    swc1	$f5,12($a1)
    # Line 58
    mov.s	$f5,$f4
    swc1	$f4,12($a1)
.L0dab7ed8:
    lwc1	$f4,30796($a0)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0dab7ef0
    nop
    # Line 59
    swc1	$f4,12($a1)
.L0dab7ef0:
    # Line 60
    jr	$ra
    nop
.end __glClampAndScaleColorf

# Function: __glClampColorf
# Declared: Line 65 (Source lines: 66-91)
# Address: 0x0dab7ef8 - 0x0dab7fc8 (Size: 208 bytes, Frame: 0)
.globl __glClampColorf
.ent __glClampColorf
__glClampColorf:
    # Line 71
    lwc1	$f9,0($a2)
    # Line 66
    lui	$v0,0x14
    addiu	$v0,$v0,-1680
    # addu	at,t9,v0
    # Line 74
    mtc1	$zero,$f5
    lwc1	$f6,12($a2)
    c.lt.s	$f9,$f5
    # Line 73
    lwc1	$f8,8($a2)
    # Line 72
    lwc1	$f7,4($a2)
    # Line 74
    bc1f	.L0dab7f2c
    # Line 68
    lwc1	$f4,3284($a0)
    # Line 76
    b	.L0dab7f40
    swc1	$f5,0($a1)
.L0dab7f2c:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0dab7f40
    # Line 78
    swc1	$f9,0($a1)
    # Line 77
    swc1	$f4,0($a1)
.L0dab7f40:
    # Line 78
    c.lt.s	$f7,$f5
    nop
    bc1fl	.L0dab7f58
    # Line 80
    c.lt.s	$f4,$f7
    b	.L0dab7f68
    swc1	$f5,4($a1)
.L0dab7f58:
    nop
    bc1fl	.L0dab7f68
    # Line 82
    swc1	$f7,4($a1)
    # Line 81
    swc1	$f4,4($a1)
.L0dab7f68:
    # Line 82
    c.lt.s	$f8,$f5
    nop
    bc1fl	.L0dab7f80
    # Line 84
    c.lt.s	$f4,$f8
    b	.L0dab7f90
    swc1	$f5,8($a1)
.L0dab7f80:
    nop
    bc1fl	.L0dab7f90
    # Line 86
    swc1	$f8,8($a1)
    # Line 85
    swc1	$f4,8($a1)
.L0dab7f90:
    # Line 86
    c.lt.s	$f6,$f5
    nop
    bc1t	.L0dab7fc0
    nop
    # Line 88
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0dab7fb8
    # Line 90
    swc1	$f6,12($a1)
    # Line 91
    jr	$ra
    # Line 89
    swc1	$f4,12($a1)
.L0dab7fb8:
    # Line 91
    jr	$ra
    nop
.L0dab7fc0:
    jr	$ra
    # Line 88
    swc1	$f5,12($a1)
.end __glClampColorf

# Function: __glScaleColori
# Declared: Line 97 (Source lines: 98-103)
# Address: 0x0dab7fc8 - 0x0dab808c (Size: 196 bytes, Frame: 0)
.globl __glScaleColori
.ent __glScaleColori
__glScaleColori:
    # Line 99
    lw	$v0,0($a2)
    mtc1	$v0,$f2
    # Line 98
    lui	$a4,0x14
    # Line 99
    cvt.s.w	$f2,$f2
    # Line 98
    addiu	$a4,$a4,-1888
    # addu	at,t9,a4
    # Line 99
    lwc1	$f4,_lit_40000000
    mul.s	$f2,$f2,$f4
    lwc1	$f3,_lit_3f800000
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30756($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a1)
    # Line 100
    lw	$a3,4($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30760($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 101
    lw	$v1,8($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30764($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    # Line 102
    lw	$v0,12($a2)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30796($a0)
    mul.s	$f0,$f0,$f1
    # Line 103
    jr	$ra
    # Line 102
    swc1	$f0,12($a1)
.end __glScaleColori

# Function: __glClampAndScaleColori
# Declared: Line 108 (Source lines: 109-127)
# Address: 0x0dab808c - 0x0dab8208 (Size: 380 bytes, Frame: 0)
.globl __glClampAndScaleColori
.ent __glClampAndScaleColori
__glClampAndScaleColori:
    # Line 112
    lw	$v1,0($a2)
    mtc1	$v1,$f1
    # Line 109
    lui	$v0,0x14
    # Line 112
    cvt.s.w	$f1,$f1
    # Line 109
    addiu	$v0,$v0,-2084
    # addu	at,t9,v0
    # Line 112
    lwc1	$f5,_lit_40000000
    mul.s	$f1,$f1,$f5
    lwc1	$f6,_lit_3f800000
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30756($a0)
    mul.s	$f7,$f7,$f0
    mtc1	$zero,$f4
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0dab80e0
    swc1	$f7,0($a1)
    # Line 113
    mov.s	$f7,$f4
    swc1	$f4,0($a1)
.L0dab80e0:
    lwc1	$f8,30756($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0dab80fc
    # Line 116
    lw	$a3,4($a2)
    # Line 114
    swc1	$f8,0($a1)
    # Line 116
    lw	$a3,4($a2)
.L0dab80fc:
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30760($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0dab8138
    swc1	$f7,4($a1)
    # Line 117
    mov.s	$f7,$f4
    swc1	$f4,4($a1)
.L0dab8138:
    lwc1	$f8,30760($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0dab8154
    # Line 120
    lw	$a4,8($a2)
    # Line 118
    swc1	$f8,4($a1)
    # Line 120
    lw	$a4,8($a2)
.L0dab8154:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30764($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0dab8190
    swc1	$f7,8($a1)
    # Line 121
    mov.s	$f7,$f4
    swc1	$f4,8($a1)
.L0dab8190:
    lwc1	$f8,30764($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0dab81ac
    # Line 124
    lw	$v0,12($a2)
    # Line 122
    swc1	$f8,8($a1)
    # Line 124
    lw	$v0,12($a2)
.L0dab81ac:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30796($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0dab81e8
    swc1	$f7,12($a1)
    # Line 125
    mov.s	$f7,$f4
    swc1	$f4,12($a1)
.L0dab81e8:
    lwc1	$f4,30796($a0)
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0dab8200
    nop
    # Line 126
    swc1	$f4,12($a1)
.L0dab8200:
    # Line 127
    jr	$ra
    nop
.end __glClampAndScaleColori

# Function: __glClampColori
# Declared: Line 132 (Source lines: 133-158)
# Address: 0x0dab8208 - 0x0dab833c (Size: 308 bytes, Frame: 0)
.globl __glClampColori
.ent __glClampColori
__glClampColori:
    # Line 141
    lw	$v0,12($a2)
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 133
    lui	$a4,0x14
    addiu	$a4,$a4,-2464
    # addu	at,t9,a4
    # Line 138
    lwc1	$f0,_lit_40000000
    # Line 141
    mul.s	$f6,$f6,$f0
    # Line 140
    lw	$a3,8($a2)
    mtc1	$a3,$f8
    # Line 138
    lw	$v1,0($a2)
    # Line 140
    cvt.s.w	$f8,$f8
    # Line 138
    mtc1	$v1,$f9
    # Line 139
    lw	$v0,4($a2)
    # Line 138
    cvt.s.w	$f9,$f9
    # Line 139
    mtc1	$v0,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 138
    mul.s	$f9,$f9,$f0
    # Line 140
    mul.s	$f8,$f8,$f0
    # Line 138
    lwc1	$f1,_lit_3f800000
    # Line 139
    mul.s	$f7,$f7,$f0
    # Line 138
    add.s	$f9,$f9,$f1
    lwc1	$f0,3308($a0)
    # Line 140
    add.s	$f8,$f8,$f1
    # Line 138
    mul.s	$f9,$f9,$f0
    # Line 141
    add.s	$f6,$f6,$f1
    mtc1	$zero,$f5
    # Line 139
    add.s	$f7,$f7,$f1
    # Line 141
    mul.s	$f6,$f6,$f0
    c.lt.s	$f9,$f5
    # Line 140
    mul.s	$f8,$f8,$f0
    # Line 135
    lwc1	$f4,3284($a0)
    # Line 141
    bc1f	.L0dab82a0
    # Line 139
    mul.s	$f7,$f7,$f0
    # Line 143
    b	.L0dab82b4
    swc1	$f5,0($a1)
.L0dab82a0:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0dab82b4
    # Line 145
    swc1	$f9,0($a1)
    # Line 144
    swc1	$f4,0($a1)
.L0dab82b4:
    # Line 145
    c.lt.s	$f7,$f5
    nop
    bc1fl	.L0dab82cc
    # Line 147
    c.lt.s	$f4,$f7
    b	.L0dab82dc
    swc1	$f5,4($a1)
.L0dab82cc:
    nop
    bc1fl	.L0dab82dc
    # Line 149
    swc1	$f7,4($a1)
    # Line 148
    swc1	$f4,4($a1)
.L0dab82dc:
    # Line 149
    c.lt.s	$f8,$f5
    nop
    bc1fl	.L0dab82f4
    # Line 151
    c.lt.s	$f4,$f8
    b	.L0dab8304
    swc1	$f5,8($a1)
.L0dab82f4:
    nop
    bc1fl	.L0dab8304
    # Line 153
    swc1	$f8,8($a1)
    # Line 152
    swc1	$f4,8($a1)
.L0dab8304:
    # Line 153
    c.lt.s	$f6,$f5
    nop
    bc1t	.L0dab8334
    nop
    # Line 155
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0dab832c
    # Line 157
    swc1	$f6,12($a1)
    # Line 158
    jr	$ra
    # Line 156
    swc1	$f4,12($a1)
.L0dab832c:
    # Line 158
    jr	$ra
    nop
.L0dab8334:
    jr	$ra
    # Line 155
    swc1	$f5,12($a1)
.end __glClampColori

# Function: __glUnScaleColorf
# Declared: Line 163 (Source lines: 165-169)
# Address: 0x0dab833c - 0x0dab8380 (Size: 68 bytes, Frame: 0)
.globl __glUnScaleColorf
.ent __glUnScaleColorf
__glUnScaleColorf:
    # Line 165
    lwc1	$f2,30804($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 166
    lwc1	$f0,30808($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 167
    lwc1	$f3,30812($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 168
    lwc1	$f1,30816($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 169
    jr	$ra
    # Line 168
    swc1	$f0,12($a1)
.end __glUnScaleColorf

# Function: __glUnScaleColori
# Declared: Line 174 (Source lines: 175-180)
# Address: 0x0dab8380 - 0x0dab8498 (Size: 280 bytes, Frame: 208)
.globl __glUnScaleColori
.ent __glUnScaleColori
__glUnScaleColori:
    # Line 175
    addiu	$sp,$sp,-80
    sd	$s4,0($sp)
    # Line 176
    lwc1	$f15,30804($a0)
    lwc1	$f14,0($a2)
    # Line 175
    move	$s4,$a2
    sd	$s1,16($sp)
    # Line 176
    mul.s	$f14,$f14,$f15
    # Line 175
    move	$s1,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    # Line 176
    lwc1	$f13,3304($a0)
    # sd	gp,24(sp)
    # Line 175
    lui	$at,0x14
    # Line 176
    mul.s	$f13,$f13,$f14
    # Line 175
    addiu	$at,$at,-2840
    # addu	gp,t9,at
    # Line 176
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a0)
    sd	$ra,8($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$v0,$f16
    nop
    sw	$v0,0($s0)
    # Line 177
    lwc1	$f15,30808($s1)
    lwc1	$f14,4($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$v1,$f16
    nop
    sw	$v1,4($s0)
    # Line 178
    lwc1	$f15,30812($s1)
    lwc1	$f14,8($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$a0,$f16
    nop
    sw	$a0,8($s0)
    # Line 179
    lwc1	$f15,30816($s1)
    lwc1	$f14,12($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    # ld	gp,24(sp)
    # Line 180
    ld	$s1,16($sp)
    # Line 179
    mfc1	$a3,$f0
    # Line 180
    ld	$s4,0($sp)
    ld	$ra,8($sp)
    # Line 179
    sw	$a3,12($s0)
    # Line 180
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glUnScaleColori

# Function: __glClampRGBColor
# Declared: Line 185 (Source lines: 186-231)
# Address: 0x0dab8498 - 0x0dab8574 (Size: 220 bytes, Frame: 0)
.globl __glClampRGBColor
.ent __glClampRGBColor
__glClampRGBColor:
    # Line 191
    lwc1	$f6,0($a2)
    # Line 186
    lui	$v0,0x14
    addiu	$v0,$v0,-3120
    # addu	at,t9,v0
    # Line 191
    mtc1	$zero,$f4
    c.le.s	$f6,$f4
    nop
    bc1f	.L0dab84c4
    lwc1	$f5,30756($a0)
    # Line 193
    b	.L0dab84d8
    swc1	$f4,0($a1)
.L0dab84c4:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0dab84d8
    # Line 198
    swc1	$f6,0($a1)
    # Line 196
    swc1	$f5,0($a1)
.L0dab84d8:
    # Line 201
    lwc1	$f6,4($a2)
    c.le.s	$f6,$f4
    nop
    bc1f	.L0dab84f4
    lwc1	$f5,30760($a0)
    # Line 203
    b	.L0dab8508
    swc1	$f4,4($a1)
.L0dab84f4:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0dab8508
    # Line 208
    swc1	$f6,4($a1)
    # Line 206
    swc1	$f5,4($a1)
.L0dab8508:
    # Line 211
    lwc1	$f6,8($a2)
    c.le.s	$f6,$f4
    nop
    bc1f	.L0dab8524
    lwc1	$f5,30764($a0)
    # Line 213
    b	.L0dab8538
    swc1	$f4,8($a1)
.L0dab8524:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0dab8538
    # Line 218
    swc1	$f6,8($a1)
    # Line 216
    swc1	$f5,8($a1)
.L0dab8538:
    # Line 221
    lwc1	$f5,12($a2)
    c.le.s	$f5,$f4
    nop
    bc1t	.L0dab856c
    lwc1	$f6,30796($a0)
    # Line 223
    c.le.s	$f6,$f5
    nop
    bc1fl	.L0dab8564
    # Line 228
    swc1	$f5,12($a1)
    # Line 231
    jr	$ra
    # Line 226
    swc1	$f6,12($a1)
.L0dab8564:
    # Line 231
    jr	$ra
    nop
.L0dab856c:
    jr	$ra
    # Line 223
    swc1	$f4,12($a1)
.end __glClampRGBColor

# Function: vvec
# Declared: Line 238 (Source lines: 242-302)
# Address: 0x0dab8574 - 0x0dab865c (Size: 232 bytes, Frame: 0)
.ent vvec
vvec:
    # Line 242
    lw	$at,12($a1)
    lw	$a4,12($a2)
    sll	$at,$at,0x1
    beqz	$at,.L0dab85f0
    sll	$a4,$a4,0x1
    beqz	$a4,.L0dab861c
    lwc1	$f4,0($a2)
    # Line 253
    lwc1	$f2,12($a1)
    # Line 255
    lwc1	$f1,4($a2)
    # Line 257
    mul.s	$f0,$f4,$f2
    # Line 256
    lwc1	$f3,8($a2)
    # Line 258
    mul.s	$f1,$f2,$f1
    # Line 259
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 258
    swc1	$f1,4($a0)
    # Line 257
    swc1	$f0,0($a0)
    # Line 262
    lwc1	$f5,4($a1)
    # Line 260
    lwc1	$f7,12($a2)
    # Line 263
    lwc1	$f6,8($a1)
    # Line 265
    mul.s	$f5,$f7,$f5
    # Line 264
    lwc1	$f3,0($a1)
    # Line 266
    mul.s	$f6,$f7,$f6
    # Line 264
    mul.s	$f3,$f3,$f7
    # Line 265
    sub.s	$f1,$f1,$f5
    # Line 266
    sub.s	$f2,$f2,$f6
    # Line 264
    sub.s	$f0,$f0,$f3
    # Line 266
    swc1	$f2,8($a0)
    # Line 265
    swc1	$f1,4($a0)
    # Line 264
    swc1	$f0,0($a0)
    # Line 302
    jr	$ra
    nop
.L0dab85f0:
    # Line 276
    lwc1	$f4,0($a1)
    lwc1	$f5,8($a1)
    beqz	$a4,.L0dab8634
    lwc1	$f6,4($a1)
    # Line 285
    neg.s	$f2,$f4
    # Line 287
    neg.s	$f0,$f5
    # Line 286
    neg.s	$f3,$f6
    # Line 287
    swc1	$f0,8($a0)
    # Line 286
    swc1	$f3,4($a0)
    # Line 302
    jr	$ra
    # Line 285
    swc1	$f2,0($a0)
.L0dab861c:
    # Line 274
    swc1	$f4,0($a0)
    # Line 275
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    # Line 276
    lwc1	$f1,8($a2)
    # Line 302
    jr	$ra
    # Line 276
    swc1	$f1,8($a0)
.L0dab8634:
    # Line 296
    lwc1	$f0,4($a2)
    # Line 297
    lwc1	$f1,8($a2)
    # Line 296
    sub.s	$f0,$f0,$f6
    # Line 298
    lwc1	$f3,0($a2)
    # Line 297
    sub.s	$f1,$f1,$f5
    # Line 298
    sub.s	$f3,$f3,$f4
    # Line 300
    swc1	$f1,8($a0)
    # Line 299
    swc1	$f0,4($a0)
    # Line 302
    jr	$ra
    # Line 298
    swc1	$f3,0($a0)
.end vvec

# Function: __glCalcRGBColor
# Declared: Line 305 (Source lines: 306-496)
# Address: 0x0dab865c - 0x0dab8c88 (Size: 1580 bytes, Frame: 144)
.globl __glCalcRGBColor
.ent __glCalcRGBColor
__glCalcRGBColor:
    # Line 306
    addiu	$sp,$sp,-272
    sdc1	$f22,88($sp)
    sdc1	$f24,80($sp)
    sdc1	$f26,96($sp)
    sd	$s6,144($sp)
    sd	$s0,120($sp)
    move	$s0,$a0
    sdc1	$f30,168($sp)
    sdc1	$f28,160($sp)
    # sd	gp,136(sp)
    lui	$at,0x14
    addiu	$at,$at,-3572
    sd	$s4,112($sp)
    move	$s4,$a2
    # Line 323
    addiu	$v0,$s4,160
    # Line 306
    # addu	gp,t9,at
    lwc1	$f5,36($a2)
    lwc1	$f4,40($a2)
    lwc1	$f6,32($a2)
    # Line 320
    mov.s	$f28,$f5
    # Line 306
    beqz	$a1,.L0dab8c64
    # Line 319
    mov.s	$f2,$f6
    # Line 324
    addiu	$s6,$s0,28148
    sd	$s5,192($sp)
    sd	$s1,184($sp)
    sdc1	$f20,176($sp)
    # Line 327
    neg.s	$f30,$f4
    # Line 326
    neg.s	$f28,$f5
    # Line 325
    neg.s	$f0,$f6
    sd	$v0,128($sp)
    sdc1	$f0,104($sp)
.L0dab86d8:
    # Line 335
    mtc1	$zero,$f20
    lwc1	$f1,108($s4)
    c.eq.s	$f1,$f20
    li	$v1,1
    bc1fl	.L0dab86f0
    move	$v1,$zero
.L0dab86f0:
    # Line 336
    lbu	$s5,1324($s0)
    # Line 334
    lwc1	$f22,8($s6)
    # Line 337
    lw	$s1,28188($s0)
    # Line 333
    lwc1	$f26,4($s6)
    # Line 332
    lwc1	$f24,0($s6)
    # Line 337
    beqz	$s1,.L0dab8b48
    sd	$v1,152($sp)
    sd	$s3,208($sp)
    sd	$ra,200($sp)
    sd	$s8,232($sp)
    sll	$s8,$a1,0x2
    subu	$s8,$s8,$a1
    sll	$s8,$s8,0x4
    sd	$s7,224($sp)
    la	$s7,sub_0dbf0000
    sd	$s2,216($sp)
    la	$s2,sub_0dac0000
    addiu	$s7,$s7,-11224
    b	.L0dab87b0
    addiu	$s2,$s2,-31372
.L0dab8740:
    # Line 419
    lwc1	$f8,3284($s0)
.L0dab8744:
    # Line 422
    lwc1	$f0,40($a0)
    # Line 421
    lwc1	$f3,36($a0)
    # Line 422
    mul.s	$f0,$f0,$f8
    # Line 420
    lwc1	$f2,32($a0)
    # Line 421
    mul.s	$f3,$f3,$f8
    # Line 420
    mul.s	$f2,$f2,$f8
    # Line 422
    add.s	$f6,$f0,$f6
    # Line 421
    add.s	$f7,$f3,$f7
    # Line 420
    add.s	$f5,$f2,$f5
    # Line 426
    lwc1	$f3,24($a0)
.L0dab876c:
    # Line 425
    lwc1	$f2,20($a0)
    # Line 426
    mul.s	$f3,$f3,$f9
    # Line 424
    lwc1	$f1,16($a0)
    # Line 425
    mul.s	$f2,$f2,$f9
    # Line 424
    mul.s	$f1,$f1,$f9
    # Line 426
    add.s	$f6,$f3,$f6
    # Line 425
    add.s	$f7,$f2,$f7
    # Line 424
    add.s	$f5,$f1,$f5
.L0dab878c:
    # Line 431
    mul.s	$f2,$f4,$f6
    # Line 430
    mul.s	$f1,$f4,$f7
    # Line 429
    mul.s	$f0,$f4,$f5
    # Line 431
    add.s	$f22,$f2,$f22
    # Line 430
    add.s	$f26,$f1,$f26
    # Line 429
    add.s	$f24,$f0,$f24
.L0dab87a4:
    # Line 461
    lw	$s1,200($s1)
    beqzl	$s1,.L0dab8b38
    ld	$s8,232($sp)
.L0dab87b0:
    # Line 340
    lbu	$at,220($s1)
    ld	$v0,152($sp)
    bnez	$at,.L0dab87cc
    # Line 346
    addiu	$s3,$s4,96
    # Line 436
    addu	$a0,$s8,$s1
    # Line 340
    beqz	$v0,.L0dab8a74
    # Line 441
    ldc1	$f0,104($sp)
.L0dab87cc:
    # Line 346
    addiu	$a2,$s1,116
    addiu	$a0,$sp,0
    move	$t9,$s2
    bal __glClampRGBColor
    move	$a1,$s3
    # Line 347
    lw	$t9,11912($s0)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 357
    lwc1	$f0,24($sp)
    # Line 347
    beqz	$s5,.L0dab8854
    # Line 355
    lwc1	$f2,16($sp)
    # Line 349
    addiu	$a0,$sp,32
    move	$a1,$s3
    move	$a2,$s7
    bal __glClampRGBColor
    move	$t9,$s2
    # Line 350
    lw	$t9,11912($s0)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    # Line 353
    lwc1	$f2,40($sp)
    lwc1	$f1,24($sp)
    # Line 352
    lwc1	$f0,20($sp)
    # Line 353
    add.s	$f1,$f1,$f2
    # Line 352
    lwc1	$f2,36($sp)
    # Line 351
    lwc1	$f3,16($sp)
    # Line 352
    add.s	$f0,$f0,$f2
    # Line 351
    lwc1	$f2,32($sp)
    add.s	$f3,$f3,$f2
    # Line 353
    swc1	$f1,56($sp)
    # Line 352
    swc1	$f0,52($sp)
    # Line 353
    b	.L0dab886c
    # Line 351
    swc1	$f3,48($sp)
.L0dab8854:
    # Line 356
    lwc1	$f1,20($sp)
    # Line 355
    swc1	$f2,48($sp)
    # Line 356
    swc1	$f1,52($sp)
    # Line 357
    lwc1	$f3,3284($s0)
    add.s	$f3,$f3,$f0
    swc1	$f3,56($sp)
.L0dab886c:
    # Line 359
    lw	$t9,11912($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f6,128($s1)
    c.eq.s	$f6,$f20
    nop
    bc1tl	.L0dab88b8
    # Line 377
    lwc1	$f5,3284($s0)
    # Line 366
    lwc1	$f7,104($s1)
    # Line 367
    c.eq.s	$f7,$f20
    nop
    bc1f	.L0dab8a2c
    lwc1	$f4,108($s1)
    c.eq.s	$f4,$f20
    nop
    bc1f	.L0dab8a30
    # Line 374
    lwc1	$f0,4($sp)
    # Line 370
    lwc1	$f5,152($s1)
.L0dab88b8:
    # Line 381
    lbu	$v1,156($s1)
    beqz	$v1,.L0dab8964
    mov.s	$f4,$f5
    c.eq.s	$f6,$f20
    nop
    bc1t	.L0dab8964
    # Line 388
    lwc1	$f1,20($sp)
    lwc1	$f0,136($s1)
    lwc1	$f7,16($sp)
    lwc1	$f6,132($s1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,24($sp)
    mul.s	$f6,$f6,$f7
    lwc1	$f7,140($s1)
    mul.s	$f7,$f7,$f1
    add.s	$f6,$f6,$f0
    add.s	$f6,$f6,$f7
    lwc1	$f7,208($s1)
    neg.s	$f6,$f6
    c.le.s	$f7,$f6
    nop
    bc1fl	.L0dab8964
    # Line 397
    mov.s	$f4,$f20
    # Line 388
    lwc1	$f0,148($s1)
    c.le.s	$f0,$f6
    nop
    bc1fl	.L0dab8964
    # Line 397
    mov.s	$f4,$f20
    # Line 391
    sub.s	$f3,$f6,$f7
    lwc1	$f2,212($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slti	$a3,$a0,256
    beqz	$a3,.L0dab8964
    # Line 394
    sll	$v0,$a0,0x2
    lw	$at,204($s1)
    addu	$at,$at,$v0
    lwc1	$f4,0($at)
    mul.s	$f4,$f4,$f5
.L0dab8964:
    # Line 390
    c.eq.s	$f4,$f20
    # Line 408
    lwc1	$f0,16($sp)
    # Line 406
    addu	$a0,$s8,$s1
    # Line 390
    bc1t	.L0dab87a4
    # Line 408
    ldc1	$f1,104($sp)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,20($sp)
    lwc1	$f9,24($sp)
    mul.s	$f1,$f1,$f28
    mul.s	$f9,$f9,$f30
    add.s	$f0,$f0,$f1
    add.s	$f9,$f9,$f0
    c.lt.s	$f20,$f9
    lwc1	$f6,8($a0)
    # Line 407
    lwc1	$f7,4($a0)
    # Line 408
    bc1f	.L0dab878c
    # Line 406
    lwc1	$f5,0($a0)
    # Line 413
    lwc1	$f2,68($sp)
    ldc1	$f0,104($sp)
    lwc1	$f8,64($sp)
    mul.s	$f2,$f2,$f28
    mul.s	$f8,$f8,$f0
    lwc1	$f0,72($sp)
    mul.s	$f0,$f0,$f30
    lwc1	$f1,16($s6)
    add.s	$f8,$f8,$f2
    c.eq.s	$f1,$f20
    add.s	$f8,$f8,$f0
    lwc1	$f0,24($s6)
    bc1f	.L0dab89e4
    sub.s	$f8,$f8,$f0
    # Line 414
    lwc1	$f8,3284($s0)
.L0dab89e4:
    c.le.s	$f20,$f8
    nop
    bc1fl	.L0dab876c
    # Line 426
    lwc1	$f3,24($a0)
    # Line 416
    lwc1	$f2,28($s6)
    mul.s	$f2,$f2,$f8
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    slti	$v1,$a1,256
    beqz	$v1,.L0dab8740
    # Line 418
    sll	$at,$a1,0x2
    lw	$a3,20($s6)
    addu	$a3,$a3,$at
    b	.L0dab8744
    lwc1	$f8,0($a3)
.L0dab8a2c:
    # Line 374
    lwc1	$f0,4($sp)
.L0dab8a30:
    lwc1	$f5,0($sp)
    mul.s	$f0,$f0,$f0
    lwc1	$f3,8($sp)
    mul.s	$f5,$f5,$f5
    mul.s	$f3,$f3,$f3
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f5
    sqrt.s	$f3,$f3
    mul.s	$f1,$f3,$f4
    mul.s	$f2,$f3,$f7
    mul.s	$f1,$f1,$f3
    lwc1	$f0,100($s1)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    lwc1	$f5,3284($s0)
    b	.L0dab88b8
    div.s	$f5,$f5,$f0
.L0dab8a74:
    # Line 441
    lwc1	$f2,180($s1)
    lwc1	$f5,176($s1)
    mul.s	$f2,$f2,$f28
    mul.s	$f5,$f5,$f0
    lwc1	$f0,184($s1)
    mul.s	$f0,$f0,$f30
    # Line 438
    lwc1	$f1,8($a0)
    # Line 441
    add.s	$f5,$f5,$f2
    # Line 438
    add.s	$f22,$f1,$f22
    # Line 437
    lwc1	$f1,4($a0)
    # Line 441
    add.s	$f5,$f5,$f0
    # Line 437
    add.s	$f26,$f1,$f26
    # Line 441
    c.lt.s	$f20,$f5
    # Line 436
    lwc1	$f0,0($a0)
    # Line 441
    bc1f	.L0dab87a4
    # Line 436
    add.s	$f24,$f0,$f24
    # Line 445
    lwc1	$f2,164($s1)
    ldc1	$f0,104($sp)
    lwc1	$f4,160($s1)
    mul.s	$f2,$f2,$f28
    mul.s	$f4,$f4,$f0
    lwc1	$f0,168($s1)
    mul.s	$f0,$f0,$f30
    lwc1	$f1,16($s6)
    add.s	$f4,$f4,$f2
    c.eq.s	$f1,$f20
    add.s	$f4,$f4,$f0
    lwc1	$f0,24($s6)
    bc1f	.L0dab8af0
    sub.s	$f4,$f4,$f0
    # Line 446
    lwc1	$f4,3284($s0)
.L0dab8af0:
    c.le.s	$f20,$f4
    nop
    bc1fl	.L0dab8c08
    # Line 458
    lwc1	$f1,24($a0)
    # Line 448
    lwc1	$f2,28($s6)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    slti	$v0,$a1,256
    beqz	$v0,.L0dab8bdc
    # Line 450
    sll	$a3,$a1,0x2
    lw	$v1,20($s6)
    addu	$v1,$v1,$a3
    b	.L0dab8be0
    lwc1	$f4,0($v1)
.L0dab8b38:
    ld	$s7,224($sp)
    ld	$ra,200($sp)
    ld	$s3,208($sp)
    ld	$s2,216($sp)
.L0dab8b48:
    ldc1	$f30,168($sp)
    ldc1	$f28,160($sp)
    ld	$s5,192($sp)
    ld	$s1,184($sp)
    # Line 469
    lwc1	$f4,30764($s0)
    c.le.s	$f24,$f20
    # Line 468
    lwc1	$f6,30760($s0)
    # Line 467
    lwc1	$f5,30756($s0)
    # Line 469
    bc1f	.L0dab8c2c
    ld	$s4,112($sp)
    ld	$s0,120($sp)
    # Line 471
    mov.s	$f24,$f20
.L0dab8b78:
    # Line 474
    c.le.s	$f26,$f20
.L0dab8b7c:
    ld	$at,128($sp)
    bc1fl	.L0dab8c44
    # Line 478
    c.le.s	$f6,$f26
    mov.s	$f26,$f20
.L0dab8b8c:
    # Line 481
    c.le.s	$f22,$f20
.L0dab8b90:
    nop
    bc1t	.L0dab8c58
    nop
    # Line 485
    c.le.s	$f4,$f22
    nop
    bc1f	.L0dab8bb0
    ldc1	$f20,176($sp)
    # Line 488
    mov.s	$f22,$f4
.L0dab8bb0:
    # Line 493
    swc1	$f22,8($at)
    # Line 496
    ldc1	$f22,88($sp)
    # Line 491
    swc1	$f24,0($at)
    # Line 496
    ldc1	$f24,80($sp)
    # Line 492
    swc1	$f26,4($at)
    # Line 496
    ldc1	$f26,96($sp)
    # Line 494
    lwc1	$f3,36($s6)
    # Line 496
    ld	$s6,144($sp)
    addiu	$sp,$sp,272
    jr	$ra
    # Line 494
    swc1	$f3,12($at)
.L0dab8bdc:
    # Line 451
    lwc1	$f4,3284($s0)
.L0dab8be0:
    # Line 454
    lwc1	$f2,40($a0)
    # Line 453
    lwc1	$f1,36($a0)
    # Line 454
    mul.s	$f2,$f2,$f4
    # Line 452
    lwc1	$f0,32($a0)
    # Line 453
    mul.s	$f1,$f1,$f4
    # Line 452
    mul.s	$f0,$f0,$f4
    # Line 454
    add.s	$f22,$f2,$f22
    # Line 453
    add.s	$f26,$f1,$f26
    # Line 452
    add.s	$f24,$f0,$f24
    # Line 458
    lwc1	$f1,24($a0)
.L0dab8c08:
    # Line 457
    lwc1	$f0,20($a0)
    # Line 458
    mul.s	$f1,$f1,$f5
    # Line 456
    lwc1	$f3,16($a0)
    # Line 457
    mul.s	$f0,$f0,$f5
    # Line 456
    mul.s	$f3,$f3,$f5
    # Line 458
    add.s	$f22,$f1,$f22
    # Line 457
    add.s	$f26,$f0,$f26
    b	.L0dab87a4
    # Line 456
    add.s	$f24,$f3,$f24
.L0dab8c2c:
    # Line 471
    c.le.s	$f5,$f24
    ld	$s0,120($sp)
    bc1fl	.L0dab8b7c
    # Line 474
    c.le.s	$f26,$f20
    b	.L0dab8b78
    mov.s	$f24,$f5
.L0dab8c44:
    nop
    # Line 478
    bc1fl	.L0dab8b90
    # Line 481
    c.le.s	$f22,$f20
    b	.L0dab8b8c
    mov.s	$f26,$f6
.L0dab8c58:
    # Line 485
    mov.s	$f22,$f20
    b	.L0dab8bb0
    ldc1	$f20,176($sp)
.L0dab8c64:
    # Line 321
    mov.s	$f30,$f4
    # Line 318
    addiu	$s6,$s0,28108
    sd	$s5,192($sp)
    sd	$s1,184($sp)
    sdc1	$f20,176($sp)
    sdc1	$f6,104($sp)
    # Line 317
    addiu	$v0,$s4,144
    # Line 321
    b	.L0dab86d8
    sd	$v0,128($sp)
.end __glCalcRGBColor

# Function: __glFogRGBColor
# Declared: Line 598 (Source lines: 604-612)
# Address: 0x0dab8c88 - 0x0dab8ce8 (Size: 96 bytes, Frame: 0)
.globl __glFogRGBColor
.ent __glFogRGBColor
__glFogRGBColor:
    # Line 609
    sll	$at,$a1,0x4
    addu	$at,$at,$a2
    # Line 604
    lwc1	$f1,176($a2)
    # Line 605
    lwc1	$f2,3284($a0)
    # Line 609
    lwc1	$f4,144($at)
    lwc1	$f0,1496($a0)
    # Line 605
    sub.s	$f2,$f2,$f1
    # Line 609
    mul.s	$f4,$f4,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    # Line 610
    lwc1	$f3,148($at)
    # Line 609
    swc1	$f4,144($at)
    # Line 610
    mul.s	$f3,$f3,$f1
    lwc1	$f4,1500($a0)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 611
    lwc1	$f0,152($at)
    # Line 610
    swc1	$f3,148($at)
    # Line 611
    mul.s	$f0,$f0,$f1
    lwc1	$f1,1504($a0)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 612
    jr	$ra
    # Line 611
    swc1	$f0,152($at)
.end __glFogRGBColor

# Function: __glFogLitRGBColor
# Declared: Line 614 (Source lines: 615-631)
# Address: 0x0dab8ce8 - 0x0dab8d90 (Size: 168 bytes, Frame: 208)
.globl __glFogLitRGBColor
.ent __glFogLitRGBColor
__glFogLitRGBColor:
    # Line 615
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x14
    addiu	$at,$at,-5248
    # addu	gp,t9,at
    # Line 620
    lw	$t9,12016($a0)
    # Line 615
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 620
    jalr	$t9
    sd	$a1,32($sp)
    # Line 628
    ld	$v0,32($sp)
    ld	$v1,24($sp)
    # Line 624
    lwc1	$f2,3284($s8)
    # Line 628
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$v1
    # Line 623
    lwc1	$f1,176($v1)
    # Line 628
    lwc1	$f4,144($v0)
    lwc1	$f0,1496($s8)
    # Line 624
    sub.s	$f2,$f2,$f1
    # Line 628
    mul.s	$f4,$f4,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    # Line 629
    lwc1	$f3,148($v0)
    # Line 628
    swc1	$f4,144($v0)
    # Line 629
    mul.s	$f3,$f3,$f1
    lwc1	$f4,1500($s8)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 630
    lwc1	$f0,152($v0)
    # Line 629
    swc1	$f3,148($v0)
    # Line 630
    mul.s	$f0,$f0,$f1
    lwc1	$f1,1504($s8)
    mul.s	$f1,$f1,$f2
    # ld	gp,16(sp)
    # Line 631
    ld	$ra,0($sp)
    # Line 630
    add.s	$f0,$f0,$f1
    # Line 631
    ld	$s8,8($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 630
    swc1	$f0,152($v0)
.end __glFogLitRGBColor

# Function: __glCalcCIColor
# Declared: Line 633 (Source lines: 634-777)
# Address: 0x0dab8d90 - 0x0dab92c4 (Size: 1332 bytes, Frame: 144)
.globl __glCalcCIColor
.ent __glCalcCIColor
__glCalcCIColor:
    # Line 634
    lwc1	$f5,40($a2)
    addiu	$sp,$sp,-272
    sd	$s7,184($sp)
    sdc1	$f22,136($sp)
    sdc1	$f26,128($sp)
    sdc1	$f24,144($sp)
    # sd	gp,112(sp)
    lui	$at,0x14
    sd	$s1,88($sp)
    move	$s1,$a0
    addiu	$at,$at,-5416
    sd	$s4,80($sp)
    move	$s4,$a2
    # Line 652
    addiu	$v0,$s4,160
    # Line 634
    # addu	gp,t9,at
    lwc1	$f6,36($a2)
    # Line 646
    addiu	$v1,$s1,1328
    # Line 634
    lwc1	$f4,32($a2)
    # Line 649
    mov.s	$f24,$f6
    # Line 634
    beqz	$a1,.L0dab9294
    # Line 648
    mov.s	$f26,$f4
    # Line 653
    addiu	$v1,$s1,1408
    # Line 654
    addiu	$s7,$s1,28148
    sd	$s8,192($sp)
    sd	$s5,176($sp)
    sd	$s0,168($sp)
    sdc1	$f30,160($sp)
    sdc1	$f28,152($sp)
    sdc1	$f20,120($sp)
    # Line 657
    neg.s	$f22,$f5
    # Line 656
    neg.s	$f24,$f6
    # Line 655
    neg.s	$f26,$f4
    sd	$v0,96($sp)
    sd	$v1,104($sp)
.L0dab8e18:
    # Line 661
    mtc1	$zero,$f20
    # Line 664
    lwc1	$f0,108($s4)
    c.eq.s	$f0,$f20
    li	$s8,1
    bc1fl	.L0dab8e30
    move	$s8,$zero
.L0dab8e30:
    # Line 663
    lw	$s0,28188($s1)
    # Line 665
    lbu	$s5,1324($s1)
    # Line 662
    mov.s	$f28,$f20
    # Line 665
    beqz	$s0,.L0dab91d8
    # Line 661
    mov.s	$f30,$f20
    sd	$s3,208($sp)
    sd	$ra,200($sp)
    sd	$s2,216($sp)
    # Line 665
    la	$s2,sub_0dac0000
    sd	$s6,224($sp)
    la	$s6,sub_0dbf0000
    addiu	$s2,$s2,-31372
    b	.L0dab8e98
    addiu	$s6,$s6,-11208
.L0dab8e68:
    # Line 738
    lwc1	$f6,3284($s1)
.L0dab8e6c:
    # Line 739
    mul.s	$f2,$f4,$f6
    lwc1	$f1,192($s0)
    mul.s	$f1,$f1,$f2
    add.s	$f30,$f1,$f30
    # Line 741
    mul.s	$f0,$f5,$f4
.L0dab8e80:
    lwc1	$f3,196($s0)
    mul.s	$f3,$f3,$f0
    add.s	$f28,$f3,$f28
.L0dab8e8c:
    # Line 764
    lw	$s0,200($s0)
.L0dab8e90:
    beqz	$s0,.L0dab91cc
    ld	$ra,200($sp)
.L0dab8e98:
    # Line 667
    lbu	$at,220($s0)
    bnez	$at,.L0dab8ea8
    # Line 673
    addiu	$s3,$s4,96
    # Line 667
    beqz	$s8,.L0dab911c
.L0dab8ea8:
    # Line 673
    addiu	$a2,$s0,116
    addiu	$a0,$sp,0
    move	$t9,$s2
    bal __glClampRGBColor
    move	$a1,$s3
    # Line 674
    lw	$t9,11912($s1)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 684
    lwc1	$f2,24($sp)
    # Line 674
    beqz	$s5,.L0dab8f30
    # Line 682
    lwc1	$f0,16($sp)
    # Line 676
    addiu	$a0,$sp,32
    move	$a1,$s3
    move	$a2,$s6
    bal __glClampRGBColor
    move	$t9,$s2
    # Line 677
    lw	$t9,11912($s1)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    # Line 680
    lwc1	$f0,40($sp)
    lwc1	$f3,24($sp)
    # Line 679
    lwc1	$f2,20($sp)
    # Line 680
    add.s	$f3,$f3,$f0
    # Line 679
    lwc1	$f0,36($sp)
    # Line 678
    lwc1	$f1,16($sp)
    # Line 679
    add.s	$f2,$f2,$f0
    # Line 678
    lwc1	$f0,32($sp)
    add.s	$f1,$f1,$f0
    # Line 680
    swc1	$f3,56($sp)
    # Line 679
    swc1	$f2,52($sp)
    # Line 680
    b	.L0dab8f48
    # Line 678
    swc1	$f1,48($sp)
.L0dab8f30:
    # Line 683
    lwc1	$f3,20($sp)
    # Line 682
    swc1	$f0,48($sp)
    # Line 683
    swc1	$f3,52($sp)
    # Line 684
    lwc1	$f1,3284($s1)
    add.s	$f1,$f1,$f2
    swc1	$f1,56($sp)
.L0dab8f48:
    # Line 686
    lw	$t9,11912($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f1,128($s0)
    c.eq.s	$f1,$f20
    nop
    bc1tl	.L0dab8f94
    # Line 704
    lwc1	$f5,3284($s1)
    # Line 693
    lwc1	$f6,104($s0)
    # Line 694
    c.eq.s	$f6,$f20
    nop
    bc1f	.L0dab90d4
    lwc1	$f4,108($s0)
    c.eq.s	$f4,$f20
    nop
    bc1f	.L0dab90d8
    # Line 701
    lwc1	$f0,4($sp)
    # Line 697
    lwc1	$f5,152($s0)
.L0dab8f94:
    # Line 708
    lbu	$v0,156($s0)
    beqz	$v0,.L0dab9034
    mov.s	$f4,$f5
    # Line 715
    lwc1	$f1,20($sp)
    lwc1	$f0,136($s0)
    lwc1	$f7,16($sp)
    lwc1	$f6,132($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,24($sp)
    mul.s	$f6,$f6,$f7
    lwc1	$f7,140($s0)
    mul.s	$f7,$f7,$f1
    add.s	$f6,$f6,$f0
    add.s	$f6,$f6,$f7
    lwc1	$f7,208($s0)
    neg.s	$f6,$f6
    c.le.s	$f7,$f6
    nop
    bc1fl	.L0dab9034
    # Line 724
    mov.s	$f4,$f20
    # Line 715
    lwc1	$f0,148($s0)
    c.le.s	$f0,$f6
    nop
    bc1fl	.L0dab9034
    # Line 724
    mov.s	$f4,$f20
    # Line 718
    sub.s	$f3,$f6,$f7
    lwc1	$f2,212($s0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($s1)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slti	$v1,$a0,256
    beqz	$v1,.L0dab9034
    # Line 721
    sll	$at,$a0,0x2
    lw	$a3,204($s0)
    addu	$a3,$a3,$at
    lwc1	$f4,0($a3)
    mul.s	$f4,$f4,$f5
.L0dab9034:
    # Line 724
    c.eq.s	$f4,$f20
    lwc1	$f0,16($sp)
    bc1t	.L0dab8e8c
    lwc1	$f1,20($sp)
    mul.s	$f1,$f1,$f24
    lwc1	$f5,24($sp)
    mul.s	$f0,$f0,$f26
    mul.s	$f5,$f5,$f22
    add.s	$f0,$f0,$f1
    add.s	$f5,$f5,$f0
    c.lt.s	$f20,$f5
    # Line 733
    lwc1	$f6,64($sp)
    # Line 724
    bc1f	.L0dab8e8c
    # Line 733
    lwc1	$f1,68($sp)
    mul.s	$f1,$f1,$f24
    lwc1	$f0,72($sp)
    mul.s	$f6,$f6,$f26
    mul.s	$f0,$f0,$f22
    add.s	$f6,$f6,$f1
    add.s	$f6,$f6,$f0
    lwc1	$f0,24($s7)
    sub.s	$f6,$f6,$f0
    c.le.s	$f20,$f6
    nop
    bc1fl	.L0dab8e80
    # Line 741
    mul.s	$f0,$f5,$f4
    # Line 735
    lwc1	$f1,28($s7)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,3280($s1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slti	$v0,$a0,256
    beqz	$v0,.L0dab8e68
    # Line 737
    sll	$a3,$a0,0x2
    lw	$v1,20($s7)
    addu	$v1,$v1,$a3
    b	.L0dab8e6c
    lwc1	$f6,0($v1)
.L0dab90d4:
    # Line 701
    lwc1	$f0,4($sp)
.L0dab90d8:
    lwc1	$f5,0($sp)
    mul.s	$f0,$f0,$f0
    lwc1	$f3,8($sp)
    mul.s	$f5,$f5,$f5
    mul.s	$f3,$f3,$f3
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f5
    sqrt.s	$f3,$f3
    mul.s	$f1,$f3,$f4
    mul.s	$f2,$f3,$f6
    mul.s	$f1,$f1,$f3
    lwc1	$f0,100($s0)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    lwc1	$f5,3284($s1)
    b	.L0dab8f94
    div.s	$f5,$f5,$f0
.L0dab911c:
    # Line 748
    lwc1	$f1,180($s0)
    lwc1	$f5,176($s0)
    mul.s	$f1,$f1,$f24
    lwc1	$f0,184($s0)
    mul.s	$f5,$f5,$f26
    mul.s	$f0,$f0,$f22
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    c.lt.s	$f20,$f5
    nop
    bc1fl	.L0dab8e90
    # Line 764
    lw	$s0,200($s0)
    # Line 752
    lwc1	$f2,164($s0)
    lwc1	$f4,160($s0)
    mul.s	$f2,$f2,$f24
    mul.s	$f4,$f4,$f26
    lwc1	$f0,168($s0)
    mul.s	$f0,$f0,$f22
    lwc1	$f1,16($s7)
    add.s	$f4,$f4,$f2
    c.eq.s	$f1,$f20
    add.s	$f4,$f4,$f0
    lwc1	$f0,24($s7)
    bc1f	.L0dab9184
    sub.s	$f4,$f4,$f0
    # Line 753
    lwc1	$f4,3284($s1)
.L0dab9184:
    c.le.s	$f20,$f4
    nop
    bc1fl	.L0dab9288
    # Line 761
    lwc1	$f3,196($s0)
    # Line 755
    lwc1	$f1,28($s7)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($s1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slti	$at,$a0,256
    beqz	$at,.L0dab9274
    # Line 757
    sll	$v1,$a0,0x2
    lw	$v0,20($s7)
    addu	$v0,$v0,$v1
    b	.L0dab9278
    lwc1	$f4,0($v0)
.L0dab91cc:
    ld	$s6,224($sp)
    ld	$s3,208($sp)
    ld	$s2,216($sp)
.L0dab91d8:
    # Line 764
    lwc1	$f5,3284($s1)
    ld	$s1,88($sp)
    ldc1	$f24,144($sp)
    ldc1	$f22,136($sp)
    ldc1	$f26,128($sp)
    ldc1	$f20,120($sp)
    ld	$s8,192($sp)
    ld	$s7,184($sp)
    ld	$s5,176($sp)
    c.lt.s	$f5,$f30
    ld	$s0,168($sp)
    ld	$at,96($sp)
    bc1f	.L0dab9218
    ld	$s4,80($sp)
    # Line 769
    mov.s	$f30,$f5
    ld	$s1,88($sp)
.L0dab9218:
    # Line 771
    sub.s	$f1,$f5,$f30
    ld	$a3,104($sp)
    mul.s	$f1,$f1,$f28
    lwc1	$f0,68($a3)
    lwc1	$f4,76($a3)
    lwc1	$f6,72($a3)
    sub.s	$f4,$f4,$f0
    sub.s	$f28,$f6,$f0
    mul.s	$f4,$f4,$f1
    mul.s	$f28,$f28,$f30
    add.s	$f4,$f4,$f0
    add.s	$f4,$f4,$f28
    c.lt.s	$f6,$f4
    ldc1	$f30,160($sp)
    bc1f	.L0dab9264
    ldc1	$f28,152($sp)
    # Line 774
    mov.s	$f4,$f6
    ldc1	$f30,160($sp)
    ldc1	$f28,152($sp)
.L0dab9264:
    # ld	gp,112(sp)
    # Line 777
    addiu	$sp,$sp,272
    jr	$ra
    # Line 776
    swc1	$f4,0($at)
.L0dab9274:
    # Line 758
    lwc1	$f4,3284($s1)
.L0dab9278:
    # Line 759
    lwc1	$f2,192($s0)
    mul.s	$f2,$f2,$f4
    add.s	$f30,$f2,$f30
    # Line 761
    lwc1	$f3,196($s0)
.L0dab9288:
    mul.s	$f3,$f3,$f5
    b	.L0dab8e8c
    add.s	$f28,$f3,$f28
.L0dab9294:
    # Line 650
    mov.s	$f22,$f5
    # Line 647
    addiu	$s7,$s1,28108
    sd	$s8,192($sp)
    sd	$s5,176($sp)
    sd	$s0,168($sp)
    sdc1	$f30,160($sp)
    sdc1	$f28,152($sp)
    sdc1	$f20,120($sp)
    sd	$v1,104($sp)
    # Line 645
    addiu	$v0,$s4,144
    # Line 650
    b	.L0dab8e18
    sd	$v0,96($sp)
.end __glCalcCIColor

# Function: __glFastCalcCIColor
# Declared: Line 782 (Source lines: 783-849)
# Address: 0x0dab92c4 - 0x0dab94a4 (Size: 480 bytes, Frame: 48)
.globl __glFastCalcCIColor
.ent __glFastCalcCIColor
__glFastCalcCIColor:
    # Line 783
    lwc1	$f0,108($a2)
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    lui	$at,0x14
    addiu	$at,$at,-6748
    # addu	gp,t9,at
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    # Line 807
    addiu	$a5,$a0,1408
    # Line 783
    bc1t	.L0dab9484
    # Line 808
    addiu	$a4,$a0,28148
    # Line 794
    lwc1	$f10,36($a2)
    lwc1	$f9,40($a2)
    lwc1	$f5,32($a2)
    beqz	$a1,.L0dab946c
    # Line 804
    mov.s	$f7,$f9
    # Line 806
    addiu	$a6,$a2,160
    # Line 811
    neg.s	$f7,$f9
    # Line 810
    neg.s	$f8,$f10
    # Line 809
    neg.s	$f6,$f5
.L0dab9314:
    # Line 816
    lw	$a1,28188($a0)
    # Line 814
    mov.s	$f11,$f4
    # Line 816
    beqz	$a1,.L0dab9464
    # Line 815
    mov.s	$f10,$f4
    b	.L0dab9350
    # Line 816
    lwc1	$f12,3284($a0)
.L0dab932c:
    # Line 832
    lwc1	$f1,192($a1)
    mul.s	$f1,$f1,$f5
    add.s	$f11,$f1,$f11
    # Line 834
    lwc1	$f2,196($a1)
.L0dab933c:
    mul.s	$f2,$f2,$f9
    add.s	$f10,$f2,$f10
    # Line 836
    lw	$a1,200($a1)
.L0dab9348:
    beqz	$a1,.L0dab9404
    nop
.L0dab9350:
    # Line 821
    lwc1	$f1,180($a1)
    lwc1	$f9,176($a1)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,184($a1)
    mul.s	$f9,$f9,$f6
    mul.s	$f0,$f0,$f7
    add.s	$f9,$f9,$f1
    add.s	$f9,$f9,$f0
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0dab9348
    # Line 836
    lw	$a1,200($a1)
    # Line 825
    lwc1	$f2,164($a1)
    lwc1	$f5,160($a1)
    mul.s	$f2,$f2,$f8
    mul.s	$f5,$f5,$f6
    lwc1	$f0,168($a1)
    mul.s	$f0,$f0,$f7
    lwc1	$f1,16($a4)
    add.s	$f5,$f5,$f2
    c.eq.s	$f1,$f4
    add.s	$f5,$f5,$f0
    lwc1	$f0,24($a4)
    bc1f	.L0dab93b8
    sub.s	$f5,$f5,$f0
    # Line 826
    mov.s	$f5,$f12
.L0dab93b8:
    c.le.s	$f4,$f5
    nop
    bc1fl	.L0dab933c
    # Line 834
    lwc1	$f2,196($a1)
    # Line 828
    lwc1	$f1,28($a4)
    mul.s	$f1,$f1,$f5
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    slti	$v0,$a2,256
    beqz	$v0,.L0dab932c
    # Line 831
    mov.s	$f5,$f12
    # Line 830
    sll	$a3,$a2,0x2
    lw	$v1,20($a4)
    addu	$v1,$v1,$a3
    b	.L0dab932c
    lwc1	$f5,0($v1)
.L0dab9404:
    # Line 836
    c.lt.s	$f12,$f11
    # ld	gp,0(sp)
    bc1fl	.L0dab941c
    # Line 843
    sub.s	$f2,$f12,$f11
    # Line 841
    mov.s	$f11,$f12
    # Line 843
    sub.s	$f2,$f12,$f11
.L0dab941c:
    mul.s	$f2,$f2,$f10
    lwc1	$f1,68($a5)
    lwc1	$f4,76($a5)
    lwc1	$f5,72($a5)
    sub.s	$f4,$f4,$f1
    sub.s	$f0,$f5,$f1
    mul.s	$f4,$f4,$f2
    mul.s	$f0,$f0,$f11
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0dab945c
    # Line 848
    swc1	$f4,0($a6)
    # Line 846
    mov.s	$f4,$f5
    # Line 848
    swc1	$f4,0($a6)
.L0dab945c:
    # Line 849
    jr	$ra
    addiu	$sp,$sp,48
.L0dab9464:
    b	.L0dab9404
    # Line 836
    lwc1	$f12,3284($a0)
.L0dab946c:
    # Line 803
    mov.s	$f8,$f10
    # Line 799
    addiu	$a6,$a2,144
    # Line 801
    addiu	$a4,$a0,28108
    # Line 800
    addiu	$a5,$a0,1328
    # Line 804
    b	.L0dab9314
    # Line 802
    mov.s	$f6,$f5
.L0dab9484:
    # Line 793
    # lw $t9, -28344($gp) # &__glCalcCIColor
    sd	$ra,8($sp)
    bal __glCalcCIColor
    nop
    # Line 794
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFastCalcCIColor

# Function: __glFogCIColor
# Declared: Line 851 (Source lines: 862-867)
# Address: 0x0dab94a4 - 0x0dab9504 (Size: 96 bytes, Frame: 0)
.globl __glFogCIColor
.ent __glFogCIColor
__glFogCIColor:
    # Line 862
    lwc1	$f3,176($a2)
    lwc1	$f2,3284($a0)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,1528($a0)
    mul.s	$f1,$f1,$f2
    sll	$a4,$a1,0x4
    addu	$a4,$a4,$a2
    lwc1	$f0,144($a4)
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a4)
    # Line 863
    lw	$v0,3136($a0)
    li	$at,1
    sllv	$at,$at,$v0
    addiu	$at,$at,-1
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dab94fc
    nop
    # Line 865
    swc1	$f4,144($a4)
.L0dab94fc:
    # Line 867
    jr	$ra
    nop
.end __glFogCIColor

# Function: __glFogLitCIColor
# Declared: Line 869 (Source lines: 870-888)
# Address: 0x0dab9504 - 0x0dab95a4 (Size: 160 bytes, Frame: 208)
.globl __glFogLitCIColor
.ent __glFogLitCIColor
__glFogLitCIColor:
    # Line 870
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x14
    addiu	$at,$at,-7324
    # addu	gp,t9,at
    # Line 875
    lw	$t9,12016($a0)
    # Line 870
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 875
    jalr	$t9
    sd	$a1,32($sp)
    # Line 883
    ld	$a3,24($sp)
    lwc1	$f2,3284($s8)
    lwc1	$f3,176($a3)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,1528($s8)
    ld	$a0,32($sp)
    mul.s	$f1,$f1,$f2
    sll	$a0,$a0,0x4
    addu	$a0,$a0,$a3
    lwc1	$f0,144($a0)
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a0)
    # Line 884
    lw	$v1,3136($s8)
    li	$v0,1
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    ld	$ra,0($sp)
    bc1f	.L0dab9598
    ld	$s8,8($sp)
    # Line 886
    swc1	$f4,144($a0)
    ld	$s8,8($sp)
.L0dab9598:
    # ld	gp,16(sp)
    # Line 888
    jr	$ra
    addiu	$sp,$sp,80
.end __glFogLitCIColor

# Function: ChangeMaterialEmission
# Declared: Line 954 (Source lines: 959-971)
# Address: 0x0dab95a4 - 0x0dab9624 (Size: 128 bytes, Frame: 0)
.ent ChangeMaterialEmission
ChangeMaterialEmission:
    # Line 961
    lwc1	$f2,30764($a0)
    lwc1	$f1,416($a0)
    mul.s	$f1,$f1,$f2
    # Line 959
    lwc1	$f4,30756($a0)
    lwc1	$f3,408($a0)
    # Line 960
    lwc1	$f0,30760($a0)
    # Line 959
    mul.s	$f3,$f3,$f4
    # Line 960
    lwc1	$f4,412($a0)
    mul.s	$f4,$f4,$f0
    # Line 965
    swc1	$f1,56($a1)
    # Line 963
    swc1	$f3,48($a1)
    # Line 964
    swc1	$f4,52($a1)
    # Line 966
    lwc1	$f0,30796($a0)
    lwc1	$f2,420($a0)
    mul.s	$f2,$f2,$f0
    swc1	$f2,60($a1)
    # Line 968
    lwc1	$f2,0($a1)
    lwc1	$f0,1308($a0)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a2)
    # Line 969
    lwc1	$f0,1312($a0)
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    # Line 970
    lwc1	$f2,1316($a0)
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 971
    jr	$ra
    # Line 970
    swc1	$f0,8($a2)
.end ChangeMaterialEmission

# Function: ChangeMaterialSpecular
# Declared: Line 973 (Source lines: 982-1005)
# Address: 0x0dab9624 - 0x0dab96a4 (Size: 128 bytes, Frame: 0)
.ent ChangeMaterialSpecular
ChangeMaterialSpecular:
    # Line 982
    lwc1	$f4,408($a0)
    # Line 983
    lwc1	$f5,412($a0)
    # Line 984
    lwc1	$f6,416($a0)
    # Line 986
    swc1	$f4,32($a1)
    # Line 987
    swc1	$f5,36($a1)
    # Line 988
    swc1	$f6,40($a1)
    # Line 989
    lwc1	$f0,420($a0)
    # Line 996
    addiu	$at,$a0,28148
    xor	$at,$at,$a2
    # Line 989
    swc1	$f0,44($a1)
    # Line 996
    sltiu	$at,$at,1
    lw	$a4,28188($a0)
    sll	$a3,$at,0x2
    subu	$a3,$a3,$at
    beqz	$a4,.L0dab969c
    sll	$a3,$a3,0x4
    # Line 998
    lw	$v1,96($a4)
.L0dab9668:
    # Line 1001
    lwc1	$f3,32($v1)
    mul.s	$f3,$f3,$f4
    addu	$v0,$a3,$a4
    swc1	$f3,32($v0)
    # Line 1002
    lwc1	$f2,36($v1)
    mul.s	$f2,$f2,$f5
    swc1	$f2,36($v0)
    # Line 1003
    lwc1	$f1,40($v1)
    mul.s	$f1,$f1,$f6
    swc1	$f1,40($v0)
    # Line 996
    lw	$a4,200($a4)
    bnezl	$a4,.L0dab9668
    # Line 998
    lw	$v1,96($a4)
.L0dab969c:
    # Line 1005
    jr	$ra
    nop
.end ChangeMaterialSpecular

# Function: ChangeMaterialAmbient
# Declared: Line 1007 (Source lines: 1016-1043)
# Address: 0x0dab96a4 - 0x0dab9760 (Size: 188 bytes, Frame: 0)
.ent ChangeMaterialAmbient
ChangeMaterialAmbient:
    # Line 1016
    lwc1	$f4,408($a0)
    # Line 1017
    lwc1	$f5,412($a0)
    # Line 1018
    lwc1	$f6,416($a0)
    # Line 1020
    swc1	$f4,0($a1)
    # Line 1021
    swc1	$f5,4($a1)
    # Line 1022
    swc1	$f6,8($a1)
    # Line 1023
    lwc1	$f2,420($a0)
    swc1	$f2,12($a1)
    # Line 1025
    lwc1	$f1,1308($a0)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,48($a1)
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 1026
    lwc1	$f3,1312($a0)
    mul.s	$f3,$f3,$f5
    lwc1	$f2,52($a1)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a2)
    # Line 1027
    lwc1	$f1,1316($a0)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,56($a1)
    add.s	$f0,$f0,$f1
    # Line 1034
    addiu	$at,$a0,28148
    xor	$at,$at,$a2
    # Line 1027
    swc1	$f0,8($a2)
    # Line 1034
    sltiu	$at,$at,1
    lw	$a4,28188($a0)
    sll	$a3,$at,0x2
    subu	$a3,$a3,$at
    beqz	$a4,.L0dab9758
    sll	$a3,$a3,0x4
    # Line 1036
    lw	$v1,96($a4)
.L0dab9724:
    # Line 1039
    lwc1	$f1,0($v1)
    mul.s	$f1,$f1,$f4
    addu	$v0,$a3,$a4
    swc1	$f1,0($v0)
    # Line 1040
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f5
    swc1	$f0,4($v0)
    # Line 1041
    lwc1	$f3,8($v1)
    mul.s	$f3,$f3,$f6
    swc1	$f3,8($v0)
    # Line 1034
    lw	$a4,200($a4)
    bnezl	$a4,.L0dab9724
    # Line 1036
    lw	$v1,96($a4)
.L0dab9758:
    # Line 1043
    jr	$ra
    nop
.end ChangeMaterialAmbient

# Function: ChangeMaterialDiffuse
# Declared: Line 1045 (Source lines: 1047-1085)
# Address: 0x0dab9760 - 0x0dab9824 (Size: 196 bytes, Frame: 0)
.ent ChangeMaterialDiffuse
ChangeMaterialDiffuse:
    # Line 1056
    lwc1	$f5,416($a0)
    # Line 1055
    lwc1	$f4,412($a0)
    # Line 1057
    lwc1	$f7,420($a0)
    # Line 1047
    lui	$v0,0x14
    addiu	$v0,$v0,-7928
    # addu	at,t9,v0
    # Line 1062
    mtc1	$zero,$f8
    # Line 1054
    lwc1	$f6,408($a0)
    # Line 1062
    swc1	$f7,28($a1)
    c.lt.s	$f7,$f8
    # Line 1061
    swc1	$f5,24($a1)
    # Line 1060
    swc1	$f4,20($a1)
    # Line 1062
    bc1f	.L0dab9808
    # Line 1059
    swc1	$f6,16($a1)
    # Line 1065
    mov.s	$f7,$f8
.L0dab979c:
    # Line 1069
    lwc1	$f0,30796($a0)
.L0dab97a0:
    mul.s	$f0,$f0,$f7
    # Line 1076
    addiu	$v0,$a0,28148
    xor	$v0,$v0,$a2
    # Line 1069
    swc1	$f0,36($a2)
    # Line 1076
    sltiu	$v0,$v0,1
    lw	$a4,28188($a0)
    sll	$a5,$v0,0x2
    subu	$a5,$a5,$v0
    beqz	$a4,.L0dab9800
    sll	$a5,$a5,0x4
    # Line 1078
    lw	$a1,96($a4)
.L0dab97cc:
    # Line 1081
    lwc1	$f3,16($a1)
    mul.s	$f3,$f3,$f6
    addu	$v1,$a5,$a4
    swc1	$f3,16($v1)
    # Line 1082
    lwc1	$f2,20($a1)
    mul.s	$f2,$f2,$f4
    swc1	$f2,20($v1)
    # Line 1083
    lwc1	$f1,24($a1)
    mul.s	$f1,$f1,$f5
    swc1	$f1,24($v1)
    # Line 1076
    lw	$a4,200($a4)
    bnezl	$a4,.L0dab97cc
    # Line 1078
    lw	$a1,96($a4)
.L0dab9800:
    # Line 1085
    jr	$ra
    nop
.L0dab9808:
    # Line 1065
    lwc1	$f8,3284($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0dab97a0
    # Line 1069
    lwc1	$f0,30796($a0)
    b	.L0dab979c
    # Line 1067
    mov.s	$f7,$f8
.end ChangeMaterialDiffuse

# Function: ChangeMaterialAmbientAndDiffuse
# Declared: Line 1087 (Source lines: 1090-1141)
# Address: 0x0dab9824 - 0x0dab9958 (Size: 308 bytes, Frame: 0)
.ent ChangeMaterialAmbientAndDiffuse
ChangeMaterialAmbientAndDiffuse:
    # Line 1099
    lwc1	$f5,416($a0)
    # Line 1100
    lwc1	$f7,420($a0)
    # Line 1098
    lwc1	$f4,412($a0)
    # Line 1097
    lwc1	$f6,408($a0)
    # Line 1110
    swc1	$f7,28($a1)
    # Line 1109
    swc1	$f5,24($a1)
    # Line 1108
    swc1	$f4,20($a1)
    # Line 1107
    swc1	$f6,16($a1)
    # Line 1105
    swc1	$f7,12($a1)
    # Line 1104
    swc1	$f5,8($a1)
    # Line 1103
    swc1	$f4,4($a1)
    # Line 1102
    swc1	$f6,0($a1)
    # Line 1112
    lwc1	$f0,1308($a0)
    mul.s	$f0,$f0,$f6
    lwc1	$f8,48($a1)
    add.s	$f8,$f8,$f0
    swc1	$f8,0($a2)
    # Line 1113
    lwc1	$f3,1312($a0)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,52($a1)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a2)
    # Line 1114
    lwc1	$f1,1316($a0)
    # Line 1090
    lui	$v0,0x14
    addiu	$v0,$v0,-8124
    # Line 1114
    mul.s	$f1,$f1,$f5
    # Line 1090
    # addu	at,t9,v0
    # Line 1114
    mtc1	$zero,$f8
    lwc1	$f0,56($a1)
    c.lt.s	$f7,$f8
    add.s	$f0,$f0,$f1
    bc1f	.L0dab993c
    swc1	$f0,8($a2)
    # Line 1117
    mov.s	$f7,$f8
.L0dab98ac:
    # Line 1121
    lwc1	$f1,30796($a0)
.L0dab98b0:
    mul.s	$f1,$f1,$f7
    # Line 1127
    addiu	$v0,$a0,28148
    xor	$v0,$v0,$a2
    # Line 1121
    swc1	$f1,36($a2)
    # Line 1127
    sltiu	$v0,$v0,1
    lw	$a4,28188($a0)
    sll	$a5,$v0,0x2
    subu	$a5,$a5,$v0
    beqz	$a4,.L0dab9934
    sll	$a5,$a5,0x4
    # Line 1129
    lw	$a1,96($a4)
.L0dab98dc:
    # Line 1132
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f6
    addu	$v1,$a5,$a4
    swc1	$f3,0($v1)
    # Line 1133
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f4
    swc1	$f2,4($v1)
    # Line 1134
    lwc1	$f1,8($a1)
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($v1)
    # Line 1137
    lwc1	$f0,16($a1)
    mul.s	$f0,$f0,$f6
    swc1	$f0,16($v1)
    # Line 1138
    lwc1	$f3,20($a1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($v1)
    # Line 1139
    lwc1	$f2,24($a1)
    mul.s	$f2,$f2,$f5
    swc1	$f2,24($v1)
    # Line 1127
    lw	$a4,200($a4)
    bnezl	$a4,.L0dab98dc
    # Line 1129
    lw	$a1,96($a4)
.L0dab9934:
    # Line 1141
    jr	$ra
    nop
.L0dab993c:
    # Line 1117
    lwc1	$f8,3284($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0dab98b0
    # Line 1121
    lwc1	$f1,30796($a0)
    b	.L0dab98ac
    # Line 1119
    mov.s	$f7,$f8
.end ChangeMaterialAmbientAndDiffuse

# Function: __glChangeOneMaterialColor
# Declared: Line 1145 (Source lines: 1146-1166)
# Address: 0x0dab9958 - 0x0dab99ec (Size: 148 bytes, Frame: 48)
.globl __glChangeOneMaterialColor
.ent __glChangeOneMaterialColor
__glChangeOneMaterialColor:
    # Line 1146
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x14
    addiu	$v1,$v1,-8432
    beq	$at,$v0,.L0dab99b8
    nop
.L0dab9984:
    # Line 1157
    lw	$t9,12024($s0)
.L0dab9988:
    move	$a0,$s0
    lw	$a2,28196($s0)
    jalr	$t9
    lw	$a1,28192($s0)
    lw	$a1,1696($s0)
    andi	$a1,$a1,0x40
    beqz	$a1,.L0dab99d8
    ld	$ra,16($sp)
.L0dab99a8:
    # ld	gp,8(sp)
    # Line 1166
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab99b8:
    # Line 1146
    lw	$at,28096($s0)
    beqz	$at,.L0dab9984
    sd	$ra,16($sp)
    # Line 1154
    lw	$t9,12028($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0dab9988
    # Line 1157
    lw	$t9,12024($s0)
.L0dab99d8:
    # Line 1164
    # lw $t9, -23276($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$s0
    b	.L0dab99a8
    ld	$ra,16($sp)
.end __glChangeOneMaterialColor

# Function: __glChangeBothMaterialColors
# Declared: Line 1168 (Source lines: 1169-1189)
# Address: 0x0dab99ec - 0x0dab9a94 (Size: 168 bytes, Frame: 48)
.globl __glChangeBothMaterialColors
.ent __glChangeBothMaterialColors
__glChangeBothMaterialColors:
    # Line 1169
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x14
    addiu	$v1,$v1,-8580
    beq	$at,$v0,.L0dab9a60
    nop
.L0dab9a18:
    # Line 1179
    lw	$t9,12024($s0)
.L0dab9a1c:
    move	$a0,$s0
    addiu	$a2,$s0,28108
    jalr	$t9
    addiu	$a1,$s0,1328
    # Line 1180
    lw	$t9,12024($s0)
    move	$a0,$s0
    addiu	$a2,$s0,28148
    jalr	$t9
    addiu	$a1,$s0,1408
    lw	$a1,1696($s0)
    andi	$a1,$a1,0x40
    beqz	$a1,.L0dab9a80
    ld	$ra,16($sp)
.L0dab9a50:
    # ld	gp,8(sp)
    # Line 1189
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab9a60:
    # Line 1169
    lw	$at,28096($s0)
    beqz	$at,.L0dab9a18
    sd	$ra,16($sp)
    # Line 1176
    lw	$t9,12028($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0dab9a1c
    # Line 1179
    lw	$t9,12024($s0)
.L0dab9a80:
    # Line 1187
    # lw $t9, -23276($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$s0
    b	.L0dab9a50
    ld	$ra,16($sp)
.end __glChangeBothMaterialColors

# Function: ComputeMaterialState
# Declared: Line 1203 (Source lines: 1205-1269)
# Address: 0x0dab9a94 - 0x0dab9bf8 (Size: 356 bytes, Frame: 208)
.ent ComputeMaterialState
ComputeMaterialState:
    # Line 1205
    andi	$at,$a3,0x1b
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s2,24($sp)
    move	$s2,$a1
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,32($sp)
    beqz	$at,.L0dab9be0
    move	$s3,$a3
    # Line 1214
    lw	$a1,32($s0)
    beqz	$a1,.L0dab9b8c
    lwc1	$f4,64($s2)
    lwc1	$f0,16($s0)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0dab9b8c
.L0dab9adc:
    # Line 1247
    andi	$v0,$s3,0x9
    beqz	$v0,.L0dab9b34
    # Line 1256
    andi	$v1,$s3,0x2
    # Line 1252
    lwc1	$f1,1308($s1)
    lwc1	$f0,0($s2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,48($s2)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s0)
    # Line 1254
    lwc1	$f2,1312($s1)
    lwc1	$f1,4($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,52($s2)
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s0)
    # Line 1256
    lwc1	$f3,1316($s1)
    lwc1	$f2,8($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,56($s2)
    add.s	$f1,$f1,$f2
    swc1	$f1,8($s0)
    andi	$v1,$s3,0x2
.L0dab9b34:
    beqz	$v1,.L0dab9b78
    # Line 1269
    ld	$s3,32($sp)
    # Line 1262
    lwc1	$f5,30796($s1)
    lwc1	$f4,28($s2)
    mul.s	$f4,$f4,$f5
    mtc1	$zero,$f5
    c.lt.s	$f4,$f5
    nop
    bc1t	.L0dab9bd8
    swc1	$f4,36($s0)
    # Line 1264
    lwc1	$f5,30796($s1)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0dab9b78
    # Line 1269
    ld	$s3,32($sp)
    # Line 1266
    swc1	$f5,36($s0)
.L0dab9b74:
    # Line 1269
    ld	$s3,32($sp)
.L0dab9b78:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab9b8c:
    sdc1	$f4,0($sp)
    # Line 1243
    # lw $t9, -27264($gp) # &__glFreeSpecLUT
    move	$a0,$s1
    sd	$ra,40($sp)
    jal	__glFreeSpecLUT
    # Line 1241
    swc1	$f4,16($s0)
    # Line 1244
    # lw $t9, -27268($gp) # &__glCreateSpecLUT
    move	$a0,$s1
    jal	__glCreateSpecLUT
    ldc1	$f13,0($sp)
    sw	$v0,32($s0)
    # Line 1245
    lwc1	$f1,4($v0)
    ld	$ra,40($sp)
    swc1	$f1,24($s0)
    # Line 1247
    addiu	$a4,$v0,16
    # Line 1246
    lwc1	$f0,8($v0)
    # Line 1247
    sw	$a4,20($s0)
    b	.L0dab9adc
    # Line 1246
    swc1	$f0,28($s0)
.L0dab9bd8:
    # Line 1264
    b	.L0dab9b74
    swc1	$f5,36($s0)
.L0dab9be0:
    # Line 1211
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end ComputeMaterialState

# Function: ComputeLightState
# Declared: Line 1286 (Source lines: 1287-1376)
# Address: 0x0dab9bf8 - 0x0dab9eb8 (Size: 704 bytes, Frame: 160)
.ent ComputeLightState
ComputeLightState:
    # Line 1287
    addiu	$sp,$sp,-160
    sd	$s2,16($sp)
    move	$s2,$a0
    sd	$s4,32($sp)
    # Line 1301
    move	$s4,$zero
    sd	$s3,24($sp)
    # Line 1300
    lw	$s3,1704($a0)
    sd	$s5,56($sp)
    # Line 1299
    addiu	$s5,$a0,28188
    sd	$s0,40($sp)
    # Line 1301
    lw	$a1,3328($a0)
    # Line 1298
    lw	$s0,28104($a0)
    sd	$s1,48($sp)
    # Line 1301
    blez	$a1,.L0dab9e94
    # Line 1297
    lw	$s1,1488($a0)
    sd	$ra,80($sp)
    sd	$s7,72($sp)
    sd	$s6,88($sp)
    # Line 1301
    li	$s6,1
    sdc1	$f28,128($sp)
    lwc1	$f28,_lit_3de147ae
    sdc1	$f26,104($sp)
    lwc1	$f26,_lit_3f170a3d
    sdc1	$f24,120($sp)
    lwc1	$f24,_lit_3e99999a
    sdc1	$f20,96($sp)
    mtc1	$zero,$f20
    sdc1	$f30,136($sp)
    lwc1	$f30,_lit_3c8efa35
    sdc1	$f22,112($sp)
    b	.L0dab9d50
    lwc1	$f22,_lit_43340000
.L0dab9c78:
    # Line 1334
    # lw $t9, -27268($gp) # &__glCreateSpecLUT
    move	$a0,$s2
    jal	__glCreateSpecLUT
    mov.s	$f13,$f4
    sw	$v0,216($s0)
    # Line 1335
    lwc1	$f1,4($v0)
    swc1	$f1,208($s0)
    # Line 1336
    lwc1	$f0,8($v0)
    # Line 1337
    addiu	$at,$v0,16
    sw	$at,204($s0)
    # Line 1336
    swc1	$f0,212($s0)
.L0dab9ca4:
    # Line 1340
    lwc1	$f2,104($s1)
.L0dab9ca8:
    c.eq.s	$f2,$f20
    nop
    bc1t	.L0dab9cc8
    swc1	$f2,100($s0)
    # Line 1342
    lwc1	$f0,104($s1)
    lwc1	$f3,3284($s2)
    div.s	$f3,$f3,$f0
    swc1	$f3,152($s0)
.L0dab9cc8:
    # Line 1344
    lwc1	$f2,108($s1)
    swc1	$f2,104($s0)
    # Line 1345
    lwc1	$f1,112($s1)
    swc1	$f1,108($s0)
    lbu	$v0,3105($s2)
    beqzl	$v0,.L0dab9d30
    # Line 1355
    lbu	$v1,1324($s2)
    # Line 1352
    lwc1	$f2,36($s1)
    lwc1	$f0,32($s1)
    mul.s	$f2,$f2,$f26
    lwc1	$f1,40($s1)
    mul.s	$f0,$f0,$f24
    mul.s	$f1,$f1,$f28
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,192($s0)
    # Line 1355
    lwc1	$f1,20($s1)
    lwc1	$f3,16($s1)
    mul.s	$f1,$f1,$f26
    lwc1	$f0,24($s1)
    mul.s	$f3,$f3,$f24
    mul.s	$f0,$f0,$f28
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    swc1	$f3,196($s0)
    lbu	$v1,1324($s2)
.L0dab9d30:
    beqzl	$v1,.L0dab9e04
    lbu	$v0,156($s0)
    # Line 1372
    sb	$s6,220($s0)
.L0dab9d3c:
    lw	$a1,3328($s2)
.L0dab9d40:
    # Line 1302
    addiu	$s0,$s0,224
    slt	$a2,$s4,$a1
    beqz	$a2,.L0dab9e70
    addiu	$s1,$s1,116
.L0dab9d50:
    addiu	$s4,$s4,1
    # Line 1301
    andi	$at,$s3,0x1
    beqz	$at,.L0dab9d40
    # Line 1302
    srl	$s3,$s3,0x1
    # Line 1306
    sw	$s0,0($s5)
    # Line 1307
    sw	$s1,96($s0)
    # Line 1314
    lwc1	$f1,64($s1)
    swc1	$f1,116($s0)
    lwc1	$f0,68($s1)
    swc1	$f0,120($s0)
    lwc1	$f3,72($s1)
    swc1	$f3,124($s0)
    lwc1	$f2,76($s1)
    swc1	$f2,128($s0)
    # Line 1315
    lwc1	$f1,100($s1)
    c.eq.s	$f1,$f22
    li	$s7,1
    bc1tl	.L0dab9d9c
    move	$s7,$zero
.L0dab9d9c:
    # Line 1308
    addiu	$s5,$s0,200
    # Line 1315
    beqz	$s7,.L0dab9ca4
    sb	$s7,156($s0)
    # Line 1317
    # lw $t9, -22988($gp) # &cosf
    lwc1	$f12,100($s1)
    jal	cosf
    mul.s	$f12,$f12,$f30
    beqz	$s7,.L0dab9ca4
    swc1	$f0,148($s0)
    # Line 1321
    lw	$a1,216($s0)
    beqz	$a1,.L0dab9de0
    lwc1	$f5,96($s1)
    lwc1	$f0,112($s0)
    c.eq.s	$f0,$f5
    nop
    bc1tl	.L0dab9ca8
    # Line 1340
    lwc1	$f2,104($s1)
.L0dab9de0:
    # Line 1329
    mov.s	$f4,$f5
    beqz	$a1,.L0dab9c78
    swc1	$f5,112($s0)
    # Line 1332
    # lw $t9, -27264($gp) # &__glFreeSpecLUT
    sdc1	$f4,64($sp)
    jal	__glFreeSpecLUT
    move	$a0,$s2
    b	.L0dab9c78
    ldc1	$f4,64($sp)
.L0dab9e04:
    # Line 1355
    bnezl	$v0,.L0dab9d3c
    # Line 1372
    sb	$s6,220($s0)
    # Line 1359
    lwc1	$f1,128($s0)
    c.eq.s	$f1,$f20
    nop
    bc1fl	.L0dab9d3c
    # Line 1372
    sb	$s6,220($s0)
    # Line 1364
    lw	$t9,11912($s2)
    addiu	$a1,$s0,116
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1365
    lwc1	$f6,0($sp)
    swc1	$f6,176($s0)
    # Line 1366
    lwc1	$f5,4($sp)
    swc1	$f5,180($s0)
    # Line 1367
    lwc1	$f4,8($sp)
    swc1	$f4,184($s0)
    # Line 1368
    lwc1	$f3,8($sp)
    lwc1	$f2,3284($s2)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($sp)
    # Line 1369
    lw	$t9,11912($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$s0,160
    # Line 1370
    b	.L0dab9d3c
    sb	$zero,220($s0)
.L0dab9e70:
    ldc1	$f30,136($sp)
    ldc1	$f28,128($sp)
    ldc1	$f24,120($sp)
    ldc1	$f22,112($sp)
    ldc1	$f26,104($sp)
    ldc1	$f20,96($sp)
    ld	$s7,72($sp)
    ld	$ra,80($sp)
    ld	$s6,88($sp)
.L0dab9e94:
    # Line 1376
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,32($sp)
    # Line 1375
    sw	$zero,0($s5)
    # Line 1376
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end ComputeLightState

# Function: ComputeLightProcs
# Declared: Line 1388 (Source lines: 1390-1441)
# Address: 0x0dab9eb8 - 0x0dab9fe0 (Size: 296 bytes, Frame: 0)
.ent ComputeLightProcs
ComputeLightProcs:
    # Line 1393
    lw	$a2,28188($a0)
    beqz	$a2,.L0dab9ed4
    # Line 1390
    move	$a3,$zero
    # Line 1393
    lbu	$at,220($a2)
.L0dab9ec8:
    beqzl	$at,.L0dab9f38
    lw	$a2,200($a2)
    # Line 1395
    li	$a3,1
.L0dab9ed4:
    # Line 1400
    lw	$v0,1696($a0)
.L0dab9ed8:
    # Line 1405
    la	$a2,__glCalcCIColor
    # Line 1428
    li	$v1,7168
    # Line 1400
    andi	$v0,$v0,0x40
    beqz	$v0,.L0dab9f70
    # Line 1414
    lui	$a1,0x2
    # Line 1400
    lbu	$a4,3105($a0)
    beqz	$a4,.L0dab9f5c
    nop
    beqzl	$a3,.L0dab9fb4
    # Line 1403
    la	$a2,__glFastCalcCIColor
    # Line 1405
    sw	$a2,12012($a0)
.L0dab9f04:
    # Line 1414
    lw	$a3,30440($a0)
    # Line 1415
    li	$v0,7168
    # Line 1414
    andi	$v1,$a3,0x2000
    beqz	$v1,.L0dab9f30
    sw	$a2,12020($a0)
    and	$a1,$a3,$a1
    beqz	$a1,.L0dab9f30
    nop
    # Line 1415
    lw	$at,3092($a0)
    beq	$at,$v0,.L0dab9f48
    nop
.L0dab9f30:
    # Line 1441
    jr	$ra
    nop
.L0dab9f38:
    # Line 1393
    bnezl	$a2,.L0dab9ec8
    lbu	$at,220($a2)
    b	.L0dab9ed8
    # Line 1400
    lw	$v0,1696($a0)
.L0dab9f48:
    # Line 1418
    beqz	$a4,.L0dab9fc4
    sw	$a2,12016($a0)
    # Line 1420
    la	$v1,__glFogLitCIColor
    # Line 1441
    jr	$ra
    # Line 1420
    sw	$v1,12012($a0)
.L0dab9f5c:
    # Line 1405
    beqz	$a3,.L0dab9fd0
    # Line 1409
    la	$a2,__glFastCalcRGBColor
    # Line 1411
    la	$a2,__glCalcRGBColor
    b	.L0dab9f04
    sw	$a2,12012($a0)
.L0dab9f70:
    # Line 1426
    lw	$a3,30440($a0)
    # Line 1422
    la	$a2,__glNop
    # Line 1426
    andi	$a1,$a3,0x2000
    beqz	$a1,.L0dab9fbc
    sw	$a2,12020($a0)
    lui	$at,0x2
    and	$at,$a3,$at
    beqz	$at,.L0dab9fbc
    nop
    # Line 1428
    lw	$v0,3092($a0)
    bne	$v0,$v1,.L0dab9fbc
    # Line 1432
    la	$at,__glFogCIColor
    # Line 1428
    lbu	$a1,3105($a0)
    beqz	$a1,.L0dab9fd8
    # Line 1434
    la	$v1,__glFogRGBColor
    # Line 1441
    jr	$ra
    # Line 1432
    sw	$at,12012($a0)
.L0dab9fb4:
    # Line 1403
    b	.L0dab9f04
    sw	$a2,12012($a0)
.L0dab9fbc:
    # Line 1441
    jr	$ra
    # Line 1437
    sw	$a2,12012($a0)
.L0dab9fc4:
    # Line 1422
    la	$v0,__glFogLitRGBColor
    # Line 1441
    jr	$ra
    # Line 1422
    sw	$v0,12012($a0)
.L0dab9fd0:
    # Line 1409
    b	.L0dab9f04
    sw	$a2,12012($a0)
.L0dab9fd8:
    # Line 1441
    jr	$ra
    # Line 1434
    sw	$v1,12012($a0)
.end ComputeLightProcs

# Function: ComputeLightMaterialState
# Declared: Line 1449 (Source lines: 1451-1520)
# Address: 0x0dab9fe0 - 0x0daba180 (Size: 416 bytes, Frame: 48)
.ent ComputeLightMaterialState
ComputeLightMaterialState:
    # Line 1466
    andi	$t0,$a1,0x4
    andi	$t3,$a1,0x2
    andi	$t1,$a1,0x1
    # Line 1451
    or	$a5,$a1,$a2
    andi	$at,$a5,0x7
    beqz	$at,.L0daba178
    addiu	$sp,$sp,-48
    # Line 1466
    lw	$a4,28188($a0)
    beqz	$a4,.L0daba170
    sd	$a5,0($sp)
    andi	$t8,$a2,0x1
    ld	$a5,0($sp)
    andi	$t2,$a2,0x2
    andi	$t9,$a2,0x4
    andi	$a6,$a5,0x4
    andi	$a7,$a5,0x2
    b	.L0daba130
    andi	$a5,$a5,0x1
.L0daba028:
    # Line 1479
    beqz	$t8,.L0daba054
    nop
    # Line 1482
    lwc1	$f2,1408($a0)
    mul.s	$f2,$f2,$f4
    swc1	$f2,48($a4)
    # Line 1483
    lwc1	$f1,1412($a0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,52($a4)
    # Line 1484
    lwc1	$f0,1416($a0)
    mul.s	$f0,$f0,$f6
    swc1	$f0,56($a4)
.L0daba054:
    beqz	$a7,.L0daba0bc
    nop
    # Line 1491
    lwc1	$f6,24($a1)
    # Line 1490
    lwc1	$f5,20($a1)
    # Line 1491
    beqz	$t3,.L0daba090
    # Line 1489
    lwc1	$f4,16($a1)
    # Line 1493
    lwc1	$f1,1344($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,16($a4)
    # Line 1494
    lwc1	$f0,1348($a0)
    mul.s	$f0,$f0,$f5
    swc1	$f0,20($a4)
    # Line 1495
    lwc1	$f3,1352($a0)
    mul.s	$f3,$f3,$f6
    swc1	$f3,24($a4)
.L0daba090:
    beqz	$t2,.L0daba0bc
    nop
    # Line 1498
    lwc1	$f0,1424($a0)
    mul.s	$f0,$f0,$f4
    swc1	$f0,64($a4)
    # Line 1499
    lwc1	$f3,1428($a0)
    mul.s	$f3,$f3,$f5
    swc1	$f3,68($a4)
    # Line 1500
    lwc1	$f2,1432($a0)
    mul.s	$f2,$f2,$f6
    swc1	$f2,72($a4)
.L0daba0bc:
    beqzl	$a6,.L0daba128
    # Line 1466
    lw	$a4,200($a4)
    # Line 1507
    lwc1	$f6,40($a1)
    # Line 1506
    lwc1	$f5,36($a1)
    # Line 1507
    beqz	$t0,.L0daba0f8
    # Line 1505
    lwc1	$f4,32($a1)
    # Line 1509
    lwc1	$f3,1360($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,32($a4)
    # Line 1510
    lwc1	$f2,1364($a0)
    mul.s	$f2,$f2,$f5
    swc1	$f2,36($a4)
    # Line 1511
    lwc1	$f1,1368($a0)
    mul.s	$f1,$f1,$f6
    swc1	$f1,40($a4)
.L0daba0f8:
    beqzl	$t9,.L0daba128
    # Line 1466
    lw	$a4,200($a4)
    # Line 1514
    lwc1	$f2,1440($a0)
    mul.s	$f2,$f2,$f4
    swc1	$f2,80($a4)
    # Line 1515
    lwc1	$f1,1444($a0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,84($a4)
    # Line 1516
    lwc1	$f0,1448($a0)
    mul.s	$f0,$f0,$f6
    swc1	$f0,88($a4)
    # Line 1466
    lw	$a4,200($a4)
.L0daba128:
    beqz	$a4,.L0daba170
    nop
.L0daba130:
    # Line 1467
    beqz	$a5,.L0daba054
    lw	$a1,96($a4)
    # Line 1475
    lwc1	$f6,8($a1)
    # Line 1474
    lwc1	$f5,4($a1)
    # Line 1475
    beqz	$t1,.L0daba028
    # Line 1473
    lwc1	$f4,0($a1)
    # Line 1477
    lwc1	$f1,1328($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a4)
    # Line 1478
    lwc1	$f0,1332($a0)
    mul.s	$f0,$f0,$f5
    swc1	$f0,4($a4)
    # Line 1479
    lwc1	$f3,1336($a0)
    mul.s	$f3,$f3,$f6
    b	.L0daba028
    swc1	$f3,8($a4)
.L0daba170:
    # Line 1520
    jr	$ra
    addiu	$sp,$sp,48
.L0daba178:
    # Line 1461
    jr	$ra
    addiu	$sp,$sp,48
.end ComputeLightMaterialState

# Function: __glValidateMaterial
# Declared: Line 1534 (Source lines: 1535-1541)
# Address: 0x0daba180 - 0x0daba210 (Size: 144 bytes, Frame: 208)
.globl __glValidateMaterial
.ent __glValidateMaterial
__glValidateMaterial:
    # Line 1535
    move	$a3,$a1
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    move	$s0,$a2
    # sd	gp,24(sp)
    sd	$ra,16($sp)
    lui	$ra,0x14
    addiu	$ra,$ra,-10520
    # addu	gp,t9,ra
    # lw $t9, -32720($gp) # &sub_0dac0000
    # Line 1536
    addiu	$a2,$a0,28108
    sd	$a1,32($sp)
    # Line 1535
    addiu	$t9,$t9,-25964
    # Line 1536
    bal __glChangeBothMaterialColors
    addiu	$a1,$a0,1328
    # Line 1538
    move	$a0,$s1
    # lw $t9, -32720($gp) # &sub_0dac0000
    addiu	$a2,$s1,28148
    addiu	$a1,$s1,1408
    addiu	$t9,$t9,-25964
    bal __glChangeBothMaterialColors
    move	$a3,$s0
    # Line 1540
    # lw $t9, -32720($gp) # &sub_0dac0000
    move	$a0,$s1
    ld	$a1,32($sp)
    addiu	$t9,$t9,-24608
    bal __glChangeBothMaterialColors
    move	$a2,$s0
    # ld	gp,24(sp)
    # Line 1541
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glValidateMaterial

# Function: __glValidateLighting
# Declared: Line 1558 (Source lines: 1559-1567)
# Address: 0x0daba210 - 0x0daba2a0 (Size: 144 bytes, Frame: 48)
.globl __glValidateLighting
.ent __glValidateLighting
__glValidateLighting:
    # Line 1559
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lw	$at,11764($a0)
    lui	$v0,0x14
    addiu	$v0,$v0,-10664
    andi	$at,$at,0x20
    beqz	$at,.L0daba284
    nop
    # Line 1561
    # lw $t9, -32720($gp) # &sub_0dac0000
    addiu	$t9,$t9,-25608
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    # Line 1562
    # lw $t9, -32720($gp) # &sub_0dac0000
    addiu	$t9,$t9,-24904
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    # Line 1563
    # lw $t9, -28320($gp) # &__glValidateMaterial
    move	$a0,$s0
    li	$a2,63
    bal __glValidateMaterial
    li	$a1,63
    ld	$ra,16($sp)
    ld	$s0,0($sp)
.L0daba278:
    # ld	gp,8(sp)
    # Line 1567
    jr	$ra
    addiu	$sp,$sp,48
.L0daba284:
    # Line 1565
    # lw $t9, -32720($gp) # &sub_0dac0000
    addiu	$t9,$t9,-24904
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    ld	$ra,16($sp)
    b	.L0daba278
    ld	$s0,0($sp)
.end __glValidateLighting

# Function: __glGenericPickColorMaterialProcs
# Declared: Line 1569 (Source lines: 1570-1648)
# Address: 0x0daba2a0 - 0x0daba3d8 (Size: 312 bytes, Frame: 0)
.globl __glGenericPickColorMaterialProcs
.ent __glGenericPickColorMaterialProcs
__glGenericPickColorMaterialProcs:
    # Line 1570
    lbu	$v0,3104($a0)
    lui	$v1,0x14
    addiu	$v1,$v1,-10808
    beqz	$v0,.L0daba380
    nop
    lw	$a3,1696($a0)
    # Line 1573
    li	$v1,1029
    # Line 1570
    andi	$a1,$a3,0x80
    beqz	$a1,.L0daba324
    # Line 1573
    li	$v0,1028
    lw	$a3,1296($a0)
    li	$a2,1032
    beq	$a3,$a2,.L0daba338
    # Line 1580
    la	$a1,__glChangeOneMaterialColor
    # Line 1573
    beq	$a3,$v0,.L0daba34c
    # Line 1581
    addiu	$a2,$a0,1328
    # Line 1573
    beq	$a3,$v1,.L0daba368
    # Line 1585
    la	$a1,__glChangeOneMaterialColor
.L0daba2e8:
    # Line 1590
    lw	$a3,1300($a0)
    li	$v0,4608
    li	$a1,5632
    beq	$a3,$a1,.L0daba38c
    li	$a2,4610
    beq	$a3,$a2,.L0daba39c
    li	$a1,5634
    beq	$a3,$v0,.L0daba3ac
    li	$v1,4609
    beq	$a3,$v1,.L0daba3bc
    # Line 1625
    la	$v1,sub_0dac0000
    # Line 1590
    beq	$a3,$a1,.L0daba360
    # Line 1625
    addiu	$v1,$v1,-26588
    # Line 1648
    jr	$ra
    nop
.L0daba324:
    # Line 1628
    andi	$a2,$a3,0x40
    beqz	$a2,.L0daba3cc
    # Line 1636
    la	$v0,__glNop
    # Line 1648
    jr	$ra
    # Line 1636
    sw	$v0,12008($a0)
.L0daba338:
    # Line 1577
    sw	$zero,28196($a0)
    # Line 1575
    la	$v1,__glChangeBothMaterialColors
    # Line 1576
    sw	$zero,28192($a0)
    # Line 1578
    b	.L0daba2e8
    # Line 1575
    sw	$v1,12008($a0)
.L0daba34c:
    # Line 1581
    sw	$a2,28192($a0)
    # Line 1580
    sw	$a1,12008($a0)
    # Line 1582
    addiu	$v0,$a0,28108
    # Line 1583
    b	.L0daba2e8
    # Line 1582
    sw	$v0,28196($a0)
.L0daba360:
    # Line 1648
    jr	$ra
    # Line 1625
    sw	$v1,12024($a0)
.L0daba368:
    # Line 1585
    sw	$a1,12008($a0)
    # Line 1586
    addiu	$a2,$a0,1408
    # Line 1587
    addiu	$v0,$a0,28148
    sw	$v0,28196($a0)
    b	.L0daba2e8
    # Line 1586
    sw	$a2,28192($a0)
.L0daba380:
    # Line 1646
    la	$v1,__glNop
    # Line 1648
    jr	$ra
    # Line 1646
    sw	$v1,12008($a0)
.L0daba38c:
    # Line 1613
    la	$a1,sub_0dac0000
    addiu	$a1,$a1,-27228
    # Line 1648
    jr	$ra
    # Line 1613
    sw	$a1,12024($a0)
.L0daba39c:
    # Line 1616
    la	$a2,sub_0dac0000
    addiu	$a2,$a2,-27100
    # Line 1648
    jr	$ra
    # Line 1616
    sw	$a2,12024($a0)
.L0daba3ac:
    # Line 1619
    la	$v0,sub_0dac0000
    addiu	$v0,$v0,-26972
    # Line 1648
    jr	$ra
    # Line 1619
    sw	$v0,12024($a0)
.L0daba3bc:
    # Line 1622
    la	$v1,sub_0dac0000
    addiu	$v1,$v1,-26784
    # Line 1648
    jr	$ra
    # Line 1622
    sw	$v1,12024($a0)
.L0daba3cc:
    # Line 1638
    la	$a1,__glClampAndScaleColor
    # Line 1648
    jr	$ra
    # Line 1638
    sw	$a1,12008($a0)
.end __glGenericPickColorMaterialProcs

.rdata
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3de147ae:
    .word 0x3de147ae
_lit_3e99999a:
    .word 0x3e99999a
_lit_3f170a3d:
    .word 0x3f170a3d
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_43340000:
    .word 0x43340000

