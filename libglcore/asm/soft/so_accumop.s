# Source: ../soft/so_accumop.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_accumop.c
# Total Functions: 9

.text

# Function: Load
# Declared: Line 20 (Source lines: 21-88)
# Address: 0x0da91fc4 - 0x0da92484 (Size: 1216 bytes, Frame: 0)
.ent Load
Load:
    # Line 21
    move	$at,$s8
    lui	$v0,0x1
    ori	$v0,$v0,0xd0
    subu	$sp,$sp,$v0
    addu	$s8,$sp,$v0
    sd	$s4,120($sp)
    sdc1	$f30,8($sp)
    # Line 46
    lwc1	$f30,84($a0)
    sdc1	$f22,32($sp)
    # Line 45
    lwc1	$f22,80($a0)
    # Line 46
    mul.s	$f30,$f30,$f13
    sdc1	$f24,24($sp)
    # Line 44
    lwc1	$f24,76($a0)
    # Line 45
    mul.s	$f22,$f22,$f13
    sdc1	$f28,16($sp)
    # Line 43
    lwc1	$f28,72($a0)
    # Line 44
    mul.s	$f24,$f24,$f13
    sd	$ra,128($sp)
    sd	$at,184($sp)
    # Line 43
    mul.s	$f28,$f28,$f13
    sd	$s2,168($sp)
    sd	$s5,160($sp)
    sd	$s0,112($sp)
    # Line 36
    lw	$s0,16($a0)
    # sd	gp,144(sp)
    sd	$s1,176($sp)
    # Line 22
    lw	$s1,0($a0)
    sd	$s3,136($sp)
    sd	$s7,152($sp)
    # Line 36
    lw	$s7,3376($s1)
    # Line 24
    lw	$s3,29708($s1)
    # Line 36
    lw	$a2,28($a0)
    sd	$s6,104($sp)
    subu	$s7,$s3,$s7
    mult	$s7,$a2
    # Line 21
    lui	$s6,0x16
    addiu	$s6,$s6,22692
    # addu	gp,t9,s6
    # Line 25
    lw	$s5,29712($s1)
    # Line 37
    lw	$a1,11772($s1)
    # Line 23
    lw	$s6,29704($s1)
    # Line 26
    lw	$s7,29716($s1)
    # Line 36
    lw	$s1,3372($s1)
    # Line 41
    subu	$s5,$s5,$s6
    subu	$a2,$a2,$s5
    # Line 36
    sll	$s1,$s1,0x3
    # Line 46
    slt	$at,$s3,$s7
    # Line 36
    mflo	$s2
    sll	$s2,$s2,0x3
    addu	$s0,$s0,$s2
    sll	$s2,$s6,0x3
    addu	$s0,$s0,$s2
    # Line 46
    beqz	$at,.L0da9243c
    # Line 36
    subu	$s0,$s0,$s1
    sd	$a1,88($sp)
    # Line 46
    li	$s2,-1
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-16
    sll	$v1,$a2,0x3
    sd	$v1,72($sp)
    andi	$v1,$s5,0x3
    sd	$v1,80($sp)
    addiu	$v0,$v1,-1
    slti	$v1,$v1,1
    xori	$v1,$v1,0x1
    sd	$v1,40($sp)
    sd	$v0,48($sp)
    sra	$v0,$s5,0x2
    addiu	$at,$v0,-1
    sd	$at,64($sp)
    sd	$v0,96($sp)
    slti	$v0,$v0,1
    xori	$v0,$v0,0x1
    b	.L0da921f4
    sd	$v0,56($sp)
.L0da920f4:
    move	$a6,$s1
.L0da920f8:
    move	$a3,$a1
    move	$a4,$s0
    sra	$a5,$a2,0x1
    beqz	$a5,.L0da921e4
    move	$a1,$a4
    move	$a7,$a3
    move	$a2,$a6
.L0da92114:
    # Line 79
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    nop
    sh	$a5,0($a1)
    # Line 80
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sh	$v1,2($a1)
    # Line 81
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    sh	$v0,4($a1)
    # Line 82
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sh	$at,6($a1)
    # Line 79
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    nop
    sh	$a5,8($a1)
    # Line 80
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sh	$v1,10($a1)
    # Line 81
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    sh	$v0,12($a1)
    # Line 82
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 84
    addiu	$a2,$a2,32
    # Line 83
    addiu	$a1,$a1,16
    # Line 82
    mfc1	$at,$f0
    # Line 78
    addiu	$a7,$a7,-2
    bne	$a7,$s2,.L0da92114
    # Line 82
    sh	$at,-2($a1)
    move	$s0,$a1
.L0da921e4:
    # Line 48
    addiu	$s3,$s3,1
    # Line 86
    ld	$at,72($sp)
    # Line 48
    beq	$s3,$s7,.L0da9243c
    # Line 86
    addu	$s0,$at,$s0
.L0da921f4:
    # Line 50
    ld	$t9,88($sp)
    # Line 49
    move	$s1,$s4
    # Line 50
    move	$a1,$s6
    move	$a0,$t9
    lw	$t9,176($t9)
    move	$a2,$s3
    move	$a3,$s4
    jalr	$t9
    move	$a4,$s5
    # Line 53
    ld	$at,56($sp)
    beqz	$at,.L0da923b0
    ld	$a1,64($sp)
.L0da92224:
    # Line 54
    lwc1	$f3,0($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,0($s0)
    # Line 55
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    nop
    sh	$a5,2($s0)
    # Line 56
    lwc1	$f1,8($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($s0)
    # Line 57
    lwc1	$f0,12($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,6($s0)
    # Line 59
    lwc1	$f3,16($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,8($s0)
    # Line 60
    lwc1	$f2,20($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    nop
    sh	$a5,10($s0)
    # Line 61
    lwc1	$f1,24($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,12($s0)
    # Line 62
    lwc1	$f0,28($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,14($s0)
    # Line 64
    lwc1	$f3,32($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,16($s0)
    # Line 65
    lwc1	$f2,36($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    nop
    sh	$a5,18($s0)
    # Line 66
    lwc1	$f1,40($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,20($s0)
    # Line 67
    lwc1	$f0,44($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,22($s0)
    # Line 69
    lwc1	$f3,48($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,24($s0)
    # Line 70
    lwc1	$f2,52($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    nop
    sh	$a5,26($s0)
    # Line 71
    lwc1	$f1,56($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,28($s0)
    # Line 72
    lwc1	$f0,60($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 74
    addiu	$s1,$s1,64
    # Line 73
    addiu	$s0,$s0,32
    # Line 72
    mfc1	$v0,$f0
    # Line 53
    addiu	$a1,$a1,-1
    bne	$a1,$s2,.L0da92224
    # Line 72
    sh	$v0,-2($s0)
.L0da923b0:
    # Line 78
    ld	$v0,40($sp)
    ld	$a2,80($sp)
    beqz	$v0,.L0da921e4
    ld	$a1,48($sp)
    andi	$v1,$a2,0x1
    beqz	$v1,.L0da920f8
    move	$a6,$s1
    # Line 79
    lwc1	$f3,0($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sh	$v1,0($s0)
    # Line 80
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sh	$v0,2($s0)
    # Line 81
    lwc1	$f1,8($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sh	$at,4($s0)
    # Line 82
    lwc1	$f0,12($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 78
    addiu	$a1,$a1,-1
    # Line 82
    mfc1	$a5,$f0
    # Line 84
    addiu	$s1,$s1,16
    # Line 83
    addiu	$s0,$s0,8
    # Line 82
    sh	$a5,-2($s0)
    b	.L0da920f4
    nop
.L0da9243c:
    # ld	gp,144(sp)
    # Line 88
    ld	$s0,112($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    ld	$s3,136($sp)
    ld	$s4,120($sp)
    ld	$s5,160($sp)
    ld	$s6,104($sp)
    ld	$s7,152($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,24($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,8($sp)
    ld	$ra,128($sp)
    ld	$a0,184($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end Load

# Function: Accumulate
# Declared: Line 90 (Source lines: 91-158)
# Address: 0x0da92484 - 0x0da929cc (Size: 1352 bytes, Frame: 0)
.ent Accumulate
Accumulate:
    # Line 91
    move	$at,$s8
    lui	$v0,0x1
    ori	$v0,$v0,0xd0
    subu	$sp,$sp,$v0
    addu	$s8,$sp,$v0
    sd	$s4,120($sp)
    sdc1	$f30,8($sp)
    # Line 116
    lwc1	$f30,84($a0)
    sdc1	$f22,32($sp)
    # Line 115
    lwc1	$f22,80($a0)
    # Line 116
    mul.s	$f30,$f30,$f13
    sdc1	$f24,24($sp)
    # Line 114
    lwc1	$f24,76($a0)
    # Line 115
    mul.s	$f22,$f22,$f13
    sdc1	$f28,16($sp)
    # Line 113
    lwc1	$f28,72($a0)
    # Line 114
    mul.s	$f24,$f24,$f13
    sd	$ra,128($sp)
    sd	$at,184($sp)
    # Line 113
    mul.s	$f28,$f28,$f13
    sd	$s2,168($sp)
    sd	$s5,160($sp)
    sd	$s0,112($sp)
    # Line 106
    lw	$s0,16($a0)
    # sd	gp,144(sp)
    sd	$s1,176($sp)
    # Line 92
    lw	$s1,0($a0)
    sd	$s3,136($sp)
    sd	$s7,152($sp)
    # Line 106
    lw	$s7,3376($s1)
    # Line 94
    lw	$s3,29708($s1)
    # Line 106
    lw	$a2,28($a0)
    sd	$s6,104($sp)
    subu	$s7,$s3,$s7
    mult	$s7,$a2
    # Line 91
    lui	$s6,0x16
    addiu	$s6,$s6,21476
    # addu	gp,t9,s6
    # Line 95
    lw	$s5,29712($s1)
    # Line 107
    lw	$a1,11772($s1)
    # Line 93
    lw	$s6,29704($s1)
    # Line 96
    lw	$s7,29716($s1)
    # Line 106
    lw	$s1,3372($s1)
    # Line 111
    subu	$s5,$s5,$s6
    subu	$a2,$a2,$s5
    # Line 106
    sll	$s1,$s1,0x3
    # Line 116
    slt	$at,$s3,$s7
    # Line 106
    mflo	$s2
    sll	$s2,$s2,0x3
    addu	$s0,$s0,$s2
    sll	$s2,$s6,0x3
    addu	$s0,$s0,$s2
    # Line 116
    beqz	$at,.L0da92984
    # Line 106
    subu	$s0,$s0,$s1
    sd	$a1,88($sp)
    # Line 116
    li	$s2,-1
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-16
    sll	$v1,$a2,0x3
    sd	$v1,72($sp)
    andi	$v1,$s5,0x3
    sd	$v1,80($sp)
    addiu	$v0,$v1,-1
    slti	$v1,$v1,1
    xori	$v1,$v1,0x1
    sd	$v1,40($sp)
    sd	$v0,48($sp)
    sra	$v0,$s5,0x2
    addiu	$at,$v0,-1
    sd	$at,64($sp)
    sd	$v0,96($sp)
    slti	$v0,$v0,1
    xori	$v0,$v0,0x1
    b	.L0da926d8
    sd	$v0,56($sp)
.L0da925b4:
    move	$a3,$a1
.L0da925b8:
    move	$a6,$s0
    move	$a4,$s1
    sra	$a5,$a2,0x1
    beqz	$a5,.L0da926c8
    move	$a2,$a4
    move	$a7,$a3
    move	$a1,$a6
.L0da925d4:
    # Line 149
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    lh	$v1,0($a1)
    addu	$v1,$v1,$a5
    sh	$v1,0($a1)
    # Line 150
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    lh	$at,2($a1)
    addu	$at,$at,$v0
    sh	$at,2($a1)
    # Line 151
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    lh	$v1,4($a1)
    addu	$v1,$v1,$a5
    sh	$v1,4($a1)
    # Line 152
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    lh	$at,6($a1)
    addu	$at,$at,$v0
    sh	$at,6($a1)
    # Line 149
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    lh	$v1,8($a1)
    addu	$v1,$v1,$a5
    sh	$v1,8($a1)
    # Line 150
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    lh	$at,10($a1)
    addu	$at,$at,$v0
    sh	$at,10($a1)
    # Line 151
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    lh	$v1,12($a1)
    addu	$v1,$v1,$a5
    sh	$v1,12($a1)
    # Line 152
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 154
    addiu	$a2,$a2,32
    # Line 152
    mfc1	$v0,$f0
    lh	$at,14($a1)
    # Line 153
    addiu	$a1,$a1,16
    # Line 148
    addiu	$a7,$a7,-2
    # Line 152
    addu	$at,$at,$v0
    # Line 148
    bne	$a7,$s2,.L0da925d4
    # Line 152
    sh	$at,-2($a1)
    move	$s0,$a1
.L0da926c8:
    # Line 118
    addiu	$s3,$s3,1
    # Line 156
    ld	$at,72($sp)
    # Line 118
    beq	$s3,$s7,.L0da92984
    # Line 156
    addu	$s0,$at,$s0
.L0da926d8:
    # Line 120
    ld	$t9,88($sp)
    # Line 119
    move	$s1,$s4
    # Line 120
    move	$a1,$s6
    move	$a0,$t9
    lw	$t9,176($t9)
    move	$a2,$s3
    move	$a3,$s4
    jalr	$t9
    move	$a4,$s5
    # Line 123
    ld	$at,56($sp)
    beqz	$at,.L0da928d8
    ld	$a1,64($sp)
.L0da92708:
    # Line 124
    lwc1	$f3,0($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    lh	$a5,0($s0)
    addu	$a5,$a5,$at
    sh	$a5,0($s0)
    # Line 125
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    lh	$v0,2($s0)
    addu	$v0,$v0,$v1
    sh	$v0,2($s0)
    # Line 126
    lwc1	$f1,8($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    lh	$a5,4($s0)
    addu	$a5,$a5,$at
    sh	$a5,4($s0)
    # Line 127
    lwc1	$f0,12($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    lh	$v0,6($s0)
    addu	$v0,$v0,$v1
    sh	$v0,6($s0)
    # Line 129
    lwc1	$f3,16($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    lh	$a5,8($s0)
    addu	$a5,$a5,$at
    sh	$a5,8($s0)
    # Line 130
    lwc1	$f2,20($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    lh	$v0,10($s0)
    addu	$v0,$v0,$v1
    sh	$v0,10($s0)
    # Line 131
    lwc1	$f1,24($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    lh	$a5,12($s0)
    addu	$a5,$a5,$at
    sh	$a5,12($s0)
    # Line 132
    lwc1	$f0,28($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    lh	$v0,14($s0)
    addu	$v0,$v0,$v1
    sh	$v0,14($s0)
    # Line 134
    lwc1	$f3,32($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    lh	$a5,16($s0)
    addu	$a5,$a5,$at
    sh	$a5,16($s0)
    # Line 135
    lwc1	$f2,36($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    lh	$v0,18($s0)
    addu	$v0,$v0,$v1
    sh	$v0,18($s0)
    # Line 136
    lwc1	$f1,40($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    lh	$a5,20($s0)
    addu	$a5,$a5,$at
    sh	$a5,20($s0)
    # Line 137
    lwc1	$f0,44($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    lh	$v0,22($s0)
    addu	$v0,$v0,$v1
    sh	$v0,22($s0)
    # Line 139
    lwc1	$f3,48($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    lh	$a5,24($s0)
    addu	$a5,$a5,$at
    sh	$a5,24($s0)
    # Line 140
    lwc1	$f2,52($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    lh	$v0,26($s0)
    addu	$v0,$v0,$v1
    sh	$v0,26($s0)
    # Line 141
    lwc1	$f1,56($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    lh	$a5,28($s0)
    addu	$a5,$a5,$at
    sh	$a5,28($s0)
    # Line 142
    lwc1	$f0,60($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 144
    addiu	$s1,$s1,64
    # Line 142
    mfc1	$v1,$f0
    lh	$v0,30($s0)
    # Line 143
    addiu	$s0,$s0,32
    # Line 123
    addiu	$a1,$a1,-1
    # Line 142
    addu	$v0,$v0,$v1
    # Line 123
    bne	$a1,$s2,.L0da92708
    # Line 142
    sh	$v0,-2($s0)
.L0da928d8:
    # Line 148
    ld	$v0,40($sp)
    ld	$a2,80($sp)
    beqz	$v0,.L0da926c8
    ld	$a1,48($sp)
    andi	$v1,$a2,0x1
    beqz	$v1,.L0da925b8
    move	$a3,$a1
    # Line 149
    lwc1	$f3,0($s1)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    lh	$v0,0($s0)
    mfc1	$v1,$f3
    nop
    addu	$v0,$v0,$v1
    sh	$v0,0($s0)
    # Line 150
    lwc1	$f2,4($s1)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    lh	$a5,2($s0)
    mfc1	$at,$f2
    nop
    addu	$a5,$a5,$at
    sh	$a5,2($s0)
    # Line 151
    lwc1	$f1,8($s1)
    mul.s	$f1,$f1,$f22
    trunc.w.s	$f1,$f1
    lh	$v0,4($s0)
    mfc1	$v1,$f1
    nop
    addu	$v0,$v0,$v1
    sh	$v0,4($s0)
    # Line 152
    lwc1	$f0,12($s1)
    mul.s	$f0,$f0,$f30
    trunc.w.s	$f0,$f0
    # Line 148
    addiu	$a1,$a1,-1
    # Line 152
    lh	$a5,6($s0)
    mfc1	$at,$f0
    # Line 154
    addiu	$s1,$s1,16
    # Line 153
    addiu	$s0,$s0,8
    # Line 152
    addu	$a5,$a5,$at
    sh	$a5,-2($s0)
    b	.L0da925b4
    nop
.L0da92984:
    # ld	gp,144(sp)
    # Line 158
    ld	$s0,112($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    ld	$s3,136($sp)
    ld	$s4,120($sp)
    ld	$s5,160($sp)
    ld	$s6,104($sp)
    ld	$s7,152($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,24($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,8($sp)
    ld	$ra,128($sp)
    ld	$a0,184($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end Accumulate

# Function: Mult
# Declared: Line 160 (Source lines: 161-221)
# Address: 0x0da929cc - 0x0da92f10 (Size: 1348 bytes, Frame: 48)
.ent Mult
Mult:
    # Line 162
    lw	$v1,0($a0)
    # Line 170
    lw	$v0,3376($v1)
    # Line 164
    lw	$a5,29708($v1)
    # Line 170
    lw	$t1,28($a0)
    # Line 166
    lw	$a6,29716($v1)
    # Line 170
    subu	$v0,$a5,$v0
    mult	$v0,$t1
    # Line 161
    addiu	$sp,$sp,-48
    # Line 172
    slt	$a4,$a5,$a6
    # Line 165
    lw	$t0,29712($v1)
    # Line 161
    lui	$a1,0x16
    addiu	$a1,$a1,20124
    # addu	at,t9,a1
    # Line 172
    mtc1	$zero,$f0
    # Line 163
    lw	$v0,29704($v1)
    # Line 170
    lw	$a3,16($a0)
    # Line 172
    c.eq.s	$f13,$f0
    subu	$t0,$t0,$v0
    subu	$t1,$t1,$t0
    # Line 170
    mflo	$t9
    sll	$t9,$t9,0x3
    addu	$a3,$a3,$t9
    lw	$t9,3372($v1)
    sll	$v0,$v0,0x3
    addu	$a3,$a3,$v0
    sll	$t9,$t9,0x3
    # Line 172
    bc1f	.L0da92a4c
    # Line 170
    subu	$a3,$a3,$t9
    # Line 172
    beqz	$a4,.L0da92b3c
    nop
    b	.L0da92b1c
    sll	$a7,$t1,0x3
.L0da92a4c:
    # Line 185
    beqz	$a4,.L0da92f08
    sd	$t1,24($sp)
    li	$a4,-1
    andi	$t9,$t0,0x3
    addiu	$t2,$t9,-1
    sra	$t1,$t0,0x2
    sd	$t1,16($sp)
    addiu	$t3,$t1,-1
    slti	$t1,$t1,1
    slti	$t8,$t9,1
    xori	$t8,$t8,0x1
    ld	$a7,24($sp)
    xori	$t1,$t1,0x1
    b	.L0da92c74
    sll	$a7,$a7,0x3
.L0da92a88:
    # Line 181
    addiu	$a2,$a2,-1
.L0da92a8c:
    # Line 180
    addiu	$a3,$a3,8
    # Line 179
    sh	$zero,-2($a3)
    sh	$zero,-4($a3)
    sh	$zero,-6($a3)
    addi	$a4,$a4,-1
    bnez	$a4,.L0da92a88
    sh	$zero,-8($a3)
    move	$a4,$a2
.L0da92aac:
    sra	$v0,$t1,0x2
    beqz	$v0,.L0da92b10
    move	$t2,$a3
    move	$a3,$a4
    move	$a2,$t2
.L0da92ac0:
    # Line 180
    addiu	$a2,$a2,32
    # Line 179
    sh	$zero,-2($a2)
    sh	$zero,-4($a2)
    sh	$zero,-6($a2)
    sh	$zero,-8($a2)
    sh	$zero,-10($a2)
    sh	$zero,-12($a2)
    sh	$zero,-14($a2)
    sh	$zero,-16($a2)
    sh	$zero,-18($a2)
    sh	$zero,-20($a2)
    sh	$zero,-22($a2)
    sh	$zero,-24($a2)
    sh	$zero,-26($a2)
    sh	$zero,-28($a2)
    sh	$zero,-30($a2)
    # Line 181
    addiu	$a3,$a3,-4
    bnez	$a3,.L0da92ac0
    # Line 179
    sh	$zero,-32($a2)
    move	$a3,$a2
.L0da92b10:
    # Line 176
    addiu	$a5,$a5,1
    beq	$a5,$a6,.L0da92b3c
    # Line 183
    addu	$a3,$a7,$a3
.L0da92b1c:
    # Line 177
    move	$t1,$t0
    blez	$t0,.L0da92b10
    move	$a2,$t0
    andi	$a4,$t0,0x3
    beqzl	$a4,.L0da92aac
    move	$a4,$a2
    b	.L0da92a8c
    # Line 181
    addiu	$a2,$a2,-1
.L0da92b3c:
    # Line 185
    jr	$ra
    addiu	$sp,$sp,48
.L0da92b44:
    sd	$t0,0($sp)
.L0da92b48:
    ld	$v1,0($sp)
    move	$t0,$a2
    move	$a0,$a3
    sra	$v1,$v1,0x1
    beqz	$v1,.L0da92c68
    sd	$a3,8($sp)
    move	$a3,$t0
    ld	$a2,8($sp)
.L0da92b68:
    # Line 216
    lh	$a0,14($a2)
    mtc1	$a0,$f0
    # Line 215
    lh	$v1,12($a2)
    # Line 216
    cvt.s.w	$f0,$f0
    # Line 215
    mtc1	$v1,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 216
    mul.s	$f0,$f0,$f13
    # Line 215
    mul.s	$f7,$f7,$f13
    # Line 214
    lh	$v0,10($a2)
    mtc1	$v0,$f6
    # Line 213
    lh	$a1,8($a2)
    # Line 214
    cvt.s.w	$f6,$f6
    # Line 213
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 214
    mul.s	$f6,$f6,$f13
    # Line 213
    mul.s	$f5,$f5,$f13
    # Line 216
    lh	$a0,6($a2)
    mtc1	$a0,$f4
    # Line 215
    lh	$v1,4($a2)
    # Line 216
    cvt.s.w	$f4,$f4
    # Line 215
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 216
    mul.s	$f4,$f4,$f13
    # Line 215
    mul.s	$f3,$f3,$f13
    # Line 214
    lh	$v0,2($a2)
    mtc1	$v0,$f2
    # Line 213
    lh	$a1,0($a2)
    # Line 214
    cvt.s.w	$f2,$f2
    # Line 213
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 214
    mul.s	$f2,$f2,$f13
    # Line 213
    mul.s	$f1,$f1,$f13
    # Line 216
    trunc.w.s	$f0,$f0
    # Line 215
    trunc.w.s	$f7,$f7
    # Line 217
    addiu	$a2,$a2,16
    # Line 212
    addiu	$a3,$a3,-2
    # Line 214
    trunc.w.s	$f6,$f6
    # Line 216
    mfc1	$a0,$f0
    # Line 215
    mfc1	$v1,$f7
    # Line 213
    trunc.w.s	$f5,$f5
    # Line 216
    sh	$a0,-2($a2)
    # Line 215
    sh	$v1,-4($a2)
    # Line 216
    trunc.w.s	$f4,$f4
    # Line 214
    mfc1	$v0,$f6
    # Line 213
    mfc1	$a1,$f5
    # Line 215
    trunc.w.s	$f3,$f3
    # Line 214
    sh	$v0,-6($a2)
    # Line 213
    sh	$a1,-8($a2)
    # Line 214
    trunc.w.s	$f2,$f2
    # Line 216
    mfc1	$a0,$f4
    # Line 215
    mfc1	$v1,$f3
    # Line 213
    trunc.w.s	$f1,$f1
    # Line 216
    sh	$a0,-10($a2)
    # Line 214
    mfc1	$v0,$f2
    # Line 215
    sh	$v1,-12($a2)
    # Line 213
    mfc1	$a1,$f1
    # Line 214
    sh	$v0,-14($a2)
    # Line 212
    bne	$a3,$a4,.L0da92b68
    # Line 213
    sh	$a1,-16($a2)
    move	$a3,$a2
.L0da92c68:
    # Line 190
    addiu	$a5,$a5,1
    beq	$a5,$a6,.L0da92f08
    # Line 219
    addu	$a3,$a7,$a3
.L0da92c74:
    # Line 192
    beqz	$t1,.L0da92e68
    move	$a2,$t3
.L0da92c7c:
    # Line 208
    lh	$a0,30($a3)
    mtc1	$a0,$f0
    # Line 207
    lh	$v1,28($a3)
    # Line 208
    cvt.s.w	$f0,$f0
    # Line 207
    mtc1	$v1,$f16
    nop
    cvt.s.w	$f16,$f16
    # Line 208
    mul.s	$f0,$f0,$f13
    # Line 207
    mul.s	$f16,$f16,$f13
    # Line 206
    lh	$v0,26($a3)
    mtc1	$v0,$f15
    # Line 205
    lh	$a1,24($a3)
    # Line 206
    cvt.s.w	$f15,$f15
    # Line 205
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    # Line 206
    mul.s	$f15,$f15,$f13
    # Line 205
    mul.s	$f14,$f14,$f13
    # Line 204
    lh	$a0,22($a3)
    mtc1	$a0,$f12
    # Line 203
    lh	$v1,20($a3)
    # Line 204
    cvt.s.w	$f12,$f12
    # Line 203
    mtc1	$v1,$f11
    nop
    cvt.s.w	$f11,$f11
    # Line 204
    mul.s	$f12,$f12,$f13
    # Line 203
    mul.s	$f11,$f11,$f13
    # Line 202
    lh	$v0,18($a3)
    mtc1	$v0,$f10
    # Line 201
    lh	$a1,16($a3)
    # Line 202
    cvt.s.w	$f10,$f10
    # Line 201
    mtc1	$a1,$f9
    nop
    cvt.s.w	$f9,$f9
    # Line 202
    mul.s	$f10,$f10,$f13
    # Line 201
    mul.s	$f9,$f9,$f13
    # Line 200
    lh	$a0,14($a3)
    mtc1	$a0,$f8
    # Line 199
    lh	$v1,12($a3)
    # Line 200
    cvt.s.w	$f8,$f8
    # Line 199
    mtc1	$v1,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 200
    mul.s	$f8,$f8,$f13
    # Line 199
    mul.s	$f7,$f7,$f13
    # Line 198
    lh	$v0,10($a3)
    mtc1	$v0,$f6
    # Line 197
    lh	$a1,8($a3)
    # Line 198
    cvt.s.w	$f6,$f6
    # Line 197
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 198
    mul.s	$f6,$f6,$f13
    # Line 197
    mul.s	$f5,$f5,$f13
    # Line 196
    lh	$a0,6($a3)
    mtc1	$a0,$f4
    # Line 195
    lh	$v1,4($a3)
    # Line 196
    cvt.s.w	$f4,$f4
    # Line 195
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 196
    mul.s	$f4,$f4,$f13
    # Line 195
    mul.s	$f3,$f3,$f13
    # Line 194
    lh	$v0,2($a3)
    mtc1	$v0,$f2
    # Line 193
    lh	$a1,0($a3)
    # Line 194
    cvt.s.w	$f2,$f2
    # Line 193
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 194
    mul.s	$f2,$f2,$f13
    # Line 193
    mul.s	$f1,$f1,$f13
    # Line 208
    trunc.w.s	$f0,$f0
    # Line 207
    trunc.w.s	$f16,$f16
    # Line 209
    addiu	$a3,$a3,32
    # Line 192
    addiu	$a2,$a2,-1
    # Line 206
    trunc.w.s	$f15,$f15
    # Line 208
    mfc1	$a0,$f0
    # Line 207
    mfc1	$v1,$f16
    # Line 205
    trunc.w.s	$f14,$f14
    # Line 208
    sh	$a0,-2($a3)
    # Line 207
    sh	$v1,-4($a3)
    # Line 204
    trunc.w.s	$f12,$f12
    # Line 206
    mfc1	$v0,$f15
    # Line 205
    mfc1	$a1,$f14
    # Line 203
    trunc.w.s	$f11,$f11
    # Line 206
    sh	$v0,-6($a3)
    # Line 205
    sh	$a1,-8($a3)
    # Line 202
    trunc.w.s	$f10,$f10
    # Line 204
    mfc1	$a0,$f12
    # Line 203
    mfc1	$v1,$f11
    # Line 201
    trunc.w.s	$f9,$f9
    # Line 204
    sh	$a0,-10($a3)
    # Line 203
    sh	$v1,-12($a3)
    # Line 200
    trunc.w.s	$f8,$f8
    # Line 202
    mfc1	$v0,$f10
    # Line 201
    mfc1	$a1,$f9
    # Line 199
    trunc.w.s	$f7,$f7
    # Line 202
    sh	$v0,-14($a3)
    # Line 201
    sh	$a1,-16($a3)
    # Line 198
    trunc.w.s	$f6,$f6
    # Line 200
    mfc1	$a0,$f8
    # Line 199
    mfc1	$v1,$f7
    # Line 197
    trunc.w.s	$f5,$f5
    # Line 200
    sh	$a0,-18($a3)
    # Line 199
    sh	$v1,-20($a3)
    # Line 196
    trunc.w.s	$f4,$f4
    # Line 198
    mfc1	$v0,$f6
    # Line 197
    mfc1	$a1,$f5
    # Line 195
    trunc.w.s	$f3,$f3
    # Line 198
    sh	$v0,-22($a3)
    # Line 197
    sh	$a1,-24($a3)
    # Line 194
    trunc.w.s	$f2,$f2
    # Line 196
    mfc1	$a0,$f4
    # Line 195
    mfc1	$v1,$f3
    # Line 193
    trunc.w.s	$f1,$f1
    # Line 196
    sh	$a0,-26($a3)
    # Line 194
    mfc1	$v0,$f2
    # Line 195
    sh	$v1,-28($a3)
    # Line 193
    mfc1	$a1,$f1
    # Line 194
    sh	$v0,-30($a3)
    # Line 192
    bne	$a2,$a4,.L0da92c7c
    # Line 193
    sh	$a1,-32($a3)
.L0da92e68:
    # Line 212
    move	$t0,$t9
    beqz	$t8,.L0da92c68
    move	$a2,$t2
    andi	$a1,$t9,0x1
    beqzl	$a1,.L0da92b48
    sd	$t0,0($sp)
    # Line 214
    lh	$v1,2($a3)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f13
    # Line 215
    lh	$a0,4($a3)
    mtc1	$a0,$f3
    # Line 213
    lh	$v0,0($a3)
    # Line 215
    cvt.s.w	$f3,$f3
    # Line 213
    mtc1	$v0,$f1
    # Line 216
    lh	$a1,6($a3)
    # Line 213
    cvt.s.w	$f1,$f1
    # Line 216
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 213
    mul.s	$f1,$f1,$f13
    # Line 215
    mul.s	$f3,$f3,$f13
    # Line 216
    mul.s	$f0,$f0,$f13
    # Line 215
    trunc.w.s	$f3,$f3
    # Line 216
    trunc.w.s	$f0,$f0
    # Line 213
    trunc.w.s	$f1,$f1
    # Line 212
    addiu	$a2,$a2,-1
    # Line 217
    addiu	$a3,$a3,8
    # Line 214
    trunc.w.s	$f2,$f2
    # Line 213
    mfc1	$v0,$f1
    # Line 216
    mfc1	$a1,$f0
    # Line 215
    mfc1	$a0,$f3
    # Line 214
    mfc1	$v1,$f2
    # Line 216
    sh	$a1,-2($a3)
    # Line 215
    sh	$a0,-4($a3)
    # Line 214
    sh	$v1,-6($a3)
    # Line 213
    sh	$v0,-8($a3)
    b	.L0da92b44
    sd	$t0,0($sp)
.L0da92f08:
    # Line 221
    jr	$ra
    addiu	$sp,$sp,48
.end Mult

# Function: Add
# Declared: Line 223 (Source lines: 224-264)
# Address: 0x0da92f10 - 0x0da93218 (Size: 776 bytes, Frame: 192)
.ent Add
Add:
    # Line 225
    lw	$a3,0($a0)
    # Line 238
    lwc1	$f3,30764($a3)
    # Line 229
    lw	$t8,29716($a3)
    # Line 240
    lwc1	$f5,30796($a3)
    # Line 238
    mul.s	$f3,$f3,$f13
    # Line 226
    lw	$a4,29704($a3)
    # Line 243
    lw	$t2,28($a0)
    # Line 240
    mul.s	$f5,$f5,$f13
    # Line 238
    lwc1	$f2,80($a0)
    # Line 234
    lwc1	$f0,72($a0)
    # Line 240
    lwc1	$f4,84($a0)
    # Line 238
    mul.s	$f2,$f2,$f3
    # Line 224
    addiu	$sp,$sp,-64
    # Line 236
    lwc1	$f3,30760($a3)
    # Line 240
    mul.s	$f4,$f4,$f5
    sd	$s7,32($sp)
    # Line 234
    lwc1	$f5,30756($a3)
    # Line 236
    mul.s	$f3,$f3,$f13
    # Line 243
    lw	$s7,3376($a3)
    # Line 227
    lw	$t0,29708($a3)
    # Line 234
    mul.s	$f5,$f5,$f13
    # Line 236
    lwc1	$f1,76($a0)
    # Line 243
    subu	$s7,$t0,$s7
    mult	$s7,$t2
    # Line 236
    mul.s	$f1,$f1,$f3
    # Line 228
    lw	$t1,29712($a3)
    # Line 234
    lwc1	$f3,3280($a3)
    mul.s	$f0,$f0,$f5
    # Line 247
    slt	$at,$t0,$t8
    # Line 240
    add.s	$f4,$f4,$f3
    # Line 247
    subu	$t1,$t1,$a4
    subu	$t2,$t2,$t1
    # Line 238
    add.s	$f2,$f2,$f3
    # Line 243
    lw	$a2,16($a0)
    sll	$a4,$a4,0x3
    # Line 240
    trunc.w.s	$f4,$f4
    # Line 243
    mflo	$a5
    sll	$a5,$a5,0x3
    # Line 238
    trunc.w.s	$f2,$f2
    # Line 243
    addu	$a2,$a2,$a5
    lw	$a3,3372($a3)
    # Line 234
    add.s	$f0,$f0,$f3
    # Line 243
    addu	$a2,$a2,$a4
    sll	$a3,$a3,0x3
    # Line 236
    add.s	$f1,$f1,$f3
    # Line 243
    subu	$a2,$a2,$a3
    # Line 238
    mfc1	$a3,$f2
    # Line 234
    trunc.w.s	$f0,$f0
    # Line 240
    mfc1	$a4,$f4
    # Line 238
    dsll32	$a3,$a3,0x10
    # Line 236
    trunc.w.s	$f1,$f1
    # Line 240
    dsll32	$a4,$a4,0x10
    dsra32	$a4,$a4,0x10
    # Line 234
    mfc1	$a6,$f0
    # Line 236
    mfc1	$a5,$f1
    # Line 238
    dsra32	$a3,$a3,0x10
    # Line 234
    dsll32	$a6,$a6,0x10
    # Line 236
    dsll32	$a5,$a5,0x10
    dsra32	$a5,$a5,0x10
    # Line 247
    beqz	$at,.L0da9320c
    # Line 234
    dsra32	$a6,$a6,0x10
    # Line 247
    li	$a7,-1
    sll	$v1,$t2,0x3
    sd	$v1,0($sp)
    sra	$t9,$t1,0x2
    sd	$t9,16($sp)
    addiu	$v0,$t9,-1
    slti	$t9,$t9,1
    sd	$v0,40($sp)
    xori	$t9,$t9,0x1
    andi	$at,$t1,0x3
    sd	$at,8($sp)
    addiu	$s7,$at,-1
    slti	$at,$at,1
    xori	$at,$at,0x1
    b	.L0da930dc
    sd	$at,24($sp)
.L0da93044:
    move	$t3,$a1
.L0da93048:
    sra	$a0,$t1,0x1
    beqz	$a0,.L0da930cc
    move	$t2,$a2
    move	$a2,$t3
    move	$a1,$t2
.L0da9305c:
    # Line 260
    addiu	$a1,$a1,16
    # Line 259
    lh	$a0,-2($a1)
    # Line 258
    addiu	$a2,$a2,-2
    # Line 259
    lh	$v1,-4($a1)
    addu	$a0,$a0,$a4
    sh	$a0,-2($a1)
    addu	$v1,$v1,$a3
    lh	$v0,-6($a1)
    sh	$v1,-4($a1)
    lh	$at,-8($a1)
    addu	$v0,$v0,$a5
    sh	$v0,-6($a1)
    addu	$at,$at,$a6
    lh	$a0,-10($a1)
    sh	$at,-8($a1)
    lh	$v1,-12($a1)
    addu	$a0,$a0,$a4
    sh	$a0,-10($a1)
    addu	$v1,$v1,$a3
    lh	$v0,-14($a1)
    sh	$v1,-12($a1)
    lh	$at,-16($a1)
    addu	$v0,$v0,$a5
    sh	$v0,-14($a1)
    addu	$at,$at,$a6
    # Line 258
    bne	$a2,$a7,.L0da9305c
    # Line 259
    sh	$at,-16($a1)
    move	$a2,$a1
.L0da930cc:
    # Line 248
    addiu	$t0,$t0,1
    # Line 262
    ld	$at,0($sp)
    # Line 248
    beq	$t0,$t8,.L0da9320c
    # Line 262
    addu	$a2,$at,$a2
.L0da930dc:
    # Line 250
    beqz	$t9,.L0da931b0
    ld	$a1,40($sp)
.L0da930e4:
    # Line 255
    addiu	$a2,$a2,32
    # Line 254
    lh	$at,-2($a2)
    # Line 250
    addiu	$a1,$a1,-1
    # Line 254
    lh	$a0,-4($a2)
    addu	$at,$at,$a4
    sh	$at,-2($a2)
    addu	$a0,$a0,$a3
    lh	$v1,-6($a2)
    sh	$a0,-4($a2)
    lh	$v0,-8($a2)
    addu	$v1,$v1,$a5
    sh	$v1,-6($a2)
    addu	$v0,$v0,$a6
    # Line 253
    lh	$at,-10($a2)
    # Line 254
    sh	$v0,-8($a2)
    # Line 253
    lh	$a0,-12($a2)
    addu	$at,$at,$a4
    sh	$at,-10($a2)
    addu	$a0,$a0,$a3
    lh	$v1,-14($a2)
    sh	$a0,-12($a2)
    lh	$v0,-16($a2)
    addu	$v1,$v1,$a5
    sh	$v1,-14($a2)
    addu	$v0,$v0,$a6
    # Line 252
    lh	$at,-18($a2)
    # Line 253
    sh	$v0,-16($a2)
    # Line 252
    lh	$a0,-20($a2)
    addu	$at,$at,$a4
    sh	$at,-18($a2)
    addu	$a0,$a0,$a3
    lh	$v1,-22($a2)
    sh	$a0,-20($a2)
    lh	$v0,-24($a2)
    addu	$v1,$v1,$a5
    sh	$v1,-22($a2)
    addu	$v0,$v0,$a6
    # Line 251
    lh	$at,-26($a2)
    # Line 252
    sh	$v0,-24($a2)
    # Line 251
    lh	$a0,-28($a2)
    addu	$at,$at,$a4
    sh	$at,-26($a2)
    addu	$a0,$a0,$a3
    lh	$v1,-30($a2)
    sh	$a0,-28($a2)
    lh	$v0,-32($a2)
    addu	$v1,$v1,$a5
    sh	$v1,-30($a2)
    addu	$v0,$v0,$a6
    # Line 250
    bne	$a1,$a7,.L0da930e4
    # Line 251
    sh	$v0,-32($a2)
.L0da931b0:
    # Line 258
    ld	$v0,24($sp)
    ld	$t1,8($sp)
    beqz	$v0,.L0da930cc
    move	$a1,$s7
    andi	$v1,$t1,0x1
    beqz	$v1,.L0da93048
    move	$t3,$a1
    addiu	$a1,$a1,-1
    # Line 260
    addiu	$a2,$a2,8
    # Line 259
    lh	$v1,-2($a2)
    lh	$a0,-8($a2)
    lh	$at,-6($a2)
    lh	$v0,-4($a2)
    addu	$a0,$a0,$a6
    addu	$at,$at,$a5
    addu	$v0,$v0,$a3
    addu	$v1,$v1,$a4
    sh	$v1,-2($a2)
    sh	$v0,-4($a2)
    sh	$at,-6($a2)
    sh	$a0,-8($a2)
    b	.L0da93044
    nop
.L0da9320c:
    # Line 264
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end Add

# Function: Return
# Declared: Line 266 (Source lines: 267-298)
# Address: 0x0da93218 - 0x0da933ac (Size: 404 bytes, Frame: 240)
.ent Return
Return:
    # Line 267
    addiu	$sp,$sp,-112
    sdc1	$f20,0($sp)
    sd	$s4,40($sp)
    # Line 268
    lw	$s4,0($a0)
    # Line 267
    mov.s	$f20,$f13
    sd	$s0,32($sp)
    # Line 278
    lw	$v0,3376($s4)
    # Line 270
    lw	$s0,29708($s4)
    # Line 278
    lw	$a2,28($a0)
    sd	$s5,16($sp)
    subu	$v0,$s0,$v0
    mult	$v0,$a2
    # Line 271
    lw	$a3,29712($s4)
    sd	$s2,48($sp)
    # sd	gp,8(sp)
    # Line 272
    lw	$s5,29716($s4)
    # Line 267
    lui	$at,0x16
    addiu	$at,$at,18000
    # addu	gp,t9,at
    # Line 280
    lbu	$at,30656($s4)
    slt	$a1,$s0,$s5
    sd	$s1,24($sp)
    # Line 278
    lw	$s1,16($a0)
    # Line 269
    lw	$s2,29704($s4)
    # Line 278
    mflo	$t9
    sll	$t9,$t9,0x3
    addu	$s1,$s1,$t9
    lw	$t9,3372($s4)
    sll	$v0,$s2,0x3
    addu	$s1,$s1,$v0
    sll	$t9,$t9,0x3
    # Line 280
    beqz	$at,.L0da9334c
    # Line 278
    subu	$s1,$s1,$t9
    sd	$s3,80($sp)
    sd	$s6,72($sp)
    # Line 280
    beqz	$a1,.L0da93324
    sd	$s7,56($sp)
    sd	$ra,64($sp)
    sll	$s6,$a2,0x3
    addiu	$s7,$s4,30888
    subu	$s3,$a3,$s2
    sd	$s8,88($sp)
    addiu	$s8,$s4,30668
    # Line 287
    move	$a0,$s8
.L0da932c8:
    move	$a1,$s2
    move	$a2,$s0
    lw	$t9,30848($s4)
    move	$a3,$s1
    mov.s	$f16,$f20
    jalr	$t9
    move	$a5,$s3
    # Line 288
    move	$a0,$s7
    move	$a1,$s2
    mov.s	$f16,$f20
    move	$a2,$s0
    lw	$t9,31068($s4)
    move	$a3,$s1
    # Line 289
    addu	$s1,$s6,$s1
    # Line 288
    jalr	$t9
    move	$a5,$s3
    # Line 286
    addiu	$s0,$s0,1
    bne	$s0,$s5,.L0da932c8
    # Line 287
    move	$a0,$s8
    ld	$s8,88($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    ld	$s3,80($sp)
.L0da93324:
    # ld	gp,8(sp)
    # Line 298
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s7,56($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da9334c:
    sd	$s7,56($sp)
    # Line 292
    beqz	$a1,.L0da93324
    lw	$s7,11768($s4)
    sd	$ra,64($sp)
    sd	$s6,72($sp)
    sll	$s6,$a2,0x3
    sd	$s3,80($sp)
    subu	$s3,$a3,$s2
    # Line 294
    move	$a0,$s7
.L0da93370:
    move	$a1,$s2
    mov.s	$f16,$f20
    move	$a2,$s0
    lw	$t9,180($s7)
    move	$a3,$s1
    # Line 295
    addu	$s1,$s6,$s1
    # Line 294
    jalr	$t9
    move	$a5,$s3
    # Line 293
    addiu	$s0,$s0,1
    bne	$s0,$s5,.L0da93370
    # Line 294
    move	$a0,$s7
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    b	.L0da93324
    ld	$s3,80($sp)
.end Return

# Function: Clear
# Declared: Line 300 (Source lines: 301-349)
# Address: 0x0da933ac - 0x0da9365c (Size: 688 bytes, Frame: 224)
.ent Clear
Clear:
    # Line 301
    addiu	$sp,$sp,-96
    sd	$s8,8($sp)
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s7,32($sp)
    sd	$s0,48($sp)
    sd	$s1,40($sp)
    sd	$s5,16($sp)
    # sd	gp,56(sp)
    lui	$at,0x16
    addiu	$at,$at,17596
    # Line 302
    lw	$a7,0($a0)
    # Line 301
    # addu	gp,t9,at
    # Line 305
    lw	$t1,16($a0)
    # Line 302
    move	$s5,$a7
    # Line 305
    lw	$s1,29716($a7)
    # Line 304
    lw	$s0,29708($a7)
    # Line 305
    beqz	$t1,.L0da93638
    # Line 303
    lw	$s7,29704($a7)
.L0da933f8:
    # Line 329
    lw	$t0,29712($s5)
    # Line 332
    slt	$v0,$s0,$s1
    # Line 329
    subu	$t0,$t0,$s7
    # Line 328
    sll	$a3,$s7,0x3
    ld	$s7,32($sp)
    # Line 326
    lwc1	$f0,30796($s5)
    lwc1	$f5,1564($s5)
    # Line 328
    lw	$a2,3372($a7)
    # Line 325
    lwc1	$f4,1560($s5)
    # Line 326
    mul.s	$f5,$f5,$f0
    # Line 325
    lwc1	$f0,30764($s5)
    # Line 328
    lw	$a1,28($s4)
    # Line 326
    lwc1	$f3,84($s4)
    # Line 325
    mul.s	$f4,$f4,$f0
    # Line 328
    lw	$t9,3376($a7)
    # Line 324
    lwc1	$f0,30760($s5)
    # Line 326
    mul.s	$f3,$f3,$f5
    # Line 324
    lwc1	$f5,1556($s5)
    # Line 328
    subu	$t9,$s0,$t9
    # Line 325
    lwc1	$f2,80($s4)
    # Line 324
    mul.s	$f5,$f5,$f0
    # Line 328
    mult	$t9,$a1
    # Line 323
    lwc1	$f0,30756($s5)
    # Line 325
    mul.s	$f2,$f2,$f4
    # Line 323
    lwc1	$f4,1552($s5)
    # Line 328
    sll	$a2,$a2,0x3
    # Line 324
    lwc1	$f1,76($s4)
    # Line 323
    mul.s	$f4,$f4,$f0
    # Line 332
    subu	$a1,$a1,$t0
    # Line 331
    andi	$t9,$t0,0x3
    # Line 324
    mul.s	$f1,$f1,$f5
    # Line 330
    sra	$t0,$t0,0x2
    # Line 323
    lwc1	$f0,72($s4)
    ld	$s4,24($sp)
    # Line 328
    mflo	$a0
    # Line 323
    mul.s	$f0,$f0,$f4
    # Line 326
    trunc.w.s	$f3,$f3
    # Line 328
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$t1
    addu	$a0,$a0,$a3
    # Line 326
    mfc1	$a5,$f3
    # Line 325
    trunc.w.s	$f2,$f2
    # Line 328
    subu	$a0,$a0,$a2
    # Line 326
    dsll32	$a5,$a5,0x10
    # Line 324
    trunc.w.s	$f1,$f1
    # Line 325
    mfc1	$a6,$f2
    # Line 326
    dsra32	$a5,$a5,0x10
    # Line 323
    trunc.w.s	$f0,$f0
    # Line 325
    dsll32	$a6,$a6,0x10
    # Line 324
    mfc1	$a4,$f1
    # Line 325
    dsra32	$a6,$a6,0x10
    # Line 323
    mfc1	$a3,$f0
    # Line 324
    dsll32	$a4,$a4,0x10
    dsra32	$a4,$a4,0x10
    # Line 323
    dsll32	$a3,$a3,0x10
    # Line 332
    beqz	$v0,.L0da9361c
    # Line 323
    dsra32	$a3,$a3,0x10
    sd	$t0,64($sp)
    # Line 332
    li	$a7,-1
    addiu	$t3,$t9,-1
    addiu	$t8,$t0,-1
    ld	$s7,32($sp)
    ld	$s4,24($sp)
    slti	$s5,$t0,1
    slti	$s8,$t9,1
    sll	$at,$a1,0x3
    sd	$at,0($sp)
    xori	$s8,$s8,0x1
    b	.L0da93588
    xori	$s5,$s5,0x1
    move	$t1,$a1
.L0da93514:
    sra	$v0,$t0,0x2
    beqz	$v0,.L0da93578
    move	$t2,$a0
    move	$a0,$t1
    move	$a1,$t2
.L0da93528:
    # Line 345
    addiu	$a1,$a1,32
    # Line 344
    sh	$a5,-2($a1)
    sh	$a6,-4($a1)
    sh	$a4,-6($a1)
    sh	$a3,-8($a1)
    sh	$a5,-10($a1)
    sh	$a6,-12($a1)
    sh	$a4,-14($a1)
    sh	$a3,-16($a1)
    sh	$a5,-18($a1)
    sh	$a6,-20($a1)
    sh	$a4,-22($a1)
    sh	$a3,-24($a1)
    sh	$a5,-26($a1)
    sh	$a6,-28($a1)
    sh	$a4,-30($a1)
    # Line 343
    addiu	$a0,$a0,-4
    bne	$a0,$a7,.L0da93528
    # Line 344
    sh	$a3,-32($a1)
    move	$a0,$a1
.L0da93578:
    # Line 333
    addiu	$s0,$s0,1
    # Line 347
    ld	$v1,0($sp)
    # Line 333
    beq	$s0,$s1,.L0da9361c
    # Line 347
    addu	$a0,$v1,$a0
.L0da93588:
    # Line 335
    beqz	$s5,.L0da935dc
    move	$a1,$t8
.L0da93590:
    # Line 340
    addiu	$a0,$a0,32
    # Line 339
    sh	$a5,-2($a0)
    sh	$a6,-4($a0)
    sh	$a4,-6($a0)
    sh	$a3,-8($a0)
    # Line 338
    sh	$a5,-10($a0)
    sh	$a6,-12($a0)
    sh	$a4,-14($a0)
    sh	$a3,-16($a0)
    # Line 337
    sh	$a5,-18($a0)
    sh	$a6,-20($a0)
    sh	$a4,-22($a0)
    sh	$a3,-24($a0)
    # Line 336
    sh	$a5,-26($a0)
    sh	$a6,-28($a0)
    sh	$a4,-30($a0)
    # Line 335
    addiu	$a1,$a1,-1
    bne	$a1,$a7,.L0da93590
    # Line 336
    sh	$a3,-32($a0)
.L0da935dc:
    # Line 343
    move	$t0,$t9
    beqz	$s8,.L0da93578
    move	$a1,$t3
    andi	$t1,$t9,0x3
    beqzl	$t1,.L0da93514
    move	$t1,$a1
.L0da935f4:
    addiu	$a1,$a1,-1
    # Line 345
    addiu	$a0,$a0,8
    # Line 344
    sh	$a5,-2($a0)
    sh	$a6,-4($a0)
    sh	$a4,-6($a0)
    addi	$t1,$t1,-1
    bnez	$t1,.L0da935f4
    sh	$a3,-8($a0)
    b	.L0da93514
    move	$t1,$a1
.L0da9361c:
    # ld	gp,56(sp)
    # Line 349
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s5,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da93638:
    # Line 317
    lw	$t9,132($s4)
    move	$a0,$s5
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s4
    lw	$t1,16($s4)
    lw	$a7,0($s4)
    b	.L0da933f8
    ld	$ra,72($sp)
.end Clear

# Function: Pick
# Declared: Line 354 (Source lines: 360-360)
# Address: 0x0da9365c - 0x0da93664 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 360
    jr	$ra
    nop
.end Pick

# Function: __glInitAccum64
# Declared: Line 362 (Source lines: 363-396)
# Address: 0x0da93664 - 0x0da9376c (Size: 264 bytes, Frame: 48)
.globl __glInitAccum64
.ent __glInitAccum64
__glInitAccum64:
    # Line 363
    addiu	$sp,$sp,-48
    sd	$s5,16($sp)
    move	$s5,$a1
    # sd	gp,24(sp)
    lui	$at,0x16
    addiu	$at,$at,16900
    # addu	gp,t9,at
    # Line 364
    # lw $t9, -29268($gp) # &__glInitBuffer
    sd	$s1,0($sp)
    sd	$ra,8($sp)
    jal	__glInitBuffer
    # Line 363
    move	$s1,$a0
    # Line 370
    la	$v0,sub_0da90000
    # Line 371
    la	$at,sub_0da90000
    # Line 376
    sw	$zero,132($s1)
    # Line 370
    addiu	$v0,$v0,9348
    # Line 371
    addiu	$at,$at,8132
    sw	$at,116($s1)
    # Line 370
    sw	$v0,112($s1)
    # Line 366
    li	$ra,8
    sw	$ra,24($s1)
    # Line 372
    la	$ra,sub_0da90000
    # Line 369
    la	$v1,sub_0da90000
    # Line 368
    la	$a2,sub_0da90000
    # Line 372
    addiu	$ra,$ra,12824
    # Line 369
    addiu	$v1,$v1,13228
    # Line 368
    addiu	$a2,$a2,13916
    sw	$a2,104($s1)
    # Line 373
    la	$a2,sub_0da90000
    # Line 369
    sw	$v1,108($s1)
    # Line 374
    la	$v1,sub_0da90000
    # Line 372
    sw	$ra,120($s1)
    # Line 373
    addiu	$a2,$a2,10700
    # Line 374
    addiu	$v1,$v1,12048
    sw	$v1,128($s1)
    # Line 373
    sw	$a2,124($s1)
    # Line 376
    lbu	$v0,3104($s5)
    beqz	$v0,.L0da93758
    ld	$ra,8($sp)
    # Line 391
    lwc1	$f0,_lit_3f800000
    # Line 386
    lwc1	$f3,30756($s5)
    lwc1	$f1,_lit_46fffe00
    div.s	$f3,$f1,$f3
    swc1	$f3,72($s1)
    # Line 391
    div.s	$f3,$f0,$f3
    # Line 387
    lwc1	$f2,30764($s5)
    div.s	$f2,$f1,$f2
    # Line 393
    div.s	$f4,$f0,$f2
    # Line 387
    swc1	$f2,80($s1)
    # Line 388
    lwc1	$f5,30760($s5)
    div.s	$f5,$f1,$f5
    # Line 392
    div.s	$f2,$f0,$f5
    # Line 388
    swc1	$f5,76($s1)
    # Line 389
    lwc1	$f5,30796($s5)
    div.s	$f1,$f1,$f5
    # Line 394
    div.s	$f0,$f0,$f1
    # Line 393
    swc1	$f4,96($s1)
    # Line 391
    swc1	$f3,88($s1)
    # Line 392
    swc1	$f2,92($s1)
    # Line 389
    swc1	$f1,84($s1)
    # Line 394
    swc1	$f0,100($s1)
.L0da93758:
    # ld	gp,24(sp)
    # Line 396
    ld	$s1,0($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitAccum64

# Function: __glim_Accum
# Declared: Line 400 (Source lines: 401-454)
# Address: 0x0da9376c - 0x0da9391c (Size: 432 bytes, Frame: 192)
.globl __glim_Accum
.ent __glim_Accum
__glim_Accum:
    # Line 401
    mov.s	$f4,$f13
    move	$a3,$a0
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x16
    addiu	$at,$at,16636
    # Line 407
    lw	$a4,__glBeginMode
    # Line 404
    lw	$a5,__glCurrentContext
    # Line 401
    addu	$gp,$t9,$at
    # Line 407
    beqz	$a4,.L0da937c8
    # Line 404
    move	$a2,$a5
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 407
    li	$v0,2
    beq	$a4,$v0,.L0da93800
    sdc1	$f4,0($sp)
    # Line 415
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 416
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da937c8:
    # Line 421
    lbu	$v1,3108($a2)
    beqz	$v1,.L0da937e4
    # Line 422
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 421
    lbu	$a1,3105($a2)
    beqzl	$a1,.L0da93830
    # Line 423
    lw	$at,31380($a2)
    # Line 422
    # lw $t9, -29008($gp) # &__glSetError
.L0da937e4:
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 423
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da93800:
    # Line 410
    lw	$t9,11792($a5)
    jalr	$t9
    move	$a0,$a5
    # Line 412
    # lw $t9, -22656($gp) # &glAccum
    ldc1	$f13,0($sp)
    ld	$a0,16($sp)
    jal	glAccum
    # Line 411
    sw	$zero,__glBeginMode
    # Line 413
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da93830:
    # Line 423
    beqz	$at,.L0da938ac
.L0da93834:
    # Line 430
    li	$v0,256
    beq	$a3,$v0,.L0da938a0
    li	$v1,257
    beq	$a3,$v1,.L0da938e4
    li	$a1,258
    beq	$a3,$a1,.L0da938f0
    li	$at,259
    beq	$a3,$at,.L0da938fc
    li	$v0,260
    beq	$a3,$v0,.L0da9387c
    # Line 447
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 448
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9387c:
    # Line 444
    # lw $t9, -32732($gp) # &sub_0da90000
    addiu	$t9,$t9,12048
.L0da93884:
    # Line 449
    lw	$at,3092($a2)
    li	$v0,7168
    beq	$at,$v0,.L0da93908
    # Line 452
    addiu	$a0,$a2,31364
.L0da93894:
    ld	$gp,24($sp)
    # Line 454
    jr	$ra
    addiu	$sp,$sp,64
.L0da938a0:
    # Line 432
    # lw $t9, -32732($gp) # &sub_0da90000
    # Line 433
    b	.L0da93884
    # Line 432
    addiu	$t9,$t9,9348
.L0da938ac:
    sd	$a2,8($sp)
    sd	$a3,16($sp)
    sdc1	$f4,0($sp)
    # Line 427
    move	$a0,$a2
    lw	$t9,31496($a2)
    sd	$ra,32($sp)
    move	$a1,$a2
    jal	sub_0da90000
    addiu	$a1,$a2,31364
    ldc1	$f4,0($sp)
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    b	.L0da93834
    ld	$ra,32($sp)
.L0da938e4:
    # Line 435
    # lw $t9, -32732($gp) # &sub_0da90000
    # Line 436
    b	.L0da93884
    # Line 435
    addiu	$t9,$t9,8132
.L0da938f0:
    # Line 438
    # lw $t9, -32732($gp) # &sub_0da90000
    # Line 439
    b	.L0da93884
    # Line 438
    addiu	$t9,$t9,12824
.L0da938fc:
    # Line 441
    # lw $t9, -32732($gp) # &sub_0da90000
    # Line 442
    b	.L0da93884
    # Line 441
    addiu	$t9,$t9,10700
.L0da93908:
    sd	$ra,32($sp)
    # Line 452
    jal	sub_0da90000
    mov.s	$f13,$f4
    b	.L0da93894
    ld	$ra,32($sp)
.end __glim_Accum

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_46fffe00:
    .word 0x46fffe00

