# Source: ../soft/so_polymode.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polymode.c
# Total Functions: 2

.text

# Function: __glRenderTriangle
# Declared: Line 24 (Source lines: 26-196)
# Address: 0x0dad30b4 - 0x0dad356c (Size: 1208 bytes, Frame: 160)
.globl __glRenderTriangle
.ent __glRenderTriangle
__glRenderTriangle:
    # Line 40
    move	$a4,$zero
    # Line 26
    addiu	$sp,$sp,-160
    sd	$s0,80($sp)
    move	$s0,$a0
    sd	$s3,88($sp)
    move	$s3,$a3
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$s1,64($sp)
    # Line 39
    move	$s1,$a2
    sd	$s2,96($sp)
    move	$s2,$a3
    # Line 26
    move	$s2,$a2
    move	$s1,$a1
    # Line 40
    lw	$a6,132($a2)
    # Line 39
    move	$t0,$a1
    # Line 40
    lw	$t0,132($a1)
    # sd	gp,72(sp)
    # Line 26
    lui	$a7,0x12
    addiu	$a7,$a7,18356
    # addu	gp,t9,a7
    # Line 40
    lw	$a7,132($a3)
    slt	$at,$t0,$a6
    beqz	$at,.L0dad330c
    slt	$a6,$a6,$a7
    beqz	$a6,.L0dad352c
    slt	$v0,$t0,$a7
.L0dad3124:
    # Line 67
    lwc1	$f6,128($s3)
    lwc1	$f8,128($s1)
    # Line 69
    lwc1	$f0,132($s3)
    lwc1	$f7,132($s1)
    # Line 67
    sub.s	$f8,$f8,$f6
    # Line 68
    lwc1	$f4,128($s2)
    # Line 69
    sub.s	$f7,$f7,$f0
    # Line 70
    lwc1	$f5,132($s2)
    # Line 68
    sub.s	$f4,$f4,$f6
    # Line 70
    sub.s	$f5,$f5,$f0
    # Line 71
    mul.s	$f0,$f4,$f7
    mul.s	$f6,$f8,$f5
    sub.s	$f6,$f6,$f0
    swc1	$f6,0($sp)
    # Line 87
    lw	$v0,0($sp)
    lbu	$at,30525($s0)
    sd	$v0,48($sp)
    sra	$v0,$v0,0x1f
    sltiu	$v0,$v0,1
    sd	$v0,40($sp)
    xor	$v0,$v0,$a4
    addu	$v0,$v0,$s0
    lbu	$v0,30520($v0)
    bne	$at,$v0,.L0dad31a4
    sd	$v0,56($sp)
    # ld	gp,72(sp)
    # Line 90
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dad31a4:
    # Line 98
    swc1	$f5,30196($s0)
    # Line 97
    swc1	$f7,30192($s0)
    # Line 103
    lw	$a2,30440($s0)
    # Line 96
    swc1	$f4,30188($s0)
    # Line 95
    swc1	$f8,30184($s0)
    # Line 103
    andi	$v1,$a2,0x400
    beqz	$v1,.L0dad33e4
    # Line 94
    swc1	$f6,30180($s0)
    ld	$a3,56($sp)
    sd	$s4,104($sp)
    # Line 105
    move	$a0,$a3
    # Line 106
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a3,28088($a3)
.L0dad31dc:
    # Line 116
    sll	$a1,$a0,0x4
    # Line 120
    addu	$v0,$a1,$s2
    # Line 119
    addu	$v1,$a1,$s1
    # Line 116
    lw	$s4,28080($s0)
    lui	$a5,0x2
    and	$a5,$a2,$a5
    sd	$s4,8($sp)
    beqz	$a5,.L0dad33f4
    # Line 115
    lw	$s4,28084($s0)
    # Line 119
    addiu	$v1,$v1,144
    # Line 122
    or	$s4,$a3,$s4
    # Line 121
    addu	$at,$a1,$s3
    # Line 119
    sw	$v1,4($s1)
    # Line 120
    addiu	$v0,$v0,144
    sw	$v0,4($s2)
    # Line 121
    addiu	$at,$at,144
    sw	$at,4($s3)
.L0dad3220:
    # Line 138
    lw	$v0,0($s1)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0dad324c
    # Line 143
    move	$a0,$s0
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0dad324c:
    lw	$v1,0($s2)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s4
    beqz	$v1,.L0dad3278
    # Line 144
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0dad3278:
    lw	$a5,0($s3)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0dad32a4
    # Line 145
    move	$a0,$s0
    lw	$t9,8($s3)
    move	$a1,$s3
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0dad32a4:
    ld	$a0,56($sp)
    # Line 148
    addu	$a0,$a0,$s0
    lbu	$a0,30522($a0)
    li	$at,2
    beq	$a0,$at,.L0dad3450
    ld	$s4,104($sp)
    beqz	$a0,.L0dad3484
    li	$a5,1
    beql	$a0,$a5,.L0dad3340
    # Line 171
    lw	$v1,1700($s0)
.L0dad32cc:
    # ld	gp,72(sp)
.L0dad32d0:
    # Line 192
    addiu	$a0,$s1,144
    sw	$a0,4($s1)
    # Line 196
    ld	$s1,64($sp)
    # Line 194
    addiu	$v0,$s3,144
    # Line 193
    addiu	$v1,$s2,144
    sw	$v1,4($s2)
    # Line 196
    ld	$s2,96($sp)
    ld	$at,8($sp)
    # Line 194
    sw	$v0,4($s3)
    # Line 196
    ld	$s3,88($sp)
    # Line 195
    addiu	$s0,$at,144
    sw	$s0,4($at)
    # Line 196
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dad330c:
    # Line 49
    beqz	$a6,.L0dad3548
    slt	$a5,$t0,$a7
    beqz	$a5,.L0dad332c
    # Line 55
    move	$at,$s1
    # Line 56
    li	$a4,1
    # Line 55
    move	$s1,$s2
    # Line 56
    b	.L0dad3124
    # Line 55
    move	$s2,$at
.L0dad332c:
    # Line 58
    move	$v0,$s1
    move	$s1,$s2
    move	$s2,$s3
    b	.L0dad3124
    move	$s3,$v0
.L0dad3340:
    # Line 171
    andi	$v1,$v1,0x400
    beqz	$v1,.L0dad3368
    # Line 173
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -27756($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a2,$s2
    sd	$ra,112($sp)
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s3
    ld	$ra,112($sp)
.L0dad3368:
    ld	$a5,24($sp)
    lbu	$a5,184($a5)
    beqz	$a5,.L0dad3390
    # Line 180
    move	$a0,$s0
    lw	$t9,12488($s0)
    ld	$a1,24($sp)
    sd	$ra,112($sp)
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a2,32($sp)
    ld	$ra,112($sp)
.L0dad3390:
    ld	$at,32($sp)
    lbu	$at,184($at)
    beqz	$at,.L0dad33b8
    # Line 183
    move	$a0,$s0
    lw	$t9,12488($s0)
    ld	$a1,32($sp)
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a2,16($sp)
    ld	$ra,112($sp)
.L0dad33b8:
    ld	$v0,16($sp)
    lbu	$v0,184($v0)
    beqz	$v0,.L0dad32cc
    # Line 186
    move	$a0,$s0
    lw	$t9,12488($s0)
    ld	$a1,16($sp)
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a2,24($sp)
    b	.L0dad32cc
    ld	$ra,112($sp)
.L0dad33e4:
    sd	$s4,104($sp)
    # Line 108
    move	$a0,$zero
    b	.L0dad31dc
    # Line 109
    lw	$a3,28088($s0)
.L0dad33f4:
    ld	$v1,8($sp)
    # Line 131
    addu	$v0,$a1,$v1
    addiu	$v0,$v0,144
    sw	$v0,4($v1)
    # Line 132
    sw	$v0,4($s1)
    # Line 133
    lw	$at,4($v1)
    sw	$at,4($s2)
    # Line 134
    lw	$a5,4($v1)
    sw	$a5,4($s3)
    lw	$v1,0($v1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a3
    andi	$v1,$v1,0x1b
    beqz	$v1,.L0dad3220
    # Line 138
    ld	$t9,8($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    b	.L0dad3220
    ld	$ra,112($sp)
.L0dad3450:
    ld	$at,48($sp)
    # Line 153
    sll	$at,$at,0x1
    beqz	$at,.L0dad32cc
    # Line 154
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,12088($s0)
    move	$a3,$s3
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a4,40($sp)
    b	.L0dad32cc
    ld	$ra,112($sp)
.L0dad3484:
    # Line 158
    lw	$v0,1700($s0)
    andi	$v0,$v0,0x200
    beqz	$v0,.L0dad34b0
    # Line 160
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -27756($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a2,$s2
    sd	$ra,112($sp)
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s3
    ld	$ra,112($sp)
.L0dad34b0:
    ld	$v1,24($sp)
    lbu	$v1,184($v1)
    beqz	$v1,.L0dad34dc
    ld	$a5,32($sp)
    # Line 166
    lw	$t9,12512($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a1,24($sp)
    ld	$ra,112($sp)
    ld	$a5,32($sp)
.L0dad34dc:
    lbu	$a5,184($a5)
    beqz	$a5,.L0dad3504
    ld	$at,16($sp)
    # Line 167
    lw	$t9,12512($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a1,32($sp)
    ld	$ra,112($sp)
    ld	$at,16($sp)
.L0dad3504:
    lbu	$at,184($at)
    beqzl	$at,.L0dad32d0
    nop
    # Line 168
    lw	$t9,12512($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0dad32cc
    ld	$ra,112($sp)
.L0dad352c:
    # Line 40
    beqz	$v0,.L0dad355c
    # Line 49
    move	$a5,$s1
    # Line 47
    li	$a4,1
    # Line 46
    move	$v1,$s2
    move	$s2,$s3
    # Line 47
    b	.L0dad3124
    # Line 46
    move	$s3,$v1
.L0dad3548:
    # Line 61
    move	$a4,$s1
    move	$s1,$s3
    move	$s3,$a4
    b	.L0dad3124
    # Line 62
    li	$a4,1
.L0dad355c:
    # Line 49
    move	$s1,$s3
    move	$s3,$s2
    b	.L0dad3124
    move	$s2,$a5
.end __glRenderTriangle

# Function: __glDontRenderTriangle
# Declared: Line 768 (Source lines: 771-771)
# Address: 0x0dad356c - 0x0dad3574 (Size: 8 bytes, Frame: 0)
.globl __glDontRenderTriangle
.ent __glDontRenderTriangle
__glDontRenderTriangle:
    # Line 771
    jr	$ra
    nop
.end __glDontRenderTriangle

