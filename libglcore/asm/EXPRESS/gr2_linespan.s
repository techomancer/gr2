# Source: ../EXPRESS/gr2_linespan.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_linespan.c
# Total Functions: 2

.text

# Function: __glExpStoreLine
# Declared: Line 31 (Source lines: 32-76)
# Address: 0x0da5f610 - 0x0da5f770 (Size: 352 bytes, Frame: 192)
.globl __glExpStoreLine
.ent __glExpStoreLine
__glExpStoreLine:
    # Line 32
    addiu	$sp,$sp,-192
    # sd	gp,152(sp)
    lui	$at,0x1a
    # Line 45
    lw	$a1,29892($a0)
    # Line 32
    addiu	$at,$at,-32168
    # addu	gp,t9,at
    sd	$a1,64($sp)
    # Line 47
    lw	$v1,29888($a0)
    sd	$s2,80($sp)
    # Line 50
    lw	$s2,30468($a0)
    sd	$s7,136($sp)
    # Line 49
    lw	$s7,29900($a0)
    sd	$s1,120($sp)
    # Line 48
    lw	$s1,29896($a0)
    sd	$s8,144($sp)
    # Line 46
    lw	$s8,29880($a0)
    sd	$s0,112($sp)
    # Line 44
    lw	$s0,29884($a0)
    sd	$s3,88($sp)
    # Line 42
    lw	$s3,30252($a0)
    sd	$s4,104($sp)
    # Line 51
    lw	$s4,30484($a0)
    # Line 53
    lw	$v0,29872($a0)
    sd	$s5,128($sp)
    # Line 52
    lw	$s5,164($s4)
    # Line 53
    sw	$v0,0($sp)
    sd	$s6,96($sp)
    # Line 54
    lw	$s6,29876($a0)
    sd	$v1,56($sp)
    sd	$s0,72($sp)
    sw	$s6,4($sp)
    # Line 59
    addiu	$s3,$s3,-1
    # Line 57
    lw	$s6,30328($a0)
    # Line 59
    bltz	$s3,.L0da5f73c
    # Line 56
    lw	$s0,30208($a0)
    b	.L0da5f6c4
    sd	$ra,160($sp)
.L0da5f6a4:
    # Line 71
    addu	$at,$s8,$a3
    ld	$v0,56($sp)
    sw	$at,0($sp)
    # Line 72
    addu	$v0,$v0,$a2
    sw	$v0,4($sp)
.L0da5f6b8:
    # Line 59
    addiu	$s3,$s3,-1
    beq	$s3,$a0,.L0da5f73c
    ld	$ra,160($sp)
.L0da5f6c4:
    # Line 60
    sw	$s0,8($sp)
    # Line 61
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    # Line 62
    addiu	$a1,$sp,0
    # Line 61
    swc1	$f2,16($sp)
    # Line 62
    move	$a0,$s4
    # Line 61
    lwc1	$f1,8($s2)
    addiu	$s2,$s2,16
    # Line 62
    move	$t9,$s5
    # Line 61
    swc1	$f1,20($sp)
    # Line 65
    addu	$s1,$s1,$s7
    # Line 61
    lwc1	$f0,-4($s2)
    # Line 64
    addu	$s0,$s0,$s6
    # Line 62
    jalr	$s5
    # Line 61
    swc1	$f0,24($sp)
    # Line 65
    lw	$a3,0($sp)
    # Line 68
    ld	$v1,72($sp)
    li	$a0,-1
    # Line 69
    ld	$a1,64($sp)
    # Line 65
    bgez	$s1,.L0da5f6a4
    lw	$a2,4($sp)
    # Line 69
    addu	$a1,$a1,$a2
    # Line 68
    addu	$v1,$v1,$a3
    sw	$v1,0($sp)
    # Line 69
    sw	$a1,4($sp)
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    b	.L0da5f6b8
    # Line 67
    and	$s1,$s1,$at
.L0da5f73c:
    # Line 76
    move	$v0,$zero
    # ld	gp,152(sp)
    ld	$s0,112($sp)
    ld	$s1,120($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    ld	$s4,104($sp)
    ld	$s5,128($sp)
    ld	$s6,96($sp)
    ld	$s7,136($sp)
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glExpStoreLine

# Function: __glExpStoreStippledLine
# Declared: Line 86 (Source lines: 87-154)
# Address: 0x0da5f770 - 0x0da5f93c (Size: 460 bytes, Frame: 240)
.globl __glExpStoreStippledLine
.ent __glExpStoreStippledLine
__glExpStoreStippledLine:
    # Line 87
    addiu	$sp,$sp,-240
    sd	$s4,104($sp)
    # Line 114
    lw	$s4,30208($a0)
    sd	$s2,120($sp)
    # Line 111
    lw	$s2,29872($a0)
    sd	$s3,112($sp)
    # Line 108
    lw	$s3,30468($a0)
    sd	$s8,72($sp)
    # Line 107
    lw	$s8,29900($a0)
    sd	$s5,80($sp)
    # Line 106
    lw	$s5,29896($a0)
    sd	$s1,88($sp)
    # Line 115
    lw	$s1,30328($a0)
    # sd	gp,96(sp)
    # Line 104
    lw	$v1,29880($a0)
    sd	$s1,176($sp)
    # Line 112
    lw	$s1,29876($a0)
    sd	$v1,168($sp)
    # Line 87
    lui	$v1,0x1a
    addiu	$v1,$v1,-32520
    # Line 105
    lw	$a1,29888($a0)
    # Line 87
    # addu	gp,t9,v1
    # Line 102
    lw	$at,29884($a0)
    sd	$a1,160($sp)
    # Line 103
    lw	$v0,29892($a0)
    # Line 100
    lw	$a1,30476($a0)
    sd	$at,144($sp)
    sd	$v0,152($sp)
    # Line 109
    lw	$v0,30484($a0)
    # Line 99
    lw	$at,30252($a0)
    sd	$a1,128($sp)
    sd	$v0,64($sp)
    # Line 110
    lw	$v0,164($v0)
    sd	$at,136($sp)
    # Line 115
    beqz	$at,.L0da5f914
    sd	$v0,56($sp)
    sd	$s6,208($sp)
    sd	$ra,200($sp)
    sd	$s0,192($sp)
    sd	$s7,184($sp)
    b	.L0da5f820
    li	$a0,-1
.L0da5f818:
    ld	$at,136($sp)
    # Line 126
    beqz	$at,.L0da5f904
.L0da5f820:
    ld	$v0,136($sp)
    # Line 118
    move	$s6,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0da5f838
    # Line 124
    ld	$v1,128($sp)
    # Line 120
    li	$s6,32
.L0da5f838:
    lui	$s0,0x8000
    # Line 124
    lw	$s7,0($v1)
    # Line 122
    ld	$a1,136($sp)
    # Line 124
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    # Line 122
    subu	$a1,$a1,$s6
    # Line 126
    addiu	$s6,$s6,-1
    bltz	$s6,.L0da5f818
    sd	$a1,136($sp)
    b	.L0da5f894
    # Line 137
    addu	$s5,$s5,$s8
.L0da5f864:
    # Line 136
    addiu	$s3,$s3,16
    # Line 143
    ld	$v0,168($sp)
    # Line 135
    ld	$at,176($sp)
    # Line 137
    bltz	$s5,.L0da5f8e4
    # Line 135
    addu	$s4,$s4,$at
    ld	$v1,160($sp)
    # Line 143
    addu	$s2,$v0,$s2
    # Line 144
    addu	$s1,$v1,$s1
.L0da5f884:
    # Line 126
    addiu	$s6,$s6,-1
    beq	$s6,$a0,.L0da5f818
    nop
    # Line 137
    addu	$s5,$s5,$s8
.L0da5f894:
    # Line 126
    and	$a1,$s7,$s0
    beqz	$a1,.L0da5f864
    # Line 147
    srl	$s0,$s0,0x1
    # Line 130
    sw	$s4,8($sp)
    # Line 129
    sw	$s1,4($sp)
    # Line 128
    sw	$s2,0($sp)
    # Line 131
    lwc1	$f3,0($s3)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s3)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s3)
    # Line 132
    addiu	$a1,$sp,0
    # Line 131
    swc1	$f1,20($sp)
    # Line 132
    ld	$t9,56($sp)
    # Line 131
    lwc1	$f0,12($s3)
    # Line 132
    ld	$a0,64($sp)
    jalr	$t9
    # Line 131
    swc1	$f0,24($sp)
    b	.L0da5f864
    li	$a0,-1
.L0da5f8e4:
    ld	$v1,152($sp)
    # Line 141
    addu	$s1,$v1,$s1
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    # Line 140
    ld	$v0,144($sp)
    # Line 139
    and	$s5,$s5,$at
    # Line 141
    b	.L0da5f884
    # Line 140
    addu	$s2,$v0,$s2
.L0da5f904:
    ld	$s7,184($sp)
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s6,208($sp)
.L0da5f914:
    # Line 154
    move	$v0,$zero
    # ld	gp,96(sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glExpStoreStippledLine

