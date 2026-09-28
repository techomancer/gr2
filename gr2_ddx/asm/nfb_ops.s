#
# gr2_ddx: nfb_ops.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl nfbSolidFillRects
.ent nfbSolidFillRects
nfbSolidFillRects:
    lw	$at,76($a0)
    move	$a0,$a2
    move	$a5,$a1
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$v1,0x13
    addiu	$v1,$v1,25092
    addu	$gp,$t9,$v1
    lw	$ra,nfbWindowPrivateIndex
    lw	$t9,132($a1)
    lw	$v0,nfbGCPrivateIndex
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$t9,0($t9)
    lw	$at,0($at)
    move	$a1,$a3
    lw	$t9,4($t9)
    lw	$a4,76($at)
    lbu	$a3,72($at)
    jalr	$t9
    lw	$a2,64($at)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end nfbSolidFillRects

.globl nfbTiledFillRects
.ent nfbTiledFillRects
nfbTiledFillRects:
    move	$at,$a1
    lw	$a5,32($a0)
    move	$a1,$a3
    move	$t0,$a2
    lw	$a2,32($a5)
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$t1,0x13
    addiu	$t1,$t1,24976
    addu	$gp,$t9,$t1
    lw	$a7,nfbGCPrivateIndex
    lw	$a6,76($a0)
    lw	$a3,28($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lhu	$a4,12($a5)
    lhu	$a5,14($a5)
    lw	$v0,76($a6)
    lbu	$a7,72($a6)
    sw	$at,12($sp)
    sw	$v0,4($sp)
    sd	$ra,16($sp)
    lw	$ra,nfbWindowPrivateIndex
    lw	$t9,132($at)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,0($t9)
    lw	$t9,28($t9)
    move	$a0,$t0
    jalr	$t9
    addiu	$a6,$a6,88
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end nfbTiledFillRects

.globl nfbStippledFillRects
.ent nfbStippledFillRects
nfbStippledFillRects:
    addiu	$sp,$sp,-160
    sd	$s0,56($sp)
    sd	$s3,88($sp)
    sd	$s4,64($sp)
    move	$s4,$a1
    sd	$s5,32($sp)
    sd	$s2,96($sp)
    lw	$s2,36($a0)
    sd	$s1,40($sp)
    sd	$s8,8($sp)
    lhu	$s1,12($s2)
    lhu	$s8,14($s2)
    sd	$s7,16($sp)
    sd	$gp,48($sp)
    sd	$ra,72($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,24828
    addu	$gp,$t9,$ra
    lw	$t9,nfbWindowPrivateIndex
    lw	$s7,132($a1)
    sd	$s6,80($sp)
    sll	$t9,$t9,0x2
    addu	$s7,$s7,$t9
    lw	$t9,nfbGCPrivateIndex
    lw	$s6,76($a0)
    lw	$s7,0($s7)
    sll	$t9,$t9,0x2
    addu	$s6,$s6,$t9
    lw	$s6,0($s6)
    sd	$s8,120($sp)
    lw	$s7,0($s7)
    sd	$s6,112($sp)
    lbu	$s5,72($s6)
    lw	$s8,76($s6)
    beqz	$a3,.L5ef88810
    lw	$s6,64($s6)
    move	$s0,$a2
    sll	$at,$a3,0x3
    addu	$at,$at,$a2
    b	.L5ef8857c
    sd	$at,104($sp)
.L5ef8856c:
    ld	$v0,104($sp)
    addiu	$s0,$s0,8
    beql	$s0,$v0,.L5ef88814
    ld	$gp,48($sp)
.L5ef8857c:
    lh	$a5,0($s0)
    sh	$a5,0($sp)
    lh	$a4,2($s0)
    ld	$a0,112($sp)
    sh	$a4,2($sp)
    lh	$a0,88($a0)
    subu	$a0,$a5,$a0
    div	$zero,$a0,$s1
    teq	$s1,$zero,0x7
    ld	$v0,112($sp)
    mfhi	$v1
    bltz	$v1,.L5ef887f8
    sd	$v1,24($sp)
.L5ef885b0:
    lh	$v0,90($v0)
    ld	$at,120($sp)
    subu	$v0,$a4,$v0
    div	$zero,$v0,$at
    teq	$at,$zero,0x7
    mfhi	$t1
    bltz	$t1,.L5ef88808
    ld	$v0,120($sp)
.L5ef885d0:
    ld	$at,24($sp)
    addu	$a3,$s1,$a5
    lh	$a1,4($s0)
    subu	$a3,$a3,$at
    slt	$v1,$a3,$a1
    bnez	$v1,.L5ef885f0
    move	$a5,$a3
    move	$a5,$a1
.L5ef885f0:
    ld	$a3,120($sp)
    sh	$a5,4($sp)
    lh	$a1,6($s0)
    addu	$a3,$a3,$a4
    subu	$a3,$a3,$t1
    slt	$v0,$a3,$a1
    bnez	$v0,.L5ef88614
    move	$t2,$a3
    move	$t2,$a1
.L5ef88614:
    sh	$t2,6($sp)
    lw	$a3,28($s2)
    mult	$a3,$t1
    move	$a7,$s4
    move	$a6,$s8
    move	$a5,$s5
    move	$a4,$s6
    ld	$a2,24($sp)
    addiu	$a0,$sp,0
    lw	$s3,32($s2)
    lw	$t9,12($s7)
    mflo	$t8
    addu	$s3,$s3,$t8
    jalr	$t9
    move	$a1,$s3
    lh	$at,4($s0)
    lh	$a2,4($sp)
    slt	$at,$a2,$at
    beqzl	$at,.L5ef886d0
    lh	$s3,6($s0)
    b	.L5ef886b0
    sh	$a2,0($sp)
.L5ef8866c:
    sh	$v0,4($sp)
.L5ef88670:
    move	$a7,$s4
    move	$a6,$s8
    move	$a5,$s5
    move	$a4,$s6
    lw	$a3,28($s2)
    lw	$t9,12($s7)
    move	$a2,$zero
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$sp,0
    lh	$v1,4($s0)
    lh	$a2,4($sp)
    slt	$v1,$a2,$v1
    beqz	$v1,.L5ef886cc
    nop
    sh	$a2,0($sp)
.L5ef886b0:
    lh	$a1,4($s0)
    addu	$a0,$s1,$a2
    slt	$a0,$a1,$a0
    beqz	$a0,.L5ef8866c
    addu	$v0,$s1,$a2
    b	.L5ef88670
    sh	$a1,4($sp)
.L5ef886cc:
    lh	$s3,6($s0)
.L5ef886d0:
    lh	$a2,6($sp)
    slt	$s3,$a2,$s3
    beqz	$s3,.L5ef8856c
    lw	$s3,32($s2)
    b	.L5ef88700
    sh	$a2,2($sp)
.L5ef886e8:
    lh	$at,6($s0)
.L5ef886ec:
    lh	$a2,6($sp)
    slt	$at,$a2,$at
    beqz	$at,.L5ef8856c
    nop
    sh	$a2,2($sp)
.L5ef88700:
    ld	$v0,120($sp)
    lh	$a1,6($s0)
    ld	$v1,120($sp)
    addu	$v0,$v0,$a2
    slt	$v0,$a1,$v0
    beqz	$v0,.L5ef88724
    ld	$at,24($sp)
    b	.L5ef8872c
    sh	$a1,6($sp)
.L5ef88724:
    addu	$v1,$v1,$a2
    sh	$v1,6($sp)
.L5ef8872c:
    lh	$a3,0($s0)
    sh	$a3,0($sp)
    lh	$a1,4($s0)
    addu	$a3,$s1,$a3
    subu	$a3,$a3,$at
    slt	$a0,$a3,$a1
    bnez	$a0,.L5ef88750
    move	$t1,$a3
    move	$t1,$a1
.L5ef88750:
    move	$a7,$s4
    move	$a6,$s8
    move	$a5,$s5
    move	$a4,$s6
    sh	$t1,4($sp)
    ld	$a2,24($sp)
    lw	$t9,12($s7)
    move	$a1,$s3
    addiu	$a0,$sp,0
    jalr	$t9
    lw	$a3,28($s2)
    lh	$at,4($s0)
    lh	$a2,4($sp)
    slt	$at,$a2,$at
    beqzl	$at,.L5ef886ec
    lh	$at,6($s0)
    b	.L5ef887dc
    sh	$a2,0($sp)
.L5ef88798:
    sh	$v0,4($sp)
.L5ef8879c:
    move	$a7,$s4
    move	$a6,$s8
    move	$a5,$s5
    move	$a4,$s6
    lw	$a3,28($s2)
    lw	$t9,12($s7)
    move	$a2,$zero
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$sp,0
    lh	$v1,4($s0)
    lh	$a2,4($sp)
    slt	$v1,$a2,$v1
    beqz	$v1,.L5ef886e8
    nop
    sh	$a2,0($sp)
.L5ef887dc:
    lh	$a1,4($s0)
    addu	$a0,$s1,$a2
    slt	$a0,$a1,$a0
    beqz	$a0,.L5ef88798
    addu	$v0,$s1,$a2
    b	.L5ef8879c
    sh	$a1,4($sp)
.L5ef887f8:
    ld	$at,24($sp)
    addu	$at,$s1,$at
    b	.L5ef885b0
    sd	$at,24($sp)
.L5ef88808:
    b	.L5ef885d0
    addu	$t1,$v0,$t1
.L5ef88810:
    ld	$gp,48($sp)
.L5ef88814:
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s4,64($sp)
    ld	$s5,32($sp)
    ld	$s6,80($sp)
    ld	$ra,72($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end nfbStippledFillRects

.globl nfbOpStippledFillRects
.ent nfbOpStippledFillRects
nfbOpStippledFillRects:
    addiu	$sp,$sp,-192
    sd	$s0,64($sp)
    sd	$s3,112($sp)
    sd	$s8,32($sp)
    move	$s8,$a1
    sd	$s5,40($sp)
    sd	$s4,96($sp)
    sd	$s2,120($sp)
    lw	$s2,36($a0)
    sd	$s1,56($sp)
    sd	$ra,88($sp)
    lhu	$s1,12($s2)
    lhu	$ra,14($s2)
    sd	$s7,80($sp)
    sd	$gp,72($sp)
    lui	$at,0x13
    addiu	$at,$at,23936
    addu	$gp,$t9,$at
    lw	$t9,nfbWindowPrivateIndex
    lw	$s7,132($a1)
    sd	$s6,104($sp)
    sll	$t9,$t9,0x2
    addu	$s7,$s7,$t9
    lw	$s7,0($s7)
    lw	$t9,nfbGCPrivateIndex
    lw	$s6,76($a0)
    lw	$s7,0($s7)
    sll	$t9,$t9,0x2
    addu	$s6,$s6,$t9
    lw	$s6,0($s6)
    sd	$ra,144($sp)
    sd	$s7,24($sp)
    sd	$s6,136($sp)
    lbu	$s4,72($s6)
    lw	$s7,76($s6)
    lw	$s5,68($s6)
    beqz	$a3,.L5ef88bb4
    lw	$s6,64($s6)
    move	$s0,$a2
    sll	$v0,$a3,0x3
    addu	$v0,$v0,$a2
    b	.L5ef88900
    sd	$v0,128($sp)
.L5ef888f0:
    ld	$v1,128($sp)
    addiu	$s0,$s0,8
    beql	$s0,$v1,.L5ef88bb8
    ld	$gp,72($sp)
.L5ef88900:
    lh	$a5,0($s0)
    sh	$a5,16($sp)
    lh	$a4,2($s0)
    ld	$at,136($sp)
    sh	$a4,18($sp)
    lh	$at,88($at)
    subu	$at,$a5,$at
    div	$zero,$at,$s1
    teq	$s1,$zero,0x7
    mfhi	$a0
    bltz	$a0,.L5ef88b9c
    sd	$a0,48($sp)
.L5ef88930:
    ld	$v1,136($sp)
    lh	$v1,90($v1)
    ld	$v0,144($sp)
    subu	$v1,$a4,$v1
    div	$zero,$v1,$v0
    ld	$a0,144($sp)
    mfhi	$t1
    bltz	$t1,.L5ef88bac
    teq	$v0,$zero,0x7
.L5ef88954:
    ld	$at,48($sp)
    addu	$a3,$s1,$a5
    lh	$a1,4($s0)
    subu	$a3,$a3,$at
    slt	$a0,$a3,$a1
    bnez	$a0,.L5ef88974
    move	$a5,$a3
    move	$a5,$a1
.L5ef88974:
    ld	$a3,144($sp)
    sh	$a5,20($sp)
    lh	$a1,6($s0)
    addu	$a3,$a3,$a4
    subu	$a3,$a3,$t1
    slt	$v0,$a3,$a1
    bnez	$v0,.L5ef88998
    move	$t2,$a3
    move	$t2,$a1
.L5ef88998:
    sh	$t2,22($sp)
    lw	$a3,28($s2)
    mult	$a3,$t1
    move	$a7,$s7
    move	$a6,$s4
    move	$a5,$s5
    move	$a4,$s6
    ld	$a2,48($sp)
    ld	$t9,24($sp)
    lw	$s3,32($s2)
    sw	$s8,4($sp)
    addiu	$a0,$sp,16
    lw	$t9,16($t9)
    mflo	$t8
    addu	$s3,$s3,$t8
    jalr	$t9
    move	$a1,$s3
    lh	$at,4($s0)
    lh	$a2,20($sp)
    slt	$at,$a2,$at
    beqzl	$at,.L5ef88a64
    lh	$v1,6($s0)
    b	.L5ef88a44
    sh	$a2,16($sp)
.L5ef889f8:
    sh	$v0,20($sp)
.L5ef889fc:
    move	$a7,$s7
    move	$a6,$s4
    move	$a5,$s5
    lw	$a3,28($s2)
    ld	$t9,24($sp)
    sw	$s8,4($sp)
    move	$a4,$s6
    lw	$t9,16($t9)
    move	$a2,$zero
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$sp,16
    lh	$at,4($s0)
    lh	$a2,20($sp)
    slt	$at,$a2,$at
    beqz	$at,.L5ef88a60
    nop
    sh	$a2,16($sp)
.L5ef88a44:
    lh	$a1,4($s0)
    addu	$v0,$s1,$a2
    slt	$v0,$a1,$v0
    beqz	$v0,.L5ef889f8
    addu	$v0,$s1,$a2
    b	.L5ef889fc
    sh	$a1,20($sp)
.L5ef88a60:
    lh	$v1,6($s0)
.L5ef88a64:
    lh	$a2,22($sp)
    slt	$v1,$a2,$v1
    beqz	$v1,.L5ef888f0
    lw	$s3,32($s2)
    b	.L5ef88a94
    sh	$a2,18($sp)
.L5ef88a7c:
    lh	$a0,6($s0)
.L5ef88a80:
    lh	$a2,22($sp)
    slt	$a0,$a2,$a0
    beqz	$a0,.L5ef888f0
    nop
    sh	$a2,18($sp)
.L5ef88a94:
    ld	$at,144($sp)
    lh	$a1,6($s0)
    addu	$at,$at,$a2
    slt	$at,$a1,$at
    beqz	$at,.L5ef88ab4
    ld	$v0,144($sp)
    b	.L5ef88abc
    sh	$a1,22($sp)
.L5ef88ab4:
    addu	$v0,$v0,$a2
    sh	$v0,22($sp)
.L5ef88abc:
    lh	$a3,0($s0)
    sh	$a3,16($sp)
    ld	$at,48($sp)
    lh	$a1,4($s0)
    addu	$a3,$s1,$a3
    subu	$a3,$a3,$at
    slt	$v1,$a3,$a1
    bnez	$v1,.L5ef88ae4
    move	$t1,$a3
    move	$t1,$a1
.L5ef88ae4:
    move	$a7,$s7
    move	$a6,$s4
    move	$a5,$s5
    sh	$t1,20($sp)
    ld	$t9,24($sp)
    lw	$a3,28($s2)
    sw	$s8,4($sp)
    move	$a4,$s6
    lw	$t9,16($t9)
    ld	$a2,48($sp)
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$sp,16
    lh	$at,4($s0)
    lh	$a2,20($sp)
    slt	$at,$a2,$at
    beqzl	$at,.L5ef88a80
    lh	$a0,6($s0)
    b	.L5ef88b80
    sh	$a2,16($sp)
.L5ef88b34:
    sh	$v0,20($sp)
.L5ef88b38:
    move	$a7,$s7
    move	$a6,$s4
    move	$a5,$s5
    lw	$a3,28($s2)
    ld	$t9,24($sp)
    sw	$s8,4($sp)
    move	$a4,$s6
    lw	$t9,16($t9)
    move	$a2,$zero
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$sp,16
    lh	$at,4($s0)
    lh	$a2,20($sp)
    slt	$at,$a2,$at
    beqz	$at,.L5ef88a7c
    nop
    sh	$a2,16($sp)
.L5ef88b80:
    lh	$a1,4($s0)
    addu	$v0,$s1,$a2
    slt	$v0,$a1,$v0
    beqz	$v0,.L5ef88b34
    addu	$v0,$s1,$a2
    b	.L5ef88b38
    sh	$a1,20($sp)
.L5ef88b9c:
    ld	$v1,48($sp)
    addu	$v1,$s1,$v1
    b	.L5ef88930
    sd	$v1,48($sp)
.L5ef88bac:
    b	.L5ef88954
    addu	$t1,$a0,$t1
.L5ef88bb4:
    ld	$gp,72($sp)
.L5ef88bb8:
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$s4,96($sp)
    ld	$s5,40($sp)
    ld	$s6,104($sp)
    ld	$ra,88($sp)
    ld	$s7,80($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end nfbOpStippledFillRects

.globl nfbDoBitBltSS
.ent nfbDoBitBltSS
nfbDoBitBltSS:
    addiu	$sp,$sp,-160
    sd	$s3,48($sp)
    move	$s3,$a2
    sd	$s1,32($sp)
    move	$s1,$a3
    sd	$s4,40($sp)
    move	$s4,$a4
    sd	$s2,56($sp)
    lw	$a7,8($a1)
    move	$s2,$a0
    sd	$s5,24($sp)
    beqz	$a7,.L5ef7cbf4
    move	$s5,$a5
    sd	$s8,72($sp)
    lw	$a0,4($a7)
.L5ef7ca88:
    beqz	$a0,.L5ef7cc0c
    move	$s8,$a0
    sd	$s6,80($sp)
    lw	$at,nfbWindowPrivateIndex
    lw	$s6,132($s2)
    sll	$at,$at,0x2
    addu	$s6,$s6,$at
    lw	$s6,0($s6)
    lw	$s6,0($s6)
    beqz	$a7,.L5ef7cc00
    lw	$s6,0($s6)
    addiu	$a2,$a7,8
    sd	$s0,88($sp)
.L5ef7cabc:
    sd	$ra,64($sp)
    li	$v0,1
    beq	$a0,$v0,.L5ef7cadc
    move	$s0,$a2
    bltz	$s1,.L5ef7cb48
    nop
    bltz	$s3,.L5ef7cb48
    sd	$ra,64($sp)
.L5ef7cadc:
    addiu	$a1,$sp,0
    lh	$a0,0($s0)
    move	$a2,$s4
    move	$a3,$s5
    addu	$a0,$a0,$s3
    sh	$a0,0($sp)
    move	$a4,$s2
    lh	$v1,2($s0)
    move	$t9,$s6
    move	$a0,$s0
    addu	$v1,$v1,$s1
    jalr	$s6
    sh	$v1,2($sp)
    addiu	$s8,$s8,-1
    bnez	$s8,.L5ef7cadc
    addiu	$s0,$s0,8
.L5ef7cb1c:
    ld	$s0,88($sp)
.L5ef7cb20:
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    ld	$ra,64($sp)
    ld	$s6,80($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef7cb48:
    blezl	$s1,.L5ef7cc2c
    sd	$ra,64($sp)
    sd	$ra,64($sp)
    b	.L5ef7cbb0
    sd	$s7,96($sp)
    lw	$a6,8($sp)
.L5ef7cb60:
    sd	$a6,16($sp)
.L5ef7cb64:
    addiu	$a1,$sp,0
.L5ef7cb68:
    lh	$t0,0($s0)
    move	$a0,$s0
    move	$a2,$s4
    addu	$t0,$t0,$s3
    sh	$t0,0($sp)
    move	$a3,$s5
    lh	$a7,2($s0)
    move	$a4,$s2
    move	$t9,$s6
    addu	$a7,$a7,$s1
    jalr	$s6
    sh	$a7,2($sp)
    addiu	$s0,$s0,-8
    sltu	$at,$s0,$s7
    beqz	$at,.L5ef7cb68
    addiu	$a1,$sp,0
    beqz	$s8,.L5ef7cbec
    ld	$s0,16($sp)
.L5ef7cbb0:
    move	$s7,$s0
.L5ef7cbb4:
    addiu	$s8,$s8,-1
    beqz	$s8,.L5ef7cb60
    lw	$a6,8($sp)
    lh	$v1,2($s7)
    lh	$v0,10($s0)
    beq	$v0,$v1,.L5ef7cbb4
    addiu	$s0,$s0,8
    beqz	$s8,.L5ef7cb60
    lw	$a6,8($sp)
    addiu	$s0,$s0,-8
    addiu	$a6,$s0,8
    sd	$a6,16($sp)
    b	.L5ef7cb64
    sw	$a6,8($sp)
.L5ef7cbec:
    b	.L5ef7cb1c
    ld	$s7,96($sp)
.L5ef7cbf4:
    li	$a0,1
    b	.L5ef7ca88
    sd	$s8,72($sp)
.L5ef7cc00:
    move	$a2,$a1
    b	.L5ef7cabc
    sd	$s0,88($sp)
.L5ef7cc0c:
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef7cc2c:
    sll	$s0,$a0,0x3
    addu	$s0,$s0,$a2
    blez	$s3,.L5ef7cce0
    addiu	$s0,$s0,-8
    sd	$ra,64($sp)
    b	.L5ef7cc9c
    sd	$s7,96($sp)
    lw	$at,8($sp)
.L5ef7cc4c:
    sd	$at,16($sp)
.L5ef7cc50:
    addiu	$a1,$sp,0
.L5ef7cc54:
    lh	$v1,0($s0)
    move	$a0,$s0
    move	$a2,$s4
    addu	$v1,$v1,$s3
    sh	$v1,0($sp)
    move	$a3,$s5
    lh	$v0,2($s0)
    move	$a4,$s2
    move	$t9,$s6
    addu	$v0,$v0,$s1
    jalr	$s6
    sh	$v0,2($sp)
    addiu	$s0,$s0,8
    sltu	$a6,$s7,$s0
    beqz	$a6,.L5ef7cc54
    addiu	$a1,$sp,0
    beqz	$s8,.L5ef7ccd8
    ld	$s0,16($sp)
.L5ef7cc9c:
    move	$s7,$s0
.L5ef7cca0:
    addiu	$s8,$s8,-1
    beqz	$s8,.L5ef7cc4c
    lw	$at,8($sp)
    lh	$v0,2($s7)
    lh	$at,-6($s0)
    beq	$at,$v0,.L5ef7cca0
    addiu	$s0,$s0,-8
    beqz	$s8,.L5ef7cc4c
    lw	$at,8($sp)
    addiu	$s0,$s0,8
    addiu	$v1,$s0,-8
    sd	$v1,16($sp)
    b	.L5ef7cc50
    sw	$v1,8($sp)
.L5ef7ccd8:
    b	.L5ef7cb1c
    ld	$s7,96($sp)
.L5ef7cce0:
    addiu	$a1,$sp,0
.L5ef7cce4:
    lh	$a3,0($s0)
    move	$a4,$s2
    move	$t9,$s6
    addu	$a3,$a3,$s3
    sh	$a3,0($sp)
    move	$a0,$s0
    lh	$a2,2($s0)
    addiu	$s0,$s0,-8
    move	$a3,$s5
    addu	$a2,$a2,$s1
    sh	$a2,2($sp)
    jalr	$s6
    move	$a2,$s4
    addiu	$s8,$s8,-1
    bnez	$s8,.L5ef7cce4
    addiu	$a1,$sp,0
    b	.L5ef7cb20
    ld	$s0,88($sp)
.end nfbDoBitBltSS

.globl nfbDoBitBltSP
.ent nfbDoBitBltSP
nfbDoBitBltSP:
    li	$at,5
    addiu	$sp,$sp,-496
    sd	$a1,64($sp)
    lw	$v1,nfbWindowPrivateIndex
    lw	$v0,132($a1)
    sd	$a3,200($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    sd	$s0,136($sp)
    move	$s0,$a5
    lw	$v0,0($v0)
    sd	$s6,144($sp)
    move	$s6,$a6
    lw	$v0,20($v0)
    sd	$a4,208($sp)
    beq	$a5,$at,.L5ef7da9c
    sd	$v0,56($sp)
    beqzl	$s6,.L5ef7daa0
    ld	$s0,136($sp)
    lw	$v0,8($a2)
    li	$t0,32
    beqz	$v0,.L5ef7da88
    addiu	$a4,$v0,8
    lw	$a2,4($v0)
.L5ef7ced0:
    lbu	$a7,3($a0)
    lw	$v1,28($a0)
    lw	$at,32($a0)
    sd	$a7,232($sp)
    sd	$v1,224($sp)
    beq	$a7,$t0,.L5ef7cf34
    sd	$at,192($sp)
    ld	$at,232($sp)
    li	$t0,1
    slti	$a7,$at,32
    sllv	$t0,$t0,$at
    addiu	$t0,$t0,-1
    and	$s6,$t0,$s6
    beqz	$a7,.L5ef7cf34
    move	$a0,$s6
    move	$v0,$zero
    ld	$a7,232($sp)
    li	$a5,32
    subu	$a5,$a5,$a7
.L5ef7cf1c:
    ld	$at,232($sp)
    sllv	$s6,$s6,$at
    addu	$v0,$v0,$at
    slt	$t0,$v0,$a5
    bnez	$t0,.L5ef7cf1c
    addu	$s6,$s6,$a0
.L5ef7cf34:
    ld	$t0,232($sp)
    ld	$a7,224($sp)
    lw	$at,0($sp)
    blez	$a2,.L5ef7da68
    sd	$s8,408($sp)
    li	$v0,3
    sd	$s2,424($sp)
    sd	$s3,416($sp)
    sd	$ra,400($sp)
    sd	$s4,392($sp)
    sd	$s1,384($sp)
    sd	$s5,376($sp)
    sd	$s7,368($sp)
    sd	$a4,240($sp)
    move	$s8,$a4
    nor	$s8,$s6,$zero
    sd	$at,304($sp)
    addiu	$at,$gp,-28804
    sra	$a7,$a7,0x2
    sra	$t0,$t0,0x3
    sd	$t0,40($sp)
    sll	$t0,$a7,0x2
    sll	$a7,$a7,0x2
    sd	$a7,256($sp)
    sll	$a7,$a2,0x3
    addu	$a7,$a4,$a7
    lw	$v1,4($sp)
    sd	$t0,320($sp)
    sll	$t0,$s0,0x2
    sd	$v1,312($sp)
    addiu	$v1,$gp,-28740
    addu	$v1,$t0,$v1
    addu	$t0,$t0,$at
    slti	$at,$s0,6
    sd	$a7,176($sp)
    slti	$a7,$s0,10
    xori	$a7,$a7,0x1
    xori	$at,$at,0x1
    sd	$at,280($sp)
    slti	$at,$s0,12
    sd	$a7,288($sp)
    addiu	$a7,$gp,-28820
    addu	$a7,$s0,$a7
    xori	$at,$at,0x1
    sd	$at,352($sp)
    sd	$a7,168($sp)
    sd	$t0,152($sp)
    slti	$t0,$s0,4
    xori	$t0,$t0,0x1
    sd	$t0,296($sp)
    slti	$t0,$s0,8
    xori	$t0,$t0,0x1
    sd	$v1,160($sp)
    slti	$v1,$s0,2
    xori	$v1,$v1,0x1
    sd	$v1,248($sp)
    slti	$v1,$s0,14
    xori	$v1,$v1,0x1
    sd	$v1,344($sp)
    addiu	$v1,$gp,-28836
    addu	$v1,$s0,$v1
    lbu	$v1,0($v1)
    sd	$t0,360($sp)
    b	.L5ef7d054
    sd	$v1,184($sp)
.L5ef7d038:
    ld	$a7,48($sp)
.L5ef7d03c:
    bnez	$a7,.L5ef7d61c
.L5ef7d040:
    ld	$t0,240($sp)
    ld	$at,176($sp)
    addiu	$t0,$t0,8
    beq	$t0,$at,.L5ef7da48
    sd	$t0,240($sp)
.L5ef7d054:
    ld	$t0,240($sp)
    ld	$a1,200($sp)
    lh	$v1,0($t0)
    addu	$v1,$v1,$a1
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sh	$v1,8($sp)
    lh	$a5,0($t0)
    lh	$a1,4($t0)
    subu	$a1,$a1,$a5
    addu	$v1,$a1,$v1
    sh	$v1,12($sp)
    ld	$at,208($sp)
    lh	$a7,2($t0)
    addu	$a7,$a7,$at
    dsll32	$a7,$a7,0x10
    dsra32	$a7,$a7,0x10
    sh	$a7,10($sp)
    lh	$at,2($t0)
    lh	$a5,6($t0)
    subu	$a5,$a5,$at
    sd	$a5,16($sp)
    addu	$a5,$a5,$a7
    sh	$a5,14($sp)
    ld	$v1,224($sp)
    lh	$at,2($t0)
    mult	$at,$v1
    lh	$t0,0($t0)
    ld	$at,40($sp)
    mflo	$a5
    mult	$t0,$at
    sd	$zero,48($sp)
    li	$a0,-4
    ld	$a7,192($sp)
    ld	$at,40($sp)
    ld	$t0,232($sp)
    addu	$a5,$a5,$a7
    mflo	$a7
    addu	$a5,$a5,$a7
    addiu	$a7,$a5,3
    and	$a0,$a0,$a7
    subu	$v1,$a0,$a5
    beqz	$v1,.L5ef7d688
    sd	$v1,24($sp)
    li	$a7,1
    ld	$v1,24($sp)
    div	$zero,$v1,$at
    mflo	$v1
    mult	$v1,$t0
    teq	$at,$zero,0x7
    sd	$v1,216($sp)
    mflo	$t0
    sllv	$a7,$a7,$t0
    addiu	$a7,$a7,-1
    sd	$a7,312($sp)
.L5ef7d140:
    ld	$t0,40($sp)
    mult	$t0,$a1
    move	$s5,$a0
    ld	$at,232($sp)
    mflo	$a7
    addu	$a7,$a7,$a5
    andi	$a7,$a7,0x3
    beqz	$a7,.L5ef7d1a4
    sd	$a7,32($sp)
    ld	$a7,40($sp)
    ld	$v1,32($sp)
    div	$zero,$v1,$a7
    mflo	$t0
    mult	$t0,$at
    li	$v1,32
    teq	$a7,$zero,0x7
    li	$at,1
    mflo	$a7
    subu	$v1,$v1,$a7
    sllv	$at,$at,$a7
    addiu	$at,$at,-1
    sllv	$at,$at,$v1
    sd	$at,304($sp)
.L5ef7d1a4:
    ld	$a7,184($sp)
    ld	$t0,224($sp)
    move	$a6,$a5
    beqz	$a7,.L5ef7d27c
    sd	$t0,128($sp)
    ld	$at,168($sp)
    lbu	$at,0($at)
    bnez	$at,.L5ef7d1dc
    ld	$a3,40($sp)
    li	$v1,-1
    sd	$a0,112($sp)
    beq	$v1,$s6,.L5ef7d258
    sd	$a1,120($sp)
    ld	$a3,40($sp)
.L5ef7d1dc:
    li	$a4,4
    ld	$a6,32($sp)
    move	$s1,$a0
    subu	$s1,$a5,$a0
    move	$a5,$a1
    addiu	$s1,$s1,4
    subu	$a4,$a4,$a6
    andi	$s1,$s1,0x3
    addu	$a5,$s1,$a1
    andi	$a4,$a4,0x3
    addu	$a4,$a4,$a5
    mult	$a3,$a4
    sd	$a1,120($sp)
    ld	$a2,16($sp)
    mflo	$a1
    mult	$a1,$a2
    sd	$a0,112($sp)
    # lw $t9, -29492($gp)
    sd	$a1,128($sp)
    mflo	$a0
    jal	Xalloc
    addiu	$a0,$a0,4
    sd	$v0,48($sp)
    ld	$s5,24($sp)
    addiu	$a7,$v0,3
    li	$a6,-4
    and	$a6,$a6,$a7
    addu	$a6,$a6,$s1
    addu	$s5,$s5,$a6
.L5ef7d258:
    addiu	$a0,$sp,8
    ld	$t9,56($sp)
    move	$a1,$a6
    ld	$a2,128($sp)
    jalr	$t9
    ld	$a3,64($sp)
    li	$v0,3
    ld	$a1,120($sp)
    ld	$a0,112($sp)
.L5ef7d27c:
    ld	$at,152($sp)
    li	$t0,-1
    beq	$t0,$s6,.L5ef7d690
    ld	$s1,216($sp)
    move	$s3,$zero
    ld	$s4,160($sp)
    move	$s7,$zero
    ld	$at,16($sp)
    ld	$t0,216($sp)
    blez	$at,.L5ef7d038
    subu	$t0,$a1,$t0
    ld	$s2,128($sp)
    ld	$a7,40($sp)
    ld	$v1,304($sp)
    ld	$at,312($sp)
    mult	$a7,$t0
    nor	$at,$at,$zero
    nor	$v1,$v1,$zero
    sd	$v1,80($sp)
    lw	$s4,0($s4)
    sd	$at,88($sp)
    sra	$s2,$s2,0x2
    sd	$s4,96($sp)
    sll	$s4,$s2,0x2
    sd	$s4,336($sp)
    sll	$s2,$s2,0x2
    sd	$s2,328($sp)
    mflo	$s2
    sra	$s1,$s2,0x1
    srl	$s1,$s1,0x1e
    addu	$s1,$s1,$s2
    move	$s2,$a0
    sra	$s1,$s1,0x2
    sd	$s1,72($sp)
    sll	$s4,$s1,0x2
    sll	$s1,$s1,0x2
    b	.L5ef7d418
    addu	$s1,$a0,$s1
.L5ef7d314:
    and	$a5,$a2,$a6
    nor	$a5,$a5,$zero
.L5ef7d31c:
    move	$a6,$a5
.L5ef7d320:
    move	$a5,$a6
.L5ef7d324:
    move	$a6,$a5
.L5ef7d328:
    move	$a5,$a6
.L5ef7d32c:
    and	$t0,$s8,$a2
    and	$a7,$a5,$s6
    or	$a7,$a7,$t0
    ld	$t0,312($sp)
    and	$a7,$a7,$t0
    ld	$t0,88($sp)
    and	$t0,$t0,$a2
    or	$a7,$a7,$t0
    sw	$a7,-4($s2)
.L5ef7d350:
    ld	$at,72($sp)
    beqz	$at,.L5ef7d374
    addu	$a0,$s3,$s5
    ld	$t9,96($sp)
    move	$a1,$s2
    move	$a2,$s1
    jalr	$t9
    move	$a3,$s6
    li	$v0,3
.L5ef7d374:
    ld	$v1,32($sp)
    beqz	$v1,.L5ef7d3f4
    addu	$a6,$s4,$s5
    beq	$v0,$s0,.L5ef7d47c
    lw	$a6,0($a6)
    ld	$a7,360($sp)
    nor	$a0,$a6,$zero
    beqz	$a7,.L5ef7d4bc
    nor	$t1,$a6,$zero
    ld	$t0,352($sp)
    move	$a5,$t1
    beqz	$t0,.L5ef7d518
    ld	$a7,288($sp)
    ld	$at,344($sp)
    beqz	$at,.L5ef7d554
    li	$v1,14
    beq	$v1,$s0,.L5ef7d56c
    lw	$a2,0($s1)
    li	$a5,-1
.L5ef7d3c0:
    move	$a6,$a5
.L5ef7d3c4:
    move	$a5,$a6
.L5ef7d3c8:
    move	$a6,$a5
.L5ef7d3cc:
    move	$a5,$a6
.L5ef7d3d0:
    and	$t0,$s8,$a2
    and	$a7,$a5,$s6
    or	$a7,$a7,$t0
    ld	$t0,304($sp)
    and	$a7,$a7,$t0
    ld	$t0,80($sp)
    and	$t0,$t0,$a2
    or	$a7,$a7,$t0
    sw	$a7,0($s1)
.L5ef7d3f4:
    ld	$at,16($sp)
    ld	$t0,328($sp)
    ld	$a7,336($sp)
    ld	$v1,320($sp)
    addu	$s3,$s3,$t0
    addu	$s4,$s4,$a7
    addu	$s1,$v1,$s1
    beq	$s7,$at,.L5ef7d038
    addu	$s2,$v1,$s2
.L5ef7d418:
    ld	$at,24($sp)
    addu	$a6,$s3,$s5
    ld	$t0,352($sp)
    beqz	$at,.L5ef7d350
    addiu	$s7,$s7,1
    beq	$v0,$s0,.L5ef7d470
    lw	$a6,-4($a6)
    ld	$a7,360($sp)
    nor	$a0,$a6,$zero
    beqz	$a7,.L5ef7d488
    nor	$t1,$a6,$zero
    move	$a5,$t1
    beqz	$t0,.L5ef7d4f0
    li	$a7,8
    ld	$at,344($sp)
    beqz	$at,.L5ef7d53c
    li	$v1,14
    beq	$v1,$s0,.L5ef7d314
    lw	$a2,-4($s2)
    li	$a5,-1
    b	.L5ef7d31c
    nop
.L5ef7d470:
    move	$a5,$a6
    b	.L5ef7d32c
    lw	$a2,-4($s2)
.L5ef7d47c:
    move	$a5,$a6
    b	.L5ef7d3d0
    lw	$a2,0($s1)
.L5ef7d488:
    ld	$a7,296($sp)
    nor	$t1,$a6,$zero
    beqz	$a7,.L5ef7d578
    ld	$t0,280($sp)
    beqz	$t0,.L5ef7d5e4
    lw	$a2,-4($s2)
    li	$at,6
    beq	$at,$s0,.L5ef7d5fc
    or	$a5,$a2,$a6
.L5ef7d4ac:
    move	$t1,$a5
.L5ef7d4b0:
    move	$a5,$t1
.L5ef7d4b4:
    b	.L5ef7d328
    move	$a6,$a5
.L5ef7d4bc:
    ld	$v1,296($sp)
    nor	$t1,$a6,$zero
    beqz	$v1,.L5ef7d59c
    ld	$a7,280($sp)
    beqz	$a7,.L5ef7d5ec
    lw	$a2,0($s1)
    li	$t0,6
    beq	$t0,$s0,.L5ef7d610
    or	$a5,$a2,$a6
.L5ef7d4e0:
    move	$t1,$a5
.L5ef7d4e4:
    move	$a5,$t1
.L5ef7d4e8:
    b	.L5ef7d3cc
    move	$a6,$a5
.L5ef7d4f0:
    ld	$at,288($sp)
    beqz	$at,.L5ef7d5c0
    lw	$a2,-4($s2)
    li	$v1,10
    beq	$v1,$s0,.L5ef7d5f4
    nor	$t1,$a2,$zero
    or	$a5,$t1,$a6
.L5ef7d50c:
    move	$a6,$a5
.L5ef7d510:
    b	.L5ef7d324
    move	$a5,$a6
.L5ef7d518:
    beqz	$a7,.L5ef7d5d0
    lw	$a2,0($s1)
    li	$t0,10
    beq	$t0,$s0,.L5ef7d608
    nor	$t1,$a2,$zero
    or	$a5,$t1,$a6
.L5ef7d530:
    move	$a6,$a5
.L5ef7d534:
    b	.L5ef7d3c8
    move	$a5,$a6
.L5ef7d53c:
    li	$at,12
    beq	$at,$s0,.L5ef7d54c
    lw	$a2,-4($s2)
    or	$a5,$t1,$a2
.L5ef7d54c:
    b	.L5ef7d320
    move	$a6,$a5
.L5ef7d554:
    li	$v1,12
    beq	$v1,$s0,.L5ef7d564
    lw	$a2,0($s1)
    or	$a5,$t1,$a2
.L5ef7d564:
    b	.L5ef7d3c4
    move	$a6,$a5
.L5ef7d56c:
    and	$a5,$a2,$a6
    b	.L5ef7d3c0
    nor	$a5,$a5,$zero
.L5ef7d578:
    ld	$a7,248($sp)
    beqz	$a7,.L5ef7d630
    li	$t0,2
    beq	$t0,$s0,.L5ef7d670
    lw	$a2,-4($s2)
    move	$a5,$a6
.L5ef7d590:
    move	$a0,$a5
.L5ef7d594:
    b	.L5ef7d4b4
    move	$a5,$a0
.L5ef7d59c:
    ld	$at,248($sp)
    beqz	$at,.L5ef7d648
    li	$v1,2
    beq	$v1,$s0,.L5ef7d67c
    lw	$a2,0($s1)
    move	$a5,$a6
.L5ef7d5b4:
    move	$a0,$a5
.L5ef7d5b8:
    b	.L5ef7d4e8
    move	$a5,$a0
.L5ef7d5c0:
    beq	$a7,$s0,.L5ef7d660
    xor	$a0,$a0,$a2
.L5ef7d5c8:
    b	.L5ef7d510
    move	$a6,$a0
.L5ef7d5d0:
    li	$a7,8
    beq	$a7,$s0,.L5ef7d668
    xor	$a0,$a0,$a2
.L5ef7d5dc:
    b	.L5ef7d534
    move	$a6,$a0
.L5ef7d5e4:
    b	.L5ef7d4b0
    and	$t1,$t1,$a2
.L5ef7d5ec:
    b	.L5ef7d4e4
    and	$t1,$t1,$a2
.L5ef7d5f4:
    b	.L5ef7d50c
    move	$a5,$t1
.L5ef7d5fc:
    xor	$a5,$a2,$a6
    b	.L5ef7d4ac
    nop
.L5ef7d608:
    b	.L5ef7d530
    move	$a5,$t1
.L5ef7d610:
    xor	$a5,$a2,$a6
    b	.L5ef7d4e0
    nop
.L5ef7d61c:
    # lw $t9, -29644($gp)
    jal	Xfree
    ld	$a0,48($sp)
    b	.L5ef7d040
    li	$v0,3
.L5ef7d630:
    li	$at,1
    beq	$at,$s0,.L5ef7da38
    lw	$a2,-4($s2)
    move	$a4,$zero
.L5ef7d640:
    b	.L5ef7d594
    move	$a0,$a4
.L5ef7d648:
    li	$v1,1
    beq	$v1,$s0,.L5ef7da40
    lw	$a2,0($s1)
    move	$a4,$zero
.L5ef7d658:
    b	.L5ef7d5b8
    move	$a0,$a4
.L5ef7d660:
    b	.L5ef7d5c8
    nor	$a0,$a2,$a6
.L5ef7d668:
    b	.L5ef7d5dc
    nor	$a0,$a2,$a6
.L5ef7d670:
    nor	$a5,$a2,$zero
    b	.L5ef7d590
    and	$a5,$a5,$a6
.L5ef7d67c:
    nor	$a5,$a2,$zero
    b	.L5ef7d5b4
    and	$a5,$a5,$a6
.L5ef7d688:
    b	.L5ef7d140
    sd	$zero,216($sp)
.L5ef7d690:
    ld	$t0,40($sp)
    beq	$v0,$s0,.L5ef7d038
    move	$s3,$zero
    ld	$a7,16($sp)
    blez	$a7,.L5ef7d038
    move	$s7,$zero
    ld	$v1,312($sp)
    ld	$a7,304($sp)
    subu	$s1,$a1,$s1
    mult	$t0,$s1
    move	$s1,$a0
    nor	$a7,$a7,$zero
    nor	$v1,$v1,$zero
    sd	$v1,88($sp)
    lw	$at,0($at)
    ld	$s4,128($sp)
    sd	$a7,80($sp)
    sd	$at,104($sp)
    sra	$s4,$s4,0x2
    sll	$at,$s4,0x2
    sd	$at,272($sp)
    sll	$s4,$s4,0x2
    sd	$s4,264($sp)
    mflo	$s4
    sra	$s2,$s4,0x1
    srl	$s2,$s2,0x1e
    addu	$s2,$s2,$s4
    sra	$s2,$s2,0x2
    sd	$s2,72($sp)
    sll	$s4,$s2,0x2
    sll	$s2,$s2,0x2
    b	.L5ef7d760
    addu	$s2,$a0,$s2
.L5ef7d714:
    li	$a6,-1
.L5ef7d718:
    move	$a5,$a6
.L5ef7d71c:
    move	$a6,$a5
.L5ef7d720:
    move	$a5,$a6
.L5ef7d724:
    ld	$v1,80($sp)
    ld	$at,304($sp)
    and	$v1,$v1,$a2
    and	$at,$a5,$at
    or	$at,$at,$v1
    sw	$at,0($s2)
.L5ef7d73c:
    ld	$v1,16($sp)
    ld	$at,264($sp)
    ld	$t0,272($sp)
    ld	$a7,256($sp)
    addu	$s3,$s3,$at
    addu	$s4,$s4,$t0
    addu	$s2,$a7,$s2
    beq	$s7,$v1,.L5ef7d9d8
    addu	$s1,$a7,$s1
.L5ef7d760:
    ld	$v1,24($sp)
    ld	$a7,360($sp)
    ld	$t0,344($sp)
    beqz	$v1,.L5ef7d7cc
    addiu	$s7,$s7,1
    addu	$a5,$s3,$s5
    beqz	$a7,.L5ef7d838
    lw	$a5,-4($a5)
    ld	$a7,352($sp)
    nor	$a4,$a5,$zero
    beqz	$a7,.L5ef7d8a8
    nor	$a6,$a5,$zero
    beqz	$t0,.L5ef7d8fc
    move	$a0,$a6
    li	$at,14
    beq	$at,$s0,.L5ef7d928
    lw	$a2,-4($s1)
    li	$a6,-1
.L5ef7d7a8:
    move	$a5,$a6
.L5ef7d7ac:
    move	$a6,$a5
.L5ef7d7b0:
    move	$a5,$a6
.L5ef7d7b4:
    ld	$a7,88($sp)
    ld	$v1,312($sp)
    and	$a7,$a7,$a2
    and	$v1,$a5,$v1
    or	$v1,$v1,$a7
    sw	$v1,-4($s1)
.L5ef7d7cc:
    ld	$a7,72($sp)
    beqz	$a7,.L5ef7d7ec
    ld	$t9,104($sp)
    addu	$a0,$s3,$s5
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s2
    li	$v0,3
.L5ef7d7ec:
    ld	$t0,32($sp)
    addu	$a5,$s4,$s5
    beqz	$t0,.L5ef7d73c
    ld	$at,360($sp)
    beqz	$at,.L5ef7d870
    lw	$a5,0($a5)
    ld	$a7,352($sp)
    li	$at,14
    nor	$a6,$a5,$zero
    beqz	$a7,.L5ef7d8d4
    move	$a0,$a6
    ld	$t0,344($sp)
    beqz	$t0,.L5ef7d914
    li	$v1,12
    bne	$at,$s0,.L5ef7d714
    lw	$a2,0($s2)
    and	$a6,$a2,$a5
    b	.L5ef7d718
    nor	$a6,$a6,$zero
.L5ef7d838:
    ld	$a7,296($sp)
    nor	$a0,$a5,$zero
    move	$a4,$zero
    beqz	$a7,.L5ef7d934
    ld	$t0,280($sp)
    beqz	$t0,.L5ef7d978
    lw	$a2,-4($s1)
    li	$at,6
    beq	$at,$s0,.L5ef7d9b8
    or	$a6,$a2,$a5
.L5ef7d860:
    move	$a0,$a6
.L5ef7d864:
    move	$a6,$a0
.L5ef7d868:
    b	.L5ef7d7b4
    move	$a5,$a6
.L5ef7d870:
    ld	$v1,296($sp)
    nor	$a0,$a5,$zero
    beqz	$v1,.L5ef7d958
    ld	$at,248($sp)
    ld	$a7,280($sp)
    beqz	$a7,.L5ef7d980
    lw	$a2,0($s2)
    li	$t0,6
    beq	$t0,$s0,.L5ef7d9cc
    or	$a6,$a2,$a5
.L5ef7d898:
    move	$a0,$a6
.L5ef7d89c:
    move	$a6,$a0
.L5ef7d8a0:
    b	.L5ef7d724
    move	$a5,$a6
.L5ef7d8a8:
    ld	$at,288($sp)
    li	$a7,8
    beqz	$at,.L5ef7d988
    lw	$a2,-4($s1)
    li	$v1,10
    beq	$v1,$s0,.L5ef7d9b0
    nor	$a0,$a2,$zero
    or	$a6,$a0,$a5
.L5ef7d8c8:
    move	$a0,$a6
.L5ef7d8cc:
    b	.L5ef7d7b0
    move	$a6,$a0
.L5ef7d8d4:
    ld	$a7,288($sp)
    beqz	$a7,.L5ef7d998
    lw	$a2,0($s2)
    li	$t0,10
    beq	$t0,$s0,.L5ef7d9c4
    nor	$a0,$a2,$zero
    or	$a6,$a0,$a5
.L5ef7d8f0:
    move	$a0,$a6
.L5ef7d8f4:
    b	.L5ef7d720
    move	$a6,$a0
.L5ef7d8fc:
    li	$at,12
    beq	$at,$s0,.L5ef7d90c
    lw	$a2,-4($s1)
    or	$a0,$a6,$a2
.L5ef7d90c:
    b	.L5ef7d7ac
    move	$a5,$a0
.L5ef7d914:
    beq	$v1,$s0,.L5ef7d920
    lw	$a2,0($s2)
    or	$a0,$a6,$a2
.L5ef7d920:
    b	.L5ef7d71c
    move	$a5,$a0
.L5ef7d928:
    and	$a6,$a2,$a5
    b	.L5ef7d7a8
    nor	$a6,$a6,$zero
.L5ef7d934:
    ld	$a7,248($sp)
    beqz	$a7,.L5ef7d9e0
    li	$t0,2
    beq	$t0,$s0,.L5ef7da0c
    lw	$a2,-4($s1)
    move	$a4,$a5
.L5ef7d94c:
    move	$a0,$a4
.L5ef7d950:
    b	.L5ef7d868
    move	$a6,$a0
.L5ef7d958:
    beqz	$at,.L5ef7d9f4
    li	$v1,2
    beq	$v1,$s0,.L5ef7da18
    lw	$a2,0($s2)
    move	$a4,$a5
.L5ef7d96c:
    move	$a0,$a4
.L5ef7d970:
    b	.L5ef7d8a0
    move	$a6,$a0
.L5ef7d978:
    b	.L5ef7d864
    and	$a0,$a0,$a2
.L5ef7d980:
    b	.L5ef7d89c
    and	$a0,$a0,$a2
.L5ef7d988:
    beq	$a7,$s0,.L5ef7da24
    xor	$a4,$a4,$a2
.L5ef7d990:
    b	.L5ef7d8cc
    move	$a0,$a4
.L5ef7d998:
    li	$a7,8
    beq	$a7,$s0,.L5ef7da2c
    nor	$a4,$a5,$zero
    xor	$a4,$a4,$a2
.L5ef7d9a8:
    b	.L5ef7d8f4
    move	$a0,$a4
.L5ef7d9b0:
    b	.L5ef7d8c8
    move	$a6,$a0
.L5ef7d9b8:
    xor	$a6,$a2,$a5
    b	.L5ef7d860
    nop
.L5ef7d9c4:
    b	.L5ef7d8f0
    move	$a6,$a0
.L5ef7d9cc:
    xor	$a6,$a2,$a5
    b	.L5ef7d898
    nop
.L5ef7d9d8:
    b	.L5ef7d03c
    ld	$a7,48($sp)
.L5ef7d9e0:
    li	$a7,1
    beq	$a7,$s0,.L5ef7da78
    lw	$a2,-4($s1)
.L5ef7d9ec:
    b	.L5ef7d950
    move	$a0,$a4
.L5ef7d9f4:
    li	$t0,1
    beq	$t0,$s0,.L5ef7da80
    lw	$a2,0($s2)
    move	$a4,$zero
.L5ef7da04:
    b	.L5ef7d970
    move	$a0,$a4
.L5ef7da0c:
    nor	$a4,$a2,$zero
    b	.L5ef7d94c
    and	$a4,$a4,$a5
.L5ef7da18:
    nor	$a4,$a2,$zero
    b	.L5ef7d96c
    and	$a4,$a4,$a5
.L5ef7da24:
    b	.L5ef7d990
    nor	$a4,$a2,$a5
.L5ef7da2c:
    nor	$a4,$a2,$a5
    b	.L5ef7d9a8
    nop
.L5ef7da38:
    b	.L5ef7d640
    and	$a4,$a2,$a6
.L5ef7da40:
    b	.L5ef7d658
    and	$a4,$a2,$a6
.L5ef7da48:
    ld	$s7,368($sp)
    ld	$s5,376($sp)
    ld	$s1,384($sp)
    ld	$s4,392($sp)
    ld	$ra,400($sp)
    ld	$s8,408($sp)
    ld	$s3,416($sp)
    ld	$s2,424($sp)
.L5ef7da68:
    ld	$s0,136($sp)
    ld	$s6,144($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L5ef7da78:
    b	.L5ef7d9ec
    and	$a4,$a2,$a5
.L5ef7da80:
    b	.L5ef7da04
    and	$a4,$a2,$a5
.L5ef7da88:
    move	$a4,$a2
    bnezl	$v0,.L5ef7ced0
    lw	$a2,4($v0)
    b	.L5ef7ced0
    li	$a2,1
.L5ef7da9c:
    ld	$s0,136($sp)
.L5ef7daa0:
    ld	$s6,144($sp)
    jr	$ra
    addiu	$sp,$sp,496
.end nfbDoBitBltSP

.globl nfbDoBitBltPS
.ent nfbDoBitBltPS
nfbDoBitBltPS:
    addiu	$sp,$sp,-160
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s4,16($sp)
    move	$s4,$a4
    sd	$s3,8($sp)
    move	$s3,$a5
    lw	$at,nfbWindowPrivateIndex
    sd	$s8,40($sp)
    lw	$s8,132($a0)
    sd	$s5,32($sp)
    sll	$at,$at,0x2
    addu	$s8,$s8,$at
    lw	$s8,0($s8)
    move	$s5,$a3
    lw	$t0,8($a2)
    lw	$s8,0($s8)
    beqz	$t0,.L5ef7ce4c
    lw	$s8,8($s8)
    addiu	$a3,$t0,8
    beqzl	$t0,.L5ef7ce5c
    sd	$s7,72($sp)
    sd	$s7,72($sp)
.L5ef7cd88:
    sd	$s6,64($sp)
    sd	$s2,56($sp)
    lw	$a0,4($t0)
.L5ef7cd94:
    sd	$s1,80($sp)
    lw	$s7,28($a1)
    lbu	$s2,3($a1)
    lw	$s6,32($a1)
    blez	$a0,.L5ef7ce24
    sra	$s2,$s2,0x3
    sd	$a6,0($sp)
    sd	$ra,88($sp)
    move	$s1,$a3
    sll	$at,$a0,0x3
    addu	$at,$a3,$at
    sd	$at,48($sp)
    lh	$a3,2($s1)
.L5ef7cdc8:
    addu	$a3,$a3,$s4
    mult	$a3,$s7
    lh	$a2,0($s1)
    mflo	$a1
    nop
    addu	$a2,$a2,$s5
    mult	$a2,$s2
    ld	$a4,0($sp)
    move	$a5,$s0
    move	$t9,$s8
    move	$a0,$s1
    move	$a3,$s3
    addu	$a1,$a1,$s6
    mflo	$a2
    addu	$a1,$a1,$a2
    jalr	$s8
    move	$a2,$s7
    addiu	$s1,$s1,8
    ld	$a7,48($sp)
    bnel	$s1,$a7,.L5ef7cdc8
    lh	$a3,2($s1)
    ld	$s1,80($sp)
    ld	$ra,88($sp)
.L5ef7ce24:
    ld	$s0,24($sp)
    ld	$s2,56($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,32($sp)
    ld	$s6,64($sp)
    ld	$s7,72($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef7ce4c:
    move	$a3,$a2
    bnezl	$t0,.L5ef7cd88
    sd	$s7,72($sp)
    sd	$s7,72($sp)
.L5ef7ce5c:
    sd	$s6,64($sp)
    sd	$s2,56($sp)
    b	.L5ef7cd94
    li	$a0,1
.end nfbDoBitBltPS

.globl nfbCopyArea
.ent nfbCopyArea
nfbCopyArea:
    addiu	$sp,$sp,-368
    sd	$s2,224($sp)
    move	$s2,$a0
    sd	$s8,192($sp)
    move	$s8,$a2
    sd	$s7,176($sp)
    move	$s7,$a3
    sd	$s6,216($sp)
    move	$s6,$a4
    sd	$a5,96($sp)
    sd	$s4,200($sp)
    move	$s4,$a7
    sd	$zero,80($sp)
    sd	$zero,136($sp)
    sd	$a6,88($sp)
    sd	$s0,184($sp)
    move	$s0,$a1
    sd	$gp,208($sp)
    lui	$at,0x14
    addiu	$at,$at,2840
    beqz	$a5,.L5ef7e11c
    addu	$gp,$t9,$at
    ld	$v1,88($sp)
    beqz	$v1,.L5ef7e120
    move	$v0,$zero
    lbu	$v0,0($s2)
    beqz	$v0,.L5ef7dffc
    li	$a1,1
.L5ef7db1c:
    beql	$a1,$v0,.L5ef7e014
    lbu	$v1,0($s0)
    sd	$s3,264($sp)
.L5ef7db28:
    lw	$at,nfbGCPrivateIndex
    lw	$s3,76($s8)
    move	$a0,$zero
    sll	$at,$at,0x2
    addu	$s3,$s3,$at
    lw	$s3,0($s3)
    sd	$zero,120($sp)
    sd	$s1,272($sp)
    sd	$s3,128($sp)
    lbu	$s1,48($s3)
    beq	$a1,$v0,.L5ef7e094
    lw	$s3,52($s3)
    lui	$v1,0x3f
    lw	$v0,16($s8)
    ori	$v1,$v1,0xffff
    and	$v1,$v0,$v1
    srl	$v1,$v1,0x15
    beql	$v1,$a1,.L5ef7e154
    lw	$at,24($s2)
    sd	$s5,256($sp)
    addiu	$t0,$s2,44
    sd	$t0,80($sp)
.L5ef7db80:
    lw	$s5,372($sp)
    dsll32	$v1,$s5,0x10
    dsra32	$v1,$v1,0x10
    sd	$v1,144($sp)
    lh	$at,10($s2)
    dsll32	$a2,$s7,0x10
    dsra32	$a2,$a2,0x10
    sd	$a2,168($sp)
    ld	$a2,88($sp)
    dsll32	$a5,$s6,0x10
    addu	$s6,$at,$s6
    dsll32	$t1,$s6,0x10
    addu	$a2,$s6,$a2
    dsll32	$t0,$s4,0x10
    dsra32	$t0,$t0,0x10
    sd	$t0,152($sp)
    lh	$t0,8($s2)
    dsra32	$t1,$t1,0x10
    sh	$t1,18($sp)
    addu	$s7,$t0,$s7
    dsll32	$t0,$a2,0x10
    dsra32	$a5,$a5,0x10
    sd	$a5,160($sp)
    dsll32	$a5,$s7,0x10
    dsra32	$a5,$a5,0x10
    sh	$a5,16($sp)
    ld	$a5,96($sp)
    dsra32	$t0,$t0,0x10
    sh	$t0,22($sp)
    addu	$a5,$s7,$a5
    dsll32	$t1,$a5,0x10
    dsra32	$t1,$t1,0x10
    beqz	$a0,.L5ef7e29c
    sh	$t1,20($sp)
    li	$v0,1
    lh	$a6,8($s2)
    dsll32	$t1,$s7,0x10
    dsra32	$t1,$t1,0x10
    slt	$t1,$t1,$a6
    beqz	$t1,.L5ef7dc30
    dsll32	$at,$s6,0x10
    sh	$a6,16($sp)
    move	$v0,$zero
    dsll32	$at,$s6,0x10
.L5ef7dc30:
    lh	$a6,10($s2)
    dsra32	$at,$at,0x10
    slt	$at,$at,$a6
    beqz	$at,.L5ef7dc50
    dsll32	$v1,$a5,0x10
    sh	$a6,18($sp)
    move	$v0,$zero
    dsll32	$v1,$a5,0x10
.L5ef7dc50:
    lhu	$t0,12($s2)
    lh	$a6,8($s2)
    dsra32	$v1,$v1,0x10
    addu	$a6,$a6,$t0
    slt	$v1,$a6,$v1
    beqz	$v1,.L5ef7dc80
    dsll32	$at,$a2,0x10
    move	$v0,$zero
    dsll32	$t1,$a6,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,20($sp)
    dsll32	$at,$a2,0x10
.L5ef7dc80:
    lhu	$t0,14($s2)
    lh	$a5,10($s2)
    dsra32	$at,$at,0x10
    addu	$a5,$a5,$t0
    slt	$at,$a5,$at
    beqzl	$at,.L5ef7dcb0
    lh	$t0,10($s0)
    move	$v0,$zero
    dsll32	$t1,$a5,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,22($sp)
.L5ef7dcac:
    lh	$t0,10($s0)
.L5ef7dcb0:
    lbu	$v1,0($s0)
    lh	$at,8($s0)
    addu	$s5,$t0,$s5
    beqz	$v1,.L5ef7e0a0
    addu	$s4,$at,$s4
    lh	$t2,16($sp)
.L5ef7dcc8:
    lh	$t3,22($sp)
    beqz	$a0,.L5ef7e234
    subu	$at,$s6,$s5
    lh	$t8,18($sp)
    ld	$a3,128($sp)
    subu	$t3,$t3,$at
    subu	$t8,$t8,$at
    dsll32	$t8,$t8,0x10
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    dsra32	$t8,$t8,0x10
    sh	$t8,18($sp)
    sh	$t3,22($sp)
    subu	$t0,$s7,$s4
    subu	$t2,$t2,$t0
    dsll32	$t2,$t2,0x10
    lh	$a6,20($sp)
    dsra32	$t2,$t2,0x10
    sh	$t2,16($sp)
    subu	$a6,$a6,$t0
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    sh	$a6,20($sp)
    lw	$a3,8($a3)
    lw	$a2,8($a3)
    beqz	$a2,.L5ef7e14c
    nop
    lw	$a5,4($a2)
.L5ef7dd38:
    bnel	$a5,$a1,.L5ef7dde8
    sd	$v0,120($sp)
    beqz	$a2,.L5ef7e260
    addiu	$a1,$a2,8
.L5ef7dd48:
    lh	$a2,0($a1)
    slt	$at,$t2,$a2
    beqzl	$at,.L5ef7dd64
    lh	$a2,4($a1)
    move	$t2,$a2
    sh	$a2,16($sp)
    lh	$a2,4($a1)
.L5ef7dd64:
    slt	$v1,$a2,$a6
    beqzl	$v1,.L5ef7dd7c
    lh	$a2,2($a1)
    move	$a6,$a2
    sh	$a2,20($sp)
    lh	$a2,2($a1)
.L5ef7dd7c:
    slt	$t0,$t8,$a2
    beqzl	$t0,.L5ef7dd94
    lh	$a2,6($a1)
    move	$t8,$a2
    sh	$a2,18($sp)
    lh	$a2,6($a1)
.L5ef7dd94:
    slt	$t1,$a2,$t3
    beqz	$t1,.L5ef7ddac
    slt	$at,$t2,$a6
    move	$t3,$a2
    sh	$a2,22($sp)
    slt	$at,$t2,$a6
.L5ef7ddac:
    beqzl	$at,.L5ef7dfb8
    sd	$v0,120($sp)
    sd	$a0,104($sp)
    sd	$v0,120($sp)
    slt	$v1,$t8,$t3
    beqz	$v1,.L5ef7dfb4
    sd	$ra,248($sp)
    lw	$t9,0($s8)
    lw	$t9,340($t9)
    li	$a2,1
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,24
    b	.L5ef7de0c
    ld	$at,104($sp)
.L5ef7dde8:
    lw	$t9,0($s8)
    sd	$zero,104($sp)
    li	$a2,1
    lw	$t9,340($t9)
    addiu	$a1,$sp,16
    sd	$ra,248($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    ld	$at,104($sp)
.L5ef7de0c:
    beqz	$at,.L5ef7e2e8
    lw	$a1,32($sp)
.L5ef7de14:
    beqz	$a1,.L5ef7e144
    nop
    lw	$t2,4($a1)
.L5ef7de20:
    beqz	$t2,.L5ef7df20
    ld	$t0,128($sp)
    lbu	$v1,0($s2)
    beqzl	$v1,.L5ef7e168
    lbu	$v1,0($s0)
    sd	$s5,112($sp)
    lw	$at,nfbWindowPrivateIndex
    lw	$s5,132($s0)
    sll	$at,$at,0x2
    addu	$s5,$s5,$at
    lw	$s5,0($s5)
    lw	$s5,0($s5)
    beqz	$a1,.L5ef7dfe0
    lw	$s5,8($s5)
    beqz	$a1,.L5ef7dfe8
    addiu	$t3,$a1,8
.L5ef7de60:
    sd	$s4,56($sp)
    sd	$s6,64($sp)
    sd	$s7,72($sp)
    lw	$t2,4($a1)
.L5ef7de70:
    sd	$s8,280($sp)
    lw	$s7,28($s2)
    lbu	$s4,3($s2)
    lw	$s6,32($s2)
    blez	$t2,.L5ef7df1c
    sra	$s4,$s4,0x3
    sd	$s2,288($sp)
    move	$s2,$t3
    sll	$s8,$t2,0x3
    ld	$t1,112($sp)
    ld	$v1,56($sp)
    ld	$at,72($sp)
    ld	$t0,64($sp)
    addu	$s8,$t3,$s8
    subu	$at,$at,$v1
    subu	$t0,$t0,$t1
    sd	$t0,240($sp)
    sd	$at,232($sp)
    ld	$a5,240($sp)
.L5ef7debc:
    lh	$a4,2($s2)
    addu	$a4,$a4,$a5
    mult	$a4,$s7
    ld	$a3,232($sp)
    lh	$a2,0($s2)
    mflo	$a1
    nop
    addu	$a2,$a2,$a3
    mult	$a2,$s4
    move	$t9,$s5
    move	$a0,$s2
    move	$a3,$s1
    move	$a5,$s0
    move	$a4,$s3
    addu	$a1,$a1,$s6
    mflo	$a2
    addu	$a1,$a1,$a2
    jalr	$s5
    move	$a2,$s7
    addiu	$s2,$s2,8
    bne	$s2,$s8,.L5ef7debc
    ld	$a5,240($sp)
    ld	$s8,280($sp)
    ld	$s2,288($sp)
.L5ef7df1c:
    ld	$t0,128($sp)
.L5ef7df20:
    move	$s4,$zero
    ld	$s6,80($sp)
    lw	$t0,0($t0)
    ld	$s5,256($sp)
    ld	$s3,264($sp)
    andi	$t0,$t0,0xff
    srl	$t0,$t0,0x7
    beqz	$t0,.L5ef7df50
    ld	$s1,272($sp)
    ld	$t1,120($sp)
    beqz	$t1,.L5ef7e30c
    move	$a0,$s2
.L5ef7df50:
    lw	$t9,0($s8)
    lw	$t9,352($t9)
    jalr	$t9
    addiu	$a0,$sp,24
    addiu	$at,$sp,40
    beq	$s6,$at,.L5ef7e21c
    ld	$ra,248($sp)
    ld	$v1,136($sp)
    beqzl	$v1,.L5ef7df90
    ld	$gp,208($sp)
    lw	$t9,0($s8)
    lw	$t9,348($t9)
    jalr	$t9
    move	$a0,$s6
    ld	$ra,248($sp)
.L5ef7df8c:
    ld	$gp,208($sp)
.L5ef7df90:
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    move	$v0,$s4
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7dfb4:
    sd	$v0,120($sp)
.L5ef7dfb8:
    lw	$t9,0($s8)
    move	$a2,$zero
    move	$a1,$zero
    lw	$t9,340($t9)
    sd	$a0,104($sp)
    sd	$ra,248($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    b	.L5ef7de0c
    ld	$at,104($sp)
.L5ef7dfe0:
    bnez	$a1,.L5ef7de60
    addiu	$t3,$sp,24
.L5ef7dfe8:
    sd	$s4,56($sp)
    sd	$s6,64($sp)
    sd	$s7,72($sp)
    b	.L5ef7de70
    li	$t2,1
.L5ef7dffc:
    lbu	$at,0($s0)
    beqz	$at,.L5ef7e34c
    li	$a1,1
    bnel	$a1,$v0,.L5ef7db28
    sd	$s3,264($sp)
    lbu	$v1,0($s0)
.L5ef7e014:
    bnel	$v1,$a1,.L5ef7db28
    sd	$s3,264($sp)
    lbu	$v0,4($s8)
    lw	$t1,372($sp)
    slti	$t0,$v0,9
    bnez	$t0,.L5ef7e53c
    sd	$t1,112($sp)
    slti	$at,$v0,17
    beqz	$at,.L5ef7e404
    sd	$ra,248($sp)
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    # lw $t9, -31512($gp)
    ld	$v0,112($sp)
    move	$a7,$s4
    jal	cfb16CopyArea
    sw	$v0,4($sp)
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$ra,248($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e094:
    sd	$s5,256($sp)
    b	.L5ef7db80
    li	$a0,1
.L5ef7e0a0:
    lw	$v1,124($s0)
    andi	$v1,$v1,0xfff
    srl	$v1,$v1,0xb
    bnez	$v1,.L5ef7dcc8
    lh	$t2,16($sp)
    ld	$s1,272($sp)
    ld	$s3,264($sp)
    beqz	$a0,.L5ef7e5b4
    ld	$s5,256($sp)
.L5ef7e0c4:
    ld	$t0,80($sp)
    addiu	$t1,$sp,40
    beq	$t0,$t1,.L5ef7e598
    ld	$at,136($sp)
    beqz	$at,.L5ef7e0f8
    move	$v0,$zero
    lw	$t9,0($s8)
    lw	$t9,348($t9)
    sd	$ra,248($sp)
    jalr	$t9
    ld	$a0,80($sp)
    ld	$ra,248($sp)
.L5ef7e0f4:
    move	$v0,$zero
.L5ef7e0f8:
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e11c:
    move	$v0,$zero
.L5ef7e120:
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e144:
    b	.L5ef7de20
    li	$t2,1
.L5ef7e14c:
    b	.L5ef7dd38
    li	$a5,1
.L5ef7e154:
    bnez	$at,.L5ef7e1bc
    nop
    sd	$s5,256($sp)
    b	.L5ef7db80
    li	$a0,1
.L5ef7e168:
    bnez	$v1,.L5ef7e1ec
    move	$a0,$s0
    la	$at,dbcWindowPrivateIndex
    lw	$at,0($at)
    lw	$t0,132($s2)
    lw	$t2,132($s0)
    sll	$at,$at,0x2
    addu	$t0,$t0,$at
    lb	$t0,0($t0)
    addu	$t2,$t2,$at
    lb	$t1,1($t2)
    beq	$t0,$t1,.L5ef7e45c
    la	$t0,local_0x5f0b0000
    sltiu	$t1,$s1,16
    sll	$a1,$s1,0x2
    addiu	$t0,$t0,4200
    beqz	$t1,.L5ef7df1c
    addu	$a1,$a1,$t0
    lw	$t1,0($a1)
    jr	$t1
    move	$a5,$s3
.L5ef7e1bc:
    bne	$s2,$s0,.L5ef7e268
    lui	$at,0xf
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    srl	$at,$at,0x12
    bnez	$at,.L5ef7e26c
    nop	# was lw $t9, -29764($gp)
    ld	$v1,128($sp)
    lw	$v1,8($v1)
    sd	$s5,256($sp)
    b	.L5ef7db80
    sd	$v1,80($sp)
.L5ef7e1ec:
    move	$a1,$s2
    lw	$a6,20($s8)
    lbu	$a5,5($s8)
    subu	$a4,$s6,$s5
    subu	$a3,$s7,$s4
    # lw $t9, -31972($gp)
    addiu	$a2,$sp,24
    ld	$s3,264($sp)
    bal	nfbDoBitBltSP
    ld	$s1,272($sp)
    b	.L5ef7df20
    ld	$t0,128($sp)
.L5ef7e21c:
    lw	$t9,0($s8)
    lw	$t9,352($t9)
    jal	nfbDoBitBltSP
    move	$a0,$s6
    b	.L5ef7df8c
    ld	$ra,248($sp)
.L5ef7e234:
    sd	$v0,120($sp)
    lw	$t9,0($s8)
    subu	$a2,$s5,$s6
    subu	$a1,$s4,$s7
    lw	$t9,376($t9)
    sd	$a0,104($sp)
    sd	$ra,248($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    b	.L5ef7de0c
    ld	$at,104($sp)
.L5ef7e260:
    b	.L5ef7dd48
    move	$a1,$a3
.L5ef7e268:
    # lw $t9, -29764($gp)
.L5ef7e26c:
    sd	$a0,104($sp)
    sd	$ra,248($sp)
    jal	NotClippedByChildren
    move	$a0,$s2
    sd	$s5,256($sp)
    li	$a1,1
    sd	$v0,80($sp)
    ld	$a0,104($sp)
    li	$ra,1
    sd	$ra,136($sp)
    b	.L5ef7db80
    ld	$ra,248($sp)
.L5ef7e29c:
    lw	$t9,0($s8)
    li	$a2,1
    addiu	$a1,$sp,16
    lw	$t9,340($t9)
    sd	$a0,104($sp)
    sd	$ra,248($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    lw	$t9,0($s8)
    lw	$t9,356($t9)
    ld	$a2,80($sp)
    addiu	$a1,$sp,24
    jalr	$t9
    addiu	$a0,$sp,24
    li	$a1,1
    ld	$ra,248($sp)
    ld	$v0,120($sp)
    b	.L5ef7dcac
    ld	$a0,104($sp)
.L5ef7e2e8:
    lw	$t9,0($s8)
    addiu	$a1,$sp,24
    lw	$t9,356($t9)
    ld	$a2,128($sp)
    addiu	$a0,$sp,24
    jalr	$t9
    lw	$a2,8($a2)
    b	.L5ef7de14
    lw	$a1,32($sp)
.L5ef7e30c:
    move	$a1,$s0
    move	$a2,$s8
    ld	$a3,168($sp)
    ld	$a4,160($sp)
    sw	$zero,12($sp)
    ld	$a5,96($sp)
    ld	$a7,144($sp)
    # lw $t9, -30476($gp)
    ld	$a6,88($sp)
    sw	$a7,4($sp)
    ld	$a7,152($sp)
    andi	$a6,$a6,0xffff
    jal	miHandleExposures
    andi	$a5,$a5,0xffff
    b	.L5ef7df50
    move	$s4,$v0
.L5ef7e34c:
    lw	$t1,nfbWindowPrivateIndex
    lw	$t0,132($s2)
    lw	$a0,132($s0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    addu	$a0,$a0,$t1
    lw	$a0,0($a0)
    lw	$t0,24($t0)
    lw	$t1,24($a0)
    bnel	$t0,$t1,.L5ef7e3ac
    move	$a0,$s2
    lw	$at,16($s8)
    lui	$v1,0x3f
    ori	$v1,$v1,0xffff
    and	$at,$at,$v1
    srl	$at,$at,0x15
    li	$a1,1
    bne	$at,$a1,.L5ef7db1c
    nop
    lw	$t0,32($a0)
    andi	$t0,$t0,0x8
    beqz	$t0,.L5ef7db1c
    move	$a0,$s2
.L5ef7e3ac:
    move	$a1,$s0
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    move	$a7,$s4
    # lw $t9, -30520($gp)
    lw	$t1,372($sp)
    sd	$ra,248($sp)
    jal	miCopyArea
    sw	$t1,4($sp)
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$ra,248($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e404:
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    # lw $t9, -31756($gp)
    ld	$t2,112($sp)
    move	$a7,$s4
    jal	cfb32CopyArea
    sw	$t2,4($sp)
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$ra,248($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e45c:
    move	$a0,$s0
    move	$a5,$s3
    move	$a4,$s1
    # lw $t9, -31980($gp)
    subu	$a3,$s6,$s5
    subu	$a2,$s7,$s4
    bal	nfbDoBitBltSS
    addiu	$a1,$sp,24
    b	.L5ef7df20
    ld	$t0,128($sp)
    move	$a0,$s0
    move	$a5,$s3
    move	$a4,$s1
    # lw $t9, -31980($gp)
    subu	$a3,$s6,$s5
    subu	$a2,$s7,$s4
    bal	nfbDoBitBltSS
    addiu	$a1,$sp,24
    b	.L5ef7df20
    ld	$t0,128($sp)
    move	$a4,$s1
    subu	$a3,$s6,$s5
    subu	$a2,$s7,$s4
    addiu	$a1,$sp,24
    # lw $t9, -31980($gp)
    lb	$t3,1($t2)
    move	$a0,$s0
    bal	nfbDoBitBltSS
    sb	$t3,0($t2)
    b	.L5ef7df20
    ld	$t0,128($sp)
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s8
    ld	$a3,168($sp)
    ld	$a4,160($sp)
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    ld	$a7,152($sp)
    ld	$s5,256($sp)
    ld	$s1,144($sp)
    # lw $t9, -30520($gp)
    ld	$s3,264($sp)
    sw	$s1,4($sp)
    jal	miCopyArea
    ld	$s1,272($sp)
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$ra,248($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e53c:
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s8
    move	$a3,$s7
    move	$a4,$s6
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    move	$a7,$s4
    # lw $t9, -31120($gp)
    ld	$t8,112($sp)
    sd	$ra,248($sp)
    jal	cfbCopyArea
    sw	$t8,4($sp)
    ld	$gp,208($sp)
    ld	$s0,184($sp)
    ld	$s2,224($sp)
    ld	$s4,200($sp)
    ld	$s6,216($sp)
    ld	$ra,248($sp)
    ld	$s7,176($sp)
    ld	$s8,192($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L5ef7e598:
    lw	$t9,0($s8)
    lw	$t9,352($t9)
    sd	$ra,248($sp)
    jalr	$t9
    ld	$a0,80($sp)
    b	.L5ef7e0f4
    ld	$ra,248($sp)
.L5ef7e5b4:
    lw	$t9,0($s8)
    lw	$t9,352($t9)
    sd	$ra,248($sp)
    jalr	$t9
    addiu	$a0,$sp,24
    b	.L5ef7e0c4
    ld	$ra,248($sp)
.end nfbCopyArea

.globl nfbCopyPlane
.ent nfbCopyPlane
nfbCopyPlane:
    li	$t2,1
    addiu	$sp,$sp,-272
    sd	$s0,96($sp)
    move	$s0,$a1
    sd	$gp,104($sp)
    lbu	$t1,0($a0)
    lui	$at,0x14
    addiu	$at,$at,8468
    bne	$t2,$t1,.L5ef7c50c
    addu	$gp,$t9,$at
    lbu	$v0,0($s0)
    beql	$v0,$t2,.L5ef7c7c8
    lbu	$a1,4($a2)
    bnel	$t2,$t1,.L5ef7c510
    lw	$t2,276($sp)
    lbu	$v1,0($s0)
    bnez	$v1,.L5ef7c50c
    dsll32	$t1,$a4,0x10
    lbu	$t0,2($a0)
    dsll32	$v0,$a3,0x10
    dsll32	$a1,$a4,0x10
    beq	$t0,$t2,.L5ef7c540
    move	$t9,$zero
.L5ef7c50c:
    lw	$t2,276($sp)
.L5ef7c510:
    move	$a1,$s0
    sw	$t2,4($sp)
    # lw $t9, -30512($gp)
    lw	$t1,284($sp)
    sd	$ra,192($sp)
    jal	miCopyPlane
    sw	$t1,12($sp)
    ld	$ra,192($sp)
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7c540:
    lw	$at,124($s0)
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef7c9fc
    lw	$t8,nfbWindowPrivateIndex
    sd	$zero,72($sp)
    sd	$s3,152($sp)
    move	$s3,$a4
    sd	$s1,168($sp)
    move	$s1,$a3
    sd	$s4,136($sp)
    sd	$s8,144($sp)
    sd	$s5,176($sp)
    dsra32	$t1,$t1,0x10
    dsra32	$a1,$a1,0x10
    dsra32	$v0,$v0,0x10
    addu	$t3,$v0,$a5
    sd	$a1,88($sp)
    addu	$a1,$a1,$a6
    dsll32	$a1,$a1,0x10
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    dsra32	$a1,$a1,0x10
    sd	$s7,160($sp)
    lw	$s7,132($s0)
    sd	$s6,184($sp)
    sll	$t8,$t8,0x2
    addu	$s7,$s7,$t8
    lw	$s7,0($s7)
    lw	$t8,nfbGCPrivateIndex
    lw	$s6,76($a2)
    lw	$s7,0($s7)
    sll	$t8,$t8,0x2
    addu	$s6,$s6,$t8
    lw	$s6,0($s6)
    dsll32	$t8,$a3,0x10
    dsra32	$t8,$t8,0x10
    sd	$s6,80($sp)
    lw	$s5,40($s6)
    lw	$s8,44($s6)
    lw	$s4,52($s6)
    lbu	$s6,48($s6)
    sh	$a1,22($sp)
    sh	$t3,20($sp)
    sh	$t1,18($sp)
    bltz	$v0,.L5ef7c9a0
    sh	$t8,16($sp)
    ld	$t0,88($sp)
    bltzl	$t0,.L5ef7c9c0
    move	$s3,$zero
.L5ef7c608:
    lhu	$at,12($a0)
    addu	$v0,$a3,$a5
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sd	$at,64($sp)
    slt	$at,$at,$v0
    beqz	$at,.L5ef7c638
    ld	$t0,72($sp)
    ld	$t3,64($sp)
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    sh	$t3,20($sp)
.L5ef7c638:
    lhu	$a3,14($a0)
    addu	$at,$a4,$a6
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    slt	$at,$a3,$at
    beqzl	$at,.L5ef7c664
    lh	$v0,8($s0)
    dsll32	$a1,$a3,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,22($sp)
    lh	$v0,8($s0)
.L5ef7c664:
    lw	$v1,276($sp)
    lh	$at,10($s0)
    addu	$v0,$v0,$a7
    addu	$v0,$v0,$t0
    dsll32	$t0,$v0,0x10
    subu	$v0,$v0,$t8
    dsra32	$t8,$t0,0x10
    sh	$t8,16($sp)
    addu	$at,$at,$v1
    addu	$at,$at,$t9
    subu	$at,$at,$t1
    addu	$t1,$at,$t1
    addu	$a1,$at,$a1
    dsll32	$a1,$a1,0x10
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,22($sp)
    addu	$t3,$v0,$t3
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    sh	$t3,20($sp)
    slt	$t0,$t8,$t3
    beqz	$t0,.L5ef7c80c
    sh	$t1,18($sp)
    slt	$v1,$t1,$a1
    beqz	$v1,.L5ef7c80c
    ld	$a4,80($sp)
    lw	$a4,8($a4)
    sd	$s2,200($sp)
    lw	$a3,8($a4)
    lw	$t0,32($a0)
    lw	$s2,28($a0)
    beqz	$a3,.L5ef7ca10
    sd	$t0,128($sp)
    lw	$a0,4($a3)
.L5ef7c6f4:
    bnel	$a0,$t2,.L5ef7c83c
    sd	$a4,56($sp)
    sh	$a1,30($sp)
    sh	$t3,28($sp)
    sh	$t1,26($sp)
    sh	$t8,24($sp)
    move	$a6,$t8
    lw	$a3,8($a4)
    move	$t2,$t1
    move	$a5,$t3
    beqz	$a3,.L5ef7ca44
    move	$a7,$a1
    addiu	$a0,$a3,8
.L5ef7c728:
    lh	$a3,0($a0)
    slt	$t0,$t8,$a3
    beqzl	$t0,.L5ef7c744
    lh	$a3,4($a0)
    move	$a6,$a3
    sh	$a3,24($sp)
    lh	$a3,4($a0)
.L5ef7c744:
    slt	$at,$a3,$t3
    beqzl	$at,.L5ef7c75c
    lh	$a3,2($a0)
    move	$a5,$a3
    sh	$a3,28($sp)
    lh	$a3,2($a0)
.L5ef7c75c:
    slt	$v0,$t1,$a3
    beqzl	$v0,.L5ef7c774
    lh	$a3,6($a0)
    move	$t2,$a3
    sh	$a3,26($sp)
    lh	$a3,6($a0)
.L5ef7c774:
    slt	$v1,$a3,$a1
    beqz	$v1,.L5ef7c78c
    slt	$t0,$a6,$a5
    move	$a7,$a3
    sh	$a3,30($sp)
    slt	$t0,$a6,$a5
.L5ef7c78c:
    beqz	$t0,.L5ef7c9d4
    move	$t9,$a2
    sd	$a2,48($sp)
    slt	$at,$t2,$a7
    beqz	$at,.L5ef7c9d0
    sd	$ra,192($sp)
    ld	$t9,48($sp)
    lw	$t9,0($t9)
    lw	$t9,340($t9)
    li	$a2,1
    addiu	$a1,$sp,24
    jalr	$t9
    addiu	$a0,$sp,32
    b	.L5ef7c880
    lw	$a1,40($sp)
.L5ef7c7c8:
    lw	$t2,276($sp)
    slti	$at,$a1,9
    bnez	$at,.L5ef7ca18
    lw	$t1,284($sp)
    slti	$v0,$a1,17
    beqz	$v0,.L5ef7c968
    sd	$ra,192($sp)
    # lw $t9, -31508($gp)
    move	$a1,$s0
    sw	$t1,12($sp)
    jal	cfb16CopyPlane
    sw	$t2,4($sp)
    ld	$ra,192($sp)
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7c80c:
    move	$v0,$zero
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    ld	$s1,168($sp)
    ld	$s3,152($sp)
    ld	$s4,136($sp)
    ld	$s5,176($sp)
    ld	$s6,184($sp)
    ld	$s7,160($sp)
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7c83c:
    move	$t9,$a2
    lw	$t9,0($a2)
    sd	$a2,48($sp)
    li	$a2,1
    lw	$t9,340($t9)
    addiu	$a1,$sp,16
    sd	$ra,192($sp)
    jalr	$t9
    addiu	$a0,$sp,32
    ld	$t9,48($sp)
    lw	$t9,0($t9)
    lw	$t9,356($t9)
    ld	$a2,56($sp)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$a1,40($sp)
.L5ef7c880:
    beqz	$a1,.L5ef7c990
    nop
    beqz	$a1,.L5ef7c998
    addiu	$a2,$a1,8
.L5ef7c890:
    lw	$a0,4($a1)
.L5ef7c894:
    blez	$a0,.L5ef7c91c
    sd	$s2,120($sp)
    move	$s2,$a2
    sll	$at,$a0,0x3
    addu	$at,$a2,$at
    sd	$at,112($sp)
    move	$a7,$s4
.L5ef7c8b0:
    move	$a6,$s6
    lh	$t1,2($s2)
    lh	$t2,18($sp)
    ld	$a3,120($sp)
    addu	$t1,$t1,$s3
    subu	$t1,$t1,$t2
    mult	$t1,$a3
    move	$a5,$s8
    move	$a4,$s5
    move	$a0,$s2
    lh	$t0,0($s2)
    lh	$t1,16($sp)
    sw	$s0,4($sp)
    addu	$t0,$t0,$s1
    lw	$t9,16($s7)
    subu	$t0,$t0,$t1
    andi	$a2,$t0,0x7
    ld	$t1,128($sp)
    sra	$t0,$t0,0x3
    mflo	$a1
    addu	$a1,$a1,$t1
    jalr	$t9
    addu	$a1,$a1,$t0
    addiu	$s2,$s2,8
    ld	$at,112($sp)
    bne	$s2,$at,.L5ef7c8b0
    move	$a7,$s4
.L5ef7c91c:
    addiu	$a0,$sp,32
    ld	$s2,200($sp)
    ld	$t9,48($sp)
    ld	$s6,184($sp)
    ld	$s5,176($sp)
    lw	$t9,0($t9)
    ld	$s1,168($sp)
    ld	$s7,160($sp)
    lw	$t9,352($t9)
    ld	$s3,152($sp)
    ld	$s8,144($sp)
    jalr	$t9
    ld	$s4,136($sp)
    move	$v0,$zero
    ld	$ra,192($sp)
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7c968:
    # lw $t9, -31752($gp)
    move	$a1,$s0
    sw	$t1,12($sp)
    jal	cfb32CopyPlane
    sw	$t2,4($sp)
    ld	$ra,192($sp)
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7c990:
    bnez	$a1,.L5ef7c890
    addiu	$a2,$sp,32
.L5ef7c998:
    b	.L5ef7c894
    li	$a0,1
.L5ef7c9a0:
    move	$t8,$zero
    move	$s1,$zero
    ld	$at,88($sp)
    sh	$zero,16($sp)
    negu	$v0,$a3
    bgez	$at,.L5ef7c608
    sd	$v0,72($sp)
    move	$s3,$zero
.L5ef7c9c0:
    negu	$t9,$a4
    move	$t1,$zero
    b	.L5ef7c608
    sh	$zero,18($sp)
.L5ef7c9d0:
    move	$t9,$a2
.L5ef7c9d4:
    lw	$t9,0($a2)
    sd	$a2,48($sp)
    move	$a2,$zero
    lw	$t9,340($t9)
    move	$a1,$zero
    sd	$ra,192($sp)
    jalr	$t9
    addiu	$a0,$sp,32
    b	.L5ef7c880
    lw	$a1,40($sp)
.L5ef7c9fc:
    move	$v0,$zero
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7ca10:
    b	.L5ef7c6f4
    li	$a0,1
.L5ef7ca18:
    move	$a1,$s0
    # lw $t9, -31112($gp)
    sw	$t1,12($sp)
    sd	$ra,192($sp)
    jal	cfbCopyPlane
    sw	$t2,4($sp)
    ld	$ra,192($sp)
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef7ca44:
    b	.L5ef7c728
    move	$a0,$a4
.end nfbCopyPlane

.globl nfbSolidPolyGlyphBlt
.ent nfbSolidPolyGlyphBlt
nfbSolidPolyGlyphBlt:
    move	$at,$s8
    addiu	$sp,$sp,-368
    addiu	$s8,$sp,368
    sd	$a5,-144($s8)
    sd	$s0,-176($s8)
    move	$s0,$a0
    sd	$s6,-184($s8)
    move	$s6,$a1
    sd	$a4,-136($s8)
    sd	$s4,-168($s8)
    sd	$s1,-224($s8)
    sd	$s5,-200($s8)
    lh	$s5,8($a0)
    sd	$s7,-160($s8)
    lh	$s7,10($a0)
    lw	$v0,44($a1)
    addu	$s5,$s5,$a2
    sd	$at,-216($s8)
    lw	$at,12($v0)
    addu	$s7,$s7,$a3
    lw	$a6,76($a1)
    andi	$at,$at,0x1fff
    sd	$s2,-208($s8)
    sd	$s3,-192($s8)
    lui	$v1,0x13
    addiu	$v1,$v1,28476
    sd	$gp,-232($s8)
    addu	$gp,$t9,$v1
    lw	$a7,nfbGCPrivateIndex
    lw	$s3,nfbWindowPrivateIndex
    lw	$s2,132($a0)
    sll	$a7,$a7,0x2
    sll	$s3,$s3,0x2
    addu	$s2,$s2,$s3
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lw	$s2,0($s2)
    srl	$at,$at,0xc
    lw	$a7,8($a6)
    lw	$s2,0($s2)
    lbu	$s1,72($a6)
    lw	$s4,64($a6)
    beqz	$at,.L5ef87c58
    lw	$s3,76($a6)
    ld	$a3,-136($s8)
    lh	$v1,36($v0)
    lh	$at,32($v0)
    multu	$v1,$a3
    addu	$at,$at,$s5
    sh	$at,-80($s8)
    lw	$t0,44($s6)
    lh	$t0,22($t0)
    addu	$t0,$t0,$s5
    mflo	$at
    addu	$t0,$t0,$at
    sh	$t0,-76($s8)
    lw	$a3,44($s6)
    lh	$a3,26($a3)
    subu	$a3,$s7,$a3
    sh	$a3,-78($s8)
    lw	$v1,44($s6)
    lh	$v1,28($v1)
    sd	$ra,-352($s8)
    sd	$a7,-152($s8)
    addu	$v1,$v1,$s7
    sh	$v1,-74($s8)
.L5ef87790:
    lw	$t9,0($s6)
    lw	$t9,380($t9)
    addiu	$a1,$s8,-80
    jalr	$t9
    lw	$a0,8($a6)
    andi	$a0,$s5,0x1f
    beqz	$v0,.L5ef877c4
    ld	$ra,-352($s8)
    li	$at,1
    beq	$v0,$at,.L5ef87844
    li	$v1,2
    beq	$v0,$v1,.L5ef877f8
    ld	$at,-136($s8)
.L5ef877c4:
    ld	$gp,-232($s8)
    ld	$s0,-176($s8)
    ld	$s1,-224($s8)
    ld	$s2,-208($s8)
    ld	$s3,-192($s8)
    ld	$s4,-168($s8)
    ld	$s5,-200($s8)
    ld	$s6,-184($s8)
    ld	$s7,-160($s8)
    ld	$a3,-216($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L5ef877f8:
    li	$v0,-2
    li	$v1,-16
    sll	$at,$at,0x5
    addiu	$at,$at,15
    and	$at,$at,$v1
    subu	$sp,$sp,$at
    move	$t0,$sp
    beqz	$sp,.L5ef87c24
    sd	$sp,-248($s8)
    ld	$v1,-136($s8)
    move	$a4,$s5
    ld	$a2,-248($s8)
    beqz	$v1,.L5ef879a4
    ld	$a5,-136($s8)
    ld	$t0,-144($s8)
    sll	$a5,$a5,0x2
    move	$a1,$t0
    b	.L5ef8791c
    addu	$a5,$a5,$t0
.L5ef87844:
    ld	$at,-136($s8)
    ld	$t0,-136($s8)
    beqz	$t0,.L5ef877c4
    sll	$at,$at,0x2
    ld	$v1,-144($s8)
    move	$s6,$v1
    addu	$at,$at,$v1
    sd	$at,-256($s8)
.L5ef87864:
    addiu	$a0,$s8,-120
    move	$a7,$s0
    move	$a6,$s3
    move	$a5,$s1
    lw	$t2,0($s6)
    move	$a2,$zero
    li	$t0,-2
    lh	$t3,8($t2)
    lh	$a3,2($t2)
    lh	$a4,0($t2)
    lh	$t1,6($t2)
    lw	$a1,12($t2)
    subu	$a3,$a3,$a4
    addu	$t8,$a4,$s5
    dsll32	$t8,$t8,0x10
    dsra32	$t8,$t8,0x10
    sh	$t8,-120($s8)
    addu	$t8,$a3,$t8
    sh	$t8,-116($s8)
    sd	$t2,-272($s8)
    lh	$t2,6($t2)
    move	$a4,$s4
    addu	$t1,$t1,$t3
    subu	$t2,$s7,$t2
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,-118($s8)
    addu	$t1,$t1,$t2
    sh	$t1,-114($s8)
    addiu	$a3,$a3,7
    lw	$t9,12($s2)
    sra	$a3,$a3,0x3
    addiu	$a3,$a3,1
    jalr	$t9
    and	$a3,$a3,$t0
    addiu	$s6,$s6,4
    ld	$v1,-272($s8)
    ld	$at,-256($s8)
    lh	$v1,4($v1)
    bne	$s6,$at,.L5ef87864
    addu	$s5,$v1,$s5
    b	.L5ef877c4
    ld	$ra,-352($s8)
.L5ef87910:
    andi	$a0,$a0,0x1f
.L5ef87914:
    beq	$a1,$a5,.L5ef879a4
    nop
.L5ef8791c:
    lw	$a3,0($a1)
    sw	$a4,0($a2)
    sw	$a0,4($a2)
    lh	$v1,0($a3)
    addu	$v1,$v1,$a4
    sw	$v1,8($a2)
    lh	$at,2($a3)
    addu	$at,$at,$a4
    sw	$at,12($a2)
    lh	$t0,6($a3)
    subu	$t0,$s7,$t0
    sw	$t0,16($a2)
    lh	$v1,8($a3)
    addu	$v1,$v1,$s7
    sw	$v1,20($a2)
    lh	$at,0($a3)
    lh	$t0,2($a3)
    subu	$t0,$t0,$at
    addiu	$t0,$t0,7
    sra	$t0,$t0,0x3
    addiu	$t0,$t0,1
    and	$t0,$t0,$v0
    sw	$t0,28($a2)
    lh	$a3,4($a3)
    addiu	$a1,$a1,4
    addiu	$a2,$a2,32
    addu	$a0,$a3,$a0
    slti	$t0,$a0,32
    beqz	$t0,.L5ef87910
    addu	$a4,$a3,$a4
    bgez	$a0,.L5ef87914
    nop
    b	.L5ef87914
    addiu	$a0,$a0,32
.L5ef879a4:
    ld	$a1,-152($s8)
    lw	$a1,8($a1)
    ld	$a0,-152($s8)
    beqz	$a1,.L5ef87c14
    li	$v0,1
    addiu	$a0,$a1,8
    beqz	$a1,.L5ef87c1c
    nop
    lw	$v0,4($a1)
.L5ef879c8:
    ld	$t0,-136($s8)
.L5ef879cc:
    blez	$v0,.L5ef877c4
    sll	$a3,$v0,0x3
    sll	$t0,$t0,0x2
    move	$at,$a0
    sd	$s0,-288($s8)
    sd	$s1,-296($s8)
    sd	$s2,-304($s8)
    sd	$s3,-312($s8)
    sd	$s4,-320($s8)
    sd	$a0,-280($s8)
    sd	$t0,-240($s8)
    addu	$a3,$a0,$a3
    b	.L5ef87a18
    sd	$a3,-264($s8)
.L5ef87a04:
    ld	$v1,-280($s8)
    ld	$a3,-264($s8)
    addiu	$v1,$v1,8
    beq	$v1,$a3,.L5ef87c0c
    sd	$v1,-280($s8)
.L5ef87a18:
    ld	$a1,-280($s8)
    lh	$v0,-80($s8)
    lh	$a1,0($a1)
    slt	$t0,$a1,$v0
    bnez	$t0,.L5ef87a34
    move	$s6,$v0
    move	$s6,$a1
.L5ef87a34:
    ld	$a1,-280($s8)
    lh	$v0,-78($s8)
    lh	$a1,2($a1)
    slt	$a3,$a1,$v0
    beqz	$a3,.L5ef87a54
    move	$a3,$v0
    b	.L5ef87a5c
    sd	$v0,-328($s8)
.L5ef87a54:
    move	$t0,$a1
    sd	$a1,-328($s8)
.L5ef87a5c:
    ld	$a1,-280($s8)
    lh	$v0,-76($s8)
    lh	$a1,4($a1)
    slt	$at,$v0,$a1
    bnez	$at,.L5ef87a78
    move	$s7,$v0
    move	$s7,$a1
.L5ef87a78:
    ld	$a1,-280($s8)
    lh	$v0,-74($s8)
    lh	$a1,6($a1)
    slt	$a3,$v0,$a1
    beqz	$a3,.L5ef87a9c
    ld	$at,-136($s8)
    move	$a3,$v0
    b	.L5ef87aa4
    sd	$v0,-336($s8)
.L5ef87a9c:
    move	$t0,$a1
    sd	$a1,-336($s8)
.L5ef87aa4:
    slt	$v1,$s6,$s7
    ld	$a3,-328($s8)
    beqz	$at,.L5ef87a04
    move	$s3,$s6
    move	$s2,$s7
    beqz	$v1,.L5ef87ac8
    ld	$t0,-336($s8)
    slt	$a3,$a3,$t0
    bnez	$a3,.L5ef87c00
.L5ef87ac8:
    li	$v0,1
    ld	$s0,-240($s8)
.L5ef87ad0:
    bnez	$v0,.L5ef87a04
    ld	$at,-144($s8)
    ld	$s5,-336($s8)
    ld	$s4,-328($s8)
    move	$s1,$at
    addu	$s0,$s0,$at
    sd	$s0,-344($s8)
    b	.L5ef87b6c
    ld	$s0,-248($s8)
.L5ef87af4:
    dsll32	$a1,$a2,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,-122($s8)
.L5ef87b00:
    subu	$a3,$a1,$t2
    blezl	$a3,.L5ef87b60
    addiu	$s1,$s1,4
    lw	$ra,16($s0)
    lw	$a3,28($s0)
    subu	$ra,$t2,$ra
    mult	$ra,$a3
    addiu	$a0,$s8,-128
    ld	$a7,-288($s8)
    ld	$a6,-312($s8)
    ld	$a5,-296($s8)
    lw	$t0,8($s0)
    ld	$a4,-320($s8)
    lw	$a1,12($t3)
    subu	$t0,$v0,$t0
    ld	$t9,-304($s8)
    andi	$a2,$t0,0x7
    sra	$t0,$t0,0x3
    lw	$t9,12($t9)
    mflo	$t1
    addu	$a1,$a1,$t1
    jalr	$t9
    addu	$a1,$a1,$t0
    addiu	$s1,$s1,4
.L5ef87b60:
    ld	$at,-344($s8)
    beq	$s1,$at,.L5ef87a04
    addiu	$s0,$s0,32
.L5ef87b6c:
    lw	$a1,8($s0)
    move	$v0,$s6
    slt	$v1,$a1,$s3
    beqz	$v1,.L5ef87b88
    lw	$t3,0($s1)
    b	.L5ef87b94
    sh	$s6,-128($s8)
.L5ef87b88:
    dsll32	$v0,$a1,0x10
    dsra32	$v0,$v0,0x10
    sh	$v0,-128($s8)
.L5ef87b94:
    lw	$a2,12($s0)
    slt	$v1,$s2,$a2
    beqz	$v1,.L5ef87bac
    move	$a1,$s7
    b	.L5ef87bb8
    sh	$s7,-124($s8)
.L5ef87bac:
    dsll32	$a1,$a2,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,-124($s8)
.L5ef87bb8:
    subu	$a3,$a1,$v0
    blezl	$a3,.L5ef87b60
    addiu	$s1,$s1,4
    lw	$a1,16($s0)
    slt	$t0,$a1,$s4
    beqz	$t0,.L5ef87bdc
    ld	$t2,-328($s8)
    b	.L5ef87be8
    sh	$t2,-126($s8)
.L5ef87bdc:
    dsll32	$t2,$a1,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,-126($s8)
.L5ef87be8:
    lw	$a2,20($s0)
    slt	$at,$s5,$a2
    beqz	$at,.L5ef87af4
    ld	$a1,-336($s8)
    b	.L5ef87b00
    sh	$a1,-122($s8)
.L5ef87c00:
    move	$v0,$zero
    b	.L5ef87ad0
    ld	$s0,-240($s8)
.L5ef87c0c:
    b	.L5ef877c4
    ld	$ra,-352($s8)
.L5ef87c14:
    bnezl	$a1,.L5ef879c8
    lw	$v0,4($a1)
.L5ef87c1c:
    b	.L5ef879cc
    ld	$t0,-136($s8)
.L5ef87c24:
    ld	$s6,-184($s8)
    ld	$gp,-232($s8)
    ld	$s0,-176($s8)
    ld	$s1,-224($s8)
    ld	$s2,-208($s8)
    ld	$s3,-192($s8)
    ld	$s4,-168($s8)
    ld	$s5,-200($s8)
    ld	$s7,-160($s8)
    ld	$v0,-216($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L5ef87c58:
    sd	$a6,-360($s8)
    sd	$a7,-152($s8)
    move	$a0,$v0
    ld	$a1,-144($s8)
    # lw $t9, -29236($gp)
    ld	$a2,-136($s8)
    sd	$ra,-352($s8)
    jal	QueryGlyphExtents
    addiu	$a3,$s8,-112
    lw	$t0,-96($s8)
    lw	$a6,-100($s8)
    lw	$v1,-88($s8)
    lw	$a3,-84($s8)
    subu	$a6,$s7,$a6
    addu	$v1,$v1,$s5
    addu	$a3,$a3,$s5
    addu	$t0,$t0,$s7
    sh	$t0,-74($s8)
    sh	$a3,-76($s8)
    sh	$v1,-80($s8)
    sh	$a6,-78($s8)
    b	.L5ef87790
    ld	$a6,-360($s8)
.end nfbSolidPolyGlyphBlt

.globl nfbImageGlyphBlt
.ent nfbImageGlyphBlt
nfbImageGlyphBlt:
    move	$at,$s8
    addiu	$sp,$sp,-400
    addiu	$s8,$sp,400
    sd	$a5,-160($s8)
    sd	$s2,-256($s8)
    move	$s2,$a0
    sd	$a1,-272($s8)
    sd	$a4,-184($s8)
    sd	$s0,-200($s8)
    sd	$s5,-248($s8)
    sd	$s3,-224($s8)
    lh	$s3,8($a0)
    lw	$a6,44($a1)
    sd	$at,-232($s8)
    addu	$s3,$s3,$a2
    lw	$at,12($a6)
    dsll32	$s5,$s3,0x10
    dsra32	$s5,$s5,0x10
    andi	$at,$at,0x1fff
    srl	$at,$at,0xc
    sd	$s6,-216($s8)
    sd	$s7,-176($s8)
    lh	$s7,10($a0)
    lh	$v0,68($a6)
    lh	$s6,70($a6)
    addu	$s7,$s7,$a3
    sd	$s7,-144($s8)
    addu	$s6,$s6,$s7
    subu	$s7,$s7,$v0
    dsll32	$s7,$s7,0x10
    dsll32	$s6,$s6,0x10
    dsra32	$s6,$s6,0x10
    sd	$s1,-264($s8)
    lw	$s1,132($a0)
    sd	$gp,-240($s8)
    lui	$v0,0x13
    addiu	$v0,$v0,14696
    addu	$gp,$t9,$v0
    lw	$v0,nfbWindowPrivateIndex
    sd	$s4,-192($s8)
    lw	$s4,76($a1)
    sll	$v0,$v0,0x2
    lw	$t9,nfbGCPrivateIndex
    addu	$s1,$s1,$v0
    lw	$s1,0($s1)
    sll	$t9,$t9,0x2
    addu	$s4,$s4,$t9
    lw	$s4,0($s4)
    dsra32	$s7,$s7,0x10
    lw	$s1,0($s1)
    lw	$t9,8($s4)
    sd	$s4,-208($s8)
    lw	$s0,52($s4)
    sd	$t9,-168($s8)
    lw	$t9,44($s4)
    lw	$s4,40($s4)
    beqz	$at,.L5ef8b36c
    sd	$t9,-152($s8)
    ld	$a3,-184($s8)
    lh	$v1,36($a6)
    lh	$v0,32($a6)
    multu	$v1,$a3
    ld	$v1,-272($s8)
    addu	$v0,$v0,$s3
    sh	$v0,-80($s8)
    lw	$at,44($v1)
    lh	$at,22($at)
    addu	$at,$at,$s3
    mflo	$v0
    addu	$at,$at,$v0
    sh	$at,-76($s8)
    lw	$t0,44($v1)
    ld	$a3,-144($s8)
    lh	$t0,26($t0)
    subu	$t0,$a3,$t0
    sh	$t0,-78($s8)
    lw	$v1,44($v1)
    addu	$v0,$s5,$v0
    lh	$v1,28($v1)
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    addu	$v1,$v1,$a3
    sh	$v1,-74($s8)
.L5ef8ada8:
    ld	$a0,-168($s8)
    lw	$a0,8($a0)
    li	$a6,1
    beqz	$a0,.L5ef8af18
    ld	$a7,-168($s8)
    beqz	$a0,.L5ef8af20
    lw	$a6,4($a0)
    addiu	$a7,$a0,8
.L5ef8adc8:
    sd	$s3,-384($s8)
.L5ef8adcc:
    blez	$a6,.L5ef8aea4
    sd	$ra,-376($s8)
    sd	$ra,-376($s8)
    move	$s3,$a7
    sll	$a0,$a6,0x3
    b	.L5ef8ae10
    addu	$a0,$a7,$a0
.L5ef8ade8:
    beqz	$a3,.L5ef8ae04
    sh	$t2,-114($s8)
    dsll32	$t0,$t1,0x10
    dsra32	$t0,$t0,0x10
    slt	$t0,$t0,$t2
    bnezl	$t0,.L5ef8ae74
    sd	$v0,-400($s8)
.L5ef8ae04:
    addiu	$s3,$s3,8
    beql	$s3,$a0,.L5ef8aea4
    ld	$s3,-384($s8)
.L5ef8ae10:
    lh	$a6,0($s3)
    slt	$at,$s5,$a6
    beqz	$at,.L5ef8ae24
    move	$a7,$s5
    move	$a7,$a6
.L5ef8ae24:
    sh	$a7,-120($s8)
    lh	$a6,2($s3)
    slt	$v1,$s7,$a6
    beqz	$v1,.L5ef8ae3c
    move	$t1,$s7
    move	$t1,$a6
.L5ef8ae3c:
    sh	$t1,-118($s8)
    lh	$t2,4($s3)
    slt	$a3,$t2,$v0
    beqz	$a3,.L5ef8ae54
    move	$a6,$v0
    move	$a6,$t2
.L5ef8ae54:
    sh	$a6,-116($s8)
    lh	$t3,6($s3)
    move	$t2,$s6
    slt	$t0,$t3,$s6
    beqz	$t0,.L5ef8ade8
    slt	$a3,$a7,$a6
    b	.L5ef8ade8
    move	$t2,$t3
.L5ef8ae74:
    sd	$a0,-392($s8)
    addiu	$a0,$s8,-120
    move	$a5,$s2
    move	$a4,$s0
    lw	$t9,4($s1)
    li	$a3,3
    ld	$a2,-152($s8)
    jalr	$t9
    li	$a1,1
    ld	$a0,-392($s8)
    b	.L5ef8ae04
    ld	$v0,-400($s8)
.L5ef8aea4:
    ld	$t9,-272($s8)
    lw	$t9,0($t9)
    addiu	$a1,$s8,-80
    lw	$t9,380($t9)
    ld	$a0,-208($s8)
    ld	$s6,-144($s8)
    jalr	$t9
    lw	$a0,8($a0)
    andi	$a0,$s3,0x1f
    beqz	$v0,.L5ef8aee4
    ld	$ra,-376($s8)
    li	$at,1
    beq	$v0,$at,.L5ef8af74
    li	$v1,2
    beq	$v0,$v1,.L5ef8af28
    ld	$at,-184($s8)
.L5ef8aee4:
    ld	$gp,-240($s8)
    ld	$s0,-200($s8)
    ld	$s1,-264($s8)
    ld	$s2,-256($s8)
    ld	$s3,-224($s8)
    ld	$s4,-192($s8)
    ld	$s5,-248($s8)
    ld	$s6,-216($s8)
    ld	$s7,-176($s8)
    ld	$a3,-232($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L5ef8af18:
    bnezl	$a0,.L5ef8adc8
    addiu	$a7,$a0,8
.L5ef8af20:
    b	.L5ef8adcc
    sd	$s3,-384($s8)
.L5ef8af28:
    li	$v1,-16
    sll	$at,$at,0x5
    addiu	$at,$at,15
    and	$at,$at,$v1
    subu	$sp,$sp,$at
    move	$t0,$sp
    beqz	$sp,.L5ef8b338
    sd	$sp,-288($s8)
    ld	$v1,-184($s8)
    move	$a4,$s3
    beqz	$v1,.L5ef8b0cc
    li	$v0,-2
    ld	$t0,-160($s8)
    ld	$a5,-184($s8)
    ld	$a1,-288($s8)
    move	$a2,$t0
    sll	$a5,$a5,0x2
    b	.L5ef8b044
    addu	$a5,$a5,$t0
.L5ef8af74:
    ld	$t0,-184($s8)
    beqz	$t0,.L5ef8aee4
    ld	$v1,-160($s8)
    ld	$at,-184($s8)
    move	$s5,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    sd	$at,-296($s8)
.L5ef8af94:
    addiu	$a0,$s8,-128
    move	$a7,$s2
    move	$a6,$s0
    lw	$s7,0($s5)
    li	$a5,3
    move	$a2,$zero
    lh	$t3,8($s7)
    lh	$a3,2($s7)
    lh	$a4,0($s7)
    lh	$t1,6($s7)
    lw	$a1,12($s7)
    subu	$a3,$a3,$a4
    addu	$t8,$a4,$s3
    dsll32	$t8,$t8,0x10
    dsra32	$t8,$t8,0x10
    sh	$t8,-128($s8)
    addu	$t8,$a3,$t8
    sh	$t8,-124($s8)
    li	$t0,-2
    lh	$t2,6($s7)
    move	$a4,$s4
    addu	$t1,$t1,$t3
    subu	$t2,$s6,$t2
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,-126($s8)
    addu	$t1,$t1,$t2
    sh	$t1,-122($s8)
    addiu	$a3,$a3,7
    lw	$t9,12($s1)
    sra	$a3,$a3,0x3
    addiu	$a3,$a3,1
    jalr	$t9
    and	$a3,$a3,$t0
    addiu	$s5,$s5,4
    ld	$at,-296($s8)
    lh	$v1,4($s7)
    bne	$s5,$at,.L5ef8af94
    addu	$s3,$v1,$s3
    b	.L5ef8aee4
    ld	$ra,-376($s8)
.L5ef8b038:
    andi	$a0,$a0,0x1f
.L5ef8b03c:
    beq	$a2,$a5,.L5ef8b0cc
    nop
.L5ef8b044:
    lw	$a3,0($a2)
    sw	$a4,0($a1)
    sw	$a0,4($a1)
    lh	$v1,0($a3)
    addu	$v1,$v1,$a4
    sw	$v1,8($a1)
    lh	$at,2($a3)
    addu	$at,$at,$a4
    sw	$at,12($a1)
    lh	$t0,6($a3)
    subu	$t0,$s6,$t0
    sw	$t0,16($a1)
    lh	$v1,8($a3)
    addu	$v1,$v1,$s6
    sw	$v1,20($a1)
    lh	$at,0($a3)
    lh	$t0,2($a3)
    subu	$t0,$t0,$at
    addiu	$t0,$t0,7
    sra	$t0,$t0,0x3
    addiu	$t0,$t0,1
    and	$t0,$t0,$v0
    sw	$t0,28($a1)
    lh	$a3,4($a3)
    addiu	$a2,$a2,4
    addiu	$a1,$a1,32
    addu	$a0,$a3,$a0
    slti	$t0,$a0,32
    beqz	$t0,.L5ef8b038
    addu	$a4,$a3,$a4
    bgez	$a0,.L5ef8b03c
    nop
    b	.L5ef8b03c
    addiu	$a0,$a0,32
.L5ef8b0cc:
    ld	$a0,-168($s8)
    lw	$a0,8($a0)
    beqz	$a0,.L5ef8b328
    addiu	$a1,$a0,8
.L5ef8b0dc:
    lw	$v0,4($a0)
.L5ef8b0e0:
    ld	$t0,-184($s8)
    blez	$v0,.L5ef8aee4
    sll	$a3,$v0,0x3
    sll	$t0,$t0,0x2
    move	$at,$a1
    sd	$s0,-320($s8)
    sd	$s1,-328($s8)
    sd	$s2,-336($s8)
    sd	$s4,-344($s8)
    sd	$a1,-312($s8)
    sd	$t0,-280($s8)
    addu	$a3,$a1,$a3
    b	.L5ef8b12c
    sd	$a3,-304($s8)
.L5ef8b118:
    ld	$v1,-312($s8)
    ld	$a3,-304($s8)
    addiu	$v1,$v1,8
    beq	$v1,$a3,.L5ef8b320
    sd	$v1,-312($s8)
.L5ef8b12c:
    ld	$v0,-312($s8)
    lh	$a1,-80($s8)
    lh	$v0,0($v0)
    ld	$at,-184($s8)
    slt	$t0,$v0,$a1
    bnez	$t0,.L5ef8b14c
    move	$s6,$a1
    move	$s6,$v0
.L5ef8b14c:
    ld	$v0,-312($s8)
    lh	$a1,-78($s8)
    lh	$v0,2($v0)
    slt	$v1,$v0,$a1
    beqz	$v1,.L5ef8b16c
    move	$v1,$a1
    b	.L5ef8b174
    sd	$a1,-352($s8)
.L5ef8b16c:
    move	$a3,$v0
    sd	$v0,-352($s8)
.L5ef8b174:
    ld	$a1,-312($s8)
    lh	$v0,-76($s8)
    lh	$a1,4($a1)
    slt	$t0,$v0,$a1
    bnez	$t0,.L5ef8b190
    move	$s7,$v0
    move	$s7,$a1
.L5ef8b190:
    ld	$a1,-312($s8)
    lh	$v0,-74($s8)
    lh	$a1,6($a1)
    slt	$a3,$v0,$a1
    beqz	$a3,.L5ef8b1b0
    move	$a3,$v0
    b	.L5ef8b1b8
    sd	$v0,-360($s8)
.L5ef8b1b0:
    move	$t0,$a1
    sd	$a1,-360($s8)
.L5ef8b1b8:
    slt	$v1,$s6,$s7
    ld	$a3,-352($s8)
    beqz	$at,.L5ef8b118
    move	$s2,$s6
    move	$s3,$s7
    beqz	$v1,.L5ef8b1dc
    ld	$t0,-360($s8)
    slt	$a3,$a3,$t0
    bnez	$a3,.L5ef8b314
.L5ef8b1dc:
    li	$v0,1
    ld	$s0,-280($s8)
.L5ef8b1e4:
    bnez	$v0,.L5ef8b118
    ld	$at,-160($s8)
    ld	$s4,-360($s8)
    ld	$s5,-352($s8)
    move	$s1,$at
    addu	$s0,$s0,$at
    sd	$s0,-368($s8)
    b	.L5ef8b280
    ld	$s0,-288($s8)
.L5ef8b208:
    dsll32	$a1,$a2,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,-130($s8)
.L5ef8b214:
    subu	$a3,$a1,$t2
    blezl	$a3,.L5ef8b274
    addiu	$s1,$s1,4
    lw	$ra,16($s0)
    lw	$a3,28($s0)
    subu	$ra,$t2,$ra
    mult	$ra,$a3
    addiu	$a0,$s8,-136
    ld	$a7,-336($s8)
    ld	$a6,-320($s8)
    li	$a5,3
    lw	$t0,8($s0)
    ld	$a4,-344($s8)
    lw	$a1,12($t3)
    subu	$t0,$v0,$t0
    ld	$t9,-328($s8)
    andi	$a2,$t0,0x7
    sra	$t0,$t0,0x3
    lw	$t9,12($t9)
    mflo	$t1
    addu	$a1,$a1,$t1
    jalr	$t9
    addu	$a1,$a1,$t0
    addiu	$s1,$s1,4
.L5ef8b274:
    ld	$at,-368($s8)
    beq	$s1,$at,.L5ef8b118
    addiu	$s0,$s0,32
.L5ef8b280:
    lw	$a1,8($s0)
    move	$v0,$s6
    slt	$v1,$a1,$s2
    beqz	$v1,.L5ef8b29c
    lw	$t3,0($s1)
    b	.L5ef8b2a8
    sh	$s6,-136($s8)
.L5ef8b29c:
    dsll32	$v0,$a1,0x10
    dsra32	$v0,$v0,0x10
    sh	$v0,-136($s8)
.L5ef8b2a8:
    lw	$a2,12($s0)
    slt	$v1,$s3,$a2
    beqz	$v1,.L5ef8b2c0
    move	$a1,$s7
    b	.L5ef8b2cc
    sh	$s7,-132($s8)
.L5ef8b2c0:
    dsll32	$a1,$a2,0x10
    dsra32	$a1,$a1,0x10
    sh	$a1,-132($s8)
.L5ef8b2cc:
    subu	$a3,$a1,$v0
    blezl	$a3,.L5ef8b274
    addiu	$s1,$s1,4
    lw	$a1,16($s0)
    slt	$t0,$a1,$s5
    beqz	$t0,.L5ef8b2f0
    ld	$t2,-352($s8)
    b	.L5ef8b2fc
    sh	$t2,-134($s8)
.L5ef8b2f0:
    dsll32	$t2,$a1,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,-134($s8)
.L5ef8b2fc:
    lw	$a2,20($s0)
    slt	$at,$s4,$a2
    beqz	$at,.L5ef8b208
    ld	$a1,-360($s8)
    b	.L5ef8b214
    sh	$a1,-130($s8)
.L5ef8b314:
    move	$v0,$zero
    b	.L5ef8b1e4
    ld	$s0,-280($s8)
.L5ef8b320:
    b	.L5ef8aee4
    ld	$ra,-376($s8)
.L5ef8b328:
    bnez	$a0,.L5ef8b0dc
    ld	$a1,-168($s8)
    b	.L5ef8b0e0
    li	$v0,1
.L5ef8b338:
    ld	$gp,-240($s8)
    ld	$s0,-200($s8)
    ld	$s1,-264($s8)
    ld	$s2,-256($s8)
    ld	$s3,-224($s8)
    ld	$s4,-192($s8)
    ld	$s5,-248($s8)
    ld	$s6,-216($s8)
    ld	$s7,-176($s8)
    ld	$v0,-232($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L5ef8b36c:
    move	$a0,$a6
    ld	$a1,-160($s8)
    # lw $t9, -29236($gp)
    ld	$a2,-184($s8)
    sd	$ra,-376($s8)
    jal	QueryGlyphExtents
    addiu	$a3,$s8,-112
    lw	$a3,-84($s8)
    ld	$t0,-144($s8)
    lw	$at,-96($s8)
    lw	$ra,-100($s8)
    lw	$v1,-88($s8)
    addu	$at,$at,$t0
    subu	$t0,$t0,$ra
    ld	$ra,-376($s8)
    addu	$v1,$v1,$s3
    addu	$a3,$a3,$s3
    sh	$at,-74($s8)
    sh	$t0,-78($s8)
    lw	$v0,-92($s8)
    sh	$a3,-76($s8)
    sh	$v1,-80($s8)
    addu	$v0,$v0,$s5
    dsll32	$v0,$v0,0x10
    b	.L5ef8ada8
    dsra32	$v0,$v0,0x10
.end nfbImageGlyphBlt

.globl nfbSolidFS
.ent nfbSolidFS
nfbSolidFS:
    addiu	$sp,$sp,-144
    sd	$s5,40($sp)
    move	$s5,$a1
    sd	$s1,32($sp)
    sd	$s0,24($sp)
    sd	$s6,8($sp)
    sd	$gp,48($sp)
    lui	$at,0x14
    addiu	$at,$at,16512
    addu	$gp,$t9,$at
    lw	$t9,nfbGCPrivateIndex
    lw	$s6,76($a0)
    sd	$s4,16($sp)
    sll	$t9,$t9,0x2
    addu	$s6,$s6,$t9
    lw	$t9,nfbWindowPrivateIndex
    lw	$s4,132($a1)
    lw	$s6,0($s6)
    sll	$t9,$t9,0x2
    addu	$s4,$s4,$t9
    lw	$s4,0($s4)
    lbu	$s0,72($s6)
    lw	$s1,76($s6)
    lw	$s4,0($s4)
    lw	$s6,64($s6)
    blez	$a4,.L5ef7a634
    lw	$s4,4($s4)
    sd	$ra,56($sp)
    sd	$s2,64($sp)
    move	$s2,$a2
    sd	$s3,72($sp)
    move	$s3,$a3
    sd	$s7,80($sp)
    sll	$s7,$a4,0x2
    addu	$s7,$s7,$a2
    lh	$ra,0($s2)
.L5ef7a5d4:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$ra,0($sp)
    move	$a2,$s6
    lw	$t9,0($s3)
    move	$a3,$s0
    move	$a4,$s1
    addu	$t9,$t9,$ra
    sh	$t9,4($sp)
    move	$a5,$s5
    lh	$t8,2($s2)
    addiu	$s3,$s3,4
    move	$t9,$s4
    sh	$t8,2($sp)
    addiu	$t8,$t8,1
    jalr	$s4
    sh	$t8,6($sp)
    addiu	$s2,$s2,4
    bnel	$s2,$s7,.L5ef7a5d4
    lh	$ra,0($s2)
    ld	$s7,80($sp)
    ld	$ra,56($sp)
    ld	$s3,72($sp)
    ld	$s2,64($sp)
.L5ef7a634:
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end nfbSolidFS

.globl nfbTiledFS
.ent nfbTiledFS
nfbTiledFS:
    addiu	$sp,$sp,-160
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,64($sp)
    move	$s1,$a1
    sd	$s3,32($sp)
    lw	$s3,32($a0)
    sd	$s7,48($sp)
    sd	$gp,72($sp)
    lui	$at,0x14
    addiu	$at,$at,16240
    addu	$gp,$t9,$at
    lw	$t9,nfbGCPrivateIndex
    lw	$s7,76($a0)
    sd	$s4,40($sp)
    sll	$t9,$t9,0x2
    addu	$s7,$s7,$t9
    lw	$t9,nfbWindowPrivateIndex
    lw	$s4,132($a1)
    lw	$s7,0($s7)
    sll	$t9,$t9,0x2
    addu	$s4,$s4,$t9
    lw	$s4,0($s4)
    sd	$s2,24($sp)
    lbu	$s2,72($s7)
    lw	$s4,0($s4)
    lw	$s7,76($s7)
    blez	$a4,.L5ef7a770
    lw	$s4,28($s4)
    sd	$ra,80($sp)
    sd	$s5,96($sp)
    move	$s5,$a2
    sd	$s6,88($sp)
    move	$s6,$a3
    sd	$s8,104($sp)
    sll	$s8,$a4,0x2
    addu	$s8,$s8,$a2
    lh	$t3,0($s5)
.L5ef7a6ec:
    sh	$t3,16($sp)
    move	$a7,$s2
    lw	$t2,0($s6)
    li	$a1,1
    addiu	$a0,$sp,16
    addu	$t2,$t2,$t3
    sh	$t2,20($sp)
    move	$t9,$s4
    lh	$t1,2($s5)
    addiu	$s6,$s6,4
    lw	$t0,nfbGCPrivateIndex
    sh	$t1,18($sp)
    addiu	$t1,$t1,1
    sh	$t1,22($sp)
    sll	$t0,$t0,0x2
    lw	$a2,32($s3)
    lw	$a3,28($s3)
    lw	$a6,76($s0)
    lhu	$a4,12($s3)
    lhu	$a5,14($s3)
    addu	$a6,$a6,$t0
    lw	$a6,0($a6)
    sw	$s1,12($sp)
    sw	$s7,4($sp)
    jalr	$s4
    addiu	$a6,$a6,88
    addiu	$s5,$s5,4
    bnel	$s5,$s8,.L5ef7a6ec
    lh	$t3,0($s5)
    ld	$s8,104($sp)
    ld	$s5,96($sp)
    ld	$ra,80($sp)
    ld	$s6,88($sp)
.L5ef7a770:
    ld	$gp,72($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end nfbTiledFS

.globl nfbStippledFS
.ent nfbStippledFS
nfbStippledFS:
    move	$a5,$a3
    lw	$a6,36($a0)
    addiu	$sp,$sp,-224
    sd	$s4,40($sp)
    sd	$s3,32($sp)
    lhu	$s3,12($a6)
    lw	$s4,28($a6)
    sd	$s6,24($sp)
    sd	$gp,72($sp)
    lui	$at,0x14
    addiu	$at,$at,15920
    addu	$gp,$t9,$at
    lw	$s6,nfbWindowPrivateIndex
    sd	$s5,56($sp)
    lw	$s5,132($a1)
    sll	$s6,$s6,0x2
    sd	$s8,64($sp)
    lw	$s8,nfbGCPrivateIndex
    lw	$t9,76($a0)
    addu	$s5,$s5,$s6
    sll	$s8,$s8,0x2
    addu	$t9,$t9,$s8
    lw	$t9,0($t9)
    lw	$s5,0($s5)
    sd	$s7,48($sp)
    lw	$s6,64($t9)
    lw	$s5,0($s5)
    lh	$s8,90($t9)
    lh	$s7,88($t9)
    lw	$s5,12($s5)
    sd	$s8,88($sp)
    sd	$s7,96($sp)
    lbu	$s7,72($t9)
    lw	$t9,76($t9)
    move	$s8,$a1
    blez	$a4,.L5ef7a9fc
    sd	$t9,16($sp)
    sll	$v0,$a4,0x2
    move	$a1,$a2
    sd	$s2,144($sp)
    sd	$ra,136($sp)
    sd	$s0,128($sp)
    sd	$s1,120($sp)
    addu	$v0,$v0,$a2
    b	.L5ef7a894
    sd	$v0,80($sp)
.L5ef7a84c:
    addiu	$a0,$sp,0
    sh	$s0,4($sp)
    move	$a1,$s2
    ld	$a2,112($sp)
    move	$a3,$s4
    move	$a4,$s6
    move	$a5,$s7
    ld	$a6,16($sp)
    move	$a7,$s8
    jalr	$s5
    move	$t9,$s5
    ld	$a6,8($sp)
    ld	$a1,160($sp)
    ld	$v1,80($sp)
    ld	$a5,152($sp)
    addiu	$a1,$a1,4
    beq	$a1,$v1,.L5ef7a9ec
    addiu	$a5,$a5,4
.L5ef7a894:
    ld	$at,96($sp)
    lh	$a7,0($a1)
    subu	$at,$a7,$at
    div	$zero,$at,$s3
    teq	$s3,$zero,0x7
    lw	$s0,0($a5)
    mfhi	$a4
    bltz	$a4,.L5ef7a9dc
    addu	$s0,$s0,$a7
.L5ef7a8b8:
    ld	$v1,88($sp)
    lh	$v0,2($a1)
    lhu	$a2,14($a6)
    subu	$v0,$v0,$v1
    div	$zero,$v0,$a2
    mfhi	$a3
    bltz	$a3,.L5ef7a9e4
    teq	$a2,$zero,0x7
.L5ef7a8d8:
    sd	$a1,160($sp)
    sd	$a5,152($sp)
    sd	$a6,8($sp)
    andi	$a2,$a4,0x1f
    sd	$a2,112($sp)
    sh	$a7,0($sp)
    move	$s2,$a2
    lh	$at,2($a1)
    mult	$s4,$a3
    lh	$a0,0($a1)
    sh	$at,2($sp)
    sra	$at,$a4,0x5
    sll	$at,$at,0x2
    lh	$s1,2($a1)
    addu	$a0,$a0,$s3
    subu	$a0,$a0,$a4
    addiu	$s1,$s1,1
    sh	$s1,6($sp)
    sd	$a0,104($sp)
    lw	$s2,32($a6)
    slt	$a0,$a0,$s0
    mflo	$s1
    addu	$s2,$s2,$s1
    beqz	$a0,.L5ef7a84c
    addu	$s2,$s2,$at
    addiu	$a0,$sp,0
    move	$a1,$s2
    move	$a3,$s4
    move	$a4,$s6
    move	$a5,$s7
    ld	$a6,16($sp)
    move	$a7,$s8
    ld	$v0,104($sp)
    move	$t9,$s5
    jalr	$s5
    sh	$v0,4($sp)
    ld	$s2,8($sp)
    ld	$v1,104($sp)
    sd	$zero,112($sp)
    lw	$s2,32($s2)
    sh	$v1,0($sp)
    addu	$v1,$s3,$v1
    sd	$v1,104($sp)
    slt	$v1,$v1,$s0
    beqz	$v1,.L5ef7a84c
    addu	$s2,$s2,$s1
    ld	$s1,104($sp)
    addiu	$a0,$sp,0
.L5ef7a998:
    sh	$s1,4($sp)
    move	$a1,$s2
    move	$a2,$zero
    move	$a3,$s4
    move	$a4,$s6
    move	$a5,$s7
    ld	$a6,16($sp)
    move	$a7,$s8
    jalr	$s5
    move	$t9,$s5
    sh	$s1,0($sp)
    addu	$s1,$s1,$s3
    slt	$at,$s1,$s0
    bnez	$at,.L5ef7a998
    addiu	$a0,$sp,0
    b	.L5ef7a84c
    nop
.L5ef7a9dc:
    b	.L5ef7a8b8
    addu	$a4,$s3,$a4
.L5ef7a9e4:
    b	.L5ef7a8d8
    addu	$a3,$a3,$a2
.L5ef7a9ec:
    ld	$s1,120($sp)
    ld	$s0,128($sp)
    ld	$ra,136($sp)
    ld	$s2,144($sp)
.L5ef7a9fc:
    ld	$gp,72($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s5,56($sp)
    ld	$s6,24($sp)
    ld	$s7,48($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end nfbStippledFS

.globl nfbOpStippledFS
.ent nfbOpStippledFS
nfbOpStippledFS:
    move	$a5,$a3
    addiu	$sp,$sp,-240
    sd	$s7,72($sp)
    move	$s7,$a1
    lw	$a6,36($a0)
    sd	$s4,64($sp)
    sd	$s3,56($sp)
    lhu	$s3,12($a6)
    lw	$s4,28($a6)
    sd	$s8,88($sp)
    sd	$gp,96($sp)
    lui	$at,0x14
    addiu	$at,$at,15268
    addu	$gp,$t9,$at
    lw	$s8,nfbGCPrivateIndex
    lw	$t9,76($a0)
    sd	$s5,80($sp)
    sll	$s8,$s8,0x2
    addu	$t9,$t9,$s8
    lw	$t9,0($t9)
    sd	$s6,48($sp)
    lw	$s6,132($a1)
    lh	$v1,90($t9)
    lw	$s8,nfbWindowPrivateIndex
    lh	$v0,88($t9)
    lbu	$at,72($t9)
    sll	$s8,$s8,0x2
    addu	$s6,$s6,$s8
    lw	$s8,68($t9)
    lw	$s5,64($t9)
    lw	$t9,76($t9)
    sd	$v1,112($sp)
    sd	$at,40($sp)
    lw	$s6,0($s6)
    sd	$t9,32($sp)
    sd	$v0,120($sp)
    lw	$s6,0($s6)
    blez	$a4,.L5ef7ac9c
    lw	$s6,16($s6)
    sll	$v0,$a4,0x2
    move	$a1,$a2
    sd	$s2,168($sp)
    sd	$ra,160($sp)
    sd	$s0,152($sp)
    sd	$s1,144($sp)
    addu	$v0,$v0,$a2
    b	.L5ef7ab2c
    sd	$v0,104($sp)
.L5ef7aae0:
    ld	$a7,32($sp)
    ld	$a6,40($sp)
    move	$a5,$s8
    move	$a4,$s5
    move	$a3,$s4
    ld	$a2,136($sp)
    move	$a1,$s2
    addiu	$a0,$sp,16
    move	$t9,$s6
    sh	$s0,20($sp)
    jalr	$s6
    sw	$s7,4($sp)
    ld	$a6,24($sp)
    ld	$a1,184($sp)
    ld	$v1,104($sp)
    ld	$a5,176($sp)
    addiu	$a1,$a1,4
    beq	$a1,$v1,.L5ef7ac8c
    addiu	$a5,$a5,4
.L5ef7ab2c:
    ld	$at,120($sp)
    lh	$t0,0($a1)
    subu	$at,$t0,$at
    div	$zero,$at,$s3
    teq	$s3,$zero,0x7
    lw	$s0,0($a5)
    mfhi	$a4
    bltz	$a4,.L5ef7ac7c
    addu	$s0,$s0,$t0
.L5ef7ab50:
    ld	$v1,112($sp)
    lh	$v0,2($a1)
    lhu	$a2,14($a6)
    subu	$v0,$v0,$v1
    div	$zero,$v0,$a2
    mfhi	$a3
    bltz	$a3,.L5ef7ac84
    teq	$a2,$zero,0x7
.L5ef7ab70:
    sd	$a1,184($sp)
    sd	$a5,176($sp)
    sd	$a6,24($sp)
    andi	$a2,$a4,0x1f
    sd	$a2,136($sp)
    sh	$t0,16($sp)
    move	$s2,$a2
    lh	$at,2($a1)
    mult	$s4,$a3
    lh	$a0,0($a1)
    sh	$at,18($sp)
    sra	$at,$a4,0x5
    sll	$at,$at,0x2
    lh	$s1,2($a1)
    addu	$a0,$a0,$s3
    subu	$a0,$a0,$a4
    addiu	$s1,$s1,1
    sh	$s1,22($sp)
    sd	$a0,128($sp)
    lw	$s2,32($a6)
    slt	$a0,$a0,$s0
    mflo	$s1
    addu	$s2,$s2,$s1
    beqz	$a0,.L5ef7aae0
    addu	$s2,$s2,$at
    ld	$a7,32($sp)
    ld	$a6,40($sp)
    move	$a5,$s8
    move	$a4,$s5
    move	$a3,$s4
    move	$a1,$s2
    ld	$v0,128($sp)
    addiu	$a0,$sp,16
    move	$t9,$s6
    sh	$v0,20($sp)
    jalr	$s6
    sw	$s7,4($sp)
    ld	$s2,24($sp)
    ld	$v1,128($sp)
    sd	$zero,136($sp)
    lw	$s2,32($s2)
    sh	$v1,16($sp)
    addu	$v1,$s3,$v1
    sd	$v1,128($sp)
    slt	$v1,$v1,$s0
    beqz	$v1,.L5ef7aae0
    addu	$s2,$s2,$s1
    ld	$s1,128($sp)
    ld	$a7,32($sp)
.L5ef7ac34:
    ld	$a6,40($sp)
    move	$a5,$s8
    move	$a4,$s5
    move	$a3,$s4
    move	$a2,$zero
    move	$a1,$s2
    addiu	$a0,$sp,16
    move	$t9,$s6
    sh	$s1,20($sp)
    jalr	$s6
    sw	$s7,4($sp)
    sh	$s1,16($sp)
    addu	$s1,$s1,$s3
    slt	$at,$s1,$s0
    bnez	$at,.L5ef7ac34
    ld	$a7,32($sp)
    b	.L5ef7aae0
    nop
.L5ef7ac7c:
    b	.L5ef7ab50
    addu	$a4,$s3,$a4
.L5ef7ac84:
    b	.L5ef7ab70
    addu	$a3,$a3,$a2
.L5ef7ac8c:
    ld	$s1,144($sp)
    ld	$s0,152($sp)
    ld	$ra,160($sp)
    ld	$s2,168($sp)
.L5ef7ac9c:
    ld	$gp,96($sp)
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    ld	$s5,80($sp)
    ld	$s6,48($sp)
    ld	$s7,72($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end nfbOpStippledFS

.globl nfbFillSpans
.ent nfbFillSpans
nfbFillSpans:
    move	$t8,$zero
    move	$t2,$a5
    move	$t1,$s8
    addiu	$sp,$sp,-144
    lui	$t0,0x14
    addiu	$t0,$t0,17004
    addiu	$s8,$sp,144
    sd	$gp,-120($s8)
    addu	$gp,$t9,$t0
    lw	$a7,nfbGCPrivateIndex
    lw	$a6,76($a1)
    move	$t3,$a3
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sd	$t1,-128($s8)
    lw	$at,8($a6)
    move	$t1,$a4
    lw	$a6,36($a6)
    sd	$at,-112($s8)
    sd	$at,-80($s8)
    lw	$at,8($at)
    move	$t0,$a2
    lw	$a6,4($a6)
    beqz	$at,.L5ef7a52c
    sd	$at,-72($s8)
    ld	$a2,-72($s8)
    lw	$a3,4($a2)
.L5ef7a3c8:
    beqz	$a2,.L5ef7a538
    move	$a4,$a3
    addiu	$a5,$a2,8
.L5ef7a3d4:
    blez	$a3,.L5ef7a470
    move	$a2,$a5
    b	.L5ef7a400
    lh	$t9,2($a2)
.L5ef7a3e4:
    slt	$at,$t8,$a3
.L5ef7a3e8:
    beqz	$at,.L5ef7a3f4
    nop
    move	$t8,$a3
.L5ef7a3f4:
    blez	$a4,.L5ef7a470
    nop
    lh	$t9,2($a2)
.L5ef7a400:
    move	$a3,$zero
    blez	$a4,.L5ef7a3e4
    move	$a5,$t9
    bne	$a5,$t9,.L5ef7a3e8
    slt	$at,$t8,$a3
    addiu	$a3,$a3,1
.L5ef7a418:
    addiu	$a4,$a4,-1
    blez	$a4,.L5ef7a3e4
    addiu	$a2,$a2,8
    lh	$v0,2($a2)
    bne	$v0,$a5,.L5ef7a3e4
    nop
    addiu	$a3,$a3,1
    addiu	$a4,$a4,-1
    blez	$a4,.L5ef7a3e4
    addiu	$a2,$a2,8
    lh	$v1,2($a2)
    bne	$v1,$a5,.L5ef7a3e4
    nop
    addiu	$a3,$a3,1
    addiu	$a4,$a4,-1
    blez	$a4,.L5ef7a3e4
    addiu	$a2,$a2,8
    lh	$a7,2($a2)
    beql	$a7,$a5,.L5ef7a418
    addiu	$a3,$a3,1
    b	.L5ef7a3e4
    nop
.L5ef7a470:
    mult	$t0,$t8
    sd	$s0,-144($s8)
    li	$v0,-16
    mflo	$at
    sll	$at,$at,0x2
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    move	$s0,$sp
    subu	$sp,$sp,$at
    beqz	$sp,.L5ef7a4b0
    move	$a4,$sp
    sd	$a1,-88($s8)
    sd	$a6,-96($s8)
    bnez	$s0,.L5ef7a4c8
    sd	$a0,-104($s8)
.L5ef7a4b0:
    ld	$v0,-128($s8)
    ld	$gp,-120($s8)
    ld	$s0,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L5ef7a4c8:
    move	$v1,$a4
    sd	$a4,-64($s8)
    ld	$a0,-112($s8)
    move	$a1,$t3
    move	$a2,$t1
    move	$a3,$t0
    # lw $t9, -30584($gp)
    move	$a5,$s0
    sd	$ra,-136($s8)
    jal	miClipSpans
    move	$a6,$t2
    move	$a4,$v0
    ld	$a0,-88($s8)
    ld	$t9,-96($s8)
    ld	$a1,-104($s8)
    ld	$a2,-64($s8)
    jalr	$t9
    move	$a3,$s0
    ld	$gp,-120($s8)
    ld	$s0,-144($s8)
    ld	$ra,-136($s8)
    ld	$a0,-128($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L5ef7a52c:
    li	$a3,1
    b	.L5ef7a3c8
    ld	$a2,-72($s8)
.L5ef7a538:
    ld	$a5,-80($s8)
    b	.L5ef7a3d4
    nop
.end nfbFillSpans

.globl nfbSetSpans
.ent nfbSetSpans
nfbSetSpans:
    addiu	$sp,$sp,-224
    sd	$s1,80($sp)
    move	$s1,$a2
    sd	$s6,96($sp)
    move	$s6,$a0
    lh	$a0,10($a0)
    lhu	$a7,14($s6)
    sd	$s5,88($sp)
    sd	$gp,104($sp)
    lui	$v1,0x13
    addiu	$v1,$v1,26284
    addu	$gp,$t9,$v1
    lw	$at,nfbWindowPrivateIndex
    lw	$s5,132($s6)
    addu	$a0,$a0,$a7
    sll	$at,$at,0x2
    addu	$s5,$s5,$at
    lw	$v0,nfbGCPrivateIndex
    lw	$t9,76($a1)
    lw	$s5,0($s5)
    sll	$v0,$v0,0x2
    addu	$t9,$t9,$v0
    lw	$t9,0($t9)
    sd	$a0,128($sp)
    lw	$s5,0($s5)
    lw	$t0,8($t9)
    lw	$at,52($t9)
    lbu	$t9,48($t9)
    sd	$t0,112($sp)
    lw	$t0,8($t0)
    sd	$at,56($sp)
    sd	$t9,64($sp)
    beqz	$t0,.L5ef881e4
    lw	$s5,8($s5)
    addiu	$a0,$t0,8
    beqz	$t0,.L5ef881f4
    li	$a2,1
    sd	$s8,48($sp)
.L5ef87fb0:
    lw	$a2,4($t0)
.L5ef87fb4:
    sll	$t0,$a5,0x2
    addu	$s8,$t0,$a3
    beqz	$a6,.L5ef881fc
    sltu	$a7,$a3,$s8
    sd	$s2,72($sp)
    sd	$ra,8($sp)
    sd	$s4,24($sp)
    sd	$s7,40($sp)
    la	$s7,PixmapWidthPaddingInfo
    sd	$s3,16($sp)
    sd	$s5,120($sp)
    sd	$s0,32($sp)
    sll	$s0,$a2,0x3
    beqz	$a7,.L5ef881b0
    move	$s5,$a0
    addu	$s0,$a0,$s0
    move	$s3,$a3
    move	$s4,$zero
    sd	$s2,72($sp)
    b	.L5ef88044
    sd	$ra,8($sp)
.L5ef88008:
    lbu	$a1,2($s6)
.L5ef8800c:
    addiu	$s4,$s4,4
    addiu	$s3,$s3,4
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s7
    lw	$at,0($v1)
    lw	$v1,4($v1)
    sltu	$v0,$s3,$s8
    addu	$at,$at,$a5
    srav	$at,$at,$v1
    sll	$at,$at,0x2
    beqz	$v0,.L5ef881b0
    addu	$s1,$at,$s1
.L5ef88044:
    ld	$v0,128($sp)
    lh	$at,2($s3)
    addu	$a0,$s4,$a4
    addu	$a5,$s4,$a4
    slt	$at,$at,$v0
    beqz	$at,.L5ef881b0
    move	$s2,$s5
    sltu	$v1,$s5,$s0
    beqzl	$v1,.L5ef88008
    lw	$a5,0($a5)
    lw	$a5,0($a0)
    lh	$a1,2($s2)
.L5ef88074:
    lh	$a2,2($s3)
    slt	$a1,$a2,$a1
    bnezl	$a1,.L5ef8800c
    lbu	$a1,2($s6)
    lh	$at,6($s2)
    slt	$at,$a2,$at
    bnezl	$at,.L5ef880b0
    lh	$a3,0($s2)
    addiu	$s2,$s2,8
    move	$s5,$s2
.L5ef8809c:
    sltu	$v0,$s2,$s0
.L5ef880a0:
    bnezl	$v0,.L5ef88074
    lh	$a1,2($s2)
    b	.L5ef8800c
    lbu	$a1,2($s6)
.L5ef880b0:
    lh	$a2,0($s3)
    addu	$v1,$a2,$a5
    slt	$v1,$v1,$a3
    bnezl	$v1,.L5ef8800c
    lbu	$a1,2($s6)
    lh	$a1,4($s2)
    slt	$a1,$a2,$a1
    bnez	$a1,.L5ef880dc
    slt	$at,$a2,$a3
    b	.L5ef8809c
    addiu	$s2,$s2,8
.L5ef880dc:
    bnez	$at,.L5ef880e8
    move	$a6,$a3
    move	$a6,$a2
.L5ef880e8:
    sh	$a6,0($sp)
    lw	$at,0($a0)
    lh	$a2,0($s3)
    lh	$a3,4($s2)
    addu	$a2,$a2,$at
    slt	$v0,$a2,$a3
    beqz	$v0,.L5ef88114
    move	$t0,$a2
    sd	$a0,144($sp)
    b	.L5ef88120
    sd	$a4,136($sp)
.L5ef88114:
    move	$t0,$a3
    sd	$a0,144($sp)
    sd	$a4,136($sp)
.L5ef88120:
    sh	$t0,4($sp)
    lh	$a5,2($s3)
    sh	$a5,2($sp)
    lh	$a4,2($s3)
    addiu	$a0,$sp,0
    ld	$t9,120($sp)
    addiu	$a4,$a4,1
    sh	$a4,6($sp)
    move	$a5,$s6
    lbu	$a3,2($s6)
    ld	$a4,56($sp)
    lh	$a1,0($s3)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s7
    lw	$a3,8($a2)
    subu	$a1,$a6,$a1
    lw	$a2,4($a2)
    sllv	$a1,$a1,$a3
    ld	$a3,64($sp)
    srav	$a1,$a1,$a2
    move	$a2,$zero
    jalr	$t9
    addu	$a1,$a1,$s1
    ld	$a0,144($sp)
    lh	$v0,0($s3)
    lw	$a5,0($a0)
    lh	$at,4($s2)
    addu	$v0,$v0,$a5
    slt	$at,$at,$v0
    beqz	$at,.L5ef88008
    ld	$a4,136($sp)
    addiu	$s2,$s2,8
    b	.L5ef880a0
    sltu	$v0,$s2,$s0
.L5ef881b0:
    ld	$gp,104($sp)
    ld	$s0,32($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    ld	$s5,88($sp)
    ld	$s6,96($sp)
    ld	$ra,8($sp)
    ld	$s7,40($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L5ef881e4:
    ld	$a0,112($sp)
    bnezl	$t0,.L5ef87fb0
    sd	$s8,48($sp)
    li	$a2,1
.L5ef881f4:
    b	.L5ef87fb4
    sd	$s8,48($sp)
.L5ef881fc:
    sd	$s2,72($sp)
    sd	$ra,8($sp)
    sd	$s4,24($sp)
    sd	$s3,16($sp)
    move	$s3,$a3
    sd	$s0,32($sp)
    beqz	$a7,.L5ef881b0
    sd	$s7,40($sp)
    sll	$s0,$a2,0x3
    move	$s4,$a4
    sd	$s2,72($sp)
    sd	$ra,8($sp)
    la	$s7,PixmapWidthPaddingInfo
    b	.L5ef88278
    addu	$s0,$a0,$s0
.L5ef88238:
    lw	$a3,0($s4)
.L5ef8823c:
    lbu	$a1,2($s6)
.L5ef88240:
    addiu	$s4,$s4,4
    addiu	$s3,$s3,4
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s7
    lw	$at,0($v1)
    lw	$v1,4($v1)
    sltu	$v0,$s3,$s8
    addu	$at,$at,$a3
    srav	$at,$at,$v1
    sll	$at,$at,0x2
    beqz	$v0,.L5ef881b0
    addu	$s1,$at,$s1
.L5ef88278:
    lh	$a0,2($s3)
    bltz	$a0,.L5ef883b0
    ld	$at,128($sp)
    slt	$at,$a0,$at
    beqz	$at,.L5ef88238
    ld	$t0,112($sp)
    lw	$t0,8($t0)
    beqz	$t0,.L5ef882a0
    ld	$a0,112($sp)
    addiu	$a0,$t0,8
.L5ef882a0:
    sltu	$at,$a0,$s0
    beqz	$at,.L5ef883b8
    move	$s2,$a0
    b	.L5ef88330
    lw	$a3,0($s4)
.L5ef882b4:
    move	$t0,$a2
.L5ef882b8:
    sh	$t0,4($sp)
    lh	$a5,2($s3)
    sh	$a5,2($sp)
    lh	$a4,2($s3)
    addiu	$a0,$sp,0
    move	$t9,$s5
    addiu	$a4,$a4,1
    sh	$a4,6($sp)
    move	$a5,$s6
    lbu	$a3,2($s6)
    ld	$a4,56($sp)
    lh	$a1,0($s3)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s7
    lw	$a3,8($a2)
    subu	$a1,$a6,$a1
    lw	$a2,4($a2)
    sllv	$a1,$a1,$a3
    ld	$a3,64($sp)
    srav	$a1,$a1,$a2
    move	$a2,$zero
    jalr	$s5
    addu	$a1,$a1,$s1
    lw	$a3,0($s4)
.L5ef88320:
    addiu	$s2,$s2,8
.L5ef88324:
    sltu	$at,$s2,$s0
    beqzl	$at,.L5ef88240
    lbu	$a1,2($s6)
.L5ef88330:
    lh	$v0,2($s2)
    lh	$a0,2($s3)
    slt	$v0,$a0,$v0
    bnezl	$v0,.L5ef88240
    lbu	$a1,2($s6)
    lh	$v1,6($s2)
    slt	$v1,$a0,$v1
    beqzl	$v1,.L5ef88324
    addiu	$s2,$s2,8
    lh	$a2,0($s2)
    lh	$a0,0($s3)
    addu	$a1,$a0,$a3
    slt	$a1,$a1,$a2
    bnezl	$a1,.L5ef88324
    addiu	$s2,$s2,8
    lh	$at,4($s2)
    slt	$at,$a0,$at
    beqz	$at,.L5ef88320
    slt	$v0,$a0,$a2
    bnez	$v0,.L5ef88388
    move	$a6,$a2
    move	$a6,$a0
.L5ef88388:
    sh	$a6,0($sp)
    lh	$a0,4($s2)
    lw	$at,0($s4)
    lh	$a2,0($s3)
    addu	$a2,$a2,$at
    slt	$v1,$a0,$a2
    beqz	$v1,.L5ef882b4
    move	$t0,$a0
    b	.L5ef882b8
    nop
.L5ef883b0:
    b	.L5ef8823c
    lw	$a3,0($s4)
.L5ef883b8:
    b	.L5ef8823c
    lw	$a3,0($s4)
.end nfbSetSpans

.globl nfbGetSpans
.ent nfbGetSpans
nfbGetSpans:
    addiu	$sp,$sp,-208
    sd	$s0,96($sp)
    move	$s0,$a5
    sd	$s7,88($sp)
    move	$s7,$a4
    sd	$s8,112($sp)
    move	$s8,$a2
    sd	$s3,104($sp)
    move	$s3,$a0
    sd	$gp,120($sp)
    lbu	$at,0($a0)
    lui	$v0,0x13
    addiu	$v0,$v0,16700
    beqz	$at,.L5ef8a518
    addu	$gp,$t9,$v0
    li	$v0,32
    lbu	$a0,3($s3)
    move	$a2,$s8
    li	$v1,1
    beq	$a0,$v1,.L5ef8a788
    li	$at,16
    li	$a6,8
    beql	$a0,$a6,.L5ef8abec
    move	$a0,$s3
    beql	$a0,$at,.L5ef8ac24
    move	$a0,$s3
    beq	$a0,$v0,.L5ef8a750
    sd	$ra,64($sp)
    # lw $t9, -29696($gp)
    la	$a0,local_0x5f0a0000
    sd	$a3,136($sp)
    jal	FatalError
    addiu	$a0,$a0,568
    sd	$s4,40($sp)
    ld	$a3,136($sp)
    ld	$ra,64($sp)
.L5ef8a518:
    sd	$s4,40($sp)
    lw	$at,nfbWindowPrivateIndex
    lw	$s4,132($s3)
    sll	$at,$at,0x2
    addu	$s4,$s4,$at
    lw	$s4,0($s4)
    lw	$s4,0($s4)
    andi	$v0,$s7,0x1
    blez	$s7,.L5ef8a730
    lw	$s4,20($s4)
    move	$a0,$s7
    sd	$s5,56($sp)
    la	$s5,PixmapWidthPaddingInfo
    sd	$s2,80($sp)
    move	$s2,$a3
    sd	$s1,48($sp)
    move	$s1,$s8
    sd	$s6,72($sp)
    sll	$s6,$s7,0x2
    beqz	$v0,.L5ef8a604
    addu	$s6,$s6,$s8
    lh	$v0,0($s1)
    sh	$v0,8($sp)
    sd	$ra,64($sp)
    lw	$at,0($s2)
    lh	$ra,0($s1)
    sd	$a0,128($sp)
    addu	$ra,$ra,$at
    sh	$ra,12($sp)
    addiu	$a0,$sp,8
    lh	$t9,2($s1)
    move	$a1,$s0
    move	$a2,$zero
    sh	$t9,10($sp)
    move	$a3,$s3
    lh	$t8,2($s1)
    addiu	$s2,$s2,4
    move	$t9,$s4
    addiu	$t8,$t8,1
    jalr	$s4
    sh	$t8,14($sp)
    lh	$at,8($sp)
    lh	$ra,12($sp)
    lbu	$a6,2($s3)
    addiu	$s1,$s1,4
    subu	$ra,$ra,$at
    sll	$a0,$a6,0x2
    subu	$a0,$a0,$a6
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s5
    lw	$v1,0($a0)
    lw	$a6,4($a0)
    lw	$a0,8($a0)
    addu	$v1,$v1,$ra
    ld	$ra,64($sp)
    srav	$v1,$v1,$a6
    sllv	$v1,$v1,$a0
    ld	$a0,128($sp)
    addu	$s0,$v1,$s0
.L5ef8a604:
    sra	$at,$a0,0x1
    beqz	$at,.L5ef8a71c
    sd	$ra,64($sp)
.L5ef8a610:
    lh	$a2,0($s1)
    sh	$a2,8($sp)
    lw	$a1,0($s2)
    lh	$a0,0($s1)
    addu	$a0,$a0,$a1
    sh	$a0,12($sp)
    move	$a3,$s3
    lh	$v1,2($s1)
    move	$t9,$s4
    addiu	$s1,$s1,8
    sh	$v1,10($sp)
    move	$a2,$zero
    lh	$v0,-6($s1)
    move	$a1,$s0
    addiu	$a0,$sp,8
    addiu	$v0,$v0,1
    jalr	$s4
    sh	$v0,14($sp)
    addiu	$a0,$sp,8
    lbu	$a6,2($s3)
    move	$a2,$zero
    move	$t9,$s4
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    lh	$a6,12($sp)
    sll	$a5,$a5,0x2
    lh	$t2,-4($s1)
    addu	$a5,$a5,$s5
    lh	$t1,8($sp)
    sh	$t2,8($sp)
    lw	$a4,0($a5)
    lw	$t0,4($s2)
    lh	$a7,-4($s1)
    subu	$a6,$a6,$t1
    addu	$a4,$a4,$a6
    addu	$a7,$a7,$t0
    sh	$a7,12($sp)
    lw	$a6,4($a5)
    lh	$a7,-2($s1)
    lw	$a5,8($a5)
    srav	$a4,$a4,$a6
    sh	$a7,10($sp)
    sllv	$a4,$a4,$a5
    lh	$a3,-2($s1)
    addu	$s0,$a4,$s0
    move	$a1,$s0
    addiu	$a3,$a3,1
    sh	$a3,14($sp)
    jalr	$s4
    move	$a3,$s3
    lh	$v1,8($sp)
    lh	$a6,12($sp)
    lbu	$at,2($s3)
    addiu	$s2,$s2,8
    subu	$a6,$a6,$v1
    sll	$v0,$at,0x2
    subu	$v0,$v0,$at
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s5
    lw	$at,0($v0)
    lw	$v1,4($v0)
    lw	$v0,8($v0)
    addu	$at,$at,$a6
    srav	$at,$at,$v1
    sllv	$at,$at,$v0
    bne	$s1,$s6,.L5ef8a610
    addu	$s0,$at,$s0
.L5ef8a71c:
    ld	$s5,56($sp)
    ld	$s1,48($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    ld	$s2,80($sp)
.L5ef8a730:
    ld	$gp,120($sp)
    ld	$s0,96($sp)
    ld	$s3,104($sp)
    ld	$s4,40($sp)
    ld	$s7,88($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef8a750:
    move	$a0,$s3
    # lw $t9, -31640($gp)
    move	$a2,$s8
    move	$a4,$s7
    jal	cfb32GetSpans
    move	$a5,$s0
    ld	$gp,120($sp)
    ld	$s0,96($sp)
    ld	$s3,104($sp)
    ld	$ra,64($sp)
    ld	$s7,88($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef8a788:
    sd	$s2,80($sp)
    sd	$s6,72($sp)
    sd	$ra,64($sp)
    sd	$s1,48($sp)
    sd	$s5,56($sp)
    sd	$s4,40($sp)
    move	$t8,$s0
    move	$s0,$a3
    lw	$a6,0($sp)
    lw	$v1,32($s3)
    sd	$s8,144($sp)
    sll	$a0,$s7,0x2
    addu	$v0,$a0,$s8
    lw	$s8,28($s3)
    addiu	$s3,$gp,-28284
    sd	$v0,24($sp)
    sltu	$v0,$a2,$v0
    sd	$v1,16($sp)
    beqz	$v0,.L5ef8abb8
    srl	$s8,$s8,0x2
    move	$t9,$a2
    li	$s7,32
    addiu	$s4,$gp,-28148
    sd	$s2,80($sp)
    sd	$ra,64($sp)
    sd	$s1,48($sp)
    sd	$s5,56($sp)
    sll	$s6,$s8,0x5
    b	.L5ef8a87c
    sd	$a6,32($sp)
.L5ef8a800:
    sll	$v1,$a5,0x2
    lw	$a6,4($t8)
    sll	$v0,$a0,0x2
    addu	$at,$v0,$s3
    addu	$v1,$v1,$s4
    lw	$v1,0($v1)
    addu	$v0,$v0,$s4
    lw	$at,-128($at)
    and	$v1,$v1,$a3
    or	$v1,$v1,$a2
    sw	$v1,0($t8)
    lw	$v0,-128($v0)
    lw	$v1,0($a4)
    and	$at,$at,$a6
    subu	$a6,$s7,$a5
    sllv	$v1,$v1,$a6
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,4($t8)
.L5ef8a84c:
    slti	$v0,$a0,33
    bnez	$v0,.L5ef8a85c
    nop
    addiu	$t8,$t8,4
.L5ef8a85c:
    beqz	$s1,.L5ef8ab88
    nop
    addiu	$t8,$t8,4
.L5ef8a868:
    ld	$v1,24($sp)
.L5ef8a86c:
    addiu	$t9,$t9,4
    sltu	$v1,$t9,$v1
    beqzl	$v1,.L5ef8abbc
    ld	$gp,120($sp)
.L5ef8a87c:
    lh	$a4,0($t9)
    lw	$a0,0($s0)
    addiu	$s0,$s0,4
    sra	$at,$a4,0x5
    addu	$a0,$a4,$a0
    slt	$a6,$a0,$s6
    beqz	$a6,.L5ef8a8a8
    andi	$a3,$a4,0x1f
    move	$a2,$a0
    b	.L5ef8a8ac
    nop
.L5ef8a8a8:
    move	$a2,$s6
.L5ef8a8ac:
    lh	$ra,2($t9)
    move	$a0,$a3
    sll	$s1,$a3,0x2
    mult	$ra,$s8
    addu	$s1,$s1,$s3
    subu	$a5,$s7,$a0
    subu	$a1,$a2,$a4
    addu	$s2,$a3,$a1
    addu	$a6,$a1,$a3
    sltiu	$a6,$a6,33
    addiu	$s2,$s2,-32
    sra	$s2,$s2,0x5
    addu	$s5,$a4,$a1
    andi	$s5,$s5,0x1f
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$s4
    mflo	$ra
    addu	$ra,$ra,$at
    ld	$at,16($sp)
    sll	$ra,$ra,0x2
    beqz	$a6,.L5ef8a93c
    addu	$ra,$ra,$at
    sll	$v0,$a1,0x2
    addiu	$t8,$t8,4
    lw	$a6,-4($t8)
    lw	$v1,0($ra)
    addu	$at,$v0,$s3
    addu	$v0,$v0,$s4
    lw	$v0,0($v0)
    lw	$at,0($at)
    sllv	$v1,$v1,$a0
    and	$v0,$v0,$v1
    and	$at,$at,$a6
    or	$at,$at,$v0
    b	.L5ef8a868
    sw	$at,-4($t8)
.L5ef8a93c:
    lw	$s1,0($s1)
    beqz	$s1,.L5ef8ab78
    lw	$s5,0($s5)
.L5ef8a948:
    beqz	$s5,.L5ef8a954
    andi	$at,$a2,0x1f
    sd	$at,32($sp)
.L5ef8a954:
    beqz	$s1,.L5ef8a9b0
    subu	$a2,$s7,$a0
    addu	$v1,$a5,$a0
    lw	$a1,0($ra)
    slt	$a6,$a2,$a5
    beqz	$a6,.L5ef8a97c
    sllv	$a1,$a1,$a0
    lw	$at,4($ra)
    srlv	$at,$at,$a2
    or	$a1,$at,$a1
.L5ef8a97c:
    lw	$at,0($t8)
    sll	$a6,$a5,0x2
    addu	$v0,$a6,$s3
    addu	$a6,$a6,$s4
    lw	$a6,0($a6)
    lw	$v0,0($v0)
    sltiu	$v1,$v1,32
    and	$a6,$a6,$a1
    and	$v0,$v0,$at
    or	$v0,$v0,$a6
    bnez	$v1,.L5ef8a9b0
    sw	$v0,0($t8)
    addiu	$ra,$ra,4
.L5ef8a9b0:
    subu	$a7,$s7,$a5
    addiu	$at,$gp,-28012
    sll	$t1,$a5,0x2
    sll	$t2,$s2,0x2
    andi	$t3,$a5,0x1f
    blez	$s2,.L5ef8aa48
    move	$a1,$ra
    addu	$t2,$ra,$t2
    move	$a4,$s2
    move	$a0,$t8
    addu	$t0,$t1,$s4
    addu	$t1,$t1,$s3
    sll	$t3,$t3,0x7
    andi	$v1,$s2,0x1
    beqz	$v1,.L5ef8aa3c
    addu	$t3,$t3,$at
    sd	$a4,152($sp)
    lw	$a4,0($a1)
    lw	$a3,0($a0)
    blez	$a5,.L5ef8ab98
    srlv	$a2,$a4,$a5
    lw	$v1,4($a0)
    lw	$v0,0($t1)
    lw	$at,0($t0)
    and	$v0,$v0,$v1
    sllv	$v1,$a4,$a7
    ld	$a4,152($sp)
    and	$v1,$v1,$at
    and	$at,$at,$a3
    or	$at,$at,$a2
    or	$v0,$v0,$v1
    sw	$v0,4($a0)
    sw	$at,0($a0)
.L5ef8aa34:
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
.L5ef8aa3c:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L5ef8aaf4
    lw	$a4,0($a1)
.L5ef8aa48:
    slt	$at,$s2,$zero
    bnezl	$at,.L5ef8aa54
    move	$s2,$zero
.L5ef8aa54:
    sll	$a1,$s2,0x2
    addu	$a4,$ra,$a1
    beqz	$s5,.L5ef8a85c
    addu	$t8,$t8,$a1
    lw	$a3,0($t8)
    andi	$v1,$a5,0x1f
    ld	$a0,32($sp)
    lw	$a2,0($a4)
    addu	$a0,$a5,$a0
    slti	$v0,$a0,33
    beqz	$v0,.L5ef8a800
    srlv	$a2,$a2,$a5
    sll	$v1,$v1,0x5
    ld	$at,32($sp)
    addiu	$v0,$gp,-28012
    andi	$at,$at,0x1f
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    nor	$a6,$at,$zero
    and	$at,$at,$a2
    and	$a6,$a6,$a3
    or	$a6,$a6,$at
    b	.L5ef8a84c
    sw	$a6,0($t8)
.L5ef8aabc:
    lw	$a6,8($a0)
    lw	$v1,0($t1)
    lw	$v0,0($t0)
    and	$v1,$v1,$a6
    sllv	$a6,$a4,$a7
    and	$a6,$a6,$v0
    and	$v0,$v0,$a3
    or	$v0,$v0,$a2
    or	$v1,$v1,$a6
    sw	$v1,8($a0)
    sw	$v0,4($a0)
.L5ef8aae8:
    beq	$a1,$t2,.L5ef8aa48
    addiu	$a0,$a0,8
    lw	$a4,0($a1)
.L5ef8aaf4:
    lw	$a3,0($a0)
    blez	$a5,.L5ef8ab5c
    srlv	$a2,$a4,$a5
    lw	$v1,4($a0)
    lw	$v0,0($t1)
    lw	$at,0($t0)
    and	$v0,$v0,$v1
    sllv	$v1,$a4,$a7
    and	$v1,$v1,$at
    and	$at,$at,$a3
    or	$at,$at,$a2
    or	$v0,$v0,$v1
    sw	$v0,4($a0)
    sw	$at,0($a0)
.L5ef8ab2c:
    lw	$a3,4($a0)
    lw	$a4,4($a1)
    addiu	$a1,$a1,8
    bgtz	$a5,.L5ef8aabc
    srlv	$a2,$a4,$a5
    lw	$at,0($t3)
    nor	$a6,$at,$zero
    and	$at,$a2,$at
    and	$a6,$a6,$a3
    or	$a6,$a6,$at
    b	.L5ef8aae8
    sw	$a6,4($a0)
.L5ef8ab5c:
    lw	$v0,0($t3)
    nor	$at,$v0,$zero
    and	$v0,$a2,$v0
    and	$at,$at,$a3
    or	$at,$at,$v0
    b	.L5ef8ab2c
    sw	$at,0($a0)
.L5ef8ab78:
    bnez	$s1,.L5ef8a948
    sra	$s2,$a1,0x5
    b	.L5ef8a948
    move	$a5,$zero
.L5ef8ab88:
    beqz	$s5,.L5ef8a86c
    ld	$v1,24($sp)
    b	.L5ef8a868
    addiu	$t8,$t8,4
.L5ef8ab98:
    lw	$v1,0($t3)
    ld	$a4,152($sp)
    nor	$v0,$v1,$zero
    and	$v1,$a2,$v1
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    b	.L5ef8aa34
    sw	$v0,0($a0)
.L5ef8abb8:
    ld	$gp,120($sp)
.L5ef8abbc:
    ld	$s0,96($sp)
    ld	$s1,48($sp)
    ld	$s2,80($sp)
    ld	$s3,104($sp)
    ld	$s4,40($sp)
    ld	$s5,56($sp)
    ld	$s6,72($sp)
    ld	$ra,64($sp)
    ld	$s7,88($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef8abec:
    move	$a2,$s8
    # lw $t9, -31080($gp)
    move	$a4,$s7
    sd	$ra,64($sp)
    jal	cfbGetSpans
    move	$a5,$s0
    ld	$gp,120($sp)
    ld	$s0,96($sp)
    ld	$s3,104($sp)
    ld	$ra,64($sp)
    ld	$s7,88($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef8ac24:
    move	$a2,$s8
    # lw $t9, -31368($gp)
    move	$a4,$s7
    sd	$ra,64($sp)
    jal	cfb16GetSpans
    move	$a5,$s0
    ld	$gp,120($sp)
    ld	$s0,96($sp)
    ld	$s3,104($sp)
    ld	$ra,64($sp)
    ld	$s7,88($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end nfbGetSpans

.globl nfbPolyPoint
.ent nfbPolyPoint
nfbPolyPoint:
    addiu	$sp,$sp,-160
    sd	$s5,32($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,24($sp)
    lui	$a5,0x14
    addiu	$a5,$a5,-11272
    addu	$gp,$t9,$a5
    lw	$v1,nfbGCPrivateIndex
    lw	$v0,76($a1)
    sd	$s8,16($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v1,nfbWindowPrivateIndex
    lw	$at,132($a0)
    lw	$s8,52($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$s7,40($v0)
    lw	$a7,8($v0)
    lw	$at,0($at)
    lbu	$v0,48($v0)
    lw	$a6,8($a7)
    lw	$at,24($at)
    sd	$v0,40($sp)
    beqz	$a6,.L5ef813e4
    sd	$at,48($sp)
    lw	$at,4($a6)
    sd	$s6,64($sp)
    beqz	$a6,.L5ef813f4
    sd	$at,0($sp)
.L5ef81250:
    addiu	$s6,$a6,8
.L5ef81254:
    li	$v0,1
    beq	$a2,$v0,.L5ef813fc
.L5ef8125c:
    move	$a0,$a4
.L5ef81260:
    blez	$a3,.L5ef8139c
    move	$a1,$zero
    sd	$ra,56($sp)
    sd	$s1,104($sp)
    move	$s1,$a4
    sd	$s2,72($sp)
    addiu	$s2,$a4,4
    sd	$s0,88($sp)
    sd	$s3,80($sp)
    sll	$s3,$a3,0x2
    sd	$s4,96($sp)
    ld	$s4,0($sp)
    addu	$s3,$s3,$a4
    addiu	$s3,$s3,4
    sll	$s0,$s4,0x3
    slti	$s4,$s4,1
    addu	$s0,$s6,$s0
    b	.L5ef812e4
    xori	$s4,$s4,0x1
.L5ef812ac:
    beqz	$a1,.L5ef812d4
    move	$a2,$s7
    ld	$a3,40($sp)
    move	$a4,$s8
    ld	$t9,48($sp)
    move	$a5,$zero
    move	$a6,$zero
    jalr	$t9
    move	$a7,$s5
    move	$a1,$zero
.L5ef812d4:
    move	$a0,$s2
.L5ef812d8:
    addiu	$s2,$s2,4
    beq	$s2,$s3,.L5ef81384
    addiu	$s1,$s1,4
.L5ef812e4:
    lh	$at,8($s5)
    lh	$t2,0($s1)
    addu	$t2,$t2,$at
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,0($s1)
    lh	$t0,2($s1)
    lh	$at,10($s5)
    move	$a6,$s6
    addu	$t0,$t0,$at
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    beqz	$s4,.L5ef812ac
    sh	$t0,2($s1)
    b	.L5ef81348
    lh	$v1,6($a6)
.L5ef81324:
    bnez	$t1,.L5ef812ac
    nop
    lh	$v0,4($a6)
    slt	$v0,$t2,$v0
    bnez	$v0,.L5ef8137c
.L5ef81338:
    addiu	$a6,$a6,8
    beq	$a6,$s0,.L5ef812ac
    nop
    lh	$v1,6($a6)
.L5ef81348:
    slt	$v1,$t0,$v1
    beqz	$v1,.L5ef81338
    li	$t1,1
    lh	$a5,2($a6)
    slt	$a5,$t0,$a5
    bnez	$a5,.L5ef81324
    nop
    lh	$at,0($a6)
    slt	$at,$t2,$at
    bnez	$at,.L5ef81324
    nop
    b	.L5ef81324
    move	$t1,$zero
.L5ef8137c:
    b	.L5ef812d8
    addiu	$a1,$a1,1
.L5ef81384:
    ld	$s1,104($sp)
    ld	$s4,96($sp)
    ld	$ra,56($sp)
    ld	$s0,88($sp)
    ld	$s3,80($sp)
    ld	$s2,72($sp)
.L5ef8139c:
    beqz	$a1,.L5ef813cc
    ld	$s6,64($sp)
    move	$a2,$s7
    ld	$a3,40($sp)
    move	$a4,$s8
    move	$a5,$zero
    ld	$t9,48($sp)
    move	$a6,$zero
    sd	$ra,56($sp)
    jalr	$t9
    move	$a7,$s5
    ld	$ra,56($sp)
.L5ef813cc:
    ld	$gp,24($sp)
    ld	$s5,32($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef813e4:
    li	$v0,1
    sd	$s6,64($sp)
    bnez	$a6,.L5ef81250
    sd	$v0,0($sp)
.L5ef813f4:
    b	.L5ef81254
    move	$s6,$a7
.L5ef813fc:
    addiu	$a2,$a3,-1
    slti	$v1,$a3,2
    bnez	$v1,.L5ef8125c
    andi	$at,$a2,0x1
    move	$a0,$a4
    sll	$a7,$a2,0x2
    beqz	$at,.L5ef81440
    addu	$a7,$a7,$a4
    lh	$at,6($a0)
    lh	$v1,4($a0)
    lh	$v0,0($a0)
    lh	$a5,2($a0)
    addiu	$a0,$a0,4
    addu	$v0,$v0,$v1
    addu	$a5,$a5,$at
    sh	$a5,2($a0)
    sh	$v0,0($a0)
.L5ef81440:
    sra	$a6,$a2,0x1
    beqz	$a6,.L5ef814e8
    move	$a1,$a0
    slti	$v0,$a6,2
    bnez	$v0,.L5ef814f0
    addiu	$a2,$a7,-8
    lh	$at,0($a1)
    lh	$v0,4($a1)
.L5ef81460:
    addu	$at,$at,$v0
    sh	$at,4($a1)
    lh	$v0,6($a1)
    lh	$at,2($a1)
    addiu	$a1,$a1,8
    addu	$at,$at,$v0
    sh	$at,-2($a1)
    lh	$a0,2($a1)
    lh	$at,-2($a1)
    lh	$v1,0($a1)
    lh	$v0,-4($a1)
    addu	$at,$at,$a0
    sh	$at,2($a1)
    addu	$at,$v0,$v1
    lh	$v0,4($a1)
    sh	$at,0($a1)
    bne	$a1,$a2,.L5ef81460
    lh	$at,0($a1)
    move	$t0,$v0
    addu	$t0,$at,$t0
    move	$a5,$a1
    sh	$t0,4($a5)
    lh	$a6,6($a5)
    lh	$v1,2($a5)
    lh	$at,8($a5)
    lh	$t0,4($a5)
    addu	$v1,$v1,$a6
    sh	$v1,6($a5)
    lh	$a6,10($a5)
    lh	$v1,6($a5)
    addu	$t0,$t0,$at
    sh	$t0,8($a5)
    addu	$v1,$v1,$a6
    sh	$v1,10($a5)
.L5ef814e8:
    b	.L5ef81260
    move	$a0,$a4
.L5ef814f0:
    move	$a0,$a1
    lh	$v1,2($a0)
    lh	$a5,6($a0)
    addu	$v1,$v1,$a5
    sh	$v1,6($a0)
    lh	$at,0($a0)
    lh	$v0,4($a0)
    lh	$v1,6($a0)
    addu	$at,$at,$v0
    sh	$at,4($a0)
    lh	$a5,10($a0)
    lh	$at,4($a0)
    lh	$v0,8($a0)
    addu	$v1,$v1,$a5
    sh	$v1,10($a0)
    addu	$at,$at,$v0
    b	.L5ef814e8
    sh	$at,8($a0)
    nop
.end nfbPolyPoint

.globl nfbSolidZeroSeg
.ent nfbSolidZeroSeg
nfbSolidZeroSeg:
    negu	$t1,$a7
    addiu	$sp,$sp,-336
    sd	$s1,104($sp)
    move	$s1,$a5
    sd	$a3,144($sp)
    sd	$a1,8($sp)
    sd	$s0,112($sp)
    move	$s0,$a7
    sd	$s7,120($sp)
    move	$s7,$a6
    move	$a6,$zero
    sd	$gp,128($sp)
    sd	$a2,160($sp)
    lui	$a2,0x13
    addiu	$a2,$a2,10248
    addu	$gp,$t9,$a2
    lw	$v1,nfbGCPrivateIndex
    lw	$v0,76($a0)
    sd	$s3,224($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v1,nfbWindowPrivateIndex
    lw	$at,132($a1)
    lw	$a0,64($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$v1,76($v0)
    lw	$at,0($at)
    lbu	$v0,72($v0)
    sd	$a0,32($sp)
    lw	$at,0($at)
    sd	$v0,56($sp)
    sd	$v1,16($sp)
    lw	$at,4($at)
    lw	$v1,356($sp)
    blez	$t1,.L5ef8c62c
    sd	$at,24($sp)
    lw	$s3,340($sp)
    move	$a7,$zero
    addiu	$a7,$a7,1
.L5ef8be60:
    addu	$a6,$a6,$s3
    slt	$at,$a6,$t1
    beqz	$at,.L5ef8be84
    nop
    addiu	$a7,$a7,1
    addu	$a6,$a6,$s3
    slt	$v0,$a6,$t1
    bnezl	$v0,.L5ef8be60
    addiu	$a7,$a7,1
.L5ef8be84:
    sd	$v1,200($sp)
    addiu	$a3,$a7,1
    slt	$v1,$v1,$a3
    beqz	$v1,.L5ef8bea8
    ld	$a0,200($sp)
    sd	$zero,200($sp)
    move	$a3,$a0
    b	.L5ef8beb8
    move	$a0,$zero
.L5ef8bea8:
    ld	$at,200($sp)
    subu	$v0,$at,$a7
    addiu	$at,$v0,-1
    sd	$at,200($sp)
.L5ef8beb8:
    lw	$v0,348($sp)
    negu	$a0,$v0
    div	$zero,$a0,$s3
    mflo	$v1
    mult	$v1,$s3
    teq	$s3,$zero,0x7
    addu	$s0,$a6,$s0
    addiu	$a6,$s1,1
    ld	$a0,200($sp)
    sd	$v1,192($sp)
    addiu	$v1,$v1,1
    sd	$v1,176($sp)
    slt	$v1,$v1,$a0
    sd	$v1,96($sp)
    addu	$v1,$s7,$a3
    mflo	$at
    addu	$at,$at,$v0
    sd	$at,168($sp)
    beqz	$a4,.L5ef8c190
    addu	$s0,$s0,$at
    ld	$v0,160($sp)
    ld	$at,144($sp)
    sd	$s6,208($sp)
    addu	$v0,$v0,$s1
    bltz	$at,.L5ef8c26c
    sd	$v0,88($sp)
    sh	$s7,2($sp)
    sh	$a6,4($sp)
    sh	$s1,0($sp)
    sd	$v1,72($sp)
    dsll32	$a7,$v1,0x10
    dsll32	$s6,$s7,0x10
    dsra32	$s6,$s6,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8bfa4
    sh	$v1,6($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8bf74
    ld	$a2,32($sp)
    addiu	$v1,$s6,1
    sd	$ra,248($sp)
    sh	$v1,6($sp)
    addiu	$v0,$a7,1
    sh	$v0,2($sp)
    ld	$a2,32($sp)
.L5ef8bf74:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$a6,4($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    ld	$ra,248($sp)
.L5ef8bfa4:
    sd	$s2,216($sp)
    ld	$s7,72($sp)
    ld	$at,96($sp)
    ld	$v0,88($sp)
    sd	$zero,184($sp)
    beqz	$at,.L5ef8c0c0
    sd	$v0,80($sp)
    sd	$s4,256($sp)
    sd	$ra,248($sp)
    sd	$s5,240($sp)
    ld	$s1,80($sp)
    ld	$v1,56($sp)
    sd	$s8,232($sp)
    addiu	$s2,$s1,1
    andi	$v1,$v1,0xff
    b	.L5ef8c05c
    sd	$v1,40($sp)
.L5ef8bfe8:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$s2,4($sp)
    ld	$a2,32($sp)
    ld	$t9,24($sp)
    ld	$a3,40($sp)
    ld	$a4,16($sp)
    jalr	$t9
    ld	$a5,8($sp)
.L5ef8c010:
    ld	$v1,184($sp)
    move	$s7,$s8
    ld	$at,200($sp)
    addiu	$v1,$v1,1
    sd	$v1,184($sp)
    subu	$v0,$at,$s5
    ld	$a0,160($sp)
    addiu	$at,$v0,-1
    negu	$v0,$s4
    addu	$s2,$s2,$a0
    addu	$s1,$s1,$a0
    ld	$a0,176($sp)
    and	$v0,$v0,$s3
    sd	$at,200($sp)
    slt	$a0,$a0,$at
    ld	$at,168($sp)
    addu	$s0,$v0,$s0
    beqz	$a0,.L5ef8c0b0
    addu	$s0,$s0,$at
.L5ef8c05c:
    sh	$s7,2($sp)
    sh	$s2,4($sp)
    sh	$s1,0($sp)
    dsll32	$s6,$s7,0x10
    ld	$s5,192($sp)
    dsra32	$s6,$s6,0x10
    slti	$s4,$s0,0
    addu	$s5,$s4,$s5
    addu	$s8,$s5,$s7
    addiu	$s8,$s8,1
    dsll32	$a6,$s8,0x10
    dsra32	$a6,$a6,0x10
    beq	$s6,$a6,.L5ef8c010
    sh	$s8,6($sp)
    slt	$at,$a6,$s6
    beqz	$at,.L5ef8bfe8
    addiu	$v1,$s6,1
    sh	$v1,6($sp)
    addiu	$v0,$a6,1
    b	.L5ef8bfe8
    sh	$v0,2($sp)
.L5ef8c0b0:
    ld	$s8,232($sp)
    ld	$s5,240($sp)
    ld	$ra,248($sp)
    ld	$s4,256($sp)
.L5ef8c0c0:
    ld	$s2,160($sp)
    ld	$s1,184($sp)
    mult	$s1,$s2
    sd	$s8,232($sp)
    sh	$s7,2($sp)
    ld	$s3,224($sp)
    mfhi	$zero
    dsll32	$s6,$s7,0x10
    ld	$a3,200($sp)
    dsra32	$s6,$s6,0x10
    addu	$a3,$s7,$a3
    sh	$a3,6($sp)
    dsll32	$a3,$a3,0x10
    ld	$s2,80($sp)
    dsra32	$a3,$a3,0x10
    mflo	$s1
    addu	$s1,$s1,$s2
    sh	$s1,0($sp)
    addiu	$s2,$s1,1
    beq	$s6,$a3,.L5ef8c16c
    sh	$s2,4($sp)
    slt	$at,$a3,$s6
    beqz	$at,.L5ef8c130
    addiu	$v1,$s6,1
    sd	$ra,248($sp)
    sh	$v1,6($sp)
    addiu	$v0,$a3,1
    sh	$v0,2($sp)
.L5ef8c130:
    ld	$a2,32($sp)
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$s2,4($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$s6,208($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    sd	$s8,232($sp)
    ld	$ra,248($sp)
.L5ef8c16c:
    ld	$gp,128($sp)
    ld	$s0,112($sp)
    ld	$s1,104($sp)
    ld	$s2,216($sp)
    ld	$s6,208($sp)
    ld	$s7,120($sp)
    ld	$s8,232($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L5ef8c190:
    sd	$s6,208($sp)
    ld	$v0,144($sp)
    ld	$at,160($sp)
    addiu	$a6,$s7,1
    addu	$v0,$v0,$s7
    bltz	$at,.L5ef8c63c
    sd	$v0,64($sp)
    sh	$a6,6($sp)
    sh	$s7,2($sp)
    sh	$s1,0($sp)
    addu	$v1,$s1,$a3
    sd	$v1,48($sp)
    dsll32	$s6,$s1,0x10
    dsra32	$s6,$s6,0x10
    dsll32	$a7,$v1,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8c22c
    sh	$v1,4($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8c1fc
    ld	$a2,32($sp)
    sd	$ra,248($sp)
    addiu	$v0,$a7,1
    addiu	$v1,$s6,1
    sh	$v1,4($sp)
    sh	$v0,0($sp)
    ld	$a2,32($sp)
.L5ef8c1fc:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s7,2($sp)
    sh	$a6,6($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    ld	$ra,248($sp)
.L5ef8c22c:
    sd	$s2,216($sp)
    ld	$at,96($sp)
    ld	$s7,64($sp)
    ld	$a6,48($sp)
    beqz	$at,.L5ef8c40c
    sd	$zero,152($sp)
    sd	$s4,256($sp)
    sd	$ra,248($sp)
    sd	$s5,240($sp)
    sd	$s8,232($sp)
    ld	$v0,56($sp)
    addiu	$s1,$s7,1
    move	$s2,$s7
    andi	$v0,$v0,0xff
    b	.L5ef8c3a8
    sd	$v0,40($sp)
.L5ef8c26c:
    sh	$a6,4($sp)
    sh	$s1,0($sp)
    subu	$s7,$s7,$a3
    addiu	$s7,$s7,1
    sh	$s7,2($sp)
    dsll32	$s6,$s7,0x10
    dsra32	$s6,$s6,0x10
    addu	$v1,$s7,$a3
    dsll32	$a7,$v1,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8c2f4
    sh	$v1,6($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8c2c0
    ld	$a2,32($sp)
    sd	$ra,248($sp)
    addiu	$v0,$a7,1
    addiu	$v1,$s6,1
    sh	$v1,6($sp)
    sh	$v0,2($sp)
    ld	$a2,32($sp)
.L5ef8c2c0:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$a6,4($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    sd	$s8,232($sp)
    ld	$ra,248($sp)
.L5ef8c2f4:
    sd	$s2,216($sp)
    sd	$s8,232($sp)
    ld	$at,96($sp)
    ld	$v0,88($sp)
    move	$s8,$zero
    beqz	$at,.L5ef8c58c
    sd	$v0,80($sp)
    sd	$s4,256($sp)
    sd	$ra,248($sp)
    ld	$s1,80($sp)
    ld	$v1,56($sp)
    sd	$s5,240($sp)
    addiu	$s2,$s1,1
    andi	$v1,$v1,0xff
    b	.L5ef8c524
    sd	$v1,40($sp)
.L5ef8c334:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s2,2($sp)
    sh	$s1,6($sp)
    ld	$a2,32($sp)
    ld	$t9,24($sp)
    ld	$a3,40($sp)
    ld	$a4,16($sp)
    jalr	$t9
    ld	$a5,8($sp)
.L5ef8c35c:
    ld	$v1,152($sp)
    move	$a6,$s8
    ld	$at,200($sp)
    addiu	$v1,$v1,1
    sd	$v1,152($sp)
    subu	$v0,$at,$s5
    ld	$a0,144($sp)
    addiu	$at,$v0,-1
    negu	$v0,$s4
    addu	$s1,$s1,$a0
    addu	$s2,$s2,$a0
    ld	$a0,176($sp)
    and	$v0,$v0,$s3
    sd	$at,200($sp)
    slt	$a0,$a0,$at
    ld	$at,168($sp)
    addu	$s0,$v0,$s0
    beqz	$a0,.L5ef8c3fc
    addu	$s0,$s0,$at
.L5ef8c3a8:
    sh	$s1,6($sp)
    sh	$s2,2($sp)
    sh	$a6,0($sp)
    dsll32	$s6,$a6,0x10
    ld	$s5,192($sp)
    dsra32	$s6,$s6,0x10
    slti	$s4,$s0,0
    addu	$s5,$s4,$s5
    addu	$s8,$s5,$a6
    addiu	$s8,$s8,1
    dsll32	$a7,$s8,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8c35c
    sh	$s8,4($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8c334
    addiu	$v1,$s6,1
    sh	$v1,4($sp)
    addiu	$v0,$a7,1
    b	.L5ef8c334
    sh	$v0,0($sp)
.L5ef8c3fc:
    ld	$s8,232($sp)
    ld	$s5,240($sp)
    ld	$ra,248($sp)
    ld	$s4,256($sp)
.L5ef8c40c:
    ld	$s2,144($sp)
    ld	$s1,152($sp)
    mult	$s1,$s2
    sd	$s8,232($sp)
    sh	$a6,0($sp)
    ld	$s3,224($sp)
    ld	$a3,200($sp)
    mfhi	$zero
    dsll32	$s6,$a6,0x10
    dsra32	$s6,$s6,0x10
    addu	$a3,$a6,$a3
    sh	$a3,4($sp)
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    mflo	$s2
    addu	$s2,$s2,$s7
    sh	$s2,2($sp)
    addiu	$s1,$s2,1
    beq	$s6,$a3,.L5ef8c16c
    sh	$s1,6($sp)
    slt	$at,$a3,$s6
    beqz	$at,.L5ef8c480
    ld	$a2,32($sp)
    sd	$ra,248($sp)
    addiu	$v0,$a3,1
    addiu	$v1,$s6,1
    sh	$v1,4($sp)
    sh	$v0,0($sp)
    ld	$a2,32($sp)
.L5ef8c480:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s2,2($sp)
    sh	$s1,6($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$s6,208($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    sd	$s8,232($sp)
    b	.L5ef8c16c
    ld	$ra,248($sp)
.L5ef8c4bc:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$s2,4($sp)
    ld	$a2,32($sp)
    ld	$t9,24($sp)
    ld	$a3,40($sp)
    ld	$a4,16($sp)
    jalr	$t9
    ld	$a5,8($sp)
.L5ef8c4e4:
    addiu	$s8,$s8,1
    ld	$a0,160($sp)
    addu	$s2,$s2,$a0
    ld	$v0,200($sp)
    addu	$s1,$s1,$a0
    ld	$at,176($sp)
    subu	$v1,$v0,$s5
    addiu	$v0,$v1,-1
    negu	$v1,$s4
    and	$v1,$v1,$s3
    sd	$v0,200($sp)
    slt	$at,$at,$v0
    ld	$v0,168($sp)
    addu	$s0,$v1,$s0
    beqz	$at,.L5ef8c580
    addu	$s0,$s0,$v0
.L5ef8c524:
    sh	$s2,4($sp)
    ld	$s5,192($sp)
    sh	$s1,0($sp)
    slti	$s4,$s0,0
    addu	$s5,$s4,$s5
    subu	$s7,$s7,$s5
    addiu	$s7,$s7,-1
    sh	$s7,2($sp)
    dsll32	$s6,$s7,0x10
    dsra32	$s6,$s6,0x10
    addu	$at,$s5,$s7
    addiu	$at,$at,1
    dsll32	$a6,$at,0x10
    dsra32	$a6,$a6,0x10
    beq	$s6,$a6,.L5ef8c4e4
    sh	$at,6($sp)
    slt	$at,$a6,$s6
    beqz	$at,.L5ef8c4bc
    addiu	$v1,$s6,1
    sh	$v1,6($sp)
    addiu	$v0,$a6,1
    b	.L5ef8c4bc
    sh	$v0,2($sp)
.L5ef8c580:
    ld	$s5,240($sp)
    ld	$ra,248($sp)
    ld	$s4,256($sp)
.L5ef8c58c:
    ld	$s1,160($sp)
    mult	$s8,$s1
    sh	$s7,6($sp)
    ld	$a3,200($sp)
    ld	$s3,224($sp)
    ld	$s2,80($sp)
    subu	$a3,$s7,$a3
    sh	$a3,2($sp)
    mfhi	$zero
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    mflo	$s1
    addu	$s1,$s1,$s2
    sh	$s1,0($sp)
    addiu	$s2,$s1,1
    beq	$s6,$a3,.L5ef8c16c
    sh	$s2,4($sp)
    slt	$at,$s6,$a3
    beqz	$at,.L5ef8c5f0
    ld	$s8,232($sp)
    sd	$ra,248($sp)
    addiu	$v0,$s6,1
    addiu	$v1,$a3,1
    sh	$v1,6($sp)
    sh	$v0,2($sp)
.L5ef8c5f0:
    ld	$a2,32($sp)
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s1,0($sp)
    sh	$s2,4($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$s6,208($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    b	.L5ef8c16c
    ld	$ra,248($sp)
.L5ef8c62c:
    move	$a7,$zero
    move	$a6,$zero
    b	.L5ef8be84
    lw	$s3,340($sp)
.L5ef8c63c:
    sh	$a6,6($sp)
    sh	$s7,2($sp)
    subu	$s1,$s1,$a3
    addiu	$s1,$s1,1
    sh	$s1,0($sp)
    dsll32	$s6,$s1,0x10
    dsra32	$s6,$s6,0x10
    addu	$at,$s1,$a3
    dsll32	$a7,$at,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8c6c0
    sh	$at,4($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8c690
    ld	$a2,32($sp)
    sd	$ra,248($sp)
    addiu	$v0,$a7,1
    addiu	$v1,$s6,1
    sh	$v1,4($sp)
    sh	$v0,0($sp)
    ld	$a2,32($sp)
.L5ef8c690:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s7,2($sp)
    sh	$a6,6($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    ld	$ra,248($sp)
.L5ef8c6c0:
    sd	$s2,216($sp)
    ld	$at,96($sp)
    sd	$s8,232($sp)
    ld	$s7,64($sp)
    beqz	$at,.L5ef8c7d4
    sd	$zero,136($sp)
    sd	$s4,256($sp)
    sd	$ra,248($sp)
    sd	$s5,240($sp)
    ld	$v0,56($sp)
    addiu	$s2,$s7,1
    move	$s8,$s7
    andi	$v0,$v0,0xff
    b	.L5ef8c76c
    sd	$v0,40($sp)
.L5ef8c6fc:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s8,2($sp)
    sh	$s2,6($sp)
    ld	$a2,32($sp)
    ld	$t9,24($sp)
    ld	$a3,40($sp)
    ld	$a4,16($sp)
    jalr	$t9
    ld	$a5,8($sp)
.L5ef8c724:
    ld	$a0,200($sp)
    ld	$v1,144($sp)
    subu	$at,$a0,$s5
    addiu	$a0,$at,-1
    sd	$a0,200($sp)
    ld	$v0,136($sp)
    addu	$s2,$s2,$v1
    addu	$s8,$s8,$v1
    ld	$v1,176($sp)
    addiu	$v0,$v0,1
    ld	$at,168($sp)
    sd	$v0,136($sp)
    negu	$v0,$s4
    and	$v0,$v0,$s3
    addu	$s0,$v0,$s0
    slt	$v1,$v1,$a0
    beqz	$v1,.L5ef8c7c8
    addu	$s0,$s0,$at
.L5ef8c76c:
    sh	$s2,6($sp)
    ld	$s5,192($sp)
    sh	$s8,2($sp)
    slti	$s4,$s0,0
    addu	$s5,$s4,$s5
    subu	$s1,$s1,$s5
    addiu	$s1,$s1,-1
    sh	$s1,0($sp)
    dsll32	$s6,$s1,0x10
    dsra32	$s6,$s6,0x10
    addu	$a0,$s5,$s1
    addiu	$a0,$a0,1
    dsll32	$a7,$a0,0x10
    dsra32	$a7,$a7,0x10
    beq	$s6,$a7,.L5ef8c724
    sh	$a0,4($sp)
    slt	$at,$a7,$s6
    beqz	$at,.L5ef8c6fc
    addiu	$v1,$s6,1
    sh	$v1,4($sp)
    addiu	$v0,$a7,1
    b	.L5ef8c6fc
    sh	$v0,0($sp)
.L5ef8c7c8:
    ld	$s5,240($sp)
    ld	$ra,248($sp)
    ld	$s4,256($sp)
.L5ef8c7d4:
    ld	$s3,144($sp)
    ld	$s2,136($sp)
    mult	$s2,$s3
    ld	$a3,200($sp)
    sh	$s1,4($sp)
    ld	$s3,224($sp)
    subu	$a3,$s1,$a3
    sh	$a3,0($sp)
    mfhi	$zero
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    mflo	$s8
    addu	$s8,$s8,$s7
    sh	$s8,2($sp)
    addiu	$s2,$s8,1
    beq	$s6,$a3,.L5ef8c16c
    sh	$s2,6($sp)
    slt	$at,$s6,$a3
    beqz	$at,.L5ef8c83c
    ld	$a2,32($sp)
    sd	$ra,248($sp)
    addiu	$v0,$s6,1
    addiu	$v1,$a3,1
    sh	$v1,4($sp)
    sh	$v0,0($sp)
    ld	$a2,32($sp)
.L5ef8c83c:
    li	$a1,1
    addiu	$a0,$sp,0
    sh	$s8,2($sp)
    sh	$s2,6($sp)
    ld	$a4,16($sp)
    ld	$a5,8($sp)
    ld	$s6,208($sp)
    ld	$t9,24($sp)
    ld	$a3,56($sp)
    sd	$ra,248($sp)
    jalr	$t9
    andi	$a3,$a3,0xff
    b	.L5ef8c16c
    ld	$ra,248($sp)
    move	$at,$a0
    addiu	$sp,$sp,-192
    sd	$s0,112($sp)
    sd	$a0,80($sp)
    move	$a0,$a2
    sd	$a2,72($sp)
    sd	$a3,88($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,64($sp)
    sd	$a7,56($sp)
    # lw $t9, -29744($gp)
    sd	$a1,32($sp)
    sd	$ra,104($sp)
    jal	GetScratchGC
    lw	$a1,16($at)
    bnez	$v0,.L5ef8c8cc
    move	$s0,$v0
    ld	$ra,104($sp)
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef8c8cc:
    ld	$a0,80($sp)
    lw	$a0,16($a0)
    ld	$a3,72($sp)
    lw	$a2,204($sp)
    lw	$t9,236($a0)
    lw	$a1,196($sp)
    sd	$a2,24($sp)
    jalr	$t9
    sd	$a1,16($sp)
    beqz	$v0,.L5ef8c9fc
    sd	$v0,96($sp)
    # lw $t9, -29740($gp)
    ld	$a0,96($sp)
    jal	ValidateGC
    move	$a1,$s0
    ld	$t3,64($sp)
    ld	$t2,56($sp)
    ld	$a6,48($sp)
    ld	$a5,40($sp)
    ld	$t0,88($sp)
    li	$t1,1
    beq	$t0,$t1,.L5ef8ca18
    ld	$v0,72($sp)
    li	$t8,2
.L5ef8c92c:
    sw	$t8,4($sp)
    lw	$ra,228($sp)
    sw	$ra,12($sp)
    ld	$a0,96($sp)
    lw	$t9,72($s0)
    move	$a1,$s0
    move	$a2,$v0
    lw	$t9,8($t9)
    move	$a7,$zero
    negu	$a4,$t2
    jalr	$t9
    negu	$a3,$t3
    # lw $t9, -29628($gp)
    jal	FreeScratchGC
    move	$a0,$s0
    lw	$a7,212($sp)
    lw	$t2,220($sp)
    ld	$a6,24($sp)
    ld	$a5,16($sp)
    ld	$s0,112($sp)
    ld	$at,88($sp)
    ld	$a2,32($sp)
    ld	$v0,80($sp)
    bnez	$at,.L5ef8c9bc
    lw	$t3,72($a2)
    sw	$t2,4($sp)
    move	$a1,$v0
    li	$v0,1
    sw	$v0,12($sp)
    lw	$t9,16($t3)
    ld	$a0,96($sp)
    move	$a3,$zero
    jalr	$t9
    move	$a4,$zero
    b	.L5ef8c9d8
    nop
.L5ef8c9bc:
    sw	$t2,4($sp)
    ld	$a0,96($sp)
    lw	$t9,12($t3)
    move	$a1,$v0
    move	$a3,$zero
    jalr	$t9
    move	$a4,$zero
.L5ef8c9d8:
    ld	$t9,96($sp)
    move	$a0,$t9
    lw	$t9,16($t9)
    lw	$t9,240($t9)
    jalr	$t9
    nop
    ld	$ra,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef8c9fc:
    # lw $t9, -29628($gp)
    jal	FreeScratchGC
    move	$a0,$s0
    ld	$ra,104($sp)
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef8ca18:
    li	$t8,1
    b	.L5ef8c92c
    nop
.end nfbSolidZeroSeg

.globl nfbSaveAreas
.ent nfbSaveAreas
nfbSaveAreas:
    li	$a6,-1
    li	$a5,3
    move	$at,$a1
    move	$a1,$a4
    move	$a4,$a3
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    lui	$v0,0x14
    addiu	$v0,$v0,8828
    addu	$gp,$t9,$v0
    # lw $t9, -31972($gp)
    move	$a3,$a2
    sd	$ra,0($sp)
    bal	nfbDoBitBltSP
    move	$a2,$at
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end nfbSaveAreas

.globl nfbRestoreAreas
.ent nfbRestoreAreas
nfbRestoreAreas:
    li	$a6,-1
    li	$a5,3
    addiu	$sp,$sp,-144
    sd	$a3,32($sp)
    sd	$s0,56($sp)
    move	$s0,$a4
    negu	$a4,$a3
    negu	$a3,$a2
    move	$a2,$a1
    sd	$a1,24($sp)
    move	$a1,$a0
    sd	$a0,48($sp)
    sd	$gp,64($sp)
    lui	$at,0x14
    addiu	$at,$at,8752
    addu	$gp,$t9,$at
    # lw $t9, -31976($gp)
    sd	$ra,16($sp)
    sd	$a3,40($sp)
    bal	nfbDoBitBltPS
    move	$a0,$s0
    lw	$a6,16($s0)
    lw	$v0,116($a6)
    lw	$v0,220($v0)
    beqz	$v0,.L5ef7c4a0
    ld	$ra,16($sp)
    sd	$s2,72($sp)
    move	$s2,$a6
    lw	$t9,340($a6)
    move	$a2,$zero
    move	$a1,$zero
    jal	nfbDoBitBltPS
    addiu	$a0,$sp,0
    lw	$t9,344($s2)
    sd	$s3,80($sp)
    ld	$a1,24($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$s3,116($s2)
    lw	$at,220($s3)
    li	$v0,1
    bne	$at,$v0,.L5ef7c444
    lhu	$s3,226($s3)
    negu	$s3,$s3
.L5ef7c444:
    lw	$t9,376($s2)
    move	$a2,$s3
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,0
    move	$a0,$s0
    ld	$a1,48($sp)
    li	$a6,-1
    li	$a5,3
    ld	$a3,40($sp)
    ld	$a4,32($sp)
    # lw $t9, -31976($gp)
    addiu	$a2,$sp,0
    addu	$a4,$a4,$s3
    bal	nfbDoBitBltPS
    negu	$a4,$a4
    lw	$t9,352($s2)
    addiu	$a0,$sp,0
    ld	$s0,56($sp)
    jal	nfbDoBitBltPS
    ld	$s3,80($sp)
    ld	$s2,72($sp)
    ld	$ra,16($sp)
.L5ef7c4a0:
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end nfbRestoreAreas

.globl nfbPaintWindowBackground
.ent nfbPaintWindowBackground
nfbPaintWindowBackground:
    addiu	$sp,$sp,-112
    sd	$s0,40($sp)
    sd	$gp,24($sp)
    sd	$s2,32($sp)
    lui	$s2,0x13
    addiu	$s2,$s2,10816
    addu	$gp,$t9,$s2
    la	$s0,dbcWindowPrivateIndex
    move	$a4,$zero
    move	$s2,$a0
    lw	$s0,0($s0)
    lw	$a6,nfbWindowPrivateIndex
    lw	$t9,132($a0)
    sll	$s0,$s0,0x2
    sll	$a6,$a6,0x2
    addu	$t1,$t9,$a6
    lw	$t1,0($t1)
    addu	$s0,$s0,$t9
    beqz	$a2,.L5ef8bc0c
    lw	$t1,0($t1)
    sd	$a4,64($sp)
    sd	$a1,56($sp)
    sd	$t1,48($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,72($sp)
    jal	ErrorF
    addiu	$a0,$a0,648
    ld	$t1,48($sp)
    ld	$a1,56($sp)
    lw	$a6,nfbWindowPrivateIndex
    ld	$a4,64($sp)
    ld	$ra,72($sp)
    sll	$a6,$a6,0x2
.L5ef8bc0c:
    lw	$a3,124($s2)
    li	$a5,1
    srl	$a3,$a3,0x1e
    bne	$a5,$a3,.L5ef8bc34
    move	$t2,$s2
    lw	$s2,24($s2)
.L5ef8bc24:
    lw	$a3,124($s2)
    srl	$a3,$a3,0x1e
    beql	$a5,$a3,.L5ef8bc24
    lw	$s2,24($s2)
.L5ef8bc34:
    lw	$a7,132($s2)
    lb	$at,3($s0)
    li	$a0,-1
    addu	$a7,$a7,$a6
    beq	$at,$a0,.L5ef8bc68
    lw	$a7,0($a7)
    lb	$a6,1($s0)
    bltzl	$a6,.L5ef8bc6c
    lw	$t3,8($a7)
    sb	$a0,1($s0)
    lw	$a3,124($s2)
    move	$a4,$a6
    srl	$a3,$a3,0x1e
.L5ef8bc68:
    lw	$t3,8($a7)
.L5ef8bc6c:
    beqz	$a3,.L5ef8bc8c
    move	$a6,$a3
    beq	$a5,$a6,.L5ef8bc8c
    li	$at,3
    beq	$a6,$at,.L5ef8bcf8
    li	$v0,2
    beql	$a6,$v0,.L5ef8bcb0
    lw	$a3,8($a1)
.L5ef8bc8c:
    lb	$v1,1($s0)
    ld	$s2,32($sp)
    beq	$v1,$a0,.L5ef8bca8
    ld	$gp,24($sp)
.L5ef8bc9c:
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef8bca8:
    b	.L5ef8bc9c
    sb	$a4,1($s0)
.L5ef8bcb0:
    beqz	$a3,.L5ef8bd8c
    addiu	$t0,$a3,8
    beqzl	$a3,.L5ef8bd98
    sd	$ra,72($sp)
.L5ef8bcc0:
    sd	$ra,72($sp)
    sd	$a4,64($sp)
    lw	$a1,4($a3)
.L5ef8bccc:
    move	$a0,$t0
    move	$a5,$t2
    lw	$t9,4($t1)
    move	$a4,$t3
    li	$a3,3
    jalr	$t9
    lw	$a2,12($a7)
    li	$a0,-1
    ld	$a4,64($sp)
    b	.L5ef8bc8c
    ld	$ra,72($sp)
.L5ef8bcf8:
    lw	$at,108($s2)
    lh	$v0,8($s2)
    lhu	$at,12($at)
    div	$zero,$v0,$at
    mfhi	$a3
    sh	$a3,16($sp)
    lw	$a2,108($s2)
    lh	$v1,10($s2)
    lhu	$a2,14($a2)
    div	$zero,$v1,$a2
    mfhi	$v0
    sh	$v0,18($sp)
    lw	$a3,8($a1)
    teq	$at,$zero,0x7
    beqz	$a3,.L5ef8bda4
    teq	$a2,$zero,0x7
    beqz	$a3,.L5ef8bdac
    addiu	$t8,$a3,8
.L5ef8bd40:
    sd	$ra,72($sp)
    sd	$a4,64($sp)
    lw	$a1,4($a3)
.L5ef8bd4c:
    lw	$a5,108($s2)
    lw	$a2,32($a5)
    lw	$a3,28($a5)
    lhu	$a4,12($a5)
    lhu	$a5,14($a5)
    sw	$t2,12($sp)
    sw	$t3,4($sp)
    lw	$t9,28($t1)
    li	$a7,3
    addiu	$a6,$sp,16
    jalr	$t9
    move	$a0,$t8
    li	$a0,-1
    ld	$a4,64($sp)
    b	.L5ef8bc8c
    ld	$ra,72($sp)
.L5ef8bd8c:
    bnez	$a3,.L5ef8bcc0
    move	$t0,$a1
    sd	$ra,72($sp)
.L5ef8bd98:
    sd	$a4,64($sp)
    b	.L5ef8bccc
    li	$a1,1
.L5ef8bda4:
    bnez	$a3,.L5ef8bd40
    move	$t8,$a1
.L5ef8bdac:
    sd	$ra,72($sp)
    sd	$a4,64($sp)
    b	.L5ef8bd4c
    li	$a1,1
.end nfbPaintWindowBackground

.globl nfbPaintWindowBorder
.ent nfbPaintWindowBorder
nfbPaintWindowBorder:
    li	$at,1
    addiu	$sp,$sp,-128
    sd	$ra,80($sp)
    sd	$zero,40($sp)
    sd	$s3,24($sp)
    move	$s3,$a1
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$gp,72($sp)
    lui	$a3,0x13
    addiu	$a3,$a3,11348
    addu	$gp,$t9,$a3
    la	$v1,dbcWindowPrivateIndex
    lw	$v0,nfbWindowPrivateIndex
    lw	$a0,132($a0)
    lw	$v1,0($v1)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sd	$v0,64($sp)
    lw	$v0,0($v0)
    sd	$v1,48($sp)
    beq	$a2,$at,.L5ef8b9e8
    sd	$v0,56($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,600
.L5ef8b9e8:
    # lw $t9, -29216($gp)
    jal	nmbxCanSupportBuffers
    move	$a0,$s0
    slti	$a2,$v0,2
    bnez	$a2,.L5ef8ba10
    li	$a4,-1
    ld	$at,48($sp)
    lb	$v0,1($at)
    sb	$a4,1($at)
    sd	$v0,40($sp)
.L5ef8ba10:
    lw	$a1,124($s0)
    lui	$v1,0x3fff
    ori	$v1,$v1,0xffff
    and	$v1,$a1,$v1
    srl	$v1,$v1,0x1d
    beqz	$v1,.L5ef8baa4
    move	$a0,$s0
    lw	$a3,8($s3)
    move	$a0,$s3
    beqz	$a3,.L5ef8ba90
    li	$a1,1
    addiu	$a0,$a3,8
    beqz	$a3,.L5ef8ba9c
    ld	$s3,24($sp)
    lw	$a1,4($a3)
.L5ef8ba4c:
    ld	$t9,56($sp)
.L5ef8ba50:
    move	$a5,$s0
    ld	$a2,64($sp)
    lw	$t9,4($t9)
    li	$a3,3
    lw	$a4,8($a2)
    jalr	$t9
    lw	$a2,16($a2)
    ld	$s0,32($sp)
    ld	$ra,80($sp)
.L5ef8ba74:
    ld	$at,48($sp)
    lb	$at,1($at)
    li	$v0,-1
    beq	$at,$v0,.L5ef8bb60
    ld	$gp,72($sp)
.L5ef8ba88:
    jr	$ra
    addiu	$sp,$sp,128
.L5ef8ba90:
    ld	$s3,24($sp)
    bnezl	$a3,.L5ef8ba4c
    lw	$a1,4($a3)
.L5ef8ba9c:
    b	.L5ef8ba50
    ld	$t9,56($sp)
.L5ef8baa4:
    li	$v1,1
    srl	$v0,$a1,0x1e
    bnel	$v0,$v1,.L5ef8bad0
    lw	$v0,112($s0)
    lw	$a0,24($a0)
.L5ef8bab8:
    lw	$a2,124($a0)
    li	$at,1
    srl	$a2,$a2,0x1e
    beql	$a2,$at,.L5ef8bab8
    lw	$a0,24($a0)
    lw	$v0,112($s0)
.L5ef8bad0:
    lh	$a2,8($a0)
    lhu	$v0,12($v0)
    div	$zero,$a2,$v0
    mfhi	$v1
    sh	$v1,16($sp)
    lw	$at,112($s0)
    lh	$a2,10($a0)
    lhu	$at,14($at)
    div	$zero,$a2,$at
    mfhi	$v1
    sh	$v1,18($sp)
    lw	$a3,8($s3)
    teq	$v0,$zero,0x7
    beqz	$a3,.L5ef8bb70
    teq	$at,$zero,0x7
    addiu	$a0,$a3,8
    beqz	$a3,.L5ef8bb7c
    ld	$s3,24($sp)
.L5ef8bb18:
    lw	$a1,4($a3)
.L5ef8bb1c:
    lw	$a5,112($s0)
    ld	$t9,56($sp)
    lw	$a2,32($a5)
    ld	$ra,64($sp)
    lw	$a3,28($a5)
    lhu	$a4,12($a5)
    lw	$ra,8($ra)
    lhu	$a5,14($a5)
    sw	$s0,12($sp)
    sw	$ra,4($sp)
    lw	$t9,28($t9)
    li	$a7,3
    jalr	$t9
    addiu	$a6,$sp,16
    ld	$s0,32($sp)
    b	.L5ef8ba74
    ld	$ra,80($sp)
.L5ef8bb60:
    ld	$v0,48($sp)
    ld	$at,40($sp)
    b	.L5ef8ba88
    sb	$at,1($v0)
.L5ef8bb70:
    move	$a0,$s3
    bnez	$a3,.L5ef8bb18
    ld	$s3,24($sp)
.L5ef8bb7c:
    b	.L5ef8bb1c
    li	$a1,1
.end nfbPaintWindowBorder

.globl nfbHWStoreColors
.ent nfbHWStoreColors
nfbHWStoreColors:
    addiu	$sp,$sp,-144
    sd	$ra,104($sp)
    sd	$s1,80($sp)
    move	$s1,$a2
    sd	$s0,96($sp)
    move	$s0,$a1
    move	$a1,$s1
    sd	$gp,88($sp)
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$s2,72($sp)
    lw	$s2,12($a0)
    lui	$a0,0x14
    addiu	$a0,$a0,21956
    addu	$gp,$t9,$a0
    lw	$a3,0($s3)
    lw	$s2,116($s2)
    slti	$a0,$s0,1
    lw	$v0,0($a3)
    lw	$v1,80($s2)
    xori	$a0,$a0,0x1
    lw	$t9,88($s2)
    subu	$v0,$v0,$v1
    sll	$at,$v0,0x2
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lw	$t9,4($t9)
    lw	$a4,68($s3)
    lw	$s2,124($s2)
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x3
    addu	$s2,$s2,$t8
    beqz	$a4,.L5ef79198
    lw	$s2,16($s2)
    lh	$t8,4($a3)
    li	$at,5
    beq	$t8,$at,.L5ef791cc
    addiu	$ra,$a4,4
    beqz	$a0,.L5ef79198
    sll	$a3,$s0,0x2
    move	$a2,$s0
    li	$a5,1
    andi	$t8,$s0,0x1
    subu	$a3,$a3,$s0
    sll	$a3,$a3,0x2
    beqz	$t8,.L5ef790e8
    addu	$a3,$a3,$s1
    lw	$v0,0($a1)
    srl	$at,$v0,0x5
    sll	$at,$at,0x2
    addu	$at,$at,$ra
    lw	$t8,0($at)
    addiu	$a1,$a1,12
    sllv	$v0,$a5,$v0
    or	$t8,$t8,$v0
    sw	$t8,0($at)
.L5ef790e8:
    sra	$a4,$a2,0x1
    beqz	$a4,.L5ef79198
    move	$a0,$a1
    slti	$v0,$a4,2
    bnez	$v0,.L5ef79420
    move	$a4,$a5
    lw	$a1,0($a0)
    addiu	$a2,$a3,-24
    move	$a3,$ra
.L5ef7910c:
    srl	$at,$a1,0x5
    sll	$at,$at,0x2
    addu	$v1,$at,$a3
    lw	$v0,0($v1)
    sllv	$at,$a4,$a1
    or	$at,$v0,$at
    sw	$at,0($v1)
    lw	$a1,12($a0)
    srl	$at,$a1,0x5
    sll	$at,$at,0x2
    addu	$v1,$at,$a3
    lw	$v0,0($v1)
    sllv	$at,$a4,$a1
    addiu	$a0,$a0,24
    or	$at,$v0,$at
    sw	$at,0($v1)
    bne	$a0,$a2,.L5ef7910c
    lw	$a1,0($a0)
    move	$t8,$a1
    srl	$v1,$t8,0x5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$ra
    lw	$v0,0($v1)
    sllv	$t8,$a5,$t8
    or	$v0,$v0,$t8
    sw	$v0,0($v1)
    move	$at,$a0
    lw	$at,12($at)
    srl	$t8,$at,0x5
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$ra
    lw	$v1,0($t8)
    sllv	$at,$a5,$at
    or	$v1,$v1,$at
    sw	$v1,0($t8)
.L5ef79198:
    move	$a0,$s3
.L5ef7919c:
    move	$a1,$s0
    move	$a2,$s1
    jalr	$s2
    move	$t9,$s2
    ld	$gp,88($sp)
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$ra,104($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L5ef791cc:
    lw	$t0,32($a3)
    lw	$a7,28($a3)
    lw	$a2,24($a3)
    lw	$t1,20($a3)
    lw	$a6,16($a3)
    lw	$a1,12($a3)
    lhu	$a4,8($a3)
    li	$a3,1
    sll	$t2,$s0,0x2
    addiu	$a4,$a4,7
    sra	$a4,$a4,0x3
    addiu	$a4,$a4,3
    beqz	$a0,.L5ef79198
    sra	$a4,$a4,0x2
    subu	$t2,$t2,$s0
    move	$a5,$s1
    addu	$t3,$a4,$a4
    sll	$t2,$t2,0x2
    slti	$t8,$s0,2
    bnez	$t8,.L5ef7939c
    addu	$t2,$t2,$s1
    move	$t9,$a3
    sd	$a7,40($sp)
    sd	$a2,32($sp)
    sd	$t1,24($sp)
    sd	$a6,16($sp)
    sd	$a1,8($sp)
    sd	$t3,0($sp)
    lw	$at,0($a5)
    move	$a3,$ra
    sd	$a4,56($sp)
    sd	$t0,48($sp)
    addiu	$t8,$t2,-12
    move	$t2,$t0
    move	$t0,$a4
    move	$a4,$t9
.L5ef7925c:
    and	$at,$a1,$at
    srlv	$a0,$at,$a2
    sra	$at,$a0,0x5
    sll	$at,$at,0x2
    addu	$v1,$at,$a3
    lw	$v0,0($v1)
    sllv	$at,$a4,$a0
    or	$at,$v0,$at
    sw	$at,0($v1)
    lw	$at,0($a5)
    and	$at,$at,$a6
    srlv	$a0,$at,$a7
    sra	$at,$a0,0x5
    addu	$at,$at,$t0
    sll	$at,$at,0x2
    addu	$v1,$at,$a3
    lw	$v0,0($v1)
    sllv	$at,$a4,$a0
    or	$at,$v0,$at
    sw	$at,0($v1)
    lw	$at,0($a5)
    and	$at,$at,$t1
    srlv	$a0,$at,$t2
    sra	$at,$a0,0x5
    addu	$at,$t3,$at
    sll	$at,$at,0x2
    addu	$v1,$at,$a3
    lw	$v0,0($v1)
    sllv	$at,$a4,$a0
    addiu	$a5,$a5,12
    or	$at,$v0,$at
    sw	$at,0($v1)
    bne	$a5,$t8,.L5ef7925c
    lw	$at,0($a5)
    ld	$v0,8($sp)
    move	$v1,$at
    and	$v0,$v0,$v1
    ld	$v1,32($sp)
    srlv	$v0,$v0,$v1
    li	$v1,1
    sllv	$v1,$v1,$v0
    sra	$v0,$v0,0x5
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$ra
    lw	$a0,0($v0)
    move	$t8,$a5
    or	$a0,$a0,$v1
    sw	$a0,0($v0)
    ld	$v1,16($sp)
    lw	$v0,0($t8)
    and	$v0,$v0,$v1
    ld	$v1,40($sp)
    ld	$a0,56($sp)
    srlv	$v0,$v0,$v1
    sra	$v1,$v0,0x5
    addu	$v1,$v1,$a0
    li	$a0,1
    sllv	$a0,$a0,$v0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$ra
    lw	$v0,0($v1)
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
    ld	$v0,24($sp)
    lw	$t8,0($t8)
    and	$t8,$t8,$v0
    ld	$v0,48($sp)
    li	$a0,1
    ld	$v1,0($sp)
    srlv	$t8,$t8,$v0
    sllv	$a0,$a0,$t8
    sra	$t8,$t8,0x5
    addu	$v1,$v1,$t8
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$ra
    lw	$v0,0($v1)
    or	$v0,$v0,$a0
    sw	$v0,0($v1)
.L5ef79394:
    b	.L5ef7919c
    move	$a0,$s3
.L5ef7939c:
    lw	$t8,0($a5)
    and	$t8,$a1,$t8
    srlv	$t8,$t8,$a2
    sra	$v1,$t8,0x5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$ra
    lw	$v0,0($v1)
    sllv	$t8,$a3,$t8
    or	$v0,$v0,$t8
    sw	$v0,0($v1)
    lw	$at,0($a5)
    and	$at,$at,$a6
    srlv	$at,$at,$a7
    sra	$t8,$at,0x5
    addu	$t8,$t8,$a4
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$ra
    lw	$v1,0($t8)
    sllv	$at,$a3,$at
    or	$v1,$v1,$at
    sw	$v1,0($t8)
    lw	$v0,0($a5)
    and	$v0,$v0,$t1
    srlv	$v0,$v0,$t0
    sra	$at,$v0,0x5
    addu	$at,$t3,$at
    sll	$at,$at,0x2
    addu	$at,$at,$ra
    lw	$t8,0($at)
    sllv	$v0,$a3,$v0
    or	$t8,$t8,$v0
    b	.L5ef79394
    sw	$t8,0($at)
.L5ef79420:
    move	$a1,$a0
    lw	$at,0($a1)
    srl	$t8,$at,0x5
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$ra
    lw	$v1,0($t8)
    sllv	$at,$a5,$at
    or	$v1,$v1,$at
    sw	$v1,0($t8)
    lw	$v1,12($a1)
    srl	$v0,$v1,0x5
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$ra
    lw	$at,0($v0)
    sllv	$v1,$a5,$v1
    or	$at,$at,$v1
    b	.L5ef79198
    sw	$at,0($v0)
.end nfbHWStoreColors

.globl nfbInstallHWColormap
.ent nfbInstallHWColormap
nfbInstallHWColormap:
    lw	$a1,68($a0)
    addiu	$sp,$sp,-128
    sd	$s1,8($sp)
    sd	$s6,40($sp)
    lw	$a4,0($a1)
    sd	$gp,48($sp)
    lui	$at,0x14
    addiu	$at,$at,24108
    sd	$s7,16($sp)
    lw	$s7,12($a0)
    sd	$s5,24($sp)
    lw	$v1,0($a0)
    lw	$s7,116($s7)
    move	$s5,$a0
    lw	$v1,0($v1)
    lw	$a0,80($s7)
    addu	$gp,$t9,$at
    lw	$at,88($s7)
    subu	$v1,$v1,$a0
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,4($at)
    lw	$s1,116($s7)
    lw	$s6,124($s7)
    sll	$t9,$at,0x2
    subu	$t9,$t9,$at
    sll	$t9,$t9,0x3
    addu	$s6,$s6,$t9
    lw	$a6,8($s6)
    bltz	$a4,.L5ef788e8
    lw	$a5,4($s6)
    lw	$a1,0($s6)
    ld	$s7,16($sp)
    ld	$s5,24($sp)
    blez	$a1,.L5ef78adc
    ld	$s1,8($sp)
    move	$a0,$a5
    move	$a2,$zero
    lw	$v0,0($a0)
.L5ef7883c:
    beq	$v0,$a4,.L5ef78858
    addiu	$a0,$a0,8
    addiu	$a2,$a2,1
    bnel	$a2,$a1,.L5ef7883c
    lw	$v0,0($a0)
    b	.L5ef7885c
    lw	$a4,0($sp)
.L5ef78858:
    move	$a4,$a2
.L5ef7885c:
    blez	$a1,.L5ef7888c
    move	$a0,$a5
    move	$a2,$zero
    lw	$v1,4($a0)
.L5ef7886c:
    beq	$v1,$a4,.L5ef78888
    addiu	$a0,$a0,8
    addiu	$a2,$a2,1
    bnel	$a2,$a1,.L5ef7886c
    lw	$v1,4($a0)
    b	.L5ef78890
    sll	$v0,$a4,0x3
.L5ef78888:
    sw	$a2,4($sp)
.L5ef7888c:
    sll	$v0,$a4,0x3
.L5ef78890:
    beq	$a6,$a4,.L5ef788dc
    ld	$gp,48($sp)
    addu	$v0,$v0,$a5
    lw	$a3,4($sp)
    lw	$v1,4($v0)
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a5
    sw	$v1,4($a3)
    lw	$at,8($s6)
    sll	$at,$at,0x3
    addu	$at,$at,$a5
    lw	$at,4($at)
    sw	$at,4($v0)
    lw	$a3,8($s6)
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a5
    sw	$a4,4($a3)
    sw	$a4,8($s6)
.L5ef788d8:
    ld	$gp,48($sp)
.L5ef788dc:
    ld	$s6,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef788e8:
    sll	$v0,$a6,0x3
    addu	$v0,$v0,$a5
    lw	$v0,4($v0)
    sd	$s3,88($sp)
    sw	$v0,8($s6)
    sll	$at,$v0,0x3
    addu	$at,$at,$a5
    lw	$at,0($at)
    la	$s3,TellLostMap
    sd	$s0,64($sp)
    sw	$at,0($a1)
    sll	$s0,$at,0x3
    subu	$s0,$s0,$at
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    lw	$v1,0($s0)
    sd	$s8,56($sp)
    la	$s8,WalkTree
    beqz	$v1,.L5ef78978
    sd	$v1,32($sp)
    lw	$a0,12($s5)
    sd	$ra,80($sp)
    ld	$a2,32($sp)
    la	$s3,TellLostMap
    la	$s8,WalkTree
    addiu	$a2,$a2,8
    move	$a1,$s3
    jalr	$s8
    move	$t9,$s8
    ld	$ra,32($sp)
    lw	$ra,68($ra)
    sd	$s4,72($sp)
    li	$a3,-1
    sw	$a3,0($ra)
    b	.L5ef7897c
    ld	$ra,80($sp)
.L5ef78978:
    sd	$s4,72($sp)
.L5ef7897c:
    lw	$a0,4($s0)
    sd	$s2,96($sp)
    blez	$a0,.L5ef78a5c
    move	$s4,$zero
    sd	$s6,104($sp)
    sd	$ra,80($sp)
    b	.L5ef789ac
    move	$s2,$zero
    lw	$a0,4($s0)
.L5ef789a0:
    slt	$at,$s4,$a0
    beqz	$at,.L5ef78a54
    ld	$ra,80($sp)
.L5ef789ac:
    lw	$at,8($s0)
    addu	$at,$at,$s2
    lw	$at,0($at)
    sll	$s6,$at,0x3
    subu	$s6,$s6,$at
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s1
    lw	$s3,0($s6)
    addiu	$s4,$s4,1
    beqz	$s3,.L5ef789a0
    addiu	$s2,$s2,4
    la	$a1,TellLostMap
    addiu	$a2,$s3,8
    lw	$a0,12($s5)
    jalr	$s8
    move	$t9,$s8
    lw	$at,68($s3)
    li	$t9,-1
    sw	$t9,0($at)
    sw	$zero,0($s6)
    lw	$a3,0($s3)
    lw	$t9,80($s7)
    lw	$a3,0($a3)
    lw	$v0,88($s7)
    subu	$a3,$a3,$t9
    sll	$v1,$a3,0x2
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,4($v0)
    lw	$t9,124($s7)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$t9,$t9,$at
    lw	$t9,20($t9)
    beqzl	$t9,.L5ef789a0
    lw	$a0,4($s0)
    jalr	$t9
    move	$a0,$s3
    b	.L5ef789a0
    lw	$a0,4($s0)
.L5ef78a54:
    ld	$s2,96($sp)
    ld	$s6,104($sp)
.L5ef78a5c:
    la	$v1,rrmScreenPrivateIndex
    lw	$a0,12($s5)
    lw	$v1,0($v1)
    lw	$v0,436($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    sd	$ra,80($sp)
    ld	$s7,16($sp)
    lw	$v0,48($v0)
    ld	$s1,8($sp)
    ld	$s4,72($sp)
    beqz	$v0,.L5ef78aa0
    ld	$s3,88($sp)
    lw	$a3,20($s0)
    beqz	$a3,.L5ef78ae4
    sd	$ra,80($sp)
.L5ef78aa0:
    lw	$t9,12($s6)
    jalr	$t9
    move	$a0,$s5
    la	$a1,nfbTellGainedMap
    move	$a2,$s5
    move	$t9,$s8
    ld	$s6,40($sp)
    sw	$s5,0($s0)
    jalr	$s8
    lw	$a0,12($s5)
    ld	$s8,56($sp)
    ld	$s5,24($sp)
    ld	$s0,64($sp)
    b	.L5ef788d8
    ld	$ra,80($sp)
.L5ef78adc:
    b	.L5ef7885c
    lw	$a4,0($sp)
.L5ef78ae4:
    # lw $t9, -32140($gp)
    bal	SetReservedID
    lw	$a1,16($s0)
    li	$at,1
    b	.L5ef78aa0
    sw	$at,20($s0)
.end nfbInstallHWColormap

.globl nfbUninstallHWColormap
.ent nfbUninstallHWColormap
nfbUninstallHWColormap:
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    lw	$v0,12($a0)
    lw	$a3,68($s0)
    lw	$a0,0($a0)
    lw	$v0,116($v0)
    lui	$a2,0x14
    lw	$a0,0($a0)
    lw	$a1,80($v0)
    addiu	$a2,$a2,22856
    lw	$at,88($v0)
    subu	$a0,$a0,$a1
    sll	$v1,$a0,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,4($at)
    addu	$gp,$t9,$a2
    lw	$a7,124($v0)
    sll	$t9,$at,0x2
    subu	$t9,$t9,$at
    sll	$t9,$t9,0x3
    addu	$a7,$a7,$t9
    beqz	$a3,.L5ef78fcc
    lw	$a6,4($a7)
    lw	$a5,0($a3)
    sd	$s1,40($sp)
    bltz	$a5,.L5ef78fdc
    move	$s1,$a5
    lw	$a3,0($a7)
    blez	$a3,.L5ef78ff8
    move	$a0,$a6
    move	$a4,$zero
    lw	$v1,0($a0)
.L5ef78d0c:
    beq	$v1,$a5,.L5ef78d28
    addiu	$a0,$a0,8
    addiu	$a4,$a4,1
    bnel	$a4,$a3,.L5ef78d0c
    lw	$v1,0($a0)
    b	.L5ef78d2c
    lw	$a5,0($sp)
.L5ef78d28:
    move	$a5,$a4
.L5ef78d2c:
    blez	$a3,.L5ef78ff0
    move	$a0,$a6
    move	$a4,$zero
    lw	$a1,4($a0)
.L5ef78d3c:
    beq	$a1,$a5,.L5ef78d5c
    addiu	$a0,$a0,8
    addiu	$a4,$a4,1
    bnel	$a4,$a3,.L5ef78d3c
    lw	$a1,4($a0)
    lw	$t0,4($sp)
    b	.L5ef78d64
    lw	$at,8($a7)
.L5ef78d5c:
    move	$t0,$a4
.L5ef78d60:
    lw	$at,8($a7)
.L5ef78d64:
    sll	$a3,$a5,0x3
    bne	$at,$a5,.L5ef78d78
    addu	$a3,$a3,$a6
    lw	$v1,4($a3)
    sw	$v1,8($a7)
.L5ef78d78:
    lw	$at,4($a3)
    sll	$v1,$t0,0x3
    addu	$v1,$v1,$a6
    sw	$at,4($v1)
    lw	$a2,8($a7)
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$a6
    lw	$a2,4($a2)
    sw	$a2,4($a3)
    lw	$a1,8($a7)
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$a6
    sw	$a5,4($a1)
    lw	$a0,12($s0)
    lw	$a1,8($s0)
    lw	$a0,28($a0)
    beq	$a1,$a0,.L5ef78f64
    sd	$v0,48($sp)
    # lw $t9, -29684($gp)
    sd	$ra,56($sp)
    jal	LookupIDByType
    li	$a1,6
    la	$a3,rrmScreenPrivateIndex
    lw	$a6,12($s0)
    lw	$a3,0($a3)
    lw	$a5,436($a6)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    lw	$a3,0($a3)
    sd	$v0,8($sp)
    lw	$a1,48($a3)
    sll	$a5,$s1,0x3
    subu	$a5,$a5,$s1
    beqz	$a1,.L5ef78e4c
    sll	$a5,$a5,0x2
    lw	$a1,116($a6)
    lw	$a1,116($a1)
    addu	$a1,$a1,$a5
    lw	$a1,16($a1)
    sll	$v1,$a1,0x3
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lhu	$at,168($v1)
    li	$a1,-3
    and	$at,$at,$a1
    sh	$at,168($v1)
    lw	$a6,12($s0)
    lw	$a6,116($a6)
    lw	$a6,116($a6)
    addu	$a6,$a6,$a5
    sw	$zero,20($a6)
    lw	$a6,12($s0)
.L5ef78e4c:
    lw	$a6,116($a6)
    lw	$a6,116($a6)
    addiu	$a2,$s0,8
    sd	$a5,16($sp)
    addu	$a5,$a6,$a5
    sw	$zero,0($a5)
    la	$a1,TellLostMap
    lw	$a4,68($s0)
    # lw $t9, -29772($gp)
    li	$a3,-1
    sw	$a3,0($a4)
    jal	WalkTree
    lw	$a0,12($s0)
    ld	$v0,48($sp)
    lw	$at,0($s0)
    lw	$a3,80($v0)
    lw	$at,0($at)
    lw	$a4,88($v0)
    subu	$at,$at,$a3
    sll	$ra,$at,0x2
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addu	$ra,$ra,$a4
    lw	$ra,4($ra)
    lw	$a0,124($v0)
    sll	$t9,$ra,0x2
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    addu	$t9,$a0,$t9
    lw	$t9,20($t9)
    beqz	$t9,.L5ef78ee8
    ld	$ra,56($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v0,48($sp)
    ld	$ra,56($sp)
    lw	$a3,80($v0)
    lw	$a4,88($v0)
    lw	$a0,124($v0)
.L5ef78ee8:
    ld	$t0,8($sp)
    lw	$t0,0($t0)
    lw	$t0,0($t0)
    ld	$a6,16($sp)
    lw	$a5,116($v0)
    subu	$t0,$t0,$a3
    sll	$a7,$t0,0x2
    addu	$a7,$a7,$t0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a4
    lw	$a7,4($a7)
    addu	$a5,$a5,$a6
    sll	$a6,$a7,0x2
    subu	$a6,$a6,$a7
    sll	$a6,$a6,0x3
    addu	$a6,$a0,$a6
    lw	$t0,4($a6)
    lw	$a6,0($a6)
    move	$a7,$zero
    blez	$a6,.L5ef78f48
    move	$a4,$t0
    b	.L5ef78f8c
    sll	$t1,$a6,0x3
.L5ef78f44:
    li	$a7,1
.L5ef78f48:
    beqzl	$a7,.L5ef78f68
    ld	$gp,32($sp)
.L5ef78f50:
    lw	$t9,12($s0)
    lw	$t9,316($t9)
    jalr	$t9
    ld	$a0,8($sp)
    ld	$ra,56($sp)
.L5ef78f64:
    ld	$gp,32($sp)
.L5ef78f68:
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef78f78:
    li	$a7,1
.L5ef78f7c:
    bnez	$a7,.L5ef78f50
    addu	$at,$t1,$t0
    beq	$at,$a4,.L5ef78f48
    nop
.L5ef78f8c:
    lw	$a0,0($a4)
    beq	$s1,$a0,.L5ef78f44
    addiu	$a4,$a4,8
    lw	$a6,4($a5)
    blez	$a6,.L5ef78f7c
    nop
    lw	$v0,8($a5)
    sll	$a3,$a6,0x2
    addu	$a3,$v0,$a3
    lw	$at,0($v0)
.L5ef78fb4:
    beq	$at,$a0,.L5ef78f78
    addiu	$v0,$v0,4
    bnel	$v0,$a3,.L5ef78fb4
    lw	$at,0($v0)
    b	.L5ef78f7c
    nop
.L5ef78fcc:
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef78fdc:
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef78ff0:
    b	.L5ef78d60
    lw	$t0,4($sp)
.L5ef78ff8:
    b	.L5ef78d2c
    lw	$a5,0($sp)
.end nfbUninstallHWColormap

.globl nfbCreateHWColormap
.ent nfbCreateHWColormap
nfbCreateHWColormap:
    li	$v0,5
    lw	$a5,0($a0)
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lh	$at,4($a5)
    sd	$s0,0($sp)
    move	$s0,$a0
    beq	$at,$v0,.L5ef794f8
    lhu	$a5,8($a5)
    # lw $t9, -29492($gp)
    addiu	$a0,$a5,31
    sra	$a0,$a0,0x3
    jal	Xalloc
    addiu	$a0,$a0,8
    sw	$v0,68($s0)
    beqz	$v0,.L5ef7952c
    ld	$ra,8($sp)
.L5ef794ac:
    li	$a1,-1
    sw	$a1,0($v0)
    lw	$a5,0($s0)
    lw	$a0,68($s0)
    lh	$a1,4($a5)
    li	$a2,5
    addiu	$a0,$a0,4
    beq	$a1,$a2,.L5ef7953c
    lhu	$a5,8($a5)
    # lw $t9, -29488($gp)
    move	$a1,$zero
    addiu	$a2,$a5,31
    jal	memset
    sra	$a2,$a2,0x3
    ld	$ra,8($sp)
.L5ef794e8:
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L5ef794f8:
    # lw $t9, -29492($gp)
    addiu	$a1,$a5,7
    sra	$a1,$a1,0x3
    addiu	$a1,$a1,3
    sra	$a1,$a1,0x2
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    jal	Xalloc
    addiu	$a0,$a0,8
    sw	$v0,68($s0)
    bnez	$v0,.L5ef794ac
    ld	$ra,8($sp)
.L5ef7952c:
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L5ef7953c:
    move	$a1,$zero
    # lw $t9, -29488($gp)
    addiu	$a3,$a5,7
    sra	$a3,$a3,0x3
    addiu	$a3,$a3,3
    sra	$a3,$a3,0x2
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    jal	memset
    sll	$a2,$a2,0x2
    b	.L5ef794e8
    ld	$ra,8($sp)
.end nfbCreateHWColormap

.globl nfbDestroyHWColormap
.ent nfbDestroyHWColormap
nfbDestroyHWColormap:
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x14
    addiu	$at,$at,24176
    addu	$gp,$t9,$at
    # lw $t9, -29644($gp)
    move	$s8,$a0
    sd	$ra,0($sp)
    jal	Xfree
    lw	$a0,68($a0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    sw	$zero,68($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end nfbDestroyHWColormap

.globl nfbHWColormapScreenInit
.ent nfbHWColormapScreenInit
nfbHWColormapScreenInit:
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a2,0($sp)
    sd	$s0,24($sp)
    # lw $t9, -29492($gp)
    lw	$s0,116($a0)
    sd	$ra,16($sp)
    jal	Xalloc
    li	$a0,392
    bnez	$v0,.L5ef795ac
    sw	$v0,116($s0)
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef795ac:
    # lw $t9, -29756($gp)
    li	$a2,392
    ld	$a1,8($sp)
    jal	memmove
    move	$a0,$v0
    # lw $t9, -29492($gp)
    jal	Xalloc
    li	$a0,264
    bnez	$v0,.L5ef795f4
    sw	$v0,124($s0)
    # lw $t9, -29644($gp)
    jal	Xfree
    lw	$a0,116($s0)
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef795f4:
    # lw $t9, -29756($gp)
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memmove
    li	$a2,264
    li	$v0,1
    li	$at,14
    li	$v1,11
    sw	$v1,120($s0)
    ld	$ra,16($sp)
    sw	$at,112($s0)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
    addiu	$sp,$sp,-400
    sd	$s8,256($sp)
    move	$s8,$a1
    sd	$s6,280($sp)
    move	$s6,$a2
    sd	$a3,144($sp)
    sd	$s0,232($sp)
    move	$s0,$a4
    sd	$s7,264($sp)
    move	$s7,$a5
    sd	$s4,240($sp)
    move	$s4,$a6
    sd	$s5,208($sp)
    move	$s5,$a7
    sd	$s2,288($sp)
    sd	$s1,216($sp)
    sd	$s3,272($sp)
    lw	$s3,nfbGCPrivateIndex
    lw	$s1,76($a1)
    lw	$t9,0($a1)
    sll	$s3,$s3,0x2
    addu	$s1,$s1,$s3
    lw	$s1,0($s1)
    move	$s2,$a0
    lw	$t9,396($t9)
    lw	$s3,8($s1)
    sd	$ra,248($sp)
    jalr	$t9
    move	$a0,$s3
    lh	$t3,6($v0)
    lw	$a1,8($s3)
    lh	$t2,2($v0)
    lh	$a4,4($v0)
    beqz	$a1,.L5ef79ab8
    lh	$a5,0($v0)
    sd	$s3,224($sp)
    lw	$a7,4($a1)
.L5ef796c0:
    lbu	$at,72($s1)
    lh	$t8,4($s0)
    lh	$t1,0($s0)
    sd	$at,200($sp)
    lw	$t9,nfbWindowPrivateIndex
    lw	$s3,132($s2)
    move	$v0,$t1
    sll	$t9,$t9,0x2
    addu	$s3,$s3,$t9
    lw	$s3,0($s3)
    li	$t9,1
    beq	$a7,$t9,.L5ef79ac4
    lw	$s3,0($s3)
    move	$v1,$t8
    sd	$t1,304($sp)
    slt	$v0,$t1,$a5
    beqz	$v0,.L5ef79710
    sd	$t8,312($sp)
    move	$t0,$a5
    sd	$a5,304($sp)
.L5ef79710:
    ld	$at,312($sp)
    move	$v0,$a4
    slt	$at,$a4,$at
    beqz	$at,.L5ef79728
    ld	$v1,304($sp)
    sd	$a4,312($sp)
.L5ef79728:
    ld	$t0,312($sp)
    slt	$v1,$v1,$t0
    beqz	$v1,.L5ef79a5c
    sd	$s7,152($sp)
    lh	$s7,2($s0)
    lh	$v0,6($s0)
    slt	$at,$s7,$t2
    beqz	$at,.L5ef79750
    sd	$v0,320($sp)
    move	$s7,$t2
.L5ef79750:
    ld	$v1,320($sp)
    slt	$v1,$t3,$v1
    beqz	$v1,.L5ef79764
    move	$t0,$t3
    sd	$t3,320($sp)
.L5ef79764:
    ld	$at,320($sp)
    slt	$at,$s7,$at
    beqzl	$at,.L5ef79a8c
    ld	$s0,232($sp)
    beqz	$a1,.L5ef79cc0
    addiu	$a3,$a1,8
.L5ef7977c:
    beqzl	$s6,.L5ef797c4
    lh	$at,6($a3)
    lw	$at,40($s1)
    sd	$s6,96($sp)
    sw	$at,36($sp)
    lw	$v1,52($s1)
    lw	$v0,44($s1)
    lbu	$t0,48($s1)
    sw	$v1,44($sp)
    lw	$v1,68($s1)
    sw	$t0,48($sp)
    lw	$t0,76($s1)
    sw	$v0,40($sp)
    lw	$v0,64($s1)
    sw	$t0,32($sp)
    sw	$v1,28($sp)
    sw	$v0,24($sp)
    lh	$at,6($a3)
.L5ef797c4:
    move	$a1,$zero
    sd	$s6,96($sp)
    slt	$at,$at,$s7
    beqz	$at,.L5ef79b54
    lw	$s6,20($s8)
    move	$a0,$a3
    lh	$v0,14($a0)
.L5ef797e0:
    addiu	$a0,$a0,8
    addiu	$a1,$a1,1
    slt	$v0,$v0,$s7
    beqz	$v0,.L5ef7980c
    nop
    lh	$v1,14($a0)
    addiu	$a0,$a0,8
    addiu	$a1,$a1,1
    slt	$v1,$v1,$s7
    bnezl	$v1,.L5ef797e0
    lh	$v0,14($a0)
.L5ef7980c:
    move	$v0,$a0
    sd	$a0,328($sp)
    subu	$t0,$a7,$a1
    addiu	$at,$t0,-1
    beqz	$t0,.L5ef79970
    sd	$at,296($sp)
    ld	$t0,320($sp)
    lh	$v1,2($a0)
    slt	$v1,$v1,$t0
    beqz	$v1,.L5ef79974
    ld	$at,96($sp)
    sd	$s4,160($sp)
    ld	$t1,328($sp)
    ld	$at,96($sp)
    sd	$s0,184($sp)
    lh	$t1,2($t1)
    addiu	$at,$at,-1
    sllv	$at,$t9,$at
    b	.L5ef79890
    sd	$at,192($sp)
.L5ef7985c:
    ld	$v1,328($sp)
.L5ef79860:
    ld	$at,296($sp)
    li	$v0,-1
    addiu	$v1,$v1,8
    addiu	$at,$at,-1
    sd	$at,296($sp)
    beq	$at,$v0,.L5ef79970
    sd	$v1,328($sp)
    ld	$t0,320($sp)
    ld	$t1,328($sp)
    lh	$t1,2($t1)
    slt	$t0,$t1,$t0
    beqz	$t0,.L5ef79970
.L5ef79890:
    ld	$a1,328($sp)
    ld	$at,304($sp)
    lh	$a1,0($a1)
    ld	$t0,312($sp)
    ld	$a0,304($sp)
    slt	$at,$a1,$at
    bnez	$at,.L5ef798b4
    ld	$a5,328($sp)
    move	$a0,$a1
.L5ef798b4:
    lh	$a5,4($a5)
    slt	$t0,$t0,$a5
    bnez	$t0,.L5ef798c8
    ld	$a1,312($sp)
    move	$a1,$a5
.L5ef798c8:
    slt	$t0,$t1,$s7
    bnez	$t0,.L5ef798d8
    move	$a7,$s7
    move	$a7,$t1
.L5ef798d8:
    ld	$t1,328($sp)
    ld	$at,320($sp)
    lh	$t1,6($t1)
    slt	$at,$at,$t1
    bnez	$at,.L5ef798f4
    ld	$a5,320($sp)
    move	$a5,$t1
.L5ef798f4:
    slt	$at,$a0,$a1
    beqz	$at,.L5ef7985c
    slt	$v0,$a7,$a5
    beqz	$v0,.L5ef79860
    ld	$v1,328($sp)
    ld	$t0,160($sp)
    sh	$a0,16($sp)
    sh	$a1,20($sp)
    sh	$a7,18($sp)
    ld	$t2,184($sp)
    sh	$a5,22($sp)
    lh	$t1,2($t2)
    ld	$v1,96($sp)
    lh	$t2,0($t2)
    subu	$t1,$a7,$t1
    beqz	$v1,.L5ef79cf4
    subu	$t2,$a0,$t2
    sra	$s4,$t2,0x3
    ld	$at,192($sp)
    li	$v1,-8
    beqz	$at,.L5ef7985c
    move	$s0,$at
    and	$v1,$t2,$v1
    mult	$t0,$t1
    ld	$v0,144($sp)
    addu	$v0,$v0,$t2
    subu	$v0,$v0,$v1
    sd	$v0,176($sp)
    mflo	$t0
    b	.L5ef799f4
    sd	$t0,168($sp)
.L5ef79970:
    ld	$at,96($sp)
.L5ef79974:
    beqz	$at,.L5ef799b8
    lw	$v1,44($sp)
    lw	$v0,40($sp)
    ld	$at,200($sp)
    lw	$t0,48($sp)
    sw	$v0,44($s1)
    lw	$v0,24($sp)
    sb	$t0,48($s1)
    lw	$t0,32($sp)
    sb	$at,72($s1)
    lw	$at,36($sp)
    sw	$v1,52($s1)
    lw	$v1,28($sp)
    sw	$at,40($s1)
    sw	$t0,76($s1)
    sw	$v1,68($s1)
    sw	$v0,64($s1)
.L5ef799b8:
    ld	$s0,232($sp)
.L5ef799bc:
    ld	$s1,216($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,240($sp)
    ld	$s5,208($sp)
    ld	$s6,280($sp)
    ld	$ra,248($sp)
    ld	$s7,264($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,400
    sra	$s0,$s0,0x1
.L5ef799ec:
    beqz	$s0,.L5ef7985c
    addu	$s4,$s5,$s4
.L5ef799f4:
    and	$v0,$s0,$s6
    beqzl	$v0,.L5ef799ec
    sra	$s0,$s0,0x1
    sw	$s0,40($s1)
    sw	$s0,52($s1)
    lw	$t9,32($s3)
    move	$a2,$s2
    li	$a1,7
    jalr	$t9
    move	$a0,$s8
    move	$a5,$zero
    ld	$a3,160($sp)
    ld	$a2,176($sp)
    ld	$t0,152($sp)
    lw	$a7,52($s1)
    lbu	$a6,48($s1)
    lw	$a4,40($s1)
    sw	$s2,4($sp)
    ld	$a1,168($sp)
    lw	$t9,16($s3)
    addiu	$a0,$sp,16
    addu	$a1,$a1,$t0
    jalr	$t9
    addu	$a1,$a1,$s4
    b	.L5ef799ec
    sra	$s0,$s0,0x1
.L5ef79a5c:
    ld	$s0,232($sp)
    ld	$s1,216($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,240($sp)
    ld	$s5,208($sp)
    ld	$s6,280($sp)
    ld	$ra,248($sp)
    ld	$s7,264($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L5ef79a8c:
    ld	$s1,216($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,240($sp)
    ld	$s5,208($sp)
    ld	$s6,280($sp)
    ld	$ra,248($sp)
    ld	$s7,264($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L5ef79ab8:
    sd	$s3,224($sp)
    b	.L5ef796c0
    li	$a7,1
.L5ef79ac4:
    move	$a1,$t1
    slt	$at,$t1,$a5
    beqz	$at,.L5ef79ad8
    move	$a0,$t8
    move	$a1,$a5
.L5ef79ad8:
    slt	$v0,$a4,$a0
    beqz	$v0,.L5ef79aec
    slt	$v1,$a1,$a0
    move	$a0,$a4
    slt	$v1,$a1,$a0
.L5ef79aec:
    beqzl	$v1,.L5ef79cc8
    ld	$s0,232($sp)
    lh	$a6,2($s0)
    slt	$a2,$a6,$t2
    beqz	$a2,.L5ef79b08
    lh	$a2,6($s0)
    move	$a6,$t2
.L5ef79b08:
    slt	$t0,$t3,$a2
    beqz	$t0,.L5ef79b1c
    slt	$at,$a6,$a2
    move	$a2,$t3
    slt	$at,$a6,$a2
.L5ef79b1c:
    bnezl	$at,.L5ef79b5c
    sh	$a2,22($sp)
    ld	$s0,232($sp)
    ld	$s1,216($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,240($sp)
    ld	$s5,208($sp)
    ld	$s6,280($sp)
    ld	$ra,248($sp)
    ld	$s7,264($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L5ef79b54:
    b	.L5ef7980c
    move	$a0,$a3
.L5ef79b5c:
    sh	$a6,18($sp)
    sh	$a0,20($sp)
    sh	$a1,16($sp)
    sd	$s6,96($sp)
    lw	$a7,52($s1)
    lw	$a5,44($s1)
    lh	$t1,2($s0)
    lw	$a4,40($s1)
    lh	$t2,0($s0)
    subu	$t1,$a6,$t1
    beqz	$s6,.L5ef79d4c
    subu	$t2,$a1,$t2
    lw	$s6,20($s8)
    sd	$a7,128($sp)
    move	$t0,$a5
    sd	$a5,120($sp)
    move	$v1,$a4
    sd	$a4,112($sp)
    lw	$v0,76($s1)
    lbu	$at,48($s1)
    move	$s0,$a7
    ld	$s0,96($sp)
    sd	$at,136($sp)
    lw	$at,68($s1)
    sd	$v0,104($sp)
    addiu	$s0,$s0,-1
    sd	$at,88($sp)
    lw	$at,64($s1)
    sllv	$s0,$t9,$s0
    beqz	$s0,.L5ef79c7c
    sd	$at,80($sp)
    mult	$s4,$t1
    sra	$a0,$t2,0x3
    ld	$v0,144($sp)
    li	$v1,-8
    and	$v1,$t2,$v1
    addu	$v0,$v0,$t2
    subu	$v0,$v0,$v1
    sd	$v0,64($sp)
    mflo	$t0
    b	.L5ef79c10
    sd	$t0,72($sp)
.L5ef79c04:
    sra	$s0,$s0,0x1
.L5ef79c08:
    beqz	$s0,.L5ef79c7c
    addu	$a0,$s5,$a0
.L5ef79c10:
    and	$v1,$s0,$s6
    beqzl	$v1,.L5ef79c08
    sra	$s0,$s0,0x1
    sw	$s0,40($s1)
    sw	$s0,52($s1)
    move	$a2,$s2
    lw	$t9,32($s3)
    li	$a1,7
    sd	$a0,56($sp)
    jalr	$t9
    move	$a0,$s8
    move	$a5,$zero
    move	$a3,$s4
    ld	$a2,64($sp)
    addiu	$a0,$sp,16
    lw	$a7,52($s1)
    lbu	$a6,48($s1)
    lw	$a4,40($s1)
    sw	$s2,4($sp)
    ld	$a1,72($sp)
    lw	$t9,16($s3)
    ld	$t0,56($sp)
    addu	$a1,$a1,$s7
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L5ef79c04
    ld	$a0,56($sp)
.L5ef79c7c:
    ld	$at,120($sp)
    ld	$t0,112($sp)
    ld	$v1,136($sp)
    ld	$v0,128($sp)
    sw	$t0,40($s1)
    ld	$t0,80($sp)
    sw	$v0,52($s1)
    ld	$v0,104($sp)
    sb	$v1,48($s1)
    ld	$v1,200($sp)
    sw	$at,44($s1)
    ld	$at,88($sp)
    sb	$v1,72($s1)
    sw	$v0,76($s1)
    sw	$at,68($s1)
    b	.L5ef799b8
    sw	$t0,64($s1)
.L5ef79cc0:
    b	.L5ef7977c
    ld	$a3,224($sp)
.L5ef79cc8:
    ld	$s1,216($sp)
    ld	$s2,288($sp)
    ld	$s3,272($sp)
    ld	$s4,240($sp)
    ld	$s5,208($sp)
    ld	$s6,280($sp)
    ld	$ra,248($sp)
    ld	$s7,264($sp)
    ld	$s8,256($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L5ef79cf4:
    ld	$a3,160($sp)
    addiu	$a0,$sp,16
    mult	$a3,$t1
    lw	$a7,52($s1)
    lbu	$a6,48($s1)
    lw	$a5,44($s1)
    lw	$a4,40($s1)
    sw	$s2,4($sp)
    ld	$a2,144($sp)
    li	$t0,-8
    and	$t0,$t2,$t0
    addu	$a2,$a2,$t2
    subu	$a2,$a2,$t0
    ld	$t0,152($sp)
    lw	$t9,16($s3)
    mflo	$a1
    addu	$a1,$a1,$t0
    sra	$t0,$t2,0x3
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L5ef79860
    ld	$v1,328($sp)
.L5ef79d4c:
    mult	$s4,$t1
    ld	$a6,200($sp)
    move	$a3,$s4
    addiu	$a0,$sp,16
    li	$t0,-8
    ld	$a2,144($sp)
    sw	$s2,4($sp)
    and	$t0,$t2,$t0
    lw	$t9,16($s3)
    addu	$a2,$a2,$t2
    subu	$a2,$a2,$t0
    sra	$t0,$t2,0x3
    mflo	$a1
    addu	$a1,$a1,$s7
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L5ef799bc
    ld	$s0,232($sp)
.end nfbHWColormapScreenInit

.globl nfbGenericScreenInit
.ent nfbGenericScreenInit
nfbGenericScreenInit:
    li	$at,-1
    addiu	$sp,$sp,-192
    sd	$s2,80($sp)
    move	$s2,$a0
    sd	$s0,72($sp)
    move	$s0,$a1
    sd	$s1,64($sp)
    move	$s1,$a2
    sd	$a4,16($sp)
    sd	$zero,24($sp)
    sd	$zero,32($sp)
    sd	$zero,8($sp)
    beqz	$a3,.L5ef7ae64
    sd	$at,40($sp)
    blez	$s1,.L5ef7b280
    nop
    sd	$ra,88($sp)
    sd	$s4,104($sp)
    move	$s4,$zero
    sd	$s7,136($sp)
    la	$s7,FakeClientID
    sd	$s3,96($sp)
    move	$s3,$zero
    sd	$s5,128($sp)
    sll	$s5,$s1,0x3
    addu	$s5,$s5,$s1
    sll	$s5,$s5,0x2
.L5ef7ae10:
    move	$a0,$zero
    jalr	$s7
    move	$t9,$s7
    lw	$v1,36($s0)
    addu	$v1,$v1,$s4
    sw	$v0,0($v1)
    lw	$at,40($s0)
    addiu	$s4,$s4,36
    addu	$at,$at,$s3
    addiu	$s3,$s3,4
    bne	$s4,$s5,.L5ef7ae10
    sw	$v0,0($at)
    move	$v0,$s1
    ld	$ra,88($sp)
    ld	$s7,136($sp)
    ld	$s4,104($sp)
    ld	$s3,96($sp)
    ld	$s5,128($sp)
.L5ef7ae58:
    sd	$s3,96($sp)
    sd	$ra,88($sp)
    sw	$v0,0($sp)
.L5ef7ae64:
    move	$a0,$s2
    sd	$ra,88($sp)
    li	$t8,-1
    sw	$t8,nfbWindowPrivateIndex
    sw	$t8,nfbGCPrivateIndex
    sd	$s3,96($sp)
    addiu	$s3,$gp,-23236
    addiu	$s1,$s3,12
    # lw $t9, -30920($gp)
    addiu	$s3,$s3,8
    move	$a2,$s1
    jal	mfbAllocatePrivates
    move	$a1,$s3
    beqz	$v0,.L5ef7b07c
    ld	$ra,88($sp)
    # lw $t9, -31212($gp)
    move	$a0,$s2
    move	$a1,$s3
    jal	cfbAllocatePrivates
    move	$a2,$s1
    beqz	$v0,.L5ef7b264
    ld	$ra,88($sp)
    # lw $t9, -31524($gp)
    move	$a0,$s2
    move	$a1,$s3
    jal	cfb16AllocatePrivates
    move	$a2,$s1
    beqz	$v0,.L5ef7b2a0
    ld	$ra,88($sp)
    # lw $t9, -31772($gp)
    move	$a0,$s2
    move	$a1,$s3
    jal	cfb32AllocatePrivates
    move	$a2,$s1
    ld	$ra,88($sp)
    beqz	$v0,.L5ef7b2bc
    ld	$s3,96($sp)
    # lw $t9, -29272($gp)
    move	$a0,$s2
    li	$a2,60
    jal	AllocateWindowPrivate
    lw	$a1,nfbWindowPrivateIndex
    beqz	$v0,.L5ef7b288
    ld	$ra,88($sp)
    # lw $t9, -29340($gp)
    move	$a0,$s2
    li	$a2,112
    jal	AllocateGCPrivate
    lw	$a1,nfbGCPrivateIndex
    beqz	$v0,.L5ef7b288
    ld	$ra,88($sp)
    # lw $t9, -29492($gp)
    jal	Xalloc
    li	$a0,268
    move	$s1,$v0
    beqz	$v0,.L5ef7b458
    ld	$ra,88($sp)
    li	$a0,128
    move	$v0,$zero
    move	$t1,$s2
    lw	$t2,28($s0)
    lw	$t3,436($s2)
    lw	$t0,148($s2)
    lw	$ra,144($s2)
    lw	$t9,140($s2)
    lw	$t8,136($s2)
    lw	$a1,132($s2)
    lw	$a2,128($s2)
    lw	$a6,4($s2)
    lw	$a7,0($s2)
.L5ef7af7c:
    addu	$v1,$v0,$t1
    addu	$at,$v0,$t2
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L5ef7af7c
    sw	$at,0($v1)
    li	$a0,67
    move	$v0,$zero
    move	$t2,$s1
    lw	$t1,116($s2)
.L5ef7afa8:
    addu	$a3,$v0,$t2
    addu	$v1,$v0,$t1
    addiu	$v0,$v0,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L5ef7afa8
    sw	$v1,0($a3)
    sw	$t3,436($s2)
    sw	$t0,148($s2)
    sw	$ra,144($s2)
    sw	$t9,140($s2)
    sw	$t8,136($s2)
    sw	$a1,132($s2)
    sw	$a2,128($s2)
    sw	$a6,4($s2)
    sw	$a7,0($s2)
    sw	$s1,116($s2)
    sw	$s2,16($s1)
    lhu	$a5,24($s0)
    sh	$a5,12($s1)
    lw	$v0,160($s1)
    lhu	$a3,26($s0)
    beqz	$v0,.L5ef7b030
    sh	$a3,14($s1)
    # lw $t9, -29492($gp)
    jal	Xalloc
    sll	$a0,$v0,0x3
    move	$a0,$v0
    move	$a1,$zero
    # lw $t9, -29488($gp)
    lw	$a2,160($s1)
    sw	$v0,164($s1)
    jal	memset
    sll	$a2,$a2,0x3
.L5ef7b030:
    la	$a0,gammaAdjust
    lw	$a0,0($a0)
    beqz	$a0,.L5ef7b098
    sw	$zero,220($s1)
    # lw $t9, -29268($gp)
    jal	atof
    nop
    ldc1	$f1,-19212($gp)
    c.le.d	$f0,$f1
    nop
    bc1t	.L5ef7b3c8
    sdc1	$f0,-23236($gp)
    ldc1	$f2,-19204($gp)
    c.le.d	$f2,$f0
    nop
    bc1t	.L5ef7b3cc
    la	$a1,gammaAdjust
    b	.L5ef7b0a4
    lw	$a5,32($s0)
.L5ef7b07c:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b098:
    ldc1	$f3,-19228($gp)
    sdc1	$f3,-23236($gp)
.L5ef7b0a0:
    lw	$a5,32($s0)
.L5ef7b0a4:
    sh	$a5,120($s2)
    lw	$a4,36($s0)
    sw	$a4,124($s2)
    lhu	$a3,24($s0)
    ld	$a1,16($sp)
    sh	$a3,8($s2)
    # lw $t9, -29264($gp)
    lhu	$a2,26($s0)
    move	$a0,$s2
    jal	nmbxScreenInit
    sh	$a2,10($s2)
    lw	$a2,52($s0)
    beqz	$a2,.L5ef7b11c
    ld	$a3,8($sp)
    lw	$v0,32($s0)
    blez	$v0,.L5ef7b610
    move	$a0,$zero
    lw	$a1,36($s0)
    lw	$at,0($a1)
.L5ef7b0f0:
    beq	$at,$a2,.L5ef7b2d4
    move	$s3,$a0
    addiu	$a1,$a1,36
    addiu	$a0,$a0,1
    bnel	$a0,$v0,.L5ef7b0f0
    lw	$at,0($a1)
.L5ef7b108:
    move	$s3,$a0
    sw	$a0,0($sp)
.L5ef7b110:
    slt	$v1,$s3,$v0
    beqz	$v1,.L5ef7b3ec
    ld	$a3,8($sp)
.L5ef7b11c:
    beqz	$a3,.L5ef7b5b4
    li	$a2,1
    lw	$v0,32($s0)
.L5ef7b128:
    ld	$a5,40($sp)
    li	$at,-1
    beq	$a5,$at,.L5ef7b41c
    ld	$s3,40($sp)
.L5ef7b138:
    slt	$v1,$s3,$v0
    beqz	$v1,.L5ef7b340
    nop	# was lw $t9, -29680($gp)
    lw	$a6,36($s0)
.L5ef7b148:
    sll	$a3,$s3,0x3
.L5ef7b14c:
    addu	$a3,$a3,$s3
    sll	$a3,$a3,0x2
    addu	$a4,$a6,$a3
    lw	$a4,0($a4)
    sw	$a4,24($s2)
    lw	$a2,36($s0)
    addu	$a2,$a2,$a3
    lh	$a2,10($a2)
    sb	$a2,18($s2)
    lw	$a1,84($s1)
    # lw $t9, -29492($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    jal	Xalloc
    sd	$a0,56($sp)
    sw	$v0,92($s1)
    beqz	$v0,.L5ef7b318
    ld	$s3,96($sp)
    # lw $t9, -29492($gp)
    jal	Xalloc
    ld	$a0,56($sp)
    beqz	$v0,.L5ef7b57c
    sw	$v0,96($s1)
    lw	$a5,84($s1)
    sd	$s4,104($sp)
    beqz	$a5,.L5ef7b208
    move	$s4,$zero
    move	$s3,$zero
.L5ef7b1c0:
    move	$a2,$zero
    lw	$t9,340($s2)
    lw	$a0,92($s1)
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s3
    move	$a2,$zero
    lw	$t9,340($s2)
    lw	$a0,96($s1)
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s3
    addiu	$s4,$s4,1
    lw	$a3,84($s1)
    sltu	$a3,$s4,$a3
    bnez	$a3,.L5ef7b1c0
    addiu	$s3,$s3,12
    ld	$s3,96($sp)
.L5ef7b208:
    addiu	$a1,$gp,-20820
    lw	$a4,36($s0)
    move	$a0,$s2
    # lw $t9, -30424($gp)
    lw	$a4,0($a4)
    ld	$s4,104($sp)
    jal	miInitializeBackingStore
    sw	$a4,80($s1)
    lw	$a1,40($s1)
    # lw $t9, -29492($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    jal	Xalloc
    sll	$a0,$a0,0x2
    sw	$v0,44($s1)
    bnez	$v0,.L5ef7b2e4
    ld	$ra,88($sp)
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b264:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b280:
    b	.L5ef7ae58
    move	$v0,$zero
.L5ef7b288:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b2a0:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b2bc:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b2d4:
    sw	$s3,0($sp)
    li	$a3,1
    b	.L5ef7b110
    sd	$a3,8($sp)
.L5ef7b2e4:
    # lw $t9, -29492($gp)
    lw	$a0,40($s1)
    jal	Xalloc
    sll	$a0,$a0,0x2
    sw	$v0,60($s1)
    bnez	$v0,.L5ef7b424
    ld	$ra,88($sp)
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b318:
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s1
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b340:
    la	$a0,local_0x5f0a0000
    jalr	$t9
    addiu	$a0,$a0,-160
    lw	$v0,32($s0)
    blez	$v0,.L5ef7b3a8
    move	$a1,$zero
    li	$a7,8
    lw	$a6,36($s0)
    li	$a4,3
    b	.L5ef7b384
    move	$a0,$a6
.L5ef7b36c:
    move	$a2,$zero
.L5ef7b370:
    bnez	$a2,.L5ef7b3b4
    addiu	$a0,$a0,36
    addiu	$a1,$a1,1
    beq	$a1,$v0,.L5ef7b3b4
    move	$s3,$a1
.L5ef7b384:
    lh	$a3,4($a0)
    li	$a2,1
    bne	$a3,$a4,.L5ef7b36c
    move	$s3,$a1
    lh	$a5,10($a0)
    bnel	$a5,$a7,.L5ef7b370
    move	$a2,$zero
    b	.L5ef7b370
    nop
.L5ef7b3a8:
    move	$a1,$zero
    lw	$a6,36($s0)
    move	$s3,$a1
.L5ef7b3b4:
    slt	$at,$s3,$v0
    bnez	$at,.L5ef7b14c
    sll	$a3,$s3,0x3
    b	.L5ef7b148
    move	$s3,$zero
.L5ef7b3c8:
    la	$a1,gammaAdjust
.L5ef7b3cc:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	ErrorF
    addiu	$a0,$a0,-376
    ldc1	$f4,-19196($gp)
    b	.L5ef7b0a0
    sdc1	$f4,-23236($gp)
.L5ef7b3ec:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-312
    b	.L5ef7b11c
    ld	$a3,8($sp)
.L5ef7b404:
    lw	$v0,32($s0)
    sw	$s3,0($sp)
    ld	$s4,104($sp)
    ld	$s5,128($sp)
    li	$a3,-1
    sd	$a3,40($sp)
.L5ef7b41c:
    b	.L5ef7b138
    lw	$s3,0($sp)
.L5ef7b424:
    # lw $t9, -29492($gp)
    lw	$a0,40($s1)
    jal	Xalloc
    sll	$a0,$a0,0x2
    sw	$v0,64($s1)
    bnez	$v0,.L5ef7b470
    ld	$ra,88($sp)
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b458:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b470:
    # lw $t9, -29492($gp)
    lw	$a0,40($s1)
    jal	Xalloc
    sll	$a0,$a0,0x2
    sw	$v0,68($s1)
    beqz	$v0,.L5ef7b6f4
    ld	$ra,88($sp)
    lw	$a3,40($s1)
    beqz	$a3,.L5ef7b4fc
    move	$s3,$zero
    move	$s0,$zero
    move	$s4,$zero
.L5ef7b4a0:
    move	$a2,$zero
    lw	$t9,340($s2)
    lw	$a0,44($s1)
    move	$a1,$zero
    jalr	$t9
    addu	$a0,$a0,$s0
    addiu	$s3,$s3,1
    lw	$v1,60($s1)
    addu	$v1,$v1,$s4
    sw	$zero,0($v1)
    lw	$at,64($s1)
    addu	$at,$at,$s4
    sw	$zero,0($at)
    lw	$a5,68($s1)
    addu	$a5,$a5,$s4
    sw	$zero,0($a5)
    lw	$a3,40($s1)
    addiu	$s0,$s0,12
    sltu	$a3,$s3,$a3
    bnez	$a3,.L5ef7b4a0
    addiu	$s4,$s4,4
    ld	$ra,88($sp)
    ld	$s4,104($sp)
.L5ef7b4fc:
    la	$a5,copyPlaneGeneration__NOC
    la	$s0,serverGeneration
    lw	$a5,0($a5)
    lw	$a3,0($s0)
    bne	$a3,$a5,.L5ef7b724
    ld	$s3,96($sp)
    la	$a0,copyPlaneScreenIndex__OOC
    la	$s1,AllocateScreenPrivateIndex
.L5ef7b51c:
    ld	$at,24($sp)
    beqz	$at,.L5ef7b794
.L5ef7b524:
    nop	# was lw $t9, -29260($gp)
    move	$a0,$s2
    jal	ShmRegisterFuncs
    addiu	$a1,$gp,-20788
    lw	$a3,miZeroLineGeneration
    lw	$v1,0($s0)
    bne	$v1,$a3,.L5ef7b758
    ld	$ra,88($sp)
    lw	$v0,miZeroLineScreenIndex
.L5ef7b548:
    bltzl	$v0,.L5ef7b568
    li	$v0,1
    lw	$at,436($s2)
    li	$a5,216
    sll	$v1,$v0,0x2
    addu	$at,$at,$v1
    sw	$a5,0($at)
    li	$v0,1
.L5ef7b568:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b57c:
    la	$s0,Xfree
    lw	$a0,92($s1)
    jalr	$s0
    move	$t9,$s0
    move	$a0,$s1
    jalr	$s0
    move	$t9,$s0
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b5b4:
    # lw $t9, -29496($gp)
    la	$a0,local_0x5f0a0000
    li	$a1,17
    jal	MakeAtom
    addiu	$a0,$a0,-232
    lui	$a3,0xe000
    beq	$v0,$a3,.L5ef7b70c
    sd	$v0,48($sp)
    ld	$a5,48($sp)
    beqz	$a5,.L5ef7b710
    nop	# was lw $t9, -29696($gp)
    lw	$at,56($s0)
.L5ef7b5e4:
    beqzl	$at,.L5ef7b774
    lw	$a4,44($s0)
    sd	$s5,128($sp)
    lw	$v0,32($s0)
    sd	$s4,104($sp)
    move	$s4,$zero
    blez	$v0,.L5ef7b6e4
    lw	$a1,76($s1)
    move	$s5,$zero
    b	.L5ef7b634
    move	$a0,$zero
.L5ef7b610:
    b	.L5ef7b108
    move	$a0,$zero
.L5ef7b618:
    sd	$s4,40($sp)
    lw	$v0,32($s0)
.L5ef7b620:
    addiu	$s5,$s5,20
.L5ef7b624:
    addiu	$s4,$s4,1
    slt	$a3,$s4,$v0
    beqz	$a3,.L5ef7b6e4
    addiu	$a0,$a0,36
.L5ef7b634:
    lw	$at,88($s1)
    addu	$at,$at,$s5
    lw	$at,0($at)
    lw	$a5,48($s1)
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    sltu	$a5,$a1,$a5
    beqz	$a5,.L5ef7b620
    move	$s3,$s4
    lw	$a2,36($s0)
    lw	$a3,44($s0)
    addu	$a2,$a2,$a0
    lh	$v1,4($a2)
    xor	$v1,$v1,$a3
    slti	$a3,$a3,0
    sltiu	$v1,$v1,1
    or	$v1,$v1,$a3
    beqzl	$v1,.L5ef7b624
    addiu	$s5,$s5,20
    lw	$a5,48($s0)
    lh	$a3,10($a2)
    xor	$a3,$a3,$a5
    slti	$a5,$a5,0
    sltiu	$a3,$a3,1
    or	$a3,$a3,$a5
    beqzl	$a3,.L5ef7b624
    addiu	$s5,$s5,20
    sd	$a0,120($sp)
    lw	$a0,0($s2)
    # lw $t9, -29688($gp)
    sd	$a1,112($sp)
    move	$a1,$s4
    jal	nmbxLookupCapability
    ld	$a2,48($sp)
    ld	$a1,112($sp)
    beqz	$v0,.L5ef7b404
    ld	$a0,120($sp)
    ld	$a5,40($sp)
    li	$at,-1
    bnel	$a5,$at,.L5ef7b620
    lw	$v0,32($s0)
    b	.L5ef7b618
    move	$v1,$s4
.L5ef7b6e4:
    sw	$s4,0($sp)
    ld	$s4,104($sp)
    b	.L5ef7b128
    ld	$s5,128($sp)
.L5ef7b6f4:
    move	$v0,$zero
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L5ef7b70c:
    # lw $t9, -29696($gp)
.L5ef7b710:
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,-208
    b	.L5ef7b5e4
    lw	$at,56($s0)
.L5ef7b724:
    la	$s1,AllocateScreenPrivateIndex
    jalr	$s1
    move	$t9,$s1
    la	$a0,copyPlaneScreenIndex__OOC
    ld	$ra,88($sp)
    bltz	$v0,.L5ef7b81c
    sw	$v0,0($a0)
    la	$a5,copyPlaneGeneration__NOC
    lw	$a3,0($s0)
    sw	$a3,0($a5)
.L5ef7b74c:
    ld	$at,32($sp)
    b	.L5ef7b51c
    sd	$at,24($sp)
.L5ef7b758:
    jalr	$s1
    move	$t9,$s1
    sw	$v0,miZeroLineScreenIndex
    lw	$v1,0($s0)
    ld	$ra,88($sp)
    b	.L5ef7b548
    sw	$v1,miZeroLineGeneration
.L5ef7b774:
    bltzl	$a4,.L5ef7b828
    lw	$at,48($s0)
    lw	$v0,32($s0)
.L5ef7b780:
    blez	$v0,.L5ef7b808
    move	$a1,$zero
    slti	$a6,$a4,0
    b	.L5ef7b7c4
    lw	$a0,36($s0)
.L5ef7b794:
    lw	$at,0($a0)
    lw	$a5,436($s2)
    la	$a3,nfbCopyPlane
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    b	.L5ef7b524
    sw	$a3,0($a5)
.L5ef7b7b0:
    bnez	$a2,.L5ef7b814
    addiu	$a0,$a0,36
    addiu	$a1,$a1,1
    beq	$a1,$v0,.L5ef7b80c
    nop
.L5ef7b7c4:
    lh	$v1,4($a0)
    move	$a2,$zero
    xor	$v1,$v1,$a4
    sltiu	$v1,$v1,1
    or	$v1,$v1,$a6
    beqz	$v1,.L5ef7b7b0
    move	$s3,$a1
    lw	$a5,48($s0)
    lh	$a3,10($a0)
    xor	$a3,$a3,$a5
    slti	$a5,$a5,0
    sltiu	$a3,$a3,1
    or	$a3,$a3,$a5
    bnezl	$a3,.L5ef7b7b0
    li	$a2,1
    b	.L5ef7b7b0
    nop
.L5ef7b808:
    move	$a1,$zero
.L5ef7b80c:
    b	.L5ef7b128
    sw	$a1,0($sp)
.L5ef7b814:
    b	.L5ef7b128
    sw	$s3,0($sp)
.L5ef7b81c:
    li	$a5,1
    b	.L5ef7b74c
    sd	$a5,32($sp)
.L5ef7b828:
    bgezl	$at,.L5ef7b780
    lw	$v0,32($s0)
    lw	$v0,32($s0)
    b	.L5ef7b128
    sw	$zero,0($sp)
    li	$a2,1
    li	$a1,22
    move	$t8,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$s7,-96($s8)
    sd	$s0,-104($s8)
    sd	$ra,-40($s8)
    # lw $t9, -29496($gp)
    sd	$s1,-48($s8)
    move	$s1,$a0
    la	$a0,local_0x5f0a0000
    sd	$s4,-64($s8)
    la	$s4,WindowTable
    sd	$t8,-80($s8)
    lw	$t8,0($s1)
    lw	$s4,0($s4)
    addiu	$a0,$a0,-96
    sll	$t8,$t8,0x2
    addu	$s4,$s4,$t8
    jal	MakeAtom
    lw	$s4,0($s4)
    lui	$s0,0xe000
    beq	$s0,$v0,.L5ef7bab8
    move	$s7,$v0
    beqz	$v0,.L5ef7babc
    nop	# was lw $t9, -29696($gp)
    sd	$s4,-72($s8)
.L5ef7b8ac:
    lh	$v1,120($s1)
    move	$s4,$zero
    li	$a3,-16
    sll	$v1,$v1,0x4
    addiu	$v1,$v1,15
    and	$v1,$v1,$a3
    subu	$sp,$sp,$v1
    move	$at,$sp
    beqz	$sp,.L5ef7baa0
    sd	$sp,-32($s8)
    li	$a2,1
.L5ef7b8d8:
    # lw $t9, -29496($gp)
    la	$a0,local_0x5f0a0000
    li	$a1,18
    jal	MakeAtom
    addiu	$a0,$a0,24
    move	$a3,$v0
    beq	$s0,$v0,.L5ef7bad0
    sd	$v0,-88($s8)
    beqz	$v0,.L5ef7bad4
    nop	# was lw $t9, -29696($gp)
    sd	$s7,-56($s8)
.L5ef7b904:
    li	$a2,1
    la	$a0,local_0x5f0a0000
    # lw $t9, -29496($gp)
    li	$a1,17
    addiu	$a0,$a0,-376
    jal	MakeAtom
    addiu	$a0,$a0,144
    move	$s7,$v0
    beq	$s0,$v0,.L5ef7bae8
    ld	$ra,-40($s8)
    beqz	$v0,.L5ef7baec
    la	$a0,local_0x5f0a0000
.L5ef7b934:
    sd	$s5,-136($s8)
    lh	$a3,120($s1)
    sd	$s2,-128($s8)
    sd	$s6,-112($s8)
    blez	$a3,.L5ef7ba28
    move	$s0,$zero
    sd	$s3,-120($s8)
    move	$s2,$zero
    move	$s5,$zero
    b	.L5ef7b9a8
    la	$s6,nmbxLookupCapability
.L5ef7b960:
    move	$a6,$zero
    beqz	$a5,.L5ef7ba04
    nop
.L5ef7b96c:
    addu	$at,$s5,$at
.L5ef7b970:
    lw	$a4,124($s1)
    addiu	$s4,$s4,1
    addiu	$s5,$s5,16
    addu	$a4,$a4,$s2
    lw	$a4,0($a4)
    sw	$a5,12($at)
    sw	$a7,8($at)
    sw	$a6,4($at)
    sw	$a4,0($at)
    addiu	$s0,$s0,1
.L5ef7b998:
    lh	$v1,120($s1)
    slt	$v1,$s0,$v1
    beqz	$v1,.L5ef7ba14
    addiu	$s2,$s2,36
.L5ef7b9a8:
    lw	$a0,0($s1)
    move	$a1,$s0
    ld	$a2,-88($s8)
    jalr	$s6
    move	$t9,$s6
    move	$s3,$v0
    lw	$a0,0($s1)
    move	$a1,$s0
    move	$a2,$s7
    jalr	$s6
    move	$t9,$s6
    move	$a7,$zero
    beqz	$s3,.L5ef7b9f0
    ld	$at,-32($s8)
    beqz	$v0,.L5ef7b960
    lw	$a5,8($s3)
    b	.L5ef7b9f8
    nop
.L5ef7b9f0:
    move	$a5,$zero
    beqz	$v0,.L5ef7b960
.L5ef7b9f8:
    li	$a6,1
    bnez	$a5,.L5ef7b96c
    lw	$a7,8($v0)
.L5ef7ba04:
    beqzl	$a6,.L5ef7b998
    addiu	$s0,$s0,1
    b	.L5ef7b970
    addu	$at,$s5,$at
.L5ef7ba14:
    ld	$s6,-112($s8)
    ld	$ra,-40($s8)
    ld	$s3,-120($s8)
    ld	$s2,-128($s8)
    ld	$s5,-136($s8)
.L5ef7ba28:
    ld	$s0,-104($s8)
    ld	$s1,-48($s8)
    beqz	$s4,.L5ef7ba88
    ld	$s7,-96($s8)
    ld	$a0,-72($s8)
    move	$a7,$zero
    ld	$a6,-32($s8)
    move	$a4,$zero
    li	$a3,32
    sll	$a5,$s4,0x4
    addiu	$a5,$a5,3
    # lw $t9, -29416($gp)
    ld	$a2,-56($s8)
    srl	$a5,$a5,0x2
    jal	ChangeWindowProperty
    move	$a1,$a2
    ld	$s4,-64($s8)
    beqz	$v0,.L5ef7ba88
    ld	$ra,-40($s8)
    # lw $t9, -29696($gp)
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,96
    ld	$ra,-40($s8)
.L5ef7ba88:
    li	$v0,1
    ld	$s4,-64($s8)
    ld	$a3,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L5ef7baa0:
    # lw $t9, -29696($gp)
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,-24
    b	.L5ef7b8d8
    li	$a2,1
.L5ef7bab8:
    # lw $t9, -29696($gp)
.L5ef7babc:
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,-72
    b	.L5ef7b8ac
    sd	$s4,-72($s8)
.L5ef7bad0:
    # lw $t9, -29696($gp)
.L5ef7bad4:
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,48
    b	.L5ef7b904
    sd	$s7,-56($s8)
.L5ef7bae8:
    la	$a0,local_0x5f0a0000
.L5ef7baec:
    # lw $t9, -29696($gp)
    addiu	$a0,$a0,-376
    jal	FatalError
    addiu	$a0,$a0,168
    b	.L5ef7b934
    ld	$ra,-40($s8)
.end nfbGenericScreenInit

.globl nfbCloseScreen
.ent nfbCloseScreen
nfbCloseScreen:
    addiu	$sp,$sp,-64
    sd	$s5,32($sp)
    sd	$s0,0($sp)
    lw	$s0,116($a1)
    sd	$ra,24($sp)
    sd	$s1,16($sp)
    lw	$at,40($s0)
    move	$s1,$a1
    sd	$s2,8($sp)
    beqz	$at,.L5ef7ad1c
    move	$s2,$zero
    sd	$ra,24($sp)
    move	$s5,$zero
.L5ef7acf4:
    lw	$t9,352($s1)
    lw	$a0,44($s0)
    addiu	$s2,$s2,1
    jalr	$t9
    addu	$a0,$a0,$s5
    lw	$a2,40($s0)
    sltu	$a2,$s2,$a2
    bnez	$a2,.L5ef7acf4
    addiu	$s5,$s5,12
    ld	$s5,32($sp)
.L5ef7ad1c:
    la	$s2,Xfree
    lw	$a0,44($s0)
    jalr	$s2
    move	$t9,$s2
    lw	$a0,60($s0)
    jalr	$s2
    move	$t9,$s2
    lw	$a0,64($s0)
    jalr	$s2
    move	$t9,$s2
    lw	$a0,68($s0)
    jalr	$s2
    move	$t9,$s2
    lw	$a0,164($s0)
    beqzl	$a0,.L5ef7ad68
    lw	$a0,92($s0)
    jalr	$s2
    move	$t9,$s2
    lw	$a0,92($s0)
.L5ef7ad68:
    jalr	$s2
    move	$t9,$s2
    lw	$a0,96($s0)
    jalr	$s2
    move	$t9,$s2
    ld	$s0,0($sp)
    lw	$a0,116($s1)
    jalr	$s2
    move	$t9,$s2
    ld	$s1,16($sp)
    ld	$ra,24($sp)
    ld	$s2,8($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,64
.end nfbCloseScreen

.globl nfbInitRootWindow
.ent nfbInitRootWindow
nfbInitRootWindow:
    addiu	$sp,$sp,-256
    sd	$s1,160($sp)
    move	$s1,$a0
    lh	$at,16($a0)
    sd	$s5,120($sp)
    lw	$s5,20($a0)
    addiu	$a2,$at,-1
    blez	$at,.L5ef7bb94
    move	$a1,$s5
    move	$v0,$a1
    addiu	$a5,$a2,1
    sll	$a0,$a5,0x3
    andi	$a3,$a5,0x1
    beqz	$a3,.L5ef7bb80
    addu	$a0,$a0,$a1
    lbu	$a4,0($s5)
    lbu	$at,0($v0)
    slt	$a4,$a4,$at
    beqzl	$a4,.L5ef7bb80
    addiu	$v0,$v0,8
    lh	$v1,2($v0)
    blezl	$v1,.L5ef7bb80
    addiu	$v0,$v0,8
    move	$s5,$v0
    addiu	$v0,$v0,8
.L5ef7bb80:
    sra	$a3,$a5,0x1
    bnezl	$a3,.L5ef7be50
    lbu	$v1,0($v0)
    sd	$ra,224($sp)
.L5ef7bb90:
    sd	$s0,216($sp)
.L5ef7bb94:
    sd	$s0,216($sp)
    la	$s0,WindowTable
    lw	$t8,0($s1)
    lw	$s0,0($s0)
    sll	$t8,$t8,0x2
    addu	$s0,$s0,$t8
    lw	$s0,0($s0)
    sd	$ra,224($sp)
    lw	$a2,nfbWindowPrivateIndex
    lw	$a1,132($s0)
    # lw $t9, -31844($gp)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    move	$a0,$s0
    jal	nfbValidateWindowVisual
    lw	$a1,4($a1)
    la	$a0,solidRootOverrideColorName
    lw	$a0,0($a0)
    beqz	$a0,.L5ef7bd1c
    nop	# was lw $t9, -29840($gp)
    jal	strlen
    nop
    move	$a2,$v0
    addiu	$a5,$sp,4
    addiu	$a4,$sp,2
    addiu	$a3,$sp,0
    # lw $t9, -29256($gp)
    la	$a1,solidRootOverrideColorName
    lw	$a0,0($s1)
    jal	OsLookupColor
    lw	$a1,0($a1)
    beqz	$v0,.L5ef7c2e4
    la	$a1,solidRootOverrideColorName
    lbu	$a3,1($s0)
.L5ef7bc20:
    li	$a4,2
    beq	$a3,$a4,.L5ef7c2a4
    nop
    lw	$v0,120($s0)
    beqz	$v0,.L5ef7c334
    nop	# was lw $t9, -29692($gp)
    lw	$a1,8($v0)
.L5ef7bc3c:
    move	$a0,$a1
.L5ef7bc40:
    # lw $t9, -29684($gp)
    jal	LookupIDByType
    li	$a1,6
    move	$a0,$v0
    addiu	$a4,$sp,8
    addiu	$a3,$sp,4
    la	$a5,serverClient
    addiu	$a2,$sp,2
    # lw $t9, -29508($gp)
    lw	$a5,0($a5)
    addiu	$a1,$sp,0
    jal	AllocColor
    lw	$a5,0($a5)
    beqz	$v0,.L5ef7bc90
    la	$a1,solidRootOverrideColorName
    # lw $t9, -29696($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	FatalError
    addiu	$a0,$a0,176
.L5ef7bc90:
    # lw $t9, -29744($gp)
    sd	$s2,168($sp)
    move	$a1,$s1
    jal	GetScratchGC
    lbu	$a0,18($s1)
    move	$s2,$v0
    addiu	$a2,$sp,16
    li	$a1,4
    # lw $t9, -29728($gp)
    lw	$a3,8($sp)
    move	$a0,$v0
    jal	ChangeGC
    sw	$a3,16($sp)
    # lw $t9, -29740($gp)
    move	$a1,$s2
    jal	ValidateGC
    lw	$a0,108($s0)
    sh	$zero,26($sp)
    sh	$zero,24($sp)
    lhu	$at,12($s0)
    sh	$at,28($sp)
    lhu	$ra,14($s0)
    sh	$ra,30($sp)
    lw	$t9,72($s2)
    addiu	$a3,$sp,24
    lw	$t9,44($t9)
    li	$a2,1
    move	$a1,$s2
    jalr	$t9
    lw	$a0,108($s0)
    # lw $t9, -29628($gp)
    jal	FreeScratchGC
    move	$a0,$s2
    b	.L5ef7bd24
    la	$v1,gammaAdjust
.L5ef7bd1c:
    sd	$s2,168($sp)
    la	$v1,gammaAdjust
.L5ef7bd24:
    lw	$v1,0($v1)
    bnez	$v1,.L5ef7c208
    lui	$s2,0xe000
    la	$v0,MakeAtom
    sd	$s6,184($sp)
    la	$s6,ChangeWindowProperty
    sd	$s3,176($sp)
    la	$s3,ErrorF
    sd	$s4,200($sp)
    la	$s4,exit
.L5ef7bd4c:
    sd	$s7,192($sp)
    li	$a2,1
    li	$a1,12
    move	$t9,$v0
    la	$a0,local_0x5f0a0000
    la	$a4,GetBestVisualForPEX
    la	$a3,nfbGetBestVisualForPEX
    addiu	$a0,$a0,288
    jalr	$v0
    sw	$a3,0($a4)
    beq	$s2,$v0,.L5ef7c28c
    move	$s7,$v0
    beqz	$s7,.L5ef7c290
    nop	# was lw $t9, -29696($gp)
.L5ef7bd84:
    lh	$a2,2($s5)
    li	$s4,4
    sd	$s8,208($sp)
    blez	$a2,.L5ef7c1d4
    move	$s8,$zero
    move	$s6,$zero
    sd	$s0,80($sp)
    b	.L5ef7bdbc
    lh	$v0,120($s1)
.L5ef7bda8:
    lh	$a2,2($s5)
.L5ef7bdac:
    addiu	$s8,$s8,1
    slt	$a3,$s8,$a2
    beqzl	$a3,.L5ef7c1d8
    ld	$s4,200($sp)
.L5ef7bdbc:
    lw	$s3,4($s5)
    move	$s2,$zero
    lw	$a1,124($s1)
    addu	$s3,$s3,$s6
    addiu	$s6,$s6,4
    blez	$v0,.L5ef7bdac
    lw	$s3,0($s3)
    move	$s0,$a1
    b	.L5ef7be08
    lw	$a3,0($s0)
.L5ef7bde4:
    sltiu	$at,$at,21
    beqzl	$at,.L5ef7be98
    lw	$a2,116($s1)
    lh	$v0,120($s1)
.L5ef7bdf4:
    addiu	$s2,$s2,1
.L5ef7bdf8:
    slt	$v1,$s2,$v0
    beqz	$v1,.L5ef7bda8
    addiu	$s0,$s0,36
    lw	$a3,0($s0)
.L5ef7be08:
    bnel	$a3,$s3,.L5ef7bdf8
    addiu	$s2,$s2,1
    lh	$a4,4($s0)
    bnel	$a4,$s4,.L5ef7bdf8
    addiu	$s2,$s2,1
    # lw $t9, -29688($gp)
    lw	$a0,0($s1)
    move	$a1,$s2
    jal	nmbxLookupCapability
    move	$a2,$s7
    bnezl	$v0,.L5ef7bde4
    lw	$at,8($v0)
    b	.L5ef7bdf4
    lh	$v0,120($s1)
.L5ef7be40:
    addiu	$v0,$v0,8
.L5ef7be44:
    beql	$v0,$a0,.L5ef7bb90
    sd	$ra,224($sp)
    lbu	$v1,0($v0)
.L5ef7be50:
    lbu	$at,0($s5)
    slt	$at,$at,$v1
    beqzl	$at,.L5ef7be74
    lbu	$at,8($v0)
    lh	$a3,2($v0)
    blezl	$a3,.L5ef7be74
    lbu	$at,8($v0)
    move	$s5,$v0
    lbu	$at,8($v0)
.L5ef7be74:
    lbu	$a4,0($s5)
    slt	$a4,$a4,$at
    beqz	$a4,.L5ef7be40
    addiu	$v0,$v0,8
    lh	$v1,2($v0)
    blezl	$v1,.L5ef7be44
    addiu	$v0,$v0,8
    b	.L5ef7be40
    move	$s5,$v0
.L5ef7be98:
    sw	$s3,204($a2)
    lw	$a1,116($s1)
    lbu	$a0,0($s5)
    # lw $t9, -29640($gp)
    sw	$a0,208($a1)
    jal	Ones
    lw	$a0,12($s0)
    sd	$v0,152($sp)
    lw	$a0,16($s0)
    ld	$s8,208($sp)
    ld	$s4,200($sp)
    ld	$s7,192($sp)
    ld	$s5,120($sp)
    # lw $t9, -29640($gp)
    ld	$s6,184($sp)
    ld	$s3,176($sp)
    jal	Ones
    ld	$s2,168($sp)
    # lw $t9, -29640($gp)
    sd	$v0,128($sp)
    jal	Ones
    lw	$a0,20($s0)
    # lw $t9, -29484($gp)
    sd	$v0,136($sp)
    jal	FakeClientID
    move	$a0,$zero
    move	$a0,$v0
    sd	$v0,144($sp)
    move	$a1,$s1
    move	$a2,$s0
    # lw $t9, -29292($gp)
    move	$a5,$zero
    move	$a4,$zero
    jal	CreateColormap
    addiu	$a3,$sp,32
    beqz	$v0,.L5ef7bf44
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,344
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
.L5ef7bf44:
    ld	$a3,80($sp)
    lw	$a3,120($a3)
    beqz	$a3,.L5ef7c2ac
    addiu	$a6,$sp,40
.L5ef7bf54:
    li	$a5,10
    move	$a4,$zero
    li	$a3,32
    li	$a2,24
    li	$a1,25
    ld	$a0,80($sp)
    ld	$t3,128($sp)
    # lw $t9, -29416($gp)
    li	$a7,1
    sllv	$t3,$a7,$t3
    ld	$ra,152($sp)
    ld	$v0,144($sp)
    addiu	$t3,$t3,-1
    sllv	$ra,$a7,$ra
    sw	$v0,40($sp)
    addiu	$ra,$ra,-1
    lw	$at,0($s0)
    sw	$ra,44($sp)
    sw	$zero,76($sp)
    sw	$at,72($sp)
    sd	$t3,104($sp)
    lw	$t8,24($s0)
    ld	$t1,136($sp)
    sw	$t3,52($sp)
    sllv	$t8,$a7,$t8
    sw	$t8,48($sp)
    sllv	$t1,$a7,$t1
    lw	$t2,28($s0)
    addiu	$t1,$t1,-1
    sw	$t1,60($sp)
    sllv	$t2,$a7,$t2
    sw	$t2,56($sp)
    sd	$t1,96($sp)
    lw	$t0,32($s0)
    sd	$ra,88($sp)
    sw	$zero,68($sp)
    sllv	$a7,$a7,$t0
    sw	$a7,64($sp)
    jal	ChangeWindowProperty
    move	$a7,$zero
    beqz	$v0,.L5ef7c014
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,424
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
.L5ef7c014:
    addiu	$a6,$sp,40
    li	$a5,10
    move	$a4,$zero
    ld	$t2,88($sp)
    li	$a3,32
    li	$a2,24
    sw	$t2,44($sp)
    li	$a7,1
    lw	$t1,24($s0)
    sw	$zero,64($sp)
    sw	$zero,60($sp)
    sw	$zero,56($sp)
    sw	$zero,52($sp)
    sllv	$t1,$a7,$t1
    sw	$t1,48($sp)
    li	$a1,30
    lw	$t0,24($s0)
    ld	$a0,80($sp)
    # lw $t9, -29416($gp)
    sllv	$a7,$a7,$t0
    addiu	$a7,$a7,-1
    sw	$a7,68($sp)
    jal	ChangeWindowProperty
    move	$a7,$zero
    beqz	$v0,.L5ef7c094
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,424
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
.L5ef7c094:
    addiu	$a6,$sp,40
    li	$a5,10
    move	$a4,$zero
    li	$a3,32
    li	$a2,24
    ld	$t2,104($sp)
    sw	$zero,48($sp)
    sw	$zero,44($sp)
    sw	$t2,52($sp)
    li	$a7,1
    lw	$t1,28($s0)
    sw	$zero,64($sp)
    sw	$zero,60($sp)
    sllv	$t1,$a7,$t1
    sw	$t1,56($sp)
    li	$a1,29
    lw	$t0,28($s0)
    ld	$a0,80($sp)
    # lw $t9, -29416($gp)
    sllv	$a7,$a7,$t0
    addiu	$a7,$a7,-1
    sw	$a7,68($sp)
    jal	ChangeWindowProperty
    move	$a7,$zero
    beqz	$v0,.L5ef7c114
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,424
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
.L5ef7c114:
    addiu	$a6,$sp,40
    li	$a5,10
    move	$a4,$zero
    sw	$zero,56($sp)
    sw	$zero,52($sp)
    ld	$t2,96($sp)
    sw	$zero,48($sp)
    sw	$zero,44($sp)
    sw	$t2,60($sp)
    li	$a3,32
    lw	$t1,32($s0)
    li	$a2,24
    li	$a7,1
    sllv	$t1,$a7,$t1
    sw	$t1,64($sp)
    li	$a1,26
    lw	$t0,32($s0)
    ld	$a0,80($sp)
    # lw $t9, -29416($gp)
    sllv	$a7,$a7,$t0
    addiu	$a7,$a7,-1
    sw	$a7,68($sp)
    jal	ChangeWindowProperty
    move	$a7,$zero
    beqz	$v0,.L5ef7c198
    ld	$s0,216($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,424
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
.L5ef7c198:
    # lw $t9, -32728($gp)
    addiu	$t9,$t9,-18372
    bal	nfbGenericScreenInit
    move	$a0,$s1
    ld	$ra,224($sp)
    lw	$t9,116($s1)
    lw	$t9,188($t9)
    beqzl	$t9,.L5ef7c1cc
    ld	$s1,160($sp)
    jal	local_0x5ef80000
    move	$a0,$s1
    ld	$ra,224($sp)
    ld	$s1,160($sp)
.L5ef7c1cc:
    jr	$ra
    addiu	$sp,$sp,256
.L5ef7c1d4:
    ld	$s4,200($sp)
.L5ef7c1d8:
    ld	$s0,216($sp)
    lw	$at,116($s1)
    ld	$s7,192($sp)
    ld	$s5,120($sp)
    sw	$zero,204($at)
    ld	$s6,184($sp)
    lw	$s8,116($s1)
    ld	$s3,176($sp)
    ld	$s2,168($sp)
    sw	$zero,208($s8)
    b	.L5ef7c198
    ld	$s8,208($sp)
.L5ef7c208:
    li	$a2,1
    # lw $t9, -29496($gp)
    la	$a0,local_0x5f0a0000
    li	$a1,15
    jal	MakeAtom
    addiu	$a0,$a0,232
    beq	$s2,$v0,.L5ef7c300
    sd	$v0,112($sp)
    ld	$a3,112($sp)
    beqz	$a3,.L5ef7c300
    sd	$s3,176($sp)
    la	$s3,ErrorF
    sd	$s4,200($sp)
    la	$s4,exit
    # lw $t9, -29840($gp)
.L5ef7c244:
    la	$a0,gammaAdjust
    sd	$s6,184($sp)
    jal	strlen
    lw	$a0,0($a0)
    move	$a5,$v0
    move	$a4,$zero
    li	$a3,8
    li	$a2,31
    ld	$a1,112($sp)
    move	$a0,$s0
    la	$a6,gammaAdjust
    la	$s6,ChangeWindowProperty
    move	$a7,$zero
    lw	$a6,0($a6)
    jalr	$s6
    move	$t9,$s6
    b	.L5ef7bd4c
    la	$v0,MakeAtom
.L5ef7c28c:
    # lw $t9, -29696($gp)
.L5ef7c290:
    la	$a0,local_0x5f0a0000
    jal	FatalError
    addiu	$a0,$a0,304
    b	.L5ef7bd84
    sd	$s8,208($sp)
.L5ef7c2a4:
    b	.L5ef7bc40
    move	$a0,$zero
.L5ef7c2ac:
    # lw $t9, -29252($gp)
    jal	MakeWindowOptional
    ld	$a0,80($sp)
    bnez	$v0,.L5ef7bf54
    addiu	$a6,$sp,40
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,384
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
    b	.L5ef7bf54
    addiu	$a6,$sp,40
.L5ef7c2e4:
    # lw $t9, -29696($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	FatalError
    addiu	$a0,$a0,128
    b	.L5ef7bc20
    lbu	$a3,1($s0)
.L5ef7c300:
    la	$a0,local_0x5f0a0000
    sd	$s3,176($sp)
    la	$s3,ErrorF
    sd	$s4,200($sp)
    addiu	$a0,$a0,248
    jalr	$s3
    move	$t9,$s3
    la	$s4,exit
    li	$a0,1
    jalr	$s4
    move	$t9,$s4
    b	.L5ef7c244
    nop	# was lw $t9, -29840($gp)
.L5ef7c334:
    jal	strlen
    move	$a0,$s0
    lw	$a1,120($v0)
    b	.L5ef7bc3c
    lw	$a1,8($a1)
.end nfbInitRootWindow

