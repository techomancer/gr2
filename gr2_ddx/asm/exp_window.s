#
# gr2_ddx: exp_window.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl expCopyRect
.ent expCopyRect
expCopyRect:
    lh	$t2,0($a0)
    lh	$a7,4($a0)
    li	$at,4
    li	$v0,8
    subu	$a7,$a7,$t2
    lw	$t2,132($a4)
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$t3,0x17
    addiu	$t3,$t3,-15548
    lh	$t1,2($a0)
    lh	$t0,6($a0)
    addu	$gp,$t9,$t3
    la	$t3,dbcWindowPrivateIndex
    subu	$t0,$t0,$t1
    lw	$t1,16($a4)
    lw	$t3,0($t3)
    lw	$t9,expScreenPrivateIndex
    lw	$t1,436($t1)
    sll	$t3,$t3,0x2
    sll	$t9,$t9,0x2
    addu	$t1,$t1,$t9
    lw	$t1,0($t1)
    addu	$t3,$t3,$t2
    beqz	$t0,.L5ef52498
    lw	$t1,0($t1)
    beqzl	$a7,.L5ef5249c
    ld	$gp,0($sp)
    lbu	$a6,2($a4)
    li	$t9,2
    beql	$a6,$t9,.L5ef52354
    li	$v0,12
    beql	$a6,$at,.L5ef52354
    li	$v0,12
    beq	$a6,$v0,.L5ef52350
    li	$at,14
    li	$t9,12
    lui	$a5,0xff
    beq	$a6,$t9,.L5ef524e8
    li	$v1,24
    beq	$a6,$v1,.L5ef52428
    lw	$t8,nfbWindowPrivateIndex
    lbu	$a1,3($a4)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,8($sp)
    jal	ErrorF
    addiu	$a0,$a0,-3304
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef52350:
    li	$v0,12
.L5ef52354:
    lw	$t8,nfbWindowPrivateIndex
    li	$a5,13
    sll	$t8,$t8,0x2
    addu	$t8,$t2,$t8
    lw	$t8,0($t8)
    lui	$a4,0x4
    addu	$a4,$t1,$a4
    lw	$t8,20($t8)
    li	$t1,1
    move	$t2,$zero
    beq	$t8,$a5,.L5ef524a4
    move	$a6,$t8
    li	$at,14
    beq	$a6,$at,.L5ef524cc
    move	$t2,$zero
    beq	$a6,$v0,.L5ef524b8
    li	$t1,1
    ori	$t2,$t8,0x1000
    sw	$t2,1324($a4)
    sw	$zero,1236($a4)
    lb	$t1,0($t3)
    move	$t2,$a3
    sll	$t1,$t1,0x3
.L5ef523b0:
    addiu	$a6,$a7,3
    sra	$a6,$a6,0x2
    sw	$zero,1328($a4)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$t2,$at
    sw	$at,1916($a4)
    sw	$a2,1916($a4)
    sw	$t1,1916($a4)
    sw	$t9,1348($a4)
    sw	$zero,1916($a4)
.L5ef523dc:
    li	$v0,4864
    div	$zero,$v0,$a6
    sw	$a6,1360($a4)
    mflo	$at
    sw	$at,1916($a4)
    lh	$a5,0($a1)
    sw	$a5,1916($a4)
    lh	$v1,2($a1)
    sw	$v1,1916($a4)
    sw	$a7,1916($a4)
    sw	$t0,1916($a4)
    lh	$v0,0($a0)
    teq	$a6,$zero,0x7
    sw	$v0,1916($a4)
    ld	$gp,0($sp)
    lh	$at,2($a0)
    addiu	$sp,$sp,64
    jr	$ra
    sw	$at,1916($a4)
.L5ef52428:
    sll	$t8,$t8,0x2
    addu	$t8,$t2,$t8
    lw	$t8,0($t8)
    li	$a5,13
    lui	$a4,0x4
    lw	$t8,20($t8)
    addu	$a4,$t1,$a4
    move	$t1,$zero
    beq	$t8,$a5,.L5ef52534
    move	$a6,$t8
    beql	$a6,$at,.L5ef5256c
    li	$t1,9
    beq	$t9,$a6,.L5ef52550
    ori	$v0,$t8,0x1000
    move	$t2,$a3
    sw	$v0,1324($a4)
    sw	$zero,1236($a4)
.L5ef5246c:
    move	$a6,$a7
    sw	$zero,1328($a4)
    lui	$v1,0xff
    ori	$v1,$v1,0xffff
    and	$v1,$t2,$v1
    sw	$v1,1916($a4)
    sw	$a2,1916($a4)
    sw	$t1,1916($a4)
    sw	$zero,1348($a4)
    b	.L5ef523dc
    sw	$zero,1916($a4)
.L5ef52498:
    ld	$gp,0($sp)
.L5ef5249c:
    jr	$ra
    addiu	$sp,$sp,64
.L5ef524a4:
    li	$at,4107
    sw	$at,1324($a4)
    andi	$a5,$a3,0x3
    b	.L5ef523b0
    sw	$a5,1236($a4)
.L5ef524b8:
    li	$v1,4104
    sw	$v1,1324($a4)
    andi	$v0,$a3,0xf
    b	.L5ef523b0
    sw	$v0,1236($a4)
.L5ef524cc:
    andi	$a5,$a3,0xc
    li	$t1,9
    move	$t2,$zero
    li	$at,4107
    sw	$at,1324($a4)
    b	.L5ef523b0
    sw	$a5,1236($a4)
.L5ef524e8:
    ori	$a5,$a5,0xffff
    addiu	$a6,$a7,1
    sra	$a6,$a6,0x1
    li	$v0,1
    li	$at,4106
    lui	$a4,0x4
    addu	$a4,$t1,$a4
    sw	$at,1324($a4)
    sw	$zero,1236($a4)
    and	$a5,$a3,$a5
    lb	$v1,0($t3)
    sw	$zero,1328($a4)
    sw	$a5,1916($a4)
    sw	$a2,1916($a4)
    sll	$v1,$v1,0x3
    sw	$v1,1916($a4)
    sw	$v0,1348($a4)
    b	.L5ef523dc
    sw	$zero,1916($a4)
.L5ef52534:
    li	$t1,1
    move	$t2,$zero
    andi	$a5,$a3,0x3
    li	$at,4107
    sw	$at,1324($a4)
    b	.L5ef5246c
    sw	$a5,1236($a4)
.L5ef52550:
    li	$t1,1
    move	$t2,$zero
    andi	$v0,$a3,0xf
    li	$v1,4104
    sw	$v1,1324($a4)
    b	.L5ef5246c
    sw	$v0,1236($a4)
.L5ef5256c:
    move	$t2,$zero
    andi	$a5,$a3,0xc
    li	$at,4107
    sw	$at,1324($a4)
    b	.L5ef5246c
    sw	$a5,1236($a4)
.end expCopyRect

.globl expCopyWindow
.ent expCopyWindow
expCopyWindow:
    move	$v0,$s8
    addiu	$sp,$sp,-288
    addiu	$s8,$sp,288
    sd	$v0,-144($s8)
    sd	$s6,-224($s8)
    sd	$s7,-240($s8)
    sd	$a2,-200($s8)
    li	$a2,1
    sd	$ra,-136($s8)
    dsra32	$ra,$a1,0x0
    move	$a1,$zero
    sd	$s0,-152($s8)
    move	$s0,$zero
    sd	$a0,-192($s8)
    addiu	$at,$s8,-56
    sd	$s1,-176($s8)
    move	$s1,$a0
    move	$a0,$at
    sw	$ra,-24($s8)
    lui	$t8,0x18
    addiu	$t8,$t8,-8256
    sd	$gp,-168($s8)
    addu	$gp,$t9,$t8
    sd	$s5,-160($s8)
    lw	$s5,16($s1)
    lw	$t8,nfbWindowPrivateIndex
    lw	$s1,132($s1)
    lw	$t9,340($s5)
    sll	$t8,$t8,0x2
    addu	$s1,$s1,$t8
    jalr	$t9
    lw	$s1,0($s1)
    ld	$at,-192($s8)
    lh	$s7,-24($s8)
    lh	$s6,-22($s8)
    lh	$a5,10($at)
    lw	$a4,28($s1)
    lh	$at,8($at)
    subu	$s6,$s6,$a5
    beqz	$a4,.L5ef41370
    subu	$s7,$s7,$at
    lw	$a3,116($s5)
    sd	$s1,-264($s8)
    sd	$s3,-248($s8)
    lw	$a3,40($a3)
    sd	$s4,-232($s8)
    sd	$s2,-256($s8)
    beqz	$a3,.L5ef4072c
    move	$s2,$zero
    negu	$s4,$s6
    negu	$s3,$s7
    b	.L5ef40700
    ld	$s1,-200($s8)
.L5ef406d8:
    lw	$t9,376($s5)
.L5ef406dc:
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
    lw	$a3,116($s5)
    lw	$a3,40($a3)
    sltu	$a4,$s2,$a3
.L5ef406f8:
    beqz	$a4,.L5ef40720
    addiu	$s1,$s1,12
.L5ef40700:
    lw	$v1,8($s1)
    beqz	$v1,.L5ef406d8
    addiu	$s2,$s2,1
    lw	$a5,4($v1)
    beqz	$a5,.L5ef406f8
    sltu	$a4,$s2,$a3
    b	.L5ef406dc
    lw	$t9,376($s5)
.L5ef40720:
    ld	$s4,-232($s8)
    ld	$s3,-248($s8)
    ld	$s1,-264($s8)
.L5ef4072c:
    lw	$v1,24($s1)
    li	$a6,3
    bne	$v1,$a6,.L5ef4077c
    ld	$s2,-256($s8)
    ld	$v0,-200($s8)
    lw	$v0,20($v0)
    beqzl	$v0,.L5ef4075c
    sd	$s4,-232($s8)
    lw	$a4,4($v0)
    beqz	$a4,.L5ef40764
    ld	$v0,-200($s8)
    sd	$s4,-232($s8)
.L5ef4075c:
    b	.L5ef407a8
    li	$s0,1
.L5ef40764:
    lw	$v0,32($v0)
    beqzl	$v0,.L5ef4075c
    sd	$s4,-232($s8)
    lw	$a4,4($v0)
    bnezl	$a4,.L5ef4075c
    sd	$s4,-232($s8)
.L5ef4077c:
    addiu	$a0,$s8,-56
    ld	$a3,-200($s8)
    lw	$t9,356($s5)
    ld	$a1,-192($s8)
    sll	$a2,$v1,0x2
    subu	$a2,$a2,$v1
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,56
    jalr	$t9
    addu	$a2,$a2,$a3
    sd	$s4,-232($s8)
.L5ef407a8:
    beqz	$s0,.L5ef410fc
    li	$s4,-16
    ld	$v0,-200($s8)
    lw	$v0,20($v0)
    beqz	$v0,.L5ef407cc
    addiu	$a0,$s8,-56
    lw	$a4,4($v0)
    beqz	$a4,.L5ef412a4
    addiu	$a0,$s8,-56
.L5ef407cc:
    ld	$a2,-200($s8)
    lw	$t9,356($s5)
    lw	$a1,44($s1)
    addiu	$a2,$a2,12
    jalr	$t9
    addiu	$a1,$a1,12
.L5ef407e4:
    lw	$v0,-48($s8)
    beqz	$v0,.L5ef40ff4
    nop
    beqz	$v0,.L5ef40ffc
    addiu	$t1,$v0,8
.L5ef407f8:
    lw	$v1,4($v0)
.L5ef407fc:
    move	$t2,$v1
    andi	$a7,$v1,0x3
    sll	$a4,$v1,0x2
    addiu	$a4,$a4,15
    and	$a4,$a4,$s4
    subu	$sp,$sp,$a4
    beqz	$sp,.L5ef412f4
    move	$t0,$sp
    blez	$v1,.L5ef40960
    move	$a3,$t0
    move	$v0,$t1
    sll	$t3,$v1,0x3
    beqz	$a7,.L5ef4085c
    addu	$t3,$t1,$t3
.L5ef40834:
    lh	$a4,0($v0)
    addu	$a4,$a4,$s7
    sh	$a4,0($a3)
    addiu	$v0,$v0,8
    lh	$at,-6($v0)
    addiu	$a3,$a3,4
    addi	$a7,$a7,-1
    addu	$at,$at,$s6
    bnez	$a7,.L5ef40834
    sh	$at,-2($a3)
.L5ef4085c:
    move	$a1,$a3
    sra	$a7,$t2,0x2
    beqz	$a7,.L5ef4095c
    move	$v1,$v0
    slti	$a5,$a7,2
    bnez	$a5,.L5ef413f0
    move	$a3,$a1
    lh	$at,0($v1)
    addiu	$a2,$t3,-32
    move	$v0,$s6
    move	$a0,$s7
.L5ef40888:
    addiu	$a1,$a1,16
    addu	$at,$at,$a0
    sh	$at,-16($a1)
    lh	$at,2($v1)
    addu	$at,$at,$v0
    sh	$at,-14($a1)
    lh	$at,8($v1)
    addu	$at,$at,$a0
    sh	$at,-12($a1)
    lh	$at,10($v1)
    addu	$at,$at,$v0
    sh	$at,-10($a1)
    lh	$at,16($v1)
    addu	$at,$at,$a0
    sh	$at,-8($a1)
    lh	$at,18($v1)
    addu	$at,$at,$v0
    sh	$at,-6($a1)
    lh	$at,24($v1)
    addu	$at,$at,$a0
    sh	$at,-4($a1)
    lh	$at,26($v1)
    addiu	$v1,$v1,32
    addu	$at,$at,$v0
    sh	$at,-2($a1)
    bne	$v1,$a2,.L5ef40888
    lh	$at,0($v1)
    move	$a7,$a1
    move	$a4,$at
    addu	$a4,$a4,$s7
    sh	$a4,0($a7)
    move	$a6,$v1
    lh	$a5,2($a6)
    addu	$a5,$a5,$s6
    sh	$a5,2($a7)
    lh	$a4,8($a6)
    addu	$a4,$a4,$s7
    sh	$a4,4($a7)
    lh	$a5,10($a6)
    addu	$a5,$a5,$s6
    sh	$a5,6($a7)
    lh	$a4,16($a6)
    addu	$a4,$a4,$s7
    sh	$a4,8($a7)
    lh	$a5,18($a6)
    addu	$a5,$a5,$s6
    sh	$a5,10($a7)
    lh	$a4,24($a6)
    addu	$a4,$a4,$s7
    sh	$a4,12($a7)
    lh	$a6,26($a6)
    addu	$a6,$a6,$s6
    sh	$a6,14($a7)
.L5ef4095c:
    sd	$s3,-248($s8)
.L5ef40960:
    addiu	$a1,$s8,-56
    li	$a3,13
    sd	$s3,-248($s8)
    la	$s3,local_0x5ef40000
    move	$a2,$t0
    ld	$a0,-192($s8)
    addiu	$s3,$s3,-968
    bal	expValidateWindowPriv
    move	$t9,$s3
    ld	$v0,-200($s8)
    lw	$v0,32($v0)
    beqz	$v0,.L5ef409a0
    addiu	$a0,$s8,-56
    lw	$a4,4($v0)
    beqz	$a4,.L5ef412c8
    addiu	$a0,$s8,-56
.L5ef409a0:
    ld	$a2,-200($s8)
    lw	$t9,356($s5)
    lw	$a1,44($s1)
    addiu	$a2,$a2,24
    jalr	$t9
    addiu	$a1,$a1,24
    lw	$v0,-48($s8)
.L5ef409bc:
    beqz	$v0,.L5ef41050
    nop
    beqz	$v0,.L5ef41058
    addiu	$t1,$v0,8
.L5ef409cc:
    lw	$v1,4($v0)
.L5ef409d0:
    sll	$a4,$v1,0x2
    addiu	$a4,$a4,15
    and	$a4,$a4,$s4
    subu	$sp,$sp,$a4
    beqz	$sp,.L5ef41330
    move	$t0,$sp
    blez	$v1,.L5ef40b30
    move	$v0,$t0
    move	$a3,$t1
    sll	$t3,$v1,0x3
    move	$t2,$v1
    andi	$a7,$v1,0x3
    beqz	$a7,.L5ef40a30
    addu	$t3,$t1,$t3
.L5ef40a08:
    lh	$a4,0($a3)
    addu	$a4,$a4,$s7
    sh	$a4,0($v0)
    addiu	$a3,$a3,8
    lh	$at,-6($a3)
    addiu	$v0,$v0,4
    addi	$a7,$a7,-1
    addu	$at,$at,$s6
    bnez	$a7,.L5ef40a08
    sh	$at,-2($v0)
.L5ef40a30:
    move	$a1,$v0
    sra	$a7,$t2,0x2
    beqz	$a7,.L5ef40b30
    move	$v1,$a3
    slti	$a5,$a7,2
    bnez	$a5,.L5ef41458
    move	$a3,$a1
    lh	$at,0($v1)
    addiu	$a2,$t3,-32
    move	$v0,$s6
    move	$a0,$s7
.L5ef40a5c:
    addiu	$a1,$a1,16
    addu	$at,$at,$a0
    sh	$at,-16($a1)
    lh	$at,2($v1)
    addu	$at,$at,$v0
    sh	$at,-14($a1)
    lh	$at,8($v1)
    addu	$at,$at,$a0
    sh	$at,-12($a1)
    lh	$at,10($v1)
    addu	$at,$at,$v0
    sh	$at,-10($a1)
    lh	$at,16($v1)
    addu	$at,$at,$a0
    sh	$at,-8($a1)
    lh	$at,18($v1)
    addu	$at,$at,$v0
    sh	$at,-6($a1)
    lh	$at,24($v1)
    addu	$at,$at,$a0
    sh	$at,-4($a1)
    lh	$at,26($v1)
    addiu	$v1,$v1,32
    addu	$at,$at,$v0
    sh	$at,-2($a1)
    bne	$v1,$a2,.L5ef40a5c
    lh	$at,0($v1)
    move	$a7,$a1
    move	$a4,$at
    addu	$a4,$a4,$s7
    sh	$a4,0($a7)
    move	$a6,$v1
    lh	$a5,2($a6)
    addu	$a5,$a5,$s6
    sh	$a5,2($a7)
    lh	$a4,8($a6)
    addu	$a4,$a4,$s7
    sh	$a4,4($a7)
    lh	$a5,10($a6)
    addu	$a5,$a5,$s6
    sh	$a5,6($a7)
    lh	$a4,16($a6)
    addu	$a4,$a4,$s7
    sh	$a4,8($a7)
    lh	$a5,18($a6)
    addu	$a5,$a5,$s6
    sh	$a5,10($a7)
    lh	$a4,24($a6)
    addu	$a4,$a4,$s7
    sh	$a4,12($a7)
    lh	$a6,26($a6)
    addu	$a6,$a6,$s6
    sh	$a6,14($a7)
.L5ef40b30:
    addiu	$a1,$s8,-56
    ld	$a0,-192($s8)
    move	$a2,$t0
    li	$a3,14
    bal	expValidateWindowPriv
    move	$t9,$s3
    ld	$a3,-192($s8)
.L5ef40b4c:
    lw	$v1,nfbWindowPrivateIndex
    lw	$a3,132($a3)
    sll	$v1,$v1,0x2
    addu	$a3,$a3,$v1
    lw	$a3,0($a3)
    sd	$s6,-280($s8)
    sd	$s7,-272($s8)
    lw	$a5,28($a3)
    addiu	$s7,$s8,-72
    ld	$s0,-192($s8)
    beqz	$a5,.L5ef40f98
    sd	$s2,-256($s8)
    addiu	$s6,$s8,-120
    sd	$s5,-216($s8)
    sd	$zero,-208($s8)
    lw	$s2,24($a3)
    b	.L5ef40be8
    lw	$s0,36($s0)
.L5ef40b94:
    ld	$t9,-216($s8)
    lw	$t9,356($t9)
    addiu	$a0,$s8,-56
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s5
    ld	$t9,-216($s8)
    lw	$t9,360($t9)
    addiu	$a2,$s8,-56
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s3
.L5ef40bc4:
    lw	$v1,36($s0)
.L5ef40bc8:
    beqz	$v1,.L5ef40c80
    ld	$a4,-192($s8)
    lw	$at,28($s1)
    beqzl	$at,.L5ef40c84
    lw	$v1,28($s0)
    move	$s0,$v1
.L5ef40be0:
    lw	$v1,nfbWindowPrivateIndex
    sll	$v1,$v1,0x2
.L5ef40be8:
    lw	$s1,132($s0)
    addu	$s1,$s1,$v1
    lw	$s1,0($s1)
    ld	$a4,-200($s8)
    lw	$a3,24($s1)
    ld	$at,-208($s8)
    li	$a7,1
    beq	$s2,$a3,.L5ef40bc4
    addiu	$s4,$s0,56
    move	$v1,$a3
    sllv	$a7,$a7,$a3
    and	$at,$a7,$at
    sll	$s5,$a3,0x2
    subu	$s5,$s5,$a3
    sll	$s5,$s5,0x2
    addu	$s3,$s5,$s6
    bnez	$at,.L5ef40b94
    addu	$s5,$s5,$a4
    move	$a2,$zero
    move	$a1,$zero
    move	$a0,$s3
    sll	$t0,$v1,0x2
    ld	$t9,-216($s8)
    ld	$ra,-208($s8)
    addu	$t0,$t0,$s7
    lw	$t9,340($t9)
    or	$ra,$a7,$ra
    sd	$ra,-208($s8)
    jalr	$t9
    sw	$s0,0($t0)
    ld	$t9,-216($s8)
    lw	$t9,356($t9)
    move	$a0,$s3
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s5
    b	.L5ef40bc8
    lw	$v1,36($s0)
.L5ef40c80:
    lw	$v1,28($s0)
.L5ef40c84:
    beqz	$v1,.L5ef40c9c
.L5ef40c88:
    ld	$at,-192($s8)
    beq	$at,$s0,.L5ef40cc0
    ld	$s4,-272($s8)
    b	.L5ef40be0
    move	$s0,$v1
.L5ef40c9c:
    beq	$a4,$s0,.L5ef40cc0
    ld	$s4,-272($s8)
    lw	$s0,24($s0)
.L5ef40ca8:
    lw	$v1,28($s0)
    bnez	$v1,.L5ef40c88
    ld	$a5,-192($s8)
    bnel	$a5,$s0,.L5ef40ca8
    lw	$s0,24($s0)
    ld	$s4,-272($s8)
.L5ef40cc0:
    ld	$s3,-280($s8)
    li	$a6,3
    beq	$s2,$a6,.L5ef41004
    ld	$s5,-216($s8)
    ld	$at,-208($s8)
    ld	$s4,-272($s8)
    ld	$s3,-280($s8)
    andi	$at,$at,0x8
    beqz	$at,.L5ef412ec
    ld	$s5,-216($s8)
    li	$a4,3
    beq	$s2,$a4,.L5ef41004
    li	$a5,1
    beq	$s2,$a5,.L5ef40d0c
    li	$a6,2
    beq	$s2,$a6,.L5ef40d0c
    ld	$at,-208($s8)
    andi	$at,$at,0x6
    beqz	$at,.L5ef40d70
.L5ef40d0c:
    ld	$a4,-208($s8)
    andi	$a4,$a4,0x2
    beqz	$a4,.L5ef41068
    addiu	$s0,$s6,36
    lw	$t9,360($s5)
    move	$a2,$s0
    addiu	$a0,$s6,12
    jalr	$t9
    move	$a1,$a0
.L5ef40d30:
    ld	$a5,-208($s8)
.L5ef40d34:
    andi	$a5,$a5,0x4
    beqz	$a5,.L5ef410b4
    li	$a4,2
    lw	$t9,360($s5)
    move	$a2,$s0
    addiu	$a0,$s6,24
    jalr	$t9
    move	$a1,$a0
.L5ef40d54:
    move	$a0,$s0
.L5ef40d58:
    ld	$a6,-208($s8)
    lw	$t9,352($s5)
    li	$a7,-9
    and	$a6,$a6,$a7
    jalr	$t9
    sd	$a6,-208($s8)
.L5ef40d70:
    move	$s0,$zero
.L5ef40d74:
    move	$s1,$s6
    lw	$s6,-124($s8)
    move	$s2,$s7
    ld	$s7,-240($s8)
    sd	$s6,-184($s8)
    b	.L5ef40dd4
    ld	$s6,-224($s8)
.L5ef40d90:
    li	$at,-1
.L5ef40d94:
    sd	$at,-184($s8)
.L5ef40d98:
    lw	$a0,0($s2)
.L5ef40d9c:
    # lw $t9, -32744($gp)
    move	$a1,$s1
    move	$a2,$t1
    addiu	$t9,$t9,-968
    bal	expValidateWindowPriv
    ld	$a3,-184($s8)
.L5ef40db4:
    lw	$t9,352($s5)
    jal	local_0x5ef40000
    move	$a0,$s1
    addiu	$s1,$s1,12
.L5ef40dc4:
    li	$at,4
    addiu	$s0,$s0,1
    beq	$s0,$at,.L5ef40f98
    addiu	$s2,$s2,4
.L5ef40dd4:
    ld	$a5,-208($s8)
    li	$a4,1
    sllv	$a4,$a4,$s0
    and	$a4,$a4,$a5
    beqzl	$a4,.L5ef40dc4
    addiu	$s1,$s1,12
    lw	$v1,8($s1)
    li	$a6,-16
    beqz	$v1,.L5ef40fdc
    addiu	$t2,$v1,8
    beqz	$v1,.L5ef40fec
    li	$v0,1
    lw	$v0,4($v1)
.L5ef40e08:
    move	$a3,$v0
.L5ef40e0c:
    andi	$v1,$v0,0x3
    sll	$a5,$v0,0x2
    addiu	$a5,$a5,15
    and	$a5,$a5,$a6
    subu	$sp,$sp,$a5
    beqz	$sp,.L5ef40db4
    move	$t1,$sp
    blez	$v0,.L5ef40f64
    move	$a7,$t1
    move	$t0,$t2
    sll	$t3,$v0,0x3
    beqz	$v1,.L5ef40e68
    addu	$t3,$t2,$t3
.L5ef40e40:
    lh	$a4,0($t0)
    addu	$a4,$a4,$s4
    sh	$a4,0($a7)
    addiu	$t0,$t0,8
    lh	$at,-6($t0)
    addiu	$a7,$a7,4
    addi	$v1,$v1,-1
    addu	$at,$at,$s3
    bnez	$v1,.L5ef40e40
    sh	$at,-2($a7)
.L5ef40e68:
    move	$a1,$a7
    sra	$v0,$a3,0x2
    beqz	$v0,.L5ef40f64
    move	$v1,$t0
    slti	$a5,$v0,2
    bnez	$a5,.L5ef41528
    move	$v0,$s3
    addiu	$a2,$t3,-32
    move	$a0,$s4
    lh	$at,0($v1)
.L5ef40e90:
    addiu	$a1,$a1,16
    addu	$at,$at,$a0
    sh	$at,-16($a1)
    lh	$at,2($v1)
    addu	$at,$at,$v0
    sh	$at,-14($a1)
    lh	$at,8($v1)
    addu	$at,$at,$a0
    sh	$at,-12($a1)
    lh	$at,10($v1)
    addu	$at,$at,$v0
    sh	$at,-10($a1)
    lh	$at,16($v1)
    addu	$at,$at,$a0
    sh	$at,-8($a1)
    lh	$at,18($v1)
    addu	$at,$at,$v0
    sh	$at,-6($a1)
    lh	$at,24($v1)
    addu	$at,$at,$a0
    sh	$at,-4($a1)
    lh	$at,26($v1)
    addiu	$v1,$v1,32
    addu	$at,$at,$v0
    sh	$at,-2($a1)
    bne	$v1,$a2,.L5ef40e90
    lh	$at,0($v1)
    move	$a7,$a1
    move	$a4,$at
    addu	$a4,$a4,$s4
    sh	$a4,0($a7)
    move	$a6,$v1
    lh	$a5,2($a6)
    addu	$a5,$a5,$s3
    sh	$a5,2($a7)
    lh	$a4,8($a6)
    addu	$a4,$a4,$s4
    sh	$a4,4($a7)
    lh	$a5,10($a6)
    addu	$a5,$a5,$s3
    sh	$a5,6($a7)
    lh	$a4,16($a6)
    addu	$a4,$a4,$s4
    sh	$a4,8($a7)
    lh	$a5,18($a6)
    addu	$a5,$a5,$s3
    sh	$a5,10($a7)
    lh	$a4,24($a6)
    addu	$a4,$a4,$s4
    sh	$a4,12($a7)
    lh	$a6,26($a6)
    addu	$a6,$a6,$s3
    sh	$a6,14($a7)
.L5ef40f64:
    li	$at,2
    beqz	$s0,.L5ef40d90
    li	$a6,1
    li	$a5,3
    beql	$s0,$a5,.L5ef40d94
    li	$at,-1
    beq	$s0,$a6,.L5ef41060
    li	$a6,13
    bnel	$s0,$at,.L5ef40d9c
    lw	$a0,0($s2)
    li	$a4,14
    b	.L5ef40d98
    sd	$a4,-184($s8)
.L5ef40f98:
    lw	$t9,352($s5)
    addiu	$a0,$s8,-56
    ld	$s6,-224($s8)
    jalr	$t9
    ld	$s7,-240($s8)
    ld	$gp,-168($s8)
    ld	$s0,-152($s8)
    ld	$s1,-176($s8)
    ld	$s2,-256($s8)
    ld	$s3,-248($s8)
    ld	$s4,-232($s8)
    ld	$s5,-160($s8)
    ld	$ra,-136($s8)
    ld	$a5,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L5ef40fdc:
    move	$t2,$s1
    bnezl	$v1,.L5ef40e08
    lw	$v0,4($v1)
    li	$v0,1
.L5ef40fec:
    b	.L5ef40e0c
    move	$a3,$v0
.L5ef40ff4:
    bnez	$v0,.L5ef407f8
    addiu	$t1,$s8,-56
.L5ef40ffc:
    b	.L5ef407fc
    li	$v1,1
.L5ef41004:
    ld	$a6,-208($s8)
    andi	$a6,$a6,0x2
    beqz	$a6,.L5ef41024
    ld	$at,-208($s8)
    lw	$t9,352($s5)
    jalr	$t9
    addiu	$a0,$s6,12
    ld	$at,-208($s8)
.L5ef41024:
    andi	$at,$at,0x4
    beqz	$at,.L5ef41040
    ld	$a4,-208($s8)
    lw	$t9,352($s5)
    jalr	$t9
    addiu	$a0,$s6,24
    ld	$a4,-208($s8)
.L5ef41040:
    li	$a5,-15
    and	$a4,$a4,$a5
    b	.L5ef40d70
    sd	$a4,-208($s8)
.L5ef41050:
    bnez	$v0,.L5ef409cc
    addiu	$t1,$s8,-56
.L5ef41058:
    b	.L5ef409d0
    li	$v1,1
.L5ef41060:
    b	.L5ef40d98
    sd	$a6,-184($s8)
.L5ef41068:
    li	$at,1
    beq	$s2,$at,.L5ef40d30
    move	$a2,$zero
    move	$a1,$zero
    addiu	$s1,$s6,12
    move	$a0,$s1
    lw	$v0,-60($s8)
    ld	$v1,-208($s8)
    lw	$t9,340($s5)
    sw	$v0,-68($s8)
    ori	$v1,$v1,0x2
    jalr	$t9
    sd	$v1,-208($s8)
    lw	$t9,344($s5)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L5ef40d34
    ld	$a5,-208($s8)
.L5ef410b4:
    beq	$s2,$a4,.L5ef40d54
    move	$a2,$zero
    move	$a1,$zero
    addiu	$s1,$s6,24
    move	$a0,$s1
    lw	$a5,-60($s8)
    ld	$a6,-208($s8)
    lw	$t9,340($s5)
    sw	$a5,-64($s8)
    ori	$a6,$a6,0x4
    jalr	$t9
    sd	$a6,-208($s8)
    lw	$t9,344($s5)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L5ef40d58
    move	$a0,$s0
.L5ef410fc:
    lw	$v0,-48($s8)
    beqz	$v0,.L5ef413a4
    nop
    beqz	$v0,.L5ef413ac
    addiu	$t1,$v0,8
.L5ef41110:
    lw	$v1,4($v0)
.L5ef41114:
    sll	$t0,$v1,0x2
    addiu	$t0,$t0,15
    and	$t0,$t0,$s4
    subu	$sp,$sp,$t0
    beqz	$sp,.L5ef413b4
    move	$t0,$sp
    blez	$v1,.L5ef41278
    move	$a3,$t0
    move	$v0,$t1
    sll	$t3,$v1,0x3
    move	$t2,$v1
    andi	$a7,$v1,0x3
    beqz	$a7,.L5ef41174
    addu	$t3,$t1,$t3
.L5ef4114c:
    lh	$a4,0($v0)
    addu	$a4,$a4,$s7
    sh	$a4,0($a3)
    addiu	$v0,$v0,8
    lh	$at,-6($v0)
    addiu	$a3,$a3,4
    addi	$a7,$a7,-1
    addu	$at,$at,$s6
    bnez	$a7,.L5ef4114c
    sh	$at,-2($a3)
.L5ef41174:
    move	$a1,$a3
    sra	$a7,$t2,0x2
    beqz	$a7,.L5ef41274
    move	$v1,$v0
    slti	$a5,$a7,2
    bnez	$a5,.L5ef414c0
    move	$a3,$a1
    lh	$at,0($v1)
    addiu	$a2,$t3,-32
    move	$v0,$s6
    move	$a0,$s7
.L5ef411a0:
    addiu	$a1,$a1,16
    addu	$at,$at,$a0
    sh	$at,-16($a1)
    lh	$at,2($v1)
    addu	$at,$at,$v0
    sh	$at,-14($a1)
    lh	$at,8($v1)
    addu	$at,$at,$a0
    sh	$at,-12($a1)
    lh	$at,10($v1)
    addu	$at,$at,$v0
    sh	$at,-10($a1)
    lh	$at,16($v1)
    addu	$at,$at,$a0
    sh	$at,-8($a1)
    lh	$at,18($v1)
    addu	$at,$at,$v0
    sh	$at,-6($a1)
    lh	$at,24($v1)
    addu	$at,$at,$a0
    sh	$at,-4($a1)
    lh	$at,26($v1)
    addiu	$v1,$v1,32
    addu	$at,$at,$v0
    sh	$at,-2($a1)
    bne	$v1,$a2,.L5ef411a0
    lh	$at,0($v1)
    move	$a7,$a1
    move	$a4,$at
    addu	$a4,$a4,$s7
    sh	$a4,0($a7)
    move	$a6,$v1
    lh	$a5,2($a6)
    addu	$a5,$a5,$s6
    sh	$a5,2($a7)
    lh	$a4,8($a6)
    addu	$a4,$a4,$s7
    sh	$a4,4($a7)
    lh	$a5,10($a6)
    addu	$a5,$a5,$s6
    sh	$a5,6($a7)
    lh	$a4,16($a6)
    addu	$a4,$a4,$s7
    sh	$a4,8($a7)
    lh	$a5,18($a6)
    addu	$a5,$a5,$s6
    sh	$a5,10($a7)
    lh	$a4,24($a6)
    addu	$a4,$a4,$s7
    sh	$a4,12($a7)
    lh	$a6,26($a6)
    addu	$a6,$a6,$s6
    sh	$a6,14($a7)
.L5ef41274:
    sd	$s3,-248($s8)
.L5ef41278:
    addiu	$a1,$s8,-56
    li	$a3,-1
    sd	$s3,-248($s8)
    la	$s3,local_0x5ef40000
    move	$a2,$t0
    ld	$a0,-192($s8)
    addiu	$s3,$s3,-968
    bal	expValidateWindowPriv
    move	$t9,$s3
    b	.L5ef40b4c
    ld	$a3,-192($s8)
.L5ef412a4:
    addiu	$a0,$s8,-56
    ld	$a2,-200($s8)
    lw	$t9,356($s5)
    ld	$a1,-192($s8)
    addiu	$a2,$a2,36
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L5ef407e4
    nop
.L5ef412c8:
    addiu	$a0,$s8,-56
    ld	$a2,-200($s8)
    lw	$t9,356($s5)
    ld	$a1,-192($s8)
    addiu	$a2,$a2,36
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L5ef409bc
    lw	$v0,-48($s8)
.L5ef412ec:
    b	.L5ef40d74
    move	$s0,$zero
.L5ef412f4:
    addiu	$a0,$s8,-56
    lw	$t9,352($s5)
    ld	$s6,-224($s8)
    ld	$s4,-232($s8)
    jalr	$t9
    ld	$s7,-240($s8)
    ld	$gp,-168($s8)
    ld	$s0,-152($s8)
    ld	$s1,-176($s8)
    ld	$s5,-160($s8)
    ld	$ra,-136($s8)
    ld	$a4,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef41330:
    addiu	$a0,$s8,-56
    ld	$s6,-224($s8)
    lw	$t9,352($s5)
    ld	$s4,-232($s8)
    ld	$s7,-240($s8)
    jalr	$t9
    ld	$s3,-248($s8)
    ld	$gp,-168($s8)
    ld	$s0,-152($s8)
    ld	$s1,-176($s8)
    ld	$s5,-160($s8)
    ld	$ra,-136($s8)
    ld	$a5,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L5ef41370:
    lw	$t9,376($s5)
    ld	$a0,-200($s8)
    negu	$a2,$s6
    jalr	$t9
    negu	$a1,$s7
    addiu	$a0,$s8,-56
    lw	$t9,356($s5)
    ld	$a1,-192($s8)
    ld	$a2,-200($s8)
    jalr	$t9
    addiu	$a1,$a1,56
    b	.L5ef407a8
    sd	$s4,-232($s8)
.L5ef413a4:
    bnez	$v0,.L5ef41110
    addiu	$t1,$s8,-56
.L5ef413ac:
    b	.L5ef41114
    li	$v1,1
.L5ef413b4:
    addiu	$a0,$s8,-56
    lw	$t9,352($s5)
    ld	$s6,-224($s8)
    ld	$s4,-232($s8)
    jalr	$t9
    ld	$s7,-240($s8)
    ld	$gp,-168($s8)
    ld	$s0,-152($s8)
    ld	$s1,-176($s8)
    ld	$s5,-160($s8)
    ld	$ra,-136($s8)
    ld	$a4,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef413f0:
    move	$v0,$v1
    lh	$a4,0($v0)
    addu	$a4,$a4,$s7
    sh	$a4,0($a3)
    lh	$at,2($v0)
    addu	$at,$at,$s6
    sh	$at,2($a3)
    lh	$a6,8($v0)
    addu	$a6,$a6,$s7
    sh	$a6,4($a3)
    lh	$a5,10($v0)
    addu	$a5,$a5,$s6
    sh	$a5,6($a3)
    lh	$a4,16($v0)
    addu	$a4,$a4,$s7
    sh	$a4,8($a3)
    lh	$at,18($v0)
    addu	$at,$at,$s6
    sh	$at,10($a3)
    lh	$a6,24($v0)
    addu	$a6,$a6,$s7
    sh	$a6,12($a3)
    lh	$a5,26($v0)
    addu	$a5,$a5,$s6
    b	.L5ef4095c
    sh	$a5,14($a3)
.L5ef41458:
    move	$v0,$v1
    lh	$a4,0($v0)
    addu	$a4,$a4,$s7
    sh	$a4,0($a3)
    lh	$at,2($v0)
    addu	$at,$at,$s6
    sh	$at,2($a3)
    lh	$a6,8($v0)
    addu	$a6,$a6,$s7
    sh	$a6,4($a3)
    lh	$a5,10($v0)
    addu	$a5,$a5,$s6
    sh	$a5,6($a3)
    lh	$a4,16($v0)
    addu	$a4,$a4,$s7
    sh	$a4,8($a3)
    lh	$at,18($v0)
    addu	$at,$at,$s6
    sh	$at,10($a3)
    lh	$a6,24($v0)
    addu	$a6,$a6,$s7
    sh	$a6,12($a3)
    lh	$a5,26($v0)
    addu	$a5,$a5,$s6
    b	.L5ef40b30
    sh	$a5,14($a3)
.L5ef414c0:
    move	$v0,$v1
    lh	$a4,0($v0)
    addu	$a4,$a4,$s7
    sh	$a4,0($a3)
    lh	$at,2($v0)
    addu	$at,$at,$s6
    sh	$at,2($a3)
    lh	$a6,8($v0)
    addu	$a6,$a6,$s7
    sh	$a6,4($a3)
    lh	$a5,10($v0)
    addu	$a5,$a5,$s6
    sh	$a5,6($a3)
    lh	$a4,16($v0)
    addu	$a4,$a4,$s7
    sh	$a4,8($a3)
    lh	$at,18($v0)
    addu	$at,$at,$s6
    sh	$at,10($a3)
    lh	$a6,24($v0)
    addu	$a6,$a6,$s7
    sh	$a6,12($a3)
    lh	$a5,26($v0)
    addu	$a5,$a5,$s6
    b	.L5ef41274
    sh	$a5,14($a3)
.L5ef41528:
    move	$v0,$a1
    move	$a3,$v1
    lh	$a4,0($a3)
    addu	$a4,$a4,$s4
    sh	$a4,0($v0)
    lh	$at,2($a3)
    addu	$at,$at,$s3
    sh	$at,2($v0)
    lh	$a6,8($a3)
    addu	$a6,$a6,$s4
    sh	$a6,4($v0)
    lh	$a5,10($a3)
    addu	$a5,$a5,$s3
    sh	$a5,6($v0)
    lh	$a4,16($a3)
    addu	$a4,$a4,$s4
    sh	$a4,8($v0)
    lh	$at,18($a3)
    addu	$at,$at,$s3
    sh	$at,10($v0)
    lh	$a6,24($a3)
    addu	$a6,$a6,$s4
    sh	$a6,12($v0)
    lh	$a5,26($a3)
    addu	$a5,$a5,$s3
    b	.L5ef40f64
    sh	$a5,14($v0)
.end expCopyWindow

.globl expClearOverlays
.ent expClearOverlays
expClearOverlays:
    li	$at,32
    addiu	$sp,$sp,-80
    sd	$s2,8($sp)
    sd	$s0,24($sp)
    sd	$s3,32($sp)
    lw	$s3,expScreenPrivateIndex
    lw	$s0,436($a2)
    move	$s2,$a0
    sll	$s3,$s3,0x2
    addu	$s0,$s0,$s3
    lw	$s0,0($s0)
    sd	$s1,16($sp)
    move	$s1,$a1
    lw	$s0,0($s0)
    lui	$v0,0x4
    li	$s3,8
    addu	$s0,$s0,$v0
    li	$v0,12
    beq	$a3,$at,.L5ef4ed54
    sw	$s3,1324($s0)
    li	$at,33
    beq	$a3,$at,.L5ef4ed78
    li	$a2,34
    beq	$a3,$a2,.L5ef4ed4c
    move	$a1,$a3
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,40($sp)
    jal	ErrorF
    addiu	$a0,$a0,-3440
    lw	$v0,4($sp)
    lw	$v1,0($sp)
    ld	$ra,40($sp)
.L5ef4ec54:
    move	$a1,$zero
    li	$a5,11
    li	$a2,13
    beq	$v0,$a2,.L5ef4ed60
    move	$a0,$zero
    li	$a4,14
    beq	$v0,$a4,.L5ef4ed9c
    andi	$a2,$v1,0xc
    li	$a5,12
    beq	$v0,$a5,.L5ef4ed84
    andi	$at,$v1,0xf
    move	$a1,$v1
    ld	$s3,32($sp)
    sw	$v0,1324($s0)
    sw	$zero,1236($s0)
.L5ef4ec90:
    sll	$v1,$s1,0x3
    addu	$v1,$v1,$s2
    li	$at,3
    sw	$zero,1328($s0)
    lui	$a2,0xff
    ori	$a2,$a2,0xffff
    and	$a2,$a1,$a2
    sw	$a2,1916($s0)
    sw	$at,1916($s0)
    beqz	$s1,.L5ef4ed38
    sw	$a0,1916($s0)
    slti	$a2,$s1,2
    bnez	$a2,.L5ef4edb8
    move	$v0,$s2
    ld	$s1,16($sp)
    addiu	$a0,$v1,-8
    move	$v1,$s0
    sw	$zero,1216($s0)
    ld	$s2,8($sp)
    lh	$at,0($v0)
.L5ef4ece0:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef4ece0
    lh	$at,0($v0)
    move	$a2,$at
    sw	$a2,1916($s0)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($s0)
    lh	$a5,4($a4)
    sw	$a5,1916($s0)
    lh	$a4,6($a4)
    sw	$a4,1916($s0)
    sw	$zero,1960($s0)
.L5ef4ed38:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef4ed4c:
    b	.L5ef4ec54
    li	$v1,15
.L5ef4ed54:
    li	$v1,3
    b	.L5ef4ec54
    li	$v0,13
.L5ef4ed60:
    li	$a0,1
    ld	$s3,32($sp)
    sw	$a5,1324($s0)
    andi	$a4,$v1,0x3
    b	.L5ef4ec90
    sw	$a4,1236($s0)
.L5ef4ed78:
    li	$v1,12
    b	.L5ef4ec54
    li	$v0,14
.L5ef4ed84:
    move	$a1,$zero
    li	$a0,1
    sw	$s3,1324($s0)
    ld	$s3,32($sp)
    b	.L5ef4ec90
    sw	$at,1236($s0)
.L5ef4ed9c:
    move	$a1,$zero
    li	$a0,9
    ld	$s3,32($sp)
    li	$a4,11
    sw	$a4,1324($s0)
    b	.L5ef4ec90
    sw	$a2,1236($s0)
.L5ef4edb8:
    sw	$zero,1216($s0)
    lh	$at,0($v0)
    sw	$at,1916($s0)
    lh	$s2,2($v0)
    sw	$s2,1916($s0)
    lh	$s1,4($v0)
    sw	$s1,1916($s0)
    lh	$a5,6($v0)
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    sw	$a5,1916($s0)
    b	.L5ef4ed38
    sw	$zero,1960($s0)
.end expClearOverlays

.globl expInitWindowType
.ent expInitWindowType
expInitWindowType:
    lui	$v1,0x17
    addiu	$v1,$v1,-16320
    addu	$at,$t9,$v1
    lw	$v0,nfbWindowPrivateIndex
    lw	$t9,132($a0)
    la	$a3,rrmWindowPrivateIndex
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$t9
    lw	$v0,0($v0)
    lw	$a3,0($a3)
    lw	$v0,24($v0)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$t9
    beqz	$v0,.L5ef525d0
    lw	$a3,0($a3)
    li	$a0,1
    sh	$a0,2($a3)
    jr	$ra
    nop
.L5ef525d0:
    jr	$ra
    sh	$zero,2($a3)
.end expInitWindowType

.globl expValidateClip
.ent expValidateClip
expValidateClip:
    move	$t1,$zero
    move	$t8,$zero
    move	$t0,$zero
    move	$a7,$zero
    move	$a4,$s8
    addiu	$sp,$sp,-240
    addiu	$s8,$sp,240
    sd	$a4,-136($s8)
    sd	$s7,-128($s8)
    lw	$a1,16($a0)
    lui	$a3,0x17
    addiu	$a3,$a3,-16404
    sd	$gp,-144($s8)
    addu	$gp,$t9,$a3
    la	$a2,rrmWindowPrivateIndex
    move	$s7,$a0
    lw	$a5,116($a1)
    lw	$a2,0($a2)
    lw	$v1,132($a0)
    lw	$at,220($a5)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v1
    beqz	$at,.L5ef52654
    lw	$a2,0($a2)
    lw	$a6,nfbWindowPrivateIndex
    sll	$a6,$a6,0x2
    addu	$a6,$v1,$a6
    lw	$a6,0($a6)
    lw	$at,52($a6)
    beqzl	$at,.L5ef528e4
    lw	$v1,52($s7)
.L5ef52654:
    lw	$a3,12($a2)
    sw	$a3,-80($s8)
    lw	$v1,4($s7)
    sw	$v1,-76($s8)
    lw	$v0,24($a2)
    sw	$zero,-52($s8)
    sw	$v0,-48($s8)
    lw	$at,32($a2)
    sw	$at,-32($s8)
    lw	$v1,52($s7)
    addiu	$a1,$s7,44
    beqz	$v1,.L5ef527b8
    sd	$s0,-192($s8)
    beqz	$v1,.L5ef527c0
    lw	$s0,4($v1)
.L5ef52690:
    addiu	$a1,$v1,8
    sd	$s1,-208($s8)
    sd	$s2,-184($s8)
.L5ef5269c:
    sw	$s0,-56($s8)
    li	$s2,1
    sw	$s2,-36($s8)
    sw	$s2,-40($s8)
    sw	$s2,-44($s8)
    lh	$v1,8($s7)
    sw	$v1,-72($s8)
    lh	$a3,10($s7)
    sw	$a3,-68($s8)
    lhu	$v0,12($s7)
    sw	$v0,-64($s8)
    lhu	$at,14($s7)
    sw	$at,-60($s8)
    lhu	$a4,0($a2)
    andi	$a4,$a4,0x2
    beqz	$a4,.L5ef527cc
    move	$s1,$a1
    sw	$zero,-68($s8)
    sw	$zero,-72($s8)
    sw	$s2,-56($s8)
    sw	$zero,-40($s8)
    sw	$zero,-44($s8)
    lw	$at,16($s7)
    lh	$at,10($at)
    sw	$at,-60($s8)
    lw	$s2,16($s7)
    lh	$s2,8($s2)
    addiu	$sp,$sp,-16
    sw	$sp,-52($s8)
    sw	$s2,-64($s8)
    sw	$zero,0($sp)
    lw	$a4,-52($s8)
    lw	$a3,-68($s8)
    sw	$a3,4($a4)
    lw	$v0,-52($s8)
    lw	$at,-64($s8)
    sw	$at,8($v0)
    lw	$s2,-52($s8)
    lw	$a4,-60($s8)
    sd	$ra,-224($s8)
    sw	$a4,12($s2)
    ld	$s2,-184($s8)
.L5ef52744:
    addiu	$a2,$s8,-80
.L5ef52748:
    li	$a1,1011
    ld	$s0,-192($s8)
    lw	$a0,16($s7)
    ld	$s1,-208($s8)
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    sd	$ra,-224($s8)
    jal	ioctl
    lw	$a0,100($a0)
    li	$a3,-1
    beq	$v0,$a3,.L5ef52af0
    ld	$ra,-224($s8)
.L5ef52778:
    la	$a3,rrmWindowPrivateIndex
    lw	$a3,0($a3)
    lw	$a0,132($s7)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lbu	$v1,4($a0)
    li	$at,-3
    andi	$a4,$v1,0x2
    beqz	$a4,.L5ef528c8
    ld	$s7,-128($s8)
.L5ef527a4:
    ld	$gp,-144($s8)
    ld	$a4,-136($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef527b8:
    bnez	$v1,.L5ef52690
    li	$s0,1
.L5ef527c0:
    sd	$s1,-208($s8)
    b	.L5ef5269c
    sd	$s2,-184($s8)
.L5ef527cc:
    beqzl	$s0,.L5ef52da0
    sd	$ra,-224($s8)
    beq	$s0,$s2,.L5ef52d18
    sltiu	$at,$s0,5
.L5ef527dc:
    beqzl	$at,.L5ef52ae4
    sd	$ra,-224($s8)
    beql	$s0,$s2,.L5ef52e50
    sw	$zero,-44($s8)
    sd	$t0,-168($s8)
    sd	$t1,-120($s8)
    sd	$s3,-216($s8)
    sd	$s6,-200($s8)
    li	$s6,2
    bne	$s0,$s6,.L5ef52b18
    lw	$s3,16($s7)
    sw	$s2,-48($s8)
    sw	$s6,-56($s8)
    sw	$zero,-44($s8)
    ld	$s3,-216($s8)
    li	$a3,-16
    sll	$v0,$s0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$a3
    subu	$sp,$sp,$v0
    beqz	$s0,.L5ef52e60
    sw	$sp,-52($s8)
    move	$v1,$a1
    move	$a0,$zero
    ld	$s2,-184($s8)
    ld	$s6,-200($s8)
    move	$a5,$s0
    slt	$a3,$s0,$zero
    sll	$a2,$s0,0x3
    addu	$a2,$a1,$a2
    bnezl	$a3,.L5ef5285c
    move	$a5,$zero
.L5ef5285c:
    lw	$a3,-52($s8)
    lh	$v0,0($v1)
    addu	$a3,$a3,$a0
    sw	$v0,0($a3)
    lw	$at,-52($s8)
    lh	$a4,2($v1)
    addu	$at,$at,$a0
    sw	$a4,4($at)
    lh	$at,4($v1)
    lh	$a3,0($v1)
    lw	$v0,-52($s8)
    subu	$at,$at,$a3
    addu	$v0,$v0,$a0
    sw	$at,8($v0)
    addiu	$v1,$v1,8
    lw	$a4,-52($s8)
    lh	$a3,-2($v1)
    lh	$at,-6($v1)
    addu	$a4,$a4,$a0
    addiu	$a0,$a0,16
    subu	$a3,$a3,$at
    bne	$v1,$a2,.L5ef5285c
    sw	$a3,12($a4)
.L5ef528b8:
    li	$v1,1
    sll	$s1,$a5,0x3
    b	.L5ef52c6c
    addu	$s1,$s1,$a1
.L5ef528c8:
    lbu	$s7,5($a0)
    ori	$v0,$v1,0x2
    sb	$v0,4($a0)
    and	$s7,$s7,$at
    sb	$s7,5($a0)
    b	.L5ef527a4
    ld	$s7,-128($s8)
.L5ef528e4:
    beqz	$v1,.L5ef52dbc
    nop
    lw	$a0,4($v1)
.L5ef528f0:
    beqz	$a0,.L5ef52654
    lui	$a3,0x4
    lw	$at,expScreenPrivateIndex
    lw	$t9,436($a1)
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    lw	$a0,20($a6)
    beqz	$v1,.L5ef52dc4
    lw	$t9,0($t9)
    lw	$t2,4($v1)
.L5ef5291c:
    addu	$a3,$t9,$a3
    beqz	$v1,.L5ef52dcc
    move	$t3,$t2
    addiu	$a1,$v1,8
.L5ef5292c:
    move	$a6,$a1
    li	$v0,13
    beq	$a0,$v0,.L5ef52dd4
    sd	$a3,-112($s8)
    sd	$t8,-160($s8)
    li	$a4,14
    beq	$a0,$a4,.L5ef52e24
    li	$v1,12
    lui	$t8,0xff
    beq	$a0,$v1,.L5ef52e00
    ori	$t8,$t8,0xffff
    li	$v1,3
    ld	$at,-112($s8)
    move	$a1,$zero
    move	$t9,$t8
    sw	$a0,1324($at)
    sw	$zero,1236($at)
.L5ef52970:
    ld	$a4,-112($s8)
    li	$a0,1
    slt	$at,$t2,$a0
    beqzl	$at,.L5ef52984
    move	$a0,$t2
.L5ef52984:
    sw	$zero,1328($a4)
    and	$t2,$t9,$t8
    sw	$t2,1916($a4)
    sw	$v1,1916($a4)
    sw	$a1,1916($a4)
    sw	$zero,1216($a4)
    ld	$t8,-160($s8)
    lhu	$a3,226($a5)
    ld	$t2,-112($s8)
    andi	$v0,$a0,0x1
    sd	$a3,-104($s8)
    beqz	$v0,.L5ef529f4
    move	$t9,$a3
    ld	$t2,-112($s8)
    lh	$t8,0($a6)
    sw	$t8,1916($t2)
    ld	$t9,-104($s8)
    lh	$a4,2($a6)
    addu	$a4,$a4,$t9
    sw	$a4,1916($t2)
    lh	$a3,4($a6)
    sw	$a3,1916($t2)
    addiu	$t3,$t3,-1
    lh	$v0,6($a6)
    addiu	$a6,$a6,8
    ld	$t8,-160($s8)
    addu	$v0,$v0,$t9
    sw	$v0,1916($t2)
.L5ef529f4:
    move	$a5,$t3
    sra	$a1,$a0,0x1
    beqz	$a1,.L5ef52adc
    move	$v1,$a6
    slti	$at,$a1,2
    bnez	$at,.L5ef52e7c
    move	$a0,$a5
    sd	$a5,-152($s8)
    move	$a1,$t2
    lh	$v0,0($v1)
    move	$a0,$v1
    move	$v1,$t9
    move	$at,$a5
    addiu	$at,$a5,-2
.L5ef52a2c:
    sw	$v0,1916($a1)
    lh	$v0,2($a0)
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    lh	$v0,4($a0)
    sw	$v0,1916($a1)
    lh	$v0,6($a0)
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    lh	$v0,8($a0)
    sw	$v0,1916($a1)
    lh	$v0,10($a0)
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    lh	$v0,12($a0)
    sw	$v0,1916($a1)
    lh	$v0,14($a0)
    addiu	$at,$at,-2
    addiu	$a0,$a0,16
    addu	$v0,$v0,$v1
    sw	$v0,1916($a1)
    bnez	$at,.L5ef52a2c
    lh	$v0,0($a0)
    move	$a4,$v0
    sw	$a4,1916($t2)
    move	$a3,$a0
    lh	$a6,2($a3)
    addu	$a6,$a6,$t9
    sw	$a6,1916($t2)
    lh	$a5,4($a3)
    sw	$a5,1916($t2)
    lh	$a4,6($a3)
    addu	$a4,$a4,$t9
    sw	$a4,1916($t2)
    lh	$a6,8($a3)
    sw	$a6,1916($t2)
    lh	$a5,10($a3)
    addu	$a5,$a5,$t9
    sw	$a5,1916($t2)
    lh	$a4,12($a3)
    sw	$a4,1916($t2)
    lh	$a3,14($a3)
    addu	$a3,$a3,$t9
    sw	$a3,1916($t2)
.L5ef52adc:
    b	.L5ef52654
    sw	$zero,1960($t2)
.L5ef52ae4:
    sw	$zero,-56($s8)
    b	.L5ef52744
    ld	$s2,-184($s8)
.L5ef52af0:
    lw	$a2,-76($s8)
    lw	$a1,-80($s8)
    la	$a3,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a3,0($a3)
    jal	ErrorF
    addiu	$a0,$a0,-3264
    b	.L5ef52778
    ld	$ra,-224($s8)
.L5ef52b18:
    move	$a2,$zero
    sd	$ra,-224($s8)
    sd	$s5,-232($s8)
    addiu	$s5,$s8,-96
    sd	$s4,-176($s8)
    lw	$t9,340($s3)
    addiu	$s4,$s7,44
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s5
    lw	$t9,364($s3)
    move	$a0,$s5
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s4
    lw	$v1,-88($s8)
    beqz	$v1,.L5ef52e58
    ld	$s4,-176($s8)
    lw	$a0,4($v1)
.L5ef52b64:
    bnel	$a0,$s2,.L5ef52c48
    lw	$t9,352($s3)
    sw	$zero,-48($s8)
    sw	$s6,-56($s8)
    sw	$zero,-44($s8)
    li	$v1,-16
    sll	$v0,$s0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    sw	$sp,-52($s8)
    lh	$at,44($s7)
    sw	$at,0($sp)
    lw	$s2,-52($s8)
    lh	$a4,46($s7)
    sw	$a4,4($s2)
    lh	$a3,44($s7)
    lh	$v0,48($s7)
    lw	$v1,-52($s8)
    subu	$v0,$v0,$a3
    sw	$v0,8($v1)
    lh	$at,46($s7)
    lh	$a4,50($s7)
    lw	$s2,-52($s8)
    subu	$a4,$a4,$at
    sw	$a4,12($s2)
    lw	$v1,-88($s8)
    beqz	$v1,.L5ef52e70
    ld	$s2,-184($s8)
    addiu	$a1,$v1,8
    ld	$s6,-200($s8)
.L5ef52be0:
    lh	$a7,0($a1)
    lw	$t0,-52($s8)
    sw	$a7,16($t0)
    lh	$a5,2($a1)
    lw	$a6,-52($s8)
    sw	$a5,20($a6)
    lh	$a2,4($a1)
    lh	$a4,0($a1)
    lw	$a3,-52($s8)
    subu	$a2,$a2,$a4
    sw	$a2,24($a3)
    lh	$v1,6($a1)
    lh	$a1,2($a1)
    lw	$a0,-52($s8)
    subu	$v1,$v1,$a1
    sw	$v1,28($a0)
    lw	$t9,352($s3)
    jalr	$t9
    move	$a0,$s5
    ld	$v1,-168($s8)
    ld	$ra,-224($s8)
    ld	$s5,-232($s8)
    li	$s3,1
    sd	$s3,-120($s8)
    b	.L5ef52c68
    ld	$s3,-216($s8)
.L5ef52c48:
    move	$a0,$s5
    ld	$s2,-184($s8)
    jalr	$t9
    ld	$s6,-200($s8)
    ld	$v1,-168($s8)
    ld	$s3,-216($s8)
    ld	$ra,-224($s8)
    ld	$s5,-232($s8)
.L5ef52c68:
    ld	$t8,-120($s8)
.L5ef52c6c:
    move	$a7,$v1
.L5ef52c70:
    bnez	$a7,.L5ef52748
    addiu	$a2,$s8,-80
    bnez	$t8,.L5ef52748
    addiu	$a2,$s8,-80
    sll	$at,$s0,0x4
    addiu	$at,$at,15
    li	$v0,-16
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    beqz	$s0,.L5ef52744
    sw	$sp,-52($s8)
    move	$a0,$zero
    sll	$a1,$s0,0x3
    ld	$s0,-192($s8)
    move	$v1,$s1
    addu	$a1,$a1,$s1
    ld	$s1,-208($s8)
.L5ef52cb4:
    lw	$a3,-52($s8)
    lh	$v0,0($v1)
    addu	$a3,$a3,$a0
    sw	$v0,0($a3)
    lw	$at,-52($s8)
    lh	$a4,2($v1)
    addu	$at,$at,$a0
    sw	$a4,4($at)
    lh	$at,4($v1)
    lh	$a3,0($v1)
    lw	$v0,-52($s8)
    subu	$at,$at,$a3
    addu	$v0,$v0,$a0
    sw	$at,8($v0)
    addiu	$v1,$v1,8
    lw	$a4,-52($s8)
    lh	$a3,-2($v1)
    lh	$at,-6($v1)
    addu	$a4,$a4,$a0
    addiu	$a0,$a0,16
    subu	$a3,$a3,$at
    bne	$v1,$a1,.L5ef52cb4
    sw	$a3,12($a4)
    b	.L5ef52744
    sd	$ra,-224($s8)
.L5ef52d18:
    lh	$a4,8($s7)
    lh	$a0,0($a1)
    bne	$a4,$a0,.L5ef527dc
    sltiu	$at,$s0,5
    lh	$at,10($s7)
    lh	$a2,2($a1)
    bne	$at,$a2,.L5ef527dc
    sltiu	$at,$s0,5
    lh	$a3,4($a1)
    lhu	$v0,12($s7)
    subu	$a3,$a3,$a0
    bne	$v0,$a3,.L5ef527dc
    sltiu	$at,$s0,5
    lh	$at,6($a1)
    lhu	$a4,14($s7)
    subu	$at,$at,$a2
    bne	$a4,$at,.L5ef527dc
    sltiu	$at,$s0,5
    sw	$zero,-44($s8)
    addiu	$sp,$sp,-16
    sw	$sp,-52($s8)
    sw	$v1,0($sp)
    lw	$v0,-52($s8)
    lw	$at,-68($s8)
    sw	$at,4($v0)
    lw	$s2,-52($s8)
    lw	$a4,-64($s8)
    sw	$a4,8($s2)
    sd	$ra,-224($s8)
    lw	$a3,-52($s8)
    lw	$v0,-60($s8)
    ld	$s2,-184($s8)
    b	.L5ef52744
    sw	$v0,12($a3)
.L5ef52da0:
    sw	$zero,-60($s8)
    sw	$zero,-64($s8)
    sw	$zero,-68($s8)
    sw	$zero,-72($s8)
    sw	$zero,-44($s8)
    b	.L5ef52744
    ld	$s2,-184($s8)
.L5ef52dbc:
    b	.L5ef528f0
    li	$a0,1
.L5ef52dc4:
    b	.L5ef5291c
    li	$t2,1
.L5ef52dcc:
    b	.L5ef5292c
    addiu	$a1,$s7,44
.L5ef52dd4:
    li	$a1,1
    move	$t9,$zero
    li	$v1,3
    sd	$t8,-160($s8)
    lui	$t8,0xff
    ld	$a3,-112($s8)
    ori	$t8,$t8,0xffff
    li	$a4,11
    sw	$a4,1324($a3)
    b	.L5ef52970
    sw	$v1,1236($a3)
.L5ef52e00:
    li	$v1,3
    li	$a1,1
    move	$t9,$zero
    ld	$v0,-112($s8)
    li	$at,15
    li	$a3,8
    sw	$a3,1324($v0)
    b	.L5ef52970
    sw	$at,1236($v0)
.L5ef52e24:
    li	$v1,3
    li	$a1,9
    move	$t9,$zero
    li	$a4,12
    lui	$t8,0xff
    ld	$at,-112($s8)
    ori	$t8,$t8,0xffff
    li	$v0,11
    sw	$v0,1324($at)
    b	.L5ef52970
    sw	$a4,1236($at)
.L5ef52e50:
    b	.L5ef52c70
    ld	$s2,-184($s8)
.L5ef52e58:
    b	.L5ef52b64
    li	$a0,1
.L5ef52e60:
    move	$a5,$zero
    ld	$s2,-184($s8)
    b	.L5ef528b8
    ld	$s6,-200($s8)
.L5ef52e70:
    move	$a1,$s5
    b	.L5ef52be0
    ld	$s6,-200($s8)
.L5ef52e7c:
    move	$a1,$v1
    lh	$a4,0($a1)
    sw	$a4,1916($t2)
    lh	$a3,2($a1)
    addu	$a3,$a3,$t9
    sw	$a3,1916($t2)
    lh	$v0,4($a1)
    sw	$v0,1916($t2)
    lh	$at,6($a1)
    addu	$at,$at,$t9
    sw	$at,1916($t2)
    lh	$a4,8($a1)
    sw	$a4,1916($t2)
    lh	$a3,10($a1)
    addu	$a3,$a3,$t9
    sw	$a3,1916($t2)
    lh	$v0,12($a1)
    sw	$v0,1916($t2)
    lh	$at,14($a1)
    addu	$at,$at,$t9
    b	.L5ef52adc
    sw	$at,1916($t2)
.end expValidateClip

.globl expValidateSwapbuf
.ent expValidateSwapbuf
expValidateSwapbuf:
    lw	$a5,12($a1)
    addiu	$sp,$sp,-80
    sw	$a5,0($sp)
    addiu	$a2,$sp,0
    lw	$a4,4($a0)
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    sw	$a4,4($sp)
    sd	$s7,24($sp)
    lw	$a3,20($a1)
    move	$s7,$a0
    lui	$a1,0x17
    sw	$a3,8($sp)
    addiu	$a1,$a1,-18704
    lw	$a0,16($a0)
    addu	$gp,$t9,$a1
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    li	$a1,1012
    jal	ioctl
    lw	$a0,100($a0)
    li	$at,-1
    beq	$v0,$at,.L5ef52fc0
    nop	# was lw $t9, -29408($gp)
.L5ef52f34:
    jal	FlushClientCaches
    lw	$a0,4($s7)
    la	$a2,globalSerialNumber
    ld	$ra,16($sp)
    lw	$a0,0($a2)
    lui	$v0,0x1000
    la	$a3,rrmWindowPrivateIndex
    addiu	$a0,$a0,1
    sltu	$v0,$v0,$a0
    beqz	$v0,.L5ef52f6c
    lw	$a3,0($a3)
    li	$a0,1
    b	.L5ef52f70
    sw	$a0,0($a2)
.L5ef52f6c:
    sw	$a0,0($a2)
.L5ef52f70:
    lw	$a2,132($s7)
    sw	$a0,20($s7)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lbu	$a3,4($a2)
    li	$at,-9
    andi	$a1,$a3,0x8
    beqz	$a1,.L5ef52fa4
    ld	$s7,24($sp)
.L5ef52f98:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef52fa4:
    lbu	$s7,5($a2)
    ori	$v0,$a3,0x8
    sb	$v0,4($a2)
    and	$s7,$s7,$at
    sb	$s7,5($a2)
    b	.L5ef52f98
    ld	$s7,24($sp)
.L5ef52fc0:
    lw	$a2,4($sp)
    lw	$a1,0($sp)
    la	$a3,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a3,0($a3)
    jal	ErrorF
    addiu	$a0,$a0,-3200
    b	.L5ef52f34
    nop	# was lw $t9, -29408($gp)
.end expValidateSwapbuf

.globl expValidateMode
.ent expValidateMode
expValidateMode:
    addiu	$sp,$sp,-112
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$gp,56($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-18980
    lw	$at,20($a1)
    sd	$s2,64($sp)
    lw	$s2,16($a0)
    addu	$gp,$t9,$v0
    bltz	$at,.L5ef53248
    lw	$s2,116($s2)
    lbu	$v1,1($s0)
    li	$a2,2
    beq	$v1,$a2,.L5ef531b4
    move	$a0,$zero
    lw	$v0,120($s0)
    beqz	$v0,.L5ef53288
    nop	# was lw $t9, -29692($gp)
    lw	$a1,8($v0)
.L5ef53040:
    sd	$ra,72($sp)
    move	$a0,$a1
.L5ef53048:
    # lw $t9, -29684($gp)
    jal	LookupIDByType
    li	$a1,6
    bnezl	$v0,.L5ef530cc
    lw	$a1,68($v0)
    lw	$v0,120($s0)
    beqz	$v0,.L5ef532a4
    nop	# was lw $t9, -29692($gp)
    lw	$a1,0($v0)
.L5ef5306c:
    lw	$a2,80($s2)
    lw	$v1,88($s2)
    subu	$a2,$a1,$a2
    sll	$a0,$a2,0x2
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,4($v1)
    lw	$a3,124($s2)
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$a3,$a3,$at
    lw	$a3,4($a3)
    sd	$s4,24($sp)
    lw	$a3,0($a3)
    sd	$s3,32($sp)
    lw	$a0,116($s2)
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    b	.L5ef530f4
    lw	$a0,24($a0)
.L5ef530cc:
    lw	$a1,0($a1)
    bltz	$a1,.L5ef531d8
    sll	$a2,$a1,0x3
    sd	$s4,24($sp)
    sd	$s3,32($sp)
    lw	$a0,116($s2)
    subu	$a2,$a2,$a1
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    lw	$a0,24($a0)
.L5ef530f4:
    lw	$v0,32($s1)
    lw	$s3,36($s1)
    sll	$s4,$a0,0x1b
    ori	$s4,$s4,0x800
    or	$s3,$s3,$s4
    andi	$a3,$s3,0x100
    beqz	$a3,.L5ef531bc
    lw	$s4,20($s1)
.L5ef53114:
    andi	$at,$v0,0x2
    beqz	$at,.L5ef5312c
    andi	$v1,$v0,0x4
    beqz	$v1,.L5ef531c8
    lui	$a2,0x100
    or	$s3,$s3,$a2
.L5ef5312c:
    lw	$a5,12($s1)
    sw	$a5,0($sp)
    lw	$a4,4($s0)
    sw	$s3,12($sp)
    sw	$s4,8($sp)
    sw	$a4,4($sp)
    addiu	$a2,$sp,0
    lw	$a3,32($s1)
    # lw $t9, -29704($gp)
    li	$a1,1017
    sw	$a3,16($sp)
    jal	ioctl
    lw	$a0,100($s2)
    li	$at,-1
    beq	$v0,$at,.L5ef53260
    ld	$ra,72($sp)
.L5ef5316c:
    addiu	$a3,$gp,-21380
    ld	$gp,56($sp)
    lw	$v0,4($s0)
    ld	$s0,48($sp)
    lw	$a2,32($s1)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    sll	$v1,$s4,0x2
    subu	$v1,$v1,$s4
    ld	$s4,24($sp)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    sw	$a2,8($v1)
    sw	$v0,0($v1)
    sw	$s3,4($v1)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef531b4:
    b	.L5ef53048
    sd	$ra,72($sp)
.L5ef531bc:
    lui	$a2,0xf0
    b	.L5ef53114
    or	$s3,$s3,$a2
.L5ef531c8:
    lui	$a3,0x100
    nor	$a3,$a3,$zero
    b	.L5ef5312c
    and	$s3,$s3,$a3
.L5ef531d8:
    lw	$v0,120($s0)
    beqz	$v0,.L5ef532b8
    nop	# was lw $t9, -29692($gp)
    lw	$a1,0($v0)
.L5ef531e8:
    lw	$a2,80($s2)
    lw	$v1,88($s2)
    subu	$a2,$a1,$a2
    sll	$a0,$a2,0x2
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,4($v1)
    lw	$a3,124($s2)
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$a3,$a3,$at
    lw	$a3,4($a3)
    sd	$s4,24($sp)
    lw	$a3,0($a3)
    sd	$s3,32($sp)
    lw	$a0,116($s2)
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    b	.L5ef530f4
    lw	$a0,24($a0)
.L5ef53248:
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef53260:
    lw	$a2,4($sp)
    lw	$a1,0($sp)
    la	$a3,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a3,0($a3)
    jal	ErrorF
    addiu	$a0,$a0,-3136
    b	.L5ef5316c
    ld	$ra,72($sp)
.L5ef53288:
    sd	$ra,72($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a1,120($v0)
    ld	$ra,72($sp)
    b	.L5ef53040
    lw	$a1,8($a1)
.L5ef532a4:
    jalr	$t9
    move	$a0,$s0
    lw	$a1,120($v0)
    b	.L5ef5306c
    lw	$a1,0($a1)
.L5ef532b8:
    jalr	$t9
    move	$a0,$s0
    lw	$a1,120($v0)
    b	.L5ef531e8
    lw	$a1,0($a1)
.end expValidateMode

.globl expValidateReducedGC
.ent expValidateReducedGC
expValidateReducedGC:
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    lw	$s3,16($a1)
    lw	$a3,120($a1)
    lw	$s3,116($s3)
    sd	$gp,8($sp)
    lui	$at,0x18
    addiu	$at,$at,9112
    addu	$gp,$t9,$at
    # lw $t9, -29708($gp)
    lw	$a5,nfbGCPrivateIndex
    lw	$a4,76($a0)
    lw	$t9,0($t9)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lw	$a5,132($a1)
    sll	$t9,$t9,0x2
    beqz	$a3,.L5ef3c58c
    addu	$a5,$a5,$t9
    lw	$a0,0($a3)
.L5ef3c280:
    lw	$at,80($s3)
    lw	$a1,88($s3)
    subu	$s3,$a0,$at
    sll	$a2,$s3,0x2
    addu	$a2,$a2,$s3
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    la	$a2,local_0x5f0b0000
    lw	$a1,8($a1)
    ld	$s3,0($sp)
    addiu	$a2,$a2,4096
    sltiu	$at,$a1,15
    sll	$a1,$a1,0x2
    beqz	$at,.L5ef3c318
    addu	$a1,$a1,$a2
    lw	$v0,0($a1)
    ld	$s3,0($sp)
    lui	$a2,0xff
    jr	$v0
    ori	$a2,$a2,0xffff
    lw	$v0,52($a4)
    lw	$v1,44($a4)
    lw	$at,76($a4)
    and	$v0,$v0,$a2
    and	$v1,$v1,$a2
    and	$at,$at,$a2
    sw	$at,76($a4)
    lw	$at,68($a4)
    sw	$v1,44($a4)
    lw	$v1,64($a4)
    sw	$v0,52($a4)
    lw	$v0,40($a4)
    and	$v1,$v1,$a2
    and	$at,$at,$a2
    and	$v0,$v0,$a2
    sw	$v0,40($a4)
    sw	$at,68($a4)
    sw	$v1,64($a4)
.L5ef3c318:
    ld	$gp,8($sp)
.L5ef3c31c:
    jr	$ra
    addiu	$sp,$sp,64
    lw	$v1,40($a4)
    lw	$a2,44($a4)
    andi	$v1,$v1,0xff
    andi	$a2,$a2,0xff
    lw	$v0,52($a4)
    lw	$at,76($a4)
    sw	$a2,44($a4)
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sw	$at,76($a4)
    lw	$at,64($a4)
    sw	$v0,52($a4)
    lw	$v0,68($a4)
    sw	$v1,40($a4)
    andi	$at,$at,0xff
    andi	$v0,$v0,0xff
    sw	$v0,68($a4)
    b	.L5ef3c318
    sw	$at,64($a4)
    lw	$a0,76($a4)
    lw	$v0,64($a4)
    lw	$at,68($a4)
    lw	$a2,40($a4)
    andi	$v0,$v0,0xfff
    andi	$at,$at,0xfff
    andi	$a2,$a2,0xfff
    andi	$a0,$a0,0xfff
    lw	$a1,44($a4)
    sw	$a0,76($a4)
    sw	$a2,40($a4)
    andi	$a1,$a1,0xfff
    sw	$a1,44($a4)
    lw	$a1,52($a4)
    sw	$at,68($a4)
    sw	$v0,64($a4)
    andi	$a1,$a1,0xfff
    sw	$a1,52($a4)
    lb	$v1,1($a5)
    li	$a2,1
    bne	$v1,$a2,.L5ef3c31c
    ld	$gp,8($sp)
    sll	$a2,$a1,0xc
    sw	$a2,52($a4)
    sll	$v1,$a0,0xc
    b	.L5ef3c318
    sw	$v1,76($a4)
    lw	$v1,64($a4)
    lw	$v0,68($a4)
    andi	$v1,$v1,0xfff
    andi	$v0,$v0,0xfff
    sw	$v0,68($a4)
    lw	$a1,76($a4)
    sw	$v1,64($a4)
    lw	$a2,44($a4)
    andi	$a1,$a1,0xfff
    andi	$a0,$a1,0xf00
    andi	$a2,$a2,0xfff
    sw	$a2,44($a4)
    andi	$a2,$a1,0xf
    andi	$a1,$a1,0xf0
    srl	$a1,$a1,0x4
    lw	$at,40($a4)
    sll	$a2,$a2,0x4
    or	$a0,$a0,$a2
    andi	$at,$at,0xfff
    sw	$at,40($a4)
    lw	$at,52($a4)
    or	$a0,$a0,$a1
    sw	$a0,76($a4)
    andi	$at,$at,0xfff
    andi	$a1,$at,0xf0
    srl	$a1,$a1,0x4
    andi	$a2,$at,0xf00
    andi	$at,$at,0xf
    sll	$at,$at,0x4
    or	$a2,$a2,$at
    or	$a1,$a1,$a2
    sw	$a1,52($a4)
    lb	$at,1($a5)
    li	$v0,1
    bne	$at,$v0,.L5ef3c31c
    ld	$gp,8($sp)
    sll	$at,$a1,0xc
    sw	$at,52($a4)
    sll	$a2,$a0,0xc
    b	.L5ef3c318
    sw	$a2,76($a4)
    lw	$a2,40($a4)
    lw	$at,44($a4)
    andi	$a2,$a2,0x3
    andi	$at,$at,0x3
    lw	$v1,52($a4)
    lw	$v0,76($a4)
    sw	$at,44($a4)
    andi	$v1,$v1,0x3
    andi	$v0,$v0,0x3
    sw	$v0,76($a4)
    lw	$v0,64($a4)
    sw	$v1,52($a4)
    lw	$v1,68($a4)
    sw	$a2,40($a4)
    andi	$v0,$v0,0x3
    andi	$v1,$v1,0x3
    sw	$v1,68($a4)
    b	.L5ef3c318
    sw	$v0,64($a4)
    lw	$v0,64($a4)
    lw	$v1,68($a4)
    andi	$v0,$v0,0x3
    andi	$v1,$v1,0x3
    lw	$a2,40($a4)
    lw	$at,44($a4)
    sw	$v1,68($a4)
    andi	$a2,$a2,0x3
    andi	$at,$at,0x3
    sw	$at,44($a4)
    lw	$at,52($a4)
    sw	$a2,40($a4)
    lw	$a2,76($a4)
    sw	$v0,64($a4)
    sll	$at,$at,0x2
    sll	$a2,$a2,0x2
    andi	$a2,$a2,0xc
    andi	$at,$at,0xc
    sw	$at,52($a4)
    b	.L5ef3c318
    sw	$a2,76($a4)
    li	$v1,1
    lw	$at,68($a4)
    lw	$v0,64($a4)
    lw	$a0,76($a4)
    lw	$a2,40($a4)
    andi	$v0,$v0,0xf
    andi	$a0,$a0,0xf
    andi	$a2,$a2,0xf
    andi	$at,$at,0xf
    lw	$a1,44($a4)
    sw	$at,68($a4)
    sw	$a2,40($a4)
    andi	$a1,$a1,0xf
    sw	$a1,44($a4)
    lw	$a1,52($a4)
    sw	$a0,76($a4)
    sw	$v0,64($a4)
    andi	$a1,$a1,0xf
    sw	$a1,52($a4)
    lb	$v0,1($a5)
    bne	$v0,$v1,.L5ef3c31c
    ld	$gp,8($sp)
    sll	$a2,$a1,0x4
    sw	$a2,52($a4)
    sll	$v1,$a0,0x4
    b	.L5ef3c318
    sw	$v1,76($a4)
.L5ef3c58c:
    sd	$a4,24($sp)
    # lw $t9, -29692($gp)
    sd	$a5,16($sp)
    sd	$ra,32($sp)
    jal	FindWindowWithOptional
    move	$a0,$a1
    ld	$a5,16($sp)
    ld	$a4,24($sp)
    lw	$a0,120($v0)
    ld	$ra,32($sp)
    b	.L5ef3c280
    lw	$a0,0($a0)
.end expValidateReducedGC

.globl expValidateWindowGC
.ent expValidateWindowGC
expValidateWindowGC:
    addiu	$sp,$sp,-176
    sd	$s2,40($sp)
    move	$s2,$a2
    sd	$s1,64($sp)
    move	$s1,$a1
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s3,56($sp)
    sd	$gp,32($sp)
    lui	$at,0x18
    addiu	$at,$at,8200
    addu	$gp,$t9,$at
    lw	$t9,nfbGCPrivateIndex
    lw	$s3,76($a0)
    andi	$at,$a1,0x10f
    sll	$t9,$t9,0x2
    addu	$s3,$s3,$t9
    beqz	$at,.L5ef3c620
    lw	$s3,0($s3)
    # lw $t9, -32516($gp)
    move	$a0,$s0
    sd	$ra,104($sp)
    bal	expValidateReducedGC
    move	$a1,$s2
    ld	$ra,104($sp)
.L5ef3c620:
    andi	$t0,$s1,0x800
    beqz	$t0,.L5ef3c654
    andi	$t3,$s1,0x10c
    lw	$at,36($s0)
    beqz	$at,.L5ef3c654
    andi	$t3,$s1,0x10c
    lhu	$v0,12($at)
    slti	$t1,$v0,33
    beqz	$t1,.L5ef3c650
    addiu	$t2,$v0,-1
    and	$t2,$t2,$v0
    beqz	$t2,.L5ef3cb64
.L5ef3c650:
    andi	$t3,$s1,0x10c
.L5ef3c654:
    beqz	$t3,.L5ef3c6a8
    li	$a2,1
    lw	$at,16($s0)
    lui	$t0,0x3ff
    ori	$t0,$t0,0xffff
    and	$at,$at,$t0
    srl	$at,$at,0x18
    beqz	$at,.L5ef3ca44
    li	$t1,1
    beq	$at,$t1,.L5ef3ca28
    li	$t2,2
    beq	$at,$t2,.L5ef3ca98
    li	$t3,3
    beq	$at,$t3,.L5ef3c7f0
    nop	# was lw $t9, -29696($gp)
    la	$a0,local_0x5f0b0000
    sd	$ra,104($sp)
    jal	FatalError
    addiu	$a0,$a0,4160
    ld	$ra,104($sp)
.L5ef3c6a4:
    li	$a2,1
.L5ef3c6a8:
    lui	$t0,0x30
    ori	$t0,$t0,0x20
    and	$t0,$s1,$t0
    beqz	$t0,.L5ef3c818
    move	$t9,$zero
    move	$t8,$zero
    ld	$s1,64($sp)
    lw	$t1,16($s0)
    lw	$a7,expGCPrivateIndex
    lw	$a6,76($s0)
    srl	$t1,$t1,0x1e
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    beq	$t1,$a2,.L5ef3c8f8
    lw	$a6,0($a6)
    sh	$zero,2($a6)
.L5ef3c6e8:
    lhu	$t2,6($s0)
    beqz	$t2,.L5ef3ca18
    move	$a1,$zero
.L5ef3c6f4:
    lw	$v0,16($s0)
    lui	$at,0x3ff
    ori	$at,$at,0xffff
    srl	$t3,$v0,0x1e
    beqz	$t3,.L5ef3ca20
    and	$at,$v0,$at
.L5ef3c70c:
    srl	$at,$at,0x18
    beqzl	$at,.L5ef3c734
    lw	$at,44($s0)
    beq	$a2,$at,.L5ef3ca50
    li	$t0,2
    beq	$at,$t0,.L5ef3ca90
    li	$t1,3
    beq	$at,$t1,.L5ef3caa4
    nop
.L5ef3c730:
    lw	$at,44($s0)
.L5ef3c734:
    beqzl	$at,.L5ef3c774
    lw	$t1,76($s0)
    lw	$v0,12($at)
    andi	$t2,$v0,0x7fff
    srl	$t2,$t2,0xe
    beqz	$t2,.L5ef3ca58
    andi	$t2,$v0,0x3fff
    ori	$a1,$a1,0x10
.L5ef3c754:
    lh	$t0,32($at)
.L5ef3c758:
    lh	$v0,22($at)
    subu	$v0,$v0,$t0
    slti	$t3,$v0,9
    beqz	$t3,.L5ef3c7e0
    slti	$t0,$v0,17
    ori	$a1,$a1,0x40
.L5ef3c770:
    lw	$t1,76($s0)
.L5ef3c774:
    addu	$t1,$t1,$a7
    lw	$t1,0($t1)
    lhu	$t1,2($t1)
    la	$t0,local_0x5f0c0000
    beqz	$t1,.L5ef3c790
    addiu	$t0,$t0,-25512
    ori	$a1,$a1,0x100
.L5ef3c790:
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$t0
    lw	$v0,0($v0)
    beqz	$v0,.L5ef3ca78
    nop	# was lw $t9, -32744($gp)
.L5ef3c7a4:
    sw	$v0,72($s0)
.L5ef3c7a8:
    lh	$at,40($s0)
    lh	$t3,8($s2)
    addu	$t3,$t3,$at
    sh	$t3,88($s3)
    ld	$gp,32($sp)
    lh	$t1,10($s2)
    lh	$t2,42($s0)
    ld	$s0,48($sp)
    ld	$s2,40($sp)
    addu	$t1,$t1,$t2
    sh	$t1,90($s3)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L5ef3c7e0:
    beqz	$t0,.L5ef3c808
    slti	$t0,$v0,33
    b	.L5ef3c770
    ori	$a1,$a1,0x80
.L5ef3c7f0:
    lw	$t1,24($s0)
    lw	$t2,28($s0)
    bne	$t1,$t2,.L5ef3ca6c
    addiu	$t3,$gp,-22100
    b	.L5ef3c6a4
    sw	$t3,36($s3)
.L5ef3c808:
    beqzl	$t0,.L5ef3c774
    lw	$t1,76($s0)
    b	.L5ef3c770
    ori	$a1,$a1,0xc0
.L5ef3c818:
    andi	$t1,$s1,0x4110
    beqz	$t1,.L5ef3c7a8
    ld	$s1,64($sp)
    lhu	$t2,6($s0)
    move	$a1,$zero
    beqz	$t2,.L5ef3cb0c
    ld	$s1,64($sp)
.L5ef3c834:
    lw	$v0,16($s0)
    srl	$t3,$v0,0x1e
    beqz	$t3,.L5ef3cb14
.L5ef3c840:
    lui	$at,0x3ff
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    srl	$at,$at,0x18
    beqz	$at,.L5ef3c870
    li	$t0,1
    beq	$at,$t0,.L5ef3cb1c
    li	$t1,2
    beq	$at,$t1,.L5ef3cc20
    li	$t2,3
    beq	$at,$t2,.L5ef3cdec
    nop
.L5ef3c870:
    lw	$at,44($s0)
    beqz	$at,.L5ef3c8b4
    lw	$t2,expGCPrivateIndex
    lw	$v0,12($at)
    andi	$t3,$v0,0x7fff
    srl	$t3,$t3,0xe
    beqz	$t3,.L5ef3cb24
    andi	$t1,$v0,0x3fff
    ori	$a1,$a1,0x10
.L5ef3c894:
    lh	$v0,22($at)
.L5ef3c898:
    lh	$t0,32($at)
    subu	$v0,$v0,$t0
    slti	$t0,$v0,9
    beqz	$t0,.L5ef3cabc
    slti	$t3,$v0,17
    ori	$a1,$a1,0x40
.L5ef3c8b0:
    lw	$t2,expGCPrivateIndex
.L5ef3c8b4:
    lw	$t1,76($s0)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    lhu	$t1,2($t1)
    beqz	$t1,.L5ef3c8d8
    la	$t0,local_0x5f0c0000
    ori	$a1,$a1,0x100
    la	$t0,local_0x5f0c0000
.L5ef3c8d8:
    sll	$v0,$a1,0x2
    addiu	$t0,$t0,-25512
    addu	$v0,$v0,$t0
    lw	$v0,0($v0)
    beqz	$v0,.L5ef3cb38
    nop	# was lw $t9, -32744($gp)
.L5ef3c8f0:
    b	.L5ef3c7a8
    sw	$v0,72($s0)
.L5ef3c8f8:
    lhu	$t1,10($s0)
    sd	$t1,24($sp)
    blez	$t1,.L5ef3c9f8
    addiu	$v1,$t1,-1
    addiu	$a0,$v1,1
    lw	$at,12($s0)
    andi	$v0,$a0,0x3
    beqz	$v0,.L5ef3c930
    addu	$a1,$a0,$at
.L5ef3c91c:
    addiu	$at,$at,1
    lbu	$t2,-1($at)
    addi	$v0,$v0,-1
    bnez	$v0,.L5ef3c91c
    addu	$t9,$t2,$t9
.L5ef3c930:
    move	$v0,$t9
    sra	$a3,$a0,0x2
    beqz	$a3,.L5ef3c9f8
    move	$v1,$at
    slti	$t3,$a3,2
    bnez	$t3,.L5ef3d010
    move	$at,$v0
    lbu	$a0,2($v1)
    move	$a2,$v1
    addiu	$a5,$a1,-4
    addiu	$a4,$a5,-8
    lbu	$at,0($v1)
    lbu	$t0,1($v1)
    addiu	$a3,$a5,-4
    addu	$at,$at,$v0
    move	$a1,$t0
.L5ef3c970:
    addu	$at,$a1,$at
    addu	$a1,$a0,$at
    lbu	$a0,4($a2)
    lbu	$at,3($a2)
    lbu	$v1,5($a2)
    lbu	$v0,6($a2)
    addu	$at,$at,$a1
    beq	$a2,$a3,.L5ef3cae4
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$a1,$v0,$at
    lbu	$a0,8($a2)
    lbu	$at,7($a2)
    lbu	$v1,9($a2)
    lbu	$v0,10($a2)
    addu	$at,$at,$a1
    beq	$a2,$a4,.L5ef3cacc
    addu	$at,$a0,$at
    addu	$at,$v1,$at
    addu	$v1,$v0,$at
    lbu	$v0,12($a2)
    lbu	$at,11($a2)
    lbu	$a1,13($a2)
    lbu	$a0,14($a2)
    addu	$at,$at,$v1
    addiu	$a2,$a2,12
    bne	$a2,$a5,.L5ef3c970
    addu	$at,$v0,$at
    move	$a3,$a2
    li	$a2,1
.L5ef3c9e8:
    lbu	$t9,3($a3)
    addu	$t0,$a1,$at
    addu	$t0,$a0,$t0
    addu	$t9,$t9,$t0
.L5ef3c9f8:
    slti	$t1,$t9,17
    beqz	$t1,.L5ef3ca10
    addiu	$t2,$t9,-1
    and	$t2,$t2,$t9
    beqz	$t2,.L5ef3cc28
    ld	$v0,24($sp)
.L5ef3ca10:
    b	.L5ef3c6e8
    sh	$zero,2($a6)
.L5ef3ca18:
    b	.L5ef3c6f4
    li	$a1,1
.L5ef3ca20:
    b	.L5ef3c70c
    ori	$a1,$a1,0x2
.L5ef3ca28:
    lbu	$at,4($s0)
    slti	$t3,$at,9
    beqz	$t3,.L5ef3caac
    li	$t1,12
    addiu	$t0,$gp,-22076
    b	.L5ef3c6a4
    sw	$t0,36($s3)
.L5ef3ca44:
    addiu	$t1,$gp,-22100
    b	.L5ef3c6a4
    sw	$t1,36($s3)
.L5ef3ca50:
    b	.L5ef3c730
    ori	$a1,$a1,0x4
.L5ef3ca58:
    srl	$t2,$t2,0xd
    beqz	$t2,.L5ef3cb50
    andi	$t0,$v0,0x1fff
    b	.L5ef3c754
    ori	$a1,$a1,0x30
.L5ef3ca6c:
    addiu	$t3,$gp,-21980
    b	.L5ef3c6a4
    sw	$t3,36($s3)
.L5ef3ca78:
    sd	$ra,104($sp)
    addiu	$t9,$t9,-16564
    bal	expOpStippledFillRects
    move	$a0,$s0
    b	.L5ef3c7a4
    ld	$ra,104($sp)
.L5ef3ca90:
    b	.L5ef3c730
    ori	$a1,$a1,0x8
.L5ef3ca98:
    addiu	$t0,$gp,-22004
    b	.L5ef3c6a4
    sw	$t0,36($s3)
.L5ef3caa4:
    b	.L5ef3c730
    ori	$a1,$a1,0xc
.L5ef3caac:
    beq	$at,$t1,.L5ef3cdf4
    addiu	$t2,$gp,-22028
    b	.L5ef3c6a4
    sw	$t2,36($s3)
.L5ef3cabc:
    beqz	$t3,.L5ef3cafc
    slti	$t0,$v0,33
    b	.L5ef3c8b0
    ori	$a1,$a1,0x80
.L5ef3cacc:
    move	$a0,$v0
    move	$a1,$v1
    move	$a3,$a2
    li	$a2,1
    b	.L5ef3c9e8
    addiu	$a3,$a3,8
.L5ef3cae4:
    move	$a0,$v0
    move	$a1,$v1
    move	$a3,$a2
    li	$a2,1
    b	.L5ef3c9e8
    addiu	$a3,$a3,4
.L5ef3cafc:
    beqz	$t0,.L5ef3c8b4
    lw	$t2,expGCPrivateIndex
    b	.L5ef3c8b0
    ori	$a1,$a1,0xc0
.L5ef3cb0c:
    b	.L5ef3c834
    li	$a1,1
.L5ef3cb14:
    b	.L5ef3c840
    ori	$a1,$a1,0x2
.L5ef3cb1c:
    b	.L5ef3c870
    ori	$a1,$a1,0x4
.L5ef3cb24:
    srl	$t1,$t1,0xd
    beqz	$t1,.L5ef3ce4c
    andi	$t0,$v0,0x1fff
    b	.L5ef3c894
    ori	$a1,$a1,0x30
.L5ef3cb38:
    sd	$ra,104($sp)
    addiu	$t9,$t9,-16564
    bal	expOpStippledFillRects
    move	$a0,$s0
    b	.L5ef3c8f0
    ld	$ra,104($sp)
.L5ef3cb50:
    srl	$t0,$t0,0xc
    beqzl	$t0,.L5ef3c758
    lh	$t0,32($at)
    b	.L5ef3c754
    ori	$a1,$a1,0x20
.L5ef3cb64:
    lhu	$a2,14($at)
    lw	$t1,28($at)
    mult	$t1,$a2
    sd	$s4,120($sp)
    sd	$s5,112($sp)
    move	$s5,$at
    lw	$a0,16($at)
    lbu	$a3,2($at)
    sd	$ra,104($sp)
    lw	$t9,236($a0)
    sd	$s6,128($sp)
    mflo	$s6
    jal	local_0x5ef40000
    lhu	$a1,12($at)
    move	$s4,$v0
    bnez	$v0,.L5ef3ce20
    ld	$ra,104($sp)
    sd	$zero,16($sp)
    ld	$s5,112($sp)
    ld	$s4,120($sp)
    ld	$s6,128($sp)
.L5ef3cbb8:
    ld	$t2,16($sp)
    beqz	$t2,.L5ef3c650
    ld	$at,16($sp)
    lhu	$t9,12($at)
    lbu	$at,3($at)
    mult	$t9,$at
    mflo	$t9
    slti	$t3,$t9,32
    beqz	$t3,.L5ef3cc00
    li	$t1,32
    div	$zero,$t1,$t9
    mflo	$v0
    mult	$v0,$t9
    mflo	$t0
    beq	$t0,$t1,.L5ef3ce60
    teq	$t9,$zero,0x7
.L5ef3cc00:
    lw	$a0,36($s0)
    lw	$t2,24($a0)
    addiu	$t2,$t2,-1
    beqz	$t2,.L5ef3cffc
    sw	$t2,24($a0)
.L5ef3cc14:
    ld	$t3,16($sp)
    b	.L5ef3c650
    sw	$t3,36($s0)
.L5ef3cc20:
    b	.L5ef3c870
    ori	$a1,$a1,0x8
.L5ef3cc28:
    addiu	$v0,$v0,-2
    xori	$t0,$v0,0x2
    sra	$t0,$t0,0x1f
    addu	$t0,$t0,$v0
    srl	$v1,$t0,0x1f
    addu	$v1,$v1,$t0
    sra	$v1,$v1,0x1
    bltz	$v1,.L5ef3cd9c
    addiu	$a0,$v1,1
    andi	$t0,$a0,0x1
    lw	$at,12($s0)
    addu	$a1,$a0,$a0
    subu	$a1,$v0,$a1
    addu	$a1,$a1,$at
    beqz	$t0,.L5ef3cc8c
    addu	$at,$v0,$at
    lbu	$t1,0($at)
    addiu	$at,$at,-2
    lbu	$t2,3($at)
    sllv	$t0,$a2,$t1
    addiu	$t0,$t0,-1
    sllv	$t8,$t8,$t2
    sllv	$t8,$t8,$t1
    or	$t8,$t0,$t8
    andi	$t8,$t8,0xffff
.L5ef3cc8c:
    move	$v1,$t8
    sra	$v0,$a0,0x1
    beqz	$v0,.L5ef3cd9c
    move	$a5,$at
    slti	$t1,$v0,2
    bnez	$t1,.L5ef3d03c
    move	$a0,$v1
    sd	$a6,88($sp)
    move	$a6,$a2
    sd	$a7,96($sp)
    addiu	$t0,$a1,4
    addiu	$a7,$t0,4
    lbu	$t2,-1($a5)
    lbu	$at,1($a5)
    lbu	$a1,-2($a5)
    lbu	$a3,0($a5)
    sllv	$at,$v1,$at
    sllv	$a0,$a2,$a1
    sllv	$a4,$a2,$a3
    move	$a2,$t2
    addiu	$a0,$a0,-1
    addiu	$a4,$a4,-1
.L5ef3cce4:
    sllv	$at,$at,$a3
    or	$at,$a4,$at
    andi	$at,$at,0xffff
    sllv	$at,$at,$a2
    sllv	$at,$at,$a1
    or	$a4,$a0,$at
    lbu	$a3,-4($a5)
    lbu	$a2,-5($a5)
    lbu	$a1,-6($a5)
    lbu	$a0,-3($a5)
    sllv	$at,$a6,$a3
    addiu	$v1,$at,-1
    sllv	$at,$a6,$a1
    addiu	$v0,$at,-1
    andi	$at,$a4,0xffff
    beq	$a5,$a7,.L5ef3ce00
    sllv	$at,$at,$a0
    sllv	$at,$at,$a3
    or	$at,$v1,$at
    andi	$at,$at,0xffff
    sllv	$at,$at,$a2
    sllv	$at,$at,$a1
    or	$v1,$v0,$at
    lbu	$a3,-8($a5)
    lbu	$a2,-9($a5)
    lbu	$a1,-10($a5)
    lbu	$v0,-7($a5)
    sllv	$at,$a6,$a3
    addiu	$a4,$at,-1
    sllv	$at,$a6,$a1
    addiu	$a0,$at,-1
    andi	$at,$v1,0xffff
    addiu	$a5,$a5,-8
    bne	$a5,$t0,.L5ef3cce4
    sllv	$at,$at,$v0
    move	$v0,$a2
    li	$a2,1
    ld	$a6,88($sp)
    ld	$a7,96($sp)
.L5ef3cd80:
    sllv	$t8,$at,$a3
    or	$t8,$a4,$t8
    andi	$t8,$t8,0xffff
    sllv	$t8,$t8,$v0
    sllv	$t8,$t8,$a1
    or	$t8,$a0,$t8
    andi	$t8,$t8,0xffff
.L5ef3cd9c:
    slti	$t0,$t9,16
    beqzl	$t0,.L5ef3cdc4
    lhu	$at,8($s0)
.L5ef3cda8:
    sllv	$t1,$t8,$t9
    addu	$t9,$t9,$t9
    slti	$t0,$t9,16
    or	$t8,$t1,$t8
    bnez	$t0,.L5ef3cda8
    andi	$t8,$t8,0xffff
    lhu	$at,8($s0)
.L5ef3cdc4:
    beqz	$at,.L5ef3cde0
    srav	$t0,$t8,$at
    li	$t1,16
    subu	$t1,$t1,$at
    sllv	$t8,$t8,$t1
    or	$t8,$t8,$t0
    andi	$t8,$t8,0xffff
.L5ef3cde0:
    sh	$a2,2($a6)
    b	.L5ef3c6e8
    sh	$t8,0($a6)
.L5ef3cdec:
    b	.L5ef3c870
    ori	$a1,$a1,0xc
.L5ef3cdf4:
    addiu	$t2,$gp,-22052
    b	.L5ef3c6a4
    sw	$t2,36($s3)
.L5ef3ce00:
    move	$a4,$v1
    move	$t3,$a2
    li	$a2,1
    ld	$a6,88($sp)
    ld	$a7,96($sp)
    move	$a0,$v0
    b	.L5ef3cd80
    move	$v0,$t3
.L5ef3ce20:
    # lw $t9, -29756($gp)
    move	$a2,$s6
    lw	$a1,32($s5)
    jal	memmove
    lw	$a0,32($s4)
    sd	$s4,16($sp)
    ld	$s4,120($sp)
    ld	$ra,104($sp)
    ld	$s5,112($sp)
    b	.L5ef3cbb8
    ld	$s6,128($sp)
.L5ef3ce4c:
    srl	$t0,$t0,0xc
    beqzl	$t0,.L5ef3c898
    lh	$v0,22($at)
    b	.L5ef3c894
    ori	$a1,$a1,0x20
.L5ef3ce60:
    ld	$v1,16($sp)
    lhu	$t1,14($v1)
    move	$a1,$zero
    blez	$t1,.L5ef3cfe0
    lw	$v1,32($v1)
    addiu	$a4,$v0,-1
    move	$t8,$v1
    slti	$t2,$v0,2
    xori	$t2,$t2,0x1
    addiu	$t1,$gp,-28148
    sll	$t0,$t9,0x2
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    sd	$t2,0($sp)
    b	.L5ef3cec0
    sd	$t0,8($sp)
.L5ef3cea0:
    ld	$a4,72($sp)
    ld	$a1,80($sp)
.L5ef3cea8:
    sw	$v0,0($t8)
.L5ef3ceac:
    lhu	$t3,14($t3)
    addiu	$a1,$a1,1
    slt	$t3,$a1,$t3
    beqz	$t3,.L5ef3cfd8
    addiu	$t8,$t8,4
.L5ef3cec0:
    ld	$t3,16($sp)
    move	$v1,$zero
    ld	$t0,8($sp)
    lw	$a2,0($t8)
    move	$a3,$a4
    move	$a7,$a4
    and	$a2,$a2,$t0
    ld	$t0,0($sp)
    sw	$a2,0($t8)
    move	$v0,$a2
    beqz	$t0,.L5ef3ceac
    move	$at,$a2
    andi	$a0,$a4,0x3
    beqz	$a0,.L5ef3cf14
    move	$a5,$v1
.L5ef3cefc:
    addiu	$v1,$v1,1
    addi	$a0,$a0,-1
    srlv	$at,$at,$t9
    bnez	$a0,.L5ef3cefc
    or	$v0,$v0,$at
    move	$a5,$v1
.L5ef3cf14:
    move	$a0,$v0
    sra	$t1,$a3,0x2
    beqz	$t1,.L5ef3cea8
    move	$a2,$at
    move	$a3,$t9
    sd	$a1,80($sp)
    addiu	$a6,$a4,-8
    sd	$a4,72($sp)
    addiu	$t2,$a4,-4
    move	$a4,$t2
    srlv	$a2,$a2,$t9
    or	$at,$a0,$a2
    srlv	$a2,$a2,$t9
    srlv	$a0,$a2,$t9
    srlv	$a1,$a0,$t9
.L5ef3cf50:
    or	$at,$at,$a2
    or	$v0,$at,$a0
    srlv	$at,$a1,$a3
    srlv	$a0,$at,$a3
    srlv	$v1,$a0,$a3
    srlv	$a2,$v1,$a3
    or	$v0,$v0,$a1
    beq	$a5,$a4,.L5ef3cea0
    or	$at,$v0,$at
    or	$at,$at,$a0
    or	$v0,$at,$v1
    srlv	$at,$a2,$a3
    srlv	$a1,$at,$a3
    srlv	$a0,$a1,$a3
    srlv	$v1,$a0,$a3
    or	$v0,$v0,$a2
    beq	$a5,$a6,.L5ef3cfcc
    or	$at,$v0,$at
    or	$at,$at,$a1
    or	$v0,$at,$a0
    srlv	$at,$v1,$a3
    srlv	$a2,$at,$a3
    srlv	$a0,$a2,$a3
    srlv	$a1,$a0,$a3
    or	$v0,$v0,$v1
    addiu	$a5,$a5,12
    bne	$a5,$a7,.L5ef3cf50
    or	$at,$v0,$at
    ld	$a4,72($sp)
    b	.L5ef3cea8
    ld	$a1,80($sp)
.L5ef3cfcc:
    ld	$a4,72($sp)
    b	.L5ef3cea8
    ld	$a1,80($sp)
.L5ef3cfd8:
    ld	$at,16($sp)
    lbu	$at,3($at)
.L5ef3cfe0:
    li	$t2,32
    div	$zero,$t2,$at
    teq	$at,$zero,0x7
    ld	$t1,16($sp)
    mflo	$t0
    b	.L5ef3cc00
    sh	$t0,12($t1)
.L5ef3cffc:
    # lw $t9, -29644($gp)
    jal	Xfree
    nop
    b	.L5ef3cc14
    ld	$ra,104($sp)
.L5ef3d010:
    move	$a3,$v1
    lbu	$t3,3($a3)
    lbu	$t2,0($a3)
    lbu	$t1,1($a3)
    lbu	$t0,2($a3)
    addu	$at,$t2,$at
    addu	$at,$t1,$at
    addu	$at,$t0,$at
    addu	$at,$t3,$at
    b	.L5ef3c9f8
    move	$t9,$at
.L5ef3d03c:
    move	$v0,$a5
    lbu	$t1,-2($v0)
    sllv	$t0,$a2,$t1
    lbu	$t2,0($v0)
    addiu	$t0,$t0,-1
    lbu	$at,1($v0)
    sllv	$t3,$a2,$t2
    addiu	$t3,$t3,-1
    sllv	$a0,$a0,$at
    sllv	$a0,$a0,$t2
    lbu	$t2,-1($v0)
    or	$a0,$t3,$a0
    andi	$a0,$a0,0xffff
    sllv	$a0,$a0,$t2
    sllv	$a0,$a0,$t1
    or	$a0,$t0,$a0
    andi	$a0,$a0,0xffff
    b	.L5ef3cd9c
    move	$t8,$a0
    nop
.end expValidateWindowGC

.globl expValidateVisual
.ent expValidateVisual
expValidateVisual:
    addiu	$sp,$sp,-480
    sd	$s1,312($sp)
    sd	$gp,320($sp)
    lui	$a3,0x16
    addiu	$a3,$a3,-12960
    addu	$gp,$t9,$a3
    la	$v0,WindowTable
    move	$s1,$a0
    lw	$a0,0($a0)
    lw	$v0,0($v0)
    sd	$s4,384($sp)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    sd	$zero,336($sp)
    sd	$s0,328($sp)
    beqz	$v0,.L5ef618d0
    lw	$s0,116($s1)
    lw	$at,nfbWindowPrivateIndex
    lw	$s4,132($v0)
    sll	$at,$at,0x2
    addu	$s4,$s4,$at
    lw	$s4,0($s4)
    lw	$s4,24($s4)
    sd	$ra,376($sp)
    b	.L5ef618d8
    sltu	$s4,$zero,$s4
.L5ef618d0:
    sd	$ra,376($sp)
    move	$s4,$zero
.L5ef618d8:
    lw	$t9,340($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$t9,340($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,16
    beqzl	$s4,.L5ef61920
    lw	$v0,84($s0)
    lw	$t9,340($s1)
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$v0,84($s0)
.L5ef61920:
    sd	$s2,416($sp)
    addiu	$v0,$v0,-1
    slti	$a3,$v0,0
    bnez	$a3,.L5ef6195c
    sd	$s3,400($sp)
    sll	$s2,$v0,0x2
    subu	$s2,$s2,$v0
    sll	$s2,$s2,0x2
    addiu	$at,$v0,1
    subu	$at,$v0,$at
    sll	$s3,$at,0x2
    subu	$s3,$s3,$at
    b	.L5ef62dcc
    sll	$s3,$s3,0x2
.L5ef61958:
    ld	$s2,416($sp)
.L5ef6195c:
    lw	$t9,404($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,0
    beqzl	$s4,.L5ef61b30
    sd	$s4,352($sp)
    lw	$t9,404($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$t9,364($s1)
    lw	$a2,44($s0)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$v0,40($sp)
    beqz	$v0,.L5ef619b0
    lw	$a3,expScreenPrivateIndex
    lw	$at,4($v0)
    beqz	$at,.L5ef61b2c
    lw	$a3,expScreenPrivateIndex
.L5ef619b0:
    lw	$a1,436($s1)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    lw	$a1,0($a1)
    beqz	$v0,.L5ef63368
    lw	$a1,0($a1)
    addiu	$v1,$v0,8
.L5ef619cc:
    beqz	$v0,.L5ef63370
    move	$a0,$v1
    lw	$a2,4($v0)
.L5ef619d8:
    li	$a6,1
    slt	$a4,$a2,$a6
    beqzl	$a4,.L5ef619e8
    move	$a6,$a2
.L5ef619e8:
    move	$v1,$a2
    li	$a5,3
    lui	$at,0xff
    ori	$at,$at,0xffff
    andi	$a4,$a6,0x1
    li	$a3,1
    lui	$a7,0x4
    addu	$a7,$a1,$a7
    sd	$a3,336($sp)
    li	$a3,4
    sw	$a3,1324($a7)
    sw	$zero,1236($a7)
    sw	$zero,1328($a7)
    sw	$at,1916($a7)
    sw	$a5,1916($a7)
    sw	$zero,1916($a7)
    beqz	$a4,.L5ef61a58
    sw	$zero,1216($a7)
    lh	$a4,0($a0)
    sw	$a4,1916($a7)
    lh	$a3,2($a0)
    sw	$a3,1916($a7)
    lh	$at,4($a0)
    sw	$at,1916($a7)
    lh	$a5,6($a0)
    addiu	$v1,$v1,-1
    addiu	$a0,$a0,8
    sw	$a5,1916($a7)
.L5ef61a58:
    move	$a2,$v1
    sra	$a1,$a6,0x1
    beqz	$a1,.L5ef61b10
    move	$v0,$a0
    slti	$a5,$a1,2
    bnez	$a5,.L5ef633f8
    move	$v1,$a2
    lh	$at,0($v0)
    addiu	$a0,$a2,-2
    move	$v1,$a7
.L5ef61a80:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    sw	$at,1916($v1)
    lh	$at,8($v0)
    sw	$at,1916($v1)
    lh	$at,10($v0)
    sw	$at,1916($v1)
    lh	$at,12($v0)
    sw	$at,1916($v1)
    lh	$at,14($v0)
    addiu	$a0,$a0,-2
    addiu	$v0,$v0,16
    sw	$at,1916($v1)
    bnez	$a0,.L5ef61a80
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a7)
    move	$a6,$v0
    lh	$a5,2($a6)
    sw	$a5,1916($a7)
    lh	$a4,4($a6)
    sw	$a4,1916($a7)
    lh	$a3,6($a6)
    sw	$a3,1916($a7)
    lh	$a5,8($a6)
    sw	$a5,1916($a7)
    lh	$a4,10($a6)
    sw	$a4,1916($a7)
    lh	$a3,12($a6)
    sw	$a3,1916($a7)
    lh	$a6,14($a6)
    sw	$a6,1916($a7)
.L5ef61b10:
    sw	$zero,1960($a7)
    lw	$t9,360($s1)
    addiu	$a2,$sp,32
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,0
    sd	$s2,416($sp)
.L5ef61b2c:
    sd	$s4,352($sp)
.L5ef61b30:
    sd	$s5,368($sp)
    sd	$s3,400($sp)
    sd	$s6,408($sp)
    move	$s6,$zero
    sd	$s8,360($sp)
    lw	$a4,52($sp)
    sd	$s7,392($sp)
    lw	$v0,84($s0)
    sd	$s2,416($sp)
    beqz	$v0,.L5ef62930
    move	$s2,$zero
    lw	$s7,56($sp)
    li	$s8,3
    move	$s3,$zero
    sd	$s4,352($sp)
    sd	$s5,368($sp)
    b	.L5ef61e34
    sd	$a4,344($sp)
.L5ef61b78:
    beqz	$v0,.L5ef61f90
    li	$s4,1
    lw	$s4,4($v0)
.L5ef61b84:
    lw	$a3,436($s1)
.L5ef61b88:
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    lw	$a3,0($a3)
    li	$at,8
    lui	$a1,0x4
    addu	$a1,$a1,$a3
    beq	$s2,$a5,.L5ef6204c
    sw	$at,1324($a1)
    li	$a5,33
    beq	$s2,$a5,.L5ef625d4
    li	$at,34
    beql	$s2,$at,.L5ef62014
    li	$s7,12
    sd	$a1,448($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s2
    jal	ErrorF
    addiu	$a0,$a0,-1688
    ld	$a1,448($sp)
.L5ef61bdc:
    li	$a3,13
    beq	$s7,$a3,.L5ef62058
    li	$a4,14
    beq	$s7,$a4,.L5ef62744
    li	$a5,11
    ld	$at,344($sp)
    li	$a3,8
    li	$a5,12
    beq	$s7,$a5,.L5ef625e4
    move	$v1,$zero
    ld	$v1,344($sp)
    move	$v0,$zero
    sw	$s7,1324($a1)
    sw	$zero,1236($a1)
.L5ef61c14:
    slti	$a3,$s4,2
    sw	$zero,1328($a1)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$v1,$at
    sw	$at,1916($a1)
    sw	$s8,1916($a1)
    beqz	$s4,.L5ef61cb0
    sw	$v0,1916($a1)
    move	$v0,$s5
    sll	$v1,$s4,0x3
    bnez	$a3,.L5ef6351c
    addu	$v1,$s5,$v1
    addiu	$a0,$v1,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef61c58:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef61c58
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef61cb0:
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    li	$a5,8
    lui	$a1,0x4
    beqz	$v0,.L5ef61ff8
    lw	$at,expScreenPrivateIndex
    beqz	$v0,.L5ef62000
    addiu	$s5,$v0,8
.L5ef61ce0:
    lw	$s4,4($v0)
.L5ef61ce4:
    lw	$a3,436($s1)
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    lw	$a3,0($a3)
    li	$a4,32
    addu	$a1,$a1,$a3
    beq	$s2,$a4,.L5ef62020
    sw	$a5,1324($a1)
    li	$a3,33
    beq	$s2,$a3,.L5ef625c4
    li	$a4,34
    beql	$s2,$a4,.L5ef62008
    li	$s7,12
    sd	$a1,456($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s2
    jal	ErrorF
    addiu	$a0,$a0,-1688
    ld	$a1,456($sp)
.L5ef61d38:
    li	$a3,13
    beq	$s7,$a3,.L5ef6202c
    li	$a4,14
    beq	$s7,$a4,.L5ef62724
    ld	$a3,344($sp)
    li	$a4,8
    li	$a5,12
    beq	$s7,$a5,.L5ef625f8
    move	$v0,$zero
    ld	$v0,344($sp)
    move	$v1,$zero
    sw	$s7,1324($a1)
    sw	$zero,1236($a1)
.L5ef61d6c:
    slti	$a3,$s4,2
    sw	$zero,1328($a1)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    sw	$at,1916($a1)
    sw	$s8,1916($a1)
    beqz	$s4,.L5ef61e08
    sw	$v1,1916($a1)
    move	$v0,$s5
    sll	$v1,$s4,0x3
    bnez	$a3,.L5ef63548
    addu	$v1,$s5,$v1
    addiu	$a0,$v1,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef61db0:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef61db0
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef61e08:
    lw	$a1,92($s0)
.L5ef61e0c:
    addu	$a1,$a1,$s3
.L5ef61e10:
    lw	$t9,392($s1)
.L5ef61e14:
    addiu	$s2,$s2,1
    addiu	$s6,$s6,4
    jalr	$t9
    move	$a0,$a1
    lw	$v0,84($s0)
    sltu	$a3,$s2,$v0
    beqz	$a3,.L5ef62930
    addiu	$s3,$s3,12
.L5ef61e34:
    slti	$a4,$s2,32
    bnezl	$a4,.L5ef61f98
    lw	$a0,96($s0)
    lw	$s4,48($s0)
    addu	$s4,$s4,$s6
    lw	$s4,0($s4)
    lw	$a5,60($s0)
    sll	$at,$s4,0x2
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    sll	$s5,$s4,0x2
    beqz	$a5,.L5ef61e08
    subu	$s5,$s5,$s4
    addiu	$a0,$sp,16
    sll	$s5,$s5,0x2
    lw	$a2,44($s0)
    lw	$t9,364($s1)
    lw	$a1,96($s0)
    addu	$a2,$a2,$s5
    jalr	$t9
    addu	$a1,$a1,$s3
    lw	$a1,44($s0)
    lw	$t9,344($s1)
    lw	$a0,96($s0)
    addu	$a1,$a1,$s5
    jalr	$t9
    addu	$a0,$a0,$s3
    slti	$a3,$s4,3
    beqz	$a3,.L5ef61ed8
    nop
    lw	$a4,60($s0)
    lw	$a4,12($a4)
    beqz	$a4,.L5ef61ed8
    addiu	$a1,$sp,16
    lw	$t9,364($s1)
    lw	$a2,44($s0)
    addiu	$a0,$sp,16
    jalr	$t9
    addiu	$a2,$a2,36
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef61ed8:
    beq	$s4,$s8,.L5ef621c4
.L5ef61edc:
    lw	$v0,24($sp)
.L5ef61ee0:
    lui	$a1,0x4
    addiu	$s5,$sp,16
    beqz	$v0,.L5ef61efc
    li	$a4,1
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef61e0c
    lw	$a1,92($s0)
.L5ef61efc:
    beql	$s4,$s8,.L5ef61e0c
    lw	$a1,92($s0)
    lw	$v1,220($s0)
    beqz	$v1,.L5ef62078
    li	$s4,1
    beql	$a4,$v1,.L5ef6229c
    sh	$zero,256($sp)
    sh	$zero,280($sp)
    lh	$a6,8($s1)
    sh	$zero,282($sp)
    sh	$a6,284($sp)
    lhu	$a5,224($s0)
    sh	$a5,286($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,280
    jalr	$t9
    addiu	$a0,$sp,288
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,288
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    li	$a5,32
    addiu	$s5,$sp,16
    beqz	$v0,.L5ef61b78
    lw	$a4,expScreenPrivateIndex
    lw	$at,4($v0)
    beqzl	$at,.L5ef61e0c
    lw	$a1,92($s0)
    beqz	$v0,.L5ef61b78
    nop
    addiu	$s5,$v0,8
    bnezl	$v0,.L5ef61b84
    lw	$s4,4($v0)
    li	$s4,1
.L5ef61f90:
    b	.L5ef61b88
    lw	$a3,436($s1)
.L5ef61f98:
    lw	$t9,364($s1)
    addiu	$a2,$sp,0
    addu	$a0,$a0,$s3
    jalr	$t9
    move	$a1,$a0
    lw	$a1,92($s0)
    addu	$a1,$a1,$s3
    lw	$v0,8($a1)
    beqzl	$v0,.L5ef61fd0
    lw	$a0,96($s0)
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef61e14
    lw	$t9,392($s1)
    lw	$a0,96($s0)
.L5ef61fd0:
    lw	$t9,360($s1)
    addu	$a0,$a0,$s3
    jalr	$t9
    move	$a2,$a0
    lw	$a1,92($s0)
    ld	$a3,336($sp)
    addu	$a1,$a1,$s3
    addiu	$a3,$a3,1
    b	.L5ef61e10
    sd	$a3,336($sp)
.L5ef61ff8:
    bnez	$v0,.L5ef61ce0
    addiu	$s5,$sp,16
.L5ef62000:
    b	.L5ef61ce4
    li	$s4,1
.L5ef62008:
    li	$a4,15
    b	.L5ef61d38
    sd	$a4,344($sp)
.L5ef62014:
    li	$a5,15
    b	.L5ef61bdc
    sd	$a5,344($sp)
.L5ef62020:
    li	$s7,3
    sd	$s7,344($sp)
    li	$s7,13
.L5ef6202c:
    li	$v1,1
    move	$v0,$zero
    ld	$at,344($sp)
    li	$a3,11
    sw	$a3,1324($a1)
    andi	$at,$at,0x3
    b	.L5ef61d6c
    sw	$at,1236($a1)
.L5ef6204c:
    li	$s7,13
    li	$a3,3
    sd	$a3,344($sp)
.L5ef62058:
    li	$v0,1
    move	$v1,$zero
    ld	$a4,344($sp)
    li	$a5,11
    sw	$a5,1324($a1)
    andi	$a4,$a4,0x3
    b	.L5ef61c14
    sw	$a4,1236($a1)
.L5ef62078:
    li	$a5,32
    beqz	$v0,.L5ef62888
    nop
    addiu	$s5,$v0,8
    beqz	$v0,.L5ef62890
    nop
    lw	$s4,4($v0)
.L5ef62094:
    lw	$a4,expScreenPrivateIndex
.L5ef62098:
    lw	$a3,436($s1)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    lw	$a3,0($a3)
    li	$at,8
    addu	$a1,$a1,$a3
    beq	$s2,$a5,.L5ef62904
    sw	$at,1324($a1)
    li	$a5,33
    beq	$s2,$a5,.L5ef62d30
    li	$at,34
    beq	$s2,$at,.L5ef62898
    li	$a3,15
    sd	$a1,440($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s2
    jal	ErrorF
    addiu	$a0,$a0,-1688
    ld	$a1,440($sp)
.L5ef620ec:
    li	$a3,13
    beq	$s7,$a3,.L5ef62910
    li	$a4,14
    beq	$s7,$a4,.L5ef62e70
    ld	$at,344($sp)
    li	$a3,8
    li	$a5,12
    beq	$s7,$a5,.L5ef62da0
    move	$v0,$zero
    ld	$v0,344($sp)
    move	$v1,$zero
    sw	$s7,1324($a1)
    sw	$zero,1236($a1)
.L5ef62120:
    slti	$a3,$s4,2
    sw	$zero,1328($a1)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    sw	$at,1916($a1)
    sw	$s8,1916($a1)
    beqz	$s4,.L5ef61e08
    sw	$v1,1916($a1)
    move	$v0,$s5
    sll	$v1,$s4,0x3
    bnez	$a3,.L5ef63498
    addu	$v1,$s5,$v1
    addiu	$a0,$v1,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef62164:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef62164
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef621bc:
    b	.L5ef61e0c
    lw	$a1,92($s0)
.L5ef621c4:
    lw	$v0,24($sp)
    beqzl	$v0,.L5ef621e0
    lw	$a5,60($s0)
    lw	$a4,4($v0)
    beqzl	$a4,.L5ef61ee0
    lw	$v0,24($sp)
    lw	$a5,60($s0)
.L5ef621e0:
    lw	$a5,4($a5)
    beqz	$a5,.L5ef62760
    addiu	$a1,$sp,16
    lw	$t9,364($s1)
    lw	$a2,44($s0)
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a2,$a2,12
    lw	$v0,8($sp)
    beqz	$v0,.L5ef62218
    li	$a4,1
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef62668
    lw	$a4,60($s0)
.L5ef62218:
    lw	$v1,220($s0)
    beqz	$v1,.L5ef62f2c
    nop
    beql	$a4,$v1,.L5ef62f84
    sh	$zero,64($sp)
    sh	$zero,88($sp)
    lh	$a6,8($s1)
    sh	$zero,90($sp)
    sh	$a6,92($sp)
    lhu	$a5,224($s0)
    sh	$a5,94($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,88
    jalr	$t9
    addiu	$a0,$sp,96
    lw	$t9,356($s1)
    addiu	$a2,$sp,0
    addiu	$a1,$sp,96
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef6260c
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef62668
    lw	$a4,60($s0)
    beqz	$v0,.L5ef6260c
    nop
    bnez	$v0,.L5ef62614
    addiu	$a0,$v0,8
.L5ef62294:
    b	.L5ef62618
    li	$a1,1
.L5ef6229c:
    lh	$a1,8($s1)
    sh	$a1,260($sp)
    lhu	$a0,226($s0)
    sh	$a0,258($sp)
    lhu	$v1,226($s0)
    lhu	$v0,224($s0)
    addu	$v0,$v0,$v1
    sh	$v0,262($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,256
    jalr	$t9
    addiu	$a0,$sp,264
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,264
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    li	$a5,8
    lui	$a1,0x4
    beqz	$v0,.L5ef62320
    lw	$at,expScreenPrivateIndex
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef61e0c
    lw	$a1,92($s0)
    beqz	$v0,.L5ef62320
    addiu	$s5,$v0,8
    bnezl	$v0,.L5ef62330
    lw	$s4,4($v0)
    li	$s4,1
.L5ef62318:
    b	.L5ef62334
    lw	$a3,436($s1)
.L5ef62320:
    addiu	$s5,$sp,16
    beqz	$v0,.L5ef62318
    li	$s4,1
    lw	$s4,4($v0)
.L5ef62330:
    lw	$a3,436($s1)
.L5ef62334:
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    lw	$a3,0($a3)
    li	$a4,32
    addu	$a1,$a1,$a3
    beq	$s2,$a4,.L5ef62cb4
    sw	$a5,1324($a1)
    li	$a3,33
    beq	$s2,$a3,.L5ef62e90
    li	$a4,34
    beql	$s2,$a4,.L5ef62c9c
    li	$s7,12
    sd	$a1,432($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s2
    jal	ErrorF
    addiu	$a0,$a0,-1688
    ld	$a1,432($sp)
.L5ef62384:
    li	$a3,13
    beq	$s7,$a3,.L5ef62cc0
    li	$a4,14
    beq	$s7,$a4,.L5ef62ef8
    li	$a5,11
    ld	$at,344($sp)
    li	$a3,8
    li	$a5,12
    beq	$s7,$a5,.L5ef62eb0
    move	$v0,$zero
    ld	$v0,344($sp)
    move	$v1,$zero
    sw	$s7,1324($a1)
    sw	$zero,1236($a1)
.L5ef623bc:
    slti	$a3,$s4,2
    sw	$zero,1328($a1)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$v0,$at
    sw	$at,1916($a1)
    sw	$s8,1916($a1)
    beqz	$s4,.L5ef62458
    sw	$v1,1916($a1)
    move	$v0,$s5
    sll	$v1,$s4,0x3
    bnez	$a3,.L5ef634c4
    addu	$v1,$s5,$v1
    addiu	$a0,$v1,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef62400:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef62400
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef62458:
    move	$a1,$zero
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    addiu	$a0,$sp,16
    jalr	$t9
    negu	$a2,$a2
    lw	$v0,24($sp)
    li	$a4,8
    lui	$a1,0x4
    beqz	$v0,.L5ef62c8c
    lw	$at,expScreenPrivateIndex
    beqz	$v0,.L5ef62c94
    addiu	$s5,$v0,8
.L5ef6248c:
    lw	$s4,4($v0)
.L5ef62490:
    lw	$a5,436($s1)
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    lw	$a5,0($a5)
    li	$a3,32
    addu	$a1,$a1,$a5
    beq	$s2,$a3,.L5ef62ce0
    sw	$a4,1324($a1)
    li	$a3,33
    beq	$s2,$a3,.L5ef62ea0
    li	$a4,34
    beql	$s2,$a4,.L5ef62ca8
    li	$s7,12
    sd	$a1,424($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s2
    jal	ErrorF
    addiu	$a0,$a0,-1688
    ld	$a1,424($sp)
.L5ef624e4:
    li	$a3,13
    beq	$s7,$a3,.L5ef62cec
    li	$at,11
    li	$a4,14
    beq	$s7,$a4,.L5ef62f14
    ld	$a5,344($sp)
    ld	$a3,344($sp)
    li	$a4,8
    li	$a5,12
    beq	$s7,$a5,.L5ef62ec4
    move	$v1,$zero
    ld	$v1,344($sp)
    move	$v0,$zero
    sw	$s7,1324($a1)
    sw	$zero,1236($a1)
.L5ef62520:
    slti	$a3,$s4,2
    sw	$zero,1328($a1)
    lui	$at,0xff
    ori	$at,$at,0xffff
    and	$at,$v1,$at
    sw	$at,1916($a1)
    sw	$s8,1916($a1)
    beqz	$s4,.L5ef61e08
    sw	$v0,1916($a1)
    move	$v0,$s5
    sll	$v1,$s4,0x3
    bnez	$a3,.L5ef634f0
    addu	$v1,$s5,$v1
    addiu	$a0,$v1,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef62564:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef62564
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef625bc:
    b	.L5ef61e0c
    lw	$a1,92($s0)
.L5ef625c4:
    li	$s7,14
    li	$a4,12
    b	.L5ef61d38
    sd	$a4,344($sp)
.L5ef625d4:
    li	$s7,14
    li	$a5,12
    b	.L5ef61bdc
    sd	$a5,344($sp)
.L5ef625e4:
    li	$v0,1
    sw	$a3,1324($a1)
    andi	$at,$at,0xf
    b	.L5ef61c14
    sw	$at,1236($a1)
.L5ef625f8:
    li	$v1,1
    sw	$a4,1324($a1)
    andi	$a3,$a3,0xf
    b	.L5ef61d6c
    sw	$a3,1236($a1)
.L5ef6260c:
    beqz	$v0,.L5ef62294
    addiu	$a0,$sp,0
.L5ef62614:
    lw	$a1,4($v0)
.L5ef62618:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef62ed8
    nop
    beqz	$v0,.L5ef62ee0
    addiu	$a0,$v0,8
.L5ef62650:
    lw	$a1,4($v0)
.L5ef62654:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    lw	$a4,60($s0)
.L5ef62668:
    lw	$a4,8($a4)
    beqz	$a4,.L5ef62800
    addiu	$a1,$sp,16
    lw	$t9,364($s1)
    lw	$a2,44($s0)
    addiu	$a0,$sp,16
    jalr	$t9
    addiu	$a2,$a2,24
    lw	$v0,24($sp)
    beqzl	$v0,.L5ef626a4
    lw	$v1,220($s0)
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef61ee0
    lw	$v0,24($sp)
    lw	$v1,220($s0)
.L5ef626a4:
    beqz	$v1,.L5ef62f50
    li	$a4,1
    beql	$a4,$v1,.L5ef62ffc
    sh	$zero,160($sp)
    sh	$zero,184($sp)
    lh	$a6,8($s1)
    sh	$zero,186($sp)
    sh	$a6,188($sp)
    lhu	$a5,224($s0)
    sh	$a5,190($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,184
    jalr	$t9
    addiu	$a0,$sp,192
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,192
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    beqz	$v0,.L5ef628a4
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef61ee0
    lw	$v0,24($sp)
    beqz	$v0,.L5ef628a4
    nop
    bnez	$v0,.L5ef628ac
    addiu	$a0,$v0,8
.L5ef6271c:
    b	.L5ef628b0
    li	$a1,1
.L5ef62724:
    li	$v1,9
    move	$v0,$zero
    ld	$a3,344($sp)
    li	$a4,11
    sw	$a4,1324($a1)
    andi	$a3,$a3,0xc
    b	.L5ef61d6c
    sw	$a3,1236($a1)
.L5ef62744:
    li	$v0,9
    ld	$a4,344($sp)
    move	$v1,$zero
    sw	$a5,1324($a1)
    andi	$a4,$a4,0xc
    b	.L5ef61c14
    sw	$a4,1236($a1)
.L5ef62760:
    lw	$a5,220($s0)
    beqz	$a5,.L5ef62d0c
    nop
    lw	$t9,344($s1)
    addiu	$a1,$sp,16
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v1,220($s0)
    beqz	$v1,.L5ef6325c
    li	$at,1
    beql	$at,$v1,.L5ef6328c
    sh	$zero,112($sp)
    sh	$zero,136($sp)
    lh	$v1,8($s1)
    sh	$zero,138($sp)
    sh	$v1,140($sp)
    lhu	$v0,224($s0)
    sh	$v0,142($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,136
    jalr	$t9
    addiu	$a0,$sp,144
    lw	$t9,356($s1)
    addiu	$a2,$sp,0
    addiu	$a1,$sp,144
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef62d40
    nop
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef62668
    lw	$a4,60($s0)
    beqz	$v0,.L5ef62d40
    nop
    bnez	$v0,.L5ef62d48
    addiu	$a0,$v0,8
.L5ef627f8:
    b	.L5ef62d4c
    li	$a1,1
.L5ef62800:
    lw	$v1,220($s0)
    lw	$v0,24($sp)
    beqz	$v1,.L5ef63074
    li	$a4,1
    beql	$a4,$v1,.L5ef63160
    sh	$zero,208($sp)
    sh	$zero,232($sp)
    lh	$a6,8($s1)
    sh	$zero,234($sp)
    sh	$a6,236($sp)
    lhu	$a5,224($s0)
    sh	$a5,238($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,232
    jalr	$t9
    addiu	$a0,$sp,240
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,240
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    beqz	$v0,.L5ef62a94
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef61ee0
    lw	$v0,24($sp)
    beqz	$v0,.L5ef62a94
    nop
    bnez	$v0,.L5ef62a9c
    addiu	$v1,$v0,8
.L5ef62880:
    b	.L5ef62aa0
    li	$a0,1
.L5ef62888:
    bnezl	$v0,.L5ef62094
    lw	$s4,4($v0)
.L5ef62890:
    b	.L5ef62098
    lw	$a4,expScreenPrivateIndex
.L5ef62898:
    li	$s7,12
    b	.L5ef620ec
    sd	$a3,344($sp)
.L5ef628a4:
    beqz	$v0,.L5ef6271c
    addiu	$a0,$sp,16
.L5ef628ac:
    lw	$a1,4($v0)
.L5ef628b0:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    beqz	$v0,.L5ef62ee8
    nop
    beqz	$v0,.L5ef62ef0
    addiu	$a0,$v0,8
.L5ef628e8:
    lw	$a1,4($v0)
.L5ef628ec:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef62904:
    li	$a4,3
    li	$s7,13
    sd	$a4,344($sp)
.L5ef62910:
    li	$v1,1
    move	$v0,$zero
    ld	$a5,344($sp)
    li	$at,11
    sw	$at,1324($a1)
    andi	$a5,$a5,0x3
    b	.L5ef62120
    sw	$a5,1236($a1)
.L5ef62930:
    ld	$s8,360($sp)
    ld	$s5,368($sp)
    ld	$s4,384($sp)
    ld	$s7,392($sp)
    ld	$at,336($sp)
    ld	$s3,400($sp)
    ld	$s6,408($sp)
    beqz	$at,.L5ef62a48
    ld	$s2,416($sp)
    ld	$s8,360($sp)
    ld	$s5,368($sp)
    ld	$s4,384($sp)
    ld	$s7,392($sp)
    ld	$a3,352($sp)
    ld	$s3,400($sp)
    ld	$s6,408($sp)
    beqz	$a3,.L5ef62a04
    ld	$s2,416($sp)
    lw	$t9,352($s1)
    jalr	$t9
    addiu	$a0,$sp,32
    sh	$zero,304($sp)
    sh	$zero,306($sp)
    lh	$a5,8($s1)
    sh	$a5,308($sp)
    lh	$a4,10($s1)
    sh	$a4,310($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,304
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$t9,364($s1)
    lw	$a2,44($s0)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    lw	$v0,40($sp)
    beqzl	$v0,.L5ef629e0
    lw	$t9,344($s1)
    lw	$at,4($v0)
    beqzl	$at,.L5ef62a04
    lw	$v0,84($s0)
    lw	$t9,344($s1)
.L5ef629e0:
    lw	$a1,96($s0)
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$t9,360($s1)
    lw	$a0,96($s0)
    addiu	$a2,$sp,32
    jalr	$t9
    move	$a1,$a0
    lw	$v0,84($s0)
.L5ef62a04:
    # lw $t9, -32348($gp)
    move	$a0,$s1
    lw	$a2,96($s0)
    jal	expvc1ComputeDIDTable
    addiu	$a1,$v0,-3
    ld	$a3,352($sp)
    beqz	$a3,.L5ef62a48
    lw	$v0,40($sp)
    beqzl	$v0,.L5ef62a3c
    lw	$t9,344($s1)
    lw	$a4,4($v0)
    beqzl	$a4,.L5ef62a4c
    lw	$t9,352($s1)
    lw	$t9,344($s1)
.L5ef62a3c:
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,96($s0)
.L5ef62a48:
    lw	$t9,352($s1)
.L5ef62a4c:
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$t9,352($s1)
    jalr	$t9
    addiu	$a0,$sp,16
    ld	$ra,376($sp)
    ld	$a5,352($sp)
    beqzl	$a5,.L5ef62a84
    ld	$gp,320($sp)
    lw	$t9,352($s1)
    jalr	$t9
    addiu	$a0,$sp,32
    ld	$ra,376($sp)
    ld	$gp,320($sp)
.L5ef62a84:
    ld	$s0,328($sp)
    ld	$s1,312($sp)
    jr	$ra
    addiu	$sp,$sp,480
.L5ef62a94:
    beqz	$v0,.L5ef62880
    addiu	$v1,$sp,16
.L5ef62a9c:
    lw	$a0,4($v0)
.L5ef62aa0:
    lw	$a4,expScreenPrivateIndex
    lw	$a3,436($s1)
    move	$v0,$v1
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    li	$at,9
    li	$a5,11
    lw	$a3,0($a3)
    lui	$a1,0x4
    li	$a4,12
    addu	$a1,$a1,$a3
    li	$a3,8
    sw	$a3,1324($a1)
    lui	$a3,0xff
    ori	$a3,$a3,0xffff
    and	$a3,$zero,$a3
    sw	$a5,1324($a1)
    sw	$a4,1236($a1)
    sw	$zero,1328($a1)
    sw	$a3,1916($a1)
    slti	$a3,$a0,2
    sw	$s8,1916($a1)
    beqz	$a0,.L5ef62b78
    sw	$at,1916($a1)
    sll	$a2,$a0,0x3
    bnez	$a3,.L5ef63440
    addu	$a2,$v1,$a2
    addiu	$a0,$a2,-8
    sw	$zero,1216($a1)
    move	$v1,$a1
    lh	$at,0($v0)
.L5ef62b20:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef62b20
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a1)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a1)
    lh	$a5,4($a4)
    sw	$a5,1916($a1)
    lh	$a4,6($a4)
    sw	$a4,1916($a1)
    sw	$zero,1960($a1)
.L5ef62b78:
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    li	$a4,9
    lui	$a7,0x4
    beqz	$v0,.L5ef62f74
    li	$s7,14
    beqz	$v0,.L5ef62f7c
    addiu	$a1,$v0,8
.L5ef62ba8:
    lw	$a0,4($v0)
.L5ef62bac:
    lw	$a3,expScreenPrivateIndex
    lw	$at,436($s1)
    move	$v0,$a1
    sll	$a3,$a3,0x2
    addu	$at,$at,$a3
    lw	$at,0($at)
    li	$a5,8
    li	$a3,12
    lw	$at,0($at)
    sd	$a3,344($sp)
    li	$a3,11
    addu	$a7,$a7,$at
    sw	$a5,1324($a7)
    sw	$a3,1324($a7)
    slti	$a3,$a0,2
    li	$at,12
    lui	$a5,0xff
    ori	$a5,$a5,0xffff
    and	$a5,$zero,$a5
    sw	$at,1236($a7)
    sw	$zero,1328($a7)
    sw	$a5,1916($a7)
    sw	$s8,1916($a7)
    beqz	$a0,.L5ef61edc
    sw	$a4,1916($a7)
    sll	$a2,$a0,0x3
    bnez	$a3,.L5ef6346c
    addu	$a2,$a1,$a2
    addiu	$a0,$a2,-8
    sw	$zero,1216($a7)
    move	$v1,$a7
    lh	$at,0($v0)
.L5ef62c2c:
    sw	$at,1916($v1)
    lh	$at,2($v0)
    sw	$at,1916($v1)
    lh	$at,4($v0)
    sw	$at,1916($v1)
    lh	$at,6($v0)
    addiu	$v0,$v0,8
    sw	$at,1916($v1)
    sw	$zero,1960($v1)
    sw	$zero,1216($v1)
    bne	$v0,$a0,.L5ef62c2c
    lh	$at,0($v0)
    move	$a3,$at
    sw	$a3,1916($a7)
    move	$a4,$v0
    lh	$a6,2($a4)
    sw	$a6,1916($a7)
    lh	$a5,4($a4)
    sw	$a5,1916($a7)
    lh	$a4,6($a4)
    sw	$a4,1916($a7)
    sw	$zero,1960($a7)
.L5ef62c84:
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef62c8c:
    bnez	$v0,.L5ef6248c
    addiu	$s5,$sp,16
.L5ef62c94:
    b	.L5ef62490
    li	$s4,1
.L5ef62c9c:
    li	$a4,15
    b	.L5ef62384
    sd	$a4,344($sp)
.L5ef62ca8:
    li	$a5,15
    b	.L5ef624e4
    sd	$a5,344($sp)
.L5ef62cb4:
    li	$s7,3
    sd	$s7,344($sp)
    li	$s7,13
.L5ef62cc0:
    li	$v1,1
    move	$v0,$zero
    ld	$at,344($sp)
    li	$a3,11
    sw	$a3,1324($a1)
    andi	$at,$at,0x3
    b	.L5ef623bc
    sw	$at,1236($a1)
.L5ef62ce0:
    li	$s7,13
    li	$a3,3
    sd	$a3,344($sp)
.L5ef62cec:
    li	$v0,1
    move	$v1,$zero
    ld	$a4,344($sp)
    li	$a5,11
    sw	$a5,1324($a1)
    andi	$a4,$a4,0x3
    b	.L5ef62520
    sw	$a4,1236($a1)
.L5ef62d0c:
    beqz	$v0,.L5ef6323c
    addiu	$a0,$v0,8
.L5ef62d14:
    lw	$a1,4($v0)
.L5ef62d18:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef62d30:
    li	$s7,14
    li	$a5,12
    b	.L5ef620ec
    sd	$a5,344($sp)
.L5ef62d40:
    beqz	$v0,.L5ef627f8
    addiu	$a0,$sp,0
.L5ef62d48:
    lw	$a1,4($v0)
.L5ef62d4c:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef6324c
    nop
    beqz	$v0,.L5ef63254
    addiu	$a0,$v0,8
.L5ef62d84:
    lw	$a1,4($v0)
.L5ef62d88:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef62da0:
    li	$v1,1
    sw	$a3,1324($a1)
    andi	$at,$at,0xf
    b	.L5ef62120
    sw	$at,1236($a1)
    lw	$t9,400($s1)
.L5ef62db8:
    jalr	$t9
    addiu	$a0,$sp,32
.L5ef62dc0:
    addiu	$s2,$s2,-12
.L5ef62dc4:
    beql	$s2,$s3,.L5ef61958
    ld	$s3,400($sp)
.L5ef62dcc:
    lw	$t9,404($s1)
    lw	$a0,92($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    addu	$a0,$a0,$s2
    lw	$a1,92($s0)
    addu	$a1,$a1,$s2
    lw	$v0,8($a1)
    beqzl	$v0,.L5ef62e04
    lw	$t9,364($s1)
    lw	$a3,4($v0)
    beqz	$a3,.L5ef62e20
    nop
    lw	$t9,364($s1)
.L5ef62e04:
    lw	$a2,96($s0)
    move	$a0,$a1
    jalr	$t9
    addu	$a2,$a2,$s2
    slti	$a3,$s2,384
    bnezl	$a3,.L5ef62e58
    lw	$t9,400($s1)
.L5ef62e20:
    beqz	$s4,.L5ef62dc0
    slti	$a4,$s2,384
    beqzl	$a4,.L5ef62dc4
    addiu	$s2,$s2,-12
    lw	$a1,96($s0)
    addu	$a1,$a1,$s2
    lw	$v0,8($a1)
    beqzl	$v0,.L5ef62db8
    lw	$t9,400($s1)
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef62dc4
    addiu	$s2,$s2,-12
    b	.L5ef62db8
    lw	$t9,400($s1)
.L5ef62e58:
    lw	$a1,92($s0)
    addiu	$a0,$sp,0
    jalr	$t9
    addu	$a1,$a1,$s2
    b	.L5ef62e20
    nop
.L5ef62e70:
    li	$v1,9
    move	$v0,$zero
    ld	$a3,344($sp)
    li	$a4,11
    sw	$a4,1324($a1)
    andi	$a3,$a3,0xc
    b	.L5ef62120
    sw	$a3,1236($a1)
.L5ef62e90:
    li	$s7,14
    li	$a4,12
    b	.L5ef62384
    sd	$a4,344($sp)
.L5ef62ea0:
    li	$s7,14
    li	$a5,12
    b	.L5ef624e4
    sd	$a5,344($sp)
.L5ef62eb0:
    li	$v1,1
    sw	$a3,1324($a1)
    andi	$at,$at,0xf
    b	.L5ef623bc
    sw	$at,1236($a1)
.L5ef62ec4:
    li	$v0,1
    sw	$a4,1324($a1)
    andi	$a3,$a3,0xf
    b	.L5ef62520
    sw	$a3,1236($a1)
.L5ef62ed8:
    bnez	$v0,.L5ef62650
    addiu	$a0,$sp,0
.L5ef62ee0:
    b	.L5ef62654
    li	$a1,1
.L5ef62ee8:
    bnez	$v0,.L5ef628e8
    addiu	$a0,$sp,16
.L5ef62ef0:
    b	.L5ef628ec
    li	$a1,1
.L5ef62ef8:
    li	$v1,9
    ld	$a4,344($sp)
    move	$v0,$zero
    sw	$a5,1324($a1)
    andi	$a4,$a4,0xc
    b	.L5ef623bc
    sw	$a4,1236($a1)
.L5ef62f14:
    li	$v0,9
    move	$v1,$zero
    sw	$at,1324($a1)
    andi	$a5,$a5,0xc
    b	.L5ef62520
    sw	$a5,1236($a1)
.L5ef62f2c:
    beqz	$v0,.L5ef63378
    addiu	$a0,$v0,8
.L5ef62f34:
    lw	$a1,4($v0)
.L5ef62f38:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef62f50:
    beqz	$v0,.L5ef63388
    addiu	$a0,$v0,8
.L5ef62f58:
    lw	$a1,4($v0)
.L5ef62f5c:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef62f74:
    bnez	$v0,.L5ef62ba8
    addiu	$a1,$sp,16
.L5ef62f7c:
    b	.L5ef62bac
    li	$a0,1
.L5ef62f84:
    lh	$t1,8($s1)
    sh	$t1,68($sp)
    lhu	$t0,226($s0)
    sh	$t0,66($sp)
    lhu	$a7,226($s0)
    lhu	$a6,224($s0)
    addu	$a6,$a6,$a7
    sh	$a6,70($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,64
    jalr	$t9
    addiu	$a0,$sp,72
    lw	$t9,356($s1)
    addiu	$a2,$sp,0
    addiu	$a1,$sp,72
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef63098
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef62668
    lw	$a4,60($s0)
    beqz	$v0,.L5ef63098
    nop
    bnez	$v0,.L5ef630a0
    addiu	$a0,$v0,8
.L5ef62ff4:
    b	.L5ef630a4
    li	$a1,1
.L5ef62ffc:
    lh	$a1,8($s1)
    sh	$a1,164($sp)
    lhu	$a0,226($s0)
    sh	$a0,162($sp)
    lhu	$v1,226($s0)
    lhu	$v0,224($s0)
    addu	$v0,$v0,$v1
    sh	$v0,166($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,160
    jalr	$t9
    addiu	$a0,$sp,168
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,168
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    beqz	$v0,.L5ef630fc
    nop
    lw	$a3,4($v0)
    beqzl	$a3,.L5ef61ee0
    lw	$v0,24($sp)
    beqz	$v0,.L5ef630fc
    nop
    bnez	$v0,.L5ef63104
    addiu	$a0,$v0,8
.L5ef6306c:
    b	.L5ef63108
    li	$a1,1
.L5ef63074:
    beqz	$v0,.L5ef63398
    addiu	$a0,$v0,8
.L5ef6307c:
    lw	$a1,4($v0)
.L5ef63080:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef63098:
    beqz	$v0,.L5ef62ff4
    addiu	$a0,$sp,0
.L5ef630a0:
    lw	$a1,4($v0)
.L5ef630a4:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    move	$a1,$zero
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    addiu	$a0,$sp,0
    jalr	$t9
    negu	$a2,$a2
    lw	$v0,8($sp)
    beqz	$v0,.L5ef633a8
    nop
    beqz	$v0,.L5ef633b0
    addiu	$a0,$v0,8
.L5ef630e0:
    lw	$a1,4($v0)
.L5ef630e4:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef630fc:
    beqz	$v0,.L5ef6306c
    addiu	$a0,$sp,16
.L5ef63104:
    lw	$a1,4($v0)
.L5ef63108:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    move	$a1,$zero
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    addiu	$a0,$sp,16
    jalr	$t9
    negu	$a2,$a2
    lw	$v0,24($sp)
    beqz	$v0,.L5ef633b8
    nop
    beqz	$v0,.L5ef633c0
    addiu	$a0,$v0,8
.L5ef63144:
    lw	$a1,4($v0)
.L5ef63148:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef63160:
    lh	$a6,8($s1)
    sh	$a6,212($sp)
    lhu	$a5,226($s0)
    sh	$a5,210($sp)
    lhu	$a4,226($s0)
    lhu	$a3,224($s0)
    addu	$a3,$a3,$a4
    sh	$a3,214($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,208
    jalr	$t9
    addiu	$a0,$sp,216
    lw	$t9,356($s1)
    addiu	$a2,$sp,16
    addiu	$a1,$sp,216
    jalr	$t9
    addiu	$a0,$sp,16
    lw	$v0,24($sp)
    beqz	$v0,.L5ef631d8
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef61ee0
    lw	$v0,24($sp)
    beqz	$v0,.L5ef631d8
    nop
    bnez	$v0,.L5ef631e0
    addiu	$a0,$v0,8
.L5ef631d0:
    b	.L5ef631e4
    li	$a1,1
.L5ef631d8:
    beqz	$v0,.L5ef631d0
    addiu	$a0,$sp,16
.L5ef631e0:
    lw	$a1,4($v0)
.L5ef631e4:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    move	$a1,$zero
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    addiu	$a0,$sp,16
    jalr	$t9
    negu	$a2,$a2
    lw	$v0,24($sp)
    beqz	$v0,.L5ef633c8
    nop
    beqz	$v0,.L5ef633d0
    addiu	$a0,$v0,8
.L5ef63220:
    lw	$a1,4($v0)
.L5ef63224:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,33
    b	.L5ef61ee0
    lw	$v0,24($sp)
.L5ef6323c:
    bnez	$v0,.L5ef62d14
    addiu	$a0,$sp,16
    b	.L5ef62d18
    li	$a1,1
.L5ef6324c:
    bnez	$v0,.L5ef62d84
    addiu	$a0,$sp,0
.L5ef63254:
    b	.L5ef62d88
    li	$a1,1
.L5ef6325c:
    lw	$v0,8($sp)
    beqz	$v0,.L5ef633d8
    nop
    beqz	$v0,.L5ef633e0
    addiu	$a0,$v0,8
.L5ef63270:
    lw	$a1,4($v0)
.L5ef63274:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef6328c:
    lh	$a6,8($s1)
    sh	$a6,116($sp)
    lhu	$a5,226($s0)
    sh	$a5,114($sp)
    lhu	$a3,224($s0)
    lhu	$a4,226($s0)
    addu	$a3,$a3,$a4
    sh	$a3,118($sp)
    lw	$t9,340($s1)
    move	$a2,$zero
    addiu	$a1,$sp,112
    jalr	$t9
    addiu	$a0,$sp,120
    lw	$t9,356($s1)
    addiu	$a2,$sp,0
    addiu	$a1,$sp,120
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$v0,8($sp)
    beqz	$v0,.L5ef63304
    nop
    lw	$at,4($v0)
    beqzl	$at,.L5ef62668
    lw	$a4,60($s0)
    beqz	$v0,.L5ef63304
    nop
    bnez	$v0,.L5ef6330c
    addiu	$a0,$v0,8
.L5ef632fc:
    b	.L5ef63310
    li	$a1,1
.L5ef63304:
    beqz	$v0,.L5ef632fc
    addiu	$a0,$sp,0
.L5ef6330c:
    lw	$a1,4($v0)
.L5ef63310:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    move	$a1,$zero
    lw	$t9,376($s1)
    lhu	$a2,226($s0)
    addiu	$a0,$sp,0
    jalr	$t9
    negu	$a2,$a2
    lw	$v0,8($sp)
    beqz	$v0,.L5ef633e8
    nop
    beqz	$v0,.L5ef633f0
    addiu	$a0,$v0,8
.L5ef6334c:
    lw	$a1,4($v0)
.L5ef63350:
    # lw $t9, -32460($gp)
    move	$a2,$s1
    jal	expClearOverlays
    li	$a3,32
    b	.L5ef62668
    lw	$a4,60($s0)
.L5ef63368:
    b	.L5ef619cc
    addiu	$v1,$sp,32
.L5ef63370:
    b	.L5ef619d8
    li	$a2,1
.L5ef63378:
    bnez	$v0,.L5ef62f34
    addiu	$a0,$sp,0
    b	.L5ef62f38
    li	$a1,1
.L5ef63388:
    bnez	$v0,.L5ef62f58
    addiu	$a0,$sp,16
    b	.L5ef62f5c
    li	$a1,1
.L5ef63398:
    bnez	$v0,.L5ef6307c
    addiu	$a0,$sp,16
    b	.L5ef63080
    li	$a1,1
.L5ef633a8:
    bnez	$v0,.L5ef630e0
    addiu	$a0,$sp,0
.L5ef633b0:
    b	.L5ef630e4
    li	$a1,1
.L5ef633b8:
    bnez	$v0,.L5ef63144
    addiu	$a0,$sp,16
.L5ef633c0:
    b	.L5ef63148
    li	$a1,1
.L5ef633c8:
    bnez	$v0,.L5ef63220
    addiu	$a0,$sp,16
.L5ef633d0:
    b	.L5ef63224
    li	$a1,1
.L5ef633d8:
    bnez	$v0,.L5ef63270
    addiu	$a0,$sp,0
.L5ef633e0:
    b	.L5ef63274
    li	$a1,1
.L5ef633e8:
    bnez	$v0,.L5ef6334c
    addiu	$a0,$sp,0
.L5ef633f0:
    b	.L5ef63350
    li	$a1,1
.L5ef633f8:
    move	$a0,$v0
    lh	$at,0($a0)
    sw	$at,1916($a7)
    lh	$a5,2($a0)
    sw	$a5,1916($a7)
    lh	$a4,4($a0)
    sw	$a4,1916($a7)
    lh	$a3,6($a0)
    sw	$a3,1916($a7)
    lh	$at,8($a0)
    sw	$at,1916($a7)
    lh	$a5,10($a0)
    sw	$a5,1916($a7)
    lh	$a4,12($a0)
    sw	$a4,1916($a7)
    lh	$a3,14($a0)
    b	.L5ef61b10
    sw	$a3,1916($a7)
.L5ef63440:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef62b78
    sw	$zero,1960($a1)
.L5ef6346c:
    sw	$zero,1216($a7)
    lh	$at,0($v0)
    sw	$at,1916($a7)
    lh	$a5,2($v0)
    sw	$a5,1916($a7)
    lh	$a4,4($v0)
    sw	$a4,1916($a7)
    lh	$a3,6($v0)
    sw	$a3,1916($a7)
    b	.L5ef62c84
    sw	$zero,1960($a7)
.L5ef63498:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef621bc
    sw	$zero,1960($a1)
.L5ef634c4:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef62458
    sw	$zero,1960($a1)
.L5ef634f0:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef625bc
    sw	$zero,1960($a1)
.L5ef6351c:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef61cb0
    sw	$zero,1960($a1)
.L5ef63548:
    sw	$zero,1216($a1)
    lh	$at,0($v0)
    sw	$at,1916($a1)
    lh	$a5,2($v0)
    sw	$a5,1916($a1)
    lh	$a4,4($v0)
    sw	$a4,1916($a1)
    lh	$a3,6($v0)
    sw	$a3,1916($a1)
    b	.L5ef61e08
    sw	$zero,1960($a1)
.end expValidateVisual

.globl expValidateWindowPriv
.ent expValidateWindowPriv
expValidateWindowPriv:
    move	$a7,$a0
    lbu	$a1,2($a0)
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,-5204
    addu	$gp,$t9,$at
    lw	$t9,nfbWindowPrivateIndex
    lw	$a4,132($a0)
    move	$a3,$a1
    sll	$t9,$t9,0x2
    addu	$a4,$a4,$t9
    beqz	$a1,.L5ef3fab8
    lw	$a4,0($a4)
    li	$a0,2
    beq	$a3,$a0,.L5ef3fab8
    li	$a6,4
    beq	$a3,$a6,.L5ef3fae0
    li	$at,15
    li	$v0,8
    beq	$a3,$v0,.L5ef3fbc0
    li	$a2,255
    li	$v1,12
    beq	$a3,$v1,.L5ef3fb00
    li	$a2,24
    lui	$at,0xff
    beq	$a3,$a2,.L5ef3fb54
    ori	$at,$at,0xffff
    sd	$a4,24($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-3656
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-3608
    ld	$a4,24($sp)
    ld	$ra,32($sp)
.L5ef3fab8:
    lw	$a3,24($a4)
    addiu	$a2,$gp,-21844
    li	$at,1
    beq	$a3,$at,.L5ef3fb94
    sw	$a2,0($a4)
    li	$v0,2
    beq	$a3,$v0,.L5ef3fb68
.L5ef3fad4:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef3fae0:
    lw	$a2,24($a4)
    sw	$at,8($a4)
    addiu	$v1,$gp,-21804
    beqz	$a2,.L5ef3fbd8
    sw	$v1,0($a4)
    li	$v0,12
    b	.L5ef3fad4
    sw	$v0,20($a4)
.L5ef3fb00:
    lw	$a5,16($a7)
    lw	$a3,120($a7)
    lw	$a1,124($a5)
    beqz	$a3,.L5ef3fbf8
    lw	$a5,116($a5)
    lw	$a7,0($a3)
.L5ef3fb18:
    lw	$v0,80($a5)
    subu	$v0,$a7,$v0
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    lh	$at,4($at)
    addiu	$v1,$gp,-21764
    beq	$at,$a6,.L5ef3fbe4
    li	$a3,4095
    li	$a2,10
    sw	$a3,8($a4)
    sw	$v1,0($a4)
    b	.L5ef3fad4
    sw	$a2,20($a4)
.L5ef3fb54:
    sw	$a6,20($a4)
    sw	$at,8($a4)
    addiu	$v0,$gp,-21684
    b	.L5ef3fad4
    sw	$v0,0($a4)
.L5ef3fb68:
    li	$at,12
    sw	$at,8($a4)
    li	$v0,14
    lw	$v1,12($a4)
    lw	$a2,16($a4)
    sw	$v0,20($a4)
    andi	$v1,$v1,0x3
    andi	$a2,$a2,0x3
    sw	$a2,16($a4)
    b	.L5ef3fad4
    sw	$v1,12($a4)
.L5ef3fb94:
    li	$v0,13
    sw	$v0,20($a4)
    li	$at,3
    lw	$v1,12($a4)
    lw	$a2,16($a4)
    sw	$at,8($a4)
    andi	$v1,$v1,0x3
    andi	$a2,$a2,0x3
    sw	$a2,16($a4)
    b	.L5ef3fad4
    sw	$v1,12($a4)
.L5ef3fbc0:
    li	$at,9
    sw	$a2,8($a4)
    sw	$at,20($a4)
    addiu	$v1,$gp,-21804
    b	.L5ef3fad4
    sw	$v1,0($a4)
.L5ef3fbd8:
    li	$v0,8
    b	.L5ef3fad4
    sw	$v0,20($a4)
.L5ef3fbe4:
    sw	$a0,20($a4)
    sw	$a3,8($a4)
    addiu	$v1,$gp,-21724
    b	.L5ef3fad4
    sw	$v1,0($a4)
.L5ef3fbf8:
    sd	$a4,24($sp)
    sd	$a1,16($sp)
    # lw $t9, -29692($gp)
    sd	$a5,8($sp)
    sd	$ra,32($sp)
    jal	FindWindowWithOptional
    move	$a0,$a7
    li	$a6,4
    li	$a0,2
    ld	$a5,8($sp)
    ld	$a1,16($sp)
    ld	$a4,24($sp)
    lw	$a7,120($v0)
    ld	$ra,32($sp)
    b	.L5ef3fb18
    lw	$a7,0($a7)
    move	$v1,$s8
    addiu	$sp,$sp,-256
    addiu	$s8,$sp,256
    sd	$v1,-144($s8)
    sd	$s4,-136($s8)
    move	$s4,$a0
    lw	$a6,16($a0)
    sd	$s0,-152($s8)
    lw	$v0,expScreenPrivateIndex
    lw	$at,436($a6)
    move	$s0,$a1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    sd	$s1,-160($s8)
    move	$s1,$a2
    lw	$at,0($at)
    lw	$a6,116($a6)
    bltz	$a3,.L5ef40138
    sd	$at,-128($s8)
.L5ef3fc88:
    lw	$a0,8($s0)
    beqz	$a0,.L5ef4016c
    addiu	$t3,$a0,8
    sd	$s3,-200($s8)
.L5ef3fc98:
    sd	$s2,-192($s8)
    beqz	$a0,.L5ef40178
    move	$s3,$t3
    lw	$s2,4($a0)
.L5ef3fca8:
    lh	$at,2($t3)
    lh	$a4,2($s1)
    slt	$a4,$a4,$at
    beqz	$a4,.L5ef3fd38
    slti	$v0,$s2,2
    bnezl	$v0,.L5ef3fd3c
    lh	$v0,0($s3)
    ld	$s3,-200($s8)
    li	$a1,-16
    sll	$a0,$s2,0x3
    addiu	$v1,$a0,15
    and	$v1,$v1,$a1
    subu	$sp,$sp,$v1
    beqz	$sp,.L5ef40550
    move	$t8,$sp
    sll	$a4,$s2,0x2
    sd	$a4,-64($s8)
    addiu	$a4,$a4,15
    and	$a4,$a4,$a1
    subu	$sp,$sp,$a4
    beqz	$sp,.L5ef4057c
    move	$t9,$sp
    addu	$t1,$t3,$a0
    addiu	$t1,$t1,-8
    sltu	$at,$t1,$t3
    bnez	$at,.L5ef3fd28
    sd	$a0,-56($s8)
    sd	$a0,-56($s8)
    addiu	$t2,$t1,8
    sltu	$s0,$t1,$t3
    b	.L5ef4034c
    xori	$s0,$s0,0x1
.L5ef3fd28:
    ld	$s1,-64($s8)
    ld	$s3,-56($s8)
    subu	$s1,$t9,$s1
    subu	$s3,$t8,$s3
.L5ef3fd38:
    lh	$v0,0($s3)
.L5ef3fd3c:
    lh	$at,0($s1)
    slt	$at,$at,$v0
    beqz	$at,.L5ef3fdb4
    slti	$v1,$s2,2
    bnez	$v1,.L5ef3fdb4
    li	$t3,-16
    sll	$t9,$s2,0x2
    addiu	$a0,$t9,15
    and	$a0,$a0,$t3
    sll	$a4,$s2,0x3
    sd	$a4,-56($s8)
    addiu	$a4,$a4,15
    and	$a4,$a4,$t3
    subu	$sp,$sp,$a4
    move	$t3,$sp
    subu	$sp,$sp,$a0
    move	$a0,$sp
    beqz	$t3,.L5ef40510
    move	$t8,$sp
    beqz	$a0,.L5ef40510
    ld	$t2,-56($s8)
    addu	$t2,$t2,$s3
    sltu	$a4,$s3,$t2
    beqz	$a4,.L5ef3fda8
    move	$t0,$s3
    b	.L5ef40470
    sltu	$t1,$t0,$t2
.L5ef3fda8:
    ld	$s3,-56($s8)
    subu	$s1,$t8,$t9
    subu	$s3,$t3,$s3
.L5ef3fdb4:
    lw	$v0,nfbWindowPrivateIndex
    lw	$at,132($s4)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    li	$a5,13
    li	$a4,12
    lw	$at,32($at)
    li	$a2,14
    lui	$a0,0xff
    andi	$at,$at,0x8
    beqz	$at,.L5ef40180
    ori	$a0,$a0,0xffff
    beql	$a3,$a2,.L5ef403e0
    sd	$s5,-208($s8)
    beql	$a3,$a5,.L5ef404fc
    sd	$s5,-208($s8)
    beql	$a3,$a4,.L5ef40544
    sd	$s5,-208($s8)
    sd	$s5,-208($s8)
    move	$a1,$a0
    li	$a3,4
    li	$s0,24
.L5ef3fe10:
    sd	$s5,-208($s8)
    ld	$s5,-128($s8)
    lui	$at,0x4
    beq	$a3,$a5,.L5ef403b0
    addu	$s5,$s5,$at
    beq	$a3,$a2,.L5ef404c4
    li	$v0,12
    beq	$a3,$v0,.L5ef404a4
    ori	$a5,$a3,0x1000
    la	$a4,dbcWindowPrivateIndex
    sw	$a5,1324($s5)
    sw	$zero,1236($s5)
    lw	$a4,0($a4)
    lw	$a2,132($s4)
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a4
    lb	$a2,1($a2)
    sd	$s7,-216($s8)
    move	$a5,$a1
    sll	$a2,$a2,0x3
.L5ef3fe60:
    li	$s7,4
    li	$at,3
    sw	$zero,1328($s5)
    and	$v0,$a5,$a0
    sw	$v0,1916($s5)
    sw	$at,1916($s5)
    beq	$s0,$s7,.L5ef403d0
    sw	$a2,1916($s5)
    li	$v1,8
    beq	$s0,$v1,.L5ef404e4
    li	$a4,12
    beq	$s0,$a4,.L5ef40534
    li	$at,24
    beq	$s0,$at,.L5ef4012c
    move	$a1,$s0
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,-224($s8)
    jal	ErrorF
    addiu	$a0,$a0,-3584
    ld	$ra,-224($s8)
.L5ef3feb4:
    sd	$s6,-232($s8)
    sd	$s2,-248($s8)
    sd	$s3,-240($s8)
    ld	$a2,-248($s8)
    ld	$v0,-240($s8)
    blez	$s2,.L5ef3ffa4
    sll	$at,$a2,0x3
    move	$s4,$s1
    lw	$s3,-44($s8)
    li	$s6,8
    move	$s2,$v0
    addu	$at,$at,$v0
    andi	$a4,$a2,0x1
    beqz	$a4,.L5ef3ff90
    sd	$at,-168($s8)
    lh	$s1,4($s2)
    lh	$at,0($s2)
    beq	$s0,$s7,.L5ef401b8
    subu	$s1,$s1,$at
    beq	$s0,$s6,.L5ef401b8
    li	$v0,12
    beq	$s0,$v0,.L5ef40570
    li	$v1,24
    beq	$s0,$v1,.L5ef404f4
    nop
    sd	$a2,-184($s8)
    move	$a1,$s0
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,-224($s8)
    jal	ErrorF
    addiu	$a0,$a0,-3544
    ld	$a2,-184($s8)
    ld	$ra,-224($s8)
.L5ef3ff3c:
    li	$v1,4864
    div	$zero,$v1,$s3
    sw	$s3,1360($s5)
    mflo	$v0
    sw	$v0,1916($s5)
    lh	$at,0($s4)
    sw	$at,1916($s5)
    lh	$a4,2($s4)
    sw	$a4,1916($s5)
    sw	$s1,1916($s5)
    lh	$v1,2($s2)
    lh	$v0,6($s2)
    subu	$v0,$v0,$v1
    sw	$v0,1916($s5)
    lh	$at,0($s2)
    sw	$at,1916($s5)
    addiu	$s2,$s2,8
    lh	$a4,-6($s2)
    addiu	$s4,$s4,4
    teq	$s3,$zero,0x7
    sw	$a4,1916($s5)
.L5ef3ff90:
    sra	$a4,$a2,0x1
    bnez	$a4,.L5ef400c4
    sd	$ra,-224($s8)
.L5ef3ff9c:
    ld	$ra,-224($s8)
    ld	$s6,-232($s8)
.L5ef3ffa4:
    ld	$s0,-152($s8)
    ld	$s1,-160($s8)
    ld	$s2,-192($s8)
    ld	$s3,-200($s8)
    ld	$s4,-136($s8)
    ld	$s5,-208($s8)
    ld	$s7,-216($s8)
    ld	$at,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef3ffd0:
    la	$a0,local_0x5f0a0000
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$a0,-3544
.L5ef3ffe0:
    li	$a4,4864
    div	$zero,$a4,$s3
    sw	$s3,1360($s5)
    mflo	$v1
    sw	$v1,1916($s5)
    lh	$v0,0($s4)
    sw	$v0,1916($s5)
    lh	$at,2($s4)
    sw	$at,1916($s5)
    sw	$s1,1916($s5)
    lh	$s1,2($s2)
    lh	$a4,6($s2)
    subu	$a4,$a4,$s1
    sw	$a4,1916($s5)
    lh	$v1,0($s2)
    sw	$v1,1916($s5)
    lh	$v0,2($s2)
    sw	$v0,1916($s5)
    teq	$s3,$zero,0x7
    lh	$at,8($s2)
    lh	$s1,12($s2)
    beq	$s0,$s7,.L5ef400f8
    subu	$s1,$s1,$at
    beq	$s0,$s6,.L5ef400f8
    li	$v0,24
    li	$at,12
    beql	$s0,$at,.L5ef40118
    addiu	$s3,$s1,1
    beq	$s0,$v0,.L5ef40110
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s0
    jal	ErrorF
    addiu	$a0,$a0,-3544
.L5ef40068:
    li	$a4,4864
    div	$zero,$a4,$s3
    sw	$s3,1360($s5)
    mflo	$v1
    sw	$v1,1916($s5)
    lh	$v0,4($s4)
    sw	$v0,1916($s5)
    lh	$at,6($s4)
    sw	$at,1916($s5)
    sw	$s1,1916($s5)
    lh	$a4,10($s2)
    lh	$v1,14($s2)
    subu	$v1,$v1,$a4
    sw	$v1,1916($s5)
    lh	$v0,8($s2)
    addiu	$s4,$s4,8
    teq	$s3,$zero,0x7
    sw	$v0,1916($s5)
    ld	$a4,-168($s8)
    lh	$at,10($s2)
    addiu	$s2,$s2,16
    beq	$s2,$a4,.L5ef3ff9c
    sw	$at,1916($s5)
.L5ef400c4:
    lh	$at,0($s2)
    lh	$s1,4($s2)
    li	$v0,12
    beq	$s0,$s7,.L5ef40104
    subu	$s1,$s1,$at
    beql	$s0,$s6,.L5ef40108
    addiu	$s3,$s1,3
    beq	$s0,$v0,.L5ef40120
    li	$v1,24
    bne	$s0,$v1,.L5ef3ffd0
    nop	# was lw $t9, -29680($gp)
    b	.L5ef3ffe0
    move	$s3,$s1
.L5ef400f8:
    addiu	$s3,$s1,3
    b	.L5ef40068
    sra	$s3,$s3,0x2
.L5ef40104:
    addiu	$s3,$s1,3
.L5ef40108:
    b	.L5ef3ffe0
    sra	$s3,$s3,0x2
.L5ef40110:
    b	.L5ef40068
    move	$s3,$s1
.L5ef40118:
    b	.L5ef40068
    sra	$s3,$s3,0x1
.L5ef40120:
    addiu	$s3,$s1,1
    b	.L5ef3ffe0
    sra	$s3,$s3,0x1
.L5ef4012c:
    sw	$zero,1348($s5)
    b	.L5ef3feb4
    sw	$zero,1916($s5)
.L5ef40138:
    lw	$a1,120($s4)
    beqz	$a1,.L5ef405e0
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($a1)
.L5ef40148:
    lw	$at,80($a6)
    lw	$a3,88($a6)
    subu	$at,$a0,$at
    sll	$a4,$at,0x2
    addu	$a4,$a4,$at
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    b	.L5ef3fc88
    lw	$a3,8($a3)
.L5ef4016c:
    sd	$s3,-200($s8)
    b	.L5ef3fc98
    move	$t3,$s0
.L5ef40178:
    b	.L5ef3fca8
    li	$s2,1
.L5ef40180:
    beq	$a3,$a2,.L5ef4059c
    li	$v0,12
    beq	$a3,$v0,.L5ef405b8
    li	$a5,13
    lui	$a0,0xff
    beq	$a3,$a5,.L5ef405d0
    ori	$a0,$a0,0xffff
    lbu	$s0,2($s4)
    li	$a4,12
    bne	$s0,$a4,.L5ef3fe10
    move	$a1,$a0
    sd	$s5,-208($s8)
    b	.L5ef3fe10
    li	$a3,10
.L5ef401b8:
    addiu	$s3,$s1,3
    b	.L5ef3ff3c
    sra	$s3,$s3,0x2
.L5ef401c4:
    move	$a5,$t8
    addiu	$a0,$t1,8
    subu	$v1,$t0,$t2
    sltu	$at,$t0,$t2
    bnez	$at,.L5ef403a4
    move	$a6,$t9
    move	$a2,$t1
    move	$a1,$zero
    subu	$a7,$t1,$t3
    addiu	$a7,$a7,8
    sra	$a7,$a7,0x3
    sll	$a7,$a7,0x2
    addiu	$v1,$v1,8
    sra	$v0,$v1,0x2
    srl	$v0,$v0,0x1d
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x3
    sd	$v0,-120($s8)
    andi	$v0,$v0,0x1
    beqz	$v0,.L5ef40260
    addu	$a7,$a7,$s1
    lh	$v0,8($a2)
    sh	$v0,0($a5)
    lh	$at,10($a2)
    sh	$at,2($a5)
    lh	$a4,12($a2)
    addiu	$a0,$a0,8
    sh	$a4,4($a5)
    addiu	$a2,$a2,8
    lh	$v1,6($a2)
    addiu	$a5,$a5,8
    addiu	$a6,$a6,4
    sh	$v1,-2($a5)
    addiu	$a7,$a7,4
    lh	$v0,-2($a7)
    lh	$at,-4($a7)
    addiu	$a1,$a1,1
    sh	$v0,-2($a6)
    sh	$at,-4($a6)
.L5ef40260:
    sd	$a5,-104($s8)
    sd	$a0,-72($s8)
    move	$v0,$a7
    sd	$a7,-96($s8)
    move	$a4,$a1
    move	$at,$a0
    move	$at,$a5
    move	$a4,$a2
    sd	$a1,-80($s8)
    sd	$a2,-112($s8)
    sd	$a6,-88($s8)
    move	$v1,$a6
    ld	$v1,-120($s8)
    ld	$a7,-88($s8)
    ld	$a2,-112($s8)
    sra	$v1,$v1,0x1
    beqz	$v1,.L5ef40338
    ld	$a0,-80($s8)
    ld	$a6,-96($s8)
    ld	$a5,-72($s8)
    ld	$a1,-104($s8)
.L5ef402b4:
    lh	$v0,8($a2)
    sh	$v0,0($a1)
    lh	$at,10($a2)
    sh	$at,2($a1)
    lh	$a4,12($a2)
    sh	$a4,4($a1)
    lh	$v1,14($a2)
    sh	$v1,6($a1)
    lh	$v0,0($a6)
    lh	$at,2($a6)
    sh	$v0,0($a7)
    sh	$at,2($a7)
    lh	$a4,16($a2)
    sh	$a4,8($a1)
    lh	$v1,18($a2)
    sh	$v1,10($a1)
    lh	$v0,20($a2)
    addiu	$a2,$a2,16
    addiu	$a1,$a1,16
    sh	$v0,-4($a1)
    addiu	$a7,$a7,8
    lh	$at,6($a2)
    addiu	$a6,$a6,8
    addiu	$a0,$a0,2
    sh	$at,-2($a1)
    addiu	$a5,$a5,16
    lh	$a4,-2($a6)
    sltu	$v1,$t0,$a5
    lh	$v0,-4($a6)
    sh	$a4,-2($a7)
    beqz	$v1,.L5ef402b4
    sh	$v0,-4($a7)
    move	$a1,$a0
.L5ef40338:
    sll	$v1,$a1,0x2
.L5ef4033c:
    sll	$a4,$a1,0x3
    addu	$t8,$a4,$t8
    beqz	$s0,.L5ef3fd28
    addu	$t9,$v1,$t9
.L5ef4034c:
    beqz	$s0,.L5ef401c4
    move	$t0,$t1
    addiu	$t1,$t1,-8
.L5ef40358:
    sltu	$s0,$t1,$t3
    xori	$s0,$s0,0x1
    beqz	$s0,.L5ef401c4
    addiu	$t2,$t2,-8
    lh	$v0,2($t0)
    lh	$at,2($t1)
    bne	$at,$v0,.L5ef401c4
    nop
    addiu	$t1,$t1,-8
    sltu	$s0,$t1,$t3
    xori	$s0,$s0,0x1
    beqz	$s0,.L5ef401c4
    addiu	$t2,$t2,-8
    lh	$v0,2($t0)
    lh	$at,2($t1)
    beql	$at,$v0,.L5ef40358
    addiu	$t1,$t1,-8
    b	.L5ef401c4
    nop
.L5ef403a4:
    move	$a1,$zero
    b	.L5ef4033c
    sll	$v1,$a1,0x2
.L5ef403b0:
    sd	$s7,-216($s8)
    li	$a2,1
    move	$a5,$zero
    andi	$v1,$a1,0x3
    li	$a4,4107
    sw	$a4,1324($s5)
    b	.L5ef3fe60
    sw	$v1,1236($s5)
.L5ef403d0:
    li	$at,2
    sw	$at,1348($s5)
    b	.L5ef3feb4
    sw	$zero,1916($s5)
.L5ef403e0:
    li	$s0,4
    li	$a1,12
    lui	$a0,0xff
    b	.L5ef3fe10
    ori	$a0,$a0,0xffff
.L5ef403f4:
    move	$a0,$zero
    beq	$t0,$a7,.L5ef4045c
    subu	$a5,$t0,$s3
    move	$a1,$t0
    move	$a2,$t8
    sra	$a5,$a5,0x3
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s1
.L5ef40414:
    lh	$v0,-8($a1)
    sh	$v0,0($a6)
    lh	$at,-6($a1)
    sh	$at,2($a6)
    lh	$a4,-4($a1)
    sh	$a4,4($a6)
    lh	$v1,-2($a1)
    sh	$v1,6($a6)
    addiu	$a6,$a6,8
    lh	$v0,-4($a5)
    addiu	$a2,$a2,4
    addiu	$a5,$a5,-4
    sh	$v0,-4($a2)
    addiu	$a0,$a0,1
    lh	$at,2($a5)
    addiu	$a1,$a1,-8
    bne	$a7,$a1,.L5ef40414
    sh	$at,-2($a2)
.L5ef4045c:
    sll	$v1,$a0,0x2
    sll	$a4,$a0,0x3
    addu	$t3,$a4,$t3
    beqz	$t1,.L5ef3fda8
    addu	$t8,$v1,$t8
.L5ef40470:
    move	$a6,$t3
    beqz	$t1,.L5ef403f4
    move	$a7,$t0
    addiu	$t0,$t0,8
.L5ef40480:
    sltu	$t1,$t0,$t2
    beqz	$t1,.L5ef403f4
    nop
    lh	$v0,2($a7)
    lh	$at,2($t0)
    beql	$at,$v0,.L5ef40480
    addiu	$t0,$t0,8
    b	.L5ef403f4
    nop
.L5ef404a4:
    sd	$s7,-216($s8)
    li	$a2,1
    move	$a5,$zero
    andi	$v1,$a1,0xf
    li	$a4,4104
    sw	$a4,1324($s5)
    b	.L5ef3fe60
    sw	$v1,1236($s5)
.L5ef404c4:
    sd	$s7,-216($s8)
    li	$a2,9
    move	$a5,$zero
    andi	$at,$a1,0xc
    li	$v0,4107
    sw	$v0,1324($s5)
    b	.L5ef3fe60
    sw	$at,1236($s5)
.L5ef404e4:
    li	$v1,2
    sw	$v1,1348($s5)
    b	.L5ef3feb4
    sw	$zero,1916($s5)
.L5ef404f4:
    b	.L5ef3ff3c
    move	$s3,$s1
.L5ef404fc:
    li	$s0,4
    li	$a1,3
    lui	$a0,0xff
    b	.L5ef3fe10
    ori	$a0,$a0,0xffff
.L5ef40510:
    ld	$s0,-152($s8)
    ld	$s1,-160($s8)
    ld	$s2,-192($s8)
    ld	$s3,-200($s8)
    ld	$s4,-136($s8)
    ld	$a4,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L5ef40534:
    li	$at,1
    sw	$at,1348($s5)
    b	.L5ef3feb4
    sw	$zero,1916($s5)
.L5ef40544:
    li	$s0,4
    b	.L5ef3fe10
    li	$a1,15
.L5ef40550:
    ld	$s0,-152($s8)
    ld	$s1,-160($s8)
    ld	$s2,-192($s8)
    ld	$s4,-136($s8)
    ld	$v0,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L5ef40570:
    addiu	$s3,$s1,1
    b	.L5ef3ff3c
    sra	$s3,$s3,0x1
.L5ef4057c:
    ld	$s0,-152($s8)
    ld	$s1,-160($s8)
    ld	$s2,-192($s8)
    ld	$s4,-136($s8)
    ld	$at,-144($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L5ef4059c:
    sd	$s5,-208($s8)
    li	$a5,13
    li	$s0,4
    li	$a1,12
    lui	$a0,0xff
    b	.L5ef3fe10
    ori	$a0,$a0,0xffff
.L5ef405b8:
    sd	$s5,-208($s8)
    li	$s0,4
    li	$a1,15
    lui	$a0,0xff
    b	.L5ef3fe10
    ori	$a0,$a0,0xffff
.L5ef405d0:
    sd	$s5,-208($s8)
    li	$s0,4
    b	.L5ef3fe10
    li	$a1,3
.L5ef405e0:
    sd	$a6,-176($s8)
    sd	$ra,-224($s8)
    jal	FindWindowWithOptional
    move	$a0,$s4
    ld	$a6,-176($s8)
    lw	$a0,120($v0)
    ld	$ra,-224($s8)
    b	.L5ef40148
    lw	$a0,0($a0)
.end expValidateWindowPriv

.globl expRealizeWindow
.ent expRealizeWindow
expRealizeWindow:
    addiu	$sp,$sp,-64
    sd	$s3,24($sp)
    lw	$a2,16($a0)
    lw	$at,124($a0)
    move	$s3,$a0
    lw	$a3,116($a2)
    andi	$at,$at,0x7ff
    srl	$at,$at,0xa
    sd	$s5,32($sp)
    sd	$gp,16($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-4452
    addu	$gp,$t9,$v0
    lw	$s5,expScreenPrivateIndex
    lw	$a4,436($a2)
    lw	$t9,nfbWindowPrivateIndex
    sll	$s5,$s5,0x2
    addu	$a4,$a4,$s5
    lw	$s5,132($a0)
    sll	$t9,$t9,0x2
    lw	$a4,0($a4)
    addu	$s5,$s5,$t9
    beqz	$at,.L5ef3f7a4
    lw	$s5,0($s5)
    lw	$a1,24($s5)
    lw	$v1,64($a3)
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
.L5ef3f7a4:
    lw	$at,24($s5)
    li	$v0,3
    beql	$at,$v0,.L5ef3f934
    lw	$a0,848($a4)
    lw	$v1,64($a3)
.L5ef3f7b8:
    lw	$v1,12($v1)
    beqzl	$v1,.L5ef3f95c
    lw	$a0,848($a4)
.L5ef3f7c4:
    lw	$a1,24($s3)
    sd	$ra,40($sp)
    beqz	$a1,.L5ef3f864
    sd	$a2,8($sp)
    # lw $t9, -32108($gp)
    jal	nfbSetDidFlags
    move	$a0,$s3
    lw	$v1,nfbWindowPrivateIndex
    lw	$a2,24($s3)
    lw	$v0,132($s3)
    sll	$v1,$v1,0x2
    lw	$at,132($a2)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$v0,24($v0)
    lw	$at,24($at)
    ld	$s5,32($sp)
    ld	$ra,40($sp)
    beq	$at,$v0,.L5ef3f850
    move	$a0,$a2
    beqz	$a2,.L5ef3f854
    li	$v0,1
    lw	$at,nfbWindowPrivateIndex
.L5ef3f828:
    lw	$v0,132($a0)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    lw	$a1,28($at)
    addiu	$a1,$a1,1
    sw	$a1,28($at)
    lw	$a0,24($a0)
    bnez	$a0,.L5ef3f828
    lw	$at,nfbWindowPrivateIndex
.L5ef3f850:
    li	$v0,1
.L5ef3f854:
    ld	$s3,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef3f864:
    ld	$t9,8($sp)
    lw	$t3,24($s5)
    lw	$t1,36($s5)
    li	$t2,1
    sllv	$t2,$t2,$t3
    or	$t1,$t1,$t2
    sw	$t1,36($s5)
    sh	$zero,2($sp)
    sh	$zero,0($sp)
    lh	$t0,8($t9)
    sh	$t0,4($sp)
    lh	$a7,10($t9)
    sh	$a7,6($sp)
    addiu	$a1,$sp,0
    lw	$a5,24($t9)
    lw	$a6,80($a3)
    lw	$a0,116($t9)
    lw	$a3,88($a3)
    subu	$a5,$a5,$a6
    sll	$a4,$a5,0x2
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    lw	$t9,372($t9)
    lw	$a0,96($a0)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    ld	$t9,8($sp)
    addiu	$a1,$sp,0
    lw	$a3,24($s5)
    lw	$a0,116($t9)
    lw	$t9,372($t9)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    lw	$a0,44($a0)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    # lw $t9, -31996($gp)
    jal	nfbInitRootWindow
    lw	$a0,16($s3)
    li	$v0,1
    ld	$gp,16($sp)
    ld	$ra,40($sp)
    ld	$s3,24($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef3f934:
    andi	$at,$a0,0x2
    bnezl	$at,.L5ef3f7b8
    lw	$v1,64($a3)
    ori	$v1,$a0,0x2
    sw	$v1,848($a4)
    lw	$v1,64($a3)
    lw	$v0,8($v1)
    addiu	$v0,$v0,1
    b	.L5ef3f7c4
    sw	$v0,8($v1)
.L5ef3f95c:
    li	$v0,-3
    andi	$a1,$a0,0x2
    beqz	$a1,.L5ef3f7c4
    and	$v0,$a0,$v0
    sw	$v0,848($a4)
    lw	$v0,64($a3)
    lw	$at,8($v0)
    addiu	$at,$at,-1
    b	.L5ef3f7c4
    sw	$at,8($v0)
.end expRealizeWindow

.globl expUnrealizeWindow
.ent expUnrealizeWindow
expUnrealizeWindow:
    lw	$a3,16($a0)
    lui	$v0,0x18
    addiu	$v0,$v0,-5056
    addu	$at,$t9,$v0
    lw	$t9,expScreenPrivateIndex
    lw	$a6,436($a3)
    sll	$t9,$t9,0x2
    addu	$a6,$a6,$t9
    lw	$a6,0($a6)
    lw	$a5,848($a6)
    andi	$v0,$a5,0x2
    beqz	$v0,.L5ef3f9f0
    lw	$a3,116($a3)
    lw	$a4,64($a3)
    lw	$a4,12($a4)
    lw	$v1,nfbWindowPrivateIndex
    beqz	$a4,.L5ef3f9f8
    sll	$v1,$v1,0x2
    lw	$v0,132($a0)
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$v0,24($v0)
    li	$v1,3
    bne	$v0,$v1,.L5ef3f9f0
    li	$a1,1
    beq	$a4,$a1,.L5ef3f9fc
    li	$v0,-3
.L5ef3f9f0:
    jr	$ra
    li	$v0,1
.L5ef3f9f8:
    li	$v0,-3
.L5ef3f9fc:
    and	$v0,$a5,$v0
    sw	$v0,848($a6)
    lw	$v0,64($a3)
    lw	$a2,8($v0)
    addiu	$a2,$a2,-1
    b	.L5ef3f9f0
    sw	$a2,8($v0)
.end expUnrealizeWindow

.globl expInitiateBufferSwap
.ent expInitiateBufferSwap
expInitiateBufferSwap:
    move	$a3,$s8
    addiu	$sp,$sp,-208
    addiu	$s8,$sp,208
    sd	$s0,-152($s8)
    sd	$zero,-104($s8)
    li	$v1,-16
    sll	$v0,$a1,0x2
    addiu	$at,$v0,15
    and	$at,$at,$v1
    subu	$sp,$sp,$at
    move	$at,$sp
    lw	$a4,0($a0)
    sd	$a3,-80($s8)
    sd	$gp,-88($s8)
    lui	$v1,0x18
    addiu	$v1,$v1,-12240
    addu	$gp,$t9,$v1
    la	$a3,rrmScreenPrivateIndex
    lw	$a4,16($a4)
    sd	$sp,-64($s8)
    lw	$a3,0($a3)
    lw	$v1,436($a4)
    lw	$a4,116($a4)
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    lw	$v1,0($v1)
    sd	$a4,-120($s8)
    blez	$a1,.L5ef420f0
    sd	$v1,-128($s8)
    sd	$s1,-160($s8)
    sd	$s5,-168($s8)
    sd	$s2,-176($s8)
    sd	$s6,-184($s8)
    sd	$s3,-192($s8)
    sd	$s7,-200($s8)
    sd	$ra,-208($s8)
    sd	$s4,-144($s8)
    move	$v1,$a0
    sd	$a0,-136($s8)
    la	$s0,rrmWindowPrivateIndex
    addu	$a4,$v0,$a0
    ld	$at,-64($s8)
    sd	$a4,-112($s8)
    b	.L5ef416a0
    sd	$at,-96($s8)
.L5ef41648:
    move	$v0,$zero
.L5ef4164c:
    beqz	$v0,.L5ef420c4
    ld	$at,-72($s8)
.L5ef41654:
    lw	$v1,20($at)
    addiu	$a3,$gp,-21380
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    lw	$v1,4($s7)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a3
    sw	$v1,0($v0)
    lw	$v1,36($at)
    lw	$at,32($at)
    sw	$v1,4($v0)
    sw	$at,8($v0)
.L5ef41684:
    ld	$a3,-56($s8)
    beqz	$a3,.L5ef41dc4
.L5ef4168c:
    ld	$a4,-136($s8)
.L5ef41690:
    ld	$at,-112($s8)
    addiu	$a4,$a4,4
    beq	$a4,$at,.L5ef42114
    sd	$a4,-136($s8)
.L5ef416a0:
    ld	$s7,-136($s8)
    lw	$s7,0($s7)
    lw	$v1,0($s0)
    lw	$at,132($s7)
    la	$s1,dbcWindowPrivateIndex
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$at
    lw	$v1,0($v1)
    lw	$s1,0($s1)
    sd	$v1,-72($s8)
    lbu	$v1,4($v1)
    sd	$zero,-56($s8)
    sll	$s1,$s1,0x2
    andi	$v1,$v1,0x8
    beqz	$v1,.L5ef416f8
    addu	$s1,$s1,$at
    ld	$t9,-128($s8)
    lw	$t9,32($t9)
    move	$a0,$s7
    li	$a2,1
    jalr	$t9
    li	$a1,8
.L5ef416f8:
    lbu	$at,1($s7)
    li	$v1,2
    beq	$at,$v1,.L5ef41d94
    nop
    lw	$v0,120($s7)
    beqz	$v0,.L5ef4209c
    nop	# was lw $t9, -29692($gp)
    lw	$a1,8($v0)
.L5ef41718:
    move	$a0,$a1
.L5ef4171c:
    # lw $t9, -29684($gp)
    jal	LookupIDByType
    li	$a1,6
    bnezl	$v0,.L5ef4179c
    lw	$a0,68($v0)
    lw	$v0,120($s7)
    beqz	$v0,.L5ef420b0
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($v0)
.L5ef41740:
    ld	$v0,-120($s8)
    lw	$a3,80($v0)
    lw	$at,88($v0)
    subu	$a3,$a0,$a3
    sll	$v1,$a3,0x2
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,4($at)
    lw	$a3,124($v0)
    sll	$a4,$at,0x2
    subu	$a4,$a4,$at
    sll	$a4,$a4,0x3
    addu	$a3,$a3,$a4
    lw	$a3,4($a3)
    lw	$a3,0($a3)
    lw	$v0,116($v0)
    sll	$v1,$a3,0x3
    subu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    b	.L5ef417c0
    lw	$v0,24($v0)
.L5ef4179c:
    lw	$a0,0($a0)
    bltz	$a0,.L5ef41f14
    ld	$v0,-120($s8)
    sll	$v1,$a0,0x3
    lw	$v0,116($v0)
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,24($v0)
.L5ef417c0:
    li	$a3,1
    ld	$a4,-72($s8)
    sll	$a0,$v0,0x1b
    lb	$v1,2($s1)
    lw	$a1,32($a4)
    lw	$a4,36($a4)
    ori	$a0,$a0,0x800
    beq	$v1,$a3,.L5ef41d9c
    or	$a0,$a0,$a4
    ori	$at,$a1,0x4
    ld	$v1,-72($s8)
    lui	$v0,0x1f0
    or	$v0,$v0,$a0
    sw	$at,32($v1)
.L5ef417f8:
    ld	$a3,-72($s8)
    sw	$v0,36($a3)
    lw	$v1,124($s7)
    andi	$v1,$v1,0xfff
    srl	$v1,$v1,0xb
    beqz	$v1,.L5ef42084
    nop	# was lw $t9, -29636($gp)
    lw	$t0,132($s7)
    lw	$v0,0($s0)
    la	$t2,rrmScreenPrivateIndex
    lw	$s2,16($s7)
    sll	$v0,$v0,0x2
    lw	$t2,0($t2)
    lw	$s2,436($s2)
    addu	$t0,$t0,$v0
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$s2
    lw	$t2,0($t2)
    lw	$t0,0($t0)
    move	$a7,$zero
    lw	$t1,0($t2)
    move	$s6,$t0
    move	$s2,$t2
    addiu	$t1,$t1,-1
    blez	$t1,.L5ef41924
    move	$a2,$t1
    move	$a1,$a2
    sll	$a0,$a2,0x3
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    b	.L5ef41894
    addu	$a0,$a0,$s2
.L5ef41878:
    beqz	$a7,.L5ef41f80
    andi	$a3,$a6,0x1
.L5ef41880:
    bnez	$a3,.L5ef41924
    addiu	$a1,$a1,-1
    addiu	$a0,$a0,-36
    beq	$a0,$s2,.L5ef41924
    nop
.L5ef41894:
    lhu	$a6,168($a0)
    andi	$a4,$a6,0x10
    beqz	$a4,.L5ef41880
    andi	$a3,$a6,0x1
    lw	$v1,20($s6)
    sll	$at,$v1,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$s2
    beq	$at,$a0,.L5ef41880
    andi	$a3,$a6,0x1
    lw	$a3,152($a0)
    lw	$a3,132($a3)
    addu	$a3,$a3,$v0
    lw	$a3,0($a3)
    lw	$a4,36($s6)
    lw	$a3,36($a3)
    bne	$a3,$a4,.L5ef41880
    andi	$a3,$a6,0x1
    lw	$a2,152($s2)
    beqz	$a2,.L5ef41878
    nop
    b	.L5ef41904
    lw	$a5,132($a2)
.L5ef418f4:
    lw	$a2,48($a5)
.L5ef418f8:
    beqz	$a2,.L5ef41878
    nop
    lw	$a5,132($a2)
.L5ef41904:
    addu	$a5,$v0,$a5
    lw	$a5,0($a5)
    lbu	$a4,4($a5)
    andi	$a4,$a4,0x8
    beqzl	$a4,.L5ef418f8
    lw	$a2,48($a5)
    b	.L5ef418f4
    move	$a7,$a1
.L5ef41924:
    beqzl	$a7,.L5ef41a7c
    move	$v0,$zero
    blez	$t1,.L5ef41a78
    move	$a0,$t1
    move	$s3,$a0
    sll	$s5,$a0,0x3
    addu	$s5,$s5,$a0
    sll	$s5,$s5,0x2
    b	.L5ef41978
    addu	$s5,$s5,$s2
.L5ef4194c:
    move	$a1,$zero
.L5ef41950:
    move	$a0,$a1
.L5ef41954:
    bnezl	$a0,.L5ef41e0c
    lw	$t0,132($s7)
    lhu	$a0,168($s5)
    andi	$at,$a0,0x1
.L5ef41964:
    bnez	$at,.L5ef41a78
    addiu	$s3,$s3,-1
    addiu	$s5,$s5,-36
    beql	$s5,$s2,.L5ef41a7c
    move	$v0,$zero
.L5ef41978:
    lhu	$a0,168($s5)
    andi	$v1,$a0,0x10
    beqz	$v1,.L5ef41964
    andi	$at,$a0,0x1
    lw	$a3,20($s6)
    beq	$a3,$s3,.L5ef41964
    andi	$at,$a0,0x1
    lw	$s4,152($s2)
    beqzl	$s4,.L5ef41a28
    lhu	$a4,170($s5)
    b	.L5ef419f8
    lw	$a0,132($s4)
.L5ef419a8:
    lw	$t9,32($s2)
.L5ef419ac:
    move	$a0,$s1
    move	$a1,$zero
    jal	dbcDelayedSwapBufferDone
    li	$a2,1
    lw	$v0,0($s0)
    lw	$s1,132($s1)
    sll	$v0,$v0,0x2
    addu	$s1,$s1,$v0
    lw	$s1,0($s1)
    lw	$s1,48($s1)
    bnezl	$s1,.L5ef419ac
    lw	$t9,32($s2)
    lw	$a0,132($s4)
    addu	$a0,$v0,$a0
    lw	$a0,0($a0)
    lw	$s4,48($a0)
.L5ef419ec:
    beqz	$s4,.L5ef41a24
    nop
    lw	$a0,132($s4)
.L5ef419f8:
    addu	$a0,$v0,$a0
    lw	$a0,0($a0)
    lbu	$a3,4($a0)
    andi	$a3,$a3,0x8
    beqzl	$a3,.L5ef419ec
    lw	$s4,48($a0)
    lw	$s1,152($s5)
    beqzl	$s1,.L5ef419ec
    lw	$s4,48($a0)
    b	.L5ef419a8
    nop
.L5ef41a24:
    lhu	$a4,170($s5)
.L5ef41a28:
    lhu	$a3,2($s6)
    lw	$a1,20($s2)
    beq	$a3,$a4,.L5ef41a40
    lw	$a0,16($s2)
    b	.L5ef41954
    move	$a0,$zero
.L5ef41a40:
    lw	$v1,160($s5)
    lw	$at,32($s6)
    and	$v1,$v1,$a0
    and	$at,$at,$a0
    bnel	$at,$v1,.L5ef41950
    move	$a1,$zero
    lw	$a3,164($s5)
    lw	$v1,36($s6)
    and	$a3,$a3,$a1
    and	$v1,$v1,$a1
    bne	$v1,$a3,.L5ef4194c
    li	$a1,1
    b	.L5ef41954
    move	$a0,$a1
.L5ef41a78:
    move	$v0,$zero
.L5ef41a7c:
    beqz	$v0,.L5ef41a98
.L5ef41a80:
    nop	# was lw $t9, -29636($gp)
    jal	dbcDelayedSwapBufferDone
    lw	$a0,4($s7)
    li	$a3,1
    b	.L5ef41684
    sd	$a3,-56($s8)
.L5ef41a98:
    li	$a4,1
    lw	$t0,132($s7)
    lw	$t2,16($s7)
    la	$a6,rrmScreenPrivateIndex
    lw	$v0,0($s0)
    lw	$t2,436($t2)
    lw	$a6,0($a6)
    sll	$v0,$v0,0x2
    addu	$t0,$t0,$v0
    lw	$t0,0($t0)
    sll	$a6,$a6,0x2
    addu	$t2,$a6,$t2
    lhu	$a2,2($t0)
    lw	$t2,0($t2)
    move	$a0,$t0
    beq	$a4,$a2,.L5ef42064
    move	$a5,$t2
    lw	$a1,20($a0)
.L5ef41ae0:
    bltz	$a1,.L5ef41b04
    sll	$at,$a1,0x3
    addu	$at,$at,$a1
    sll	$at,$at,0x2
    addu	$at,$at,$a5
    lhu	$at,168($at)
    andi	$at,$at,0x4
    beqz	$at,.L5ef42094
    nop
.L5ef41b04:
    lw	$a0,0($a5)
    beqz	$a0,.L5ef41c30
    move	$a1,$zero
    b	.L5ef41b24
    move	$a7,$a5
    addiu	$a1,$a1,1
.L5ef41b1c:
    beq	$a1,$a0,.L5ef41c30
    addiu	$a7,$a7,36
.L5ef41b24:
    lhu	$v1,170($a7)
    bnel	$v1,$a2,.L5ef41b1c
    addiu	$a1,$a1,1
    lhu	$a3,168($a7)
    andi	$a3,$a3,0x1
    bnezl	$a3,.L5ef41b1c
    addiu	$a1,$a1,1
    lw	$a4,172($a7)
    bnezl	$a4,.L5ef41b1c
    addiu	$a1,$a1,1
    lw	$at,20($t0)
    bltz	$at,.L5ef41c20
    nop	# was lw $t9, -32152($gp)
    lhu	$v1,0($t0)
    lw	$a3,20($t0)
    move	$a0,$t0
    andi	$v1,$v1,0x8
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t2
    beqz	$v1,.L5ef41c14
    addiu	$a2,$a2,152
    lw	$a6,44($a0)
    beqz	$a6,.L5ef422d4
    lw	$a5,48($a0)
    lw	$a3,132($a6)
    addu	$a3,$a3,$v0
    lw	$a3,0($a3)
    sw	$a5,48($a3)
.L5ef41b9c:
    lw	$a5,48($a0)
    beqz	$a5,.L5ef422dc
    lw	$a6,44($a0)
    lw	$a4,132($a5)
    addu	$a4,$a4,$v0
    lw	$a4,0($a4)
    sw	$a6,44($a4)
    sw	$zero,48($a0)
.L5ef41bbc:
    sw	$zero,44($a0)
    lw	$at,20($a2)
    lhu	$v0,16($a2)
    addiu	$at,$at,-1
    andi	$v0,$v0,0x31
    andi	$v0,$v0,0xffff
    andi	$v1,$v0,0x1
    beqz	$v1,.L5ef41be4
    sw	$at,20($a2)
    ori	$v0,$v0,0x6
.L5ef41be4:
    lw	$a6,0($a2)
    beqz	$a6,.L5ef422e4
    li	$a5,-17
    lw	$v1,4($a2)
    beq	$v1,$a6,.L5ef41c00
    ori	$a5,$v0,0x2
    ori	$a5,$v0,0x6
.L5ef41c00:
    sh	$a5,16($a2)
    lhu	$a3,0($a0)
    li	$a4,-9
    and	$a3,$a3,$a4
    sh	$a3,0($a0)
.L5ef41c14:
    li	$at,-1
    sw	$at,20($a0)
    # lw $t9, -32152($gp)
.L5ef41c20:
    jal	AssignID__LIC
    move	$a0,$s7
    b	.L5ef4164c
    li	$v0,1
.L5ef41c30:
    lw	$v1,48($a5)
    beqzl	$v1,.L5ef4164c
    move	$v0,$zero
    beqz	$a0,.L5ef41648
    move	$a1,$zero
    b	.L5ef41c58
    move	$a7,$a5
.L5ef41c4c:
    addiu	$a1,$a1,1
.L5ef41c50:
    beq	$a1,$a0,.L5ef41648
    addiu	$a7,$a7,36
.L5ef41c58:
    lhu	$a3,170($a7)
    bnel	$a3,$a2,.L5ef41c50
    addiu	$a1,$a1,1
    lhu	$a5,168($a7)
    andi	$a4,$a5,0x1
    beqz	$a4,.L5ef41c4c
    andi	$at,$a5,0x20
    bnezl	$at,.L5ef41c50
    addiu	$a1,$a1,1
    andi	$v1,$a5,0x2
    bnezl	$v1,.L5ef41c50
    addiu	$a1,$a1,1
    lw	$a3,172($a7)
    bnezl	$a3,.L5ef41c50
    addiu	$a1,$a1,1
    sh	$zero,168($a7)
    lw	$t0,132($s7)
    addu	$t0,$t0,$v0
    lw	$t0,0($t0)
    lw	$a4,20($t0)
    bltz	$a4,.L5ef41d80
    move	$a0,$t0
    lw	$a2,16($s7)
    lhu	$at,0($t0)
    lw	$a4,20($t0)
    lw	$a2,436($a2)
    andi	$at,$at,0x8
    sll	$a3,$a4,0x3
    addu	$a2,$a2,$a6
    lw	$a2,0($a2)
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    beqz	$at,.L5ef41d78
    addiu	$a2,$a2,152
    lw	$a6,44($a0)
    beqz	$a6,.L5ef422ec
    lw	$a5,48($a0)
    lw	$a3,132($a6)
    addu	$a3,$a3,$v0
    lw	$a3,0($a3)
    sw	$a5,48($a3)
.L5ef41d00:
    lw	$a5,48($a0)
    beqz	$a5,.L5ef422f4
    lw	$a6,44($a0)
    lw	$a4,132($a5)
    addu	$a4,$a4,$v0
    lw	$a4,0($a4)
    sw	$a6,44($a4)
    sw	$zero,48($a0)
.L5ef41d20:
    sw	$zero,44($a0)
    lw	$at,20($a2)
    lhu	$v0,16($a2)
    addiu	$at,$at,-1
    andi	$v0,$v0,0x31
    andi	$v0,$v0,0xffff
    andi	$v1,$v0,0x1
    beqz	$v1,.L5ef41d48
    sw	$at,20($a2)
    ori	$v0,$v0,0x6
.L5ef41d48:
    lw	$a6,0($a2)
    beqz	$a6,.L5ef422fc
    li	$a5,-17
    lw	$v1,4($a2)
    beq	$v1,$a6,.L5ef41d64
    ori	$a5,$v0,0x2
    ori	$a5,$v0,0x6
.L5ef41d64:
    sh	$a5,16($a2)
    lhu	$a3,0($a0)
    li	$a4,-9
    and	$a3,$a3,$a4
    sh	$a3,0($a0)
.L5ef41d78:
    li	$at,-1
    sw	$at,20($a0)
.L5ef41d80:
    # lw $t9, -32152($gp)
    jal	AssignID__LIC
    move	$a0,$s7
    b	.L5ef4164c
    li	$v0,1
.L5ef41d94:
    b	.L5ef4171c
    move	$a0,$zero
.L5ef41d9c:
    li	$v1,-5
    lui	$v0,0xf0
    lui	$a3,0xfeff
    ori	$a3,$a3,0xffff
    or	$v0,$v0,$a0
    and	$v0,$v0,$a3
    ld	$a3,-72($s8)
    and	$v1,$v1,$a1
    b	.L5ef417f8
    sw	$v1,32($a3)
.L5ef41dc4:
    ld	$a3,-96($s8)
    ld	$v1,-72($s8)
    sw	$s7,0($a3)
    lw	$v1,20($v1)
    sll	$at,$v1,0x3
    addu	$at,$at,$v1
    ld	$v1,-128($s8)
    addiu	$a3,$a3,4
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    ld	$v1,-104($s8)
    sd	$a3,-96($s8)
    lhu	$a4,168($at)
    addiu	$v1,$v1,1
    sd	$v1,-104($s8)
    ori	$a4,$a4,0x10
    b	.L5ef4168c
    sh	$a4,168($at)
.L5ef41e0c:
    addu	$t0,$t0,$v0
    lw	$t0,0($t0)
    lw	$a3,20($t0)
    bltz	$a3,.L5ef41efc
    move	$a0,$t0
    lhu	$at,0($t0)
    la	$a3,rrmScreenPrivateIndex
    lw	$a1,16($s7)
    andi	$at,$at,0x8
    lw	$a3,0($a3)
    lw	$a1,436($a1)
    lw	$a4,20($t0)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    sll	$a3,$a4,0x3
    lw	$a1,0($a1)
    addu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    beqz	$at,.L5ef41ef4
    addiu	$a1,$a1,152
    lw	$a2,44($a0)
    beqz	$a2,.L5ef420d8
    lw	$a5,48($a0)
    lw	$a4,132($a2)
    addu	$a4,$a4,$v0
    lw	$a4,0($a4)
    sw	$a5,48($a4)
.L5ef41e7c:
    lw	$a5,48($a0)
    beqz	$a5,.L5ef420e0
    lw	$a2,44($a0)
    lw	$at,132($a5)
    addu	$at,$at,$v0
    lw	$at,0($at)
    sw	$a2,44($at)
    sw	$zero,48($a0)
.L5ef41e9c:
    sw	$zero,44($a0)
    lw	$v1,20($a1)
    lhu	$v0,16($a1)
    addiu	$v1,$v1,-1
    andi	$v0,$v0,0x31
    andi	$v0,$v0,0xffff
    andi	$a3,$v0,0x1
    beqz	$a3,.L5ef41ec4
    sw	$v1,20($a1)
    ori	$v0,$v0,0x6
.L5ef41ec4:
    lw	$a5,0($a1)
    beqz	$a5,.L5ef420e8
    li	$a2,-17
    lw	$a2,4($a1)
    beq	$a2,$a5,.L5ef41ee0
    ori	$a2,$v0,0x2
    ori	$a2,$v0,0x6
.L5ef41ee0:
    sh	$a2,16($a1)
    lhu	$a3,0($a0)
    li	$a4,-9
    and	$a3,$a3,$a4
    sh	$a3,0($a0)
.L5ef41ef4:
    li	$at,-1
    sw	$at,20($a0)
.L5ef41efc:
    # lw $t9, -32152($gp)
    move	$a0,$s7
    jal	AssignID__LIC
    move	$a1,$s3
    b	.L5ef41a7c
    li	$v0,1
.L5ef41f14:
    lw	$v0,120($s7)
    beqz	$v0,.L5ef422c0
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($v0)
.L5ef41f24:
    ld	$v0,-120($s8)
    lw	$a3,80($v0)
    lw	$at,88($v0)
    subu	$a3,$a0,$a3
    sll	$v1,$a3,0x2
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,4($at)
    lw	$a3,124($v0)
    sll	$a4,$at,0x2
    subu	$a4,$a4,$at
    sll	$a4,$a4,0x3
    addu	$a3,$a3,$a4
    lw	$a3,4($a3)
    lw	$a3,0($a3)
    lw	$v0,116($v0)
    sll	$v1,$a3,0x3
    subu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    b	.L5ef417c0
    lw	$v0,24($v0)
.L5ef41f80:
    lw	$a4,20($t0)
    bltz	$a4,.L5ef42054
    nop	# was lw $t9, -32152($gp)
    lhu	$at,0($t0)
    lw	$a3,20($t0)
    move	$a0,$t0
    andi	$at,$at,0x8
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t2
    beqz	$at,.L5ef42048
    addiu	$a2,$a2,152
    lw	$a6,44($a0)
    beqz	$a6,.L5ef42140
    lw	$a5,48($a0)
    lw	$v1,132($a6)
    addu	$v1,$v1,$v0
    lw	$v1,0($v1)
    sw	$a5,48($v1)
.L5ef41fd0:
    lw	$a5,48($a0)
    beqz	$a5,.L5ef42148
    lw	$a6,44($a0)
    lw	$a3,132($a5)
    addu	$a3,$a3,$v0
    lw	$a3,0($a3)
    sw	$a6,44($a3)
    sw	$zero,48($a0)
.L5ef41ff0:
    sw	$zero,44($a0)
    lw	$a4,20($a2)
    lhu	$v0,16($a2)
    addiu	$a4,$a4,-1
    andi	$v0,$v0,0x31
    andi	$v0,$v0,0xffff
    andi	$at,$v0,0x1
    beqz	$at,.L5ef42018
    sw	$a4,20($a2)
    ori	$v0,$v0,0x6
.L5ef42018:
    lw	$a6,0($a2)
    beqz	$a6,.L5ef42150
    li	$a5,-17
    lw	$a5,4($a2)
    beq	$a5,$a6,.L5ef42034
    ori	$a5,$v0,0x2
    ori	$a5,$v0,0x6
.L5ef42034:
    sh	$a5,16($a2)
    lhu	$at,0($a0)
    li	$v1,-9
    and	$at,$at,$v1
    sh	$at,0($a0)
.L5ef42048:
    li	$a3,-1
    sw	$a3,20($a0)
    # lw $t9, -32152($gp)
.L5ef42054:
    jal	AssignID__LIC
    move	$a0,$s7
    b	.L5ef41a80
    li	$v0,1
.L5ef42064:
    lw	$a4,12($a5)
    andi	$a4,$a4,0x1
    beqzl	$a4,.L5ef41ae0
    lw	$a1,20($a0)
    lw	$at,0($a5)
    li	$v0,1
    b	.L5ef4164c
    sw	$at,20($a0)
.L5ef42084:
    jalr	$t9
    lw	$a0,4($s7)
    b	.L5ef41690
    ld	$a4,-136($s8)
.L5ef42094:
    b	.L5ef4164c
    li	$v0,1
.L5ef4209c:
    jalr	$t9
    move	$a0,$s7
    lw	$a1,120($v0)
    b	.L5ef41718
    lw	$a1,8($a1)
.L5ef420b0:
    jalr	$t9
    move	$a0,$s7
    lw	$a0,120($v0)
    b	.L5ef41740
    lw	$a0,0($a0)
.L5ef420c4:
    # lw $t9, -32144($gp)
    jal	StealID
    move	$a0,$s7
    b	.L5ef41654
    ld	$at,-72($s8)
.L5ef420d8:
    b	.L5ef41e7c
    sw	$a5,0($a1)
.L5ef420e0:
    b	.L5ef41e9c
    sw	$a2,4($a1)
.L5ef420e8:
    b	.L5ef41ee0
    and	$a2,$a2,$v0
.L5ef420f0:
    sd	$s1,-160($s8)
    sd	$s5,-168($s8)
    sd	$s2,-176($s8)
    sd	$s6,-184($s8)
    sd	$s3,-192($s8)
    sd	$s7,-200($s8)
    sd	$ra,-208($s8)
    sd	$s4,-144($s8)
    la	$s0,rrmWindowPrivateIndex
.L5ef42114:
    ld	$a3,-104($s8)
    blez	$a3,.L5ef42284
    la	$s5,ioctl
    addiu	$s6,$s8,-48
    li	$s4,-1
    ld	$s2,-104($s8)
    li	$s7,-17
    ld	$s3,-64($s8)
    sll	$s2,$s2,0x2
    b	.L5ef42164
    addu	$s2,$s3,$s2
.L5ef42140:
    b	.L5ef41fd0
    sw	$a5,0($a2)
.L5ef42148:
    b	.L5ef41ff0
    sw	$a6,4($a2)
.L5ef42150:
    b	.L5ef42034
    and	$a5,$a5,$v0
.L5ef42158:
    addiu	$s2,$s2,-4
    beq	$s3,$s2,.L5ef42284
    nop
.L5ef42164:
    lw	$s1,-4($s2)
    lw	$a2,0($s0)
    lw	$a1,132($s1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lw	$a5,12($a1)
    lw	$a0,16($s1)
    sw	$a5,-48($s8)
    lw	$a4,4($s1)
    sw	$a4,-40($s8)
    lw	$a3,20($a1)
    sw	$a3,-44($s8)
    lw	$a2,36($a1)
    sw	$a2,-36($s8)
    lw	$a1,32($a1)
    move	$t9,$s5
    sw	$a1,-32($s8)
    move	$a2,$s6
    lw	$a0,116($a0)
    li	$a1,1020
    jalr	$s5
    lw	$a0,100($a0)
    beq	$v0,$s4,.L5ef4226c
    lw	$a3,0($s0)
    lw	$a0,132($s1)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lw	$v0,20($a0)
    bltz	$v0,.L5ef4221c
    la	$v1,rrmScreenPrivateIndex
    lw	$at,16($s1)
    sll	$a3,$v0,0x3
    lw	$v1,0($v1)
    lw	$at,436($at)
    addu	$a3,$a3,$v0
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$v1,32($a0)
    sll	$a3,$a3,0x2
    addu	$at,$at,$a3
    sw	$v1,160($at)
    lw	$a4,36($a0)
    sw	$a4,164($at)
.L5ef4221c:
    move	$v0,$zero
.L5ef42220:
    beqz	$v0,.L5ef42158
    nop	# was lw $t9, -29636($gp)
    jal	dbcDelayedSwapBufferDone
    lw	$a0,4($s1)
    lw	$v1,0($s0)
    lw	$at,132($s1)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$at,20($at)
    sll	$a4,$at,0x3
    addu	$a4,$a4,$at
    ld	$at,-128($s8)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    lhu	$a3,168($a4)
    and	$a3,$a3,$s7
    b	.L5ef42158
    sh	$a3,168($a4)
.L5ef4226c:
    # lw $t9, -29624($gp)
    la	$a0,local_0x5f0a0000
    jal	perror
    addiu	$a0,$a0,-3504
    b	.L5ef42220
    li	$v0,1
.L5ef42284:
    move	$v0,$zero
    ld	$gp,-88($s8)
    ld	$s0,-152($s8)
    ld	$s1,-160($s8)
    ld	$s2,-176($s8)
    ld	$s3,-192($s8)
    ld	$s4,-144($s8)
    ld	$s5,-168($s8)
    ld	$s6,-184($s8)
    ld	$s7,-200($s8)
    ld	$ra,-208($s8)
    ld	$a3,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L5ef422c0:
    jalr	$t9
    move	$a0,$s7
    lw	$a0,120($v0)
    b	.L5ef41f24
    lw	$a0,0($a0)
.L5ef422d4:
    b	.L5ef41b9c
    sw	$a5,0($a2)
.L5ef422dc:
    b	.L5ef41bbc
    sw	$a6,4($a2)
.L5ef422e4:
    b	.L5ef41c00
    and	$a5,$a5,$v0
.L5ef422ec:
    b	.L5ef41d00
    sw	$a5,0($a2)
.L5ef422f4:
    b	.L5ef41d20
    sw	$a6,4($a2)
.L5ef422fc:
    b	.L5ef41d64
    and	$a5,$a5,$v0
.end expInitiateBufferSwap

.globl expDrawCID
.ent expDrawCID
expDrawCID:
    li	$a4,3
    lw	$v1,8($a1)
    lui	$v0,0x17
    addiu	$v0,$v0,4368
    beqz	$v1,.L5ef4d5b4
    addu	$at,$t9,$v0
    addiu	$a6,$v1,8
    beqz	$v1,.L5ef4d5c0
    nop
    lw	$a1,4($v1)
.L5ef4d4dc:
    lw	$a7,16($a0)
    sll	$a0,$a1,0x3
    addu	$a0,$a6,$a0
    lw	$v0,expScreenPrivateIndex
    lw	$a7,436($a7)
    li	$a3,1
    sll	$v0,$v0,0x2
    addu	$a7,$a7,$v0
    lw	$a7,0($a7)
    sll	$v1,$a2,0x8
    ori	$v1,$v1,0xf000
    lw	$a7,0($a7)
    li	$a5,4107
    lui	$v0,0x4
    addu	$a7,$a7,$v0
    sw	$a5,1324($a7)
    sw	$zero,1236($a7)
    sw	$zero,1328($a7)
    sw	$zero,1916($a7)
    sw	$a4,1916($a7)
    sw	$a3,1916($a7)
    beqz	$a1,.L5ef4d5ac
    sw	$v1,1344($a7)
    slti	$a3,$a1,2
    bnez	$a3,.L5ef4d5c8
    move	$v1,$a6
    addiu	$a1,$a0,-8
    sw	$zero,1216($a7)
    move	$a0,$a7
    lh	$v0,0($v1)
.L5ef4d554:
    sw	$v0,1916($a0)
    lh	$v0,2($v1)
    sw	$v0,1916($a0)
    lh	$v0,4($v1)
    sw	$v0,1916($a0)
    lh	$v0,6($v1)
    addiu	$v1,$v1,8
    sw	$v0,1916($a0)
    sw	$zero,1960($a0)
    sw	$zero,1216($a0)
    bne	$v1,$a1,.L5ef4d554
    lh	$v0,0($v1)
    move	$a3,$v0
    sw	$a3,1916($a7)
    move	$a4,$v1
    lh	$a6,2($a4)
    sw	$a6,1916($a7)
    lh	$a5,4($a4)
    sw	$a5,1916($a7)
    lh	$a4,6($a4)
    sw	$a4,1916($a7)
    sw	$zero,1960($a7)
.L5ef4d5ac:
    jr	$ra
    sw	$zero,1344($a7)
.L5ef4d5b4:
    move	$a6,$a1
    bnezl	$v1,.L5ef4d4dc
    lw	$a1,4($v1)
.L5ef4d5c0:
    b	.L5ef4d4dc
    li	$a1,1
.L5ef4d5c8:
    sw	$zero,1216($a7)
    lh	$a3,0($v1)
    sw	$a3,1916($a7)
    lh	$v0,2($v1)
    sw	$v0,1916($a7)
    lh	$a5,4($v1)
    sw	$a5,1916($a7)
    lh	$a4,6($v1)
    sw	$a4,1916($a7)
    b	.L5ef4d5ac
    sw	$zero,1960($a7)
.end expDrawCID

.globl expNeedCID
.ent expNeedCID
expNeedCID:
    move	$a5,$a0
    lw	$a1,16($a0)
    addiu	$sp,$sp,-80
    sd	$gp,40($sp)
    lw	$a4,52($a0)
    lui	$at,0x17
    addiu	$at,$at,-20552
    beqz	$a4,.L5ef536e4
    addu	$gp,$t9,$at
    lw	$a2,4($a4)
.L5ef53634:
    sltiu	$v0,$a2,3
    bnez	$v0,.L5ef536d4
    sltiu	$v1,$a2,5
    bnez	$v1,.L5ef53658
    sd	$a1,32($sp)
    li	$v0,1
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef53658:
    ld	$t9,32($sp)
    move	$a2,$zero
    addiu	$a0,$sp,0
    lw	$t9,340($t9)
    sd	$ra,48($sp)
    addiu	$a1,$a5,44
    jalr	$t9
    sd	$a1,16($sp)
    ld	$t9,32($sp)
    lw	$t9,364($t9)
    ld	$a2,16($sp)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,0
    lw	$a0,8($sp)
    beqz	$a0,.L5ef536f0
    ld	$a1,32($sp)
    lw	$at,4($a0)
    sd	$at,24($sp)
.L5ef536a4:
    lw	$t9,352($a1)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$v0,24($sp)
    ld	$gp,40($sp)
    li	$v1,1
    beq	$v0,$v1,.L5ef536fc
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,80
.L5ef536d4:
    move	$v0,$zero
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef536e4:
    li	$a2,1
    b	.L5ef53634
    nop
.L5ef536f0:
    li	$a3,1
    b	.L5ef536a4
    sd	$a3,24($sp)
.L5ef536fc:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,80
.end expNeedCID

