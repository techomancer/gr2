# Source: ../soft/so_get.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_get.c
# Total Functions: 33

.text

# Function: __glim_GetTexEnvfv
# Declared: Line 36 (Source lines: 38-56)
# Address: 0x0daae624 - 0x0daae710 (Size: 236 bytes, Frame: 48)
.globl __glim_GetTexEnvfv
.ent __glim_GetTexEnvfv
__glim_GetTexEnvfv:
    # Line 39
    lw	$a5,__glCurrentContext
    # Line 38
    move	$a4,$a2
    # Line 39
    li	$v0,1
    # Line 38
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    # Line 39
    lw	$at,__glBeginMode
    # Line 38
    lui	$v1,0x15
    addiu	$v1,$v1,-28092
    # Line 39
    beq	$at,$v0,.L0daae6f0
    # Line 38
    nop
    # Line 39
    li	$a3,8960
    beq	$a0,$a3,.L0daae678
    # Line 45
    li	$at,8704
    # Line 42
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 43
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae678:
    # Line 45
    beq	$a1,$at,.L0daae6cc
    li	$v0,8705
    beq	$a1,$v0,.L0daae6a4
    sd	$ra,8($sp)
    # Line 53
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 54
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae6a4:
    # Line 50
    move	$a0,$a5
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    lw	$a2,2376($a5)
    move	$a1,$a4
    jal	__glUnScaleColorf
    addiu	$a2,$a2,4
    ld	$ra,8($sp)
.L0daae6c0:
    # ld	gp,0(sp)
    # Line 56
    jr	$ra
    addiu	$sp,$sp,48
.L0daae6cc:
    # Line 47
    lw	$a3,2376($a5)
    lw	$a3,0($a3)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 48
    b	.L0daae6c0
    # Line 47
    swc1	$f0,0($a4)
.L0daae6f0:
    # Line 39
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexEnvfv

# Function: __glim_GetTexEnviv
# Declared: Line 58 (Source lines: 60-78)
# Address: 0x0daae710 - 0x0daae7e8 (Size: 216 bytes, Frame: 48)
.globl __glim_GetTexEnviv
.ent __glim_GetTexEnviv
__glim_GetTexEnviv:
    # Line 61
    lw	$a5,__glCurrentContext
    # Line 60
    move	$a4,$a2
    # Line 61
    li	$v0,1
    # Line 60
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    # Line 61
    lw	$at,__glBeginMode
    # Line 60
    lui	$v1,0x15
    addiu	$v1,$v1,-28328
    # Line 61
    beq	$at,$v0,.L0daae7c8
    # Line 60
    nop
    # Line 61
    li	$a3,8960
    beq	$a0,$a3,.L0daae764
    # Line 67
    li	$at,8704
    # Line 64
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 65
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae764:
    # Line 67
    beq	$a1,$at,.L0daae7b8
    li	$v0,8705
    beq	$a1,$v0,.L0daae790
    sd	$ra,8($sp)
    # Line 75
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 76
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae790:
    # Line 72
    move	$a0,$a5
    # lw $t9, -28364($gp) # &__glUnScaleColori
    lw	$a2,2376($a5)
    move	$a1,$a4
    jal	__glUnScaleColori
    addiu	$a2,$a2,4
    ld	$ra,8($sp)
.L0daae7ac:
    # ld	gp,0(sp)
    # Line 78
    jr	$ra
    addiu	$sp,$sp,48
.L0daae7b8:
    # Line 69
    lw	$a3,2376($a5)
    lw	$a3,0($a3)
    # Line 70
    b	.L0daae7ac
    # Line 69
    sw	$a3,0($a4)
.L0daae7c8:
    # Line 61
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexEnviv

# Function: __glim_GetTexGenfv
# Declared: Line 82 (Source lines: 84-125)
# Address: 0x0daae7e8 - 0x0daae930 (Size: 328 bytes, Frame: 48)
.globl __glim_GetTexGenfv
.ent __glim_GetTexGenfv
__glim_GetTexGenfv:
    # Line 86
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 84
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 86
    lw	$at,__glBeginMode
    # Line 84
    lui	$v1,0x15
    addiu	$v1,$v1,-28544
    # Line 86
    beq	$at,$v0,.L0daae910
    # Line 84
    addu	$gp,$t9,$v1
    # Line 88
    li	$a3,8192
    beq	$a0,$a3,.L0daae888
    li	$at,8193
    beq	$a0,$at,.L0daae890
    li	$v0,8194
    beq	$a0,$v0,.L0daae898
    li	$v1,8195
    beq	$a0,$v1,.L0daae84c
    # Line 102
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 103
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae84c:
    # Line 99
    addiu	$a0,$a4,2248
.L0daae850:
    # Line 105
    li	$a3,9472
    beq	$a1,$a3,.L0daae8cc
    li	$at,9473
    beq	$a1,$at,.L0daae8ec
    li	$v0,9474
    beq	$a1,$v0,.L0daae8a0
    # Line 122
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 123
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae888:
    # Line 91
    b	.L0daae850
    # Line 90
    addiu	$a0,$a4,1876
.L0daae890:
    # Line 94
    b	.L0daae850
    # Line 93
    addiu	$a0,$a4,2000
.L0daae898:
    # Line 97
    b	.L0daae850
    # Line 96
    addiu	$a0,$a4,2124
.L0daae8a0:
    # Line 116
    lwc1	$f3,4($a0)
    swc1	$f3,0($a2)
    # Line 117
    lwc1	$f2,8($a0)
    swc1	$f2,4($a2)
    # Line 118
    lwc1	$f1,12($a0)
    swc1	$f1,8($a2)
    # Line 119
    lwc1	$f0,16($a0)
    swc1	$f0,12($a2)
.L0daae8c0:
    ld	$gp,0($sp)
    # Line 125
    jr	$ra
    addiu	$sp,$sp,48
.L0daae8cc:
    # Line 107
    lw	$v1,0($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 108
    b	.L0daae8c0
    # Line 107
    swc1	$f0,0($a2)
.L0daae8ec:
    # Line 110
    lwc1	$f0,20($a0)
    swc1	$f0,0($a2)
    # Line 111
    lwc1	$f3,24($a0)
    swc1	$f3,4($a2)
    # Line 112
    lwc1	$f2,28($a0)
    swc1	$f2,8($a2)
    # Line 113
    lwc1	$f1,32($a0)
    # Line 114
    b	.L0daae8c0
    # Line 113
    swc1	$f1,12($a2)
.L0daae910:
    # Line 86
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexGenfv

# Function: __glim_GetTexGendv
# Declared: Line 127 (Source lines: 129-170)
# Address: 0x0daae930 - 0x0daaea98 (Size: 360 bytes, Frame: 48)
.globl __glim_GetTexGendv
.ent __glim_GetTexGendv
__glim_GetTexGendv:
    # Line 131
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 129
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 131
    lw	$at,__glBeginMode
    # Line 129
    lui	$v1,0x15
    addiu	$v1,$v1,-28872
    # Line 131
    beq	$at,$v0,.L0daaea78
    # Line 129
    addu	$gp,$t9,$v1
    # Line 133
    li	$a3,8192
    beq	$a0,$a3,.L0daae9d0
    li	$at,8193
    beq	$a0,$at,.L0daae9d8
    li	$v0,8194
    beq	$a0,$v0,.L0daae9e0
    li	$v1,8195
    beq	$a0,$v1,.L0daae994
    # Line 147
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 148
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae994:
    # Line 144
    addiu	$a0,$a4,2248
.L0daae998:
    # Line 150
    li	$a3,9472
    beq	$a1,$a3,.L0daaea24
    li	$at,9473
    beq	$a1,$at,.L0daaea44
    li	$v0,9474
    beq	$a1,$v0,.L0daae9e8
    # Line 167
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 168
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae9d0:
    # Line 136
    b	.L0daae998
    # Line 135
    addiu	$a0,$a4,1876
.L0daae9d8:
    # Line 139
    b	.L0daae998
    # Line 138
    addiu	$a0,$a4,2000
.L0daae9e0:
    # Line 142
    b	.L0daae998
    # Line 141
    addiu	$a0,$a4,2124
.L0daae9e8:
    # Line 161
    lwc1	$f3,4($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a2)
    # Line 162
    lwc1	$f2,8($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a2)
    # Line 163
    lwc1	$f1,12($a0)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a2)
    # Line 164
    lwc1	$f0,16($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,24($a2)
.L0daaea18:
    ld	$gp,0($sp)
    # Line 170
    jr	$ra
    addiu	$sp,$sp,48
.L0daaea24:
    # Line 152
    lw	$v1,0($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.d.l	$f0,$f0
    # Line 153
    b	.L0daaea18
    # Line 152
    sdc1	$f0,0($a2)
.L0daaea44:
    # Line 155
    lwc1	$f0,20($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a2)
    # Line 156
    lwc1	$f3,24($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    # Line 157
    lwc1	$f2,28($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a2)
    # Line 158
    lwc1	$f1,32($a0)
    cvt.d.s	$f1,$f1
    # Line 159
    b	.L0daaea18
    # Line 158
    sdc1	$f1,24($a2)
.L0daaea78:
    # Line 131
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexGendv

# Function: __glim_GetTexGeniv
# Declared: Line 172 (Source lines: 174-211)
# Address: 0x0daaea98 - 0x0daaebe0 (Size: 328 bytes, Frame: 48)
.globl __glim_GetTexGeniv
.ent __glim_GetTexGeniv
__glim_GetTexGeniv:
    # Line 174
    move	$a4,$a2
    # Line 176
    lw	$a7,__glCurrentContext
    li	$v0,1
    # Line 174
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 176
    lw	$at,__glBeginMode
    # Line 174
    lui	$v1,0x15
    addiu	$v1,$v1,-29232
    # Line 176
    beq	$at,$v0,.L0daaeb98
    # Line 174
    addu	$gp,$t9,$v1
    # Line 178
    li	$a3,8192
    beq	$a0,$a3,.L0daaeb3c
    li	$at,8193
    beq	$a0,$at,.L0daaeb48
    li	$v0,8194
    beq	$a0,$v0,.L0daaeb80
    li	$v1,8195
    beq	$a0,$v1,.L0daaeb00
    # Line 192
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 193
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaeb00:
    # Line 189
    addiu	$t0,$a7,2248
    # Line 195
    li	$a3,9472
.L0daaeb08:
    beq	$a1,$a3,.L0daaeb8c
    li	$at,9473
    beq	$a1,$at,.L0daaebb8
    li	$v0,9474
    beq	$a1,$v0,.L0daaeb54
    sd	$ra,8($sp)
    # Line 208
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 209
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaeb3c:
    # Line 180
    addiu	$t0,$a7,1876
    # Line 181
    b	.L0daaeb08
    # Line 195
    li	$a3,9472
.L0daaeb48:
    # Line 183
    addiu	$t0,$a7,2000
    # Line 184
    b	.L0daaeb08
    # Line 195
    li	$a3,9472
.L0daaeb54:
    # Line 204
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,4
    ld	$ra,8($sp)
.L0daaeb74:
    ld	$gp,0($sp)
    # Line 211
    jr	$ra
    addiu	$sp,$sp,48
.L0daaeb80:
    # Line 186
    addiu	$t0,$a7,2124
    # Line 187
    b	.L0daaeb08
    # Line 195
    li	$a3,9472
.L0daaeb8c:
    # Line 197
    lw	$v1,0($t0)
    # Line 198
    b	.L0daaeb74
    # Line 197
    sw	$v1,0($a4)
.L0daaeb98:
    # Line 176
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaebb8:
    # Line 200
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,4
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a3,3
    sd	$ra,8($sp)
    bal __glConvertResult
    addiu	$a2,$t0,20
    b	.L0daaeb74
    ld	$ra,8($sp)
.end __glim_GetTexGeniv

# Function: __glim_GetTexParameterfv
# Declared: Line 215 (Source lines: 217-286)
# Address: 0x0daaebe0 - 0x0daaef2c (Size: 844 bytes, Frame: 208)
.globl __glim_GetTexParameterfv
.ent __glim_GetTexParameterfv
__glim_GetTexParameterfv:
    # Line 219
    li	$v0,1
    # Line 217
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 219
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$s2,8($sp)
    # Line 217
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 219
    lw	$at,__glBeginMode
    # Line 217
    lui	$v1,0x15
    addiu	$v1,$v1,-29560
    # Line 219
    beq	$at,$v0,.L0daaee34
    # Line 217
    addu	$gp,$t9,$v1
    # Line 221
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    move	$a1,$s1
    beqz	$v0,.L0daaee5c
    ld	$ra,40($sp)
    # Line 225
    li	$a0,0x8067
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0daaec94
    # Line 228
    sltu	$a4,$a0,$s2
    beqz	$a4,.L0daaedac
    li	$a0,0x8179
    sltu	$at,$s2,$a0
    bnez	$at,.L0daaed58
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0daaee0c
    li	$a0,0x8191
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0daaeed8
    sltu	$a4,$a0,$s2
    bnez	$a4,.L0daaecbc
    # Line 283
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 280
    lbu	$v1,212($v0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    # Line 281
    b	.L0daaed40
    # Line 280
    swc1	$f0,0($at)
.L0daaec94:
    # Line 228
    sltiu	$a3,$s2,10242
    bnez	$a3,.L0daaece0
    sltiu	$a4,$s2,10243
    bnez	$a4,.L0daaed20
    li	$a0,0x8066
    sltu	$at,$s2,$a0
    bnez	$at,.L0daaee84
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0daaef08
.L0daaecb8:
    # Line 283
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daaecbc:
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 284
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaece0:
    # Line 228
    sltiu	$a3,$s2,10240
    bnez	$a3,.L0daaed7c
    sltiu	$a4,$s2,10241
    bnez	$a4,.L0daaeeb4
    li	$at,10241
    bne	$s2,$at,.L0daaecbc
    # Line 283
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 251
    lw	$a3,12($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$v1,0($sp)
    # Line 252
    b	.L0daaed40
    # Line 251
    swc1	$f1,0($v1)
.L0daaed20:
    # Line 242
    lw	$at,0($v0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$a4,0($sp)
    swc1	$f2,0($a4)
.L0daaed40:
    ld	$gp,24($sp)
    # Line 286
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaed58:
    # Line 228
    li	$a0,0x8147
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0daaeddc
    sltu	$a3,$a0,$s2
    bnez	$a3,.L0daaecb8
    # Line 257
    ld	$a4,0($sp)
    lwc1	$f3,_lit_42040000
    # Line 258
    b	.L0daaed40
    # Line 257
    swc1	$f3,0($a4)
.L0daaed7c:
    # Line 228
    li	$at,4100
    bne	$s2,$at,.L0daaecb8
    # Line 260
    ld	$v1,0($sp)
    lwc1	$f3,152($v0)
    swc1	$f3,0($v1)
    # Line 261
    lwc1	$f2,156($v0)
    swc1	$f2,4($v1)
    # Line 262
    lwc1	$f1,160($v0)
    swc1	$f1,8($v1)
    # Line 263
    lwc1	$f0,164($v0)
    # Line 264
    b	.L0daaed40
    # Line 263
    swc1	$f0,12($v1)
.L0daaedac:
    # Line 275
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    move	$a1,$s1
    # Line 276
    lbu	$a4,12($v0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a3,0($sp)
    ld	$ra,40($sp)
    # Line 278
    b	.L0daaed40
    # Line 276
    swc1	$f0,0($a3)
.L0daaeddc:
    # Line 228
    li	$at,0x8072
    bne	$s2,$at,.L0daaecbc
    # Line 283
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 248
    lw	$a3,8($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$v1,0($sp)
    # Line 249
    b	.L0daaed40
    # Line 248
    swc1	$f1,0($v1)
.L0daaee0c:
    # Line 230
    ld	$a4,0($sp)
    lwc1	$f1,184($v0)
    swc1	$f1,0($a4)
    # Line 231
    lwc1	$f0,188($v0)
    swc1	$f0,4($a4)
    # Line 232
    lwc1	$f3,192($v0)
    swc1	$f3,8($a4)
    # Line 233
    lwc1	$f2,196($v0)
    # Line 234
    b	.L0daaed40
    # Line 233
    swc1	$f2,12($a4)
.L0daaee34:
    # Line 219
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaee5c:
    # Line 224
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 225
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaee84:
    # Line 228
    li	$at,10243
    bne	$s2,$at,.L0daaecbc
    # Line 283
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 245
    lw	$a3,4($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$v1,0($sp)
    # Line 246
    b	.L0daaed40
    # Line 245
    swc1	$f2,0($v1)
.L0daaeeb4:
    # Line 254
    lw	$at,16($v0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    ld	$a4,0($sp)
    # Line 255
    b	.L0daaed40
    # Line 254
    swc1	$f3,0($a4)
.L0daaeed8:
    # Line 228
    li	$v1,0x817a
    bne	$s2,$v1,.L0daaecb8
    # Line 236
    ld	$a3,0($sp)
    lwc1	$f3,168($v0)
    swc1	$f3,0($a3)
    # Line 237
    lwc1	$f2,172($v0)
    swc1	$f2,4($a3)
    # Line 238
    lwc1	$f1,176($v0)
    swc1	$f1,8($a3)
    # Line 239
    lwc1	$f0,180($v0)
    # Line 240
    b	.L0daaed40
    # Line 239
    swc1	$f0,12($a3)
.L0daaef08:
    # Line 268
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    move	$a1,$s1
    # Line 269
    ld	$a4,0($sp)
    lwc1	$f0,4($v0)
    ld	$ra,40($sp)
    # Line 271
    b	.L0daaed40
    # Line 269
    swc1	$f0,0($a4)
.end __glim_GetTexParameterfv

# Function: __glim_GetTexParameteriv
# Declared: Line 288 (Source lines: 290-347)
# Address: 0x0daaef2c - 0x0daaf248 (Size: 796 bytes, Frame: 224)
.globl __glim_GetTexParameteriv
.ent __glim_GetTexParameteriv
__glim_GetTexParameteriv:
    # Line 292
    li	$v0,1
    # Line 290
    addiu	$sp,$sp,-96
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 292
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$s2,8($sp)
    # Line 290
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 292
    lw	$at,__glBeginMode
    # Line 290
    lui	$v1,0x15
    addiu	$v1,$v1,-30404
    # Line 292
    beq	$at,$v0,.L0daaf114
    # Line 290
    addu	$gp,$t9,$v1
    # Line 294
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    move	$a1,$s1
    beqz	$v0,.L0daaf13c
    ld	$ra,40($sp)
    # Line 298
    li	$a0,0x8066
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0daaefc4
    # Line 301
    sltu	$a4,$a0,$s2
    beqz	$a4,.L0daaf090
    li	$a0,0x8147
    sltu	$at,$s2,$a0
    bnez	$at,.L0daaf038
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0daaf104
    li	$a3,0x8191
    bne	$s2,$a3,.L0daaf068
    # Line 341
    ld	$at,0($sp)
    lbu	$a4,212($v0)
    # Line 342
    b	.L0daaf020
    # Line 341
    sw	$a4,0($at)
.L0daaefc4:
    # Line 301
    sltiu	$v1,$s2,10241
    bnez	$v1,.L0daaeff4
    sltiu	$a3,$s2,10242
    bnez	$a3,.L0daaf014
    sltiu	$a4,$s2,10243
    bnez	$a4,.L0daaf164
    sltiu	$at,$s2,10244
    beqz	$at,.L0daaf068
    # Line 306
    ld	$a3,0($sp)
    lw	$v1,4($v0)
    # Line 307
    b	.L0daaf020
    # Line 306
    sw	$v1,0($a3)
.L0daaeff4:
    # Line 301
    sltiu	$a4,$s2,10240
    bnez	$a4,.L0daaf05c
    sltiu	$at,$s2,10241
    beqz	$at,.L0daaf068
    # Line 315
    ld	$a3,0($sp)
    lw	$v1,16($v0)
    # Line 316
    b	.L0daaf020
    # Line 315
    sw	$v1,0($a3)
.L0daaf014:
    # Line 312
    ld	$at,0($sp)
    lw	$a4,12($v0)
    sw	$a4,0($at)
.L0daaf020:
    ld	$gp,24($sp)
    # Line 347
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daaf038:
    # Line 301
    li	$a0,0x8072
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0daaf0d4
    sltu	$a3,$a0,$s2
    bnez	$a3,.L0daaf068
    # Line 309
    ld	$at,0($sp)
    lw	$a4,8($v0)
    # Line 310
    b	.L0daaf020
    # Line 309
    sw	$a4,0($at)
.L0daaf05c:
    # Line 301
    li	$v1,4100
    beq	$s2,$v1,.L0daaf17c
    sd	$v0,48($sp)
.L0daaf068:
    # Line 344
    # lw $t9, -29008($gp) # &__glSetError
.L0daaf06c:
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 345
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daaf090:
    # Line 329
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    move	$a1,$s1
    # Line 330
    lwc1	$f14,3304($s0)
    lwc1	$f13,4($v0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$a4,0($sp)
    mfc1	$a3,$f0
    ld	$ra,40($sp)
    # Line 332
    b	.L0daaf020
    # Line 330
    sw	$a3,0($a4)
.L0daaf0d4:
    # Line 301
    li	$at,0x8067
    bne	$s2,$at,.L0daaf06c
    # Line 344
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 336
    # lw $t9, -27064($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    move	$a1,$s1
    # Line 337
    ld	$v1,0($sp)
    lbu	$v0,12($v0)
    ld	$ra,40($sp)
    # Line 339
    b	.L0daaf020
    # Line 337
    sw	$v0,0($v1)
.L0daaf104:
    # Line 318
    ld	$a4,0($sp)
    li	$a3,33
    # Line 319
    b	.L0daaf020
    # Line 318
    sw	$a3,0($a4)
.L0daaf114:
    # Line 292
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daaf13c:
    # Line 297
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 298
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daaf164:
    # Line 301
    li	$at,10242
    bne	$s2,$at,.L0daaf068
    # Line 303
    ld	$a3,0($sp)
    lw	$v1,0($v0)
    # Line 304
    b	.L0daaf020
    # Line 303
    sw	$v1,0($a3)
.L0daaf17c:
    ld	$s1,48($sp)
    # Line 321
    lwc1	$f14,3304($s0)
    lwc1	$f13,152($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a5,0($sp)
    mfc1	$a4,$f15
    nop
    sw	$a4,0($a5)
    # Line 322
    lwc1	$f14,3304($s0)
    lwc1	$f13,156($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a7,0($sp)
    mfc1	$a6,$f15
    nop
    sw	$a6,4($a7)
    # Line 323
    lwc1	$f14,3304($s0)
    lwc1	$f13,160($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t1,0($sp)
    mfc1	$t0,$f15
    nop
    sw	$t0,8($t1)
    # Line 324
    lwc1	$f14,3304($s0)
    lwc1	$f13,164($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,0($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 325
    b	.L0daaf020
    ld	$ra,40($sp)
.end __glim_GetTexParameteriv

# Function: __glim_GetTexLevelParameterfv
# Declared: Line 351 (Source lines: 353-416)
# Address: 0x0daaf248 - 0x0daaf5e4 (Size: 924 bytes, Frame: 208)
.globl __glim_GetTexLevelParameterfv
.ent __glim_GetTexLevelParameterfv
__glim_GetTexLevelParameterfv:
    # Line 356
    li	$v1,1
    # Line 353
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,8($sp)
    # Line 356
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 353
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 356
    lw	$at,__glBeginMode
    # Line 353
    lui	$a0,0x15
    addiu	$a0,$a0,-31200
    # Line 356
    beq	$at,$v1,.L0daaf4a8
    # Line 353
    addu	$gp,$t9,$a0
    # Line 358
    # lw $t9, -27068($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    move	$a1,$v0
    beqz	$v0,.L0daaf4f8
    ld	$ra,40($sp)
    # Line 364
    bltz	$s1,.L0daaf440
    # Line 365
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 364
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0daaf43c
    # Line 416
    ld	$s2,8($sp)
    # Line 368
    li	$a2,0x805d
    sltu	$a5,$s0,$a2
    lw	$a0,228($v0)
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    bnez	$a5,.L0daaf350
    addu	$a0,$a0,$a4
    # Line 370
    sltu	$a5,$a2,$s0
    beqz	$a5,.L0daaf394
    li	$v0,0x8060
    sltu	$at,$s0,$v0
    bnez	$at,.L0daaf408
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0daaf570
    li	$v0,0x8071
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0daaf5a4
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 382
    lw	$at,232($a1)
    slti	$at,$at,3
    beqz	$at,.L0daaf5cc
    lw	$v0,12($a0)
    # Line 383
    lw	$a4,56($a0)
    addu	$a4,$a4,$a4
    subu	$a4,$v0,$a4
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,0($sp)
    b	.L0daaf3ac
    swc1	$f0,0($v1)
.L0daaf350:
    # Line 370
    sltiu	$a5,$s0,4099
    bnez	$a5,.L0daaf3c0
    sltiu	$at,$s0,4100
    bnez	$at,.L0daaf48c
    li	$v0,0x805c
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0daaf520
    sltu	$a4,$v0,$s0
    bnez	$a4,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 395
    lw	$at,72($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a5,0($sp)
    # Line 396
    b	.L0daaf3ac
    # Line 395
    swc1	$f1,0($a5)
.L0daaf394:
    # Line 398
    ld	$v1,0($sp)
    lw	$a4,76($a0)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($v1)
.L0daaf3ac:
    # Line 416
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf3c0:
    # Line 370
    sltiu	$a5,$s0,4097
    bnez	$a5,.L0daaf464
    sltiu	$at,$s0,4098
    beqz	$at,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 375
    lw	$v0,232($a1)
    slti	$v0,$v0,2
    beqz	$v0,.L0daaf58c
    lw	$v0,8($a0)
    # Line 376
    lw	$a4,56($a0)
    addu	$a4,$a4,$a4
    subu	$a4,$v0,$a4
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$v1,0($sp)
    b	.L0daaf3ac
    swc1	$f3,0($v1)
.L0daaf408:
    # Line 370
    li	$v0,0x805f
    sltu	$a5,$s0,$v0
    bnez	$a5,.L0daaf548
    sltu	$at,$v0,$s0
    bnez	$at,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 404
    lw	$a4,84($a0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,0($sp)
    # Line 405
    b	.L0daaf3ac
    # Line 404
    swc1	$f0,0($v1)
.L0daaf43c:
    # Line 365
    # lw $t9, -29008($gp) # &__glSetError
.L0daaf440:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 366
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf464:
    # Line 370
    li	$a5,4096
    bne	$s0,$a5,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 372
    lw	$v1,4($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$at,0($sp)
    # Line 373
    b	.L0daaf3ac
    # Line 372
    swc1	$f1,0($at)
.L0daaf48c:
    # Line 389
    ld	$a4,0($sp)
    lw	$a5,60($a0)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 390
    b	.L0daaf3ac
    # Line 389
    swc1	$f2,0($a4)
.L0daaf4a8:
    # Line 356
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 413
    # lw $t9, -29008($gp) # &__glSetError
.L0daaf4d4:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 414
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf4f8:
    # Line 361
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 362
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf520:
    # Line 370
    li	$at,4101
    bne	$s0,$at,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 392
    lw	$a4,56($a0)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$v1,0($sp)
    # Line 393
    b	.L0daaf3ac
    # Line 392
    swc1	$f3,0($v1)
.L0daaf548:
    # Line 370
    li	$a5,0x805e
    bne	$s0,$a5,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 401
    lw	$v1,80($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    # Line 402
    b	.L0daaf3ac
    # Line 401
    swc1	$f0,0($at)
.L0daaf570:
    # Line 407
    lw	$a5,88($a0)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a4,0($sp)
    # Line 408
    b	.L0daaf3ac
    # Line 407
    swc1	$f1,0($a4)
.L0daaf58c:
    # Line 378
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$at,0($sp)
    b	.L0daaf3ac
    swc1	$f2,0($at)
.L0daaf5a4:
    # Line 370
    li	$v1,0x8061
    bne	$s0,$v1,.L0daaf4d4
    # Line 413
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 410
    lw	$a5,92($a0)
    mtc1	$a5,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,0($sp)
    # Line 411
    b	.L0daaf3ac
    # Line 410
    swc1	$f3,0($a4)
.L0daaf5cc:
    # Line 385
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    b	.L0daaf3ac
    swc1	$f0,0($at)
.end __glim_GetTexLevelParameterfv

# Function: __glim_GetTexLevelParameteriv
# Declared: Line 418 (Source lines: 420-483)
# Address: 0x0daaf5e4 - 0x0daaf8cc (Size: 744 bytes, Frame: 208)
.globl __glim_GetTexLevelParameteriv
.ent __glim_GetTexLevelParameteriv
__glim_GetTexLevelParameteriv:
    # Line 423
    li	$v1,1
    # Line 420
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,8($sp)
    # Line 423
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 420
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 423
    lw	$at,__glBeginMode
    # Line 420
    lui	$a0,0x15
    addiu	$a0,$a0,-32124
    # Line 423
    beq	$at,$v1,.L0daaf7e4
    # Line 420
    addu	$gp,$t9,$a0
    # Line 425
    # lw $t9, -27068($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    move	$a1,$v0
    beqz	$v0,.L0daaf834
    ld	$ra,40($sp)
    # Line 431
    bltz	$s1,.L0daaf798
    # Line 432
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 431
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0daaf794
    # Line 483
    ld	$s2,8($sp)
    # Line 435
    li	$a2,0x805d
    sltu	$a5,$s0,$a2
    lw	$a0,228($v0)
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    bnez	$a5,.L0daaf6e0
    addu	$a0,$a0,$a4
    # Line 437
    sltu	$a5,$a2,$s0
    beqz	$a5,.L0daaf714
    li	$v0,0x8060
    sltu	$at,$s0,$v0
    bnez	$at,.L0daaf770
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0daaf88c
    li	$v0,0x8071
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0daaf8a8
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0daaf810
    # Line 480
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 449
    lw	$at,232($a1)
    slti	$at,$at,3
    beqz	$at,.L0daaf8c0
    lw	$v0,12($a0)
    # Line 450
    lw	$v1,56($a0)
    ld	$a4,0($sp)
    addu	$v1,$v1,$v1
    subu	$v1,$v0,$v1
    b	.L0daaf720
    sw	$v1,0($a4)
.L0daaf6e0:
    # Line 437
    sltiu	$a4,$s0,4099
    bnez	$a4,.L0daaf734
    sltiu	$a5,$s0,4100
    bnez	$a5,.L0daaf7d4
    li	$v0,0x805c
    sltu	$at,$s0,$v0
    bnez	$at,.L0daaf85c
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0daaf80c
    # Line 462
    ld	$a5,0($sp)
    lw	$a4,72($a0)
    # Line 463
    b	.L0daaf720
    # Line 462
    sw	$a4,0($a5)
.L0daaf714:
    # Line 465
    ld	$v1,0($sp)
    lw	$at,76($a0)
    sw	$at,0($v1)
.L0daaf720:
    # Line 483
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf734:
    # Line 437
    sltiu	$a4,$s0,4097
    bnez	$a4,.L0daaf7bc
    sltiu	$a5,$s0,4098
    beqz	$a5,.L0daaf810
    # Line 480
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 442
    lw	$at,232($a1)
    slti	$at,$at,2
    beqz	$at,.L0daaf89c
    lw	$v0,8($a0)
    # Line 443
    lw	$v1,56($a0)
    ld	$a4,0($sp)
    addu	$v1,$v1,$v1
    subu	$v1,$v0,$v1
    b	.L0daaf720
    sw	$v1,0($a4)
.L0daaf770:
    # Line 437
    li	$v0,0x805f
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0daaf874
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0daaf80c
    # Line 471
    ld	$v1,0($sp)
    lw	$at,84($a0)
    # Line 472
    b	.L0daaf720
    # Line 471
    sw	$at,0($v1)
.L0daaf794:
    # Line 432
    # lw $t9, -29008($gp) # &__glSetError
.L0daaf798:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 433
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf7bc:
    # Line 437
    li	$a4,4096
    bne	$s0,$a4,.L0daaf80c
    # Line 439
    ld	$at,0($sp)
    lw	$a5,4($a0)
    # Line 440
    b	.L0daaf720
    # Line 439
    sw	$a5,0($at)
.L0daaf7d4:
    # Line 456
    ld	$a4,0($sp)
    lw	$v1,60($a0)
    # Line 457
    b	.L0daaf720
    # Line 456
    sw	$v1,0($a4)
.L0daaf7e4:
    # Line 423
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf80c:
    # Line 480
    # lw $t9, -29008($gp) # &__glSetError
.L0daaf810:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 481
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf834:
    # Line 428
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 429
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daaf85c:
    # Line 437
    li	$a5,4101
    bne	$s0,$a5,.L0daaf80c
    # Line 459
    ld	$v1,0($sp)
    lw	$at,56($a0)
    # Line 460
    b	.L0daaf720
    # Line 459
    sw	$at,0($v1)
.L0daaf874:
    # Line 437
    li	$a4,0x805e
    bne	$s0,$a4,.L0daaf80c
    # Line 468
    ld	$at,0($sp)
    lw	$a5,80($a0)
    # Line 469
    b	.L0daaf720
    # Line 468
    sw	$a5,0($at)
.L0daaf88c:
    # Line 474
    ld	$a4,0($sp)
    lw	$v1,88($a0)
    # Line 475
    b	.L0daaf720
    # Line 474
    sw	$v1,0($a4)
.L0daaf89c:
    ld	$a5,0($sp)
    b	.L0daaf720
    # Line 445
    sw	$v0,0($a5)
.L0daaf8a8:
    # Line 437
    li	$at,0x8061
    bne	$s0,$at,.L0daaf80c
    # Line 477
    ld	$a4,0($sp)
    lw	$v1,92($a0)
    # Line 478
    b	.L0daaf720
    # Line 477
    sw	$v1,0($a4)
.L0daaf8c0:
    ld	$a5,0($sp)
    b	.L0daaf720
    # Line 452
    sw	$v0,0($a5)
.end __glim_GetTexLevelParameteriv

# Function: __glim_GetTexFilterFuncSGIS
# Declared: Line 486 (Source lines: 486-504)
# Address: 0x0daaf8cc - 0x0daaf9dc (Size: 272 bytes, Frame: 192)
.globl __glim_GetTexFilterFuncSGIS
.ent __glim_GetTexFilterFuncSGIS
__glim_GetTexFilterFuncSGIS:
    # Line 486
    li	$v1,1
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    # sd	gp,16(sp)
    move	$v0,$a0
    lw	$at,__glBeginMode
    lui	$a0,0x14
    addiu	$a0,$a0,32668
    beq	$at,$v1,.L0daaf9bc
    nop
    # Line 489
    li	$a3,3552
    beq	$v0,$a3,.L0daaf928
    li	$a4,3553
    beq	$v0,$a4,.L0daaf928
    sd	$ra,24($sp)
    # Line 492
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 493
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daaf928:
    # Line 496
    # lw $t9, -27076($gp) # &__glLookUpTextureParams
    move	$a1,$v0
    sd	$ra,24($sp)
    jal	__glLookUpTextureParams
    lw	$a0,__glCurrentContext
    # Line 502
    ld	$a0,8($sp)
    # Line 497
    beqz	$v0,.L0daaf9a0
    ld	$ra,24($sp)
    ld	$at,0($sp)
    li	$v1,0x8146
    bne	$at,$v1,.L0daaf9a0
    # Line 499
    addiu	$a5,$v0,132
    # Line 501
    addiu	$a1,$v0,4
    # Line 502
    lwc1	$f0,20($v0)
    # ld	gp,16(sp)
    addiu	$a0,$a0,4
    swc1	$f0,-4($a0)
.L0daaf96c:
    lwc1	$f0,20($a1)
    swc1	$f0,0($a0)
    lwc1	$f3,24($a1)
    swc1	$f3,4($a0)
    lwc1	$f2,28($a1)
    swc1	$f2,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f1,32($a1)
    # Line 501
    addiu	$a1,$a1,16
    bne	$a1,$a5,.L0daaf96c
    # Line 502
    swc1	$f1,-4($a0)
    # Line 504
    jr	$ra
    addiu	$sp,$sp,64
.L0daaf9a0:
    # Line 498
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 499
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daaf9bc:
    # Line 489
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_GetTexFilterFuncSGIS

# Function: __glim_GetClipPlane
# Declared: Line 508 (Source lines: 509-522)
# Address: 0x0daaf9dc - 0x0daafad0 (Size: 244 bytes, Frame: 32)
.globl __glim_GetClipPlane
.ent __glim_GetClipPlane
__glim_GetClipPlane:
    # Line 511
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 509
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 511
    lw	$at,__glBeginMode
    # Line 509
    lui	$v1,0x14
    addiu	$v1,$v1,32396
    # Line 511
    beq	$at,$v0,.L0daafab0
    # Line 509
    addu	$gp,$t9,$v1
    # Line 514
    slti	$a2,$a0,12288
    bnez	$a2,.L0daafa94
    # Line 515
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 514
    lw	$v0,3332($a3)
    addiu	$at,$a0,-12288
    slt	$at,$at,$v0
    beqz	$at,.L0daafa90
    # Line 518
    sll	$a2,$a0,0x4
    lw	$v1,1652($a3)
    lui	$a0,0xfffd
    addu	$v1,$v1,$a2
    addu	$v1,$v1,$a0
    lwc1	$f3,0($v1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a1)
    # Line 519
    lw	$v0,1652($a3)
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a0
    lwc1	$f2,4($v0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a1)
    # Line 520
    lw	$at,1652($a3)
    addu	$at,$at,$a2
    addu	$at,$at,$a0
    lwc1	$f1,8($at)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a1)
    # Line 521
    lw	$v1,1652($a3)
    addu	$v1,$v1,$a2
    addu	$v1,$v1,$a0
    lwc1	$f0,12($v1)
    ld	$gp,0($sp)
    # Line 522
    addiu	$sp,$sp,32
    # Line 521
    cvt.d.s	$f0,$f0
    # Line 522
    jr	$ra
    # Line 521
    sdc1	$f0,24($a1)
.L0daafa90:
    # Line 515
    # lw $t9, -29008($gp) # &__glSetError
.L0daafa94:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 516
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daafab0:
    # Line 511
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetClipPlane

# Function: __glInitImagePack
# Declared: Line 526 (Source lines: 529-554)
# Address: 0x0daafad0 - 0x0daafb60 (Size: 144 bytes, Frame: 208)
.globl __glInitImagePack
.ent __glInitImagePack
__glInitImagePack:
    # Line 534
    li	$at,1
    # Line 535
    li	$v0,2
    # Line 529
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    lui	$a7,0x14
    addiu	$a7,$a7,32152
    # addu	gp,t9,a7
    # Line 530
    mtc1	$zero,$f1
    # Line 537
    li	$v1,4
    sd	$ra,0($sp)
    # Line 530
    swc1	$f1,196($a1)
    # Line 553
    # lw $t9, -30516($gp) # &__glLoadPackModes
    # Line 531
    lwc1	$f0,3284($a0)
    # Line 552
    sw	$a6,88($a1)
    # Line 551
    sw	$a5,84($a1)
    # Line 550
    sw	$a4,80($a1)
    # Line 548
    sw	$a3,64($a1)
    # Line 547
    sw	$a2,60($a1)
    # Line 543
    sw	$zero,44($a1)
    # Line 541
    sw	$zero,40($a1)
    # Line 540
    sw	$zero,56($a1)
    # Line 539
    sw	$zero,52($a1)
    # Line 538
    sw	$zero,48($a1)
    # Line 537
    sw	$v1,68($a1)
    # Line 535
    sw	$v0,432($a1)
    # Line 534
    sw	$at,176($a1)
    # Line 533
    sw	$a3,172($a1)
    # Line 532
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 553
    jal	__glLoadPackModes
    # Line 531
    swc1	$f0,160($a1)
    # Line 554
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitImagePack

# Function: __glim_GetTexImage
# Declared: Line 556 (Source lines: 558-657)
# Address: 0x0daafb60 - 0x0dab0084 (Size: 1316 bytes, Frame: 240)
.globl __glim_GetTexImage
.ent __glim_GetTexImage
__glim_GetTexImage:
    # Line 563
    li	$v0,1
    # Line 558
    addiu	$sp,$sp,-624
    sd	$ra,560($sp)
    sd	$s0,512($sp)
    # Line 563
    lw	$s0,__glCurrentContext
    sd	$a4,504($sp)
    sd	$s3,544($sp)
    # Line 558
    move	$s3,$a3
    sd	$s2,552($sp)
    move	$s2,$a2
    sd	$s4,528($sp)
    move	$s4,$a1
    sd	$s1,520($sp)
    move	$s1,$a0
    sd	$gp,536($sp)
    # Line 563
    lw	$at,__glBeginMode
    # Line 558
    lui	$v1,0x14
    addiu	$v1,$v1,32008
    # Line 563
    beq	$at,$v0,.L0daaff8c
    # Line 558
    addu	$gp,$t9,$v1
    # Line 565
    # lw $t9, -27068($gp) # &__glLookUpTexture
    sd	$s5,568($sp)
    move	$a0,$s0
    jal	__glLookUpTexture
    move	$a1,$s1
    move	$s5,$v0
    # Line 567
    beqz	$v0,.L0daafe38
    ld	$ra,560($sp)
    li	$t0,0x8063
    beq	$s1,$t0,.L0daafe38
    li	$t1,0x8064
    beq	$s1,$t1,.L0daafe38
    li	$at,0x8070
    beq	$s1,$at,.L0daafe3c
    # Line 570
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 574
    bltz	$s4,.L0daafeb0
    # Line 575
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 574
    lw	$v1,3436($s0)
    slt	$v1,$s4,$v1
    beqz	$v1,.L0daafeac
    # Line 576
    sltiu	$t0,$s2,6407
    bnez	$t0,.L0daafc34
    # Line 578
    sltiu	$t1,$s2,6408
    bnez	$t1,.L0daafc44
    sltiu	$at,$s2,6410
    bnez	$at,.L0daafef4
    sltiu	$v1,$s2,6411
    bnez	$v1,.L0daafc44
    li	$t0,0x8000
    beq	$s2,$t0,.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
    b	.L0daafe7c
    # Line 590
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daafc34:
    # Line 578
    sltiu	$t1,$s2,6405
    bnez	$t1,.L0daafdcc
    sltiu	$at,$s2,6406
    beqz	$at,.L0daafe6c
.L0daafc44:
    # Line 592
    sltiu	$v1,$s3,5126
.L0daafc48:
    bnez	$v1,.L0daafcb0
    # Line 593
    sltiu	$t0,$s3,5127
    bnez	$t0,.L0daafcc0
    li	$v0,0x8034
    sltu	$t1,$s3,$v0
    bnez	$t1,.L0daaff6c
    sltu	$at,$v0,$s3
    bnez	$at,.L0dab0050
    # Line 615
    li	$v1,6408
.L0daafc6c:
    beq	$s2,$v1,.L0daafcc0
    li	$t0,0x8000
    beq	$s2,$t0,.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
    # Line 620
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 621
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daafcb0:
    # Line 593
    sltiu	$t1,$s3,5123
    bnez	$t1,.L0daafde8
    sltiu	$at,$s3,5124
    beqz	$at,.L0daaff50
.L0daafcc0:
    # Line 629
    sll	$a0,$s4,0x2
.L0daafcc4:
    # Line 631
    lw	$a1,232($s5)
    # Line 629
    lw	$v0,228($s5)
    # Line 631
    slti	$v1,$a1,2
    # Line 629
    subu	$a0,$a0,$s4
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    # Line 631
    lw	$a0,8($v0)
    beqz	$v1,.L0daafd00
    lw	$a2,4($v0)
    # Line 633
    lw	$a3,56($v0)
    addu	$a3,$a3,$a3
    b	.L0daafd04
    subu	$a3,$a0,$a3
.L0daafd00:
    # Line 635
    move	$a3,$a0
.L0daafd04:
    # Line 639
    beqzl	$a2,.L0daaffc0
    ld	$gp,536($sp)
    beqz	$a3,.L0daaffbc
    slti	$t0,$a1,3
    beqz	$t0,.L0daafd2c
    lw	$a0,12($v0)
    # Line 642
    lw	$a4,56($v0)
    addu	$a4,$a4,$a4
    b	.L0daafd30
    subu	$a4,$a0,$a4
.L0daafd2c:
    # Line 644
    move	$a4,$a0
.L0daafd30:
    # Line 646
    move	$a0,$s0
    ld	$a7,504($sp)
    # lw $t9, -26828($gp) # &__glInitTexDestPack
    move	$a6,$s3
    move	$a5,$s2
    jal	__glInitTexDestPack
    addiu	$a1,$sp,0
    # Line 648
    move	$a0,$s0
    # lw $t9, -26836($gp) # &__glInitTexImageGet
    move	$a3,$s4
    move	$a2,$s5
    jal	__glInitTexImageGet
    addiu	$a1,$sp,0
    lw	$t0,232($s5)
    slti	$t0,$t0,3
    beqz	$t0,.L0daafe0c
    # Line 650
    nop	# was lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    addiu	$a1,$sp,0
    jal	__glInitPacker
    ld	$s5,568($sp)
    # Line 651
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 656
    lw	$t9,12580($s0)
.L0daafd98:
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,560($sp)
    # Line 657
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    ld	$gp,536($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daafdcc:
    # Line 578
    sltiu	$t1,$s2,6404
    bnez	$t1,.L0daafee0
    sltiu	$at,$s2,6405
    beqz	$at,.L0daafe7c
    # Line 590
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
.L0daafde8:
    # Line 593
    sltiu	$v1,$s3,5121
    bnez	$v1,.L0daaff10
    sltiu	$t0,$s3,5122
    bnez	$t0,.L0daafcc0
    li	$t1,5122
    bne	$s3,$t1,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
.L0daafe0c:
    # Line 653
    # lw $t9, -30744($gp) # &__glInitPacker3D
    move	$a0,$s0
    addiu	$a1,$sp,0
    jal	__glInitPacker3D
    ld	$s5,568($sp)
    # Line 654
    # lw $t9, -30244($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,0
    b	.L0daafd98
    # Line 656
    lw	$t9,12580($s0)
.L0daafe38:
    # Line 570
    # lw $t9, -29008($gp) # &__glSetError
.L0daafe3c:
    li	$a0,1280
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 571
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daafe6c:
    # Line 578
    li	$at,6406
    beq	$s2,$at,.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
    # Line 590
    # lw $t9, -29008($gp) # &__glSetError
.L0daafe7c:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 591
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daafeac:
    # Line 575
    # lw $t9, -29008($gp) # &__glSetError
.L0daafeb0:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 576
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daafee0:
    # Line 578
    li	$v1,6403
    bne	$s2,$v1,.L0daafe7c
    # Line 590
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
.L0daafef4:
    # Line 578
    sltiu	$t0,$s2,6409
    bnez	$t0,.L0daaffe0
    sltiu	$t1,$s2,6410
    beqz	$t1,.L0daafe7c
    # Line 590
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
.L0daaff10:
    # Line 593
    li	$at,5120
    beq	$s3,$at,.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
.L0daaff1c:
    # Line 625
    # lw $t9, -29008($gp) # &__glSetError
.L0daaff20:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 626
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daaff50:
    # Line 593
    sltiu	$v1,$s3,5125
    bnez	$v1,.L0daafff4
    sltiu	$t0,$s3,5126
    beqz	$t0,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
.L0daaff6c:
    # Line 593
    li	$v0,0x8033
    sltu	$t1,$s3,$v0
    bnez	$t1,.L0dab0008
    sltu	$at,$v0,$s3
    bnez	$at,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc6c
    # Line 615
    li	$v1,6408
.L0daaff8c:
    # Line 563
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,536($sp)
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daaffbc:
    ld	$gp,536($sp)
.L0daaffc0:
    # Line 639
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    ld	$s5,568($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0daaffe0:
    # Line 578
    li	$v1,6408
    bne	$s2,$v1,.L0daafe7c
    # Line 590
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc48
    # Line 592
    sltiu	$v1,$s3,5126
.L0daafff4:
    # Line 593
    li	$t0,5124
    bne	$s3,$t0,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
.L0dab0008:
    # Line 593
    li	$t1,0x8032
    bne	$s3,$t1,.L0daaff1c
    # Line 603
    li	$at,6407
    beq	$s2,$at,.L0daafcc4
    # Line 629
    sll	$a0,$s4,0x2
    # Line 607
    # lw $t9, -29008($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 608
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0dab0050:
    # Line 593
    li	$v0,0x8036
    sltu	$v1,$s3,$v0
    bnez	$v1,.L0dab0070
    sltu	$t0,$v0,$s3
    bnez	$t0,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc6c
    # Line 615
    li	$v1,6408
.L0dab0070:
    # Line 593
    li	$t1,0x8035
    bne	$s3,$t1,.L0daaff20
    # Line 625
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0daafc6c
    # Line 615
    li	$v1,6408
.end __glim_GetTexImage

# Function: __glim_GetPolygonStipple
# Declared: Line 661 (Source lines: 662-674)
# Address: 0x0dab0084 - 0x0dab0154 (Size: 208 bytes, Frame: 160)
.globl __glim_GetPolygonStipple
.ent __glim_GetPolygonStipple
__glim_GetPolygonStipple:
    # Line 662
    move	$a6,$a0
    # Line 664
    li	$v0,1
    # Line 662
    addiu	$sp,$sp,-544
    sd	$ra,520($sp)
    sd	$s0,512($sp)
    # Line 664
    lw	$s0,__glCurrentContext
    # sd	gp,504(sp)
    lw	$at,__glBeginMode
    # Line 662
    lui	$v1,0x14
    addiu	$v1,$v1,30692
    # Line 664
    beq	$at,$v0,.L0dab0134
    # Line 662
    nop
    # Line 669
    li	$a5,6656
    li	$a4,6400
    li	$a3,32
    li	$a2,32
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 666
    addiu	$a7,$s0,488
    # Line 667
    li	$t0,6656
    # Line 668
    li	$t1,6400
    # Line 669
    # lw $t9, -28572($gp) # &__glInitImagePack
    # Line 668
    sw	$t1,0($sp)
    # Line 667
    sw	$t0,4($sp)
    # Line 669
    bal __glInitImagePack
    # Line 666
    sw	$a7,8($sp)
    # Line 671
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 672
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 673
    lw	$t9,12580($s0)
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 674
    ld	$ra,520($sp)
    # ld	gp,504(sp)
    ld	$s0,512($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0dab0134:
    # Line 664
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,520($sp)
    # ld	gp,504(sp)
    ld	$s0,512($sp)
    jr	$ra
    addiu	$sp,$sp,544
.end __glim_GetPolygonStipple

# Function: __glim_GetLightfv
# Declared: Line 678 (Source lines: 680-732)
# Address: 0x0dab0154 - 0x0dab0324 (Size: 464 bytes, Frame: 48)
.globl __glim_GetLightfv
.ent __glim_GetLightfv
__glim_GetLightfv:
    # Line 683
    lw	$a4,__glCurrentContext
    # Line 680
    move	$a5,$a2
    # Line 683
    li	$v0,1
    # Line 680
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 683
    lw	$at,__glBeginMode
    # Line 680
    lui	$v1,0x14
    addiu	$v1,$v1,30484
    # Line 683
    beq	$at,$v0,.L0dab0304
    # Line 680
    addu	$gp,$t9,$v1
    # Line 686
    slti	$a3,$a0,16384
    bnez	$a3,.L0dab01e8
    # Line 687
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 686
    lw	$v0,3328($a4)
    addiu	$at,$a0,-16384
    slt	$at,$at,$v0
    beqz	$at,.L0dab01e4
    # Line 691
    la	$a3,sub_0dbf0000
    lui	$a3,%hi(jtbl_0dbeb840)
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lw	$a6,1488($a4)
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lui	$at,0xffe3
    beqz	$v0,.L0dab0204
    addu	$a6,$a6,$at
    lw	$a3,%lo(jtbl_0dbeb840)($a2)
    jr	$a3
    # Line 700
    move	$a0,$a4
.L0dab01e4:
    # Line 687
    # lw $t9, -29008($gp) # &__glSetError
.L0dab01e8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 688
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0204:
    # Line 729
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 730
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0224:
    # Line 694
    move	$a0,$a4
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    move	$a2,$a6
    b	.L0dab024c
    ld	$ra,8($sp)
.L0dab0244:
    # Line 720
    lwc1	$f0,104($a6)
    swc1	$f0,0($a5)
.L0dab024c:
    ld	$gp,0($sp)
    # Line 732
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0258:
    # Line 697
    move	$a0,$a4
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    addiu	$a2,$a6,16
    b	.L0dab024c
    ld	$ra,8($sp)
.L0dab0278:
    # Line 700
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    addiu	$a2,$a6,32
    b	.L0dab024c
    ld	$ra,8($sp)
.L0dab0294:
    # Line 703
    lwc1	$f0,64($a6)
    swc1	$f0,0($a5)
    # Line 704
    lwc1	$f3,68($a6)
    swc1	$f3,4($a5)
    # Line 705
    lwc1	$f2,72($a6)
    swc1	$f2,8($a5)
    # Line 706
    lwc1	$f1,76($a6)
    # Line 707
    b	.L0dab024c
    # Line 706
    swc1	$f1,12($a5)
.L0dab02b8:
    # Line 709
    lwc1	$f3,80($a6)
    swc1	$f3,0($a5)
    # Line 710
    lwc1	$f2,84($a6)
    swc1	$f2,4($a5)
    # Line 711
    lwc1	$f1,88($a6)
    # Line 712
    b	.L0dab024c
    # Line 711
    swc1	$f1,8($a5)
.L0dab02d4:
    # Line 714
    lwc1	$f0,96($a6)
    # Line 715
    b	.L0dab024c
    # Line 714
    swc1	$f0,0($a5)
.L0dab02e0:
    # Line 717
    lwc1	$f1,100($a6)
    # Line 718
    b	.L0dab024c
    # Line 717
    swc1	$f1,0($a5)
.L0dab02ec:
    # Line 723
    lwc1	$f2,108($a6)
    # Line 724
    b	.L0dab024c
    # Line 723
    swc1	$f2,0($a5)
.L0dab02f8:
    # Line 726
    lwc1	$f3,112($a6)
    # Line 727
    b	.L0dab024c
    # Line 726
    swc1	$f3,0($a5)
.L0dab0304:
    # Line 683
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetLightfv

# Function: __glim_GetLightiv
# Declared: Line 734 (Source lines: 736-790)
# Address: 0x0dab0324 - 0x0dab056c (Size: 584 bytes, Frame: 48)
.globl __glim_GetLightiv
.ent __glim_GetLightiv
__glim_GetLightiv:
    # Line 739
    lw	$a7,__glCurrentContext
    # Line 736
    move	$a4,$a2
    # Line 739
    li	$v0,1
    # Line 736
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 739
    lw	$at,__glBeginMode
    # Line 736
    lui	$v1,0x14
    addiu	$v1,$v1,30020
    # Line 739
    beq	$at,$v0,.L0dab054c
    # Line 736
    addu	$gp,$t9,$v1
    # Line 742
    slti	$a3,$a0,16384
    bnez	$a3,.L0dab03b8
    # Line 743
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 742
    lw	$v0,3328($a7)
    addiu	$at,$a0,-16384
    slt	$at,$at,$v0
    beqz	$at,.L0dab03b4
    # Line 747
    la	$a3,sub_0dbf0000
    lui	$a3,%hi(jtbl_0dbeb868)
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lw	$t0,1488($a7)
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$t0,$t0,$at
    lui	$at,0xffe3
    beqz	$v0,.L0dab03d4
    addu	$t0,$t0,$at
    lw	$a3,%lo(jtbl_0dbeb868)($a2)
    jr	$a3
    sd	$ra,8($sp)
.L0dab03b4:
    # Line 743
    # lw $t9, -29008($gp) # &__glSetError
.L0dab03b8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 744
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab03d4:
    # Line 787
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 788
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab03f4:
    # Line 750
    # lw $t9, -28364($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    move	$a2,$t0
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0410:
    # Line 775
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,104
    ld	$ra,8($sp)
.L0dab0430:
    ld	$gp,0($sp)
    # Line 790
    jr	$ra
    addiu	$sp,$sp,48
.L0dab043c:
    # Line 753
    # lw $t9, -28364($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    addiu	$a2,$t0,16
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0458:
    # Line 756
    # lw $t9, -28364($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    addiu	$a2,$t0,32
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0474:
    # Line 759
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,64
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0498:
    # Line 763
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,3
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,80
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab04bc:
    # Line 767
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,96
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab04e0:
    # Line 771
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,100
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0504:
    # Line 779
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,108
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab0528:
    # Line 783
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -28520($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,112
    b	.L0dab0430
    ld	$ra,8($sp)
.L0dab054c:
    # Line 739
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetLightiv

# Function: __glim_GetMaterialfv
# Declared: Line 794 (Source lines: 796-846)
# Address: 0x0dab056c - 0x0dab0700 (Size: 404 bytes, Frame: 48)
.globl __glim_GetMaterialfv
.ent __glim_GetMaterialfv
__glim_GetMaterialfv:
    # Line 796
    move	$a5,$a2
    # Line 798
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 796
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 798
    lw	$at,__glBeginMode
    # Line 796
    lui	$v1,0x14
    addiu	$v1,$v1,29436
    # Line 798
    beq	$at,$v0,.L0dab06c0
    # Line 796
    addu	$gp,$t9,$v1
    # Line 800
    li	$a3,1028
    beq	$a0,$a3,.L0dab0618
    li	$at,1029
    beq	$a0,$at,.L0dab05c4
    # Line 808
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 809
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab05c4:
    # Line 805
    addiu	$a6,$a4,1408
    # Line 812
    li	$v0,5635
.L0dab05cc:
    beq	$a1,$v0,.L0dab0650
    li	$v1,5633
    beq	$a1,$v1,.L0dab066c
    li	$a3,5632
    beq	$a1,$a3,.L0dab06e0
    li	$at,4608
    beq	$a1,$at,.L0dab0678
    li	$v0,4609
    beq	$a1,$v0,.L0dab069c
    li	$v1,4610
    beq	$a1,$v1,.L0dab0624
    # Line 843
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 844
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0618:
    # Line 802
    addiu	$a6,$a4,1328
    # Line 803
    b	.L0dab05cc
    # Line 812
    li	$v0,5635
.L0dab0624:
    # Line 837
    lwc1	$f3,32($a6)
    swc1	$f3,0($a5)
    # Line 838
    lwc1	$f2,36($a6)
    swc1	$f2,4($a5)
    # Line 839
    lwc1	$f1,40($a6)
    swc1	$f1,8($a5)
    # Line 840
    lwc1	$f0,44($a6)
    swc1	$f0,12($a5)
.L0dab0644:
    ld	$gp,0($sp)
    # Line 846
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0650:
    # Line 814
    lwc1	$f2,68($a6)
    swc1	$f2,0($a5)
    # Line 815
    lwc1	$f1,76($a6)
    swc1	$f1,4($a5)
    # Line 816
    lwc1	$f0,72($a6)
    # Line 817
    b	.L0dab0644
    # Line 816
    swc1	$f0,8($a5)
.L0dab066c:
    # Line 819
    lwc1	$f3,64($a6)
    # Line 820
    b	.L0dab0644
    # Line 819
    swc1	$f3,0($a5)
.L0dab0678:
    # Line 825
    lwc1	$f3,0($a6)
    swc1	$f3,0($a5)
    # Line 826
    lwc1	$f2,4($a6)
    swc1	$f2,4($a5)
    # Line 827
    lwc1	$f1,8($a6)
    swc1	$f1,8($a5)
    # Line 828
    lwc1	$f0,12($a6)
    # Line 829
    b	.L0dab0644
    # Line 828
    swc1	$f0,12($a5)
.L0dab069c:
    # Line 831
    lwc1	$f3,16($a6)
    swc1	$f3,0($a5)
    # Line 832
    lwc1	$f2,20($a6)
    swc1	$f2,4($a5)
    # Line 833
    lwc1	$f1,24($a6)
    swc1	$f1,8($a5)
    # Line 834
    lwc1	$f0,28($a6)
    # Line 835
    b	.L0dab0644
    # Line 834
    swc1	$f0,12($a5)
.L0dab06c0:
    # Line 798
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab06e0:
    # Line 822
    move	$a0,$a4
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    bal __glUnScaleColorf
    addiu	$a2,$a6,48
    b	.L0dab0644
    ld	$ra,8($sp)
.end __glim_GetMaterialfv

# Function: __glim_GetMaterialiv
# Declared: Line 848 (Source lines: 850-900)
# Address: 0x0dab0700 - 0x0dab0b10 (Size: 1040 bytes, Frame: 208)
.globl __glim_GetMaterialiv
.ent __glim_GetMaterialiv
__glim_GetMaterialiv:
    # Line 852
    lw	$a7,__glCurrentContext
    li	$v0,1
    # Line 850
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$gp,24($sp)
    # Line 852
    lw	$at,__glBeginMode
    # Line 850
    lui	$v1,0x14
    addiu	$v1,$v1,29032
    # Line 852
    beq	$at,$v0,.L0dab08a8
    # Line 850
    addu	$gp,$t9,$v1
    # Line 854
    li	$a3,1028
    beq	$a0,$a3,.L0dab07b8
    li	$at,1029
    beq	$a0,$at,.L0dab0758
    # Line 862
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 863
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab0758:
    # Line 859
    addiu	$v0,$a7,1408
    sd	$v0,16($sp)
.L0dab0760:
    # Line 866
    li	$v1,5635
    beq	$a1,$v1,.L0dab08c8
    li	$a3,5633
    beq	$a1,$a3,.L0dab08f8
    li	$at,5632
    beq	$a1,$at,.L0dab0928
    li	$v0,4608
    beq	$a1,$v0,.L0dab094c
    li	$v1,4609
    beq	$a1,$v1,.L0dab0a30
    ld	$v0,16($sp)
    sd	$ra,32($sp)
    li	$a3,4610
    beq	$a1,$a3,.L0dab07c4
    sd	$a7,0($sp)
    # Line 897
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 898
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab07b8:
    # Line 856
    addiu	$at,$a7,1328
    # Line 857
    b	.L0dab0760
    sd	$at,16($sp)
.L0dab07c4:
    # Line 891
    ld	$v0,0($sp)
    ld	$v1,16($sp)
    lwc1	$f14,3304($v0)
    lwc1	$f13,32($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($v0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a3,8($sp)
    mfc1	$a2,$f15
    # Line 892
    ld	$a1,16($sp)
    ld	$a0,0($sp)
    # Line 891
    sw	$a2,0($a3)
    # Line 892
    lwc1	$f14,3304($a0)
    lwc1	$f13,36($a1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a7,8($sp)
    mfc1	$a6,$f15
    # Line 893
    ld	$a5,16($sp)
    ld	$a4,0($sp)
    # Line 892
    sw	$a6,4($a7)
    # Line 893
    lwc1	$f14,3304($a4)
    lwc1	$f13,40($a5)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a4)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t3,8($sp)
    mfc1	$t2,$f15
    # Line 894
    ld	$t1,16($sp)
    ld	$t0,0($sp)
    # Line 893
    sw	$t2,8($t3)
    # Line 894
    lwc1	$f14,3304($t0)
    lwc1	$f13,44($t1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($t0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    ld	$ra,32($sp)
.L0dab089c:
    ld	$gp,24($sp)
    # Line 900
    jr	$ra
    addiu	$sp,$sp,80
.L0dab08a8:
    # Line 852
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab08c8:
    # Line 868
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,3
    ld	$a4,8($sp)
    li	$a3,3
    # lw $t9, -28520($gp) # &__glConvertResult
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glConvertResult
    addiu	$a2,$a2,68
    b	.L0dab089c
    ld	$ra,32($sp)
.L0dab08f8:
    # Line 872
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    ld	$a4,8($sp)
    li	$a3,3
    # lw $t9, -28520($gp) # &__glConvertResult
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glConvertResult
    addiu	$a2,$a2,64
    b	.L0dab089c
    ld	$ra,32($sp)
.L0dab0928:
    # Line 876
    move	$a0,$a7
    ld	$a1,8($sp)
    # lw $t9, -28364($gp) # &__glUnScaleColori
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glUnScaleColori
    addiu	$a2,$a2,48
    b	.L0dab089c
    ld	$ra,32($sp)
.L0dab094c:
    ld	$a4,16($sp)
    # Line 879
    lwc1	$f14,3304($a7)
    lwc1	$f13,0($a4)
    mul.s	$f13,$f13,$f14
    sd	$a7,0($sp)
    move	$a3,$a7
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a7)
    sd	$ra,32($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t0,8($sp)
    mfc1	$a7,$f15
    # Line 880
    ld	$a6,16($sp)
    ld	$a5,0($sp)
    # Line 879
    sw	$a7,0($t0)
    # Line 880
    lwc1	$f14,3304($a5)
    lwc1	$f13,4($a6)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a5)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t8,8($sp)
    mfc1	$t3,$f15
    # Line 881
    ld	$t2,16($sp)
    ld	$t1,0($sp)
    # Line 880
    sw	$t3,4($t8)
    # Line 881
    lwc1	$f14,3304($t1)
    lwc1	$f13,8($t2)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($t1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$v1,8($sp)
    mfc1	$v0,$f15
    # Line 882
    ld	$at,16($sp)
    ld	$ra,0($sp)
    # Line 881
    sw	$v0,8($v1)
    # Line 882
    lwc1	$f14,3304($ra)
    lwc1	$f13,12($at)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($ra)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$ra,8($sp)
    mfc1	$a3,$f0
    nop
    sw	$a3,12($ra)
    # Line 883
    b	.L0dab089c
    ld	$ra,32($sp)
.L0dab0a30:
    # Line 885
    lwc1	$f14,3304($a7)
    lwc1	$f13,16($v0)
    mul.s	$f13,$f13,$f14
    sd	$a7,0($sp)
    move	$at,$a7
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a7)
    sd	$ra,32($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a2,8($sp)
    mfc1	$a1,$f15
    # Line 886
    ld	$a0,16($sp)
    ld	$v1,0($sp)
    # Line 885
    sw	$a1,0($a2)
    # Line 886
    lwc1	$f14,3304($v1)
    lwc1	$f13,20($a0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($v1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a6,8($sp)
    mfc1	$a5,$f15
    # Line 887
    ld	$a4,16($sp)
    ld	$a3,0($sp)
    # Line 886
    sw	$a5,4($a6)
    # Line 887
    lwc1	$f14,3304($a3)
    lwc1	$f13,24($a4)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a3)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t2,8($sp)
    mfc1	$t1,$f15
    # Line 888
    ld	$t0,16($sp)
    ld	$a7,0($sp)
    # Line 887
    sw	$t1,8($t2)
    # Line 888
    lwc1	$f14,3304($a7)
    lwc1	$f13,28($t0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($a7)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 889
    b	.L0dab089c
    ld	$ra,32($sp)
.end __glim_GetMaterialiv

# Function: __glim_GetMapfv
# Declared: Line 904 (Source lines: 905-987)
# Address: 0x0dab0b10 - 0x0dab0e6c (Size: 860 bytes, Frame: 48)
.globl __glim_GetMapfv
.ent __glim_GetMapfv
__glim_GetMapfv:
    # Line 911
    lw	$a6,__glCurrentContext
    # Line 916
    addiu	$a4,$a0,-3472
    # Line 911
    li	$v0,1
    # Line 905
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 911
    lw	$at,__glBeginMode
    # Line 905
    lui	$v1,0x14
    addiu	$v1,$v1,27992
    # Line 911
    beq	$at,$v0,.L0dab0de8
    # Line 905
    addu	$gp,$t9,$v1
    # Line 916
    move	$a5,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a4,41
    sll	$a4,$a4,0x2
    lui	$at,%hi(jtbl_0dbeb890)
    beqz	$a3,.L0dab0b60
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbeb890)($a4)
    jr	$at
    # Line 929
    li	$a3,2561
.L0dab0b60:
    # Line 984
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 985
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0b80:
    # Line 929
    li	$v0,2560
    beq	$a1,$v0,.L0dab0bf0
    li	$v1,2562
    beq	$a1,$v1,.L0dab0e08
    # Line 938
    sll	$v1,$a0,0x2
    # Line 929
    beq	$a1,$a3,.L0dab0d70
    # Line 945
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 946
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0bb8:
    # Line 960
    li	$at,2560
    beq	$a1,$at,.L0dab0ca8
    li	$v0,2562
    beq	$a1,$v0,.L0dab0e30
    li	$v1,2561
    beq	$a1,$v1,.L0dab0da4
    # Line 979
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 980
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0bf0:
    # Line 931
    lui	$v1,0xffff
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$v0,$v0,$v1
    lw	$at,10448($v0)
    lw	$v0,10452($v0)
    mult	$at,$v0
    # Line 932
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14928($a7)
    # Line 931
    mflo	$a1
    andi	$a4,$a1,0x3
    # Line 932
    blez	$a1,.L0dab0c9c
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0dab0c58
    addu	$a2,$a2,$a7
.L0dab0c40:
    # Line 933
    addiu	$a0,$a0,4
    # Line 934
    addiu	$a5,$a5,4
    lwc1	$f0,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dab0c40
    swc1	$f0,-4($a5)
.L0dab0c58:
    move	$a7,$a0
    sra	$a3,$a6,0x2
    beqz	$a3,.L0dab0c9c
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0dab0c70:
    lwc1	$f0,0($a1)
    swc1	$f0,0($a0)
    lwc1	$f3,4($a1)
    swc1	$f3,4($a0)
    lwc1	$f2,8($a1)
    swc1	$f2,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f1,12($a1)
    # Line 933
    addiu	$a1,$a1,16
    bne	$a1,$a2,.L0dab0c70
    # Line 934
    swc1	$f1,-4($a0)
.L0dab0c9c:
    ld	$gp,0($sp)
.L0dab0ca0:
    # Line 987
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0ca8:
    # Line 963
    lui	$v0,0xfffe
    sll	$at,$a0,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x3
    addu	$at,$at,$a6
    addu	$at,$at,$v0
    lw	$v1,19376($at)
    lw	$v0,19372($at)
    mult	$v0,$v1
    lw	$at,19368($at)
    mflo	$v0
    nop
    nop
    mult	$at,$v0
    # Line 962
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14836($a7)
    # Line 963
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0dab0c9c
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0dab0d24
    addu	$a2,$a2,$a7
.L0dab0d0c:
    # Line 964
    addiu	$a0,$a0,4
    # Line 965
    addiu	$a5,$a5,4
    lwc1	$f1,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dab0d0c
    swc1	$f1,-4($a5)
.L0dab0d24:
    sra	$a3,$a6,0x2
    move	$a7,$a0
    beqz	$a3,.L0dab0d68
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0dab0d3c:
    lwc1	$f1,0($a1)
    swc1	$f1,0($a0)
    lwc1	$f0,4($a1)
    swc1	$f0,4($a0)
    lwc1	$f3,8($a1)
    swc1	$f3,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f2,12($a1)
    # Line 964
    addiu	$a1,$a1,16
    bne	$a1,$a2,.L0dab0d3c
    # Line 965
    swc1	$f2,-4($a0)
.L0dab0d68:
    b	.L0dab0ca0
    ld	$gp,0($sp)
.L0dab0d70:
    # Line 942
    lui	$at,0xffff
    ori	$at,$at,0x28d4
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 943
    b	.L0dab0c9c
    # Line 942
    swc1	$f2,0($a2)
.L0dab0da4:
    # Line 975
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    lui	$v1,0xfffe
    addu	$v0,$v0,$v1
    lw	$v1,19372($v0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a5)
    # Line 976
    lw	$v0,19376($v0)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 977
    b	.L0dab0c9c
    # Line 976
    swc1	$f3,4($a5)
.L0dab0de8:
    # Line 911
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0e08:
    # Line 938
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a6
    lui	$a3,0xffff
    addu	$v1,$v1,$a3
    lwc1	$f2,10456($v1)
    swc1	$f2,0($a2)
    # Line 939
    lwc1	$f1,10460($v1)
    # Line 940
    b	.L0dab0c9c
    # Line 939
    swc1	$f1,4($a2)
.L0dab0e30:
    # Line 969
    sll	$a3,$a0,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,19380($a3)
    swc1	$f2,0($a5)
    # Line 970
    lwc1	$f1,19384($a3)
    swc1	$f1,4($a5)
    # Line 971
    lwc1	$f0,19388($a3)
    swc1	$f0,8($a5)
    # Line 972
    lwc1	$f3,19392($a3)
    # Line 973
    b	.L0dab0c9c
    # Line 972
    swc1	$f3,12($a5)
.end __glim_GetMapfv

# Function: __glim_GetMapdv
# Declared: Line 989 (Source lines: 990-1072)
# Address: 0x0dab0e6c - 0x0dab1208 (Size: 924 bytes, Frame: 48)
.globl __glim_GetMapdv
.ent __glim_GetMapdv
__glim_GetMapdv:
    # Line 996
    lw	$a6,__glCurrentContext
    # Line 1001
    addiu	$a4,$a0,-3472
    # Line 996
    li	$v0,1
    # Line 990
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 996
    lw	$at,__glBeginMode
    # Line 990
    lui	$v1,0x14
    addiu	$v1,$v1,27132
    # Line 996
    beq	$at,$v0,.L0dab116c
    # Line 990
    addu	$gp,$t9,$v1
    # Line 1001
    move	$a5,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a4,41
    sll	$a4,$a4,0x2
    lui	$at,%hi(jtbl_0dbeb938)
    beqz	$a3,.L0dab0ebc
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbeb938)($a4)
    jr	$at
    # Line 1014
    li	$a3,2561
.L0dab0ebc:
    # Line 1069
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1070
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0edc:
    # Line 1014
    li	$v0,2560
    beq	$a1,$v0,.L0dab0f4c
    li	$v1,2562
    beq	$a1,$v1,.L0dab118c
    # Line 1023
    sll	$v1,$a0,0x2
    # Line 1014
    beq	$a1,$a3,.L0dab10f4
    # Line 1030
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1031
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0f14:
    # Line 1045
    li	$at,2560
    beq	$a1,$at,.L0dab1018
    li	$v0,2562
    beq	$a1,$v0,.L0dab11bc
    li	$v1,2561
    beq	$a1,$v1,.L0dab1128
    # Line 1064
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1065
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab0f4c:
    # Line 1017
    lui	$v1,0xffff
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$v0,$v0,$v1
    lw	$at,10448($v0)
    lw	$v0,10452($v0)
    mult	$at,$v0
    # Line 1016
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14928($a7)
    # Line 1017
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0dab100c
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0dab0fb8
    addu	$a2,$a2,$a7
.L0dab0f9c:
    # Line 1018
    addiu	$a0,$a0,4
    # Line 1019
    lwc1	$f0,-4($a0)
    addiu	$a5,$a5,8
    addi	$a4,$a4,-1
    cvt.d.s	$f0,$f0
    bnez	$a4,.L0dab0f9c
    sdc1	$f0,-8($a5)
.L0dab0fb8:
    move	$a7,$a0
    sra	$a3,$a6,0x2
    beqz	$a3,.L0dab100c
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0dab0fd0:
    lwc1	$f0,0($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a0)
    lwc1	$f3,4($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a0)
    lwc1	$f2,8($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a0)
    lwc1	$f1,12($a1)
    addiu	$a0,$a0,32
    # Line 1018
    addiu	$a1,$a1,16
    # Line 1019
    cvt.d.s	$f1,$f1
    # Line 1018
    bne	$a1,$a2,.L0dab0fd0
    # Line 1019
    sdc1	$f1,-8($a0)
.L0dab100c:
    ld	$gp,0($sp)
.L0dab1010:
    # Line 1072
    jr	$ra
    addiu	$sp,$sp,48
.L0dab1018:
    # Line 1048
    lui	$v0,0xfffe
    sll	$at,$a0,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x3
    addu	$at,$at,$a6
    addu	$at,$at,$v0
    lw	$v1,19376($at)
    lw	$v0,19372($at)
    mult	$v0,$v1
    lw	$at,19368($at)
    mflo	$v0
    nop
    nop
    mult	$at,$v0
    # Line 1047
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14836($a7)
    # Line 1048
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0dab100c
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0dab1098
    addu	$a2,$a2,$a7
.L0dab107c:
    # Line 1049
    addiu	$a0,$a0,4
    # Line 1050
    lwc1	$f1,-4($a0)
    addiu	$a5,$a5,8
    addi	$a4,$a4,-1
    cvt.d.s	$f1,$f1
    bnez	$a4,.L0dab107c
    sdc1	$f1,-8($a5)
.L0dab1098:
    sra	$a3,$a6,0x2
    move	$a7,$a0
    beqz	$a3,.L0dab10ec
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0dab10b0:
    lwc1	$f1,0($a1)
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($a0)
    lwc1	$f0,4($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,8($a0)
    lwc1	$f3,8($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,16($a0)
    lwc1	$f2,12($a1)
    addiu	$a0,$a0,32
    # Line 1049
    addiu	$a1,$a1,16
    # Line 1050
    cvt.d.s	$f2,$f2
    # Line 1049
    bne	$a1,$a2,.L0dab10b0
    # Line 1050
    sdc1	$f2,-8($a0)
.L0dab10ec:
    b	.L0dab1010
    ld	$gp,0($sp)
.L0dab10f4:
    # Line 1027
    lui	$at,0xffff
    ori	$at,$at,0x28d4
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1028
    b	.L0dab100c
    # Line 1027
    sdc1	$f2,0($a2)
.L0dab1128:
    # Line 1060
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    lui	$v1,0xfffe
    addu	$v0,$v0,$v1
    lw	$v1,19372($v0)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,0($a5)
    # Line 1061
    lw	$v0,19376($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 1062
    b	.L0dab100c
    # Line 1061
    sdc1	$f3,8($a5)
.L0dab116c:
    # Line 996
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab118c:
    # Line 1023
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a6
    lui	$a3,0xffff
    addu	$v1,$v1,$a3
    lwc1	$f2,10456($v1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a2)
    # Line 1024
    lwc1	$f1,10460($v1)
    cvt.d.s	$f1,$f1
    # Line 1025
    b	.L0dab100c
    # Line 1024
    sdc1	$f1,8($a2)
.L0dab11bc:
    # Line 1054
    sll	$a3,$a0,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,19380($a3)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a5)
    # Line 1055
    lwc1	$f1,19384($a3)
    cvt.d.s	$f1,$f1
    sdc1	$f1,8($a5)
    # Line 1056
    lwc1	$f0,19388($a3)
    cvt.d.s	$f0,$f0
    sdc1	$f0,16($a5)
    # Line 1057
    lwc1	$f3,19392($a3)
    cvt.d.s	$f3,$f3
    # Line 1058
    b	.L0dab100c
    # Line 1057
    sdc1	$f3,24($a5)
.end __glim_GetMapdv

# Function: __glim_GetMapiv
# Declared: Line 1074 (Source lines: 1075-1153)
# Address: 0x0dab1208 - 0x0dab14a0 (Size: 664 bytes, Frame: 48)
.globl __glim_GetMapiv
.ent __glim_GetMapiv
__glim_GetMapiv:
    # Line 1081
    lw	$t0,__glCurrentContext
    # Line 1075
    move	$a4,$a2
    move	$a7,$a0
    # Line 1081
    li	$v0,1
    # Line 1075
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1081
    lw	$at,__glBeginMode
    # Line 1075
    lui	$v1,0x14
    addiu	$v1,$v1,26208
    # Line 1081
    beq	$at,$v0,.L0dab1344
    # Line 1075
    addu	$gp,$t9,$v1
    # Line 1081
    addiu	$a5,$a7,-3472
    la	$at,sub_0dbf0000
    sltiu	$v0,$a5,41
    sll	$a5,$a5,0x2
    lui	$at,%hi(jtbl_0dbeb9e0)
    beqz	$v0,.L0dab125c
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbeb9e0)($a5)
    jr	$at
    # Line 1099
    li	$v0,2560
.L0dab125c:
    # Line 1150
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1151
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab127c:
    # Line 1111
    sll	$at,$a7,0x2
    # Line 1099
    beq	$a1,$v0,.L0dab1364
    li	$v1,2562
    beq	$a1,$v1,.L0dab1420
    li	$a3,2561
    beq	$a1,$a3,.L0dab12f0
    # Line 1114
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1115
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab12b4:
    # Line 1129
    li	$at,2560
    beq	$a1,$at,.L0dab13b8
    li	$v0,2562
    beq	$a1,$v0,.L0dab1460
    li	$v1,2561
    # Line 1141
    sll	$at,$a7,0x2
    # Line 1129
    beq	$a1,$v1,.L0dab131c
    # Line 1145
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1146
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab12f0:
    # Line 1111
    subu	$at,$at,$a7
    lui	$a3,0xffff
    sll	$at,$at,0x3
    addu	$at,$at,$t0
    ori	$a3,$a3,0x28d4
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    sw	$a3,0($a4)
.L0dab1310:
    ld	$gp,0($sp)
    # Line 1153
    jr	$ra
    addiu	$sp,$sp,48
.L0dab131c:
    # Line 1141
    addu	$at,$at,$a7
    lui	$v0,0xfffe
    sll	$at,$at,0x3
    addu	$at,$at,$t0
    addu	$at,$at,$v0
    lw	$v0,19372($at)
    sw	$v0,0($a4)
    # Line 1142
    lw	$at,19376($at)
    # Line 1143
    b	.L0dab1310
    # Line 1142
    sw	$at,4($a4)
.L0dab1344:
    # Line 1081
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab1364:
    # Line 1103
    lui	$a6,0xffff
    sll	$a5,$a7,0x2
    subu	$a5,$a5,$a7
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$t0
    addu	$a5,$a5,$a6
    lw	$a3,10448($a5)
    lw	$a5,10452($a5)
    mult	$a3,$a5
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$t0
    # lw $t9, -28520($gp) # &__glConvertResult
    lw	$a2,14928($a2)
    mflo	$a5
    bal __glConvertResult
    li	$a3,3
    b	.L0dab1310
    ld	$ra,8($sp)
.L0dab13b8:
    # Line 1133
    lui	$a5,0xfffe
    sll	$a3,$a7,0x2
    addu	$a3,$a3,$a7
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$t0
    addu	$a3,$a3,$a5
    lw	$a6,19376($a3)
    lw	$a5,19372($a3)
    mult	$a5,$a6
    lw	$a3,19368($a3)
    mflo	$a5
    nop
    nop
    mult	$a3,$a5
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$t0
    # lw $t9, -28520($gp) # &__glConvertResult
    lw	$a2,14836($a2)
    mflo	$a5
    bal __glConvertResult
    li	$a3,3
    b	.L0dab1310
    ld	$ra,8($sp)
.L0dab1420:
    # Line 1107
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,2
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xffff
    ori	$a6,$a6,0x28d8
    # lw $t9, -28520($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$t0
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0dab1310
    ld	$ra,8($sp)
.L0dab1460:
    # Line 1137
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xfffe
    ori	$a6,$a6,0x4bb4
    # lw $t9, -28520($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$t0
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0dab1310
    ld	$ra,8($sp)
.end __glim_GetMapiv

# Function: __glim_GetPixelMapfv
# Declared: Line 1157 (Source lines: 1158-1198)
# Address: 0x0dab14a0 - 0x0dab16cc (Size: 556 bytes, Frame: 32)
.globl __glim_GetPixelMapfv
.ent __glim_GetPixelMapfv
__glim_GetPixelMapfv:
    # Line 1163
    lw	$a4,__glCurrentContext
    # Line 1167
    addiu	$a5,$a0,-3184
    # Line 1163
    li	$v0,1
    # Line 1158
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 1163
    lw	$at,__glBeginMode
    # Line 1158
    lui	$v1,0x14
    addiu	$v1,$v1,25544
    # Line 1163
    beq	$at,$v0,.L0dab16ac
    # Line 1158
    nop
    # Line 1167
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a5,10
    sll	$a5,$a5,0x2
    lui	$at,%hi(jtbl_0dbeba88)
    beqz	$a2,.L0dab168c
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbeba88)($a5)
    # Line 1187
    sll	$a5,$a0,0x2
    # Line 1167
    jr	$at
    nop
.L0dab14f4:
    # Line 1175
    lui	$at,0xffff
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a4
    addu	$a5,$a5,$at
    # Line 1177
    lw	$a1,28280($a5)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab15d8
    # Line 1175
    lw	$a5,28288($a5)
    # Line 1177
    addiu	$a6,$a1,1
    andi	$a0,$a6,0x3
    beqz	$a0,.L0dab155c
    move	$t0,$a1
.L0dab1530:
    # Line 1178
    lw	$at,0($a5)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1177
    addiu	$a1,$a1,-1
    # Line 1178
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab1530
    swc1	$f0,-4($a3)
    move	$t0,$a1
.L0dab155c:
    move	$t1,$a5
    move	$a7,$a3
    sra	$v0,$a6,0x2
    beqz	$v0,.L0dab15d8
    move	$a3,$a7
    move	$a1,$t0
    move	$a0,$t1
.L0dab1578:
    lw	$v0,0($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a3)
    lw	$at,4($a0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lw	$a2,8($a0)
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lw	$v1,12($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a3,$a3,16
    addiu	$a0,$a0,16
    # Line 1177
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0dab1578
    # Line 1178
    swc1	$f1,-4($a3)
.L0dab15d8:
    # Line 1198
    jr	$ra
    addiu	$sp,$sp,32
.L0dab15e0:
    # Line 1187
    lui	$at,0xffff
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a4
    addu	$a5,$a5,$at
    # Line 1189
    lw	$a1,28280($a5)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab15d8
    # Line 1187
    lw	$a5,28288($a5)
    # Line 1189
    addiu	$a6,$a1,1
    andi	$a0,$a6,0x3
    beqz	$a0,.L0dab1638
    move	$a7,$a5
.L0dab1618:
    addiu	$a1,$a1,-1
    # Line 1190
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    lwc1	$f1,-4($a5)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab1618
    swc1	$f1,-4($a3)
    move	$a7,$a5
.L0dab1638:
    move	$t1,$a1
    move	$t0,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0dab1684
    move	$a1,$t0
    move	$a3,$t1
    move	$a0,$a7
.L0dab1654:
    lwc1	$f1,0($a0)
    swc1	$f1,0($a1)
    lwc1	$f0,4($a0)
    swc1	$f0,4($a1)
    lwc1	$f3,8($a0)
    addiu	$a1,$a1,16
    swc1	$f3,-8($a1)
    addiu	$a0,$a0,16
    lwc1	$f2,-4($a0)
    # Line 1189
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0dab1654
    # Line 1190
    swc1	$f2,-4($a1)
.L0dab1684:
    b	.L0dab15d8
    nop
.L0dab168c:
    # Line 1195
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1196
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab16ac:
    # Line 1163
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapfv

# Function: __glim_GetPixelMapuiv
# Declared: Line 1200 (Source lines: 1201-1238)
# Address: 0x0dab16cc - 0x0dab1940 (Size: 628 bytes, Frame: 32)
.globl __glim_GetPixelMapuiv
.ent __glim_GetPixelMapuiv
__glim_GetPixelMapuiv:
    # Line 1206
    lw	$a5,__glCurrentContext
    # Line 1210
    addiu	$a4,$a0,-3184
    # Line 1206
    li	$v0,1
    # Line 1201
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 1206
    lw	$at,__glBeginMode
    # Line 1201
    lui	$v1,0x14
    addiu	$v1,$v1,24988
    # Line 1206
    beq	$at,$v0,.L0dab1920
    # Line 1201
    nop
    # Line 1210
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a4,10
    sll	$a4,$a4,0x2
    lui	$at,%hi(jtbl_0dbebab0)
    beqz	$a2,.L0dab1900
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbebab0)($a4)
    # Line 1229
    li	$a4,-1
    # Line 1210
    jr	$at
    nop
.L0dab1720:
    # Line 1215
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1217
    lw	$a1,28280($a6)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab17c8
    # Line 1215
    lw	$a6,28288($a6)
    # Line 1217
    addiu	$a5,$a1,1
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab177c
    move	$t1,$a1
.L0dab175c:
    addiu	$a1,$a1,-1
    # Line 1218
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    lw	$at,-4($a6)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab175c
    sw	$at,-4($a3)
    move	$t1,$a1
.L0dab177c:
    move	$a7,$a6
    move	$t0,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dab17c8
    move	$a3,$t0
    move	$a1,$t1
    move	$a0,$a7
.L0dab1798:
    lw	$v0,0($a0)
    sw	$v0,0($a3)
    lw	$at,4($a0)
    sw	$at,4($a3)
    lw	$a2,8($a0)
    addiu	$a3,$a3,16
    sw	$a2,-8($a3)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 1217
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0dab1798
    # Line 1218
    sw	$v1,-4($a3)
.L0dab17c8:
    # Line 1238
    jr	$ra
    addiu	$sp,$sp,32
.L0dab17d0:
    # Line 1227
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1229
    lw	$a1,28280($a6)
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab17c8
    # Line 1227
    lw	$a6,28288($a6)
    # Line 1229
    addiu	$a7,$a1,1
    andi	$a0,$a7,0x3
    beqz	$a0,.L0dab1840
    move	$t2,$a1
.L0dab1808:
    # Line 1230
    lwc1	$f1,0($a6)
    lwc1	$f2,3304($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    # Line 1229
    addiu	$a1,$a1,-1
    # Line 1230
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    dmfc1	$at,$f0
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab1808
    sw	$at,-4($a3)
    move	$t2,$a1
.L0dab1840:
    move	$t0,$a6
    move	$t1,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dab18f8
    move	$a3,$t1
    move	$a0,$t2
    move	$a1,$t0
.L0dab185c:
    lwc1	$f1,0($a1)
    lwc1	$f2,3304($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    nop
    sw	$v0,0($a3)
    lwc1	$f2,4($a1)
    lwc1	$f3,3304($a5)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a5)
    add.s	$f1,$f1,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$at,$f1
    nop
    sw	$at,4($a3)
    lwc1	$f3,8($a1)
    lwc1	$f0,3304($a5)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a5)
    add.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$a2,$f2
    nop
    sw	$a2,8($a3)
    lwc1	$f0,12($a1)
    lwc1	$f1,3304($a5)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a5)
    add.s	$f3,$f3,$f0
    trunc.l.s	$f3,$f3
    addiu	$a3,$a3,16
    addiu	$a1,$a1,16
    dmfc1	$v1,$f3
    # Line 1229
    addiu	$a0,$a0,-4
    bne	$a0,$a4,.L0dab185c
    # Line 1230
    sw	$v1,-4($a3)
.L0dab18f8:
    b	.L0dab17c8
    nop
.L0dab1900:
    # Line 1235
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1236
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab1920:
    # Line 1206
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapuiv

# Function: __glim_GetPixelMapusv
# Declared: Line 1240 (Source lines: 1241-1278)
# Address: 0x0dab1940 - 0x0dab1bb4 (Size: 628 bytes, Frame: 32)
.globl __glim_GetPixelMapusv
.ent __glim_GetPixelMapusv
__glim_GetPixelMapusv:
    # Line 1246
    lw	$a5,__glCurrentContext
    # Line 1250
    addiu	$a4,$a0,-3184
    # Line 1246
    li	$v0,1
    # Line 1241
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 1246
    lw	$at,__glBeginMode
    # Line 1241
    lui	$v1,0x14
    addiu	$v1,$v1,24360
    # Line 1246
    beq	$at,$v0,.L0dab1b94
    # Line 1241
    nop
    # Line 1250
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a4,10
    sll	$a4,$a4,0x2
    lui	$at,%hi(jtbl_0dbebad8)
    beqz	$a2,.L0dab1b74
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbebad8)($a4)
    # Line 1269
    li	$a4,-1
    # Line 1250
    jr	$at
    nop
.L0dab1994:
    # Line 1255
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1257
    lw	$a1,28280($a6)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab1a3c
    # Line 1255
    lw	$a6,28288($a6)
    # Line 1257
    addiu	$a5,$a1,1
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab19f0
    move	$t1,$a1
.L0dab19d0:
    addiu	$a1,$a1,-1
    # Line 1258
    addiu	$a3,$a3,2
    addiu	$a6,$a6,4
    lw	$at,-4($a6)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab19d0
    sh	$at,-2($a3)
    move	$t1,$a1
.L0dab19f0:
    move	$a7,$a6
    move	$t0,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dab1a3c
    move	$a3,$t0
    move	$a1,$t1
    move	$a0,$a7
.L0dab1a0c:
    lw	$v0,0($a0)
    sh	$v0,0($a3)
    lw	$at,4($a0)
    sh	$at,2($a3)
    lw	$a2,8($a0)
    addiu	$a3,$a3,8
    sh	$a2,-4($a3)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 1257
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0dab1a0c
    # Line 1258
    sh	$v1,-2($a3)
.L0dab1a3c:
    # Line 1278
    jr	$ra
    addiu	$sp,$sp,32
.L0dab1a44:
    # Line 1267
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1269
    lw	$a1,28280($a6)
    addiu	$a1,$a1,-1
    bltz	$a1,.L0dab1a3c
    # Line 1267
    lw	$a6,28288($a6)
    # Line 1269
    addiu	$a7,$a1,1
    andi	$a0,$a7,0x3
    beqz	$a0,.L0dab1ab4
    move	$t2,$a1
.L0dab1a7c:
    # Line 1270
    lwc1	$f1,0($a6)
    lwc1	$f2,3296($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 1269
    addiu	$a1,$a1,-1
    # Line 1270
    addiu	$a3,$a3,2
    addiu	$a6,$a6,4
    mfc1	$at,$f0
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab1a7c
    sh	$at,-2($a3)
    move	$t2,$a1
.L0dab1ab4:
    move	$t0,$a6
    move	$t1,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dab1b6c
    move	$a3,$t1
    move	$a0,$t2
    move	$a1,$t0
.L0dab1ad0:
    lwc1	$f1,0($a1)
    lwc1	$f2,3296($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,0($a3)
    lwc1	$f2,4($a1)
    lwc1	$f3,3296($a5)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a5)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sh	$at,2($a3)
    lwc1	$f3,8($a1)
    lwc1	$f0,3296($a5)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a5)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    sh	$a2,4($a3)
    lwc1	$f0,12($a1)
    lwc1	$f1,3296($a5)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a5)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addiu	$a3,$a3,8
    addiu	$a1,$a1,16
    mfc1	$v1,$f3
    # Line 1269
    addiu	$a0,$a0,-4
    bne	$a0,$a4,.L0dab1ad0
    # Line 1270
    sh	$v1,-2($a3)
.L0dab1b6c:
    b	.L0dab1a3c
    nop
.L0dab1b74:
    # Line 1275
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1276
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab1b94:
    # Line 1246
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapusv

# Function: __glConvertResult
# Declared: Line 1285 (Source lines: 1287-1439)
# Address: 0x0dab1bb4 - 0x0dab2a70 (Size: 3772 bytes, Frame: 240)
.globl __glConvertResult
.ent __glConvertResult
__glConvertResult:
    # Line 1287
    addiu	$sp,$sp,-112
    sd	$s1,0($sp)
    move	$s1,$a0
    # sd	gp,24(sp)
    lui	$at,0x14
    addiu	$at,$at,23732
    # Line 1290
    beqz	$a1,.L0dab1cc0
    # Line 1287
    nop
    # Line 1290
    li	$v0,5
    beq	$a1,$v0,.L0dab1dc4
    li	$v1,6
    beq	$a1,$v1,.L0dab1ec8
    li	$a0,3
    beq	$a1,$a0,.L0dab1fcc
    ld	$s1,0($sp)
    li	$a7,4
    beq	$a1,$a7,.L0dab1c08
.L0dab1bf8:
    nop
.L0dab1bfc:
    # Line 1439
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab1c08:
    # Line 1414
    li	$a6,1
    beq	$a3,$a6,.L0dab2090
    li	$at,2
    beq	$a3,$at,.L0dab21fc
    nop
    beq	$a3,$a0,.L0dab2404
    nop
    bne	$a3,$a7,.L0dab1bfc
    nop
    # Line 1431
    blez	$a5,.L0dab1bf8
    move	$a3,$a2
    move	$a1,$a4
    move	$t0,$a5
    andi	$a7,$a5,0x3
    beqz	$a7,.L0dab1c64
    addu	$a0,$a5,$a2
.L0dab1c48:
    addiu	$a3,$a3,1
    # Line 1432
    lbu	$v0,-1($a3)
    # Line 1431
    addiu	$a1,$a1,1
    addi	$a7,$a7,-1
    # Line 1432
    sltu	$v0,$zero,$v0
    bnez	$a7,.L0dab1c48
    sb	$v0,-1($a1)
.L0dab1c64:
    move	$a5,$a1
    sra	$v1,$t0,0x2
    beqz	$v1,.L0dab1cb8
    move	$a4,$a3
    move	$a1,$a5
    move	$a2,$a4
.L0dab1c7c:
    lbu	$v1,0($a2)
    sltu	$v1,$zero,$v1
    sb	$v1,0($a1)
    lbu	$v0,1($a2)
    sltu	$v0,$zero,$v0
    sb	$v0,1($a1)
    lbu	$at,2($a2)
    sltu	$at,$zero,$at
    sb	$at,2($a1)
    lbu	$a6,3($a2)
    # Line 1431
    addiu	$a1,$a1,4
    addiu	$a2,$a2,4
    # Line 1432
    sltu	$a6,$zero,$a6
    # Line 1431
    bne	$a2,$a0,.L0dab1c7c
    # Line 1432
    sb	$a6,-1($a1)
.L0dab1cb8:
    b	.L0dab1bfc
    nop
.L0dab1cc0:
    # Line 1292
    li	$a6,1
    beq	$a3,$a6,.L0dab2158
    li	$at,2
    beq	$a3,$at,.L0dab22b8
    li	$v0,3
    beq	$a3,$v0,.L0dab2490
    li	$v1,4
    bne	$a3,$v1,.L0dab1bf8
    ld	$s1,0($sp)
    # Line 1312
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab1d30
    addu	$a0,$a5,$a4
.L0dab1d08:
    # Line 1313
    lwc1	$f0,0($s4)
    c.eq.s	$f0,$f4
    li	$a6,1
    bc1tl	.L0dab1d1c
    move	$a6,$zero
.L0dab1d1c:
    # Line 1312
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0dab1d08
    # Line 1313
    sb	$a6,-1($a1)
.L0dab1d30:
    move	$a4,$a1
    move	$a3,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0dab1dbc
    ld	$s4,32($sp)
    move	$a1,$a4
    move	$a2,$a3
    ld	$s4,32($sp)
.L0dab1d50:
    lwc1	$f0,0($a2)
    c.eq.s	$f0,$f4
    li	$at,1
    bc1tl	.L0dab1d64
    move	$at,$zero
.L0dab1d64:
    sb	$at,0($a1)
    lwc1	$f3,4($a2)
    c.eq.s	$f3,$f4
    li	$a6,1
    bc1tl	.L0dab1d7c
    move	$a6,$zero
.L0dab1d7c:
    sb	$a6,1($a1)
    lwc1	$f2,8($a2)
    c.eq.s	$f2,$f4
    li	$v1,1
    bc1tl	.L0dab1d94
    move	$v1,$zero
.L0dab1d94:
    sb	$v1,2($a1)
    lwc1	$f1,12($a2)
    c.eq.s	$f1,$f4
    li	$v0,1
    bc1tl	.L0dab1dac
    move	$v0,$zero
.L0dab1dac:
    # Line 1312
    addiu	$a2,$a2,16
    addiu	$a1,$a1,4
    bne	$a1,$a0,.L0dab1d50
    # Line 1313
    sb	$v0,-1($a1)
.L0dab1dbc:
    b	.L0dab1bfc
    nop
.L0dab1dc4:
    # Line 1320
    li	$v0,1
    beq	$a3,$v0,.L0dab2360
    li	$v1,2
    beq	$a3,$v1,.L0dab24e0
    li	$a6,3
    beq	$a3,$a6,.L0dab2628
    li	$at,4
    bne	$a3,$at,.L0dab1bf8
    ld	$s1,0($sp)
    # Line 1338
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab1e34
    addu	$a0,$a5,$a4
.L0dab1e0c:
    # Line 1339
    lwc1	$f1,0($s4)
    c.eq.s	$f1,$f4
    li	$v0,1
    bc1tl	.L0dab1e20
    move	$v0,$zero
.L0dab1e20:
    # Line 1338
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0dab1e0c
    # Line 1339
    sb	$v0,-1($a1)
.L0dab1e34:
    move	$a4,$a1
    move	$a3,$s4
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dab1ec0
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0dab1e54:
    lwc1	$f1,0($a1)
    c.eq.s	$f1,$f4
    li	$v1,1
    bc1tl	.L0dab1e68
    move	$v1,$zero
.L0dab1e68:
    sb	$v1,0($a2)
    lwc1	$f0,4($a1)
    c.eq.s	$f0,$f4
    li	$v0,1
    bc1tl	.L0dab1e80
    move	$v0,$zero
.L0dab1e80:
    sb	$v0,1($a2)
    lwc1	$f3,8($a1)
    c.eq.s	$f3,$f4
    li	$at,1
    bc1tl	.L0dab1e98
    move	$at,$zero
.L0dab1e98:
    sb	$at,2($a2)
    lwc1	$f2,12($a1)
    c.eq.s	$f2,$f4
    li	$a6,1
    bc1tl	.L0dab1eb0
    move	$a6,$zero
.L0dab1eb0:
    # Line 1338
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0dab1e54
    # Line 1339
    sb	$a6,-1($a2)
.L0dab1ec0:
    b	.L0dab1bfc
    nop
.L0dab1ec8:
    # Line 1346
    li	$a6,1
    beq	$a3,$a6,.L0dab28e0
    li	$at,2
    beq	$a3,$at,.L0dab2924
    li	$v0,3
    beq	$a3,$v0,.L0dab2978
    li	$v1,4
    bne	$a3,$v1,.L0dab1bf8
    ld	$s1,0($sp)
    # Line 1382
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab1f38
    addu	$a0,$a5,$a4
.L0dab1f10:
    # Line 1383
    lwc1	$f2,0($s4)
    c.eq.s	$f2,$f4
    li	$a6,1
    bc1tl	.L0dab1f24
    move	$a6,$zero
.L0dab1f24:
    # Line 1382
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0dab1f10
    # Line 1383
    sb	$a6,-1($a1)
.L0dab1f38:
    move	$a3,$a1
    move	$a4,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0dab1fc4
    ld	$s4,32($sp)
    move	$a2,$a3
    move	$a1,$a4
    ld	$s4,32($sp)
.L0dab1f58:
    lwc1	$f2,0($a1)
    c.eq.s	$f2,$f4
    li	$at,1
    bc1tl	.L0dab1f6c
    move	$at,$zero
.L0dab1f6c:
    sb	$at,0($a2)
    lwc1	$f1,4($a1)
    c.eq.s	$f1,$f4
    li	$a6,1
    bc1tl	.L0dab1f84
    move	$a6,$zero
.L0dab1f84:
    sb	$a6,1($a2)
    lwc1	$f0,8($a1)
    c.eq.s	$f0,$f4
    li	$v1,1
    bc1tl	.L0dab1f9c
    move	$v1,$zero
.L0dab1f9c:
    sb	$v1,2($a2)
    lwc1	$f3,12($a1)
    c.eq.s	$f3,$f4
    li	$v0,1
    bc1tl	.L0dab1fb4
    move	$v0,$zero
.L0dab1fb4:
    # Line 1382
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0dab1f58
    # Line 1383
    sb	$v0,-1($a2)
.L0dab1fc4:
    b	.L0dab1bfc
    nop
.L0dab1fcc:
    # Line 1390
    li	$v0,1
    beq	$a3,$v0,.L0dab2694
    li	$v1,2
    beq	$a3,$v1,.L0dab2770
    nop
    beq	$a3,$a0,.L0dab283c
    li	$a6,4
    bne	$a3,$a6,.L0dab1bfc
    nop
    # Line 1407
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    move	$a1,$a4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab202c
    addu	$a0,$a5,$a4
.L0dab2010:
    addiu	$a1,$a1,1
    # Line 1408
    lw	$at,0($s4)
    # Line 1407
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    # Line 1408
    sltu	$at,$zero,$at
    bnez	$a3,.L0dab2010
    sb	$at,-1($a1)
.L0dab202c:
    move	$a4,$a1
    move	$a3,$s4
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dab2088
    ld	$s4,32($sp)
    move	$a1,$a4
    move	$a2,$a3
    ld	$s4,32($sp)
.L0dab204c:
    lw	$v0,0($a2)
    sltu	$v0,$zero,$v0
    sb	$v0,0($a1)
    lw	$at,4($a2)
    sltu	$at,$zero,$at
    sb	$at,1($a1)
    lw	$a6,8($a2)
    sltu	$a6,$zero,$a6
    sb	$a6,2($a1)
    lw	$v1,12($a2)
    # Line 1407
    addiu	$a2,$a2,16
    addiu	$a1,$a1,4
    # Line 1408
    sltu	$v1,$zero,$v1
    # Line 1407
    bne	$a1,$a0,.L0dab204c
    # Line 1408
    sb	$v1,-1($a1)
.L0dab2088:
    b	.L0dab1bfc
    nop
.L0dab2090:
    # Line 1416
    blez	$a5,.L0dab1bf8
    sd	$s5,40($sp)
    move	$a3,$a2
    move	$s5,$a4
    move	$a7,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dab20d4
    addu	$a0,$a5,$a2
.L0dab20b0:
    # Line 1417
    lbu	$v1,0($a3)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1416
    addiu	$a3,$a3,1
    addiu	$s5,$s5,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0dab20b0
    # Line 1417
    swc1	$f3,-4($s5)
.L0dab20d4:
    move	$a4,$a3
    move	$a5,$s5
    sra	$a6,$a7,0x2
    beqz	$a6,.L0dab2150
    ld	$s5,40($sp)
    move	$a1,$a5
    move	$a2,$a4
    ld	$s5,40($sp)
.L0dab20f4:
    lbu	$a6,0($a2)
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a1)
    lbu	$v1,1($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a1)
    lbu	$v0,2($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a1)
    lbu	$at,3($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1416
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0dab20f4
    # Line 1417
    swc1	$f0,-4($a1)
.L0dab2150:
    b	.L0dab1bfc
    nop
.L0dab2158:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    # Line 1294
    blez	$a5,.L0dab1bf8
    ld	$s1,0($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab21a0
    addu	$s6,$s6,$a4
.L0dab2188:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1295
    lwc1	$f0,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab2188
    swc1	$f0,-4($s5)
.L0dab21a0:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$at,$a1,0x2
    beqz	$at,.L0dab21f4
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0dab21c8:
    lwc1	$f0,0($a0)
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    swc1	$f2,8($a1)
    # Line 1294
    addiu	$a0,$a0,16
    # Line 1295
    lwc1	$f1,-4($a0)
    # Line 1294
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0dab21c8
    # Line 1295
    swc1	$f1,-4($a1)
.L0dab21f4:
    b	.L0dab1bf8
    ld	$s6,48($sp)
.L0dab21fc:
    # Line 1421
    blez	$a5,.L0dab1bf8
    move	$a3,$a2
    move	$a1,$a4
    move	$t0,$a5
    andi	$a7,$a5,0x3
    beqz	$a7,.L0dab223c
    addu	$a0,$a5,$a2
.L0dab2218:
    # Line 1422
    lbu	$v0,0($a3)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 1421
    addiu	$a3,$a3,1
    addiu	$a1,$a1,8
    addi	$a7,$a7,-1
    bnez	$a7,.L0dab2218
    # Line 1422
    sdc1	$f1,-8($a1)
.L0dab223c:
    move	$a5,$a1
    sra	$v1,$t0,0x2
    beqz	$v1,.L0dab22b0
    move	$a4,$a3
    move	$a1,$a5
    move	$a2,$a4
.L0dab2254:
    lbu	$v1,0($a2)
    mtc1	$v1,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,0($a1)
    lbu	$v0,1($a2)
    mtc1	$v0,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,8($a1)
    lbu	$at,2($a2)
    mtc1	$at,$f3
    nop
    cvt.d.w	$f3,$f3
    sdc1	$f3,16($a1)
    lbu	$a6,3($a2)
    mtc1	$a6,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1421
    addiu	$a1,$a1,32
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0dab2254
    # Line 1422
    sdc1	$f2,-8($a1)
.L0dab22b0:
    b	.L0dab1bfc
    nop
.L0dab22b8:
    sd	$s4,32($sp)
    # Line 1299
    blez	$a5,.L0dab1bf8
    ld	$s1,0($sp)
    move	$a1,$a4
    move	$s4,$a2
    sll	$a0,$a5,0x2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab22fc
    addu	$a0,$a0,$a2
.L0dab22e0:
    addiu	$s4,$s4,4
    # Line 1300
    lwc1	$f2,-4($s4)
    # Line 1299
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    # Line 1300
    cvt.d.s	$f2,$f2
    bnez	$a3,.L0dab22e0
    sdc1	$f2,-8($a1)
.L0dab22fc:
    move	$a4,$a1
    move	$a3,$s4
    sra	$a6,$a7,0x2
    beqz	$a6,.L0dab2358
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0dab231c:
    lwc1	$f2,0($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a2)
    lwc1	$f1,4($a1)
    cvt.d.s	$f1,$f1
    sdc1	$f1,8($a2)
    lwc1	$f0,8($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,16($a2)
    lwc1	$f3,12($a1)
    # Line 1299
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    # Line 1300
    cvt.d.s	$f3,$f3
    # Line 1299
    bne	$a1,$a0,.L0dab231c
    # Line 1300
    sdc1	$f3,-8($a2)
.L0dab2358:
    b	.L0dab1bfc
    nop
.L0dab2360:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    # Line 1322
    blez	$a5,.L0dab1bf8
    ld	$s1,0($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab23a8
    addu	$s6,$s6,$a4
.L0dab2390:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1323
    lwc1	$f3,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab2390
    swc1	$f3,-4($s5)
.L0dab23a8:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$at,$a1,0x2
    beqz	$at,.L0dab23fc
    ld	$s5,40($sp)
    move	$a0,$a3
    move	$a1,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0dab23d0:
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    # Line 1322
    addiu	$a1,$a1,16
    # Line 1323
    lwc1	$f0,-4($a1)
    # Line 1322
    addiu	$a0,$a0,16
    bne	$a0,$s6,.L0dab23d0
    # Line 1323
    swc1	$f0,-4($a0)
.L0dab23fc:
    b	.L0dab1bf8
    ld	$s6,48($sp)
.L0dab2404:
    # Line 1426
    blez	$a5,.L0dab1bf8
    sd	$s5,40($sp)
    move	$a3,$a2
    move	$s5,$a4
    move	$a7,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dab243c
    addu	$a0,$a5,$a2
.L0dab2424:
    addiu	$a3,$a3,1
    addiu	$s5,$s5,4
    # Line 1427
    lbu	$v0,-1($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dab2424
    sw	$v0,-4($s5)
.L0dab243c:
    move	$a4,$a3
    move	$a5,$s5
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dab2488
    ld	$s5,40($sp)
    move	$a2,$a5
    move	$a1,$a4
    ld	$s5,40($sp)
.L0dab245c:
    lbu	$v1,0($a1)
    sw	$v1,0($a2)
    lbu	$v0,1($a1)
    sw	$v0,4($a2)
    lbu	$at,2($a1)
    sw	$at,8($a2)
    # Line 1426
    addiu	$a2,$a2,16
    # Line 1427
    lbu	$a6,3($a1)
    # Line 1426
    addiu	$a1,$a1,4
    bne	$a1,$a0,.L0dab245c
    # Line 1427
    sw	$a6,-4($a2)
.L0dab2488:
    b	.L0dab1bfc
    nop
.L0dab2490:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    # Line 1304
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    dmtc1	$zero,$f7
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a0,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0dab25a0
    addu	$s6,$s6,$a4
    lwc1	$f5,0($s4)
    cvt.d.s	$f4,$f5
    c.le.d	$f7,$f4
    nop
    bc1f	.L0dab2588
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0dab258c
    add.s	$f6,$f4,$f5
.L0dab24e0:
    sd	$s4,32($sp)
    # Line 1327
    blez	$a5,.L0dab1bf8
    ld	$s1,0($sp)
    move	$a1,$a4
    move	$s4,$a2
    sll	$a0,$a5,0x2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab2524
    addu	$a0,$a0,$a2
.L0dab2508:
    addiu	$s4,$s4,4
    # Line 1328
    lwc1	$f0,-4($s4)
    # Line 1327
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    # Line 1328
    cvt.d.s	$f0,$f0
    bnez	$a3,.L0dab2508
    sdc1	$f0,-8($a1)
.L0dab2524:
    move	$a4,$a1
    move	$a3,$s4
    sra	$a6,$a7,0x2
    beqz	$a6,.L0dab2580
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0dab2544:
    lwc1	$f0,0($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a2)
    lwc1	$f3,4($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    lwc1	$f2,8($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a2)
    lwc1	$f1,12($a1)
    # Line 1327
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    # Line 1328
    cvt.d.s	$f1,$f1
    # Line 1327
    bne	$a1,$a0,.L0dab2544
    # Line 1328
    sdc1	$f1,-8($a2)
.L0dab2580:
    b	.L0dab1bfc
    nop
.L0dab2588:
    # Line 1305
    sub.s	$f6,$f5,$f4
.L0dab258c:
    trunc.w.s	$f1,$f6
    mfc1	$at,$f1
    # Line 1304
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1305
    sw	$at,-4($s5)
.L0dab25a0:
    sra	$v0,$a0,0x1
    bnezl	$v0,.L0dab25d4
    # Line 1304
    lwc1	$f5,0($s4)
.L0dab25ac:
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    b	.L0dab1bf8
    ld	$s6,48($sp)
.L0dab25bc:
    # Line 1305
    sub.s	$f6,$f5,$f4
.L0dab25c0:
    trunc.w.s	$f2,$f6
    mfc1	$v1,$f2
    # Line 1304
    beq	$s5,$s6,.L0dab25ac
    # Line 1305
    sw	$v1,-4($s5)
    # Line 1304
    lwc1	$f5,0($s4)
.L0dab25d4:
    cvt.d.s	$f3,$f5
    c.le.d	$f7,$f3
    nop
    bc1f	.L0dab25f0
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0dab25f4
    add.s	$f6,$f4,$f5
.L0dab25f0:
    sub.s	$f6,$f5,$f4
.L0dab25f4:
    trunc.w.s	$f5,$f6
    mfc1	$a6,$f5
    nop
    sw	$a6,0($s5)
    # Line 1304
    lwc1	$f5,4($s4)
    cvt.d.s	$f4,$f5
    c.le.d	$f7,$f4
    addiu	$s4,$s4,8
    addiu	$s5,$s5,8
    bc1f	.L0dab25bc
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0dab25c0
    add.s	$f6,$f4,$f5
.L0dab2628:
    # Line 1332
    blez	$a5,.L0dab1bf8
    sd	$s6,48($sp)
    sd	$ra,56($sp)
    sd	$s5,40($sp)
    move	$s5,$a4
    sd	$s4,32($sp)
    move	$s4,$a2
    sll	$s6,$a5,0x2
    addu	$s6,$s6,$a4
.L0dab264c:
    # Line 1333
    lwc1	$f14,0($s4)
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # Line 1332
    addiu	$s4,$s4,4
    # Line 1333
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    # Line 1332
    addiu	$s5,$s5,4
    # Line 1333
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    # Line 1332
    bne	$s5,$s6,.L0dab264c
    # Line 1333
    sw	$at,-4($s5)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    ld	$s6,48($sp)
    b	.L0dab1bf8
    ld	$ra,56($sp)
.L0dab2694:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    # Line 1392
    blez	$a5,.L0dab1bf8
    sd	$s4,32($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab26e4
    addu	$s6,$s6,$a4
.L0dab26c0:
    # Line 1393
    lw	$at,0($s4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 1392
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab26c0
    # Line 1393
    swc1	$f1,-4($s5)
.L0dab26e4:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$v0,$a1,0x2
    beqz	$v0,.L0dab2768
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0dab270c:
    lw	$v0,0($a0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a1)
    lw	$at,4($a0)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a1)
    lw	$a6,8($a0)
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,8($a1)
    lw	$v1,12($a0)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1392
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0dab270c
    # Line 1393
    swc1	$f2,-4($a1)
.L0dab2768:
    b	.L0dab1bf8
    ld	$s6,48($sp)
.L0dab2770:
    # Line 1397
    blez	$a5,.L0dab1bf8
    move	$a1,$a4
    sd	$s4,32($sp)
    move	$s4,$a2
    move	$a7,$a5
    sll	$a0,$a5,0x2
    andi	$a3,$a5,0x3
    beqz	$a3,.L0dab27b8
    addu	$a0,$a0,$a2
.L0dab2794:
    # Line 1398
    lw	$a6,0($s4)
    mtc1	$a6,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1397
    addiu	$s4,$s4,4
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    bnez	$a3,.L0dab2794
    # Line 1398
    sdc1	$f2,-8($a1)
.L0dab27b8:
    move	$a4,$a1
    move	$a3,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0dab2834
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0dab27d8:
    lw	$at,0($a1)
    mtc1	$at,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,0($a2)
    lw	$a6,4($a1)
    mtc1	$a6,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,8($a2)
    lw	$v1,8($a1)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,16($a2)
    lw	$v0,12($a1)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 1397
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    bne	$a1,$a0,.L0dab27d8
    # Line 1398
    sdc1	$f3,-8($a2)
.L0dab2834:
    b	.L0dab1bfc
    nop
.L0dab283c:
    # Line 1402
    blez	$a5,.L0dab1bfc
    nop
    sd	$s4,32($sp)
    move	$s4,$a2
    sd	$s5,40($sp)
    move	$s5,$a4
    move	$a1,$a5
    sd	$s6,48($sp)
    sll	$s6,$a5,0x2
    andi	$a0,$a5,0x3
    beqz	$a0,.L0dab2884
    addu	$s6,$s6,$a4
.L0dab286c:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1403
    lw	$at,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dab286c
    sw	$at,-4($s5)
.L0dab2884:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$v0,$a1,0x2
    beqz	$v0,.L0dab28d8
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0dab28ac:
    lw	$v0,0($a0)
    sw	$v0,0($a1)
    lw	$at,4($a0)
    sw	$at,4($a1)
    lw	$a6,8($a0)
    sw	$a6,8($a1)
    # Line 1402
    addiu	$a0,$a0,16
    # Line 1403
    lw	$v1,-4($a0)
    # Line 1402
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0dab28ac
    # Line 1403
    sw	$v1,-4($a1)
.L0dab28d8:
    b	.L0dab1bf8
    ld	$s6,48($sp)
.L0dab28e0:
    # Line 1348
    lwc1	$f1,0($a2)
    lwc1	$f2,30804($s1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 1350
    lwc1	$f3,4($a2)
    lwc1	$f0,30808($s1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,4($a4)
    # Line 1352
    lwc1	$f1,8($a2)
    lwc1	$f2,30812($s1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($a4)
    # Line 1354
    lwc1	$f3,12($a2)
    lwc1	$f0,30816($s1)
    mul.s	$f3,$f3,$f0
    # Line 1356
    b	.L0dab1bf8
    # Line 1354
    swc1	$f3,12($a4)
.L0dab2924:
    # Line 1358
    lwc1	$f1,0($a2)
    lwc1	$f2,30804($s1)
    mul.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($a4)
    # Line 1360
    lwc1	$f3,4($a2)
    lwc1	$f0,30808($s1)
    mul.s	$f3,$f3,$f0
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a4)
    # Line 1362
    lwc1	$f1,8($a2)
    lwc1	$f2,30812($s1)
    mul.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a4)
    # Line 1364
    lwc1	$f3,12($a2)
    lwc1	$f0,30816($s1)
    mul.s	$f3,$f3,$f0
    cvt.d.s	$f3,$f3
    # Line 1366
    b	.L0dab1bf8
    # Line 1364
    sdc1	$f3,24($a4)
.L0dab2978:
    # Line 1368
    lwc1	$f15,30804($s1)
    lwc1	$f14,0($a2)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    sd	$a4,8($sp)
    mul.s	$f13,$f13,$f14
    sd	$a2,16($sp)
    move	$v1,$a2
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    sd	$ra,56($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$a2,8($sp)
    mfc1	$a1,$f16
    # Line 1371
    ld	$a0,16($sp)
    # Line 1368
    sw	$a1,0($a2)
    # Line 1371
    lwc1	$f15,30808($s1)
    lwc1	$f14,4($a0)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$a5,8($sp)
    mfc1	$a4,$f16
    # Line 1374
    ld	$a3,16($sp)
    # Line 1371
    sw	$a4,4($a5)
    # Line 1374
    lwc1	$f15,30812($s1)
    lwc1	$f14,8($a3)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$t0,8($sp)
    mfc1	$a7,$f16
    # Line 1377
    ld	$a6,16($sp)
    # Line 1374
    sw	$a7,8($t0)
    # Line 1377
    lwc1	$f15,30816($s1)
    lwc1	$f14,12($a6)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -22984($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 1380
    b	.L0dab1bf8
    ld	$ra,56($sp)
.end __glConvertResult

# Function: __glDoGet
# Declared: Line 1446 (Source lines: 1447-2253)
# Address: 0x0dab2a70 - 0x0dab5648 (Size: 11224 bytes, Frame: 160)
.globl __glDoGet
.ent __glDoGet
__glDoGet:
    # Line 1447
    move	$a3,$a2
    move	$a4,$a1
    # Line 1455
    li	$v0,1
    # Line 1447
    addiu	$sp,$sp,-1824
    sd	$s0,1736($sp)
    # Line 1455
    lw	$s0,__glCurrentContext
    # Line 1453
    addiu	$a7,$sp,1600
    sd	$s2,1712($sp)
    # Line 1452
    addiu	$s2,$sp,1200
    # Line 1451
    addiu	$t1,$sp,800
    # Line 1450
    addiu	$t0,$sp,400
    sd	$s1,1720($sp)
    # Line 1449
    addiu	$s1,$sp,0
    sd	$gp,1728($sp)
    # Line 1455
    lw	$at,__glBeginMode
    # Line 1447
    lui	$v1,0x14
    addiu	$v1,$v1,19960
    # Line 1455
    beq	$at,$v0,.L0dab33d8
    # Line 1447
    addu	$gp,$t9,$v1
    # Line 1455
    sltiu	$a5,$a0,3357
    bnez	$a5,.L0dab2b70
    # Line 1460
    sltiu	$at,$a0,3358
    bnez	$at,.L0dab2bc0
    li	$a1,0x8005
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab2dac
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab3070
    li	$a1,0x807d
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab310c
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab3624
    li	$a1,0x80b1
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab371c
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab3cc4
    li	$a1,0x80ba
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab417c
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab4a60
    li	$a1,0x80d1
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab4efc
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab2d60
    sd	$a7,1704($sp)
    li	$a1,0x817b
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab55e0
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab2b50
    li	$v0,0x817c
    bne	$a0,$v0,.L0dab3518
.L0dab2b50:
    # Line 2009
    addiu	$t2,$sp,1200
    # Line 2007
    addiu	$s1,$sp,0
    # Line 2008
    lwc1	$f1,_lit_41200000
    addiu	$s1,$s1,8
    # Line 2007
    lwc1	$f0,_lit_c1200000
    # Line 2008
    swc1	$f1,4($sp)
    # Line 2009
    b	.L0dab2bd4
    # Line 2007
    swc1	$f0,0($sp)
.L0dab2b70:
    # Line 1460
    sltiu	$at,$a0,2984
    bnez	$at,.L0dab2c20
    sltiu	$v0,$a0,2985
    bnez	$v0,.L0dab2e70
    sltiu	$v1,$a0,3248
    bnez	$v1,.L0dab2f4c
    sltiu	$a5,$a0,3249
    beqz	$a5,.L0dab31d8
.L0dab2b90:
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab2b94:
    # Line 2022
    lui	$at,0xffff
    ori	$at,$at,0x6b78
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    addu	$at,$at,$v0
    lw	$at,0($at)
    addiu	$s2,$t2,4
    # Line 2023
    b	.L0dab2bd4
    # Line 2022
    sw	$at,1200($sp)
.L0dab2bc0:
    # Line 1949
    addiu	$t2,$sp,1200
    # Line 1948
    lwc1	$f2,648($s0)
    addiu	$s1,$sp,0
    addiu	$s1,$s1,4
    swc1	$f2,0($sp)
.L0dab2bd4:
    # Line 2235
    addiu	$t3,$sp,0
    addiu	$a0,$sp,400
    addiu	$a1,$sp,800
    bne	$s2,$t2,.L0dab2e24
    addiu	$t8,$sp,1600
    # Line 2239
    bnel	$s1,$t3,.L0dab2e4c
    # Line 2242
    move	$a0,$s0
    bnel	$a7,$t8,.L0dab2f04
    # Line 2245
    move	$a0,$s0
    bne	$t0,$a0,.L0dab2f24
    # Line 2248
    move	$a0,$s0
    bne	$t1,$a1,.L0dab2d14
    # Line 2251
    move	$a0,$s0
.L0dab2c08:
    ld	$gp,1728($sp)
    # Line 2253
    ld	$s0,1736($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0dab2c20:
    # Line 1460
    sltiu	$at,$a0,2899
    bnez	$at,.L0dab2d3c
    sltiu	$v0,$a0,2900
    bnez	$v0,.L0dab3348
    sltiu	$v1,$a0,2960
    bnez	$v1,.L0dab30a0
    sltiu	$a5,$a0,2961
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    sltiu	$at,$a0,2976
    bnez	$at,.L0dab36c8
    sltiu	$v0,$a0,2977
    bnez	$v0,.L0dab3b18
    sltiu	$v1,$a0,2980
    bnez	$v1,.L0dab40b8
    sltiu	$a5,$a0,2981
    bnez	$a5,.L0dab4850
    sltiu	$at,$a0,2982
    bnez	$at,.L0dab4e18
    sltiu	$v0,$a0,2983
    bnez	$v0,.L0dab5390
    li	$v1,2983
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1766
    lw	$at,29672($s0)
    lwc1	$f2,0($at)
    swc1	$f2,0($sp)
    lwc1	$f1,4($at)
    swc1	$f1,4($sp)
    lwc1	$f0,8($at)
    swc1	$f0,8($sp)
    lwc1	$f3,12($at)
    swc1	$f3,12($sp)
    # Line 1767
    lwc1	$f2,16($at)
    swc1	$f2,16($sp)
    lwc1	$f1,20($at)
    swc1	$f1,20($sp)
    lwc1	$f0,24($at)
    swc1	$f0,24($sp)
    lwc1	$f3,28($at)
    swc1	$f3,28($sp)
    # Line 1768
    lwc1	$f2,32($at)
    swc1	$f2,32($sp)
    lwc1	$f1,36($at)
    swc1	$f1,36($sp)
    lwc1	$f0,40($at)
    swc1	$f0,40($sp)
    lwc1	$f3,44($at)
    swc1	$f3,44($sp)
    # Line 1769
    lwc1	$f2,48($at)
    swc1	$f2,48($sp)
    lwc1	$f1,52($at)
    swc1	$f1,52($sp)
    lwc1	$f0,56($at)
    # Line 1770
    addiu	$t2,$sp,1200
    # Line 1769
    swc1	$f0,56($sp)
    # Line 1765
    addiu	$s1,$sp,0
    # Line 1769
    lwc1	$f3,60($at)
    addiu	$s1,$s1,64
    # Line 1770
    b	.L0dab2bd4
    # Line 1769
    swc1	$f3,60($sp)
.L0dab2d14:
    # Line 2251
    addiu	$a2,$sp,800
    li	$a1,6
    sd	$ra,1744($sp)
    # lw $t9, -28520($gp) # &__glConvertResult
    addiu	$a5,$sp,800
    subu	$a5,$t1,$a5
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0dab2c08
    ld	$ra,1744($sp)
.L0dab2d3c:
    # Line 1460
    sltiu	$at,$a0,2851
    bnez	$at,.L0dab3014
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0dab3330
    sltiu	$v1,$a0,2881
    bnez	$v1,.L0dab3464
    sltiu	$a5,$a0,2882
    beqz	$a5,.L0dab38a4
    sd	$a7,1704($sp)
.L0dab2d60:
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    sd	$ra,1744($sp)
    # Line 1523
    # lw $t9, -29508($gp) # &__glim_IsEnabled
    addiu	$a6,$sp,1600
    addiu	$a6,$a6,1
    jal	__glim_IsEnabled
    sd	$a6,1704($sp)
    # Line 1524
    addiu	$t2,$sp,1200
    # Line 1523
    sb	$v0,1600($sp)
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    # Line 1524
    b	.L0dab2bd4
    ld	$ra,1744($sp)
.L0dab2dac:
    # Line 1460
    sltiu	$at,$a0,3479
    bnez	$at,.L0dab2fb0
    sltiu	$v0,$a0,3480
    bnez	$v0,.L0dab2d60
    sd	$a7,1704($sp)
    sltiu	$v1,$a0,3570
    bnez	$v1,.L0dab35d0
    sltiu	$a5,$a0,3571
    bnez	$a5,.L0dab3a34
    sltiu	$at,$a0,16384
    bnez	$at,.L0dab3c48
    sltiu	$v0,$a0,16385
    bnez	$v0,.L0dab2d60
    sltiu	$v1,$a0,16388
    bnez	$v1,.L0dab4b90
    sltiu	$a5,$a0,16389
    bnez	$a5,.L0dab2d60
    sltiu	$at,$a0,16390
    bnez	$at,.L0dab5544
    sltiu	$v0,$a0,16391
    bnez	$v0,.L0dab2d60
    li	$v1,16391
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab2e24:
    # Line 2239
    move	$a0,$s0
    addiu	$a2,$sp,1200
    li	$a1,3
    # lw $t9, -28520($gp) # &__glConvertResult
    sd	$ra,1744($sp)
    subu	$a5,$s2,$t2
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0dab2c08
    ld	$ra,1744($sp)
.L0dab2e4c:
    # Line 2242
    move	$a1,$zero
    addiu	$a2,$sp,0
    # lw $t9, -28520($gp) # &__glConvertResult
    sd	$ra,1744($sp)
    subu	$a5,$s1,$t3
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0dab2c08
    ld	$ra,1744($sp)
.L0dab2e70:
    # Line 1773
    lw	$at,29684($s0)
    lwc1	$f2,0($at)
    swc1	$f2,0($sp)
    lwc1	$f1,4($at)
    swc1	$f1,4($sp)
    lwc1	$f0,8($at)
    swc1	$f0,8($sp)
    lwc1	$f3,12($at)
    swc1	$f3,12($sp)
    # Line 1774
    lwc1	$f2,16($at)
    swc1	$f2,16($sp)
    lwc1	$f1,20($at)
    swc1	$f1,20($sp)
    lwc1	$f0,24($at)
    swc1	$f0,24($sp)
    lwc1	$f3,28($at)
    swc1	$f3,28($sp)
    # Line 1775
    lwc1	$f2,32($at)
    swc1	$f2,32($sp)
    lwc1	$f1,36($at)
    swc1	$f1,36($sp)
    lwc1	$f0,40($at)
    swc1	$f0,40($sp)
    lwc1	$f3,44($at)
    swc1	$f3,44($sp)
    # Line 1776
    lwc1	$f2,48($at)
    swc1	$f2,48($sp)
    lwc1	$f1,52($at)
    swc1	$f1,52($sp)
    lwc1	$f0,56($at)
    # Line 1777
    addiu	$t2,$sp,1200
    # Line 1776
    swc1	$f0,56($sp)
    # Line 1772
    addiu	$s1,$sp,0
    # Line 1776
    lwc1	$f3,60($at)
    addiu	$s1,$s1,64
    # Line 1777
    b	.L0dab2bd4
    # Line 1776
    swc1	$f3,60($sp)
.L0dab2f04:
    # Line 2245
    subu	$a5,$a7,$t8
    # lw $t9, -28520($gp) # &__glConvertResult
    addiu	$a2,$sp,1600
    sd	$ra,1744($sp)
    bal __glConvertResult
    li	$a1,4
    b	.L0dab2c08
    ld	$ra,1744($sp)
.L0dab2f24:
    # Line 2248
    addiu	$a2,$sp,400
    li	$a1,5
    sd	$ra,1744($sp)
    # lw $t9, -28520($gp) # &__glConvertResult
    addiu	$a5,$sp,400
    subu	$a5,$t0,$a5
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0dab2c08
    ld	$ra,1744($sp)
.L0dab2f4c:
    # Line 1460
    sltiu	$at,$a0,3104
    bnez	$at,.L0dab3180
    sltiu	$v0,$a0,3105
    bnez	$v0,.L0dab3684
    sltiu	$v1,$a0,3152
    bnez	$v1,.L0dab377c
    sltiu	$a5,$a0,3153
    bnez	$a5,.L0dab3ebc
    sltiu	$at,$a0,3168
    bnez	$at,.L0dab41e8
    sltiu	$v0,$a0,3169
    bnez	$v0,.L0dab2d60
    sltiu	$v1,$a0,3170
    bnez	$v1,.L0dab4ffc
    sltiu	$a5,$a0,3171
    bnez	$a5,.L0dab2d60
    li	$at,3171
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab2fb0:
    # Line 1460
    sltiu	$v0,$a0,3411
    bnez	$v0,.L0dab3238
    sltiu	$v1,$a0,3412
    bnez	$v1,.L0dab369c
    sltiu	$a5,$a0,3440
    bnez	$a5,.L0dab37b8
    sltiu	$at,$a0,3441
    bnez	$at,.L0dab3ee8
    sltiu	$v0,$a0,3475
    bnez	$v0,.L0dab4214
    sltiu	$v1,$a0,3476
    bnez	$v1,.L0dab2d60
    sltiu	$a5,$a0,3477
    bnez	$a5,.L0dab5080
    sltiu	$at,$a0,3478
    bnez	$at,.L0dab2d60
    li	$v0,3478
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3014:
    # Line 1460
    sltiu	$v1,$a0,2824
    bnez	$v1,.L0dab3284
    sltiu	$a5,$a0,2825
    bnez	$a5,.L0dab36b0
    sltiu	$at,$a0,2835
    bnez	$at,.L0dab383c
    sltiu	$v0,$a0,2836
    bnez	$v0,.L0dab3fd8
    sltiu	$v1,$a0,2849
    bnez	$v1,.L0dab42b0
    sltiu	$a5,$a0,2850
    bnez	$a5,.L0dab4d00
    li	$at,2850
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1620
    lwc1	$f0,3460($s0)
    # Line 1622
    addiu	$t2,$sp,1200
    # Line 1620
    swc1	$f0,0($sp)
    addiu	$s1,$sp,0
    # Line 1621
    lwc1	$f3,3464($s0)
    addiu	$s1,$s1,8
    # Line 1622
    b	.L0dab2bd4
    # Line 1621
    swc1	$f3,4($sp)
.L0dab3070:
    # Line 2129
    lwc1	$f0,1740($s0)
    swc1	$f0,400($sp)
    # Line 2130
    lwc1	$f3,1744($s0)
    swc1	$f3,404($sp)
    # Line 2131
    lwc1	$f2,1748($s0)
    # Line 2133
    addiu	$t2,$sp,1200
    # Line 2131
    swc1	$f2,408($sp)
    # Line 2129
    addiu	$t0,$sp,400
    # Line 2132
    lwc1	$f1,1752($s0)
    addiu	$t0,$t0,16
    # Line 2133
    b	.L0dab2bd4
    # Line 2132
    swc1	$f1,412($sp)
.L0dab30a0:
    # Line 1460
    sltiu	$at,$a0,2916
    bnez	$at,.L0dab3394
    sltiu	$v0,$a0,2917
    bnez	$v0,.L0dab3704
    sltiu	$v1,$a0,2930
    bnez	$v1,.L0dab3a94
    sltiu	$a5,$a0,2931
    bnez	$a5,.L0dab4164
    sltiu	$at,$a0,2932
    bnez	$at,.L0dab46e4
    sltiu	$v0,$a0,2933
    bnez	$v0,.L0dab4ed4
    li	$v1,2944
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1701
    lwc1	$f0,1552($s0)
    swc1	$f0,400($sp)
    # Line 1702
    lwc1	$f3,1556($s0)
    swc1	$f3,404($sp)
    # Line 1703
    lwc1	$f2,1560($s0)
    # Line 1705
    addiu	$t2,$sp,1200
    # Line 1703
    swc1	$f2,408($sp)
    # Line 1701
    addiu	$t0,$sp,400
    # Line 1704
    lwc1	$f1,1564($s0)
    addiu	$t0,$t0,16
    # Line 1705
    b	.L0dab2bd4
    # Line 1704
    swc1	$f1,412($sp)
.L0dab310c:
    # Line 1460
    li	$a1,0x8068
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab3404
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab3f08
    li	$a1,0x8075
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab3a48
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    li	$a1,0x8079
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab4734
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab2d60
    sd	$a7,1704($sp)
    li	$a1,0x807b
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab5360
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0dab55c4
    li	$at,0x807c
    bne	$a0,$at,.L0dab3518
    # Line 2169
    addiu	$t2,$sp,1200
    lw	$v0,4744($s0)
    addiu	$s2,$t2,4
    # Line 2170
    b	.L0dab2bd4
    # Line 2169
    sw	$v0,1200($sp)
.L0dab3180:
    # Line 1460
    sltiu	$v1,$a0,3042
    bnez	$v1,.L0dab34ac
    sltiu	$a5,$a0,3043
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    sltiu	$at,$a0,3073
    bnez	$at,.L0dab3e0c
    sltiu	$v0,$a0,3074
    bnez	$v0,.L0dab46bc
    sltiu	$v1,$a0,3088
    bnez	$v1,.L0dab4ac8
    sltiu	$a5,$a0,3089
    bnez	$a5,.L0dab52f8
    li	$at,3089
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab31d8:
    # Line 1460
    sltiu	$v0,$a0,3330
    bnez	$v0,.L0dab3544
    sltiu	$v1,$a0,3331
    bnez	$v1,.L0dab3a0c
    sltiu	$a5,$a0,3349
    bnez	$a5,.L0dab3ba4
    sltiu	$at,$a0,3350
    bnez	$at,.L0dab4624
    sltiu	$v0,$a0,3353
    bnez	$v0,.L0dab4958
    sltiu	$v1,$a0,3354
    bnez	$v1,.L0dab5204
    sltiu	$a5,$a0,3355
    bnez	$a5,.L0dab548c
    sltiu	$at,$a0,3356
    bnez	$at,.L0dab5630
    li	$v0,3356
    bne	$a0,$v0,.L0dab3518
    # Line 1934
    addiu	$t2,$sp,1200
    # Line 1933
    addiu	$s1,$sp,0
    lwc1	$f1,628($s0)
    addiu	$s1,$s1,4
    # Line 1934
    b	.L0dab2bd4
    # Line 1933
    swc1	$f1,0($sp)
.L0dab3238:
    # Line 1460
    sltiu	$at,$a0,3382
    bnez	$at,.L0dab3594
    sltiu	$v0,$a0,3383
    bnez	$v0,.L0dab3a20
    sltiu	$v1,$a0,3387
    bnez	$v1,.L0dab3be4
    sltiu	$a5,$a0,3388
    bnez	$a5,.L0dab4654
    sltiu	$at,$a0,3409
    bnez	$at,.L0dab4988
    sltiu	$v0,$a0,3410
    bnez	$v0,.L0dab524c
    li	$v1,3410
    bne	$a0,$v1,.L0dab3518
    # Line 2061
    addiu	$t2,$sp,1200
    lw	$a5,3140($s0)
    addiu	$s2,$t2,4
    # Line 2062
    b	.L0dab2bd4
    # Line 2061
    sw	$a5,1200($sp)
.L0dab3284:
    # Line 1460
    sltiu	$at,$a0,2820
    bnez	$at,.L0dab3638
    sltiu	$v0,$a0,2821
    bnez	$v0,.L0dab39e0
    sltiu	$v1,$a0,2822
    bnez	$v1,.L0dab3f98
    sltiu	$a5,$a0,2823
    bnez	$a5,.L0dab476c
    li	$at,2823
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1586
    lwc1	$f1,344($s0)
    lwc1	$f2,3380($s0)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($sp)
    lbu	$v0,4552($s0)
    lwc1	$f4,348($s0)
    lwc1	$f0,3384($s0)
    beqz	$v0,.L0dab55d8
    sub.s	$f4,$f4,$f0
    # Line 1589
    lw	$v1,3416($s0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    sub.s	$f3,$f3,$f4
    lwc1	$f0,3388($s0)
    sub.s	$f3,$f3,$f0
    swc1	$f3,4($sp)
.L0dab32f4:
    # Line 1597
    lw	$at,31308($s0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,352($s0)
    div.s	$f1,$f1,$f2
    # Line 1599
    addiu	$t2,$sp,1200
    # Line 1597
    swc1	$f1,8($sp)
    # Line 1594
    addiu	$s1,$sp,0
    # Line 1598
    lwc1	$f0,340($s0)
    addiu	$s1,$s1,16
    # Line 1599
    b	.L0dab2bd4
    # Line 1598
    swc1	$f0,-4($s1)
.L0dab3330:
    # Line 1625
    addiu	$t2,$sp,1200
    # Line 1624
    addiu	$s1,$sp,0
    lwc1	$f3,3468($s0)
    addiu	$s1,$s1,4
    # Line 1625
    b	.L0dab2bd4
    # Line 1624
    swc1	$f3,0($sp)
.L0dab3348:
    sd	$a7,1704($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    # Line 1652
    move	$a0,$s0
    # lw $t9, -28368($gp) # &__glUnScaleColorf
    addiu	$a2,$s0,1308
    sd	$ra,1744($sp)
    bal __glUnScaleColorf
    addiu	$a1,$sp,400
    # Line 1654
    addiu	$t2,$sp,1200
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    # Line 1653
    addiu	$t0,$sp,400
    # Line 1654
    b	.L0dab2bd4
    # Line 1653
    addiu	$t0,$t0,16
.L0dab3394:
    # Line 1460
    sltiu	$at,$a0,2912
    bnez	$at,.L0dab34e8
    sltiu	$v0,$a0,2913
    bnez	$v0,.L0dab2d60
    sd	$a7,1704($sp)
    sltiu	$v1,$a0,2914
    bnez	$v1,.L0dab4120
    sltiu	$a5,$a0,2915
    bnez	$a5,.L0dab48e4
    li	$at,2915
    bne	$a0,$at,.L0dab3518
    # Line 1672
    addiu	$t2,$sp,1200
    # Line 1671
    addiu	$s1,$sp,0
    lwc1	$f0,1516($s0)
    addiu	$s1,$s1,4
    # Line 1672
    b	.L0dab2bd4
    # Line 1671
    swc1	$f0,0($sp)
.L0dab33d8:
    # Line 1455
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,1728($sp)
    ld	$s0,1736($sp)
    ld	$ra,1744($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0dab3404:
    # Line 1460
    li	$a1,0x8020
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab37f4
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab3ed0
    li	$a1,0x802e
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab4248
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    li	$a1,0x8038
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab50c4
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab5594
    li	$v1,0x8039
    bne	$a0,$v1,.L0dab3518
    # Line 2142
    addiu	$t2,$sp,1200
    # Line 2141
    addiu	$s1,$sp,0
    lwc1	$f1,480($s0)
    addiu	$s1,$s1,4
    # Line 2142
    b	.L0dab2bd4
    # Line 2141
    swc1	$f1,0($sp)
.L0dab3464:
    # Line 1460
    sltiu	$at,$a0,2865
    bnez	$at,.L0dab3878
    sltiu	$v0,$a0,2866
    bnez	$v0,.L0dab3fc4
    sltiu	$v1,$a0,2867
    bnez	$v1,.L0dab42d4
    sltiu	$a5,$a0,2868
    bnez	$a5,.L0dab4d5c
    li	$at,2880
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1633
    lw	$v1,460($s0)
    sw	$v1,1200($sp)
    addiu	$t2,$sp,1200
    # Line 1634
    lw	$v0,464($s0)
    addiu	$s2,$t2,8
    # Line 1635
    b	.L0dab2bd4
    # Line 1634
    sw	$v0,1204($sp)
.L0dab34ac:
    # Line 1460
    sltiu	$a5,$a0,3010
    bnez	$a5,.L0dab38e4
    sltiu	$at,$a0,3011
    bnez	$at,.L0dab3ff0
    sltiu	$v0,$a0,3040
    bnez	$v0,.L0dab42f0
    sltiu	$v1,$a0,3041
    bnez	$v1,.L0dab4d18
    li	$a5,3041
    bne	$a0,$a5,.L0dab3518
    # Line 1795
    addiu	$t2,$sp,1200
    lw	$at,1728($s0)
    addiu	$s2,$t2,4
    # Line 1796
    b	.L0dab2bd4
    # Line 1795
    sw	$at,1200($sp)
.L0dab34e8:
    # Line 1460
    sltiu	$v0,$a0,2902
    bnez	$v0,.L0dab3ac8
    sltiu	$v1,$a0,2903
    bnez	$v1,.L0dab41c4
    # Line 1659
    addiu	$t2,$sp,1200
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    # Line 1460
    li	$a5,2903
    beq	$a0,$a5,.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3518:
    # Line 2233
    # lw $t9, -29008($gp) # &__glSetError
.L0dab351c:
    sd	$ra,1744($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,1728($sp)
    # Line 2234
    ld	$s0,1736($sp)
    ld	$ra,1744($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0dab3544:
    # Line 1460
    sltiu	$at,$a0,3257
    bnez	$at,.L0dab3914
    sltiu	$v0,$a0,3258
    bnez	$v0,.L0dab2b90
    sltiu	$v1,$a0,3316
    bnez	$v1,.L0dab4544
    sltiu	$a5,$a0,3317
    bnez	$a5,.L0dab4de8
    sltiu	$at,$a0,3328
    bnez	$at,.L0dab5130
    sltiu	$v0,$a0,3329
    bnez	$v0,.L0dab55ac
    li	$v1,3329
    bne	$a0,$v1,.L0dab3518
    # Line 1868
    addiu	$t2,$sp,1200
    # Line 1867
    addiu	$a7,$sp,1600
    lbu	$a5,1073($s0)
    addiu	$a7,$a7,1
    # Line 1868
    b	.L0dab2bd4
    # Line 1867
    sb	$a5,1600($sp)
.L0dab3594:
    # Line 1460
    sltiu	$at,$a0,3378
    bnez	$at,.L0dab3948
    sltiu	$v0,$a0,3379
    bnez	$v0,.L0dab4008
    sltiu	$v1,$a0,3380
    bnez	$v1,.L0dab4388
    sltiu	$a5,$a0,3381
    bnez	$a5,.L0dab4d88
    li	$at,3381
    bne	$a0,$at,.L0dab3518
    # Line 2037
    addiu	$t2,$sp,1200
    lw	$v0,3480($s0)
    addiu	$s2,$t2,4
    # Line 2038
    b	.L0dab2bd4
    # Line 2037
    sw	$v0,1200($sp)
.L0dab35d0:
    # Line 1460
    sltiu	$v1,$a0,3511
    bnez	$v1,.L0dab3974
    sltiu	$a5,$a0,3512
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    sltiu	$at,$a0,3539
    bnez	$at,.L0dab45bc
    sltiu	$v0,$a0,3540
    bnez	$v0,.L0dab4dfc
    sltiu	$v1,$a0,3553
    bnez	$v1,.L0dab5168
    sltiu	$a5,$a0,3554
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    li	$at,3569
    bne	$a0,$at,.L0dab3518
    # Line 2223
    addiu	$t2,$sp,1200
    lw	$v0,4580($s0)
    addiu	$s2,$t2,4
    # Line 2224
    b	.L0dab2bd4
    # Line 2223
    sw	$v0,1200($sp)
.L0dab3624:
    # Line 2172
    addiu	$t2,$sp,1200
    lw	$v1,4748($s0)
    addiu	$s2,$t2,4
    # Line 2173
    b	.L0dab2bd4
    # Line 2172
    sw	$v1,1200($sp)
.L0dab3638:
    # Line 1460
    sltiu	$a5,$a0,2818
    bnez	$a5,.L0dab39b8
    sltiu	$at,$a0,2819
    bnez	$at,.L0dab404c
    li	$v0,2819
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1552
    lwc1	$f1,200($s0)
    swc1	$f1,0($sp)
    # Line 1553
    lwc1	$f0,204($s0)
    swc1	$f0,4($sp)
    # Line 1554
    lwc1	$f3,208($s0)
    # Line 1556
    addiu	$t2,$sp,1200
    # Line 1554
    swc1	$f3,8($sp)
    # Line 1552
    addiu	$s1,$sp,0
    # Line 1555
    lwc1	$f2,212($s0)
    addiu	$s1,$s1,16
    # Line 1556
    b	.L0dab2bd4
    # Line 1555
    swc1	$f2,12($sp)
.L0dab3684:
    # Line 1814
    addiu	$t2,$sp,1200
    # Line 1813
    addiu	$s1,$sp,0
    lwc1	$f2,1776($s0)
    addiu	$s1,$s1,4
    # Line 1814
    b	.L0dab2bd4
    # Line 1813
    swc1	$f2,0($sp)
.L0dab369c:
    # Line 2064
    addiu	$t2,$sp,1200
    lw	$at,3144($s0)
    addiu	$s2,$t2,4
    # Line 2065
    b	.L0dab2bd4
    # Line 2064
    sw	$at,1200($sp)
.L0dab36b0:
    # Line 1602
    addiu	$t2,$sp,1200
    # Line 1601
    addiu	$a7,$sp,1600
    lbu	$v0,428($s0)
    addiu	$a7,$a7,1
    # Line 1602
    b	.L0dab2bd4
    # Line 1601
    sb	$v0,1600($sp)
.L0dab36c8:
    # Line 1460
    sltiu	$at,$a0,2965
    bnez	$at,.L0dab3aec
    sltiu	$v0,$a0,2966
    bnez	$v0,.L0dab41d4
    sltiu	$v1,$a0,2967
    bnez	$v1,.L0dab47b8
    sltiu	$a5,$a0,2968
    bnez	$a5,.L0dab4f34
    li	$at,2968
    bne	$a0,$at,.L0dab3518
    # Line 1728
    addiu	$t2,$sp,1200
    lh	$v0,1578($s0)
    addiu	$s2,$t2,4
    # Line 1729
    b	.L0dab2bd4
    # Line 1728
    sw	$v0,1200($sp)
.L0dab3704:
    # Line 1675
    addiu	$t2,$sp,1200
    # Line 1674
    addiu	$s1,$sp,0
    lwc1	$f3,1520($s0)
    addiu	$s1,$s1,4
    # Line 1675
    b	.L0dab2bd4
    # Line 1674
    swc1	$f3,0($sp)
.L0dab371c:
    # Line 1460
    li	$a1,0x8086
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab3b2c
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab4450
    li	$a1,0x808b
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab4880
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0dab511c
    li	$a1,0x808d
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab5430
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab561c
    li	$v1,0x8094
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab377c:
    # Line 1460
    sltiu	$a5,$a0,3121
    bnez	$a5,.L0dab3b70
    sltiu	$at,$a0,3122
    bnez	$at,.L0dab4608
    sltiu	$v0,$a0,3123
    bnez	$v0,.L0dab4910
    sltiu	$v1,$a0,3124
    bnez	$v1,.L0dab5274
    li	$a5,3136
    bne	$a0,$a5,.L0dab3518
    # Line 1837
    addiu	$t2,$sp,1200
    lw	$at,3092($s0)
    addiu	$s2,$t2,4
    # Line 1838
    b	.L0dab2bd4
    # Line 1837
    sw	$at,1200($sp)
.L0dab37b8:
    # Line 1460
    sltiu	$v0,$a0,3416
    bnez	$v0,.L0dab3c1c
    sltiu	$v1,$a0,3417
    bnez	$v1,.L0dab4668
    sltiu	$a5,$a0,3418
    bnez	$a5,.L0dab49a4
    sltiu	$at,$a0,3419
    bnez	$at,.L0dab5260
    li	$v0,3419
    bne	$a0,$v0,.L0dab3518
    # Line 2093
    addiu	$t2,$sp,1200
    lw	$v1,3124($s0)
    addiu	$s2,$t2,4
    # Line 2094
    b	.L0dab2bd4
    # Line 2093
    sw	$v1,1200($sp)
.L0dab37f4:
    # Line 1460
    li	$a1,0x801c
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab3c8c
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab463c
    li	$a1,0x801e
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab49ec
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab521c
    li	$a5,0x801f
    bne	$a0,$a5,.L0dab3518
    # Line 1964
    addiu	$t2,$sp,1200
    # Line 1963
    addiu	$s1,$sp,0
    lwc1	$f0,668($s0)
    addiu	$s1,$s1,4
    # Line 1964
    b	.L0dab2bd4
    # Line 1963
    swc1	$f0,0($sp)
.L0dab383c:
    # Line 1460
    sltiu	$at,$a0,2833
    bnez	$at,.L0dab3d58
    sltiu	$v0,$a0,2834
    bnez	$v0,.L0dab467c
    li	$v1,2834
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1610
    lwc1	$f2,3448($s0)
    # Line 1612
    addiu	$t2,$sp,1200
    # Line 1610
    swc1	$f2,0($sp)
    addiu	$s1,$sp,0
    # Line 1611
    lwc1	$f1,3452($s0)
    addiu	$s1,$s1,8
    # Line 1612
    b	.L0dab2bd4
    # Line 1611
    swc1	$f1,4($sp)
.L0dab3878:
    # Line 1460
    sltiu	$at,$a0,2854
    bnez	$at,.L0dab3d84
    sltiu	$v0,$a0,2855
    bnez	$v0,.L0dab4694
    li	$v1,2864
    bne	$a0,$v1,.L0dab3518
    # Line 1861
    addiu	$t2,$sp,1200
    lw	$a5,4684($s0)
    addiu	$s2,$t2,4
    # Line 1862
    b	.L0dab2bd4
    # Line 1861
    sw	$a5,1200($sp)
.L0dab38a4:
    # Line 1460
    sltiu	$at,$a0,2886
    bnez	$at,.L0dab3da8
    sltiu	$v0,$a0,2887
    bnez	$v0,.L0dab46a8
    sltiu	$v1,$a0,2897
    bnez	$v1,.L0dab4aa4
    sltiu	$a5,$a0,2898
    bnez	$a5,.L0dab52e0
    li	$at,2898
    bne	$a0,$at,.L0dab3518
    # Line 1650
    addiu	$t2,$sp,1200
    # Line 1649
    addiu	$a7,$sp,1600
    lbu	$v0,1325($s0)
    addiu	$a7,$a7,1
    # Line 1650
    b	.L0dab2bd4
    # Line 1649
    sb	$v0,1600($sp)
.L0dab38e4:
    # Line 1460
    sltiu	$at,$a0,3008
    bnez	$at,.L0dab3dd8
    sltiu	$v0,$a0,3009
    bnez	$v0,.L0dab2d60
    sd	$a7,1704($sp)
    li	$v1,3009
    bne	$a0,$v1,.L0dab3518
    # Line 1786
    addiu	$t2,$sp,1200
    lw	$a5,1720($s0)
    addiu	$s2,$t2,4
    # Line 1787
    b	.L0dab2bd4
    # Line 1786
    sw	$a5,1200($sp)
.L0dab3914:
    # Line 1460
    sltiu	$at,$a0,3253
    bnez	$at,.L0dab3e3c
    sltiu	$v0,$a0,3254
    bnez	$v0,.L0dab2b90
    sltiu	$v1,$a0,3255
    bnez	$v1,.L0dab4c48
    sltiu	$a5,$a0,3256
    bnez	$a5,.L0dab2b90
    li	$at,3256
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dab2b94
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab3948:
    # Line 1460
    sltiu	$v0,$a0,3376
    bnez	$v0,.L0dab3e60
    sltiu	$v1,$a0,3377
    bnez	$v1,.L0dab46d0
    li	$a5,3377
    bne	$a0,$a5,.L0dab3518
    # Line 2028
    addiu	$t2,$sp,1200
    lw	$at,3328($s0)
    addiu	$s2,$t2,4
    # Line 2029
    b	.L0dab2bd4
    # Line 2028
    sw	$at,1200($sp)
.L0dab3974:
    # Line 1460
    sltiu	$v0,$a0,3507
    bnez	$v0,.L0dab3e88
    sltiu	$v1,$a0,3508
    bnez	$v1,.L0dab2d60
    sltiu	$a5,$a0,3509
    bnez	$a5,.L0dab4ca8
    sltiu	$at,$a0,3510
    bnez	$at,.L0dab2d60
    li	$v0,3510
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab39b8:
    # Line 1460
    sltiu	$v1,$a0,2817
    bnez	$v1,.L0dab3f5c
    sltiu	$a5,$a0,2818
    beqz	$a5,.L0dab3518
    # Line 1545
    addiu	$t2,$sp,1200
    # Line 1544
    addiu	$s1,$sp,0
    lwc1	$f3,424($s0)
    addiu	$s1,$s1,4
    # Line 1545
    b	.L0dab2bd4
    # Line 1544
    swc1	$f3,0($sp)
.L0dab39e0:
    # Line 1566
    lbu	$at,3105($s0)
    beqz	$at,.L0dab4a78
    # Line 1568
    lwc1	$f0,_lit_3f800000
    addiu	$s1,$sp,0
    # Line 1571
    addiu	$s1,$s1,16
    swc1	$f0,12($sp)
    # Line 1570
    swc1	$f0,8($sp)
    # Line 1569
    swc1	$f0,4($sp)
    # Line 1568
    swc1	$f0,0($sp)
.L0dab3a04:
    # Line 1578
    b	.L0dab2bd4
    addiu	$t2,$sp,1200
.L0dab3a0c:
    # Line 1873
    addiu	$t2,$sp,1200
    lw	$at,1076($s0)
    addiu	$s2,$t2,4
    # Line 1874
    b	.L0dab2bd4
    # Line 1873
    sw	$at,1200($sp)
.L0dab3a20:
    # Line 2043
    addiu	$t2,$sp,1200
    lw	$v0,3492($s0)
    addiu	$s2,$t2,4
    # Line 2044
    b	.L0dab2bd4
    # Line 2043
    sw	$v0,1200($sp)
.L0dab3a34:
    # Line 2226
    addiu	$t2,$sp,1200
    lw	$v1,4584($s0)
    addiu	$s2,$t2,4
    # Line 2227
    b	.L0dab2bd4
    # Line 2226
    sw	$v1,1200($sp)
.L0dab3a48:
    # Line 1460
    li	$a1,0x806e
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab401c
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab47f8
    li	$a1,0x8073
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab4dc4
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab537c
    li	$a5,0x8074
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3a94:
    # Line 1460
    sltiu	$at,$a0,2928
    bnez	$at,.L0dab4074
    sltiu	$v0,$a0,2929
    bnez	$v0,.L0dab4828
    li	$v1,2929
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3ac8:
    # Line 1460
    sltiu	$a5,$a0,2901
    bnez	$a5,.L0dab4104
    sltiu	$at,$a0,2902
    beqz	$at,.L0dab3518
    # Line 1656
    addiu	$t2,$sp,1200
    lw	$v0,1296($s0)
    addiu	$s2,$t2,4
    # Line 1657
    b	.L0dab2bd4
    # Line 1656
    sw	$v0,1200($sp)
.L0dab3aec:
    # Line 1460
    sltiu	$v1,$a0,2963
    bnez	$v1,.L0dab4140
    sltiu	$a5,$a0,2964
    bnez	$a5,.L0dab48fc
    li	$at,2964
    bne	$a0,$at,.L0dab3518
    # Line 1716
    addiu	$t2,$sp,1200
    lw	$v0,1580($s0)
    addiu	$s2,$t2,4
    # Line 1717
    b	.L0dab2bd4
    # Line 1716
    sw	$v0,1200($sp)
.L0dab3b18:
    # Line 1731
    addiu	$t2,$sp,1200
    lw	$v1,1648($s0)
    addiu	$s2,$t2,4
    # Line 1732
    b	.L0dab2bd4
    # Line 1731
    sw	$v1,1200($sp)
.L0dab3b2c:
    # Line 1460
    li	$a1,0x8082
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab4280
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab4be0
    li	$a1,0x8084
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab4f74
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab551c
    li	$a5,0x8085
    bne	$a0,$a5,.L0dab3518
    # Line 2196
    addiu	$t2,$sp,1200
    lw	$at,4812($s0)
    addiu	$s2,$t2,4
    # Line 2197
    b	.L0dab2bd4
    # Line 2196
    sw	$at,1200($sp)
.L0dab3b70:
    # Line 1460
    sltiu	$v0,$a0,3107
    bnez	$v0,.L0dab4314
    sltiu	$v1,$a0,3108
    bnez	$v1,.L0dab4d2c
    li	$a5,3120
    bne	$a0,$a5,.L0dab3518
    # Line 1817
    addiu	$t2,$sp,1200
    # Line 1816
    lbu	$at,3105($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$at,$zero,$at
    # Line 1817
    b	.L0dab2bd4
    # Line 1816
    sb	$at,1600($sp)
.L0dab3ba4:
    # Line 1460
    sltiu	$at,$a0,3345
    bnez	$at,.L0dab4358
    sltiu	$v0,$a0,3346
    bnez	$v0,.L0dab4d70
    sltiu	$v1,$a0,3347
    bnez	$v1,.L0dab5020
    sltiu	$a5,$a0,3348
    bnez	$a5,.L0dab5568
    li	$at,3348
    bne	$a0,$at,.L0dab3518
    # Line 1925
    addiu	$t2,$sp,1200
    # Line 1924
    addiu	$s1,$sp,0
    lwc1	$f1,616($s0)
    addiu	$s1,$s1,4
    # Line 1925
    b	.L0dab2bd4
    # Line 1924
    swc1	$f1,0($sp)
.L0dab3be4:
    # Line 1460
    sltiu	$at,$a0,3385
    bnez	$at,.L0dab43a4
    sltiu	$v0,$a0,3386
    bnez	$v0,.L0dab4d9c
    li	$v1,3386
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2116
    lw	$t2,3344($s0)
    sw	$t2,1200($sp)
    addiu	$t2,$sp,1200
    # Line 2117
    lw	$a5,3348($s0)
    addiu	$s2,$t2,8
    # Line 2118
    b	.L0dab2bd4
    # Line 2117
    sw	$a5,1204($sp)
.L0dab3c1c:
    # Line 1460
    sltiu	$at,$a0,3414
    bnez	$at,.L0dab43c8
    sltiu	$v0,$a0,3415
    bnez	$v0,.L0dab4db0
    li	$v1,3415
    bne	$a0,$v1,.L0dab3518
    # Line 2076
    addiu	$t2,$sp,1200
    lw	$a5,3132($s0)
    addiu	$s2,$t2,4
    # Line 2077
    b	.L0dab2bd4
    # Line 2076
    sw	$a5,1200($sp)
.L0dab3c48:
    # Line 1460
    sltiu	$at,$a0,12290
    bnez	$at,.L0dab43ec
    sltiu	$v0,$a0,12291
    bnez	$v0,.L0dab2d60
    sltiu	$v1,$a0,12292
    bnez	$v1,.L0dab51a8
    sltiu	$a5,$a0,12293
    bnez	$a5,.L0dab2d60
    li	$at,12293
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3c8c:
    # Line 1460
    li	$a1,0x8011
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab4420
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab2d60
    li	$a5,0x8012
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3cc4:
    # Line 1780
    lw	$at,29692($s0)
    lwc1	$f1,0($at)
    swc1	$f1,0($sp)
    lwc1	$f0,4($at)
    swc1	$f0,4($sp)
    lwc1	$f3,8($at)
    swc1	$f3,8($sp)
    lwc1	$f2,12($at)
    swc1	$f2,12($sp)
    # Line 1781
    lwc1	$f1,16($at)
    swc1	$f1,16($sp)
    lwc1	$f0,20($at)
    swc1	$f0,20($sp)
    lwc1	$f3,24($at)
    swc1	$f3,24($sp)
    lwc1	$f2,28($at)
    swc1	$f2,28($sp)
    # Line 1782
    lwc1	$f1,32($at)
    swc1	$f1,32($sp)
    lwc1	$f0,36($at)
    swc1	$f0,36($sp)
    lwc1	$f3,40($at)
    swc1	$f3,40($sp)
    lwc1	$f2,44($at)
    swc1	$f2,44($sp)
    # Line 1783
    lwc1	$f1,48($at)
    swc1	$f1,48($sp)
    lwc1	$f0,52($at)
    swc1	$f0,52($sp)
    lwc1	$f3,56($at)
    # Line 1784
    addiu	$t2,$sp,1200
    # Line 1783
    swc1	$f3,56($sp)
    # Line 1779
    addiu	$s1,$sp,0
    # Line 1783
    lwc1	$f2,60($at)
    addiu	$s1,$s1,64
    # Line 1784
    b	.L0dab2bd4
    # Line 1783
    swc1	$f2,60($sp)
.L0dab3d58:
    # Line 1460
    sltiu	$v0,$a0,2832
    bnez	$v0,.L0dab4464
    sltiu	$v1,$a0,2833
    beqz	$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3d84:
    # Line 1460
    sltiu	$a5,$a0,2853
    bnez	$a5,.L0dab4484
    sltiu	$at,$a0,2854
    beqz	$at,.L0dab3518
    # Line 1627
    addiu	$t2,$sp,1200
    lhu	$v0,456($s0)
    addiu	$s2,$t2,4
    # Line 1628
    b	.L0dab2bd4
    # Line 1627
    sw	$v0,1200($sp)
.L0dab3da8:
    # Line 1460
    sltiu	$v1,$a0,2884
    bnez	$v1,.L0dab44a8
    sltiu	$a5,$a0,2885
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    li	$at,2885
    bne	$a0,$at,.L0dab3518
    # Line 1640
    addiu	$t2,$sp,1200
    lw	$v0,468($s0)
    addiu	$s2,$t2,4
    # Line 1641
    b	.L0dab2bd4
    # Line 1640
    sw	$v0,1200($sp)
.L0dab3dd8:
    # Line 1460
    sltiu	$v1,$a0,2993
    bnez	$v1,.L0dab44d0
    sltiu	$a5,$a0,2994
    beqz	$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1743
    lw	$at,12688($s0)
    lw	$v0,12684($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$at,$at,$v0
    sra	$at,$at,0x2
    # Line 1744
    b	.L0dab2bd4
    # Line 1743
    sw	$at,1200($sp)
.L0dab3e0c:
    # Line 1460
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0dab44fc
    sltiu	$a5,$a0,3059
    bnez	$a5,.L0dab2d60
    sd	$a7,1704($sp)
    li	$at,3072
    bne	$a0,$at,.L0dab3518
    # Line 2123
    addiu	$t2,$sp,1200
    lw	$v0,3180($s0)
    addiu	$s2,$t2,4
    # Line 2124
    b	.L0dab2bd4
    # Line 2123
    sw	$v0,1200($sp)
.L0dab3e3c:
    # Line 1460
    sltiu	$v1,$a0,3251
    bnez	$v1,.L0dab4528
    sltiu	$a5,$a0,3252
    bnez	$a5,.L0dab2b90
    li	$at,3252
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dab2b94
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab3e60:
    # Line 1460
    sltiu	$v0,$a0,3359
    bnez	$v0,.L0dab4570
    sltiu	$v1,$a0,3360
    beqz	$v1,.L0dab3518
    # Line 1952
    addiu	$t2,$sp,1200
    # Line 1951
    addiu	$s1,$sp,0
    lwc1	$f2,652($s0)
    addiu	$s1,$s1,4
    # Line 1952
    b	.L0dab2bd4
    # Line 1951
    swc1	$f2,0($sp)
.L0dab3e88:
    # Line 1460
    sltiu	$at,$a0,3505
    bnez	$at,.L0dab4590
    sltiu	$v0,$a0,3506
    bnez	$v0,.L0dab2d60
    li	$v1,3506
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab3ebc:
    # Line 1840
    addiu	$t2,$sp,1200
    lw	$a5,1796($s0)
    addiu	$s2,$t2,4
    # Line 1841
    b	.L0dab2bd4
    # Line 1840
    sw	$a5,1200($sp)
.L0dab3ed0:
    # Line 1967
    addiu	$t2,$sp,1200
    # Line 1966
    addiu	$s1,$sp,0
    lwc1	$f3,672($s0)
    addiu	$s1,$s1,4
    # Line 1967
    b	.L0dab2bd4
    # Line 1966
    swc1	$f3,0($sp)
.L0dab3ee8:
    # Line 2113
    lw	$at,4596($s0)
    lw	$v0,4592($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$at,$at,$v0
    sra	$at,$at,0x2
    # Line 2114
    b	.L0dab2bd4
    # Line 2113
    sw	$at,1200($sp)
.L0dab3f08:
    sd	$a7,1704($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    # Line 2151
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    sd	$ra,1744($sp)
    jal	__glLookUpTextureTexobjs
    li	$a1,3552
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    addiu	$t2,$sp,1200
    # Line 2152
    lw	$v1,0($v0)
    addiu	$s2,$t2,4
    # Line 2154
    b	.L0dab2bd4
    # Line 2152
    sw	$v1,1200($sp)
.L0dab3f5c:
    # Line 1460
    li	$a5,2816
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1538
    lwc1	$f3,408($s0)
    swc1	$f3,400($sp)
    # Line 1539
    lwc1	$f2,412($s0)
    swc1	$f2,404($sp)
    # Line 1540
    lwc1	$f1,416($s0)
    # Line 1542
    addiu	$t2,$sp,1200
    # Line 1540
    swc1	$f1,408($sp)
    # Line 1538
    addiu	$t0,$sp,400
    # Line 1541
    lwc1	$f0,420($s0)
    addiu	$t0,$t0,16
    # Line 1542
    b	.L0dab2bd4
    # Line 1541
    swc1	$f0,412($sp)
.L0dab3f98:
    # Line 1460
    li	$at,2821
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1558
    lbu	$v0,3104($s0)
    beqz	$v0,.L0dab5424
    # Line 1560
    lwc1	$f0,_lit_3f800000
    swc1	$f0,0($sp)
.L0dab3fb4:
    # Line 1564
    addiu	$t2,$sp,1200
    # Line 1562
    addiu	$s1,$sp,0
    # Line 1564
    b	.L0dab2bd4
    # Line 1562
    addiu	$s1,$s1,4
.L0dab3fc4:
    # Line 1535
    li	$s2,64
    sw	$s2,1200($sp)
    addiu	$t2,$sp,1200
    # Line 1536
    b	.L0dab2bd4
    # Line 1535
    addiu	$s2,$t2,4
.L0dab3fd8:
    # Line 1615
    addiu	$t2,$sp,1200
    # Line 1614
    addiu	$s1,$sp,0
    lwc1	$f1,3456($s0)
    addiu	$s1,$s1,4
    # Line 1615
    b	.L0dab2bd4
    # Line 1614
    swc1	$f1,0($sp)
.L0dab3ff0:
    # Line 1790
    addiu	$t2,$sp,1200
    # Line 1789
    addiu	$s1,$sp,0
    lwc1	$f2,1724($s0)
    addiu	$s1,$s1,4
    # Line 1790
    b	.L0dab2bd4
    # Line 1789
    swc1	$f2,0($sp)
.L0dab4008:
    # Line 2031
    addiu	$t2,$sp,1200
    lw	$at,3332($s0)
    addiu	$s2,$t2,4
    # Line 2032
    b	.L0dab2bd4
    # Line 2031
    sw	$at,1200($sp)
.L0dab401c:
    # Line 1460
    li	$a1,0x806c
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab470c
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab4ee8
    li	$a5,0x806d
    bne	$a0,$a5,.L0dab3518
    # Line 1900
    addiu	$t2,$sp,1200
    lw	$at,1128($s0)
    addiu	$s2,$t2,4
    # Line 1901
    b	.L0dab2bd4
    # Line 1900
    sw	$at,1200($sp)
.L0dab404c:
    # Line 1547
    lwc1	$f1,184($s0)
    swc1	$f1,400($sp)
    # Line 1548
    lwc1	$f0,188($s0)
    # Line 1550
    addiu	$t2,$sp,1200
    # Line 1548
    swc1	$f0,404($sp)
    # Line 1547
    addiu	$t0,$sp,400
    # Line 1549
    lwc1	$f3,192($s0)
    addiu	$t0,$t0,12
    # Line 1550
    b	.L0dab2bd4
    # Line 1549
    swc1	$f3,408($sp)
.L0dab4074:
    # Line 1460
    sltiu	$at,$a0,2918
    bnez	$at,.L0dab479c
    sltiu	$v0,$a0,2919
    beqz	$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1680
    lwc1	$f1,1496($s0)
    swc1	$f1,800($sp)
    # Line 1681
    lwc1	$f0,1500($s0)
    swc1	$f0,804($sp)
    # Line 1682
    lwc1	$f3,1504($s0)
    # Line 1684
    addiu	$t2,$sp,1200
    # Line 1682
    swc1	$f3,808($sp)
    # Line 1680
    addiu	$t1,$sp,800
    # Line 1683
    lwc1	$f2,1508($s0)
    addiu	$t1,$t1,16
    # Line 1684
    b	.L0dab2bd4
    # Line 1683
    swc1	$f2,812($sp)
.L0dab40b8:
    # Line 1460
    sltiu	$at,$a0,2978
    bnez	$at,.L0dab47d4
    sltiu	$v0,$a0,2979
    bnez	$v0,.L0dab4f48
    li	$v1,2979
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1746
    lw	$s2,29664($s0)
    lw	$at,29660($s0)
    subu	$s2,$s2,$at
    li	$t2,272
    div	$zero,$s2,$t2
    teq	$t2,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$a5
    addiu	$a5,$a5,1
    # Line 1747
    b	.L0dab2bd4
    # Line 1746
    sw	$a5,1200($sp)
.L0dab4104:
    # Line 1460
    li	$v0,2900
    bne	$a0,$v0,.L0dab3518
    # Line 1662
    addiu	$t2,$sp,1200
    lw	$v1,1304($s0)
    addiu	$s2,$t2,4
    # Line 1663
    b	.L0dab2bd4
    # Line 1662
    sw	$v1,1200($sp)
.L0dab4120:
    # Line 1460
    li	$a5,2913
    bne	$a0,$a5,.L0dab3518
    # Line 1666
    addiu	$t2,$sp,1200
    # Line 1665
    addiu	$s1,$sp,0
    lwc1	$f2,1528($s0)
    addiu	$s1,$s1,4
    # Line 1666
    b	.L0dab2bd4
    # Line 1665
    swc1	$f2,0($sp)
.L0dab4140:
    # Line 1460
    sltiu	$at,$a0,2962
    bnez	$at,.L0dab480c
    sltiu	$v0,$a0,2963
    beqz	$v0,.L0dab3518
    # Line 1710
    addiu	$t2,$sp,1200
    lw	$v1,1568($s0)
    addiu	$s2,$t2,4
    # Line 1711
    b	.L0dab2bd4
    # Line 1710
    sw	$v1,1200($sp)
.L0dab4164:
    # Line 1692
    addiu	$t2,$sp,1200
    # Line 1691
    addiu	$a7,$sp,1600
    lbu	$a5,1540($s0)
    addiu	$a7,$a7,1
    # Line 1692
    b	.L0dab2bd4
    # Line 1691
    sb	$a5,1600($sp)
.L0dab417c:
    # Line 1460
    li	$a1,0x80b6
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab48b0
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab5104
    li	$a1,0x80b8
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab544c
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0dab5604
    li	$at,0x80b9
    bne	$a0,$at,.L0dab3518
    # Line 1994
    addiu	$t2,$sp,1200
    # Line 1993
    addiu	$s1,$sp,0
    lwc1	$f3,708($s0)
    addiu	$s1,$s1,4
    # Line 1994
    b	.L0dab2bd4
    # Line 1993
    swc1	$f3,0($sp)
.L0dab41c4:
    # Line 1659
    lw	$at,1300($s0)
    addiu	$s2,$t2,4
    # Line 1660
    b	.L0dab2bd4
    # Line 1659
    sw	$at,1200($sp)
.L0dab41d4:
    # Line 1719
    addiu	$t2,$sp,1200
    lw	$v0,1584($s0)
    addiu	$s2,$t2,4
    # Line 1720
    b	.L0dab2bd4
    # Line 1719
    sw	$v0,1200($sp)
.L0dab41e8:
    # Line 1460
    sltiu	$v1,$a0,3155
    bnez	$v1,.L0dab4934
    sltiu	$a5,$a0,3156
    bnez	$a5,.L0dab51f0
    li	$at,3156
    bne	$a0,$at,.L0dab3518
    # Line 1852
    addiu	$t2,$sp,1200
    lw	$v0,1812($s0)
    addiu	$s2,$t2,4
    # Line 1853
    b	.L0dab2bd4
    # Line 1852
    sw	$v0,1200($sp)
.L0dab4214:
    # Line 1460
    sltiu	$v1,$a0,3473
    bnez	$v1,.L0dab49c0
    sltiu	$a5,$a0,3474
    bnez	$a5,.L0dab2d60
    li	$at,3474
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4248:
    # Line 1460
    li	$a1,0x8023
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab4a0c
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab5234
    li	$a5,0x8024
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4280:
    # Line 1460
    li	$a1,0x8080
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab4a38
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab5288
    li	$v1,0x8081
    bne	$a0,$v1,.L0dab3518
    # Line 2184
    addiu	$t2,$sp,1200
    lw	$a5,4784($s0)
    addiu	$s2,$t2,4
    # Line 2185
    b	.L0dab2bd4
    # Line 2184
    sw	$a5,1200($sp)
.L0dab42b0:
    # Line 1460
    li	$at,2848
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab42d4:
    # Line 1460
    li	$v0,2866
    bne	$a0,$v0,.L0dab3518
    # Line 1855
    addiu	$t2,$sp,1200
    lw	$v1,1872($s0)
    addiu	$s2,$t2,4
    # Line 1856
    b	.L0dab2bd4
    # Line 1855
    sw	$v1,1200($sp)
.L0dab42f0:
    # Line 1460
    li	$a5,3024
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4314:
    # Line 1460
    sltiu	$at,$a0,3106
    bnez	$at,.L0dab4ae4
    sltiu	$v0,$a0,3107
    beqz	$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1822
    lwc1	$f3,1760($s0)
    swc1	$f3,400($sp)
    # Line 1823
    lwc1	$f2,1764($s0)
    swc1	$f2,404($sp)
    # Line 1824
    lwc1	$f1,1768($s0)
    # Line 1826
    addiu	$t2,$sp,1200
    # Line 1824
    swc1	$f1,408($sp)
    # Line 1822
    addiu	$t0,$sp,400
    # Line 1825
    lwc1	$f0,1772($s0)
    addiu	$t0,$t0,16
    # Line 1826
    b	.L0dab2bd4
    # Line 1825
    swc1	$f0,412($sp)
.L0dab4358:
    # Line 1460
    sltiu	$at,$a0,3333
    bnez	$at,.L0dab4b00
    sltiu	$v0,$a0,3334
    bnez	$v0,.L0dab5324
    li	$v1,3344
    bne	$a0,$v1,.L0dab3518
    # Line 1913
    addiu	$t2,$sp,1200
    # Line 1912
    addiu	$a7,$sp,1600
    lbu	$a5,736($s0)
    addiu	$a7,$a7,1
    # Line 1913
    b	.L0dab2bd4
    # Line 1912
    sb	$a5,1600($sp)
.L0dab4388:
    # Line 1460
    li	$at,3379
    bne	$a0,$at,.L0dab3518
    # Line 1526
    addiu	$t2,$sp,1200
    lw	$v0,3428($s0)
    addiu	$s2,$t2,4
    # Line 1527
    b	.L0dab2bd4
    # Line 1526
    sw	$v0,1200($sp)
.L0dab43a4:
    # Line 1460
    sltiu	$v1,$a0,3384
    bnez	$v1,.L0dab4b24
    sltiu	$a5,$a0,3385
    beqz	$a5,.L0dab3518
    # Line 2049
    addiu	$t2,$sp,1200
    lw	$at,3496($s0)
    addiu	$s2,$t2,4
    # Line 2050
    b	.L0dab2bd4
    # Line 2049
    sw	$at,1200($sp)
.L0dab43c8:
    # Line 1460
    sltiu	$v0,$a0,3413
    bnez	$v0,.L0dab4b40
    sltiu	$v1,$a0,3414
    beqz	$v1,.L0dab3518
    # Line 2070
    addiu	$t2,$sp,1200
    lw	$a5,3152($s0)
    addiu	$s2,$t2,4
    # Line 2071
    b	.L0dab2bd4
    # Line 2070
    sw	$a5,1200($sp)
.L0dab43ec:
    # Line 1460
    sltiu	$at,$a0,12288
    bnez	$at,.L0dab4b5c
    sltiu	$v0,$a0,12289
    bnez	$v0,.L0dab2d60
    li	$v1,12289
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4420:
    # Line 1460
    li	$a1,0x8010
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab4bc4
    sltu	$at,$a1,$a0
    bnez	$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4450:
    # Line 2199
    addiu	$t2,$sp,1200
    lw	$v0,4820($s0)
    addiu	$s2,$t2,4
    # Line 2200
    b	.L0dab2bd4
    # Line 2199
    sw	$v0,1200($sp)
.L0dab4464:
    # Line 1460
    li	$v1,2825
    bne	$a0,$v1,.L0dab3518
    # Line 1605
    addiu	$t2,$sp,1200
    # Line 1604
    addiu	$s1,$sp,0
    lwc1	$f0,320($s0)
    addiu	$s1,$s1,4
    # Line 1605
    b	.L0dab2bd4
    # Line 1604
    swc1	$f0,0($sp)
.L0dab4484:
    # Line 1460
    li	$at,2852
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab44a8:
    # Line 1460
    sltiu	$v0,$a0,2883
    bnez	$v0,.L0dab4bf4
    sltiu	$v1,$a0,2884
    beqz	$v1,.L0dab3518
    # Line 1638
    addiu	$t2,$sp,1200
    # Line 1637
    addiu	$a7,$sp,1600
    lbu	$a5,429($s0)
    addiu	$a7,$a7,1
    # Line 1638
    b	.L0dab2bd4
    # Line 1637
    sb	$a5,1600($sp)
.L0dab44d0:
    # Line 1460
    li	$at,2992
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1740
    lw	$v0,12680($s0)
    lw	$v1,12676($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$v0,$v0,$v1
    sra	$v0,$v0,0x2
    # Line 1741
    b	.L0dab2bd4
    # Line 1740
    sw	$v0,1200($sp)
.L0dab44fc:
    # Line 1460
    sltiu	$a5,$a0,3057
    bnez	$a5,.L0dab4c18
    sltiu	$at,$a0,3058
    beqz	$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4528:
    # Line 1460
    sltiu	$v0,$a0,3250
    bnez	$v0,.L0dab4c34
    sltiu	$v1,$a0,3251
    beqz	$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dab2b94
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab4544:
    # Line 1460
    sltiu	$a5,$a0,3314
    bnez	$a5,.L0dab4c5c
    sltiu	$at,$a0,3315
    bnez	$at,.L0dab5338
    li	$v0,3315
    bne	$a0,$v0,.L0dab3518
    # Line 1903
    addiu	$t2,$sp,1200
    lw	$v1,1116($s0)
    addiu	$s2,$t2,4
    # Line 1904
    b	.L0dab2bd4
    # Line 1903
    sw	$v1,1200($sp)
.L0dab4570:
    # Line 1460
    li	$a5,3358
    bne	$a0,$a5,.L0dab3518
    # Line 1937
    addiu	$t2,$sp,1200
    # Line 1936
    addiu	$s1,$sp,0
    lwc1	$f1,632($s0)
    addiu	$s1,$s1,4
    # Line 1937
    b	.L0dab2bd4
    # Line 1936
    swc1	$f1,0($sp)
.L0dab4590:
    # Line 1460
    sltiu	$at,$a0,3504
    bnez	$at,.L0dab4c84
    sltiu	$v0,$a0,3505
    beqz	$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab45bc:
    # Line 1460
    sltiu	$v1,$a0,3537
    bnez	$v1,.L0dab4ccc
    sltiu	$a5,$a0,3538
    bnez	$a5,.L0dab534c
    li	$at,3538
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2103
    lwc1	$f1,1840($s0)
    swc1	$f1,0($sp)
    # Line 2104
    lwc1	$f0,1844($s0)
    swc1	$f0,4($sp)
    # Line 2105
    lwc1	$f3,1856($s0)
    # Line 2107
    addiu	$t2,$sp,1200
    # Line 2105
    swc1	$f3,8($sp)
    # Line 2103
    addiu	$s1,$sp,0
    # Line 2106
    lwc1	$f2,1860($s0)
    addiu	$s1,$s1,16
    # Line 2107
    b	.L0dab2bd4
    # Line 2106
    swc1	$f2,12($sp)
.L0dab4608:
    # Line 1829
    addiu	$t2,$sp,1200
    # Line 1828
    lbu	$at,3104($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$at,$zero,$at
    # Line 1829
    b	.L0dab2bd4
    # Line 1828
    sb	$at,1600($sp)
.L0dab4624:
    # Line 1940
    addiu	$t2,$sp,1200
    # Line 1939
    addiu	$s1,$sp,0
    lwc1	$f2,636($s0)
    addiu	$s1,$s1,4
    # Line 1940
    b	.L0dab2bd4
    # Line 1939
    swc1	$f2,0($sp)
.L0dab463c:
    # Line 1955
    addiu	$t2,$sp,1200
    # Line 1954
    addiu	$s1,$sp,0
    lwc1	$f3,656($s0)
    addiu	$s1,$s1,4
    # Line 1955
    b	.L0dab2bd4
    # Line 1954
    swc1	$f3,0($sp)
.L0dab4654:
    # Line 2040
    addiu	$t2,$sp,1200
    lw	$at,3484($s0)
    addiu	$s2,$t2,4
    # Line 2041
    b	.L0dab2bd4
    # Line 2040
    sw	$at,1200($sp)
.L0dab4668:
    # Line 2084
    addiu	$t2,$sp,1200
    lw	$v0,3112($s0)
    addiu	$s2,$t2,4
    # Line 2085
    b	.L0dab2bd4
    # Line 2084
    sw	$v0,1200($sp)
.L0dab467c:
    # Line 1608
    addiu	$t2,$sp,1200
    # Line 1607
    addiu	$s1,$sp,0
    lwc1	$f0,432($s0)
    addiu	$s1,$s1,4
    # Line 1608
    b	.L0dab2bd4
    # Line 1607
    swc1	$f0,0($sp)
.L0dab4694:
    # Line 1630
    addiu	$t2,$sp,1200
    lh	$at,458($s0)
    addiu	$s2,$t2,4
    # Line 1631
    b	.L0dab2bd4
    # Line 1630
    sw	$at,1200($sp)
.L0dab46a8:
    # Line 1643
    addiu	$t2,$sp,1200
    lw	$v0,472($s0)
    addiu	$s2,$t2,4
    # Line 1644
    b	.L0dab2bd4
    # Line 1643
    sw	$v0,1200($sp)
.L0dab46bc:
    # Line 1801
    addiu	$t2,$sp,1200
    lw	$v1,1792($s0)
    addiu	$s2,$t2,4
    # Line 1802
    b	.L0dab2bd4
    # Line 1801
    sw	$v1,1200($sp)
.L0dab46d0:
    # Line 2025
    addiu	$t2,$sp,1200
    lw	$a5,3472($s0)
    addiu	$s2,$t2,4
    # Line 2026
    b	.L0dab2bd4
    # Line 2025
    sw	$a5,1200($sp)
.L0dab46e4:
    # Line 1460
    li	$at,2931
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1695
    ldc1	$f1,1544($s0)
    # Line 1696
    addiu	$t2,$sp,1200
    # Line 1695
    cvt.s.d	$f1,$f1
    addiu	$t0,$sp,400
    addiu	$t0,$t0,4
    # Line 1696
    b	.L0dab2bd4
    # Line 1695
    swc1	$f1,400($sp)
.L0dab470c:
    # Line 1460
    li	$a1,0x806b
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab4e54
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0dab3518
    # Line 1876
    addiu	$t2,$sp,1200
    lw	$v1,1092($s0)
    addiu	$s2,$t2,4
    # Line 1877
    b	.L0dab2bd4
    # Line 1876
    sw	$v1,1200($sp)
.L0dab4734:
    # Line 1460
    li	$a1,0x8077
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0dab4eb0
    sltu	$at,$a1,$a0
    beqz	$at,.L0dab2d60
    li	$v0,0x8078
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab476c:
    # Line 1580
    lwc1	$f1,264($s0)
    swc1	$f1,0($sp)
    # Line 1581
    lwc1	$f0,268($s0)
    swc1	$f0,4($sp)
    # Line 1582
    lwc1	$f3,272($s0)
    # Line 1584
    addiu	$t2,$sp,1200
    # Line 1582
    swc1	$f3,8($sp)
    # Line 1580
    addiu	$s1,$sp,0
    # Line 1583
    lwc1	$f2,276($s0)
    addiu	$s1,$s1,16
    # Line 1584
    b	.L0dab2bd4
    # Line 1583
    swc1	$f2,12($sp)
.L0dab479c:
    # Line 1460
    li	$at,2917
    bne	$a0,$at,.L0dab3518
    # Line 1677
    addiu	$t2,$sp,1200
    lw	$v0,1492($s0)
    addiu	$s2,$t2,4
    # Line 1678
    b	.L0dab2bd4
    # Line 1677
    sw	$v0,1200($sp)
.L0dab47b8:
    # Line 1460
    li	$v1,2966
    bne	$a0,$v1,.L0dab3518
    # Line 1722
    addiu	$t2,$sp,1200
    lw	$a5,1588($s0)
    addiu	$s2,$t2,4
    # Line 1723
    b	.L0dab2bd4
    # Line 1722
    sw	$a5,1200($sp)
.L0dab47d4:
    # Line 1460
    li	$at,2977
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab47f8:
    # Line 1894
    addiu	$t2,$sp,1200
    lw	$v0,1132($s0)
    addiu	$s2,$t2,4
    # Line 1895
    b	.L0dab2bd4
    # Line 1894
    sw	$v0,1200($sp)
.L0dab480c:
    # Line 1460
    li	$v1,2961
    bne	$a0,$v1,.L0dab3518
    # Line 1707
    addiu	$t2,$sp,1200
    lh	$a5,1572($s0)
    addiu	$s2,$t2,4
    # Line 1708
    b	.L0dab2bd4
    # Line 1707
    sw	$a5,1200($sp)
.L0dab4828:
    # Line 1687
    ldc1	$f3,1608($s0)
    cvt.s.d	$f3,$f3
    swc1	$f3,400($sp)
    # Line 1688
    ldc1	$f2,1616($s0)
    # Line 1689
    addiu	$t2,$sp,1200
    # Line 1688
    cvt.s.d	$f2,$f2
    # Line 1687
    addiu	$t0,$sp,400
    # Line 1688
    addiu	$t0,$t0,8
    # Line 1689
    b	.L0dab2bd4
    # Line 1688
    swc1	$f2,404($sp)
.L0dab4850:
    # Line 1749
    lw	$v1,29672($s0)
    lw	$a5,29668($s0)
    subu	$v1,$v1,$a5
    li	$v0,272
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$at
    addiu	$at,$at,1
    # Line 1750
    b	.L0dab2bd4
    # Line 1749
    sw	$at,1200($sp)
.L0dab4880:
    # Line 1460
    li	$a1,0x8089
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab4f90
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab5530
    li	$v1,0x808a
    bne	$a0,$v1,.L0dab3518
    # Line 2211
    addiu	$t2,$sp,1200
    lw	$a5,4848($s0)
    addiu	$s2,$t2,4
    # Line 2212
    b	.L0dab2bd4
    # Line 2211
    sw	$a5,1200($sp)
.L0dab48b0:
    # Line 1460
    li	$a1,0x80b4
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab4fb8
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0dab5504
    li	$v1,0x80b5
    bne	$a0,$v1,.L0dab3518
    # Line 1982
    addiu	$t2,$sp,1200
    # Line 1981
    addiu	$s1,$sp,0
    lwc1	$f0,692($s0)
    addiu	$s1,$s1,4
    # Line 1982
    b	.L0dab2bd4
    # Line 1981
    swc1	$f0,0($sp)
.L0dab48e4:
    # Line 1669
    addiu	$t2,$sp,1200
    # Line 1668
    addiu	$s1,$sp,0
    lwc1	$f1,1512($s0)
    addiu	$s1,$s1,4
    # Line 1669
    b	.L0dab2bd4
    # Line 1668
    swc1	$f1,0($sp)
.L0dab48fc:
    # Line 1713
    addiu	$t2,$sp,1200
    lh	$at,1576($s0)
    addiu	$s2,$t2,4
    # Line 1714
    b	.L0dab2bd4
    # Line 1713
    sw	$at,1200($sp)
.L0dab4910:
    # Line 1460
    li	$v0,3122
    bne	$a0,$v0,.L0dab3518
    # Line 2121
    addiu	$t2,$sp,1200
    # Line 2120
    lbu	$v1,3106($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$v1,$zero,$v1
    # Line 2121
    b	.L0dab2bd4
    # Line 2120
    sb	$v1,1600($sp)
.L0dab4934:
    # Line 1460
    sltiu	$at,$a0,3154
    bnez	$at,.L0dab4fe0
    sltiu	$v0,$a0,3155
    beqz	$v0,.L0dab3518
    # Line 1846
    addiu	$t2,$sp,1200
    lw	$v1,1804($s0)
    addiu	$s2,$t2,4
    # Line 1847
    b	.L0dab2bd4
    # Line 1846
    sw	$v1,1200($sp)
.L0dab4958:
    # Line 1460
    sltiu	$a5,$a0,3351
    bnez	$a5,.L0dab503c
    sltiu	$at,$a0,3352
    bnez	$at,.L0dab557c
    li	$v0,3352
    bne	$a0,$v0,.L0dab3518
    # Line 1928
    addiu	$t2,$sp,1200
    # Line 1927
    addiu	$s1,$sp,0
    lwc1	$f2,620($s0)
    addiu	$s1,$s1,4
    # Line 1928
    b	.L0dab2bd4
    # Line 1927
    swc1	$f2,0($sp)
.L0dab4988:
    # Line 1460
    li	$at,3408
    bne	$a0,$at,.L0dab3518
    # Line 1532
    addiu	$t2,$sp,1200
    lw	$v0,3440($s0)
    addiu	$s2,$t2,4
    # Line 1533
    b	.L0dab2bd4
    # Line 1532
    sw	$v0,1200($sp)
.L0dab49a4:
    # Line 1460
    li	$v1,3417
    bne	$a0,$v1,.L0dab3518
    # Line 2087
    addiu	$t2,$sp,1200
    lw	$a5,3116($s0)
    addiu	$s2,$t2,4
    # Line 2088
    b	.L0dab2bd4
    # Line 2087
    sw	$a5,1200($sp)
.L0dab49c0:
    # Line 1460
    sltiu	$at,$a0,3472
    bnez	$at,.L0dab505c
    sltiu	$v0,$a0,3473
    beqz	$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab49ec:
    # Line 1460
    li	$v1,0x801d
    bne	$a0,$v1,.L0dab3518
    # Line 1958
    addiu	$t2,$sp,1200
    # Line 1957
    addiu	$s1,$sp,0
    lwc1	$f3,660($s0)
    addiu	$s1,$s1,4
    # Line 1958
    b	.L0dab2bd4
    # Line 1957
    swc1	$f3,0($sp)
.L0dab4a0c:
    # Line 1460
    li	$a1,0x8022
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab50a4
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0dab3518
    # Line 1973
    addiu	$t2,$sp,1200
    # Line 1972
    addiu	$s1,$sp,0
    lwc1	$f0,680($s0)
    addiu	$s1,$s1,4
    # Line 1973
    b	.L0dab2bd4
    # Line 1972
    swc1	$f0,0($sp)
.L0dab4a38:
    # Line 1460
    li	$a1,0x807f
    sltu	$at,$a0,$a1
    bnez	$at,.L0dab50e8
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0dab3518
    # Line 2178
    addiu	$t2,$sp,1200
    lw	$v1,4768($s0)
    addiu	$s2,$t2,4
    # Line 2179
    b	.L0dab2bd4
    # Line 2178
    sw	$v1,1200($sp)
.L0dab4a60:
    # Line 1997
    addiu	$t2,$sp,1200
    # Line 1996
    addiu	$s1,$sp,0
    lwc1	$f1,712($s0)
    addiu	$s1,$s1,4
    # Line 1997
    b	.L0dab2bd4
    # Line 1996
    swc1	$f1,0($sp)
.L0dab4a78:
    # Line 1573
    lwc1	$f1,360($s0)
    swc1	$f1,800($sp)
    # Line 1574
    lwc1	$f0,364($s0)
    swc1	$f0,804($sp)
    # Line 1575
    lwc1	$f3,368($s0)
    swc1	$f3,808($sp)
    # Line 1571
    addiu	$t1,$sp,800
    # Line 1576
    lwc1	$f2,372($s0)
    addiu	$t1,$t1,16
    b	.L0dab3a04
    swc1	$f2,812($sp)
.L0dab4aa4:
    # Line 1460
    li	$at,2896
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4ac8:
    # Line 1460
    li	$v0,3074
    bne	$a0,$v0,.L0dab3518
    # Line 1804
    addiu	$t2,$sp,1200
    lw	$v1,1152($s0)
    addiu	$s2,$t2,4
    # Line 1805
    b	.L0dab2bd4
    # Line 1804
    sw	$v1,1200($sp)
.L0dab4ae4:
    # Line 1460
    li	$a5,3105
    bne	$a0,$a5,.L0dab3518
    # Line 1819
    addiu	$t2,$sp,1200
    lw	$at,1780($s0)
    addiu	$s2,$t2,4
    # Line 1820
    b	.L0dab2bd4
    # Line 1819
    sw	$at,1200($sp)
.L0dab4b00:
    # Line 1460
    sltiu	$v0,$a0,3332
    bnez	$v0,.L0dab514c
    sltiu	$v1,$a0,3333
    beqz	$v1,.L0dab3518
    # Line 1882
    addiu	$t2,$sp,1200
    lw	$a5,1084($s0)
    addiu	$s2,$t2,4
    # Line 1883
    b	.L0dab2bd4
    # Line 1882
    sw	$a5,1200($sp)
.L0dab4b24:
    # Line 1460
    li	$at,3383
    bne	$a0,$at,.L0dab3518
    # Line 2046
    addiu	$t2,$sp,1200
    lw	$v0,3488($s0)
    addiu	$s2,$t2,4
    # Line 2047
    b	.L0dab2bd4
    # Line 2046
    sw	$v0,1200($sp)
.L0dab4b40:
    # Line 1460
    li	$v1,3412
    bne	$a0,$v1,.L0dab3518
    # Line 2067
    addiu	$t2,$sp,1200
    lw	$a5,3148($s0)
    addiu	$s2,$t2,4
    # Line 2068
    b	.L0dab2bd4
    # Line 2067
    sw	$a5,1200($sp)
.L0dab4b5c:
    # Line 1460
    sltiu	$at,$a0,10752
    bnez	$at,.L0dab518c
    sltiu	$v0,$a0,10753
    beqz	$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2145
    lwc1	$f2,480($s0)
    lwc1	$f3,484($s0)
    div.s	$f2,$f2,$f3
    # Line 2147
    addiu	$t2,$sp,1200
    # Line 2145
    addiu	$s1,$sp,0
    addiu	$s1,$s1,4
    # Line 2147
    b	.L0dab2bd4
    # Line 2145
    swc1	$f2,0($sp)
.L0dab4b90:
    # Line 1460
    sltiu	$at,$a0,16386
    bnez	$at,.L0dab51cc
    sltiu	$v0,$a0,16387
    bnez	$v0,.L0dab2d60
    li	$v1,16387
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4bc4:
    # Line 1460
    li	$a5,0x8009
    bne	$a0,$a5,.L0dab3518
    # Line 2135
    addiu	$t2,$sp,1200
    lw	$at,1736($s0)
    addiu	$s2,$t2,4
    # Line 2136
    b	.L0dab2bd4
    # Line 2135
    sw	$at,1200($sp)
.L0dab4be0:
    # Line 2187
    addiu	$t2,$sp,1200
    lw	$v0,4788($s0)
    addiu	$s2,$t2,4
    # Line 2188
    b	.L0dab2bd4
    # Line 2187
    sw	$v0,1200($sp)
.L0dab4bf4:
    # Line 1460
    li	$v1,2882
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4c18:
    # Line 1460
    li	$a5,3056
    bne	$a0,$a5,.L0dab3518
    # Line 1798
    addiu	$t2,$sp,1200
    lw	$at,1756($s0)
    addiu	$s2,$t2,4
    # Line 1799
    b	.L0dab2bd4
    # Line 1798
    sw	$at,1200($sp)
.L0dab4c34:
    # Line 1460
    li	$v0,3249
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dab2b94
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab4c48:
    # Line 1460
    li	$v1,3254
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    b	.L0dab2b94
    # Line 2021
    addiu	$t2,$sp,1200
.L0dab4c5c:
    # Line 1460
    sltiu	$a5,$a0,3313
    bnez	$a5,.L0dab529c
    sltiu	$at,$a0,3314
    beqz	$at,.L0dab3518
    # Line 1892
    addiu	$t2,$sp,1200
    # Line 1891
    addiu	$a7,$sp,1600
    lbu	$v0,1109($s0)
    addiu	$a7,$a7,1
    # Line 1892
    b	.L0dab2bd4
    # Line 1891
    sb	$v0,1600($sp)
.L0dab4c84:
    # Line 1460
    li	$at,3480
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4ca8:
    # Line 1460
    li	$v0,3508
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4ccc:
    # Line 1460
    sltiu	$v1,$a0,3536
    bnez	$v1,.L0dab52bc
    sltiu	$a5,$a0,3537
    beqz	$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 2096
    lwc1	$f1,1824($s0)
    # Line 2098
    addiu	$t2,$sp,1200
    # Line 2096
    swc1	$f1,0($sp)
    addiu	$s1,$sp,0
    # Line 2097
    lwc1	$f0,1828($s0)
    addiu	$s1,$s1,8
    # Line 2098
    b	.L0dab2bd4
    # Line 2097
    swc1	$f0,4($sp)
.L0dab4d00:
    # Line 1618
    addiu	$t2,$sp,1200
    # Line 1617
    addiu	$s1,$sp,0
    lwc1	$f2,444($s0)
    addiu	$s1,$s1,4
    # Line 1618
    b	.L0dab2bd4
    # Line 1617
    swc1	$f2,0($sp)
.L0dab4d18:
    # Line 1792
    addiu	$t2,$sp,1200
    lw	$at,1732($s0)
    addiu	$s2,$t2,4
    # Line 1793
    b	.L0dab2bd4
    # Line 1792
    sw	$at,1200($sp)
.L0dab4d2c:
    # Line 1831
    lbu	$v1,1784($s0)
    sb	$v1,1600($sp)
    # Line 1832
    lbu	$v0,1785($s0)
    sb	$v0,1601($sp)
    # Line 1833
    lbu	$at,1786($s0)
    # Line 1835
    addiu	$t2,$sp,1200
    # Line 1833
    sb	$at,1602($sp)
    # Line 1831
    addiu	$a7,$sp,1600
    # Line 1834
    lbu	$v0,1787($s0)
    addiu	$a7,$a7,4
    # Line 1835
    b	.L0dab2bd4
    # Line 1834
    sb	$v0,1603($sp)
.L0dab4d5c:
    # Line 1858
    addiu	$t2,$sp,1200
    lw	$a5,4688($s0)
    addiu	$s2,$t2,4
    # Line 1859
    b	.L0dab2bd4
    # Line 1858
    sw	$a5,1200($sp)
.L0dab4d70:
    # Line 1916
    addiu	$t2,$sp,1200
    # Line 1915
    addiu	$a7,$sp,1600
    lbu	$at,737($s0)
    addiu	$a7,$a7,1
    # Line 1916
    b	.L0dab2bd4
    # Line 1915
    sb	$at,1600($sp)
.L0dab4d88:
    # Line 2034
    addiu	$t2,$sp,1200
    lw	$at,3476($s0)
    addiu	$s2,$t2,4
    # Line 2035
    b	.L0dab2bd4
    # Line 2034
    sw	$at,1200($sp)
.L0dab4d9c:
    # Line 2052
    addiu	$t2,$sp,1200
    lw	$v0,3500($s0)
    addiu	$s2,$t2,4
    # Line 2053
    b	.L0dab2bd4
    # Line 2052
    sw	$v0,1200($sp)
.L0dab4db0:
    # Line 2073
    addiu	$t2,$sp,1200
    lw	$v1,3128($s0)
    addiu	$s2,$t2,4
    # Line 2074
    b	.L0dab2bd4
    # Line 2073
    sw	$v1,1200($sp)
.L0dab4dc4:
    # Line 1460
    li	$a5,0x806f
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4de8:
    # Line 1906
    addiu	$t2,$sp,1200
    lw	$at,1120($s0)
    addiu	$s2,$t2,4
    # Line 1907
    b	.L0dab2bd4
    # Line 1906
    sw	$at,1200($sp)
.L0dab4dfc:
    # Line 2109
    lw	$v1,1852($s0)
    sw	$v1,1200($sp)
    addiu	$t2,$sp,1200
    # Line 2110
    lw	$v0,1868($s0)
    addiu	$s2,$t2,8
    # Line 2111
    b	.L0dab2bd4
    # Line 2110
    sw	$v0,1204($sp)
.L0dab4e18:
    # Line 1460
    li	$a5,2981
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1752
    lw	$v1,29684($s0)
    lw	$a5,29680($s0)
    subu	$v1,$v1,$a5
    li	$v0,272
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$at
    addiu	$at,$at,1
    # Line 1753
    b	.L0dab2bd4
    # Line 1752
    sw	$at,1200($sp)
.L0dab4e54:
    sd	$ra,1744($sp)
    sd	$a7,1704($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    # Line 1460
    li	$at,0x8069
    bne	$a0,$at,.L0dab3518
    sd	$a4,1752($sp)
    # Line 2158
    # lw $t9, -27072($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    li	$a1,3553
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    addiu	$t2,$sp,1200
    # Line 2159
    lw	$v0,0($v0)
    addiu	$s2,$t2,4
    # Line 2161
    b	.L0dab2bd4
    # Line 2159
    sw	$v0,1200($sp)
.L0dab4eb0:
    # Line 1460
    li	$v1,0x8076
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4ed4:
    # Line 1698
    addiu	$t2,$sp,1200
    lw	$a5,1536($s0)
    addiu	$s2,$t2,4
    # Line 1699
    b	.L0dab2bd4
    # Line 1698
    sw	$a5,1200($sp)
.L0dab4ee8:
    # Line 1870
    addiu	$t2,$sp,1200
    lw	$at,1096($s0)
    addiu	$s2,$t2,4
    # Line 1871
    b	.L0dab2bd4
    # Line 1870
    sw	$at,1200($sp)
.L0dab4efc:
    # Line 1460
    li	$a1,0x80bc
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab546c
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0dab2d60
    li	$a5,0x80d0
    bne	$a0,$a5,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab4f34:
    # Line 1725
    addiu	$t2,$sp,1200
    lh	$at,1574($s0)
    addiu	$s2,$t2,4
    # Line 1726
    b	.L0dab2bd4
    # Line 1725
    sw	$at,1200($sp)
.L0dab4f48:
    # Line 1734
    lw	$t2,1592($s0)
    sw	$t2,1200($sp)
    # Line 1735
    lw	$a5,1596($s0)
    sw	$a5,1204($sp)
    # Line 1736
    lw	$v1,1600($s0)
    sw	$v1,1208($sp)
    # Line 1734
    addiu	$t2,$sp,1200
    # Line 1737
    lw	$v0,1604($s0)
    addiu	$s2,$t2,16
    # Line 1738
    b	.L0dab2bd4
    # Line 1737
    sw	$v0,1212($sp)
.L0dab4f74:
    # Line 1460
    li	$at,0x8083
    bne	$a0,$at,.L0dab3518
    # Line 2190
    addiu	$t2,$sp,1200
    lw	$v0,4796($s0)
    addiu	$s2,$t2,4
    # Line 2191
    b	.L0dab2bd4
    # Line 2190
    sw	$v0,1200($sp)
.L0dab4f90:
    # Line 1460
    li	$a1,0x8088
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0dab54ac
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0dab3518
    # Line 2205
    addiu	$t2,$sp,1200
    lw	$at,4836($s0)
    addiu	$s2,$t2,4
    # Line 2206
    b	.L0dab2bd4
    # Line 2205
    sw	$at,1200($sp)
.L0dab4fb8:
    # Line 1460
    li	$a1,0x80b3
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dab54c8
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0dab3518
    # Line 2055
    addiu	$t2,$sp,1200
    lw	$a5,3504($s0)
    addiu	$s2,$t2,4
    # Line 2056
    b	.L0dab2bd4
    # Line 2055
    sw	$a5,1200($sp)
.L0dab4fe0:
    # Line 1460
    li	$at,3153
    bne	$a0,$at,.L0dab3518
    # Line 1843
    addiu	$t2,$sp,1200
    lw	$v0,1800($s0)
    addiu	$s2,$t2,4
    # Line 1844
    b	.L0dab2bd4
    # Line 1843
    sw	$v0,1200($sp)
.L0dab4ffc:
    # Line 1460
    li	$v1,3169
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab5020:
    # Line 1460
    li	$a5,3346
    bne	$a0,$a5,.L0dab3518
    # Line 1918
    addiu	$t2,$sp,1200
    lw	$at,728($s0)
    addiu	$s2,$t2,4
    # Line 1919
    b	.L0dab2bd4
    # Line 1918
    sw	$at,1200($sp)
.L0dab503c:
    # Line 1460
    li	$v0,3350
    bne	$a0,$v0,.L0dab3518
    # Line 2012
    addiu	$t2,$sp,1200
    # Line 2011
    addiu	$s1,$sp,0
    lwc1	$f3,720($s0)
    addiu	$s1,$s1,4
    # Line 2012
    b	.L0dab2bd4
    # Line 2011
    swc1	$f3,0($sp)
.L0dab505c:
    # Line 1460
    li	$at,3456
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab5080:
    # Line 1460
    li	$v0,3476
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab50a4:
    # Line 1460
    li	$v1,0x8021
    bne	$a0,$v1,.L0dab3518
    # Line 1970
    addiu	$t2,$sp,1200
    # Line 1969
    addiu	$s1,$sp,0
    lwc1	$f0,676($s0)
    addiu	$s1,$s1,4
    # Line 1970
    b	.L0dab2bd4
    # Line 1969
    swc1	$f0,0($sp)
.L0dab50c4:
    # Line 1460
    li	$at,0x8037
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab50e8:
    # Line 1460
    li	$v0,0x807e
    bne	$a0,$v0,.L0dab3518
    # Line 2175
    addiu	$t2,$sp,1200
    lw	$v1,4760($s0)
    addiu	$s2,$t2,4
    # Line 2176
    b	.L0dab2bd4
    # Line 2175
    sw	$v1,1200($sp)
.L0dab5104:
    # Line 1985
    addiu	$t2,$sp,1200
    # Line 1984
    addiu	$s1,$sp,0
    lwc1	$f1,696($s0)
    addiu	$s1,$s1,4
    # Line 1985
    b	.L0dab2bd4
    # Line 1984
    swc1	$f1,0($sp)
.L0dab511c:
    # Line 2214
    addiu	$t2,$sp,1200
    lw	$at,4852($s0)
    addiu	$s2,$t2,4
    # Line 2215
    b	.L0dab2bd4
    # Line 2214
    sw	$at,1200($sp)
.L0dab5130:
    # Line 1460
    li	$v0,3317
    bne	$a0,$v0,.L0dab3518
    # Line 1909
    addiu	$t2,$sp,1200
    lw	$v1,1124($s0)
    addiu	$s2,$t2,4
    # Line 1910
    b	.L0dab2bd4
    # Line 1909
    sw	$v1,1200($sp)
.L0dab514c:
    # Line 1460
    li	$a5,3331
    bne	$a0,$a5,.L0dab3518
    # Line 1879
    addiu	$t2,$sp,1200
    lw	$at,1080($s0)
    addiu	$s2,$t2,4
    # Line 1880
    b	.L0dab2bd4
    # Line 1879
    sw	$at,1200($sp)
.L0dab5168:
    # Line 1460
    li	$v0,3552
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab518c:
    # Line 1460
    li	$v1,3572
    bne	$a0,$v1,.L0dab3518
    # Line 2229
    addiu	$t2,$sp,1200
    lw	$a5,4612($s0)
    addiu	$s2,$t2,4
    # Line 2230
    b	.L0dab2bd4
    # Line 2229
    sw	$a5,1200($sp)
.L0dab51a8:
    # Line 1460
    li	$at,12291
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab51cc:
    # Line 1460
    li	$v0,16385
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab51f0:
    # Line 1849
    addiu	$t2,$sp,1200
    lw	$v1,1808($s0)
    addiu	$s2,$t2,4
    # Line 1850
    b	.L0dab2bd4
    # Line 1849
    sw	$v1,1200($sp)
.L0dab5204:
    # Line 1943
    addiu	$t2,$sp,1200
    # Line 1942
    addiu	$s1,$sp,0
    lwc1	$f2,640($s0)
    addiu	$s1,$s1,4
    # Line 1943
    b	.L0dab2bd4
    # Line 1942
    swc1	$f2,0($sp)
.L0dab521c:
    # Line 1961
    addiu	$t2,$sp,1200
    # Line 1960
    addiu	$s1,$sp,0
    lwc1	$f3,664($s0)
    addiu	$s1,$s1,4
    # Line 1961
    b	.L0dab2bd4
    # Line 1960
    swc1	$f3,0($sp)
.L0dab5234:
    # Line 1976
    addiu	$t2,$sp,1200
    # Line 1975
    addiu	$s1,$sp,0
    lwc1	$f0,684($s0)
    addiu	$s1,$s1,4
    # Line 1976
    b	.L0dab2bd4
    # Line 1975
    swc1	$f0,0($sp)
.L0dab524c:
    # Line 2058
    addiu	$t2,$sp,1200
    lw	$at,3136($s0)
    addiu	$s2,$t2,4
    # Line 2059
    b	.L0dab2bd4
    # Line 2058
    sw	$at,1200($sp)
.L0dab5260:
    # Line 2090
    addiu	$t2,$sp,1200
    lw	$v0,3120($s0)
    addiu	$s2,$t2,4
    # Line 2091
    b	.L0dab2bd4
    # Line 2090
    sw	$v0,1200($sp)
.L0dab5274:
    # Line 2127
    addiu	$t2,$sp,1200
    # Line 2126
    sb	$zero,1600($sp)
    addiu	$a7,$sp,1600
    # Line 2127
    b	.L0dab2bd4
    # Line 2126
    addiu	$a7,$a7,1
.L0dab5288:
    # Line 2181
    addiu	$t2,$sp,1200
    lw	$at,4772($s0)
    addiu	$s2,$t2,4
    # Line 2182
    b	.L0dab2bd4
    # Line 2181
    sw	$at,1200($sp)
.L0dab529c:
    # Line 1460
    li	$v0,3312
    bne	$a0,$v0,.L0dab3518
    # Line 1889
    addiu	$t2,$sp,1200
    # Line 1888
    addiu	$a7,$sp,1600
    lbu	$v1,1108($s0)
    addiu	$a7,$a7,1
    # Line 1889
    b	.L0dab2bd4
    # Line 1888
    sb	$v1,1600($sp)
.L0dab52bc:
    # Line 1460
    li	$at,3512
    bne	$a0,$at,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab52e0:
    # Line 1647
    addiu	$t2,$sp,1200
    # Line 1646
    addiu	$a7,$sp,1600
    lbu	$v0,1324($s0)
    addiu	$a7,$a7,1
    # Line 1647
    b	.L0dab2bd4
    # Line 1646
    sb	$v0,1600($sp)
.L0dab52f8:
    # Line 1807
    lw	$a5,2412($s0)
    sw	$a5,1200($sp)
    # Line 1808
    lw	$v1,2416($s0)
    sw	$v1,1204($sp)
    # Line 1809
    lw	$v0,2420($s0)
    sw	$v0,1208($sp)
    # Line 1807
    addiu	$t2,$sp,1200
    # Line 1810
    lw	$at,2424($s0)
    addiu	$s2,$t2,16
    # Line 1811
    b	.L0dab2bd4
    # Line 1810
    sw	$at,1212($sp)
.L0dab5324:
    # Line 1885
    addiu	$t2,$sp,1200
    lw	$at,1088($s0)
    addiu	$s2,$t2,4
    # Line 1886
    b	.L0dab2bd4
    # Line 1885
    sw	$at,1200($sp)
.L0dab5338:
    # Line 1897
    addiu	$t2,$sp,1200
    lw	$v0,1112($s0)
    addiu	$s2,$t2,4
    # Line 1898
    b	.L0dab2bd4
    # Line 1897
    sw	$v0,1200($sp)
.L0dab534c:
    # Line 2100
    addiu	$t2,$sp,1200
    lw	$v1,1836($s0)
    addiu	$s2,$t2,4
    # Line 2101
    b	.L0dab2bd4
    # Line 2100
    sw	$v1,1200($sp)
.L0dab5360:
    # Line 1460
    li	$a5,0x807a
    bne	$a0,$a5,.L0dab3518
    # Line 2163
    addiu	$t2,$sp,1200
    lw	$at,4732($s0)
    addiu	$s2,$t2,4
    # Line 2164
    b	.L0dab2bd4
    # Line 2163
    sw	$at,1200($sp)
.L0dab537c:
    # Line 1529
    addiu	$t2,$sp,1200
    lw	$v0,3432($s0)
    addiu	$s2,$t2,4
    # Line 1530
    b	.L0dab2bd4
    # Line 1529
    sw	$v0,1200($sp)
.L0dab5390:
    # Line 1759
    lw	$at,29664($s0)
    lwc1	$f0,0($at)
    swc1	$f0,0($sp)
    lwc1	$f3,4($at)
    swc1	$f3,4($sp)
    lwc1	$f2,8($at)
    swc1	$f2,8($sp)
    lwc1	$f1,12($at)
    swc1	$f1,12($sp)
    # Line 1760
    lwc1	$f0,16($at)
    swc1	$f0,16($sp)
    lwc1	$f3,20($at)
    swc1	$f3,20($sp)
    lwc1	$f2,24($at)
    swc1	$f2,24($sp)
    lwc1	$f1,28($at)
    swc1	$f1,28($sp)
    # Line 1761
    lwc1	$f0,32($at)
    swc1	$f0,32($sp)
    lwc1	$f3,36($at)
    swc1	$f3,36($sp)
    lwc1	$f2,40($at)
    swc1	$f2,40($sp)
    lwc1	$f1,44($at)
    swc1	$f1,44($sp)
    # Line 1762
    lwc1	$f0,48($at)
    swc1	$f0,48($sp)
    lwc1	$f3,52($at)
    swc1	$f3,52($sp)
    lwc1	$f2,56($at)
    # Line 1763
    addiu	$t2,$sp,1200
    # Line 1762
    swc1	$f2,56($sp)
    # Line 1758
    addiu	$s1,$sp,0
    # Line 1762
    lwc1	$f1,60($at)
    addiu	$s1,$s1,64
    # Line 1763
    b	.L0dab2bd4
    # Line 1762
    swc1	$f1,60($sp)
.L0dab5424:
    # Line 1562
    lwc1	$f1,360($s0)
    b	.L0dab3fb4
    swc1	$f1,0($sp)
.L0dab5430:
    # Line 1460
    li	$v0,0x808c
    bne	$a0,$v0,.L0dab3518
    # Line 2217
    addiu	$t2,$sp,1200
    lw	$v1,4868($s0)
    addiu	$s2,$t2,4
    # Line 2218
    b	.L0dab2bd4
    # Line 2217
    sw	$v1,1200($sp)
.L0dab544c:
    # Line 1460
    li	$a5,0x80b7
    bne	$a0,$a5,.L0dab3518
    # Line 1988
    addiu	$t2,$sp,1200
    # Line 1987
    addiu	$s1,$sp,0
    lwc1	$f2,700($s0)
    addiu	$s1,$s1,4
    # Line 1988
    b	.L0dab2bd4
    # Line 1987
    swc1	$f2,0($sp)
.L0dab546c:
    # Line 1460
    li	$at,0x80bb
    bne	$a0,$at,.L0dab3518
    # Line 2000
    addiu	$t2,$sp,1200
    # Line 1999
    addiu	$s1,$sp,0
    lwc1	$f3,716($s0)
    addiu	$s1,$s1,4
    # Line 2000
    b	.L0dab2bd4
    # Line 1999
    swc1	$f3,0($sp)
.L0dab548c:
    # Line 1460
    li	$at,3354
    bne	$a0,$at,.L0dab3518
    # Line 1931
    addiu	$t2,$sp,1200
    # Line 1930
    addiu	$s1,$sp,0
    lwc1	$f0,624($s0)
    addiu	$s1,$s1,4
    # Line 1931
    b	.L0dab2bd4
    # Line 1930
    swc1	$f0,0($sp)
.L0dab54ac:
    # Line 1460
    li	$at,0x8087
    bne	$a0,$at,.L0dab3518
    # Line 2202
    addiu	$t2,$sp,1200
    lw	$v0,4824($s0)
    addiu	$s2,$t2,4
    # Line 2203
    b	.L0dab2bd4
    # Line 2202
    sw	$v0,1200($sp)
.L0dab54c8:
    # Line 1460
    li	$v1,0x80b2
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 1755
    lw	$s2,29692($s0)
    lw	$at,29688($s0)
    subu	$s2,$s2,$at
    li	$t2,272
    div	$zero,$s2,$t2
    teq	$t2,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$a5
    addiu	$a5,$a5,1
    # Line 1756
    b	.L0dab2bd4
    # Line 1755
    sw	$a5,1200($sp)
.L0dab5504:
    # Line 1979
    addiu	$t2,$sp,1200
    # Line 1978
    addiu	$s1,$sp,0
    lwc1	$f1,688($s0)
    addiu	$s1,$s1,4
    # Line 1979
    b	.L0dab2bd4
    # Line 1978
    swc1	$f1,0($sp)
.L0dab551c:
    # Line 2193
    addiu	$t2,$sp,1200
    lw	$at,4800($s0)
    addiu	$s2,$t2,4
    # Line 2194
    b	.L0dab2bd4
    # Line 2193
    sw	$at,1200($sp)
.L0dab5530:
    # Line 2208
    addiu	$t2,$sp,1200
    lw	$v0,4840($s0)
    addiu	$s2,$t2,4
    # Line 2209
    b	.L0dab2bd4
    # Line 2208
    sw	$v0,1200($sp)
.L0dab5544:
    # Line 1460
    li	$v1,16389
    bne	$a0,$v1,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab5568:
    # Line 1921
    addiu	$t2,$sp,1200
    lw	$a5,732($s0)
    addiu	$s2,$t2,4
    # Line 1922
    b	.L0dab2bd4
    # Line 1921
    sw	$a5,1200($sp)
.L0dab557c:
    # Line 2015
    addiu	$t2,$sp,1200
    # Line 2014
    addiu	$s1,$sp,0
    lwc1	$f2,724($s0)
    addiu	$s1,$s1,4
    # Line 2015
    b	.L0dab2bd4
    # Line 2014
    swc1	$f2,0($sp)
.L0dab5594:
    # Line 2139
    addiu	$t2,$sp,1200
    # Line 2138
    addiu	$s1,$sp,0
    lwc1	$f3,476($s0)
    addiu	$s1,$s1,4
    # Line 2139
    b	.L0dab2bd4
    # Line 2138
    swc1	$f3,0($sp)
.L0dab55ac:
    # Line 1865
    addiu	$t2,$sp,1200
    # Line 1864
    addiu	$a7,$sp,1600
    lbu	$at,1072($s0)
    addiu	$a7,$a7,1
    # Line 1865
    b	.L0dab2bd4
    # Line 1864
    sb	$at,1600($sp)
.L0dab55c4:
    # Line 2166
    addiu	$t2,$sp,1200
    lw	$at,4736($s0)
    addiu	$s2,$t2,4
    # Line 2167
    b	.L0dab2bd4
    # Line 2166
    sw	$at,1200($sp)
.L0dab55d8:
    b	.L0dab32f4
    # Line 1594
    swc1	$f4,4($sp)
.L0dab55e0:
    # Line 1460
    li	$v0,0x80d2
    bne	$a0,$v0,.L0dab351c
    # Line 2233
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0dab2d60
    sd	$a4,1752($sp)
.L0dab5604:
    # Line 1991
    addiu	$t2,$sp,1200
    # Line 1990
    addiu	$s1,$sp,0
    lwc1	$f0,704($s0)
    addiu	$s1,$s1,4
    # Line 1991
    b	.L0dab2bd4
    # Line 1990
    swc1	$f0,0($sp)
.L0dab561c:
    # Line 2220
    addiu	$t2,$sp,1200
    lw	$at,4872($s0)
    addiu	$s2,$t2,4
    # Line 2221
    b	.L0dab2bd4
    # Line 2220
    sw	$at,1200($sp)
.L0dab5630:
    # Line 1946
    addiu	$t2,$sp,1200
    # Line 1945
    addiu	$s1,$sp,0
    lwc1	$f1,644($s0)
    addiu	$s1,$s1,4
    # Line 1946
    b	.L0dab2bd4
    # Line 1945
    swc1	$f1,0($sp)
.end __glDoGet

# Function: __glim_GetDoublev
# Declared: Line 2255 (Source lines: 2256-2258)
# Address: 0x0dab5648 - 0x0dab5684 (Size: 60 bytes, Frame: 32)
.globl __glim_GetDoublev
.ent __glim_GetDoublev
__glim_GetDoublev:
    # Line 2257
    li	$a2,2
    # Line 2256
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$a4,0x14
    addiu	$a4,$a4,8736
    # addu	gp,t9,a4
    # Line 2257
    # lw $t9, -28516($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-17664
    # Line 2258
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetDoublev

# Function: __glim_GetFloatv
# Declared: Line 2260 (Source lines: 2261-2263)
# Address: 0x0dab5684 - 0x0dab56c0 (Size: 60 bytes, Frame: 32)
.globl __glim_GetFloatv
.ent __glim_GetFloatv
__glim_GetFloatv:
    # Line 2262
    li	$a2,1
    # Line 2261
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$a4,0x14
    addiu	$a4,$a4,8676
    # addu	gp,t9,a4
    # Line 2262
    # lw $t9, -28516($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-17648
    # Line 2263
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetFloatv

# Function: __glim_GetIntegerv
# Declared: Line 2265 (Source lines: 2266-2268)
# Address: 0x0dab56c0 - 0x0dab56fc (Size: 60 bytes, Frame: 32)
.globl __glim_GetIntegerv
.ent __glim_GetIntegerv
__glim_GetIntegerv:
    # Line 2267
    li	$a2,3
    # Line 2266
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$a4,0x14
    addiu	$a4,$a4,8616
    # addu	gp,t9,a4
    # Line 2267
    # lw $t9, -28516($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-17632
    # Line 2268
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetIntegerv

# Function: __glim_GetBooleanv
# Declared: Line 2270 (Source lines: 2271-2273)
# Address: 0x0dab56fc - 0x0dab5738 (Size: 60 bytes, Frame: 32)
.globl __glim_GetBooleanv
.ent __glim_GetBooleanv
__glim_GetBooleanv:
    # Line 2272
    li	$a2,4
    # Line 2271
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$a4,0x14
    addiu	$a4,$a4,8556
    # addu	gp,t9,a4
    # Line 2272
    # lw $t9, -28516($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-17616
    # Line 2273
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetBooleanv

# Function: __glim_GetError
# Declared: Line 2278 (Source lines: 2279-2286)
# Address: 0x0dab5738 - 0x0dab5794 (Size: 92 bytes, Frame: 16)
.globl __glim_GetError
.ent __glim_GetError
__glim_GetError:
    # Line 2281
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 2279
    addiu	$sp,$sp,-16
    # sd	gp,0(sp)
    # Line 2281
    lw	$at,__glBeginMode
    # Line 2279
    lui	$v1,0x14
    addiu	$v1,$v1,8496
    # Line 2281
    beq	$at,$v0,.L0dab5770
    # Line 2279
    nop
    # Line 2283
    lw	$v0,3096($a2)
    # Line 2284
    sw	$zero,3096($a2)
    # ld	gp,0(sp)
    # Line 2286
    jr	$ra
    addiu	$sp,$sp,16
.L0dab5770:
    # Line 2281
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetError

# Function: __glim_GetString
# Declared: Line 2292 (Source lines: 2293-2307)
# Address: 0x0dab5794 - 0x0dab5860 (Size: 204 bytes, Frame: 32)
.globl __glim_GetString
.ent __glim_GetString
__glim_GetString:
    # Line 2294
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 2293
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2294
    lw	$at,__glBeginMode
    # Line 2293
    lui	$v1,0x14
    addiu	$v1,$v1,8404
    # Line 2294
    beq	$at,$v0,.L0dab583c
    # Line 2293
    addu	$gp,$t9,$v1
    # Line 2296
    li	$a1,7936
    beq	$a0,$a1,.L0dab580c
    li	$at,7937
    beq	$a0,$at,.L0dab581c
    li	$v0,7938
    beq	$a0,$v0,.L0dab582c
    li	$v1,7939
    beq	$a0,$v1,.L0dab57fc
    # Line 2306
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2307
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab57fc:
    # Line 2304
    lw	$v0,3324($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab580c:
    # Line 2298
    lw	$v0,3312($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab581c:
    # Line 2300
    lw	$v0,3316($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab582c:
    # Line 2302
    lw	$v0,3320($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab583c:
    # Line 2294
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetString

# Function: __glim_GetPointervEXT
# Declared: Line 2312 (Source lines: 2314-2344)
# Address: 0x0dab5860 - 0x0dab59e0 (Size: 384 bytes, Frame: 32)
.globl __glim_GetPointervEXT
.ent __glim_GetPointervEXT
__glim_GetPointervEXT:
    # Line 2315
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 2314
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2315
    lw	$at,__glBeginMode
    # Line 2314
    lui	$v1,0x14
    addiu	$v1,$v1,8200
    # Line 2315
    beq	$at,$v0,.L0dab59c0
    # Line 2314
    addu	$gp,$t9,$v1
    # Line 2315
    li	$a4,0x8090
    sltu	$a2,$a0,$a4
    bnez	$a2,.L0dab58cc
    # Line 2317
    sltu	$at,$a4,$a0
    beqz	$at,.L0dab5970
    li	$a4,0x8092
    sltu	$v0,$a0,$a4
    bnez	$v0,.L0dab5930
    sltu	$v1,$a4,$a0
    beqz	$v1,.L0dab59ac
    li	$a2,0x8093
    bne	$a0,$a2,.L0dab58ec
    # Line 2343
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2334
    lw	$at,4860($a3)
    # Line 2335
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2334
    sw	$at,0($a1)
.L0dab58cc:
    # Line 2317
    li	$a4,0x808e
    sltu	$v0,$a0,$a4
    bnez	$v0,.L0dab5908
    sltu	$v1,$a4,$a0
    beqz	$v1,.L0dab5998
    li	$a2,0x808f
    beq	$a0,$a2,.L0dab5984
    # Line 2343
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0dab58ec:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2344
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab5908:
    # Line 2317
    sltiu	$at,$a0,3571
    bnez	$at,.L0dab5950
    sltiu	$v0,$a0,3572
    beqz	$v0,.L0dab58ec
    # Line 2343
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2340
    lw	$v1,4604($a3)
    # Line 2341
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2340
    sw	$v1,0($a1)
.L0dab5930:
    # Line 2317
    li	$a2,0x8091
    bne	$a0,$a2,.L0dab58ec
    # Line 2343
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2328
    lw	$at,4808($a3)
    # Line 2329
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2328
    sw	$at,0($a1)
.L0dab5950:
    # Line 2317
    li	$v0,3568
    bne	$a0,$v0,.L0dab58ec
    # Line 2343
    nop	# was lw $t9, -29008($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2337
    lw	$v1,4572($a3)
    # Line 2338
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2337
    sw	$v1,0($a1)
.L0dab5970:
    ld	$gp,0($sp)
    # Line 2325
    lw	$a0,4780($a3)
    # Line 2326
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2325
    sw	$a0,0($a1)
.L0dab5984:
    ld	$gp,0($sp)
    # Line 2322
    lw	$a2,4756($a3)
    # Line 2323
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2322
    sw	$a2,0($a1)
.L0dab5998:
    ld	$gp,0($sp)
    # Line 2319
    lw	$at,4728($a3)
    # Line 2320
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2319
    sw	$at,0($a1)
.L0dab59ac:
    ld	$gp,0($sp)
    # Line 2331
    lw	$v0,4832($a3)
    # Line 2332
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2331
    sw	$v0,0($a1)
.L0dab59c0:
    # Line 2315
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPointervEXT

.late_rodata
jtbl_0dbeb840:
    .word .L0dab0224
    .word .L0dab0258
    .word .L0dab0278
    .word .L0dab0294
    .word .L0dab02b8
    .word .L0dab02d4
    .word .L0dab02e0
    .word .L0dab0244
    .word .L0dab02ec
    .word .L0dab02f8
jtbl_0dbeb868:
    .word .L0dab03f4
    .word .L0dab043c
    .word .L0dab0458
    .word .L0dab0474
    .word .L0dab0498
    .word .L0dab04bc
    .word .L0dab04e0
    .word .L0dab0410
    .word .L0dab0504
    .word .L0dab0528
jtbl_0dbeb890:
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b80
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0b60
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
    .word .L0dab0bb8
jtbl_0dbeb938:
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0edc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0ebc
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
    .word .L0dab0f14
jtbl_0dbeb9e0:
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab127c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab125c
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
    .word .L0dab12b4
jtbl_0dbeba88:
    .word .L0dab14f4
    .word .L0dab14f4
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
    .word .L0dab15e0
jtbl_0dbebab0:
    .word .L0dab1720
    .word .L0dab1720
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
    .word .L0dab17d0
jtbl_0dbebad8:
    .word .L0dab1994
    .word .L0dab1994
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44
    .word .L0dab1a44

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_42040000:
    .word 0x42040000
_lit_c1200000:
    .word 0xc1200000

