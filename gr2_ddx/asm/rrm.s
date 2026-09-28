#
# gr2_ddx: rrm.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl rrmValidateCID
.ent rrmValidateCID
rrmValidateCID:
    addiu	$sp,$sp,-112
    sd	$s8,40($sp)
    la	$v0,rrmScreenPrivateIndex
    sd	$s1,16($sp)
    lw	$s1,132($a0)
    sd	$s2,32($sp)
    lw	$s2,16($a0)
    lw	$v0,0($v0)
    sd	$s5,24($sp)
    la	$s5,rrmWindowPrivateIndex
    sd	$s2,0($sp)
    lw	$s2,436($s2)
    lw	$at,0($s5)
    sll	$v0,$v0,0x2
    addu	$s2,$s2,$v0
    sll	$at,$at,0x2
    addu	$s1,$s1,$at
    lw	$s1,0($s1)
    lw	$s2,0($s2)
    move	$s8,$a0
    lw	$v0,24($s1)
    lw	$at,4($s2)
    lw	$v1,148($s2)
    sll	$a0,$v0,0x3
    subu	$a0,$a0,$v0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    bne	$at,$v0,.L5ef6e5ac
    sd	$v1,8($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s5,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6e5ac:
    lw	$t9,92($s2)
    sd	$ra,48($sp)
    jalr	$t9
    move	$a0,$s8
    beqz	$v0,.L5ef6e870
    ld	$ra,48($sp)
    lw	$v1,12($s2)
    sd	$s6,72($sp)
    andi	$v1,$v1,0x2
    beqz	$v1,.L5ef6e80c
    sd	$s7,56($sp)
    lw	$a0,4($s2)
    lhu	$s7,2($s1)
    sltiu	$a2,$a0,2
    bnez	$a2,.L5ef6e80c
    lw	$s6,148($s2)
    sd	$s4,64($sp)
    sd	$s3,80($sp)
    move	$s3,$zero
    sd	$s0,88($sp)
    b	.L5ef6e6b8
    li	$s0,1
.L5ef6e604:
    sh	$a1,8($a4)
.L5ef6e608:
    lhu	$at,0($a3)
    and	$at,$at,$v0
    sh	$at,0($a3)
.L5ef6e614:
    sw	$zero,24($a6)
    lw	$a1,132($s4)
    addu	$a1,$a0,$a1
    lw	$a1,0($a1)
.L5ef6e624:
    lw	$a3,16($s4)
    lw	$a3,436($a3)
    addu	$a3,$a3,$a5
    lw	$a3,0($a3)
    lw	$a3,148($a3)
    sw	$zero,24($a1)
    lw	$a4,132($s4)
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    sw	$zero,64($a4)
    lw	$a2,4($a3)
    beqz	$a2,.L5ef6e7f8
    sw	$a2,60($a4)
    lw	$at,4($a3)
    lw	$at,132($at)
    addu	$at,$at,$a0
    lw	$at,0($at)
    sw	$s4,64($at)
.L5ef6e66c:
    sw	$s4,4($a3)
    lhu	$v1,0($a4)
    ori	$v1,$v1,0x40
    sh	$v1,0($a4)
    lhu	$a0,8($a3)
    lw	$v0,12($a3)
    ori	$a0,$a0,0x2
    addiu	$v0,$v0,1
    sw	$v0,12($a3)
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef6e6a4
    sh	$a0,8($a3)
    ori	$a2,$a0,0x4
    sh	$a2,8($a3)
.L5ef6e6a4:
    lw	$a0,4($s2)
.L5ef6e6a8:
    addiu	$s0,$s0,1
.L5ef6e6ac:
    sltu	$at,$s0,$a0
    beqz	$at,.L5ef6e800
    addiu	$s3,$s3,28
.L5ef6e6b8:
    lw	$v0,24($s1)
    beq	$v0,$s0,.L5ef6e6a8
    addu	$s4,$s3,$s6
    lw	$s4,28($s4)
    beqz	$s4,.L5ef6e6a8
    lw	$a2,0($s5)
    lw	$a1,132($s4)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lhu	$at,2($a1)
    beql	$at,$s7,.L5ef6e6ac
    addiu	$s0,$s0,1
    lbu	$at,4($a1)
    andi	$at,$at,0x2
    beqzl	$at,.L5ef6e6ac
    addiu	$s0,$s0,1
    lw	$t9,32($s2)
    move	$a0,$s4
    move	$a2,$zero
    jalr	$t9
    li	$a1,2
    lw	$a0,0($s5)
    lw	$a1,132($s4)
    la	$a5,rrmScreenPrivateIndex
    sll	$a0,$a0,0x2
    addu	$a1,$a0,$a1
    lw	$a1,0($a1)
    lw	$a5,0($a5)
    lw	$v0,24($a1)
    sll	$a5,$a5,0x2
    bltz	$v0,.L5ef6e624
    move	$a3,$a1
    lw	$a4,16($s4)
    lhu	$a2,0($a1)
    move	$a6,$a1
    lw	$a4,436($a4)
    andi	$a2,$a2,0x40
    lw	$v0,24($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    lw	$a4,148($a4)
    sll	$at,$at,0x2
    beqz	$a2,.L5ef6e614
    addu	$a4,$a4,$at
    lw	$a7,60($a3)
    beqz	$a7,.L5ef6e860
    lw	$a1,64($a3)
    lw	$at,132($a7)
    addu	$at,$at,$a0
    lw	$at,0($at)
    sw	$a1,64($at)
.L5ef6e790:
    lw	$a1,64($a3)
    beqz	$a1,.L5ef6e868
    lw	$a7,60($a3)
    lw	$v0,132($a1)
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    sw	$a7,60($v0)
    sw	$zero,64($a3)
.L5ef6e7b0:
    sw	$zero,60($a3)
    li	$v0,-65
    lw	$v1,12($a4)
    lhu	$a1,8($a4)
    lw	$a7,0($a4)
    addiu	$v1,$v1,-1
    andi	$a1,$a1,0x1
    andi	$a1,$a1,0xffff
    beqz	$a1,.L5ef6e7dc
    sw	$v1,12($a4)
    ori	$a1,$a1,0x4
.L5ef6e7dc:
    beqzl	$a7,.L5ef6e608
    sh	$a1,8($a4)
    lw	$a2,4($a4)
    beq	$a2,$a7,.L5ef6e604
    ori	$a1,$a1,0x2
    b	.L5ef6e604
    ori	$a1,$a1,0x4
.L5ef6e7f8:
    b	.L5ef6e66c
    sw	$s4,0($a3)
.L5ef6e800:
    ld	$s0,88($sp)
    ld	$s4,64($sp)
    ld	$s3,80($sp)
.L5ef6e80c:
    addiu	$a1,$s8,44
    ld	$t9,0($sp)
    ld	$s7,56($sp)
    ld	$s5,8($sp)
    lw	$t9,344($t9)
    ld	$s6,72($sp)
    addiu	$s5,$s5,16
    jalr	$t9
    move	$a0,$s5
    lw	$t9,76($s2)
    move	$a0,$s8
    move	$a1,$s5
    jalr	$t9
    lw	$a2,24($s1)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$ra,48($sp)
    ld	$s5,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6e860:
    b	.L5ef6e790
    sw	$a1,0($a4)
.L5ef6e868:
    b	.L5ef6e7b0
    sw	$a7,4($a4)
.L5ef6e870:
    lw	$a0,0($s5)
    lw	$a6,132($s8)
    lw	$a3,16($s8)
    sll	$a0,$a0,0x2
    addu	$a6,$a6,$a0
    lw	$a6,0($a6)
    la	$v0,rrmScreenPrivateIndex
    ld	$s8,40($sp)
    move	$a1,$a6
    lw	$v0,0($v0)
    lw	$a3,436($a3)
    lhu	$at,0($a6)
    sll	$v0,$v0,0x2
    addu	$a3,$a3,$v0
    lw	$a3,0($a3)
    lw	$v1,24($a6)
    andi	$at,$at,0x40
    lw	$a3,148($a3)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6e95c
    addu	$a3,$a3,$v0
    lw	$a4,60($a1)
    beqz	$a4,.L5ef6e97c
    lw	$a5,64($a1)
    lw	$a2,132($a4)
    addu	$a2,$a2,$a0
    lw	$a2,0($a2)
    sw	$a5,64($a2)
.L5ef6e8e8:
    lw	$a5,64($a1)
    beqz	$a5,.L5ef6e984
    lw	$a4,60($a1)
    lw	$at,132($a5)
    addu	$at,$at,$a0
    lw	$at,0($at)
    sw	$a4,60($at)
    sw	$zero,64($a1)
.L5ef6e908:
    sw	$zero,60($a1)
    li	$at,-65
    lw	$v0,12($a3)
    lhu	$a0,8($a3)
    lw	$a4,0($a3)
    addiu	$v0,$v0,-1
    andi	$a0,$a0,0x1
    andi	$a0,$a0,0xffff
    beqz	$a0,.L5ef6e934
    sw	$v0,12($a3)
    ori	$a0,$a0,0x4
.L5ef6e934:
    beqzl	$a4,.L5ef6e950
    sh	$a0,8($a3)
    lw	$v1,4($a3)
    beq	$v1,$a4,.L5ef6e94c
    ori	$a0,$a0,0x2
    ori	$a0,$a0,0x4
.L5ef6e94c:
    sh	$a0,8($a3)
.L5ef6e950:
    lhu	$a2,0($a1)
    and	$a2,$a2,$at
    sh	$a2,0($a1)
.L5ef6e95c:
    sw	$zero,24($a6)
    lw	$v0,4($s2)
    ld	$s5,24($sp)
    ld	$s2,32($sp)
    sw	$v0,24($s1)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6e97c:
    b	.L5ef6e8e8
    sw	$a5,0($a3)
.L5ef6e984:
    b	.L5ef6e908
    sw	$a4,4($a3)
.end rrmValidateCID

.globl FindFreeCID
.ent FindFreeCID
FindFreeCID:
    addiu	$sp,$sp,-80
    sd	$s3,40($sp)
    move	$s3,$zero
    sd	$s0,0($sp)
    sd	$ra,32($sp)
    sd	$s2,16($sp)
    sd	$s4,24($sp)
    la	$s4,rrmScreenPrivateIndex
    sd	$s1,8($sp)
    move	$s1,$a0
    lw	$s2,16($s1)
    la	$t8,rrmWindowPrivateIndex
    lw	$s4,0($s4)
    lw	$s2,436($s2)
    lw	$t8,0($t8)
    sll	$s4,$s4,0x2
    addu	$s2,$s2,$s4
    lw	$s2,0($s2)
    lw	$s4,132($s1)
    sll	$t8,$t8,0x2
    lw	$t9,92($s2)
    addu	$s4,$s4,$t8
    lw	$s4,0($s4)
    jalr	$t9
    lw	$s0,148($s2)
    move	$a2,$zero
    beqz	$v0,.L5ef6e2f8
    li	$t0,1
    lw	$a3,24($s4)
    bltz	$a3,.L5ef6db48
    sll	$at,$a3,0x3
    subu	$at,$at,$a3
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    lhu	$at,8($at)
    andi	$at,$at,0x4
    beqzl	$at,.L5ef6e330
    ld	$s0,0($sp)
.L5ef6db48:
    lw	$a4,4($s2)
    beqz	$a4,.L5ef6dbec
    la	$a5,rrmWindowPrivateIndex
    lw	$a5,0($a5)
    move	$a0,$zero
    b	.L5ef6db80
    sll	$a5,$a5,0x2
    lhu	$at,8($a6)
.L5ef6db68:
    andi	$at,$at,0x1
    beqzl	$at,.L5ef6dbbc
    lw	$a1,12($a6)
.L5ef6db74:
    addiu	$a0,$a0,1
.L5ef6db78:
    beq	$a0,$a4,.L5ef6dbec
    addiu	$a2,$a2,28
.L5ef6db80:
    beql	$a0,$a3,.L5ef6db78
    addiu	$a0,$a0,1
    lhu	$a7,2($s4)
    addu	$a6,$a2,$s0
    lhu	$v0,10($a6)
    beql	$v0,$a7,.L5ef6db68
    lhu	$at,8($a6)
    bnel	$t0,$a7,.L5ef6db78
    addiu	$a0,$a0,1
    lw	$v1,12($s2)
    andi	$v1,$v1,0x2
    beqzl	$v1,.L5ef6db78
    addiu	$a0,$a0,1
    b	.L5ef6db68
    lhu	$at,8($a6)
.L5ef6dbbc:
    beqzl	$a1,.L5ef6e36c
    lw	$a4,132($s1)
    lw	$v0,0($a6)
    lw	$v0,132($v0)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    lbu	$at,4($v0)
    lbu	$v0,6($v0)
    beql	$at,$v0,.L5ef6db78
    addiu	$a0,$a0,1
    b	.L5ef6db74
    move	$s3,$a0
.L5ef6dbec:
    beqz	$s3,.L5ef6df4c
    lw	$t9,32($s2)
    li	$a1,2
    sll	$s4,$s3,0x3
    subu	$s4,$s4,$s3
    sll	$s4,$s4,0x2
    addu	$s2,$s4,$s0
    lw	$s2,0($s2)
    move	$a2,$zero
    jalr	$t9
    move	$a0,$s2
    la	$a5,rrmWindowPrivateIndex
    lw	$a5,0($a5)
    lw	$a0,132($s2)
    la	$a3,rrmScreenPrivateIndex
    sll	$a5,$a5,0x2
    addu	$a0,$a5,$a0
    lw	$a0,0($a0)
    lw	$a3,0($a3)
    lw	$at,24($a0)
    sll	$a3,$a3,0x2
    move	$a2,$a0
    bltz	$at,.L5ef6dd2c
    move	$a7,$a0
    lw	$a4,16($s2)
    lhu	$at,0($a0)
    lw	$a4,436($a4)
    andi	$at,$at,0x40
    lw	$v1,24($a0)
    addu	$a4,$a4,$a3
    lw	$a4,0($a4)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    lw	$a4,148($a4)
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6dd1c
    addu	$a4,$a4,$v0
    lw	$a6,60($a2)
    beqz	$a6,.L5ef6e2d8
    lw	$a0,64($a2)
    lw	$at,132($a6)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$a0,64($at)
.L5ef6dc9c:
    lw	$a0,64($a2)
    beqz	$a0,.L5ef6e2e0
    lw	$a6,60($a2)
    lw	$v0,132($a0)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    sw	$a6,60($v0)
    sw	$zero,64($a2)
.L5ef6dcbc:
    sw	$zero,60($a2)
    lw	$v1,12($a4)
    lhu	$a0,8($a4)
    addiu	$v1,$v1,-1
    andi	$a0,$a0,0x1
    andi	$a0,$a0,0xffff
    beqz	$a0,.L5ef6dce4
    sw	$v1,12($a4)
    ori	$a0,$a0,0x4
    andi	$a0,$a0,0xffff
.L5ef6dce4:
    lw	$a6,0($a4)
    beqzl	$a6,.L5ef6dd0c
    sh	$a0,8($a4)
    lw	$a1,4($a4)
    ori	$a0,$a0,0x2
    beq	$a1,$a6,.L5ef6dd08
    andi	$a0,$a0,0xffff
    ori	$a0,$a0,0x4
    andi	$a0,$a0,0xffff
.L5ef6dd08:
    sh	$a0,8($a4)
.L5ef6dd0c:
    lhu	$a1,0($a2)
    li	$at,-65
    and	$a1,$a1,$at
    sh	$a1,0($a2)
.L5ef6dd1c:
    sw	$zero,24($a7)
    lw	$a0,132($s2)
    addu	$a0,$a5,$a0
    lw	$a0,0($a0)
.L5ef6dd2c:
    lw	$a2,16($s2)
    lw	$a2,436($a2)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lw	$a2,148($a2)
    sw	$zero,24($a0)
    lw	$a4,132($s2)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    sw	$zero,64($a4)
    lw	$a1,4($a2)
    ld	$s0,0($sp)
    beqz	$a1,.L5ef6e2c8
    sw	$a1,60($a4)
    lw	$at,4($a2)
    lw	$at,132($at)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$s2,64($at)
.L5ef6dd78:
    sw	$s2,4($a2)
    lhu	$v1,0($a4)
    ori	$v1,$v1,0x40
    sh	$v1,0($a4)
    lhu	$a0,8($a2)
    lw	$v0,12($a2)
    ld	$s2,16($sp)
    ori	$a0,$a0,0x2
    addiu	$v0,$v0,1
    sw	$v0,12($a2)
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef6ddb4
    sh	$a0,8($a2)
    ori	$a1,$a0,0x4
    sh	$a1,8($a2)
.L5ef6ddb4:
    lw	$a4,132($s1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lw	$at,24($a4)
    move	$a2,$a4
    bltz	$at,.L5ef6deb0
    move	$a7,$a4
    lw	$a6,16($s1)
    lhu	$at,0($a4)
    lw	$a6,436($a6)
    andi	$at,$at,0x40
    lw	$v1,24($a4)
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    lw	$a6,148($a6)
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6dea0
    addu	$a6,$a6,$v0
    lw	$a4,60($a2)
    beqz	$a4,.L5ef6e2e8
    lw	$a0,64($a2)
    lw	$at,132($a4)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$a0,64($at)
.L5ef6de20:
    lw	$a0,64($a2)
    li	$at,-65
    beqz	$a0,.L5ef6e2f0
    lw	$a4,60($a2)
    lw	$v0,132($a0)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    sw	$a4,60($v0)
    sw	$zero,64($a2)
.L5ef6de44:
    sw	$zero,60($a2)
    lw	$v1,12($a6)
    lhu	$a0,8($a6)
    lw	$a4,0($a6)
    addiu	$v1,$v1,-1
    andi	$a0,$a0,0x1
    andi	$a0,$a0,0xffff
    beqz	$a0,.L5ef6de70
    sw	$v1,12($a6)
    ori	$a0,$a0,0x4
    andi	$a0,$a0,0xffff
.L5ef6de70:
    beqzl	$a4,.L5ef6de94
    sh	$a0,8($a6)
    lw	$a1,4($a6)
    ori	$a0,$a0,0x2
    beq	$a1,$a4,.L5ef6de90
    andi	$a0,$a0,0xffff
    ori	$a0,$a0,0x4
    andi	$a0,$a0,0xffff
.L5ef6de90:
    sh	$a0,8($a6)
.L5ef6de94:
    lhu	$a1,0($a2)
    and	$a1,$a1,$at
    sh	$a1,0($a2)
.L5ef6dea0:
    sw	$zero,24($a7)
    lw	$a4,132($s1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
.L5ef6deb0:
    lw	$a0,16($s1)
    lw	$a0,436($a0)
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    lw	$a0,148($a0)
    sw	$s3,24($a4)
    lw	$a2,132($s1)
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    ld	$ra,32($sp)
    sw	$zero,64($a2)
    addu	$a0,$a0,$s4
    lw	$at,4($a0)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    beqz	$at,.L5ef6e2d0
    sw	$at,60($a2)
    lw	$a1,4($a0)
    lw	$a1,132($a1)
    addu	$a1,$a1,$a5
    lw	$a1,0($a1)
    sw	$s1,64($a1)
.L5ef6df08:
    sw	$s1,4($a0)
    lhu	$v0,0($a2)
    ori	$v0,$v0,0x40
    sh	$v0,0($a2)
    lhu	$a3,8($a0)
    lw	$at,12($a0)
    ld	$s1,8($sp)
    ori	$a3,$a3,0x2
    addiu	$at,$at,1
    sw	$at,12($a0)
    sltiu	$at,$at,2
    bnez	$at,.L5ef6df44
    sh	$a3,8($a0)
    ori	$v1,$a3,0x4
    sh	$v1,8($a0)
.L5ef6df44:
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6df4c:
    lw	$s4,136($s2)
    addiu	$s4,$s4,1
    sltu	$a1,$s4,$a4
    bnez	$a1,.L5ef6df68
    li	$a1,2
    li	$s4,1
    li	$a1,2
.L5ef6df68:
    sw	$s4,136($s2)
    sll	$s3,$s4,0x3
    subu	$s3,$s3,$s4
    sll	$s3,$s3,0x2
    sd	$s3,48($sp)
    addu	$s3,$s3,$s0
    lw	$s3,0($s3)
    move	$a2,$zero
    jalr	$t9
    move	$a0,$s3
    la	$a5,rrmWindowPrivateIndex
    lw	$a5,0($a5)
    lw	$a2,132($s3)
    sll	$a5,$a5,0x2
    addu	$a2,$a5,$a2
    lw	$a2,0($a2)
    la	$a3,rrmScreenPrivateIndex
    lw	$at,24($a2)
    lw	$a3,0($a3)
    ld	$a0,48($sp)
    bltz	$at,.L5ef6e0a8
    sll	$a3,$a3,0x2
    move	$t0,$a2
    lw	$a6,16($s3)
    lhu	$at,0($a2)
    move	$a4,$a2
    lw	$a6,436($a6)
    andi	$at,$at,0x40
    lw	$v1,24($a2)
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    lw	$a6,148($a6)
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6e098
    addu	$a6,$a6,$v0
    lw	$a7,60($a4)
    beqz	$a7,.L5ef6e34c
    lw	$a2,64($a4)
    lw	$at,132($a7)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$a2,64($at)
.L5ef6e018:
    lw	$a2,64($a4)
    beqz	$a2,.L5ef6e354
    lw	$a7,60($a4)
    lw	$v0,132($a2)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    sw	$a7,60($v0)
    sw	$zero,64($a4)
.L5ef6e038:
    sw	$zero,60($a4)
    lw	$v1,12($a6)
    lhu	$a2,8($a6)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x1
    andi	$a2,$a2,0xffff
    beqz	$a2,.L5ef6e060
    sw	$v1,12($a6)
    ori	$a2,$a2,0x4
    andi	$a2,$a2,0xffff
.L5ef6e060:
    lw	$a7,0($a6)
    beqzl	$a7,.L5ef6e088
    sh	$a2,8($a6)
    lw	$at,4($a6)
    ori	$a2,$a2,0x2
    beq	$at,$a7,.L5ef6e084
    andi	$a2,$a2,0xffff
    ori	$a2,$a2,0x4
    andi	$a2,$a2,0xffff
.L5ef6e084:
    sh	$a2,8($a6)
.L5ef6e088:
    lhu	$at,0($a4)
    li	$v0,-65
    and	$at,$at,$v0
    sh	$at,0($a4)
.L5ef6e098:
    sw	$zero,24($t0)
    lw	$a2,132($s3)
    addu	$a2,$a5,$a2
    lw	$a2,0($a2)
.L5ef6e0a8:
    lw	$a4,16($s3)
    lw	$a4,436($a4)
    addu	$a4,$a4,$a3
    lw	$a4,0($a4)
    lw	$a4,148($a4)
    sw	$zero,24($a2)
    lw	$a6,132($s3)
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    sw	$zero,64($a6)
    lw	$at,4($a4)
    beqz	$at,.L5ef6e320
    sw	$at,60($a6)
    lw	$at,4($a4)
    lw	$at,132($at)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$s3,64($at)
.L5ef6e0f0:
    sw	$s3,4($a4)
    lhu	$v1,0($a6)
    ori	$v1,$v1,0x40
    sh	$v1,0($a6)
    lw	$v0,12($a4)
    lhu	$a2,8($a4)
    addiu	$v0,$v0,1
    sw	$v0,12($a4)
    ori	$a2,$a2,0x2
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef6e128
    sh	$a2,8($a4)
    ori	$a1,$a2,0x4
    sh	$a1,8($a4)
.L5ef6e128:
    lw	$a4,132($s1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    lw	$at,24($a4)
    bltz	$at,.L5ef6e224
    move	$t0,$a4
    lw	$a7,16($s1)
    lhu	$at,0($a4)
    move	$a6,$a4
    lw	$a7,436($a7)
    andi	$at,$at,0x40
    lw	$v1,24($a4)
    addu	$a7,$a7,$a3
    lw	$a7,0($a7)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    lw	$a7,148($a7)
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6e214
    addu	$a7,$a7,$v0
    lw	$a4,60($a6)
    beqz	$a4,.L5ef6e35c
    lw	$a2,64($a6)
    lw	$at,132($a4)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$a2,64($at)
.L5ef6e194:
    lw	$a2,64($a6)
    beqz	$a2,.L5ef6e364
    lw	$a4,60($a6)
    lw	$v0,132($a2)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    sw	$a4,60($v0)
    sw	$zero,64($a6)
.L5ef6e1b4:
    sw	$zero,60($a6)
    lw	$v1,12($a7)
    lhu	$a2,8($a7)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x1
    andi	$a2,$a2,0xffff
    beqz	$a2,.L5ef6e1dc
    sw	$v1,12($a7)
    ori	$a2,$a2,0x4
    andi	$a2,$a2,0xffff
.L5ef6e1dc:
    lw	$a4,0($a7)
    beqzl	$a4,.L5ef6e204
    sh	$a2,8($a7)
    lw	$at,4($a7)
    ori	$a2,$a2,0x2
    beq	$at,$a4,.L5ef6e200
    andi	$a2,$a2,0xffff
    ori	$a2,$a2,0x4
    andi	$a2,$a2,0xffff
.L5ef6e200:
    sh	$a2,8($a7)
.L5ef6e204:
    lhu	$at,0($a6)
    li	$v0,-65
    and	$at,$at,$v0
    sh	$at,0($a6)
.L5ef6e214:
    sw	$zero,24($t0)
    lw	$a4,132($s1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
.L5ef6e224:
    lw	$a2,16($s1)
    lw	$a2,436($a2)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lw	$a2,148($a2)
    sw	$s4,24($a4)
    lw	$a6,132($s1)
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    sw	$zero,64($a6)
    addu	$a2,$a2,$a0
    lw	$at,4($a2)
    beqz	$at,.L5ef6e328
    sw	$at,60($a6)
    lw	$at,4($a2)
    lw	$at,132($at)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$s1,64($at)
.L5ef6e270:
    sw	$s1,4($a2)
    lhu	$v1,0($a6)
    ori	$v1,$v1,0x40
    sh	$v1,0($a6)
    lw	$v0,12($a2)
    lhu	$a0,8($a2)
    addiu	$v0,$v0,1
    sw	$v0,12($a2)
    ori	$a0,$a0,0x2
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef6e2a8
    sh	$a0,8($a2)
    ori	$a1,$a0,0x4
    sh	$a1,8($a2)
.L5ef6e2a8:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    ld	$ra,32($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6e2c8:
    b	.L5ef6dd78
    sw	$s2,0($a2)
.L5ef6e2d0:
    b	.L5ef6df08
    sw	$s1,0($a0)
.L5ef6e2d8:
    b	.L5ef6dc9c
    sw	$a0,0($a4)
.L5ef6e2e0:
    b	.L5ef6dcbc
    sw	$a6,4($a4)
.L5ef6e2e8:
    b	.L5ef6de20
    sw	$a0,0($a6)
.L5ef6e2f0:
    b	.L5ef6de44
    sw	$a4,4($a6)
.L5ef6e2f8:
    ld	$s1,8($sp)
    lw	$s0,4($s2)
    ld	$s2,16($sp)
    ld	$s3,40($sp)
    ld	$ra,32($sp)
    sw	$s0,24($s4)
    ld	$s0,0($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6e320:
    b	.L5ef6e0f0
    sw	$s3,0($a4)
.L5ef6e328:
    b	.L5ef6e270
    sw	$s1,0($a2)
.L5ef6e330:
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    ld	$ra,32($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6e34c:
    b	.L5ef6e018
    sw	$a2,0($a6)
.L5ef6e354:
    b	.L5ef6e038
    sw	$a7,4($a6)
.L5ef6e35c:
    b	.L5ef6e194
    sw	$a2,0($a7)
.L5ef6e364:
    b	.L5ef6e1b4
    sw	$a4,4($a7)
.L5ef6e36c:
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    la	$a3,rrmScreenPrivateIndex
    lw	$at,24($a4)
    lw	$a3,0($a3)
    bltz	$at,.L5ef6e464
    sll	$a3,$a3,0x2
    move	$t1,$a4
    lw	$a7,16($s1)
    lhu	$at,0($a4)
    move	$a6,$a4
    lw	$a7,436($a7)
    andi	$at,$at,0x40
    lw	$v1,24($a4)
    addu	$a7,$a7,$a3
    lw	$a7,0($a7)
    sll	$v0,$v1,0x3
    subu	$v0,$v0,$v1
    lw	$a7,148($a7)
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef6e454
    addu	$a7,$a7,$v0
    lw	$t0,60($a6)
    beqz	$t0,.L5ef6e510
    lw	$a4,64($a6)
    lw	$at,132($t0)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$a4,64($at)
.L5ef6e3e0:
    lw	$a4,64($a6)
    beqz	$a4,.L5ef6e518
    lw	$t0,60($a6)
    lw	$v0,132($a4)
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    sw	$t0,60($v0)
    sw	$zero,64($a6)
.L5ef6e400:
    sw	$zero,60($a6)
    lw	$v1,12($a7)
    lhu	$a4,8($a7)
    addiu	$v1,$v1,-1
    andi	$a4,$a4,0x1
    andi	$a4,$a4,0xffff
    beqz	$a4,.L5ef6e424
    sw	$v1,12($a7)
    ori	$a4,$a4,0x4
.L5ef6e424:
    lw	$t0,0($a7)
    beqzl	$t0,.L5ef6e444
    sh	$a4,8($a7)
    lw	$a1,4($a7)
    beq	$a1,$t0,.L5ef6e440
    ori	$a4,$a4,0x2
    ori	$a4,$a4,0x4
.L5ef6e440:
    sh	$a4,8($a7)
.L5ef6e444:
    lhu	$at,0($a6)
    li	$v0,-65
    and	$at,$at,$v0
    sh	$at,0($a6)
.L5ef6e454:
    sw	$zero,24($t1)
    lw	$a4,132($s1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
.L5ef6e464:
    lw	$a6,16($s1)
    lw	$a6,436($a6)
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    lw	$a6,148($a6)
    sw	$a0,24($a4)
    lw	$a7,132($s1)
    addu	$a7,$a7,$a5
    lw	$a7,0($a7)
    sw	$zero,64($a7)
    addu	$a6,$a6,$a2
    lw	$at,4($a6)
    beqz	$at,.L5ef6e508
    sw	$at,60($a7)
    lw	$at,4($a6)
    lw	$at,132($at)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$s1,64($at)
.L5ef6e4b0:
    sw	$s1,4($a6)
    lhu	$v1,0($a7)
    ori	$v1,$v1,0x40
    sh	$v1,0($a7)
    lw	$v0,12($a6)
    lhu	$a0,8($a6)
    addiu	$v0,$v0,1
    sw	$v0,12($a6)
    ori	$a0,$a0,0x2
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef6e4e8
    sh	$a0,8($a6)
    ori	$a1,$a0,0x4
    sh	$a1,8($a6)
.L5ef6e4e8:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    ld	$ra,32($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6e508:
    b	.L5ef6e4b0
    sw	$s1,0($a6)
.L5ef6e510:
    b	.L5ef6e3e0
    sw	$a4,0($a7)
.L5ef6e518:
    b	.L5ef6e400
    sw	$t0,4($a7)
.end FindFreeCID

.globl FindBestID
.ent FindBestID
FindBestID:
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    sd	$s1,16($sp)
    sd	$s4,32($sp)
    lw	$t0,132($a0)
    sd	$s5,8($sp)
    la	$t2,rrmScreenPrivateIndex
    sd	$s0,24($sp)
    lw	$s0,16($a0)
    la	$s5,rrmWindowPrivateIndex
    lw	$t2,0($t2)
    lw	$s0,436($s0)
    lw	$t1,0($s5)
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$s0
    li	$s0,-1
    sll	$t1,$t1,0x2
    lw	$t2,0($t2)
    addu	$t0,$t0,$t1
    lw	$t0,0($t0)
    lw	$a6,0($t2)
    move	$s4,$t2
    move	$v0,$s4
    beqz	$a6,.L5ef72ccc
    move	$s1,$t0
    move	$a1,$zero
    lhu	$a4,2($s1)
    lw	$t3,20($s4)
    b	.L5ef72c7c
    lw	$a7,16($s4)
.L5ef72c48:
    move	$t8,$zero
.L5ef72c4c:
    move	$a0,$t8
.L5ef72c50:
    beqzl	$a0,.L5ef72c74
    addiu	$a1,$a1,1
    bne	$a4,$a5,.L5ef72c70
    move	$s0,$a1
    lhu	$at,168($v0)
    andi	$at,$at,0x4
    bnez	$at,.L5ef72d54
    move	$s0,$a1
.L5ef72c70:
    addiu	$a1,$a1,1
.L5ef72c74:
    beq	$a1,$a6,.L5ef72ccc
    addiu	$v0,$v0,36
.L5ef72c7c:
    lhu	$a5,170($v0)
    move	$a0,$a7
    beq	$a4,$a5,.L5ef72c94
    move	$t8,$t3
    b	.L5ef72c50
    move	$a0,$zero
.L5ef72c94:
    lw	$a2,160($v0)
    lw	$v1,32($s1)
    and	$a2,$a2,$a0
    and	$v1,$v1,$a0
    bnel	$v1,$a2,.L5ef72c4c
    move	$t8,$zero
    lw	$a3,164($v0)
    lw	$a2,36($s1)
    and	$a3,$a3,$t8
    and	$a2,$a2,$t8
    bne	$a2,$a3,.L5ef72c48
    li	$t8,1
    b	.L5ef72c50
    move	$a0,$t8
.L5ef72ccc:
    bltz	$s0,.L5ef72e64
    nop	# was lw $t9, -32192($gp)
    sll	$s1,$s0,0x3
    addu	$s1,$s1,$s0
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$s4
    lw	$s1,152($s1)
    beqz	$s1,.L5ef72d28
    sd	$ra,40($sp)
    sd	$ra,40($sp)
    lw	$t9,32($s4)
.L5ef72cf8:
    move	$a0,$s1
    move	$a1,$zero
    jal	cmapDID
    li	$a2,1
    lw	$at,0($s5)
    lw	$s1,132($s1)
    sll	$at,$at,0x2
    addu	$s1,$s1,$at
    lw	$s1,0($s1)
    lw	$s1,48($s1)
    bnezl	$s1,.L5ef72cf8
    lw	$t9,32($s4)
.L5ef72d28:
    # lw $t9, -32148($gp)
    ld	$a0,0($sp)
    bal	NewID__FIC
    move	$a1,$s0
    ld	$ra,40($sp)
.L5ef72d3c:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef72d54:
    lw	$v1,20($s1)
    beq	$v1,$a1,.L5ef72e50
    ld	$s0,24($sp)
    lw	$a2,20($t0)
    bltz	$a2,.L5ef72e3c
    nop	# was lw $t9, -32152($gp)
    lhu	$a3,0($t0)
    lw	$a2,20($t0)
    move	$v0,$t0
    andi	$a3,$a3,0x8
    sll	$a0,$a2,0x3
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$t2
    beqz	$a3,.L5ef72e2c
    addiu	$a0,$a0,152
    lw	$a4,44($v0)
    beqz	$a4,.L5ef72e94
    lw	$a5,48($v0)
    lw	$at,132($a4)
    addu	$at,$at,$t1
    lw	$at,0($at)
    sw	$a5,48($at)
.L5ef72db0:
    lw	$a5,48($v0)
    beqz	$a5,.L5ef72e9c
    lw	$a4,44($v0)
    lw	$v1,132($a5)
    addu	$v1,$v1,$t1
    lw	$v1,0($v1)
    sw	$a4,44($v1)
    sw	$zero,48($v0)
.L5ef72dd0:
    sw	$zero,44($v0)
    li	$v1,-9
    lw	$a2,20($a0)
    lhu	$a4,16($a0)
    lw	$a6,0($a0)
    addiu	$a2,$a2,-1
    andi	$a4,$a4,0x31
    andi	$a4,$a4,0xffff
    andi	$a3,$a4,0x1
    beqz	$a3,.L5ef72e00
    sw	$a2,20($a0)
    ori	$a4,$a4,0x6
.L5ef72e00:
    beqz	$a6,.L5ef72ea4
    li	$a5,-17
    lw	$a3,4($a0)
    ori	$a5,$a4,0x2
    beql	$a3,$a6,.L5ef72e20
    sh	$a5,16($a0)
    ori	$a5,$a4,0x6
.L5ef72e1c:
    sh	$a5,16($a0)
.L5ef72e20:
    lhu	$at,0($v0)
    and	$at,$at,$v1
    sh	$at,0($v0)
.L5ef72e2c:
    sd	$ra,40($sp)
    li	$a2,-1
    sw	$a2,20($v0)
    # lw $t9, -32152($gp)
.L5ef72e3c:
    sd	$ra,40($sp)
    bal	AssignID__LIC
    ld	$a0,0($sp)
    ld	$ra,40($sp)
    ld	$s0,24($sp)
.L5ef72e50:
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef72e64:
    sd	$ra,40($sp)
    bal	cmapDID
    ld	$a0,0($sp)
    lw	$a3,20($s1)
    beq	$a3,$v0,.L5ef72d3c
    ld	$ra,40($sp)
    # lw $t9, -32148($gp)
    ld	$a0,0($sp)
    bal	NewID__FIC
    move	$a1,$v0
    b	.L5ef72d3c
    ld	$ra,40($sp)
.L5ef72e94:
    b	.L5ef72db0
    sw	$a5,0($a0)
.L5ef72e9c:
    b	.L5ef72dd0
    sw	$a4,4($a0)
.L5ef72ea4:
    b	.L5ef72e1c
    and	$a5,$a4,$a5
.end FindBestID

.globl FindFreeID
.ent FindFreeID
FindFreeID:
    addiu	$sp,$sp,-32
    li	$at,1
    lw	$a7,132($a0)
    la	$t0,rrmWindowPrivateIndex
    lw	$t1,16($a0)
    la	$t2,rrmScreenPrivateIndex
    lw	$t0,0($t0)
    lw	$t1,436($t1)
    lw	$t2,0($t2)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    sll	$t2,$t2,0x2
    addu	$t1,$t2,$t1
    lhu	$a5,2($a7)
    lw	$t1,0($t1)
    move	$a1,$a7
    beq	$a5,$at,.L5ef731e4
    move	$a6,$t1
.L5ef72ef8:
    lw	$a3,20($a1)
    bltz	$a3,.L5ef72f24
    li	$v0,1
    sll	$at,$a3,0x3
    addu	$at,$at,$a3
    sll	$at,$at,0x2
    addu	$at,$at,$a6
    lhu	$at,168($at)
    andi	$at,$at,0x4
    beqz	$at,.L5ef73204
    nop
.L5ef72f24:
    lw	$a4,0($a6)
    beqz	$a4,.L5ef73060
    move	$a1,$zero
    b	.L5ef72f44
    move	$a3,$a6
    addiu	$a1,$a1,1
.L5ef72f3c:
    beq	$a1,$a4,.L5ef73060
    addiu	$a3,$a3,36
.L5ef72f44:
    lhu	$v0,170($a3)
    bnel	$v0,$a5,.L5ef72f3c
    addiu	$a1,$a1,1
    lhu	$v1,168($a3)
    andi	$v1,$v1,0x1
    bnezl	$v1,.L5ef72f3c
    addiu	$a1,$a1,1
    lw	$a2,172($a3)
    bnezl	$a2,.L5ef72f3c
    addiu	$a1,$a1,1
    lw	$at,20($a7)
    bltz	$at,.L5ef73044
    nop	# was lw $t9, -32152($gp)
    lhu	$v0,0($a7)
    lw	$at,20($a7)
    move	$a3,$a7
    andi	$v0,$v0,0x8
    sll	$a4,$at,0x3
    addu	$a4,$a4,$at
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$t1
    beqz	$v0,.L5ef73034
    addiu	$a4,$a4,152
    lw	$a6,44($a3)
    beqz	$a6,.L5ef7320c
    lw	$a5,48($a3)
    lw	$v1,132($a6)
    addu	$v1,$v1,$t0
    lw	$v1,0($v1)
    sw	$a5,48($v1)
.L5ef72fbc:
    lw	$a5,48($a3)
    beqz	$a5,.L5ef73214
    lw	$a6,44($a3)
    lw	$a2,132($a5)
    addu	$a2,$a2,$t0
    lw	$a2,0($a2)
    sw	$a6,44($a2)
    sw	$zero,48($a3)
.L5ef72fdc:
    sw	$zero,44($a3)
    li	$a2,-9
    lw	$at,20($a4)
    lhu	$a5,16($a4)
    lw	$a7,0($a4)
    addiu	$at,$at,-1
    andi	$a5,$a5,0x31
    andi	$a5,$a5,0xffff
    andi	$v0,$a5,0x1
    beqz	$v0,.L5ef7300c
    sw	$at,20($a4)
    ori	$a5,$a5,0x6
.L5ef7300c:
    beqz	$a7,.L5ef7321c
    ori	$a6,$a5,0x2
    lw	$v0,4($a4)
    beql	$v0,$a7,.L5ef73028
    sh	$a6,16($a4)
    ori	$a6,$a5,0x6
.L5ef73024:
    sh	$a6,16($a4)
.L5ef73028:
    lhu	$v1,0($a3)
    and	$v1,$v1,$a2
    sh	$v1,0($a3)
.L5ef73034:
    sd	$ra,0($sp)
    li	$at,-1
    sw	$at,20($a3)
    # lw $t9, -32152($gp)
.L5ef73044:
    sd	$ra,0($sp)
    bal	AssignID__LIC
    nop
    ld	$ra,0($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L5ef73060:
    lw	$v0,48($a6)
    move	$a3,$a6
    beqz	$v0,.L5ef731d8
    move	$a1,$zero
    beqz	$a4,.L5ef731dc
    move	$v0,$zero
    b	.L5ef73090
    lhu	$v1,170($a3)
.L5ef73080:
    addiu	$a1,$a1,1
.L5ef73084:
    beq	$a1,$a4,.L5ef731d8
    addiu	$a3,$a3,36
    lhu	$v1,170($a3)
.L5ef73090:
    bnel	$v1,$a5,.L5ef73084
    addiu	$a1,$a1,1
    lhu	$a6,168($a3)
    andi	$a2,$a6,0x1
    beqz	$a2,.L5ef73080
    andi	$at,$a6,0x20
    bnezl	$at,.L5ef73084
    addiu	$a1,$a1,1
    andi	$v0,$a6,0x2
    bnezl	$v0,.L5ef73084
    addiu	$a1,$a1,1
    lw	$v1,172($a3)
    bnezl	$v1,.L5ef73084
    addiu	$a1,$a1,1
    sh	$zero,168($a3)
    lw	$a7,132($a0)
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    lw	$a2,20($a7)
    bltz	$a2,.L5ef731b8
    move	$a3,$a7
    lw	$a4,16($a0)
    lhu	$at,0($a7)
    lw	$v1,20($a7)
    lw	$a4,436($a4)
    andi	$at,$at,0x8
    sll	$v0,$v1,0x3
    addu	$a4,$a4,$t2
    lw	$a4,0($a4)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$a4,$a4,$v0
    beqz	$at,.L5ef731ac
    addiu	$a4,$a4,152
    lw	$a6,44($a3)
    beqz	$a6,.L5ef73228
    lw	$a5,48($a3)
    lw	$at,132($a6)
    addu	$at,$at,$t0
    lw	$at,0($at)
    sw	$a5,48($at)
.L5ef73134:
    lw	$a5,48($a3)
    beqz	$a5,.L5ef73230
    lw	$a6,44($a3)
    lw	$v0,132($a5)
    addu	$v0,$v0,$t0
    lw	$v0,0($v0)
    sw	$a6,44($v0)
    sw	$zero,48($a3)
.L5ef73154:
    sw	$zero,44($a3)
    lw	$v1,20($a4)
    lhu	$a5,16($a4)
    addiu	$v1,$v1,-1
    andi	$a5,$a5,0x31
    andi	$a5,$a5,0xffff
    andi	$a2,$a5,0x1
    beqz	$a2,.L5ef7317c
    sw	$v1,20($a4)
    ori	$a5,$a5,0x6
.L5ef7317c:
    lw	$a7,0($a4)
    beqz	$a7,.L5ef73238
    li	$a6,-17
    lw	$a2,4($a4)
    beq	$a2,$a7,.L5ef73198
    ori	$a6,$a5,0x2
    ori	$a6,$a5,0x6
.L5ef73198:
    sh	$a6,16($a4)
    lhu	$at,0($a3)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a3)
.L5ef731ac:
    sd	$ra,0($sp)
    li	$v1,-1
    sw	$v1,20($a3)
.L5ef731b8:
    # lw $t9, -32152($gp)
    sd	$ra,0($sp)
    bal	AssignID__LIC
    nop
    ld	$ra,0($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.L5ef731d8:
    move	$v0,$zero
.L5ef731dc:
    jr	$ra
    addiu	$sp,$sp,32
.L5ef731e4:
    lw	$a2,12($a6)
    andi	$a2,$a2,0x1
    beqz	$a2,.L5ef72ef8
    li	$v0,1
    lw	$a3,0($a6)
    addiu	$sp,$sp,32
    jr	$ra
    sw	$a3,20($a1)
.L5ef73204:
    jr	$ra
    addiu	$sp,$sp,32
.L5ef7320c:
    b	.L5ef72fbc
    sw	$a5,0($a4)
.L5ef73214:
    b	.L5ef72fdc
    sw	$a6,4($a4)
.L5ef7321c:
    li	$a6,-17
    b	.L5ef73024
    and	$a6,$a5,$a6
.L5ef73228:
    b	.L5ef73134
    sw	$a5,0($a4)
.L5ef73230:
    b	.L5ef73154
    sw	$a6,4($a4)
.L5ef73238:
    b	.L5ef73198
    and	$a6,$a5,$a6
.end FindFreeID

.globl AssignID__LIC
.ent AssignID__LIC
AssignID__LIC:
    sll	$a3,$a1,0x3
    addu	$a3,$a3,$a1
    sll	$a3,$a3,0x2
    lw	$at,nfbWindowPrivateIndex
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    lw	$s7,16($a0)
    lw	$v0,132($a0)
    sll	$at,$at,0x2
    lw	$s7,436($s7)
    sd	$s8,16($sp)
    la	$s8,rrmScreenPrivateIndex
    addu	$at,$at,$v0
    la	$a5,rrmWindowPrivateIndex
    lw	$s8,0($s8)
    lw	$at,0($at)
    lw	$a5,0($a5)
    sll	$s8,$s8,0x2
    addu	$s7,$s7,$s8
    sll	$a5,$a5,0x2
    addu	$a4,$v0,$a5
    lw	$a4,0($a4)
    lw	$s8,4($at)
    lw	$s7,0($s7)
    sw	$a1,20($a4)
    sw	$a1,4($at)
    sw	$zero,48($a4)
    addu	$a3,$a3,$s7
    lw	$at,156($a3)
    sd	$s0,0($sp)
    move	$s0,$a0
    beqz	$at,.L5ef71000
    sw	$at,44($a4)
    lw	$at,156($a3)
    lw	$at,132($at)
    addu	$at,$at,$a5
    lw	$at,0($at)
    sw	$s0,48($at)
.L5ef70f8c:
    sw	$s0,156($a3)
    lhu	$v1,0($a4)
    ori	$v1,$v1,0x8
    sh	$v1,0($a4)
    lhu	$a0,168($a3)
    lw	$v0,172($a3)
    ori	$a0,$a0,0x2
    addiu	$v0,$v0,1
    sw	$v0,172($a3)
    sltiu	$v0,$v0,2
    bnez	$v0,.L5ef70fcc
    sh	$a0,168($a3)
    ori	$a2,$a0,0x4
    sd	$ra,24($sp)
    b	.L5ef70fd8
    sh	$a2,168($a3)
.L5ef70fcc:
    andi	$at,$a0,0x1
    beqz	$at,.L5ef71008
    sd	$ra,24($sp)
.L5ef70fd8:
    lw	$t9,72($s7)
.L5ef70fdc:
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s8
    ld	$s0,0($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef71000:
    b	.L5ef70f8c
    sw	$s0,152($a3)
.L5ef71008:
    # lw $t9, -32156($gp)
    bal	SetDIDMode
    move	$a0,$s0
    b	.L5ef70fdc
    lw	$t9,72($s7)
.end AssignID__LIC

.globl NewID__FIC
.ent NewID__FIC
NewID__FIC:
    la	$a7,rrmWindowPrivateIndex
    lw	$a7,0($a7)
    lw	$a4,132($a0)
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    lw	$a4,0($a4)
    la	$v0,rrmScreenPrivateIndex
    lw	$at,20($a4)
    lw	$v0,0($v0)
    addiu	$sp,$sp,-32
    bltz	$at,.L5ef71124
    sll	$v0,$v0,0x2
    lw	$a5,16($a0)
    move	$a3,$a4
    lhu	$at,0($a4)
    lw	$a5,436($a5)
    lw	$v1,20($a4)
    andi	$at,$at,0x8
    addu	$a5,$a5,$v0
    sll	$v0,$v1,0x3
    lw	$a5,0($a5)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$a5,$a5,$v0
    beqz	$at,.L5ef71118
    addiu	$a5,$a5,152
    lw	$a6,44($a3)
    beqz	$a6,.L5ef71140
    lw	$a4,48($a3)
    lw	$v1,132($a6)
    addu	$v1,$v1,$a7
    lw	$v1,0($v1)
    sw	$a4,48($v1)
.L5ef710a0:
    lw	$a4,48($a3)
    beqz	$a4,.L5ef71148
    lw	$a6,44($a3)
    lw	$a2,132($a4)
    addu	$a2,$a2,$a7
    lw	$a2,0($a2)
    sw	$a6,44($a2)
    sw	$zero,48($a3)
.L5ef710c0:
    sw	$zero,44($a3)
    li	$a2,-9
    lw	$at,20($a5)
    lhu	$a4,16($a5)
    lw	$a6,0($a5)
    addiu	$at,$at,-1
    andi	$a4,$a4,0x31
    andi	$a4,$a4,0xffff
    andi	$v0,$a4,0x1
    beqz	$v0,.L5ef710f0
    sw	$at,20($a5)
    ori	$a4,$a4,0x6
.L5ef710f0:
    beqz	$a6,.L5ef71150
    li	$v0,-17
    lw	$v0,4($a5)
    beq	$v0,$a6,.L5ef71108
    ori	$a4,$a4,0x2
    ori	$a4,$a4,0x4
.L5ef71108:
    sh	$a4,16($a5)
    lhu	$v1,0($a3)
    and	$v1,$v1,$a2
    sh	$v1,0($a3)
.L5ef71118:
    sd	$ra,0($sp)
    li	$at,-1
    sw	$at,20($a3)
.L5ef71124:
    # lw $t9, -32152($gp)
    sd	$ra,0($sp)
    bal	AssignID__LIC
    nop
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L5ef71140:
    b	.L5ef710a0
    sw	$a4,0($a5)
.L5ef71148:
    b	.L5ef710c0
    sw	$a6,4($a5)
.L5ef71150:
    b	.L5ef71108
    and	$a4,$a4,$v0
.end NewID__FIC

.globl StealID
.ent StealID
StealID:
    addiu	$sp,$sp,-160
    sd	$s0,48($sp)
    sd	$s2,104($sp)
    sd	$s3,96($sp)
    sd	$a0,0($sp)
    sd	$s1,40($sp)
    sd	$s6,64($sp)
    lw	$s6,132($a0)
    la	$at,rrmScreenPrivateIndex
    sd	$s5,56($sp)
    lw	$s5,16($a0)
    la	$a2,rrmWindowPrivateIndex
    lw	$at,0($at)
    lw	$s5,436($s5)
    lw	$a2,0($a2)
    sll	$at,$at,0x2
    addu	$s5,$s5,$at
    lw	$s5,0($s5)
    sll	$a2,$a2,0x2
    addu	$s6,$s6,$a2
    lw	$a1,0($s5)
    lw	$s6,0($s6)
    move	$a4,$s5
    beqz	$a1,.L5ef712d0
    lhu	$s6,2($s6)
    move	$s1,$zero
    sd	$s3,96($sp)
    sd	$s2,104($sp)
    b	.L5ef711dc
    sd	$s0,48($sp)
.L5ef711d0:
    addiu	$s1,$s1,1
.L5ef711d4:
    beq	$s1,$a1,.L5ef712d0
    addiu	$a4,$a4,36
.L5ef711dc:
    lhu	$v0,170($a4)
    move	$a0,$zero
    bne	$v0,$s6,.L5ef711d0
    move	$s0,$zero
    lhu	$v1,168($a4)
    andi	$v1,$v1,0x14
    bnezl	$v1,.L5ef711d4
    addiu	$s1,$s1,1
    lw	$s3,152($a4)
    lw	$t0,132($s3)
    addu	$t0,$a2,$t0
    lw	$t0,0($t0)
    lbu	$a3,4($t0)
    andi	$a3,$a3,0x8
    bnez	$a3,.L5ef711d0
    move	$a7,$t0
    b	.L5ef71270
    nop
.L5ef71224:
    move	$t1,$zero
.L5ef71228:
    move	$a6,$t1
.L5ef7122c:
    beqzl	$a6,.L5ef71268
    addiu	$s0,$s0,1
    lhu	$at,168($a5)
    andi	$at,$at,0x4
    bnezl	$at,.L5ef7198c
    lbu	$v1,6($a7)
    lw	$s2,152($a5)
    lw	$v0,132($s2)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    lbu	$v0,4($v0)
    andi	$v0,$v0,0x8
    beqzl	$v0,.L5ef71c10
    move	$a0,$s3
    addiu	$s0,$s0,1
.L5ef71268:
    beq	$s0,$a1,.L5ef711d0
    addiu	$a0,$a0,36
.L5ef71270:
    beql	$s0,$s1,.L5ef71268
    addiu	$s0,$s0,1
    lhu	$v1,2($a7)
    addu	$a5,$a0,$s5
    lhu	$a3,170($a5)
    lw	$t1,20($s5)
    beq	$v1,$a3,.L5ef71298
    lw	$a6,16($s5)
    b	.L5ef7122c
    move	$a6,$zero
.L5ef71298:
    lw	$v0,160($a5)
    lw	$at,32($a7)
    and	$v0,$v0,$a6
    and	$at,$at,$a6
    bnel	$at,$v0,.L5ef71228
    move	$t1,$zero
    lw	$v1,164($a5)
    lw	$v0,36($a7)
    and	$v1,$v1,$t1
    and	$v0,$v0,$t1
    bne	$v0,$v1,.L5ef71224
    li	$t1,1
    b	.L5ef7122c
    move	$a6,$t1
.L5ef712d0:
    sd	$s7,128($sp)
    lw	$a0,132($s5)
    move	$s7,$zero
    beqz	$a1,.L5ef71e84
    move	$s1,$a0
    sd	$s8,80($sp)
    sd	$s4,88($sp)
    b	.L5ef71348
    sd	$ra,112($sp)
.L5ef712f4:
    move	$a2,$zero
    bltz	$s8,.L5ef716e8
    move	$a0,$zero
    ld	$v1,72($sp)
    beqz	$v1,.L5ef71324
    nop	# was lw $t9, -32148($gp)
    lw	$t9,32($s2)
    ld	$a0,8($sp)
    move	$a1,$zero
    jal	NewID__FIC
    move	$a2,$zero
    # lw $t9, -32148($gp)
.L5ef71324:
    ld	$a0,8($sp)
    bal	NewID__FIC
    move	$a1,$s8
    move	$a1,$s0
.L5ef71334:
    bgez	$a1,.L5ef71ef4
    la	$a2,rrmWindowPrivateIndex
    lw	$a1,0($s5)
.L5ef71340:
    sltu	$a3,$s7,$a1
    beqz	$a3,.L5ef71628
.L5ef71348:
    addiu	$s1,$s1,1
    sltu	$at,$s1,$a1
    bnez	$at,.L5ef71360
    sll	$a0,$s1,0x3
    move	$s1,$zero
    sll	$a0,$s1,0x3
.L5ef71360:
    addu	$a0,$a0,$s1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s5
    lhu	$v0,170($a0)
    li	$v1,1
    bne	$v0,$s6,.L5ef71340
    addiu	$s7,$s7,1
    lhu	$a3,168($a0)
    la	$v0,rrmScreenPrivateIndex
    andi	$a3,$a3,0x14
    bnez	$a3,.L5ef71340
    la	$s8,rrmWindowPrivateIndex
    sd	$zero,72($sp)
    lw	$v0,0($v0)
    lw	$s2,152($a0)
    li	$a1,-1
    sll	$v0,$v0,0x2
    sd	$s2,8($sp)
    lw	$s8,0($s8)
    lw	$s3,132($s2)
    lw	$s2,16($s2)
    sll	$s8,$s8,0x2
    addu	$s3,$s3,$s8
    lw	$s3,0($s3)
    lw	$s2,436($s2)
    li	$s8,-1
    lbu	$at,6($s3)
    addu	$s2,$s2,$v0
    lw	$s2,0($s2)
    andi	$at,$at,0x8
    beqz	$at,.L5ef714d0
    lw	$s0,20($s3)
    ld	$a0,8($sp)
    lw	$t9,32($s2)
    sd	$a1,136($sp)
    move	$a1,$zero
    jal	NewID__FIC
    move	$a2,$zero
    ld	$a1,136($sp)
.L5ef713fc:
    lw	$a5,0($s2)
.L5ef71400:
    move	$s4,$zero
    beqz	$a5,.L5ef712f4
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    move	$a0,$zero
    b	.L5ef71468
    sll	$a2,$a2,0x2
.L5ef7141c:
    move	$a7,$zero
.L5ef71420:
    move	$a6,$a7
.L5ef71424:
    beqzl	$a6,.L5ef71460
    addiu	$s4,$s4,1
    lhu	$a3,168($a4)
    andi	$a3,$a3,0x4
    bnez	$a3,.L5ef714e4
    ld	$a3,72($sp)
    lw	$at,152($a4)
    lw	$at,132($at)
    addu	$at,$at,$a2
    lw	$at,0($at)
    lbu	$at,4($at)
    andi	$at,$at,0x8
    beqz	$at,.L5ef714c8
    nop
.L5ef7145c:
    addiu	$s4,$s4,1
.L5ef71460:
    beq	$s4,$a5,.L5ef712f4
    addiu	$a0,$a0,36
.L5ef71468:
    beql	$s4,$s0,.L5ef71460
    addiu	$s4,$s4,1
    lhu	$v0,2($s3)
    addu	$a4,$a0,$s2
    lhu	$v1,170($a4)
    lw	$a7,20($s2)
    beq	$v0,$v1,.L5ef71490
    lw	$a6,16($s2)
    b	.L5ef71424
    move	$a6,$zero
.L5ef71490:
    lw	$at,160($a4)
    lw	$a3,32($s3)
    and	$at,$at,$a6
    and	$a3,$a3,$a6
    bnel	$a3,$at,.L5ef71420
    move	$a7,$zero
    lw	$v0,164($a4)
    lw	$at,36($s3)
    and	$v0,$v0,$a7
    and	$at,$at,$a7
    bne	$at,$v0,.L5ef7141c
    li	$a7,1
    b	.L5ef71424
    move	$a6,$a7
.L5ef714c8:
    b	.L5ef7145c
    move	$s8,$s4
.L5ef714d0:
    lw	$v0,4($s2)
    bnezl	$v0,.L5ef71400
    lw	$a5,0($s2)
    b	.L5ef713fc
    sd	$v1,72($sp)
.L5ef714e4:
    beqz	$a3,.L5ef71510
    ld	$a4,8($sp)
    lw	$t9,32($s2)
    ld	$a0,8($sp)
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    sll	$a2,$a2,0x2
    ld	$a4,8($sp)
.L5ef71510:
    lw	$a4,132($a4)
    addu	$a4,$a2,$a4
    lw	$a4,0($a4)
    lw	$a3,20($a4)
    ld	$a1,8($sp)
    bltz	$a3,.L5ef71610
    move	$a0,$a4
    lhu	$at,0($a4)
    la	$a3,rrmScreenPrivateIndex
    lw	$a1,16($a1)
    andi	$at,$at,0x8
    lw	$a3,0($a3)
    lw	$a1,436($a1)
    lw	$v0,20($a4)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    sll	$a3,$v0,0x3
    lw	$a1,0($a1)
    addu	$a3,$a3,$v0
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    beqz	$at,.L5ef71608
    addiu	$a1,$a1,152
    lw	$a5,44($a0)
    beqz	$a5,.L5ef71e98
    lw	$a4,48($a0)
    lw	$a3,132($a5)
    addu	$a3,$a3,$a2
    lw	$a3,0($a3)
    sw	$a4,48($a3)
.L5ef71588:
    lw	$a4,48($a0)
    beqz	$a4,.L5ef71ea0
    lw	$a5,44($a0)
    lw	$at,132($a4)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a5,44($at)
    sw	$zero,48($a0)
.L5ef715a8:
    sw	$zero,44($a0)
    li	$at,-9
    lw	$v0,20($a1)
    lhu	$a2,16($a1)
    lw	$a5,0($a1)
    addiu	$v0,$v0,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$v1,$a2,0x1
    beqz	$v1,.L5ef715d8
    sw	$v0,20($a1)
    ori	$a2,$a2,0x6
.L5ef715d8:
    li	$a4,-17
    beqz	$a5,.L5ef715f8
    and	$a4,$a4,$a2
    ori	$a4,$a2,0x2
    lw	$v1,4($a1)
    beql	$v1,$a5,.L5ef715fc
    sh	$a4,16($a1)
    ori	$a4,$a2,0x6
.L5ef715f8:
    sh	$a4,16($a1)
.L5ef715fc:
    lhu	$a3,0($a0)
    and	$a3,$a3,$at
    sh	$a3,0($a0)
.L5ef71608:
    li	$v0,-1
    sw	$v0,20($a0)
.L5ef71610:
    # lw $t9, -32152($gp)
    ld	$a0,8($sp)
    bal	AssignID__LIC
    move	$a1,$s4
    b	.L5ef71334
    move	$a1,$s0
.L5ef71628:
    lw	$a0,132($s5)
    ld	$s7,128($sp)
    ld	$s3,96($sp)
    ld	$s2,104($sp)
    ld	$s1,40($sp)
    ld	$ra,112($sp)
    ld	$s4,88($sp)
    ld	$s8,80($sp)
.L5ef71648:
    b	.L5ef7166c
    move	$s0,$a0
.L5ef71650:
    sll	$a2,$s0,0x3
.L5ef71654:
    addu	$a2,$a2,$s0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s5
    lhu	$v1,170($a2)
    beql	$v1,$s6,.L5ef71684
    lhu	$at,168($a2)
.L5ef7166c:
    addiu	$s0,$s0,1
.L5ef71670:
    sltu	$a3,$s0,$a1
    bnez	$a3,.L5ef71654
    sll	$a2,$s0,0x3
    b	.L5ef71650
    move	$s0,$zero
.L5ef71684:
    andi	$at,$at,0x1
    bnezl	$at,.L5ef71670
    addiu	$s0,$s0,1
    # lw $t9, -32192($gp)
    sd	$ra,112($sp)
    bal	cmapDID
    lw	$a0,152($a2)
    move	$a3,$v0
    # lw $t9, -32732($gp)
    move	$a0,$s5
    move	$a2,$s0
    addiu	$t9,$t9,3304
    bal	SetDIDMode
    addiu	$a1,$s5,152
    # lw $t9, -32148($gp)
    ld	$a0,0($sp)
    bal	NewID__FIC
    move	$a1,$s0
    sw	$s0,132($s5)
    ld	$s0,48($sp)
    ld	$ra,112($sp)
    ld	$s5,56($sp)
    ld	$s6,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef716e8:
    beqz	$a5,.L5ef71788
    move	$s8,$zero
    b	.L5ef71710
    nop
.L5ef716f8:
    move	$a4,$zero
.L5ef716fc:
    bnezl	$a4,.L5ef71788
    move	$a1,$a0
.L5ef71704:
    addiu	$a0,$a0,1
.L5ef71708:
    beq	$a0,$a5,.L5ef71788
    addiu	$a2,$a2,36
.L5ef71710:
    beq	$a0,$s0,.L5ef71704
    addu	$a4,$a2,$s2
    lhu	$at,168($a4)
    andi	$at,$at,0x4
    beqzl	$at,.L5ef71708
    addiu	$a0,$a0,1
    lhu	$v1,170($a4)
    lhu	$v0,2($s3)
    lw	$a6,16($s2)
    lw	$t0,20($s2)
    beq	$v0,$v1,.L5ef71748
    move	$a7,$a6
    b	.L5ef71704
    move	$a4,$zero
.L5ef71748:
    lw	$a3,32($s3)
    lw	$at,160($a4)
    li	$v0,-5
    and	$a3,$a3,$a6
    and	$at,$at,$a7
    and	$at,$at,$v0
    and	$a3,$a3,$v0
    bnel	$a3,$at,.L5ef716fc
    move	$a4,$zero
    lw	$v0,164($a4)
    lw	$at,36($s3)
    and	$v0,$v0,$t0
    and	$at,$at,$t0
    bne	$at,$v0,.L5ef716f8
    li	$a4,1
    move	$a1,$a0
.L5ef71788:
    move	$s4,$zero
    beqz	$a5,.L5ef71930
    nop	# was lw $t9, -32156($gp)
    bne	$s4,$s0,.L5ef717bc
.L5ef71798:
    li	$a0,1
.L5ef7179c:
    beqz	$a0,.L5ef717c8
    addu	$a0,$s8,$s2
.L5ef717a4:
    addiu	$s4,$s4,1
.L5ef717a8:
    sltu	$v0,$s4,$a5
    beqz	$v0,.L5ef7192c
    addiu	$s8,$s8,36
    beq	$s4,$s0,.L5ef7179c
    li	$a0,1
.L5ef717bc:
    beq	$s4,$a1,.L5ef71798
    move	$a0,$zero
    addu	$a0,$s8,$s2
.L5ef717c8:
    lhu	$v1,168($a0)
    andi	$v1,$v1,0x4
    bnezl	$v1,.L5ef717a8
    addiu	$s4,$s4,1
    lhu	$a3,170($a0)
    lhu	$a2,2($s3)
    lw	$a6,16($s2)
    lw	$a4,20($s2)
    beq	$a2,$a3,.L5ef717f8
    move	$a2,$a6
    b	.L5ef7183c
    move	$a2,$zero
.L5ef717f8:
    lw	$at,32($s3)
    lw	$v0,160($a0)
    li	$v1,-5
    and	$at,$at,$a2
    and	$v0,$v0,$a6
    and	$v0,$v0,$v1
    and	$at,$at,$v1
    bnel	$at,$v0,.L5ef71838
    move	$a4,$zero
    lw	$v1,164($a0)
    lw	$v0,36($s3)
    and	$v1,$v1,$a4
    and	$v0,$v0,$a4
    bne	$v0,$v1,.L5ef71838
    move	$a4,$zero
    li	$a4,1
.L5ef71838:
    move	$a2,$a4
.L5ef7183c:
    beqz	$a2,.L5ef717a4
    la	$a3,rrmWindowPrivateIndex
    lw	$a4,152($a0)
    lw	$a3,0($a3)
    lw	$a2,132($a4)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lbu	$v1,6($a2)
    andi	$v1,$v1,0x8
    beqzl	$v1,.L5ef7189c
    lw	$v0,32($a2)
    sd	$a4,32($sp)
    move	$a0,$a4
    sd	$a1,136($sp)
    lw	$t9,32($s2)
    move	$a1,$zero
    sd	$a2,120($sp)
    jal	SetDIDMode
    move	$a2,$zero
    ld	$a2,120($sp)
    ld	$a4,32($sp)
    ld	$a1,136($sp)
    lw	$v0,32($a2)
.L5ef7189c:
    lw	$at,32($s3)
    andi	$v0,$v0,0x4
    andi	$at,$at,0x4
    beql	$at,$v0,.L5ef720ac
    la	$s8,rrmWindowPrivateIndex
    bgez	$a1,.L5ef72120
    la	$a2,rrmWindowPrivateIndex
    lw	$a5,16($a4)
    la	$at,rrmScreenPrivateIndex
    lw	$a2,0($a2)
    lw	$a0,132($a4)
    lw	$at,0($at)
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    lw	$a0,0($a0)
    lw	$a5,436($a5)
    sll	$at,$at,0x2
    lw	$a3,20($a0)
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a5
    addiu	$a2,$a2,152
    lhu	$v0,16($a2)
    andi	$v0,$v0,0x8
    beqz	$v0,.L5ef71ea8
    move	$a1,$s4
    lhu	$a6,18($a2)
    lhu	$a3,2($a0)
    lw	$a7,20($a5)
    beq	$a3,$a6,.L5ef71940
    lw	$a6,16($a5)
    b	.L5ef71978
    move	$a6,$zero
.L5ef7192c:
    # lw $t9, -32156($gp)
.L5ef71930:
    bal	SetDIDMode
    ld	$a0,8($sp)
    b	.L5ef71334
    li	$a1,-1
.L5ef71940:
    lw	$v0,32($a0)
    lw	$at,8($a2)
    and	$v0,$v0,$a6
    and	$at,$at,$a6
    bnel	$at,$v0,.L5ef71974
    move	$a7,$zero
    lw	$v1,36($a0)
    lw	$v0,12($a2)
    and	$v1,$v1,$a7
    and	$v0,$v0,$a7
    bne	$v0,$v1,.L5ef71974
    move	$a7,$zero
    li	$a7,1
.L5ef71974:
    move	$a6,$a7
.L5ef71978:
    sd	$a0,16($sp)
    beqz	$a6,.L5ef71ea8
    sd	$a2,24($sp)
.L5ef71984:
    b	.L5ef717a4
    lw	$a5,0($s2)
.L5ef7198c:
    andi	$v1,$v1,0x8
    beqz	$v1,.L5ef719d8
    ld	$s2,104($sp)
    lw	$a3,4($s5)
    beqz	$a3,.L5ef719d8
    ld	$s2,104($sp)
    move	$a0,$s3
    lw	$t9,32($s5)
    move	$a1,$zero
    sd	$ra,112($sp)
    jal	SetDIDMode
    move	$a2,$zero
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$t0,132($s3)
    ld	$ra,112($sp)
    sll	$a2,$a2,0x2
    addu	$t0,$a2,$t0
    lw	$t0,0($t0)
.L5ef719d8:
    lw	$a3,20($t0)
    bltz	$a3,.L5ef71ac4
    move	$a0,$t0
    lhu	$at,0($t0)
    la	$a3,rrmScreenPrivateIndex
    lw	$a1,16($s3)
    andi	$at,$at,0x8
    lw	$a3,0($a3)
    lw	$a1,436($a1)
    lw	$v0,20($t0)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    sll	$a3,$v0,0x3
    lw	$a1,0($a1)
    addu	$a3,$a3,$v0
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    beqz	$at,.L5ef71ab8
    addiu	$a1,$a1,152
    lw	$a5,44($a0)
    beqz	$a5,.L5ef7207c
    lw	$a4,48($a0)
    lw	$at,132($a5)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a4,48($at)
.L5ef71a40:
    lw	$a4,48($a0)
    beqz	$a4,.L5ef72084
    lw	$a5,44($a0)
    lw	$v0,132($a4)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a5,44($v0)
    sw	$zero,48($a0)
.L5ef71a60:
    sw	$zero,44($a0)
    lw	$v1,20($a1)
    lhu	$a2,16($a1)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$a3,$a2,0x1
    beqz	$a3,.L5ef71a88
    sw	$v1,20($a1)
    ori	$a2,$a2,0x6
.L5ef71a88:
    lw	$a5,0($a1)
    beqz	$a5,.L5ef7208c
    li	$a4,-17
    lw	$a3,4($a1)
    beq	$a3,$a5,.L5ef71aa4
    ori	$a4,$a2,0x2
    ori	$a4,$a2,0x6
.L5ef71aa4:
    sh	$a4,16($a1)
    lhu	$at,0($a0)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a0)
.L5ef71ab8:
    sd	$ra,112($sp)
    li	$v1,-1
    sw	$v1,20($a0)
.L5ef71ac4:
    # lw $t9, -32152($gp)
    move	$a0,$s3
    sd	$ra,112($sp)
    bal	AssignID__LIC
    move	$a1,$s0
    la	$a2,rrmWindowPrivateIndex
    ld	$a5,0($sp)
    lw	$a2,0($a2)
    lw	$a5,132($a5)
    sll	$a2,$a2,0x2
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    la	$at,rrmScreenPrivateIndex
    ld	$a4,0($sp)
    lw	$a3,20($a5)
    lw	$at,0($at)
    ld	$s3,96($sp)
    bltz	$a3,.L5ef71be4
    sll	$at,$at,0x2
    lw	$a4,16($a4)
    move	$a1,$a5
    lhu	$a3,0($a5)
    lw	$a4,436($a4)
    lw	$v0,20($a5)
    andi	$a3,$a3,0x8
    addu	$a4,$a4,$at
    sll	$at,$v0,0x3
    lw	$a4,0($a4)
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    beqz	$a3,.L5ef71bdc
    addiu	$a4,$a4,152
    lw	$a5,44($a1)
    beqz	$a5,.L5ef7204c
    lw	$a6,48($a1)
    lw	$at,132($a5)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a6,48($at)
.L5ef71b64:
    lw	$a6,48($a1)
    beqz	$a6,.L5ef72054
    lw	$a5,44($a1)
    lw	$v0,132($a6)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a5,44($v0)
    sw	$zero,48($a1)
.L5ef71b84:
    sw	$zero,44($a1)
    lw	$v1,20($a4)
    lhu	$a2,16($a4)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$a3,$a2,0x1
    beqz	$a3,.L5ef71bac
    sw	$v1,20($a4)
    ori	$a2,$a2,0x6
.L5ef71bac:
    lw	$a6,0($a4)
    beqz	$a6,.L5ef7205c
    li	$a5,-17
    lw	$a3,4($a4)
    beq	$a3,$a6,.L5ef71bc8
    ori	$a5,$a2,0x2
    ori	$a5,$a2,0x6
.L5ef71bc8:
    sh	$a5,16($a4)
    lhu	$at,0($a1)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a1)
.L5ef71bdc:
    li	$v1,-1
    sw	$v1,20($a1)
.L5ef71be4:
    # lw $t9, -32152($gp)
    ld	$a0,0($sp)
    bal	AssignID__LIC
    move	$a1,$s1
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,112($sp)
    ld	$s5,56($sp)
    ld	$s6,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef71c10:
    lw	$t9,32($s5)
    move	$a1,$zero
    sd	$ra,112($sp)
    jal	AssignID__LIC
    move	$a2,$zero
    lw	$t9,32($s5)
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$t0,132($s3)
    sll	$a2,$a2,0x2
    addu	$t0,$a2,$t0
    lw	$t0,0($t0)
    lw	$a3,20($t0)
    bltz	$a3,.L5ef71d3c
    ld	$s2,104($sp)
    move	$a1,$t0
    lhu	$a3,0($t0)
    la	$at,rrmScreenPrivateIndex
    lw	$a4,16($s3)
    andi	$a3,$a3,0x8
    lw	$at,0($at)
    lw	$a4,436($a4)
    lw	$v0,20($t0)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    sll	$at,$v0,0x3
    lw	$a4,0($a4)
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    beqz	$a3,.L5ef71d34
    addiu	$a4,$a4,152
    lw	$a6,44($a1)
    beqz	$a6,.L5ef72094
    lw	$a5,48($a1)
    lw	$v0,132($a6)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a5,48($v0)
.L5ef71cbc:
    lw	$a5,48($a1)
    beqz	$a5,.L5ef7209c
    lw	$a6,44($a1)
    lw	$v1,132($a5)
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    sw	$a6,44($v1)
    sw	$zero,48($a1)
.L5ef71cdc:
    sw	$zero,44($a1)
    lw	$a3,20($a4)
    lhu	$a2,16($a4)
    addiu	$a3,$a3,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$at,$a2,0x1
    beqz	$at,.L5ef71d04
    sw	$a3,20($a4)
    ori	$a2,$a2,0x6
.L5ef71d04:
    lw	$a6,0($a4)
    beqz	$a6,.L5ef720a4
    li	$a5,-17
    lw	$a5,4($a4)
    beq	$a5,$a6,.L5ef71d20
    ori	$a5,$a2,0x2
    ori	$a5,$a2,0x6
.L5ef71d20:
    sh	$a5,16($a4)
    lhu	$at,0($a1)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a1)
.L5ef71d34:
    li	$v1,-1
    sw	$v1,20($a1)
.L5ef71d3c:
    # lw $t9, -32152($gp)
    move	$a0,$s3
    bal	AssignID__LIC
    move	$a1,$s0
    la	$a2,rrmWindowPrivateIndex
    ld	$a5,0($sp)
    lw	$a2,0($a2)
    lw	$a5,132($a5)
    sll	$a2,$a2,0x2
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    lw	$a3,20($a5)
    bltz	$a3,.L5ef71e58
    ld	$s3,96($sp)
    move	$a1,$a5
    ld	$a4,0($sp)
    lhu	$a3,0($a5)
    la	$at,rrmScreenPrivateIndex
    lw	$a4,16($a4)
    andi	$a3,$a3,0x8
    lw	$at,0($at)
    lw	$a4,436($a4)
    lw	$v0,20($a5)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    sll	$at,$v0,0x3
    lw	$a4,0($a4)
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    beqz	$a3,.L5ef71e50
    addiu	$a4,$a4,152
    lw	$a6,44($a1)
    beqz	$a6,.L5ef72064
    lw	$a5,48($a1)
    lw	$at,132($a6)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a5,48($at)
.L5ef71dd8:
    lw	$a5,48($a1)
    beqz	$a5,.L5ef7206c
    lw	$a6,44($a1)
    lw	$v0,132($a5)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a6,44($v0)
    sw	$zero,48($a1)
.L5ef71df8:
    sw	$zero,44($a1)
    lw	$v1,20($a4)
    lhu	$a2,16($a4)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$a3,$a2,0x1
    beqz	$a3,.L5ef71e20
    sw	$v1,20($a4)
    ori	$a2,$a2,0x6
.L5ef71e20:
    lw	$a6,0($a4)
    beqz	$a6,.L5ef72074
    li	$a5,-17
    lw	$a3,4($a4)
    beq	$a3,$a6,.L5ef71e3c
    ori	$a5,$a2,0x2
    ori	$a5,$a2,0x6
.L5ef71e3c:
    sh	$a5,16($a4)
    lhu	$at,0($a1)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a1)
.L5ef71e50:
    li	$v1,-1
    sw	$v1,20($a1)
.L5ef71e58:
    # lw $t9, -32152($gp)
    ld	$a0,0($sp)
    bal	AssignID__LIC
    move	$a1,$s1
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,112($sp)
    ld	$s5,56($sp)
    ld	$s6,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef71e84:
    ld	$s7,128($sp)
    ld	$s3,96($sp)
    ld	$s2,104($sp)
    b	.L5ef71648
    ld	$s1,40($sp)
.L5ef71e98:
    b	.L5ef71588
    sw	$a4,0($a1)
.L5ef71ea0:
    b	.L5ef715a8
    sw	$a5,4($a1)
.L5ef71ea8:
    sd	$a0,16($sp)
    move	$a0,$a4
    sd	$a2,24($sp)
    lw	$t9,40($a5)
    move	$a2,$a5
    sd	$a1,136($sp)
    jal	AssignID__LIC
    ld	$a1,16($sp)
    ld	$v0,24($sp)
    lhu	$a1,16($v0)
    ld	$at,16($sp)
    ori	$a1,$a1,0x8
    sh	$a1,16($v0)
    lw	$v1,32($at)
    sw	$v1,8($v0)
    lw	$at,36($at)
    ld	$a1,136($sp)
    b	.L5ef71984
    sw	$at,12($v0)
.L5ef71ef4:
    ld	$a5,0($sp)
    lw	$a2,0($a2)
    lw	$a5,132($a5)
    sll	$a2,$a2,0x2
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    ld	$s8,80($sp)
    ld	$s4,88($sp)
    lw	$a3,20($a5)
    ld	$s3,96($sp)
    ld	$s2,104($sp)
    bltz	$a3,.L5ef72020
    ld	$s7,128($sp)
    move	$a0,$a5
    ld	$s8,80($sp)
    ld	$s4,88($sp)
    ld	$s7,128($sp)
    ld	$a4,0($sp)
    lhu	$a3,0($a5)
    la	$s2,rrmScreenPrivateIndex
    lw	$a4,16($a4)
    andi	$a3,$a3,0x8
    lw	$s2,0($s2)
    lw	$a4,436($a4)
    lw	$s3,20($a5)
    sll	$s2,$s2,0x2
    addu	$a4,$a4,$s2
    sll	$s2,$s3,0x3
    addu	$s2,$s2,$s3
    lw	$a4,0($a4)
    ld	$s3,96($sp)
    sll	$s2,$s2,0x2
    addu	$a4,$a4,$s2
    ld	$s2,104($sp)
    beqz	$a3,.L5ef72018
    addiu	$a4,$a4,152
    lw	$a6,44($a0)
    beqz	$a6,.L5ef722bc
    lw	$a5,48($a0)
    lw	$at,132($a6)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a5,48($at)
.L5ef71fa0:
    lw	$a5,48($a0)
    beqz	$a5,.L5ef722c4
    lw	$a6,44($a0)
    lw	$v0,132($a5)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a6,44($v0)
    sw	$zero,48($a0)
.L5ef71fc0:
    sw	$zero,44($a0)
    lw	$v1,20($a4)
    lhu	$a2,16($a4)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$a3,$a2,0x1
    beqz	$a3,.L5ef71fe8
    sw	$v1,20($a4)
    ori	$a2,$a2,0x6
.L5ef71fe8:
    lw	$a6,0($a4)
    beqz	$a6,.L5ef722cc
    li	$a5,-17
    lw	$a3,4($a4)
    beq	$a3,$a6,.L5ef72004
    ori	$a5,$a2,0x2
    ori	$a5,$a2,0x6
.L5ef72004:
    sh	$a5,16($a4)
    lhu	$at,0($a0)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a0)
.L5ef72018:
    li	$v1,-1
    sw	$v1,20($a0)
.L5ef72020:
    # lw $t9, -32152($gp)
    bal	AssignID__LIC
    ld	$a0,0($sp)
    ld	$s0,48($sp)
    sw	$s1,132($s5)
    ld	$s1,40($sp)
    ld	$ra,112($sp)
    ld	$s5,56($sp)
    ld	$s6,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L5ef7204c:
    b	.L5ef71b64
    sw	$a6,0($a4)
.L5ef72054:
    b	.L5ef71b84
    sw	$a5,4($a4)
.L5ef7205c:
    b	.L5ef71bc8
    and	$a5,$a2,$a5
.L5ef72064:
    b	.L5ef71dd8
    sw	$a5,0($a4)
.L5ef7206c:
    b	.L5ef71df8
    sw	$a6,4($a4)
.L5ef72074:
    b	.L5ef71e3c
    and	$a5,$a2,$a5
.L5ef7207c:
    b	.L5ef71a40
    sw	$a4,0($a1)
.L5ef72084:
    b	.L5ef71a60
    sw	$a5,4($a1)
.L5ef7208c:
    b	.L5ef71aa4
    and	$a4,$a2,$a4
.L5ef72094:
    b	.L5ef71cbc
    sw	$a5,0($a4)
.L5ef7209c:
    b	.L5ef71cdc
    sw	$a6,4($a4)
.L5ef720a4:
    b	.L5ef71d20
    and	$a5,$a2,$a5
.L5ef720ac:
    lw	$a2,16($a4)
    la	$a3,rrmScreenPrivateIndex
    lw	$s8,0($s8)
    lw	$s3,132($a4)
    lw	$a3,0($a3)
    sll	$s8,$s8,0x2
    addu	$s3,$s3,$s8
    lw	$s3,0($s3)
    lw	$a2,436($a2)
    sll	$a3,$a3,0x2
    lw	$at,20($s3)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sll	$s8,$at,0x3
    addu	$s8,$s8,$at
    sll	$s8,$s8,0x2
    addu	$s8,$s8,$a2
    addiu	$s8,$s8,152
    lhu	$at,16($s8)
    andi	$at,$at,0x8
    beqzl	$at,.L5ef724e0
    lw	$t9,40($a2)
    lhu	$at,2($s3)
    lhu	$v0,18($s8)
    lw	$a1,20($a2)
    beq	$at,$v0,.L5ef722d4
    lw	$a0,16($a2)
    b	.L5ef7230c
    move	$a0,$zero
.L5ef72120:
    lw	$v1,4($s2)
    beqz	$v1,.L5ef7253c
.L5ef72128:
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$a6,132($a4)
    sll	$a2,$a2,0x2
    addu	$a6,$a2,$a6
    lw	$a6,0($a6)
    lw	$a3,20($a6)
    bltz	$a3,.L5ef72234
    move	$a0,$a6
    lhu	$a3,0($a6)
    la	$at,rrmScreenPrivateIndex
    lw	$a5,16($a4)
    andi	$a3,$a3,0x8
    lw	$at,0($at)
    lw	$a5,436($a5)
    lw	$v0,20($a6)
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    sll	$at,$v0,0x3
    lw	$a5,0($a5)
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a5,$a5,$at
    beqz	$a3,.L5ef7222c
    addiu	$a5,$a5,152
    lw	$a7,44($a0)
    beqz	$a7,.L5ef724c0
    lw	$a6,48($a0)
    lw	$v0,132($a7)
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    sw	$a6,48($v0)
.L5ef721a8:
    lw	$a6,48($a0)
    beqz	$a6,.L5ef724c8
    lw	$a7,44($a0)
    lw	$v1,132($a6)
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    sw	$a7,44($v1)
    sw	$zero,48($a0)
.L5ef721c8:
    sw	$zero,44($a0)
    lw	$a3,20($a5)
    lhu	$a2,16($a5)
    addiu	$a3,$a3,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$at,$a2,0x1
    beqz	$at,.L5ef721f4
    sw	$a3,20($a5)
    ori	$a2,$a2,0x6
    andi	$a2,$a2,0xffff
.L5ef721f4:
    lw	$a7,0($a5)
    beqz	$a7,.L5ef724d0
    li	$a6,-17
    lw	$at,4($a5)
    ori	$a6,$a2,0x2
    beq	$at,$a7,.L5ef72218
    andi	$a6,$a6,0xffff
    ori	$a6,$a2,0x6
    andi	$a6,$a6,0xffff
.L5ef72218:
    sh	$a6,16($a5)
    lhu	$at,0($a0)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a0)
.L5ef7222c:
    li	$v1,-1
    sw	$v1,20($a0)
.L5ef72234:
    # lw $t9, -32152($gp)
    bal	AssignID__LIC
    move	$a0,$a4
    la	$a3,rrmScreenPrivateIndex
    la	$s2,rrmWindowPrivateIndex
    ld	$a2,8($sp)
    lw	$a3,0($a3)
    lw	$s2,0($s2)
    lw	$s0,132($a2)
    lw	$a2,16($a2)
    sll	$s2,$s2,0x2
    addu	$s0,$s0,$s2
    lw	$s0,0($s0)
    lw	$a2,436($a2)
    sll	$a3,$a3,0x2
    lw	$at,20($s0)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sll	$s2,$at,0x3
    addu	$s2,$s2,$at
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$a2
    addiu	$s2,$s2,152
    lhu	$a3,16($s2)
    andi	$a3,$a3,0x8
    beqzl	$a3,.L5ef72510
    lw	$t9,40($a2)
    lhu	$at,2($s0)
    lhu	$v0,18($s2)
    lw	$a4,20($a2)
    beq	$at,$v0,.L5ef7245c
    lw	$a1,16($a2)
    b	.L5ef72494
    move	$a1,$zero
.L5ef722bc:
    b	.L5ef71fa0
    sw	$a5,0($a4)
.L5ef722c4:
    b	.L5ef71fc0
    sw	$a6,4($a4)
.L5ef722cc:
    b	.L5ef72004
    and	$a5,$a5,$a2
.L5ef722d4:
    lw	$at,8($s8)
    lw	$v0,32($s3)
    and	$at,$at,$a0
    and	$v0,$v0,$a0
    bnel	$at,$v0,.L5ef72308
    move	$a1,$zero
    lw	$v0,12($s8)
    lw	$v1,36($s3)
    and	$v0,$v0,$a1
    and	$v1,$v1,$a1
    bne	$v0,$v1,.L5ef72308
    move	$a1,$zero
    li	$a1,1
.L5ef72308:
    move	$a0,$a1
.L5ef7230c:
    beqz	$a0,.L5ef724dc
.L5ef72310:
    ld	$v1,72($sp)
    beqz	$v1,.L5ef72334
    la	$a2,rrmWindowPrivateIndex
    lw	$t9,32($s2)
    ld	$a0,8($sp)
    move	$a1,$zero
    jal	AssignID__LIC
    move	$a2,$zero
    la	$a2,rrmWindowPrivateIndex
.L5ef72334:
    ld	$a4,8($sp)
    lw	$a2,0($a2)
    lw	$a4,132($a4)
    sll	$a2,$a2,0x2
    addu	$a4,$a2,$a4
    lw	$a4,0($a4)
    lw	$a3,20($a4)
    bltz	$a3,.L5ef72444
    move	$a0,$a4
    ld	$a1,8($sp)
    lhu	$a3,0($a4)
    la	$at,rrmScreenPrivateIndex
    lw	$a1,16($a1)
    andi	$a3,$a3,0x8
    lw	$at,0($at)
    lw	$a1,436($a1)
    lw	$v0,20($a4)
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    sll	$at,$v0,0x3
    lw	$a1,0($a1)
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a1,$a1,$at
    beqz	$a3,.L5ef7243c
    addiu	$a1,$a1,152
    lw	$a5,44($a0)
    beqz	$a5,.L5ef724a4
    lw	$a4,48($a0)
    lw	$a3,132($a5)
    addu	$a3,$a3,$a2
    lw	$a3,0($a3)
    sw	$a4,48($a3)
.L5ef723b8:
    lw	$a4,48($a0)
    beqz	$a4,.L5ef724ac
    lw	$a5,44($a0)
    lw	$at,132($a4)
    addu	$at,$at,$a2
    lw	$at,0($at)
    sw	$a5,44($at)
    sw	$zero,48($a0)
.L5ef723d8:
    sw	$zero,44($a0)
    lw	$v0,20($a1)
    lhu	$a2,16($a1)
    addiu	$v0,$v0,-1
    andi	$a2,$a2,0x31
    andi	$a2,$a2,0xffff
    andi	$v1,$a2,0x1
    beqz	$v1,.L5ef72404
    sw	$v0,20($a1)
    ori	$a2,$a2,0x6
    andi	$a2,$a2,0xffff
.L5ef72404:
    lw	$a5,0($a1)
    beqz	$a5,.L5ef724b4
    li	$a4,-17
    lw	$at,4($a1)
    ori	$a4,$a2,0x2
    beq	$at,$a5,.L5ef72428
    andi	$a4,$a4,0xffff
    ori	$a4,$a2,0x6
    andi	$a4,$a4,0xffff
.L5ef72428:
    sh	$a4,16($a1)
    lhu	$at,0($a0)
    li	$v0,-9
    and	$at,$at,$v0
    sh	$at,0($a0)
.L5ef7243c:
    li	$v1,-1
    sw	$v1,20($a0)
.L5ef72444:
    # lw $t9, -32152($gp)
    ld	$a0,8($sp)
    bal	AssignID__LIC
    move	$a1,$s4
    b	.L5ef71334
    move	$a1,$s0
.L5ef7245c:
    lw	$a3,8($s2)
    lw	$at,32($s0)
    and	$a3,$a3,$a1
    and	$at,$at,$a1
    bnel	$a3,$at,.L5ef72490
    move	$a4,$zero
    lw	$at,12($s2)
    lw	$v0,36($s0)
    and	$at,$at,$a4
    and	$v0,$v0,$a4
    bne	$at,$v0,.L5ef72490
    move	$a4,$zero
    li	$a4,1
.L5ef72490:
    move	$a1,$a4
.L5ef72494:
    beqzl	$a1,.L5ef72510
    lw	$t9,40($a2)
.L5ef7249c:
    b	.L5ef71334
    move	$a1,$s4
.L5ef724a4:
    b	.L5ef723b8
    sw	$a4,0($a1)
.L5ef724ac:
    b	.L5ef723d8
    sw	$a5,4($a1)
.L5ef724b4:
    and	$a4,$a4,$a2
    b	.L5ef72428
    andi	$a4,$a4,0xffff
.L5ef724c0:
    b	.L5ef721a8
    sw	$a6,0($a5)
.L5ef724c8:
    b	.L5ef721c8
    sw	$a7,4($a5)
.L5ef724d0:
    and	$a6,$a6,$a2
    b	.L5ef72218
    andi	$a6,$a6,0xffff
.L5ef724dc:
    lw	$t9,40($a2)
.L5ef724e0:
    move	$a0,$a4
    jal	AssignID__LIC
    move	$a1,$s3
    lhu	$v1,16($s8)
    ori	$v1,$v1,0x8
    sh	$v1,16($s8)
    lw	$v0,32($s3)
    sw	$v0,8($s8)
    lw	$at,36($s3)
    b	.L5ef72310
    sw	$at,12($s8)
    lw	$t9,40($a2)
.L5ef72510:
    ld	$a0,8($sp)
    jalr	$t9
    move	$a1,$s0
    lhu	$v0,16($s2)
    ori	$v0,$v0,0x8
    sh	$v0,16($s2)
    lw	$at,32($s0)
    sw	$at,8($s2)
    lw	$a3,36($s0)
    b	.L5ef7249c
    sw	$a3,12($s2)
.L5ef7253c:
    sd	$a4,32($sp)
    move	$a0,$a4
    lw	$t9,32($s2)
    sd	$a1,136($sp)
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    ld	$a4,32($sp)
    b	.L5ef72128
    ld	$a1,136($sp)
.end StealID

.globl SetReservedID
.ent SetReservedID
SetReservedID:
    move	$at,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$at,-56($s8)
    sd	$a0,-96($s8)
    sd	$a1,-88($s8)
    sd	$s0,-48($s8)
    sll	$s0,$a1,0x3
    sd	$s4,-40($s8)
    la	$s4,rrmScreenPrivateIndex
    addu	$s0,$s0,$a1
    sd	$s5,-80($s8)
    lw	$a3,0($s4)
    lw	$s5,436($a0)
    li	$a1,-9
    sll	$a3,$a3,0x2
    addu	$s5,$s5,$a3
    lw	$s5,0($s5)
    sd	$s1,-72($s8)
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s5
    lw	$s1,172($s0)
    sd	$s3,-64($s8)
    lhu	$s3,168($s0)
    sll	$v0,$s1,0x2
    blez	$s1,.L5ef72bb0
    andi	$s3,$s3,0x10
    sd	$s2,-112($s8)
    li	$v1,-16
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    blez	$s1,.L5ef72bb0
    sw	$sp,-28($s8)
    li	$a0,-1
    sd	$s1,-136($s8)
    sd	$ra,-104($s8)
    sd	$s7,-128($s8)
    sd	$s6,-120($s8)
    la	$s2,rrmWindowPrivateIndex
    lw	$s6,-28($s8)
    sll	$s7,$s1,0x2
    lw	$a4,0($s2)
    addu	$s7,$s7,$s6
    b	.L5ef72638
    sll	$a4,$a4,0x2
.L5ef7261c:
    sh	$t0,16($a6)
.L5ef72620:
    lhu	$at,0($a5)
    and	$at,$at,$a1
    sh	$at,0($a5)
.L5ef7262c:
    addiu	$s6,$s6,4
    beq	$s6,$s7,.L5ef7276c
    sw	$a0,20($a5)
.L5ef72638:
    lw	$s1,152($s0)
    sw	$s1,0($s6)
    lw	$a7,132($s1)
    addu	$a7,$a7,$a4
    lw	$a7,0($a7)
    lbu	$v0,6($a7)
    andi	$v0,$v0,0x8
    beqz	$v0,.L5ef72698
    move	$a5,$a7
    lw	$t9,32($s5)
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    li	$a0,-1
    li	$a1,-9
    lw	$a3,0($s4)
    lw	$a4,0($s2)
    lw	$a7,132($s1)
    sll	$a3,$a3,0x2
    sll	$a4,$a4,0x2
    addu	$a7,$a7,$a4
    lw	$a7,0($a7)
    move	$a5,$a7
.L5ef72698:
    lw	$a6,16($s1)
    lhu	$at,0($a7)
    lw	$v1,20($a7)
    lw	$a6,436($a6)
    andi	$at,$at,0x8
    sll	$v0,$v1,0x3
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$a6,$a6,$v0
    beqz	$at,.L5ef7262c
    addiu	$a6,$a6,152
    lw	$t0,44($a5)
    beqz	$t0,.L5ef72750
    lw	$a7,48($a5)
    lw	$at,132($t0)
    addu	$at,$at,$a4
    lw	$at,0($at)
    sw	$a7,48($at)
.L5ef726e8:
    lw	$a7,48($a5)
    beqz	$a7,.L5ef72758
    lw	$t0,44($a5)
    lw	$v0,132($a7)
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    sw	$t0,44($v0)
    sw	$zero,48($a5)
.L5ef72708:
    sw	$zero,44($a5)
    lw	$v1,20($a6)
    lhu	$a7,16($a6)
    lw	$t1,0($a6)
    addiu	$v1,$v1,-1
    andi	$a7,$a7,0x31
    andi	$a7,$a7,0xffff
    andi	$a2,$a7,0x1
    beqz	$a2,.L5ef72734
    sw	$v1,20($a6)
    ori	$a7,$a7,0x6
.L5ef72734:
    beqz	$t1,.L5ef72760
    ori	$t0,$a7,0x2
    lw	$a2,4($a6)
    beql	$a2,$t1,.L5ef72620
    sh	$t0,16($a6)
    b	.L5ef7261c
    ori	$t0,$a7,0x6
.L5ef72750:
    b	.L5ef726e8
    sw	$a7,0($a6)
.L5ef72758:
    b	.L5ef72708
    sw	$t0,4($a6)
.L5ef72760:
    li	$t0,-17
    b	.L5ef7261c
    and	$t0,$t0,$a7
.L5ef7276c:
    ld	$s6,-120($s8)
    ld	$s7,-128($s8)
    ld	$s1,-136($s8)
.L5ef72778:
    lw	$t1,180($s0)
    lw	$t2,176($s0)
    sw	$t1,164($s0)
    sw	$t2,160($s0)
    lw	$t9,44($s5)
    ld	$a1,-88($s8)
    jalr	$t9
    ld	$a0,-96($s8)
    lhu	$ra,168($s0)
    sd	$s7,-128($s8)
    sd	$s6,-120($s8)
    ori	$ra,$ra,0x2
    sh	$ra,168($s0)
    blez	$s1,.L5ef72b78
    ld	$ra,-104($s8)
    li	$s6,1
    lw	$s0,-28($s8)
    sll	$s7,$s1,0x2
    b	.L5ef7282c
    addu	$s7,$s7,$s0
.L5ef727c8:
    move	$a1,$zero
.L5ef727cc:
    beqz	$a1,.L5ef72b60
    nop	# was lw $t9, -32144($gp)
.L5ef727d4:
    beqz	$s3,.L5ef72820
    lw	$ra,0($s2)
    lw	$at,132($s1)
    sll	$ra,$ra,0x2
    addu	$ra,$ra,$at
    lw	$ra,0($ra)
    lw	$ra,20($ra)
    sll	$t9,$ra,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s5
    lhu	$t8,168($t9)
    or	$t8,$t8,$s3
    sh	$t8,168($t9)
    lw	$t9,32($s5)
    li	$a2,1
    li	$a1,8
    jal	StealID
    move	$a0,$s1
.L5ef72820:
    addiu	$s0,$s0,4
    beq	$s0,$s7,.L5ef72b70
    ld	$ra,-104($s8)
.L5ef7282c:
    lw	$s1,0($s0)
    lw	$a3,0($s4)
    lw	$a4,0($s2)
    lw	$t1,16($s1)
    lw	$t0,132($s1)
    sll	$a4,$a4,0x2
    lw	$t1,436($t1)
    addu	$t0,$a4,$t0
    lw	$t0,0($t0)
    sll	$a3,$a3,0x2
    addu	$t1,$a3,$t1
    lhu	$a6,2($t0)
    lw	$t1,0($t1)
    move	$a0,$t0
    beq	$s6,$a6,.L5ef72b3c
    move	$a7,$t1
.L5ef7286c:
    lw	$a1,20($a0)
    bltz	$a1,.L5ef72898
    move	$a0,$a7
    sll	$at,$a1,0x3
    addu	$at,$at,$a1
    sll	$at,$at,0x2
    addu	$at,$at,$a7
    lhu	$at,168($at)
    andi	$at,$at,0x4
    beqz	$at,.L5ef72b58
    nop
.L5ef72898:
    lw	$a5,0($a7)
    beqz	$a5,.L5ef729cc
    move	$a1,$zero
    b	.L5ef728bc
    lhu	$v0,170($a0)
    addiu	$a1,$a1,1
.L5ef728b0:
    beq	$a1,$a5,.L5ef729cc
    addiu	$a0,$a0,36
    lhu	$v0,170($a0)
.L5ef728bc:
    bnel	$v0,$a6,.L5ef728b0
    addiu	$a1,$a1,1
    lhu	$v1,168($a0)
    andi	$v1,$v1,0x1
    bnezl	$v1,.L5ef728b0
    addiu	$a1,$a1,1
    lw	$a2,172($a0)
    bnezl	$a2,.L5ef728b0
    addiu	$a1,$a1,1
    lw	$at,20($t0)
    bltz	$at,.L5ef729bc
    nop	# was lw $t9, -32152($gp)
    lhu	$v0,0($t0)
    lw	$at,20($t0)
    move	$a0,$t0
    andi	$v0,$v0,0x8
    sll	$a3,$at,0x3
    addu	$a3,$a3,$at
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$t1
    beqz	$v0,.L5ef729b0
    addiu	$a3,$a3,152
    lw	$a5,44($a0)
    beqz	$a5,.L5ef72ba0
    lw	$a6,48($a0)
    lw	$v1,132($a5)
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    sw	$a6,48($v1)
.L5ef72930:
    lw	$a6,48($a0)
    beqz	$a6,.L5ef72ba8
    lw	$a5,44($a0)
    lw	$a2,132($a6)
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    sw	$a5,44($a2)
    sw	$zero,48($a0)
.L5ef72950:
    sw	$zero,44($a0)
    li	$a2,-9
    lw	$at,20($a3)
    lhu	$a4,16($a3)
    lw	$a6,0($a3)
    addiu	$at,$at,-1
    andi	$a4,$a4,0x31
    andi	$a4,$a4,0xffff
    andi	$v0,$a4,0x1
    beqz	$v0,.L5ef72980
    sw	$at,20($a3)
    ori	$a4,$a4,0x6
.L5ef72980:
    li	$a5,-17
    beqz	$a6,.L5ef729a0
    and	$a5,$a5,$a4
    ori	$a5,$a4,0x2
    lw	$v0,4($a3)
    beql	$v0,$a6,.L5ef729a4
    sh	$a5,16($a3)
    ori	$a5,$a4,0x6
.L5ef729a0:
    sh	$a5,16($a3)
.L5ef729a4:
    lhu	$v1,0($a0)
    and	$v1,$v1,$a2
    sh	$v1,0($a0)
.L5ef729b0:
    li	$at,-1
    sw	$at,20($a0)
    # lw $t9, -32152($gp)
.L5ef729bc:
    bal	AssignID__LIC
    move	$a0,$s1
    b	.L5ef727cc
    li	$a1,1
.L5ef729cc:
    lw	$v0,48($a7)
    move	$a0,$a7
    beqz	$v0,.L5ef727c8
    move	$a1,$zero
    beqzl	$a5,.L5ef727cc
    move	$a1,$zero
    b	.L5ef729fc
    lhu	$v1,170($a0)
.L5ef729ec:
    addiu	$a1,$a1,1
.L5ef729f0:
    beq	$a1,$a5,.L5ef727c8
    addiu	$a0,$a0,36
    lhu	$v1,170($a0)
.L5ef729fc:
    bnel	$v1,$a6,.L5ef729f0
    addiu	$a1,$a1,1
    lhu	$a7,168($a0)
    andi	$a2,$a7,0x1
    beqz	$a2,.L5ef729ec
    andi	$at,$a7,0x20
    bnezl	$at,.L5ef729f0
    addiu	$a1,$a1,1
    andi	$v0,$a7,0x2
    bnezl	$v0,.L5ef729f0
    addiu	$a1,$a1,1
    lw	$v1,172($a0)
    bnezl	$v1,.L5ef729f0
    addiu	$a1,$a1,1
    sh	$zero,168($a0)
    lw	$t0,132($s1)
    addu	$t0,$a4,$t0
    lw	$t0,0($t0)
    lw	$a2,20($t0)
    bltz	$a2,.L5ef72b28
    move	$a0,$t0
    lw	$a5,16($s1)
    lhu	$at,0($t0)
    lw	$v1,20($t0)
    lw	$a5,436($a5)
    andi	$at,$at,0x8
    sll	$v0,$v1,0x3
    addu	$a5,$a5,$a3
    lw	$a5,0($a5)
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$a5,$a5,$v0
    beqz	$at,.L5ef72b20
    addiu	$a5,$a5,152
    lw	$a6,44($a0)
    beqz	$a6,.L5ef72bc0
    lw	$a3,48($a0)
    lw	$at,132($a6)
    addu	$at,$at,$a4
    lw	$at,0($at)
    sw	$a3,48($at)
.L5ef72aa0:
    lw	$a3,48($a0)
    beqz	$a3,.L5ef72bc8
    lw	$a6,44($a0)
    lw	$v0,132($a3)
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    sw	$a6,44($v0)
    sw	$zero,48($a0)
.L5ef72ac0:
    sw	$zero,44($a0)
    li	$v0,-9
    lw	$v1,20($a5)
    lhu	$a3,16($a5)
    lw	$a6,0($a5)
    addiu	$v1,$v1,-1
    andi	$a3,$a3,0x31
    andi	$a3,$a3,0xffff
    andi	$a2,$a3,0x1
    beqz	$a2,.L5ef72af0
    sw	$v1,20($a5)
    ori	$a3,$a3,0x6
.L5ef72af0:
    li	$a4,-17
    beqz	$a6,.L5ef72b10
    and	$a4,$a4,$a3
    ori	$a4,$a3,0x2
    lw	$a2,4($a5)
    beql	$a2,$a6,.L5ef72b14
    sh	$a4,16($a5)
    ori	$a4,$a3,0x6
.L5ef72b10:
    sh	$a4,16($a5)
.L5ef72b14:
    lhu	$at,0($a0)
    and	$at,$at,$v0
    sh	$at,0($a0)
.L5ef72b20:
    li	$v1,-1
    sw	$v1,20($a0)
.L5ef72b28:
    # lw $t9, -32152($gp)
    bal	AssignID__LIC
    move	$a0,$s1
    b	.L5ef727cc
    li	$a1,1
.L5ef72b3c:
    lw	$a2,12($a7)
    andi	$a2,$a2,0x1
    beqz	$a2,.L5ef7286c
    li	$a1,1
    lw	$at,0($a7)
    b	.L5ef727cc
    sw	$at,20($a0)
.L5ef72b58:
    b	.L5ef727d4
    li	$a1,1
.L5ef72b60:
    bal	StealID
    move	$a0,$s1
    b	.L5ef727d4
    nop
.L5ef72b70:
    ld	$s6,-120($s8)
    ld	$s7,-128($s8)
.L5ef72b78:
    ld	$s0,-48($s8)
    ld	$s1,-72($s8)
    ld	$s2,-112($s8)
    ld	$s3,-64($s8)
    ld	$s4,-40($s8)
    ld	$s5,-80($s8)
    ld	$v0,-56($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L5ef72ba0:
    b	.L5ef72930
    sw	$a6,0($a3)
.L5ef72ba8:
    b	.L5ef72950
    sw	$a5,4($a3)
.L5ef72bb0:
    sd	$ra,-104($s8)
    sd	$s2,-112($s8)
    b	.L5ef72778
    la	$s2,rrmWindowPrivateIndex
.L5ef72bc0:
    b	.L5ef72aa0
    sw	$a3,0($a5)
.L5ef72bc8:
    b	.L5ef72ac0
    sw	$a6,4($a5)
.end SetReservedID

.globl SetDIDMode
.ent SetDIDMode
SetDIDMode:
    lw	$a2,16($a0)
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    la	$s1,rrmWindowPrivateIndex
    la	$a3,rrmScreenPrivateIndex
    sd	$s0,0($sp)
    lw	$s1,0($s1)
    lw	$s0,132($a0)
    lw	$a3,0($a3)
    sll	$s1,$s1,0x2
    addu	$s0,$s0,$s1
    lw	$s0,0($s0)
    lw	$a2,436($a2)
    sll	$a3,$a3,0x2
    lw	$at,20($s0)
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sll	$s1,$at,0x3
    addu	$s1,$s1,$at
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$a2
    addiu	$s1,$s1,152
    lhu	$at,16($s1)
    andi	$at,$at,0x8
    beqzl	$at,.L5ef70cb8
    lw	$t9,40($a2)
    lhu	$v0,18($s1)
    lhu	$at,2($s0)
    lw	$a4,20($a2)
    beq	$at,$v0,.L5ef70c5c
    lw	$a1,16($a2)
    b	.L5ef70c9c
    move	$a1,$zero
.L5ef70c5c:
    lw	$a3,32($s0)
    lw	$v1,8($s1)
    and	$a3,$a3,$a1
    and	$v1,$v1,$a1
    bnel	$v1,$a3,.L5ef70c98
    move	$a4,$zero
    lw	$at,36($s0)
    lw	$a3,12($s1)
    and	$at,$at,$a4
    and	$a3,$a3,$a4
    bne	$a3,$at,.L5ef70c94
    li	$a4,1
    b	.L5ef70c9c
    move	$a1,$a4
.L5ef70c94:
    move	$a4,$zero
.L5ef70c98:
    move	$a1,$a4
.L5ef70c9c:
    beqzl	$a1,.L5ef70cb8
    lw	$t9,40($a2)
.L5ef70ca4:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
    lw	$t9,40($a2)
.L5ef70cb8:
    sd	$ra,16($sp)
    jalr	$t9
    move	$a1,$s0
    lhu	$v0,16($s1)
    ori	$v0,$v0,0x8
    sh	$v0,16($s1)
    lw	$at,32($s0)
    sw	$at,8($s1)
    lw	$ra,36($s0)
    sw	$ra,12($s1)
    b	.L5ef70ca4
    ld	$ra,16($sp)
    addiu	$sp,$sp,-112
    sd	$s6,48($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s7,32($sp)
    move	$s7,$a1
    sd	$s3,8($sp)
    move	$s3,$a2
    sd	$s2,0($sp)
    sd	$s5,40($sp)
    sll	$s5,$a2,0x3
    addu	$s5,$s5,$a2
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$a1
    lw	$s2,0($s5)
    sd	$s4,56($sp)
    sd	$s1,24($sp)
    beqz	$s2,.L5ef70d78
    move	$s1,$a3
    la	$s4,rrmWindowPrivateIndex
    sd	$ra,64($sp)
    lw	$t9,32($s0)
.L5ef70d40:
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    lw	$at,0($s4)
    lw	$s2,132($s2)
    sll	$at,$at,0x2
    addu	$s2,$s2,$at
    lw	$s2,0($s2)
    lw	$s2,48($s2)
    bnezl	$s2,.L5ef70d40
    lw	$t9,32($s0)
    b	.L5ef70d7c
    ld	$ra,64($sp)
.L5ef70d78:
    la	$s4,rrmWindowPrivateIndex
.L5ef70d7c:
    sll	$s6,$s1,0x3
    addu	$s6,$s6,$s1
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$s7
    lw	$s2,0($s6)
    beqz	$s2,.L5ef70dd8
    ld	$s7,32($sp)
    sd	$ra,64($sp)
    ld	$s7,32($sp)
    lw	$t9,32($s0)
.L5ef70da4:
    move	$a0,$s2
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    lw	$at,0($s4)
    lw	$s2,132($s2)
    sll	$at,$at,0x2
    addu	$s2,$s2,$at
    lw	$s2,0($s2)
    lw	$s2,48($s2)
    bnezl	$s2,.L5ef70da4
    lw	$t9,32($s0)
    ld	$ra,64($sp)
.L5ef70dd8:
    lw	$a0,0($s5)
    beqz	$a0,.L5ef70e50
    move	$s2,$a0
    lw	$a2,0($s4)
    sd	$ra,64($sp)
    sll	$a2,$a2,0x2
    lw	$a5,132($s2)
.L5ef70df4:
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    sw	$s1,20($a5)
    lw	$a4,nfbWindowPrivateIndex
    lw	$a3,132($s2)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    sw	$s1,4($a3)
    lw	$t9,72($s0)
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s2
    lw	$a2,0($s4)
    lw	$s2,132($s2)
    sll	$a2,$a2,0x2
    addu	$s2,$s2,$a2
    lw	$s2,0($s2)
    lw	$s2,48($s2)
    bnezl	$s2,.L5ef70df4
    lw	$a5,132($s2)
    lw	$a0,0($s5)
    ld	$ra,64($sp)
.L5ef70e50:
    ld	$s1,24($sp)
    lw	$a1,4($s6)
    ld	$s0,16($sp)
    ld	$s3,8($sp)
    beqz	$a1,.L5ef70eec
    ld	$s2,0($sp)
    lw	$at,0($s4)
    lw	$a4,132($a1)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    sw	$a0,48($a4)
.L5ef70e80:
    lw	$a4,0($s4)
    lw	$a0,0($s5)
    beqz	$a0,.L5ef70ea4
    sll	$a4,$a4,0x2
    lw	$v1,132($a0)
    lw	$v0,4($s6)
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    sw	$v0,44($v1)
.L5ef70ea4:
    lw	$v1,4($s5)
    lhu	$s4,16($s6)
    lw	$v0,20($s6)
    sw	$v1,4($s6)
    ori	$s4,$s4,0x4
    lw	$at,20($s5)
    sh	$s4,16($s6)
    ld	$s4,56($sp)
    addu	$at,$at,$v0
    sw	$at,20($s6)
    ld	$s6,48($sp)
    sh	$zero,16($s5)
    sw	$zero,4($s5)
    sw	$zero,0($s5)
    sw	$zero,20($s5)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef70eec:
    b	.L5ef70e80
    sw	$a0,0($s6)
.end SetDIDMode

.globl cmapDID
.ent cmapDID
cmapDID:
    li	$v0,2
    addiu	$sp,$sp,-48
    lw	$v1,16($a0)
    sd	$s0,8($sp)
    lbu	$at,1($a0)
    lw	$v1,116($v1)
    move	$s0,$a0
    beq	$at,$v0,.L5ef6ea88
    sd	$v1,0($sp)
    lw	$v0,120($s0)
    beqz	$v0,.L5ef6ea94
    nop	# was lw $t9, -29692($gp)
    lw	$a3,8($v0)
.L5ef6e9c0:
    sd	$ra,16($sp)
    move	$a0,$a3
.L5ef6e9c8:
    # lw $t9, -29684($gp)
    jal	LookupIDByType
    li	$a1,6
    bnez	$v0,.L5ef6ea18
    ld	$ra,16($sp)
    lw	$v0,120($s0)
    beqz	$v0,.L5ef6eab0
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($v0)
    ld	$s0,8($sp)
.L5ef6e9f0:
    ld	$v0,0($sp)
    lw	$a1,80($v0)
    lw	$v0,88($v0)
    subu	$a1,$a0,$a1
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    b	.L5ef6ea44
    lw	$v0,0($v0)
.L5ef6ea18:
    lw	$a0,68($v0)
    lw	$a0,0($a0)
    bltz	$a0,.L5ef6ea4c
    sll	$v1,$a0,0x3
    ld	$v0,0($sp)
    ld	$s0,8($sp)
    lw	$v0,116($v0)
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,16($v0)
.L5ef6ea44:
    jr	$ra
    addiu	$sp,$sp,48
.L5ef6ea4c:
    lw	$v0,120($s0)
    beqz	$v0,.L5ef6eacc
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($v0)
    ld	$s0,8($sp)
.L5ef6ea60:
    ld	$v0,0($sp)
    lw	$a1,80($v0)
    lw	$v0,88($v0)
    subu	$a1,$a0,$a1
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    b	.L5ef6ea44
    lw	$v0,0($v0)
.L5ef6ea88:
    move	$a0,$zero
    b	.L5ef6e9c8
    sd	$ra,16($sp)
.L5ef6ea94:
    sd	$ra,16($sp)
    jal	FindWindowWithOptional
    move	$a0,$s0
    lw	$a3,120($v0)
    ld	$ra,16($sp)
    b	.L5ef6e9c0
    lw	$a3,8($a3)
.L5ef6eab0:
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    lw	$a0,120($v0)
    ld	$s0,8($sp)
    b	.L5ef6e9f0
    lw	$a0,0($a0)
.L5ef6eacc:
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    lw	$a0,120($v0)
    ld	$s0,8($sp)
    b	.L5ef6ea60
    lw	$a0,0($a0)
.end cmapDID

.globl rrmOGLBindRNToClip
.ent rrmOGLBindRNToClip
rrmOGLBindRNToClip:
    addiu	$sp,$sp,-128
    sd	$gp,48($sp)
    lui	$t1,0x15
    addiu	$t1,$t1,5612
    addu	$gp,$t9,$t1
    la	$t1,rrmWindowPrivateIndex
    move	$a6,$a0
    lw	$t0,nfbWindowPrivateIndex
    lw	$t1,0($t1)
    lw	$t9,132($a0)
    sll	$t0,$t0,0x2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$t9
    lw	$t1,0($t1)
    addu	$t0,$t0,$t9
    lw	$t0,0($t0)
    beqz	$t1,.L5ef6d138
    move	$a7,$t1
    lhu	$at,0($t1)
    andi	$at,$at,0x1
    beqz	$at,.L5ef6d04c
    la	$a0,rrmScreenPrivateIndex
    lhu	$v1,8($t1)
    beqz	$v1,.L5ef6d1b0
    li	$v0,1
    sw	$a1,12($t1)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6d04c:
    li	$v1,5
    lw	$v0,16($a6)
    li	$t1,1
    lw	$a4,0($a0)
    lw	$v0,436($v0)
    la	$at,glxWindowPrivateIndex
    sll	$a4,$a4,0x2
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    sw	$a1,12($a7)
    sh	$t1,8($a7)
    sh	$zero,30($a7)
    sh	$zero,28($a7)
    sw	$a3,36($a7)
    sw	$a2,32($a7)
    sh	$v1,0($a7)
    lw	$at,0($at)
    lw	$t2,132($a6)
    sll	$at,$at,0x2
    addu	$t2,$t2,$at
    lw	$t2,0($t2)
    beqz	$t2,.L5ef6d0d0
    li	$a4,-1
    lw	$v1,4($t2)
    sd	$a6,24($sp)
    sd	$t0,0($sp)
    beqz	$v1,.L5ef6d0d0
    sd	$v0,32($sp)
    li	$v0,1
    ld	$gp,48($sp)
    addiu	$sp,$sp,128
    jr	$ra
    sw	$a4,20($a7)
.L5ef6d0d0:
    sd	$a6,24($sp)
    sd	$a7,16($sp)
    sd	$t0,0($sp)
    sd	$v0,32($sp)
    # lw $t9, -32228($gp)
    move	$a0,$a6
    sd	$ra,56($sp)
    bal	incrRRMpriv
    lw	$a0,24($a6)
    beqz	$v0,.L5ef6d1dc
    ld	$ra,56($sp)
    # lw $t9, -29644($gp)
    jal	Xfree
    ld	$a0,16($sp)
    move	$v0,$zero
    la	$a5,rrmWindowPrivateIndex
    ld	$gp,48($sp)
    ld	$a4,24($sp)
    ld	$ra,56($sp)
    lw	$a5,0($a5)
    lw	$a4,132($a4)
    addiu	$sp,$sp,128
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    jr	$ra
    sw	$zero,0($a4)
.L5ef6d138:
    sd	$a1,80($sp)
    sd	$a6,24($sp)
    sd	$a3,72($sp)
    sd	$a2,64($sp)
    # lw $t9, -29492($gp)
    sd	$t0,0($sp)
    sd	$ra,56($sp)
    jal	Xalloc
    li	$a0,76
    ld	$a6,24($sp)
    la	$a0,rrmScreenPrivateIndex
    lw	$t0,16($a6)
    ld	$a2,64($sp)
    lw	$ra,0($a0)
    lw	$t0,436($t0)
    ld	$a3,72($sp)
    sll	$ra,$ra,0x2
    addu	$t0,$t0,$ra
    lw	$t0,0($t0)
    ld	$a1,80($sp)
    ld	$ra,56($sp)
    sd	$t0,40($sp)
    bnez	$v0,.L5ef6d314
    ld	$t0,0($sp)
.L5ef6d198:
    bnez	$v0,.L5ef6d04c
    move	$a7,$v0
    move	$v0,$zero
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6d1b0:
    lw	$a1,4($a6)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,56($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1552
    ld	$ra,56($sp)
    move	$v0,$zero
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6d1dc:
    ld	$a4,16($sp)
    lhu	$a4,2($a4)
    li	$a5,1
    bne	$a4,$a5,.L5ef6d274
    ld	$v1,0($sp)
    ld	$a5,32($sp)
    lw	$a5,12($a5)
    andi	$a5,$a5,0x1
    beqz	$a5,.L5ef6d270
    ld	$a4,16($sp)
    ld	$at,24($sp)
    li	$v1,-1
    sw	$v1,20($a4)
    lw	$at,124($at)
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef6d304
    ld	$v0,24($sp)
    lw	$v0,24($v0)
    beqz	$v0,.L5ef6d25c
    la	$a1,rrmWindowPrivateIndex
    lw	$a1,0($a1)
    sll	$a1,$a1,0x2
    lw	$a5,132($v0)
.L5ef6d23c:
    addu	$a5,$a5,$a1
    lw	$a5,0($a5)
    lw	$a4,16($a5)
    addiu	$a4,$a4,1
    sw	$a4,16($a5)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef6d23c
    lw	$a5,132($v0)
.L5ef6d25c:
    ld	$at,32($sp)
    ld	$v1,16($sp)
    lw	$at,0($at)
    b	.L5ef6d304
    sw	$at,20($v1)
.L5ef6d270:
    ld	$v1,0($sp)
.L5ef6d274:
    ld	$a0,24($sp)
    lw	$v0,32($v1)
    # lw $t9, -32108($gp)
    li	$a1,-2
    and	$v0,$v0,$a1
    bal	nfbSetDidFlags
    sw	$v0,32($v1)
    ld	$ra,16($sp)
    ld	$a4,24($sp)
    li	$a5,-1
    sw	$a5,20($ra)
    lw	$a4,124($a4)
    andi	$a4,$a4,0xfff
    srl	$a4,$a4,0xb
    beqz	$a4,.L5ef6d304
    ld	$ra,56($sp)
    ld	$v0,24($sp)
    lw	$v0,24($v0)
    beqz	$v0,.L5ef6d2f0
    la	$a1,rrmWindowPrivateIndex
    lw	$a1,0($a1)
    sll	$a1,$a1,0x2
    lw	$a5,132($v0)
.L5ef6d2d0:
    addu	$a5,$a5,$a1
    lw	$a5,0($a5)
    lw	$a4,16($a5)
    addiu	$a4,$a4,1
    sw	$a4,16($a5)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef6d2d0
    lw	$a5,132($v0)
.L5ef6d2f0:
    # lw $t9, -32132($gp)
    bal	FindFreeID
    ld	$a0,24($sp)
    beqz	$v0,.L5ef6d3a4
    ld	$ra,56($sp)
.L5ef6d304:
    li	$v0,1
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6d314:
    sd	$v0,8($sp)
    # lw $t9, -29488($gp)
    move	$a0,$v0
    move	$a1,$zero
    jal	memset
    li	$a2,76
    la	$a0,rrmScreenPrivateIndex
    ld	$t0,0($sp)
    la	$at,rrmWindowPrivateIndex
    ld	$a6,24($sp)
    ld	$t9,40($sp)
    lw	$at,0($at)
    lw	$ra,132($a6)
    ld	$v0,8($sp)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    sw	$v0,0($ra)
    ld	$a2,64($sp)
    lw	$t9,80($t9)
    ld	$a3,72($sp)
    ld	$a1,80($sp)
    beqz	$t9,.L5ef6d39c
    ld	$ra,56($sp)
    jalr	$t9
    ld	$a0,24($sp)
    la	$a0,rrmScreenPrivateIndex
    ld	$v0,8($sp)
    ld	$t0,0($sp)
    ld	$a2,64($sp)
    ld	$a3,72($sp)
    ld	$a6,24($sp)
    ld	$a1,80($sp)
    b	.L5ef6d198
    ld	$ra,56($sp)
.L5ef6d39c:
    b	.L5ef6d198
    sh	$zero,2($v0)
.L5ef6d3a4:
    # lw $t9, -32136($gp)
    bal	FindBestID
    ld	$a0,24($sp)
    b	.L5ef6d304
    ld	$ra,56($sp)
.end rrmOGLBindRNToClip

.globl rrmOGLUnbindRNFromClip
.ent rrmOGLUnbindRNFromClip
rrmOGLUnbindRNFromClip:
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,4620
    addu	$gp,$t9,$v0
    lw	$at,nfbWindowPrivateIndex
    sd	$s4,32($sp)
    la	$s4,rrmWindowPrivateIndex
    lw	$t9,132($a0)
    sll	$at,$at,0x2
    lw	$s4,0($s4)
    addu	$at,$at,$t9
    lw	$at,0($at)
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t9
    lw	$s4,0($s4)
    sd	$s1,16($sp)
    sd	$at,8($sp)
    beqz	$s4,.L5ef6d814
    move	$s1,$s4
    sd	$s2,56($sp)
    la	$t8,rrmScreenPrivateIndex
    lw	$s2,16($s0)
    lw	$t8,0($t8)
    lw	$s2,436($s2)
    sll	$t8,$t8,0x2
    addu	$s2,$s2,$t8
    lw	$s2,0($s2)
    move	$a2,$zero
    lw	$t9,32($s2)
    move	$a1,$zero
    sd	$ra,48($sp)
    jalr	$t9
    move	$a0,$s0
    lhu	$at,0($s4)
    andi	$at,$at,0x20
    beqz	$at,.L5ef6d4d8
    la	$a0,rrmScreenPrivateIndex
    la	$a1,rrmWindowPrivateIndex
    lw	$at,0($a0)
    lw	$a1,0($a1)
    lw	$a4,132($s0)
    lw	$a6,16($s0)
    sll	$a1,$a1,0x2
    addu	$a4,$a4,$a1
    lw	$a4,0($a4)
    lw	$a6,436($a6)
    sll	$at,$at,0x2
    lw	$a3,52($a4)
    addu	$a6,$a6,$at
    lw	$a6,0($a6)
    beqz	$a3,.L5ef6d874
    lw	$a5,56($a4)
    lw	$a2,132($a3)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a5,56($a2)
.L5ef6d4a4:
    lw	$a5,56($a4)
    li	$v1,-33
    beqz	$a5,.L5ef6d87c
    lw	$a3,52($a4)
    lw	$at,132($a5)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a3,52($at)
    sw	$zero,56($a4)
.L5ef6d4c8:
    lhu	$v0,0($a4)
    sw	$zero,52($a4)
    and	$v0,$v0,$v1
    sh	$v0,0($a4)
.L5ef6d4d8:
    la	$a1,glxWindowPrivateIndex
    lw	$a1,0($a1)
    lw	$a5,132($s0)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a5
    lw	$a1,0($a1)
    beqz	$a1,.L5ef6d54c
    li	$a7,-1
    lw	$a2,4($a1)
    beqzl	$a2,.L5ef6d550
    lw	$at,124($s0)
    # lw $t9, -29644($gp)
    move	$a0,$s4
    jal	Xfree
    ld	$s2,56($sp)
    li	$v0,1
    la	$s1,rrmWindowPrivateIndex
    ld	$gp,24($sp)
    ld	$s4,32($sp)
    lw	$s1,0($s1)
    ld	$ra,48($sp)
    lw	$a3,132($s0)
    sll	$s0,$s1,0x2
    ld	$s1,16($sp)
    addu	$a3,$a3,$s0
    ld	$s0,40($sp)
    addiu	$sp,$sp,80
    jr	$ra
    sw	$zero,0($a3)
.L5ef6d54c:
    lw	$at,124($s0)
.L5ef6d550:
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef6d79c
    nop	# was lw $t9, -32192($gp)
    lw	$v0,20($s4)
    lw	$v1,0($s2)
    bne	$v1,$v0,.L5ef6d578
    sw	$v0,0($sp)
    b	.L5ef6d660
    sw	$a7,20($s4)
.L5ef6d578:
    la	$a1,rrmWindowPrivateIndex
    lw	$a4,16($s0)
    lw	$a1,0($a1)
    lw	$at,0($a0)
    lw	$a4,436($a4)
    sll	$a1,$a1,0x2
    addu	$a3,$a5,$a1
    lw	$a3,0($a3)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lhu	$a2,0($a3)
    lw	$v0,20($a3)
    lw	$a4,0($a4)
    andi	$a2,$a2,0x8
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    beqz	$a2,.L5ef6d65c
    addiu	$a4,$a4,152
    lw	$a6,44($a3)
    beqz	$a6,.L5ef6d884
    lw	$a5,48($a3)
    lw	$a2,132($a6)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a5,48($a2)
.L5ef6d5e4:
    lw	$a5,48($a3)
    beqz	$a5,.L5ef6d88c
    lw	$a6,44($a3)
    lw	$at,132($a5)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a6,44($at)
    sw	$zero,48($a3)
.L5ef6d604:
    sw	$zero,44($a3)
    lw	$v0,20($a4)
    lhu	$a1,16($a4)
    addiu	$v0,$v0,-1
    andi	$a1,$a1,0x31
    andi	$a1,$a1,0xffff
    andi	$v1,$a1,0x1
    beqz	$v1,.L5ef6d62c
    sw	$v0,20($a4)
    ori	$a1,$a1,0x6
.L5ef6d62c:
    lw	$a5,0($a4)
    beqz	$a5,.L5ef6d894
    li	$v0,-17
    lw	$v1,4($a4)
    beq	$v1,$a5,.L5ef6d648
    ori	$a1,$a1,0x2
    ori	$a1,$a1,0x4
.L5ef6d648:
    sh	$a1,16($a4)
    lhu	$a2,0($a3)
    li	$at,-9
    and	$a2,$a2,$at
    sh	$a2,0($a3)
.L5ef6d65c:
    sw	$a7,20($a3)
.L5ef6d660:
    lw	$a1,4($s2)
    beqzl	$a1,.L5ef6d764
    la	$a1,rrmWindowPrivateIndex
    lw	$v0,24($s4)
    beq	$v0,$a1,.L5ef6d760
    la	$a1,rrmWindowPrivateIndex
    lw	$at,0($a0)
    lw	$a1,0($a1)
    lw	$a6,132($s0)
    lw	$a4,16($s0)
    sll	$a1,$a1,0x2
    addu	$a6,$a6,$a1
    lw	$a6,0($a6)
    lw	$a4,436($a4)
    sll	$at,$at,0x2
    move	$a3,$a6
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    lhu	$v1,0($a6)
    lw	$v0,24($a6)
    lw	$a4,148($a4)
    andi	$v1,$v1,0x40
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    beqz	$v1,.L5ef6d75c
    addu	$a4,$a4,$at
    lw	$a0,60($a3)
    beqz	$a0,.L5ef6d8c8
    lw	$a5,64($a3)
    lw	$a2,132($a0)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a5,64($a2)
.L5ef6d6e8:
    lw	$a5,64($a3)
    beqz	$a5,.L5ef6d8d0
    lw	$a0,60($a3)
    lw	$at,132($a5)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a0,60($at)
    sw	$zero,64($a3)
.L5ef6d708:
    sw	$zero,60($a3)
    lw	$v0,12($a4)
    lhu	$a0,8($a4)
    addiu	$v0,$v0,-1
    andi	$a0,$a0,0x1
    andi	$a0,$a0,0xffff
    beqz	$a0,.L5ef6d72c
    sw	$v0,12($a4)
    ori	$a0,$a0,0x4
.L5ef6d72c:
    lw	$a1,0($a4)
    beqzl	$a1,.L5ef6d74c
    sh	$a0,8($a4)
    lw	$v1,4($a4)
    beq	$v1,$a1,.L5ef6d748
    ori	$a0,$a0,0x2
    ori	$a0,$a0,0x4
.L5ef6d748:
    sh	$a0,8($a4)
.L5ef6d74c:
    lhu	$a2,0($a3)
    li	$at,-65
    and	$a2,$a2,$at
    sh	$a2,0($a3)
.L5ef6d75c:
    sw	$zero,24($a6)
.L5ef6d760:
    la	$a1,rrmWindowPrivateIndex
.L5ef6d764:
    lw	$a0,24($s0)
    beqz	$a0,.L5ef6d798
    lw	$a1,0($a1)
    sll	$a1,$a1,0x2
    lw	$at,132($a0)
.L5ef6d778:
    addu	$at,$at,$a1
    lw	$at,0($at)
    lw	$a2,16($at)
    addiu	$a2,$a2,-1
    sw	$a2,16($at)
    lw	$a0,24($a0)
    bnezl	$a0,.L5ef6d778
    lw	$at,132($a0)
.L5ef6d798:
    # lw $t9, -32192($gp)
.L5ef6d79c:
    bal	cmapDID
    move	$a0,$s0
    ld	$v1,8($sp)
    sw	$v0,4($v1)
    lw	$a1,40($s1)
    beqz	$a1,.L5ef6d7cc
    ld	$ra,48($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-1480
    ld	$ra,48($sp)
.L5ef6d7cc:
    lw	$at,0($s2)
    lw	$a2,20($s1)
    bne	$a2,$at,.L5ef6d830
    ld	$a4,8($sp)
.L5ef6d7dc:
    lw	$v0,16($s1)
    beqz	$v0,.L5ef6d89c
    ld	$s2,56($sp)
    li	$a2,-2
    lhu	$v1,0($s1)
    and	$v1,$v1,$a2
    sh	$v1,0($s1)
.L5ef6d7f8:
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6d814:
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6d830:
    lw	$a3,32($a4)
    # lw $t9, -32108($gp)
    move	$a0,$s0
    ori	$a3,$a3,0x1
    bal	nfbSetDidFlags
    sw	$a3,32($a4)
    lw	$at,124($s0)
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef6d7dc
    ld	$ra,48($sp)
    lw	$t9,72($s2)
    move	$a0,$s0
    jal	nfbSetDidFlags
    lw	$a1,0($sp)
    b	.L5ef6d7dc
    ld	$ra,48($sp)
.L5ef6d874:
    b	.L5ef6d4a4
    sw	$a5,140($a6)
.L5ef6d87c:
    b	.L5ef6d4c8
    sw	$a3,144($a6)
.L5ef6d884:
    b	.L5ef6d5e4
    sw	$a5,0($a4)
.L5ef6d88c:
    b	.L5ef6d604
    sw	$a6,4($a4)
.L5ef6d894:
    b	.L5ef6d648
    and	$a1,$a1,$v0
.L5ef6d89c:
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s1
    la	$a2,rrmWindowPrivateIndex
    lw	$a2,0($a2)
    lw	$v1,132($s0)
    ld	$ra,48($sp)
    sll	$a2,$a2,0x2
    addu	$v1,$v1,$a2
    b	.L5ef6d7f8
    sw	$zero,0($v1)
.L5ef6d8c8:
    b	.L5ef6d6e8
    sw	$a5,0($a4)
.L5ef6d8d0:
    b	.L5ef6d708
    sw	$a0,4($a4)
.end rrmOGLUnbindRNFromClip

.globl rrmBindRNToClip
.ent rrmBindRNToClip
rrmBindRNToClip:
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,7932
    addu	$gp,$t9,$v1
    la	$a7,rrmWindowPrivateIndex
    sd	$s1,40($sp)
    lw	$v0,nfbWindowPrivateIndex
    lw	$a6,0($a7)
    lw	$s1,132($a0)
    sll	$v0,$v0,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s1
    lw	$a6,0($a6)
    addu	$v0,$v0,$s1
    lw	$v0,0($v0)
    beqz	$a6,.L5ef6c90c
    move	$s1,$a6
    lhu	$a4,0($a6)
    andi	$a4,$a4,0x1
    beqz	$a4,.L5ef6c740
    la	$a6,rrmScreenPrivateIndex
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6c740:
    sd	$ra,48($sp)
    sd	$v0,8($sp)
.L5ef6c748:
    lw	$t0,16($s0)
    # lw $t9, -32228($gp)
    lw	$a7,0($a6)
    lw	$a6,436($t0)
    li	$a5,1
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    sw	$a1,12($s1)
    sh	$zero,8($s1)
    sh	$zero,30($s1)
    sh	$zero,28($s1)
    sw	$a3,36($s1)
    sw	$a2,32($s1)
    sh	$a5,0($s1)
    lw	$a0,24($s0)
    bal	incrRRMpriv
    sd	$a6,16($sp)
    beqz	$v0,.L5ef6c7d8
    ld	$ra,48($sp)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s1
    la	$s1,rrmWindowPrivateIndex
    move	$v0,$zero
    ld	$gp,24($sp)
    lw	$s1,0($s1)
    lw	$s0,132($s0)
    ld	$ra,48($sp)
    sll	$s1,$s1,0x2
    addu	$s0,$s0,$s1
    ld	$s1,40($sp)
    sw	$zero,0($s0)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6c7d8:
    lhu	$at,2($s1)
    li	$v1,1
    bne	$at,$v1,.L5ef6c870
    ld	$v1,8($sp)
    ld	$a4,16($sp)
    lw	$a4,12($a4)
    andi	$a4,$a4,0x1
    beqz	$a4,.L5ef6c86c
    li	$at,-1
    sw	$at,20($s1)
    lw	$a5,124($s0)
    andi	$a5,$a5,0xfff
    srl	$a5,$a5,0xb
    beqz	$a5,.L5ef6c854
    ld	$at,16($sp)
    lw	$v0,24($s0)
    beqz	$v0,.L5ef6c84c
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
    lw	$a5,132($v0)
.L5ef6c82c:
    addu	$a5,$a5,$a0
    lw	$a5,0($a5)
    lw	$a4,16($a5)
    addiu	$a4,$a4,1
    sw	$a4,16($a5)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef6c82c
    lw	$a5,132($v0)
.L5ef6c84c:
    lw	$at,0($at)
    sw	$at,20($s1)
.L5ef6c854:
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6c86c:
    ld	$v1,8($sp)
.L5ef6c870:
    move	$a0,$s0
    lw	$v0,32($v1)
    # lw $t9, -32108($gp)
    li	$a1,-2
    and	$v0,$v0,$a1
    bal	nfbSetDidFlags
    sw	$v0,32($v1)
    li	$a5,-1
    sw	$a5,20($s1)
    lw	$a4,124($s0)
    andi	$a4,$a4,0xfff
    srl	$a4,$a4,0xb
    beqz	$a4,.L5ef6c8f4
    ld	$ra,48($sp)
    lw	$v0,24($s0)
    beqz	$v0,.L5ef6c8e0
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
    lw	$a5,132($v0)
.L5ef6c8c0:
    addu	$a5,$a5,$a0
    lw	$a5,0($a5)
    lw	$a4,16($a5)
    addiu	$a4,$a4,1
    sw	$a4,16($a5)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef6c8c0
    lw	$a5,132($v0)
.L5ef6c8e0:
    # lw $t9, -32132($gp)
    bal	FindFreeID
    move	$a0,$s0
    beqz	$v0,.L5ef6c9f0
    ld	$ra,48($sp)
.L5ef6c8f4:
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6c90c:
    sd	$a1,72($sp)
    sd	$a3,64($sp)
    sd	$a2,56($sp)
    # lw $t9, -29492($gp)
    sd	$v0,8($sp)
    sd	$ra,48($sp)
    jal	Xalloc
    li	$a0,76
    ld	$a2,56($sp)
    la	$a6,rrmScreenPrivateIndex
    lw	$s1,16($s0)
    ld	$a3,64($sp)
    lw	$ra,0($a6)
    lw	$s1,436($s1)
    ld	$a1,72($sp)
    sll	$ra,$ra,0x2
    addu	$s1,$s1,$ra
    ld	$ra,48($sp)
    bnez	$v0,.L5ef6c97c
    lw	$s1,0($s1)
.L5ef6c95c:
    bnez	$v0,.L5ef6c748
    move	$s1,$v0
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6c97c:
    sd	$v0,0($sp)
    # lw $t9, -29488($gp)
    move	$a0,$v0
    move	$a1,$zero
    jal	memset
    li	$a2,76
    la	$ra,rrmWindowPrivateIndex
    la	$a6,rrmScreenPrivateIndex
    lw	$ra,0($ra)
    lw	$t9,132($s0)
    ld	$v0,0($sp)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    sw	$v0,0($t9)
    ld	$a2,56($sp)
    lw	$t9,80($s1)
    ld	$a3,64($sp)
    ld	$a1,72($sp)
    beqz	$t9,.L5ef6ca04
    ld	$ra,48($sp)
    jalr	$t9
    move	$a0,$s0
    la	$a6,rrmScreenPrivateIndex
    ld	$v0,0($sp)
    ld	$ra,48($sp)
    ld	$a2,56($sp)
    ld	$a3,64($sp)
    b	.L5ef6c95c
    ld	$a1,72($sp)
.L5ef6c9f0:
    # lw $t9, -32136($gp)
    bal	FindBestID
    move	$a0,$s0
    b	.L5ef6c8f4
    ld	$ra,48($sp)
.L5ef6ca04:
    b	.L5ef6c95c
    sh	$zero,2($v0)
.end rrmBindRNToClip

.globl rrmUnbindRNFromClip
.ent rrmUnbindRNFromClip
rrmUnbindRNFromClip:
.L5ef6ca0c:
    addiu	$sp,$sp,-96
    sd	$s5,16($sp)
    move	$s5,$a1
    lw	$v0,132($a0)
    sd	$s4,32($sp)
    sd	$gp,48($sp)
    sd	$s2,40($sp)
    lui	$s2,0x15
    addiu	$s2,$s2,7096
    addu	$gp,$t9,$s2
    la	$s4,rrmWindowPrivateIndex
    lw	$at,nfbWindowPrivateIndex
    sd	$s0,24($sp)
    lw	$s0,0($s4)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$v0
    lw	$s0,0($s0)
    lw	$at,0($at)
    move	$s2,$a0
    beqz	$s0,.L5ef6cf0c
    sd	$at,8($sp)
    sd	$s3,56($sp)
    la	$t8,rrmScreenPrivateIndex
    lw	$s3,16($s2)
    lw	$t8,0($t8)
    lw	$s3,436($s3)
    sll	$t8,$t8,0x2
    addu	$s3,$s3,$t8
    lw	$s3,0($s3)
    move	$a2,$zero
    lw	$t9,32($s3)
    move	$a1,$zero
    sd	$ra,64($sp)
    jalr	$t9
    move	$a0,$s2
    lhu	$at,0($s0)
    andi	$at,$at,0x20
    beqz	$at,.L5ef6cb2c
    la	$a0,rrmScreenPrivateIndex
    lw	$a1,0($s4)
    lw	$at,0($a0)
    lw	$a3,132($s2)
    lw	$a6,16($s2)
    sll	$a1,$a1,0x2
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
    lw	$a6,436($a6)
    sll	$at,$at,0x2
    lw	$a5,52($a3)
    addu	$a6,$a6,$at
    lw	$a6,0($a6)
    beqz	$a5,.L5ef6cf70
    lw	$a4,56($a3)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a4,56($a2)
.L5ef6caf8:
    li	$v1,-33
    lw	$a4,56($a3)
    beqz	$a4,.L5ef6cf78
    lw	$a5,52($a3)
    lw	$at,132($a4)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a5,52($at)
    sw	$zero,56($a3)
.L5ef6cb1c:
    lhu	$v0,0($a3)
    sw	$zero,52($a3)
    and	$v0,$v0,$v1
    sh	$v0,0($a3)
.L5ef6cb2c:
    lw	$a2,124($s2)
    andi	$a2,$a2,0xfff
    srl	$a2,$a2,0xb
    beqz	$a2,.L5ef6cd70
    li	$a7,-1
    lw	$at,20($s0)
    lw	$v0,0($s3)
    bne	$v0,$at,.L5ef6cb58
    sw	$at,0($sp)
    b	.L5ef6cc40
    sw	$a7,20($s0)
.L5ef6cb58:
    lw	$a1,0($s4)
    lw	$a3,132($s2)
    sll	$a1,$a1,0x2
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
    lhu	$at,0($a3)
    lw	$a4,16($s2)
    lw	$v0,0($a0)
    andi	$at,$at,0x8
    lw	$a4,436($a4)
    sll	$v0,$v0,0x2
    lw	$v1,20($a3)
    addu	$a4,$a4,$v0
    lw	$a4,0($a4)
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$a4,$a4,$v0
    beqz	$at,.L5ef6cc3c
    addiu	$a4,$a4,152
    lw	$a5,44($a3)
    beqz	$a5,.L5ef6cf88
    lw	$a6,48($a3)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a6,48($a2)
.L5ef6cbc4:
    lw	$a6,48($a3)
    beqz	$a6,.L5ef6cf90
    lw	$a5,44($a3)
    lw	$at,132($a6)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a5,44($at)
    sw	$zero,48($a3)
.L5ef6cbe4:
    sw	$zero,44($a3)
    lw	$v0,20($a4)
    lhu	$a1,16($a4)
    addiu	$v0,$v0,-1
    andi	$a1,$a1,0x31
    andi	$a1,$a1,0xffff
    andi	$v1,$a1,0x1
    beqz	$v1,.L5ef6cc0c
    sw	$v0,20($a4)
    ori	$a1,$a1,0x6
.L5ef6cc0c:
    lw	$a6,0($a4)
    beqz	$a6,.L5ef6cf98
    li	$a5,-17
    lw	$v1,4($a4)
    beq	$v1,$a6,.L5ef6cc28
    ori	$a5,$a1,0x2
    ori	$a5,$a1,0x6
.L5ef6cc28:
    sh	$a5,16($a4)
    lhu	$a2,0($a3)
    li	$at,-9
    and	$a2,$a2,$at
    sh	$a2,0($a3)
.L5ef6cc3c:
    sw	$a7,20($a3)
.L5ef6cc40:
    lw	$a1,4($s3)
    beqzl	$a1,.L5ef6cd40
    lw	$a1,0($s4)
    lw	$v0,24($s0)
    beq	$v0,$a1,.L5ef6cd3c
    lw	$a1,0($s4)
    lw	$a6,132($s2)
    sll	$a1,$a1,0x2
    addu	$a6,$a6,$a1
    lw	$a6,0($a6)
    lw	$a4,16($s2)
    move	$a3,$a6
    lw	$at,0($a0)
    lw	$a4,436($a4)
    lhu	$v0,0($a6)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    lw	$v1,24($a6)
    andi	$v0,$v0,0x40
    lw	$a4,148($a4)
    sll	$at,$v1,0x3
    subu	$at,$at,$v1
    sll	$at,$at,0x2
    beqz	$v0,.L5ef6cd38
    addu	$a4,$a4,$at
    lw	$a5,60($a3)
    beqz	$a5,.L5ef6cfc8
    lw	$a0,64($a3)
    lw	$a2,132($a5)
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    sw	$a0,64($a2)
.L5ef6ccc4:
    lw	$a0,64($a3)
    beqz	$a0,.L5ef6cfd0
    lw	$a5,60($a3)
    lw	$at,132($a0)
    addu	$at,$at,$a1
    lw	$at,0($at)
    sw	$a5,60($at)
    sw	$zero,64($a3)
.L5ef6cce4:
    sw	$zero,60($a3)
    lw	$v0,12($a4)
    lhu	$a0,8($a4)
    addiu	$v0,$v0,-1
    andi	$a0,$a0,0x1
    andi	$a0,$a0,0xffff
    beqz	$a0,.L5ef6cd08
    sw	$v0,12($a4)
    ori	$a0,$a0,0x4
.L5ef6cd08:
    lw	$a1,0($a4)
    beqzl	$a1,.L5ef6cd28
    sh	$a0,8($a4)
    lw	$v1,4($a4)
    beq	$v1,$a1,.L5ef6cd24
    ori	$a0,$a0,0x2
    ori	$a0,$a0,0x4
.L5ef6cd24:
    sh	$a0,8($a4)
.L5ef6cd28:
    lhu	$a2,0($a3)
    li	$at,-65
    and	$a2,$a2,$at
    sh	$a2,0($a3)
.L5ef6cd38:
    sw	$zero,24($a6)
.L5ef6cd3c:
    lw	$a1,0($s4)
.L5ef6cd40:
    lw	$a0,24($s2)
    beqz	$a0,.L5ef6cd70
    sll	$a1,$a1,0x2
    lw	$at,132($a0)
.L5ef6cd50:
    addu	$at,$at,$a1
    lw	$at,0($at)
    lw	$a2,16($at)
    addiu	$a2,$a2,-1
    sw	$a2,16($at)
    lw	$a0,24($a0)
    bnezl	$a0,.L5ef6cd50
    lw	$at,132($a0)
.L5ef6cd70:
    # lw $t9, -32192($gp)
    bal	cmapDID
    move	$a0,$s2
    ld	$v1,8($sp)
    sw	$v0,4($v1)
    lw	$a1,40($s0)
    beqz	$a1,.L5ef6cf80
    ld	$ra,64($sp)
    lhu	$a2,2($s0)
    sd	$s1,72($sp)
    sll	$a2,$a2,0x2
    addu	$a1,$a2,$a1
    sw	$zero,0($a1)
    move	$s1,$zero
    lw	$a1,40($s0)
    addu	$a3,$a1,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L5ef6cdec
    addiu	$s1,$s1,4
    sw	$zero,0($a3)
    lw	$a4,0($s4)
    lw	$a3,132($a0)
    # lw $t9, -32220($gp)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    move	$a1,$s5
    bal	.L5ef6ca0c
    sw	$zero,40($a3)
    lw	$a1,40($s0)
    ld	$ra,64($sp)
.L5ef6cdec:
    addu	$a3,$a1,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L5ef6ce2c
    addiu	$s1,$s1,4
    sw	$zero,0($a3)
    lw	$a6,0($s4)
    lw	$a5,132($a0)
    # lw $t9, -32220($gp)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    move	$a1,$s5
    bal	.L5ef6ca0c
    sw	$zero,40($a5)
    lw	$a1,40($s0)
    ld	$ra,64($sp)
.L5ef6ce2c:
    addu	$a3,$a1,$s1
    lw	$a0,0($a3)
    beqz	$a0,.L5ef6ce68
    addiu	$s1,$s1,4
    sw	$zero,0($a3)
    lw	$t0,0($s4)
    lw	$a7,132($a0)
    # lw $t9, -32220($gp)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    move	$a1,$s5
    bal	.L5ef6ca0c
    sw	$zero,40($a7)
    lw	$a1,40($s0)
.L5ef6ce68:
    addu	$a3,$a1,$s1
    lw	$a0,0($a3)
    beqzl	$a0,.L5ef6cea8
    la	$s5,Xfree
    sw	$zero,0($a3)
    lw	$t2,0($s4)
    lw	$t1,132($a0)
    # lw $t9, -32220($gp)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t1,0($t1)
    move	$a1,$s5
    bal	.L5ef6ca0c
    sw	$zero,40($t1)
    lw	$a1,40($s0)
    la	$s5,Xfree
.L5ef6cea8:
    move	$a0,$a1
    ld	$s1,72($sp)
    jalr	$s5
    move	$t9,$s5
    sw	$zero,40($s0)
    ld	$ra,64($sp)
.L5ef6cec0:
    lw	$v0,0($s3)
    lw	$at,20($s0)
    bne	$at,$v0,.L5ef6cf2c
    ld	$v1,8($sp)
.L5ef6ced0:
    lw	$v1,16($s0)
    beqz	$v1,.L5ef6cfa0
    ld	$s3,56($sp)
    li	$at,-2
    lhu	$a2,0($s0)
    and	$a2,$a2,$at
    sh	$a2,0($s0)
.L5ef6ceec:
    li	$v0,1
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s2,40($sp)
    ld	$s4,32($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef6cf0c:
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s2,40($sp)
    ld	$s4,32($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef6cf2c:
    lw	$v0,32($v1)
    # lw $t9, -32108($gp)
    move	$a0,$s2
    ori	$v0,$v0,0x1
    bal	nfbSetDidFlags
    sw	$v0,32($v1)
    lw	$v1,124($s2)
    andi	$v1,$v1,0xfff
    srl	$v1,$v1,0xb
    beqz	$v1,.L5ef6ced0
    ld	$ra,64($sp)
    lw	$t9,72($s3)
    move	$a0,$s2
    jal	nfbSetDidFlags
    lw	$a1,0($sp)
    b	.L5ef6ced0
    ld	$ra,64($sp)
.L5ef6cf70:
    b	.L5ef6caf8
    sw	$a4,140($a6)
.L5ef6cf78:
    b	.L5ef6cb1c
    sw	$a5,144($a6)
.L5ef6cf80:
    b	.L5ef6cec0
    la	$s5,Xfree
.L5ef6cf88:
    b	.L5ef6cbc4
    sw	$a6,0($a4)
.L5ef6cf90:
    b	.L5ef6cbe4
    sw	$a5,4($a4)
.L5ef6cf98:
    b	.L5ef6cc28
    and	$a5,$a1,$a5
.L5ef6cfa0:
    move	$a0,$s0
    jalr	$s5
    move	$t9,$s5
    lw	$at,0($s4)
    lw	$ra,132($s2)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    sw	$zero,0($ra)
    b	.L5ef6ceec
    ld	$ra,64($sp)
.L5ef6cfc8:
    b	.L5ef6ccc4
    sw	$a0,0($a4)
.L5ef6cfd0:
    b	.L5ef6cce4
    sw	$a5,4($a4)
.end rrmUnbindRNFromClip

.globl rrmDoubleBufferWindow
.ent rrmDoubleBufferWindow
rrmDoubleBufferWindow:
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    sd	$gp,32($sp)
    lui	$at,0x15
    addiu	$at,$at,-20500
    addu	$gp,$t9,$at
    la	$v0,rrmScreenPrivateIndex
    sd	$s2,24($sp)
    lw	$s2,nfbWindowPrivateIndex
    lw	$t9,132($a0)
    la	$s0,rrmWindowPrivateIndex
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$t9
    lw	$s2,0($s2)
    lw	$s0,0($s0)
    lw	$v0,0($v0)
    sd	$s2,0($sp)
    lw	$s2,16($a0)
    sll	$v0,$v0,0x2
    sll	$s0,$s0,0x2
    lw	$at,436($s2)
    addu	$s0,$s0,$t9
    lw	$s0,0($s0)
    addu	$at,$at,$v0
    lw	$at,0($at)
    move	$s1,$a0
    beqz	$s0,.L5ef73840
    sd	$at,8($sp)
    lhu	$v0,0($s0)
    andi	$v0,$v0,0x1
    beqzl	$v0,.L5ef736a4
    sh	$zero,30($s0)
    lhu	$v1,8($s0)
    beqzl	$v1,.L5ef73888
    li	$v0,17
.L5ef73668:
    beqz	$v0,.L5ef736a0
    sd	$ra,56($sp)
.L5ef73670:
    lw	$t9,192($s2)
.L5ef73674:
    move	$a0,$s1
    jalr	$t9
    move	$a1,$zero
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef736a0:
    sh	$zero,30($s0)
.L5ef736a4:
    sh	$zero,28($s0)
    li	$a2,5
    li	$a1,1
    sh	$a1,8($s0)
    sh	$a2,0($s0)
    lw	$a0,116($s2)
    lw	$a0,104($a0)
    # lw $t9, -32228($gp)
    sd	$ra,56($sp)
    sw	$a0,12($s0)
    bal	incrRRMpriv
    lw	$a0,24($s1)
    beqzl	$v0,.L5ef73730
    lw	$at,124($s1)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-568
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    li	$v0,11
    la	$a4,rrmWindowPrivateIndex
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    lw	$a3,132($s1)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    lw	$a4,0($a4)
    ld	$ra,56($sp)
    addiu	$sp,$sp,80
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    jr	$ra
    sw	$zero,0($a3)
.L5ef73730:
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef7377c
    ld	$a3,0($sp)
    lw	$v0,24($s1)
    beqz	$v0,.L5ef73778
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
    lw	$a4,132($v0)
.L5ef73758:
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef73758
    lw	$a4,132($v0)
.L5ef73778:
    ld	$a3,0($sp)
.L5ef7377c:
    lw	$at,4($a3)
    ld	$v1,8($sp)
    sll	$a4,$at,0x3
    addu	$a4,$a4,$at
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$v1
    lw	$a4,160($a4)
    li	$at,-5
    ori	$a4,$a4,0x2
    and	$a4,$a4,$at
    sw	$a4,32($s0)
    lw	$a3,4($a3)
    lw	$at,48($v1)
    sll	$v0,$a3,0x3
    addu	$v0,$v0,$a3
    sll	$v0,$v0,0x2
    beqz	$at,.L5ef738a0
    addu	$v0,$v0,$v1
    lw	$v1,184($v0)
    beqzl	$v1,.L5ef738a4
    lw	$v1,164($v0)
    lw	$a3,180($v0)
    sw	$a3,36($s0)
.L5ef737d8:
    ld	$a5,0($sp)
    move	$a0,$s1
    lw	$a4,32($a5)
    # lw $t9, -32108($gp)
    li	$a6,-2
    and	$a4,$a4,$a6
    bal	nfbSetDidFlags
    sw	$a4,32($a5)
    li	$v1,-1
    sw	$v1,20($s0)
    lw	$at,124($s1)
    andi	$at,$at,0xfff
    srl	$at,$at,0xb
    beqz	$at,.L5ef73670
    nop	# was lw $t9, -32132($gp)
    bal	FindFreeID
    move	$a0,$s1
    beqz	$v0,.L5ef73924
    ld	$t9,8($sp)
.L5ef73824:
    move	$a2,$t9
    lw	$t9,40($t9)
    move	$a0,$s1
    jal	FindFreeID
    move	$a1,$s0
    b	.L5ef73674
    lw	$t9,192($s2)
.L5ef73840:
    # lw $t9, -29492($gp)
    sd	$ra,56($sp)
    jal	Xalloc
    li	$a0,76
    la	$ra,rrmScreenPrivateIndex
    lw	$s0,16($s1)
    lw	$ra,0($ra)
    lw	$s0,436($s0)
    sll	$ra,$ra,0x2
    addu	$s0,$s0,$ra
    ld	$ra,56($sp)
    bnez	$v0,.L5ef738ac
    lw	$s0,0($s0)
.L5ef73874:
    beqz	$v0,.L5ef73900
    move	$s0,$v0
    lhu	$v0,0($s0)
    b	.L5ef73668
    andi	$v0,$v0,0x1
.L5ef73888:
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef738a0:
    lw	$v1,164($v0)
.L5ef738a4:
    b	.L5ef737d8
    sw	$v1,36($s0)
.L5ef738ac:
    sd	$v0,16($sp)
    # lw $t9, -29488($gp)
    move	$a0,$v0
    move	$a1,$zero
    jal	memset
    li	$a2,76
    la	$a4,rrmWindowPrivateIndex
    lw	$a4,0($a4)
    lw	$a3,132($s1)
    ld	$v0,16($sp)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sw	$v0,0($a3)
    lw	$t9,80($s0)
    beqz	$t9,.L5ef7391c
    ld	$ra,56($sp)
    jalr	$t9
    move	$a0,$s1
    ld	$v0,16($sp)
    b	.L5ef73874
    ld	$ra,56($sp)
.L5ef73900:
    li	$v0,11
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef7391c:
    b	.L5ef73874
    sh	$zero,2($v0)
.L5ef73924:
    # lw $t9, -32144($gp)
    bal	StealID
    move	$a0,$s1
    b	.L5ef73824
    ld	$t9,8($sp)
.end rrmDoubleBufferWindow

.globl rrmUndoubleBufferWindow
.ent rrmUndoubleBufferWindow
rrmUndoubleBufferWindow:
    jr	$ra
    nop
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    lw	$at,124($a0)
    move	$s1,$a0
    sd	$s0,16($sp)
    andi	$at,$at,0x7ff
    srl	$at,$at,0xa
    beqz	$at,.L5ef73a14
    move	$s0,$a1
    lw	$a0,24($s1)
    beqz	$a0,.L5ef73a18
    move	$v0,$zero
    lw	$a1,32($s0)
    andi	$v1,$a1,0x1
    beqz	$v1,.L5ef73a58
    li	$v0,4
    lw	$a2,32($a3)
    andi	$a2,$a2,0x1
    beqz	$a2,.L5ef73a54
    li	$a3,2
    andi	$a4,$a1,0x2
    beqzl	$a4,.L5ef73a24
    lw	$v0,120($s1)
    lbu	$at,1($s1)
    beq	$at,$a3,.L5ef73a60
    move	$a1,$zero
    lw	$v0,120($s1)
    beqz	$v0,.L5ef73a94
    la	$a5,FindWindowWithOptional
    lw	$a6,8($v0)
    ld	$s1,0($sp)
.L5ef739bc:
    move	$a1,$a6
.L5ef739c0:
    lbu	$v1,1($a0)
    beq	$v1,$a3,.L5ef73a04
    move	$v0,$zero
    lw	$v0,120($a0)
    beqzl	$v0,.L5ef73ac4
    sd	$a1,24($sp)
    lw	$a0,8($v0)
.L5ef739dc:
    beq	$a1,$a0,.L5ef73a0c
    li	$v0,4
.L5ef739e4:
    lw	$a1,32($s0)
.L5ef739e8:
    li	$a2,-5
    and	$a2,$a1,$a2
    or	$a2,$a2,$v0
    sw	$a2,32($s0)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef73a04:
    bnez	$a1,.L5ef739e4
    li	$v0,4
.L5ef73a0c:
    b	.L5ef739e4
    move	$v0,$zero
.L5ef73a14:
    move	$v0,$zero
.L5ef73a18:
    lw	$a1,32($s0)
    b	.L5ef739e8
    ld	$s1,0($sp)
.L5ef73a24:
    beqz	$v0,.L5ef73ae4
    la	$a3,FindWindowWithOptional
    lw	$a1,0($v0)
    ld	$s1,0($sp)
.L5ef73a34:
    lw	$v0,120($a0)
    beqzl	$v0,.L5ef73a6c
    sd	$a1,8($sp)
    lw	$a0,0($v0)
    beq	$a1,$a0,.L5ef73a8c
    nop
.L5ef73a4c:
    b	.L5ef739e4
    li	$v0,4
.L5ef73a54:
    li	$v0,4
.L5ef73a58:
    b	.L5ef739e8
    ld	$s1,0($sp)
.L5ef73a60:
    la	$a5,FindWindowWithOptional
    b	.L5ef739c0
    ld	$s1,0($sp)
.L5ef73a6c:
    sd	$ra,32($sp)
    jalr	$a3
    move	$t9,$a3
    lw	$at,120($v0)
    ld	$a4,8($sp)
    lw	$at,0($at)
    bne	$a4,$at,.L5ef73a4c
    ld	$ra,32($sp)
.L5ef73a8c:
    b	.L5ef739e4
    move	$v0,$zero
.L5ef73a94:
    # lw $t9, -29692($gp)
    sd	$ra,32($sp)
    jal	FindWindowWithOptional
    move	$a0,$s1
    li	$a3,2
    la	$a5,FindWindowWithOptional
    lw	$a0,24($s1)
    ld	$s1,0($sp)
    lw	$a6,120($v0)
    ld	$ra,32($sp)
    b	.L5ef739bc
    lw	$a6,8($a6)
.L5ef73ac4:
    sd	$ra,32($sp)
    jalr	$a5
    move	$t9,$a5
    ld	$a1,24($sp)
    lw	$a0,120($v0)
    ld	$ra,32($sp)
    b	.L5ef739dc
    lw	$a0,8($a0)
.L5ef73ae4:
    # lw $t9, -29692($gp)
    sd	$ra,32($sp)
    jal	FindWindowWithOptional
    move	$a0,$s1
    la	$a3,FindWindowWithOptional
    lw	$a0,24($s1)
    ld	$s1,0($sp)
    lw	$a1,120($v0)
    ld	$ra,32($sp)
    b	.L5ef73a34
    lw	$a1,0($a1)
.end rrmUndoubleBufferWindow

.globl rrmProcessRequestQueue
.ent rrmProcessRequestQueue
rrmProcessRequestQueue:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    sd	$s0,24($sp)
    lui	$s0,0x15
    addiu	$s0,$s0,-1316
    addu	$gp,$t9,$s0
    la	$a5,rrmScreenPrivateIndex
    sd	$s1,16($sp)
    lw	$a5,0($a5)
    lw	$s1,436($a0)
    sll	$a5,$a5,0x2
    addu	$s1,$s1,$a5
    lw	$s1,0($s1)
    lw	$s0,140($s1)
    sd	$s2,40($sp)
    sd	$s3,32($sp)
    beqz	$s0,.L5ef6ec54
    move	$s3,$zero
    la	$a2,rrmWindowPrivateIndex
    lw	$a6,16($s0)
    lw	$a2,0($a2)
    lw	$s2,132($s0)
    lw	$a6,436($a6)
    sll	$a2,$a2,0x2
    addu	$s2,$s2,$a2
    lw	$s2,0($s2)
    addu	$a6,$a6,$a5
    lw	$a0,52($s2)
    lw	$a6,0($a6)
    move	$a1,$s2
    beqz	$a0,.L5ef6ecd4
    lw	$v0,56($s2)
    lw	$a3,132($a0)
    addu	$a3,$a3,$a2
    lw	$a3,0($a3)
    sw	$v0,56($a3)
.L5ef6eb78:
    lw	$v0,56($a1)
    li	$a3,-33
    beqz	$v0,.L5ef6ecdc
    lw	$a0,52($a1)
    lw	$a4,132($v0)
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    sw	$a0,52($a4)
    sw	$zero,56($a1)
.L5ef6eb9c:
    lhu	$v1,0($a1)
    sw	$zero,52($a1)
    and	$v1,$v1,$a3
    sh	$v1,0($a1)
    lw	$at,140($s1)
    beqzl	$at,.L5ef6ebc0
    lw	$a4,124($s0)
    li	$s3,1
    lw	$a4,124($s0)
.L5ef6ebc0:
    lw	$at,4($s1)
    andi	$a4,$a4,0xfff
    srl	$a4,$a4,0xb
    beqz	$a4,.L5ef6ec74
    sd	$at,0($sp)
    # lw $t9, -32132($gp)
    sd	$ra,48($sp)
    bal	FindFreeID
    move	$a0,$s0
    beqz	$v0,.L5ef6ece4
    ld	$ra,48($sp)
.L5ef6ebec:
    lbu	$v0,5($s2)
    andi	$at,$v0,0x8
    beqz	$at,.L5ef6ec1c
    andi	$v1,$v0,0x2
    lw	$t9,36($s1)
    move	$a0,$s0
    move	$a1,$s2
    jal	FindFreeID
    move	$a2,$s1
    lbu	$v0,5($s2)
    ld	$ra,48($sp)
    andi	$v1,$v0,0x2
.L5ef6ec1c:
    beqz	$v1,.L5ef6ec54
    ld	$s2,40($sp)
    ld	$a3,0($sp)
    beqz	$a3,.L5ef6ec44
    nop	# was lw $t9, -32200($gp)
    bal	FindFreeCID
    move	$a0,$s0
    # lw $t9, -32196($gp)
    bal	rrmValidateCID
    move	$a0,$s0
.L5ef6ec44:
    lw	$t9,28($s1)
    jal	rrmValidateCID
    move	$a0,$s0
    ld	$ra,48($sp)
.L5ef6ec54:
    ld	$gp,8($sp)
.L5ef6ec58:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    move	$v0,$s3
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6ec74:
    lhu	$a4,0($s2)
    andi	$a4,$a4,0x4
    beqzl	$a4,.L5ef6ec58
    ld	$gp,8($sp)
    lbu	$v0,5($s2)
    andi	$at,$v0,0x8
    beqz	$at,.L5ef6ecb0
    move	$a0,$s0
    lw	$t9,36($s1)
    move	$a1,$s2
    sd	$ra,48($sp)
    jalr	$t9
    move	$a2,$s1
    lbu	$v0,5($s2)
    ld	$ra,48($sp)
.L5ef6ecb0:
    andi	$v1,$v0,0x2
    beqz	$v1,.L5ef6ec54
    ld	$s2,40($sp)
    lw	$t9,28($s1)
    sd	$ra,48($sp)
    jalr	$t9
    move	$a0,$s0
    b	.L5ef6ec54
    ld	$ra,48($sp)
.L5ef6ecd4:
    b	.L5ef6eb78
    sw	$v0,140($a6)
.L5ef6ecdc:
    b	.L5ef6eb9c
    sw	$a0,144($a6)
.L5ef6ece4:
    # lw $t9, -32144($gp)
    bal	StealID
    move	$a0,$s0
    b	.L5ef6ebec
    ld	$ra,48($sp)
.end rrmProcessRequestQueue

.globl rrmWorkProc
.ent rrmWorkProc
rrmWorkProc:
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$at,0x15
    addiu	$at,$at,-1844
    addu	$gp,$t9,$at
    # lw $t9, -29372($gp)
    sd	$s2,24($sp)
    sd	$ra,16($sp)
    jal	GetTimeInMillis
    li	$s2,1
    lw	$v1,var_5f0b8ae8
    sd	$v0,0($sp)
    subu	$v0,$v0,$v1
    sltiu	$v0,$v0,50
    bnez	$v0,.L5ef6edb8
    ld	$ra,16($sp)
    la	$a3,screenInfo
    lw	$a2,68($a3)
    sd	$s1,32($sp)
    move	$s1,$zero
    blez	$a2,.L5ef6eda4
    addiu	$v0,$a2,-1
    sd	$s5,48($sp)
    la	$s5,rrmScreenPrivateIndex
    sd	$s0,40($sp)
    move	$s0,$a3
    addiu	$s2,$v0,1
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$a3
.L5ef6ed6c:
    lw	$a0,72($s0)
    lw	$ra,0($s5)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L5ef6ed6c
    or	$s1,$v0,$s1
    ld	$s5,48($sp)
    ld	$s0,40($sp)
    ld	$ra,16($sp)
.L5ef6eda4:
    move	$s2,$s1
    ld	$at,0($sp)
    sw	$s1,var_5f0b8aec
    ld	$s1,32($sp)
    sw	$at,var_5f0b8ae8
.L5ef6edb8:
    ld	$gp,8($sp)
    sltiu	$v0,$s2,1
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
    addiu	$sp,$sp,-96
    sd	$s8,32($sp)
    sd	$s0,8($sp)
    li	$s0,1
    sd	$gp,16($sp)
    lui	$at,0x15
    addiu	$at,$at,-2056
    addu	$gp,$t9,$at
    # lw $t9, -29372($gp)
    sd	$s4,0($sp)
    sd	$ra,24($sp)
    jal	GetTimeInMillis
    move	$s4,$a1
    lw	$a1,var_5f0b8ae8
    move	$s8,$v0
    subu	$v0,$v0,$a1
    sltiu	$v0,$v0,50
    bnez	$v0,.L5ef6ee98
    ld	$ra,24($sp)
    la	$a3,screenInfo
    sd	$s1,40($sp)
    lw	$a1,68($a3)
    move	$s1,$zero
    move	$s0,$a3
    blez	$a1,.L5ef6ee84
    addiu	$v0,$a1,-1
    sd	$s7,56($sp)
    la	$s7,rrmScreenPrivateIndex
    sd	$s5,48($sp)
    addiu	$s5,$v0,1
    sll	$s5,$s5,0x2
    addu	$s5,$s5,$a3
.L5ef6ee4c:
    lw	$a0,72($s0)
    lw	$ra,0($s7)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    addiu	$s0,$s0,4
    bne	$s0,$s5,.L5ef6ee4c
    or	$s1,$v0,$s1
    ld	$s7,56($sp)
    ld	$s5,48($sp)
    ld	$ra,24($sp)
.L5ef6ee84:
    li	$v0,50
    sw	$s8,var_5f0b8ae8
    move	$s0,$s1
    b	.L5ef6eea0
    ld	$s1,40($sp)
.L5ef6ee98:
    subu	$v0,$a1,$s8
    addiu	$v0,$v0,50
.L5ef6eea0:
    move	$v1,$s0
    ld	$s0,8($sp)
    beqz	$v1,.L5ef6ef24
    ld	$s8,32($sp)
    lw	$a1,0($s4)
    li	$a3,1000
    addiu	$a2,$gp,-23244
    beqz	$a1,.L5ef6ef34
    ld	$s0,8($sp)
    lw	$v1,0($a1)
    mult	$v1,$a3
    lw	$at,4($a1)
    mflo	$a0
    div	$zero,$at,$a3
    mflo	$a2
    addu	$a0,$a0,$a2
    sltu	$a0,$v0,$a0
    beqz	$a0,.L5ef6ef24
    teq	$a3,$zero,0x7
    divu	$zero,$v0,$a3
    mfhi	$at
    teq	$a3,$zero,0x7
    mflo	$a2
    sw	$a2,0($a1)
    sll	$a0,$at,0x5
    subu	$a0,$a0,$at
    lw	$a2,0($s4)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$at
    sll	$a0,$a0,0x3
    sw	$a0,4($a2)
.L5ef6ef24:
    ld	$gp,16($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef6ef34:
    divu	$zero,$v0,$a3
    mflo	$v1
    teq	$a3,$zero,0x7
    sw	$v1,var_5f0b8af8
    mfhi	$v1
    sll	$at,$v1,0x5
    subu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    sll	$at,$at,0x3
    sw	$at,var_5f0b8afc
    b	.L5ef6ef24
    sw	$a2,0($s4)
    addiu	$sp,$sp,-96
    sd	$gp,8($sp)
    lui	$at,0x15
    addiu	$at,$at,-2468
    addu	$gp,$t9,$at
    # lw $t9, -29372($gp)
    sd	$s2,16($sp)
    sd	$ra,24($sp)
    jal	GetTimeInMillis
    li	$s2,1
    lw	$v1,var_5f0b8ae8
    sd	$v0,0($sp)
    subu	$v0,$v0,$v1
    sltiu	$v0,$v0,50
    bnez	$v0,.L5ef6f024
    ld	$ra,24($sp)
    la	$a3,screenInfo
    lw	$a2,68($a3)
    sd	$s1,32($sp)
    move	$s1,$zero
    blez	$a2,.L5ef6f014
    addiu	$v0,$a2,-1
    sd	$s5,48($sp)
    la	$s5,rrmScreenPrivateIndex
    sd	$s0,40($sp)
    move	$s0,$a3
    addiu	$s2,$v0,1
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$a3
.L5ef6efdc:
    lw	$a0,72($s0)
    lw	$ra,0($s5)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,24($t9)
    jalr	$t9
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L5ef6efdc
    or	$s1,$v0,$s1
    ld	$s5,48($sp)
    ld	$s0,40($sp)
    ld	$ra,24($sp)
.L5ef6f014:
    ld	$at,0($sp)
    move	$s2,$s1
    ld	$s1,32($sp)
    sw	$at,var_5f0b8ae8
.L5ef6f024:
    move	$v1,$s2
    beqz	$v1,.L5ef6f03c
    ld	$s2,16($sp)
.L5ef6f030:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef6f03c:
    move	$a2,$zero
    ld	$s2,16($sp)
    la	$a1,local_0x5ef70000
    # lw $t9, -29324($gp)
    la	$a0,local_0x5ef70000
    addiu	$a1,$a1,-4248
    jal	RemoveBlockAndWakeupHandlers
    addiu	$a0,$a0,-4660
    sw	$zero,var_5f0b8af0
    b	.L5ef6f030
    ld	$ra,24($sp)
.L5ef6f068:
    la	$a5,rrmWindowPrivateIndex
    addiu	$sp,$sp,-32
    lw	$a4,16($a0)
    lw	$a5,0($a5)
    lw	$a3,132($a0)
    la	$v0,rrmScreenPrivateIndex
    sll	$a5,$a5,0x2
    addu	$a3,$a3,$a5
    lw	$a3,0($a3)
    lw	$v0,0($v0)
    lw	$a4,436($a4)
    lhu	$at,0($a3)
    sll	$v0,$v0,0x2
    addu	$a4,$a4,$v0
    andi	$at,$at,0x20
    beqz	$at,.L5ef6f0d4
    lw	$a4,0($a4)
.L5ef6f0ac:
    lbu	$at,5($a3)
    lw	$v0,var_5f0b8aec
    or	$at,$at,$a1
    beqz	$v0,.L5ef6f108
    sb	$at,5($a3)
.L5ef6f0c0:
    lw	$v0,var_5f0b8af0
    beqz	$v0,.L5ef6f130
    move	$a2,$zero
.L5ef6f0cc:
    jr	$ra
    addiu	$sp,$sp,32
.L5ef6f0d4:
    lw	$v1,144($a4)
    beqz	$v1,.L5ef6f15c
    sw	$v1,52($a3)
    lw	$a2,144($a4)
    lw	$a2,132($a2)
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    sw	$a0,56($a2)
.L5ef6f0f4:
    sw	$a0,144($a4)
    lhu	$at,0($a3)
    ori	$at,$at,0x20
    b	.L5ef6f0ac
    sh	$at,0($a3)
.L5ef6f108:
    move	$a2,$zero
    # lw $t9, -29320($gp)
    move	$a1,$zero
    sd	$ra,0($sp)
    jal	QueueWorkProc
    la	$a0,rrmWorkProc
    ld	$ra,0($sp)
    li	$v0,1
    b	.L5ef6f0c0
    sw	$v0,var_5f0b8aec
.L5ef6f130:
    sd	$ra,0($sp)
    la	$a1,local_0x5ef70000
    # lw $t9, -29316($gp)
    la	$a0,local_0x5ef70000
    addiu	$a1,$a1,-4248
    jal	RegisterBlockAndWakeupHandlers
    addiu	$a0,$a0,-4660
    ld	$ra,0($sp)
    li	$a2,1
    b	.L5ef6f0cc
    sw	$a2,var_5f0b8af0
.L5ef6f15c:
    b	.L5ef6f0f4
    sw	$a0,140($a4)
    addiu	$sp,$sp,-112
    sd	$s2,56($sp)
    move	$s2,$a3
    sd	$a2,8($sp)
    sd	$s1,32($sp)
    move	$s1,$a1
    sd	$gp,48($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-2976
    addu	$gp,$t9,$v0
    lw	$at,nfbWindowPrivateIndex
    lw	$v0,132($a0)
    sd	$s0,40($sp)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    move	$s0,$a0
    beqz	$a1,.L5ef6f1bc
    sd	$at,16($sp)
    lw	$v1,4($s0)
    beql	$v1,$s2,.L5ef6f378
    ld	$gp,48($sp)
.L5ef6f1bc:
    sd	$s3,64($sp)
    la	$a4,glxScreenPrivateIndex
    lw	$at,16($s0)
    la	$s3,rrmScreenPrivateIndex
    lw	$a4,0($a4)
    lw	$at,436($at)
    lw	$s3,0($s3)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    sll	$s3,$s3,0x2
    addu	$s3,$s3,$at
    beqz	$a4,.L5ef6f36c
    lw	$s3,0($s3)
    la	$a0,glxWindowPrivateIndex
    lw	$a5,0($a0)
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$v0
    lw	$a5,0($a5)
    beqzl	$a5,.L5ef6f408
    move	$a0,$s0
.L5ef6f210:
    beqz	$s2,.L5ef6f3d8
    sd	$zero,24($sp)
    beqzl	$s1,.L5ef6f450
    move	$a0,$s2
    move	$s2,$zero
.L5ef6f224:
    beqz	$s2,.L5ef6f288
    lw	$v1,0($a0)
    la	$v1,rrmWindowPrivateIndex
    lw	$v1,0($v1)
    lw	$v0,132($s2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    beqz	$v0,.L5ef6f2b4
    nop
    lw	$at,36($v0)
    lw	$a5,32($v0)
    lhu	$a4,0($v0)
    sw	$at,4($sp)
    sw	$a5,0($sp)
    andi	$a4,$a4,0x4
    beqz	$s1,.L5ef6f3e0
    sd	$a4,24($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,72($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1360
    b	.L5ef6f2b4
    ld	$ra,72($sp)
.L5ef6f288:
    lw	$v0,132($s0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    beqz	$v0,.L5ef6f38c
    ld	$a0,16($sp)
    lw	$a4,4($v0)
    beqzl	$a4,.L5ef6f390
    lw	$at,0($s3)
    sw	$zero,4($sp)
    sw	$zero,0($sp)
.L5ef6f2b4:
    beqz	$s1,.L5ef6f320
    move	$a0,$s0
    ld	$a1,8($sp)
    lw	$t9,56($s3)
    lw	$a3,4($sp)
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a2,0($sp)
    ld	$ra,72($sp)
.L5ef6f2d8:
    ld	$a5,24($sp)
.L5ef6f2dc:
    la	$a4,rrmWindowPrivateIndex
    ld	$s2,56($sp)
    beqz	$a5,.L5ef6f30c
    ld	$s3,64($sp)
    lw	$a4,0($a4)
    lw	$v1,132($s0)
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lw	$v1,0($v1)
    lhu	$at,0($v1)
    ori	$at,$at,0x4
    sh	$at,0($v1)
.L5ef6f30c:
    ld	$s1,32($sp)
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6f320:
    lw	$a5,64($s3)
    beqz	$a5,.L5ef6f430
    move	$a0,$s0
    beq	$s0,$s2,.L5ef6f2dc
    ld	$a5,24($sp)
    move	$a0,$s0
    ld	$a1,8($sp)
    lw	$t9,52($s3)
    lw	$a3,4($sp)
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a2,0($sp)
    lw	$t9,64($s3)
    move	$a0,$s0
    move	$a1,$s2
    jalr	$t9
    ld	$a2,8($sp)
    b	.L5ef6f2d8
    ld	$ra,72($sp)
.L5ef6f36c:
    la	$a0,glxWindowPrivateIndex
    b	.L5ef6f210
    nop
.L5ef6f378:
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef6f38c:
    lw	$at,0($s3)
.L5ef6f390:
    lw	$a0,4($a0)
    sltu	$at,$a0,$at
    beqzl	$at,.L5ef6f428
    sw	$zero,0($sp)
    lw	$v1,48($s3)
    sll	$v0,$a0,0x3
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    beqz	$v1,.L5ef6f474
    addu	$v0,$v0,$s3
    lw	$v1,184($v0)
    beqzl	$v1,.L5ef6f478
    lw	$a5,164($v0)
    lw	$a5,180($v0)
    lw	$a4,176($v0)
    sw	$a5,4($sp)
    b	.L5ef6f2b4
    sw	$a4,0($sp)
.L5ef6f3d8:
    b	.L5ef6f224
    move	$s2,$zero
.L5ef6f3e0:
    lw	$at,64($s3)
    bnez	$at,.L5ef6f2b4
    nop
    lw	$t9,68($s3)
    move	$a0,$s2
    sd	$ra,72($sp)
    jalr	$t9
    ld	$a1,8($sp)
    b	.L5ef6f2b4
    ld	$ra,72($sp)
.L5ef6f408:
    # lw $t9, -29312($gp)
    move	$a1,$zero
    sd	$ra,72($sp)
    jal	glxInitWinPriv
    move	$a2,$zero
    la	$a0,glxWindowPrivateIndex
    b	.L5ef6f210
    ld	$ra,72($sp)
.L5ef6f428:
    b	.L5ef6f2b4
    sw	$zero,4($sp)
.L5ef6f430:
    ld	$a1,8($sp)
    lw	$t9,52($s3)
    lw	$a3,4($sp)
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a2,0($sp)
    b	.L5ef6f2d8
    ld	$ra,72($sp)
.L5ef6f450:
    # lw $t9, -29684($gp)
    sd	$ra,72($sp)
    lui	$a1,0xc000
    jal	LookupIDByType
    ori	$a1,$a1,0x1
    la	$a0,glxWindowPrivateIndex
    move	$s2,$v0
    b	.L5ef6f224
    ld	$ra,72($sp)
.L5ef6f474:
    lw	$a5,164($v0)
.L5ef6f478:
    lw	$a4,160($v0)
    sw	$a5,4($sp)
    b	.L5ef6f2b4
    sw	$a4,0($sp)
.L5ef6f488:
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    sd	$ra,24($sp)
    lui	$ra,0x15
    addiu	$ra,$ra,-3780
    addu	$gp,$t9,$ra
    # lw $t9, -32732($gp)
    addiu	$t9,$t9,-2328
    bal	.L5ef6f6e8
    sd	$a0,0($sp)
    ld	$a0,0($sp)
    beqz	$v0,.L5ef6f4cc
    la	$a1,rrmWindowPrivateIndex
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6f4cc:
    lw	$a1,0($a1)
    lw	$a0,132($a0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    beqz	$a0,.L5ef6f590
    ld	$v0,0($sp)
    lhu	$a3,0($a0)
    andi	$at,$a3,0x1
    beqz	$at,.L5ef6f590
    la	$at,rrmScreenPrivateIndex
    lw	$a2,16($v0)
    lbu	$v1,6($a0)
    lw	$at,0($at)
    lw	$a2,436($a2)
    ori	$v1,$v1,0x2
    sll	$at,$at,0x2
    addu	$a2,$a2,$at
    lw	$a2,0($a2)
    sb	$v1,6($a0)
    lw	$v0,124($v0)
    andi	$v0,$v0,0xfff
    srl	$v0,$v0,0xb
    beqz	$v0,.L5ef6f574
    andi	$at,$a3,0x4
    lw	$v0,4($a2)
    beqz	$v0,.L5ef6f5c4
    nop	# was lw $t9, -32132($gp)
    lw	$v1,24($a0)
    beqz	$v1,.L5ef6f604
    nop	# was lw $t9, -32732($gp)
    lbu	$a1,4($a0)
    andi	$a1,$a1,0x2
    beqz	$a1,.L5ef6f5f0
    nop	# was lw $t9, -32196($gp)
.L5ef6f558:
    lw	$t9,28($a2)
    jal	rrmValidateCID
    ld	$a0,0($sp)
.L5ef6f564:
    ld	$ra,24($sp)
.L5ef6f568:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6f574:
    beqzl	$at,.L5ef6f5b8
    lbu	$at,5($a0)
    lw	$t9,28($a2)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L5ef6f568
    ld	$ra,24($sp)
.L5ef6f590:
    ld	$a1,0($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a1,4($a1)
    jal	ErrorF
    addiu	$a0,$a0,-1296
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6f5b8:
    ori	$at,$at,0x2
    b	.L5ef6f564
    sb	$at,5($a0)
.L5ef6f5c4:
    sd	$a2,8($sp)
    bal	FindFreeID
    ld	$a0,0($sp)
    beqz	$v0,.L5ef6f61c
    ld	$a0,0($sp)
    ld	$t9,8($sp)
    lw	$t9,28($t9)
    jalr	$t9
    nop
    b	.L5ef6f568
    ld	$ra,24($sp)
.L5ef6f5f0:
    sd	$a2,8($sp)
    bal	rrmValidateCID
    ld	$a0,0($sp)
    b	.L5ef6f558
    ld	$a2,8($sp)
.L5ef6f604:
    ld	$a0,0($sp)
    addiu	$t9,$t9,-3992
    bal	.L5ef6f068
    li	$a1,2
    b	.L5ef6f568
    ld	$ra,24($sp)
.L5ef6f61c:
    # lw $t9, -32732($gp)
    addiu	$t9,$t9,-3992
    bal	.L5ef6f068
    li	$a1,2
    b	.L5ef6f568
    ld	$ra,24($sp)
    move	$a3,$zero
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a2
    move	$a2,$zero
    sd	$a0,32($sp)
    sd	$gp,24($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-4208
    addu	$gp,$t9,$v0
    # lw $t9, -32732($gp)
    sd	$ra,0($sp)
    la	$at,rrmWindowPrivateIndex
    lw	$v0,0($s8)
    la	$ra,glxWindowPrivateIndex
    lw	$at,0($at)
    lw	$v0,132($v0)
    lw	$ra,0($ra)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    sll	$ra,$ra,0x2
    addu	$ra,$ra,$v0
    lw	$ra,0($ra)
    lw	$at,0($at)
    addiu	$t9,$t9,-2936
    sw	$zero,24($ra)
    sd	$at,8($sp)
    lw	$a1,4($s8)
    bal	.L5ef6f488
    lw	$a0,0($s8)
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s8
    # lw $t9, -29328($gp)
    ld	$a0,32($sp)
    jal	TimerFree
    ld	$s8,8($sp)
    move	$v0,$zero
    ld	$gp,24($sp)
    sw	$zero,72($s8)
    ld	$ra,0($sp)
    sw	$zero,68($s8)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6f6e8:
    addiu	$sp,$sp,-64
    la	$a5,glxWindowPrivateIndex
    move	$v0,$a0
    la	$a4,rrmWindowPrivateIndex
    lw	$a5,0($a5)
    lw	$at,132($a0)
    lw	$a4,0($a4)
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    beqz	$a5,.L5ef6f760
    lw	$a4,0($a4)
    lw	$at,24($a5)
    sd	$v0,8($sp)
    sd	$a1,16($sp)
    beqz	$at,.L5ef6f760
    sd	$a4,24($sp)
    # lw $t9, -29492($gp)
    sd	$ra,32($sp)
    jal	Xalloc
    li	$a0,8
    sd	$v0,0($sp)
    move	$a4,$v0
    bnez	$a4,.L5ef6f76c
    ld	$ra,32($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6f760:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6f76c:
    li	$a2,1
    move	$a1,$zero
    move	$a0,$zero
    la	$a3,local_0x5ef70000
    ld	$a6,16($sp)
    ld	$a5,8($sp)
    # lw $t9, -29308($gp)
    sw	$a6,4($a4)
    sw	$a5,0($a4)
    jal	TimerSet
    addiu	$a3,$a3,-2508
    move	$a4,$v0
    ld	$at,24($sp)
    beqz	$v0,.L5ef6f7c0
    ld	$ra,32($sp)
    li	$v0,1
    ld	$v1,0($sp)
    addiu	$sp,$sp,64
    sw	$a4,68($at)
    jr	$ra
    sw	$v1,72($at)
.L5ef6f7c0:
    # lw $t9, -29644($gp)
    jal	Xfree
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lui	$at,0x15
    addiu	$at,$at,-4632
    beqz	$a1,.L5ef6f818
    addu	$gp,$t9,$at
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-1240
    ld	$ra,8($sp)
.L5ef6f80c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef6f818:
    la	$ra,rrmScreenPrivateIndex
    lw	$t9,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($t9)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,68($t9)
    jalr	$t9
    move	$a1,$a2
    b	.L5ef6f80c
    ld	$ra,8($sp)
.L5ef6f848:
    lw	$a2,16($a0)
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a0
    lw	$a2,436($a2)
    sd	$gp,8($sp)
    lui	$a3,0x15
    addiu	$a3,$a3,-4740
    addu	$gp,$t9,$a3
    # lw $t9, -29736($gp)
    sd	$s0,24($sp)
    la	$a3,rrmScreenPrivateIndex
    lw	$t9,0($t9)
    lw	$s0,132($a0)
    lw	$a3,0($a3)
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    lw	$s0,0($s0)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    beqz	$s0,.L5ef6f980
    lw	$a2,0($a2)
    lhu	$a0,0($s0)
    andi	$at,$a0,0x1
    beqzl	$at,.L5ef6f984
    lw	$a1,4($s1)
    lbu	$v1,6($s0)
    ori	$v1,$v1,0x8
    sb	$v1,6($s0)
    lw	$v0,124($s1)
    andi	$v0,$v0,0xfff
    srl	$v0,$v0,0xb
    beqz	$v0,.L5ef6f950
    andi	$at,$a0,0x4
    # lw $t9, -32132($gp)
    sd	$a2,0($sp)
    sd	$ra,32($sp)
    bal	FindFreeID
    move	$a0,$s1
    beqzl	$v0,.L5ef6f90c
    lhu	$at,0($s0)
    ld	$t9,0($sp)
    move	$a2,$t9
    lw	$t9,36($t9)
    move	$a0,$s1
    jal	FindFreeID
    move	$a1,$s0
    b	.L5ef6f93c
    ld	$ra,32($sp)
.L5ef6f90c:
    andi	$at,$at,0x8000
    beqz	$at,.L5ef6f9b0
    nop	# was lw $t9, -32144($gp)
    bal	StealID
    move	$a0,$s1
    ld	$t9,0($sp)
    move	$a2,$t9
    lw	$t9,36($t9)
    move	$a0,$s1
    jal	StealID
    move	$a1,$s0
    ld	$ra,32($sp)
.L5ef6f93c:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6f950:
    beqzl	$at,.L5ef6f974
    lbu	$v0,5($s0)
    lw	$t9,36($a2)
    move	$a0,$s1
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s0
    b	.L5ef6f93c
    ld	$ra,32($sp)
.L5ef6f974:
    ori	$v0,$v0,0x8
    b	.L5ef6f93c
    sb	$v0,5($s0)
.L5ef6f980:
    lw	$a1,4($s1)
.L5ef6f984:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1176
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6f9b0:
    # lw $t9, -32732($gp)
    move	$a0,$s1
    addiu	$t9,$t9,-3992
    bal	.L5ef6f068
    li	$a1,8
    b	.L5ef6f93c
    ld	$ra,32($sp)
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$at,0x15
    addiu	$at,$at,-5128
    addu	$gp,$t9,$at
    # lw $t9, -29736($gp)
    lw	$t9,0($t9)
    lw	$a4,132($a0)
    sll	$t9,$t9,0x2
    addu	$a4,$a4,$t9
    lw	$a4,0($a4)
    sd	$s0,8($sp)
    beqz	$a4,.L5ef6fad0
    move	$s0,$a0
    lhu	$v0,0($a4)
    andi	$v0,$v0,0x1
    beqz	$v0,.L5ef6fad0
    la	$v0,rrmScreenPrivateIndex
    lw	$a0,16($s0)
    li	$at,1
    lw	$v0,0($v0)
    lw	$a0,436($a0)
    lhu	$a1,2($a4)
    sll	$v0,$v0,0x2
    addu	$a0,$a0,$v0
    beq	$a1,$at,.L5ef6faa8
    lw	$a0,0($a0)
    lw	$a1,36($a4)
.L5ef6fa3c:
    sw	$a2,32($a4)
    andi	$a1,$a1,0x6000
    or	$a1,$a1,$a3
    sw	$a1,36($a4)
    lw	$v1,124($s0)
    andi	$v1,$v1,0xfff
    srl	$v1,$v1,0xb
    beqzl	$v1,.L5ef6fa9c
    ld	$gp,0($sp)
    lw	$v0,20($a4)
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lhu	$at,168($at)
    andi	$at,$at,0x4
    beqz	$at,.L5ef6fafc
    sd	$ra,16($sp)
    # lw $t9, -32132($gp)
    bal	FindFreeID
    move	$a0,$s0
    beqz	$v0,.L5ef6fb10
    ld	$ra,16($sp)
.L5ef6fa98:
    ld	$gp,0($sp)
.L5ef6fa9c:
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6faa8:
    lw	$v1,12($a0)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L5ef6fa3c
    lw	$a1,36($a4)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    lw	$a0,0($a0)
    addiu	$sp,$sp,64
    jr	$ra
    sw	$a0,20($a4)
.L5ef6fad0:
    lw	$a1,4($s0)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,16($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1112
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6fafc:
    # lw $t9, -32156($gp)
    bal	SetDIDMode
    move	$a0,$s0
    b	.L5ef6fa98
    ld	$ra,16($sp)
.L5ef6fb10:
    # lw $t9, -32136($gp)
    bal	FindBestID
    move	$a0,$s0
    b	.L5ef6fa98
    ld	$ra,16($sp)
    addiu	$sp,$sp,-80
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0x15
    addiu	$s8,$s8,-5472
    addu	$gp,$t9,$s8
    # lw $t9, -32732($gp)
    sd	$a1,40($sp)
    sd	$ra,0($sp)
    addiu	$t9,$t9,-1976
    bal	.L5ef6f848
    move	$s8,$a0
    move	$a0,$s8
    # lw $t9, -32732($gp)
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    addiu	$t9,$t9,-2936
    bal	.L5ef6f488
    ld	$a3,24($sp)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
    move	$a5,$a0
    move	$a4,$a1
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    lui	$at,0x15
    addiu	$at,$at,-5576
    addu	$gp,$t9,$at
    la	$a6,rrmWindowPrivateIndex
    sd	$s1,8($sp)
    sd	$s0,16($sp)
    lw	$t9,0($a6)
    lw	$s0,132($a0)
    move	$s1,$a3
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    beqz	$a1,.L5ef6fc00
    lw	$s0,0($s0)
    sd	$a5,0($sp)
    lhu	$a2,0($s0)
    move	$a3,$a5
    lw	$a1,4($a5)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-1048
    la	$a6,rrmWindowPrivateIndex
    ld	$a5,0($sp)
    ld	$ra,32($sp)
.L5ef6fc00:
    beqzl	$s0,.L5ef6fd40
    lw	$a1,4($a5)
    lhu	$a0,0($s0)
    andi	$a2,$a0,0x1
    beqzl	$a2,.L5ef6fd40
    lw	$a1,4($a5)
    lw	$at,40($s0)
    lw	$a5,0($a6)
    beqz	$at,.L5ef6fd2c
    ld	$gp,24($sp)
    sll	$a5,$a5,0x2
    li	$a7,-5
    lw	$a1,40($s0)
    move	$a0,$zero
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    dsll32	$a0,$a0,0x10
    beqz	$a1,.L5ef6fc70
    dsra32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6fd6c
    lhu	$a3,0($a4)
    ori	$at,$a3,0x4
    sh	$at,0($a4)
.L5ef6fc70:
    lw	$a1,40($s0)
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    beqz	$a1,.L5ef6fca8
    dsll32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6fd78
    lhu	$a3,0($a4)
    ori	$at,$a3,0x4
    sh	$at,0($a4)
.L5ef6fca8:
    lw	$a1,40($s0)
    dsra32	$a0,$a0,0x10
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    beqz	$a1,.L5ef6fce4
    dsll32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6fd84
    lhu	$a3,0($a4)
    ori	$at,$a3,0x4
    sh	$at,0($a4)
.L5ef6fce4:
    lw	$a1,40($s0)
    dsra32	$a0,$a0,0x10
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    beqz	$a1,.L5ef6fd1c
    nop
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6fd90
    lhu	$a3,0($a4)
    ori	$at,$a3,0x4
    sh	$at,0($a4)
.L5ef6fd1c:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6fd2c:
    beqz	$s1,.L5ef6fd9c
    ori	$v0,$a0,0x4
    b	.L5ef6fd1c
    sh	$v0,0($s0)
    lw	$a1,4($a5)
.L5ef6fd40:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-952
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6fd6c:
    and	$a2,$a7,$a3
    b	.L5ef6fc70
    sh	$a2,0($a4)
.L5ef6fd78:
    and	$at,$a7,$a3
    b	.L5ef6fca8
    sh	$at,0($a4)
.L5ef6fd84:
    and	$v0,$a7,$a3
    b	.L5ef6fce4
    sh	$v0,0($a4)
.L5ef6fd90:
    and	$v1,$a7,$a3
    b	.L5ef6fd1c
    sh	$v1,0($a4)
.L5ef6fd9c:
    li	$a2,-5
    and	$a2,$a0,$a2
    b	.L5ef6fd1c
    sh	$a2,0($s0)
    move	$a5,$a0
    move	$a4,$a1
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    lui	$at,0x15
    addiu	$at,$at,-6120
    addu	$gp,$t9,$at
    la	$a6,rrmWindowPrivateIndex
    sd	$s1,8($sp)
    sd	$s0,16($sp)
    lw	$t9,0($a6)
    lw	$s0,132($a0)
    move	$s1,$a3
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    beqz	$a1,.L5ef6fe20
    lw	$s0,0($s0)
    sd	$a5,0($sp)
    lhu	$a2,0($s0)
    move	$a3,$a5
    lw	$a1,4($a5)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-888
    la	$a6,rrmWindowPrivateIndex
    ld	$a5,0($sp)
    ld	$ra,32($sp)
.L5ef6fe20:
    beqzl	$s0,.L5ef6ff60
    lw	$a1,4($a5)
    lhu	$a0,0($s0)
    andi	$a2,$a0,0x1
    beqzl	$a2,.L5ef6ff60
    lw	$a1,4($a5)
    lw	$at,40($s0)
    lw	$a5,0($a6)
    beqz	$at,.L5ef6ff4c
    ld	$gp,24($sp)
    sll	$a5,$a5,0x2
    li	$a7,-3
    lw	$a1,40($s0)
    move	$a0,$zero
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    dsll32	$a0,$a0,0x10
    beqz	$a1,.L5ef6fe90
    dsra32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6ff8c
    lhu	$a3,0($a4)
    ori	$at,$a3,0x2
    sh	$at,0($a4)
.L5ef6fe90:
    lw	$a1,40($s0)
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    beqz	$a1,.L5ef6fec8
    dsll32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6ff98
    lhu	$a3,0($a4)
    ori	$at,$a3,0x2
    sh	$at,0($a4)
.L5ef6fec8:
    lw	$a1,40($s0)
    dsra32	$a0,$a0,0x10
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    addiu	$a0,$a0,1
    beqz	$a1,.L5ef6ff04
    dsll32	$a0,$a0,0x10
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6ffa4
    lhu	$a3,0($a4)
    ori	$at,$a3,0x2
    sh	$at,0($a4)
.L5ef6ff04:
    lw	$a1,40($s0)
    dsra32	$a0,$a0,0x10
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    beqz	$a1,.L5ef6ff3c
    nop
    lw	$a4,132($a1)
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    beqz	$s1,.L5ef6ffb0
    lhu	$a3,0($a4)
    ori	$at,$a3,0x2
    sh	$at,0($a4)
.L5ef6ff3c:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6ff4c:
    beqz	$s1,.L5ef6ffbc
    ori	$v0,$a0,0x2
    b	.L5ef6ff3c
    sh	$v0,0($s0)
    lw	$a1,4($a5)
.L5ef6ff60:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-792
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef6ff8c:
    and	$a2,$a7,$a3
    b	.L5ef6fe90
    sh	$a2,0($a4)
.L5ef6ff98:
    and	$at,$a7,$a3
    b	.L5ef6fec8
    sh	$at,0($a4)
.L5ef6ffa4:
    and	$v0,$a7,$a3
    b	.L5ef6ff04
    sh	$v0,0($a4)
.L5ef6ffb0:
    and	$v1,$a7,$a3
    b	.L5ef6ff3c
    sh	$v1,0($a4)
.L5ef6ffbc:
    li	$a2,-3
    and	$a2,$a0,$a2
    b	.L5ef6ff3c
    sh	$a2,0($s0)
    jr	$ra
    nop
    move	$a2,$a0
    lw	$a3,16($a0)
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a4,0x15
    addiu	$a4,$a4,-6672
    addu	$gp,$t9,$a4
    la	$at,rrmWindowPrivateIndex
    lw	$a3,436($a3)
    # lw $t9, -29732($gp)
    lw	$at,0($at)
    lw	$a4,132($a0)
    lw	$t9,0($t9)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    sll	$t9,$t9,0x2
    addu	$a3,$a3,$t9
    beqz	$a4,.L5ef7004c
    lw	$a3,0($a3)
    lw	$v1,20($a4)
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a3
    lhu	$at,168($v0)
    sd	$ra,8($sp)
    li	$v1,-17
    and	$at,$at,$v1
    sh	$at,168($v0)
.L5ef7004c:
    # lw $t9, -29636($gp)
    sd	$ra,8($sp)
    jal	dbcDelayedSwapBufferDone
    lw	$a0,4($a2)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x15
    addiu	$at,$at,-6824
    addu	$gp,$t9,$at
    # lw $t9, -29736($gp)
    li	$a1,1
    lw	$t9,0($t9)
    lw	$a4,132($a0)
    andi	$at,$a2,0x2
    sll	$t9,$t9,0x2
    addu	$a4,$a4,$t9
    beqz	$at,.L5ef70100
    lw	$a4,0($a4)
    beqz	$a4,.L5ef700dc
    andi	$v0,$a2,0x4
    beqz	$v0,.L5ef700e8
    lw	$a5,32($a4)
    sd	$ra,8($sp)
    ori	$v1,$a5,0x4
    sw	$v1,32($a4)
.L5ef700c0:
    # lw $t9, -29304($gp)
    jal	dbcNoticeSwapInitiated
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef700dc:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L5ef700e8:
    li	$a3,-5
    sd	$ra,8($sp)
    move	$a1,$zero
    and	$a3,$a5,$a3
    b	.L5ef700c0
    sw	$a3,32($a4)
.L5ef70100:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
    lw	$a1,16($a0)
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a3,0x15
    addiu	$a3,$a3,-6984
    addu	$gp,$t9,$a3
    # lw $t9, -29300($gp)
    move	$a0,$a2
    sd	$ra,0($sp)
    jal	XvcSendScreenLockChangeEvent
    lw	$a1,0($a1)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
    addiu	$sp,$sp,-128
    sd	$s6,72($sp)
    sd	$ra,64($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s7,24($sp)
    la	$s7,rrmWindowPrivateIndex
    sd	$s2,88($sp)
    li	$s2,1
    sd	$s0,48($sp)
    lw	$s0,4($sp)
    sd	$s4,56($sp)
    move	$s4,$a0
    sd	$s5,32($sp)
    li	$s5,1
    sd	$s1,40($sp)
    lw	$v1,0($sp)
    lw	$at,16($a0)
    la	$v0,rrmScreenPrivateIndex
    sd	$s3,80($sp)
    lw	$s3,116($at)
    lw	$v0,0($v0)
    lw	$at,436($at)
    sd	$v1,96($sp)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    lw	$s1,72($s3)
    b	.L5ef70200
    sd	$at,8($sp)
.L5ef701c0:
    sllv	$a1,$s2,$a4
.L5ef701c4:
    and	$a1,$a1,$s0
    beqz	$a1,.L5ef701e4
    ld	$t9,8($sp)
    lw	$t9,32($t9)
    move	$a0,$s4
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
.L5ef701e4:
    lw	$a0,36($s4)
.L5ef701e8:
    beqzl	$a0,.L5ef702cc
    lw	$a0,28($s4)
    lw	$at,16($s6)
    beqzl	$at,.L5ef702cc
    lw	$a0,28($s4)
    move	$s4,$a0
.L5ef70200:
    lw	$v0,124($s4)
    andi	$v0,$v0,0x7ff
    srl	$v0,$v0,0xa
    beqz	$v0,.L5ef702c8
    lw	$s6,0($s7)
    lw	$a0,132($s4)
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$a0
    lw	$s6,0($s6)
    beqzl	$s6,.L5ef702cc
    lw	$a0,28($s4)
    lhu	$at,0($s6)
    andi	$at,$at,0x1
    beqzl	$at,.L5ef701e8
    lw	$a0,36($s4)
    lw	$v0,68($s4)
    beqz	$v0,.L5ef701e4
    lw	$a4,nfbWindowPrivateIndex
    lw	$at,56($s3)
    sll	$a4,$a4,0x2
    addu	$a4,$a0,$a4
    lw	$a4,0($a4)
    move	$a2,$zero
    beqz	$at,.L5ef70334
    lw	$a4,24($a4)
    beqz	$s5,.L5ef701c4
    sllv	$a1,$s2,$a4
    lw	$a3,40($s3)
    move	$s5,$zero
    move	$s0,$zero
    blez	$a3,.L5ef701c0
    move	$a5,$a3
    andi	$at,$a3,0x1
    beqz	$at,.L5ef702b4
    move	$a0,$zero
    sllv	$v0,$s2,$a2
    and	$v0,$v0,$s1
    beqzl	$v0,.L5ef702b0
    addiu	$a2,$a2,1
    lw	$v1,52($s3)
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    or	$s0,$v1,$s0
    addiu	$a2,$a2,1
.L5ef702b0:
    addiu	$a0,$a0,4
.L5ef702b4:
    sra	$a1,$a5,0x1
    beqz	$a1,.L5ef701c0
    nop
    b	.L5ef702f0
    sllv	$at,$s2,$a2
.L5ef702c8:
    lw	$a0,28($s4)
.L5ef702cc:
    beqz	$a0,.L5ef703a4
    nop
.L5ef702d4:
    beql	$s8,$s4,.L5ef703c8
    ld	$s0,48($sp)
    b	.L5ef70200
    move	$s4,$a0
.L5ef702e4:
    beq	$a2,$a3,.L5ef701c0
    addiu	$a0,$a0,4
    sllv	$at,$s2,$a2
.L5ef702f0:
    addiu	$a2,$a2,1
    sllv	$v1,$s2,$a2
    addiu	$a2,$a2,1
    and	$at,$at,$s1
    beqz	$at,.L5ef70318
    and	$v1,$v1,$s1
    lw	$v0,52($s3)
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    or	$s0,$v0,$s0
.L5ef70318:
    beqz	$v1,.L5ef702e4
    addiu	$a0,$a0,4
    lw	$a1,52($s3)
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    b	.L5ef702e4
    or	$s0,$a1,$s0
.L5ef70334:
    beqz	$s5,.L5ef70378
    ld	$v1,96($sp)
    lw	$a2,40($s3)
    blez	$a2,.L5ef70374
    move	$s5,$zero
    move	$a0,$zero
    sllv	$at,$s2,$a0
.L5ef70350:
    and	$at,$at,$s1
    bnez	$at,.L5ef70370
    move	$v0,$a0
    addiu	$a0,$a0,1
    bne	$a0,$a2,.L5ef70350
    sllv	$at,$s2,$a0
    b	.L5ef70378
    ld	$v1,96($sp)
.L5ef70370:
    sd	$a0,96($sp)
.L5ef70374:
    ld	$v1,96($sp)
.L5ef70378:
    sltu	$v1,$a4,$v1
    bnezl	$v1,.L5ef701e8
    lw	$a0,36($s4)
    ld	$t9,8($sp)
    lw	$t9,32($t9)
    move	$a0,$s4
    move	$a1,$zero
    jalr	$t9
    li	$a2,1
    b	.L5ef701e8
    lw	$a0,36($s4)
.L5ef703a4:
    beql	$s8,$s4,.L5ef703c8
    ld	$s0,48($sp)
    lw	$s4,24($s4)
.L5ef703b0:
    lw	$a0,28($s4)
    bnez	$a0,.L5ef702d4
    nop
    bnel	$s8,$s4,.L5ef703b0
    lw	$s4,24($s4)
    ld	$s0,48($sp)
.L5ef703c8:
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    ld	$ra,64($sp)
    ld	$s7,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end rrmWorkProc

.globl rrmValidateTree
.ent rrmValidateTree
rrmValidateTree:
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-7728
    addu	$gp,$t9,$v1
    la	$v0,rrmWindowPrivateIndex
    sd	$ra,32($sp)
    lw	$v0,0($v0)
    lw	$at,132($a0)
    sd	$s0,0($sp)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    move	$s0,$a0
    sd	$s8,8($sp)
    bnez	$at,.L5ef70490
    move	$s8,$a1
.L5ef70438:
    la	$ra,rrmScreenPrivateIndex
    lw	$a0,16($s0)
    lw	$ra,0($ra)
    lw	$t9,436($a0)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,124($t9)
    move	$a1,$s8
    sd	$a0,24($sp)
    sw	$t9,204($a0)
    jalr	$t9
    move	$a0,$s0
    la	$at,rrmValidateTree
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    ld	$s8,8($sp)
    ld	$ra,32($sp)
    ld	$v1,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    sw	$at,204($v1)
.L5ef70490:
    # lw $t9, -32732($gp)
    sd	$a2,40($sp)
    addiu	$t9,$t9,328
    bal	rrmWorkProc
    move	$a0,$s0
    b	.L5ef70438
    ld	$a2,40($sp)
.end rrmValidateTree

.globl rrmMapWindow
.ent rrmMapWindow
rrmMapWindow:
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    move	$s2,$zero
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    sd	$s4,8($sp)
    lw	$s4,132($a0)
    sd	$s3,24($sp)
    sd	$gp,48($sp)
    lui	$at,0x15
    addiu	$at,$at,-8892
    addu	$gp,$t9,$at
    la	$v0,rrmWindowPrivateIndex
    lw	$s3,16($a0)
    # lw $t9, -29732($gp)
    lw	$at,0($v0)
    lw	$s1,436($s3)
    lw	$t9,0($t9)
    sll	$at,$at,0x2
    addu	$s4,$s4,$at
    lw	$s4,0($s4)
    sll	$t9,$t9,0x2
    addu	$s1,$s1,$t9
    beqz	$s4,.L5ef70980
    lw	$s1,0($s1)
    lhu	$v1,0($s4)
    andi	$v1,$v1,0x1
    beqz	$v1,.L5ef70980
    nop	# was lw $t9, -32228($gp)
    sd	$ra,56($sp)
    bal	incrRRMpriv
    lw	$a0,24($s0)
    lw	$v0,24($s0)
    beqz	$v0,.L5ef7093c
    la	$a0,rrmWindowPrivateIndex
    lw	$a0,0($a0)
    sll	$a0,$a0,0x2
    lw	$a4,132($v0)
.L5ef7091c:
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a3,16($a4)
    addiu	$a3,$a3,1
    sw	$a3,16($a4)
    lw	$v0,24($v0)
    bnezl	$v0,.L5ef7091c
    lw	$a4,132($v0)
.L5ef7093c:
    move	$a2,$zero
    lw	$t9,32($s1)
    move	$a1,$zero
    move	$a0,$s0
    jal	incrRRMpriv
    lbu	$s2,5($s4)
    # lw $t9, -32132($gp)
    bal	FindFreeID
    move	$a0,$s0
    bnezl	$v0,.L5ef70990
    lw	$t9,104($s1)
    beqz	$s2,.L5ef70a50
    nop	# was lw $t9, -32144($gp)
    bal	StealID
    move	$a0,$s0
    b	.L5ef70990
    lw	$t9,104($s1)
.L5ef70980:
    lw	$at,24($s0)
    beqz	$at,.L5ef70a34
    sd	$ra,56($sp)
    lw	$t9,104($s1)
.L5ef70990:
    move	$a0,$s0
    jal	StealID
    sw	$t9,196($s3)
    sd	$v0,40($sp)
    la	$v0,rrmMapWindow
    ld	$ra,56($sp)
    sw	$v0,196($s3)
    beqz	$s2,.L5ef70a14
    ld	$s3,24($sp)
    andi	$v1,$s2,0x2
    beqz	$v1,.L5ef709f0
    ld	$s3,24($sp)
    lw	$a3,4($s1)
    beqz	$a3,.L5ef709e0
    nop	# was lw $t9, -32200($gp)
    bal	FindFreeCID
    move	$a0,$s0
    # lw $t9, -32196($gp)
    bal	rrmValidateCID
    move	$a0,$s0
.L5ef709e0:
    lw	$t9,28($s1)
    jal	rrmValidateCID
    move	$a0,$s0
    ld	$ra,56($sp)
.L5ef709f0:
    andi	$a4,$s2,0x8
    beqz	$a4,.L5ef70a14
    move	$a0,$s0
    lw	$t9,36($s1)
    move	$a1,$s4
    move	$a2,$s1
    jalr	$t9
    ld	$s2,0($sp)
    ld	$ra,56($sp)
.L5ef70a14:
    ld	$v0,40($sp)
    ld	$gp,48($sp)
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef70a34:
    # lw $t9, -32732($gp)
    move	$a0,$s3
    addiu	$t9,$t9,2012
    bal	rrmUnmapWindow
    move	$a1,$s0
    b	.L5ef70990
    lw	$t9,104($s1)
.L5ef70a50:
    # lw $t9, -32136($gp)
    bal	FindBestID
    move	$a0,$s0
    b	.L5ef70990
    lw	$t9,104($s1)
.end rrmMapWindow

.globl rrmUnmapWindow
.ent rrmUnmapWindow
rrmUnmapWindow:
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    sd	$s5,0($sp)
    lw	$s5,132($a0)
    sd	$s2,32($sp)
    sd	$gp,24($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-7912
    addu	$gp,$t9,$v0
    la	$a2,rrmWindowPrivateIndex
    lw	$s2,16($a0)
    la	$a3,rrmScreenPrivateIndex
    lw	$at,0($a2)
    lw	$s0,436($s2)
    lw	$t9,0($a3)
    sll	$at,$at,0x2
    addu	$s5,$s5,$at
    lw	$s5,0($s5)
    sll	$t9,$t9,0x2
    addu	$s0,$s0,$t9
    beqz	$s5,.L5ef7077c
    lw	$s0,0($s0)
    lhu	$v1,0($s5)
    andi	$v1,$v1,0x1
    beqz	$v1,.L5ef7077c
    sd	$ra,40($sp)
    lw	$t9,32($s0)
    move	$a0,$s1
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    lw	$at,0($s0)
    lw	$a1,20($s5)
    la	$a0,rrmWindowPrivateIndex
    bne	$a1,$at,.L5ef70550
    li	$a7,-1
    b	.L5ef7063c
    sw	$a7,20($s5)
.L5ef70550:
    lw	$a4,16($s1)
    lw	$a4,436($a4)
    la	$at,rrmScreenPrivateIndex
    lw	$a3,0($a0)
    lw	$a2,132($s1)
    lw	$at,0($at)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lhu	$v0,0($a2)
    lw	$v1,20($a2)
    lw	$a4,0($a4)
    andi	$v0,$v0,0x8
    sll	$at,$v1,0x3
    addu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    beqz	$v0,.L5ef70638
    addiu	$a4,$a4,152
    lw	$a5,44($a2)
    beqz	$a5,.L5ef707b4
    lw	$a6,48($a2)
    lw	$at,132($a5)
    addu	$at,$at,$a3
    lw	$at,0($at)
    sw	$a6,48($at)
.L5ef705c0:
    lw	$a6,48($a2)
    beqz	$a6,.L5ef707bc
    lw	$a5,44($a2)
    lw	$v0,132($a6)
    addu	$v0,$v0,$a3
    lw	$v0,0($v0)
    sw	$a5,44($v0)
    sw	$zero,48($a2)
.L5ef705e0:
    sw	$zero,44($a2)
    li	$v0,-9
    lw	$v1,20($a4)
    lhu	$a3,16($a4)
    lw	$a5,0($a4)
    addiu	$v1,$v1,-1
    andi	$a3,$a3,0x31
    andi	$a3,$a3,0xffff
    andi	$a1,$a3,0x1
    beqz	$a1,.L5ef70610
    sw	$v1,20($a4)
    ori	$a3,$a3,0x6
.L5ef70610:
    beqz	$a5,.L5ef707c4
    li	$a1,-17
    lw	$a1,4($a4)
    beq	$a1,$a5,.L5ef70628
    ori	$a3,$a3,0x2
    ori	$a3,$a3,0x4
.L5ef70628:
    sh	$a3,16($a4)
    lhu	$at,0($a2)
    and	$at,$at,$v0
    sh	$at,0($a2)
.L5ef70638:
    sw	$a7,20($a2)
.L5ef7063c:
    lw	$a2,4($s0)
    beqzl	$a2,.L5ef70748
    lw	$a2,24($s1)
    lw	$v1,24($s5)
    la	$s5,rrmScreenPrivateIndex
    sltu	$v1,$v1,$a2
    beqz	$v1,.L5ef70744
    lw	$s5,0($s5)
    lw	$a3,0($a0)
    lw	$a7,132($s1)
    lw	$a5,16($s1)
    sll	$a3,$a3,0x2
    addu	$a7,$a7,$a3
    lw	$a7,0($a7)
    sll	$s5,$s5,0x2
    lw	$a5,436($a5)
    move	$a4,$a7
    lhu	$a1,0($a7)
    addu	$a5,$a5,$s5
    lw	$a5,0($a5)
    lw	$at,24($a7)
    andi	$a1,$a1,0x40
    lw	$a5,148($a5)
    sll	$s5,$at,0x3
    subu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    addu	$a5,$a5,$s5
    beqz	$a1,.L5ef70740
    ld	$s5,0($sp)
    lw	$a6,60($a4)
    beqz	$a6,.L5ef707cc
    lw	$a2,64($a4)
    lw	$at,132($a6)
    addu	$at,$at,$a3
    lw	$at,0($at)
    sw	$a2,64($at)
.L5ef706cc:
    lw	$a2,64($a4)
    beqz	$a2,.L5ef707d4
    lw	$a6,60($a4)
    lw	$v0,132($a2)
    addu	$v0,$v0,$a3
    lw	$v0,0($v0)
    sw	$a6,60($v0)
    sw	$zero,64($a4)
.L5ef706ec:
    sw	$zero,60($a4)
    lw	$v1,12($a5)
    lhu	$a2,8($a5)
    addiu	$v1,$v1,-1
    andi	$a2,$a2,0x1
    andi	$a2,$a2,0xffff
    beqz	$a2,.L5ef70710
    sw	$v1,12($a5)
    ori	$a2,$a2,0x4
.L5ef70710:
    lw	$a3,0($a5)
    beqzl	$a3,.L5ef70730
    sh	$a2,8($a5)
    lw	$a1,4($a5)
    beq	$a1,$a3,.L5ef7072c
    ori	$a2,$a2,0x2
    ori	$a2,$a2,0x4
.L5ef7072c:
    sh	$a2,8($a5)
.L5ef70730:
    lhu	$at,0($a4)
    li	$v0,-65
    and	$at,$at,$v0
    sh	$at,0($a4)
.L5ef70740:
    sw	$zero,24($a7)
.L5ef70744:
    lw	$a2,24($s1)
.L5ef70748:
    beqz	$a2,.L5ef7077c
    ld	$s5,0($sp)
    lw	$a3,0($a0)
    sll	$a3,$a3,0x2
    lw	$v0,132($a2)
.L5ef7075c:
    addu	$v0,$v0,$a3
    lw	$v0,0($v0)
    lw	$at,16($v0)
    addiu	$at,$at,-1
    sw	$at,16($v0)
    lw	$a2,24($a2)
    bnezl	$a2,.L5ef7075c
    lw	$v0,132($a2)
.L5ef7077c:
    lw	$t9,108($s0)
    move	$a0,$s1
    ld	$s5,0($sp)
    jalr	$t9
    sw	$t9,200($s2)
    la	$v1,rrmUnmapWindow
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    sw	$v1,200($s2)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef707b4:
    b	.L5ef705c0
    sw	$a6,0($a4)
.L5ef707bc:
    b	.L5ef705e0
    sw	$a5,4($a4)
.L5ef707c4:
    b	.L5ef70628
    and	$a3,$a3,$a1
.L5ef707cc:
    b	.L5ef706cc
    sw	$a2,0($a5)
.L5ef707d4:
    b	.L5ef706ec
    sw	$a6,4($a5)
    li	$a2,1
    addiu	$sp,$sp,-64
    sd	$a1,24($sp)
    li	$a1,18
    # lw $t9, -29496($gp)
    sd	$a0,16($sp)
    la	$a0,local_0x5f0a0000
    sd	$ra,32($sp)
    jal	MakeAtom
    addiu	$a0,$a0,-728
    lui	$a3,0xe000
    beq	$v0,$a3,.L5ef70868
    move	$a0,$v0
    beqz	$v0,.L5ef70868
    sd	$a0,8($sp)
    # lw $t9, -29296($gp)
    ld	$a0,16($sp)
    jal	ddxGetScreenInfo
    lw	$a0,0($a0)
    move	$a7,$zero
    addiu	$a6,$sp,0
    li	$a5,1
    move	$a4,$zero
    li	$a3,32
    ld	$a0,24($sp)
    lw	$t0,68($v0)
    ld	$a1,8($sp)
    # lw $t9, -29416($gp)
    lbu	$t0,12($t0)
    move	$a2,$a1
    jal	ChangeWindowProperty
    sw	$t0,0($sp)
    ld	$ra,32($sp)
.L5ef70860:
    jr	$ra
    addiu	$sp,$sp,64
.L5ef70868:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-704
    b	.L5ef70860
    ld	$ra,32($sp)
.end rrmUnmapWindow

.globl rrmCreateWindow
.ent rrmCreateWindow
rrmCreateWindow:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-9376
    addu	$gp,$t9,$v1
    la	$v0,rrmWindowPrivateIndex
    sd	$s8,8($sp)
    lw	$v0,0($v0)
    lw	$at,132($a0)
    sd	$ra,0($sp)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    sw	$zero,0($at)
    la	$ra,rrmScreenPrivateIndex
    lw	$s8,16($a0)
    lw	$ra,0($ra)
    lw	$t9,436($s8)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    lw	$t9,112($t9)
    jalr	$t9
    sw	$t9,180($s8)
    la	$a0,rrmCreateWindow
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    sw	$a0,180($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end rrmCreateWindow

.globl rrmDestroyWindow
.ent rrmDestroyWindow
rrmDestroyWindow:
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    sd	$ra,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x15
    addiu	$at,$at,-9496
    addu	$gp,$t9,$at
    la	$ra,rrmScreenPrivateIndex
    lw	$s0,16($a0)
    sd	$s8,16($sp)
    lw	$ra,0($ra)
    lw	$s8,436($s0)
    sll	$ra,$ra,0x2
    addu	$s8,$s8,$ra
    lw	$s8,0($s8)
    lw	$t9,100($s8)
    sd	$s7,8($sp)
    jalr	$t9
    move	$s7,$a0
    lw	$t9,116($s8)
    move	$a0,$s7
    jalr	$t9
    sw	$t9,184($s0)
    la	$v1,rrmDestroyWindow
    ld	$gp,24($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    ld	$ra,0($sp)
    sw	$v1,184($s0)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end rrmDestroyWindow

.globl rrmCopyWindow
.ent rrmCopyWindow
rrmCopyWindow:
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    addiu	$ra,$sp,40
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,-9624
    addu	$gp,$t9,$v0
    la	$at,rrmScreenPrivateIndex
    lw	$s8,16($a0)
    dsra32	$v0,$a1,0x0
    lw	$at,0($at)
    lw	$t9,436($s8)
    sw	$v0,40($sp)
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    lw	$a1,0($ra)
    lw	$at,224($s8)
    lw	$t9,120($t9)
    dsll32	$a1,$a1,0x0
    sd	$at,24($sp)
    jalr	$t9
    sw	$t9,224($s8)
    ld	$v1,24($sp)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    sw	$v1,224($s8)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end rrmCopyWindow

.globl rrmCreateDefColormap
.ent rrmCreateDefColormap
rrmCreateDefColormap:
    addiu	$sp,$sp,-144
    li	$v1,0xffff
    sh	$v1,2($sp)
    sh	$zero,0($sp)
    lw	$a6,124($a0)
    move	$v0,$a1
    lw	$a5,24($a0)
    lw	$at,0($a6)
    sd	$s1,40($sp)
    move	$s1,$a0
    beq	$at,$a5,.L5ef73424
    move	$a2,$a6
    move	$a2,$a6
    lw	$a3,36($a2)
.L5ef732b0:
    addiu	$a2,$a2,36
    beql	$a3,$a5,.L5ef732d0
    sd	$ra,48($sp)
    lw	$a4,36($a2)
    addiu	$a2,$a2,36
    bnel	$a4,$a5,.L5ef732b0
    lw	$a3,36($a2)
    sd	$ra,48($sp)
.L5ef732d0:
    sd	$v0,32($sp)
.L5ef732d4:
    move	$a5,$zero
    addiu	$a3,$sp,4
    move	$a1,$s1
    lh	$a4,4($a2)
    # lw $t9, -29292($gp)
    lw	$a0,28($s1)
    andi	$a4,$a4,0x1
    jal	CreateColormap
    sltiu	$a4,$a4,1
    beqz	$v0,.L5ef73310
    ld	$ra,48($sp)
    move	$v0,$zero
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L5ef73310:
    lw	$a0,4($sp)
    lw	$v0,0($a0)
    lw	$a2,116($s1)
    lh	$at,4($v0)
    sd	$s0,24($sp)
    li	$a5,3
    bne	$at,$a5,.L5ef73430
    li	$s0,1
    lh	$v1,10($v0)
    slti	$v1,$v1,5
    bnez	$v1,.L5ef73430
    li	$v0,1
    lw	$a4,80($a2)
    lw	$a3,24($s1)
    lw	$at,88($a2)
    subu	$a3,$a3,$a4
    sll	$v1,$a3,0x2
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    lw	$a4,48($a2)
    lw	$a3,76($a2)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    lw	$a4,0($a4)
    ld	$v1,32($sp)
    bne	$a3,$a4,.L5ef73430
    ld	$at,32($sp)
    ld	$a4,32($sp)
    beqz	$at,.L5ef733d4
    ld	$a3,32($sp)
    beq	$v1,$v0,.L5ef733d4
    li	$at,2
    beq	$a3,$a5,.L5ef735c8
    ld	$v1,32($sp)
    beq	$a4,$at,.L5ef735d0
    li	$a3,4
    beq	$v1,$a3,.L5ef735c0
    nop	# was lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    ld	$a1,32($sp)
    jal	ErrorF
    addiu	$a0,$a0,-656
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-616
    li	$v0,1
.L5ef733d4:
    lw	$a0,4($sp)
    addiu	$a1,$gp,-20908
.L5ef733dc:
    lw	$a2,0($a1)
    bltz	$a2,.L5ef73560
    move	$a5,$v0
    la	$a3,sgiOverrideColorCompare
    sd	$s2,88($sp)
    sd	$s6,80($sp)
    sd	$s4,64($sp)
    sd	$s7,56($sp)
    sd	$s3,72($sp)
    la	$s3,AllocColor
    move	$v0,$a2
    sd	$s5,104($sp)
    move	$s5,$a1
    sd	$s8,96($sp)
    la	$s8,local_0x5f0b0000
    sw	$a5,0($a3)
    b	.L5ef73484
    addiu	$s8,$s8,20656
.L5ef73424:
    sd	$ra,48($sp)
    b	.L5ef732d4
    sd	$v0,32($sp)
.L5ef73430:
    addiu	$a4,$s1,40
    addiu	$a3,$sp,2
    addiu	$a2,$sp,2
    sd	$s3,72($sp)
    la	$s3,AllocColor
    addiu	$a1,$sp,2
    move	$a5,$zero
    jalr	$s3
    move	$t9,$s3
    beqz	$v0,.L5ef7358c
    ld	$ra,48($sp)
.L5ef7345c:
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L5ef73474:
    lw	$a0,4($sp)
.L5ef73478:
    lw	$v0,8($s5)
    bltz	$v0,.L5ef73544
    addiu	$s5,$s5,8
.L5ef73484:
    lw	$at,4($s5)
    slt	$at,$v0,$at
    beqz	$at,.L5ef73478
    move	$a1,$v0
    li	$s7,7
    move	$s4,$a1
    addu	$s2,$a1,$s8
    negu	$s6,$a1
    subu	$s7,$s7,$a1
    addu	$s7,$s7,$a1
    addu	$s6,$s6,$a1
    addu	$s6,$s6,$s8
    b	.L5ef734e4
    addu	$s7,$s7,$s8
.L5ef734bc:
    bnel	$s2,$s7,.L5ef734d0
    addiu	$s4,$s4,1
    lw	$at,8($sp)
    sw	$at,40($s1)
.L5ef734cc:
    addiu	$s4,$s4,1
.L5ef734d0:
    lw	$v1,4($s5)
    lw	$a0,4($sp)
    slt	$v1,$s4,$v1
    beqz	$v1,.L5ef73474
    addiu	$s2,$s2,1
.L5ef734e4:
    addiu	$a4,$sp,8
    addiu	$a3,$sp,16
    addiu	$a2,$sp,14
    addiu	$a1,$sp,12
    sw	$s4,8($sp)
    move	$t9,$s3
    lbu	$a5,0($s2)
    lbu	$a6,256($s2)
    lbu	$a7,512($s2)
    sll	$a5,$a5,0x8
    sll	$a6,$a6,0x8
    sll	$a7,$a7,0x8
    sh	$a7,16($sp)
    sh	$a6,14($sp)
    sh	$a5,12($sp)
    jalr	$s3
    move	$a5,$zero
    beqz	$v0,.L5ef73534
    nop
    move	$s0,$zero
.L5ef73534:
    bne	$s2,$s6,.L5ef734bc
    lw	$at,8($sp)
    b	.L5ef734cc
    sw	$at,44($s1)
.L5ef73544:
    ld	$s7,56($sp)
    ld	$s5,104($sp)
    ld	$s4,64($sp)
    ld	$s8,96($sp)
    ld	$s3,72($sp)
    ld	$s6,80($sp)
    ld	$s2,88($sp)
.L5ef73560:
    la	$v1,sgiOverrideColorCompare
    sw	$zero,0($v1)
.L5ef73568:
    lw	$t9,316($s1)
    jalr	$t9
    nop
    move	$v0,$s0
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L5ef7358c:
    addiu	$a4,$s1,44
    addiu	$a3,$sp,0
    addiu	$a2,$sp,0
    addiu	$a1,$sp,0
    lw	$a0,4($sp)
    move	$a5,$zero
    jalr	$s3
    move	$t9,$s3
    ld	$ra,48($sp)
    bnez	$v0,.L5ef7345c
    ld	$s3,72($sp)
    b	.L5ef73568
    lw	$a0,4($sp)
.L5ef735c0:
    b	.L5ef733dc
    addiu	$a1,$gp,-20844
.L5ef735c8:
    b	.L5ef733dc
    addiu	$a1,$gp,-20868
.L5ef735d0:
    b	.L5ef733dc
    addiu	$a1,$gp,-20892
.end rrmCreateDefColormap

.globl rrmDestroyDrawable
.ent rrmDestroyDrawable
rrmDestroyDrawable:
    addiu	$sp,$sp,-96
    sd	$s2,16($sp)
    lw	$a1,132($a0)
    lw	$at,16($a0)
    sd	$gp,56($sp)
    sd	$s0,0($sp)
    lui	$s0,0x15
    addiu	$s0,$s0,3192
    addu	$gp,$t9,$s0
    la	$v0,rrmScreenPrivateIndex
    la	$a3,rrmWindowPrivateIndex
    sd	$at,8($sp)
    lw	$v0,0($v0)
    lw	$a3,0($a3)
    lw	$at,436($at)
    sll	$v0,$v0,0x2
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    addu	$at,$at,$v0
    lw	$at,0($at)
    lw	$a1,0($a1)
    move	$s0,$a0
    sd	$at,24($sp)
    beqz	$a1,.L5ef6da2c
    move	$s2,$a1
    move	$a0,$a1
    beqzl	$a1,.L5ef6d9cc
    lhu	$v0,0($s2)
    lw	$at,68($a0)
    bnez	$at,.L5ef6da40
    sd	$a0,48($sp)
.L5ef6d9c8:
    lhu	$v0,0($s2)
.L5ef6d9cc:
    andi	$v0,$v0,0x1
    beqz	$v0,.L5ef6da94
    nop	# was lw $t9, -29644($gp)
    sd	$ra,64($sp)
    lw	$at,4($s0)
    lw	$a1,12($s2)
    lhu	$v1,8($s2)
    sd	$at,32($sp)
    move	$a3,$a1
    beqz	$v1,.L5ef6da78
    sd	$a1,40($sp)
    ld	$t9,24($sp)
    lw	$t9,60($t9)
    move	$a0,$s0
    jal	Xfree
    ld	$s2,16($sp)
    ld	$s0,0($sp)
.L5ef6da10:
    ld	$t9,24($sp)
    lw	$t9,96($t9)
    ld	$a0,8($sp)
    ld	$a1,32($sp)
    jalr	$t9
    ld	$a2,40($sp)
    ld	$ra,64($sp)
.L5ef6da2c:
    ld	$gp,56($sp)
    ld	$s0,0($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef6da40:
    # lw $t9, -29644($gp)
    ld	$a0,48($sp)
    sd	$ra,64($sp)
    jal	Xfree
    lw	$a0,72($a0)
    # lw $t9, -29328($gp)
    ld	$a0,48($sp)
    jal	TimerFree
    lw	$a0,68($a0)
    ld	$a3,48($sp)
    ld	$ra,64($sp)
    sw	$zero,72($a3)
    b	.L5ef6d9c8
    sw	$zero,68($a3)
.L5ef6da78:
    ld	$t9,24($sp)
    lw	$t9,68($t9)
    move	$a0,$s0
    jalr	$t9
    ld	$s2,16($sp)
    b	.L5ef6da10
    ld	$s0,0($sp)
.L5ef6da94:
    move	$a0,$s2
    sd	$ra,64($sp)
    jalr	$t9
    ld	$s0,0($sp)
    b	.L5ef6da2c
    ld	$ra,64($sp)
    nop
.end rrmDestroyDrawable

.globl rrmDisposeClip
.ent rrmDisposeClip
rrmDisposeClip:
    addiu	$sp,$sp,-64
    sw	$a2,0($sp)
    addiu	$a2,$sp,0
    sd	$ra,8($sp)
    sd	$gp,16($sp)
    sw	$a1,4($sp)
    lui	$a1,0x15
    addiu	$a1,$a1,3308
    addu	$gp,$t9,$a1
    # lw $t9, -29704($gp)
    lw	$a0,116($a0)
    li	$a1,1004
    jal	ioctl
    lw	$a0,100($a0)
    li	$at,-1
    beq	$v0,$at,.L5ef6d928
    ld	$ra,8($sp)
.L5ef6d91c:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6d928:
    lw	$a1,0($sp)
    la	$a2,errno
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$a2,0($a2)
    jal	ErrorF
    addiu	$a0,$a0,-1416
    b	.L5ef6d91c
    ld	$ra,8($sp)
.end rrmDisposeClip

.globl rrmInvalidate
.ent rrmInvalidate
rrmInvalidate:
    addiu	$sp,$sp,-128
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s4,72($sp)
    lw	$s4,16($a0)
    sd	$gp,64($sp)
    lui	$a5,0x15
    addiu	$a5,$a5,9136
    addu	$gp,$t9,$a5
    la	$a4,dbcWindowPrivateIndex
    la	$a5,rrmWindowPrivateIndex
    sd	$s2,48($sp)
    lw	$a4,0($a4)
    lw	$s2,0($a5)
    lw	$a6,132($a0)
    sll	$a4,$a4,0x2
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$a6
    lw	$s2,0($s2)
    addu	$a4,$a4,$a6
    beqz	$a1,.L5ef6c4bc
    lbu	$a6,4($s2)
    and	$s0,$a6,$s0
.L5ef6c278:
    sd	$a2,24($sp)
    beqz	$s0,.L5ef6c4a0
    sd	$a4,32($sp)
    lw	$a5,12($s2)
    sw	$a5,0($sp)
    lw	$a4,4($s1)
    sw	$zero,12($sp)
    sw	$zero,16($sp)
    sw	$s0,8($sp)
    sw	$a4,4($sp)
    addiu	$a2,$sp,0
    lbu	$a1,4($s2)
    sd	$ra,88($sp)
    nor	$a3,$s0,$zero
    and	$a1,$a1,$a3
    sb	$a1,4($s2)
    # lw $t9, -29704($gp)
    lw	$a0,116($s4)
    li	$a1,1010
    jal	ioctl
    lw	$a0,100($a0)
    li	$at,-1
    beq	$v0,$at,.L5ef6c4c4
    ld	$ra,88($sp)
    andi	$v0,$s0,0x8
    beqz	$v0,.L5ef6c4cc
    la	$at,rrmWindowPrivateIndex
    lw	$a0,32($s2)
    lw	$a1,12($sp)
    li	$a3,-5
    and	$a3,$a0,$a3
    andi	$a1,$a1,0x4
    or	$a1,$a1,$a3
    sw	$a1,32($s2)
    lw	$at,0($at)
    lw	$a4,132($s1)
    lw	$v1,16($sp)
    sll	$at,$at,0x2
    addu	$a4,$a4,$at
    andi	$v1,$v1,0x1
    beqz	$v1,.L5ef6c4fc
    lw	$a4,0($a4)
    ld	$a3,24($sp)
    beqz	$a3,.L5ef6c54c
    move	$a5,$a4
    lw	$a2,20($a4)
    bltz	$a2,.L5ef6c5a0
    sll	$a3,$a2,0x3
    la	$at,rrmScreenPrivateIndex
    lw	$v0,16($s1)
    addu	$a3,$a3,$a2
    lw	$at,0($at)
    lw	$v0,436($v0)
    lw	$v1,32($a5)
    sll	$at,$at,0x2
    addu	$v0,$v0,$at
    lw	$v0,0($v0)
    sll	$a3,$a3,0x2
    xori	$v1,$v1,0x4
    addu	$v0,$v0,$a3
    sw	$v1,160($v0)
    lw	$at,36($a5)
    sd	$a0,80($sp)
    sw	$at,164($v0)
.L5ef6c378:
    # lw $t9, -32156($gp)
    bal	SetDIDMode
    move	$a0,$s1
    lw	$a1,32($s2)
    ld	$a0,80($sp)
    ld	$ra,88($sp)
.L5ef6c390:
    ld	$v1,32($sp)
.L5ef6c394:
    andi	$a2,$a1,0x4
    andi	$a3,$a0,0x4
    beq	$a3,$a2,.L5ef6c3e4
    lui	$at,0x1000
    la	$a0,globalSerialNumber
    lw	$a1,0($a0)
    sltu	$v0,$zero,$a2
    addiu	$a1,$a1,1
    sltu	$at,$at,$a1
    beqz	$at,.L5ef6c3cc
    sb	$v0,2($v1)
    li	$a1,1
    b	.L5ef6c3d0
    sw	$a1,0($a0)
.L5ef6c3cc:
    sw	$a1,0($a0)
.L5ef6c3d0:
    # lw $t9, -29408($gp)
    lw	$a0,4($s1)
    jal	FlushClientCaches
    sw	$a1,20($s1)
    ld	$ra,88($sp)
.L5ef6c3e4:
    andi	$a3,$s0,0x2
.L5ef6c3e8:
    beqz	$a3,.L5ef6c4a0
    ld	$s2,48($sp)
    la	$a0,rrmScreenPrivateIndex
    lw	$a0,0($a0)
    lw	$at,436($s4)
    sll	$a0,$a0,0x2
    addu	$at,$at,$a0
    lw	$at,0($at)
    la	$a1,glxWindowPrivateIndex
    lw	$at,4($at)
    lw	$a1,0($a1)
    la	$a5,rrmWindowPrivateIndex
    beqz	$at,.L5ef6c4a0
    sll	$a1,$a1,0x2
    lw	$a2,132($s1)
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    beqzl	$a1,.L5ef6c458
    lw	$s0,16($s1)
    lw	$a3,4($a1)
    beqz	$a3,.L5ef6c454
    ld	$s4,72($sp)
    ld	$s0,56($sp)
    ld	$gp,64($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6c454:
    lw	$s0,16($s1)
.L5ef6c458:
    lw	$a5,0($a5)
    lw	$a4,436($s0)
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a2
    lw	$a5,0($a5)
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    lw	$a1,24($a5)
    lw	$a6,148($a4)
    sll	$at,$a1,0x3
    subu	$at,$at,$a1
    sll	$at,$at,0x2
    beqz	$a1,.L5ef6c49c
    addu	$a6,$a6,$at
    lw	$at,4($a4)
    bne	$at,$a1,.L5ef6c4d4
    move	$a2,$zero
.L5ef6c49c:
    sw	$zero,24($a5)
.L5ef6c4a0:
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef6c4bc:
    b	.L5ef6c278
    move	$s0,$a6
.L5ef6c4c4:
    b	.L5ef6c3e8
    andi	$a3,$s0,0x2
.L5ef6c4cc:
    b	.L5ef6c3e8
    andi	$a3,$s0,0x2
.L5ef6c4d4:
    lw	$t9,76($a4)
    move	$a0,$s1
    addiu	$s2,$a6,16
    jalr	$t9
    move	$a1,$s2
    lw	$t9,392($s0)
    jalr	$t9
    move	$a0,$s2
    b	.L5ef6c4a0
    ld	$ra,88($sp)
.L5ef6c4fc:
    lw	$a2,20($a4)
    bltz	$a2,.L5ef6c5a8
    move	$a5,$a4
    la	$a1,rrmScreenPrivateIndex
    lw	$v1,16($s1)
    sll	$a3,$a2,0x3
    lw	$a1,0($a1)
    lw	$v1,436($v1)
    addu	$a3,$a3,$a2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    lw	$a1,32($a5)
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a3
    sw	$a1,160($v1)
    lw	$v0,36($a5)
    sw	$v0,164($v1)
    b	.L5ef6c390
    lw	$a1,32($s2)
.L5ef6c54c:
    lw	$a2,20($a4)
    bltz	$a2,.L5ef6c5b0
    move	$a5,$a4
    lw	$v0,32($a5)
    la	$a1,rrmScreenPrivateIndex
    lw	$at,16($s1)
    sll	$v1,$a2,0x3
    lw	$a1,0($a1)
    lw	$at,436($at)
    addu	$v1,$v1,$a2
    sll	$a1,$a1,0x2
    addu	$at,$at,$a1
    lw	$at,0($at)
    sll	$v1,$v1,0x2
    xori	$v0,$v0,0x4
    addu	$at,$at,$v1
    sw	$v0,160($at)
    lw	$a3,36($a5)
    sw	$a3,164($at)
    b	.L5ef6c390
    lw	$a1,32($s2)
.L5ef6c5a0:
    b	.L5ef6c378
    sd	$a0,80($sp)
.L5ef6c5a8:
    b	.L5ef6c394
    ld	$v1,32($sp)
.L5ef6c5b0:
    b	.L5ef6c394
    ld	$v1,32($sp)
.end rrmInvalidate

.globl incrRRMpriv
.ent incrRRMpriv
incrRRMpriv:
    addiu	$sp,$sp,-64
    sd	$s2,24($sp)
    sd	$ra,16($sp)
    sd	$s1,32($sp)
    sd	$s0,8($sp)
    beqz	$a0,.L5ef6c698
    move	$s0,$a0
    la	$s1,rrmWindowPrivateIndex
    sd	$ra,16($sp)
    sd	$s2,24($sp)
    lw	$v1,0($s1)
.L5ef6c5e4:
    lw	$at,132($s0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    lw	$at,0($at)
    beqz	$at,.L5ef6c610
    nop	# was lw $t9, -29492($gp)
    lw	$s0,24($s0)
.L5ef6c600:
    bnez	$s0,.L5ef6c5e4
    lw	$v1,0($s1)
    b	.L5ef6c69c
    move	$v0,$zero
.L5ef6c610:
    jal	Xalloc
    li	$a0,76
    la	$a2,rrmScreenPrivateIndex
    lw	$a1,16($s0)
    lw	$a2,0($a2)
    lw	$a1,436($a1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    move	$s2,$v0
    beqz	$v0,.L5ef6c68c
    sd	$a1,0($sp)
    # lw $t9, -29488($gp)
    move	$a0,$s2
    move	$a1,$zero
    jal	memset
    li	$a2,76
    lw	$v1,0($s1)
    lw	$at,132($s0)
    ld	$t9,0($sp)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sw	$s2,0($at)
    lw	$t9,80($t9)
    beqzl	$t9,.L5ef6c684
    sh	$zero,2($s2)
    jalr	$t9
    move	$a0,$s0
    nop
.L5ef6c684:
    bnezl	$s2,.L5ef6c600
    lw	$s0,24($s0)
.L5ef6c68c:
    ld	$s1,32($sp)
    bnez	$s0,.L5ef6c6b4
    ld	$ra,16($sp)
.L5ef6c698:
    move	$v0,$zero
.L5ef6c69c:
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L5ef6c6b4:
    ld	$s2,24($sp)
    li	$v0,1
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end incrRRMpriv

.globl nfbSetDidFlags
.ent nfbSetDidFlags
nfbSetDidFlags:
    addiu	$sp,$sp,-96
    sd	$s7,24($sp)
    lw	$a1,nfbWindowPrivateIndex
    sd	$s3,16($sp)
    lw	$s3,132($a0)
    move	$s7,$a0
    sll	$a1,$a1,0x2
    addu	$s3,$s3,$a1
    lw	$s3,0($s3)
    sd	$s2,8($sp)
    lw	$a4,24($a0)
    lw	$a5,32($s3)
    move	$s2,$zero
    beqz	$a4,.L5ef73d58
    andi	$a5,$a5,0xc
    lw	$a3,132($a4)
    sd	$ra,32($sp)
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
.L5ef73b5c:
    sd	$a5,0($sp)
    sd	$s0,40($sp)
    move	$a0,$s7
    # lw $t9, -32732($gp)
    move	$a1,$s3
    lw	$a2,16($s7)
    addiu	$t9,$t9,14656
    bal	rrmUndoubleBufferWindow
    lw	$a2,116($a2)
    lw	$s0,36($s7)
    sd	$s4,64($sp)
    sd	$s5,48($sp)
    beqz	$s0,.L5ef73ca4
    ld	$ra,32($sp)
    sd	$s6,72($sp)
    sd	$s1,56($sp)
    li	$s4,-5
    b	.L5ef73bd8
    li	$s5,2
.L5ef73ba8:
    bnez	$s6,.L5ef73c74
    move	$a0,$zero
    move	$a0,$zero
.L5ef73bb4:
    lw	$a1,32($s1)
.L5ef73bb8:
    and	$at,$s4,$a1
    or	$at,$at,$a0
    sw	$at,32($s1)
    lw	$s0,28($s0)
    or	$s2,$s2,$a0
    andi	$at,$at,0x8
    beqz	$s0,.L5ef73c90
    or	$s2,$at,$s2
.L5ef73bd8:
    lw	$at,124($s0)
    lw	$v0,nfbWindowPrivateIndex
    lw	$s1,132($s0)
    andi	$at,$at,0x7ff
    sll	$v0,$v0,0x2
    addu	$s1,$s1,$v0
    srl	$at,$at,0xa
    beqz	$at,.L5ef73c7c
    lw	$s1,0($s1)
    lw	$a0,24($s0)
    beqzl	$a0,.L5ef73c80
    move	$a0,$zero
    lw	$a1,32($s1)
    andi	$v0,$a1,0x1
    beqz	$v0,.L5ef73c88
    nop
    lw	$v1,32($s3)
    andi	$v1,$v1,0x1
    beqz	$v1,.L5ef73c88
    andi	$a2,$a1,0x2
    beqzl	$a2,.L5ef73d0c
    lw	$a1,120($s0)
    lbu	$at,1($s0)
    beq	$at,$s5,.L5ef73c50
    move	$s6,$zero
    lw	$a1,120($s0)
    beqz	$a1,.L5ef73e14
    nop	# was lw $t9, -29692($gp)
    lw	$a3,8($a1)
.L5ef73c4c:
    move	$s6,$a3
.L5ef73c50:
    lbu	$v0,1($a0)
    beq	$v0,$s5,.L5ef73ba8
    nop
    lw	$a1,120($a0)
    beqz	$a1,.L5ef73e2c
    nop	# was lw $t9, -29692($gp)
    lw	$a0,8($a1)
.L5ef73c6c:
    beq	$s6,$a0,.L5ef73bb4
    move	$a0,$zero
.L5ef73c74:
    b	.L5ef73bb4
    li	$a0,4
.L5ef73c7c:
    move	$a0,$zero
.L5ef73c80:
    b	.L5ef73bb8
    lw	$a1,32($s1)
.L5ef73c88:
    b	.L5ef73bb8
    li	$a0,4
.L5ef73c90:
    ld	$s5,48($sp)
    ld	$s1,56($sp)
    ld	$ra,32($sp)
    ld	$s4,64($sp)
    ld	$s6,72($sp)
.L5ef73ca4:
    lw	$a0,32($s3)
    beqz	$s2,.L5ef73d64
    ld	$s0,40($sp)
    ld	$s2,8($sp)
    ori	$a0,$a0,0x8
    sw	$a0,32($s3)
.L5ef73cbc:
    andi	$v1,$a0,0xc
    beqz	$v1,.L5ef73d78
    ld	$s3,16($sp)
    lw	$a0,24($s7)
    beqz	$a0,.L5ef73d00
    ld	$s7,24($sp)
    lw	$v0,nfbWindowPrivateIndex
.L5ef73cd8:
    lw	$at,132($a0)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    lw	$a2,32($at)
    ori	$a2,$a2,0x8
    sw	$a2,32($at)
    lw	$a0,24($a0)
    bnez	$a0,.L5ef73cd8
    lw	$v0,nfbWindowPrivateIndex
.L5ef73d00:
    ld	$s7,24($sp)
.L5ef73d04:
    jr	$ra
    addiu	$sp,$sp,96
.L5ef73d0c:
    beqz	$a1,.L5ef73e40
    nop	# was lw $t9, -29692($gp)
    lw	$s6,0($a1)
.L5ef73d18:
    lw	$a1,120($a0)
    beqz	$a1,.L5ef73d38
    nop	# was lw $t9, -29692($gp)
    lw	$a0,0($a1)
    beq	$s6,$a0,.L5ef73d50
    nop
.L5ef73d30:
    b	.L5ef73bb4
    li	$a0,4
.L5ef73d38:
    jal	FindWindowWithOptional
    nop
    lw	$v1,120($v0)
    lw	$v1,0($v1)
    bne	$s6,$v1,.L5ef73d30
    nop
.L5ef73d50:
    b	.L5ef73bb4
    move	$a0,$zero
.L5ef73d58:
    move	$a3,$zero
    b	.L5ef73b5c
    sd	$ra,32($sp)
.L5ef73d64:
    li	$a2,-9
    ld	$s2,8($sp)
    and	$a0,$a0,$a2
    b	.L5ef73cbc
    sw	$a0,32($s3)
.L5ef73d78:
    ld	$at,0($sp)
    beqzl	$at,.L5ef73d04
    ld	$s7,24($sp)
    lw	$a0,24($s7)
    beqz	$a0,.L5ef73d00
    ld	$s7,24($sp)
    li	$a7,-9
    lw	$a1,nfbWindowPrivateIndex
.L5ef73d98:
    lw	$a3,132($a0)
    sll	$a1,$a1,0x2
    addu	$a3,$a3,$a1
    lw	$a3,0($a3)
    lw	$a6,32($a3)
    andi	$v0,$a6,0x8
    beqz	$v0,.L5ef73e58
    move	$a5,$zero
    lw	$a4,36($a0)
    beqz	$a4,.L5ef73de4
    nop
    lw	$a2,132($a4)
.L5ef73dc8:
    addu	$a2,$a2,$a1
    lw	$a2,0($a2)
    lw	$a2,32($a2)
    andi	$a2,$a2,0xc
    beqzl	$a2,.L5ef73e04
    lw	$a4,28($a4)
    li	$a5,1
.L5ef73de4:
    bnez	$a5,.L5ef73d00
    and	$at,$a7,$a6
    sw	$at,32($a3)
    lw	$a0,24($a0)
    bnez	$a0,.L5ef73d98
    lw	$a1,nfbWindowPrivateIndex
    b	.L5ef73d04
    ld	$s7,24($sp)
.L5ef73e04:
    bnezl	$a4,.L5ef73dc8
    lw	$a2,132($a4)
    b	.L5ef73de4
    nop
.L5ef73e14:
    jalr	$t9
    move	$a0,$s0
    lw	$a3,120($v0)
    lw	$a0,24($s0)
    b	.L5ef73c4c
    lw	$a3,8($a3)
.L5ef73e2c:
    jalr	$t9
    nop
    lw	$a0,120($v0)
    b	.L5ef73c6c
    lw	$a0,8($a0)
.L5ef73e40:
    jalr	$t9
    move	$a0,$s0
    lw	$s6,120($v0)
    lw	$a0,24($s0)
    b	.L5ef73d18
    lw	$s6,0($s6)
.L5ef73e58:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-520
    b	.L5ef73d00
    ld	$ra,32($sp)
.end nfbSetDidFlags

