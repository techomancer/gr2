# Source: ../soft/so_napi.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_napi.c
# Total Functions: 8

.text

# Function: __glim_Normal3d
# Declared: Line 21 (Source lines: 23-28)
# Address: 0x0dac95a8 - 0x0dac95c8 (Size: 32 bytes, Frame: 0)
.globl __glim_Normal3d
.ent __glim_Normal3d
__glim_Normal3d:
    # Line 26
    cvt.s.d	$f1,$f13
    # Line 27
    cvt.s.d	$f2,$f14
    # Line 23
    lw	$at,__glCurrentContext
    # Line 25
    cvt.s.d	$f0,$f12
    # Line 27
    swc1	$f2,192($at)
    # Line 26
    swc1	$f1,188($at)
    # Line 28
    jr	$ra
    # Line 25
    swc1	$f0,184($at)
.end __glim_Normal3d

# Function: __glim_Normal3dv
# Declared: Line 30 (Source lines: 32-41)
# Address: 0x0dac95c8 - 0x0dac95f4 (Size: 44 bytes, Frame: 0)
.globl __glim_Normal3dv
.ent __glim_Normal3dv
__glim_Normal3dv:
    # Line 36
    ldc1	$f1,8($a0)
    # Line 37
    ldc1	$f2,16($a0)
    # Line 39
    cvt.s.d	$f1,$f1
    # Line 38
    ldc1	$f0,0($a0)
    # Line 40
    cvt.s.d	$f2,$f2
    # Line 32
    lw	$at,__glCurrentContext
    # Line 38
    cvt.s.d	$f0,$f0
    # Line 40
    swc1	$f2,192($at)
    # Line 39
    swc1	$f1,188($at)
    # Line 41
    jr	$ra
    # Line 38
    swc1	$f0,184($at)
.end __glim_Normal3dv

# Function: __glim_Normal3b
# Declared: Line 67 (Source lines: 69-74)
# Address: 0x0dac95f4 - 0x0dac9648 (Size: 84 bytes, Frame: 0)
.globl __glim_Normal3b
.ent __glim_Normal3b
__glim_Normal3b:
    # Line 73
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 72
    sll	$v1,$a1,0x1
    # Line 73
    cvt.s.w	$f2,$f2
    # Line 72
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 69
    lw	$at,__glCurrentContext
    # Line 71
    sll	$v0,$a0,0x1
    # Line 72
    cvt.s.w	$f1,$f1
    # Line 71
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    lwc1	$f3,3292($at)
    cvt.s.w	$f0,$f0
    # Line 72
    mul.s	$f1,$f1,$f3
    # Line 73
    mul.s	$f2,$f2,$f3
    # Line 71
    mul.s	$f0,$f0,$f3
    # Line 73
    swc1	$f2,192($at)
    # Line 72
    swc1	$f1,188($at)
    # Line 74
    jr	$ra
    # Line 71
    swc1	$f0,184($at)
.end __glim_Normal3b

# Function: __glim_Normal3bv
# Declared: Line 76 (Source lines: 78-83)
# Address: 0x0dac9648 - 0x0dac96b0 (Size: 104 bytes, Frame: 0)
.globl __glim_Normal3bv
.ent __glim_Normal3bv
__glim_Normal3bv:
    # Line 80
    lb	$a1,0($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    # Line 78
    lw	$at,__glCurrentContext
    # Line 80
    cvt.s.w	$f3,$f3
    lwc1	$f1,3292($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,184($at)
    # Line 81
    lb	$v1,1($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,188($at)
    # Line 82
    lb	$v0,2($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    # Line 83
    jr	$ra
    # Line 82
    swc1	$f0,192($at)
.end __glim_Normal3bv

# Function: __glim_Normal3s
# Declared: Line 85 (Source lines: 87-92)
# Address: 0x0dac96b0 - 0x0dac9704 (Size: 84 bytes, Frame: 0)
.globl __glim_Normal3s
.ent __glim_Normal3s
__glim_Normal3s:
    # Line 91
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f2
    # Line 90
    sll	$v1,$a1,0x1
    # Line 91
    cvt.s.w	$f2,$f2
    # Line 90
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    # Line 87
    lw	$at,__glCurrentContext
    # Line 89
    sll	$v0,$a0,0x1
    # Line 90
    cvt.s.w	$f1,$f1
    # Line 89
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    lwc1	$f3,3300($at)
    cvt.s.w	$f0,$f0
    # Line 90
    mul.s	$f1,$f1,$f3
    # Line 91
    mul.s	$f2,$f2,$f3
    # Line 89
    mul.s	$f0,$f0,$f3
    # Line 91
    swc1	$f2,192($at)
    # Line 90
    swc1	$f1,188($at)
    # Line 92
    jr	$ra
    # Line 89
    swc1	$f0,184($at)
.end __glim_Normal3s

# Function: __glim_Normal3sv
# Declared: Line 94 (Source lines: 96-101)
# Address: 0x0dac9704 - 0x0dac976c (Size: 104 bytes, Frame: 0)
.globl __glim_Normal3sv
.ent __glim_Normal3sv
__glim_Normal3sv:
    # Line 98
    lh	$a1,0($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    # Line 96
    lw	$at,__glCurrentContext
    # Line 98
    cvt.s.w	$f3,$f3
    lwc1	$f1,3300($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,184($at)
    # Line 99
    lh	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,188($at)
    # Line 100
    lh	$v0,4($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    # Line 101
    jr	$ra
    # Line 100
    swc1	$f0,192($at)
.end __glim_Normal3sv

# Function: __glim_Normal3i
# Declared: Line 103 (Source lines: 104-111)
# Address: 0x0dac976c - 0x0dac97d8 (Size: 108 bytes, Frame: 0)
.globl __glim_Normal3i
.ent __glim_Normal3i
__glim_Normal3i:
    # Line 110
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 109
    mtc1	$a1,$f1
    # Line 104
    lui	$v1,0x13
    addiu	$v1,$v1,-7940
    # Line 109
    cvt.s.w	$f1,$f1
    # Line 104
    # addu	at,t9,v1
    # Line 108
    mtc1	$a0,$f0
    lwc1	$f3,_lit_40000000
    cvt.s.w	$f0,$f0
    # Line 109
    mul.s	$f1,$f1,$f3
    # Line 110
    mul.s	$f2,$f2,$f3
    # Line 105
    lw	$v0,__glCurrentContext
    # Line 108
    lwc1	$f4,_lit_3f800000
    mul.s	$f0,$f0,$f3
    # Line 109
    add.s	$f1,$f1,$f4
    # Line 108
    lwc1	$f3,3308($v0)
    # Line 110
    add.s	$f2,$f2,$f4
    # Line 109
    mul.s	$f1,$f1,$f3
    # Line 108
    add.s	$f0,$f0,$f4
    # Line 110
    mul.s	$f2,$f2,$f3
    # Line 108
    mul.s	$f0,$f0,$f3
    # Line 110
    swc1	$f2,192($v0)
    # Line 109
    swc1	$f1,188($v0)
    # Line 111
    jr	$ra
    # Line 108
    swc1	$f0,184($v0)
.end __glim_Normal3i

# Function: __glim_Normal3iv
# Declared: Line 113 (Source lines: 114-121)
# Address: 0x0dac97d8 - 0x0dac9854 (Size: 124 bytes, Frame: 0)
.globl __glim_Normal3iv
.ent __glim_Normal3iv
__glim_Normal3iv:
    # Line 118
    lw	$v0,0($a0)
    mtc1	$v0,$f0
    # Line 114
    lui	$a2,0x13
    # Line 118
    cvt.s.w	$f0,$f0
    # Line 114
    addiu	$a2,$a2,-8048
    # addu	at,t9,a2
    # Line 118
    lwc1	$f3,_lit_40000000
    mul.s	$f0,$f0,$f3
    lwc1	$f2,_lit_3f800000
    # Line 115
    lw	$v0,__glCurrentContext
    # Line 118
    add.s	$f0,$f0,$f2
    lwc1	$f1,3308($v0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,184($v0)
    # Line 119
    lw	$a1,4($a0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f3
    add.s	$f4,$f4,$f2
    mul.s	$f4,$f4,$f1
    swc1	$f4,188($v0)
    # Line 120
    lw	$v1,8($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 121
    jr	$ra
    # Line 120
    swc1	$f0,192($v0)
.end __glim_Normal3iv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

