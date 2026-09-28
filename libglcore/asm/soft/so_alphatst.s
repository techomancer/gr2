# Source: ../soft/so_alphatst.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_alphatst.c
# Total Functions: 1

.text

# Function: __glValidateAlphaTest
# Declared: Line 29 (Source lines: 30-69)
# Address: 0x0da9391c - 0x0da93a6c (Size: 336 bytes, Frame: 192)
.globl __glValidateAlphaTest
.ent __glValidateAlphaTest
__glValidateAlphaTest:
    # Line 37
    lwc1	$f2,30796($a0)
    lwc1	$f1,1724($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3424($a0)
    # Line 34
    lw	$a4,1720($a0)
    # Line 30
    addiu	$sp,$sp,-64
    # Line 37
    mul.s	$f0,$f0,$f1
    sd	$a0,0($sp)
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    # sd	gp,24(sp)
    # Line 30
    lui	$at,0x16
    addiu	$at,$at,16204
    # Line 37
    trunc.w.s	$f0,$f0
    # Line 30
    # addu	gp,t9,at
    # Line 45
    lw	$v0,30752($a0)
    # Line 36
    lw	$a1,3420($a0)
    # Line 37
    mfc1	$s1,$f0
    # Line 45
    beqz	$v0,.L0da93a40
    # Line 36
    move	$s0,$a1
.L0da9396c:
    # Line 57
    addiu	$a5,$a4,-512
    blez	$s0,.L0da93a2c
    move	$a0,$zero
    b	.L0da93998
    li	$a6,1
.L0da93980:
    # Line 62
    slt	$v1,$s1,$a0
    addiu	$v0,$v0,1
    xori	$v1,$v1,0x1
    sb	$v1,-1($v0)
.L0da93990:
    # Line 57
    addiu	$a0,$a0,1
    beq	$s0,$a0,.L0da93a2c
.L0da93998:
    la	$a2,sub_0dbf0000
    sll	$a1,$a5,0x2
    sltiu	$a3,$a5,8
    lui	$a2,%hi(jtbl_0dbeb428)
    beqz	$a3,.L0da93990
    addu	$a1,$a1,$a2
    lw	$a3,%lo(jtbl_0dbeb428)($a1)
    # Line 63
    slt	$a2,$s1,$a0
    # Line 65
    slt	$at,$a0,$s1
    # Line 57
    jr	$a3
    # Line 65
    xori	$at,$at,0x1
.L0da939c4:
    # Line 59
    sb	$zero,0($v0)
    b	.L0da93990
    addiu	$v0,$v0,1
.L0da939d0:
    # Line 60
    addiu	$v0,$v0,1
    slt	$at,$a0,$s1
    b	.L0da93990
    sb	$at,-1($v0)
.L0da939e0:
    # Line 61
    xor	$v1,$s1,$a0
    addiu	$v0,$v0,1
    sltiu	$v1,$v1,1
    b	.L0da93990
    sb	$v1,-1($v0)
.L0da939f4:
    # Line 63
    addiu	$v0,$v0,1
    b	.L0da93990
    sb	$a2,-1($v0)
.L0da93a00:
    # Line 64
    addiu	$v0,$v0,1
    xor	$a3,$s1,$a0
    sltu	$a3,$zero,$a3
    b	.L0da93990
    sb	$a3,-1($v0)
.L0da93a14:
    # Line 65
    addiu	$v0,$v0,1
    b	.L0da93990
    sb	$at,-1($v0)
.L0da93a20:
    # Line 66
    sb	$a6,0($v0)
    b	.L0da93990
    addiu	$v0,$v0,1
.L0da93a2c:
    # ld	gp,24(sp)
    # Line 69
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da93a40:
    ld	$t9,0($sp)
    # Line 47
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$ra,40($sp)
    jalr	$t9
    sd	$a4,32($sp)
    # Line 49
    ld	$ra,0($sp)
    ld	$a4,32($sp)
    sw	$v0,30752($ra)
    b	.L0da9396c
    ld	$ra,40($sp)
.end __glValidateAlphaTest

.late_rodata
jtbl_0dbeb428:
    .word .L0da939c4
    .word .L0da939d0
    .word .L0da939e0
    .word .L0da93980
    .word .L0da939f4
    .word .L0da93a00
    .word .L0da93a14
    .word .L0da93a20

