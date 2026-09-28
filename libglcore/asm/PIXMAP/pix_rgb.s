# Source: ../PIXMAP/pix_rgb.c
# Category: PIXMAP
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_rgb.c
# Total Functions: 14

.text

# Function: Store_8
# Declared: Line 29 (Source lines: 30-60)
# Address: 0x0db0f47c - 0x0db0f608 (Size: 396 bytes, Frame: 208)
.ent Store_8
Store_8:
    # Line 32
    lw	$a6,0($a0)
    # Line 30
    move	$a2,$a1
    # Line 40
    lw	$a7,4($a1)
    lw	$a3,3376($a6)
    lw	$a1,28($a0)
    subu	$a3,$a7,$a3
    mult	$a1,$a3
    # Line 30
    addiu	$sp,$sp,-80
    # sd	gp,48(sp)
    sd	$s3,40($sp)
    move	$s3,$a0
    lui	$a0,0xf
    addiu	$a0,$a0,-31764
    # addu	gp,t9,a0
    # Line 43
    lwc1	$f1,_lit_3d000000
    # Line 40
    lw	$a5,0($a2)
    lw	$v0,16($s3)
    # Line 38
    lw	$a4,1696($a6)
    # Line 40
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$v1,3372($a6)
    andi	$at,$a4,0x8
    addu	$v0,$v0,$a5
    subu	$v0,$v0,$v1
    beqz	$at,.L0db0f5fc
    sd	$v0,32($sp)
    # Line 43
    andi	$at,$a5,0x3
    la	$v0,__glDitherTable
    andi	$v1,$a7,0x3
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$v0
    lb	$at,0($at)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    sdc1	$f0,16($sp)
.L0db0f51c:
    # Line 48
    andi	$a3,$a4,0x2
    bnez	$a3,.L0db0f538
    # Line 51
    addiu	$a3,$sp,0
    # Line 48
    lw	$at,1700($a6)
    andi	$at,$at,0x800
    beqz	$at,.L0db0f5f0
    # Line 51
    addiu	$a3,$sp,0
.L0db0f538:
    move	$a1,$s3
    move	$a0,$a6
    lw	$t9,12548($a6)
    sd	$ra,56($sp)
    # Line 50
    addiu	$v0,$sp,0
    # Line 51
    jalr	$t9
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0db0f558:
    ld	$a3,24($sp)
    # Line 59
    lwc1	$f1,8($a3)
    ldc1	$f3,16($sp)
    add.s	$f1,$f1,$f3
    lwc1	$f4,0($a3)
    add.s	$f4,$f4,$f3
    lwc1	$f2,4($a3)
    # ld	gp,48(sp)
    lw	$v0,112($s3)
    add.s	$f2,$f2,$f3
    ld	$a0,32($sp)
    lw	$a1,156($s3)
    trunc.l.s	$f4,$f4
    lbu	$v1,0($a0)
    lw	$at,116($s3)
    trunc.l.s	$f2,$f2
    and	$v1,$v1,$a1
    dmfc1	$a3,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f2
    sll	$a3,$a3,0x0
    sllv	$a3,$a3,$v0
    sll	$a1,$a1,0x0
    sllv	$a1,$a1,$at
    or	$a3,$a3,$a1
    lw	$a1,152($s3)
    lw	$v0,120($s3)
    dmfc1	$at,$f1
    # Line 60
    ld	$s3,40($sp)
    addiu	$sp,$sp,80
    # Line 59
    sll	$at,$at,0x0
    sllv	$at,$at,$v0
    or	$a3,$a3,$at
    andi	$a3,$a3,0xff
    and	$a1,$a1,$a3
    or	$v1,$v1,$a1
    # Line 60
    jr	$ra
    # Line 59
    sb	$v1,0($a0)
.L0db0f5f0:
    # Line 53
    addiu	$at,$a2,12
    b	.L0db0f558
    sd	$at,24($sp)
.L0db0f5fc:
    # Line 46
    lwc1	$f0,3280($a6)
    b	.L0db0f51c
    sdc1	$f0,16($sp)
.end Store_8

# Function: Store_16
# Declared: Line 63 (Source lines: 64-94)
# Address: 0x0db0f608 - 0x0db0f7a0 (Size: 408 bytes, Frame: 208)
.ent Store_16
Store_16:
    # Line 66
    lw	$a6,0($a0)
    # Line 64
    move	$a2,$a1
    # Line 74
    lw	$a5,4($a1)
    lw	$a3,3376($a6)
    lw	$a1,28($a0)
    subu	$a3,$a5,$a3
    mult	$a1,$a3
    # Line 64
    addiu	$sp,$sp,-80
    # sd	gp,48(sp)
    sd	$s3,40($sp)
    move	$s3,$a0
    lui	$a0,0xf
    addiu	$a0,$a0,-32160
    # addu	gp,t9,a0
    # Line 74
    lw	$a7,0($a2)
    # Line 77
    lwc1	$f1,_lit_3d000000
    # Line 72
    lw	$a4,1696($a6)
    # Line 74
    addu	$a0,$a7,$a7
    lw	$v0,16($s3)
    mflo	$v1
    addu	$v1,$v1,$v1
    addu	$v0,$v0,$v1
    lw	$v1,3372($a6)
    andi	$at,$a4,0x8
    addu	$v0,$v0,$a0
    addu	$v1,$v1,$v1
    subu	$v0,$v0,$v1
    beqz	$at,.L0db0f794
    sd	$v0,32($sp)
    # Line 77
    andi	$at,$a7,0x3
    la	$v0,__glDitherTable
    andi	$v1,$a5,0x3
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$v0
    lb	$at,0($at)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    sdc1	$f0,16($sp)
.L0db0f6b4:
    # Line 82
    andi	$a3,$a4,0x2
    bnez	$a3,.L0db0f6d0
    # Line 85
    addiu	$a3,$sp,0
    # Line 82
    lw	$at,1700($a6)
    andi	$at,$at,0x800
    beqz	$at,.L0db0f788
    # Line 85
    addiu	$a3,$sp,0
.L0db0f6d0:
    move	$a1,$s3
    move	$a0,$a6
    lw	$t9,12548($a6)
    sd	$ra,56($sp)
    # Line 84
    addiu	$v0,$sp,0
    # Line 85
    jalr	$t9
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0db0f6f0:
    ld	$a3,24($sp)
    # Line 93
    lwc1	$f1,8($a3)
    ldc1	$f3,16($sp)
    add.s	$f1,$f1,$f3
    lwc1	$f4,0($a3)
    add.s	$f4,$f4,$f3
    lwc1	$f2,4($a3)
    # ld	gp,48(sp)
    lw	$v0,112($s3)
    add.s	$f2,$f2,$f3
    ld	$a0,32($sp)
    lw	$a1,156($s3)
    trunc.l.s	$f4,$f4
    lhu	$v1,0($a0)
    lw	$at,116($s3)
    trunc.l.s	$f2,$f2
    and	$v1,$v1,$a1
    dmfc1	$a3,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f2
    sll	$a3,$a3,0x0
    sllv	$a3,$a3,$v0
    sll	$a1,$a1,0x0
    sllv	$a1,$a1,$at
    or	$a3,$a3,$a1
    lw	$a1,152($s3)
    lw	$v0,120($s3)
    dmfc1	$at,$f1
    # Line 94
    ld	$s3,40($sp)
    addiu	$sp,$sp,80
    # Line 93
    sll	$at,$at,0x0
    sllv	$at,$at,$v0
    or	$a3,$a3,$at
    andi	$a3,$a3,0xffff
    and	$a1,$a1,$a3
    or	$v1,$v1,$a1
    # Line 94
    jr	$ra
    # Line 93
    sh	$v1,0($a0)
.L0db0f788:
    # Line 87
    addiu	$at,$a2,12
    b	.L0db0f6f0
    sd	$at,24($sp)
.L0db0f794:
    # Line 80
    lwc1	$f0,3280($a6)
    b	.L0db0f6b4
    sdc1	$f0,16($sp)
.end Store_16

# Function: Store_32A
# Declared: Line 97 (Source lines: 98-125)
# Address: 0x0db0f7a0 - 0x0db0f908 (Size: 360 bytes, Frame: 208)
.ent Store_32A
Store_32A:
    # Line 98
    move	$a2,$a1
    addiu	$sp,$sp,-80
    sd	$s2,32($sp)
    sd	$s0,40($sp)
    # Line 100
    lw	$s0,0($a0)
    # Line 98
    move	$s2,$a0
    # Line 111
    lw	$a0,4($a1)
    lw	$a1,3376($s0)
    lw	$v1,28($s2)
    subu	$a0,$a0,$a1
    mult	$v1,$a0
    # Line 112
    lw	$at,1696($s0)
    andi	$at,$at,0x2
    # sd	gp,48(sp)
    # Line 98
    lui	$v0,0xf
    addiu	$v0,$v0,-32568
    # addu	gp,t9,v0
    # Line 111
    lw	$v0,16($s2)
    lw	$a0,0($a2)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v1,3372($s0)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v1,$v1,0x2
    subu	$v0,$v0,$v1
    # Line 112
    bnez	$at,.L0db0f820
    sd	$v0,24($sp)
    lw	$a3,1700($s0)
    andi	$a3,$a3,0x800
    beqz	$a3,.L0db0f8fc
.L0db0f820:
    # Line 115
    addiu	$a3,$sp,0
    move	$a1,$s2
    move	$a0,$s0
    lw	$t9,12548($s0)
    sd	$ra,56($sp)
    # Line 114
    addiu	$a4,$sp,0
    # Line 115
    jalr	$t9
    sd	$a4,16($sp)
    ld	$ra,56($sp)
.L0db0f844:
    # Line 124
    ld	$a1,16($sp)
    lwc1	$f0,12($a1)
    lwc1	$f2,3280($s0)
    lwc1	$f1,8($a1)
    add.s	$f0,$f0,$f2
    add.s	$f1,$f1,$f2
    trunc.l.s	$f0,$f0
    lwc1	$f3,4($a1)
    # ld	gp,48(sp)
    lwc1	$f4,0($a1)
    add.s	$f3,$f3,$f2
    lw	$a2,120($s2)
    lw	$v1,112($s2)
    add.s	$f4,$f4,$f2
    ld	$at,24($sp)
    lw	$v0,156($s2)
    trunc.l.s	$f3,$f3
    lw	$s0,0($at)
    lw	$a1,116($s2)
    trunc.l.s	$f4,$f4
    and	$s0,$s0,$v0
    dmfc1	$a0,$f3
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f4
    sll	$a0,$a0,0x0
    sllv	$a0,$a0,$a1
    lw	$a1,124($s2)
    lw	$s2,152($s2)
    sll	$v0,$v0,0x0
    sllv	$v0,$v0,$v1
    dmfc1	$v1,$f1
    or	$v0,$v0,$a0
    dmfc1	$a0,$f0
    sll	$v1,$v1,0x0
    sllv	$v1,$v1,$a2
    sll	$a0,$a0,0x0
    sllv	$a0,$a0,$a1
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$s2,$s2,$v0
    or	$s0,$s0,$s2
    # Line 125
    ld	$s2,32($sp)
    # Line 124
    sw	$s0,0($at)
    # Line 125
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0f8fc:
    # Line 117
    addiu	$v1,$a2,12
    b	.L0db0f844
    sd	$v1,16($sp)
.end Store_32A

# Function: Store_32
# Declared: Line 128 (Source lines: 129-155)
# Address: 0x0db0f908 - 0x0db0fa50 (Size: 328 bytes, Frame: 208)
.ent Store_32
Store_32:
    # Line 129
    move	$a2,$a1
    addiu	$sp,$sp,-80
    sd	$s2,32($sp)
    sd	$s0,40($sp)
    # Line 131
    lw	$s0,0($a0)
    # Line 129
    move	$s2,$a0
    # Line 142
    lw	$a0,4($a1)
    lw	$a1,3376($s0)
    lw	$v1,28($s2)
    subu	$a0,$a0,$a1
    mult	$v1,$a0
    # Line 143
    lw	$at,1696($s0)
    andi	$at,$at,0x2
    # sd	gp,48(sp)
    # Line 129
    lui	$v0,0xe
    addiu	$v0,$v0,32608
    # addu	gp,t9,v0
    # Line 142
    lw	$v0,16($s2)
    lw	$a0,0($a2)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v1,3372($s0)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v1,$v1,0x2
    subu	$v0,$v0,$v1
    # Line 143
    bnez	$at,.L0db0f988
    sd	$v0,24($sp)
    lw	$a3,1700($s0)
    andi	$a3,$a3,0x800
    beqz	$a3,.L0db0fa44
.L0db0f988:
    # Line 146
    addiu	$a3,$sp,0
    move	$a1,$s2
    move	$a0,$s0
    lw	$t9,12548($s0)
    sd	$ra,56($sp)
    # Line 145
    addiu	$a4,$sp,0
    # Line 146
    jalr	$t9
    sd	$a4,16($sp)
    ld	$ra,56($sp)
.L0db0f9ac:
    # Line 154
    ld	$a0,16($sp)
    lwc1	$f2,3280($s0)
    lwc1	$f3,0($a0)
    lwc1	$f1,4($a0)
    add.s	$f3,$f3,$f2
    # ld	gp,48(sp)
    add.s	$f1,$f1,$f2
    ld	$at,24($sp)
    lw	$v1,156($s2)
    trunc.l.s	$f3,$f3
    lw	$s0,0($at)
    lwc1	$f0,8($a0)
    trunc.l.s	$f1,$f1
    lw	$a1,116($s2)
    and	$s0,$s0,$v1
    add.s	$f0,$f0,$f2
    lw	$v1,112($s2)
    dmfc1	$a0,$f1
    dmfc1	$v0,$f3
    trunc.l.s	$f0,$f0
    sll	$a0,$a0,0x0
    sll	$v0,$v0,0x0
    sllv	$v0,$v0,$v1
    dmfc1	$v1,$f0
    sllv	$a0,$a0,$a1
    or	$v0,$v0,$a0
    lw	$a0,120($s2)
    lw	$s2,152($s2)
    sll	$v1,$v1,0x0
    sllv	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$s2,$s2,$v0
    or	$s0,$s0,$s2
    # Line 155
    ld	$s2,32($sp)
    # Line 154
    sw	$s0,0($at)
    # Line 155
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0fa44:
    # Line 148
    addiu	$a3,$a2,12
    b	.L0db0f9ac
    sd	$a3,16($sp)
.end Store_32

# Function: Fetch_8
# Declared: Line 157 (Source lines: 161-170)
# Address: 0x0db0fa50 - 0x0db0fb04 (Size: 180 bytes, Frame: 0)
.ent Fetch_8
Fetch_8:
    # Line 161
    lw	$at,0($a0)
    # Line 165
    lw	$v0,3376($at)
    lw	$a5,28($a0)
    subu	$v0,$a2,$v0
    mult	$a5,$v0
    lw	$v1,16($a0)
    lw	$a2,3372($at)
    mflo	$a4
    addu	$v1,$v1,$a4
    addu	$v1,$v1,$a1
    # Line 166
    lw	$a1,3156($at)
    # Line 165
    subu	$v1,$v1,$a2
    lbu	$v1,0($v1)
    # Line 166
    lw	$a2,112($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 167
    lw	$v0,3160($at)
    lw	$a1,116($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 168
    lw	$at,3164($at)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 169
    lwc1	$f0,128($a0)
    # Line 170
    jr	$ra
    # Line 169
    swc1	$f0,12($a3)
.end Fetch_8

# Function: Fetch_16
# Declared: Line 172 (Source lines: 176-185)
# Address: 0x0db0fb04 - 0x0db0fbc4 (Size: 192 bytes, Frame: 0)
.ent Fetch_16
Fetch_16:
    # Line 176
    lw	$at,0($a0)
    # Line 180
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a2
    addu	$a2,$a2,$a2
    addu	$v1,$v1,$a2
    lw	$a2,3372($at)
    addu	$a1,$a1,$a1
    addu	$v1,$v1,$a1
    addu	$a1,$a2,$a2
    subu	$v1,$v1,$a1
    # Line 181
    lw	$a1,3156($at)
    # Line 180
    lhu	$v1,0($v1)
    # Line 181
    lw	$a2,112($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 182
    lw	$v0,3160($at)
    lw	$a1,116($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 183
    lw	$at,3164($at)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 184
    lwc1	$f0,128($a0)
    # Line 185
    jr	$ra
    # Line 184
    swc1	$f0,12($a3)
.end Fetch_16

# Function: Fetch_32A
# Declared: Line 188 (Source lines: 192-201)
# Address: 0x0db0fbc4 - 0x0db0fca4 (Size: 224 bytes, Frame: 0)
.ent Fetch_32A
Fetch_32A:
    # Line 192
    lw	$at,0($a0)
    # Line 196
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lw	$a2,3372($at)
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    # Line 197
    lw	$a2,3156($at)
    # Line 196
    subu	$v1,$v1,$a1
    lw	$v1,0($v1)
    # Line 197
    lw	$a4,112($a0)
    and	$a2,$a2,$v1
    srlv	$a2,$a2,$a4
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 198
    lw	$a1,3160($at)
    lw	$a2,116($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 199
    lw	$v0,3164($at)
    lw	$a1,120($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 200
    lw	$at,3168($at)
    lw	$v0,124($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 201
    jr	$ra
    # Line 200
    swc1	$f0,12($a3)
.end Fetch_32A

# Function: Fetch_32
# Declared: Line 204 (Source lines: 208-217)
# Address: 0x0db0fca4 - 0x0db0fd64 (Size: 192 bytes, Frame: 0)
.ent Fetch_32
Fetch_32:
    # Line 208
    lw	$at,0($a0)
    # Line 212
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lw	$a2,3372($at)
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    subu	$v1,$v1,$a1
    # Line 213
    lw	$a1,3156($at)
    # Line 212
    lw	$v1,0($v1)
    # Line 213
    lw	$a2,112($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 214
    lw	$v0,3160($at)
    lw	$a1,116($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 215
    lw	$at,3164($at)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 216
    lwc1	$f0,128($a0)
    # Line 217
    jr	$ra
    # Line 216
    swc1	$f0,12($a3)
.end Fetch_32

# Function: Clear
# Declared: Line 219 (Source lines: 220-250)
# Address: 0x0db0fd64 - 0x0db0fe98 (Size: 308 bytes, Frame: 176)
.ent Clear
Clear:
    # Line 220
    addiu	$sp,$sp,-176
    sd	$s5,88($sp)
    sd	$s6,112($sp)
    # Line 221
    lw	$v1,0($a0)
    sd	$s1,96($sp)
    # Line 233
    li	$a1,-3
    # Line 230
    lw	$s1,29716($v1)
    # Line 229
    lw	$s6,29712($v1)
    # Line 235
    lwc1	$f2,30756($v1)
    lwc1	$f1,1760($v1)
    sd	$s3,120($sp)
    # Line 220
    move	$s3,$a0
    # Line 235
    mul.s	$f1,$f1,$f2
    # Line 225
    lw	$a0,1696($v1)
    # Line 228
    lw	$s5,29708($v1)
    # Line 227
    lw	$a2,29704($v1)
    sd	$a0,72($sp)
    # Line 233
    and	$a0,$a0,$a1
    sw	$a0,1696($v1)
    # Line 235
    swc1	$f1,12($sp)
    # Line 236
    lwc1	$f0,30760($v1)
    lwc1	$f4,1764($v1)
    mul.s	$f4,$f4,$f0
    swc1	$f4,16($sp)
    # Line 237
    lwc1	$f3,30764($v1)
    lwc1	$f2,1768($v1)
    mul.s	$f2,$f2,$f3
    sd	$s7,128($sp)
    swc1	$f2,20($sp)
    sd	$s4,104($sp)
    # Line 238
    lwc1	$f1,30796($v1)
    lwc1	$f0,1772($v1)
    # sd	gp,64(sp)
    # Line 220
    lui	$v0,0xe
    # Line 238
    mul.s	$f0,$f0,$f1
    # Line 220
    addiu	$v0,$v0,31492
    # addu	gp,t9,v0
    sd	$v1,80($sp)
    # Line 240
    move	$s4,$a2
    slt	$at,$a2,$s6
    beqz	$at,.L0db0fe6c
    # Line 238
    swc1	$f0,24($sp)
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 240
    subu	$s7,$s1,$s5
    sd	$s7,56($sp)
    b	.L0db0fe30
    slt	$s7,$s5,$s1
.L0db0fe24:
    addiu	$s4,$s4,1
    beql	$s6,$s4,.L0db0fe64
    ld	$s7,128($sp)
.L0db0fe30:
    # Line 241
    sw	$s4,0($sp)
    # Line 242
    beqz	$s7,.L0db0fe24
    move	$s0,$s5
    # Line 243
    sw	$s0,4($sp)
.L0db0fe40:
    # Line 245
    lw	$t9,164($s3)
    addiu	$a1,$sp,0
    # Line 242
    addiu	$s0,$s0,1
    # Line 245
    jalr	$t9
    move	$a0,$s3
    # Line 242
    bnel	$s1,$s0,.L0db0fe40
    # Line 243
    sw	$s0,4($sp)
    b	.L0db0fe24
    nop
.L0db0fe64:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
.L0db0fe6c:
    # ld	gp,64(sp)
    # Line 250
    ld	$s1,96($sp)
    ld	$s3,120($sp)
    ld	$s4,104($sp)
    ld	$s5,88($sp)
    ld	$s6,112($sp)
    ld	$at,72($sp)
    # Line 249
    ld	$v0,80($sp)
    # Line 250
    addiu	$sp,$sp,176
    jr	$ra
    # Line 249
    sw	$at,1696($v0)
.end Clear

# Function: StoreSpan
# Declared: Line 252 (Source lines: 253-276)
# Address: 0x0db0fe98 - 0x0db0ff4c (Size: 180 bytes, Frame: 128)
.ent StoreSpan
StoreSpan:
    # Line 253
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    sd	$s1,72($sp)
    sd	$s4,88($sp)
    # sd	gp,56(sp)
    lui	$at,0xe
    addiu	$at,$at,31184
    # Line 263
    lw	$v0,30204($a0)
    sd	$s5,64($sp)
    # Line 261
    lw	$s5,30252($a0)
    # Line 263
    sw	$v0,4($sp)
    sd	$s0,80($sp)
    # Line 264
    lw	$s0,30200($a0)
    # Line 253
    # addu	gp,t9,at
    # Line 267
    lw	$s4,30484($a0)
    # Line 265
    addu	$s5,$s0,$s5
    # Line 269
    slt	$at,$s0,$s5
    beqz	$at,.L0db0ff2c
    # Line 266
    lw	$s1,30468($a0)
    # Line 270
    sw	$s0,0($sp)
.L0db0fee8:
    # Line 271
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s1)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s1)
    swc1	$f0,24($sp)
    # Line 273
    addiu	$a1,$sp,0
    lw	$t9,164($s4)
    move	$a0,$s4
    # Line 269
    addiu	$s0,$s0,1
    # Line 273
    jalr	$t9
    # Line 271
    addiu	$s1,$s1,16
    # Line 269
    bnel	$s5,$s0,.L0db0fee8
    # Line 270
    sw	$s0,0($sp)
    ld	$ra,96($sp)
.L0db0ff2c:
    # Line 276
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s4,88($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 279 (Source lines: 280-323)
# Address: 0x0db0ff4c - 0x0db10090 (Size: 324 bytes, Frame: 176)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 280
    addiu	$sp,$sp,-176
    sd	$s5,120($sp)
    sd	$s1,72($sp)
    sd	$s2,96($sp)
    sd	$s6,88($sp)
    # sd	gp,80(sp)
    lui	$at,0xe
    addiu	$at,$at,31004
    sd	$s8,56($sp)
    # Line 290
    lw	$s8,30476($a0)
    # Line 292
    lw	$v0,30204($a0)
    sd	$s7,64($sp)
    # Line 289
    lw	$s7,30252($a0)
    # Line 292
    sw	$v0,4($sp)
    # Line 280
    # addu	gp,t9,at
    # Line 295
    lw	$s6,30484($a0)
    # Line 294
    lw	$s2,30468($a0)
    # Line 295
    beqz	$s7,.L0db1006c
    # Line 293
    lw	$s1,30200($a0)
    sd	$s3,152($sp)
    sd	$ra,144($sp)
    sd	$s4,136($sp)
    sd	$s0,128($sp)
    b	.L0db0ffc4
    # Line 295
    li	$s5,-1
.L0db0ffb0:
    # Line 306
    ld	$at,112($sp)
    ld	$s1,104($sp)
    addu	$s1,$s1,$at
    addiu	$s1,$s1,1
.L0db0ffc0:
    beqz	$s7,.L0db10058
.L0db0ffc4:
    # Line 298
    slti	$v0,$s7,33
    bnez	$v0,.L0db0ffd4
    move	$s3,$s7
    # Line 300
    li	$s3,32
.L0db0ffd4:
    lui	$s0,0x8000
    # Line 304
    lw	$s4,0($s8)
    # Line 306
    move	$v1,$s1
    # Line 302
    subu	$s7,$s7,$s3
    # Line 306
    addiu	$s3,$s3,-1
    bltz	$s3,.L0db0ffc0
    # Line 304
    addiu	$s8,$s8,4
    # Line 306
    move	$a1,$s3
    sd	$s3,104($sp)
    b	.L0db1000c
    sd	$s1,112($sp)
.L0db10000:
    # Line 314
    addiu	$s2,$s2,16
.L0db10004:
    # Line 306
    beq	$s3,$s5,.L0db0ffb0
    # Line 313
    addiu	$s1,$s1,1
.L0db1000c:
    # Line 306
    addiu	$s3,$s3,-1
    and	$at,$s4,$s0
    beqz	$at,.L0db10000
    # Line 316
    srl	$s0,$s0,0x1
    # Line 308
    sw	$s1,0($sp)
    # Line 309
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s2)
    swc1	$f0,24($sp)
    # Line 311
    lw	$t9,164($s6)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s6
    b	.L0db10004
    # Line 314
    addiu	$s2,$s2,16
.L0db10058:
    ld	$s5,120($sp)
    ld	$s0,128($sp)
    ld	$s4,136($sp)
    ld	$ra,144($sp)
    ld	$s3,152($sp)
.L0db1006c:
    # Line 323
    move	$v0,$zero
    # ld	gp,80(sp)
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s6,88($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end StoreStippledSpan

# Function: Pick
# Declared: Line 326 (Source lines: 327-368)
# Address: 0x0db10090 - 0x0db10184 (Size: 244 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 332
    move	$a4,$zero
    # Line 330
    lw	$a7,3160($a0)
    lw	$t0,3156($a0)
    lw	$a6,3168($a0)
    lw	$t1,3164($a0)
    # Line 327
    lui	$v0,0xe
    addiu	$v0,$v0,30680
    # addu	at,t9,v0
    # Line 332
    lbu	$v0,1784($a0)
    # Line 330
    or	$t9,$t1,$a6
    or	$a5,$t0,$a7
    # Line 332
    beqz	$v0,.L0db100c8
    # Line 330
    or	$a5,$a5,$t9
    # Line 334
    move	$a4,$t0
.L0db100c8:
    lbu	$v1,1785($a0)
    beqzl	$v1,.L0db100dc
    # Line 337
    lbu	$a2,1786($a0)
    or	$a4,$a7,$a4
    lbu	$a2,1786($a0)
.L0db100dc:
    beqzl	$a2,.L0db100ec
    # Line 340
    lbu	$a3,1787($a0)
    or	$a4,$t1,$a4
    lbu	$a3,1787($a0)
.L0db100ec:
    beqz	$a3,.L0db100f8
    # Line 353
    li	$a2,1
    # Line 343
    or	$a4,$a6,$a4
.L0db100f8:
    # Line 345
    sw	$a4,152($a1)
    # Line 346
    nor	$v1,$a4,$zero
    and	$v1,$v1,$a5
    sw	$v1,156($a1)
    lw	$v0,1788($a0)
    beqzl	$v0,.L0db1014c
    # Line 350
    sw	$a5,156($a1)
.L0db10114:
    # Line 353
    lw	$a4,24($a1)
    li	$v0,4
    beq	$a4,$a2,.L0db10154
    li	$a3,2
    beq	$a4,$a3,.L0db10164
    # Line 362
    la	$a2,sub_0db10000
    # Line 353
    beql	$a4,$v0,.L0db1013c
    # Line 361
    lw	$v1,3168($a0)
    # Line 368
    jr	$ra
    nop
.L0db1013c:
    # Line 361
    beqz	$v1,.L0db10174
    # Line 362
    addiu	$a2,$a2,-2144
    # Line 368
    jr	$ra
    # Line 362
    sw	$a2,164($a1)
.L0db1014c:
    b	.L0db10114
    # Line 349
    sw	$zero,152($a1)
.L0db10154:
    # Line 355
    la	$a3,sub_0db10000
    addiu	$a3,$a3,-2948
    # Line 368
    jr	$ra
    # Line 355
    sw	$a3,164($a1)
.L0db10164:
    # Line 358
    la	$v0,sub_0db10000
    addiu	$v0,$v0,-2552
    # Line 368
    jr	$ra
    # Line 358
    sw	$v0,164($a1)
.L0db10174:
    # Line 364
    la	$v1,sub_0db10000
    addiu	$v1,$v1,-1784
    # Line 368
    jr	$ra
    # Line 364
    sw	$v1,164($a1)
.end Pick

# Function: Resize
# Declared: Line 370 (Source lines: 371-384)
# Address: 0x0db10184 - 0x0db10228 (Size: 164 bytes, Frame: 208)
.ent Resize
Resize:
    # Line 374
    lw	$v0,24($a0)
    multu	$a1,$v0
    # Line 371
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    # Line 374
    li	$a1,-4
    mflo	$a0
    addiu	$a0,$a0,3
    and	$a0,$a0,$a1
    divu	$zero,$a0,$v0
    sd	$s0,24($sp)
    # Line 371
    move	$s0,$a2
    sd	$s2,32($sp)
    # sd	gp,8(sp)
    lui	$v1,0xe
    addiu	$v1,$v1,30436
    # Line 374
    lw	$at,16($s1)
    # Line 371
    # addu	gp,t9,v1
    # Line 374
    mflo	$s2
    beqz	$at,.L0db10208
    teq	$v0,$zero,0x7
.L0db101e0:
    # ld	gp,8(sp)
    # Line 382
    sw	$s0,8($s1)
    # Line 384
    ld	$s0,24($sp)
    # Line 383
    sw	$s2,28($s1)
    # Line 381
    sw	$s8,4($s1)
    # Line 384
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db10208:
    # Line 378
    move	$a0,$s1
    # lw $t9, -29256($gp) # &__glResizeBuffer
    move	$a1,$s2
    sd	$ra,40($sp)
    jal	__glResizeBuffer
    move	$a2,$s0
    b	.L0db101e0
    ld	$ra,40($sp)
.end Resize

# Function: __glPixInitRGB
# Declared: Line 387 (Source lines: 388-460)
# Address: 0x0db10228 - 0x0db104b8 (Size: 656 bytes, Frame: 48)
.globl __glPixInitRGB
.ent __glPixInitRGB
__glPixInitRGB:
    # Line 388
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    move	$s5,$a1
    # sd	gp,24(sp)
    lui	$at,0xe
    addiu	$at,$at,30272
    # addu	gp,t9,at
    # Line 394
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s1,8($sp)
    sd	$ra,16($sp)
    jal	__glInitBuffer
    # Line 388
    move	$s1,$a0
    # Line 396
    la	$a0,__glFetchSpan
    # Line 398
    la	$ra,__glReadSpan
    # Line 399
    la	$a3,__glReturnSpan
    # Line 404
    sw	$a0,204($s1)
    # Line 403
    sw	$a0,200($s1)
    # Line 399
    sw	$a3,180($s1)
    # Line 398
    sw	$ra,176($s1)
    # Line 406
    la	$v0,sub_0db10000
    # Line 405
    la	$v1,sub_0db10000
    # Line 402
    la	$a1,sub_0db10000
    # Line 396
    la	$at,sub_0db10000
    # Line 401
    la	$a2,sub_0db10000
    # Line 402
    addiu	$a1,$a1,144
    # Line 396
    addiu	$at,$at,388
    # Line 401
    addiu	$a2,$a2,-668
    # Line 405
    addiu	$v1,$v1,-360
    # Line 406
    addiu	$v0,$v0,-180
    sw	$v0,188($s1)
    # Line 405
    sw	$v1,184($s1)
    # Line 401
    sw	$a2,216($s1)
    # Line 396
    sw	$at,56($s1)
    # Line 402
    sw	$a1,160($s1)
    # Line 409
    lw	$a1,3156($s5)
    # Line 411
    move	$a0,$zero
    ld	$ra,16($sp)
    beqz	$a1,.L0db102dc
    # Line 410
    move	$a3,$a1
.L0db102c4:
    # Line 411
    andi	$v0,$a1,0x1
    bnez	$v0,.L0db102dc
    nop
    srl	$a1,$a1,0x1
    bnez	$a1,.L0db102c4
    addiu	$a0,$a0,1
.L0db102dc:
    # Line 413
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 412
    sw	$a0,112($s1)
    # Line 413
    sw	$a1,72($s1)
    sw	$a1,100($s1)
    swc1	$f0,88($s1)
    # Line 415
    lw	$a1,3160($s5)
    # Line 417
    move	$a0,$zero
    beqz	$a1,.L0db10320
    # Line 416
    or	$a3,$a1,$a3
.L0db10308:
    # Line 417
    andi	$v1,$a1,0x1
    bnez	$v1,.L0db10320
    nop
    srl	$a1,$a1,0x1
    bnez	$a1,.L0db10308
    addiu	$a0,$a0,1
.L0db10320:
    # Line 419
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 418
    sw	$a0,116($s1)
    # Line 419
    sw	$a1,76($s1)
    sw	$a1,104($s1)
    swc1	$f1,92($s1)
    # Line 421
    lw	$a1,3164($s5)
    # Line 441
    li	$a4,1
    # Line 423
    move	$a0,$zero
    beqz	$a1,.L0db10368
    # Line 422
    or	$a3,$a1,$a3
.L0db10350:
    # Line 423
    andi	$a2,$a1,0x1
    bnez	$a2,.L0db10368
    nop
    srl	$a1,$a1,0x1
    bnez	$a1,.L0db10350
    addiu	$a0,$a0,1
.L0db10368:
    # Line 425
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 424
    sw	$a0,120($s1)
    # Line 425
    sw	$a1,80($s1)
    sw	$a1,108($s1)
    swc1	$f2,96($s1)
    # Line 427
    lw	$a1,3168($s5)
    # Line 441
    li	$a5,32
    # Line 429
    move	$a0,$zero
    beqz	$a1,.L0db103b0
    # Line 428
    or	$a3,$a1,$a3
.L0db10398:
    # Line 429
    andi	$at,$a1,0x1
    bnez	$at,.L0db103b0
    nop
    srl	$a1,$a1,0x1
    bnez	$a1,.L0db10398
    addiu	$a0,$a0,1
.L0db103b0:
    # Line 435
    lwc1	$f0,_lit_437f0000
    # Line 430
    beqz	$a1,.L0db10498
    sw	$a0,124($s1)
    # Line 432
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    sw	$a1,132($s1)
    swc1	$f3,128($s1)
.L0db103d0:
    # Line 441
    move	$a0,$zero
    # Line 440
    move	$a1,$zero
    b	.L0db103f8
    # Line 438
    sw	$a3,152($s1)
.L0db103e0:
    # Line 441
    and	$v0,$v0,$a3
    beqzl	$v0,.L0db103f4
    addiu	$a0,$a0,1
    # Line 442
    addiu	$a1,$a1,1
    # Line 441
    addiu	$a0,$a0,1
.L0db103f4:
    beq	$a0,$a5,.L0db10414
.L0db103f8:
    sllv	$v1,$a4,$a0
    addiu	$a0,$a0,1
    and	$v1,$v1,$a3
    beqz	$v1,.L0db103e0
    sllv	$v0,$a4,$a0
    b	.L0db103e0
    # Line 442
    addiu	$a1,$a1,1
.L0db10414:
    # Line 441
    slti	$a2,$a1,17
    bnez	$a2,.L0db1045c
    # Line 450
    slti	$a2,$a1,9
    # Line 446
    li	$v0,4
    sw	$v0,24($s1)
    lw	$at,3168($s5)
    # Line 448
    la	$s5,sub_0db10000
    # Line 446
    beqz	$at,.L0db104a8
    # Line 448
    addiu	$s5,$s5,-860
    ld	$s5,0($sp)
    la	$v1,sub_0db10000
    addiu	$v1,$v1,-1084
    sw	$v1,168($s1)
    sw	$v1,172($s1)
.L0db1044c:
    # ld	gp,24(sp)
    # Line 460
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db1045c:
    # Line 450
    bnez	$a2,.L0db10480
    ld	$s5,0($sp)
    # Line 453
    li	$v0,2
    la	$at,sub_0db10000
    sw	$v0,24($s1)
    addiu	$at,$at,-1276
    # Line 454
    sw	$at,168($s1)
    b	.L0db1044c
    sw	$at,172($s1)
.L0db10480:
    la	$v1,sub_0db10000
    # Line 456
    sw	$a4,24($s1)
    # Line 454
    addiu	$v1,$v1,-1456
    # Line 457
    sw	$v1,168($s1)
    b	.L0db1044c
    sw	$v1,172($s1)
.L0db10498:
    # Line 435
    swc1	$f0,128($s1)
    li	$a2,255
    b	.L0db103d0
    sw	$a2,132($s1)
.L0db104a8:
    # Line 450
    sw	$s5,168($s1)
    sw	$s5,172($s1)
    b	.L0db1044c
    ld	$s5,0($sp)
.end __glPixInitRGB

.late_rodata
jtbl_0dbebd18:
    .word .L0db105b8
    .word .L0db105c0
    .word .L0db105cc
    .word .L0db10594
    .word .L0db105dc
    .word .L0db105ec
    .word .L0db105f4
    .word .L0db10600
    .word .L0db1060c
    .word .L0db10618
    .word .L0db10628
    .word .L0db1058c
    .word .L0db10634
    .word .L0db10640
    .word .L0db10650
    .word .L0db10660
jtbl_0dbebd58:
    .word .L0db10774
    .word .L0db1077c
    .word .L0db10788
    .word .L0db10750
    .word .L0db10798
    .word .L0db107a8
    .word .L0db107b0
    .word .L0db107bc
    .word .L0db107c8
    .word .L0db107d4
    .word .L0db107e4
    .word .L0db10748
    .word .L0db107f0
    .word .L0db107fc
    .word .L0db1080c
    .word .L0db1081c
jtbl_0dbebd98:
    .word .L0db1092c
    .word .L0db10934
    .word .L0db1093c
    .word .L0db10908
    .word .L0db10944
    .word .L0db10950
    .word .L0db10958
    .word .L0db10960
    .word .L0db10968
    .word .L0db10970
    .word .L0db1097c
    .word .L0db10904
    .word .L0db10984
    .word .L0db1098c
    .word .L0db10998
    .word .L0db109a4

.rdata
_lit_3d000000:
    .word 0x3d000000
_lit_437f0000:
    .word 0x437f0000

