# Source: ../soft/so_linespan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linespan.c
# Total Functions: 20

.text

# Function: __glProcessLine
# Declared: Line 28 (Source lines: 29-64)
# Address: 0x0dabc548 - 0x0dabc6e0 (Size: 408 bytes, Frame: 0)
.globl __glProcessLine
.ent __glProcessLine
__glProcessLine:
    # Line 29
    lui	$a1,0x14
    addiu	$a1,$a1,-19680
    # Line 36
    lui	$v0,0xffff
    # Line 37
    lui	$v1,0xffff
    # Line 29
    lui	$at,0x1
    ori	$at,$at,0x150
    subu	$sp,$sp,$at
    sd	$s4,24($sp)
    # Line 41
    move	$s4,$zero
    # sd	gp,8(sp)
    # Line 29
    # addu	gp,t9,a1
    sd	$s5,56($sp)
    sd	$s3,48($sp)
    move	$a2,$s8
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 44
    move	$s3,$s0
    sb	$zero,30480($a0)
    sd	$a2,16($sp)
    # Line 29
    addu	$s8,$sp,$at
    # Line 38
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    # Line 37
    addu	$v1,$v1,$s8
    # Line 36
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,32752
    # Line 37
    addiu	$v1,$v1,-16
    # Line 38
    addiu	$a0,$a0,-272
    sw	$a0,30476($s0)
    # Line 37
    sw	$v1,30472($s0)
    # Line 42
    lw	$a2,12376($s0)
    # Line 39
    lw	$at,11768($s0)
    # Line 36
    sw	$v0,30468($s0)
    # Line 44
    blez	$a2,.L0dabc654
    # Line 39
    sw	$at,30484($s0)
    # Line 44
    sll	$s5,$a2,0x2
    bnez	$s4,.L0dabc618
    sd	$ra,40($sp)
    # Line 54
    lw	$t9,12248($s3)
.L0dabc5e0:
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0dabc600
    ld	$ra,40($sp)
    lbu	$at,30480($s0)
    # Line 55
    li	$v0,1
    # Line 54
    bnez	$at,.L0dabc6bc
    # Line 56
    li	$s4,1
.L0dabc600:
    # Line 47
    addiu	$s3,$s3,4
    addu	$v0,$s5,$s0
    beql	$v0,$s3,.L0dabc658
    sd	$ra,40($sp)
    # Line 44
    beqzl	$s4,.L0dabc5e0
    # Line 54
    lw	$t9,12248($s3)
.L0dabc618:
    # Line 49
    lw	$t9,12312($s3)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0dabc600
    ld	$ra,40($sp)
    # Line 51
    ld	$v1,16($sp)
    li	$v0,1
    # ld	gp,8(sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$s5,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0dabc654:
    sd	$ra,40($sp)
.L0dabc658:
    ld	$s3,48($sp)
    # Line 47
    beqz	$s4,.L0dabc690
    ld	$s5,56($sp)
    # Line 62
    lw	$t9,12396($s0)
    jalr	$t9
    move	$a0,$s0
    # ld	gp,8(sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    ld	$ra,40($sp)
    ld	$a0,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0dabc690:
    # Line 64
    lw	$t9,12392($s0)
    jalr	$t9
    move	$a0,$s0
    # ld	gp,8(sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    ld	$ra,40($sp)
    ld	$a1,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0dabc6bc:
    # Line 55
    ld	$a2,16($sp)
    # ld	gp,8(sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$s5,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.end __glProcessLine

# Function: __glProcessLine3NW
# Declared: Line 77 (Source lines: 78-106)
# Address: 0x0dabc6e0 - 0x0dabc83c (Size: 348 bytes, Frame: 0)
.globl __glProcessLine3NW
.ent __glProcessLine3NW
__glProcessLine3NW:
    # Line 83
    lui	$v0,0xffff
    # Line 85
    lui	$a1,0xffff
    # Line 78
    move	$a2,$s8
    lui	$at,0x1
    ori	$at,$at,0x140
    subu	$sp,$sp,$at
    sd	$a2,16($sp)
    sd	$ra,24($sp)
    sd	$s1,32($sp)
    move	$s1,$a0
    # Line 88
    sb	$zero,30480($s1)
    # sd	gp,8(sp)
    # Line 78
    addu	$s8,$sp,$at
    # Line 85
    addu	$a1,$a1,$s8
    # Line 83
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,32752
    # Line 85
    addiu	$a1,$a1,-272
    sw	$a1,30476($s1)
    # Line 84
    lui	$v1,0xffff
    addu	$v1,$v1,$s8
    addiu	$v1,$v1,-16
    sw	$v1,30472($s1)
    # Line 78
    lui	$v1,0x14
    addiu	$v1,$v1,-20088
    # addu	gp,t9,v1
    # Line 91
    lw	$t9,12248($s1)
    # Line 86
    lw	$at,11768($s1)
    # Line 83
    sw	$v0,30468($s1)
    # Line 91
    jalr	$t9
    # Line 86
    sw	$at,30484($s1)
    # Line 91
    beqz	$v0,.L0dabc7b4
    # Line 92
    ld	$v1,16($sp)
    # Line 91
    lbu	$at,30480($s1)
    beqz	$at,.L0dabc784
    # Line 92
    li	$v0,1
    # ld	gp,8(sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0dabc784:
    # Line 102
    lw	$t9,12316($s1)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dabc7ec
    # Line 103
    ld	$a0,16($sp)
    li	$v0,1
    # ld	gp,8(sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0dabc7b4:
    # Line 95
    lw	$t9,12252($s1)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dabc814
    # Line 96
    ld	$a2,16($sp)
    # Line 95
    lbu	$a1,30480($s1)
    beqz	$a1,.L0dabc7ec
    # Line 96
    li	$v0,1
    # ld	gp,8(sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.L0dabc7ec:
    # Line 106
    lw	$t9,12320($s1)
    jalr	$t9
    move	$a0,$s1
    # ld	gp,8(sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$at,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0dabc814:
    # Line 99
    lw	$t9,12256($s1)
    jalr	$t9
    move	$a0,$s1
    # ld	gp,8(sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$v1,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glProcessLine3NW

# Function: __glWideLineRep
# Declared: Line 114 (Source lines: 115-156)
# Address: 0x0dabc83c - 0x0dabc99c (Size: 352 bytes, Frame: 240)
.globl __glWideLineRep
.ent __glWideLineRep
__glWideLineRep:
    # Line 119
    lw	$a2,12376($a0)
    # Line 120
    lw	$a3,12380($a0)
    # Line 115
    addiu	$sp,$sp,-112
    sd	$s1,48($sp)
    sd	$s3,72($sp)
    sd	$s4,56($sp)
    sd	$s7,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    # sd	gp,8(sp)
    sd	$s2,24($sp)
    # Line 125
    lw	$s2,29948($a0)
    # Line 115
    lui	$at,0x14
    addiu	$at,$at,-20436
    # Line 125
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dabc984
    # Line 115
    nop
    sd	$s6,80($sp)
    sd	$ra,64($sp)
    sd	$s5,40($sp)
    # Line 125
    li	$s7,-1
    sll	$s1,$a3,0x2
    sll	$s4,$a2,0x2
    slt	$s3,$a2,$a3
    subu	$v0,$a3,$a2
    b	.L0dabc8e0
    sd	$v0,0($sp)
.L0dabc8a8:
    # Line 127
    beqzl	$s6,.L0dabc954
    # Line 146
    lw	$t9,12400($s0)
    # Line 144
    lw	$t9,12404($s0)
    jalr	$t9
    move	$a0,$s0
.L0dabc8bc:
    # Line 148
    lw	$v1,29856($s0)
.L0dabc8c0:
    beqzl	$v1,.L0dabc948
    # Line 150
    lw	$v1,29876($s0)
    # Line 152
    lw	$a1,29872($s0)
    addiu	$a1,$a1,1
    sw	$a1,29872($s0)
.L0dabc8d4:
    # Line 125
    addiu	$s2,$s2,-1
    beql	$s2,$s7,.L0dabc96c
    ld	$s7,32($sp)
.L0dabc8e0:
    # Line 126
    beqz	$s3,.L0dabc8a8
    move	$s6,$zero
    addu	$s5,$s4,$s0
    bnezl	$s6,.L0dabc930
    # Line 129
    lw	$t9,12312($s5)
    # Line 134
    lw	$t9,12248($s5)
.L0dabc8f8:
    jalr	$t9
    move	$a0,$s0
    beqzl	$v0,.L0dabc918
    # Line 127
    addiu	$s5,$s5,4
    # Line 134
    lbu	$at,30480($s0)
    bnez	$at,.L0dabc964
    # Line 139
    li	$s6,1
    # Line 127
    addiu	$s5,$s5,4
.L0dabc918:
    addu	$v0,$s1,$s0
    beq	$v0,$s5,.L0dabc8a8
    nop
    # Line 126
    beqzl	$s6,.L0dabc8f8
    # Line 134
    lw	$t9,12248($s5)
    # Line 129
    lw	$t9,12312($s5)
.L0dabc930:
    jalr	$t9
    move	$a0,$s0
    bnezl	$v0,.L0dabc8c0
    # Line 148
    lw	$v1,29856($s0)
    b	.L0dabc918
    # Line 127
    addiu	$s5,$s5,4
.L0dabc948:
    # Line 150
    addiu	$v1,$v1,1
    b	.L0dabc8d4
    sw	$v1,29876($s0)
.L0dabc954:
    # Line 146
    jalr	$t9
    move	$a0,$s0
    b	.L0dabc8c0
    # Line 148
    lw	$v1,29856($s0)
.L0dabc964:
    # Line 137
    b	.L0dabc8bc
    # Line 136
    sb	$zero,30480($s0)
.L0dabc96c:
    ld	$s5,40($sp)
    ld	$s1,48($sp)
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    ld	$s3,72($sp)
    ld	$s6,80($sp)
.L0dabc984:
    # Line 156
    move	$v0,$zero
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glWideLineRep

# Function: __glWideStippleLineRep
# Declared: Line 164 (Source lines: 165-215)
# Address: 0x0dabc99c - 0x0dabcbe4 (Size: 584 bytes, Frame: 240)
.globl __glWideStippleLineRep
.ent __glWideStippleLineRep
__glWideStippleLineRep:
    # Line 186
    move	$a3,$zero
    # Line 184
    lw	$a2,30476($a0)
    # Line 173
    lw	$a5,12380($a0)
    # Line 172
    lw	$a4,12376($a0)
    # Line 165
    addiu	$sp,$sp,-368
    # Line 185
    addiu	$a7,$sp,0
    sd	$s0,280($sp)
    # Line 165
    move	$s0,$a0
    sd	$s3,272($sp)
    # Line 176
    lw	$s3,452($a0)
    # sd	gp,288(sp)
    # Line 165
    lui	$at,0x14
    sd	$s2,264($sp)
    # Line 174
    lw	$s2,30252($a0)
    # Line 165
    addiu	$at,$at,-20788
    # addu	gp,t9,at
    # Line 186
    addiu	$s2,$s2,31
    sra	$s2,$s2,0x5
    blez	$s2,.L0dabca64
    move	$a6,$s2
    andi	$a0,$s2,0x3
    beqz	$a0,.L0dabca18
    move	$t1,$a7
.L0dabc9f8:
    addiu	$a3,$a3,1
    # Line 187
    addiu	$a7,$a7,4
    addiu	$a2,$a2,4
    lw	$v0,-4($a2)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dabc9f8
    sw	$v0,-4($a7)
    move	$t1,$a7
.L0dabca18:
    sra	$v1,$a6,0x2
    move	$t2,$a3
    beqz	$v1,.L0dabca64
    move	$t0,$a2
    move	$a0,$t2
    move	$a2,$t1
    move	$a3,$t0
.L0dabca34:
    lw	$v1,0($a3)
    sw	$v1,0($a2)
    lw	$v0,4($a3)
    sw	$v0,4($a2)
    lw	$at,8($a3)
    addiu	$a2,$a2,16
    sw	$at,-8($a2)
    addiu	$a3,$a3,16
    lw	$a1,-4($a3)
    # Line 186
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0dabca34
    # Line 187
    sw	$a1,-4($a2)
.L0dabca64:
    sd	$s6,336($sp)
    sd	$s5,312($sp)
    # Line 191
    sll	$s5,$a4,0x2
    sd	$s4,320($sp)
    slt	$s4,$a4,$a5
    addiu	$s3,$s3,-1
    bltz	$s3,.L0dabcbb8
    sd	$s1,304($sp)
    li	$s6,-1
    sd	$ra,328($sp)
    sd	$s7,296($sp)
    sll	$s1,$a5,0x2
    subu	$a1,$a5,$a4
    bnez	$s4,.L0dabcb7c
    sd	$a1,256($sp)
.L0dabcaa0:
    # Line 198
    lw	$t9,12404($s0)
.L0dabcaa4:
    jalr	$t9
    move	$a0,$s0
    sd	$s7,296($sp)
.L0dabcab0:
    ld	$s7,296($sp)
    # Line 203
    move	$a3,$zero
    # Line 199
    beqz	$s3,.L0dabcb68
    ld	$ra,328($sp)
    # Line 202
    addiu	$a2,$sp,0
    # Line 201
    lw	$a7,30476($s0)
    ld	$s7,296($sp)
    # Line 203
    move	$t0,$s2
    blez	$s2,.L0dabcb50
    ld	$ra,328($sp)
    andi	$a0,$s2,0x3
    beqz	$a0,.L0dabcb04
    move	$a6,$a2
.L0dabcae4:
    addiu	$a3,$a3,1
    # Line 204
    addiu	$a7,$a7,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dabcae4
    sw	$at,-4($a7)
    move	$a6,$a2
.L0dabcb04:
    move	$a5,$a3
    move	$a4,$a7
    sra	$v0,$t0,0x2
    beqz	$v0,.L0dabcb50
    move	$a3,$a4
    move	$a0,$a5
    move	$a2,$a6
.L0dabcb20:
    lw	$v0,0($a2)
    sw	$v0,0($a3)
    lw	$at,4($a2)
    sw	$at,4($a3)
    lw	$a1,8($a2)
    addiu	$a3,$a3,16
    sw	$a1,-8($a3)
    addiu	$a2,$a2,16
    lw	$v1,-4($a2)
    # Line 203
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0dabcb20
    # Line 204
    sw	$v1,-4($a3)
.L0dabcb50:
    # Line 203
    lw	$v1,29856($s0)
    beqzl	$v1,.L0dabcbac
    # Line 208
    lw	$v0,29876($s0)
    # Line 210
    lw	$a1,29872($s0)
    addiu	$a1,$a1,1
    sw	$a1,29872($s0)
.L0dabcb68:
    # Line 191
    addiu	$s3,$s3,-1
    beq	$s3,$s6,.L0dabcbbc
    # Line 215
    move	$v0,$zero
    # Line 191
    beqzl	$s4,.L0dabcaa4
    # Line 198
    lw	$t9,12404($s0)
.L0dabcb7c:
    sd	$ra,328($sp)
    # Line 191
    addu	$s7,$s5,$s0
    # Line 193
    lw	$t9,12312($s7)
.L0dabcb88:
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0dabcab0
    # Line 192
    addu	$at,$s1,$s0
    addiu	$s7,$s7,4
    bnel	$at,$s7,.L0dabcb88
    # Line 193
    lw	$t9,12312($s7)
    b	.L0dabcaa0
    ld	$s7,296($sp)
.L0dabcbac:
    # Line 208
    addiu	$v0,$v0,1
    b	.L0dabcb68
    sw	$v0,29876($s0)
.L0dabcbb8:
    # Line 215
    move	$v0,$zero
.L0dabcbbc:
    # ld	gp,288(sp)
    ld	$s0,280($sp)
    ld	$s1,304($sp)
    ld	$s2,264($sp)
    ld	$s3,272($sp)
    ld	$s4,320($sp)
    ld	$s5,312($sp)
    ld	$s6,336($sp)
    jr	$ra
    addiu	$sp,$sp,368
.end __glWideStippleLineRep

# Function: __glDrawBothLine
# Declared: Line 226 (Source lines: 227-297)
# Address: 0x0dabcbe4 - 0x0dabd07c (Size: 1176 bytes, Frame: 0)
.globl __glDrawBothLine
.ent __glDrawBothLine
__glDrawBothLine:
    # Line 241
    lw	$a3,30468($a0)
    # Line 235
    lw	$a5,12384($a0)
    # Line 234
    lw	$a4,12380($a0)
    # Line 227
    lui	$a2,0xffff
    move	$v0,$s8
    li	$at,0x8080
    subu	$sp,$sp,$at
    sd	$v0,88($sp)
    sd	$s1,72($sp)
    move	$s1,$a0
    sd	$s4,80($sp)
    # sd	gp,96(sp)
    addu	$s8,$sp,$at
    lui	$at,0x14
    addiu	$at,$at,-21372
    # addu	gp,t9,at
    # Line 242
    lbu	$at,3104($a0)
    # Line 233
    lw	$s4,30252($a0)
    # Line 227
    addu	$a2,$a2,$s8
    # Line 242
    beqz	$at,.L0dabcf54
    # Line 227
    addiu	$a2,$a2,32752
    # Line 244
    blez	$s4,.L0dabcd40
    move	$a0,$zero
    andi	$a6,$s4,0x3
    beqz	$a6,.L0dabcc80
    move	$a7,$s4
.L0dabcc4c:
    # Line 245
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    # Line 244
    addiu	$a0,$a0,1
    # Line 245
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,16
    lwc1	$f0,-4($a3)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabcc4c
    swc1	$f0,-4($a2)
.L0dabcc80:
    move	$t1,$a0
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0dabcd30
    move	$a6,$a3
    move	$a0,$t1
    move	$a2,$t0
    move	$a3,$a6
.L0dabcca0:
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    lwc1	$f1,56($a3)
    addiu	$a2,$a2,64
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 244
    addiu	$a0,$a0,4
    bne	$s4,$a0,.L0dabcca0
    # Line 245
    swc1	$f0,-4($a2)
.L0dabcd30:
    sd	$s5,32($sp)
    sd	$s3,56($sp)
    sd	$s6,8($sp)
    sd	$s7,16($sp)
.L0dabcd40:
    sd	$s2,40($sp)
    sd	$s0,48($sp)
    sd	$ra,24($sp)
    sd	$s5,32($sp)
    # Line 256
    move	$s5,$zero
    sd	$s3,56($sp)
    sll	$s3,$a5,0x2
    sd	$s7,16($sp)
    sll	$s7,$a4,0x2
    sd	$s6,8($sp)
    slt	$s6,$a4,$a5
    subu	$a1,$a5,$a4
    sd	$a1,64($sp)
.L0dabcd74:
    beqz	$s5,.L0dabce34
    # Line 260
    addiu	$at,$s1,30888
    sw	$at,30484($s1)
.L0dabcd80:
    # Line 262
    move	$s2,$zero
    beqz	$s6,.L0dabcde0
    addu	$s0,$s7,$s1
    bnezl	$s2,.L0dabcdd0
    # Line 265
    lw	$t9,12312($s0)
    # Line 270
    lw	$t9,12248($s0)
.L0dabcd98:
    jalr	$t9
    move	$a0,$s1
    beqzl	$v0,.L0dabcdb8
    # Line 263
    addiu	$s0,$s0,4
    # Line 270
    lbu	$v0,30480($s1)
    bnez	$v0,.L0dabcfe8
    # Line 275
    li	$s2,1
    # Line 263
    addiu	$s0,$s0,4
.L0dabcdb8:
    addu	$v1,$s3,$s1
    beq	$v1,$s0,.L0dabcde4
    # Line 284
    move	$a4,$s4
    # Line 262
    beqzl	$s2,.L0dabcd98
    # Line 270
    lw	$t9,12248($s0)
    # Line 265
    lw	$t9,12312($s0)
.L0dabcdd0:
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dabcdb8
    # Line 263
    addiu	$s0,$s0,4
.L0dabcde0:
    # Line 284
    move	$a4,$s4
.L0dabcde4:
    # Line 280
    beqz	$s5,.L0dabce40
    lui	$a3,0xffff
.L0dabcdec:
    li	$a1,2
.L0dabcdf0:
    # Line 256
    addiu	$s5,$s5,1
    bne	$s5,$a1,.L0dabcd74
    # Line 297
    move	$v0,$zero
    # ld	gp,96(sp)
    ld	$s0,48($sp)
    ld	$s1,72($sp)
    ld	$s2,40($sp)
    ld	$s3,56($sp)
    ld	$s4,80($sp)
    ld	$s5,32($sp)
    ld	$s6,8($sp)
    ld	$s7,16($sp)
    ld	$ra,24($sp)
    ld	$a2,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.L0dabce34:
    # Line 258
    addiu	$at,$s1,30668
    b	.L0dabcd80
    sw	$at,30484($s1)
.L0dabce40:
    # Line 282
    lbu	$v0,3104($s1)
    # Line 281
    lw	$a2,30468($s1)
    addu	$a3,$a3,$s8
    # Line 282
    beqz	$v0,.L0dabcff0
    addiu	$a3,$a3,32752
    # Line 284
    move	$a0,$zero
    blez	$s4,.L0dabcdec
    andi	$a5,$s4,0x3
    beqz	$a5,.L0dabcea0
    move	$a7,$a0
.L0dabce68:
    # Line 285
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    # Line 284
    addiu	$a0,$a0,1
    # Line 285
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,16
    lwc1	$f0,-4($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dabce68
    swc1	$f0,-4($a2)
    move	$a7,$a0
.L0dabcea0:
    sra	$at,$a4,0x2
    move	$a5,$a2
    beqz	$at,.L0dabcf4c
    move	$a6,$a3
    move	$a2,$a5
    move	$a3,$a7
    move	$a0,$a6
.L0dabcebc:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a2)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a2)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a2)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a2)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a2)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a2)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a2)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a2)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a2)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a2)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a2)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a2)
    lwc1	$f1,56($a0)
    addiu	$a2,$a2,64
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 284
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0dabcebc
    # Line 285
    swc1	$f0,-4($a2)
.L0dabcf4c:
    b	.L0dabcdf0
    li	$a1,2
.L0dabcf54:
    # Line 248
    blez	$s4,.L0dabcd40
    move	$a0,$zero
    andi	$a6,$s4,0x3
    beqz	$a6,.L0dabcf84
    move	$a7,$s4
.L0dabcf68:
    addiu	$a0,$a0,1
    # Line 251
    addiu	$a2,$a2,16
    # Line 250
    addiu	$a3,$a3,16
    # Line 249
    lwc1	$f0,-16($a3)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabcf68
    swc1	$f0,-16($a2)
.L0dabcf84:
    move	$t1,$a0
    move	$t0,$a2
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dabcfd4
    move	$a6,$a3
    move	$a3,$t1
    move	$a0,$t0
    move	$a2,$a6
.L0dabcfa4:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,32($a2)
    # Line 251
    addiu	$a0,$a0,64
    # Line 249
    swc1	$f2,-32($a0)
    # Line 250
    addiu	$a2,$a2,64
    # Line 249
    lwc1	$f1,-16($a2)
    # Line 248
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0dabcfa4
    # Line 249
    swc1	$f1,-16($a0)
.L0dabcfd4:
    sd	$s5,32($sp)
    sd	$s3,56($sp)
    sd	$s6,8($sp)
    b	.L0dabcd40
    sd	$s7,16($sp)
.L0dabcfe8:
    # Line 273
    b	.L0dabcde0
    # Line 272
    sb	$zero,30480($s1)
.L0dabcff0:
    # Line 288
    move	$a0,$zero
    blez	$s4,.L0dabcdec
    move	$a4,$s4
    andi	$a5,$s4,0x3
    beqz	$a5,.L0dabd028
    move	$a7,$a0
.L0dabd008:
    addiu	$a0,$a0,1
    # Line 291
    addiu	$a2,$a2,16
    # Line 290
    addiu	$a3,$a3,16
    # Line 289
    lwc1	$f1,-16($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0dabd008
    swc1	$f1,-16($a2)
    move	$a7,$a0
.L0dabd028:
    move	$a6,$a3
    move	$a5,$a2
    sra	$v1,$a4,0x2
    beqz	$v1,.L0dabd074
    move	$a2,$a5
    move	$a0,$a7
    move	$a3,$a6
.L0dabd044:
    lwc1	$f1,0($a3)
    swc1	$f1,0($a2)
    lwc1	$f0,16($a3)
    swc1	$f0,16($a2)
    lwc1	$f3,32($a3)
    # Line 291
    addiu	$a2,$a2,64
    # Line 289
    swc1	$f3,-32($a2)
    # Line 290
    addiu	$a3,$a3,64
    # Line 289
    lwc1	$f2,-16($a3)
    # Line 288
    addiu	$a0,$a0,4
    bne	$s4,$a0,.L0dabd044
    # Line 289
    swc1	$f2,-16($a2)
.L0dabd074:
    b	.L0dabcdf0
    li	$a1,2
.end __glDrawBothLine

# Function: __glDrawBothStippledLine
# Declared: Line 305 (Source lines: 306-385)
# Address: 0x0dabd07c - 0x0dabd5e0 (Size: 1380 bytes, Frame: 0)
.globl __glDrawBothStippledLine
.ent __glDrawBothStippledLine
__glDrawBothStippledLine:
    # Line 323
    lw	$a2,30468($a0)
    # Line 314
    lw	$a5,12380($a0)
    # Line 313
    lw	$a4,12384($a0)
    # Line 306
    lui	$a3,0xffff
    li	$v1,0x8180
    subu	$sp,$sp,$v1
    sd	$s2,64($sp)
    sd	$s4,24($sp)
    sd	$s5,88($sp)
    sd	$s6,40($sp)
    sd	$s7,32($sp)
    sd	$ra,48($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s3,72($sp)
    # Line 316
    lw	$s3,30252($a0)
    # sd	gp,56(sp)
    # Line 306
    move	$at,$s8
    sd	$s0,80($sp)
    lui	$s0,0x14
    addu	$s8,$sp,$v1
    addu	$a3,$a3,$s8
    sd	$at,96($sp)
    # Line 324
    lbu	$at,3104($a0)
    # Line 306
    addiu	$s0,$s0,-22548
    # addu	gp,t9,s0
    # Line 324
    beqz	$at,.L0dabd4d0
    # Line 306
    addiu	$a3,$a3,32752
    # Line 326
    blez	$s3,.L0dabd1e4
    move	$a0,$zero
    andi	$a6,$s3,0x3
    beqz	$a6,.L0dabd134
    move	$a7,$s3
.L0dabd100:
    # Line 327
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a2)
    # Line 326
    addiu	$a0,$a0,1
    # Line 327
    addiu	$a3,$a3,16
    swc1	$f1,-8($a3)
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabd100
    swc1	$f0,-4($a3)
.L0dabd134:
    move	$t1,$a0
    move	$t0,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dabd1e4
    move	$a6,$a2
    move	$a2,$t1
    move	$a3,$t0
    move	$a0,$a6
.L0dabd154:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 326
    addiu	$a2,$a2,4
    bne	$s3,$a2,.L0dabd154
    # Line 327
    swc1	$f0,-4($a3)
.L0dabd1e4:
    # Line 345
    move	$a0,$zero
.L0dabd1e8:
    # Line 343
    lw	$a2,30476($s1)
    # Line 345
    addiu	$s4,$s3,31
    # Line 330
    lui	$a3,0xffff
    addu	$a3,$a3,$s8
    # Line 345
    sra	$s4,$s4,0x5
    blez	$s4,.L0dabd27c
    # Line 330
    addiu	$a3,$a3,32496
    andi	$a6,$s4,0x3
    beqz	$a6,.L0dabd22c
    # Line 345
    move	$t1,$s4
.L0dabd210:
    addiu	$a0,$a0,1
    # Line 346
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabd210
    sw	$at,-4($a3)
.L0dabd22c:
    move	$a7,$a0
    move	$a6,$a3
    sra	$v0,$t1,0x2
    beqz	$v0,.L0dabd27c
    move	$t0,$a2
    move	$a3,$a7
    move	$a2,$a6
    move	$a0,$t0
.L0dabd24c:
    lw	$v0,0($a0)
    sw	$v0,0($a2)
    lw	$at,4($a0)
    sw	$at,4($a2)
    lw	$a1,8($a0)
    addiu	$a2,$a2,16
    sw	$a1,-8($a2)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 345
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0dabd24c
    # Line 346
    sw	$v1,-4($a2)
.L0dabd27c:
    # Line 350
    move	$s5,$zero
    sll	$s2,$a4,0x2
    sll	$s7,$a5,0x2
    slt	$s6,$a5,$a4
    subu	$v1,$a4,$a5
    sd	$v1,8($sp)
.L0dabd294:
    beqz	$s5,.L0dabd4c8
    # Line 352
    addiu	$v1,$s1,30668
    # Line 354
    addiu	$a1,$s1,30888
    sw	$a1,30484($s1)
.L0dabd2a4:
    beqz	$s6,.L0dabd2cc
    addu	$s0,$s7,$s1
    # Line 357
    lw	$t9,12312($s0)
.L0dabd2b0:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0dabd2cc
    # Line 356
    addu	$at,$s2,$s1
    addiu	$s0,$s0,4
    bnel	$at,$s0,.L0dabd2b0
    # Line 357
    lw	$t9,12312($s0)
.L0dabd2cc:
    andi	$a4,$s3,0x3
    # Line 362
    beqz	$s5,.L0dabd320
    # Line 366
    move	$a0,$zero
.L0dabd2d8:
    li	$v0,2
.L0dabd2dc:
    # Line 350
    addiu	$s5,$s5,1
    bne	$s5,$v0,.L0dabd294
    # Line 385
    move	$v0,$zero
    # ld	gp,56(sp)
    ld	$s0,80($sp)
    ld	$s1,16($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,24($sp)
    ld	$s5,88($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$ra,48($sp)
    ld	$v1,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0dabd320:
    # Line 363
    lw	$a3,30468($s1)
    # Line 364
    lbu	$a1,3104($s1)
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    beqz	$a1,.L0dabd558
    addiu	$a2,$a2,32752
    # Line 366
    blezl	$s3,.L0dabd430
    # Line 377
    lw	$a3,30476($s1)
    beqz	$a4,.L0dabd37c
    # Line 366
    move	$a5,$s3
.L0dabd348:
    # Line 367
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a2)
    # Line 366
    addiu	$a0,$a0,1
    # Line 367
    addiu	$a3,$a3,16
    swc1	$f1,-8($a3)
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dabd348
    swc1	$f0,-4($a3)
.L0dabd37c:
    move	$a4,$a2
    move	$a7,$a0
    move	$a6,$a3
    sra	$at,$a5,0x2
    beqz	$at,.L0dabd42c
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0dabd39c:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 366
    addiu	$a3,$a3,4
    bne	$s3,$a3,.L0dabd39c
    # Line 367
    swc1	$f0,-4($a0)
.L0dabd42c:
    # Line 377
    lw	$a3,30476($s1)
.L0dabd430:
    # Line 379
    move	$a0,$zero
    move	$a5,$s4
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    blez	$s4,.L0dabd2d8
    addiu	$a2,$a2,32496
    andi	$a4,$s4,0x3
    beqzl	$a4,.L0dabd474
    move	$a4,$a2
.L0dabd454:
    addiu	$a0,$a0,1
    # Line 380
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dabd454
    sw	$at,-4($a3)
    move	$a4,$a2
.L0dabd474:
    move	$a7,$a0
    move	$a6,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dabd4c0
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0dabd490:
    lw	$v0,0($a2)
    sw	$v0,0($a0)
    lw	$at,4($a2)
    sw	$at,4($a0)
    lw	$a1,8($a2)
    addiu	$a0,$a0,16
    sw	$a1,-8($a0)
    addiu	$a2,$a2,16
    lw	$v1,-4($a2)
    # Line 379
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0dabd490
    # Line 380
    sw	$v1,-4($a0)
.L0dabd4c0:
    b	.L0dabd2dc
    li	$v0,2
.L0dabd4c8:
    # Line 352
    b	.L0dabd2a4
    sw	$v1,30484($s1)
.L0dabd4d0:
    # Line 330
    blez	$s3,.L0dabd1e4
    move	$a0,$zero
    andi	$a6,$s3,0x3
    beqz	$a6,.L0dabd500
    move	$a7,$s3
.L0dabd4e4:
    addiu	$a0,$a0,1
    # Line 333
    addiu	$a3,$a3,16
    # Line 332
    addiu	$a2,$a2,16
    # Line 331
    lwc1	$f0,-16($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabd4e4
    swc1	$f0,-16($a3)
.L0dabd500:
    move	$t1,$a0
    move	$t0,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0dabd550
    move	$a6,$a2
    move	$a0,$t1
    move	$a2,$t0
    move	$a3,$a6
.L0dabd520:
    lwc1	$f0,0($a3)
    swc1	$f0,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    lwc1	$f2,32($a3)
    # Line 333
    addiu	$a2,$a2,64
    # Line 331
    swc1	$f2,-32($a2)
    # Line 332
    addiu	$a3,$a3,64
    # Line 331
    lwc1	$f1,-16($a3)
    # Line 330
    addiu	$a0,$a0,4
    bne	$s3,$a0,.L0dabd520
    # Line 331
    swc1	$f1,-16($a2)
.L0dabd550:
    b	.L0dabd1e8
    # Line 345
    move	$a0,$zero
.L0dabd558:
    # Line 370
    blez	$s3,.L0dabd42c
    move	$a0,$zero
    andi	$a4,$s3,0x3
    beqz	$a4,.L0dabd588
    move	$a5,$s3
.L0dabd56c:
    addiu	$a0,$a0,1
    # Line 373
    addiu	$a3,$a3,16
    # Line 372
    addiu	$a2,$a2,16
    # Line 371
    lwc1	$f1,-16($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dabd56c
    swc1	$f1,-16($a3)
.L0dabd588:
    move	$a4,$a2
    move	$a7,$a0
    move	$a6,$a3
    sra	$at,$a5,0x2
    beqz	$at,.L0dabd5d8
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0dabd5a8:
    lwc1	$f1,0($a2)
    swc1	$f1,0($a0)
    lwc1	$f0,16($a2)
    swc1	$f0,16($a0)
    lwc1	$f3,32($a2)
    # Line 373
    addiu	$a0,$a0,64
    # Line 371
    swc1	$f3,-32($a0)
    # Line 372
    addiu	$a2,$a2,64
    # Line 371
    lwc1	$f2,-16($a2)
    # Line 370
    addiu	$a3,$a3,4
    bne	$s3,$a3,.L0dabd5a8
    # Line 371
    swc1	$f2,-16($a0)
.L0dabd5d8:
    b	.L0dabd430
    # Line 377
    lw	$a3,30476($s1)
.end __glDrawBothStippledLine

# Function: __glScissorLine
# Declared: Line 388 (Source lines: 389-523)
# Address: 0x0dabd5e0 - 0x0dabd9b0 (Size: 976 bytes, Frame: 128)
.globl __glScissorLine
.ent __glScissorLine
__glScissorLine:
    # Line 389
    move	$a3,$a0
    # Line 413
    lw	$a4,29876($a0)
    # Line 405
    lw	$t9,29712($a0)
    # Line 389
    addiu	$sp,$sp,-128
    sd	$s7,64($sp)
    # Line 410
    lw	$s7,29892($a0)
    sd	$s5,56($sp)
    # Line 409
    lw	$s5,29884($a0)
    sd	$s8,48($sp)
    # Line 407
    lw	$s8,29716($a0)
    sd	$s4,72($sp)
    # Line 404
    lw	$t1,29704($a0)
    # Line 412
    lw	$a2,29872($a0)
    # Line 406
    lw	$s4,29708($a0)
    # Line 402
    lw	$a6,30252($a0)
    # Line 413
    slt	$at,$a2,$t1
    bnez	$at,.L0dabd770
    # Line 402
    move	$a7,$a6
    # Line 413
    slt	$v0,$a2,$t9
    beqz	$v0,.L0dabd770
    # Line 418
    slt	$v1,$a4,$s4
    bnez	$v1,.L0dabd770
    slt	$a1,$a4,$s8
    beqz	$a1,.L0dabd770
    addiu	$a0,$a7,-1
    mult	$a0,$s5
    mflo	$a5
    addu	$a5,$a5,$a2
    slt	$at,$a5,$t1
    bnez	$at,.L0dabd684
    slt	$at,$a5,$t9
    beqzl	$at,.L0dabd688
    # Line 432
    lw	$a5,29896($a3)
    # Line 425
    mult	$a0,$s7
    mflo	$a5
    addu	$a5,$a5,$a4
    slt	$v0,$a5,$s4
    bnez	$v0,.L0dabd684
    slt	$at,$a5,$s8
    bnez	$at,.L0dabd998
    # Line 427
    move	$v0,$zero
.L0dabd684:
    # Line 432
    lw	$a5,29896($a3)
.L0dabd688:
    # Line 431
    lw	$t8,29888($a3)
    # Line 433
    lw	$t2,29900($a3)
    # Line 430
    lw	$t0,29880($a3)
    sd	$t8,24($sp)
    # Line 433
    bltz	$t2,.L0dabd984
    # Line 430
    move	$t3,$t0
.L0dabd6a0:
    # Line 438
    srl	$v0,$t2,0x10
    multu	$a0,$v0
    mflo	$a1
    nop
    andi	$at,$t2,0xffff
    mult	$a0,$at
    srl	$v1,$a5,0x10
    addu	$v1,$v1,$a1
    andi	$a1,$a5,0xffff
    mflo	$at
    addu	$a1,$a1,$at
    srl	$a1,$a1,0x10
    addu	$v1,$v1,$a1
    srl	$v1,$v1,0xf
    mult	$s5,$v1
    sd	$v1,8($sp)
    mflo	$v0
    subu	$v1,$a7,$v1
    addiu	$v1,$v1,-1
    mult	$v1,$t3
    sd	$v1,0($sp)
    addu	$v0,$v0,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    sd	$v0,16($sp)
    slt	$v0,$v0,$t1
    bnez	$v0,.L0dabd784
    ld	$v1,16($sp)
    slt	$v1,$v1,$t9
    beqz	$v1,.L0dabd784
    ld	$at,8($sp)
    # Line 454
    mult	$s7,$at
    ld	$a1,0($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$t8
    addu	$a0,$a0,$a4
    mflo	$a1
    addu	$a0,$a0,$a1
    slt	$a1,$a0,$s4
    bnez	$a1,.L0dabd784
    slt	$v0,$a0,$s8
    beqzl	$v0,.L0dabd788
    sd	$s0,96($sp)
    # Line 456
    move	$v0,$zero
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabd770:
    # Line 463
    lw	$t0,29880($a3)
    lw	$v1,29888($a3)
    lw	$t2,29900($a3)
    # Line 462
    lw	$a5,29896($a3)
    sd	$v1,24($sp)
.L0dabd784:
    sd	$s0,96($sp)
.L0dabd788:
    sd	$s1,88($sp)
    ld	$t8,24($sp)
    # Line 463
    move	$t3,$t0
    move	$a0,$a6
    # Line 480
    lw	$a1,30476($a3)
    # Line 479
    move	$a7,$zero
    # Line 480
    beqz	$a6,.L0dabd930
    sd	$a1,32($sp)
    sd	$a3,40($sp)
    li	$s0,-1
    lui	$s1,0x7fff
    b	.L0dabd7d0
    ori	$s1,$s1,0xffff
.L0dabd7bc:
    ld	$at,32($sp)
    # Line 514
    sw	$a6,0($at)
    addiu	$at,$at,4
    beqz	$a0,.L0dabd91c
    sd	$at,32($sp)
.L0dabd7d0:
    # Line 488
    li	$a6,-1
    # Line 482
    slti	$v0,$a0,33
    bnez	$v0,.L0dabd7e4
    move	$t0,$a0
    # Line 484
    li	$t0,32
.L0dabd7e4:
    lui	$a3,0x8000
    # Line 486
    subu	$a0,$a0,$t0
    # Line 490
    addiu	$t0,$t0,-1
    bltz	$t0,.L0dabd7bc
    addiu	$v1,$t0,1
    sd	$v1,80($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dabd84c
    # Line 491
    slt	$a1,$a2,$t1
    bnez	$a1,.L0dabd82c
    # Line 497
    addu	$a5,$a5,$t2
    # Line 491
    slt	$at,$a2,$t9
    beqz	$at,.L0dabd82c
    slt	$v0,$a4,$s4
    bnez	$v0,.L0dabd82c
    slt	$v1,$a4,$s8
    bnez	$v1,.L0dabd838
    nop
.L0dabd82c:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    nor	$a1,$a3,$zero
    and	$a6,$a1,$a6
.L0dabd838:
    # Line 497
    bltz	$a5,.L0dabd950
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0dabd848:
    # Line 490
    addiu	$t0,$t0,-1
.L0dabd84c:
    ld	$at,80($sp)
    sra	$at,$at,0x1
    beqz	$at,.L0dabd7bc
    nop
    b	.L0dabd8d0
    # Line 491
    slt	$at,$a2,$t9
.L0dabd864:
    # Line 494
    addiu	$a7,$a7,1
.L0dabd868:
    # Line 493
    nor	$v0,$a3,$zero
    and	$a6,$v0,$a6
    # Line 497
    addu	$a5,$a5,$t2
.L0dabd874:
    bltz	$a5,.L0dabd8fc
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0dabd884:
    # Line 491
    slt	$v1,$a2,$t1
    bnez	$v1,.L0dabd8a8
    slt	$a1,$a2,$t9
    beqz	$a1,.L0dabd8a8
    slt	$at,$a4,$s4
    bnez	$at,.L0dabd8a8
    slt	$v0,$a4,$s8
    bnezl	$v0,.L0dabd8b8
    # Line 497
    addu	$a5,$a5,$t2
.L0dabd8a8:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    nor	$v1,$a3,$zero
    and	$a6,$v1,$a6
    # Line 497
    addu	$a5,$a5,$t2
.L0dabd8b8:
    bltz	$a5,.L0dabd90c
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0dabd8c8:
    # Line 490
    beq	$t0,$s0,.L0dabd7bc
    # Line 491
    slt	$at,$a2,$t9
.L0dabd8d0:
    slt	$a1,$a2,$t1
    bnez	$a1,.L0dabd864
    # Line 490
    addiu	$t0,$t0,-2
    # Line 491
    beqz	$at,.L0dabd864
    slt	$v0,$a4,$s4
    bnez	$v0,.L0dabd864
    slt	$v1,$a4,$s8
    bnezl	$v1,.L0dabd874
    # Line 497
    addu	$a5,$a5,$t2
    b	.L0dabd868
    # Line 494
    addiu	$a7,$a7,1
.L0dabd8fc:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0dabd884
    # Line 499
    and	$a5,$a5,$s1
.L0dabd90c:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0dabd8c8
    # Line 499
    and	$a5,$a5,$s1
.L0dabd91c:
    ld	$s1,88($sp)
    ld	$a6,40($sp)
    ld	$s0,96($sp)
    ld	$a3,40($sp)
    # Line 514
    lw	$a6,30252($a6)
.L0dabd930:
    beq	$a6,$a7,.L0dabd960
    # Line 519
    li	$v0,1
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabd950:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0dabd848
    # Line 499
    and	$a5,$a5,$s1
.L0dabd960:
    # Line 523
    li	$v0,1
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    # Line 522
    li	$s4,1
    sb	$s4,30480($a3)
    # Line 523
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabd984:
    # Line 437
    negu	$t2,$t2
    # Line 438
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    b	.L0dabd6a0
    subu	$a5,$at,$a5
.L0dabd998:
    # Line 427
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glScissorLine

# Function: __glScissorStippledLine
# Declared: Line 526 (Source lines: 527-664)
# Address: 0x0dabd9b0 - 0x0dabddc4 (Size: 1044 bytes, Frame: 128)
.globl __glScissorStippledLine
.ent __glScissorStippledLine
__glScissorStippledLine:
    # Line 527
    move	$a2,$a0
    # Line 552
    lw	$a5,29876($a0)
    # Line 527
    addiu	$sp,$sp,-128
    sd	$s7,56($sp)
    # Line 549
    lw	$s7,29892($a0)
    sd	$s5,48($sp)
    # Line 548
    lw	$s5,29884($a0)
    sd	$s8,40($sp)
    # Line 546
    lw	$s8,29716($a0)
    sd	$s4,64($sp)
    # Line 545
    lw	$s4,29708($a0)
    sd	$ra,72($sp)
    # Line 543
    lw	$t3,29704($a0)
    # Line 551
    lw	$a3,29872($a0)
    # Line 544
    lw	$ra,29712($a0)
    # Line 541
    lw	$a7,30252($a0)
    # Line 552
    slt	$at,$a3,$t3
    bnez	$at,.L0dabdb48
    # Line 541
    move	$a6,$a7
    # Line 552
    slt	$v0,$a3,$ra
    beqz	$v0,.L0dabdb48
    # Line 557
    slt	$v1,$a5,$s4
    bnez	$v1,.L0dabdb48
    slt	$a1,$a5,$s8
    beqz	$a1,.L0dabdb48
    addiu	$a0,$a6,-1
    mult	$a0,$s5
    mflo	$a4
    addu	$a4,$a4,$a3
    slt	$at,$a4,$t3
    bnez	$at,.L0dabda58
    slt	$at,$a4,$ra
    beqzl	$at,.L0dabda5c
    # Line 571
    lw	$a4,29896($a2)
    # Line 564
    mult	$a0,$s7
    mflo	$a4
    addu	$a4,$a4,$a5
    slt	$v0,$a4,$s4
    bnez	$v0,.L0dabda58
    slt	$at,$a4,$s8
    bnez	$at,.L0dabdda8
    # Line 566
    move	$v0,$zero
.L0dabda58:
    # Line 571
    lw	$a4,29896($a2)
.L0dabda5c:
    # Line 570
    lw	$t1,29888($a2)
    # Line 572
    lw	$t2,29900($a2)
    # Line 569
    lw	$t0,29880($a2)
    # Line 570
    move	$t9,$t1
    # Line 572
    bltz	$t2,.L0dabdd94
    # Line 569
    move	$t8,$t0
.L0dabda74:
    # Line 577
    srl	$v0,$t2,0x10
    multu	$a0,$v0
    mflo	$a1
    nop
    andi	$at,$t2,0xffff
    mult	$a0,$at
    srl	$v1,$a4,0x10
    addu	$v1,$v1,$a1
    andi	$a1,$a4,0xffff
    mflo	$at
    addu	$a1,$a1,$at
    srl	$a1,$a1,0x10
    addu	$v1,$v1,$a1
    srl	$v1,$v1,0xf
    mult	$s5,$v1
    sd	$v1,8($sp)
    mflo	$v0
    subu	$v1,$a6,$v1
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    sd	$v1,0($sp)
    addu	$v0,$v0,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    sd	$v0,16($sp)
    slt	$v0,$v0,$t3
    bnez	$v0,.L0dabdb58
    ld	$v1,16($sp)
    slt	$v1,$v1,$ra
    beqz	$v1,.L0dabdb58
    ld	$at,8($sp)
    # Line 593
    mult	$s7,$at
    ld	$a1,0($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$t9
    addu	$a0,$a0,$a5
    mflo	$a1
    addu	$a0,$a0,$a1
    slt	$a1,$a0,$s4
    bnez	$a1,.L0dabdb58
    slt	$v0,$a0,$s8
    beqzl	$v0,.L0dabdb5c
    sd	$s0,96($sp)
    # Line 595
    move	$v0,$zero
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabdb48:
    # Line 602
    lw	$t1,29888($a2)
    lw	$t0,29880($a2)
    lw	$t2,29900($a2)
    # Line 601
    lw	$a4,29896($a2)
.L0dabdb58:
    sd	$s0,96($sp)
.L0dabdb5c:
    sd	$s1,88($sp)
    # Line 602
    move	$t9,$t1
    move	$t8,$t0
    move	$a0,$a7
    # Line 618
    lw	$v1,30476($a2)
    # Line 619
    move	$a6,$zero
    beqz	$a7,.L0dabdd38
    sd	$v1,24($sp)
    sd	$a2,32($sp)
    li	$s0,-1
    lui	$s1,0x7fff
    b	.L0dabdba8
    ori	$s1,$s1,0xffff
.L0dabdb90:
    ld	$v0,24($sp)
    # Line 656
    and	$at,$t1,$a7
    addiu	$v0,$v0,4
    sd	$v0,24($sp)
    beqz	$a0,.L0dabdd28
    sw	$at,-4($v0)
.L0dabdba8:
    # Line 628
    li	$a7,-1
    # Line 627
    ld	$t1,24($sp)
    # Line 621
    slti	$v1,$a0,33
    bnez	$v1,.L0dabdbc0
    move	$t0,$a0
    # Line 623
    li	$t0,32
.L0dabdbc0:
    lui	$a2,0x8000
    # Line 625
    subu	$a0,$a0,$t0
    # Line 630
    addiu	$t0,$t0,-1
    bltz	$t0,.L0dabdb90
    # Line 627
    lw	$t1,0($t1)
    # Line 630
    addiu	$at,$t0,1
    sd	$at,80($sp)
    andi	$at,$at,0x1
    beqz	$at,.L0dabdc34
    and	$v0,$t1,$a2
    beqz	$v0,.L0dabdd5c
    # Line 639
    addu	$a4,$a4,$t2
    # Line 632
    slt	$v1,$a3,$t3
    bnez	$v1,.L0dabdc14
    slt	$a1,$a3,$ra
    beqz	$a1,.L0dabdc14
    slt	$at,$a5,$s4
    bnez	$at,.L0dabdc14
    slt	$v0,$a5,$s8
    bnez	$v0,.L0dabdc20
    nop
.L0dabdc14:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    nor	$v1,$a2,$zero
    and	$a7,$v1,$a7
.L0dabdc20:
    # Line 639
    bltz	$a4,.L0dabdd64
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0dabdc30:
    # Line 630
    addiu	$t0,$t0,-1
.L0dabdc34:
    ld	$a1,80($sp)
    sra	$a1,$a1,0x1
    beqz	$a1,.L0dabdb90
    nop
    b	.L0dabdcc0
    # Line 632
    slt	$at,$a3,$t3
.L0dabdc4c:
    # Line 635
    addiu	$a6,$a6,1
.L0dabdc50:
    # Line 634
    nor	$at,$a2,$zero
    and	$a7,$at,$a7
.L0dabdc58:
    # Line 639
    addu	$a4,$a4,$t2
.L0dabdc5c:
    bltz	$a4,.L0dabdcf8
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0dabdc6c:
    # Line 630
    and	$v0,$t1,$a2
    beqz	$v0,.L0dabdd18
    # Line 632
    slt	$v1,$a3,$t3
    bnez	$v1,.L0dabdc98
    slt	$a1,$a3,$ra
    beqz	$a1,.L0dabdc98
    slt	$at,$a5,$s4
    bnez	$at,.L0dabdc98
    slt	$v0,$a5,$s8
    bnezl	$v0,.L0dabdca8
    # Line 639
    addu	$a4,$a4,$t2
.L0dabdc98:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    nor	$v1,$a2,$zero
    and	$a7,$v1,$a7
.L0dabdca4:
    # Line 639
    addu	$a4,$a4,$t2
.L0dabdca8:
    bltz	$a4,.L0dabdd08
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0dabdcb8:
    # Line 630
    beq	$t0,$s0,.L0dabdb90
    # Line 632
    slt	$at,$a3,$t3
.L0dabdcc0:
    # Line 630
    and	$a1,$t1,$a2
    beqz	$a1,.L0dabdd20
    addiu	$t0,$t0,-2
    # Line 632
    bnez	$at,.L0dabdc4c
    slt	$a1,$a5,$s8
    slt	$v0,$a3,$ra
    beqz	$v0,.L0dabdc4c
    slt	$v1,$a5,$s4
    bnezl	$v1,.L0dabdc50
    # Line 635
    addiu	$a6,$a6,1
    # Line 632
    bnezl	$a1,.L0dabdc5c
    # Line 639
    addu	$a4,$a4,$t2
    b	.L0dabdc50
    # Line 635
    addiu	$a6,$a6,1
.L0dabdcf8:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0dabdc6c
    # Line 641
    and	$a4,$a4,$s1
.L0dabdd08:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0dabdcb8
    # Line 641
    and	$a4,$a4,$s1
.L0dabdd18:
    b	.L0dabdca4
    # Line 637
    addiu	$a6,$a6,1
.L0dabdd20:
    b	.L0dabdc58
    addiu	$a6,$a6,1
.L0dabdd28:
    ld	$a7,32($sp)
    ld	$s1,88($sp)
    ld	$s0,96($sp)
    # Line 656
    lw	$a7,30252($a7)
.L0dabdd38:
    beq	$a7,$a6,.L0dabdd74
    # Line 661
    move	$v0,$zero
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabdd5c:
    b	.L0dabdc20
    # Line 637
    addiu	$a6,$a6,1
.L0dabdd64:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0dabdc30
    # Line 641
    and	$a4,$a4,$s1
.L0dabdd74:
    # Line 664
    li	$v0,1
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabdd94:
    # Line 576
    negu	$t2,$t2
    # Line 577
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    b	.L0dabda74
    subu	$a4,$at,$a4
.L0dabdda8:
    # Line 566
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glScissorStippledLine

# Function: __glStippleLine
# Declared: Line 670 (Source lines: 671-726)
# Address: 0x0dabddc4 - 0x0dabdf64 (Size: 416 bytes, Frame: 48)
.globl __glStippleLine
.ent __glStippleLine
__glStippleLine:
    # Line 671
    move	$a3,$a0
    # Line 684
    lhu	$a7,456($a0)
    # Line 681
    lh	$t0,458($a0)
    # Line 680
    lw	$a2,29848($a0)
    # Line 685
    move	$t8,$zero
    # Line 683
    li	$t1,1
    # Line 671
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 679
    lw	$at,30476($a0)
    # Line 678
    lw	$t9,30252($a0)
    # Line 682
    lw	$a6,29844($a0)
    sd	$at,16($sp)
    # Line 685
    beqz	$t9,.L0dabdf0c
    # Line 683
    sllv	$a4,$t1,$a6
    sd	$a3,0($sp)
    # Line 685
    li	$t2,-1
    b	.L0dabde18
    ld	$a0,16($sp)
.L0dabde0c:
    # Line 714
    sw	$t3,0($a0)
    beqz	$t9,.L0dabdf0c
    addiu	$a0,$a0,4
.L0dabde18:
    # Line 693
    li	$t3,-1
    # Line 687
    slti	$v0,$t9,33
    bnez	$v0,.L0dabde2c
    move	$a5,$t9
    # Line 689
    li	$a5,32
.L0dabde2c:
    # Line 691
    subu	$t9,$t9,$a5
    # Line 695
    addiu	$a5,$a5,-1
    lui	$a3,0x8000
    bltz	$a5,.L0dabde0c
    addiu	$v1,$a5,1
    sd	$v1,8($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dabde78
    and	$a1,$a4,$a7
    beqz	$a1,.L0dabdf34
    # Line 702
    addiu	$a2,$a2,1
.L0dabde58:
    slt	$at,$a2,$t0
    bnez	$at,.L0dabde74
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    # Line 704
    sllv	$a4,$t1,$a6
.L0dabde74:
    # Line 695
    addiu	$a5,$a5,-1
.L0dabde78:
    ld	$at,8($sp)
    sra	$at,$at,0x1
    beqz	$at,.L0dabde0c
    nop
    b	.L0dabdec4
    and	$at,$a4,$a7
.L0dabde90:
    and	$v0,$a4,$a7
    beqzl	$v0,.L0dabdf00
    # Line 699
    addiu	$t8,$t8,1
.L0dabde9c:
    # Line 702
    addiu	$a2,$a2,1
    slt	$v1,$a2,$t0
    bnez	$v1,.L0dabdebc
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    # Line 704
    sllv	$a4,$t1,$a6
.L0dabdebc:
    # Line 695
    beq	$a5,$t2,.L0dabde0c
    and	$at,$a4,$a7
.L0dabdec4:
    beqz	$at,.L0dabdef0
    addiu	$a5,$a5,-2
.L0dabdecc:
    # Line 702
    addiu	$a2,$a2,1
    slt	$v0,$a2,$t0
    bnez	$v0,.L0dabde90
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    b	.L0dabde90
    # Line 704
    sllv	$a4,$t1,$a6
.L0dabdef0:
    # Line 699
    addiu	$t8,$t8,1
    # Line 698
    nor	$at,$a3,$zero
    b	.L0dabdecc
    and	$t3,$at,$t3
.L0dabdf00:
    nor	$v0,$a3,$zero
    b	.L0dabde9c
    and	$t3,$v0,$t3
.L0dabdf0c:
    ld	$v1,0($sp)
    # Line 718
    sw	$a6,29844($v1)
    beqz	$t8,.L0dabdf58
    # Line 717
    sw	$a2,29848($v1)
    ld	$a1,0($sp)
    # Line 721
    lw	$a1,30252($a1)
    beq	$a1,$t8,.L0dabdf44
    # Line 723
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0dabdf34:
    # Line 698
    nor	$at,$a3,$zero
    # Line 699
    addiu	$t8,$t8,1
    b	.L0dabde58
    # Line 698
    and	$t3,$at,$t3
.L0dabdf44:
    # Line 726
    li	$v0,1
    # Line 725
    ld	$v1,0($sp)
    # Line 726
    addiu	$sp,$sp,48
    jr	$ra
    # Line 725
    sb	$t1,30480($v1)
.L0dabdf58:
    # Line 721
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end __glStippleLine

# Function: __glStencilTestLine
# Declared: Line 732 (Source lines: 733-802)
# Address: 0x0dabdf64 - 0x0dabe1dc (Size: 632 bytes, Frame: 208)
.globl __glStencilTestLine
.ent __glStencilTestLine
__glStencilTestLine:
    # Line 733
    move	$a4,$a0
    addiu	$sp,$sp,-80
    sd	$s7,24($sp)
    # Line 748
    lw	$s7,31112($a0)
    lw	$a3,29876($a0)
    sd	$a0,8($sp)
    lw	$a7,3376($s7)
    lw	$a0,31140($a0)
    subu	$a3,$a3,$a7
    mult	$a3,$a0
    # Line 750
    lw	$a2,29888($a4)
    # Line 748
    mflo	$v0
    nop
    nop
    # Line 750
    mult	$a2,$a0
    sd	$s5,32($sp)
    # Line 756
    lh	$t1,1576($a4)
    sd	$s8,0($sp)
    # Line 755
    lw	$s8,31188($a4)
    # Line 754
    lw	$t0,31184($a4)
    # Line 757
    lw	$a1,30476($a4)
    # Line 751
    lw	$v1,29892($a4)
    # Line 750
    mflo	$t9
    # Line 743
    lw	$at,30252($a4)
    sd	$a1,16($sp)
    # Line 751
    mult	$v1,$a0
    sd	$at,48($sp)
    # Line 753
    lw	$a7,29900($a4)
    # Line 752
    lw	$a3,29896($a4)
    # Line 748
    lw	$t2,31128($a4)
    lw	$a2,29872($a4)
    lw	$s7,3372($s7)
    addu	$t2,$t2,$v0
    addu	$a2,$a2,$t2
    # Line 750
    lw	$t2,29880($a4)
    # Line 748
    subu	$a2,$a2,$s7
    # Line 751
    lw	$s7,29884($a4)
    # Line 750
    addu	$t2,$t2,$t9
    # Line 751
    mflo	$t9
    addu	$s7,$s7,$t9
    # Line 758
    beqz	$at,.L0dabe158
    move	$t9,$zero
    sd	$a4,8($sp)
    li	$t3,-1
    ld	$a0,48($sp)
    lui	$s5,0x7fff
    b	.L0dabe038
    ori	$s5,$s5,0xffff
.L0dabe024:
    ld	$at,16($sp)
    # Line 790
    sw	$t8,0($at)
    addiu	$at,$at,4
    beqz	$a0,.L0dabe158
    sd	$at,16($sp)
.L0dabe038:
    # Line 766
    li	$t8,-1
    # Line 760
    slti	$v0,$a0,33
    bnez	$v0,.L0dabe04c
    move	$a6,$a0
    # Line 762
    li	$a6,32
.L0dabe04c:
    lui	$a4,0x8000
    # Line 764
    subu	$a0,$a0,$a6
    # Line 768
    addiu	$a6,$a6,-1
    bltz	$a6,.L0dabe024
    addiu	$a5,$a6,1
    andi	$v1,$a5,0x1
    beqz	$v1,.L0dabe0a4
    sra	$at,$a5,0x1
    sd	$a5,40($sp)
    # Line 769
    lbu	$a5,0($a2)
    and	$a1,$a5,$t1
    addu	$a1,$a1,$t0
    lbu	$a1,0($a1)
    # Line 777
    addu	$a3,$a3,$a7
    # Line 769
    beqz	$a1,.L0dabe18c
    # Line 773
    addu	$v1,$a5,$s8
.L0dabe08c:
    # Line 785
    srl	$a4,$a4,0x1
    # Line 777
    bltz	$a3,.L0dabe180
    ld	$a5,40($sp)
    # Line 782
    addu	$a2,$t2,$a2
.L0dabe09c:
    # Line 768
    addiu	$a6,$a6,-1
    sra	$at,$a5,0x1
.L0dabe0a4:
    beqz	$at,.L0dabe024
    nop
    b	.L0dabe0c4
    # Line 769
    lbu	$a5,0($a2)
.L0dabe0b4:
    # Line 782
    addu	$a2,$t2,$a2
.L0dabe0b8:
    # Line 768
    beq	$a6,$t3,.L0dabe024
    nop
    # Line 769
    lbu	$a5,0($a2)
.L0dabe0c4:
    and	$v0,$a5,$t1
    addu	$v0,$v0,$t0
    lbu	$v0,0($v0)
    # Line 772
    nor	$at,$a4,$zero
    # Line 769
    beqz	$v0,.L0dabe128
    # Line 777
    addu	$a3,$a3,$a7
.L0dabe0dc:
    bltz	$a3,.L0dabe11c
    # Line 785
    srl	$a4,$a4,0x1
    # Line 782
    addu	$a2,$t2,$a2
.L0dabe0e8:
    # Line 769
    lbu	$a5,0($a2)
    and	$v1,$a5,$t1
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    # Line 768
    addiu	$a6,$a6,-2
    # Line 777
    addu	$a3,$a3,$a7
    # Line 769
    beqz	$v1,.L0dabe140
    # Line 773
    addu	$at,$a5,$s8
.L0dabe108:
    # Line 777
    bgez	$a3,.L0dabe0b4
    # Line 785
    srl	$a4,$a4,0x1
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0dabe0b8
    # Line 779
    and	$a3,$a3,$s5
.L0dabe11c:
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0dabe0e8
    # Line 779
    and	$a3,$a3,$s5
.L0dabe128:
    # Line 773
    addu	$a1,$a5,$s8
    # Line 774
    addiu	$t9,$t9,1
    # Line 773
    lbu	$a1,0($a1)
    # Line 772
    and	$t8,$at,$t8
    b	.L0dabe0dc
    # Line 773
    sb	$a1,0($a2)
.L0dabe140:
    # Line 774
    addiu	$t9,$t9,1
    # Line 772
    nor	$v0,$a4,$zero
    # Line 773
    lbu	$at,0($at)
    # Line 772
    and	$t8,$v0,$t8
    b	.L0dabe108
    # Line 773
    sb	$at,0($a2)
.L0dabe158:
    # Line 790
    beqz	$t9,.L0dabe1c4
    ld	$v0,8($sp)
    # Line 794
    lw	$v0,30252($v0)
    beq	$v0,$t9,.L0dabe1a4
    ld	$s5,32($sp)
    # Line 798
    li	$v0,1
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabe180:
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0dabe09c
    # Line 779
    and	$a3,$a3,$s5
.L0dabe18c:
    # Line 774
    addiu	$t9,$t9,1
    # Line 772
    nor	$a1,$a4,$zero
    # Line 773
    lbu	$v1,0($v1)
    # Line 772
    and	$t8,$a1,$t8
    b	.L0dabe08c
    # Line 773
    sb	$v1,0($a2)
.L0dabe1a4:
    # Line 802
    li	$v0,1
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    # Line 801
    ld	$a1,8($sp)
    # Line 802
    addiu	$sp,$sp,80
    # Line 801
    li	$a0,1
    # Line 802
    jr	$ra
    # Line 801
    sb	$a0,30480($a1)
.L0dabe1c4:
    # Line 794
    move	$v0,$zero
    ld	$s5,32($sp)
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glStencilTestLine

# Function: __glStencilTestStippledLine
# Declared: Line 808 (Source lines: 809-876)
# Address: 0x0dabe1dc - 0x0dabe470 (Size: 660 bytes, Frame: 208)
.globl __glStencilTestStippledLine
.ent __glStencilTestStippledLine
__glStencilTestStippledLine:
    # Line 809
    addiu	$sp,$sp,-80
    sd	$s7,24($sp)
    # Line 825
    lw	$s7,31112($a0)
    lw	$a6,29876($a0)
    lw	$a7,3376($s7)
    lw	$a1,31140($a0)
    subu	$a6,$a6,$a7
    mult	$a6,$a1
    # Line 827
    lw	$a4,29888($a0)
    # Line 825
    mflo	$v0
    nop
    nop
    # Line 827
    mult	$a4,$a1
    # Line 809
    move	$a5,$a0
    # Line 820
    lw	$v1,30476($a5)
    sd	$s1,40($sp)
    sd	$v1,8($sp)
    # Line 830
    lw	$a7,29900($a5)
    # Line 833
    lh	$t1,1576($a0)
    # Line 832
    lw	$a2,31188($a0)
    # Line 831
    lw	$t3,31184($a0)
    # Line 828
    lw	$a0,29892($a0)
    # Line 827
    mflo	$t8
    # Line 825
    lw	$t2,31128($a5)
    sd	$a2,56($sp)
    # Line 828
    mult	$a0,$a1
    # Line 819
    lw	$a6,30252($a5)
    # Line 825
    lw	$a2,29872($a5)
    lw	$s7,3372($s7)
    # Line 819
    move	$at,$a6
    sd	$a6,0($sp)
    # Line 829
    lw	$a4,29896($a5)
    # Line 825
    addu	$t2,$t2,$v0
    addu	$a2,$a2,$t2
    # Line 827
    lw	$t2,29880($a5)
    # Line 825
    subu	$a2,$a2,$s7
    # Line 828
    lw	$s7,29884($a5)
    # Line 827
    addu	$t2,$t2,$t8
    # Line 828
    mflo	$t8
    addu	$s7,$s7,$t8
    # Line 834
    beqz	$a6,.L0dabe420
    move	$t8,$zero
    sd	$s5,32($sp)
    sd	$a5,16($sp)
    li	$t9,-1
    ld	$a0,56($sp)
    lui	$s1,0x7fff
    b	.L0dabe2bc
    ori	$s1,$s1,0xffff
.L0dabe2a0:
    ld	$v1,8($sp)
    # Line 869
    and	$v0,$a6,$s5
    ld	$at,0($sp)
    addiu	$v1,$v1,4
    sd	$v1,8($sp)
    beqz	$at,.L0dabe410
    sw	$v0,-4($v1)
.L0dabe2bc:
    # Line 842
    ld	$a6,8($sp)
    ld	$a1,0($sp)
    # Line 840
    ld	$at,0($sp)
    # Line 843
    li	$s5,-1
    # Line 836
    move	$a5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0dabe2e0
    lui	$a3,0x8000
    # Line 838
    li	$a5,32
.L0dabe2e0:
    # Line 842
    lw	$a6,0($a6)
    # Line 840
    subu	$at,$at,$a5
    # Line 845
    addiu	$a5,$a5,-1
    bltz	$a5,.L0dabe2a0
    sd	$at,0($sp)
    addiu	$t0,$a5,1
    andi	$v0,$t0,0x1
    beqz	$v0,.L0dabe340
    and	$v1,$a6,$a3
    beqz	$v1,.L0dabe434
    # Line 856
    addu	$a4,$a4,$a7
    sd	$t0,48($sp)
    # Line 847
    lbu	$t0,0($a2)
    and	$a1,$t0,$t1
    addu	$a1,$a1,$t3
    lbu	$a1,0($a1)
    # Line 850
    nor	$v0,$a3,$zero
    # Line 847
    beqz	$a1,.L0dabe45c
    # Line 851
    addu	$at,$t0,$a0
.L0dabe32c:
    # Line 864
    srl	$a3,$a3,0x1
    # Line 856
    bltz	$a4,.L0dabe440
    ld	$t0,48($sp)
    # Line 861
    addu	$a2,$t2,$a2
.L0dabe33c:
    # Line 845
    addiu	$a5,$a5,-1
.L0dabe340:
    sra	$at,$t0,0x1
    beqz	$at,.L0dabe2a0
    nop
    b	.L0dabe36c
    addiu	$a5,$a5,-2
.L0dabe354:
    # Line 856
    addu	$a4,$a4,$a7
    bltz	$a4,.L0dabe3e4
    # Line 864
    srl	$a3,$a3,0x1
    # Line 861
    addu	$a2,$t2,$a2
.L0dabe364:
    # Line 845
    beq	$a5,$t9,.L0dabe2a0
    addiu	$a5,$a5,-2
.L0dabe36c:
    and	$v0,$a6,$a3
    beqz	$v0,.L0dabe3f0
    # Line 856
    addu	$a4,$a4,$a7
    # Line 847
    lbu	$t0,0($a2)
    and	$v1,$t0,$t1
    addu	$v1,$v1,$t3
    lbu	$v1,0($v1)
    beqz	$v1,.L0dabe3f8
    # Line 850
    nor	$a1,$a3,$zero
.L0dabe390:
    # Line 856
    bltz	$a4,.L0dabe3d8
    # Line 864
    srl	$a3,$a3,0x1
    # Line 861
    addu	$a2,$t2,$a2
.L0dabe39c:
    # Line 845
    and	$a1,$a6,$a3
    beqzl	$a1,.L0dabe354
    # Line 854
    addiu	$t8,$t8,1
    # Line 847
    lbu	$t0,0($a2)
    and	$at,$t0,$t1
    addu	$at,$at,$t3
    lbu	$at,0($at)
    # Line 850
    nor	$v1,$a3,$zero
    # Line 847
    bnez	$at,.L0dabe354
    # Line 851
    addu	$v0,$t0,$a0
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    lbu	$v0,0($v0)
    # Line 850
    and	$s5,$v1,$s5
    # Line 852
    b	.L0dabe354
    # Line 851
    sb	$v0,0($a2)
.L0dabe3d8:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0dabe39c
    # Line 858
    and	$a4,$a4,$s1
.L0dabe3e4:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0dabe364
    # Line 858
    and	$a4,$a4,$s1
.L0dabe3f0:
    b	.L0dabe390
    # Line 854
    addiu	$t8,$t8,1
.L0dabe3f8:
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    addu	$v1,$t0,$a0
    lbu	$v1,0($v1)
    # Line 850
    and	$s5,$a1,$s5
    # Line 852
    b	.L0dabe390
    # Line 851
    sb	$v1,0($a2)
.L0dabe410:
    ld	$a6,16($sp)
    ld	$s5,32($sp)
    ld	$s1,40($sp)
    # Line 869
    lw	$a6,30252($a6)
.L0dabe420:
    beq	$a6,$t8,.L0dabe44c
    # Line 874
    move	$v0,$zero
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabe434:
    sd	$t0,48($sp)
    b	.L0dabe32c
    # Line 854
    addiu	$t8,$t8,1
.L0dabe440:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0dabe33c
    # Line 858
    and	$a4,$a4,$s1
.L0dabe44c:
    # Line 876
    li	$v0,1
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabe45c:
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    lbu	$at,0($at)
    # Line 850
    and	$s5,$v0,$s5
    # Line 852
    b	.L0dabe32c
    # Line 851
    sb	$at,0($a2)
.end __glStencilTestStippledLine

# Function: __glDepthTestStippledLine
# Declared: Line 965 (Source lines: 966-1040)
# Address: 0x0dabe470 - 0x0dabe6f0 (Size: 640 bytes, Frame: 192)
.globl __glDepthTestStippledLine
.ent __glDepthTestStippledLine
__glDepthTestStippledLine:
    # Line 966
    addiu	$sp,$sp,-192
    sd	$s8,16($sp)
    # Line 985
    lw	$s8,31232($a0)
    sd	$s7,32($sp)
    lw	$s7,29876($a0)
    lw	$at,3376($s8)
    lw	$a2,31260($a0)
    subu	$s7,$s7,$at
    mult	$s7,$a2
    sd	$a0,8($sp)
    sd	$s6,40($sp)
    sd	$s2,56($sp)
    # Line 987
    lw	$s2,29888($a0)
    # Line 985
    mflo	$v1
    # Line 997
    lw	$s6,30332($a0)
    sd	$s3,48($sp)
    # Line 987
    mult	$s2,$a2
    # Line 995
    lw	$s3,30208($a0)
    sd	$s6,72($sp)
    # Line 990
    lw	$s6,29900($a0)
    sd	$s3,88($sp)
    # Line 994
    lw	$a4,12032($a0)
    # sd	gp,24(sp)
    # Line 966
    lui	$v0,0x14
    # Line 980
    lw	$a1,30476($a0)
    # Line 966
    addiu	$v0,$v0,-27656
    # addu	gp,t9,v0
    sd	$a1,96($sp)
    # Line 988
    lw	$a1,29892($a0)
    # Line 987
    mflo	$t9
    sd	$a4,0($sp)
    # Line 979
    lw	$a4,30252($a0)
    # Line 988
    mult	$a1,$a2
    # Line 989
    lw	$s3,29896($a0)
    # Line 993
    lw	$a3,31312($a0)
    sd	$a4,104($sp)
    # Line 985
    lw	$v0,29872($a0)
    sd	$a3,64($sp)
    # Line 987
    lw	$a3,29880($a0)
    # Line 985
    sll	$v0,$v0,0x2
    lw	$s8,3372($s8)
    # Line 992
    lw	$at,31320($a0)
    # Line 996
    lw	$s7,30328($a0)
    # Line 985
    sll	$s8,$s8,0x2
    sd	$at,80($sp)
    # Line 996
    srav	$s7,$s7,$at
    # Line 985
    lw	$s2,31248($a0)
    # Line 979
    move	$at,$a4
    # Line 985
    sll	$v1,$v1,0x2
    addu	$s2,$s2,$v1
    addu	$s2,$s2,$v0
    subu	$s2,$s2,$s8
    # Line 998
    move	$s8,$zero
    # Line 987
    addu	$a3,$a3,$t9
    # Line 988
    lw	$a2,29884($a0)
    mflo	$t9
    # Line 998
    beqz	$a4,.L0dabe6a4
    # Line 988
    addu	$a2,$a2,$t9
    sd	$s4,168($sp)
    sd	$ra,160($sp)
    sd	$s0,152($sp)
    sd	$s1,144($sp)
    sd	$s5,136($sp)
    # Line 998
    li	$a0,-1
    sll	$v0,$a2,0x2
    sll	$v1,$a3,0x2
    sd	$v1,128($sp)
    b	.L0dabe5b4
    sd	$v0,112($sp)
.L0dabe584:
    # Line 1033
    ld	$v0,88($sp)
    ld	$v1,72($sp)
    # Line 1032
    ld	$at,120($sp)
    # Line 1033
    addu	$v0,$v1,$v0
    sd	$v0,88($sp)
    # Line 1032
    ld	$v0,96($sp)
    # Line 1033
    ld	$a1,104($sp)
    # Line 1032
    and	$at,$s5,$at
    addiu	$v0,$v0,4
    sd	$v0,96($sp)
    # Line 1033
    beqz	$a1,.L0dabe688
    # Line 1032
    sw	$at,-4($v0)
.L0dabe5b4:
    lui	$s0,0x8000
    # Line 1004
    ld	$v0,104($sp)
    ld	$a1,104($sp)
    # Line 1006
    ld	$s1,88($sp)
    # Line 1008
    li	$at,-1
    # Line 1000
    move	$s4,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0dabe5dc
    # Line 1007
    ld	$s5,96($sp)
    # Line 1002
    li	$s4,32
.L0dabe5dc:
    # Line 1007
    lw	$s5,0($s5)
    sd	$at,120($sp)
    # Line 1006
    ld	$at,80($sp)
    # Line 1004
    subu	$v0,$v0,$s4
    # Line 1010
    addiu	$s4,$s4,-1
    # Line 1006
    srlv	$s1,$s1,$at
    ld	$at,64($sp)
    sd	$v0,104($sp)
    # Line 1010
    bltz	$s4,.L0dabe584
    # Line 1006
    addu	$s1,$s1,$at
    b	.L0dabe634
    # Line 1019
    addu	$s3,$s3,$s6
.L0dabe60c:
    # Line 1016
    addiu	$s8,$s8,1
.L0dabe610:
    ld	$v1,112($sp)
    # Line 1019
    bltz	$s3,.L0dabe674
    # Line 1017
    addu	$s1,$s7,$s1
    ld	$v0,128($sp)
    # Line 1024
    addu	$s2,$v0,$s2
.L0dabe624:
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1010
    beq	$s4,$a0,.L0dabe584
    nop
    # Line 1019
    addu	$s3,$s3,$s6
.L0dabe634:
    # Line 1010
    and	$v1,$s5,$s0
    beqz	$v1,.L0dabe60c
    addiu	$s4,$s4,-1
    # Line 1012
    ld	$t9,0($sp)
    move	$a0,$s1
    lw	$a1,0($s2)
    jalr	$t9
    move	$a2,$s2
    bnez	$v0,.L0dabe610
    li	$a0,-1
    # Line 1013
    nor	$at,$s0,$zero
    ld	$a1,120($sp)
    # Line 1014
    addiu	$s8,$s8,1
    # Line 1013
    and	$a1,$at,$a1
    # Line 1014
    b	.L0dabe610
    sd	$a1,120($sp)
.L0dabe674:
    # Line 1022
    addu	$s2,$v1,$s2
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    b	.L0dabe624
    # Line 1021
    and	$s3,$s3,$v0
.L0dabe688:
    ld	$s5,136($sp)
    ld	$s1,144($sp)
    ld	$s0,152($sp)
    ld	$a4,8($sp)
    ld	$ra,160($sp)
    ld	$s4,168($sp)
    # Line 1033
    lw	$a4,30252($a4)
.L0dabe6a4:
    beq	$a4,$s8,.L0dabe6cc
    # Line 1038
    move	$v0,$zero
    # ld	gp,24(sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0dabe6cc:
    # Line 1040
    li	$v0,1
    # ld	gp,24(sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glDepthTestStippledLine

# Function: __glDepthTestStencilLine
# Declared: Line 1043 (Source lines: 1044-1138)
# Address: 0x0dabe6f0 - 0x0dabea4c (Size: 860 bytes, Frame: 224)
.globl __glDepthTestStencilLine
.ent __glDepthTestStencilLine
__glDepthTestStencilLine:
    # Line 1065
    lw	$a2,31232($a0)
    # Line 1044
    move	$at,$a0
    # Line 1065
    lw	$a1,29876($a0)
    lw	$a2,3376($a2)
    lw	$a0,31260($a0)
    subu	$a2,$a1,$a2
    mult	$a2,$a0
    # Line 1064
    lw	$v0,29888($at)
    # Line 1065
    mflo	$a4
    nop
    nop
    # Line 1067
    mult	$a0,$v0
    # Line 1062
    lw	$v1,29892($at)
    # Line 1067
    mflo	$a3
    nop
    nop
    # Line 1068
    mult	$a0,$v1
    # Line 1072
    lw	$a0,31112($at)
    # Line 1044
    addiu	$sp,$sp,-224
    sd	$s0,0($sp)
    # Line 1072
    lw	$s0,3376($a0)
    subu	$a1,$a1,$s0
    lw	$s0,31140($at)
    # Line 1068
    mflo	$a2
    nop
    nop
    # Line 1072
    mult	$a1,$s0
    mflo	$a1
    sd	$zero,136($sp)
    sd	$s3,40($sp)
    # Line 1074
    mult	$s0,$v0
    # Line 1076
    lw	$s3,29896($at)
    sd	$s8,8($sp)
    # Line 1077
    lw	$s8,29900($at)
    sd	$at,56($sp)
    sd	$s7,16($sp)
    # Line 1080
    lw	$s7,31196($at)
    sd	$s2,48($sp)
    # Line 1081
    lw	$s2,31320($at)
    sd	$s6,32($sp)
    # Line 1085
    lw	$s6,30328($at)
    # sd	gp,24(sp)
    sd	$s7,160($sp)
    srav	$s6,$s6,$s2
    sd	$s2,64($sp)
    # Line 1082
    lw	$s2,31312($at)
    # Line 1086
    lw	$s7,30332($at)
    # Line 1079
    lw	$v0,31192($at)
    sd	$s2,72($sp)
    # Line 1087
    lw	$s2,30476($at)
    sd	$v0,128($sp)
    # Line 1084
    lw	$v0,30208($at)
    sd	$s7,80($sp)
    sd	$s2,88($sp)
    sd	$v0,96($sp)
    # Line 1074
    mflo	$v0
    # Line 1065
    lw	$s2,31248($at)
    sll	$a4,$a4,0x2
    # Line 1075
    mult	$s0,$v1
    # Line 1065
    lw	$s0,31232($at)
    lw	$v1,29872($at)
    addu	$s2,$s2,$a4
    lw	$s0,3372($s0)
    sll	$a4,$v1,0x2
    addu	$s2,$s2,$a4
    sll	$s0,$s0,0x2
    subu	$s2,$s2,$s0
    # Line 1072
    lw	$s0,31128($at)
    # Line 1083
    lw	$s7,12032($at)
    # Line 1059
    lw	$a4,30252($at)
    # Line 1072
    addu	$s0,$s0,$a1
    addu	$s0,$s0,$v1
    # Line 1063
    lw	$v1,29880($at)
    # Line 1061
    lw	$at,29884($at)
    sd	$a4,104($sp)
    # Line 1067
    addu	$a3,$a3,$v1
    # Line 1068
    addu	$a2,$a2,$at
    # Line 1044
    lui	$a1,0x14
    addiu	$a1,$a1,-28296
    # addu	gp,t9,a1
    # Line 1072
    lw	$t9,3372($a0)
    # Line 1074
    addu	$v0,$v0,$v1
    sd	$v0,168($sp)
    # Line 1072
    subu	$s0,$s0,$t9
    # Line 1075
    mflo	$t9
    # addu	t9,t9,at
    # Line 1088
    beqz	$a4,.L0dabe9b0
    nop
    sd	$s4,200($sp)
    sd	$ra,192($sp)
    sd	$s1,184($sp)
    sd	$s5,176($sp)
    li	$a0,-1
    sll	$at,$a2,0x2
    sll	$v0,$a3,0x2
    sd	$v0,152($sp)
    b	.L0dabe8a4
    sd	$at,112($sp)
.L0dabe878:
    # Line 1124
    ld	$a1,88($sp)
    ld	$at,144($sp)
    # Line 1125
    ld	$v0,96($sp)
    ld	$v1,80($sp)
    # Line 1124
    sw	$at,0($a1)
    # Line 1125
    addu	$v0,$v1,$v0
    ld	$v1,104($sp)
    # Line 1124
    addiu	$a1,$a1,4
    sd	$v0,96($sp)
    # Line 1125
    beqz	$v1,.L0dabe9a0
    sd	$a1,88($sp)
.L0dabe8a4:
    # Line 1097
    li	$v1,-1
    # Line 1094
    ld	$v0,104($sp)
    # Line 1096
    ld	$at,64($sp)
    ld	$s1,96($sp)
    ld	$a1,104($sp)
    lui	$s4,0x8000
    srlv	$s1,$s1,$at
    # Line 1090
    move	$s5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0dabe8d4
    # Line 1096
    ld	$at,72($sp)
    # Line 1092
    li	$s5,32
.L0dabe8d4:
    # Line 1096
    addu	$s1,$s1,$at
    sd	$v1,144($sp)
    # Line 1094
    subu	$v0,$v0,$s5
    # Line 1099
    addiu	$s5,$s5,-1
    bltz	$s5,.L0dabe878
    sd	$v0,104($sp)
    b	.L0dabe910
    # Line 1100
    lw	$a1,0($s2)
.L0dabe8f4:
    ld	$at,168($sp)
    # Line 1115
    addu	$s2,$a1,$s2
    # Line 1116
    addu	$s0,$at,$s0
.L0dabe900:
    # Line 1119
    srl	$s4,$s4,0x1
    # Line 1099
    beq	$s5,$a0,.L0dabe878
    nop
    # Line 1100
    lw	$a1,0($s2)
.L0dabe910:
    move	$a2,$s2
    move	$a0,$s1
    # Line 1107
    addu	$s1,$s6,$s1
    # Line 1100
    jalr	$s7
    move	$t9,$s7
    ld	$at,136($sp)
    # Line 1109
    addu	$s3,$s3,$s8
    li	$a0,-1
    # Line 1100
    beqz	$v0,.L0dabe974
    lbu	$a2,0($s0)
    ld	$v0,160($sp)
    # Line 1101
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0dabe948:
    # Line 1099
    addiu	$s5,$s5,-1
    lui	$v1,0x7fff
    ld	$at,120($sp)
    # Line 1109
    bgez	$s3,.L0dabe8f4
    # Line 1115
    ld	$a1,152($sp)
    # Line 1113
    addu	$s0,$at,$s0
    ori	$v1,$v1,0xffff
    # Line 1112
    ld	$a1,112($sp)
    # Line 1111
    and	$s3,$s3,$v1
    # Line 1113
    b	.L0dabe900
    # Line 1112
    addu	$s2,$a1,$s2
.L0dabe974:
    # Line 1105
    addiu	$at,$at,1
    sd	$at,136($sp)
    # Line 1104
    ld	$at,144($sp)
    # Line 1103
    ld	$a1,128($sp)
    # Line 1104
    nor	$v0,$s4,$zero
    and	$at,$v0,$at
    # Line 1103
    addu	$a1,$a2,$a1
    lbu	$a1,0($a1)
    sd	$at,144($sp)
    b	.L0dabe948
    sb	$a1,0($s0)
.L0dabe9a0:
    ld	$s5,176($sp)
    ld	$s1,184($sp)
    ld	$ra,192($sp)
    ld	$s4,200($sp)
.L0dabe9b0:
    ld	$v0,136($sp)
    # Line 1125
    beqz	$v0,.L0dabea24
    ld	$v1,56($sp)
    # Line 1130
    ld	$a1,136($sp)
    lw	$v1,30252($v1)
    beq	$v1,$a1,.L0dabe9f0
    # Line 1134
    li	$v0,1
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabe9f0:
    # Line 1138
    li	$v0,1
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    # Line 1137
    ld	$a1,56($sp)
    # Line 1138
    addiu	$sp,$sp,224
    # Line 1137
    li	$a0,1
    # Line 1138
    jr	$ra
    # Line 1137
    sb	$a0,30480($a1)
.L0dabea24:
    # Line 1130
    move	$v0,$zero
    # ld	gp,24(sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glDepthTestStencilLine

# Function: __glDepthTestStencilStippledLine
# Declared: Line 1141 (Source lines: 1142-1234)
# Address: 0x0dabea4c - 0x0dabed90 (Size: 836 bytes, Frame: 240)
.globl __glDepthTestStencilStippledLine
.ent __glDepthTestStencilStippledLine
__glDepthTestStencilStippledLine:
    # Line 1164
    lw	$a2,31232($a0)
    lw	$a1,29876($a0)
    lw	$a5,3376($a2)
    lw	$a3,31260($a0)
    subu	$a5,$a1,$a5
    mult	$a5,$a3
    # Line 1166
    lw	$a4,29888($a0)
    # Line 1164
    mflo	$a5
    nop
    nop
    # Line 1166
    mult	$a3,$a4
    # Line 1161
    lw	$v1,29892($a0)
    # Line 1166
    mflo	$a4
    nop
    nop
    # Line 1167
    mult	$a3,$v1
    # Line 1142
    addiu	$sp,$sp,-240
    # Line 1171
    lw	$at,31112($a0)
    sd	$s0,16($sp)
    lw	$s0,31140($a0)
    lw	$v0,3376($at)
    # Line 1167
    mflo	$a3
    nop
    # Line 1171
    subu	$a1,$a1,$v0
    mult	$a1,$s0
    sd	$zero,168($sp)
    sd	$s4,48($sp)
    # Line 1175
    lw	$s4,29896($a0)
    sd	$a0,8($sp)
    # sd	gp,32(sp)
    sd	$s7,24($sp)
    # Line 1184
    lw	$s7,30328($a0)
    # Line 1142
    move	$v0,$s8
    sd	$v0,40($sp)
    # Line 1178
    lw	$v0,31320($a0)
    # Line 1171
    lw	$at,3372($at)
    sd	$s3,56($sp)
    # Line 1184
    srav	$s7,$s7,$v0
    sd	$v0,80($sp)
    # Line 1179
    lw	$v0,31312($a0)
    # Line 1180
    lw	$s3,12032($a0)
    # Line 1158
    lw	$a1,30476($a0)
    sd	$v0,64($sp)
    # Line 1182
    lw	$v0,31196($a0)
    sd	$a1,96($sp)
    # Line 1181
    lw	$a1,31192($a0)
    sd	$v0,144($sp)
    # Line 1173
    lw	$v0,29888($a0)
    sd	$a1,112($sp)
    # Line 1171
    mflo	$a1
    sd	$s3,0($sp)
    # Line 1183
    lw	$s3,30208($a0)
    # Line 1173
    mult	$s0,$v0
    # Line 1164
    lw	$a2,3372($a2)
    sd	$s3,88($sp)
    # Line 1185
    lw	$s3,30332($a0)
    # Line 1176
    lw	$s8,29900($a0)
    # Line 1164
    sll	$a2,$a2,0x2
    sd	$s3,72($sp)
    lw	$s3,31248($a0)
    lw	$v0,29872($a0)
    sll	$a5,$a5,0x2
    addu	$s3,$s3,$a5
    sll	$a5,$v0,0x2
    addu	$s3,$s3,$a5
    # Line 1173
    mflo	$a5
    # Line 1164
    subu	$s3,$s3,$a2
    # Line 1157
    lw	$a2,30252($a0)
    # Line 1174
    mult	$s0,$v1
    # Line 1171
    lw	$s0,31128($a0)
    sd	$a2,104($sp)
    # Line 1157
    move	$v1,$a2
    # Line 1171
    addu	$s0,$s0,$a1
    addu	$s0,$s0,$v0
    # Line 1142
    lui	$a1,0x14
    addiu	$a1,$a1,-29156
    # addu	gp,t9,a1
    # Line 1162
    lw	$t9,29880($a0)
    # Line 1160
    lw	$a1,29884($a0)
    # Line 1171
    subu	$s0,$s0,$at
    # Line 1166
    addu	$a4,$a4,$t9
    # Line 1167
    addu	$a3,$a3,$a1
    # Line 1173
    addu	$a5,$a5,$t9
    sd	$a5,160($sp)
    # Line 1174
    mflo	$a0
    addu	$a0,$a0,$a1
    # Line 1186
    beqz	$a2,.L0dabed40
    sd	$a0,128($sp)
    sd	$s2,208($sp)
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s1,184($sp)
    sd	$s5,176($sp)
    li	$a0,-1
    sll	$at,$a3,0x2
    sll	$v0,$a4,0x2
    sd	$v0,152($sp)
    b	.L0dabec08
    sd	$at,120($sp)
.L0dabebd8:
    # Line 1226
    ld	$at,88($sp)
    ld	$v0,72($sp)
    # Line 1225
    ld	$a1,136($sp)
    # Line 1226
    addu	$at,$v0,$at
    sd	$at,88($sp)
    # Line 1225
    ld	$at,96($sp)
    # Line 1226
    ld	$v1,104($sp)
    # Line 1225
    and	$a1,$s6,$a1
    addiu	$at,$at,4
    sd	$at,96($sp)
    # Line 1226
    beqz	$v1,.L0dabed24
    # Line 1225
    sw	$a1,-4($at)
.L0dabec08:
    lui	$s1,0x8000
    # Line 1192
    ld	$v0,104($sp)
    ld	$v1,104($sp)
    # Line 1194
    ld	$s2,88($sp)
    # Line 1196
    li	$at,-1
    # Line 1188
    move	$s5,$v1
    slti	$v1,$v1,33
    bnez	$v1,.L0dabec30
    # Line 1195
    ld	$s6,96($sp)
    # Line 1190
    li	$s5,32
.L0dabec30:
    # Line 1195
    lw	$s6,0($s6)
    sd	$at,136($sp)
    # Line 1194
    ld	$at,80($sp)
    # Line 1192
    subu	$v0,$v0,$s5
    # Line 1198
    addiu	$s5,$s5,-1
    # Line 1194
    srlv	$s2,$s2,$at
    ld	$at,64($sp)
    sd	$v0,104($sp)
    # Line 1198
    bltz	$s5,.L0dabebd8
    # Line 1194
    addu	$s2,$s2,$at
    b	.L0dabec9c
    # Line 1210
    addu	$s4,$s4,$s8
.L0dabec60:
    ld	$v0,144($sp)
    # Line 1201
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0dabec70:
    # Line 1216
    ld	$v1,152($sp)
    # Line 1213
    ld	$v0,120($sp)
    # Line 1210
    bltz	$s4,.L0dabed08
    # Line 1208
    addu	$s2,$s7,$s2
    ld	$a1,160($sp)
    # Line 1216
    addu	$s3,$v1,$s3
    # Line 1217
    addu	$s0,$a1,$s0
.L0dabec8c:
    # Line 1220
    srl	$s1,$s1,0x1
    # Line 1198
    beq	$s5,$a0,.L0dabebd8
    nop
    # Line 1210
    addu	$s4,$s4,$s8
.L0dabec9c:
    # Line 1198
    and	$at,$s6,$s1
    beqz	$at,.L0dabecf8
    addiu	$s5,$s5,-1
    # Line 1200
    ld	$t9,0($sp)
    move	$a0,$s2
    lw	$a1,0($s3)
    jalr	$t9
    move	$a2,$s3
    li	$a0,-1
    bnez	$v0,.L0dabec60
    lbu	$a2,0($s0)
    # Line 1204
    nor	$a1,$s1,$zero
    # Line 1203
    ld	$v0,112($sp)
    ld	$v1,168($sp)
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    # Line 1205
    addiu	$v1,$v1,1
    sd	$v1,168($sp)
    # Line 1204
    ld	$v1,136($sp)
    # Line 1203
    sb	$v0,0($s0)
    # Line 1204
    and	$v1,$a1,$v1
    b	.L0dabec70
    sd	$v1,136($sp)
.L0dabecf8:
    ld	$a1,168($sp)
    # Line 1207
    addiu	$a1,$a1,1
    b	.L0dabec70
    sd	$a1,168($sp)
.L0dabed08:
    # Line 1213
    addu	$s3,$v0,$s3
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    ld	$v1,128($sp)
    # Line 1212
    and	$s4,$s4,$at
    # Line 1214
    b	.L0dabec8c
    addu	$s0,$v1,$s0
.L0dabed24:
    ld	$s5,176($sp)
    ld	$s1,184($sp)
    ld	$ra,192($sp)
    ld	$a2,8($sp)
    ld	$s6,200($sp)
    ld	$s2,208($sp)
    # Line 1226
    lw	$a2,30252($a2)
.L0dabed40:
    ld	$at,168($sp)
    beq	$a2,$at,.L0dabed6c
    # Line 1231
    move	$v0,$zero
    # ld	gp,32(sp)
    ld	$s0,16($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s7,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dabed6c:
    # Line 1234
    li	$v0,1
    # ld	gp,32(sp)
    ld	$s0,16($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s7,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glDepthTestStencilStippledLine

# Function: __glDepthPassLine
# Declared: Line 1237 (Source lines: 1251-1270)
# Address: 0x0dabed90 - 0x0dabeec0 (Size: 304 bytes, Frame: 0)
.globl __glDepthPassLine
.ent __glDepthPassLine
__glDepthPassLine:
    # Line 1251
    lw	$at,31112($a0)
    lw	$a2,29876($a0)
    lw	$a3,3376($at)
    lw	$v0,31140($a0)
    subu	$a2,$a2,$a3
    mult	$a2,$v0
    # Line 1253
    lw	$a1,29888($a0)
    # Line 1251
    mflo	$v1
    nop
    nop
    # Line 1253
    mult	$a1,$v0
    # Line 1258
    lw	$a5,31196($a0)
    # Line 1256
    lw	$a6,29900($a0)
    # Line 1259
    lui	$t0,0x7fff
    # Line 1254
    lw	$a7,29892($a0)
    # Line 1253
    mflo	$t1
    # Line 1259
    lw	$a4,30252($a0)
    ori	$t0,$t0,0xffff
    # Line 1254
    mult	$a7,$v0
    # Line 1259
    addiu	$a4,$a4,-1
    addiu	$t2,$a4,1
    # Line 1255
    lw	$a3,29896($a0)
    # Line 1251
    lw	$at,3372($at)
    # Line 1253
    lw	$a7,29880($a0)
    # Line 1251
    lw	$a2,29872($a0)
    lw	$v0,31128($a0)
    # Line 1253
    addu	$a7,$a7,$t1
    # Line 1254
    lw	$t1,29884($a0)
    # Line 1251
    addu	$v0,$v0,$v1
    addu	$a2,$a2,$v0
    subu	$a2,$a2,$at
    # Line 1254
    mflo	$at
    # Line 1259
    bltz	$a4,.L0dabee50
    # Line 1254
    addu	$t1,$t1,$at
    andi	$at,$t2,0x1
    beqz	$at,.L0dabee44
    # Line 1259
    li	$a1,-1
    # Line 1260
    lbu	$v0,0($a2)
    # Line 1259
    addiu	$a4,$a4,-1
    # Line 1260
    addu	$v0,$v0,$a5
    lbu	$v0,0($v0)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0dabeeb4
    # Line 1260
    sb	$v0,0($a2)
    # Line 1266
    addu	$a2,$a7,$a2
.L0dabee44:
    sra	$v1,$t2,0x1
    bnezl	$v1,.L0dabee6c
    # Line 1260
    lbu	$a0,0($a2)
.L0dabee50:
    # Line 1270
    jr	$ra
    move	$v0,$zero
.L0dabee58:
    # Line 1264
    addu	$a2,$t1,$a2
    # Line 1263
    and	$a3,$a3,$t0
.L0dabee60:
    # Line 1259
    beq	$a4,$a1,.L0dabee50
    nop
    # Line 1260
    lbu	$a0,0($a2)
.L0dabee6c:
    # Line 1259
    addiu	$a4,$a4,-2
    # Line 1260
    addu	$a0,$a0,$a5
    lbu	$a0,0($a0)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0dabeea8
    # Line 1260
    sb	$a0,0($a2)
    # Line 1266
    addu	$a2,$a7,$a2
.L0dabee88:
    # Line 1260
    lbu	$at,0($a2)
    addu	$at,$at,$a5
    lbu	$at,0($at)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0dabee58
    # Line 1260
    sb	$at,0($a2)
    b	.L0dabee60
    # Line 1266
    addu	$a2,$a7,$a2
.L0dabeea8:
    # Line 1264
    addu	$a2,$t1,$a2
    b	.L0dabee88
    # Line 1263
    and	$a3,$a3,$t0
.L0dabeeb4:
    # Line 1264
    addu	$a2,$t1,$a2
    b	.L0dabee44
    # Line 1263
    and	$a3,$a3,$t0
.end __glDepthPassLine

# Function: __glDepthPassStippledLine
# Declared: Line 1273 (Source lines: 1274-1325)
# Address: 0x0dabeec0 - 0x0dabf05c (Size: 412 bytes, Frame: 32)
.globl __glDepthPassStippledLine
.ent __glDepthPassStippledLine
__glDepthPassStippledLine:
    # Line 1290
    lw	$at,31112($a0)
    lw	$a6,29876($a0)
    lw	$a7,3376($at)
    lw	$a2,31140($a0)
    subu	$a6,$a6,$a7
    mult	$a6,$a2
    # Line 1292
    lw	$a3,29888($a0)
    # Line 1290
    mflo	$v1
    nop
    nop
    # Line 1292
    mult	$a3,$a2
    # Line 1274
    addiu	$sp,$sp,-32
    # Line 1293
    lw	$a1,29892($a0)
    # Line 1292
    mflo	$t3
    # Line 1296
    lw	$t0,31196($a0)
    # Line 1284
    lw	$t9,30476($a0)
    # Line 1293
    mult	$a1,$a2
    # Line 1283
    lw	$t8,30252($a0)
    # Line 1290
    lw	$v0,31128($a0)
    lw	$at,3372($at)
    # Line 1295
    lw	$a6,29900($a0)
    # Line 1292
    lw	$a7,29880($a0)
    # Line 1294
    lw	$a3,29896($a0)
    # Line 1290
    addu	$v0,$v0,$v1
    lw	$a2,29872($a0)
    # Line 1292
    addu	$a7,$a7,$t3
    # Line 1293
    lw	$t3,29884($a0)
    # Line 1290
    addu	$a2,$a2,$v0
    subu	$a2,$a2,$at
    # Line 1293
    mflo	$at
    # Line 1296
    beqz	$t8,.L0dabf048
    # Line 1293
    addu	$t3,$t3,$at
    # Line 1296
    li	$t1,-1
    lui	$t2,0x7fff
    b	.L0dabef54
    ori	$t2,$t2,0xffff
.L0dabef50:
    # Line 1306
    beqz	$t8,.L0dabf048
.L0dabef54:
    # Line 1298
    slti	$at,$t8,33
    bnez	$at,.L0dabef64
    move	$a4,$t8
    # Line 1300
    li	$a4,32
.L0dabef64:
    # Line 1304
    lw	$a5,0($t9)
    lui	$a1,0x8000
    # Line 1302
    subu	$t8,$t8,$a4
    # Line 1306
    addiu	$a4,$a4,-1
    bltz	$a4,.L0dabef50
    # Line 1304
    addiu	$t9,$t9,4
    # Line 1306
    addiu	$v0,$a4,1
    sd	$v0,0($sp)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dabefc0
    ld	$at,0($sp)
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1306
    and	$v1,$a5,$a1
    beqz	$v1,.L0dabefb0
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1308
    lbu	$a0,0($a2)
    addu	$a0,$a0,$t0
    lbu	$a0,0($a0)
    sb	$a0,0($a2)
.L0dabefb0:
    # Line 1310
    bltzl	$a3,.L0dabf054
    # Line 1313
    addu	$a2,$t3,$a2
    # Line 1315
    addu	$a2,$a7,$a2
.L0dabefbc:
    # Line 1306
    addiu	$a4,$a4,-1
.L0dabefc0:
    sra	$at,$at,0x1
    beqz	$at,.L0dabef50
    nop
    b	.L0dabefe8
    and	$v0,$a5,$a1
.L0dabefd4:
    # Line 1310
    bltz	$a3,.L0dabf03c
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1315
    addu	$a2,$a7,$a2
.L0dabefe0:
    # Line 1306
    beq	$a4,$t1,.L0dabef50
    and	$v0,$a5,$a1
.L0dabefe8:
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1306
    beqz	$v0,.L0dabf004
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1308
    lbu	$v1,0($a2)
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0dabf004:
    # Line 1306
    and	$a0,$a5,$a1
    # Line 1310
    bltzl	$a3,.L0dabf034
    # Line 1313
    addu	$a2,$t3,$a2
    # Line 1315
    addu	$a2,$a7,$a2
.L0dabf014:
    # Line 1306
    addiu	$a4,$a4,-2
    beqz	$a0,.L0dabefd4
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1308
    lbu	$at,0($a2)
    addu	$at,$at,$t0
    lbu	$at,0($at)
    b	.L0dabefd4
    sb	$at,0($a2)
.L0dabf034:
    # Line 1313
    b	.L0dabf014
    # Line 1312
    and	$a3,$a3,$t2
.L0dabf03c:
    # Line 1313
    addu	$a2,$t3,$a2
    b	.L0dabefe0
    # Line 1312
    and	$a3,$a3,$t2
.L0dabf048:
    # Line 1325
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0dabf054:
    # Line 1313
    b	.L0dabefbc
    # Line 1312
    and	$a3,$a3,$t2
.end __glDepthPassStippledLine

# Function: __glStoreLine
# Declared: Line 1360 (Source lines: 1361-1399)
# Address: 0x0dabf05c - 0x0dabf1a4 (Size: 328 bytes, Frame: 176)
.globl __glStoreLine
.ent __glStoreLine
__glStoreLine:
    # Line 1372
    lw	$a1,29884($a0)
    # Line 1373
    lw	$v1,29892($a0)
    # Line 1361
    addiu	$sp,$sp,-176
    sd	$a1,64($sp)
    sd	$v1,56($sp)
    # sd	gp,136(sp)
    lui	$at,0x14
    addiu	$at,$at,-30708
    sd	$s1,112($sp)
    # Line 1378
    lw	$s1,30468($a0)
    sd	$s5,120($sp)
    # Line 1377
    lw	$s5,29900($a0)
    sd	$s0,104($sp)
    # Line 1376
    lw	$s0,29896($a0)
    sd	$s7,128($sp)
    # Line 1375
    lw	$s7,29888($a0)
    sd	$s6,88($sp)
    # Line 1374
    lw	$s6,29880($a0)
    sd	$s2,72($sp)
    # Line 1370
    lw	$s2,30252($a0)
    sd	$s3,80($sp)
    # Line 1379
    lw	$s3,30484($a0)
    # Line 1381
    lw	$v0,29872($a0)
    sd	$s4,96($sp)
    # Line 1380
    lw	$s4,164($s3)
    # Line 1381
    sw	$v0,0($sp)
    # Line 1361
    # addu	gp,t9,at
    # Line 1382
    lw	$at,29876($a0)
    # Line 1384
    addiu	$s2,$s2,-1
    bltz	$s2,.L0dabf174
    # Line 1382
    sw	$at,4($sp)
    sd	$ra,144($sp)
    sd	$s8,152($sp)
    b	.L0dabf104
    # Line 1384
    li	$s8,-1
.L0dabf0e8:
    # Line 1394
    addu	$v0,$s6,$a2
    sw	$v0,0($sp)
    # Line 1395
    addu	$v1,$s7,$a0
    sw	$v1,4($sp)
.L0dabf0f8:
    # Line 1384
    addiu	$s2,$s2,-1
    beql	$s2,$s8,.L0dabf170
    ld	$s8,152($sp)
.L0dabf104:
    # Line 1385
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    # Line 1386
    addiu	$a1,$sp,0
    # Line 1385
    lwc1	$f1,8($s1)
    # Line 1386
    move	$a0,$s3
    # Line 1385
    addiu	$s1,$s1,16
    swc1	$f1,20($sp)
    # Line 1386
    move	$t9,$s4
    # Line 1385
    lwc1	$f0,-4($s1)
    # Line 1388
    addu	$s0,$s0,$s5
    # Line 1386
    jalr	$s4
    # Line 1385
    swc1	$f0,24($sp)
    # Line 1388
    lw	$a2,0($sp)
    # Line 1391
    ld	$a1,64($sp)
    # Line 1392
    ld	$at,56($sp)
    # Line 1388
    bgez	$s0,.L0dabf0e8
    lw	$a0,4($sp)
    # Line 1392
    addu	$at,$at,$a0
    # Line 1391
    addu	$a1,$a1,$a2
    sw	$a1,0($sp)
    # Line 1392
    sw	$at,4($sp)
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    b	.L0dabf0f8
    # Line 1390
    and	$s0,$s0,$v0
.L0dabf170:
    ld	$ra,144($sp)
.L0dabf174:
    # Line 1399
    move	$v0,$zero
    # ld	gp,136(sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s4,96($sp)
    ld	$s5,120($sp)
    ld	$s6,88($sp)
    ld	$s7,128($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glStoreLine

# Function: __glStoreStippledLine
# Declared: Line 1408 (Source lines: 1409-1470)
# Address: 0x0dabf1a4 - 0x0dabf350 (Size: 428 bytes, Frame: 224)
.globl __glStoreStippledLine
.ent __glStoreStippledLine
__glStoreStippledLine:
    # Line 1409
    addiu	$sp,$sp,-224
    sd	$s3,104($sp)
    # Line 1433
    lw	$s3,29876($a0)
    sd	$s1,88($sp)
    # Line 1432
    lw	$s1,29872($a0)
    sd	$s2,112($sp)
    # Line 1429
    lw	$s2,30468($a0)
    sd	$s7,80($sp)
    # Line 1428
    lw	$s7,29900($a0)
    sd	$s4,96($sp)
    # Line 1427
    lw	$s4,29896($a0)
    sd	$s8,72($sp)
    # Line 1426
    lw	$s8,29888($a0)
    # Line 1421
    lw	$a1,30476($a0)
    # Line 1425
    lw	$v1,29880($a0)
    # sd	gp,120(sp)
    sd	$a1,128($sp)
    sd	$v1,160($sp)
    # Line 1409
    lui	$v1,0x14
    addiu	$v1,$v1,-31036
    # Line 1424
    lw	$v0,29892($a0)
    # Line 1409
    # addu	gp,t9,v1
    # Line 1423
    lw	$at,29884($a0)
    sd	$v0,144($sp)
    # Line 1430
    lw	$v0,30484($a0)
    sd	$at,152($sp)
    # Line 1420
    lw	$at,30252($a0)
    sd	$v0,64($sp)
    # Line 1431
    lw	$v0,164($v0)
    sd	$at,136($sp)
    # Line 1433
    beqz	$at,.L0dabf328
    sd	$v0,56($sp)
    sd	$s6,192($sp)
    sd	$ra,184($sp)
    sd	$s0,176($sp)
    sd	$s5,168($sp)
    b	.L0dabf244
    li	$a0,-1
.L0dabf23c:
    ld	$a1,136($sp)
    # Line 1444
    beqz	$a1,.L0dabf318
.L0dabf244:
    ld	$at,136($sp)
    # Line 1436
    move	$s5,$at
    slti	$at,$at,33
    bnez	$at,.L0dabf25c
    # Line 1442
    ld	$v0,128($sp)
    # Line 1438
    li	$s5,32
.L0dabf25c:
    lui	$s0,0x8000
    # Line 1442
    lw	$s6,0($v0)
    # Line 1440
    ld	$v1,136($sp)
    # Line 1442
    addiu	$v0,$v0,4
    sd	$v0,128($sp)
    # Line 1440
    subu	$v1,$v1,$s5
    # Line 1444
    addiu	$s5,$s5,-1
    bltz	$s5,.L0dabf23c
    sd	$v1,136($sp)
    b	.L0dabf2b0
    # Line 1453
    addu	$s4,$s4,$s7
.L0dabf288:
    ld	$a1,144($sp)
    bltz	$s4,.L0dabf2fc
    # Line 1452
    addiu	$s2,$s2,16
    # Line 1459
    ld	$a1,160($sp)
    # Line 1460
    addu	$s3,$s8,$s3
    # Line 1459
    addu	$s1,$a1,$s1
.L0dabf2a0:
    # Line 1463
    srl	$s0,$s0,0x1
    # Line 1444
    beq	$s5,$a0,.L0dabf23c
    nop
    # Line 1453
    addu	$s4,$s4,$s7
.L0dabf2b0:
    # Line 1444
    and	$at,$s6,$s0
    beqz	$at,.L0dabf288
    addiu	$s5,$s5,-1
    # Line 1447
    sw	$s3,4($sp)
    # Line 1446
    sw	$s1,0($sp)
    # Line 1448
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    # Line 1449
    addiu	$a1,$sp,0
    # Line 1448
    swc1	$f1,20($sp)
    # Line 1449
    ld	$t9,56($sp)
    # Line 1448
    lwc1	$f0,12($s2)
    # Line 1449
    ld	$a0,64($sp)
    jalr	$t9
    # Line 1448
    swc1	$f0,24($sp)
    b	.L0dabf288
    li	$a0,-1
.L0dabf2fc:
    # Line 1456
    ld	$v1,152($sp)
    # Line 1457
    addu	$s3,$a1,$s3
    # Line 1456
    addu	$s1,$v1,$s1
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    # Line 1457
    b	.L0dabf2a0
    # Line 1455
    and	$s4,$s4,$v0
.L0dabf318:
    ld	$s5,168($sp)
    ld	$s0,176($sp)
    ld	$ra,184($sp)
    ld	$s6,192($sp)
.L0dabf328:
    # Line 1470
    move	$v0,$zero
    # ld	gp,120(sp)
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s7,80($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glStoreStippledLine

# Function: __glAntiAliasLine
# Declared: Line 1473 (Source lines: 1474-1635)
# Address: 0x0dabf350 - 0x0dabf770 (Size: 1056 bytes, Frame: 224)
.globl __glAntiAliasLine
.ent __glAntiAliasLine
__glAntiAliasLine:
    # Line 1487
    lw	$a2,30440($a0)
    # Line 1474
    addiu	$sp,$sp,-224
    sd	$s8,168($sp)
    sdc1	$f30,136($sp)
    sd	$s1,72($sp)
    move	$s1,$a0
    sdc1	$f20,16($sp)
    # Line 1502
    lwc1	$f20,30000($a0)
    sdc1	$f22,0($sp)
    # Line 1501
    lwc1	$f22,29996($a0)
    sd	$s3,88($sp)
    # Line 1494
    lw	$s3,30468($a0)
    sd	$s7,64($sp)
    # Line 1492
    lw	$s7,29900($a0)
    sd	$s2,96($sp)
    # Line 1491
    lw	$s2,29896($a0)
    sd	$s6,80($sp)
    # Line 1508
    move	$s6,$zero
    sd	$gp,104($sp)
    # Line 1474
    lui	$v0,0x14
    addiu	$v0,$v0,-31464
    addu	$gp,$t9,$v0
    # Line 1489
    lw	$at,30252($a0)
    # Line 1498
    lwc1	$f2,29988($a0)
    # Line 1497
    lwc1	$f1,29984($a0)
    # Line 1499
    lwc1	$f3,29992($a0)
    # Line 1507
    lw	$v1,30476($a0)
    sdc1	$f1,32($sp)
    # Line 1496
    lwc1	$f0,29980($a0)
    sdc1	$f26,8($sp)
    # Line 1504
    lwc1	$f26,448($a0)
    sdc1	$f0,48($sp)
    # Line 1503
    lwc1	$f0,3280($a0)
    lwc1	$f1,29960($a0)
    sd	$v1,112($sp)
    # Line 1504
    mul.s	$f26,$f26,$f0
    # Line 1503
    sub.s	$f1,$f1,$f0
    sdc1	$f3,24($sp)
    sdc1	$f2,56($sp)
    sd	$at,120($sp)
    sdc1	$f1,40($sp)
    # Line 1508
    beqz	$at,.L0dabf6cc
    # Line 1504
    sub.s	$f26,$f26,$f0
    sd	$ra,200($sp)
    sd	$s4,192($sp)
    sd	$s0,184($sp)
    sd	$s5,176($sp)
    sdc1	$f24,152($sp)
    sdc1	$f28,144($sp)
    # Line 1508
    li	$s8,-1
    li	$a0,1
    mtc1	$zero,$f30
    andi	$a1,$a2,0x8000
    b	.L0dabf444
    sd	$a1,128($sp)
.L0dabf42c:
    ld	$v0,112($sp)
    # Line 1622
    ld	$at,120($sp)
    sw	$s5,0($v0)
    addiu	$v0,$v0,4
    beqz	$at,.L0dabf6ac
    sd	$v0,112($sp)
.L0dabf444:
    ld	$v1,120($sp)
    lui	$s0,0x8000
    # Line 1510
    move	$s4,$v1
    slti	$v1,$v1,33
    bnez	$v1,.L0dabf460
    # Line 1514
    ld	$a1,120($sp)
    # Line 1512
    li	$s4,32
.L0dabf460:
    # Line 1516
    li	$s5,-1
    # Line 1514
    subu	$a1,$a1,$s4
    # Line 1519
    addiu	$s4,$s4,-1
    bltz	$s4,.L0dabf42c
    sd	$a1,120($sp)
    b	.L0dabf574
    c.lt.s	$f26,$f20
.L0dabf47c:
    # Line 1564
    add.s	$f12,$f4,$f5
.L0dabf480:
    # Line 1566
    # lw $t9, -22984($gp) # &floorf
    jal	floorf
    sdc1	$f12,160($sp)
    trunc.w.s	$f4,$f0
    cvt.s.w	$f7,$f4
    lwc1	$f6,30008($s1)
    mul.s	$f5,$f6,$f7
    trunc.w.s	$f5,$f5
    # Line 1578
    li	$a4,1
    li	$a0,1
    # Line 1566
    mfc1	$a2,$f4
    mfc1	$at,$f5
    lhu	$a3,456($s1)
    # Line 1580
    addu	$v1,$a2,$a0
    # Line 1566
    andi	$at,$at,0xf
    sllv	$at,$a0,$at
    and	$at,$at,$a3
    beqz	$at,.L0dabf6a4
    ldc1	$f5,160($sp)
.L0dabf4cc:
    # Line 1580
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 1586
    move	$a2,$zero
    # Line 1589
    sub.s	$f3,$f5,$f7
    # Line 1580
    andi	$v0,$v0,0xf
    sllv	$v0,$a0,$v0
    and	$v0,$v0,$a3
    beqz	$v0,.L0dabf504
    # Line 1589
    sub.s	$f0,$f28,$f3
    # Line 1584
    li	$a2,1
.L0dabf504:
    # Line 1589
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f2,$f2,$f3
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    mul.s	$f24,$f1,$f24
    # Line 1593
    c.eq.s	$f24,$f30
.L0dabf530:
    nop
    bc1fl	.L0dabf658
    # Line 1596
    lbu	$v0,3105($s1)
.L0dabf53c:
    addiu	$s6,$s6,1
.L0dabf540:
    # Line 1595
    nor	$a1,$s0,$zero
    and	$s5,$a1,$s5
.L0dabf548:
    # Line 1612
    ldc1	$f2,48($sp)
    ldc1	$f0,24($sp)
    # Line 1606
    bltz	$s2,.L0dabf678
    # Line 1604
    addiu	$s3,$s3,16
    # Line 1612
    add.s	$f22,$f2,$f22
    ldc1	$f3,56($sp)
    # Line 1613
    add.s	$f20,$f3,$f20
.L0dabf564:
    # Line 1617
    srl	$s0,$s0,0x1
    # Line 1519
    beq	$s4,$s8,.L0dabf42c
    nop
    c.lt.s	$f26,$f20
.L0dabf574:
    addiu	$s4,$s4,-1
    # Line 1606
    addu	$s2,$s2,$s7
    # Line 1519
    bc1f	.L0dabf5a4
    lwc1	$f28,3284($s1)
    # Line 1522
    sub.s	$f24,$f26,$f20
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0dabf5dc
    # Line 1534
    lwc1	$f4,3280($s1)
    b	.L0dabf540
    # Line 1596
    addiu	$s6,$s6,1
.L0dabf5a4:
    # Line 1525
    neg.s	$f0,$f26
    c.lt.s	$f20,$f0
    nop
    bc1f	.L0dabf5d8
    # Line 1534
    mov.s	$f24,$f28
    # Line 1528
    add.s	$f24,$f20,$f26
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0dabf5dc
    # Line 1534
    lwc1	$f4,3280($s1)
    b	.L0dabf540
    # Line 1596
    addiu	$s6,$s6,1
.L0dabf5d8:
    # Line 1534
    lwc1	$f4,3280($s1)
.L0dabf5dc:
    c.lt.s	$f22,$f4
    nop
    bc1f	.L0dabf60c
    ldc1	$f1,40($sp)
    # Line 1539
    add.s	$f0,$f4,$f22
    mul.s	$f24,$f0,$f24
    c.lt.s	$f24,$f30
    nop
    bc1f	.L0dabf638
    ld	$at,128($sp)
    b	.L0dabf540
    # Line 1596
    addiu	$s6,$s6,1
.L0dabf60c:
    # Line 1542
    c.lt.s	$f1,$f22
    nop
    bc1f	.L0dabf634
    ldc1	$f2,40($sp)
    # Line 1545
    sub.s	$f2,$f2,$f22
    add.s	$f2,$f2,$f28
    mul.s	$f24,$f2,$f24
    c.lt.s	$f24,$f30
    nop
    bc1t	.L0dabf53c
.L0dabf634:
    ld	$at,128($sp)
.L0dabf638:
    # Line 1548
    beqz	$at,.L0dabf530
    # Line 1593
    c.eq.s	$f24,$f30
    # Line 1548
    c.lt.s	$f4,$f22
    nop
    bc1f	.L0dabf47c
    lwc1	$f5,30004($s1)
    # Line 1562
    b	.L0dabf480
    add.s	$f12,$f5,$f22
.L0dabf658:
    # Line 1596
    beqz	$v0,.L0dabf694
    # Line 1599
    nop	# was lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s3)
    li	$a0,1
    b	.L0dabf548
    swc1	$f0,0($s3)
.L0dabf678:
    # Line 1609
    ldc1	$f3,32($sp)
    # Line 1610
    add.s	$f20,$f0,$f20
    # Line 1609
    add.s	$f22,$f3,$f22
    lui	$v1,0x7fff
    ori	$v1,$v1,0xffff
    # Line 1610
    b	.L0dabf564
    # Line 1608
    and	$s2,$s2,$v1
.L0dabf694:
    # Line 1601
    lwc1	$f1,12($s3)
    mul.s	$f1,$f1,$f24
    b	.L0dabf548
    swc1	$f1,12($s3)
.L0dabf6a4:
    b	.L0dabf4cc
    # Line 1580
    move	$a4,$zero
.L0dabf6ac:
    ldc1	$f30,136($sp)
    ldc1	$f28,144($sp)
    ldc1	$f24,152($sp)
    ld	$s8,168($sp)
    ld	$s5,176($sp)
    ld	$s0,184($sp)
    ld	$s4,192($sp)
    ld	$ra,200($sp)
.L0dabf6cc:
    # Line 1622
    beqz	$s6,.L0dabf744
    # Line 1627
    move	$v0,$zero
    lw	$a1,30252($s1)
    beq	$a1,$s6,.L0dabf70c
    # Line 1631
    li	$v0,1
    ld	$gp,104($sp)
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabf70c:
    # Line 1635
    li	$v0,1
    ld	$gp,104($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    # Line 1634
    li	$a2,1
    sb	$a2,30480($s1)
    # Line 1635
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabf744:
    ld	$gp,104($sp)
    # Line 1627
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glAntiAliasLine

# Function: __glAntiAliasStippledLine
# Declared: Line 1638 (Source lines: 1639-1794)
# Address: 0x0dabf770 - 0x0dabfb98 (Size: 1064 bytes, Frame: 224)
.globl __glAntiAliasStippledLine
.ent __glAntiAliasStippledLine
__glAntiAliasStippledLine:
    # Line 1664
    lwc1	$f5,29988($a0)
    # Line 1662
    lwc1	$f6,29980($a0)
    # Line 1652
    lw	$a3,30440($a0)
    # Line 1639
    addiu	$sp,$sp,-224
    sdc1	$f30,120($sp)
    sd	$s3,72($sp)
    move	$s3,$a0
    sdc1	$f20,16($sp)
    # Line 1668
    lwc1	$f20,30000($a0)
    sdc1	$f22,0($sp)
    # Line 1667
    lwc1	$f22,29996($a0)
    sd	$s2,80($sp)
    # Line 1660
    lw	$s2,30468($a0)
    sd	$s7,48($sp)
    # Line 1658
    lw	$s7,29900($a0)
    sd	$s1,64($sp)
    # Line 1657
    lw	$s1,29896($a0)
    sd	$s5,56($sp)
    # Line 1672
    move	$s5,$zero
    # sd	gp,88(sp)
    # Line 1639
    lui	$v0,0x14
    addiu	$v0,$v0,-32520
    # Line 1665
    lwc1	$f1,29992($a0)
    # Line 1639
    # addu	gp,t9,v0
    # Line 1654
    lw	$a2,30252($a0)
    sdc1	$f1,24($sp)
    # Line 1663
    lwc1	$f0,29984($a0)
    sdc1	$f26,8($sp)
    # Line 1670
    lwc1	$f26,448($a0)
    sdc1	$f0,32($sp)
    # Line 1669
    lwc1	$f0,3280($a0)
    lwc1	$f1,29960($a0)
    # Line 1655
    lw	$v1,30476($a0)
    # Line 1670
    mul.s	$f26,$f26,$f0
    # Line 1669
    sub.s	$f1,$f1,$f0
    sd	$v1,96($sp)
    # Line 1654
    move	$at,$a2
    sd	$a2,104($sp)
    sdc1	$f1,40($sp)
    # Line 1672
    beqz	$a2,.L0dabfb34
    # Line 1670
    sub.s	$f26,$f26,$f0
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s4,184($sp)
    sd	$s0,176($sp)
    sd	$s8,168($sp)
    sdc1	$f24,136($sp)
    sdc1	$f28,128($sp)
    # Line 1672
    li	$a0,-1
    li	$a2,1
    mtc1	$zero,$f30
    andi	$a1,$a3,0x8000
    b	.L0dabf864
    sd	$a1,112($sp)
.L0dabf848:
    ld	$v1,96($sp)
    # Line 1788
    and	$v0,$s8,$s6
    ld	$at,104($sp)
    addiu	$v1,$v1,4
    sd	$v1,96($sp)
    beqz	$at,.L0dabfb10
    sw	$v0,-4($v1)
.L0dabf864:
    # Line 1680
    ld	$s8,96($sp)
    ld	$a1,104($sp)
    # Line 1678
    ld	$at,104($sp)
    # Line 1681
    li	$s6,-1
    # Line 1674
    move	$s4,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0dabf888
    lui	$s0,0x8000
    # Line 1676
    li	$s4,32
.L0dabf888:
    # Line 1680
    lw	$s8,0($s8)
    # Line 1678
    subu	$at,$at,$s4
    # Line 1683
    addiu	$s4,$s4,-1
    bltz	$s4,.L0dabf848
    sd	$at,104($sp)
    b	.L0dabf9a8
    # Line 1772
    addu	$s1,$s1,$s7
.L0dabf8a4:
    sdc1	$f5,160($sp)
    sdc1	$f6,152($sp)
    # Line 1729
    add.s	$f12,$f4,$f7
.L0dabf8b0:
    # Line 1731
    # lw $t9, -22984($gp) # &floorf
    jal	floorf
    sdc1	$f12,144($sp)
    trunc.w.s	$f2,$f0
    cvt.s.w	$f9,$f2
    lwc1	$f8,30008($s3)
    mul.s	$f3,$f8,$f9
    li	$a0,-1
    ldc1	$f6,152($sp)
    ldc1	$f5,160($sp)
    # Line 1745
    move	$a5,$zero
    # Line 1731
    trunc.w.s	$f3,$f3
    ldc1	$f7,144($sp)
    li	$a2,1
    mfc1	$a3,$f2
    mfc1	$v0,$f3
    lhu	$a4,456($s3)
    # Line 1745
    addu	$a1,$a3,$a2
    # Line 1731
    andi	$v0,$v0,0xf
    sllv	$v0,$a2,$v0
    and	$v0,$v0,$a4
    beqz	$v0,.L0dabf910
    # Line 1754
    sub.s	$f3,$f7,$f9
    # Line 1743
    li	$a5,1
.L0dabf910:
    # Line 1745
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f8
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    # Line 1749
    li	$a3,1
    # Line 1745
    andi	$v1,$v1,0xf
    sllv	$v1,$a2,$v1
    and	$v1,$v1,$a4
    beqz	$v1,.L0dabfb08
    # Line 1754
    sub.s	$f0,$f28,$f3
.L0dabf940:
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f2,$f2,$f3
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    mul.s	$f24,$f1,$f24
    # Line 1758
    c.eq.s	$f24,$f30
.L0dabf96c:
    nop
    bc1fl	.L0dabfaa0
    # Line 1761
    lbu	$a1,3105($s3)
.L0dabf978:
    addiu	$s5,$s5,1
.L0dabf97c:
    # Line 1760
    nor	$at,$s0,$zero
    and	$s6,$at,$s6
.L0dabf984:
    ldc1	$f0,24($sp)
    # Line 1772
    bltz	$s1,.L0dabfae0
    # Line 1770
    addiu	$s2,$s2,16
    # Line 1779
    add.s	$f20,$f5,$f20
    # Line 1778
    add.s	$f22,$f6,$f22
.L0dabf998:
    # Line 1783
    srl	$s0,$s0,0x1
    # Line 1683
    beq	$s4,$a0,.L0dabf848
    nop
    # Line 1772
    addu	$s1,$s1,$s7
.L0dabf9a8:
    # Line 1683
    and	$v0,$s8,$s0
    beqz	$v0,.L0dabfad8
    addiu	$s4,$s4,-1
    c.lt.s	$f26,$f20
    nop
    bc1f	.L0dabf9e4
    lwc1	$f28,3284($s3)
    # Line 1687
    sub.s	$f24,$f26,$f20
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0dabfa1c
    # Line 1699
    lwc1	$f4,3280($s3)
    b	.L0dabf97c
    # Line 1761
    addiu	$s5,$s5,1
.L0dabf9e4:
    # Line 1690
    neg.s	$f0,$f26
    c.lt.s	$f20,$f0
    nop
    bc1f	.L0dabfa18
    # Line 1699
    mov.s	$f24,$f28
    # Line 1693
    add.s	$f24,$f20,$f26
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0dabfa1c
    # Line 1699
    lwc1	$f4,3280($s3)
    b	.L0dabf97c
    # Line 1761
    addiu	$s5,$s5,1
.L0dabfa18:
    # Line 1699
    lwc1	$f4,3280($s3)
.L0dabfa1c:
    c.lt.s	$f22,$f4
    nop
    bc1f	.L0dabfa4c
    ldc1	$f1,40($sp)
    # Line 1704
    add.s	$f0,$f4,$f22
    mul.s	$f24,$f0,$f24
    c.lt.s	$f24,$f30
    nop
    bc1f	.L0dabfa78
    ld	$v1,112($sp)
    b	.L0dabf97c
    # Line 1761
    addiu	$s5,$s5,1
.L0dabfa4c:
    # Line 1707
    c.lt.s	$f1,$f22
    nop
    bc1f	.L0dabfa74
    ldc1	$f2,40($sp)
    # Line 1710
    sub.s	$f2,$f2,$f22
    add.s	$f2,$f2,$f28
    mul.s	$f24,$f2,$f24
    c.lt.s	$f24,$f30
    nop
    bc1t	.L0dabf978
.L0dabfa74:
    ld	$v1,112($sp)
.L0dabfa78:
    # Line 1713
    beqz	$v1,.L0dabf96c
    # Line 1758
    c.eq.s	$f24,$f30
    # Line 1713
    c.lt.s	$f4,$f22
    nop
    bc1f	.L0dabf8a4
    lwc1	$f7,30004($s3)
    sdc1	$f5,160($sp)
    sdc1	$f6,152($sp)
    # Line 1727
    b	.L0dabf8b0
    add.s	$f12,$f7,$f22
.L0dabfaa0:
    # Line 1761
    beqzl	$a1,.L0dabfafc
    # Line 1766
    lwc1	$f1,12($s2)
    sdc1	$f5,160($sp)
    # Line 1764
    # lw $t9, -27820($gp) # &__glBuildAntiAliasIndex
    sdc1	$f6,152($sp)
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s2)
    li	$a0,-1
    li	$a2,1
    swc1	$f0,0($s2)
    ldc1	$f6,152($sp)
    b	.L0dabf984
    ldc1	$f5,160($sp)
.L0dabfad8:
    b	.L0dabf984
    # Line 1769
    addiu	$s5,$s5,1
.L0dabfae0:
    # Line 1775
    ldc1	$f3,32($sp)
    # Line 1776
    add.s	$f20,$f0,$f20
    # Line 1775
    add.s	$f22,$f3,$f22
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    # Line 1776
    b	.L0dabf998
    # Line 1774
    and	$s1,$s1,$at
.L0dabfafc:
    # Line 1766
    mul.s	$f1,$f1,$f24
    b	.L0dabf984
    swc1	$f1,12($s2)
.L0dabfb08:
    b	.L0dabf940
    # Line 1751
    move	$a3,$zero
.L0dabfb10:
    # Line 1788
    lw	$a2,30252($s3)
    ldc1	$f30,120($sp)
    ldc1	$f28,128($sp)
    ldc1	$f24,136($sp)
    ld	$s8,168($sp)
    ld	$s0,176($sp)
    ld	$s4,184($sp)
    ld	$ra,192($sp)
    ld	$s6,200($sp)
.L0dabfb34:
    bne	$a2,$s5,.L0dabfb68
    # Line 1792
    li	$v0,1
    # ld	gp,88(sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s5,56($sp)
    ld	$s7,48($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabfb68:
    # Line 1794
    move	$v0,$zero
    # ld	gp,88(sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s5,56($sp)
    ld	$s7,48($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glAntiAliasStippledLine

