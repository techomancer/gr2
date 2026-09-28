# Source: ../soft/so_slowspan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_slowspan.c
# Total Functions: 3

.text

# Function: __glReadSpan
# Declared: Line 20 (Source lines: 22-29)
# Address: 0x0dada5e8 - 0x0dada688 (Size: 160 bytes, Frame: 240)
.globl __glReadSpan
.ent __glReadSpan
__glReadSpan:
    # Line 22
    addiu	$sp,$sp,-112
    sd	$s5,48($sp)
    sd	$s1,32($sp)
    move	$s1,$a3
    sd	$s4,16($sp)
    move	$s4,$a2
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s3,8($sp)
    move	$s3,$a0
    # sd	gp,40(sp)
    lui	$at,0x12
    addiu	$at,$at,-11648
    sd	$s2,0($sp)
    # Line 23
    addiu	$s2,$a4,-1
    bltz	$s2,.L0dada664
    # Line 22
    nop
    sd	$ra,56($sp)
    # Line 23
    li	$s5,-1
.L0dada634:
    # Line 24
    move	$a0,$s3
    move	$a2,$s4
    lw	$t9,172($s3)
    move	$a1,$s0
    # Line 25
    addiu	$s0,$s0,1
    # Line 24
    jalr	$t9
    move	$a3,$s1
    # Line 23
    addiu	$s2,$s2,-1
    bne	$s2,$s5,.L0dada634
    # Line 26
    addiu	$s1,$s1,16
    ld	$s5,48($sp)
    ld	$ra,56($sp)
.L0dada664:
    # Line 29
    move	$v0,$zero
    # ld	gp,40(sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glReadSpan

# Function: __glReturnSpan
# Declared: Line 39 (Source lines: 41-80)
# Address: 0x0dada688 - 0x0dada894 (Size: 524 bytes, Frame: 240)
.globl __glReturnSpan
.ent __glReturnSpan
__glReturnSpan:
    # Line 41
    mov.s	$f4,$f16
    addiu	$sp,$sp,-240
    sd	$s0,72($sp)
    move	$s0,$a3
    sd	$s2,56($sp)
    move	$s2,$a0
    # sd	gp,104(sp)
    lui	$v0,0x12
    sd	$s1,80($sp)
    sd	$s3,96($sp)
    # Line 44
    lw	$s3,0($a0)
    # Line 41
    move	$s1,$a5
    addiu	$v0,$v0,-11808
    # Line 49
    lw	$a6,1696($s3)
    # Line 41
    # addu	gp,t9,v0
    sd	$a6,64($sp)
    # Line 49
    move	$at,$a6
    andi	$at,$a6,0x2
    beqz	$at,.L0dada734
    sd	$at,88($sp)
    sd	$a2,160($sp)
    sdc1	$f4,112($sp)
    # Line 52
    li	$a0,2
    sd	$a1,152($sp)
    # Line 51
    li	$a1,-3
    and	$a1,$a6,$a1
    sw	$a1,1696($s3)
    # Line 52
    sw	$a0,__glBeginMode
    sd	$ra,168($sp)
    lw	$v1,11764($s3)
    # Line 53
    lw	$t9,11792($s3)
    move	$a0,$s3
    # Line 52
    ori	$v1,$v1,0x1
    # Line 53
    jalr	$t9
    # Line 52
    sw	$v1,11764($s3)
    sdc1	$f28,144($sp)
    sdc1	$f24,136($sp)
    sdc1	$f22,128($sp)
    sdc1	$f30,120($sp)
    ldc1	$f4,112($sp)
    ld	$a1,152($sp)
    ld	$a2,160($sp)
    ld	$ra,168($sp)
.L0dada734:
    # Line 63
    addiu	$s1,$s1,-1
    sdc1	$f30,120($sp)
    # Line 59
    lwc1	$f30,31464($s3)
    sdc1	$f22,128($sp)
    # Line 58
    lwc1	$f22,31460($s3)
    sdc1	$f24,136($sp)
    # Line 59
    mul.s	$f30,$f30,$f4
    # Line 57
    lwc1	$f24,31456($s3)
    sdc1	$f28,144($sp)
    # Line 58
    mul.s	$f22,$f22,$f4
    # Line 56
    lwc1	$f28,31452($s3)
    # Line 62
    sw	$a2,4($sp)
    # Line 57
    mul.s	$f24,$f24,$f4
    # Line 61
    sw	$a1,0($sp)
    # Line 63
    bltz	$s1,.L0dada830
    # Line 56
    mul.s	$f28,$f28,$f4
    sd	$ra,168($sp)
    sd	$s5,184($sp)
    # Line 63
    li	$s5,-1
    sd	$s4,176($sp)
    addiu	$s4,$sp,12
.L0dada788:
    # Line 64
    lh	$a5,0($s0)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f28
    swc1	$f2,12($sp)
    # Line 65
    lh	$a4,2($s0)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f24
    swc1	$f1,16($sp)
    # Line 66
    lh	$a3,4($s0)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    swc1	$f0,20($sp)
    # Line 67
    lh	$a2,6($s0)
    mtc1	$a2,$f31
    nop
    cvt.s.w	$f31,$f31
    mul.s	$f31,$f31,$f30
    # Line 68
    move	$a1,$s4
    # Line 63
    addiu	$s1,$s1,-1
    # Line 68
    # lw $t9, -28360($gp) # &__glClampRGBColor
    move	$a2,$s4
    # Line 67
    swc1	$f31,24($sp)
    # Line 68
    jal	__glClampRGBColor
    lw	$a0,0($s2)
    # Line 69
    lw	$t9,164($s2)
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 70
    lw	$at,0($sp)
    # Line 71
    addiu	$s0,$s0,8
    # Line 70
    addiu	$at,$at,1
    # Line 63
    bne	$s1,$s5,.L0dada788
    # Line 70
    sw	$at,0($sp)
    ld	$ra,168($sp)
    ld	$s5,184($sp)
    ld	$s4,176($sp)
.L0dada830:
    ldc1	$f28,144($sp)
    ldc1	$f24,136($sp)
    ldc1	$f22,128($sp)
    ldc1	$f30,120($sp)
    ld	$v0,88($sp)
    ld	$s1,80($sp)
    ld	$s0,72($sp)
    # Line 63
    beqz	$v0,.L0dada884
    ld	$s2,56($sp)
    # Line 76
    ld	$a1,64($sp)
    # Line 77
    li	$a0,2
    # Line 76
    sw	$a1,1696($s3)
    # Line 77
    sw	$a0,__glBeginMode
    sd	$ra,168($sp)
    lw	$v1,11764($s3)
    # Line 78
    lw	$t9,11792($s3)
    move	$a0,$s3
    # Line 77
    ori	$v1,$v1,0x1
    # Line 78
    jalr	$t9
    # Line 77
    sw	$v1,11764($s3)
    ld	$ra,168($sp)
.L0dada884:
    # ld	gp,104(sp)
    # Line 80
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glReturnSpan

# Function: __glFetchSpan
# Declared: Line 82 (Source lines: 83-97)
# Address: 0x0dada894 - 0x0dada8e0 (Size: 76 bytes, Frame: 32)
.globl __glFetchSpan
.ent __glFetchSpan
__glFetchSpan:
    # Line 83
    move	$a1,$a0
    # Line 95
    lw	$a3,30472($a1)
    # Line 83
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$a2,0x12
    # Line 95
    lw	$a4,30252($a0)
    # Line 92
    lw	$a0,30484($a0)
    # Line 83
    addiu	$a2,$a2,-12332
    # addu	gp,t9,a2
    # Line 95
    lw	$t9,176($a0)
    sd	$ra,0($sp)
    lw	$a2,30204($a1)
    jalr	$t9
    lw	$a1,30200($a1)
    # Line 97
    ld	$ra,0($sp)
    move	$v0,$zero
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFetchSpan

