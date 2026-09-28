#
# gr2_ddx: exp_draw.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl expDrawSolidRects
.ent expDrawSolidRects
expDrawSolidRects:
    lui	$t3,0x18
    addiu	$t3,$t3,19312
    addu	$at,$t9,$t3
    lw	$t2,nfbWindowPrivateIndex
    lw	$t9,132($a5)
    li	$a6,-1
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$t9
    la	$t1,dbcWindowPrivateIndex
    lw	$t2,0($t2)
    lw	$t3,16($a5)
    lw	$t1,0($t1)
    lw	$v0,expScreenPrivateIndex
    lw	$t3,436($t3)
    sll	$t1,$t1,0x2
    sll	$v0,$v0,0x2
    addu	$t3,$t3,$v0
    lw	$t3,0($t3)
    addu	$t1,$t1,$t9
    beqz	$a1,.L5ef39c80
    lw	$t3,0($t3)
    lb	$v1,1($t1)
    li	$v0,-3
    beql	$v1,$v0,.L5ef39c20
    lbu	$t0,2($a5)
    beq	$v1,$a6,.L5ef39c40
.L5ef39abc:
    andi	$v0,$a4,0x3
    li	$a6,13
    lw	$t8,20($t2)
    lui	$a5,0x4
    addu	$a5,$t3,$a5
    beq	$t8,$a6,.L5ef39c28
    move	$v1,$t8
    li	$a7,14
    beq	$v1,$a7,.L5ef39c68
    andi	$a6,$a4,0xc
    li	$t0,12
    beq	$v1,$t0,.L5ef39c50
    li	$v0,8
    move	$t2,$a4
    sw	$t8,1324($a5)
    sw	$zero,1236($a5)
    lb	$v1,1($t1)
    sll	$v1,$v1,0x3
.L5ef39b04:
    li	$a4,1
    sltu	$t0,$a1,$a4
    beqzl	$t0,.L5ef39b14
    move	$a4,$a1
.L5ef39b14:
    sw	$a2,1328($a5)
    andi	$a6,$a4,0x1
    lui	$a7,0xff
    ori	$a7,$a7,0xffff
    and	$a7,$t2,$a7
    sw	$a7,1916($a5)
    sw	$a3,1916($a5)
    sw	$v1,1916($a5)
    beqz	$a6,.L5ef39b64
    sw	$zero,1216($a5)
    lh	$t0,0($a0)
    sw	$t0,1916($a5)
    lh	$a7,2($a0)
    sw	$a7,1916($a5)
    lh	$a6,4($a0)
    sw	$a6,1916($a5)
    lh	$v0,6($a0)
    addiu	$a1,$a1,-1
    addiu	$a0,$a0,8
    sw	$v0,1916($a5)
.L5ef39b64:
    move	$a3,$a1
    sra	$a2,$a4,0x1
    beqz	$a2,.L5ef39c18
    move	$v1,$a0
    slti	$v0,$a2,2
    bnez	$v0,.L5ef39c88
    move	$a0,$a5
    addiu	$a1,$a3,-2
    lh	$v0,0($v1)
.L5ef39b88:
    sw	$v0,1916($a0)
    lh	$v0,2($v1)
    sw	$v0,1916($a0)
    lh	$v0,4($v1)
    sw	$v0,1916($a0)
    lh	$v0,6($v1)
    sw	$v0,1916($a0)
    lh	$v0,8($v1)
    sw	$v0,1916($a0)
    lh	$v0,10($v1)
    sw	$v0,1916($a0)
    lh	$v0,12($v1)
    sw	$v0,1916($a0)
    lh	$v0,14($v1)
    addiu	$a1,$a1,-2
    addiu	$v1,$v1,16
    sw	$v0,1916($a0)
    bnez	$a1,.L5ef39b88
    lh	$v0,0($v1)
    move	$a7,$v0
    sw	$a7,1916($a5)
    move	$a6,$v1
    lh	$t1,2($a6)
    sw	$t1,1916($a5)
    lh	$t0,4($a6)
    sw	$t0,1916($a5)
    lh	$a7,6($a6)
    sw	$a7,1916($a5)
    lh	$t1,8($a6)
    sw	$t1,1916($a5)
    lh	$t0,10($a6)
    sw	$t0,1916($a5)
    lh	$a7,12($a6)
    sw	$a7,1916($a5)
    lh	$a6,14($a6)
    sw	$a6,1916($a5)
.L5ef39c18:
    jr	$ra
    sw	$zero,1960($a5)
.L5ef39c20:
    b	.L5ef39abc
    sllv	$a4,$a4,$t0
.L5ef39c28:
    move	$t2,$zero
    li	$v1,1
    li	$a6,11
    sw	$a6,1324($a5)
    b	.L5ef39b04
    sw	$v0,1236($a5)
.L5ef39c40:
    lbu	$a7,2($a5)
    sllv	$a7,$a4,$a7
    b	.L5ef39abc
    or	$a4,$a7,$a4
.L5ef39c50:
    move	$t2,$zero
    li	$v1,1
    sw	$v0,1324($a5)
    andi	$t0,$a4,0xf
    b	.L5ef39b04
    sw	$t0,1236($a5)
.L5ef39c68:
    move	$t2,$zero
    li	$v1,9
    li	$a7,11
    sw	$a7,1324($a5)
    b	.L5ef39b04
    sw	$a6,1236($a5)
.L5ef39c80:
    jr	$ra
    nop
.L5ef39c88:
    move	$a0,$a3
    move	$a1,$v1
    lh	$a7,0($a1)
    sw	$a7,1916($a5)
    lh	$a6,2($a1)
    sw	$a6,1916($a5)
    lh	$v0,4($a1)
    sw	$v0,1916($a5)
    lh	$t0,6($a1)
    sw	$t0,1916($a5)
    lh	$a7,8($a1)
    sw	$a7,1916($a5)
    lh	$a6,10($a1)
    sw	$a6,1916($a5)
    lh	$v0,12($a1)
    sw	$v0,1916($a5)
    lh	$t0,14($a1)
    b	.L5ef39c18
    sw	$t0,1916($a5)
.end expDrawSolidRects

.globl expTileRects
.ent expTileRects
expTileRects:
    li	$at,5
    addiu	$sp,$sp,-288
    sd	$s5,64($sp)
    sd	$s6,120($sp)
    sd	$ra,48($sp)
    sd	$a6,152($sp)
    sd	$a5,200($sp)
    sd	$s1,80($sp)
    move	$s1,$a4
    sd	$s3,104($sp)
    move	$s3,$a3
    sd	$s7,72($sp)
    move	$s7,$a2
    sd	$s2,128($sp)
    move	$s2,$a7
    sd	$s8,88($sp)
    sd	$gp,56($sp)
    sd	$a1,136($sp)
    lui	$a1,0x18
    addiu	$a1,$a1,18672
    addu	$gp,$t9,$a1
    sd	$s4,112($sp)
    lw	$s4,300($sp)
    lw	$s8,nfbWindowPrivateIndex
    sd	$s0,96($sp)
    lw	$t9,132($s4)
    sll	$s8,$s8,0x2
    lbu	$v0,3($s4)
    addu	$s8,$s8,$t9
    sd	$a0,40($sp)
    sra	$a0,$v0,0x4
    sd	$a0,176($sp)
    lw	$a0,16($s4)
    la	$s0,dbcWindowPrivateIndex
    lw	$a1,expScreenPrivateIndex
    lw	$a0,436($a0)
    lw	$s0,0($s0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    lw	$s8,0($s8)
    sll	$s0,$s0,0x2
    lw	$a0,0($a0)
    addu	$s0,$s0,$t9
    beq	$a7,$at,.L5ef3a3c0
    sd	$a0,32($sp)
    beqz	$s2,.L5ef3ac7c
    ld	$a0,40($sp)
    sd	$s5,64($sp)
    li	$s5,15
    beq	$s5,$s2,.L5ef3acbc
    li	$t0,10
    beq	$s2,$t0,.L5ef3acec
    move	$a5,$s4
    lb	$at,1($s0)
    li	$t1,-3
    beq	$at,$t1,.L5ef3ab9c
    li	$t2,-1
    beql	$at,$t2,.L5ef3abe0
    lbu	$t1,2($s4)
.L5ef39dc4:
    sd	$zero,24($sp)
    li	$t3,8
    beq	$v0,$t3,.L5ef3abb0
    move	$at,$v0
    li	$t0,16
    beq	$at,$t0,.L5ef3ab60
    li	$t1,24
    beq	$at,$t1,.L5ef3ab40
    li	$t2,32
    beql	$at,$t2,.L5ef3ab44
    sd	$s6,120($sp)
    sd	$s6,120($sp)
    lw	$a5,0($sp)
.L5ef39df8:
    ld	$t1,200($sp)
    multu	$a5,$t1
    sd	$a5,216($sp)
    mflo	$s6
    move	$t0,$s6
    slti	$t3,$s6,4865
    beqz	$t3,.L5ef39e6c
    sd	$s6,144($sp)
    ld	$t2,24($sp)
    beqz	$t2,.L5ef3ab20
    ld	$s4,216($sp)
    # lw $t9, -29492($gp)
    sd	$ra,48($sp)
    jal	Xalloc
    sll	$a0,$s6,0x2
    beqz	$v0,.L5ef3ad18
    ld	$t3,200($sp)
    beqz	$t3,.L5ef3a4e0
    move	$v1,$v0
    move	$a0,$s1
    slt	$a1,$s1,$zero
    bnezl	$a1,.L5ef39e54
    move	$a0,$zero
.L5ef39e54:
    move	$a5,$zero
    move	$a4,$zero
    srl	$ra,$s3,0x1
    sll	$a1,$s1,0x2
    b	.L5ef3a480
    addu	$ra,$ra,$ra
.L5ef39e6c:
    ld	$t0,136($sp)
    lw	$s6,0($s8)
    sd	$ra,48($sp)
    beqz	$t0,.L5ef3a3c0
    lw	$s6,8($s6)
    sd	$ra,48($sp)
    ld	$t1,40($sp)
    ld	$t0,136($sp)
    lw	$s5,292($sp)
    move	$s0,$t1
    sll	$t0,$t0,0x3
    addu	$t0,$t0,$t1
    b	.L5ef39eb4
    sd	$t0,184($sp)
.L5ef39ea4:
    ld	$t1,184($sp)
    addiu	$s0,$s0,8
    beql	$s0,$t1,.L5ef3a3c4
    ld	$gp,56($sp)
.L5ef39eb4:
    lh	$v1,0($s0)
    sh	$v1,16($sp)
    lh	$a1,2($s0)
    ld	$t2,152($sp)
    sh	$a1,18($sp)
    lh	$t2,0($t2)
    subu	$t2,$v1,$t2
    divu	$zero,$t2,$s1
    ld	$at,152($sp)
    ld	$t3,200($sp)
    mfhi	$s8
    bltz	$s8,.L5ef3a120
    teq	$s1,$zero,0x7
.L5ef39ee8:
    lh	$at,2($at)
    subu	$at,$a1,$at
    divu	$zero,$at,$t3
    mfhi	$at
    bltz	$at,.L5ef3a128
    teq	$t3,$zero,0x7
.L5ef39f00:
    addu	$a0,$v1,$s1
    lh	$v0,4($s0)
    subu	$a0,$a0,$s8
    sltu	$t0,$a0,$v0
    bnez	$t0,.L5ef39f1c
    move	$v1,$a0
    move	$v1,$v0
.L5ef39f1c:
    ld	$a0,200($sp)
    sh	$v1,20($sp)
    lh	$v0,6($s0)
    addu	$a0,$a1,$a0
    subu	$a0,$a0,$at
    sltu	$t0,$a0,$v0
    bnez	$t0,.L5ef39f40
    move	$a7,$a0
    move	$a7,$v0
.L5ef39f40:
    multu	$at,$s3
    addiu	$a0,$sp,16
    sh	$a7,22($sp)
    move	$a3,$s2
    move	$a4,$s5
    ld	$a1,176($sp)
    move	$a5,$s4
    move	$t9,$s6
    mfhi	$zero
    sllv	$a1,$s8,$a1
    sd	$a1,168($sp)
    mflo	$a2
    addu	$a2,$a2,$s7
    sd	$a2,192($sp)
    addu	$a1,$a1,$a2
    jalr	$s6
    move	$a2,$s3
    lh	$t0,4($s0)
    lh	$at,20($sp)
    slt	$t0,$at,$t0
    beqzl	$t0,.L5ef3a004
    lh	$t3,6($s0)
    b	.L5ef39fd8
    sh	$at,16($sp)
.L5ef39fa0:
    addiu	$a0,$sp,16
.L5ef39fa4:
    ld	$a1,192($sp)
    move	$a2,$s3
    move	$a3,$s2
    move	$a4,$s5
    move	$a5,$s4
    jalr	$s6
    move	$t9,$s6
    lh	$t1,4($s0)
    lh	$at,20($sp)
    slt	$t1,$at,$t1
    beqz	$t1,.L5ef3a000
    nop
    sh	$at,16($sp)
.L5ef39fd8:
    addu	$t2,$at,$s1
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,20($sp)
    lh	$v0,4($s0)
    slt	$t2,$v0,$t2
    beqz	$t2,.L5ef39fa4
    addiu	$a0,$sp,16
    b	.L5ef39fa0
    sh	$v0,20($sp)
.L5ef3a000:
    lh	$t3,6($s0)
.L5ef3a004:
    lh	$at,22($sp)
    slt	$t3,$at,$t3
    beqz	$t3,.L5ef39ea4
    ld	$t0,168($sp)
    addu	$t0,$t0,$s7
    b	.L5ef3a030
    sd	$t0,160($sp)
.L5ef3a020:
    lh	$t1,6($s0)
.L5ef3a024:
    lh	$at,22($sp)
    slt	$t1,$at,$t1
    beqz	$t1,.L5ef39ea4
.L5ef3a030:
    ld	$t2,200($sp)
    sh	$at,18($sp)
    addu	$t2,$at,$t2
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,22($sp)
    lh	$v0,6($s0)
    slt	$t2,$v0,$t2
    beqzl	$t2,.L5ef3a060
    lh	$a0,0($s0)
    sh	$v0,22($sp)
    lh	$a0,0($s0)
.L5ef3a060:
    sh	$a0,16($sp)
    lh	$v0,4($s0)
    addu	$a0,$a0,$s1
    subu	$a0,$a0,$s8
    sltu	$t3,$a0,$v0
    bnez	$t3,.L5ef3a080
    move	$at,$a0
    move	$at,$v0
.L5ef3a080:
    addiu	$a0,$sp,16
    sh	$at,20($sp)
    ld	$a1,160($sp)
    move	$a2,$s3
    move	$a3,$s2
    move	$a4,$s5
    move	$a5,$s4
    jalr	$s6
    move	$t9,$s6
    lh	$t0,4($s0)
    lh	$at,20($sp)
    slt	$t0,$at,$t0
    beqzl	$t0,.L5ef3a024
    lh	$t1,6($s0)
    b	.L5ef3a0f8
    sh	$at,16($sp)
.L5ef3a0c0:
    addiu	$a0,$sp,16
.L5ef3a0c4:
    move	$a1,$s7
    move	$a2,$s3
    move	$a3,$s2
    move	$a4,$s5
    move	$a5,$s4
    jalr	$s6
    move	$t9,$s6
    lh	$t1,4($s0)
    lh	$at,20($sp)
    slt	$t1,$at,$t1
    beqz	$t1,.L5ef3a020
    nop
    sh	$at,16($sp)
.L5ef3a0f8:
    addu	$t2,$at,$s1
    dsll32	$t2,$t2,0x10
    dsra32	$t2,$t2,0x10
    sh	$t2,20($sp)
    lh	$v0,4($s0)
    slt	$t2,$v0,$t2
    beqz	$t2,.L5ef3a0c4
    addiu	$a0,$sp,16
    b	.L5ef3a0c0
    sh	$v0,20($sp)
.L5ef3a120:
    b	.L5ef39ee8
    addu	$s8,$s8,$s1
.L5ef3a128:
    ld	$t3,200($sp)
    b	.L5ef39f00
    addu	$at,$at,$t3
.L5ef3a134:
    ld	$t0,144($sp)
    blez	$t0,.L5ef3a2e8
    sll	$t1,$at,0x2
    addiu	$at,$at,1
    div	$zero,$at,$s4
    teq	$s4,$zero,0x7
    addu	$t1,$t1,$s8
    lw	$t1,0($t1)
    mfhi	$t2
    beqz	$t2,.L5ef3ac4c
    sw	$t1,1272($s3)
.L5ef3a160:
    ld	$t2,144($sp)
    slti	$t2,$t2,2
    bnez	$t2,.L5ef3a220
    move	$v0,$zero
    ld	$a2,144($sp)
    sll	$t8,$t9,0x2
    sll	$a4,$at,0x2
    addiu	$a2,$a2,-1
    slti	$t3,$a2,2
    bnez	$t3,.L5ef3ad6c
    addu	$a4,$a4,$s8
    addiu	$a0,$at,1
    div	$zero,$a0,$s4
    addu	$a1,$t9,$a0
    mfhi	$t0
    sltu	$t0,$zero,$t0
    beqzl	$t0,.L5ef3a1a8
    move	$a0,$a1
.L5ef3a1a8:
    lw	$v1,0($a4)
    move	$a5,$s4
    move	$a3,$t8
    move	$a6,$s3
    addiu	$at,$v0,1
    move	$v0,$t0
    move	$a1,$t9
    addiu	$a0,$a0,1
    div	$zero,$a0,$s4
    nop
.L5ef3a1d0:
    sw	$v1,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$v1,$a4,4
    addu	$a4,$a3,$v1
    bnezl	$v0,.L5ef3a1e8
    move	$a4,$v1
.L5ef3a1e8:
    addu	$v0,$a1,$a0
    move	$v1,$v0
    mfhi	$v0
    sltu	$v0,$zero,$v0
    bnezl	$v0,.L5ef3a200
    move	$v1,$a0
.L5ef3a200:
    addiu	$a0,$v1,1
    div	$zero,$a0,$a5
    addiu	$at,$at,1
    bne	$at,$a2,.L5ef3a1d0
    lw	$v1,0($a4)
    teq	$s4,$zero,0x7
    move	$t1,$v1
    sw	$t1,1916($s3)
.L5ef3a220:
    ld	$t2,144($sp)
    slti	$t2,$t2,8
    beqz	$t2,.L5ef3a2e8
    ld	$t0,144($sp)
    move	$at,$zero
    li	$a1,8
    subu	$a1,$a1,$t0
    andi	$v0,$a1,0x3
    beqz	$v0,.L5ef3a258
    move	$v1,$a1
.L5ef3a248:
    addiu	$at,$at,1
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef3a248
    sw	$zero,1916($s3)
.L5ef3a258:
    sra	$a2,$v1,0x2
    beqz	$a2,.L5ef3a2e8
    move	$v0,$at
    slti	$t1,$a2,2
    bnez	$t1,.L5ef3ad80
    addiu	$at,$a1,-12
    addiu	$a0,$a1,-4
    move	$a6,$s3
    addiu	$v1,$v0,4
    addiu	$t2,$a1,-8
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    move	$v0,$t2
.L5ef3a28c:
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    beq	$v1,$a0,.L5ef3a2e0
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    beq	$v1,$v0,.L5ef3a2e0
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    beq	$v1,$at,.L5ef3a2e0
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    addiu	$v1,$v1,16
    bne	$v1,$a1,.L5ef3a28c
    sw	$zero,1916($a6)
.L5ef3a2e0:
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
.L5ef3a2e8:
    ld	$t3,24($sp)
    beqz	$t3,.L5ef3a2fc
    nop	# was lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s8
.L5ef3a2fc:
    ld	$t0,136($sp)
    beqz	$t0,.L5ef3a3c0
    ld	$t2,40($sp)
    ld	$v0,136($sp)
    lw	$t0,12($sp)
    move	$a0,$t2
    slti	$t1,$v0,2
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$t2
    ld	$t2,32($sp)
    lui	$at,0x4
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$t2
    bnez	$t1,.L5ef3ad98
    addu	$at,$at,$t0
    move	$a6,$s3
    ld	$v1,152($sp)
    sw	$zero,0($at)
    addiu	$a1,$v0,-8
    lh	$v0,0($v1)
.L5ef3a34c:
    sw	$v0,1916($a6)
    lh	$v0,0($a0)
    sw	$v0,1916($a6)
    lh	$v0,2($v1)
    sw	$v0,1916($a6)
    lh	$v0,2($a0)
    sw	$v0,1916($a6)
    lh	$v0,4($a0)
    sw	$v0,1916($a6)
    lh	$v0,6($a0)
    addiu	$a0,$a0,8
    sw	$v0,1916($a6)
    sw	$zero,0($at)
    bne	$a0,$a1,.L5ef3a34c
    lh	$v0,0($v1)
    move	$t2,$v0
    sw	$t2,1916($s3)
    move	$t0,$a0
    lh	$t1,0($t0)
    ld	$t3,152($sp)
    sw	$t1,1916($s3)
    lh	$t3,2($t3)
    sw	$t3,1916($s3)
    lh	$t2,2($t0)
    sw	$t2,1916($s3)
    lh	$t1,4($t0)
    sw	$t1,1916($s3)
    lh	$t0,6($t0)
    sw	$t0,1916($s3)
.L5ef3a3c0:
    ld	$gp,56($sp)
.L5ef3a3c4:
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    ld	$s5,64($sp)
    ld	$s6,120($sp)
    ld	$ra,48($sp)
    ld	$s7,72($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef3a3f4:
    sra	$t3,$a7,0x1
    move	$t8,$at
    beqz	$t3,.L5ef3a468
    move	$t9,$a2
    move	$at,$t8
    move	$a2,$t9
.L5ef3a40c:
    lhu	$t2,0($a2)
    andi	$t1,$t2,0xf0
    sll	$t1,$t1,0x8
    andi	$t3,$t2,0xf00
    sll	$t3,$t3,0xc
    or	$t1,$t1,$t3
    andi	$t2,$t2,0xf
    sll	$t2,$t2,0x4
    or	$t1,$t1,$t2
    sw	$t1,0($at)
    lhu	$t1,2($a2)
    addiu	$a2,$a2,4
    addiu	$at,$at,8
    andi	$t0,$t1,0xf0
    sll	$t0,$t0,0x8
    andi	$t2,$t1,0xf00
    sll	$t2,$t2,0xc
    or	$t0,$t0,$t2
    andi	$t1,$t1,0xf
    sll	$t1,$t1,0x4
    or	$t0,$t0,$t1
    bne	$at,$a3,.L5ef3a40c
    sw	$t0,-4($at)
.L5ef3a468:
    addiu	$a5,$a5,1
    ld	$t2,200($sp)
    addu	$a4,$a4,$ra
    sll	$t3,$a6,0x2
    beq	$a5,$t2,.L5ef3a4e0
    addu	$v1,$t3,$v1
.L5ef3a480:
    move	$at,$v1
    move	$a7,$s1
    addu	$a3,$a1,$v1
    beqz	$s1,.L5ef3a4d8
    move	$a6,$a0
    andi	$t0,$s1,0x1
    beqz	$t0,.L5ef3a3f4
    addu	$a2,$a4,$s7
    lhu	$t2,0($a2)
    addiu	$at,$at,4
    addiu	$a2,$a2,2
    andi	$t1,$t2,0xf0
    andi	$t3,$t2,0xf00
    andi	$t2,$t2,0xf
    sll	$t2,$t2,0x4
    sll	$t3,$t3,0xc
    sll	$t1,$t1,0x8
    or	$t1,$t1,$t3
    or	$t1,$t1,$t2
    sw	$t1,-4($at)
    b	.L5ef3a3f4
    nop
.L5ef3a4d8:
    b	.L5ef3a468
    move	$a6,$zero
.L5ef3a4e0:
    move	$a0,$v0
    move	$t9,$zero
    li	$s7,15
    ld	$ra,48($sp)
.L5ef3a4f0:
    sd	$a0,208($sp)
    lw	$s5,292($sp)
    lui	$s3,0x4
    lw	$at,20($s8)
    li	$t2,13
    ld	$t0,32($sp)
    move	$v0,$at
    beq	$at,$t2,.L5ef3abf4
    addu	$s3,$s3,$t0
    li	$t1,14
    beq	$v0,$t1,.L5ef3ac30
    ld	$s8,208($sp)
    li	$t2,12
    beq	$v0,$t2,.L5ef3ac14
    ori	$t0,$at,0x1000
    sw	$t0,1324($s3)
    sw	$zero,1236($s3)
    lb	$v1,1($s0)
    move	$v0,$s5
    sll	$v1,$v1,0x3
.L5ef3a540:
    sd	$ra,48($sp)
    move	$at,$zero
    li	$t1,0xd022
    lbu	$t2,8($sp)
    sra	$s0,$s6,0x5
    srl	$s0,$s0,0x1a
    addu	$s0,$s0,$s6
    sra	$s0,$s0,0x6
    lw	$t0,4($sp)
    sw	$zero,1328($s3)
    lui	$t3,0xff
    ori	$t3,$t3,0xffff
    and	$t3,$v0,$t3
    sw	$t3,1916($s3)
    ld	$t3,200($sp)
    sw	$s2,1916($s3)
    sw	$v1,1916($s3)
    sw	$t0,1256($s3)
    sw	$s1,1916($s3)
    sw	$t3,1916($s3)
    sw	$t2,1916($s3)
    beqz	$s0,.L5ef3a6e0
    sw	$t1,1916($s3)
    sd	$ra,48($sp)
    sll	$t0,$s0,0x6
    subu	$t0,$s6,$t0
    blez	$s0,.L5ef3a6e0
    sd	$t0,144($sp)
    move	$ra,$zero
    li	$s1,63
    move	$a4,$s8
    b	.L5ef3a6a4
    sll	$t8,$t9,0x2
.L5ef3a5c4:
    addu	$a4,$t8,$a4
.L5ef3a5c8:
    addiu	$a2,$at,1
    div	$zero,$a2,$s4
    addu	$a3,$t9,$a2
    mfhi	$at
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef3a5e4
    move	$a2,$a3
.L5ef3a5e4:
    lw	$a0,0($a4)
    move	$a3,$t8
    addiu	$a2,$a2,1
    div	$zero,$a2,$s4
    nop
.L5ef3a5f8:
    sw	$a0,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$v0,$a4,4
    addu	$a4,$a3,$v0
    bnezl	$at,.L5ef3a610
    move	$a4,$v0
.L5ef3a610:
    addu	$at,$a1,$a2
    move	$a0,$at
    mfhi	$at
    sltu	$v0,$zero,$at
    bnezl	$v0,.L5ef3a628
    move	$a0,$a2
.L5ef3a628:
    addiu	$a0,$a0,1
    div	$zero,$a0,$a5
    addiu	$v1,$v1,2
    lw	$at,0($a4)
    sw	$at,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$at,$a4,4
    addu	$a4,$a3,$at
    bnezl	$v0,.L5ef3a650
    move	$a4,$at
.L5ef3a650:
    addu	$at,$a1,$a0
    move	$v0,$at
    mfhi	$at
    sltu	$at,$zero,$at
    bnezl	$at,.L5ef3a668
    move	$v0,$a0
.L5ef3a668:
    addiu	$a2,$v0,1
    div	$zero,$a2,$a5
    bne	$v1,$a7,.L5ef3a5f8
    lw	$a0,0($a4)
    addiu	$ra,$ra,1
    addiu	$a4,$a4,4
    addu	$t2,$t8,$a4
    beqzl	$at,.L5ef3a68c
    move	$a4,$t2
.L5ef3a68c:
    teq	$s4,$zero,0x7
    move	$t1,$v0
    move	$t0,$a0
    sw	$t0,1916($s3)
    beq	$ra,$s0,.L5ef3a6e0
    move	$at,$t1
.L5ef3a6a4:
    addiu	$at,$at,1
    div	$zero,$at,$s4
    teq	$s4,$zero,0x7
    addiu	$a4,$a4,4
    li	$v1,0
    addiu	$a7,$s1,-1
    move	$a5,$s4
    move	$a1,$t9
    move	$a6,$s3
    lw	$t3,-4($a4)
    mfhi	$t0
    bnez	$t0,.L5ef3a5c8
    sw	$t3,1260($s3)
    b	.L5ef3a5c4
    addu	$at,$t9,$at
.L5ef3a6e0:
    ld	$t1,144($sp)
    blez	$t1,.L5ef3a2e8
    ld	$t0,144($sp)
    sra	$v0,$t0,0x4
    srl	$v0,$v0,0x1b
    addu	$v0,$v0,$t0
    sra	$v0,$v0,0x5
    beqz	$v0,.L5ef3a84c
    move	$s0,$v0
    ld	$t0,144($sp)
    sll	$t1,$v0,0x5
    subu	$t0,$t0,$t1
    blez	$s0,.L5ef3a84c
    sd	$t0,144($sp)
    move	$ra,$zero
    li	$s1,31
    sll	$t8,$t9,0x2
    sll	$a4,$at,0x2
    b	.L5ef3a810
    addu	$a4,$a4,$s8
.L5ef3a730:
    addu	$a4,$t8,$a4
.L5ef3a734:
    addiu	$a2,$at,1
    div	$zero,$a2,$s4
    addu	$a3,$t9,$a2
    mfhi	$at
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef3a750
    move	$a2,$a3
.L5ef3a750:
    lw	$a0,0($a4)
    move	$a3,$t8
    addiu	$a2,$a2,1
    div	$zero,$a2,$s4
    nop
.L5ef3a764:
    sw	$a0,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$v0,$a4,4
    addu	$a4,$a3,$v0
    bnezl	$at,.L5ef3a77c
    move	$a4,$v0
.L5ef3a77c:
    addu	$at,$a1,$a2
    move	$a0,$at
    mfhi	$at
    sltu	$v0,$zero,$at
    bnezl	$v0,.L5ef3a794
    move	$a0,$a2
.L5ef3a794:
    addiu	$a0,$a0,1
    div	$zero,$a0,$a5
    addiu	$v1,$v1,2
    lw	$at,0($a4)
    sw	$at,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$at,$a4,4
    addu	$a4,$a3,$at
    bnezl	$v0,.L5ef3a7bc
    move	$a4,$at
.L5ef3a7bc:
    addu	$at,$a1,$a0
    move	$v0,$at
    mfhi	$at
    sltu	$at,$zero,$at
    bnezl	$at,.L5ef3a7d4
    move	$v0,$a0
.L5ef3a7d4:
    addiu	$a2,$v0,1
    div	$zero,$a2,$a5
    bne	$v1,$a7,.L5ef3a764
    lw	$a0,0($a4)
    addiu	$ra,$ra,1
    addiu	$a4,$a4,4
    addu	$t2,$t8,$a4
    beqzl	$at,.L5ef3a7f8
    move	$a4,$t2
.L5ef3a7f8:
    teq	$s4,$zero,0x7
    move	$t1,$v0
    move	$t0,$a0
    sw	$t0,1916($s3)
    beq	$ra,$s0,.L5ef3a84c
    move	$at,$t1
.L5ef3a810:
    addiu	$at,$at,1
    div	$zero,$at,$s4
    teq	$s4,$zero,0x7
    addiu	$a4,$a4,4
    li	$v1,0
    addiu	$a7,$s1,-1
    move	$a5,$s4
    move	$a1,$t9
    move	$a6,$s3
    lw	$t3,-4($a4)
    mfhi	$t0
    bnez	$t0,.L5ef3a734
    sw	$t3,1264($s3)
    b	.L5ef3a730
    addu	$at,$t9,$at
.L5ef3a84c:
    ld	$t1,144($sp)
    blez	$t1,.L5ef3a2e8
    ld	$t0,144($sp)
    sra	$v0,$t0,0x3
    srl	$v0,$v0,0x1c
    addu	$v0,$v0,$t0
    sra	$v0,$v0,0x4
    beqz	$v0,.L5ef3a9b4
    move	$s0,$v0
    ld	$t0,144($sp)
    sll	$t1,$v0,0x4
    subu	$t0,$t0,$t1
    blez	$s0,.L5ef3a9b4
    sd	$t0,144($sp)
    move	$ra,$zero
    sll	$t8,$t9,0x2
    sll	$a4,$at,0x2
    b	.L5ef3a978
    addu	$a4,$a4,$s8
.L5ef3a898:
    addu	$a4,$t8,$a4
.L5ef3a89c:
    addiu	$a2,$at,1
    div	$zero,$a2,$s4
    addu	$a3,$t9,$a2
    mfhi	$at
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef3a8b8
    move	$a2,$a3
.L5ef3a8b8:
    lw	$a0,0($a4)
    move	$a3,$t8
    addiu	$a2,$a2,1
    div	$zero,$a2,$s4
    nop
.L5ef3a8cc:
    sw	$a0,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$v0,$a4,4
    addu	$a4,$a3,$v0
    bnezl	$at,.L5ef3a8e4
    move	$a4,$v0
.L5ef3a8e4:
    addu	$at,$a1,$a2
    move	$a0,$at
    mfhi	$at
    sltu	$v0,$zero,$at
    bnezl	$v0,.L5ef3a8fc
    move	$a0,$a2
.L5ef3a8fc:
    addiu	$a0,$a0,1
    div	$zero,$a0,$a5
    addiu	$v1,$v1,2
    lw	$at,0($a4)
    sw	$at,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$at,$a4,4
    addu	$a4,$a3,$at
    bnezl	$v0,.L5ef3a924
    move	$a4,$at
.L5ef3a924:
    addu	$at,$a1,$a0
    move	$v0,$at
    mfhi	$at
    sltu	$at,$zero,$at
    bnezl	$at,.L5ef3a93c
    move	$v0,$a0
.L5ef3a93c:
    addiu	$a2,$v0,1
    div	$zero,$a2,$a5
    bne	$v1,$a7,.L5ef3a8cc
    lw	$a0,0($a4)
    addiu	$ra,$ra,1
    addiu	$a4,$a4,4
    addu	$t2,$t8,$a4
    beqzl	$at,.L5ef3a960
    move	$a4,$t2
.L5ef3a960:
    teq	$s4,$zero,0x7
    move	$t1,$v0
    move	$t0,$a0
    sw	$t0,1916($s3)
    beq	$ra,$s0,.L5ef3a9b4
    move	$at,$t1
.L5ef3a978:
    addiu	$at,$at,1
    div	$zero,$at,$s4
    teq	$s4,$zero,0x7
    addiu	$a4,$a4,4
    li	$v1,0
    addiu	$a7,$s7,-1
    move	$a5,$s4
    move	$a1,$t9
    move	$a6,$s3
    lw	$t3,-4($a4)
    mfhi	$t0
    bnez	$t0,.L5ef3a89c
    sw	$t3,1268($s3)
    b	.L5ef3a898
    addu	$at,$t9,$at
.L5ef3a9b4:
    ld	$t1,144($sp)
    blez	$t1,.L5ef3a2e8
    ld	$t0,144($sp)
    sra	$v0,$t0,0x2
    srl	$v0,$v0,0x1d
    addu	$v0,$v0,$t0
    sra	$v0,$v0,0x3
    beqz	$v0,.L5ef3a134
    move	$s0,$v0
    ld	$t0,144($sp)
    sll	$t1,$v0,0x3
    subu	$t0,$t0,$t1
    blez	$s0,.L5ef3a134
    sd	$t0,144($sp)
    move	$ra,$zero
    li	$s1,7
    sll	$t8,$t9,0x2
    sll	$a4,$at,0x2
    b	.L5ef3aae4
    addu	$a4,$a4,$s8
.L5ef3aa04:
    addu	$a4,$t8,$a4
.L5ef3aa08:
    addiu	$a2,$at,1
    div	$zero,$a2,$s4
    addu	$a3,$t9,$a2
    mfhi	$at
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef3aa24
    move	$a2,$a3
.L5ef3aa24:
    lw	$a0,0($a4)
    move	$a3,$t8
    addiu	$a2,$a2,1
    div	$zero,$a2,$s4
    nop
.L5ef3aa38:
    sw	$a0,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$v0,$a4,4
    addu	$a4,$a3,$v0
    bnezl	$at,.L5ef3aa50
    move	$a4,$v0
.L5ef3aa50:
    addu	$at,$a1,$a2
    move	$a0,$at
    mfhi	$at
    sltu	$v0,$zero,$at
    bnezl	$v0,.L5ef3aa68
    move	$a0,$a2
.L5ef3aa68:
    addiu	$a0,$a0,1
    div	$zero,$a0,$a5
    addiu	$v1,$v1,2
    lw	$at,0($a4)
    sw	$at,1916($a6)
    teq	$a5,$zero,0x7
    addiu	$at,$a4,4
    addu	$a4,$a3,$at
    bnezl	$v0,.L5ef3aa90
    move	$a4,$at
.L5ef3aa90:
    addu	$at,$a1,$a0
    move	$v0,$at
    mfhi	$at
    sltu	$at,$zero,$at
    bnezl	$at,.L5ef3aaa8
    move	$v0,$a0
.L5ef3aaa8:
    addiu	$a2,$v0,1
    div	$zero,$a2,$a5
    bne	$v1,$a7,.L5ef3aa38
    lw	$a0,0($a4)
    addiu	$ra,$ra,1
    addiu	$a4,$a4,4
    addu	$t2,$t8,$a4
    beqzl	$at,.L5ef3aacc
    move	$a4,$t2
.L5ef3aacc:
    teq	$s4,$zero,0x7
    move	$t1,$v0
    move	$t0,$a0
    sw	$t0,1916($s3)
    beq	$ra,$s0,.L5ef3a134
    move	$at,$t1
.L5ef3aae4:
    addiu	$at,$at,1
    div	$zero,$at,$s4
    teq	$s4,$zero,0x7
    addiu	$a4,$a4,4
    li	$v1,0
    addiu	$a7,$s1,-1
    move	$a5,$s4
    move	$a1,$t9
    move	$a6,$s3
    lw	$t3,-4($a4)
    mfhi	$t0
    bnez	$t0,.L5ef3aa08
    sw	$t3,1272($s3)
    b	.L5ef3aa04
    addu	$at,$t9,$at
.L5ef3ab20:
    move	$a0,$s7
    srl	$t9,$s3,0x2
    subu	$t9,$t9,$s4
    bgez	$t9,.L5ef3a4f0
    li	$s7,15
    li	$s7,15
    b	.L5ef3a4f0
    move	$t9,$zero
.L5ef3ab40:
    sd	$s6,120($sp)
.L5ef3ab44:
    move	$a5,$s1
    sb	$zero,8($sp)
    li	$t0,256
    li	$t1,321
    sw	$t1,12($sp)
    b	.L5ef39df8
    sw	$t0,4($sp)
.L5ef3ab60:
    lw	$t2,20($s8)
    li	$t3,2
    beq	$t2,$t3,.L5ef3ac54
    andi	$t1,$s1,0x1
    addiu	$a5,$s1,1
    srl	$a5,$a5,0x1
    li	$t2,1
    sb	$t2,8($sp)
    li	$t0,128
    beqz	$t1,.L5ef3ad5c
    sw	$t0,4($sp)
    sd	$s6,120($sp)
    li	$t0,322
    b	.L5ef39df8
    sw	$t0,12($sp)
.L5ef3ab9c:
    lbu	$t2,2($s4)
    lw	$t1,292($sp)
    sllv	$t1,$t1,$t2
    b	.L5ef39dc4
    sw	$t1,292($sp)
.L5ef3abb0:
    andi	$t0,$s1,0x3
    addiu	$a5,$s1,3
    srl	$a5,$a5,0x2
    li	$t1,2
    sb	$t1,8($sp)
    li	$t3,64
    beqz	$t0,.L5ef3acac
    sw	$t3,4($sp)
    sd	$s6,120($sp)
    li	$t0,322
    b	.L5ef39df8
    sw	$t0,12($sp)
.L5ef3abe0:
    lw	$t2,292($sp)
    sllv	$t1,$t2,$t1
    or	$t1,$t1,$t2
    b	.L5ef39dc4
    sw	$t1,292($sp)
.L5ef3abf4:
    li	$v1,1
    move	$v0,$zero
    ld	$s8,208($sp)
    andi	$t2,$s5,0x3
    li	$t3,4107
    sw	$t3,1324($s3)
    b	.L5ef3a540
    sw	$t2,1236($s3)
.L5ef3ac14:
    li	$v1,1
    move	$v0,$zero
    andi	$t0,$s5,0xf
    li	$t1,4104
    sw	$t1,1324($s3)
    b	.L5ef3a540
    sw	$t0,1236($s3)
.L5ef3ac30:
    li	$v1,9
    move	$v0,$zero
    andi	$t2,$s5,0xc
    li	$t3,4107
    sw	$t3,1324($s3)
    b	.L5ef3a540
    sw	$t2,1236($s3)
.L5ef3ac4c:
    b	.L5ef3a160
    addu	$at,$t9,$at
.L5ef3ac54:
    sd	$s6,120($sp)
    move	$a5,$s1
    sb	$zero,8($sp)
    li	$t0,256
    li	$t1,321
    li	$t2,1
    sd	$t2,24($sp)
    sw	$t1,12($sp)
    b	.L5ef39df8
    sw	$t0,4($sp)
.L5ef3ac7c:
    ld	$a1,136($sp)
    lw	$t9,0($s8)
    move	$a2,$zero
    move	$a5,$s4
    lw	$t9,4($t9)
    lw	$a4,292($sp)
    sd	$ra,48($sp)
    jalr	$t9
    li	$a3,3
    sd	$s6,120($sp)
    b	.L5ef3a3c0
    sd	$s5,64($sp)
.L5ef3acac:
    sd	$s6,120($sp)
    li	$t0,321
    b	.L5ef39df8
    sw	$t0,12($sp)
.L5ef3acbc:
    move	$a5,$s4
    li	$a3,3
    lw	$t9,0($s8)
    ld	$a1,136($sp)
    ld	$a0,40($sp)
    lw	$t9,4($t9)
    lw	$a2,292($sp)
    sd	$ra,48($sp)
    jalr	$t9
    move	$a4,$a2
    b	.L5ef3a3c0
    sd	$s6,120($sp)
.L5ef3acec:
    li	$a3,10
    lw	$t9,0($s8)
    ld	$a1,136($sp)
    ld	$a0,40($sp)
    lw	$t9,4($t9)
    lw	$a2,292($sp)
    sd	$ra,48($sp)
    jalr	$t9
    move	$a4,$a2
    b	.L5ef3a3c0
    sd	$s6,120($sp)
.L5ef3ad18:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-3704
    ld	$gp,56($sp)
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    ld	$s5,64($sp)
    ld	$s6,120($sp)
    ld	$ra,48($sp)
    ld	$s7,72($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef3ad5c:
    sd	$s6,120($sp)
    li	$t0,321
    b	.L5ef39df8
    sw	$t0,12($sp)
.L5ef3ad6c:
    addiu	$t2,$at,1
    teq	$s4,$zero,0x7
    lw	$t1,0($a4)
    b	.L5ef3a220
    sw	$t1,1916($s3)
.L5ef3ad80:
    move	$at,$v0
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    b	.L5ef3a2e8
    sw	$zero,1916($s3)
.L5ef3ad98:
    ld	$t2,152($sp)
    sw	$zero,0($at)
    lh	$t0,0($t2)
    sw	$t0,1916($s3)
    lh	$t3,0($a0)
    sw	$t3,1916($s3)
    lh	$t2,2($t2)
    sw	$t2,1916($s3)
    lh	$t1,2($a0)
    sw	$t1,1916($s3)
    lh	$t0,4($a0)
    sw	$t0,1916($s3)
    lh	$t3,6($a0)
    b	.L5ef3a3c0
    sw	$t3,1916($s3)
.end expTileRects

.globl expStippledFillRects
.ent expStippledFillRects
expStippledFillRects:
    li	$a7,1
    addiu	$sp,$sp,-208
    sd	$s1,96($sp)
    sd	$s2,64($sp)
    lw	$s2,36($a0)
    sd	$ra,48($sp)
    sd	$s6,80($sp)
    lw	$ra,32($s2)
    sd	$s7,40($sp)
    move	$s7,$a1
    sd	$gp,56($sp)
    lui	$t0,0x18
    addiu	$t0,$t0,14320
    addu	$gp,$t9,$t0
    lw	$a5,nfbGCPrivateIndex
    lw	$a1,76($a0)
    lhu	$s1,14($s2)
    sll	$a5,$a5,0x2
    addu	$a1,$a1,$a5
    lw	$a1,0($a1)
    lhu	$s6,12($s2)
    lw	$v1,0($a0)
    lbu	$a0,72($a1)
    li	$a5,32
    lw	$v1,436($v1)
    sd	$a0,128($sp)
    lw	$a0,expScreenPrivateIndex
    sd	$a1,104($sp)
    lw	$t0,76($a1)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$a0,64($a1)
    sd	$t0,112($sp)
    lw	$v1,0($v1)
    sd	$a0,120($sp)
    beq	$s6,$a5,.L5ef3b798
    lw	$v1,0($v1)
    addiu	$t1,$s6,-1
    and	$t1,$t1,$s6
    beqz	$t1,.L5ef3b7a0
    nop
.L5ef3ae78:
    lw	$t2,28($s2)
    sra	$t2,$t2,0x2
    mult	$t2,$s1
    mflo	$v0
.L5ef3ae90:
    slti	$at,$v0,4865
    bnez	$at,.L5ef3b1a0
    andi	$t9,$v0,0x7
    sd	$s3,88($sp)
    lw	$at,nfbWindowPrivateIndex
    lw	$s3,132($s7)
    sd	$s4,72($sp)
    sll	$at,$at,0x2
    addu	$s3,$s3,$at
    lw	$s3,0($s3)
    sd	$s0,32($sp)
    sd	$s8,24($sp)
    lw	$s3,0($s3)
    sd	$s5,16($sp)
    beqz	$a3,.L5ef3b16c
    lw	$s3,12($s3)
    sd	$s4,72($sp)
    sd	$s5,16($sp)
    move	$s0,$a2
    sll	$s8,$a3,0x3
    b	.L5ef3aef4
    addu	$s8,$s8,$a2
.L5ef3aee8:
    addiu	$s0,$s0,8
    beql	$s0,$s8,.L5ef3b170
    ld	$gp,56($sp)
.L5ef3aef4:
    lh	$v0,0($s0)
    sh	$v0,0($sp)
    lh	$v1,2($s0)
    ld	$at,104($sp)
    sh	$v1,2($sp)
    lh	$at,88($at)
    subu	$at,$v0,$at
    div	$zero,$at,$s6
    ld	$t0,104($sp)
    mfhi	$s4
    bltz	$s4,.L5ef3b15c
    teq	$s6,$zero,0x7
.L5ef3af24:
    lh	$t0,90($t0)
    subu	$t0,$v1,$t0
    div	$zero,$t0,$s1
    mfhi	$s5
    bltz	$s5,.L5ef3b164
    teq	$s1,$zero,0x7
.L5ef3af3c:
    addu	$a1,$s6,$v0
    lh	$a0,4($s0)
    subu	$a1,$a1,$s4
    slt	$t1,$a1,$a0
    bnez	$t1,.L5ef3af58
    move	$v0,$a1
    move	$v0,$a0
.L5ef3af58:
    sh	$v0,4($sp)
    lh	$a0,6($s0)
    addu	$a1,$s1,$v1
    subu	$a1,$a1,$s5
    slt	$t0,$a1,$a0
    bnez	$t0,.L5ef3af78
    move	$v1,$a1
    move	$v1,$a0
.L5ef3af78:
    sh	$v1,6($sp)
    lw	$a3,28($s2)
    mult	$a3,$s5
    sd	$s7,136($sp)
    addiu	$a0,$sp,0
    ld	$a4,120($sp)
    ld	$a5,128($sp)
    ld	$a6,112($sp)
    move	$a7,$s7
    lw	$a1,32($s2)
    move	$t9,$s3
    mflo	$a2
    addu	$a1,$a1,$a2
    jalr	$s3
    move	$a2,$s4
    lh	$t0,6($s0)
    lh	$v1,6($sp)
    slt	$t0,$v1,$t0
    beqz	$t0,.L5ef3b030
    lw	$s7,32($s2)
    b	.L5ef3b014
    sh	$v1,2($sp)
.L5ef3afd0:
    sh	$t1,6($sp)
.L5ef3afd4:
    lw	$a3,28($s2)
    move	$a2,$s4
    move	$a1,$s7
    addiu	$a0,$sp,0
    ld	$a4,120($sp)
    ld	$a5,128($sp)
    ld	$a6,112($sp)
    ld	$a7,136($sp)
    jalr	$s3
    move	$t9,$s3
    lh	$t2,6($s0)
    lh	$v1,6($sp)
    slt	$t2,$v1,$t2
    beqz	$t2,.L5ef3b030
    nop
    sh	$v1,2($sp)
.L5ef3b014:
    lh	$a0,6($s0)
    addu	$at,$s1,$v1
    slt	$at,$a0,$at
    beqz	$at,.L5ef3afd0
    addu	$t1,$s1,$v1
    b	.L5ef3afd4
    sh	$a0,6($sp)
.L5ef3b030:
    lh	$t0,4($s0)
    lh	$v1,4($sp)
    slt	$t0,$v1,$t0
    beqz	$t0,.L5ef3aee8
    ld	$s7,136($sp)
    b	.L5ef3b064
    sh	$v1,0($sp)
.L5ef3b04c:
    lh	$t1,4($s0)
    lh	$v1,4($sp)
    slt	$t1,$v1,$t1
    beqz	$t1,.L5ef3aee8
    nop
    sh	$v1,0($sp)
.L5ef3b064:
    lh	$a0,4($s0)
    addu	$t2,$s6,$v1
    slt	$t2,$a0,$t2
    beqz	$t2,.L5ef3b080
    addu	$at,$s6,$v1
    b	.L5ef3b084
    sh	$a0,4($sp)
.L5ef3b080:
    sh	$at,4($sp)
.L5ef3b084:
    lh	$a1,2($s0)
    sh	$a1,2($sp)
    lh	$a0,6($s0)
    addu	$a1,$s1,$a1
    subu	$a1,$a1,$s5
    slt	$t0,$a1,$a0
    bnez	$t0,.L5ef3b0a8
    move	$v1,$a1
    move	$v1,$a0
.L5ef3b0a8:
    sh	$v1,6($sp)
    lw	$a3,28($s2)
    mult	$a3,$s5
    addiu	$a0,$sp,0
    ld	$a4,120($sp)
    ld	$a5,128($sp)
    ld	$a6,112($sp)
    move	$a7,$s7
    lw	$a1,32($s2)
    move	$t9,$s3
    mflo	$a2
    addu	$a1,$a1,$a2
    jalr	$s3
    move	$a2,$zero
    lh	$t0,6($s0)
    lh	$v1,6($sp)
    slt	$t0,$v1,$t0
    beqz	$t0,.L5ef3b04c
    lw	$s4,32($s2)
    b	.L5ef3b140
    sh	$v1,2($sp)
.L5ef3b0fc:
    sh	$t1,6($sp)
.L5ef3b100:
    lw	$a3,28($s2)
    move	$a2,$zero
    move	$a1,$s4
    addiu	$a0,$sp,0
    ld	$a4,120($sp)
    ld	$a5,128($sp)
    ld	$a6,112($sp)
    move	$a7,$s7
    jalr	$s3
    move	$t9,$s3
    lh	$t2,6($s0)
    lh	$v1,6($sp)
    slt	$t2,$v1,$t2
    beqz	$t2,.L5ef3b04c
    nop
    sh	$v1,2($sp)
.L5ef3b140:
    lh	$a0,6($s0)
    addu	$at,$s1,$v1
    slt	$at,$a0,$at
    beqz	$at,.L5ef3b0fc
    addu	$t1,$s1,$v1
    b	.L5ef3b100
    sh	$a0,6($sp)
.L5ef3b15c:
    b	.L5ef3af24
    addu	$s4,$s6,$s4
.L5ef3b164:
    b	.L5ef3af3c
    addu	$s5,$s1,$s5
.L5ef3b16c:
    ld	$gp,56($sp)
.L5ef3b170:
    ld	$s0,32($sp)
    ld	$s1,96($sp)
    ld	$s2,64($sp)
    ld	$s3,88($sp)
    ld	$s4,72($sp)
    ld	$s5,16($sp)
    ld	$s6,80($sp)
    ld	$ra,48($sp)
    ld	$s7,40($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef3b1a0:
    andi	$a6,$v0,0x8
    andi	$t8,$v0,0x10
    sra	$s2,$v0,0x6
    li	$t1,3
    andi	$t0,$v0,0x20
    sd	$t0,8($sp)
    li	$t0,0xd022
    li	$t2,8
    lui	$a4,0x4
    addu	$a4,$v1,$a4
    sw	$t2,1256($a4)
    sw	$s6,1916($a4)
    sw	$s1,1916($a4)
    sw	$t1,1916($a4)
    beq	$s6,$a5,.L5ef3b7a8
    sw	$t0,1916($a4)
    beqz	$s2,.L5ef3b2b0
    move	$a1,$ra
    blez	$s2,.L5ef3bd2c
    nop
    sd	$a6,160($sp)
    addiu	$a6,$ra,252
    move	$a5,$ra
    move	$a1,$ra
    sd	$t8,152($sp)
    sll	$t8,$s2,0x8
    addu	$t8,$t8,$ra
    li	$v1,3
.L5ef3b210:
    move	$v0,$a5
    lw	$at,0($a1)
    addiu	$a5,$a5,256
    move	$a0,$a4
    sw	$at,1260($a4)
.L5ef3b224:
    addiu	$v0,$v0,4
    lw	$t0,0($v0)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3b224
    sw	$t0,1916($a4)
    lw	$at,4($v0)
    addiu	$v1,$a6,-16
.L5ef3b240:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3b240
    lw	$at,4($v0)
    addiu	$a6,$a6,256
    move	$t0,$at
    sw	$t0,1916($a4)
    move	$t1,$v0
    lw	$t3,8($t1)
    sw	$t3,1916($a4)
    lw	$t2,12($t1)
    sw	$t2,1916($a4)
    lw	$t1,16($t1)
    addiu	$a1,$a1,256
    sw	$t1,1916($a4)
    bne	$a1,$t8,.L5ef3b210
    li	$v1,3
    move	$v0,$s2
    ld	$a6,160($sp)
    ld	$t8,152($sp)
.L5ef3b2a8:
    sll	$a1,$v0,0x8
    addu	$a1,$a1,$ra
.L5ef3b2b0:
    ld	$t0,8($sp)
    beqz	$t0,.L5ef3b33c
    li	$v1,3
    lw	$t1,0($a1)
    addiu	$a0,$a1,124
    move	$v0,$a1
    sw	$t1,1264($a4)
.L5ef3b2cc:
    addiu	$v0,$v0,4
    lw	$t2,0($v0)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3b2cc
    sw	$t2,1916($a4)
    lw	$at,4($v0)
    addiu	$v1,$a0,-16
    move	$a0,$a4
.L5ef3b2ec:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3b2ec
    lw	$at,4($v0)
    move	$t2,$at
    sw	$t2,1916($a4)
    move	$t3,$v0
    lw	$t1,8($t3)
    sw	$t1,1916($a4)
    lw	$t0,12($t3)
    sw	$t0,1916($a4)
    lw	$t3,16($t3)
    addiu	$a1,$a1,128
    sw	$t3,1916($a4)
.L5ef3b33c:
    beqz	$t8,.L5ef3b3cc
    nop
    lw	$at,0($a1)
    move	$v0,$a1
    sw	$at,1268($a4)
    lw	$t2,4($v0)
    sw	$t2,1916($a4)
    lw	$t1,8($v0)
    sw	$t1,1916($a4)
    lw	$t0,12($v0)
    sw	$t0,1916($a4)
    lw	$at,16($v0)
    sw	$at,1916($a4)
    lw	$t2,20($v0)
    sw	$t2,1916($a4)
    lw	$t1,24($v0)
    sw	$t1,1916($a4)
    lw	$t0,28($v0)
    sw	$t0,1916($a4)
    lw	$at,32($v0)
    sw	$at,1916($a4)
    lw	$t2,36($v0)
    sw	$t2,1916($a4)
    lw	$t1,40($v0)
    sw	$t1,1916($a4)
    lw	$t0,44($v0)
    sw	$t0,1916($a4)
    lw	$at,48($v0)
    sw	$at,1916($a4)
    lw	$t2,52($v0)
    sw	$t2,1916($a4)
    lw	$t1,56($v0)
    sw	$t1,1916($a4)
    lw	$t0,60($v0)
    sw	$t0,1916($a4)
    addiu	$a1,$a1,64
.L5ef3b3cc:
    beqz	$a6,.L5ef3b41c
    nop
    lw	$at,0($a1)
    move	$v0,$a1
    sw	$at,1272($a4)
    lw	$t2,4($v0)
    sw	$t2,1916($a4)
    lw	$t1,8($v0)
    sw	$t1,1916($a4)
    lw	$t0,12($v0)
    sw	$t0,1916($a4)
    lw	$at,16($v0)
    sw	$at,1916($a4)
    lw	$t2,20($v0)
    sw	$t2,1916($a4)
    lw	$t1,24($v0)
    sw	$t1,1916($a4)
    lw	$t0,28($v0)
    sw	$t0,1916($a4)
    addiu	$a1,$a1,32
.L5ef3b41c:
    beqz	$t9,.L5ef3b5a0
    lw	$t0,nfbWindowPrivateIndex
    lw	$at,0($a1)
    slti	$t0,$t9,2
    bnez	$t0,.L5ef3b4d0
    sw	$at,1272($a4)
    move	$v1,$a1
    addiu	$a5,$t9,-1
    andi	$v0,$a5,0x3
    sll	$a0,$a5,0x2
    beqz	$v0,.L5ef3b460
    addu	$a0,$a0,$a1
.L5ef3b44c:
    addiu	$v1,$v1,4
    lw	$t0,0($v1)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef3b44c
    sw	$t0,1916($a4)
.L5ef3b460:
    sra	$a1,$a5,0x2
    beqz	$a1,.L5ef3b4d0
    move	$v0,$v1
    slti	$t1,$a1,2
    bnez	$t1,.L5ef3be2c
    move	$v1,$v0
    lw	$at,4($v0)
    addiu	$v1,$a0,-16
    move	$a0,$a4
.L5ef3b484:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3b484
    lw	$at,4($v0)
    move	$t1,$at
    sw	$t1,1916($a4)
    move	$t2,$v0
    lw	$t0,8($t2)
    sw	$t0,1916($a4)
    lw	$t3,12($t2)
    sw	$t3,1916($a4)
    lw	$t2,16($t2)
    sw	$t2,1916($a4)
.L5ef3b4d0:
    slti	$t2,$t9,8
    beqz	$t2,.L5ef3b59c
    move	$v0,$zero
    li	$a0,8
    subu	$a0,$a0,$t9
    andi	$v1,$a0,0x3
    beqz	$v1,.L5ef3b500
    move	$a1,$a0
.L5ef3b4f0:
    addiu	$v0,$v0,1
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3b4f0
    sw	$zero,1916($a4)
.L5ef3b500:
    sra	$v1,$a1,0x2
    beqz	$v1,.L5ef3b59c
    move	$a5,$v0
    slti	$t0,$v1,2
    bnez	$t0,.L5ef3be50
    addiu	$v1,$a5,4
    move	$t1,$a4
    addiu	$at,$a0,-12
    addiu	$v0,$a0,-8
    addiu	$a1,$a0,-4
    sd	$a2,144($sp)
    move	$a2,$a0
    move	$a0,$a4
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
.L5ef3b53c:
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$a1,.L5ef3bc88
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$v0,.L5ef3bc80
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$at,.L5ef3bc78
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    addiu	$v1,$v1,16
    bne	$v1,$a2,.L5ef3b53c
    sw	$zero,1916($a0)
    ld	$a2,144($sp)
.L5ef3b594:
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
.L5ef3b59c:
    lw	$t0,nfbWindowPrivateIndex
.L5ef3b5a0:
    lw	$a0,132($s7)
    sll	$t0,$t0,0x2
    addu	$a0,$a0,$t0
    lw	$a0,0($a0)
    lw	$a0,20($a0)
    li	$t2,13
    beq	$t2,$a0,.L5ef3bc90
    move	$v0,$a0
    li	$t1,14
    beq	$v0,$t1,.L5ef3bcd0
    li	$t2,12
    beq	$v0,$t2,.L5ef3bcb0
    ld	$v1,104($sp)
    ori	$t0,$a0,0x1000
    sw	$t0,1324($a4)
    sw	$zero,1236($a4)
    lbu	$v1,21($v1)
    ld	$v0,112($sp)
    sll	$v1,$v1,0x3
.L5ef3b5ec:
    ld	$t2,128($sp)
    lui	$at,0xff
    ld	$t1,120($sp)
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    sw	$t1,1328($a4)
    sw	$at,1916($a4)
    sw	$t2,1916($a4)
    sw	$v1,1916($a4)
    beqz	$a3,.L5ef3b67c
    sw	$t1,1248($a4)
    move	$v0,$a2
    sll	$v1,$a3,0x3
    move	$a0,$a3
    andi	$t0,$a3,0x1
    beqz	$t0,.L5ef3b670
    addu	$v1,$v1,$a2
    beqz	$a7,.L5ef3bcf0
    ld	$t0,104($sp)
    sw	$zero,1280($a4)
    lh	$t2,88($t0)
    sw	$t2,1916($a4)
    lh	$t1,0($v0)
    sw	$t1,1916($a4)
    lh	$t0,90($t0)
    sw	$t0,1916($a4)
    lh	$at,2($v0)
    sw	$at,1916($a4)
    lh	$t2,4($v0)
    sw	$t2,1916($a4)
    lh	$t1,6($v0)
    sw	$t1,1916($a4)
.L5ef3b66c:
    addiu	$v0,$v0,8
.L5ef3b670:
    sra	$at,$a0,0x1
    bnez	$at,.L5ef3b718
    nop
.L5ef3b67c:
    ld	$gp,56($sp)
.L5ef3b680:
    ld	$s1,96($sp)
    ld	$s2,64($sp)
    ld	$ra,48($sp)
    ld	$s6,80($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L5ef3b69c:
    sw	$zero,1276($a4)
    lh	$t1,88($at)
    sw	$t1,1916($a4)
    lh	$t0,0($v0)
    sw	$t0,1916($a4)
    lh	$at,90($at)
    sw	$at,1916($a4)
    lh	$t2,2($v0)
    sw	$t2,1916($a4)
    lh	$t1,4($v0)
    sw	$t1,1916($a4)
    lh	$t0,6($v0)
    beqz	$a7,.L5ef3b75c
    sw	$t0,1916($a4)
.L5ef3b6d4:
    ld	$t1,104($sp)
    sw	$zero,1280($a4)
    lh	$at,88($t1)
    sw	$at,1916($a4)
    lh	$t2,8($v0)
    sw	$t2,1916($a4)
    lh	$t1,90($t1)
    sw	$t1,1916($a4)
    lh	$t0,10($v0)
    sw	$t0,1916($a4)
    lh	$at,12($v0)
    sw	$at,1916($a4)
    lh	$t2,14($v0)
    sw	$t2,1916($a4)
.L5ef3b70c:
    addiu	$v0,$v0,16
    beq	$v0,$v1,.L5ef3b67c
    nop
.L5ef3b718:
    beqz	$a7,.L5ef3b69c
    ld	$at,104($sp)
    ld	$at,104($sp)
    sw	$zero,1280($a4)
    lh	$t1,88($at)
    sw	$t1,1916($a4)
    lh	$t0,0($v0)
    sw	$t0,1916($a4)
    lh	$at,90($at)
    sw	$at,1916($a4)
    lh	$t2,2($v0)
    sw	$t2,1916($a4)
    lh	$t1,4($v0)
    sw	$t1,1916($a4)
    lh	$t0,6($v0)
    bnez	$a7,.L5ef3b6d4
    sw	$t0,1916($a4)
.L5ef3b75c:
    ld	$t1,104($sp)
    sw	$zero,1276($a4)
    lh	$at,88($t1)
    sw	$at,1916($a4)
    lh	$t2,8($v0)
    sw	$t2,1916($a4)
    lh	$t1,90($t1)
    sw	$t1,1916($a4)
    lh	$t0,10($v0)
    sw	$t0,1916($a4)
    lh	$at,12($v0)
    sw	$at,1916($a4)
    lh	$t2,14($v0)
    b	.L5ef3b70c
    sw	$t2,1916($a4)
.L5ef3b798:
    b	.L5ef3ae90
    move	$v0,$s1
.L5ef3b7a0:
    b	.L5ef3ae78
    move	$a7,$zero
.L5ef3b7a8:
    beqz	$s2,.L5ef3b86c
    move	$a1,$ra
    blez	$s2,.L5ef3bdac
    addiu	$a1,$ra,252
    sd	$a6,160($sp)
    move	$a6,$ra
    move	$a5,$ra
    sll	$a7,$s2,0x8
    addu	$a7,$a7,$ra
    li	$v1,3
.L5ef3b7d0:
    move	$v0,$a6
    lw	$t0,0($a5)
    addiu	$a6,$a6,256
    sw	$t0,1260($a4)
.L5ef3b7e0:
    addiu	$v0,$v0,4
    lw	$t1,0($v0)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3b7e0
    sw	$t1,1916($a4)
    move	$a0,$a4
    lw	$at,4($v0)
    addiu	$v1,$a1,-16
.L5ef3b800:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3b800
    lw	$at,4($v0)
    addiu	$a1,$a1,256
    move	$t1,$at
    sw	$t1,1916($a4)
    move	$t2,$v0
    lw	$t0,8($t2)
    sw	$t0,1916($a4)
    lw	$t3,12($t2)
    sw	$t3,1916($a4)
    lw	$t2,16($t2)
    addiu	$a5,$a5,256
    sw	$t2,1916($a4)
    bne	$a5,$a7,.L5ef3b7d0
    li	$v1,3
    move	$v0,$s2
    ld	$a6,160($sp)
.L5ef3b864:
    sll	$a1,$v0,0x8
    addu	$a1,$a1,$ra
.L5ef3b86c:
    ld	$t0,8($sp)
    beqz	$t0,.L5ef3b8f8
    li	$v1,3
    lw	$t1,0($a1)
    addiu	$a0,$a1,124
    move	$v0,$a1
    sw	$t1,1264($a4)
.L5ef3b888:
    addiu	$v0,$v0,4
    lw	$t2,0($v0)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3b888
    sw	$t2,1916($a4)
    lw	$at,4($v0)
    addiu	$v1,$a0,-16
    move	$a0,$a4
.L5ef3b8a8:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3b8a8
    lw	$at,4($v0)
    move	$t2,$at
    sw	$t2,1916($a4)
    move	$t3,$v0
    lw	$t1,8($t3)
    sw	$t1,1916($a4)
    lw	$t0,12($t3)
    sw	$t0,1916($a4)
    lw	$t3,16($t3)
    addiu	$a1,$a1,128
    sw	$t3,1916($a4)
.L5ef3b8f8:
    beqz	$t8,.L5ef3b988
    nop
    lw	$at,0($a1)
    move	$v0,$a1
    sw	$at,1268($a4)
    lw	$t2,4($v0)
    sw	$t2,1916($a4)
    lw	$t1,8($v0)
    sw	$t1,1916($a4)
    lw	$t0,12($v0)
    sw	$t0,1916($a4)
    lw	$at,16($v0)
    sw	$at,1916($a4)
    lw	$t2,20($v0)
    sw	$t2,1916($a4)
    lw	$t1,24($v0)
    sw	$t1,1916($a4)
    lw	$t0,28($v0)
    sw	$t0,1916($a4)
    lw	$at,32($v0)
    sw	$at,1916($a4)
    lw	$t2,36($v0)
    sw	$t2,1916($a4)
    lw	$t1,40($v0)
    sw	$t1,1916($a4)
    lw	$t0,44($v0)
    sw	$t0,1916($a4)
    lw	$at,48($v0)
    sw	$at,1916($a4)
    lw	$t2,52($v0)
    sw	$t2,1916($a4)
    lw	$t1,56($v0)
    sw	$t1,1916($a4)
    lw	$t0,60($v0)
    sw	$t0,1916($a4)
    addiu	$a1,$a1,64
.L5ef3b988:
    beqz	$a6,.L5ef3b9d8
    nop
    lw	$at,0($a1)
    move	$v0,$a1
    sw	$at,1272($a4)
    lw	$t2,4($v0)
    sw	$t2,1916($a4)
    lw	$t1,8($v0)
    sw	$t1,1916($a4)
    lw	$t0,12($v0)
    sw	$t0,1916($a4)
    lw	$at,16($v0)
    sw	$at,1916($a4)
    lw	$t2,20($v0)
    sw	$t2,1916($a4)
    lw	$t1,24($v0)
    sw	$t1,1916($a4)
    lw	$t0,28($v0)
    sw	$t0,1916($a4)
    addiu	$a1,$a1,32
.L5ef3b9d8:
    beqz	$t9,.L5ef3bb5c
    lw	$t0,nfbWindowPrivateIndex
    lw	$at,0($a1)
    slti	$t0,$t9,2
    bnez	$t0,.L5ef3ba8c
    sw	$at,1272($a4)
    move	$v1,$a1
    addiu	$a5,$t9,-1
    andi	$v0,$a5,0x3
    sll	$a0,$a5,0x2
    beqz	$v0,.L5ef3ba1c
    addu	$a0,$a0,$a1
.L5ef3ba08:
    addiu	$v1,$v1,4
    lw	$t0,0($v1)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef3ba08
    sw	$t0,1916($a4)
.L5ef3ba1c:
    sra	$a1,$a5,0x2
    beqz	$a1,.L5ef3ba8c
    move	$v0,$v1
    slti	$t1,$a1,2
    bnez	$t1,.L5ef3bdb4
    move	$v1,$v0
    lw	$at,4($v0)
    addiu	$v1,$a0,-16
    move	$a0,$a4
.L5ef3ba40:
    sw	$at,1916($a0)
    lw	$at,8($v0)
    sw	$at,1916($a0)
    lw	$at,12($v0)
    sw	$at,1916($a0)
    lw	$at,16($v0)
    addiu	$v0,$v0,16
    sw	$at,1916($a0)
    bne	$v0,$v1,.L5ef3ba40
    lw	$at,4($v0)
    move	$t1,$at
    sw	$t1,1916($a4)
    move	$t2,$v0
    lw	$t0,8($t2)
    sw	$t0,1916($a4)
    lw	$t3,12($t2)
    sw	$t3,1916($a4)
    lw	$t2,16($t2)
    sw	$t2,1916($a4)
.L5ef3ba8c:
    slti	$t2,$t9,8
    beqz	$t2,.L5ef3bb58
    move	$v0,$zero
    li	$a0,8
    subu	$a0,$a0,$t9
    andi	$v1,$a0,0x3
    beqz	$v1,.L5ef3babc
    move	$a1,$a0
.L5ef3baac:
    addiu	$v0,$v0,1
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef3baac
    sw	$zero,1916($a4)
.L5ef3babc:
    sra	$v1,$a1,0x2
    beqz	$v1,.L5ef3bb58
    move	$a5,$v0
    slti	$t0,$v1,2
    bnez	$t0,.L5ef3bdd8
    addiu	$v1,$a5,4
    move	$t1,$a4
    addiu	$at,$a0,-12
    addiu	$v0,$a0,-8
    addiu	$a1,$a0,-4
    sd	$a2,144($sp)
    move	$a2,$a0
    move	$a0,$a4
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
.L5ef3baf8:
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$a1,.L5ef3bd44
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$v0,.L5ef3bd3c
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    beq	$v1,$at,.L5ef3bd34
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    sw	$zero,1916($a0)
    addiu	$v1,$v1,16
    bne	$v1,$a2,.L5ef3baf8
    sw	$zero,1916($a0)
    ld	$a2,144($sp)
.L5ef3bb50:
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
.L5ef3bb58:
    lw	$t0,nfbWindowPrivateIndex
.L5ef3bb5c:
    lw	$a0,132($s7)
    sll	$t0,$t0,0x2
    addu	$a0,$a0,$t0
    lw	$a0,0($a0)
    lw	$a0,20($a0)
    li	$t2,13
    beq	$t2,$a0,.L5ef3bd4c
    move	$v0,$a0
    li	$t1,14
    beq	$v0,$t1,.L5ef3bd8c
    li	$t2,12
    beq	$v0,$t2,.L5ef3bd6c
    ld	$v1,104($sp)
    ori	$t0,$a0,0x1000
    sw	$t0,1324($a4)
    sw	$zero,1236($a4)
    lbu	$v1,21($v1)
    ld	$v0,112($sp)
    sll	$v1,$v1,0x3
.L5ef3bba8:
    ld	$t2,128($sp)
    lui	$at,0xff
    ld	$t1,120($sp)
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    sw	$t1,1328($a4)
    sw	$at,1916($a4)
    sw	$t2,1916($a4)
    sw	$v1,1916($a4)
    beqz	$a3,.L5ef3b67c
    sw	$t1,1248($a4)
    move	$v1,$a2
    slti	$t0,$a3,2
    sll	$v0,$a3,0x3
    bnez	$t0,.L5ef3bdf0
    addu	$v0,$v0,$a2
    addiu	$a1,$v0,-8
    ld	$v0,104($sp)
    sw	$zero,1392($a4)
    move	$a0,$a4
    lh	$at,88($v0)
.L5ef3bbfc:
    sw	$at,1916($a0)
    lh	$at,0($v1)
    sw	$at,1916($a0)
    lh	$at,90($v0)
    sw	$at,1916($a0)
    lh	$at,2($v1)
    sw	$at,1916($a0)
    lh	$at,4($v1)
    sw	$at,1916($a0)
    lh	$at,6($v1)
    addiu	$v1,$v1,8
    sw	$at,1916($a0)
    sw	$zero,1392($a0)
    bne	$v1,$a1,.L5ef3bbfc
    lh	$at,88($v0)
    move	$t3,$at
    sw	$t3,1916($a4)
    move	$t1,$v1
    lh	$t2,0($t1)
    ld	$t0,104($sp)
    sw	$t2,1916($a4)
    lh	$t0,90($t0)
    sw	$t0,1916($a4)
    lh	$t3,2($t1)
    sw	$t3,1916($a4)
    lh	$t2,4($t1)
    sw	$t2,1916($a4)
    lh	$t1,6($t1)
    sw	$t1,1916($a4)
.L5ef3bc70:
    b	.L5ef3b680
    ld	$gp,56($sp)
.L5ef3bc78:
    b	.L5ef3b594
    ld	$a2,144($sp)
.L5ef3bc80:
    b	.L5ef3b594
    ld	$a2,144($sp)
.L5ef3bc88:
    b	.L5ef3b594
    ld	$a2,144($sp)
.L5ef3bc90:
    li	$v1,1
    move	$v0,$zero
    ld	$at,112($sp)
    li	$t0,4107
    sw	$t0,1324($a4)
    andi	$at,$at,0x3
    b	.L5ef3b5ec
    sw	$at,1236($a4)
.L5ef3bcb0:
    li	$v1,1
    move	$v0,$zero
    ld	$t0,112($sp)
    li	$t1,4104
    sw	$t1,1324($a4)
    andi	$t0,$t0,0xf
    b	.L5ef3b5ec
    sw	$t0,1236($a4)
.L5ef3bcd0:
    li	$v1,9
    move	$v0,$zero
    ld	$t1,112($sp)
    li	$t2,4107
    sw	$t2,1324($a4)
    andi	$t1,$t1,0xc
    b	.L5ef3b5ec
    sw	$t1,1236($a4)
.L5ef3bcf0:
    ld	$t1,104($sp)
    sw	$zero,1276($a4)
    lh	$at,88($t1)
    sw	$at,1916($a4)
    lh	$t2,0($v0)
    sw	$t2,1916($a4)
    lh	$t1,90($t1)
    sw	$t1,1916($a4)
    lh	$t0,2($v0)
    sw	$t0,1916($a4)
    lh	$at,4($v0)
    sw	$at,1916($a4)
    lh	$t2,6($v0)
    b	.L5ef3b66c
    sw	$t2,1916($a4)
.L5ef3bd2c:
    b	.L5ef3b2a8
    move	$v0,$zero
.L5ef3bd34:
    b	.L5ef3bb50
    ld	$a2,144($sp)
.L5ef3bd3c:
    b	.L5ef3bb50
    ld	$a2,144($sp)
.L5ef3bd44:
    b	.L5ef3bb50
    ld	$a2,144($sp)
.L5ef3bd4c:
    li	$v1,1
    move	$v0,$zero
    ld	$t0,112($sp)
    li	$t1,4107
    sw	$t1,1324($a4)
    andi	$t0,$t0,0x3
    b	.L5ef3bba8
    sw	$t0,1236($a4)
.L5ef3bd6c:
    li	$v1,1
    move	$v0,$zero
    ld	$t1,112($sp)
    li	$t2,4104
    sw	$t2,1324($a4)
    andi	$t1,$t1,0xf
    b	.L5ef3bba8
    sw	$t1,1236($a4)
.L5ef3bd8c:
    li	$v1,9
    move	$v0,$zero
    ld	$t2,112($sp)
    li	$at,4107
    sw	$at,1324($a4)
    andi	$t2,$t2,0xc
    b	.L5ef3bba8
    sw	$t2,1236($a4)
.L5ef3bdac:
    b	.L5ef3b864
    move	$v0,$zero
.L5ef3bdb4:
    lw	$t2,4($v1)
    sw	$t2,1916($a4)
    lw	$t1,8($v1)
    sw	$t1,1916($a4)
    lw	$t0,12($v1)
    sw	$t0,1916($a4)
    lw	$at,16($v1)
    b	.L5ef3ba8c
    sw	$at,1916($a4)
.L5ef3bdd8:
    move	$v0,$a5
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
    b	.L5ef3bb58
    sw	$zero,1916($a4)
.L5ef3bdf0:
    ld	$t2,104($sp)
    sw	$zero,1392($a4)
    lh	$t0,88($t2)
    sw	$t0,1916($a4)
    lh	$at,0($v1)
    sw	$at,1916($a4)
    lh	$t2,90($t2)
    sw	$t2,1916($a4)
    lh	$t1,2($v1)
    sw	$t1,1916($a4)
    lh	$t0,4($v1)
    sw	$t0,1916($a4)
    lh	$at,6($v1)
    b	.L5ef3bc70
    sw	$at,1916($a4)
.L5ef3be2c:
    lw	$t0,4($v1)
    sw	$t0,1916($a4)
    lw	$at,8($v1)
    sw	$at,1916($a4)
    lw	$t2,12($v1)
    sw	$t2,1916($a4)
    lw	$t1,16($v1)
    b	.L5ef3b4d0
    sw	$t1,1916($a4)
.L5ef3be50:
    move	$v0,$a5
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
    sw	$zero,1916($a4)
    b	.L5ef3b59c
    sw	$zero,1916($a4)
.end expStippledFillRects

.globl expOpStippledFillRects
.ent expOpStippledFillRects
expOpStippledFillRects:
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,10076
    addu	$gp,$t9,$at
    li	$at,1
    sd	$s0,8($sp)
    lw	$s0,0($a0)
    lw	$a6,76($a0)
    lw	$t9,expScreenPrivateIndex
    lw	$s0,436($s0)
    lw	$a7,nfbGCPrivateIndex
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    lw	$s0,0($s0)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$s0,0($s0)
    lw	$a6,0($a6)
    lui	$t9,0x4
    addu	$s0,$s0,$t9
    sw	$at,1252($s0)
    lw	$t9,nfbWindowPrivateIndex
    lw	$a7,132($a1)
    sll	$t9,$t9,0x2
    addu	$a7,$a7,$t9
    lw	$a7,0($a7)
    lw	$a7,20($a7)
    li	$v1,12
    li	$at,13
    beq	$a7,$at,.L5ef3bf2c
    move	$a5,$a7
    li	$v0,14
    beql	$a5,$v0,.L5ef3bf30
    sd	$ra,16($sp)
    beq	$a5,$v1,.L5ef3bf3c
    li	$v0,8
    sd	$ra,16($sp)
    sw	$a7,1324($s0)
.L5ef3bf04:
    # lw $t9, -32524($gp)
    lw	$a4,68($a6)
    bal	expStippledFillRects
    sw	$a4,1244($s0)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    sw	$zero,1252($s0)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef3bf2c:
    sd	$ra,16($sp)
.L5ef3bf30:
    li	$at,11
    b	.L5ef3bf04
    sw	$at,1324($s0)
.L5ef3bf3c:
    sd	$ra,16($sp)
    b	.L5ef3bf04
    sw	$v0,1324($s0)
    nop
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s0,8($sp)
    # lw $t9, -29492($gp)
    move	$s0,$a0
    sd	$ra,16($sp)
    jal	Xalloc
    li	$a0,84
    li	$a1,21
    move	$a0,$zero
    move	$a5,$v0
    addiu	$a4,$gp,-29060
    ld	$ra,16($sp)
.L5ef3bf84:
    addu	$at,$a0,$a4
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L5ef3bf84
    sw	$at,0($v1)
    lui	$a4,0x3ff
    lhu	$v1,6($s0)
    lw	$a1,16($s0)
    ori	$a4,$a4,0xffff
    beqz	$v1,.L5ef3c060
    srl	$a0,$a1,0x1e
    beqz	$a0,.L5ef3bfc8
    la	$at,miWideDash
    sw	$at,24($v0)
    lw	$a1,16($s0)
.L5ef3bfc8:
    lw	$a0,44($s0)
    and	$a3,$a4,$a1
    beqz	$a0,.L5ef3bfe8
    srl	$a3,$a3,0x18
    lh	$a2,32($a0)
    lh	$v1,22($a0)
    subu	$v1,$v1,$a2
    sw	$v1,0($sp)
.L5ef3bfe8:
    beqzl	$a3,.L5ef3c088
    la	$a0,expFillPolygon
    beqz	$a0,.L5ef3c030
    ld	$s0,8($sp)
    lw	$a1,12($a0)
    andi	$at,$a1,0x7fff
    srl	$at,$at,0xe
    beqz	$at,.L5ef3c0dc
    lw	$a0,0($sp)
    slti	$v1,$a0,9
    bnez	$v1,.L5ef3c054
    slti	$a2,$a0,17
    bnez	$a2,.L5ef3c118
    slti	$a3,$a0,33
    beqzl	$a3,.L5ef3c034
    sw	$zero,80($v0)
    la	$at,expImageGlyphBltTE32
    sw	$at,68($v0)
.L5ef3c030:
    sw	$zero,80($v0)
.L5ef3c034:
    sll	$v1,$s8,0x2
    la	$a2,local_0x5f0c0000
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    addiu	$a2,$a2,-25512
    addu	$v1,$v1,$a2
    jr	$ra
    sw	$v0,0($v1)
.L5ef3c054:
    la	$a3,expImageGlyphBltTE8
    b	.L5ef3c030
    sw	$a3,68($v0)
.L5ef3c060:
    and	$a5,$a4,$a1
    beqz	$a0,.L5ef3c138
    srl	$a5,$a5,0x18
    beqz	$a5,.L5ef3c16c
    la	$at,miZeroDashLine
    sw	$at,24($v0)
.L5ef3c078:
    la	$v1,miZeroPolyArc
    sw	$v1,36($v0)
.L5ef3c080:
    b	.L5ef3bfc8
    lw	$a1,16($s0)
.L5ef3c088:
    sw	$a0,40($v0)
    lw	$a0,44($s0)
    beqz	$a0,.L5ef3c030
    ld	$s0,8($sp)
    lw	$a1,12($a0)
    andi	$a2,$a1,0x7fff
    srl	$a2,$a2,0xe
    beqz	$a2,.L5ef3c194
    ld	$s0,8($sp)
    lw	$a0,0($sp)
    slti	$a3,$a0,9
    bnez	$a3,.L5ef3c158
    slti	$at,$a0,17
    bnez	$at,.L5ef3c1d4
    slti	$v1,$a0,33
    beqz	$v1,.L5ef3c124
    la	$a3,expImageGlyphBltTE32
    la	$a2,expPolyGlyphBltTE32
    sw	$a3,68($v0)
    b	.L5ef3c030
    sw	$a2,72($v0)
.L5ef3c0dc:
    andi	$a0,$a1,0x1fff
    srl	$a0,$a0,0xc
    beqz	$a0,.L5ef3c030
    lw	$a2,0($sp)
    slti	$a2,$a2,17
    bnez	$a2,.L5ef3c130
    la	$a3,expImageGlyphBltCW16
    beqz	$a0,.L5ef3c030
    lw	$a3,0($sp)
    slti	$a3,$a3,33
    beqzl	$a3,.L5ef3c034
    sw	$zero,80($v0)
    la	$at,expImageGlyphBltCW32
    b	.L5ef3c030
    sw	$at,68($v0)
.L5ef3c118:
    la	$v1,expImageGlyphBltTE16
    b	.L5ef3c030
    sw	$v1,68($v0)
.L5ef3c124:
    la	$a2,nfbSolidPolyGlyphBlt
    b	.L5ef3c030
    sw	$a2,72($v0)
.L5ef3c130:
    b	.L5ef3c030
    sw	$a3,68($v0)
.L5ef3c138:
    beqz	$a5,.L5ef3c204
    la	$a2,miZeroPolyArc
    la	$v1,miPolySegment
    sw	$a2,36($v0)
    la	$at,miZeroLine
    sw	$v1,28($v0)
    b	.L5ef3c080
    sw	$at,24($v0)
.L5ef3c158:
    la	$at,expImageGlyphBltTE8
    la	$a3,expPolyGlyphBltTE8
    sw	$at,68($v0)
    b	.L5ef3c030
    sw	$a3,72($v0)
.L5ef3c16c:
    lw	$a2,expGCPrivateIndex
    lw	$v1,76($s0)
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    lhu	$v1,2($v1)
    beqz	$v1,.L5ef3c220
    la	$a3,expFastLineSD
    b	.L5ef3c078
    sw	$a3,24($v0)
.L5ef3c194:
    andi	$a0,$a1,0x1fff
    srl	$a0,$a0,0xc
    beqz	$a0,.L5ef3c1e8
    lw	$a2,0($sp)
    slti	$a2,$a2,17
    bnez	$a2,.L5ef3c1f4
    la	$a2,expImageGlyphBltCW16
    beqz	$a0,.L5ef3c1e8
    lw	$a3,0($sp)
    slti	$a3,$a3,33
    beqz	$a3,.L5ef3c1e8
    la	$v1,expImageGlyphBltCW32
    la	$at,expPolyGlyphBltCW32
    sw	$v1,68($v0)
    b	.L5ef3c030
    sw	$at,72($v0)
.L5ef3c1d4:
    la	$a3,expImageGlyphBltTE16
    la	$a2,expPolyGlyphBltTE16
    sw	$a3,68($v0)
    b	.L5ef3c030
    sw	$a2,72($v0)
.L5ef3c1e8:
    la	$at,nfbSolidPolyGlyphBlt
    b	.L5ef3c030
    sw	$at,72($v0)
.L5ef3c1f4:
    la	$v1,expPolyGlyphBltCW16
    sw	$a2,68($v0)
    b	.L5ef3c030
    sw	$v1,72($v0)
.L5ef3c204:
    la	$v1,expZeroPolyArc
    la	$at,expSegmentSS
    sw	$v1,36($v0)
    la	$a3,expLineSS
    sw	$at,28($v0)
    b	.L5ef3c080
    sw	$a3,24($v0)
.L5ef3c220:
    la	$a2,expLineSD
    b	.L5ef3c078
    sw	$a2,24($v0)
.end expOpStippledFillRects

.globl expSolidSpans
.ent expSolidSpans
expSolidSpans:
    lui	$v1,0x19
    addiu	$v1,$v1,-27696
    addu	$at,$t9,$v1
    lw	$v0,nfbGCPrivateIndex
    lw	$t2,76($a0)
    lw	$t0,0($a0)
    sll	$v0,$v0,0x2
    lw	$t9,expScreenPrivateIndex
    lw	$t0,436($t0)
    addu	$t2,$t2,$v0
    sll	$t9,$t9,0x2
    addu	$t0,$t0,$t9
    lw	$t0,0($t0)
    lw	$t2,0($t2)
    blez	$a4,.L5ef35458
    lw	$t0,0($t0)
    lw	$t3,132($a1)
    move	$a1,$a3
    lw	$v0,nfbWindowPrivateIndex
    sll	$t9,$a4,0x2
    move	$t8,$zero
    sll	$v0,$v0,0x2
    addu	$t3,$t3,$v0
    lw	$t3,0($t3)
    lui	$t1,0x4
    addu	$t1,$t0,$t1
    lw	$t3,20($t3)
    move	$t0,$a2
    li	$v0,13
    beq	$t3,$v0,.L5ef353fc
    move	$v1,$t3
    li	$a5,14
    beq	$v1,$a5,.L5ef35438
    li	$a6,12
    beq	$v1,$a6,.L5ef35418
    ori	$a5,$t3,0x1000
    sw	$a5,1324($t1)
    sw	$zero,1236($t1)
    lbu	$a0,21($t2)
    lw	$t8,76($t2)
    sll	$a0,$a0,0x3
.L5ef35298:
    lui	$v0,0xff
    lw	$v1,64($t2)
    ori	$v0,$v0,0xffff
    and	$v0,$t8,$v0
    sw	$v1,1328($t1)
    sw	$v0,1916($t1)
    addu	$t9,$t9,$a2
    lbu	$a6,72($t2)
    move	$t3,$a4
    andi	$v1,$a4,0x3
    sw	$a6,1916($t1)
    sw	$a0,1916($t1)
    beqz	$v1,.L5ef352f8
    sw	$zero,1220($t1)
.L5ef352d0:
    lh	$a7,0($t0)
    sw	$a7,1916($t1)
    lh	$a6,2($t0)
    addiu	$t0,$t0,4
    sw	$a6,1916($t1)
    addiu	$a1,$a1,4
    lw	$a5,-4($a1)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef352d0
    sw	$a5,1916($t1)
.L5ef352f8:
    move	$v1,$a1
    sra	$a2,$t3,0x2
    beqz	$a2,.L5ef353f0
    move	$a0,$t0
    slti	$v0,$a2,2
    bnez	$v0,.L5ef35460
    addiu	$a2,$t9,-16
    move	$a1,$t1
    lh	$v0,0($a0)
.L5ef3531c:
    sw	$v0,1916($a1)
    lh	$v0,2($a0)
    sw	$v0,1916($a1)
    addiu	$v1,$v1,16
    lw	$v0,-16($v1)
    sw	$v0,1916($a1)
    lh	$v0,4($a0)
    sw	$v0,1916($a1)
    lh	$v0,6($a0)
    sw	$v0,1916($a1)
    lw	$v0,-12($v1)
    sw	$v0,1916($a1)
    lh	$v0,8($a0)
    sw	$v0,1916($a1)
    lh	$v0,10($a0)
    sw	$v0,1916($a1)
    lw	$v0,-8($v1)
    sw	$v0,1916($a1)
    lh	$v0,12($a0)
    sw	$v0,1916($a1)
    lh	$v0,14($a0)
    sw	$v0,1916($a1)
    lw	$v0,-4($v1)
    addiu	$a0,$a0,16
    sw	$v0,1916($a1)
    bne	$a0,$a2,.L5ef3531c
    lh	$v0,0($a0)
    move	$t0,$v0
    sw	$t0,1916($t1)
    move	$a6,$a0
    lh	$a7,2($a6)
    sw	$a7,1916($t1)
    move	$a5,$v1
    lw	$t0,0($a5)
    sw	$t0,1916($t1)
    lh	$a7,4($a6)
    sw	$a7,1916($t1)
    lh	$t0,6($a6)
    sw	$t0,1916($t1)
    lw	$a7,4($a5)
    sw	$a7,1916($t1)
    lh	$t0,8($a6)
    sw	$t0,1916($t1)
    lh	$a7,10($a6)
    sw	$a7,1916($t1)
    lw	$t0,8($a5)
    sw	$t0,1916($t1)
    lh	$a7,12($a6)
    sw	$a7,1916($t1)
    lh	$a6,14($a6)
    sw	$a6,1916($t1)
    lw	$a5,12($a5)
    sw	$a5,1916($t1)
.L5ef353f0:
    li	$v0,-1
    jr	$ra
    sw	$v0,1960($t1)
.L5ef353fc:
    li	$a6,4107
    sw	$a6,1324($t1)
    lw	$a5,76($t2)
    li	$a0,1
    andi	$a5,$a5,0x3
    b	.L5ef35298
    sw	$a5,1236($t1)
.L5ef35418:
    li	$a0,1
    li	$t8,4104
    sw	$t8,1324($t1)
    lw	$a7,76($t2)
    move	$t8,$zero
    andi	$a7,$a7,0xf
    b	.L5ef35298
    sw	$a7,1236($t1)
.L5ef35438:
    move	$t8,$zero
    li	$a0,4107
    sw	$a0,1324($t1)
    lw	$v0,76($t2)
    li	$a0,9
    andi	$v0,$v0,0xc
    b	.L5ef35298
    sw	$v0,1236($t1)
.L5ef35458:
    jr	$ra
    nop
.L5ef35460:
    move	$a2,$v1
    move	$a1,$a0
    lh	$v0,0($a1)
    sw	$v0,1916($t1)
    lh	$a7,2($a1)
    sw	$a7,1916($t1)
    lw	$a6,0($a2)
    sw	$a6,1916($t1)
    lh	$a5,4($a1)
    sw	$a5,1916($t1)
    lh	$v0,6($a1)
    sw	$v0,1916($t1)
    lw	$a7,4($a2)
    sw	$a7,1916($t1)
    lh	$a6,8($a1)
    sw	$a6,1916($t1)
    lh	$a5,10($a1)
    sw	$a5,1916($t1)
    lw	$v0,8($a2)
    sw	$v0,1916($t1)
    lh	$a7,12($a1)
    sw	$a7,1916($t1)
    lh	$a6,14($a1)
    sw	$a6,1916($t1)
    lw	$a5,12($a2)
    b	.L5ef353f0
    sw	$a5,1916($t1)
.end expSolidSpans

.globl expTiledSpans
.ent expTiledSpans
expTiledSpans:
    lw	$t8,32($a0)
    move	$t1,$a4
    sll	$at,$a4,0x3
    move	$a4,$a3
    move	$v0,$s8
    addiu	$sp,$sp,-128
    addiu	$s8,$sp,128
    sd	$v0,-88($s8)
    sd	$a1,-72($s8)
    addiu	$at,$at,15
    li	$v0,-16
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    lw	$at,132($a1)
    sll	$a1,$t1,0x2
    addu	$a1,$a1,$a2
    sd	$gp,-96($s8)
    lui	$v0,0x19
    addiu	$v0,$v0,-28424
    addu	$gp,$t9,$v0
    lw	$t3,nfbGCPrivateIndex
    lw	$t2,76($a0)
    lw	$v0,nfbWindowPrivateIndex
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    lw	$t2,0($t2)
    addiu	$t3,$sp,16
    lw	$at,0($at)
    lw	$v0,76($t2)
    lbu	$a7,72($t2)
    lw	$at,28($at)
    sd	$v0,-64($s8)
    beqz	$t3,.L5ef356a0
    sd	$at,-80($s8)
    blez	$t1,.L5ef35650
    move	$t0,$a2
    move	$a6,$t3
    andi	$a5,$t1,0x1
    beqz	$a5,.L5ef355b0
    move	$t2,$t1
    lh	$at,0($t0)
    sh	$at,0($a6)
    lw	$a5,0($a4)
    lh	$v1,0($t0)
    addu	$v1,$v1,$a5
    sh	$v1,4($a6)
    lh	$v0,2($t0)
    sh	$v0,2($a6)
    addiu	$t0,$t0,4
    lh	$at,-2($t0)
    addiu	$a4,$a4,4
    addiu	$a6,$a6,8
    addiu	$at,$at,1
    sh	$at,-2($a6)
.L5ef355b0:
    move	$a3,$t0
    move	$t9,$a4
    move	$a2,$a6
    sra	$v0,$t2,0x1
    beqz	$v0,.L5ef35638
    move	$a4,$a2
    move	$a6,$t9
    move	$t0,$a3
.L5ef355d0:
    lh	$a5,0($t0)
    sh	$a5,0($a4)
    lh	$v0,0($t0)
    lw	$v1,0($a6)
    addu	$v0,$v0,$v1
    sh	$v0,4($a4)
    lh	$at,2($t0)
    sh	$at,2($a4)
    lh	$a5,2($t0)
    addiu	$a5,$a5,1
    sh	$a5,6($a4)
    lh	$v1,4($t0)
    sh	$v1,8($a4)
    lh	$at,4($t0)
    lw	$v0,4($a6)
    addu	$at,$at,$v0
    sh	$at,12($a4)
    lh	$a5,6($t0)
    sh	$a5,10($a4)
    addiu	$a6,$a6,8
    lh	$v1,6($t0)
    addiu	$a4,$a4,16
    addiu	$t0,$t0,8
    addiu	$v1,$v1,1
    bne	$t0,$a1,.L5ef355d0
    sh	$v1,-2($a4)
.L5ef35638:
    lw	$at,nfbGCPrivateIndex
    lw	$t2,76($a0)
    sd	$ra,-104($s8)
    sll	$at,$at,0x2
    addu	$t2,$t2,$at
    lw	$t2,0($t2)
.L5ef35650:
    move	$a0,$t3
    move	$a1,$t1
    addiu	$a6,$t2,88
    sd	$ra,-104($s8)
    lhu	$a5,14($t8)
    lhu	$a4,12($t8)
    lw	$a3,28($t8)
    lw	$a2,32($t8)
    ld	$v1,-72($s8)
    ld	$t9,-80($s8)
    ld	$v0,-64($s8)
    sw	$v1,12($sp)
    jalr	$t9
    sw	$v0,4($sp)
    ld	$gp,-96($s8)
    ld	$ra,-104($s8)
    ld	$a0,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L5ef356a0:
    ld	$a5,-88($s8)
    ld	$gp,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.end expTiledSpans

.globl expStippledSpans
.ent expStippledSpans
expStippledSpans:
    move	$t1,$a1
    lw	$t0,36($a0)
    addiu	$sp,$sp,-288
    sd	$s2,48($sp)
    lhu	$s2,12($t0)
    sd	$s0,40($sp)
    move	$s0,$a0
    lw	$a7,76($s0)
    lw	$a0,28($t0)
    lui	$v1,0x19
    addiu	$v1,$v1,-28912
    addu	$at,$t9,$v1
    lw	$v0,nfbGCPrivateIndex
    sd	$a0,64($sp)
    lw	$t2,16($a1)
    sll	$v0,$v0,0x2
    lw	$t9,expScreenPrivateIndex
    lw	$t2,436($t2)
    addu	$a7,$a7,$v0
    sll	$t9,$t9,0x2
    addu	$t2,$t2,$t9
    lw	$t2,0($t2)
    lw	$a7,0($a7)
    beqz	$a4,.L5ef36100
    lw	$t2,0($t2)
    sd	$s1,120($sp)
    lw	$s1,nfbWindowPrivateIndex
    lw	$t3,132($t1)
    sll	$s1,$s1,0x2
    addu	$t3,$t3,$s1
    lw	$t3,0($t3)
    li	$a1,13
    lw	$t3,20($t3)
    lui	$s1,0x4
    addu	$s1,$t2,$s1
    beq	$t3,$a1,.L5ef36088
    move	$a5,$t3
    li	$v0,14
    beq	$a5,$v0,.L5ef360e0
    li	$v1,12
    beq	$a5,$v1,.L5ef360c0
    ori	$v0,$t3,0x1000
    sw	$v0,1324($s1)
    sw	$zero,1236($s1)
    lbu	$a6,21($a7)
    lw	$a5,76($a7)
    sll	$a6,$a6,0x3
.L5ef35770:
    lui	$v1,0xff
    lw	$a0,64($a7)
    ori	$v1,$v1,0xffff
    and	$v1,$a5,$v1
    sw	$a0,1328($s1)
    sw	$v1,1916($s1)
    lbu	$v0,72($a7)
    sw	$v0,1916($s1)
    sw	$a6,1916($s1)
    lw	$a1,64($a7)
    sw	$a1,1248($s1)
    lw	$v1,16($s0)
    lui	$a0,0x3ff
    ori	$a0,$a0,0xffff
    and	$v1,$v1,$a0
    li	$a0,3
    srl	$v1,$v1,0x18
    beq	$v1,$a0,.L5ef360a8
    li	$a1,1
.L5ef357bc:
    lw	$a0,32($t0)
    li	$t1,-1
    sd	$a0,88($sp)
    lw	$v1,nfbGCPrivateIndex
    lw	$v0,76($s0)
    lhu	$a0,14($t0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    li	$a1,4
    sd	$a0,104($sp)
    lh	$v1,90($v0)
    ld	$a0,64($sp)
    lh	$v0,88($v0)
    sd	$v1,72($sp)
    beq	$a0,$a1,.L5ef35f40
    sd	$v0,96($sp)
    sd	$s0,184($sp)
    sd	$s8,176($sp)
    sd	$s7,168($sp)
    sd	$s4,160($sp)
    sd	$s6,152($sp)
    sd	$s5,144($sp)
    sd	$s3,136($sp)
    sd	$ra,128($sp)
    sd	$gp,112($sp)
    blez	$a4,.L5ef35ee4
    sw	$zero,1384($s1)
    sd	$s0,184($sp)
    sd	$s8,176($sp)
    sd	$s7,168($sp)
    sd	$s4,160($sp)
    sd	$s5,144($sp)
    sd	$s3,136($sp)
    li	$s6,32
    move	$gp,$a2
    move	$ra,$a3
    slti	$t2,$s2,32
    xori	$t2,$t2,0x1
    sll	$v0,$a4,0x2
    addu	$v0,$v0,$a3
    b	.L5ef35a08
    sd	$v0,56($sp)
.L5ef35868:
    move	$a4,$s7
.L5ef3586c:
    move	$t9,$zero
    move	$t0,$a4
    addiu	$s8,$sp,-4
    subu	$s7,$s6,$s0
    slti	$v1,$s3,32
    bnez	$v1,.L5ef35e78
    move	$a5,$s5
    move	$a2,$s3
    addiu	$a0,$s3,-32
    slti	$a0,$a0,32
    bnez	$a0,.L5ef36264
    move	$a3,$s4
    move	$t3,$s8
    move	$a6,$s1
    sd	$a4,224($sp)
    move	$a4,$s6
    move	$t8,$s7
    sd	$t2,232($sp)
    move	$t2,$s0
    lw	$a1,0($t0)
    sd	$ra,216($sp)
    addiu	$ra,$a2,-32
    move	$a2,$a1
.L5ef358c8:
    addiu	$ra,$ra,-32
    slti	$a1,$ra,32
    sllv	$a0,$a2,$t2
    addiu	$t1,$t0,4
    addiu	$a7,$a3,32
    sltu	$v1,$zero,$t2
    move	$v0,$t3
    bnezl	$v1,.L5ef358ec
    move	$v0,$t0
.L5ef358ec:
    lw	$v0,4($v0)
    sw	$a3,1916($a6)
    sw	$a5,1916($a6)
    srlv	$v0,$v0,$t8
    or	$v0,$a0,$v0
    beqzl	$v1,.L5ef35908
    move	$v0,$a2
.L5ef35908:
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    bnez	$a1,.L5ef35c64
    lw	$a2,0($t1)
    addiu	$ra,$ra,-32
    slti	$a1,$ra,32
    sllv	$a0,$a2,$t2
    addiu	$t0,$t1,4
    addiu	$a3,$a7,32
    sltu	$v1,$zero,$t2
    move	$v0,$t3
    bnezl	$v1,.L5ef3593c
    move	$v0,$t1
.L5ef3593c:
    lw	$v0,4($v0)
    sw	$a7,1916($a6)
    sw	$a5,1916($a6)
    srlv	$v0,$v0,$t8
    or	$v0,$a0,$v0
    beqzl	$v1,.L5ef35958
    move	$v0,$a2
.L5ef35958:
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    addiu	$t9,$t9,2
    beqz	$a1,.L5ef358c8
    lw	$a2,0($t0)
    move	$a5,$ra
    ld	$ra,216($sp)
    ld	$a4,224($sp)
    ld	$t2,232($sp)
.L5ef3597c:
    sltu	$v1,$zero,$s0
    beqzl	$v1,.L5ef35988
    move	$t0,$s8
.L5ef35988:
    lw	$a0,4($t0)
    sllv	$v0,$a2,$s0
    srlv	$a0,$a0,$s7
    or	$v0,$v0,$a0
    beqzl	$v1,.L5ef359a0
    move	$v0,$a2
.L5ef359a0:
    addiu	$t9,$t9,1
    sw	$a3,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$v0,1916($s1)
.L5ef359b4:
    addiu	$ra,$ra,4
    sll	$t0,$t9,0x2
    sll	$a3,$t9,0x5
    subu	$a2,$s3,$a3
    beqz	$a2,.L5ef35a00
    ld	$a1,56($sp)
    addu	$a0,$a3,$s4
    addu	$t0,$a4,$t0
    beqz	$s0,.L5ef35ec8
    lw	$a5,0($t0)
    subu	$v1,$s6,$s0
    lw	$v0,4($t0)
    sllv	$a4,$a5,$s0
    srlv	$v0,$v0,$v1
    or	$a4,$a4,$v0
.L5ef359f0:
    sw	$a0,1916($s1)
    sw	$s5,1916($s1)
    sw	$a2,1916($s1)
    sw	$a4,1916($s1)
.L5ef35a00:
    addiu	$gp,$gp,4
    beq	$ra,$a1,.L5ef35ee4
.L5ef35a08:
    ld	$s3,96($sp)
    lh	$a3,0($gp)
    subu	$s3,$a3,$s3
    div	$zero,$s3,$s2
    teq	$s2,$zero,0x7
    ld	$v1,72($sp)
    ld	$v0,104($sp)
    move	$s4,$a3
    mfhi	$s8
    bltz	$s8,.L5ef35eb8
    lw	$s3,0($ra)
.L5ef35a34:
    lh	$a7,2($gp)
    subu	$v1,$a7,$v1
    div	$zero,$v1,$v0
    ld	$s0,64($sp)
    andi	$a5,$s8,0x1f
    teq	$v0,$zero,0x7
    sra	$t1,$s8,0x5
    subu	$a6,$s2,$s8
    slt	$a0,$a6,$s3
    sll	$t1,$t1,0x2
    move	$s5,$a7
    mfhi	$a2
    bltz	$a2,.L5ef35ec0
    ld	$v0,104($sp)
.L5ef35a6c:
    mult	$s0,$a2
    move	$s0,$a5
    ld	$v0,88($sp)
    move	$a1,$s5
    mflo	$s7
    addu	$s7,$s7,$v0
    addu	$t0,$t1,$s7
    beqz	$a0,.L5ef3586c
    move	$a4,$t0
    addiu	$a4,$sp,-4
    subu	$a0,$s6,$a5
    addiu	$v1,$a6,-32
    slti	$v0,$a6,32
    bnez	$v0,.L5ef35ed0
    move	$s0,$s4
    move	$t9,$zero
    sd	$a0,80($sp)
    move	$a3,$t0
    move	$a2,$a6
    slti	$v1,$v1,32
    bnez	$v1,.L5ef361d8
    addiu	$t0,$a2,-32
    sd	$ra,216($sp)
    sd	$a6,200($sp)
    move	$a6,$s1
    sd	$t1,192($sp)
    move	$t1,$s8
    move	$t3,$a4
    move	$a4,$s6
    ld	$t8,80($sp)
    sd	$a5,208($sp)
    sd	$t2,232($sp)
    move	$t2,$a5
    lw	$a0,0($a3)
    move	$a5,$s5
    move	$a2,$s6
    move	$a2,$a0
.L5ef35b00:
    addiu	$t0,$t0,-32
    slti	$a1,$t0,32
    sllv	$a0,$a2,$t1
    addiu	$a7,$a3,4
    addiu	$ra,$s0,32
    sltu	$v1,$zero,$t2
    move	$v0,$t3
    bnezl	$v1,.L5ef35b24
    move	$v0,$a3
.L5ef35b24:
    lw	$v0,4($v0)
    sw	$s0,1916($a6)
    sw	$a5,1916($a6)
    srlv	$v0,$v0,$t8
    or	$v0,$a0,$v0
    beqzl	$v1,.L5ef35b40
    move	$v0,$a2
.L5ef35b40:
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    bnez	$a1,.L5ef35e8c
    lw	$a2,0($a7)
    addiu	$t0,$t0,-32
    slti	$a1,$t0,32
    sllv	$a0,$a2,$t1
    addiu	$a3,$a7,4
    addiu	$s0,$ra,32
    sltu	$v1,$zero,$t2
    move	$v0,$t3
    bnezl	$v1,.L5ef35b74
    move	$v0,$a7
.L5ef35b74:
    lw	$v0,4($v0)
    sw	$ra,1916($a6)
    sw	$a5,1916($a6)
    srlv	$v0,$v0,$t8
    or	$v0,$a0,$v0
    beqzl	$v1,.L5ef35b90
    move	$v0,$a2
.L5ef35b90:
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    addiu	$t9,$t9,2
    beqz	$a1,.L5ef35b00
    lw	$a2,0($a3)
    addiu	$a7,$sp,-4
    ld	$a4,80($sp)
    ld	$t1,192($sp)
    ld	$a6,200($sp)
    ld	$a5,208($sp)
    ld	$ra,216($sp)
    ld	$t2,232($sp)
.L5ef35bc0:
    sltu	$v1,$zero,$a5
    beqzl	$v1,.L5ef35bcc
    move	$a3,$a7
.L5ef35bcc:
    lw	$a0,4($a3)
    sllv	$v0,$a2,$s8
    srlv	$a0,$a0,$a4
    or	$v0,$v0,$a0
    beqzl	$v1,.L5ef35be4
    move	$v0,$a2
.L5ef35be4:
    addiu	$t9,$t9,1
    sw	$s0,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$v0,1916($s1)
.L5ef35bf8:
    sll	$a1,$t9,0x5
    subu	$s3,$s3,$a1
    subu	$a2,$a6,$a1
    beqz	$a2,.L5ef35c4c
    addu	$s4,$a1,$s4
    subu	$s3,$s3,$a2
    sll	$a3,$t9,0x2
    addu	$a3,$t1,$a3
    addu	$a3,$s7,$a3
    beqz	$a5,.L5ef35edc
    lw	$a4,0($a3)
    subu	$v1,$s6,$a5
    lw	$v0,4($a3)
    sllv	$a6,$a4,$s8
    srlv	$v0,$v0,$v1
    or	$a6,$a6,$v0
.L5ef35c38:
    sw	$s4,1916($s1)
    addu	$s4,$a2,$s4
    sw	$s5,1916($s1)
    sw	$a2,1916($s1)
    sw	$a6,1916($s1)
.L5ef35c4c:
    move	$s0,$zero
    slt	$a0,$s3,$s2
    bnez	$a0,.L5ef3586c
    move	$a4,$s7
    b	.L5ef35d0c
    move	$a2,$s2
.L5ef35c64:
    move	$t0,$t1
    move	$a3,$a7
    addiu	$t9,$t9,1
    move	$a5,$ra
    ld	$ra,216($sp)
    ld	$a4,224($sp)
    b	.L5ef3597c
    ld	$t2,232($sp)
.L5ef35c84:
    move	$v1,$t1
    move	$t1,$v0
    move	$t0,$a7
    move	$t8,$a3
    addiu	$a7,$v1,2
    addiu	$t8,$t8,8
.L5ef35c9c:
    addiu	$a6,$a7,2
    sw	$t0,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$t1,1916($s1)
    addiu	$a1,$t0,32
    lw	$a0,4($t8)
    sw	$a1,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$a0,1916($s1)
.L5ef35cc8:
    sll	$v0,$a6,0x5
.L5ef35ccc:
    subu	$s3,$s3,$v0
    subu	$a2,$s2,$v0
    beqz	$a2,.L5ef35d00
    addu	$s4,$v0,$s4
    sll	$v1,$a6,0x2
    subu	$s3,$s3,$a2
    addu	$v1,$v1,$s7
    lw	$v1,0($v1)
    sw	$s4,1916($s1)
    addu	$s4,$a2,$s4
    sw	$s5,1916($s1)
    sw	$a2,1916($s1)
    sw	$v1,1916($s1)
.L5ef35d00:
    slt	$a0,$s3,$s2
    bnez	$a0,.L5ef35868
    move	$a2,$s2
.L5ef35d0c:
    move	$a4,$s4
    beqz	$t2,.L5ef35e80
    move	$a5,$s7
    sra	$t8,$s2,0x4
    srl	$t8,$t8,0x1b
    addu	$t8,$t8,$s2
    sra	$t8,$t8,0x5
    andi	$a1,$t8,0x1
    beqz	$a1,.L5ef35d58
    move	$a6,$zero
    addiu	$a5,$a5,4
    lw	$v0,-4($a5)
    sw	$a4,1916($s1)
    addiu	$a4,$a4,32
    addiu	$a2,$a2,-32
    addiu	$a6,$a6,1
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$v0,1916($s1)
.L5ef35d58:
    move	$t1,$a6
    move	$t0,$a4
    move	$a4,$s6
    move	$t3,$a2
    sra	$v1,$t8,0x1
    beqz	$v1,.L5ef35cc8
    move	$a3,$a5
    addiu	$a0,$t3,-64
    slti	$a0,$a0,32
    bnez	$a0,.L5ef3621c
    move	$a5,$s5
    move	$a6,$s1
    addiu	$a2,$t3,-64
    lw	$v0,0($a3)
.L5ef35d90:
    addiu	$a2,$a2,-64
    addiu	$a0,$t0,32
    addiu	$a7,$a0,32
    sw	$t0,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    slti	$v1,$a2,32
    lw	$v0,4($a3)
    sw	$a0,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    bnez	$v1,.L5ef35c84
    lw	$v0,8($a3)
    addiu	$a2,$a2,-64
    addiu	$a0,$a7,32
    addiu	$a1,$a0,32
    sw	$a7,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    slti	$v1,$a2,32
    lw	$v0,12($a3)
    sw	$a0,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    bnez	$v1,.L5ef35e5c
    lw	$v0,16($a3)
    addiu	$a2,$a2,-64
    addiu	$a0,$a1,32
    addiu	$t0,$a0,32
    sw	$a1,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    slti	$v1,$a2,32
    lw	$v0,20($a3)
    sw	$a0,1916($a6)
    sw	$a5,1916($a6)
    sw	$a4,1916($a6)
    sw	$v0,1916($a6)
    addiu	$t1,$t1,6
    addiu	$a3,$a3,24
    beqz	$v1,.L5ef35d90
    lw	$v0,0($a3)
    move	$t8,$a3
    move	$a7,$t1
    b	.L5ef35c9c
    move	$t1,$v0
.L5ef35e5c:
    move	$t0,$a1
    move	$a7,$t1
    move	$t1,$v0
    move	$t8,$a3
    addiu	$a7,$a7,4
    b	.L5ef35c9c
    addiu	$t8,$t8,16
.L5ef35e78:
    b	.L5ef359b4
    move	$t9,$zero
.L5ef35e80:
    move	$a6,$zero
    b	.L5ef35ccc
    sll	$v0,$a6,0x5
.L5ef35e8c:
    move	$a3,$a7
    addiu	$a7,$sp,-4
    addiu	$t9,$t9,1
    ld	$a4,80($sp)
    ld	$t1,192($sp)
    ld	$a6,200($sp)
    ld	$a5,208($sp)
    move	$s0,$ra
    ld	$ra,216($sp)
    b	.L5ef35bc0
    ld	$t2,232($sp)
.L5ef35eb8:
    b	.L5ef35a34
    addu	$s8,$s2,$s8
.L5ef35ec0:
    b	.L5ef35a6c
    addu	$a2,$v0,$a2
.L5ef35ec8:
    b	.L5ef359f0
    move	$a4,$a5
.L5ef35ed0:
    move	$t9,$zero
    b	.L5ef35bf8
    nop
.L5ef35edc:
    b	.L5ef35c38
    move	$a6,$a4
.L5ef35ee4:
    ld	$gp,112($sp)
    ld	$ra,128($sp)
    ld	$s3,136($sp)
    ld	$s5,144($sp)
    ld	$s6,152($sp)
    ld	$s4,160($sp)
    ld	$s7,168($sp)
    ld	$s8,176($sp)
    ld	$s0,184($sp)
    li	$v1,-1
    sw	$v1,1960($s1)
.L5ef35f10:
    li	$a1,3
    lw	$a0,16($s0)
    lui	$v0,0x3ff
    ori	$v0,$v0,0xffff
    and	$a0,$a0,$v0
    srl	$a0,$a0,0x18
    beq	$a0,$a1,.L5ef360b8
.L5ef35f2c:
    ld	$s0,40($sp)
    ld	$s1,120($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef35f40:
    sd	$s6,152($sp)
    li	$s6,32
    beq	$s2,$s6,.L5ef36110
    nop
    blez	$a4,.L5ef3607c
    sw	$zero,1384($s1)
    move	$t0,$a3
    move	$a7,$a2
    subu	$v0,$s6,$s2
    ld	$s6,152($sp)
    sll	$t9,$a4,0x2
    addu	$t9,$t9,$a2
    li	$t8,1
    sllv	$t8,$t8,$s2
    addiu	$t8,$t8,-1
    b	.L5ef35fdc
    sllv	$t8,$t8,$v0
.L5ef35f84:
    move	$a2,$t1
    move	$a3,$zero
.L5ef35f8c:
    sw	$a4,1916($s1)
    addu	$a4,$a4,$s2
    addiu	$a3,$a3,1
    subu	$a2,$a2,$s2
    slt	$v0,$a2,$s2
    sw	$a6,1916($s1)
    sw	$s2,1916($s1)
    beqz	$v0,.L5ef35f8c
    sw	$a5,1916($s1)
.L5ef35fb0:
    mult	$a3,$s2
    addiu	$t0,$t0,4
    mflo	$a4
    subu	$a2,$t1,$a4
    beqz	$a2,.L5ef35fd8
    addu	$v1,$a4,$t2
    sw	$v1,1916($s1)
    sw	$a6,1916($s1)
    sw	$a2,1916($s1)
    sw	$a5,1916($s1)
.L5ef35fd8:
    beq	$a7,$t9,.L5ef36078
.L5ef35fdc:
    ld	$a0,96($sp)
    lh	$a4,0($a7)
    subu	$a0,$a4,$a0
    div	$zero,$a0,$s2
    teq	$s2,$zero,0x7
    move	$t2,$a4
    mfhi	$a2
    bltz	$a2,.L5ef36064
    ld	$a0,88($sp)
.L5ef36000:
    ld	$a3,72($sp)
    lh	$t3,2($a7)
    ld	$a1,104($sp)
    subu	$a3,$t3,$a3
    div	$zero,$a3,$a1
    addiu	$a7,$a7,4
    mfhi	$a3
    bltz	$a3,.L5ef3606c
    teq	$a1,$zero,0x7
.L5ef36024:
    move	$a6,$t3
    move	$a4,$t2
    sll	$v1,$a3,0x2
    lw	$t1,0($t0)
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    subu	$a0,$s2,$a2
    slt	$v0,$t1,$s2
    and	$a5,$t8,$v1
    srlv	$v1,$v1,$a0
    sllv	$a5,$a5,$a2
    beqz	$v0,.L5ef35f84
    or	$a5,$a5,$v1
    move	$a3,$zero
    b	.L5ef35fb0
    nop
.L5ef36064:
    b	.L5ef36000
    addu	$a2,$s2,$a2
.L5ef3606c:
    ld	$a1,104($sp)
    b	.L5ef36024
    addu	$a3,$a1,$a3
.L5ef36078:
    li	$t1,-1
.L5ef3607c:
    sw	$t1,1960($s1)
    b	.L5ef35f10
    ld	$s6,152($sp)
.L5ef36088:
    li	$v1,4107
    sw	$v1,1324($s1)
    lw	$v0,76($a7)
    li	$a6,1
    move	$a5,$zero
    andi	$v0,$v0,0x3
    b	.L5ef35770
    sw	$v0,1236($s1)
.L5ef360a8:
    sw	$a1,1252($s1)
    lw	$a0,68($a7)
    b	.L5ef357bc
    sw	$a0,1244($s1)
.L5ef360b8:
    b	.L5ef35f2c
    sw	$zero,1252($s1)
.L5ef360c0:
    li	$v1,4104
    sw	$v1,1324($s1)
    lw	$v0,76($a7)
    li	$a6,1
    move	$a5,$zero
    andi	$v0,$v0,0xf
    b	.L5ef35770
    sw	$v0,1236($s1)
.L5ef360e0:
    li	$a1,4107
    sw	$a1,1324($s1)
    lw	$a0,76($a7)
    li	$a6,9
    move	$a5,$zero
    andi	$a0,$a0,0xc
    b	.L5ef35770
    sw	$a0,1236($s1)
.L5ef36100:
    ld	$s0,40($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef36110:
    blez	$a4,.L5ef3607c
    sw	$zero,1388($s1)
    move	$a5,$a2
    move	$a6,$a3
    sll	$a7,$a4,0x2
    b	.L5ef36174
    addu	$a7,$a7,$a2
.L5ef3612c:
    addu	$a3,$v0,$a3
.L5ef36130:
    addiu	$a6,$a6,4
    ld	$v0,88($sp)
    sll	$a1,$a3,0x2
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    sw	$a4,1916($s1)
    lh	$a0,2($a5)
    addiu	$a5,$a5,4
    subu	$v0,$s6,$a2
    sw	$a0,1916($s1)
    sllv	$v1,$a1,$a2
    lw	$a0,-4($a6)
    srlv	$a1,$a1,$v0
    or	$v1,$v1,$a1
    sw	$a0,1916($s1)
    beq	$a5,$a7,.L5ef361d0
    sw	$v1,1916($s1)
.L5ef36174:
    ld	$v0,96($sp)
    lh	$a4,0($a5)
    subu	$v0,$a4,$v0
    sra	$v1,$v0,0x1f
    xor	$a2,$v0,$v1
    sra	$v0,$v0,0x1f
    subu	$a2,$a2,$v1
    andi	$a2,$a2,0x1f
    xor	$a2,$a2,$v0
    subu	$a2,$a2,$v0
    bltz	$a2,.L5ef361c8
    ld	$a1,72($sp)
.L5ef361a4:
    lh	$a0,2($a5)
    ld	$v1,104($sp)
    subu	$a0,$a0,$a1
    div	$zero,$a0,$v1
    mfhi	$a3
    bgez	$a3,.L5ef36130
    teq	$v1,$zero,0x7
    b	.L5ef3612c
    ld	$v0,104($sp)
.L5ef361c8:
    b	.L5ef361a4
    addiu	$a2,$a2,32
.L5ef361d0:
    b	.L5ef3607c
    nop
.L5ef361d8:
    lw	$a0,0($a3)
    sltu	$v1,$zero,$a5
    beqzl	$v1,.L5ef361e8
    move	$a3,$a4
.L5ef361e8:
    ld	$v0,80($sp)
    lw	$a1,4($a3)
    srlv	$a1,$a1,$v0
    sllv	$v0,$a0,$s8
    or	$v0,$v0,$a1
    beqzl	$v1,.L5ef36204
    move	$v0,$a0
.L5ef36204:
    addiu	$t9,$t9,1
    sw	$s0,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    b	.L5ef35bf8
    sw	$v0,1916($s1)
.L5ef3621c:
    move	$a2,$t3
    move	$a7,$t1
    move	$a4,$t0
    move	$t8,$a3
    addiu	$a7,$a7,2
    lw	$a1,0($t8)
    sw	$a4,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$a1,1916($s1)
    addiu	$a0,$a4,32
    lw	$v1,4($t8)
    sw	$a0,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    sw	$v1,1916($s1)
    b	.L5ef35cc8
    move	$a6,$a7
.L5ef36264:
    sltu	$v1,$zero,$s0
    lw	$a0,0($t0)
    beqzl	$v1,.L5ef36274
    move	$t0,$s8
.L5ef36274:
    lw	$a1,4($t0)
    sllv	$v0,$a0,$s0
    srlv	$a1,$a1,$s7
    or	$v0,$v0,$a1
    beqzl	$v1,.L5ef3628c
    move	$v0,$a0
.L5ef3628c:
    addiu	$t9,$t9,1
    sw	$a3,1916($s1)
    sw	$s5,1916($s1)
    sw	$s6,1916($s1)
    b	.L5ef359b4
    sw	$v0,1916($s1)
    addiu	$sp,$sp,-48
    lw	$a6,0($a0)
    lw	$t0,12($a0)
    sll	$a7,$a1,0x2
    lw	$at,expScreenPrivateIndex
    lw	$a5,436($t0)
    lw	$t0,116($t0)
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    lw	$t0,100($t0)
    beqz	$a1,.L5ef363b4
    addiu	$a5,$a5,80
    blez	$a1,.L5ef36388
    subu	$a7,$a7,$a1
    move	$a4,$a2
    sll	$a7,$a7,0x2
    b	.L5ef362fc
    addu	$a7,$a7,$a2
.L5ef362f0:
    addiu	$a4,$a4,12
.L5ef362f4:
    beql	$a4,$a7,.L5ef36388
    sd	$ra,0($sp)
.L5ef362fc:
    lbu	$a1,10($a4)
    andi	$at,$a1,0x1
    beqz	$at,.L5ef3632c
    andi	$a3,$a1,0x2
    lw	$a1,12($a6)
    lw	$v1,0($a4)
    lhu	$v0,4($a4)
    and	$v1,$v1,$a1
    addu	$v1,$v1,$a5
    sb	$v0,0($v1)
    lbu	$a1,10($a4)
    andi	$a3,$a1,0x2
.L5ef3632c:
    beqz	$a3,.L5ef3635c
    andi	$a3,$a1,0x4
    lw	$a1,16($a6)
    lw	$v0,0($a4)
    lw	$v1,28($a6)
    lhu	$at,6($a4)
    and	$v0,$v0,$a1
    srlv	$v0,$v0,$v1
    addu	$v0,$v0,$a5
    sb	$at,256($v0)
    lbu	$a1,10($a4)
    andi	$a3,$a1,0x4
.L5ef3635c:
    beqzl	$a3,.L5ef362f4
    addiu	$a4,$a4,12
    lw	$a3,20($a6)
    lw	$v0,0($a4)
    lw	$v1,32($a6)
    lhu	$at,8($a4)
    and	$v0,$v0,$a3
    srlv	$v0,$v0,$v1
    addu	$v0,$v0,$a5
    b	.L5ef362f0
    sb	$at,512($v0)
.L5ef36388:
    move	$a0,$t0
    # lw $t9, -29704($gp)
    move	$a2,$a5
    sd	$ra,0($sp)
    jal	ioctl
    li	$a1,15006
    li	$a4,-1
    beq	$v0,$a4,.L5ef363bc
    ld	$ra,0($sp)
.L5ef363ac:
    jr	$ra
    addiu	$sp,$sp,48
.L5ef363b4:
    jr	$ra
    addiu	$sp,$sp,48
.L5ef363bc:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-3928
    b	.L5ef363ac
    ld	$ra,0($sp)
.end expStippledSpans

.globl expFillTriangle
.ent expFillTriangle
expFillTriangle:
    lh	$a7,4($a3)
    lh	$t1,0($a3)
    lh	$v0,8($a3)
    lh	$t0,8($a0)
    lw	$a5,76($a1)
    lh	$at,10($a0)
    lw	$a2,nfbGCPrivateIndex
    addiu	$sp,$sp,-176
    sd	$s5,80($sp)
    lh	$s5,10($a3)
    lw	$a6,0($a1)
    sll	$a1,$a2,0x2
    addu	$s5,$s5,$at
    addu	$a5,$a5,$a1
    lw	$a5,0($a5)
    sd	$s6,96($sp)
    lh	$s6,6($a3)
    sd	$s4,88($sp)
    lh	$s4,2($a3)
    addu	$s6,$s6,$at
    lw	$v1,expScreenPrivateIndex
    lw	$t2,436($a6)
    addu	$s4,$s4,$at
    sll	$v1,$v1,0x2
    addu	$t2,$t2,$v1
    lw	$t2,0($t2)
    slt	$at,$s4,$s6
    beqz	$at,.L5ef5c63c
    lw	$t2,0($t2)
    slt	$at,$s5,$s4
    beqzl	$at,.L5ef5c804
    sd	$s2,120($sp)
    sd	$s0,56($sp)
    sd	$s1,112($sp)
    move	$s1,$v0
    sd	$s2,120($sp)
    move	$s2,$t1
    sd	$s3,104($sp)
    move	$s3,$a7
    move	$v1,$s4
    move	$s4,$s5
    move	$s5,$s6
    b	.L5ef5c694
    move	$s6,$v1
.L5ef5c63c:
    slt	$a1,$s5,$s6
    beqzl	$a1,.L5ef5c844
    sd	$s2,120($sp)
    sd	$s0,56($sp)
    sd	$s1,112($sp)
    move	$s1,$v0
    sd	$s2,120($sp)
    move	$s2,$a7
    sd	$s3,104($sp)
    move	$s3,$t1
    move	$a2,$s4
    move	$s4,$s5
    b	.L5ef5c694
    move	$s5,$a2
.L5ef5c674:
    sd	$s1,112($sp)
    move	$s3,$v0
    move	$s2,$s4
    move	$s4,$s6
    move	$s6,$s2
    move	$s2,$t1
.L5ef5c68c:
    sd	$s0,56($sp)
    move	$s1,$a7
.L5ef5c694:
    addu	$s3,$t0,$s3
    lw	$s0,nfbWindowPrivateIndex
    lw	$a4,132($a0)
    addu	$s1,$t0,$s1
    sll	$s0,$s0,0x2
    addu	$a4,$a4,$s0
    lw	$a4,0($a4)
    addu	$s2,$t0,$s2
    li	$at,13
    lw	$a4,20($a4)
    lui	$s0,0x4
    addu	$s0,$t2,$s0
    beq	$a4,$at,.L5ef5c8e0
    move	$v0,$a4
    li	$at,14
    beq	$v0,$at,.L5ef5c920
    li	$v1,12
    beq	$v0,$v1,.L5ef5c900
    ori	$a7,$a4,0x1000
    sw	$a7,1324($s0)
    sw	$zero,1236($s0)
    lbu	$a3,21($a5)
    lw	$a7,76($a5)
    sll	$a3,$a3,0x3
.L5ef5c6f4:
    slt	$a0,$s2,$s1
    lui	$v0,0xff
    lw	$v1,64($a5)
    ori	$v0,$v0,0xffff
    and	$v0,$a7,$v0
    sw	$v1,1328($s0)
    sw	$v0,1916($s0)
    addiu	$a4,$s5,1
    lbu	$at,72($a5)
    li	$v0,1
    sw	$at,1916($s0)
    bne	$s4,$s6,.L5ef5c758
    sw	$a3,1916($s0)
    beqz	$a0,.L5ef5c738
    move	$v1,$s1
    move	$s1,$s2
    move	$s2,$v1
.L5ef5c738:
    slt	$a1,$s3,$s1
    beqz	$a1,.L5ef5c870
    slt	$a1,$s2,$s3
    sd	$ra,128($sp)
    sh	$s3,0($sp)
    addiu	$a2,$s2,1
    b	.L5ef5c890
    sh	$a2,4($sp)
.L5ef5c758:
    slt	$a7,$s1,$s2
    beqz	$a7,.L5ef5cdac
    move	$a3,$s1
.L5ef5c764:
    slt	$at,$a3,$s3
    beqz	$at,.L5ef5c77c
    move	$a3,$s3
    beqz	$a7,.L5ef5d034
    move	$a7,$s1
.L5ef5c778:
    move	$a3,$a7
.L5ef5c77c:
    beqz	$a0,.L5ef5c940
    sh	$a3,0($sp)
    move	$a3,$s1
.L5ef5c788:
    slt	$v1,$s3,$a3
    beqzl	$v1,.L5ef5c7a8
    sd	$ra,128($sp)
    beqz	$a0,.L5ef5d03c
    move	$a0,$s1
.L5ef5c79c:
    sd	$ra,128($sp)
    b	.L5ef5c7ac
    move	$a7,$a0
.L5ef5c7a8:
    move	$a7,$s3
.L5ef5c7ac:
    sh	$a4,6($sp)
    sh	$s4,2($sp)
    addiu	$a0,$a7,1
    sh	$a0,4($sp)
    lw	$t9,380($a6)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,8($a5)
    li	$a1,1
    beq	$v0,$a1,.L5ef5c948
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s1,112($sp)
    ld	$s0,56($sp)
    ld	$s5,80($sp)
    beqz	$v0,.L5ef5d01c
    ld	$s2,120($sp)
    ld	$s6,96($sp)
    move	$v0,$zero
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef5c804:
    slt	$a2,$s5,$s6
    beqz	$a2,.L5ef5c82c
    sd	$s3,104($sp)
    sd	$s1,112($sp)
    move	$s3,$a7
    move	$s2,$s6
    move	$s6,$s5
    move	$s5,$s2
    b	.L5ef5c838
    move	$s2,$v0
.L5ef5c82c:
    sd	$s1,112($sp)
    move	$s2,$a7
    move	$s3,$v0
.L5ef5c838:
    sd	$s0,56($sp)
    b	.L5ef5c694
    move	$s1,$t1
.L5ef5c844:
    slt	$at,$s5,$s4
    beqz	$at,.L5ef5c674
    sd	$s3,104($sp)
    sd	$s1,112($sp)
    move	$s2,$v0
    move	$s3,$t1
    move	$v1,$s4
    move	$s4,$s6
    move	$s6,$s5
    b	.L5ef5c68c
    move	$s5,$v1
.L5ef5c870:
    beqz	$a1,.L5ef5c880
    sh	$s1,0($sp)
    b	.L5ef5c884
    move	$a0,$s3
.L5ef5c880:
    move	$a0,$s2
.L5ef5c884:
    sd	$ra,128($sp)
    addiu	$a2,$a0,1
    sh	$a2,4($sp)
.L5ef5c890:
    sh	$a4,6($sp)
    sh	$s4,2($sp)
    lw	$t9,380($a6)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,8($a5)
    li	$at,1
    beq	$v0,$at,.L5ef5cc5c
    ld	$ra,128($sp)
    ld	$s2,120($sp)
    ld	$s0,56($sp)
    ld	$s1,112($sp)
    ld	$s5,80($sp)
    beqz	$v0,.L5ef5d004
    ld	$s3,104($sp)
    move	$v0,$zero
    ld	$s4,88($sp)
    ld	$s6,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef5c8e0:
    li	$a1,4107
    sw	$a1,1324($s0)
    lw	$v1,76($a5)
    li	$a3,1
    move	$a7,$zero
    andi	$v1,$v1,0x3
    b	.L5ef5c6f4
    sw	$v1,1236($s0)
.L5ef5c900:
    li	$a3,4104
    sw	$a3,1324($s0)
    lw	$a2,76($a5)
    li	$a3,1
    move	$a7,$zero
    andi	$a2,$a2,0xf
    b	.L5ef5c6f4
    sw	$a2,1236($s0)
.L5ef5c920:
    li	$v1,4107
    sw	$v1,1324($s0)
    lw	$at,76($a5)
    li	$a3,9
    move	$a7,$zero
    andi	$at,$at,0xc
    b	.L5ef5c6f4
    sw	$at,1236($s0)
.L5ef5c940:
    b	.L5ef5c788
    move	$a3,$s2
.L5ef5c948:
    subu	$a0,$s6,$s4
    beqz	$a0,.L5ef5c9a0
    subu	$a5,$s2,$s1
    div	$zero,$a5,$a0
    mflo	$a4
    nop
    sll	$a3,$a0,0x1
    multu	$a3,$a4
    teq	$a0,$zero,0x7
    sw	$s1,32($sp)
    mflo	$v0
    bltz	$a5,.L5ef5d084
    sw	$a4,36($sp)
    addiu	$a2,$a4,1
    sw	$a2,40($sp)
    sll	$a1,$a5,0x1
    subu	$a1,$a1,$v0
    sw	$a1,44($sp)
    addiu	$a2,$a1,-1
    sw	$a2,52($sp)
    subu	$a1,$a1,$a3
    sw	$a1,48($sp)
.L5ef5c9a0:
    subu	$v0,$s5,$s4
    beqz	$v0,.L5ef5c9f8
    subu	$a6,$s3,$s1
    div	$zero,$a6,$v0
    mflo	$a4
    nop
    sll	$a3,$v0,0x1
    multu	$a3,$a4
    teq	$v0,$zero,0x7
    sw	$s1,8($sp)
    mflo	$a5
    bltz	$a6,.L5ef5d0ac
    sw	$a4,12($sp)
    addiu	$v1,$a4,1
    sw	$v1,16($sp)
    sll	$at,$a6,0x1
    subu	$at,$at,$a5
    sw	$at,20($sp)
    addiu	$v1,$at,-1
    sw	$v1,28($sp)
    subu	$at,$at,$a3
    sw	$at,24($sp)
.L5ef5c9f8:
    sd	$a0,64($sp)
    sw	$zero,1220($s0)
    blez	$a0,.L5ef5d124
    ld	$s1,112($sp)
    move	$t2,$zero
    move	$a5,$s4
    lw	$a0,8($sp)
    lw	$t9,12($sp)
    lw	$a7,16($sp)
    lw	$t3,20($sp)
    lw	$t1,24($sp)
    lw	$a3,28($sp)
    lw	$v0,32($sp)
    lw	$ra,36($sp)
    lw	$a6,40($sp)
    lw	$t8,44($sp)
    ld	$s1,64($sp)
    lw	$t0,48($sp)
    lw	$a4,52($sp)
    sd	$s1,72($sp)
    move	$a1,$s1
    andi	$a1,$s1,0x1
    beqz	$a1,.L5ef5cac4
    addu	$s1,$s1,$s4
    slt	$a2,$a0,$v0
    beqz	$a2,.L5ef5ca8c
    subu	$at,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5caa8
    sw	$at,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5ca78:
    bgez	$a4,.L5ef5cab4
    addu	$a0,$t9,$a0
.L5ef5ca80:
    addu	$a4,$a4,$t8
    b	.L5ef5cabc
    addu	$v0,$ra,$v0
.L5ef5ca8c:
    beq	$v0,$a0,.L5ef5caa0
    subu	$v1,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$v1,1916($s0)
.L5ef5caa0:
    bltzl	$a3,.L5ef5ca78
    addu	$a3,$a3,$t3
.L5ef5caa8:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5ca80
    addu	$a0,$a7,$a0
.L5ef5cab4:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cabc:
    addiu	$a5,$a5,1
    addiu	$t2,$t2,1
.L5ef5cac4:
    ld	$a1,72($sp)
    sra	$a1,$a1,0x1
    bnez	$a1,.L5ef5cf68
    subu	$a1,$v0,$a0
.L5ef5cad4:
    sw	$a0,8($sp)
    sw	$a3,28($sp)
    sw	$v0,32($sp)
    sw	$a4,52($sp)
    ld	$s1,112($sp)
    ld	$ra,128($sp)
.L5ef5caec:
    subu	$v0,$s5,$s6
    beqz	$v0,.L5ef5cb44
    subu	$a0,$s3,$s2
    div	$zero,$a0,$v0
    mflo	$a3
    nop
    sll	$a5,$v0,0x1
    multu	$a5,$a3
    teq	$v0,$zero,0x7
    sw	$s2,32($sp)
    mflo	$a4
    bltz	$a0,.L5ef5d0d4
    sw	$a3,36($sp)
    addiu	$at,$a3,1
    sw	$at,40($sp)
    sll	$a2,$a0,0x1
    subu	$a2,$a2,$a4
    sw	$a2,44($sp)
    addiu	$at,$a2,-1
    sw	$at,52($sp)
    subu	$a2,$a2,$a5
    sw	$a2,48($sp)
.L5ef5cb44:
    sd	$v0,136($sp)
    ld	$s3,104($sp)
    blez	$v0,.L5ef5cc20
    ld	$s2,120($sp)
    lw	$a0,8($sp)
    lw	$t9,12($sp)
    lw	$a7,16($sp)
    lw	$t3,20($sp)
    lw	$t1,24($sp)
    lw	$a3,28($sp)
    lw	$v0,32($sp)
    lw	$ra,36($sp)
    lw	$a6,40($sp)
    lw	$t8,44($sp)
    lw	$t0,48($sp)
    lw	$a4,52($sp)
    ld	$s1,136($sp)
    ld	$s3,104($sp)
    addu	$a5,$t2,$s4
    move	$s2,$s1
    andi	$v1,$s1,0x1
    beqz	$v1,.L5ef5cc0c
    addu	$s1,$a5,$s1
    slt	$at,$a0,$v0
    beqz	$at,.L5ef5cbd8
    ld	$s3,104($sp)
    subu	$v1,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5cbf4
    sw	$v1,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5cbc4:
    bgez	$a4,.L5ef5cc00
    addu	$a0,$t9,$a0
.L5ef5cbcc:
    addu	$a4,$a4,$t8
    b	.L5ef5cc08
    addu	$v0,$ra,$v0
.L5ef5cbd8:
    beq	$v0,$a0,.L5ef5cbec
    subu	$a1,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$a1,1916($s0)
.L5ef5cbec:
    bltzl	$a3,.L5ef5cbc4
    addu	$a3,$a3,$t3
.L5ef5cbf4:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5cbcc
    addu	$a0,$a7,$a0
.L5ef5cc00:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cc08:
    addiu	$a5,$a5,1
.L5ef5cc0c:
    sra	$a2,$s2,0x1
    bnez	$a2,.L5ef5ce8c
    ld	$s2,120($sp)
.L5ef5cc18:
    ld	$s1,112($sp)
    ld	$ra,128($sp)
.L5ef5cc20:
    li	$v0,1
    li	$s4,-1
    li	$s5,1
    li	$s6,1024
    li	$at,1280
    sw	$at,1916($s0)
    sw	$s6,1916($s0)
    ld	$s6,96($sp)
    sw	$s5,1916($s0)
    ld	$s5,80($sp)
    sw	$s4,1960($s0)
    ld	$s0,56($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef5cc5c:
    subu	$s6,$s5,$s4
    beqz	$s6,.L5ef5cd0c
    subu	$a6,$s3,$s1
    div	$zero,$a6,$s6
    mflo	$a4
    nop
    sll	$a3,$s6,0x1
    multu	$a3,$a4
    teq	$s6,$zero,0x7
    sw	$s1,8($sp)
    mflo	$a5
    bltz	$a6,.L5ef5d058
    sw	$a4,12($sp)
    ld	$s1,112($sp)
    addiu	$a1,$a4,1
    sw	$a1,16($sp)
    sll	$v1,$a6,0x1
    subu	$v1,$v1,$a5
    sw	$v1,20($sp)
    addiu	$a1,$v1,-1
    subu	$v1,$v1,$a3
    sw	$a1,28($sp)
    sw	$v1,24($sp)
.L5ef5ccb8:
    beqz	$s6,.L5ef5cd0c
    subu	$a0,$s3,$s2
    div	$zero,$a0,$s6
    mflo	$a4
    nop
    sll	$a3,$s6,0x1
    multu	$a3,$a4
    teq	$s6,$zero,0x7
    sw	$s2,32($sp)
    mflo	$v0
    bltz	$a0,.L5ef5d0fc
    sw	$a4,36($sp)
    addiu	$at,$a4,1
    sw	$at,40($sp)
    sll	$a2,$a0,0x1
    subu	$a2,$a2,$v0
    sw	$a2,44($sp)
    addiu	$at,$a2,-1
    sw	$at,52($sp)
    subu	$a2,$a2,$a3
    sw	$a2,48($sp)
.L5ef5cd0c:
    sw	$zero,1220($s0)
    ld	$s3,104($sp)
    ld	$s1,112($sp)
    blez	$s6,.L5ef5cc20
    ld	$s2,120($sp)
    move	$a5,$s4
    lw	$a0,8($sp)
    lw	$t9,12($sp)
    lw	$a7,16($sp)
    lw	$t3,20($sp)
    lw	$t1,24($sp)
    lw	$a3,28($sp)
    lw	$v0,32($sp)
    lw	$ra,36($sp)
    lw	$a6,40($sp)
    lw	$t8,44($sp)
    lw	$t0,48($sp)
    lw	$a4,52($sp)
    move	$s1,$s6
    andi	$v1,$s6,0x1
    beqz	$v1,.L5ef5cd98
    addu	$t2,$s6,$s4
    beq	$v0,$a0,.L5ef5cd78
    subu	$a1,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    sw	$a1,1916($s0)
.L5ef5cd78:
    bltzl	$a3,.L5ef5d044
    addu	$a3,$a3,$t3
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5d04c
    addu	$a0,$a7,$a0
.L5ef5cd8c:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cd94:
    addiu	$a5,$a5,1
.L5ef5cd98:
    sra	$a2,$s1,0x1
    bnez	$a2,.L5ef5ce10
    ld	$s1,112($sp)
.L5ef5cda4:
    b	.L5ef5cc20
    ld	$ra,128($sp)
.L5ef5cdac:
    b	.L5ef5c764
    move	$a3,$s2
.L5ef5cdb4:
    bltzl	$a3,.L5ef5ce2c
    addu	$a3,$a3,$t3
.L5ef5cdbc:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5ce34
    addu	$a0,$a7,$a0
.L5ef5cdc8:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cdd0:
    beq	$v0,$a0,.L5ef5cde8
    addiu	$a5,$a5,1
    subu	$at,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    sw	$at,1916($s0)
.L5ef5cde8:
    bltzl	$a3,.L5ef5ce40
    addu	$a3,$a3,$t3
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5ce48
    addu	$a0,$a7,$a0
.L5ef5cdfc:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5ce04:
    addiu	$a5,$a5,1
    beq	$a5,$t2,.L5ef5cda4
    nop
.L5ef5ce10:
    beq	$v0,$a0,.L5ef5cdb4
    subu	$v1,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5cdbc
    sw	$v1,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5ce2c:
    bgez	$a4,.L5ef5cdc8
    addu	$a0,$t9,$a0
.L5ef5ce34:
    addu	$a4,$a4,$t8
    b	.L5ef5cdd0
    addu	$v0,$ra,$v0
.L5ef5ce40:
    bgez	$a4,.L5ef5cdfc
    addu	$a0,$t9,$a0
.L5ef5ce48:
    addu	$a4,$a4,$t8
    b	.L5ef5ce04
    addu	$v0,$ra,$v0
.L5ef5ce54:
    beq	$v0,$a0,.L5ef5ce68
    subu	$a1,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$a1,1916($s0)
.L5ef5ce68:
    bltzl	$a3,.L5ef5cf14
    addu	$a3,$a3,$t3
.L5ef5ce70:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5cf1c
    addu	$a0,$a7,$a0
.L5ef5ce7c:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5ce84:
    addiu	$a5,$a5,1
    beq	$a5,$s1,.L5ef5cc18
.L5ef5ce8c:
    slt	$a2,$a0,$v0
    beqz	$a2,.L5ef5cec0
    subu	$at,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5cedc
    sw	$at,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5ceac:
    bgez	$a4,.L5ef5cee8
    addu	$a0,$t9,$a0
.L5ef5ceb4:
    addu	$a4,$a4,$t8
    b	.L5ef5cef0
    addu	$v0,$ra,$v0
.L5ef5cec0:
    beq	$v0,$a0,.L5ef5ced4
    subu	$v1,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$v1,1916($s0)
.L5ef5ced4:
    bltzl	$a3,.L5ef5ceac
    addu	$a3,$a3,$t3
.L5ef5cedc:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5ceb4
    addu	$a0,$a7,$a0
.L5ef5cee8:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cef0:
    slt	$a1,$a0,$v0
    beqz	$a1,.L5ef5ce54
    addiu	$a5,$a5,1
    subu	$a2,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5ce70
    sw	$a2,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5cf14:
    bgez	$a4,.L5ef5ce7c
    addu	$a0,$t9,$a0
.L5ef5cf1c:
    addu	$a4,$a4,$t8
    b	.L5ef5ce84
    addu	$v0,$ra,$v0
.L5ef5cf28:
    beq	$v0,$a0,.L5ef5cf3c
    subu	$at,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$at,1916($s0)
.L5ef5cf3c:
    bltzl	$a3,.L5ef5cff0
    addu	$a3,$a3,$t3
.L5ef5cf44:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5cff8
    addu	$a0,$a7,$a0
.L5ef5cf50:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cf58:
    addiu	$a5,$a5,1
    beq	$a5,$s1,.L5ef5cad4
    addiu	$t2,$t2,1
    subu	$a1,$v0,$a0
.L5ef5cf68:
    slt	$v1,$a0,$v0
    beqz	$v1,.L5ef5cf9c
    addiu	$t2,$t2,1
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5cfb8
    sw	$a1,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5cf88:
    bgez	$a4,.L5ef5cfc4
    addu	$a0,$t9,$a0
.L5ef5cf90:
    addu	$a4,$a4,$t8
    b	.L5ef5cfcc
    addu	$v0,$ra,$v0
.L5ef5cf9c:
    beq	$v0,$a0,.L5ef5cfb0
    subu	$a2,$a0,$v0
    sw	$v0,1916($s0)
    sw	$a5,1916($s0)
    sw	$a2,1916($s0)
.L5ef5cfb0:
    bltzl	$a3,.L5ef5cf88
    addu	$a3,$a3,$t3
.L5ef5cfb8:
    addu	$a3,$a3,$t1
    bltz	$a4,.L5ef5cf90
    addu	$a0,$a7,$a0
.L5ef5cfc4:
    addu	$a4,$a4,$t0
    addu	$v0,$a6,$v0
.L5ef5cfcc:
    slt	$at,$a0,$v0
    beqz	$at,.L5ef5cf28
    addiu	$a5,$a5,1
    subu	$v1,$v0,$a0
    sw	$a0,1916($s0)
    sw	$a5,1916($s0)
    bgez	$a3,.L5ef5cf44
    sw	$v1,1916($s0)
    addu	$a3,$a3,$t3
.L5ef5cff0:
    bgez	$a4,.L5ef5cf50
    addu	$a0,$t9,$a0
.L5ef5cff8:
    addu	$a4,$a4,$t8
    b	.L5ef5cf58
    addu	$v0,$ra,$v0
.L5ef5d004:
    li	$v0,1
    ld	$s4,88($sp)
    ld	$s5,80($sp)
    ld	$s6,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef5d01c:
    li	$v0,1
    ld	$s4,88($sp)
    ld	$s5,80($sp)
    ld	$s6,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef5d034:
    b	.L5ef5c778
    move	$a7,$s2
.L5ef5d03c:
    b	.L5ef5c79c
    move	$a0,$s2
.L5ef5d044:
    bgez	$a4,.L5ef5cd8c
    addu	$a0,$t9,$a0
.L5ef5d04c:
    addu	$a4,$a4,$t8
    b	.L5ef5cd94
    addu	$v0,$ra,$v0
.L5ef5d058:
    subu	$a1,$s1,$s3
    ld	$s1,112($sp)
    addiu	$a2,$a4,-1
    sw	$a2,16($sp)
    sll	$a1,$a1,0x1
    addu	$a1,$a1,$a5
    sw	$a1,20($sp)
    subu	$a1,$a1,$a3
    sw	$a1,28($sp)
    b	.L5ef5ccb8
    sw	$a1,24($sp)
.L5ef5d084:
    addiu	$v1,$a4,-1
    sw	$v1,40($sp)
    subu	$at,$s1,$s2
    sll	$at,$at,0x1
    addu	$at,$at,$v0
    sw	$at,44($sp)
    subu	$at,$at,$a3
    sw	$at,52($sp)
    b	.L5ef5c9a0
    sw	$at,48($sp)
.L5ef5d0ac:
    addiu	$a2,$a4,-1
    sw	$a2,16($sp)
    subu	$a1,$s1,$s3
    sll	$a1,$a1,0x1
    addu	$a1,$a1,$a5
    sw	$a1,20($sp)
    subu	$a1,$a1,$a3
    sw	$a1,28($sp)
    b	.L5ef5c9f8
    sw	$a1,24($sp)
.L5ef5d0d4:
    addiu	$v1,$a3,-1
    sw	$v1,40($sp)
    subu	$at,$s2,$s3
    sll	$at,$at,0x1
    addu	$at,$at,$a4
    sw	$at,44($sp)
    subu	$at,$at,$a5
    sw	$at,52($sp)
    b	.L5ef5cb44
    sw	$at,48($sp)
.L5ef5d0fc:
    addiu	$a2,$a4,-1
    sw	$a2,40($sp)
    subu	$a1,$s2,$s3
    sll	$a1,$a1,0x1
    addu	$a1,$a1,$v0
    sw	$a1,44($sp)
    subu	$a1,$a1,$a3
    sw	$a1,52($sp)
    b	.L5ef5cd0c
    sw	$a1,48($sp)
.L5ef5d124:
    b	.L5ef5caec
    move	$t2,$zero
.end expFillTriangle

.globl expFillPolygon
.ent expFillPolygon
expFillPolygon:
    addiu	$sp,$sp,-288
    sd	$s0,168($sp)
    move	$s0,$a5
    sd	$gp,184($sp)
    lui	$a6,0x16
    addiu	$a6,$a6,5272
    addu	$gp,$t9,$a6
    lw	$a5,nfbGCPrivateIndex
    move	$v0,$a0
    lw	$a0,76($a1)
    sll	$a5,$a5,0x2
    sd	$s1,160($sp)
    lw	$v1,0($a1)
    move	$s1,$a4
    lw	$a4,expScreenPrivateIndex
    lw	$v1,436($v1)
    addu	$a0,$a0,$a5
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    lw	$a0,0($a0)
    li	$at,3
    lw	$v1,0($v1)
    sd	$a0,32($sp)
    beq	$s1,$at,.L5ef5da2c
    sd	$v1,40($sp)
    slti	$a7,$s1,3
    bnez	$a7,.L5ef5d410
    li	$at,2
    beql	$a2,$at,.L5ef5d1d8
    sd	$s5,208($sp)
    move	$a0,$v0
    # lw $t9, -30420($gp)
    move	$a4,$s1
    sd	$ra,192($sp)
    jal	miFillPolygon
    move	$a5,$s0
    ld	$gp,184($sp)
    ld	$ra,192($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5d1d8:
    sd	$s7,216($sp)
    move	$s7,$s0
    lh	$t2,10($v0)
    lh	$t3,8($v0)
    lh	$a5,0($s0)
    slti	$a0,$s1,2
    xori	$a0,$a0,0x1
    addu	$a5,$a5,$t3
    dsll32	$a5,$a5,0x10
    beqz	$a3,.L5ef5d4a0
    dsra32	$a5,$a5,0x10
    move	$a3,$a5
    move	$a4,$a5
    move	$t0,$a5
    lh	$t1,2($s0)
    sh	$a5,0($s0)
    addiu	$t3,$s1,-1
    addu	$t1,$t1,$t2
    sll	$t2,$t3,0x2
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,2($s0)
    move	$s5,$t1
    beqz	$a0,.L5ef5d2ac
    move	$a2,$t1
    move	$a5,$s0
    addiu	$a0,$s0,4
    addu	$t2,$t2,$s0
    andi	$at,$t3,0x1
    beqz	$at,.L5ef5d2a0
    addiu	$t2,$t2,4
    lh	$at,4($a5)
    addu	$t0,$at,$t0
    lh	$v1,6($a5)
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    addu	$t1,$v1,$t1
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,6($a5)
    slt	$a6,$t0,$a3
    slt	$at,$t1,$a2
    beqz	$at,.L5ef5d478
    sh	$t0,4($a5)
    move	$s7,$a0
    move	$a2,$t1
.L5ef5d290:
    beqz	$a6,.L5ef5d48c
    addiu	$a5,$a5,4
    move	$a3,$t0
.L5ef5d29c:
    addiu	$a0,$a0,4
.L5ef5d2a0:
    sra	$a7,$t3,0x1
    bnezl	$a7,.L5ef5d3a0
    lh	$at,4($a5)
.L5ef5d2ac:
    sd	$v0,144($sp)
.L5ef5d2b0:
    subu	$at,$s5,$a2
    beqz	$at,.L5ef5d458
    sd	$a1,128($sp)
    sh	$a2,2($sp)
    sh	$a3,0($sp)
    ld	$t9,128($sp)
    addiu	$at,$a4,1
    sd	$ra,192($sp)
    addiu	$ra,$s5,1
    sh	$ra,6($sp)
    sh	$at,4($sp)
    lw	$t9,0($t9)
    lw	$t9,380($t9)
    ld	$a0,32($sp)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,8($a0)
    li	$a1,1
    beq	$v0,$a1,.L5ef5d638
    ld	$ra,192($sp)
    ld	$s5,208($sp)
    bnez	$v0,.L5ef5d428
    ld	$s7,216($sp)
    li	$v0,1
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5d324:
    slt	$v1,$s5,$t1
    beqz	$v1,.L5ef5d338
    slt	$a6,$t0,$a3
    move	$s5,$t1
.L5ef5d334:
    slt	$a6,$t0,$a3
.L5ef5d338:
    beqz	$a6,.L5ef5d3d8
    slt	$a6,$a4,$t0
    move	$a3,$t0
.L5ef5d344:
    lh	$at,8($a5)
.L5ef5d348:
    addiu	$a0,$a0,4
    addu	$t0,$at,$t0
    lh	$v1,10($a5)
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    addu	$t1,$v1,$t1
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,10($a5)
    slt	$a7,$t1,$a2
    beqz	$a7,.L5ef5d3e8
    sh	$t0,8($a5)
    move	$s7,$a0
    move	$a2,$t1
.L5ef5d380:
    addiu	$a5,$a5,8
.L5ef5d384:
    slt	$a6,$t0,$a3
    beqz	$a6,.L5ef5d3fc
    addiu	$a0,$a0,4
    move	$a3,$t0
.L5ef5d394:
    beq	$a0,$t2,.L5ef5d2ac
    nop
    lh	$at,4($a5)
.L5ef5d3a0:
    addu	$t0,$at,$t0
    lh	$v1,6($a5)
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    addu	$t1,$v1,$t1
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    sh	$t1,6($a5)
    slt	$a7,$t1,$a2
    beqz	$a7,.L5ef5d324
    sh	$t0,4($a5)
    move	$s7,$a0
    b	.L5ef5d334
    move	$a2,$t1
.L5ef5d3d8:
    beqzl	$a6,.L5ef5d348
    lh	$at,8($a5)
    b	.L5ef5d344
    move	$a4,$t0
.L5ef5d3e8:
    slt	$a7,$s5,$t1
    beqzl	$a7,.L5ef5d384
    addiu	$a5,$a5,8
    b	.L5ef5d380
    move	$s5,$t1
.L5ef5d3fc:
    slt	$at,$a4,$t0
    beqz	$at,.L5ef5d394
    nop
    b	.L5ef5d394
    move	$a4,$t0
.L5ef5d410:
    li	$v0,1
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5d428:
    ld	$a0,144($sp)
    # lw $t9, -30484($gp)
    ld	$a1,128($sp)
    move	$a2,$s1
    jal	miFillConvexPoly
    move	$a3,$s0
    ld	$gp,184($sp)
    ld	$ra,192($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5d458:
    li	$v0,1
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    ld	$s5,208($sp)
    ld	$s7,216($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5d478:
    slt	$v1,$s5,$t1
    beqz	$v1,.L5ef5d290
    nop
    b	.L5ef5d290
    move	$s5,$t1
.L5ef5d48c:
    slt	$a6,$a4,$t0
    beqzl	$a6,.L5ef5d2a0
    addiu	$a0,$a0,4
    b	.L5ef5d29c
    move	$a4,$t0
.L5ef5d4a0:
    move	$a3,$a5
    lh	$s5,2($s0)
    move	$a4,$a5
    sh	$a5,0($s0)
    addu	$s5,$s5,$t2
    dsll32	$s5,$s5,0x10
    dsra32	$s5,$s5,0x10
    sh	$s5,2($s0)
    beqz	$a0,.L5ef5d2ac
    move	$a2,$s5
    move	$t1,$s0
    addiu	$a5,$s0,4
    addiu	$t9,$s1,-1
    andi	$at,$t9,0x1
    sll	$t8,$t9,0x2
    addu	$t8,$t8,$s0
    beqz	$at,.L5ef5d538
    addiu	$t8,$t8,4
    lh	$t0,6($t1)
    lh	$a0,4($t1)
    addu	$t0,$t0,$t2
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,6($t1)
    addu	$a0,$a0,$t3
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    slt	$at,$t0,$a2
    beqz	$at,.L5ef5dbc4
    sh	$a0,4($t1)
    move	$s7,$a5
    move	$a2,$t0
.L5ef5d520:
    slt	$at,$a0,$a3
.L5ef5d524:
    beqz	$at,.L5ef5dbd8
    slt	$v1,$a4,$a0
    move	$a3,$a0
.L5ef5d530:
    addiu	$a5,$a5,4
.L5ef5d534:
    addiu	$t1,$t1,4
.L5ef5d538:
    sra	$v1,$t9,0x1
    bnezl	$v1,.L5ef5d568
    lh	$a0,4($t1)
.L5ef5d544:
    b	.L5ef5d2b0
    sd	$v0,144($sp)
.L5ef5d54c:
    slt	$a6,$a4,$a0
    beqz	$a6,.L5ef5d55c
    nop
    move	$a4,$a0
.L5ef5d55c:
    beq	$a5,$t8,.L5ef5d544
    nop
    lh	$a0,4($t1)
.L5ef5d568:
    addu	$a0,$a0,$t3
    lh	$t0,6($t1)
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addu	$t0,$t0,$t2
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,6($t1)
    slt	$a7,$t0,$a2
    beqz	$a7,.L5ef5d600
    sh	$a0,4($t1)
    move	$s7,$a5
    move	$a2,$t0
.L5ef5d59c:
    slt	$at,$a0,$a3
.L5ef5d5a0:
    beqz	$at,.L5ef5d614
    slt	$a6,$a4,$a0
    move	$a3,$a0
.L5ef5d5ac:
    lh	$a0,8($t1)
.L5ef5d5b0:
    addiu	$a5,$a5,4
    addu	$a0,$a0,$t3
    lh	$t0,10($t1)
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addu	$t0,$t0,$t2
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,10($t1)
    slt	$v1,$t0,$a2
    beqz	$v1,.L5ef5d624
    sh	$a0,8($t1)
    move	$s7,$a5
    move	$a2,$t0
.L5ef5d5e8:
    addiu	$t1,$t1,8
.L5ef5d5ec:
    slt	$at,$a0,$a3
    beqz	$at,.L5ef5d54c
    addiu	$a5,$a5,4
    b	.L5ef5d55c
    move	$a3,$a0
.L5ef5d600:
    slt	$v1,$s5,$t0
    beqz	$v1,.L5ef5d5a0
    slt	$at,$a0,$a3
    b	.L5ef5d59c
    move	$s5,$t0
.L5ef5d614:
    beqzl	$a6,.L5ef5d5b0
    lh	$a0,8($t1)
    b	.L5ef5d5ac
    move	$a4,$a0
.L5ef5d624:
    slt	$a7,$s5,$t0
    beqzl	$a7,.L5ef5d5ec
    addiu	$t1,$t1,8
    b	.L5ef5d5e8
    move	$s5,$t0
.L5ef5d638:
    ld	$a2,144($sp)
    lw	$a6,nfbWindowPrivateIndex
    lw	$a2,132($a2)
    sll	$a6,$a6,0x2
    addu	$a2,$a2,$a6
    lw	$a2,0($a2)
    li	$at,13
    ld	$t2,40($sp)
    lw	$a2,20($a2)
    lui	$v1,0x4
    addu	$t2,$t2,$v1
    beq	$a2,$at,.L5ef5dbe8
    move	$v0,$a2
    li	$a6,14
    beq	$v0,$a6,.L5ef5dc38
    li	$a7,12
    beq	$v0,$a7,.L5ef5dc10
    ld	$v1,32($sp)
    ori	$a6,$a2,0x1000
    sw	$a6,1324($t2)
    sw	$zero,1236($t2)
    lbu	$at,21($v1)
    lw	$v1,76($v1)
    sd	$v1,24($sp)
    sll	$at,$at,0x3
    sd	$at,8($sp)
.L5ef5d6a0:
    move	$ra,$zero
    move	$a4,$zero
    move	$t1,$zero
    move	$t8,$zero
    move	$a0,$zero
    move	$a1,$zero
    move	$t9,$zero
    move	$a5,$zero
    move	$t3,$zero
    move	$v0,$zero
    sd	$s7,80($sp)
    sd	$s7,88($sp)
    sll	$t0,$s1,0x2
    move	$s1,$s7
    ld	$v1,32($sp)
    lui	$a7,0xff
    ld	$a2,24($sp)
    lw	$a6,64($v1)
    ori	$a7,$a7,0xffff
    and	$a2,$a2,$a7
    sw	$a6,1328($t2)
    sw	$a2,1916($t2)
    sd	$t0,16($sp)
    lbu	$v1,72($v1)
    ld	$at,8($sp)
    move	$t0,$zero
    sw	$v1,1916($t2)
    sw	$at,1916($t2)
    move	$a6,$s7
    lh	$a7,2($s7)
    move	$a2,$zero
    sw	$zero,1220($t2)
    sd	$a7,224($sp)
    b	.L5ef5d780
    move	$s1,$a7
.L5ef5d72c:
    beq	$v0,$a0,.L5ef5d740
    subu	$at,$v0,$a0
    sw	$a0,1916($t2)
    sw	$a3,1916($t2)
    sw	$at,1916($t2)
.L5ef5d740:
    bltzl	$a2,.L5ef5d938
    addu	$a2,$a2,$t9
.L5ef5d748:
    addu	$a2,$a2,$a5
    bltz	$a1,.L5ef5d940
    addu	$v0,$v0,$t0
.L5ef5d754:
    addu	$a1,$a1,$a4
    addu	$a0,$a0,$t1
.L5ef5d75c:
    addiu	$s7,$s7,1
    addiu	$a3,$a3,1
.L5ef5d764:
    ld	$v1,120($sp)
    sra	$v1,$v1,0x1
    bnez	$v1,.L5ef5d990
    subu	$a7,$a0,$v0
.L5ef5d774:
    addu	$s1,$s7,$s1
.L5ef5d778:
    beq	$s5,$s1,.L5ef5da70
    sd	$s1,224($sp)
.L5ef5d780:
    ld	$s7,88($sp)
    lh	$s7,2($s7)
    ld	$at,88($sp)
    bne	$s7,$s1,.L5ef5d820
    ld	$v1,16($sp)
    addu	$v1,$v1,$s0
    move	$a3,$at
    addiu	$at,$at,4
    sd	$at,88($sp)
    sltu	$at,$at,$v1
    bnez	$at,.L5ef5d7b4
    move	$a6,$s0
    sd	$s0,88($sp)
.L5ef5d7b4:
    ld	$s7,88($sp)
    lh	$a7,2($a3)
    lh	$s7,2($s7)
    subu	$a7,$s7,$a7
    beqz	$a7,.L5ef5d820
    sd	$a7,104($sp)
    ld	$at,88($sp)
    lh	$v0,0($a3)
    lh	$at,0($at)
    ld	$v1,104($sp)
    subu	$at,$at,$v0
    div	$zero,$at,$v1
    sll	$a6,$v1,0x1
    sd	$a6,48($sp)
    teq	$v1,$zero,0x7
    ld	$a5,48($sp)
    mflo	$t3
    bltz	$at,.L5ef5dab4
    sd	$at,72($sp)
    addiu	$t0,$t3,1
    multu	$t3,$a5
    ld	$t9,72($sp)
    sll	$t9,$t9,0x1
    mflo	$at
    subu	$t9,$t9,$at
    addiu	$a2,$t9,-1
    subu	$a5,$t9,$a5
.L5ef5d820:
    ld	$a3,80($sp)
    lh	$a3,2($a3)
    ld	$a7,16($sp)
    bne	$a3,$s1,.L5ef5d8d0
    ld	$a6,80($sp)
    move	$a3,$a6
    addiu	$a6,$a6,-4
    sd	$a6,80($sp)
    sltu	$a6,$a6,$s0
    beqz	$a6,.L5ef5d858
    addu	$a7,$a7,$s0
    sd	$a3,96($sp)
    addiu	$a7,$a7,-4
    sd	$a7,80($sp)
.L5ef5d858:
    sd	$a3,96($sp)
    ld	$a3,80($sp)
    ld	$at,96($sp)
    lh	$a3,2($a3)
    lh	$at,2($at)
    subu	$at,$a3,$at
    beqz	$at,.L5ef5d8d0
    sd	$at,112($sp)
    ld	$a0,96($sp)
    ld	$a6,80($sp)
    lh	$a0,0($a0)
    lh	$a6,0($a6)
    ld	$a7,112($sp)
    subu	$a6,$a6,$a0
    div	$zero,$a6,$a7
    sll	$t8,$a7,0x1
    sd	$t8,64($sp)
    teq	$a7,$zero,0x7
    ld	$a4,64($sp)
    mflo	$t8
    bltz	$a6,.L5ef5dae0
    sd	$a6,56($sp)
    addiu	$t1,$t8,1
    multu	$t8,$a4
    ld	$ra,56($sp)
    sll	$ra,$ra,0x1
    mflo	$at
    subu	$ra,$ra,$at
    addiu	$a1,$ra,-1
    subu	$a4,$ra,$a4
.L5ef5d8d0:
    slt	$at,$s7,$a3
    beqzl	$at,.L5ef5d8e0
    move	$s7,$a3
    sd	$s7,200($sp)
.L5ef5d8e0:
    subu	$a3,$s7,$s1
    bltz	$a3,.L5ef5dc60
    li	$at,-1
    blez	$a3,.L5ef5db0c
    sd	$a3,136($sp)
    ld	$a6,136($sp)
    move	$s7,$zero
    move	$a3,$s1
    sd	$a6,120($sp)
    move	$v1,$a6
    andi	$v1,$a6,0x1
    addu	$a6,$a6,$s1
    beqz	$v1,.L5ef5d764
    sd	$a6,176($sp)
    slt	$a6,$v0,$a0
    beqz	$a6,.L5ef5d72c
    subu	$a7,$a0,$v0
    sw	$v0,1916($t2)
    sw	$a3,1916($t2)
    bgez	$a2,.L5ef5d748
    sw	$a7,1916($t2)
    addu	$a2,$a2,$t9
.L5ef5d938:
    bgez	$a1,.L5ef5d754
    addu	$v0,$v0,$t3
.L5ef5d940:
    addu	$a1,$a1,$ra
    b	.L5ef5d75c
    addu	$a0,$a0,$t8
.L5ef5d94c:
    beq	$v0,$a0,.L5ef5d960
    subu	$at,$v0,$a0
    sw	$a0,1916($t2)
    sw	$a3,1916($t2)
    sw	$at,1916($t2)
.L5ef5d960:
    bltzl	$a2,.L5ef5da18
    addu	$a2,$a2,$t9
.L5ef5d968:
    addu	$a2,$a2,$a5
    bltz	$a1,.L5ef5da20
    addu	$v0,$v0,$t0
.L5ef5d974:
    addu	$a1,$a1,$a4
    addu	$a0,$a0,$t1
.L5ef5d97c:
    ld	$v1,176($sp)
    addiu	$a3,$a3,1
    beq	$a3,$v1,.L5ef5d774
    addiu	$s7,$s7,1
    subu	$a7,$a0,$v0
.L5ef5d990:
    slt	$a6,$v0,$a0
    beqz	$a6,.L5ef5d9c4
    addiu	$s7,$s7,1
    sw	$v0,1916($t2)
    sw	$a3,1916($t2)
    bgez	$a2,.L5ef5d9e0
    sw	$a7,1916($t2)
    addu	$a2,$a2,$t9
.L5ef5d9b0:
    bgez	$a1,.L5ef5d9ec
    addu	$v0,$v0,$t3
.L5ef5d9b8:
    addu	$a1,$a1,$ra
    b	.L5ef5d9f4
    addu	$a0,$a0,$t8
.L5ef5d9c4:
    beq	$v0,$a0,.L5ef5d9d8
    subu	$at,$v0,$a0
    sw	$a0,1916($t2)
    sw	$a3,1916($t2)
    sw	$at,1916($t2)
.L5ef5d9d8:
    bltzl	$a2,.L5ef5d9b0
    addu	$a2,$a2,$t9
.L5ef5d9e0:
    addu	$a2,$a2,$a5
    bltz	$a1,.L5ef5d9b8
    addu	$v0,$v0,$t0
.L5ef5d9ec:
    addu	$a1,$a1,$a4
    addu	$a0,$a0,$t1
.L5ef5d9f4:
    slt	$v1,$v0,$a0
    beqz	$v1,.L5ef5d94c
    addiu	$a3,$a3,1
    subu	$a6,$a0,$v0
    sw	$v0,1916($t2)
    sw	$a3,1916($t2)
    bgez	$a2,.L5ef5d968
    sw	$a6,1916($t2)
    addu	$a2,$a2,$t9
.L5ef5da18:
    bgez	$a1,.L5ef5d974
    addu	$v0,$v0,$t3
.L5ef5da20:
    addu	$a1,$a1,$ra
    b	.L5ef5d97c
    addu	$a0,$a0,$t8
.L5ef5da2c:
    sd	$v0,144($sp)
    sd	$a1,128($sp)
    move	$a0,$v0
    sd	$a3,152($sp)
    # lw $t9, -32308($gp)
    move	$a2,$a3
    sd	$ra,192($sp)
    bal	expFillTriangle
    move	$a3,$s0
    beqz	$v0,.L5ef5db18
    ld	$ra,192($sp)
    li	$v0,1
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5da70:
    li	$a7,-1
    li	$at,1
    li	$v1,1024
    li	$a6,1280
    sw	$a6,1916($t2)
    sw	$v1,1916($t2)
    sw	$at,1916($t2)
    sw	$a7,1960($t2)
.L5ef5da90:
    li	$v0,1
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    ld	$ra,192($sp)
    ld	$s5,208($sp)
    ld	$s7,216($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5dab4:
    addiu	$t0,$t3,-1
    ld	$a5,48($sp)
    multu	$t3,$a5
    ld	$t9,72($sp)
    negu	$t9,$t9
    sll	$t9,$t9,0x1
    mflo	$at
    addu	$t9,$t9,$at
    subu	$a5,$t9,$a5
    b	.L5ef5d820
    move	$a2,$a5
.L5ef5dae0:
    addiu	$t1,$t8,-1
    ld	$a4,64($sp)
    multu	$t8,$a4
    ld	$ra,56($sp)
    negu	$ra,$ra
    sll	$ra,$ra,0x1
    mflo	$at
    addu	$ra,$ra,$at
    subu	$a4,$ra,$a4
    b	.L5ef5d8d0
    move	$a1,$a4
.L5ef5db0c:
    move	$s7,$zero
    b	.L5ef5d778
    addu	$s1,$s7,$s1
.L5ef5db18:
    ld	$a2,144($sp)
    lh	$v0,0($s0)
    ld	$at,152($sp)
    lh	$a3,8($a2)
    lh	$a2,10($a2)
    beqz	$at,.L5ef5dc80
    addu	$v0,$v0,$a3
    lh	$a6,4($s0)
    dsll32	$a7,$v0,0x10
    dsra32	$a7,$a7,0x10
    sh	$a7,0($s0)
    addu	$a6,$a6,$a7
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    lh	$at,2($s0)
    sh	$a6,4($s0)
    lh	$v1,8($s0)
    addu	$at,$at,$a2
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    sh	$at,2($s0)
    lh	$a7,6($s0)
    addu	$v1,$v1,$a6
    sh	$v1,8($s0)
    addu	$a7,$a7,$at
    dsll32	$a7,$a7,0x10
    lh	$a6,10($s0)
    dsra32	$a7,$a7,0x10
    sh	$a7,6($s0)
    addu	$a6,$a6,$a7
    sh	$a6,10($s0)
.L5ef5db94:
    ld	$a0,144($sp)
    # lw $t9, -30484($gp)
    ld	$a1,128($sp)
    move	$a2,$s1
    jal	miFillConvexPoly
    move	$a3,$s0
    ld	$gp,184($sp)
    ld	$ra,192($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L5ef5dbc4:
    slt	$at,$s5,$t0
    beqz	$at,.L5ef5d524
    slt	$at,$a0,$a3
    b	.L5ef5d520
    move	$s5,$t0
.L5ef5dbd8:
    beqzl	$v1,.L5ef5d534
    addiu	$a5,$a5,4
    b	.L5ef5d530
    move	$a4,$a0
.L5ef5dbe8:
    ld	$a6,32($sp)
    li	$a7,4107
    sw	$a7,1324($t2)
    sd	$zero,24($sp)
    lw	$a6,76($a6)
    li	$a7,1
    sd	$a7,8($sp)
    andi	$a6,$a6,0x3
    b	.L5ef5d6a0
    sw	$a6,1236($t2)
.L5ef5dc10:
    ld	$at,32($sp)
    li	$v1,4104
    sw	$v1,1324($t2)
    sd	$zero,24($sp)
    lw	$at,76($at)
    li	$v1,1
    sd	$v1,8($sp)
    andi	$at,$at,0xf
    b	.L5ef5d6a0
    sw	$at,1236($t2)
.L5ef5dc38:
    ld	$a6,32($sp)
    li	$a7,4107
    sw	$a7,1324($t2)
    sd	$zero,24($sp)
    lw	$a6,76($a6)
    li	$a7,9
    sd	$a7,8($sp)
    andi	$a6,$a6,0xc
    b	.L5ef5d6a0
    sw	$a6,1236($t2)
.L5ef5dc60:
    li	$v1,1
    li	$a6,1024
    li	$a7,1280
    sw	$a7,1916($t2)
    sw	$a6,1916($t2)
    sw	$v1,1916($t2)
    b	.L5ef5da90
    sw	$at,1960($t2)
.L5ef5dc80:
    lh	$at,10($s0)
    sh	$v0,0($s0)
    addu	$at,$at,$a2
    lh	$a7,8($s0)
    sh	$at,10($s0)
    lh	$a6,6($s0)
    addu	$a7,$a7,$a3
    sh	$a7,8($s0)
    addu	$a6,$a6,$a2
    lh	$v1,4($s0)
    sh	$a6,6($s0)
    lh	$at,2($s0)
    addu	$v1,$v1,$a3
    sh	$v1,4($s0)
    addu	$at,$at,$a2
    b	.L5ef5db94
    sh	$at,2($s0)
.end expFillPolygon

.globl expLineSS
.ent expLineSS
expLineSS:
    lui	$t1,0x16
    addiu	$t1,$t1,-24220
    addu	$at,$t9,$t1
    lw	$t0,nfbGCPrivateIndex
    lw	$a7,76($a1)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    lw	$t1,8($a7)
    lw	$t0,8($t1)
    addiu	$sp,$sp,-832
    beqz	$t0,.L5ef65268
    sd	$a2,608($sp)
    beqz	$t0,.L5ef65270
    addiu	$t2,$t0,8
.L5ef6449c:
    lw	$a2,4($t0)
.L5ef644a0:
    li	$v0,1
    beql	$a2,$v0,.L5ef652cc
    move	$a2,$a7
    beqz	$a2,.L5ef651f0
    move	$a2,$a7
    lw	$t3,nfbWindowPrivateIndex
    lw	$t2,8($a7)
    lw	$t1,132($a0)
    sll	$t3,$t3,0x2
    lw	$a6,0($a1)
    addu	$t1,$t1,$t3
    lw	$t0,expScreenPrivateIndex
    lw	$a6,436($a6)
    lw	$t1,0($t1)
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$t0
    lw	$a6,0($a6)
    li	$v1,13
    lw	$t1,20($t1)
    lw	$a6,0($a6)
    lui	$a5,0x4
    move	$t3,$t1
    sd	$a6,624($sp)
    addu	$a5,$a5,$a6
    beq	$t1,$v1,.L5ef65b58
    sd	$a5,648($sp)
    li	$v0,14
    beq	$t3,$v0,.L5ef65ba0
    li	$v1,12
    beq	$t3,$v1,.L5ef65b7c
    ld	$t3,648($sp)
    ori	$v0,$t1,0x1000
    sw	$v0,1324($t3)
    sw	$zero,1236($t3)
    lbu	$a7,21($a2)
    lw	$t3,76($a2)
    sll	$a7,$a7,0x3
.L5ef64534:
    lui	$v0,0xff
    ld	$a5,648($sp)
    lw	$v1,64($a2)
    ori	$v0,$v0,0xffff
    and	$v0,$t3,$v0
    sw	$v1,1328($a5)
    sw	$v0,1916($a5)
    lbu	$a6,72($a2)
    sw	$a6,1916($a5)
    sw	$a7,1916($a5)
    lw	$v1,0($a1)
    lw	$v1,436($v1)
    addu	$v1,$v1,$t0
    lw	$v1,0($v1)
    lw	$v1,8($v1)
    lbu	$v1,54($v1)
    slti	$v1,$v1,5
    beqz	$v1,.L5ef6458c
    ld	$v1,648($sp)
    li	$a2,301
    b	.L5ef64598
    sw	$zero,1204($v1)
.L5ef6458c:
    ld	$a5,648($sp)
    li	$a2,355
    sw	$zero,1420($a5)
.L5ef64598:
    lw	$a7,8($t2)
    beqz	$a7,.L5ef652ac
    addiu	$a6,$a7,8
    beqz	$a7,.L5ef652b8
    sd	$a6,600($sp)
.L5ef645ac:
    lw	$v0,4($a7)
    sd	$v0,640($sp)
.L5ef645b4:
    slti	$v1,$a3,2
    lh	$t9,0($a4)
    lh	$a5,10($a0)
    lh	$v0,8($a0)
    lh	$t2,2($a4)
    sd	$a5,400($sp)
    sd	$v0,408($sp)
    addu	$t2,$t2,$a5
    bnez	$v1,.L5ef652c4
    addu	$t9,$t9,$v0
    sd	$a4,760($sp)
    sd	$a1,752($sp)
    sd	$s3,384($sp)
    sd	$s8,744($sp)
    sd	$s4,736($sp)
    sd	$s5,728($sp)
    sd	$ra,720($sp)
    sd	$s0,712($sp)
    sd	$s1,704($sp)
    sd	$s6,688($sp)
    sd	$zero,392($sp)
    sd	$gp,776($sp)
    lw	$gp,12($sp)
    sd	$s2,696($sp)
    lw	$s2,8($sp)
    sd	$s7,768($sp)
    lw	$s7,4($sp)
    move	$v1,$a4
    sd	$a4,376($sp)
    sll	$v0,$a2,0x2
    sd	$v0,616($sp)
    lw	$a5,0($sp)
    addiu	$a6,$a3,-1
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a4
    sd	$a5,656($sp)
    b	.L5ef64680
    sd	$a6,416($sp)
.L5ef6464c:
    ld	$a3,376($sp)
.L5ef64650:
    ld	$a5,400($sp)
    lh	$a3,6($a3)
    addu	$a3,$a3,$a5
.L5ef6465c:
    move	$t2,$a3
.L5ef64660:
    ld	$v0,392($sp)
.L5ef64664:
    ld	$a5,376($sp)
    ld	$a6,416($sp)
    addiu	$v0,$v0,1
    addiu	$a5,$a5,4
    sd	$a5,376($sp)
    beq	$a5,$a6,.L5ef650cc
    sd	$v0,392($sp)
.L5ef64680:
    ld	$s0,640($sp)
    ld	$a0,600($sp)
    ld	$v1,608($sp)
    move	$t3,$t9
    li	$a5,1
    beq	$v1,$a5,.L5ef64d74
    move	$t1,$t2
.L5ef6469c:
    ld	$a2,376($sp)
    ld	$a5,400($sp)
    lh	$a3,6($a2)
    move	$ra,$zero
    lh	$a2,4($a2)
    addu	$a3,$a3,$a5
    ld	$a5,408($sp)
    move	$t2,$a3
    move	$a6,$t2
    addu	$a2,$a2,$a5
    bne	$a2,$t3,.L5ef64738
    move	$t9,$a2
    slt	$a5,$t2,$t1
    beqz	$a5,.L5ef646e4
    ld	$v0,640($sp)
    addiu	$t2,$t1,1
    addiu	$t1,$a6,1
    ld	$v0,640($sp)
.L5ef646e4:
    beqz	$v0,.L5ef64718
    nop
    lh	$v1,6($a0)
    slt	$v1,$t1,$v1
    bnez	$v1,.L5ef64718
    nop
    addiu	$s0,$s0,-1
.L5ef64700:
    beqz	$s0,.L5ef6465c
    addiu	$a0,$a0,8
    lh	$a5,6($a0)
    slt	$a5,$t1,$a5
    beqzl	$a5,.L5ef64700
    addiu	$s0,$s0,-1
.L5ef64718:
    beqzl	$s0,.L5ef64660
    move	$t2,$a3
    lh	$t0,2($a0)
    slt	$a6,$t2,$t0
    bnezl	$a6,.L5ef64660
    move	$t2,$a3
    b	.L5ef647fc
    lh	$v0,0($a0)
.L5ef64738:
    move	$v1,$t9
    subu	$a5,$t2,$t1
    bne	$t2,$t1,.L5ef64844
    sll	$a6,$a5,0x1
    slt	$v0,$t9,$t3
    beqz	$v0,.L5ef6475c
    nop
    addiu	$t9,$t3,1
    addiu	$t3,$v1,1
.L5ef6475c:
    beqz	$s0,.L5ef64d2c
    nop
    lh	$a5,6($a0)
    slt	$a5,$t1,$a5
    bnez	$a5,.L5ef64790
    nop
    addiu	$s0,$s0,-1
.L5ef64778:
    beqz	$s0,.L5ef64d2c
    addiu	$a0,$a0,8
    lh	$a6,6($a0)
    slt	$a6,$t1,$a6
    beqzl	$a6,.L5ef64778
    addiu	$s0,$s0,-1
.L5ef64790:
    beqz	$s0,.L5ef64d2c
    nop
    lh	$t0,2($a0)
    slt	$v0,$t1,$t0
    bnez	$v0,.L5ef64d2c
    move	$a3,$t0
    beqz	$s0,.L5ef64d2c
    nop
    bne	$t0,$a3,.L5ef64d2c
    nop
    b	.L5ef64f88
    lh	$a2,4($a0)
.L5ef647c0:
    move	$a3,$a7
.L5ef647c4:
    slt	$v1,$a3,$a2
    bnez	$v1,.L5ef647e0
    ld	$a5,648($sp)
    sw	$t3,1916($a5)
    sw	$a2,1916($a5)
    sw	$t9,1916($a5)
    sw	$a3,1916($a5)
.L5ef647e0:
    beqz	$s0,.L5ef6464c
    addiu	$a0,$a0,8
    lh	$t0,2($a0)
    slt	$a6,$t2,$t0
    bnez	$a6,.L5ef64650
    ld	$a3,376($sp)
    lh	$v0,0($a0)
.L5ef647fc:
    slt	$a5,$t0,$t1
    move	$a2,$t0
    slt	$v0,$t3,$v0
    bnez	$v0,.L5ef647e0
    addiu	$s0,$s0,-1
    lh	$v1,4($a0)
    slt	$v1,$t3,$v1
    beqz	$v1,.L5ef647e0
    nop
    beqz	$a5,.L5ef6482c
    nop
    move	$a2,$t1
.L5ef6482c:
    lh	$a7,6($a0)
    slt	$a6,$t2,$a7
    beqz	$a6,.L5ef647c0
    move	$a3,$t2
    b	.L5ef647c4
    nop
.L5ef64844:
    beqz	$s0,.L5ef64664
    ld	$v0,392($sp)
    sd	$a5,464($sp)
    sra	$v0,$a5,0x1f
    and	$a6,$a6,$v0
    subu	$a5,$a5,$a6
    sd	$a5,568($sp)
    sll	$v0,$a5,0x1
    sd	$v0,544($sp)
    subu	$v0,$t9,$t3
    sd	$v0,456($sp)
    sll	$v1,$a5,0x1
    sd	$v1,592($sp)
    sra	$a6,$v0,0x1f
    sll	$v1,$v0,0x1
    and	$v1,$v1,$a6
    subu	$v0,$v0,$v1
    sd	$v0,424($sp)
    slt	$a5,$a5,$v0
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x1
    sd	$a5,560($sp)
    sd	$v1,632($sp)
    b	.L5ef648e8
    sd	$v0,552($sp)
.L5ef648a8:
    slt	$v1,$t2,$v1
    bnez	$v1,.L5ef648bc
    or	$a5,$a3,$a7
    ori	$a7,$a7,0x1
.L5ef648b8:
    or	$a5,$a3,$a7
.L5ef648bc:
    beqz	$a5,.L5ef64d88
    move	$s1,$t9
    move	$a1,$t0
    move	$s4,$t2
    and	$a6,$a3,$a7
    beqz	$a6,.L5ef64978
    move	$s3,$t2
    addiu	$a0,$a0,8
.L5ef648dc:
    addiu	$ra,$ra,1
.L5ef648e0:
    beq	$ra,$s0,.L5ef64664
    ld	$v0,392($sp)
.L5ef648e8:
    lh	$t8,0($a0)
    move	$a3,$zero
    slt	$v0,$t3,$t8
    beqz	$v0,.L5ef64938
    move	$a7,$zero
    li	$a3,8
.L5ef64900:
    lh	$t0,2($a0)
.L5ef64904:
    slt	$a5,$t9,$t8
    slt	$v1,$t1,$t0
    beqzl	$v1,.L5ef64950
    lh	$v1,6($a0)
    ori	$a3,$a3,0x2
.L5ef64918:
    beqzl	$a5,.L5ef64964
    lh	$a5,4($a0)
    li	$a7,8
.L5ef64924:
    slt	$a6,$t2,$t0
.L5ef64928:
    beqzl	$a6,.L5ef648a8
    lh	$v1,6($a0)
    b	.L5ef648b8
    ori	$a7,$a7,0x2
.L5ef64938:
    lh	$v0,4($a0)
    slt	$v0,$t3,$v0
    bnezl	$v0,.L5ef64904
    lh	$t0,2($a0)
    b	.L5ef64900
    li	$a3,4
.L5ef64950:
    slt	$v1,$t1,$v1
    bnez	$v1,.L5ef64918
    nop
    b	.L5ef64918
    ori	$a3,$a3,0x1
.L5ef64964:
    slt	$a5,$t9,$a5
    bnez	$a5,.L5ef64928
    slt	$a6,$t2,$t0
    b	.L5ef64924
    li	$a7,4
.L5ef64978:
    move	$s4,$t1
    move	$a1,$zero
    ld	$a6,456($sp)
    move	$s1,$a3
    move	$a2,$zero
    bltz	$a6,.L5ef64bcc
    ld	$v0,464($sp)
    bltz	$v0,.L5ef64bd8
.L5ef64998:
    ld	$v1,560($sp)
    beqz	$v1,.L5ef64be4
.L5ef649a0:
    ld	$a4,552($sp)
    sd	$zero,680($sp)
    ld	$a5,544($sp)
    sd	$a4,672($sp)
    ld	$a4,424($sp)
    sd	$a5,664($sp)
.L5ef649b8:
    move	$s3,$t3
    move	$s8,$t8
    sd	$t0,440($sp)
    sd	$t2,432($sp)
    sd	$t2,520($sp)
    sd	$t9,536($sp)
    sd	$t9,528($sp)
    move	$a5,$t1
    sd	$t1,504($sp)
    sd	$t3,448($sp)
    sd	$zero,584($sp)
    andi	$s5,$a2,0x2
    andi	$v1,$zero,0x1
    andi	$s6,$a2,0x1
    sd	$s6,496($sp)
    move	$s6,$zero
    sd	$v1,488($sp)
    move	$v1,$t3
    sd	$s5,512($sp)
    move	$s5,$a7
    move	$a6,$t9
    lh	$a6,4($a0)
    andi	$v0,$a2,0x4
    sd	$v0,576($sp)
    lh	$v0,6($a0)
    addiu	$a6,$a6,-1
    sd	$a6,472($sp)
    addiu	$v0,$v0,-1
    sd	$v0,480($sp)
.L5ef64a2c:
    and	$a5,$s1,$s5
.L5ef64a30:
    beqz	$a5,.L5ef64a48
    li	$a3,-1
    move	$s6,$s1
    move	$a1,$s5
.L5ef64a40:
    b	.L5ef648dc
    addiu	$a0,$a0,8
.L5ef64a48:
    or	$a6,$s1,$s5
    beqz	$a6,.L5ef64ddc
    ld	$a5,536($sp)
    beqz	$s1,.L5ef64c50
    ld	$v0,432($sp)
.L5ef64a5c:
    andi	$v0,$s1,0x8
    beqz	$v0,.L5ef64cd0
    or	$s6,$s1,$s6
    ld	$s2,448($sp)
    ld	$a6,496($sp)
    li	$v1,32767
    subu	$s2,$s8,$s2
    sltu	$v1,$v1,$s2
    bnez	$v1,.L5ef64aac
    ld	$gp,512($sp)
    ld	$v0,496($sp)
    ld	$a5,584($sp)
    beqz	$v0,.L5ef64da0
    ld	$v1,584($sp)
    beqz	$v1,.L5ef64dc4
    li	$a3,52
    move	$s7,$a3
.L5ef64aa0:
    ld	$a5,504($sp)
    b	.L5ef64ad4
    sd	$a5,656($sp)
.L5ef64aac:
    ld	$s2,528($sp)
    ld	$v1,520($sp)
    beqz	$a6,.L5ef64db0
    subu	$s2,$s2,$s8
    ld	$v0,584($sp)
    beqz	$v0,.L5ef64dd0
    li	$a3,24
    move	$s7,$a3
.L5ef64acc:
    sltiu	$gp,$gp,1
    sd	$v1,656($sp)
.L5ef64ad4:
    move	$s3,$s8
.L5ef64ad8:
    ld	$a5,584($sp)
    sll	$a7,$s2,0x1
    beqz	$a5,.L5ef64aec
    andi	$t0,$s7,0x1
    sltiu	$gp,$gp,1
.L5ef64aec:
    beqz	$t0,.L5ef64c08
    ld	$a6,424($sp)
    multu	$a6,$a7
    mflo	$a3
.L5ef64b04:
    andi	$a7,$s7,0x2
    beqz	$a7,.L5ef64c1c
    andi	$a7,$s7,0x4
    beqz	$a7,.L5ef64d34
    ld	$v0,424($sp)
    subu	$a3,$a3,$v0
.L5ef64b1c:
    andi	$a6,$s7,0x10
    andi	$v1,$s7,0x8
    beqz	$v1,.L5ef64c2c
    andi	$v0,$s7,0x20
    ld	$a5,488($sp)
    addu	$a3,$a3,$a5
    addiu	$a3,$a3,-1
.L5ef64b38:
    ld	$a5,592($sp)
    beqz	$a6,.L5ef64c38
    ld	$s2,632($sp)
    divu	$zero,$a3,$s2
    teq	$s2,$zero,0x7
    mflo	$s2
.L5ef64b58:
    beqz	$v0,.L5ef64b64
    ld	$a3,656($sp)
    addiu	$s2,$s2,1
.L5ef64b64:
    beqz	$gp,.L5ef64b70
    move	$s1,$zero
    negu	$s2,$s2
.L5ef64b70:
    ld	$v0,440($sp)
    beqz	$t0,.L5ef64c48
    addu	$a3,$a3,$s2
    move	$s3,$a3
.L5ef64b80:
    slt	$a5,$s3,$s8
    beqz	$a5,.L5ef64b94
    ld	$a6,472($sp)
    li	$s1,8
    ld	$a6,472($sp)
.L5ef64b94:
    slt	$v0,$s4,$v0
    ld	$v1,480($sp)
    slt	$a6,$a6,$s3
    beqz	$a6,.L5ef64bac
    nop
    ori	$s1,$s1,0x4
.L5ef64bac:
    beqzl	$v0,.L5ef64bbc
    slt	$v1,$v1,$s4
    ori	$s1,$s1,0x2
    slt	$v1,$v1,$s4
.L5ef64bbc:
    beqz	$v1,.L5ef64a30
    and	$a5,$s1,$s5
    b	.L5ef64a2c
    ori	$s1,$s1,0x1
.L5ef64bcc:
    ld	$a5,464($sp)
    bgez	$a5,.L5ef64998
    li	$a2,4
.L5ef64bd8:
    ld	$a6,560($sp)
    bnez	$a6,.L5ef649a0
    ori	$a2,$a2,0x2
.L5ef64be4:
    ori	$a2,$a2,0x1
    ld	$a4,568($sp)
    li	$v0,1
    ld	$a5,544($sp)
    sd	$v0,680($sp)
    ld	$v1,552($sp)
    sd	$a5,672($sp)
    b	.L5ef649b8
    sd	$v1,664($sp)
.L5ef64c08:
    ld	$a6,568($sp)
    multu	$a6,$a7
    mflo	$a3
    b	.L5ef64b04
    nop
.L5ef64c1c:
    beqz	$a7,.L5ef64fd4
    ld	$v0,568($sp)
    b	.L5ef64b1c
    subu	$a3,$a3,$v0
.L5ef64c2c:
    ld	$v1,488($sp)
    b	.L5ef64b38
    subu	$a3,$a3,$v1
.L5ef64c38:
    divu	$zero,$a3,$a5
    mflo	$s2
    b	.L5ef64b58
    teq	$a5,$zero,0x7
.L5ef64c48:
    b	.L5ef64b80
    move	$s4,$a3
.L5ef64c50:
    move	$a6,$s3
    move	$v1,$s4
    move	$s4,$v0
    sd	$a6,536($sp)
    move	$s3,$a5
    move	$a5,$a6
    ld	$a6,448($sp)
    sd	$v1,432($sp)
    move	$v0,$v1
    ld	$v1,528($sp)
    move	$a5,$a6
    sd	$v1,448($sp)
    move	$a6,$v1
    move	$v1,$a5
    move	$v1,$s1
    move	$s1,$s5
    ld	$v0,504($sp)
    sd	$a5,528($sp)
    ld	$a5,520($sp)
    move	$s5,$v1
    move	$a6,$v0
    move	$v0,$a5
    move	$v0,$s6
    sd	$a6,520($sp)
    sd	$a5,504($sp)
    move	$a5,$a6
    ld	$a6,584($sp)
    move	$s6,$a1
    move	$a1,$v0
    sltiu	$a6,$a6,1
    b	.L5ef64a5c
    sd	$a6,584($sp)
.L5ef64cd0:
    andi	$v0,$s1,0x2
    beqz	$v0,.L5ef64fe0
    ld	$v0,504($sp)
    ld	$s2,440($sp)
    ld	$a6,496($sp)
    li	$v1,32767
    subu	$s2,$s2,$v0
    sltu	$v1,$v1,$s2
    bnez	$v1,.L5ef64d40
    ld	$gp,576($sp)
    ld	$v1,496($sp)
    ld	$a5,584($sp)
    beqz	$v1,.L5ef6508c
    ld	$a6,448($sp)
    beqz	$a5,.L5ef650b4
    li	$a3,9
.L5ef64d10:
    move	$s7,$a3
.L5ef64d14:
    b	.L5ef64d6c
    sd	$a6,656($sp)
    ld	$a2,376($sp)
.L5ef64d20:
    ld	$a5,408($sp)
    lh	$a2,4($a2)
    addu	$a2,$a2,$a5
.L5ef64d2c:
    b	.L5ef64660
    move	$t9,$a2
.L5ef64d34:
    ld	$a5,424($sp)
    b	.L5ef64b1c
    addu	$a3,$a5,$a3
.L5ef64d40:
    ld	$v0,440($sp)
    ld	$s2,520($sp)
    ld	$a5,528($sp)
    beqz	$a6,.L5ef650a0
    subu	$s2,$s2,$v0
    ld	$v1,584($sp)
    beqz	$v1,.L5ef650c0
    li	$a3,1
.L5ef64d60:
    move	$s7,$a3
.L5ef64d64:
    sltiu	$gp,$gp,1
    sd	$a5,656($sp)
.L5ef64d6c:
    b	.L5ef64ad8
    ld	$s4,440($sp)
.L5ef64d74:
    move	$v0,$t9
    sd	$t9,408($sp)
    move	$a6,$t2
    b	.L5ef6469c
    sd	$t2,400($sp)
.L5ef64d88:
    ld	$v1,648($sp)
    sw	$t3,1916($v1)
    sw	$t1,1916($v1)
    sw	$t9,1916($v1)
    b	.L5ef64660
    sw	$t2,1916($v1)
.L5ef64da0:
    beqz	$a5,.L5ef65074
    li	$a3,26
.L5ef64da8:
    b	.L5ef64aa0
    move	$s7,$a3
.L5ef64db0:
    ld	$a6,584($sp)
    beqz	$a6,.L5ef65080
    li	$a3,18
.L5ef64dbc:
    b	.L5ef64acc
    move	$s7,$a3
.L5ef64dc4:
    li	$a3,60
    b	.L5ef64aa0
    move	$s7,$a3
.L5ef64dd0:
    li	$a3,16
    b	.L5ef64acc
    move	$s7,$a3
.L5ef64ddc:
    ld	$v0,584($sp)
    ld	$a5,432($sp)
    move	$v1,$s3
    beqz	$v0,.L5ef64e1c
    li	$a3,1
    move	$a6,$s4
    move	$s4,$a5
    ld	$v0,536($sp)
    sd	$v1,536($sp)
    sd	$a6,432($sp)
    move	$a5,$a6
    move	$s3,$v0
    move	$v0,$v1
    move	$v1,$s6
    move	$s6,$a1
    move	$a1,$v1
.L5ef64e1c:
    li	$a5,-1
    beq	$a3,$a5,.L5ef64a40
    sltu	$v0,$zero,$a1
    ld	$a6,680($sp)
    beqz	$a6,.L5ef651f8
    ld	$a3,432($sp)
    ld	$a7,432($sp)
    subu	$a7,$a7,$s4
    blez	$a7,.L5ef64e48
    subu	$a3,$s4,$a3
    move	$a3,$a7
.L5ef64e48:
    move	$a7,$a3
.L5ef64e4c:
    addu	$a7,$v0,$a7
    beqzl	$a7,.L5ef64f00
    addiu	$a0,$a0,8
    beqz	$s6,.L5ef64ea4
    subu	$t0,$s3,$t3
    blez	$t0,.L5ef64f40
    move	$a3,$t0
.L5ef64e68:
    subu	$t8,$s4,$t1
    blez	$t8,.L5ef64f08
    ld	$v1,680($sp)
    beqz	$v1,.L5ef64f14
    move	$t0,$t8
.L5ef64e7c:
    ld	$v0,664($sp)
    ld	$v1,672($sp)
    mult	$a3,$v1
    mflo	$a5
    mult	$t0,$v0
    mflo	$a6
    subu	$a5,$a5,$a6
    addu	$a4,$a5,$a4
.L5ef64ea4:
    ld	$v0,624($sp)
    ld	$a5,616($sp)
    lui	$a6,0x4
    addu	$a5,$a5,$v0
    addu	$a5,$a5,$a6
    ld	$a6,648($sp)
    ld	$v1,456($sp)
    ld	$v0,464($sp)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1960($a6)
    sw	$zero,1228($a6)
    sw	$s3,1916($a6)
    sw	$s4,1916($a6)
    sw	$a4,1916($a6)
    sw	$v1,1916($a6)
    sw	$v0,1916($a6)
    sw	$a7,1916($a6)
    sw	$zero,1960($a6)
    sw	$zero,0($a5)
    addiu	$a0,$a0,8
.L5ef64f00:
    b	.L5ef648e0
    addiu	$ra,$ra,1
.L5ef64f08:
    ld	$v1,680($sp)
    bnez	$v1,.L5ef64e7c
    subu	$t0,$t1,$s4
.L5ef64f14:
    ld	$v1,672($sp)
    mult	$t0,$v1
    ld	$v0,664($sp)
    mflo	$a5
    mult	$a3,$v0
    mflo	$a6
    subu	$a5,$a5,$a6
    b	.L5ef64ea4
    addu	$a4,$a5,$a4
.L5ef64f40:
    subu	$a3,$t3,$s3
    b	.L5ef64e68
    nop
.L5ef64f4c:
    slt	$a5,$t0,$a7
    bnezl	$a5,.L5ef64f70
    addiu	$a0,$a0,8
    ld	$a6,648($sp)
    sw	$a7,1916($a6)
    sw	$t1,1916($a6)
    sw	$t0,1916($a6)
    sw	$t2,1916($a6)
    addiu	$a0,$a0,8
.L5ef64f70:
    beqz	$s0,.L5ef64d20
    ld	$a2,376($sp)
    lh	$v0,2($a0)
    bne	$v0,$a3,.L5ef64d20
    ld	$a2,376($sp)
    lh	$a2,4($a0)
.L5ef64f88:
    move	$a7,$t3
    slt	$v1,$t3,$a2
    bnez	$v1,.L5ef64fa4
    move	$t0,$t9
    addiu	$a0,$a0,8
    b	.L5ef64f70
    addiu	$s0,$s0,-1
.L5ef64fa4:
    lh	$t8,0($a0)
    slt	$a5,$t8,$t9
    beqz	$a5,.L5ef65060
    addiu	$s0,$s0,-1
    slt	$a6,$t8,$t3
    bnez	$a6,.L5ef64fc4
    slt	$v0,$t9,$a2
    move	$a7,$t8
.L5ef64fc4:
    beqzl	$v0,.L5ef64f4c
    move	$t0,$a2
    b	.L5ef64f4c
    nop
.L5ef64fd4:
    ld	$v1,568($sp)
    b	.L5ef64b1c
    addu	$a3,$v1,$a3
.L5ef64fe0:
    andi	$a5,$s1,0x4
    beqz	$a5,.L5ef65218
    ld	$v0,472($sp)
    ld	$s2,448($sp)
    li	$a6,32767
    subu	$s2,$s2,$v0
    sltu	$a6,$a6,$s2
    bnez	$a6,.L5ef65028
    ld	$gp,512($sp)
    ld	$v1,496($sp)
    ld	$a5,584($sp)
    beqz	$v1,.L5ef654c0
    ld	$a6,504($sp)
    beqz	$a5,.L5ef65b40
    li	$a3,52
    move	$s7,$a3
.L5ef65020:
    b	.L5ef65058
    sd	$a6,656($sp)
.L5ef65028:
    ld	$v0,528($sp)
    ld	$s2,472($sp)
    subu	$s2,$s2,$v0
    ld	$v0,496($sp)
    sltiu	$gp,$gp,1
    beqz	$v0,.L5ef654d4
    ld	$a5,520($sp)
    ld	$v1,584($sp)
    beqz	$v1,.L5ef65b4c
    li	$a3,24
    move	$s7,$a3
.L5ef65054:
    sd	$a5,656($sp)
.L5ef65058:
    b	.L5ef64ad8
    ld	$s3,472($sp)
.L5ef65060:
    ld	$a2,376($sp)
    ld	$a5,408($sp)
    lh	$a2,4($a2)
    b	.L5ef64d2c
    addu	$a2,$a2,$a5
.L5ef65074:
    li	$a3,18
    b	.L5ef64da8
    nop
.L5ef65080:
    li	$a3,26
    b	.L5ef64dbc
    nop
.L5ef6508c:
    ld	$a5,584($sp)
    beqz	$a5,.L5ef654a8
    li	$a3,39
.L5ef65098:
    b	.L5ef64d14
    move	$s7,$a3
.L5ef650a0:
    ld	$a6,584($sp)
    beqz	$a6,.L5ef654b4
    li	$a3,11
.L5ef650ac:
    b	.L5ef64d64
    move	$s7,$a3
.L5ef650b4:
    li	$a3,1
    b	.L5ef64d10
    nop
.L5ef650c0:
    li	$a3,9
    b	.L5ef64d60
    nop
.L5ef650cc:
    ld	$s6,688($sp)
    ld	$s2,696($sp)
    ld	$s1,704($sp)
    ld	$gp,776($sp)
    ld	$s0,712($sp)
    ld	$ra,720($sp)
    ld	$s5,728($sp)
    ld	$s4,736($sp)
    ld	$s8,744($sp)
    ld	$s3,384($sp)
    ld	$s7,768($sp)
    ld	$a1,752($sp)
    ld	$a4,760($sp)
.L5ef65100:
    lw	$v0,16($a1)
    lui	$v1,0x3fff
    ori	$v1,$v1,0xffff
    and	$v0,$v0,$v1
    srl	$v0,$v0,0x1c
    beqz	$v0,.L5ef651d8
    ld	$a5,392($sp)
    lh	$a6,0($a4)
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a4
    sd	$a5,376($sp)
    lh	$a5,0($a5)
    bne	$a5,$a6,.L5ef65154
    ld	$a6,376($sp)
    lh	$v0,2($a4)
    lh	$a6,2($a6)
    bne	$a6,$v0,.L5ef65154
    ld	$v0,392($sp)
    li	$v1,1
    bne	$v0,$v1,.L5ef651dc
    ld	$v1,648($sp)
.L5ef65154:
    ld	$a5,640($sp)
    beqz	$a5,.L5ef651d8
    ld	$a1,600($sp)
    ld	$a5,640($sp)
    move	$a0,$a1
    sll	$a5,$a5,0x3
    b	.L5ef65180
    addu	$a1,$a1,$a5
    addiu	$a0,$a0,8
.L5ef65178:
    beq	$a0,$a1,.L5ef651dc
    ld	$v1,648($sp)
.L5ef65180:
    lh	$a6,0($a0)
    slt	$a6,$t9,$a6
    bnezl	$a6,.L5ef65178
    addiu	$a0,$a0,8
    lh	$v0,2($a0)
    slt	$v0,$t2,$v0
    bnezl	$v0,.L5ef65178
    addiu	$a0,$a0,8
    lh	$v1,4($a0)
    slt	$v1,$t9,$v1
    beqzl	$v1,.L5ef65178
    addiu	$a0,$a0,8
    lh	$a5,6($a0)
    slt	$a5,$t2,$a5
    beqz	$a5,.L5ef65178
    addiu	$a0,$a0,8
    ld	$a6,648($sp)
    addiu	$v0,$t9,1
    sw	$t9,1916($a6)
    sw	$t2,1916($a6)
    sw	$v0,1916($a6)
    sw	$t2,1916($a6)
.L5ef651d8:
    ld	$v1,648($sp)
.L5ef651dc:
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1960($v1)
.L5ef651f0:
    jr	$ra
    addiu	$sp,$sp,832
.L5ef651f8:
    ld	$a2,536($sp)
    ld	$a3,536($sp)
    subu	$a3,$a3,$s3
    blez	$a3,.L5ef65210
    subu	$a2,$s3,$a2
    move	$a2,$a3
.L5ef65210:
    b	.L5ef64e4c
    move	$a7,$a2
.L5ef65218:
    andi	$a5,$s1,0x1
    beqz	$a5,.L5ef64ad8
    ld	$v0,480($sp)
    ld	$s2,504($sp)
    ld	$a5,528($sp)
    li	$a6,32767
    subu	$s2,$s2,$v0
    sltu	$a6,$a6,$s2
    bnez	$a6,.L5ef65278
    ld	$gp,576($sp)
    ld	$v1,496($sp)
    ld	$a5,584($sp)
    ld	$v0,584($sp)
    beqz	$v1,.L5ef65f14
    ld	$a6,448($sp)
    beqz	$a5,.L5ef65f94
    li	$a3,9
.L5ef6525c:
    move	$s7,$a3
.L5ef65260:
    b	.L5ef652a4
    sd	$a6,656($sp)
.L5ef65268:
    bnez	$t0,.L5ef6449c
    move	$t2,$t1
.L5ef65270:
    b	.L5ef644a0
    li	$a2,1
.L5ef65278:
    ld	$v0,520($sp)
    ld	$s2,480($sp)
    subu	$s2,$s2,$v0
    ld	$v0,496($sp)
    beqz	$v0,.L5ef65f24
    sltiu	$gp,$gp,1
    ld	$v1,584($sp)
    beqz	$v1,.L5ef65f9c
    li	$a3,1
.L5ef6529c:
    move	$s7,$a3
.L5ef652a0:
    sd	$a5,656($sp)
.L5ef652a4:
    b	.L5ef64ad8
    ld	$s4,480($sp)
.L5ef652ac:
    move	$a6,$t2
    bnez	$a7,.L5ef645ac
    sd	$t2,600($sp)
.L5ef652b8:
    li	$v0,1
    b	.L5ef645b4
    sd	$v0,640($sp)
.L5ef652c4:
    b	.L5ef65100
    sd	$zero,392($sp)
.L5ef652cc:
    lw	$t3,nfbWindowPrivateIndex
    lw	$t1,132($a0)
    sd	$s3,384($sp)
    sll	$t3,$t3,0x2
    addu	$t1,$t1,$t3
    lw	$t3,0($a1)
    lw	$t0,expScreenPrivateIndex
    lui	$s3,0x4
    lw	$t3,436($t3)
    sll	$t0,$t0,0x2
    lw	$t1,0($t1)
    addu	$t3,$t3,$t0
    lw	$t3,0($t3)
    lw	$t1,20($t1)
    li	$v1,13
    lw	$t3,0($t3)
    move	$t8,$t1
    beq	$t1,$v1,.L5ef65eb8
    addu	$s3,$s3,$t3
    li	$v0,14
    beq	$t8,$v0,.L5ef65f64
    li	$v1,12
    beq	$t8,$v1,.L5ef65f44
    ori	$t8,$t1,0x1000
    sw	$t8,1324($s3)
    sw	$zero,1236($s3)
    lbu	$a7,21($a2)
    lw	$t8,76($a2)
    sll	$a7,$a7,0x3
.L5ef65340:
    lui	$a5,0xff
    lw	$a6,64($a2)
    ori	$a5,$a5,0xffff
    and	$a5,$t8,$a5
    sw	$a6,1328($s3)
    sw	$a5,1916($s3)
    lbu	$v1,72($a2)
    li	$t1,10
    sw	$v1,1916($s3)
    sw	$a7,1916($s3)
    sw	$t1,1312($s3)
    lh	$v0,0($t2)
    sw	$v0,1320($s3)
    lh	$a6,4($t2)
    addiu	$a6,$a6,-1
    sw	$a6,1916($s3)
    lh	$a5,2($t2)
    sw	$a5,1916($s3)
    lh	$v1,6($t2)
    addiu	$v1,$v1,-1
    sw	$v1,1916($s3)
    lw	$v0,0($a1)
    lw	$v0,436($v0)
    addu	$v0,$v0,$t0
    lw	$v0,0($v0)
    lw	$v0,8($v0)
    lbu	$v0,54($v0)
    slti	$v0,$v0,5
    beqz	$v0,.L5ef653bc
    li	$t0,357
    li	$t0,302
.L5ef653bc:
    lh	$t9,8($a0)
    lh	$t8,10($a0)
    lh	$a7,2($a4)
    lh	$a2,0($a4)
    li	$v0,-2048
    addu	$a7,$a7,$t8
    addu	$a2,$a2,$t9
    or	$a6,$a2,$a7
    and	$a6,$a6,$v0
    beqz	$a6,.L5ef65ed8
    lh	$a5,-20948($at)
    slt	$a5,$a2,$a5
    beqz	$a5,.L5ef65c30
    move	$a0,$zero
    li	$a0,8
.L5ef653f8:
    lh	$a6,-20946($at)
.L5ef653fc:
    slt	$a6,$a7,$a6
    beqz	$a6,.L5ef65c48
    lh	$a5,-20942($at)
    ori	$a0,$a0,0x2
.L5ef6540c:
    slti	$v0,$a3,2
.L5ef65410:
    bnez	$v0,.L5ef65e80
    sd	$t0,48($sp)
    sd	$t2,184($sp)
    sd	$s8,744($sp)
    sd	$s5,728($sp)
    sd	$s2,696($sp)
    sd	$s6,688($sp)
    sd	$t3,88($sp)
    move	$t1,$zero
    sd	$ra,720($sp)
    lh	$ra,-20948($at)
    sd	$s0,712($sp)
    lh	$s0,-20946($at)
    sd	$s4,736($sp)
    lw	$s4,24($sp)
    move	$t0,$a4
    sd	$s1,704($sp)
    addiu	$s1,$a3,-1
    sll	$s1,$s1,0x2
    lw	$v0,20($sp)
    lw	$v1,28($sp)
    addu	$s1,$s1,$a4
    sd	$v0,272($sp)
    sd	$v1,280($sp)
    sd	$gp,776($sp)
    lw	$gp,16($sp)
    sd	$s7,768($sp)
    ld	$s7,48($sp)
    sd	$gp,144($sp)
    lh	$gp,-20942($at)
    sll	$s7,$s7,0x2
    sd	$s7,80($sp)
    lh	$s7,-20944($at)
    addiu	$v1,$gp,-1
    sd	$v1,56($sp)
    addiu	$a5,$s7,-1
    b	.L5ef65508
    sd	$a5,64($sp)
.L5ef654a8:
    li	$a3,47
    b	.L5ef65098
    nop
.L5ef654b4:
    li	$a3,3
    b	.L5ef650ac
    nop
.L5ef654c0:
    ld	$a5,584($sp)
    beqz	$a5,.L5ef65efc
    li	$a3,26
.L5ef654cc:
    b	.L5ef65020
    move	$s7,$a3
.L5ef654d4:
    ld	$a6,584($sp)
    beqz	$a6,.L5ef65f08
    li	$a3,18
.L5ef654e0:
    b	.L5ef65054
    move	$s7,$a3
.L5ef654e8:
    bnez	$v0,.L5ef654f8
    and	$v1,$a0,$a3
    ori	$a0,$a0,0x1
.L5ef654f4:
    and	$v1,$a0,$a3
.L5ef654f8:
    beqz	$v1,.L5ef655a0
    nop
.L5ef65500:
    addiu	$t1,$t1,1
.L5ef65504:
    beq	$t0,$s1,.L5ef65a78
.L5ef65508:
    move	$t2,$a2
    ld	$a5,608($sp)
    move	$t3,$a7
    li	$a6,1
    beq	$a5,$a6,.L5ef6555c
    move	$a3,$a0
.L5ef65520:
    lh	$a7,6($t0)
    addiu	$t0,$t0,4
    lh	$a2,0($t0)
    addu	$a7,$a7,$t8
    beqz	$a0,.L5ef65568
    addu	$a2,$a2,$t9
    slt	$s5,$a2,$ra
.L5ef6553c:
    beqz	$s5,.L5ef6558c
    move	$a0,$zero
    li	$a0,8
.L5ef65548:
    slt	$s2,$a7,$s0
.L5ef6554c:
    beqz	$s2,.L5ef654e8
    slt	$v0,$a7,$gp
    b	.L5ef654f4
    ori	$a0,$a0,0x2
.L5ef6555c:
    move	$t9,$a2
    b	.L5ef65520
    move	$t8,$a7
.L5ef65568:
    li	$v1,-2048
    or	$v0,$a2,$a7
    and	$v0,$v0,$v1
    bnez	$v0,.L5ef6553c
    slt	$s5,$a2,$ra
    move	$a0,$zero
    sw	$a2,1916($s3)
    b	.L5ef65500
    sw	$a7,1916($s3)
.L5ef6558c:
    slt	$a5,$a2,$s7
    bnez	$a5,.L5ef6554c
    slt	$s2,$a7,$s0
    b	.L5ef65548
    li	$a0,4
.L5ef655a0:
    bne	$a2,$t2,.L5ef655e0
    nop
    beqz	$a3,.L5ef65a24
    slt	$v0,$t3,$s0
    beqz	$a0,.L5ef65a40
    ld	$v1,80($sp)
    ld	$a6,184($sp)
    sw	$zero,1204($s3)
    sw	$t2,1916($s3)
    lh	$v0,2($a6)
    sw	$v0,1916($s3)
    sw	$t2,1916($s3)
    lh	$a6,6($a6)
    sw	$a6,1916($s3)
    b	.L5ef65500
    sw	$zero,1960($s3)
.L5ef655e0:
    bnel	$a7,$t3,.L5ef65620
    move	$s5,$zero
    beqz	$a3,.L5ef65c00
    slt	$v0,$t2,$ra
    beqz	$a0,.L5ef65ca4
    ld	$v1,80($sp)
    ld	$v1,184($sp)
    sw	$zero,1204($s3)
    lh	$a5,0($v1)
    sw	$a5,1916($s3)
    sw	$t3,1916($s3)
    lh	$v1,4($v1)
    sw	$v1,1916($s3)
    sw	$t3,1916($s3)
    b	.L5ef65500
    sw	$zero,1960($s3)
.L5ef65620:
    subu	$a6,$a2,$t2
    bltz	$a6,.L5ef65c20
    sd	$a6,96($sp)
.L5ef6562c:
    ld	$s2,96($sp)
    subu	$s8,$a7,$t3
    bltz	$s8,.L5ef65c28
    sll	$s6,$s8,0x1
.L5ef6563c:
    sra	$v1,$s2,0x1f
    sra	$v0,$s8,0x1f
    and	$s6,$s6,$v0
    sll	$v0,$s2,0x1
    and	$v0,$v0,$v1
    subu	$s2,$s2,$v0
    subu	$s6,$s8,$s6
    slt	$v0,$s6,$s2
    sll	$v1,$s2,0x1
    sll	$a5,$s6,0x1
    sd	$a5,368($sp)
    sd	$v1,360($sp)
    ld	$a6,368($sp)
    beqz	$v0,.L5ef656a4
    ld	$a5,368($sp)
    move	$v1,$s2
    sd	$s2,72($sp)
    sd	$s5,288($sp)
    sd	$s6,208($sp)
    sd	$s8,232($sp)
    sd	$zero,40($sp)
    sd	$s2,248($sp)
    ld	$a5,360($sp)
    sd	$a6,264($sp)
    b	.L5ef656d4
    sd	$a5,256($sp)
.L5ef656a4:
    move	$a6,$s6
    sd	$s2,72($sp)
    sd	$s6,208($sp)
    sd	$s8,232($sp)
    sd	$s6,248($sp)
    sd	$a5,256($sp)
    li	$v0,1
    ori	$s5,$s5,0x1
    ld	$v1,360($sp)
    sd	$s5,288($sp)
    sd	$v0,40($sp)
    sd	$v1,264($sp)
.L5ef656d4:
    move	$s8,$a0
    sd	$zero,200($sp)
    sd	$t2,136($sp)
    move	$s5,$t2
    sd	$t3,160($sp)
    sd	$a2,168($sp)
    sd	$a2,240($sp)
    sd	$a7,176($sp)
    sd	$a7,128($sp)
    sd	$zero,192($sp)
    sd	$zero,352($sp)
    move	$s6,$t3
    move	$s6,$t3
    move	$v1,$a7
    move	$s2,$a3
    move	$a3,$a7
    move	$a5,$a2
    andi	$a5,$zero,0x1
    sd	$a5,152($sp)
    move	$v0,$t2
    ld	$v0,208($sp)
    move	$a6,$a2
    ld	$a6,72($sp)
    sll	$v0,$v0,0x1
    sd	$v0,296($sp)
    ld	$v0,288($sp)
    sll	$a6,$a6,0x1
    sd	$a6,344($sp)
    andi	$a3,$v0,0x4
    andi	$v1,$v0,0x1
    andi	$v0,$v0,0x2
    sd	$v1,104($sp)
    sd	$v0,112($sp)
    sd	$a3,120($sp)
    move	$a3,$zero
.L5ef65760:
    and	$v1,$s2,$s8
.L5ef65764:
    beqz	$v1,.L5ef6586c
    or	$v0,$s2,$s8
    sd	$s8,352($sp)
    li	$a3,-1
    sd	$a3,216($sp)
    move	$a3,$s2
    ld	$s2,352($sp)
    ld	$s8,216($sp)
.L5ef65784:
    li	$a5,-1
    beq	$s8,$a5,.L5ef65500
    ld	$a6,40($sp)
    beqz	$a6,.L5ef65c5c
    ld	$s8,128($sp)
    subu	$s8,$s8,$s6
    blez	$s8,.L5ef65cdc
    move	$v0,$s8
    sd	$s8,336($sp)
.L5ef657a8:
    ld	$s8,336($sp)
.L5ef657ac:
    sltu	$v1,$zero,$s2
    addu	$s8,$v1,$s8
    beqz	$s8,.L5ef65c78
    nop
    beqz	$a3,.L5ef65e20
    ld	$a3,248($sp)
    subu	$a5,$s5,$t2
    blez	$a5,.L5ef65e14
    sd	$a5,312($sp)
    ld	$a6,312($sp)
    sd	$a6,224($sp)
.L5ef657d8:
    subu	$v0,$s6,$t3
    blez	$v0,.L5ef65bc4
    sd	$v0,304($sp)
    ld	$v1,40($sp)
    beqz	$v1,.L5ef65bd0
    ld	$t2,304($sp)
.L5ef657f0:
    ld	$a5,256($sp)
    ld	$v1,224($sp)
    mult	$v1,$a5
    ld	$v0,264($sp)
    mflo	$a5
    mult	$t2,$v0
    mflo	$a6
    subu	$a5,$a5,$a6
    addu	$a3,$a5,$a3
.L5ef6581c:
    ld	$v1,80($sp)
    ld	$a6,232($sp)
    ld	$v0,96($sp)
    sw	$zero,1228($s3)
    sw	$s5,1916($s3)
    sw	$s6,1916($s3)
    sw	$a3,1916($s3)
    sw	$v0,1916($s3)
    sw	$a6,1916($s3)
    sw	$s8,1916($s3)
    bnez	$s2,.L5ef65500
    sw	$zero,1960($s3)
    lui	$a5,0x4
    ld	$a6,88($sp)
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a5
    sw	$zero,0($v1)
    sw	$a2,1916($s3)
    b	.L5ef65500
    sw	$a7,1916($s3)
.L5ef6586c:
    beqz	$v0,.L5ef65fa4
    ld	$a5,240($sp)
    beqz	$s2,.L5ef65cec
    move	$a6,$s5
.L5ef6587c:
    ld	$v0,112($sp)
    andi	$v1,$s2,0x8
    beqz	$v1,.L5ef65d74
    or	$a3,$s2,$a3
    ld	$s4,136($sp)
    ld	$v1,104($sp)
    li	$a5,32767
    subu	$s4,$ra,$s4
    sltu	$a5,$a5,$s4
    bnez	$a5,.L5ef658d0
    sd	$v0,280($sp)
    ld	$v1,104($sp)
    ld	$a5,200($sp)
    beqz	$v1,.L5ef65e88
    ld	$v0,160($sp)
    beqz	$a5,.L5ef65f84
    li	$s2,52
.L5ef658c0:
    move	$a6,$s2
    sd	$s2,272($sp)
.L5ef658c8:
    b	.L5ef65904
    sd	$v0,144($sp)
.L5ef658d0:
    ld	$s4,168($sp)
    ld	$a5,280($sp)
    beqz	$v1,.L5ef65ea0
    subu	$s4,$s4,$ra
    ld	$v0,200($sp)
    beqz	$v0,.L5ef65f8c
    li	$s2,24
.L5ef658ec:
    move	$v1,$s2
    sd	$s2,272($sp)
.L5ef658f4:
    sltiu	$a5,$a5,1
    ld	$a6,176($sp)
    sd	$a5,280($sp)
    sd	$a6,144($sp)
.L5ef65904:
    move	$s5,$ra
.L5ef65908:
    ld	$v0,200($sp)
.L5ef6590c:
    ld	$a5,272($sp)
    sll	$a6,$s4,0x1
    beqz	$v0,.L5ef65928
    ld	$s4,272($sp)
    ld	$v1,280($sp)
    sltiu	$v1,$v1,1
    sd	$v1,280($sp)
.L5ef65928:
    andi	$v0,$s4,0x2
    sd	$a6,328($sp)
    ld	$a6,72($sp)
    andi	$a5,$a5,0x1
    beqz	$a5,.L5ef65dc4
    sd	$a5,320($sp)
    ld	$s2,328($sp)
    multu	$a6,$s2
    mflo	$s2
.L5ef65954:
    andi	$s4,$s4,0x4
    beqz	$v0,.L5ef65ddc
    nop
    beqz	$s4,.L5ef65e78
    ld	$v0,72($sp)
    ld	$v0,72($sp)
    subu	$s2,$s2,$v0
.L5ef65970:
    ld	$v1,272($sp)
    andi	$v1,$v1,0x8
    beqz	$v1,.L5ef65dec
    ld	$v0,152($sp)
    addu	$s2,$s2,$v0
    addiu	$s2,$s2,-1
.L5ef65988:
    ld	$v1,272($sp)
    ld	$v0,280($sp)
    ld	$a6,272($sp)
    andi	$v1,$v1,0x10
    beqz	$v1,.L5ef65df8
    andi	$a6,$a6,0x20
    ld	$a5,344($sp)
    divu	$zero,$s2,$a5
    teq	$a5,$zero,0x7
    mflo	$s4
.L5ef659b8:
    beqz	$a6,.L5ef659c4
    ld	$s2,144($sp)
    addiu	$s4,$s4,1
.L5ef659c4:
    ld	$v1,320($sp)
    beqz	$v0,.L5ef659d4
    nop
    negu	$s4,$s4
.L5ef659d4:
    beqz	$v1,.L5ef65e0c
    addu	$s2,$s2,$s4
    move	$s5,$s2
.L5ef659e0:
    slt	$v0,$s5,$ra
    beqz	$v0,.L5ef659f0
    move	$s2,$zero
    li	$s2,8
.L5ef659f0:
    slt	$v1,$s5,$s7
    bnez	$v1,.L5ef65a04
    slt	$a5,$s6,$s0
    ori	$s2,$s2,0x4
    slt	$a5,$s6,$s0
.L5ef65a04:
    beqz	$a5,.L5ef65a14
    slt	$a6,$s6,$gp
    ori	$s2,$s2,0x2
    slt	$a6,$s6,$gp
.L5ef65a14:
    bnez	$a6,.L5ef65764
    and	$v1,$s2,$s8
    b	.L5ef65760
    ori	$s2,$s2,0x1
.L5ef65a24:
    beqzl	$a0,.L5ef65504
    addiu	$t1,$t1,1
    beqz	$s2,.L5ef65f38
    sw	$t2,1916($s3)
    sw	$s0,1916($s3)
.L5ef65a38:
    b	.L5ef65500
    sw	$zero,1960($s3)
.L5ef65a40:
    ld	$a6,88($sp)
    lui	$a5,0x4
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a5
    sw	$zero,0($v1)
    beqz	$v0,.L5ef65a64
    sw	$t2,1916($s3)
    b	.L5ef65a6c
    sw	$s0,1916($s3)
.L5ef65a64:
    ld	$v0,56($sp)
    sw	$v0,1916($s3)
.L5ef65a6c:
    sw	$t2,1916($s3)
    b	.L5ef65500
    sw	$a7,1916($s3)
.L5ef65a78:
    ld	$s6,688($sp)
    ld	$s2,696($sp)
    ld	$s1,704($sp)
    ld	$gp,776($sp)
    ld	$s0,712($sp)
    ld	$ra,720($sp)
    ld	$s5,728($sp)
    ld	$s4,736($sp)
    ld	$s8,744($sp)
    ld	$s7,768($sp)
.L5ef65aa0:
    lw	$v1,16($a1)
    lui	$a5,0x3fff
    ori	$a5,$a5,0xffff
    and	$v1,$v1,$a5
    srl	$v1,$v1,0x1c
    beqz	$v1,.L5ef65ae8
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$a4
    lh	$a6,0($t0)
    lh	$v0,0($a4)
    bne	$a6,$v0,.L5ef65b00
    nop
    lh	$v0,2($t0)
    lh	$v1,2($a4)
    bne	$v0,$v1,.L5ef65b00
    li	$a5,1
    beq	$t1,$a5,.L5ef65b00
    nop
.L5ef65ae8:
    bnez	$a0,.L5ef65b08
    lh	$a6,-20950($at)
    sw	$a2,1916($s3)
    sw	$a7,1916($s3)
    b	.L5ef65b04
    sw	$zero,1960($s3)
.L5ef65b00:
    beqz	$a0,.L5ef65fec
.L5ef65b04:
    lh	$a6,-20950($at)
.L5ef65b08:
    lh	$v0,-20954($at)
    addiu	$a6,$a6,-1
    li	$a5,10
    lh	$a0,-20956($at)
    lh	$v1,-20952($at)
    sw	$a5,1312($s3)
    sw	$a0,1320($s3)
    addiu	$v1,$v1,-1
    sw	$v1,1916($s3)
    sw	$v0,1916($s3)
    sw	$a6,1916($s3)
    ld	$s3,384($sp)
    jr	$ra
    addiu	$sp,$sp,832
.L5ef65b40:
    li	$a3,60
    b	.L5ef65020
    move	$s7,$a3
.L5ef65b4c:
    li	$a3,16
    b	.L5ef65054
    move	$s7,$a3
.L5ef65b58:
    ld	$v1,648($sp)
    li	$a5,4107
    sw	$a5,1324($v1)
    lw	$v0,76($a2)
    li	$a7,1
    move	$t3,$zero
    andi	$v0,$v0,0x3
    b	.L5ef64534
    sw	$v0,1236($v1)
.L5ef65b7c:
    ld	$v0,648($sp)
    li	$a7,4104
    sw	$a7,1324($v0)
    lw	$a6,76($a2)
    move	$t3,$zero
    li	$a7,1
    andi	$a6,$a6,0xf
    b	.L5ef64534
    sw	$a6,1236($v0)
.L5ef65ba0:
    ld	$v1,648($sp)
    li	$a5,4107
    sw	$a5,1324($v1)
    lw	$v0,76($a2)
    li	$a7,9
    move	$t3,$zero
    andi	$v0,$v0,0xc
    b	.L5ef64534
    sw	$v0,1236($v1)
.L5ef65bc4:
    ld	$a6,40($sp)
    bnez	$a6,.L5ef657f0
    subu	$t2,$t3,$s6
.L5ef65bd0:
    ld	$v0,256($sp)
    mult	$t2,$v0
    ld	$a6,264($sp)
    ld	$a5,224($sp)
    mflo	$v0
    mult	$a5,$a6
    mflo	$v1
    subu	$v0,$v0,$v1
    b	.L5ef6581c
    addu	$a3,$v0,$a3
.L5ef65c00:
    beqzl	$a0,.L5ef65504
    addiu	$t1,$t1,1
    beqz	$s5,.L5ef66010
    ld	$a5,64($sp)
    sw	$ra,1916($s3)
.L5ef65c14:
    sw	$t3,1916($s3)
    b	.L5ef65500
    sw	$zero,1960($s3)
.L5ef65c20:
    b	.L5ef6562c
    li	$s5,4
.L5ef65c28:
    b	.L5ef6563c
    ori	$s5,$s5,0x2
.L5ef65c30:
    lh	$v1,-20944($at)
    slt	$v1,$a2,$v1
    bnez	$v1,.L5ef653fc
    lh	$a6,-20946($at)
    b	.L5ef653f8
    li	$a0,4
.L5ef65c48:
    slt	$a5,$a7,$a5
    bnez	$a5,.L5ef65410
    slti	$v0,$a3,2
    b	.L5ef6540c
    ori	$a0,$a0,0x1
.L5ef65c5c:
    ld	$s8,240($sp)
    subu	$s8,$s8,$s5
    blez	$s8,.L5ef66000
    move	$v0,$s8
    sd	$s8,32($sp)
.L5ef65c70:
    b	.L5ef657ac
    ld	$s8,32($sp)
.L5ef65c78:
    bnezl	$s2,.L5ef65504
    addiu	$t1,$t1,1
    ld	$a6,88($sp)
    ld	$v1,80($sp)
    lui	$a5,0x4
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a5
    sw	$zero,0($v1)
    sw	$a2,1916($s3)
    b	.L5ef65500
    sw	$a7,1916($s3)
.L5ef65ca4:
    ld	$a6,88($sp)
    lui	$a5,0x4
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a5
    beqz	$v0,.L5ef65cc4
    sw	$zero,0($v1)
    b	.L5ef65ccc
    sw	$ra,1916($s3)
.L5ef65cc4:
    ld	$v0,64($sp)
    sw	$v0,1916($s3)
.L5ef65ccc:
    sw	$t3,1916($s3)
    sw	$a2,1916($s3)
    b	.L5ef65500
    sw	$t3,1916($s3)
.L5ef65cdc:
    ld	$v1,128($sp)
    subu	$v1,$s6,$v1
    b	.L5ef657a8
    sd	$v1,336($sp)
.L5ef65cec:
    sd	$a6,240($sp)
    move	$s5,$a5
    move	$a5,$a6
    ld	$a6,136($sp)
    ld	$v0,128($sp)
    move	$v1,$s6
    sd	$v1,128($sp)
    move	$s6,$v0
    move	$v0,$v1
    ld	$v1,168($sp)
    move	$a5,$a6
    move	$a6,$v1
    sd	$v1,136($sp)
    move	$v1,$a5
    move	$v1,$s2
    move	$s2,$s8
    move	$s8,$v1
    ld	$v0,160($sp)
    sd	$a5,168($sp)
    ld	$a5,176($sp)
    move	$a6,$v0
    sd	$a6,176($sp)
    move	$v0,$a5
    move	$v0,$a3
    sd	$a5,160($sp)
    move	$a5,$a6
    ld	$a6,352($sp)
    sd	$v0,352($sp)
    ld	$a5,200($sp)
    move	$a3,$a6
    move	$a6,$v0
    sltiu	$a5,$a5,1
    b	.L5ef6587c
    sd	$a5,200($sp)
.L5ef65d74:
    andi	$v0,$s2,0x2
    beqz	$v0,.L5ef66018
    andi	$a6,$s2,0x4
    ld	$s4,160($sp)
    li	$v1,32767
    ld	$v0,120($sp)
    subu	$s4,$s0,$s4
    sltu	$v1,$v1,$s4
    bnez	$v1,.L5ef65e34
    sd	$v0,280($sp)
    ld	$v1,104($sp)
    beqz	$v1,.L5ef660c4
    ld	$a5,200($sp)
    beqz	$a5,.L5ef66104
    li	$s2,9
.L5ef65db0:
    move	$a6,$s2
    sd	$s2,272($sp)
.L5ef65db8:
    ld	$v0,136($sp)
    b	.L5ef65e6c
    sd	$v0,144($sp)
.L5ef65dc4:
    ld	$v1,208($sp)
    ld	$a5,328($sp)
    multu	$v1,$a5
    mflo	$s2
    b	.L5ef65954
    nop
.L5ef65ddc:
    beqz	$s4,.L5ef66064
    ld	$a6,208($sp)
    b	.L5ef65970
    subu	$s2,$s2,$a6
.L5ef65dec:
    ld	$v0,152($sp)
    b	.L5ef65988
    subu	$s2,$s2,$v0
.L5ef65df8:
    ld	$v1,296($sp)
    divu	$zero,$s2,$v1
    mflo	$s4
    b	.L5ef659b8
    teq	$v1,$zero,0x7
.L5ef65e0c:
    b	.L5ef659e0
    move	$s6,$s2
.L5ef65e14:
    subu	$a5,$t2,$s5
    b	.L5ef657d8
    sd	$a5,224($sp)
.L5ef65e20:
    ld	$a3,248($sp)
    sw	$t2,1916($s3)
    sw	$t3,1916($s3)
    b	.L5ef6581c
    sw	$zero,1960($s3)
.L5ef65e34:
    ld	$a6,104($sp)
    ld	$s4,176($sp)
    beqz	$a6,.L5ef660dc
    subu	$s4,$s4,$s0
    ld	$v0,200($sp)
    beqz	$v0,.L5ef6610c
    li	$s2,1
.L5ef65e50:
    move	$v1,$s2
    sd	$s2,272($sp)
.L5ef65e58:
    ld	$a6,168($sp)
    ld	$a5,280($sp)
    sd	$a6,144($sp)
    sltiu	$a5,$a5,1
    sd	$a5,280($sp)
.L5ef65e6c:
    move	$s6,$s0
    b	.L5ef6590c
    ld	$v0,200($sp)
.L5ef65e78:
    b	.L5ef65970
    addu	$s2,$v0,$s2
.L5ef65e80:
    b	.L5ef65aa0
    move	$t1,$zero
.L5ef65e88:
    ld	$v1,200($sp)
    beqz	$v1,.L5ef660b4
    li	$s2,26
.L5ef65e94:
    move	$a5,$s2
    b	.L5ef658c8
    sd	$s2,272($sp)
.L5ef65ea0:
    ld	$a6,200($sp)
    beqz	$a6,.L5ef660bc
    li	$s2,18
.L5ef65eac:
    move	$v0,$s2
    b	.L5ef658f4
    sd	$s2,272($sp)
.L5ef65eb8:
    li	$a5,4107
    sw	$a5,1324($s3)
    lw	$v1,76($a2)
    li	$a7,1
    move	$t8,$zero
    andi	$v1,$v1,0x3
    b	.L5ef65340
    sw	$v1,1236($s3)
.L5ef65ed8:
    move	$a0,$zero
    lui	$v0,0x4
    sll	$a6,$t0,0x2
    addu	$a6,$a6,$t3
    addu	$a6,$a6,$v0
    sw	$zero,0($a6)
    sw	$a2,1916($s3)
    b	.L5ef6540c
    sw	$a7,1916($s3)
.L5ef65efc:
    li	$a3,18
    b	.L5ef654cc
    nop
.L5ef65f08:
    li	$a3,26
    b	.L5ef654e0
    nop
.L5ef65f14:
    beqz	$v0,.L5ef660f4
    li	$a3,39
.L5ef65f1c:
    b	.L5ef65260
    move	$s7,$a3
.L5ef65f24:
    ld	$v1,584($sp)
    beqz	$v1,.L5ef660fc
    li	$a3,11
.L5ef65f30:
    b	.L5ef652a0
    move	$s7,$a3
.L5ef65f38:
    ld	$a5,56($sp)
    b	.L5ef65a38
    sw	$a5,1916($s3)
.L5ef65f44:
    li	$a7,4104
    sw	$a7,1324($s3)
    lw	$a6,76($a2)
    li	$a7,1
    move	$t8,$zero
    andi	$a6,$a6,0xf
    b	.L5ef65340
    sw	$a6,1236($s3)
.L5ef65f64:
    li	$v1,4107
    sw	$v1,1324($s3)
    lw	$v0,76($a2)
    li	$a7,9
    move	$t8,$zero
    andi	$v0,$v0,0xc
    b	.L5ef65340
    sw	$v0,1236($s3)
.L5ef65f84:
    b	.L5ef658c0
    li	$s2,60
.L5ef65f8c:
    b	.L5ef658ec
    li	$s2,16
.L5ef65f94:
    b	.L5ef6525c
    li	$a3,1
.L5ef65f9c:
    b	.L5ef6529c
    li	$a3,9
.L5ef65fa4:
    ld	$a5,200($sp)
    li	$s8,1
    beqz	$a5,.L5ef65784
    ld	$s2,352($sp)
    move	$v1,$s6
    ld	$v0,128($sp)
    sd	$v1,128($sp)
    move	$a6,$s5
    ld	$a5,240($sp)
    sd	$a6,240($sp)
    move	$s6,$v0
    move	$v0,$v1
    move	$s5,$a5
    move	$a5,$a6
    move	$a6,$a3
    move	$a3,$s2
    b	.L5ef65784
    move	$s2,$a6
.L5ef65fec:
    addiu	$v0,$a2,1
    sw	$v0,1916($s3)
    sw	$a7,1916($s3)
    b	.L5ef65b04
    sw	$zero,1960($s3)
.L5ef66000:
    ld	$v1,240($sp)
    subu	$v1,$s5,$v1
    b	.L5ef65c70
    sd	$v1,32($sp)
.L5ef66010:
    b	.L5ef65c14
    sw	$a5,1916($s3)
.L5ef66018:
    beqz	$a6,.L5ef66114
    ld	$v0,112($sp)
    ld	$s4,136($sp)
    sd	$v0,280($sp)
    li	$v0,32767
    subu	$s4,$s4,$s7
    addiu	$s4,$s4,1
    sltu	$v0,$v0,$s4
    bnez	$v0,.L5ef66070
    ld	$v1,104($sp)
    beqz	$v1,.L5ef661bc
    ld	$a5,200($sp)
    beqz	$a5,.L5ef661ec
    li	$s2,52
.L5ef66050:
    move	$a6,$s2
    sd	$s2,272($sp)
.L5ef66058:
    ld	$v0,160($sp)
    b	.L5ef660ac
    sd	$v0,144($sp)
.L5ef66064:
    ld	$v1,208($sp)
    b	.L5ef65970
    addu	$s2,$v1,$s2
.L5ef66070:
    ld	$s4,168($sp)
    ld	$a5,104($sp)
    subu	$s4,$s7,$s4
    beqz	$a5,.L5ef661d4
    addiu	$s4,$s4,-1
    ld	$v0,200($sp)
    beqz	$v0,.L5ef661f4
    li	$s2,24
.L5ef66090:
    move	$v1,$s2
    sd	$s2,272($sp)
.L5ef66098:
    ld	$a6,176($sp)
    ld	$a5,280($sp)
    sd	$a6,144($sp)
    sltiu	$a5,$a5,1
    sd	$a5,280($sp)
.L5ef660ac:
    b	.L5ef65908
    ld	$s5,64($sp)
.L5ef660b4:
    b	.L5ef65e94
    li	$s2,18
.L5ef660bc:
    b	.L5ef65eac
    li	$s2,26
.L5ef660c4:
    ld	$v0,200($sp)
    beqz	$v0,.L5ef661ac
    li	$s2,39
.L5ef660d0:
    move	$v1,$s2
    b	.L5ef65db8
    sd	$s2,272($sp)
.L5ef660dc:
    ld	$a5,200($sp)
    beqz	$a5,.L5ef661b4
    li	$s2,11
.L5ef660e8:
    move	$a6,$s2
    b	.L5ef65e58
    sd	$s2,272($sp)
.L5ef660f4:
    b	.L5ef65f1c
    li	$a3,47
.L5ef660fc:
    b	.L5ef65f30
    li	$a3,3
.L5ef66104:
    b	.L5ef65db0
    li	$s2,1
.L5ef6610c:
    b	.L5ef65e50
    li	$s2,9
.L5ef66114:
    andi	$v0,$s2,0x1
    beqz	$v0,.L5ef6590c
    ld	$v0,200($sp)
    ld	$s4,160($sp)
    li	$v1,32767
    ld	$v0,120($sp)
    subu	$s4,$s4,$gp
    addiu	$s4,$s4,1
    sltu	$v1,$v1,$s4
    bnez	$v1,.L5ef66168
    sd	$v0,280($sp)
    ld	$v1,104($sp)
    beqz	$v1,.L5ef6620c
    ld	$a5,200($sp)
    beqz	$a5,.L5ef6623c
    li	$s2,9
.L5ef66154:
    move	$a6,$s2
    sd	$s2,272($sp)
.L5ef6615c:
    ld	$v0,136($sp)
    b	.L5ef661a4
    sd	$v0,144($sp)
.L5ef66168:
    ld	$s4,176($sp)
    ld	$v1,104($sp)
    subu	$s4,$gp,$s4
    beqz	$v1,.L5ef66224
    addiu	$s4,$s4,-1
    ld	$v0,200($sp)
    beqz	$v0,.L5ef66244
    li	$s2,1
.L5ef66188:
    move	$v1,$s2
    sd	$s2,272($sp)
.L5ef66190:
    ld	$a6,168($sp)
    ld	$a5,280($sp)
    sd	$a6,144($sp)
    sltiu	$a5,$a5,1
    sd	$a5,280($sp)
.L5ef661a4:
    b	.L5ef65908
    ld	$s6,56($sp)
.L5ef661ac:
    b	.L5ef660d0
    li	$s2,47
.L5ef661b4:
    b	.L5ef660e8
    li	$s2,3
.L5ef661bc:
    ld	$v0,200($sp)
    beqz	$v0,.L5ef661fc
    li	$s2,26
.L5ef661c8:
    move	$v1,$s2
    b	.L5ef66058
    sd	$s2,272($sp)
.L5ef661d4:
    ld	$a5,200($sp)
    beqz	$a5,.L5ef66204
    li	$s2,18
.L5ef661e0:
    move	$a6,$s2
    b	.L5ef66098
    sd	$s2,272($sp)
.L5ef661ec:
    b	.L5ef66050
    li	$s2,60
.L5ef661f4:
    b	.L5ef66090
    li	$s2,16
.L5ef661fc:
    b	.L5ef661c8
    li	$s2,18
.L5ef66204:
    b	.L5ef661e0
    li	$s2,26
.L5ef6620c:
    ld	$v0,200($sp)
    beqz	$v0,.L5ef6624c
    li	$s2,39
.L5ef66218:
    move	$v1,$s2
    b	.L5ef6615c
    sd	$s2,272($sp)
.L5ef66224:
    ld	$a5,200($sp)
    beqz	$a5,.L5ef66254
    li	$s2,11
.L5ef66230:
    move	$a6,$s2
    b	.L5ef66190
    sd	$s2,272($sp)
.L5ef6623c:
    b	.L5ef66154
    li	$s2,1
.L5ef66244:
    b	.L5ef66188
    li	$s2,9
.L5ef6624c:
    b	.L5ef66218
    li	$s2,47
.L5ef66254:
    b	.L5ef66230
    li	$s2,3
.end expLineSS

.globl expLineSD
.ent expLineSD
expLineSD:
    addiu	$sp,$sp,-656
    sd	$a1,496($sp)
    sd	$s6,128($sp)
    sd	$s2,136($sp)
    move	$s2,$a4
    lw	$a4,16($a1)
    lui	$s6,0x4
    sd	$a2,208($sp)
    srl	$a2,$a4,0x1e
    xori	$a2,$a2,0x2
    sltiu	$a2,$a2,1
    sd	$a2,424($sp)
    sd	$a0,408($sp)
    sd	$gp,112($sp)
    sd	$s1,120($sp)
    move	$s1,$a3
    lui	$a3,0x16
    addiu	$a3,$a3,-31896
    addu	$gp,$t9,$a3
    lw	$v1,nfbGCPrivateIndex
    lw	$v0,76($a1)
    lw	$t9,0($a1)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$at,expScreenPrivateIndex
    lw	$t9,436($t9)
    sd	$v0,392($sp)
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    move	$v1,$a0
    lw	$a0,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    lw	$t9,0($t9)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    lw	$v0,8($v0)
    lw	$t9,0($t9)
    lw	$v1,20($v1)
    li	$a0,13
    addu	$s6,$s6,$t9
    beq	$a0,$v1,.L5ef68c5c
    move	$at,$v1
    li	$a5,14
    beq	$at,$a5,.L5ef68ca4
    li	$a6,12
    beq	$at,$a6,.L5ef68c80
    ld	$a4,392($sp)
    ori	$a5,$v1,0x1000
    sw	$a5,1324($s6)
    sw	$zero,1236($s6)
    lbu	$a3,21($a4)
    lw	$a4,76($a4)
    sll	$a3,$a3,0x3
.L5ef66338:
    ld	$a6,392($sp)
    lui	$a7,0xff
    lw	$t0,64($a6)
    ori	$a7,$a7,0xffff
    and	$a7,$a4,$a7
    sw	$t0,1328($s6)
    sw	$a7,1916($s6)
    lbu	$a6,72($a6)
    sw	$a6,1916($s6)
    sw	$a3,1916($s6)
    sw	$zero,1228($s6)
    lw	$at,8($v0)
    beqz	$at,.L5ef68a90
    addiu	$t0,$at,8
    beqz	$at,.L5ef68a9c
    sd	$t0,216($sp)
.L5ef66378:
    lw	$a5,4($at)
    sd	$ra,568($sp)
    sd	$a5,264($sp)
.L5ef66384:
    addiu	$a4,$sp,68
    addiu	$a1,$sp,64
    sw	$zero,68($sp)
    sw	$zero,64($sp)
    # lw $t9, -30456($gp)
    ld	$a2,496($sp)
    lh	$t0,2($s2)
    lh	$a6,0($s2)
    lhu	$a3,10($a2)
    ld	$a7,408($sp)
    lhu	$a0,8($a2)
    lw	$a2,12($a2)
    lh	$t1,10($a7)
    lh	$a7,8($a7)
    sd	$a2,400($sp)
    sd	$t1,240($sp)
    sd	$a7,248($sp)
    addu	$a6,$a6,$a7
    addu	$t0,$t0,$t1
    sd	$t0,376($sp)
    jal	miStepDash
    sd	$a6,368($sp)
    lw	$a6,64($sp)
    ld	$a7,400($sp)
    sd	$a6,336($sp)
    addu	$a6,$a6,$a7
    lw	$a7,68($sp)
    lbu	$a6,0($a6)
    slti	$a5,$s1,2
    subu	$a6,$a6,$a7
    bnez	$a5,.L5ef68594
    sd	$a6,360($sp)
    sd	$s2,144($sp)
    sd	$s4,560($sp)
    sd	$s5,544($sp)
    sd	$s7,536($sp)
    sd	$zero,280($sp)
    sd	$s8,584($sp)
    li	$s8,1000
    sd	$s3,576($sp)
    lw	$s3,76($sp)
    sd	$s0,552($sp)
    lw	$s0,72($sp)
    move	$a5,$s2
    sd	$s2,288($sp)
    lw	$a6,80($sp)
    lw	$a7,84($sp)
    addiu	$t0,$s1,-1
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$s2
    sd	$a7,448($sp)
    sd	$a6,440($sp)
    b	.L5ef66498
    sd	$t0,200($sp)
.L5ef6645c:
    move	$t0,$t8
    sd	$t8,336($sp)
    sw	$t8,64($sp)
    move	$at,$t3
    move	$v0,$v1
.L5ef66470:
    subu	$a5,$v0,$at
    sd	$a5,360($sp)
.L5ef66478:
    ld	$t0,280($sp)
    ld	$a6,288($sp)
    ld	$a7,200($sp)
    addiu	$t0,$t0,1
    addiu	$a6,$a6,4
    sd	$a6,288($sp)
    beq	$a6,$a7,.L5ef685b8
    sd	$t0,280($sp)
.L5ef66498:
    ld	$t8,368($sp)
    ld	$ra,376($sp)
    li	$a6,1
    ld	$t0,264($sp)
    ld	$a5,208($sp)
    ld	$a7,216($sp)
    sd	$t0,352($sp)
    beq	$a5,$a6,.L5ef66a0c
    sd	$a7,472($sp)
.L5ef664bc:
    ld	$a6,288($sp)
    ld	$a7,248($sp)
    lh	$a5,4($a6)
    lh	$a6,6($a6)
    addu	$a5,$a5,$a7
    ld	$a7,240($sp)
    sd	$a5,368($sp)
    addu	$a6,$a6,$a7
    bne	$a5,$t8,.L5ef66508
    sd	$a6,376($sp)
    ld	$a7,376($sp)
    beq	$a7,$ra,.L5ef66478
    ld	$t0,376($sp)
    slt	$t0,$ra,$t0
    beqz	$t0,.L5ef6652c
    move	$t9,$ra
    ld	$t2,376($sp)
    b	.L5ef66538
    move	$t3,$zero
.L5ef66508:
    ld	$a5,376($sp)
    bne	$a5,$ra,.L5ef66654
    ld	$a6,368($sp)
    slt	$a6,$t8,$a6
    beqz	$a6,.L5ef665b8
    move	$a2,$t8
    ld	$t2,368($sp)
    b	.L5ef665c4
    move	$t9,$zero
.L5ef6652c:
    ld	$t9,376($sp)
    move	$t2,$ra
    li	$t3,1
.L5ef66538:
    ld	$a7,264($sp)
    beqz	$a7,.L5ef66584
    ld	$t0,472($sp)
    lh	$t0,6($t0)
    slt	$t0,$t9,$t0
    bnez	$t0,.L5ef66588
    ld	$t0,352($sp)
    ld	$a6,472($sp)
.L5ef66558:
    ld	$a5,352($sp)
    addiu	$a6,$a6,8
    addiu	$a5,$a5,-1
    sd	$a5,352($sp)
    beqz	$a5,.L5ef66a20
    sd	$a6,472($sp)
    ld	$a7,472($sp)
    lh	$a7,6($a7)
    slt	$a7,$t9,$a7
    beqz	$a7,.L5ef66558
    ld	$a6,472($sp)
.L5ef66584:
    ld	$t0,352($sp)
.L5ef66588:
    beqz	$t0,.L5ef66a20
    ld	$a5,352($sp)
    ld	$a3,336($sp)
    beqz	$a5,.L5ef66a20
    ld	$v0,360($sp)
    ld	$a1,472($sp)
    lh	$a1,2($a1)
    slt	$a6,$t2,$a1
    bnez	$a6,.L5ef66a24
    addiu	$a4,$sp,68
    b	.L5ef675dc
    ld	$a5,472($sp)
.L5ef665b8:
    ld	$a2,368($sp)
    move	$t2,$t8
    li	$t9,1
.L5ef665c4:
    ld	$a5,352($sp)
    beqz	$a5,.L5ef669d4
    ld	$a6,472($sp)
    lh	$a6,6($a6)
    slt	$a6,$ra,$a6
    bnez	$a6,.L5ef66614
    ld	$a6,352($sp)
    ld	$t0,472($sp)
.L5ef665e4:
    ld	$a7,352($sp)
    addiu	$t0,$t0,8
    addiu	$a7,$a7,-1
    sd	$a7,352($sp)
    beqz	$a7,.L5ef669d4
    sd	$t0,472($sp)
    ld	$a5,472($sp)
    lh	$a5,6($a5)
    slt	$a5,$ra,$a5
    beqz	$a5,.L5ef665e4
    ld	$t0,472($sp)
    ld	$a6,352($sp)
.L5ef66614:
    beqz	$a6,.L5ef669d4
    ld	$a1,472($sp)
    lh	$a1,2($a1)
    slt	$a7,$ra,$a1
    bnez	$a7,.L5ef669d4
    ld	$a3,336($sp)
    ld	$a5,352($sp)
    ld	$v0,360($sp)
    move	$a6,$a1
    beqz	$a5,.L5ef669d4
    sd	$a1,184($sp)
    ld	$a7,184($sp)
    bne	$a1,$a7,.L5ef669d8
    ld	$v1,400($sp)
    b	.L5ef67c8c
    ld	$v1,472($sp)
.L5ef66654:
    ld	$s1,368($sp)
    subu	$s1,$s1,$t8
    bltz	$s1,.L5ef67d5c
    move	$v1,$zero
.L5ef66664:
    ld	$s2,376($sp)
    subu	$s2,$s2,$ra
    bltz	$s2,.L5ef67d64
    nop
.L5ef66674:
    blez	$s1,.L5ef67848
    move	$a5,$s1
    blez	$s2,.L5ef67858
    sd	$s1,256($sp)
.L5ef66684:
    move	$a6,$s2
    sd	$s2,272($sp)
.L5ef6668c:
    ld	$a7,256($sp)
    ld	$at,272($sp)
    sll	$v0,$a7,0x1
    slt	$a7,$at,$a7
    beqz	$a7,.L5ef666c4
    sll	$at,$at,0x1
    move	$s4,$zero
    move	$s5,$at
    ld	$a5,256($sp)
    subu	$t0,$at,$v0
    sd	$t0,192($sp)
    negu	$a5,$a5
    b	.L5ef666e4
    sd	$a5,344($sp)
.L5ef666c4:
    ori	$v1,$v1,0x1
    move	$s5,$v0
    li	$s4,1
    ld	$a7,272($sp)
    subu	$a6,$v0,$at
    sd	$a6,192($sp)
    negu	$a7,$a7
    sd	$a7,344($sp)
.L5ef666e4:
    ld	$t0,352($sp)
    beqz	$t0,.L5ef68510
    sd	$zero,384($sp)
    sd	$s6,488($sp)
    sd	$t8,464($sp)
    sd	$ra,432($sp)
    ld	$a5,336($sp)
    ld	$a6,192($sp)
    sd	$v1,224($sp)
    addiu	$a5,$a5,1
    subu	$a6,$s5,$a6
    sd	$a6,504($sp)
    b	.L5ef667ac
    sd	$a5,232($sp)
.L5ef6671c:
    lh	$t0,6($s7)
    slt	$a7,$a7,$t0
    bnez	$a7,.L5ef66730
    ori	$a5,$a5,0x1
    sd	$a5,448($sp)
.L5ef66730:
    ld	$a6,368($sp)
    li	$t0,4
    slt	$a6,$a6,$a0
    beqz	$a6,.L5ef66830
    li	$a7,8
    sd	$a7,440($sp)
.L5ef66748:
    ld	$t0,376($sp)
.L5ef6674c:
    ld	$a7,440($sp)
    slt	$t0,$t0,$a1
    beqz	$t0,.L5ef6684c
    ld	$a5,376($sp)
    ld	$a5,440($sp)
    ori	$a5,$a5,0x2
    sd	$a5,440($sp)
.L5ef66768:
    ld	$a7,448($sp)
    ld	$a6,440($sp)
    ld	$t0,440($sp)
    or	$a6,$a6,$a7
    beqz	$a6,.L5ef67134
    sd	$a6,328($sp)
    ld	$a5,448($sp)
    and	$t0,$t0,$a5
    beqz	$t0,.L5ef66864
    addiu	$a7,$sp,100
    addiu	$s7,$s7,8
.L5ef66794:
    ld	$a6,384($sp)
.L5ef66798:
    ld	$a7,352($sp)
    sd	$s7,472($sp)
    addiu	$a6,$a6,1
    beq	$a6,$a7,.L5ef671b8
    sd	$a6,384($sp)
.L5ef667ac:
    sd	$zero,448($sp)
    ld	$a6,432($sp)
    ld	$a0,472($sp)
    sd	$s6,488($sp)
    ld	$t0,464($sp)
    lh	$a0,0($a0)
    ld	$s7,472($sp)
    li	$a5,8
    slt	$t0,$t0,$a0
    beqz	$t0,.L5ef66808
    sd	$zero,440($sp)
    ld	$s6,488($sp)
    li	$s8,1000
    sd	$a5,448($sp)
.L5ef667e4:
    lh	$a1,2($s7)
    ld	$a5,448($sp)
    slt	$a6,$a6,$a1
    beqz	$a6,.L5ef6671c
    ld	$a7,432($sp)
    ld	$a7,448($sp)
    ori	$a7,$a7,0x2
    b	.L5ef66730
    sd	$a7,448($sp)
.L5ef66808:
    ld	$s7,472($sp)
    ld	$t0,464($sp)
    lh	$s6,4($s7)
    li	$s8,1000
    slt	$t0,$t0,$s6
    bnez	$t0,.L5ef667e4
    ld	$s6,488($sp)
    li	$a5,4
    b	.L5ef667e4
    sd	$a5,448($sp)
.L5ef66830:
    lh	$a7,4($s7)
    ld	$a6,368($sp)
    slt	$a6,$a6,$a7
    bnezl	$a6,.L5ef6674c
    ld	$t0,376($sp)
    b	.L5ef66748
    sd	$t0,440($sp)
.L5ef6684c:
    lh	$a6,6($s7)
    slt	$a5,$a5,$a6
    bnez	$a5,.L5ef66768
    ori	$a7,$a7,0x1
    b	.L5ef66768
    sd	$a7,440($sp)
.L5ef66864:
    addiu	$a6,$sp,96
    addiu	$a5,$sp,92
    addiu	$a4,$sp,88
    addiu	$t2,$sp,104
    addiu	$t3,$sp,108
    sw	$zero,108($sp)
    sw	$zero,104($sp)
    # lw $t9, -30532($gp)
    ld	$ra,448($sp)
    ld	$t0,256($sp)
    ld	$t1,272($sp)
    ld	$t8,224($sp)
    ld	$v0,376($sp)
    ld	$at,440($sp)
    ld	$v1,368($sp)
    sw	$v0,100($sp)
    ld	$a2,432($sp)
    sw	$v1,96($sp)
    ld	$a3,464($sp)
    sw	$a2,92($sp)
    lh	$a2,4($s7)
    sw	$a3,88($sp)
    lh	$a3,6($s7)
    sw	$at,60($sp)
    sw	$zero,44($sp)
    sw	$t8,36($sp)
    sw	$t3,28($sp)
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    sw	$t0,4($sp)
    sw	$ra,52($sp)
    addiu	$a3,$a3,-1
    jal	miZeroClipLine
    addiu	$a2,$a2,-1
    move	$ra,$zero
    li	$a5,-1
    beq	$v0,$a5,.L5ef6783c
    lw	$v1,100($sp)
    beqz	$s4,.L5ef67868
    lw	$a0,92($sp)
    subu	$v0,$v1,$a0
    blez	$v0,.L5ef678cc
    move	$at,$v0
.L5ef66910:
    move	$a6,$at
    sd	$at,456($sp)
.L5ef66918:
    lw	$a5,104($sp)
    lw	$t0,108($sp)
    ld	$a7,456($sp)
    lw	$a0,92($sp)
    sltu	$t0,$zero,$t0
    addu	$a7,$t0,$a7
    beqz	$a7,.L5ef67120
    sd	$a7,456($sp)
    ld	$s8,360($sp)
    ld	$a4,336($sp)
    beqz	$a5,.L5ef678d8
    ld	$at,464($sp)
    lw	$a1,88($sp)
    subu	$at,$a1,$at
    blez	$at,.L5ef67bd8
    move	$a3,$at
.L5ef66958:
    ld	$at,432($sp)
    subu	$at,$a0,$at
    blez	$at,.L5ef67be4
    move	$v1,$at
.L5ef66968:
    ld	$a1,400($sp)
    ld	$a5,400($sp)
    ld	$at,496($sp)
    beqz	$s4,.L5ef67bf0
    lhu	$at,10($at)
    subu	$a6,$v1,$a3
    mult	$a6,$s5
    ld	$a5,192($sp)
    mflo	$a6
    mult	$a3,$a5
    ld	$v0,360($sp)
    addu	$a1,$a4,$a1
    lbu	$a1,0($a1)
    move	$t8,$at
    subu	$v0,$a1,$v0
    mflo	$a7
    addu	$a6,$a6,$a7
    ld	$a7,344($sp)
    subu	$t1,$a1,$v0
    slt	$a5,$v1,$t1
    addu	$a6,$a6,$a7
    beqz	$a5,.L5ef66bd0
    sd	$a6,416($sp)
    b	.L5ef66d1c
    addu	$v0,$v1,$v0
.L5ef669d4:
    ld	$v1,400($sp)
.L5ef669d8:
    ld	$v0,336($sp)
    ld	$at,360($sp)
    addu	$v0,$v0,$v1
    lbu	$v0,0($v0)
    ld	$ra,496($sp)
    subu	$v1,$t2,$a2
    subu	$at,$v0,$at
    subu	$a1,$v0,$at
    slt	$a7,$v1,$a1
    beqz	$a7,.L5ef66a88
    lhu	$ra,10($ra)
    b	.L5ef66470
    addu	$at,$at,$v1
.L5ef66a0c:
    ld	$a6,368($sp)
    ld	$a5,376($sp)
    sd	$a6,248($sp)
    b	.L5ef664bc
    sd	$a5,240($sp)
.L5ef66a20:
    addiu	$a4,$sp,68
.L5ef66a24:
    addiu	$a1,$sp,64
    sd	$t9,600($sp)
    # lw $t9, -30456($gp)
    ld	$a3,496($sp)
    ld	$t0,400($sp)
    ld	$a7,336($sp)
    ld	$a0,600($sp)
    move	$a2,$t0
    addu	$a7,$a7,$t0
    ld	$t0,360($sp)
    lbu	$a7,0($a7)
    lhu	$a3,10($a3)
    subu	$a0,$t2,$a0
    subu	$a7,$a7,$t0
    jal	miStepDash
    sw	$a7,68($sp)
    lw	$a5,64($sp)
    ld	$a6,400($sp)
    sd	$a5,336($sp)
    addu	$a5,$a5,$a6
    lw	$a6,68($sp)
    lbu	$a5,0($a5)
    subu	$a5,$a5,$a6
    b	.L5ef66478
    sd	$a5,360($sp)
.L5ef66a88:
    ld	$t8,336($sp)
    addiu	$t8,$t8,1
    bne	$t8,$ra,.L5ef66a9c
    subu	$t3,$v1,$a1
    move	$t8,$zero
.L5ef66a9c:
    blez	$ra,.L5ef66b90
    move	$a3,$zero
    ld	$t2,400($sp)
    move	$v0,$ra
    andi	$v1,$ra,0x3
    move	$at,$t2
    beqz	$v1,.L5ef66ad0
    addu	$t2,$ra,$t2
.L5ef66abc:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef66abc
    addu	$a3,$a5,$a3
.L5ef66ad0:
    move	$a1,$a3
    sra	$v1,$v0,0x2
    beqz	$v1,.L5ef66b90
    move	$a2,$at
    slti	$a6,$v1,2
    bnez	$a6,.L5ef68fd8
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$t2,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef66b0c:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef67d80
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef67d6c
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef66b0c
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef66b80:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef66b90:
    slt	$a6,$t3,$a3
    bnez	$a6,.L5ef66bb4
    ld	$at,400($sp)
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t3
    ld	$at,400($sp)
.L5ef66bb4:
    addu	$at,$t8,$at
    lbu	$v1,0($at)
    slt	$a7,$t3,$v1
    bnez	$a7,.L5ef6645c
    ld	$v0,400($sp)
    b	.L5ef676ac
    addu	$v0,$ra,$v0
.L5ef66bd0:
    addiu	$t3,$a4,1
    bne	$t3,$t8,.L5ef66be0
    subu	$t2,$v1,$t1
    move	$t3,$zero
.L5ef66be0:
    move	$a3,$zero
    blez	$t8,.L5ef66cd4
    andi	$v1,$t8,0x3
    ld	$a1,400($sp)
    move	$v0,$t8
    move	$at,$a1
    beqz	$v1,.L5ef66c14
    addu	$a1,$t8,$a1
.L5ef66c00:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef66c00
    addu	$a3,$a5,$a3
.L5ef66c14:
    move	$v1,$a3
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef66cd4
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef69030
    move	$at,$v1
    lbu	$a0,2($a2)
    addiu	$a5,$a1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$v1
    move	$a1,$a7
.L5ef66c50:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef67da8
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef67d94
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef66c50
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef66cc4:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef66cd4:
    slt	$a6,$t2,$a3
    bnez	$a6,.L5ef66cf4
    ld	$v0,400($sp)
    div	$zero,$t2,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
.L5ef66cf4:
    addu	$v0,$t3,$v0
    lbu	$at,0($v0)
    slt	$a7,$t2,$at
    bnez	$a7,.L5ef66d10
    ld	$v1,400($sp)
    b	.L5ef676d8
    addu	$v1,$t8,$v1
.L5ef66d10:
    move	$a4,$t3
    move	$v0,$t2
    move	$a1,$at
.L5ef66d1c:
    subu	$s8,$a1,$v0
.L5ef66d20:
    ld	$at,496($sp)
    li	$a2,1
    lw	$a6,nfbGCPrivateIndex
    lw	$s6,12($at)
    lw	$s7,76($at)
    lw	$at,0($at)
    sll	$a6,$a6,0x2
    lw	$a5,expScreenPrivateIndex
    lw	$at,436($at)
    addu	$s7,$s7,$a6
    sll	$a5,$a5,0x2
    addu	$at,$at,$a5
    ld	$a5,424($sp)
    lw	$at,0($at)
    lw	$s7,0($s7)
    beqz	$a5,.L5ef66d68
    lw	$at,0($at)
    li	$a2,2
.L5ef66d68:
    addiu	$a5,$a4,1
    lui	$t8,0x4
    blez	$a2,.L5ef67120
    lw	$a0,92($sp)
    addu	$t8,$t8,$at
    ld	$t9,456($sp)
    lw	$a1,88($sp)
    sd	$a5,528($sp)
    slt	$t9,$t9,$s8
    sd	$t9,520($sp)
    b	.L5ef66da4
    andi	$t9,$a4,0x1
.L5ef66d98:
    addiu	$ra,$ra,1
.L5ef66d9c:
    beq	$ra,$a2,.L5ef67120
    nop
.L5ef66da4:
    move	$s3,$a4
    move	$s0,$s8
    ld	$v0,416($sp)
    ld	$a5,424($sp)
    move	$t2,$a1
    move	$t1,$a0
    beqz	$a5,.L5ef66e70
    ld	$at,456($sp)
    li	$t3,13
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    beqz	$ra,.L5ef6704c
    sw	$zero,1960($t8)
    lw	$a6,68($s7)
    sd	$a6,512($sp)
.L5ef66df0:
    ld	$v1,408($sp)
    lw	$a3,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lw	$v1,0($v1)
    li	$a5,14
    lw	$v1,20($v1)
    li	$a6,12
    li	$a7,4107
    beq	$t3,$v1,.L5ef67058
    move	$a3,$v1
    beql	$a5,$a3,.L5ef670a0
    li	$a6,4107
    beq	$a6,$a3,.L5ef67084
    li	$t3,4104
    ori	$a3,$v1,0x1000
    sw	$a3,1324($t8)
    sw	$zero,1236($t8)
    lbu	$t3,21($s7)
    lw	$a3,76($s7)
    sll	$t3,$t3,0x3
.L5ef66e48:
    lui	$a6,0xff
    ld	$a7,512($sp)
    ori	$a6,$a6,0xffff
    and	$a6,$a3,$a6
    sw	$a7,1328($t8)
    sw	$a6,1916($t8)
    lbu	$a5,72($s7)
    sw	$a5,1916($t8)
    sw	$t3,1916($t8)
    sw	$zero,1228($t8)
.L5ef66e70:
    move	$a3,$zero
    beq	$ra,$t9,.L5ef66efc
    ld	$v1,456($sp)
    ld	$a7,520($sp)
    beqz	$a7,.L5ef670bc
    nop
.L5ef66e88:
    subu	$s0,$s8,$v1
    beqz	$s0,.L5ef670c4
    ld	$at,456($sp)
.L5ef66e94:
    subu	$at,$at,$v1
    blez	$at,.L5ef66efc
    nop
    mult	$v1,$s5
    ld	$a5,416($sp)
    mflo	$v0
    addu	$v0,$v0,$a5
    bltz	$v0,.L5ef670e8
    addu	$t1,$v1,$a0
    ld	$a7,504($sp)
    div	$zero,$v0,$a7
    mflo	$a3
    nop
    addiu	$a3,$a3,1
    mult	$a7,$a3
    teq	$a7,$zero,0x7
    mflo	$a6
    nop
    subu	$v0,$v0,$a6
    beqzl	$s4,.L5ef670f4
    subu	$t1,$a0,$a3
.L5ef66ee8:
    blez	$s2,.L5ef67074
    subu	$t2,$a1,$a3
    blez	$s1,.L5ef66efc
    nop
.L5ef66ef8:
    addu	$t2,$a3,$a1
.L5ef66efc:
    beqzl	$at,.L5ef66d9c
    addiu	$ra,$ra,1
    b	.L5ef66f88
    move	$v1,$s0
.L5ef66f0c:
    move	$a3,$s0
.L5ef66f10:
    subu	$s0,$s0,$a3
    beqz	$s0,.L5ef67004
    ld	$a5,496($sp)
.L5ef66f1c:
    subu	$at,$at,$a3
    blez	$at,.L5ef66f80
    addu	$t3,$v1,$a3
    mult	$t3,$s5
    mflo	$a5
    addu	$v0,$a5,$v0
    bltz	$v0,.L5ef66f64
    move	$v1,$zero
    ld	$a7,504($sp)
    div	$zero,$v0,$a7
    mflo	$v1
    nop
    addiu	$v1,$v1,1
    mult	$a7,$v1
    teq	$a7,$zero,0x7
    mflo	$a6
    nop
    subu	$v0,$v0,$a6
.L5ef66f64:
    beqz	$s4,.L5ef67024
    nop
    blez	$s2,.L5ef66fd0
    nop
    blez	$s1,.L5ef66fd8
    addu	$t1,$t1,$t3
.L5ef66f7c:
    addu	$t2,$t2,$v1
.L5ef66f80:
    beqz	$at,.L5ef66d98
    move	$v1,$s0
.L5ef66f88:
    slt	$a5,$at,$s0
    beqz	$a5,.L5ef66f98
    negu	$a6,$v0
    move	$v1,$at
.L5ef66f98:
    subu	$s0,$s0,$v1
    sw	$t2,1916($t8)
    sw	$t1,1916($t8)
    sw	$a6,1916($t8)
    sw	$s1,1916($t8)
    sw	$s2,1916($t8)
    beqz	$s0,.L5ef66fe0
    sw	$v1,1916($t8)
.L5ef66fb8:
    subu	$at,$at,$v1
    slt	$a7,$at,$s0
    beqz	$a7,.L5ef66f0c
    move	$a3,$at
    b	.L5ef66f10
    nop
.L5ef66fd0:
    bgtz	$s1,.L5ef66f7c
    subu	$t1,$t1,$t3
.L5ef66fd8:
    b	.L5ef66f80
    subu	$t2,$t2,$v1
.L5ef66fe0:
    ld	$t0,496($sp)
    lhu	$t0,10($t0)
    addiu	$s3,$s3,1
    bne	$t0,$s3,.L5ef66ffc
    addu	$s0,$s3,$s6
    move	$s3,$zero
    addu	$s0,$s3,$s6
.L5ef66ffc:
    b	.L5ef66fb8
    lbu	$s0,0($s0)
.L5ef67004:
    lhu	$a5,10($a5)
    addiu	$s3,$s3,1
    bne	$a5,$s3,.L5ef6701c
    addu	$s0,$s3,$s6
    move	$s3,$zero
    addu	$s0,$s3,$s6
.L5ef6701c:
    b	.L5ef66f1c
    lbu	$s0,0($s0)
.L5ef67024:
    blez	$s1,.L5ef6703c
    nop
    blez	$s2,.L5ef67044
    addu	$t2,$t2,$t3
.L5ef67034:
    b	.L5ef66f80
    addu	$t1,$t1,$v1
.L5ef6703c:
    bgtz	$s2,.L5ef67034
    subu	$t2,$t2,$t3
.L5ef67044:
    b	.L5ef66f80
    subu	$t1,$t1,$v1
.L5ef6704c:
    lw	$a5,64($s7)
    b	.L5ef66df0
    sd	$a5,512($sp)
.L5ef67058:
    sw	$a7,1324($t8)
    lw	$a6,76($s7)
    li	$t3,1
    move	$a3,$zero
    andi	$a6,$a6,0x3
    b	.L5ef66e48
    sw	$a6,1236($t8)
.L5ef67074:
    bgtz	$s1,.L5ef66ef8
    subu	$t1,$a0,$v1
    b	.L5ef66efc
    nop
.L5ef67084:
    sw	$t3,1324($t8)
    lw	$t0,76($s7)
    move	$a3,$zero
    li	$t3,1
    andi	$t0,$t0,0xf
    b	.L5ef66e48
    sw	$t0,1236($t8)
.L5ef670a0:
    sw	$a6,1324($t8)
    lw	$a5,76($s7)
    li	$t3,9
    move	$a3,$zero
    andi	$a5,$a5,0xc
    b	.L5ef66e48
    sw	$a5,1236($t8)
.L5ef670bc:
    b	.L5ef66e88
    move	$v1,$s8
.L5ef670c4:
    ld	$a7,496($sp)
    ld	$t0,528($sp)
    lhu	$a7,10($a7)
    bne	$a7,$t0,.L5ef670dc
    move	$s3,$t0
    move	$s3,$zero
.L5ef670dc:
    addu	$s0,$s3,$s6
    b	.L5ef66e94
    lbu	$s0,0($s0)
.L5ef670e8:
    bnez	$s4,.L5ef66ee8
    nop
    subu	$t1,$a0,$a3
.L5ef670f4:
    blez	$s1,.L5ef67110
    addu	$t2,$v1,$a1
    blez	$s2,.L5ef66efc
    nop
.L5ef67104:
    addu	$t1,$a3,$a0
    b	.L5ef66efc
    nop
.L5ef67110:
    bgtz	$s2,.L5ef67104
    subu	$t2,$a1,$v1
    b	.L5ef66efc
    nop
.L5ef67120:
    li	$s8,1000
    ld	$s7,472($sp)
    ld	$s6,488($sp)
    b	.L5ef66794
    addiu	$s7,$s7,8
.L5ef67134:
    beqz	$s4,.L5ef68250
    ld	$a0,272($sp)
.L5ef6713c:
    ld	$a1,496($sp)
    li	$a4,1
    lw	$a6,nfbGCPrivateIndex
    lw	$s7,12($a1)
    lw	$s8,76($a1)
    lw	$a1,0($a1)
    sll	$a6,$a6,0x2
    lw	$a5,expScreenPrivateIndex
    lw	$a1,436($a1)
    addu	$s8,$s8,$a6
    sll	$a5,$a5,0x2
    addu	$a1,$a1,$a5
    ld	$a5,424($sp)
    lw	$a1,0($a1)
    lw	$s8,0($s8)
    beqz	$a5,.L5ef67184
    lw	$a1,0($a1)
    li	$a4,2
.L5ef67184:
    blez	$a4,.L5ef671a0
    ld	$t9,360($sp)
    move	$ra,$zero
    ld	$a2,336($sp)
    slt	$t9,$a0,$t9
    b	.L5ef67218
    andi	$a2,$a2,0x1
.L5ef671a0:
    li	$s8,1000
    move	$a6,$s0
    sd	$s0,360($sp)
    move	$a5,$s3
    sd	$s3,336($sp)
    sw	$s3,64($sp)
.L5ef671b8:
    ld	$a7,328($sp)
    beqz	$a7,.L5ef66478
    ld	$v1,400($sp)
    ld	$v0,336($sp)
    ld	$at,496($sp)
    addu	$v0,$v0,$v1
    ld	$v1,360($sp)
    lbu	$v0,0($v0)
    lhu	$at,10($at)
    subu	$v1,$v0,$v1
    beqz	$s4,.L5ef67dbc
    subu	$a1,$v0,$v1
    ld	$a5,272($sp)
    slt	$a5,$a5,$a1
    beqz	$a5,.L5ef676f4
    move	$ra,$at
    ld	$a6,272($sp)
    addu	$v1,$a6,$v1
.L5ef67200:
    subu	$a7,$v0,$v1
    b	.L5ef66478
    sd	$a7,360($sp)
.L5ef6720c:
    addiu	$ra,$ra,1
    beq	$ra,$a4,.L5ef671a0
    nop
.L5ef67218:
    ld	$s3,336($sp)
    ld	$s0,360($sp)
    ld	$v0,344($sp)
    ld	$t0,424($sp)
    ld	$t1,464($sp)
    ld	$t2,432($sp)
    beqz	$t0,.L5ef672e4
    move	$at,$a0
    lui	$t8,0x4
    addu	$t8,$t8,$a1
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    sw	$zero,1916($t8)
    beqz	$ra,.L5ef674c4
    sw	$zero,1960($t8)
    lw	$a3,68($s8)
.L5ef67264:
    ld	$v1,408($sp)
    lw	$a6,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    sll	$a6,$a6,0x2
    addu	$v1,$v1,$a6
    lw	$v1,0($v1)
    lw	$v1,20($v1)
    li	$a5,13
    li	$a6,12
    beq	$a5,$v1,.L5ef674cc
    move	$t3,$v1
    li	$a5,14
    beq	$a5,$t3,.L5ef67524
    li	$t0,4107
    beq	$a6,$t3,.L5ef67504
    ori	$t0,$v1,0x1000
    sw	$t0,1324($t8)
    sw	$zero,1236($t8)
    lbu	$a7,21($s8)
    lw	$t3,76($s8)
    sll	$a7,$a7,0x3
    sd	$a7,480($sp)
    move	$v1,$a7
.L5ef672c0:
    sw	$a3,1328($t8)
    lui	$a6,0xff
    ori	$a6,$a6,0xffff
    and	$a6,$t3,$a6
    sw	$a6,1916($t8)
    lbu	$a5,72($s8)
    sw	$a5,1916($t8)
    sw	$v1,1916($t8)
    sw	$zero,1228($t8)
.L5ef672e4:
    ld	$v1,360($sp)
    beq	$ra,$a2,.L5ef67368
    ld	$a7,504($sp)
    beqz	$t9,.L5ef672fc
    nop
    move	$v1,$a0
.L5ef672fc:
    ld	$s0,360($sp)
    subu	$s0,$s0,$v1
    beqz	$s0,.L5ef67540
    subu	$at,$a0,$v1
.L5ef6730c:
    blez	$at,.L5ef67368
    ld	$a5,344($sp)
    mult	$v1,$s5
    ld	$t2,432($sp)
    mflo	$v0
    addu	$v0,$v0,$a5
    bltz	$v0,.L5ef67564
    ld	$t1,464($sp)
    div	$zero,$v0,$a7
    mflo	$a3
    nop
    addiu	$a3,$a3,1
    mult	$a7,$a3
    teq	$a7,$zero,0x7
    mflo	$a6
    nop
    subu	$v0,$v0,$a6
    beqz	$s4,.L5ef67570
    nop
.L5ef67358:
    blez	$s2,.L5ef674ec
    addu	$t2,$v1,$t2
    blez	$s1,.L5ef674f8
.L5ef67364:
    addu	$t1,$t1,$a3
.L5ef67368:
    lui	$t8,0x4
    beqz	$at,.L5ef6720c
    addu	$t8,$t8,$a1
    b	.L5ef673f8
    move	$a3,$s0
.L5ef6737c:
    move	$v1,$s0
.L5ef67380:
    subu	$s0,$s0,$v1
    beqz	$s0,.L5ef67474
    ld	$a5,496($sp)
.L5ef6738c:
    subu	$at,$at,$v1
    blez	$at,.L5ef673f0
    addu	$t3,$a3,$v1
    mult	$t3,$s5
    mflo	$a5
    addu	$v0,$a5,$v0
    bltz	$v0,.L5ef67494
    move	$v1,$zero
    ld	$a7,504($sp)
    div	$zero,$v0,$a7
    mflo	$v1
    nop
    addiu	$v1,$v1,1
    mult	$a7,$v1
    teq	$a7,$zero,0x7
    mflo	$a6
    nop
    subu	$v0,$v0,$a6
    beqz	$s4,.L5ef6749c
    nop
.L5ef673dc:
    blez	$s2,.L5ef67440
    nop
    blez	$s1,.L5ef67448
    addu	$t2,$t3,$t2
.L5ef673ec:
    addu	$t1,$t1,$v1
.L5ef673f0:
    beqz	$at,.L5ef6720c
    move	$a3,$s0
.L5ef673f8:
    slt	$a5,$at,$s0
    beqz	$a5,.L5ef67408
    negu	$a6,$v0
    move	$a3,$at
.L5ef67408:
    subu	$at,$at,$a3
    subu	$s0,$s0,$a3
    sw	$t1,1916($t8)
    sw	$t2,1916($t8)
    sw	$a6,1916($t8)
    sw	$s1,1916($t8)
    sw	$s2,1916($t8)
    beqz	$s0,.L5ef67450
    sw	$a3,1916($t8)
.L5ef6742c:
    slt	$a7,$at,$s0
    beqz	$a7,.L5ef6737c
    move	$v1,$at
    b	.L5ef67380
    nop
.L5ef67440:
    bgtz	$s1,.L5ef673ec
    subu	$t2,$t2,$t3
.L5ef67448:
    b	.L5ef673f0
    subu	$t1,$t1,$v1
.L5ef67450:
    ld	$t0,496($sp)
    lhu	$t0,10($t0)
    addiu	$s3,$s3,1
    bne	$t0,$s3,.L5ef6746c
    addu	$s0,$s3,$s7
    move	$s3,$zero
    addu	$s0,$s3,$s7
.L5ef6746c:
    b	.L5ef6742c
    lbu	$s0,0($s0)
.L5ef67474:
    lhu	$a5,10($a5)
    addiu	$s3,$s3,1
    bne	$a5,$s3,.L5ef6748c
    addu	$s0,$s3,$s7
    move	$s3,$zero
    addu	$s0,$s3,$s7
.L5ef6748c:
    b	.L5ef6738c
    lbu	$s0,0($s0)
.L5ef67494:
    bnez	$s4,.L5ef673dc
    nop
.L5ef6749c:
    blez	$s1,.L5ef674b4
    nop
    blez	$s2,.L5ef674bc
    addu	$t1,$t3,$t1
.L5ef674ac:
    b	.L5ef673f0
    addu	$t2,$t2,$v1
.L5ef674b4:
    bgtz	$s2,.L5ef674ac
    subu	$t1,$t1,$t3
.L5ef674bc:
    b	.L5ef673f0
    subu	$t2,$t2,$v1
.L5ef674c4:
    b	.L5ef67264
    lw	$a3,64($s8)
.L5ef674cc:
    li	$a6,4107
    sw	$a6,1324($t8)
    lw	$a5,76($s8)
    li	$v1,1
    move	$t3,$zero
    andi	$a5,$a5,0x3
    b	.L5ef672c0
    sw	$a5,1236($t8)
.L5ef674ec:
    ld	$t2,432($sp)
    bgtz	$s1,.L5ef67364
    subu	$t2,$t2,$v1
.L5ef674f8:
    ld	$t1,464($sp)
    b	.L5ef67368
    subu	$t1,$t1,$a3
.L5ef67504:
    li	$a6,4104
    sw	$a6,1324($t8)
    lw	$a5,76($s8)
    li	$v1,1
    move	$t3,$zero
    andi	$a5,$a5,0xf
    b	.L5ef672c0
    sw	$a5,1236($t8)
.L5ef67524:
    sw	$t0,1324($t8)
    lw	$a7,76($s8)
    li	$v1,9
    move	$t3,$zero
    andi	$a7,$a7,0xc
    b	.L5ef672c0
    sw	$a7,1236($t8)
.L5ef67540:
    ld	$a5,496($sp)
    ld	$a6,232($sp)
    lhu	$a5,10($a5)
    bne	$a5,$a6,.L5ef67558
    move	$s3,$a6
    move	$s3,$zero
.L5ef67558:
    addu	$s0,$s3,$s7
    b	.L5ef6730c
    lbu	$s0,0($s0)
.L5ef67564:
    move	$a3,$zero
    bnez	$s4,.L5ef67358
    nop
.L5ef67570:
    blez	$s1,.L5ef6758c
    ld	$t1,464($sp)
    addu	$t1,$v1,$t1
    blez	$s2,.L5ef67598
.L5ef67580:
    ld	$t2,432($sp)
    b	.L5ef67368
    addu	$t2,$t2,$a3
.L5ef6758c:
    ld	$t1,464($sp)
    bgtz	$s2,.L5ef67580
    subu	$t1,$t1,$v1
.L5ef67598:
    ld	$t2,432($sp)
    b	.L5ef67368
    subu	$t2,$t2,$a3
.L5ef675a4:
    ld	$t9,168($sp)
    ld	$t2,176($sp)
.L5ef675ac:
    ld	$a6,472($sp)
    ld	$a5,352($sp)
    addiu	$a6,$a6,8
    addiu	$a5,$a5,-1
    sd	$a5,352($sp)
    beqz	$a5,.L5ef66a20
    sd	$a6,472($sp)
    ld	$a1,472($sp)
    lh	$a1,2($a1)
    slt	$a7,$t2,$a1
    bnez	$a7,.L5ef66a20
    ld	$a5,472($sp)
.L5ef675dc:
    ld	$v1,472($sp)
    move	$at,$t2
    lh	$a5,0($a5)
    move	$s1,$a1
    addiu	$s4,$a3,1
    slt	$a5,$t8,$a5
    bnez	$a5,.L5ef675ac
    ld	$a6,472($sp)
    lh	$a6,4($a6)
    slt	$a6,$t8,$a6
    beqz	$a6,.L5ef675ac
    slt	$a7,$a1,$t9
    beqz	$a7,.L5ef67618
    nop
    move	$s1,$t9
.L5ef67618:
    lh	$v1,6($v1)
    move	$a5,$s1
    slt	$t0,$t2,$v1
    bnez	$t0,.L5ef67630
    sd	$s1,320($sp)
    move	$at,$v1
.L5ef67630:
    move	$a6,$at
    move	$a7,$t2
    beq	$s1,$at,.L5ef675ac
    sd	$at,312($sp)
    move	$t0,$t9
    sd	$t9,168($sp)
    beqz	$t3,.L5ef68524
    sd	$t2,176($sp)
    ld	$s5,496($sp)
    slt	$a5,$t2,$v1
    bnez	$a5,.L5ef678f8
    ld	$a1,400($sp)
    lhu	$s5,10($s5)
    addiu	$s7,$at,-1
    move	$a7,$s7
    addu	$a1,$a3,$a1
    lbu	$a1,0($a1)
    subu	$t1,$t2,$at
    addiu	$a6,$t1,1
    subu	$v1,$a1,$v0
    subu	$ra,$a1,$v1
    slt	$a6,$a6,$ra
    beqz	$a6,.L5ef68258
    sd	$s7,312($sp)
    addu	$v1,$v1,$t1
    b	.L5ef678f0
    addiu	$v1,$v1,1
.L5ef6769c:
    lbu	$v1,0($at)
    slt	$a5,$t3,$v1
    bnez	$a5,.L5ef6645c
    nop
.L5ef676ac:
    addiu	$t8,$t8,1
    addiu	$at,$at,1
    bne	$at,$v0,.L5ef6769c
    subu	$t3,$t3,$v1
    move	$t8,$zero
    b	.L5ef6769c
    ld	$at,400($sp)
.L5ef676c8:
    lbu	$at,0($v0)
    slt	$a6,$t2,$at
    bnez	$a6,.L5ef66d10
    nop
.L5ef676d8:
    addiu	$t3,$t3,1
    addiu	$v0,$v0,1
    bne	$v0,$v1,.L5ef676c8
    subu	$t2,$t2,$at
    move	$t3,$zero
    b	.L5ef676c8
    ld	$v0,400($sp)
.L5ef676f4:
    ld	$t8,336($sp)
    ld	$t3,272($sp)
    addiu	$t8,$t8,1
    bne	$t8,$ra,.L5ef6770c
    subu	$t3,$t3,$a1
    move	$t8,$zero
.L5ef6770c:
    blez	$ra,.L5ef677fc
    move	$a3,$zero
    ld	$v1,400($sp)
    move	$v0,$ra
    andi	$a1,$ra,0x3
    move	$at,$v1
    beqz	$a1,.L5ef67740
    addu	$v1,$ra,$v1
.L5ef6772c:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef6772c
    addu	$a3,$a5,$a3
.L5ef67740:
    move	$t2,$a3
    sra	$a1,$v0,0x2
    beqz	$a1,.L5ef677fc
    move	$a2,$at
    slti	$a6,$a1,2
    bnez	$a6,.L5ef69088
    move	$at,$t2
    lbu	$a0,2($a2)
    lbu	$a1,1($a2)
    addiu	$a5,$v1,-4
    lbu	$at,0($a2)
    addiu	$a4,$a5,-8
    addiu	$a3,$a5,-4
    addu	$at,$at,$t2
.L5ef67778:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef67dec
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef67dd8
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef67778
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef677ec:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef677fc:
    slt	$a6,$t3,$a3
    bnez	$a6,.L5ef67820
    ld	$v0,400($sp)
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t3
    ld	$v0,400($sp)
.L5ef67820:
    addu	$v0,$t8,$v0
    lbu	$at,0($v0)
    slt	$a7,$t3,$at
    bnez	$a7,.L5ef678b4
    ld	$v1,400($sp)
    b	.L5ef67898
    addu	$v1,$ra,$v1
.L5ef6783c:
    addiu	$s7,$s7,8
    b	.L5ef66798
    ld	$a6,384($sp)
.L5ef67848:
    ld	$a5,368($sp)
    subu	$a5,$t8,$a5
    bgtz	$s2,.L5ef66684
    sd	$a5,256($sp)
.L5ef67858:
    ld	$a6,376($sp)
    subu	$a6,$ra,$a6
    b	.L5ef6668c
    sd	$a6,272($sp)
.L5ef67868:
    lw	$v1,96($sp)
    lw	$a1,88($sp)
    subu	$v0,$v1,$a1
    blez	$v0,.L5ef686cc
    move	$at,$v0
.L5ef6787c:
    move	$a7,$at
    b	.L5ef66918
    sd	$at,456($sp)
.L5ef67888:
    lbu	$at,0($v0)
    slt	$t0,$t3,$at
    bnez	$t0,.L5ef678b4
    nop
.L5ef67898:
    addiu	$t8,$t8,1
    addiu	$v0,$v0,1
    bne	$v0,$v1,.L5ef67888
    subu	$t3,$t3,$at
    move	$t8,$zero
    b	.L5ef67888
    ld	$v0,400($sp)
.L5ef678b4:
    sd	$t8,336($sp)
    sw	$t8,64($sp)
    move	$v1,$t3
    move	$v0,$t8
    b	.L5ef67200
    move	$v0,$at
.L5ef678cc:
    subu	$at,$a0,$v1
    b	.L5ef66910
    nop
.L5ef678d8:
    ld	$a5,344($sp)
    b	.L5ef66d20
    sd	$a5,416($sp)
.L5ef678e4:
    move	$a3,$s4
    move	$v1,$s2
    move	$a1,$at
.L5ef678f0:
    subu	$v0,$a1,$v1
    move	$t2,$s7
.L5ef678f8:
    beq	$s1,$t9,.L5ef6790c
    ld	$a6,424($sp)
    addiu	$t9,$s1,-1
    sd	$t9,320($sp)
.L5ef67908:
    ld	$a6,424($sp)
.L5ef6790c:
    move	$s1,$v0
    beqz	$a6,.L5ef6791c
    li	$s2,1
    li	$s2,2
.L5ef6791c:
    ld	$t1,312($sp)
    ld	$s7,320($sp)
    move	$s4,$a3
    blez	$s2,.L5ef675a4
    andi	$s5,$s4,0x1
    addiu	$a0,$s4,1
    move	$a1,$zero
    subu	$t1,$t1,$s7
    b	.L5ef67954
    slt	$s7,$t1,$s1
.L5ef67944:
    addiu	$a1,$a1,1
.L5ef67948:
    ld	$t9,320($sp)
    beq	$a1,$s2,.L5ef675a4
    ld	$t2,312($sp)
.L5ef67954:
    ld	$a5,424($sp)
    move	$a3,$s4
    move	$v0,$s1
    beqz	$a5,.L5ef67a1c
    move	$at,$t1
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    beqz	$a1,.L5ef67b44
    sw	$zero,1960($s6)
    ld	$ra,392($sp)
    lw	$ra,68($ra)
.L5ef67990:
    ld	$v1,408($sp)
    lw	$a4,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    li	$a6,4107
    lw	$v1,20($v1)
    li	$a2,1
    li	$a5,13
    beq	$a5,$v1,.L5ef67b50
    move	$a4,$v1
    li	$a5,14
    beq	$a5,$a4,.L5ef67b88
    li	$a2,1
    li	$a6,12
    beq	$a6,$a4,.L5ef67b6c
    li	$t0,4104
    ori	$a5,$v1,0x1000
    ld	$a4,392($sp)
    sw	$a5,1324($s6)
    sw	$zero,1236($s6)
    lbu	$a2,21($a4)
    lw	$a4,76($a4)
    sll	$a2,$a2,0x3
.L5ef679f4:
    ld	$a6,392($sp)
    sw	$ra,1328($s6)
    lui	$a7,0xff
    ori	$a7,$a7,0xffff
    and	$a7,$a4,$a7
    sw	$a7,1916($s6)
    lbu	$a6,72($a6)
    sw	$a6,1916($s6)
    sw	$a2,1916($s6)
    sw	$zero,1228($s6)
.L5ef67a1c:
    beq	$a1,$s5,.L5ef67a48
    move	$v1,$s1
    beqz	$s7,.L5ef67a30
    nop
    move	$v1,$t1
.L5ef67a30:
    subu	$v0,$s1,$v1
    beqz	$v0,.L5ef67bac
.L5ef67a38:
    subu	$at,$t1,$v1
    beqz	$t3,.L5ef67bd0
    nop
    subu	$t2,$t2,$v1
.L5ef67a48:
    beqzl	$at,.L5ef67948
    addiu	$a1,$a1,1
    b	.L5ef67a80
    slt	$t0,$at,$v0
.L5ef67a58:
    move	$v1,$v0
.L5ef67a5c:
    subu	$v0,$v0,$v1
    beqz	$v0,.L5ef67b1c
    ld	$a5,496($sp)
.L5ef67a68:
    subu	$at,$at,$v1
    beqz	$t3,.L5ef67b3c
    nop
    subu	$t2,$t2,$v1
.L5ef67a78:
    beqz	$at,.L5ef67944
    slt	$t0,$at,$v0
.L5ef67a80:
    beqz	$t0,.L5ef67ab0
    move	$v1,$at
    bnez	$t3,.L5ef67abc
    negu	$a5,$at
.L5ef67a90:
    sw	$t8,1916($s6)
    sw	$t9,1916($s6)
    addu	$t9,$v1,$t9
    sw	$s8,1916($s6)
    sw	$zero,1916($s6)
    sw	$at,1916($s6)
    b	.L5ef67ad8
    sw	$v1,1916($s6)
.L5ef67ab0:
    move	$v1,$v0
    beqz	$t3,.L5ef67a90
    negu	$a5,$at
.L5ef67abc:
    sw	$t8,1916($s6)
    sw	$t2,1916($s6)
    subu	$t2,$t2,$v1
    sw	$s8,1916($s6)
    sw	$zero,1916($s6)
    sw	$a5,1916($s6)
    sw	$v1,1916($s6)
.L5ef67ad8:
    ld	$a7,496($sp)
    subu	$v0,$v0,$v1
    beqz	$v0,.L5ef67afc
    subu	$at,$at,$v1
.L5ef67ae8:
    slt	$a6,$at,$v0
    beqz	$a6,.L5ef67a58
    move	$v1,$at
    b	.L5ef67a5c
    nop
.L5ef67afc:
    lhu	$a7,10($a7)
    addiu	$a3,$a3,1
    bne	$a7,$a3,.L5ef67b10
    ld	$v0,400($sp)
    move	$a3,$zero
.L5ef67b10:
    addu	$v0,$a3,$v0
    b	.L5ef67ae8
    lbu	$v0,0($v0)
.L5ef67b1c:
    lhu	$a5,10($a5)
    addiu	$a3,$a3,1
    bne	$a5,$a3,.L5ef67b30
    ld	$v0,400($sp)
    move	$a3,$zero
.L5ef67b30:
    addu	$v0,$a3,$v0
    b	.L5ef67a68
    lbu	$v0,0($v0)
.L5ef67b3c:
    b	.L5ef67a78
    addu	$t9,$v1,$t9
.L5ef67b44:
    ld	$ra,392($sp)
    b	.L5ef67990
    lw	$ra,64($ra)
.L5ef67b50:
    ld	$a5,392($sp)
    sw	$a6,1324($s6)
    lw	$a5,76($a5)
    move	$a4,$zero
    andi	$a5,$a5,0x3
    b	.L5ef679f4
    sw	$a5,1236($s6)
.L5ef67b6c:
    ld	$a7,392($sp)
    sw	$t0,1324($s6)
    lw	$a7,76($a7)
    move	$a4,$zero
    andi	$a7,$a7,0xf
    b	.L5ef679f4
    sw	$a7,1236($s6)
.L5ef67b88:
    li	$a6,4107
    ld	$a5,392($sp)
    sw	$a6,1324($s6)
    lw	$a5,76($a5)
    li	$a2,9
    move	$a4,$zero
    andi	$a5,$a5,0xc
    b	.L5ef679f4
    sw	$a5,1236($s6)
.L5ef67bac:
    ld	$a7,496($sp)
    lhu	$a7,10($a7)
    ld	$v0,400($sp)
    bne	$a7,$a0,.L5ef67bc4
    move	$a3,$a0
    move	$a3,$zero
.L5ef67bc4:
    addu	$v0,$a3,$v0
    b	.L5ef67a38
    lbu	$v0,0($v0)
.L5ef67bd0:
    b	.L5ef67a48
    addu	$t9,$v1,$t9
.L5ef67bd8:
    ld	$a3,464($sp)
    b	.L5ef66958
    subu	$a3,$a3,$a1
.L5ef67be4:
    ld	$v1,432($sp)
    b	.L5ef66968
    subu	$v1,$v1,$a0
.L5ef67bf0:
    subu	$t0,$a3,$v1
    mult	$t0,$s5
    ld	$a7,192($sp)
    mflo	$a6
    mult	$v1,$a7
    ld	$a1,336($sp)
    ld	$v0,360($sp)
    addu	$a1,$a1,$a5
    lbu	$a1,0($a1)
    move	$t8,$at
    subu	$v0,$a1,$v0
    subu	$a1,$a1,$v0
    mflo	$a7
    addu	$a6,$a6,$a7
    ld	$a7,344($sp)
    slt	$a5,$a3,$a1
    ld	$v1,400($sp)
    addu	$a6,$a6,$a7
    beqz	$a5,.L5ef67e00
    sd	$a6,416($sp)
    b	.L5ef67f48
    addu	$v0,$a3,$v0
.L5ef67c50:
    ld	$a2,152($sp)
    ld	$t2,160($sp)
.L5ef67c58:
    ld	$a5,352($sp)
    ld	$a6,472($sp)
    addiu	$a5,$a5,-1
    addiu	$a6,$a6,8
    sd	$a6,472($sp)
    sd	$a5,352($sp)
.L5ef67c70:
    ld	$a7,352($sp)
    ld	$a5,184($sp)
    beqz	$a7,.L5ef669d4
    ld	$t0,472($sp)
    lh	$t0,2($t0)
    bne	$t0,$a5,.L5ef669d4
    ld	$v1,472($sp)
.L5ef67c8c:
    ld	$a6,472($sp)
    move	$at,$t2
    lh	$v1,4($v1)
    move	$t8,$a2
    addiu	$s1,$a3,1
    slt	$a5,$a2,$v1
    bnez	$a5,.L5ef67cc4
    ld	$a0,472($sp)
    addiu	$a6,$a6,8
    ld	$a5,352($sp)
    sd	$a6,472($sp)
    addiu	$a5,$a5,-1
    b	.L5ef67c70
    sd	$a5,352($sp)
.L5ef67cc4:
    lh	$a0,0($a0)
    slt	$a7,$a0,$t2
    beqz	$a7,.L5ef669d4
    slt	$a5,$a0,$a2
    beqzl	$a5,.L5ef67cdc
    move	$t8,$a0
.L5ef67cdc:
    move	$a7,$t8
    slt	$a6,$t2,$v1
    bnez	$a6,.L5ef67cf0
    sd	$t8,304($sp)
    move	$at,$v1
.L5ef67cf0:
    move	$t0,$at
    move	$a5,$t2
    beq	$t8,$at,.L5ef67c58
    sd	$at,296($sp)
    move	$a6,$a2
    sd	$a2,152($sp)
    beqz	$t9,.L5ef689d0
    sd	$t2,160($sp)
    ld	$s2,496($sp)
    slt	$a7,$t2,$v1
    bnez	$a7,.L5ef67f70
    ld	$a1,400($sp)
    lhu	$s2,10($s2)
    addiu	$s4,$at,-1
    move	$a5,$s4
    addu	$a1,$a3,$a1
    lbu	$a1,0($a1)
    subu	$t1,$t2,$at
    addiu	$t0,$t1,1
    subu	$v1,$a1,$v0
    subu	$t3,$a1,$v1
    slt	$t0,$t0,$t3
    beqz	$t0,.L5ef6885c
    sd	$s4,296($sp)
    addu	$v1,$v1,$t1
    b	.L5ef67f68
    addiu	$v1,$v1,1
.L5ef67d5c:
    b	.L5ef66664
    li	$v1,4
.L5ef67d64:
    b	.L5ef66674
    ori	$v1,$v1,0x2
.L5ef67d6c:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef66b80
    addiu	$t1,$t1,8
.L5ef67d80:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef66b80
    addiu	$t1,$t1,4
.L5ef67d94:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef66cc4
    addiu	$t1,$t1,8
.L5ef67da8:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef66cc4
    addiu	$t1,$t1,4
.L5ef67dbc:
    ld	$a5,256($sp)
    slt	$a5,$a5,$a1
    beqz	$a5,.L5ef683c4
    move	$t8,$at
    ld	$a6,256($sp)
    b	.L5ef67200
    addu	$v1,$a6,$v1
.L5ef67dd8:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef677ec
    addiu	$t1,$t1,8
.L5ef67dec:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef677ec
    addiu	$t1,$t1,4
.L5ef67e00:
    ld	$a5,232($sp)
    subu	$t2,$a3,$a1
    bne	$a5,$t8,.L5ef67e14
    move	$t3,$a5
    move	$t3,$zero
.L5ef67e14:
    move	$a3,$zero
    blez	$t8,.L5ef67f04
    andi	$a1,$t8,0x3
    move	$v0,$t8
    move	$at,$v1
    beqz	$a1,.L5ef67e44
    addu	$v1,$t8,$v1
.L5ef67e30:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef67e30
    addu	$a3,$a5,$a3
.L5ef67e44:
    move	$a1,$a3
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef67f04
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef69004
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$v1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef67e80:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef689bc
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef689a8
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef67e80
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef67ef4:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef67f04:
    slt	$a6,$t2,$a3
    bnez	$a6,.L5ef67f24
    ld	$at,400($sp)
    div	$zero,$t2,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
.L5ef67f24:
    addu	$at,$t3,$at
    lbu	$v0,0($at)
    slt	$a7,$t2,$v0
    bnez	$a7,.L5ef67f40
    ld	$v1,400($sp)
    b	.L5ef683a8
    addu	$v1,$t8,$v1
.L5ef67f40:
    move	$a4,$t3
    move	$v0,$t2
.L5ef67f48:
    ld	$s8,400($sp)
    addu	$s8,$a4,$s8
    lbu	$s8,0($s8)
    b	.L5ef66d20
    subu	$s8,$s8,$v0
.L5ef67f5c:
    move	$a3,$s1
    move	$v1,$t2
    move	$a1,$at
.L5ef67f68:
    subu	$v0,$a1,$v1
    move	$t2,$s4
.L5ef67f70:
    beq	$t8,$a2,.L5ef67f84
    ld	$a5,424($sp)
    addiu	$a2,$t8,-1
    sd	$a2,304($sp)
.L5ef67f80:
    ld	$a5,424($sp)
.L5ef67f84:
    move	$t8,$v0
    beqz	$a5,.L5ef67f94
    li	$s1,1
    li	$s1,2
.L5ef67f94:
    ld	$t1,296($sp)
    ld	$s5,304($sp)
    move	$s2,$a3
    blez	$s1,.L5ef67c50
    andi	$s4,$s2,0x1
    addiu	$s7,$s2,1
    move	$a1,$zero
    subu	$t1,$t1,$s5
    b	.L5ef67fcc
    slt	$s5,$t1,$t8
.L5ef67fbc:
    addiu	$a1,$a1,1
.L5ef67fc0:
    ld	$a2,304($sp)
    beq	$a1,$s1,.L5ef67c50
    ld	$t2,296($sp)
.L5ef67fcc:
    ld	$a5,424($sp)
    move	$a3,$s2
    move	$v0,$t8
    beqz	$a5,.L5ef68094
    move	$at,$t1
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    sw	$zero,1916($s6)
    beqz	$a1,.L5ef681bc
    sw	$zero,1960($s6)
    ld	$t3,392($sp)
    lw	$t3,68($t3)
.L5ef68008:
    ld	$v1,408($sp)
    lw	$a0,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    li	$a6,4107
    lw	$v1,20($v1)
    li	$a4,1
    li	$a5,13
    beq	$a5,$v1,.L5ef681c8
    move	$a0,$v1
    li	$a5,14
    beq	$a5,$a0,.L5ef68200
    li	$a4,1
    li	$a6,12
    beq	$a6,$a0,.L5ef681e4
    li	$t0,4104
    ori	$a4,$v1,0x1000
    ld	$a0,392($sp)
    sw	$a4,1324($s6)
    sw	$zero,1236($s6)
    lbu	$a4,21($a0)
    lw	$a0,76($a0)
    sll	$a4,$a4,0x3
.L5ef6806c:
    ld	$a5,392($sp)
    sw	$t3,1328($s6)
    lui	$a6,0xff
    ori	$a6,$a6,0xffff
    and	$a6,$a0,$a6
    sw	$a6,1916($s6)
    lbu	$a5,72($a5)
    sw	$a5,1916($s6)
    sw	$a4,1916($s6)
    sw	$zero,1228($s6)
.L5ef68094:
    beq	$a1,$s4,.L5ef680c0
    move	$v1,$t8
    beqz	$s5,.L5ef680a8
    nop
    move	$v1,$t1
.L5ef680a8:
    subu	$v0,$t8,$v1
    beqz	$v0,.L5ef68224
.L5ef680b0:
    subu	$at,$t1,$v1
    beqz	$t9,.L5ef68248
    nop
    subu	$t2,$t2,$v1
.L5ef680c0:
    beqzl	$at,.L5ef67fc0
    addiu	$a1,$a1,1
    b	.L5ef680f8
    slt	$a7,$at,$v0
.L5ef680d0:
    move	$v1,$v0
.L5ef680d4:
    subu	$v0,$v0,$v1
    beqz	$v0,.L5ef68194
    ld	$a5,496($sp)
.L5ef680e0:
    subu	$at,$at,$v1
    beqz	$t9,.L5ef681b4
    nop
    subu	$t2,$t2,$v1
.L5ef680f0:
    beqz	$at,.L5ef67fbc
    slt	$a7,$at,$v0
.L5ef680f8:
    beqz	$a7,.L5ef68128
    move	$v1,$at
    bnez	$t9,.L5ef68134
    negu	$t0,$at
.L5ef68108:
    sw	$a2,1916($s6)
    addu	$a2,$v1,$a2
    sw	$ra,1916($s6)
    sw	$s8,1916($s6)
    sw	$at,1916($s6)
    sw	$zero,1916($s6)
    b	.L5ef68150
    sw	$v1,1916($s6)
.L5ef68128:
    move	$v1,$v0
    beqz	$t9,.L5ef68108
    negu	$t0,$at
.L5ef68134:
    sw	$t2,1916($s6)
    subu	$t2,$t2,$v1
    sw	$ra,1916($s6)
    sw	$s8,1916($s6)
    sw	$t0,1916($s6)
    sw	$zero,1916($s6)
    sw	$v1,1916($s6)
.L5ef68150:
    ld	$a6,496($sp)
    subu	$v0,$v0,$v1
    beqz	$v0,.L5ef68174
    subu	$at,$at,$v1
.L5ef68160:
    slt	$a5,$at,$v0
    beqz	$a5,.L5ef680d0
    move	$v1,$at
    b	.L5ef680d4
    nop
.L5ef68174:
    lhu	$a6,10($a6)
    addiu	$a3,$a3,1
    bne	$a6,$a3,.L5ef68188
    ld	$v0,400($sp)
    move	$a3,$zero
.L5ef68188:
    addu	$v0,$a3,$v0
    b	.L5ef68160
    lbu	$v0,0($v0)
.L5ef68194:
    lhu	$a5,10($a5)
    addiu	$a3,$a3,1
    bne	$a5,$a3,.L5ef681a8
    ld	$v0,400($sp)
    move	$a3,$zero
.L5ef681a8:
    addu	$v0,$a3,$v0
    b	.L5ef680e0
    lbu	$v0,0($v0)
.L5ef681b4:
    b	.L5ef680f0
    addu	$a2,$v1,$a2
.L5ef681bc:
    ld	$t3,392($sp)
    b	.L5ef68008
    lw	$t3,64($t3)
.L5ef681c8:
    ld	$a5,392($sp)
    sw	$a6,1324($s6)
    lw	$a5,76($a5)
    move	$a0,$zero
    andi	$a5,$a5,0x3
    b	.L5ef6806c
    sw	$a5,1236($s6)
.L5ef681e4:
    ld	$a7,392($sp)
    sw	$t0,1324($s6)
    lw	$a7,76($a7)
    move	$a0,$zero
    andi	$a7,$a7,0xf
    b	.L5ef6806c
    sw	$a7,1236($s6)
.L5ef68200:
    li	$a6,4107
    ld	$a5,392($sp)
    sw	$a6,1324($s6)
    lw	$a5,76($a5)
    li	$a4,9
    move	$a0,$zero
    andi	$a5,$a5,0xc
    b	.L5ef6806c
    sw	$a5,1236($s6)
.L5ef68224:
    ld	$a7,496($sp)
    lhu	$a7,10($a7)
    ld	$v0,400($sp)
    bne	$a7,$s7,.L5ef6823c
    move	$a3,$s7
    move	$a3,$zero
.L5ef6823c:
    addu	$v0,$a3,$v0
    b	.L5ef680b0
    lbu	$v0,0($v0)
.L5ef68248:
    b	.L5ef680c0
    addu	$a2,$v1,$a2
.L5ef68250:
    b	.L5ef6713c
    ld	$a0,256($sp)
.L5ef68258:
    subu	$s2,$t1,$ra
    bne	$s4,$s5,.L5ef68268
    addiu	$s2,$s2,1
    move	$s4,$zero
.L5ef68268:
    move	$a3,$zero
    blez	$s5,.L5ef68358
    andi	$v1,$s5,0x3
    ld	$t2,400($sp)
    move	$v0,$s5
    move	$at,$t2
    beqz	$v1,.L5ef6829c
    addu	$t2,$s5,$t2
.L5ef68288:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef68288
    addu	$a3,$a5,$a3
.L5ef6829c:
    move	$v1,$a3
    sra	$a1,$v0,0x2
    beqz	$a1,.L5ef68358
    move	$a2,$at
    slti	$a6,$a1,2
    bnez	$a6,.L5ef68f24
    move	$at,$v1
    lbu	$a0,2($a2)
    lbu	$a1,1($a2)
    addiu	$a5,$t2,-4
    lbu	$at,0($a2)
    addiu	$a4,$a5,-8
    addiu	$a3,$a5,-4
    addu	$at,$at,$v1
.L5ef682d4:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef68a54
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef68a40
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef682d4
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef68348:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef68358:
    slt	$a6,$s2,$a3
    bnez	$a6,.L5ef68378
    ld	$v0,400($sp)
    div	$zero,$s2,$a3
    teq	$a3,$zero,0x7
    mfhi	$s2
.L5ef68378:
    ld	$v1,400($sp)
    addu	$v0,$s4,$v0
    lbu	$at,0($v0)
    slt	$a7,$s2,$at
    bnez	$a7,.L5ef678e4
    addu	$v1,$s5,$v1
    b	.L5ef6857c
    addiu	$s4,$s4,1
.L5ef68398:
    lbu	$v0,0($at)
    slt	$a5,$t2,$v0
    bnez	$a5,.L5ef67f40
    nop
.L5ef683a8:
    addiu	$t3,$t3,1
    addiu	$at,$at,1
    bne	$at,$v1,.L5ef68398
    subu	$t2,$t2,$v0
    move	$t3,$zero
    b	.L5ef68398
    ld	$at,400($sp)
.L5ef683c4:
    ld	$t3,336($sp)
    ld	$t2,256($sp)
    addiu	$t3,$t3,1
    bne	$t3,$t8,.L5ef683dc
    subu	$t2,$t2,$a1
    move	$t3,$zero
.L5ef683dc:
    blez	$t8,.L5ef684d0
    move	$a3,$zero
    ld	$v1,400($sp)
    move	$v0,$t8
    andi	$a1,$t8,0x3
    move	$at,$v1
    beqz	$a1,.L5ef68410
    addu	$v1,$t8,$v1
.L5ef683fc:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef683fc
    addu	$a3,$a5,$a3
.L5ef68410:
    move	$a1,$a3
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef684d0
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef6905c
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$v1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef6844c:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef68a7c
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef68a68
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef6844c
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef684c0:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef684d0:
    slt	$a6,$t2,$a3
    bnez	$a6,.L5ef684f4
    ld	$v0,400($sp)
    div	$zero,$t2,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
    ld	$v0,400($sp)
.L5ef684f4:
    addu	$v0,$t3,$v0
    lbu	$at,0($v0)
    slt	$a7,$t2,$at
    bnez	$a7,.L5ef686b4
    ld	$v1,400($sp)
    b	.L5ef68698
    addu	$v1,$t8,$v1
.L5ef68510:
    ld	$a6,448($sp)
    ld	$a5,440($sp)
    or	$a5,$a5,$a6
    b	.L5ef671b8
    sd	$a5,328($sp)
.L5ef68524:
    ld	$a7,320($sp)
    ld	$v1,320($sp)
    ld	$s2,496($sp)
    beq	$t9,$a7,.L5ef67908
    ld	$a1,400($sp)
    addu	$a1,$a3,$a1
    lbu	$a1,0($a1)
    addiu	$s1,$a3,1
    subu	$v1,$v1,$t9
    subu	$at,$a1,$v0
    subu	$t1,$a1,$at
    slt	$t0,$v1,$t1
    beqz	$t0,.L5ef68aac
    lhu	$s2,10($s2)
    addu	$at,$at,$v1
    b	.L5ef68bfc
    nop
.L5ef68568:
    lbu	$at,0($v0)
    slt	$a5,$s2,$at
    bnez	$a5,.L5ef678e4
    nop
    addiu	$s4,$s4,1
.L5ef6857c:
    addiu	$v0,$v0,1
    bne	$v0,$v1,.L5ef68568
    subu	$s2,$s2,$at
    move	$s4,$zero
    b	.L5ef68568
    ld	$v0,400($sp)
.L5ef68594:
    sd	$s6,488($sp)
    sd	$s2,144($sp)
    sd	$s8,584($sp)
    sd	$s3,576($sp)
    sd	$s4,560($sp)
    sd	$s0,552($sp)
    sd	$s5,544($sp)
    sd	$s7,536($sp)
    sd	$zero,280($sp)
.L5ef685b8:
    sd	$s6,488($sp)
    ld	$s7,536($sp)
    ld	$s5,544($sp)
    ld	$s0,552($sp)
    ld	$s4,560($sp)
    ld	$a6,496($sp)
    ld	$ra,568($sp)
    ld	$s3,576($sp)
    lw	$a6,16($a6)
    lui	$a7,0x3fff
    ori	$a7,$a7,0xffff
    and	$a6,$a6,$a7
    srl	$a6,$a6,0x1c
    beqz	$a6,.L5ef68824
    ld	$s8,584($sp)
    ld	$s7,536($sp)
    ld	$s5,544($sp)
    ld	$s0,552($sp)
    ld	$a7,280($sp)
    ld	$t0,144($sp)
    ld	$s4,560($sp)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$t0
    lh	$t0,0($t0)
    sd	$a7,288($sp)
    lh	$a7,0($a7)
    ld	$ra,568($sp)
    ld	$s3,576($sp)
    bne	$a7,$t0,.L5ef68654
    ld	$s8,584($sp)
    ld	$a5,144($sp)
    ld	$t0,288($sp)
    lh	$a5,2($a5)
    lh	$t0,2($t0)
    bne	$t0,$a5,.L5ef68654
    ld	$a5,280($sp)
    li	$a6,1
    bnel	$a5,$a6,.L5ef68828
    ld	$gp,112($sp)
.L5ef68654:
    ld	$a2,336($sp)
    andi	$a2,$a2,0x1
    beqz	$a2,.L5ef68668
    ld	$a5,424($sp)
    beqz	$a5,.L5ef68824
.L5ef68668:
    ld	$a6,264($sp)
    beqz	$a6,.L5ef68824
    ld	$v0,216($sp)
    ld	$a5,264($sp)
    move	$at,$v0
    sll	$a5,$a5,0x3
    b	.L5ef686e4
    addu	$v0,$v0,$a5
.L5ef68688:
    lbu	$at,0($v0)
    slt	$a6,$t2,$at
    bnez	$a6,.L5ef686b4
    nop
.L5ef68698:
    addiu	$t3,$t3,1
    addiu	$v0,$v0,1
    bne	$v0,$v1,.L5ef68688
    subu	$t2,$t2,$at
    move	$t3,$zero
    b	.L5ef68688
    ld	$v0,400($sp)
.L5ef686b4:
    move	$a7,$t3
    sd	$t3,336($sp)
    sw	$t3,64($sp)
    move	$v1,$t2
    b	.L5ef67200
    move	$v0,$at
.L5ef686cc:
    subu	$at,$a1,$v1
    b	.L5ef6787c
    nop
    addiu	$at,$at,8
.L5ef686dc:
    beql	$at,$v0,.L5ef68828
    ld	$gp,112($sp)
.L5ef686e4:
    lh	$a5,0($at)
    ld	$t0,368($sp)
    slt	$t0,$t0,$a5
    bnezl	$t0,.L5ef686dc
    addiu	$at,$at,8
    lh	$a7,2($at)
    ld	$a6,376($sp)
    slt	$a6,$a6,$a7
    bnezl	$a6,.L5ef686dc
    addiu	$at,$at,8
    lh	$a5,4($at)
    ld	$t0,368($sp)
    slt	$t0,$t0,$a5
    beqzl	$t0,.L5ef686dc
    addiu	$at,$at,8
    lh	$a7,6($at)
    ld	$a6,376($sp)
    slt	$a6,$a6,$a7
    beqz	$a6,.L5ef686dc
    addiu	$at,$at,8
    ld	$t0,488($sp)
    sw	$zero,1916($t0)
    sw	$zero,1916($t0)
    sw	$zero,1916($t0)
    sw	$zero,1916($t0)
    sw	$zero,1916($t0)
    sw	$zero,1916($t0)
    beqz	$a2,.L5ef68ea0
    sw	$zero,1960($t0)
    ld	$a1,392($sp)
    lw	$a1,68($a1)
.L5ef68760:
    ld	$v1,408($sp)
    lw	$a6,nfbWindowPrivateIndex
    lw	$v1,132($v1)
    sll	$a6,$a6,0x2
    addu	$v1,$v1,$a6
    lw	$v1,0($v1)
    lw	$v1,20($v1)
    li	$a5,13
    beq	$a5,$v1,.L5ef68ed4
    move	$at,$v1
    li	$a5,14
    beq	$at,$a5,.L5ef68efc
    li	$a6,12
    beq	$at,$a6,.L5ef68eac
    ld	$a5,488($sp)
    ld	$v0,392($sp)
    ori	$a6,$v1,0x1000
    sw	$a6,1324($a5)
    sw	$zero,1236($a5)
    lbu	$at,21($v0)
    lw	$v0,76($v0)
    sll	$at,$at,0x3
.L5ef687b8:
    ld	$gp,112($sp)
    ld	$s6,392($sp)
    lui	$a5,0xff
    ld	$a7,488($sp)
    ori	$a5,$a5,0xffff
    and	$a5,$v0,$a5
    sw	$a1,1328($a7)
    sw	$a5,1916($a7)
    li	$t0,1
    lbu	$s6,72($s6)
    ld	$s1,376($sp)
    ld	$s2,368($sp)
    sw	$s6,1916($a7)
    ld	$s6,128($sp)
    sw	$at,1916($a7)
    sw	$zero,1228($a7)
    sw	$s2,1916($a7)
    ld	$s2,136($sp)
    sw	$s1,1916($a7)
    ld	$s1,120($sp)
    addiu	$sp,$sp,656
    sw	$t0,1916($a7)
    sw	$t0,1916($a7)
    sw	$zero,1916($a7)
    sw	$t0,1916($a7)
    jr	$ra
    sw	$zero,1960($a7)
.L5ef68824:
    ld	$gp,112($sp)
.L5ef68828:
    ld	$s1,120($sp)
    ld	$s2,136($sp)
    ld	$a6,488($sp)
    ld	$s6,128($sp)
    addiu	$sp,$sp,656
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    jr	$ra
    sw	$zero,1960($a6)
.L5ef6885c:
    subu	$t2,$t1,$t3
    bne	$s1,$s2,.L5ef6886c
    addiu	$t2,$t2,1
    move	$s1,$zero
.L5ef6886c:
    move	$a3,$zero
    blez	$s2,.L5ef6896c
    andi	$a1,$s2,0x3
    ld	$v1,400($sp)
    move	$v0,$s2
    move	$at,$v1
    beqz	$a1,.L5ef688a0
    addu	$v1,$s2,$v1
.L5ef6888c:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef6888c
    addu	$a3,$a5,$a3
.L5ef688a0:
    move	$a1,$a3
    sd	$a2,592($sp)
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef68968
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef68f7c
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$v1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef688e0:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef68c48
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef68c34
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef688e0
    addu	$at,$v0,$at
    move	$t1,$a2
    ld	$a2,592($sp)
.L5ef68958:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef68968:
    ld	$a2,592($sp)
.L5ef6896c:
    slt	$a6,$t2,$a3
    bnez	$a6,.L5ef6898c
    ld	$v0,400($sp)
    div	$zero,$t2,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
.L5ef6898c:
    addu	$v0,$s1,$v0
    lbu	$at,0($v0)
    slt	$a7,$t2,$at
    bnez	$a7,.L5ef67f5c
    ld	$v1,400($sp)
    b	.L5ef68a24
    addu	$v1,$s2,$v1
.L5ef689a8:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef67ef4
    addiu	$t1,$t1,8
.L5ef689bc:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef67ef4
    addiu	$t1,$t1,4
.L5ef689d0:
    ld	$a5,304($sp)
    ld	$v1,304($sp)
    ld	$s1,496($sp)
    beq	$a2,$a5,.L5ef67f80
    ld	$a1,400($sp)
    addu	$a1,$a3,$a1
    lbu	$a1,0($a1)
    addiu	$t8,$a3,1
    subu	$v1,$v1,$a2
    subu	$at,$a1,$v0
    subu	$t1,$a1,$at
    slt	$a6,$v1,$t1
    beqz	$a6,.L5ef68cc8
    lhu	$s1,10($s1)
    addu	$at,$at,$v1
    b	.L5ef68e18
    nop
.L5ef68a14:
    lbu	$at,0($v0)
    slt	$a5,$t2,$at
    bnez	$a5,.L5ef67f5c
    nop
.L5ef68a24:
    addiu	$s1,$s1,1
    addiu	$v0,$v0,1
    bne	$v0,$v1,.L5ef68a14
    subu	$t2,$t2,$at
    move	$s1,$zero
    b	.L5ef68a14
    ld	$v0,400($sp)
.L5ef68a40:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68348
    addiu	$t1,$t1,8
.L5ef68a54:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68348
    addiu	$t1,$t1,4
.L5ef68a68:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef684c0
    addiu	$t1,$t1,8
.L5ef68a7c:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef684c0
    addiu	$t1,$t1,4
.L5ef68a90:
    move	$a5,$v0
    bnez	$at,.L5ef66378
    sd	$v0,216($sp)
.L5ef68a9c:
    sd	$ra,568($sp)
    li	$a6,1
    b	.L5ef66384
    sd	$a6,264($sp)
.L5ef68aac:
    subu	$ra,$v1,$t1
    bne	$s1,$s2,.L5ef68ac0
    move	$a3,$zero
    move	$s1,$zero
    move	$a3,$zero
.L5ef68ac0:
    blez	$s2,.L5ef68bb0
    andi	$a1,$s2,0x3
    ld	$v1,400($sp)
    move	$v0,$s2
    move	$at,$v1
    beqz	$a1,.L5ef68af0
    addu	$v1,$s2,$v1
.L5ef68adc:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef68adc
    addu	$a3,$a5,$a3
.L5ef68af0:
    move	$a1,$a3
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef68bb0
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef68f50
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$v1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef68b2c:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef68e64
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef68e50
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef68b2c
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef68ba0:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef68bb0:
    slt	$a6,$ra,$a3
    bnez	$a6,.L5ef68bd0
    ld	$at,400($sp)
    div	$zero,$ra,$a3
    teq	$a3,$zero,0x7
    mfhi	$ra
.L5ef68bd0:
    ld	$v1,400($sp)
    addu	$at,$s1,$at
    lbu	$v0,0($at)
    slt	$a7,$ra,$v0
    bnez	$a7,.L5ef68bf0
    addu	$v1,$s2,$v1
    b	.L5ef68c1c
    addiu	$s1,$s1,1
.L5ef68bf0:
    move	$a3,$s1
    move	$at,$ra
    move	$a1,$v0
.L5ef68bfc:
    ld	$t9,320($sp)
    b	.L5ef67908
    subu	$v0,$a1,$at
.L5ef68c08:
    lbu	$v0,0($at)
    slt	$a5,$ra,$v0
    bnez	$a5,.L5ef68bf0
    nop
    addiu	$s1,$s1,1
.L5ef68c1c:
    addiu	$at,$at,1
    bne	$at,$v1,.L5ef68c08
    subu	$ra,$ra,$v0
    move	$s1,$zero
    b	.L5ef68c08
    ld	$at,400($sp)
.L5ef68c34:
    move	$a0,$v0
    move	$a1,$v1
    addiu	$t1,$a2,8
    b	.L5ef68958
    ld	$a2,592($sp)
.L5ef68c48:
    move	$a0,$v0
    move	$a1,$v1
    addiu	$t1,$a2,4
    b	.L5ef68958
    ld	$a2,592($sp)
.L5ef68c5c:
    ld	$a6,392($sp)
    li	$a7,4107
    sw	$a7,1324($s6)
    lw	$a6,76($a6)
    li	$a3,1
    move	$a4,$zero
    andi	$a6,$a6,0x3
    b	.L5ef66338
    sw	$a6,1236($s6)
.L5ef68c80:
    ld	$t0,392($sp)
    li	$a3,4104
    sw	$a3,1324($s6)
    lw	$t0,76($t0)
    move	$a4,$zero
    li	$a3,1
    andi	$t0,$t0,0xf
    b	.L5ef66338
    sw	$t0,1236($s6)
.L5ef68ca4:
    ld	$a5,392($sp)
    li	$a6,4107
    sw	$a6,1324($s6)
    lw	$a5,76($a5)
    li	$a3,9
    move	$a4,$zero
    andi	$a5,$a5,0xc
    b	.L5ef66338
    sw	$a5,1236($s6)
.L5ef68cc8:
    subu	$t3,$v1,$t1
    bne	$t8,$s1,.L5ef68cdc
    move	$a3,$zero
    move	$t8,$zero
    move	$a3,$zero
.L5ef68cdc:
    blez	$s1,.L5ef68dcc
    andi	$a1,$s1,0x3
    ld	$v1,400($sp)
    move	$v0,$s1
    move	$at,$v1
    beqz	$a1,.L5ef68d0c
    addu	$v1,$s1,$v1
.L5ef68cf8:
    addiu	$at,$at,1
    lbu	$a5,-1($at)
    addi	$a1,$a1,-1
    bnez	$a1,.L5ef68cf8
    addu	$a3,$a5,$a3
.L5ef68d0c:
    move	$a1,$a3
    sra	$t1,$v0,0x2
    beqz	$t1,.L5ef68dcc
    move	$a2,$at
    slti	$a6,$t1,2
    bnez	$a6,.L5ef68fac
    move	$at,$a1
    lbu	$a0,2($a2)
    addiu	$a5,$v1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($a2)
    lbu	$a7,1($a2)
    addiu	$a3,$a5,-4
    addu	$at,$at,$a1
    move	$a1,$a7
.L5ef68d48:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef68e8c
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef68e78
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef68d48
    addu	$at,$v0,$at
    move	$t1,$a2
.L5ef68dbc:
    lbu	$a3,3($t1)
    addu	$a5,$a1,$at
    addu	$a5,$a0,$a5
    addu	$a3,$a3,$a5
.L5ef68dcc:
    slt	$a6,$t3,$a3
    bnez	$a6,.L5ef68dec
    ld	$at,400($sp)
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t3
.L5ef68dec:
    ld	$v1,400($sp)
    addu	$at,$t8,$at
    lbu	$v0,0($at)
    slt	$a7,$t3,$v0
    bnez	$a7,.L5ef68e0c
    addu	$v1,$s1,$v1
    b	.L5ef68e38
    addiu	$t8,$t8,1
.L5ef68e0c:
    move	$a3,$t8
    move	$at,$t3
    move	$a1,$v0
.L5ef68e18:
    subu	$v0,$a1,$at
    b	.L5ef67f80
    ld	$a2,304($sp)
.L5ef68e24:
    lbu	$v0,0($at)
    slt	$a5,$t3,$v0
    bnez	$a5,.L5ef68e0c
    nop
    addiu	$t8,$t8,1
.L5ef68e38:
    addiu	$at,$at,1
    bne	$at,$v1,.L5ef68e24
    subu	$t3,$t3,$v0
    move	$t8,$zero
    b	.L5ef68e24
    ld	$at,400($sp)
.L5ef68e50:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68ba0
    addiu	$t1,$t1,8
.L5ef68e64:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68ba0
    addiu	$t1,$t1,4
.L5ef68e78:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68dbc
    addiu	$t1,$t1,8
.L5ef68e8c:
    move	$a0,$v0
    move	$a1,$v1
    move	$t1,$a2
    b	.L5ef68dbc
    addiu	$t1,$t1,4
.L5ef68ea0:
    ld	$a1,392($sp)
    b	.L5ef68760
    lw	$a1,64($a1)
.L5ef68eac:
    ld	$a6,488($sp)
    ld	$a5,392($sp)
    li	$a7,4104
    sw	$a7,1324($a6)
    lw	$a5,76($a5)
    li	$at,1
    move	$v0,$zero
    andi	$a5,$a5,0xf
    b	.L5ef687b8
    sw	$a5,1236($a6)
.L5ef68ed4:
    ld	$a5,488($sp)
    ld	$t0,392($sp)
    li	$at,4107
    sw	$at,1324($a5)
    lw	$t0,76($t0)
    move	$v0,$zero
    li	$at,1
    andi	$t0,$t0,0x3
    b	.L5ef687b8
    sw	$t0,1236($a5)
.L5ef68efc:
    ld	$a6,488($sp)
    ld	$a5,392($sp)
    li	$a7,4107
    sw	$a7,1324($a6)
    lw	$a5,76($a5)
    li	$at,9
    move	$v0,$zero
    andi	$a5,$a5,0xc
    b	.L5ef687b8
    sw	$a5,1236($a6)
.L5ef68f24:
    move	$t1,$a2
    lbu	$t0,3($t1)
    lbu	$a7,0($t1)
    lbu	$a6,1($t1)
    lbu	$a5,2($t1)
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    addu	$at,$t0,$at
    b	.L5ef68358
    move	$a3,$at
.L5ef68f50:
    move	$t1,$a2
    lbu	$t0,3($t1)
    lbu	$a7,0($t1)
    lbu	$a6,1($t1)
    lbu	$a5,2($t1)
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    addu	$at,$t0,$at
    b	.L5ef68bb0
    move	$a3,$at
.L5ef68f7c:
    move	$t1,$a2
    lbu	$t0,3($t1)
    lbu	$a6,0($t1)
    lbu	$a5,1($t1)
    lbu	$a2,2($t1)
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    addu	$at,$a2,$at
    ld	$a2,592($sp)
    addu	$at,$t0,$at
    b	.L5ef68968
    move	$a3,$at
.L5ef68fac:
    move	$t1,$a2
    lbu	$a7,3($t1)
    lbu	$t0,0($t1)
    lbu	$a6,1($t1)
    lbu	$a5,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    addu	$at,$a7,$at
    b	.L5ef68dcc
    move	$a3,$at
.L5ef68fd8:
    move	$t1,$a2
    lbu	$a5,3($t1)
    lbu	$t0,0($t1)
    lbu	$a7,1($t1)
    lbu	$a6,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    b	.L5ef66b90
    move	$a3,$at
.L5ef69004:
    move	$t1,$a2
    lbu	$a5,3($t1)
    lbu	$t0,0($t1)
    lbu	$a7,1($t1)
    lbu	$a6,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    b	.L5ef67f04
    move	$a3,$at
.L5ef69030:
    move	$t1,$a2
    lbu	$a5,3($t1)
    lbu	$t0,0($t1)
    lbu	$a7,1($t1)
    lbu	$a6,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    b	.L5ef66cd4
    move	$a3,$at
.L5ef6905c:
    move	$t1,$a2
    lbu	$a5,3($t1)
    lbu	$t0,0($t1)
    lbu	$a7,1($t1)
    lbu	$a6,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    b	.L5ef684d0
    move	$a3,$at
.L5ef69088:
    move	$t1,$a2
    lbu	$a5,3($t1)
    lbu	$t0,0($t1)
    lbu	$a7,1($t1)
    lbu	$a6,2($t1)
    addu	$at,$t0,$at
    addu	$at,$a7,$at
    addu	$at,$a6,$at
    addu	$at,$a5,$at
    b	.L5ef677fc
    move	$a3,$at
.end expLineSD

.globl expFastLineSD
.ent expFastLineSD
expFastLineSD:
    addiu	$sp,$sp,-496
    sd	$a2,264($sp)
    lui	$t2,0x15
    addiu	$t2,$t2,21776
    addu	$at,$t9,$t2
    lw	$t1,expGCPrivateIndex
    sd	$a1,16($sp)
    lw	$t0,76($a1)
    sll	$t1,$t1,0x2
    lw	$t3,132($a0)
    sd	$s4,240($sp)
    lw	$s4,0($a1)
    lw	$t9,nfbWindowPrivateIndex
    lw	$v0,expScreenPrivateIndex
    lw	$s4,436($s4)
    sll	$t9,$t9,0x2
    addu	$t3,$t3,$t9
    lui	$t9,0x4
    sll	$v0,$v0,0x2
    addu	$s4,$s4,$v0
    li	$v0,13
    lw	$a7,nfbGCPrivateIndex
    addu	$t1,$t1,$t0
    lw	$t1,0($t1)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$t0
    lw	$t3,0($t3)
    lw	$a7,0($a7)
    lw	$s4,0($s4)
    lw	$t3,20($t3)
    lw	$t0,8($a7)
    lw	$s4,0($s4)
    move	$t2,$t3
    beq	$t3,$v0,.L5ef6a510
    addu	$s4,$s4,$t9
    li	$v0,14
    beq	$t2,$v0,.L5ef6a550
    li	$v1,12
    beq	$t2,$v1,.L5ef6a530
    ori	$v0,$t3,0x1000
    sw	$v0,1324($s4)
    sw	$zero,1236($s4)
    lbu	$t2,21($a7)
    lw	$a2,76($a7)
    sll	$t2,$t2,0x3
.L5ef69168:
    lui	$a5,0xff
    lw	$a6,64($a7)
    ori	$a5,$a5,0xffff
    and	$a5,$a2,$a5
    sw	$a6,1328($s4)
    sw	$a5,1916($s4)
    lbu	$a1,72($a7)
    sw	$a1,1916($s4)
    sw	$t2,1916($s4)
    lhu	$v1,0($t1)
    sw	$zero,1416($s4)
    lw	$a1,8($t0)
    beqz	$a1,.L5ef6a4f0
    sd	$v1,48($sp)
    addiu	$a6,$a1,8
    beqz	$a1,.L5ef6a4fc
    sd	$a6,96($sp)
.L5ef691ac:
    lw	$v0,4($a1)
    sd	$s3,24($sp)
    sd	$s2,32($sp)
    sd	$v0,72($sp)
.L5ef691bc:
    slti	$v1,$a3,2
    lh	$s3,0($a4)
    lh	$a5,10($a0)
    lh	$v0,8($a0)
    lh	$s2,2($a4)
    sd	$a5,80($sp)
    sd	$v0,88($sp)
    addu	$s2,$s2,$a5
    bnez	$v1,.L5ef6a204
    addu	$s3,$s3,$v0
    sd	$a4,136($sp)
    sd	$s8,392($sp)
    sd	$ra,400($sp)
    sd	$s5,408($sp)
    sd	$s0,416($sp)
    sd	$s1,424($sp)
    sd	$s6,376($sp)
    sd	$gp,384($sp)
    sd	$zero,64($sp)
    li	$t0,0xffff
    li	$t8,16
    sd	$s7,432($sp)
    lw	$s7,8($sp)
    move	$v0,$a4
    sd	$a4,56($sp)
    lw	$a5,4($sp)
    lw	$v1,0($sp)
    lw	$a6,12($sp)
    sd	$a5,368($sp)
    sd	$v1,328($sp)
    sd	$a6,352($sp)
    addiu	$a6,$a3,-1
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a4
    b	.L5ef692a8
    sd	$a6,104($sp)
.L5ef6924c:
    ld	$v0,48($sp)
    sw	$v0,1916($s4)
    sw	$s0,1916($s4)
    sw	$ra,1916($s4)
    sw	$s3,1916($s4)
    sw	$s2,1916($s4)
.L5ef69264:
    ld	$a5,128($sp)
.L5ef69268:
    ld	$v1,48($sp)
    andi	$a5,$a5,0xf
    srav	$a6,$v1,$a5
    subu	$a5,$t8,$a5
    sllv	$a5,$v1,$a5
    or	$a5,$a5,$a6
    andi	$v1,$a5,0xffff
    sd	$v1,48($sp)
.L5ef69288:
    ld	$v1,64($sp)
    ld	$a6,56($sp)
    ld	$v0,104($sp)
    addiu	$v1,$v1,1
    addiu	$a6,$a6,4
    sd	$a6,56($sp)
    beq	$a6,$v0,.L5ef6a230
    sd	$v1,64($sp)
.L5ef692a8:
    ld	$a1,72($sp)
    ld	$a0,96($sp)
    ld	$a5,264($sp)
    move	$s0,$s3
    li	$a6,1
    beq	$a5,$a6,.L5ef699f8
    move	$ra,$s2
.L5ef692c4:
    ld	$s2,56($sp)
    ld	$v0,88($sp)
    lh	$s3,4($s2)
    lh	$s2,6($s2)
    addu	$s3,$s3,$v0
    ld	$v0,80($sp)
    bne	$s3,$s0,.L5ef69300
    addu	$s2,$s2,$v0
    beq	$s2,$ra,.L5ef69288
    slt	$v0,$ra,$s2
    beqz	$v0,.L5ef6931c
    move	$a2,$ra
    move	$a3,$s2
    b	.L5ef69328
    move	$s1,$zero
.L5ef69300:
    bne	$s2,$ra,.L5ef693f0
    slt	$v1,$s0,$s3
    beqz	$v1,.L5ef69380
    move	$a2,$s0
    move	$a3,$s3
    b	.L5ef6938c
    move	$a7,$zero
.L5ef6931c:
    move	$a2,$s2
    move	$a3,$ra
    li	$s1,1
.L5ef69328:
    ld	$a5,72($sp)
    beqz	$a5,.L5ef69360
    nop
    lh	$a6,6($a0)
    slt	$a6,$a2,$a6
    bnez	$a6,.L5ef69360
    nop
    addiu	$a1,$a1,-1
.L5ef69348:
    beqz	$a1,.L5ef69ecc
    addiu	$a0,$a0,8
    lh	$v0,6($a0)
    slt	$v0,$a2,$v0
    beqzl	$v0,.L5ef69348
    addiu	$a1,$a1,-1
.L5ef69360:
    beqz	$a1,.L5ef69ed0
    ld	$v0,48($sp)
    lh	$t9,2($a0)
    slt	$v1,$a3,$t9
    bnez	$v1,.L5ef69ed0
    ld	$v0,48($sp)
    b	.L5ef69e98
    lh	$v1,0($a0)
.L5ef69380:
    move	$a2,$s3
    move	$a3,$s0
    li	$a7,1
.L5ef6938c:
    beqz	$a1,.L5ef69990
    ld	$a5,48($sp)
    lh	$a5,6($a0)
    slt	$a5,$ra,$a5
    bnez	$a5,.L5ef693c0
    nop
    addiu	$a1,$a1,-1
.L5ef693a8:
    beqz	$a1,.L5ef6998c
    addiu	$a0,$a0,8
    lh	$a6,6($a0)
    slt	$a6,$ra,$a6
    beqzl	$a6,.L5ef693a8
    addiu	$a1,$a1,-1
.L5ef693c0:
    beqz	$a1,.L5ef69990
    ld	$a5,48($sp)
    lh	$t9,2($a0)
    slt	$v0,$ra,$t9
    bnez	$v0,.L5ef69990
    ld	$a5,48($sp)
    beqz	$a1,.L5ef6998c
    move	$t2,$t9
    bne	$t9,$t2,.L5ef69990
    ld	$a5,48($sp)
    b	.L5ef6a0cc
    lh	$t1,4($a0)
.L5ef693f0:
    subu	$t2,$s3,$s0
    bltz	$t2,.L5ef6a118
    move	$a2,$zero
.L5ef693fc:
    subu	$t3,$s2,$ra
    bltz	$t3,.L5ef6a120
    nop
.L5ef69408:
    blez	$t2,.L5ef69fc8
    move	$v1,$t2
    blez	$t3,.L5ef69fd4
    sd	$t2,320($sp)
.L5ef69418:
    move	$a5,$t3
    sd	$t3,272($sp)
.L5ef69420:
    ld	$a6,320($sp)
    ld	$a7,272($sp)
    sll	$a3,$a6,0x1
    slt	$a6,$a7,$a6
    beqz	$a6,.L5ef69468
    sll	$a7,$a7,0x1
    move	$s8,$zero
    move	$a4,$a7
    move	$a5,$a3
    sd	$a3,360($sp)
    ld	$v1,320($sp)
    subu	$v0,$a7,$a3
    sd	$v0,120($sp)
    move	$a6,$v1
    sd	$v1,128($sp)
    negu	$v1,$v1
    b	.L5ef69498
    sd	$v1,112($sp)
.L5ef69468:
    ori	$a2,$a2,0x1
    sd	$a7,360($sp)
    move	$s8,$a7
    subu	$v0,$a3,$a7
    ld	$v1,272($sp)
    sd	$v0,120($sp)
    li	$s8,1
    move	$a4,$v1
    sd	$v1,128($sp)
    negu	$v1,$v1
    sd	$v1,112($sp)
    move	$a4,$a3
.L5ef69498:
    beqz	$a1,.L5ef69264
    move	$s5,$zero
    andi	$v0,$a2,0x4
    sd	$v0,248($sp)
    andi	$a6,$zero,0x1
    sd	$a6,304($sp)
    andi	$a6,$a2,0x1
    ld	$v1,320($sp)
    sd	$a6,296($sp)
    ld	$a5,272($sp)
    sll	$v1,$v1,0x1
    sd	$v1,280($sp)
    sll	$a5,$a5,0x1
    sd	$a5,256($sp)
    andi	$a5,$a2,0x2
    b	.L5ef6952c
    sd	$a5,288($sp)
.L5ef694dc:
    slt	$v0,$s3,$v0
    bnez	$v0,.L5ef694f0
    slt	$v1,$s2,$t9
    li	$a3,4
.L5ef694ec:
    slt	$v1,$s2,$t9
.L5ef694f0:
    beqzl	$v1,.L5ef69598
    lh	$v1,6($a0)
    ori	$a3,$a3,0x2
.L5ef694fc:
    move	$gp,$t9
.L5ef69500:
    ld	$v1,48($sp)
    or	$a5,$a7,$a3
    beqz	$a5,.L5ef6924c
    move	$v0,$s1
    and	$a6,$a7,$a3
    beqz	$a6,.L5ef695ac
    move	$gp,$ra
    addiu	$a0,$a0,8
.L5ef69520:
    addiu	$s5,$s5,1
.L5ef69524:
    beq	$s5,$a1,.L5ef69268
    ld	$a5,128($sp)
.L5ef6952c:
    lh	$s1,0($a0)
    move	$a7,$zero
    slt	$v0,$s0,$s1
    beqz	$v0,.L5ef6956c
    move	$a3,$zero
    li	$a7,8
.L5ef69544:
    lh	$t9,2($a0)
.L5ef69548:
    slt	$a5,$s3,$s1
    slt	$v1,$ra,$t9
    beqzl	$v1,.L5ef69584
    lh	$v0,6($a0)
    ori	$a7,$a7,0x2
.L5ef6955c:
    beqzl	$a5,.L5ef694dc
    lh	$v0,4($a0)
    b	.L5ef694ec
    li	$a3,8
.L5ef6956c:
    lh	$a6,4($a0)
    slt	$a6,$s0,$a6
    bnezl	$a6,.L5ef69548
    lh	$t9,2($a0)
    b	.L5ef69544
    li	$a7,4
.L5ef69584:
    slt	$v0,$ra,$v0
    bnez	$v0,.L5ef6955c
    nop
    b	.L5ef6955c
    ori	$a7,$a7,0x1
.L5ef69598:
    slt	$v1,$s2,$v1
    bnez	$v1,.L5ef69500
    move	$gp,$t9
    b	.L5ef694fc
    ori	$a3,$a3,0x1
.L5ef695ac:
    move	$v0,$s3
    move	$a2,$a3
    sd	$s1,144($sp)
    sd	$t9,176($sp)
    sd	$zero,160($sp)
    sd	$s0,184($sp)
    sd	$ra,208($sp)
    sd	$s3,224($sp)
    sd	$s3,232($sp)
    sd	$s2,216($sp)
    sd	$s2,168($sp)
    sd	$zero,312($sp)
    sd	$zero,152($sp)
    sd	$v1,344($sp)
    move	$v1,$s3
    move	$a6,$s0
    move	$a5,$ra
    move	$a5,$s2
    lh	$s6,6($a0)
    lh	$t1,4($a0)
    move	$a6,$s2
    addiu	$s6,$s6,-1
    addiu	$t1,$t1,-1
    sd	$t1,192($sp)
    move	$t1,$a7
    sd	$s6,200($sp)
    move	$s6,$s0
.L5ef69618:
    and	$a5,$t1,$a2
.L5ef6961c:
    beqz	$a5,.L5ef6963c
    li	$a3,-1
    move	$v0,$t1
    sd	$t1,312($sp)
    move	$a6,$a2
    sd	$a2,152($sp)
.L5ef69634:
    b	.L5ef69520
    addiu	$a0,$a0,8
.L5ef6963c:
    or	$v1,$t1,$a2
    beqz	$v1,.L5ef69a0c
    ld	$v1,232($sp)
    beqz	$t1,.L5ef6983c
    ld	$a6,168($sp)
.L5ef69650:
    ld	$a6,312($sp)
    andi	$v1,$t1,0x4
    andi	$a5,$t1,0x8
    or	$a6,$t1,$a6
    beqz	$a5,.L5ef698cc
    sd	$a6,312($sp)
    ld	$v1,184($sp)
    ld	$s7,144($sp)
    li	$v0,32767
    ld	$a5,288($sp)
    subu	$s7,$s7,$v1
    sltu	$v0,$v0,$s7
    bnez	$v0,.L5ef696b0
    sd	$a5,352($sp)
    ld	$a6,296($sp)
    ld	$v0,160($sp)
    beqz	$a6,.L5ef699b4
    ld	$a5,208($sp)
    beqz	$v0,.L5ef699e0
    li	$a3,52
.L5ef696a0:
    move	$v1,$a3
    sd	$a3,368($sp)
.L5ef696a8:
    b	.L5ef696f0
    sd	$a5,328($sp)
.L5ef696b0:
    ld	$v0,144($sp)
    ld	$a6,296($sp)
    ld	$s7,224($sp)
    ld	$a5,160($sp)
    beqz	$a6,.L5ef699cc
    subu	$s7,$s7,$v0
    ld	$v1,160($sp)
    beqz	$v1,.L5ef699ec
    li	$a3,24
.L5ef696d4:
    move	$a5,$a3
    sd	$a3,368($sp)
.L5ef696dc:
    ld	$v0,216($sp)
    ld	$a6,352($sp)
    sd	$v0,328($sp)
    sltiu	$a6,$a6,1
    sd	$a6,352($sp)
.L5ef696f0:
    ld	$s6,144($sp)
.L5ef696f4:
    ld	$v1,160($sp)
    ld	$a7,368($sp)
    sll	$t1,$s7,0x1
    beqz	$v1,.L5ef69714
    andi	$a7,$a7,0x1
    ld	$a5,352($sp)
    sltiu	$a5,$a5,1
    sd	$a5,352($sp)
.L5ef69714:
    ld	$a6,272($sp)
    beqz	$a7,.L5ef6991c
    ld	$v0,320($sp)
    multu	$v0,$t1
    mflo	$a3
.L5ef69730:
    ld	$t1,368($sp)
    ld	$v0,272($sp)
    ld	$a5,272($sp)
    andi	$v1,$t1,0x2
    beqz	$v1,.L5ef6992c
    andi	$t1,$t1,0x4
    beqz	$t1,.L5ef69980
    ld	$v0,320($sp)
    subu	$a3,$a3,$v0
.L5ef69754:
    ld	$v0,368($sp)
    ld	$v1,368($sp)
    ld	$a6,368($sp)
    andi	$v1,$v1,0x8
    beqz	$v1,.L5ef69814
    andi	$a6,$a6,0x10
    ld	$a5,304($sp)
    addu	$a3,$a3,$a5
    addiu	$a3,$a3,-1
.L5ef69778:
    ld	$a5,144($sp)
    beqz	$a6,.L5ef69820
    ld	$v1,352($sp)
    ld	$s7,280($sp)
    divu	$zero,$a3,$s7
    teq	$s7,$zero,0x7
    mflo	$s7
.L5ef6979c:
    andi	$v0,$v0,0x20
    beqz	$v0,.L5ef697b0
    ld	$a3,328($sp)
    addiu	$s7,$s7,1
    ld	$a3,328($sp)
.L5ef697b0:
    beqz	$v1,.L5ef697bc
    nop
    negu	$s7,$s7
.L5ef697bc:
    beqz	$a7,.L5ef69834
    addu	$a3,$a3,$s7
    move	$s6,$a3
.L5ef697c8:
    move	$t1,$zero
    ld	$v0,176($sp)
    slt	$a5,$s6,$a5
    beqz	$a5,.L5ef697e0
    slt	$v0,$gp,$v0
    li	$t1,8
.L5ef697e0:
    ld	$a6,192($sp)
    slt	$a6,$a6,$s6
    beqz	$a6,.L5ef697f4
    ld	$v1,200($sp)
    ori	$t1,$t1,0x4
.L5ef697f4:
    beqzl	$v0,.L5ef69804
    slt	$v1,$v1,$gp
    ori	$t1,$t1,0x2
    slt	$v1,$v1,$gp
.L5ef69804:
    beqz	$v1,.L5ef6961c
    and	$a5,$t1,$a2
    b	.L5ef69618
    ori	$t1,$t1,0x1
.L5ef69814:
    ld	$a5,304($sp)
    b	.L5ef69778
    subu	$a3,$a3,$a5
.L5ef69820:
    ld	$a6,256($sp)
    divu	$zero,$a3,$a6
    mflo	$s7
    b	.L5ef6979c
    teq	$a6,$zero,0x7
.L5ef69834:
    b	.L5ef697c8
    move	$gp,$a3
.L5ef6983c:
    move	$a5,$s6
    move	$v0,$gp
    move	$gp,$a6
    sd	$a5,232($sp)
    move	$s6,$v1
    move	$v1,$a5
    ld	$a5,184($sp)
    sd	$v0,168($sp)
    move	$a6,$v0
    ld	$v0,224($sp)
    ld	$a6,208($sp)
    move	$v1,$a5
    move	$a5,$v0
    move	$a5,$a6
    sd	$v0,184($sp)
    move	$v0,$v1
    sd	$v1,224($sp)
    ld	$v1,216($sp)
    sd	$a5,216($sp)
    move	$v0,$t1
    move	$t1,$a2
    move	$a2,$v0
    ld	$v0,160($sp)
    sd	$v1,208($sp)
    move	$a6,$v1
    move	$v1,$a5
    ld	$v1,152($sp)
    ld	$a6,312($sp)
    sltiu	$v0,$v0,1
    sd	$v0,160($sp)
    move	$a5,$a6
    move	$a6,$v1
    sd	$v1,312($sp)
    move	$v1,$a5
    b	.L5ef69650
    sd	$a5,152($sp)
.L5ef698cc:
    andi	$a6,$t1,0x2
    beqz	$a6,.L5ef69f74
    ld	$a5,248($sp)
    ld	$v1,208($sp)
    ld	$s7,176($sp)
    li	$v0,32767
    subu	$s7,$s7,$v1
    sltu	$v0,$v0,$s7
    bnez	$v0,.L5ef6993c
    sd	$a5,352($sp)
    ld	$a6,296($sp)
    ld	$v0,160($sp)
    beqz	$a6,.L5ef6a140
    ld	$a5,184($sp)
    beqz	$v0,.L5ef6a178
    li	$a3,9
.L5ef6990c:
    move	$v1,$a3
    sd	$a3,368($sp)
.L5ef69914:
    b	.L5ef69978
    sd	$a5,328($sp)
.L5ef6991c:
    multu	$a6,$t1
    mflo	$a3
    b	.L5ef69730
    nop
.L5ef6992c:
    beqz	$t1,.L5ef69fc0
    nop
    b	.L5ef69754
    subu	$a3,$a3,$v0
.L5ef6993c:
    ld	$v0,176($sp)
    ld	$v1,296($sp)
    ld	$s7,216($sp)
    ld	$a6,352($sp)
    beqz	$v1,.L5ef6a158
    subu	$s7,$s7,$v0
    ld	$v1,160($sp)
    beqz	$v1,.L5ef6a184
    li	$a3,1
.L5ef69960:
    move	$a5,$a3
    sd	$a3,368($sp)
.L5ef69968:
    sltiu	$a6,$a6,1
    ld	$v0,224($sp)
    sd	$a6,352($sp)
    sd	$v0,328($sp)
.L5ef69978:
    b	.L5ef696f4
    ld	$gp,176($sp)
.L5ef69980:
    ld	$v1,320($sp)
    b	.L5ef69754
    addu	$a3,$v1,$a3
.L5ef6998c:
    ld	$a5,48($sp)
.L5ef69990:
    subu	$a6,$a3,$a2
    andi	$a6,$a6,0xf
    srav	$v0,$a5,$a6
    subu	$a6,$t8,$a6
    sllv	$a6,$a5,$a6
    or	$a6,$a6,$v0
    andi	$a5,$a6,0xffff
    b	.L5ef69288
    sd	$a5,48($sp)
.L5ef699b4:
    ld	$v0,160($sp)
    beqz	$v0,.L5ef6a128
    li	$a3,26
.L5ef699c0:
    move	$v1,$a3
    b	.L5ef696a8
    sd	$a3,368($sp)
.L5ef699cc:
    beqz	$a5,.L5ef6a134
    li	$a3,18
.L5ef699d4:
    move	$a6,$a3
    b	.L5ef696dc
    sd	$a3,368($sp)
.L5ef699e0:
    li	$a3,60
    b	.L5ef696a0
    nop
.L5ef699ec:
    li	$a3,16
    b	.L5ef696d4
    nop
.L5ef699f8:
    move	$v1,$s3
    sd	$s3,88($sp)
    move	$v0,$s2
    b	.L5ef692c4
    sd	$s2,80($sp)
.L5ef69a0c:
    ld	$a5,160($sp)
    move	$v1,$s6
    ld	$v0,232($sp)
    beqz	$a5,.L5ef69a5c
    li	$a3,1
    sd	$v1,232($sp)
    move	$s6,$v0
    move	$v0,$v1
    ld	$v1,312($sp)
    ld	$a5,168($sp)
    move	$a6,$gp
    sd	$a6,168($sp)
    move	$gp,$a5
    move	$a5,$a6
    ld	$a6,152($sp)
    move	$v0,$v1
    sd	$v0,152($sp)
    move	$v1,$a6
    sd	$a6,312($sp)
    move	$a6,$v0
.L5ef69a5c:
    li	$a5,-1
    beq	$a3,$a5,.L5ef69634
    ld	$v0,152($sp)
    beqz	$s8,.L5ef6a190
    addiu	$a0,$a0,8
    ld	$a3,168($sp)
    ld	$a7,168($sp)
    subu	$a7,$a7,$gp
    blez	$a7,.L5ef69a88
    subu	$a3,$gp,$a3
    move	$a3,$a7
.L5ef69a88:
    move	$s1,$a3
.L5ef69a8c:
    sltu	$v0,$zero,$v0
    addu	$s1,$v0,$s1
    beqz	$s1,.L5ef69cc4
    ld	$v1,312($sp)
    move	$a2,$s6
    beqz	$v1,.L5ef69e40
    subu	$a3,$s6,$s0
    blez	$a3,.L5ef69e4c
    move	$a7,$a3
.L5ef69ab0:
    subu	$t1,$gp,$ra
    blez	$t1,.L5ef69d10
    move	$a3,$t1
    beqz	$s8,.L5ef69d1c
    ld	$v1,120($sp)
.L5ef69ac4:
    subu	$a5,$a3,$a7
    mult	$a5,$a4
    mflo	$a5
    mult	$a7,$v1
    ld	$v1,48($sp)
    andi	$a6,$a3,0xf
    subu	$v0,$t8,$a6
    mfhi	$zero
    sllv	$v0,$v1,$v0
    srav	$v1,$v1,$a6
    or	$v0,$v0,$v1
    mflo	$a6
    addu	$a5,$a5,$a6
    ld	$a6,112($sp)
    andi	$v0,$v0,0xffff
    sd	$v0,344($sp)
    addu	$a5,$a5,$a6
    sd	$a5,336($sp)
.L5ef69b14:
    move	$a3,$s1
    ld	$a6,344($sp)
    move	$a7,$gp
    ld	$t1,336($sp)
    move	$t9,$a6
    andi	$a6,$a6,0x1
    sw	$t0,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1960($s4)
    beqz	$a6,.L5ef69d74
    sw	$zero,1228($s4)
.L5ef69b4c:
    blez	$a3,.L5ef69ca4
    nop
    b	.L5ef69bdc
    move	$s1,$zero
.L5ef69b5c:
    addu	$s1,$s1,$s6
    subu	$a3,$a3,$s6
    andi	$v0,$s6,0xf
    subu	$t9,$t8,$v0
    srav	$v0,$gp,$v0
    sllv	$t9,$gp,$t9
    or	$t9,$t9,$v0
    blez	$a3,.L5ef69ca4
    andi	$t9,$t9,0xffff
    mult	$a4,$s1
    mflo	$v0
    addu	$t1,$v0,$t1
    bltz	$t1,.L5ef69ccc
    ld	$a5,360($sp)
    div	$zero,$t1,$a5
    mflo	$s6
    nop
    addiu	$s6,$s6,1
    mult	$s6,$a5
    teq	$a5,$zero,0x7
    mflo	$v1
    nop
    subu	$t1,$t1,$v1
    beqz	$s8,.L5ef69cd8
    nop
.L5ef69bc0:
    blez	$t3,.L5ef69c94
    nop
    blez	$t2,.L5ef69c9c
    addu	$a7,$a7,$s1
.L5ef69bd0:
    addu	$a2,$a2,$s6
.L5ef69bd4:
    blez	$a3,.L5ef69ca4
.L5ef69bd8:
    move	$s1,$zero
.L5ef69bdc:
    beq	$t0,$t9,.L5ef69cf0
    move	$s6,$t9
    addiu	$s1,$s1,1
.L5ef69be8:
    srl	$s6,$s6,0x1
    andi	$v0,$s6,0x1
    beqz	$v0,.L5ef69c0c
    nop
    addiu	$s1,$s1,1
    srl	$s6,$s6,0x1
    andi	$v1,$s6,0x1
    bnezl	$v1,.L5ef69be8
    addiu	$s1,$s1,1
.L5ef69c0c:
    move	$s6,$zero
    slt	$v0,$a3,$s1
    andi	$v1,$s1,0xf
    subu	$gp,$t8,$v1
    srav	$v1,$t9,$v1
    sllv	$gp,$t9,$gp
    or	$gp,$gp,$v1
    beqz	$v0,.L5ef69c34
    andi	$gp,$gp,0xffff
    move	$s1,$a3
.L5ef69c34:
    andi	$t9,$gp,0xffff
    subu	$a3,$a3,$s1
    negu	$v0,$t1
    sw	$a2,1916($s4)
    sw	$a7,1916($s4)
    sw	$v0,1916($s4)
    sw	$t2,1916($s4)
    sw	$t3,1916($s4)
    beq	$t0,$gp,.L5ef69cf8
    sw	$s1,1916($s4)
    addiu	$s6,$s6,1
.L5ef69c60:
    srl	$t9,$t9,0x1
    andi	$t9,$t9,0xffff
    andi	$v1,$t9,0x1
    bnez	$v1,.L5ef69b5c
    nop
    addiu	$s6,$s6,1
    srl	$t9,$t9,0x1
    andi	$t9,$t9,0xffff
    andi	$v0,$t9,0x1
    beqzl	$v0,.L5ef69c60
    addiu	$s6,$s6,1
    b	.L5ef69b5c
    nop
.L5ef69c94:
    bgtz	$t2,.L5ef69bd0
    subu	$a7,$a7,$s1
.L5ef69c9c:
    bgtz	$a3,.L5ef69bd8
    subu	$a2,$a2,$s6
.L5ef69ca4:
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1960($s4)
    sw	$zero,1416($s4)
.L5ef69cc4:
    b	.L5ef69524
    addiu	$s5,$s5,1
.L5ef69ccc:
    move	$s6,$zero
    bnez	$s8,.L5ef69bc0
    nop
.L5ef69cd8:
    blez	$t2,.L5ef69d00
    nop
    blez	$t3,.L5ef69d08
    addu	$a2,$a2,$s1
.L5ef69ce8:
    b	.L5ef69bd4
    addu	$a7,$a7,$s6
.L5ef69cf0:
    b	.L5ef69c0c
    li	$s1,16
.L5ef69cf8:
    b	.L5ef69b5c
    li	$s6,16
.L5ef69d00:
    bgtz	$t3,.L5ef69ce8
    subu	$a2,$a2,$s1
.L5ef69d08:
    b	.L5ef69bd4
    subu	$a7,$a7,$s6
.L5ef69d10:
    subu	$a3,$ra,$gp
    bnez	$s8,.L5ef69ac4
    ld	$v1,120($sp)
.L5ef69d1c:
    ld	$a6,120($sp)
    subu	$v0,$a7,$a3
    mult	$v0,$a4
    mflo	$v0
    mult	$a3,$a6
    ld	$a6,48($sp)
    andi	$v1,$a7,0xf
    subu	$a5,$t8,$v1
    mfhi	$zero
    sllv	$a5,$a6,$a5
    srav	$a6,$a6,$v1
    or	$a5,$a5,$a6
    mflo	$v1
    addu	$v0,$v0,$v1
    ld	$v1,112($sp)
    andi	$a5,$a5,0xffff
    sd	$a5,344($sp)
    addu	$v0,$v0,$v1
    b	.L5ef69b14
    sd	$v0,336($sp)
.L5ef69d74:
    ld	$v1,344($sp)
    sd	$a7,40($sp)
    move	$a7,$zero
    beqz	$v1,.L5ef6a170
    move	$a3,$v1
    addiu	$a7,$a7,1
.L5ef69d8c:
    srl	$a3,$a3,0x1
    andi	$a5,$a3,0x1
    bnez	$a5,.L5ef69db0
    nop
    addiu	$a7,$a7,1
    srl	$a3,$a3,0x1
    andi	$a6,$a3,0x1
    beqzl	$a6,.L5ef69d8c
    addiu	$a7,$a7,1
.L5ef69db0:
    slt	$v0,$s1,$a7
    ld	$v1,344($sp)
    andi	$a5,$a7,0xf
    subu	$t9,$t8,$a5
    sllv	$t9,$v1,$t9
    srav	$v1,$v1,$a5
    or	$t9,$t9,$v1
    beqz	$v0,.L5ef69dd8
    andi	$t9,$t9,0xffff
    move	$a7,$s1
.L5ef69dd8:
    subu	$a3,$s1,$a7
    blez	$a3,.L5ef69ca4
    ld	$v0,336($sp)
    mult	$a4,$a7
    mflo	$t1
    addu	$t1,$t1,$v0
    bltz	$t1,.L5ef69fe0
    ld	$a5,360($sp)
    div	$zero,$t1,$a5
    mflo	$s1
    nop
    addiu	$s1,$s1,1
    mult	$s1,$a5
    teq	$a5,$zero,0x7
    mflo	$v1
    nop
    subu	$t1,$t1,$v1
    beqz	$s8,.L5ef69fe8
    nop
.L5ef69e24:
    blez	$t3,.L5ef69f5c
    addu	$v0,$gp,$a7
    blez	$t2,.L5ef69f68
    sd	$v0,40($sp)
.L5ef69e34:
    addu	$a2,$s6,$s1
    b	.L5ef69b4c
    ld	$a7,40($sp)
.L5ef69e40:
    ld	$a5,112($sp)
    b	.L5ef69b14
    sd	$a5,336($sp)
.L5ef69e4c:
    subu	$a7,$s0,$s6
    b	.L5ef69ab0
    nop
.L5ef69e58:
    ld	$a6,48($sp)
    sw	$a6,1916($s4)
.L5ef69e60:
    beq	$a7,$a2,.L5ef69e6c
    nop
    addiu	$t3,$a7,-1
.L5ef69e6c:
    sw	$s0,1916($s4)
    sw	$t9,1916($s4)
    sw	$s0,1916($s4)
    sw	$t3,1916($s4)
.L5ef69e7c:
    beqz	$a1,.L5ef69ecc
    addiu	$a0,$a0,8
    lh	$t9,2($a0)
    slt	$v0,$a3,$t9
    bnez	$v0,.L5ef69ecc
    nop
    lh	$v1,0($a0)
.L5ef69e98:
    slt	$a6,$t9,$a2
    move	$a7,$t9
    slt	$v1,$s0,$v1
    bnez	$v1,.L5ef69e7c
    addiu	$a1,$a1,-1
    lh	$a5,4($a0)
    slt	$a5,$s0,$a5
    beqz	$a5,.L5ef69e7c
    ld	$v1,48($sp)
    beqz	$a6,.L5ef69ef4
    nop
    b	.L5ef69ef4
    move	$a7,$a2
.L5ef69ecc:
    ld	$v0,48($sp)
.L5ef69ed0:
    subu	$v1,$a3,$a2
    andi	$v1,$v1,0xf
    srav	$a5,$v0,$v1
    subu	$v1,$t8,$v1
    sllv	$v1,$v0,$v1
    or	$v1,$v1,$a5
    andi	$v0,$v1,0xffff
    b	.L5ef69288
    sd	$v0,48($sp)
.L5ef69ef4:
    lh	$t2,6($a0)
    slt	$a5,$a3,$t2
    beqz	$a5,.L5ef69f10
    move	$t3,$a7
    move	$t1,$a3
    b	.L5ef69f14
    nop
.L5ef69f10:
    move	$t1,$t2
.L5ef69f14:
    slt	$a6,$a7,$t1
    beqz	$a6,.L5ef69e7c
    move	$t9,$t1
    beqz	$s1,.L5ef6a1c0
    slt	$v0,$a3,$t2
    subu	$a6,$a3,$t1
    bnez	$v0,.L5ef69e58
    addiu	$a6,$a6,1
    addiu	$t9,$t1,-1
    ld	$a5,48($sp)
    andi	$a6,$a6,0xf
    subu	$v1,$t8,$a6
    sllv	$v1,$a5,$v1
    srav	$a5,$a5,$a6
    or	$v1,$v1,$a5
    andi	$v1,$v1,0xffff
    b	.L5ef69e60
    sw	$v1,1916($s4)
.L5ef69f5c:
    subu	$v0,$gp,$a7
    bgtz	$t2,.L5ef69e34
    sd	$v0,40($sp)
.L5ef69f68:
    subu	$a2,$s6,$s1
    b	.L5ef69b4c
    ld	$a7,40($sp)
.L5ef69f74:
    li	$a5,32767
    beqz	$v1,.L5ef6a2fc
    ld	$v0,192($sp)
    ld	$s7,184($sp)
    ld	$v1,288($sp)
    subu	$s7,$s7,$v0
    sltu	$a5,$a5,$s7
    bnez	$a5,.L5ef6a000
    sd	$v1,352($sp)
    ld	$a5,296($sp)
    ld	$a6,160($sp)
    beqz	$a5,.L5ef6a4a8
    ld	$v1,208($sp)
    beqz	$a6,.L5ef6a4d8
    li	$a3,52
.L5ef69fb0:
    move	$v0,$a3
    sd	$a3,368($sp)
.L5ef69fb8:
    b	.L5ef6a03c
    sd	$v1,328($sp)
.L5ef69fc0:
    b	.L5ef69754
    addu	$a3,$a5,$a3
.L5ef69fc8:
    subu	$a6,$s0,$s3
    bgtz	$t3,.L5ef69418
    sd	$a6,320($sp)
.L5ef69fd4:
    subu	$v0,$ra,$s2
    b	.L5ef69420
    sd	$v0,272($sp)
.L5ef69fe0:
    bnez	$s8,.L5ef69e24
    move	$s1,$zero
.L5ef69fe8:
    blez	$t2,.L5ef6a1b0
    nop
    blez	$t3,.L5ef6a1b8
    addu	$a2,$s6,$a7
.L5ef69ff8:
    b	.L5ef69b4c
    addu	$a7,$gp,$s1
.L5ef6a000:
    ld	$v0,224($sp)
    ld	$v1,296($sp)
    ld	$s7,192($sp)
    ld	$a6,352($sp)
    beqz	$v1,.L5ef6a4c0
    subu	$s7,$s7,$v0
    ld	$v1,160($sp)
    beqz	$v1,.L5ef6a4e4
    li	$a3,24
.L5ef6a024:
    move	$a5,$a3
    sd	$a3,368($sp)
.L5ef6a02c:
    sltiu	$a6,$a6,1
    ld	$v0,216($sp)
    sd	$a6,352($sp)
    sd	$v0,328($sp)
.L5ef6a03c:
    b	.L5ef696f4
    ld	$s6,192($sp)
.L5ef6a044:
    move	$t9,$t1
.L5ef6a048:
    addiu	$a1,$a1,-1
    slt	$v1,$t3,$t9
    beqz	$v1,.L5ef6a0b0
    move	$s1,$t9
    subu	$v1,$s0,$a2
    beqz	$a7,.L5ef6a45c
    slt	$a5,$a3,$t1
    bnez	$a5,.L5ef6a090
    subu	$v1,$a3,$t9
    addiu	$s1,$t9,-1
    ld	$v0,48($sp)
    addiu	$v1,$v1,1
    andi	$v1,$v1,0xf
    subu	$s5,$t8,$v1
    sllv	$s5,$v0,$s5
    srav	$v0,$v0,$v1
    or	$s5,$s5,$v0
    andi	$s5,$s5,0xffff
.L5ef6a090:
    beq	$t3,$a2,.L5ef6a09c
    nop
    addiu	$s0,$t3,-1
.L5ef6a09c:
    sw	$s5,1916($s4)
    sw	$s1,1916($s4)
    sw	$ra,1916($s4)
    sw	$s0,1916($s4)
    sw	$ra,1916($s4)
.L5ef6a0b0:
    addiu	$a0,$a0,8
.L5ef6a0b4:
    beqz	$a1,.L5ef6998c
    nop
    lh	$a5,2($a0)
    bne	$a5,$t2,.L5ef6998c
    nop
    lh	$t1,4($a0)
.L5ef6a0cc:
    move	$t9,$a3
    move	$t3,$a2
    slt	$a6,$a2,$t1
    bnez	$a6,.L5ef6a0ec
    ld	$s5,48($sp)
    addiu	$a0,$a0,8
    b	.L5ef6a0b4
    addiu	$a1,$a1,-1
.L5ef6a0ec:
    lh	$s1,0($a0)
    slt	$v0,$s1,$a3
    beqz	$v0,.L5ef6998c
    slt	$a5,$a3,$t1
    slt	$v1,$s1,$a2
    beqzl	$v1,.L5ef6a108
    move	$t3,$s1
.L5ef6a108:
    beqz	$a5,.L5ef6a044
    move	$s0,$t3
    b	.L5ef6a048
    nop
.L5ef6a118:
    b	.L5ef693fc
    li	$a2,4
.L5ef6a120:
    b	.L5ef69408
    ori	$a2,$a2,0x2
.L5ef6a128:
    li	$a3,18
    b	.L5ef699c0
    nop
.L5ef6a134:
    li	$a3,26
    b	.L5ef699d4
    nop
.L5ef6a140:
    ld	$a6,160($sp)
    beqz	$a6,.L5ef6a490
    li	$a3,39
.L5ef6a14c:
    move	$v0,$a3
    b	.L5ef69914
    sd	$a3,368($sp)
.L5ef6a158:
    ld	$v1,160($sp)
    beqz	$v1,.L5ef6a49c
    li	$a3,11
.L5ef6a164:
    move	$a5,$a3
    b	.L5ef69968
    sd	$a3,368($sp)
.L5ef6a170:
    b	.L5ef69db0
    li	$a7,16
.L5ef6a178:
    li	$a3,1
    b	.L5ef6990c
    nop
.L5ef6a184:
    li	$a3,9
    b	.L5ef69960
    nop
.L5ef6a190:
    ld	$a3,232($sp)
    ld	$a7,232($sp)
    subu	$a7,$a7,$s6
    blez	$a7,.L5ef6a1a8
    subu	$a3,$s6,$a3
    move	$a3,$a7
.L5ef6a1a8:
    b	.L5ef69a8c
    move	$s1,$a3
.L5ef6a1b0:
    bgtz	$t3,.L5ef69ff8
    subu	$a2,$s6,$a7
.L5ef6a1b8:
    b	.L5ef69b4c
    subu	$a7,$gp,$s1
.L5ef6a1c0:
    subu	$v0,$t3,$a2
    beq	$a2,$t3,.L5ef6a1ec
    andi	$v0,$v0,0xf
    ld	$a6,48($sp)
    subu	$a5,$t8,$v0
    sllv	$a5,$a6,$a5
    srav	$a6,$a6,$v0
    or	$a5,$a5,$a6
    andi	$a5,$a5,0xffff
    b	.L5ef6a1f0
    sw	$a5,1916($s4)
.L5ef6a1ec:
    sw	$v1,1916($s4)
.L5ef6a1f0:
    sw	$s0,1916($s4)
    sw	$t3,1916($s4)
    sw	$s0,1916($s4)
    b	.L5ef69e7c
    sw	$t9,1916($s4)
.L5ef6a204:
    sd	$a4,136($sp)
    sd	$s7,432($sp)
    sd	$s8,392($sp)
    sd	$ra,400($sp)
    sd	$s5,408($sp)
    sd	$s0,416($sp)
    sd	$s1,424($sp)
    sd	$s6,376($sp)
    sd	$gp,384($sp)
    sd	$zero,64($sp)
    li	$t0,0xffff
.L5ef6a230:
    ld	$s6,376($sp)
    ld	$gp,384($sp)
    ld	$s8,392($sp)
    ld	$ra,400($sp)
    ld	$s5,408($sp)
    ld	$a5,16($sp)
    ld	$s0,416($sp)
    ld	$s1,424($sp)
    lw	$a5,16($a5)
    lui	$a6,0x3fff
    ori	$a6,$a6,0xffff
    and	$a5,$a5,$a6
    srl	$a5,$a5,0x1c
    beqz	$a5,.L5ef6a430
    ld	$s7,432($sp)
    ld	$s6,376($sp)
    ld	$gp,384($sp)
    ld	$s8,392($sp)
    ld	$ra,400($sp)
    ld	$a6,64($sp)
    ld	$v0,136($sp)
    ld	$s5,408($sp)
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$v0
    lh	$v0,0($v0)
    sd	$a6,56($sp)
    lh	$a6,0($a6)
    ld	$s0,416($sp)
    ld	$s1,424($sp)
    bne	$a6,$v0,.L5ef6a2d0
    ld	$s7,432($sp)
    ld	$v1,136($sp)
    ld	$v0,56($sp)
    lh	$v1,2($v1)
    lh	$v0,2($v0)
    bne	$v0,$v1,.L5ef6a2d0
    ld	$v1,64($sp)
    li	$a5,1
    bnel	$v1,$a5,.L5ef6a434
    ld	$s2,32($sp)
.L5ef6a2d0:
    ld	$a6,48($sp)
    andi	$a6,$a6,0x1
    beqz	$a6,.L5ef6a430
    ld	$v0,72($sp)
    beqz	$v0,.L5ef6a430
    ld	$a1,96($sp)
    ld	$a5,72($sp)
    move	$a0,$a1
    sll	$a5,$a5,0x3
    b	.L5ef6a3a0
    addu	$a1,$a1,$a5
.L5ef6a2fc:
    andi	$a6,$t1,0x1
    beqz	$a6,.L5ef696f4
    ld	$a5,248($sp)
    ld	$v1,200($sp)
    ld	$s7,208($sp)
    ld	$a6,296($sp)
    li	$v0,32767
    subu	$s7,$s7,$v1
    sltu	$v0,$v0,$s7
    bnez	$v0,.L5ef6a354
    sd	$a5,352($sp)
    ld	$a6,296($sp)
    ld	$a5,160($sp)
    beqz	$a6,.L5ef6a588
    ld	$v0,160($sp)
    beqz	$v0,.L5ef6a5b4
    li	$a3,9
.L5ef6a340:
    move	$v1,$a3
    sd	$a3,368($sp)
.L5ef6a348:
    ld	$a5,184($sp)
    b	.L5ef6a38c
    sd	$a5,328($sp)
.L5ef6a354:
    ld	$v0,216($sp)
    ld	$s7,200($sp)
    beqz	$a6,.L5ef6a59c
    subu	$s7,$s7,$v0
    ld	$v1,160($sp)
    beqz	$v1,.L5ef6a5c0
    li	$a3,1
.L5ef6a370:
    move	$a5,$a3
    sd	$a3,368($sp)
.L5ef6a378:
    ld	$v0,224($sp)
    ld	$a6,352($sp)
    sd	$v0,328($sp)
    sltiu	$a6,$a6,1
    sd	$a6,352($sp)
.L5ef6a38c:
    b	.L5ef696f4
    ld	$gp,200($sp)
    addiu	$a0,$a0,8
.L5ef6a398:
    beql	$a0,$a1,.L5ef6a434
    ld	$s2,32($sp)
.L5ef6a3a0:
    lh	$v1,0($a0)
    slt	$v1,$s3,$v1
    bnezl	$v1,.L5ef6a398
    addiu	$a0,$a0,8
    lh	$a5,2($a0)
    slt	$a5,$s2,$a5
    bnezl	$a5,.L5ef6a398
    addiu	$a0,$a0,8
    lh	$a6,4($a0)
    slt	$a6,$s3,$a6
    beqzl	$a6,.L5ef6a398
    addiu	$a0,$a0,8
    lh	$v0,6($a0)
    slt	$v0,$s2,$v0
    beqz	$v0,.L5ef6a398
    addiu	$a0,$a0,8
    li	$v1,1
    sw	$t0,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1960($s4)
    sw	$zero,1228($s4)
    sw	$s3,1916($s4)
    ld	$s3,24($sp)
    sw	$s2,1916($s4)
    ld	$s2,32($sp)
    sw	$v1,1916($s4)
    sw	$v1,1916($s4)
    sw	$zero,1916($s4)
    sw	$v1,1916($s4)
    sw	$zero,1960($s4)
    ld	$s4,240($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L5ef6a430:
    ld	$s2,32($sp)
.L5ef6a434:
    ld	$s3,24($sp)
    sw	$t0,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1916($s4)
    sw	$zero,1960($s4)
    ld	$s4,240($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L5ef6a45c:
    beq	$a2,$s0,.L5ef6a478
    andi	$v1,$v1,0xf
    srav	$v0,$s5,$v1
    subu	$v1,$t8,$v1
    sllv	$s5,$s5,$v1
    or	$s5,$s5,$v0
    andi	$s5,$s5,0xffff
.L5ef6a478:
    sw	$s5,1916($s4)
    sw	$s0,1916($s4)
    sw	$ra,1916($s4)
    sw	$s1,1916($s4)
    b	.L5ef6a0b0
    sw	$ra,1916($s4)
.L5ef6a490:
    li	$a3,47
    b	.L5ef6a14c
    nop
.L5ef6a49c:
    li	$a3,3
    b	.L5ef6a164
    nop
.L5ef6a4a8:
    ld	$a5,160($sp)
    beqz	$a5,.L5ef6a570
    li	$a3,26
.L5ef6a4b4:
    move	$a6,$a3
    b	.L5ef69fb8
    sd	$a3,368($sp)
.L5ef6a4c0:
    ld	$v0,160($sp)
    beqz	$v0,.L5ef6a57c
    li	$a3,18
.L5ef6a4cc:
    move	$v1,$a3
    b	.L5ef6a02c
    sd	$a3,368($sp)
.L5ef6a4d8:
    li	$a3,60
    b	.L5ef69fb0
    nop
.L5ef6a4e4:
    li	$a3,16
    b	.L5ef6a024
    nop
.L5ef6a4f0:
    move	$a5,$t0
    bnez	$a1,.L5ef691ac
    sd	$t0,96($sp)
.L5ef6a4fc:
    sd	$s3,24($sp)
    sd	$s2,32($sp)
    li	$a6,1
    b	.L5ef691bc
    sd	$a6,72($sp)
.L5ef6a510:
    li	$v1,4107
    sw	$v1,1324($s4)
    lw	$v0,76($a7)
    li	$t2,1
    move	$a2,$zero
    andi	$v0,$v0,0x3
    b	.L5ef69168
    sw	$v0,1236($s4)
.L5ef6a530:
    li	$a6,4104
    sw	$a6,1324($s4)
    lw	$a5,76($a7)
    li	$t2,1
    move	$a2,$zero
    andi	$a5,$a5,0xf
    b	.L5ef69168
    sw	$a5,1236($s4)
.L5ef6a550:
    li	$v1,4107
    sw	$v1,1324($s4)
    lw	$v0,76($a7)
    li	$t2,9
    move	$a2,$zero
    andi	$v0,$v0,0xc
    b	.L5ef69168
    sw	$v0,1236($s4)
.L5ef6a570:
    li	$a3,18
    b	.L5ef6a4b4
    nop
.L5ef6a57c:
    li	$a3,26
    b	.L5ef6a4cc
    nop
.L5ef6a588:
    beqz	$a5,.L5ef6a5cc
    li	$a3,39
.L5ef6a590:
    move	$a6,$a3
    b	.L5ef6a348
    sd	$a3,368($sp)
.L5ef6a59c:
    ld	$v0,160($sp)
    beqz	$v0,.L5ef6a5d4
    li	$a3,11
.L5ef6a5a8:
    move	$v1,$a3
    b	.L5ef6a378
    sd	$a3,368($sp)
.L5ef6a5b4:
    li	$a3,1
    b	.L5ef6a340
    nop
.L5ef6a5c0:
    li	$a3,9
    b	.L5ef6a370
    nop
.L5ef6a5cc:
    b	.L5ef6a590
    li	$a3,47
.L5ef6a5d4:
    b	.L5ef6a5a8
    li	$a3,3
.end expFastLineSD

.globl expSegmentSS
.ent expSegmentSS
expSegmentSS:
    lui	$v0,0x18
    addiu	$v0,$v0,5432
    addu	$at,$t9,$v0
    lw	$t0,nfbGCPrivateIndex
    lw	$a7,76($a1)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    lw	$t0,8($a7)
    lw	$a6,8($t0)
    addiu	$sp,$sp,-752
    beqz	$a6,.L5ef3e254
    sd	$a1,160($sp)
    addiu	$v1,$a6,8
    beqz	$a6,.L5ef3e260
    sd	$v1,168($sp)
.L5ef3d0cc:
    lw	$a1,4($a6)
.L5ef3d0d0:
    li	$a4,1
    beq	$a1,$a4,.L5ef3e2c8
    lw	$v0,nfbWindowPrivateIndex
    beqz	$a1,.L5ef3e1a4
    move	$a1,$a7
    lw	$t0,8($a7)
    lw	$v0,nfbWindowPrivateIndex
    ld	$v1,160($sp)
    lw	$t2,132($a0)
    sll	$v0,$v0,0x2
    lw	$v1,0($v1)
    addu	$t2,$t2,$v0
    lw	$t1,expScreenPrivateIndex
    lw	$v1,436($v1)
    lw	$t2,0($t2)
    sll	$t1,$t1,0x2
    addu	$v1,$v1,$t1
    lw	$v1,0($v1)
    li	$a5,13
    lw	$t2,20($t2)
    lw	$v1,0($v1)
    lui	$v0,0x4
    move	$a6,$t2
    sd	$v1,248($sp)
    addu	$v0,$v0,$v1
    beq	$t2,$a5,.L5ef3ef1c
    sd	$v0,344($sp)
    li	$v1,14
    beq	$a6,$v1,.L5ef3ef74
    li	$a4,12
    beq	$a6,$a4,.L5ef3ef50
    ld	$v0,344($sp)
    ori	$v1,$t2,0x1000
    sw	$v1,1324($v0)
    sw	$zero,1236($v0)
    lbu	$a7,21($a1)
    lw	$a6,76($a1)
    sll	$a7,$a7,0x3
.L5ef3d168:
    lui	$a4,0xff
    ld	$v0,344($sp)
    lw	$a5,64($a1)
    ori	$a4,$a4,0xffff
    and	$a4,$a6,$a4
    sw	$a5,1328($v0)
    sw	$a4,1916($v0)
    lbu	$v1,72($a1)
    ld	$a4,160($sp)
    sw	$v1,1916($v0)
    sw	$a7,1916($v0)
    lw	$t2,0($a4)
    lw	$t2,436($t2)
    addu	$t2,$t2,$t1
    lw	$t2,0($t2)
    sd	$zero,456($sp)
    lui	$a5,0x3fff
    lw	$t2,8($t2)
    lw	$a4,16($a4)
    ori	$a5,$a5,0xffff
    lbu	$t2,54($t2)
    and	$a4,$a4,$a5
    srl	$a4,$a4,0x1c
    sd	$t2,272($sp)
    beqz	$a4,.L5ef3eeb0
    slti	$t2,$t2,5
    beqz	$t2,.L5ef3ef40
    ld	$a5,344($sp)
    li	$a6,345
    sw	$zero,1380($a5)
.L5ef3d1e0:
    li	$v0,1
    sd	$v0,304($sp)
.L5ef3d1e8:
    lw	$a1,8($t0)
    beqz	$a1,.L5ef3e270
    addiu	$v1,$a1,8
    beqz	$a1,.L5ef3e27c
    sd	$v1,224($sp)
.L5ef3d1fc:
    lw	$a4,4($a1)
    sd	$a4,264($sp)
.L5ef3d204:
    sd	$s3,688($sp)
    sd	$s4,680($sp)
    sd	$s7,664($sp)
    sd	$s8,672($sp)
    sd	$ra,656($sp)
    sd	$s0,648($sp)
    sd	$s5,640($sp)
    sd	$gp,632($sp)
    sd	$s6,624($sp)
    sd	$s1,616($sp)
    lh	$v0,10($a0)
    sd	$s2,608($sp)
    lh	$a5,8($a0)
    sd	$v0,208($sp)
    blez	$a2,.L5ef3e014
    sd	$a5,216($sp)
    sd	$s3,688($sp)
    sd	$s4,680($sp)
    sd	$s7,664($sp)
    sd	$s8,672($sp)
    sd	$ra,656($sp)
    sd	$s0,648($sp)
    sd	$s5,640($sp)
    sd	$gp,632($sp)
    sd	$s6,624($sp)
    sd	$s1,616($sp)
    li	$s2,1280
    lw	$v0,12($sp)
    sd	$a3,320($sp)
    lw	$a5,8($sp)
    sd	$v0,368($sp)
    move	$v0,$a3
    sd	$a5,400($sp)
    sll	$a5,$a6,0x2
    lw	$v1,0($sp)
    sd	$a5,240($sp)
    lw	$a4,4($sp)
    sd	$v1,312($sp)
    sll	$v1,$a2,0x3
    sd	$a4,384($sp)
    ld	$a4,272($sp)
    addu	$v1,$v1,$a3
    sd	$v1,200($sp)
    addiu	$a4,$a4,-1
    b	.L5ef3d2fc
    sd	$a4,232($sp)
.L5ef3d2bc:
    ld	$a5,408($sp)
    ld	$a4,344($sp)
    ld	$v1,456($sp)
    ld	$v0,448($sp)
    sw	$s1,1916($a4)
    addiu	$v1,$v1,1
    sd	$v1,456($sp)
    ld	$v1,432($sp)
    sw	$v0,1916($a4)
    sw	$a5,1916($a4)
    sw	$v1,1916($a4)
.L5ef3d2e8:
    ld	$a4,320($sp)
.L5ef3d2ec:
    ld	$a5,200($sp)
    addiu	$a4,$a4,8
    beq	$a4,$a5,.L5ef3e014
    sd	$a4,320($sp)
.L5ef3d2fc:
    ld	$s1,264($sp)
    ld	$v1,320($sp)
    ld	$a0,224($sp)
    sd	$s1,416($sp)
    lh	$s1,0($v1)
    ld	$a4,208($sp)
    lh	$a5,6($v1)
    lh	$v0,4($v1)
    lh	$v1,2($v1)
    addu	$a5,$a5,$a4
    sd	$a5,432($sp)
    ld	$a5,216($sp)
    addu	$v1,$v1,$a4
    sd	$v1,448($sp)
    addu	$v0,$v0,$a5
    addu	$s1,$s1,$a5
    bne	$s1,$v0,.L5ef3d3e8
    sd	$v0,408($sp)
    ld	$v1,448($sp)
    ld	$v0,432($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L5ef3d380
    ld	$a4,304($sp)
    ld	$v1,448($sp)
    beqz	$a4,.L5ef3dee4
    ld	$a5,432($sp)
    ld	$a5,448($sp)
    ld	$v1,432($sp)
    sd	$a5,432($sp)
    move	$v0,$v1
    move	$v1,$a5
    sd	$v0,448($sp)
    move	$a5,$v0
.L5ef3d380:
    ld	$a4,264($sp)
    beqz	$a4,.L5ef3d3c4
    ld	$a5,448($sp)
    lh	$v0,6($a0)
    slt	$a5,$a5,$v0
    bnez	$a5,.L5ef3d3c8
    ld	$v0,416($sp)
    ld	$v1,416($sp)
.L5ef3d3a0:
    addiu	$a0,$a0,8
    addiu	$v1,$v1,-1
    beqz	$v1,.L5ef3d2e8
    sd	$v1,416($sp)
    ld	$a4,448($sp)
    lh	$a5,6($a0)
    slt	$a4,$a4,$a5
    beqz	$a4,.L5ef3d3a0
    ld	$v1,416($sp)
.L5ef3d3c4:
    ld	$v0,416($sp)
.L5ef3d3c8:
    beqz	$v0,.L5ef3d2e8
    ld	$v1,432($sp)
    lh	$a6,2($a0)
    slt	$v1,$v1,$a6
    bnez	$v1,.L5ef3d2ec
    ld	$a4,320($sp)
    b	.L5ef3d500
    lh	$a5,0($a0)
.L5ef3d3e8:
    ld	$a5,432($sp)
    ld	$a4,448($sp)
    bne	$a4,$a5,.L5ef3d550
    ld	$v0,416($sp)
    ld	$v0,408($sp)
    slt	$v0,$v0,$s1
    beqz	$v0,.L5ef3d424
    ld	$a5,408($sp)
    ld	$v1,304($sp)
    beqz	$v1,.L5ef3df8c
    ld	$v0,408($sp)
    move	$a4,$a5
    sd	$s1,408($sp)
    move	$a5,$s1
    move	$s1,$a4
.L5ef3d424:
    ld	$v0,416($sp)
    beqz	$v0,.L5ef3d2e8
    ld	$v1,448($sp)
    lh	$a4,6($a0)
    slt	$v1,$v1,$a4
    bnez	$v1,.L5ef3d46c
    ld	$a4,416($sp)
    ld	$a5,416($sp)
.L5ef3d444:
    addiu	$a0,$a0,8
    addiu	$a5,$a5,-1
    beqz	$a5,.L5ef3d2e8
    sd	$a5,416($sp)
    ld	$v0,448($sp)
    lh	$v1,6($a0)
    slt	$v0,$v0,$v1
    beqz	$v0,.L5ef3d444
    ld	$a5,416($sp)
    ld	$a4,416($sp)
.L5ef3d46c:
    ld	$v0,416($sp)
    beqz	$a4,.L5ef3d2e8
    ld	$a5,448($sp)
    lh	$a6,2($a0)
    slt	$a5,$a5,$a6
    bnez	$a5,.L5ef3d2e8
    move	$a2,$a6
    beqz	$v0,.L5ef3d2ec
    ld	$a4,320($sp)
    bne	$a6,$a2,.L5ef3d2ec
    ld	$a4,320($sp)
    b	.L5ef3de80
    lh	$a3,4($a0)
.L5ef3d4a0:
    move	$a6,$a7
.L5ef3d4a4:
    move	$a3,$a6
.L5ef3d4a8:
    ld	$a5,408($sp)
    slt	$v1,$a3,$a2
    bnez	$v1,.L5ef3d4d4
    ld	$a4,344($sp)
    sw	$s1,1916($a4)
    sw	$a2,1916($a4)
    ld	$v0,456($sp)
    sw	$a5,1916($a4)
    sw	$a3,1916($a4)
    addiu	$v0,$v0,1
    sd	$v0,456($sp)
.L5ef3d4d4:
    ld	$v1,416($sp)
    addiu	$a0,$a0,8
    addiu	$v1,$v1,-1
    beqz	$v1,.L5ef3d2e8
    sd	$v1,416($sp)
    ld	$a4,432($sp)
    lh	$a6,2($a0)
    slt	$a4,$a4,$a6
    bnez	$a4,.L5ef3d2ec
    ld	$a4,320($sp)
    lh	$a5,0($a0)
.L5ef3d500:
    ld	$a4,304($sp)
    slt	$a5,$s1,$a5
    bnez	$a5,.L5ef3d4d4
    ld	$v1,448($sp)
    lh	$v0,4($a0)
    ld	$a2,448($sp)
    slt	$v0,$s1,$v0
    beqz	$v0,.L5ef3d4d4
    ld	$a5,432($sp)
    slt	$v1,$a6,$v1
    beqzl	$v1,.L5ef3d530
    move	$a2,$a6
.L5ef3d530:
    beqz	$a4,.L5ef3db0c
    lh	$a3,6($a0)
    addiu	$a7,$a3,-1
    slt	$a5,$a5,$a7
    beqz	$a5,.L5ef3d4a0
    ld	$a6,432($sp)
    b	.L5ef3d4a4
    nop
.L5ef3d550:
    beqz	$v0,.L5ef3d2e8
    sd	$zero,424($sp)
    ld	$v0,448($sp)
    ld	$a5,432($sp)
    sd	$a0,464($sp)
    subu	$a5,$a5,$v0
    sd	$a5,328($sp)
    sra	$v1,$a5,0x1f
    sll	$v0,$a5,0x1
    and	$v0,$v0,$v1
    ld	$v1,408($sp)
    subu	$a5,$a5,$v0
    sd	$a5,192($sp)
    subu	$v1,$v1,$s1
    sd	$v1,336($sp)
    sll	$v0,$a5,0x1
    sll	$a4,$a5,0x1
    sd	$a4,296($sp)
    sd	$v0,176($sp)
    sra	$v0,$v1,0x1f
    sll	$a4,$v1,0x1
    and	$a4,$a4,$v0
    subu	$v1,$v1,$a4
    sd	$v1,352($sp)
    slt	$a5,$a5,$v1
    sll	$a4,$v1,0x1
    sll	$v1,$v1,0x1
    sd	$a5,280($sp)
    sd	$a4,256($sp)
    b	.L5ef3d63c
    sd	$v1,288($sp)
.L5ef3d5cc:
    lh	$a4,4($t3)
    ld	$v1,408($sp)
    slt	$v1,$v1,$a4
    bnezl	$v1,.L5ef3d5e8
    slt	$a5,$a5,$a6
    li	$a3,4
.L5ef3d5e4:
    slt	$a5,$a5,$a6
.L5ef3d5e8:
    beqzl	$a5,.L5ef3d6c0
    lh	$a4,6($t3)
    ori	$a3,$a3,0x2
.L5ef3d5f4:
    ld	$a2,296($sp)
.L5ef3d5f8:
    or	$v0,$a0,$a3
    beqz	$v0,.L5ef3d2bc
    ld	$a4,352($sp)
    move	$t2,$zero
    move	$t0,$a0
    ld	$a5,336($sp)
    ld	$s3,464($sp)
    and	$v1,$a0,$a3
    beqz	$v1,.L5ef3d6d8
    move	$t8,$zero
    addiu	$t3,$t3,8
.L5ef3d624:
    ld	$a4,424($sp)
.L5ef3d628:
    ld	$a5,416($sp)
    sd	$t3,464($sp)
    addiu	$a4,$a4,1
    beq	$a4,$a5,.L5ef3d2e8
    sd	$a4,424($sp)
.L5ef3d63c:
    ld	$a7,464($sp)
    lh	$a7,0($a7)
    move	$a0,$zero
    ld	$t3,464($sp)
    slt	$v0,$s1,$a7
    beqz	$v0,.L5ef3d690
    move	$a3,$zero
    li	$a0,8
    ld	$t3,464($sp)
.L5ef3d660:
    lh	$a6,2($t3)
.L5ef3d664:
    ld	$v0,448($sp)
    ld	$v1,408($sp)
    slt	$v0,$v0,$a6
    beqz	$v0,.L5ef3d6a8
    ld	$a5,448($sp)
    ori	$a0,$a0,0x2
.L5ef3d67c:
    slt	$v1,$v1,$a7
.L5ef3d680:
    beqz	$v1,.L5ef3d5cc
    ld	$a5,432($sp)
    b	.L5ef3d5e4
    li	$a3,8
.L5ef3d690:
    lh	$a4,4($t3)
    slt	$a4,$s1,$a4
    bnezl	$a4,.L5ef3d664
    lh	$a6,2($t3)
    b	.L5ef3d660
    li	$a0,4
.L5ef3d6a8:
    lh	$v0,6($t3)
    slt	$a5,$a5,$v0
    bnezl	$a5,.L5ef3d680
    slt	$v1,$v1,$a7
    b	.L5ef3d67c
    ori	$a0,$a0,0x1
.L5ef3d6c0:
    ld	$v1,432($sp)
    slt	$v1,$v1,$a4
    bnez	$v1,.L5ef3d5f8
    ld	$a2,296($sp)
    b	.L5ef3d5f4
    ori	$a3,$a3,0x1
.L5ef3d6d8:
    move	$t9,$zero
    ld	$s7,448($sp)
    ld	$ra,408($sp)
    move	$t1,$a3
    andi	$s5,$zero,0x1
    bltz	$a5,.L5ef3d94c
    ld	$v0,328($sp)
    bltz	$v0,.L5ef3d958
.L5ef3d6f8:
    ld	$v1,280($sp)
    beqz	$v1,.L5ef3d964
.L5ef3d700:
    ld	$a1,288($sp)
    move	$gp,$zero
    sd	$s1,440($sp)
    sd	$a4,360($sp)
.L5ef3d710:
    move	$t3,$a7
    move	$s1,$a6
    move	$v0,$ra
    sd	$ra,584($sp)
    sd	$ra,600($sp)
    move	$ra,$zero
    sd	$s7,376($sp)
    andi	$s6,$t9,0x1
    andi	$s8,$t9,0x2
    andi	$a4,$t9,0x4
    move	$t9,$s7
    ld	$v1,432($sp)
    sd	$a4,592($sp)
    ld	$s2,440($sp)
    move	$s0,$v1
    sd	$v1,576($sp)
    sd	$s2,392($sp)
    move	$s4,$s2
    lh	$s4,6($s3)
    lh	$s3,4($s3)
    move	$t9,$s2
    addiu	$s4,$s4,-1
    addiu	$s3,$s3,-1
.L5ef3d76c:
    and	$a5,$t0,$t1
.L5ef3d770:
    beqz	$a5,.L5ef3d798
    or	$v0,$t0,$t1
    li	$s2,1280
    li	$a0,-1
    move	$t2,$t0
    move	$t8,$t1
    ld	$s1,440($sp)
    ld	$t3,464($sp)
.L5ef3d790:
    b	.L5ef3d624
    addiu	$t3,$t3,8
.L5ef3d798:
    beqzl	$v0,.L5ef3db28
    li	$s2,1280
    beqz	$t0,.L5ef3d984
    ld	$a4,584($sp)
.L5ef3d7a8:
    subu	$a5,$t3,$s2
    andi	$v1,$t0,0x8
    beqz	$v1,.L5ef3d9f0
    or	$t2,$t0,$t2
    move	$v0,$s8
    sd	$s8,368($sp)
    li	$a4,32767
    sltu	$a4,$a4,$a5
    bnez	$a4,.L5ef3d7f4
    sd	$a5,400($sp)
    beqz	$s6,.L5ef3dacc
    nop
    beqz	$ra,.L5ef3daf4
    li	$a0,52
.L5ef3d7e0:
    move	$v1,$a0
    sd	$a0,384($sp)
.L5ef3d7e8:
    move	$a4,$s7
    b	.L5ef3d828
    sd	$s7,312($sp)
.L5ef3d7f4:
    ld	$a5,600($sp)
    ld	$a4,576($sp)
    subu	$a5,$a5,$t3
    beqz	$s6,.L5ef3dae0
    sd	$a5,400($sp)
    beqz	$ra,.L5ef3db00
    li	$a0,24
.L5ef3d810:
    move	$v0,$a0
    sd	$a0,384($sp)
.L5ef3d818:
    ld	$v1,368($sp)
    sd	$a4,312($sp)
    sltiu	$v1,$v1,1
    sd	$v1,368($sp)
.L5ef3d828:
    move	$t9,$t3
.L5ef3d82c:
    beqz	$ra,.L5ef3d83c
    ld	$a5,368($sp)
    sltiu	$a5,$a5,1
    sd	$a5,368($sp)
.L5ef3d83c:
    ld	$a6,384($sp)
    move	$t0,$zero
    ld	$a3,400($sp)
    andi	$a6,$a6,0x1
    beqz	$a6,.L5ef3da38
    sll	$a3,$a3,0x1
    ld	$v0,352($sp)
    multu	$v0,$a3
    mflo	$a0
    ld	$a3,384($sp)
.L5ef3d86c:
    ld	$a5,352($sp)
    ld	$a4,192($sp)
    andi	$v1,$a3,0x2
    beqz	$v1,.L5ef3da4c
    andi	$a3,$a3,0x4
    beqz	$a3,.L5ef3dac4
    ld	$a4,352($sp)
    subu	$a0,$a0,$a4
.L5ef3d88c:
    ld	$a5,384($sp)
    ld	$v1,384($sp)
    ld	$a4,384($sp)
    andi	$a5,$a5,0x8
    beqz	$a5,.L5ef3da5c
    andi	$a4,$a4,0x10
    addu	$a0,$a0,$s5
    addiu	$a0,$a0,-1
.L5ef3d8ac:
    ld	$a5,176($sp)
    beqz	$a4,.L5ef3da64
    ld	$v0,256($sp)
    divu	$zero,$a0,$v0
    teq	$v0,$zero,0x7
    mflo	$a5
    nop
    sd	$a5,400($sp)
.L5ef3d8cc:
    ld	$a0,312($sp)
    andi	$v1,$v1,0x20
    beqz	$v1,.L5ef3d8e8
    ld	$a5,368($sp)
    ld	$a4,400($sp)
    addiu	$a4,$a4,1
    sd	$a4,400($sp)
.L5ef3d8e8:
    beqz	$a5,.L5ef3d8f8
    ld	$v0,400($sp)
    negu	$v0,$v0
    sd	$v0,400($sp)
.L5ef3d8f8:
    ld	$a4,400($sp)
    beqz	$a6,.L5ef3da78
    addu	$a0,$a0,$a4
    move	$t9,$a0
.L5ef3d908:
    slt	$a5,$t9,$t3
    beqz	$a5,.L5ef3d918
    slt	$v0,$s3,$t9
    li	$t0,8
.L5ef3d918:
    ld	$a4,376($sp)
    beqz	$v0,.L5ef3d928
    ld	$v1,376($sp)
    ori	$t0,$t0,0x4
.L5ef3d928:
    slt	$v1,$v1,$s1
    beqzl	$v1,.L5ef3d93c
    slt	$a4,$s4,$a4
    ori	$t0,$t0,0x2
    slt	$a4,$s4,$a4
.L5ef3d93c:
    beqz	$a4,.L5ef3d770
    and	$a5,$t0,$t1
    b	.L5ef3d76c
    ori	$t0,$t0,0x1
.L5ef3d94c:
    ld	$a5,328($sp)
    bgez	$a5,.L5ef3d6f8
    li	$t9,4
.L5ef3d958:
    ld	$v0,280($sp)
    bnez	$v0,.L5ef3d700
    ori	$t9,$t9,0x2
.L5ef3d964:
    sd	$s1,440($sp)
    ori	$t9,$t9,0x1
    ld	$a1,296($sp)
    ld	$a2,288($sp)
    ld	$v1,192($sp)
    li	$gp,1
    b	.L5ef3d710
    sd	$v1,360($sp)
.L5ef3d984:
    sltiu	$ra,$ra,1
    ld	$v1,376($sp)
    sd	$s0,376($sp)
    move	$a5,$t9
    sd	$a5,584($sp)
    move	$t9,$a4
    move	$a4,$a5
    ld	$a4,600($sp)
    move	$a5,$s2
    sd	$a5,600($sp)
    move	$s2,$a4
    move	$a4,$a5
    move	$a5,$t0
    move	$t0,$t1
    move	$v0,$v1
    move	$v1,$s0
    move	$v1,$s7
    move	$s0,$v0
    ld	$v0,576($sp)
    sd	$v1,576($sp)
    move	$t1,$a5
    move	$a4,$t2
    move	$t2,$t8
    move	$t8,$a4
    move	$s7,$v0
    b	.L5ef3d7a8
    move	$v0,$v1
.L5ef3d9f0:
    ld	$a5,592($sp)
    andi	$v0,$t0,0x2
    beqz	$v0,.L5ef3defc
    li	$v1,32767
    sd	$a5,368($sp)
    subu	$a4,$s1,$s7
    sltu	$v1,$v1,$a4
    bnez	$v1,.L5ef3da84
    sd	$a4,400($sp)
    beqz	$s6,.L5ef3dfb8
    nop
    beqz	$ra,.L5ef3dfe0
    li	$a0,9
.L5ef3da24:
    move	$v0,$a0
    sd	$a0,384($sp)
.L5ef3da2c:
    move	$v1,$s2
    b	.L5ef3dab8
    sd	$s2,312($sp)
.L5ef3da38:
    ld	$a0,192($sp)
    multu	$a0,$a3
    mflo	$a0
    b	.L5ef3d86c
    ld	$a3,384($sp)
.L5ef3da4c:
    beqzl	$a3,.L5ef3df44
    ld	$a4,192($sp)
    b	.L5ef3d88c
    subu	$a0,$a0,$a4
.L5ef3da5c:
    b	.L5ef3d8ac
    subu	$a0,$a0,$s5
.L5ef3da64:
    divu	$zero,$a0,$a5
    teq	$a5,$zero,0x7
    mflo	$v0
    b	.L5ef3d8cc
    sd	$v0,400($sp)
.L5ef3da78:
    move	$v1,$a0
    b	.L5ef3d908
    sd	$a0,376($sp)
.L5ef3da84:
    ld	$a4,576($sp)
    ld	$v0,368($sp)
    subu	$a4,$a4,$s1
    beqz	$s6,.L5ef3dfcc
    sd	$a4,400($sp)
    beqz	$ra,.L5ef3dfec
    li	$a0,1
.L5ef3daa0:
    move	$a5,$a0
    sd	$a0,384($sp)
.L5ef3daa8:
    sltiu	$v0,$v0,1
    ld	$v1,600($sp)
    sd	$v0,368($sp)
    sd	$v1,312($sp)
.L5ef3dab8:
    move	$a4,$s1
    b	.L5ef3d82c
    sd	$s1,376($sp)
.L5ef3dac4:
    b	.L5ef3d88c
    addu	$a0,$a5,$a0
.L5ef3dacc:
    beqz	$ra,.L5ef3dfa0
    li	$a0,26
    move	$v0,$a0
.L5ef3dad8:
    b	.L5ef3d7e8
    sd	$a0,384($sp)
.L5ef3dae0:
    beqz	$ra,.L5ef3dfac
    li	$a0,18
    move	$v1,$a0
.L5ef3daec:
    b	.L5ef3d818
    sd	$a0,384($sp)
.L5ef3daf4:
    li	$a0,60
    b	.L5ef3d7e0
    nop
.L5ef3db00:
    li	$a0,16
    b	.L5ef3d810
    nop
.L5ef3db0c:
    ld	$a4,432($sp)
    slt	$a4,$a4,$a3
    beqz	$a4,.L5ef3db20
    move	$a6,$a3
    ld	$a6,432($sp)
.L5ef3db20:
    b	.L5ef3d4a8
    move	$a3,$a6
.L5ef3db28:
    li	$a0,1
    ld	$t0,360($sp)
    ld	$s1,440($sp)
    ld	$a4,584($sp)
    beqz	$ra,.L5ef3db70
    ld	$t3,464($sp)
    move	$a5,$t9
    ld	$v1,376($sp)
    sd	$s0,376($sp)
    sd	$a5,584($sp)
    move	$t9,$a4
    move	$a4,$a5
    move	$a5,$t2
    move	$t2,$t8
    move	$t8,$a5
    move	$v0,$v1
    move	$v1,$s0
    move	$s0,$v0
.L5ef3db70:
    li	$v0,-1
    beq	$a0,$v0,.L5ef3d790
    nop
    beqz	$gp,.L5ef3e1ac
    ld	$a3,376($sp)
    ld	$a0,376($sp)
    subu	$a0,$s0,$a0
    blez	$a0,.L5ef3db98
    subu	$a3,$a3,$s0
    move	$a3,$a0
.L5ef3db98:
    move	$a0,$a3
.L5ef3db9c:
    beqz	$t8,.L5ef3dddc
    ld	$a5,160($sp)
    addiu	$a0,$a0,1
.L5ef3dba8:
    beqz	$a0,.L5ef3dd98
    subu	$a6,$t9,$s1
    beqz	$t2,.L5ef3dbf8
    ld	$a7,376($sp)
    blez	$a6,.L5ef3de14
    ld	$v0,448($sp)
    move	$a3,$a6
.L5ef3dbc4:
    subu	$a7,$a7,$v0
    blez	$a7,.L5ef3ddac
    ld	$v0,376($sp)
    beqz	$gp,.L5ef3ddb8
    move	$a6,$a7
.L5ef3dbd8:
    mult	$a3,$a1
    mflo	$v1
    mult	$a6,$a2
    mflo	$a4
    subu	$v1,$v1,$a4
    addu	$t0,$v1,$t0
.L5ef3dbf8:
    ld	$a5,304($sp)
    ld	$a7,232($sp)
    ld	$a4,344($sp)
    beqz	$a5,.L5ef3de00
    ld	$v0,456($sp)
    ld	$a3,272($sp)
    and	$a7,$a7,$v0
    ld	$v0,272($sp)
    slt	$v0,$a7,$v0
    beqz	$v0,.L5ef3dd48
    move	$a2,$zero
    subu	$a3,$a3,$a7
    andi	$a6,$a3,0x3
    beqz	$a6,.L5ef3dc54
    move	$t1,$a3
.L5ef3dc34:
    ld	$a4,344($sp)
    addiu	$a2,$a2,1
    addi	$a6,$a6,-1
    sw	$s2,1916($a4)
    sw	$zero,1916($a4)
    sw	$s2,1916($a4)
    bnez	$a6,.L5ef3dc34
    sw	$zero,1916($a4)
.L5ef3dc54:
    sra	$a6,$t1,0x2
    beqz	$a6,.L5ef3dd48
    move	$t2,$a2
    slti	$a5,$a6,2
    bnez	$a5,.L5ef3f5e8
    addiu	$v1,$a3,-4
    ld	$a2,344($sp)
    addiu	$v0,$t2,4
    move	$a1,$s2
    sw	$s2,1916($a2)
    sw	$zero,1916($a2)
.L5ef3dc80:
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$v1,.L5ef3dda4
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    sw	$zero,1916($a2)
    sw	$a1,1916($a2)
    addiu	$v0,$v0,8
    bne	$v0,$a3,.L5ef3dc80
    sw	$zero,1916($a2)
    ld	$v0,344($sp)
.L5ef3dd10:
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
    sw	$s2,1916($v0)
    sw	$zero,1916($v0)
.L5ef3dd48:
    sd	$zero,456($sp)
.L5ef3dd4c:
    ld	$a5,248($sp)
    ld	$v1,240($sp)
    lui	$a4,0x4
    addu	$v1,$v1,$a5
    addu	$v1,$v1,$a4
    ld	$a4,344($sp)
    ld	$v0,336($sp)
    ld	$a5,376($sp)
    sw	$zero,1960($a4)
    sw	$zero,1228($a4)
    sw	$t9,1916($a4)
    sw	$a5,1916($a4)
    ld	$a5,328($sp)
    sw	$t0,1916($a4)
    sw	$v0,1916($a4)
    sw	$a5,1916($a4)
    sw	$a0,1916($a4)
    sw	$zero,1960($a4)
    sw	$zero,0($v1)
.L5ef3dd98:
    addiu	$t3,$t3,8
    b	.L5ef3d628
    ld	$a4,424($sp)
.L5ef3dda4:
    b	.L5ef3dd10
    ld	$v0,344($sp)
.L5ef3ddac:
    ld	$a6,448($sp)
    bnez	$gp,.L5ef3dbd8
    subu	$a6,$a6,$v0
.L5ef3ddb8:
    mult	$a6,$a1
    mflo	$v1
    mult	$a3,$a2
    mflo	$a4
    subu	$v1,$v1,$a4
    b	.L5ef3dbf8
    addu	$t0,$v1,$t0
.L5ef3dddc:
    lw	$a5,16($a5)
    lui	$v0,0x3fff
    ori	$v0,$v0,0xffff
    and	$a5,$a5,$v0
    srl	$a5,$a5,0x1c
    beqz	$a5,.L5ef3dba8
    nop
    b	.L5ef3dba8
    addiu	$a0,$a0,1
.L5ef3de00:
    sw	$s2,1916($a4)
    sw	$zero,1916($a4)
    sw	$s2,1916($a4)
    b	.L5ef3dd4c
    sw	$zero,1916($a4)
.L5ef3de14:
    subu	$a3,$s1,$t9
    b	.L5ef3dbc4
    nop
.L5ef3de20:
    move	$a3,$a7
.L5ef3de24:
    ld	$a4,448($sp)
    slt	$a5,$a3,$a6
    bnez	$a5,.L5ef3de54
    ld	$v1,344($sp)
    ld	$v0,432($sp)
    sw	$a6,1916($v1)
    sw	$a4,1916($v1)
    ld	$a5,456($sp)
    sw	$a3,1916($v1)
    sw	$v0,1916($v1)
    addiu	$a5,$a5,1
    sd	$a5,456($sp)
.L5ef3de54:
    addiu	$a0,$a0,8
    ld	$v0,416($sp)
    addiu	$v0,$v0,-1
    sd	$v0,416($sp)
.L5ef3de64:
    ld	$v1,416($sp)
    beqz	$v1,.L5ef3d2ec
    ld	$a4,320($sp)
    lh	$a4,2($a0)
    bne	$a4,$a2,.L5ef3d2ec
    ld	$a4,320($sp)
    lh	$a3,4($a0)
.L5ef3de80:
    ld	$v0,416($sp)
    move	$a6,$s1
    slt	$a5,$s1,$a3
    bnez	$a5,.L5ef3dea4
    ld	$v1,408($sp)
    addiu	$v0,$v0,-1
    addiu	$a0,$a0,8
    b	.L5ef3de64
    sd	$v0,416($sp)
.L5ef3dea4:
    lh	$a7,0($a0)
    slt	$v1,$a7,$v1
    beqz	$v1,.L5ef3d2e8
    ld	$v0,408($sp)
    slt	$a4,$a7,$s1
    beqzl	$a4,.L5ef3dec0
    move	$a6,$a7
.L5ef3dec0:
    ld	$a5,304($sp)
    beqz	$a5,.L5ef3dff8
    ld	$a7,408($sp)
    addiu	$t0,$a3,-1
    slt	$v0,$v0,$t0
    beqzl	$v0,.L5ef3de20
    move	$a7,$t0
    b	.L5ef3de20
    nop
.L5ef3dee4:
    move	$a4,$a5
    addiu	$a5,$v1,1
    sd	$a5,432($sp)
    addiu	$v1,$a4,1
    b	.L5ef3d380
    sd	$v1,448($sp)
.L5ef3defc:
    li	$v1,32767
    andi	$v0,$t0,0x4
    beqz	$v0,.L5ef3e1cc
    subu	$a4,$s2,$s3
    sd	$s8,368($sp)
    move	$a5,$s8
    sltu	$v1,$v1,$a4
    bnez	$v1,.L5ef3df4c
    sd	$a4,400($sp)
    beqz	$s6,.L5ef3e2a0
    nop
    beqz	$ra,.L5ef3ee98
    li	$a0,52
.L5ef3df30:
    move	$v0,$a0
    sd	$a0,384($sp)
.L5ef3df38:
    move	$v1,$s7
    b	.L5ef3df80
    sd	$s7,312($sp)
.L5ef3df44:
    b	.L5ef3d88c
    addu	$a0,$a4,$a0
.L5ef3df4c:
    ld	$a5,600($sp)
    ld	$a4,576($sp)
    subu	$a5,$s3,$a5
    beqz	$s6,.L5ef3e2b4
    sd	$a5,400($sp)
    beqz	$ra,.L5ef3eea4
    li	$a0,24
.L5ef3df68:
    move	$v0,$a0
    sd	$a0,384($sp)
.L5ef3df70:
    ld	$v1,368($sp)
    sd	$a4,312($sp)
    sltiu	$v1,$v1,1
    sd	$v1,368($sp)
.L5ef3df80:
    move	$t9,$s3
    b	.L5ef3d82c
    nop
.L5ef3df8c:
    move	$a5,$v0
    addiu	$v0,$s1,1
    sd	$v0,408($sp)
    b	.L5ef3d424
    addiu	$s1,$a5,1
.L5ef3dfa0:
    li	$a0,18
    b	.L5ef3dad8
    move	$v0,$a0
.L5ef3dfac:
    li	$a0,26
    b	.L5ef3daec
    move	$v1,$a0
.L5ef3dfb8:
    beqz	$ra,.L5ef3e288
    li	$a0,39
.L5ef3dfc0:
    move	$v1,$a0
    b	.L5ef3da2c
    sd	$a0,384($sp)
.L5ef3dfcc:
    beqz	$ra,.L5ef3e294
    li	$a0,11
.L5ef3dfd4:
    move	$a4,$a0
    b	.L5ef3daa8
    sd	$a0,384($sp)
.L5ef3dfe0:
    li	$a0,1
    b	.L5ef3da24
    nop
.L5ef3dfec:
    li	$a0,9
    b	.L5ef3daa0
    nop
.L5ef3dff8:
    ld	$a5,408($sp)
    slt	$a5,$a5,$a3
    beqz	$a5,.L5ef3e00c
    move	$a7,$a3
    ld	$a7,408($sp)
.L5ef3e00c:
    b	.L5ef3de24
    move	$a3,$a7
.L5ef3e014:
    ld	$v0,304($sp)
    beqz	$v0,.L5ef3eed4
    ld	$s2,608($sp)
    ld	$s1,616($sp)
    ld	$s6,624($sp)
    ld	$gp,632($sp)
    ld	$s5,640($sp)
    ld	$ra,656($sp)
    ld	$s8,672($sp)
    ld	$s7,664($sp)
    ld	$s4,680($sp)
    ld	$v1,272($sp)
    ld	$s0,456($sp)
    ld	$s3,688($sp)
    addiu	$a7,$v1,-1
    and	$a7,$a7,$s0
    slt	$v1,$a7,$v1
    beqz	$v1,.L5ef3e19c
    ld	$s0,648($sp)
    ld	$a3,272($sp)
    move	$a6,$zero
    li	$t0,1024
    subu	$a3,$a3,$a7
    andi	$a0,$a3,0x3
    beqz	$a0,.L5ef3e0a0
    move	$t1,$a3
.L5ef3e07c:
    addiu	$a6,$a6,1
    ld	$a4,344($sp)
    addi	$a0,$a0,-1
    li	$a5,1280
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    bnez	$a0,.L5ef3e07c
    sw	$t0,1916($a4)
.L5ef3e0a0:
    sra	$a0,$t1,0x2
    beqz	$a0,.L5ef3e19c
    move	$t2,$a6
    slti	$v0,$a0,2
    bnez	$v0,.L5ef3f634
    addiu	$v1,$a3,-4
    addiu	$v0,$t2,4
    ld	$a2,344($sp)
    move	$a0,$t0
    li	$a1,1280
    sw	$a1,1916($a2)
    sw	$t0,1916($a2)
.L5ef3e0d0:
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$v1,.L5ef3e268
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    addiu	$v0,$v0,8
    bne	$v0,$a3,.L5ef3e0d0
    sw	$a0,1916($a2)
    ld	$v1,344($sp)
.L5ef3e160:
    li	$a4,1280
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
    sw	$a4,1916($v1)
    sw	$t0,1916($v1)
.L5ef3e19c:
    ld	$a5,344($sp)
    sw	$zero,1960($a5)
.L5ef3e1a4:
    jr	$ra
    addiu	$sp,$sp,752
.L5ef3e1ac:
    ld	$a3,584($sp)
    ld	$a0,584($sp)
    subu	$a0,$a0,$t9
    blez	$a0,.L5ef3e1c4
    subu	$a3,$t9,$a3
    move	$a3,$a0
.L5ef3e1c4:
    b	.L5ef3db9c
    move	$a0,$a3
.L5ef3e1cc:
    andi	$a4,$t0,0x1
    beqz	$a4,.L5ef3d82c
    ld	$v1,592($sp)
    sd	$v1,368($sp)
    subu	$v0,$s7,$s4
    li	$a5,32767
    sltu	$a5,$a5,$v0
    bnez	$a5,.L5ef3e214
    sd	$v0,400($sp)
    beqz	$s6,.L5ef3f1e4
    nop
    beqz	$ra,.L5ef3f254
    li	$a0,9
.L5ef3e200:
    move	$a4,$a0
    sd	$a0,384($sp)
.L5ef3e208:
    move	$a5,$s2
    b	.L5ef3e248
    sd	$s2,312($sp)
.L5ef3e214:
    ld	$a4,368($sp)
    ld	$v0,576($sp)
    ld	$a5,600($sp)
    sltiu	$a4,$a4,1
    subu	$v0,$s4,$v0
    beqz	$s6,.L5ef3f1f8
    sd	$v0,400($sp)
    beqz	$ra,.L5ef3f260
    li	$a0,1
.L5ef3e238:
    move	$v1,$a0
    sd	$a0,384($sp)
.L5ef3e240:
    sd	$a5,312($sp)
    sd	$a4,368($sp)
.L5ef3e248:
    move	$v0,$s4
    b	.L5ef3d82c
    sd	$s4,376($sp)
.L5ef3e254:
    move	$v1,$t0
    bnez	$a6,.L5ef3d0cc
    sd	$t0,168($sp)
.L5ef3e260:
    b	.L5ef3d0d0
    li	$a1,1
.L5ef3e268:
    b	.L5ef3e160
    ld	$v1,344($sp)
.L5ef3e270:
    move	$a4,$t0
    bnez	$a1,.L5ef3d1fc
    sd	$t0,224($sp)
.L5ef3e27c:
    li	$a5,1
    b	.L5ef3d204
    sd	$a5,264($sp)
.L5ef3e288:
    li	$a0,47
    b	.L5ef3dfc0
    nop
.L5ef3e294:
    li	$a0,3
    b	.L5ef3dfd4
    nop
.L5ef3e2a0:
    beqz	$ra,.L5ef3f1cc
    li	$a0,26
    move	$v0,$a0
.L5ef3e2ac:
    b	.L5ef3df38
    sd	$a0,384($sp)
.L5ef3e2b4:
    beqz	$ra,.L5ef3f1d8
    li	$a0,18
    move	$v1,$a0
.L5ef3e2c0:
    b	.L5ef3df70
    sd	$a0,384($sp)
.L5ef3e2c8:
    lw	$t2,132($a0)
    sll	$v0,$v0,0x2
    addu	$t2,$t2,$v0
    ld	$v0,160($sp)
    lw	$v0,0($v0)
    move	$a1,$a7
    lw	$t1,expScreenPrivateIndex
    lw	$v0,436($v0)
    lw	$t2,0($t2)
    sll	$t1,$t1,0x2
    addu	$v0,$v0,$t1
    lw	$v0,0($v0)
    li	$a4,13
    lw	$t2,20($t2)
    lw	$v0,0($v0)
    lui	$a5,0x4
    move	$a6,$t2
    sd	$v0,48($sp)
    addu	$a5,$a5,$v0
    beq	$t2,$a4,.L5ef3f26c
    sd	$a5,144($sp)
    li	$v1,14
    beq	$a6,$v1,.L5ef3f2ec
    li	$a4,12
    beq	$a6,$a4,.L5ef3f2c8
    ld	$v0,144($sp)
    ori	$v1,$t2,0x1000
    sw	$v1,1324($v0)
    sw	$zero,1236($v0)
    lbu	$a7,21($a1)
    lw	$a6,76($a1)
    sll	$a7,$a7,0x3
.L5ef3e348:
    lui	$t2,0xff
    ld	$v0,144($sp)
    lw	$t9,64($a1)
    ori	$t2,$t2,0xffff
    and	$t2,$a6,$t2
    sw	$t9,1328($v0)
    sw	$t2,1916($v0)
    lbu	$t0,72($a1)
    ld	$t9,168($sp)
    li	$t2,10
    sw	$t0,1916($v0)
    sw	$a7,1916($v0)
    sw	$t2,1312($v0)
    lh	$a5,0($t9)
    sw	$a5,1320($v0)
    lh	$a4,4($t9)
    addiu	$a4,$a4,-1
    sw	$a4,1916($v0)
    lh	$v1,2($t9)
    sw	$v1,1916($v0)
    lh	$t9,6($t9)
    ld	$a4,160($sp)
    addiu	$t9,$t9,-1
    sw	$t9,1916($v0)
    lw	$t0,0($a4)
    lw	$t0,436($t0)
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    lui	$a5,0x3fff
    ori	$a5,$a5,0xffff
    lw	$t0,8($t0)
    lw	$a4,16($a4)
    move	$t9,$zero
    lbu	$t0,54($t0)
    and	$a4,$a4,$a5
    srl	$a4,$a4,0x1c
    sd	$t0,64($sp)
    beqz	$a4,.L5ef3f20c
    slti	$t0,$t0,5
    beqz	$t0,.L5ef3f290
    ld	$v0,144($sp)
    li	$a6,345
    sw	$zero,1380($v0)
.L5ef3e3f4:
    sd	$s4,680($sp)
    sd	$s7,664($sp)
    li	$v1,1
    sd	$v1,136($sp)
.L5ef3e404:
    sd	$s3,688($sp)
    sd	$s8,672($sp)
    sd	$ra,656($sp)
    sd	$s0,648($sp)
    sd	$s5,640($sp)
    sd	$gp,632($sp)
    sd	$s6,624($sp)
    sd	$s1,616($sp)
    sd	$s2,608($sp)
    lh	$s7,10($a0)
    blez	$a2,.L5ef3ecd0
    lh	$s4,8($a0)
    sd	$s3,688($sp)
    sd	$s8,672($sp)
    sd	$ra,656($sp)
    sd	$s0,648($sp)
    sd	$s5,640($sp)
    sd	$gp,632($sp)
    sd	$s6,624($sp)
    sd	$s1,616($sp)
    sd	$s2,608($sp)
    li	$a1,-2048
    li	$a0,1024
    lw	$v1,28($sp)
    sd	$a3,184($sp)
    lw	$v0,24($sp)
    sd	$v1,96($sp)
    move	$v1,$a3
    sd	$v0,128($sp)
    sll	$v0,$a6,0x2
    lw	$a4,16($sp)
    sd	$v0,40($sp)
    lw	$a5,20($sp)
    sd	$a4,56($sp)
    sll	$a4,$a2,0x3
    sd	$a5,104($sp)
    ld	$a5,64($sp)
    addu	$a4,$a4,$a3
    sd	$a4,152($sp)
    addiu	$a5,$a5,-1
    b	.L5ef3e4c8
    sd	$a5,32($sp)
.L5ef3e4ac:
    beqz	$a6,.L5ef3e6e0
    ld	$a5,136($sp)
.L5ef3e4b4:
    ld	$a4,184($sp)
.L5ef3e4b8:
    ld	$a5,152($sp)
    addiu	$a4,$a4,8
    beq	$a4,$a5,.L5ef3ecd0
    sd	$a4,184($sp)
.L5ef3e4c8:
    ld	$a4,168($sp)
    ld	$a7,184($sp)
    ld	$a5,144($sp)
    move	$s3,$zero
    lh	$a3,0($a7)
    lh	$t0,2($a7)
    lh	$a6,4($a7)
    lh	$a7,6($a7)
    addu	$t0,$t0,$s7
    addu	$a3,$a3,$s4
    addu	$a7,$a7,$s7
    addu	$a6,$a6,$s4
    or	$v1,$a6,$a7
    or	$v0,$a3,$t0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a1
    beqz	$v0,.L5ef3e698
    ld	$t3,168($sp)
    move	$a5,$a6
    bne	$a3,$a6,.L5ef3e548
    slt	$v0,$a6,$a3
    lh	$a4,0($a4)
    slt	$a4,$a3,$a4
    bnez	$a4,.L5ef3e4ac
    li	$a6,1
    ld	$a5,168($sp)
    lh	$a5,4($a5)
    slt	$a5,$a3,$a5
    beqz	$a5,.L5ef3e4ac
    nop
    b	.L5ef3e4ac
    move	$a6,$zero
.L5ef3e548:
    ld	$t8,168($sp)
    lh	$t3,2($t3)
    move	$t2,$zero
    bne	$t0,$a7,.L5ef3e59c
    slt	$ra,$t0,$t3
    beqz	$ra,.L5ef3eabc
.L5ef3e560:
    li	$t1,1
.L5ef3e564:
    bnez	$t1,.L5ef3e4b4
    move	$a4,$a6
    ld	$t8,168($sp)
    beqz	$v0,.L5ef3e584
    ld	$v1,136($sp)
    beqz	$v1,.L5ef3f1c0
    move	$a6,$a3
    move	$a3,$a4
.L5ef3e584:
    lh	$t8,0($t8)
    slt	$a5,$t8,$a3
    beqz	$a5,.L5ef3e760
    move	$a2,$a3
    b	.L5ef3e764
    nop
.L5ef3e59c:
    lh	$t8,0($t8)
    slt	$v0,$a3,$t8
    beqz	$v0,.L5ef3e5d0
    move	$t1,$zero
    bnez	$ra,.L5ef3e5f0
    li	$t1,8
    ld	$v0,168($sp)
.L5ef3e5b8:
    lh	$v0,6($v0)
    slt	$v0,$t0,$v0
    bnez	$v0,.L5ef3e5f8
    slt	$a4,$a6,$t8
    b	.L5ef3e5f4
    ori	$t1,$t1,0x1
.L5ef3e5d0:
    ld	$v1,168($sp)
    lh	$v1,4($v1)
    slt	$v1,$a3,$v1
    bnez	$v1,.L5ef3e5e8
    nop
    li	$t1,4
.L5ef3e5e8:
    beqz	$ra,.L5ef3e5b8
    ld	$v0,168($sp)
.L5ef3e5f0:
    ori	$t1,$t1,0x2
.L5ef3e5f4:
    slt	$a4,$a6,$t8
.L5ef3e5f8:
    beqz	$a4,.L5ef3e6b0
    ld	$v0,168($sp)
    li	$t2,8
.L5ef3e604:
    slt	$a5,$a7,$t3
.L5ef3e608:
    beqz	$a5,.L5ef3e6c8
    ld	$v1,168($sp)
    ori	$t2,$t2,0x2
.L5ef3e614:
    and	$v0,$t1,$t2
.L5ef3e618:
    bnez	$v0,.L5ef3e4b8
    ld	$a4,184($sp)
    subu	$s1,$a6,$a3
    bltz	$s1,.L5ef3effc
.L5ef3e628:
    subu	$a2,$a7,$t0
    sll	$s6,$a2,0x1
    bltz	$a2,.L5ef3f004
    sra	$ra,$a2,0x1f
.L5ef3e638:
    move	$s8,$a7
    and	$s6,$s6,$ra
    subu	$s6,$a2,$s6
    sll	$s0,$s6,0x1
    move	$gp,$s0
    sra	$ra,$s1,0x1f
    sll	$s2,$s1,0x1
    and	$s2,$s2,$ra
    subu	$s2,$s1,$s2
    move	$v0,$s2
    slt	$v1,$s6,$s2
    beqz	$v1,.L5ef3e78c
    sll	$ra,$s2,0x1
    move	$a4,$s0
    sd	$s4,704($sp)
    sd	$s7,696($sp)
    sd	$a2,80($sp)
    sd	$s1,72($sp)
    move	$gp,$zero
    sd	$s0,560($sp)
    move	$v1,$ra
    sd	$ra,568($sp)
    b	.L5ef3e7b8
    sd	$s2,88($sp)
.L5ef3e698:
    addiu	$t9,$t9,1
    sw	$a3,1916($a5)
    sw	$t0,1916($a5)
    sw	$a6,1916($a5)
    b	.L5ef3e4b4
    sw	$a7,1916($a5)
.L5ef3e6b0:
    lh	$v0,4($v0)
    slt	$v0,$a6,$v0
    bnez	$v0,.L5ef3e608
    slt	$a5,$a7,$t3
    b	.L5ef3e604
    li	$t2,4
.L5ef3e6c8:
    lh	$v1,6($v1)
    slt	$v1,$a7,$v1
    bnez	$v1,.L5ef3e618
    and	$v0,$t1,$t2
    b	.L5ef3e614
    ori	$t2,$t2,0x1
.L5ef3e6e0:
    ld	$a6,168($sp)
    slt	$a4,$a7,$t0
    beqz	$a4,.L5ef3e700
    ld	$t3,168($sp)
    beqz	$a5,.L5ef3efd4
    move	$v0,$a7
    move	$a7,$t0
    move	$t0,$v0
.L5ef3e700:
    lh	$t3,2($t3)
    move	$a2,$t0
    slt	$v1,$t3,$t0
    bnez	$v1,.L5ef3e718
    ld	$v0,136($sp)
    move	$a2,$t3
.L5ef3e718:
    beqz	$v0,.L5ef3ecb8
    lh	$a6,6($a6)
    addiu	$t1,$a6,-1
    slt	$v0,$a7,$t1
    bnez	$v0,.L5ef3e734
    move	$t0,$a7
    move	$t0,$t1
.L5ef3e734:
    move	$a6,$t0
.L5ef3e738:
    slt	$v1,$a6,$a2
    bnez	$v1,.L5ef3e4b8
    ld	$a4,184($sp)
    ld	$a4,144($sp)
    addiu	$t9,$t9,1
    sw	$a3,1916($a4)
    sw	$a2,1916($a4)
    sw	$a3,1916($a4)
    b	.L5ef3e4b4
    sw	$a6,1916($a4)
.L5ef3e760:
    move	$a2,$t8
.L5ef3e764:
    ld	$a5,136($sp)
    ld	$a3,168($sp)
    beqz	$a5,.L5ef3efe4
    lh	$a3,4($a3)
    addiu	$t1,$a3,-1
    slt	$a4,$a6,$t1
    beqz	$a4,.L5ef3ead8
    move	$a3,$a6
    b	.L5ef3eadc
    nop
.L5ef3e78c:
    li	$gp,1
    move	$v0,$s6
    sd	$s4,704($sp)
    sd	$s7,696($sp)
    sd	$a2,80($sp)
    sd	$s1,72($sp)
    ori	$s3,$s3,0x1
    sd	$s6,88($sp)
    sd	$s0,568($sp)
    move	$a5,$ra
    sd	$ra,560($sp)
.L5ef3e7b8:
    move	$s5,$zero
    move	$s4,$t8
    move	$s1,$zero
    sd	$a7,512($sp)
    sd	$a6,528($sp)
    sd	$a6,520($sp)
    sd	$t0,112($sp)
    sd	$t0,488($sp)
    sd	$a3,120($sp)
    move	$s0,$a6
    move	$a1,$t3
    move	$t3,$t0
    move	$ra,$a7
    move	$s7,$a6
    andi	$a0,$s3,0x4
    sll	$a5,$s6,0x1
    andi	$v0,$s3,0x2
    andi	$v1,$s3,0x1
    sd	$v1,480($sp)
    sd	$v0,496($sp)
    sd	$a5,536($sp)
    move	$a5,$t0
    sd	$a0,544($sp)
    move	$a0,$a3
    move	$s7,$zero
    move	$ra,$t1
    move	$t3,$t0
    sll	$a4,$s2,0x1
    andi	$a2,$zero,0x1
    sd	$a2,472($sp)
    ld	$a2,168($sp)
    sd	$a4,504($sp)
    move	$a4,$a3
    lh	$a4,6($a2)
    lh	$a2,4($a2)
    move	$s0,$t2
    move	$t2,$a3
    addiu	$a2,$a2,-1
    addiu	$a4,$a4,-1
    sd	$a4,552($sp)
.L5ef3e858:
    and	$v0,$ra,$s0
.L5ef3e85c:
    beqz	$v0,.L5ef3eb08
    or	$v1,$ra,$s0
    li	$a1,-2048
    li	$a0,1024
    li	$a2,-1
    move	$s1,$ra
    move	$s5,$s0
    ld	$s7,696($sp)
    ld	$s4,704($sp)
.L5ef3e880:
    li	$v1,-1
    beq	$a2,$v1,.L5ef3e4b8
    ld	$a4,184($sp)
    beqz	$gp,.L5ef3f030
    subu	$a6,$s8,$t3
    blez	$a6,.L5ef3f050
    move	$a2,$a6
.L5ef3e89c:
    move	$t1,$a2
.L5ef3e8a0:
    beqz	$s5,.L5ef3f00c
    lui	$v0,0x3fff
    addiu	$t1,$t1,1
.L5ef3e8ac:
    beqz	$t1,.L5ef3e4b8
    ld	$a4,184($sp)
    beqz	$s1,.L5ef3e908
    subu	$a6,$t2,$a3
    blez	$a6,.L5ef3f16c
    move	$a2,$a6
.L5ef3e8c4:
    subu	$a6,$t3,$t0
    blez	$a6,.L5ef3ef98
    nop
    beqz	$gp,.L5ef3efa0
    move	$a3,$a6
.L5ef3e8d8:
    ld	$a4,568($sp)
    mult	$a2,$a4
    ld	$v1,560($sp)
    mflo	$a5
    mult	$a3,$v1
    ld	$a4,88($sp)
    mflo	$v0
    subu	$a5,$a5,$v0
    addu	$a4,$a5,$a4
    sd	$a4,88($sp)
.L5ef3e908:
    ld	$a5,136($sp)
    li	$v1,1280
    beqz	$a5,.L5ef3f158
    ld	$v0,144($sp)
    ld	$a7,32($sp)
    ld	$a3,64($sp)
    ld	$v0,64($sp)
    and	$a7,$a7,$t9
    slt	$v0,$a7,$v0
    beqz	$v0,.L5ef3ea68
    move	$a2,$zero
    subu	$a3,$a3,$a7
    andi	$a6,$a3,0x3
    beqz	$a6,.L5ef3e968
    move	$t0,$a3
.L5ef3e944:
    addiu	$a2,$a2,1
    ld	$a4,144($sp)
    addi	$a6,$a6,-1
    li	$a5,1280
    sw	$a5,1916($a4)
    sw	$a0,1916($a4)
    sw	$a5,1916($a4)
    bnez	$a6,.L5ef3e944
    sw	$a0,1916($a4)
.L5ef3e968:
    sra	$a6,$t0,0x2
    beqz	$a6,.L5ef3ea68
    move	$t8,$a2
    slti	$v0,$a6,2
    bnez	$v0,.L5ef3f684
    addiu	$v1,$a3,-4
    addiu	$v0,$t8,4
    ld	$a2,144($sp)
    li	$a4,1280
    li	$a1,1280
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
.L5ef3e998:
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$v1,.L5ef3eec8
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    addiu	$v0,$v0,8
    bne	$v0,$a3,.L5ef3e998
    sw	$a0,1916($a2)
    li	$a1,-2048
    li	$a0,1024
.L5ef3ea2c:
    ld	$v1,144($sp)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
    sw	$a4,1916($v1)
    sw	$a0,1916($v1)
.L5ef3ea68:
    move	$t9,$zero
.L5ef3ea6c:
    ld	$v1,48($sp)
    ld	$a5,40($sp)
    lui	$v0,0x4
    addu	$a5,$a5,$v1
    addu	$a5,$a5,$v0
    ld	$v0,144($sp)
    ld	$a4,72($sp)
    ld	$v1,88($sp)
    sw	$zero,1960($v0)
    sw	$zero,1228($v0)
    sw	$t2,1916($v0)
    sw	$t3,1916($v0)
    sw	$v1,1916($v0)
    ld	$v1,80($sp)
    sw	$a4,1916($v0)
    sw	$v1,1916($v0)
    sw	$t1,1916($v0)
    sw	$zero,1960($v0)
    b	.L5ef3e4b4
    sw	$zero,0($a5)
.L5ef3eabc:
    ld	$a4,168($sp)
    lh	$a4,6($a4)
    slt	$a4,$t0,$a4
    beqz	$a4,.L5ef3e560
    move	$t1,$zero
    b	.L5ef3e564
    nop
.L5ef3ead8:
    move	$a3,$t1
.L5ef3eadc:
    move	$a6,$a3
.L5ef3eae0:
    slt	$a5,$a6,$a2
    bnez	$a5,.L5ef3e4b8
    ld	$a4,184($sp)
    ld	$v0,144($sp)
    addiu	$t9,$t9,1
    sw	$a2,1916($v0)
    sw	$t0,1916($v0)
    sw	$a6,1916($v0)
    b	.L5ef3e4b4
    sw	$a7,1916($v0)
.L5ef3eb08:
    beqz	$v1,.L5ef3f310
    move	$v1,$t2
    beqz	$ra,.L5ef3f058
    move	$a4,$a0
.L5ef3eb18:
    li	$a5,32767
    andi	$a4,$ra,0x8
    beqz	$a4,.L5ef3f0c0
    or	$s1,$ra,$s1
    subu	$v0,$s4,$a0
    sd	$v0,128($sp)
    ld	$v1,496($sp)
    sltu	$a5,$a5,$v0
    bnez	$a5,.L5ef3eb68
    sd	$v1,96($sp)
    ld	$a4,480($sp)
    ld	$v0,488($sp)
    beqz	$a4,.L5ef3f22c
    nop
    beqz	$s7,.L5ef3f2a0
    li	$a6,52
.L5ef3eb58:
    move	$a5,$a6
    sd	$a6,104($sp)
.L5ef3eb60:
    b	.L5ef3eba0
    sd	$v0,56($sp)
.L5ef3eb68:
    ld	$a4,520($sp)
    ld	$v1,480($sp)
    subu	$a4,$a4,$s4
    beqz	$v1,.L5ef3f240
    sd	$a4,128($sp)
    beqz	$s7,.L5ef3f2ac
    li	$a6,24
.L5ef3eb84:
    move	$a5,$a6
    sd	$a6,104($sp)
.L5ef3eb8c:
    ld	$v1,512($sp)
    ld	$v0,96($sp)
    sd	$v1,56($sp)
    sltiu	$v0,$v0,1
    sd	$v0,96($sp)
.L5ef3eba0:
    move	$t2,$s4
.L5ef3eba4:
    beqz	$s7,.L5ef3ebb4
    ld	$a4,96($sp)
    sltiu	$a4,$a4,1
    sd	$a4,96($sp)
.L5ef3ebb4:
    ld	$a7,104($sp)
    ld	$t1,128($sp)
    andi	$a7,$a7,0x1
    beqz	$a7,.L5ef3f110
    sll	$t1,$t1,0x1
    multu	$s2,$t1
    mflo	$a6
.L5ef3ebd8:
    ld	$t1,104($sp)
    andi	$v0,$t1,0x2
    beqz	$v0,.L5ef3f120
    andi	$t1,$t1,0x4
    beqz	$t1,.L5ef3f1b8
    nop
    subu	$a6,$a6,$s2
.L5ef3ebf4:
    ld	$v0,104($sp)
    andi	$v0,$v0,0x8
    beqz	$v0,.L5ef3f130
    ld	$v1,472($sp)
    ld	$v0,472($sp)
    addu	$a6,$a6,$v0
    addiu	$a6,$a6,-1
.L5ef3ec10:
    move	$ra,$zero
    ld	$v1,104($sp)
    ld	$a5,504($sp)
    andi	$v1,$v1,0x10
    beqz	$v1,.L5ef3f138
    ld	$v0,104($sp)
    divu	$zero,$a6,$a5
    teq	$a5,$zero,0x7
    mflo	$a4
    nop
    sd	$a4,128($sp)
.L5ef3ec3c:
    andi	$v0,$v0,0x20
    beqz	$v0,.L5ef3ec54
    ld	$a4,96($sp)
    ld	$v1,128($sp)
    addiu	$v1,$v1,1
    sd	$v1,128($sp)
.L5ef3ec54:
    ld	$a6,56($sp)
    beqz	$a4,.L5ef3ec68
    ld	$a5,128($sp)
    negu	$a5,$a5
    sd	$a5,128($sp)
.L5ef3ec68:
    ld	$v0,128($sp)
    beqz	$a7,.L5ef3f150
    addu	$a6,$a6,$v0
    move	$t2,$a6
.L5ef3ec78:
    slt	$v1,$t2,$s4
    beqz	$v1,.L5ef3ec88
    slt	$a4,$a2,$t2
    li	$ra,8
.L5ef3ec88:
    beqz	$a4,.L5ef3ec94
    ld	$v0,552($sp)
    ori	$ra,$ra,0x4
.L5ef3ec94:
    slt	$a5,$t3,$a1
    beqzl	$a5,.L5ef3eca8
    slt	$v0,$v0,$t3
    ori	$ra,$ra,0x2
    slt	$v0,$v0,$t3
.L5ef3eca8:
    beqz	$v0,.L5ef3e85c
    and	$v0,$ra,$s0
    b	.L5ef3e858
    ori	$ra,$ra,0x1
.L5ef3ecb8:
    slt	$v1,$a7,$a6
    bnez	$v1,.L5ef3ecc8
    move	$t0,$a7
    move	$t0,$a6
.L5ef3ecc8:
    b	.L5ef3e738
    move	$a6,$t0
.L5ef3ecd0:
    ld	$a4,136($sp)
    beqz	$a4,.L5ef3f3c0
    ld	$s2,608($sp)
    ld	$s1,616($sp)
    ld	$s6,624($sp)
    ld	$gp,632($sp)
    ld	$s5,640($sp)
    ld	$s0,648($sp)
    ld	$ra,656($sp)
    ld	$s7,664($sp)
    ld	$a5,64($sp)
    ld	$s8,672($sp)
    ld	$s4,680($sp)
    addiu	$a7,$a5,-1
    and	$a7,$a7,$t9
    slt	$a5,$a7,$a5
    beqz	$a5,.L5ef3ee58
    ld	$s3,688($sp)
    ld	$a3,64($sp)
    move	$a6,$zero
    subu	$a3,$a3,$a7
    andi	$t0,$a3,0x3
    beqz	$t0,.L5ef3ed58
    move	$t1,$a3
.L5ef3ed30:
    addiu	$a6,$a6,1
    addi	$t0,$t0,-1
    ld	$a5,144($sp)
    li	$a4,1024
    li	$v0,1280
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    bnez	$t0,.L5ef3ed30
    sw	$a4,1916($a5)
.L5ef3ed58:
    sra	$a7,$t1,0x2
    beqz	$a7,.L5ef3ee58
    move	$t0,$a6
    slti	$v1,$a7,2
    bnez	$v1,.L5ef3f6d4
    addiu	$v1,$a3,-4
    addiu	$v0,$t0,4
    ld	$a2,144($sp)
    li	$a0,1024
    li	$a1,1280
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
.L5ef3ed88:
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$v1,.L5ef3f048
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    addiu	$v0,$v0,8
    bne	$v0,$a3,.L5ef3ed88
    sw	$a0,1916($a2)
    ld	$a5,144($sp)
.L5ef3ee18:
    li	$a4,1024
    li	$v0,1280
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
.L5ef3ee58:
    lh	$v1,-21406($at)
    li	$v0,10
    lh	$a4,-21408($at)
    ld	$a0,144($sp)
    lh	$a5,-21412($at)
    addiu	$a4,$a4,-1
    sw	$zero,1960($a0)
    sw	$v0,1312($a0)
    sw	$a5,1320($a0)
    sw	$a4,1916($a0)
    lh	$a4,-21410($at)
    addiu	$v1,$v1,-1
    addiu	$sp,$sp,752
    sw	$a4,1916($a0)
    jr	$ra
    sw	$v1,1916($a0)
.L5ef3ee98:
    li	$a0,60
    b	.L5ef3df30
    nop
.L5ef3eea4:
    li	$a0,16
    b	.L5ef3df68
    nop
.L5ef3eeb0:
    beqz	$t2,.L5ef3f2b8
    ld	$v1,344($sp)
    li	$a6,301
    sw	$zero,1204($v1)
.L5ef3eec0:
    b	.L5ef3d1e8
    sd	$zero,304($sp)
.L5ef3eec8:
    li	$a1,-2048
    b	.L5ef3ea2c
    li	$a0,1024
.L5ef3eed4:
    ld	$s2,608($sp)
    ld	$s1,616($sp)
    ld	$s6,624($sp)
    ld	$gp,632($sp)
    ld	$s5,640($sp)
    ld	$s0,648($sp)
    ld	$ra,656($sp)
    ld	$s8,672($sp)
    ld	$s7,664($sp)
    ld	$s4,680($sp)
    ld	$a4,344($sp)
    ld	$s3,688($sp)
    li	$a5,1280
    sw	$a5,1916($a4)
    sw	$zero,1916($a4)
    sw	$a5,1916($a4)
    b	.L5ef3e19c
    sw	$zero,1916($a4)
.L5ef3ef1c:
    ld	$v1,344($sp)
    li	$a4,4107
    sw	$a4,1324($v1)
    lw	$v0,76($a1)
    li	$a7,1
    move	$a6,$zero
    andi	$v0,$v0,0x3
    b	.L5ef3d168
    sw	$v0,1236($v1)
.L5ef3ef40:
    ld	$a5,344($sp)
    li	$a6,356
    b	.L5ef3d1e0
    sw	$zero,1424($a5)
.L5ef3ef50:
    ld	$v1,344($sp)
    li	$a4,4104
    sw	$a4,1324($v1)
    lw	$v0,76($a1)
    li	$a7,1
    move	$a6,$zero
    andi	$v0,$v0,0xf
    b	.L5ef3d168
    sw	$v0,1236($v1)
.L5ef3ef74:
    ld	$v0,344($sp)
    li	$a6,4107
    sw	$a6,1324($v0)
    lw	$a5,76($a1)
    li	$a7,9
    move	$a6,$zero
    andi	$a5,$a5,0xc
    b	.L5ef3d168
    sw	$a5,1236($v0)
.L5ef3ef98:
    bnez	$gp,.L5ef3e8d8
    subu	$a3,$t0,$t3
.L5ef3efa0:
    ld	$v0,568($sp)
    mult	$a3,$v0
    ld	$a5,560($sp)
    mflo	$v1
    mult	$a2,$a5
    ld	$v0,88($sp)
    mflo	$a4
    subu	$v1,$v1,$a4
    addu	$v0,$v1,$v0
    b	.L5ef3e908
    sd	$v0,88($sp)
.L5ef3efd4:
    move	$v1,$a7
    addiu	$a7,$t0,1
    b	.L5ef3e700
    addiu	$t0,$v1,1
.L5ef3efe4:
    slt	$a4,$a6,$a3
    bnez	$a4,.L5ef3eff4
    move	$t1,$a6
    move	$t1,$a3
.L5ef3eff4:
    b	.L5ef3eae0
    move	$a6,$t1
.L5ef3effc:
    b	.L5ef3e628
    li	$s3,4
.L5ef3f004:
    b	.L5ef3e638
    ori	$s3,$s3,0x2
.L5ef3f00c:
    ld	$a5,160($sp)
    lw	$a5,16($a5)
    ori	$v0,$v0,0xffff
    and	$a5,$a5,$v0
    srl	$a5,$a5,0x1c
    beqz	$a5,.L5ef3e8ac
    nop
    b	.L5ef3e8ac
    addiu	$t1,$t1,1
.L5ef3f030:
    ld	$a6,528($sp)
    subu	$a6,$a6,$t2
    blez	$a6,.L5ef3f360
    move	$a2,$a6
.L5ef3f040:
    b	.L5ef3e8a0
    move	$t1,$a2
.L5ef3f048:
    b	.L5ef3ee18
    ld	$a5,144($sp)
.L5ef3f050:
    b	.L5ef3e89c
    subu	$a2,$t3,$s8
.L5ef3f058:
    sltiu	$s7,$s7,1
    move	$a5,$t3
    move	$t3,$s8
    ld	$v0,528($sp)
    move	$s8,$a5
    sd	$v1,528($sp)
    move	$t2,$v0
    move	$v0,$v1
    ld	$v0,488($sp)
    ld	$v1,520($sp)
    sd	$a4,520($sp)
    move	$a5,$v0
    move	$a0,$v1
    move	$v1,$a4
    ld	$a4,512($sp)
    sd	$a5,512($sp)
    move	$v1,$ra
    move	$ra,$s0
    move	$s0,$v1
    sd	$a4,488($sp)
    move	$v0,$a4
    move	$a4,$a5
    move	$v0,$s1
    move	$s1,$s5
    b	.L5ef3eb18
    move	$s5,$v0
.L5ef3f0c0:
    li	$a5,32767
    andi	$a4,$ra,0x2
    beqz	$a4,.L5ef3f36c
    ld	$v0,488($sp)
    subu	$v0,$a1,$v0
    sd	$v0,128($sp)
    ld	$v1,544($sp)
    sltu	$a5,$a5,$v0
    bnez	$a5,.L5ef3f174
    sd	$v1,96($sp)
    ld	$a4,480($sp)
    move	$v0,$a0
    beqz	$a4,.L5ef3f478
    nop
    beqz	$s7,.L5ef3f4a0
    li	$a6,9
.L5ef3f100:
    move	$a5,$a6
    sd	$a6,104($sp)
.L5ef3f108:
    b	.L5ef3f1ac
    sd	$a0,56($sp)
.L5ef3f110:
    multu	$s6,$t1
    mflo	$a6
    b	.L5ef3ebd8
    nop
.L5ef3f120:
    beqz	$t1,.L5ef3f3b8
    nop
    b	.L5ef3ebf4
    subu	$a6,$a6,$s6
.L5ef3f130:
    b	.L5ef3ec10
    subu	$a6,$a6,$v1
.L5ef3f138:
    ld	$a4,536($sp)
    divu	$zero,$a6,$a4
    teq	$a4,$zero,0x7
    mflo	$a5
    b	.L5ef3ec3c
    sd	$a5,128($sp)
.L5ef3f150:
    b	.L5ef3ec78
    move	$t3,$a6
.L5ef3f158:
    sw	$v1,1916($v0)
    sw	$zero,1916($v0)
    sw	$v1,1916($v0)
    b	.L5ef3ea6c
    sw	$zero,1916($v0)
.L5ef3f16c:
    b	.L5ef3e8c4
    subu	$a2,$a3,$t2
.L5ef3f174:
    ld	$a5,512($sp)
    ld	$a4,480($sp)
    ld	$v1,96($sp)
    subu	$a5,$a5,$a1
    beqz	$a4,.L5ef3f48c
    sd	$a5,128($sp)
    beqz	$s7,.L5ef3f4a8
    li	$a6,1
.L5ef3f194:
    move	$v0,$a6
    sd	$a6,104($sp)
.L5ef3f19c:
    sltiu	$v1,$v1,1
    ld	$a4,520($sp)
    sd	$v1,96($sp)
    sd	$a4,56($sp)
.L5ef3f1ac:
    move	$t3,$a1
    b	.L5ef3eba4
    nop
.L5ef3f1b8:
    b	.L5ef3ebf4
    addu	$a6,$s2,$a6
.L5ef3f1c0:
    addiu	$a6,$a3,1
    b	.L5ef3e584
    addiu	$a3,$a5,1
.L5ef3f1cc:
    li	$a0,18
    b	.L5ef3e2ac
    move	$v0,$a0
.L5ef3f1d8:
    li	$a0,26
    b	.L5ef3e2c0
    move	$v1,$a0
.L5ef3f1e4:
    beqz	$ra,.L5ef3f448
    li	$a0,39
.L5ef3f1ec:
    move	$v0,$a0
    b	.L5ef3e208
    sd	$a0,384($sp)
.L5ef3f1f8:
    beqz	$ra,.L5ef3f450
    li	$a0,11
.L5ef3f200:
    move	$v1,$a0
    b	.L5ef3e240
    sd	$a0,384($sp)
.L5ef3f20c:
    beqz	$t0,.L5ef3f458
    ld	$a4,144($sp)
    li	$a6,301
    sw	$zero,1204($a4)
.L5ef3f21c:
    sd	$s4,680($sp)
    sd	$s7,664($sp)
    b	.L5ef3e404
    sd	$zero,136($sp)
.L5ef3f22c:
    beqz	$s7,.L5ef3f468
    li	$a6,26
.L5ef3f234:
    move	$a5,$a6
    b	.L5ef3eb60
    sd	$a6,104($sp)
.L5ef3f240:
    beqz	$s7,.L5ef3f470
    li	$a6,18
.L5ef3f248:
    move	$v0,$a6
    b	.L5ef3eb8c
    sd	$a6,104($sp)
.L5ef3f254:
    li	$a0,1
    b	.L5ef3e200
    nop
.L5ef3f260:
    li	$a0,9
    b	.L5ef3e238
    nop
.L5ef3f26c:
    ld	$a4,144($sp)
    li	$a5,4107
    sw	$a5,1324($a4)
    lw	$v1,76($a1)
    li	$a7,1
    move	$a6,$zero
    andi	$v1,$v1,0x3
    b	.L5ef3e348
    sw	$v1,1236($a4)
.L5ef3f290:
    ld	$v0,144($sp)
    li	$a6,356
    b	.L5ef3e3f4
    sw	$zero,1424($v0)
.L5ef3f2a0:
    li	$a6,60
    b	.L5ef3eb58
    nop
.L5ef3f2ac:
    li	$a6,16
    b	.L5ef3eb84
    nop
.L5ef3f2b8:
    ld	$v1,344($sp)
    li	$a6,355
    b	.L5ef3eec0
    sw	$zero,1420($v1)
.L5ef3f2c8:
    ld	$a5,144($sp)
    li	$a6,4104
    sw	$a6,1324($a5)
    lw	$a4,76($a1)
    li	$a7,1
    move	$a6,$zero
    andi	$a4,$a4,0xf
    b	.L5ef3e348
    sw	$a4,1236($a5)
.L5ef3f2ec:
    ld	$v1,144($sp)
    li	$a4,4107
    sw	$a4,1324($v1)
    lw	$v0,76($a1)
    li	$a7,9
    move	$a6,$zero
    andi	$v0,$v0,0xc
    b	.L5ef3e348
    sw	$v0,1236($v1)
.L5ef3f310:
    li	$a1,-2048
    li	$a0,1024
    li	$a2,1
    move	$a5,$s7
    ld	$s7,696($sp)
    beqz	$a5,.L5ef3e880
    ld	$s4,704($sp)
    move	$s7,$s1
    move	$s1,$s5
    move	$v0,$t3
    move	$t3,$s8
    move	$a4,$t2
    ld	$v1,528($sp)
    sd	$a4,528($sp)
    move	$s8,$v0
    move	$s5,$s7
    ld	$s7,696($sp)
    move	$t2,$v1
    b	.L5ef3e880
    move	$v1,$a4
.L5ef3f360:
    ld	$a2,528($sp)
    b	.L5ef3f040
    subu	$a2,$t2,$a2
.L5ef3f36c:
    andi	$a4,$ra,0x4
    beqz	$a4,.L5ef3f4b0
    subu	$v0,$a0,$a2
    sd	$v0,128($sp)
    li	$a5,32767
    ld	$v1,496($sp)
    sltu	$a5,$a5,$v0
    bnez	$a5,.L5ef3f408
    sd	$v1,96($sp)
    ld	$a4,480($sp)
    beqz	$a4,.L5ef3f548
    nop
    beqz	$s7,.L5ef3f580
    li	$a6,52
.L5ef3f3a4:
    move	$a5,$a6
    sd	$a6,104($sp)
.L5ef3f3ac:
    ld	$v0,488($sp)
    b	.L5ef3f440
    sd	$v0,56($sp)
.L5ef3f3b8:
    b	.L5ef3ebf4
    addu	$a6,$s6,$a6
.L5ef3f3c0:
    ld	$s2,608($sp)
    ld	$s1,616($sp)
    ld	$s6,624($sp)
    ld	$gp,632($sp)
    ld	$s5,640($sp)
    ld	$s0,648($sp)
    ld	$ra,656($sp)
    ld	$s7,664($sp)
    ld	$s8,672($sp)
    ld	$s4,680($sp)
    ld	$v1,144($sp)
    ld	$s3,688($sp)
    li	$a4,1280
    sw	$a4,1916($v1)
    sw	$zero,1916($v1)
    sw	$a4,1916($v1)
    b	.L5ef3ee58
    sw	$zero,1916($v1)
.L5ef3f408:
    ld	$v0,520($sp)
    ld	$a5,480($sp)
    subu	$v0,$a2,$v0
    beqz	$a5,.L5ef3f55c
    sd	$v0,128($sp)
    beqz	$s7,.L5ef3f588
    li	$a6,24
.L5ef3f424:
    move	$v1,$a6
    sd	$a6,104($sp)
.L5ef3f42c:
    ld	$a5,512($sp)
    ld	$a4,96($sp)
    sd	$a5,56($sp)
    sltiu	$a4,$a4,1
    sd	$a4,96($sp)
.L5ef3f440:
    b	.L5ef3eba4
    move	$t2,$a2
.L5ef3f448:
    b	.L5ef3f1ec
    li	$a0,47
.L5ef3f450:
    b	.L5ef3f200
    li	$a0,3
.L5ef3f458:
    ld	$v0,144($sp)
    li	$a6,355
    b	.L5ef3f21c
    sw	$zero,1420($v0)
.L5ef3f468:
    b	.L5ef3f234
    li	$a6,18
.L5ef3f470:
    b	.L5ef3f248
    li	$a6,26
.L5ef3f478:
    beqz	$s7,.L5ef3f570
    li	$a6,39
.L5ef3f480:
    move	$v1,$a6
    b	.L5ef3f108
    sd	$a6,104($sp)
.L5ef3f48c:
    beqz	$s7,.L5ef3f578
    li	$a6,11
.L5ef3f494:
    move	$a4,$a6
    b	.L5ef3f19c
    sd	$a6,104($sp)
.L5ef3f4a0:
    b	.L5ef3f100
    li	$a6,1
.L5ef3f4a8:
    b	.L5ef3f194
    li	$a6,9
.L5ef3f4b0:
    andi	$a5,$ra,0x1
    beqz	$a5,.L5ef3eba4
    ld	$a5,544($sp)
    ld	$a4,552($sp)
    ld	$v1,488($sp)
    li	$v0,32767
    sd	$a5,96($sp)
    subu	$v1,$v1,$a4
    sltu	$v0,$v0,$v1
    bnez	$v0,.L5ef3f504
    sd	$v1,128($sp)
    ld	$v0,480($sp)
    beqz	$v0,.L5ef3f5a0
    nop
    beqz	$s7,.L5ef3f5c8
    li	$a6,9
.L5ef3f4f0:
    move	$v1,$a6
    sd	$a6,104($sp)
.L5ef3f4f8:
    move	$a4,$a0
    b	.L5ef3f540
    sd	$a0,56($sp)
.L5ef3f504:
    ld	$v1,512($sp)
    ld	$v0,552($sp)
    ld	$a5,480($sp)
    subu	$v0,$v0,$v1
    beqz	$a5,.L5ef3f5b4
    sd	$v0,128($sp)
    beqz	$s7,.L5ef3f5d0
    li	$a6,1
.L5ef3f524:
    move	$a4,$a6
    sd	$a6,104($sp)
.L5ef3f52c:
    ld	$v0,520($sp)
    ld	$a5,96($sp)
    sd	$v0,56($sp)
    sltiu	$a5,$a5,1
    sd	$a5,96($sp)
.L5ef3f540:
    b	.L5ef3eba4
    ld	$t3,552($sp)
.L5ef3f548:
    beqz	$s7,.L5ef3f590
    li	$a6,26
.L5ef3f550:
    move	$v1,$a6
    b	.L5ef3f3ac
    sd	$a6,104($sp)
.L5ef3f55c:
    beqz	$s7,.L5ef3f598
    li	$a6,18
.L5ef3f564:
    move	$a4,$a6
    b	.L5ef3f42c
    sd	$a6,104($sp)
.L5ef3f570:
    b	.L5ef3f480
    li	$a6,47
.L5ef3f578:
    b	.L5ef3f494
    li	$a6,3
.L5ef3f580:
    b	.L5ef3f3a4
    li	$a6,60
.L5ef3f588:
    b	.L5ef3f424
    li	$a6,16
.L5ef3f590:
    b	.L5ef3f550
    li	$a6,18
.L5ef3f598:
    b	.L5ef3f564
    li	$a6,26
.L5ef3f5a0:
    beqz	$s7,.L5ef3f5d8
    li	$a6,39
.L5ef3f5a8:
    move	$a5,$a6
    b	.L5ef3f4f8
    sd	$a6,104($sp)
.L5ef3f5b4:
    beqz	$s7,.L5ef3f5e0
    li	$a6,11
.L5ef3f5bc:
    move	$v0,$a6
    b	.L5ef3f52c
    sd	$a6,104($sp)
.L5ef3f5c8:
    b	.L5ef3f4f0
    li	$a6,1
.L5ef3f5d0:
    b	.L5ef3f524
    li	$a6,9
.L5ef3f5d8:
    b	.L5ef3f5a8
    li	$a6,47
.L5ef3f5e0:
    b	.L5ef3f5bc
    li	$a6,3
.L5ef3f5e8:
    move	$a2,$t2
    ld	$v1,344($sp)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    sw	$zero,1916($v1)
    sw	$s2,1916($v1)
    b	.L5ef3dd48
    sw	$zero,1916($v1)
.L5ef3f634:
    move	$a0,$t2
    ld	$a4,344($sp)
    li	$a5,1280
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    sw	$t0,1916($a4)
    sw	$a5,1916($a4)
    b	.L5ef3e19c
    sw	$t0,1916($a4)
.L5ef3f684:
    move	$a2,$t8
    ld	$v0,144($sp)
    li	$v1,1280
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    sw	$a0,1916($v0)
    sw	$v1,1916($v0)
    b	.L5ef3ea68
    sw	$a0,1916($v0)
.L5ef3f6d4:
    move	$a3,$t0
    ld	$a5,144($sp)
    li	$a4,1024
    li	$v0,1280
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    sw	$a4,1916($a5)
    sw	$v0,1916($a5)
    b	.L5ef3ee58
    sw	$a4,1916($a5)
.end expSegmentSS

.globl expZeroPolyArc
.ent expZeroPolyArc
expZeroPolyArc:
    li	$t1,4107
    move	$at,$s8
    addiu	$sp,$sp,-656
    addiu	$s8,$sp,656
    sd	$zero,-472($s8)
    sd	$zero,-512($s8)
    sd	$zero,-464($s8)
    sd	$zero,-456($s8)
    sd	$at,-392($s8)
    move	$v1,$a0
    sd	$a0,-520($s8)
    lui	$t0,0x15
    addiu	$t0,$t0,16360
    sd	$gp,-400($s8)
    addu	$gp,$t9,$t0
    lw	$a0,nfbWindowPrivateIndex
    li	$at,13
    lw	$v1,132($v1)
    sll	$a0,$a0,0x2
    lw	$a6,nfbGCPrivateIndex
    lw	$a5,76($a1)
    sd	$a3,-504($s8)
    sll	$a3,$a6,0x2
    addu	$a3,$a5,$a3
    lw	$a3,0($a3)
    addu	$v1,$v1,$a0
    sd	$a2,-440($s8)
    lw	$a2,8($a3)
    sd	$a1,-480($s8)
    lw	$a1,0($a1)
    sd	$a2,-496($s8)
    lw	$a2,expScreenPrivateIndex
    lw	$a1,436($a1)
    lw	$v1,0($v1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lui	$a0,0x4
    lw	$v1,20($v1)
    lw	$a1,0($a1)
    sd	$a3,-448($s8)
    move	$v0,$v1
    sd	$a1,-424($s8)
    addu	$a0,$a0,$a1
    beq	$v1,$at,.L5ef6bf3c
    sd	$a0,-536($s8)
    li	$a5,14
    beq	$v0,$a5,.L5ef6bf84
    li	$a6,12
    beq	$v0,$a6,.L5ef6bf60
    move	$t1,$zero
    ld	$at,-536($s8)
    ld	$t1,-448($s8)
    ori	$v0,$v1,0x1000
    sw	$v0,1324($at)
    sw	$zero,1236($at)
    lbu	$v0,21($t1)
    lw	$t1,52($t1)
    sll	$v0,$v0,0x3
.L5ef6a6c8:
    sd	$s7,-416($s8)
    sd	$s1,-408($s8)
    ld	$a6,-448($s8)
    lui	$at,0xff
    ld	$t0,-536($s8)
    lw	$a5,40($a6)
    ori	$at,$at,0xffff
    and	$at,$t1,$at
    sw	$a5,1328($t0)
    sw	$at,1916($t0)
    sd	$s2,-384($s8)
    lbu	$a5,48($a6)
    sd	$s3,-376($s8)
    sd	$s5,-368($s8)
    sw	$a5,1916($t0)
    sw	$v0,1916($t0)
    sd	$ra,-360($s8)
    lw	$at,40($a6)
    sd	$s6,-352($s8)
    sd	$s0,-344($s8)
    sw	$at,1248($t0)
    ld	$a5,-440($s8)
    lw	$a6,44($a6)
    sd	$s4,-336($s8)
    blez	$a5,.L5ef6b480
    sw	$a6,1244($t0)
    ld	$at,-504($s8)
    sd	$s7,-416($s8)
    sd	$s1,-408($s8)
    sd	$s2,-384($s8)
    sd	$s3,-376($s8)
    sd	$s5,-368($s8)
    sd	$ra,-360($s8)
    sd	$s6,-352($s8)
    sd	$s0,-344($s8)
    ld	$a6,-440($s8)
    sd	$s4,-336($s8)
    sd	$at,-528($s8)
    sll	$a5,$a6,0x2
    sll	$t0,$a6,0x2
    subu	$t0,$t0,$a6
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    sll	$t0,$t0,0x2
    sd	$t0,-432($s8)
    b	.L5ef6a7d4
    sd	$a5,-488($s8)
.L5ef6a784:
    ld	$a5,-512($s8)
.L5ef6a788:
    li	$at,1280
    beqz	$a5,.L5ef6ab94
    ld	$a6,-536($s8)
    sd	$zero,-512($s8)
    sw	$at,1916($a6)
    sw	$t0,1916($a6)
    sw	$zero,1960($a6)
.L5ef6a7a4:
    # lw $t9, -30396($gp)
    ld	$a0,-520($s8)
    ld	$a1,-480($s8)
    jal	_clone_1_miPolyArc
    ld	$a2,-528($s8)
.L5ef6a7b8:
    ld	$a6,-504($s8)
.L5ef6a7bc:
    ld	$a5,-488($s8)
    addu	$a5,$a5,$a6
    ld	$a6,-528($s8)
    addiu	$a6,$a6,12
    beq	$a5,$a6,.L5ef6b480
    sd	$a6,-528($s8)
.L5ef6a7d4:
    ld	$v0,-528($s8)
    lhu	$s2,4($v0)
    lhu	$v0,6($v0)
    li	$t0,1024
    ld	$at,-520($s8)
    beq	$s2,$v0,.L5ef6a800
    slti	$a5,$s2,801
    beqz	$a5,.L5ef6a784
    slti	$a6,$v0,801
    beqz	$a6,.L5ef6a788
    ld	$a5,-512($s8)
.L5ef6a800:
    ld	$v0,-528($s8)
    lh	$a6,8($at)
    lh	$a5,0($v0)
    addu	$a5,$a5,$a6
    dsll32	$a5,$a5,0x10
    dsra32	$a5,$a5,0x10
    sh	$a5,-48($s8)
    lh	$at,10($at)
    lh	$t3,2($v0)
    addu	$t3,$t3,$at
    dsll32	$t3,$t3,0x10
    dsra32	$t3,$t3,0x10
    sh	$t3,-46($s8)
    lhu	$v0,4($v0)
    li	$t0,32767
    addu	$v0,$v0,$a5
    addiu	$v0,$v0,1
    slt	$t0,$t0,$v0
    beqz	$t0,.L5ef6a854
    ld	$a7,-528($s8)
    li	$v0,32767
.L5ef6a854:
    sh	$v0,-44($s8)
    lhu	$a7,6($a7)
    li	$t0,32767
    addu	$a7,$a7,$t3
    addiu	$a7,$a7,1
    slt	$t0,$t0,$a7
    beqz	$t0,.L5ef6a87c
    ld	$t9,-520($s8)
    li	$a7,32767
    ld	$t9,-520($s8)
.L5ef6a87c:
    sh	$a7,-42($s8)
    lw	$t9,16($t9)
    lw	$t9,380($t9)
    addiu	$a1,$s8,-48
    jalr	$t9
    ld	$a0,-496($s8)
    li	$a2,325
    li	$at,1
    beq	$v0,$at,.L5ef6a92c
    li	$t0,1
    li	$a5,2
    bne	$v0,$a5,.L5ef6a7bc
    ld	$a6,-504($s8)
    ld	$a6,-512($s8)
    ld	$s2,-528($s8)
    beqz	$a6,.L5ef6b2bc
    li	$a5,1280
    ld	$t0,-536($s8)
    sd	$zero,-512($s8)
    li	$at,1024
    sw	$a5,1916($t0)
    sw	$at,1916($t0)
    sw	$zero,1960($t0)
.L5ef6a8d8:
    lhu	$a6,6($s2)
    lhu	$s2,4($s2)
    ld	$v1,-440($s8)
    ld	$at,-528($s8)
    bne	$a6,$s2,.L5ef6ac88
    ld	$t0,-504($s8)
    lh	$at,10($at)
    slti	$at,$at,23040
    bnez	$at,.L5ef6ac88
    sll	$s3,$s2,0x2
    slti	$a5,$s2,32
    beqz	$a5,.L5ef6ac88
    la	$at,local_0x5f0b0000
    ld	$a0,-496($s8)
    slti	$a6,$s2,16
    addiu	$at,$at,18584
    addu	$s3,$s3,$at
    beqz	$a6,.L5ef6b664
    lw	$s3,1888($s3)
    b	.L5ef6b668
    li	$s2,2
.L5ef6a92c:
    ld	$v0,-528($s8)
    lhu	$s2,4($v0)
    lhu	$v0,6($v0)
    ld	$a5,-528($s8)
    bne	$s2,$v0,.L5ef6abac
    slti	$a6,$s2,32
    lh	$a5,10($a5)
    slti	$a5,$a5,23040
    bnez	$a5,.L5ef6abac
    li	$s3,-16
    li	$v1,1
    ld	$a5,-512($s8)
    la	$at,local_0x5f0b0000
    li	$s5,1
    beqz	$a6,.L5ef6b300
    addiu	$at,$at,18584
    addiu	$s0,$v0,1
    sll	$s1,$s2,0x2
    addu	$s1,$s1,$at
    slti	$v1,$s0,17
    beqz	$v1,.L5ef6bc04
    lw	$s1,1888($s1)
    li	$a2,323
    beqz	$a5,.L5ef6bc14
    li	$a3,8
    li	$at,1280
.L5ef6a994:
    ld	$a6,-536($s8)
    sd	$zero,-512($s8)
    li	$t0,1024
    sw	$at,1916($a6)
    sw	$t0,1916($a6)
    sw	$zero,1960($a6)
.L5ef6a9ac:
    sd	$a2,-472($s8)
.L5ef6a9b0:
    move	$a6,$a2
    lui	$v0,0x4
    ld	$a5,-424($s8)
    lh	$t0,-48($s8)
    sll	$at,$a2,0x2
    addu	$at,$at,$a5
    addu	$at,$at,$v0
    sw	$t0,0($at)
    ld	$a5,-536($s8)
    lh	$a6,-46($s8)
    subu	$s3,$a3,$s0
    andi	$v0,$s1,0x3
    sw	$a6,1916($a5)
    sw	$s0,1916($a5)
    beqz	$v1,.L5ef6bd38
    sw	$s0,1916($a5)
    addiu	$v1,$s0,1
    sra	$s3,$v1,0x1
    beqz	$v0,.L5ef6be7c
    subu	$s3,$a3,$s3
    blez	$s0,.L5ef6aad0
    move	$a3,$s1
    srl	$a4,$v1,0x1f
    addu	$a4,$a4,$v1
    sra	$a4,$a4,0x1
    andi	$at,$a4,0x1
    beqz	$at,.L5ef6aa40
    move	$v0,$s0
    lhu	$a6,0($a3)
    lhu	$a5,2($a3)
    sll	$a6,$a6,0x10
    or	$a5,$a5,$a6
    ld	$a6,-536($s8)
    addiu	$a3,$a3,4
    addiu	$v0,$v0,-2
    sw	$a5,1916($a6)
.L5ef6aa40:
    move	$v1,$v0
    sra	$t0,$a4,0x1
    beqz	$t0,.L5ef6aad0
    move	$a1,$a3
    addiu	$at,$v1,-4
    blez	$at,.L5ef6c0bc
    move	$v0,$v1
    lhu	$v0,2($a1)
    addiu	$at,$v1,-4
    lhu	$a0,0($a1)
    ld	$v1,-536($s8)
    ld	$a6,-536($s8)
    sll	$a0,$a0,0x10
.L5ef6aa74:
    or	$v0,$v0,$a0
    sw	$v0,1916($v1)
    lhu	$v0,4($a1)
    lhu	$a0,6($a1)
    addiu	$a1,$a1,8
    sll	$v0,$v0,0x10
    or	$v0,$a0,$v0
    sw	$v0,1916($v1)
    addiu	$at,$at,-4
    lhu	$a0,0($a1)
    lhu	$v0,2($a1)
    bgtz	$at,.L5ef6aa74
    sll	$a0,$a0,0x10
    move	$t1,$a0
    move	$t0,$v0
    or	$t0,$t0,$t1
    sw	$t0,1916($a6)
    move	$a5,$a1
    lhu	$t0,4($a5)
    lhu	$a5,6($a5)
    sll	$t0,$t0,0x10
    or	$a5,$a5,$t0
    sw	$a5,1916($a6)
.L5ef6aad0:
    blez	$s3,.L5ef6a7b8
    move	$v0,$zero
    andi	$a0,$s3,0x3
    beqz	$a0,.L5ef6aaf8
    move	$v1,$s3
.L5ef6aae4:
    addiu	$v0,$v0,1
    ld	$at,-536($s8)
    addi	$a0,$a0,-1
    bnez	$a0,.L5ef6aae4
    sw	$zero,1916($at)
.L5ef6aaf8:
    sra	$a3,$v1,0x2
    beqz	$a3,.L5ef6ab8c
    move	$a0,$v0
    slti	$a5,$a3,2
    bnez	$a5,.L5ef6c1a4
    addiu	$at,$s3,-12
    addiu	$v0,$s3,-8
    addiu	$a1,$s3,-4
    addiu	$a0,$a0,4
    ld	$v1,-536($s8)
    move	$a2,$s3
    ld	$a6,-536($s8)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
.L5ef6ab30:
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    beq	$a0,$a1,.L5ef6ab84
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    beq	$a0,$v0,.L5ef6ab84
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    beq	$a0,$at,.L5ef6ab84
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    sw	$zero,1916($v1)
    addiu	$a0,$a0,16
    bne	$a0,$a2,.L5ef6ab30
    sw	$zero,1916($v1)
.L5ef6ab84:
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
.L5ef6ab8c:
    b	.L5ef6a7bc
    ld	$a6,-504($s8)
.L5ef6ab94:
    ld	$t0,-472($s8)
    beqz	$t0,.L5ef6a7a4
    ld	$at,-536($s8)
    sd	$zero,-472($s8)
    b	.L5ef6a7a4
    sw	$zero,1960($at)
.L5ef6abac:
    ld	$a5,-472($s8)
    beqz	$a5,.L5ef6b2e8
    ld	$a6,-512($s8)
    ld	$a6,-536($s8)
    sd	$zero,-472($s8)
    sd	$t0,-512($s8)
    sw	$zero,1960($a6)
    sw	$zero,1212($a6)
.L5ef6abcc:
    addiu	$a1,$s8,-328
    li	$a2,1
    ld	$t3,-520($s8)
    # lw $t9, -30500($gp)
    ld	$t2,-528($s8)
    lh	$ra,10($t3)
    lh	$t3,8($t3)
    lh	$t1,0($t2)
    lh	$t8,2($t2)
    move	$a0,$t2
    addu	$t1,$t1,$t3
    addu	$t8,$t8,$ra
    sh	$t8,2($t2)
    jal	miZeroArcSetup
    sh	$t1,0($t2)
    lw	$a2,-296($s8)
    lw	$a3,-300($s8)
    lw	$t8,-304($s8)
    lw	$ra,-308($s8)
    lw	$t3,-312($s8)
    lw	$s5,-316($s8)
    lw	$s0,-320($s8)
    lw	$s7,-232($s8)
    lw	$a7,-328($s8)
    ld	$at,-528($s8)
    lw	$s1,-260($s8)
    lw	$v1,-324($s8)
    lhu	$at,4($at)
    move	$s6,$s1
    move	$t1,$v1
    andi	$at,$at,0x1
    beqz	$at,.L5ef6b3a4
    move	$t2,$a7
.L5ef6ac50:
    beqz	$s7,.L5ef6b27c
    lw	$s1,-264($s8)
    lw	$a0,-228($s8)
    beqz	$a0,.L5ef6b27c
.L5ef6ac60:
    lw	$s4,-276($s8)
    lw	$s2,-272($s8)
    beqz	$v0,.L5ef6b3e0
    slt	$a1,$v1,$s1
    beqz	$a1,.L5ef6b2d4
    lw	$a1,-268($s8)
    lw	$v0,-284($s8)
.L5ef6ac7c:
    lw	$s3,-280($s8)
    b	.L5ef6af88
    nop
.L5ef6ac88:
    ld	$a5,-464($s8)
    andi	$a6,$v1,0x1
    bnez	$a5,.L5ef6ae10
    move	$v0,$t0
    ld	$a7,-432($s8)
    beqz	$a6,.L5ef6accc
    addu	$a7,$a7,$t0
    ld	$at,-456($s8)
    lhu	$t0,6($v0)
    lhu	$a6,4($v0)
    addu	$a6,$a6,$t0
    slt	$a5,$at,$a6
    sltu	$a5,$zero,$a5
    bnezl	$a5,.L5ef6acc4
    move	$at,$a6
.L5ef6acc4:
    addiu	$v0,$v0,12
    sd	$at,-456($s8)
.L5ef6accc:
    ld	$t2,-456($s8)
    sra	$a3,$v1,0x1
    beqz	$a3,.L5ef6adec
    move	$a4,$v0
    slti	$at,$a3,3
    bnez	$at,.L5ef6c1c0
    addiu	$a5,$a7,-48
    lhu	$v0,18($a4)
    lhu	$t0,30($a4)
    lhu	$a2,28($a4)
    lhu	$a6,6($a4)
    lhu	$a3,4($a4)
    addiu	$a1,$a5,-24
    addu	$a2,$a2,$t0
    addu	$a3,$a3,$a6
    slt	$a6,$t2,$a3
    sltu	$a6,$zero,$a6
    beqzl	$a6,.L5ef6ad18
    move	$a3,$t2
.L5ef6ad18:
    lhu	$at,16($a4)
    lhu	$a0,54($a4)
    lhu	$v1,52($a4)
    addu	$v0,$at,$v0
    slt	$at,$a3,$v0
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef6ad38
    move	$v0,$a3
.L5ef6ad38:
    slt	$at,$v0,$a2
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef6ad48
    move	$a2,$v0
.L5ef6ad48:
    addu	$a3,$v1,$a0
    beq	$a4,$a1,.L5ef6b270
    lhu	$v0,42($a4)
    lhu	$at,40($a4)
    lhu	$a0,78($a4)
    lhu	$v1,76($a4)
    addu	$v0,$at,$v0
    slt	$at,$a2,$v0
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef6ad74
    move	$v0,$a2
.L5ef6ad74:
    slt	$at,$v0,$a3
    sltu	$at,$zero,$at
    beqzl	$at,.L5ef6ad84
    move	$a3,$v0
.L5ef6ad84:
    addu	$a2,$v1,$a0
    addiu	$a4,$a4,48
    bne	$a4,$a5,.L5ef6ad18
    lhu	$v0,18($a4)
    move	$v1,$a4
    move	$at,$a2
    move	$a2,$a3
    move	$a3,$at
.L5ef6ada4:
    lhu	$at,16($v1)
    addu	$at,$at,$v0
    slt	$a5,$a2,$at
    sltu	$a5,$zero,$a5
    beqzl	$a5,.L5ef6adbc
    move	$at,$a2
.L5ef6adbc:
    lhu	$a6,42($v1)
    lhu	$a5,40($v1)
    slt	$t0,$at,$a3
    sltu	$t0,$zero,$t0
    beqzl	$t0,.L5ef6add4
    move	$a3,$at
.L5ef6add4:
    addu	$a5,$a5,$a6
    slt	$a6,$a3,$a5
    sltu	$a6,$zero,$a6
    beqzl	$a6,.L5ef6ade8
    move	$a5,$a3
.L5ef6ade8:
    sd	$a5,-456($s8)
.L5ef6adec:
    ld	$a6,-456($s8)
    li	$t0,-16
    sll	$a6,$a6,0x4
    addiu	$a6,$a6,15
    and	$a6,$a6,$t0
    subu	$sp,$sp,$a6
    move	$a5,$sp
    beqz	$sp,.L5ef6c054
    sd	$sp,-464($s8)
.L5ef6ae10:
    addiu	$a1,$s8,-192
    # lw $t9, -30500($gp)
    ld	$s0,-464($s8)
    ld	$a0,-528($s8)
    jal	miZeroArcSetup
    li	$a2,1
    lw	$a7,-160($s8)
    lw	$a2,-164($s8)
    lw	$t8,-168($s8)
    lw	$ra,-172($s8)
    lw	$t3,-176($s8)
    lw	$t1,-188($s8)
    lw	$t2,-192($s8)
    lw	$s5,-184($s8)
    ld	$t0,-528($s8)
    lw	$s2,-124($s8)
    lw	$a3,-180($s8)
    lhu	$t0,4($t0)
    move	$s7,$s2
    move	$s6,$a3
    andi	$t0,$t0,0x1
    beqz	$t0,.L5ef6b440
    move	$s1,$s5
.L5ef6ae6c:
    lw	$v1,-96($s8)
    beqz	$v1,.L5ef6b29c
    lw	$a4,-92($s8)
    beqz	$a4,.L5ef6b29c
.L5ef6ae7c:
    lw	$s4,-136($s8)
    beqz	$v0,.L5ef6aecc
    lw	$s3,-144($s8)
    ld	$s2,-528($s8)
    lhu	$at,6($s2)
    lhu	$s2,4($s2)
    bne	$at,$s2,.L5ef6aecc
    andi	$at,$s2,0x1
    bnez	$at,.L5ef6aed0
    lw	$s2,-128($s8)
    lw	$s2,-128($s8)
    lw	$v0,-148($s8)
    lw	$s3,-144($s8)
    lw	$s4,-136($s8)
    subu	$a7,$v0,$s2
    addu	$a2,$s2,$s3
    addu	$v1,$s2,$v0
    subu	$s6,$s4,$t1
    b	.L5ef6b9b8
    addu	$s1,$t1,$s3
.L5ef6aecc:
    lw	$s2,-128($s8)
.L5ef6aed0:
    lw	$s5,-140($s8)
    beqz	$v0,.L5ef6b694
    slt	$a3,$t1,$s2
    beqz	$a3,.L5ef6bcdc
    lw	$v1,-132($s8)
    lw	$v0,-148($s8)
.L5ef6aee8:
    b	.L5ef6b0b4
    nop
.L5ef6aef0:
    li	$a2,1
    sra	$a5,$a5,0x1
    sll	$v1,$s0,0x1
    subu	$v1,$v1,$s5
    negu	$s5,$s5
    sra	$at,$s5,0x3
    subu	$s0,$v1,$s0
    sra	$a6,$s0,0x1
    subu	$ra,$ra,$a6
    addu	$a5,$a5,$ra
    subu	$t8,$a5,$t8
    bltz	$v1,.L5ef6b084
    addu	$t8,$t8,$at
    sra	$a5,$v1,0x1
    subu	$t3,$a5,$t3
.L5ef6af2c:
    move	$a3,$zero
.L5ef6af30:
    subu	$ra,$ra,$s0
.L5ef6af34:
    subu	$a5,$s4,$t2
    ld	$t0,-536($s8)
    addu	$a6,$t1,$s3
    addu	$at,$t2,$v0
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
    sw	$a5,1916($t0)
    sw	$a6,1916($t0)
    subu	$a6,$s2,$t1
    sw	$a5,1916($t0)
    sw	$a6,1916($t0)
    sw	$at,1916($t0)
    bltz	$t8,.L5ef6afb0
    sw	$a6,1916($t0)
    addiu	$t1,$t1,1
    addiu	$t2,$t2,1
    addu	$t3,$s5,$t3
    subu	$t8,$t8,$t3
.L5ef6af7c:
    slt	$t0,$t1,$s1
    beqz	$t0,.L5ef6afc4
    slt	$at,$t2,$a1
.L5ef6af88:
    bgezl	$t3,.L5ef6af34
    subu	$ra,$ra,$s0
    negu	$a5,$t3
    bne	$t1,$s1,.L5ef6aef0
    addu	$ra,$t3,$ra
    li	$t8,-1
    move	$s0,$zero
    move	$ra,$zero
    b	.L5ef6af30
    move	$t3,$zero
.L5ef6afb0:
    addu	$t8,$ra,$t8
    addu	$t3,$s0,$t3
    addu	$t1,$t1,$a2
    b	.L5ef6af7c
    addu	$t2,$t2,$a3
.L5ef6afc4:
    bnez	$at,.L5ef6af88
    lw	$a5,-256($s8)
.L5ef6afcc:
    beq	$a5,$t2,.L5ef6afdc
    lw	$a6,-252($s8)
    bne	$a6,$t1,.L5ef6afe4
    andi	$t0,$s6,0x1
.L5ef6afdc:
    lw	$s6,-248($s8)
    andi	$t0,$s6,0x1
.L5ef6afe4:
    beqz	$t0,.L5ef6b004
    lw	$at,-280($s8)
    lw	$a6,-284($s8)
    ld	$a5,-536($s8)
    addu	$at,$at,$t1
    addu	$a6,$a6,$t2
    sw	$a6,1916($a5)
    sw	$at,1916($a5)
.L5ef6b004:
    andi	$a5,$s6,0x4
    beqz	$a5,.L5ef6b028
    lw	$a6,-272($s8)
    lw	$at,-276($s8)
    ld	$t0,-536($s8)
    subu	$a6,$a6,$t1
    subu	$at,$at,$t2
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
.L5ef6b028:
    ld	$t0,-528($s8)
    lhu	$t0,6($t0)
    andi	$t0,$t0,0x1
    beqz	$t0,.L5ef6a7b8
    andi	$at,$s6,0x2
    beqz	$at,.L5ef6b05c
    lw	$a5,-280($s8)
    lw	$t0,-276($s8)
    ld	$a6,-536($s8)
    addu	$a5,$a5,$t1
    subu	$t0,$t0,$t2
    sw	$t0,1916($a6)
    sw	$a5,1916($a6)
.L5ef6b05c:
    andi	$a6,$s6,0x8
    beqz	$a6,.L5ef6a7b8
    lw	$t0,-272($s8)
    lw	$a5,-284($s8)
    ld	$at,-536($s8)
    subu	$t0,$t0,$t1
    addu	$a5,$a5,$t2
    sw	$a5,1916($at)
    b	.L5ef6a7b8
    sw	$t0,1916($at)
.L5ef6b084:
    negu	$at,$v1
    sra	$at,$at,0x1
    addu	$t3,$at,$t3
    b	.L5ef6af2c
    negu	$t3,$t3
.L5ef6b098:
    addiu	$t1,$t1,1
    addiu	$t2,$t2,1
    addu	$t3,$s6,$t3
    subu	$t8,$t8,$t3
.L5ef6b0a8:
    slt	$a5,$t1,$s2
    beqz	$a5,.L5ef6b128
    slt	$a6,$t2,$v1
.L5ef6b0b4:
    bltz	$t3,.L5ef6b108
    addu	$t0,$t1,$s3
.L5ef6b0bc:
    addiu	$s0,$s0,16
    subu	$ra,$ra,$s1
    sh	$t0,-10($s0)
    sh	$t0,-14($s0)
    subu	$at,$s5,$t2
    addu	$a6,$t2,$v0
    subu	$a5,$s4,$t1
    sh	$a5,-2($s0)
    sh	$a6,-4($s0)
    sh	$a5,-6($s0)
    sh	$at,-8($s0)
    sh	$at,-12($s0)
    bgez	$t8,.L5ef6b098
    sh	$a6,-16($s0)
    addu	$t8,$ra,$t8
    addu	$t3,$s1,$t3
    addu	$t1,$t1,$a7
    b	.L5ef6b0a8
    addu	$t2,$t2,$a2
.L5ef6b108:
    negu	$a5,$t3
    bne	$t1,$s2,.L5ef6b218
    addu	$ra,$t3,$ra
    li	$t8,-1
    move	$s1,$zero
    move	$ra,$zero
    b	.L5ef6b0bc
    move	$t3,$zero
.L5ef6b128:
    bnez	$a6,.L5ef6b0b4
.L5ef6b12c:
    lw	$t0,-120($s8)
.L5ef6b130:
    beq	$t0,$t2,.L5ef6b140
    lw	$at,-116($s8)
    bne	$at,$t1,.L5ef6b148
    andi	$a5,$s7,0x1
.L5ef6b140:
    lw	$s7,-112($s8)
    andi	$a5,$s7,0x1
.L5ef6b148:
    beqz	$a5,.L5ef6b16c
    andi	$at,$s7,0x4
    lw	$a6,-148($s8)
    lw	$t0,-144($s8)
    addiu	$s0,$s0,4
    addu	$a6,$a6,$t2
    addu	$t0,$t0,$t1
    sh	$t0,-2($s0)
    sh	$a6,-4($s0)
.L5ef6b16c:
    beqz	$at,.L5ef6b190
    ld	$t0,-528($s8)
    lw	$a5,-140($s8)
    lw	$a6,-136($s8)
    addiu	$s0,$s0,4
    subu	$a5,$a5,$t2
    subu	$a6,$a6,$t1
    sh	$a6,-2($s0)
    sh	$a5,-4($s0)
.L5ef6b190:
    lhu	$t0,6($t0)
    andi	$t0,$t0,0x1
    beqz	$t0,.L5ef6b1e4
    andi	$at,$s7,0x2
    beqz	$at,.L5ef6b1c0
    lw	$a5,-140($s8)
    lw	$a6,-144($s8)
    addiu	$s0,$s0,4
    subu	$a5,$a5,$t2
    addu	$a6,$a6,$t1
    sh	$a6,-2($s0)
    sh	$a5,-4($s0)
.L5ef6b1c0:
    andi	$t0,$s7,0x8
    beqz	$t0,.L5ef6b1e4
    lw	$at,-148($s8)
    lw	$a5,-136($s8)
    addiu	$s0,$s0,4
    addu	$at,$at,$t2
    subu	$a5,$a5,$t1
    sh	$a5,-2($s0)
    sh	$at,-4($s0)
.L5ef6b1e4:
    ld	$t9,-480($s8)
    ld	$a0,-520($s8)
    move	$a1,$t9
    lw	$t9,72($t9)
    ld	$a3,-464($s8)
    move	$a2,$zero
    lw	$t9,20($t9)
    move	$a4,$a3
    subu	$a3,$s0,$a3
    jalr	$t9
    sra	$a3,$a3,0x2
    b	.L5ef6a7bc
    ld	$a6,-504($s8)
.L5ef6b218:
    li	$a7,1
    sra	$a5,$a5,0x1
    sll	$a3,$s1,0x1
    subu	$a3,$a3,$s6
    negu	$s6,$s6
    sra	$at,$s6,0x3
    subu	$s1,$a3,$s1
    sra	$a6,$s1,0x1
    subu	$ra,$ra,$a6
    addu	$a5,$a5,$ra
    subu	$t8,$a5,$t8
    bltz	$a3,.L5ef6b25c
    addu	$t8,$t8,$at
    sra	$a5,$a3,0x1
    subu	$t3,$a5,$t3
.L5ef6b254:
    b	.L5ef6b0bc
    move	$a2,$zero
.L5ef6b25c:
    negu	$at,$a3
    sra	$at,$at,0x1
    addu	$t3,$at,$t3
    b	.L5ef6b254
    negu	$t3,$t3
.L5ef6b270:
    move	$v1,$a4
    b	.L5ef6ada4
    addiu	$v1,$v1,24
.L5ef6b27c:
    lw	$s6,-224($s8)
    lw	$a5,-212($s8)
    lw	$a0,-216($s8)
    lw	$s7,-220($s8)
    sw	$a5,-224($s8)
    sw	$a0,-228($s8)
    b	.L5ef6ac60
    sw	$s7,-232($s8)
.L5ef6b29c:
    lw	$s7,-88($s8)
    lw	$a6,-76($s8)
    lw	$a4,-80($s8)
    lw	$v1,-84($s8)
    sw	$a6,-88($s8)
    sw	$a4,-92($s8)
    b	.L5ef6ae7c
    sw	$v1,-96($s8)
.L5ef6b2bc:
    ld	$t0,-472($s8)
    beqz	$t0,.L5ef6a8d8
    ld	$at,-536($s8)
    sd	$zero,-472($s8)
    b	.L5ef6a8d8
    sw	$zero,1960($at)
.L5ef6b2d4:
    slt	$a5,$a7,$a1
    beqz	$a5,.L5ef6afcc
    lw	$a5,-256($s8)
    b	.L5ef6ac7c
    lw	$v0,-284($s8)
.L5ef6b2e8:
    ld	$t0,-536($s8)
    bnez	$a6,.L5ef6abcc
    li	$at,1
    sd	$at,-512($s8)
    b	.L5ef6abcc
    sw	$zero,1212($t0)
.L5ef6b300:
    ld	$a5,-472($s8)
    move	$s4,$zero
    li	$t3,-8
    beqz	$a5,.L5ef6bd14
    ld	$at,-536($s8)
    sd	$zero,-472($s8)
    li	$a5,1
    ld	$s2,-528($s8)
    sw	$zero,1960($at)
    sw	$zero,1212($at)
    sd	$a5,-512($s8)
    lhu	$s2,4($s2)
.L5ef6b330:
    move	$v0,$zero
    li	$t2,8
    li	$t1,10
    sll	$t9,$s2,0x1
    sll	$a2,$s2,0x2
    ld	$t0,-536($s8)
    sra	$a3,$s2,0x1
    andi	$a6,$s2,0x1
    lh	$s0,-46($s8)
    move	$s7,$s2
    lh	$t8,-48($s8)
    addu	$s1,$s0,$s7
    bnez	$a6,.L5ef6ba80
    move	$s6,$t8
    move	$s2,$s1
    addiu	$a7,$a2,-12
    addu	$s3,$a3,$s0
    move	$t3,$s0
    li	$t2,12
    li	$t1,17
    subu	$t1,$t1,$t9
    addu	$ra,$a3,$s6
    addu	$s4,$a3,$ra
    addu	$at,$a3,$t8
    sw	$at,1916($t0)
    sw	$s0,1916($t0)
    sw	$ra,1916($t0)
    b	.L5ef6bc48
    sw	$s1,1916($t0)
.L5ef6b3a4:
    andi	$at,$s1,0x2
    beqz	$at,.L5ef6b3c0
    ld	$a6,-536($s8)
    lw	$t0,-276($s8)
    lw	$a5,-280($s8)
    sw	$t0,1916($a6)
    sw	$a5,1916($a6)
.L5ef6b3c0:
    lw	$a5,-272($s8)
    andi	$at,$s1,0x8
    beqz	$at,.L5ef6ac50
    lw	$t0,-276($s8)
    ld	$a6,-536($s8)
    sw	$t0,1916($a6)
    b	.L5ef6ac50
    sw	$a5,1916($a6)
.L5ef6b3e0:
    lw	$s3,-280($s8)
    lw	$t9,-224($s8)
    lw	$a7,-248($s8)
    lw	$a6,-240($s8)
    lw	$v0,-216($s8)
    slt	$at,$t1,$s1
    beqz	$at,.L5ef6bd00
    lw	$a1,-268($s8)
    lw	$a4,-252($s8)
.L5ef6b404:
    lw	$s2,-272($s8)
    lw	$s4,-276($s8)
    sd	$a6,-600($s8)
    sd	$v0,-608($s8)
    lw	$v0,-284($s8)
    lw	$at,-212($s8)
    lw	$v1,-220($s8)
    lw	$a5,-236($s8)
    lw	$t0,-244($s8)
    sd	$v1,-616($s8)
    lw	$v1,-256($s8)
    sd	$t0,-640($s8)
    sd	$a5,-624($s8)
    b	.L5ef6b5c0
    sd	$at,-632($s8)
.L5ef6b440:
    andi	$a5,$s2,0x2
    beqz	$a5,.L5ef6b460
    lw	$at,-144($s8)
    ld	$t0,-464($s8)
    lw	$a6,-140($s8)
    addiu	$s0,$t0,4
    sh	$at,2($t0)
    sh	$a6,0($t0)
.L5ef6b460:
    andi	$a5,$s2,0x8
    beqz	$a5,.L5ef6ae6c
    lw	$a6,-140($s8)
    addiu	$s0,$s0,4
    lw	$t0,-136($s8)
    sh	$a6,-4($s0)
    b	.L5ef6ae6c
    sh	$t0,-2($s0)
.L5ef6b480:
    ld	$s6,-352($s8)
    ld	$ra,-360($s8)
    ld	$s3,-376($s8)
    ld	$s1,-408($s8)
    ld	$a5,-536($s8)
    li	$t0,1280
    ld	$at,-512($s8)
    ld	$s0,-344($s8)
    ld	$s2,-384($s8)
    beqz	$at,.L5ef6bbd4
    ld	$gp,-400($s8)
    ld	$s7,-416($s8)
    ld	$s2,-384($s8)
    ld	$s5,-368($s8)
    ld	$s0,-344($s8)
    ld	$s4,-336($s8)
    sw	$t0,1916($a5)
    li	$a6,1024
    sw	$a6,1916($a5)
    sw	$zero,1960($a5)
.L5ef6b4d0:
    ld	$at,-392($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
    ld	$v1,-640($s8)
.L5ef6b4e4:
    move	$s6,$a7
    ld	$a7,-624($s8)
    ld	$a4,-600($s8)
    sw	$v1,-256($s8)
    sw	$a7,-248($s8)
    sw	$a4,-252($s8)
    andi	$a5,$s6,0x1
.L5ef6b500:
    beqz	$a5,.L5ef6b518
    addu	$a6,$t1,$s3
    ld	$t0,-536($s8)
    addu	$at,$t2,$v0
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
.L5ef6b518:
    andi	$a5,$s6,0x2
    beqz	$a5,.L5ef6b534
    subu	$at,$s4,$t2
    ld	$t0,-536($s8)
    addu	$a6,$t1,$s3
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
.L5ef6b534:
    andi	$a5,$s6,0x4
    beqz	$a5,.L5ef6b550
    subu	$a6,$s2,$t1
    ld	$t0,-536($s8)
    subu	$at,$s4,$t2
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
.L5ef6b550:
    andi	$a5,$s6,0x8
    beqz	$a5,.L5ef6b56c
    addu	$at,$t2,$v0
    ld	$t0,-536($s8)
    subu	$a6,$s2,$t1
    sw	$at,1916($t0)
    sw	$a6,1916($t0)
.L5ef6b56c:
    beql	$t2,$s7,.L5ef6b580
    ld	$s7,-616($s8)
    bnel	$t1,$a0,.L5ef6b59c
    subu	$ra,$ra,$s0
    ld	$s7,-616($s8)
.L5ef6b580:
    move	$s6,$t9
    ld	$t9,-632($s8)
    ld	$a0,-608($s8)
    sw	$s7,-232($s8)
    sw	$t9,-224($s8)
    sw	$a0,-228($s8)
    subu	$ra,$ra,$s0
.L5ef6b59c:
    bltzl	$t8,.L5ef6b5e0
    addu	$t8,$ra,$t8
    addiu	$t1,$t1,1
    addiu	$t2,$t2,1
    addu	$t3,$s5,$t3
    subu	$t8,$t8,$t3
.L5ef6b5b4:
    slt	$a5,$t1,$s1
    beqz	$a5,.L5ef6b60c
    slt	$a6,$t2,$a1
.L5ef6b5c0:
    bltz	$t3,.L5ef6b5f0
    nop
.L5ef6b5c8:
    beql	$t2,$v1,.L5ef6b4e4
    ld	$v1,-640($s8)
    bne	$t1,$a4,.L5ef6b500
    andi	$a5,$s6,0x1
    b	.L5ef6b4e4
    ld	$v1,-640($s8)
.L5ef6b5e0:
    addu	$t3,$s0,$t3
    addu	$t1,$t1,$a2
    b	.L5ef6b5b4
    addu	$t2,$t2,$a3
.L5ef6b5f0:
    bne	$t1,$s1,.L5ef6b61c
    negu	$a5,$t3
    li	$t8,-1
    move	$s0,$zero
    move	$ra,$zero
    b	.L5ef6b5c8
    move	$t3,$zero
.L5ef6b60c:
    bnez	$a6,.L5ef6b5c0
    nop
    b	.L5ef6afcc
    lw	$a5,-256($s8)
.L5ef6b61c:
    li	$a2,1
    sra	$a5,$a5,0x1
    sll	$a3,$s0,0x1
    subu	$a3,$a3,$s5
    negu	$s5,$s5
    sra	$at,$s5,0x3
    addu	$ra,$t3,$ra
    subu	$s0,$a3,$s0
    sra	$a6,$s0,0x1
    subu	$ra,$ra,$a6
    addu	$a5,$a5,$ra
    subu	$t8,$a5,$t8
    bltz	$a3,.L5ef6b6f4
    addu	$t8,$t8,$at
    sra	$a5,$a3,0x1
    subu	$t3,$a5,$t3
.L5ef6b65c:
    b	.L5ef6b5c8
    move	$a3,$zero
.L5ef6b664:
    li	$s2,4
.L5ef6b668:
    lw	$a0,8($a0)
    beqz	$a0,.L5ef6bcf0
    nop
    beqz	$a0,.L5ef6bcf8
    addiu	$v1,$a0,8
.L5ef6b67c:
    lw	$v0,4($a0)
.L5ef6b680:
    blez	$v0,.L5ef6a7b8
    move	$s0,$v1
    sll	$s1,$v0,0x3
    b	.L5ef6b8b4
    addu	$s1,$v1,$s1
.L5ef6b694:
    lw	$s3,-144($s8)
    lw	$a0,-88($s8)
    lw	$a5,-104($s8)
    lw	$t9,-80($s8)
    beqz	$a3,.L5ef6c08c
    lw	$v0,-132($s8)
.L5ef6b6ac:
    lw	$a1,-116($s8)
    lw	$s4,-136($s8)
    lw	$s5,-140($s8)
    sd	$v0,-544($s8)
    lw	$v0,-148($s8)
    lw	$a3,-120($s8)
    sd	$a5,-560($s8)
    sd	$t9,-584($s8)
    lw	$t9,-112($s8)
    lw	$a6,-108($s8)
    lw	$at,-84($s8)
    lw	$t0,-76($s8)
    sd	$a6,-592($s8)
    sd	$at,-576($s8)
    lw	$at,-100($s8)
    sd	$t0,-568($s8)
    b	.L5ef6b74c
    sd	$at,-552($s8)
.L5ef6b6f4:
    negu	$at,$a3
    sra	$at,$at,0x1
    addu	$t3,$at,$t3
    b	.L5ef6b65c
    negu	$t3,$t3
    ld	$v1,-576($s8)
.L5ef6b70c:
    move	$s7,$a0
    ld	$a0,-568($s8)
    ld	$a4,-584($s8)
    sw	$v1,-96($s8)
    sw	$a0,-88($s8)
    sw	$a4,-92($s8)
    subu	$ra,$ra,$s1
.L5ef6b728:
    bltzl	$t8,.L5ef6b824
    addu	$t8,$ra,$t8
    addiu	$t1,$t1,1
    addiu	$t2,$t2,1
    addu	$t3,$s6,$t3
    subu	$t8,$t8,$t3
.L5ef6b740:
    slt	$a5,$t1,$s2
    beqz	$a5,.L5ef6b834
    ld	$a6,-544($s8)
.L5ef6b74c:
    bltz	$t3,.L5ef6b808
    nop
.L5ef6b754:
    beql	$t2,$a3,.L5ef6b768
    ld	$a3,-592($s8)
    bne	$t1,$a1,.L5ef6b784
    andi	$a6,$s7,0x1
    ld	$a3,-592($s8)
.L5ef6b768:
    move	$s7,$t9
    ld	$t9,-552($s8)
    ld	$a1,-560($s8)
    sw	$a3,-120($s8)
    sw	$t9,-112($s8)
    sw	$a1,-116($s8)
    andi	$a6,$s7,0x1
.L5ef6b784:
    beqz	$a6,.L5ef6b79c
    addu	$at,$t1,$s3
    addiu	$s0,$s0,4
    sh	$at,-2($s0)
    addu	$t0,$t2,$v0
    sh	$t0,-4($s0)
.L5ef6b79c:
    andi	$a5,$s7,0x2
    beqz	$a5,.L5ef6b7b8
    addu	$t0,$t1,$s3
    addiu	$s0,$s0,4
    sh	$t0,-2($s0)
    subu	$a6,$s5,$t2
    sh	$a6,-4($s0)
.L5ef6b7b8:
    andi	$at,$s7,0x4
    beqz	$at,.L5ef6b7d4
    subu	$a6,$s4,$t1
    addiu	$s0,$s0,4
    sh	$a6,-2($s0)
    subu	$a5,$s5,$t2
    sh	$a5,-4($s0)
.L5ef6b7d4:
    andi	$t0,$s7,0x8
    beqz	$t0,.L5ef6b7f0
    subu	$a5,$s4,$t1
    addiu	$s0,$s0,4
    sh	$a5,-2($s0)
    addu	$at,$t2,$v0
    sh	$at,-4($s0)
.L5ef6b7f0:
    beql	$t2,$v1,.L5ef6b70c
    ld	$v1,-576($s8)
    bnel	$t1,$a4,.L5ef6b728
    subu	$ra,$ra,$s1
    b	.L5ef6b70c
    ld	$v1,-576($s8)
.L5ef6b808:
    bne	$t1,$s2,.L5ef6b848
    negu	$a5,$t3
    li	$t8,-1
    move	$s1,$zero
    move	$ra,$zero
    b	.L5ef6b754
    move	$t3,$zero
.L5ef6b824:
    addu	$t3,$s1,$t3
    addu	$t1,$t1,$a7
    b	.L5ef6b740
    addu	$t2,$t2,$a2
.L5ef6b834:
    slt	$a6,$t2,$a6
    bnez	$a6,.L5ef6b74c
    nop
    b	.L5ef6b130
    lw	$t0,-120($s8)
.L5ef6b848:
    li	$a7,1
    sra	$a5,$a5,0x1
    sll	$a2,$s1,0x1
    subu	$a2,$a2,$s6
    negu	$s6,$s6
    sra	$at,$s6,0x3
    addu	$ra,$t3,$ra
    subu	$s1,$a2,$s1
    sra	$a6,$s1,0x1
    subu	$ra,$ra,$a6
    addu	$a5,$a5,$ra
    subu	$t8,$a5,$t8
    bltz	$a2,.L5ef6ba6c
    addu	$t8,$t8,$at
    sra	$a5,$a2,0x1
    subu	$t3,$a5,$t3
.L5ef6b888:
    b	.L5ef6b754
    move	$a2,$zero
.L5ef6b890:
    move	$v0,$t2
    beqz	$a6,.L5ef6b8a8
    sh	$t1,-50($s8)
    slt	$at,$t2,$t1
    bnez	$at,.L5ef6b938
    addiu	$a0,$s8,-56
.L5ef6b8a8:
    addiu	$s0,$s0,8
.L5ef6b8ac:
    beq	$s0,$s1,.L5ef6b99c
    nop
.L5ef6b8b4:
    lh	$a7,0($s0)
    lh	$t8,-48($s8)
    lh	$t3,-46($s8)
    slt	$a5,$t8,$a7
    beqz	$a5,.L5ef6b8d0
    move	$v0,$t8
    move	$v0,$a7
.L5ef6b8d0:
    sh	$v0,-56($s8)
    lh	$v1,2($s0)
    slt	$a6,$t3,$v1
    beqz	$a6,.L5ef6b8f0
    dsll32	$s4,$v0,0x10
    move	$t2,$v1
    b	.L5ef6b8f4
    nop
.L5ef6b8f0:
    move	$t2,$t3
.L5ef6b8f4:
    sh	$t2,-54($s8)
    lh	$a7,-44($s8)
    lh	$t1,4($s0)
    slt	$t0,$t1,$a7
    beqz	$t0,.L5ef6b910
    move	$v1,$a7
    move	$v1,$t1
.L5ef6b910:
    sh	$v1,-52($s8)
    lh	$a7,-42($s8)
    lh	$ra,6($s0)
    dsra32	$s4,$s4,0x10
    slt	$a6,$s4,$v1
    slt	$at,$ra,$a7
    beqz	$at,.L5ef6b890
    move	$t1,$a7
    b	.L5ef6b890
    move	$t1,$ra
.L5ef6b938:
    move	$a3,$s2
    ld	$a4,-448($s8)
    subu	$a1,$s4,$t8
    subu	$ra,$v0,$t3
    ld	$t9,-520($s8)
    multu	$ra,$s2
    lw	$ra,nfbWindowPrivateIndex
    move	$a7,$t9
    lw	$t9,132($t9)
    andi	$a2,$a1,0x7
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    srl	$a1,$a1,0x3
    addu	$a1,$a1,$s3
    lw	$t9,0($t9)
    lw	$a6,76($a4)
    lbu	$a5,72($a4)
    lw	$t9,12($t9)
    lw	$a4,64($a4)
    mflo	$t0
    jalr	$t9
    addu	$a1,$a1,$t0
    b	.L5ef6b8ac
    addiu	$s0,$s0,8
.L5ef6b99c:
    b	.L5ef6a7bc
    ld	$a6,-504($s8)
.L5ef6b9a4:
    addu	$t3,$t3,$a3
    addiu	$t1,$t1,1
    subu	$s6,$s4,$t1
    addu	$s1,$t1,$s3
    subu	$t8,$t8,$t3
.L5ef6b9b8:
    addiu	$s0,$s0,16
    sh	$s6,-2($s0)
    sh	$s6,-6($s0)
    sh	$s1,-10($s0)
    sh	$s1,-14($s0)
    subu	$at,$a2,$t2
    subu	$t0,$v1,$t1
    subu	$a6,$v0,$t2
    addu	$a5,$t2,$v0
    sh	$a5,-4($s0)
    sh	$a6,-8($s0)
    sh	$a6,-12($s0)
    bltz	$t3,.L5ef6ba34
    sh	$a5,-16($s0)
    subu	$ra,$ra,$s5
    addu	$a6,$a2,$t2
    addiu	$t2,$t2,1
    addiu	$s0,$s0,16
    sh	$at,-10($s0)
    sh	$at,-14($s0)
    sh	$t0,-4($s0)
    sh	$t0,-16($s0)
    addu	$a5,$a7,$t1
    sh	$a6,-2($s0)
    sh	$a6,-6($s0)
    sh	$a5,-8($s0)
    bgez	$t8,.L5ef6b9a4
    sh	$a5,-12($s0)
    addu	$t8,$ra,$t8
    b	.L5ef6b9b8
    addu	$t3,$t3,$s5
.L5ef6ba34:
    slti	$t0,$t2,2
    bnez	$t0,.L5ef6ba64
    move	$t1,$s2
    lh	$a5,-4($s0)
    lh	$at,-20($s0)
    bne	$at,$a5,.L5ef6ba64
    nop
    lh	$t0,-2($s0)
    lh	$a6,-18($s0)
    bne	$a6,$t0,.L5ef6ba64
    nop
    addiu	$s0,$s0,-16
.L5ef6ba64:
    b	.L5ef6b12c
    lw	$t2,-132($s8)
.L5ef6ba6c:
    negu	$at,$a2
    sra	$at,$at,0x1
    addu	$t3,$at,$t3
    b	.L5ef6b888
    negu	$t3,$t3
.L5ef6ba80:
    subu	$t1,$t1,$t9
    addiu	$a7,$a2,-8
    addiu	$s2,$s7,1
    blez	$a3,.L5ef6c0a0
    sra	$s2,$s2,0x1
    addu	$s1,$s0,$s7
.L5ef6ba98:
    addu	$t8,$s2,$s6
    b	.L5ef6bac0
    addu	$ra,$a3,$s6
.L5ef6baa4:
    addiu	$v0,$v0,1
    addiu	$v1,$v1,1
    addu	$a7,$a7,$s3
    subu	$t1,$t1,$a7
.L5ef6bab4:
    slt	$at,$v0,$a3
    beqz	$at,.L5ef6bb34
    slt	$a6,$v1,$s2
.L5ef6bac0:
    bltz	$a7,.L5ef6bb18
    nop
.L5ef6bac8:
    subu	$t2,$t2,$t3
    subu	$at,$t8,$v1
    ld	$a6,-536($s8)
    addu	$a5,$s0,$v0
    addu	$t0,$ra,$v1
    sw	$t0,1916($a6)
    sw	$a5,1916($a6)
    sw	$at,1916($a6)
    sw	$a5,1916($a6)
    subu	$a5,$s1,$v0
    sw	$at,1916($a6)
    sw	$a5,1916($a6)
    sw	$t0,1916($a6)
    bgez	$t1,.L5ef6baa4
    sw	$a5,1916($a6)
    addu	$t1,$t2,$t1
    addu	$a7,$a7,$t3
    addu	$v0,$v0,$s4
    b	.L5ef6bab4
    addu	$v1,$v1,$s5
.L5ef6bb18:
    bne	$a3,$v0,.L5ef6bb78
    negu	$a5,$a7
    li	$t1,-1
    move	$t3,$zero
    move	$t2,$zero
    b	.L5ef6bac8
    move	$a7,$zero
.L5ef6bb34:
    bnez	$a6,.L5ef6bac0
.L5ef6bb38:
    subu	$t0,$s1,$v0
    subu	$a6,$t8,$v1
    addu	$a5,$s0,$v0
    ld	$at,-536($s8)
    sd	$a0,-648($s8)
    addu	$a0,$ra,$v1
    sw	$a0,1916($at)
    sw	$a5,1916($at)
    sw	$a6,1916($at)
    sw	$t0,1916($at)
    sw	$a6,1916($at)
    sw	$a5,1916($at)
    sw	$a0,1916($at)
    ld	$a0,-648($s8)
    b	.L5ef6a7b8
    sw	$t0,1916($at)
.L5ef6bb78:
    sll	$s4,$t3,0x1
    subu	$s4,$s4,$s3
    sra	$a5,$a5,0x1
    negu	$s3,$s3
    sra	$at,$s3,0x3
    addu	$t2,$t2,$a7
    subu	$t3,$s4,$t3
    sra	$a6,$t3,0x1
    subu	$t2,$t2,$a6
    addu	$a5,$a5,$t2
    subu	$t1,$a5,$t1
    bltz	$s4,.L5ef6bbc0
    addu	$t1,$t1,$at
    sra	$at,$s4,0x1
    subu	$a7,$at,$a7
.L5ef6bbb4:
    move	$s5,$zero
    b	.L5ef6bac8
    li	$s4,1
.L5ef6bbc0:
    negu	$t0,$s4
    sra	$t0,$t0,0x1
    addu	$a7,$t0,$a7
    b	.L5ef6bbb4
    negu	$a7,$a7
.L5ef6bbd4:
    ld	$s7,-416($s8)
    ld	$s5,-368($s8)
    ld	$s4,-336($s8)
    ld	$s6,-352($s8)
    ld	$ra,-360($s8)
    ld	$at,-472($s8)
    ld	$s3,-376($s8)
    beqz	$at,.L5ef6b4d0
    ld	$s1,-408($s8)
    ld	$a5,-536($s8)
    b	.L5ef6b4d0
    sw	$zero,1960($a5)
.L5ef6bc04:
    ld	$a6,-512($s8)
    li	$a3,32
    bnez	$a6,.L5ef6a994
    li	$at,1280
.L5ef6bc14:
    ld	$t0,-472($s8)
    ld	$a5,-536($s8)
    beqz	$t0,.L5ef6a9ac
    ld	$at,-472($s8)
    beql	$at,$a2,.L5ef6a9b0
    sd	$a2,-472($s8)
    b	.L5ef6a9ac
    sw	$zero,1960($a5)
.L5ef6bc34:
    addiu	$a7,$a7,-16
    addiu	$v0,$v0,1
    subu	$s2,$s1,$v0
    addu	$t3,$s0,$v0
    subu	$t1,$t1,$a7
.L5ef6bc48:
    ld	$a6,-536($s8)
    subu	$at,$ra,$v1
    addu	$t0,$ra,$v1
    sw	$t0,1916($a6)
    sw	$t3,1916($a6)
    sw	$at,1916($a6)
    sw	$t3,1916($a6)
    sw	$at,1916($a6)
    addu	$at,$s6,$v0
    sw	$s2,1916($a6)
    sw	$t0,1916($a6)
    subu	$t0,$s4,$v0
    bltz	$a7,.L5ef6bcc4
    sw	$s2,1916($a6)
    ld	$a6,-536($s8)
    addiu	$t2,$t2,8
    subu	$a5,$s3,$v1
    sw	$t0,1916($a6)
    sw	$a5,1916($a6)
    sw	$at,1916($a6)
    sw	$a5,1916($a6)
    addu	$a5,$s3,$v1
    addiu	$v1,$v1,1
    sw	$at,1916($a6)
    sw	$a5,1916($a6)
    sw	$t0,1916($a6)
    bgez	$t1,.L5ef6bc34
    sw	$a5,1916($a6)
    addu	$t1,$t2,$t1
    b	.L5ef6bc48
    addiu	$a7,$a7,-8
.L5ef6bcc4:
    ld	$a6,-536($s8)
    sw	$s4,1916($a6)
    sw	$s3,1916($a6)
    sw	$s6,1916($a6)
    b	.L5ef6a7b8
    sw	$s3,1916($a6)
.L5ef6bcdc:
    slt	$t0,$t2,$v1
    beqz	$t0,.L5ef6b130
    lw	$t0,-120($s8)
    b	.L5ef6aee8
    lw	$v0,-148($s8)
.L5ef6bcf0:
    bnez	$a0,.L5ef6b67c
    ld	$v1,-496($s8)
.L5ef6bcf8:
    b	.L5ef6b680
    li	$v0,1
.L5ef6bd00:
    slt	$at,$t2,$a1
    beqz	$at,.L5ef6afcc
    lw	$a5,-256($s8)
    b	.L5ef6b404
    lw	$a4,-252($s8)
.L5ef6bd14:
    ld	$a5,-512($s8)
    bnez	$a5,.L5ef6b330
    ld	$at,-536($s8)
    li	$a5,1
    sd	$a5,-512($s8)
    ld	$s2,-528($s8)
    sw	$zero,1212($at)
    b	.L5ef6b330
    lhu	$s2,4($s2)
.L5ef6bd38:
    li	$s2,1
    slt	$a6,$s0,$s2
    beqzl	$a6,.L5ef6bd48
    move	$s2,$s0
.L5ef6bd48:
    beqz	$v0,.L5ef6bfac
    andi	$v0,$s2,0x3
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-1592
    andi	$v1,$s2,0x3
    beqz	$v1,.L5ef6bd94
    move	$v0,$s2
.L5ef6bd6c:
    addiu	$s0,$s0,-1
    lhu	$a6,0($s1)
    lhu	$a5,2($s1)
    addiu	$s1,$s1,4
    sll	$a6,$a6,0x10
    or	$a5,$a5,$a6
    ld	$a6,-536($s8)
    addi	$v1,$v1,-1
    bnez	$v1,.L5ef6bd6c
    sw	$a5,1916($a6)
.L5ef6bd94:
    move	$v1,$s0
    sra	$a3,$v0,0x2
    beqz	$a3,.L5ef6be74
    move	$a1,$s1
    slti	$t0,$a3,2
    bnez	$t0,.L5ef6c11c
    move	$a0,$v1
    lhu	$at,2($a1)
    addiu	$v0,$v1,-4
    lhu	$a0,0($a1)
    ld	$v1,-536($s8)
    ld	$a6,-536($s8)
    sll	$a0,$a0,0x10
.L5ef6bdc8:
    or	$at,$at,$a0
    sw	$at,1916($v1)
    lhu	$at,4($a1)
    lhu	$a0,6($a1)
    sll	$at,$at,0x10
    or	$at,$a0,$at
    sw	$at,1916($v1)
    lhu	$at,8($a1)
    lhu	$a0,10($a1)
    sll	$at,$at,0x10
    or	$at,$a0,$at
    sw	$at,1916($v1)
    lhu	$at,12($a1)
    lhu	$a0,14($a1)
    addiu	$v0,$v0,-4
    sll	$at,$at,0x10
    or	$at,$a0,$at
    sw	$at,1916($v1)
    addiu	$a1,$a1,16
    lhu	$a0,0($a1)
    lhu	$at,2($a1)
    bnez	$v0,.L5ef6bdc8
    sll	$a0,$a0,0x10
    move	$t1,$a0
    move	$t0,$at
    or	$t0,$t0,$t1
    sw	$t0,1916($a6)
    move	$a5,$a1
    lhu	$t1,4($a5)
    lhu	$t0,6($a5)
    sll	$t1,$t1,0x10
    or	$t0,$t0,$t1
    sw	$t0,1916($a6)
    lhu	$t1,8($a5)
    lhu	$t0,10($a5)
    sll	$t1,$t1,0x10
    or	$t0,$t0,$t1
    sw	$t0,1916($a6)
    lhu	$t0,12($a5)
    lhu	$a5,14($a5)
    sll	$t0,$t0,0x10
    or	$a5,$a5,$t0
    sw	$a5,1916($a6)
.L5ef6be74:
    b	.L5ef6aad0
    nop
.L5ef6be7c:
    move	$a3,$s1
    blez	$s0,.L5ef6aad0
    srl	$a7,$v1,0x1f
    addu	$a7,$a7,$v1
    sra	$a7,$a7,0x1
    andi	$v0,$a7,0x3
    beqz	$v0,.L5ef6beb8
    move	$a4,$s0
.L5ef6be9c:
    addiu	$a3,$a3,4
    addiu	$a4,$a4,-2
    ld	$at,-536($s8)
    lw	$t0,-4($a3)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef6be9c
    sw	$t0,1916($at)
.L5ef6beb8:
    move	$v1,$a4
    sra	$a5,$a7,0x2
    beqz	$a5,.L5ef6bf34
    move	$v0,$a3
    addiu	$a6,$v1,-8
    blez	$a6,.L5ef6c0f0
    move	$a0,$v1
    lw	$at,0($v0)
    addiu	$a0,$v1,-8
    ld	$v1,-536($s8)
    ld	$t1,-536($s8)
.L5ef6bee4:
    sw	$at,1916($v1)
    lw	$at,4($v0)
    sw	$at,1916($v1)
    lw	$at,8($v0)
    sw	$at,1916($v1)
    lw	$at,12($v0)
    addiu	$v0,$v0,16
    addiu	$a0,$a0,-8
    sw	$at,1916($v1)
    bgtz	$a0,.L5ef6bee4
    lw	$at,0($v0)
    move	$a5,$at
    sw	$a5,1916($t1)
    move	$t0,$v0
    lw	$a6,4($t0)
    sw	$a6,1916($t1)
    lw	$a5,8($t0)
    sw	$a5,1916($t1)
    lw	$t0,12($t0)
    sw	$t0,1916($t1)
.L5ef6bf34:
    b	.L5ef6aad0
    nop
.L5ef6bf3c:
    ld	$t0,-536($s8)
    ld	$a6,-448($s8)
    sw	$t1,1324($t0)
    lw	$a6,52($a6)
    li	$v0,1
    move	$t1,$zero
    andi	$a6,$a6,0x3
    b	.L5ef6a6c8
    sw	$a6,1236($t0)
.L5ef6bf60:
    ld	$a5,-536($s8)
    ld	$at,-448($s8)
    li	$v0,4104
    sw	$v0,1324($a5)
    lw	$at,52($at)
    li	$v0,1
    andi	$at,$at,0xf
    b	.L5ef6a6c8
    sw	$at,1236($a5)
.L5ef6bf84:
    li	$t0,4107
    ld	$a6,-536($s8)
    ld	$a5,-448($s8)
    sw	$t0,1324($a6)
    lw	$a5,52($a5)
    li	$v0,9
    move	$t1,$zero
    andi	$a5,$a5,0xc
    b	.L5ef6a6c8
    sw	$a5,1236($a6)
.L5ef6bfac:
    beqz	$v0,.L5ef6bfd0
    move	$v1,$s2
.L5ef6bfb4:
    addiu	$s0,$s0,-1
    addiu	$s1,$s1,4
    ld	$a5,-536($s8)
    lw	$at,-4($s1)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef6bfb4
    sw	$at,1916($a5)
.L5ef6bfd0:
    move	$a3,$s0
    sra	$a4,$v1,0x2
    beqz	$a4,.L5ef6c04c
    move	$v0,$s1
    slti	$a6,$a4,2
    bnez	$a6,.L5ef6c178
    move	$a0,$a3
    lw	$at,0($v0)
    addiu	$a0,$a3,-4
    ld	$v1,-536($s8)
    ld	$t1,-536($s8)
.L5ef6bffc:
    sw	$at,1916($v1)
    lw	$at,4($v0)
    sw	$at,1916($v1)
    lw	$at,8($v0)
    sw	$at,1916($v1)
    lw	$at,12($v0)
    addiu	$a0,$a0,-4
    addiu	$v0,$v0,16
    sw	$at,1916($v1)
    bnez	$a0,.L5ef6bffc
    lw	$at,0($v0)
    move	$a5,$at
    sw	$a5,1916($t1)
    move	$t0,$v0
    lw	$a6,4($t0)
    sw	$a6,1916($t1)
    lw	$a5,8($t0)
    sw	$a5,1916($t1)
    lw	$t0,12($t0)
    sw	$t0,1916($t1)
.L5ef6c04c:
    b	.L5ef6aad0
    nop
.L5ef6c054:
    ld	$gp,-400($s8)
    ld	$s0,-344($s8)
    ld	$s1,-408($s8)
    ld	$s2,-384($s8)
    ld	$s3,-376($s8)
    ld	$s4,-336($s8)
    ld	$s5,-368($s8)
    ld	$s6,-352($s8)
    ld	$s7,-416($s8)
    ld	$ra,-360($s8)
    ld	$a6,-392($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.L5ef6c08c:
    slt	$t0,$t2,$v0
    beqz	$t0,.L5ef6b130
    lw	$t0,-120($s8)
    b	.L5ef6b6ac
    sd	$v0,-544($s8)
.L5ef6c0a0:
    slti	$at,$s2,2
    beqz	$at,.L5ef6ba98
    addu	$s1,$s0,$s7
    addu	$t8,$s2,$s6
    addu	$ra,$a3,$s6
    b	.L5ef6bb38
    addu	$s1,$s0,$s7
.L5ef6c0bc:
    move	$a0,$a1
    lhu	$a5,0($a0)
    lhu	$at,2($a0)
    ld	$a6,-536($s8)
    sll	$a5,$a5,0x10
    or	$at,$at,$a5
    sw	$at,1916($a6)
    lhu	$t0,4($a0)
    lhu	$a5,6($a0)
    sll	$t0,$t0,0x10
    or	$a5,$a5,$t0
    b	.L5ef6aad0
    sw	$a5,1916($a6)
.L5ef6c0f0:
    move	$a3,$v0
    ld	$t0,-536($s8)
    lw	$a6,0($a3)
    sw	$a6,1916($t0)
    lw	$a5,4($a3)
    sw	$a5,1916($t0)
    lw	$at,8($a3)
    sw	$at,1916($t0)
    lw	$a6,12($a3)
    b	.L5ef6bf34
    sw	$a6,1916($t0)
.L5ef6c11c:
    move	$v0,$a1
    lhu	$at,0($v0)
    lhu	$t0,2($v0)
    sll	$at,$at,0x10
    or	$t0,$t0,$at
    ld	$at,-536($s8)
    sw	$t0,1916($at)
    lhu	$a6,4($v0)
    lhu	$a5,6($v0)
    sll	$a6,$a6,0x10
    or	$a5,$a5,$a6
    sw	$a5,1916($at)
    lhu	$t0,8($v0)
    lhu	$a6,10($v0)
    sll	$t0,$t0,0x10
    or	$a6,$a6,$t0
    sw	$a6,1916($at)
    lhu	$a5,12($v0)
    lhu	$t0,14($v0)
    sll	$a5,$a5,0x10
    or	$t0,$t0,$a5
    b	.L5ef6be74
    sw	$t0,1916($at)
.L5ef6c178:
    move	$v1,$v0
    ld	$a6,-536($s8)
    lw	$a5,0($v1)
    sw	$a5,1916($a6)
    lw	$at,4($v1)
    sw	$at,1916($a6)
    lw	$t0,8($v1)
    sw	$t0,1916($a6)
    lw	$a5,12($v1)
    b	.L5ef6c04c
    sw	$a5,1916($a6)
.L5ef6c1a4:
    move	$v0,$a0
    ld	$a6,-536($s8)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    sw	$zero,1916($a6)
    b	.L5ef6ab8c
    sw	$zero,1916($a6)
.L5ef6c1c0:
    move	$v0,$t2
    move	$v1,$a4
.L5ef6c1c8:
    lhu	$at,4($v1)
    lhu	$t0,6($v1)
    lhu	$a5,16($v1)
    lhu	$a6,18($v1)
    addu	$at,$at,$t0
    slt	$t0,$v0,$at
    sltu	$t0,$zero,$t0
    beqzl	$t0,.L5ef6c1ec
    move	$at,$v0
.L5ef6c1ec:
    addu	$v0,$a5,$a6
    slt	$t0,$at,$v0
    sltu	$t0,$zero,$t0
    beqzl	$t0,.L5ef6c200
    move	$v0,$at
.L5ef6c200:
    addiu	$v1,$v1,24
    bne	$v1,$a7,.L5ef6c1c8
    move	$at,$v0
    b	.L5ef6adec
    sd	$v0,-456($s8)
.end expZeroPolyArc

.globl expPolyPoint
.ent expPolyPoint
expPolyPoint:
    move	$t3,$a3
    lui	$a5,0x4
    addiu	$sp,$sp,-272
    sd	$gp,32($sp)
    lui	$v0,0x16
    addiu	$v0,$v0,10764
    addu	$gp,$t9,$v0
    lw	$at,nfbGCPrivateIndex
    lw	$t0,76($a1)
    lw	$a7,0($a1)
    sll	$at,$at,0x2
    lw	$t9,expScreenPrivateIndex
    lw	$a7,436($a7)
    addu	$t0,$t0,$at
    sll	$t9,$t9,0x2
    addu	$a7,$a7,$t9
    lw	$a7,0($a7)
    lw	$t0,0($t0)
    beqz	$a3,.L5ef5c368
    lw	$a7,0($a7)
    lw	$a6,8($t0)
    lw	$a3,8($a6)
    li	$t2,1
    beqz	$a3,.L5ef5c118
    addiu	$t8,$a3,8
.L5ef5bc1c:
    lw	$a6,4($a3)
.L5ef5bc20:
    addu	$a5,$a7,$a5
    beq	$a6,$t2,.L5ef5bc4c
    lw	$at,nfbWindowPrivateIndex
    # lw $t9, -31944($gp)
    sd	$ra,160($sp)
    jal	nfbPolyPoint
    move	$a3,$t3
    ld	$ra,160($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef5bc4c:
    lw	$a6,132($a0)
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lw	$a6,0($a6)
    sd	$a5,40($sp)
    lw	$a6,20($a6)
    li	$v1,13
    ld	$at,40($sp)
    beq	$a6,$v1,.L5ef5c310
    move	$a1,$a6
    li	$v0,14
    beq	$a1,$v0,.L5ef5c374
    li	$v1,12
    beq	$a1,$v1,.L5ef5c344
    ori	$v0,$a6,0x1000
    sw	$v0,1324($at)
    sw	$zero,1236($at)
    lw	$a5,52($t0)
    lbu	$a3,21($t0)
    sd	$a5,24($sp)
    sll	$a3,$a3,0x3
.L5ef5bca0:
    lw	$v1,40($t0)
    ld	$v0,24($sp)
    lui	$a1,0xff
    ori	$a1,$a1,0xffff
    and	$v0,$v0,$a1
    ld	$a1,40($sp)
    sw	$v1,1328($a1)
    sw	$v0,1916($a1)
    lbu	$at,48($t0)
    lh	$a5,-20978($gp)
    li	$t9,10
    sw	$at,1916($a1)
    sw	$a3,1916($a1)
    sw	$t9,1312($a1)
    sd	$a5,0($sp)
    lh	$t1,0($t8)
    lh	$a6,-20980($gp)
    ld	$a5,40($sp)
    sw	$t1,1320($a1)
    sd	$a6,16($sp)
    lh	$a7,4($t8)
    move	$t0,$zero
    lh	$at,-20974($gp)
    addiu	$a7,$a7,-1
    sw	$a7,1916($a1)
    move	$a3,$zero
    lh	$v1,2($t8)
    addiu	$at,$at,-1
    lh	$t9,-20976($gp)
    sw	$v1,1916($a1)
    sd	$at,8($sp)
    lh	$v0,6($t8)
    addiu	$t9,$t9,-1
    slti	$v1,$t3,8
    addiu	$v0,$v0,-1
    sw	$v0,1916($a1)
    ld	$t8,40($sp)
    lh	$a7,10($a0)
    lh	$a6,8($a0)
    li	$a0,-2048
    move	$a1,$a7
    bnez	$v1,.L5ef5bd98
    move	$t1,$a6
    beq	$a2,$t2,.L5ef5c468
    sw	$zero,1412($a5)
    sd	$a3,48($sp)
    sd	$a4,56($sp)
    sd	$s8,208($sp)
    sd	$s2,200($sp)
    sd	$s5,192($sp)
    sd	$s6,184($sp)
    sd	$s3,176($sp)
    sd	$ra,160($sp)
    sd	$s1,168($sp)
    sd	$s7,152($sp)
    sd	$s0,144($sp)
    sd	$s4,136($sp)
    sd	$t9,128($sp)
    move	$t2,$zero
    move	$a1,$a4
    b	.L5ef5be78
    move	$t1,$t3
.L5ef5bd98:
    sw	$zero,1212($t8)
    beq	$a2,$t2,.L5ef5c3ac
    ld	$t8,16($sp)
    blez	$t3,.L5ef5bdf4
    li	$a0,-2048
    move	$a1,$a4
    sll	$t0,$t3,0x2
    andi	$at,$t3,0x1
    move	$t1,$t3
    beqz	$at,.L5ef5bde8
    addu	$t0,$t0,$a4
    lh	$a4,0($a1)
    lh	$a3,2($a1)
    addu	$a4,$a4,$a6
    addu	$a3,$a3,$a7
    or	$v0,$a4,$a3
    and	$v0,$v0,$a0
    beqz	$v0,.L5ef5c4c8
    ld	$at,40($sp)
.L5ef5bde4:
    addiu	$a1,$a1,4
.L5ef5bde8:
    sra	$a5,$t1,0x1
    bnezl	$a5,.L5ef5c2c0
    lh	$a3,2($a1)
.L5ef5bdf4:
    ld	$gp,32($sp)
.L5ef5bdf8:
    ld	$v0,40($sp)
    ld	$v1,0($sp)
    li	$at,1280
    sw	$at,1916($v0)
    ld	$at,8($sp)
    addiu	$sp,$sp,272
    li	$a0,10
    li	$a5,1024
    sw	$a5,1916($v0)
    sw	$zero,1960($v0)
    sw	$a0,1312($v0)
    sw	$t8,1320($v0)
    sw	$t9,1916($v0)
    sw	$v1,1916($v0)
    jr	$ra
    sw	$at,1916($v0)
.L5ef5be38:
    addiu	$t0,$t0,1
    ld	$v1,40($sp)
    sw	$a5,1916($v1)
    sw	$v0,1916($v1)
    and	$at,$s1,$a0
.L5ef5be4c:
    beqz	$at,.L5ef5c060
.L5ef5be50:
    and	$v0,$a3,$a0
    beqz	$v0,.L5ef5c07c
.L5ef5be58:
    ld	$a5,64($sp)
    and	$v1,$t8,$a0
    beqz	$v1,.L5ef5c094
    ld	$v0,96($sp)
.L5ef5be68:
    addiu	$t2,$t2,1
    slti	$a5,$t1,8
    bnez	$a5,.L5ef5c0a8
    ld	$t9,128($sp)
.L5ef5be78:
    addiu	$t1,$t1,-8
    lh	$a3,26($a1)
    lh	$t8,28($a1)
    ld	$a5,40($sp)
    addu	$a3,$a3,$a7
    addu	$t8,$t8,$a6
    sd	$t8,96($sp)
    lh	$s6,22($a1)
    sd	$a3,104($sp)
    lh	$s1,20($a1)
    addu	$s6,$s6,$a7
    sd	$s6,112($sp)
    lh	$v0,18($a1)
    addu	$s1,$s1,$a6
    sd	$s1,88($sp)
    or	$s1,$s1,$s6
    lh	$s6,24($a1)
    lh	$t9,16($a1)
    addu	$v0,$v0,$a7
    sd	$v0,80($sp)
    addu	$t9,$t9,$a6
    sd	$t9,72($sp)
    or	$t9,$t9,$v0
    or	$v0,$t9,$s1
    lh	$s0,6($a1)
    lh	$a2,4($a1)
    lh	$s7,0($a1)
    lh	$s8,2($a1)
    lh	$s5,12($a1)
    lh	$s4,10($a1)
    lh	$s3,8($a1)
    lh	$a4,14($a1)
    addu	$s4,$s4,$a7
    addu	$s3,$s3,$a6
    addu	$a4,$a4,$a7
    addu	$s5,$s5,$a6
    addu	$s8,$s8,$a7
    addu	$s7,$s7,$a6
    addu	$a2,$a2,$a6
    addu	$s0,$s0,$a7
    sd	$s0,120($sp)
    or	$s0,$a2,$s0
    or	$ra,$s7,$s8
    or	$t3,$s5,$a4
    or	$s2,$s3,$s4
    or	$v1,$s2,$t3
    or	$at,$ra,$s0
    or	$at,$at,$v1
    or	$at,$at,$v0
    lh	$v0,30($a1)
    addu	$s6,$s6,$a6
    or	$a3,$s6,$a3
    addu	$v0,$v0,$a7
    sd	$v0,64($sp)
    or	$t8,$t8,$v0
    or	$v0,$a3,$t8
    or	$at,$at,$v0
    and	$at,$at,$a0
    beqz	$at,.L5ef5bfa8
    addiu	$a1,$a1,32
    li	$v0,1
    and	$at,$ra,$a0
    beqz	$at,.L5ef5c00c
    sd	$v0,48($sp)
.L5ef5bf78:
    and	$v1,$s0,$a0
    beqz	$v1,.L5ef5c020
.L5ef5bf80:
    and	$a5,$s2,$a0
    beqz	$a5,.L5ef5c038
.L5ef5bf88:
    and	$at,$t3,$a0
    beqz	$at,.L5ef5c04c
.L5ef5bf90:
    and	$v0,$t9,$a0
    bnez	$v0,.L5ef5be4c
    and	$at,$s1,$a0
    ld	$v0,80($sp)
    b	.L5ef5be38
    ld	$a5,72($sp)
.L5ef5bfa8:
    ld	$v1,72($sp)
    ld	$v0,80($sp)
    ld	$at,120($sp)
    sw	$s7,1916($a5)
    sw	$s8,1916($a5)
    sw	$a2,1916($a5)
    sw	$at,1916($a5)
    ld	$at,88($sp)
    sw	$s3,1916($a5)
    sw	$s4,1916($a5)
    sw	$s5,1916($a5)
    sw	$a4,1916($a5)
    sw	$v1,1916($a5)
    sw	$v0,1916($a5)
    ld	$v0,104($sp)
    ld	$v1,112($sp)
    sw	$at,1916($a5)
    ld	$at,96($sp)
    sw	$v1,1916($a5)
    ld	$v1,64($sp)
    sw	$s6,1916($a5)
    sw	$v0,1916($a5)
    sw	$at,1916($a5)
    b	.L5ef5be68
    sw	$v1,1916($a5)
.L5ef5c00c:
    ld	$v0,40($sp)
    addiu	$t0,$t0,1
    sw	$s7,1916($v0)
    b	.L5ef5bf78
    sw	$s8,1916($v0)
.L5ef5c020:
    ld	$a5,40($sp)
    addiu	$t0,$t0,1
    ld	$v1,120($sp)
    sw	$a2,1916($a5)
    b	.L5ef5bf80
    sw	$v1,1916($a5)
.L5ef5c038:
    ld	$at,40($sp)
    addiu	$t0,$t0,1
    sw	$s3,1916($at)
    b	.L5ef5bf88
    sw	$s4,1916($at)
.L5ef5c04c:
    ld	$v0,40($sp)
    addiu	$t0,$t0,1
    sw	$s5,1916($v0)
    b	.L5ef5bf90
    sw	$a4,1916($v0)
.L5ef5c060:
    ld	$v1,112($sp)
    ld	$a5,40($sp)
    ld	$at,88($sp)
    addiu	$t0,$t0,1
    sw	$at,1916($a5)
    b	.L5ef5be50
    sw	$v1,1916($a5)
.L5ef5c07c:
    ld	$v1,40($sp)
    addiu	$t0,$t0,1
    ld	$v0,104($sp)
    sw	$s6,1916($v1)
    b	.L5ef5be58
    sw	$v0,1916($v1)
.L5ef5c094:
    ld	$at,40($sp)
    addiu	$t0,$t0,1
    sw	$v0,1916($at)
    b	.L5ef5be68
    sw	$a5,1916($at)
.L5ef5c0a8:
    ld	$s4,136($sp)
    ld	$s0,144($sp)
    ld	$s7,152($sp)
    ld	$s1,168($sp)
    ld	$ra,160($sp)
    ld	$s3,176($sp)
    ld	$s6,184($sp)
    ld	$s5,192($sp)
    ld	$s2,200($sp)
    ld	$s8,208($sp)
    sll	$a1,$t2,0x3
    blez	$t1,.L5ef5c168
    sll	$a1,$a1,0x2
    addiu	$a3,$t1,-1
    ld	$t9,128($sp)
    ld	$s4,136($sp)
    ld	$s0,144($sp)
    ld	$s7,152($sp)
    ld	$s1,168($sp)
    ld	$ra,160($sp)
    ld	$s3,176($sp)
    ld	$s6,184($sp)
    ld	$s5,192($sp)
    ld	$s2,200($sp)
    ld	$a5,56($sp)
    ld	$s8,208($sp)
    b	.L5ef5c138
    addu	$a1,$a1,$a5
.L5ef5c118:
    bnez	$a3,.L5ef5bc1c
    move	$t8,$a6
    b	.L5ef5bc20
    li	$a6,1
.L5ef5c128:
    ld	$a5,40($sp)
    sw	$a4,1916($a5)
    sw	$t1,1916($a5)
.L5ef5c134:
    bnez	$at,.L5ef5c168
.L5ef5c138:
    addiu	$a1,$a1,4
    lh	$t1,-2($a1)
    lh	$a4,-4($a1)
    addiu	$a3,$a3,-1
    addu	$t1,$t1,$a7
    addu	$a4,$a4,$a6
    or	$v0,$a4,$t1
    and	$v0,$v0,$a0
    bnez	$v0,.L5ef5c134
    slti	$at,$a3,0
    b	.L5ef5c128
    addiu	$t0,$t0,1
.L5ef5c168:
    beqz	$t0,.L5ef5c398
    andi	$a7,$t0,0x7
.L5ef5c170:
    beqz	$a7,.L5ef5c274
.L5ef5c174:
    slti	$a5,$a7,8
    beqz	$a5,.L5ef5c274
    move	$a4,$zero
    li	$t2,1024
    li	$t1,1280
    li	$a3,8
    subu	$a3,$a3,$a7
    andi	$a6,$a3,0x3
    beqz	$a6,.L5ef5c1b4
    move	$a0,$a3
.L5ef5c19c:
    ld	$a5,40($sp)
    addiu	$a4,$a4,1
    addi	$a6,$a6,-1
    sw	$t1,1916($a5)
    bnez	$a6,.L5ef5c19c
    sw	$t2,1916($a5)
.L5ef5c1b4:
    sra	$a1,$a0,0x2
    beqz	$a1,.L5ef5c274
    move	$t3,$a4
    slti	$at,$a1,2
    bnez	$at,.L5ef5c560
    addiu	$at,$a3,-8
    addiu	$v1,$a3,-4
    addiu	$v0,$t3,4
    ld	$a2,40($sp)
    move	$a0,$t2
    move	$a1,$t1
    sw	$t1,1916($a2)
    sw	$t2,1916($a2)
.L5ef5c1e8:
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$v1,.L5ef5c33c
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    beq	$v0,$at,.L5ef5c334
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    sw	$a0,1916($a2)
    sw	$a1,1916($a2)
    addiu	$v0,$v0,12
    bne	$v0,$a3,.L5ef5c1e8
    sw	$a0,1916($a2)
    ld	$v0,40($sp)
.L5ef5c25c:
    sw	$t1,1916($v0)
    sw	$t2,1916($v0)
    sw	$t1,1916($v0)
    sw	$t2,1916($v0)
    sw	$t1,1916($v0)
    sw	$t2,1916($v0)
.L5ef5c274:
    ld	$gp,32($sp)
    ld	$v1,8($sp)
    ld	$a5,0($sp)
    ld	$at,16($sp)
    ld	$a0,40($sp)
    addiu	$sp,$sp,272
    li	$v0,10
    sw	$zero,1960($a0)
    sw	$v0,1312($a0)
    sw	$at,1320($a0)
    sw	$t9,1916($a0)
    sw	$a5,1916($a0)
    jr	$ra
    sw	$v1,1916($a0)
.L5ef5c2ac:
    sw	$a4,1916($v1)
    sw	$a3,1916($v1)
.L5ef5c2b4:
    beq	$a1,$t0,.L5ef5bdf4
    nop
    lh	$a3,2($a1)
.L5ef5c2c0:
    lh	$a4,0($a1)
    addu	$a3,$a3,$a7
    addu	$a4,$a4,$a6
    or	$a5,$a4,$a3
    and	$a5,$a5,$a0
    beqz	$a5,.L5ef5c304
    ld	$a5,40($sp)
.L5ef5c2dc:
    lh	$a3,6($a1)
    lh	$a4,4($a1)
    addu	$a3,$a3,$a7
    addu	$a4,$a4,$a6
    or	$a5,$a4,$a3
    and	$a5,$a5,$a0
    bnez	$a5,.L5ef5c2b4
    addiu	$a1,$a1,8
    b	.L5ef5c2ac
    ld	$v1,40($sp)
.L5ef5c304:
    sw	$a4,1916($a5)
    b	.L5ef5c2dc
    sw	$a3,1916($a5)
.L5ef5c310:
    ld	$v0,40($sp)
    li	$v1,4107
    sw	$v1,1324($v0)
    lw	$at,52($t0)
    li	$a3,1
    sd	$zero,24($sp)
    andi	$at,$at,0x3
    b	.L5ef5bca0
    sw	$at,1236($v0)
.L5ef5c334:
    b	.L5ef5c25c
    ld	$v0,40($sp)
.L5ef5c33c:
    b	.L5ef5c25c
    ld	$v0,40($sp)
.L5ef5c344:
    ld	$at,40($sp)
    li	$v0,4104
    sw	$v0,1324($at)
    lw	$a5,52($t0)
    li	$a3,1
    sd	$zero,24($sp)
    andi	$a5,$a5,0xf
    b	.L5ef5bca0
    sw	$a5,1236($at)
.L5ef5c368:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L5ef5c374:
    ld	$a5,40($sp)
    li	$a3,4107
    sw	$a3,1324($a5)
    lw	$v1,52($t0)
    sd	$zero,24($sp)
    li	$a3,9
    andi	$v1,$v1,0xc
    b	.L5ef5bca0
    sw	$v1,1236($a5)
.L5ef5c398:
    ld	$a5,48($sp)
    beqz	$a5,.L5ef5c170
    nop
    b	.L5ef5c174
    andi	$a7,$t0,0x7
.L5ef5c3ac:
    blez	$t3,.L5ef5bdf4
    li	$a0,-2048
    move	$a6,$a4
    sll	$a3,$t3,0x2
    move	$a7,$t3
    andi	$a5,$t3,0x1
    beqz	$a5,.L5ef5c3f0
    addu	$a3,$a3,$a4
    lh	$v1,0($a6)
    lh	$v0,2($a6)
    addu	$t1,$v1,$t1
    addu	$a1,$v0,$a1
    or	$at,$t1,$a1
    and	$at,$at,$a0
    beqz	$at,.L5ef5c544
    ld	$v0,40($sp)
.L5ef5c3ec:
    addiu	$a6,$a6,4
.L5ef5c3f0:
    sra	$a5,$a7,0x1
    bnezl	$a5,.L5ef5c410
    lh	$v0,2($a6)
.L5ef5c3fc:
    b	.L5ef5bdf8
    ld	$gp,32($sp)
.L5ef5c404:
    beq	$a6,$a3,.L5ef5c3fc
    nop
    lh	$v0,2($a6)
.L5ef5c410:
    lh	$v1,0($a6)
    addu	$a1,$v0,$a1
    addu	$t1,$v1,$t1
    or	$at,$t1,$a1
    and	$at,$at,$a0
    beqz	$at,.L5ef5c45c
    ld	$a5,40($sp)
.L5ef5c42c:
    lh	$at,6($a6)
    lh	$v0,4($a6)
    ld	$v1,40($sp)
    addu	$a1,$at,$a1
    addu	$t1,$v0,$t1
    or	$a5,$t1,$a1
    and	$a5,$a5,$a0
    bnez	$a5,.L5ef5c404
    addiu	$a6,$a6,8
    sw	$t1,1916($v1)
    b	.L5ef5c404
    sw	$a1,1916($v1)
.L5ef5c45c:
    sw	$t1,1916($a5)
    b	.L5ef5c42c
    sw	$a1,1916($a5)
.L5ef5c468:
    li	$at,1
    blez	$t3,.L5ef5c168
    sd	$at,48($sp)
    li	$a0,-2048
    move	$a6,$a4
    sll	$a3,$t3,0x2
    move	$a7,$t3
    andi	$a5,$t3,0x1
    beqz	$a5,.L5ef5c4b4
    addu	$a3,$a3,$a4
    lh	$v1,0($a6)
    lh	$v0,2($a6)
    addu	$t1,$v1,$t1
    addu	$a1,$v0,$a1
    or	$at,$t1,$a1
    and	$at,$at,$a0
    beqz	$at,.L5ef5c550
    ld	$v1,40($sp)
.L5ef5c4b0:
    addiu	$a6,$a6,4
.L5ef5c4b4:
    sra	$a5,$a7,0x1
    bnezl	$a5,.L5ef5c508
    lh	$v1,2($a6)
.L5ef5c4c0:
    b	.L5ef5c168
    nop
.L5ef5c4c8:
    sw	$a4,1916($at)
    b	.L5ef5bde4
    sw	$a3,1916($at)
.L5ef5c4d4:
    sw	$t1,1916($v0)
    sw	$a1,1916($v0)
    lh	$at,4($a6)
.L5ef5c4e0:
    lh	$a5,6($a6)
    addu	$t1,$at,$t1
    addu	$a1,$a5,$a1
    or	$v1,$t1,$a1
    and	$v1,$v1,$a0
    beqz	$v1,.L5ef5c530
    addiu	$a6,$a6,8
.L5ef5c4fc:
    beq	$a6,$a3,.L5ef5c4c0
    nop
    lh	$v1,2($a6)
.L5ef5c508:
    lh	$a5,0($a6)
    addu	$a1,$v1,$a1
    addu	$t1,$a5,$t1
    or	$v0,$t1,$a1
    and	$v0,$v0,$a0
    bnezl	$v0,.L5ef5c4e0
    lh	$at,4($a6)
    addiu	$t0,$t0,1
    b	.L5ef5c4d4
    ld	$v0,40($sp)
.L5ef5c530:
    ld	$at,40($sp)
    addiu	$t0,$t0,1
    sw	$t1,1916($at)
    b	.L5ef5c4fc
    sw	$a1,1916($at)
.L5ef5c544:
    sw	$t1,1916($v0)
    b	.L5ef5c3ec
    sw	$a1,1916($v0)
.L5ef5c550:
    addiu	$t0,$t0,1
    sw	$t1,1916($v1)
    b	.L5ef5c4b0
    sw	$a1,1916($v1)
.L5ef5c560:
    move	$a0,$t3
    ld	$a5,40($sp)
    sw	$t1,1916($a5)
    sw	$t2,1916($a5)
    sw	$t1,1916($a5)
    sw	$t2,1916($a5)
    sw	$t1,1916($a5)
    sw	$t2,1916($a5)
    sw	$t1,1916($a5)
    b	.L5ef5c274
    sw	$t2,1916($a5)
.end expPolyPoint

.globl expDrawPoints
.ent expDrawPoints
expDrawPoints:
    lw	$t3,16($a7)
    lui	$v0,0x17
    addiu	$v0,$v0,4920
    addu	$at,$t9,$v0
    lw	$v0,expScreenPrivateIndex
    lw	$t3,436($t3)
    la	$t8,dbcWindowPrivateIndex
    sll	$v0,$v0,0x2
    addu	$t3,$t3,$v0
    li	$v0,13
    lw	$t8,0($t8)
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    lw	$s1,nfbWindowPrivateIndex
    lw	$t9,132($a7)
    sll	$t8,$t8,0x2
    sll	$s1,$s1,0x2
    addu	$s1,$t9,$s1
    lw	$s1,0($s1)
    addu	$t8,$t8,$t9
    lw	$t3,0($t3)
    lw	$s1,20($s1)
    lui	$t9,0x4
    lw	$t3,0($t3)
    move	$v1,$s1
    beq	$s1,$v0,.L5ef4d424
    addu	$t3,$t3,$t9
    li	$a7,14
    beq	$v1,$a7,.L5ef4d460
    andi	$t1,$a4,0xc
    li	$t0,12
    beq	$v1,$t0,.L5ef4d444
    andi	$a7,$a4,0xf
    ori	$a7,$s1,0x1000
    sw	$a7,1324($t3)
    sw	$zero,1236($t3)
    lb	$v1,1($t8)
    move	$t2,$a4
    ld	$s1,0($sp)
    sll	$v1,$v1,0x3
.L5ef4d32c:
    sw	$a2,1328($t3)
    move	$a2,$a1
    andi	$a7,$a1,0x1
    lui	$t0,0xff
    ori	$t0,$t0,0xffff
    and	$t0,$t2,$t0
    sw	$t0,1916($t3)
    sw	$a3,1916($t3)
    sw	$v1,1916($t3)
    beqz	$a1,.L5ef4d418
    sw	$zero,1212($t3)
    move	$v1,$a0
    sll	$a3,$a1,0x2
    beqz	$a7,.L5ef4d384
    addu	$a3,$a3,$a0
    lh	$t1,0($v1)
    addu	$t1,$t1,$a5
    sw	$t1,1916($t3)
    lh	$t0,2($v1)
    addiu	$v1,$v1,4
    addu	$t0,$t0,$a6
    sw	$t0,1916($t3)
.L5ef4d384:
    sra	$a1,$a2,0x1
    move	$a2,$a5
    beqz	$a1,.L5ef4d418
    move	$a0,$v1
    slti	$v0,$a1,2
    bnez	$v0,.L5ef4d47c
    move	$v1,$a6
    move	$a1,$t3
    addiu	$a3,$a3,-8
    lh	$v0,0($a0)
.L5ef4d3ac:
    addu	$v0,$v0,$a2
    sw	$v0,1916($a1)
    lh	$v0,2($a0)
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    lh	$v0,4($a0)
    addu	$v0,$v0,$a2
    sw	$v0,1916($a1)
    lh	$v0,6($a0)
    addiu	$a0,$a0,8
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    bne	$a0,$a3,.L5ef4d3ac
    lh	$v0,0($a0)
    move	$t2,$v0
    addu	$t2,$t2,$a5
    sw	$t2,1916($t3)
    move	$a7,$a0
    lh	$t1,2($a7)
    addu	$t1,$t1,$a6
    sw	$t1,1916($t3)
    lh	$t0,4($a7)
    addu	$t0,$t0,$a5
    sw	$t0,1916($t3)
    lh	$a7,6($a7)
    addu	$a7,$a7,$a6
    sw	$a7,1916($t3)
.L5ef4d418:
    sw	$zero,1960($t3)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef4d424:
    move	$t2,$zero
    li	$v1,1
    andi	$s1,$a4,0x3
    li	$v0,4107
    sw	$v0,1324($t3)
    sw	$s1,1236($t3)
    b	.L5ef4d32c
    ld	$s1,0($sp)
.L5ef4d444:
    move	$t2,$zero
    li	$v1,1
    ld	$s1,0($sp)
    li	$t0,4104
    sw	$t0,1324($t3)
    b	.L5ef4d32c
    sw	$a7,1236($t3)
.L5ef4d460:
    move	$t2,$zero
    li	$v1,9
    li	$s1,4107
    sw	$s1,1324($t3)
    ld	$s1,0($sp)
    b	.L5ef4d32c
    sw	$t1,1236($t3)
.L5ef4d47c:
    move	$v1,$a0
    lh	$t1,0($v1)
    addu	$t1,$t1,$a5
    sw	$t1,1916($t3)
    lh	$t0,2($v1)
    addu	$t0,$t0,$a6
    sw	$t0,1916($t3)
    lh	$a7,4($v1)
    addu	$a7,$a7,$a5
    sw	$a7,1916($t3)
    lh	$v0,6($v1)
    addu	$v0,$v0,$a6
    b	.L5ef4d418
    sw	$v0,1916($t3)
.end expDrawPoints

