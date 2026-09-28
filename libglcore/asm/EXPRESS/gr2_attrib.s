# Source: ../EXPRESS/gr2_attrib.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_attrib.c
# Total Functions: 58

.text

# Function: __glexpim_AlphaFunc
# Declared: Line 33 (Source lines: 34-48)
# Address: 0x0da502ec - 0x0da503bc (Size: 208 bytes, Frame: 32)
.globl __glexpim_AlphaFunc
.ent __glexpim_AlphaFunc
__glexpim_AlphaFunc:
    # Line 35
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 34
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 35
    lw	$at,__glBeginMode
    # Line 34
    lui	$v1,0x1a
    addiu	$v1,$v1,30076
    # Line 35
    beq	$at,$v0,.L0da5039c
    # Line 34
    nop
    # Line 37
    sltiu	$a1,$a0,512
    bnez	$a1,.L0da5037c
    sltiu	$at,$a0,520
    beqz	$at,.L0da5037c
    # Line 39
    mtc1	$zero,$f4
    c.lt.s	$f13,$f4
    # Line 46
    li	$a1,2
    # Line 39
    bc1fl	.L0da5033c
    # Line 41
    lwc1	$f4,3284($a2)
    mov.s	$f13,$f4
    lwc1	$f4,3284($a2)
.L0da5033c:
    c.lt.s	$f4,$f13
    nop
    bc1f	.L0da50350
    nop
    # Line 42
    mov.s	$f13,$f4
.L0da50350:
    # Line 44
    sw	$a0,1720($a2)
    # Line 45
    swc1	$f13,1724($a2)
    # Line 46
    sw	$a1,__glBeginMode
    lw	$v0,11764($a2)
    # Line 47
    lw	$v1,11760($a2)
    # Line 48
    addiu	$sp,$sp,32
    # Line 46
    ori	$v0,$v0,0x1
    # Line 47
    ori	$v1,$v1,0x1
    sw	$v1,11760($a2)
    # Line 48
    jr	$ra
    # Line 46
    sw	$v0,11764($a2)
.L0da5037c:
    # Line 38
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 39
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da5039c:
    # Line 35
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_AlphaFunc

# Function: __glexpim_BlendFunc
# Declared: Line 50 (Source lines: 51-97)
# Address: 0x0da503bc - 0x0da5064c (Size: 656 bytes, Frame: 32)
.globl __glexpim_BlendFunc
.ent __glexpim_BlendFunc
__glexpim_BlendFunc:
    # Line 52
    lw	$a4,__glCurrentContext
    # Line 51
    move	$a3,$a0
    # Line 52
    li	$v0,1
    # Line 51
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 52
    lw	$at,__glBeginMode
    # Line 51
    lui	$v1,0x1a
    addiu	$v1,$v1,29868
    # Line 52
    beq	$at,$v0,.L0da5062c
    # Line 51
    addu	$gp,$t9,$v1
    # Line 52
    sltiu	$a2,$a3,774
    bnez	$a2,.L0da50444
    # Line 54
    sltiu	$at,$a3,775
    beqz	$at,.L0da504d4
.L0da503f4:
    # Line 72
    sltiu	$v0,$a1,772
.L0da503f8:
    bnez	$v0,.L0da50470
    # Line 73
    sltiu	$v1,$a1,773
    beqz	$v1,.L0da50540
    li	$a0,0x8002
.L0da50408:
    # Line 93
    sw	$a1,1732($a4)
.L0da5040c:
    # Line 92
    sw	$a3,1728($a4)
    # Line 94
    li	$a2,2
    sw	$a2,__glBeginMode
    # Line 96
    move	$a0,$a4
    # Line 94
    lw	$a1,11764($a4)
    # Line 96
    # lw $t9, -31808($gp) # &__glExpPassBlendFunc
    sd	$ra,8($sp)
    # Line 94
    ori	$a1,$a1,0x1
    # Line 96
    jal	__glExpPassBlendFunc
    # Line 94
    sw	$a1,11764($a4)
    # Line 97
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da50444:
    # Line 54
    sltiu	$at,$a3,771
    bnez	$at,.L0da5049c
    sltiu	$v0,$a3,772
    bnez	$v0,.L0da503f4
    sltiu	$v1,$a3,773
    bnez	$v1,.L0da505b4
    sltiu	$a2,$a3,774
    beqz	$a2,.L0da504b8
    # Line 70
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da50470:
    # Line 73
    sltiu	$at,$a1,769
    bnez	$at,.L0da50508
    sltiu	$v0,$a1,770
    bnez	$v0,.L0da50408
    sltiu	$v1,$a1,771
    bnez	$v1,.L0da505dc
    sltiu	$a2,$a1,772
    beqz	$a2,.L0da50524
    # Line 88
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da50408
    sd	$ra,8($sp)
.L0da5049c:
    # Line 54
    beqz	$a3,.L0da503f4
    sltiu	$at,$a3,2
    bnez	$at,.L0da503f4
    li	$v0,770
    beq	$a3,$v0,.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da504b4:
    # Line 70
    # lw $t9, -29008($gp) # &__glSetError
.L0da504b8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 71
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da504d4:
    # Line 54
    li	$a0,0x8002
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da50570
    sltu	$a2,$a0,$a3
    beqz	$a2,.L0da503f4
    li	$a0,0x8004
    sltu	$at,$a3,$a0
    bnez	$at,.L0da50604
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da504b8
    # Line 70
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da50508:
    # Line 73
    beqz	$a1,.L0da50408
    sltiu	$v1,$a1,2
    bnez	$v1,.L0da50408
    li	$a2,768
    beq	$a1,$a2,.L0da50408
    sd	$ra,8($sp)
.L0da50520:
    # Line 88
    # lw $t9, -29008($gp) # &__glSetError
.L0da50524:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 89
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da50540:
    # Line 73
    sltu	$at,$a1,$a0
    bnez	$at,.L0da50594
    sltu	$v0,$a0,$a1
    beqz	$v0,.L0da50408
    li	$a0,0x8004
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0da50618
    sltu	$a2,$a0,$a1
    bnez	$a2,.L0da50524
    # Line 88
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da50408
    sd	$ra,8($sp)
.L0da50570:
    # Line 54
    sltiu	$at,$a3,776
    bnez	$at,.L0da505c8
    sltiu	$v0,$a3,777
    bnez	$v0,.L0da503f4
    li	$v1,0x8001
    bne	$a3,$v1,.L0da504b8
    # Line 70
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da50594:
    # Line 73
    li	$a0,0x8001
    sltu	$a2,$a1,$a0
    bnez	$a2,.L0da505f0
    sltu	$at,$a0,$a1
    bnez	$at,.L0da50524
    # Line 88
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da50408
    sd	$ra,8($sp)
.L0da505b4:
    # Line 54
    li	$v0,772
    bne	$a3,$v0,.L0da504b8
    # Line 70
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da505c8:
    # Line 54
    li	$v1,775
    bne	$a3,$v1,.L0da504b8
    # Line 70
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
.L0da505dc:
    # Line 73
    li	$a2,770
    bne	$a1,$a2,.L0da50524
    # Line 88
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da50408
    sd	$ra,8($sp)
.L0da505f0:
    # Line 73
    li	$at,773
    bne	$a1,$at,.L0da50524
    # Line 88
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da50408
    sd	$ra,8($sp)
.L0da50604:
    # Line 54
    li	$v0,0x8003
    beq	$a3,$v0,.L0da503f8
    # Line 72
    sltiu	$v0,$a1,772
    b	.L0da504b4
    sd	$ra,8($sp)
.L0da50618:
    # Line 73
    li	$v1,0x8003
    beql	$a1,$v1,.L0da5040c
    # Line 93
    sw	$a1,1732($a4)
    b	.L0da50520
    sd	$ra,8($sp)
.L0da5062c:
    # Line 52
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_BlendFunc

# Function: __glexpim_BlendEquationEXT
# Declared: Line 99 (Source lines: 100-122)
# Address: 0x0da5064c - 0x0da50740 (Size: 244 bytes, Frame: 48)
.globl __glexpim_BlendEquationEXT
.ent __glexpim_BlendEquationEXT
__glexpim_BlendEquationEXT:
    # Line 100
    move	$a2,$a0
    # Line 101
    li	$v0,1
    # Line 100
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    lui	$v1,0x1a
    addiu	$v1,$v1,29212
    # Line 101
    lw	$at,__glBeginMode
    lw	$a1,__glCurrentContext
    # Line 100
    # addu	gp,t9,v1
    # Line 101
    beq	$at,$v0,.L0da50720
    sd	$a1,0($sp)
    li	$at,3057
    beq	$a2,$at,.L0da506c8
    li	$v0,0x8006
    beq	$a2,$v0,.L0da506c8
    li	$v1,0x8007
    beq	$a2,$v1,.L0da506c8
    li	$a1,0x8008
    beq	$a2,$a1,.L0da506c8
    li	$at,0x800a
    beq	$a2,$at,.L0da506c8
    li	$v0,0x800b
    beq	$a2,$v0,.L0da506c8
    sd	$ra,16($sp)
    # Line 112
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 113
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da506c8:
    ld	$a1,0($sp)
    # Line 118
    li	$a0,2
    # Line 116
    lw	$a3,30440($a1)
    lui	$a4,0x8
    # Line 117
    sw	$a2,1736($a1)
    # Line 116
    or	$a3,$a3,$a4
    sw	$a3,30440($a1)
    # Line 118
    sw	$a0,__glBeginMode
    sd	$ra,16($sp)
    lw	$v1,11764($a1)
    # Line 120
    # lw $t9, -31808($gp) # &__glExpPassBlendFunc
    move	$a0,$a1
    # Line 118
    ori	$v1,$v1,0x1
    # Line 120
    jal	__glExpPassBlendFunc
    # Line 118
    sw	$v1,11764($a1)
    # Line 121
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    jal	__glExpPassLogicOp
    ld	$a0,0($sp)
    # Line 122
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50720:
    # Line 101
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_BlendEquationEXT

# Function: __glexpim_ClearAccum
# Declared: Line 125 (Source lines: 126-148)
# Address: 0x0da50740 - 0x0da50850 (Size: 272 bytes, Frame: 48)
.globl __glexpim_ClearAccum
.ent __glexpim_ClearAccum
__glexpim_ClearAccum:
    # Line 129
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 126
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    # Line 129
    lw	$at,__glBeginMode
    # Line 126
    lui	$v1,0x1a
    addiu	$v1,$v1,28968
    # Line 129
    beq	$at,$v0,.L0da50830
    # Line 126
    nop
    # Line 132
    lwc1	$f5,_lit_bf800000
    c.lt.s	$f12,$f5
    # Line 147
    li	$at,2
    # Line 132
    bc1f	.L0da5077c
    lwc1	$f4,3284($a1)
    # Line 133
    mov.s	$f12,$f5
.L0da5077c:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0da50794
    # Line 134
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0da50794:
    nop
    bc1fl	.L0da507a8
    # Line 135
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0da507a8:
    nop
    bc1fl	.L0da507bc
    # Line 136
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0da507bc:
    nop
    bc1fl	.L0da507d0
    # Line 137
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0da507d0:
    nop
    bc1fl	.L0da507e4
    # Line 138
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0da507e4:
    nop
    bc1fl	.L0da507f8
    # Line 139
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0da507f8:
    nop
    bc1f	.L0da50808
    nop
    # Line 140
    mov.s	$f15,$f4
.L0da50808:
    # Line 142
    swc1	$f12,1552($a1)
    # Line 143
    swc1	$f13,1556($a1)
    # Line 144
    swc1	$f14,1560($a1)
    # Line 145
    swc1	$f15,1564($a1)
    # Line 147
    sw	$at,__glBeginMode
    lw	$a0,11764($a1)
    # Line 148
    addiu	$sp,$sp,48
    # Line 147
    ori	$a0,$a0,0x1
    # Line 148
    jr	$ra
    # Line 147
    sw	$a0,11764($a1)
.L0da50830:
    # Line 129
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_ClearAccum

# Function: __glexpim_ClearColor
# Declared: Line 150 (Source lines: 151-171)
# Address: 0x0da50850 - 0x0da50950 (Size: 256 bytes, Frame: 48)
.globl __glexpim_ClearColor
.ent __glexpim_ClearColor
__glexpim_ClearColor:
    # Line 154
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 151
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    # Line 154
    lw	$at,__glBeginMode
    # Line 151
    lui	$v1,0x1a
    addiu	$v1,$v1,28696
    # Line 154
    beq	$at,$v0,.L0da50930
    # Line 151
    nop
    # Line 157
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    # ld	gp,0(sp)
    bc1f	.L0da5088c
    lwc1	$f4,3284($a1)
    # Line 158
    mov.s	$f12,$f5
.L0da5088c:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0da508a4
    # Line 159
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0da508a4:
    nop
    bc1fl	.L0da508b8
    # Line 160
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0da508b8:
    nop
    bc1fl	.L0da508cc
    # Line 161
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0da508cc:
    nop
    bc1fl	.L0da508e0
    # Line 162
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0da508e0:
    nop
    bc1fl	.L0da508f4
    # Line 163
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0da508f4:
    nop
    bc1fl	.L0da50908
    # Line 164
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0da50908:
    nop
    bc1fl	.L0da5091c
    # Line 170
    swc1	$f15,1772($a1)
    # Line 165
    mov.s	$f15,$f4
    # Line 170
    swc1	$f15,1772($a1)
.L0da5091c:
    # Line 169
    swc1	$f14,1768($a1)
    # Line 168
    swc1	$f13,1764($a1)
    # Line 167
    swc1	$f12,1760($a1)
    # Line 171
    jr	$ra
    addiu	$sp,$sp,48
.L0da50930:
    # Line 154
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_ClearColor

# Function: __glexpim_ClearDepth
# Declared: Line 173 (Source lines: 174-181)
# Address: 0x0da50950 - 0x0da509e0 (Size: 144 bytes, Frame: 32)
.globl __glexpim_ClearDepth
.ent __glexpim_ClearDepth
__glexpim_ClearDepth:
    # Line 175
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 174
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 175
    lw	$at,__glBeginMode
    # Line 174
    lui	$v1,0x1a
    addiu	$v1,$v1,28440
    # Line 175
    beq	$at,$v0,.L0da509c0
    # Line 174
    nop
    # Line 175
    dmtc1	$zero,$f4
    c.lt.d	$f12,$f4
    nop
    bc1f	.L0da5098c
    # Line 180
    li	$at,2
    # Line 177
    mov.d	$f12,$f4
.L0da5098c:
    ldc1	$f4,_lit8_3ff0000000000000
    c.lt.d	$f4,$f12
    nop
    bc1f	.L0da509a4
    nop
    # Line 178
    mov.d	$f12,$f4
.L0da509a4:
    # Line 179
    sdc1	$f12,1544($a1)
    # Line 180
    sw	$at,__glBeginMode
    lw	$a0,11764($a1)
    # Line 181
    addiu	$sp,$sp,32
    # Line 180
    ori	$a0,$a0,0x1
    # Line 181
    jr	$ra
    # Line 180
    sw	$a0,11764($a1)
.L0da509c0:
    # Line 175
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_ClearDepth

# Function: __glexpim_ClearIndex
# Declared: Line 183 (Source lines: 184-189)
# Address: 0x0da509e0 - 0x0da50a68 (Size: 136 bytes, Frame: 32)
.globl __glexpim_ClearIndex
.ent __glexpim_ClearIndex
__glexpim_ClearIndex:
    # Line 185
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 184
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 185
    lw	$at,__glBeginMode
    # Line 184
    lui	$v1,0x1a
    addiu	$v1,$v1,28296
    # Line 185
    beq	$at,$v0,.L0da50a48
    # Line 184
    nop
    # Line 187
    lwc1	$f1,_lit_41800000
    mul.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    lw	$at,30740($a1)
    mfc1	$a0,$f1
    sll	$at,$at,0x4
    ori	$at,$at,0xf
    and	$a0,$a0,$at
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_3d800000
    mul.s	$f0,$f0,$f1
    # ld	gp,0(sp)
    # Line 189
    addiu	$sp,$sp,32
    jr	$ra
    # Line 188
    swc1	$f0,1776($a1)
.L0da50a48:
    # Line 185
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_ClearIndex

# Function: __glexpim_ClearStencil
# Declared: Line 191 (Source lines: 192-197)
# Address: 0x0da50a68 - 0x0da50ae0 (Size: 120 bytes, Frame: 32)
.globl __glexpim_ClearStencil
.ent __glexpim_ClearStencil
__glexpim_ClearStencil:
    # Line 193
    lw	$a2,__glCurrentContext
    li	$a3,1
    # Line 192
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 193
    lw	$at,__glBeginMode
    # Line 192
    lui	$v0,0x1a
    addiu	$v0,$v0,28160
    # Line 193
    beq	$at,$a3,.L0da50ac0
    # Line 192
    nop
    # Line 196
    li	$a1,2
    # Line 195
    lw	$at,3132($a2)
    sllv	$at,$a3,$at
    addiu	$at,$at,-1
    and	$at,$at,$a0
    sh	$at,1572($a2)
    # Line 196
    sw	$a1,__glBeginMode
    lw	$v1,11764($a2)
    # ld	gp,0(sp)
    # Line 197
    addiu	$sp,$sp,32
    # Line 196
    ori	$v1,$v1,0x1
    # Line 197
    jr	$ra
    # Line 196
    sw	$v1,11764($a2)
.L0da50ac0:
    # Line 193
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_ClearStencil

# Function: __glexpim_ColorMask
# Declared: Line 199 (Source lines: 200-210)
# Address: 0x0da50ae0 - 0x0da50b68 (Size: 136 bytes, Frame: 48)
.globl __glexpim_ColorMask
.ent __glexpim_ColorMask
__glexpim_ColorMask:
    # Line 201
    lw	$a6,__glCurrentContext
    # Line 200
    move	$a5,$a0
    # Line 201
    li	$v0,1
    # Line 200
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 201
    lw	$at,__glBeginMode
    # Line 200
    lui	$v1,0x1a
    addiu	$v1,$v1,28040
    # Line 201
    beq	$at,$v0,.L0da50b4c
    # Line 200
    nop
    # Line 206
    sb	$a3,1787($a6)
    # Line 205
    sb	$a2,1786($a6)
    # Line 204
    sb	$a1,1785($a6)
    # Line 203
    sb	$a5,1784($a6)
    # Line 207
    li	$a4,2
    sw	$a4,__glBeginMode
    lw	$a1,11764($a6)
    # Line 209
    # lw $t9, -31820($gp) # &__glExpPassColorMask
    move	$a0,$a6
    # Line 207
    ori	$a1,$a1,0x1
    # Line 209
    jal	__glExpPassColorMask
    # Line 207
    sw	$a1,11764($a6)
    # Line 210
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50b4c:
    # Line 201
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_ColorMask

# Function: __glexpim_ColorMaterial
# Declared: Line 212 (Source lines: 213-246)
# Address: 0x0da50b68 - 0x0da50c94 (Size: 300 bytes, Frame: 48)
.globl __glexpim_ColorMaterial
.ent __glexpim_ColorMaterial
__glexpim_ColorMaterial:
    # Line 214
    li	$v0,1
    # Line 213
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 214
    lw	$s0,__glCurrentContext
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    # Line 213
    lui	$v1,0x1a
    addiu	$v1,$v1,27904
    # Line 214
    beq	$at,$v0,.L0da50c70
    # Line 213
    nop
    # Line 214
    li	$a2,1028
    beq	$a0,$a2,.L0da50bd0
    li	$at,1029
    beq	$a0,$at,.L0da50bd0
    li	$v0,1032
    beq	$a0,$v0,.L0da50bd4
    # Line 224
    li	$v1,4608
    # Line 222
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 223
    ld	$ra,16($sp)
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50bd0:
    # Line 224
    li	$v1,4608
.L0da50bd4:
    beq	$a1,$v1,.L0da50c20
    li	$a2,4609
    beq	$a1,$a2,.L0da50c20
    li	$at,4610
    beq	$a1,$at,.L0da50c20
    li	$v0,5632
    beq	$a1,$v0,.L0da50c20
    li	$v1,5634
    beql	$a1,$v1,.L0da50c24
    # Line 238
    lw	$a2,1696($s0)
    # Line 234
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 235
    ld	$ra,16($sp)
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50c20:
    # Line 238
    lw	$a2,1696($s0)
.L0da50c24:
    sd	$ra,16($sp)
    sw	$a1,1300($s0)
    andi	$a2,$a2,0x80
    beqz	$a2,.L0da50c50
    # Line 237
    sw	$a0,1296($s0)
    # Line 241
    lw	$t9,11800($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 242
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
.L0da50c50:
    # Line 245
    # lw $t9, -32252($gp) # &__glExpValidateColorMaterial
    jal	__glExpValidateColorMaterial
    move	$a0,$s0
    ld	$ra,16($sp)
    # Line 246
    ld	$s0,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50c70:
    # Line 214
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_ColorMaterial

# Function: __glexpim_CullFace
# Declared: Line 248 (Source lines: 249-265)
# Address: 0x0da50c94 - 0x0da50d4c (Size: 184 bytes, Frame: 32)
.globl __glexpim_CullFace
.ent __glexpim_CullFace
__glexpim_CullFace:
    # Line 250
    lw	$a3,__glCurrentContext
    # Line 249
    move	$a2,$a0
    # Line 250
    li	$v0,1
    # Line 249
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 250
    lw	$at,__glBeginMode
    # Line 249
    lui	$v1,0x1a
    addiu	$v1,$v1,27604
    # Line 250
    beq	$at,$v0,.L0da50d2c
    # Line 249
    nop
    # Line 250
    li	$a1,1028
    beq	$a2,$a1,.L0da50cf4
    li	$at,1029
    beq	$a2,$at,.L0da50cf4
    li	$v0,1032
    beq	$a2,$v0,.L0da50cf4
    sd	$ra,8($sp)
    # Line 258
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 259
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da50cf4:
    # Line 261
    sw	$a2,468($a3)
    # Line 262
    li	$a0,2
    sw	$a0,__glBeginMode
    sd	$ra,8($sp)
    lw	$v1,11764($a3)
    # Line 264
    # lw $t9, -32052($gp) # &__glExpPassCullFace
    move	$a0,$a3
    # Line 262
    ori	$v1,$v1,0x4
    # Line 264
    jal	__glExpPassCullFace
    # Line 262
    sw	$v1,11764($a3)
    # Line 265
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da50d2c:
    # Line 250
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_CullFace

# Function: __glexpim_DepthFunc
# Declared: Line 267 (Source lines: 268-321)
# Address: 0x0da50d4c - 0x0da50f08 (Size: 444 bytes, Frame: 48)
.globl __glexpim_DepthFunc
.ent __glexpim_DepthFunc
__glexpim_DepthFunc:
    # Line 270
    li	$v0,1
    # Line 268
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 270
    lw	$s1,__glCurrentContext
    sd	$s0,16($sp)
    # Line 268
    move	$s0,$a0
    sd	$gp,0($sp)
    # Line 270
    lw	$at,__glBeginMode
    # Line 268
    lui	$v1,0x1a
    addiu	$v1,$v1,27420
    # Line 270
    beq	$at,$v0,.L0da50e88
    # Line 268
    addu	$gp,$t9,$v1
    # Line 272
    sltiu	$a1,$s0,512
    bnez	$a1,.L0da50e08
    sltiu	$at,$s0,520
    beqz	$at,.L0da50e0c
    # Line 273
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 274
    lbu	$v0,31565($s1)
    bnez	$v0,.L0da50dcc
    sd	$ra,24($sp)
    lw	$a2,31332($s1)
    lui	$a4,0xff00
    beq	$a4,$a2,.L0da50e30
    # Line 285
    li	$v0,518
    # Line 290
    lui	$a0,0x100
.L0da50db0:
    bne	$a0,$a2,.L0da50dcc
    sd	$ra,24($sp)
    # Line 300
    li	$v1,513
    beq	$s0,$v1,.L0da50e4c
    li	$a1,515
    beq	$s0,$a1,.L0da50e4c
    sd	$ra,24($sp)
.L0da50dcc:
    # Line 316
    sw	$s0,1536($s1)
.L0da50dd0:
    # Line 318
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a2,11764($s1)
    # Line 320
    # lw $t9, -32368($gp) # &__glExpPassDepthFunc
    move	$a0,$s1
    # Line 318
    ori	$a2,$a2,0x80
    # Line 320
    jal	__glExpPassDepthFunc
    # Line 318
    sw	$a2,11764($s1)
    ld	$gp,0($sp)
    # Line 321
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50e08:
    # Line 273
    # lw $t9, -29008($gp) # &__glSetError
.L0da50e0c:
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,0($sp)
    # Line 274
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50e30:
    # Line 285
    li	$at,516
    beql	$s0,$at,.L0da50eb4
    lw	$at,1696($s1)
    beq	$s0,$v0,.L0da50eb0
    # Line 290
    lui	$a0,0x100
    b	.L0da50db0
    nop
.L0da50e4c:
    # Line 300
    lw	$v1,1696($s1)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0da50dcc
    sd	$ra,24($sp)
    lbu	$a1,3109($s1)
    beqz	$a1,.L0da50dcc
    sd	$ra,24($sp)
    # Line 305
    lw	$a2,31312($s1)
    lw	$t9,31340($s1)
    addiu	$a1,$s1,31232
    move	$a0,$s1
    jalr	$t9
    # Line 304
    sw	$a4,31332($s1)
    b	.L0da50dd0
    # Line 316
    sw	$s0,1536($s1)
.L0da50e88:
    # Line 270
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50eb0:
    # Line 285
    lw	$at,1696($s1)
.L0da50eb4:
    andi	$at,$at,0x10
    beqz	$at,.L0da50f00
    nop
    lbu	$v0,3109($s1)
    beqz	$v0,.L0da50db0
    lui	$a0,0x100
    # Line 290
    lw	$a2,31312($s1)
    addiu	$a1,$s1,31232
    move	$a0,$s1
    lw	$t9,31340($s1)
    sd	$ra,24($sp)
    lui	$v1,0x100
    jalr	$t9
    # Line 289
    sw	$v1,31332($s1)
    lui	$a0,0x100
    lui	$a4,0xff00
    # Line 290
    lw	$a2,31332($s1)
    b	.L0da50db0
    ld	$ra,24($sp)
.L0da50f00:
    b	.L0da50db0
    lui	$a0,0x100
.end __glexpim_DepthFunc

# Function: __glexpim_DepthMask
# Declared: Line 323 (Source lines: 324-331)
# Address: 0x0da50f08 - 0x0da50f84 (Size: 124 bytes, Frame: 32)
.globl __glexpim_DepthMask
.ent __glexpim_DepthMask
__glexpim_DepthMask:
    # Line 325
    lw	$a2,__glCurrentContext
    # Line 324
    move	$a3,$a0
    # Line 325
    li	$v0,1
    # Line 324
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 325
    lw	$at,__glBeginMode
    # Line 324
    lui	$v1,0x1a
    addiu	$v1,$v1,26976
    # Line 325
    beq	$at,$v0,.L0da50f68
    # Line 324
    nop
    # Line 327
    sb	$a3,1540($a2)
    # Line 328
    li	$a4,2
    sw	$a4,__glBeginMode
    lw	$a1,11764($a2)
    # Line 330
    # lw $t9, -32364($gp) # &__glExpPassDepthMask
    move	$a0,$a2
    # Line 328
    ori	$a1,$a1,0x80
    # Line 330
    jal	__glExpPassDepthMask
    # Line 328
    sw	$a1,11764($a2)
    # Line 331
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da50f68:
    # Line 325
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_DepthMask

# Function: __glexpim_DrawBuffer
# Declared: Line 333 (Source lines: 334-385)
# Address: 0x0da50f84 - 0x0da5119c (Size: 536 bytes, Frame: 32)
.globl __glexpim_DrawBuffer
.ent __glexpim_DrawBuffer
__glexpim_DrawBuffer:
    # Line 336
    lw	$a3,__glCurrentContext
    # Line 334
    move	$a2,$a0
    # Line 336
    li	$v0,1
    # Line 334
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 336
    lw	$at,__glBeginMode
    # Line 334
    lui	$v1,0x1a
    addiu	$v1,$v1,26852
    # Line 336
    beq	$at,$v0,.L0da5117c
    # Line 334
    addu	$gp,$t9,$v1
    # Line 336
    sltiu	$a1,$a2,1030
    bnez	$a1,.L0da51008
    # Line 338
    sltiu	$at,$a2,1031
    beqz	$at,.L0da51078
    sltiu	$at,$a2,1034
.L0da50fc0:
    # Line 354
    lbu	$v0,3106($a3)
    beqz	$v0,.L0da51158
    # Line 357
    li	$v1,1032
    sd	$ra,8($sp)
    sw	$v1,1788($a3)
.L0da50fd4:
    # Line 381
    sw	$a2,1792($a3)
    # Line 382
    li	$a4,2
    sw	$a4,__glBeginMode
    lw	$a1,11764($a3)
    # Line 384
    # lw $t9, -31824($gp) # &__glExpPassDrawBuffer
    move	$a0,$a3
    # Line 382
    ori	$a1,$a1,0x1
    # Line 384
    jal	__glExpPassDrawBuffer
    # Line 382
    sw	$a1,11764($a3)
    # Line 385
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51008:
    # Line 338
    sltiu	$at,$a2,1026
    bnez	$at,.L0da5103c
    sltiu	$v0,$a2,1027
    bnez	$v0,.L0da510b0
    sltiu	$v1,$a2,1028
    bnez	$v1,.L0da51100
    sltiu	$a1,$a2,1029
    beqz	$a1,.L0da510a8
    li	$at,1029
.L0da5102c:
    sd	$ra,8($sp)
    # Line 350
    li	$at,1028
    # Line 351
    b	.L0da50fd4
    # Line 350
    sw	$at,1788($a3)
.L0da5103c:
    # Line 338
    sltiu	$v0,$a2,1024
    bnez	$v0,.L0da510c8
    sltiu	$v1,$a2,1025
    bnez	$v1,.L0da5102c
    li	$a1,1025
    beq	$a2,$a1,.L0da5110c
    sd	$ra,8($sp)
.L0da51058:
    # Line 378
    # lw $t9, -29008($gp) # &__glSetError
.L0da5105c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 379
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51078:
    # Line 338
    bnez	$at,.L0da510dc
    sltiu	$v0,$a2,1035
    beqz	$v0,.L0da51140
    sltiu	$at,$a2,1036
    # Line 372
    lw	$a1,3180($a3)
.L0da5108c:
    addiu	$v1,$a2,-1033
    slt	$v1,$v1,$a1
    beqz	$v1,.L0da51110
    # Line 346
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    # Line 376
    b	.L0da50fd4
    # Line 375
    sw	$a2,1788($a3)
.L0da510a8:
    # Line 338
    bne	$a2,$at,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0da510b0:
    # Line 362
    lbu	$v0,3106($a3)
    beqz	$v0,.L0da5110c
    # Line 365
    li	$v1,1029
    sd	$ra,8($sp)
    # Line 366
    b	.L0da50fd4
    # Line 365
    sw	$v1,1788($a3)
.L0da510c8:
    # Line 338
    bnez	$a2,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    # Line 341
    b	.L0da50fd4
    # Line 340
    sw	$zero,1788($a3)
.L0da510dc:
    # Line 338
    sltiu	$a1,$a2,1032
    bnez	$a1,.L0da5112c
    sltiu	$at,$a2,1033
    bnez	$at,.L0da50fc0
    li	$v0,1033
    bne	$a2,$v0,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da5108c
    # Line 372
    lw	$a1,3180($a3)
.L0da51100:
    # Line 338
    li	$v1,1027
    bne	$a2,$v1,.L0da51058
    sd	$ra,8($sp)
.L0da5110c:
    # Line 346
    # lw $t9, -29008($gp) # &__glSetError
.L0da51110:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 347
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da5112c:
    # Line 338
    li	$a1,1031
    bne	$a2,$a1,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da5110c
    sd	$ra,8($sp)
.L0da51140:
    # Line 338
    bnez	$at,.L0da51168
    sltiu	$v0,$a2,1037
    beqz	$v0,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da5108c
    # Line 372
    lw	$a1,3180($a3)
.L0da51158:
    sd	$ra,8($sp)
    # Line 355
    li	$v1,1028
    b	.L0da50fd4
    sw	$v1,1788($a3)
.L0da51168:
    # Line 338
    li	$a1,1035
    bne	$a2,$a1,.L0da5105c
    # Line 378
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da5108c
    # Line 372
    lw	$a1,3180($a3)
.L0da5117c:
    # Line 336
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_DrawBuffer

# Function: __glexpim_Fogfv
# Declared: Line 387 (Source lines: 388-454)
# Address: 0x0da5119c - 0x0da513e4 (Size: 584 bytes, Frame: 48)
.globl __glexpim_Fogfv
.ent __glexpim_Fogfv
__glexpim_Fogfv:
    # Line 388
    move	$a2,$a1
    # Line 389
    li	$a4,1
    # Line 388
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 389
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 388
    lui	$v0,0x1a
    addiu	$v0,$v0,26316
    # Line 389
    beq	$at,$a4,.L0da5139c
    # Line 388
    addu	$gp,$t9,$v0
    # Line 391
    li	$v1,2918
    beq	$a0,$v1,.L0da51378
    li	$a3,2914
    beq	$a0,$a3,.L0da51270
    li	$at,2916
    beq	$a0,$at,.L0da51318
    li	$v0,2915
    beq	$a0,$v0,.L0da5132c
    li	$v1,2913
    beq	$a0,$v1,.L0da51340
    li	$a3,2917
    beq	$a0,$a3,.L0da5121c
    # Line 432
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 433
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5121c:
    # Line 420
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a4,$f0
    li	$at,2048
    sll	$a4,$a4,0x0
    beq	$a4,$at,.L0da51308
    move	$a0,$a4
    li	$a1,9729
    li	$at,2049
    beql	$a0,$at,.L0da51310
    # Line 424
    move	$a0,$a4
    # Line 420
    beq	$a1,$a0,.L0da5130c
    # Line 427
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 428
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da51270:
    # Line 396
    mtc1	$zero,$f1
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f1
    nop
    bc1t	.L0da513c0
    # Line 401
    li	$a1,9729
    lw	$a0,1492($s0)
    # Line 400
    swc1	$f4,1512($s0)
.L0da51290:
    # Line 434
    bne	$a1,$a0,.L0da512d4
    # Line 451
    li	$v1,2
    # Line 434
    lwc1	$f4,1520($s0)
    lwc1	$f5,1516($s0)
    c.eq.s	$f5,$f4
    nop
    bc1t	.L0da512c8
    # Line 447
    mtc1	$zero,$f0
    # Line 441
    sub.s	$f3,$f4,$f5
    lwc1	$f2,3284($s0)
    div.s	$f2,$f2,$f3
    sd	$ra,16($sp)
    b	.L0da512d0
    swc1	$f2,1524($s0)
.L0da512c8:
    sd	$ra,16($sp)
    # Line 447
    swc1	$f0,1524($s0)
.L0da512d0:
    # Line 451
    li	$v1,2
.L0da512d4:
    sw	$v1,__glBeginMode
    # Line 453
    move	$a0,$s0
    # Line 451
    lw	$v0,11764($s0)
    # Line 453
    # lw $t9, -32300($gp) # &__glExpPassFog
    sd	$ra,16($sp)
    # Line 451
    ori	$v0,$v0,0x1
    # Line 453
    jal	__glExpPassFog
    # Line 451
    sw	$v0,11764($s0)
    # Line 454
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da51308:
    # Line 420
    li	$a1,9729
.L0da5130c:
    # Line 424
    move	$a0,$a4
.L0da51310:
    b	.L0da51290
    sw	$a4,1492($s0)
.L0da51318:
    # Line 405
    li	$a1,9729
    # Line 404
    lwc1	$f1,0($a2)
    # Line 405
    lw	$a0,1492($s0)
    b	.L0da51290
    # Line 404
    swc1	$f1,1520($s0)
.L0da5132c:
    # Line 409
    li	$a1,9729
    # Line 408
    lwc1	$f2,0($a2)
    # Line 409
    lw	$a0,1492($s0)
    b	.L0da51290
    # Line 408
    swc1	$f2,1516($s0)
.L0da51340:
    # Line 416
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    lw	$a1,3136($s0)
    mfc1	$a0,$f0
    sllv	$a1,$a4,$a1
    addiu	$a1,$a1,-1
    and	$a0,$a0,$a1
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 418
    li	$a1,9729
    lw	$a0,1492($s0)
    b	.L0da51290
    # Line 416
    swc1	$f3,1528($s0)
.L0da51378:
    # Line 393
    # lw $t9, -28388($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glClampAndScaleColorf
    addiu	$a1,$s0,1496
    # Line 394
    li	$a1,9729
    lw	$a0,1492($s0)
    b	.L0da51290
    ld	$ra,16($sp)
.L0da5139c:
    # Line 389
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da513c0:
    # Line 397
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 398
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Fogfv

# Function: __glexpim_Fogf
# Declared: Line 456 (Source lines: 457-471)
# Address: 0x0da513e4 - 0x0da51464 (Size: 128 bytes, Frame: 32)
.globl __glexpim_Fogf
.ent __glexpim_Fogf
__glexpim_Fogf:
    # Line 457
    li	$at,2913
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,25732
    beq	$a0,$at,.L0da51444
    nop
    li	$v1,2914
    beq	$a0,$v1,.L0da51444
    li	$a1,2915
    beq	$a0,$a1,.L0da51444
    li	$at,2916
    beq	$a0,$at,.L0da51444
    li	$v0,2917
    beq	$a0,$v0,.L0da51444
    sd	$ra,8($sp)
    # Line 468
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 469
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51444:
    # Line 465
    # lw $t9, -32580($gp) # &__glexpim_Fogfv
    sd	$ra,8($sp)
    bal __glexpim_Fogfv
    addiu	$a1,$sp,24
    # Line 471
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_Fogf

# Function: __glexpim_Fogiv
# Declared: Line 473 (Source lines: 474-535)
# Address: 0x0da51464 - 0x0da516b0 (Size: 588 bytes, Frame: 48)
.globl __glexpim_Fogiv
.ent __glexpim_Fogiv
__glexpim_Fogiv:
    # Line 474
    move	$a2,$a1
    # Line 475
    li	$a5,1
    # Line 474
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 475
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 474
    lui	$v0,0x1a
    addiu	$v0,$v0,25604
    # Line 475
    beq	$at,$a5,.L0da51668
    # Line 474
    addu	$gp,$t9,$v0
    # Line 477
    li	$v1,2918
    beq	$a0,$v1,.L0da51644
    li	$a3,2914
    beq	$a0,$a3,.L0da5152c
    li	$at,2916
    beq	$a0,$at,.L0da515d4
    li	$v0,2915
    beq	$a0,$v0,.L0da515f4
    li	$v1,2913
    beq	$a0,$v1,.L0da51614
    li	$a3,2917
    beq	$a0,$a3,.L0da514e4
    # Line 513
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 514
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da514e4:
    # Line 501
    lw	$a1,0($a2)
    li	$at,2048
    beq	$a1,$at,.L0da515c4
    move	$a0,$a1
    li	$a4,9729
    li	$v0,2049
    beql	$a0,$v0,.L0da515cc
    # Line 505
    move	$a0,$a1
    # Line 501
    beq	$a4,$a0,.L0da515c8
    # Line 508
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 509
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5152c:
    # Line 482
    lw	$a1,0($a2)
    bltz	$a1,.L0da5168c
    # Line 487
    li	$a4,9729
    # Line 486
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 487
    lw	$a0,1492($s0)
    # Line 486
    swc1	$f0,1512($s0)
.L0da5154c:
    # Line 515
    bne	$a4,$a0,.L0da51590
    # Line 532
    li	$a0,2
    # Line 515
    lwc1	$f5,1520($s0)
    lwc1	$f4,1516($s0)
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0da51584
    # Line 528
    mtc1	$zero,$f3
    # Line 522
    sub.s	$f2,$f5,$f4
    lwc1	$f1,3284($s0)
    div.s	$f1,$f1,$f2
    sd	$ra,16($sp)
    b	.L0da5158c
    swc1	$f1,1524($s0)
.L0da51584:
    sd	$ra,16($sp)
    # Line 528
    swc1	$f3,1524($s0)
.L0da5158c:
    # Line 532
    li	$a0,2
.L0da51590:
    sw	$a0,__glBeginMode
    sd	$ra,16($sp)
    lw	$v1,11764($s0)
    # Line 534
    # lw $t9, -32300($gp) # &__glExpPassFog
    move	$a0,$s0
    # Line 532
    ori	$v1,$v1,0x1
    # Line 534
    jal	__glExpPassFog
    # Line 532
    sw	$v1,11764($s0)
    # Line 535
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da515c4:
    # Line 501
    li	$a4,9729
.L0da515c8:
    # Line 505
    move	$a0,$a1
.L0da515cc:
    b	.L0da5154c
    sw	$a1,1492($s0)
.L0da515d4:
    # Line 491
    li	$a4,9729
    # Line 490
    lw	$a3,0($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 491
    lw	$a0,1492($s0)
    b	.L0da5154c
    # Line 490
    swc1	$f0,1520($s0)
.L0da515f4:
    # Line 494
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 495
    lw	$a0,1492($s0)
    li	$a4,9729
    b	.L0da5154c
    # Line 494
    swc1	$f1,1516($s0)
.L0da51614:
    # Line 497
    lw	$v0,3136($s0)
    lw	$at,0($a2)
    sllv	$v0,$a5,$v0
    addiu	$v0,$v0,-1
    and	$at,$at,$v0
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 499
    li	$a4,9729
    lw	$a0,1492($s0)
    b	.L0da5154c
    # Line 497
    swc1	$f2,1528($s0)
.L0da51644:
    # Line 479
    # lw $t9, -28376($gp) # &__glClampAndScaleColori
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glClampAndScaleColori
    addiu	$a1,$s0,1496
    # Line 480
    li	$a4,9729
    lw	$a0,1492($s0)
    b	.L0da5154c
    ld	$ra,16($sp)
.L0da51668:
    # Line 475
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5168c:
    # Line 483
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 484
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Fogiv

# Function: __glexpim_Fogi
# Declared: Line 537 (Source lines: 538-552)
# Address: 0x0da516b0 - 0x0da51730 (Size: 128 bytes, Frame: 32)
.globl __glexpim_Fogi
.ent __glexpim_Fogi
__glexpim_Fogi:
    # Line 538
    li	$at,2913
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,25016
    beq	$a0,$at,.L0da51710
    nop
    li	$v1,2914
    beq	$a0,$v1,.L0da51710
    li	$a1,2915
    beq	$a0,$a1,.L0da51710
    li	$at,2916
    beq	$a0,$at,.L0da51710
    li	$v0,2917
    beq	$a0,$v0,.L0da51710
    sd	$ra,8($sp)
    # Line 549
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 550
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51710:
    # Line 546
    # lw $t9, -32572($gp) # &__glexpim_Fogiv
    sd	$ra,8($sp)
    bal __glexpim_Fogiv
    addiu	$a1,$sp,28
    # Line 552
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_Fogi

# Function: __glexpim_FrontFace
# Declared: Line 554 (Source lines: 555-570)
# Address: 0x0da51730 - 0x0da517e0 (Size: 176 bytes, Frame: 32)
.globl __glexpim_FrontFace
.ent __glexpim_FrontFace
__glexpim_FrontFace:
    # Line 556
    lw	$a3,__glCurrentContext
    # Line 555
    move	$a2,$a0
    # Line 556
    li	$v0,1
    # Line 555
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 556
    lw	$at,__glBeginMode
    # Line 555
    lui	$v1,0x1a
    addiu	$v1,$v1,24888
    # Line 556
    beq	$at,$v0,.L0da517c0
    # Line 555
    nop
    # Line 556
    li	$a1,2304
    beq	$a2,$a1,.L0da51788
    li	$at,2305
    beq	$a2,$at,.L0da51788
    sd	$ra,8($sp)
    # Line 563
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 564
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51788:
    # Line 566
    sw	$a2,472($a3)
    # Line 567
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 569
    move	$a0,$a3
    # Line 567
    lw	$v0,11764($a3)
    # Line 569
    # lw $t9, -32040($gp) # &__glExpPassFrontFace
    sd	$ra,8($sp)
    # Line 567
    ori	$v0,$v0,0x4
    # Line 569
    jal	__glExpPassFrontFace
    # Line 567
    sw	$v0,11764($a3)
    # Line 570
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da517c0:
    # Line 556
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_FrontFace

# Function: __glexpim_Hint
# Declared: Line 572 (Source lines: 573-613)
# Address: 0x0da517e0 - 0x0da51968 (Size: 392 bytes, Frame: 32)
.globl __glexpim_Hint
.ent __glexpim_Hint
__glexpim_Hint:
    # Line 575
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 573
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 575
    lw	$at,__glBeginMode
    # Line 573
    lui	$v1,0x1a
    addiu	$v1,$v1,24712
    # Line 575
    beq	$at,$v0,.L0da518d8
    # Line 573
    addu	$gp,$t9,$v1
    # Line 575
    li	$a2,4352
    beq	$a1,$a2,.L0da51840
    li	$at,4353
    beq	$a1,$at,.L0da51840
    li	$v0,4354
    beq	$a1,$v0,.L0da51844
    # Line 587
    li	$v1,3152
    # Line 584
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 585
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51840:
    # Line 587
    li	$v1,3152
.L0da51844:
    beq	$a0,$v1,.L0da518ac
    li	$a2,3153
    beq	$a0,$a2,.L0da518f8
    li	$at,3154
    beq	$a0,$at,.L0da51930
    li	$v0,3155
    beq	$a0,$v0,.L0da518b4
    li	$v1,3156
    beq	$a0,$v1,.L0da51888
    # Line 609
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 610
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51888:
    # Line 606
    sw	$a1,1812($a3)
.L0da5188c:
    # Line 612
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a0,11764($a3)
    ld	$gp,0($sp)
    # Line 613
    addiu	$sp,$sp,32
    # Line 612
    ori	$a0,$a0,0x1
    # Line 613
    jr	$ra
    # Line 612
    sw	$a0,11764($a3)
.L0da518ac:
    # Line 590
    b	.L0da5188c
    # Line 589
    sw	$a1,1796($a3)
.L0da518b4:
    # Line 602
    sw	$a1,1808($a3)
    # Line 603
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11764($a3)
    ld	$gp,0($sp)
    # Line 604
    addiu	$sp,$sp,32
    # Line 603
    ori	$at,$at,0x4
    # Line 604
    jr	$ra
    # Line 603
    sw	$at,11764($a3)
.L0da518d8:
    # Line 575
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da518f8:
    # Line 592
    sw	$a1,1800($a3)
    # Line 593
    li	$a0,2
    sw	$a0,__glBeginMode
    sd	$ra,8($sp)
    lw	$v1,11764($a3)
    # Line 594
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    move	$a0,$a3
    # Line 593
    ori	$v1,$v1,0x8
    # Line 594
    jal	__glExpEnablePointSmooth
    # Line 593
    sw	$v1,11764($a3)
    # Line 595
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51930:
    # Line 597
    sw	$a1,1804($a3)
    # Line 598
    li	$a2,2
    sw	$a2,__glBeginMode
    # Line 599
    move	$a0,$a3
    # Line 598
    lw	$a1,11764($a3)
    # Line 599
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    sd	$ra,8($sp)
    # Line 598
    ori	$a1,$a1,0x2
    # Line 599
    jal	__glExpEnableLineSmooth
    # Line 598
    sw	$a1,11764($a3)
    # Line 600
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_Hint

# Function: __glexpim_IndexMask
# Declared: Line 615 (Source lines: 616-624)
# Address: 0x0da51968 - 0x0da519ec (Size: 132 bytes, Frame: 32)
.globl __glexpim_IndexMask
.ent __glexpim_IndexMask
__glexpim_IndexMask:
    # Line 617
    lw	$a2,__glCurrentContext
    # Line 616
    move	$a3,$a0
    # Line 617
    li	$v0,1
    # Line 616
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 617
    lw	$at,__glBeginMode
    # Line 616
    lui	$v1,0x1a
    addiu	$v1,$v1,24320
    # Line 617
    beq	$at,$v0,.L0da519d0
    # Line 616
    nop
    # Line 619
    lw	$a5,30740($a2)
    # Line 621
    li	$a4,2
    # Line 619
    and	$a5,$a5,$a3
    # Line 620
    sw	$a5,1780($a2)
    # Line 621
    sw	$a4,__glBeginMode
    lw	$a1,11764($a2)
    # Line 623
    # lw $t9, -31816($gp) # &__glExpPassIndexMask
    move	$a0,$a2
    # Line 621
    ori	$a1,$a1,0x1
    # Line 623
    jal	__glExpPassIndexMask
    # Line 621
    sw	$a1,11764($a2)
    # Line 624
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da519d0:
    # Line 617
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_IndexMask

# Function: __glExpTransformLightDirection
# Declared: Line 626 (Source lines: 627-651)
# Address: 0x0da519ec - 0x0da51b0c (Size: 288 bytes, Frame: 224)
.globl __glExpTransformLightDirection
.ent __glExpTransformLightDirection
__glExpTransformLightDirection:
    # Line 630
    lw	$v1,1488($a0)
    li	$at,116
    subu	$v1,$a1,$v1
    div	$zero,$v1,$at
    # Line 633
    lwc1	$f8,80($a1)
    # Line 627
    addiu	$sp,$sp,-96
    # Line 633
    swc1	$f8,0($sp)
    # Line 634
    lwc1	$f6,84($a1)
    sd	$s0,40($sp)
    # sd	gp,48(sp)
    swc1	$f6,4($sp)
    # Line 627
    lui	$v0,0x1a
    # Line 635
    lwc1	$f5,88($a1)
    # Line 627
    addiu	$v0,$v0,24188
    # addu	gp,t9,v0
    # Line 635
    swc1	$f5,8($sp)
    mtc1	$zero,$f9
    lwc1	$f7,60($a1)
    # Line 627
    move	$s0,$a0
    # Line 630
    teq	$at,$zero,0x7
    # Line 635
    c.eq.s	$f7,$f9
    sd	$a1,32($sp)
    # Line 630
    mflo	$a3
    # Line 635
    bc1t	.L0da51a80
    ld	$a2,32($sp)
    # Line 637
    lwc1	$f1,52($a2)
    lwc1	$f4,48($a2)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,56($a2)
    mul.s	$f4,$f4,$f8
    mul.s	$f0,$f0,$f5
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    sd	$s2,56($sp)
    neg.s	$f4,$f4
    b	.L0da51a88
    div.s	$f4,$f4,$f7
.L0da51a80:
    # Line 640
    mov.s	$f4,$f9
    sd	$s2,56($sp)
.L0da51a88:
    # Line 642
    swc1	$f4,12($sp)
    # Line 644
    lw	$s2,29664($s0)
    lbu	$at,268($s2)
    sd	$ra,64($sp)
    beqz	$at,.L0da51ab0
    sd	$a3,24($sp)
    # Line 646
    lw	$t9,11908($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
.L0da51ab0:
    # Line 648
    addiu	$a2,$s2,88
    ld	$a0,32($sp)
    lw	$t9,168($s2)
    addiu	$a1,$sp,0
    addiu	$a0,$a0,80
    jalr	$t9
    sd	$a0,16($sp)
    ld	$s2,56($sp)
    ld	$a1,16($sp)
    # Line 649
    ld	$a3,24($sp)
    lw	$t9,11912($s0)
    lw	$a0,28104($s0)
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x5
    addu	$a0,$a0,$a2
    jalr	$t9
    addiu	$a0,$a0,132
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    # ld	gp,48(sp)
    # Line 651
    jr	$ra
    addiu	$sp,$sp,96
.end __glExpTransformLightDirection

# Function: __glexpim_Lightfv
# Declared: Line 653 (Source lines: 654-734)
# Address: 0x0da51b0c - 0x0da51e18 (Size: 780 bytes, Frame: 192)
.globl __glexpim_Lightfv
.ent __glexpim_Lightfv
__glexpim_Lightfv:
    # Line 654
    move	$a4,$a2
    # Line 657
    li	$v0,1
    # Line 654
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 657
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 654
    lui	$v1,0x1a
    addiu	$v1,$v1,23900
    # Line 657
    beq	$at,$v0,.L0da51df4
    # Line 654
    addu	$gp,$t9,$v1
    # Line 660
    lw	$a3,3328($s0)
    # Line 666
    la	$a6,sub_0dbf0000
    # Line 660
    addiu	$a2,$a0,-16384
    sltu	$a3,$a2,$a3
    beqz	$a3,.L0da51b94
    # Line 666
    sll	$at,$a0,0x3
    lui	$a6,%hi(jtbl_0dbeb000)
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addiu	$a5,$a1,-4608
    sltiu	$v0,$a5,10
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a6
    lw	$a6,1488($s0)
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lui	$at,0x1d
    beqz	$v0,.L0da51b94
    subu	$a6,$a6,$at
    lw	$at,%lo(jtbl_0dbeb000)($a5)
    jr	$at
    # Line 723
    mtc1	$zero,$f0
.L0da51b94:
    # Line 662
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 663
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da51bb8:
    # Line 669
    move	$a0,$s0
    move	$a1,$a6
    # lw $t9, -28392($gp) # &__glScaleColorf
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glScaleColorf
    move	$a2,$a4
    b	.L0da51bf8
    ld	$a2,24($sp)
.L0da51bdc:
    # Line 723
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f0
    nop
    bc1t	.L0da51dd4
    # Line 699
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 726
    swc1	$f4,112($a6)
.L0da51bf8:
    # Line 731
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 733
    move	$a1,$a2
    # Line 731
    lw	$v0,11764($s0)
    # Line 733
    # lw $t9, -32248($gp) # &__glExpValidateLightSource
    move	$a0,$s0
    # Line 731
    ori	$v0,$v0,0x20
    # Line 733
    jal	__glExpValidateLightSource
    # Line 731
    sw	$v0,11764($s0)
    # Line 734
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da51c30:
    # Line 672
    move	$a0,$s0
    sd	$a2,24($sp)
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColorf
    addiu	$a1,$a6,16
    b	.L0da51bf8
    ld	$a2,24($sp)
.L0da51c54:
    # Line 675
    move	$a0,$s0
    sd	$a2,24($sp)
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColorf
    addiu	$a1,$a6,32
    b	.L0da51bf8
    ld	$a2,24($sp)
.L0da51c78:
    # Line 678
    lwc1	$f4,0($a4)
    swc1	$f4,48($a6)
    # Line 679
    lwc1	$f3,4($a4)
    swc1	$f3,52($a6)
    # Line 680
    lwc1	$f2,8($a4)
    swc1	$f2,56($a6)
    # Line 681
    lwc1	$f1,12($a4)
    swc1	$f1,60($a6)
    sd	$a2,24($sp)
    # Line 686
    lw	$a2,29664($s0)
    # Line 687
    lw	$t9,80($a2)
    addiu	$a1,$a6,48
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$a6,64
    b	.L0da51bf8
    ld	$a2,24($sp)
.L0da51cbc:
    # Line 690
    lwc1	$f8,0($a4)
    sd	$a2,24($sp)
    # Line 694
    move	$a1,$a6
    # Line 690
    swc1	$f8,80($a6)
    # Line 694
    move	$a0,$s0
    # Line 691
    lwc1	$f7,4($a4)
    sd	$ra,16($sp)
    # Line 693
    lwc1	$f6,_lit_3f800000
    # Line 691
    swc1	$f7,84($a6)
    # Line 694
    # lw $t9, -32552($gp) # &__glExpTransformLightDirection
    # Line 692
    lwc1	$f5,8($a4)
    # Line 693
    swc1	$f6,92($a6)
    # Line 694
    bal __glExpTransformLightDirection
    # Line 692
    swc1	$f5,88($a6)
    b	.L0da51bf8
    ld	$a2,24($sp)
.L0da51cfc:
    # Line 697
    mtc1	$zero,$f0
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f0
    nop
    bc1t	.L0da51dd0
    lwc1	$f1,_lit_43000000
    c.lt.s	$f1,$f4
    nop
    bc1t	.L0da51dd4
    # Line 699
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 703
    b	.L0da51bf8
    # Line 702
    swc1	$f4,96($a6)
.L0da51d30:
    # Line 705
    lwc1	$f2,_lit_43340000
    lwc1	$f4,0($a4)
    c.eq.s	$f4,$f2
    nop
    bc1t	.L0da51d70
    mtc1	$zero,$f3
    c.lt.s	$f4,$f3
    nop
    bc1t	.L0da51d68
    lwc1	$f0,_lit_42b40000
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0da51d74
    move	$a0,$zero
.L0da51d68:
    b	.L0da51d74
    li	$a0,1
.L0da51d70:
    move	$a0,$zero
.L0da51d74:
    bnez	$a0,.L0da51dd4
    # Line 699
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 709
    b	.L0da51bf8
    # Line 708
    swc1	$f4,100($a6)
.L0da51d88:
    # Line 711
    mtc1	$zero,$f1
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f1
    nop
    bc1t	.L0da51dd4
    # Line 699
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 715
    b	.L0da51bf8
    # Line 714
    swc1	$f4,104($a6)
.L0da51dac:
    # Line 717
    mtc1	$zero,$f2
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f2
    nop
    bc1t	.L0da51dd4
    # Line 699
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 721
    b	.L0da51bf8
    # Line 720
    swc1	$f4,108($a6)
.L0da51dd0:
    # Line 699
    # lw $t9, -29008($gp) # &__glSetError
.L0da51dd4:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 700
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da51df4:
    # Line 657
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Lightfv

# Function: __glexpim_Lightf
# Declared: Line 736 (Source lines: 737-751)
# Address: 0x0da51e18 - 0x0da51e98 (Size: 128 bytes, Frame: 48)
.globl __glexpim_Lightf
.ent __glexpim_Lightf
__glexpim_Lightf:
    # Line 737
    li	$at,4613
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,23120
    beq	$a1,$at,.L0da51e78
    nop
    li	$v1,4614
    beq	$a1,$v1,.L0da51e78
    li	$a2,4615
    beq	$a1,$a2,.L0da51e78
    li	$at,4616
    beq	$a1,$at,.L0da51e78
    li	$v0,4617
    beq	$a1,$v0,.L0da51e78
    sd	$ra,8($sp)
    # Line 748
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 749
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da51e78:
    # Line 745
    # lw $t9, -32548($gp) # &__glexpim_Lightfv
    sd	$ra,8($sp)
    bal __glexpim_Lightfv
    addiu	$a2,$sp,32
    # Line 751
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Lightf

# Function: __glexpim_Lightiv
# Declared: Line 753 (Source lines: 754-833)
# Address: 0x0da51e98 - 0x0da521e0 (Size: 840 bytes, Frame: 192)
.globl __glexpim_Lightiv
.ent __glexpim_Lightiv
__glexpim_Lightiv:
    # Line 754
    move	$a4,$a2
    # Line 757
    li	$v0,1
    # Line 754
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 757
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 754
    lui	$v1,0x1a
    addiu	$v1,$v1,22992
    # Line 757
    beq	$at,$v0,.L0da521bc
    # Line 754
    addu	$gp,$t9,$v1
    # Line 760
    lw	$a3,3328($s0)
    # Line 766
    la	$a6,sub_0dbf0000
    # Line 760
    addiu	$a2,$a0,-16384
    sltu	$a3,$a2,$a3
    beqz	$a3,.L0da51f20
    # Line 766
    sll	$at,$a0,0x3
    lui	$a6,%hi(jtbl_0dbeb028)
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addiu	$a5,$a1,-4608
    sltiu	$v0,$a5,10
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a6
    lw	$a6,1488($s0)
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lui	$at,0x1d
    beqz	$v0,.L0da51f20
    subu	$a6,$a6,$at
    lw	$at,%lo(jtbl_0dbeb028)($a5)
    jr	$at
    # Line 804
    li	$v0,180
.L0da51f20:
    # Line 762
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 763
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da51f44:
    # Line 769
    move	$a0,$s0
    move	$a1,$a6
    # lw $t9, -28380($gp) # &__glScaleColori
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glScaleColori
    move	$a2,$a4
    b	.L0da51f88
    ld	$a2,24($sp)
.L0da51f68:
    # Line 822
    lw	$a0,0($a4)
    bltz	$a0,.L0da5219c
    # Line 798
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 825
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,16($sp)
    swc1	$f0,112($a6)
.L0da51f88:
    # Line 830
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 832
    move	$a1,$a2
    # Line 830
    lw	$v0,11764($s0)
    # Line 832
    # lw $t9, -32248($gp) # &__glExpValidateLightSource
    move	$a0,$s0
    # Line 830
    ori	$v0,$v0,0x20
    # Line 832
    jal	__glExpValidateLightSource
    # Line 830
    sw	$v0,11764($s0)
    # Line 833
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da51fc0:
    # Line 772
    move	$a0,$s0
    sd	$a2,24($sp)
    # lw $t9, -28380($gp) # &__glScaleColori
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColori
    addiu	$a1,$a6,16
    b	.L0da51f88
    ld	$a2,24($sp)
.L0da51fe4:
    # Line 775
    move	$a0,$s0
    sd	$a2,24($sp)
    # lw $t9, -28380($gp) # &__glScaleColori
    move	$a2,$a4
    sd	$ra,16($sp)
    jal	__glScaleColori
    addiu	$a1,$a6,32
    b	.L0da51f88
    ld	$a2,24($sp)
.L0da52008:
    # Line 778
    lw	$a3,0($a4)
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    swc1	$f4,48($a6)
    sd	$a2,24($sp)
    # Line 779
    lw	$a2,4($a4)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,52($a6)
    # Line 780
    lw	$a1,8($a4)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,56($a6)
    # Line 781
    lw	$a0,12($a4)
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,60($a6)
    # Line 785
    lw	$a2,29664($s0)
    # Line 786
    lw	$t9,80($a2)
    sd	$ra,16($sp)
    addiu	$a1,$a6,48
    jalr	$t9
    addiu	$a0,$a6,64
    b	.L0da51f88
    ld	$a2,24($sp)
.L0da5207c:
    # Line 789
    lw	$a7,0($a4)
    mtc1	$a7,$f7
    nop
    cvt.s.w	$f7,$f7
    swc1	$f7,80($a6)
    # Line 790
    lw	$a5,4($a4)
    mtc1	$a5,$f6
    nop
    cvt.s.w	$f6,$f6
    swc1	$f6,84($a6)
    # Line 791
    lw	$a4,8($a4)
    sd	$a2,24($sp)
    mtc1	$a4,$f5
    # Line 793
    move	$a1,$a6
    move	$a0,$s0
    # Line 791
    cvt.s.w	$f5,$f5
    # Line 792
    lwc1	$f6,_lit_3f800000
    # Line 793
    # lw $t9, -32552($gp) # &__glExpTransformLightDirection
    sd	$ra,16($sp)
    # Line 792
    swc1	$f6,92($a6)
    # Line 793
    bal __glExpTransformLightDirection
    # Line 791
    swc1	$f5,88($a6)
    b	.L0da51f88
    ld	$a2,24($sp)
.L0da520dc:
    # Line 796
    lw	$a0,0($a4)
    bltz	$a0,.L0da52198
    slti	$at,$a0,129
    beqz	$at,.L0da5219c
    # Line 798
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 801
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,16($sp)
    # Line 802
    b	.L0da51f88
    # Line 801
    swc1	$f0,96($a6)
.L0da52108:
    # Line 804
    lw	$a0,0($a4)
    beq	$a0,$v0,.L0da52178
    move	$a1,$zero
    bltz	$a0,.L0da52124
    slti	$v1,$a0,91
    bnez	$v1,.L0da52178
    move	$a1,$zero
.L0da52124:
    b	.L0da52178
    li	$a1,1
.L0da5212c:
    # Line 810
    lw	$a0,0($a4)
    bltz	$a0,.L0da5219c
    # Line 798
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 813
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    sd	$ra,16($sp)
    # Line 814
    b	.L0da51f88
    # Line 813
    swc1	$f1,104($a6)
.L0da52150:
    # Line 816
    lw	$a0,0($a4)
    bltz	$a0,.L0da5219c
    # Line 798
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 819
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    sd	$ra,16($sp)
    # Line 820
    b	.L0da51f88
    # Line 819
    swc1	$f2,108($a6)
    # Line 804
    move	$a1,$zero
.L0da52178:
    bnez	$a1,.L0da5219c
    # Line 798
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 807
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    sd	$ra,16($sp)
    # Line 808
    b	.L0da51f88
    # Line 807
    swc1	$f3,100($a6)
.L0da52198:
    # Line 798
    # lw $t9, -29008($gp) # &__glSetError
.L0da5219c:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 799
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da521bc:
    # Line 757
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glexpim_Lightiv

# Function: __glexpim_Lighti
# Declared: Line 835 (Source lines: 836-850)
# Address: 0x0da521e0 - 0x0da52260 (Size: 128 bytes, Frame: 48)
.globl __glexpim_Lighti
.ent __glexpim_Lighti
__glexpim_Lighti:
    # Line 836
    li	$at,4613
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,22152
    beq	$a1,$at,.L0da52240
    nop
    li	$v1,4614
    beq	$a1,$v1,.L0da52240
    li	$a2,4615
    beq	$a1,$a2,.L0da52240
    li	$at,4616
    beq	$a1,$at,.L0da52240
    li	$v0,4617
    beq	$a1,$v0,.L0da52240
    sd	$ra,8($sp)
    # Line 847
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 848
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52240:
    # Line 844
    # lw $t9, -32540($gp) # &__glexpim_Lightiv
    sd	$ra,8($sp)
    bal __glexpim_Lightiv
    addiu	$a2,$sp,36
    # Line 850
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Lighti

# Function: __glexpim_LightModelfv
# Declared: Line 852 (Source lines: 853-873)
# Address: 0x0da52260 - 0x0da5236c (Size: 268 bytes, Frame: 48)
.globl __glexpim_LightModelfv
.ent __glexpim_LightModelfv
__glexpim_LightModelfv:
    # Line 853
    move	$a2,$a1
    # Line 855
    li	$v0,1
    # Line 853
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$v1,0x1a
    addiu	$v1,$v1,22024
    # Line 855
    lw	$at,__glBeginMode
    lw	$a5,__glCurrentContext
    # Line 853
    addu	$gp,$t9,$v1
    # Line 855
    beq	$at,$v0,.L0da52324
    move	$a4,$a5
    # Line 858
    li	$a3,2899
    beq	$a0,$a3,.L0da52344
    li	$at,2897
    beq	$a0,$at,.L0da52304
    li	$v0,2898
    beq	$a0,$v0,.L0da522c4
    # Line 869
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 870
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da522c4:
    # Line 866
    li	$v1,1
    mtc1	$zero,$f1
    lwc1	$f0,0($a2)
    c.eq.s	$f0,$f1
    nop
    bc1tl	.L0da522e0
    move	$v1,$zero
.L0da522e0:
    sb	$v1,1325($a5)
.L0da522e4:
    # Line 872
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($a4)
    ld	$gp,8($sp)
    # Line 873
    addiu	$sp,$sp,48
    # Line 872
    ori	$a0,$a0,0x20
    # Line 873
    jr	$ra
    # Line 872
    sw	$a0,11764($a4)
.L0da52304:
    # Line 863
    mtc1	$zero,$f3
    lwc1	$f2,0($a2)
    c.eq.s	$f2,$f3
    li	$at,1
    bc1tl	.L0da5231c
    move	$at,$zero
.L0da5231c:
    # Line 864
    b	.L0da522e4
    # Line 863
    sb	$at,1324($a4)
.L0da52324:
    # Line 855
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52344:
    sd	$a4,0($sp)
    # Line 860
    move	$a0,$a4
    # lw $t9, -28392($gp) # &__glScaleColorf
    sd	$ra,16($sp)
    move	$a1,$a4
    jal	__glScaleColorf
    addiu	$a1,$a4,1308
    ld	$a4,0($sp)
    b	.L0da522e4
    ld	$ra,16($sp)
.end __glexpim_LightModelfv

# Function: __glexpim_LightModelf
# Declared: Line 875 (Source lines: 876-887)
# Address: 0x0da5236c - 0x0da523d4 (Size: 104 bytes, Frame: 32)
.globl __glexpim_LightModelf
.ent __glexpim_LightModelf
__glexpim_LightModelf:
    # Line 876
    li	$at,2897
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,21756
    beq	$a0,$at,.L0da523b4
    nop
    li	$v1,2898
    beq	$a0,$v1,.L0da523b4
    sd	$ra,8($sp)
    # Line 884
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 885
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da523b4:
    # Line 881
    # lw $t9, -32532($gp) # &__glexpim_LightModelfv
    sd	$ra,8($sp)
    bal __glexpim_LightModelfv
    addiu	$a1,$sp,24
    # Line 887
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_LightModelf

# Function: __glexpim_LightModeliv
# Declared: Line 889 (Source lines: 890-910)
# Address: 0x0da523d4 - 0x0da524bc (Size: 232 bytes, Frame: 48)
.globl __glexpim_LightModeliv
.ent __glexpim_LightModeliv
__glexpim_LightModeliv:
    # Line 890
    move	$a2,$a1
    # Line 892
    li	$v0,1
    # Line 890
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$v1,0x1a
    addiu	$v1,$v1,21652
    # Line 892
    lw	$at,__glBeginMode
    lw	$a5,__glCurrentContext
    # Line 890
    addu	$gp,$t9,$v1
    # Line 892
    beq	$at,$v0,.L0da52474
    move	$a4,$a5
    # Line 895
    li	$a3,2899
    beq	$a0,$a3,.L0da52494
    li	$at,2897
    beq	$a0,$at,.L0da52464
    li	$v0,2898
    beq	$a0,$v0,.L0da52438
    # Line 906
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 907
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52438:
    # Line 903
    lw	$v1,0($a2)
    sltu	$v1,$zero,$v1
    sb	$v1,1325($a5)
.L0da52444:
    # Line 909
    li	$a3,2
    sw	$a3,__glBeginMode
    lw	$a0,11764($a4)
    ld	$gp,8($sp)
    # Line 910
    addiu	$sp,$sp,48
    # Line 909
    ori	$a0,$a0,0x20
    # Line 910
    jr	$ra
    # Line 909
    sw	$a0,11764($a4)
.L0da52464:
    # Line 900
    lw	$at,0($a2)
    sltu	$at,$zero,$at
    # Line 901
    b	.L0da52444
    # Line 900
    sb	$at,1324($a4)
.L0da52474:
    # Line 892
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52494:
    sd	$a4,0($sp)
    # Line 897
    move	$a0,$a4
    # lw $t9, -28380($gp) # &__glScaleColori
    sd	$ra,16($sp)
    move	$a1,$a4
    jal	__glScaleColori
    addiu	$a1,$a4,1308
    ld	$a4,0($sp)
    b	.L0da52444
    ld	$ra,16($sp)
.end __glexpim_LightModeliv

# Function: __glexpim_LightModeli
# Declared: Line 912 (Source lines: 913-924)
# Address: 0x0da524bc - 0x0da52524 (Size: 104 bytes, Frame: 32)
.globl __glexpim_LightModeli
.ent __glexpim_LightModeli
__glexpim_LightModeli:
    # Line 913
    li	$at,2897
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,21420
    beq	$a0,$at,.L0da52504
    nop
    li	$v1,2898
    beq	$a0,$v1,.L0da52504
    sd	$ra,8($sp)
    # Line 921
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 922
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da52504:
    # Line 918
    # lw $t9, -32524($gp) # &__glexpim_LightModeliv
    sd	$ra,8($sp)
    bal __glexpim_LightModeliv
    addiu	$a1,$sp,28
    # Line 924
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_LightModeli

# Function: __glexpim_LineStipple
# Declared: Line 926 (Source lines: 927-941)
# Address: 0x0da52524 - 0x0da525c8 (Size: 164 bytes, Frame: 32)
.globl __glexpim_LineStipple
.ent __glexpim_LineStipple
__glexpim_LineStipple:
    # Line 928
    lw	$a4,__glCurrentContext
    # Line 927
    move	$a3,$a0
    # Line 928
    li	$v0,1
    # Line 927
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 928
    lw	$at,__glBeginMode
    # Line 927
    lui	$v1,0x1a
    addiu	$v1,$v1,21316
    # Line 928
    beq	$at,$v0,.L0da525a8
    # Line 927
    nop
    # Line 928
    blez	$a3,.L0da525a0
.L0da52550:
    # Line 931
    slti	$a2,$a3,256
    bnezl	$a2,.L0da52568
    # Line 937
    sh	$a1,456($a4)
    sd	$ra,8($sp)
    # Line 934
    li	$a3,255
    # Line 937
    sh	$a1,456($a4)
.L0da52568:
    # Line 936
    sh	$a3,458($a4)
    # Line 938
    li	$a5,2
    sw	$a5,__glBeginMode
    # Line 940
    move	$a0,$a4
    # Line 938
    lw	$a3,11764($a4)
    # Line 940
    # lw $t9, -32220($gp) # &__glExpPassLineStipple
    sd	$ra,8($sp)
    # Line 938
    ori	$a3,$a3,0x2
    # Line 940
    jal	__glExpPassLineStipple
    # Line 938
    sw	$a3,11764($a4)
    # Line 941
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da525a0:
    b	.L0da52550
    # Line 931
    li	$a3,1
.L0da525a8:
    # Line 928
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_LineStipple

# Function: RoundWidth
# Declared: Line 943 (Source lines: 944-947)
# Address: 0x0da525c8 - 0x0da525f8 (Size: 48 bytes, Frame: 0)
.ent RoundWidth
RoundWidth:
    # Line 944
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 946
    li	$v0,1
    # Line 944
    bc1f	.L0da525e4
    # Line 947
    lwc1	$f1,_lit_3f000000
    # Line 946
    jr	$ra
    nop
.L0da525e4:
    # Line 947
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    jr	$ra
    nop
.end RoundWidth

# Function: ClampWidth
# Declared: Line 950 (Source lines: 952-962)
# Address: 0x0da525f8 - 0x0da5264c (Size: 84 bytes, Frame: 0)
.ent ClampWidth
ClampWidth:
    # Line 952
    lwc1	$f5,3460($a0)
    # Line 954
    c.le.s	$f13,$f5
    lwc1	$f6,3468($a0)
    bc1t	.L0da52644
    # Line 953
    lwc1	$f0,3464($a0)
    # Line 957
    c.le.s	$f0,$f13
    nop
    bc1fl	.L0da52624
    # Line 962
    sub.s	$f1,$f13,$f5
    # Line 958
    jr	$ra
    nop
.L0da52624:
    # Line 962
    div.s	$f1,$f1,$f6
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    jr	$ra
    add.s	$f0,$f0,$f5
.L0da52644:
    # Line 957
    jr	$ra
    mov.s	$f0,$f5
.end ClampWidth

# Function: __glexpim_LineWidth
# Declared: Line 965 (Source lines: 966-980)
# Address: 0x0da5264c - 0x0da52744 (Size: 248 bytes, Frame: 48)
.globl __glexpim_LineWidth
.ent __glexpim_LineWidth
__glexpim_LineWidth:
    # Line 967
    li	$v0,1
    # Line 966
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 967
    lw	$s0,__glCurrentContext
    sdc1	$f20,0($sp)
    # Line 966
    mov.s	$f20,$f12
    # sd	gp,8(sp)
    # Line 967
    lw	$at,__glBeginMode
    # Line 966
    lui	$v1,0x1a
    addiu	$v1,$v1,21020
    # Line 967
    beq	$at,$v0,.L0da5271c
    # Line 966
    nop
    # Line 967
    mtc1	$zero,$f0
    c.le.s	$f20,$f0
    nop
    bc1f	.L0da526b4
    sd	$ra,24($sp)
    # Line 970
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # ld	gp,8(sp)
    # Line 971
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da526b4:
    # Line 975
    # lw $t9, -32748($gp) # &sub_0da50000
    mov.s	$f12,$f20
    addiu	$t9,$t9,9672
    bal __glexpim_LineStipple
    # Line 974
    swc1	$f20,444($s0)
    # Line 976
    # lw $t9, -32748($gp) # &sub_0da50000
    mov.s	$f13,$f20
    move	$a0,$s0
    addiu	$t9,$t9,9720
    bal __glexpim_LineStipple
    # Line 975
    sw	$v0,452($s0)
    # Line 976
    swc1	$f0,448($s0)
    # Line 977
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # Line 979
    # lw $t9, -32224($gp) # &__glExpPassLineWidth
    move	$a0,$s0
    # Line 977
    ori	$at,$at,0x2
    # Line 979
    jal	__glExpPassLineWidth
    # Line 977
    sw	$at,11764($s0)
    # ld	gp,8(sp)
    # Line 980
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5271c:
    # Line 967
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    # ld	gp,8(sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_LineWidth

# Function: __glexpim_LogicOp
# Declared: Line 982 (Source lines: 983-994)
# Address: 0x0da52744 - 0x0da527f4 (Size: 176 bytes, Frame: 32)
.globl __glexpim_LogicOp
.ent __glexpim_LogicOp
__glexpim_LogicOp:
    # Line 984
    lw	$a3,__glCurrentContext
    # Line 983
    move	$a2,$a0
    # Line 984
    li	$v0,1
    # Line 983
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 984
    lw	$at,__glBeginMode
    # Line 983
    lui	$v1,0x1a
    addiu	$v1,$v1,20772
    # Line 984
    beq	$at,$v0,.L0da527d4
    # Line 983
    nop
    # Line 986
    sltiu	$a1,$a2,5376
    bnez	$a1,.L0da52780
    sltiu	$at,$a2,5392
    bnez	$at,.L0da527a0
    sd	$ra,8($sp)
.L0da52780:
    # Line 987
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 988
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da527a0:
    # Line 990
    sw	$a2,1756($a3)
    # Line 991
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11764($a3)
    # Line 993
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    move	$a0,$a3
    # Line 991
    ori	$v0,$v0,0x1
    # Line 993
    jal	__glExpPassLogicOp
    # Line 991
    sw	$v0,11764($a3)
    # Line 994
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da527d4:
    # Line 984
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_LogicOp

# Function: ApplyParameterF
# Declared: Line 996 (Source lines: 998-1039)
# Address: 0x0da527f4 - 0x0da52980 (Size: 396 bytes, Frame: 48)
.ent ApplyParameterF
ApplyParameterF:
    # Line 998
    addiu	$sp,$sp,-48
    # Line 999
    sltiu	$at,$a2,5632
    bnez	$at,.L0da5284c
    # Line 998
    move	$a6,$a1
    # Line 999
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0da528c8
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0da528a8
    sltiu	$a4,$a2,5635
    bnez	$a4,.L0da52918
    li	$at,5635
    bne	$a2,$at,.L0da528a0
    # Line 1039
    move	$v0,$zero
    # Line 1001
    lwc1	$f2,0($a3)
    swc1	$f2,68($a6)
    # Line 1002
    lwc1	$f1,4($a3)
    swc1	$f1,76($a6)
    # Line 1004
    li	$v0,32
    # Line 1003
    lwc1	$f0,8($a3)
    # Line 1004
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1003
    swc1	$f0,72($a6)
.L0da5284c:
    # Line 999
    sltiu	$v0,$a2,4609
    bnez	$v0,.L0da52894
    sltiu	$v1,$a2,4610
    bnez	$v1,.L0da528ec
    li	$a4,4610
    bne	$a2,$a4,.L0da528a0
    # Line 1039
    move	$v0,$zero
    # Line 1013
    li	$v0,4
    # Line 1009
    lwc1	$f1,0($a3)
    swc1	$f1,32($a6)
    # Line 1010
    lwc1	$f0,4($a3)
    swc1	$f0,36($a6)
    # Line 1011
    lwc1	$f4,8($a3)
    swc1	$f4,40($a6)
    # Line 1012
    lwc1	$f3,12($a3)
    # Line 1013
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1012
    swc1	$f3,44($a6)
.L0da52894:
    # Line 999
    li	$at,4608
    beq	$a2,$at,.L0da52954
    # Line 1039
    move	$v0,$zero
.L0da528a0:
    jr	$ra
    addiu	$sp,$sp,48
.L0da528a8:
    # Line 999
    li	$v0,5633
    bne	$a2,$v0,.L0da528a0
    # Line 1039
    move	$v0,$zero
    # Line 1016
    li	$v0,16
    # Line 1015
    lwc1	$f2,0($a3)
    # Line 1016
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1015
    swc1	$f2,64($a6)
.L0da528c8:
    # Line 1006
    # lw $t9, -28392($gp) # &__glScaleColorf
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColorf
    addiu	$a1,$a6,48
    # Line 1007
    ld	$ra,0($sp)
    li	$v0,8
    jr	$ra
    addiu	$sp,$sp,48
.L0da528ec:
    # Line 1028
    li	$v0,2
    # Line 1024
    lwc1	$f1,0($a3)
    swc1	$f1,16($a6)
    # Line 1025
    lwc1	$f0,4($a3)
    swc1	$f0,20($a6)
    # Line 1026
    lwc1	$f4,8($a3)
    swc1	$f4,24($a6)
    # Line 1027
    lwc1	$f3,12($a3)
    # Line 1028
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1027
    swc1	$f3,28($a6)
.L0da52918:
    # Line 1035
    li	$v0,3
    # Line 1030
    lwc1	$f3,0($a3)
    swc1	$f3,0($a6)
    # Line 1031
    lwc1	$f4,4($a3)
    swc1	$f4,4($a6)
    # Line 1032
    lwc1	$f0,8($a3)
    swc1	$f0,8($a6)
    # Line 1033
    lwc1	$f2,12($a3)
    # Line 1034
    swc1	$f0,24($a6)
    swc1	$f4,20($a6)
    swc1	$f3,16($a6)
    # Line 1035
    addiu	$sp,$sp,48
    # Line 1034
    swc1	$f2,28($a6)
    # Line 1035
    jr	$ra
    # Line 1033
    swc1	$f2,12($a6)
.L0da52954:
    # Line 1022
    li	$v0,1
    # Line 1018
    lwc1	$f4,0($a3)
    swc1	$f4,0($a6)
    # Line 1019
    lwc1	$f3,4($a3)
    swc1	$f3,4($a6)
    # Line 1020
    lwc1	$f2,8($a3)
    swc1	$f2,8($a6)
    # Line 1021
    lwc1	$f1,12($a3)
    # Line 1022
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1021
    swc1	$f1,12($a6)
.end ApplyParameterF

# Function: __glExpErrorCheckMaterial
# Declared: Line 1042 (Source lines: 1043-1068)
# Address: 0x0da52980 - 0x0da52a50 (Size: 208 bytes, Frame: 0)
.globl __glExpErrorCheckMaterial
.ent __glExpErrorCheckMaterial
__glExpErrorCheckMaterial:
    # Line 1043
    li	$v0,1028
    lui	$v1,0x1a
    addiu	$v1,$v1,20200
    beq	$a0,$v0,.L0da529b0
    nop
    li	$a2,1029
    beq	$a0,$a2,.L0da529b0
    li	$a3,1032
    beq	$a0,$a3,.L0da529b0
    # Line 1050
    li	$v0,1280
    jr	$ra
    nop
.L0da529b0:
    # Line 1051
    sltiu	$v0,$a1,5632
    bnez	$v0,.L0da529e4
    # Line 1052
    sltiu	$v1,$a1,5633
    bnez	$v1,.L0da52a00
    sltiu	$a2,$a1,5634
    bnez	$a2,.L0da52a1c
    sltiu	$a3,$a1,5635
    bnez	$a3,.L0da52a00
    li	$v0,5635
    bne	$a1,$v0,.L0da52a14
    nop
    b	.L0da52a00
    nop
.L0da529e4:
    sltiu	$v1,$a1,4609
    bnez	$v1,.L0da52a08
    sltiu	$a2,$a1,4610
    bnez	$a2,.L0da52a00
    li	$a3,4610
    bne	$a1,$a3,.L0da52a14
    nop
.L0da52a00:
    # Line 1068
    jr	$ra
    move	$v0,$zero
.L0da52a08:
    # Line 1052
    li	$v0,4608
    beq	$a1,$v0,.L0da52a00
    nop
.L0da52a14:
    # Line 1066
    jr	$ra
    li	$v0,1280
.L0da52a1c:
    # Line 1052
    li	$v1,5633
    bne	$a1,$v1,.L0da52a14
    # Line 1061
    mtc1	$zero,$f0
    c.lt.s	$f14,$f0
    nop
    bc1t	.L0da52a48
    lwc1	$f1,_lit_43000000
    c.lt.s	$f1,$f14
    nop
    bc1f	.L0da52a00
    nop
.L0da52a48:
    # Line 1062
    jr	$ra
    li	$v0,1281
.end __glExpErrorCheckMaterial

# Function: __glexpim_Materialfv
# Declared: Line 1071 (Source lines: 1072-1116)
# Address: 0x0da52a50 - 0x0da52c00 (Size: 432 bytes, Frame: 224)
.globl __glexpim_Materialfv
.ent __glexpim_Materialfv
__glexpim_Materialfv:
    # Line 1077
    lwc1	$f14,0($a2)
    # Line 1072
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 1075
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 1072
    lui	$at,0x1a
    addiu	$at,$at,19992
    addu	$gp,$t9,$at
    # Line 1077
    # lw $t9, -32504($gp) # &__glExpErrorCheckMaterial
    sd	$s1,32($sp)
    sd	$ra,48($sp)
    bal __glExpErrorCheckMaterial
    # Line 1072
    move	$s1,$a0
    # Line 1077
    beqzl	$v0,.L0da52ab8
    # Line 1080
    lw	$v1,__glBeginMode
    # Line 1079
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,40($sp)
    # Line 1080
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da52ab8:
    li	$a4,1
    beq	$v1,$a4,.L0da52b4c
    # Line 1092
    li	$a5,1028
.L0da52ac4:
    beq	$s1,$a5,.L0da52b6c
    li	$at,1029
    beq	$s1,$at,.L0da52b94
    li	$v1,1032
    beq	$s1,$v1,.L0da52bbc
    lw	$a4,0($sp)
    lw	$s1,4($sp)
    sd	$a4,24($sp)
.L0da52ae4:
    # Line 1105
    ld	$a5,8($sp)
    li	$at,5635
    beq	$a5,$at,.L0da52b04
    # Line 1108
    nop	# was lw $t9, -28320($gp) # &__glValidateMaterial
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glValidateMaterial
    move	$a2,$s1
.L0da52b04:
    lw	$v1,1696($s0)
    andi	$v1,$v1,0x80
    beqz	$v1,.L0da52b24
    # Line 1115
    nop	# was lw $t9, -32256($gp) # &__glExpValidateMaterial
    # Line 1112
    lw	$t9,12008($s0)
    jal	__glExpValidateMaterial
    move	$a0,$s0
    # Line 1115
    # lw $t9, -32256($gp) # &__glExpValidateMaterial
.L0da52b24:
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glExpValidateMaterial
    move	$a2,$s1
    ld	$gp,40($sp)
    # Line 1116
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da52b4c:
    # Line 1080
    lw	$a4,28096($s0)
    beqz	$a4,.L0da52ac4
    # Line 1092
    li	$a5,1028
    # Line 1089
    lw	$t9,12028($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0da52ac4
    # Line 1092
    li	$a5,1028
.L0da52b6c:
    # Line 1094
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,10228
    bal __glexpim_LogicOp
    addiu	$a1,$s0,1328
    sd	$v0,24($sp)
    # Line 1096
    b	.L0da52ae4
    # Line 1095
    move	$s1,$zero
.L0da52b94:
    # Line 1098
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,10228
    bal __glexpim_LogicOp
    addiu	$a1,$s0,1408
    move	$s1,$v0
    # Line 1100
    b	.L0da52ae4
    sd	$zero,24($sp)
.L0da52bbc:
    # Line 1102
    addiu	$a1,$s0,1408
    # lw $t9, -32748($gp) # &sub_0da50000
    move	$a0,$s0
    ld	$a2,8($sp)
    addiu	$t9,$t9,10228
    bal __glexpim_LogicOp
    ld	$a3,16($sp)
    move	$s1,$v0
    # Line 1103
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    addiu	$a1,$s0,1328
    ld	$a2,8($sp)
    addiu	$t9,$t9,10228
    bal __glexpim_LogicOp
    ld	$a3,16($sp)
    b	.L0da52ae4
    sd	$v0,24($sp)
.end __glexpim_Materialfv

# Function: __glexpim_Materialf
# Declared: Line 1118 (Source lines: 1119-1129)
# Address: 0x0da52c00 - 0x0da52c5c (Size: 92 bytes, Frame: 48)
.globl __glexpim_Materialf
.ent __glexpim_Materialf
__glexpim_Materialf:
    # Line 1119
    li	$at,5633
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,19560
    beq	$a1,$at,.L0da52c40
    nop
    # Line 1126
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1127
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52c40:
    # Line 1123
    # lw $t9, -32500($gp) # &__glexpim_Materialfv
    bal __glexpim_Materialfv
    addiu	$a2,$sp,32
    # Line 1129
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Materialf

# Function: ApplyParameterI
# Declared: Line 1131 (Source lines: 1133-1174)
# Address: 0x0da52c5c - 0x0da52ff4 (Size: 920 bytes, Frame: 48)
.ent ApplyParameterI
ApplyParameterI:
    # Line 1133
    addiu	$sp,$sp,-48
    # Line 1134
    sltiu	$at,$a2,5632
    bnez	$at,.L0da52ce0
    # Line 1133
    move	$a6,$a1
    # Line 1134
    sltiu	$v0,$a2,5633
    bnez	$v0,.L0da52de4
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0da52db8
    # Line 1170
    li	$v0,3
    # Line 1134
    sltiu	$a4,$a2,5635
    bnez	$a4,.L0da52ea8
    # Line 1165
    lwc1	$f2,_lit_3f800000
    # Line 1134
    li	$at,5635
    bne	$a2,$at,.L0da52db0
    # Line 1174
    move	$v0,$zero
    # Line 1136
    lw	$a0,0($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,68($a6)
    # Line 1137
    lw	$v1,4($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,76($a6)
    # Line 1138
    lw	$v0,8($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1139
    addiu	$sp,$sp,48
    li	$v0,32
    jr	$ra
    # Line 1138
    swc1	$f0,72($a6)
.L0da52ce0:
    # Line 1134
    sltiu	$a4,$a2,4609
    bnez	$a4,.L0da52da0
    sltiu	$at,$a2,4610
    bnez	$at,.L0da52e08
    # Line 1159
    lwc1	$f3,_lit_3f800000
    # Line 1134
    li	$v0,4610
    bne	$a2,$v0,.L0da52dac
    # Line 1144
    lwc1	$f0,_lit_3f800000
    lw	$at,0($a3)
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f1,_lit_40000000
    mul.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,32($a6)
    # Line 1145
    lw	$a5,4($a3)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f2
    swc1	$f4,36($a6)
    # Line 1146
    lw	$a4,8($a3)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,40($a6)
    # Line 1147
    lw	$v1,12($a3)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f4
    # Line 1148
    li	$v0,4
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1147
    swc1	$f3,44($a6)
.L0da52da0:
    # Line 1134
    li	$v0,4608
    beq	$a2,$v0,.L0da52f54
    # Line 1153
    lwc1	$f2,_lit_3f800000
.L0da52dac:
    # Line 1174
    move	$v0,$zero
.L0da52db0:
    jr	$ra
    addiu	$sp,$sp,48
.L0da52db8:
    # Line 1134
    li	$v1,5633
    bne	$a2,$v1,.L0da52db0
    # Line 1174
    move	$v0,$zero
    # Line 1151
    li	$v0,16
    # Line 1150
    lw	$a0,0($a3)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1151
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1150
    swc1	$f0,64($a6)
.L0da52de4:
    # Line 1141
    # lw $t9, -28380($gp) # &__glScaleColori
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColori
    addiu	$a1,$a6,48
    # Line 1142
    ld	$ra,0($sp)
    li	$v0,8
    jr	$ra
    addiu	$sp,$sp,48
.L0da52e08:
    # Line 1159
    lw	$v0,0($a3)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f4,_lit_40000000
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,16($a6)
    # Line 1160
    lw	$at,4($a3)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f0
    swc1	$f2,20($a6)
    # Line 1161
    lw	$a5,8($a3)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,24($a6)
    # Line 1162
    lw	$a4,12($a3)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    # Line 1163
    li	$v0,2
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1162
    swc1	$f1,28($a6)
.L0da52ea8:
    # Line 1165
    lw	$at,0($a3)
    mtc1	$at,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f3,_lit_40000000
    mul.s	$f5,$f5,$f3
    add.s	$f5,$f5,$f2
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a6)
    # Line 1166
    lw	$a5,4($a3)
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f5,3308($a0)
    mul.s	$f5,$f5,$f0
    swc1	$f5,4($a6)
    # Line 1167
    lw	$a4,8($a3)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a6)
    # Line 1168
    lw	$v1,12($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f3,3308($a0)
    mul.s	$f3,$f3,$f1
    # Line 1169
    swc1	$f0,24($a6)
    swc1	$f5,20($a6)
    swc1	$f4,16($a6)
    # Line 1170
    addiu	$sp,$sp,48
    # Line 1169
    swc1	$f3,28($a6)
    # Line 1170
    jr	$ra
    # Line 1168
    swc1	$f3,12($a6)
.L0da52f54:
    # Line 1153
    lw	$a5,0($a3)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a6)
    # Line 1154
    lw	$a4,4($a3)
    mtc1	$a4,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a6)
    # Line 1155
    lw	$v1,8($a3)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f4,3308($a0)
    mul.s	$f4,$f4,$f0
    swc1	$f4,8($a6)
    # Line 1156
    lw	$v0,12($a3)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1157
    addiu	$sp,$sp,48
    li	$v0,1
    jr	$ra
    # Line 1156
    swc1	$f0,12($a6)
.end ApplyParameterI

# Function: __glexpim_Materialiv
# Declared: Line 1177 (Source lines: 1179-1223)
# Address: 0x0da52ff4 - 0x0da531ac (Size: 440 bytes, Frame: 224)
.globl __glexpim_Materialiv
.ent __glexpim_Materialiv
__glexpim_Materialiv:
    # Line 1179
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 1182
    lw	$s0,__glCurrentContext
    sd	$a1,8($sp)
    sd	$s1,32($sp)
    # Line 1179
    move	$s1,$a0
    sd	$a2,16($sp)
    sd	$gp,40($sp)
    # Line 1184
    lw	$at,0($a2)
    # Line 1179
    lui	$v0,0x1a
    addiu	$v0,$v0,18548
    addu	$gp,$t9,$v0
    # Line 1184
    # lw $t9, -32504($gp) # &__glExpErrorCheckMaterial
    mtc1	$at,$f14
    sd	$ra,48($sp)
    bal __glExpErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqzl	$v0,.L0da53064
    # Line 1187
    lw	$v1,__glBeginMode
    # Line 1186
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,40($sp)
    # Line 1187
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da53064:
    li	$a4,1
    beq	$v1,$a4,.L0da530f8
    # Line 1199
    li	$a5,1028
.L0da53070:
    beq	$s1,$a5,.L0da53118
    li	$at,1029
    beq	$s1,$at,.L0da53140
    li	$v1,1032
    beq	$s1,$v1,.L0da53168
    lw	$a4,0($sp)
    lw	$s1,4($sp)
    sd	$a4,24($sp)
.L0da53090:
    # Line 1212
    ld	$a5,8($sp)
    li	$at,5635
    beq	$a5,$at,.L0da530b0
    # Line 1215
    nop	# was lw $t9, -28320($gp) # &__glValidateMaterial
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glValidateMaterial
    move	$a2,$s1
.L0da530b0:
    lw	$v1,1696($s0)
    andi	$v1,$v1,0x80
    beqz	$v1,.L0da530d0
    # Line 1222
    nop	# was lw $t9, -32256($gp) # &__glExpValidateMaterial
    # Line 1219
    lw	$t9,12008($s0)
    jal	__glExpValidateMaterial
    move	$a0,$s0
    # Line 1222
    # lw $t9, -32256($gp) # &__glExpValidateMaterial
.L0da530d0:
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glExpValidateMaterial
    move	$a2,$s1
    ld	$gp,40($sp)
    # Line 1223
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da530f8:
    # Line 1187
    lw	$a4,28096($s0)
    beqz	$a4,.L0da53070
    # Line 1199
    li	$a5,1028
    # Line 1196
    lw	$t9,12028($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0da53070
    # Line 1199
    li	$a5,1028
.L0da53118:
    # Line 1201
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,11356
    bal __glexpim_Materialf
    addiu	$a1,$s0,1328
    sd	$v0,24($sp)
    # Line 1203
    b	.L0da53090
    # Line 1202
    move	$s1,$zero
.L0da53140:
    # Line 1205
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,11356
    bal __glexpim_Materialf
    addiu	$a1,$s0,1408
    move	$s1,$v0
    # Line 1207
    b	.L0da53090
    sd	$zero,24($sp)
.L0da53168:
    # Line 1209
    addiu	$a1,$s0,1408
    # lw $t9, -32748($gp) # &sub_0da50000
    move	$a0,$s0
    ld	$a2,8($sp)
    addiu	$t9,$t9,11356
    bal __glexpim_Materialf
    ld	$a3,16($sp)
    move	$s1,$v0
    # Line 1210
    move	$a0,$s0
    # lw $t9, -32748($gp) # &sub_0da50000
    addiu	$a1,$s0,1328
    ld	$a2,8($sp)
    addiu	$t9,$t9,11356
    bal __glexpim_Materialf
    ld	$a3,16($sp)
    b	.L0da53090
    sd	$v0,24($sp)
.end __glexpim_Materialiv

# Function: __glexpim_Materiali
# Declared: Line 1225 (Source lines: 1226-1236)
# Address: 0x0da531ac - 0x0da53208 (Size: 92 bytes, Frame: 48)
.globl __glexpim_Materiali
.ent __glexpim_Materiali
__glexpim_Materiali:
    # Line 1226
    li	$at,5633
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    # sd	gp,0(sp)
    lui	$v0,0x1a
    addiu	$v0,$v0,18108
    beq	$a1,$at,.L0da531ec
    nop
    # Line 1233
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1234
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da531ec:
    # Line 1230
    # lw $t9, -32492($gp) # &__glexpim_Materialiv
    bal __glexpim_Materialiv
    addiu	$a2,$sp,36
    # Line 1236
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Materiali

# Function: RoundSize
# Declared: Line 1238 (Source lines: 1239-1242)
# Address: 0x0da53208 - 0x0da53238 (Size: 48 bytes, Frame: 0)
.ent RoundSize
RoundSize:
    # Line 1239
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 1241
    li	$v0,1
    # Line 1239
    bc1f	.L0da53224
    # Line 1242
    lwc1	$f1,_lit_3f000000
    # Line 1241
    jr	$ra
    nop
.L0da53224:
    # Line 1242
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    jr	$ra
    nop
.end RoundSize

# Function: ClampSize
# Declared: Line 1245 (Source lines: 1247-1257)
# Address: 0x0da53238 - 0x0da5328c (Size: 84 bytes, Frame: 0)
.ent ClampSize
ClampSize:
    # Line 1247
    lwc1	$f5,3448($a0)
    # Line 1249
    c.le.s	$f13,$f5
    lwc1	$f6,3456($a0)
    bc1t	.L0da53284
    # Line 1248
    lwc1	$f0,3452($a0)
    # Line 1252
    c.le.s	$f0,$f13
    nop
    bc1fl	.L0da53264
    # Line 1257
    sub.s	$f1,$f13,$f5
    # Line 1253
    jr	$ra
    nop
.L0da53264:
    # Line 1257
    div.s	$f1,$f1,$f6
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    jr	$ra
    add.s	$f0,$f0,$f5
.L0da53284:
    # Line 1252
    jr	$ra
    mov.s	$f0,$f5
.end ClampSize

# Function: __glexpim_PointSize
# Declared: Line 1260 (Source lines: 1261-1274)
# Address: 0x0da5328c - 0x0da53384 (Size: 248 bytes, Frame: 48)
.globl __glexpim_PointSize
.ent __glexpim_PointSize
__glexpim_PointSize:
    # Line 1262
    li	$v0,1
    # Line 1261
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 1262
    lw	$s0,__glCurrentContext
    sdc1	$f20,0($sp)
    # Line 1261
    mov.s	$f20,$f12
    # sd	gp,8(sp)
    # Line 1262
    lw	$at,__glBeginMode
    # Line 1261
    lui	$v1,0x1a
    addiu	$v1,$v1,17884
    # Line 1262
    beq	$at,$v0,.L0da5335c
    # Line 1261
    nop
    # Line 1262
    mtc1	$zero,$f0
    c.le.s	$f20,$f0
    nop
    bc1f	.L0da532f4
    sd	$ra,24($sp)
    # Line 1265
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # ld	gp,8(sp)
    # Line 1266
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da532f4:
    # Line 1269
    # lw $t9, -32748($gp) # &sub_0da50000
    mov.s	$f12,$f20
    addiu	$t9,$t9,12808
    bal __glexpim_Materiali
    # Line 1268
    swc1	$f20,432($s0)
    # Line 1270
    # lw $t9, -32748($gp) # &sub_0da50000
    mov.s	$f13,$f20
    move	$a0,$s0
    addiu	$t9,$t9,12856
    bal __glexpim_Materiali
    # Line 1269
    sw	$v0,440($s0)
    # Line 1270
    swc1	$f0,436($s0)
    # Line 1271
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11764($s0)
    # Line 1273
    # lw $t9, -32020($gp) # &__glExpPassPointSize
    move	$a0,$s0
    # Line 1271
    ori	$at,$at,0x8
    # Line 1273
    jal	__glExpPassPointSize
    # Line 1271
    sw	$at,11764($s0)
    # ld	gp,8(sp)
    # Line 1274
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5335c:
    # Line 1262
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    # ld	gp,8(sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_PointSize

# Function: __glexpim_PolygonMode
# Declared: Line 1276 (Source lines: 1277-1311)
# Address: 0x0da53384 - 0x0da534b8 (Size: 308 bytes, Frame: 32)
.globl __glexpim_PolygonMode
.ent __glexpim_PolygonMode
__glexpim_PolygonMode:
    # Line 1278
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 1277
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1278
    lw	$at,__glBeginMode
    # Line 1277
    lui	$v1,0x1a
    addiu	$v1,$v1,17636
    # Line 1278
    beq	$at,$v0,.L0da53498
    # Line 1277
    addu	$gp,$t9,$v1
    # Line 1280
    li	$a2,6914
    beq	$a1,$a2,.L0da533f4
    li	$at,6912
    beq	$a1,$at,.L0da53468
    li	$v0,6913
    beq	$a1,$v0,.L0da533e0
    # Line 1290
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1291
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da533e0:
    # Line 1287
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$v1,11764($a3)
    ori	$v1,$v1,0x2
    sw	$v1,11764($a3)
.L0da533f4:
    # Line 1293
    li	$at,1028
    beq	$a0,$at,.L0da53480
    li	$v0,1029
    beq	$a0,$v0,.L0da5348c
    li	$v1,1032
    beq	$a0,$v1,.L0da5342c
    # Line 1305
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1306
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da5342c:
    sd	$ra,8($sp)
    # Line 1302
    sw	$a1,464($a3)
    # Line 1301
    sw	$a1,460($a3)
.L0da53438:
    # Line 1308
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a1,11764($a3)
    # Line 1310
    # lw $t9, -32028($gp) # &__glExpPassPolygonMode
    move	$a0,$a3
    # Line 1308
    ori	$a1,$a1,0x4
    # Line 1310
    jal	__glExpPassPolygonMode
    # Line 1308
    sw	$a1,11764($a3)
    # Line 1311
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da53468:
    # Line 1284
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11764($a3)
    ori	$at,$at,0x8
    # Line 1285
    b	.L0da533f4
    # Line 1284
    sw	$at,11764($a3)
.L0da53480:
    sd	$ra,8($sp)
    # Line 1296
    b	.L0da53438
    # Line 1295
    sw	$a1,460($a3)
.L0da5348c:
    sd	$ra,8($sp)
    # Line 1299
    b	.L0da53438
    # Line 1298
    sw	$a1,464($a3)
.L0da53498:
    # Line 1278
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_PolygonMode

# Function: __glexpim_PolygonStipple
# Declared: Line 1313 (Source lines: 1314-1322)
# Address: 0x0da534b8 - 0x0da5355c (Size: 164 bytes, Frame: 48)
.globl __glexpim_PolygonStipple
.ent __glexpim_PolygonStipple
__glexpim_PolygonStipple:
    # Line 1314
    move	$a5,$a0
    # Line 1316
    li	$v0,1
    # Line 1314
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    # Line 1316
    lw	$s0,__glCurrentContext
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    # Line 1314
    lui	$v1,0x1a
    addiu	$v1,$v1,17328
    # Line 1316
    beq	$at,$v0,.L0da5353c
    # Line 1314
    nop
    # Line 1319
    move	$a0,$s0
    addiu	$a6,$s0,488
    li	$a4,6656
    # lw $t9, -28396($gp) # &__glFillImage
    li	$a3,6400
    li	$a2,32
    jal	__glFillImage
    li	$a1,32
    # Line 1320
    lw	$t9,12664($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1321
    li	$a1,2
    sw	$a1,__glBeginMode
    lw	$a0,11764($s0)
    # ld	gp,0(sp)
    # Line 1322
    ld	$ra,16($sp)
    # Line 1321
    ori	$a0,$a0,0x4
    sw	$a0,11764($s0)
    # Line 1322
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5353c:
    # Line 1316
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,0(sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_PolygonStipple

# Function: __glexpim_ShadeModel
# Declared: Line 1324 (Source lines: 1325-1336)
# Address: 0x0da5355c - 0x0da5360c (Size: 176 bytes, Frame: 32)
.globl __glexpim_ShadeModel
.ent __glexpim_ShadeModel
__glexpim_ShadeModel:
    # Line 1326
    lw	$a3,__glCurrentContext
    # Line 1325
    move	$a2,$a0
    # Line 1326
    li	$v0,1
    # Line 1325
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 1326
    lw	$at,__glBeginMode
    # Line 1325
    lui	$v1,0x1a
    addiu	$v1,$v1,17164
    # Line 1326
    beq	$at,$v0,.L0da535ec
    # Line 1325
    nop
    # Line 1328
    sltiu	$a1,$a2,7424
    bnez	$a1,.L0da53598
    sltiu	$at,$a2,7426
    bnez	$at,.L0da535b8
    sd	$ra,8($sp)
.L0da53598:
    # Line 1329
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1330
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da535b8:
    # Line 1332
    sw	$a2,1304($a3)
    # Line 1333
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11764($a3)
    # Line 1335
    # lw $t9, -31784($gp) # &__glExpPassShadeModel
    move	$a0,$a3
    # Line 1333
    ori	$v0,$v0,0x1
    # Line 1335
    jal	__glExpPassShadeModel
    # Line 1333
    sw	$v0,11764($a3)
    # Line 1336
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da535ec:
    # Line 1326
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_ShadeModel

# Function: __glexpim_StencilMask
# Declared: Line 1338 (Source lines: 1339-1347)
# Address: 0x0da5360c - 0x0da536a4 (Size: 152 bytes, Frame: 32)
.globl __glexpim_StencilMask
.ent __glexpim_StencilMask
__glexpim_StencilMask:
    # Line 1340
    lw	$a3,__glCurrentContext
    # Line 1339
    move	$a2,$a0
    # Line 1340
    li	$a4,1
    # Line 1339
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 1340
    lw	$at,__glBeginMode
    # Line 1339
    lui	$v0,0x1a
    addiu	$v0,$v0,16988
    # Line 1340
    beq	$at,$a4,.L0da53688
    # Line 1339
    nop
    # Line 1342
    lw	$a6,3132($a3)
    # Line 1343
    li	$a5,2
    # Line 1342
    sllv	$a6,$a4,$a6
    addiu	$a6,$a6,-1
    and	$a6,$a6,$a2
    sh	$a6,1578($a3)
    # Line 1343
    sw	$a5,__glBeginMode
    # Line 1346
    move	$a0,$a3
    # Line 1343
    lw	$v1,11764($a3)
    # Line 1344
    lw	$a1,11760($a3)
    # Line 1346
    # lw $t9, -31524($gp) # &__glExpPassStencilMask
    # Line 1343
    ori	$v1,$v1,0x1
    # Line 1344
    ori	$a1,$a1,0x2
    sw	$a1,11760($a3)
    # Line 1346
    jal	__glExpPassStencilMask
    # Line 1343
    sw	$v1,11764($a3)
    # Line 1347
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da53688:
    # Line 1340
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_StencilMask

# Function: __glexpim_StencilFunc
# Declared: Line 1349 (Source lines: 1350-1366)
# Address: 0x0da536a4 - 0x0da5379c (Size: 248 bytes, Frame: 48)
.globl __glexpim_StencilFunc
.ent __glexpim_StencilFunc
__glexpim_StencilFunc:
    # Line 1351
    lw	$a5,__glCurrentContext
    # Line 1350
    move	$a4,$a0
    # Line 1351
    li	$a7,1
    # Line 1350
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1351
    lw	$at,__glBeginMode
    # Line 1350
    lui	$v0,0x1a
    addiu	$v0,$v0,16836
    # Line 1351
    beq	$at,$a7,.L0da5377c
    # Line 1350
    addu	$gp,$t9,$v0
    # Line 1353
    sltiu	$v1,$a4,512
    bnez	$v1,.L0da53754
    sltiu	$a3,$a4,520
    beqz	$a3,.L0da53758
    # Line 1354
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1355
    bltz	$a1,.L0da53774
    nop
.L0da536e8:
    # Line 1357
    lw	$a6,3132($a5)
    sllv	$a6,$a7,$a6
    slt	$at,$a1,$a6
    bnez	$at,.L0da53704
    addiu	$a6,$a6,-1
    sd	$ra,8($sp)
    # Line 1358
    move	$a1,$a6
.L0da53704:
    # Line 1365
    move	$a0,$a5
    # Line 1360
    sh	$a1,1574($a5)
    # Line 1359
    sw	$a4,1568($a5)
    # Line 1362
    li	$t1,2
    # Line 1361
    and	$t2,$a6,$a2
    sh	$t2,1576($a5)
    # Line 1362
    sw	$t1,__glBeginMode
    sd	$ra,8($sp)
    lw	$a7,11764($a5)
    # Line 1363
    lw	$t0,11760($a5)
    # Line 1365
    # lw $t9, -31520($gp) # &__glExpPassStencilMode
    # Line 1362
    ori	$a7,$a7,0x1
    # Line 1363
    ori	$t0,$t0,0x2
    sw	$t0,11760($a5)
    # Line 1365
    jal	__glExpPassStencilMode
    # Line 1362
    sw	$a7,11764($a5)
    # Line 1366
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53754:
    # Line 1354
    # lw $t9, -29008($gp) # &__glSetError
.L0da53758:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1355
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53774:
    b	.L0da536e8
    # Line 1357
    move	$a1,$zero
.L0da5377c:
    # Line 1351
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_StencilFunc

# Function: __glexpim_StencilOp
# Declared: Line 1368 (Source lines: 1369-1406)
# Address: 0x0da5379c - 0x0da5392c (Size: 400 bytes, Frame: 48)
.globl __glexpim_StencilOp
.ent __glexpim_StencilOp
__glexpim_StencilOp:
    # Line 1370
    lw	$a5,__glCurrentContext
    # Line 1369
    move	$a4,$a0
    # Line 1370
    li	$v0,1
    # Line 1369
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1370
    lw	$at,__glBeginMode
    # Line 1369
    lui	$v1,0x1a
    addiu	$v1,$v1,16588
    # Line 1370
    beq	$at,$v0,.L0da5390c
    # Line 1369
    addu	$gp,$t9,$v1
    # Line 1370
    beqz	$a4,.L0da53814
    li	$v1,7682
    li	$a3,5386
    beq	$a4,$a3,.L0da53814
    li	$at,7680
    beq	$a4,$at,.L0da53814
    li	$v0,7681
    beq	$a4,$v0,.L0da53814
    nop
    beq	$a4,$v1,.L0da53814
    li	$a3,7683
    beq	$a4,$a3,.L0da53814
    # Line 1377
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1378
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53814:
    # Line 1379
    beqz	$a1,.L0da5386c
    li	$v0,7680
    li	$at,5386
    beq	$a1,$at,.L0da53870
    # Line 1388
    li	$a3,7681
    # Line 1379
    beq	$a1,$v0,.L0da5386c
    li	$at,7683
    li	$v1,7681
    beq	$a1,$v1,.L0da5386c
    li	$a3,7682
    beq	$a1,$a3,.L0da53870
    # Line 1388
    li	$a3,7681
    # Line 1379
    beq	$a1,$at,.L0da53870
    # Line 1388
    li	$a3,7681
    # Line 1386
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1387
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5386c:
    # Line 1388
    li	$a3,7681
.L0da53870:
    beqz	$a2,.L0da538c0
    li	$v1,7680
    li	$v0,5386
    beq	$a2,$v0,.L0da538c4
    # Line 1405
    move	$a0,$a5
    # Line 1388
    beq	$a2,$v1,.L0da538c0
    li	$v0,7683
    beq	$a2,$a3,.L0da538c0
    li	$at,7682
    beq	$a2,$at,.L0da538c4
    # Line 1405
    move	$a0,$a5
    # Line 1388
    beq	$a2,$v0,.L0da538c0
    sd	$ra,8($sp)
    # Line 1395
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1396
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da538c0:
    # Line 1405
    move	$a0,$a5
.L0da538c4:
    # Line 1401
    sw	$a2,1588($a5)
    # Line 1400
    sw	$a1,1584($a5)
    # Line 1399
    sw	$a4,1580($a5)
    # Line 1402
    li	$a3,2
    sw	$a3,__glBeginMode
    sd	$ra,8($sp)
    lw	$v1,11764($a5)
    # Line 1403
    lw	$a1,11760($a5)
    # Line 1405
    # lw $t9, -31520($gp) # &__glExpPassStencilMode
    # Line 1402
    ori	$v1,$v1,0x1
    # Line 1403
    ori	$a1,$a1,0x4
    sw	$a1,11760($a5)
    # Line 1405
    jal	__glExpPassStencilMode
    # Line 1402
    sw	$v1,11764($a5)
    # Line 1406
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5390c:
    # Line 1370
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_StencilOp

# Function: __glExpCopyContext
# Declared: Line 1414 (Source lines: 1416-1666)
# Address: 0x0da5392c - 0x0da543d4 (Size: 2728 bytes, Frame: 128)
.globl __glExpCopyContext
.ent __glExpCopyContext
__glExpCopyContext:
    # Line 1416
    addiu	$sp,$sp,-128
    sd	$s7,24($sp)
    sd	$ra,40($sp)
    sd	$s6,0($sp)
    move	$s6,$a2
    sd	$s3,32($sp)
    move	$s3,$a0
    sd	$s5,8($sp)
    move	$s5,$a1
    sd	$gp,16($sp)
    lw	$at,__glCurrentContext
    lui	$v0,0x1a
    addiu	$v0,$v0,16188
    beq	$at,$a1,.L0da543a8
    addu	$gp,$t9,$v0
    # Line 1438
    lwc1	$f3,30756($s5)
.L0da5396c:
    swc1	$f3,30756($s3)
    # Line 1439
    lwc1	$f2,30760($s5)
    swc1	$f2,30760($s3)
    # Line 1440
    lwc1	$f1,30764($s5)
    swc1	$f1,30764($s3)
    # Line 1446
    # lw $t9, -29024($gp) # &__glContextSetColorScales
    # Line 1441
    lwc1	$f0,30796($s5)
    # Line 1446
    move	$a0,$s3
    jal	__glContextSetColorScales
    # Line 1441
    swc1	$f0,30796($s3)
    # Line 1449
    andi	$a3,$s6,0x4000
    # Line 1446
    andi	$v1,$s6,0x200
    beqz	$v1,.L0da539c4
    ld	$ra,40($sp)
    # Line 1449
    lwc1	$f3,1552($s5)
    swc1	$f3,1552($s3)
    lwc1	$f2,1556($s5)
    swc1	$f2,1556($s3)
    lwc1	$f1,1560($s5)
    swc1	$f1,1560($s3)
    lwc1	$f0,1564($s5)
    swc1	$f0,1564($s3)
.L0da539c4:
    beqz	$a3,.L0da53a54
    # Line 1464
    li	$s7,2
    # Line 1453
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s3,1720
    addiu	$a4,$s5,1720
.L0da539dc:
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da539dc
    sd	$at,0($v0)
    addu	$at,$a0,$a4
    lw	$at,0($at)
    addu	$v0,$a0,$a2
    sw	$at,0($v0)
    # Line 1454
    lw	$v1,1696($s3)
    li	$a3,-16
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1455
    lw	$v0,1696($s5)
    # Line 1460
    lw	$a3,11760($s3)
    # Line 1455
    andi	$v0,$v0,0xf
    or	$v0,$v0,$v1
    # Line 1457
    lw	$v1,1700($s3)
    # Line 1455
    sw	$v0,1696($s3)
    # Line 1457
    li	$at,-2049
    and	$v1,$v1,$at
    sw	$v1,1700($s3)
    # Line 1458
    lw	$v0,1700($s5)
    # Line 1460
    ori	$a3,$a3,0x1
    sw	$a3,11760($s3)
    # Line 1458
    andi	$v0,$v0,0x800
    or	$v0,$v0,$v1
    sw	$v0,1700($s3)
.L0da53a54:
    # Line 1460
    andi	$v0,$s6,0x1
    beqz	$v0,.L0da53a88
    # Line 1464
    li	$a1,34
    move	$a0,$zero
    addiu	$a2,$s3,160
    addiu	$a4,$s5,160
.L0da53a6c:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da53a6c
    sd	$v1,0($a3)
.L0da53a88:
    andi	$a3,$s6,0x100
    beqz	$a3,.L0da53ad8
    # Line 1472
    andi	$v1,$s6,0x2000
    # Line 1468
    ld	$v0,1536($s5)
    sd	$v0,1536($s3)
    ld	$at,1544($s5)
    # Line 1469
    lw	$v1,1696($s3)
    # Line 1468
    sd	$at,1544($s3)
    # Line 1469
    li	$a3,-17
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1470
    lw	$v0,1696($s5)
    andi	$v0,$v0,0x10
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1472
    sw	$s7,__glBeginMode
    lw	$at,11764($s3)
    ori	$at,$at,0x80
    sw	$at,11764($s3)
    andi	$v1,$s6,0x2000
.L0da53ad8:
    beqz	$v1,.L0da53b28
    # Line 1480
    lui	$at,0x1
    # Line 1476
    ld	$a4,1696($s5)
    sd	$a4,1696($s3)
    ld	$a3,1704($s5)
    sd	$a3,1704($s3)
    ld	$a2,1712($s5)
    sd	$a2,1712($s3)
    # Line 1477
    sw	$s7,__glBeginMode
    lw	$a1,11764($s3)
    # Line 1479
    lw	$t9,11800($s3)
    move	$a0,$s3
    # Line 1477
    ori	$a1,$a1,0xae
    # Line 1479
    jalr	$t9
    # Line 1477
    sw	$a1,11764($s3)
    # Line 1480
    lw	$t9,12008($s3)
    jalr	$t9
    move	$a0,$s3
    ld	$ra,40($sp)
    lui	$at,0x1
.L0da53b28:
    and	$at,$s6,$at
    beqz	$at,.L0da53ba0
    # Line 1489
    andi	$at,$s6,0x80
    # Line 1484
    ld	$a3,1824($s5)
    sd	$a3,1824($s3)
    ld	$v1,1832($s5)
    sd	$v1,1832($s3)
    ld	$v0,1840($s5)
    sd	$v0,1840($s3)
    ld	$at,1848($s5)
    sd	$at,1848($s3)
    ld	$a3,1856($s5)
    sd	$a3,1856($s3)
    ld	$v1,1864($s5)
    sd	$v1,1864($s3)
    # Line 1485
    lw	$at,1696($s3)
    lui	$v0,0x80
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1486
    lw	$a3,1696($s5)
    lui	$v0,0x80
    and	$a3,$a3,$v0
    or	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1488
    lw	$v1,1712($s5)
    sw	$v1,1712($s3)
    # Line 1489
    lw	$v0,1716($s5)
    sw	$v0,1716($s3)
    andi	$at,$s6,0x80
.L0da53ba0:
    beqz	$at,.L0da53bf0
    # Line 1493
    li	$a0,10
    move	$a1,$zero
    addiu	$a4,$s3,1492
    addiu	$a2,$s5,1492
.L0da53bb4:
    addu	$v1,$a1,$a4
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da53bb4
    sw	$v0,0($v1)
    # Line 1494
    lw	$a3,1696($s3)
    li	$at,-33
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1495
    lw	$v1,1696($s5)
    andi	$v1,$v1,0x20
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
.L0da53bf0:
    andi	$v0,$s6,0x8000
    beqz	$v0,.L0da53c38
    # Line 1500
    andi	$v0,$s6,0x40
    lw	$at,1796($s5)
    sw	$at,1796($s3)
    lw	$a3,1800($s5)
    sw	$a3,1800($s3)
    lw	$v1,1804($s5)
    sw	$v1,1804($s3)
    lw	$v0,1808($s5)
    sw	$v0,1808($s3)
    lw	$at,1812($s5)
    sw	$at,1812($s3)
    lw	$a3,1816($s5)
    sw	$a3,1816($s3)
    lw	$v1,1820($s5)
    sw	$v1,1820($s3)
    andi	$v0,$s6,0x40
.L0da53c38:
    beqz	$v0,.L0da53d40
    # Line 1517
    andi	$a3,$s6,0x4
    # Line 1504
    lw	$v1,1296($s5)
    sw	$v1,1296($s3)
    # Line 1505
    lw	$v0,1300($s5)
    sw	$v0,1300($s3)
    # Line 1506
    lw	$at,1304($s5)
    sw	$at,1304($s3)
    # Line 1507
    lw	$a4,1308($s5)
    sw	$a4,1308($s3)
    lw	$a3,1312($s5)
    sw	$a3,1312($s3)
    lw	$a2,1316($s5)
    sw	$a2,1316($s3)
    lw	$a1,1320($s5)
    # Line 1508
    li	$a0,10
    # Line 1507
    sw	$a1,1320($s3)
    # Line 1508
    move	$a1,$zero
    # Line 1507
    lw	$v1,1324($s5)
    # Line 1508
    addiu	$a2,$s3,1328
    addiu	$a4,$s5,1328
    # Line 1507
    sw	$v1,1324($s3)
.L0da53c90:
    # Line 1508
    addu	$at,$a1,$a2
    addu	$a3,$a1,$a4
    addiu	$a1,$a1,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da53c90
    sd	$a3,0($at)
    # Line 1509
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s3,1408
    addiu	$a4,$s5,1408
.L0da53cbc:
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da53cbc
    sd	$at,0($v0)
    # Line 1510
    lw	$a1,1488($s5)
    lw	$a3,3328($s3)
    lw	$a0,1488($s3)
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1513
    lw	$v0,1696($s3)
    li	$v1,-193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1514
    lw	$at,1696($s5)
    andi	$at,$at,0xc0
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1516
    lw	$ra,1704($s5)
    sw	$ra,1704($s3)
    # Line 1517
    sw	$s7,__glBeginMode
    lw	$a3,11764($s3)
    ld	$ra,40($sp)
    ori	$a3,$a3,0x20
    sw	$a3,11764($s3)
    andi	$a3,$s6,0x4
.L0da53d40:
    beqz	$a3,.L0da53da4
    # Line 1525
    lui	$a3,0x2
    # Line 1521
    lwc1	$f1,444($s5)
    swc1	$f1,444($s3)
    lwc1	$f0,448($s5)
    swc1	$f0,448($s3)
    lw	$v1,452($s5)
    sw	$v1,452($s3)
    lhu	$v0,456($s5)
    sh	$v0,456($s3)
    lh	$at,458($s5)
    # Line 1522
    lw	$v1,1696($s3)
    # Line 1521
    sh	$at,458($s3)
    # Line 1522
    li	$a3,-769
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1523
    lw	$v0,1696($s5)
    andi	$v0,$v0,0x300
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1525
    sw	$s7,__glBeginMode
    lw	$at,11764($s3)
    ori	$at,$at,0x2
    sw	$at,11764($s3)
    lui	$a3,0x2
.L0da53da4:
    and	$a3,$s6,$a3
    beqz	$a3,.L0da53dbc
    # Line 1529
    andi	$v0,$s6,0x20
    lw	$at,1872($s5)
    sw	$at,1872($s3)
    andi	$v0,$s6,0x20
.L0da53dbc:
    beqz	$v0,.L0da53e80
    # Line 1543
    andi	$at,$s6,0x2
    # Line 1533
    lw	$a2,1148($s5)
    # Line 1535
    li	$a0,15
    # Line 1533
    sw	$a2,1148($s3)
    # Line 1535
    move	$a2,$zero
    # Line 1534
    lw	$v1,1152($s5)
    # Line 1535
    addiu	$a4,$s3,616
    addiu	$a5,$s5,616
    # Line 1534
    sw	$v1,1152($s3)
.L0da53de4:
    # Line 1535
    addu	$at,$a2,$a4
    addu	$a3,$a2,$a5
    addiu	$a2,$a2,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da53de4
    sd	$a3,0($at)
    # Line 1536
    addiu	$a1,$s3,4892
    addiu	$a0,$s5,4892
    # lw $t9, -29032($gp) # &__glCopyColorTableScaleBias
    # Line 1535
    addu	$a5,$a2,$a5
    lw	$a5,0($a5)
    addu	$a6,$a2,$a4
    # Line 1536
    jal	__glCopyColorTableScaleBias
    # Line 1535
    sw	$a5,0($a6)
    # Line 1537
    lw	$v1,1696($s3)
    lui	$a3,0xe00
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1538
    lw	$v0,1696($s5)
    lui	$a3,0xe00
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    # Line 1540
    lui	$v1,0x3000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1541
    lw	$at,1696($s5)
    lui	$v1,0x3000
    and	$at,$at,$v1
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1543
    sw	$s7,__glBeginMode
    lw	$ra,11764($s3)
    ori	$ra,$ra,0x10
    sw	$ra,11764($s3)
    ld	$ra,40($sp)
    andi	$at,$s6,0x2
.L0da53e80:
    beqz	$at,.L0da53ed4
    # Line 1551
    andi	$v1,$s6,0x8
    # Line 1547
    lwc1	$f3,432($s5)
    swc1	$f3,432($s3)
    lwc1	$f2,436($s5)
    swc1	$f2,436($s3)
    lw	$v0,440($s5)
    # Line 1548
    lw	$a3,1696($s3)
    # Line 1547
    sw	$v0,440($s3)
    # Line 1548
    li	$at,-1025
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1549
    lw	$v1,1696($s5)
    andi	$v1,$v1,0x400
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1551
    sw	$s7,__glBeginMode
    lw	$v0,11764($s3)
    ori	$v0,$v0,0x8
    sw	$v0,11764($s3)
    andi	$v1,$s6,0x8
.L0da53ed4:
    beqz	$v1,.L0da53f70
    # Line 1569
    andi	$v0,$s6,0x10
    # Line 1555
    lw	$at,460($s5)
    sw	$at,460($s3)
    lw	$a3,464($s5)
    sw	$a3,464($s3)
    lw	$v1,468($s5)
    sw	$v1,468($s3)
    lw	$v0,472($s5)
    sw	$v0,472($s3)
    lw	$at,476($s5)
    sw	$at,476($s3)
    lw	$a3,480($s5)
    sw	$a3,480($s3)
    # Line 1561
    ld	$v0,-22120($gp)
    # Line 1555
    lw	$v1,484($s5)
    # Line 1561
    lw	$at,1696($s3)
    # Line 1555
    sw	$v1,484($s3)
    # Line 1561
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1562
    lw	$a3,1696($s5)
    lui	$v0,0x100
    ori	$v0,$v0,0x3800
    and	$a3,$a3,$v0
    or	$a3,$a3,$at
    # Line 1565
    lw	$v0,1700($s3)
    # Line 1562
    sw	$a3,1696($s3)
    # Line 1565
    li	$v1,-1537
    and	$v0,$v0,$v1
    sw	$v0,1700($s3)
    # Line 1566
    lw	$at,1700($s5)
    andi	$at,$at,0x600
    or	$at,$at,$v0
    sw	$at,1700($s3)
    # Line 1569
    sw	$s7,__glBeginMode
    lw	$a3,11764($s3)
    ori	$a3,$a3,0x4
    sw	$a3,11764($s3)
    andi	$v0,$s6,0x10
.L0da53f70:
    beqz	$v0,.L0da53fd0
    # Line 1573
    li	$a0,16
    move	$a1,$zero
    addiu	$a2,$s3,488
    addiu	$a4,$s5,488
.L0da53f84:
    addu	$a3,$a1,$a2
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da53f84
    sd	$v1,0($a3)
    # Line 1574
    lw	$v0,1696($s3)
    li	$v1,-8193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1575
    lw	$at,1696($s5)
    andi	$at,$at,0x2000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1577
    sw	$s7,__glBeginMode
    lw	$a3,11764($s3)
    ori	$a3,$a3,0x44
    sw	$a3,11764($s3)
.L0da53fd0:
    lui	$a3,0x8
    and	$a3,$s6,$a3
    beqz	$a3,.L0da54024
    # Line 1584
    andi	$a3,$s6,0x400
    # Line 1582
    lw	$v1,2412($s5)
    sw	$v1,2412($s3)
    lw	$v0,2416($s5)
    sw	$v0,2416($s3)
    lw	$at,2420($s5)
    sw	$at,2420($s3)
    lw	$a3,2424($s5)
    # Line 1583
    lw	$v0,1696($s3)
    # Line 1582
    sw	$a3,2424($s3)
    # Line 1583
    li	$v1,-16385
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1584
    lw	$at,1696($s5)
    andi	$at,$at,0x4000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    andi	$a3,$s6,0x400
.L0da54024:
    beqz	$a3,.L0da54078
    # Line 1593
    lui	$a3,0x4
    # Line 1589
    ld	$v1,1568($s5)
    sd	$v1,1568($s3)
    ld	$v0,1576($s5)
    sd	$v0,1576($s3)
    ld	$at,1584($s5)
    # Line 1593
    lw	$v1,11760($s3)
    # Line 1589
    sd	$at,1584($s3)
    # Line 1590
    lw	$v0,1696($s3)
    li	$a3,0x8000
    nor	$a3,$a3,$zero
    and	$v0,$v0,$a3
    sw	$v0,1696($s3)
    # Line 1591
    lw	$at,1696($s5)
    # Line 1593
    ori	$v1,$v1,0x6
    sw	$v1,11760($s3)
    # Line 1591
    andi	$at,$at,0x8000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1593
    lui	$a3,0x4
.L0da54078:
    and	$a3,$s6,$a3
    beqz	$a3,.L0da54268
    # Line 1599
    li	$a0,31
    move	$a1,$zero
    addiu	$a2,$s3,1876
    addiu	$a4,$s5,1876
    sd	$s4,72($sp)
    # Line 1598
    lw	$s4,3336($s3)
.L0da54098:
    # Line 1599
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54098
    sw	$at,0($v0)
    # Line 1600
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2000
    addiu	$a5,$s5,2000
.L0da540c4:
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a5
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da540c4
    sd	$v0,0($v1)
    # Line 1601
    li	$a1,31
    move	$a2,$zero
    addiu	$a6,$s3,2124
    addiu	$a7,$s5,2124
    # Line 1600
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a5
    # Line 1602
    li	$a0,15
    # Line 1600
    lw	$v1,0($v1)
    # Line 1602
    addiu	$a4,$s3,2248
    # Line 1600
    sw	$v1,0($a3)
.L0da54108:
    # Line 1601
    addu	$at,$a2,$a6
    addu	$a3,$a2,$a7
    addiu	$a2,$a2,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da54108
    sw	$a3,0($at)
    # Line 1602
    addiu	$a5,$s5,2248
    move	$a2,$zero
.L0da5412c:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5412c
    sd	$at,0($v0)
    addu	$v0,$a2,$a5
    lw	$v0,0($v0)
    addu	$v1,$a2,$a4
    sw	$v0,0($v1)
    # Line 1604
    lwc1	$f3,2380($s5)
    swc1	$f3,2380($s3)
    # Line 1605
    lwc1	$f2,2384($s5)
    swc1	$f2,2384($s3)
    # Line 1606
    lwc1	$f1,2388($s5)
    swc1	$f1,2388($s3)
    # Line 1607
    lwc1	$f0,2392($s5)
    swc1	$f0,2392($s3)
    # Line 1609
    lwc1	$f3,2396($s5)
    swc1	$f3,2396($s3)
    # Line 1610
    lwc1	$f2,2400($s5)
    swc1	$f2,2400($s3)
    # Line 1611
    lwc1	$f1,2404($s5)
    sd	$s0,64($sp)
    swc1	$f1,2404($s3)
    # Line 1628
    move	$s0,$zero
    # Line 1612
    lwc1	$f0,2408($s5)
    sd	$s1,56($sp)
    # Line 1626
    lw	$a0,2372($s3)
    # Line 1612
    swc1	$f0,2408($s3)
    sd	$s2,80($sp)
    # Line 1627
    lw	$a1,2372($s5)
    # Line 1626
    move	$s2,$a0
    # Line 1628
    beqz	$s4,.L0da541f8
    # Line 1627
    move	$s1,$a1
    andi	$v1,$s4,0x1
    beqz	$v1,.L0da541e4
    # Line 1628
    move	$a0,$s4
    lw	$a3,216($s2)
    lw	$a2,216($s1)
    bne	$a3,$a2,.L0da543bc
    # Line 1631
    nop	# was lw $t9, -26368($gp) # &__glBindTexture
.L0da541d8:
    # Line 1629
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s0,$s0,1
.L0da541e4:
    sra	$at,$a0,0x1
    bnezl	$at,.L0da54358
    # Line 1628
    lw	$a2,216($s1)
    # Line 1629
    lw	$a1,2372($s5)
.L0da541f4:
    lw	$a0,2372($s3)
.L0da541f8:
    ld	$s1,56($sp)
    ld	$s0,64($sp)
    ld	$s2,80($sp)
    # Line 1636
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 1638
    lw	$a1,2376($s5)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s4,72($sp)
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1641
    lw	$at,1696($s3)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1642
    lw	$ra,1696($s5)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    ld	$ra,40($sp)
.L0da54268:
    andi	$v1,$s6,0x1000
    beqz	$v1,.L0da542c4
    # Line 1652
    andi	$v0,$s6,0x800
    # Line 1648
    lw	$a0,1652($s3)
    lw	$a2,3332($s3)
    # Line 1647
    lw	$a1,1648($s5)
    # Line 1648
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 1647
    sw	$a1,1648($s3)
    # Line 1648
    jal	memcpy
    lw	$a1,1652($s5)
    # Line 1651
    lw	$ra,1696($s3)
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    sw	$ra,1696($s3)
    # Line 1652
    lw	$a3,1696($s5)
    lui	$at,0x40
    and	$a3,$a3,$at
    or	$a3,$a3,$ra
    ld	$ra,40($sp)
    sw	$a3,1696($s3)
    andi	$v0,$s6,0x800
.L0da542c4:
    beqz	$v0,.L0da54318
    ld	$s6,0($sp)
    # Line 1657
    ld	$a5,1592($s5)
    sd	$a5,1592($s3)
    ld	$a4,1600($s5)
    sd	$a4,1600($s3)
    ld	$a3,1608($s5)
    sd	$a3,1608($s3)
    ld	$a2,1616($s5)
    sd	$a2,1616($s3)
    ld	$a1,1624($s5)
    sd	$a1,1624($s3)
    ld	$a0,1632($s5)
    ld	$s6,0($sp)
    sd	$a0,1632($s3)
    # Line 1658
    # lw $t9, -26000($gp) # &__glUpdateViewportTransform
    # Line 1657
    ld	$v1,1640($s5)
    # Line 1658
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 1657
    sd	$v1,1640($s3)
    ld	$ra,40($sp)
.L0da54318:
    # Line 1666
    li	$v0,1
    # Line 1661
    sw	$s7,__glBeginMode
    ld	$gp,16($sp)
    lw	$s5,11764($s3)
    # Line 1666
    ld	$s7,24($sp)
    # Line 1664
    sb	$zero,31564($s3)
    # Line 1661
    ori	$s5,$s5,0x1
    sw	$s5,11764($s3)
    # Line 1666
    ld	$s3,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da54348:
    # Line 1629
    addiu	$s0,$s0,1
.L0da5434c:
    beql	$s4,$s0,.L0da541f4
    lw	$a1,2372($s5)
    # Line 1628
    lw	$a2,216($s1)
.L0da54358:
    lw	$at,216($s2)
    bne	$at,$a2,.L0da54394
    # Line 1631
    nop	# was lw $t9, -26368($gp) # &__glBindTexture
    # Line 1628
    lw	$a2,440($s1)
.L0da54368:
    lw	$v0,440($s2)
    # Line 1629
    addiu	$s1,$s1,448
    addiu	$s2,$s2,448
    # Line 1628
    beq	$v0,$a2,.L0da54348
    # Line 1629
    addiu	$s0,$s0,1
    # Line 1631
    # lw $t9, -26368($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0da5434c
    # Line 1629
    addiu	$s0,$s0,1
.L0da54394:
    # Line 1631
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    b	.L0da54368
    # Line 1628
    lw	$a2,440($s1)
.L0da543a8:
    # Line 1424
    # lw $t9, -32380($gp) # &__glExpGetMachineState
    bal __glExpGetMachineState
    move	$a0,$s5
    b	.L0da5396c
    # Line 1438
    lwc1	$f3,30756($s5)
.L0da543bc:
    sd	$a0,48($sp)
    # Line 1631
    move	$a0,$s3
    jal	__glExpGetMachineState
    move	$a1,$s0
    b	.L0da541d8
    ld	$a0,48($sp)
.end __glExpCopyContext

# Function: __glexpim_PushAttrib
# Declared: Line 1671 (Source lines: 1672-1795)
# Address: 0x0da543d4 - 0x0da54b24 (Size: 1872 bytes, Frame: 208)
.globl __glexpim_PushAttrib
.ent __glexpim_PushAttrib
__glexpim_PushAttrib:
    # Line 1675
    li	$v0,1
    # Line 1672
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s0,8($sp)
    # Line 1675
    lw	$s0,__glCurrentContext
    sd	$s2,24($sp)
    # Line 1672
    move	$s2,$a0
    # sd	gp,16(sp)
    # Line 1675
    lw	$at,__glBeginMode
    # Line 1672
    lui	$v1,0x1a
    addiu	$v1,$v1,13460
    # Line 1675
    beq	$at,$v0,.L0da54ae0
    # Line 1672
    nop
    # Line 1677
    # lw $t9, -32380($gp) # &__glExpGetMachineState
    sd	$s4,40($sp)
    bal __glExpGetMachineState
    move	$a0,$s0
    # Line 1679
    lw	$a4,3480($s0)
    lw	$a3,12676($s0)
    lw	$s4,12680($s0)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sltu	$a3,$s4,$a3
    beqz	$a3,.L0da54ab8
    ld	$ra,32($sp)
    sd	$s1,48($sp)
    # Line 1681
    lw	$s1,0($s4)
    beqzl	$s1,.L0da54b04
    # Line 1682
    lw	$t9,4($s0)
.L0da54448:
    # Line 1686
    sw	$s2,0($s1)
    # Line 1687
    ld	$at,1696($s0)
    sd	$at,1544($s1)
    ld	$a4,1704($s0)
    sd	$a4,1552($s1)
    # Line 1688
    addiu	$v1,$s4,4
    # Line 1687
    ld	$a3,1712($s0)
    ld	$s4,40($sp)
    # Line 1688
    andi	$at,$s2,0x200
    # Line 1687
    sd	$a3,1560($s1)
    # Line 1688
    beqz	$at,.L0da5449c
    sw	$v1,12680($s0)
    # Line 1691
    lwc1	$f3,1552($s0)
    swc1	$f3,1400($s1)
    lwc1	$f2,1556($s0)
    swc1	$f2,1404($s1)
    lwc1	$f1,1560($s0)
    swc1	$f1,1408($s1)
    lwc1	$f0,1564($s0)
    ld	$s4,40($sp)
    swc1	$f0,1412($s1)
.L0da5449c:
    andi	$v1,$s2,0x4000
    beqz	$v1,.L0da544e0
    # Line 1694
    li	$a0,9
    move	$v0,$zero
    addiu	$a1,$s1,1568
    addiu	$a2,$s0,1720
.L0da544b4:
    addu	$a4,$v0,$a1
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da544b4
    sd	$a3,0($a4)
    addu	$a4,$v0,$a2
    lw	$a4,0($a4)
    addu	$at,$v0,$a1
    sw	$a4,0($at)
.L0da544e0:
    andi	$at,$s2,0x1
    beqz	$at,.L0da54514
    # Line 1697
    li	$v0,34
    move	$a0,$zero
    addiu	$a2,$s1,8
    addiu	$a1,$s0,160
.L0da544f8:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da544f8
    sd	$v1,0($a3)
.L0da54514:
    andi	$a3,$s2,0x100
    beqz	$a3,.L0da54530
    # Line 1700
    lui	$v1,0x1
    ld	$at,1536($s0)
    sd	$at,1384($s1)
    ld	$a4,1544($s0)
    sd	$a4,1392($s1)
.L0da54530:
    and	$v1,$s2,$v1
    beqz	$v1,.L0da54570
    # Line 1703
    andi	$at,$s2,0x80
    ld	$a4,1824($s0)
    sd	$a4,1672($s1)
    ld	$a3,1832($s0)
    sd	$a3,1680($s1)
    ld	$v1,1840($s0)
    sd	$v1,1688($s1)
    ld	$at,1848($s0)
    sd	$at,1696($s1)
    ld	$a4,1856($s0)
    sd	$a4,1704($s1)
    ld	$a3,1864($s0)
    sd	$a3,1712($s1)
    andi	$at,$s2,0x80
.L0da54570:
    beqz	$at,.L0da545a0
    # Line 1706
    li	$v0,10
    move	$a0,$zero
    addiu	$a1,$s1,1340
    addiu	$a2,$s0,1492
.L0da54584:
    addu	$a3,$a0,$a1
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da54584
    sw	$v1,0($a3)
.L0da545a0:
    andi	$a3,$s2,0x8000
    beqz	$a3,.L0da545e8
    # Line 1709
    andi	$a3,$s2,0x40
    lw	$v1,1796($s0)
    sw	$v1,1644($s1)
    lw	$at,1800($s0)
    sw	$at,1648($s1)
    lw	$a4,1804($s0)
    sw	$a4,1652($s1)
    lw	$a3,1808($s0)
    sw	$a3,1656($s1)
    lw	$v1,1812($s0)
    sw	$v1,1660($s1)
    lw	$at,1816($s0)
    sw	$at,1664($s1)
    lw	$a4,1820($s0)
    sw	$a4,1668($s1)
    andi	$a3,$s2,0x40
.L0da545e8:
    beqz	$a3,.L0da546d4
    # Line 1722
    andi	$a3,$s2,0x4
    # Line 1714
    lw	$a4,1296($s0)
    # Line 1712
    lw	$at,3328($s0)
    # Line 1714
    sw	$a4,1144($s1)
    # Line 1715
    lw	$a3,1300($s0)
    sw	$a3,1148($s1)
    # Line 1716
    lw	$a2,1304($s0)
    sw	$a2,1152($s1)
    # Line 1717
    lw	$a1,1308($s0)
    sw	$a1,1156($s1)
    lw	$a0,1312($s0)
    sw	$a0,1160($s1)
    # Line 1718
    li	$v0,10
    # Line 1717
    lw	$v1,1316($s0)
    # Line 1712
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    # Line 1717
    sw	$v1,1164($s1)
    # Line 1712
    sll	$s4,$s4,0x2
    # Line 1717
    lw	$v1,1320($s0)
    # Line 1712
    addu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    # Line 1717
    sw	$v1,1168($s1)
    # Line 1718
    addiu	$a2,$s0,1328
    # Line 1717
    lw	$a4,1324($s0)
    # Line 1718
    addiu	$a1,$s1,1176
    move	$a0,$zero
    # Line 1717
    sw	$a4,1172($s1)
.L0da54658:
    # Line 1718
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da54658
    sd	$at,0($v1)
    # Line 1719
    li	$a0,10
    move	$v0,$zero
    addiu	$a1,$s1,1256
    addiu	$a2,$s0,1408
.L0da54684:
    addu	$a3,$v0,$a1
    addu	$v1,$v0,$a2
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54684
    sd	$v1,0($a3)
    # Line 1720
    lw	$t9,0($s0)
    move	$a0,$s0
    jal	__glExpGetMachineState
    move	$a1,$s4
    move	$a0,$v0
    # Line 1722
    # lw $t9, -23008($gp) # &memcpy
    move	$a2,$s4
    # Line 1720
    sw	$v0,1336($s1)
    # Line 1722
    jal	memcpy
    lw	$a1,1488($s0)
    ld	$ra,32($sp)
    ld	$s4,40($sp)
    andi	$a3,$s2,0x4
.L0da546d4:
    beqz	$a3,.L0da54708
    # Line 1725
    lui	$a3,0x2
    lwc1	$f1,444($s0)
    swc1	$f1,292($s1)
    lwc1	$f0,448($s0)
    swc1	$f0,296($s1)
    lw	$v1,452($s0)
    sw	$v1,300($s1)
    lhu	$at,456($s0)
    sh	$at,304($s1)
    lh	$a4,458($s0)
    sh	$a4,306($s1)
    lui	$a3,0x2
.L0da54708:
    and	$a3,$s2,$a3
    beqz	$a3,.L0da54720
    # Line 1728
    andi	$at,$s2,0x20
    lw	$a4,1872($s0)
    sw	$a4,1720($s1)
    andi	$at,$s2,0x20
.L0da54720:
    beqz	$at,.L0da5478c
    # Line 1734
    andi	$at,$s2,0x2
    # Line 1731
    lw	$a2,1148($s0)
    # Line 1733
    li	$a0,15
    # Line 1731
    sw	$a2,996($s1)
    # Line 1733
    move	$v0,$zero
    # Line 1732
    lw	$v1,1152($s0)
    # Line 1733
    addiu	$a5,$s0,616
    addiu	$a2,$s1,464
    # Line 1732
    sw	$v1,1000($s1)
.L0da54748:
    # Line 1733
    addu	$a4,$v0,$a2
    addu	$a3,$v0,$a5
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54748
    sd	$a3,0($a4)
    # Line 1734
    addiu	$a1,$s1,2276
    addiu	$a0,$s0,4892
    # lw $t9, -29032($gp) # &__glCopyColorTableScaleBias
    # Line 1733
    addu	$a4,$v0,$a5
    lw	$a4,0($a4)
    addu	$a5,$v0,$a2
    # Line 1734
    jal	__glCopyColorTableScaleBias
    # Line 1733
    sw	$a4,0($a5)
    ld	$ra,32($sp)
    # Line 1734
    andi	$at,$s2,0x2
.L0da5478c:
    beqz	$at,.L0da547b0
    # Line 1737
    andi	$a3,$s2,0x8
    lwc1	$f3,432($s0)
    swc1	$f3,280($s1)
    lwc1	$f2,436($s0)
    swc1	$f2,284($s1)
    lw	$v1,440($s0)
    sw	$v1,288($s1)
    andi	$a3,$s2,0x8
.L0da547b0:
    beqz	$a3,.L0da547f4
    # Line 1740
    andi	$a3,$s2,0x10
    lw	$v1,460($s0)
    sw	$v1,308($s1)
    lw	$at,464($s0)
    sw	$at,312($s1)
    lw	$a4,468($s0)
    sw	$a4,316($s1)
    lw	$a3,472($s0)
    sw	$a3,320($s1)
    lw	$v1,476($s0)
    sw	$v1,324($s1)
    lw	$at,480($s0)
    sw	$at,328($s1)
    lw	$a4,484($s0)
    sw	$a4,332($s1)
    andi	$a3,$s2,0x10
.L0da547f4:
    beqz	$a3,.L0da54824
    # Line 1743
    li	$a0,16
    move	$v0,$zero
    addiu	$a1,$s1,336
    addiu	$a2,$s0,488
.L0da54808:
    addu	$at,$v0,$a1
    addu	$a4,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54808
    sd	$a4,0($at)
.L0da54824:
    lui	$at,0x8
    and	$at,$s2,$at
    beqz	$at,.L0da54858
    # Line 1746
    andi	$v1,$s2,0x400
    lw	$at,2412($s0)
    sw	$at,2260($s1)
    lw	$a4,2416($s0)
    sw	$a4,2264($s1)
    lw	$a3,2420($s0)
    sw	$a3,2268($s1)
    lw	$v1,2424($s0)
    sw	$v1,2272($s1)
    andi	$v1,$s2,0x400
.L0da54858:
    beqz	$v1,.L0da5487c
    # Line 1749
    lui	$v1,0x4
    ld	$at,1568($s0)
    sd	$at,1416($s1)
    ld	$a4,1576($s0)
    sd	$a4,1424($s1)
    ld	$a3,1584($s0)
    sd	$a3,1432($s1)
    lui	$v1,0x4
.L0da5487c:
    and	$v1,$s2,$v1
    beqz	$v1,.L0da54a14
    # Line 1756
    li	$v0,31
    move	$a0,$zero
    addiu	$a1,$s1,1724
    addiu	$a2,$s0,1876
    # Line 1754
    lw	$s4,3340($s0)
    sd	$s3,56($sp)
    # Line 1752
    lw	$at,3336($s0)
    # Line 1754
    sll	$s3,$s4,0x3
    addu	$s3,$s3,$s4
    sll	$s3,$s3,0x2
    # Line 1752
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x5
.L0da548b8:
    # Line 1756
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da548b8
    sw	$at,0($v1)
    # Line 1757
    li	$a0,15
    move	$v0,$zero
    addiu	$a2,$s1,1848
    addiu	$a5,$s0,2000
.L0da548e4:
    addu	$a3,$v0,$a2
    addu	$v1,$v0,$a5
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da548e4
    sd	$v1,0($a3)
    # Line 1758
    li	$a1,31
    move	$a0,$zero
    addiu	$a6,$s1,1972
    # Line 1757
    addu	$a3,$v0,$a5
    lw	$a3,0($a3)
    # Line 1758
    addiu	$a7,$s0,2124
    # Line 1757
    addu	$a4,$v0,$a2
    sw	$a3,0($a4)
.L0da54920:
    # Line 1758
    addu	$at,$a0,$a6
    addu	$a4,$a0,$a7
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da54920
    sw	$a4,0($at)
    # Line 1759
    li	$a0,15
    move	$v0,$zero
    addiu	$a5,$s1,2096
    addiu	$a2,$s0,2248
.L0da5494c:
    addu	$v1,$v0,$a5
    addu	$at,$v0,$a2
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da5494c
    sd	$at,0($v1)
    addu	$v1,$v0,$a2
    lw	$v1,0($v1)
    addu	$a0,$v0,$a5
    sw	$v1,0($a0)
    # Line 1761
    lwc1	$f11,2380($s0)
    swc1	$f11,2228($s1)
    # Line 1762
    lwc1	$f10,2384($s0)
    swc1	$f10,2232($s1)
    # Line 1763
    lwc1	$f9,2388($s0)
    swc1	$f9,2236($s1)
    # Line 1764
    lwc1	$f8,2392($s0)
    swc1	$f8,2240($s1)
    # Line 1766
    lwc1	$f7,2396($s0)
    swc1	$f7,2244($s1)
    # Line 1767
    lwc1	$f6,2400($s0)
    swc1	$f6,2248($s1)
    # Line 1768
    lwc1	$f5,2404($s0)
    swc1	$f5,2252($s1)
    # Line 1769
    lwc1	$f4,2408($s0)
    swc1	$f4,2256($s1)
    # Line 1771
    lw	$t9,0($s0)
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    move	$a0,$v0
    # Line 1773
    # lw $t9, -23008($gp) # &memcpy
    move	$a2,$s4
    # Line 1771
    sw	$v0,2220($s1)
    # Line 1773
    jal	memcpy
    lw	$a1,2372($s0)
    # Line 1775
    lw	$t9,0($s0)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    ld	$s4,40($sp)
    move	$a0,$v0
    # Line 1777
    # lw $t9, -23008($gp) # &memcpy
    move	$a2,$s3
    # Line 1775
    sw	$v0,2224($s1)
    # Line 1777
    jal	memcpy
    lw	$a1,2376($s0)
    ld	$ra,32($sp)
    ld	$s3,56($sp)
.L0da54a14:
    andi	$a3,$s2,0x1000
    beqz	$a3,.L0da54a60
    # Line 1785
    andi	$a3,$s2,0x800
    # Line 1782
    lw	$a2,1648($s0)
    # Line 1780
    lw	$a1,3332($s0)
    # Line 1782
    sw	$a2,1496($s1)
    # Line 1783
    lw	$t9,0($s0)
    move	$a0,$s0
    # Line 1780
    sll	$a1,$a1,0x4
    # Line 1783
    jalr	$t9
    sd	$a1,0($sp)
    move	$a0,$v0
    # Line 1785
    # lw $t9, -23008($gp) # &memcpy
    ld	$a2,0($sp)
    # Line 1783
    sw	$v0,1500($s1)
    # Line 1785
    jal	memcpy
    lw	$a1,1652($s0)
    ld	$ra,32($sp)
    andi	$a3,$s2,0x800
.L0da54a60:
    beqz	$a3,.L0da54aa4
    nop
    # Line 1789
    ld	$v1,1592($s0)
    sd	$v1,1440($s1)
    ld	$at,1600($s0)
    sd	$at,1448($s1)
    ld	$a4,1608($s0)
    sd	$a4,1456($s1)
    ld	$a3,1616($s0)
    sd	$a3,1464($s1)
    ld	$v1,1624($s0)
    sd	$v1,1472($s1)
    ld	$at,1632($s0)
    sd	$at,1480($s1)
    ld	$a4,1640($s0)
    sd	$a4,1488($s1)
    # ld	gp,16(sp)
.L0da54aa4:
    # Line 1795
    ld	$s0,8($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da54ab8:
    # Line 1792
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1283
    jal	__glSetError
    ld	$s4,40($sp)
    # ld	gp,16(sp)
    # Line 1793
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da54ae0:
    # Line 1675
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # ld	gp,16(sp)
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da54b04:
    # Line 1682
    move	$a0,$s0
    li	$a2,2936
    jalr	$t9
    li	$a1,1
    move	$s1,$v0
    # Line 1684
    sw	$v0,0($s4)
    b	.L0da54448
    ld	$ra,32($sp)
.end __glexpim_PushAttrib

# Function: __glexpim_PopAttrib
# Declared: Line 1799 (Source lines: 1800-2122)
# Address: 0x0da54b24 - 0x0da55a50 (Size: 3884 bytes, Frame: 224)
.globl __glexpim_PopAttrib
.ent __glexpim_PopAttrib
__glexpim_PopAttrib:
    # Line 1805
    li	$v0,1
    # Line 1800
    addiu	$sp,$sp,-96
    sd	$s3,24($sp)
    # Line 1805
    lw	$s3,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 1800
    lui	$v1,0x1a
    addiu	$v1,$v1,11588
    # Line 1805
    beq	$at,$v0,.L0da55a2c
    # Line 1800
    addu	$gp,$t9,$v1
    # Line 1808
    lw	$a0,12680($s3)
    lw	$a3,12676($s3)
    sltu	$a3,$a3,$a0
    beqz	$a3,.L0da559e8
    # Line 1814
    addiu	$v0,$a0,-4
    sd	$s5,8($sp)
    # Line 1811
    lw	$s5,-4($a0)
    sd	$s6,48($sp)
    # Line 1813
    lw	$s6,0($s5)
    # Line 1814
    andi	$at,$s6,0x200
    beqz	$at,.L0da54b9c
    sw	$v0,12680($s3)
    # Line 1816
    lwc1	$f3,1400($s5)
    swc1	$f3,1552($s3)
    lwc1	$f2,1404($s5)
    swc1	$f2,1556($s3)
    lwc1	$f1,1408($s5)
    swc1	$f1,1560($s3)
    lwc1	$f0,1412($s5)
    swc1	$f0,1564($s3)
.L0da54b9c:
    andi	$v1,$s6,0x4000
    beqz	$v1,.L0da54c94
    # Line 1819
    li	$a0,9
    move	$a1,$zero
    addiu	$a4,$s3,1720
    addiu	$a2,$s5,1568
.L0da54bb4:
    addu	$at,$a1,$a4
    addu	$a3,$a1,$a2
    addiu	$a1,$a1,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54bb4
    sd	$a3,0($at)
    # Line 1827
    move	$a0,$s3
    # Line 1819
    addu	$t3,$a1,$a2
    lw	$t3,0($t3)
    sd	$ra,32($sp)
    addu	$t8,$a1,$a4
    sw	$t3,0($t8)
    # Line 1823
    li	$a7,-2049
    # Line 1820
    lw	$t1,1696($s3)
    li	$t2,-16
    # Line 1823
    lw	$a5,1700($s3)
    # Line 1820
    and	$t1,$t1,$t2
    sw	$t1,1696($s3)
    # Line 1826
    lw	$a6,11760($s3)
    # Line 1821
    lw	$t0,1544($s5)
    # Line 1823
    and	$a5,$a5,$a7
    sw	$a5,1700($s3)
    # Line 1821
    andi	$t0,$t0,0xf
    or	$t0,$t0,$t1
    sw	$t0,1696($s3)
    # Line 1827
    # lw $t9, -31824($gp) # &__glExpPassDrawBuffer
    # Line 1824
    lw	$a4,1548($s5)
    # Line 1826
    ori	$a6,$a6,0x1
    sw	$a6,11760($s3)
    # Line 1824
    andi	$a4,$a4,0x800
    or	$a4,$a4,$a5
    # Line 1827
    jal	__glExpPassDrawBuffer
    # Line 1824
    sw	$a4,1700($s3)
    # Line 1828
    # lw $t9, -31812($gp) # &__glExpEnableDither
    jal	__glExpEnableDither
    move	$a0,$s3
    # Line 1829
    # lw $t9, -31808($gp) # &__glExpPassBlendFunc
    jal	__glExpPassBlendFunc
    move	$a0,$s3
    # Line 1830
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    jal	__glExpEnableBlendFunc
    move	$a0,$s3
    # Line 1831
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    jal	__glExpPassLogicOp
    move	$a0,$s3
    # Line 1832
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    jal	__glExpEnableLogicOp
    move	$a0,$s3
    # Line 1833
    # lw $t9, -31820($gp) # &__glExpPassColorMask
    jal	__glExpPassColorMask
    move	$a0,$s3
    # Line 1834
    # lw $t9, -31816($gp) # &__glExpPassIndexMask
    jal	__glExpPassIndexMask
    move	$a0,$s3
    ld	$ra,32($sp)
.L0da54c94:
    andi	$at,$s6,0x1
    beqz	$at,.L0da54d10
    # Line 1837
    li	$a0,34
    move	$a1,$zero
    addiu	$a2,$s3,160
    addiu	$a4,$s5,8
.L0da54cac:
    addu	$v1,$a1,$a2
    addu	$v0,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54cac
    sd	$v0,0($v1)
    # Line 1838
    # lw $t9, -31928($gp) # &__glExpPassRasterPosData
    sd	$ra,32($sp)
    jal	__glExpPassRasterPosData
    move	$a0,$s3
    # Line 1839
    # lw $t9, -31512($gp) # &__glExpPassColor
    jal	__glExpPassColor
    move	$a0,$s3
    # Line 1840
    # lw $t9, -31508($gp) # &__glExpPassIndex
    jal	__glExpPassIndex
    move	$a0,$s3
    # Line 1841
    # lw $t9, -31504($gp) # &__glExpPassNormal
    jal	__glExpPassNormal
    move	$a0,$s3
    # Line 1842
    # lw $t9, -31500($gp) # &__glExpPassEdgeFlag
    jal	__glExpPassEdgeFlag
    move	$a0,$s3
    sd	$s7,0($sp)
    ld	$ra,32($sp)
.L0da54d10:
    sd	$s7,0($sp)
    andi	$v1,$s6,0x100
    beqz	$v1,.L0da54d8c
    li	$s7,2
    # Line 1845
    ld	$a5,1384($s5)
    # Line 1846
    lw	$a2,1696($s3)
    # Line 1845
    sd	$a5,1536($s3)
    # Line 1846
    li	$a3,-17
    # Line 1845
    ld	$a4,1392($s5)
    # Line 1846
    and	$a2,$a2,$a3
    sw	$a2,1696($s3)
    # Line 1845
    sd	$a4,1544($s3)
    # Line 1849
    move	$a0,$s3
    # Line 1847
    lw	$a1,1544($s5)
    sd	$ra,32($sp)
    # Line 1849
    # lw $t9, -32368($gp) # &__glExpPassDepthFunc
    # Line 1847
    andi	$a1,$a1,0x10
    or	$a1,$a1,$a2
    # Line 1849
    bal __glExpPassDepthFunc
    # Line 1847
    sw	$a1,1696($s3)
    # Line 1850
    # lw $t9, -32364($gp) # &__glExpPassDepthMask
    bal __glExpPassDepthMask
    move	$a0,$s3
    # Line 1851
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    bal __glExpEnableDepthTest
    move	$a0,$s3
    # Line 1852
    sw	$s7,__glBeginMode
    lw	$ra,11764($s3)
    ori	$ra,$ra,0x80
    sw	$ra,11764($s3)
    ld	$ra,32($sp)
.L0da54d8c:
    andi	$at,$s6,0x2000
    beqz	$at,.L0da54eb0
    # Line 1888
    lui	$a3,0x1
    # Line 1852
    lbu	$v0,31565($s3)
    beqzl	$v0,.L0da558f4
    lw	$a0,1544($s5)
.L0da54da4:
    # Line 1867
    ld	$a2,1544($s5)
.L0da54da8:
    sd	$a2,1696($s3)
    ld	$a1,1552($s5)
    sd	$a1,1704($s3)
    ld	$a0,1560($s5)
    sd	$a0,1712($s3)
    # Line 1868
    sw	$s7,__glBeginMode
    sd	$ra,32($sp)
    lw	$v1,11764($s3)
    # Line 1871
    lw	$t9,11800($s3)
    move	$a0,$s3
    # Line 1868
    ori	$v1,$v1,0xbe
    # Line 1871
    jal	__glExpEnableDepthTest
    # Line 1868
    sw	$v1,11764($s3)
    # Line 1872
    lw	$t9,12008($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1873
    lw	$t9,11924($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1874
    lw	$t9,11916($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1875
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    jal	__glExpEnableBlendFunc
    move	$a0,$s3
    # Line 1876
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    jal	__glExpEnableLogicOp
    move	$a0,$s3
    # Line 1877
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    bal __glExpEnableDepthTest
    move	$a0,$s3
    # Line 1878
    # lw $t9, -31812($gp) # &__glExpEnableDither
    jal	__glExpEnableDither
    move	$a0,$s3
    # Line 1879
    # lw $t9, -32304($gp) # &__glExpEnableFog
    jal	__glExpEnableFog
    move	$a0,$s3
    # Line 1880
    # lw $t9, -32048($gp) # &__glExpEnableCullFace
    jal	__glExpEnableCullFace
    move	$a0,$s3
    # Line 1881
    # lw $t9, -32216($gp) # &__glExpEnableLineStipple
    jal	__glExpEnableLineStipple
    move	$a0,$s3
    # Line 1882
    # lw $t9, -32032($gp) # &__glExpEnablePolygonStipple
    jal	__glExpEnablePolygonStipple
    move	$a0,$s3
    # Line 1883
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    jal	__glExpEnableStencilTest
    move	$a0,$s3
    # Line 1884
    # lw $t9, -31088($gp) # &__glExpEnableClipPlanes
    jal	__glExpEnableClipPlanes
    move	$a0,$s3
    # Line 1885
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    jal	__glExpEnableLineSmooth
    move	$a0,$s3
    # Line 1886
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    jal	__glExpEnablePointSmooth
    move	$a0,$s3
    # Line 1887
    # lw $t9, -32240($gp) # &__glExpUpdateLightingState
    jal	__glExpUpdateLightingState
    move	$a0,$s3
    # Line 1888
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    jal	__glExpPassPolygonOffset
    move	$a0,$s3
    ld	$ra,32($sp)
    lui	$a3,0x1
.L0da54eb0:
    and	$a3,$s6,$a3
    beqz	$a3,.L0da54f28
    # Line 1896
    andi	$a3,$s6,0x80
    # Line 1891
    ld	$v1,1672($s5)
    sd	$v1,1824($s3)
    ld	$v0,1680($s5)
    sd	$v0,1832($s3)
    ld	$at,1688($s5)
    sd	$at,1840($s3)
    ld	$a3,1696($s5)
    sd	$a3,1848($s3)
    ld	$v1,1704($s5)
    sd	$v1,1856($s3)
    ld	$v0,1712($s5)
    sd	$v0,1864($s3)
    # Line 1892
    lw	$a3,1696($s3)
    lui	$at,0x80
    nor	$at,$at,$zero
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 1893
    lw	$v1,1544($s5)
    lui	$at,0x80
    and	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1895
    lw	$v0,1560($s5)
    sw	$v0,1712($s3)
    # Line 1896
    lw	$at,1564($s5)
    sw	$at,1716($s3)
    andi	$a3,$s6,0x80
.L0da54f28:
    beqz	$a3,.L0da54f98
    # Line 1899
    li	$a0,10
    move	$a1,$zero
    addiu	$a2,$s3,1492
    addiu	$a4,$s5,1340
.L0da54f3c:
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da54f3c
    sw	$at,0($v0)
    # Line 1900
    lw	$v1,1696($s3)
    li	$a0,-33
    and	$v1,$v1,$a0
    sw	$v1,1696($s3)
    sd	$ra,32($sp)
    # Line 1901
    lw	$v0,1544($s5)
    # Line 1903
    # lw $t9, -32304($gp) # &__glExpEnableFog
    move	$a0,$s3
    # Line 1901
    andi	$v0,$v0,0x20
    or	$v0,$v0,$v1
    # Line 1903
    jal	__glExpEnableFog
    # Line 1901
    sw	$v0,1696($s3)
    # Line 1904
    # lw $t9, -32300($gp) # &__glExpPassFog
    jal	__glExpPassFog
    move	$a0,$s3
    ld	$ra,32($sp)
.L0da54f98:
    andi	$a3,$s6,0x8000
    beqz	$a3,.L0da54fe0
    # Line 1907
    andi	$a3,$s6,0x40
    lw	$v1,1644($s5)
    sw	$v1,1796($s3)
    lw	$v0,1648($s5)
    sw	$v0,1800($s3)
    lw	$at,1652($s5)
    sw	$at,1804($s3)
    lw	$a3,1656($s5)
    sw	$a3,1808($s3)
    lw	$v1,1660($s5)
    sw	$v1,1812($s3)
    lw	$v0,1664($s5)
    sw	$v0,1816($s3)
    lw	$at,1668($s5)
    sw	$at,1820($s3)
    andi	$a3,$s6,0x40
.L0da54fe0:
    beqz	$a3,.L0da55118
    # Line 1927
    andi	$at,$s6,0x4
    # Line 1910
    lw	$a4,1144($s5)
    sw	$a4,1296($s3)
    # Line 1911
    lw	$a3,1148($s5)
    sw	$a3,1300($s3)
    # Line 1912
    lw	$a2,1152($s5)
    sw	$a2,1304($s3)
    # Line 1913
    lw	$a1,1156($s5)
    sw	$a1,1308($s3)
    lw	$a0,1160($s5)
    sw	$a0,1312($s3)
    lw	$v1,1164($s5)
    sw	$v1,1316($s3)
    lw	$v0,1168($s5)
    # Line 1914
    addiu	$a4,$s5,1176
    # Line 1913
    sw	$v0,1320($s3)
    # Line 1914
    addiu	$a2,$s3,1328
    # Line 1913
    lw	$at,1172($s5)
    # Line 1914
    li	$a1,10
    move	$a0,$zero
    # Line 1913
    sw	$at,1324($s3)
.L0da55038:
    # Line 1914
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da55038
    sd	$at,0($v0)
    # Line 1915
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s3,1408
    addiu	$a4,$s5,1256
.L0da55064:
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da55064
    sd	$v0,0($v1)
    # Line 1916
    lw	$a1,1336($s5)
    lw	$a0,1488($s3)
    lw	$a3,3328($s3)
    sd	$ra,32($sp)
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1919
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1336($s5)
    # Line 1920
    sw	$zero,1336($s5)
    # Line 1921
    lw	$a6,1696($s3)
    li	$a7,-193
    and	$a6,$a6,$a7
    sw	$a6,1696($s3)
    # Line 1922
    lw	$a5,1544($s5)
    andi	$a5,$a5,0xc0
    or	$a5,$a5,$a6
    sw	$a5,1696($s3)
    # Line 1924
    lw	$a4,1552($s5)
    sw	$a4,1704($s3)
    # Line 1925
    sw	$s7,__glBeginMode
    lw	$a3,11764($s3)
    # Line 1926
    # lw $t9, -31784($gp) # &__glExpPassShadeModel
    move	$a0,$s3
    # Line 1925
    ori	$a3,$a3,0x20
    # Line 1926
    jal	__glExpPassShadeModel
    # Line 1925
    sw	$a3,11764($s3)
    # Line 1927
    # lw $t9, -32240($gp) # &__glExpUpdateLightingState
    jal	__glExpUpdateLightingState
    move	$a0,$s3
    ld	$ra,32($sp)
    andi	$at,$s6,0x4
.L0da55118:
    beqz	$at,.L0da551b4
    # Line 1938
    lui	$at,0x2
    # Line 1930
    lwc1	$f5,292($s5)
    swc1	$f5,444($s3)
    lwc1	$f4,296($s5)
    swc1	$f4,448($s3)
    lw	$a4,300($s5)
    sw	$a4,452($s3)
    lhu	$a3,304($s5)
    # Line 1931
    lw	$a0,1696($s3)
    # Line 1930
    sh	$a3,456($s3)
    # Line 1931
    li	$a1,-769
    # Line 1930
    lh	$a2,306($s5)
    # Line 1931
    and	$a0,$a0,$a1
    sw	$a0,1696($s3)
    # Line 1930
    sh	$a2,458($s3)
    # Line 1932
    lw	$v1,1544($s5)
    andi	$v1,$v1,0x300
    or	$v1,$v1,$a0
    sw	$v1,1696($s3)
    # Line 1934
    sw	$s7,__glBeginMode
    sd	$ra,32($sp)
    lw	$v0,11764($s3)
    # Line 1935
    # lw $t9, -32224($gp) # &__glExpPassLineWidth
    move	$a0,$s3
    # Line 1934
    ori	$v0,$v0,0x2
    # Line 1935
    jal	__glExpPassLineWidth
    # Line 1934
    sw	$v0,11764($s3)
    # Line 1936
    # lw $t9, -32220($gp) # &__glExpPassLineStipple
    jal	__glExpPassLineStipple
    move	$a0,$s3
    # Line 1937
    # lw $t9, -32216($gp) # &__glExpEnableLineStipple
    jal	__glExpEnableLineStipple
    move	$a0,$s3
    # Line 1938
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    jal	__glExpEnableLineSmooth
    move	$a0,$s3
    ld	$ra,32($sp)
    lui	$at,0x2
.L0da551b4:
    and	$at,$s6,$at
    beqz	$at,.L0da551cc
    # Line 1941
    andi	$v1,$s6,0x20
    lw	$v0,1720($s5)
    sw	$v0,1872($s3)
    andi	$v1,$s6,0x20
.L0da551cc:
    beqz	$v1,.L0da5528c
    # Line 1944
    li	$a0,15
    move	$a2,$zero
    addiu	$a4,$s3,616
    addiu	$a5,$s5,464
.L0da551e0:
    addu	$at,$a2,$a4
    addu	$a3,$a2,$a5
    addiu	$a2,$a2,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da551e0
    sd	$a3,0($at)
    addu	$a6,$a2,$a5
    lw	$a6,0($a6)
    addu	$a7,$a2,$a4
    sw	$a6,0($a7)
    # Line 1945
    lw	$a5,1000($s5)
    # Line 1947
    addiu	$a1,$s3,4892
    addiu	$a0,$s5,2276
    # Line 1945
    sw	$a5,1152($s3)
    # Line 1947
    # lw $t9, -29032($gp) # &__glCopyColorTableScaleBias
    # Line 1946
    lw	$a4,996($s5)
    sd	$ra,32($sp)
    # Line 1947
    jal	__glCopyColorTableScaleBias
    # Line 1946
    sw	$a4,1148($s3)
    # Line 1948
    lw	$v1,1696($s3)
    lui	$a3,0xe00
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 1949
    lw	$v0,1544($s5)
    lui	$a3,0xe00
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    # Line 1951
    lui	$v1,0x3000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 1952
    lw	$at,1544($s5)
    lui	$v1,0x3000
    and	$at,$at,$v1
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 1954
    sw	$s7,__glBeginMode
    lw	$ra,11764($s3)
    ori	$ra,$ra,0x10
    sw	$ra,11764($s3)
    ld	$ra,32($sp)
.L0da5528c:
    andi	$at,$s6,0x2
    beqz	$at,.L0da552f8
    # Line 1962
    andi	$a3,$s6,0x8
    # Line 1957
    lwc1	$f7,280($s5)
    swc1	$f7,432($s3)
    lwc1	$f6,284($s5)
    # Line 1958
    lw	$a0,1696($s3)
    # Line 1957
    swc1	$f6,436($s3)
    # Line 1958
    li	$a1,-1025
    # Line 1957
    lw	$a2,288($s5)
    # Line 1958
    and	$a0,$a0,$a1
    sw	$a0,1696($s3)
    # Line 1957
    sw	$a2,440($s3)
    # Line 1959
    lw	$v1,1544($s5)
    andi	$v1,$v1,0x400
    or	$v1,$v1,$a0
    sw	$v1,1696($s3)
    # Line 1961
    sw	$s7,__glBeginMode
    sd	$ra,32($sp)
    lw	$v0,11764($s3)
    # Line 1962
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    move	$a0,$s3
    # Line 1961
    ori	$v0,$v0,0x8
    # Line 1962
    jal	__glExpEnablePointSmooth
    # Line 1961
    sw	$v0,11764($s3)
    ld	$ra,32($sp)
    # Line 1962
    andi	$a3,$s6,0x8
.L0da552f8:
    beqz	$a3,.L0da553e4
    # Line 1986
    andi	$a3,$s6,0x10
    # Line 1965
    lw	$v1,308($s5)
    sw	$v1,460($s3)
    lw	$v0,312($s5)
    sw	$v0,464($s3)
    lw	$at,316($s5)
    sw	$at,468($s3)
    sd	$ra,32($sp)
    lw	$ra,320($s5)
    sw	$ra,472($s3)
    lw	$t9,324($s5)
    # Line 1976
    li	$a7,-1537
    # Line 1965
    sw	$t9,476($s3)
    # Line 1976
    lw	$a6,1700($s3)
    # Line 1965
    lw	$t8,328($s5)
    # Line 1972
    ld	$t2,-22120($gp)
    lw	$t1,1696($s3)
    # Line 1965
    sw	$t8,480($s3)
    # Line 1976
    and	$a6,$a6,$a7
    # Line 1965
    lw	$t3,332($s5)
    # Line 1972
    and	$t1,$t1,$t2
    sw	$t1,1696($s3)
    # Line 1965
    sw	$t3,484($s3)
    # Line 1973
    lui	$t2,0x100
    lw	$t0,1544($s5)
    ori	$t2,$t2,0x3800
    # Line 1976
    sw	$a6,1700($s3)
    # Line 1973
    and	$t0,$t0,$t2
    or	$t0,$t0,$t1
    sw	$t0,1696($s3)
    # Line 1977
    lw	$a5,1548($s5)
    andi	$a5,$a5,0x600
    or	$a5,$a5,$a6
    sw	$a5,1700($s3)
    # Line 1980
    sw	$s7,__glBeginMode
    lw	$a4,11764($s3)
    # Line 1981
    # lw $t9, -32052($gp) # &__glExpPassCullFace
    move	$a0,$s3
    # Line 1980
    ori	$a4,$a4,0x4
    # Line 1981
    jal	__glExpPassCullFace
    # Line 1980
    sw	$a4,11764($s3)
    # Line 1982
    # lw $t9, -32048($gp) # &__glExpEnableCullFace
    jal	__glExpEnableCullFace
    move	$a0,$s3
    # Line 1983
    # lw $t9, -32040($gp) # &__glExpPassFrontFace
    jal	__glExpPassFrontFace
    move	$a0,$s3
    # Line 1984
    # lw $t9, -32032($gp) # &__glExpEnablePolygonStipple
    jal	__glExpEnablePolygonStipple
    move	$a0,$s3
    # Line 1985
    # lw $t9, -32028($gp) # &__glExpPassPolygonMode
    jal	__glExpPassPolygonMode
    move	$a0,$s3
    # Line 1986
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    jal	__glExpPassPolygonOffset
    move	$a0,$s3
    ld	$ra,32($sp)
    andi	$a3,$s6,0x10
.L0da553e4:
    beqz	$a3,.L0da55458
    # Line 1989
    li	$a0,16
    move	$a1,$zero
    addiu	$a2,$s3,488
    addiu	$a4,$s5,336
.L0da553f8:
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da553f8
    sd	$at,0($v0)
    # Line 1990
    lw	$v1,1696($s3)
    li	$a0,-8193
    and	$v1,$v1,$a0
    sw	$v1,1696($s3)
    sd	$ra,32($sp)
    # Line 1991
    lw	$v0,1544($s5)
    # Line 1993
    lw	$t9,12664($s3)
    move	$a0,$s3
    # Line 1991
    andi	$v0,$v0,0x2000
    or	$v0,$v0,$v1
    # Line 1993
    jalr	$t9
    # Line 1991
    sw	$v0,1696($s3)
    # Line 1994
    sw	$s7,__glBeginMode
    lw	$a3,11764($s3)
    ld	$ra,32($sp)
    ori	$a3,$a3,0x4
    sw	$a3,11764($s3)
.L0da55458:
    lui	$at,0x8
    and	$at,$s6,$at
    beqz	$at,.L0da554d4
    # Line 2026
    andi	$at,$s6,0x400
    # Line 1994
    lbu	$v0,31565($s3)
    beqz	$v0,.L0da55948
    lw	$a1,1696($s3)
.L0da55474:
    # Line 2020
    lw	$a5,2260($s5)
.L0da55478:
    sw	$a5,2412($s3)
    lw	$a4,2264($s5)
    sw	$a4,2416($s3)
    lw	$a3,2268($s5)
    sw	$a3,2420($s3)
    # Line 2021
    li	$a0,-16385
    # Line 2020
    lw	$a2,2272($s5)
    # Line 2021
    and	$a1,$a1,$a0
    sw	$a1,1696($s3)
    # Line 2020
    sw	$a2,2424($s3)
    sd	$ra,32($sp)
    # Line 2022
    lw	$v1,1544($s5)
    # Line 2025
    move	$a0,$s3
    lw	$t9,11924($s3)
    # Line 2022
    andi	$v1,$v1,0x4000
    or	$v1,$v1,$a1
    # Line 2025
    jalr	$t9
    # Line 2022
    sw	$v1,1696($s3)
    # Line 2026
    lw	$t9,11916($s3)
    jalr	$t9
    move	$a0,$s3
    ld	$ra,32($sp)
    andi	$at,$s6,0x400
.L0da554d4:
    beqz	$at,.L0da55554
    # Line 2037
    lui	$at,0x4
    # Line 2029
    ld	$a5,1416($s5)
    # Line 2035
    move	$a0,$s3
    sd	$ra,32($sp)
    # Line 2029
    sd	$a5,1568($s3)
    # Line 2033
    lw	$a1,11760($s3)
    # Line 2029
    ld	$a4,1424($s5)
    # Line 2030
    li	$a2,0x8000
    lw	$v1,1696($s3)
    # Line 2029
    sd	$a4,1576($s3)
    # Line 2030
    nor	$a2,$a2,$zero
    # Line 2029
    ld	$a3,1432($s5)
    # Line 2030
    and	$v1,$v1,$a2
    sw	$v1,1696($s3)
    # Line 2029
    sd	$a3,1584($s3)
    # Line 2035
    # lw $t9, -31520($gp) # &__glExpPassStencilMode
    # Line 2031
    lw	$v0,1544($s5)
    # Line 2033
    ori	$a1,$a1,0x6
    sw	$a1,11760($s3)
    # Line 2031
    andi	$v0,$v0,0x8000
    or	$v0,$v0,$v1
    # Line 2035
    jal	__glExpPassStencilMode
    # Line 2031
    sw	$v0,1696($s3)
    # Line 2036
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    jal	__glExpEnableStencilTest
    move	$a0,$s3
    # Line 2037
    # lw $t9, -31524($gp) # &__glExpPassStencilMask
    jal	__glExpPassStencilMask
    move	$a0,$s3
    ld	$ra,32($sp)
    lui	$at,0x4
.L0da55554:
    and	$at,$s6,$at
    beqz	$at,.L0da55770
    # Line 2041
    li	$a1,31
    move	$a0,$zero
    addiu	$a2,$s3,1876
    addiu	$a4,$s5,1724
    sd	$s4,72($sp)
    # Line 2040
    lw	$s4,3336($s3)
.L0da55574:
    # Line 2041
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da55574
    sw	$v0,0($v1)
    # Line 2042
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2000
    addiu	$a5,$s5,1848
.L0da555a0:
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da555a0
    sd	$v1,0($a3)
    # Line 2043
    li	$a2,31
    move	$a1,$zero
    addiu	$a6,$s3,2124
    addiu	$a7,$s5,1972
    # Line 2042
    addu	$at,$a0,$a4
    addu	$a3,$a0,$a5
    # Line 2044
    li	$a0,15
    # Line 2042
    lw	$a3,0($a3)
    # Line 2044
    addiu	$a5,$s3,2248
    # Line 2042
    sw	$a3,0($at)
.L0da555e4:
    # Line 2043
    addu	$v0,$a1,$a6
    addu	$at,$a1,$a7
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0da555e4
    sw	$at,0($v0)
    # Line 2044
    addiu	$a4,$s5,2096
    move	$a2,$zero
.L0da55608:
    addu	$v1,$a2,$a5
    addu	$v0,$a2,$a4
    addiu	$a2,$a2,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da55608
    sd	$v0,0($v1)
    addu	$v1,$a2,$a4
    lw	$v1,0($v1)
    addu	$a0,$a2,$a5
    sw	$v1,0($a0)
    # Line 2046
    lwc1	$f3,2228($s5)
    swc1	$f3,2380($s3)
    # Line 2047
    lwc1	$f2,2232($s5)
    swc1	$f2,2384($s3)
    # Line 2048
    lwc1	$f1,2236($s5)
    swc1	$f1,2388($s3)
    # Line 2049
    lwc1	$f0,2240($s5)
    swc1	$f0,2392($s3)
    # Line 2051
    lwc1	$f3,2244($s5)
    swc1	$f3,2396($s3)
    # Line 2052
    lwc1	$f2,2248($s5)
    swc1	$f2,2400($s3)
    # Line 2053
    lwc1	$f1,2252($s5)
    sd	$ra,32($sp)
    sd	$s0,64($sp)
    swc1	$f1,2404($s3)
    # Line 2070
    move	$s0,$zero
    # Line 2054
    lwc1	$f0,2256($s5)
    sd	$s1,56($sp)
    # Line 2068
    lw	$a0,2372($s3)
    # Line 2054
    swc1	$f0,2408($s3)
    sd	$s2,80($sp)
    # Line 2069
    lw	$a1,2220($s5)
    # Line 2068
    move	$s2,$a0
    # Line 2070
    beqz	$s4,.L0da556d8
    # Line 2069
    move	$s1,$a1
    andi	$a3,$s4,0x1
    beqz	$a3,.L0da556c4
    # Line 2070
    move	$a0,$s4
    lw	$at,216($s2)
    lw	$a2,216($s1)
    bnel	$at,$a2,.L0da55a0c
    sd	$a0,40($sp)
.L0da556b8:
    # Line 2071
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s0,$s0,1
.L0da556c4:
    sra	$v0,$a0,0x1
    bnez	$v0,.L0da558c4
    sd	$ra,32($sp)
    lw	$a1,2220($s5)
.L0da556d4:
    lw	$a0,2372($s3)
.L0da556d8:
    ld	$s1,56($sp)
    ld	$s0,64($sp)
    ld	$s2,80($sp)
    # Line 2078
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 2080
    lw	$a1,2224($s5)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s4,72($sp)
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 2083
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2220($s5)
    # Line 2084
    sw	$zero,2220($s5)
    # Line 2085
    lw	$t9,12($s3)
    lw	$a1,2224($s5)
    jalr	$t9
    move	$a0,$s3
    # Line 2086
    sw	$zero,2224($s5)
    # Line 2087
    lw	$at,1696($s3)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2088
    lw	$ra,1544($s5)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    ld	$ra,32($sp)
.L0da55770:
    andi	$v1,$s6,0x1000
    beqz	$v1,.L0da55810
    # Line 2104
    andi	$at,$s6,0x800
    # Line 2093
    lw	$a0,1652($s3)
    sd	$ra,32($sp)
    lw	$a2,3332($s3)
    # Line 2092
    lw	$a1,1496($s5)
    # Line 2093
    # lw $t9, -23008($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 2092
    sw	$a1,1648($s3)
    # Line 2093
    jal	memcpy
    lw	$a1,1500($s5)
    # Line 2096
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1500($s5)
    # Line 2097
    sw	$zero,1500($s5)
    # Line 2098
    lw	$a5,1696($s3)
    lui	$a6,0x40
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1696($s3)
    # Line 2099
    lw	$a4,1544($s5)
    lui	$a6,0x40
    and	$a4,$a4,$a6
    or	$a4,$a4,$a5
    sw	$a4,1696($s3)
    # Line 2102
    # lw $t9, -31088($gp) # &__glExpEnableClipPlanes
    # Line 2101
    lw	$a3,1556($s5)
    # Line 2102
    move	$a0,$s3
    jal	__glExpEnableClipPlanes
    # Line 2101
    sw	$a3,1708($s3)
    # Line 2103
    # lw $t9, -31084($gp) # &__glExpPassClipPlanes
    jal	__glExpPassClipPlanes
    move	$a0,$s3
    # Line 2104
    # lw $t9, -31168($gp) # &__glExpEnableNormalize
    jal	__glExpEnableNormalize
    move	$a0,$s3
    ld	$ra,32($sp)
    andi	$at,$s6,0x800
.L0da55810:
    beqz	$at,.L0da55868
    ld	$s6,48($sp)
    # Line 2107
    ld	$a4,1440($s5)
    sd	$a4,1592($s3)
    ld	$a3,1448($s5)
    sd	$a3,1600($s3)
    ld	$a2,1456($s5)
    sd	$a2,1608($s3)
    ld	$a1,1464($s5)
    sd	$a1,1616($s3)
    ld	$a0,1472($s5)
    sd	$a0,1624($s3)
    ld	$v1,1480($s5)
    ld	$s6,48($sp)
    sd	$ra,32($sp)
    sd	$v1,1632($s3)
    # Line 2108
    # lw $t9, -32404($gp) # &__glExpUpdateViewport
    # Line 2107
    ld	$v0,1488($s5)
    # Line 2108
    move	$a0,$s3
    bal __glExpUpdateViewport
    # Line 2107
    sd	$v0,1640($s3)
    ld	$ra,32($sp)
.L0da55868:
    # Line 2115
    sw	$zero,0($s5)
    # Line 2117
    sw	$s7,__glBeginMode
    lw	$s5,11764($s3)
    ld	$gp,16($sp)
    # Line 2122
    ld	$s7,0($sp)
    # Line 2117
    ori	$s5,$s5,0x1
    sw	$s5,11764($s3)
    # Line 2122
    ld	$s3,24($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da55894:
    # Line 2073
    move	$a0,$s3
    jal	__glExpUpdateViewport
    move	$a1,$s0
    # Line 2070
    lw	$a2,440($s1)
.L0da558a4:
    lw	$at,440($s2)
    # Line 2071
    addiu	$s1,$s1,448
    addiu	$s2,$s2,448
    # Line 2070
    bne	$at,$a2,.L0da558dc
    # Line 2071
    addiu	$s0,$s0,1
    addiu	$s0,$s0,1
.L0da558bc:
    beql	$s4,$s0,.L0da556d4
    lw	$a1,2220($s5)
.L0da558c4:
    # Line 2070
    lw	$a2,216($s1)
    lw	$v0,216($s2)
    beql	$v0,$a2,.L0da558a4
    lw	$a2,440($s1)
    b	.L0da55894
    # Line 2073
    nop	# was lw $t9, -26368($gp) # &__glBindTexture
.L0da558dc:
    # lw $t9, -26368($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0da558bc
    # Line 2071
    addiu	$s0,$s0,1
.L0da558f4:
    # Line 1852
    lw	$a1,1696($s3)
    nor	$v1,$a0,$zero
    and	$v1,$v1,$a1
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0da55924
    # Line 1859
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
    sd	$ra,32($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s5)
    lw	$a1,1696($s3)
    ld	$ra,32($sp)
.L0da55924:
    nor	$a3,$a1,$zero
    and	$a3,$a3,$a0
    andi	$a3,$a3,0x4000
    beqzl	$a3,.L0da54da8
    # Line 1867
    ld	$a2,1544($s5)
    # Line 1864
    lw	$at,31312($s3)
    sd	$ra,32($sp)
    b	.L0da54da4
    sw	$at,31316($s3)
.L0da55948:
    # Line 1994
    andi	$v0,$a1,0x4000
    beqzl	$v0,.L0da55998
    # Line 2004
    lw	$a0,1544($s5)
    lw	$v1,2260($s5)
    lw	$a3,2412($s3)
    bne	$v1,$a3,.L0da559ac
    # Line 2012
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
    # Line 2004
    lw	$at,2264($s5)
    lw	$v0,2416($s3)
    bne	$at,$v0,.L0da559ac
    # Line 2012
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
    # Line 2004
    lw	$v1,2268($s5)
    lw	$a3,2420($s3)
    bne	$v1,$a3,.L0da559ac
    # Line 2012
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
    # Line 2004
    lw	$at,2272($s5)
    lw	$v0,2424($s3)
    bne	$at,$v0,.L0da559ac
    # Line 2012
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
    # Line 2004
    lw	$a0,1544($s5)
.L0da55998:
    nor	$v1,$a0,$zero
    and	$v1,$v1,$a1
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0da559c4
    # Line 2012
    nop	# was lw $t9, -25988($gp) # &__glReadjustZCounts
.L0da559ac:
    sd	$ra,32($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s5)
    lw	$a1,1696($s3)
    ld	$ra,32($sp)
.L0da559c4:
    nor	$a3,$a1,$zero
    and	$a3,$a3,$a0
    andi	$a3,$a3,0x4000
    beqzl	$a3,.L0da55478
    # Line 2020
    lw	$a5,2260($s5)
    # Line 2017
    lw	$at,31312($s3)
    sd	$ra,32($sp)
    b	.L0da55474
    sw	$at,31316($s3)
.L0da559e8:
    # Line 2119
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 2120
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da55a0c:
    # Line 2073
    # lw $t9, -26368($gp) # &__glBindTexture
    move	$a0,$s3
    sd	$ra,32($sp)
    jal	__glBindTexture
    move	$a1,$s0
    ld	$a0,40($sp)
    b	.L0da556b8
    ld	$ra,32($sp)
.L0da55a2c:
    # Line 1805
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glexpim_PopAttrib

# Function: __glexpim_Enable
# Declared: Line 2126 (Source lines: 2127-2368)
# Address: 0x0da55a50 - 0x0da56810 (Size: 3520 bytes, Frame: 48)
.globl __glexpim_Enable
.ent __glexpim_Enable
__glexpim_Enable:
    # Line 2127
    move	$a3,$a0
    # Line 2129
    li	$a4,1
    # Line 2127
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 2129
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2127
    lui	$v0,0x1a
    addiu	$v0,$v0,7704
    # Line 2129
    beq	$at,$a4,.L0da55fd0
    # Line 2127
    addu	$gp,$t9,$v0
    # Line 2129
    sltiu	$v1,$a3,3510
    bnez	$v1,.L0da55ac8
    # Line 2132
    sltiu	$a1,$a3,3511
    beqz	$a1,.L0da55b74
.L0da55a8c:
    # Line 2283
    li	$a2,2
.L0da55a90:
    # Line 2282
    lw	$at,1716($s0)
    addiu	$v0,$a3,-3504
    sllv	$v0,$a4,$v0
    andi	$v0,$v0,0xffff
    or	$at,$at,$v0
    sw	$at,1716($s0)
.L0da55aa8:
    # Line 2367
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11764($s0)
    # Line 2368
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55ac8:
    # Line 2132
    sltiu	$a1,$a3,3169
    bnez	$a1,.L0da55b20
    sltiu	$at,$a3,3170
    bnez	$at,.L0da55c60
    # Line 2241
    lui	$v0,0x8
    # Line 2132
    sltiu	$v0,$a3,3478
    bnez	$v0,.L0da55c74
    sltiu	$v1,$a3,3479
    bnez	$v1,.L0da55cc0
    sltiu	$a1,$a3,3506
    bnez	$a1,.L0da56058
    sltiu	$at,$a3,3507
    bnez	$at,.L0da55a8c
    sltiu	$v0,$a3,3508
    bnez	$v0,.L0da565dc
    sltiu	$v1,$a3,3509
    bnez	$v1,.L0da55a8c
    li	$a1,3509
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55a90
    # Line 2283
    li	$a2,2
.L0da55b20:
    # Line 2132
    sltiu	$at,$a3,2929
    bnez	$at,.L0da55bd0
    sltiu	$v0,$a3,2930
    bnez	$v0,.L0da55f94
    sltiu	$v1,$a3,3042
    bnez	$v1,.L0da55db0
    sltiu	$a1,$a3,3043
    bnez	$a1,.L0da562a8
    sltiu	$at,$a3,3089
    bnez	$at,.L0da55ff4
    sltiu	$v0,$a3,3090
    bnez	$v0,.L0da56280
    li	$v1,3168
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2238
    lw	$a1,1696($s0)
    # Line 2239
    li	$a2,2
    # Line 2238
    lui	$at,0x4
    or	$a1,$a1,$at
    # Line 2239
    b	.L0da55aa8
    # Line 2238
    sw	$a1,1696($s0)
.L0da55b74:
    # Line 2132
    sltiu	$v0,$a3,16390
    bnez	$v0,.L0da55c20
    sltiu	$v1,$a3,16391
    beqz	$v1,.L0da55d44
.L0da55b84:
    # Line 2263
    li	$a5,2
    # Line 2262
    lw	$a6,1704($s0)
    addiu	$a1,$a3,-16384
    sllv	$a7,$a4,$a1
    or	$a6,$a6,$a7
    sw	$a6,1704($s0)
    # Line 2263
    sw	$a5,__glBeginMode
    # Line 2264
    move	$a0,$s0
    # Line 2263
    lw	$a2,11764($s0)
    # Line 2264
    # lw $t9, -32248($gp) # &__glExpValidateLightSource
    sd	$ra,16($sp)
    # Line 2263
    ori	$a2,$a2,0x20
    # Line 2264
    jal	__glExpValidateLightSource
    # Line 2263
    sw	$a2,11764($s0)
    # Line 2265
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55bd0:
    # Line 2132
    sltiu	$at,$a3,2882
    bnez	$at,.L0da55ce0
    sltiu	$v0,$a3,2883
    bnez	$v0,.L0da561f8
    sltiu	$v1,$a3,2903
    bnez	$v1,.L0da55eec
    sltiu	$a1,$a3,2904
    bnez	$a1,.L0da5658c
    li	$at,2912
    beq	$a3,$at,.L0da56748
    sd	$ra,16($sp)
.L0da55bfc:
    # Line 2364
    # lw $t9, -29008($gp) # &__glSetError
.L0da55c00:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2365
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55c20:
    # Line 2132
    sltiu	$v0,$a3,12291
    bnez	$v0,.L0da55d10
    sltiu	$v1,$a3,12292
    beqz	$v1,.L0da55e5c
.L0da55c30:
    # Line 2255
    move	$a0,$s0
    sd	$ra,16($sp)
    # lw $t9, -31088($gp) # &__glExpEnableClipPlanes
    # Line 2254
    lw	$a1,1708($s0)
    addiu	$a2,$a3,-12288
    sllv	$a2,$a4,$a2
    or	$a1,$a1,$a2
    # Line 2255
    jal	__glExpEnableClipPlanes
    # Line 2254
    sw	$a1,1708($s0)
    # Line 2256
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da55c60:
    # Line 2241
    lw	$at,1696($s0)
    # Line 2242
    li	$a2,2
    # Line 2241
    or	$at,$at,$v0
    # Line 2242
    b	.L0da55aa8
    # Line 2241
    sw	$at,1696($s0)
.L0da55c74:
    # Line 2132
    sltiu	$v1,$a3,3473
    bnez	$v1,.L0da55ca8
    sltiu	$a1,$a3,3474
    bnez	$a1,.L0da55cc0
    sltiu	$at,$a3,3476
    bnez	$at,.L0da562f4
    sltiu	$v0,$a3,3477
    bnez	$v0,.L0da55cc0
    li	$v1,3477
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55cc4
    # Line 2274
    li	$a2,2
.L0da55ca8:
    # Line 2132
    sltiu	$a1,$a3,3456
    bnez	$a1,.L0da5602c
    sltiu	$at,$a3,3457
    bnez	$at,.L0da5639c
    li	$v0,3472
    bne	$a3,$v0,.L0da55bfc
.L0da55cc0:
    # Line 2274
    li	$a2,2
.L0da55cc4:
    # Line 2273
    lw	$v1,1712($s0)
    addiu	$a1,$a3,-3472
    sllv	$a1,$a4,$a1
    andi	$a1,$a1,0xffff
    or	$v1,$v1,$a1
    # Line 2274
    b	.L0da55aa8
    # Line 2273
    sw	$v1,1712($s0)
.L0da55ce0:
    # Line 2132
    sltiu	$at,$a3,2852
    bnez	$at,.L0da55df0
    sltiu	$v0,$a3,2853
    bnez	$v0,.L0da564a4
    li	$v1,2881
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2199
    lw	$a1,1696($s0)
    # Line 2200
    li	$a2,2
    # Line 2199
    ori	$a1,$a1,0x800
    # Line 2200
    b	.L0da55aa8
    # Line 2199
    sw	$a1,1696($s0)
.L0da55d10:
    # Line 2132
    sltiu	$at,$a3,10753
    bnez	$at,.L0da55e28
    sltiu	$v0,$a3,10754
    bnez	$v0,.L0da564e8
    sltiu	$v1,$a3,12289
    bnez	$v1,.L0da56190
    sltiu	$a1,$a3,12290
    bnez	$a1,.L0da55c30
    li	$at,12290
    bne	$a3,$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55c30
    sd	$ra,16($sp)
.L0da55d44:
    # Line 2132
    li	$a0,0x8075
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da55e90
    sltu	$v1,$a0,$a3
    beqz	$v1,.L0da563b4
    li	$a0,0x80bc
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0da561ac
    sltu	$at,$a0,$a3
    beqz	$at,.L0da56574
    li	$a0,0x80d1
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da566a8
    sltu	$v1,$a0,$a3
    beqz	$v1,.L0da56784
    li	$a1,0x80d2
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2360
    lw	$v0,1700($s0)
    # Line 2361
    li	$a2,2
    # Line 2360
    ori	$v0,$v0,0x4
    sw	$v0,1700($s0)
    # Line 2361
    sw	$a2,__glBeginMode
    lw	$at,11764($s0)
    ori	$at,$at,0x10
    # Line 2362
    b	.L0da55aa8
    # Line 2361
    sw	$at,11764($s0)
.L0da55db0:
    # Line 2132
    sltiu	$v1,$a3,3008
    bnez	$v1,.L0da55f58
    sltiu	$a1,$a3,3009
    bnez	$a1,.L0da5623c
    li	$at,3024
    bne	$a3,$at,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2156
    lw	$v0,1696($s0)
    # Line 2157
    # lw $t9, -31812($gp) # &__glExpEnableDither
    move	$a0,$s0
    # Line 2156
    ori	$v0,$v0,0x8
    # Line 2157
    jal	__glExpEnableDither
    # Line 2156
    sw	$v0,1696($s0)
    # Line 2158
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da55df0:
    # Line 2132
    sltiu	$v1,$a3,2848
    bnez	$v1,.L0da5607c
    sltiu	$a1,$a3,2849
    beqz	$a1,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2171
    lw	$a2,1696($s0)
    # Line 2172
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    move	$a0,$s0
    # Line 2171
    ori	$a2,$a2,0x200
    # Line 2172
    jal	__glExpEnableLineSmooth
    # Line 2171
    sw	$a2,1696($s0)
    # Line 2173
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da55e28:
    # Line 2132
    sltiu	$at,$a3,3552
    bnez	$at,.L0da560ac
    sltiu	$v0,$a3,3553
    bnez	$v0,.L0da563dc
    li	$v1,3553
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2232
    lw	$a1,1696($s0)
    # Line 2233
    li	$a2,2
    # Line 2232
    lui	$at,0x2
    or	$a1,$a1,$at
    # Line 2233
    b	.L0da55aa8
    # Line 2232
    sw	$a1,1696($s0)
.L0da55e5c:
    # Line 2132
    sltiu	$v0,$a3,16386
    bnez	$v0,.L0da560c8
    sltiu	$v1,$a3,16387
    bnez	$v1,.L0da55b84
    sltiu	$a1,$a3,16388
    bnez	$a1,.L0da56658
    sltiu	$at,$a3,16389
    bnez	$at,.L0da55b84
    li	$v0,16389
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55b84
    sd	$ra,16($sp)
.L0da55e90:
    # Line 2132
    li	$a0,0x8024
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da560ec
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da563f4
    li	$a0,0x806f
    sltu	$at,$a3,$a0
    bnez	$at,.L0da565f0
    sltu	$v0,$a0,$a3
    beqz	$v0,.L0da5676c
    li	$v1,0x8074
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2302
    lw	$a0,4884($s0)
    # Line 2303
    lw	$a1,4888($s0)
    ld	$gp,0($sp)
    # Line 2302
    ori	$a0,$a0,0xff
    # Line 2303
    ori	$a1,$a1,0x20
    sw	$a1,4888($s0)
    # Line 2302
    sw	$a0,4884($s0)
    # Line 2304
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55eec:
    # Line 2132
    sltiu	$at,$a3,2896
    bnez	$at,.L0da56134
    sltiu	$v0,$a3,2897
    beqz	$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2164
    lw	$a1,1696($s0)
    # Line 2165
    li	$a0,2
    # Line 2164
    ori	$a1,$a1,0x40
    sw	$a1,1696($s0)
    # Line 2165
    sw	$a0,__glBeginMode
    lw	$v1,11764($s0)
    # Line 2166
    lw	$t9,11800($s0)
    move	$a0,$s0
    # Line 2165
    ori	$v1,$v1,0x20
    # Line 2166
    jal	__glSetError
    # Line 2165
    sw	$v1,11764($s0)
    # Line 2167
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2168
    # lw $t9, -32236($gp) # &__glExpEnableLighting
    jal	__glExpEnableLighting
    move	$a0,$s0
    # Line 2169
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55f58:
    # Line 2132
    sltiu	$at,$a3,2977
    bnez	$at,.L0da56160
    sltiu	$v0,$a3,2978
    beqz	$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2192
    move	$a0,$s0
    # Line 2191
    lw	$v1,1696($s0)
    # Line 2192
    # lw $t9, -31168($gp) # &__glExpEnableNormalize
    # Line 2191
    lui	$a1,0x40
    or	$v1,$v1,$a1
    # Line 2192
    jal	__glExpEnableNormalize
    # Line 2191
    sw	$v1,1696($s0)
    # Line 2193
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da55f94:
    # Line 2151
    lw	$a4,1696($s0)
    # Line 2152
    li	$a3,2
    # Line 2151
    ori	$a4,$a4,0x10
    sw	$a4,1696($s0)
    # Line 2152
    sw	$a3,__glBeginMode
    # Line 2153
    move	$a0,$s0
    # Line 2152
    lw	$a2,11764($s0)
    # Line 2153
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    sd	$ra,16($sp)
    # Line 2152
    ori	$a2,$a2,0x80
    # Line 2153
    bal __glExpEnableDepthTest
    # Line 2152
    sw	$a2,11764($s0)
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da55fd0:
    # Line 2129
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da55ff4:
    # Line 2132
    sltiu	$at,$a3,3058
    bnez	$at,.L0da56250
    sltiu	$v0,$a3,3059
    beqz	$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2184
    lw	$v1,1700($s0)
    # Line 2187
    # lw $t9, -32628($gp) # &__glexpim_BlendEquationEXT
    li	$a0,3057
    # Line 2184
    ori	$v1,$v1,0x800
    # Line 2187
    bal __glexpim_BlendEquationEXT
    # Line 2184
    sw	$v1,1700($s0)
    # Line 2189
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da5602c:
    # Line 2132
    sltiu	$a1,$a3,3171
    bnez	$a1,.L0da562d0
    sltiu	$at,$a3,3172
    beqz	$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2247
    lw	$v0,1696($s0)
    # Line 2248
    li	$a2,2
    # Line 2247
    lui	$v1,0x20
    or	$v0,$v0,$v1
    # Line 2248
    b	.L0da55aa8
    # Line 2247
    sw	$v0,1696($s0)
.L0da56058:
    # Line 2132
    sltiu	$a1,$a3,3504
    bnez	$a1,.L0da56310
    sltiu	$at,$a3,3505
    bnez	$at,.L0da55a8c
    li	$v0,3505
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55a90
    # Line 2283
    li	$a2,2
.L0da5607c:
    # Line 2132
    li	$v1,2832
    bne	$a3,$v1,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2195
    lw	$a1,1696($s0)
    # Line 2196
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    move	$a0,$s0
    # Line 2195
    ori	$a1,$a1,0x400
    # Line 2196
    jal	__glExpEnablePointSmooth
    # Line 2195
    sw	$a1,1696($s0)
    # Line 2197
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da560ac:
    # Line 2132
    sltiu	$at,$a3,3512
    bnez	$at,.L0da5632c
    sltiu	$v0,$a3,3513
    beqz	$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55a90
    # Line 2283
    li	$a2,2
.L0da560c8:
    # Line 2132
    sltiu	$v1,$a3,16384
    bnez	$v1,.L0da56340
    sltiu	$a1,$a3,16385
    bnez	$a1,.L0da55b84
    li	$at,16385
    bne	$a3,$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55b84
    sd	$ra,16($sp)
.L0da560ec:
    # Line 2132
    li	$a0,0x8011
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da5635c
    sltu	$v1,$a0,$a3
    beqz	$v1,.L0da56680
    li	$a1,0x8012
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2334
    lw	$v0,1696($s0)
    # Line 2335
    li	$a2,2
    # Line 2334
    lui	$v1,0x800
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
    # Line 2335
    sw	$a2,__glBeginMode
    lw	$at,11764($s0)
    ori	$at,$at,0x10
    # Line 2336
    b	.L0da55aa8
    # Line 2335
    sw	$at,11764($s0)
.L0da56134:
    # Line 2132
    li	$a1,2884
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2145
    lw	$a2,1696($s0)
    andi	$at,$a2,0x1000
    beqz	$at,.L0da567d4
    # Line 2147
    li	$a3,2
    ld	$gp,0($sp)
    # Line 2145
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56160:
    # Line 2132
    li	$v0,2960
    bne	$a3,$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2225
    lw	$v1,1696($s0)
    # Line 2226
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    move	$a0,$s0
    # Line 2225
    ori	$v1,$v1,0x8000
    # Line 2226
    jal	__glExpEnableStencilTest
    # Line 2225
    sw	$v1,1696($s0)
    # Line 2227
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56190:
    # Line 2132
    sltiu	$a1,$a3,12288
    bnez	$a1,.L0da5641c
    sltiu	$at,$a3,12289
    beqz	$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55c30
    sd	$ra,16($sp)
.L0da561ac:
    # Line 2132
    li	$a0,0x8078
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da56460
    sltu	$v1,$a0,$a3
    beqz	$v1,.L0da567a8
    li	$a1,0x8079
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2322
    lw	$at,4884($s0)
    # Line 2323
    lw	$v1,4888($s0)
    # Line 2322
    lui	$v0,0x800
    or	$at,$at,$v0
    # Line 2323
    ori	$v1,$v1,0x10
    sw	$v1,4888($s0)
    # Line 2322
    sw	$at,4884($s0)
    # Line 2324
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da561f8:
    # Line 2202
    lw	$a3,1696($s0)
    # Line 2203
    li	$a2,2
    # Line 2202
    ori	$a3,$a3,0x2000
    sw	$a3,1696($s0)
    # Line 2203
    sw	$a2,__glBeginMode
    # Line 2204
    move	$a0,$s0
    # Line 2203
    lw	$a1,11764($s0)
    # Line 2204
    # lw $t9, -32032($gp) # &__glExpEnablePolygonStipple
    sd	$ra,16($sp)
    # Line 2203
    ori	$a1,$a1,0x4
    # Line 2204
    jal	__glExpEnablePolygonStipple
    # Line 2203
    sw	$a1,11764($s0)
    # Line 2205
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5623c:
    # Line 2134
    lw	$at,1696($s0)
    # Line 2135
    li	$a2,2
    # Line 2134
    ori	$at,$at,0x1
    # Line 2135
    b	.L0da55aa8
    # Line 2134
    sw	$at,1696($s0)
.L0da56250:
    # Line 2132
    li	$v0,3057
    bne	$a3,$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2180
    lw	$v1,1696($s0)
    # Line 2181
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    move	$a0,$s0
    # Line 2180
    ori	$v1,$v1,0x4
    # Line 2181
    jal	__glExpEnableLogicOp
    # Line 2180
    sw	$v1,1696($s0)
    # Line 2182
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56280:
    # Line 2207
    lbu	$a1,31565($s0)
    bnez	$a1,.L0da56544
    lw	$a2,1696($s0)
    andi	$at,$a2,0x4000
    beqzl	$at,.L0da56524
    # Line 2208
    lbu	$at,1540($s0)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da562a8:
    # Line 2138
    move	$a0,$s0
    # Line 2137
    lw	$v0,1696($s0)
    # Line 2138
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    sd	$ra,16($sp)
    # Line 2137
    ori	$v0,$v0,0x2
    # Line 2138
    jal	__glExpEnableBlendFunc
    # Line 2137
    sw	$v0,1696($s0)
    # Line 2139
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da562d0:
    # Line 2132
    li	$v1,3170
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2244
    lw	$a1,1696($s0)
    # Line 2245
    li	$a2,2
    # Line 2244
    lui	$at,0x10
    or	$a1,$a1,$at
    # Line 2245
    b	.L0da55aa8
    # Line 2244
    sw	$a1,1696($s0)
.L0da562f4:
    # Line 2132
    sltiu	$v0,$a3,3475
    bnez	$v0,.L0da565b4
    sltiu	$v1,$a3,3476
    beqz	$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55cc4
    # Line 2274
    li	$a2,2
.L0da56310:
    # Line 2132
    sltiu	$a1,$a3,3480
    bnez	$a1,.L0da565c8
    sltiu	$at,$a3,3481
    beqz	$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55cc4
    # Line 2274
    li	$a2,2
.L0da5632c:
    # Line 2132
    li	$v0,3511
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55a90
    # Line 2283
    li	$a2,2
.L0da56340:
    # Line 2132
    sltiu	$v1,$a3,12293
    bnez	$v1,.L0da56644
    sltiu	$a1,$a3,12294
    beqz	$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55c30
    sd	$ra,16($sp)
.L0da5635c:
    # Line 2132
    li	$a0,0x8010
    sltu	$at,$a3,$a0
    bnez	$at,.L0da5666c
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2326
    lw	$a1,1696($s0)
    # Line 2327
    li	$a2,2
    # Line 2326
    lui	$at,0x200
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 2327
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ori	$v1,$v1,0x10
    # Line 2328
    b	.L0da55aa8
    # Line 2327
    sw	$v1,11764($s0)
.L0da5639c:
    # Line 2235
    lw	$v0,1696($s0)
    # Line 2236
    li	$a2,2
    # Line 2235
    lui	$v1,0x80
    or	$v0,$v0,$v1
    # Line 2236
    b	.L0da55aa8
    # Line 2235
    sw	$v0,1696($s0)
.L0da563b4:
    # Line 2306
    lw	$a0,4884($s0)
    # Line 2307
    lw	$a1,4888($s0)
    ld	$gp,0($sp)
    # Line 2306
    ori	$a0,$a0,0xf00
    # Line 2307
    ori	$a1,$a1,0x1
    sw	$a1,4888($s0)
    # Line 2306
    sw	$a0,4884($s0)
    # Line 2308
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da563dc:
    # Line 2229
    lw	$at,1696($s0)
    # Line 2230
    li	$a2,2
    # Line 2229
    lui	$v0,0x1
    or	$at,$at,$v0
    # Line 2230
    b	.L0da55aa8
    # Line 2229
    sw	$at,1696($s0)
.L0da563f4:
    # Line 2338
    lw	$a1,1696($s0)
    # Line 2339
    li	$a2,2
    # Line 2338
    lui	$at,0x1000
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 2339
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ori	$v1,$v1,0x10
    # Line 2340
    b	.L0da55aa8
    # Line 2339
    sw	$v1,11764($s0)
.L0da5641c:
    # Line 2132
    li	$v0,10754
    bne	$a3,$v0,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2297
    lw	$a1,1700($s0)
    # Line 2298
    li	$a0,2
    # Line 2297
    ori	$a1,$a1,0x400
    sw	$a1,1700($s0)
    # Line 2298
    sw	$a0,__glBeginMode
    lw	$v1,11764($s0)
    # Line 2299
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    move	$a0,$s0
    # Line 2298
    ori	$v1,$v1,0x4
    # Line 2299
    jal	__glExpPassPolygonOffset
    # Line 2298
    sw	$v1,11764($s0)
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56460:
    # Line 2132
    li	$a0,0x8077
    sltu	$at,$a3,$a0
    bnez	$at,.L0da566d8
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2314
    lw	$v1,4884($s0)
    # Line 2315
    lw	$a1,4888($s0)
    # Line 2314
    lui	$a0,0xf000
    or	$v1,$v1,$a0
    # Line 2315
    ori	$a1,$a1,0x8
    sw	$a1,4888($s0)
    # Line 2314
    sw	$v1,4884($s0)
    # Line 2316
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da564a4:
    # Line 2175
    lw	$a4,1696($s0)
    # Line 2176
    li	$a3,2
    # Line 2175
    ori	$a4,$a4,0x100
    sw	$a4,1696($s0)
    # Line 2176
    sw	$a3,__glBeginMode
    # Line 2177
    move	$a0,$s0
    # Line 2176
    lw	$a2,11764($s0)
    # Line 2177
    # lw $t9, -32216($gp) # &__glExpEnableLineStipple
    sd	$ra,16($sp)
    # Line 2176
    ori	$a2,$a2,0x2
    # Line 2177
    jal	__glExpEnableLineStipple
    # Line 2176
    sw	$a2,11764($s0)
    # Line 2178
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da564e8:
    # Line 2291
    lw	$a7,1700($s0)
    # Line 2292
    li	$a6,2
    # Line 2291
    ori	$a7,$a7,0x200
    sw	$a7,1700($s0)
    # Line 2292
    sw	$a6,__glBeginMode
    # Line 2293
    move	$a0,$s0
    # Line 2292
    lw	$a5,11764($s0)
    # Line 2293
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    sd	$ra,16($sp)
    # Line 2292
    ori	$a5,$a5,0x4
    # Line 2293
    jal	__glExpPassPolygonOffset
    # Line 2292
    sw	$a5,11764($s0)
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56524:
    # Line 2208
    beqz	$at,.L0da56548
    # Line 2221
    move	$a0,$s0
    # Line 2208
    lbu	$v0,3109($s0)
    beqz	$v0,.L0da56548
    # Line 2221
    move	$a0,$s0
    # Line 2211
    lw	$v1,31312($s0)
    sd	$ra,16($sp)
    sw	$v1,31316($s0)
.L0da56544:
    # Line 2221
    move	$a0,$s0
.L0da56548:
    lw	$t9,11924($s0)
    sd	$ra,16($sp)
    # Line 2220
    ori	$a1,$a2,0x4000
    # Line 2221
    jalr	$t9
    # Line 2220
    sw	$a1,1696($s0)
    # Line 2222
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2223
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56574:
    # Line 2349
    lw	$at,1696($s0)
    # Line 2350
    li	$a2,2
    # Line 2349
    lui	$v0,0x8000
    or	$at,$at,$v0
    # Line 2350
    b	.L0da55aa8
    # Line 2349
    sw	$at,1696($s0)
.L0da5658c:
    # Line 2142
    move	$a0,$s0
    # Line 2141
    lw	$v1,1696($s0)
    # Line 2142
    # lw $t9, -32252($gp) # &__glExpValidateColorMaterial
    sd	$ra,16($sp)
    # Line 2141
    ori	$v1,$v1,0x80
    # Line 2142
    jal	__glExpValidateColorMaterial
    # Line 2141
    sw	$v1,1696($s0)
    # Line 2143
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da565b4:
    # Line 2132
    li	$a1,3474
    bne	$a3,$a1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55cc4
    # Line 2274
    li	$a2,2
.L0da565c8:
    # Line 2132
    li	$at,3479
    bne	$a3,$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55cc4
    # Line 2274
    li	$a2,2
.L0da565dc:
    # Line 2132
    li	$v0,3507
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55a90
    # Line 2283
    li	$a2,2
.L0da565f0:
    # Line 2132
    li	$a0,0x8037
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da56714
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0da55bfc
    sd	$ra,16($sp)
    # Line 2285
    lw	$a4,1696($s0)
    # Line 2286
    li	$a3,2
    # Line 2285
    lui	$a5,0x100
    or	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 2286
    sw	$a3,__glBeginMode
    lw	$a2,11764($s0)
    # Line 2287
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    move	$a0,$s0
    # Line 2286
    ori	$a2,$a2,0x4
    # Line 2287
    jal	__glExpPassPolygonOffset
    # Line 2286
    sw	$a2,11764($s0)
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da56644:
    # Line 2132
    li	$at,12292
    bne	$a3,$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55c30
    sd	$ra,16($sp)
.L0da56658:
    # Line 2132
    li	$v0,16387
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55b84
    sd	$ra,16($sp)
.L0da5666c:
    # Line 2132
    li	$v1,16391
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da55b84
    sd	$ra,16($sp)
.L0da56680:
    # Line 2330
    lw	$at,1696($s0)
    # Line 2331
    li	$a2,2
    # Line 2330
    lui	$v0,0x400
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2331
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2332
    b	.L0da55aa8
    # Line 2331
    sw	$a1,11764($s0)
.L0da566a8:
    # Line 2132
    li	$v1,0x80d0
    bne	$a3,$v1,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2352
    lw	$at,1700($s0)
    # Line 2353
    li	$a2,2
    # Line 2352
    ori	$at,$at,0x1
    sw	$at,1700($s0)
    # Line 2353
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2354
    b	.L0da55aa8
    # Line 2353
    sw	$a1,11764($s0)
.L0da566d8:
    # Line 2132
    li	$v0,0x8076
    bne	$a3,$v0,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2310
    lui	$a0,0xf
    lw	$v1,4884($s0)
    # Line 2311
    lw	$a1,4888($s0)
    # Line 2310
    ori	$a0,$a0,0xf000
    or	$v1,$v1,$a0
    # Line 2311
    ori	$a1,$a1,0x2
    sw	$a1,4888($s0)
    # Line 2310
    sw	$v1,4884($s0)
    # Line 2312
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56714:
    # Line 2132
    li	$at,0x802e
    bne	$a3,$at,.L0da55c00
    # Line 2364
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2342
    lw	$v1,1696($s0)
    # Line 2343
    li	$a2,2
    # Line 2342
    lui	$a1,0x2000
    or	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2343
    sw	$a2,__glBeginMode
    lw	$v0,11764($s0)
    ori	$v0,$v0,0x10
    # Line 2344
    b	.L0da55aa8
    # Line 2343
    sw	$v0,11764($s0)
.L0da56748:
    # Line 2160
    lw	$a2,1696($s0)
    # Line 2161
    # lw $t9, -32304($gp) # &__glExpEnableFog
    move	$a0,$s0
    # Line 2160
    ori	$a2,$a2,0x20
    # Line 2161
    bal __glExpEnableFog
    # Line 2160
    sw	$a2,1696($s0)
    # Line 2162
    li	$a2,2
    b	.L0da55aa8
    ld	$ra,16($sp)
.L0da5676c:
    # Line 2346
    lw	$at,1696($s0)
    # Line 2347
    li	$a2,2
    # Line 2346
    lui	$v0,0x4000
    or	$at,$at,$v0
    # Line 2347
    b	.L0da55aa8
    # Line 2346
    sw	$at,1696($s0)
.L0da56784:
    # Line 2356
    lw	$a1,1700($s0)
    # Line 2357
    li	$a2,2
    # Line 2356
    ori	$a1,$a1,0x2
    sw	$a1,1700($s0)
    # Line 2357
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ori	$v1,$v1,0x10
    # Line 2358
    b	.L0da55aa8
    # Line 2357
    sw	$v1,11764($s0)
.L0da567a8:
    ld	$gp,0($sp)
    # Line 2318
    lw	$at,4884($s0)
    # Line 2319
    lw	$v1,4888($s0)
    # Line 2318
    lui	$v0,0x7f0
    or	$at,$at,$v0
    # Line 2319
    ori	$v1,$v1,0x4
    sw	$v1,4888($s0)
    # Line 2318
    sw	$at,4884($s0)
    # Line 2320
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da567d4:
    # Line 2146
    ori	$a4,$a2,0x1000
    sw	$a4,1696($s0)
    # Line 2147
    sw	$a3,__glBeginMode
    # Line 2148
    move	$a0,$s0
    # Line 2147
    lw	$a1,11764($s0)
    # Line 2148
    # lw $t9, -32048($gp) # &__glExpEnableCullFace
    sd	$ra,16($sp)
    # Line 2147
    ori	$a1,$a1,0x4
    # Line 2148
    jal	__glExpEnableCullFace
    # Line 2147
    sw	$a1,11764($s0)
    # Line 2149
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Enable

# Function: __glexpim_Disable
# Declared: Line 2370 (Source lines: 2371-2600)
# Address: 0x0da56810 - 0x0da57668 (Size: 3672 bytes, Frame: 48)
.globl __glexpim_Disable
.ent __glexpim_Disable
__glexpim_Disable:
    # Line 2371
    move	$a3,$a0
    # Line 2373
    li	$a4,1
    # Line 2371
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 2373
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2371
    lui	$v0,0x1a
    addiu	$v0,$v0,4184
    # Line 2373
    beq	$at,$a4,.L0da56dc8
    # Line 2371
    addu	$gp,$t9,$v0
    # Line 2373
    sltiu	$v1,$a3,3510
    bnez	$v1,.L0da5688c
    # Line 2376
    sltiu	$a1,$a3,3511
    beqz	$a1,.L0da56938
.L0da5684c:
    # Line 2514
    li	$a2,2
.L0da56850:
    # Line 2513
    lw	$at,1716($s0)
    addiu	$v0,$a3,-3504
    sllv	$v0,$a4,$v0
    nor	$v0,$v0,$zero
    andi	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1716($s0)
.L0da5686c:
    # Line 2599
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ld	$gp,0($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11764($s0)
    # Line 2600
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5688c:
    # Line 2376
    sltiu	$a1,$a3,3169
    bnez	$a1,.L0da568e4
    sltiu	$at,$a3,3170
    bnez	$at,.L0da56a2c
    # Line 2472
    lui	$v0,0x8
    # Line 2376
    sltiu	$v0,$a3,3478
    bnez	$v0,.L0da56a44
    sltiu	$v1,$a3,3479
    bnez	$v1,.L0da56a90
    sltiu	$a1,$a3,3506
    bnez	$a1,.L0da56e54
    sltiu	$at,$a3,3507
    bnez	$at,.L0da5684c
    sltiu	$v0,$a3,3508
    bnez	$v0,.L0da57434
    sltiu	$v1,$a3,3509
    bnez	$v1,.L0da5684c
    li	$a1,3509
    bne	$a3,$a1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56850
    # Line 2514
    li	$a2,2
.L0da568e4:
    # Line 2376
    sltiu	$at,$a3,2929
    bnez	$at,.L0da56998
    sltiu	$v0,$a3,2930
    bnez	$v0,.L0da56d88
    sltiu	$v1,$a3,3042
    bnez	$v1,.L0da56b8c
    sltiu	$a1,$a3,3043
    bnez	$a1,.L0da5709c
    sltiu	$at,$a3,3089
    bnez	$at,.L0da56dec
    sltiu	$v0,$a3,3090
    bnez	$v0,.L0da570c8
    li	$v1,3168
    bne	$a3,$v1,.L0da569c4
    # Line 2470
    li	$a2,2
    # Line 2469
    lw	$a1,1696($s0)
    lui	$at,0x4
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2470
    b	.L0da5686c
    # Line 2469
    sw	$a1,1696($s0)
.L0da56938:
    # Line 2376
    sltiu	$v0,$a3,16390
    bnez	$v0,.L0da569e8
    sltiu	$v1,$a3,16391
    beqz	$v1,.L0da56b1c
.L0da56948:
    # Line 2494
    li	$a5,2
    # Line 2493
    lw	$a6,1704($s0)
    addiu	$a1,$a3,-16384
    sllv	$a7,$a4,$a1
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,1704($s0)
    # Line 2494
    sw	$a5,__glBeginMode
    # Line 2495
    move	$a0,$s0
    # Line 2494
    lw	$a2,11764($s0)
    # Line 2495
    # lw $t9, -32248($gp) # &__glExpValidateLightSource
    sd	$ra,16($sp)
    # Line 2494
    ori	$a2,$a2,0x20
    # Line 2495
    jal	__glExpValidateLightSource
    # Line 2494
    sw	$a2,11764($s0)
    # Line 2496
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56998:
    # Line 2376
    sltiu	$at,$a3,2882
    bnez	$at,.L0da56ab4
    sltiu	$v0,$a3,2883
    bnez	$v0,.L0da57008
    sltiu	$v1,$a3,2903
    bnez	$v1,.L0da56cd8
    sltiu	$a1,$a3,2904
    bnez	$a1,.L0da573a0
    li	$at,2912
    beq	$a3,$at,.L0da575b4
    sd	$ra,16($sp)
.L0da569c4:
    # Line 2596
    # lw $t9, -29008($gp) # &__glSetError
.L0da569c8:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2597
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da569e8:
    # Line 2376
    sltiu	$v0,$a3,12291
    bnez	$v0,.L0da56ae8
    sltiu	$v1,$a3,12292
    beqz	$v1,.L0da56c40
.L0da569f8:
    # Line 2486
    move	$a0,$s0
    sd	$ra,16($sp)
    # lw $t9, -31088($gp) # &__glExpEnableClipPlanes
    # Line 2485
    lw	$a1,1708($s0)
    addiu	$a2,$a3,-12288
    sllv	$a2,$a4,$a2
    nor	$a2,$a2,$zero
    and	$a1,$a1,$a2
    # Line 2486
    jal	__glExpEnableClipPlanes
    # Line 2485
    sw	$a1,1708($s0)
    # Line 2487
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56a2c:
    # Line 2472
    nor	$v0,$v0,$zero
    lw	$at,1696($s0)
    # Line 2473
    li	$a2,2
    # Line 2472
    and	$at,$at,$v0
    # Line 2473
    b	.L0da5686c
    # Line 2472
    sw	$at,1696($s0)
.L0da56a44:
    # Line 2376
    sltiu	$v1,$a3,3473
    bnez	$v1,.L0da56a78
    sltiu	$a1,$a3,3474
    bnez	$a1,.L0da56a90
    sltiu	$at,$a3,3476
    bnez	$at,.L0da5712c
    sltiu	$v0,$a3,3477
    bnez	$v0,.L0da56a90
    li	$v1,3477
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56a94
    # Line 2505
    li	$a2,2
.L0da56a78:
    # Line 2376
    sltiu	$a1,$a3,3456
    bnez	$a1,.L0da56e28
    sltiu	$at,$a3,3457
    bnez	$at,.L0da571d4
    li	$v0,3472
    bne	$a3,$v0,.L0da569c4
.L0da56a90:
    # Line 2505
    li	$a2,2
.L0da56a94:
    # Line 2504
    lw	$v1,1712($s0)
    addiu	$a1,$a3,-3472
    sllv	$a1,$a4,$a1
    nor	$a1,$a1,$zero
    andi	$a1,$a1,0xffff
    and	$v1,$v1,$a1
    # Line 2505
    b	.L0da5686c
    # Line 2504
    sw	$v1,1712($s0)
.L0da56ab4:
    # Line 2376
    sltiu	$at,$a3,2852
    bnez	$at,.L0da56bd0
    sltiu	$v0,$a3,2853
    bnez	$v0,.L0da572fc
    li	$v1,2881
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2440
    lw	$a1,1696($s0)
    # Line 2441
    li	$a2,2
    # Line 2440
    li	$at,-2049
    and	$a1,$a1,$at
    # Line 2441
    b	.L0da5686c
    # Line 2440
    sw	$a1,1696($s0)
.L0da56ae8:
    # Line 2376
    sltiu	$v0,$a3,10753
    bnez	$v0,.L0da56c0c
    sltiu	$v1,$a3,10754
    bnez	$v1,.L0da57344
    sltiu	$a1,$a3,12289
    bnez	$a1,.L0da56f98
    sltiu	$at,$a3,12290
    bnez	$at,.L0da569f8
    li	$v0,12290
    bne	$a3,$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da569f8
    sd	$ra,16($sp)
.L0da56b1c:
    # Line 2376
    li	$a0,0x8075
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da56c74
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da571f0
    li	$a0,0x80bc
    sltu	$at,$a3,$a0
    bnez	$at,.L0da56fb4
    sltu	$v0,$a0,$a3
    beqz	$v0,.L0da57384
    li	$a0,0x80d1
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da57508
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da575f8
    li	$at,0x80d2
    bne	$a3,$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2591
    lw	$v1,1700($s0)
    # Line 2593
    li	$a2,2
    # Line 2591
    li	$a1,-5
    and	$v1,$v1,$a1
    sw	$v1,1700($s0)
    # Line 2593
    sw	$a2,__glBeginMode
    lw	$v0,11764($s0)
    ori	$v0,$v0,0x10
    # Line 2594
    b	.L0da5686c
    # Line 2593
    sw	$v0,11764($s0)
.L0da56b8c:
    # Line 2376
    sltiu	$at,$a3,3008
    bnez	$at,.L0da56d48
    sltiu	$v0,$a3,3009
    bnez	$v0,.L0da57050
    li	$v1,3024
    bne	$a3,$v1,.L0da569c4
    sd	$ra,16($sp)
    # Line 2401
    move	$a0,$s0
    # Line 2400
    lw	$a1,1696($s0)
    # Line 2401
    # lw $t9, -31812($gp) # &__glExpEnableDither
    # Line 2400
    li	$a2,-9
    and	$a1,$a1,$a2
    # Line 2401
    jal	__glExpEnableDither
    # Line 2400
    sw	$a1,1696($s0)
    # Line 2402
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56bd0:
    # Line 2376
    sltiu	$at,$a3,2848
    bnez	$at,.L0da56e78
    sltiu	$v0,$a3,2849
    beqz	$v0,.L0da569c4
    sd	$ra,16($sp)
    # Line 2416
    move	$a0,$s0
    # Line 2415
    lw	$v1,1696($s0)
    # Line 2416
    # lw $t9, -31792($gp) # &__glExpEnableLineSmooth
    # Line 2415
    li	$a1,-513
    and	$v1,$v1,$a1
    # Line 2416
    jal	__glExpEnableLineSmooth
    # Line 2415
    sw	$v1,1696($s0)
    # Line 2417
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56c0c:
    # Line 2376
    sltiu	$at,$a3,3552
    bnez	$at,.L0da56eac
    sltiu	$v0,$a3,3553
    bnez	$v0,.L0da57220
    li	$v1,3553
    bne	$a3,$v1,.L0da569c4
    # Line 2464
    li	$a2,2
    # Line 2463
    lw	$a1,1696($s0)
    lui	$at,0x2
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2464
    b	.L0da5686c
    # Line 2463
    sw	$a1,1696($s0)
.L0da56c40:
    # Line 2376
    sltiu	$v0,$a3,16386
    bnez	$v0,.L0da56ec8
    sltiu	$v1,$a3,16387
    bnez	$v1,.L0da56948
    sltiu	$a1,$a3,16388
    bnez	$a1,.L0da574b4
    sltiu	$at,$a3,16389
    bnez	$at,.L0da56948
    li	$v0,16389
    bne	$a3,$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56948
    sd	$ra,16($sp)
.L0da56c74:
    # Line 2376
    li	$a0,0x8024
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da56eec
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da5723c
    li	$a0,0x806f
    sltu	$at,$a3,$a0
    bnez	$at,.L0da57448
    sltu	$v0,$a0,$a3
    beqz	$v0,.L0da575dc
    li	$v1,0x8074
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2534
    li	$v0,-33
    # Line 2533
    lw	$a0,4884($s0)
    # Line 2534
    lw	$at,4888($s0)
    # Line 2533
    li	$a1,-256
    and	$a0,$a0,$a1
    # Line 2534
    and	$at,$at,$v0
    sw	$at,4888($s0)
    # Line 2533
    sw	$a0,4884($s0)
    # Line 2535
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56cd8:
    # Line 2376
    sltiu	$v1,$a3,2896
    bnez	$v1,.L0da56f34
    sltiu	$a1,$a3,2897
    beqz	$a1,.L0da569c4
    sd	$ra,16($sp)
    # Line 2408
    lw	$a4,1696($s0)
    # Line 2409
    li	$a3,2
    # Line 2408
    li	$a5,-65
    and	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 2409
    sw	$a3,__glBeginMode
    lw	$a2,11764($s0)
    # Line 2410
    lw	$t9,11800($s0)
    move	$a0,$s0
    # Line 2409
    ori	$a2,$a2,0x20
    # Line 2410
    jal	__glSetError
    # Line 2409
    sw	$a2,11764($s0)
    # Line 2411
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2412
    # lw $t9, -32236($gp) # &__glExpEnableLighting
    jal	__glExpEnableLighting
    move	$a0,$s0
    # Line 2413
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56d48:
    # Line 2376
    sltiu	$at,$a3,2977
    bnez	$at,.L0da56f60
    sltiu	$v0,$a3,2978
    beqz	$v0,.L0da569c4
    sd	$ra,16($sp)
    # Line 2433
    move	$a0,$s0
    # lw $t9, -31168($gp) # &__glExpEnableNormalize
    # Line 2432
    lw	$v1,1696($s0)
    lui	$a1,0x40
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2433
    jal	__glExpEnableNormalize
    # Line 2432
    sw	$v1,1696($s0)
    # Line 2434
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56d88:
    # Line 2395
    lw	$a4,1696($s0)
    # Line 2396
    li	$a3,2
    # Line 2395
    li	$a5,-17
    and	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 2396
    sw	$a3,__glBeginMode
    # Line 2397
    move	$a0,$s0
    # Line 2396
    lw	$a2,11764($s0)
    # Line 2397
    # lw $t9, -32372($gp) # &__glExpEnableDepthTest
    sd	$ra,16($sp)
    # Line 2396
    ori	$a2,$a2,0x80
    # Line 2397
    bal __glExpEnableDepthTest
    # Line 2396
    sw	$a2,11764($s0)
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56dc8:
    # Line 2373
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56dec:
    # Line 2376
    sltiu	$at,$a3,3058
    bnez	$at,.L0da57068
    sltiu	$v0,$a3,3059
    beqz	$v0,.L0da569c4
    sd	$ra,16($sp)
    # Line 2429
    move	$a0,$s0
    # Line 2428
    lw	$v1,1700($s0)
    # Line 2429
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    # Line 2428
    li	$a1,-2049
    and	$v1,$v1,$a1
    # Line 2429
    jal	__glExpEnableLogicOp
    # Line 2428
    sw	$v1,1700($s0)
    # Line 2430
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56e28:
    # Line 2376
    sltiu	$at,$a3,3171
    bnez	$at,.L0da57108
    sltiu	$v0,$a3,3172
    beqz	$v0,.L0da569c4
    # Line 2479
    li	$a2,2
    # Line 2478
    lw	$v1,1696($s0)
    lui	$a1,0x20
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2479
    b	.L0da5686c
    # Line 2478
    sw	$v1,1696($s0)
.L0da56e54:
    # Line 2376
    sltiu	$at,$a3,3504
    bnez	$at,.L0da57148
    sltiu	$v0,$a3,3505
    bnez	$v0,.L0da5684c
    li	$v1,3505
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56850
    # Line 2514
    li	$a2,2
.L0da56e78:
    # Line 2376
    li	$a1,2832
    bne	$a3,$a1,.L0da569c4
    sd	$ra,16($sp)
    # Line 2437
    move	$a0,$s0
    # Line 2436
    lw	$a2,1696($s0)
    # Line 2437
    # lw $t9, -31788($gp) # &__glExpEnablePointSmooth
    # Line 2436
    li	$a3,-1025
    and	$a2,$a2,$a3
    # Line 2437
    jal	__glExpEnablePointSmooth
    # Line 2436
    sw	$a2,1696($s0)
    # Line 2438
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56eac:
    # Line 2376
    sltiu	$at,$a3,3512
    bnez	$at,.L0da57164
    sltiu	$v0,$a3,3513
    beqz	$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56850
    # Line 2514
    li	$a2,2
.L0da56ec8:
    # Line 2376
    sltiu	$v1,$a3,16384
    bnez	$v1,.L0da57178
    sltiu	$a1,$a3,16385
    bnez	$a1,.L0da56948
    li	$at,16385
    bne	$a3,$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56948
    sd	$ra,16($sp)
.L0da56eec:
    # Line 2376
    li	$a0,0x8011
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da57194
    sltu	$v1,$a0,$a3
    beqz	$v1,.L0da574dc
    li	$a1,0x8012
    bne	$a3,$a1,.L0da569c4
    # Line 2566
    li	$a2,2
    # Line 2565
    lw	$v0,1696($s0)
    lui	$v1,0x800
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s0)
    # Line 2566
    sw	$a2,__glBeginMode
    lw	$at,11764($s0)
    ori	$at,$at,0x10
    # Line 2567
    b	.L0da5686c
    # Line 2566
    sw	$at,11764($s0)
.L0da56f34:
    # Line 2376
    li	$a1,2884
    bne	$a3,$a1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2389
    lw	$a2,1696($s0)
    andi	$at,$a2,0x1000
    bnez	$at,.L0da573cc
    # Line 2391
    li	$a3,2
    ld	$gp,0($sp)
    # Line 2389
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da56f60:
    # Line 2376
    li	$v0,2960
    bne	$a3,$v0,.L0da569c4
    sd	$ra,16($sp)
    # Line 2457
    move	$a0,$s0
    # lw $t9, -31528($gp) # &__glExpEnableStencilTest
    # Line 2456
    lw	$v1,1696($s0)
    li	$a1,0x8000
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2457
    jal	__glExpEnableStencilTest
    # Line 2456
    sw	$v1,1696($s0)
    # Line 2458
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da56f98:
    # Line 2376
    sltiu	$at,$a3,12288
    bnez	$at,.L0da57268
    sltiu	$v0,$a3,12289
    beqz	$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da569f8
    sd	$ra,16($sp)
.L0da56fb4:
    # Line 2376
    li	$a0,0x8078
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da572b0
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da57620
    li	$at,0x8079
    bne	$a3,$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2554
    li	$a1,-17
    # Line 2553
    lui	$v1,0x800
    lw	$v0,4884($s0)
    # Line 2554
    lw	$a0,4888($s0)
    # Line 2553
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2554
    and	$a0,$a0,$a1
    sw	$a0,4888($s0)
    # Line 2553
    sw	$v0,4884($s0)
    # Line 2555
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57008:
    # Line 2443
    lw	$a4,1696($s0)
    # Line 2444
    li	$a3,2
    # Line 2443
    li	$a5,-8193
    and	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 2444
    sw	$a3,__glBeginMode
    # Line 2445
    move	$a0,$s0
    # Line 2444
    lw	$a2,11764($s0)
    # Line 2445
    # lw $t9, -32032($gp) # &__glExpEnablePolygonStipple
    sd	$ra,16($sp)
    # Line 2444
    ori	$a2,$a2,0x4
    # Line 2445
    jal	__glExpEnablePolygonStipple
    # Line 2444
    sw	$a2,11764($s0)
    # Line 2446
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57050:
    # Line 2378
    lw	$at,1696($s0)
    # Line 2379
    li	$a2,2
    # Line 2378
    li	$v0,-2
    and	$at,$at,$v0
    # Line 2379
    b	.L0da5686c
    # Line 2378
    sw	$at,1696($s0)
.L0da57068:
    # Line 2376
    li	$v1,3057
    bne	$a3,$v1,.L0da569c4
    sd	$ra,16($sp)
    # Line 2425
    move	$a0,$s0
    # Line 2424
    lw	$a1,1696($s0)
    # Line 2425
    # lw $t9, -31796($gp) # &__glExpEnableLogicOp
    # Line 2424
    li	$a2,-5
    and	$a1,$a1,$a2
    # Line 2425
    jal	__glExpEnableLogicOp
    # Line 2424
    sw	$a1,1696($s0)
    # Line 2426
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da5709c:
    # Line 2382
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 2381
    lw	$a3,1696($s0)
    # Line 2382
    # lw $t9, -31804($gp) # &__glExpEnableBlendFunc
    # Line 2381
    li	$a4,-3
    and	$a3,$a3,$a4
    # Line 2382
    jal	__glExpEnableBlendFunc
    # Line 2381
    sw	$a3,1696($s0)
    # Line 2383
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da570c8:
    sd	$ra,16($sp)
    # Line 2448
    lw	$v0,1696($s0)
    lbu	$at,31565($s0)
    li	$v1,-16385
    and	$v0,$v0,$v1
    beqz	$at,.L0da57654
    sw	$v0,1696($s0)
    # Line 2452
    lw	$t9,11924($s0)
.L0da570e8:
    jalr	$t9
    move	$a0,$s0
    # Line 2453
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2454
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da57108:
    # Line 2376
    li	$a1,3170
    bne	$a3,$a1,.L0da569c4
    # Line 2476
    li	$a2,2
    # Line 2475
    lw	$at,1696($s0)
    lui	$v0,0x10
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2476
    b	.L0da5686c
    # Line 2475
    sw	$at,1696($s0)
.L0da5712c:
    # Line 2376
    sltiu	$v1,$a3,3475
    bnez	$v1,.L0da5740c
    sltiu	$a1,$a3,3476
    beqz	$a1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56a94
    # Line 2505
    li	$a2,2
.L0da57148:
    # Line 2376
    sltiu	$at,$a3,3480
    bnez	$at,.L0da57420
    sltiu	$v0,$a3,3481
    beqz	$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56a94
    # Line 2505
    li	$a2,2
.L0da57164:
    # Line 2376
    li	$v1,3511
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56850
    # Line 2514
    li	$a2,2
.L0da57178:
    # Line 2376
    sltiu	$a1,$a3,12293
    bnez	$a1,.L0da574a0
    sltiu	$at,$a3,12294
    beqz	$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da569f8
    sd	$ra,16($sp)
.L0da57194:
    # Line 2376
    li	$a0,0x8010
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0da574c8
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0da569c4
    # Line 2558
    li	$a2,2
    # Line 2557
    lw	$at,1696($s0)
    lui	$v0,0x200
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2558
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2559
    b	.L0da5686c
    # Line 2558
    sw	$a1,11764($s0)
.L0da571d4:
    # Line 2467
    li	$a2,2
    # Line 2466
    lw	$v1,1696($s0)
    lui	$a1,0x80
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 2467
    b	.L0da5686c
    # Line 2466
    sw	$v1,1696($s0)
.L0da571f0:
    ld	$gp,0($sp)
    # Line 2538
    li	$a0,-2
    # Line 2537
    lw	$at,4884($s0)
    # Line 2538
    lw	$v1,4888($s0)
    # Line 2537
    li	$v0,-3841
    and	$at,$at,$v0
    # Line 2538
    and	$v1,$v1,$a0
    sw	$v1,4888($s0)
    # Line 2537
    sw	$at,4884($s0)
    # Line 2539
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57220:
    # Line 2461
    li	$a2,2
    # Line 2460
    lw	$a1,1696($s0)
    lui	$at,0x1
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 2461
    b	.L0da5686c
    # Line 2460
    sw	$a1,1696($s0)
.L0da5723c:
    # Line 2570
    li	$a2,2
    # Line 2569
    lw	$v1,1696($s0)
    lui	$a1,0x1000
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 2570
    sw	$a2,__glBeginMode
    lw	$v0,11764($s0)
    ori	$v0,$v0,0x10
    # Line 2571
    b	.L0da5686c
    # Line 2570
    sw	$v0,11764($s0)
.L0da57268:
    # Line 2376
    li	$at,10754
    bne	$a3,$at,.L0da569c4
    sd	$ra,16($sp)
    # Line 2528
    lw	$a0,1700($s0)
    # Line 2529
    li	$v1,2
    # Line 2528
    li	$a1,-1025
    and	$a0,$a0,$a1
    sw	$a0,1700($s0)
    # Line 2529
    sw	$v1,__glBeginMode
    lw	$v0,11764($s0)
    # Line 2530
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    move	$a0,$s0
    # Line 2529
    ori	$v0,$v0,0x4
    # Line 2530
    jal	__glExpPassPolygonOffset
    # Line 2529
    sw	$v0,11764($s0)
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da572b0:
    # Line 2376
    li	$a0,0x8077
    sltu	$at,$a3,$a0
    bnez	$at,.L0da5753c
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2546
    li	$at,-9
    # Line 2545
    lui	$a0,0xfff
    lw	$v1,4884($s0)
    # Line 2546
    lw	$a1,4888($s0)
    # Line 2545
    ori	$a0,$a0,0xffff
    and	$v1,$v1,$a0
    # Line 2546
    and	$a1,$a1,$at
    sw	$a1,4888($s0)
    # Line 2545
    sw	$v1,4884($s0)
    # Line 2547
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da572fc:
    # Line 2419
    lw	$a0,1696($s0)
    # Line 2420
    li	$v1,2
    # Line 2419
    li	$a1,-257
    and	$a0,$a0,$a1
    sw	$a0,1696($s0)
    # Line 2420
    sw	$v1,__glBeginMode
    sd	$ra,16($sp)
    lw	$v0,11764($s0)
    # Line 2421
    # lw $t9, -32216($gp) # &__glExpEnableLineStipple
    move	$a0,$s0
    # Line 2420
    ori	$v0,$v0,0x2
    # Line 2421
    jal	__glExpEnableLineStipple
    # Line 2420
    sw	$v0,11764($s0)
    # Line 2422
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57344:
    # Line 2522
    lw	$a4,1700($s0)
    # Line 2523
    li	$a3,2
    # Line 2522
    li	$a5,-513
    and	$a4,$a4,$a5
    sw	$a4,1700($s0)
    # Line 2523
    sw	$a3,__glBeginMode
    # Line 2524
    move	$a0,$s0
    # Line 2523
    lw	$a2,11764($s0)
    # Line 2524
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    sd	$ra,16($sp)
    # Line 2523
    ori	$a2,$a2,0x4
    # Line 2524
    jal	__glExpPassPolygonOffset
    # Line 2523
    sw	$a2,11764($s0)
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da57384:
    # Line 2581
    li	$a2,2
    # Line 2580
    lw	$at,1696($s0)
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 2581
    b	.L0da5686c
    # Line 2580
    sw	$at,1696($s0)
.L0da573a0:
    # Line 2386
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 2385
    lw	$v1,1696($s0)
    # Line 2386
    # lw $t9, -32252($gp) # &__glExpValidateColorMaterial
    # Line 2385
    li	$a1,-129
    and	$v1,$v1,$a1
    # Line 2386
    bal __glExpValidateColorMaterial
    # Line 2385
    sw	$v1,1696($s0)
    # Line 2387
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da573cc:
    # Line 2390
    li	$a4,-4097
    and	$a4,$a2,$a4
    sw	$a4,1696($s0)
    # Line 2391
    sw	$a3,__glBeginMode
    # Line 2392
    move	$a0,$s0
    # Line 2391
    lw	$a2,11764($s0)
    # Line 2392
    # lw $t9, -32048($gp) # &__glExpEnableCullFace
    sd	$ra,16($sp)
    # Line 2391
    ori	$a2,$a2,0x4
    # Line 2392
    jal	__glExpEnableCullFace
    # Line 2391
    sw	$a2,11764($s0)
    # Line 2393
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5740c:
    # Line 2376
    li	$at,3474
    bne	$a3,$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56a94
    # Line 2505
    li	$a2,2
.L0da57420:
    # Line 2376
    li	$v0,3479
    bne	$a3,$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56a94
    # Line 2505
    li	$a2,2
.L0da57434:
    # Line 2376
    li	$v1,3507
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56850
    # Line 2514
    li	$a2,2
.L0da57448:
    # Line 2376
    li	$a0,0x8037
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0da57580
    sltu	$at,$a0,$a3
    bnez	$at,.L0da569c4
    sd	$ra,16($sp)
    # Line 2517
    li	$v1,2
    # Line 2516
    lw	$a0,1696($s0)
    lui	$a1,0x100
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    sw	$a0,1696($s0)
    # Line 2517
    sw	$v1,__glBeginMode
    lw	$v0,11764($s0)
    # Line 2518
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    move	$a0,$s0
    # Line 2517
    ori	$v0,$v0,0x4
    # Line 2518
    jal	__glExpPassPolygonOffset
    # Line 2517
    sw	$v0,11764($s0)
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da574a0:
    # Line 2376
    li	$at,12292
    bne	$a3,$at,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da569f8
    sd	$ra,16($sp)
.L0da574b4:
    # Line 2376
    li	$v0,16387
    bne	$a3,$v0,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56948
    sd	$ra,16($sp)
.L0da574c8:
    # Line 2376
    li	$v1,16391
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0da56948
    sd	$ra,16($sp)
.L0da574dc:
    # Line 2562
    li	$a2,2
    # Line 2561
    lw	$at,1696($s0)
    lui	$v0,0x400
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2562
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2563
    b	.L0da5686c
    # Line 2562
    sw	$a1,11764($s0)
.L0da57508:
    # Line 2376
    li	$v1,0x80d0
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2583
    lw	$at,1700($s0)
    # Line 2584
    li	$a2,2
    # Line 2583
    li	$v0,-2
    and	$at,$at,$v0
    sw	$at,1700($s0)
    # Line 2584
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2585
    b	.L0da5686c
    # Line 2584
    sw	$a1,11764($s0)
.L0da5753c:
    # Line 2376
    li	$v1,0x8076
    bne	$a3,$v1,.L0da569c8
    # Line 2596
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2542
    li	$v0,-3
    lw	$at,4888($s0)
    # Line 2541
    lw	$a0,4884($s0)
    lui	$a1,0xf
    ori	$a1,$a1,0xf000
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 2542
    and	$at,$at,$v0
    sw	$at,4888($s0)
    # Line 2541
    sw	$a0,4884($s0)
    # Line 2543
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57580:
    # Line 2376
    li	$v1,0x802e
    bne	$a3,$v1,.L0da569c4
    # Line 2574
    li	$a2,2
    # Line 2573
    lw	$at,1696($s0)
    lui	$v0,0x2000
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 2574
    sw	$a2,__glBeginMode
    lw	$a1,11764($s0)
    ori	$a1,$a1,0x10
    # Line 2575
    b	.L0da5686c
    # Line 2574
    sw	$a1,11764($s0)
.L0da575b4:
    # Line 2405
    move	$a0,$s0
    # Line 2404
    lw	$v1,1696($s0)
    # Line 2405
    # lw $t9, -32304($gp) # &__glExpEnableFog
    # Line 2404
    li	$a1,-33
    and	$v1,$v1,$a1
    # Line 2405
    bal __glExpEnableFog
    # Line 2404
    sw	$v1,1696($s0)
    # Line 2406
    li	$a2,2
    b	.L0da5686c
    ld	$ra,16($sp)
.L0da575dc:
    # Line 2578
    li	$a2,2
    # Line 2577
    lw	$at,1696($s0)
    lui	$v0,0x4000
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 2578
    b	.L0da5686c
    # Line 2577
    sw	$at,1696($s0)
.L0da575f8:
    # Line 2587
    lw	$a1,1700($s0)
    # Line 2588
    li	$a2,2
    # Line 2587
    li	$at,-3
    and	$a1,$a1,$at
    sw	$a1,1700($s0)
    # Line 2588
    sw	$a2,__glBeginMode
    lw	$v1,11764($s0)
    ori	$v1,$v1,0x10
    # Line 2589
    b	.L0da5686c
    # Line 2588
    sw	$v1,11764($s0)
.L0da57620:
    ld	$gp,0($sp)
    # Line 2550
    li	$a1,-5
    # Line 2549
    lui	$v1,0x7f0
    lw	$v0,4884($s0)
    # Line 2550
    lw	$a0,4888($s0)
    # Line 2549
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 2550
    and	$a0,$a0,$a1
    sw	$a0,4888($s0)
    # Line 2549
    sw	$v0,4884($s0)
    # Line 2551
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da57654:
    # Line 2450
    # lw $t9, -25988($gp) # &__glReadjustZCounts
    jal	__glReadjustZCounts
    move	$a0,$s0
    b	.L0da570e8
    # Line 2452
    lw	$t9,11924($s0)
.end __glexpim_Disable

# Function: __glexpim_PolygonOffsetEXT
# Declared: Line 2803 (Source lines: 2804-2812)
# Address: 0x0da57668 - 0x0da576e0 (Size: 120 bytes, Frame: 32)
.globl __glexpim_PolygonOffsetEXT
.ent __glexpim_PolygonOffsetEXT
__glexpim_PolygonOffsetEXT:
    # Line 2805
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 2804
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 2805
    lw	$at,__glBeginMode
    # Line 2804
    lui	$v1,0x1a
    addiu	$v1,$v1,512
    # Line 2805
    beq	$at,$v0,.L0da576c4
    # Line 2804
    nop
    # Line 2808
    swc1	$f13,480($a0)
    # Line 2807
    swc1	$f12,476($a0)
    # Line 2809
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a1,11764($a0)
    # Line 2811
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    # Line 2809
    ori	$a1,$a1,0x4
    # Line 2811
    jal	__glExpPassPolygonOffset
    # Line 2809
    sw	$a1,11764($a0)
    # Line 2812
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da576c4:
    # Line 2805
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_PolygonOffsetEXT

# Function: __glexpim_PolygonOffset
# Declared: Line 2814 (Source lines: 2815-2824)
# Address: 0x0da576e0 - 0x0da57760 (Size: 128 bytes, Frame: 32)
.globl __glexpim_PolygonOffset
.ent __glexpim_PolygonOffset
__glexpim_PolygonOffset:
    # Line 2816
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 2815
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    # Line 2816
    lw	$at,__glBeginMode
    # Line 2815
    lui	$v1,0x1a
    addiu	$v1,$v1,392
    # Line 2816
    beq	$at,$v0,.L0da57744
    # Line 2815
    nop
    # Line 2819
    lwc1	$f0,484($a0)
    mul.s	$f0,$f0,$f13
    # Line 2818
    swc1	$f12,476($a0)
    # Line 2821
    li	$a2,2
    # Line 2819
    swc1	$f0,480($a0)
    # Line 2821
    sw	$a2,__glBeginMode
    lw	$a1,11764($a0)
    # Line 2823
    # lw $t9, -32024($gp) # &__glExpPassPolygonOffset
    # Line 2821
    ori	$a1,$a1,0x4
    # Line 2823
    jal	__glExpPassPolygonOffset
    # Line 2821
    sw	$a1,11764($a0)
    # Line 2824
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da57744:
    # Line 2816
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_PolygonOffset

.late_rodata
jtbl_0dbeb000:
    .word .L0da51bb8
    .word .L0da51c30
    .word .L0da51c54
    .word .L0da51c78
    .word .L0da51cbc
    .word .L0da51cfc
    .word .L0da51d30
    .word .L0da51d88
    .word .L0da51dac
    .word .L0da51bdc
jtbl_0dbeb028:
    .word .L0da51f44
    .word .L0da51fc0
    .word .L0da51fe4
    .word .L0da52008
    .word .L0da5207c
    .word .L0da520dc
    .word .L0da52108
    .word .L0da5212c
    .word .L0da52150
    .word .L0da51f68

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_41800000:
    .word 0x41800000
_lit_42b40000:
    .word 0x42b40000
_lit_43000000:
    .word 0x43000000
_lit_43340000:
    .word 0x43340000
_lit_bf800000:
    .word 0xbf800000

