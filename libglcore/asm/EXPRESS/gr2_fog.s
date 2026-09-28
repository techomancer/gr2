# Source: ../EXPRESS/gr2_fog.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_fog.c
# Total Functions: 2

.text

# Function: __glExpEnableFog
# Declared: Line 28 (Source lines: 29-37)
# Address: 0x0da5d5fc - 0x0da5d62c (Size: 48 bytes, Frame: 0)
.globl __glExpEnableFog
.ent __glExpEnableFog
__glExpEnableFog:
    # Line 29
    lbu	$at,3105($a0)
    lui	$a2,0x4
    beqz	$at,.L0da5d618
    ori	$a2,$a2,0x209c
    # Line 35
    sw	$zero,0($a2)
    # Line 37
    jr	$ra
    nop
.L0da5d618:
    # Line 33
    lw	$at,1696($a0)
    andi	$at,$at,0x20
    sltu	$at,$zero,$at
    # Line 37
    jr	$ra
    # Line 33
    sw	$at,0($a2)
.end __glExpEnableFog

# Function: __glExpPassFog
# Declared: Line 42 (Source lines: 43-74)
# Address: 0x0da5d62c - 0x0da5d740 (Size: 276 bytes, Frame: 0)
.globl __glExpPassFog
.ent __glExpPassFog
__glExpPassFog:
    # Line 46
    li	$v0,9729
    lw	$a3,1492($a0)
    # Line 43
    lui	$v1,0x1a
    addiu	$v1,$v1,-24004
    # Line 46
    beq	$a3,$v0,.L0da5d6b0
    # Line 43
    nop
    # Line 56
    li	$a2,1
    # Line 46
    li	$a1,2048
    beq	$a3,$a1,.L0da5d6fc
    # Line 58
    mtc1	$zero,$f0
    # Line 65
    ldc1	$f1,_lit8_3fdb3019d560615e
    # Line 46
    li	$a2,2049
    beq	$a3,$a2,.L0da5d66c
    # Line 64
    lui	$v0,0x4
    # Line 74
    jr	$ra
    nop
.L0da5d66c:
    # Line 66
    mtc1	$zero,$f3
    # Line 64
    ori	$v0,$v0,0x20a0
    li	$v1,2
    sw	$v1,0($v0)
    # Line 65
    lwc1	$f0,1512($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    swc1	$f0,0($v0)
    # Line 66
    swc1	$f3,0($v0)
    # Line 67
    lwc1	$f2,1496($a0)
    swc1	$f2,0($v0)
    # Line 68
    lwc1	$f1,1500($a0)
    swc1	$f1,0($v0)
    # Line 69
    lwc1	$f0,1504($a0)
    # Line 74
    jr	$ra
    # Line 69
    swc1	$f0,0($v0)
.L0da5d6b0:
    # Line 50
    lwc1	$f1,1516($a0)
    # Line 49
    lwc1	$f0,1520($a0)
    # Line 50
    sub.s	$f1,$f0,$f1
    ldc1	$f4,_lit8_3ff0083126e978d5
    cvt.d.s	$f1,$f1
    div.d	$f4,$f4,$f1
    # Line 52
    lwc1	$f2,1500($a0)
    # Line 51
    lwc1	$f3,1496($a0)
    # Line 48
    lui	$v1,0x4
    ori	$v1,$v1,0x20a0
    # Line 50
    cvt.s.d	$f4,$f4
    # Line 48
    sw	$zero,0($v1)
    # Line 49
    swc1	$f0,0($v1)
    # Line 53
    lwc1	$f1,1504($a0)
    # Line 50
    swc1	$f4,0($v1)
    # Line 51
    swc1	$f3,0($v1)
    # Line 52
    swc1	$f2,0($v1)
    # Line 74
    jr	$ra
    # Line 53
    swc1	$f1,0($v1)
.L0da5d6fc:
    # Line 57
    lwc1	$f1,1512($a0)
    ldc1	$f2,_lit8_3fc71973e5a7a069
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f2
    # Line 60
    lwc1	$f3,1500($a0)
    # Line 59
    lwc1	$f4,1496($a0)
    # Line 56
    lui	$a1,0x4
    # Line 57
    cvt.s.d	$f1,$f1
    # Line 56
    ori	$a1,$a1,0x20a0
    sw	$a2,0($a1)
    # Line 61
    lwc1	$f2,1504($a0)
    # Line 57
    swc1	$f1,0($a1)
    # Line 58
    swc1	$f0,0($a1)
    # Line 59
    swc1	$f4,0($a1)
    # Line 60
    swc1	$f3,0($a1)
    # Line 74
    jr	$ra
    # Line 61
    swc1	$f2,0($a1)
.end __glExpPassFog

.rdata
_lit8_3fc71973e5a7a069:
    .word 0x3fc71973, 0xe5a7a069
_lit8_3fdb3019d560615e:
    .word 0x3fdb3019, 0xd560615e
_lit8_3ff0083126e978d5:
    .word 0x3ff00831, 0x26e978d5

