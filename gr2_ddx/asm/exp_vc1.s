#
# gr2_ddx: exp_vc1.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl expvc1Init
.ent expvc1Init
expvc1Init:
    move	$a1,$a0
    lh	$a2,10($a0)
    lw	$a7,436($a0)
    move	$at,$s8
    addiu	$sp,$sp,-128
    addiu	$s8,$sp,128
    sd	$s0,-32($s8)
    li	$v0,-16
    sd	$at,-40($s8)
    addu	$v1,$a2,$a2
    addiu	$at,$v1,15
    lw	$t1,expScreenPrivateIndex
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    sll	$t1,$t1,0x2
    addu	$a7,$a7,$t1
    lw	$a7,0($a7)
    move	$s0,$sp
    beqz	$sp,.L5ef58170
    lw	$t1,0($a7)
    move	$v0,$zero
    blez	$a2,.L5ef581c0
    li	$a0,5120
    move	$v1,$s0
.L5ef57ea4:
    sh	$a0,0($v1)
    lh	$a2,10($a1)
    addiu	$v0,$v0,1
    slt	$a3,$v0,$a2
    bnez	$a3,.L5ef57ea4
    addiu	$v1,$v1,2
    sd	$s3,-56($s8)
    addu	$v1,$a2,$a2
.L5ef57ec4:
    li	$a4,20
    addu	$a3,$s0,$v1
    li	$a2,5124
    sh	$a2,-2($a3)
    la	$v0,local_0x5f0b0000
    lw	$a2,0($a7)
    lui	$s3,0x7
    addiu	$v0,$v0,18448
    addu	$a2,$s3,$a2
    sb	$a4,-16300($a2)
    sb	$a0,-16304($a2)
    lhu	$a3,0($v0)
    sh	$a3,-16312($a2)
    lhu	$at,2($v0)
    sh	$at,-16312($a2)
    lhu	$a5,4($v0)
    sh	$a5,-16312($a2)
    lhu	$a4,6($v0)
    sh	$a4,-16312($a2)
    lhu	$a3,8($v0)
    sh	$a3,-16312($a2)
    lhu	$at,10($v0)
    sh	$at,-16312($a2)
    lhu	$a5,12($v0)
    sh	$a5,-16312($a2)
    lhu	$a4,14($v0)
    sd	$s2,-72($s8)
    sd	$s1,-64($s8)
    sh	$a4,-16312($a2)
    li	$a4,0x8000
    lh	$s1,10($a1)
    addiu	$a5,$s1,2816
    sltu	$a4,$a4,$a5
    bnez	$a4,.L5ef58184
    lw	$s2,0($a7)
.L5ef57f50:
    move	$v1,$s1
    andi	$v0,$s1,0x3
    li	$t2,2816
    addu	$t0,$s3,$s2
    li	$at,11
    sb	$at,-16300($t0)
    beqz	$s1,.L5ef58004
    sb	$t2,-16304($t0)
    move	$a0,$s0
    addu	$a2,$s1,$s1
    beqz	$v0,.L5ef57f94
    addu	$a2,$s0,$a2
.L5ef57f80:
    addiu	$a0,$a0,2
    lhu	$a3,-2($a0)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef57f80
    sh	$a3,-16312($t0)
.L5ef57f94:
    sra	$a6,$v1,0x2
    beqz	$a6,.L5ef58000
    move	$v0,$a0
    slti	$a4,$a6,2
    bnez	$a4,.L5ef581cc
    addiu	$a0,$a2,-8
    move	$v1,$t0
    lhu	$at,0($v0)
.L5ef57fb4:
    sh	$at,-16312($v1)
    lhu	$at,2($v0)
    sh	$at,-16312($v1)
    lhu	$at,4($v0)
    sh	$at,-16312($v1)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($v1)
    bne	$v0,$a0,.L5ef57fb4
    lhu	$at,0($v0)
    move	$a4,$at
    sh	$a4,-16312($t0)
    move	$a5,$v0
    lhu	$a3,2($a5)
    sh	$a3,-16312($t0)
    lhu	$a6,4($a5)
    sh	$a6,-16312($t0)
    lhu	$a5,6($a5)
    sh	$a5,-16312($t0)
.L5ef58000:
    sd	$s7,-48($s8)
.L5ef58004:
    li	$v0,64
    sd	$s7,-48($s8)
    addu	$s7,$s3,$t1
    sb	$zero,-16300($s7)
    sb	$v0,-16304($s7)
    sh	$t2,-16320($s7)
    lh	$at,10($a1)
    addiu	$s0,$gp,-21380
    addu	$at,$at,$at
    addiu	$at,$at,2816
    sh	$at,-16320($s7)
    move	$s1,$zero
    lh	$v0,8($a1)
    li	$a3,0xff04
    li	$s3,10
    slti	$a5,$v0,1279
    bnez	$a5,.L5ef58060
    li	$at,5
    sd	$s4,-96($s8)
    sd	$s6,-88($s8)
    sd	$s5,-80($s8)
    b	.L5ef58088
    sh	$a3,-16320($s7)
.L5ef58060:
    div	$zero,$v0,$at
    sd	$s4,-96($s8)
    sd	$s6,-88($s8)
    mfhi	$a4
    sd	$s5,-80($s8)
    teq	$at,$zero,0x7
    mflo	$a5
    sll	$a5,$a5,0x8
    or	$a4,$a4,$a5
    sh	$a4,-16320($s7)
.L5ef58088:
    sd	$a1,-120($s8)
    sd	$a7,-112($s8)
    sd	$ra,-104($s8)
    sb	$zero,-16300($s7)
    li	$s6,96
    sb	$s6,-16304($s7)
    sh	$zero,-16320($s7)
    la	$s4,rrmSetReservedDID
    lw	$s2,116($a1)
    la	$s5,ioctl
    li	$s6,-1
    lw	$s2,100($s2)
    move	$a0,$s2
.L5ef580bc:
    li	$a1,15016
    move	$a2,$s0
    jalr	$s5
    move	$t9,$s5
    beq	$v0,$s6,.L5ef58154
    ld	$a0,-120($s8)
.L5ef580d4:
    lw	$a3,4($s0)
    lw	$a2,8($s0)
    lw	$a1,0($s0)
    addiu	$s0,$s0,12
    jalr	$s4
    move	$t9,$s4
    addiu	$s1,$s1,1
    bne	$s1,$s3,.L5ef580bc
    move	$a0,$s2
    ld	$s1,-64($s8)
    ld	$s2,-72($s8)
    ld	$s3,-56($s8)
    ld	$s4,-96($s8)
    ld	$s5,-80($s8)
    ld	$s6,-88($s8)
    li	$v0,5136
    li	$a3,244
    ld	$ra,-104($s8)
    ld	$at,-40($s8)
    ld	$s0,-112($s8)
    li	$a4,9
    li	$a5,60
    sw	$a5,4($s0)
    ld	$s0,-32($s8)
    sb	$a5,-16296($s7)
    sb	$a4,-16300($s7)
    sb	$a3,-16304($s7)
    sh	$v0,-16312($s7)
    ld	$s7,-48($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef58154:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s1
    jal	ErrorF
    addiu	$a0,$a0,-2608
    b	.L5ef580d4
    ld	$a0,-120($s8)
.L5ef58170:
    ld	$a3,-40($s8)
    ld	$s0,-32($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L5ef58184:
    sd	$a7,-112($s8)
    sd	$t1,-128($s8)
    sd	$a1,-120($s8)
    li	$a1,2816
    move	$a2,$s1
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,-104($s8)
    jal	ErrorF
    addiu	$a0,$a0,-2664
    ld	$t1,-128($s8)
    ld	$ra,-104($s8)
    ld	$a7,-112($s8)
    b	.L5ef57f50
    ld	$a1,-120($s8)
.L5ef581c0:
    li	$a0,5120
    b	.L5ef57ec4
    sd	$s3,-56($s8)
.L5ef581cc:
    move	$v1,$v0
    lhu	$at,0($v1)
    sh	$at,-16312($t0)
    lhu	$a5,2($v1)
    sh	$a5,-16312($t0)
    lhu	$a4,4($v1)
    sh	$a4,-16312($t0)
    lhu	$a3,6($v1)
    b	.L5ef58000
    sh	$a3,-16312($t0)
.L5ef581f4:
    addiu	$sp,$sp,-64
    sd	$s5,8($sp)
    sd	$ra,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    sd	$s4,32($sp)
    la	$s4,local_0x5ef60000
    li	$s1,2
    b	.L5ef58248
    addiu	$s4,$s4,-32268
.L5ef58220:
    subu	$a3,$a1,$s5
    lhu	$v1,0($a6)
    slti	$v0,$a3,3
    lh	$at,0($s0)
    sh	$v1,0($s0)
    beqz	$v0,.L5ef58348
    sh	$at,0($a6)
    slti	$a2,$s5,2
.L5ef58240:
    bnez	$a2,.L5ef58360
    move	$a1,$s5
.L5ef58248:
    move	$s5,$a1
    addu	$a7,$a1,$a1
    addu	$a6,$a1,$a1
    sra	$at,$a1,0x1
    beq	$a1,$s1,.L5ef5837c
    lhu	$a0,0($s0)
    addu	$a6,$a6,$s0
    addu	$a7,$a7,$s0
    move	$a5,$zero
    move	$a4,$s0
    addu	$at,$at,$at
    addu	$at,$at,$s0
    lhu	$v0,0($at)
    dsll32	$a3,$a0,0x10
    dsra32	$a3,$a3,0x10
    sh	$v0,0($s0)
    sh	$a3,0($at)
    b	.L5ef582e8
    lhu	$a3,0($s0)
.L5ef58294:
    move	$a0,$a6
.L5ef58298:
    lhu	$at,-2($a0)
.L5ef5829c:
    addiu	$s5,$s5,-1
    slt	$at,$a3,$at
    beqz	$at,.L5ef582c8
    addu	$a6,$s5,$s5
    lhu	$v0,-4($a0)
    addiu	$s5,$s5,-1
    addiu	$a0,$a0,-4
    slt	$v0,$a3,$v0
    bnezl	$v0,.L5ef5829c
    lhu	$at,-2($a0)
    addu	$a6,$s5,$s5
.L5ef582c8:
    slt	$a0,$a5,$s5
    beqz	$a0,.L5ef58220
    addu	$a6,$a6,$s0
    lhu	$v0,0($a6)
    lh	$at,0($a4)
    sh	$v0,0($a4)
    beqz	$a0,.L5ef58220
    sh	$at,0($a6)
.L5ef582e8:
    move	$a0,$a4
    addiu	$a4,$a4,2
.L5ef582f0:
    beq	$a4,$a7,.L5ef58294
    addiu	$a5,$a5,1
    lhu	$v1,2($a0)
    slt	$v1,$v1,$a3
    beqzl	$v1,.L5ef58298
    move	$a0,$a6
    addiu	$a4,$a4,2
    beq	$a4,$a7,.L5ef58294
    addiu	$a5,$a5,1
    lhu	$a2,4($a0)
    slt	$a2,$a2,$a3
    beqz	$a2,.L5ef58294
    addiu	$a0,$a0,6
    addiu	$a4,$a4,2
    beq	$a4,$a7,.L5ef58294
    addiu	$a5,$a5,1
    lhu	$at,0($a0)
    slt	$at,$at,$a3
    bnezl	$at,.L5ef582f0
    addiu	$a4,$a4,2
    b	.L5ef58298
    move	$a0,$a6
.L5ef58348:
    addiu	$a1,$a3,-1
    addiu	$a0,$a6,2
    bal	.L5ef581f4
    move	$t9,$s4
    b	.L5ef58240
    slti	$a2,$s5,2
.L5ef58360:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,0($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef5837c:
    lhu	$a1,2($s0)
    slt	$v0,$a1,$a0
    beqzl	$v0,.L5ef583a0
    ld	$s0,24($sp)
    sh	$a1,0($s0)
    dsll32	$v1,$a0,0x10
    dsra32	$v1,$v1,0x10
    sh	$v1,2($s0)
    ld	$s0,24($sp)
.L5ef583a0:
    ld	$s1,16($sp)
    ld	$ra,0($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end expvc1Init

.globl expvc1ComputeDIDTable
.ent expvc1ComputeDIDTable
expvc1ComputeDIDTable:
    move	$v0,$zero
    move	$at,$s8
    addiu	$sp,$sp,-192
    addiu	$s8,$sp,192
    sd	$s6,-176($s8)
    sd	$s2,-112($s8)
    lw	$t8,expScreenPrivateIndex
    sd	$s7,-104($s8)
    lw	$s7,436($a0)
    li	$v1,240
    sll	$t8,$t8,0x2
    addu	$s7,$s7,$t8
    lw	$s7,0($s7)
    sd	$at,-96($s8)
    sd	$s5,-88($s8)
    lw	$s5,0($s7)
    lui	$at,0x7
    li	$t8,9
    addu	$s5,$s5,$at
    sb	$t8,-16300($s5)
    sb	$v1,-16304($s5)
    lhu	$at,-16312($s5)
    move	$s2,$a0
    lhu	$v1,-16312($s5)
    andi	$at,$at,0x10
    beqz	$at,.L5ef59000
    sd	$v1,-160($s8)
    li	$s6,1
.L5ef58428:
    blez	$a1,.L5ef58474
    move	$a3,$a2
    move	$a0,$a1
    andi	$at,$a1,0x1
    sll	$t0,$a1,0x2
    subu	$t0,$t0,$a1
    sll	$t0,$t0,0x2
    beqz	$at,.L5ef58464
    addu	$t0,$t0,$a2
    lw	$a7,8($a3)
    beqz	$a7,.L5ef5908c
    nop
    lw	$a6,4($a7)
.L5ef5845c:
    addiu	$a3,$a3,12
    addu	$v0,$a6,$v0
.L5ef58464:
    sra	$at,$a0,0x1
    bnezl	$at,.L5ef584d0
    lw	$a7,8($a3)
.L5ef58470:
    sd	$s3,-184($s8)
.L5ef58474:
    sd	$s3,-184($s8)
    li	$a0,-16
    sll	$v1,$v0,0x3
    addiu	$v1,$v1,15
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    beqz	$sp,.L5ef58a8c
    move	$s3,$sp
    sd	$s1,-64($s8)
    blez	$a1,.L5ef585b8
    move	$s1,$s3
    move	$t2,$zero
    b	.L5ef584fc
    move	$t3,$a2
.L5ef584ac:
    lw	$a6,4($a7)
    lw	$a7,20($a3)
.L5ef584b4:
    addiu	$a3,$a3,24
    beqz	$a7,.L5ef584e0
    addu	$v0,$a6,$v0
    lw	$a6,4($a7)
.L5ef584c4:
    beq	$a3,$t0,.L5ef58470
    addu	$v0,$a6,$v0
    lw	$a7,8($a3)
.L5ef584d0:
    bnez	$a7,.L5ef584ac
    li	$a6,1
    b	.L5ef584b4
    lw	$a7,20($a3)
.L5ef584e0:
    b	.L5ef584c4
    li	$a6,1
.L5ef584e8:
    addiu	$t3,$t3,12
    sll	$a4,$t1,0x3
    addiu	$t2,$t2,1
    beq	$t2,$a1,.L5ef585b8
    addu	$s1,$a4,$s1
.L5ef584fc:
    lw	$v0,8($t3)
    beqz	$v0,.L5ef5850c
    li	$a3,1
    lw	$a3,4($v0)
.L5ef5850c:
    beqz	$v0,.L5ef585ac
    move	$a6,$a3
    addiu	$a7,$v0,8
.L5ef58518:
    move	$t1,$zero
    beqz	$a3,.L5ef584e8
    move	$v0,$a7
    move	$t0,$s1
    b	.L5ef58540
    move	$a3,$zero
.L5ef58530:
    addiu	$t0,$t0,8
.L5ef58534:
    beqz	$a6,.L5ef584e8
    sh	$a3,-4($t0)
    move	$a3,$zero
.L5ef58540:
    lh	$a7,2($v0)
    sh	$t2,6($t0)
    sw	$v0,0($t0)
    addiu	$t1,$t1,1
    addiu	$a3,$a3,1
.L5ef58554:
    addiu	$a6,$a6,-1
    beqz	$a6,.L5ef58530
    addiu	$v0,$v0,8
    lh	$a5,2($v0)
    bnel	$a5,$a7,.L5ef58534
    addiu	$t0,$t0,8
    addiu	$a3,$a3,1
    addiu	$a6,$a6,-1
    beqz	$a6,.L5ef58530
    addiu	$v0,$v0,8
    lh	$at,2($v0)
    bnel	$at,$a7,.L5ef58534
    addiu	$t0,$t0,8
    addiu	$a3,$a3,1
    addiu	$a6,$a6,-1
    beqz	$a6,.L5ef58530
    addiu	$v0,$v0,8
    lh	$v1,2($v0)
    beql	$v1,$a7,.L5ef58554
    addiu	$a3,$a3,1
    b	.L5ef58534
    addiu	$t0,$t0,8
.L5ef585ac:
    move	$a7,$t3
    b	.L5ef58518
    nop
.L5ef585b8:
    sd	$s4,-168($s8)
    la	$s4,Xalloc
    li	$a0,24
    sd	$ra,-80($s8)
    jalr	$s4
    move	$t9,$s4
    sd	$v0,-144($s8)
    bnez	$v0,.L5ef5860c
    ld	$ra,-80($s8)
    move	$v0,$zero
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s3,-184($s8)
    ld	$s4,-168($s8)
    ld	$s5,-88($s8)
    ld	$s6,-176($s8)
    ld	$s7,-104($s8)
    ld	$a4,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef5860c:
    ld	$a6,-144($s8)
    li	$a0,64
    move	$t9,$s4
    sh	$zero,0($a6)
    li	$a7,16
    lh	$a5,10($s2)
    sw	$zero,20($a6)
    sw	$zero,16($a6)
    sh	$zero,8($a6)
    sh	$zero,6($a6)
    sh	$a7,4($a6)
    jalr	$s4
    sh	$a5,2($a6)
    ld	$t0,-144($s8)
    sw	$v0,12($t0)
    beqz	$v0,.L5ef597e8
    ld	$t0,-160($s8)
    sd	$s0,-72($s8)
    sltu	$at,$s3,$s1
    beqz	$at,.L5ef58ab4
    ld	$s0,-144($s8)
    sd	$s5,-152($s8)
    sd	$s2,-136($s8)
    move	$s2,$s3
    sd	$s6,-128($s8)
    b	.L5ef586ec
    la	$s6,Xrealloc
.L5ef58678:
    move	$a0,$v0
    # lw $t9, -29756($gp)
    lh	$a2,6($s3)
    lw	$a1,12($s0)
    jal	memmove
    sll	$a2,$a2,0x2
    move	$v0,$s3
    ld	$s3,-184($s8)
    ld	$t0,-160($s8)
.L5ef5869c:
    beqzl	$v0,.L5ef587f8
    ld	$s0,-144($s8)
    lh	$a1,6($s0)
    lh	$a3,4($s0)
    beq	$a3,$a1,.L5ef59190
    lw	$v0,12($s0)
.L5ef586b4:
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$v0
    sw	$s2,0($v1)
    lh	$at,6($s0)
    addiu	$at,$at,1
    sh	$at,6($s0)
    lh	$a5,8($s0)
    lh	$a4,4($s2)
    addu	$a4,$a4,$a5
    sh	$a4,8($s0)
    addiu	$s2,$s2,8
.L5ef586e0:
    sltu	$a4,$s2,$s1
    beqzl	$a4,.L5ef58ac8
    lw	$v0,848($s7)
.L5ef586ec:
    lw	$a1,0($s2)
    ld	$s3,-184($s8)
    beqz	$s0,.L5ef5870c
    lh	$a1,2($a1)
    lh	$a4,0($s0)
    slt	$a4,$a1,$a4
    beqz	$a4,.L5ef58710
    ld	$s3,-184($s8)
.L5ef5870c:
    ld	$s0,-144($s8)
.L5ef58710:
    lh	$a5,2($s0)
    slt	$a5,$a1,$a5
    bnezl	$a5,.L5ef58738
    lh	$v1,0($s0)
    lw	$s0,16($s0)
.L5ef58724:
    lh	$at,2($s0)
    slt	$at,$a1,$at
    beqzl	$at,.L5ef58724
    lw	$s0,16($s0)
    lh	$v1,0($s0)
.L5ef58738:
    bne	$v1,$a1,.L5ef588e8
    move	$s5,$a1
.L5ef58740:
    beqzl	$s0,.L5ef586e0
    addiu	$s2,$s2,8
    lw	$a4,0($s2)
    lh	$a5,2($s0)
    lh	$a4,6($a4)
    slt	$a4,$a4,$a5
    bnez	$a4,.L5ef587bc
    nop
    lh	$a1,6($s0)
.L5ef58764:
    lh	$a3,4($s0)
    beq	$a3,$a1,.L5ef58854
    lw	$v0,12($s0)
.L5ef58770:
    sll	$a4,$a1,0x2
    addu	$a4,$a4,$v0
    sw	$s2,0($a4)
    lh	$v1,6($s0)
    addiu	$v1,$v1,1
    sh	$v1,6($s0)
    lh	$at,8($s0)
    lh	$a5,4($s2)
    addu	$a5,$a5,$at
    sh	$a5,8($s0)
    lw	$s0,16($s0)
    beqzl	$s0,.L5ef586e0
    addiu	$s2,$s2,8
    lw	$a5,0($s2)
    lh	$at,2($s0)
    lh	$a5,6($a5)
    slt	$a5,$a5,$at
    beqzl	$a5,.L5ef58764
    lh	$a1,6($s0)
.L5ef587bc:
    beqzl	$s0,.L5ef586e0
    addiu	$s2,$s2,8
    lw	$a1,0($s2)
    lh	$at,0($s0)
    lh	$a1,6($a1)
    beql	$at,$a1,.L5ef586e0
    addiu	$s2,$s2,8
    move	$s5,$a1
    li	$a0,24
    jalr	$s4
    move	$t9,$s4
    bnez	$v0,.L5ef58a10
    move	$s3,$v0
    move	$v0,$zero
    ld	$s0,-144($s8)
.L5ef587f8:
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    ld	$s3,-184($s8)
.L5ef58804:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef58804
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$a4,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef58854:
    move	$a0,$v0
    move	$t9,$s6
    addiu	$a5,$a3,16
    dsll32	$a5,$a5,0x10
    dsra32	$a5,$a5,0x10
    sll	$a1,$a5,0x2
    jalr	$s6
    sh	$a5,4($s0)
    sw	$v0,12($s0)
    bnez	$v0,.L5ef588e0
    ld	$t0,-160($s8)
    move	$a1,$zero
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
.L5ef58890:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef58890
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef588e0:
    b	.L5ef58770
    lh	$a1,6($s0)
.L5ef588e8:
    li	$a0,24
    jalr	$s4
    move	$t9,$s4
    bnez	$v0,.L5ef58960
    move	$s3,$v0
    move	$v0,$zero
    ld	$s0,-144($s8)
.L5ef58904:
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    ld	$s3,-184($s8)
.L5ef58910:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef58910
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$v1,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L5ef58960:
    sh	$s5,0($s3)
    lh	$v1,2($s0)
    sh	$v1,2($s3)
    lh	$v0,4($s0)
    sh	$s5,2($s0)
    sh	$v0,4($s3)
    lh	$at,6($s0)
    sh	$at,6($s3)
    lh	$a5,8($s0)
    sw	$s0,20($s3)
    sh	$a5,8($s3)
    lw	$a4,16($s0)
    sw	$a4,16($s3)
    lw	$v0,16($s0)
    beqzl	$v0,.L5ef589a8
    sw	$s3,16($s0)
    sw	$s3,20($v0)
    sw	$s3,16($s0)
.L5ef589a8:
    lh	$a0,4($s3)
    move	$t9,$s4
    jalr	$s4
    sll	$a0,$a0,0x2
    bnez	$v0,.L5ef589dc
    sw	$v0,12($s3)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s3
    move	$v0,$zero
    ld	$s3,-184($s8)
    b	.L5ef58a00
    ld	$t0,-160($s8)
.L5ef589dc:
    move	$a0,$v0
    # lw $t9, -29756($gp)
    lh	$a2,6($s3)
    lw	$a1,12($s0)
    jal	memmove
    sll	$a2,$a2,0x2
    move	$v0,$s3
    ld	$s3,-184($s8)
    ld	$t0,-160($s8)
.L5ef58a00:
    beqzl	$v0,.L5ef58904
    ld	$s0,-144($s8)
    b	.L5ef58740
    lw	$s0,16($s0)
.L5ef58a10:
    sh	$s5,0($s3)
    lh	$v1,2($s0)
    sh	$v1,2($s3)
    lh	$v0,4($s0)
    sh	$s5,2($s0)
    sh	$v0,4($s3)
    lh	$at,6($s0)
    sh	$at,6($s3)
    lh	$a5,8($s0)
    sw	$s0,20($s3)
    sh	$a5,8($s3)
    lw	$a4,16($s0)
    sw	$a4,16($s3)
    lw	$v0,16($s0)
    beqzl	$v0,.L5ef58a58
    sw	$s3,16($s0)
    sw	$s3,20($v0)
    sw	$s3,16($s0)
.L5ef58a58:
    lh	$a0,4($s3)
    move	$t9,$s4
    jalr	$s4
    sll	$a0,$a0,0x2
    bnez	$v0,.L5ef58678
    sw	$v0,12($s3)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s3
    move	$v0,$zero
    ld	$s3,-184($s8)
    b	.L5ef5869c
    ld	$t0,-160($s8)
.L5ef58a8c:
    move	$v0,$zero
    ld	$s2,-112($s8)
    ld	$s3,-184($s8)
    ld	$s5,-88($s8)
    ld	$s6,-176($s8)
    ld	$s7,-104($s8)
    ld	$a4,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef58ab4:
    sd	$s5,-152($s8)
    sd	$s2,-136($s8)
    sd	$s6,-128($s8)
    ld	$s3,-184($s8)
    lw	$v0,848($s7)
.L5ef58ac8:
    andi	$a5,$v0,0x1
    beqz	$a5,.L5ef59770
    ld	$s3,-184($s8)
    li	$s4,5120
    move	$s6,$zero
    li	$v1,32752
    sd	$v1,-120($s8)
    li	$at,-2
    and	$at,$v0,$at
    sw	$at,848($s7)
.L5ef58af0:
    ld	$a4,-136($s8)
    lh	$a4,8($a4)
    li	$a5,-16
    addu	$a4,$a4,$a4
    addiu	$a4,$a4,25
    and	$a4,$a4,$a5
    subu	$sp,$sp,$a4
    beqz	$sp,.L5ef5978c
    move	$s5,$sp
    move	$s7,$zero
    ld	$s1,-144($s8)
    addiu	$t9,$s5,2
    lh	$a6,6($s1)
.L5ef58b24:
    move	$s0,$zero
    move	$t1,$t9
    blez	$a6,.L5ef58c34
    move	$ra,$zero
    move	$t8,$zero
    b	.L5ef58b50
    lw	$a3,12($s1)
.L5ef58b40:
    slt	$a5,$ra,$a6
    beqz	$a5,.L5ef58c38
    slti	$at,$s0,2
    lw	$a3,12($s1)
.L5ef58b50:
    addiu	$ra,$ra,1
    addu	$a3,$a3,$t8
    lw	$a3,0($a3)
    move	$a7,$zero
    addiu	$t8,$t8,4
    lh	$s2,4($a3)
    lh	$t3,6($a3)
    lw	$a3,0($a3)
    blez	$s2,.L5ef58b40
    addiu	$s2,$s2,-1
    addiu	$t2,$s2,1
    andi	$a4,$t2,0x1
    beqz	$a4,.L5ef58bb8
    move	$s3,$t2
    lh	$a6,0($a3)
    slt	$a5,$a6,$t0
    beqz	$a5,.L5ef58bb8
    addiu	$a7,$a7,1
    sll	$at,$a6,0x5
    addiu	$a3,$a3,8
    addiu	$t1,$t1,2
    or	$at,$at,$t3
    sh	$at,-2($t1)
    addiu	$s0,$s0,1
    dsll32	$s0,$s0,0x10
    dsra32	$s0,$s0,0x10
.L5ef58bb8:
    sra	$at,$s3,0x1
    beqzl	$at,.L5ef58b40
    lh	$a6,6($s1)
    b	.L5ef58c04
    lh	$a6,0($a3)
.L5ef58bcc:
    lh	$a6,0($a3)
    slt	$v1,$a6,$t0
    beqz	$v1,.L5ef58bf8
    sll	$a4,$a6,0x5
    addiu	$a3,$a3,8
    addiu	$t1,$t1,2
    or	$a4,$a4,$t3
    sh	$a4,-2($t1)
    addiu	$s0,$s0,1
    dsll32	$s0,$s0,0x10
    dsra32	$s0,$s0,0x10
.L5ef58bf8:
    beql	$a7,$t2,.L5ef58b40
    lh	$a6,6($s1)
    lh	$a6,0($a3)
.L5ef58c04:
    slt	$at,$a6,$t0
    beqz	$at,.L5ef58bcc
    addiu	$a7,$a7,2
    sll	$v1,$a6,0x5
    addiu	$a3,$a3,8
    addiu	$t1,$t1,2
    or	$v1,$v1,$t3
    sh	$v1,-2($t1)
    addiu	$s0,$s0,1
    dsll32	$s0,$s0,0x10
    b	.L5ef58bcc
    dsra32	$s0,$s0,0x10
.L5ef58c34:
    slti	$at,$s0,2
.L5ef58c38:
    beqz	$at,.L5ef59008
.L5ef58c3c:
    ld	$v0,-136($s8)
    move	$a1,$s5
    lh	$t2,2($s1)
    lh	$v0,10($v0)
    move	$a3,$zero
    move	$a6,$s5
    bne	$v0,$t2,.L5ef58d68
    addiu	$t8,$s0,1
    addiu	$t2,$t2,-1
.L5ef58c60:
    sh	$s0,0($s5)
.L5ef58c64:
    addu	$t1,$t8,$t8
    beqz	$s6,.L5ef59094
    sll	$v0,$t8,0x1
    ld	$v1,-120($s8)
    subu	$s4,$s4,$v0
    slt	$v1,$s4,$v1
    bnez	$v1,.L5ef5902c
    andi	$v0,$t8,0x3
    ld	$a4,-152($s8)
    sra	$a5,$s4,0x8
    sb	$a5,-16300($a4)
    bltz	$s0,.L5ef58d2c
    sb	$s4,-16304($a4)
    addu	$t1,$s5,$t1
    beqz	$v0,.L5ef58cbc
    move	$a3,$t8
.L5ef58ca4:
    addiu	$a1,$a1,2
    ld	$v1,-152($s8)
    lhu	$at,-2($a1)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef58ca4
    sh	$at,-16312($v1)
.L5ef58cbc:
    ld	$a2,-152($s8)
    sra	$a6,$a3,0x2
    beqz	$a6,.L5ef58d2c
    move	$v0,$a1
    slti	$a4,$a6,2
    bnez	$a4,.L5ef59b40
    ld	$a6,-152($s8)
    addiu	$v1,$t1,-8
    lhu	$at,0($v0)
.L5ef58ce0:
    sh	$at,-16312($a2)
    lhu	$at,2($v0)
    sh	$at,-16312($a2)
    lhu	$at,4($v0)
    sh	$at,-16312($a2)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($a2)
    bne	$v0,$v1,.L5ef58ce0
    lhu	$at,0($v0)
    move	$v1,$at
    sh	$v1,-16312($a6)
    move	$a5,$v0
    lhu	$a4,2($a5)
    sh	$a4,-16312($a6)
    lhu	$v1,4($a5)
    sh	$v1,-16312($a6)
    lhu	$a5,6($a5)
    sh	$a5,-16312($a6)
.L5ef58d2c:
    ld	$a3,-136($s8)
    lw	$a3,116($a3)
    lw	$a1,220($a3)
    ld	$at,-152($s8)
    beqz	$a1,.L5ef5943c
    lh	$v0,0($s1)
    li	$a4,1
    beq	$a4,$a1,.L5ef59254
    lhu	$t1,226($a3)
    move	$t3,$v0
    slt	$a5,$t1,$t2
    beqz	$a5,.L5ef58dd8
    move	$v0,$t1
    b	.L5ef58ddc
    nop
.L5ef58d68:
    ld	$at,-128($s8)
    li	$a5,-16
    beqz	$at,.L5ef58c60
    ld	$a4,-136($s8)
    addiu	$v1,$v0,-2
    bnel	$v1,$t2,.L5ef58c64
    sh	$s0,0($s5)
    lh	$a4,8($a4)
    addu	$a4,$a4,$a4
    addiu	$a4,$a4,25
    and	$a4,$a4,$a5
    subu	$sp,$sp,$a4
    move	$v0,$sp
    beqz	$sp,.L5ef59964
    move	$s7,$sp
    lhu	$a5,0($s5)
    bltz	$a5,.L5ef58c60
    move	$a7,$v0
.L5ef58db0:
    lhu	$v1,0($a6)
    sh	$v1,0($a7)
    lhu	$at,0($s5)
    addiu	$a6,$a6,2
    addiu	$a3,$a3,1
    slt	$at,$at,$a3
    beqz	$at,.L5ef58db0
    addiu	$a7,$a7,2
    b	.L5ef58c64
    sh	$s0,0($s5)
.L5ef58dd8:
    move	$v0,$t2
.L5ef58ddc:
    move	$a6,$v0
.L5ef58de0:
    sll	$a5,$t3,0x1
    slt	$a4,$t3,$a6
    subu	$t2,$a6,$t3
    move	$a3,$t2
    beqz	$a4,.L5ef58f94
    andi	$a1,$t2,0x3
    addiu	$a5,$a5,2816
    move	$a7,$t2
    move	$v0,$zero
    sra	$v1,$a5,0x8
    sb	$v1,-16300($at)
    beqz	$a1,.L5ef58e28
    sb	$a5,-16304($at)
.L5ef58e14:
    addiu	$v0,$v0,1
    ld	$at,-152($s8)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef58e14
    sh	$s4,-16312($at)
.L5ef58e28:
    ld	$a2,-152($s8)
    sra	$a6,$a7,0x2
    beqz	$a6,.L5ef58ebc
    move	$a1,$v0
    slti	$v1,$a6,2
    bnez	$v1,.L5ef59b88
    ld	$a4,-152($s8)
    addiu	$at,$t2,-12
    addiu	$a0,$t2,-4
    addiu	$v0,$t2,-8
    addiu	$v1,$a1,4
    move	$a1,$s4
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef58e60:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef58eb4
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef58eb4
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef58eb4
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef58e60
    sh	$a1,-16312($a2)
.L5ef58eb4:
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
.L5ef58ebc:
    addu	$a5,$t1,$t3
    move	$v0,$zero
    move	$a1,$t2
    andi	$a6,$t2,0x3
    ld	$at,-152($s8)
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,2816
    sra	$v1,$a5,0x8
    sb	$v1,-16300($at)
    beqz	$a6,.L5ef58efc
    sb	$a5,-16304($at)
.L5ef58ee8:
    addiu	$v0,$v0,1
    ld	$at,-152($s8)
    addi	$a6,$a6,-1
    bnez	$a6,.L5ef58ee8
    sh	$s4,-16312($at)
.L5ef58efc:
    addiu	$a0,$t2,-4
    ld	$a2,-152($s8)
    ld	$a4,-152($s8)
    sra	$a6,$a1,0x2
    beqz	$a6,.L5ef58f94
    move	$t1,$v0
    slti	$v1,$a6,2
    bnez	$v1,.L5ef59ba4
    move	$a3,$t2
    move	$a1,$s4
    addiu	$at,$t2,-12
    addiu	$v0,$t2,-8
    addiu	$v1,$t1,4
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef58f38:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef58f8c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef58f8c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef58f8c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef58f38
    sh	$a1,-16312($a2)
.L5ef58f8c:
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
.L5ef58f94:
    lw	$s1,16($s1)
.L5ef58f98:
    bnezl	$s1,.L5ef58b24
    lh	$a6,6($s1)
    move	$t2,$t8
    move	$a6,$s5
    li	$t9,1
    ld	$s3,-184($s8)
    ld	$s1,-120($s8)
    ld	$ra,-128($s8)
    lhu	$a5,0($s5)
    ld	$t1,-136($s8)
    ld	$a3,-152($s8)
    addiu	$a5,$a5,4
    beqz	$s7,.L5ef59228
    sh	$a5,0($s5)
    li	$t9,1
    ld	$s3,-184($s8)
    ld	$s1,-120($s8)
    lhu	$t1,0($s7)
    ld	$ra,-128($s8)
    ld	$a3,-152($s8)
    addiu	$t1,$t1,4
    sh	$t1,0($s7)
    beqz	$s7,.L5ef59228
    ld	$t1,-136($s8)
    b	.L5ef5922c
    li	$t3,2
.L5ef59000:
    b	.L5ef58428
    move	$s6,$zero
.L5ef59008:
    sd	$t9,-56($s8)
    # lw $t9, -32736($gp)
    move	$a1,$s0
    addiu	$t9,$t9,-32268
    bal	expvc1Init
    ld	$a0,-56($s8)
    ld	$t9,-56($s8)
    b	.L5ef58c3c
    ld	$t0,-160($s8)
.L5ef5902c:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    ld	$s3,-184($s8)
.L5ef5903c:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef5903c
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef5908c:
    b	.L5ef5845c
    li	$a6,1
.L5ef59094:
    sra	$a5,$s4,0x8
    move	$a3,$t8
    ld	$v1,-120($s8)
    addu	$s2,$v0,$s4
    andi	$v0,$t8,0x3
    slt	$v1,$v1,$s2
    bnez	$v1,.L5ef59904
    ld	$a4,-152($s8)
    sb	$a5,-16300($a4)
    bltz	$s0,.L5ef59158
    sb	$s4,-16304($a4)
    move	$a1,$s5
    addu	$t1,$t8,$t8
    beqz	$v0,.L5ef590e8
    addu	$t1,$s5,$t1
.L5ef590d0:
    addiu	$a1,$a1,2
    ld	$v1,-152($s8)
    lhu	$at,-2($a1)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef590d0
    sh	$at,-16312($v1)
.L5ef590e8:
    ld	$a2,-152($s8)
    sra	$a6,$a3,0x2
    beqz	$a6,.L5ef59158
    move	$v0,$a1
    slti	$a4,$a6,2
    bnez	$a4,.L5ef59bc0
    ld	$a6,-152($s8)
    addiu	$v1,$t1,-8
    lhu	$at,0($v0)
.L5ef5910c:
    sh	$at,-16312($a2)
    lhu	$at,2($v0)
    sh	$at,-16312($a2)
    lhu	$at,4($v0)
    sh	$at,-16312($a2)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($a2)
    bne	$v0,$v1,.L5ef5910c
    lhu	$at,0($v0)
    move	$v1,$at
    sh	$v1,-16312($a6)
    move	$a5,$v0
    lhu	$a4,2($a5)
    sh	$a4,-16312($a6)
    lhu	$v1,4($a5)
    sh	$v1,-16312($a6)
    lhu	$a5,6($a5)
    sh	$a5,-16312($a6)
.L5ef59158:
    ld	$a3,-136($s8)
    lw	$a3,116($a3)
    lw	$a1,220($a3)
    beqz	$a1,.L5ef599e4
    lh	$v0,0($s1)
    li	$a4,1
    beq	$a4,$a1,.L5ef599c4
    lhu	$t3,226($a3)
    move	$ra,$v0
    slt	$a5,$t3,$t2
    beqz	$a5,.L5ef59274
    move	$v0,$t3
    b	.L5ef59278
    nop
.L5ef59190:
    move	$a0,$v0
    move	$t9,$s6
    addiu	$a6,$a3,16
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    sll	$a1,$a6,0x2
    jalr	$s6
    sh	$a6,4($s0)
    sw	$v0,12($s0)
    bnez	$v0,.L5ef59220
    ld	$t0,-160($s8)
    move	$a1,$zero
    ld	$s3,-184($s8)
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
.L5ef591d0:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef591d0
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef59220:
    b	.L5ef586b4
    lh	$a1,6($s0)
.L5ef59228:
    li	$t3,1
.L5ef5922c:
    blez	$t3,.L5ef59828
    move	$t0,$zero
    addu	$a0,$t2,$t2
    addu	$at,$t2,$t2
    sd	$at,-48($s8)
    addiu	$s2,$t2,4
    sll	$s5,$s2,0x1
    sll	$t8,$s2,0x1
    b	.L5ef595f0
    addu	$t8,$t8,$s4
.L5ef59254:
    slt	$v1,$v0,$t1
    bnez	$v1,.L5ef59264
    move	$a1,$t1
    move	$a1,$v0
.L5ef59264:
    move	$a6,$t2
    move	$t3,$a1
    b	.L5ef58de0
    negu	$t1,$t1
.L5ef59274:
    move	$v0,$t2
.L5ef59278:
    move	$a6,$v0
.L5ef5927c:
    ld	$at,-152($s8)
    slt	$a4,$ra,$a6
    subu	$t2,$a6,$ra
    move	$a3,$t2
    beqz	$a4,.L5ef59434
    andi	$a1,$t2,0x3
    sll	$a5,$ra,0x1
    move	$a7,$t2
    move	$v0,$zero
    addiu	$a5,$a5,2816
    sra	$v1,$a5,0x8
    sb	$v1,-16300($at)
    beqz	$a1,.L5ef592c8
    sb	$a5,-16304($at)
.L5ef592b4:
    addiu	$v0,$v0,1
    ld	$at,-152($s8)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef592b4
    sh	$s4,-16312($at)
.L5ef592c8:
    move	$t1,$v0
    addiu	$v0,$t2,-8
    addu	$a5,$t3,$ra
    sra	$a1,$a7,0x2
    beqz	$a1,.L5ef59364
    sll	$a5,$a5,0x1
    slti	$v1,$a1,2
    bnez	$v1,.L5ef59c08
    ld	$a2,-152($s8)
    addiu	$at,$t2,-12
    addiu	$a0,$t2,-4
    addiu	$v1,$t1,4
    move	$a1,$s4
    ld	$a4,-152($s8)
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef59308:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef5935c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef5935c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef5935c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef59308
    sh	$a1,-16312($a2)
.L5ef5935c:
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
.L5ef59364:
    addiu	$a5,$a5,2816
    move	$v0,$zero
    move	$a1,$t2
    ld	$at,-152($s8)
    andi	$a6,$t2,0x3
    sra	$v1,$a5,0x8
    sb	$v1,-16300($at)
    beqz	$a6,.L5ef5939c
    sb	$a5,-16304($at)
.L5ef59388:
    addiu	$v0,$v0,1
    ld	$at,-152($s8)
    addi	$a6,$a6,-1
    bnez	$a6,.L5ef59388
    sh	$s4,-16312($at)
.L5ef5939c:
    addiu	$a0,$t2,-4
    ld	$a2,-152($s8)
    ld	$a4,-152($s8)
    sra	$a6,$a1,0x2
    beqz	$a6,.L5ef59434
    move	$t1,$v0
    slti	$v1,$a6,2
    bnez	$v1,.L5ef59c24
    move	$a3,$t2
    move	$a1,$s4
    addiu	$at,$t2,-12
    addiu	$v0,$t2,-8
    addiu	$v1,$t1,4
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef593d8:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef5942c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef5942c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef5942c
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef593d8
    sh	$a1,-16312($a2)
.L5ef5942c:
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
.L5ef59434:
    b	.L5ef58f94
    move	$s4,$s2
.L5ef5943c:
    ld	$at,-152($s8)
    sll	$a6,$v0,0x1
    addiu	$a6,$a6,2816
    sra	$v1,$a6,0x8
    sb	$v1,-16300($at)
    sb	$a6,-16304($at)
    lh	$a6,0($s1)
    slt	$a5,$a6,$t2
    beqz	$a5,.L5ef58f94
    move	$v0,$zero
    subu	$a3,$t2,$a6
    andi	$a1,$a3,0x3
    beqz	$a1,.L5ef59488
    move	$a7,$a3
.L5ef59474:
    addiu	$v0,$v0,1
    ld	$at,-152($s8)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef59474
    sh	$s4,-16312($at)
.L5ef59488:
    addiu	$a0,$a3,-4
    sra	$a6,$a7,0x2
    beqz	$a6,.L5ef5951c
    move	$a1,$v0
    slti	$v1,$a6,2
    bnez	$v1,.L5ef59b6c
    ld	$a2,-152($s8)
    addiu	$at,$a3,-12
    addiu	$v0,$a3,-8
    addiu	$v1,$a1,4
    move	$a1,$s4
    ld	$a4,-152($s8)
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef594c0:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef59514
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef59514
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef59514
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef594c0
    sh	$a1,-16312($a2)
.L5ef59514:
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
.L5ef5951c:
    b	.L5ef58f98
    lw	$s1,16($s1)
.L5ef59524:
    addiu	$a1,$a1,2
.L5ef59528:
    lhu	$a5,-2($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L5ef59524
    sh	$a5,-16312($a3)
    sra	$a2,$a7,0x2
.L5ef5953c:
    beqz	$a2,.L5ef595a4
    move	$v0,$a1
    slti	$at,$a2,2
    bnez	$at,.L5ef59c40
    move	$a2,$a3
    addiu	$v1,$s0,-8
    lhu	$at,0($v0)
.L5ef59558:
    sh	$at,-16312($a2)
    lhu	$at,2($v0)
    sh	$at,-16312($a2)
    lhu	$at,4($v0)
    sh	$at,-16312($a2)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($a2)
    bne	$v0,$v1,.L5ef59558
    lhu	$at,0($v0)
    move	$a6,$at
    sh	$a6,-16312($a3)
    move	$v1,$v0
    lhu	$a5,2($v1)
    sh	$a5,-16312($a3)
    lhu	$a4,4($v1)
    sh	$a4,-16312($a3)
    lhu	$v1,6($v1)
    sh	$v1,-16312($a3)
.L5ef595a4:
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    lh	$at,10($t1)
    subu	$at,$at,$t0
    addiu	$at,$at,-1
    sll	$at,$at,0x1
    addiu	$at,$at,2816
    sra	$v1,$at,0x8
    sb	$v1,-16300($a3)
    sb	$at,-16304($a3)
    beqz	$ra,.L5ef595e4
    sh	$s4,-16312($a3)
    beql	$t3,$t9,.L5ef59750
    lh	$at,10($t1)
.L5ef595e4:
    addiu	$t0,$t0,1
.L5ef595e8:
    beq	$t3,$t0,.L5ef59828
    move	$a6,$s7
.L5ef595f0:
    move	$a7,$t2
    addu	$s0,$a0,$a6
    beqz	$s6,.L5ef59638
    move	$a1,$a6
    sll	$a4,$s2,0x1
    subu	$s4,$s4,$a4
    slt	$v1,$s4,$s1
    bnez	$v1,.L5ef598a8
    subu	$t8,$t8,$s5
    sra	$a5,$s4,0x8
    sb	$a5,-16300($a3)
    blez	$t2,.L5ef595a4
    sb	$s4,-16304($a3)
    andi	$a2,$t2,0x3
    beqzl	$a2,.L5ef5953c
    sra	$a2,$a7,0x2
    b	.L5ef59528
    addiu	$a1,$a1,2
.L5ef59638:
    ld	$s0,-48($s8)
    slt	$at,$s1,$t8
    bnez	$at,.L5ef59acc
    move	$a7,$t2
    sra	$v1,$s4,0x8
    sb	$v1,-16300($a3)
    blez	$t2,.L5ef596ec
    sb	$s4,-16304($a3)
    addu	$s0,$s0,$a6
    move	$a1,$a6
    andi	$a2,$t2,0x3
    beqzl	$a2,.L5ef59684
    sra	$a2,$a7,0x2
.L5ef5966c:
    addiu	$a1,$a1,2
    lhu	$at,-2($a1)
    addi	$a2,$a2,-1
    bnez	$a2,.L5ef5966c
    sh	$at,-16312($a3)
    sra	$a2,$a7,0x2
.L5ef59684:
    beqz	$a2,.L5ef596ec
    move	$v0,$a1
    slti	$v1,$a2,2
    bnez	$v1,.L5ef59c68
    move	$a2,$a3
    lhu	$at,0($v0)
    addiu	$v1,$s0,-8
.L5ef596a0:
    sh	$at,-16312($a2)
    lhu	$at,2($v0)
    sh	$at,-16312($a2)
    lhu	$at,4($v0)
    sh	$at,-16312($a2)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($a2)
    bne	$v0,$v1,.L5ef596a0
    lhu	$at,0($v0)
    move	$v1,$at
    sh	$v1,-16312($a3)
    move	$a4,$v0
    lhu	$a6,2($a4)
    sh	$a6,-16312($a3)
    lhu	$a5,4($a4)
    sh	$a5,-16312($a3)
    lhu	$a4,6($a4)
    sh	$a4,-16312($a3)
.L5ef596ec:
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    sh	$zero,-16312($a3)
    lh	$a4,10($t1)
    subu	$a4,$a4,$t0
    addiu	$a4,$a4,-1
    sll	$a4,$a4,0x1
    addiu	$a4,$a4,2816
    sra	$a5,$a4,0x8
    sb	$a5,-16300($a3)
    sb	$a4,-16304($a3)
    beqz	$ra,.L5ef595e4
    sh	$s4,-16312($a3)
    bnel	$t3,$t9,.L5ef595e8
    addiu	$t0,$t0,1
    lh	$a5,10($t1)
    addiu	$a5,$a5,-2
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,2816
    sra	$at,$a5,0x8
    sb	$at,-16300($a3)
    sb	$a5,-16304($a3)
    b	.L5ef595e4
    sh	$s4,-16312($a3)
.L5ef59750:
    addiu	$at,$at,-2
    sll	$at,$at,0x1
    addiu	$at,$at,2816
    sra	$v1,$at,0x8
    sb	$v1,-16300($a3)
    sb	$at,-16304($a3)
    b	.L5ef595e4
    sh	$s4,-16312($a3)
.L5ef59770:
    li	$s4,0x8000
    li	$s6,1
    ori	$v1,$v0,0x1
    li	$a4,5136
    sd	$a4,-120($s8)
    b	.L5ef58af0
    sw	$v1,848($s7)
.L5ef5978c:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
.L5ef59798:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef59798
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$a5,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L5ef597e8:
    ld	$a0,-144($s8)
    # lw $t9, -29644($gp)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    jal	Xfree
    ld	$s3,-184($s8)
    move	$v0,$zero
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef59828:
    move	$v1,$s6
    beqz	$v1,.L5ef5983c
    ld	$s6,-176($s8)
    negu	$s4,$s4
    ld	$s6,-176($s8)
.L5ef5983c:
    ld	$s0,-144($s8)
    li	$a4,244
    li	$a5,9
    sb	$a5,-16300($a3)
    sb	$a4,-16304($a3)
    sh	$s4,-16312($a3)
    ld	$s4,-168($s8)
.L5ef59858:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef59858
    move	$s0,$s1
    li	$v0,1
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef598a8:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
.L5ef598b4:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef598b4
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$v1,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L5ef59904:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    ld	$s3,-184($s8)
.L5ef59914:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef59914
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$a4,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef59964:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
    ld	$s3,-184($s8)
.L5ef59974:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef59974
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$a5,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L5ef599c4:
    slt	$at,$v0,$t3
    beqz	$at,.L5ef599d4
    move	$a1,$v0
    move	$a1,$t3
.L5ef599d4:
    move	$ra,$a1
    move	$a6,$t2
    b	.L5ef5927c
    negu	$t3,$t3
.L5ef599e4:
    ld	$a5,-152($s8)
    sll	$a4,$v0,0x1
    addiu	$a4,$a4,2816
    sra	$a6,$a4,0x8
    sb	$a6,-16300($a5)
    sb	$a4,-16304($a5)
    lh	$a6,0($s1)
    slt	$v1,$a6,$t2
    beqz	$v1,.L5ef59434
    move	$v0,$zero
    subu	$a3,$t2,$a6
    andi	$a1,$a3,0x3
    beqz	$a1,.L5ef59a30
    move	$a7,$a3
.L5ef59a1c:
    addiu	$v0,$v0,1
    ld	$a5,-152($s8)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef59a1c
    sh	$s4,-16312($a5)
.L5ef59a30:
    sra	$a6,$a7,0x2
    beqz	$a6,.L5ef59ac4
    move	$a1,$v0
    slti	$at,$a6,2
    bnez	$at,.L5ef59bec
    addiu	$at,$a3,-12
    addiu	$v0,$a3,-8
    addiu	$a0,$a3,-4
    ld	$a2,-152($s8)
    addiu	$v1,$a1,4
    move	$a1,$s4
    sh	$s4,-16312($a2)
    sh	$s4,-16312($a2)
.L5ef59a64:
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$a0,.L5ef59b30
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$v0,.L5ef59b38
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    beq	$v1,$at,.L5ef59b28
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    sh	$a1,-16312($a2)
    addiu	$v1,$v1,16
    bne	$v1,$a3,.L5ef59a64
    sh	$a1,-16312($a2)
    ld	$v1,-152($s8)
.L5ef59abc:
    sh	$s4,-16312($v1)
    sh	$s4,-16312($v1)
.L5ef59ac4:
    b	.L5ef59434
    nop
.L5ef59acc:
    ld	$s0,-144($s8)
    ld	$s4,-168($s8)
    ld	$s6,-176($s8)
.L5ef59ad8:
    # lw $t9, -29644($gp)
    lw	$a0,12($s0)
    jal	Xfree
    lw	$s1,16($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    bnez	$s1,.L5ef59ad8
    move	$s0,$s1
    move	$v0,$zero
    ld	$s0,-72($s8)
    ld	$s1,-64($s8)
    ld	$s2,-112($s8)
    ld	$s5,-88($s8)
    ld	$s7,-104($s8)
    ld	$ra,-80($s8)
    ld	$a4,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef59b28:
    b	.L5ef59abc
    ld	$v1,-152($s8)
.L5ef59b30:
    b	.L5ef59abc
    ld	$v1,-152($s8)
.L5ef59b38:
    b	.L5ef59abc
    ld	$v1,-152($s8)
.L5ef59b40:
    move	$a1,$v0
    ld	$at,-152($s8)
    lhu	$a5,0($a1)
    sh	$a5,-16312($at)
    lhu	$a4,2($a1)
    sh	$a4,-16312($at)
    lhu	$v1,4($a1)
    sh	$v1,-16312($at)
    lhu	$a5,6($a1)
    b	.L5ef58d2c
    sh	$a5,-16312($at)
.L5ef59b6c:
    move	$v0,$a1
    ld	$at,-152($s8)
    sh	$s4,-16312($at)
    sh	$s4,-16312($at)
    sh	$s4,-16312($at)
    b	.L5ef5951c
    sh	$s4,-16312($at)
.L5ef59b88:
    move	$v0,$a1
    ld	$v1,-152($s8)
    sh	$s4,-16312($v1)
    sh	$s4,-16312($v1)
    sh	$s4,-16312($v1)
    b	.L5ef58ebc
    sh	$s4,-16312($v1)
.L5ef59ba4:
    move	$v0,$t1
    ld	$a4,-152($s8)
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
    b	.L5ef58f94
    sh	$s4,-16312($a4)
.L5ef59bc0:
    move	$a1,$v0
    ld	$at,-152($s8)
    lhu	$a5,0($a1)
    sh	$a5,-16312($at)
    lhu	$a4,2($a1)
    sh	$a4,-16312($at)
    lhu	$v1,4($a1)
    sh	$v1,-16312($at)
    lhu	$a5,6($a1)
    b	.L5ef59158
    sh	$a5,-16312($at)
.L5ef59bec:
    move	$v0,$a1
    ld	$at,-152($s8)
    sh	$s4,-16312($at)
    sh	$s4,-16312($at)
    sh	$s4,-16312($at)
    b	.L5ef59ac4
    sh	$s4,-16312($at)
.L5ef59c08:
    move	$v0,$t1
    ld	$v1,-152($s8)
    sh	$s4,-16312($v1)
    sh	$s4,-16312($v1)
    sh	$s4,-16312($v1)
    b	.L5ef59364
    sh	$s4,-16312($v1)
.L5ef59c24:
    move	$v0,$t1
    ld	$a4,-152($s8)
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
    sh	$s4,-16312($a4)
    b	.L5ef59434
    sh	$s4,-16312($a4)
.L5ef59c40:
    move	$a1,$v0
    lhu	$a4,0($a1)
    sh	$a4,-16312($a3)
    lhu	$v1,2($a1)
    sh	$v1,-16312($a3)
    lhu	$at,4($a1)
    sh	$at,-16312($a3)
    lhu	$a5,6($a1)
    b	.L5ef595a4
    sh	$a5,-16312($a3)
.L5ef59c68:
    move	$a1,$v0
    lhu	$a4,0($a1)
    sh	$a4,-16312($a3)
    lhu	$v1,2($a1)
    sh	$v1,-16312($a3)
    lhu	$at,4($a1)
    sh	$at,-16312($a3)
    lhu	$a5,6($a1)
    b	.L5ef596ec
    sh	$a5,-16312($a3)
    nop
.L5ef59c94:
    li	$a2,256
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a1
    move	$a1,$zero
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s2,24($sp)
    la	$s2,memset
    addiu	$a0,$a0,164
    sd	$ra,16($sp)
    jalr	$s2
    move	$t9,$s2
    li	$a2,256
    move	$a1,$zero
    addiu	$a0,$s0,420
    jalr	$s2
    move	$t9,$s2
    li	$a2,256
    move	$a1,$zero
    addiu	$a0,$s0,676
    jalr	$s2
    move	$t9,$s2
    move	$v0,$zero
    li	$a2,255
    move	$a1,$s0
    addiu	$v1,$s1,-1
    lbu	$at,0($s1)
    ld	$s1,0($sp)
    ld	$ra,16($sp)
    move	$a5,$s0
    move	$a6,$zero
    b	.L5ef59d44
    ld	$s2,24($sp)
.L5ef59d1c:
    addu	$at,$at,$a1
    sb	$a0,164($at)
    lbu	$at,256($v1)
    addu	$at,$at,$a1
    sb	$a0,420($at)
    lbu	$at,512($v1)
    addiu	$v0,$a0,1
    addu	$at,$at,$a1
    sb	$a0,676($at)
    lbu	$at,1($v1)
.L5ef59d44:
    addu	$at,$at,$a1
    sb	$v0,164($at)
    lbu	$at,257($v1)
    addu	$at,$at,$a1
    sb	$v0,420($at)
    lbu	$at,513($v1)
    addiu	$v1,$v1,2
    addiu	$a0,$v0,1
    addu	$at,$at,$a1
    sb	$v0,676($at)
    bne	$a0,$a2,.L5ef59d1c
    lbu	$at,0($v1)
    move	$v0,$a0
    move	$a4,$at
    addu	$a4,$a4,$s0
    sb	$v0,164($a4)
    move	$a2,$v1
    lbu	$a3,256($a2)
    addu	$a3,$a3,$s0
    sb	$v0,420($a3)
    lbu	$a2,512($a2)
    addiu	$a7,$s0,256
    addu	$a2,$a2,$s0
    b	.L5ef59dc4
    sb	$v0,676($a2)
.L5ef59da8:
    lbu	$a3,165($a5)
    beqz	$a3,.L5ef59dd8
    nop
    move	$a6,$a3
.L5ef59db8:
    addiu	$a5,$a5,2
    beql	$a5,$a7,.L5ef59de0
    move	$a5,$zero
.L5ef59dc4:
    lbu	$a3,164($a5)
    bnezl	$a3,.L5ef59da8
    move	$a6,$a3
    b	.L5ef59da8
    sb	$a6,164($a5)
.L5ef59dd8:
    b	.L5ef59db8
    sb	$a6,165($a5)
.L5ef59de0:
    move	$a3,$s0
    b	.L5ef59df8
    addiu	$a6,$s0,256
.L5ef59dec:
    addiu	$a3,$a3,2
    beq	$a3,$a6,.L5ef59e24
    move	$a4,$zero
.L5ef59df8:
    lbu	$a4,420($a3)
    beqz	$a4,.L5ef59e1c
    nop
    move	$a5,$a4
.L5ef59e08:
    lbu	$a4,421($a3)
    beqzl	$a4,.L5ef59dec
    sb	$a5,421($a3)
    b	.L5ef59dec
    move	$a5,$a4
.L5ef59e1c:
    b	.L5ef59e08
    sb	$a5,420($a3)
.L5ef59e24:
    move	$a3,$s0
    addiu	$a5,$s0,256
    b	.L5ef59e40
    ld	$s0,8($sp)
.L5ef59e34:
    addiu	$a3,$a3,2
    beq	$a3,$a5,.L5ef59e6c
    nop
.L5ef59e40:
    lbu	$a0,676($a3)
    beqz	$a0,.L5ef59e64
    nop
    move	$a4,$a0
.L5ef59e50:
    lbu	$a0,677($a3)
    bnezl	$a0,.L5ef59e34
    move	$a4,$a0
    b	.L5ef59e34
    sb	$a4,677($a3)
.L5ef59e64:
    b	.L5ef59e50
    sb	$a4,676($a3)
.L5ef59e6c:
    jr	$ra
    addiu	$sp,$sp,48
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    sd	$s8,0($sp)
    lui	$s8,0x16
    addiu	$s8,$s8,18256
    addu	$gp,$t9,$s8
    # lw $t9, -29720($gp)
    andi	$a6,$a1,0x4
    sd	$s0,16($sp)
    lw	$t9,0($t9)
    lw	$s0,436($a0)
    andi	$t0,$a1,0x2
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    lw	$s0,0($s0)
    move	$t1,$a3
    andi	$at,$a3,0x1
    lw	$a5,36($s0)
    move	$s8,$a0
    blez	$a3,.L5ef59f28
    lw	$a5,12($a5)
    andi	$a7,$a1,0x1
    move	$a0,$zero
    beqz	$at,.L5ef59f1c
    sra	$at,$t1,0x1
    beqz	$a7,.L5ef59eec
    addu	$v1,$a0,$a5
    addu	$v0,$a0,$a4
    lbu	$v0,0($v0)
    sb	$v0,0($v1)
.L5ef59eec:
    beqz	$t0,.L5ef59f00
    addu	$v1,$a0,$a4
    lbu	$v1,0($v1)
    addu	$a2,$a0,$a5
    sb	$v1,256($a2)
.L5ef59f00:
    beqz	$a6,.L5ef59f14
    addu	$at,$a0,$a5
    addu	$a2,$a0,$a4
    lbu	$a2,0($a2)
    sb	$a2,512($at)
.L5ef59f14:
    addiu	$a0,$a0,1
    sra	$at,$t1,0x1
.L5ef59f1c:
    bnez	$at,.L5ef59fb0
    nop
    sd	$ra,24($sp)
.L5ef59f28:
    # lw $t9, -32736($gp)
    move	$a0,$s0
    sd	$ra,24($sp)
    addiu	$t9,$t9,-25452
    bal	.L5ef59c94
    move	$a1,$a5
    li	$a1,15006
    lw	$a2,36($s0)
    # lw $t9, -29704($gp)
    lw	$a0,116($s8)
    lw	$a2,12($a2)
    jal	ioctl
    lw	$a0,100($a0)
    li	$a5,-1
    beq	$v0,$a5,.L5ef5a008
    ld	$ra,24($sp)
.L5ef59f68:
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef59f7c:
    beqz	$t0,.L5ef59f90
    addu	$v0,$a0,$a5
    addu	$at,$a0,$a4
    lbu	$at,0($at)
    sb	$at,256($v0)
.L5ef59f90:
    beqz	$a6,.L5ef59fa4
    addu	$v1,$a0,$a5
    addu	$v0,$a0,$a4
    lbu	$v0,0($v0)
    sb	$v0,512($v1)
.L5ef59fa4:
    addiu	$a0,$a0,1
    beql	$a0,$a3,.L5ef59f28
    sd	$ra,24($sp)
.L5ef59fb0:
    beqz	$a7,.L5ef59fc4
    addu	$a2,$a0,$a5
    addu	$v1,$a0,$a4
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L5ef59fc4:
    beqz	$t0,.L5ef59fd8
    addu	$at,$a0,$a5
    addu	$a2,$a0,$a4
    lbu	$a2,0($a2)
    sb	$a2,256($at)
.L5ef59fd8:
    beqz	$a6,.L5ef59fec
    addu	$v0,$a0,$a5
    addu	$at,$a0,$a4
    lbu	$at,0($at)
    sb	$at,512($v0)
.L5ef59fec:
    beqz	$a7,.L5ef59f7c
    addiu	$a0,$a0,1
    addu	$v0,$a0,$a4
    lbu	$v0,0($v0)
    addu	$v1,$a0,$a5
    b	.L5ef59f7c
    sb	$v0,0($v1)
.L5ef5a008:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2232
    b	.L5ef59f68
    ld	$ra,24($sp)
    move	$a6,$a4
    andi	$t0,$a1,0x4
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    lui	$at,0x16
    addiu	$at,$at,17828
    addu	$gp,$t9,$at
    # lw $t9, -29720($gp)
    andi	$a7,$a1,0x2
    sd	$s0,0($sp)
    lw	$t9,0($t9)
    lw	$s0,436($a0)
    move	$t3,$a3
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    lw	$s0,0($s0)
    andi	$v0,$a3,0x1
    sd	$s2,8($sp)
    lw	$a5,36($s0)
    move	$s2,$a0
    blez	$a3,.L5ef5a0d4
    lw	$a5,12($a5)
    andi	$t1,$a1,0x1
    addu	$t2,$a3,$a3
    move	$a0,$zero
    beqz	$v0,.L5ef5a0c4
    addu	$t2,$t2,$a4
    lh	$a3,0($a6)
    sra	$a3,$a3,0x8
    beqz	$t1,.L5ef5a0a4
    andi	$a3,$a3,0xff
    addu	$at,$a0,$a5
    sb	$a3,0($at)
.L5ef5a0a4:
    beqz	$a7,.L5ef5a0b0
    addu	$v0,$a0,$a5
    sb	$a3,256($v0)
.L5ef5a0b0:
    beqz	$t0,.L5ef5a0bc
    addu	$v1,$a0,$a5
    sb	$a3,512($v1)
.L5ef5a0bc:
    addiu	$a6,$a6,2
    addiu	$a0,$a0,1
.L5ef5a0c4:
    sra	$a2,$t3,0x1
    bnezl	$a2,.L5ef5a150
    lh	$a3,0($a6)
.L5ef5a0d0:
    sd	$ra,24($sp)
.L5ef5a0d4:
    # lw $t9, -32736($gp)
    move	$a0,$s0
    sd	$ra,24($sp)
    addiu	$t9,$t9,-25452
    bal	.L5ef59c94
    move	$a1,$a5
    li	$a1,15006
    lw	$a2,36($s0)
    # lw $t9, -29704($gp)
    lw	$a0,116($s2)
    lw	$a2,12($a2)
    jal	ioctl
    lw	$a0,100($a0)
    li	$a5,-1
    beq	$v0,$a5,.L5ef5a19c
    ld	$ra,24($sp)
.L5ef5a114:
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef5a128:
    beqz	$a7,.L5ef5a134
    addu	$at,$a0,$a5
    sb	$a3,256($at)
.L5ef5a134:
    beqz	$t0,.L5ef5a140
    addu	$v0,$a0,$a5
    sb	$a3,512($v0)
.L5ef5a140:
    addiu	$a6,$a6,4
    beq	$a6,$t2,.L5ef5a0d0
    addiu	$a0,$a0,1
    lh	$a3,0($a6)
.L5ef5a150:
    addu	$at,$a0,$a5
    sra	$a3,$a3,0x8
    beqz	$t1,.L5ef5a164
    andi	$a3,$a3,0xff
    sb	$a3,0($at)
.L5ef5a164:
    beqz	$a7,.L5ef5a170
    addu	$v0,$a0,$a5
    sb	$a3,256($v0)
.L5ef5a170:
    beqz	$t0,.L5ef5a17c
    addu	$v1,$a0,$a5
    sb	$a3,512($v1)
.L5ef5a17c:
    lh	$a3,2($a6)
    addiu	$a0,$a0,1
    addu	$at,$a0,$a5
    sra	$a3,$a3,0x8
    beqz	$t1,.L5ef5a128
    andi	$a3,$a3,0xff
    b	.L5ef5a128
    sb	$a3,0($at)
.L5ef5a19c:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2232
    b	.L5ef5a114
    ld	$ra,24($sp)
    lui	$v0,0x16
    addiu	$v0,$v0,17424
    addu	$at,$t9,$v0
    # lw $t9, -29720($gp)
    lw	$t9,0($t9)
    lw	$a6,436($a0)
    sll	$t9,$t9,0x2
    addu	$a6,$a6,$t9
    lw	$a6,0($a6)
    lw	$a6,36($a6)
    li	$a4,3
    li	$v0,1
    lw	$a1,0($a6)
    beq	$a2,$v0,.L5ef5a300
    lw	$a6,12($a6)
    li	$v1,2
    beq	$a2,$v1,.L5ef5a3f8
    move	$t0,$a1
    beq	$a2,$a4,.L5ef5a20c
    move	$t0,$a1
.L5ef5a204:
    jr	$ra
    nop
.L5ef5a20c:
    addu	$t1,$a1,$a6
    blez	$a1,.L5ef5a204
    move	$a7,$a3
    andi	$a0,$a1,0x3
    beqz	$a0,.L5ef5a244
    move	$a2,$a6
.L5ef5a224:
    addiu	$a2,$a2,1
    lbu	$v0,511($a2)
    addiu	$a7,$a7,2
    addi	$a0,$a0,-1
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    bnez	$a0,.L5ef5a224
    sh	$a5,-2($a7)
.L5ef5a244:
    move	$a1,$a7
    sra	$a3,$t0,0x2
    beqz	$a3,.L5ef5a2f8
    move	$a0,$a2
    slti	$v1,$a3,2
    bnez	$v1,.L5ef5a584
    addiu	$a2,$t1,-4
    lbu	$v0,512($a0)
.L5ef5a264:
    addiu	$a1,$a1,8
    sll	$v1,$v0,0x8
    addu	$v0,$v1,$v0
    sh	$v0,-8($a1)
    lbu	$v1,513($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-6($a1)
    lbu	$v1,514($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-4($a1)
    lbu	$v1,515($a0)
    addiu	$a0,$a0,4
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-2($a1)
    bne	$a0,$a2,.L5ef5a264
    lbu	$v0,512($a0)
    move	$a5,$a1
    move	$a4,$v0
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a5)
    move	$a6,$a0
    lbu	$a4,513($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,2($a5)
    lbu	$a4,514($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a5)
    lbu	$a6,515($a6)
    sll	$a4,$a6,0x8
    addu	$a4,$a4,$a6
    sh	$a4,6($a5)
.L5ef5a2f8:
    jr	$ra
    nop
.L5ef5a300:
    move	$t0,$a1
    addu	$t1,$a1,$a6
    blez	$a1,.L5ef5a204
    move	$a7,$a3
    andi	$a0,$a1,0x3
    beqz	$a0,.L5ef5a33c
    move	$a2,$a6
.L5ef5a31c:
    addiu	$a2,$a2,1
    lbu	$v0,-1($a2)
    addiu	$a7,$a7,2
    addi	$a0,$a0,-1
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    bnez	$a0,.L5ef5a31c
    sh	$a5,-2($a7)
.L5ef5a33c:
    move	$a1,$a7
    sra	$a3,$t0,0x2
    beqz	$a3,.L5ef5a3f0
    move	$a0,$a2
    slti	$v1,$a3,2
    bnez	$v1,.L5ef5a4ec
    addiu	$a2,$t1,-4
    lbu	$v0,0($a0)
.L5ef5a35c:
    addiu	$a1,$a1,8
    sll	$v1,$v0,0x8
    addu	$v0,$v1,$v0
    sh	$v0,-8($a1)
    lbu	$v1,1($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-6($a1)
    lbu	$v1,2($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-4($a1)
    lbu	$v1,3($a0)
    addiu	$a0,$a0,4
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-2($a1)
    bne	$a0,$a2,.L5ef5a35c
    lbu	$v0,0($a0)
    move	$a5,$a1
    move	$a4,$v0
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a5)
    move	$a6,$a0
    lbu	$a4,1($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,2($a5)
    lbu	$a4,2($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a5)
    lbu	$a6,3($a6)
    sll	$a4,$a6,0x8
    addu	$a4,$a4,$a6
    sh	$a4,6($a5)
.L5ef5a3f0:
    jr	$ra
    nop
.L5ef5a3f8:
    addu	$t1,$a1,$a6
    blez	$a1,.L5ef5a204
    move	$a2,$a3
    andi	$a0,$a1,0x3
    beqz	$a0,.L5ef5a430
    move	$a7,$a6
.L5ef5a410:
    addiu	$a7,$a7,1
    lbu	$v0,255($a7)
    addiu	$a2,$a2,2
    addi	$a0,$a0,-1
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    bnez	$a0,.L5ef5a410
    sh	$a5,-2($a2)
.L5ef5a430:
    move	$a1,$a2
    sra	$a3,$t0,0x2
    beqz	$a3,.L5ef5a4e4
    move	$a0,$a7
    slti	$v1,$a3,2
    bnez	$v1,.L5ef5a538
    addiu	$a2,$t1,-4
    lbu	$v0,256($a0)
.L5ef5a450:
    addiu	$a1,$a1,8
    sll	$v1,$v0,0x8
    addu	$v0,$v1,$v0
    sh	$v0,-8($a1)
    lbu	$v1,257($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-6($a1)
    lbu	$v1,258($a0)
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-4($a1)
    lbu	$v1,259($a0)
    addiu	$a0,$a0,4
    sll	$v0,$v1,0x8
    addu	$v0,$v0,$v1
    sh	$v0,-2($a1)
    bne	$a0,$a2,.L5ef5a450
    lbu	$v0,256($a0)
    move	$a5,$a1
    move	$a4,$v0
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a5)
    move	$a6,$a0
    lbu	$a4,257($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,2($a5)
    lbu	$a4,258($a6)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a5)
    lbu	$a6,259($a6)
    sll	$a4,$a6,0x8
    addu	$a4,$a4,$a6
    sh	$a4,6($a5)
.L5ef5a4e4:
    jr	$ra
    nop
.L5ef5a4ec:
    move	$a3,$a1
    move	$a2,$a0
    lbu	$a4,0($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a3)
    lbu	$v0,1($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    sh	$a5,2($a3)
    lbu	$a4,2($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a3)
    lbu	$v0,3($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    jr	$ra
    sh	$a5,6($a3)
.L5ef5a538:
    move	$a3,$a1
    move	$a2,$a0
    lbu	$a4,256($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a3)
    lbu	$v0,257($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    sh	$a5,2($a3)
    lbu	$a4,258($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a3)
    lbu	$v0,259($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    jr	$ra
    sh	$a5,6($a3)
.L5ef5a584:
    move	$a3,$a1
    move	$a2,$a0
    lbu	$a4,512($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,0($a3)
    lbu	$v0,513($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    sh	$a5,2($a3)
    lbu	$a4,514($a2)
    sll	$v1,$a4,0x8
    addu	$v1,$v1,$a4
    sh	$v1,4($a3)
    lbu	$v0,515($a2)
    sll	$a5,$v0,0x8
    addu	$a5,$a5,$v0
    jr	$ra
    sh	$a5,6($a3)
    li	$at,10
    beq	$a2,$at,.L5ef5a5e4
    nop
    jr	$ra
    nop
.L5ef5a5e4:
    jr	$ra
    sw	$zero,32($a3)
    li	$at,10
    beq	$a2,$at,.L5ef5a600
    nop
    jr	$ra
    nop
.L5ef5a600:
    jr	$ra
    sw	$zero,32($a3)
.end expvc1ComputeDIDTable

.globl expLoadTimingTable
.ent expLoadTimingTable
expLoadTimingTable:
.L5ef5acd4:
    addiu	$sp,$sp,-832
    sd	$s1,800($sp)
    sd	$a0,776($sp)
    sd	$s0,792($sp)
    move	$s0,$a1
    addiu	$a3,$sp,0
    # lw $t9, -32736($gp)
    sd	$ra,784($sp)
    move	$ra,$a0
    lw	$a5,0($ra)
    lw	$a2,436($ra)
    lw	$ra,116($ra)
    lw	$a4,expScreenPrivateIndex
    addiu	$t9,$t9,-22656
    sd	$ra,728($sp)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    lw	$ra,100($ra)
    sd	$a5,720($sp)
    lw	$a2,8($a2)
    sd	$ra,712($sp)
    bal	expResetProc
    sd	$a2,704($sp)
    # lw $t9, -32736($gp)
    move	$s1,$v0
    addiu	$a1,$sp,256
    addiu	$t9,$t9,-22948
    bal	expResetProc
    addiu	$a0,$sp,0
    li	$a5,1024
    bnez	$s0,.L5ef5ad90
    lw	$a3,516($sp)
    lw	$at,512($sp)
    li	$v1,1280
    beq	$at,$v1,.L5ef5ad90
    nop
    beq	$a3,$a5,.L5ef5ad90
    ld	$a0,776($sp)
    addiu	$a3,$sp,0
    # lw $t9, -32736($gp)
    ld	$a2,704($sp)
    la	$a1,local_0x5f0a0000
    addiu	$t9,$t9,-22656
    bal	expResetProc
    addiu	$a1,$a1,-2072
    move	$s1,$v0
.L5ef5ad90:
    bnez	$s1,.L5ef5adac
    ld	$ra,784($sp)
    li	$v0,2
    ld	$s0,792($sp)
    ld	$s1,800($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L5ef5adac:
    # lw $t9, -29568($gp)
    move	$a0,$s1
    jal	open
    li	$a1,2048
    move	$at,$v0
    bltz	$v0,.L5ef5af9c
    sd	$v0,768($sp)
    # lw $t9, -29356($gp)
    move	$a0,$v0
    jal	fstat
    addiu	$a1,$sp,528
    bltz	$v0,.L5ef5afc8
    move	$a0,$zero
    move	$a5,$zero
    ld	$a4,768($sp)
    li	$a3,1
    # lw $t9, -29352($gp)
    li	$a2,1
    lw	$a1,588($sp)
    jal	mmap
    ld	$s1,712($sp)
    # lw $t9, -29560($gp)
    sd	$v0,760($sp)
    sd	$v0,736($sp)
    jal	close
    ld	$a0,768($sp)
    addiu	$a2,$sp,680
    li	$a1,15005
    move	$a0,$s1
    ld	$a3,760($sp)
    # lw $t9, -29704($gp)
    ld	$v1,584($sp)
    sw	$a3,684($sp)
    jal	ioctl
    sw	$v1,680($sp)
    lw	$a1,588($sp)
    bltz	$v0,.L5ef5aff4
    ld	$s1,800($sp)
    # lw $t9, -29348($gp)
    jal	munmap
    ld	$a0,736($sp)
    # lw $t9, -32736($gp)
    addiu	$a1,$sp,256
    addiu	$t9,$t9,-22948
    bal	expResetProc
    addiu	$a0,$sp,0
    lw	$v1,512($sp)
    lw	$at,516($sp)
    lwc1	$f0,520($sp)
    sd	$v1,752($sp)
    sd	$at,744($sp)
    bnez	$s0,.L5ef5af10
    sdc1	$f0,688($sp)
    la	$s1,strcpy
.L5ef5ae84:
    li	$a3,1
    bnez	$s0,.L5ef5aeec
    sw	$a3,var_5f0b8adc
    addiu	$a1,$sp,0
.L5ef5ae94:
    la	$t8,local_0x5f0c0000
    ld	$s1,720($sp)
    # lw $t9, -29476($gp)
    addiu	$t8,$t8,-14744
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$t8
    jal	strcpy
    lw	$a0,0($s1)
    lw	$a1,0($s1)
    ldc1	$f1,688($sp)
    ld	$v1,744($sp)
    ld	$at,752($sp)
    swc1	$f1,264($a1)
    sw	$v1,260($a1)
    beqz	$s0,.L5ef5af6c
    sw	$at,256($a1)
.L5ef5aed4:
    move	$v0,$zero
    ld	$ra,784($sp)
    ld	$s0,792($sp)
    ld	$s1,800($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L5ef5aeec:
    ld	$a2,728($sp)
    ld	$a0,776($sp)
    # lw $t9, -32348($gp)
    lw	$a1,84($a2)
    lw	$a2,96($a2)
    bal	expvc1ComputeDIDTable
    addiu	$a1,$a1,-3
    b	.L5ef5ae94
    addiu	$a1,$sp,0
.L5ef5af10:
    la	$a1,vcScreenPrivateIndex
    ld	$a0,776($sp)
    lw	$a1,0($a1)
    lw	$a0,436($a0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    la	$s1,strcpy
    lw	$a0,8($a0)
    move	$t9,$s1
    addiu	$a1,$sp,0
    sd	$a0,696($sp)
    jalr	$s1
    addiu	$a0,$a0,20
    ld	$a5,696($sp)
    ldc1	$f2,688($sp)
    ld	$a3,744($sp)
    ld	$at,752($sp)
    swc1	$f2,292($a5)
    swc1	$f2,296($a5)
    sw	$at,280($a5)
    b	.L5ef5ae84
    sw	$a3,276($a5)
.L5ef5af6c:
    # lw $t9, -29476($gp)
    jal	strcpy
    lw	$a0,256($s1)
    lw	$a3,0($s1)
    lw	$v1,256($s1)
    lw	$at,256($a3)
    sw	$at,256($v1)
    lw	$a5,260($a3)
    sw	$a5,260($v1)
    lwc1	$f3,264($a3)
    b	.L5ef5aed4
    swc1	$f3,264($v1)
.L5ef5af9c:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s1
    jal	ErrorF
    addiu	$a0,$a0,-2024
    li	$v0,2
    ld	$ra,784($sp)
    ld	$s0,792($sp)
    ld	$s1,800($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L5ef5afc8:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s1
    jal	ErrorF
    addiu	$a0,$a0,-1992
    li	$v0,2
    ld	$ra,784($sp)
    ld	$s0,792($sp)
    ld	$s1,800($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L5ef5aff4:
    # lw $t9, -29348($gp)
    jal	munmap
    ld	$a0,736($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-1960
    ld	$ra,784($sp)
    li	$v0,2
    ld	$s0,792($sp)
    jr	$ra
    addiu	$sp,$sp,832
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x16
    addiu	$at,$at,13728
    beqz	$a3,.L5ef5b060
    addu	$gp,$t9,$at
    beqz	$a2,.L5ef5b070
    sd	$ra,8($sp)
    # lw $t9, -32336($gp)
    bal	expWriteTimingTable
    move	$a1,$a3
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef5b060:
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef5b070:
    # lw $t9, -32332($gp)
    bal	.L5ef5acd4
    move	$a1,$a3
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end expLoadTimingTable

.globl expWriteTimingTable
.ent expWriteTimingTable
expWriteTimingTable:
    addiu	$sp,$sp,-560
    sd	$a0,520($sp)
    sd	$a1,512($sp)
    addiu	$a3,$sp,0
    sd	$ra,528($sp)
    lw	$a4,expScreenPrivateIndex
    move	$a2,$a0
    lw	$a2,436($a2)
    # lw $t9, -32736($gp)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    addiu	$t9,$t9,-22656
    bal	expResetProc
    lw	$a2,8($a2)
    sd	$s0,536($sp)
    # lw $t9, -29436($gp)
    move	$a0,$v0
    addiu	$a1,$gp,-28948
    jal	fopen
    addiu	$a1,$a1,80
    beqz	$v0,.L5ef5ac80
    move	$s0,$v0
    # lw $t9, -29452($gp)
    jal	fclose
    move	$a0,$s0
    la	$s0,fopen
    addiu	$a0,$sp,256
    ld	$a2,520($sp)
    # lw $t9, -29420($gp)
    la	$a1,local_0x5f0a0000
    lw	$a2,0($a2)
    jal	sprintf
    addiu	$a1,$a1,-2136
    addiu	$a1,$gp,-28844
    addiu	$a0,$sp,256
    jalr	$s0
    move	$t9,$s0
    bnez	$v0,.L5ef5ac94
    move	$s0,$v0
    addiu	$a1,$sp,256
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    ld	$s0,536($sp)
    jal	ErrorF
    addiu	$a0,$a0,-2056
    ld	$ra,528($sp)
    li	$v0,10
    jr	$ra
    addiu	$sp,$sp,560
.L5ef5ac80:
    ld	$ra,528($sp)
    li	$v0,2
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L5ef5ac94:
    move	$a0,$s0
    # lw $t9, -29360($gp)
    ld	$a2,512($sp)
    addiu	$a1,$gp,-28948
    jal	fprintf
    addiu	$a1,$a1,88
    # lw $t9, -29452($gp)
    jal	fclose
    move	$a0,$s0
    move	$v0,$zero
    ld	$s0,536($sp)
    ld	$ra,528($sp)
    addiu	$sp,$sp,560
    li	$a3,1
    jr	$ra
    sw	$a3,var_5f0b8adc
.end expWriteTimingTable

.globl expCheckTimingTable
.ent expCheckTimingTable
expCheckTimingTable:
    addiu	$sp,$sp,-336
    sd	$s3,272($sp)
    move	$s3,$a0
    sd	$s4,280($sp)
    move	$s4,$a2
    la	$at,local_0x5f0c0000
    sd	$s0,264($sp)
    lw	$s0,0($a0)
    sd	$s1,256($sp)
    addiu	$at,$at,-14744
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$at
    lw	$at,0($s0)
    move	$s1,$a1
    sd	$s2,288($sp)
    beqz	$at,.L5ef5aaac
    move	$s2,$a3
    la	$a1,malloc
.L5ef5a9a0:
    lw	$at,256($s0)
    beqz	$at,.L5ef5aafc
    sd	$ra,296($sp)
.L5ef5a9ac:
    addiu	$a3,$sp,0
    # lw $t9, -32736($gp)
    move	$a2,$s4
    move	$a1,$s1
    addiu	$t9,$t9,-22656
    bal	expResetProc
    move	$a0,$s3
    bnez	$v0,.L5ef5a9f0
    ld	$ra,296($sp)
    move	$v0,$zero
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,280($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L5ef5a9f0:
    # lw $t9, -32736($gp)
    addiu	$a0,$sp,0
    addiu	$t9,$t9,-22948
    bal	expResetProc
    move	$a1,$s2
    bnez	$s1,.L5ef5aa44
    li	$a4,1024
    lw	$at,256($s2)
    li	$v0,1280
    beq	$at,$v0,.L5ef5aa48
    nop	# was lw $t9, -32736($gp)
    lw	$v1,260($s2)
    beq	$v1,$a4,.L5ef5aa44
    move	$a0,$s3
    addiu	$a3,$sp,0
    # lw $t9, -32736($gp)
    move	$a2,$s4
    la	$a1,local_0x5f0a0000
    addiu	$t9,$t9,-22656
    bal	expResetProc
    addiu	$a1,$a1,-2072
.L5ef5aa44:
    # lw $t9, -32736($gp)
.L5ef5aa48:
    addiu	$a0,$sp,0
    addiu	$t9,$t9,-22948
    bal	expResetProc
    move	$a1,$s2
    ld	$ra,296($sp)
    beqz	$s1,.L5ef5aa84
    lw	$at,var_5f0b8adc
    ld	$s3,272($sp)
    li	$v0,1
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    ld	$s2,288($sp)
    ld	$s4,280($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L5ef5aa84:
    ld	$s1,256($sp)
    ld	$s4,280($sp)
    beqz	$at,.L5ef5ab40
    li	$v0,1
    sw	$zero,var_5f0b8adc
    ld	$s3,272($sp)
    ld	$s0,264($sp)
    ld	$s2,288($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L5ef5aaac:
    # lw $t9, -29456($gp)
    sd	$ra,296($sp)
    jal	malloc
    li	$a0,268
    move	$a0,$v0
    # lw $t9, -29420($gp)
    la	$a1,local_0x5f0a0000
    sw	$v0,0($s0)
    jal	sprintf
    addiu	$a1,$a1,-2072
    la	$a1,malloc
    lw	$ra,0($s0)
    lwc1	$f0,-19244($gp)
    li	$a4,1280
    li	$at,1024
    swc1	$f0,264($ra)
    sw	$at,260($ra)
    sw	$a4,256($ra)
    b	.L5ef5a9a0
    ld	$ra,296($sp)
.L5ef5aafc:
    li	$a0,268
    jalr	$a1
    move	$t9,$a1
    # lw $t9, -29476($gp)
    move	$a0,$v0
    lw	$a1,0($s0)
    jal	strcpy
    sw	$v0,256($s0)
    lw	$v1,0($s0)
    lw	$v0,256($s0)
    lw	$at,256($v1)
    sw	$at,256($v0)
    lw	$a4,260($v1)
    sw	$a4,260($v0)
    lwc1	$f1,264($v1)
    b	.L5ef5a9ac
    swc1	$f1,264($v0)
.L5ef5ab40:
    lw	$a0,0($s0)
    lw	$v1,256($s2)
    lw	$v0,256($a0)
    bne	$v0,$v1,.L5ef5ab9c
    li	$v0,1
    lw	$a4,260($a0)
    lw	$at,260($s2)
    bne	$a4,$at,.L5ef5ab9c
    li	$v0,1
    lwc1	$f2,264($a0)
    lwc1	$f3,264($s2)
    c.eq.s	$f2,$f3
    nop
    bc1f	.L5ef5ab98
    move	$v0,$zero
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,280($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L5ef5ab98:
    li	$v0,1
.L5ef5ab9c:
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,280($sp)
    jr	$ra
    addiu	$sp,$sp,336
.end expCheckTimingTable

.globl expLstVideoFmt
.ent expLstVideoFmt
expLstVideoFmt:
    addiu	$sp,$sp,-688
    sd	$s1,576($sp)
    move	$s1,$a0
    sd	$a2,552($sp)
    sd	$s8,568($sp)
    move	$s8,$a3
    sd	$gp,560($sp)
    lui	$at,0x16
    addiu	$at,$at,13320
    blez	$a1,.L5ef5b200
    addu	$gp,$t9,$at
    move	$v0,$zero
    ld	$gp,560($sp)
    ld	$s1,576($sp)
    ld	$s8,568($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L5ef5b200:
    sd	$s6,584($sp)
    # lw $t9, -29572($gp)
    li	$a1,312
    sd	$ra,592($sp)
    jal	calloc
    lw	$a0,var_5f0b93c0
    sd	$s2,640($sp)
    sd	$s0,616($sp)
    sd	$s7,608($sp)
    move	$s6,$zero
    sd	$zero,544($sp)
    move	$v1,$v0
    sd	$v0,536($sp)
    lw	$v0,var_5f0b93c0
    ld	$a4,552($sp)
    ld	$ra,592($sp)
    blez	$v0,.L5ef5b56c
    sw	$v1,0($a4)
    sd	$s3,632($sp)
    sd	$s4,624($sp)
    sd	$s5,600($sp)
    la	$s2,local_0x5f0c0000
    la	$s0,local_0x5f0b0000
    la	$s7,local_0x5ef60000
    addiu	$s2,$s2,-14744
    la	$a5,local_0x5f0a0000
    addiu	$s7,$s7,-22656
    addiu	$s0,$s0,18464
    addiu	$a5,$a5,-2072
    b	.L5ef5b2a4
    sd	$a5,528($sp)
.L5ef5b27c:
    beq	$s8,$at,.L5ef5b348
.L5ef5b280:
    move	$a1,$zero
.L5ef5b284:
    li	$a5,1280
.L5ef5b288:
    beqz	$a1,.L5ef5b3a0
    li	$v1,2
.L5ef5b290:
    addiu	$s6,$s6,1
.L5ef5b294:
    lw	$v1,var_5f0b93c0
    slt	$v1,$s6,$v1
    beqz	$v1,.L5ef5b550
    addiu	$s0,$s0,4
.L5ef5b2a4:
    lw	$s4,0($s1)
    lw	$v1,expScreenPrivateIndex
    lw	$s5,436($s1)
    sll	$s4,$s4,0x2
    sll	$v1,$v1,0x2
    addu	$s5,$s5,$v1
    addu	$s4,$s4,$s2
    lw	$at,0($s4)
    lw	$s5,0($s5)
    lw	$s3,0($s0)
    beqz	$at,.L5ef5b474
    lw	$s5,8($s5)
.L5ef5b2d4:
    lw	$at,256($s4)
    beqz	$at,.L5ef5b4b4
.L5ef5b2dc:
    move	$a0,$s1
    move	$a1,$s3
    move	$a2,$s5
    addiu	$a3,$sp,0
    bal	expResetProc
    move	$t9,$s7
    bnez	$v0,.L5ef5b35c
    move	$a1,$zero
.L5ef5b2fc:
    move	$a2,$zero
    beqz	$a1,.L5ef5b290
    li	$at,1
    lw	$a1,0($s1)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s2
    lw	$a1,256($a1)
    lw	$a3,512($sp)
    lw	$v1,256($a1)
    slt	$v1,$v1,$a3
    bnez	$v1,.L5ef5b27c
    lw	$a5,516($sp)
    lw	$a4,260($a1)
    slt	$a4,$a4,$a5
    bnez	$a4,.L5ef5b27c
    nop
    li	$at,1
    bne	$s8,$at,.L5ef5b280
    li	$a2,1
.L5ef5b348:
    bnez	$a2,.L5ef5b284
    move	$a1,$zero
    li	$a1,1
    b	.L5ef5b288
    li	$a5,1280
.L5ef5b35c:
    # lw $t9, -32736($gp)
    addiu	$a1,$sp,256
    addiu	$t9,$t9,-22948
    bal	expResetProc
    addiu	$a0,$sp,0
    li	$at,1024
    beqz	$s3,.L5ef5b4f8
    lw	$v1,516($sp)
.L5ef5b37c:
    # lw $t9, -32736($gp)
.L5ef5b380:
    addiu	$a1,$sp,256
    addiu	$t9,$t9,-22948
    bal	expResetProc
    addiu	$a0,$sp,0
    beqz	$s3,.L5ef5b52c
    lw	$at,512($sp)
.L5ef5b398:
    b	.L5ef5b2fc
    li	$a1,1
.L5ef5b3a0:
    li	$at,2
    beq	$s8,$at,.L5ef5b540
.L5ef5b3a8:
    move	$a1,$zero
.L5ef5b3ac:
    bnezl	$a1,.L5ef5b294
    addiu	$s6,$s6,1
    beq	$s8,$v1,.L5ef5b5bc
    move	$a1,$zero
.L5ef5b3bc:
    bnezl	$a1,.L5ef5b294
    addiu	$s6,$s6,1
    beqz	$s8,.L5ef5b5e8
    move	$v0,$zero
.L5ef5b3cc:
    bnezl	$v0,.L5ef5b294
    addiu	$s6,$s6,1
    beqz	$s8,.L5ef5b5f8
    move	$v0,$zero
.L5ef5b3dc:
    bnezl	$v0,.L5ef5b294
    addiu	$s6,$s6,1
    li	$a1,36
    li	$a0,1
    # lw $t9, -29572($gp)
    ld	$a3,536($sp)
    li	$a2,1
    jal	calloc
    sw	$a2,300($a3)
    ld	$a4,536($sp)
    # lw $t9, -29476($gp)
    lw	$a1,0($s0)
    move	$a0,$a4
    jal	strcpy
    sw	$v0,304($a4)
    ld	$a5,536($sp)
    lw	$a7,512($sp)
    sw	$a7,260($a5)
    lw	$a6,516($sp)
    sw	$a6,256($a5)
    lwc1	$f0,520($sp)
    # lw $t9, -29840($gp)
    lw	$a0,0($s0)
    swc1	$f0,272($a5)
    jal	strlen
    swc1	$f0,276($a5)
    lw	$at,0($s0)
    addu	$at,$at,$v0
    lbu	$at,-1($at)
    li	$v1,115
    beq	$at,$v1,.L5ef5b624
.L5ef5b458:
    ld	$v1,536($sp)
    ld	$a4,544($sp)
    addiu	$v1,$v1,312
    addiu	$a4,$a4,1
    sd	$a4,544($sp)
    b	.L5ef5b290
    sd	$v1,536($sp)
.L5ef5b474:
    # lw $t9, -29456($gp)
    jal	malloc
    li	$a0,268
    # lw $t9, -29420($gp)
    move	$a0,$v0
    sw	$v0,0($s4)
    jal	sprintf
    ld	$a1,528($sp)
    lw	$at,0($s4)
    lwc1	$f1,-19244($gp)
    li	$a5,1280
    li	$v1,1024
    swc1	$f1,264($at)
    sw	$v1,260($at)
    b	.L5ef5b2d4
    sw	$a5,256($at)
.L5ef5b4b4:
    # lw $t9, -29456($gp)
    jal	malloc
    li	$a0,268
    # lw $t9, -29476($gp)
    move	$a0,$v0
    lw	$a1,0($s4)
    jal	strcpy
    sw	$v0,256($s4)
    lw	$a5,0($s4)
    lw	$a4,256($s4)
    lw	$v1,256($a5)
    sw	$v1,256($a4)
    lw	$at,260($a5)
    sw	$at,260($a4)
    lwc1	$f2,264($a5)
    b	.L5ef5b2dc
    swc1	$f2,264($a4)
.L5ef5b4f8:
    lw	$a5,512($sp)
    li	$a4,1280
    beq	$a4,$a5,.L5ef5b380
    nop	# was lw $t9, -32736($gp)
    beq	$at,$v1,.L5ef5b37c
    move	$a0,$s1
    ld	$a1,528($sp)
    move	$a2,$s5
    addiu	$a3,$sp,0
    bal	expResetProc
    move	$t9,$s7
    b	.L5ef5b380
    nop	# was lw $t9, -32736($gp)
.L5ef5b52c:
    lw	$a4,var_5f0b8adc
    beqzl	$a4,.L5ef5b588
    lw	$a1,0($s4)
    b	.L5ef5b398
    sw	$zero,var_5f0b8adc
.L5ef5b540:
    beqz	$a2,.L5ef5b3a8
    li	$a1,1
    b	.L5ef5b3ac
    nop
.L5ef5b550:
    ld	$ra,592($sp)
    ld	$s5,600($sp)
    ld	$s7,608($sp)
    ld	$s0,616($sp)
    ld	$s4,624($sp)
    ld	$s3,632($sp)
    ld	$s2,640($sp)
.L5ef5b56c:
    ld	$v0,544($sp)
    ld	$gp,560($sp)
    ld	$s1,576($sp)
    ld	$s6,584($sp)
    ld	$s8,568($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L5ef5b588:
    lw	$a5,256($a1)
    bne	$a5,$at,.L5ef5b398
    lw	$a4,516($sp)
    lw	$v1,260($a1)
    bne	$v1,$a4,.L5ef5b398
    lwc1	$f0,520($sp)
    lwc1	$f3,264($a1)
    c.eq.s	$f3,$f0
    nop
    bc1f	.L5ef5b398
    nop
    b	.L5ef5b2fc
    move	$a1,$zero
.L5ef5b5bc:
    beq	$a3,$a5,.L5ef5b5d0
    li	$v0,1
.L5ef5b5c4:
    li	$a1,1
    b	.L5ef5b3bc
    nop
.L5ef5b5d0:
    lw	$v1,516($sp)
    li	$at,1024
    bne	$at,$v1,.L5ef5b5c4
    li	$v0,1
    b	.L5ef5b3bc
    nop
.L5ef5b5e8:
    bnez	$a2,.L5ef5b3cc
    move	$v0,$zero
    b	.L5ef5b3cc
    li	$v0,1
.L5ef5b5f8:
    li	$a4,1280
    beq	$a3,$a4,.L5ef5b60c
    li	$v0,1
.L5ef5b604:
    b	.L5ef5b3dc
    li	$v0,1
.L5ef5b60c:
    lw	$at,516($sp)
    li	$a5,1024
    bne	$a5,$at,.L5ef5b604
    li	$v0,1
    b	.L5ef5b3dc
    move	$v0,$zero
.L5ef5b624:
    ld	$a4,536($sp)
    li	$v1,4
    b	.L5ef5b458
    sw	$v1,308($a4)
.end expLstVideoFmt

.globl expSetBacklight__EHB
.ent expSetBacklight__EHB
expSetBacklight__EHB:
    move	$a5,$a0
    lw	$a4,0($a0)
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    lui	$at,0x17
    addiu	$at,$at,-32220
    beqz	$a1,.L5ef56504
    addu	$gp,$t9,$at
    li	$a6,1
    beq	$a1,$a6,.L5ef56464
    li	$v0,3
    beq	$a1,$v0,.L5ef563e0
    li	$v0,1
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef563e0:
    la	$a2,local_0x5f0c0000
    sll	$a0,$a4,0x2
    addiu	$a2,$a2,-23464
    addu	$a0,$a0,$a2
    lw	$v1,16($a0)
    sll	$a3,$a4,0x4
    bnez	$v1,.L5ef56454
    la	$at,savedScreenInfo
    addu	$a3,$a3,$at
    lbu	$a3,8($a3)
    li	$at,2
    bne	$a3,$at,.L5ef56424
    sd	$a0,24($sp)
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef56424:
    sd	$ra,40($sp)
    li	$a1,1
    sw	$a1,0($a2)
    # lw $t9, -29704($gp)
    lw	$a0,116($a5)
    li	$a1,21011
    jal	ioctl
    lw	$a0,100($a0)
    ld	$ra,24($sp)
    li	$a3,1
    sw	$a3,16($ra)
    ld	$ra,40($sp)
.L5ef56454:
    li	$v0,1
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef56464:
    sd	$ra,40($sp)
    sd	$a5,0($sp)
    li	$a5,2
    sll	$a1,$a4,0x2
    sd	$a1,8($sp)
    la	$a2,local_0x5f0c0000
    ld	$a0,0($sp)
    la	$a3,local_0x5f0b0000
    addiu	$a2,$a2,-23464
    sw	$a5,0($a2)
    addiu	$a3,$a3,18192
    addu	$a1,$a1,$a3
    sw	$a1,4($a2)
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    li	$a1,21011
    jal	ioctl
    lw	$a0,100($a0)
    la	$a2,local_0x5f0c0000
    ld	$a3,8($sp)
    addiu	$a2,$a2,-23464
    addu	$a3,$a3,$a2
    sd	$a3,24($sp)
    lw	$a3,16($a3)
    beqz	$a3,.L5ef564f4
    ld	$ra,40($sp)
    ld	$a0,0($sp)
    sw	$zero,0($a2)
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    li	$a1,21011
    jal	ioctl
    lw	$a0,100($a0)
    ld	$a3,24($sp)
    ld	$ra,40($sp)
    sw	$zero,16($a3)
.L5ef564f4:
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef56504:
    sd	$a4,16($sp)
    sd	$a5,0($sp)
    sd	$ra,40($sp)
    la	$a2,local_0x5f0c0000
    # lw $t9, -29704($gp)
    li	$a1,9
    addiu	$a2,$a2,-23464
    sw	$a1,0($a2)
    move	$a0,$a5
    lw	$a0,116($a5)
    li	$a1,21011
    jal	ioctl
    lw	$a0,100($a0)
    la	$a3,local_0x5f0b0000
    ld	$a1,16($sp)
    ld	$a0,0($sp)
    addiu	$a3,$a3,18192
    sll	$a1,$a1,0x2
    la	$a2,local_0x5f0c0000
    addu	$a1,$a1,$a3
    li	$a3,3
    addiu	$a2,$a2,-23464
    lw	$a4,8($a2)
    sw	$a1,4($a2)
    sw	$a3,0($a2)
    sw	$a4,0($a1)
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    li	$a1,21011
    jal	ioctl
    lw	$a0,100($a0)
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end expSetBacklight__EHB

.globl expBlankScreen
.ent expBlankScreen
expBlankScreen:
    lui	$a3,0x7
    lw	$a4,436($a1)
    lw	$v0,0($a1)
    lui	$a2,0x17
    addiu	$a2,$a2,-32720
    addu	$at,$t9,$a2
    addiu	$v1,$at,-23588
    sll	$v0,$v0,0x2
    lw	$a5,expScreenPrivateIndex
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$v0,.L5ef565dc
    lw	$a5,0($a4)
    jr	$ra
    move	$v0,$zero
.L5ef565dc:
    li	$a6,4
    beqz	$a0,.L5ef5661c
    addu	$a3,$a5,$a3
    li	$v1,-49
    lbu	$v0,-16296($a3)
    and	$v0,$v0,$v1
    sb	$v0,-16296($a3)
    sw	$v0,4($a4)
    sb	$a6,-16224($a3)
    sb	$zero,-16216($a3)
    sb	$a6,-16192($a3)
    sb	$zero,-16184($a3)
    sb	$a6,-16160($a3)
    sb	$zero,-16152($a3)
.L5ef56614:
    jr	$ra
    li	$v0,1
.L5ef5661c:
    li	$a2,255
    sb	$a6,-16224($a3)
    sb	$a2,-16216($a3)
    sb	$a6,-16192($a3)
    sb	$a2,-16184($a3)
    sb	$a6,-16160($a3)
    sb	$a2,-16152($a3)
    lbu	$a1,-16296($a3)
    ori	$a1,$a1,0x30
    sb	$a1,-16296($a3)
    b	.L5ef56614
    sw	$a1,4($a4)
.end expBlankScreen

