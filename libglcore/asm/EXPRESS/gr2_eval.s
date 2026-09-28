# Source: ../EXPRESS/gr2_eval.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_eval.c
# Total Functions: 23

.text

# Function: __glExpEvalPassCurrentState
# Declared: Line 35 (Source lines: 36-57)
# Address: 0x0da5a6e0 - 0x0da5a778 (Size: 152 bytes, Frame: 0)
.globl __glExpEvalPassCurrentState
.ent __glExpEvalPassCurrentState
__glExpEvalPassCurrentState:
    # Line 36
    lui	$a2,0x4
    lbu	$at,3104($a0)
    # Line 52
    lui	$v1,0x4
    # Line 36
    beqz	$at,.L0da5a768
    ori	$a2,$a2,0xa608
    lw	$at,1696($a0)
    andi	$at,$at,0x80
    beqzl	$at,.L0da5a748
    # Line 46
    lwc1	$f1,168($a0)
    # Line 41
    lwc1	$f3,408($a0)
    swc1	$f3,0($a2)
    # Line 42
    lwc1	$f2,412($a0)
    swc1	$f2,0($a2)
    # Line 43
    lwc1	$f1,416($a0)
    swc1	$f1,0($a2)
    # Line 44
    lwc1	$f0,420($a0)
    swc1	$f0,0($a2)
.L0da5a724:
    # Line 54
    lui	$v0,0x4
    lwc1	$f1,184($a0)
    ori	$v0,$v0,0x2434
    swc1	$f1,0($v0)
    # Line 55
    lwc1	$f0,188($a0)
    swc1	$f0,0($v0)
    # Line 56
    lwc1	$f4,192($a0)
    # Line 57
    jr	$ra
    # Line 56
    swc1	$f4,0($v0)
.L0da5a748:
    # Line 46
    swc1	$f1,0($a2)
    # Line 47
    lwc1	$f0,172($a0)
    swc1	$f0,0($a2)
    # Line 48
    lwc1	$f3,176($a0)
    swc1	$f3,0($a2)
    # Line 49
    lwc1	$f2,180($a0)
    b	.L0da5a724
    swc1	$f2,0($a2)
.L0da5a768:
    # Line 52
    ori	$v1,$v1,0xe3f8
    lwc1	$f2,424($a0)
    b	.L0da5a724
    swc1	$f2,0($v1)
.end __glExpEvalPassCurrentState

# Function: __glExpEvalRestoreCurrentState
# Declared: Line 59 (Source lines: 60-74)
# Address: 0x0da5a778 - 0x0da5a7e0 (Size: 104 bytes, Frame: 0)
.globl __glExpEvalRestoreCurrentState
.ent __glExpEvalRestoreCurrentState
__glExpEvalRestoreCurrentState:
    # Line 64
    lui	$v0,0x4
    # Line 60
    lbu	$at,3104($a0)
    # Line 69
    lui	$a1,0x4
    # Line 60
    beqz	$at,.L0da5a7d0
    # Line 64
    ori	$v0,$v0,0xa608
    lwc1	$f3,408($a0)
    swc1	$f3,0($v0)
    # Line 65
    lwc1	$f2,412($a0)
    swc1	$f2,0($v0)
    # Line 66
    lwc1	$f1,416($a0)
    swc1	$f1,0($v0)
    # Line 67
    lwc1	$f0,420($a0)
    swc1	$f0,0($v0)
.L0da5a7ac:
    # Line 71
    lui	$v1,0x4
    lwc1	$f1,184($a0)
    ori	$v1,$v1,0x2434
    swc1	$f1,0($v1)
    # Line 72
    lwc1	$f0,188($a0)
    swc1	$f0,0($v1)
    # Line 73
    lwc1	$f4,192($a0)
    # Line 74
    jr	$ra
    # Line 73
    swc1	$f4,0($v1)
.L0da5a7d0:
    # Line 69
    ori	$a1,$a1,0xe3f8
    lwc1	$f2,424($a0)
    b	.L0da5a7ac
    swc1	$f2,0($a1)
.end __glExpEvalRestoreCurrentState

# Function: __glexpim_EvalMesh1
# Declared: Line 405 (Source lines: 406-420)
# Address: 0x0da5a7e0 - 0x0da5a8c8 (Size: 232 bytes, Frame: 208)
.globl __glexpim_EvalMesh1
.ent __glexpim_EvalMesh1
__glexpim_EvalMesh1:
    # Line 407
    lw	$a4,__glCurrentContext
    # Line 406
    addiu	$sp,$sp,-80
    # sd	gp,8(sp)
    # Line 407
    lw	$a5,__glBeginMode
    # Line 406
    lui	$at,0x1a
    addiu	$at,$at,-12152
    # Line 407
    beqz	$a5,.L0da5a864
    # Line 406
    nop
    sd	$ra,16($sp)
    sd	$a0,40($sp)
    sd	$a4,0($sp)
    sd	$a2,32($sp)
    # Line 407
    li	$v0,2
    beq	$a5,$v0,.L0da5a838
    sd	$a1,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da5a838:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a1,24($sp)
    ld	$a2,32($sp)
    ld	$a4,0($sp)
    ld	$a0,40($sp)
    ld	$ra,16($sp)
.L0da5a864:
    # Line 409
    li	$at,6913
    beq	$a0,$at,.L0da5a8b0
    li	$v0,6912
    beq	$a0,$v0,.L0da5a894
    sd	$ra,16($sp)
    # Line 417
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 418
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da5a894:
    # Line 414
    # lw $t9, -32320($gp) # &__glExpEvalMesh1Point
    bal __glExpEvalMesh1Point
    move	$a0,$a4
    ld	$ra,16($sp)
.L0da5a8a4:
    # ld	gp,8(sp)
    # Line 420
    jr	$ra
    addiu	$sp,$sp,80
.L0da5a8b0:
    # Line 411
    # lw $t9, -32324($gp) # &__glExpEvalMesh1Line
    sd	$ra,16($sp)
    bal __glExpEvalMesh1Line
    move	$a0,$a4
    b	.L0da5a8a4
    ld	$ra,16($sp)
.end __glexpim_EvalMesh1

# Function: __glexpim_EvalPoint1
# Declared: Line 422 (Source lines: 423-431)
# Address: 0x0da5a8c8 - 0x0da5a944 (Size: 124 bytes, Frame: 32)
.globl __glexpim_EvalPoint1
.ent __glexpim_EvalPoint1
__glexpim_EvalPoint1:
    # Line 423
    addiu	$sp,$sp,-32
    # Line 426
    lw	$a2,__glCurrentContext
    # sd	gp,0(sp)
    # Line 423
    lui	$at,0x1a
    # Line 426
    lw	$a3,1836($a2)
    # Line 423
    addiu	$at,$at,-12384
    # addu	gp,t9,at
    # Line 426
    bne	$a3,$a0,.L0da5a8f8
    lwc1	$f4,1828($a2)
    sd	$ra,8($sp)
    # Line 430
    b	.L0da5a928
    mov.s	$f13,$f4
.L0da5a8f8:
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1824($a2)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f1
    sd	$ra,8($sp)
    add.s	$f13,$f13,$f0
.L0da5a928:
    lw	$t9,11996($a2)
    jalr	$t9
    move	$a0,$a2
    # Line 431
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_EvalPoint1

# Function: __glexpim_EvalMesh2
# Declared: Line 433 (Source lines: 436-453)
# Address: 0x0da5a944 - 0x0da5aa88 (Size: 324 bytes, Frame: 240)
.globl __glexpim_EvalMesh2
.ent __glexpim_EvalMesh2
__glexpim_EvalMesh2:
    # Line 437
    lw	$a6,__glCurrentContext
    # Line 436
    move	$t0,$a3
    move	$a7,$a2
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    # Line 437
    lw	$t1,__glBeginMode
    # Line 436
    lui	$at,0x1a
    addiu	$at,$at,-12508
    # Line 437
    beqz	$t1,.L0da5a9e4
    # Line 436
    nop
    sd	$ra,24($sp)
    sd	$a6,0($sp)
    sd	$a7,56($sp)
    sd	$a4,48($sp)
    sd	$t0,40($sp)
    # Line 437
    li	$v0,2
    beq	$t1,$v0,.L0da5a9b4
    sd	$a1,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da5a9b4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a1,32($sp)
    ld	$t0,40($sp)
    ld	$a4,48($sp)
    ld	$a7,56($sp)
    ld	$a6,0($sp)
    ld	$ra,24($sp)
.L0da5a9e4:
    # Line 439
    li	$at,6914
    beq	$s0,$at,.L0da5aa48
    li	$v0,6913
    beq	$s0,$v0,.L0da5aa68
    li	$v1,6912
    beq	$s0,$v1,.L0da5aa20
    sd	$ra,24($sp)
    # Line 450
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 451
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da5aa20:
    # Line 447
    # lw $t9, -32312($gp) # &__glExpEvalMesh2Point
    move	$a0,$a6
    move	$a2,$t0
    bal __glExpEvalMesh2Point
    move	$a3,$a7
    ld	$ra,24($sp)
.L0da5aa38:
    # ld	gp,8(sp)
    # Line 453
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da5aa48:
    # Line 441
    move	$a0,$a6
    # lw $t9, -32316($gp) # &__glExpEvalMesh2Fill
    move	$a2,$t0
    sd	$ra,24($sp)
    bal __glExpEvalMesh2Fill
    move	$a3,$a7
    b	.L0da5aa38
    ld	$ra,24($sp)
.L0da5aa68:
    # Line 444
    move	$a0,$a6
    # lw $t9, -32308($gp) # &__glExpEvalMesh2Line
    move	$a2,$t0
    sd	$ra,24($sp)
    bal __glExpEvalMesh2Line
    move	$a3,$a7
    b	.L0da5aa38
    ld	$ra,24($sp)
.end __glexpim_EvalMesh2

# Function: __glexpim_EvalPoint2
# Declared: Line 455 (Source lines: 456-469)
# Address: 0x0da5aa88 - 0x0da5ab44 (Size: 188 bytes, Frame: 32)
.globl __glexpim_EvalPoint2
.ent __glexpim_EvalPoint2
__glexpim_EvalPoint2:
    # Line 456
    addiu	$sp,$sp,-32
    # Line 461
    lw	$a3,__glCurrentContext
    # sd	gp,0(sp)
    # Line 456
    lui	$at,0x1a
    # Line 461
    lw	$a4,1852($a3)
    # Line 456
    addiu	$at,$at,-12832
    # addu	gp,t9,at
    # Line 461
    bne	$a4,$a0,.L0da5aab4
    lwc1	$f4,1844($a3)
    # Line 467
    b	.L0da5aae0
    mov.s	$f13,$f4
.L0da5aab4:
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1840($a3)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f1
    add.s	$f13,$f13,$f0
.L0da5aae0:
    lw	$a0,1868($a3)
    bne	$a0,$a1,.L0da5aaf8
    lwc1	$f4,1860($a3)
    sd	$ra,8($sp)
    b	.L0da5ab28
    mov.s	$f14,$f4
.L0da5aaf8:
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1856($a3)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f1
    sd	$ra,8($sp)
    add.s	$f14,$f14,$f0
.L0da5ab28:
    lw	$t9,12000($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 469
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glexpim_EvalPoint2

# Function: PreEvaluate
# Declared: Line 664 (Source lines: 665-695)
# Address: 0x0da5ab44 - 0x0da5ac80 (Size: 316 bytes, Frame: 0)
.ent PreEvaluate
PreEvaluate:
    # Line 665
    li	$at,1
    beq	$a0,$at,.L0da5ac70
    lwc1	$f4,_lit_3f800000
    # Line 681
    sub.s	$f9,$f4,$f13
    # Line 682
    swc1	$f13,4($a2)
    li	$v0,2
    beq	$a0,$v0,.L0da5ac78
    # Line 681
    swc1	$f9,0($a2)
    # Line 685
    slti	$v1,$a0,3
    bnez	$v1,.L0da5ac68
    li	$a5,2
    li	$a7,8
    b	.L0da5ac30
    li	$t0,1
.L0da5ab7c:
    # Line 690
    lwc1	$f1,0($a3)
.L0da5ab80:
    # Line 691
    mul.s	$f0,$f9,$f1
    # Line 688
    addiu	$a3,$a3,4
    # Line 691
    add.s	$f0,$f0,$f5
    addi	$a6,$a6,-1
    # Line 690
    mul.s	$f5,$f1,$f13
    bnez	$a6,.L0da5ab7c
    # Line 691
    swc1	$f0,-4($a3)
.L0da5ab9c:
    sra	$a1,$t1,0x2
    move	$a6,$a3
    beqz	$a1,.L0da5ac10
    mov.s	$f6,$f5
    move	$a3,$a6
    mov.s	$f4,$f6
.L0da5abb4:
    # Line 690
    lwc1	$f6,12($a3)
    # Line 691
    mul.s	$f5,$f9,$f6
    # Line 690
    lwc1	$f3,8($a3)
    mul.s	$f0,$f3,$f13
    # Line 691
    mul.s	$f3,$f9,$f3
    # Line 690
    lwc1	$f2,4($a3)
    mul.s	$f8,$f2,$f13
    # Line 691
    mul.s	$f2,$f9,$f2
    # Line 690
    lwc1	$f1,0($a3)
    mul.s	$f7,$f1,$f13
    # Line 691
    add.s	$f5,$f5,$f0
    mul.s	$f1,$f9,$f1
    add.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f7
    # Line 688
    addiu	$a3,$a3,16
    # Line 691
    add.s	$f1,$f1,$f4
    # Line 690
    mul.s	$f4,$f6,$f13
    # Line 691
    swc1	$f5,-4($a3)
    swc1	$f3,-8($a3)
    swc1	$f2,-12($a3)
    # Line 688
    bne	$a3,$a4,.L0da5abb4
    # Line 691
    swc1	$f1,-16($a3)
    mov.s	$f5,$f4
.L0da5ac10:
    # Line 688
    move	$a3,$a5
.L0da5ac14:
    # Line 685
    addiu	$t0,$t0,1
    addiu	$a7,$a7,4
    addiu	$a5,$a5,1
    # Line 693
    sll	$at,$a3,0x2
    addu	$at,$at,$a2
    # Line 685
    beq	$a0,$a5,.L0da5ac68
    # Line 693
    swc1	$f5,0($at)
.L0da5ac30:
    # Line 686
    lwc1	$f5,0($a2)
    # Line 688
    li	$a3,1
    # Line 687
    mul.s	$f0,$f5,$f9
    # Line 688
    addu	$a4,$a7,$a2
    move	$t1,$t0
    andi	$a6,$t0,0x3
    slti	$v0,$a5,2
    # Line 686
    mul.s	$f5,$f5,$f13
    # Line 688
    bnez	$v0,.L0da5ac14
    # Line 687
    swc1	$f0,0($a2)
    beqz	$a6,.L0da5ab9c
    # Line 688
    addiu	$a3,$a2,4
    b	.L0da5ab80
    # Line 690
    lwc1	$f1,0($a3)
.L0da5ac68:
    # Line 695
    jr	$ra
    nop
.L0da5ac70:
    # Line 677
    jr	$ra
    # Line 676
    swc1	$f4,0($a2)
.L0da5ac78:
    # Line 683
    jr	$ra
    nop
.end PreEvaluate

# Function: PreEvaluateWithDeriv
# Declared: Line 700 (Source lines: 702-757)
# Address: 0x0da5ac80 - 0x0da5af70 (Size: 752 bytes, Frame: 0)
.ent PreEvaluateWithDeriv
PreEvaluateWithDeriv:
    # Line 702
    li	$at,1
    beq	$a0,$at,.L0da5af60
    lwc1	$f4,_lit_3f800000
    # Line 716
    li	$v0,2
    beq	$a0,$v0,.L0da5af48
    sub.s	$f9,$f4,$f13
    # Line 724
    mov.s	$f4,$f9
    # Line 726
    li	$a6,2
    # Line 725
    swc1	$f13,4($a2)
    # Line 726
    slti	$v1,$a0,4
    bnez	$v1,.L0da5af40
    # Line 724
    swc1	$f9,0($a2)
    # Line 726
    addiu	$t3,$a0,-1
    li	$t0,8
    b	.L0da5ad74
    li	$t1,1
.L0da5acc0:
    # Line 731
    lwc1	$f1,0($a4)
.L0da5acc4:
    # Line 732
    mul.s	$f0,$f9,$f1
    # Line 729
    addiu	$a4,$a4,4
    # Line 732
    add.s	$f0,$f0,$f5
    addi	$a7,$a7,-1
    # Line 731
    mul.s	$f5,$f1,$f13
    bnez	$a7,.L0da5acc0
    # Line 732
    swc1	$f0,-4($a4)
.L0da5ace0:
    sra	$a1,$t2,0x2
    move	$a7,$a4
    beqz	$a1,.L0da5ad54
    mov.s	$f6,$f5
    move	$a4,$a7
    mov.s	$f4,$f6
.L0da5acf8:
    # Line 731
    lwc1	$f6,12($a4)
    # Line 732
    mul.s	$f5,$f9,$f6
    # Line 731
    lwc1	$f3,8($a4)
    mul.s	$f0,$f3,$f13
    # Line 732
    mul.s	$f3,$f9,$f3
    # Line 731
    lwc1	$f2,4($a4)
    mul.s	$f8,$f2,$f13
    # Line 732
    mul.s	$f2,$f9,$f2
    # Line 731
    lwc1	$f1,0($a4)
    mul.s	$f7,$f1,$f13
    # Line 732
    add.s	$f5,$f5,$f0
    mul.s	$f1,$f9,$f1
    add.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f7
    # Line 729
    addiu	$a4,$a4,16
    # Line 732
    add.s	$f1,$f1,$f4
    # Line 731
    mul.s	$f4,$f6,$f13
    # Line 732
    swc1	$f5,-4($a4)
    swc1	$f3,-8($a4)
    swc1	$f2,-12($a4)
    # Line 729
    bne	$a4,$a5,.L0da5acf8
    # Line 732
    swc1	$f1,-16($a4)
    mov.s	$f5,$f4
.L0da5ad54:
    # Line 729
    move	$a4,$a6
.L0da5ad58:
    # Line 726
    addiu	$t1,$t1,1
    addiu	$t0,$t0,4
    addiu	$a6,$a6,1
    # Line 734
    sll	$at,$a4,0x2
    addu	$at,$at,$a2
    # Line 726
    beq	$t3,$a6,.L0da5adac
    # Line 734
    swc1	$f5,0($at)
.L0da5ad74:
    # Line 727
    lwc1	$f5,0($a2)
    # Line 729
    li	$a4,1
    # Line 728
    mul.s	$f0,$f5,$f9
    # Line 729
    addu	$a5,$t0,$a2
    move	$t2,$t1
    andi	$a7,$t1,0x3
    slti	$v0,$a6,2
    # Line 727
    mul.s	$f5,$f5,$f13
    # Line 729
    bnez	$v0,.L0da5ad58
    # Line 728
    swc1	$f0,0($a2)
    beqz	$a7,.L0da5ace0
    # Line 729
    addiu	$a4,$a2,4
    b	.L0da5acc4
    # Line 731
    lwc1	$f1,0($a4)
.L0da5adac:
    # Line 726
    move	$a6,$t3
    lwc1	$f4,0($a2)
.L0da5adb4:
    # Line 736
    addiu	$t1,$a0,-2
    li	$t0,1
    slt	$a7,$t1,$t0
    beqzl	$a7,.L0da5adc8
    move	$t0,$t1
.L0da5adc8:
    addiu	$a7,$a3,4
    sll	$a5,$t3,0x2
    addu	$a5,$a5,$a2
    addiu	$t8,$a2,4
    move	$a4,$t8
    neg.s	$f0,$f4
    move	$t1,$t0
    andi	$v1,$t0,0x1
    beqz	$v1,.L0da5ae08
    swc1	$f0,0($a3)
    # Line 744
    lwc1	$f1,-4($a4)
    lwc1	$f2,0($a4)
    sub.s	$f1,$f1,$f2
    # Line 745
    addiu	$a4,$a4,4
    addiu	$a7,$a7,4
    # Line 744
    swc1	$f1,-4($a7)
.L0da5ae08:
    move	$t3,$a7
    sra	$at,$t1,0x1
    beqz	$at,.L0da5ae50
    move	$t2,$a4
    move	$a4,$t3
    move	$a0,$t2
.L0da5ae20:
    lwc1	$f1,-4($a0)
    lwc1	$f2,0($a0)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    lwc1	$f3,0($a0)
    lwc1	$f0,4($a0)
    # Line 745
    addiu	$a4,$a4,8
    # Line 744
    sub.s	$f3,$f3,$f0
    # Line 745
    addiu	$a0,$a0,8
    sltu	$v0,$a0,$a5
    bnez	$v0,.L0da5ae20
    # Line 744
    swc1	$f3,-4($a4)
.L0da5ae50:
    # Line 747
    sll	$a1,$t0,0x2
    addu	$a4,$a1,$a2
    lwc1	$f0,0($a4)
    addu	$a1,$a1,$a3
    swc1	$f0,4($a1)
    # Line 749
    lwc1	$f5,0($a2)
    # Line 750
    mul.s	$f3,$f5,$f9
    # Line 751
    li	$a4,1
    slti	$v1,$a6,2
    # Line 749
    mul.s	$f5,$f5,$f13
    # Line 751
    bnez	$v1,.L0da5af30
    # Line 750
    swc1	$f3,0($a2)
    # Line 751
    move	$a4,$t8
    sll	$a5,$a6,0x2
    addiu	$a3,$a6,-1
    andi	$a0,$a3,0x3
    beqz	$a0,.L0da5aeb8
    addu	$a5,$a5,$a2
.L0da5ae98:
    # Line 753
    lwc1	$f2,0($a4)
    # Line 754
    mul.s	$f1,$f9,$f2
    # Line 751
    addiu	$a4,$a4,4
    # Line 754
    add.s	$f1,$f1,$f5
    addi	$a0,$a0,-1
    # Line 753
    mul.s	$f5,$f2,$f13
    bnez	$a0,.L0da5ae98
    # Line 754
    swc1	$f1,-4($a4)
.L0da5aeb8:
    move	$a7,$a4
    sra	$at,$a3,0x2
    beqz	$at,.L0da5af2c
    mov.s	$f6,$f5
    move	$a0,$a7
    mov.s	$f4,$f6
.L0da5aed0:
    # Line 753
    lwc1	$f7,12($a0)
    # Line 754
    mul.s	$f6,$f9,$f7
    # Line 753
    lwc1	$f5,8($a0)
    mul.s	$f1,$f5,$f13
    # Line 754
    mul.s	$f5,$f9,$f5
    # Line 753
    lwc1	$f3,4($a0)
    mul.s	$f0,$f3,$f13
    # Line 754
    mul.s	$f3,$f9,$f3
    # Line 753
    lwc1	$f2,0($a0)
    mul.s	$f8,$f2,$f13
    # Line 754
    add.s	$f6,$f6,$f1
    mul.s	$f2,$f9,$f2
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f8
    # Line 751
    addiu	$a0,$a0,16
    # Line 754
    add.s	$f2,$f2,$f4
    # Line 753
    mul.s	$f4,$f7,$f13
    # Line 754
    swc1	$f6,-4($a0)
    swc1	$f5,-8($a0)
    swc1	$f3,-12($a0)
    # Line 751
    bne	$a0,$a5,.L0da5aed0
    # Line 754
    swc1	$f2,-16($a0)
    mov.s	$f5,$f4
.L0da5af2c:
    # Line 751
    move	$a4,$a6
.L0da5af30:
    # Line 756
    sll	$v0,$a4,0x2
    addu	$v0,$v0,$a2
    # Line 757
    jr	$ra
    # Line 756
    swc1	$f5,0($v0)
.L0da5af40:
    b	.L0da5adb4
    # Line 726
    addiu	$t3,$a0,-1
.L0da5af48:
    # Line 718
    lwc1	$f0,_lit_bf800000
    # Line 719
    swc1	$f4,4($a3)
    # Line 718
    swc1	$f0,0($a3)
    # Line 721
    swc1	$f13,4($a2)
    # Line 722
    jr	$ra
    # Line 720
    swc1	$f9,0($a2)
.L0da5af60:
    # Line 715
    mtc1	$zero,$f1
    # Line 714
    swc1	$f4,0($a2)
    # Line 716
    jr	$ra
    # Line 715
    swc1	$f1,0($a3)
.end PreEvaluateWithDeriv

# Function: DoDomain1
# Declared: Line 768 (Source lines: 770-798)
# Address: 0x0da5af70 - 0x0da5b0a4 (Size: 308 bytes, Frame: 224)
.ent DoDomain1
DoDomain1:
    # Line 770
    lwc1	$f5,12($a2)
    lwc1	$f6,8($a2)
    addiu	$sp,$sp,-96
    sd	$s1,8($sp)
    c.eq.s	$f6,$f5
    move	$s1,$a0
    sd	$s0,16($sp)
    bc1t	.L0da5b094
    move	$s0,$a2
    # Line 778
    sub.s	$f4,$f13,$f6
    sub.s	$f0,$f5,$f6
    div.s	$f4,$f4,$f0
    # Line 781
    lwc1	$f0,756($s1)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0da5afc0
    lw	$a0,4($s0)
    lw	$at,1404($s1)
    beq	$at,$a0,.L0da5b008
    sdc1	$f4,0($sp)
.L0da5afc0:
    sd	$a4,32($sp)
    sd	$a3,24($sp)
    sdc1	$f4,0($sp)
    # Line 783
    # lw $t9, -32744($gp) # &sub_0da60000
    mov.s	$f13,$f4
    sd	$ra,40($sp)
    addiu	$t9,$t9,-21692
    bal __glexpim_EvalPoint2
    addiu	$a2,$s1,764
    ld	$a3,24($sp)
    # Line 784
    li	$at,2
    sw	$at,1412($s1)
    # Line 786
    ldc1	$f1,0($sp)
    # Line 785
    lw	$ra,4($s0)
    ld	$a4,32($sp)
    # Line 786
    swc1	$f1,756($s1)
    # Line 785
    sw	$ra,1404($s1)
    ld	$ra,40($sp)
.L0da5b008:
    # Line 789
    lw	$a2,0($s0)
    blez	$a2,.L0da5b084
    move	$a0,$a2
    mtc1	$zero,$f5
    move	$a5,$a3
    move	$a7,$a4
    sll	$a6,$a0,0x2
    b	.L0da5b060
    addu	$t0,$a6,$a4
.L0da5b02c:
    # Line 794
    lwc1	$f2,0($a0)
    lwc1	$f3,764($a3)
    mul.s	$f2,$f2,$f3
    add.s	$f4,$f2,$f4
    swc1	$f4,0($a5)
    # Line 793
    lw	$v0,4($s0)
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    slt	$v0,$a2,$v0
    bnez	$v0,.L0da5b02c
    # Line 795
    addu	$a0,$a6,$a0
.L0da5b058:
    # Line 790
    beq	$a7,$t0,.L0da5b084
    addiu	$a5,$a5,4
.L0da5b060:
    # Line 792
    swc1	$f5,0($a5)
    mov.s	$f4,$f5
    # Line 793
    lw	$v1,4($s0)
    # Line 791
    move	$a0,$a7
    # Line 790
    addiu	$a7,$a7,4
    # Line 793
    blez	$v1,.L0da5b058
    move	$a2,$zero
    b	.L0da5b02c
    move	$a3,$s1
.L0da5b084:
    # Line 798
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da5b094:
    # Line 777
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end DoDomain1

# Function: DoEvalCoord1
# Declared: Line 800 (Source lines: 801-875)
# Address: 0x0da5b0a4 - 0x0da5b420 (Size: 892 bytes, Frame: 128)
.ent DoEvalCoord1
DoEvalCoord1:
    # Line 805
    li	$a3,177
    move	$a2,$zero
    addiu	$a4,$a0,28240
    # Line 801
    addiu	$sp,$sp,-1536
    sd	$s0,1496($sp)
    move	$s0,$a0
    sdc1	$f20,1488($sp)
    mov.s	$f20,$f13
    # Line 805
    addiu	$a5,$sp,0
    # Line 804
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f2,416($a0)
    lwc1	$f1,412($a0)
    sdc1	$f3,1472($sp)
    sdc1	$f2,1456($sp)
    sdc1	$f1,1464($sp)
    sdc1	$f0,1480($sp)
.L0da5b0e8:
    # Line 805
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a4
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da5b0e8
    sd	$at,0($v0)
    addu	$v1,$a2,$a4
    lw	$v1,0($v1)
    addu	$a0,$a2,$a5
    sw	$v1,0($a0)
    lbu	$v0,3105($s0)
    beqz	$v0,.L0da5b350
    lw	$a0,1712($s0)
    andi	$a1,$a0,0x2
    beqz	$a1,.L0da5b300
    sd	$s1,1512($sp)
    # Line 809
    lw	$a4,28820($s0)
    addiu	$a3,$s0,168
    addiu	$a2,$s0,28264
    mov.s	$f13,$f20
    la	$s1,sub_0da60000
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    addiu	$s1,$s1,-20624
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    lw	$a0,1712($s0)
    ld	$ra,1504($sp)
.L0da5b15c:
    # Line 821
    andi	$at,$a0,0x40
    beqz	$at,.L0da5b27c
    # Line 827
    andi	$v1,$a0,0x20
    lw	$a4,28840($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28384
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    lw	$a0,1712($s0)
    ld	$ra,1504($sp)
.L0da5b190:
    # Line 843
    andi	$v0,$a0,0x4
.L0da5b194:
    beqz	$v0,.L0da5b1b8
    sd	$ra,1504($sp)
    # Line 847
    lw	$a4,28824($s0)
    addiu	$a3,$s0,184
    addiu	$a2,$s0,28288
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    bal __glexpim_EvalPoint2
    move	$t9,$s1
.L0da5b1b8:
    # Line 851
    # lw $t9, -32356($gp) # &__glExpEvalPassCurrentState
    bal __glExpEvalPassCurrentState
    move	$a0,$s0
    lw	$a0,1712($s0)
    ld	$ra,1504($sp)
    andi	$v1,$a0,0x100
    beqz	$v1,.L0da5b2b8
    # Line 857
    andi	$a1,$a0,0x80
    # Line 856
    lw	$a4,28848($s0)
    addiu	$a3,$sp,1424
    addiu	$a2,$s0,28432
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 857
    lw	$t9,5580($s0)
    lw	$t9,1560($t9)
    addiu	$a0,$sp,1424
    ldc1	$f20,1488($sp)
    jal	__glExpEvalPassCurrentState
    ld	$s1,1512($sp)
    lw	$a0,1712($s0)
    ld	$ra,1504($sp)
.L0da5b214:
    ldc1	$f20,1488($sp)
.L0da5b218:
    # Line 862
    andi	$at,$a0,0x1
    beqz	$at,.L0da5b270
    ld	$s1,1512($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0da5b274
    # Line 875
    ld	$s0,1496($sp)
    # Line 869
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 873
    move	$a0,$s0
    # Line 872
    ldc1	$f4,1480($sp)
    # Line 873
    lw	$t9,12008($s0)
    # Line 872
    ldc1	$f7,1472($sp)
    ldc1	$f6,1456($sp)
    ldc1	$f5,1464($sp)
    swc1	$f7,420($s0)
    swc1	$f6,416($s0)
    swc1	$f5,412($s0)
    # Line 873
    jalr	$t9
    # Line 872
    swc1	$f4,408($s0)
    ld	$ra,1504($sp)
.L0da5b270:
    # Line 875
    ld	$s0,1496($sp)
.L0da5b274:
    jr	$ra
    addiu	$sp,$sp,1536
.L0da5b27c:
    # Line 827
    beqz	$v1,.L0da5b30c
    # Line 832
    andi	$at,$a0,0x10
    # Line 830
    lw	$a4,28836($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28360
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 832
    lw	$a0,1712($s0)
    lwc1	$f0,3284($s0)
    ld	$ra,1504($sp)
    b	.L0da5b190
    swc1	$f0,212($s0)
.L0da5b2b8:
    # Line 857
    beqzl	$a1,.L0da5b218
    ldc1	$f20,1488($sp)
    # Line 861
    lw	$a4,28844($s0)
    addiu	$a3,$sp,1440
    addiu	$a2,$s0,28408
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 862
    lw	$t9,5580($s0)
    lw	$t9,1528($t9)
    addiu	$a0,$sp,1440
    ldc1	$f20,1488($sp)
    jalr	$t9
    ld	$s1,1512($sp)
    lw	$a0,1712($s0)
    b	.L0da5b214
    ld	$ra,1504($sp)
.L0da5b300:
    # Line 809
    la	$s1,sub_0da60000
    b	.L0da5b15c
    addiu	$s1,$s1,-20624
.L0da5b30c:
    # Line 832
    beqz	$at,.L0da5b3a8
    # Line 837
    andi	$v0,$a0,0x8
    # Line 834
    lw	$a4,28832($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28336
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 837
    lw	$a0,1712($s0)
    lwc1	$f2,3284($s0)
    ld	$ra,1504($sp)
    # Line 836
    mtc1	$zero,$f1
    # Line 837
    swc1	$f2,212($s0)
    b	.L0da5b190
    # Line 836
    swc1	$f1,208($s0)
.L0da5b350:
    # Line 809
    andi	$v0,$a0,0x1
    beqz	$v0,.L0da5b3f0
    sd	$s1,1512($sp)
    # Line 815
    lw	$a4,28816($s0)
    addiu	$a3,$s0,408
    addiu	$a2,$s0,28240
    mov.s	$f13,$f20
    la	$s1,sub_0da60000
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    addiu	$s1,$s1,-20624
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 817
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqz	$at,.L0da5b3fc
    ld	$ra,1504($sp)
.L0da5b3a0:
    # Line 821
    b	.L0da5b15c
    lw	$a0,1712($s0)
.L0da5b3a8:
    # Line 837
    beqz	$v0,.L0da5b194
    # Line 843
    andi	$v0,$a0,0x4
    # Line 839
    lw	$a4,28828($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28312
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1504($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$s1
    # Line 843
    lw	$a0,1712($s0)
    lwc1	$f0,3284($s0)
    # Line 841
    mtc1	$zero,$f3
    ld	$ra,1504($sp)
    # Line 843
    swc1	$f0,212($s0)
    # Line 842
    swc1	$f3,208($s0)
    b	.L0da5b190
    # Line 841
    swc1	$f3,204($s0)
.L0da5b3f0:
    # Line 821
    la	$s1,sub_0da60000
    b	.L0da5b15c
    addiu	$s1,$s1,-20624
.L0da5b3fc:
    ldc1	$f1,1480($sp)
    ldc1	$f0,1472($sp)
    ldc1	$f3,1456($sp)
    ldc1	$f2,1464($sp)
    swc1	$f0,420($s0)
    swc1	$f3,416($s0)
    swc1	$f2,412($s0)
    b	.L0da5b3a0
    swc1	$f1,408($s0)
.end DoEvalCoord1

# Function: __glExpDoEvalCoord1
# Declared: Line 877 (Source lines: 878-892)
# Address: 0x0da5b420 - 0x0da5b52c (Size: 268 bytes, Frame: 144)
.globl __glExpDoEvalCoord1
.ent __glExpDoEvalCoord1
__glExpDoEvalCoord1:
    # Line 878
    addiu	$sp,$sp,-144
    sdc1	$f30,0($sp)
    sd	$s8,104($sp)
    move	$s8,$a0
    # Line 882
    lwc1	$f30,168($s8)
    lwc1	$f0,172($s8)
    lwc1	$f1,176($s8)
    lwc1	$f2,180($s8)
    # Line 883
    lwc1	$f3,184($s8)
    lwc1	$f4,188($s8)
    lwc1	$f5,192($s8)
    lwc1	$f6,196($s8)
    # Line 884
    lwc1	$f7,200($s8)
    lwc1	$f10,212($s8)
    lwc1	$f9,208($s8)
    lwc1	$f8,204($s8)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    sdc1	$f4,56($sp)
    sdc1	$f3,64($sp)
    # sd	gp,112(sp)
    sd	$ra,96($sp)
    # Line 878
    lui	$ra,0x1a
    addiu	$ra,$ra,-15288
    # addu	gp,t9,ra
    # Line 886
    # lw $t9, -32744($gp) # &sub_0da60000
    sdc1	$f2,72($sp)
    sdc1	$f1,80($sp)
    addiu	$t9,$t9,-20316
    bal __glexpim_EvalPoint2
    sdc1	$f0,88($sp)
    # Line 891
    move	$a0,$s8
    # Line 888
    swc1	$f30,168($s8)
    ldc1	$f11,88($sp)
    # Line 891
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 888
    ldc1	$f12,80($sp)
    ldc1	$f13,72($sp)
    # Line 889
    ldc1	$f14,64($sp)
    ldc1	$f15,56($sp)
    ldc1	$f16,48($sp)
    ldc1	$f17,40($sp)
    # Line 890
    ldc1	$f18,32($sp)
    ldc1	$f23,8($sp)
    ldc1	$f21,16($sp)
    ldc1	$f19,24($sp)
    swc1	$f23,212($s8)
    swc1	$f21,208($s8)
    swc1	$f19,204($s8)
    swc1	$f18,200($s8)
    # Line 889
    swc1	$f17,196($s8)
    swc1	$f16,192($s8)
    swc1	$f15,188($s8)
    swc1	$f14,184($s8)
    # Line 888
    swc1	$f13,180($s8)
    swc1	$f12,176($s8)
    # Line 891
    bal __glExpEvalRestoreCurrentState
    # Line 888
    swc1	$f11,172($s8)
    # ld	gp,112(sp)
    # Line 892
    ld	$ra,96($sp)
    ld	$s8,104($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glExpDoEvalCoord1

# Function: ComputeFirstPartials
# Declared: Line 894 (Source lines: 896-903)
# Address: 0x0da5b52c - 0x0da5b5e0 (Size: 180 bytes, Frame: 0)
.ent ComputeFirstPartials
ComputeFirstPartials:
    # Line 896
    lwc1	$f3,12($a0)
    lwc1	$f2,0($a1)
    lwc1	$f4,12($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($a0)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 897
    lwc1	$f0,4($a1)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a0)
    mul.s	$f1,$f1,$f4
    sub.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 898
    lwc1	$f2,8($a1)
    lwc1	$f3,12($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a0)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 900
    lwc1	$f1,12($a0)
    lwc1	$f0,0($a2)
    lwc1	$f2,12($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,0($a0)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 901
    lwc1	$f3,4($a2)
    lwc1	$f4,12($a0)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,4($a0)
    mul.s	$f4,$f4,$f2
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    # Line 902
    lwc1	$f0,8($a2)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($a0)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    # Line 903
    jr	$ra
    # Line 902
    swc1	$f0,8($a2)
.end ComputeFirstPartials

# Function: ComputeNormal2
# Declared: Line 905 (Source lines: 907-912)
# Address: 0x0da5b5e0 - 0x0da5b664 (Size: 132 bytes, Frame: 48)
.ent ComputeNormal2
ComputeNormal2:
    # Line 908
    lwc1	$f5,8($a3)
    lwc1	$f4,4($a2)
    lwc1	$f6,8($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f5,4($a3)
    mul.s	$f5,$f5,$f6
    sub.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 909
    lwc1	$f3,8($a2)
    lwc1	$f2,0($a3)
    lwc1	$f4,8($a3)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 910
    lwc1	$f1,4($a3)
    lwc1	$f0,0($a2)
    lwc1	$f2,4($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    # Line 907
    move	$t9,$a0
    # Line 911
    lw	$t9,11912($t9)
    # Line 907
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 911
    jalr	$t9
    # Line 907
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 912
    jr	$ra
    addiu	$sp,$sp,48
.end ComputeNormal2

# Function: DoDomain2
# Declared: Line 914 (Source lines: 916-964)
# Address: 0x0da5b664 - 0x0da5b8dc (Size: 632 bytes, Frame: 240)
.ent DoDomain2
DoDomain2:
    # Line 916
    addiu	$sp,$sp,-112
    sd	$s1,32($sp)
    # Line 924
    lwc1	$f6,16($a3)
    lwc1	$f5,12($a3)
    # Line 916
    move	$s1,$a0
    sd	$s0,40($sp)
    # Line 924
    c.eq.s	$f5,$f6
    # Line 916
    move	$s0,$a3
    sd	$a4,24($sp)
    # Line 924
    bc1t	.L0da5b888
    sd	$a5,16($sp)
    lwc1	$f8,20($s0)
    lwc1	$f7,24($s0)
    c.eq.s	$f8,$f7
    nop
    bc1tl	.L0da5b88c
    # Line 925
    ld	$s0,40($sp)
    # Line 926
    sub.s	$f0,$f6,$f5
    sub.s	$f4,$f13,$f5
    div.s	$f4,$f4,$f0
    # Line 927
    sub.s	$f1,$f7,$f8
    sub.s	$f0,$f14,$f8
    div.s	$f0,$f0,$f1
    # Line 932
    lwc1	$f2,756($s1)
    c.eq.s	$f2,$f4
    lw	$a0,4($s0)
    bc1f	.L0da5b898
    sdc1	$f0,0($sp)
    lw	$at,1404($s1)
    bne	$at,$a0,.L0da5b898
    sdc1	$f4,8($sp)
    # Line 936
    la	$a3,sub_0da60000
    addiu	$a3,$a3,-21692
.L0da5b6e8:
    # Line 938
    ldc1	$f2,0($sp)
    lwc1	$f1,760($s1)
    c.eq.s	$f1,$f2
    nop
    bc1f	.L0da5b70c
    lw	$a0,8($s0)
    lw	$at,1408($s1)
    beql	$at,$a0,.L0da5b740
    # Line 945
    lw	$a2,0($s0)
.L0da5b70c:
    # Line 939
    ldc1	$f13,0($sp)
    addiu	$a2,$s1,924
    sd	$ra,48($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$a3
    # Line 940
    li	$v1,2
    sw	$v1,1416($s1)
    # Line 942
    ldc1	$f3,0($sp)
    # Line 941
    lw	$v0,8($s0)
    ld	$ra,48($sp)
    # Line 942
    swc1	$f3,760($s1)
    # Line 941
    sw	$v0,1408($s1)
    # Line 945
    lw	$a2,0($s0)
.L0da5b740:
    blez	$a2,.L0da5b878
    move	$a0,$a2
    mtc1	$zero,$f8
    ld	$t3,16($sp)
    ld	$t1,24($sp)
    sll	$a3,$a0,0x2
    move	$t2,$t3
    b	.L0da5b770
    addu	$t3,$a3,$t3
.L0da5b764:
    # Line 946
    addiu	$t2,$t2,4
    beq	$t2,$t3,.L0da5b878
    addiu	$t1,$t1,4
.L0da5b770:
    # Line 948
    swc1	$f8,0($t1)
    # Line 949
    lw	$at,4($s0)
    # Line 947
    move	$a2,$t2
    # Line 948
    mov.s	$f6,$f8
    # Line 949
    blez	$at,.L0da5b764
    move	$a6,$zero
    b	.L0da5b810
    move	$a7,$s1
.L0da5b790:
    move	$t8,$a5
.L0da5b794:
    sra	$v0,$t0,0x1
    mov.s	$f7,$f5
    beqz	$v0,.L0da5b7ec
    move	$t9,$a2
    mov.s	$f4,$f7
    move	$a2,$t8
    move	$a0,$t9
.L0da5b7b0:
    # Line 959
    addu	$a1,$a3,$a0
    # Line 958
    lwc1	$f1,0($a0)
    lwc1	$f3,924($a2)
    lwc1	$f0,0($a1)
    lwc1	$f2,928($a2)
    mul.s	$f1,$f1,$f3
    mul.s	$f0,$f0,$f2
    # Line 959
    addu	$a0,$a3,$a1
    # Line 958
    add.s	$f4,$f1,$f4
    # Line 957
    addiu	$a2,$a2,8
    sltu	$v1,$a2,$a4
    bnez	$v1,.L0da5b7b0
    # Line 958
    add.s	$f4,$f0,$f4
    mov.s	$f5,$f4
    move	$a2,$a0
.L0da5b7ec:
    # Line 949
    addiu	$a6,$a6,1
    # Line 961
    lwc1	$f0,764($a7)
    mul.s	$f0,$f0,$f5
    add.s	$f6,$f0,$f6
    swc1	$f6,0($t1)
    # Line 949
    lw	$at,4($s0)
    slt	$at,$a6,$at
    beqz	$at,.L0da5b764
    addiu	$a7,$a7,4
.L0da5b810:
    # Line 955
    lwc1	$f5,0($a2)
    # Line 956
    lw	$a0,8($s0)
    addu	$a2,$a3,$a2
    # Line 955
    lwc1	$f0,924($s1)
    # Line 956
    addiu	$v1,$a0,-1
    sll	$a4,$a0,0x2
    slti	$v0,$a0,2
    bnez	$v0,.L0da5b7ec
    # Line 955
    mul.s	$f5,$f5,$f0
    # Line 956
    li	$t0,1
    slt	$v0,$v1,$t0
    beqzl	$v0,.L0da5b844
    move	$t0,$v1
.L0da5b844:
    addu	$a4,$a4,$s1
    addiu	$a5,$s1,4
    andi	$at,$t0,0x1
    beqz	$at,.L0da5b794
    move	$t8,$a5
    # Line 958
    lwc1	$f2,924($a5)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    # Line 957
    addiu	$a5,$a5,4
    # Line 959
    addu	$a2,$a3,$a2
    # Line 958
    add.s	$f5,$f1,$f5
    b	.L0da5b790
    nop
.L0da5b878:
    # Line 964
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da5b888:
    # Line 925
    ld	$s0,40($sp)
.L0da5b88c:
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da5b898:
    sdc1	$f4,8($sp)
    # Line 932
    # lw $t9, -32744($gp) # &sub_0da60000
    # Line 933
    addiu	$a2,$s1,764
    sd	$ra,48($sp)
    # Line 932
    addiu	$t9,$t9,-21692
    # Line 933
    bal __glexpim_EvalPoint2
    mov.s	$f13,$f4
    la	$a3,sub_0da60000
    # Line 934
    li	$at,2
    sw	$at,1412($s1)
    # Line 936
    ldc1	$f3,8($sp)
    # Line 935
    lw	$ra,4($s0)
    addiu	$a3,$a3,-21692
    # Line 936
    swc1	$f3,756($s1)
    # Line 935
    sw	$ra,1404($s1)
    # Line 936
    b	.L0da5b6e8
    ld	$ra,48($sp)
.end DoDomain2

# Function: DoDomain2WithDerivs
# Declared: Line 966 (Source lines: 969-1026)
# Address: 0x0da5b8dc - 0x0da5bb74 (Size: 664 bytes, Frame: 144)
.ent DoDomain2WithDerivs
DoDomain2WithDerivs:
    # Line 969
    addiu	$sp,$sp,-144
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s0,56($sp)
    # Line 978
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    # Line 969
    move	$s0,$a3
    sd	$a4,16($sp)
    # Line 978
    c.eq.s	$f4,$f5
    sd	$a5,24($sp)
    sd	$a6,32($sp)
    bc1t	.L0da5bb64
    sd	$a7,40($sp)
    lwc1	$f7,20($s0)
    lwc1	$f6,24($s0)
    c.eq.s	$f7,$f6
    nop
    bc1tl	.L0da5bb68
    # Line 979
    ld	$s0,56($sp)
    # Line 980
    sub.s	$f0,$f5,$f4
    sub.s	$f3,$f13,$f4
    div.s	$f3,$f3,$f0
    # Line 981
    sub.s	$f1,$f6,$f7
    sub.s	$f0,$f14,$f7
    div.s	$f0,$f0,$f1
    # Line 986
    lwc1	$f2,756($s1)
    c.eq.s	$f2,$f3
    li	$a0,1
    sdc1	$f3,8($sp)
    bc1f	.L0da5b97c
    sdc1	$f0,0($sp)
    lw	$at,1412($s1)
    bne	$at,$a0,.L0da5b984
    lw	$t0,4($s0)
    lw	$v0,1404($s1)
    bne	$v0,$t0,.L0da5b988
    # Line 988
    addiu	$a3,$s1,1084
    # Line 991
    la	$t0,sub_0da60000
    b	.L0da5b9c8
    addiu	$t0,$t0,-21376
.L0da5b97c:
    sd	$ra,64($sp)
    # Line 986
    lw	$t0,4($s0)
.L0da5b984:
    # Line 988
    addiu	$a3,$s1,1084
.L0da5b988:
    addiu	$a2,$s1,764
    # Line 986
    # lw $t9, -32744($gp) # &sub_0da60000
    # Line 988
    ldc1	$f13,8($sp)
    sd	$ra,64($sp)
    # Line 986
    addiu	$t9,$t9,-21376
    # Line 988
    bal __glexpim_EvalPoint2
    move	$a0,$t0
    la	$t0,sub_0da60000
    li	$a0,1
    # Line 989
    sw	$a0,1412($s1)
    # Line 991
    ldc1	$f1,8($sp)
    # Line 990
    lw	$ra,4($s0)
    addiu	$t0,$t0,-21376
    # Line 991
    swc1	$f1,756($s1)
    # Line 990
    sw	$ra,1404($s1)
    ld	$ra,64($sp)
.L0da5b9c8:
    # Line 993
    ldc1	$f3,0($sp)
    lwc1	$f2,760($s1)
    c.eq.s	$f2,$f3
    nop
    bc1fl	.L0da5ba00
    sd	$ra,64($sp)
    lw	$t1,1416($s1)
    bne	$t1,$a0,.L0da5ba04
    lw	$t1,8($s0)
    lw	$at,1408($s1)
    beql	$at,$t1,.L0da5ba40
    # Line 1001
    lw	$a3,0($s0)
    b	.L0da5ba04
    sd	$ra,64($sp)
.L0da5ba00:
    # Line 993
    lw	$t1,8($s0)
.L0da5ba04:
    # Line 995
    move	$a0,$t1
    ldc1	$f13,0($sp)
    addiu	$a3,$s1,1244
    addiu	$a2,$s1,924
    sd	$ra,64($sp)
    bal __glexpim_EvalPoint2
    move	$t9,$t0
    li	$v1,1
    # Line 996
    sw	$v1,1416($s1)
    # Line 998
    ldc1	$f0,0($sp)
    # Line 997
    lw	$v0,8($s0)
    ld	$ra,64($sp)
    # Line 998
    swc1	$f0,760($s1)
    # Line 997
    sw	$v0,1408($s1)
    # Line 1001
    lw	$a3,0($s0)
.L0da5ba40:
    blez	$a3,.L0da5bb54
    move	$a2,$a3
    mtc1	$zero,$f6
    ld	$a0,16($sp)
    ld	$a7,24($sp)
    ld	$t3,40($sp)
    ld	$t0,32($sp)
    sll	$a4,$a2,0x2
    move	$t2,$t3
    b	.L0da5ba80
    addu	$t3,$a4,$t3
.L0da5ba6c:
    # Line 1002
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$t2,$t2,4
    beq	$t2,$t3,.L0da5bb54
    addiu	$a0,$a0,4
.L0da5ba80:
    # Line 1004
    swc1	$f6,0($t0)
    swc1	$f6,0($a7)
    swc1	$f6,0($a0)
    # Line 1005
    lw	$at,4($s0)
    # Line 1003
    move	$a2,$t2
    # Line 1005
    blez	$at,.L0da5ba6c
    move	$a6,$zero
    b	.L0da5bb24
    move	$t8,$s1
.L0da5baa4:
    # Line 1013
    addiu	$a3,$s1,4
.L0da5baa8:
    # Line 1017
    lwc1	$f2,1244($a3)
    # Line 1016
    lwc1	$f3,0($a2)
    # Line 1017
    mul.s	$f2,$f2,$f3
    # Line 1016
    lwc1	$f1,924($a3)
    mul.s	$f1,$f1,$f3
    # Line 1018
    addu	$a2,$a4,$a2
    # Line 1014
    addiu	$a3,$a3,4
    # Line 1017
    add.s	$f4,$f2,$f4
    # Line 1014
    sltu	$at,$a3,$a5
    bnez	$at,.L0da5baa8
    # Line 1016
    add.s	$f5,$f1,$f5
.L0da5bad4:
    # Line 1005
    addiu	$a6,$a6,1
    # Line 1021
    lwc1	$f0,764($t8)
    mul.s	$f0,$f0,$f5
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 1022
    lwc1	$f2,1084($t8)
    mul.s	$f2,$f2,$f5
    lwc1	$f1,0($a7)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a7)
    # Line 1023
    lwc1	$f0,764($t8)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($t0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($t0)
    # Line 1005
    lw	$v0,4($s0)
    slt	$v0,$a6,$v0
    beqz	$v0,.L0da5ba6c
    addiu	$t8,$t8,4
.L0da5bb24:
    # Line 1011
    lwc1	$f0,0($a2)
    # Line 1013
    addu	$a2,$a4,$a2
    # Line 1012
    lwc1	$f4,1244($s1)
    # Line 1013
    lw	$t1,8($s0)
    # Line 1011
    lwc1	$f5,924($s1)
    # Line 1012
    mul.s	$f4,$f4,$f0
    # Line 1013
    slti	$v1,$t1,2
    bnez	$v1,.L0da5bad4
    # Line 1011
    mul.s	$f5,$f5,$f0
    # Line 1013
    sll	$a5,$t1,0x2
    b	.L0da5baa4
    addu	$a5,$a5,$s1
.L0da5bb54:
    # Line 1026
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da5bb64:
    # Line 979
    ld	$s0,56($sp)
.L0da5bb68:
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end DoDomain2WithDerivs

# Function: DoEvalCoord2
# Declared: Line 1032 (Source lines: 1034-1187)
# Address: 0x0da5bb74 - 0x0da5c300 (Size: 1932 bytes, Frame: 224)
.ent DoEvalCoord2
DoEvalCoord2:
    # Line 1040
    li	$a4,177
    move	$a2,$zero
    addiu	$a5,$a0,28240
    # Line 1046
    lui	$a1,0x80
    # Line 1034
    addiu	$sp,$sp,-1632
    sd	$s0,1552($sp)
    move	$s0,$a0
    sdc1	$f20,1544($sp)
    mov.s	$f20,$f13
    sdc1	$f22,1536($sp)
    mov.s	$f22,$f14
    sd	$s1,1560($sp)
    move	$s1,$a3
    # Line 1040
    addiu	$a6,$sp,0
    # Line 1038
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f2,416($a0)
    lwc1	$f1,412($a0)
    sdc1	$f3,1504($sp)
    sdc1	$f2,1512($sp)
    sdc1	$f1,1520($sp)
    sdc1	$f0,1528($sp)
.L0da5bbcc:
    # Line 1040
    addu	$v0,$a2,$a6
    addu	$at,$a2,$a5
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a4,$a4,-1
    bgtz	$a4,.L0da5bbcc
    sd	$at,0($v0)
    addu	$v0,$a2,$a5
    lw	$v0,0($v0)
    addu	$v1,$a2,$a6
    beqz	$s1,.L0da5bc04
    sw	$v0,0($v1)
    sd	$s2,1584($sp)
    # Line 1043
    sw	$zero,0($s1)
.L0da5bc04:
    # Line 1046
    lw	$v1,1696($s0)
    lw	$a0,1716($s0)
    sd	$s2,1584($sp)
    and	$v1,$v1,$a1
    beqz	$v1,.L0da5c0b4
    li	$s2,-1
    andi	$at,$a0,0x100
    beqz	$at,.L0da5bee8
    # Line 1060
    andi	$at,$a0,0x80
    # Line 1051
    lw	$a7,28884($s0)
    addiu	$a6,$sp,1456
    addiu	$a5,$sp,1440
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28776
    mov.s	$f14,$f22
    # lw $t9, -32744($gp) # &sub_0da60000
    mov.s	$f13,$f20
    sd	$ra,1576($sp)
    addiu	$t9,$t9,-18212
    bal __glExpDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1053
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$a2,$sp,1456
    addiu	$a1,$sp,1440
    addiu	$t9,$t9,-19156
    bal __glExpDoEvalCoord1
    addiu	$a0,$sp,1424
    # Line 1054
    move	$a0,$s0
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$a3,$sp,1456
    addiu	$a2,$sp,1440
    addiu	$t9,$t9,-18976
    bal __glExpDoEvalCoord1
    addiu	$a1,$s0,184
    beqz	$s1,.L0da5bce0
    ld	$ra,1576($sp)
    # Line 1056
    lw	$at,0($s1)
    ori	$at,$at,0x12
    sw	$at,0($s1)
    # Line 1057
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
    # Line 1058
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0da5bce0:
    # Line 1060
    li	$s2,4
    sd	$s3,1568($sp)
    lw	$a0,1716($s0)
.L0da5bcec:
    sd	$s3,1568($sp)
.L0da5bcf0:
    # Line 1072
    la	$s3,sub_0da60000
    addiu	$s3,$s3,-18844
.L0da5bcf8:
    # Line 1098
    lbu	$at,3105($s0)
.L0da5bcfc:
    beqz	$at,.L0da5c01c
    andi	$v0,$a0,0x2
    beqz	$v0,.L0da5bd6c
    # Line 1128
    andi	$a1,$a0,0x40
    # Line 1103
    lw	$a5,28856($s0)
    addiu	$a4,$s0,168
    addiu	$a3,$s0,28496
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0da5bd64
    ld	$ra,1576($sp)
    # Line 1106
    lw	$v1,0($s1)
    ori	$v1,$v1,0x1
    sw	$v1,0($s1)
    # Line 1107
    lwc1	$f3,168($s0)
    swc1	$f3,4($s1)
    lwc1	$f2,172($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,176($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,180($s0)
    swc1	$f0,16($s1)
.L0da5bd64:
    lw	$a0,1716($s0)
.L0da5bd68:
    # Line 1128
    andi	$a1,$a0,0x40
.L0da5bd6c:
    beqz	$a1,.L0da5be74
    # Line 1138
    andi	$v1,$a0,0x20
    # Line 1134
    lw	$a5,28876($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28696
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    ldc1	$f20,1544($sp)
    ldc1	$f22,1536($sp)
    beqz	$s1,.L0da5bdd4
    ld	$s3,1568($sp)
    # Line 1137
    lw	$at,0($s1)
    ori	$at,$at,0x4
    sw	$at,0($s1)
    # Line 1138
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    swc1	$f0,48($s1)
.L0da5bdd4:
    # Line 1169
    move	$a0,$s0
    ldc1	$f20,1544($sp)
    # lw $t9, -32356($gp) # &__glExpEvalPassCurrentState
    ldc1	$f22,1536($sp)
    ld	$s1,1560($sp)
    bal __glExpEvalPassCurrentState
    ld	$s3,1568($sp)
    move	$v1,$s2
    li	$v0,3
    beq	$s2,$v0,.L0da5c288
    ld	$ra,1576($sp)
    # Line 1172
    li	$a1,4
    beq	$v1,$a1,.L0da5c2a4
    ld	$s2,1584($sp)
.L0da5be0c:
    # Line 1174
    lw	$at,1716($s0)
    andi	$at,$at,0x1
    beqzl	$at,.L0da5be6c
    # Line 1187
    ld	$s0,1552($sp)
    # Line 1174
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0da5be6c
    # Line 1187
    ld	$s0,1552($sp)
    # Line 1181
    lw	$t9,12008($s0)
    jal	__glExpEvalPassCurrentState
    move	$a0,$s0
    # Line 1185
    move	$a0,$s0
    # Line 1184
    ldc1	$f4,1528($sp)
    # Line 1185
    lw	$t9,12008($s0)
    # Line 1184
    ldc1	$f7,1504($sp)
    ldc1	$f6,1512($sp)
    ldc1	$f5,1520($sp)
    swc1	$f7,420($s0)
    swc1	$f6,416($s0)
    swc1	$f5,412($s0)
    # Line 1185
    jalr	$t9
    # Line 1184
    swc1	$f4,408($s0)
    ld	$ra,1576($sp)
    # Line 1187
    ld	$s0,1552($sp)
.L0da5be6c:
    jr	$ra
    addiu	$sp,$sp,1632
.L0da5be74:
    # Line 1138
    beqz	$v1,.L0da5bfa0
    # Line 1146
    andi	$v0,$a0,0x10
    # Line 1141
    lw	$a5,28872($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28656
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1143
    lwc1	$f20,3284($s0)
    ldc1	$f22,1536($sp)
    ld	$s3,1568($sp)
    swc1	$f20,212($s0)
    beqz	$s1,.L0da5bdd4
    ldc1	$f20,1544($sp)
    # Line 1145
    lw	$a1,0($s1)
    ori	$a1,$a1,0x4
    sw	$a1,0($s1)
    # Line 1146
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0da5bdd4
    swc1	$f0,48($s1)
.L0da5bee8:
    # Line 1060
    beqzl	$at,.L0da5bcf0
    sd	$s3,1568($sp)
    # Line 1064
    lw	$a7,28880($s0)
    addiu	$a6,$sp,1488
    addiu	$a5,$sp,1472
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28736
    mov.s	$f14,$f22
    # lw $t9, -32744($gp) # &sub_0da60000
    mov.s	$f13,$f20
    sd	$ra,1576($sp)
    addiu	$t9,$t9,-18212
    bal __glExpDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1066
    move	$a0,$s0
    # lw $t9, -32744($gp) # &sub_0da60000
    addiu	$a3,$sp,1488
    addiu	$a2,$sp,1472
    addiu	$t9,$t9,-18976
    bal __glExpDoEvalCoord1
    addiu	$a1,$s0,184
    beqz	$s1,.L0da5bf90
    ld	$ra,1576($sp)
    # Line 1068
    lw	$at,0($s1)
    ori	$at,$at,0xa
    sw	$at,0($s1)
    # Line 1069
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
    # Line 1070
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0da5bf90:
    sd	$s3,1568($sp)
    # Line 1072
    lw	$a0,1716($s0)
    b	.L0da5bcec
    li	$s2,3
.L0da5bfa0:
    # Line 1146
    beqz	$v0,.L0da5c1a0
    # Line 1155
    andi	$v1,$a0,0x8
    # Line 1149
    lw	$a5,28868($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28616
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1151
    mtc1	$zero,$f20
    ld	$s3,1568($sp)
    # Line 1152
    lwc1	$f22,3284($s0)
    # Line 1151
    swc1	$f20,208($s0)
    ldc1	$f20,1544($sp)
    # Line 1152
    swc1	$f22,212($s0)
    beqz	$s1,.L0da5bdd4
    ldc1	$f22,1536($sp)
    # Line 1154
    lw	$v1,0($s1)
    ori	$v1,$v1,0x4
    sw	$v1,0($s1)
    # Line 1155
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0da5bdd4
    swc1	$f0,48($s1)
.L0da5c01c:
    # Line 1107
    andi	$a1,$a0,0x1
    beqz	$a1,.L0da5bd6c
    # Line 1128
    andi	$a1,$a0,0x40
    # Line 1113
    lw	$a5,28852($s0)
    addiu	$a4,$s0,408
    addiu	$a3,$s0,28456
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1115
    lw	$t9,12008($s0)
    jal	sub_0da60000
    move	$a0,$s0
    beqz	$s1,.L0da5c09c
    ld	$ra,1576($sp)
    # Line 1117
    lw	$v0,0($s1)
    ori	$v0,$v0,0x1
    sw	$v0,0($s1)
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqzl	$at,.L0da5c2e0
    # Line 1122
    lwc1	$f3,168($s0)
    # Line 1120
    lwc1	$f3,408($s0)
    swc1	$f3,4($s1)
    lwc1	$f2,412($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,416($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,420($s0)
    swc1	$f0,16($s1)
.L0da5c09c:
    # Line 1122
    lw	$v1,1696($s0)
    andi	$v1,$v1,0x80
    beqz	$v1,.L0da5c2c0
    # Line 1128
    ldc1	$f0,1528($sp)
.L0da5c0ac:
    b	.L0da5bd68
    lw	$a0,1716($s0)
.L0da5c0b4:
    # Line 1072
    andi	$a1,$a0,0x4
    beqz	$a1,.L0da5c128
    sd	$s3,1568($sp)
    # Line 1076
    lw	$a5,28860($s0)
    addiu	$a4,$s0,184
    addiu	$a3,$s0,28536
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    la	$s3,sub_0da60000
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    addiu	$s3,$s3,-18844
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0da5c120
    ld	$ra,1576($sp)
    # Line 1079
    lw	$at,0($s1)
    ori	$at,$at,0x2
    sw	$at,0($s1)
    # Line 1080
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
.L0da5c120:
    b	.L0da5c130
    lw	$a0,1716($s0)
.L0da5c128:
    la	$s3,sub_0da60000
    addiu	$s3,$s3,-18844
.L0da5c130:
    andi	$at,$a0,0x100
    beqz	$at,.L0da5c21c
    # Line 1090
    andi	$at,$a0,0x80
    # Line 1084
    lw	$a5,28884($s0)
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28776
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0da5c194
    ld	$ra,1576($sp)
    # Line 1087
    lw	$v0,0($s1)
    ori	$v0,$v0,0x10
    sw	$v0,0($s1)
    # Line 1088
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0da5c194:
    # Line 1090
    lw	$a0,1716($s0)
    b	.L0da5bcf8
    li	$s2,4
.L0da5c1a0:
    # Line 1155
    beqz	$v1,.L0da5bdd4
    sd	$ra,1576($sp)
    # Line 1158
    lw	$a5,28864($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28576
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1160
    mtc1	$zero,$f20
    ld	$s3,1568($sp)
    # Line 1162
    lwc1	$f22,3284($s0)
    # Line 1161
    swc1	$f20,208($s0)
    # Line 1160
    swc1	$f20,204($s0)
    ldc1	$f20,1544($sp)
    # Line 1162
    swc1	$f22,212($s0)
    beqz	$s1,.L0da5bdd4
    ldc1	$f22,1536($sp)
    # Line 1164
    lw	$a1,0($s1)
    ori	$a1,$a1,0x4
    sw	$a1,0($s1)
    # Line 1165
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0da5bdd4
    swc1	$f0,48($s1)
.L0da5c21c:
    # Line 1090
    beqzl	$at,.L0da5bcfc
    # Line 1098
    lbu	$at,3105($s0)
    # Line 1092
    lw	$a5,28880($s0)
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28736
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1576($sp)
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0da5c27c
    ld	$ra,1576($sp)
    # Line 1095
    lw	$v0,0($s1)
    ori	$v0,$v0,0x8
    sw	$v0,0($s1)
    # Line 1096
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0da5c27c:
    # Line 1098
    lw	$a0,1716($s0)
    b	.L0da5bcf8
    li	$s2,3
.L0da5c288:
    # Line 1172
    lw	$t9,5580($s0)
    lw	$t9,1528($t9)
    addiu	$a0,$sp,1424
    jalr	$t9
    ld	$s2,1584($sp)
    b	.L0da5be0c
    ld	$ra,1576($sp)
.L0da5c2a4:
    # Line 1174
    lw	$t9,5580($s0)
    lw	$t9,1560($t9)
    addiu	$a0,$sp,1424
    jalr	$t9
    ld	$s2,1584($sp)
    b	.L0da5be0c
    ld	$ra,1576($sp)
.L0da5c2c0:
    ldc1	$f3,1504($sp)
    # Line 1128
    ldc1	$f2,1512($sp)
    ldc1	$f1,1520($sp)
    swc1	$f3,420($s0)
    swc1	$f2,416($s0)
    swc1	$f1,412($s0)
    b	.L0da5c0ac
    swc1	$f0,408($s0)
.L0da5c2e0:
    # Line 1122
    swc1	$f3,4($s1)
    lwc1	$f2,172($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,176($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,180($s0)
    b	.L0da5c09c
    swc1	$f0,16($s1)
.end DoEvalCoord2

# Function: __glExpDoEvalCoord2
# Declared: Line 1189 (Source lines: 1190-1204)
# Address: 0x0da5c300 - 0x0da5c410 (Size: 272 bytes, Frame: 160)
.globl __glExpDoEvalCoord2
.ent __glExpDoEvalCoord2
__glExpDoEvalCoord2:
    # Line 1198
    move	$a3,$zero
    # Line 1190
    addiu	$sp,$sp,-160
    sdc1	$f30,0($sp)
    sd	$s8,104($sp)
    move	$s8,$a0
    # Line 1194
    lwc1	$f30,168($s8)
    lwc1	$f0,172($s8)
    lwc1	$f1,176($s8)
    lwc1	$f2,180($s8)
    # Line 1195
    lwc1	$f3,184($s8)
    lwc1	$f4,188($s8)
    lwc1	$f5,192($s8)
    lwc1	$f6,196($s8)
    # Line 1196
    lwc1	$f7,200($s8)
    lwc1	$f10,212($s8)
    lwc1	$f9,208($s8)
    lwc1	$f8,204($s8)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    sdc1	$f4,56($sp)
    sdc1	$f3,64($sp)
    # sd	gp,112(sp)
    sd	$ra,96($sp)
    # Line 1190
    lui	$ra,0x1a
    addiu	$ra,$ra,-19096
    # addu	gp,t9,ra
    # Line 1198
    # lw $t9, -32744($gp) # &sub_0da60000
    sdc1	$f2,72($sp)
    sdc1	$f1,80($sp)
    addiu	$t9,$t9,-17548
    bal __glExpDoEvalCoord1
    sdc1	$f0,88($sp)
    # Line 1203
    move	$a0,$s8
    # Line 1200
    swc1	$f30,168($s8)
    ldc1	$f11,88($sp)
    # Line 1203
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1200
    ldc1	$f12,80($sp)
    ldc1	$f13,72($sp)
    # Line 1201
    ldc1	$f14,64($sp)
    ldc1	$f15,56($sp)
    ldc1	$f16,48($sp)
    ldc1	$f17,40($sp)
    # Line 1202
    ldc1	$f18,32($sp)
    ldc1	$f23,8($sp)
    ldc1	$f21,16($sp)
    ldc1	$f19,24($sp)
    swc1	$f23,212($s8)
    swc1	$f21,208($s8)
    swc1	$f19,204($s8)
    swc1	$f18,200($s8)
    # Line 1201
    swc1	$f17,196($s8)
    swc1	$f16,192($s8)
    swc1	$f15,188($s8)
    swc1	$f14,184($s8)
    # Line 1200
    swc1	$f13,180($s8)
    swc1	$f12,176($s8)
    # Line 1203
    bal __glExpEvalRestoreCurrentState
    # Line 1200
    swc1	$f11,172($s8)
    # ld	gp,112(sp)
    # Line 1204
    ld	$ra,96($sp)
    ld	$s8,104($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glExpDoEvalCoord2

# Function: __glExpEvalMesh1Line
# Declared: Line 1206 (Source lines: 1207-1236)
# Address: 0x0da5c410 - 0x0da5c5f4 (Size: 484 bytes, Frame: 208)
.globl __glExpEvalMesh1Line
.ent __glExpEvalMesh1Line
__glExpEvalMesh1Line:
    # Line 1207
    addiu	$sp,$sp,-208
    sd	$s4,112($sp)
    move	$s4,$a2
    sd	$a1,96($sp)
    sd	$s0,104($sp)
    move	$s0,$a0
    # sd	gp,120(sp)
    lw	$a4,1836($a0)
    lui	$at,0x1a
    addiu	$at,$at,-19368
    beqz	$a4,.L0da5c5e0
    nop
    sd	$s1,144($sp)
    # Line 1226
    li	$a0,3
    sd	$ra,136($sp)
    # Line 1219
    lwc1	$f29,188($s0)
    lwc1	$f31,192($s0)
    lwc1	$f0,196($s0)
    # Line 1220
    lwc1	$f1,200($s0)
    lwc1	$f4,212($s0)
    lwc1	$f3,208($s0)
    lwc1	$f2,204($s0)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    # Line 1226
    lw	$t9,5580($s0)
    sdc1	$f22,128($sp)
    # Line 1216
    mtc1	$a4,$f23
    lwc1	$f22,1828($s0)
    # Line 1219
    lwc1	$f27,184($s0)
    # Line 1216
    cvt.s.w	$f23,$f23
    # Line 1218
    lwc1	$f25,180($s0)
    sdc1	$f27,72($sp)
    lwc1	$f27,176($s0)
    sdc1	$f25,64($sp)
    # Line 1216
    lwc1	$f25,1824($s0)
    sdc1	$f27,56($sp)
    # Line 1218
    lwc1	$f27,172($s0)
    # Line 1216
    sub.s	$f22,$f22,$f25
    # Line 1218
    lwc1	$f25,168($s0)
    # Line 1226
    lw	$t9,28($t9)
    sdc1	$f27,16($sp)
    sdc1	$f25,0($sp)
    jalr	$t9
    # Line 1216
    div.s	$f22,$f22,$f23
    ld	$at,96($sp)
    # Line 1227
    move	$s1,$at
    slt	$at,$s4,$at
    bnezl	$at,.L0da5c54c
    # Line 1230
    lw	$t9,5580($s0)
    sd	$s5,160($sp)
    sd	$s3,152($sp)
    # Line 1227
    la	$s3,sub_0da60000
    addiu	$s5,$s4,1
    b	.L0da5c530
    addiu	$s3,$s3,-20316
.L0da5c500:
    # Line 1228
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f13,1824($s0)
    add.s	$f13,$f13,$f0
.L0da5c518:
    move	$a0,$s0
    bal __glexpim_EvalPoint2
    move	$t9,$s3
    # Line 1227
    addiu	$s1,$s1,1
    beql	$s5,$s1,.L0da5c544
    ld	$s5,160($sp)
.L0da5c530:
    lw	$at,1836($s0)
    bne	$at,$s1,.L0da5c500
    nop
    # Line 1228
    b	.L0da5c518
    lwc1	$f13,1828($s0)
.L0da5c544:
    ld	$s3,152($sp)
    # Line 1230
    lw	$t9,5580($s0)
.L0da5c54c:
    lw	$t9,44($t9)
    ldc1	$f22,128($sp)
    jalr	$t9
    ld	$s1,144($sp)
    # Line 1235
    move	$a0,$s0
    # Line 1232
    ldc1	$f1,0($sp)
    # Line 1235
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1232
    ldc1	$f2,16($sp)
    ldc1	$f3,56($sp)
    ldc1	$f4,64($sp)
    # Line 1233
    ldc1	$f5,72($sp)
    ldc1	$f6,80($sp)
    ldc1	$f7,88($sp)
    ldc1	$f8,40($sp)
    # Line 1234
    ldc1	$f9,24($sp)
    ldc1	$f12,8($sp)
    ldc1	$f11,48($sp)
    ldc1	$f10,32($sp)
    swc1	$f12,212($s0)
    swc1	$f11,208($s0)
    swc1	$f10,204($s0)
    swc1	$f9,200($s0)
    # Line 1233
    swc1	$f8,196($s0)
    swc1	$f7,192($s0)
    swc1	$f6,188($s0)
    swc1	$f5,184($s0)
    # Line 1232
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    # Line 1235
    bal __glExpEvalRestoreCurrentState
    # Line 1232
    swc1	$f1,168($s0)
    # ld	gp,120(sp)
    # Line 1236
    ld	$ra,136($sp)
    ld	$s0,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da5c5e0:
    # ld	gp,120(sp)
    # Line 1215
    ld	$s0,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glExpEvalMesh1Line

# Function: __glExpEvalMesh1Point
# Declared: Line 1238 (Source lines: 1239-1268)
# Address: 0x0da5c5f4 - 0x0da5c7d8 (Size: 484 bytes, Frame: 208)
.globl __glExpEvalMesh1Point
.ent __glExpEvalMesh1Point
__glExpEvalMesh1Point:
    # Line 1239
    addiu	$sp,$sp,-208
    sd	$s4,112($sp)
    move	$s4,$a2
    sd	$a1,96($sp)
    sd	$s0,104($sp)
    move	$s0,$a0
    # sd	gp,120(sp)
    lw	$a4,1836($a0)
    lui	$at,0x1a
    addiu	$at,$at,-19852
    beqz	$a4,.L0da5c7c4
    nop
    sd	$s1,144($sp)
    # Line 1258
    move	$a0,$zero
    sd	$ra,136($sp)
    # Line 1251
    lwc1	$f29,188($s0)
    lwc1	$f31,192($s0)
    lwc1	$f0,196($s0)
    # Line 1252
    lwc1	$f1,200($s0)
    lwc1	$f4,212($s0)
    lwc1	$f3,208($s0)
    lwc1	$f2,204($s0)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    # Line 1258
    lw	$t9,5580($s0)
    sdc1	$f22,128($sp)
    # Line 1248
    mtc1	$a4,$f23
    lwc1	$f22,1828($s0)
    # Line 1251
    lwc1	$f27,184($s0)
    # Line 1248
    cvt.s.w	$f23,$f23
    # Line 1250
    lwc1	$f25,180($s0)
    sdc1	$f27,72($sp)
    lwc1	$f27,176($s0)
    sdc1	$f25,64($sp)
    # Line 1248
    lwc1	$f25,1824($s0)
    sdc1	$f27,56($sp)
    # Line 1250
    lwc1	$f27,172($s0)
    # Line 1248
    sub.s	$f22,$f22,$f25
    # Line 1250
    lwc1	$f25,168($s0)
    # Line 1258
    lw	$t9,28($t9)
    sdc1	$f27,16($sp)
    sdc1	$f25,0($sp)
    jalr	$t9
    # Line 1248
    div.s	$f22,$f22,$f23
    ld	$at,96($sp)
    # Line 1259
    move	$s1,$at
    slt	$at,$s4,$at
    bnezl	$at,.L0da5c730
    # Line 1262
    lw	$t9,5580($s0)
    sd	$s5,160($sp)
    sd	$s3,152($sp)
    # Line 1259
    la	$s3,sub_0da60000
    addiu	$s5,$s4,1
    b	.L0da5c714
    addiu	$s3,$s3,-20316
.L0da5c6e4:
    # Line 1260
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f13,1824($s0)
    add.s	$f13,$f13,$f0
.L0da5c6fc:
    move	$a0,$s0
    bal __glexpim_EvalPoint2
    move	$t9,$s3
    # Line 1259
    addiu	$s1,$s1,1
    beql	$s5,$s1,.L0da5c728
    ld	$s5,160($sp)
.L0da5c714:
    lw	$at,1836($s0)
    bne	$at,$s1,.L0da5c6e4
    nop
    # Line 1260
    b	.L0da5c6fc
    lwc1	$f13,1828($s0)
.L0da5c728:
    ld	$s3,152($sp)
    # Line 1262
    lw	$t9,5580($s0)
.L0da5c730:
    lw	$t9,44($t9)
    ldc1	$f22,128($sp)
    jalr	$t9
    ld	$s1,144($sp)
    # Line 1267
    move	$a0,$s0
    # Line 1264
    ldc1	$f1,0($sp)
    # Line 1267
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1264
    ldc1	$f2,16($sp)
    ldc1	$f3,56($sp)
    ldc1	$f4,64($sp)
    # Line 1265
    ldc1	$f5,72($sp)
    ldc1	$f6,80($sp)
    ldc1	$f7,88($sp)
    ldc1	$f8,40($sp)
    # Line 1266
    ldc1	$f9,24($sp)
    ldc1	$f12,8($sp)
    ldc1	$f11,48($sp)
    ldc1	$f10,32($sp)
    swc1	$f12,212($s0)
    swc1	$f11,208($s0)
    swc1	$f10,204($s0)
    swc1	$f9,200($s0)
    # Line 1265
    swc1	$f8,196($s0)
    swc1	$f7,192($s0)
    swc1	$f6,188($s0)
    swc1	$f5,184($s0)
    # Line 1264
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    # Line 1267
    bal __glExpEvalRestoreCurrentState
    # Line 1264
    swc1	$f1,168($s0)
    # ld	gp,120(sp)
    # Line 1268
    ld	$ra,136($sp)
    ld	$s0,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da5c7c4:
    # ld	gp,120(sp)
    # Line 1247
    ld	$s0,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glExpEvalMesh1Point

# Function: sendChange
# Declared: Line 1270 (Source lines: 1271-1305)
# Address: 0x0da5c7d8 - 0x0da5c9a0 (Size: 456 bytes, Frame: 208)
.ent sendChange
sendChange:
    # Line 1271
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    # Line 1272
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f1,412($a0)
    lwc1	$f2,416($a0)
    sdc1	$f3,0($sp)
    lw	$a3,0($a1)
    sdc1	$f2,8($sp)
    sdc1	$f1,16($sp)
    andi	$at,$a3,0x1
    beqz	$at,.L0da5c87c
    sdc1	$f0,24($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqz	$v0,.L0da5c85c
    lwc1	$f4,4($s1)
    # Line 1276
    swc1	$f4,408($s0)
    lwc1	$f6,8($s1)
    swc1	$f6,412($s0)
    lwc1	$f5,12($s1)
    # Line 1277
    move	$a0,$s0
    # Line 1276
    swc1	$f5,416($s0)
    # Line 1277
    lw	$t9,12008($s0)
    # Line 1276
    lwc1	$f4,16($s1)
    sd	$ra,48($sp)
    # Line 1277
    jalr	$t9
    # Line 1276
    swc1	$f4,420($s0)
    b	.L0da5c878
    ld	$ra,48($sp)
.L0da5c85c:
    # Line 1279
    swc1	$f4,168($s0)
    lwc1	$f2,8($s1)
    swc1	$f2,172($s0)
    lwc1	$f1,12($s1)
    swc1	$f1,176($s0)
    lwc1	$f0,16($s1)
    swc1	$f0,180($s0)
.L0da5c878:
    lw	$a3,0($s1)
.L0da5c87c:
    andi	$v1,$a3,0x4
    beqz	$v1,.L0da5c8b0
    # Line 1283
    andi	$a2,$a3,0x2
    lwc1	$f2,36($s1)
    swc1	$f2,200($s0)
    lwc1	$f1,40($s1)
    swc1	$f1,204($s0)
    lwc1	$f0,44($s1)
    swc1	$f0,208($s0)
    lwc1	$f3,48($s1)
    swc1	$f3,212($s0)
    lw	$a3,0($s1)
    andi	$a2,$a3,0x2
.L0da5c8b0:
    beqz	$a2,.L0da5c8e0
    # Line 1288
    nop	# was lw $t9, -32356($gp) # &__glExpEvalPassCurrentState
    # Line 1286
    lwc1	$f2,20($s1)
    swc1	$f2,184($s0)
    lwc1	$f1,24($s1)
    swc1	$f1,188($s0)
    lwc1	$f0,28($s1)
    swc1	$f0,192($s0)
    lwc1	$f3,32($s1)
    sd	$ra,48($sp)
    swc1	$f3,196($s0)
    # Line 1288
    # lw $t9, -32356($gp) # &__glExpEvalPassCurrentState
.L0da5c8e0:
    sd	$ra,48($sp)
    bal __glExpEvalPassCurrentState
    move	$a0,$s0
    lw	$a3,0($s1)
    andi	$at,$a3,0x8
    beqz	$at,.L0da5c978
    ld	$ra,48($sp)
    # Line 1290
    lw	$t9,5580($s0)
    lw	$t9,1528($t9)
    jal	__glExpEvalPassCurrentState
    addiu	$a0,$s1,52
    lw	$a3,0($s1)
    ld	$ra,48($sp)
.L0da5c914:
    # Line 1292
    andi	$at,$a3,0x1
.L0da5c918:
    beqz	$at,.L0da5c96c
    ld	$s1,40($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0da5c970
    # Line 1305
    ld	$s0,32($sp)
    # Line 1298
    lw	$t9,12008($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1302
    move	$a0,$s0
    # Line 1301
    ldc1	$f3,24($sp)
    # Line 1302
    lw	$t9,12008($s0)
    # Line 1301
    ldc1	$f6,0($sp)
    ldc1	$f5,8($sp)
    ldc1	$f4,16($sp)
    swc1	$f6,420($s0)
    swc1	$f5,416($s0)
    swc1	$f4,412($s0)
    # Line 1302
    jalr	$t9
    # Line 1301
    swc1	$f3,408($s0)
    ld	$ra,48($sp)
.L0da5c96c:
    # Line 1305
    ld	$s0,32($sp)
.L0da5c970:
    jr	$ra
    addiu	$sp,$sp,80
.L0da5c978:
    # Line 1290
    andi	$v1,$a3,0x10
    beqz	$v1,.L0da5c918
    # Line 1292
    andi	$at,$a3,0x1
    lw	$t9,5580($s0)
    lw	$t9,1560($t9)
    jalr	$t9
    addiu	$a0,$s1,52
    lw	$a3,0($s1)
    b	.L0da5c914
    ld	$ra,48($sp)
.end sendChange

# Function: __glExpEvalMesh2Fill
# Declared: Line 1314 (Source lines: 1316-1367)
# Address: 0x0da5c9a0 - 0x0da5cd48 (Size: 936 bytes, Frame: 0)
.globl __glExpEvalMesh2Fill
.ent __glExpEvalMesh2Fill
__glExpEvalMesh2Fill:
    # Line 1316
    move	$v0,$s8
    # Line 1326
    lw	$a6,1852($a0)
    # Line 1316
    lui	$at,0x1
    ori	$at,$at,0x1150
    subu	$sp,$sp,$at
    sd	$v0,152($sp)
    sd	$a4,112($sp)
    sd	$a3,168($sp)
    sd	$s6,136($sp)
    move	$s6,$a1
    sd	$s0,144($sp)
    move	$s0,$a0
    # sd	gp,160(sp)
    addu	$s8,$sp,$at
    lui	$at,0x1a
    addiu	$at,$at,-20792
    # Line 1326
    beqz	$a6,.L0da5cd2c
    # Line 1316
    nop
    # Line 1326
    lw	$a0,1868($s0)
    beqzl	$a0,.L0da5cd30
    nop
    sd	$s3,248($sp)
    sd	$s7,240($sp)
    sd	$ra,216($sp)
    sdc1	$f28,184($sp)
    # Line 1329
    mtc1	$a0,$f28
    sd	$s4,232($sp)
    lwc1	$f0,1856($s0)
    cvt.s.w	$f28,$f28
    sdc1	$f26,176($sp)
    lwc1	$f26,1860($s0)
    sd	$s5,224($sp)
    # Line 1335
    ld	$v1,168($sp)
    # Line 1329
    sub.s	$f26,$f26,$f0
    # Line 1335
    move	$s5,$s6
    slt	$v1,$s6,$v1
    # Line 1333
    lwc1	$f2,204($s0)
    # Line 1329
    div.s	$f26,$f26,$f28
    # Line 1333
    lwc1	$f3,208($s0)
    sdc1	$f2,64($sp)
    # Line 1332
    lwc1	$f2,184($s0)
    sdc1	$f3,72($sp)
    # Line 1333
    lwc1	$f1,200($s0)
    # Line 1332
    lwc1	$f3,188($s0)
    sdc1	$f2,24($sp)
    sdc1	$f1,56($sp)
    # Line 1331
    lwc1	$f1,180($s0)
    lwc1	$f2,172($s0)
    # Line 1332
    lwc1	$f0,196($s0)
    sdc1	$f1,80($sp)
    # Line 1333
    lwc1	$f28,212($s0)
    sdc1	$f0,48($sp)
    # Line 1328
    mtc1	$a6,$f0
    sdc1	$f28,16($sp)
    # Line 1332
    lwc1	$f28,192($s0)
    # Line 1328
    lwc1	$f1,1840($s0)
    cvt.s.w	$f0,$f0
    sdc1	$f28,40($sp)
    lwc1	$f28,1844($s0)
    sdc1	$f3,32($sp)
    # Line 1331
    lwc1	$f3,176($s0)
    # Line 1328
    sub.s	$f28,$f28,$f1
    # Line 1331
    lwc1	$f1,168($s0)
    sdc1	$f3,96($sp)
    sdc1	$f2,88($sp)
    sdc1	$f1,8($sp)
    # Line 1335
    beqz	$v1,.L0da5cc94
    # Line 1328
    div.s	$f28,$f28,$f0
    sd	$s1,264($sp)
    sd	$s2,256($sp)
    sd	$ra,216($sp)
    sdc1	$f22,208($sp)
    sdc1	$f24,200($sp)
    sdc1	$f20,192($sp)
    # Line 1335
    addiu	$s4,$s8,-48
    addiu	$a0,$s5,1
    addiu	$v1,$a2,-1
    sd	$v1,104($sp)
    la	$s7,sub_0da60000
    la	$s3,sub_0da60000
    ld	$at,112($sp)
    addiu	$s7,$s7,-14376
    addiu	$s3,$s3,-17548
    subu	$v0,$at,$a2
    slt	$at,$at,$a2
    xori	$at,$at,0x1
    addiu	$v0,$v0,1
    sd	$v0,128($sp)
    b	.L0da5cb2c
    sd	$at,120($sp)
.L0da5cb08:
    # Line 1360
    lw	$t9,5580($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1335
    addiu	$s5,$s5,1
    ld	$at,168($sp)
    ld	$a0,272($sp)
    beq	$at,$s5,.L0da5cc74
    addiu	$a0,$a0,1
.L0da5cb2c:
    lw	$a6,1852($s0)
    bne	$a6,$s5,.L0da5cc4c
    nop
    # Line 1336
    beq	$a6,$a0,.L0da5cc68
    lwc1	$f24,1844($s0)
.L0da5cb40:
    # Line 1337
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f28
    lwc1	$f22,1840($s0)
    sd	$a0,272($sp)
    add.s	$f22,$f22,$f0
.L0da5cb5c:
    # Line 1338
    lw	$t9,5580($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1340
    ld	$at,120($sp)
    beqz	$at,.L0da5cb08
    ld	$s2,112($sp)
    lui	$s1,0xffff
    addu	$s1,$s1,$s8
    b	.L0da5cbc8
    addiu	$s1,$s1,-4144
.L0da5cb88:
    # Line 1348
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s3
.L0da5cba0:
    # Line 1351
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    move	$a3,$s1
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1340
    addiu	$s2,$s2,-1
.L0da5cbbc:
    ld	$at,104($sp)
    beq	$at,$s2,.L0da5cb08
    # Line 1357
    addiu	$s1,$s1,68
.L0da5cbc8:
    # Line 1340
    lw	$v0,1868($s0)
    bne	$v0,$s2,.L0da5cbdc
    # Line 1341
    sltu	$v1,$s1,$s4
    b	.L0da5cbf4
    lwc1	$f20,1860($s0)
.L0da5cbdc:
    mtc1	$s2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f20,1856($s0)
    add.s	$f20,$f20,$f0
.L0da5cbf4:
    beqz	$v1,.L0da5cc18
    # Line 1354
    move	$a0,$s0
    # Line 1341
    beq	$s6,$s5,.L0da5cb88
    # Line 1346
    move	$a0,$s0
    move	$a1,$s1
    bal __glExpEvalMesh1Point
    move	$t9,$s7
    b	.L0da5cba0
    nop
.L0da5cc18:
    # Line 1354
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1355
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    b	.L0da5cbbc
    # Line 1340
    addiu	$s2,$s2,-1
.L0da5cc4c:
    # Line 1336
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f28
    lwc1	$f24,1840($s0)
    bne	$a6,$a0,.L0da5cb40
    add.s	$f24,$f24,$f0
.L0da5cc68:
    sd	$a0,272($sp)
    # Line 1337
    b	.L0da5cb5c
    lwc1	$f22,1844($s0)
.L0da5cc74:
    ldc1	$f20,192($sp)
    ldc1	$f24,200($sp)
    ldc1	$f22,208($sp)
    ld	$s4,232($sp)
    ld	$s7,240($sp)
    ld	$s3,248($sp)
    ld	$s2,256($sp)
    ld	$s1,264($sp)
.L0da5cc94:
    # Line 1366
    move	$a0,$s0
    ldc1	$f26,176($sp)
    ldc1	$f28,184($sp)
    ld	$s5,224($sp)
    # Line 1363
    ldc1	$f1,8($sp)
    # Line 1366
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1363
    ldc1	$f2,88($sp)
    ldc1	$f3,96($sp)
    ldc1	$f4,80($sp)
    # Line 1364
    ldc1	$f5,24($sp)
    ldc1	$f6,32($sp)
    ldc1	$f7,40($sp)
    ldc1	$f8,48($sp)
    # Line 1365
    ldc1	$f9,56($sp)
    ldc1	$f12,16($sp)
    ldc1	$f11,72($sp)
    ldc1	$f10,64($sp)
    swc1	$f12,212($s0)
    swc1	$f11,208($s0)
    swc1	$f10,204($s0)
    swc1	$f9,200($s0)
    # Line 1364
    swc1	$f8,196($s0)
    swc1	$f7,192($s0)
    swc1	$f6,188($s0)
    swc1	$f5,184($s0)
    # Line 1363
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    # Line 1366
    bal __glExpEvalRestoreCurrentState
    # Line 1363
    swc1	$f1,168($s0)
    # ld	gp,160(sp)
    # Line 1367
    ld	$s0,144($sp)
    ld	$s6,136($sp)
    ld	$ra,216($sp)
    ld	$a0,152($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0da5cd2c:
    # ld	gp,160(sp)
.L0da5cd30:
    # Line 1327
    ld	$s0,144($sp)
    ld	$s6,136($sp)
    ld	$a5,152($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.end __glExpEvalMesh2Fill

# Function: __glExpEvalMesh2Point
# Declared: Line 1369 (Source lines: 1371-1403)
# Address: 0x0da5cd48 - 0x0da5cfe8 (Size: 672 bytes, Frame: 144)
.globl __glExpEvalMesh2Point
.ent __glExpEvalMesh2Point
__glExpEvalMesh2Point:
    # Line 1371
    addiu	$sp,$sp,-272
    sd	$s2,136($sp)
    move	$s2,$a3
    sd	$s1,112($sp)
    move	$s1,$a2
    sd	$s0,120($sp)
    move	$s0,$a0
    # sd	gp,128(sp)
    # Line 1379
    lw	$a6,1852($a0)
    # Line 1371
    lui	$at,0x1a
    addiu	$at,$at,-21728
    # Line 1379
    beqz	$a6,.L0da5cfd0
    # Line 1371
    nop
    # Line 1379
    lw	$a2,1868($s0)
    sd	$a1,184($sp)
    beqz	$a2,.L0da5cfd0
    sd	$a4,104($sp)
    # Line 1382
    mtc1	$a2,$f23
    sd	$s5,176($sp)
    # Line 1388
    move	$a0,$zero
    # Line 1382
    cvt.s.w	$f23,$f23
    sdc1	$f24,152($sp)
    lwc1	$f24,1856($s0)
    sdc1	$f22,144($sp)
    lwc1	$f22,1860($s0)
    sd	$ra,168($sp)
    # Line 1385
    lwc1	$f31,188($s0)
    # Line 1382
    sub.s	$f22,$f22,$f24
    # Line 1385
    lwc1	$f0,192($s0)
    lwc1	$f1,196($s0)
    # Line 1386
    lwc1	$f2,200($s0)
    # Line 1382
    div.s	$f22,$f22,$f23
    # Line 1386
    lwc1	$f5,212($s0)
    lwc1	$f4,208($s0)
    lwc1	$f3,204($s0)
    sdc1	$f5,64($sp)
    sdc1	$f4,48($sp)
    sdc1	$f3,40($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,16($sp)
    sdc1	$f31,56($sp)
    # Line 1381
    mtc1	$a6,$f25
    # Line 1388
    lw	$t9,5580($s0)
    # Line 1385
    lwc1	$f29,184($s0)
    # Line 1381
    cvt.s.w	$f25,$f25
    # Line 1384
    lwc1	$f27,180($s0)
    sdc1	$f29,88($sp)
    lwc1	$f29,176($s0)
    sdc1	$f27,80($sp)
    # Line 1381
    lwc1	$f27,1840($s0)
    lwc1	$f24,1844($s0)
    sdc1	$f29,72($sp)
    # Line 1384
    lwc1	$f29,172($s0)
    # Line 1381
    sub.s	$f24,$f24,$f27
    # Line 1384
    lwc1	$f27,168($s0)
    # Line 1388
    lw	$t9,28($t9)
    sdc1	$f29,8($sp)
    sdc1	$f27,0($sp)
    jalr	$t9
    # Line 1381
    div.s	$f24,$f24,$f25
    sd	$s3,216($sp)
    sd	$s6,208($sp)
    ld	$a0,184($sp)
    sd	$s4,200($sp)
    sd	$s7,192($sp)
    # Line 1389
    slt	$at,$s2,$a0
    bnez	$at,.L0da5cf30
    move	$s5,$a0
    sdc1	$f20,160($sp)
    la	$s3,sub_0da60000
    ld	$s7,104($sp)
    addiu	$s6,$s2,1
    addiu	$s3,$s3,-17548
    addiu	$s4,$s7,1
    subu	$at,$s7,$s1
    slt	$s7,$s7,$s1
    xori	$s7,$s7,0x1
    addiu	$at,$at,1
    b	.L0da5ce98
    sd	$at,96($sp)
.L0da5ce8c:
    addiu	$s5,$s5,1
.L0da5ce90:
    beq	$s6,$s5,.L0da5cf20
    ldc1	$f20,160($sp)
.L0da5ce98:
    lw	$v0,1852($s0)
    bne	$v0,$s5,.L0da5ceac
    # Line 1391
    move	$s2,$s1
    # Line 1390
    b	.L0da5cec4
    lwc1	$f20,1844($s0)
.L0da5ceac:
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f24
    lwc1	$f20,1840($s0)
    add.s	$f20,$f20,$f0
.L0da5cec4:
    # Line 1391
    beqzl	$s7,.L0da5ce90
    # Line 1389
    addiu	$s5,$s5,1
    b	.L0da5cf10
    # Line 1391
    lw	$v1,1868($s0)
.L0da5ced4:
    # Line 1392
    mtc1	$s2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f14,1856($s0)
    add.s	$f14,$f14,$f0
.L0da5ceec:
    # Line 1394
    move	$a0,$s0
    mov.s	$f13,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s3
    # Line 1391
    addiu	$s2,$s2,1
    beq	$s4,$s2,.L0da5ce8c
    nop
    lw	$v1,1868($s0)
.L0da5cf10:
    bne	$v1,$s2,.L0da5ced4
    nop
    # Line 1392
    b	.L0da5ceec
    lwc1	$f14,1860($s0)
.L0da5cf20:
    ld	$s7,192($sp)
    ld	$s4,200($sp)
    ld	$s6,208($sp)
    ld	$s3,216($sp)
.L0da5cf30:
    # Line 1397
    lw	$t9,5580($s0)
    lw	$t9,44($t9)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    jalr	$t9
    ld	$s5,176($sp)
    # Line 1402
    move	$a0,$s0
    # Line 1399
    ldc1	$f1,0($sp)
    # Line 1402
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1399
    ldc1	$f2,8($sp)
    ldc1	$f3,72($sp)
    ldc1	$f4,80($sp)
    # Line 1400
    ldc1	$f5,88($sp)
    ldc1	$f6,56($sp)
    ldc1	$f7,16($sp)
    ldc1	$f8,24($sp)
    # Line 1401
    ldc1	$f9,32($sp)
    ldc1	$f12,64($sp)
    ldc1	$f11,48($sp)
    ldc1	$f10,40($sp)
    swc1	$f12,212($s0)
    swc1	$f11,208($s0)
    swc1	$f10,204($s0)
    swc1	$f9,200($s0)
    # Line 1400
    swc1	$f8,196($s0)
    swc1	$f7,192($s0)
    swc1	$f6,188($s0)
    swc1	$f5,184($s0)
    # Line 1399
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    # Line 1402
    bal __glExpEvalRestoreCurrentState
    # Line 1399
    swc1	$f1,168($s0)
    # ld	gp,128(sp)
    # Line 1403
    ld	$s0,120($sp)
    ld	$ra,168($sp)
    ld	$s1,112($sp)
    ld	$s2,136($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0da5cfd0:
    # ld	gp,128(sp)
    # Line 1380
    ld	$s0,120($sp)
    ld	$s1,112($sp)
    ld	$s2,136($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glExpEvalMesh2Point

# Function: __glExpEvalMesh2Line
# Declared: Line 1405 (Source lines: 1407-1487)
# Address: 0x0da5cfe8 - 0x0da5d5fc (Size: 1556 bytes, Frame: 0)
.globl __glExpEvalMesh2Line
.ent __glExpEvalMesh2Line
__glExpEvalMesh2Line:
    # Line 1407
    move	$v0,$s8
    # Line 1418
    lw	$a6,1852($a0)
    # Line 1407
    lui	$at,0x1
    ori	$at,$at,0x1190
    subu	$sp,$sp,$at
    sd	$v0,176($sp)
    sd	$a4,112($sp)
    sd	$a3,216($sp)
    sd	$a2,128($sp)
    sd	$s7,160($sp)
    move	$s7,$a1
    sd	$s0,168($sp)
    move	$s0,$a0
    sd	$gp,184($sp)
    addu	$s8,$sp,$at
    lui	$at,0x1a
    addiu	$at,$at,-22400
    # Line 1418
    beqz	$a6,.L0da5d5e0
    # Line 1407
    addu	$gp,$t9,$at
    # Line 1418
    lw	$a0,1868($s0)
    beqzl	$a0,.L0da5d5e4
    ld	$gp,184($sp)
    sdc1	$f30,248($sp)
    # Line 1421
    mtc1	$a0,$f30
    sd	$s2,328($sp)
    lwc1	$f0,1856($s0)
    cvt.s.w	$f30,$f30
    sdc1	$f26,256($sp)
    lwc1	$f26,1860($s0)
    sd	$s6,312($sp)
    # Line 1427
    ld	$v1,216($sp)
    # Line 1421
    sub.s	$f26,$f26,$f0
    # Line 1427
    move	$s6,$s7
    slt	$v1,$s7,$v1
    # Line 1425
    lwc1	$f2,204($s0)
    # Line 1421
    div.s	$f26,$f26,$f30
    # Line 1425
    lwc1	$f3,208($s0)
    sdc1	$f2,80($sp)
    # Line 1424
    lwc1	$f2,184($s0)
    sdc1	$f3,24($sp)
    # Line 1425
    lwc1	$f1,200($s0)
    # Line 1424
    lwc1	$f3,188($s0)
    sdc1	$f2,72($sp)
    sdc1	$f1,40($sp)
    # Line 1423
    lwc1	$f1,180($s0)
    lwc1	$f2,172($s0)
    # Line 1424
    lwc1	$f0,196($s0)
    sdc1	$f1,88($sp)
    # Line 1425
    lwc1	$f30,212($s0)
    sdc1	$f0,48($sp)
    # Line 1420
    mtc1	$a6,$f0
    sdc1	$f30,16($sp)
    # Line 1424
    lwc1	$f30,192($s0)
    # Line 1420
    lwc1	$f1,1840($s0)
    cvt.s.w	$f0,$f0
    sdc1	$f30,56($sp)
    lwc1	$f30,1844($s0)
    sdc1	$f3,64($sp)
    # Line 1423
    lwc1	$f3,176($s0)
    # Line 1420
    sub.s	$f30,$f30,$f1
    # Line 1423
    lwc1	$f1,168($s0)
    sdc1	$f3,96($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,104($sp)
    # Line 1427
    beqz	$v1,.L0da5d5a0
    # Line 1420
    div.s	$f30,$f30,$f0
    sd	$s1,320($sp)
    sd	$s5,336($sp)
    sd	$s3,296($sp)
    sd	$ra,288($sp)
    sd	$s4,304($sp)
    sdc1	$f22,280($sp)
    sdc1	$f20,240($sp)
    sdc1	$f24,272($sp)
    sdc1	$f28,264($sp)
    ld	$at,112($sp)
    # Line 1427
    ld	$v0,128($sp)
    addiu	$v1,$s6,1
    sd	$v1,224($sp)
    subu	$v1,$at,$v0
    addiu	$s2,$at,1
    slt	$at,$at,$v0
    xori	$at,$at,0x1
    addiu	$v1,$v1,1
    sd	$s2,232($sp)
    addiu	$s2,$s8,-116
    addiu	$s2,$s2,68
    sd	$s2,136($sp)
    la	$s2,sub_0da60000
    sd	$v1,192($sp)
    sd	$at,152($sp)
    addiu	$s2,$s2,-17548
    addiu	$a5,$v0,1
    sd	$a5,200($sp)
    addiu	$a5,$s8,-48
    addiu	$a5,$a5,68
    sd	$a5,120($sp)
    lui	$a5,0xffff
    addu	$a5,$a5,$s8
    addiu	$a5,$a5,-4144
    addiu	$a5,$a5,68
    b	.L0da5d1a4
    sd	$a5,208($sp)
.L0da5d184:
    ld	$a0,192($sp)
    # Line 1432
    lw	$a6,1852($s0)
.L0da5d18c:
    # Line 1427
    ld	$v0,224($sp)
    ld	$at,216($sp)
    addiu	$s6,$s6,1
    addiu	$v0,$v0,1
    beq	$at,$s6,.L0da5d3b0
    sd	$v0,224($sp)
.L0da5d1a4:
    ld	$v1,224($sp)
    # Line 1431
    move	$a0,$zero
    ld	$at,224($sp)
    # Line 1427
    bne	$a6,$v1,.L0da5d38c
    # Line 1432
    ld	$a5,152($sp)
    # Line 1428
    beq	$a6,$s6,.L0da5d3a8
    lwc1	$f28,1844($s0)
.L0da5d1c0:
    # Line 1429
    mtc1	$s6,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f30
    lwc1	$f24,1840($s0)
    add.s	$f24,$f24,$f0
.L0da5d1d8:
    # Line 1432
    ld	$s1,128($sp)
    lui	$s5,0xffff
    beqz	$a5,.L0da5d18c
    ld	$s3,208($sp)
    ld	$s4,200($sp)
    addu	$s5,$s5,$s8
    b	.L0da5d250
    addiu	$s5,$s5,-4144
.L0da5d1f8:
    # Line 1452
    move	$a0,$s0
.L0da5d1fc:
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s2
.L0da5d210:
    # Line 1454
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    move	$a3,$s5
    bal __glExpDoEvalCoord1
    move	$t9,$s2
    # Line 1459
    lw	$t9,5580($s0)
.L0da5d22c:
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1432
    addiu	$s4,$s4,1
    ld	$at,232($sp)
    # Line 1460
    addiu	$s3,$s3,68
    # Line 1432
    addiu	$s1,$s1,1
    beq	$at,$s1,.L0da5d184
    # Line 1460
    addiu	$s5,$s5,68
.L0da5d250:
    # Line 1432
    lw	$a0,1868($s0)
    bne	$a0,$s1,.L0da5d314
    nop
    # Line 1433
    beq	$a0,$s4,.L0da5d330
    lwc1	$f20,1860($s0)
.L0da5d264:
    # Line 1434
    mtc1	$s4,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0da5d27c:
    # Line 1436
    lw	$t9,5580($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    ld	$at,112($sp)
    beq	$at,$s1,.L0da5d2dc
    ld	$v0,136($sp)
    sltu	$v0,$s3,$v0
    beqz	$v0,.L0da5d370
    # Line 1445
    move	$a0,$s0
    # Line 1436
    beq	$s7,$s6,.L0da5d2c4
    nop	# was lw $t9, -32744($gp) # &sub_0da60000
    # Line 1440
    move	$a0,$s0
    addiu	$t9,$t9,-14376
    bal __glExpEvalMesh1Point
    move	$a1,$s3
    b	.L0da5d2e0
    ld	$at,120($sp)
.L0da5d2c4:
    # Line 1442
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    move	$a3,$s3
    bal __glExpDoEvalCoord1
    move	$t9,$s2
.L0da5d2dc:
    ld	$at,120($sp)
.L0da5d2e0:
    # Line 1445
    sltu	$at,$s3,$at
    beqz	$at,.L0da5d338
    ld	$v0,128($sp)
    beq	$s7,$s6,.L0da5d1fc
    # Line 1452
    move	$a0,$s0
    # Line 1445
    beq	$v0,$s1,.L0da5d1f8
    nop	# was lw $t9, -32744($gp) # &sub_0da60000
    # Line 1450
    move	$a0,$s0
    addiu	$t9,$t9,-14376
    bal __glExpEvalMesh1Point
    move	$a1,$s5
    b	.L0da5d210
    nop
.L0da5d314:
    # Line 1433
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f20,1856($s0)
    bne	$a0,$s4,.L0da5d264
    add.s	$f20,$f20,$f0
.L0da5d330:
    # Line 1434
    b	.L0da5d27c
    lwc1	$f22,1860($s0)
.L0da5d338:
    # Line 1456
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s2
    # Line 1457
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s2
    b	.L0da5d22c
    # Line 1459
    lw	$t9,5580($s0)
.L0da5d370:
    # Line 1445
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s2
    b	.L0da5d2e0
    ld	$at,120($sp)
.L0da5d38c:
    # Line 1428
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f30
    lwc1	$f28,1840($s0)
    bne	$a6,$s6,.L0da5d1c0
    add.s	$f28,$f28,$f0
.L0da5d3a8:
    # Line 1429
    b	.L0da5d1d8
    lwc1	$f24,1844($s0)
.L0da5d3b0:
    ld	$s6,216($sp)
    ldc1	$f28,264($sp)
    ldc1	$f24,272($sp)
    ldc1	$f20,240($sp)
    ldc1	$f22,280($sp)
    ld	$ra,288($sp)
    ld	$s5,336($sp)
    ld	$s1,320($sp)
    lui	$s4,0xffff
    la	$s3,sub_0da60000
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4144
    addiu	$s3,$s3,-14376
.L0da5d3e4:
    sdc1	$f20,240($sp)
    # Line 1467
    bne	$a6,$s6,.L0da5d408
    addiu	$a0,$a0,-1
    sd	$a0,144($sp)
    sd	$ra,288($sp)
    # Line 1468
    lwc1	$f20,1844($s0)
    ldc1	$f30,248($sp)
    b	.L0da5d430
    ld	$s6,312($sp)
.L0da5d408:
    mtc1	$s6,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f30,$f0,$f30
    sd	$a0,144($sp)
    lwc1	$f20,1840($s0)
    sd	$ra,288($sp)
    ld	$s6,312($sp)
    add.s	$f20,$f20,$f30
    ldc1	$f30,248($sp)
.L0da5d430:
    # Line 1469
    lw	$t9,5580($s0)
    lw	$t9,28($t9)
    sd	$s1,320($sp)
    jal	sub_0da60000
    li	$a0,3
    # Line 1470
    ld	$at,152($sp)
    beqz	$at,.L0da5d4f0
    ld	$s1,112($sp)
    addiu	$s6,$s8,-48
    ld	$s7,128($sp)
    ld	$at,144($sp)
    sd	$s5,336($sp)
    addiu	$s7,$s7,-1
    sll	$s5,$at,0x4
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    b	.L0da5d494
    addu	$s5,$s5,$s4
.L0da5d478:
    # Line 1476
    move	$a0,$s0
    mov.s	$f13,$f20
    move	$a3,$zero
    bal __glExpDoEvalCoord1
    move	$t9,$s2
.L0da5d48c:
    # Line 1470
    beq	$s7,$s1,.L0da5d4e8
    # Line 1479
    addiu	$s5,$s5,-68
.L0da5d494:
    # Line 1470
    lw	$at,1868($s0)
    bne	$at,$s1,.L0da5d4a8
    # Line 1471
    sltu	$v0,$s5,$s4
    b	.L0da5d4c0
    lwc1	$f14,1860($s0)
.L0da5d4a8:
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f14,1856($s0)
    add.s	$f14,$f14,$f0
.L0da5d4c0:
    # Line 1470
    addiu	$s1,$s1,-1
    # Line 1471
    bnez	$v0,.L0da5d478
    sltu	$v1,$s5,$s6
    beqz	$v1,.L0da5d478
    # Line 1474
    move	$a0,$s0
    move	$a1,$s5
    bal __glExpEvalMesh1Point
    move	$t9,$s3
    b	.L0da5d48c
    nop
.L0da5d4e8:
    ld	$s6,312($sp)
    ld	$s5,336($sp)
.L0da5d4f0:
    ldc1	$f20,240($sp)
    # Line 1481
    lw	$t9,5580($s0)
    ldc1	$f26,256($sp)
    ld	$s3,296($sp)
    lw	$t9,44($t9)
    ld	$s4,304($sp)
    ld	$s1,320($sp)
    jalr	$t9
    ld	$s2,328($sp)
    # Line 1486
    move	$a0,$s0
    # Line 1483
    ldc1	$f1,104($sp)
    # Line 1486
    # lw $t9, -32352($gp) # &__glExpEvalRestoreCurrentState
    # Line 1483
    ldc1	$f2,32($sp)
    ldc1	$f3,96($sp)
    ldc1	$f4,88($sp)
    # Line 1484
    ldc1	$f5,72($sp)
    ldc1	$f6,64($sp)
    ldc1	$f7,56($sp)
    ldc1	$f8,48($sp)
    # Line 1485
    ldc1	$f9,40($sp)
    ldc1	$f12,16($sp)
    ldc1	$f11,24($sp)
    ldc1	$f10,80($sp)
    swc1	$f12,212($s0)
    swc1	$f11,208($s0)
    swc1	$f10,204($s0)
    swc1	$f9,200($s0)
    # Line 1484
    swc1	$f8,196($s0)
    swc1	$f7,192($s0)
    swc1	$f6,188($s0)
    swc1	$f5,184($s0)
    # Line 1483
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    # Line 1486
    bal __glExpEvalRestoreCurrentState
    # Line 1483
    swc1	$f1,168($s0)
    ld	$gp,184($sp)
    # Line 1487
    ld	$s0,168($sp)
    ld	$s7,160($sp)
    ld	$ra,288($sp)
    ld	$at,176($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da5d5a0:
    # Line 1427
    lw	$a0,8($sp)
    sd	$s4,304($sp)
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4144
    la	$s2,sub_0da60000
    sd	$s3,296($sp)
    la	$s3,sub_0da60000
    ld	$v0,128($sp)
    ld	$at,112($sp)
    addiu	$s3,$s3,-14376
    addiu	$s2,$s2,-17548
    slt	$at,$at,$v0
    xori	$at,$at,0x1
    b	.L0da5d3e4
    sd	$at,152($sp)
.L0da5d5e0:
    ld	$gp,184($sp)
.L0da5d5e4:
    # Line 1419
    ld	$s0,168($sp)
    ld	$s7,160($sp)
    ld	$v1,176($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glExpEvalMesh2Line

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

