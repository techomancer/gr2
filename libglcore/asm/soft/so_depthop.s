# Source: ../soft/so_depthop.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_depthop.c
# Total Functions: 34

.text

# Function: FetchNon32
# Declared: Line 21 (Source lines: 22-53)
# Address: 0x0daa63d4 - 0x0daa6490 (Size: 188 bytes, Frame: 0)
.ent FetchNon32
FetchNon32:
    # Line 24
    lw	$a6,0($a0)
    # Line 29
    lw	$a4,3376($a6)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    # Line 26
    lw	$a5,100($a0)
    # Line 27
    lw	$a7,92($a0)
    # Line 29
    sll	$v1,$a1,0x2
    # Line 22
    lui	$a2,0x15
    # Line 29
    lw	$t0,16($a0)
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$t0,$t0,$v0
    lw	$v0,3372($a6)
    # Line 22
    addiu	$a2,$a2,5268
    # Line 29
    addu	$t0,$t0,$v1
    sll	$v0,$v0,0x2
    subu	$t0,$t0,$v0
    lw	$t0,0($t0)
    lw	$v0,80($a0)
    nor	$v1,$a7,$zero
    and	$v1,$v1,$t0
    beq	$v0,$v1,.L0daa6478
    # Line 22
    nop
    # Line 29
    lui	$v0,0xff00
    bne	$a5,$v0,.L0daa6450
    ldc1	$f1,_lit8_3ff0000000000000
    ldc1	$f0,1544($a6)
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0daa6488
.L0daa6450:
    # Line 40
    lui	$v1,0x100
    bne	$a5,$v1,.L0daa6478
    dmtc1	$zero,$f3
    ldc1	$f2,1544($a6)
    c.eq.d	$f2,$f3
    nop
    bc1f	.L0daa6478
    # Line 45
    move	$v0,$zero
    jr	$ra
    nop
.L0daa6478:
    # Line 53
    lw	$v1,88($a0)
    and	$v0,$t0,$a7
    jr	$ra
    sllv	$v0,$v0,$v1
.L0daa6488:
    # Line 40
    jr	$ra
    lw	$v0,76($a0)
.end FetchNon32

# Function: Fetch32
# Declared: Line 56 (Source lines: 61-61)
# Address: 0x0daa6490 - 0x0daa64d0 (Size: 64 bytes, Frame: 0)
.ent Fetch32
Fetch32:
    # Line 61
    lw	$v1,0($a0)
    lw	$a4,3376($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v1,3372($v1)
    lw	$v0,16($a0)
    sll	$v1,$v1,0x2
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    addu	$v0,$v0,$a0
    subu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end Fetch32

# Function: StoreNEVER
# Declared: Line 65 (Source lines: 68-68)
# Address: 0x0daa64d0 - 0x0daa64d8 (Size: 8 bytes, Frame: 0)
.ent StoreNEVER
StoreNEVER:
    # Line 68
    jr	$ra
    move	$v0,$zero
.end StoreNEVER

# Function: StoreLESS
# Declared: Line 71 (Source lines: 75-83)
# Address: 0x0daa64d8 - 0x0daa6548 (Size: 112 bytes, Frame: 0)
.ent StoreLESS
StoreLESS:
    # Line 75
    lw	$at,0($a0)
    # Line 78
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    # Line 75
    lw	$v0,31320($at)
    lw	$a5,31312($at)
    # Line 78
    lw	$at,3372($at)
    mfhi	$zero
    # Line 75
    srlv	$v0,$a3,$v0
    # Line 78
    lw	$a6,16($a0)
    sll	$at,$at,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a6,$a6,$v1
    sll	$v1,$a1,0x2
    addu	$a6,$a6,$v1
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 75
    addu	$a5,$a5,$v0
    # Line 78
    sltu	$at,$a5,$at
    beqz	$at,.L0daa6540
    # Line 83
    move	$v0,$zero
    # Line 81
    li	$v0,1
    jr	$ra
    # Line 80
    sw	$a5,0($a6)
.L0daa6540:
    # Line 83
    jr	$ra
    nop
.end StoreLESS

# Function: StoreLESS_s
# Declared: Line 86 (Source lines: 90-98)
# Address: 0x0daa6548 - 0x0daa65b8 (Size: 112 bytes, Frame: 0)
.ent StoreLESS_s
StoreLESS_s:
    # Line 90
    lw	$at,0($a0)
    # Line 93
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    # Line 90
    lw	$v0,31320($at)
    lw	$a5,31312($at)
    # Line 93
    lw	$at,3372($at)
    mfhi	$zero
    # Line 90
    srlv	$v0,$a3,$v0
    # Line 93
    lw	$a6,16($a0)
    sll	$at,$at,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a6,$a6,$v1
    sll	$v1,$a1,0x2
    addu	$a6,$a6,$v1
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 90
    addu	$a5,$a5,$v0
    # Line 93
    slt	$at,$a5,$at
    beqz	$at,.L0daa65b0
    # Line 98
    move	$v0,$zero
    # Line 96
    li	$v0,1
    jr	$ra
    # Line 95
    sw	$a5,0($a6)
.L0daa65b0:
    # Line 98
    jr	$ra
    nop
.end StoreLESS_s

# Function: StoreEQUAL
# Declared: Line 101 (Source lines: 105-113)
# Address: 0x0daa65b8 - 0x0daa6620 (Size: 104 bytes, Frame: 0)
.ent StoreEQUAL
StoreEQUAL:
    # Line 105
    lw	$a5,0($a0)
    # Line 108
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 105
    lw	$v0,31320($a5)
    # Line 108
    lw	$at,3372($a5)
    # Line 105
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 108
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 105
    addu	$a5,$a5,$v0
    # Line 108
    bne	$at,$a5,.L0daa6618
    # Line 113
    move	$v0,$zero
    # Line 111
    li	$v0,1
    jr	$ra
    # Line 110
    sw	$a5,0($a6)
.L0daa6618:
    # Line 113
    jr	$ra
    nop
.end StoreEQUAL

# Function: StoreLEQUAL
# Declared: Line 116 (Source lines: 120-128)
# Address: 0x0daa6620 - 0x0daa668c (Size: 108 bytes, Frame: 0)
.ent StoreLEQUAL
StoreLEQUAL:
    # Line 120
    lw	$a5,0($a0)
    # Line 123
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 120
    lw	$v0,31320($a5)
    # Line 123
    lw	$at,3372($a5)
    # Line 120
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 123
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 120
    addu	$a5,$a5,$v0
    # Line 123
    sltu	$at,$at,$a5
    bnez	$at,.L0daa6684
    # Line 128
    move	$v0,$zero
    # Line 126
    li	$v0,1
    jr	$ra
    # Line 125
    sw	$a5,0($a6)
.L0daa6684:
    # Line 128
    jr	$ra
    nop
.end StoreLEQUAL

# Function: StoreLEQUAL_s
# Declared: Line 131 (Source lines: 135-143)
# Address: 0x0daa668c - 0x0daa66f8 (Size: 108 bytes, Frame: 0)
.ent StoreLEQUAL_s
StoreLEQUAL_s:
    # Line 135
    lw	$a5,0($a0)
    # Line 138
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 135
    lw	$v0,31320($a5)
    # Line 138
    lw	$at,3372($a5)
    # Line 135
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 138
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 135
    addu	$a5,$a5,$v0
    # Line 138
    slt	$at,$at,$a5
    bnez	$at,.L0daa66f0
    # Line 143
    move	$v0,$zero
    # Line 141
    li	$v0,1
    jr	$ra
    # Line 140
    sw	$a5,0($a6)
.L0daa66f0:
    # Line 143
    jr	$ra
    nop
.end StoreLEQUAL_s

# Function: StoreGREATER
# Declared: Line 146 (Source lines: 150-158)
# Address: 0x0daa66f8 - 0x0daa6764 (Size: 108 bytes, Frame: 0)
.ent StoreGREATER
StoreGREATER:
    # Line 150
    lw	$a5,0($a0)
    # Line 153
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 150
    lw	$v0,31320($a5)
    # Line 153
    lw	$at,3372($a5)
    # Line 150
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 153
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 150
    addu	$a5,$a5,$v0
    # Line 153
    sltu	$at,$at,$a5
    beqz	$at,.L0daa675c
    # Line 158
    move	$v0,$zero
    # Line 156
    li	$v0,1
    jr	$ra
    # Line 155
    sw	$a5,0($a6)
.L0daa675c:
    # Line 158
    jr	$ra
    nop
.end StoreGREATER

# Function: StoreGREATER_s
# Declared: Line 161 (Source lines: 165-173)
# Address: 0x0daa6764 - 0x0daa67d0 (Size: 108 bytes, Frame: 0)
.ent StoreGREATER_s
StoreGREATER_s:
    # Line 165
    lw	$a5,0($a0)
    # Line 168
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 165
    lw	$v0,31320($a5)
    # Line 168
    lw	$at,3372($a5)
    # Line 165
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 168
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 165
    addu	$a5,$a5,$v0
    # Line 168
    slt	$at,$at,$a5
    beqz	$at,.L0daa67c8
    # Line 173
    move	$v0,$zero
    # Line 171
    li	$v0,1
    jr	$ra
    # Line 170
    sw	$a5,0($a6)
.L0daa67c8:
    # Line 173
    jr	$ra
    nop
.end StoreGREATER_s

# Function: StoreNOTEQUAL
# Declared: Line 176 (Source lines: 180-188)
# Address: 0x0daa67d0 - 0x0daa6838 (Size: 104 bytes, Frame: 0)
.ent StoreNOTEQUAL
StoreNOTEQUAL:
    # Line 180
    lw	$a5,0($a0)
    # Line 183
    lw	$v1,3376($a5)
    lw	$v0,28($a0)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$a6,16($a0)
    sll	$v0,$a1,0x2
    mflo	$at
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    addu	$a6,$a6,$v0
    # Line 180
    lw	$v0,31320($a5)
    # Line 183
    lw	$at,3372($a5)
    # Line 180
    lw	$a5,31312($a5)
    srlv	$v0,$a3,$v0
    # Line 183
    sll	$at,$at,0x2
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 180
    addu	$a5,$a5,$v0
    # Line 183
    beq	$at,$a5,.L0daa6830
    # Line 188
    move	$v0,$zero
    # Line 186
    li	$v0,1
    jr	$ra
    # Line 185
    sw	$a5,0($a6)
.L0daa6830:
    # Line 188
    jr	$ra
    nop
.end StoreNOTEQUAL

# Function: StoreGEQUAL
# Declared: Line 191 (Source lines: 195-203)
# Address: 0x0daa6838 - 0x0daa68a8 (Size: 112 bytes, Frame: 0)
.ent StoreGEQUAL
StoreGEQUAL:
    # Line 195
    lw	$at,0($a0)
    # Line 198
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    # Line 195
    lw	$v0,31320($at)
    lw	$a5,31312($at)
    # Line 198
    lw	$at,3372($at)
    mfhi	$zero
    # Line 195
    srlv	$v0,$a3,$v0
    # Line 198
    lw	$a6,16($a0)
    sll	$at,$at,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a6,$a6,$v1
    sll	$v1,$a1,0x2
    addu	$a6,$a6,$v1
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 195
    addu	$a5,$a5,$v0
    # Line 198
    sltu	$at,$a5,$at
    bnez	$at,.L0daa68a0
    # Line 203
    move	$v0,$zero
    # Line 201
    li	$v0,1
    jr	$ra
    # Line 200
    sw	$a5,0($a6)
.L0daa68a0:
    # Line 203
    jr	$ra
    nop
.end StoreGEQUAL

# Function: StoreGEQUAL_s
# Declared: Line 206 (Source lines: 210-218)
# Address: 0x0daa68a8 - 0x0daa6918 (Size: 112 bytes, Frame: 0)
.ent StoreGEQUAL_s
StoreGEQUAL_s:
    # Line 210
    lw	$at,0($a0)
    # Line 213
    lw	$a5,3376($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    # Line 210
    lw	$v0,31320($at)
    lw	$a5,31312($at)
    # Line 213
    lw	$at,3372($at)
    mfhi	$zero
    # Line 210
    srlv	$v0,$a3,$v0
    # Line 213
    lw	$a6,16($a0)
    sll	$at,$at,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a6,$a6,$v1
    sll	$v1,$a1,0x2
    addu	$a6,$a6,$v1
    subu	$a6,$a6,$at
    lw	$at,0($a6)
    # Line 210
    addu	$a5,$a5,$v0
    # Line 213
    slt	$at,$a5,$at
    bnez	$at,.L0daa6910
    # Line 218
    move	$v0,$zero
    # Line 216
    li	$v0,1
    jr	$ra
    # Line 215
    sw	$a5,0($a6)
.L0daa6910:
    # Line 218
    jr	$ra
    nop
.end StoreGEQUAL_s

# Function: StoreALWAYS
# Declared: Line 221 (Source lines: 227-229)
# Address: 0x0daa6918 - 0x0daa6970 (Size: 88 bytes, Frame: 0)
.ent StoreALWAYS
StoreALWAYS:
    # Line 227
    lw	$a4,0($a0)
    lw	$a6,3376($a4)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    lw	$v1,31320($a4)
    lw	$at,31312($a4)
    # Line 229
    li	$v0,1
    mfhi	$zero
    # Line 227
    srlv	$v1,$a3,$v1
    addu	$at,$at,$v1
    lw	$v1,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,3372($a4)
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$a0,$a0,0x2
    subu	$v1,$v1,$a0
    # Line 229
    jr	$ra
    # Line 227
    sw	$at,0($v1)
.end StoreALWAYS

# Function: StoreLESS_W
# Declared: Line 234 (Source lines: 242-242)
# Address: 0x0daa6970 - 0x0daa69c4 (Size: 84 bytes, Frame: 0)
.ent StoreLESS_W
StoreLESS_W:
    # Line 242
    lw	$a4,0($a0)
    lw	$a6,3376($a4)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    sll	$a1,$a1,0x2
    lw	$v0,31312($a4)
    lw	$v1,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,3372($a4)
    lw	$a2,31320($a4)
    addu	$v1,$v1,$a1
    sll	$a0,$a0,0x2
    subu	$v1,$v1,$a0
    srlv	$a0,$a3,$a2
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    jr	$ra
    sltu	$v0,$v0,$v1
.end StoreLESS_W

# Function: StoreLESS_W_s
# Declared: Line 245 (Source lines: 253-253)
# Address: 0x0daa69c4 - 0x0daa6a18 (Size: 84 bytes, Frame: 0)
.ent StoreLESS_W_s
StoreLESS_W_s:
    # Line 253
    lw	$a4,0($a0)
    lw	$a6,3376($a4)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    sll	$a1,$a1,0x2
    lw	$v0,31312($a4)
    lw	$v1,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,3372($a4)
    lw	$a2,31320($a4)
    addu	$v1,$v1,$a1
    sll	$a0,$a0,0x2
    subu	$v1,$v1,$a0
    srlv	$a0,$a3,$a2
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    jr	$ra
    slt	$v0,$v0,$v1
.end StoreLESS_W_s

# Function: StoreEQUAL_W
# Declared: Line 256 (Source lines: 264-264)
# Address: 0x0daa6a18 - 0x0daa6a70 (Size: 88 bytes, Frame: 0)
.ent StoreEQUAL_W
StoreEQUAL_W:
    # Line 264
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    xor	$v0,$v0,$v1
    jr	$ra
    sltiu	$v0,$v0,1
.end StoreEQUAL_W

# Function: StoreLEQUAL_W
# Declared: Line 267 (Source lines: 275-275)
# Address: 0x0daa6a70 - 0x0daa6ac8 (Size: 88 bytes, Frame: 0)
.ent StoreLEQUAL_W
StoreLEQUAL_W:
    # Line 275
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    sltu	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreLEQUAL_W

# Function: StoreLEQUAL_W_s
# Declared: Line 278 (Source lines: 286-286)
# Address: 0x0daa6ac8 - 0x0daa6b20 (Size: 88 bytes, Frame: 0)
.ent StoreLEQUAL_W_s
StoreLEQUAL_W_s:
    # Line 286
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    slt	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreLEQUAL_W_s

# Function: StoreGREATER_W
# Declared: Line 289 (Source lines: 297-297)
# Address: 0x0daa6b20 - 0x0daa6b74 (Size: 84 bytes, Frame: 0)
.ent StoreGREATER_W
StoreGREATER_W:
    # Line 297
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    jr	$ra
    sltu	$v0,$v0,$v1
.end StoreGREATER_W

# Function: StoreGREATER_W_s
# Declared: Line 300 (Source lines: 308-308)
# Address: 0x0daa6b74 - 0x0daa6bc8 (Size: 84 bytes, Frame: 0)
.ent StoreGREATER_W_s
StoreGREATER_W_s:
    # Line 308
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    jr	$ra
    slt	$v0,$v0,$v1
.end StoreGREATER_W_s

# Function: StoreNOTEQUAL_W
# Declared: Line 312 (Source lines: 320-320)
# Address: 0x0daa6bc8 - 0x0daa6c20 (Size: 88 bytes, Frame: 0)
.ent StoreNOTEQUAL_W
StoreNOTEQUAL_W:
    # Line 320
    lw	$v1,0($a0)
    lw	$a5,3376($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$a0,3372($v1)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    sll	$a0,$a0,0x2
    subu	$v0,$v0,$a0
    lw	$a0,31320($v1)
    lw	$v1,31312($v1)
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    xor	$v0,$v0,$v1
    jr	$ra
    sltu	$v0,$zero,$v0
.end StoreNOTEQUAL_W

# Function: StoreGEQUAL_W
# Declared: Line 323 (Source lines: 331-331)
# Address: 0x0daa6c20 - 0x0daa6c78 (Size: 88 bytes, Frame: 0)
.ent StoreGEQUAL_W
StoreGEQUAL_W:
    # Line 331
    lw	$a4,0($a0)
    lw	$a6,3376($a4)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    sll	$a1,$a1,0x2
    lw	$v0,31312($a4)
    lw	$v1,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,3372($a4)
    lw	$a2,31320($a4)
    addu	$v1,$v1,$a1
    sll	$a0,$a0,0x2
    subu	$v1,$v1,$a0
    lw	$v1,0($v1)
    srlv	$a0,$a3,$a2
    addu	$v0,$v0,$a0
    sltu	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreGEQUAL_W

# Function: StoreGEQUAL_W_s
# Declared: Line 334 (Source lines: 342-342)
# Address: 0x0daa6c78 - 0x0daa6cd0 (Size: 88 bytes, Frame: 0)
.ent StoreGEQUAL_W_s
StoreGEQUAL_W_s:
    # Line 342
    lw	$a4,0($a0)
    lw	$a6,3376($a4)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    sll	$a1,$a1,0x2
    lw	$v0,31312($a4)
    lw	$v1,16($a0)
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,3372($a4)
    lw	$a2,31320($a4)
    addu	$v1,$v1,$a1
    sll	$a0,$a0,0x2
    subu	$v1,$v1,$a0
    lw	$v1,0($v1)
    srlv	$a0,$a3,$a2
    addu	$v0,$v0,$a0
    slt	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreGEQUAL_W_s

# Function: StoreALWAYS_W
# Declared: Line 346 (Source lines: 349-349)
# Address: 0x0daa6cd0 - 0x0daa6cd8 (Size: 8 bytes, Frame: 0)
.ent StoreALWAYS_W
StoreALWAYS_W:
    # Line 349
    jr	$ra
    li	$v0,1
.end StoreALWAYS_W

# Function: Clear
# Declared: Line 356 (Source lines: 357-523)
# Address: 0x0daa6cd8 - 0x0daa7374 (Size: 1692 bytes, Frame: 144)
.ent Clear
Clear:
    # Line 357
    move	$a5,$a0
    # Line 362
    lw	$a0,76($a0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    # Line 358
    lw	$t1,0($a5)
    # Line 362
    cvt.d.l	$f0,$f0
    ldc1	$f4,1544($t1)
    mul.d	$f0,$f0,$f4
    # Line 357
    addiu	$sp,$sp,-144
    lui	$v1,0x15
    addiu	$v1,$v1,2960
    # Line 362
    trunc.l.d	$f0,$f0
    # Line 357
    # addu	at,t9,v1
    # Line 358
    move	$v0,$t1
    # Line 362
    lbu	$v0,1540($t1)
    dmfc1	$a4,$f0
    sd	$t1,16($sp)
    beqz	$v0,.L0daa7364
    sll	$a4,$a4,0x0
    ld	$a6,16($sp)
    # Line 371
    lw	$a0,29712($a6)
    # Line 369
    lw	$t2,29704($a6)
    # Line 372
    lw	$a1,29716($a6)
    # Line 370
    lw	$a6,29708($a6)
    # Line 373
    subu	$a0,$a0,$t2
    beqz	$a0,.L0daa7188
    sd	$a1,8($sp)
    ld	$t0,8($sp)
    subu	$t0,$t0,$a6
    beqz	$t0,.L0daa7188
    nop
    # Line 378
    lw	$t8,100($a5)
    lui	$v0,0xff00
    bne	$t8,$v0,.L0daa701c
    ldc1	$f1,_lit8_3ff0000000000000
    c.eq.d	$f4,$f1
    nop
    bc1tl	.L0daa6d80
    # Line 383
    lbu	$a3,96($a5)
    li	$a3,1
    sb	$a3,96($a5)
.L0daa6d80:
    # Line 393
    lw	$t3,88($a5)
    beqz	$a3,.L0daa7050
    srlv	$t3,$a4,$t3
    # Line 398
    lw	$a4,92($a5)
    # Line 411
    sb	$zero,96($a5)
    # Line 398
    nor	$a4,$a4,$zero
    sw	$a4,80($a5)
    # Line 414
    lw	$v1,3376($t1)
    lw	$a7,28($a5)
    subu	$v1,$a6,$v1
    mult	$v1,$a7
    sd	$s2,48($sp)
    sd	$s6,32($sp)
    # Line 416
    ld	$v0,8($sp)
    sd	$s8,40($sp)
    # Line 414
    sll	$a1,$t2,0x2
    # Line 416
    slt	$v0,$a6,$v0
    # Line 408
    addu	$a4,$a4,$t3
    # Line 414
    lw	$a3,16($a5)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a3,$a3,$v1
    lw	$v1,3372($t1)
    # Line 416
    subu	$a7,$a7,$a0
    # Line 414
    addu	$a3,$a3,$a1
    sll	$v1,$v1,0x2
    # Line 416
    beqz	$v0,.L0daa6ff0
    # Line 414
    subu	$a3,$a3,$v1
    # Line 416
    li	$a5,-1
    sll	$t8,$a7,0x2
    andi	$t2,$a0,0x3
    sra	$t9,$a0,0x5
    # sd	t9,24(sp)
    addiu	$s2,$t9,-1
    slti	$t9,$t9,1
    sd	$t2,0($sp)
    addiu	$t1,$t2,-1
    slti	$t2,$t2,1
    andi	$s8,$a0,0x1f
    sra	$s8,$s8,0x2
    addiu	$t3,$s8,-1
    xori	$t2,$t2,0x1
    xori	$t9,$t9,0x1
    slti	$s6,$s8,1
    b	.L0daa6e84
    xori	$s6,$s6,0x1
    move	$v1,$a0
.L0daa6e3c:
    sd	$a0,104($sp)
    sra	$v0,$a7,0x2
    beqz	$v0,.L0daa6e74
    move	$t0,$a3
    ld	$a3,104($sp)
    move	$a0,$t0
.L0daa6e54:
    # Line 441
    addiu	$a0,$a0,16
    # Line 440
    addiu	$a3,$a3,-4
    # Line 441
    sw	$a4,-16($a0)
    sw	$a4,-12($a0)
    sw	$a4,-8($a0)
    # Line 440
    bne	$a3,$a5,.L0daa6e54
    # Line 441
    sw	$a4,-4($a0)
    move	$a3,$a0
.L0daa6e74:
    # Line 421
    addiu	$a6,$a6,1
    ld	$a1,8($sp)
    beq	$a6,$a1,.L0daa6ff0
    # Line 443
    addu	$a3,$t8,$a3
.L0daa6e84:
    # Line 423
    beqz	$t9,.L0daa6f18
    move	$a0,$s2
.L0daa6e8c:
    # Line 432
    addiu	$a3,$a3,128
    # Line 431
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 430
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 429
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 428
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 427
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 426
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 425
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 424
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    # Line 423
    addiu	$a0,$a0,-1
    bne	$a0,$a5,.L0daa6e8c
    # Line 424
    sw	$a4,-128($a3)
.L0daa6f18:
    # Line 435
    move	$a7,$s8
    beqz	$s6,.L0daa6fbc
    move	$a0,$t3
    andi	$t0,$s8,0x3
    beqzl	$t0,.L0daa6f54
    move	$t0,$a0
.L0daa6f30:
    addiu	$a0,$a0,-1
    # Line 437
    addiu	$a3,$a3,16
    # Line 436
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    addi	$t0,$t0,-1
    bnez	$t0,.L0daa6f30
    sw	$a4,-16($a3)
    move	$t0,$a0
.L0daa6f54:
    move	$v0,$a3
    sra	$a2,$a7,0x2
    beqz	$a2,.L0daa6fbc
    sd	$a3,112($sp)
    move	$a3,$t0
    ld	$a0,112($sp)
.L0daa6f6c:
    # Line 437
    addiu	$a0,$a0,64
    # Line 436
    sw	$a4,-4($a0)
    sw	$a4,-8($a0)
    sw	$a4,-12($a0)
    sw	$a4,-16($a0)
    sw	$a4,-20($a0)
    sw	$a4,-24($a0)
    sw	$a4,-28($a0)
    sw	$a4,-32($a0)
    sw	$a4,-36($a0)
    sw	$a4,-40($a0)
    sw	$a4,-44($a0)
    sw	$a4,-48($a0)
    sw	$a4,-52($a0)
    sw	$a4,-56($a0)
    sw	$a4,-60($a0)
    # Line 435
    addiu	$a3,$a3,-4
    bne	$a3,$a5,.L0daa6f6c
    # Line 436
    sw	$a4,-64($a0)
    move	$a3,$a0
.L0daa6fbc:
    # Line 440
    beqz	$t2,.L0daa6e74
    move	$a0,$t1
    ld	$a7,0($sp)
    andi	$t0,$a7,0x3
    beqz	$t0,.L0daa6e3c
    move	$v1,$a0
.L0daa6fd4:
    addiu	$a0,$a0,-1
    # Line 441
    sw	$a4,0($a3)
    addi	$t0,$t0,-1
    bnez	$t0,.L0daa6fd4
    addiu	$a3,$a3,4
    b	.L0daa6e3c
    move	$v1,$a0
.L0daa6ff0:
    # Line 522
    li	$a0,2
    sw	$a0,__glBeginMode
    ld	$a0,16($sp)
    # Line 523
    ld	$s2,48($sp)
    ld	$s6,32($sp)
    # Line 522
    lw	$v1,11764($a0)
    # Line 523
    ld	$s8,40($sp)
    addiu	$sp,$sp,144
    # Line 522
    ori	$v1,$v1,0x80
    # Line 523
    jr	$ra
    # Line 522
    sw	$v1,11764($a0)
.L0daa701c:
    # Line 383
    lui	$a1,0x100
    bne	$t8,$a1,.L0daa7040
    dmtc1	$zero,$f2
    c.eq.d	$f4,$f2
    nop
    bc1t	.L0daa7190
    # Line 389
    li	$a3,1
    b	.L0daa6d80
    sb	$a3,96($a5)
.L0daa7040:
    beqz	$t8,.L0daa736c
    # Line 393
    li	$a3,1
    b	.L0daa6d80
    lbu	$a3,96($a5)
.L0daa7050:
    # Line 478
    mult	$a0,$t0
    sd	$t0,120($sp)
    move	$v0,$t0
    # Line 454
    lw	$t0,80($a5)
    addu	$t0,$t0,$t8
    # Line 473
    srl	$v1,$t0,0x18
    # Line 478
    mflo	$t9
    # Line 473
    andi	$v1,$v1,0x7f
    # Line 478
    sra	$t9,$t9,0x7
    mult	$t9,$v1
    mflo	$v0
    nop
    nop
    div	$zero,$v0,$a0
    mflo	$a7
    nop
    # Line 479
    # addu	t9,t9,v0
    div	$zero,$t9,$a0
    teq	$a0,$zero,0x7
    # Line 478
    teq	$a0,$zero,0x7
    # Line 479
    ld	$a2,8($sp)
    # Line 464
    addu	$a4,$t0,$t3
    # Line 454
    sw	$t0,80($a5)
    # Line 478
    addu	$a7,$a7,$a6
    # Line 479
    slt	$a2,$a7,$a2
    mflo	$t9
    # addu	t9,t9,a6
    bnez	$a2,.L0daa70cc
    move	$t0,$t9
    ld	$a7,8($sp)
    # Line 482
    addiu	$a7,$a7,-1
.L0daa70cc:
    ld	$v0,8($sp)
    slt	$v0,$t9,$v0
    bnezl	$v0,.L0daa70e8
    sd	$s2,48($sp)
    ld	$t0,8($sp)
    # Line 483
    addiu	$t0,$t0,-1
    sd	$s2,48($sp)
.L0daa70e8:
    sd	$s6,32($sp)
    beq	$a7,$t0,.L0daa6ff0
    sd	$s8,40($sp)
    # Line 487
    lw	$v0,3376($t1)
    lw	$a6,28($a5)
    subu	$v0,$a7,$v0
    mult	$v0,$a6
    sd	$s2,48($sp)
    sd	$s6,32($sp)
    sd	$s8,40($sp)
    sll	$a1,$t2,0x2
    # Line 489
    subu	$a6,$a6,$a0
    # Line 487
    lw	$a3,16($a5)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$a3,$a3,$v1
    lw	$v1,3372($t1)
    # Line 489
    slt	$v0,$a7,$t0
    # Line 487
    addu	$a3,$a3,$a1
    sll	$v1,$v1,0x2
    # Line 489
    beqz	$v0,.L0daa6ff0
    # Line 487
    subu	$a3,$a3,$v1
    # Line 489
    li	$a5,-1
    sll	$t8,$a6,0x2
    andi	$t2,$a0,0x3
    sra	$t9,$a0,0x5
    # sd	t9,24(sp)
    addiu	$s2,$t9,-1
    slti	$t9,$t9,1
    sd	$t2,0($sp)
    addiu	$t1,$t2,-1
    slti	$t2,$t2,1
    andi	$s8,$a0,0x1f
    sra	$s8,$s8,0x2
    addiu	$t3,$s8,-1
    xori	$t2,$t2,0x1
    xori	$t9,$t9,0x1
    slti	$s6,$s8,1
    b	.L0daa7288
    xori	$s6,$s6,0x1
.L0daa7188:
    # Line 374
    jr	$ra
    addiu	$sp,$sp,144
.L0daa7190:
    b	.L0daa6d80
    # Line 389
    lbu	$a3,96($a5)
.L0daa7198:
    move	$a1,$a0
.L0daa719c:
    sd	$a0,96($sp)
    move	$v1,$a3
    sra	$v0,$a6,0x2
    beqz	$v0,.L0daa7208
    sd	$a3,88($sp)
    ld	$a3,96($sp)
    ld	$a0,88($sp)
.L0daa71b8:
    # Line 510
    addiu	$a0,$a0,64
    # Line 509
    sw	$a4,-4($a0)
    sw	$a4,-8($a0)
    sw	$a4,-12($a0)
    sw	$a4,-16($a0)
    sw	$a4,-20($a0)
    sw	$a4,-24($a0)
    sw	$a4,-28($a0)
    sw	$a4,-32($a0)
    sw	$a4,-36($a0)
    sw	$a4,-40($a0)
    sw	$a4,-44($a0)
    sw	$a4,-48($a0)
    sw	$a4,-52($a0)
    sw	$a4,-56($a0)
    sw	$a4,-60($a0)
    # Line 508
    addiu	$a3,$a3,-4
    bne	$a3,$a5,.L0daa71b8
    # Line 509
    sw	$a4,-64($a0)
    move	$a3,$a0
.L0daa7208:
    # Line 513
    beqz	$t2,.L0daa727c
    move	$a0,$t1
    ld	$a6,0($sp)
    andi	$a2,$a6,0x3
    beqz	$a2,.L0daa723c
    sd	$a2,56($sp)
.L0daa7220:
    addiu	$a0,$a0,-1
    ld	$v0,56($sp)
    # Line 514
    sw	$a4,0($a3)
    addiu	$a3,$a3,4
    addi	$v0,$v0,-1
    bnez	$v0,.L0daa7220
    sd	$v0,56($sp)
.L0daa723c:
    move	$a2,$a0
    sd	$a0,80($sp)
    move	$a1,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0daa727c
    sd	$a3,72($sp)
    ld	$a3,80($sp)
    ld	$a0,72($sp)
.L0daa725c:
    addiu	$a0,$a0,16
    # Line 513
    addiu	$a3,$a3,-4
    # Line 514
    sw	$a4,-16($a0)
    sw	$a4,-12($a0)
    sw	$a4,-8($a0)
    # Line 513
    bne	$a3,$a5,.L0daa725c
    # Line 514
    sw	$a4,-4($a0)
    move	$a3,$a0
.L0daa727c:
    # Line 494
    addiu	$a7,$a7,1
    beq	$a7,$t0,.L0daa6ff0
    # Line 516
    addu	$a3,$t8,$a3
.L0daa7288:
    # Line 496
    beqz	$t9,.L0daa731c
    move	$a0,$s2
.L0daa7290:
    # Line 505
    addiu	$a3,$a3,128
    # Line 504
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 503
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 502
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 501
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 500
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 499
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 498
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 497
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    # Line 496
    addiu	$a0,$a0,-1
    bne	$a0,$a5,.L0daa7290
    # Line 497
    sw	$a4,-128($a3)
.L0daa731c:
    andi	$v0,$s8,0x3
    # Line 508
    beqz	$s6,.L0daa7208
    move	$a0,$t3
    move	$a6,$s8
    beqz	$v0,.L0daa7198
    sd	$v0,64($sp)
.L0daa7334:
    addiu	$a0,$a0,-1
    # Line 510
    addiu	$a3,$a3,16
    # Line 509
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    ld	$v1,64($sp)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    addi	$v1,$v1,-1
    bnez	$v1,.L0daa7334
    sd	$v1,64($sp)
    b	.L0daa719c
    move	$a1,$a0
.L0daa7364:
    # Line 366
    jr	$ra
    addiu	$sp,$sp,144
.L0daa736c:
    # Line 393
    b	.L0daa6d80
    sb	$a3,96($a5)
.end Clear

# Function: Fix_zbuffer
# Declared: Line 531 (Source lines: 532-598)
# Address: 0x0daa7374 - 0x0daa751c (Size: 424 bytes, Frame: 192)
.ent Fix_zbuffer
Fix_zbuffer:
    # Line 544
    lw	$t8,29716($a0)
    # Line 542
    lw	$t2,29708($a0)
    # Line 535
    lw	$a5,31332($a0)
    # Line 534
    lw	$t0,31324($a0)
    # Line 533
    lw	$a6,31312($a0)
    # Line 532
    addiu	$sp,$sp,-64
    lui	$v1,0x15
    # Line 541
    lw	$t3,29704($a0)
    # Line 543
    lw	$v0,29712($a0)
    # Line 532
    addiu	$v1,$v1,1268
    # addu	at,t9,v1
    # Line 545
    subu	$v0,$v0,$t3
    beqz	$v0,.L0daa7514
    sd	$v0,16($sp)
    subu	$a7,$t8,$t2
    beqz	$a7,.L0daa7514
    ld	$t9,16($sp)
    # Line 546
    lui	$a3,0xff00
    bne	$a5,$a3,.L0daa73e8
    # Line 576
    lui	$a4,0x100
    # Line 546
    ldc1	$f0,1544($a0)
    ldc1	$f1,_lit8_3ff0000000000000
    c.eq.d	$f0,$f1
    nop
    bc1f	.L0daa73e8
    # Line 576
    lui	$a4,0x100
    b	.L0daa7408
    or	$t1,$a2,$t0
    lui	$a4,0x100
.L0daa73e8:
    bne	$a5,$a4,.L0daa750c
    nop
    ldc1	$f2,1544($a0)
    dmtc1	$zero,$f3
    c.eq.d	$f2,$f3
    nop
    bc1f	.L0daa750c
    # Line 578
    move	$t1,$a2
.L0daa7408:
    # Line 584
    lw	$a3,0($a1)
    lw	$v0,3376($a3)
    lw	$a5,28($a1)
    subu	$v0,$t2,$v0
    mult	$v0,$a5
    lw	$a3,3372($a3)
    sd	$a7,8($sp)
    lw	$a0,16($a1)
    sll	$a3,$a3,0x2
    # Line 586
    subu	$a5,$a5,$t9
    slt	$v0,$t2,$t8
    # Line 584
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a0,$a0,$a4
    sll	$a4,$t3,0x2
    addu	$a0,$a0,$a4
    # Line 586
    beqz	$v0,.L0daa7504
    # Line 584
    subu	$a0,$a0,$a3
    # Line 586
    nor	$a7,$t0,$zero
    sll	$v1,$a5,0x2
    b	.L0daa7484
    sd	$v1,0($sp)
.L0daa7460:
    # Line 593
    sw	$t1,0($a0)
.L0daa7464:
    # Line 589
    addiu	$a0,$a0,4
.L0daa7468:
    sra	$a3,$t3,0x1
    bnezl	$a3,.L0daa74c4
    lw	$a1,0($a0)
.L0daa7474:
    # Line 588
    addiu	$t2,$t2,1
    # Line 596
    ld	$a4,0($sp)
    # Line 588
    beq	$t2,$t8,.L0daa7504
    # Line 596
    addu	$a0,$a4,$a0
.L0daa7484:
    # Line 589
    move	$a5,$t9
    andi	$v0,$t9,0x1
    beqz	$v0,.L0daa7468
    move	$t3,$t9
    lw	$a1,0($a0)
    and	$v1,$a1,$a7
    bne	$v1,$a6,.L0daa7460
    addiu	$a5,$a5,-1
    # Line 591
    and	$a3,$a1,$t0
    or	$a3,$a3,$a2
    b	.L0daa7464
    sw	$a3,0($a0)
.L0daa74b4:
    # Line 593
    sw	$t1,0($a0)
.L0daa74b8:
    # Line 589
    beqz	$a5,.L0daa7474
    addiu	$a0,$a0,4
    lw	$a1,0($a0)
.L0daa74c4:
    and	$a4,$a1,$a7
    bne	$a4,$a6,.L0daa74e0
    addiu	$a5,$a5,-2
    # Line 591
    and	$v0,$a1,$t0
    or	$v0,$v0,$a2
    b	.L0daa74e4
    sw	$v0,0($a0)
.L0daa74e0:
    # Line 593
    sw	$t1,0($a0)
.L0daa74e4:
    # Line 589
    lw	$a1,4($a0)
    and	$v1,$a1,$a7
    bne	$v1,$a6,.L0daa74b4
    addiu	$a0,$a0,4
    # Line 591
    and	$a3,$a1,$t0
    or	$a3,$a3,$a2
    b	.L0daa74b8
    sw	$a3,0($a0)
.L0daa7504:
    # Line 598
    jr	$ra
    addiu	$sp,$sp,64
.L0daa750c:
    # Line 580
    jr	$ra
    addiu	$sp,$sp,64
.L0daa7514:
    # Line 546
    jr	$ra
    addiu	$sp,$sp,64
.end Fix_zbuffer

# Function: Pick
# Declared: Line 642 (Source lines: 643-646)
# Address: 0x0daa751c - 0x0daa7544 (Size: 40 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 643
    lui	$a0,0x15
    addiu	$a0,$a0,844
    # addu	at,t9,a0
    # Line 644
    la	$v1,sub_0dbf0000
    sll	$v0,$a2,0x2
    addiu	$v1,$v1,-11752
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 646
    jr	$ra
    # Line 644
    sw	$v0,116($a1)
.end Pick

# Function: Resize
# Declared: Line 650 (Source lines: 651-657)
# Address: 0x0daa7544 - 0x0daa7588 (Size: 68 bytes, Frame: 192)
.ent Resize
Resize:
    # Line 651
    addiu	$sp,$sp,-64
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,804
    # addu	gp,t9,at
    # Line 654
    # lw $t9, -29256($gp) # &__glResizeBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glResizeBuffer
    # Line 651
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 656
    li	$v0,1
    # Line 657
    ld	$ra,0($sp)
    # Line 656
    sb	$v0,96($s8)
    # Line 657
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end Resize

# Function: MakeCurrent
# Declared: Line 661 (Source lines: 663-695)
# Address: 0x0daa7588 - 0x0daa7648 (Size: 192 bytes, Frame: 208)
.ent MakeCurrent
MakeCurrent:
    # Line 663
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    move	$s8,$a2
    sd	$s0,0($sp)
    move	$s0,$a1
    # sd	gp,32(sp)
    lui	$at,0x15
    addiu	$at,$at,736
    # addu	gp,t9,at
    # Line 667
    # lw $t9, -29264($gp) # &__glMakeCurrentBuffer
    sd	$s1,8($sp)
    sd	$ra,16($sp)
    jal	__glMakeCurrentBuffer
    # Line 663
    move	$s1,$a0
    # Line 667
    lbu	$v0,46($s0)
    beqz	$v0,.L0daa7638
    ld	$ra,16($sp)
    # Line 670
    lw	$a3,20($s0)
    sw	$a3,72($s1)
    # Line 671
    lw	$a0,24($s0)
    sw	$a0,76($s1)
    # Line 672
    lw	$a0,28($s0)
    sw	$a0,80($s1)
    # Line 673
    lw	$v1,32($s0)
    sw	$v1,88($s1)
    # Line 674
    lw	$v0,36($s0)
    sw	$v0,92($s1)
    # Line 675
    lbu	$at,44($s0)
    sb	$at,96($s1)
    # Line 676
    lw	$a3,40($s0)
    sw	$a3,100($s1)
    # Line 677
    lbu	$v1,45($s0)
    ld	$s0,0($sp)
    sb	$v1,104($s1)
.L0daa7610:
    # Line 679
    lw	$at,1696($s8)
    andi	$at,$at,0x4000
    beqz	$at,.L0daa7628
    ld	$s8,24($sp)
    # Line 687
    sw	$a0,84($s1)
    ld	$s8,24($sp)
.L0daa7628:
    # ld	gp,32(sp)
    # Line 695
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa7638:
    # Line 679
    lui	$a0,0xff00
    ld	$s0,0($sp)
    b	.L0daa7610
    sw	$a0,80($s1)
.end MakeCurrent

# Function: LoseCurrent
# Declared: Line 697 (Source lines: 698-727)
# Address: 0x0daa7648 - 0x0daa7718 (Size: 208 bytes, Frame: 192)
.ent LoseCurrent
LoseCurrent:
    # Line 700
    lw	$a3,68($a0)
    # Line 698
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a1
    # sd	gp,16(sp)
    # Line 700
    lw	$at,0($a0)
    # Line 698
    lui	$v0,0x15
    addiu	$v0,$v0,544
    # Line 700
    beqz	$at,.L0daa7708
    # Line 698
    nop
    # Line 704
    lw	$v1,1696($s0)
    sd	$ra,32($sp)
    sd	$a0,0($sp)
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0daa7694
    sd	$a3,8($sp)
    # Line 712
    # lw $t9, -25988($gp) # &__glReadjustZCounts
    jal	__glReadjustZCounts
    move	$a0,$s0
.L0daa7694:
    # Line 715
    # lw $t9, -29260($gp) # &__glLoseCurrentBuffer
    ld	$a0,0($sp)
    jal	__glLoseCurrentBuffer
    move	$a1,$s0
    ld	$ra,32($sp)
    # ld	gp,16(sp)
    ld	$a0,0($sp)
    # Line 717
    ld	$a2,8($sp)
    lw	$v0,72($a0)
    sw	$v0,20($a2)
    # Line 718
    lw	$at,76($a0)
    sw	$at,24($a2)
    # Line 719
    lw	$s0,80($a0)
    sw	$s0,28($a2)
    # Line 720
    lw	$v1,88($a0)
    sw	$v1,32($a2)
    # Line 721
    lw	$v0,92($a0)
    sw	$v0,36($a2)
    # Line 722
    lbu	$at,96($a0)
    sb	$at,44($a2)
    # Line 723
    lw	$s0,100($a0)
    sw	$s0,40($a2)
    # Line 726
    li	$s0,1
    # Line 724
    lbu	$a0,104($a0)
    # Line 726
    sb	$s0,46($a2)
    # Line 727
    ld	$s0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 724
    sb	$a0,45($a2)
.L0daa7708:
    # ld	gp,16(sp)
    # Line 704
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end LoseCurrent

# Function: __glInitDepth24
# Declared: Line 732 (Source lines: 733-756)
# Address: 0x0daa7718 - 0x0daa77fc (Size: 228 bytes, Frame: 48)
.globl __glInitDepth24
.ent __glInitDepth24
__glInitDepth24:
    # Line 733
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,336
    # addu	gp,t9,at
    # Line 734
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 733
    move	$s8,$a0
    # Line 737
    li	$at,24
    sw	$at,12($s8)
    # Line 745
    la	$at,sub_0daa0000
    # Line 753
    sb	$zero,96($s8)
    # Line 745
    addiu	$at,$at,27864
    # Line 754
    lui	$a1,0xff
    ori	$a1,$a1,0xffff
    sw	$a1,92($s8)
    # Line 743
    la	$a1,sub_0daa0000
    # Line 755
    li	$a0,-1
    sw	$a0,72($s8)
    # Line 749
    lui	$a0,0x7fff
    ori	$a0,$a0,0xff80
    sw	$a0,76($s8)
    # Line 741
    la	$a0,sub_0daa0000
    # Line 736
    li	$ra,4
    sw	$ra,24($s8)
    # Line 751
    lui	$v1,0xff00
    # Line 750
    li	$v0,7
    sw	$v0,88($s8)
    # Line 746
    la	$v0,sub_0daa0000
    # Line 752
    sw	$v1,100($s8)
    # Line 751
    sw	$v1,80($s8)
    # Line 747
    la	$v1,sub_0daa0000
    # Line 744
    la	$ra,sub_0daa0000
    # Line 746
    addiu	$v0,$v0,26904
    # Line 747
    addiu	$v1,$v1,25556
    sw	$v1,128($s8)
    # Line 740
    la	$v1,sub_0daa0000
    # Line 746
    sw	$v0,124($s8)
    # Line 739
    la	$v0,sub_0daa0000
    # ld	gp,16(sp)
    # Line 745
    sw	$at,120($s8)
    # Line 743
    addiu	$a1,$a1,29556
    sw	$a1,108($s8)
    # Line 741
    addiu	$a0,$a0,30280
    sw	$a0,48($s8)
    # Line 744
    addiu	$ra,$ra,29980
    sw	$ra,112($s8)
    # Line 756
    ld	$ra,0($sp)
    # Line 739
    addiu	$v0,$v0,30020
    # Line 740
    addiu	$v1,$v1,30088
    sw	$v1,44($s8)
    # Line 739
    sw	$v0,56($s8)
    # Line 756
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitDepth24

# Function: __glInitDepth32
# Declared: Line 759 (Source lines: 760-785)
# Address: 0x0daa77fc - 0x0daa78dc (Size: 224 bytes, Frame: 48)
.globl __glInitDepth32
.ent __glInitDepth32
__glInitDepth32:
    # Line 760
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,108
    # addu	gp,t9,at
    # Line 761
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 760
    move	$s8,$a0
    # Line 781
    sw	$zero,100($s8)
    # Line 764
    li	$at,32
    sw	$at,12($s8)
    # Line 773
    la	$at,sub_0daa0000
    # Line 779
    sw	$zero,80($s8)
    # Line 778
    sw	$zero,88($s8)
    # Line 773
    addiu	$at,$at,26904
    # Line 777
    lui	$a1,0x7fff
    ori	$a1,$a1,0xff80
    # Line 763
    la	$a0,__glNop
    # Line 777
    sw	$a1,76($s8)
    # Line 771
    la	$a1,sub_0daa0000
    # Line 783
    sw	$a0,108($s8)
    # Line 768
    la	$a0,sub_0daa0000
    # Line 763
    li	$ra,4
    sw	$ra,24($s8)
    # Line 782
    li	$v1,1
    # Line 780
    li	$v0,-1
    # Line 784
    sw	$v0,72($s8)
    # Line 780
    sw	$v0,92($s8)
    # Line 774
    la	$v0,sub_0daa0000
    # Line 782
    sb	$v1,96($s8)
    # Line 775
    la	$v1,sub_0daa0000
    # Line 772
    la	$ra,sub_0daa0000
    # Line 774
    addiu	$v0,$v0,25744
    # Line 775
    addiu	$v1,$v1,25808
    sw	$v1,116($s8)
    # Line 767
    la	$v1,sub_0daa0000
    # Line 774
    sw	$v0,128($s8)
    # Line 766
    la	$v0,sub_0daa0000
    # ld	gp,16(sp)
    # Line 773
    sw	$at,124($s8)
    # Line 771
    addiu	$a1,$a1,29980
    sw	$a1,112($s8)
    # Line 768
    addiu	$a0,$a0,30280
    sw	$a0,48($s8)
    # Line 772
    addiu	$ra,$ra,27864
    sw	$ra,120($s8)
    # Line 785
    ld	$ra,0($sp)
    # Line 766
    addiu	$v0,$v0,30020
    # Line 767
    addiu	$v1,$v1,30088
    sw	$v1,44($s8)
    # Line 766
    sw	$v0,56($s8)
    # Line 785
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitDepth32

# Function: __glInitDepth
# Declared: Line 787 (Source lines: 788-802)
# Address: 0x0daa78dc - 0x0daa7990 (Size: 180 bytes, Frame: 48)
.globl __glInitDepth
.ent __glInitDepth
__glInitDepth:
    # Line 788
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$gp,24($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-116
    addu	$gp,$t9,$v0
    # Line 791
    # lw $t9, -22964($gp) # &getenv
    la	$at,sub_0db30000
    sd	$ra,8($sp)
    jal	getenv
    addiu	$a0,$at,-20680
    bnez	$v0,.L0daa7970
    # Line 792
    nop	# was lw $t9, -22964($gp) # &getenv
    # Line 794
    lw	$v0,3128($s0)
    slti	$v1,$v0,25
.L0daa7924:
    beqz	$v1,.L0daa7948
    # Line 798
    nop	# was lw $t9, -28896($gp) # &__glInitDepth24
    move	$a0,$s8
    bal __glInitDepth24
    move	$a1,$s0
    ld	$s8,16($sp)
    ld	$ra,8($sp)
    b	.L0daa7964
    ld	$s0,0($sp)
.L0daa7948:
    # Line 800
    # lw $t9, -28892($gp) # &__glInitDepth32
    move	$a0,$s8
    bal __glInitDepth32
    move	$a1,$s0
    ld	$s8,16($sp)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
.L0daa7964:
    ld	$gp,24($sp)
    # Line 802
    jr	$ra
    addiu	$sp,$sp,48
.L0daa7970:
    # Line 792
    la	$a0,sub_0db30000
    jal	__glInitDepth32
    addiu	$a0,$a0,-20680
    # lw $t9, -22960($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    b	.L0daa7924
    # Line 794
    slti	$v1,$v0,25
.end __glInitDepth

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

