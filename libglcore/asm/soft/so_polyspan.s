# Source: ../soft/so_polyspan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyspan.c
# Total Functions: 32

.text

# Function: __glProcessSpan
# Declared: Line 27 (Source lines: 28-49)
# Address: 0x0dad3574 - 0x0dad3684 (Size: 272 bytes, Frame: 208)
.globl __glProcessSpan
.ent __glProcessSpan
__glProcessSpan:
    # Line 33
    sb	$zero,30480($a0)
    # Line 28
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$s5,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s4,8($sp)
    # Line 34
    move	$s4,$zero
    # sd	gp,24(sp)
    sd	$s6,0($sp)
    # Line 31
    lw	$s6,12236($a0)
    # Line 28
    lui	$at,0x12
    addiu	$at,$at,17140
    # Line 34
    blez	$s6,.L0dad35fc
    # Line 28
    nop
    sd	$ra,48($sp)
    # Line 34
    sll	$s5,$s6,0x2
    move	$s0,$s1
.L0dad35bc:
    # Line 35
    lw	$t9,12112($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0dad35ec
    # Line 34
    addiu	$s0,$s0,4
    addu	$v0,$s5,$s1
    bne	$v0,$s0,.L0dad35bc
    addiu	$s4,$s4,1
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    b	.L0dad35fc
    ld	$ra,48($sp)
.L0dad35ec:
    # Line 36
    addiu	$s4,$s4,1
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
.L0dad35fc:
    # Line 41
    beq	$s6,$s4,.L0dad366c
    # Line 49
    move	$v0,$zero
    # Line 41
    lbu	$v1,30480($s1)
    bnez	$v1,.L0dad366c
    # Line 49
    move	$v0,$zero
    # Line 41
    slt	$a1,$s4,$s6
    beqz	$a1,.L0dad366c
    # Line 49
    move	$v0,$zero
    sd	$ra,48($sp)
    sd	$s0,40($sp)
    # Line 41
    sll	$s0,$s4,0x2
    ld	$s4,8($sp)
    sd	$s5,32($sp)
    sll	$s5,$s6,0x2
    ld	$s6,0($sp)
    addu	$s0,$s0,$s1
    # Line 43
    lw	$t9,12172($s0)
.L0dad3640:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0dad365c
    # Line 42
    addu	$at,$s5,$s1
    addiu	$s0,$s0,4
    bnel	$at,$s0,.L0dad3640
    # Line 43
    lw	$t9,12172($s0)
.L0dad365c:
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
    # Line 49
    move	$v0,$zero
.L0dad366c:
    # ld	gp,24(sp)
    ld	$s1,16($sp)
    ld	$s4,8($sp)
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glProcessSpan

# Function: __glProcessReplicateSpan
# Declared: Line 58 (Source lines: 59-155)
# Address: 0x0dad3684 - 0x0dad3fd8 (Size: 2388 bytes, Frame: 0)
.globl __glProcessReplicateSpan
.ent __glProcessReplicateSpan
__glProcessReplicateSpan:
    # Line 68
    sb	$zero,30480($a0)
    # Line 59
    move	$v0,$s8
    li	$at,0x8070
    subu	$sp,$sp,$at
    sd	$v0,72($sp)
    sd	$ra,24($sp)
    sd	$s6,64($sp)
    # Line 66
    lw	$s6,12236($a0)
    sd	$s2,88($sp)
    # Line 64
    lw	$s2,30252($a0)
    sd	$s5,80($sp)
    # Line 69
    move	$s5,$zero
    sd	$s3,8($sp)
    # sd	gp,56(sp)
    sd	$s1,32($sp)
    sd	$s0,48($sp)
    # Line 59
    move	$s0,$a0
    # Line 69
    move	$s1,$s0
    # Line 59
    addu	$s8,$sp,$at
    sd	$s4,40($sp)
    # Line 65
    lw	$s4,12232($a0)
    # Line 59
    lui	$at,0x12
    addiu	$at,$at,16868
    # Line 69
    blez	$s4,.L0dad3710
    # Line 59
    nop
    # Line 69
    sll	$s3,$s4,0x2
    sd	$ra,24($sp)
.L0dad36f0:
    # Line 70
    lw	$t9,12112($s1)
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0dad3a04
    # Line 69
    addu	$v1,$s3,$s0
    addiu	$s1,$s1,4
    bne	$v1,$s1,.L0dad36f0
    addiu	$s5,$s5,1
.L0dad3710:
    # Line 76
    lw	$a0,30468($s0)
    # Line 89
    addiu	$v1,$s0,30668
    ld	$ra,24($sp)
    ld	$s3,8($sp)
    # Line 79
    move	$a4,$s2
    # Line 77
    lbu	$a1,3104($s0)
    # Line 69
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    # Line 77
    beqz	$a1,.L0dad3d68
    # Line 69
    addiu	$a2,$a2,32752
    ld	$s1,32($sp)
    # Line 79
    blez	$s2,.L0dad3834
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3788
    move	$a5,$s5
.L0dad3750:
    # Line 80
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 79
    addiu	$s5,$s5,1
    # Line 80
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3750
    swc1	$f0,-4($a2)
    move	$a5,$s5
.L0dad3788:
    move	$a6,$a0
    move	$a7,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0dad3834
    move	$a3,$a7
    move	$a2,$a5
    move	$a0,$a6
.L0dad37a4:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 79
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0dad37a4
    # Line 80
    swc1	$f0,-4($a3)
.L0dad3834:
    # Line 90
    move	$s5,$s4
.L0dad3838:
    # Line 89
    sw	$v1,30484($s0)
    # Line 90
    slt	$v0,$s4,$s6
    beqz	$v0,.L0dad387c
    sd	$v0,16($sp)
    sll	$s1,$s5,0x2
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    addu	$s1,$s1,$s0
    # Line 91
    lw	$t9,12112($s1)
.L0dad385c:
    jalr	$t9
    move	$a0,$s0
    # Line 90
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0dad385c
    # Line 91
    lw	$t9,12112($s1)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s3,8($sp)
.L0dad387c:
    # Line 94
    lw	$a2,30468($s0)
    # Line 96
    move	$a4,$s2
    # Line 94
    lbu	$at,3104($s0)
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    beqz	$at,.L0dad3dfc
    addiu	$a0,$a0,32752
    # Line 96
    move	$s5,$zero
    blez	$s2,.L0dad3990
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad38e4
    move	$a5,$s5
.L0dad38ac:
    # Line 97
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 96
    addiu	$s5,$s5,1
    # Line 97
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad38ac
    swc1	$f0,-4($a2)
    move	$a5,$s5
.L0dad38e4:
    move	$a7,$a0
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0dad3990
    move	$a3,$a6
    move	$a2,$a5
    move	$a0,$a7
.L0dad3900:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 96
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0dad3900
    # Line 97
    swc1	$f0,-4($a3)
.L0dad3990:
    # Line 107
    ld	$at,16($sp)
.L0dad3994:
    move	$s5,$s4
    # Line 106
    addiu	$v0,$s0,30888
    # Line 107
    beqz	$at,.L0dad39d8
    # Line 106
    sw	$v0,30484($s0)
    # Line 107
    sll	$s1,$s5,0x2
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    addu	$s1,$s1,$s0
    # Line 108
    lw	$t9,12112($s1)
.L0dad39b8:
    jalr	$t9
    move	$a0,$s0
    # Line 107
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0dad39b8
    # Line 108
    lw	$t9,12112($s1)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s3,8($sp)
.L0dad39d8:
    # Line 110
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$at,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0dad3a04:
    # Line 112
    lbu	$v0,30480($s0)
    # Line 113
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    # Line 112
    beqz	$v0,.L0dad3a48
    # Line 71
    addiu	$s5,$s5,1
    # Line 113
    ld	$v1,72($sp)
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s3,8($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0dad3a48:
    slt	$a1,$s5,$s4
    beqzl	$a1,.L0dad3a80
    # Line 121
    lw	$a0,30468($s0)
    # Line 113
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 116
    lw	$t9,12172($s1)
.L0dad3a60:
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0dad3e84
    # Line 115
    addu	$at,$s3,$s0
    addiu	$s1,$s1,4
    bnel	$at,$s1,.L0dad3a60
    # Line 116
    lw	$t9,12172($s1)
    # Line 121
    lw	$a0,30468($s0)
.L0dad3a80:
    # Line 122
    lbu	$v0,3104($s0)
    # Line 115
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    # Line 122
    beqz	$v0,.L0dad3ebc
    # Line 115
    addiu	$a2,$a2,32752
    # Line 124
    move	$s5,$zero
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    blez	$s2,.L0dad3b98
    ld	$s1,32($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3ae8
    move	$a4,$s2
.L0dad3ab4:
    # Line 125
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 124
    addiu	$s5,$s5,1
    # Line 125
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3ab4
    swc1	$f0,-4($a2)
.L0dad3ae8:
    move	$a7,$s5
    move	$a6,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0dad3b98
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0dad3b08:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 124
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0dad3b08
    # Line 125
    swc1	$f0,-4($a0)
.L0dad3b98:
    # Line 135
    move	$s5,$s4
.L0dad3b9c:
    # Line 134
    addiu	$v1,$s0,30668
    # Line 135
    slt	$v0,$s4,$s6
    sd	$v0,16($sp)
    beqz	$v0,.L0dad3be4
    # Line 134
    sw	$v1,30484($s0)
    # Line 135
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 136
    lw	$t9,12172($s1)
.L0dad3bc4:
    jalr	$t9
    move	$a0,$s0
    # Line 135
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0dad3bc4
    # Line 136
    lw	$t9,12172($s1)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
.L0dad3be4:
    # Line 139
    lw	$a2,30468($s0)
    lbu	$at,3104($s0)
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    beqz	$at,.L0dad3f50
    addiu	$a0,$a0,32752
    # Line 141
    blez	$s2,.L0dad3cf4
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3c44
    move	$a4,$s2
.L0dad3c10:
    # Line 142
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    # Line 141
    addiu	$s5,$s5,1
    # Line 142
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,16
    lwc1	$f0,-4($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3c10
    swc1	$f0,-4($a2)
.L0dad3c44:
    move	$a7,$s5
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0dad3cf4
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0dad3c64:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 141
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0dad3c64
    # Line 142
    swc1	$f0,-4($a0)
.L0dad3cf4:
    # Line 152
    ld	$at,16($sp)
.L0dad3cf8:
    move	$s5,$s4
    # Line 151
    addiu	$v0,$s0,30888
    # Line 152
    beqz	$at,.L0dad3d3c
    # Line 151
    sw	$v0,30484($s0)
    # Line 152
    sll	$s3,$s6,0x2
    addu	$s3,$s3,$s0
    sll	$s1,$s5,0x2
    addu	$s1,$s1,$s0
    # Line 153
    lw	$t9,12172($s1)
.L0dad3d1c:
    jalr	$t9
    move	$a0,$s0
    # Line 152
    addiu	$s1,$s1,4
    bnel	$s1,$s3,.L0dad3d1c
    # Line 153
    lw	$t9,12172($s1)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
.L0dad3d3c:
    # Line 155
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,48($sp)
    ld	$s2,88($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$at,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0dad3d68:
    # Line 83
    move	$s5,$zero
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    blez	$s2,.L0dad3834
    ld	$s3,8($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3da4
    move	$a4,$s2
.L0dad3d88:
    addiu	$s5,$s5,1
    # Line 86
    addiu	$a2,$a2,16
    # Line 85
    addiu	$a0,$a0,16
    # Line 84
    lwc1	$f0,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3d88
    swc1	$f0,-16($a2)
.L0dad3da4:
    move	$a7,$s5
    move	$a6,$a2
    sra	$v0,$a4,0x2
    beqz	$v0,.L0dad3df4
    move	$a5,$a0
    move	$a0,$a7
    move	$a3,$a6
    move	$a2,$a5
.L0dad3dc4:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a3)
    lwc1	$f2,32($a2)
    # Line 86
    addiu	$a3,$a3,64
    # Line 84
    swc1	$f2,-32($a3)
    # Line 85
    addiu	$a2,$a2,64
    # Line 84
    lwc1	$f1,-16($a2)
    # Line 83
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0dad3dc4
    # Line 84
    swc1	$f1,-16($a3)
.L0dad3df4:
    b	.L0dad3838
    # Line 90
    move	$s5,$s4
.L0dad3dfc:
    # Line 100
    blez	$s2,.L0dad3990
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3e2c
    move	$a4,$s2
.L0dad3e10:
    addiu	$s5,$s5,1
    # Line 103
    addiu	$a2,$a2,16
    # Line 102
    addiu	$a0,$a0,16
    # Line 101
    lwc1	$f1,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3e10
    swc1	$f1,-16($a2)
.L0dad3e2c:
    move	$a7,$s5
    move	$a6,$a2
    sra	$v1,$a4,0x2
    beqz	$v1,.L0dad3e7c
    move	$a5,$a0
    move	$a2,$a7
    move	$a3,$a6
    move	$a0,$a5
.L0dad3e4c:
    lwc1	$f1,0($a0)
    swc1	$f1,0($a3)
    lwc1	$f0,16($a0)
    swc1	$f0,16($a3)
    lwc1	$f3,32($a0)
    # Line 103
    addiu	$a3,$a3,64
    # Line 101
    swc1	$f3,-32($a3)
    # Line 102
    addiu	$a0,$a0,64
    # Line 101
    lwc1	$f2,-16($a0)
    # Line 100
    addiu	$a2,$a2,4
    bne	$s2,$a2,.L0dad3e4c
    # Line 101
    swc1	$f2,-16($a3)
.L0dad3e7c:
    b	.L0dad3994
    # Line 107
    ld	$at,16($sp)
.L0dad3e84:
    # Line 117
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,88($sp)
    ld	$s3,8($sp)
    ld	$s4,40($sp)
    ld	$s5,80($sp)
    ld	$s6,64($sp)
    ld	$ra,24($sp)
    ld	$a0,72($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0dad3ebc:
    # Line 128
    move	$s5,$zero
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    blez	$s2,.L0dad3b98
    ld	$s1,32($sp)
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3ef8
    move	$a4,$s2
.L0dad3edc:
    addiu	$s5,$s5,1
    # Line 131
    addiu	$a2,$a2,16
    # Line 130
    addiu	$a0,$a0,16
    # Line 129
    lwc1	$f2,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3edc
    swc1	$f2,-16($a2)
.L0dad3ef8:
    move	$a7,$s5
    move	$a6,$a2
    sra	$a1,$a4,0x2
    beqz	$a1,.L0dad3f48
    move	$a5,$a0
    move	$a3,$a7
    move	$a0,$a6
    move	$a2,$a5
.L0dad3f18:
    lwc1	$f2,0($a2)
    swc1	$f2,0($a0)
    lwc1	$f1,16($a2)
    swc1	$f1,16($a0)
    lwc1	$f0,32($a2)
    # Line 131
    addiu	$a0,$a0,64
    # Line 129
    swc1	$f0,-32($a0)
    # Line 130
    addiu	$a2,$a2,64
    # Line 129
    lwc1	$f3,-16($a2)
    # Line 128
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0dad3f18
    # Line 129
    swc1	$f3,-16($a0)
.L0dad3f48:
    b	.L0dad3b9c
    # Line 135
    move	$s5,$s4
.L0dad3f50:
    # Line 145
    blez	$s2,.L0dad3cf4
    move	$s5,$zero
    andi	$a3,$s2,0x3
    beqz	$a3,.L0dad3f80
    move	$a4,$s2
.L0dad3f64:
    addiu	$s5,$s5,1
    # Line 148
    addiu	$a2,$a2,16
    # Line 147
    addiu	$a0,$a0,16
    # Line 146
    lwc1	$f3,-16($a0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0dad3f64
    swc1	$f3,-16($a2)
.L0dad3f80:
    move	$a7,$s5
    move	$a6,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0dad3fd0
    move	$a5,$a0
    move	$a3,$a7
    move	$a2,$a6
    move	$a0,$a5
.L0dad3fa0:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,16($a0)
    swc1	$f2,16($a2)
    lwc1	$f1,32($a0)
    # Line 148
    addiu	$a2,$a2,64
    # Line 146
    swc1	$f1,-32($a2)
    # Line 147
    addiu	$a0,$a0,64
    # Line 146
    lwc1	$f0,-16($a0)
    # Line 145
    addiu	$a3,$a3,4
    bne	$s2,$a3,.L0dad3fa0
    # Line 146
    swc1	$f0,-16($a2)
.L0dad3fd0:
    b	.L0dad3cf8
    # Line 152
    ld	$at,16($sp)
.end __glProcessReplicateSpan

# Function: __glClipSpan
# Declared: Line 165 (Source lines: 172-254)
# Address: 0x0dad3fd8 - 0x0dad410c (Size: 308 bytes, Frame: 0)
.globl __glClipSpan
.ent __glClipSpan
__glClipSpan:
    # Line 177
    lw	$a3,29712($a0)
    # Line 176
    lw	$a6,29704($a0)
    # Line 174
    lw	$a5,30200($a0)
    # Line 175
    move	$v0,$zero
    # Line 172
    lw	$t3,30252($a0)
    # Line 179
    slt	$a7,$a5,$a6
    beqz	$a7,.L0dad40f8
    addu	$a4,$t3,$a5
    # Line 183
    slt	$at,$a6,$a4
.L0dad3ffc:
    beqz	$at,.L0dad40e8
    slt	$v1,$a5,$a3
    beqz	$v1,.L0dad40e8
    # Line 186
    slt	$a1,$a3,$a4
    beqz	$a1,.L0dad4018
    nop
    # Line 193
    subu	$t3,$a3,$a5
.L0dad4018:
    beqz	$a7,.L0dad40e0
    nop
    # Line 221
    lw	$t0,30476($a0)
    # Line 219
    subu	$a3,$a6,$a5
    # Line 222
    beqz	$t3,.L0dad40dc
    move	$a7,$t3
    li	$a6,-1
    b	.L0dad4048
    lui	$t2,0x8000
.L0dad403c:
    # Line 244
    sw	$a4,0($t0)
    beqz	$a7,.L0dad40dc
    addiu	$t0,$t0,4
.L0dad4048:
    # Line 230
    li	$a4,-1
    # Line 224
    slti	$a2,$a7,33
    bnez	$a2,.L0dad405c
    move	$a5,$a7
    # Line 226
    li	$a5,32
.L0dad405c:
    # Line 228
    subu	$a7,$a7,$a5
    # Line 232
    addiu	$a5,$a5,-1
    # Line 231
    move	$v0,$t2
    # Line 232
    bltz	$a5,.L0dad403c
    addiu	$t1,$a5,1
    andi	$at,$t1,0x1
    beqz	$at,.L0dad4098
    sra	$a1,$t1,0x1
    blez	$a3,.L0dad408c
    # Line 235
    nor	$v1,$v0,$zero
    # Line 234
    addiu	$a3,$a3,-1
    # Line 235
    and	$a4,$v1,$a4
.L0dad408c:
    # Line 232
    addiu	$a5,$a5,-1
    # Line 238
    srl	$v0,$v0,0x1
    sra	$a1,$t1,0x1
.L0dad4098:
    beqz	$a1,.L0dad403c
    nop
    b	.L0dad40cc
    nop
.L0dad40a8:
    # Line 234
    addiu	$a3,$a3,-1
.L0dad40ac:
    # Line 232
    addiu	$a5,$a5,-2
    blez	$a3,.L0dad40c4
    # Line 238
    srl	$v0,$v0,0x1
    # Line 234
    addiu	$a3,$a3,-1
    # Line 235
    nor	$at,$v0,$zero
    and	$a4,$at,$a4
.L0dad40c4:
    # Line 232
    beq	$a5,$a6,.L0dad403c
    # Line 238
    srl	$v0,$v0,0x1
.L0dad40cc:
    # Line 232
    blez	$a3,.L0dad40ac
    # Line 235
    nor	$a2,$v0,$zero
    b	.L0dad40a8
    and	$a4,$a2,$a4
.L0dad40dc:
    # Line 247
    li	$v0,1
.L0dad40e0:
    # Line 254
    jr	$ra
    # Line 252
    sw	$t3,30252($a0)
.L0dad40e8:
    # Line 186
    li	$v0,1
    # Line 185
    li	$v1,1
    # Line 186
    jr	$ra
    # Line 185
    sb	$v1,30480($a0)
.L0dad40f8:
    # Line 179
    slt	$a1,$a3,$a4
    beqz	$a1,.L0dad40e0
    nop
    b	.L0dad3ffc
    # Line 183
    slt	$at,$a6,$a4
.end __glClipSpan

# Function: __glStippleSpan
# Declared: Line 260 (Source lines: 268-298)
# Address: 0x0dad410c - 0x0dad4208 (Size: 252 bytes, Frame: 0)
.globl __glStippleSpan
.ent __glStippleSpan
__glStippleSpan:
    # Line 268
    lbu	$at,4552($a0)
    lw	$a6,30252($a0)
    lw	$a2,30204($a0)
    beqz	$at,.L0dad41e8
    move	$a5,$a6
    # Line 271
    lw	$at,3376($a0)
    lw	$a3,3416($a0)
    subu	$at,$a2,$at
    subu	$a3,$a3,$at
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,30012($a3)
.L0dad4144:
    # Line 278
    lw	$v0,30200($a0)
    # Line 291
    move	$a2,$a6
    # Line 280
    li	$at,32
    # Line 278
    andi	$v0,$v0,0x1f
    # Line 280
    subu	$at,$at,$v0
    srlv	$at,$a3,$at
    sllv	$a3,$a3,$v0
    or	$a3,$a3,$at
    beqz	$a3,.L0dad41fc
    # Line 286
    li	$at,1
    # Line 292
    blez	$a5,.L0dad41dc
    lw	$a4,30476($a0)
    addiu	$at,$a5,31
    sra	$a6,$at,0x4
    srl	$a6,$a6,0x1b
    addu	$a6,$a6,$at
    sra	$a6,$a6,0x5
    andi	$a0,$a6,0x3
    beqz	$a0,.L0dad41ac
    sra	$at,$a6,0x2
.L0dad4194:
    # Line 295
    addiu	$a2,$a2,-32
    # Line 294
    sw	$a3,0($a4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dad4194
    addiu	$a4,$a4,4
    sra	$at,$a6,0x2
.L0dad41ac:
    move	$a7,$a2
    beqz	$at,.L0dad41dc
    move	$a5,$a4
    move	$a2,$a7
    move	$a0,$a5
.L0dad41c0:
    addiu	$a0,$a0,16
    # Line 295
    addiu	$a2,$a2,-128
    # Line 294
    sw	$a3,-16($a0)
    sw	$a3,-12($a0)
    sw	$a3,-8($a0)
    # Line 295
    bgtz	$a2,.L0dad41c0
    # Line 294
    sw	$a3,-4($a0)
.L0dad41dc:
    # Line 298
    li	$v0,1
    jr	$ra
    nop
.L0dad41e8:
    # Line 275
    andi	$a3,$a2,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    b	.L0dad4144
    lw	$a3,30012($a3)
.L0dad41fc:
    # Line 287
    li	$v0,1
    jr	$ra
    # Line 286
    sb	$at,30480($a0)
.end __glStippleSpan

# Function: __glStippleStippledSpan
# Declared: Line 304 (Source lines: 312-342)
# Address: 0x0dad4208 - 0x0dad4328 (Size: 288 bytes, Frame: 0)
.globl __glStippleStippledSpan
.ent __glStippleStippledSpan
__glStippleStippledSpan:
    # Line 312
    lbu	$at,4552($a0)
    lw	$a6,30252($a0)
    lw	$a2,30204($a0)
    beqz	$at,.L0dad4308
    move	$a5,$a6
    # Line 315
    lw	$at,3376($a0)
    lw	$a3,3416($a0)
    subu	$at,$a2,$at
    subu	$a3,$a3,$at
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    lw	$a3,30012($a3)
.L0dad4240:
    # Line 322
    lw	$v0,30200($a0)
    # Line 335
    move	$a2,$a6
    # Line 324
    li	$at,32
    # Line 322
    andi	$v0,$v0,0x1f
    # Line 324
    subu	$at,$at,$v0
    srlv	$at,$a3,$at
    sllv	$a3,$a3,$v0
    or	$a3,$a3,$at
    beqz	$a3,.L0dad431c
    # Line 330
    li	$at,1
    # Line 336
    blez	$a5,.L0dad4300
    lw	$a4,30476($a0)
    addiu	$at,$a5,31
    sra	$a6,$at,0x4
    srl	$a6,$a6,0x1b
    addu	$a6,$a6,$at
    sra	$a6,$a6,0x5
    andi	$a0,$a6,0x3
    beqz	$a0,.L0dad42b0
    sra	$v0,$a6,0x2
.L0dad4290:
    # Line 339
    addiu	$a2,$a2,-32
    # Line 338
    lw	$at,0($a4)
    addiu	$a4,$a4,4
    addi	$a0,$a0,-1
    and	$at,$at,$a3
    bnez	$a0,.L0dad4290
    sw	$at,-4($a4)
    sra	$v0,$a6,0x2
.L0dad42b0:
    move	$a7,$a2
    beqz	$v0,.L0dad4300
    move	$a5,$a4
    move	$a2,$a7
    move	$a0,$a5
.L0dad42c4:
    lw	$v0,0($a0)
    and	$v0,$v0,$a3
    lw	$at,4($a0)
    sw	$v0,0($a0)
    lw	$a1,8($a0)
    and	$at,$at,$a3
    sw	$at,4($a0)
    and	$a1,$a1,$a3
    sw	$a1,8($a0)
    lw	$v1,12($a0)
    addiu	$a0,$a0,16
    # Line 339
    addiu	$a2,$a2,-128
    # Line 338
    and	$v1,$v1,$a3
    # Line 339
    bgtz	$a2,.L0dad42c4
    # Line 338
    sw	$v1,-4($a0)
.L0dad4300:
    # Line 342
    jr	$ra
    move	$v0,$zero
.L0dad4308:
    # Line 319
    andi	$a3,$a2,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    b	.L0dad4240
    lw	$a3,30012($a3)
.L0dad431c:
    # Line 331
    li	$v0,1
    jr	$ra
    # Line 330
    sb	$at,30480($a0)
.end __glStippleStippledSpan

# Function: __glAlphaTestSpan
# Declared: Line 352 (Source lines: 353-406)
# Address: 0x0dad4328 - 0x0dad44fc (Size: 468 bytes, Frame: 32)
.globl __glAlphaTestSpan
.ent __glAlphaTestSpan
__glAlphaTestSpan:
    # Line 366
    lw	$t8,30476($a0)
    # Line 364
    lw	$a3,30468($a0)
    # Line 363
    lw	$a7,30752($a0)
    # Line 367
    move	$t2,$zero
    # Line 353
    addiu	$sp,$sp,-32
    # Line 361
    lw	$t3,30252($a0)
    # Line 365
    lw	$a5,3420($a0)
    sd	$a0,0($sp)
    # Line 367
    beqz	$t3,.L0dad44a8
    # Line 365
    addiu	$a5,$a5,-1
    # Line 367
    li	$t0,-1
    b	.L0dad4368
    lui	$a0,0x8000
.L0dad435c:
    # Line 393
    sw	$t1,0($t8)
    beqz	$t3,.L0dad44a8
    addiu	$t8,$t8,4
.L0dad4368:
    # Line 375
    li	$t1,-1
    # Line 369
    slti	$at,$t3,33
    bnez	$at,.L0dad437c
    move	$a6,$t3
    # Line 371
    li	$a6,32
.L0dad437c:
    # Line 376
    move	$a4,$a0
    # Line 373
    subu	$t3,$t3,$a6
    # Line 377
    addiu	$a6,$a6,-1
    bltz	$a6,.L0dad435c
    ld	$v1,0($sp)
    addiu	$t9,$a6,1
    andi	$v0,$t9,0x1
    beqz	$v0,.L0dad43e4
    lwc1	$f4,3424($v1)
    # Line 378
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0dad44c4
    # Line 377
    addiu	$a6,$a6,-1
.L0dad43bc:
    # Line 379
    slt	$a1,$a5,$a2
    beqz	$a1,.L0dad43d0
    # Line 380
    addu	$at,$a2,$a7
    move	$a2,$a5
    addu	$at,$a2,$a7
.L0dad43d0:
    lbu	$at,0($at)
    # Line 386
    addiu	$a3,$a3,16
    # Line 380
    beqz	$at,.L0dad44cc
    # Line 383
    nor	$v0,$a4,$zero
.L0dad43e0:
    # Line 388
    srl	$a4,$a4,0x1
.L0dad43e4:
    sra	$v0,$t9,0x1
    beqz	$v0,.L0dad435c
    nop
    b	.L0dad4418
    # Line 378
    lwc1	$f1,12($a3)
.L0dad43f8:
    # Line 380
    addu	$v1,$a2,$a7
.L0dad43fc:
    lbu	$v1,0($v1)
    # Line 386
    addiu	$a3,$a3,16
    # Line 380
    beqz	$v1,.L0dad449c
    # Line 383
    nor	$a1,$a4,$zero
.L0dad440c:
    # Line 377
    beq	$a6,$t0,.L0dad435c
    # Line 388
    srl	$a4,$a4,0x1
    # Line 378
    lwc1	$f1,12($a3)
.L0dad4418:
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    nop
    bltz	$a2,.L0dad4480
.L0dad442c:
    # Line 379
    slt	$a1,$a5,$a2
    beqz	$a1,.L0dad4440
    # Line 380
    addu	$at,$a2,$a7
    move	$a2,$a5
    addu	$at,$a2,$a7
.L0dad4440:
    lbu	$at,0($at)
    # Line 377
    addiu	$a6,$a6,-2
    # Line 380
    beqz	$at,.L0dad4488
    # Line 383
    nor	$v1,$a4,$zero
.L0dad4450:
    # Line 378
    lwc1	$f2,28($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    # Line 388
    srl	$a4,$a4,0x1
    # Line 378
    bltz	$a2,.L0dad4494
    # Line 386
    addiu	$a3,$a3,16
.L0dad446c:
    # Line 379
    slt	$v0,$a5,$a2
    beqz	$v0,.L0dad43fc
    # Line 380
    addu	$v1,$a2,$a7
    b	.L0dad43f8
    move	$a2,$a5
.L0dad4480:
    b	.L0dad442c
    # Line 379
    move	$a2,$zero
.L0dad4488:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0dad4450
    # Line 383
    and	$t1,$v1,$t1
.L0dad4494:
    b	.L0dad446c
    # Line 379
    move	$a2,$zero
.L0dad449c:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0dad440c
    # Line 383
    and	$t1,$a1,$t1
.L0dad44a8:
    # Line 393
    beqz	$t2,.L0dad44f0
    ld	$at,0($sp)
    # Line 398
    lw	$at,30252($at)
    beq	$at,$t2,.L0dad44d8
    # Line 402
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0dad44c4:
    b	.L0dad43bc
    # Line 379
    move	$a2,$zero
.L0dad44cc:
    # Line 384
    addiu	$t2,$t2,1
    b	.L0dad43e0
    # Line 383
    and	$t1,$v0,$t1
.L0dad44d8:
    # Line 406
    li	$v0,1
    # Line 405
    ld	$a0,0($sp)
    # Line 406
    addiu	$sp,$sp,32
    # Line 405
    li	$v1,1
    # Line 406
    jr	$ra
    # Line 405
    sb	$v1,30480($a0)
.L0dad44f0:
    # Line 398
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glAlphaTestSpan

# Function: __glAlphaTestStippledSpan
# Declared: Line 413 (Source lines: 414-464)
# Address: 0x0dad44fc - 0x0dad46fc (Size: 512 bytes, Frame: 32)
.globl __glAlphaTestStippledSpan
.ent __glAlphaTestStippledSpan
__glAlphaTestStippledSpan:
    # Line 414
    addiu	$sp,$sp,-32
    # Line 426
    lw	$a3,30468($a0)
    # Line 425
    lw	$t0,30752($a0)
    # Line 423
    lw	$t9,30476($a0)
    # Line 427
    lw	$a5,3420($a0)
    # Line 422
    lw	$a2,30252($a0)
    # Line 428
    move	$t1,$zero
    # Line 427
    addiu	$a5,$a5,-1
    # Line 428
    beqz	$a2,.L0dad46bc
    # Line 422
    move	$t8,$a2
    b	.L0dad453c
    # Line 428
    li	$t2,-1
.L0dad452c:
    # Line 457
    addiu	$t9,$t9,4
    and	$at,$a7,$t3
    beqz	$t8,.L0dad46b8
    sw	$at,-4($t9)
.L0dad453c:
    # Line 437
    li	$t3,-1
    # Line 430
    slti	$v0,$t8,33
    bnez	$v0,.L0dad4550
    move	$a6,$t8
    # Line 432
    li	$a6,32
.L0dad4550:
    lui	$a4,0x8000
    # Line 434
    subu	$t8,$t8,$a6
    # Line 439
    addiu	$a6,$a6,-1
    bltz	$a6,.L0dad452c
    # Line 436
    lw	$a7,0($t9)
    # Line 439
    addiu	$a2,$a6,1
    andi	$v1,$a2,0x1
    beqz	$v1,.L0dad45c4
    and	$a1,$a7,$a4
    beqz	$a1,.L0dad46cc
    addiu	$a6,$a6,-1
    # Line 441
    lwc1	$f1,3424($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    sd	$a2,0($sp)
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0dad46e0
.L0dad459c:
    # Line 442
    slt	$at,$a5,$a2
    beqz	$at,.L0dad45b0
    # Line 443
    addu	$v0,$a2,$t0
    move	$a2,$a5
    addu	$v0,$a2,$t0
.L0dad45b0:
    lbu	$v0,0($v0)
    beqz	$v0,.L0dad46e8
    ld	$a2,0($sp)
.L0dad45bc:
    # Line 452
    srl	$a4,$a4,0x1
    # Line 450
    addiu	$a3,$a3,16
.L0dad45c4:
    sra	$v1,$a2,0x1
    beqz	$v1,.L0dad452c
    nop
    b	.L0dad4648
    # Line 439
    and	$a1,$a7,$a4
.L0dad45d8:
    # Line 443
    addu	$a1,$a2,$t0
.L0dad45dc:
    lbu	$a1,0($a1)
    beqz	$a1,.L0dad4698
    # Line 446
    nor	$v0,$a4,$zero
.L0dad45e8:
    # Line 439
    addiu	$a6,$a6,-2
    # Line 452
    srl	$a4,$a4,0x1
    # Line 439
    and	$at,$a7,$a4
    beqz	$at,.L0dad4688
    # Line 450
    addiu	$a3,$a3,16
    # Line 441
    lwc1	$f3,3424($a0)
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    bltz	$a2,.L0dad46a4
.L0dad4618:
    # Line 442
    slt	$v0,$a5,$a2
    beqz	$v0,.L0dad462c
    # Line 443
    addu	$v1,$a2,$t0
    move	$a2,$a5
    addu	$v1,$a2,$t0
.L0dad462c:
    lbu	$v1,0($v1)
    beqzl	$v1,.L0dad46ac
    # Line 447
    addiu	$t1,$t1,1
.L0dad4638:
    # Line 452
    srl	$a4,$a4,0x1
    # Line 439
    beq	$a6,$t2,.L0dad452c
    # Line 450
    addiu	$a3,$a3,16
    # Line 439
    and	$a1,$a7,$a4
.L0dad4648:
    beqz	$a1,.L0dad4680
    nop
    # Line 441
    lwc1	$f1,3424($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    bltz	$a2,.L0dad4690
.L0dad466c:
    # Line 442
    slt	$at,$a5,$a2
    beqz	$at,.L0dad45dc
    # Line 443
    addu	$a1,$a2,$t0
    b	.L0dad45d8
    move	$a2,$a5
.L0dad4680:
    b	.L0dad45e8
    # Line 449
    addiu	$t1,$t1,1
.L0dad4688:
    b	.L0dad4638
    addiu	$t1,$t1,1
.L0dad4690:
    b	.L0dad466c
    # Line 442
    move	$a2,$zero
.L0dad4698:
    # Line 447
    addiu	$t1,$t1,1
    b	.L0dad45e8
    # Line 446
    and	$t3,$v0,$t3
.L0dad46a4:
    b	.L0dad4618
    # Line 442
    move	$a2,$zero
.L0dad46ac:
    # Line 446
    nor	$v1,$a4,$zero
    # Line 447
    b	.L0dad4638
    # Line 446
    and	$t3,$v1,$t3
.L0dad46b8:
    # Line 457
    lw	$a2,30252($a0)
.L0dad46bc:
    beq	$a2,$t1,.L0dad46d4
    # Line 462
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0dad46cc:
    b	.L0dad45bc
    # Line 449
    addiu	$t1,$t1,1
.L0dad46d4:
    # Line 464
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L0dad46e0:
    b	.L0dad459c
    # Line 442
    move	$a2,$zero
.L0dad46e8:
    # Line 446
    nor	$a1,$a4,$zero
    # Line 447
    addiu	$t1,$t1,1
    ld	$a2,0($sp)
    b	.L0dad45bc
    # Line 446
    and	$t3,$a1,$t3
.end __glAlphaTestStippledSpan

# Function: __glStencilTestStippledSpan
# Declared: Line 533 (Source lines: 534-583)
# Address: 0x0dad46fc - 0x0dad48a8 (Size: 428 bytes, Frame: 48)
.globl __glStencilTestStippledSpan
.ent __glStencilTestStippledSpan
__glStencilTestStippledSpan:
    # Line 534
    move	$a3,$a0
    # Line 547
    lh	$a7,1576($a0)
    # Line 546
    lw	$t8,31188($a0)
    # Line 545
    lw	$t0,31184($a0)
    # Line 544
    lw	$a2,30456($a0)
    # Line 548
    move	$t1,$zero
    # Line 542
    lw	$at,30476($a0)
    # Line 541
    lw	$a5,30252($a0)
    # Line 534
    addiu	$sp,$sp,-48
    sd	$at,16($sp)
    # Line 548
    beqz	$a5,.L0dad4868
    # Line 541
    move	$t9,$a5
    sd	$a3,0($sp)
    # Line 548
    li	$t2,-1
    b	.L0dad474c
    ld	$a0,16($sp)
.L0dad473c:
    # Line 576
    addiu	$a0,$a0,4
    and	$v0,$a5,$t3
    beqz	$t9,.L0dad4860
    sw	$v0,-4($a0)
.L0dad474c:
    # Line 557
    li	$t3,-1
    # Line 550
    slti	$v1,$t9,33
    bnez	$v1,.L0dad4760
    move	$a4,$t9
    # Line 552
    li	$a4,32
.L0dad4760:
    lui	$a3,0x8000
    # Line 554
    subu	$t9,$t9,$a4
    # Line 559
    addiu	$a4,$a4,-1
    bltz	$a4,.L0dad473c
    # Line 556
    lw	$a5,0($a0)
    # Line 559
    addiu	$a6,$a4,1
    andi	$a1,$a6,0x1
    beqz	$a1,.L0dad47b4
    and	$at,$a5,$a3
    beqz	$at,.L0dad4878
    addiu	$a4,$a4,-1
    sd	$a6,8($sp)
    # Line 561
    lbu	$a6,0($a2)
    and	$v0,$a6,$a7
    addu	$v0,$v0,$t0
    lbu	$v0,0($v0)
    beqz	$v0,.L0dad4890
    # Line 565
    addu	$at,$a6,$t8
.L0dad47a8:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 569
    addiu	$a2,$a2,1
    ld	$a6,8($sp)
.L0dad47b4:
    sra	$v1,$a6,0x1
    beqz	$v1,.L0dad473c
    nop
    b	.L0dad47dc
    # Line 559
    and	$a1,$a5,$a3
.L0dad47c8:
    # Line 568
    addiu	$t1,$t1,1
.L0dad47cc:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    beq	$a4,$t2,.L0dad473c
    # Line 569
    addiu	$a2,$a2,1
    # Line 559
    and	$a1,$a5,$a3
.L0dad47dc:
    beqz	$a1,.L0dad4840
    nop
    # Line 561
    lbu	$a6,0($a2)
    and	$at,$a6,$a7
    addu	$at,$at,$t0
    lbu	$at,0($at)
    beqz	$at,.L0dad4848
    # Line 564
    nor	$v0,$a3,$zero
.L0dad47fc:
    # Line 559
    addiu	$a4,$a4,-2
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    and	$v0,$a5,$a3
    beqz	$v0,.L0dad47c8
    # Line 569
    addiu	$a2,$a2,1
    # Line 561
    lbu	$a6,0($a2)
    and	$v1,$a6,$a7
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    # Line 564
    nor	$at,$a3,$zero
    # Line 561
    bnez	$v1,.L0dad47cc
    # Line 565
    addu	$a1,$a6,$t8
    # Line 566
    addiu	$t1,$t1,1
    # Line 565
    lbu	$a1,0($a1)
    # Line 564
    and	$t3,$at,$t3
    # Line 566
    b	.L0dad47cc
    # Line 565
    sb	$a1,0($a2)
.L0dad4840:
    b	.L0dad47fc
    # Line 568
    addiu	$t1,$t1,1
.L0dad4848:
    # Line 566
    addiu	$t1,$t1,1
    # Line 565
    addu	$at,$a6,$t8
    lbu	$at,0($at)
    # Line 564
    and	$t3,$v0,$t3
    # Line 566
    b	.L0dad47fc
    # Line 565
    sb	$at,0($a2)
.L0dad4860:
    ld	$a5,0($sp)
    # Line 576
    lw	$a5,30252($a5)
.L0dad4868:
    beq	$a5,$t1,.L0dad4884
    # Line 581
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0dad4878:
    sd	$a6,8($sp)
    b	.L0dad47a8
    # Line 568
    addiu	$t1,$t1,1
.L0dad4884:
    # Line 583
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0dad4890:
    # Line 566
    addiu	$t1,$t1,1
    # Line 564
    nor	$v0,$a3,$zero
    # Line 565
    lbu	$at,0($at)
    # Line 564
    and	$t3,$v0,$t3
    # Line 566
    b	.L0dad47a8
    # Line 565
    sb	$at,0($a2)
.end __glStencilTestStippledSpan

# Function: __glDepthTestOffsetSpan
# Declared: Line 589 (Source lines: 590-816)
# Address: 0x0dad48a8 - 0x0dad4eb0 (Size: 1544 bytes, Frame: 144)
.globl __glDepthTestOffsetSpan
.ent __glDepthTestOffsetSpan
__glDepthTestOffsetSpan:
    # Line 634
    lwc1	$f5,30508($a0)
    # Line 632
    lwc1	$f6,30488($a0)
    # Line 590
    addiu	$sp,$sp,-272
    sd	$zero,136($sp)
    sd	$zero,176($sp)
    # Line 620
    sw	$zero,8($sp)
    # Line 619
    sw	$zero,4($sp)
    sd	$a0,144($sp)
    sd	$s0,96($sp)
    # Line 622
    lw	$s0,30444($a0)
    # Line 618
    lw	$a2,30252($a0)
    # Line 623
    lw	$a4,12032($a0)
    # Line 624
    lw	$v0,31320($a0)
    # Line 625
    lw	$v1,31312($a0)
    # Line 627
    lw	$a1,30476($a0)
    # Line 633
    lwc1	$f4,30504($a0)
    # sd	gp,80(sp)
    # Line 590
    lui	$at,0x12
    addiu	$at,$at,12224
    # addu	gp,t9,at
    # Line 634
    mtc1	$zero,$f0
    sd	$a1,160($sp)
    sd	$v1,128($sp)
    c.lt.s	$f0,$f4
    sd	$v0,152($sp)
    # Line 623
    sw	$a4,16($sp)
    # Line 634
    bc1f	.L0dad49d0
    # Line 618
    sw	$a2,0($sp)
    # Line 634
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0dad4a90
    # Line 662
    ld	$a3,144($sp)
    # Line 643
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,144($sp)
    lw	$a1,30332($v0)
    # Line 641
    trunc.l.s	$f1,$f6
    # Line 642
    ld	$v1,152($sp)
    # Line 643
    sw	$a1,40($sp)
    # Line 642
    lw	$v0,30328($v0)
    # Line 641
    dmfc1	$at,$f1
    # Line 643
    c.lt.s	$f4,$f5
    # Line 642
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 643
    bc1f	.L0dad49fc
    # Line 641
    sw	$at,24($sp)
    # Line 645
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 646
    ld	$a0,144($sp)
    li	$v1,513
    # Line 645
    mfc1	$a1,$f0
    # Line 646
    lw	$a3,30500($a0)
    lw	$a0,1536($a0)
    # Line 645
    sw	$a1,4($sp)
    # Line 646
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0dad4d2c
    sw	$a2,0($sp)
.L0dad4990:
    # Line 647
    li	$a1,516
    beq	$a0,$a1,.L0dad4d1c
    nop
    # Line 653
    sw	$a4,20($sp)
.L0dad49a0:
    # Line 657
    sw	$zero,44($sp)
    # Line 656
    sw	$zero,36($sp)
    # Line 654
    sw	$a3,28($sp)
    # Line 655
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 657
    b	.L0dad49fc
    sd	$at,136($sp)
.L0dad49d0:
    ld	$a3,144($sp)
    # Line 684
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0dad4c14
    lw	$a3,30500($a3)
.L0dad49e4:
    # Line 688
    li	$at,516
    beq	$a0,$at,.L0dad4c28
    nop
.L0dad49f0:
    # Line 695
    sw	$zero,40($sp)
.L0dad49f4:
    # Line 694
    sw	$zero,32($sp)
    # Line 693
    sw	$a3,24($sp)
.L0dad49fc:
    sd	$s2,248($sp)
.L0dad4a00:
    sd	$s6,232($sp)
    sd	$s4,216($sp)
    sd	$s7,192($sp)
    # Line 695
    beqz	$a2,.L0dad4be4
    sd	$s8,184($sp)
    move	$s4,$zero
    addiu	$s7,$sp,32
    li	$s6,-1
    lw	$s8,52($sp)
    lw	$s2,48($sp)
    addiu	$at,$sp,0
    sd	$at,112($sp)
    addiu	$v1,$sp,16
    sd	$v1,104($sp)
    addiu	$v0,$sp,24
    sd	$v0,120($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,64($sp)
    ld	$a1,136($sp)
    li	$v1,32
    sd	$v0,168($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0dad4c48
    sd	$v1,72($sp)
    sd	$s3,240($sp)
.L0dad4a68:
    sd	$ra,224($sp)
    ld	$v0,64($sp)
    sd	$s5,208($sp)
    ld	$at,120($sp)
    lw	$v0,0($v0)
    sd	$s1,200($sp)
    lw	$at,0($at)
    sd	$v0,88($sp)
    b	.L0dad4dbc
    sd	$at,56($sp)
.L0dad4a90:
    # Line 662
    sw	$zero,40($sp)
    # Line 661
    sw	$zero,32($sp)
    # Line 662
    lw	$a0,1536($a3)
    # Line 660
    lw	$a3,30496($a3)
    # Line 662
    li	$v1,513
    beq	$a0,$v1,.L0dad4cf8
    # Line 660
    sw	$a3,24($sp)
.L0dad4aac:
    # Line 663
    li	$at,516
    beq	$a0,$at,.L0dad4d0c
    nop
.L0dad4ab8:
    # Line 667
    sub.s	$f1,$f4,$f5
.L0dad4abc:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqzl	$v0,.L0dad4a00
    sd	$s2,248($sp)
    # Line 673
    ld	$a1,144($sp)
    # Line 671
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 673
    lw	$a5,30332($a1)
    # Line 671
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 673
    mult	$a3,$a5
    # Line 671
    sra	$at,$a0,0x1f
    # Line 673
    lw	$a1,30328($a1)
    # Line 671
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 673
    mflo	$v0
    # Line 671
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 673
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 672
    sw	$a4,20($sp)
    # Line 670
    sw	$a0,0($sp)
    # Line 673
    cvt.d.s	$f3,$f6
    # Line 684
    sw	$a5,44($sp)
    # Line 673
    add.d	$f2,$f2,$f3
    # Line 669
    subu	$at,$a2,$a0
    sd	$a3,136($sp)
    # Line 683
    ld	$a3,152($sp)
    # Line 673
    trunc.l.d	$f2,$f2
    # Line 670
    move	$a2,$a0
    # Line 669
    sw	$at,4($sp)
    # Line 683
    srav	$a1,$a1,$a3
    # Line 673
    dmfc1	$v1,$f2
    # Line 683
    sw	$a1,36($sp)
    # Line 684
    b	.L0dad49fc
    # Line 673
    sw	$v1,28($sp)
.L0dad4b78:
    ld	$s5,208($sp)
    ld	$ra,224($sp)
.L0dad4b80:
    # Line 802
    ld	$v1,72($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,64($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s3,56($sp)
    mfc1	$s1,$f3
    # Line 796
    ld	$at,160($sp)
    # Line 802
    addu	$s1,$s1,$s3
    ld	$s3,120($sp)
    # Line 796
    sw	$s8,-4($at)
    # Line 802
    sw	$s1,0($s3)
    ld	$s1,200($sp)
    ld	$s3,240($sp)
.L0dad4bd8:
    ld	$a1,168($sp)
    bnezl	$a1,.L0dad4a68
    sd	$s3,240($sp)
.L0dad4be4:
    ld	$s8,184($sp)
    ld	$s7,192($sp)
    ld	$at,176($sp)
    ld	$s4,216($sp)
    ld	$s6,232($sp)
    bnez	$at,.L0dad4e6c
    ld	$s2,248($sp)
    # Line 808
    move	$v0,$zero
    # ld	gp,80(sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dad4c14:
    # Line 688
    beqz	$a3,.L0dad49e4
    # Line 692
    la	$v0,__glCDTPixel
.L0dad4c1c:
    lw	$v0,0($v0)
    b	.L0dad49f0
    sw	$v0,16($sp)
.L0dad4c28:
    # Line 688
    bnezl	$a3,.L0dad49f4
    # Line 695
    sw	$zero,40($sp)
    b	.L0dad4c1c
    # Line 692
    la	$v0,__glCDTPixel
.L0dad4c38:
    ld	$s1,200($sp)
    ld	$s5,208($sp)
    ld	$ra,224($sp)
    ld	$s3,240($sp)
.L0dad4c48:
    # Line 752
    ld	$at,104($sp)
    ld	$v1,112($sp)
    addiu	$s4,$s4,4
    addiu	$at,$at,4
    addiu	$v1,$v1,4
    ld	$a1,120($sp)
    sd	$v1,112($sp)
    lw	$v1,0($v1)
    addiu	$a1,$a1,4
    sd	$a1,120($sp)
    ld	$a1,64($sp)
    sd	$at,104($sp)
    sd	$v1,168($sp)
    addiu	$a1,$a1,4
    beqz	$v1,.L0dad4be4
    sd	$a1,64($sp)
    ld	$at,136($sp)
    beqz	$at,.L0dad4bd8
    ld	$v1,72($sp)
    # Line 754
    ld	$v0,168($sp)
    sd	$s3,240($sp)
    slt	$v0,$v0,$v1
    bnez	$v0,.L0dad4e14
    move	$s3,$v1
.L0dad4ca8:
    sd	$s5,208($sp)
    # Line 759
    ld	$v1,112($sp)
    ld	$v0,168($sp)
    sd	$s1,200($sp)
    # Line 767
    ld	$s1,120($sp)
    # Line 759
    subu	$v0,$v0,$s3
    # Line 768
    addiu	$s3,$s3,-1
    # Line 767
    lw	$s1,0($s1)
    ld	$at,152($sp)
    sd	$v0,168($sp)
    sd	$s1,56($sp)
    srlv	$s1,$s1,$at
    ld	$at,128($sp)
    # Line 759
    sw	$v0,0($v1)
    # Line 768
    bltz	$s3,.L0dad4b80
    # Line 767
    addu	$s1,$s1,$at
    ld	$s5,104($sp)
    sd	$ra,224($sp)
    b	.L0dad4e34
    # Line 768
    lw	$s5,0($s5)
.L0dad4cf8:
    # Line 663
    beqz	$a3,.L0dad4aac
    # Line 667
    la	$at,__glCDTPixel
.L0dad4d00:
    lw	$at,0($at)
    b	.L0dad4ab8
    sw	$at,16($sp)
.L0dad4d0c:
    # Line 663
    bnezl	$a3,.L0dad4abc
    # Line 667
    sub.s	$f1,$f4,$f5
    b	.L0dad4d00
    la	$at,__glCDTPixel
.L0dad4d1c:
    # Line 647
    bnezl	$a3,.L0dad49a0
    # Line 653
    sw	$a4,20($sp)
    b	.L0dad4d34
    # Line 651
    la	$v0,__glCDTPixel
.L0dad4d2c:
    # Line 647
    beqz	$a3,.L0dad4990
    # Line 651
    la	$v0,__glCDTPixel
.L0dad4d34:
    lw	$v0,0($v0)
    b	.L0dad49a0
    sw	$v0,20($sp)
.L0dad4d40:
    ld	$a1,176($sp)
    # Line 732
    and	$s8,$v1,$s8
    # Line 733
    addiu	$a1,$a1,1
    sd	$a1,176($sp)
.L0dad4d50:
    # Line 739
    addiu	$s0,$s0,4
    # Line 738
    lw	$at,0($at)
    # Line 741
    srl	$s2,$s2,0x1
    # Line 718
    beq	$s3,$s6,.L0dad4d8c
    # Line 738
    addu	$s1,$at,$s1
.L0dad4d64:
    # Line 731
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$a2,$s0
    jalr	$s5
    move	$t9,$s5
    # Line 718
    addiu	$s3,$s3,-1
    # Line 731
    bnez	$v0,.L0dad4d50
    # Line 738
    addu	$at,$s4,$s7
    b	.L0dad4d40
    # Line 732
    nor	$v1,$s2,$zero
.L0dad4d8c:
    # Line 750
    ld	$a1,120($sp)
    ld	$v0,160($sp)
    ld	$at,88($sp)
    ld	$v1,56($sp)
    # Line 746
    sw	$s8,0($v0)
    addiu	$v0,$v0,4
    sd	$v0,160($sp)
    # Line 750
    ld	$v0,168($sp)
    addu	$v1,$v1,$at
    sd	$v1,56($sp)
    beqz	$v0,.L0dad4c38
    sw	$v1,0($a1)
.L0dad4dbc:
    # Line 716
    li	$s8,-1
    # Line 710
    ld	$a1,168($sp)
    # Line 715
    ld	$at,152($sp)
    ld	$s1,56($sp)
    lui	$s2,0x8000
    ld	$v1,168($sp)
    srlv	$s1,$s1,$at
    ld	$at,128($sp)
    # Line 705
    move	$s3,$v1
    slti	$v1,$v1,33
    # Line 715
    addu	$s1,$s1,$at
    # Line 705
    bnez	$v1,.L0dad4df4
    # Line 710
    ld	$at,112($sp)
    # Line 708
    li	$s3,32
.L0dad4df4:
    # Line 710
    subu	$a1,$a1,$s3
    # Line 718
    addiu	$s3,$s3,-1
    sd	$a1,168($sp)
    bltz	$s3,.L0dad4d8c
    # Line 710
    sw	$a1,0($at)
    ld	$s5,104($sp)
    b	.L0dad4d64
    # Line 718
    lw	$s5,0($s5)
.L0dad4e14:
    sd	$s1,200($sp)
    b	.L0dad4ca8
    ld	$s3,168($sp)
.L0dad4e20:
    # Line 789
    addiu	$s0,$s0,4
    # Line 788
    lw	$at,0($at)
    # Line 791
    srl	$s2,$s2,0x1
    # Line 768
    beq	$s3,$s6,.L0dad4b78
    # Line 788
    addu	$s1,$at,$s1
.L0dad4e34:
    # Line 781
    move	$a0,$s1
    lw	$a1,0($s0)
    move	$a2,$s0
    jalr	$s5
    move	$t9,$s5
    # Line 768
    addiu	$s3,$s3,-1
    # Line 781
    bnez	$v0,.L0dad4e20
    # Line 788
    addu	$at,$s4,$s7
    ld	$v1,176($sp)
    # Line 783
    addiu	$v1,$v1,1
    # Line 782
    nor	$v0,$s2,$zero
    and	$s8,$v0,$s8
    b	.L0dad4e20
    sd	$v1,176($sp)
.L0dad4e6c:
    ld	$a1,144($sp)
    # Line 808
    ld	$at,176($sp)
    lw	$a1,30252($a1)
    beq	$a1,$at,.L0dad4e90
    # Line 812
    li	$v0,1
    # ld	gp,80(sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dad4e90:
    # Line 816
    li	$v0,1
    # Line 815
    ld	$s0,144($sp)
    # ld	gp,80(sp)
    li	$a3,1
    sb	$a3,30480($s0)
    # Line 816
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glDepthTestOffsetSpan

# Function: __glDepthTestStippledOffsetSpan
# Declared: Line 822 (Source lines: 823-1047)
# Address: 0x0dad4eb0 - 0x0dad54c8 (Size: 1560 bytes, Frame: 160)
.globl __glDepthTestStippledOffsetSpan
.ent __glDepthTestStippledOffsetSpan
__glDepthTestStippledOffsetSpan:
    # Line 867
    lwc1	$f5,30508($a0)
    # Line 865
    lwc1	$f6,30488($a0)
    # Line 823
    addiu	$sp,$sp,-288
    sd	$zero,152($sp)
    sd	$s6,112($sp)
    # Line 862
    move	$s6,$zero
    # Line 853
    sw	$zero,8($sp)
    # Line 852
    sw	$zero,4($sp)
    sd	$a0,160($sp)
    sd	$s2,120($sp)
    # Line 855
    lw	$s2,30444($a0)
    # Line 851
    lw	$a5,30252($a0)
    # Line 856
    lw	$a4,12032($a0)
    # Line 860
    lw	$a1,30476($a0)
    # Line 857
    lw	$v0,31320($a0)
    # Line 858
    lw	$v1,31312($a0)
    sd	$a1,176($sp)
    # Line 866
    lwc1	$f4,30504($a0)
    # sd	gp,104(sp)
    # Line 823
    lui	$at,0x12
    addiu	$at,$at,10680
    # addu	gp,t9,at
    # Line 867
    mtc1	$zero,$f0
    sd	$v1,144($sp)
    sd	$v0,168($sp)
    c.lt.s	$f0,$f4
    # Line 856
    sw	$a4,16($sp)
    # Line 851
    move	$a2,$a5
    # Line 867
    bc1f	.L0dad4fe0
    # Line 851
    sw	$a5,0($sp)
    # Line 867
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0dad50a8
    # Line 894
    ld	$a3,160($sp)
    # Line 875
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,160($sp)
    lw	$a1,30332($v0)
    # Line 873
    trunc.l.s	$f1,$f6
    # Line 874
    ld	$v1,168($sp)
    # Line 875
    sw	$a1,40($sp)
    # Line 874
    lw	$v0,30328($v0)
    # Line 873
    dmfc1	$at,$f1
    # Line 875
    c.lt.s	$f4,$f5
    # Line 874
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 875
    bc1f	.L0dad500c
    # Line 873
    sw	$at,24($sp)
    # Line 877
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 878
    ld	$a0,160($sp)
    li	$v1,513
    # Line 877
    mfc1	$a1,$f0
    # Line 878
    lw	$a3,30500($a0)
    lw	$a0,1536($a0)
    # Line 877
    sw	$a1,4($sp)
    # Line 878
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0dad5344
    sw	$a2,0($sp)
.L0dad4fa0:
    # Line 879
    li	$a1,516
    beq	$a0,$a1,.L0dad5334
    nop
    # Line 885
    sw	$a4,20($sp)
.L0dad4fb0:
    # Line 889
    sw	$zero,44($sp)
    # Line 888
    sw	$zero,36($sp)
    # Line 886
    sw	$a3,28($sp)
    # Line 887
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 889
    b	.L0dad500c
    sd	$at,152($sp)
.L0dad4fe0:
    ld	$a3,160($sp)
    # Line 916
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0dad5234
    lw	$a3,30500($a3)
.L0dad4ff4:
    # Line 920
    li	$at,516
    beq	$a0,$at,.L0dad5248
    nop
.L0dad5000:
    # Line 927
    sw	$zero,40($sp)
.L0dad5004:
    # Line 926
    sw	$zero,32($sp)
    # Line 925
    sw	$a3,24($sp)
.L0dad500c:
    # Line 927
    beqz	$a2,.L0dad5218
    nop
    sd	$s5,224($sp)
    move	$s5,$zero
    sd	$s8,216($sp)
    addiu	$s8,$sp,32
    sd	$s7,200($sp)
    li	$s7,-1
    sd	$s4,232($sp)
    lw	$s4,56($sp)
    addiu	$at,$sp,0
    sd	$at,136($sp)
    sd	$s0,256($sp)
    lw	$s0,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,64($sp)
    li	$v1,32
    sd	$s0,192($sp)
    addiu	$v0,$sp,24
    sd	$v0,128($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,80($sp)
    ld	$a1,152($sp)
    lw	$s0,48($sp)
    sd	$v0,184($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0dad5264
    sd	$v1,88($sp)
    sd	$s3,248($sp)
.L0dad5084:
    ld	$v0,80($sp)
    sd	$ra,240($sp)
    ld	$at,128($sp)
    lw	$v0,0($v0)
    sd	$s1,208($sp)
    lw	$at,0($at)
    sd	$v0,96($sp)
    b	.L0dad53f0
    sd	$at,72($sp)
.L0dad50a8:
    # Line 894
    sw	$zero,40($sp)
    # Line 893
    sw	$zero,32($sp)
    # Line 894
    lw	$a0,1536($a3)
    # Line 892
    lw	$a3,30496($a3)
    # Line 894
    li	$v1,513
    beq	$a0,$v1,.L0dad5310
    # Line 892
    sw	$a3,24($sp)
.L0dad50c4:
    # Line 895
    li	$at,516
    beq	$a0,$at,.L0dad5324
    nop
.L0dad50d0:
    # Line 899
    sub.s	$f1,$f4,$f5
.L0dad50d4:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqz	$v0,.L0dad500c
    # Line 905
    ld	$a1,160($sp)
    # Line 903
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 905
    lw	$a6,30332($a1)
    # Line 903
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 905
    mult	$a3,$a6
    # Line 903
    sra	$at,$a0,0x1f
    # Line 905
    lw	$a1,30328($a1)
    # Line 903
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 905
    mflo	$v0
    # Line 903
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 905
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 904
    sw	$a4,20($sp)
    # Line 902
    sw	$a0,0($sp)
    # Line 905
    cvt.d.s	$f3,$f6
    # Line 916
    sw	$a6,44($sp)
    # Line 905
    add.d	$f2,$f2,$f3
    # Line 901
    subu	$at,$a2,$a0
    sd	$a3,152($sp)
    # Line 915
    ld	$a3,168($sp)
    # Line 905
    trunc.l.d	$f2,$f2
    # Line 902
    move	$a2,$a0
    # Line 901
    sw	$at,4($sp)
    # Line 915
    srav	$a1,$a1,$a3
    # Line 905
    dmfc1	$v1,$f2
    # Line 915
    sw	$a1,36($sp)
    # Line 916
    b	.L0dad500c
    # Line 905
    sw	$v1,28($sp)
.L0dad518c:
    ld	$ra,240($sp)
.L0dad5190:
    # Line 1038
    ld	$v1,88($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,80($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s3,72($sp)
    mfc1	$s1,$f3
    # Line 1032
    ld	$at,192($sp)
    ld	$v0,176($sp)
    # Line 1038
    addu	$s1,$s1,$s3
    ld	$s3,128($sp)
    # Line 1032
    and	$at,$at,$s4
    sw	$at,-4($v0)
    # Line 1038
    sw	$s1,0($s3)
    ld	$s1,208($sp)
    ld	$s3,248($sp)
.L0dad51f0:
    ld	$a1,184($sp)
    bnezl	$a1,.L0dad5084
    sd	$s3,248($sp)
.L0dad51fc:
    ld	$s7,200($sp)
    ld	$s8,216($sp)
    ld	$s5,224($sp)
    ld	$a5,160($sp)
    ld	$s4,232($sp)
    ld	$s0,256($sp)
    lw	$a5,30252($a5)
.L0dad5218:
    bne	$a5,$s6,.L0dad54b0
    # Line 1047
    li	$v0,1
    # ld	gp,104(sp)
    ld	$s2,120($sp)
    ld	$s6,112($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0dad5234:
    # Line 920
    beqz	$a3,.L0dad4ff4
    # Line 924
    la	$at,__glCDTPixel
.L0dad523c:
    lw	$at,0($at)
    b	.L0dad5000
    sw	$at,16($sp)
.L0dad5248:
    # Line 920
    bnezl	$a3,.L0dad5004
    # Line 927
    sw	$zero,40($sp)
    b	.L0dad523c
    # Line 924
    la	$at,__glCDTPixel
.L0dad5258:
    ld	$s1,208($sp)
    ld	$ra,240($sp)
    ld	$s3,248($sp)
.L0dad5264:
    # Line 985
    ld	$a1,64($sp)
    ld	$v0,136($sp)
    addiu	$s5,$s5,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,128($sp)
    sd	$v0,136($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    ld	$v1,80($sp)
    sd	$a1,64($sp)
    sd	$v0,184($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0dad51fc
    sd	$v1,80($sp)
    ld	$a1,152($sp)
    beqz	$a1,.L0dad51f0
    ld	$v0,88($sp)
    # Line 987
    ld	$at,184($sp)
    sd	$s3,248($sp)
    slt	$at,$at,$v0
    beqz	$at,.L0dad52cc
    move	$s3,$v0
    sd	$s1,208($sp)
    ld	$s3,184($sp)
.L0dad52cc:
    # Line 992
    ld	$v1,136($sp)
    ld	$v0,184($sp)
    sd	$s1,208($sp)
    # Line 994
    ld	$s1,128($sp)
    # Line 992
    subu	$v0,$v0,$s3
    # Line 1002
    addiu	$s3,$s3,-1
    # Line 994
    lw	$s1,0($s1)
    ld	$at,168($sp)
    sd	$v0,184($sp)
    sd	$s1,72($sp)
    srlv	$s1,$s1,$at
    ld	$at,144($sp)
    # Line 992
    sw	$v0,0($v1)
    # Line 1002
    bltz	$s3,.L0dad5190
    # Line 994
    addu	$s1,$s1,$at
    b	.L0dad546c
    sd	$ra,240($sp)
.L0dad5310:
    # Line 895
    beqz	$a3,.L0dad50c4
    # Line 899
    la	$at,__glCDTPixel
.L0dad5318:
    lw	$at,0($at)
    b	.L0dad50d0
    sw	$at,16($sp)
.L0dad5324:
    # Line 895
    bnezl	$a3,.L0dad50d4
    # Line 899
    sub.s	$f1,$f4,$f5
    b	.L0dad5318
    la	$at,__glCDTPixel
.L0dad5334:
    # Line 879
    bnezl	$a3,.L0dad4fb0
    # Line 885
    sw	$a4,20($sp)
    b	.L0dad534c
    # Line 883
    la	$v0,__glCDTPixel
.L0dad5344:
    # Line 879
    beqz	$a3,.L0dad4fa0
    # Line 883
    la	$v0,__glCDTPixel
.L0dad534c:
    lw	$v0,0($v0)
    b	.L0dad4fb0
    sw	$v0,20($sp)
.L0dad5358:
    # Line 967
    addiu	$s6,$s6,1
.L0dad535c:
    # Line 974
    srl	$s0,$s0,0x1
.L0dad5360:
    # Line 971
    addu	$v1,$s5,$s8
    lw	$v1,0($v1)
    # Line 972
    addiu	$s2,$s2,4
    # Line 949
    beq	$s3,$s7,.L0dad53b8
    # Line 971
    addu	$s1,$v1,$s1
    # Line 949
    and	$a1,$s0,$s4
.L0dad5378:
    beqz	$a1,.L0dad5358
    addiu	$s3,$s3,-1
    # Line 963
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    bnezl	$v0,.L0dad5360
    # Line 974
    srl	$s0,$s0,0x1
    # Line 964
    ld	$at,192($sp)
    # Line 965
    addiu	$s6,$s6,1
    # Line 964
    nor	$v0,$s0,$zero
    and	$at,$v0,$at
    # Line 965
    b	.L0dad535c
    sd	$at,192($sp)
.L0dad53b8:
    ld	$at,176($sp)
    # Line 979
    addiu	$at,$at,4
    # Line 980
    ld	$a1,96($sp)
    ld	$v0,72($sp)
    sd	$at,176($sp)
    ld	$v1,128($sp)
    addu	$v0,$v0,$a1
    # Line 979
    ld	$a1,192($sp)
    # Line 980
    sw	$v0,0($v1)
    ld	$v1,184($sp)
    sd	$v0,72($sp)
    # Line 979
    and	$a1,$a1,$s4
    # Line 980
    beqz	$v1,.L0dad5258
    # Line 979
    sw	$a1,-4($at)
.L0dad53f0:
    # Line 946
    ld	$s4,176($sp)
    # Line 940
    ld	$v0,184($sp)
    ld	$at,184($sp)
    # Line 945
    ld	$s1,72($sp)
    # Line 940
    ld	$v1,136($sp)
    # Line 936
    move	$s3,$at
    slti	$at,$at,33
    bnez	$at,.L0dad5418
    lui	$s0,0x8000
    # Line 938
    li	$s3,32
.L0dad5418:
    # Line 946
    lw	$s4,0($s4)
    # Line 940
    subu	$v0,$v0,$s3
    # Line 947
    li	$at,-1
    sd	$at,192($sp)
    # Line 945
    ld	$at,168($sp)
    # Line 949
    addiu	$s3,$s3,-1
    sd	$v0,184($sp)
    # Line 945
    srlv	$s1,$s1,$at
    ld	$at,144($sp)
    # Line 940
    sw	$v0,0($v1)
    # Line 949
    bltz	$s3,.L0dad53b8
    # Line 945
    addu	$s1,$s1,$at
    b	.L0dad5378
    # Line 949
    and	$a1,$s0,$s4
.L0dad5450:
    # Line 1020
    addiu	$s6,$s6,1
.L0dad5454:
    # Line 1027
    srl	$s0,$s0,0x1
.L0dad5458:
    # Line 1024
    addu	$v0,$s5,$s8
    lw	$v0,0($v0)
    # Line 1025
    addiu	$s2,$s2,4
    # Line 1002
    beq	$s3,$s7,.L0dad518c
    # Line 1024
    addu	$s1,$v0,$s1
.L0dad546c:
    # Line 1002
    and	$v1,$s0,$s4
    beqz	$v1,.L0dad5450
    addiu	$s3,$s3,-1
    # Line 1016
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    bnezl	$v0,.L0dad5458
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1017
    ld	$at,192($sp)
    # Line 1018
    addiu	$s6,$s6,1
    # Line 1017
    nor	$v0,$s0,$zero
    and	$at,$v0,$at
    # Line 1018
    b	.L0dad5454
    sd	$at,192($sp)
.L0dad54b0:
    # Line 1045
    move	$v0,$zero
    # ld	gp,104(sp)
    ld	$s2,120($sp)
    ld	$s6,112($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end __glDepthTestStippledOffsetSpan

# Function: __glDepthTestStencilOffsetSpan
# Declared: Line 1324 (Source lines: 1325-1561)
# Address: 0x0dad54c8 - 0x0dad5b60 (Size: 1688 bytes, Frame: 160)
.globl __glDepthTestStencilOffsetSpan
.ent __glDepthTestStencilOffsetSpan
__glDepthTestStencilOffsetSpan:
    # Line 1372
    lwc1	$f5,30508($a0)
    # Line 1370
    lwc1	$f6,30488($a0)
    # Line 1325
    addiu	$sp,$sp,-288
    sd	$zero,152($sp)
    sd	$zero,200($sp)
    # Line 1356
    sw	$zero,8($sp)
    # Line 1355
    sw	$zero,4($sp)
    sd	$a0,160($sp)
    sd	$s7,80($sp)
    # Line 1361
    lw	$s7,31196($a0)
    sd	$s0,96($sp)
    # Line 1359
    lw	$s0,30456($a0)
    sd	$s1,88($sp)
    # Line 1358
    lw	$s1,30444($a0)
    # Line 1362
    lw	$a4,12032($a0)
    # Line 1364
    lw	$a1,31312($a0)
    # Line 1363
    lw	$v1,31320($a0)
    # Line 1360
    lw	$v0,31192($a0)
    sd	$a1,144($sp)
    sd	$v1,168($sp)
    # Line 1371
    lwc1	$f4,30504($a0)
    # Line 1366
    lw	$a2,30476($a0)
    # sd	gp,112(sp)
    # Line 1325
    lui	$at,0x12
    addiu	$at,$at,9120
    # addu	gp,t9,at
    # Line 1372
    mtc1	$zero,$f0
    sd	$v0,192($sp)
    sd	$a2,176($sp)
    c.lt.s	$f0,$f4
    # Line 1354
    lw	$a2,30252($a0)
    # Line 1362
    sw	$a4,16($sp)
    # Line 1372
    bc1f	.L0dad5608
    # Line 1354
    sw	$a2,0($sp)
    # Line 1372
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0dad56c4
    # Line 1399
    ld	$a3,160($sp)
    # Line 1380
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,160($sp)
    lw	$a1,30332($v0)
    # Line 1378
    trunc.l.s	$f1,$f6
    # Line 1379
    ld	$v1,168($sp)
    # Line 1380
    sw	$a1,40($sp)
    # Line 1379
    lw	$v0,30328($v0)
    # Line 1378
    dmfc1	$at,$f1
    # Line 1380
    c.lt.s	$f4,$f5
    # Line 1379
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 1380
    bc1f	.L0dad5634
    # Line 1378
    sw	$at,24($sp)
    # Line 1382
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 1383
    ld	$a0,160($sp)
    li	$v1,513
    # Line 1382
    mfc1	$a1,$f0
    # Line 1383
    lw	$a3,30500($a0)
    lw	$a0,1536($a0)
    # Line 1382
    sw	$a1,4($sp)
    # Line 1383
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0dad5984
    sw	$a2,0($sp)
.L0dad55c8:
    # Line 1384
    li	$a1,516
    beq	$a0,$a1,.L0dad5974
    nop
    # Line 1390
    sw	$a4,20($sp)
.L0dad55d8:
    # Line 1394
    sw	$zero,44($sp)
    # Line 1393
    sw	$zero,36($sp)
    # Line 1391
    sw	$a3,28($sp)
    # Line 1392
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 1394
    b	.L0dad5634
    sd	$at,152($sp)
.L0dad5608:
    ld	$a3,160($sp)
    # Line 1421
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0dad586c
    lw	$a3,30500($a3)
.L0dad561c:
    # Line 1425
    li	$at,516
    beq	$a0,$at,.L0dad5880
    nop
.L0dad5628:
    # Line 1432
    sw	$zero,40($sp)
.L0dad562c:
    # Line 1431
    sw	$zero,32($sp)
    # Line 1430
    sw	$a3,24($sp)
.L0dad5634:
    sd	$s3,256($sp)
.L0dad5638:
    sd	$s8,224($sp)
    # Line 1432
    beqz	$a2,.L0dad581c
    sd	$s5,216($sp)
    move	$s5,$zero
    addiu	$s8,$sp,32
    li	$a0,-1
    addiu	$at,$sp,0
    sd	$at,136($sp)
    lw	$s3,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,120($sp)
    li	$v1,32
    sd	$s3,208($sp)
    addiu	$v0,$sp,24
    sd	$v0,128($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,64($sp)
    ld	$a1,152($sp)
    lw	$s3,48($sp)
    sd	$v0,184($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0dad58a0
    sd	$v1,72($sp)
    sd	$s2,264($sp)
.L0dad569c:
    sd	$s6,248($sp)
    ld	$v0,64($sp)
    sd	$ra,240($sp)
    ld	$at,128($sp)
    lw	$v0,0($v0)
    sd	$s4,232($sp)
    lw	$at,0($at)
    sd	$v0,104($sp)
    b	.L0dad5a48
    sd	$at,56($sp)
.L0dad56c4:
    # Line 1399
    sw	$zero,40($sp)
    # Line 1398
    sw	$zero,32($sp)
    # Line 1399
    lw	$a0,1536($a3)
    # Line 1397
    lw	$a3,30496($a3)
    # Line 1399
    li	$v1,513
    beq	$a0,$v1,.L0dad5950
    # Line 1397
    sw	$a3,24($sp)
.L0dad56e0:
    # Line 1400
    li	$at,516
    beq	$a0,$at,.L0dad5964
    nop
.L0dad56ec:
    # Line 1404
    sub.s	$f1,$f4,$f5
.L0dad56f0:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqzl	$v0,.L0dad5638
    sd	$s3,256($sp)
    # Line 1410
    ld	$a1,160($sp)
    # Line 1408
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 1410
    lw	$a5,30332($a1)
    # Line 1408
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 1410
    mult	$a3,$a5
    # Line 1408
    sra	$at,$a0,0x1f
    # Line 1410
    lw	$a1,30328($a1)
    # Line 1408
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 1410
    mflo	$v0
    # Line 1408
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 1410
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1409
    sw	$a4,20($sp)
    # Line 1407
    sw	$a0,0($sp)
    # Line 1410
    cvt.d.s	$f3,$f6
    # Line 1421
    sw	$a5,44($sp)
    # Line 1410
    add.d	$f2,$f2,$f3
    # Line 1406
    subu	$at,$a2,$a0
    sd	$a3,152($sp)
    # Line 1420
    ld	$a3,168($sp)
    # Line 1410
    trunc.l.d	$f2,$f2
    # Line 1407
    move	$a2,$a0
    # Line 1406
    sw	$at,4($sp)
    # Line 1420
    srav	$a1,$a1,$a3
    # Line 1410
    dmfc1	$v1,$f2
    # Line 1420
    sw	$a1,36($sp)
    # Line 1421
    b	.L0dad5634
    # Line 1410
    sw	$v1,28($sp)
.L0dad57ac:
    ld	$ra,240($sp)
    ld	$s6,248($sp)
.L0dad57b4:
    # Line 1546
    ld	$a1,72($sp)
    mtc1	$a1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v1,64($sp)
    mul.d	$f0,$f0,$f1
    lw	$v1,0($v1)
    mtc1	$v1,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s4,56($sp)
    mfc1	$s2,$f3
    # Line 1540
    ld	$v0,176($sp)
    ld	$at,208($sp)
    # Line 1546
    addu	$s2,$s2,$s4
    ld	$s4,128($sp)
    # Line 1540
    sw	$at,-4($v0)
    # Line 1546
    sw	$s2,0($s4)
    ld	$s4,232($sp)
    ld	$s2,264($sp)
.L0dad5810:
    ld	$at,184($sp)
    bnezl	$at,.L0dad569c
    sd	$s2,264($sp)
.L0dad581c:
    ld	$v0,200($sp)
    ld	$s5,216($sp)
    ld	$s8,224($sp)
    beqz	$v0,.L0dad5b2c
    ld	$s3,256($sp)
    ld	$v1,160($sp)
    # Line 1552
    ld	$a1,200($sp)
    lw	$v1,30252($v1)
    bne	$v1,$a1,.L0dad5b48
    # Line 1556
    li	$v0,1
    # Line 1561
    li	$v0,1
    # ld	gp,112(sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    # Line 1560
    ld	$a1,160($sp)
    # Line 1561
    addiu	$sp,$sp,288
    # Line 1560
    li	$a0,1
    # Line 1561
    jr	$ra
    # Line 1560
    sb	$a0,30480($a1)
.L0dad586c:
    # Line 1425
    beqz	$a3,.L0dad561c
    # Line 1429
    la	$at,__glCDTPixel
.L0dad5874:
    lw	$at,0($at)
    b	.L0dad5628
    sw	$at,16($sp)
.L0dad5880:
    # Line 1425
    bnezl	$a3,.L0dad562c
    # Line 1432
    sw	$zero,40($sp)
    b	.L0dad5874
    # Line 1429
    la	$at,__glCDTPixel
.L0dad5890:
    ld	$s4,232($sp)
    ld	$ra,240($sp)
    ld	$s6,248($sp)
    ld	$s2,264($sp)
.L0dad58a0:
    # Line 1491
    ld	$a1,120($sp)
    ld	$v0,136($sp)
    addiu	$s5,$s5,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,128($sp)
    sd	$v0,136($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    ld	$v1,64($sp)
    sd	$a1,120($sp)
    sd	$v0,184($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0dad581c
    sd	$v1,64($sp)
    ld	$a1,152($sp)
    beqz	$a1,.L0dad5810
    ld	$v0,72($sp)
    # Line 1493
    ld	$at,184($sp)
    sd	$s4,232($sp)
    slt	$at,$at,$v0
    bnez	$at,.L0dad5aa4
    move	$s4,$v0
.L0dad5900:
    sd	$s6,248($sp)
    # Line 1498
    ld	$v1,136($sp)
    ld	$v0,184($sp)
    sd	$s2,264($sp)
    # Line 1506
    ld	$s2,128($sp)
    # Line 1498
    subu	$v0,$v0,$s4
    # Line 1508
    addiu	$s4,$s4,-1
    # Line 1506
    lw	$s2,0($s2)
    ld	$at,168($sp)
    sd	$v0,184($sp)
    sd	$s2,56($sp)
    srlv	$s2,$s2,$at
    ld	$at,144($sp)
    # Line 1498
    sw	$v0,0($v1)
    # Line 1508
    bltz	$s4,.L0dad57b4
    # Line 1506
    addu	$s2,$s2,$at
    ld	$s6,120($sp)
    sd	$ra,240($sp)
    b	.L0dad5af8
    # Line 1508
    lw	$s6,0($s6)
.L0dad5950:
    # Line 1400
    beqz	$a3,.L0dad56e0
    # Line 1404
    la	$at,__glCDTPixel
.L0dad5958:
    lw	$at,0($at)
    b	.L0dad56ec
    sw	$at,16($sp)
.L0dad5964:
    # Line 1400
    bnezl	$a3,.L0dad56f0
    # Line 1404
    sub.s	$f1,$f4,$f5
    b	.L0dad5958
    la	$at,__glCDTPixel
.L0dad5974:
    # Line 1384
    bnezl	$a3,.L0dad55d8
    # Line 1390
    sw	$a4,20($sp)
    b	.L0dad598c
    # Line 1388
    la	$v0,__glCDTPixel
.L0dad5984:
    # Line 1384
    beqz	$a3,.L0dad55c8
    # Line 1388
    la	$v0,__glCDTPixel
.L0dad598c:
    lw	$v0,0($v0)
    b	.L0dad55d8
    sw	$v0,20($sp)
.L0dad5998:
    # Line 1470
    nor	$at,$s3,$zero
    # Line 1469
    ld	$v1,192($sp)
    sd	$a1,200($sp)
    # Line 1470
    ld	$a1,208($sp)
    # Line 1469
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    # Line 1470
    and	$a1,$at,$a1
    sd	$a1,208($sp)
    # Line 1469
    sb	$v1,0($s0)
.L0dad59bc:
    # Line 1477
    addiu	$s1,$s1,4
    # Line 1480
    srl	$s3,$s3,0x1
    # Line 1476
    addu	$at,$s5,$s8
    lw	$at,0($at)
    # Line 1478
    addiu	$s0,$s0,1
    # Line 1453
    beq	$s4,$a0,.L0dad5a14
    # Line 1476
    addu	$s2,$at,$s2
.L0dad59d8:
    # Line 1466
    move	$a0,$s2
    lw	$a1,0($s1)
    move	$a2,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 1453
    addiu	$s4,$s4,-1
    li	$a0,-1
    ld	$a1,200($sp)
    # Line 1466
    lbu	$a2,0($s0)
    beqz	$v0,.L0dad5998
    # Line 1471
    addiu	$a1,$a1,1
    # Line 1467
    addu	$v0,$a2,$s7
    lbu	$v0,0($v0)
    b	.L0dad59bc
    sb	$v0,0($s0)
.L0dad5a14:
    ld	$v1,176($sp)
    # Line 1485
    ld	$a1,208($sp)
    # Line 1489
    ld	$at,128($sp)
    ld	$v0,104($sp)
    # Line 1485
    sw	$a1,0($v1)
    # Line 1489
    ld	$a1,56($sp)
    # Line 1485
    addiu	$v1,$v1,4
    sd	$v1,176($sp)
    # Line 1489
    ld	$v1,184($sp)
    addu	$a1,$a1,$v0
    sd	$a1,56($sp)
    beqz	$v1,.L0dad5890
    sw	$a1,0($at)
.L0dad5a48:
    ld	$at,184($sp)
    lui	$s3,0x8000
    # Line 1450
    ld	$s2,56($sp)
    # Line 1441
    move	$s4,$at
    slti	$at,$at,33
    bnez	$at,.L0dad5a68
    # Line 1451
    li	$v0,-1
    # Line 1443
    li	$s4,32
.L0dad5a68:
    sd	$v0,208($sp)
    # Line 1445
    ld	$v0,184($sp)
    ld	$s6,120($sp)
    ld	$v1,136($sp)
    subu	$v0,$v0,$s4
    # Line 1450
    ld	$at,168($sp)
    # Line 1453
    addiu	$s4,$s4,-1
    sd	$v0,184($sp)
    # Line 1450
    srlv	$s2,$s2,$at
    ld	$at,144($sp)
    # Line 1445
    sw	$v0,0($v1)
    # Line 1453
    bltz	$s4,.L0dad5a14
    # Line 1450
    addu	$s2,$s2,$at
    b	.L0dad59d8
    # Line 1453
    lw	$s6,0($s6)
.L0dad5aa4:
    sd	$s2,264($sp)
    b	.L0dad5900
    ld	$s4,184($sp)
.L0dad5ab0:
    # Line 1525
    nor	$v1,$s3,$zero
    # Line 1524
    ld	$at,192($sp)
    ld	$v0,200($sp)
    addu	$at,$a2,$at
    lbu	$at,0($at)
    # Line 1526
    addiu	$v0,$v0,1
    sd	$v0,200($sp)
    # Line 1525
    ld	$v0,208($sp)
    # Line 1524
    sb	$at,0($s0)
    # Line 1525
    and	$v0,$v1,$v0
    sd	$v0,208($sp)
.L0dad5adc:
    # Line 1532
    addiu	$s1,$s1,4
    # Line 1535
    srl	$s3,$s3,0x1
    # Line 1531
    addu	$v1,$s5,$s8
    lw	$v1,0($v1)
    # Line 1533
    addiu	$s0,$s0,1
    # Line 1508
    beq	$s4,$a0,.L0dad57ac
    # Line 1531
    addu	$s2,$v1,$s2
.L0dad5af8:
    # Line 1521
    move	$a0,$s2
    lw	$a1,0($s1)
    move	$a2,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 1508
    addiu	$s4,$s4,-1
    li	$a0,-1
    # Line 1521
    beqz	$v0,.L0dad5ab0
    lbu	$a2,0($s0)
    # Line 1522
    addu	$a1,$a2,$s7
    lbu	$a1,0($a1)
    b	.L0dad5adc
    sb	$a1,0($s0)
.L0dad5b2c:
    # Line 1552
    move	$v0,$zero
    # ld	gp,112(sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0dad5b48:
    # ld	gp,112(sp)
    # Line 1556
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,288
.end __glDepthTestStencilOffsetSpan

# Function: __glDepthTestStencilStippledOffsetSpan
# Declared: Line 1564 (Source lines: 1565-1801)
# Address: 0x0dad5b60 - 0x0dad61e8 (Size: 1672 bytes, Frame: 176)
.globl __glDepthTestStencilStippledOffsetSpan
.ent __glDepthTestStencilStippledOffsetSpan
__glDepthTestStencilStippledOffsetSpan:
    # Line 1613
    lwc1	$f5,30508($a0)
    # Line 1611
    lwc1	$f6,30488($a0)
    # Line 1565
    addiu	$sp,$sp,-304
    sd	$zero,160($sp)
    sd	$s7,104($sp)
    # Line 1608
    move	$s7,$zero
    # Line 1596
    sw	$zero,8($sp)
    # Line 1595
    sw	$zero,4($sp)
    sd	$a0,168($sp)
    sd	$s0,112($sp)
    # Line 1599
    lw	$s0,30456($a0)
    sd	$s2,128($sp)
    # Line 1598
    lw	$s2,30444($a0)
    # Line 1594
    lw	$a5,30252($a0)
    # Line 1604
    lw	$a2,31312($a0)
    # Line 1603
    lw	$a1,31320($a0)
    # Line 1601
    lw	$v1,31196($a0)
    # Line 1600
    lw	$v0,31192($a0)
    sd	$a1,176($sp)
    sd	$v1,216($sp)
    sd	$v0,200($sp)
    sd	$a2,152($sp)
    # Line 1612
    lwc1	$f4,30504($a0)
    # Line 1606
    lw	$a4,30476($a0)
    # sd	gp,120(sp)
    # Line 1565
    lui	$at,0x12
    addiu	$at,$at,7432
    # addu	gp,t9,at
    # Line 1613
    mtc1	$zero,$f0
    # Line 1594
    move	$a2,$a5
    sd	$a4,184($sp)
    # Line 1613
    c.lt.s	$f0,$f4
    # Line 1602
    lw	$a4,12032($a0)
    # Line 1594
    sw	$a5,0($sp)
    # Line 1613
    bc1f	.L0dad5ca8
    # Line 1602
    sw	$a4,16($sp)
    # Line 1613
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0dad5d6c
    # Line 1640
    ld	$a3,168($sp)
    # Line 1621
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    ld	$v0,168($sp)
    lw	$a1,30332($v0)
    # Line 1619
    trunc.l.s	$f1,$f6
    # Line 1620
    ld	$v1,176($sp)
    # Line 1621
    sw	$a1,40($sp)
    # Line 1620
    lw	$v0,30328($v0)
    # Line 1619
    dmfc1	$at,$f1
    # Line 1621
    c.lt.s	$f4,$f5
    # Line 1620
    srav	$v0,$v0,$v1
    sw	$v0,32($sp)
    # Line 1621
    bc1f	.L0dad5cd4
    # Line 1619
    sw	$at,24($sp)
    # Line 1623
    sub.s	$f0,$f5,$f4
    trunc.w.s	$f0,$f0
    # Line 1624
    ld	$a0,168($sp)
    li	$v1,513
    # Line 1623
    mfc1	$a1,$f0
    # Line 1624
    lw	$a3,30500($a0)
    lw	$a0,1536($a0)
    # Line 1623
    sw	$a1,4($sp)
    # Line 1624
    subu	$a2,$a2,$a1
    beq	$a0,$v1,.L0dad6008
    sw	$a2,0($sp)
.L0dad5c68:
    # Line 1625
    li	$a1,516
    beq	$a0,$a1,.L0dad5ff8
    nop
    # Line 1631
    sw	$a4,20($sp)
.L0dad5c78:
    # Line 1635
    sw	$zero,44($sp)
    # Line 1634
    sw	$zero,36($sp)
    # Line 1632
    sw	$a3,28($sp)
    # Line 1633
    sra	$v0,$a2,0x1f
    xor	$at,$a2,$v0
    subu	$at,$at,$v0
    sra	$v0,$a2,0x1f
    andi	$at,$at,0x1f
    xor	$at,$at,$v0
    subu	$at,$at,$v0
    # Line 1635
    b	.L0dad5cd4
    sd	$at,160($sp)
.L0dad5ca8:
    ld	$a3,168($sp)
    # Line 1662
    lw	$a0,1536($a3)
    li	$v1,513
    beq	$a0,$v1,.L0dad5ef8
    lw	$a3,30500($a3)
.L0dad5cbc:
    # Line 1666
    li	$at,516
    beq	$a0,$at,.L0dad5f0c
    nop
.L0dad5cc8:
    # Line 1673
    sw	$zero,40($sp)
.L0dad5ccc:
    # Line 1672
    sw	$zero,32($sp)
    # Line 1671
    sw	$a3,24($sp)
.L0dad5cd4:
    # Line 1673
    beqz	$a2,.L0dad5ed8
    nop
    sd	$s6,264($sp)
    move	$s6,$zero
    addiu	$a0,$sp,32
    sd	$s8,224($sp)
    li	$s8,-1
    sd	$s5,240($sp)
    lw	$s5,56($sp)
    addiu	$at,$sp,0
    sd	$at,144($sp)
    sd	$s1,232($sp)
    lw	$s1,52($sp)
    addiu	$v1,$sp,16
    sd	$v1,64($sp)
    li	$v1,32
    sd	$s1,208($sp)
    addiu	$v0,$sp,24
    sd	$v0,136($sp)
    lw	$v0,0($sp)
    addiu	$a1,$sp,40
    sd	$a1,80($sp)
    ld	$a1,160($sp)
    lw	$s1,48($sp)
    sd	$v0,192($sp)
    subu	$v1,$v1,$a1
    beqz	$v0,.L0dad5f28
    sd	$v1,88($sp)
    sd	$s3,272($sp)
.L0dad5d48:
    ld	$v0,80($sp)
    sd	$ra,256($sp)
    ld	$at,136($sp)
    lw	$v0,0($v0)
    sd	$s4,248($sp)
    lw	$at,0($at)
    sd	$v0,96($sp)
    b	.L0dad60e0
    sd	$at,72($sp)
.L0dad5d6c:
    # Line 1640
    sw	$zero,40($sp)
    # Line 1639
    sw	$zero,32($sp)
    # Line 1640
    lw	$a0,1536($a3)
    # Line 1638
    lw	$a3,30496($a3)
    # Line 1640
    li	$v1,513
    beq	$a0,$v1,.L0dad5fd4
    # Line 1638
    sw	$a3,24($sp)
.L0dad5d88:
    # Line 1641
    li	$at,516
    beq	$a0,$at,.L0dad5fe8
    nop
.L0dad5d94:
    # Line 1645
    sub.s	$f1,$f4,$f5
.L0dad5d98:
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$v0,$a0,$a2
    beqz	$v0,.L0dad5cd4
    # Line 1651
    ld	$a1,168($sp)
    # Line 1649
    sra	$a3,$a0,0x4
    srl	$a3,$a3,0x1b
    # Line 1651
    lw	$a6,30332($a1)
    # Line 1649
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x5
    # Line 1651
    mult	$a3,$a6
    # Line 1649
    sra	$at,$a0,0x1f
    # Line 1651
    lw	$a1,30328($a1)
    # Line 1649
    xor	$a3,$a0,$at
    subu	$a3,$a3,$at
    sra	$at,$a0,0x1f
    andi	$a3,$a3,0x1f
    # Line 1651
    mflo	$v0
    # Line 1649
    xor	$a3,$a3,$at
    subu	$a3,$a3,$at
    # Line 1651
    mult	$a1,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1650
    sw	$a4,20($sp)
    # Line 1648
    sw	$a0,0($sp)
    # Line 1651
    cvt.d.s	$f3,$f6
    # Line 1662
    sw	$a6,44($sp)
    # Line 1651
    add.d	$f2,$f2,$f3
    # Line 1647
    subu	$at,$a2,$a0
    sd	$a3,160($sp)
    # Line 1661
    ld	$a3,176($sp)
    # Line 1651
    trunc.l.d	$f2,$f2
    # Line 1648
    move	$a2,$a0
    # Line 1647
    sw	$at,4($sp)
    # Line 1661
    srav	$a1,$a1,$a3
    # Line 1651
    dmfc1	$v1,$f2
    # Line 1661
    sw	$a1,36($sp)
    # Line 1662
    b	.L0dad5cd4
    # Line 1651
    sw	$v1,28($sp)
.L0dad5e50:
    ld	$ra,256($sp)
.L0dad5e54:
    # Line 1791
    ld	$v1,88($sp)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_3fa0000000000000
    ld	$v0,80($sp)
    mul.d	$f0,$f0,$f1
    lw	$v0,0($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f0
    trunc.w.d	$f3,$f3
    ld	$s4,72($sp)
    mfc1	$s3,$f3
    # Line 1785
    ld	$at,208($sp)
    ld	$v0,184($sp)
    # Line 1791
    addu	$s3,$s3,$s4
    ld	$s4,136($sp)
    # Line 1785
    and	$at,$at,$s5
    sw	$at,-4($v0)
    # Line 1791
    sw	$s3,0($s4)
    ld	$s4,248($sp)
    ld	$s3,272($sp)
.L0dad5eb4:
    ld	$a1,192($sp)
    bnezl	$a1,.L0dad5d48
    sd	$s3,272($sp)
.L0dad5ec0:
    ld	$s8,224($sp)
    ld	$s1,232($sp)
    ld	$a5,168($sp)
    ld	$s5,240($sp)
    ld	$s6,264($sp)
    lw	$a5,30252($a5)
.L0dad5ed8:
    beq	$a5,$s7,.L0dad61cc
    # Line 1798
    move	$v0,$zero
    # ld	gp,120(sp)
    ld	$s0,112($sp)
    ld	$s2,128($sp)
    ld	$s7,104($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dad5ef8:
    # Line 1666
    beqz	$a3,.L0dad5cbc
    # Line 1670
    la	$at,__glCDTPixel
.L0dad5f00:
    lw	$at,0($at)
    b	.L0dad5cc8
    sw	$at,16($sp)
.L0dad5f0c:
    # Line 1666
    bnezl	$a3,.L0dad5ccc
    # Line 1673
    sw	$zero,40($sp)
    b	.L0dad5f00
    # Line 1670
    la	$at,__glCDTPixel
.L0dad5f1c:
    ld	$s4,248($sp)
    ld	$ra,256($sp)
    ld	$s3,272($sp)
.L0dad5f28:
    # Line 1735
    ld	$a1,64($sp)
    ld	$v0,144($sp)
    addiu	$s6,$s6,4
    addiu	$a1,$a1,4
    addiu	$v0,$v0,4
    ld	$v1,136($sp)
    sd	$v0,144($sp)
    lw	$v0,0($v0)
    addiu	$v1,$v1,4
    sd	$v1,136($sp)
    ld	$v1,80($sp)
    sd	$a1,64($sp)
    sd	$v0,192($sp)
    addiu	$v1,$v1,4
    beqz	$v0,.L0dad5ec0
    sd	$v1,80($sp)
    ld	$a1,160($sp)
    beqz	$a1,.L0dad5eb4
    ld	$v0,88($sp)
    # Line 1737
    ld	$at,192($sp)
    sd	$s4,248($sp)
    slt	$at,$at,$v0
    beqz	$at,.L0dad5f90
    move	$s4,$v0
    sd	$s3,272($sp)
    ld	$s4,192($sp)
.L0dad5f90:
    # Line 1742
    ld	$v1,144($sp)
    ld	$v0,192($sp)
    sd	$s3,272($sp)
    # Line 1750
    ld	$s3,136($sp)
    # Line 1742
    subu	$v0,$v0,$s4
    # Line 1751
    addiu	$s4,$s4,-1
    # Line 1750
    lw	$s3,0($s3)
    ld	$at,176($sp)
    sd	$v0,192($sp)
    sd	$s3,72($sp)
    srlv	$s3,$s3,$at
    ld	$at,152($sp)
    # Line 1742
    sw	$v0,0($v1)
    # Line 1751
    bltz	$s4,.L0dad5e54
    # Line 1750
    addu	$s3,$s3,$at
    b	.L0dad616c
    sd	$ra,256($sp)
.L0dad5fd4:
    # Line 1641
    beqz	$a3,.L0dad5d88
    # Line 1645
    la	$at,__glCDTPixel
.L0dad5fdc:
    lw	$at,0($at)
    b	.L0dad5d94
    sw	$at,16($sp)
.L0dad5fe8:
    # Line 1641
    bnezl	$a3,.L0dad5d98
    # Line 1645
    sub.s	$f1,$f4,$f5
    b	.L0dad5fdc
    la	$at,__glCDTPixel
.L0dad5ff8:
    # Line 1625
    bnezl	$a3,.L0dad5c78
    # Line 1631
    sw	$a4,20($sp)
    b	.L0dad6010
    # Line 1629
    la	$v0,__glCDTPixel
.L0dad6008:
    # Line 1625
    beqz	$a3,.L0dad5c68
    # Line 1629
    la	$v0,__glCDTPixel
.L0dad6010:
    lw	$v0,0($v0)
    b	.L0dad5c78
    sw	$v0,20($sp)
.L0dad601c:
    ld	$v1,216($sp)
    # Line 1710
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    sb	$v1,0($s0)
.L0dad602c:
    # Line 1724
    srl	$s1,$s1,0x1
    # Line 1722
    addiu	$s0,$s0,1
    # Line 1720
    addu	$a1,$s6,$a0
    lw	$a1,0($a1)
    # Line 1721
    addiu	$s2,$s2,4
    # Line 1695
    beq	$s4,$s8,.L0dad60a8
    # Line 1720
    addu	$s3,$a1,$s3
    # Line 1695
    and	$at,$s1,$s5
.L0dad604c:
    beqz	$at,.L0dad60a0
    addiu	$s4,$s4,-1
    # Line 1709
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    addiu	$a0,$sp,32
    # Line 1713
    nor	$v1,$s1,$zero
    # Line 1709
    bnez	$v0,.L0dad601c
    lbu	$a2,0($s0)
    # Line 1713
    ld	$v0,208($sp)
    # Line 1712
    ld	$at,200($sp)
    # Line 1714
    addiu	$s7,$s7,1
    # Line 1713
    and	$v0,$v1,$v0
    # Line 1712
    addu	$at,$a2,$at
    lbu	$at,0($at)
    sd	$v0,208($sp)
    b	.L0dad602c
    sb	$at,0($s0)
.L0dad60a0:
    b	.L0dad602c
    # Line 1716
    addiu	$s7,$s7,1
.L0dad60a8:
    ld	$a1,184($sp)
    # Line 1729
    addiu	$a1,$a1,4
    # Line 1733
    ld	$v1,96($sp)
    ld	$at,72($sp)
    sd	$a1,184($sp)
    ld	$v0,136($sp)
    addu	$at,$at,$v1
    # Line 1729
    ld	$v1,208($sp)
    # Line 1733
    sw	$at,0($v0)
    ld	$v0,192($sp)
    sd	$at,72($sp)
    # Line 1729
    and	$v1,$v1,$s5
    # Line 1733
    beqz	$v0,.L0dad5f1c
    # Line 1729
    sw	$v1,-4($a1)
.L0dad60e0:
    lui	$s1,0x8000
    # Line 1693
    li	$at,-1
    ld	$a1,192($sp)
    # Line 1691
    ld	$v0,176($sp)
    ld	$s3,72($sp)
    # Line 1692
    ld	$s5,184($sp)
    # Line 1682
    move	$s4,$a1
    # Line 1691
    srlv	$s3,$s3,$v0
    ld	$v0,152($sp)
    # Line 1682
    slti	$a1,$a1,33
    bnez	$a1,.L0dad6114
    # Line 1691
    addu	$s3,$s3,$v0
    # Line 1684
    li	$s4,32
.L0dad6114:
    sd	$at,208($sp)
    # Line 1686
    ld	$at,192($sp)
    # Line 1692
    lw	$s5,0($s5)
    # Line 1686
    ld	$v0,144($sp)
    subu	$at,$at,$s4
    # Line 1695
    addiu	$s4,$s4,-1
    sd	$at,192($sp)
    bltz	$s4,.L0dad60a8
    # Line 1686
    sw	$at,0($v0)
    b	.L0dad604c
    # Line 1695
    and	$at,$s1,$s5
.L0dad6140:
    ld	$v0,216($sp)
    # Line 1766
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0dad6150:
    # Line 1780
    srl	$s1,$s1,0x1
    # Line 1778
    addiu	$s0,$s0,1
    # Line 1776
    addu	$v1,$s6,$a0
    lw	$v1,0($v1)
    # Line 1777
    addiu	$s2,$s2,4
    # Line 1751
    beq	$s4,$s8,.L0dad5e50
    # Line 1776
    addu	$s3,$v1,$s3
.L0dad616c:
    # Line 1751
    and	$a1,$s1,$s5
    beqz	$a1,.L0dad61c4
    addiu	$s4,$s4,-1
    # Line 1765
    ld	$t9,64($sp)
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    addiu	$a0,$sp,32
    # Line 1769
    nor	$v1,$s1,$zero
    # Line 1765
    bnez	$v0,.L0dad6140
    lbu	$a2,0($s0)
    # Line 1769
    ld	$v0,208($sp)
    # Line 1768
    ld	$at,200($sp)
    # Line 1770
    addiu	$s7,$s7,1
    # Line 1769
    and	$v0,$v1,$v0
    # Line 1768
    addu	$at,$a2,$at
    lbu	$at,0($at)
    sd	$v0,208($sp)
    b	.L0dad6150
    sb	$at,0($s0)
.L0dad61c4:
    b	.L0dad6150
    # Line 1772
    addiu	$s7,$s7,1
.L0dad61cc:
    # Line 1801
    li	$v0,1
    # ld	gp,120(sp)
    ld	$s0,112($sp)
    ld	$s2,128($sp)
    ld	$s7,104($sp)
    jr	$ra
    addiu	$sp,$sp,304
.end __glDepthTestStencilStippledOffsetSpan

# Function: __glDepthPassSpan
# Declared: Line 1808 (Source lines: 1814-1824)
# Address: 0x0dad61e8 - 0x0dad629c (Size: 180 bytes, Frame: 0)
.globl __glDepthPassSpan
.ent __glDepthPassSpan
__glDepthPassSpan:
    # Line 1814
    lw	$a6,30252($a0)
    # Line 1817
    lw	$a3,31196($a0)
    # Line 1816
    lw	$a2,30456($a0)
    andi	$a1,$a6,0x3
    # Line 1819
    blez	$a6,.L0dad6294
    addiu	$a5,$a6,-1
    li	$a4,-1
    move	$a7,$a6
    beqz	$a1,.L0dad6234
    move	$t0,$a5
.L0dad6210:
    # Line 1820
    lbu	$at,0($a2)
    # Line 1819
    addiu	$a5,$a5,-1
    # Line 1821
    addiu	$a2,$a2,1
    # Line 1820
    addu	$at,$at,$a3
    lbu	$at,0($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dad6210
    sb	$at,-1($a2)
    move	$t0,$a5
.L0dad6234:
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dad6294
    move	$a6,$a2
    move	$a2,$t0
    move	$a1,$a6
.L0dad6248:
    lbu	$v0,0($a1)
    addu	$v0,$v0,$a3
    lbu	$v0,0($v0)
    lbu	$at,1($a1)
    sb	$v0,0($a1)
    addu	$at,$at,$a3
    lbu	$at,0($at)
    lbu	$a0,2($a1)
    sb	$at,1($a1)
    addu	$a0,$a0,$a3
    lbu	$a0,0($a0)
    lbu	$v1,3($a1)
    # Line 1821
    addiu	$a1,$a1,4
    # Line 1820
    sb	$a0,-2($a1)
    addu	$v1,$v1,$a3
    lbu	$v1,0($v1)
    # Line 1819
    addiu	$a2,$a2,-4
    bne	$a2,$a4,.L0dad6248
    # Line 1820
    sb	$v1,-1($a1)
.L0dad6294:
    # Line 1824
    jr	$ra
    move	$v0,$zero
.end __glDepthPassSpan

# Function: __glDepthPassStippledSpan
# Declared: Line 1830 (Source lines: 1837-1865)
# Address: 0x0dad629c - 0x0dad6380 (Size: 228 bytes, Frame: 0)
.globl __glDepthPassStippledSpan
.ent __glDepthPassStippledSpan
__glDepthPassStippledSpan:
    # Line 1837
    lw	$a7,30252($a0)
    # Line 1841
    lw	$a5,31196($a0)
    # Line 1840
    lw	$a2,30456($a0)
    # Line 1841
    beqz	$a7,.L0dad6378
    # Line 1838
    lw	$t0,30476($a0)
    # Line 1841
    li	$a6,-1
    b	.L0dad62c0
    lui	$t2,0x8000
.L0dad62bc:
    # Line 1851
    beqz	$a7,.L0dad6378
.L0dad62c0:
    # Line 1843
    slti	$at,$a7,33
    bnez	$at,.L0dad62d0
    move	$a3,$a7
    # Line 1845
    li	$a3,32
.L0dad62d0:
    # Line 1849
    lw	$a4,0($t0)
    # Line 1850
    move	$a1,$t2
    # Line 1847
    subu	$a7,$a7,$a3
    # Line 1851
    addiu	$a3,$a3,-1
    bltz	$a3,.L0dad62bc
    # Line 1849
    addiu	$t0,$t0,4
    # Line 1851
    addiu	$t1,$a3,1
    andi	$v0,$t1,0x1
    beqz	$v0,.L0dad6318
    and	$v1,$a4,$a1
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    beqz	$v1,.L0dad6314
    addiu	$a3,$a3,-1
    # Line 1853
    lbu	$a0,0($a2)
    addu	$a0,$a0,$a5
    lbu	$a0,0($a0)
    sb	$a0,0($a2)
.L0dad6314:
    # Line 1855
    addiu	$a2,$a2,1
.L0dad6318:
    sra	$at,$t1,0x1
    beqz	$at,.L0dad62bc
    nop
    b	.L0dad6338
    # Line 1851
    and	$v0,$a4,$a1
.L0dad632c:
    beq	$a3,$a6,.L0dad62bc
    # Line 1855
    addiu	$a2,$a2,1
    # Line 1851
    and	$v0,$a4,$a1
.L0dad6338:
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    and	$a0,$a4,$a1
    beqz	$v0,.L0dad6358
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1853
    lbu	$v1,0($a2)
    addu	$v1,$v1,$a5
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0dad6358:
    # Line 1851
    addiu	$a3,$a3,-2
    beqz	$a0,.L0dad632c
    # Line 1855
    addiu	$a2,$a2,1
    # Line 1853
    lbu	$at,0($a2)
    addu	$at,$at,$a5
    lbu	$at,0($at)
    b	.L0dad632c
    sb	$at,0($a2)
.L0dad6378:
    # Line 1865
    jr	$ra
    move	$v0,$zero
.end __glDepthPassStippledSpan

# Function: __glShadeCISpan
# Declared: Line 1870 (Source lines: 1878-1887)
# Address: 0x0dad6380 - 0x0dad6400 (Size: 128 bytes, Frame: 0)
.globl __glShadeCISpan
.ent __glShadeCISpan
__glShadeCISpan:
    # Line 1881
    lw	$a2,30252($a0)
    # Line 1880
    lw	$a4,30468($a0)
    # Line 1879
    lwc1	$f5,30288($a0)
    # Line 1881
    addiu	$a2,$a2,-1
    bltz	$a2,.L0dad63f4
    # Line 1878
    lwc1	$f4,30212($a0)
    # Line 1881
    addiu	$a1,$a2,1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dad63b8
    li	$a3,-1
    addiu	$a2,$a2,-1
    # Line 1884
    addiu	$a4,$a4,16
    # Line 1882
    swc1	$f4,-16($a4)
    # Line 1883
    add.s	$f4,$f4,$f5
.L0dad63b8:
    move	$a5,$a2
    mov.s	$f6,$f4
    move	$a6,$a4
    sra	$at,$a1,0x1
    beqz	$at,.L0dad63f4
    move	$a1,$a6
    move	$a2,$a5
    mov.s	$f4,$f6
.L0dad63d8:
    add.s	$f0,$f4,$f5
    # Line 1884
    addiu	$a1,$a1,32
    # Line 1881
    addiu	$a2,$a2,-2
    # Line 1882
    swc1	$f4,-32($a1)
    # Line 1883
    add.s	$f4,$f0,$f5
    # Line 1881
    bne	$a2,$a3,.L0dad63d8
    # Line 1882
    swc1	$f0,-16($a1)
.L0dad63f4:
    # Line 1887
    move	$v0,$zero
    jr	$ra
    nop
.end __glShadeCISpan

# Function: __glShadeRGBASpan
# Declared: Line 1890 (Source lines: 1899-1920)
# Address: 0x0dad6400 - 0x0dad646c (Size: 108 bytes, Frame: 0)
.globl __glShadeRGBASpan
.ent __glShadeRGBASpan
__glShadeRGBASpan:
    # Line 1907
    lw	$a3,30468($a0)
    # Line 1906
    lwc1	$f10,30300($a0)
    # Line 1905
    lwc1	$f11,30296($a0)
    # Line 1904
    lwc1	$f8,30292($a0)
    # Line 1903
    lwc1	$f9,30288($a0)
    # Line 1902
    lwc1	$f5,30224($a0)
    # Line 1908
    lw	$a2,30252($a0)
    # Line 1901
    lwc1	$f6,30220($a0)
    # Line 1900
    lwc1	$f7,30216($a0)
    # Line 1908
    addiu	$a2,$a2,-1
    bltz	$a2,.L0dad6460
    # Line 1899
    lwc1	$f4,30212($a0)
    # Line 1908
    li	$a1,-1
.L0dad6434:
    # Line 1912
    swc1	$f5,12($a3)
    # Line 1916
    add.s	$f5,$f5,$f10
    # Line 1911
    swc1	$f6,8($a3)
    # Line 1915
    add.s	$f6,$f6,$f11
    # Line 1917
    addiu	$a3,$a3,16
    # Line 1910
    swc1	$f7,-12($a3)
    # Line 1914
    add.s	$f7,$f7,$f8
    # Line 1909
    swc1	$f4,-16($a3)
    # Line 1908
    addiu	$a2,$a2,-1
    bne	$a2,$a1,.L0dad6434
    # Line 1913
    add.s	$f4,$f4,$f9
.L0dad6460:
    # Line 1920
    move	$v0,$zero
    jr	$ra
    nop
.end __glShadeRGBASpan

# Function: __glFlatCISpan
# Declared: Line 1923 (Source lines: 1931-1938)
# Address: 0x0dad646c - 0x0dad64e8 (Size: 124 bytes, Frame: 0)
.globl __glFlatCISpan
.ent __glFlatCISpan
__glFlatCISpan:
    # Line 1933
    lw	$a2,30252($a0)
    # Line 1932
    lw	$a4,30468($a0)
    # Line 1933
    li	$a3,-1
    addiu	$a2,$a2,-1
    bltz	$a2,.L0dad64dc
    # Line 1931
    lwc1	$f4,30212($a0)
    # Line 1933
    addiu	$a5,$a2,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dad64ac
    sra	$at,$a5,0x2
.L0dad6494:
    addiu	$a2,$a2,-1
    # Line 1935
    addiu	$a4,$a4,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0dad6494
    # Line 1934
    swc1	$f4,-16($a4)
    sra	$at,$a5,0x2
.L0dad64ac:
    move	$a7,$a2
    beqz	$at,.L0dad64dc
    move	$a6,$a4
    move	$a2,$a7
    move	$a1,$a6
.L0dad64c0:
    # Line 1935
    addiu	$a1,$a1,64
    # Line 1934
    swc1	$f4,-16($a1)
    swc1	$f4,-32($a1)
    swc1	$f4,-48($a1)
    # Line 1933
    addiu	$a2,$a2,-4
    bne	$a2,$a3,.L0dad64c0
    # Line 1934
    swc1	$f4,-64($a1)
.L0dad64dc:
    # Line 1938
    move	$v0,$zero
    jr	$ra
    nop
.end __glFlatCISpan

# Function: __glFlatRGBASpan
# Declared: Line 1941 (Source lines: 1949-1962)
# Address: 0x0dad64e8 - 0x0dad65ac (Size: 196 bytes, Frame: 0)
.globl __glFlatRGBASpan
.ent __glFlatRGBASpan
__glFlatRGBASpan:
    # Line 1953
    lw	$a4,30468($a0)
    # Line 1952
    lwc1	$f6,30224($a0)
    # Line 1951
    lwc1	$f7,30220($a0)
    # Line 1954
    lw	$a2,30252($a0)
    # Line 1950
    lwc1	$f4,30216($a0)
    # Line 1954
    li	$a3,-1
    addiu	$a2,$a2,-1
    bltz	$a2,.L0dad65a0
    # Line 1949
    lwc1	$f5,30212($a0)
    # Line 1954
    addiu	$a5,$a2,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dad6540
    sra	$at,$a5,0x2
.L0dad651c:
    addiu	$a2,$a2,-1
    # Line 1959
    addiu	$a4,$a4,16
    # Line 1958
    swc1	$f6,-4($a4)
    # Line 1957
    swc1	$f7,-8($a4)
    # Line 1956
    swc1	$f4,-12($a4)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dad651c
    # Line 1955
    swc1	$f5,-16($a4)
    sra	$at,$a5,0x2
.L0dad6540:
    move	$a7,$a2
    beqz	$at,.L0dad65a0
    move	$a6,$a4
    move	$a2,$a7
    move	$a1,$a6
.L0dad6554:
    # Line 1959
    addiu	$a1,$a1,64
    # Line 1958
    swc1	$f6,-4($a1)
    # Line 1957
    swc1	$f7,-8($a1)
    # Line 1956
    swc1	$f4,-12($a1)
    # Line 1955
    swc1	$f5,-16($a1)
    # Line 1958
    swc1	$f6,-20($a1)
    # Line 1957
    swc1	$f7,-24($a1)
    # Line 1956
    swc1	$f4,-28($a1)
    # Line 1955
    swc1	$f5,-32($a1)
    # Line 1958
    swc1	$f6,-36($a1)
    # Line 1957
    swc1	$f7,-40($a1)
    # Line 1956
    swc1	$f4,-44($a1)
    # Line 1955
    swc1	$f5,-48($a1)
    # Line 1958
    swc1	$f6,-52($a1)
    # Line 1957
    swc1	$f7,-56($a1)
    # Line 1956
    swc1	$f4,-60($a1)
    # Line 1954
    addiu	$a2,$a2,-4
    bne	$a2,$a3,.L0dad6554
    # Line 1955
    swc1	$f5,-64($a1)
.L0dad65a0:
    # Line 1962
    move	$v0,$zero
    jr	$ra
    nop
.end __glFlatRGBASpan

# Function: __glTextureSpan
# Declared: Line 1967 (Source lines: 1968-1999)
# Address: 0x0dad65ac - 0x0dad6778 (Size: 460 bytes, Frame: 240)
.globl __glTextureSpan
.ent __glTextureSpan
__glTextureSpan:
    # Line 1968
    addiu	$sp,$sp,-112
    sd	$s3,88($sp)
    sd	$s1,56($sp)
    move	$s1,$a0
    sdc1	$f30,32($sp)
    # Line 1982
    lwc1	$f30,30244($a0)
    sdc1	$f22,8($sp)
    # Line 1981
    lwc1	$f22,30240($a0)
    sdc1	$f24,16($sp)
    # Line 1980
    lwc1	$f24,30236($a0)
    sdc1	$f26,0($sp)
    # Line 1979
    lwc1	$f26,30232($a0)
    sdc1	$f28,24($sp)
    # Line 1978
    lwc1	$f28,30228($a0)
    sd	$s0,48($sp)
    # Line 1976
    lw	$s0,30468($a0)
    # sd	gp,64(sp)
    sd	$s2,40($sp)
    # Line 1984
    lw	$s2,30252($a0)
    # Line 1968
    lui	$at,0x12
    addiu	$at,$at,4796
    # Line 1984
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dad6748
    # Line 1968
    nop
    # Line 1984
    addiu	$a0,$s2,1
    andi	$v0,$a0,0x1
    beqz	$v0,.L0dad6684
    li	$s3,-1
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    sd	$a0,72($sp)
    # Line 1990
    mul.s	$f17,$f30,$f14
    move	$a0,$s1
    move	$a1,$s0
    mul.s	$f16,$f24,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    lw	$t9,12532($s1)
    mul.s	$f15,$f26,$f14
    sd	$ra,80($sp)
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f3,30396($s1)
    # Line 1993
    lwc1	$f2,30392($s1)
    # Line 1994
    add.s	$f22,$f3,$f22
    # Line 1992
    lwc1	$f1,30388($s1)
    # Line 1993
    add.s	$f24,$f2,$f24
    # Line 1992
    add.s	$f26,$f1,$f26
    # Line 1995
    lwc1	$f0,30400($s1)
    # Line 1984
    addiu	$s2,$s2,-1
    # Line 1995
    add.s	$f30,$f0,$f30
    # Line 1991
    lwc1	$f0,30384($s1)
    ld	$a0,72($sp)
    ld	$ra,80($sp)
    add.s	$f28,$f0,$f28
.L0dad6684:
    sra	$v1,$a0,0x1
    beqz	$v1,.L0dad6740
    sd	$ra,80($sp)
.L0dad6690:
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 1990
    mul.s	$f17,$f30,$f14
    move	$a0,$s1
    # Line 1984
    addiu	$s2,$s2,-2
    # Line 1990
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12532($s1)
    mul.s	$f15,$f26,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f15,30396($s1)
    add.s	$f22,$f15,$f22
    # Line 1985
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 1995
    lwc1	$f18,30400($s1)
    # Line 1993
    lwc1	$f17,30392($s1)
    # Line 1995
    add.s	$f30,$f18,$f30
    # Line 1990
    move	$a0,$s1
    # Line 1992
    lwc1	$f16,30388($s1)
    # Line 1993
    add.s	$f24,$f17,$f24
    # Line 1990
    move	$a1,$s0
    mul.s	$f17,$f30,$f14
    # Line 1992
    add.s	$f26,$f16,$f26
    # Line 1991
    lwc1	$f15,30384($s1)
    # Line 1990
    mul.s	$f16,$f24,$f14
    lw	$t9,12532($s1)
    # Line 1991
    add.s	$f28,$f15,$f28
    # Line 1990
    mul.s	$f15,$f26,$f14
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1990
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 1994
    lwc1	$f3,30396($s1)
    # Line 1993
    lwc1	$f2,30392($s1)
    # Line 1994
    add.s	$f22,$f3,$f22
    # Line 1992
    lwc1	$f1,30388($s1)
    # Line 1993
    add.s	$f24,$f2,$f24
    # Line 1992
    add.s	$f26,$f1,$f26
    # Line 1995
    lwc1	$f0,30400($s1)
    add.s	$f30,$f0,$f30
    # Line 1991
    lwc1	$f0,30384($s1)
    # Line 1984
    bne	$s2,$s3,.L0dad6690
    # Line 1991
    add.s	$f28,$f0,$f28
.L0dad6740:
    ld	$ra,80($sp)
    ld	$s3,88($sp)
.L0dad6748:
    # Line 1999
    move	$v0,$zero
    # ld	gp,64(sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,0($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glTextureSpan

# Function: __glTextureStippledSpan
# Declared: Line 2002 (Source lines: 2003-2053)
# Address: 0x0dad6778 - 0x0dad69dc (Size: 612 bytes, Frame: 144)
.globl __glTextureStippledSpan
.ent __glTextureStippledSpan
__glTextureStippledSpan:
    # Line 2003
    addiu	$sp,$sp,-144
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$s4,64($sp)
    sd	$s5,80($sp)
    sd	$s8,72($sp)
    sd	$ra,56($sp)
    sd	$s1,104($sp)
    move	$s1,$a0
    sdc1	$f30,0($sp)
    # Line 2019
    lwc1	$f30,30244($a0)
    sdc1	$f22,24($sp)
    # Line 2018
    lwc1	$f22,30240($a0)
    sdc1	$f24,16($sp)
    # Line 2017
    lwc1	$f24,30236($a0)
    sdc1	$f26,32($sp)
    # Line 2016
    lwc1	$f26,30232($a0)
    sdc1	$f28,8($sp)
    # Line 2015
    lwc1	$f28,30228($a0)
    sd	$s7,88($sp)
    # Line 2013
    lw	$s7,30476($a0)
    sd	$s0,112($sp)
    # Line 2012
    lw	$s0,30468($a0)
    # sd	gp,96(sp)
    sd	$s6,120($sp)
    # Line 2011
    lw	$s6,30252($a0)
    # Line 2003
    lui	$at,0x12
    addiu	$at,$at,4336
    # Line 2019
    beqz	$s6,.L0dad6990
    # Line 2003
    nop
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$ra,56($sp)
    sd	$s4,64($sp)
    sd	$s8,72($sp)
    b	.L0dad6810
    # Line 2019
    li	$s5,-1
.L0dad680c:
    # Line 2030
    beqz	$s6,.L0dad6990
.L0dad6810:
    # Line 2022
    slti	$v0,$s6,33
    bnez	$v0,.L0dad6820
    move	$s3,$s6
    # Line 2024
    li	$s3,32
.L0dad6820:
    # Line 2028
    lw	$s4,0($s7)
    lui	$s2,0x8000
    # Line 2026
    subu	$s6,$s6,$s3
    # Line 2030
    addiu	$s3,$s3,-1
    bltz	$s3,.L0dad680c
    # Line 2028
    addiu	$s7,$s7,4
    # Line 2030
    addiu	$s8,$s3,1
    andi	$v1,$s8,0x1
    beqz	$v1,.L0dad68a8
    and	$a2,$s4,$s2
    beqz	$a2,.L0dad6878
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12532($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
.L0dad6878:
    # Line 2042
    lwc1	$f3,30396($s1)
    # Line 2041
    lwc1	$f2,30392($s1)
    # Line 2042
    add.s	$f22,$f3,$f22
    # Line 2040
    lwc1	$f1,30388($s1)
    # Line 2041
    add.s	$f24,$f2,$f24
    # Line 2040
    add.s	$f26,$f1,$f26
    # Line 2043
    lwc1	$f0,30400($s1)
    add.s	$f30,$f0,$f30
    # Line 2039
    lwc1	$f0,30384($s1)
    # Line 2030
    addiu	$s3,$s3,-1
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2039
    add.s	$f28,$f0,$f28
.L0dad68a8:
    sra	$at,$s8,0x1
    beqz	$at,.L0dad680c
    nop
    b	.L0dad68f4
    # Line 2030
    and	$v0,$s4,$s2
.L0dad68bc:
    # Line 2042
    lwc1	$f0,30396($s1)
.L0dad68c0:
    # Line 2041
    lwc1	$f3,30392($s1)
    # Line 2042
    add.s	$f22,$f0,$f22
    # Line 2040
    lwc1	$f2,30388($s1)
    # Line 2041
    add.s	$f24,$f3,$f24
    # Line 2040
    add.s	$f26,$f2,$f26
    # Line 2043
    lwc1	$f1,30400($s1)
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2043
    add.s	$f30,$f1,$f30
    # Line 2039
    lwc1	$f1,30384($s1)
    # Line 2030
    addiu	$s3,$s3,-2
    beq	$s3,$s5,.L0dad680c
    # Line 2039
    add.s	$f28,$f1,$f28
    # Line 2030
    and	$v0,$s4,$s2
.L0dad68f4:
    beqzl	$v0,.L0dad6928
    # Line 2042
    lwc1	$f3,30396($s1)
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12532($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
    # Line 2042
    lwc1	$f3,30396($s1)
.L0dad6928:
    # Line 2041
    lwc1	$f2,30392($s1)
    # Line 2042
    add.s	$f22,$f3,$f22
    # Line 2040
    lwc1	$f1,30388($s1)
    # Line 2041
    add.s	$f24,$f2,$f24
    # Line 2044
    addiu	$s0,$s0,16
    # Line 2040
    add.s	$f26,$f1,$f26
    # Line 2043
    lwc1	$f0,30400($s1)
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2030
    and	$v1,$s4,$s2
    # Line 2043
    add.s	$f30,$f0,$f30
    # Line 2039
    lwc1	$f0,30384($s1)
    # Line 2046
    srl	$s2,$s2,0x1
    # Line 2030
    beqz	$v1,.L0dad68bc
    # Line 2039
    add.s	$f28,$f0,$f28
    # Line 2032
    lwc1	$f14,3284($s1)
    div.s	$f14,$f14,$f22
    # Line 2037
    mul.s	$f17,$f30,$f14
    mul.s	$f16,$f24,$f14
    move	$a1,$s0
    lw	$t9,12532($s1)
    mul.s	$f15,$f26,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f28,$f14
    b	.L0dad68c0
    # Line 2042
    lwc1	$f0,30396($s1)
.L0dad6990:
    # Line 2053
    move	$v0,$zero
    # ld	gp,96(sp)
    ld	$s0,112($sp)
    ld	$s1,104($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,80($sp)
    ld	$s6,120($sp)
    ld	$s7,88($sp)
    ld	$s8,72($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ldc1	$f26,32($sp)
    ld	$ra,56($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glTextureStippledSpan

# Function: __glDitherCISpan
# Declared: Line 2061 (Source lines: 2062-2084)
# Address: 0x0dad69dc - 0x0dad6b50 (Size: 372 bytes, Frame: 0)
.globl __glDitherCISpan
.ent __glDitherCISpan
__glDitherCISpan:
    # Line 2072
    lw	$a5,30468($a0)
    # Line 2073
    li	$t2,-1
    # Line 2069
    lw	$a3,30200($a0)
    # Line 2073
    lw	$a7,30252($a0)
    # Line 2071
    li	$a6,1
    # Line 2070
    lw	$a4,30204($a0)
    # Line 2073
    addiu	$a7,$a7,-1
    # Line 2062
    lui	$v0,0x12
    addiu	$v0,$v0,3724
    # addu	at,t9,v0
    # Line 2071
    lw	$t9,3136($a0)
    # Line 2073
    andi	$t0,$a4,0x3
    sll	$t0,$t0,0x2
    # Line 2071
    sllv	$a6,$a6,$t9
    # Line 2073
    bltz	$a7,.L0dad6a94
    # Line 2071
    addiu	$a6,$a6,-1
    # Line 2073
    lwc1	$f4,_lit_41800000
    addiu	$t3,$a7,1
    andi	$v0,$t3,0x1
    beqz	$v0,.L0dad6a88
    la	$t1,__glDitherTable
    # Line 2076
    lwc1	$f1,0($a5)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    andi	$a4,$a3,0x3
    trunc.w.s	$f0,$f0
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f0
    # Line 2081
    addiu	$a3,$a3,1
    # Line 2076
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v1,$a6,$a4
    beqz	$v1,.L0dad6a74
    # Line 2073
    addiu	$a7,$a7,-1
    # Line 2078
    move	$a4,$a6
.L0dad6a74:
    # Line 2080
    addiu	$a5,$a5,16
    # Line 2079
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-16($a5)
.L0dad6a88:
    sra	$v0,$t3,0x1
    bnezl	$v0,.L0dad6b0c
    # Line 2076
    lwc1	$f0,0($a5)
.L0dad6a94:
    # Line 2084
    jr	$ra
    move	$v0,$zero
.L0dad6a9c:
    # Line 2079
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2076
    lwc1	$f0,16($a5)
    mul.s	$f0,$f0,$f4
    # Line 2079
    swc1	$f1,0($a5)
    # Line 2076
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    andi	$a4,$a3,0x3
    trunc.w.s	$f3,$f3
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f3
    # Line 2080
    addiu	$a5,$a5,32
    # Line 2076
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v1,$a6,$a4
    beqz	$v1,.L0dad6af0
    # Line 2081
    addiu	$a3,$a3,1
    # Line 2078
    move	$a4,$a6
.L0dad6af0:
    # Line 2073
    addiu	$a7,$a7,-2
    # Line 2079
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2073
    beq	$a7,$t2,.L0dad6a94
    # Line 2079
    swc1	$f2,-16($a5)
    # Line 2076
    lwc1	$f0,0($a5)
.L0dad6b0c:
    mul.s	$f0,$f0,$f4
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    andi	$a4,$a3,0x3
    trunc.w.s	$f3,$f3
    addu	$a4,$a4,$t0
    addu	$a4,$a4,$t1
    lb	$a4,0($a4)
    mfc1	$v0,$f3
    nop
    addu	$a4,$a4,$v0
    sra	$a4,$a4,0x4
    slt	$v0,$a6,$a4
    beqz	$v0,.L0dad6a9c
    # Line 2081
    addiu	$a3,$a3,1
    b	.L0dad6a9c
    # Line 2078
    move	$a4,$a6
.end __glDitherCISpan

# Function: __glDitherCIStippledSpan
# Declared: Line 2090 (Source lines: 2091-2132)
# Address: 0x0dad6b50 - 0x0dad6d78 (Size: 552 bytes, Frame: 192)
.globl __glDitherCIStippledSpan
.ent __glDitherCIStippledSpan
__glDitherCIStippledSpan:
    # Line 2103
    lw	$a3,30468($a0)
    # Line 2101
    lw	$a6,30204($a0)
    # Line 2100
    lw	$a4,30200($a0)
    # Line 2102
    li	$a7,1
    # Line 2098
    lw	$v0,30476($a0)
    # Line 2091
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    lui	$s8,0x12
    addiu	$s8,$s8,3352
    # addu	at,t9,s8
    # Line 2102
    lw	$t9,3136($a0)
    # Line 2097
    lw	$s8,30252($a0)
    sd	$v0,24($sp)
    # Line 2102
    sllv	$a7,$a7,$t9
    # Line 2103
    beqz	$s8,.L0dad6d68
    # Line 2102
    addiu	$a7,$a7,-1
    # Line 2103
    la	$t3,__glDitherTable
    li	$t8,-1
    lwc1	$f4,_lit_41800000
    ld	$t9,24($sp)
    andi	$t2,$a6,0x3
    b	.L0dad6bc0
    sll	$t2,$t2,0x2
.L0dad6bac:
    ld	$v0,8($sp)
.L0dad6bb0:
    # Line 2113
    ld	$a4,0($sp)
    addu	$a4,$a4,$v0
    addiu	$a4,$a4,1
.L0dad6bbc:
    beqz	$s8,.L0dad6d68
.L0dad6bc0:
    # Line 2105
    slti	$v1,$s8,33
    bnez	$v1,.L0dad6bd0
    move	$t0,$s8
    # Line 2107
    li	$t0,32
.L0dad6bd0:
    # Line 2111
    addiu	$t9,$t9,4
    lw	$t1,-4($t9)
    lui	$a5,0x8000
    # Line 2109
    subu	$s8,$s8,$t0
    # Line 2113
    addiu	$t0,$t0,-1
    bltz	$t0,.L0dad6bbc
    move	$a6,$t0
    move	$a2,$a4
    sd	$t0,0($sp)
    addiu	$a6,$t0,1
    andi	$a1,$a6,0x1
    beqz	$a1,.L0dad6c78
    sd	$a4,8($sp)
    and	$v0,$t1,$a5
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2113
    beqz	$v0,.L0dad6c70
    addiu	$t0,$t0,-1
    # Line 2117
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    sd	$a6,32($sp)
    andi	$a6,$a4,0x3
    trunc.w.s	$f0,$f0
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f0
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$v1,$a7,$a6
    beqz	$v1,.L0dad6c5c
    nop
    # Line 2119
    move	$a6,$a7
.L0dad6c5c:
    # Line 2120
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a6,32($sp)
    swc1	$f2,0($a3)
.L0dad6c70:
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2122
    addiu	$a3,$a3,16
.L0dad6c78:
    sra	$v0,$a6,0x1
    beqz	$v0,.L0dad6bb0
    ld	$v0,8($sp)
    b	.L0dad6d18
    # Line 2117
    andi	$a6,$a4,0x3
.L0dad6c8c:
    # Line 2120
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a3)
.L0dad6c9c:
    # Line 2113
    addiu	$t0,$t0,-2
    # Line 2122
    addiu	$a3,$a3,16
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2113
    and	$v1,$t1,$a5
    beqz	$v1,.L0dad6d08
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    andi	$a6,$a4,0x3
    trunc.w.s	$f0,$f0
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f0
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$a1,$a7,$a6
    beqz	$a1,.L0dad6cf8
    nop
    # Line 2119
    move	$a6,$a7
.L0dad6cf8:
    # Line 2120
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a3)
.L0dad6d08:
    # Line 2123
    addiu	$a4,$a4,1
    # Line 2113
    beq	$t0,$t8,.L0dad6bac
    # Line 2122
    addiu	$a3,$a3,16
    # Line 2117
    andi	$a6,$a4,0x3
.L0dad6d18:
    # Line 2113
    and	$v0,$t1,$a5
    beqz	$v0,.L0dad6c9c
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addu	$a6,$a6,$t2
    addu	$a6,$a6,$t3
    lb	$a6,0($a6)
    mfc1	$v0,$f3
    nop
    addu	$a6,$a6,$v0
    sra	$a6,$a6,0x4
    slt	$v1,$a7,$a6
    beqz	$v1,.L0dad6c8c
    nop
    b	.L0dad6c8c
    # Line 2119
    move	$a6,$a7
.L0dad6d68:
    # Line 2132
    move	$v0,$zero
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDitherCIStippledSpan

# Function: __glDitherRGBASpan
# Declared: Line 2139 (Source lines: 2140-2186)
# Address: 0x0dad6d78 - 0x0dad6ef8 (Size: 384 bytes, Frame: 0)
.globl __glDitherRGBASpan
.ent __glDitherRGBASpan
__glDitherRGBASpan:
    # Line 2154
    lw	$a3,30468($a0)
    # Line 2153
    lw	$t8,30800($a0)
    # Line 2152
    lw	$t3,30776($a0)
    # Line 2151
    lw	$t2,30772($a0)
    # Line 2150
    lw	$t1,30768($a0)
    # Line 2149
    lw	$a4,30204($a0)
    # Line 2148
    lw	$a5,30200($a0)
    # Line 2155
    lw	$t0,30252($a0)
    # Line 2140
    lui	$v0,0x12
    addiu	$v0,$v0,2800
    # Line 2155
    addiu	$t0,$t0,-1
    bltz	$t0,.L0dad6ef0
    # Line 2140
    nop
    # Line 2155
    lwc1	$f4,_lit_41800000
    andi	$t9,$a4,0x3
    b	.L0dad6dd8
    sll	$t9,$t9,0x2
.L0dad6dbc:
    # Line 2180
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2183
    addiu	$a5,$a5,1
    li	$v0,-1
    # Line 2155
    beq	$t0,$v0,.L0dad6ef0
    # Line 2180
    swc1	$f0,-4($a3)
.L0dad6dd8:
    # Line 2162
    lwc1	$f2,0($a3)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    # Line 2161
    andi	$a4,$a5,0x3
    la	$a7,__glDitherTable
    # Line 2162
    trunc.w.s	$f1,$f1
    # Line 2161
    addu	$a4,$a4,$t9
    addu	$a4,$a4,$a7
    lb	$a4,0($a4)
    # Line 2162
    mfc1	$a6,$f1
    nop
    addu	$a6,$a6,$a4
    sra	$a6,$a6,0x4
    slt	$v1,$t1,$a6
    beqz	$v1,.L0dad6e20
    nop
    # Line 2164
    move	$a6,$t1
.L0dad6e20:
    # Line 2165
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2167
    lwc1	$f0,4($a3)
    mul.s	$f0,$f0,$f4
    # Line 2165
    swc1	$f1,0($a3)
    # Line 2167
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t2,$a7
    beqz	$v0,.L0dad6e64
    nop
    # Line 2169
    move	$a7,$t2
.L0dad6e64:
    # Line 2170
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2172
    lwc1	$f3,8($a3)
    mul.s	$f3,$f3,$f4
    # Line 2170
    swc1	$f0,4($a3)
    # Line 2172
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    nop
    addu	$a6,$a6,$a4
    sra	$a6,$a6,0x4
    slt	$v0,$t3,$a6
    beqz	$v0,.L0dad6ea8
    nop
    # Line 2174
    move	$a6,$t3
.L0dad6ea8:
    # Line 2175
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 2177
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f4
    # Line 2175
    swc1	$f3,8($a3)
    # Line 2177
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a7,$f1
    # Line 2155
    addiu	$t0,$t0,-1
    # Line 2177
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t8,$a7
    beqz	$v0,.L0dad6dbc
    # Line 2182
    addiu	$a3,$a3,16
    b	.L0dad6dbc
    # Line 2179
    move	$a7,$t8
.L0dad6ef0:
    # Line 2186
    jr	$ra
    move	$v0,$zero
.end __glDitherRGBASpan

# Function: __glDitherRGBAStippledSpan
# Declared: Line 2193 (Source lines: 2194-2258)
# Address: 0x0dad6ef8 - 0x0dad7118 (Size: 544 bytes, Frame: 208)
.globl __glDitherRGBAStippledSpan
.ent __glDitherRGBAStippledSpan
__glDitherRGBAStippledSpan:
    # Line 2210
    lw	$a3,30468($a0)
    # Line 2209
    lw	$t8,30800($a0)
    # Line 2208
    lw	$t3,30776($a0)
    # Line 2207
    lw	$t2,30772($a0)
    # Line 2205
    lw	$a4,30204($a0)
    # Line 2204
    lw	$a6,30200($a0)
    # Line 2194
    addiu	$sp,$sp,-80
    sd	$s2,56($sp)
    sd	$s6,48($sp)
    # sd	gp,40(sp)
    sd	$s1,16($sp)
    # Line 2206
    lw	$s1,30768($a0)
    # Line 2194
    lui	$v0,0x12
    addiu	$v0,$v0,2416
    sd	$s8,0($sp)
    # Line 2201
    lw	$s8,30252($a0)
    # Line 2202
    lw	$v1,30476($a0)
    # Line 2194
    # addu	at,t9,v0
    # Line 2210
    beqz	$s8,.L0dad7104
    sd	$v1,8($sp)
    la	$gp,__glDitherTable
    li	$s6,-1
    lwc1	$f4,_lit_41800000
    andi	$s2,$a4,0x3
    b	.L0dad6f74
    sll	$s2,$s2,0x2
.L0dad6f60:
    ld	$v0,24($sp)
    # Line 2220
    ld	$a6,32($sp)
    addu	$a6,$a6,$v0
    addiu	$a6,$a6,1
.L0dad6f70:
    beqz	$s8,.L0dad70f8
.L0dad6f74:
    # Line 2218
    ld	$a1,8($sp)
    # Line 2212
    slti	$v1,$s8,33
    bnez	$v1,.L0dad6f88
    move	$t1,$s8
    # Line 2214
    li	$t1,32
.L0dad6f88:
    lui	$a5,0x8000
    # Line 2218
    lw	$t9,0($a1)
    # Line 2220
    move	$a2,$a6
    # Line 2218
    addiu	$a1,$a1,4
    # Line 2216
    subu	$s8,$s8,$t1
    # Line 2220
    addiu	$t1,$t1,-1
    bltz	$t1,.L0dad6f70
    sd	$a1,8($sp)
    move	$v0,$t1
    sd	$t1,32($sp)
    b	.L0dad70a0
    sd	$a6,24($sp)
.L0dad6fb8:
    # Line 2231
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2233
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f4
    # Line 2231
    swc1	$f2,0($a3)
    # Line 2233
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    nop
    addu	$t0,$t0,$a4
    sra	$t0,$t0,0x4
    slt	$v1,$t2,$t0
    beqz	$v1,.L0dad6ffc
    nop
    # Line 2235
    move	$t0,$t2
.L0dad6ffc:
    # Line 2236
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 2238
    lwc1	$f0,8($a3)
    mul.s	$f0,$f0,$f4
    # Line 2236
    swc1	$f1,4($a3)
    # Line 2238
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a7,$f3
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v0,$t3,$a7
    beqz	$v0,.L0dad7040
    nop
    # Line 2240
    move	$a7,$t3
.L0dad7040:
    # Line 2241
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2243
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f4
    # Line 2241
    swc1	$f0,8($a3)
    # Line 2243
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    nop
    addu	$t0,$t0,$a4
    sra	$t0,$t0,0x4
    slt	$v0,$t8,$t0
    beqz	$v0,.L0dad7084
    nop
    # Line 2245
    move	$t0,$t8
.L0dad7084:
    # Line 2246
    mtc1	$t0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,12($a3)
.L0dad7094:
    # Line 2249
    addiu	$a6,$a6,1
    # Line 2220
    beq	$t1,$s6,.L0dad6f60
    # Line 2248
    addiu	$a3,$a3,16
.L0dad70a0:
    # Line 2220
    addiu	$t1,$t1,-1
    and	$v0,$t9,$a5
    beqz	$v0,.L0dad7094
    # Line 2251
    srl	$a5,$a5,0x1
    # Line 2228
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    # Line 2227
    andi	$a4,$a6,0x3
    # Line 2228
    trunc.w.s	$f2,$f2
    # Line 2227
    addu	$a4,$a4,$s2
    addu	$a4,$a4,$gp
    lb	$a4,0($a4)
    # Line 2228
    mfc1	$a7,$f2
    nop
    addu	$a7,$a7,$a4
    sra	$a7,$a7,0x4
    slt	$v1,$s1,$a7
    beqz	$v1,.L0dad6fb8
    nop
    b	.L0dad6fb8
    # Line 2230
    move	$a7,$s1
.L0dad70f8:
    # ld	gp,40(sp)
    ld	$s6,48($sp)
    ld	$s2,56($sp)
.L0dad7104:
    # Line 2258
    move	$v0,$zero
    ld	$s1,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDitherRGBAStippledSpan

# Function: __glRoundCISpan
# Declared: Line 2264 (Source lines: 2272-2282)
# Address: 0x0dad7118 - 0x0dad720c (Size: 244 bytes, Frame: 0)
.globl __glRoundCISpan
.ent __glRoundCISpan
__glRoundCISpan:
    # Line 2273
    lw	$a3,30468($a0)
    # Line 2272
    lw	$at,3136($a0)
    # Line 2274
    lw	$a5,30252($a0)
    # Line 2272
    li	$a4,1
    sllv	$a4,$a4,$at
    # Line 2274
    addiu	$a5,$a5,-1
    bltz	$a5,.L0dad718c
    # Line 2272
    addiu	$a4,$a4,-1
    # Line 2274
    addiu	$a7,$a5,1
    andi	$a6,$a7,0x1
    beqz	$a6,.L0dad7180
    li	$a6,-1
    # Line 2275
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a3)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    # Line 2278
    addiu	$a3,$a3,16
    # Line 2275
    slt	$at,$a4,$a2
    beqz	$at,.L0dad7170
    # Line 2274
    addiu	$a5,$a5,-1
    # Line 2276
    move	$a2,$a4
.L0dad7170:
    # Line 2277
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-16($a3)
.L0dad7180:
    sra	$v0,$a7,0x1
    bnezl	$v0,.L0dad71e4
    # Line 2275
    lwc1	$f0,3280($a0)
.L0dad718c:
    # Line 2282
    jr	$ra
    move	$v0,$zero
.L0dad7194:
    # Line 2277
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a3)
    # Line 2275
    lwc1	$f3,16($a3)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a2,$f3
    # Line 2274
    addiu	$a5,$a5,-2
    # Line 2275
    slt	$v1,$a4,$a2
    beqz	$v1,.L0dad71cc
    # Line 2278
    addiu	$a3,$a3,32
    # Line 2276
    move	$a2,$a4
.L0dad71cc:
    # Line 2277
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2274
    beq	$a5,$a6,.L0dad718c
    # Line 2277
    swc1	$f2,-16($a3)
    # Line 2275
    lwc1	$f0,3280($a0)
.L0dad71e4:
    lwc1	$f3,0($a3)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a2,$f3
    nop
    slt	$a1,$a4,$a2
    beqz	$a1,.L0dad7194
    nop
    b	.L0dad7194
    # Line 2276
    move	$a2,$a4
.end __glRoundCISpan

# Function: __glRoundCIStippledSpan
# Declared: Line 2288 (Source lines: 2295-2325)
# Address: 0x0dad720c - 0x0dad7374 (Size: 360 bytes, Frame: 0)
.globl __glRoundCIStippledSpan
.ent __glRoundCIStippledSpan
__glRoundCIStippledSpan:
    # Line 2299
    lw	$a2,30468($a0)
    # Line 2296
    lw	$t2,30476($a0)
    # Line 2298
    lw	$at,3136($a0)
    # Line 2295
    lw	$t1,30252($a0)
    # Line 2298
    li	$a5,1
    sllv	$a5,$a5,$at
    # Line 2299
    beqz	$t1,.L0dad736c
    # Line 2298
    addiu	$a5,$a5,-1
    # Line 2299
    li	$t0,-1
    b	.L0dad723c
    lui	$t8,0x8000
.L0dad7238:
    # Line 2309
    beqz	$t1,.L0dad736c
.L0dad723c:
    # Line 2301
    slti	$v0,$t1,33
    bnez	$v0,.L0dad724c
    move	$a6,$t1
    # Line 2303
    li	$a6,32
.L0dad724c:
    # Line 2307
    lw	$a7,0($t2)
    # Line 2308
    move	$a3,$t8
    # Line 2305
    subu	$t1,$t1,$a6
    # Line 2309
    addiu	$a6,$a6,-1
    bltz	$a6,.L0dad7238
    # Line 2307
    addiu	$t2,$t2,4
    # Line 2309
    addiu	$t3,$a6,1
    andi	$v1,$t3,0x1
    beqz	$v1,.L0dad72bc
    and	$a1,$a7,$a3
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    beqz	$a1,.L0dad72b8
    addiu	$a6,$a6,-1
    # Line 2311
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    nop
    slt	$at,$a5,$a4
    beqz	$at,.L0dad72a8
    nop
    # Line 2312
    move	$a4,$a5
.L0dad72a8:
    # Line 2313
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
.L0dad72b8:
    # Line 2315
    addiu	$a2,$a2,16
.L0dad72bc:
    sra	$v0,$t3,0x1
    beqz	$v0,.L0dad7238
    nop
    b	.L0dad7330
    # Line 2309
    and	$at,$a7,$a3
.L0dad72d0:
    # Line 2313
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a2)
.L0dad72e0:
    # Line 2309
    addiu	$a6,$a6,-2
    beqz	$v1,.L0dad7324
    # Line 2315
    addiu	$a2,$a2,16
    # Line 2311
    lwc1	$f1,3280($a0)
    lwc1	$f0,0($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f0
    nop
    slt	$a1,$a5,$a4
    beqz	$a1,.L0dad7314
    nop
    # Line 2312
    move	$a4,$a5
.L0dad7314:
    # Line 2313
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
.L0dad7324:
    # Line 2309
    beq	$a6,$t0,.L0dad7238
    # Line 2315
    addiu	$a2,$a2,16
    # Line 2309
    and	$at,$a7,$a3
.L0dad7330:
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    and	$v1,$a7,$a3
    beqz	$at,.L0dad72e0
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2311
    lwc1	$f0,3280($a0)
    lwc1	$f3,0($a2)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a4,$f3
    nop
    slt	$v0,$a5,$a4
    beqz	$v0,.L0dad72d0
    nop
    b	.L0dad72d0
    # Line 2312
    move	$a4,$a5
.L0dad736c:
    # Line 2325
    jr	$ra
    move	$v0,$zero
.end __glRoundCIStippledSpan

# Function: __glRoundRGBASpan
# Declared: Line 2332 (Source lines: 2342-2364)
# Address: 0x0dad7374 - 0x0dad7490 (Size: 284 bytes, Frame: 0)
.globl __glRoundRGBASpan
.ent __glRoundRGBASpan
__glRoundRGBASpan:
    # Line 2346
    lw	$a2,30468($a0)
    # Line 2345
    lw	$a7,30800($a0)
    # Line 2344
    lw	$t0,30776($a0)
    # Line 2347
    lw	$a5,30252($a0)
    # Line 2343
    lw	$a6,30772($a0)
    # Line 2347
    addiu	$a5,$a5,-1
    bltz	$a5,.L0dad7488
    # Line 2342
    lw	$t1,30768($a0)
    # Line 2347
    li	$t2,-1
    b	.L0dad73b8
    # Line 2348
    lwc1	$f2,3280($a0)
.L0dad73a0:
    # Line 2359
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2347
    beq	$a5,$t2,.L0dad7488
    # Line 2359
    swc1	$f0,-4($a2)
    # Line 2348
    lwc1	$f2,3280($a0)
.L0dad73b8:
    lwc1	$f1,0($a2)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    nop
    slt	$at,$t1,$a4
    beqz	$at,.L0dad73dc
    nop
    # Line 2349
    move	$a4,$t1
.L0dad73dc:
    # Line 2350
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a2)
    # Line 2351
    lwc1	$f3,4($a2)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
    nop
    slt	$v0,$a6,$a3
    beqz	$v0,.L0dad7414
    nop
    # Line 2352
    move	$a3,$a6
.L0dad7414:
    # Line 2353
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a2)
    # Line 2354
    lwc1	$f2,8($a2)
    lwc1	$f3,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$v1,$t0,$a4
    beqz	$v1,.L0dad744c
    nop
    # Line 2355
    move	$a4,$t0
.L0dad744c:
    # Line 2356
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,8($a2)
    # Line 2357
    lwc1	$f1,12($a2)
    lwc1	$f2,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    # Line 2347
    addiu	$a5,$a5,-1
    # Line 2357
    slt	$a1,$a7,$a3
    beqz	$a1,.L0dad73a0
    # Line 2360
    addiu	$a2,$a2,16
    b	.L0dad73a0
    # Line 2358
    move	$a3,$a7
.L0dad7488:
    # Line 2364
    jr	$ra
    move	$v0,$zero
.end __glRoundRGBASpan

# Function: __glRoundRGBAStippledSpan
# Declared: Line 2371 (Source lines: 2372-2422)
# Address: 0x0dad7490 - 0x0dad7618 (Size: 392 bytes, Frame: 32)
.globl __glRoundRGBAStippledSpan
.ent __glRoundRGBAStippledSpan
__glRoundRGBAStippledSpan:
    # Line 2387
    lw	$a2,30468($a0)
    # Line 2386
    lw	$t3,30800($a0)
    # Line 2385
    lw	$t2,30776($a0)
    # Line 2384
    lw	$t1,30772($a0)
    # Line 2383
    lw	$t0,30768($a0)
    # Line 2379
    lw	$at,30252($a0)
    # Line 2372
    addiu	$sp,$sp,-32
    # Line 2380
    lw	$v0,30476($a0)
    sd	$at,0($sp)
    # Line 2387
    beqz	$at,.L0dad760c
    sd	$v0,8($sp)
    b	.L0dad74cc
    li	$t9,-1
.L0dad74c4:
    ld	$v1,0($sp)
    # Line 2397
    beqz	$v1,.L0dad760c
.L0dad74cc:
    ld	$a1,0($sp)
    # Line 2389
    move	$a7,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0dad74e4
    # Line 2395
    ld	$at,8($sp)
    # Line 2391
    li	$a7,32
.L0dad74e4:
    lui	$a3,0x8000
    # Line 2395
    lw	$t8,0($at)
    # Line 2393
    ld	$v0,0($sp)
    # Line 2395
    addiu	$at,$at,4
    sd	$at,8($sp)
    # Line 2393
    subu	$v0,$v0,$a7
    # Line 2397
    addiu	$a7,$a7,-1
    bltz	$a7,.L0dad74c4
    sd	$v0,0($sp)
    b	.L0dad75d4
    addiu	$a7,$a7,-1
.L0dad7510:
    # Line 2401
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a2)
    # Line 2402
    lwc1	$f0,4($a2)
    lwc1	$f1,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f0
    nop
    slt	$v1,$t1,$a5
    beqz	$v1,.L0dad7548
    nop
    # Line 2403
    move	$a5,$t1
.L0dad7548:
    # Line 2404
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,4($a2)
    # Line 2405
    lwc1	$f3,8($a2)
    lwc1	$f0,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    nop
    slt	$a1,$t2,$a6
    beqz	$a1,.L0dad7580
    nop
    # Line 2406
    move	$a6,$t2
.L0dad7580:
    # Line 2407
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($a2)
    # Line 2408
    lwc1	$f2,12($a2)
    lwc1	$f3,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$at,$t3,$a4
    beqz	$at,.L0dad75b8
    nop
    # Line 2409
    move	$a4,$t3
.L0dad75b8:
    # Line 2410
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,12($a2)
.L0dad75c8:
    # Line 2397
    beq	$a7,$t9,.L0dad74c4
    # Line 2412
    addiu	$a2,$a2,16
    # Line 2397
    addiu	$a7,$a7,-1
.L0dad75d4:
    and	$v0,$t8,$a3
    beqz	$v0,.L0dad75c8
    # Line 2415
    srl	$a3,$a3,0x1
    # Line 2399
    lwc1	$f3,3280($a0)
    lwc1	$f2,0($a2)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    slt	$v1,$t0,$a4
    beqz	$v1,.L0dad7510
    nop
    b	.L0dad7510
    # Line 2400
    move	$a4,$t0
.L0dad760c:
    # Line 2422
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glRoundRGBAStippledSpan

# Function: __glLogicOpSpan
# Declared: Line 2427 (Source lines: 2428-2465)
# Address: 0x0dad7618 - 0x0dad7738 (Size: 288 bytes, Frame: 0)
.globl __glLogicOpSpan
.ent __glLogicOpSpan
__glLogicOpSpan:
    # Line 2436
    lw	$a3,30472($a0)
    # Line 2435
    lw	$a4,30468($a0)
    # Line 2438
    lw	$a6,30252($a0)
    # Line 2428
    lui	$v0,0x12
    addiu	$v0,$v0,592
    # Line 2438
    addiu	$a6,$a6,-1
    bltz	$a6,.L0dad7730
    # Line 2428
    nop
    # Line 2438
    li	$t1,-1
    b	.L0dad766c
    # Line 2460
    addiu	$a4,$a4,16
.L0dad7644:
    # Line 2451
    xor	$a5,$a5,$t0
    nor	$a5,$a5,$zero
.L0dad764c:
    # Line 2438
    addiu	$a6,$a6,-1
    # Line 2459
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2461
    addiu	$a3,$a3,16
    # Line 2438
    beq	$a6,$t1,.L0dad7730
    # Line 2459
    swc1	$f0,-16($a4)
    # Line 2460
    addiu	$a4,$a4,16
.L0dad766c:
    # Line 2440
    la	$v0,sub_0dbf0000
    lwc1	$f2,0($a3)
    lw	$a7,1756($a0)
    # Line 2439
    lwc1	$f1,-16($a4)
    # Line 2440
    trunc.w.s	$f2,$f2
    lui	$v0,%hi(jtbl_0dbebc50)
    addiu	$a7,$a7,-5376
    # Line 2439
    trunc.w.s	$f1,$f1
    # Line 2440
    sltiu	$v1,$a7,16
    sll	$a7,$a7,0x2
    mfc1	$t0,$f2
    # Line 2439
    mfc1	$a5,$f1
    # Line 2440
    beqz	$v1,.L0dad764c
    addu	$a7,$a7,$v0
    lw	$v0,%lo(jtbl_0dbebc50)($a7)
    jr	$v0
    # Line 2444
    nor	$v1,$t0,$zero
.L0dad76b0:
    # Line 2442
    b	.L0dad764c
    move	$a5,$zero
.L0dad76b8:
    # Line 2443
    b	.L0dad764c
    and	$a5,$a5,$t0
.L0dad76c0:
    # Line 2444
    b	.L0dad764c
    and	$a5,$v1,$a5
.L0dad76c8:
    # Line 2446
    nor	$a5,$a5,$zero
    b	.L0dad764c
    and	$a5,$a5,$t0
.L0dad76d4:
    # Line 2447
    b	.L0dad764c
    move	$a5,$t0
.L0dad76dc:
    # Line 2448
    b	.L0dad764c
    xor	$a5,$a5,$t0
.L0dad76e4:
    # Line 2449
    b	.L0dad764c
    or	$a5,$a5,$t0
.L0dad76ec:
    # Line 2450
    b	.L0dad764c
    nor	$a5,$a5,$t0
.L0dad76f4:
    # Line 2452
    b	.L0dad764c
    nor	$a5,$t0,$zero
.L0dad76fc:
    # Line 2453
    nor	$v0,$t0,$zero
    b	.L0dad764c
    or	$a5,$v0,$a5
.L0dad7708:
    # Line 2454
    b	.L0dad764c
    nor	$a5,$a5,$zero
.L0dad7710:
    # Line 2455
    nor	$a5,$a5,$zero
    b	.L0dad764c
    or	$a5,$a5,$t0
.L0dad771c:
    # Line 2456
    and	$a5,$a5,$t0
    b	.L0dad764c
    nor	$a5,$a5,$zero
.L0dad7728:
    b	.L0dad764c
    # Line 2457
    li	$a5,-1
.L0dad7730:
    # Line 2465
    jr	$ra
    move	$v0,$zero
.end __glLogicOpSpan

# Function: __glLogicOpStippledSpan
# Declared: Line 2468 (Source lines: 2469-2525)
# Address: 0x0dad7738 - 0x0dad78a4 (Size: 364 bytes, Frame: 32)
.globl __glLogicOpStippledSpan
.ent __glLogicOpStippledSpan
__glLogicOpStippledSpan:
    # Line 2479
    lw	$a5,30472($a0)
    # Line 2478
    lw	$a3,30468($a0)
    # Line 2469
    addiu	$sp,$sp,-32
    lui	$v0,0x12
    addiu	$v0,$v0,304
    # Line 2475
    lw	$t8,30252($a0)
    # Line 2476
    lw	$v1,30476($a0)
    # Line 2469
    # addu	at,t9,v0
    # Line 2479
    beqz	$t8,.L0dad7898
    sd	$v1,0($sp)
    li	$t3,-1
    b	.L0dad7770
    ld	$t9,0($sp)
.L0dad776c:
    # Line 2490
    beqz	$t8,.L0dad7898
.L0dad7770:
    # Line 2482
    slti	$a1,$t8,33
    bnez	$a1,.L0dad7780
    move	$a7,$t8
    # Line 2484
    li	$a7,32
.L0dad7780:
    lui	$a4,0x8000
    # Line 2488
    lw	$t2,0($t9)
    # Line 2486
    subu	$t8,$t8,$a7
    # Line 2490
    addiu	$a7,$a7,-1
    bltz	$a7,.L0dad776c
    # Line 2488
    addiu	$t9,$t9,4
    b	.L0dad77c4
    # Line 2490
    addiu	$a7,$a7,-1
.L0dad77a0:
    # Line 2502
    or	$a6,$a6,$t1
.L0dad77a4:
    # Line 2512
    mtc1	$a6,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a3)
.L0dad77b4:
    # Line 2515
    addiu	$a5,$a5,16
    # Line 2490
    beq	$a7,$t3,.L0dad776c
    # Line 2514
    addiu	$a3,$a3,16
    # Line 2490
    addiu	$a7,$a7,-1
.L0dad77c4:
    and	$a2,$t2,$a4
    beqz	$a2,.L0dad77b4
    # Line 2518
    srl	$a4,$a4,0x1
    # Line 2493
    la	$v0,sub_0dbf0000
    lwc1	$f2,0($a5)
    lw	$t0,1756($a0)
    # Line 2492
    lwc1	$f1,0($a3)
    # Line 2493
    trunc.w.s	$f2,$f2
    lui	$v0,%hi(jtbl_0dbebc90)
    addiu	$t0,$t0,-5376
    # Line 2492
    trunc.w.s	$f1,$f1
    # Line 2493
    sltiu	$v1,$t0,16
    sll	$t0,$t0,0x2
    mfc1	$t1,$f2
    # Line 2492
    mfc1	$a6,$f1
    # Line 2493
    beqz	$v1,.L0dad77a4
    addu	$t0,$t0,$v0
    lw	$v0,%lo(jtbl_0dbebc90)($t0)
    jr	$v0
    # Line 2497
    nor	$v1,$t1,$zero
.L0dad7814:
    # Line 2495
    b	.L0dad77a4
    move	$a6,$zero
.L0dad781c:
    # Line 2496
    b	.L0dad77a4
    and	$a6,$a6,$t1
.L0dad7824:
    # Line 2497
    b	.L0dad77a4
    and	$a6,$v1,$a6
.L0dad782c:
    # Line 2499
    nor	$a6,$a6,$zero
    b	.L0dad77a4
    and	$a6,$a6,$t1
.L0dad7838:
    # Line 2500
    b	.L0dad77a4
    move	$a6,$t1
.L0dad7840:
    # Line 2501
    b	.L0dad77a4
    xor	$a6,$a6,$t1
.L0dad7848:
    # Line 2503
    b	.L0dad77a4
    nor	$a6,$a6,$t1
.L0dad7850:
    # Line 2504
    xor	$a6,$a6,$t1
    b	.L0dad77a4
    nor	$a6,$a6,$zero
.L0dad785c:
    # Line 2505
    b	.L0dad77a4
    nor	$a6,$t1,$zero
.L0dad7864:
    # Line 2506
    nor	$v0,$t1,$zero
    b	.L0dad77a4
    or	$a6,$v0,$a6
.L0dad7870:
    # Line 2507
    b	.L0dad77a4
    nor	$a6,$a6,$zero
.L0dad7878:
    # Line 2508
    nor	$a6,$a6,$zero
    b	.L0dad77a4
    or	$a6,$a6,$t1
.L0dad7884:
    # Line 2509
    and	$a6,$a6,$t1
    b	.L0dad77a4
    nor	$a6,$a6,$zero
.L0dad7890:
    b	.L0dad77a4
    # Line 2510
    li	$a6,-1
.L0dad7898:
    # Line 2525
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end __glLogicOpStippledSpan

# Function: __glMaskRGBASpan
# Declared: Line 2530 (Source lines: 2539-2553)
# Address: 0x0dad78a4 - 0x0dad79fc (Size: 344 bytes, Frame: 0)
.globl __glMaskRGBASpan
.ent __glMaskRGBASpan
__glMaskRGBASpan:
    # Line 2544
    lw	$t0,30472($a0)
    # Line 2543
    lw	$a2,30468($a0)
    # Line 2542
    lbu	$a5,1787($a0)
    # Line 2541
    lbu	$a7,1786($a0)
    # Line 2545
    lw	$a3,30252($a0)
    # Line 2540
    lbu	$a4,1785($a0)
    # Line 2545
    li	$a1,-1
    addiu	$a3,$a3,-1
    bltz	$a3,.L0dad7924
    # Line 2539
    lbu	$a6,1784($a0)
    # Line 2545
    addiu	$t1,$a3,1
    andi	$at,$t1,0x1
    beqz	$at,.L0dad791c
    sra	$v0,$t1,0x1
    beqz	$a6,.L0dad79dc
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0dad78e8:
    # Line 2545
    addiu	$a3,$a3,-1
    # Line 2546
    beqz	$a4,.L0dad79e4
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0dad78f8:
    beqz	$a7,.L0dad79ec
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0dad7904:
    beqz	$a5,.L0dad79f4
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0dad7910:
    # Line 2550
    addiu	$a2,$a2,16
    # Line 2549
    swc1	$f4,-4($a2)
    sra	$v0,$t1,0x1
.L0dad791c:
    bnez	$v0,.L0dad7948
    nop
.L0dad7924:
    # Line 2553
    jr	$ra
    move	$v0,$zero
.L0dad792c:
    # Line 2548
    lwc1	$f4,8($t0)
.L0dad7930:
    beqz	$a5,.L0dad79d4
    swc1	$f4,24($a2)
    # Line 2549
    lwc1	$f4,28($a2)
.L0dad793c:
    # Line 2550
    addiu	$a2,$a2,32
    # Line 2545
    beq	$a3,$a1,.L0dad7924
    # Line 2549
    swc1	$f4,-4($a2)
.L0dad7948:
    # Line 2545
    beqz	$a6,.L0dad79a4
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0dad7954:
    # Line 2545
    addiu	$a3,$a3,-2
    # Line 2546
    beqz	$a4,.L0dad79ac
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0dad7964:
    beqz	$a7,.L0dad79b4
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0dad7970:
    beqz	$a5,.L0dad79bc
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0dad797c:
    # Line 2545
    beqz	$a6,.L0dad79c4
    # Line 2549
    swc1	$f4,12($a2)
    # Line 2546
    lwc1	$f4,16($a2)
.L0dad7988:
    beqz	$a4,.L0dad79cc
    swc1	$f4,16($a2)
    # Line 2547
    lwc1	$f4,20($a2)
.L0dad7994:
    beqz	$a7,.L0dad792c
    swc1	$f4,20($a2)
    # Line 2548
    b	.L0dad7930
    lwc1	$f4,24($a2)
.L0dad79a4:
    b	.L0dad7954
    # Line 2546
    lwc1	$f4,0($t0)
.L0dad79ac:
    b	.L0dad7964
    # Line 2547
    lwc1	$f4,4($t0)
.L0dad79b4:
    b	.L0dad7970
    # Line 2548
    lwc1	$f4,8($t0)
.L0dad79bc:
    b	.L0dad797c
    # Line 2549
    lwc1	$f4,12($t0)
.L0dad79c4:
    b	.L0dad7988
    # Line 2546
    lwc1	$f4,0($t0)
.L0dad79cc:
    b	.L0dad7994
    # Line 2547
    lwc1	$f4,4($t0)
.L0dad79d4:
    b	.L0dad793c
    # Line 2549
    lwc1	$f4,12($t0)
.L0dad79dc:
    b	.L0dad78e8
    # Line 2546
    lwc1	$f4,0($t0)
.L0dad79e4:
    b	.L0dad78f8
    # Line 2547
    lwc1	$f4,4($t0)
.L0dad79ec:
    b	.L0dad7904
    # Line 2548
    lwc1	$f4,8($t0)
.L0dad79f4:
    b	.L0dad7910
    # Line 2549
    lwc1	$f4,12($t0)
.end __glMaskRGBASpan

# Function: __glMaskCISpan
# Declared: Line 2556 (Source lines: 2564-2575)
# Address: 0x0dad79fc - 0x0dad7b30 (Size: 308 bytes, Frame: 0)
.globl __glMaskCISpan
.ent __glMaskCISpan
__glMaskCISpan:
    # Line 2567
    lw	$a5,30472($a0)
    # Line 2566
    lw	$a7,30468($a0)
    # Line 2564
    lw	$a3,1780($a0)
    # Line 2568
    lw	$a2,30252($a0)
    # Line 2565
    lw	$a4,30740($a0)
    nor	$at,$a3,$zero
    # Line 2568
    addiu	$a2,$a2,-1
    bltz	$a2,.L0dad7b28
    # Line 2565
    and	$a4,$a4,$at
    # Line 2568
    addiu	$a1,$a2,1
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dad7a7c
    li	$a6,-1
    # Line 2571
    lwc1	$f2,0($a7)
    lwc1	$f1,0($a5)
    trunc.l.s	$f2,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$at,$f2
    dmfc1	$v0,$f1
    sll	$at,$at,0x0
    sll	$v0,$v0,0x0
    and	$v0,$v0,$a4
    and	$at,$at,$a3
    or	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 2568
    addiu	$a2,$a2,-1
    # Line 2572
    addiu	$a7,$a7,16
    # Line 2571
    swc1	$f0,-16($a7)
.L0dad7a7c:
    sra	$v0,$a1,0x1
    move	$t1,$a2
    beqz	$v0,.L0dad7b28
    move	$t0,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0dad7a94:
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    lwc1	$f3,0($a5)
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f0
    dmfc1	$at,$f3
    sll	$a0,$a0,0x0
    and	$a0,$a0,$a3
    sll	$at,$at,0x0
    and	$at,$at,$a4
    or	$a0,$a0,$at
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,16($a2)
    swc1	$f2,0($a2)
    trunc.l.s	$f1,$f1
    lwc1	$f0,0($a5)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f1
    dmfc1	$a0,$f0
    sll	$v1,$v1,0x0
    and	$v1,$v1,$a3
    sll	$a0,$a0,0x0
    and	$a0,$a0,$a4
    or	$v1,$v1,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 2572
    addiu	$a2,$a2,32
    # Line 2568
    addiu	$a1,$a1,-2
    bne	$a1,$a6,.L0dad7a94
    # Line 2571
    swc1	$f3,-16($a2)
.L0dad7b28:
    # Line 2575
    jr	$ra
    move	$v0,$zero
.end __glMaskCISpan

.late_rodata
jtbl_0dbebc50:
    .word .L0dad76b0
    .word .L0dad76b8
    .word .L0dad76c0
    .word .L0dad764c
    .word .L0dad76c8
    .word .L0dad76d4
    .word .L0dad76dc
    .word .L0dad76e4
    .word .L0dad76ec
    .word .L0dad7644
    .word .L0dad76f4
    .word .L0dad76fc
    .word .L0dad7708
    .word .L0dad7710
    .word .L0dad771c
    .word .L0dad7728
jtbl_0dbebc90:
    .word .L0dad7814
    .word .L0dad781c
    .word .L0dad7824
    .word .L0dad77a4
    .word .L0dad782c
    .word .L0dad7838
    .word .L0dad7840
    .word .L0dad77a0
    .word .L0dad7848
    .word .L0dad7850
    .word .L0dad785c
    .word .L0dad7864
    .word .L0dad7870
    .word .L0dad7878
    .word .L0dad7884
    .word .L0dad7890

.rdata
_lit8_3fa0000000000000:
    .word 0x3fa00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_41800000:
    .word 0x41800000

