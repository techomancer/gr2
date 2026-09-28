#
# gr2_ddx: exp_cursor.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl expCursorInit
.ent expCursorInit
expCursorInit:
    li	$at,4
    li	$v1,128
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    addiu	$v1,$v1,-12
    lw	$v0,expScreenPrivateIndex
    sd	$s3,8($sp)
    lw	$s3,436($a0)
    lui	$a1,0x7
    sll	$v0,$v0,0x2
    addu	$s3,$s3,$v0
    lw	$s3,0($s3)
    move	$a6,$a0
    sd	$s0,16($sp)
    lw	$s0,0($s3)
    lw	$a0,4($s3)
    li	$v0,10
    addu	$s0,$s0,$a1
    andi	$a0,$a0,0xcf
    sw	$a0,4($s3)
    sb	$a0,-16296($s0)
    sb	$v0,-16300($s0)
    sb	$zero,-16304($s0)
    sh	$zero,-16312($s0)
    sh	$zero,-16312($s0)
    b	.L5ef61090
    move	$v0,$s0
.L5ef6107c:
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    addiu	$at,$at,16
    sh	$zero,-16312($v0)
.L5ef61090:
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    sh	$zero,-16312($v0)
    bne	$at,$v1,.L5ef6107c
    sh	$zero,-16312($v0)
    addiu	$a2,$sp,0
    li	$a1,38
    li	$a3,2560
    li	$a4,32
    sh	$zero,-16312($s0)
    sh	$zero,-16312($s0)
    sb	$zero,-16300($s0)
    sb	$a4,-16304($s0)
    sh	$a3,-16320($s0)
    sb	$zero,-16300($s0)
    sb	$a1,-16304($s0)
    sh	$zero,-16320($s0)
    sh	$zero,2($sp)
    sh	$zero,0($sp)
    # lw $t9, -29704($gp)
    lw	$a0,116($a6)
    li	$a1,15003
    jal	ioctl
    lw	$a0,100($a0)
    li	$at,-1
    beq	$v0,$at,.L5ef6113c
    ld	$ra,24($sp)
.L5ef6111c:
    lw	$v0,4($s3)
    ori	$v0,$v0,0x30
    sw	$v0,4($s3)
    ld	$s3,8($sp)
    sb	$v0,-16296($s0)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef6113c:
    la	$a1,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	ErrorF
    addiu	$a0,$a0,-1872
    b	.L5ef6111c
    ld	$ra,24($sp)
.end expCursorInit

.globl expDisplayCursor
.ent expDisplayCursor
expDisplayCursor:
    move	$t0,$s8
    addiu	$sp,$sp,-96
    addiu	$s8,$sp,96
    sd	$s0,-48($s8)
    move	$s0,$a0
    lui	$a7,0x16
    addiu	$a7,$a7,-11160
    sd	$gp,-56($s8)
    addu	$gp,$t9,$a7
    lw	$a0,expScreenPrivateIndex
    lw	$at,436($s0)
    sll	$a0,$a0,0x2
    addu	$at,$at,$a0
    lw	$at,0($at)
    sd	$t0,-64($s8)
    lw	$a0,852($at)
    sd	$s1,-72($s8)
    move	$s1,$a1
    beq	$a0,$a1,.L5ef614f8
    lw	$at,0($at)
    lw	$a0,0($s0)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lw	$a0,20($a0)
    move	$t8,$zero
    ld	$at,-64($s8)
    beqz	$a0,.L5ef614dc
    move	$v0,$a0
    lw	$at,0($s1)
    lhu	$a7,8($at)
    slti	$a7,$a7,17
    beqzl	$a7,.L5ef611e8
    lh	$t0,12($v0)
    li	$t8,16
    lh	$t0,12($v0)
.L5ef611e8:
    beqz	$t0,.L5ef61580
    li	$a7,1
.L5ef611f0:
    move	$a3,$s0
    lw	$t9,116($s0)
    lhu	$a2,14($at)
    sd	$s2,-96($s8)
    lw	$t9,140($t9)
    lhu	$a1,12($at)
    sd	$ra,-88($s8)
    jalr	$t9
    addu	$a1,$a1,$t8
    lui	$s2,0x7
    ld	$ra,-88($s8)
.L5ef6121c:
    move	$a6,$sp
    lhu	$t0,4($s1)
    lw	$at,0($s0)
    addiu	$sp,$sp,-32
    sra	$t0,$t0,0x8
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    lw	$at,20($at)
    sb	$t0,4($sp)
    lhu	$a7,10($s1)
    sra	$a7,$a7,0x8
    sb	$a7,10($sp)
    lhu	$t2,6($s1)
    sra	$t2,$t2,0x8
    sb	$t2,5($sp)
    lhu	$t1,12($s1)
    sra	$t1,$t1,0x8
    sb	$t1,11($sp)
    lhu	$t0,8($s1)
    sra	$t0,$t0,0x8
    sb	$t0,6($sp)
    lhu	$a7,14($s1)
    move	$v1,$sp
    sra	$a7,$a7,0x8
    beqz	$at,.L5ef612c0
    sb	$a7,12($sp)
    lw	$v0,4($at)
    beqzl	$v0,.L5ef612c4
    sb	$zero,18($v1)
    lhu	$a7,0($v0)
    sra	$a7,$a7,0x8
    sb	$a7,16($v1)
    lw	$t2,4($at)
    lhu	$t2,2($t2)
    sra	$t2,$t2,0x8
    sb	$t2,17($v1)
    lw	$t1,4($at)
    lhu	$t1,4($t1)
    sra	$t1,$t1,0x8
    b	.L5ef612cc
    sb	$t1,18($v1)
.L5ef612c0:
    sb	$zero,18($v1)
.L5ef612c4:
    sb	$zero,17($v1)
    sb	$zero,16($v1)
.L5ef612cc:
    li	$t0,7171
    sh	$t0,14($v1)
    li	$t0,3
    li	$t2,7169
    li	$t1,7170
    sh	$t1,8($v1)
    sh	$t2,2($v1)
    lw	$a7,expScreenPrivateIndex
    lw	$a1,436($s0)
    sh	$t0,0($v1)
    sll	$a7,$a7,0x2
    addu	$a1,$a1,$a7
    lw	$a1,0($a1)
    lw	$t2,0($a1)
    lui	$t1,0x4
    ori	$t1,$t1,0x554
    addu	$at,$s2,$t2
    addu	$t1,$t1,$t2
    sw	$zero,0($t1)
    lw	$t0,-24512($at)
    andi	$t0,$t0,0x1
    bnez	$t0,.L5ef61388
    ld	$s2,-96($s8)
    move	$v0,$zero
.L5ef6132c:
    sw	$v0,-36($s8)
    addiu	$t2,$v0,1
    sw	$t2,-36($s8)
    addiu	$t1,$t2,1
    sw	$t1,-36($s8)
    addiu	$t0,$t1,1
    sw	$t0,-36($s8)
    addiu	$a7,$t0,1
    sw	$a7,-36($s8)
    addiu	$a5,$a7,1
    sw	$a5,-36($s8)
    addiu	$a4,$a5,1
    sw	$a4,-36($s8)
    addiu	$a3,$a4,1
    sw	$a3,-36($s8)
    addiu	$a2,$a3,1
    sw	$a2,-36($s8)
    addiu	$a0,$a2,1
    sw	$a0,-36($s8)
    lw	$a7,-24512($at)
    andi	$a7,$a7,0x1
    beqz	$a7,.L5ef6132c
    move	$v0,$zero
.L5ef61388:
    li	$a5,8191
    addiu	$a4,$v1,12
    addiu	$a3,$v1,18
    move	$v0,$v1
    sw	$zero,-20480($at)
    ld	$s0,-48($s8)
    ld	$s1,-72($s8)
    move	$sp,$a6
.L5ef613a8:
    lbu	$t0,-16100($at)
    andi	$t0,$t0,0x2
    bnezl	$t0,.L5ef613cc
    lhu	$a2,2($v0)
.L5ef613b8:
    lbu	$t1,-16100($at)
    andi	$t1,$t1,0x2
    beqz	$t1,.L5ef613b8
    nop
    lhu	$a2,2($v0)
.L5ef613cc:
    sb	$a2,-15952($at)
    sra	$a7,$a2,0x8
    sb	$a7,-15948($at)
    sltu	$t0,$v0,$a4
    lbu	$a7,6($v0)
    lbu	$t1,5($v0)
    lbu	$a0,4($v0)
    sll	$a7,$a7,0x8
    sll	$t1,$t1,0x10
    sll	$a0,$a0,0x18
    or	$a0,$a0,$t1
    beqz	$t0,.L5ef6141c
    or	$a0,$a0,$a7
    lhu	$t0,8($v0)
    addiu	$t1,$a2,1
    bne	$t0,$t1,.L5ef6141c
    nop
    lbu	$t2,10($v0)
    b	.L5ef61438
    or	$a0,$t2,$a0
.L5ef6141c:
    beq	$a2,$a5,.L5ef61438
    sll	$t0,$a2,0x2
    lw	$a7,856($a1)
    addu	$a7,$a7,$t0
    lw	$a7,4($a7)
    andi	$a7,$a7,0xff
    or	$a0,$a7,$a0
.L5ef61438:
    addiu	$v0,$v0,6
    bne	$v0,$a3,.L5ef613a8
    sw	$a0,-15960($at)
    lh	$t1,0($v1)
    blez	$t1,.L5ef614c4
    move	$at,$zero
    move	$v0,$v1
.L5ef61454:
    lbu	$t1,4($v0)
    lhu	$t2,2($v0)
    lw	$a7,856($a1)
    andi	$t1,$t1,0xff
    sll	$t2,$t2,0x2
    addu	$a7,$a7,$t2
    sw	$t1,0($a7)
    lw	$t0,856($a1)
    lbu	$t1,5($v0)
    addu	$t0,$t0,$t2
    lw	$a7,0($t0)
    andi	$t1,$t1,0xff
    sll	$t1,$t1,0x8
    or	$a7,$a7,$t1
    sw	$a7,0($t0)
    lw	$t0,856($a1)
    lbu	$t1,6($v0)
    addu	$t0,$t0,$t2
    lw	$a7,0($t0)
    andi	$t1,$t1,0xff
    sll	$t1,$t1,0x10
    or	$a7,$a7,$t1
    sw	$a7,0($t0)
    lh	$t2,0($v1)
    addiu	$at,$at,1
    slt	$t2,$at,$t2
    bnez	$t2,.L5ef61454
    addiu	$v0,$v0,6
.L5ef614c4:
    li	$v0,1
    ld	$gp,-56($s8)
    ld	$t2,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t2
.L5ef614dc:
    li	$v0,1
    ld	$gp,-56($s8)
    ld	$s0,-48($s8)
    ld	$s1,-72($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef614f8:
    sh	$zero,-30($s8)
    sh	$zero,-32($s8)
    sd	$s2,-96($s8)
    lui	$s2,0x7
    addu	$a3,$s2,$at
    lbu	$a5,-16296($a3)
    li	$a2,768
    li	$a4,38
    andi	$a5,$a5,0xcf
    sb	$a5,-16296($a3)
    sb	$zero,-16300($a3)
    sb	$a4,-16304($a3)
    sh	$a2,-16320($a3)
    lbu	$a1,-16296($a3)
    sd	$ra,-88($s8)
    # lw $t9, -29704($gp)
    ori	$a1,$a1,0x30
    sb	$a1,-16296($a3)
    addiu	$a2,$s8,-32
    lw	$a0,116($s0)
    li	$a1,15003
    jal	ioctl
    lw	$a0,100($a0)
    li	$a7,-1
    bne	$v0,$a7,.L5ef6121c
    ld	$ra,-88($s8)
    la	$a1,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	ErrorF
    addiu	$a0,$a0,-1752
    b	.L5ef6121c
    ld	$ra,-88($s8)
.L5ef61580:
    lw	$at,4($v0)
    beqz	$at,.L5ef616ec
    sh	$a7,12($v0)
    lbu	$t0,6($at)
    beqzl	$t0,.L5ef616f0
    lw	$at,0($s1)
    lw	$at,0($s1)
    lhu	$a0,10($at)
    slti	$t1,$a0,32
    beqz	$t1,.L5ef615b4
    lw	$a1,8($v0)
    b	.L5ef615b8
    move	$v1,$a0
.L5ef615b4:
    li	$v1,32
.L5ef615b8:
    lhu	$a0,8($at)
    slti	$t2,$a0,32
    beqz	$t2,.L5ef615cc
    li	$v0,32
    move	$v0,$a0
.L5ef615cc:
    li	$a0,32
    beq	$v0,$a0,.L5ef617f8
    li	$t9,-1
    subu	$a7,$a0,$v0
    sllv	$t9,$t9,$a7
.L5ef615e0:
    lw	$a6,4($at)
    blez	$v1,.L5ef616c8
    lw	$t3,0($at)
    move	$a3,$a6
    move	$a0,$t3
    move	$a5,$a1
    slti	$a7,$v1,2
    sll	$at,$v1,0x2
    addu	$at,$at,$a1
    addiu	$a2,$v0,31
    sra	$a2,$a2,0x5
    bnez	$a7,.L5ef61808
    sll	$a2,$a2,0x2
    sd	$a2,-80($s8)
    addiu	$a5,$a5,-4
    move	$a1,$t8
    move	$a6,$t9
    lw	$t0,0($a0)
    addiu	$v1,$at,-4
    addiu	$a7,$v1,-4
    move	$at,$t0
.L5ef61634:
    and	$at,$at,$a6
    srlv	$at,$at,$a1
    sw	$at,4($a5)
    addu	$a4,$a2,$a3
    lw	$v0,0($a3)
    lw	$at,0($a0)
    addiu	$a5,$a5,8
    addu	$a0,$a2,$a0
    xor	$at,$at,$v0
    and	$at,$at,$a6
    srlv	$at,$at,$a1
    sw	$at,124($a5)
    beq	$a5,$v1,.L5ef616e0
    lw	$at,0($a0)
    and	$at,$at,$a6
    srlv	$at,$at,$a1
    sw	$at,0($a5)
    addu	$a3,$a2,$a4
    lw	$v0,0($a4)
    lw	$at,0($a0)
    addu	$a0,$a2,$a0
    xor	$at,$at,$v0
    and	$at,$at,$a6
    srlv	$at,$at,$a1
    sw	$at,128($a5)
    bne	$a5,$a7,.L5ef61634
    lw	$at,0($a0)
.L5ef616a0:
    and	$a7,$at,$t9
    srlv	$a7,$a7,$t8
    sw	$a7,4($a5)
    lw	$t2,0($a3)
    lw	$t1,0($a0)
    xor	$t1,$t1,$t2
    and	$t1,$t1,$t9
    srlv	$t1,$t1,$t8
    sw	$t1,132($a5)
.L5ef616c4:
    lw	$at,0($s1)
.L5ef616c8:
    lw	$a0,0($s0)
    sd	$ra,-88($s8)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    b	.L5ef611f0
    lw	$a0,20($a0)
.L5ef616e0:
    move	$a3,$a4
    b	.L5ef616a0
    addiu	$a5,$a5,-4
.L5ef616ec:
    lw	$at,0($s1)
.L5ef616f0:
    lhu	$a0,10($at)
    slti	$a2,$a0,32
    beqz	$a2,.L5ef61708
    lw	$a2,8($v0)
    b	.L5ef6170c
    move	$a3,$a0
.L5ef61708:
    li	$a3,32
.L5ef6170c:
    lhu	$a0,8($at)
    slti	$a7,$a0,32
    beqz	$a7,.L5ef61720
    li	$a1,32
    move	$a1,$a0
.L5ef61720:
    li	$a0,32
    beq	$a1,$a0,.L5ef61800
    li	$t3,-1
    subu	$a7,$a0,$a1
    sllv	$t3,$t3,$a7
.L5ef61734:
    lw	$a5,4($at)
    blez	$a3,.L5ef616c8
    lw	$a6,0($at)
    move	$a4,$a6
    move	$v1,$a5
    move	$a0,$a2
    slti	$a7,$a3,2
    sll	$at,$a3,0x2
    addu	$at,$at,$a2
    addiu	$t9,$a1,31
    sra	$t9,$t9,0x5
    bnez	$a7,.L5ef61834
    sll	$t9,$t9,0x2
    move	$a1,$t8
    move	$v0,$t9
    lw	$a7,0($v1)
    move	$a2,$t3
    addiu	$a6,$at,-4
    move	$at,$a7
.L5ef61780:
    lw	$a5,0($a4)
    and	$a3,$at,$a2
    and	$at,$a5,$a3
    srlv	$at,$at,$a1
    sw	$at,0($a0)
    addiu	$a0,$a0,4
    lw	$at,0($a4)
    addu	$v1,$v0,$v1
    addu	$a4,$v0,$a4
    nor	$at,$at,$zero
    and	$at,$at,$a3
    srlv	$at,$at,$a1
    sw	$at,124($a0)
    bne	$a0,$a6,.L5ef61780
    lw	$at,0($v1)
    move	$t1,$a0
    move	$t0,$a4
    lw	$a7,0($t0)
    move	$t2,$at
    and	$t2,$t2,$t3
    and	$a7,$a7,$t2
    srlv	$a7,$a7,$t8
    sw	$a7,0($t1)
    lw	$t0,0($t0)
    nor	$t0,$t0,$zero
    and	$t0,$t0,$t2
    srlv	$t0,$t0,$t8
    sw	$t0,128($t1)
.L5ef617f0:
    b	.L5ef616c8
    lw	$at,0($s1)
.L5ef617f8:
    b	.L5ef615e0
    li	$t9,-1
.L5ef61800:
    b	.L5ef61734
    li	$t3,-1
.L5ef61808:
    lw	$t1,0($a0)
    and	$t1,$t1,$t9
    srlv	$t1,$t1,$t8
    sw	$t1,0($a5)
    lw	$a7,0($a0)
    lw	$t0,0($a3)
    xor	$a7,$a7,$t0
    and	$a7,$a7,$t9
    srlv	$a7,$a7,$t8
    b	.L5ef616c4
    sw	$a7,128($a5)
.L5ef61834:
    lw	$a7,0($v1)
    lw	$t0,0($a4)
    and	$a7,$a7,$t3
    and	$t0,$t0,$a7
    srlv	$t0,$t0,$t8
    sw	$t0,0($a0)
    lw	$t2,0($a4)
    nor	$t2,$t2,$zero
    and	$t2,$t2,$a7
    srlv	$t2,$t2,$t8
    b	.L5ef617f0
    sw	$t2,128($a0)
.end expDisplayCursor

.globl expInstallCursor
.ent expInstallCursor
expInstallCursor:
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lui	$t2,0x16
    addiu	$t2,$t2,-10412
    addu	$gp,$t9,$t2
    move	$t2,$a2
    lw	$t1,expScreenPrivateIndex
    lw	$t0,436($a3)
    lw	$v0,8($a0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    addiu	$a0,$v0,248
    li	$at,10
    lw	$t0,0($t0)
    lui	$t9,0x7
    move	$t1,$a1
    addu	$t0,$t0,$t9
    sb	$at,-16300($t0)
    sb	$zero,-16304($t0)
    move	$v1,$t0
    lhu	$at,0($v0)
.L5ef60ecc:
    sh	$at,-16312($v1)
    lhu	$at,2($v0)
    sh	$at,-16312($v1)
    lhu	$at,4($v0)
    sh	$at,-16312($v1)
    lhu	$at,6($v0)
    addiu	$v0,$v0,8
    sh	$at,-16312($v1)
    bne	$v0,$a0,.L5ef60ecc
    lhu	$at,0($v0)
    sh	$at,-16312($t0)
    lhu	$t3,2($v0)
    sh	$t3,-16312($t0)
    lhu	$a7,4($v0)
    addiu	$a2,$sp,0
    sh	$a7,-16312($t0)
    li	$a1,2560
    lhu	$a6,6($v0)
    li	$a4,32
    li	$a5,38
    sh	$a6,-16312($t0)
    sb	$zero,-16300($t0)
    sb	$a5,-16304($t0)
    sh	$zero,-16320($t0)
    sb	$zero,-16300($t0)
    sb	$a4,-16304($t0)
    sh	$a1,-16320($t0)
    sh	$t2,2($sp)
    sh	$t1,0($sp)
    # lw $t9, -29704($gp)
    lw	$a0,116($a3)
    li	$a1,15003
    jal	ioctl
    lw	$a0,100($a0)
    li	$at,-1
    beq	$v0,$at,.L5ef60f6c
    ld	$ra,16($sp)
.L5ef60f60:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef60f6c:
    la	$a1,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,0($a1)
    jal	ErrorF
    addiu	$a0,$a0,-1872
    b	.L5ef60f60
    ld	$ra,16($sp)
.end expInstallCursor

.globl expRealizeCursor
.ent expRealizeCursor
expRealizeCursor:
    addiu	$sp,$sp,-80
    sd	$s1,48($sp)
    sd	$s4,40($sp)
    move	$s4,$a0
    li	$a0,16
    sd	$s2,24($sp)
    move	$s2,$zero
    sd	$s0,8($sp)
    sd	$s3,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x16
    addiu	$at,$at,-9760
    addu	$gp,$t9,$at
    la	$s3,Xalloc
    move	$s0,$a1
    sd	$ra,16($sp)
    jalr	$s3
    move	$t9,$s3
    move	$s1,$v0
    lw	$v0,0($s4)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    beqz	$s1,.L5ef60dbc
    sw	$s1,20($v0)
    li	$a0,256
    jalr	$s3
    move	$t9,$s3
    move	$s3,$v0
    beqz	$v0,.L5ef60df4
    sw	$v0,8($s1)
    # lw $t9, -29488($gp)
    move	$a0,$s3
    move	$a1,$zero
    jal	memset
    li	$a2,256
    sw	$zero,0($s1)
    sw	$zero,4($s1)
    li	$a5,1
    sh	$a5,12($s1)
    lw	$v0,0($s0)
    lhu	$v1,10($v0)
    li	$a1,32
    ld	$ra,16($sp)
    slti	$a3,$v1,32
    beqz	$a3,.L5ef60ca4
    ld	$s1,48($sp)
    b	.L5ef60ca8
    move	$a1,$v1
.L5ef60ca4:
    ld	$s1,48($sp)
.L5ef60ca8:
    lhu	$a0,8($v0)
    addiu	$t0,$a0,31
    slti	$a6,$a0,32
    beqz	$a6,.L5ef60cc8
    sra	$t0,$t0,0x5
    move	$v1,$a0
    b	.L5ef60ccc
    nop
.L5ef60cc8:
    li	$v1,32
.L5ef60ccc:
    slti	$at,$v1,17
    beqz	$at,.L5ef60cdc
    li	$a0,32
    li	$s2,16
.L5ef60cdc:
    ld	$s0,8($sp)
    beq	$v1,$a0,.L5ef60e38
    li	$t1,-1
    subu	$at,$a0,$v1
    sllv	$t1,$t1,$at
.L5ef60cf0:
    lw	$a2,4($v0)
    ld	$s4,40($sp)
    move	$a0,$s3
    lw	$a7,0($v0)
    sll	$t2,$a1,0x2
    blez	$a1,.L5ef60da4
    addu	$t2,$s3,$t2
    sll	$t3,$t0,0x2
    move	$v1,$a2
    slti	$at,$a1,2
    bnez	$at,.L5ef60e40
    move	$a4,$a7
    lw	$at,0($v1)
    addiu	$a6,$t2,-4
    move	$a1,$s2
    move	$v0,$t3
    move	$a2,$t1
.L5ef60d34:
    lw	$a5,0($a4)
    and	$a3,$at,$a2
    and	$at,$a5,$a3
    srlv	$at,$at,$a1
    sw	$at,0($a0)
    addiu	$a0,$a0,4
    lw	$at,0($a4)
    addu	$v1,$v0,$v1
    addu	$a4,$v0,$a4
    nor	$at,$at,$zero
    and	$at,$at,$a3
    srlv	$at,$at,$a1
    sw	$at,124($a0)
    bne	$a0,$a6,.L5ef60d34
    lw	$at,0($v1)
    move	$a5,$a0
    move	$a3,$a4
    lw	$a7,0($a3)
    move	$a6,$at
    and	$a6,$a6,$t1
    and	$a7,$a7,$a6
    srlv	$a7,$a7,$s2
    sw	$a7,0($a5)
    lw	$a3,0($a3)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$a6
    srlv	$a3,$a3,$s2
    sw	$a3,128($a5)
.L5ef60da4:
    li	$v0,1
    ld	$gp,32($sp)
    ld	$s2,24($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef60dbc:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    ld	$s1,48($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1920
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    ld	$ra,16($sp)
    ld	$s3,0($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef60df4:
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s1
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    ld	$s1,48($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1920
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,8($sp)
    ld	$s2,24($sp)
    ld	$ra,16($sp)
    ld	$s3,0($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef60e38:
    b	.L5ef60cf0
    li	$t1,-1
.L5ef60e40:
    lw	$a5,0($v1)
    lw	$a6,0($a4)
    and	$a5,$a5,$t1
    and	$a6,$a6,$a5
    srlv	$a6,$a6,$s2
    sw	$a6,0($a0)
    lw	$a3,0($a4)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$a5
    srlv	$a3,$a3,$s2
    b	.L5ef60da4
    sw	$a3,128($a0)
.end expRealizeCursor

.globl expCursorOn
.ent expCursorOn
expCursorOn:
    lui	$v0,0x16
    addiu	$v0,$v0,-10696
    addu	$at,$t9,$v0
    lw	$t9,expScreenPrivateIndex
    lw	$a6,436($a1)
    sll	$t9,$t9,0x2
    addu	$a6,$a6,$t9
    lw	$a6,0($a6)
    lw	$a5,0($a6)
    lui	$t9,0x7
    addu	$a5,$a5,$t9
    beqz	$a0,.L5ef60fd0
    lbu	$a4,-16296($a5)
    ori	$a4,$a4,0x30
.L5ef60fc4:
    sb	$a4,-16296($a5)
    jr	$ra
    sw	$a4,4($a6)
.L5ef60fd0:
    b	.L5ef60fc4
    andi	$a4,$a4,0xcf
.end expCursorOn

.globl expDummySetCursorColor
.ent expDummySetCursorColor
expDummySetCursorColor:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$a1,0x16
    addiu	$a1,$a1,-10772
    addu	$gp,$t9,$a1
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,0($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1808
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end expDummySetCursorColor

