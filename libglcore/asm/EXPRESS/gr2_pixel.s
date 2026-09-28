# Source: ../EXPRESS/gr2_pixel.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_pixel.c
# Total Functions: 23

.text

# Function: __glExpCopyToPipe4
# Declared: Line 40 (Source lines: 41-95)
# Address: 0x0da61878 - 0x0da61ba0 (Size: 808 bytes, Frame: 0)
.globl __glExpCopyToPipe4
.ent __glExpCopyToPipe4
__glExpCopyToPipe4:
    # Line 41
    slti	$at,$a2,16
    bnez	$at,.L0da61a60
    lui	$a3,0x4
    lui	$a6,0x4
    ori	$a6,$a6,0x21c4
    sra	$a4,$a2,0x3
    srl	$a4,$a4,0x1c
    addu	$a4,$a4,$a2
    sra	$a4,$a4,0x4
    andi	$at,$a4,0x1
    beqz	$at,.L0da61930
    ori	$a3,$a3,0x277c
    # Line 44
    lw	$a0,0($a1)
    sw	$a0,0($a6)
    # Line 45
    lw	$v1,4($a1)
    sw	$v1,0($a3)
    # Line 46
    lw	$v0,8($a1)
    sw	$v0,0($a3)
    # Line 47
    lw	$at,12($a1)
    sw	$at,0($a3)
    # Line 48
    lw	$a0,16($a1)
    sw	$a0,0($a3)
    # Line 49
    lw	$v1,20($a1)
    sw	$v1,0($a3)
    # Line 50
    lw	$v0,24($a1)
    sw	$v0,0($a3)
    # Line 51
    lw	$at,28($a1)
    sw	$at,0($a3)
    # Line 52
    lw	$a0,32($a1)
    sw	$a0,0($a3)
    # Line 53
    lw	$v1,36($a1)
    sw	$v1,0($a3)
    # Line 54
    lw	$v0,40($a1)
    sw	$v0,0($a3)
    # Line 55
    lw	$at,44($a1)
    sw	$at,0($a3)
    # Line 56
    lw	$a0,48($a1)
    sw	$a0,0($a3)
    # Line 57
    lw	$v1,52($a1)
    sw	$v1,0($a3)
    # Line 58
    lw	$v0,56($a1)
    sw	$v0,0($a3)
    # Line 59
    lw	$at,60($a1)
    # Line 61
    addiu	$a1,$a1,64
    # Line 60
    addiu	$a2,$a2,-16
    # Line 59
    sw	$at,0($a3)
.L0da61930:
    sra	$at,$a4,0x1
    move	$t0,$a2
    beqz	$at,.L0da61a60
    move	$a7,$a1
    move	$a4,$t0
    move	$a5,$a7
.L0da61948:
    # Line 44
    lw	$v0,0($a5)
    sw	$v0,0($a6)
    # Line 45
    lw	$at,4($a5)
    sw	$at,0($a3)
    # Line 46
    lw	$a0,8($a5)
    sw	$a0,0($a3)
    # Line 47
    lw	$v1,12($a5)
    sw	$v1,0($a3)
    # Line 48
    lw	$v0,16($a5)
    sw	$v0,0($a3)
    # Line 49
    lw	$at,20($a5)
    sw	$at,0($a3)
    # Line 50
    lw	$a0,24($a5)
    sw	$a0,0($a3)
    # Line 51
    lw	$v1,28($a5)
    sw	$v1,0($a3)
    # Line 52
    lw	$v0,32($a5)
    sw	$v0,0($a3)
    # Line 53
    lw	$at,36($a5)
    sw	$at,0($a3)
    # Line 54
    lw	$a0,40($a5)
    sw	$a0,0($a3)
    # Line 55
    lw	$v1,44($a5)
    sw	$v1,0($a3)
    # Line 56
    lw	$v0,48($a5)
    sw	$v0,0($a3)
    # Line 57
    lw	$at,52($a5)
    sw	$at,0($a3)
    # Line 58
    lw	$a0,56($a5)
    sw	$a0,0($a3)
    # Line 59
    lw	$v1,60($a5)
    sw	$v1,0($a3)
    # Line 44
    lw	$v0,64($a5)
    sw	$v0,0($a6)
    # Line 45
    lw	$at,68($a5)
    sw	$at,0($a3)
    # Line 46
    lw	$a0,72($a5)
    sw	$a0,0($a3)
    # Line 47
    lw	$v1,76($a5)
    sw	$v1,0($a3)
    # Line 48
    lw	$v0,80($a5)
    sw	$v0,0($a3)
    # Line 49
    lw	$at,84($a5)
    sw	$at,0($a3)
    # Line 50
    lw	$a0,88($a5)
    sw	$a0,0($a3)
    # Line 51
    lw	$v1,92($a5)
    sw	$v1,0($a3)
    # Line 52
    lw	$v0,96($a5)
    sw	$v0,0($a3)
    # Line 53
    lw	$at,100($a5)
    sw	$at,0($a3)
    # Line 54
    lw	$a0,104($a5)
    sw	$a0,0($a3)
    # Line 55
    lw	$v1,108($a5)
    sw	$v1,0($a3)
    # Line 56
    lw	$v0,112($a5)
    sw	$v0,0($a3)
    # Line 57
    lw	$at,116($a5)
    sw	$at,0($a3)
    # Line 58
    lw	$a0,120($a5)
    # Line 61
    addiu	$a5,$a5,128
    # Line 58
    sw	$a0,0($a3)
    # Line 60
    addiu	$a4,$a4,-32
    # Line 59
    lw	$v0,-4($a5)
    # Line 61
    slti	$v1,$a4,16
    beqz	$v1,.L0da61948
    # Line 59
    sw	$v0,0($a3)
    move	$a2,$a4
    move	$a1,$a5
.L0da61a60:
    # Line 61
    blez	$a2,.L0da61b98
    # Line 91
    lui	$a3,0x4
    # Line 61
    andi	$v1,$a2,0x8
    beqz	$v1,.L0da61ac4
    # Line 66
    lui	$at,0x4
    # Line 65
    lw	$v0,0($a1)
    lui	$v1,0x4
    ori	$v1,$v1,0x21c4
    sw	$v0,0($v1)
    # Line 66
    lw	$a0,4($a1)
    ori	$at,$at,0x277c
    sw	$a0,0($at)
    # Line 67
    lw	$v1,8($a1)
    sw	$v1,0($at)
    # Line 68
    lw	$v0,12($a1)
    sw	$v0,0($at)
    # Line 69
    lw	$a0,16($a1)
    sw	$a0,0($at)
    # Line 70
    lw	$v1,20($a1)
    sw	$v1,0($at)
    # Line 71
    lw	$v0,24($a1)
    sw	$v0,0($at)
    # Line 72
    lw	$a0,28($a1)
    # Line 73
    addiu	$a1,$a1,32
    # Line 72
    sw	$a0,0($at)
.L0da61ac4:
    # Line 73
    andi	$a0,$a2,0x4
    beqz	$a0,.L0da61b00
    # Line 77
    lui	$v0,0x4
    # Line 76
    lw	$v1,0($a1)
    lui	$a0,0x4
    ori	$a0,$a0,0x21c4
    sw	$v1,0($a0)
    # Line 77
    lw	$a0,4($a1)
    ori	$v0,$v0,0x277c
    sw	$a0,0($v0)
    # Line 78
    lw	$v1,8($a1)
    sw	$v1,0($v0)
    # Line 79
    lw	$at,12($a1)
    # Line 80
    addiu	$a1,$a1,16
    # Line 79
    sw	$at,0($v0)
.L0da61b00:
    # Line 80
    andi	$at,$a2,0x2
    beqz	$at,.L0da61b2c
    # Line 84
    lui	$v1,0x4
    # Line 83
    lw	$a0,0($a1)
    lui	$at,0x4
    ori	$at,$at,0x21c4
    sw	$a0,0($at)
    # Line 84
    lw	$v0,4($a1)
    # Line 85
    addiu	$a1,$a1,8
    # Line 84
    ori	$v1,$v1,0x277c
    sw	$v0,0($v1)
.L0da61b2c:
    # Line 85
    andi	$v0,$a2,0x1
    beqz	$v0,.L0da61b48
    # Line 91
    li	$at,16
    # Line 88
    lui	$a0,0x4
    lw	$v1,0($a1)
    ori	$a0,$a0,0x21c4
    sw	$v1,0($a0)
.L0da61b48:
    # Line 91
    subu	$a2,$at,$a2
    blez	$a2,.L0da61b98
    move	$a4,$a2
    andi	$a1,$a2,0x3
    beqz	$a1,.L0da61b70
    ori	$a3,$a3,0x277c
.L0da61b60:
    addiu	$a2,$a2,-1
    addi	$a1,$a1,-1
    bnez	$a1,.L0da61b60
    # Line 92
    sw	$zero,0($a3)
.L0da61b70:
    sra	$at,$a4,0x2
    beqz	$at,.L0da61b98
    move	$a5,$a2
    move	$a1,$a5
.L0da61b80:
    # Line 91
    addiu	$a1,$a1,-4
    # Line 92
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    sw	$zero,0($a3)
    # Line 91
    bnez	$a1,.L0da61b80
    # Line 92
    sw	$zero,0($a3)
.L0da61b98:
    # Line 95
    jr	$ra
    nop
.end __glExpCopyToPipe4

# Function: __glExpCopyToPipe1
# Declared: Line 104 (Source lines: 105-158)
# Address: 0x0da61ba0 - 0x0da61fb0 (Size: 1040 bytes, Frame: 0)
.globl __glExpCopyToPipe1
.ent __glExpCopyToPipe1
__glExpCopyToPipe1:
    # Line 105
    slti	$at,$a2,64
    bnez	$at,.L0da61c88
    lui	$a4,0x4
    ori	$a4,$a4,0x277c
    lui	$a5,0x4
    ori	$a5,$a5,0x21c4
    # Line 110
    li	$a3,4
.L0da61bbc:
    # Line 111
    lbu	$a0,2($a1)
    sll	$a0,$a0,0x8
    lbu	$at,3($a1)
    lbu	$v0,0($a1)
    lbu	$v1,1($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a5)
    # Line 112
    lbu	$a0,6($a1)
    sll	$a0,$a0,0x8
    lbu	$at,7($a1)
    lbu	$v0,4($a1)
    lbu	$v1,5($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 113
    lbu	$a0,10($a1)
    sll	$a0,$a0,0x8
    lbu	$at,11($a1)
    lbu	$v0,8($a1)
    lbu	$v1,9($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 114
    lbu	$a0,14($a1)
    # Line 115
    addiu	$a1,$a1,16
    # Line 110
    addiu	$a3,$a3,-1
    # Line 114
    sll	$a0,$a0,0x8
    lbu	$at,-1($a1)
    lbu	$v0,-4($a1)
    lbu	$v1,-3($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 110
    bnez	$a3,.L0da61bbc
    # Line 114
    sw	$at,0($a4)
    # Line 117
    addiu	$a2,$a2,-64
    slti	$at,$a2,64
    beqz	$at,.L0da61bbc
    # Line 110
    li	$a3,4
.L0da61c88:
    # Line 117
    blez	$a2,.L0da61fa8
    andi	$v0,$a2,0x20
    beqz	$v0,.L0da61d64
    # Line 121
    li	$a3,2
    lui	$a4,0x4
    ori	$a4,$a4,0x277c
    lui	$a5,0x4
    ori	$a5,$a5,0x21c4
.L0da61ca8:
    # Line 122
    lbu	$a0,2($a1)
    sll	$a0,$a0,0x8
    lbu	$at,3($a1)
    lbu	$v0,0($a1)
    lbu	$v1,1($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a5)
    # Line 123
    lbu	$a0,6($a1)
    sll	$a0,$a0,0x8
    lbu	$at,7($a1)
    lbu	$v0,4($a1)
    lbu	$v1,5($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 124
    lbu	$a0,10($a1)
    sll	$a0,$a0,0x8
    lbu	$at,11($a1)
    lbu	$v0,8($a1)
    lbu	$v1,9($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 125
    lbu	$a0,14($a1)
    # Line 126
    addiu	$a1,$a1,16
    # Line 121
    addiu	$a3,$a3,-1
    # Line 125
    sll	$a0,$a0,0x8
    lbu	$at,-1($a1)
    lbu	$v0,-4($a1)
    lbu	$v1,-3($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 121
    bnez	$a3,.L0da61ca8
    # Line 125
    sw	$at,0($a4)
.L0da61d64:
    # Line 121
    andi	$at,$a2,0x10
    beqz	$at,.L0da61e38
    # Line 134
    andi	$at,$a2,0x8
    # Line 130
    lbu	$a0,2($a1)
    sll	$a0,$a0,0x8
    lbu	$at,3($a1)
    lbu	$v0,0($a1)
    lbu	$v1,1($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    lui	$v0,0x4
    ori	$v0,$v0,0x21c4
    sw	$at,0($v0)
    # Line 131
    lbu	$a3,6($a1)
    sll	$a3,$a3,0x8
    lbu	$v0,7($a1)
    lbu	$v1,4($a1)
    lbu	$a0,5($a1)
    or	$v0,$v0,$a3
    sll	$v1,$v1,0x18
    sll	$a0,$a0,0x10
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x277c
    sw	$v0,0($v1)
    # Line 132
    lbu	$at,10($a1)
    sll	$at,$at,0x8
    lbu	$v0,11($a1)
    lbu	$a0,8($a1)
    lbu	$a3,9($a1)
    or	$v0,$v0,$at
    sll	$a0,$a0,0x18
    sll	$a3,$a3,0x10
    or	$a0,$a0,$a3
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
    # Line 133
    lbu	$at,14($a1)
    # Line 134
    addiu	$a1,$a1,16
    # Line 133
    sll	$at,$at,0x8
    lbu	$v0,-1($a1)
    lbu	$a0,-4($a1)
    lbu	$a3,-3($a1)
    or	$v0,$v0,$at
    sll	$a0,$a0,0x18
    sll	$a3,$a3,0x10
    or	$a0,$a0,$a3
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
    # Line 134
    andi	$at,$a2,0x8
.L0da61e38:
    beqz	$at,.L0da61eb0
    # Line 139
    andi	$v0,$a2,0x4
    # Line 137
    lbu	$at,2($a1)
    sll	$at,$at,0x8
    lbu	$v0,3($a1)
    lbu	$v1,0($a1)
    lbu	$a0,1($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    sll	$a0,$a0,0x10
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x21c4
    sw	$v0,0($v1)
    # Line 138
    lbu	$at,6($a1)
    # Line 139
    addiu	$a1,$a1,8
    # Line 138
    sll	$at,$at,0x8
    lbu	$v0,-1($a1)
    lbu	$v1,-4($a1)
    lbu	$a0,-3($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    sll	$a0,$a0,0x10
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x277c
    sw	$v0,0($v1)
    # Line 139
    andi	$v0,$a2,0x4
.L0da61eb0:
    beqz	$v0,.L0da61ef4
    # Line 143
    andi	$a3,$a2,0x3
    # Line 142
    lbu	$v0,2($a1)
    # Line 143
    addiu	$a1,$a1,4
    # Line 142
    sll	$v0,$v0,0x8
    lbu	$v1,-1($a1)
    lbu	$a0,-4($a1)
    lbu	$at,-3($a1)
    or	$v1,$v1,$v0
    sll	$a0,$a0,0x18
    sll	$at,$at,0x10
    or	$a0,$a0,$at
    or	$v1,$v1,$a0
    lui	$a0,0x4
    ori	$a0,$a0,0x21c4
    sw	$v1,0($a0)
    # Line 143
    andi	$a3,$a2,0x3
.L0da61ef4:
    beqz	$a3,.L0da61f4c
    # Line 147
    li	$v1,3
    beq	$a3,$v1,.L0da61f20
    # Line 146
    move	$a4,$zero
    # Line 147
    li	$a0,2
    beq	$a3,$a0,.L0da61f28
    li	$at,1
    beql	$a3,$at,.L0da61f38
    # Line 150
    lbu	$v0,0($a1)
    b	.L0da61f44
    # Line 152
    lui	$v1,0x4
.L0da61f20:
    # Line 148
    lbu	$a4,2($a1)
    sll	$a4,$a4,0x8
.L0da61f28:
    # Line 149
    lbu	$at,1($a1)
    sll	$at,$at,0x10
    or	$a4,$at,$a4
    # Line 150
    lbu	$v0,0($a1)
.L0da61f38:
    sll	$v0,$v0,0x18
    or	$a4,$v0,$a4
    # Line 152
    lui	$v1,0x4
.L0da61f44:
    ori	$v1,$v1,0x21c4
    sw	$a4,0($v1)
.L0da61f4c:
    # Line 154
    li	$at,64
    subu	$a2,$at,$a2
    sra	$a2,$a2,0x2
    blez	$a2,.L0da61fa8
    lui	$a4,0x4
    move	$a3,$a2
    andi	$a1,$a2,0x3
    beqz	$a1,.L0da61f80
    ori	$a4,$a4,0x277c
.L0da61f70:
    addiu	$a2,$a2,-1
    addi	$a1,$a1,-1
    bnez	$a1,.L0da61f70
    # Line 155
    sw	$zero,0($a4)
.L0da61f80:
    sra	$at,$a3,0x2
    beqz	$at,.L0da61fa8
    move	$a5,$a2
    move	$a1,$a5
.L0da61f90:
    # Line 154
    addiu	$a1,$a1,-4
    # Line 155
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    # Line 154
    bnez	$a1,.L0da61f90
    # Line 155
    sw	$zero,0($a4)
.L0da61fa8:
    # Line 158
    jr	$ra
    nop
.end __glExpCopyToPipe1

# Function: __glExpSwapToPipe1
# Declared: Line 161 (Source lines: 162-209)
# Address: 0x0da61fb0 - 0x0da62374 (Size: 964 bytes, Frame: 0)
.globl __glExpSwapToPipe1
.ent __glExpSwapToPipe1
__glExpSwapToPipe1:
    # Line 162
    slti	$at,$a2,64
    bnez	$at,.L0da62098
    lui	$a4,0x4
    ori	$a4,$a4,0x277c
    lui	$a5,0x4
    ori	$a5,$a5,0x21c4
    # Line 167
    li	$a3,4
.L0da61fcc:
    # Line 168
    lbu	$a0,1($a1)
    sll	$a0,$a0,0x8
    lbu	$at,0($a1)
    lbu	$v0,2($a1)
    lbu	$v1,3($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a5)
    # Line 169
    lbu	$a0,5($a1)
    sll	$a0,$a0,0x8
    lbu	$at,4($a1)
    lbu	$v0,6($a1)
    lbu	$v1,7($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 170
    lbu	$a0,9($a1)
    sll	$a0,$a0,0x8
    lbu	$at,8($a1)
    lbu	$v0,10($a1)
    lbu	$v1,11($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 171
    lbu	$a0,13($a1)
    # Line 172
    addiu	$a1,$a1,16
    # Line 167
    addiu	$a3,$a3,-1
    # Line 171
    sll	$a0,$a0,0x8
    lbu	$at,-4($a1)
    lbu	$v0,-2($a1)
    lbu	$v1,-1($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 167
    bnez	$a3,.L0da61fcc
    # Line 171
    sw	$at,0($a4)
    # Line 174
    addiu	$a2,$a2,-64
    slti	$at,$a2,64
    beqz	$at,.L0da61fcc
    # Line 167
    li	$a3,4
.L0da62098:
    # Line 174
    blez	$a2,.L0da6236c
    andi	$v0,$a2,0x20
    beqz	$v0,.L0da62174
    # Line 178
    li	$a3,2
    lui	$a4,0x4
    ori	$a4,$a4,0x277c
    lui	$a5,0x4
    ori	$a5,$a5,0x21c4
.L0da620b8:
    # Line 179
    lbu	$a0,1($a1)
    sll	$a0,$a0,0x8
    lbu	$at,0($a1)
    lbu	$v0,2($a1)
    lbu	$v1,3($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a5)
    # Line 180
    lbu	$a0,5($a1)
    sll	$a0,$a0,0x8
    lbu	$at,4($a1)
    lbu	$v0,6($a1)
    lbu	$v1,7($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 181
    lbu	$a0,9($a1)
    sll	$a0,$a0,0x8
    lbu	$at,8($a1)
    lbu	$v0,10($a1)
    lbu	$v1,11($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a4)
    # Line 182
    lbu	$a0,13($a1)
    # Line 183
    addiu	$a1,$a1,16
    # Line 178
    addiu	$a3,$a3,-1
    # Line 182
    sll	$a0,$a0,0x8
    lbu	$at,-4($a1)
    lbu	$v0,-2($a1)
    lbu	$v1,-1($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 178
    bnez	$a3,.L0da620b8
    # Line 182
    sw	$at,0($a4)
.L0da62174:
    # Line 178
    andi	$at,$a2,0x10
    beqz	$at,.L0da62248
    # Line 191
    andi	$at,$a2,0x8
    # Line 187
    lbu	$a0,1($a1)
    sll	$a0,$a0,0x8
    lbu	$at,0($a1)
    lbu	$v0,2($a1)
    lbu	$v1,3($a1)
    or	$at,$at,$a0
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    lui	$v0,0x4
    ori	$v0,$v0,0x21c4
    sw	$at,0($v0)
    # Line 188
    lbu	$a3,5($a1)
    sll	$a3,$a3,0x8
    lbu	$v0,4($a1)
    lbu	$v1,6($a1)
    lbu	$a0,7($a1)
    or	$v0,$v0,$a3
    sll	$v1,$v1,0x10
    sll	$a0,$a0,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x277c
    sw	$v0,0($v1)
    # Line 189
    lbu	$at,9($a1)
    sll	$at,$at,0x8
    lbu	$v0,8($a1)
    lbu	$a0,10($a1)
    lbu	$a3,11($a1)
    or	$v0,$v0,$at
    sll	$a0,$a0,0x10
    sll	$a3,$a3,0x18
    or	$a0,$a0,$a3
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
    # Line 190
    lbu	$at,13($a1)
    # Line 191
    addiu	$a1,$a1,16
    # Line 190
    sll	$at,$at,0x8
    lbu	$v0,-4($a1)
    lbu	$a0,-2($a1)
    lbu	$a3,-1($a1)
    or	$v0,$v0,$at
    sll	$a0,$a0,0x10
    sll	$a3,$a3,0x18
    or	$a0,$a0,$a3
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
    # Line 191
    andi	$at,$a2,0x8
.L0da62248:
    beqz	$at,.L0da622c0
    # Line 196
    andi	$v0,$a2,0x4
    # Line 194
    lbu	$at,1($a1)
    sll	$at,$at,0x8
    lbu	$v0,0($a1)
    lbu	$v1,2($a1)
    lbu	$a0,3($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x10
    sll	$a0,$a0,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x21c4
    sw	$v0,0($v1)
    # Line 195
    lbu	$at,5($a1)
    # Line 196
    addiu	$a1,$a1,8
    # Line 195
    sll	$at,$at,0x8
    lbu	$v0,-4($a1)
    lbu	$v1,-2($a1)
    lbu	$a0,-1($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x10
    sll	$a0,$a0,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    lui	$v1,0x4
    ori	$v1,$v1,0x277c
    sw	$v0,0($v1)
    # Line 196
    andi	$v0,$a2,0x4
.L0da622c0:
    beqz	$v0,.L0da62300
    # Line 199
    andi	$v1,$a2,0x3
    lbu	$v0,1($a1)
    sll	$v0,$v0,0x8
    lbu	$v1,0($a1)
    lbu	$a0,2($a1)
    lbu	$at,3($a1)
    or	$v1,$v1,$v0
    sll	$a0,$a0,0x10
    sll	$at,$at,0x18
    or	$a0,$a0,$at
    or	$v1,$v1,$a0
    lui	$a0,0x4
    ori	$a0,$a0,0x21c4
    sw	$v1,0($a0)
    andi	$v1,$a2,0x3
.L0da62300:
    beqz	$v1,.L0da62310
    # Line 203
    lui	$a0,0x4
    ori	$a0,$a0,0x21c4
    sw	$zero,0($a0)
.L0da62310:
    # Line 205
    li	$at,64
    subu	$a2,$at,$a2
    sra	$a2,$a2,0x2
    blez	$a2,.L0da6236c
    lui	$a4,0x4
    move	$a3,$a2
    andi	$a1,$a2,0x3
    beqz	$a1,.L0da62344
    ori	$a4,$a4,0x277c
.L0da62334:
    addiu	$a2,$a2,-1
    addi	$a1,$a1,-1
    bnez	$a1,.L0da62334
    # Line 206
    sw	$zero,0($a4)
.L0da62344:
    sra	$at,$a3,0x2
    beqz	$at,.L0da6236c
    move	$a5,$a2
    move	$a1,$a5
.L0da62354:
    # Line 205
    addiu	$a1,$a1,-4
    # Line 206
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    sw	$zero,0($a4)
    # Line 205
    bnez	$a1,.L0da62354
    # Line 206
    sw	$zero,0($a4)
.L0da6236c:
    # Line 209
    jr	$ra
    nop
.end __glExpSwapToPipe1

# Function: __glExpSwapAndCopy1
# Declared: Line 211 (Source lines: 212-223)
# Address: 0x0da62374 - 0x0da62440 (Size: 204 bytes, Frame: 0)
.globl __glExpSwapAndCopy1
.ent __glExpSwapAndCopy1
__glExpSwapAndCopy1:
    # Line 212
    slti	$at,$a2,4
    bnez	$at,.L0da62438
    sra	$a4,$a2,0x1
    srl	$a4,$a4,0x1e
    addu	$a4,$a4,$a2
    sra	$a4,$a4,0x2
    andi	$v0,$a4,0x1
    beqz	$v0,.L0da623c8
    move	$a6,$a2
    # Line 221
    addiu	$a1,$a1,4
    # Line 214
    lw	$at,0($a0)
    # Line 220
    addiu	$a0,$a0,4
    # Line 219
    addiu	$a2,$a2,-4
    # Line 215
    sb	$at,-4($a1)
    # Line 218
    srl	$v1,$at,0x18
    # Line 217
    srl	$v0,$at,0x10
    # Line 216
    srl	$at,$at,0x8
    # Line 218
    sb	$v1,-1($a1)
    # Line 217
    sb	$v0,-2($a1)
    # Line 216
    sb	$at,-3($a1)
    move	$a6,$a2
.L0da623c8:
    sra	$a3,$a4,0x1
    move	$a5,$a1
    beqz	$a3,.L0da62438
    move	$a7,$a0
    move	$a2,$a5
    move	$a0,$a6
    move	$a1,$a7
.L0da623e4:
    # Line 214
    lw	$at,0($a1)
    # Line 221
    addiu	$a2,$a2,8
    # Line 215
    sb	$at,-8($a2)
    # Line 216
    srl	$v1,$at,0x8
    sb	$v1,-7($a2)
    # Line 217
    srl	$v0,$at,0x10
    sb	$v0,-6($a2)
    # Line 218
    srl	$at,$at,0x18
    sb	$at,-5($a2)
    # Line 220
    addiu	$a1,$a1,8
    # Line 214
    lw	$at,-4($a1)
    # Line 219
    addiu	$a0,$a0,-8
    # Line 221
    slti	$v0,$a0,4
    # Line 215
    sb	$at,-4($a2)
    # Line 218
    srl	$a3,$at,0x18
    sb	$a3,-1($a2)
    # Line 217
    srl	$v1,$at,0x10
    sb	$v1,-2($a2)
    # Line 216
    srl	$at,$at,0x8
    # Line 221
    beqz	$v0,.L0da623e4
    # Line 216
    sb	$at,-3($a2)
.L0da62438:
    # Line 223
    jr	$ra
    nop
.end __glExpSwapAndCopy1

# Function: __glExpSwapStuffAndCopy1
# Declared: Line 225 (Source lines: 226-237)
# Address: 0x0da62440 - 0x0da62504 (Size: 196 bytes, Frame: 0)
.globl __glExpSwapStuffAndCopy1
.ent __glExpSwapStuffAndCopy1
__glExpSwapStuffAndCopy1:
    # Line 226
    slti	$at,$a2,4
    bnez	$at,.L0da624fc
    li	$a4,255
    sra	$a5,$a2,0x1
    srl	$a5,$a5,0x1e
    addu	$a5,$a5,$a2
    sra	$a5,$a5,0x2
    andi	$v0,$a5,0x1
    beqz	$v0,.L0da62494
    move	$t0,$a2
    # Line 235
    addiu	$a1,$a1,4
    # Line 234
    addiu	$a0,$a0,4
    # Line 228
    lw	$at,-4($a0)
    # Line 233
    addiu	$a2,$a2,-4
    # Line 232
    sb	$a4,-1($a1)
    # Line 229
    sb	$at,-4($a1)
    # Line 231
    srl	$v0,$at,0x10
    # Line 230
    srl	$at,$at,0x8
    # Line 231
    sb	$v0,-2($a1)
    # Line 230
    sb	$at,-3($a1)
    move	$t0,$a2
.L0da62494:
    sra	$v1,$a5,0x1
    move	$a7,$a1
    beqz	$v1,.L0da624fc
    move	$a6,$a0
    move	$a2,$a7
    move	$a0,$t0
    move	$a1,$a6
.L0da624b0:
    # Line 228
    lw	$v1,0($a1)
    # Line 235
    addiu	$a2,$a2,8
    # Line 234
    addiu	$a1,$a1,8
    # Line 229
    sb	$v1,-8($a2)
    # Line 230
    srl	$a3,$v1,0x8
    sb	$a3,-7($a2)
    # Line 231
    srl	$v1,$v1,0x10
    sb	$v1,-6($a2)
    # Line 232
    sb	$a4,-5($a2)
    # Line 233
    addiu	$a0,$a0,-8
    # Line 228
    lw	$a3,-4($a1)
    # Line 235
    slti	$at,$a0,4
    # Line 232
    sb	$a4,-1($a2)
    # Line 229
    sb	$a3,-4($a2)
    # Line 231
    srl	$v0,$a3,0x10
    sb	$v0,-2($a2)
    # Line 230
    srl	$a3,$a3,0x8
    # Line 235
    beqz	$at,.L0da624b0
    # Line 230
    sb	$a3,-3($a2)
.L0da624fc:
    # Line 237
    jr	$ra
    nop
.end __glExpSwapStuffAndCopy1

# Function: __glExpCopyFromPipe1
# Declared: Line 239 (Source lines: 240-259)
# Address: 0x0da62504 - 0x0da62620 (Size: 284 bytes, Frame: 0)
.globl __glExpCopyFromPipe1
.ent __glExpCopyFromPipe1
__glExpCopyFromPipe1:
    # Line 240
    slti	$at,$a2,4
    bnez	$at,.L0da625d4
    sra	$a4,$a2,0x1
    srl	$a4,$a4,0x1e
    addu	$a4,$a4,$a2
    sra	$a4,$a4,0x2
    andi	$v0,$a4,0x1
    beqz	$v0,.L0da62558
    move	$t1,$a2
    # Line 249
    addiu	$a1,$a1,4
    # Line 242
    lw	$at,0($a0)
    # Line 248
    addiu	$a0,$a0,4
    # Line 247
    addiu	$a2,$a2,-4
    # Line 246
    sb	$at,-1($a1)
    # Line 245
    srl	$v1,$at,0x8
    # Line 244
    srl	$v0,$at,0x10
    # Line 243
    srl	$at,$at,0x18
    # Line 245
    sb	$v1,-2($a1)
    # Line 244
    sb	$v0,-3($a1)
    # Line 243
    sb	$at,-4($a1)
    move	$t1,$a2
.L0da62558:
    move	$a7,$a0
    move	$t0,$a1
    sra	$a3,$a4,0x1
    beqz	$a3,.L0da625d4
    move	$a4,$t0
    move	$a5,$t1
    move	$a6,$a7
.L0da62574:
    # Line 242
    lw	$at,0($a6)
    # Line 249
    addiu	$a4,$a4,8
    # Line 243
    srl	$a3,$at,0x18
    sb	$a3,-8($a4)
    # Line 244
    srl	$v1,$at,0x10
    sb	$v1,-7($a4)
    # Line 245
    srl	$v0,$at,0x8
    sb	$v0,-6($a4)
    # Line 246
    sb	$at,-5($a4)
    # Line 248
    addiu	$a6,$a6,8
    # Line 242
    lw	$at,-4($a6)
    # Line 247
    addiu	$a5,$a5,-8
    # Line 249
    slti	$v0,$a5,4
    # Line 246
    sb	$at,-1($a4)
    # Line 245
    srl	$a3,$at,0x8
    sb	$a3,-2($a4)
    # Line 244
    srl	$v1,$at,0x10
    sb	$v1,-3($a4)
    # Line 243
    srl	$at,$at,0x18
    # Line 249
    beqz	$v0,.L0da62574
    # Line 243
    sb	$at,-4($a4)
    move	$a2,$a5
    move	$a0,$a6
    move	$a1,$a4
.L0da625d4:
    # Line 253
    li	$v0,1
    # Line 249
    blez	$a2,.L0da625fc
    # Line 253
    li	$at,2
    li	$a4,3
    beq	$a2,$a4,.L0da62604
    # Line 252
    lw	$a4,0($a0)
    # Line 253
    beq	$a2,$at,.L0da62610
    # Line 255
    srl	$a3,$a4,0x10
    # Line 253
    beq	$a2,$v0,.L0da62618
    # Line 256
    srl	$at,$a4,0x18
.L0da625fc:
    # Line 259
    jr	$ra
    nop
.L0da62604:
    # Line 254
    srl	$v1,$a4,0x8
    sb	$v1,2($a1)
    # Line 255
    srl	$a3,$a4,0x10
.L0da62610:
    sb	$a3,1($a1)
    # Line 256
    srl	$at,$a4,0x18
.L0da62618:
    # Line 259
    jr	$ra
    # Line 256
    sb	$at,0($a1)
.end __glExpCopyFromPipe1

# Function: __glExpDrawPixelsUnpack4
# Declared: Line 263 (Source lines: 264-353)
# Address: 0x0da62620 - 0x0da628a0 (Size: 640 bytes, Frame: 192)
.globl __glExpDrawPixelsUnpack4
.ent __glExpDrawPixelsUnpack4
__glExpDrawPixelsUnpack4:
    # Line 264
    li	$v0,6408
    addiu	$sp,$sp,-192
    sd	$a0,24($sp)
    # sd	gp,96(sp)
    lw	$at,24($a1)
    lui	$v1,0x19
    addiu	$v1,$v1,21064
    beq	$at,$v0,.L0da62894
    nop
    # Line 280
    la	$a3,__glExpCopyToPipe4
    sd	$a3,16($sp)
.L0da6264c:
    sd	$s8,8($sp)
    # Line 287
    lw	$a0,76($a1)
    # Line 284
    lw	$v0,4($a1)
    # Line 286
    lw	$v1,12($a1)
    # Line 288
    lw	$at,16($a1)
    # Line 289
    lw	$a2,20($a1)
    sd	$v1,120($sp)
    sd	$at,112($sp)
    sd	$a2,152($sp)
    # Line 285
    lw	$a2,8($a1)
    sd	$v0,104($sp)
    sd	$a0,144($sp)
    # Line 289
    bltz	$at,.L0da62854
    # Line 283
    lw	$a0,0($a1)
    # Line 295
    ld	$a3,152($sp)
    bltz	$a3,.L0da6286c
    move	$s8,$zero
.L0da62690:
    sd	$s7,0($sp)
    # Line 303
    li	$at,1
    sd	$at,168($sp)
.L0da6269c:
    sd	$s2,32($sp)
    sd	$s3,72($sp)
    sd	$s6,40($sp)
    sd	$ra,48($sp)
    ld	$s7,112($sp)
    sd	$s4,80($sp)
    sd	$s0,56($sp)
    # Line 307
    mtc1	$s7,$f1
    sd	$s1,64($sp)
    sd	$s5,88($sp)
    cvt.s.w	$f1,$f1
    # Line 310
    move	$a3,$a2
    # Line 308
    lwc1	$f0,_lit_3f800000
    # Line 306
    lui	$v1,0x4
    ori	$v1,$v1,0x22ec
    sw	$zero,0($v1)
    # Line 307
    swc1	$f1,0($v1)
    # Line 308
    swc1	$f0,0($v1)
    sd	$a2,136($sp)
    # Line 314
    lw	$v0,88($a1)
    # Line 313
    move	$s7,$a0
    # Line 314
    blez	$a2,.L0da62820
    sd	$v0,128($sp)
    sd	$s2,32($sp)
    sd	$s6,40($sp)
    sd	$ra,48($sp)
    sd	$s0,56($sp)
    sd	$s1,64($sp)
    lui	$s5,0x4
    lui	$s3,0x4
    lui	$s4,0x4
    ori	$s4,$s4,0x22cc
    ori	$s3,$s3,0x277c
    b	.L0da6274c
    ori	$s5,$s5,0x22c8
.L0da62728:
    # Line 344
    beqz	$s8,.L0da6280c
.L0da6272c:
    # Line 350
    ld	$v0,128($sp)
    ld	$at,136($sp)
    sll	$v1,$s1,0x2
    addu	$v0,$v1,$v0
    # Line 351
    subu	$at,$at,$s1
    sd	$at,136($sp)
    blez	$at,.L0da62820
    sd	$v0,128($sp)
.L0da6274c:
    ld	$a3,136($sp)
    # Line 314
    slti	$a3,$a3,48
    beqz	$a3,.L0da62760
    # Line 316
    li	$s1,48
    ld	$s1,136($sp)
.L0da62760:
    lui	$at,0x4
    ori	$at,$at,0x22c4
    # Line 318
    ld	$v0,120($sp)
    # Line 320
    sw	$zero,0($at)
    beqz	$s8,.L0da6278c
    sd	$v0,160($sp)
    ld	$v1,112($sp)
    # Line 323
    mult	$s1,$v1
    mflo	$v0
    nop
    subu	$s7,$s7,$v0
.L0da6278c:
    # Line 326
    ld	$a3,120($sp)
    ld	$s2,104($sp)
    blez	$a3,.L0da62728
    ld	$s6,128($sp)
    b	.L0da627c0
    ld	$v1,152($sp)
.L0da627a4:
    # Line 344
    ld	$v0,144($sp)
.L0da627a8:
    ld	$at,160($sp)
    addu	$s6,$v0,$s6
    # Line 343
    addiu	$at,$at,-1
    # Line 344
    beqz	$at,.L0da62728
    sd	$at,160($sp)
    ld	$v1,152($sp)
.L0da627c0:
    # Line 328
    blez	$v1,.L0da627a4
    move	$s0,$v1
.L0da627c8:
    # Line 331
    ld	$t9,16($sp)
    ld	$a0,24($sp)
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s1
    # Line 340
    addiu	$s0,$s0,-1
    # Line 341
    ld	$a3,168($sp)
    # Line 333
    sw	$s7,0($s5)
    # Line 334
    sw	$s2,0($s3)
    # Line 341
    addu	$s2,$a3,$s2
    # Line 335
    sw	$s1,0($s3)
    # Line 336
    sw	$s1,0($s3)
    # Line 337
    sw	$s8,0($s3)
    # Line 341
    bnez	$s0,.L0da627c8
    # Line 338
    sw	$zero,0($s4)
    b	.L0da627a8
    # Line 344
    ld	$v0,144($sp)
.L0da6280c:
    ld	$v0,112($sp)
    # Line 348
    mult	$s1,$v0
    mflo	$at
    b	.L0da6272c
    addu	$s7,$at,$s7
.L0da62820:
    # ld	gp,96(sp)
    # Line 353
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,32($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s6,40($sp)
    ld	$ra,48($sp)
    ld	$s7,0($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da62854:
    # Line 292
    ld	$a3,112($sp)
    # Line 295
    ld	$v1,152($sp)
    # Line 293
    li	$s8,1
    # Line 292
    negu	$a3,$a3
    # Line 295
    bgez	$v1,.L0da62690
    sd	$a3,112($sp)
.L0da6286c:
    sd	$s7,0($sp)
    # Line 301
    li	$v1,-1
    # Line 299
    ld	$at,152($sp)
    # Line 300
    ld	$v0,104($sp)
    sd	$v1,168($sp)
    # Line 299
    negu	$at,$at
    # Line 300
    addiu	$v0,$v0,-1
    sd	$v0,104($sp)
    # Line 301
    b	.L0da6269c
    sd	$at,152($sp)
.L0da62894:
    # Line 278
    la	$a3,__glExpSwapToPipe4
    b	.L0da6264c
    sd	$a3,16($sp)
.end __glExpDrawPixelsUnpack4

# Function: __glExpDrawPixelsUnpack1
# Declared: Line 355 (Source lines: 356-451)
# Address: 0x0da628a0 - 0x0da62b88 (Size: 744 bytes, Frame: 224)
.globl __glExpDrawPixelsUnpack1
.ent __glExpDrawPixelsUnpack1
__glExpDrawPixelsUnpack1:
    # Line 356
    li	$v0,6408
    addiu	$sp,$sp,-224
    sd	$a0,0($sp)
    # sd	gp,96(sp)
    lw	$at,24($a1)
    lui	$v1,0x19
    addiu	$v1,$v1,20424
    beq	$at,$v0,.L0da62b7c
    nop
    # Line 373
    la	$a3,__glExpCopyToPipe1
    sd	$a3,8($sp)
.L0da628cc:
    sd	$s8,88($sp)
    # Line 376
    lw	$a4,0($a1)
    # Line 377
    lw	$v0,4($a1)
    # Line 381
    lw	$a0,76($a1)
    # Line 383
    lw	$a2,20($a1)
    # Line 382
    lw	$at,16($a1)
    # Line 379
    lw	$v1,12($a1)
    sd	$a2,168($sp)
    # Line 380
    lw	$a2,72($a1)
    sd	$v1,128($sp)
    sd	$at,112($sp)
    sd	$a0,160($sp)
    # Line 378
    lw	$a0,8($a1)
    # Line 383
    bltz	$at,.L0da62b40
    sd	$v0,104($sp)
    # Line 389
    ld	$a3,168($sp)
    bltz	$a3,.L0da62b58
    move	$s8,$zero
.L0da62914:
    # Line 397
    li	$at,1
    sd	$at,184($sp)
.L0da6291c:
    sd	$s2,64($sp)
    sd	$s3,72($sp)
    sd	$s6,16($sp)
    sd	$ra,24($sp)
    sd	$s4,80($sp)
    sd	$s0,32($sp)
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    ld	$v1,112($sp)
    sd	$s7,56($sp)
    sd	$a4,200($sp)
    # Line 401
    mtc1	$v1,$f1
    # Line 407
    move	$at,$a0
    sd	$a0,152($sp)
    # Line 401
    cvt.s.w	$f1,$f1
    # Line 404
    move	$a3,$a2
    # Line 402
    lwc1	$f0,_lit_3f800000
    # Line 400
    lui	$v1,0x4
    ori	$v1,$v1,0x22ec
    sw	$zero,0($v1)
    # Line 401
    swc1	$f1,0($v1)
    # Line 402
    swc1	$f0,0($v1)
    # Line 410
    move	$v0,$a4
    # Line 411
    lw	$v0,88($a1)
    sd	$a2,144($sp)
    blez	$a2,.L0da62b0c
    sd	$v0,136($sp)
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x6
    div	$zero,$at,$a2
    sd	$s6,16($sp)
    sd	$ra,24($sp)
    sd	$s0,32($sp)
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    sd	$s7,56($sp)
    teq	$a2,$zero,0x7
    lui	$s3,0x4
    lui	$s2,0x4
    lui	$s4,0x4
    ori	$s4,$s4,0x22cc
    ori	$s2,$s2,0x277c
    ori	$s3,$s3,0x22c8
    mflo	$a3
    b	.L0da62a04
    sd	$a3,120($sp)
.L0da629d8:
    # Line 441
    beqz	$s8,.L0da62af0
.L0da629dc:
    # Line 447
    ld	$v1,136($sp)
    # Line 449
    ld	$v0,144($sp)
    ld	$a3,152($sp)
    # Line 447
    addu	$v1,$s7,$v1
    # Line 449
    subu	$v0,$v0,$s7
    # Line 448
    subu	$a3,$a3,$s6
    sd	$a3,152($sp)
    sd	$v0,144($sp)
    # Line 449
    blez	$v0,.L0da62b0c
    sd	$v1,136($sp)
.L0da62a04:
    ld	$at,144($sp)
    # Line 411
    slti	$at,$at,192
    beqz	$at,.L0da62a18
    # Line 413
    li	$s7,192
    ld	$s7,144($sp)
.L0da62a18:
    ld	$v1,120($sp)
    ld	$v0,152($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0da62a30
    ld	$s6,120($sp)
    ld	$s6,152($sp)
.L0da62a30:
    lui	$a3,0x4
    ori	$a3,$a3,0x22c4
    # Line 415
    ld	$at,128($sp)
    # Line 417
    sw	$zero,0($a3)
    beqz	$s8,.L0da62a60
    sd	$at,176($sp)
    ld	$v1,112($sp)
    # Line 420
    mult	$s6,$v1
    ld	$at,200($sp)
    mflo	$v0
    subu	$at,$at,$v0
    sd	$at,200($sp)
.L0da62a60:
    # Line 423
    ld	$a3,128($sp)
    ld	$s1,104($sp)
    blez	$a3,.L0da629d8
    ld	$s5,136($sp)
    addiu	$at,$s7,3
    sra	$at,$at,0x2
    b	.L0da62a98
    sd	$at,192($sp)
.L0da62a80:
    # Line 441
    ld	$v1,160($sp)
.L0da62a84:
    ld	$v0,176($sp)
    addu	$s5,$v1,$s5
    # Line 440
    addiu	$v0,$v0,-1
    # Line 441
    beqz	$v0,.L0da629d8
    sd	$v0,176($sp)
.L0da62a98:
    ld	$a3,168($sp)
    # Line 425
    blez	$a3,.L0da62a80
    move	$s0,$a3
.L0da62aa4:
    # Line 428
    ld	$t9,8($sp)
    ld	$a0,0($sp)
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s7
    # Line 437
    addiu	$s0,$s0,-1
    # Line 430
    ld	$v1,200($sp)
    # Line 438
    ld	$v0,184($sp)
    # Line 433
    ld	$at,192($sp)
    # Line 430
    sw	$v1,0($s3)
    # Line 431
    sw	$s1,0($s2)
    # Line 438
    addu	$s1,$v0,$s1
    # Line 432
    sw	$s6,0($s2)
    # Line 433
    sw	$at,0($s2)
    # Line 434
    sw	$s8,0($s2)
    # Line 438
    bnez	$s0,.L0da62aa4
    # Line 435
    sw	$zero,0($s4)
    b	.L0da62a84
    # Line 441
    ld	$v1,160($sp)
.L0da62af0:
    ld	$v0,112($sp)
    # Line 445
    mult	$s6,$v0
    ld	$a3,200($sp)
    mflo	$at
    addu	$a3,$at,$a3
    b	.L0da629dc
    sd	$a3,200($sp)
.L0da62b0c:
    # ld	gp,96(sp)
    # Line 451
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    ld	$ra,24($sp)
    ld	$s7,56($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da62b40:
    # Line 386
    ld	$a3,112($sp)
    # Line 389
    ld	$v1,168($sp)
    # Line 387
    li	$s8,1
    # Line 386
    negu	$a3,$a3
    # Line 389
    bgez	$v1,.L0da62914
    sd	$a3,112($sp)
.L0da62b58:
    # Line 395
    li	$v1,-1
    # Line 393
    ld	$at,168($sp)
    # Line 394
    ld	$v0,104($sp)
    sd	$v1,184($sp)
    # Line 393
    negu	$at,$at
    # Line 394
    addiu	$v0,$v0,-1
    sd	$v0,104($sp)
    # Line 395
    b	.L0da6291c
    sd	$at,168($sp)
.L0da62b7c:
    # Line 371
    la	$a3,__glExpSwapToPipe1
    b	.L0da628cc
    sd	$a3,8($sp)
.end __glExpDrawPixelsUnpack1

# Function: __glExpDrawPixelsKDMA
# Declared: Line 466 (Source lines: 467-562)
# Address: 0x0da62b88 - 0x0da62e44 (Size: 700 bytes, Frame: 160)
.globl __glExpDrawPixelsKDMA
.ent __glExpDrawPixelsKDMA
__glExpDrawPixelsKDMA:
    # Line 486
    lw	$a4,16($a1)
    # Line 484
    lw	$a5,72($a1)
    # Line 483
    lw	$a3,12($a1)
    # Line 482
    lw	$t0,8($a1)
    # Line 481
    lw	$a7,4($a1)
    # Line 480
    lw	$a6,0($a1)
    # Line 489
    li	$v1,1
    # Line 467
    addiu	$sp,$sp,-160
    sd	$s6,136($sp)
    # Line 485
    lw	$s6,76($a1)
    # sd	gp,128(sp)
    # Line 467
    lui	$v0,0x19
    addiu	$v0,$v0,19680
    # addu	gp,t9,v0
    sd	$a0,112($sp)
    sd	$s5,120($sp)
    # Line 487
    lw	$s5,20($a1)
    # Line 489
    lui	$a0,0x4
    ori	$a0,$a0,0x22f0
    # Line 491
    slti	$at,$s5,-1
    bnez	$at,.L0da62bec
    # Line 489
    sw	$v1,0($a0)
    # Line 491
    slti	$a2,$s5,2
    bnez	$a2,.L0da62da4
    # Line 496
    li	$a0,1
.L0da62bec:
    # Line 492
    li	$at,184
    # Line 493
    li	$a0,17
    sh	$a0,20($sp)
    # Line 492
    sw	$at,0($sp)
.L0da62bfc:
    # Line 496
    bltzl	$a4,.L0da62dc0
    # Line 501
    negu	$a4,$a4
    # Line 502
    bltzl	$s5,.L0da62de0
    # Line 507
    negu	$s5,$s5
.L0da62c0c:
    # Line 512
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 513
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 517
    sra	$a2,$s6,0x2
    # Line 511
    lui	$v0,0x4
    ori	$v0,$v0,0x22ec
    sw	$zero,0($v0)
    # Line 512
    swc1	$f1,0($v0)
    # Line 513
    swc1	$f0,0($v0)
    beq	$a5,$s6,.L0da62c5c
    lhu	$a0,20($sp)
    sd	$s1,104($sp)
    # Line 517
    sw	$a2,24($sp)
    # Line 516
    ori	$a0,$a0,0x2
    andi	$a0,$a0,0xffff
    # Line 517
    b	.L0da62c64
    # Line 516
    sh	$a0,20($sp)
.L0da62c5c:
    sd	$s1,104($sp)
    # Line 519
    sw	$zero,24($sp)
.L0da62c64:
    # Line 527
    move	$s1,$a3
    # Line 525
    sw	$s5,28($sp)
    # Line 523
    sw	$t0,8($sp)
    # Line 522
    sw	$a6,4($sp)
    sd	$s2,88($sp)
    sd	$s4,72($sp)
    # Line 535
    move	$s4,$zero
    # Line 524
    sra	$v0,$a5,0x2
    # Line 527
    andi	$at,$a0,0x4
    beqz	$at,.L0da62db4
    # Line 524
    sw	$v0,36($sp)
    # Line 532
    li	$s4,1
    # Line 531
    mult	$a3,$s5
    sd	$s3,96($sp)
    mflo	$s2
    nop
    addu	$s2,$s2,$a7
.L0da62ca8:
    sd	$ra,80($sp)
    sd	$s0,48($sp)
    sd	$s7,56($sp)
    sd	$s8,64($sp)
    # Line 537
    blez	$a3,.L0da62d70
    lw	$s3,88($a1)
    lui	$s8,0x2
    div	$zero,$s8,$s6
    li	$a0,-1
    sd	$ra,80($sp)
    sd	$s0,48($sp)
    sd	$s7,56($sp)
    mflo	$s8
    b	.L0da62d4c
    teq	$s6,$zero,0x7
.L0da62ce4:
    # Line 539
    move	$s0,$s8
.L0da62ce8:
    beqz	$s4,.L0da62d00
    nop
    # Line 543
    mult	$s0,$s5
    mflo	$at
    nop
    subu	$s2,$s2,$at
.L0da62d00:
    # Line 549
    mult	$s0,$s6
    # Line 551
    addiu	$a2,$sp,0
    li	$a1,15010
    # Line 548
    sw	$s0,16($sp)
    # Line 547
    sw	$s2,12($sp)
    # Line 546
    sw	$s3,40($sp)
    # Line 551
    ld	$a0,112($sp)
    # lw $t9, -32412($gp) # &__glExpIoctl
    # Line 549
    mflo	$s7
    sw	$s7,32($sp)
    # Line 551
    jal	__glExpIoctl
    lw	$a0,31504($a0)
    li	$a0,-1
    beq	$v0,$a0,.L0da62df8
    # Line 559
    addu	$s3,$s7,$s3
    # Line 553
    beqz	$s4,.L0da62d60
    nop
.L0da62d44:
    # Line 560
    subu	$s1,$s1,$s0
    blez	$s1,.L0da62d70
.L0da62d4c:
    # Line 537
    slt	$a2,$s1,$s8
    beqz	$a2,.L0da62ce4
    # Line 539
    move	$s0,$s1
    b	.L0da62ce8
    nop
.L0da62d60:
    # Line 557
    mult	$s0,$s5
    mflo	$at
    b	.L0da62d44
    addu	$s2,$at,$s2
.L0da62d70:
    # ld	gp,128(sp)
    # Line 562
    ld	$s0,48($sp)
    ld	$s1,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,120($sp)
    ld	$s6,136($sp)
    ld	$ra,80($sp)
    ld	$s7,56($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da62da4:
    # Line 496
    sh	$a0,20($sp)
    # Line 495
    li	$v0,181
    b	.L0da62bfc
    sw	$v0,0($sp)
.L0da62db4:
    # Line 534
    move	$s2,$a7
    b	.L0da62ca8
    sd	$s3,96($sp)
.L0da62dc0:
    # Line 502
    mult	$t0,$a4
    # Line 500
    ori	$a0,$a0,0x8
    andi	$a0,$a0,0xffff
    sh	$a0,20($sp)
    # Line 502
    mflo	$v1
    bgez	$s5,.L0da62c0c
    subu	$a6,$a6,$v1
    # Line 507
    negu	$s5,$s5
.L0da62de0:
    # Line 508
    mult	$a3,$s5
    # Line 506
    ori	$at,$a0,0x4
    sh	$at,20($sp)
    # Line 508
    mflo	$a2
    b	.L0da62c0c
    subu	$a7,$a7,$a2
.L0da62df8:
    ld	$t9,112($sp)
    # Line 552
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,sub_0db30000
    jalr	$t9
    addiu	$a1,$a1,-21320
    # ld	gp,128(sp)
    # Line 553
    ld	$s0,48($sp)
    ld	$s1,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,120($sp)
    ld	$s6,136($sp)
    ld	$ra,80($sp)
    ld	$s7,56($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glExpDrawPixelsKDMA

# Function: __glExpReadPixelsPack1
# Declared: Line 679 (Source lines: 680-748)
# Address: 0x0da62e44 - 0x0da63040 (Size: 508 bytes, Frame: 160)
.globl __glExpReadPixelsPack1
.ent __glExpReadPixelsPack1
__glExpReadPixelsPack1:
    # Line 680
    li	$v0,6408
    addiu	$sp,$sp,-160
    sd	$s0,40($sp)
    sd	$s1,32($sp)
    sd	$s2,80($sp)
    sd	$s3,72($sp)
    sd	$s4,48($sp)
    sd	$s5,24($sp)
    sd	$s6,64($sp)
    sd	$s7,16($sp)
    sd	$s8,8($sp)
    sd	$ra,56($sp)
    # sd	gp,88(sp)
    lw	$at,24($a1)
    lui	$v1,0x19
    addiu	$v1,$v1,18980
    beq	$at,$v0,.L0da63038
    nop
    # Line 696
    la	$s4,__glExpCopyFromPipe1
.L0da62e90:
    # Line 710
    lwc1	$f0,_lit_3f800000
    # Line 709
    lui	$a3,0x4
    ori	$a3,$a3,0x22ec
    # Line 706
    lui	$s1,0x4
    ori	$s1,$s1,0x22f0
    # Line 700
    lw	$s5,4($a1)
    # Line 699
    lw	$s7,0($a1)
    # Line 701
    lw	$s3,8($a1)
    sd	$s5,128($sp)
    # Line 704
    lw	$s5,76($a1)
    sd	$s3,104($sp)
    # Line 703
    lw	$s3,72($a1)
    sd	$s7,112($sp)
    # Line 702
    lw	$s7,12($a1)
    # Line 706
    sw	$zero,0($s1)
    # Line 709
    sw	$zero,0($a3)
    # Line 710
    swc1	$f0,0($a3)
    # Line 711
    swc1	$f0,0($a3)
    # Line 719
    blez	$s7,.L0da63004
    lw	$s1,88($a1)
    li	$v0,1400
    addiu	$s6,$s3,3
    sra	$at,$s6,0x2
    div	$zero,$v0,$at
    lui	$s8,0x6
    ori	$s8,$s8,0xc040
    sd	$at,96($sp)
    teq	$at,$zero,0x7
    mflo	$v0
    b	.L0da62f5c
    sd	$v0,120($sp)
.L0da62f0c:
    # Line 736
    blez	$a0,.L0da62f40
    ori	$s0,$s0,0x2088
.L0da62f14:
    # Line 738
    move	$a0,$s0
    move	$a2,$s3
    move	$a1,$s1
    # Line 740
    addiu	$s2,$s2,-1
    # Line 738
    jalr	$s4
    move	$t9,$s4
    # Line 742
    addu	$s1,$s5,$s1
    # Line 741
    sra	$at,$s6,0x2
    sll	$at,$at,0x2
    # Line 742
    bnez	$s2,.L0da62f14
    # Line 741
    addu	$s0,$at,$s0
.L0da62f40:
    lui	$v0,0x4
    ori	$v0,$v0,0x22f4
    lui	$v1,0x6
    ori	$v1,$v1,0xd000
    # Line 745
    sw	$zero,0($v1)
    # Line 746
    blez	$s7,.L0da63004
    sw	$zero,0($v0)
.L0da62f5c:
    ld	$v1,120($sp)
    # Line 719
    slt	$v1,$s7,$v1
    beqz	$v1,.L0da62f70
    ld	$a0,120($sp)
    # Line 721
    move	$a0,$s7
.L0da62f70:
    move	$s2,$a0
    # Line 732
    subu	$s7,$s7,$a0
    lui	$a3,0x4
    ori	$a3,$a3,0x277c
    # Line 724
    ld	$v1,128($sp)
    # Line 723
    ld	$at,112($sp)
    lui	$v0,0x4
    ori	$v0,$v0,0x22b4
    sw	$at,0($v0)
    # Line 724
    sw	$v1,0($a3)
    # Line 731
    addu	$v1,$a0,$v1
    # Line 725
    ld	$v0,104($sp)
    sd	$v1,128($sp)
    # Line 727
    ld	$at,96($sp)
    # Line 725
    sw	$v0,0($a3)
    # Line 726
    sw	$a0,0($a3)
    # Line 727
    sw	$at,0($a3)
    # Line 728
    sw	$zero,0($a3)
    # Line 729
    sw	$zero,0($a3)
.L0da62fbc:
    # Line 734
    lw	$v1,0($s8)
    andi	$v1,$v1,0x1
    bnez	$v1,.L0da62f0c
    lui	$s0,0x1
    sw	$zero,0($sp)
    lw	$a3,0($sp)
    slti	$a3,$a3,10
    beqz	$a3,.L0da62fbc
    nop
.L0da62fe0:
    lw	$v0,0($sp)
    addiu	$v0,$v0,1
    sw	$v0,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da62fe0
    nop
    b	.L0da62fbc
    nop
.L0da63004:
    # ld	gp,88(sp)
    # Line 748
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$s6,64($sp)
    ld	$ra,56($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da63038:
    # Line 694
    b	.L0da62e90
    la	$s4,__glExpSwapStuffAndCopy1
.end __glExpReadPixelsPack1

# Function: __glExpReadPixelsKDMA
# Declared: Line 764 (Source lines: 765-843)
# Address: 0x0da63040 - 0x0da63280 (Size: 576 bytes, Frame: 160)
.globl __glExpReadPixelsKDMA
.ent __glExpReadPixelsKDMA
__glExpReadPixelsKDMA:
    # Line 765
    addiu	$sp,$sp,-160
    sd	$a0,72($sp)
    sd	$s5,120($sp)
    move	$s5,$a1
    # Line 780
    lw	$a4,72($a1)
    # Line 779
    lw	$a7,12($a1)
    # Line 778
    lw	$a6,8($a1)
    # Line 777
    lw	$a5,4($a1)
    # Line 776
    lw	$a3,0($a1)
    # Line 789
    lui	$at,0x4
    ori	$at,$at,0x22ec
    # Line 783
    li	$t0,1
    sd	$s6,136($sp)
    # Line 781
    lw	$s6,76($a1)
    # Line 783
    lui	$v1,0x4
    ori	$v1,$v1,0x22f0
    # sd	gp,128(sp)
    # Line 765
    lui	$v0,0x19
    addiu	$v0,$v0,18472
    # addu	gp,t9,v0
    # Line 785
    li	$v0,172
    # Line 783
    sw	$t0,0($v1)
    # Line 786
    sh	$zero,20($sp)
    # Line 790
    lwc1	$f0,_lit_3f800000
    # Line 785
    sw	$v0,0($sp)
    # Line 789
    sw	$zero,0($at)
    # Line 790
    swc1	$f0,0($at)
    # Line 791
    beq	$a4,$s6,.L0da630d8
    swc1	$f0,0($at)
    sd	$s2,112($sp)
    sd	$s0,64($sp)
    sd	$s1,56($sp)
    # Line 794
    lhu	$v1,20($sp)
    # Line 795
    sra	$a2,$s6,0x2
    sw	$a2,24($sp)
    # Line 794
    ori	$v1,$v1,0x2
    # Line 795
    b	.L0da630e8
    # Line 794
    sh	$v1,20($sp)
.L0da630d8:
    sd	$s2,112($sp)
    sd	$s0,64($sp)
    sd	$s1,56($sp)
    # Line 797
    sw	$zero,24($sp)
.L0da630e8:
    sd	$s3,80($sp)
    sd	$s7,96($sp)
    sd	$ra,88($sp)
    sd	$s8,104($sp)
    sd	$s4,48($sp)
    # Line 808
    move	$s1,$a5
    # Line 805
    move	$s0,$a7
    # Line 803
    sw	$t0,28($sp)
    # Line 801
    sw	$a6,8($sp)
    # Line 800
    sw	$a3,4($sp)
    # Line 802
    sra	$s2,$a4,0x2
    sw	$s2,36($sp)
    # Line 809
    blez	$a7,.L0da63200
    lw	$s2,88($s5)
    lui	$s7,0x2
    div	$zero,$s7,$s6
    sd	$s3,80($sp)
    sd	$ra,88($sp)
    sd	$s4,48($sp)
    li	$s8,0x8000
    li	$a0,-1
    mflo	$s7
    b	.L0da631a0
    teq	$s6,$zero,0x7
.L0da63148:
    # Line 811
    move	$s3,$s7
.L0da6314c:
    # Line 819
    mult	$s3,$s6
    # Line 821
    addiu	$a2,$sp,0
    li	$a1,15010
    # Line 818
    sw	$s3,16($sp)
    # Line 817
    sw	$s1,12($sp)
    # Line 816
    sw	$s2,40($sp)
    # Line 821
    ld	$a0,72($sp)
    # lw $t9, -32412($gp) # &__glExpIoctl
    # Line 819
    mflo	$s4
    sw	$s4,32($sp)
    # Line 821
    jal	__glExpIoctl
    lw	$a0,31504($a0)
    li	$v1,5121
    li	$a0,-1
    beq	$v0,$a0,.L0da63234
    # Line 840
    addu	$s1,$s3,$s1
    # Line 823
    lw	$a2,24($s5)
    beq	$a2,$s8,.L0da631b4
    # Line 841
    subu	$s0,$s0,$s3
.L0da63198:
    # Line 839
    addu	$s2,$s4,$s2
.L0da6319c:
    # Line 841
    blez	$s0,.L0da63200
.L0da631a0:
    # Line 809
    slt	$at,$s0,$s7
    beqz	$at,.L0da63148
    # Line 811
    move	$s3,$s0
    b	.L0da6314c
    nop
.L0da631b4:
    # Line 823
    lw	$v0,28($s5)
    # Line 831
    lw	$a2,32($sp)
    # Line 823
    bne	$v0,$v1,.L0da63198
    # Line 831
    lw	$a1,40($sp)
    addu	$a2,$a2,$a1
    sltu	$a2,$a1,$a2
    beqzl	$a2,.L0da6319c
    # Line 839
    addu	$s2,$s4,$s2
    li	$v1,255
.L0da631d8:
    # Line 835
    sb	$v1,0($a1)
    # Line 833
    lw	$v0,40($sp)
    lw	$at,32($sp)
    addiu	$a1,$a1,4
    addu	$at,$at,$v0
    sltu	$at,$a1,$at
    bnez	$at,.L0da631d8
    li	$v1,255
    b	.L0da6319c
    # Line 839
    addu	$s2,$s4,$s2
.L0da63200:
    # ld	gp,128(sp)
    # Line 843
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,112($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,120($sp)
    ld	$s6,136($sp)
    ld	$ra,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da63234:
    ld	$t9,72($sp)
    # Line 822
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,sub_0db30000
    jalr	$t9
    addiu	$a1,$a1,-21288
    # ld	gp,128(sp)
    # Line 823
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,112($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,120($sp)
    ld	$s6,136($sp)
    ld	$ra,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glExpReadPixelsKDMA

# Function: __glExpReadPixelsKDMARGBA
# Declared: Line 845 (Source lines: 846-917)
# Address: 0x0da63280 - 0x0da634ac (Size: 556 bytes, Frame: 176)
.globl __glExpReadPixelsKDMARGBA
.ent __glExpReadPixelsKDMARGBA
__glExpReadPixelsKDMARGBA:
    # Line 846
    addiu	$sp,$sp,-176
    sd	$s0,88($sp)
    sd	$s3,64($sp)
    sd	$s4,80($sp)
    # Line 859
    lw	$v1,8($a1)
    # Line 870
    lui	$a3,0x4
    ori	$a3,$a3,0x22ec
    # Line 864
    li	$v0,1
    sd	$s6,136($sp)
    # Line 866
    li	$s6,172
    sd	$s2,144($sp)
    # Line 862
    lw	$s2,76($a1)
    sd	$s7,112($sp)
    # Line 860
    lw	$s7,12($a1)
    sd	$s8,104($sp)
    # Line 858
    lw	$s8,4($a1)
    sd	$a0,56($sp)
    # Line 857
    lw	$a0,0($a1)
    # sd	gp,128(sp)
    sd	$s1,120($sp)
    # Line 846
    lui	$s1,0x19
    addiu	$s1,$s1,17896
    # addu	gp,t9,s1
    # Line 861
    lw	$s1,72($a1)
    # Line 864
    lui	$t9,0x4
    ori	$t9,$t9,0x22f0
    sw	$v0,0($t9)
    # Line 866
    sw	$s6,0($sp)
    # Line 877
    sra	$s6,$s1,0x2
    # Line 871
    lwc1	$f0,_lit_3f800000
    # Line 867
    sh	$zero,20($sp)
    # Line 870
    sw	$zero,0($a3)
    # Line 871
    swc1	$f0,0($a3)
    # Line 872
    swc1	$f0,0($a3)
    # Line 878
    sw	$v0,28($sp)
    # Line 877
    sw	$s6,36($sp)
    # Line 876
    sw	$v1,8($sp)
    # Line 875
    sw	$a0,4($sp)
    # Line 874
    sw	$zero,24($sp)
    sd	$s5,96($sp)
    # Line 884
    lw	$at,88($a1)
    sd	$ra,72($sp)
    blez	$s7,.L0da6342c
    sd	$at,48($sp)
    li	$v0,0x8000
    div	$zero,$v0,$s1
    sd	$s3,64($sp)
    sd	$ra,72($sp)
    sd	$s4,80($sp)
    sd	$s0,88($sp)
    sd	$s5,96($sp)
    teq	$s1,$zero,0x7
    mflo	$at
    b	.L0da633fc
    sd	$at,152($sp)
.L0da6335c:
    # Line 893
    mult	$s3,$s1
    # Line 895
    addiu	$a2,$sp,0
    # Line 890
    ld	$a0,56($sp)
    # Line 895
    li	$a1,15010
    # lw $t9, -32412($gp) # &__glExpIoctl
    # Line 890
    lw	$a3,31884($a0)
    # Line 892
    sw	$s3,16($sp)
    # Line 891
    sw	$s8,12($sp)
    # Line 890
    sw	$a3,40($sp)
    # Line 893
    mflo	$s0
    sw	$s0,32($sp)
    # Line 895
    jal	__glExpIoctl
    lw	$a0,31504($a0)
    li	$a4,-1
    beq	$v0,$a4,.L0da63460
    ld	$a0,56($sp)
    # Line 915
    subu	$s7,$s7,$s3
    # Line 897
    beq	$s1,$s2,.L0da63414
    lw	$a0,31884($a0)
    # Line 904
    move	$s5,$zero
    # Line 901
    move	$s4,$a0
    # Line 904
    blez	$s3,.L0da633e0
    # Line 902
    ld	$s0,48($sp)
    # Line 905
    move	$a1,$s0
.L0da633bc:
    # lw $t9, -23728($gp) # &__glExpSwapStuffAndCopy4
    # Line 904
    addiu	$s5,$s5,1
    # Line 905
    move	$a0,$s4
    jal	__glExpSwapStuffAndCopy4
    move	$a2,$s6
    # Line 906
    addu	$s4,$s1,$s4
    # Line 907
    addu	$s0,$s2,$s0
    # Line 904
    bne	$s3,$s5,.L0da633bc
    # Line 905
    move	$a1,$s0
.L0da633e0:
    # Line 913
    mult	$s3,$s2
    ld	$a3,48($sp)
    # Line 914
    addu	$s8,$s3,$s8
    # Line 913
    mflo	$at
    addu	$a3,$at,$a3
    # Line 915
    blez	$s7,.L0da6342c
    sd	$a3,48($sp)
.L0da633fc:
    ld	$v0,152($sp)
    # Line 884
    slt	$v0,$s7,$v0
    beqz	$v0,.L0da6335c
    ld	$s3,152($sp)
    # Line 886
    b	.L0da6335c
    move	$s3,$s7
.L0da63414:
    # Line 910
    # lw $t9, -23728($gp) # &__glExpSwapStuffAndCopy4
    ld	$a1,48($sp)
    jal	__glExpSwapStuffAndCopy4
    sra	$a2,$s0,0x2
    b	.L0da633e0
    nop
.L0da6342c:
    # ld	gp,128(sp)
    # Line 917
    ld	$s0,88($sp)
    ld	$s1,120($sp)
    ld	$s2,144($sp)
    ld	$s3,64($sp)
    ld	$s4,80($sp)
    ld	$s5,96($sp)
    ld	$s6,136($sp)
    ld	$ra,72($sp)
    ld	$s7,112($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da63460:
    ld	$t9,56($sp)
    # Line 896
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,sub_0db30000
    jalr	$t9
    addiu	$a1,$a1,-21288
    # ld	gp,128(sp)
    # Line 897
    ld	$s0,88($sp)
    ld	$s1,120($sp)
    ld	$s2,144($sp)
    ld	$s3,64($sp)
    ld	$s4,80($sp)
    ld	$s5,96($sp)
    ld	$s6,136($sp)
    ld	$ra,72($sp)
    ld	$s7,112($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glExpReadPixelsKDMARGBA

# Function: __glExpGetOrigin
# Declared: Line 923 (Source lines: 924-936)
# Address: 0x0da634ac - 0x0da63558 (Size: 172 bytes, Frame: 48)
.globl __glExpGetOrigin
.ent __glExpGetOrigin
__glExpGetOrigin:
    # Line 924
    addiu	$sp,$sp,-48
    # Line 929
    lui	$a3,0x6
    ori	$a3,$a3,0xc040
    lui	$at,0x4
    ori	$at,$at,0x228c
    # Line 928
    lui	$v0,0x4
    ori	$v0,$v0,0x2334
    sw	$zero,0($v0)
    b	.L0da634e8
    # Line 929
    sw	$zero,0($at)
.L0da634d4:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da63534
    nop
.L0da634e8:
    lw	$v0,0($a3)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da634d4
    # Line 935
    lui	$v1,0x4
    ori	$v1,$v1,0x22f4
    # Line 934
    lui	$a0,0x6
    # Line 931
    lui	$v0,0x1
    ori	$v0,$v0,0x2088
    lw	$v0,0($v0)
    # Line 934
    ori	$a0,$a0,0xd000
    # Line 932
    lui	$at,0x1
    # Line 931
    sw	$v0,0($a1)
    # Line 932
    ori	$a1,$at,0x208c
    lw	$a1,0($a1)
    # Line 936
    addiu	$sp,$sp,48
    # Line 934
    sw	$zero,0($a0)
    # Line 932
    sw	$a1,0($a2)
    # Line 936
    jr	$ra
    # Line 935
    sw	$zero,0($v1)
.L0da63534:
    # Line 929
    lw	$a0,0($sp)
    addiu	$a0,$a0,1
    sw	$a0,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da63534
    nop
    b	.L0da634e8
    nop
.end __glExpGetOrigin

# Function: __glExpClipPixels
# Declared: Line 938 (Source lines: 939-1033)
# Address: 0x0da63558 - 0x0da63914 (Size: 956 bytes, Frame: 48)
.globl __glExpClipPixels
.ent __glExpClipPixels
__glExpClipPixels:
    # Line 939
    addiu	$sp,$sp,-48
    # Line 944
    addiu	$a2,$sp,4
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    # Line 939
    lui	$at,0x19
    addiu	$at,$at,17168
    # addu	gp,t9,at
    # Line 944
    # lw $t9, -32096($gp) # &__glExpGetOrigin
    # Line 939
    move	$s7,$a1
    sd	$ra,24($sp)
    # Line 944
    bal __glExpGetOrigin
    addiu	$a1,$sp,0
    lw	$a1,0($sp)
    blez	$a1,.L0da63774
    # Line 948
    lw	$a2,4($sp)
    move	$a5,$a1
.L0da63598:
    # Line 949
    slti	$v0,$a1,-769
    # Line 948
    blez	$a2,.L0da6377c
    # Line 949
    move	$a7,$a2
.L0da635a4:
    beqz	$v0,.L0da635b0
    # Line 950
    li	$a6,1279
    addiu	$a6,$a1,2048
.L0da635b0:
    slti	$v1,$a2,-1025
    bnez	$v1,.L0da635c0
    # Line 951
    addiu	$t0,$a2,2048
    li	$t0,1023
.L0da635c0:
    lw	$a0,40($s7)
    blez	$a0,.L0da637c4
    lw	$a2,8($s7)
.L0da635cc:
    # Line 954
    lw	$a3,16($s7)
    lw	$t3,0($s7)
    bltz	$a3,.L0da63784
    addu	$t1,$t3,$a1
    # Line 976
    slt	$at,$t1,$a5
    beqz	$at,.L0da63640
    move	$a4,$t1
    # Line 978
    subu	$v1,$a5,$a4
    div	$zero,$v1,$a3
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da63618
    teq	$a3,$zero,0x7
    # Line 979
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63618:
    # Line 982
    subu	$a2,$a2,$a1
    # Line 980
    mult	$a3,$a1
    # Line 983
    lw	$at,52($s7)
    # Line 982
    sw	$a2,8($s7)
    # Line 983
    addu	$at,$at,$a1
    sw	$at,52($s7)
    # Line 980
    mflo	$a0
    addu	$a4,$a0,$a4
    # Line 981
    addu	$a0,$t3,$a0
    sw	$a0,0($s7)
.L0da63640:
    # Line 986
    mult	$a2,$a3
    mflo	$t2
    addu	$t2,$t2,$a4
    addiu	$t2,$t2,-1
    slt	$v0,$a6,$t2
    beqz	$v0,.L0da63690
    # Line 988
    subu	$v0,$t2,$a6
    div	$zero,$v0,$a3
    mflo	$a1
    slt	$at,$a1,$a2
    bnez	$at,.L0da63688
    teq	$a3,$zero,0x7
    # Line 989
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63688:
    # Line 991
    subu	$v1,$a2,$a1
    sw	$v1,8($s7)
.L0da63690:
    # Line 1033
    ld	$ra,24($sp)
    # Line 991
    lw	$a6,4($s7)
    lw	$a3,20($s7)
    lw	$a1,4($sp)
    bltz	$a3,.L0da63844
    addu	$a1,$a1,$a6
    # Line 1014
    slt	$at,$a1,$a7
    move	$a4,$a1
    beqz	$at,.L0da63710
    lw	$a2,12($s7)
    # Line 1016
    subu	$v1,$a7,$a4
    div	$zero,$v1,$a3
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da636e8
    teq	$a3,$zero,0x7
    # Line 1017
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da636e8:
    # Line 1018
    mult	$a3,$a1
    # Line 1021
    lw	$at,48($s7)
    # Line 1020
    subu	$a2,$a2,$a1
    sw	$a2,12($s7)
    # Line 1021
    addu	$at,$at,$a1
    sw	$at,48($s7)
    # Line 1018
    mflo	$a0
    addu	$a4,$a0,$a4
    # Line 1019
    addu	$a0,$a6,$a0
    sw	$a0,4($s7)
.L0da63710:
    # Line 1024
    mult	$a3,$a2
    mflo	$a5
    addu	$a5,$a5,$a4
    addiu	$a5,$a5,-1
    slt	$v0,$t0,$a5
    beqz	$v0,.L0da63760
    # Line 1026
    subu	$v0,$a5,$t0
    div	$zero,$v0,$a3
    mflo	$a1
    slt	$at,$a1,$a2
    bnez	$at,.L0da63758
    teq	$a3,$zero,0x7
    # Line 1027
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63758:
    # Line 1029
    subu	$v1,$a2,$a1
    sw	$v1,12($s7)
.L0da63760:
    # ld	gp,8(sp)
    # Line 1033
    li	$v0,1
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63774:
    b	.L0da63598
    # Line 948
    move	$a5,$zero
.L0da6377c:
    b	.L0da635a4
    # Line 949
    move	$a7,$zero
.L0da63784:
    # Line 958
    addiu	$t2,$t1,-1
    slt	$a0,$a6,$t2
    beqz	$a0,.L0da637f8
    # Line 960
    subu	$v1,$t2,$a6
    negu	$at,$a3
    div	$zero,$v1,$at
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da637d0
    teq	$at,$zero,0x7
    # Line 961
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da637c4:
    # Line 954
    sw	$a2,40($s7)
    b	.L0da635cc
    lw	$a1,0($sp)
.L0da637d0:
    # Line 962
    mult	$a3,$a1
    # Line 965
    lw	$at,52($s7)
    # Line 964
    subu	$a2,$a2,$a1
    sw	$a2,8($s7)
    # Line 965
    addu	$at,$at,$a1
    sw	$at,52($s7)
    # Line 962
    mflo	$a0
    addu	$t2,$a0,$t2
    # Line 963
    addu	$a0,$t3,$a0
    sw	$a0,0($s7)
.L0da637f8:
    # Line 968
    mult	$a2,$a3
    mflo	$a4
    addu	$a4,$a4,$t2
    addiu	$a4,$a4,1
    slt	$v0,$a4,$a5
    beqz	$v0,.L0da63690
    # Line 970
    subu	$v1,$a5,$a4
    negu	$at,$a3
    div	$zero,$v1,$at
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da638fc
    teq	$at,$zero,0x7
    # Line 971
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63844:
    # Line 996
    addiu	$a5,$a1,-1
    slt	$a0,$t0,$a5
    beqz	$a0,.L0da638b0
    lw	$a2,12($s7)
    # Line 998
    subu	$v1,$a5,$t0
    negu	$at,$a3
    div	$zero,$v1,$at
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da63888
    teq	$at,$zero,0x7
    # Line 999
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da63888:
    # Line 1000
    mult	$a3,$a1
    # Line 1003
    lw	$at,48($s7)
    # Line 1002
    subu	$a2,$a2,$a1
    sw	$a2,12($s7)
    # Line 1003
    addu	$at,$at,$a1
    sw	$at,48($s7)
    # Line 1000
    mflo	$a0
    addu	$a5,$a0,$a5
    # Line 1001
    addu	$a0,$a6,$a0
    sw	$a0,4($s7)
.L0da638b0:
    # Line 1006
    mult	$a3,$a2
    mflo	$a4
    addu	$a4,$a4,$a5
    addiu	$a4,$a4,1
    slt	$v0,$a4,$a7
    beqz	$v0,.L0da63760
    # Line 1008
    subu	$v1,$a7,$a4
    negu	$at,$a3
    div	$zero,$v1,$at
    mflo	$a1
    slt	$v0,$a1,$a2
    bnez	$v0,.L0da63908
    teq	$at,$zero,0x7
    # Line 1009
    move	$v0,$zero
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da638fc:
    # Line 973
    subu	$a0,$a2,$a1
    b	.L0da63690
    sw	$a0,8($s7)
.L0da63908:
    # Line 1011
    subu	$at,$a2,$a1
    b	.L0da63760
    sw	$at,12($s7)
.end __glExpClipPixels

# Function: __glExpInitPackAndUnpack
# Declared: Line 1036 (Source lines: 1037-1155)
# Address: 0x0da63914 - 0x0da63c8c (Size: 888 bytes, Frame: 240)
.globl __glExpInitPackAndUnpack
.ent __glExpInitPackAndUnpack
__glExpInitPackAndUnpack:
    # Line 1037
    addiu	$sp,$sp,-112
    # sd	gp,40(sp)
    lui	$at,0x19
    addiu	$at,$at,16212
    # addu	gp,t9,at
    # Line 1051
    # lw $t9, -32092($gp) # &__glExpClipPixels
    sd	$s0,24($sp)
    sd	$ra,32($sp)
    bal __glExpClipPixels
    # Line 1037
    move	$s0,$a1
    # Line 1051
    beqz	$v0,.L0da63c50
    # Line 1052
    move	$v0,$zero
    sd	$s3,56($sp)
    # Line 1059
    lw	$s3,52($s0)
    sd	$s2,72($sp)
    # Line 1058
    lw	$s2,48($s0)
    sd	$s4,64($sp)
    # Line 1057
    lw	$s4,44($s0)
    # Line 1056
    lw	$v0,40($s0)
    sd	$s1,16($sp)
    sd	$s5,80($sp)
    # Line 1059
    blez	$v0,.L0da63bfc
    # Line 1055
    lw	$s5,8($s0)
    # Line 1062
    move	$s1,$v0
.L0da63974:
    # Line 1087
    lw	$a7,0($sp)
    # Line 1074
    andi	$t1,$s3,0x7
    # Line 1070
    li	$at,3
    # Line 1064
    lw	$a0,28($s0)
    lui	$v0,0x4
    li	$v1,6656
    bne	$a0,$v1,.L0da63a44
    ori	$v0,$v0,0x22a0
    # Line 1076
    sll	$t2,$s4,0x3
    addu	$a1,$t2,$s1
    addiu	$a1,$a1,-1
    div	$zero,$a1,$t2
    # Line 1087
    lw	$t0,4($sp)
    # Line 1073
    move	$a5,$s5
    # Line 1074
    addu	$t1,$t1,$s5
    # Line 1076
    mflo	$a0
    ld	$s5,80($sp)
    teq	$t2,$zero,0x7
    mult	$a0,$s4
    # Line 1081
    move	$t2,$zero
    # Line 1070
    lui	$v1,0x4
    ori	$v1,$v1,0x229c
    sw	$at,0($v1)
    # Line 1071
    sw	$zero,0($v0)
    # Line 1074
    addiu	$t1,$t1,7
    sra	$a6,$t1,0x2
    srl	$a6,$a6,0x1d
    addu	$a6,$a6,$t1
    sra	$a6,$a6,0x3
    # Line 1080
    lw	$a4,32($s0)
    ld	$s4,64($sp)
    # Line 1076
    mflo	$a0
    sll	$t1,$a0,0x3
    # Line 1078
    addiu	$a2,$t1,7
    sra	$a1,$a2,0x2
    srl	$a1,$a1,0x1d
    addu	$a1,$a1,$a2
    # Line 1082
    beqz	$s2,.L0da63c70
    # Line 1078
    sra	$a1,$a1,0x3
.L0da63a10:
    # Line 1086
    mult	$a0,$s2
    mflo	$t2
    sll	$t2,$t2,0x3
    addu	$t2,$t2,$s3
    sra	$at,$t2,0x2
    srl	$at,$at,0x1d
    addu	$at,$at,$t2
    sra	$at,$at,0x3
    addu	$a4,$at,$a4
    # Line 1087
    sll	$at,$at,0x3
    subu	$t2,$t2,$at
.L0da63a3c:
    b	.L0da63b6c
    lw	$a0,8($sp)
.L0da63a44:
    # Line 1090
    # lw $t9, -30260($gp) # &__glBytesPerElement
    jal	__glBytesPerElement
    sd	$s7,88($sp)
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    # Line 1091
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    lw	$a0,24($s0)
    # Line 1090
    move	$t3,$s7
    # Line 1091
    jal	__glElementsPerGroup
    sd	$s7,48($sp)
    # Line 1092
    mult	$v0,$s7
    # Line 1091
    move	$t0,$v0
    # Line 1094
    li	$a5,2
    ld	$a0,48($sp)
    li	$at,4
    li	$a6,1
    lui	$a4,0x4
    ori	$a4,$a4,0x22a0
    # Line 1092
    mflo	$a7
    # Line 1094
    beq	$a7,$a6,.L0da63c34
    move	$a1,$a7
    beq	$a1,$a5,.L0da63c44
    # Line 1099
    lui	$v1,0x4
    # Line 1094
    beq	$a1,$at,.L0da63c64
    # Line 1102
    lui	$a2,0x4
.L0da63aa8:
    # Line 1111
    mult	$s5,$a7
    mflo	$a6
    nop
    nop
    # Line 1114
    mult	$s7,$t0
    mflo	$a1
    nop
    nop
    mult	$a1,$s1
    # Line 1113
    move	$t1,$zero
    # Line 1110
    move	$a5,$zero
    # Line 1108
    sw	$zero,0($a4)
    ld	$s5,80($sp)
    # Line 1114
    slt	$v1,$s7,$s4
    mflo	$v0
    beqz	$v1,.L0da63b38
    move	$a1,$v0
    # Line 1116
    div	$zero,$s4,$s7
    mflo	$at
    nop
    nop
    mult	$at,$s7
    mflo	$a2
    addu	$s5,$v0,$s4
    addiu	$s5,$s5,-1
    div	$zero,$s5,$s4
    mflo	$a3
    nop
    nop
    mult	$a2,$a3
    teq	$s4,$zero,0x7
    teq	$s7,$zero,0x7
    ld	$s5,80($sp)
    mflo	$a1
    nop
    nop
.L0da63b38:
    # Line 1121
    move	$t2,$zero
    # Line 1120
    lw	$a4,32($s0)
    ld	$s4,64($sp)
    # Line 1122
    beqz	$s2,.L0da63c24
    ld	$s7,88($sp)
.L0da63b4c:
    # Line 1123
    mult	$s2,$a1
    mflo	$v1
    nop
    nop
    mult	$s3,$a7
    mflo	$a2
    addu	$v1,$v1,$a2
    addu	$a4,$v1,$a4
.L0da63b6c:
    ld	$s3,56($sp)
.L0da63b70:
    # ld	gp,40(sp)
    # Line 1127
    slt	$a3,$a1,$a6
    bnez	$a3,.L0da63b88
    ld	$s2,72($sp)
    andi	$at,$a6,0x3
    beqz	$at,.L0da63c04
.L0da63b88:
    # Line 1130
    li	$v1,1
.L0da63b8c:
    sb	$v1,96($s0)
.L0da63b90:
    # Line 1155
    ld	$ra,32($sp)
    # Line 1135
    slt	$a2,$t1,$a5
    bnez	$a2,.L0da63bb8
    andi	$a3,$a5,0x1f
    bnez	$a3,.L0da63bbc
    # Line 1138
    li	$v1,1
    # Line 1135
    andi	$at,$t1,0x1f
    bnez	$at,.L0da63bbc
    # Line 1138
    li	$v1,1
    # Line 1135
    blez	$t2,.L0da63c84
.L0da63bb8:
    # Line 1138
    li	$v1,1
.L0da63bbc:
    sb	$v1,97($s0)
.L0da63bc0:
    # Line 1155
    li	$v0,1
    # Line 1153
    sw	$t2,92($s0)
    # Line 1152
    sw	$a4,88($s0)
    # Line 1151
    sw	$a1,76($s0)
    # Line 1150
    sw	$t1,84($s0)
    # Line 1149
    sw	$a6,72($s0)
    # Line 1148
    sw	$a5,80($s0)
    # Line 1146
    sw	$s1,68($s0)
    # Line 1145
    sw	$a7,64($s0)
    # Line 1144
    sw	$t0,60($s0)
    # Line 1143
    sw	$a0,56($s0)
    # Line 1155
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da63bfc:
    b	.L0da63974
    # Line 1064
    move	$s1,$s5
.L0da63c04:
    # Line 1127
    andi	$a2,$a1,0x3
    bnez	$a2,.L0da63b8c
    # Line 1130
    li	$v1,1
    # Line 1127
    andi	$a3,$a4,0x3
    bnez	$a3,.L0da63b8c
    # Line 1130
    li	$v1,1
    b	.L0da63b90
    # Line 1132
    sb	$zero,96($s0)
.L0da63c24:
    # Line 1122
    beqzl	$s3,.L0da63b70
    ld	$s3,56($sp)
    b	.L0da63b4c
    nop
.L0da63c34:
    # Line 1096
    lui	$at,0x4
    ori	$at,$at,0x229c
    # Line 1097
    b	.L0da63aa8
    # Line 1096
    sw	$a5,0($at)
.L0da63c44:
    # Line 1099
    ori	$v1,$v1,0x229c
    # Line 1100
    b	.L0da63aa8
    # Line 1099
    sw	$a6,0($v1)
.L0da63c50:
    # Line 1052
    ld	$ra,32($sp)
    # ld	gp,40(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da63c64:
    # Line 1102
    ori	$a2,$a2,0x229c
    b	.L0da63aa8
    sw	$zero,0($a2)
.L0da63c70:
    ld	$s4,64($sp)
    # Line 1082
    beqz	$s3,.L0da63a3c
    ld	$s5,80($sp)
    b	.L0da63a10
    nop
.L0da63c84:
    b	.L0da63bc0
    # Line 1140
    sb	$zero,97($s0)
.end __glExpInitPackAndUnpack

# Function: __glExpFastDrawPixels
# Declared: Line 1160 (Source lines: 1163-1216)
# Address: 0x0da63c8c - 0x0da63e00 (Size: 372 bytes, Frame: 208)
.globl __glExpFastDrawPixels
.ent __glExpFastDrawPixels
__glExpFastDrawPixels:
    # Line 1167
    lwc1	$f2,3380($a0)
    lwc1	$f1,344($a0)
    sub.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a7,$f0
    # Line 1163
    addiu	$sp,$sp,-208
    # Line 1167
    sw	$a7,0($sp)
    # Line 1169
    lwc1	$f4,3384($a0)
    lwc1	$f3,348($a0)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    sd	$s0,120($sp)
    # Line 1163
    move	$s0,$a0
    # Line 1169
    mfc1	$a0,$f2
    # Line 1172
    sw	$a2,12($sp)
    # Line 1171
    sw	$a1,8($sp)
    # Line 1169
    sw	$a0,4($sp)
    # Line 1173
    lwc1	$f1,720($s0)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,16($sp)
    sd	$gp,112($sp)
    # Line 1174
    lwc1	$f0,724($s0)
    # Line 1163
    lui	$v0,0x19
    addiu	$v0,$v0,15324
    # Line 1174
    trunc.w.s	$f0,$f0
    # Line 1163
    addu	$gp,$t9,$v0
    # Line 1177
    sw	$a5,32($sp)
    # Line 1176
    sw	$a4,28($sp)
    # Line 1174
    mfc1	$at,$f0
    # Line 1175
    sw	$a3,24($sp)
    # Line 1177
    beqz	$a6,.L0da63d8c
    # Line 1174
    sw	$at,20($sp)
    sd	$ra,128($sp)
    sd	$a3,104($sp)
    # Line 1188
    sw	$zero,52($sp)
    # Line 1187
    sw	$zero,48($sp)
    # Line 1185
    sw	$a1,40($sp)
    # Line 1184
    sb	$zero,37($sp)
    # Line 1183
    sb	$zero,36($sp)
    # Line 1186
    li	$at,1
    sw	$at,44($sp)
.L0da63d48:
    # Line 1201
    # lw $t9, -32088($gp) # &__glExpInitPackAndUnpack
    move	$a0,$s0
    bal __glExpInitPackAndUnpack
    addiu	$a1,$sp,0
    beqz	$v0,.L0da63de8
    ld	$ra,128($sp)
    # Line 1205
    lbu	$v0,96($sp)
    beqz	$v0,.L0da63dc8
.L0da63d68:
    # Line 1206
    nop	# was lw $t9, -32116($gp) # &__glExpDrawPixelsUnpack1
.L0da63d6c:
    # Line 1215
    move	$a0,$s0
.L0da63d70:
    jal	__glExpDrawPixelsUnpack1
    addiu	$a1,$sp,0
    # Line 1216
    ld	$ra,128($sp)
    ld	$gp,112($sp)
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da63d8c:
    # Line 1193
    lbu	$a2,1108($s0)
    sb	$a2,36($sp)
    # Line 1194
    lbu	$v1,1109($s0)
    sb	$v1,37($sp)
    # Line 1195
    lw	$v0,1112($s0)
    sw	$v0,40($sp)
    # Line 1196
    lw	$at,1124($s0)
    sw	$at,44($sp)
    # Line 1197
    lw	$a2,1116($s0)
    sw	$a2,48($sp)
    sd	$ra,128($sp)
    # Line 1198
    lw	$v1,1120($s0)
    sd	$a3,104($sp)
    b	.L0da63d48
    sw	$v1,52($sp)
.L0da63dc8:
    # Line 1205
    lbu	$at,97($sp)
    bnez	$at,.L0da63d68
    # Line 1206
    ld	$v0,104($sp)
    li	$v1,6408
    beq	$v0,$v1,.L0da63df8
    # Line 1211
    nop	# was lw $t9, -32112($gp) # &__glExpDrawPixelsKDMA
    b	.L0da63d70
    # Line 1215
    move	$a0,$s0
.L0da63de8:
    ld	$gp,112($sp)
    # Line 1202
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da63df8:
    # Line 1209
    b	.L0da63d6c
    nop	# was lw $t9, -32120($gp) # &__glExpDrawPixelsUnpack4
.end __glExpFastDrawPixels

# Function: __glExpFastReadPixels
# Declared: Line 1218 (Source lines: 1221-1298)
# Address: 0x0da63e00 - 0x0da640f8 (Size: 760 bytes, Frame: 240)
.globl __glExpFastReadPixels
.ent __glExpFastReadPixels
__glExpFastReadPixels:
    # Line 1221
    addiu	$sp,$sp,-240
    sd	$s0,144($sp)
    # Line 1234
    sw	$a7,32($sp)
    # Line 1233
    sw	$a6,28($sp)
    # Line 1232
    sw	$a5,24($sp)
    # Line 1227
    sw	$a2,4($sp)
    # Line 1226
    sw	$a1,0($sp)
    # Line 1228
    sw	$a3,8($sp)
    sd	$s1,120($sp)
    # Line 1221
    move	$s1,$a4
    # Line 1229
    sw	$a4,12($sp)
    # Line 1230
    li	$a4,1
    # Line 1231
    sw	$a4,20($sp)
    # Line 1230
    sw	$a4,16($sp)
    # Line 1221
    move	$s0,$a3
    # Line 1236
    lbu	$a3,1072($a0)
    sb	$a3,36($sp)
    # Line 1237
    lbu	$a2,1073($a0)
    sd	$s3,152($sp)
    # Line 1221
    move	$s3,$a5
    # Line 1237
    sb	$a2,37($sp)
    sd	$a7,104($sp)
    # Line 1238
    lw	$a1,1076($a0)
    sd	$ra,136($sp)
    sd	$s2,112($sp)
    sw	$a1,40($sp)
    # Line 1221
    move	$s2,$a0
    # Line 1239
    lw	$a0,1088($a0)
    sd	$gp,128($sp)
    # Line 1221
    lui	$v1,0x19
    # Line 1239
    sw	$a0,44($sp)
    # Line 1221
    addiu	$v1,$v1,14952
    # Line 1240
    lw	$v0,1080($s2)
    # Line 1221
    addu	$gp,$t9,$v1
    # Line 1243
    # lw $t9, -32088($gp) # &__glExpInitPackAndUnpack
    # Line 1240
    sw	$v0,48($sp)
    # Line 1243
    addiu	$a1,$sp,0
    # Line 1241
    lw	$at,1084($s2)
    # Line 1243
    move	$a0,$s2
    bal __glExpInitPackAndUnpack
    # Line 1241
    sw	$at,52($sp)
    # Line 1243
    beqz	$v0,.L0da640d0
    # Line 1247
    lbu	$at,96($sp)
    beqz	$at,.L0da640b0
    # Line 1248
    la	$a3,__glExpReadPixelsPack1
.L0da63eb4:
    # Line 1250
    li	$v0,6402
    beq	$v0,$s3,.L0da63ed4
    # Line 1259
    nop	# was lw $t9, -32392($gp) # &__glExpSetReadBuffer
    sd	$a3,160($sp)
    jal	__glExpSetReadBuffer
    move	$a0,$s2
    b	.L0da63f00
    ld	$a3,160($sp)
.L0da63ed4:
    # Line 1266
    lui	$v1,0x4
    ori	$v1,$v1,0x22a0
    # Line 1265
    lui	$a1,0x4
    ori	$a1,$a1,0x229c
    # Line 1263
    li	$v0,2
    lui	$at,0x4
    ori	$at,$at,0x2428
    sw	$v0,0($at)
    # Line 1264
    sw	$zero,0($at)
    # Line 1265
    sw	$zero,0($a1)
    # Line 1266
    sw	$zero,0($v1)
.L0da63f00:
    # Line 1269
    move	$a0,$s2
    addiu	$a1,$sp,0
    jalr	$a3
    move	$t9,$a3
    li	$a1,6402
    bne	$a1,$s3,.L0da63fe0
    # Line 1297
    nop	# was lw $t9, -32396($gp) # &__glExpSetReadSource
    ld	$a2,104($sp)
    # Line 1279
    lbu	$at,96($sp)
    # Line 1276
    lw	$v0,31244($s2)
    li	$a3,32
    # Line 1279
    beqz	$at,.L0da63f44
    # Line 1276
    subu	$a3,$a3,$v0
.L0da63f34:
    # Line 1281
    blez	$s1,.L0da63fdc
    move	$a5,$zero
    b	.L0da64094
    # Line 1282
    move	$a6,$s0
.L0da63f44:
    # Line 1279
    lbu	$v1,97($sp)
    bnez	$v1,.L0da63f34
    nop
    # Line 1289
    mult	$s0,$s1
    mflo	$a5
    beqz	$a5,.L0da63fdc
    move	$a0,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0da63f88
    move	$a6,$a5
.L0da63f6c:
    addiu	$a0,$a0,-1
    # Line 1290
    lw	$a1,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    sllv	$a1,$a1,$a3
    bnez	$a4,.L0da63f6c
    sw	$a1,-4($a2)
.L0da63f88:
    move	$a5,$a0
    sra	$at,$a6,0x2
    beqz	$at,.L0da63fdc
    move	$a4,$a2
    move	$a0,$a5
    move	$a2,$a4
.L0da63fa0:
    lw	$at,0($a2)
    sllv	$at,$at,$a3
    lw	$a1,4($a2)
    sw	$at,0($a2)
    lw	$v1,8($a2)
    sllv	$a1,$a1,$a3
    sw	$a1,4($a2)
    sllv	$v1,$v1,$a3
    sw	$v1,8($a2)
    lw	$v0,12($a2)
    addiu	$a2,$a2,16
    # Line 1289
    addiu	$a0,$a0,-4
    # Line 1290
    sllv	$v0,$v0,$a3
    # Line 1289
    bnez	$a0,.L0da63fa0
    # Line 1290
    sw	$v0,-4($a2)
.L0da63fdc:
    # Line 1297
    # lw $t9, -32396($gp) # &__glExpSetReadSource
.L0da63fe0:
    jal	__glExpSetReadSource
    move	$a0,$s2
    ld	$gp,128($sp)
    # Line 1298
    ld	$s0,144($sp)
    ld	$s1,120($sp)
    ld	$ra,136($sp)
    ld	$s2,112($sp)
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da64008:
    # Line 1282
    addiu	$a0,$a0,1
.L0da6400c:
    # Line 1283
    lw	$v0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    sllv	$v0,$v0,$a3
    bnez	$a4,.L0da64008
    sw	$v0,-4($a2)
    move	$a4,$a0
.L0da64028:
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da6407c
    move	$a7,$a2
    move	$a2,$a4
    move	$a0,$a7
.L0da6403c:
    lw	$v1,0($a0)
    sllv	$v1,$v1,$a3
    lw	$v0,4($a0)
    sw	$v1,0($a0)
    lw	$at,8($a0)
    sllv	$v0,$v0,$a3
    sw	$v0,4($a0)
    sllv	$at,$at,$a3
    sw	$at,8($a0)
    lw	$a1,12($a0)
    addiu	$a0,$a0,16
    # Line 1282
    addiu	$a2,$a2,4
    # Line 1283
    sllv	$a1,$a1,$a3
    # Line 1282
    bne	$s0,$a2,.L0da6403c
    # Line 1283
    sw	$a1,-4($a0)
    move	$a2,$a0
.L0da6407c:
    # Line 1281
    addiu	$a5,$a5,1
    # Line 1285
    lw	$a1,52($sp)
    sll	$a1,$a1,0x2
    # Line 1281
    beq	$s1,$a5,.L0da63fdc
    # Line 1285
    addu	$a2,$a1,$a2
    # Line 1282
    move	$a6,$s0
.L0da64094:
    blez	$s0,.L0da6407c
    move	$a0,$zero
    andi	$a4,$s0,0x3
    beqzl	$a4,.L0da64028
    move	$a4,$a0
    b	.L0da6400c
    addiu	$a0,$a0,1
.L0da640b0:
    # Line 1247
    lbu	$at,97($sp)
    bnez	$at,.L0da63eb4
    # Line 1248
    la	$a3,__glExpReadPixelsPack1
    li	$v0,6408
    beq	$s3,$v0,.L0da640f0
    nop
    b	.L0da63eb4
    # Line 1253
    la	$a3,__glExpReadPixelsKDMA
.L0da640d0:
    ld	$gp,128($sp)
    # Line 1244
    ld	$s0,144($sp)
    ld	$s1,120($sp)
    ld	$ra,136($sp)
    ld	$s2,112($sp)
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da640f0:
    # Line 1251
    b	.L0da63eb4
    la	$a3,__glExpReadPixelsKDMARGBA
.end __glExpFastReadPixels

# Function: __glExpFastCopyPixels
# Declared: Line 1301 (Source lines: 1303-1351)
# Address: 0x0da640f8 - 0x0da64248 (Size: 336 bytes, Frame: 240)
.globl __glExpFastCopyPixels
.ent __glExpFastCopyPixels
__glExpFastCopyPixels:
    # Line 1303
    addiu	$sp,$sp,-112
    sd	$s1,24($sp)
    move	$s1,$a4
    sd	$s2,0($sp)
    move	$s2,$a3
    sd	$a2,48($sp)
    sd	$s8,32($sp)
    move	$s8,$a1
    # sd	gp,40(sp)
    lui	$at,0x19
    addiu	$at,$at,14192
    # addu	gp,t9,at
    # Line 1311
    # lw $t9, -32392($gp) # &__glExpSetReadBuffer
    sd	$s0,8($sp)
    sd	$ra,16($sp)
    jal	__glExpSetReadBuffer
    # Line 1303
    move	$s0,$a0
    # Line 1322
    lwc1	$f3,724($s0)
    trunc.w.s	$f3,$f3
    # Line 1321
    lwc1	$f2,720($s0)
    trunc.w.s	$f2,$f2
    # Line 1318
    lwc1	$f4,3384($s0)
    lwc1	$f1,348($s0)
    # Line 1316
    lwc1	$f0,344($s0)
    # Line 1318
    sub.s	$f1,$f1,$f4
    # Line 1316
    lwc1	$f4,3380($s0)
    ld	$a1,48($sp)
    # Line 1325
    lui	$v0,0x4
    # Line 1316
    sub.s	$f0,$f0,$f4
    # Line 1325
    ori	$v0,$v0,0x22a0
    # Line 1324
    lui	$v1,0x4
    # Line 1318
    trunc.w.s	$f1,$f1
    # Line 1324
    ori	$v1,$v1,0x229c
    sw	$zero,0($v1)
    # Line 1316
    trunc.w.s	$f0,$f0
    # Line 1322
    mfc1	$a2,$f3
    # Line 1321
    mfc1	$a6,$f2
    # Line 1318
    mfc1	$a3,$f1
    # Line 1316
    mfc1	$a4,$f0
    # Line 1325
    bltz	$a6,.L0da64234
    sw	$zero,0($v0)
.L0da6419c:
    # Line 1329
    bgez	$a2,.L0da641b8
    nop
    # Line 1333
    negu	$a2,$a2
    # Line 1334
    mult	$s1,$a2
    mflo	$v1
    nop
    subu	$a3,$a3,$v1
.L0da641b8:
    # Line 1338
    mtc1	$a6,$f5
    # Line 1350
    move	$a0,$s0
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    # Line 1338
    cvt.s.w	$f5,$f5
    # Line 1341
    lui	$a5,0x4
    # Line 1339
    mtc1	$a2,$f4
    # Line 1341
    ori	$a5,$a5,0x22e8
    # Line 1342
    lui	$a6,0x4
    # Line 1339
    cvt.s.w	$f4,$f4
    # Line 1342
    ori	$a2,$a6,0x277c
    # Line 1337
    lui	$a6,0x4
    ori	$a6,$a6,0x22ec
    sw	$zero,0($a6)
    # Line 1338
    swc1	$f5,0($a6)
    # Line 1339
    swc1	$f4,0($a6)
    # Line 1341
    sw	$zero,0($a5)
    # Line 1342
    sw	$a1,0($a2)
    # Line 1343
    sw	$a3,0($a2)
    # Line 1344
    sw	$s1,0($a2)
    # Line 1345
    sw	$s8,0($a2)
    # Line 1346
    sw	$a4,0($a2)
    # Line 1350
    jal	__glExpSetReadSource
    # Line 1347
    sw	$s2,0($a2)
    # ld	gp,40(sp)
    # Line 1351
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    ld	$ra,16($sp)
    ld	$s2,0($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da64234:
    # Line 1328
    negu	$a6,$a6
    # Line 1329
    mult	$s2,$a6
    mflo	$at
    b	.L0da6419c
    subu	$a4,$a4,$at
.end __glExpFastCopyPixels

# Function: __glExpPickDrawPixels
# Declared: Line 1355 (Source lines: 1358-1417)
# Address: 0x0da64248 - 0x0da64348 (Size: 256 bytes, Frame: 208)
.globl __glExpPickDrawPixels
.ent __glExpPickDrawPixels
__glExpPickDrawPixels:
    # Line 1358
    addiu	$sp,$sp,-80
    # sd	gp,0(sp)
    lui	$at,0x19
    addiu	$at,$at,13856
    # addu	gp,t9,at
    la	$t2,__glSlowPickDrawPixels
    # Line 1367
    li	$t1,5121
    beq	$t1,$a4,.L0da642c8
    # Line 1365
    move	$t0,$t2
    # Line 1367
    li	$v0,5123
    beq	$a4,$v0,.L0da642f8
    li	$v1,5125
    beq	$a4,$v1,.L0da64318
    # Line 1397
    li	$a7,6400
.L0da64280:
    # Line 1409
    bnezl	$a6,.L0da642b0
    sd	$ra,8($sp)
    lbu	$a7,1108($a0)
    beqzl	$a7,.L0da642b0
    sd	$ra,8($sp)
    # Line 1411
    beq	$t1,$a4,.L0da642ac
    li	$at,5120
    beql	$a4,$at,.L0da642b0
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    # Line 1413
    move	$t0,$t2
.L0da642ac:
    sd	$ra,8($sp)
.L0da642b0:
    # Line 1416
    jalr	$t0
    move	$t9,$t0
    # Line 1417
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da642c8:
    # Line 1369
    li	$v0,6408
    beq	$a3,$v0,.L0da64334
    li	$v1,0x8000
    beq	$a3,$v1,.L0da64334
    li	$a7,6400
    bne	$a3,$a7,.L0da64280
    nop
    # Line 1377
    lbu	$at,30529($a0)
    bnez	$at,.L0da64280
    nop
    # Line 1378
    b	.L0da64280
    la	$t0,__glExpFastDrawPixels
.L0da642f8:
    # Line 1386
    li	$v0,6400
    bne	$a3,$v0,.L0da64280
    nop
    # Line 1388
    lbu	$v1,30529($a0)
    bnez	$v1,.L0da64280
    nop
    # Line 1389
    b	.L0da64280
    la	$t0,__glExpFastDrawPixels
.L0da64318:
    # Line 1397
    bne	$a3,$a7,.L0da64280
    nop
    # Line 1399
    lbu	$at,30529($a0)
    bnez	$at,.L0da64280
    nop
    b	.L0da64280
    # Line 1400
    la	$t0,__glExpFastDrawPixels
.L0da64334:
    # Line 1372
    lbu	$v0,30528($a0)
    bnez	$v0,.L0da64280
    nop
    # Line 1373
    b	.L0da64280
    la	$t0,__glExpFastDrawPixels
.end __glExpPickDrawPixels

# Function: __glExpPickReadPixels
# Declared: Line 1419 (Source lines: 1422-1486)
# Address: 0x0da64348 - 0x0da64474 (Size: 300 bytes, Frame: 208)
.globl __glExpPickReadPixels
.ent __glExpPickReadPixels
__glExpPickReadPixels:
    # Line 1422
    addiu	$sp,$sp,-80
    # sd	gp,0(sp)
    lui	$at,0x19
    addiu	$at,$at,13600
    # addu	gp,t9,at
    la	$t3,__glSlowPickReadPixels
    # Line 1432
    li	$t2,5121
    beq	$t2,$a6,.L0da643c0
    # Line 1430
    move	$t1,$t3
    # Line 1432
    li	$v0,5123
    beq	$a6,$v0,.L0da643f0
    li	$v1,5125
    beq	$a6,$v1,.L0da64410
    # Line 1462
    li	$t0,6400
.L0da64380:
    # Line 1478
    lbu	$t0,1108($a0)
.L0da64384:
    beqz	$t0,.L0da643a4
    # Line 1480
    li	$at,5120
    # Line 1478
    beql	$t2,$a6,.L0da643a8
    sd	$ra,8($sp)
    # Line 1480
    beql	$a6,$at,.L0da643a8
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    # Line 1482
    move	$t1,$t3
.L0da643a4:
    sd	$ra,8($sp)
.L0da643a8:
    # Line 1485
    jalr	$t1
    move	$t9,$t1
    # Line 1486
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da643c0:
    # Line 1434
    li	$v0,6408
    beq	$a5,$v0,.L0da64440
    li	$v1,0x8000
    beq	$a5,$v1,.L0da64440
    li	$t0,6400
    bnel	$a5,$t0,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1442
    lbu	$at,30529($a0)
    bnezl	$at,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1443
    b	.L0da64380
    la	$t1,__glExpFastReadPixels
.L0da643f0:
    # Line 1451
    li	$v0,6400
    bnel	$a5,$v0,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1453
    lbu	$v1,30529($a0)
    bnezl	$v1,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1454
    b	.L0da64380
    la	$t1,__glExpFastReadPixels
.L0da64410:
    # Line 1462
    beq	$a5,$t0,.L0da64460
    li	$at,6402
    bnel	$a5,$at,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1469
    lbu	$v0,30530($a0)
    bnezl	$v0,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1469
    lbu	$v1,31565($a0)
    beqzl	$v1,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    b	.L0da64380
    # Line 1470
    la	$t1,__glExpFastReadPixels
.L0da64440:
    # Line 1437
    lbu	$t0,30528($a0)
    bnezl	$t0,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1437
    lbu	$at,3104($a0)
    beqzl	$at,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1438
    b	.L0da64380
    la	$t1,__glExpFastReadPixels
.L0da64460:
    # Line 1464
    lbu	$v0,30529($a0)
    bnezl	$v0,.L0da64384
    # Line 1478
    lbu	$t0,1108($a0)
    # Line 1465
    b	.L0da64380
    la	$t1,__glExpFastReadPixels
.end __glExpPickReadPixels

# Function: __glExpPickCopyPixels
# Declared: Line 1488 (Source lines: 1490-1527)
# Address: 0x0da64474 - 0x0da64540 (Size: 204 bytes, Frame: 192)
.globl __glExpPickCopyPixels
.ent __glExpPickCopyPixels
__glExpPickCopyPixels:
    # Line 1490
    addiu	$sp,$sp,-64
    # sd	gp,0(sp)
    lui	$v0,0x19
    addiu	$v0,$v0,13300
    # addu	gp,t9,v0
    la	$t0,__glSlowPickCopyPixels
    # Line 1498
    li	$at,6408
    beq	$a5,$at,.L0da6451c
    # Line 1496
    move	$a7,$t0
    # Line 1498
    li	$v1,6400
    beql	$a5,$v1,.L0da64530
    # Line 1505
    lbu	$a6,30529($a0)
.L0da644a4:
    # Line 1517
    lwc1	$f0,720($a0)
.L0da644a8:
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.lt.d	$f0,$f4
    nop
    bc1tl	.L0da644fc
    sd	$ra,8($sp)
    lwc1	$f1,724($a0)
    cvt.d.s	$f1,$f1
    c.lt.d	$f1,$f4
    nop
    bc1tl	.L0da644fc
    sd	$ra,8($sp)
    lw	$at,1788($a0)
    lw	$a6,1148($a0)
    beql	$a6,$at,.L0da64504
    sd	$ra,8($sp)
    lw	$v0,1696($a0)
    andi	$v0,$v0,0x6
    beqzl	$v0,.L0da64504
    sd	$ra,8($sp)
    sd	$ra,8($sp)
.L0da644fc:
    # Line 1523
    move	$a7,$t0
    sd	$ra,8($sp)
.L0da64504:
    # Line 1526
    jalr	$a7
    move	$t9,$a7
    # Line 1527
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6451c:
    # Line 1500
    lbu	$v1,30528($a0)
    bnezl	$v1,.L0da644a8
    # Line 1517
    lwc1	$f0,720($a0)
    # Line 1501
    b	.L0da644a4
    la	$a7,__glExpFastCopyPixels
.L0da64530:
    # Line 1505
    bnezl	$a6,.L0da644a8
    # Line 1517
    lwc1	$f0,720($a0)
    b	.L0da644a4
    # Line 1506
    la	$a7,__glExpFastCopyPixels
.end __glExpPickCopyPixels

# Function: __glExpFreePixelState
# Declared: Line 1531 (Source lines: 1532-1547)
# Address: 0x0da64540 - 0x0da645e8 (Size: 168 bytes, Frame: 48)
.globl __glExpFreePixelState
.ent __glExpFreePixelState
__glExpFreePixelState:
    # Line 1532
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    lw	$a1,31884($a0)
    lui	$at,0x19
    addiu	$at,$at,13096
    beqz	$a1,.L0da64578
    nop
    # Line 1536
    lw	$t9,12($s0)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da64578:
    lw	$a1,31872($s0)
    beqzl	$a1,.L0da6459c
    # Line 1539
    lw	$a1,31876($s0)
    lw	$t9,12($s0)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    lw	$a1,31876($s0)
.L0da6459c:
    beqzl	$a1,.L0da645bc
    # Line 1542
    lw	$a1,31880($s0)
    lw	$t9,12($s0)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    lw	$a1,31880($s0)
.L0da645bc:
    beqzl	$a1,.L0da645dc
    nop
    # Line 1545
    lw	$t9,12($s0)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    # ld	gp,8(sp)
.L0da645dc:
    # Line 1547
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpFreePixelState

# Function: __glExpInitPixelState
# Declared: Line 1549 (Source lines: 1550-1583)
# Address: 0x0da645e8 - 0x0da647ac (Size: 452 bytes, Frame: 192)
.globl __glExpInitPixelState
.ent __glExpInitPixelState
__glExpInitPixelState:
    # Line 1553
    li	$a1,0x8000
    # Line 1550
    addiu	$sp,$sp,-64
    # sd	gp,32(sp)
    lui	$at,0x19
    addiu	$at,$at,12928
    # addu	gp,t9,at
    # Line 1553
    lw	$t9,0($a0)
    sd	$s0,24($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1550
    move	$s0,$a0
    # Line 1553
    lbu	$v1,3104($s0)
    sw	$v0,31884($s0)
    beqz	$v1,.L0da6479c
    ld	$ra,0($sp)
    # Line 1562
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,4
    jalr	$t9
    li	$a1,256
    sd	$v0,8($sp)
    # Line 1564
    li	$a2,4
    lw	$t9,4($s0)
    li	$a1,256
    move	$a0,$s0
    jalr	$t9
    # Line 1562
    sw	$v0,31872($s0)
    sd	$v0,16($sp)
    # Line 1566
    li	$a2,4
    lw	$t9,4($s0)
    li	$a1,256
    move	$a0,$s0
    jalr	$t9
    # Line 1564
    sw	$v0,31876($s0)
    # Line 1571
    lw	$a5,3148($s0)
    # Line 1573
    li	$a6,1
    # Line 1575
    sllv	$ra,$a6,$a5
    addiu	$ra,$ra,-1
    mtc1	$ra,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 1573
    lwc1	$f8,3284($s0)
    # Line 1575
    div.s	$f6,$f8,$f6
    # Line 1570
    lw	$a7,3144($s0)
    # Line 1574
    sllv	$t0,$a6,$a7
    addiu	$t0,$t0,-1
    mtc1	$t0,$f7
    nop
    cvt.s.w	$f7,$f7
    div.s	$f7,$f8,$f7
    # Line 1577
    move	$a3,$zero
    ld	$a4,16($sp)
    # Line 1569
    lw	$ra,3140($s0)
    ld	$a0,8($sp)
    # Line 1566
    sw	$v0,31880($s0)
    # Line 1573
    sllv	$a6,$a6,$ra
    addiu	$a6,$a6,-1
    mtc1	$a6,$f0
    # Line 1577
    li	$t0,256
    ld	$s0,24($sp)
    # Line 1573
    cvt.s.w	$f0,$f0
    # Line 1569
    li	$a6,8
    # Line 1571
    subu	$a5,$a6,$a5
    # Line 1570
    subu	$a7,$a6,$a7
    # Line 1569
    subu	$a6,$a6,$ra
    ld	$ra,0($sp)
    # Line 1573
    div.s	$f8,$f8,$f0
.L0da646f4:
    # Line 1577
    addiu	$at,$a3,1
    # Line 1579
    srav	$a2,$at,$a7
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f7
    # Line 1580
    srav	$a1,$a3,$a5
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1579
    srav	$v1,$a3,$a7
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 1580
    mul.s	$f3,$f3,$f6
    # Line 1579
    mul.s	$f4,$f4,$f7
    # Line 1578
    srav	$a2,$at,$a6
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    srav	$a1,$a3,$a6
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 1580
    srav	$v1,$at,$a5
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1578
    mul.s	$f5,$f5,$f8
    # Line 1577
    addiu	$a0,$a0,8
    addiu	$a4,$a4,8
    # Line 1578
    mul.s	$f2,$f2,$f8
    # Line 1577
    addiu	$v0,$v0,8
    addiu	$a3,$at,1
    # Line 1580
    mul.s	$f0,$f0,$f6
    # Line 1578
    swc1	$f5,-8($a0)
    # Line 1579
    swc1	$f4,-8($a4)
    # Line 1580
    swc1	$f3,-8($v0)
    # Line 1578
    swc1	$f2,-4($a0)
    # Line 1579
    swc1	$f1,-4($a4)
    # Line 1577
    bne	$a3,$t0,.L0da646f4
    # Line 1580
    swc1	$f0,-4($v0)
.L0da6479c:
    # ld	gp,32(sp)
    # Line 1583
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glExpInitPixelState

.rdata
_lit_3f800000:
    .word 0x3f800000

