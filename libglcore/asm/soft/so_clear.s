# Source: ../soft/so_clear.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_clear.c
# Total Functions: 1

.text

# Function: __glim_Clear
# Declared: Line 24 (Source lines: 25-93)
# Address: 0x0da9f210 - 0x0da9f50c (Size: 764 bytes, Frame: 48)
.globl __glim_Clear
.ent __glim_Clear
__glim_Clear:
    # Line 26
    lw	$a2,__glCurrentContext
    # Line 25
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    # Line 29
    lw	$a3,__glBeginMode
    # Line 25
    lui	$at,0x16
    addiu	$at,$at,-31144
    # Line 29
    beqz	$a3,.L0da9f25c
    # Line 25
    nop
    sd	$ra,24($sp)
    # Line 29
    li	$v0,2
    beq	$a3,$v0,.L0da9f28c
    sd	$a0,8($sp)
    # Line 37
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    # Line 38
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9f25c:
    li	$v1,-18177
    and	$v1,$a0,$v1
    beqzl	$v1,.L0da9f2b8
    # Line 45
    lw	$a1,3092($a2)
    # Line 44
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    bal __glSetError
    li	$a0,1281
    # Line 45
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9f28c:
    # Line 32
    lw	$t9,11792($a2)
    jal	__glSetError
    move	$a0,$a2
    # Line 34
    # lw $t9, -22660($gp) # &glClear
    ld	$a0,8($sp)
    jal	glClear
    # Line 33
    sw	$zero,__glBeginMode
    # Line 35
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9f2b8:
    # Line 45
    li	$at,7168
    bnel	$a1,$at,.L0da9f3d8
    nop
    andi	$v0,$a0,0x4000
    beqz	$v0,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
    # Line 50
    lw	$a4,1788($a2)
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0da9f3e0
    move	$a3,$a4
    sltiu	$a1,$a3,1034
    bnez	$a1,.L0da9f318
    sltiu	$at,$a3,1035
    bnez	$at,.L0da9f30c
    sltiu	$v0,$a3,1036
    bnez	$v0,.L0da9f318
    li	$v1,1036
    bne	$a3,$v1,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
    b	.L0da9f31c
    # Line 68
    lw	$at,3180($a2)
.L0da9f30c:
    # Line 50
    li	$a1,1034
    bne	$a3,$a1,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
.L0da9f318:
    # Line 68
    lw	$at,3180($a2)
.L0da9f31c:
    addiu	$a3,$a4,-1033
    slt	$at,$a3,$at
    bnez	$at,.L0da9f4c8
.L0da9f328:
    # Line 81
    andi	$v0,$a0,0x200
.L0da9f32c:
    beqz	$v0,.L0da9f36c
    # Line 84
    andi	$a1,$a0,0x400
    # Line 81
    lbu	$v1,3108($a2)
    beqz	$v1,.L0da9f36c
    # Line 84
    andi	$a1,$a0,0x400
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    lw	$t9,31472($a2)
    sd	$a0,8($sp)
    move	$a0,$a2
    jalr	$t9
    addiu	$a0,$a2,31364
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    andi	$a1,$a0,0x400
.L0da9f36c:
    beqz	$a1,.L0da9f3ac
    # Line 87
    andi	$a1,$a0,0x100
    # Line 84
    lbu	$at,3110($a2)
    beqz	$at,.L0da9f3ac
    # Line 87
    andi	$a1,$a0,0x100
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    lw	$t9,31228($a2)
    sd	$a0,8($sp)
    move	$a0,$a2
    jalr	$t9
    addiu	$a0,$a2,31112
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    andi	$a1,$a0,0x100
.L0da9f3ac:
    beqzl	$a1,.L0da9f3d8
    nop
    lbu	$at,3109($a2)
    beqzl	$at,.L0da9f3d8
    nop
    # Line 90
    lw	$t9,31352($a2)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a2,31232
    ld	$ra,24($sp)
    # ld	gp,16(sp)
.L0da9f3d8:
    # Line 93
    jr	$ra
    addiu	$sp,$sp,48
.L0da9f3e0:
    # Line 50
    sltiu	$v0,$a3,1029
    bnez	$v0,.L0da9f450
    sltiu	$v1,$a3,1030
    bnez	$v1,.L0da9f490
    li	$a1,1032
    bne	$a3,$a1,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 76
    lw	$a0,30660($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a2,0($sp)
    lbu	$a1,3106($a2)
    ld	$a0,8($sp)
    beqz	$a1,.L0da9f328
    ld	$ra,24($sp)
    ld	$a0,0($sp)
    # Line 78
    lw	$a0,30664($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da9f328
    ld	$ra,24($sp)
.L0da9f450:
    # Line 50
    sltiu	$a1,$a3,1028
    bnez	$a1,.L0da9f328
    sltiu	$at,$a3,1029
    beqz	$at,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 54
    lw	$a0,30660($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da9f328
    ld	$ra,24($sp)
.L0da9f490:
    # Line 57
    lbu	$a1,3106($a2)
    beqz	$a1,.L0da9f32c
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 58
    lw	$a0,30664($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da9f328
    ld	$ra,24($sp)
.L0da9f4c8:
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 70
    lw	$a0,31108($a2)
    sll	$a1,$a3,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da9f328
    ld	$ra,24($sp)
.end __glim_Clear

