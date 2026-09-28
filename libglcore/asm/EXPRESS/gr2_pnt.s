# Source: ../EXPRESS/gr2_pnt.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_pnt.c
# Total Functions: 1

.text

# Function: __glExpPassPointSize
# Declared: Line 29 (Source lines: 30-38)
# Address: 0x0da64b28 - 0x0da64b70 (Size: 72 bytes, Frame: 0)
.globl __glExpPassPointSize
.ent __glExpPassPointSize
__glExpPassPointSize:
    # Line 31
    lwc1	$f0,432($a0)
    # Line 30
    lui	$v0,0x19
    addiu	$v0,$v0,11584
    # addu	at,t9,v0
    # Line 31
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    lui	$a4,0x4
    beqz	$a3,.L0da64b64
    ori	$a4,$a4,0x263c
    # Line 36
    sw	$a3,0($a4)
    # Line 38
    jr	$ra
    nop
.L0da64b64:
    # Line 34
    li	$v1,1
    # Line 38
    jr	$ra
    # Line 34
    sw	$v1,0($a4)
.end __glExpPassPointSize

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000

