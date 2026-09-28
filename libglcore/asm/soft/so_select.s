# Source: ../soft/so_select.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_select.c
# Total Functions: 9

.text

# Function: __glim_SelectBuffer
# Declared: Line 25 (Source lines: 26-41)
# Address: 0x0dad9ab4 - 0x0dad9b64 (Size: 176 bytes, Frame: 32)
.globl __glim_SelectBuffer
.ent __glim_SelectBuffer
__glim_SelectBuffer:
    # Line 27
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 26
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 27
    lw	$at,__glBeginMode
    # Line 26
    lui	$v1,0x12
    addiu	$v1,$v1,-8780
    # Line 27
    beq	$at,$v0,.L0dad9b28
    # Line 26
    addu	$gp,$t9,$v1
    # Line 27
    bltz	$a0,.L0dad9b48
    # Line 30
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 31
    lw	$a2,3092($a3)
    li	$at,7170
    beq	$a2,$at,.L0dad9b0c
    # Line 34
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 40
    sw	$a1,4608($a3)
    # Line 39
    sw	$a0,4612($a3)
    # Line 38
    sw	$a1,4604($a3)
    # Line 37
    sb	$zero,4600($a3)
    ld	$gp,0($sp)
    # Line 41
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9b0c:
    sd	$ra,8($sp)
    # Line 34
    jal	__glSetError
    li	$a0,1282
    # Line 35
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9b28:
    # Line 27
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9b48:
    sd	$ra,8($sp)
    # Line 30
    jalr	$t9
    li	$a0,1281
    # Line 31
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_SelectBuffer

# Function: __glim_InitNames
# Declared: Line 43 (Source lines: 44-51)
# Address: 0x0dad9b64 - 0x0dad9bd0 (Size: 108 bytes, Frame: 16)
.globl __glim_InitNames
.ent __glim_InitNames
__glim_InitNames:
    # Line 45
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 44
    addiu	$sp,$sp,-16
    # sd	gp,0(sp)
    # Line 45
    lw	$at,__glBeginMode
    # Line 44
    lui	$v1,0x12
    addiu	$v1,$v1,-8956
    # Line 45
    beq	$at,$v0,.L0dad9bb0
    # Line 44
    nop
    # Line 45
    lw	$a0,3092($a1)
    li	$at,7170
    beq	$a0,$at,.L0dad9ba0
    nop
.L0dad9b98:
    # Line 51
    jr	$ra
    addiu	$sp,$sp,16
.L0dad9ba0:
    # Line 48
    lw	$v0,4592($a1)
    # Line 49
    sb	$zero,4588($a1)
    b	.L0dad9b98
    # Line 48
    sw	$v0,4596($a1)
.L0dad9bb0:
    # Line 45
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_InitNames

# Function: __glim_LoadName
# Declared: Line 53 (Source lines: 54-65)
# Address: 0x0dad9bd0 - 0x0dad9c64 (Size: 148 bytes, Frame: 32)
.globl __glim_LoadName
.ent __glim_LoadName
__glim_LoadName:
    # Line 55
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 54
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 55
    lw	$at,__glBeginMode
    # Line 54
    lui	$v1,0x12
    addiu	$v1,$v1,-9064
    # Line 55
    beq	$at,$v0,.L0dad9c44
    # Line 54
    addu	$gp,$t9,$v1
    # Line 55
    lw	$a1,3092($a2)
    li	$at,7170
    bnel	$a1,$at,.L0dad9c20
    ld	$gp,0($sp)
    lw	$a3,4596($a2)
    lw	$v0,4592($a2)
    beq	$v0,$a3,.L0dad9c28
    # Line 59
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 62
    sw	$a0,-4($a3)
    # Line 63
    sb	$zero,4588($a2)
    ld	$gp,0($sp)
.L0dad9c20:
    # Line 65
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9c28:
    sd	$ra,8($sp)
    # Line 59
    jal	__glSetError
    li	$a0,1282
    # Line 60
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9c44:
    # Line 55
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_LoadName

# Function: __glim_PopName
# Declared: Line 67 (Source lines: 68-79)
# Address: 0x0dad9c64 - 0x0dad9cfc (Size: 152 bytes, Frame: 16)
.globl __glim_PopName
.ent __glim_PopName
__glim_PopName:
    # Line 69
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 68
    addiu	$sp,$sp,-16
    # sd	gp,0(sp)
    # Line 69
    lw	$at,__glBeginMode
    # Line 68
    lui	$v1,0x12
    addiu	$v1,$v1,-9212
    # Line 69
    beq	$at,$v0,.L0dad9cdc
    # Line 68
    nop
    # Line 69
    lw	$a0,3092($a1)
    li	$at,7170
    bnel	$a0,$at,.L0dad9cb4
    nop
    lw	$a2,4596($a1)
    lw	$v0,4592($a1)
    beq	$v0,$a2,.L0dad9cbc
    # Line 76
    addiu	$v1,$a2,-4
    # Line 77
    sb	$zero,4588($a1)
    # Line 76
    sw	$v1,4596($a1)
    # ld	gp,0(sp)
.L0dad9cb4:
    # Line 79
    jr	$ra
    addiu	$sp,$sp,16
.L0dad9cbc:
    # Line 73
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 74
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0dad9cdc:
    # Line 69
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_PopName

# Function: __glim_PushName
# Declared: Line 81 (Source lines: 82-94)
# Address: 0x0dad9cfc - 0x0dad9dac (Size: 176 bytes, Frame: 32)
.globl __glim_PushName
.ent __glim_PushName
__glim_PushName:
    # Line 83
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 82
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 83
    lw	$at,__glBeginMode
    # Line 82
    lui	$v1,0x12
    addiu	$v1,$v1,-9364
    # Line 83
    beq	$at,$v0,.L0dad9d8c
    # Line 82
    addu	$gp,$t9,$v1
    # Line 83
    lw	$a1,3092($a2)
    li	$at,7170
    bnel	$a1,$at,.L0dad9d68
    ld	$gp,0($sp)
    lw	$v1,3488($a2)
    lw	$v0,4592($a2)
    lw	$a3,4596($a2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sltu	$v0,$a3,$v0
    beqz	$v0,.L0dad9d70
    # Line 87
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 90
    sw	$a0,0($a3)
    # Line 91
    lw	$a1,4596($a2)
    # Line 92
    sb	$zero,4588($a2)
    # Line 91
    addiu	$a1,$a1,4
    sw	$a1,4596($a2)
    ld	$gp,0($sp)
.L0dad9d68:
    # Line 94
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9d70:
    sd	$ra,8($sp)
    # Line 87
    jal	__glSetError
    li	$a0,1283
    # Line 88
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dad9d8c:
    # Line 83
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_PushName

# Function: __glSelectHit
# Declared: Line 103 (Source lines: 106-164)
# Address: 0x0dad9dac - 0x0dad9ef4 (Size: 328 bytes, Frame: 0)
.globl __glSelectHit
.ent __glSelectHit
__glSelectHit:
    # Line 106
    lw	$a2,4608($a0)
    # Line 107
    lw	$v0,4612($a0)
    lbu	$at,4600($a0)
    lw	$a3,4604($a0)
    sll	$v0,$v0,0x2
    beqz	$at,.L0dad9dd0
    addu	$a3,$a3,$v0
    # Line 111
    jr	$ra
    nop
.L0dad9dd0:
    lw	$v1,31244($a0)
    li	$a1,32
    beql	$v1,$a1,.L0dad9e58
    # Line 119
    trunc.l.s	$f1,$f13
    # Line 121
    lwc1	$f0,3304($a0)
    lw	$at,31308($a0)
    mul.s	$f0,$f0,$f13
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    div.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$a4,$f0
    nop
    sll	$a4,$a4,0x0
.L0dad9e14:
    lbu	$v0,4588($a0)
    beqz	$v0,.L0dad9e64
    # Line 143
    addiu	$a1,$a2,8
    # Line 153
    lw	$a2,4620($a0)
    lw	$v1,0($a2)
    sltu	$v1,$a4,$v1
    beqzl	$v1,.L0dad9e40
    # Line 158
    lw	$a1,4($a2)
    sw	$a4,0($a2)
    lw	$a2,4620($a0)
    lw	$a1,4($a2)
.L0dad9e40:
    sltu	$a1,$a1,$a4
    beqz	$a1,.L0dad9e50
    nop
    # Line 161
    sw	$a4,4($a2)
.L0dad9e50:
    # Line 164
    jr	$ra
    nop
.L0dad9e58:
    # Line 119
    dmfc1	$a4,$f1
    b	.L0dad9e14
    sll	$a4,$a4,0x0
.L0dad9e64:
    # Line 125
    li	$a6,1
    # Line 128
    beq	$a2,$a3,.L0dad9ee8
    # Line 125
    sb	$a6,4588($a0)
    # Line 134
    lw	$v1,4592($a0)
    lw	$v0,4596($a0)
    subu	$v0,$v0,$v1
    sra	$v0,$v0,0x2
    sw	$v0,0($a2)
    # Line 135
    lw	$at,4616($a0)
    # Line 138
    addiu	$a5,$a2,4
    # Line 135
    addiu	$at,$at,1
    # Line 138
    beq	$a5,$a3,.L0dad9ee8
    # Line 135
    sw	$at,4616($a0)
    # Line 139
    sw	$a5,4620($a0)
    # Line 143
    beq	$a1,$a3,.L0dad9ee8
    # Line 140
    sw	$a4,4($a2)
    # Line 144
    sw	$a4,8($a2)
    # Line 147
    lw	$at,4596($a0)
    lw	$a5,4592($a0)
    sltu	$at,$a5,$at
    beqz	$at,.L0dad9ee0
    # Line 144
    addiu	$a2,$a2,12
.L0dad9ebc:
    # Line 148
    beql	$a2,$a3,.L0dad9eec
    # Line 131
    sw	$a3,4608($a0)
    # Line 151
    lw	$v1,0($a5)
    sw	$v1,0($a2)
    # Line 147
    lw	$v0,4596($a0)
    addiu	$a5,$a5,4
    sltu	$v0,$a5,$v0
    bnez	$v0,.L0dad9ebc
    # Line 151
    addiu	$a2,$a2,4
.L0dad9ee0:
    # Line 164
    jr	$ra
    # Line 153
    sw	$a2,4608($a0)
.L0dad9ee8:
    # Line 131
    sw	$a3,4608($a0)
.L0dad9eec:
    # Line 132
    jr	$ra
    # Line 130
    sb	$a6,4600($a0)
.end __glSelectHit

# Function: __glSelectTriangle
# Declared: Line 166 (Source lines: 168-197)
# Address: 0x0dad9ef4 - 0x0dada050 (Size: 348 bytes, Frame: 208)
.globl __glSelectTriangle
.ent __glSelectTriangle
__glSelectTriangle:
    # Line 168
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a3
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$gp,0($sp)
    lw	$at,1696($a0)
    lui	$v0,0x12
    addiu	$v0,$v0,-9868
    andi	$at,$at,0x1000
    beqz	$at,.L0dad9fd4
    addu	$gp,$t9,$v0
    # Line 176
    lwc1	$f2,132($s1)
    # Line 177
    lwc1	$f5,132($s2)
    sub.s	$f5,$f5,$f2
    # Line 174
    lwc1	$f1,128($s1)
    lwc1	$f4,128($a1)
    # Line 175
    lwc1	$f0,128($s2)
    # Line 174
    sub.s	$f4,$f4,$f1
    # Line 175
    sub.s	$f0,$f0,$f1
    # Line 176
    lwc1	$f1,132($a1)
    sub.s	$f1,$f1,$f2
    # Line 177
    mul.s	$f4,$f4,$f5
    # Line 187
    li	$at,1032
    # Line 177
    lw	$a4,472($s0)
    mul.s	$f0,$f0,$f1
    lbu	$v1,4552($s0)
    xori	$a4,$a4,0x901
    sltiu	$a4,$a4,1
    xor	$v1,$v1,$a4
    mtc1	$zero,$f5
    beqz	$v1,.L0dada024
    sub.s	$f4,$f4,$f0
    # Line 183
    li	$a2,1
    c.le.s	$f5,$f4
    nop
    bc1fl	.L0dad9f94
    move	$a2,$zero
.L0dad9f94:
    # Line 187
    lw	$a0,468($s0)
    li	$v1,1029
    beq	$a0,$at,.L0dad9fbc
    li	$v0,1028
    beq	$a0,$v0,.L0dada040
    nop
.L0dad9fac:
    bne	$a0,$v1,.L0dad9fd8
    # Line 194
    nop	# was lw $t9, -27364($gp) # &__glSelectHit
    # Line 187
    bnez	$a2,.L0dad9fd8
    # Line 194
    nop	# was lw $t9, -27364($gp) # &__glSelectHit
.L0dad9fbc:
    ld	$gp,0($sp)
.L0dad9fc0:
    # Line 191
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dad9fd4:
    # Line 194
    # lw $t9, -27364($gp) # &__glSelectHit
.L0dad9fd8:
    move	$a0,$s0
    sd	$ra,32($sp)
    bal __glSelectHit
    lwc1	$f13,136($a1)
    # Line 195
    # lw $t9, -27364($gp) # &__glSelectHit
    move	$a0,$s0
    bal __glSelectHit
    lwc1	$f13,136($s2)
    # Line 196
    # lw $t9, -27364($gp) # &__glSelectHit
    move	$a0,$s0
    bal __glSelectHit
    lwc1	$f13,136($s1)
    ld	$gp,0($sp)
    # Line 197
    ld	$s0,16($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dada024:
    # Line 185
    li	$a2,1
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0dada038
    move	$a2,$zero
.L0dada038:
    b	.L0dad9f94
    nop
.L0dada040:
    # Line 187
    bnezl	$a2,.L0dad9fc0
    ld	$gp,0($sp)
    b	.L0dad9fac
    nop
.end __glSelectTriangle

# Function: __glSelectLine
# Declared: Line 199 (Source lines: 200-203)
# Address: 0x0dada050 - 0x0dada0a8 (Size: 88 bytes, Frame: 192)
.globl __glSelectLine
.ent __glSelectLine
__glSelectLine:
    # Line 201
    lwc1	$f13,136($a1)
    # Line 200
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x12
    addiu	$at,$at,-10216
    # addu	gp,t9,at
    # Line 201
    # lw $t9, -27364($gp) # &__glSelectHit
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glSelectHit
    # Line 200
    move	$s8,$a0
    # Line 202
    # lw $t9, -27364($gp) # &__glSelectHit
    ld	$v0,24($sp)
    move	$a0,$s8
    bal __glSelectHit
    lwc1	$f13,136($v0)
    # Line 203
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSelectLine

# Function: __glSelectPoint
# Declared: Line 205 (Source lines: 206-208)
# Address: 0x0dada0a8 - 0x0dada0dc (Size: 52 bytes, Frame: 32)
.globl __glSelectPoint
.ent __glSelectPoint
__glSelectPoint:
    # Line 206
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-10304
    # addu	gp,t9,at
    # Line 207
    # lw $t9, -27364($gp) # &__glSelectHit
    sd	$ra,0($sp)
    bal __glSelectHit
    lwc1	$f13,136($a1)
    # Line 208
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSelectPoint

