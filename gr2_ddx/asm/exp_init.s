#
# gr2_ddx: exp_init.s
# Extracted from root/usr/lib/X11/dyDDX/gr2.so
#

.text
.set noreorder

.globl expInitHW
.ent expInitHW
expInitHW:
    lw	$t8,expScreenPrivateIndex
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    lw	$s3,436($a0)
    li	$a6,1
    sll	$t8,$t8,0x2
    addu	$s3,$s3,$t8
    lw	$s3,0($s3)
    li	$a3,3
    li	$a7,15
    lw	$s3,0($s3)
    li	$t0,8
    lui	$t8,0x4
    addu	$s3,$s3,$t8
    sw	$zero,1200($s3)
    sw	$t0,1324($s3)
    sw	$a7,1236($s3)
    sw	$zero,1328($s3)
    sw	$zero,1916($s3)
    sw	$a3,1916($s3)
    sw	$a6,1916($s3)
    sw	$zero,1216($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    lh	$a5,8($a0)
    sw	$a5,1916($s3)
    lui	$a4,0xff
    lh	$a6,10($a0)
    ori	$a4,$a4,0xffff
    li	$a5,4
    sw	$a6,1916($s3)
    sw	$zero,1960($s3)
    sw	$a5,1324($s3)
    sw	$zero,1236($s3)
    sw	$zero,1328($s3)
    sw	$a4,1916($s3)
    sw	$a3,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1216($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    lh	$a2,8($a0)
    sw	$a2,1916($s3)
    lh	$a1,10($a0)
    li	$v1,0xf000
    sw	$a1,1916($s3)
    sw	$zero,1960($s3)
    sw	$v1,1344($s3)
    sw	$zero,1216($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    lh	$v0,8($a0)
    sw	$v0,1916($s3)
    sd	$a0,16($sp)
    lh	$at,10($a0)
    sd	$ra,0($sp)
    # lw $t9, -32352($gp)
    sw	$at,1916($s3)
    sw	$zero,1960($s3)
    bal	expvc1Init
    sw	$zero,1344($s3)
    # lw $t9, -32264($gp)
    jal	expCursorInit
    ld	$a0,16($sp)
    li	$ra,0xffff
    li	$at,3
    lui	$v0,0xff
    ori	$v0,$v0,0xffff
    li	$v1,4100
    sw	$v1,1324($s3)
    sw	$zero,1236($s3)
    sw	$zero,1328($s3)
    sw	$v0,1916($s3)
    sw	$at,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1416($s3)
    sw	$ra,1916($s3)
    ld	$ra,0($sp)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1916($s3)
    sw	$zero,1960($s3)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end expInitHW

.globl expInit
.ent expInit
expInit:
    addiu	$sp,$sp,-432
    sd	$s0,376($sp)
    sd	$s5,368($sp)
    sd	$zero,304($sp)
    sd	$zero,312($sp)
    sd	$ra,344($sp)
    sd	$s3,352($sp)
    sd	$gp,336($sp)
    lui	$t8,0x16
    addiu	$t8,$t8,31932
    addu	$gp,$t9,$t8
    la	$s3,ddxActiveScreens
    sd	$s2,360($sp)
    sll	$s2,$a0,0x2
    addu	$s2,$s2,$s3
    lw	$s2,0($s2)
    sd	$a0,320($sp)
    # lw $t9, -29396($gp)
    lw	$a0,68($s2)
    move	$s3,$a1
    jal	ddxGetBoardInfo
    lbu	$a0,12($a0)
    lw	$s0,28($s2)
    sd	$s4,384($sp)
    # lw $t9, -29492($gp)
    lh	$a0,16($s0)
    move	$s5,$v0
    jal	Xalloc
    sll	$a0,$a0,0x3
    beqz	$v0,.L5ef569ac
    move	$s4,$v0
    addiu	$a1,$gp,-22148
    move	$a0,$v0
    # lw $t9, -29756($gp)
    lh	$a2,16($s0)
    sw	$v0,20($s0)
    jal	memmove
    sll	$a2,$a2,0x3
    sd	$s1,392($sp)
    b	.L5ef569d8
    la	$s0,ErrorF
.L5ef569ac:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    lw	$s4,20($s0)
    jal	ErrorF
    addiu	$a0,$a0,-2888
    la	$a0,local_0x5f0a0000
    la	$s0,ErrorF
    addiu	$a0,$a0,-2840
    jalr	$s0
    move	$t9,$s0
    sd	$s1,392($sp)
.L5ef569d8:
    lbu	$v0,41($s5)
    li	$a4,24
    li	$a1,8
    beq	$a1,$v0,.L5ef56f54
    lw	$s1,32($s2)
    beq	$v0,$a4,.L5ef56f40
    li	$a6,1
    ld	$s4,384($sp)
.L5ef569f8:
    lw	$a5,68($s2)
    lbu	$at,14($a5)
    sw	$at,44($s2)
    lbu	$v0,15($a5)
    sw	$v0,48($s2)
    lh	$a1,8($a5)
    sw	$a1,52($s2)
    lbu	$a5,10($a5)
    li	$v1,255
    beq	$at,$v1,.L5ef56f6c
    sw	$a5,56($s2)
    beqz	$v0,.L5ef56f80
    la	$at,ddxDfltDepth
.L5ef56a2c:
    beqz	$a1,.L5ef56f8c
.L5ef56a30:
    la	$at,ddxOverlayFlag
    lw	$at,0($at)
    beqz	$at,.L5ef56a48
    addiu	$a3,$sp,0
    sw	$a6,56($s2)
    addiu	$a3,$sp,0
.L5ef56a48:
    lhu	$v1,32($s5)
    move	$a2,$s5
    move	$a1,$zero
    sh	$v1,24($s2)
    # lw $t9, -32340($gp)
    lhu	$v0,34($s5)
    move	$a0,$s3
    bal	expCheckTimingTable
    sh	$v0,26($s2)
    la	$a1,serverGeneration
    lw	$at,var_5f0b922c
    beqz	$v0,.L5ef56a94
    move	$s0,$v0
    lw	$a4,260($sp)
    lw	$a5,256($sp)
    sh	$a5,32($s5)
    sh	$a5,24($s2)
    sh	$a4,34($s5)
    sh	$a4,26($s2)
.L5ef56a94:
    lw	$v0,0($a1)
    beq	$at,$v0,.L5ef56aac
    lw	$a3,var_5f0b9230
    sw	$v0,var_5f0b922c
    li	$a3,1
    sw	$a3,var_5f0b9230
.L5ef56aac:
    move	$a0,$s3
    # lw $t9, -32004($gp)
    move	$a1,$s2
    move	$a2,$s1
    jal	nfbGenericScreenInit
    addiu	$a4,$gp,-21452
    li	$v1,1
    beq	$v0,$v1,.L5ef56af4
    ld	$s1,392($sp)
    ld	$ra,344($sp)
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$s0,376($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    ld	$s5,368($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef56af4:
    la	$a4,serverGeneration
    lw	$a5,miZeroLineGeneration
    lw	$a4,0($a4)
    bne	$a4,$a5,.L5ef56fd8
    lw	$v0,miZeroLineScreenIndex
.L5ef56b08:
    bltz	$v0,.L5ef56b24
    addiu	$a2,$gp,-22828
    lw	$a5,436($s3)
    sll	$at,$v0,0x2
    addu	$a5,$a5,$at
    sw	$zero,0($a5)
    addiu	$a2,$gp,-22828
.L5ef56b24:
    addiu	$a1,$gp,-22540
    move	$a0,$s3
    # lw $t9, -32024($gp)
    lw	$v0,116($s3)
    sw	$zero,var_5f0b9230
    jal	nfbHWColormapScreenInit
    sd	$v0,328($sp)
    beqz	$v0,.L5ef570e4
    move	$a0,$s3
    addiu	$a3,$sp,276
    # lw $t9, -32316($gp)
    lw	$a1,68($s2)
    addiu	$a2,$sp,272
    bal	expKernInit
    lbu	$a1,12($a1)
    blez	$v0,.L5ef5717c
    move	$a4,$s0
    ld	$a5,328($sp)
    ld	$s0,376($sp)
    beqz	$a4,.L5ef56b8c
    sw	$v0,100($a5)
    # lw $t9, -32332($gp)
    move	$a0,$s3
    move	$a1,$zero
    bal	expLoadTimingTable
    ld	$s0,376($sp)
.L5ef56b8c:
    ld	$a6,328($sp)
    lw	$a5,272($sp)
    sw	$a5,104($a6)
    lw	$a4,276($sp)
    sw	$a4,72($s2)
    lw	$v1,expScreenPrivateIndex
    lw	$a6,436($s3)
    la	$at,expGCOpsCache__EMC
    sll	$v1,$v1,0x2
    addu	$a6,$a6,$v1
    lw	$a6,0($a6)
    addiu	$v0,$at,2048
    sd	$a6,296($sp)
    sw	$s5,8($a6)
.L5ef56bc4:
    sw	$zero,12($at)
    sw	$zero,8($at)
    sw	$zero,4($at)
    sw	$zero,0($at)
    sw	$zero,28($at)
    sw	$zero,24($at)
    sw	$zero,20($at)
    sw	$zero,16($at)
    sw	$zero,44($at)
    sw	$zero,40($at)
    sw	$zero,36($at)
    sw	$zero,32($at)
    sw	$zero,60($at)
    sw	$zero,56($at)
    sw	$zero,52($at)
    addiu	$at,$at,64
    bne	$at,$v0,.L5ef56bc4
    sw	$zero,-16($at)
    lbu	$v0,45($s5)
    andi	$v1,$v0,0x80
    beqz	$v1,.L5ef56ff8
    li	$a5,1
    andi	$a4,$v0,0x3
    lw	$at,0($s3)
    sll	$a4,$a4,0x2
    addiu	$v1,$gp,-23588
    sll	$at,$at,0x2
    addu	$at,$at,$v1
    sw	$a5,0($at)
    addiu	$at,$gp,-29092
    addu	$a4,$a4,$at
    lh	$a4,0($a4)
    sh	$a4,12($s3)
    lbu	$a5,45($s5)
    la	$v1,defaultScreenSaverInterval
    andi	$a5,$a5,0x3
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$at
    la	$at,ScreenSaverInterval
    lh	$a5,2($a5)
    sw	$zero,0($v1)
    sw	$zero,0($at)
    sh	$a5,14($s3)
.L5ef56c70:
    ld	$a0,320($sp)
    # lw $t9, -29392($gp)
    move	$a1,$s3
    addiu	$a2,$gp,-21644
    jal	rrmInit
    ld	$s5,368($sp)
    beqz	$v0,.L5ef571b4
    lw	$v1,var_5f0b9228
    li	$a4,-1
    beq	$v1,$a4,.L5ef57050
.L5ef56c98:
    nop	# was lw $t9, -32372($gp)
    bal	expInitHW
    move	$a0,$s3
    # lw $t9, -29484($gp)
    jal	FakeClientID
    move	$a0,$zero
    # lw $t9, -29492($gp)
    li	$a0,0x8400
    jal	Xalloc
    sw	$v0,28($s3)
    ld	$a5,296($sp)
    beqz	$v0,.L5ef56f9c
    sw	$v0,856($a5)
    move	$a0,$s3
    lw	$a6,var_5f0b93e0
    # lw $t9, -29388($gp)
    la	$a1,nfbRDinfo__EPC
    ori	$a6,$a6,0x4
    jal	ReadDisplayRegisterInfo
    sw	$a6,8($a1)
    la	$v0,serverGeneration
    la	$a2,nfbRDGeneration__FPC
    lw	$v0,0($v0)
    lw	$at,0($a2)
    bne	$at,$v0,.L5ef5702c
    ld	$a1,312($sp)
    la	$a3,nfbRDScreenPrivateIndex__GPC
.L5ef56d04:
    beqz	$a1,.L5ef570c8
.L5ef56d08:
    lw	$at,expScreenPrivateIndex
    lw	$a6,436($s3)
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lw	$a6,0($a6)
    lw	$a5,0($a6)
    lui	$v0,0x7
    addu	$v0,$a5,$v0
    lui	$a4,0x4
    ori	$a4,$a4,0x554
    addu	$a4,$a4,$a5
    sw	$zero,0($a4)
    lw	$v1,-24512($v0)
    andi	$v1,$v1,0x1
    bnez	$v1,.L5ef56dac
    li	$a3,0x8000
    move	$a1,$zero
.L5ef56d4c:
    sw	$a1,280($sp)
    addiu	$at,$a1,1
    sw	$at,280($sp)
    addiu	$t1,$at,1
    sw	$t1,280($sp)
    addiu	$t0,$t1,1
    sw	$t0,280($sp)
    addiu	$a7,$t0,1
    sw	$a7,280($sp)
    addiu	$a5,$a7,1
    sw	$a5,280($sp)
    addiu	$a4,$a5,1
    sw	$a4,280($sp)
    addiu	$a3,$a4,1
    sw	$a3,280($sp)
    addiu	$a2,$a3,1
    sw	$a2,280($sp)
    addiu	$v1,$a2,1
    sw	$v1,280($sp)
    lw	$v1,-24512($v0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L5ef56d4c
    move	$a1,$zero
    li	$a3,0x8000
.L5ef56dac:
    move	$a2,$zero
    sw	$zero,-20480($v0)
    sb	$zero,-15952($v0)
    b	.L5ef56de0
    sb	$zero,-15948($v0)
.L5ef56dc0:
    sb	$zero,-15960($v0)
    sb	$zero,-15960($v0)
    sb	$zero,-15960($v0)
    lw	$a4,856($a6)
    addu	$a4,$a4,$a2
    addiu	$a2,$a2,4
    beq	$a3,$a2,.L5ef56e08
    sw	$zero,0($a4)
.L5ef56de0:
    lbu	$a5,-16100($v0)
    andi	$a5,$a5,0x2
    bnez	$a5,.L5ef56dc0
    nop
.L5ef56df0:
    lbu	$at,-16100($v0)
    andi	$at,$at,0x2
    beqz	$at,.L5ef56df0
    nop
    b	.L5ef56dc0
    nop
.L5ef56e08:
    move	$v0,$a6
    sw	$zero,76($v0)
    sw	$zero,72($v0)
    sw	$zero,68($v0)
    sw	$zero,64($v0)
    sw	$zero,60($v0)
    sw	$zero,56($v0)
    sw	$zero,52($v0)
    sw	$zero,48($v0)
    sw	$zero,44($v0)
    sw	$zero,40($v0)
    sw	$zero,36($v0)
    sw	$zero,32($v0)
    sw	$zero,28($v0)
    sw	$zero,24($v0)
    sw	$zero,20($v0)
    sw	$zero,16($v0)
    lw	$a1,68($s2)
    # lw $t9, -32120($gp)
    move	$a0,$s3
    lbu	$a2,17($a1)
    jal	rrmCreateDefColormap
    lbu	$a1,16($a1)
    beqzl	$v0,.L5ef57144
    la	$s0,Xfree
    sh	$zero,290($sp)
    sh	$zero,288($sp)
    lh	$v1,8($s3)
    sh	$v1,292($sp)
    lh	$v0,10($s3)
    ld	$a0,328($sp)
    sh	$v0,294($sp)
    lw	$at,80($a0)
    lw	$ra,24($s3)
    addiu	$a1,$sp,288
    lw	$t8,88($a0)
    subu	$ra,$ra,$at
    sll	$t9,$ra,0x2
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    lw	$a0,92($a0)
    lw	$t9,372($s3)
    sll	$s2,$t8,0x2
    subu	$s2,$s2,$t8
    sll	$s2,$s2,0x2
    jalr	$t9
    addu	$a0,$a0,$s2
    sh	$zero,294($sp)
    sh	$zero,292($sp)
    sh	$zero,290($sp)
    sh	$zero,288($sp)
    ld	$a0,328($sp)
    lw	$t9,372($s3)
    lw	$a0,96($a0)
    addiu	$a1,$sp,288
    jalr	$t9
    addu	$a0,$a0,$s2
    ld	$s2,328($sp)
    lw	$t9,108($s2)
    jalr	$t9
    move	$a0,$s3
    # lw $t9, -32320($gp)
    bal	expAttachXvc
    move	$a0,$s3
    beqz	$v0,.L5ef5708c
    nop	# was lw $t9, -29384($gp)
    move	$a0,$s3
    jal	glxScreenInit
    addiu	$a1,$gp,-21956
    li	$v0,1
    ld	$gp,336($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef56f40:
    lbu	$a4,44($s5)
    beqz	$a4,.L5ef57114
    li	$a6,1
    b	.L5ef569f8
    ld	$s4,384($sp)
.L5ef56f54:
    li	$a6,1
    sh	$zero,34($s4)
    sh	$zero,42($s4)
    ld	$s4,384($sp)
    b	.L5ef569f8
    sw	$a1,32($s2)
.L5ef56f6c:
    la	$a5,ddxDfltClass
    lw	$a5,0($a5)
    bnez	$v0,.L5ef56a2c
    sw	$a5,44($s2)
    la	$at,ddxDfltDepth
.L5ef56f80:
    lw	$at,0($at)
    bnez	$a1,.L5ef56a30
    sw	$at,48($s2)
.L5ef56f8c:
    la	$v1,ddxDfltVisualID
    lw	$v1,0($v1)
    b	.L5ef56a30
    sw	$v1,52($s2)
.L5ef56f9c:
    la	$s0,Xfree
    ld	$a0,296($sp)
    jalr	$s0
    move	$t9,$s0
    ld	$a0,328($sp)
    jalr	$s0
    move	$t9,$s0
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$s0,376($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef56fd8:
    # lw $t9, -29780($gp)
    jal	AllocateScreenPrivateIndex
    nop
    la	$a4,serverGeneration
    lw	$a4,0($a4)
    sw	$v0,miZeroLineScreenIndex
    b	.L5ef56b08
    sw	$a4,miZeroLineGeneration
.L5ef56ff8:
    andi	$v1,$v0,0x7
    sll	$v1,$v1,0x2
    addiu	$at,$gp,-29124
    addu	$v1,$v1,$at
    lh	$v1,0($v1)
    sh	$v1,12($s3)
    lbu	$a5,45($s5)
    andi	$a5,$a5,0x7
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$at
    lh	$a5,2($a5)
    b	.L5ef56c70
    sh	$a5,14($s3)
.L5ef5702c:
    # lw $t9, -29780($gp)
    jal	AllocateScreenPrivateIndex
    sw	$v0,0($a2)
    la	$a3,nfbRDScreenPrivateIndex__GPC
    ld	$a2,304($sp)
    bltz	$v0,.L5ef571ac
    sw	$v0,0($a3)
.L5ef57048:
    b	.L5ef56d04
    move	$a1,$a2
.L5ef57050:
    addiu	$a1,$gp,-21404
    li	$a2,1
    # lw $t9, -29380($gp)
    la	$a0,local_0x5ef50000
    sw	$a2,var_5f0b9228
    jal	scaninvent
    addiu	$a0,$a0,26444
    bltz	$v0,.L5ef571f0
    lw	$a4,var_5f0b9228
    beqz	$a4,.L5ef56c98
    la	$at,expKeyClick
    la	$a5,expBell
    sw	$at,16($s2)
    b	.L5ef56c98
    sw	$a5,12($s2)
.L5ef5708c:
    la	$s0,Xfree
    ld	$a0,296($sp)
    jalr	$s0
    move	$t9,$s0
    move	$a0,$s2
    jalr	$s0
    move	$t9,$s0
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$s0,376($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef570c8:
    lw	$a5,0($a3)
    lw	$a4,436($s3)
    addiu	$v1,$gp,-20972
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    b	.L5ef56d08
    sw	$v1,0($a4)
.L5ef570e4:
    # lw $t9, -29644($gp)
    ld	$a0,328($sp)
    ld	$s5,368($sp)
    jal	Xfree
    ld	$s0,376($sp)
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef57114:
    lh	$v1,42($s4)
    li	$a6,1
    lw	$at,var_5f0b8aa0
    addiu	$v1,$v1,-1
    sh	$v1,42($s4)
    bnez	$at,.L5ef569f8
    ld	$s4,384($sp)
    sw	$a6,var_5f0b8aa0
    ld	$s4,384($sp)
    addiu	$a4,$s1,-1
    b	.L5ef569f8
    sw	$a4,32($s2)
.L5ef57144:
    ld	$a0,296($sp)
    jalr	$s0
    move	$t9,$s0
    ld	$a0,328($sp)
    jalr	$s0
    move	$t9,$s0
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$s0,376($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef5717c:
    # lw $t9, -29644($gp)
    ld	$a0,328($sp)
    ld	$s5,368($sp)
    jal	Xfree
    ld	$s0,376($sp)
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef571ac:
    b	.L5ef57048
    li	$a2,1
.L5ef571b4:
    la	$s0,Xfree
    ld	$a0,296($sp)
    jalr	$s0
    move	$t9,$s0
    ld	$a0,328($sp)
    jalr	$s0
    move	$t9,$s0
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$s0,376($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L5ef571f0:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2792
    move	$v0,$zero
    ld	$gp,336($sp)
    ld	$ra,344($sp)
    ld	$s2,360($sp)
    ld	$s3,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.end expInit

.globl expKernInit
.ent expKernInit
expKernInit:
    la	$v0,serverGeneration
    move	$a4,$a1
    lw	$at,var_5f0b93c8
    lw	$v0,0($v0)
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    bne	$at,$v0,.L5ef5bb58
    move	$s0,$a0
    lw	$a1,expGCPrivateIndex
    sd	$ra,48($sp)
    sd	$a2,16($sp)
    sd	$a4,24($sp)
    sd	$a3,32($sp)
.L5ef5baa4:
    # lw $t9, -29340($gp)
    move	$a0,$s0
    jal	AllocateGCPrivate
    li	$a2,4
    beqz	$v0,.L5ef5bb48
    ld	$ra,48($sp)
    # lw $t9, -29492($gp)
    jal	Xalloc
    li	$a0,860
    move	$v1,$v0
    sd	$v0,8($sp)
    bnez	$v0,.L5ef5bae8
    ld	$ra,48($sp)
    move	$v0,$zero
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef5bae8:
    addiu	$a6,$sp,4
    ld	$a5,16($sp)
    ld	$a4,32($sp)
    addiu	$a3,$sp,0
    move	$a2,$zero
    ld	$a1,24($sp)
    lw	$a7,expScreenPrivateIndex
    lw	$a0,436($s0)
    # lw $t9, -29336($gp)
    sll	$a7,$a7,0x2
    addu	$a0,$a0,$a7
    sw	$v0,0($a0)
    jal	irixKernInit
    lw	$a0,0($s0)
    beqz	$v0,.L5ef5bb98
    ld	$ra,48($sp)
    lw	$at,4($sp)
    ld	$s0,8($sp)
    sw	$zero,848($s0)
    sw	$at,0($s0)
    ld	$s0,40($sp)
    lw	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef5bb48:
    move	$v0,$zero
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef5bb58:
    sd	$a2,16($sp)
    sd	$a4,24($sp)
    # lw $t9, -29780($gp)
    sd	$a3,32($sp)
    sd	$ra,48($sp)
    jal	AllocateScreenPrivateIndex
    sw	$v0,var_5f0b93c8
    sw	$v0,expScreenPrivateIndex
    bltz	$v0,.L5ef5bba8
    ld	$ra,48($sp)
    # lw $t9, -29332($gp)
    jal	AllocateGCPrivateIndex
    nop
    move	$a1,$v0
    b	.L5ef5baa4
    sw	$v0,expGCPrivateIndex
.L5ef5bb98:
    ld	$s0,40($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,96
.L5ef5bba8:
    move	$v0,$zero
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end expKernInit

.globl expProbe
.ent expProbe
expProbe:
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    lui	$at,0x16
    addiu	$at,$at,32632
    beqz	$a0,.L5ef56678
    addu	$gp,$t9,$at
    li	$v0,3
    bne	$s0,$v0,.L5ef566c8
    nop	# was lw $t9, -29680($gp)
.L5ef56678:
    lbu	$a0,12($a1)
    sd	$ra,48($sp)
    li	$s0,255
    beq	$s0,$a0,.L5ef56718
    sd	$a1,24($sp)
    # lw $t9, -29404($gp)
    jal	ddxGetBoardName
    addiu	$a1,$sp,0
    beqz	$v0,.L5ef56704
    ld	$ra,48($sp)
    # lw $t9, -29620($gp)
    addiu	$a1,$gp,-28972
    jal	strcmp
    addiu	$a0,$sp,0
    sltiu	$v0,$v0,1
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef566c8:
    la	$a0,local_0x5f0a0000
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-2984
    li	$a1,3
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a2,$s0
    jal	ErrorF
    addiu	$a0,$a0,-2936
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2912
    ld	$ra,48($sp)
.L5ef56704:
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef56718:
    # lw $t9, -29400($gp)
    jal	ddxFindFirstTypedBoard
    addiu	$a0,$gp,-28972
    ld	$gp,32($sp)
    andi	$a3,$v0,0xff
    xor	$a3,$a3,$s0
    ld	$s0,40($sp)
    ld	$a4,24($sp)
    ld	$ra,48($sp)
    addiu	$sp,$sp,80
    sb	$v0,12($a4)
    jr	$ra
    sltu	$v0,$zero,$a3
    lw	$a3,4($a0)
    li	$a4,1
    beq	$a3,$a4,.L5ef56788
    li	$v0,12
.L5ef5675c:
    li	$at,2
.L5ef56760:
    bne	$a3,$at,.L5ef56780
    nop
    lw	$v0,8($a0)
    bne	$v0,$a4,.L5ef56780
    nop
    lw	$v1,12($a0)
    beq	$v1,$a4,.L5ef567a8
    li	$v0,1
.L5ef56780:
    jr	$ra
    move	$v0,$zero
.L5ef56788:
    lw	$a2,8($a0)
    bne	$a2,$a4,.L5ef56760
    li	$at,2
    lw	$at,20($a0)
    beq	$at,$v0,.L5ef5675c
    li	$v0,1
    jr	$ra
    sw	$zero,0($a1)
.L5ef567a8:
    jr	$ra
    sw	$zero,0($a1)
.end expProbe

.globl expResetProc
.ent expResetProc
expResetProc:
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0x16
    addiu	$at,$at,16316
    addu	$gp,$t9,$at
    # lw $t9, -29720($gp)
    lw	$t9,0($t9)
    lw	$a2,436($a0)
    sll	$t9,$t9,0x2
    addu	$a2,$a2,$t9
    lw	$a2,0($a2)
    bnez	$a2,.L5ef5a648
    nop	# was lw $t9, -29644($gp)
.L5ef5a63c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L5ef5a648:
    sd	$ra,8($sp)
    jal	Xfree
    move	$a0,$a2
    b	.L5ef5a63c
    ld	$ra,8($sp)
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$a4,$sp,8
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    sd	$s8,40($sp)
    move	$s8,$a1
    la	$a1,local_0x5f0a0000
    sd	$s1,32($sp)
    la	$s1,sscanf
    sd	$ra,16($sp)
    addiu	$a1,$a1,-2192
    jalr	$s1
    move	$t9,$s1
    slti	$a2,$v0,3
    li	$v0,1024
    lwc1	$f0,-19244($gp)
    beqz	$a2,.L5ef5a774
    ld	$ra,16($sp)
    sd	$s4,48($sp)
    move	$s4,$zero
    sw	$v0,4($sp)
    lw	$at,var_5f0b93c4
    swc1	$f0,8($sp)
    li	$a0,1280
    blez	$at,.L5ef5a748
    sw	$a0,0($sp)
    sd	$s5,64($sp)
    sd	$s3,56($sp)
    la	$s3,local_0x5f0b0000
    la	$s5,strcmp
    b	.L5ef5a6f8
    addiu	$s3,$s3,18464
    addiu	$s4,$s4,1
.L5ef5a6e8:
    lw	$at,var_5f0b93c4
    slt	$at,$s4,$at
    beqz	$at,.L5ef5a738
    addiu	$s3,$s3,8
.L5ef5a6f8:
    move	$a0,$s0
    lw	$a1,44($s3)
    jalr	$s5
    move	$t9,$s5
    bnezl	$v0,.L5ef5a6e8
    addiu	$s4,$s4,1
    addiu	$a4,$sp,8
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    lw	$a0,40($s3)
    la	$a1,local_0x5f0a0000
    move	$t9,$s1
    jalr	$s1
    addiu	$a1,$a1,-2192
    b	.L5ef5a6e8
    addiu	$s4,$s4,1
.L5ef5a738:
    lw	$a0,0($sp)
    ld	$s5,64($sp)
    ld	$ra,16($sp)
    ld	$s3,56($sp)
.L5ef5a748:
    sw	$a0,256($s8)
    lw	$a2,4($sp)
    sw	$a2,260($s8)
    ld	$s0,24($sp)
    lwc1	$f1,8($sp)
    ld	$s1,32($sp)
    ld	$s4,48($sp)
    swc1	$f1,264($s8)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L5ef5a774:
    lw	$a0,0($sp)
    b	.L5ef5a748
    sd	$s4,48($sp)
    lw	$a2,0($a0)
    addiu	$sp,$sp,-352
    sd	$ra,272($sp)
    sd	$s1,256($sp)
    move	$s1,$a1
    sd	$s0,264($sp)
    beqz	$a1,.L5ef5a8b4
    move	$s0,$a3
    # lw $t9, -29840($gp)
    sd	$a2,288($sp)
    jal	strlen
    move	$a0,$s1
    addiu	$at,$v0,35
    sltiu	$at,$at,256
    beqz	$at,.L5ef5a92c
    ld	$a2,288($sp)
    beqz	$s1,.L5ef5a8b8
    la	$a1,local_0x5f0a0000
    lbu	$v1,0($s1)
    beqz	$v1,.L5ef5a8b4
    nop	# was lw $t9, -29476($gp)
    sd	$s5,280($sp)
    move	$a0,$s0
    jal	strcpy
    move	$a1,$s1
    la	$s5,sprintf
    sd	$s3,296($sp)
.L5ef5a7ec:
    move	$a2,$s0
    la	$a1,local_0x5f0a0000
    la	$s1,local_0x5f0c0000
    move	$t9,$s5
    addiu	$a1,$a1,-2104
    addiu	$s1,$s1,-14232
    jalr	$s5
    move	$a0,$s1
    lw	$a4,var_5f0b93c4
    sd	$s4,312($sp)
    sd	$s2,304($sp)
    blez	$a4,.L5ef5a884
    move	$s3,$zero
    la	$s2,local_0x5f0b0000
    la	$s4,strcmp
    b	.L5ef5a844
    addiu	$s2,$s2,18464
    addiu	$s3,$s3,1
.L5ef5a834:
    lw	$at,var_5f0b93c4
    slt	$at,$s3,$at
    beqz	$at,.L5ef5a87c
    addiu	$s2,$s2,8
.L5ef5a844:
    move	$a0,$s0
    lw	$a1,40($s2)
    jalr	$s4
    move	$t9,$s4
    bnezl	$v0,.L5ef5a834
    addiu	$s3,$s3,1
    move	$a0,$s1
    lw	$a2,44($s2)
    la	$a1,local_0x5f0a0000
    move	$t9,$s5
    jalr	$s5
    addiu	$a1,$a1,-2104
    b	.L5ef5a834
    addiu	$s3,$s3,1
.L5ef5a87c:
    ld	$s2,304($sp)
    ld	$s4,312($sp)
.L5ef5a884:
    move	$a0,$s1
    # lw $t9, -29368($gp)
    addiu	$a1,$gp,-28852
    ld	$s5,280($sp)
    jal	strcat
    ld	$s3,296($sp)
    ld	$s0,264($sp)
    ld	$ra,272($sp)
    move	$v0,$s1
    ld	$s1,256($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L5ef5a8b4:
    la	$a1,local_0x5f0a0000
.L5ef5a8b8:
    sd	$s5,280($sp)
    la	$s5,sprintf
    addiu	$a0,$sp,0
    addiu	$a1,$a1,-2136
    jalr	$s5
    move	$t9,$s5
    # lw $t9, -29436($gp)
    addiu	$a1,$gp,-28868
    jal	fopen
    addiu	$a0,$sp,0
    move	$s1,$v0
    bnez	$v0,.L5ef5a904
    ld	$ra,272($sp)
    move	$v0,$zero
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    ld	$s5,280($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L5ef5a904:
    # lw $t9, -29364($gp)
    move	$a0,$s1
    move	$a2,$s0
    jal	fscanf
    addiu	$a1,$gp,-28860
    # lw $t9, -29452($gp)
    jal	fclose
    move	$a0,$s1
    b	.L5ef5a7ec
    sd	$s3,296($sp)
.L5ef5a92c:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    move	$a1,$s1
    jal	ErrorF
    addiu	$a0,$a0,-2176
    move	$v0,$zero
    ld	$ra,272($sp)
    ld	$s0,264($sp)
    ld	$s1,256($sp)
    jr	$ra
    addiu	$sp,$sp,352
.end expResetProc

.globl expAttachXvc
.ent expAttachXvc
expAttachXvc:
    addiu	$sp,$sp,-112
    sd	$s0,88($sp)
    sd	$s1,24($sp)
    # lw $t9, -29492($gp)
    move	$s1,$a0
    sd	$ra,16($sp)
    jal	Xalloc
    li	$a0,2220
    bnez	$v0,.L5ef5b674
    move	$s0,$v0
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$s0,88($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef5b674:
    sd	$s3,56($sp)
    sd	$s6,64($sp)
    sd	$s4,72($sp)
    sd	$s5,80($sp)
    sdc1	$f20,32($sp)
    sdc1	$f22,40($sp)
    sdc1	$f24,48($sp)
    # lw $t9, -29488($gp)
    move	$a0,$s0
    move	$a1,$zero
    jal	memset
    li	$a2,2220
    la	$s5,pow
    ldc1	$f22,-19220($gp)
    move	$s4,$s0
    move	$s3,$zero
    sw	$zero,1444($s0)
    sw	$zero,28($s0)
    sw	$zero,20($s0)
    sw	$zero,0($s0)
    li	$a3,-1
    li	$s6,256
    sw	$s6,1436($s0)
    sw	$a3,24($s0)
    li	$v1,8
    addiu	$a2,$s0,1452
    sd	$a2,8($sp)
    sw	$a2,1448($s0)
    addiu	$a2,$s0,936
    sw	$v1,1440($s0)
    li	$v1,1
    sw	$v1,32($s0)
    sw	$v1,16($s0)
    sw	$v1,12($s0)
    sw	$a2,8($s0)
    ldc1	$f0,-23236($gp)
    ldc1	$f24,-19228($gp)
    addiu	$at,$s0,1436
    sw	$at,36($s0)
    la	$at,local_0x5f0a0000
    sw	$v1,4($s0)
    div.d	$f24,$f24,$f0
    ldc1	$f20,-1936($at)
.L5ef5b720:
    mtc1	$s3,$f12
    nop
    cvt.d.w	$f12,$f12
    mov.d	$f13,$f24
    move	$t9,$s5
    jalr	$s5
    div.d	$f12,$f12,$f22
    addiu	$s3,$s3,1
    mul.d	$f13,$f0,$f22
    mtc1	$s3,$f12
    nop
    cvt.d.w	$f12,$f12
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    move	$t9,$s5
    mfc1	$a3,$f13
    div.d	$f12,$f12,$f22
    mov.d	$f13,$f24
    sb	$a3,1452($s4)
    sb	$a3,1708($s4)
    jalr	$s5
    sb	$a3,1964($s4)
    addiu	$s3,$s3,1
    mul.d	$f0,$f0,$f22
    add.d	$f0,$f0,$f20
    trunc.w.d	$f0,$f0
    mfc1	$at,$f0
    addiu	$s4,$s4,2
    sb	$at,1451($s4)
    sb	$at,1707($s4)
    bne	$s3,$s6,.L5ef5b720
    sb	$at,1963($s4)
    # lw $t9, -32736($gp)
    move	$a0,$s0
    addiu	$t9,$t9,-25452
    bal	expvc1ComputeDIDTable
    ld	$a1,8($sp)
    li	$a1,15006
    ldc1	$f20,32($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,48($sp)
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    lw	$a2,36($s0)
    # lw $t9, -29704($gp)
    lw	$a0,116($s1)
    lw	$a2,12($a2)
    jal	ioctl
    lw	$a0,100($a0)
    li	$a4,-1
    beq	$v0,$a4,.L5ef5ba54
    li	$a5,1
.L5ef5b7f8:
    sw	$zero,932($s0)
    sw	$zero,156($s0)
    sw	$zero,152($s0)
    sw	$zero,148($s0)
    sw	$zero,144($s0)
    sw	$zero,140($s0)
    sw	$zero,136($s0)
    sw	$zero,120($s0)
    sw	$zero,116($s0)
    sw	$zero,112($s0)
    sw	$zero,108($s0)
    sw	$zero,104($s0)
    sw	$zero,100($s0)
    sw	$zero,88($s0)
    sw	$zero,84($s0)
    sw	$zero,80($s0)
    sw	$zero,76($s0)
    sw	$zero,64($s0)
    sw	$zero,56($s0)
    sw	$zero,52($s0)
    sw	$zero,48($s0)
    la	$a3,expLoadAndFree
    sw	$a4,44($s0)
    sw	$zero,40($s0)
    sw	$a3,72($s0)
    la	$a2,local_0x5ef60000
    la	$a1,local_0x5ef60000
    la	$a0,local_0x5ef60000
    addiu	$a2,$a2,-23088
    addiu	$a1,$a1,-23060
    addiu	$a0,$a0,-24972
    sw	$a0,124($s0)
    sw	$a1,96($s0)
    la	$at,expLstVideoFmt
    sw	$a2,92($s0)
    la	$v1,local_0x5f0a0000
    sw	$at,68($s0)
    la	$at,local_0x5ef60000
    la	$v0,expResetProc
    lwc1	$f4,-1928($v1)
    la	$v1,local_0x5ef60000
    sw	$v0,60($s0)
    la	$v0,local_0x5ef60000
    addiu	$v1,$v1,-24544
    addiu	$at,$at,-20444
    addiu	$v0,$v0,-24140
    sw	$v0,132($s0)
    lw	$v0,8($s0)
    sw	$at,160($s0)
    sw	$v1,128($s0)
    swc1	$f4,8($v0)
    swc1	$f4,4($v0)
    sw	$a5,0($v0)
    lh	$a3,10($s1)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,12($v0)
    lh	$a2,8($s1)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,16($v0)
    la	$a0,local_0x5f0c0000
    lw	$a1,0($s1)
    addiu	$a0,$a0,-14744
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lw	$a1,0($a1)
    beqzl	$a1,.L5ef5b998
    swc1	$f4,296($v0)
    lbu	$a2,0($a1)
    beqz	$a2,.L5ef5b994
    nop	# was lw $t9, -29476($gp)
    sd	$v0,0($sp)
    move	$a0,$v0
    jal	strcpy
    addiu	$a0,$v0,20
    la	$a3,local_0x5f0c0000
    lw	$v1,0($s1)
    addiu	$a3,$a3,-14744
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lw	$v1,0($v1)
    ld	$v0,0($sp)
    lw	$v1,260($v1)
    sw	$v1,276($v0)
    lw	$at,0($s1)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    lw	$at,0($at)
    lw	$at,256($at)
    sw	$at,280($v0)
    lw	$a2,0($s1)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    lwc1	$f3,264($a2)
    li	$a4,-1
    li	$a5,1
    swc1	$f3,292($v0)
    b	.L5ef5b9a8
    swc1	$f3,296($v0)
.L5ef5b994:
    swc1	$f4,296($v0)
.L5ef5b998:
    swc1	$f4,292($v0)
    sw	$zero,280($v0)
    sw	$zero,276($v0)
    sb	$zero,20($v0)
.L5ef5b9a8:
    move	$a1,$s0
    move	$a0,$s1
    sw	$zero,496($v0)
    sw	$zero,492($v0)
    sw	$zero,484($v0)
    sw	$a4,488($v0)
    sw	$zero,472($v0)
    sw	$zero,468($v0)
    sw	$zero,460($v0)
    sw	$zero,480($v0)
    sw	$zero,476($v0)
    sw	$zero,464($v0)
    sw	$zero,456($v0)
    sw	$zero,448($v0)
    sw	$zero,452($v0)
    sw	$zero,444($v0)
    sw	$zero,440($v0)
    sw	$zero,436($v0)
    sw	$zero,432($v0)
    sw	$zero,428($v0)
    sw	$zero,424($v0)
    sw	$zero,344($v0)
    sw	$a5,340($v0)
    sw	$zero,336($v0)
    sw	$zero,332($v0)
    sw	$zero,328($v0)
    sw	$zero,324($v0)
    sw	$zero,320($v0)
    sw	$zero,316($v0)
    sw	$zero,312($v0)
    sw	$zero,308($v0)
    sw	$zero,304($v0)
    # lw $t9, -29344($gp)
    sw	$zero,300($v0)
    sw	$zero,288($v0)
    jal	XSGIvcScreenInit
    sw	$zero,284($v0)
    li	$v0,1
    ld	$ra,16($sp)
    ld	$s0,88($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef5ba54:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2232
    li	$a4,-1
    b	.L5ef5b7f8
    li	$a5,1
.end expAttachXvc

.globl expCloseScreen
.ent expCloseScreen
expCloseScreen:
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    sd	$s2,56($sp)
    sd	$s4,48($sp)
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s5,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x16
    addiu	$at,$at,29608
    addu	$gp,$t9,$at
    # lw $t9, -29376($gp)
    move	$s5,$a0
    sd	$ra,0($sp)
    jal	rrmCloseScreen
    move	$a0,$a1
    la	$s2,expGCOpsCache__EMC
    la	$s0,Xfree
    b	.L5ef57278
    addiu	$s4,$s2,2048
.L5ef5726c:
    addiu	$s2,$s2,4
.L5ef57270:
    beq	$s2,$s4,.L5ef57294
    lw	$a2,expScreenPrivateIndex
.L5ef57278:
    lw	$a0,0($s2)
    beqzl	$a0,.L5ef57270
    addiu	$s2,$s2,4
    jalr	$s0
    move	$t9,$s0
    b	.L5ef5726c
    sw	$zero,0($s2)
.L5ef57294:
    lw	$a1,436($s1)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    lw	$a0,856($a1)
    ld	$s2,56($sp)
    beqz	$a0,.L5ef572cc
    ld	$s4,48($sp)
    sd	$a1,40($sp)
    move	$t9,$s0
    ld	$s2,56($sp)
    jalr	$s0
    ld	$s4,48($sp)
    ld	$a1,40($sp)
.L5ef572cc:
    move	$a0,$a1
    jalr	$s0
    move	$t9,$s0
    lw	$a0,116($s1)
    move	$t9,$s0
    jalr	$s0
    lw	$a0,116($a0)
    lw	$a0,116($s1)
    move	$t9,$s0
    jalr	$s0
    lw	$a0,124($a0)
    lw	$a0,20($s1)
    addiu	$a2,$gp,-22148
    bne	$a0,$a2,.L5ef57370
    nop
.L5ef57308:
    lw	$a3,0($s1)
    la	$a1,XSGIvcScreens
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a1
    lw	$at,0($a3)
    la	$a2,vcScreenPrivateIndex
    beqz	$at,.L5ef57344
    lw	$a2,0($a2)
    lw	$a0,436($s1)
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    lw	$a0,0($a0)
    bnez	$a0,.L5ef57384
    nop
.L5ef57340:
    sw	$zero,0($a3)
.L5ef57344:
    # lw $t9, -32008($gp)
    move	$a0,$s5
    move	$a1,$s1
    jal	nfbCloseScreen
    ld	$s0,32($sp)
    ld	$gp,24($sp)
    ld	$ra,0($sp)
    ld	$s1,8($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef57370:
    jalr	$s0
    move	$t9,$s0
    addiu	$at,$gp,-22148
    b	.L5ef57308
    sw	$at,20($s1)
.L5ef57384:
    jalr	$s0
    move	$t9,$s0
    lw	$a3,0($s1)
    la	$at,XSGIvcScreens
    sll	$a3,$a3,0x2
    b	.L5ef57340
    addu	$a3,$a3,$at
    li	$a2,2
    addiu	$a1,$gp,-21388
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # lw $t9, -30348($gp)
    move	$s0,$a0
    sd	$ra,0($sp)
    jal	ALgetparams
    li	$a0,1
    lw	$a2,var_5f0b923c
    li	$a1,-1
    move	$a0,$zero
    bltz	$a2,.L5ef57418
    li	$v1,-2
    move	$a0,$a2
.L5ef573dc:
    lw	$at,0($s0)
.L5ef573e0:
    li	$v0,1
    beq	$at,$a0,.L5ef57404
    ld	$ra,0($sp)
    beqz	$a0,.L5ef57404
    sw	$a0,0($s0)
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    sw	$v0,var_5f0b8ab0
.L5ef57404:
    ld	$ra,0($sp)
    sw	$zero,var_5f0b8ab0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L5ef57418:
    beq	$a2,$v1,.L5ef57430
    nop
    beq	$a2,$a1,.L5ef57438
    move	$a0,$zero
    b	.L5ef573e0
    lw	$at,0($s0)
.L5ef57430:
    b	.L5ef573e0
    lw	$at,0($s0)
.L5ef57438:
    li	$a2,2
    addiu	$a1,$gp,-21388
    # lw $t9, -30348($gp)
    li	$a0,1
    li	$a3,3
    jal	ALgetparams
    sw	$a3,var_5f0b9238
    lw	$a2,var_5f0b923c
    bltz	$a2,.L5ef5746c
    move	$a0,$a2
.L5ef57460:
    li	$at,4
    b	.L5ef573dc
    sw	$at,var_5f0b9238
.L5ef5746c:
    b	.L5ef57460
    move	$a0,$zero
.end expCloseScreen

.globl expInitRootWindow
.ent expInitRootWindow
expInitRootWindow:
    addiu	$sp,$sp,-80
    sd	$gp,40($sp)
    lw	$a1,0($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,-27256
    addu	$gp,$t9,$v1
    addiu	$at,$gp,-23588
    sll	$v0,$a1,0x2
    addu	$at,$v0,$at
    lw	$at,0($at)
    sd	$s1,8($sp)
    move	$s1,$a0
    beqz	$at,.L5ef3508c
    sll	$a4,$a1,0x4
    sd	$ra,56($sp)
    la	$at,savedScreenInfo
    la	$a3,expSetBacklight__EHB
    sd	$s0,48($sp)
    addu	$a4,$a4,$at
    sw	$a3,12($a4)
.L5ef3508c:
    li	$a2,1
    li	$a1,21
    sd	$s0,48($sp)
    la	$s0,WindowTable
    sd	$ra,56($sp)
    la	$a0,local_0x5f0a0000
    lw	$s0,0($s0)
    # lw $t9, -29496($gp)
    addiu	$a0,$a0,-4048
    addu	$s0,$s0,$v0
    jal	MakeAtom
    lw	$s0,0($s0)
    sd	$s0,16($sp)
    # lw $t9, -29492($gp)
    sd	$s1,24($sp)
    sd	$v0,32($sp)
    jal	Xalloc
    li	$a0,552
    move	$s1,$v0
    beqz	$v0,.L5ef351b8
    move	$s0,$v0
    # lw $t9, -29488($gp)
.L5ef350e4:
    move	$a0,$s1
    move	$a1,$zero
    jal	memset
    li	$a2,552
    move	$a0,$zero
    addiu	$t8,$s1,276
    li	$ra,0xffff
    li	$at,1
    sw	$at,16($s1)
    # lw $t9, -29484($gp)
    sh	$ra,10($s1)
    sh	$ra,4($s1)
    jal	FakeClientID
    sw	$t8,0($s1)
    move	$a0,$v0
    move	$a2,$s0
    # lw $t9, -29412($gp)
    li	$a1,5
    sw	$v0,0($sp)
    jal	AddResource
    ld	$s1,8($sp)
    beqz	$v0,.L5ef351dc
    move	$a7,$zero
    addiu	$a6,$sp,0
    li	$a5,1
    move	$a4,$zero
    li	$a3,32
    li	$a2,8
    ld	$v0,24($sp)
    ld	$a1,32($sp)
    lw	$v1,expScreenPrivateIndex
    lw	$v0,436($v0)
    # lw $t9, -29416($gp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    ld	$a0,16($sp)
    jal	ChangeWindowProperty
    sw	$s0,852($v0)
    ld	$ra,56($sp)
    beqz	$v0,.L5ef351ac
    ld	$s0,48($sp)
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-3976
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
    ld	$ra,56($sp)
.L5ef351ac:
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L5ef351b8:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-4024
    # lw $t9, -29668($gp)
    jal	exit
    li	$a0,1
    b	.L5ef350e4
    nop	# was lw $t9, -29488($gp)
.L5ef351dc:
    # lw $t9, -29644($gp)
    jal	Xfree
    move	$a0,$s0
    ld	$ra,56($sp)
    b	.L5ef351ac
    ld	$s0,48($sp)
.end expInitRootWindow

.globl expBell
.ent expBell
expBell:
    move	$v0,$zero
    addiu	$sp,$sp,-128
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s8,40($sp)
    move	$s8,$a1
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s2,32($sp)
    move	$s2,$zero
    sd	$gp,24($sp)
    lui	$at,0x16
    addiu	$at,$at,29008
    beqz	$a0,.L5ef578b0
    addu	$gp,$t9,$at
    beqzl	$s8,.L5ef578b4
    ld	$gp,24($sp)
    beqz	$s1,.L5ef578b0
    sd	$v0,0($sp)
    # lw $t9, -29372($gp)
    sd	$ra,56($sp)
    jal	GetTimeInMillis
    nop
    lw	$a1,var_5f0b8ac8
    subu	$a0,$v0,$a1
    bltz	$a0,.L5ef5792c
    lw	$v1,var_5f0b8acc
.L5ef574e0:
    slt	$v1,$v1,$a0
    beqz	$v1,.L5ef574fc
    nop	# was lw $t9, -32740($gp)
    sw	$v0,var_5f0b8ac8
    li	$a5,1
    sd	$a5,0($sp)
    # lw $t9, -32740($gp)
.L5ef574fc:
    addiu	$t9,$t9,29600
    bal	expCloseScreen
    addiu	$a0,$gp,-23296
    lw	$at,var_5f0b8ab8
    bne	$at,$s0,.L5ef57524
    ld	$ra,56($sp)
    lw	$v1,var_5f0b8abc
    bne	$v1,$s8,.L5ef57524
    lw	$a5,var_5f0b8ac0
    beq	$a5,$s1,.L5ef57540
.L5ef57524:
    lw	$a6,var_5f0b8ac4
    beqz	$a6,.L5ef57544
    move	$t8,$zero
    li	$s2,1
    sw	$s1,var_5f0b8ac0
    sw	$s8,var_5f0b8abc
    sw	$s0,var_5f0b8ab8
.L5ef57540:
    move	$t8,$zero
.L5ef57544:
    beqz	$s2,.L5ef578cc
    sll	$v1,$s8,0x1
.L5ef5754c:
    mult	$s8,$s1
    mflo	$a6
    nop
    li	$at,1000
    div	$zero,$a6,$at
    sd	$s5,80($sp)
    lw	$a5,var_5f0b8ac4
    mflo	$s5
    div	$zero,$a5,$v1
    teq	$v1,$zero,0x7
    la	$s2,local_0x5f0c0000
    sd	$s4,48($sp)
    sd	$s7,88($sp)
    mflo	$s7
    blez	$s5,.L5ef57794
    teq	$at,$zero,0x7
    addiu	$s2,$s2,-23192
    move	$ra,$zero
    addu	$s1,$s7,$s2
    sd	$s3,72($sp)
    addu	$s3,$s7,$s2
    sd	$s6,64($sp)
    slti	$s6,$s7,1
    sll	$s4,$s7,0x1
    move	$t9,$s4
    xori	$s6,$s6,0x1
    sra	$t3,$s0,0x4
    addiu	$t3,$t3,1
    andi	$t2,$t3,0xff
    b	.L5ef5760c
    negu	$t2,$t2
.L5ef575d0:
    move	$v0,$a4
    move	$a0,$a2
    addiu	$a0,$a0,12
    addiu	$v0,$v0,12
.L5ef575e0:
    sb	$t3,1($v0)
    sb	$t2,1($a0)
    sb	$t3,2($v0)
    sb	$t2,2($a0)
    sb	$t3,3($v0)
    sb	$t2,3($a0)
.L5ef575f8:
    addu	$t9,$s4,$t9
    addu	$s3,$s4,$s3
    addu	$s1,$s4,$s1
    beq	$t8,$s5,.L5ef577a4
    addu	$s2,$s4,$s2
.L5ef5760c:
    move	$v0,$t8
    move	$a3,$s7
    slti	$a5,$t9,8193
    beqz	$a5,.L5ef577b8
    move	$a0,$ra
    addiu	$t8,$t8,1
    move	$v0,$s1
    beqz	$s6,.L5ef575f8
    addu	$ra,$s4,$ra
    andi	$a2,$s7,0x3
    beqz	$a2,.L5ef57654
    move	$a0,$s2
.L5ef5763c:
    addiu	$a0,$a0,1
    addiu	$v0,$v0,1
    addi	$a2,$a2,-1
    sb	$t3,-1($a0)
    bnez	$a2,.L5ef5763c
    sb	$t2,-1($v0)
.L5ef57654:
    move	$a2,$v0
    sra	$a7,$a3,0x2
    beqz	$a7,.L5ef575f8
    move	$a4,$a0
    slti	$a6,$a7,2
    bnez	$a6,.L5ef57988
    move	$a3,$t3
    move	$a1,$t2
    sb	$t3,0($a4)
    addiu	$a5,$s3,-4
    addiu	$at,$a5,-16
    addiu	$v0,$a5,-12
    addiu	$v1,$a5,-8
    addiu	$a0,$a5,-4
    sb	$t2,0($a2)
.L5ef57690:
    sb	$a3,1($a4)
    sb	$a1,1($a2)
    sb	$a3,2($a4)
    sb	$a1,2($a2)
    sb	$a3,3($a4)
    sb	$a1,3($a2)
    sb	$a3,4($a4)
    beq	$a4,$a0,.L5ef57780
    sb	$a1,4($a2)
    sb	$a3,5($a4)
    sb	$a1,5($a2)
    sb	$a3,6($a4)
    sb	$a1,6($a2)
    sb	$a3,7($a4)
    sb	$a1,7($a2)
    sb	$a3,8($a4)
    beq	$a4,$v1,.L5ef5776c
    sb	$a1,8($a2)
    sb	$a3,9($a4)
    sb	$a1,9($a2)
    sb	$a3,10($a4)
    sb	$a1,10($a2)
    sb	$a3,11($a4)
    sb	$a1,11($a2)
    sb	$a3,12($a4)
    beq	$a4,$v0,.L5ef575d0
    sb	$a1,12($a2)
    sb	$a3,13($a4)
    sb	$a1,13($a2)
    sb	$a3,14($a4)
    sb	$a1,14($a2)
    sb	$a3,15($a4)
    sb	$a1,15($a2)
    sb	$a3,16($a4)
    beq	$a4,$at,.L5ef57758
    sb	$a1,16($a2)
    sb	$a3,17($a4)
    sb	$a1,17($a2)
    sb	$a3,18($a4)
    sb	$a1,18($a2)
    sb	$a3,19($a4)
    sb	$a1,19($a2)
    sb	$a3,20($a4)
    addiu	$a2,$a2,20
    addiu	$a4,$a4,20
    bne	$a4,$a5,.L5ef57690
    sb	$a1,0($a2)
    move	$v0,$a4
    b	.L5ef575e0
    move	$a0,$a2
.L5ef57758:
    move	$v0,$a4
    move	$a0,$a2
    addiu	$a0,$a0,16
    b	.L5ef575e0
    addiu	$v0,$v0,16
.L5ef5776c:
    move	$v0,$a4
    move	$a0,$a2
    addiu	$a0,$a0,8
    b	.L5ef575e0
    addiu	$v0,$v0,8
.L5ef57780:
    move	$v0,$a4
    move	$a0,$a2
    addiu	$a0,$a0,4
    b	.L5ef575e0
    addiu	$v0,$v0,4
.L5ef57794:
    sd	$s3,72($sp)
    sd	$s6,64($sp)
    move	$t8,$zero
    sll	$s4,$s7,0x1
.L5ef577a4:
    mult	$t8,$s4
    move	$v0,$t8
    mflo	$a0
.L5ef577b8:
    sll	$s3,$v0,0x2
    addu	$s3,$s3,$v0
    sll	$s3,$s3,0x4
    addu	$s3,$s3,$v0
    sll	$s3,$s3,0x2
    addu	$s3,$s3,$v0
    sll	$s3,$s3,0x2
    div	$zero,$s3,$s8
    teq	$s8,$zero,0x7
    sw	$a0,var_5f0b8aa8
    ld	$s7,88($sp)
    ld	$s5,80($sp)
    ld	$s4,48($sp)
    ld	$ra,56($sp)
    ld	$s6,64($sp)
    ld	$a5,0($sp)
    ld	$s3,72($sp)
    mflo	$a6
    beqz	$a5,.L5ef578e0
    sw	$a6,var_5f0b8acc
    lw	$at,var_5f0b8ac4
.L5ef5780c:
    beqz	$at,.L5ef57934
    lw	$a2,var_5f0b8ab4
    beqz	$a2,.L5ef57950
.L5ef57818:
    nop	# was lw $t9, -30352($gp)
    addiu	$a1,$gp,-28956
    jal	ALopenport
    addiu	$a0,$gp,-28964
    beqz	$v0,.L5ef578fc
    sw	$v0,var_5f0b8aa4
    move	$a0,$v0
    # lw $t9, -30376($gp)
    la	$a1,local_0x5f0c0000
    lw	$a2,var_5f0b8aa8
    jal	ALwritesamps
    addiu	$a1,$a1,-23192
    la	$s0,ALgetfilled
    lw	$a0,var_5f0b8aa4
    jalr	$s0
    move	$t9,$s0
    blez	$v0,.L5ef57880
    la	$s1,sginap
    li	$a0,1
.L5ef57864:
    jalr	$s1
    move	$t9,$s1
    lw	$a0,var_5f0b8aa4
    jalr	$s0
    move	$t9,$s0
    bgtz	$v0,.L5ef57864
    li	$a0,1
.L5ef57880:
    # lw $t9, -30356($gp)
    jal	ALcloseport
    lw	$a0,var_5f0b8aa4
    sw	$zero,var_5f0b8aa4
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,56($sp)
    ld	$s2,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef578b0:
    ld	$gp,24($sp)
.L5ef578b4:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef578cc:
    lw	$a5,var_5f0b8ab0
    bnez	$a5,.L5ef5754c
    ld	$a6,0($sp)
    bnez	$a6,.L5ef5780c
    lw	$at,var_5f0b8ac4
.L5ef578e0:
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef578fc:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2744
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,56($sp)
    ld	$s2,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef5792c:
    b	.L5ef574e0
    subu	$a0,$a1,$v0
.L5ef57934:
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L5ef57950:
    # lw $t9, -30368($gp)
    jal	ALnewconfig
    nop
    # lw $t9, -30364($gp)
    move	$a0,$v0
    li	$a1,1
    jal	ALsetwidth
    sw	$v0,var_5f0b8ab4
    # lw $t9, -30360($gp)
    li	$a1,1
    jal	ALsetchannels
    lw	$a0,var_5f0b8ab4
    b	.L5ef57818
    lw	$a2,var_5f0b8ab4
.L5ef57988:
    move	$a0,$a2
    move	$v0,$a4
    sb	$t3,0($v0)
    sb	$t2,0($a0)
    sb	$t3,1($v0)
    sb	$t2,1($a0)
    sb	$t3,2($v0)
    sb	$t2,2($a0)
    sb	$t3,3($v0)
    b	.L5ef575f8
    sb	$t2,3($a0)
.end expBell

.globl expKeyClick
.ent expKeyClick
expKeyClick:
    addiu	$sp,$sp,-112
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    move	$s0,$zero
    sd	$s8,24($sp)
    move	$s8,$zero
    sd	$gp,16($sp)
    lui	$at,0x16
    addiu	$at,$at,27664
    beqz	$a0,.L5ef57d50
    addu	$gp,$t9,$at
    # lw $t9, -29372($gp)
    sd	$ra,32($sp)
    jal	GetTimeInMillis
    nop
    lw	$a1,var_5f0b8ad4
    subu	$a0,$v0,$a1
    bltz	$a0,.L5ef57d94
.L5ef57a00:
    slti	$v1,$a0,31
    bnez	$v1,.L5ef57a18
    nop	# was lw $t9, -32740($gp)
    sw	$v0,var_5f0b8ad4
    li	$s8,1
    # lw $t9, -32740($gp)
.L5ef57a18:
    addiu	$t9,$t9,29600
    bal	expCloseScreen
    addiu	$a0,$gp,-23276
    lw	$at,var_5f0b8ad0
    beq	$at,$s1,.L5ef57a44
    ld	$ra,32($sp)
    lw	$v1,var_5f0b8ad8
    beqz	$v1,.L5ef57a48
    sra	$t2,$s1,0x4
    li	$s0,1
    sw	$s1,var_5f0b8ad0
.L5ef57a44:
    sra	$t2,$s1,0x4
.L5ef57a48:
    beqz	$s0,.L5ef57d9c
    move	$t8,$zero
    lw	$s0,var_5f0b8ad8
.L5ef57a54:
    li	$t3,3000
    div	$zero,$s0,$t3
    sd	$s3,56($sp)
    move	$s3,$zero
    sd	$s7,72($sp)
    li	$s7,15
    sd	$s4,64($sp)
    sd	$s5,80($sp)
    sd	$s6,48($sp)
    sd	$s2,40($sp)
    la	$s2,local_0x5f0c0000
    addiu	$t2,$t2,1
    teq	$t3,$zero,0x7
    addiu	$s2,$s2,-23192
    andi	$t3,$t2,0xff
    negu	$t3,$t3
    move	$s0,$s2
    mflo	$s6
    addu	$ra,$s6,$s2
    addu	$s2,$s6,$s2
    slti	$s5,$s6,1
    sll	$s4,$s6,0x1
    move	$t9,$s4
    b	.L5ef57af4
    xori	$s5,$s5,0x1
.L5ef57ab8:
    move	$a0,$a4
    move	$v0,$a2
    addiu	$v0,$v0,12
    addiu	$a0,$a0,12
.L5ef57ac8:
    sb	$t2,8193($a0)
    sb	$t3,8193($v0)
    sb	$t2,8194($a0)
    sb	$t3,8194($v0)
    sb	$t2,8195($a0)
    sb	$t3,8195($v0)
.L5ef57ae0:
    addu	$t9,$s4,$t9
    addu	$s2,$s4,$s2
    addu	$ra,$s4,$ra
    beq	$s3,$s7,.L5ef57c7c
    addu	$s0,$s4,$s0
.L5ef57af4:
    andi	$a2,$s6,0x3
    slti	$v1,$t9,257
    beqz	$v1,.L5ef57c84
    move	$v0,$t8
    addiu	$s3,$s3,1
    beqz	$s5,.L5ef57ae0
    addu	$t8,$s4,$t8
    move	$v0,$ra
    move	$a1,$s6
    move	$a0,$s0
    beqzl	$a2,.L5ef57b40
    move	$a2,$v0
.L5ef57b24:
    addiu	$a0,$a0,1
    addiu	$v0,$v0,1
    addi	$a2,$a2,-1
    sb	$t2,8191($a0)
    bnez	$a2,.L5ef57b24
    sb	$t3,8191($v0)
    move	$a2,$v0
.L5ef57b40:
    sra	$a3,$a1,0x2
    beqz	$a3,.L5ef57ae0
    move	$a4,$a0
    slti	$a5,$a3,2
    bnez	$a5,.L5ef57e18
    move	$a3,$t2
    move	$a1,$t3
    addiu	$a5,$s2,-4
    sb	$t2,8192($a4)
    sb	$t3,8192($a2)
    addiu	$at,$a5,-16
    addiu	$v0,$a5,-12
    addiu	$v1,$a5,-8
    addiu	$a0,$a5,-4
.L5ef57b78:
    sb	$a3,8193($a4)
    sb	$a1,8193($a2)
    sb	$a3,8194($a4)
    sb	$a1,8194($a2)
    sb	$a3,8195($a4)
    sb	$a1,8195($a2)
    sb	$a3,8196($a4)
    beq	$a4,$a0,.L5ef57c68
    sb	$a1,8196($a2)
    sb	$a3,8197($a4)
    sb	$a1,8197($a2)
    sb	$a3,8198($a4)
    sb	$a1,8198($a2)
    sb	$a3,8199($a4)
    sb	$a1,8199($a2)
    sb	$a3,8200($a4)
    beq	$a4,$v1,.L5ef57c54
    sb	$a1,8200($a2)
    sb	$a3,8201($a4)
    sb	$a1,8201($a2)
    sb	$a3,8202($a4)
    sb	$a1,8202($a2)
    sb	$a3,8203($a4)
    sb	$a1,8203($a2)
    sb	$a3,8204($a4)
    beq	$a4,$v0,.L5ef57ab8
    sb	$a1,8204($a2)
    sb	$a3,8205($a4)
    sb	$a1,8205($a2)
    sb	$a3,8206($a4)
    sb	$a1,8206($a2)
    sb	$a3,8207($a4)
    sb	$a1,8207($a2)
    sb	$a3,8208($a4)
    beq	$a4,$at,.L5ef57c40
    sb	$a1,8208($a2)
    sb	$a3,8209($a4)
    sb	$a1,8209($a2)
    sb	$a3,8210($a4)
    sb	$a1,8210($a2)
    sb	$a3,8211($a4)
    sb	$a1,8211($a2)
    sb	$a3,8212($a4)
    addiu	$a2,$a2,20
    addiu	$a4,$a4,20
    bne	$a4,$a5,.L5ef57b78
    sb	$a1,8192($a2)
    move	$a0,$a4
    b	.L5ef57ac8
    move	$v0,$a2
.L5ef57c40:
    move	$a0,$a4
    move	$v0,$a2
    addiu	$v0,$v0,16
    b	.L5ef57ac8
    addiu	$a0,$a0,16
.L5ef57c54:
    move	$a0,$a4
    move	$v0,$a2
    addiu	$v0,$v0,8
    b	.L5ef57ac8
    addiu	$a0,$a0,8
.L5ef57c68:
    move	$a0,$a4
    move	$v0,$a2
    addiu	$v0,$v0,4
    b	.L5ef57ac8
    addiu	$a0,$a0,4
.L5ef57c7c:
    sll	$v0,$s4,0x4
    subu	$v0,$v0,$s4
.L5ef57c84:
    sw	$v0,var_5f0b8aac
    ld	$s5,80($sp)
    ld	$s7,72($sp)
    ld	$s4,64($sp)
    ld	$ra,32($sp)
    ld	$s3,56($sp)
    ld	$s6,48($sp)
    beqz	$s8,.L5ef57db0
    ld	$s2,40($sp)
    lw	$v1,var_5f0b8ad8
.L5ef57cac:
    beqz	$v1,.L5ef57dc8
    lw	$a2,var_5f0b8ab4
    beqz	$a2,.L5ef57de0
.L5ef57cb8:
    nop	# was lw $t9, -30352($gp)
    addiu	$a1,$gp,-28956
    jal	ALopenport
    addiu	$a0,$gp,-28964
    beqz	$v0,.L5ef57d68
    sw	$v0,var_5f0b8aa4
    move	$a0,$v0
    la	$a1,local_0x5f0c0000
    # lw $t9, -30376($gp)
    lw	$a2,var_5f0b8aac
    addiu	$a1,$a1,-23192
    jal	ALwritesamps
    addiu	$a1,$a1,8192
    la	$s0,ALgetfilled
    lw	$a0,var_5f0b8aa4
    jalr	$s0
    move	$t9,$s0
    blez	$v0,.L5ef57d24
    la	$s1,sginap
    li	$a0,1
.L5ef57d08:
    jalr	$s1
    move	$t9,$s1
    lw	$a0,var_5f0b8aa4
    jalr	$s0
    move	$t9,$s0
    bgtz	$v0,.L5ef57d08
    li	$a0,1
.L5ef57d24:
    # lw $t9, -30356($gp)
    jal	ALcloseport
    lw	$a0,var_5f0b8aa4
    sw	$zero,var_5f0b8aa4
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef57d50:
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef57d68:
    # lw $t9, -29680($gp)
    la	$a0,local_0x5f0a0000
    jal	ErrorF
    addiu	$a0,$a0,-2704
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef57d94:
    b	.L5ef57a00
    subu	$a0,$a1,$v0
.L5ef57d9c:
    lw	$a5,var_5f0b8ab0
    bnez	$a5,.L5ef57a54
    lw	$s0,var_5f0b8ad8
    bnez	$s8,.L5ef57cac
    lw	$v1,var_5f0b8ad8
.L5ef57db0:
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef57dc8:
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L5ef57de0:
    # lw $t9, -30368($gp)
    jal	ALnewconfig
    nop
    # lw $t9, -30364($gp)
    move	$a0,$v0
    li	$a1,1
    jal	ALsetwidth
    sw	$v0,var_5f0b8ab4
    # lw $t9, -30360($gp)
    li	$a1,1
    jal	ALsetchannels
    lw	$a0,var_5f0b8ab4
    b	.L5ef57cb8
    lw	$a2,var_5f0b8ab4
.L5ef57e18:
    move	$v0,$a2
    move	$a0,$a4
    sb	$t2,8192($a0)
    sb	$t3,8192($v0)
    sb	$t2,8193($a0)
    sb	$t3,8193($v0)
    sb	$t2,8194($a0)
    sb	$t3,8194($v0)
    sb	$t2,8195($a0)
    b	.L5ef57ae0
    sb	$t3,8195($v0)
.end expKeyClick

