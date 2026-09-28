# Source: ../pixel/px_modify.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_modify.c
# Total Functions: 17

.text

# Function: __glBuildRGBAModifyTables
# Declared: Line 35 (Source lines: 36-132)
# Address: 0x0da728d0 - 0x0da72ca8 (Size: 984 bytes, Frame: 224)
.globl __glBuildRGBAModifyTables
.ent __glBuildRGBAModifyTables
__glBuildRGBAModifyTables:
    # Line 48
    li	$v0,1
    # Line 36
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$s2,32($sp)
    move	$s2,$a1
    sd	$s1,56($sp)
    # Line 47
    lbu	$s1,736($a0)
    # Line 48
    sb	$v0,64($a1)
    # sd	gp,48(sp)
    sd	$s3,40($sp)
    # Line 50
    lw	$s3,68($a1)
    # Line 36
    lui	$at,0x18
    addiu	$at,$at,20376
    # Line 50
    beqz	$s3,.L0da72c48
    # Line 36
    nop
    # Line 59
    lw	$v0,80($s2)
.L0da72914:
    # Line 73
    lwc1	$f17,628($s0)
    # Line 72
    lwc1	$f16,624($s0)
    # Line 71
    lwc1	$f13,620($s0)
    # Line 70
    lwc1	$f14,616($s0)
    # Line 69
    lwc1	$f15,648($s0)
    # Line 68
    lwc1	$f12,644($s0)
    # Line 67
    lwc1	$f18,640($s0)
    # Line 66
    lwc1	$f19,636($s0)
    # Line 64
    move	$t8,$v0
    # Line 89
    move	$v0,$zero
    li	$t9,256
    mtc1	$zero,$f25
    ldc1	$f21,_lit8_406fe00000000000
    move	$a4,$s3
    ld	$s3,40($sp)
    # Line 84
    addiu	$at,$s0,1060
    # Line 78
    addiu	$t1,$s0,1036
    # Line 86
    lw	$a6,20($sp)
    # Line 62
    lw	$t2,72($s2)
    # Line 63
    lw	$t3,76($s2)
    ld	$s2,32($sp)
    # Line 89
    move	$a5,$t8
    # Line 73
    beqz	$s1,.L0da72c38
    # Line 89
    move	$a0,$t3
    # Line 84
    sw	$at,12($sp)
    # Line 81
    addiu	$s2,$s0,1048
    sw	$s2,8($sp)
    ld	$s2,32($sp)
    # Line 86
    lw	$a7,1060($s0)
    # Line 78
    sw	$t1,4($sp)
    # Line 80
    lw	$t1,1036($s0)
    # Line 83
    lw	$a6,1048($s0)
    # Line 86
    addiu	$a7,$a7,-1
    # Line 75
    addiu	$t0,$s0,1024
    sw	$t0,0($sp)
    # Line 77
    lw	$t0,1024($s0)
    # Line 83
    addiu	$a6,$a6,-1
    # Line 80
    addiu	$t1,$t1,-1
    # Line 77
    addiu	$t0,$t0,-1
.L0da729b0:
    b	.L0da72a98
    # Line 89
    move	$a1,$t2
.L0da729b8:
    # Line 103
    move	$t2,$zero
.L0da729bc:
    # Line 107
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    # Line 105
    sll	$a2,$t2,0x2
    lw	$v1,8($v1)
    # Line 107
    mfc1	$t2,$f0
    # Line 110
    lw	$a3,8($sp)
    # Line 105
    addu	$v1,$v1,$a2
    # Line 107
    bltz	$t2,.L0da72bc4
    # Line 105
    lwc1	$f5,0($v1)
    # Line 108
    slt	$a2,$a6,$t2
    beqz	$a2,.L0da72a00
    nop
    # Line 109
    move	$t2,$a6
.L0da72a00:
    # Line 112
    mtc1	$a7,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    # Line 110
    sll	$at,$t2,0x2
    lw	$a3,8($a3)
    # Line 112
    mfc1	$t2,$f1
    # Line 115
    lw	$v1,12($sp)
    # Line 110
    addu	$a3,$a3,$at
    # Line 112
    bltz	$t2,.L0da72bcc
    # Line 110
    lwc1	$f6,0($a3)
    # Line 113
    slt	$at,$a7,$t2
    beqzl	$at,.L0da72a48
    # Line 115
    lw	$v1,8($v1)
    # Line 114
    move	$t2,$a7
.L0da72a44:
    # Line 115
    lw	$v1,8($v1)
.L0da72a48:
    sll	$a2,$t2,0x2
    addu	$v1,$v1,$a2
    lwc1	$f4,0($v1)
.L0da72a54:
    # Line 127
    lwc1	$f1,30756($s0)
.L0da72a58:
    mul.s	$f1,$f1,$f7
    swc1	$f1,0($a4)
    # Line 128
    lwc1	$f0,30760($s0)
    mul.s	$f0,$f0,$f5
    swc1	$f0,0($a1)
    # Line 129
    lwc1	$f3,30764($s0)
    mul.s	$f3,$f3,$f6
    swc1	$f3,0($a0)
    # Line 130
    lwc1	$f2,30796($s0)
    mul.s	$f2,$f2,$f4
    # Line 89
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    beq	$v0,$t9,.L0da72c24
    # Line 130
    swc1	$f2,-4($a5)
.L0da72a98:
    # Line 92
    mtc1	$v0,$f11
    nop
    cvt.d.w	$f11,$f11
    div.d	$f11,$f11,$f21
    cvt.s.d	$f11,$f11
    mul.s	$f10,$f11,$f14
    # Line 93
    mul.s	$f9,$f11,$f13
    # Line 94
    mul.s	$f8,$f11,$f16
    # Line 92
    add.s	$f10,$f10,$f19
    # Line 95
    mul.s	$f11,$f11,$f17
    # Line 93
    add.s	$f9,$f9,$f18
    # Line 94
    add.s	$f8,$f8,$f12
    # Line 89
    addiu	$v0,$v0,1
    # Line 100
    lw	$a3,0($sp)
    # Line 95
    add.s	$f11,$f11,$f15
    # Line 94
    mov.s	$f6,$f8
    # Line 93
    mov.s	$f5,$f9
    # Line 92
    mov.s	$f7,$f10
    # Line 95
    beqz	$s1,.L0da72b64
    mov.s	$f4,$f11
    # Line 97
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f10
    lwc1	$f4,3280($s0)
    add.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    # Line 105
    lw	$v1,4($sp)
    # Line 97
    bltz	$t2,.L0da72bbc
    # Line 98
    slt	$a2,$t0,$t2
    beqz	$a2,.L0da72b20
    nop
    # Line 99
    move	$t2,$t0
.L0da72b20:
    # Line 102
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f9
    add.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    # Line 100
    sll	$at,$t2,0x2
    lw	$a3,8($a3)
    # Line 102
    mfc1	$t2,$f1
    # Line 100
    addu	$a3,$a3,$at
    # Line 102
    bltz	$t2,.L0da729b8
    # Line 100
    lwc1	$f7,0($a3)
    # Line 103
    slt	$at,$t1,$t2
    beqz	$at,.L0da729bc
    nop
    b	.L0da729bc
    # Line 104
    move	$t2,$t1
.L0da72b64:
    # Line 115
    lwc1	$f23,3284($s0)
    c.lt.s	$f23,$f10
    nop
    bc1fl	.L0da72bd4
    # Line 117
    c.lt.s	$f10,$f25
    mov.s	$f7,$f23
.L0da72b7c:
    # Line 118
    c.lt.s	$f23,$f9
.L0da72b80:
    nop
    bc1fl	.L0da72be8
    # Line 119
    c.lt.s	$f9,$f25
    mov.s	$f5,$f23
.L0da72b90:
    # Line 120
    c.lt.s	$f23,$f8
.L0da72b94:
    nop
    bc1fl	.L0da72bfc
    # Line 121
    c.lt.s	$f8,$f25
    mov.s	$f6,$f23
.L0da72ba4:
    # Line 122
    c.lt.s	$f23,$f11
.L0da72ba8:
    nop
    bc1fl	.L0da72c10
    # Line 123
    c.lt.s	$f11,$f25
    b	.L0da72a54
    mov.s	$f4,$f23
.L0da72bbc:
    # Line 98
    b	.L0da72b20
    move	$t2,$zero
.L0da72bc4:
    # Line 108
    b	.L0da72a00
    move	$t2,$zero
.L0da72bcc:
    # Line 113
    b	.L0da72a44
    move	$t2,$zero
.L0da72bd4:
    nop
    # Line 117
    bc1fl	.L0da72b80
    # Line 118
    c.lt.s	$f23,$f9
    b	.L0da72b7c
    mov.s	$f7,$f25
.L0da72be8:
    nop
    # Line 119
    bc1fl	.L0da72b94
    # Line 120
    c.lt.s	$f23,$f8
    b	.L0da72b90
    mov.s	$f5,$f25
.L0da72bfc:
    nop
    # Line 121
    bc1fl	.L0da72ba8
    # Line 122
    c.lt.s	$f23,$f11
    b	.L0da72ba4
    mov.s	$f6,$f25
.L0da72c10:
    nop
    # Line 123
    bc1fl	.L0da72a58
    # Line 127
    lwc1	$f1,30756($s0)
    b	.L0da72a54
    # Line 124
    mov.s	$f4,$f25
.L0da72c24:
    # ld	gp,48(sp)
    # Line 132
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da72c38:
    # Line 86
    lw	$a7,16($sp)
    lw	$t0,28($sp)
    b	.L0da729b0
    lw	$t1,24($sp)
.L0da72c48:
    # Line 53
    lw	$t9,0($s0)
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    li	$a1,1024
    sw	$v0,68($s2)
    # Line 55
    lw	$t9,0($s0)
    # Line 53
    move	$s3,$v0
    # Line 55
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,72($s2)
    # Line 57
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,76($s2)
    # Line 59
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,80($s2)
    b	.L0da72914
    ld	$ra,72($sp)
.end __glBuildRGBAModifyTables

# Function: __glBuildItoIModifyTables
# Declared: Line 138 (Source lines: 139-187)
# Address: 0x0da72ca8 - 0x0da72edc (Size: 564 bytes, Frame: 208)
.globl __glBuildItoIModifyTables
.ent __glBuildItoIModifyTables
__glBuildItoIModifyTables:
    # Line 153
    li	$a4,1
    # Line 139
    addiu	$sp,$sp,-80
    sd	$s2,32($sp)
    move	$s2,$a0
    sd	$a1,8($sp)
    sd	$s1,16($sp)
    # Line 152
    lw	$s1,30740($a0)
    sd	$s0,24($sp)
    # Line 151
    lbu	$s0,736($a0)
    # Line 153
    sb	$a4,84($a1)
    # sd	gp,40(sp)
    # Line 155
    lw	$v0,88($a1)
    # Line 139
    lui	$at,0x18
    addiu	$at,$at,19392
    # Line 155
    beqz	$v0,.L0da72eb4
    # Line 139
    nop
.L0da72ce8:
    # Line 175
    li	$a5,256
    # Line 162
    lw	$a0,728($s2)
    # Line 175
    move	$a1,$v0
    mtc1	$zero,$f8
    # Line 162
    bltz	$a0,.L0da72e84
    # Line 161
    lw	$a6,732($s2)
    # Line 164
    sllv	$v1,$a4,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    # Line 166
    beqz	$s0,.L0da72eac
    # Line 164
    cvt.s.l	$f6,$f6
.L0da72d18:
    # Line 170
    addiu	$at,$s2,952
    # Line 172
    lw	$a4,952($s2)
    # Line 170
    sw	$at,0($sp)
    # Line 172
    addiu	$a4,$a4,-1
.L0da72d28:
    # Line 175
    mtc1	$a6,$f7
    move	$a0,$zero
    b	.L0da72d90
    cvt.s.w	$f7,$f7
.L0da72d38:
    # Line 181
    add.s	$f0,$f4,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
.L0da72d48:
    # Line 183
    lw	$v1,8($v1)
    and	$a2,$v0,$a4
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
.L0da72d68:
    # Line 185
    trunc.w.s	$f1,$f4
    mfc1	$a2,$f1
    nop
    and	$a2,$a2,$s1
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 175
    addiu	$a1,$a1,8
    beq	$a0,$a5,.L0da72e6c
    # Line 185
    swc1	$f0,-4($a1)
.L0da72d90:
    # Line 176
    mtc1	$a0,$f5
    nop
    cvt.s.w	$f5,$f5
    mul.s	$f5,$f5,$f6
    add.s	$f5,$f7,$f5
    # Line 175
    addiu	$a0,$a0,1
    # Line 183
    lw	$a3,0($sp)
    # Line 176
    beqz	$s0,.L0da72e08
    mov.s	$f4,$f5
    c.lt.s	$f5,$f8
    nop
    bc1f	.L0da72dd8
    lwc1	$f4,3280($s2)
    # Line 179
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    b	.L0da72de8
    nop
.L0da72dd8:
    # Line 181
    add.s	$f1,$f4,$f5
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
.L0da72de8:
    # Line 183
    lw	$a3,8($a3)
    and	$at,$v0,$a4
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
.L0da72e08:
    # Line 176
    mtc1	$a0,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 185
    trunc.w.s	$f1,$f4
    mfc1	$at,$f1
    # Line 176
    mul.s	$f5,$f5,$f6
    # Line 185
    and	$at,$at,$s1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 175
    addiu	$a0,$a0,1
    # Line 176
    add.s	$f5,$f7,$f5
    # Line 183
    lw	$v1,0($sp)
    # Line 185
    swc1	$f0,0($a1)
    # Line 176
    beqz	$s0,.L0da72d68
    mov.s	$f4,$f5
    c.lt.s	$f5,$f8
    nop
    bc1f	.L0da72d38
    lwc1	$f4,3280($s2)
    # Line 179
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    b	.L0da72d48
    nop
.L0da72e6c:
    # ld	gp,40(sp)
    # Line 187
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da72e84:
    # Line 166
    negu	$v1,$a0
    sllv	$v1,$a4,$v1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f6,3284($s2)
    bnez	$s0,.L0da72d18
    div.s	$f6,$f6,$f0
.L0da72eac:
    b	.L0da72d28
    # Line 172
    lw	$a4,4($sp)
.L0da72eb4:
    # Line 157
    lw	$t9,0($s2)
    move	$a0,$s2
    sd	$ra,48($sp)
    jalr	$t9
    li	$a1,1024
    li	$a4,1
    ld	$a2,8($sp)
    ld	$ra,48($sp)
    b	.L0da72ce8
    sw	$v0,88($a2)
.end __glBuildItoIModifyTables

# Function: __glBuildItoRGBAModifyTables
# Declared: Line 193 (Source lines: 194-259)
# Address: 0x0da72edc - 0x0da73114 (Size: 568 bytes, Frame: 192)
.globl __glBuildItoRGBAModifyTables
.ent __glBuildItoRGBAModifyTables
__glBuildItoRGBAModifyTables:
    # Line 204
    li	$a4,1
    # Line 194
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,0($sp)
    move	$s1,$a1
    # Line 204
    sb	$a4,92($a1)
    # sd	gp,16(sp)
    sd	$s2,8($sp)
    # Line 206
    lw	$s2,96($a1)
    # Line 194
    lui	$at,0x18
    addiu	$at,$at,18828
    # Line 206
    beqz	$s2,.L0da730b0
    # Line 194
    nop
    # Line 215
    lw	$v0,108($s1)
.L0da72f18:
    # Line 222
    lw	$t8,732($s0)
    # Line 220
    move	$t3,$v0
    # Line 243
    move	$v0,$zero
    mtc1	$zero,$f8
    # Line 223
    lw	$a0,728($s0)
    # Line 219
    lw	$t2,104($s1)
    # Line 218
    lw	$t1,100($s1)
    # Line 223
    bltz	$a0,.L0da73084
    # Line 243
    move	$a1,$t3
    ld	$s1,0($sp)
    # Line 225
    sllv	$v1,$a4,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    nop
    cvt.s.l	$f6,$f6
.L0da72f58:
    # Line 243
    move	$a4,$t2
    move	$a5,$t1
    li	$t1,256
    move	$a0,$s2
    ld	$s2,8($sp)
    # Line 232
    lw	$t0,976($s0)
    # Line 235
    lw	$t9,988($s0)
    # Line 243
    mtc1	$t8,$f7
    # Line 241
    lw	$a7,1012($s0)
    # Line 238
    lw	$a6,1000($s0)
    # Line 243
    cvt.s.w	$f7,$f7
    # Line 241
    addiu	$a7,$a7,-1
    # Line 238
    addiu	$a6,$a6,-1
    # Line 235
    addiu	$t9,$t9,-1
    b	.L0da73038
    # Line 232
    addiu	$t0,$t0,-1
.L0da72f98:
    # Line 248
    add.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
.L0da72fa8:
    # Line 250
    lwc1	$f0,30756($s0)
    lw	$a2,984($s0)
    and	$a3,$t0,$t2
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 252
    and	$v1,$t9,$t2
    lw	$at,996($s0)
    sll	$v1,$v1,0x2
    lwc1	$f2,30760($s0)
    addu	$at,$at,$v1
    lwc1	$f1,0($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a5)
    # Line 254
    and	$a3,$a6,$t2
    lw	$a2,1008($s0)
    sll	$a3,$a3,0x2
    lwc1	$f0,30764($s0)
    addu	$a2,$a2,$a3
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a4)
    # Line 256
    and	$v1,$a7,$t2
    lw	$at,1020($s0)
    sll	$v1,$v1,0x2
    lwc1	$f2,30796($s0)
    addu	$at,$at,$v1
    lwc1	$f1,0($at)
    mul.s	$f1,$f1,$f2
    # Line 243
    addiu	$a0,$a0,4
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    beq	$v0,$t1,.L0da73074
    # Line 256
    swc1	$f1,-4($a1)
.L0da73038:
    # Line 243
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f6
    add.s	$f4,$f7,$f4
    c.lt.s	$f4,$f8
    addiu	$a1,$a1,4
    addiu	$v0,$v0,1
    bc1f	.L0da72f98
    lwc1	$f5,3280($s0)
    # Line 246
    sub.s	$f0,$f4,$f5
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    b	.L0da72fa8
    nop
.L0da73074:
    # ld	gp,16(sp)
    # Line 259
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da73084:
    # Line 227
    negu	$s1,$a0
    sllv	$s1,$a4,$s1
    dsll32	$s1,$s1,0x0
    dsrl32	$s1,$s1,0x0
    dmtc1	$s1,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f6,3284($s0)
    ld	$s1,0($sp)
    b	.L0da72f58
    div.s	$f6,$f6,$f0
.L0da730b0:
    # Line 209
    lw	$t9,0($s0)
    move	$a0,$s0
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,1024
    sw	$v0,96($s1)
    # Line 211
    lw	$t9,0($s0)
    # Line 209
    move	$s2,$v0
    # Line 211
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,100($s1)
    # Line 213
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    sw	$v0,104($s1)
    # Line 215
    lw	$t9,0($s0)
    li	$a1,1024
    jalr	$t9
    move	$a0,$s0
    li	$a4,1
    sw	$v0,108($s1)
    b	.L0da72f18
    ld	$ra,32($sp)
.end __glBuildItoRGBAModifyTables

# Function: __glSpanModifyRGBA
# Declared: Line 265 (Source lines: 267-358)
# Address: 0x0da73114 - 0x0da733e0 (Size: 716 bytes, Frame: 192)
.globl __glSpanModifyRGBA
.ent __glSpanModifyRGBA
__glSpanModifyRGBA:
    # Line 267
    addiu	$sp,$sp,-64
    # Line 324
    move	$a5,$a3
    # Line 280
    lwc1	$f7,640($a0)
    # Line 326
    move	$a6,$zero
    # Line 280
    lwc1	$f17,636($a0)
    lwc1	$f5,620($a0)
    lwc1	$f18,628($a0)
    # Line 298
    addiu	$v1,$a0,1048
    # Line 295
    addiu	$v0,$a0,1036
    # Line 280
    lwc1	$f6,644($a0)
    lbu	$t2,736($a0)
    lwc1	$f19,648($a0)
    lwc1	$f16,616($a0)
    lwc1	$f4,624($a0)
    # Line 286
    mov.s	$f8,$f19
    # Line 287
    mov.s	$f15,$f16
    # Line 289
    mov.s	$f9,$f4
    # Line 280
    beqz	$t2,.L0da733ac
    # Line 285
    mov.s	$f11,$f6
    # Line 292
    addiu	$at,$a0,1024
    # Line 290
    mov.s	$f13,$f18
    # Line 288
    mov.s	$f10,$f5
    # Line 283
    mov.s	$f12,$f17
    # Line 284
    mov.s	$f14,$f7
    # Line 295
    sw	$v0,8($sp)
    # Line 297
    lw	$v0,1036($a0)
    # Line 292
    sw	$at,0($sp)
    # Line 294
    lw	$at,1024($a0)
    # Line 298
    sw	$v1,16($sp)
    # Line 300
    lw	$v1,1048($a0)
    # Line 294
    addiu	$at,$at,-1
    # Line 297
    addiu	$v0,$v0,-1
    # Line 300
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 301
    addiu	$a4,$a0,1060
    sw	$a4,24($sp)
    # Line 303
    lw	$a4,1060($a0)
    # Line 297
    sw	$v0,12($sp)
    # Line 294
    sw	$at,4($sp)
    # Line 303
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
.L0da731b8:
    # Line 326
    lw	$t1,12($sp)
    # Line 325
    lw	$t3,180($a1)
    # Line 326
    lw	$a3,28($sp)
    # Line 323
    move	$a7,$a2
    # Line 326
    blez	$t3,.L0da733a4
    lw	$a2,4($sp)
    b	.L0da73200
    lw	$t0,20($sp)
.L0da731d8:
    # Line 348
    move	$a1,$zero
.L0da731dc:
    # Line 350
    lw	$at,8($at)
.L0da731e0:
    lwc1	$f1,30796($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da731f8:
    # Line 326
    beq	$t3,$a6,.L0da733a4
    nop
.L0da73200:
    # Line 330
    lwc1	$f5,12($a7)
    # Line 329
    lwc1	$f6,8($a7)
    # Line 330
    mul.s	$f5,$f5,$f13
    # Line 328
    lwc1	$f7,4($a7)
    # Line 329
    mul.s	$f6,$f6,$f9
    # Line 327
    lwc1	$f4,0($a7)
    # Line 328
    mul.s	$f7,$f7,$f10
    # Line 330
    add.s	$f5,$f5,$f8
    # Line 327
    mul.s	$f4,$f4,$f15
    # Line 329
    add.s	$f6,$f6,$f11
    # Line 330
    addiu	$a7,$a7,16
    # Line 326
    addiu	$a6,$a6,1
    # Line 328
    add.s	$f7,$f7,$f14
    # Line 335
    lw	$v1,0($sp)
    # Line 330
    beqz	$t2,.L0da7338c
    # Line 327
    add.s	$f4,$f4,$f12
    # Line 332
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 340
    lw	$at,8($sp)
    # Line 332
    bltz	$a1,.L0da73374
    # Line 333
    slt	$v0,$a2,$a1
    beqzl	$v0,.L0da7327c
    # Line 335
    lwc1	$f1,30756($a0)
    # Line 334
    move	$a1,$a2
.L0da73278:
    # Line 335
    lwc1	$f1,30756($a0)
.L0da7327c:
    lw	$v1,8($v1)
    # Line 337
    mtc1	$t1,$f3
    # Line 335
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 337
    cvt.s.w	$f3,$f3
    # Line 335
    mul.s	$f0,$f0,$f1
    # Line 337
    mul.s	$f3,$f3,$f7
    # Line 335
    swc1	$f0,0($a5)
    # Line 337
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da7337c
    # Line 338
    slt	$a4,$t1,$a1
    beqzl	$a4,.L0da732cc
    # Line 340
    lwc1	$f3,30760($a0)
    # Line 339
    move	$a1,$t1
.L0da732c8:
    # Line 340
    lwc1	$f3,30760($a0)
.L0da732cc:
    lw	$at,8($at)
    # Line 342
    mtc1	$t0,$f1
    # Line 340
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 342
    cvt.s.w	$f1,$f1
    # Line 340
    mul.s	$f2,$f2,$f3
    # Line 342
    mul.s	$f1,$f1,$f6
    # Line 340
    swc1	$f2,4($a5)
    # Line 342
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 345
    lw	$v1,16($sp)
    # Line 342
    bltz	$a1,.L0da73384
    # Line 350
    lw	$at,24($sp)
    # Line 343
    slt	$v0,$t0,$a1
    beqzl	$v0,.L0da73320
    # Line 345
    lwc1	$f1,30764($a0)
    # Line 344
    move	$a1,$t0
.L0da7331c:
    # Line 345
    lwc1	$f1,30764($a0)
.L0da73320:
    lw	$v1,8($v1)
    # Line 347
    mtc1	$a3,$f3
    # Line 345
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 347
    cvt.s.w	$f3,$f3
    # Line 345
    mul.s	$f0,$f0,$f1
    # Line 347
    mul.s	$f3,$f3,$f5
    # Line 345
    swc1	$f0,8($a5)
    # Line 347
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da731d8
    # Line 350
    addiu	$a5,$a5,16
    # Line 348
    slt	$a4,$a3,$a1
    beqzl	$a4,.L0da731e0
    # Line 350
    lw	$at,8($at)
    b	.L0da731dc
    # Line 349
    move	$a1,$a3
.L0da73374:
    # Line 333
    b	.L0da73278
    move	$a1,$zero
.L0da7337c:
    # Line 338
    b	.L0da732c8
    move	$a1,$zero
.L0da73384:
    # Line 343
    b	.L0da7331c
    move	$a1,$zero
.L0da7338c:
    # Line 355
    addiu	$a5,$a5,16
    # Line 352
    swc1	$f4,-16($a5)
    # Line 353
    swc1	$f7,-12($a5)
    # Line 354
    swc1	$f6,-8($a5)
    b	.L0da731f8
    # Line 355
    swc1	$f5,-4($a5)
.L0da733a4:
    # Line 358
    jr	$ra
    addiu	$sp,$sp,64
.L0da733ac:
    # Line 311
    lwc1	$f8,30796($a0)
    # Line 319
    mul.s	$f13,$f18,$f8
    # Line 309
    lwc1	$f11,30764($a0)
    # Line 311
    mul.s	$f8,$f19,$f8
    # Line 317
    mul.s	$f9,$f4,$f11
    # Line 307
    lwc1	$f14,30760($a0)
    # Line 309
    mul.s	$f11,$f6,$f11
    # Line 315
    mul.s	$f10,$f5,$f14
    # Line 305
    lwc1	$f12,30756($a0)
    # Line 307
    mul.s	$f14,$f7,$f14
    # Line 313
    mul.s	$f15,$f16,$f12
    b	.L0da731b8
    # Line 305
    mul.s	$f12,$f17,$f12
.end __glSpanModifyRGBA

# Function: __glSpanModifyABGR
# Declared: Line 365 (Source lines: 367-458)
# Address: 0x0da733e0 - 0x0da736ac (Size: 716 bytes, Frame: 192)
.globl __glSpanModifyABGR
.ent __glSpanModifyABGR
__glSpanModifyABGR:
    # Line 367
    addiu	$sp,$sp,-64
    # Line 424
    move	$a5,$a3
    # Line 380
    lwc1	$f7,640($a0)
    # Line 426
    move	$a6,$zero
    # Line 380
    lwc1	$f17,636($a0)
    lwc1	$f5,620($a0)
    lwc1	$f18,628($a0)
    # Line 398
    addiu	$v1,$a0,1048
    # Line 395
    addiu	$v0,$a0,1036
    # Line 380
    lwc1	$f6,644($a0)
    lbu	$t2,736($a0)
    lwc1	$f19,648($a0)
    lwc1	$f16,616($a0)
    lwc1	$f4,624($a0)
    # Line 386
    mov.s	$f8,$f19
    # Line 387
    mov.s	$f15,$f16
    # Line 389
    mov.s	$f9,$f4
    # Line 380
    beqz	$t2,.L0da73678
    # Line 385
    mov.s	$f11,$f6
    # Line 392
    addiu	$at,$a0,1024
    # Line 390
    mov.s	$f13,$f18
    # Line 388
    mov.s	$f10,$f5
    # Line 383
    mov.s	$f12,$f17
    # Line 384
    mov.s	$f14,$f7
    # Line 395
    sw	$v0,8($sp)
    # Line 397
    lw	$v0,1036($a0)
    # Line 392
    sw	$at,0($sp)
    # Line 394
    lw	$at,1024($a0)
    # Line 398
    sw	$v1,16($sp)
    # Line 400
    lw	$v1,1048($a0)
    # Line 394
    addiu	$at,$at,-1
    # Line 397
    addiu	$v0,$v0,-1
    # Line 400
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 401
    addiu	$a4,$a0,1060
    sw	$a4,24($sp)
    # Line 403
    lw	$a4,1060($a0)
    # Line 397
    sw	$v0,12($sp)
    # Line 394
    sw	$at,4($sp)
    # Line 403
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
.L0da73484:
    # Line 426
    lw	$t1,12($sp)
    # Line 425
    lw	$t3,180($a1)
    # Line 426
    lw	$a3,28($sp)
    # Line 423
    move	$a7,$a2
    # Line 426
    blez	$t3,.L0da73670
    lw	$a2,4($sp)
    b	.L0da734cc
    lw	$t0,20($sp)
.L0da734a4:
    # Line 448
    move	$a1,$zero
.L0da734a8:
    # Line 450
    lw	$at,8($at)
.L0da734ac:
    lwc1	$f1,30796($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da734c4:
    # Line 426
    beq	$t3,$a6,.L0da73670
    nop
.L0da734cc:
    # Line 430
    lwc1	$f4,12($a7)
    # Line 429
    lwc1	$f7,8($a7)
    # Line 430
    mul.s	$f4,$f4,$f15
    # Line 428
    lwc1	$f6,4($a7)
    # Line 429
    mul.s	$f7,$f7,$f10
    # Line 427
    lwc1	$f5,0($a7)
    # Line 428
    mul.s	$f6,$f6,$f9
    # Line 430
    add.s	$f4,$f4,$f12
    # Line 427
    mul.s	$f5,$f5,$f13
    # Line 429
    add.s	$f7,$f7,$f14
    # Line 430
    addiu	$a7,$a7,16
    # Line 426
    addiu	$a6,$a6,1
    # Line 428
    add.s	$f6,$f6,$f11
    # Line 435
    lw	$v1,0($sp)
    # Line 430
    beqz	$t2,.L0da73658
    # Line 427
    add.s	$f5,$f5,$f8
    # Line 432
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 440
    lw	$at,8($sp)
    # Line 432
    bltz	$a1,.L0da73640
    # Line 433
    slt	$v0,$a2,$a1
    beqzl	$v0,.L0da73548
    # Line 435
    lwc1	$f1,30756($a0)
    # Line 434
    move	$a1,$a2
.L0da73544:
    # Line 435
    lwc1	$f1,30756($a0)
.L0da73548:
    lw	$v1,8($v1)
    # Line 437
    mtc1	$t1,$f3
    # Line 435
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 437
    cvt.s.w	$f3,$f3
    # Line 435
    mul.s	$f0,$f0,$f1
    # Line 437
    mul.s	$f3,$f3,$f7
    # Line 435
    swc1	$f0,0($a5)
    # Line 437
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da73648
    # Line 438
    slt	$a4,$t1,$a1
    beqzl	$a4,.L0da73598
    # Line 440
    lwc1	$f3,30760($a0)
    # Line 439
    move	$a1,$t1
.L0da73594:
    # Line 440
    lwc1	$f3,30760($a0)
.L0da73598:
    lw	$at,8($at)
    # Line 442
    mtc1	$t0,$f1
    # Line 440
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 442
    cvt.s.w	$f1,$f1
    # Line 440
    mul.s	$f2,$f2,$f3
    # Line 442
    mul.s	$f1,$f1,$f6
    # Line 440
    swc1	$f2,4($a5)
    # Line 442
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 445
    lw	$v1,16($sp)
    # Line 442
    bltz	$a1,.L0da73650
    # Line 450
    lw	$at,24($sp)
    # Line 443
    slt	$v0,$t0,$a1
    beqzl	$v0,.L0da735ec
    # Line 445
    lwc1	$f1,30764($a0)
    # Line 444
    move	$a1,$t0
.L0da735e8:
    # Line 445
    lwc1	$f1,30764($a0)
.L0da735ec:
    lw	$v1,8($v1)
    # Line 447
    mtc1	$a3,$f3
    # Line 445
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 447
    cvt.s.w	$f3,$f3
    # Line 445
    mul.s	$f0,$f0,$f1
    # Line 447
    mul.s	$f3,$f3,$f5
    # Line 445
    swc1	$f0,8($a5)
    # Line 447
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da734a4
    # Line 450
    addiu	$a5,$a5,16
    # Line 448
    slt	$a4,$a3,$a1
    beqzl	$a4,.L0da734ac
    # Line 450
    lw	$at,8($at)
    b	.L0da734a8
    # Line 449
    move	$a1,$a3
.L0da73640:
    # Line 433
    b	.L0da73544
    move	$a1,$zero
.L0da73648:
    # Line 438
    b	.L0da73594
    move	$a1,$zero
.L0da73650:
    # Line 443
    b	.L0da735e8
    move	$a1,$zero
.L0da73658:
    # Line 455
    addiu	$a5,$a5,16
    # Line 452
    swc1	$f4,-16($a5)
    # Line 453
    swc1	$f7,-12($a5)
    # Line 454
    swc1	$f6,-8($a5)
    b	.L0da734c4
    # Line 455
    swc1	$f5,-4($a5)
.L0da73670:
    # Line 458
    jr	$ra
    addiu	$sp,$sp,64
.L0da73678:
    # Line 411
    lwc1	$f8,30796($a0)
    # Line 419
    mul.s	$f13,$f18,$f8
    # Line 409
    lwc1	$f11,30764($a0)
    # Line 411
    mul.s	$f8,$f19,$f8
    # Line 417
    mul.s	$f9,$f4,$f11
    # Line 407
    lwc1	$f14,30760($a0)
    # Line 409
    mul.s	$f11,$f6,$f11
    # Line 415
    mul.s	$f10,$f5,$f14
    # Line 405
    lwc1	$f12,30756($a0)
    # Line 407
    mul.s	$f14,$f7,$f14
    # Line 413
    mul.s	$f15,$f16,$f12
    b	.L0da73484
    # Line 405
    mul.s	$f12,$f17,$f12
.end __glSpanModifyABGR

# Function: __glSpanModifyRed
# Declared: Line 465 (Source lines: 467-519)
# Address: 0x0da736ac - 0x0da738f4 (Size: 584 bytes, Frame: 48)
.globl __glSpanModifyRed
.ent __glSpanModifyRed
__glSpanModifyRed:
    # Line 467
    addiu	$sp,$sp,-48
    # Line 486
    lwc1	$f6,30548($a0)
    # Line 485
    lwc1	$f7,30544($a0)
    # Line 501
    move	$a5,$a3
    # Line 486
    lwc1	$f10,636($a0)
    # Line 503
    move	$a7,$zero
    # Line 490
    addiu	$v0,$a0,1024
    # Line 481
    lbu	$t0,736($a0)
    # Line 486
    lwc1	$f4,616($a0)
    # Line 484
    lwc1	$f5,30540($a0)
    # Line 486
    beqz	$t0,.L0da738d0
    # Line 489
    mov.s	$f8,$f4
    # Line 492
    lw	$at,1024($a0)
    # Line 488
    mov.s	$f9,$f10
    # Line 490
    sw	$v0,0($sp)
    # Line 492
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da736f0:
    # Line 502
    lw	$t1,180($a1)
    # Line 500
    move	$a6,$a2
    # Line 503
    lw	$a2,4($sp)
    blez	$t1,.L0da7379c
    andi	$v1,$t1,0x1
    beqz	$v1,.L0da73790
    move	$a3,$t1
    # Line 504
    lwc1	$f4,0($a6)
    mul.s	$f4,$f4,$f8
    addiu	$a6,$a6,4
    # Line 503
    addiu	$a7,$a7,1
    # Line 510
    lw	$at,0($sp)
    # Line 504
    beqz	$t0,.L0da738e8
    add.s	$f4,$f4,$f9
    # Line 506
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da738e0
    # Line 510
    addiu	$a5,$a5,4
    # Line 507
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73768
    # Line 510
    lw	$at,8($at)
    # Line 508
    move	$a1,$a2
.L0da73764:
    # Line 510
    lw	$at,8($at)
.L0da73768:
    lwc1	$f3,30756($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,-4($a5)
.L0da73780:
    # Line 517
    addiu	$a5,$a5,12
    # Line 515
    swc1	$f5,-12($a5)
    # Line 516
    swc1	$f7,-8($a5)
    # Line 517
    swc1	$f6,-4($a5)
.L0da73790:
    sra	$v0,$a3,0x1
    bnezl	$v0,.L0da7385c
    # Line 504
    lwc1	$f4,0($a6)
.L0da7379c:
    # Line 519
    jr	$ra
    addiu	$sp,$sp,48
.L0da737a4:
    # Line 507
    move	$a1,$zero
.L0da737a8:
    # Line 510
    lw	$v1,8($v1)
.L0da737ac:
    lwc1	$f1,30756($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da737c4:
    # Line 517
    swc1	$f6,8($a5)
    # Line 516
    swc1	$f7,4($a5)
    # Line 515
    swc1	$f5,0($a5)
    # Line 504
    lwc1	$f4,4($a6)
    mul.s	$f4,$f4,$f8
    addiu	$a6,$a6,8
    # Line 517
    addiu	$a5,$a5,12
    # Line 510
    lw	$at,0($sp)
    # Line 504
    beqz	$t0,.L0da738c4
    add.s	$f4,$f4,$f9
    # Line 506
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da738b0
    # Line 510
    addiu	$a5,$a5,4
    # Line 507
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da7382c
    # Line 510
    lw	$at,8($at)
    # Line 508
    move	$a1,$a2
.L0da73828:
    # Line 510
    lw	$at,8($at)
.L0da7382c:
    lwc1	$f3,30756($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,-4($a5)
.L0da73844:
    # Line 517
    addiu	$a5,$a5,12
    # Line 515
    swc1	$f5,-12($a5)
    # Line 516
    swc1	$f7,-8($a5)
    # Line 503
    beq	$t1,$a7,.L0da7379c
    # Line 517
    swc1	$f6,-4($a5)
    # Line 504
    lwc1	$f4,0($a6)
.L0da7385c:
    mul.s	$f4,$f4,$f8
    # Line 503
    addiu	$a7,$a7,2
    # Line 510
    lw	$v1,0($sp)
    # Line 504
    beqz	$t0,.L0da738b8
    add.s	$f4,$f4,$f9
    # Line 506
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da737a4
    # Line 510
    addiu	$a5,$a5,4
    # Line 507
    slt	$v0,$a2,$a1
    beqzl	$v0,.L0da737ac
    # Line 510
    lw	$v1,8($v1)
    b	.L0da737a8
    # Line 508
    move	$a1,$a2
.L0da738b0:
    # Line 507
    b	.L0da73828
    move	$a1,$zero
.L0da738b8:
    # Line 512
    swc1	$f4,0($a5)
    b	.L0da737c4
    addiu	$a5,$a5,4
.L0da738c4:
    swc1	$f4,0($a5)
    b	.L0da73844
    addiu	$a5,$a5,4
.L0da738d0:
    # Line 494
    lwc1	$f9,30756($a0)
    # Line 496
    mul.s	$f8,$f4,$f9
    b	.L0da736f0
    # Line 494
    mul.s	$f9,$f10,$f9
.L0da738e0:
    # Line 507
    b	.L0da73764
    move	$a1,$zero
.L0da738e8:
    # Line 512
    swc1	$f4,0($a5)
    b	.L0da73780
    addiu	$a5,$a5,4
.end __glSpanModifyRed

# Function: __glSpanModifyGreen
# Declared: Line 526 (Source lines: 528-579)
# Address: 0x0da738f4 - 0x0da73a04 (Size: 272 bytes, Frame: 48)
.globl __glSpanModifyGreen
.ent __glSpanModifyGreen
__glSpanModifyGreen:
    # Line 528
    addiu	$sp,$sp,-48
    # Line 547
    lwc1	$f5,30548($a0)
    # Line 546
    lwc1	$f6,30544($a0)
    # Line 562
    move	$a5,$a3
    # Line 547
    lwc1	$f10,640($a0)
    # Line 564
    move	$a6,$zero
    # Line 551
    addiu	$v0,$a0,1036
    # Line 542
    lbu	$t0,736($a0)
    # Line 547
    lwc1	$f4,620($a0)
    # Line 545
    lwc1	$f9,30536($a0)
    # Line 547
    beqz	$t0,.L0da739f4
    # Line 550
    mov.s	$f8,$f4
    # Line 553
    lw	$at,1036($a0)
    # Line 549
    mov.s	$f7,$f10
    # Line 551
    sw	$v0,0($sp)
    # Line 553
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da73938:
    # Line 563
    lw	$t1,180($a1)
    # Line 561
    move	$a7,$a2
    # Line 564
    blez	$t1,.L0da739ec
    lw	$a2,4($sp)
    b	.L0da73984
    # Line 565
    lwc1	$f4,0($a7)
.L0da73950:
    # Line 569
    move	$a1,$zero
.L0da73954:
    # Line 571
    lw	$v1,8($v1)
.L0da73958:
    lwc1	$f1,30760($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da73970:
    # Line 577
    addiu	$a5,$a5,8
    # Line 576
    swc1	$f6,-8($a5)
    # Line 564
    beq	$t1,$a6,.L0da739ec
    # Line 577
    swc1	$f5,-4($a5)
    # Line 565
    lwc1	$f4,0($a7)
.L0da73984:
    mul.s	$f4,$f4,$f8
    # Line 566
    swc1	$f9,0($a5)
    # Line 565
    addiu	$a7,$a7,4
    # Line 564
    addiu	$a6,$a6,1
    # Line 571
    lw	$v1,0($sp)
    # Line 566
    beqz	$t0,.L0da739e0
    # Line 565
    add.s	$f4,$f4,$f7
    # Line 568
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da73950
    # Line 571
    addiu	$a5,$a5,8
    # Line 569
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73958
    # Line 571
    lw	$v1,8($v1)
    b	.L0da73954
    # Line 570
    move	$a1,$a2
.L0da739e0:
    # Line 573
    swc1	$f4,4($a5)
    b	.L0da73970
    addiu	$a5,$a5,8
.L0da739ec:
    # Line 579
    jr	$ra
    addiu	$sp,$sp,48
.L0da739f4:
    # Line 555
    lwc1	$f7,30760($a0)
    # Line 557
    mul.s	$f8,$f4,$f7
    b	.L0da73938
    # Line 555
    mul.s	$f7,$f10,$f7
.end __glSpanModifyGreen

# Function: __glSpanModifyBlue
# Declared: Line 586 (Source lines: 588-639)
# Address: 0x0da73a04 - 0x0da73b14 (Size: 272 bytes, Frame: 48)
.globl __glSpanModifyBlue
.ent __glSpanModifyBlue
__glSpanModifyBlue:
    # Line 588
    addiu	$sp,$sp,-48
    # Line 607
    lwc1	$f6,30548($a0)
    # Line 606
    lwc1	$f5,30540($a0)
    # Line 622
    move	$a5,$a3
    # Line 607
    lwc1	$f10,644($a0)
    # Line 624
    move	$a6,$zero
    # Line 611
    addiu	$v0,$a0,1048
    # Line 602
    lbu	$t0,736($a0)
    # Line 607
    lwc1	$f4,624($a0)
    # Line 605
    lwc1	$f9,30536($a0)
    # Line 607
    beqz	$t0,.L0da73b04
    # Line 610
    mov.s	$f7,$f4
    # Line 613
    lw	$at,1048($a0)
    # Line 609
    mov.s	$f8,$f10
    # Line 611
    sw	$v0,0($sp)
    # Line 613
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da73a48:
    # Line 623
    lw	$t1,180($a1)
    # Line 621
    move	$a7,$a2
    # Line 624
    blez	$t1,.L0da73afc
    lw	$a2,4($sp)
    b	.L0da73a90
    # Line 625
    lwc1	$f4,0($a7)
.L0da73a60:
    # Line 630
    move	$a1,$zero
.L0da73a64:
    # Line 632
    lw	$v1,8($v1)
.L0da73a68:
    lwc1	$f1,30764($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da73a80:
    # Line 637
    swc1	$f6,0($a5)
    # Line 624
    beq	$t1,$a6,.L0da73afc
    # Line 637
    addiu	$a5,$a5,4
    # Line 625
    lwc1	$f4,0($a7)
.L0da73a90:
    mul.s	$f4,$f4,$f7
    # Line 627
    swc1	$f5,4($a5)
    # Line 626
    swc1	$f9,0($a5)
    # Line 625
    addiu	$a7,$a7,4
    # Line 624
    addiu	$a6,$a6,1
    # Line 632
    lw	$v1,0($sp)
    # Line 627
    beqz	$t0,.L0da73af0
    # Line 625
    add.s	$f4,$f4,$f8
    # Line 629
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da73a60
    # Line 632
    addiu	$a5,$a5,12
    # Line 630
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73a68
    # Line 632
    lw	$v1,8($v1)
    b	.L0da73a64
    # Line 631
    move	$a1,$a2
.L0da73af0:
    # Line 634
    swc1	$f4,8($a5)
    b	.L0da73a80
    addiu	$a5,$a5,12
.L0da73afc:
    # Line 639
    jr	$ra
    addiu	$sp,$sp,48
.L0da73b04:
    # Line 615
    lwc1	$f8,30764($a0)
    # Line 617
    mul.s	$f7,$f4,$f8
    b	.L0da73a48
    # Line 615
    mul.s	$f8,$f10,$f8
.end __glSpanModifyBlue

# Function: __glSpanModifyAlpha
# Declared: Line 646 (Source lines: 648-698)
# Address: 0x0da73b14 - 0x0da73c24 (Size: 272 bytes, Frame: 48)
.globl __glSpanModifyAlpha
.ent __glSpanModifyAlpha
__glSpanModifyAlpha:
    # Line 648
    addiu	$sp,$sp,-48
    # Line 667
    lwc1	$f8,30544($a0)
    # Line 666
    lwc1	$f5,30540($a0)
    # Line 682
    move	$a5,$a3
    # Line 667
    lwc1	$f10,648($a0)
    # Line 684
    move	$a6,$zero
    # Line 671
    addiu	$v0,$a0,1060
    # Line 662
    lbu	$t0,736($a0)
    # Line 667
    lwc1	$f4,628($a0)
    # Line 665
    lwc1	$f9,30536($a0)
    # Line 667
    beqz	$t0,.L0da73c14
    # Line 670
    mov.s	$f6,$f4
    # Line 673
    lw	$at,1060($a0)
    # Line 669
    mov.s	$f7,$f10
    # Line 671
    sw	$v0,0($sp)
    # Line 673
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da73b58:
    # Line 683
    lw	$t1,180($a1)
    # Line 681
    move	$a7,$a2
    # Line 684
    blez	$t1,.L0da73c0c
    lw	$a2,4($sp)
    b	.L0da73b9c
    # Line 685
    lwc1	$f4,0($a7)
.L0da73b70:
    # Line 691
    move	$a1,$zero
.L0da73b74:
    # Line 693
    lw	$v1,8($v1)
.L0da73b78:
    lwc1	$f1,30796($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da73b90:
    # Line 684
    beq	$t1,$a6,.L0da73c0c
    nop
    # Line 685
    lwc1	$f4,0($a7)
.L0da73b9c:
    # Line 688
    swc1	$f8,8($a5)
    # Line 685
    mul.s	$f4,$f4,$f6
    # Line 687
    swc1	$f5,4($a5)
    # Line 686
    swc1	$f9,0($a5)
    # Line 685
    addiu	$a7,$a7,4
    # Line 684
    addiu	$a6,$a6,1
    # Line 693
    lw	$v1,0($sp)
    # Line 688
    beqz	$t0,.L0da73c00
    # Line 685
    add.s	$f4,$f4,$f7
    # Line 690
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da73b70
    # Line 693
    addiu	$a5,$a5,16
    # Line 691
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73b78
    # Line 693
    lw	$v1,8($v1)
    b	.L0da73b74
    # Line 692
    move	$a1,$a2
.L0da73c00:
    # Line 695
    swc1	$f4,12($a5)
    b	.L0da73b90
    addiu	$a5,$a5,16
.L0da73c0c:
    # Line 698
    jr	$ra
    addiu	$sp,$sp,48
.L0da73c14:
    # Line 675
    lwc1	$f7,30796($a0)
    # Line 677
    mul.s	$f6,$f4,$f7
    b	.L0da73b58
    # Line 675
    mul.s	$f7,$f10,$f7
.end __glSpanModifyAlpha

# Function: __glSpanModifyRGB
# Declared: Line 705 (Source lines: 707-788)
# Address: 0x0da73c24 - 0x0da73e5c (Size: 568 bytes, Frame: 192)
.globl __glSpanModifyRGB
.ent __glSpanModifyRGB
__glSpanModifyRGB:
    # Line 707
    addiu	$sp,$sp,-64
    # Line 759
    move	$a5,$a3
    # Line 724
    lwc1	$f16,636($a0)
    # Line 761
    move	$a6,$zero
    # Line 724
    lwc1	$f10,30548($a0)
    lwc1	$f15,616($a0)
    lwc1	$f4,624($a0)
    # Line 734
    addiu	$a4,$a0,1024
    # Line 737
    addiu	$at,$a0,1036
    # Line 724
    lwc1	$f14,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f6,620($a0)
    # Line 722
    lbu	$t1,736($a0)
    # Line 729
    mov.s	$f9,$f5
    # Line 731
    mov.s	$f13,$f6
    # Line 724
    beqz	$t1,.L0da73e34
    # Line 728
    mov.s	$f11,$f14
    # Line 732
    mov.s	$f7,$f4
    # Line 730
    mov.s	$f8,$f15
    # Line 727
    mov.s	$f12,$f16
    # Line 737
    sw	$at,8($sp)
    # Line 736
    lw	$at,1024($a0)
    # Line 742
    lw	$v1,1048($a0)
    # Line 734
    sw	$a4,0($sp)
    # Line 736
    addiu	$at,$at,-1
    # Line 742
    addiu	$v1,$v1,-1
    # Line 740
    addiu	$v0,$a0,1048
    sw	$v0,16($sp)
    # Line 739
    lw	$v0,1036($a0)
    # Line 742
    sw	$v1,20($sp)
    # Line 736
    sw	$at,4($sp)
    # Line 739
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
.L0da73ca8:
    # Line 761
    lw	$a3,12($sp)
    # Line 760
    lw	$t2,180($a1)
    # Line 758
    move	$a7,$a2
    # Line 761
    blez	$t2,.L0da73e2c
    lw	$t0,4($sp)
    lw	$a2,20($sp)
    b	.L0da73cf8
    # Line 764
    lwc1	$f6,8($a7)
.L0da73cc8:
    # Line 777
    move	$a1,$zero
.L0da73ccc:
    # Line 779
    lw	$v1,8($v1)
.L0da73cd0:
    lwc1	$f1,30764($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da73ce8:
    # Line 786
    swc1	$f10,0($a5)
    # Line 761
    beq	$t2,$a6,.L0da73e2c
    # Line 786
    addiu	$a5,$a5,4
    # Line 764
    lwc1	$f6,8($a7)
.L0da73cf8:
    # Line 763
    lwc1	$f4,4($a7)
    # Line 764
    mul.s	$f6,$f6,$f7
    # Line 762
    lwc1	$f5,0($a7)
    # Line 763
    mul.s	$f4,$f4,$f13
    # Line 762
    mul.s	$f5,$f5,$f8
    # Line 764
    add.s	$f6,$f6,$f9
    addiu	$a7,$a7,12
    # Line 761
    addiu	$a6,$a6,1
    # Line 763
    add.s	$f4,$f4,$f11
    # Line 769
    lw	$at,0($sp)
    # Line 764
    beqz	$t1,.L0da73e18
    # Line 762
    add.s	$f5,$f5,$f12
    # Line 766
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 774
    lw	$v1,8($sp)
    # Line 766
    bltz	$a1,.L0da73e08
    # Line 767
    slt	$a4,$t0,$a1
    beqzl	$a4,.L0da73d64
    # Line 769
    lwc1	$f1,30756($a0)
    # Line 768
    move	$a1,$t0
.L0da73d60:
    # Line 769
    lwc1	$f1,30756($a0)
.L0da73d64:
    lw	$at,8($at)
    # Line 771
    mtc1	$a3,$f3
    # Line 769
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    # Line 771
    cvt.s.w	$f3,$f3
    # Line 769
    mul.s	$f0,$f0,$f1
    # Line 771
    mul.s	$f3,$f3,$f4
    # Line 769
    swc1	$f0,0($a5)
    # Line 771
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da73e10
    # Line 772
    slt	$v0,$a3,$a1
    beqzl	$v0,.L0da73db4
    # Line 774
    lwc1	$f3,30760($a0)
    # Line 773
    move	$a1,$a3
.L0da73db0:
    # Line 774
    lwc1	$f3,30760($a0)
.L0da73db4:
    lw	$v1,8($v1)
    # Line 776
    mtc1	$a2,$f1
    # Line 774
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f2,0($v1)
    # Line 776
    cvt.s.w	$f1,$f1
    # Line 774
    mul.s	$f2,$f2,$f3
    # Line 776
    mul.s	$f1,$f1,$f6
    # Line 774
    swc1	$f2,4($a5)
    # Line 776
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 779
    addiu	$a5,$a5,12
    # Line 776
    bltz	$a1,.L0da73cc8
    # Line 779
    lw	$v1,16($sp)
    # Line 777
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73cd0
    # Line 779
    lw	$v1,8($v1)
    b	.L0da73ccc
    # Line 778
    move	$a1,$a2
.L0da73e08:
    # Line 767
    b	.L0da73d60
    move	$a1,$zero
.L0da73e10:
    # Line 772
    b	.L0da73db0
    move	$a1,$zero
.L0da73e18:
    # Line 783
    addiu	$a5,$a5,12
    # Line 781
    swc1	$f5,-12($a5)
    # Line 782
    swc1	$f4,-8($a5)
    b	.L0da73ce8
    # Line 783
    swc1	$f6,-4($a5)
.L0da73e2c:
    # Line 788
    jr	$ra
    addiu	$sp,$sp,64
.L0da73e34:
    # Line 748
    lwc1	$f9,30764($a0)
    # Line 754
    mul.s	$f7,$f4,$f9
    # Line 746
    lwc1	$f11,30760($a0)
    # Line 748
    mul.s	$f9,$f5,$f9
    # Line 752
    mul.s	$f13,$f6,$f11
    # Line 744
    lwc1	$f12,30756($a0)
    # Line 746
    mul.s	$f11,$f14,$f11
    # Line 750
    mul.s	$f8,$f15,$f12
    b	.L0da73ca8
    # Line 744
    mul.s	$f12,$f16,$f12
.end __glSpanModifyRGB

# Function: __glSpanModifyLuminance
# Declared: Line 795 (Source lines: 797-878)
# Address: 0x0da73e5c - 0x0da74090 (Size: 564 bytes, Frame: 192)
.globl __glSpanModifyLuminance
.ent __glSpanModifyLuminance
__glSpanModifyLuminance:
    # Line 797
    addiu	$sp,$sp,-64
    # Line 849
    move	$a5,$a3
    # Line 814
    lwc1	$f16,636($a0)
    # Line 851
    move	$a6,$zero
    # Line 814
    lwc1	$f10,30548($a0)
    lwc1	$f15,616($a0)
    lwc1	$f4,624($a0)
    # Line 824
    addiu	$a4,$a0,1024
    # Line 827
    addiu	$at,$a0,1036
    # Line 814
    lwc1	$f14,640($a0)
    lwc1	$f5,644($a0)
    lwc1	$f6,620($a0)
    # Line 812
    lbu	$t1,736($a0)
    # Line 819
    mov.s	$f9,$f5
    # Line 821
    mov.s	$f13,$f6
    # Line 814
    beqz	$t1,.L0da74068
    # Line 818
    mov.s	$f11,$f14
    # Line 822
    mov.s	$f7,$f4
    # Line 820
    mov.s	$f8,$f15
    # Line 817
    mov.s	$f12,$f16
    # Line 827
    sw	$at,8($sp)
    # Line 826
    lw	$at,1024($a0)
    # Line 832
    lw	$v1,1048($a0)
    # Line 824
    sw	$a4,0($sp)
    # Line 826
    addiu	$at,$at,-1
    # Line 832
    addiu	$v1,$v1,-1
    # Line 830
    addiu	$v0,$a0,1048
    sw	$v0,16($sp)
    # Line 829
    lw	$v0,1036($a0)
    # Line 832
    sw	$v1,20($sp)
    # Line 826
    sw	$at,4($sp)
    # Line 829
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
.L0da73ee0:
    # Line 851
    lw	$a3,12($sp)
    # Line 850
    lw	$t2,180($a1)
    # Line 848
    move	$a7,$a2
    # Line 851
    blez	$t2,.L0da74060
    lw	$t0,4($sp)
    lw	$a2,20($sp)
    b	.L0da73f30
    # Line 854
    lwc1	$f6,0($a7)
.L0da73f00:
    # Line 867
    move	$a1,$zero
.L0da73f04:
    # Line 869
    lw	$v1,8($v1)
.L0da73f08:
    lwc1	$f1,30764($a0)
    sll	$a4,$a1,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da73f20:
    # Line 876
    swc1	$f10,0($a5)
    # Line 851
    beq	$t2,$a6,.L0da74060
    # Line 876
    addiu	$a5,$a5,4
    # Line 854
    lwc1	$f6,0($a7)
.L0da73f30:
    mul.s	$f6,$f6,$f7
    # Line 852
    lwc1	$f5,0($a7)
    # Line 853
    mul.s	$f4,$f5,$f13
    # Line 852
    mul.s	$f5,$f5,$f8
    # Line 854
    add.s	$f6,$f6,$f9
    addiu	$a7,$a7,4
    # Line 851
    addiu	$a6,$a6,1
    # Line 853
    add.s	$f4,$f4,$f11
    # Line 859
    lw	$at,0($sp)
    # Line 854
    beqz	$t1,.L0da7404c
    # Line 852
    add.s	$f5,$f5,$f12
    # Line 856
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 864
    lw	$v1,8($sp)
    # Line 856
    bltz	$a1,.L0da7403c
    # Line 857
    slt	$a4,$t0,$a1
    beqzl	$a4,.L0da73f98
    # Line 859
    lwc1	$f1,30756($a0)
    # Line 858
    move	$a1,$t0
.L0da73f94:
    # Line 859
    lwc1	$f1,30756($a0)
.L0da73f98:
    lw	$at,8($at)
    # Line 861
    mtc1	$a3,$f3
    # Line 859
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    # Line 861
    cvt.s.w	$f3,$f3
    # Line 859
    mul.s	$f0,$f0,$f1
    # Line 861
    mul.s	$f3,$f3,$f4
    # Line 859
    swc1	$f0,0($a5)
    # Line 861
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da74044
    # Line 862
    slt	$v0,$a3,$a1
    beqzl	$v0,.L0da73fe8
    # Line 864
    lwc1	$f3,30760($a0)
    # Line 863
    move	$a1,$a3
.L0da73fe4:
    # Line 864
    lwc1	$f3,30760($a0)
.L0da73fe8:
    lw	$v1,8($v1)
    # Line 866
    mtc1	$a2,$f1
    # Line 864
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f2,0($v1)
    # Line 866
    cvt.s.w	$f1,$f1
    # Line 864
    mul.s	$f2,$f2,$f3
    # Line 866
    mul.s	$f1,$f1,$f6
    # Line 864
    swc1	$f2,4($a5)
    # Line 866
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 869
    addiu	$a5,$a5,12
    # Line 866
    bltz	$a1,.L0da73f00
    # Line 869
    lw	$v1,16($sp)
    # Line 867
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da73f08
    # Line 869
    lw	$v1,8($v1)
    b	.L0da73f04
    # Line 868
    move	$a1,$a2
.L0da7403c:
    # Line 857
    b	.L0da73f94
    move	$a1,$zero
.L0da74044:
    # Line 862
    b	.L0da73fe4
    move	$a1,$zero
.L0da7404c:
    # Line 873
    addiu	$a5,$a5,12
    # Line 871
    swc1	$f5,-12($a5)
    # Line 872
    swc1	$f4,-8($a5)
    b	.L0da73f20
    # Line 873
    swc1	$f6,-4($a5)
.L0da74060:
    # Line 878
    jr	$ra
    addiu	$sp,$sp,64
.L0da74068:
    # Line 838
    lwc1	$f9,30764($a0)
    # Line 844
    mul.s	$f7,$f4,$f9
    # Line 836
    lwc1	$f11,30760($a0)
    # Line 838
    mul.s	$f9,$f5,$f9
    # Line 842
    mul.s	$f13,$f6,$f11
    # Line 834
    lwc1	$f12,30756($a0)
    # Line 836
    mul.s	$f11,$f14,$f11
    # Line 840
    mul.s	$f8,$f15,$f12
    b	.L0da73ee0
    # Line 834
    mul.s	$f12,$f16,$f12
.end __glSpanModifyLuminance

# Function: __glSpanModifyLuminanceAlpha
# Declared: Line 885 (Source lines: 887-978)
# Address: 0x0da74090 - 0x0da74354 (Size: 708 bytes, Frame: 192)
.globl __glSpanModifyLuminanceAlpha
.ent __glSpanModifyLuminanceAlpha
__glSpanModifyLuminanceAlpha:
    # Line 887
    addiu	$sp,$sp,-64
    # Line 944
    move	$a5,$a3
    # Line 900
    lwc1	$f7,640($a0)
    # Line 946
    move	$a6,$zero
    # Line 900
    lwc1	$f17,636($a0)
    lwc1	$f5,620($a0)
    lwc1	$f18,628($a0)
    # Line 918
    addiu	$v1,$a0,1048
    # Line 915
    addiu	$v0,$a0,1036
    # Line 900
    lwc1	$f6,644($a0)
    lbu	$t2,736($a0)
    lwc1	$f19,648($a0)
    lwc1	$f16,616($a0)
    lwc1	$f4,624($a0)
    # Line 906
    mov.s	$f8,$f19
    # Line 907
    mov.s	$f15,$f16
    # Line 909
    mov.s	$f9,$f4
    # Line 900
    beqz	$t2,.L0da74320
    # Line 905
    mov.s	$f11,$f6
    # Line 912
    addiu	$at,$a0,1024
    # Line 910
    mov.s	$f13,$f18
    # Line 908
    mov.s	$f10,$f5
    # Line 903
    mov.s	$f12,$f17
    # Line 904
    mov.s	$f14,$f7
    # Line 915
    sw	$v0,8($sp)
    # Line 917
    lw	$v0,1036($a0)
    # Line 912
    sw	$at,0($sp)
    # Line 914
    lw	$at,1024($a0)
    # Line 918
    sw	$v1,16($sp)
    # Line 920
    lw	$v1,1048($a0)
    # Line 914
    addiu	$at,$at,-1
    # Line 917
    addiu	$v0,$v0,-1
    # Line 920
    addiu	$v1,$v1,-1
    sw	$v1,20($sp)
    # Line 921
    addiu	$a4,$a0,1060
    sw	$a4,24($sp)
    # Line 923
    lw	$a4,1060($a0)
    # Line 917
    sw	$v0,12($sp)
    # Line 914
    sw	$at,4($sp)
    # Line 923
    addiu	$a4,$a4,-1
    sw	$a4,28($sp)
.L0da74134:
    # Line 946
    lw	$t1,12($sp)
    # Line 945
    lw	$t3,180($a1)
    # Line 946
    lw	$a3,28($sp)
    # Line 943
    move	$a7,$a2
    # Line 946
    blez	$t3,.L0da74318
    lw	$a2,4($sp)
    b	.L0da7417c
    lw	$t0,20($sp)
.L0da74154:
    # Line 968
    move	$a1,$zero
.L0da74158:
    # Line 970
    lw	$at,8($at)
.L0da7415c:
    lwc1	$f1,30796($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da74174:
    # Line 946
    beq	$t3,$a6,.L0da74318
    nop
.L0da7417c:
    # Line 950
    lwc1	$f5,4($a7)
    # Line 947
    lwc1	$f4,0($a7)
    # Line 950
    mul.s	$f5,$f5,$f13
    # Line 949
    mul.s	$f6,$f4,$f9
    # Line 948
    mul.s	$f7,$f4,$f10
    # Line 950
    add.s	$f5,$f5,$f8
    # Line 947
    mul.s	$f4,$f4,$f15
    # Line 949
    add.s	$f6,$f6,$f11
    # Line 950
    addiu	$a7,$a7,8
    # Line 946
    addiu	$a6,$a6,1
    # Line 948
    add.s	$f7,$f7,$f14
    # Line 955
    lw	$v1,0($sp)
    # Line 950
    beqz	$t2,.L0da74300
    # Line 947
    add.s	$f4,$f4,$f12
    # Line 952
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 960
    lw	$at,8($sp)
    # Line 952
    bltz	$a1,.L0da742e8
    # Line 953
    slt	$v0,$a2,$a1
    beqzl	$v0,.L0da741f0
    # Line 955
    lwc1	$f1,30756($a0)
    # Line 954
    move	$a1,$a2
.L0da741ec:
    # Line 955
    lwc1	$f1,30756($a0)
.L0da741f0:
    lw	$v1,8($v1)
    # Line 957
    mtc1	$t1,$f3
    # Line 955
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 957
    cvt.s.w	$f3,$f3
    # Line 955
    mul.s	$f0,$f0,$f1
    # Line 957
    mul.s	$f3,$f3,$f7
    # Line 955
    swc1	$f0,0($a5)
    # Line 957
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da742f0
    # Line 958
    slt	$a4,$t1,$a1
    beqzl	$a4,.L0da74240
    # Line 960
    lwc1	$f3,30760($a0)
    # Line 959
    move	$a1,$t1
.L0da7423c:
    # Line 960
    lwc1	$f3,30760($a0)
.L0da74240:
    lw	$at,8($at)
    # Line 962
    mtc1	$t0,$f1
    # Line 960
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    # Line 962
    cvt.s.w	$f1,$f1
    # Line 960
    mul.s	$f2,$f2,$f3
    # Line 962
    mul.s	$f1,$f1,$f6
    # Line 960
    swc1	$f2,4($a5)
    # Line 962
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 965
    lw	$v1,16($sp)
    # Line 962
    bltz	$a1,.L0da742f8
    # Line 970
    lw	$at,24($sp)
    # Line 963
    slt	$v0,$t0,$a1
    beqzl	$v0,.L0da74294
    # Line 965
    lwc1	$f1,30764($a0)
    # Line 964
    move	$a1,$t0
.L0da74290:
    # Line 965
    lwc1	$f1,30764($a0)
.L0da74294:
    lw	$v1,8($v1)
    # Line 967
    mtc1	$a3,$f3
    # Line 965
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 967
    cvt.s.w	$f3,$f3
    # Line 965
    mul.s	$f0,$f0,$f1
    # Line 967
    mul.s	$f3,$f3,$f5
    # Line 965
    swc1	$f0,8($a5)
    # Line 967
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da74154
    # Line 970
    addiu	$a5,$a5,16
    # Line 968
    slt	$a4,$a3,$a1
    beqzl	$a4,.L0da7415c
    # Line 970
    lw	$at,8($at)
    b	.L0da74158
    # Line 969
    move	$a1,$a3
.L0da742e8:
    # Line 953
    b	.L0da741ec
    move	$a1,$zero
.L0da742f0:
    # Line 958
    b	.L0da7423c
    move	$a1,$zero
.L0da742f8:
    # Line 963
    b	.L0da74290
    move	$a1,$zero
.L0da74300:
    # Line 975
    addiu	$a5,$a5,16
    # Line 972
    swc1	$f4,-16($a5)
    # Line 973
    swc1	$f7,-12($a5)
    # Line 974
    swc1	$f6,-8($a5)
    b	.L0da74174
    # Line 975
    swc1	$f5,-4($a5)
.L0da74318:
    # Line 978
    jr	$ra
    addiu	$sp,$sp,64
.L0da74320:
    # Line 931
    lwc1	$f8,30796($a0)
    # Line 939
    mul.s	$f13,$f18,$f8
    # Line 929
    lwc1	$f11,30764($a0)
    # Line 931
    mul.s	$f8,$f19,$f8
    # Line 937
    mul.s	$f9,$f4,$f11
    # Line 927
    lwc1	$f14,30760($a0)
    # Line 929
    mul.s	$f11,$f6,$f11
    # Line 935
    mul.s	$f10,$f5,$f14
    # Line 925
    lwc1	$f12,30756($a0)
    # Line 927
    mul.s	$f14,$f7,$f14
    # Line 933
    mul.s	$f15,$f16,$f12
    b	.L0da74134
    # Line 925
    mul.s	$f12,$f17,$f12
.end __glSpanModifyLuminanceAlpha

# Function: __glSpanModifyRedAlpha
# Declared: Line 989 (Source lines: 991-1060)
# Address: 0x0da74354 - 0x0da74500 (Size: 428 bytes, Frame: 48)
.globl __glSpanModifyRedAlpha
.ent __glSpanModifyRedAlpha
__glSpanModifyRedAlpha:
    # Line 991
    addiu	$sp,$sp,-48
    # Line 1010
    lwc1	$f7,30544($a0)
    # Line 1035
    move	$a5,$a3
    # Line 1010
    lwc1	$f4,636($a0)
    # Line 1037
    move	$a6,$zero
    # Line 1009
    lwc1	$f6,30540($a0)
    # Line 1010
    lwc1	$f12,628($a0)
    # Line 1017
    addiu	$v1,$a0,1024
    # Line 1010
    lwc1	$f13,616($a0)
    # Line 1005
    lbu	$t0,736($a0)
    # Line 1010
    lwc1	$f5,648($a0)
    # Line 1014
    mov.s	$f11,$f13
    # Line 1010
    beqz	$t0,.L0da744e4
    # Line 1013
    mov.s	$f8,$f5
    # Line 1020
    addiu	$a4,$a0,1060
    # Line 1015
    mov.s	$f10,$f12
    # Line 1012
    mov.s	$f9,$f4
    # Line 1017
    sw	$v1,0($sp)
    # Line 1019
    lw	$at,1024($a0)
    # Line 1022
    lw	$v0,1060($a0)
    # Line 1020
    sw	$a4,8($sp)
    # Line 1019
    addiu	$at,$at,-1
    # Line 1022
    addiu	$v0,$v0,-1
    sw	$v0,12($sp)
    # Line 1019
    sw	$at,4($sp)
.L0da743b8:
    # Line 1036
    lw	$t1,180($a1)
    # Line 1034
    move	$a7,$a2
    # Line 1037
    lw	$a2,12($sp)
    blez	$t1,.L0da744dc
    lw	$a3,4($sp)
    b	.L0da74400
    # Line 1039
    lwc1	$f4,0($a7)
.L0da743d4:
    # Line 1050
    move	$a1,$zero
.L0da743d8:
    # Line 1052
    lw	$at,8($at)
.L0da743dc:
    lwc1	$f1,30796($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-4($a5)
.L0da743f4:
    # Line 1037
    beq	$t1,$a6,.L0da744dc
    nop
    # Line 1039
    lwc1	$f4,0($a7)
.L0da74400:
    mul.s	$f4,$f4,$f10
    # Line 1038
    lwc1	$f5,0($a7)
    mul.s	$f5,$f5,$f11
    # Line 1039
    addiu	$a7,$a7,4
    # Line 1037
    addiu	$a6,$a6,1
    # Line 1039
    add.s	$f4,$f4,$f8
    # Line 1044
    lw	$v1,0($sp)
    # Line 1039
    beqz	$t0,.L0da744c4
    # Line 1038
    add.s	$f5,$f5,$f9
    # Line 1041
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 1052
    lw	$at,8($sp)
    # Line 1041
    bltz	$a1,.L0da744bc
    # Line 1042
    slt	$v0,$a3,$a1
    beqzl	$v0,.L0da74460
    # Line 1044
    lwc1	$f1,30756($a0)
    # Line 1043
    move	$a1,$a3
.L0da7445c:
    # Line 1044
    lwc1	$f1,30756($a0)
.L0da74460:
    lw	$v1,8($v1)
    # Line 1049
    mtc1	$a2,$f3
    # Line 1044
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,0($v1)
    # Line 1049
    cvt.s.w	$f3,$f3
    # Line 1044
    mul.s	$f0,$f0,$f1
    # Line 1047
    swc1	$f7,8($a5)
    # Line 1049
    mul.s	$f3,$f3,$f4
    # Line 1046
    swc1	$f6,4($a5)
    # Line 1044
    swc1	$f0,0($a5)
    # Line 1049
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da743d4
    # Line 1052
    addiu	$a5,$a5,16
    # Line 1050
    slt	$a4,$a2,$a1
    beqzl	$a4,.L0da743dc
    # Line 1052
    lw	$at,8($at)
    b	.L0da743d8
    # Line 1051
    move	$a1,$a2
.L0da744bc:
    # Line 1042
    b	.L0da7445c
    move	$a1,$zero
.L0da744c4:
    # Line 1057
    addiu	$a5,$a5,16
    # Line 1054
    swc1	$f5,-16($a5)
    # Line 1055
    swc1	$f6,-12($a5)
    # Line 1056
    swc1	$f7,-8($a5)
    b	.L0da743f4
    # Line 1057
    swc1	$f4,-4($a5)
.L0da744dc:
    # Line 1060
    jr	$ra
    addiu	$sp,$sp,48
.L0da744e4:
    # Line 1026
    lwc1	$f8,30796($a0)
    # Line 1030
    mul.s	$f10,$f12,$f8
    # Line 1024
    lwc1	$f9,30756($a0)
    # Line 1026
    mul.s	$f8,$f5,$f8
    # Line 1028
    mul.s	$f11,$f13,$f9
    b	.L0da743b8
    # Line 1024
    mul.s	$f9,$f4,$f9
.end __glSpanModifyRedAlpha

# Function: __glSpanModifyDepth
# Declared: Line 1066 (Source lines: 1068-1092)
# Address: 0x0da74500 - 0x0da74608 (Size: 264 bytes, Frame: 0)
.globl __glSpanModifyDepth
.ent __glSpanModifyDepth
__glSpanModifyDepth:
    # Line 1080
    lwc1	$f8,3284($a0)
    # Line 1079
    lwc1	$f7,632($a0)
    # Line 1078
    lwc1	$f6,652($a0)
    # Line 1086
    move	$a6,$zero
    # Line 1068
    lui	$v0,0x18
    # Line 1085
    lw	$a7,180($a1)
    # Line 1068
    addiu	$v0,$v0,13160
    # addu	at,t9,v0
    # Line 1086
    blez	$a7,.L0da74568
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0da7455c
    mtc1	$zero,$f5
    # Line 1087
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    c.lt.s	$f4,$f5
    # Line 1086
    addiu	$a6,$a6,1
    # Line 1087
    bc1f	.L0da745f0
    addiu	$a2,$a2,4
    # Line 1088
    mov.s	$f4,$f5
.L0da74554:
    # Line 1090
    swc1	$f4,0($a3)
.L0da74558:
    addiu	$a3,$a3,4
.L0da7455c:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0da745b8
    # Line 1087
    lwc1	$f4,0($a2)
.L0da74568:
    # Line 1092
    jr	$ra
    nop
.L0da74570:
    # Line 1088
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da74588
    # Line 1090
    swc1	$f4,0($a3)
    # Line 1089
    mov.s	$f4,$f8
.L0da74584:
    # Line 1090
    swc1	$f4,0($a3)
.L0da74588:
    # Line 1087
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da745d8
    addiu	$a2,$a2,8
    # Line 1088
    mov.s	$f4,$f5
.L0da745a8:
    # Line 1090
    swc1	$f4,4($a3)
.L0da745ac:
    # Line 1086
    beq	$a7,$a6,.L0da74568
    # Line 1090
    addiu	$a3,$a3,8
    # Line 1087
    lwc1	$f4,0($a2)
.L0da745b8:
    mul.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da74570
    # Line 1086
    addiu	$a6,$a6,2
    # Line 1088
    b	.L0da74584
    mov.s	$f4,$f5
.L0da745d8:
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da745ac
    # Line 1090
    swc1	$f4,4($a3)
    b	.L0da745a8
    # Line 1089
    mov.s	$f4,$f8
.L0da745f0:
    # Line 1088
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0da74558
    # Line 1090
    swc1	$f4,0($a3)
    b	.L0da74554
    # Line 1089
    mov.s	$f4,$f8
.end __glSpanModifyDepth

# Function: __glSpanModifyStencil
# Declared: Line 1098 (Source lines: 1100-1157)
# Address: 0x0da74608 - 0x0da74ad8 (Size: 1232 bytes, Frame: 48)
.globl __glSpanModifyStencil
.ent __glSpanModifyStencil
__glSpanModifyStencil:
    # Line 1113
    lbu	$t0,737($a0)
    # Line 1100
    addiu	$sp,$sp,-48
    # Line 1112
    lw	$a7,728($a0)
    # Line 1113
    beqz	$t0,.L0da74630
    # Line 1111
    lw	$a6,732($a0)
    # Line 1115
    addiu	$v0,$a0,964
    # Line 1116
    lw	$at,964($a0)
    # Line 1115
    sw	$v0,0($sp)
    # Line 1116
    addiu	$at,$at,-1
    sw	$at,4($sp)
.L0da74630:
    lw	$a5,3132($a0)
    # Line 1129
    move	$t2,$a2
    # Line 1116
    slt	$v1,$a5,$a7
    beqz	$v1,.L0da74658
    # Line 1130
    move	$a0,$a3
    # Line 1124
    andi	$a7,$a7,0x1f
    slt	$a4,$a5,$a7
    beqz	$a4,.L0da74658
    nop
    # Line 1126
    move	$a7,$a5
.L0da74658:
    # Line 1131
    bltz	$a7,.L0da74774
    lw	$a5,180($a1)
    # Line 1141
    move	$a1,$zero
    # Line 1131
    beqz	$t0,.L0da74884
    # Line 1136
    move	$a2,$a5
    move	$a1,$zero
    blez	$a5,.L0da7476c
    lw	$t0,0($sp)
    lw	$a3,4($sp)
    andi	$at,$a5,0x1
    beqz	$at,.L0da746d0
    move	$t1,$a1
    # Line 1138
    lwc1	$f1,0($t2)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    lw	$v0,8($t0)
    sllv	$v1,$v1,$a7
    addu	$v1,$v1,$a6
    and	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1136
    addiu	$a1,$a1,1
    # Line 1138
    addiu	$a0,$a0,4
    # Line 1137
    addiu	$t2,$t2,4
    # Line 1138
    swc1	$f0,-4($a0)
    move	$t1,$a1
.L0da746d0:
    move	$t3,$t2
    move	$t8,$a0
    sra	$a4,$a2,0x1
    beqz	$a4,.L0da7476c
    move	$a2,$t8
    move	$a1,$t1
    move	$a0,$t3
.L0da746ec:
    lwc1	$f1,0($a0)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    lw	$v1,8($t0)
    sllv	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    and	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lwc1	$f3,4($a0)
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    lw	$at,8($t0)
    sllv	$v0,$v0,$a7
    addu	$v0,$v0,$a6
    and	$v0,$v0,$a3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,8
    # Line 1137
    addiu	$a0,$a0,8
    # Line 1136
    addiu	$a1,$a1,2
    bne	$a5,$a1,.L0da746ec
    # Line 1138
    swc1	$f2,-4($a2)
.L0da7476c:
    # Line 1157
    jr	$ra
    addiu	$sp,$sp,48
.L0da74774:
    # Line 1147
    move	$a2,$a5
    # Line 1141
    beqz	$t0,.L0da749ac
    # Line 1147
    lw	$a3,4($sp)
    move	$a1,$zero
    blez	$a5,.L0da7476c
    lw	$t0,0($sp)
    andi	$t1,$a5,0x1
    beqz	$t1,.L0da747dc
    negu	$t1,$a7
    # Line 1149
    lwc1	$f3,0($t2)
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    lw	$at,8($t0)
    srav	$v0,$v0,$t1
    addu	$v0,$v0,$a6
    and	$v0,$v0,$a3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1147
    addiu	$a1,$a1,1
    # Line 1149
    addiu	$a0,$a0,4
    # Line 1148
    addiu	$t2,$t2,4
    # Line 1149
    swc1	$f2,-4($a0)
.L0da747dc:
    move	$t3,$a1
    move	$t8,$t2
    move	$a7,$a0
    sra	$v1,$a2,0x1
    beqz	$v1,.L0da7487c
    move	$a0,$a7
    move	$a1,$t3
    move	$a2,$t8
.L0da747fc:
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    lw	$v0,8($t0)
    srav	$v1,$v1,$t1
    addu	$v1,$v1,$a6
    and	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a0)
    lwc1	$f1,4($a2)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    lw	$a4,8($t0)
    srav	$at,$at,$t1
    addu	$at,$at,$a6
    and	$at,$at,$a3
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a0,$a0,8
    # Line 1148
    addiu	$a2,$a2,8
    # Line 1147
    addiu	$a1,$a1,2
    bne	$a5,$a1,.L0da747fc
    # Line 1149
    swc1	$f0,-4($a0)
.L0da7487c:
    b	.L0da7476c
    nop
.L0da74884:
    # Line 1141
    blez	$a5,.L0da7476c
    move	$a3,$a5
    andi	$a2,$a5,0x3
    beqz	$a2,.L0da748d8
    move	$t3,$a1
.L0da74898:
    # Line 1142
    lwc1	$f1,0($t2)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    nop
    sllv	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1141
    addiu	$a1,$a1,1
    # Line 1142
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addi	$a2,$a2,-1
    bnez	$a2,.L0da74898
    swc1	$f0,-4($a0)
    move	$t3,$a1
.L0da748d8:
    move	$t0,$t2
    move	$t1,$a0
    sra	$at,$a3,0x2
    beqz	$at,.L0da749a4
    move	$a2,$t1
    move	$a1,$t3
    move	$a0,$t0
.L0da748f4:
    lwc1	$f1,0($a0)
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sllv	$at,$at,$a7
    addu	$at,$at,$a6
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lwc1	$f3,4($a0)
    trunc.w.s	$f3,$f3
    mfc1	$a4,$f3
    nop
    sllv	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sllv	$v1,$v1,$a7
    addu	$v1,$v1,$a6
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($a2)
    lwc1	$f3,12($a0)
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sllv	$v0,$v0,$a7
    addu	$v0,$v0,$a6
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,16
    addiu	$a0,$a0,16
    # Line 1141
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0da748f4
    # Line 1142
    swc1	$f2,-4($a2)
.L0da749a4:
    b	.L0da7476c
    nop
.L0da749ac:
    # Line 1152
    blez	$a5,.L0da7476c
    move	$a1,$zero
    move	$a3,$a5
    andi	$a2,$a5,0x3
    beqz	$a2,.L0da74a00
    negu	$t1,$a7
.L0da749c4:
    # Line 1153
    lwc1	$f3,0($t2)
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    srav	$v0,$v0,$t1
    addu	$v0,$v0,$a6
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1152
    addiu	$a1,$a1,1
    # Line 1153
    addiu	$a0,$a0,4
    addiu	$t2,$t2,4
    addi	$a2,$a2,-1
    bnez	$a2,.L0da749c4
    swc1	$f2,-4($a0)
.L0da74a00:
    move	$t3,$a1
    move	$t0,$a0
    sra	$v1,$a3,0x2
    beqz	$v1,.L0da74ad0
    move	$a7,$t2
    move	$a0,$t3
    move	$a1,$t0
    move	$a2,$a7
.L0da74a20:
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    srav	$v1,$v1,$t1
    addu	$v1,$v1,$a6
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a1)
    lwc1	$f1,4($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    srav	$v0,$v0,$t1
    addu	$v0,$v0,$a6
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a1)
    lwc1	$f3,8($a2)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    srav	$at,$at,$t1
    addu	$at,$at,$a6
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a1)
    lwc1	$f1,12($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    nop
    srav	$a4,$a4,$t1
    addu	$a4,$a4,$a6
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a1,$a1,16
    addiu	$a2,$a2,16
    # Line 1152
    addiu	$a0,$a0,4
    bne	$a5,$a0,.L0da74a20
    # Line 1153
    swc1	$f0,-4($a1)
.L0da74ad0:
    b	.L0da7476c
    nop
.end __glSpanModifyStencil

# Function: __glSpanModifyCI
# Declared: Line 1163 (Source lines: 1165-1235)
# Address: 0x0da74ad8 - 0x0da74d20 (Size: 584 bytes, Frame: 240)
.globl __glSpanModifyCI
.ent __glSpanModifyCI
__glSpanModifyCI:
    # Line 1165
    addiu	$sp,$sp,-112
    # Line 1180
    lw	$a7,728($a0)
    # Line 1179
    lw	$t0,732($a0)
    # Line 1180
    lw	$at,80($a1)
    # Line 1182
    addiu	$v0,$a0,976
    # Line 1180
    li	$t8,6400
    beq	$at,$t8,.L0da74d04
    # Line 1177
    lbu	$t9,736($a0)
    # Line 1185
    addiu	$v1,$a0,988
    # Line 1194
    lwc1	$f0,30756($a0)
    # Line 1197
    lwc1	$f3,30796($a0)
    # Line 1196
    lwc1	$f2,30764($a0)
    # Line 1195
    lwc1	$f1,30760($a0)
    # Line 1197
    swc1	$f3,44($sp)
    # Line 1196
    swc1	$f2,40($sp)
    # Line 1195
    swc1	$f1,36($sp)
    # Line 1185
    sw	$v1,8($sp)
    # Line 1187
    lw	$v1,988($a0)
    # Line 1182
    sw	$v0,0($sp)
    # Line 1184
    lw	$v0,976($a0)
    # Line 1194
    swc1	$f0,32($sp)
    # Line 1187
    addiu	$v1,$v1,-1
    # Line 1184
    addiu	$v0,$v0,-1
    sw	$v0,4($sp)
    # Line 1188
    addiu	$a4,$a0,1000
    # Line 1191
    addiu	$at,$a0,1012
    sw	$at,24($sp)
    # Line 1193
    lw	$at,1012($a0)
    # Line 1188
    sw	$a4,16($sp)
    # Line 1190
    lw	$a4,1000($a0)
    # Line 1187
    sw	$v1,12($sp)
    # Line 1193
    addiu	$at,$at,-1
    # Line 1190
    addiu	$a4,$a4,-1
    sw	$a4,20($sp)
    # Line 1193
    sw	$at,28($sp)
.L0da74b64:
    # Line 1202
    lw	$a5,3136($a0)
    # Line 1218
    move	$a6,$zero
    # Line 1202
    slt	$v0,$a5,$a7
    beqz	$v0,.L0da74b90
    # Line 1218
    lw	$t3,12($sp)
    # Line 1211
    andi	$a7,$a7,0x1f
    slt	$v1,$a5,$a7
    beqz	$v1,.L0da74b90
    # Line 1218
    lw	$t3,12($sp)
    # Line 1212
    move	$a7,$a5
    # Line 1218
    lw	$t3,12($sp)
.L0da74b90:
    # Line 1216
    move	$a0,$a3
    # Line 1218
    lwc1	$f6,32($sp)
    lwc1	$f4,40($sp)
    # Line 1217
    lw	$t1,180($a1)
    # Line 1218
    negu	$a4,$a7
    lw	$at,52($sp)
    blez	$t1,.L0da74cfc
    # Line 1215
    move	$a5,$a2
    # Line 1218
    lwc1	$f5,44($sp)
    lwc1	$f7,36($sp)
    lw	$a3,28($sp)
    lw	$t2,4($sp)
    sd	$a4,64($sp)
    lw	$v0,20($sp)
    sd	$at,56($sp)
    b	.L0da74c0c
    sd	$v0,72($sp)
.L0da74bd4:
    # Line 1228
    beqz	$t9,.L0da74ce4
    # Line 1230
    ld	$a4,56($sp)
    lw	$v1,8($v1)
    and	$a4,$a2,$a4
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    addiu	$a0,$a0,4
    swc1	$f0,-4($a0)
.L0da74c04:
    # Line 1218
    beq	$t1,$a6,.L0da74cfc
    nop
.L0da74c0c:
    bltz	$a7,.L0da74cc8
    # Line 1222
    ld	$a4,64($sp)
    # Line 1220
    lwc1	$f1,0($a5)
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    addiu	$a5,$a5,4
    sllv	$a2,$a2,$a7
    addu	$a2,$a2,$t0
.L0da74c2c:
    # Line 1222
    lw	$a4,80($a1)
    # Line 1227
    lw	$v0,16($sp)
    # Line 1230
    lw	$v1,48($sp)
    # Line 1222
    beq	$a4,$t8,.L0da74bd4
    # Line 1218
    addiu	$a6,$a6,1
    # Line 1225
    lw	$a4,0($sp)
    lw	$a4,8($a4)
    and	$at,$a2,$t2
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f6
    # Line 1226
    lw	$v1,8($sp)
    # Line 1225
    swc1	$f1,0($a0)
    # Line 1226
    lw	$v1,8($v1)
    and	$a4,$a2,$t3
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f7
    # Line 1227
    ld	$v1,72($sp)
    # Line 1226
    swc1	$f0,4($a0)
    # Line 1227
    lw	$v0,8($v0)
    and	$v1,$a2,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f3,0($v0)
    mul.s	$f3,$f3,$f4
    # Line 1228
    lw	$at,24($sp)
    # Line 1227
    swc1	$f3,8($a0)
    # Line 1228
    lw	$at,8($at)
    and	$v0,$a2,$a3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f5
    addiu	$a0,$a0,16
    b	.L0da74c04
    swc1	$f2,-4($a0)
.L0da74cc8:
    # Line 1222
    lwc1	$f2,0($a5)
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    addiu	$a5,$a5,4
    srav	$a2,$a2,$a4
    b	.L0da74c2c
    addu	$a2,$a2,$t0
.L0da74ce4:
    # Line 1232
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    addiu	$a0,$a0,4
    b	.L0da74c04
    swc1	$f3,-4($a0)
.L0da74cfc:
    # Line 1235
    jr	$ra
    addiu	$sp,$sp,112
.L0da74d04:
    # Line 1197
    beqz	$t9,.L0da74b64
    # Line 1200
    addiu	$v0,$a0,952
    # Line 1202
    lw	$at,952($a0)
    # Line 1200
    sw	$v0,48($sp)
    # Line 1202
    addiu	$at,$at,-1
    b	.L0da74b64
    sw	$at,52($sp)
.end __glSpanModifyCI

# Function: __glSpanApplyRGBAColorTable
# Declared: Line 1240 (Source lines: 1242-1445)
# Address: 0x0da74d20 - 0x0da75570 (Size: 2128 bytes, Frame: 48)
.globl __glSpanApplyRGBAColorTable
.ent __glSpanApplyRGBAColorTable
__glSpanApplyRGBAColorTable:
    # Line 1288
    move	$t1,$zero
    # Line 1242
    lw	$a6,30652($a0)
    # Line 1269
    li	$v1,0x80d0
    # Line 1255
    li	$v0,-2
    # Line 1242
    andi	$at,$a6,0x1
    beqz	$at,.L0da75520
    addiu	$sp,$sp,-48
    # Line 1255
    and	$v0,$a6,$v0
    # Line 1254
    li	$a5,0x80d0
    # Line 1255
    sw	$v0,30652($a0)
.L0da74d48:
    # Line 1269
    li	$at,0x80d2
    lw	$t2,0($sp)
    beq	$a5,$v1,.L0da75540
    li	$a4,0x80d1
    beq	$a5,$a4,.L0da7554c
    # Line 1275
    addiu	$a7,$a0,5052
    # Line 1269
    beq	$a5,$at,.L0da75554
    lw	$a7,4($sp)
.L0da74d68:
    # Line 1284
    move	$t0,$a2
    # Line 1288
    li	$a2,0x8049
    li	$t3,6409
    # Line 1286
    lw	$a6,12($a7)
    # Line 1285
    move	$a5,$a3
    # Line 1288
    blez	$t2,.L0da75518
    # Line 1286
    addiu	$a6,$a6,-1
    # Line 1288
    li	$a3,6406
    li	$t8,6410
    li	$t9,6407
    b	.L0da74ea4
    # Line 1296
    addiu	$a5,$a5,16
.L0da74d98:
    # Line 1324
    mtc1	$a6,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f2,$f4,$f5
    lwc1	$f1,30804($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da75480
    # Line 1330
    mul.s	$f2,$f4,$f6
    # Line 1326
    slt	$at,$a6,$a1
    beqzl	$at,.L0da74de0
    # Line 1328
    lw	$v0,4($a7)
    # Line 1327
    move	$a1,$a6
.L0da74ddc:
    # Line 1328
    lw	$v0,4($a7)
.L0da74de0:
    lwc1	$f0,30756($a0)
    sll	$v1,$a1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f3,0($v0)
    mul.s	$f3,$f3,$f0
    swc1	$f3,-16($a5)
    # Line 1330
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da75488
    # Line 1336
    mul.s	$f3,$f4,$f8
    # Line 1332
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da74e30
    # Line 1334
    lw	$at,4($a7)
    # Line 1333
    move	$a1,$a6
.L0da74e2c:
    # Line 1334
    lw	$at,4($a7)
.L0da74e30:
    lwc1	$f1,30760($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-12($a5)
    # Line 1336
    lwc1	$f2,30812($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da75490
    # Line 1338
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da74e7c
    # Line 1340
    lw	$a4,4($a7)
    # Line 1339
    move	$a1,$a6
.L0da74e78:
    # Line 1340
    lw	$a4,4($a7)
.L0da74e7c:
    lwc1	$f3,30764($a0)
    sll	$at,$a1,0x2
    addu	$a4,$a4,$at
    lwc1	$f2,0($a4)
    mul.s	$f2,$f2,$f3
    # Line 1342
    swc1	$f7,-4($a5)
    # Line 1340
    swc1	$f2,-8($a5)
.L0da74e98:
    # Line 1288
    addiu	$t1,$t1,1
.L0da74e9c:
    beq	$t1,$t2,.L0da75518
    # Line 1296
    addiu	$a5,$a5,16
.L0da74ea4:
    # Line 1292
    lwc1	$f7,12($t0)
    addiu	$t0,$t0,16
    # Line 1311
    lw	$a1,72($a7)
    # Line 1291
    lwc1	$f8,-8($t0)
    # Line 1290
    lwc1	$f6,-12($t0)
    # Line 1311
    beq	$a3,$a1,.L0da75048
    # Line 1289
    lwc1	$f5,-16($t0)
    # Line 1311
    beq	$t3,$a1,.L0da74d98
    nop
    beq	$t8,$a1,.L0da750b4
    nop
    beq	$a2,$a1,.L0da75214
    nop
    beq	$t9,$a1,.L0da75364
    li	$v0,6408
    bnel	$v0,$a1,.L0da74e9c
    # Line 1288
    addiu	$t1,$t1,1
    # Line 1416
    mtc1	$a6,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f2,$f4,$f5
    lwc1	$f1,30804($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da754f8
    # Line 1422
    mul.s	$f2,$f4,$f6
    # Line 1418
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da74f30
    # Line 1420
    lwc1	$f0,30756($a0)
    # Line 1419
    move	$a1,$a6
.L0da74f2c:
    # Line 1420
    lwc1	$f0,30756($a0)
.L0da74f30:
    lw	$a4,4($a7)
    sll	$a1,$a1,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,-16($a5)
    # Line 1422
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da75500
    # Line 1428
    mul.s	$f3,$f4,$f8
    # Line 1424
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da74f84
    # Line 1426
    lwc1	$f1,30760($a0)
    # Line 1425
    move	$a1,$a6
.L0da74f80:
    # Line 1426
    lwc1	$f1,30760($a0)
.L0da74f84:
    lw	$at,4($a7)
    sll	$v0,$a1,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-12($a5)
    # Line 1428
    lwc1	$f2,30812($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da75508
    # Line 1434
    mul.s	$f0,$f4,$f7
    # Line 1430
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da74fd8
    # Line 1432
    lwc1	$f2,30764($a0)
    # Line 1431
    move	$a1,$a6
.L0da74fd4:
    # Line 1432
    lwc1	$f2,30764($a0)
.L0da74fd8:
    lw	$a4,4($a7)
    sll	$a1,$a1,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f1,8($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,-8($a5)
    # Line 1434
    lwc1	$f3,30816($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da75510
    # Line 1436
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da75028
    # Line 1438
    lwc1	$f0,30796($a0)
    # Line 1437
    move	$a1,$a6
.L0da75024:
    # Line 1438
    lwc1	$f0,30796($a0)
.L0da75028:
    lw	$at,4($a7)
    sll	$v0,$a1,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f0
    b	.L0da74e98
    swc1	$f3,-4($a5)
.L0da75048:
    # Line 1317
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1315
    swc1	$f8,-8($a5)
    # Line 1317
    mul.s	$f3,$f3,$f7
    # Line 1314
    swc1	$f6,-12($a5)
    # Line 1313
    swc1	$f5,-16($a5)
    # Line 1317
    lwc1	$f2,30816($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da75498
    # Line 1319
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da75098
    # Line 1321
    lw	$a4,4($a7)
    # Line 1320
    move	$a1,$a6
.L0da75094:
    # Line 1321
    lw	$a4,4($a7)
.L0da75098:
    lwc1	$f1,30796($a0)
    sll	$at,$a1,0x2
    addu	$a4,$a4,$at
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f1
    # Line 1322
    b	.L0da74e98
    # Line 1321
    swc1	$f0,-4($a5)
.L0da750b4:
    # Line 1345
    mtc1	$a6,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f0,$f4,$f5
    lwc1	$f3,30804($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da754a0
    # Line 1351
    mul.s	$f2,$f4,$f6
    # Line 1347
    slt	$v0,$a6,$a1
    beqzl	$v0,.L0da750fc
    # Line 1349
    lwc1	$f0,30756($a0)
    # Line 1348
    move	$a1,$a6
.L0da750f8:
    # Line 1349
    lwc1	$f0,30756($a0)
.L0da750fc:
    lw	$v1,4($a7)
    addu	$a1,$a1,$a1
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f3,0($v1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,-16($a5)
    # Line 1351
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da754a8
    # Line 1357
    mul.s	$f3,$f4,$f8
    # Line 1353
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da75150
    # Line 1355
    lwc1	$f1,30760($a0)
    # Line 1354
    move	$a1,$a6
.L0da7514c:
    # Line 1355
    lwc1	$f1,30760($a0)
.L0da75150:
    lw	$at,4($a7)
    addu	$v0,$a1,$a1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-12($a5)
    # Line 1357
    lwc1	$f2,30812($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da754b0
    # Line 1363
    mul.s	$f0,$f4,$f7
    # Line 1359
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da751a4
    # Line 1361
    lwc1	$f2,30764($a0)
    # Line 1360
    move	$a1,$a6
.L0da751a0:
    # Line 1361
    lwc1	$f2,30764($a0)
.L0da751a4:
    lw	$a4,4($a7)
    addu	$a1,$a1,$a1
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,-8($a5)
    # Line 1363
    lwc1	$f3,30816($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da754b8
    # Line 1365
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da751f4
    # Line 1367
    lwc1	$f0,30796($a0)
    # Line 1366
    move	$a1,$a6
.L0da751f0:
    # Line 1367
    lwc1	$f0,30796($a0)
.L0da751f4:
    lw	$at,4($a7)
    addu	$v0,$a1,$a1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f0
    # Line 1368
    b	.L0da74e98
    # Line 1367
    swc1	$f3,-4($a5)
.L0da75214:
    # Line 1370
    mtc1	$a6,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f3,$f4,$f5
    lwc1	$f2,30804($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da754c0
    # Line 1376
    mul.s	$f2,$f4,$f6
    # Line 1372
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da7525c
    # Line 1374
    lw	$a4,4($a7)
    # Line 1373
    move	$a1,$a6
.L0da75258:
    # Line 1374
    lw	$a4,4($a7)
.L0da7525c:
    lwc1	$f0,30756($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,-16($a5)
    # Line 1376
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da754c8
    # Line 1382
    mul.s	$f3,$f4,$f8
    # Line 1378
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da752ac
    # Line 1380
    lw	$at,4($a7)
    # Line 1379
    move	$a1,$a6
.L0da752a8:
    # Line 1380
    lw	$at,4($a7)
.L0da752ac:
    lwc1	$f1,30760($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-12($a5)
    # Line 1382
    lwc1	$f2,30812($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da754d0
    # Line 1388
    mul.s	$f0,$f4,$f7
    # Line 1384
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da752fc
    # Line 1386
    lw	$a4,4($a7)
    # Line 1385
    move	$a1,$a6
.L0da752f8:
    # Line 1386
    lw	$a4,4($a7)
.L0da752fc:
    lwc1	$f2,30764($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f1,0($a1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,-8($a5)
    # Line 1388
    lwc1	$f3,30816($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    bltz	$a1,.L0da754d8
    # Line 1390
    slt	$a4,$a6,$a1
    beqzl	$a4,.L0da75348
    # Line 1392
    lw	$at,4($a7)
    # Line 1391
    move	$a1,$a6
.L0da75344:
    # Line 1392
    lw	$at,4($a7)
.L0da75348:
    lwc1	$f0,30796($a0)
    sll	$v0,$a1,0x2
    addu	$at,$at,$v0
    lwc1	$f3,0($at)
    mul.s	$f3,$f3,$f0
    # Line 1393
    b	.L0da74e98
    # Line 1392
    swc1	$f3,-4($a5)
.L0da75364:
    # Line 1395
    mtc1	$a6,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f3,$f4,$f5
    lwc1	$f2,30804($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da754e0
    # Line 1401
    mul.s	$f2,$f4,$f6
    # Line 1397
    slt	$v1,$a6,$a1
    beqzl	$v1,.L0da753ac
    # Line 1399
    lwc1	$f0,30756($a0)
    # Line 1398
    move	$a1,$a6
.L0da753a8:
    # Line 1399
    lwc1	$f0,30756($a0)
.L0da753ac:
    lw	$a4,4($a7)
    sll	$at,$a1,0x2
    subu	$a1,$at,$a1
    sll	$a1,$a1,0x2
    addu	$a1,$a4,$a1
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,-16($a5)
    # Line 1401
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    bltz	$a1,.L0da754e8
    # Line 1407
    mul.s	$f3,$f4,$f8
    # Line 1403
    slt	$v0,$a6,$a1
    beqzl	$v0,.L0da75404
    # Line 1405
    lwc1	$f1,30760($a0)
    # Line 1404
    move	$a1,$a6
.L0da75400:
    # Line 1405
    lwc1	$f1,30760($a0)
.L0da75404:
    lw	$v1,4($a7)
    sll	$a4,$a1,0x2
    subu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,-12($a5)
    # Line 1407
    lwc1	$f2,30812($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    bltz	$a1,.L0da754f0
    # Line 1409
    slt	$at,$a6,$a1
    beqzl	$at,.L0da75458
    # Line 1411
    lwc1	$f3,30764($a0)
    # Line 1410
    move	$a1,$a6
.L0da75454:
    # Line 1411
    lwc1	$f3,30764($a0)
.L0da75458:
    lw	$v0,4($a7)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f2,8($v0)
    mul.s	$f2,$f2,$f3
    # Line 1413
    swc1	$f7,-4($a5)
    # Line 1414
    b	.L0da74e98
    # Line 1411
    swc1	$f2,-8($a5)
.L0da75480:
    # Line 1326
    b	.L0da74ddc
    move	$a1,$zero
.L0da75488:
    # Line 1332
    b	.L0da74e2c
    move	$a1,$zero
.L0da75490:
    # Line 1338
    b	.L0da74e78
    move	$a1,$zero
.L0da75498:
    # Line 1319
    b	.L0da75094
    move	$a1,$zero
.L0da754a0:
    # Line 1347
    b	.L0da750f8
    move	$a1,$zero
.L0da754a8:
    # Line 1353
    b	.L0da7514c
    move	$a1,$zero
.L0da754b0:
    # Line 1359
    b	.L0da751a0
    move	$a1,$zero
.L0da754b8:
    # Line 1365
    b	.L0da751f0
    move	$a1,$zero
.L0da754c0:
    # Line 1372
    b	.L0da75258
    move	$a1,$zero
.L0da754c8:
    # Line 1378
    b	.L0da752a8
    move	$a1,$zero
.L0da754d0:
    # Line 1384
    b	.L0da752f8
    move	$a1,$zero
.L0da754d8:
    # Line 1390
    b	.L0da75344
    move	$a1,$zero
.L0da754e0:
    # Line 1397
    b	.L0da753a8
    move	$a1,$zero
.L0da754e8:
    # Line 1403
    b	.L0da75400
    move	$a1,$zero
.L0da754f0:
    # Line 1409
    b	.L0da75454
    move	$a1,$zero
.L0da754f8:
    # Line 1418
    b	.L0da74f2c
    move	$a1,$zero
.L0da75500:
    # Line 1424
    b	.L0da74f80
    move	$a1,$zero
.L0da75508:
    # Line 1430
    b	.L0da74fd4
    move	$a1,$zero
.L0da75510:
    # Line 1436
    b	.L0da75024
    move	$a1,$zero
.L0da75518:
    # Line 1445
    jr	$ra
    addiu	$sp,$sp,48
.L0da75520:
    # Line 1255
    andi	$a4,$a6,0x2
    # Line 1265
    li	$v0,-5
    # Line 1255
    beqz	$a4,.L0da75560
    # Line 1259
    li	$at,-3
    and	$at,$a6,$at
    # Line 1258
    li	$a5,0x80d1
    # Line 1259
    b	.L0da74d48
    sw	$at,30652($a0)
.L0da75540:
    # Line 1271
    addiu	$a7,$a0,4892
    # Line 1273
    b	.L0da74d68
    # Line 1272
    lw	$t2,180($a1)
.L0da7554c:
    # Line 1277
    b	.L0da74d68
    # Line 1276
    lw	$t2,184($a1)
.L0da75554:
    # Line 1279
    addiu	$a7,$a0,5212
    b	.L0da74d68
    # Line 1280
    lw	$t2,184($a1)
.L0da75560:
    # Line 1265
    and	$v0,$a6,$v0
    # Line 1264
    li	$a5,0x80d2
    b	.L0da74d48
    # Line 1265
    sw	$v0,30652($a0)
.end __glSpanApplyRGBAColorTable

.rdata
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000

