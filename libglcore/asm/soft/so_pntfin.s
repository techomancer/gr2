# Source: ../soft/so_pntfin.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntfin.c
# Total Functions: 2

.text

# Function: __glBeginPoints
# Declared: Line 24 (Source lines: 25-32)
# Address: 0x0daccedc - 0x0daccf0c (Size: 48 bytes, Frame: 0)
.globl __glBeginPoints
.ent __glBeginPoints
__glBeginPoints:
    # Line 28
    lw	$a1,11960($a0)
    sw	$a1,11956($a0)
    # Line 29
    addiu	$v0,$a0,12720
    # Line 25
    lui	$a2,0x13
    addiu	$a2,$a2,-22132
    # addu	at,t9,a2
    # Line 31
    la	$v1,__glNop
    # Line 29
    sw	$v0,12696($a0)
    # Line 30
    la	$v0,__glEndPoints
    # Line 31
    sw	$v1,12028($a0)
    # Line 32
    jr	$ra
    # Line 30
    sw	$v0,12076($a0)
.end __glBeginPoints

# Function: __glEndPoints
# Declared: Line 34 (Source lines: 35-38)
# Address: 0x0daccf0c - 0x0daccf2c (Size: 32 bytes, Frame: 0)
.globl __glEndPoints
.ent __glEndPoints
__glEndPoints:
    # Line 35
    lui	$a1,0x13
    addiu	$a1,$a1,-22180
    # addu	at,t9,a1
    # Line 37
    la	$v1,__glEndPrim
    # Line 36
    la	$v0,__glNop
    # Line 37
    sw	$v1,12076($a0)
    # Line 38
    jr	$ra
    # Line 36
    sw	$v0,11956($a0)
.end __glEndPoints

