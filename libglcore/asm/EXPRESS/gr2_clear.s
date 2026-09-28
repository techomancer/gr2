# Source: ../EXPRESS/gr2_clear.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_clear.c
# Total Functions: 1

.text

# Function: __glexpim_Clear
# Declared: Line 23 (Source lines: 24-95)
# Address: 0x0da582d8 - 0x0da585d0 (Size: 760 bytes, Frame: 192)
.globl __glexpim_Clear
.ent __glexpim_Clear
__glexpim_Clear:
.L0da582d8:
    # Line 25
    lw	$a2,__glCurrentContext
    # Line 24
    addiu	$sp,$sp,-64
    # sd	gp,24(sp)
    # Line 30
    lw	$a3,__glBeginMode
    # Line 24
    lui	$at,0x1a
    addiu	$at,$at,-2672
    # Line 30
    beqz	$a3,.L0da58324
    # Line 24
    nop
    sd	$ra,32($sp)
    # Line 30
    li	$v0,2
    beq	$a3,$v0,.L0da58354
    sd	$a0,8($sp)
    # Line 38
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 39
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da58324:
    li	$v1,-18177
    and	$v1,$a0,$v1
    beqzl	$v1,.L0da58380
    # Line 46
    lw	$a1,3092($a2)
    # Line 45
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 46
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da58354:
    # Line 33
    lw	$t9,11792($a2)
    jalr	$t9
    move	$a0,$a2
    # Line 35
    # lw $t9, -32416($gp) # &__glexpim_Clear
    ld	$a0,8($sp)
    bal .L0da582d8
    # Line 34
    sw	$zero,__glBeginMode
    # Line 36
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da58380:
    # Line 46
    li	$at,7168
    bnel	$a1,$at,.L0da58484
    nop
    andi	$v0,$a0,0x4000
    beqz	$v0,.L0da5851c
    # Line 83
    andi	$at,$a0,0x100
    # Line 51
    lw	$a4,1788($a2)
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0da5848c
    move	$a3,$a4
    sltiu	$a1,$a3,1034
    bnez	$a1,.L0da583c4
    sltiu	$at,$a3,1035
    bnez	$at,.L0da58530
    sltiu	$v0,$a3,1036
    beqz	$v0,.L0da58588
    li	$a1,1036
.L0da583c4:
    # Line 77
    lw	$v1,3180($a2)
    addiu	$a3,$a4,-1033
    slt	$v1,$a3,$v1
    bnez	$v1,.L0da58544
.L0da583d4:
    # Line 81
    andi	$a1,$a0,0x100
    sd	$a1,16($sp)
.L0da583dc:
    # Line 83
    andi	$at,$a0,0x200
    beqz	$at,.L0da58420
    # Line 86
    andi	$a1,$a0,0x400
    # Line 83
    lbu	$v0,3108($a2)
    beqz	$v0,.L0da58420
    # Line 86
    andi	$a1,$a0,0x400
    sd	$a2,0($sp)
    sd	$ra,32($sp)
    lw	$t9,31472($a2)
    sd	$a0,8($sp)
    move	$a0,$a2
    jal	__glexpim_Clear
    addiu	$a0,$a2,31364
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,32($sp)
    andi	$a1,$a0,0x400
.L0da58420:
    beqz	$a1,.L0da58458
    ld	$a1,16($sp)
    lbu	$at,3110($a2)
    beqz	$at,.L0da58458
    ld	$a1,16($sp)
    sd	$a2,0($sp)
    # Line 89
    lw	$t9,31228($a2)
    sd	$ra,32($sp)
    move	$a0,$a2
    jalr	$t9
    addiu	$a0,$a2,31112
    ld	$a2,0($sp)
    ld	$ra,32($sp)
    ld	$a1,16($sp)
.L0da58458:
    beqzl	$a1,.L0da58484
    nop
    lbu	$at,3109($a2)
    beqzl	$at,.L0da58484
    nop
    # Line 92
    lw	$t9,31352($a2)
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$a2,31232
    ld	$ra,32($sp)
    # ld	gp,24(sp)
.L0da58484:
    # Line 95
    jr	$ra
    addiu	$sp,$sp,64
.L0da5848c:
    # Line 51
    sltiu	$v0,$a3,1029
    bnez	$v0,.L0da584b0
    sltiu	$v1,$a3,1030
    bnez	$v1,.L0da584c0
    li	$a1,1032
    beq	$a3,$a1,.L0da584c0
    # Line 81
    andi	$at,$a0,0x100
    b	.L0da583dc
    sd	$at,16($sp)
.L0da584b0:
    # Line 51
    sltiu	$v0,$a3,1028
    bnez	$v0,.L0da58524
    sltiu	$v1,$a3,1029
    beqz	$v1,.L0da58598
.L0da584c0:
    # Line 62
    andi	$a1,$a0,0x100
    beqz	$a1,.L0da585a4
    sd	$a1,16($sp)
    lbu	$at,31565($a2)
    beqzl	$at,.L0da585a8
    sd	$a0,8($sp)
    lbu	$v0,1540($a2)
    sd	$ra,32($sp)
    sd	$a2,0($sp)
    beqz	$v0,.L0da585a4
    sd	$a0,8($sp)
    ld	$a0,0($sp)
    # Line 66
    lw	$t9,31692($a0)
    addiu	$a1,$a0,31232
    jalr	$t9
    lw	$a0,30660($a0)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,32($sp)
    # Line 67
    xori	$a0,$a0,0x100
    andi	$a1,$a0,0x100
    b	.L0da583dc
    sd	$a1,16($sp)
.L0da5851c:
    b	.L0da583dc
    sd	$at,16($sp)
.L0da58524:
    # Line 51
    andi	$v0,$a0,0x100
    b	.L0da583dc
    sd	$v0,16($sp)
.L0da58530:
    li	$v1,1034
    beq	$a3,$v1,.L0da583c4
    # Line 81
    andi	$a1,$a0,0x100
    b	.L0da583dc
    sd	$a1,16($sp)
.L0da58544:
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 79
    lw	$a0,31108($a2)
    sll	$a1,$a3,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$t9,216($a0)
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da583d4
    ld	$ra,32($sp)
.L0da58588:
    # Line 51
    beq	$a3,$a1,.L0da583c4
    # Line 81
    andi	$at,$a0,0x100
    b	.L0da583dc
    sd	$at,16($sp)
.L0da58598:
    andi	$v0,$a0,0x100
    b	.L0da583dc
    sd	$v0,16($sp)
.L0da585a4:
    sd	$a0,8($sp)
.L0da585a8:
    move	$a0,$a2
    # Line 69
    lw	$a0,30660($a2)
    lw	$t9,216($a0)
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0da583dc
    ld	$ra,32($sp)
.end __glexpim_Clear

