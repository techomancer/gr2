# Source: ../EXPRESS/gr2_rapi.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_rapi.c
# Total Functions: 26

.text

# Function: __glExpPassRasterPosData
# Declared: Line 35 (Source lines: 35-61)
# Address: 0x0da65070 - 0x0da65120 (Size: 176 bytes, Frame: 0)
.globl __glExpPassRasterPosData
.ent __glExpPassRasterPosData
__glExpPassRasterPosData:
    # Line 38
    lbu	$v0,428($a0)
    lui	$v1,0x4
    ori	$v1,$v1,0x2418
    sw	$v0,0($v1)
    # Line 39
    lwc1	$f4,344($a0)
    lui	$a3,0x4
    ori	$a3,$a3,0x277c
    swc1	$f4,0($a3)
    # Line 40
    lwc1	$f3,348($a0)
    swc1	$f3,0($a3)
    # Line 41
    lwc1	$f2,352($a0)
    swc1	$f2,0($a3)
    # Line 42
    lwc1	$f1,320($a0)
    swc1	$f1,0($a3)
    # Line 55
    lui	$a1,0x4
    # Line 43
    lwc1	$f0,340($a0)
    # Line 55
    ori	$a1,$a1,0xe77c
    # Line 35
    lui	$v1,0x19
    # Line 43
    swc1	$f0,0($a3)
    # Line 35
    addiu	$v1,$v1,10232
    # Line 43
    lbu	$v0,3104($a0)
    # Line 35
    # addu	at,t9,v1
    # Line 57
    mtc1	$zero,$f1
    # Line 43
    beqz	$v0,.L0da6510c
    lwc1	$f4,360($a0)
    # Line 46
    lwc1	$f1,_lit_3f7f0000
    mul.s	$f0,$f4,$f1
    swc1	$f0,0($a3)
    # Line 48
    lwc1	$f3,364($a0)
    mul.s	$f3,$f3,$f1
    swc1	$f3,0($a3)
    # Line 50
    lwc1	$f2,368($a0)
    mul.s	$f2,$f2,$f1
    swc1	$f2,0($a3)
    # Line 52
    lwc1	$f0,372($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 61
    jr	$ra
    nop
.L0da6510c:
    # Line 55
    swc1	$f4,0($a1)
    # Line 57
    swc1	$f1,0($a1)
    # Line 58
    swc1	$f1,0($a1)
    # Line 61
    jr	$ra
    # Line 59
    swc1	$f1,0($a1)
.end __glExpPassRasterPosData

# Function: __glExpGetRasterPosData
# Declared: Line 65 (Source lines: 65-80)
# Address: 0x0da65120 - 0x0da651ec (Size: 204 bytes, Frame: 32)
.globl __glExpGetRasterPosData
.ent __glExpGetRasterPosData
__glExpGetRasterPosData:
    # Line 65
    addiu	$sp,$sp,-32
    # Line 71
    lui	$a2,0x6
    ori	$a2,$a2,0xc040
    lui	$at,0x4
    ori	$at,$at,0x228c
    # Line 70
    lui	$v0,0x4
    ori	$v0,$v0,0x241c
    sw	$zero,0($v0)
    b	.L0da6515c
    # Line 71
    sw	$zero,0($at)
.L0da65148:
    sw	$zero,0($sp)
    lw	$at,0($sp)
    slti	$at,$at,10
    bnez	$at,.L0da651c8
    nop
.L0da6515c:
    lw	$v0,0($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da65148
    # Line 73
    lui	$v0,0x1
    ori	$v0,$v0,0x2088
    lwc1	$f3,0($v0)
    # Line 79
    lui	$v1,0x4
    # Line 74
    lui	$at,0x1
    # Line 73
    swc1	$f3,360($a0)
    # Line 74
    ori	$at,$at,0x208c
    lwc1	$f2,0($at)
    # Line 79
    ori	$v1,$v1,0x22f4
    # Line 75
    lui	$a1,0x1
    # Line 74
    swc1	$f2,364($a0)
    # Line 75
    ori	$a1,$a1,0x2090
    lwc1	$f1,0($a1)
    # Line 76
    lui	$at,0x1
    ori	$at,$at,0x2094
    # Line 75
    swc1	$f1,368($a0)
    # Line 78
    lui	$a1,0x6
    # Line 76
    lwc1	$f0,0($at)
    # Line 78
    ori	$a1,$a1,0xd000
    # Line 80
    addiu	$sp,$sp,32
    # Line 76
    swc1	$f0,372($a0)
    # Line 78
    sw	$zero,0($a1)
    # Line 80
    jr	$ra
    # Line 79
    sw	$zero,0($v1)
.L0da651c8:
    # Line 71
    lw	$a1,0($sp)
    addiu	$a1,$a1,1
    sw	$a1,0($sp)
    lw	$v1,0($sp)
    slti	$v1,$v1,10
    bnez	$v1,.L0da651c8
    nop
    b	.L0da6515c
    nop
.end __glExpGetRasterPosData

# Function: __glexpim_RasterPos2dv
# Declared: Line 102 (Source lines: 102-108)
# Address: 0x0da651ec - 0x0da652f4 (Size: 264 bytes, Frame: 48)
.globl __glexpim_RasterPos2dv
.ent __glexpim_RasterPos2dv
__glexpim_RasterPos2dv:
    # Line 102
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 104
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 102
    lui	$at,0x19
    addiu	$at,$at,9852
    # Line 104
    beqz	$a2,.L0da65258
    # Line 102
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 104
    li	$v0,2
    beq	$a2,$v0,.L0da65248
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65248:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65258:
    # Line 106
    # lw $t9, -27528($gp) # &__glim_RasterPos2dv
    jal	__glim_RasterPos2dv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65298
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da652e4
    # Line 107
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da65298:
    ld	$at,0($sp)
    ldc1	$f3,0($at)
    cvt.s.d	$f3,$f3
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    ldc1	$f2,8($at)
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    cvt.s.d	$f2,$f2
    ld	$gp,8($sp)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 108
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da652e4:
    # Line 107
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65298
    ld	$ra,24($sp)
.end __glexpim_RasterPos2dv

# Function: __glexpim_RasterPos2fv
# Declared: Line 111 (Source lines: 111-117)
# Address: 0x0da652f4 - 0x0da653f4 (Size: 256 bytes, Frame: 48)
.globl __glexpim_RasterPos2fv
.ent __glexpim_RasterPos2fv
__glexpim_RasterPos2fv:
    # Line 111
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 113
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 111
    lui	$at,0x19
    addiu	$at,$at,9588
    # Line 113
    beqz	$a2,.L0da65360
    # Line 111
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 113
    li	$v0,2
    beq	$a2,$v0,.L0da65350
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65350:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65360:
    # Line 115
    # lw $t9, -27524($gp) # &__glim_RasterPos2fv
    jal	__glim_RasterPos2fv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da653a0
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da653e4
    # Line 116
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da653a0:
    ld	$at,0($sp)
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    lwc1	$f3,0($at)
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    ld	$gp,8($sp)
    lwc1	$f2,4($at)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 117
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da653e4:
    # Line 116
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da653a0
    ld	$ra,24($sp)
.end __glexpim_RasterPos2fv

# Function: __glexpim_RasterPos2d
# Declared: Line 120 (Source lines: 120-126)
# Address: 0x0da653f4 - 0x0da6550c (Size: 280 bytes, Frame: 192)
.globl __glexpim_RasterPos2d
.ent __glexpim_RasterPos2d
__glexpim_RasterPos2d:
    # Line 120
    mov.d	$f4,$f13
    mov.d	$f5,$f12
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s7,24($sp)
    # Line 122
    lw	$s7,__glCurrentContext
    sdc1	$f13,0($sp)
    sdc1	$f12,8($sp)
    sd	$gp,16($sp)
    lw	$a0,__glBeginMode
    # Line 120
    lui	$at,0x19
    addiu	$at,$at,9332
    # Line 122
    beqz	$a0,.L0da65470
    # Line 120
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    sdc1	$f4,0($sp)
    # Line 122
    li	$v0,2
    beq	$a0,$v0,.L0da65460
    sdc1	$f5,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da65460:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da65470:
    # Line 124
    # lw $t9, -27520($gp) # &__glim_RasterPos2d
    ldc1	$f12,8($sp)
    jal	__glim_RasterPos2d
    ldc1	$f13,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da654b4
    ld	$ra,32($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da654fc
    # Line 125
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,32($sp)
.L0da654b4:
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    ldc1	$f3,8($sp)
    ld	$gp,16($sp)
    ldc1	$f2,0($sp)
    cvt.s.d	$f3,$f3
    lui	$s7,0x4
    ori	$s7,$s7,0x277c
    cvt.s.d	$f2,$f2
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 126
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da654fc:
    # Line 125
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da654b4
    ld	$ra,32($sp)
.end __glexpim_RasterPos2d

# Function: __glexpim_RasterPos2f
# Declared: Line 129 (Source lines: 129-135)
# Address: 0x0da6550c - 0x0da6561c (Size: 272 bytes, Frame: 192)
.globl __glexpim_RasterPos2f
.ent __glexpim_RasterPos2f
__glexpim_RasterPos2f:
    # Line 129
    mov.s	$f4,$f13
    mov.s	$f5,$f12
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s7,24($sp)
    # Line 131
    lw	$s7,__glCurrentContext
    sdc1	$f13,0($sp)
    sdc1	$f12,8($sp)
    sd	$gp,16($sp)
    lw	$a0,__glBeginMode
    # Line 129
    lui	$at,0x19
    addiu	$at,$at,9052
    # Line 131
    beqz	$a0,.L0da65588
    # Line 129
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    sdc1	$f4,0($sp)
    # Line 131
    li	$v0,2
    beq	$a0,$v0,.L0da65578
    sdc1	$f5,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da65578:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da65588:
    # Line 133
    # lw $t9, -27516($gp) # &__glim_RasterPos2f
    ldc1	$f12,8($sp)
    jal	__glim_RasterPos2f
    ldc1	$f13,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da655cc
    ld	$ra,32($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da6560c
    # Line 134
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,32($sp)
.L0da655cc:
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    ld	$gp,16($sp)
    lui	$s7,0x4
    ori	$s7,$s7,0x277c
    ldc1	$f2,0($sp)
    ldc1	$f3,8($sp)
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 135
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6560c:
    # Line 134
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da655cc
    ld	$ra,32($sp)
.end __glexpim_RasterPos2f

# Function: __glexpim_RasterPos2i
# Declared: Line 138 (Source lines: 138-144)
# Address: 0x0da6561c - 0x0da65734 (Size: 280 bytes, Frame: 192)
.globl __glexpim_RasterPos2i
.ent __glexpim_RasterPos2i
__glexpim_RasterPos2i:
    # Line 138
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    # Line 140
    lw	$s0,__glCurrentContext
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lw	$a3,__glBeginMode
    # Line 138
    lui	$at,0x19
    addiu	$at,$at,8780
    # Line 140
    beqz	$a3,.L0da65690
    # Line 138
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    sd	$a1,0($sp)
    # Line 140
    li	$v0,2
    beq	$a3,$v0,.L0da65680
    sd	$a0,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da65680:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65690:
    # Line 142
    # lw $t9, -27512($gp) # &__glim_RasterPos2i
    ld	$a0,8($sp)
    jal	__glim_RasterPos2i
    ld	$a1,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da656d4
    ld	$ra,32($sp)
    lbu	$a2,3104($s0)
    beqz	$a2,.L0da65724
    # Line 143
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,32($sp)
.L0da656d4:
    ld	$v0,8($sp)
    mtc1	$v0,$f3
    ld	$at,0($sp)
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    mtc1	$at,$f2
    mtc1	$zero,$f1
    ld	$gp,16($sp)
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 144
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da65724:
    # Line 143
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da656d4
    ld	$ra,32($sp)
.end __glexpim_RasterPos2i

# Function: __glexpim_RasterPos2iv
# Declared: Line 147 (Source lines: 147-153)
# Address: 0x0da65734 - 0x0da6584c (Size: 280 bytes, Frame: 48)
.globl __glexpim_RasterPos2iv
.ent __glexpim_RasterPos2iv
__glexpim_RasterPos2iv:
    # Line 147
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 149
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 147
    lui	$at,0x19
    addiu	$at,$at,8500
    # Line 149
    beqz	$a2,.L0da657a0
    # Line 147
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 149
    li	$v0,2
    beq	$a2,$v0,.L0da65790
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65790:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da657a0:
    # Line 151
    # lw $t9, -27508($gp) # &__glim_RasterPos2iv
    jal	__glim_RasterPos2iv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da657e0
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da6583c
    # Line 152
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da657e0:
    ld	$at,0($sp)
    lw	$v1,0($at)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    lw	$at,4($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    ld	$gp,8($sp)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 153
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6583c:
    # Line 152
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da657e0
    ld	$ra,24($sp)
.end __glexpim_RasterPos2iv

# Function: __glexpim_RasterPos2s
# Declared: Line 156 (Source lines: 156-162)
# Address: 0x0da6584c - 0x0da65964 (Size: 280 bytes, Frame: 192)
.globl __glexpim_RasterPos2s
.ent __glexpim_RasterPos2s
__glexpim_RasterPos2s:
    # Line 156
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    # Line 158
    lw	$s0,__glCurrentContext
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lw	$a3,__glBeginMode
    # Line 156
    lui	$at,0x19
    addiu	$at,$at,8220
    # Line 158
    beqz	$a3,.L0da658c0
    # Line 156
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    sd	$a1,0($sp)
    # Line 158
    li	$v0,2
    beq	$a3,$v0,.L0da658b0
    sd	$a0,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da658b0:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da658c0:
    # Line 160
    # lw $t9, -27504($gp) # &__glim_RasterPos2s
    ld	$a0,8($sp)
    jal	__glim_RasterPos2s
    ld	$a1,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65904
    ld	$ra,32($sp)
    lbu	$a2,3104($s0)
    beqz	$a2,.L0da65954
    # Line 161
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,32($sp)
.L0da65904:
    ld	$v0,8($sp)
    mtc1	$v0,$f3
    ld	$at,0($sp)
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    mtc1	$at,$f2
    mtc1	$zero,$f1
    ld	$gp,16($sp)
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 162
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da65954:
    # Line 161
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65904
    ld	$ra,32($sp)
.end __glexpim_RasterPos2s

# Function: __glexpim_RasterPos2sv
# Declared: Line 165 (Source lines: 165-171)
# Address: 0x0da65964 - 0x0da65a7c (Size: 280 bytes, Frame: 48)
.globl __glexpim_RasterPos2sv
.ent __glexpim_RasterPos2sv
__glexpim_RasterPos2sv:
    # Line 165
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 167
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 165
    lui	$at,0x19
    addiu	$at,$at,7940
    # Line 167
    beqz	$a2,.L0da659d0
    # Line 165
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 167
    li	$v0,2
    beq	$a2,$v0,.L0da659c0
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da659c0:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da659d0:
    # Line 169
    # lw $t9, -27500($gp) # &__glim_RasterPos2sv
    jal	__glim_RasterPos2sv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65a10
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da65a6c
    # Line 170
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da65a10:
    ld	$at,0($sp)
    lh	$v1,0($at)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    lh	$at,2($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    ld	$gp,8($sp)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 171
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65a6c:
    # Line 170
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65a10
    ld	$ra,24($sp)
.end __glexpim_RasterPos2sv

# Function: __glexpim_RasterPos3dv
# Declared: Line 176 (Source lines: 176-182)
# Address: 0x0da65a7c - 0x0da65b88 (Size: 268 bytes, Frame: 48)
.globl __glexpim_RasterPos3dv
.ent __glexpim_RasterPos3dv
__glexpim_RasterPos3dv:
    # Line 176
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 178
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 176
    lui	$at,0x19
    addiu	$at,$at,7660
    # Line 178
    beqz	$a2,.L0da65ae8
    # Line 176
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 178
    li	$v0,2
    beq	$a2,$v0,.L0da65ad8
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65ad8:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65ae8:
    # Line 180
    # lw $t9, -27496($gp) # &__glim_RasterPos3dv
    jal	__glim_RasterPos3dv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65b28
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da65b78
    # Line 181
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da65b28:
    ld	$at,0($sp)
    ldc1	$f3,0($at)
    cvt.s.d	$f3,$f3
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    ldc1	$f2,8($at)
    cvt.s.d	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    ldc1	$f1,16($at)
    cvt.s.d	$f1,$f1
    lwc1	$f0,_lit_3f800000
    ld	$gp,8($sp)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 182
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65b78:
    # Line 181
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65b28
    ld	$ra,24($sp)
.end __glexpim_RasterPos3dv

# Function: __glexpim_RasterPos3fv
# Declared: Line 185 (Source lines: 185-191)
# Address: 0x0da65b88 - 0x0da65c88 (Size: 256 bytes, Frame: 48)
.globl __glexpim_RasterPos3fv
.ent __glexpim_RasterPos3fv
__glexpim_RasterPos3fv:
    # Line 185
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 187
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 185
    lui	$at,0x19
    addiu	$at,$at,7392
    # Line 187
    beqz	$a2,.L0da65bf4
    # Line 185
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 187
    li	$v0,2
    beq	$a2,$v0,.L0da65be4
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65be4:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65bf4:
    # Line 189
    # lw $t9, -27492($gp) # &__glim_RasterPos3fv
    jal	__glim_RasterPos3fv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65c34
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da65c78
    # Line 190
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da65c34:
    ld	$at,0($sp)
    lwc1	$f3,0($at)
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    lwc1	$f2,4($at)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lwc1	$f1,8($at)
    lwc1	$f0,_lit_3f800000
    ld	$gp,8($sp)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 191
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da65c78:
    # Line 190
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65c34
    ld	$ra,24($sp)
.end __glexpim_RasterPos3fv

# Function: __glexpim_RasterPos3d
# Declared: Line 194 (Source lines: 194-200)
# Address: 0x0da65c88 - 0x0da65db4 (Size: 300 bytes, Frame: 208)
.globl __glexpim_RasterPos3d
.ent __glexpim_RasterPos3d
__glexpim_RasterPos3d:
    # Line 194
    mov.d	$f4,$f14
    mov.d	$f5,$f13
    mov.d	$f6,$f12
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s7,32($sp)
    # Line 196
    lw	$s7,__glCurrentContext
    sdc1	$f14,0($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,16($sp)
    sd	$gp,24($sp)
    lw	$a0,__glBeginMode
    # Line 194
    lui	$at,0x19
    addiu	$at,$at,7136
    # Line 196
    beqz	$a0,.L0da65d10
    # Line 194
    addu	$gp,$t9,$at
    sd	$ra,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    # Line 196
    li	$v0,2
    beq	$a0,$v0,.L0da65d00
    sdc1	$f6,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65d00:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da65d10:
    # Line 198
    # lw $t9, -27488($gp) # &__glim_RasterPos3d
    ldc1	$f12,16($sp)
    ldc1	$f13,8($sp)
    jal	__glim_RasterPos3d
    ldc1	$f14,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da65d58
    ld	$ra,40($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da65da4
    # Line 199
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,40($sp)
.L0da65d58:
    ldc1	$f2,8($sp)
    lwc1	$f0,_lit_3f800000
    ld	$gp,24($sp)
    cvt.s.d	$f2,$f2
    ldc1	$f3,16($sp)
    lui	$s7,0x4
    ldc1	$f1,0($sp)
    cvt.s.d	$f3,$f3
    ori	$s7,$s7,0x277c
    lui	$at,0x4
    cvt.s.d	$f1,$f1
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 200
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65da4:
    # Line 199
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da65d58
    ld	$ra,40($sp)
.end __glexpim_RasterPos3d

# Function: __glexpim_RasterPos3f
# Declared: Line 203 (Source lines: 203-209)
# Address: 0x0da65db4 - 0x0da65ed4 (Size: 288 bytes, Frame: 208)
.globl __glexpim_RasterPos3f
.ent __glexpim_RasterPos3f
__glexpim_RasterPos3f:
    # Line 203
    mov.s	$f4,$f14
    mov.s	$f5,$f13
    mov.s	$f6,$f12
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s7,32($sp)
    # Line 205
    lw	$s7,__glCurrentContext
    sdc1	$f14,0($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,16($sp)
    sd	$gp,24($sp)
    lw	$a0,__glBeginMode
    # Line 203
    lui	$at,0x19
    addiu	$at,$at,6836
    # Line 205
    beqz	$a0,.L0da65e3c
    # Line 203
    addu	$gp,$t9,$at
    sd	$ra,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    # Line 205
    li	$v0,2
    beq	$a0,$v0,.L0da65e2c
    sdc1	$f6,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65e2c:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da65e3c:
    # Line 207
    # lw $t9, -27484($gp) # &__glim_RasterPos3f
    ldc1	$f12,16($sp)
    ldc1	$f13,8($sp)
    jal	__glim_RasterPos3f
    ldc1	$f14,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da65e84
    ld	$ra,40($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da65ec4
    # Line 208
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,40($sp)
.L0da65e84:
    lwc1	$f0,_lit_3f800000
    ld	$gp,24($sp)
    ldc1	$f1,0($sp)
    lui	$s7,0x4
    ori	$s7,$s7,0x277c
    ldc1	$f2,8($sp)
    ldc1	$f3,16($sp)
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 209
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65ec4:
    # Line 208
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da65e84
    ld	$ra,40($sp)
.end __glexpim_RasterPos3f

# Function: __glexpim_RasterPos3i
# Declared: Line 212 (Source lines: 212-218)
# Address: 0x0da65ed4 - 0x0da66000 (Size: 300 bytes, Frame: 208)
.globl __glexpim_RasterPos3i
.ent __glexpim_RasterPos3i
__glexpim_RasterPos3i:
    # Line 212
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 214
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lw	$a4,__glBeginMode
    # Line 212
    lui	$at,0x19
    addiu	$at,$at,6548
    # Line 214
    beqz	$a4,.L0da65f50
    # Line 212
    addu	$gp,$t9,$at
    sd	$ra,40($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    # Line 214
    li	$v0,2
    beq	$a4,$v0,.L0da65f40
    sd	$a0,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65f40:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da65f50:
    # Line 216
    # lw $t9, -27480($gp) # &__glim_RasterPos3i
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    jal	__glim_RasterPos3i
    ld	$a2,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da65f98
    ld	$ra,40($sp)
    lbu	$a3,3104($s0)
    beqz	$a3,.L0da65ff0
    # Line 217
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,40($sp)
.L0da65f98:
    ld	$at,8($sp)
    mtc1	$at,$f2
    ld	$v0,16($sp)
    cvt.s.w	$f2,$f2
    mtc1	$v0,$f3
    ld	$v1,0($sp)
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    mtc1	$v1,$f1
    ld	$gp,24($sp)
    lui	$s0,0x4
    cvt.s.w	$f1,$f1
    ori	$s0,$s0,0x277c
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 218
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da65ff0:
    # Line 217
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da65f98
    ld	$ra,40($sp)
.end __glexpim_RasterPos3i

# Function: __glexpim_RasterPos3iv
# Declared: Line 221 (Source lines: 221-227)
# Address: 0x0da66000 - 0x0da66124 (Size: 292 bytes, Frame: 48)
.globl __glexpim_RasterPos3iv
.ent __glexpim_RasterPos3iv
__glexpim_RasterPos3iv:
    # Line 221
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 223
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 221
    lui	$at,0x19
    addiu	$at,$at,6248
    # Line 223
    beqz	$a2,.L0da6606c
    # Line 221
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 223
    li	$v0,2
    beq	$a2,$v0,.L0da6605c
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6605c:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da6606c:
    # Line 225
    # lw $t9, -27476($gp) # &__glim_RasterPos3iv
    jal	__glim_RasterPos3iv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da660ac
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66114
    # Line 226
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da660ac:
    ld	$at,0($sp)
    lw	$a0,0($at)
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v1,0x4
    ori	$v1,$v1,0x2414
    swc1	$f3,0($v1)
    lw	$v0,4($at)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lw	$at,8($at)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,_lit_3f800000
    ld	$gp,8($sp)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 227
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66114:
    # Line 226
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da660ac
    ld	$ra,24($sp)
.end __glexpim_RasterPos3iv

# Function: __glexpim_RasterPos3s
# Declared: Line 230 (Source lines: 230-236)
# Address: 0x0da66124 - 0x0da66250 (Size: 300 bytes, Frame: 208)
.globl __glexpim_RasterPos3s
.ent __glexpim_RasterPos3s
__glexpim_RasterPos3s:
    # Line 230
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 232
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    lw	$a4,__glBeginMode
    # Line 230
    lui	$at,0x19
    addiu	$at,$at,5956
    # Line 232
    beqz	$a4,.L0da661a0
    # Line 230
    addu	$gp,$t9,$at
    sd	$ra,40($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    # Line 232
    li	$v0,2
    beq	$a4,$v0,.L0da66190
    sd	$a0,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da66190:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da661a0:
    # Line 234
    # lw $t9, -27472($gp) # &__glim_RasterPos3s
    ld	$a0,16($sp)
    ld	$a1,8($sp)
    jal	__glim_RasterPos3s
    ld	$a2,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da661e8
    ld	$ra,40($sp)
    lbu	$a3,3104($s0)
    beqz	$a3,.L0da66240
    # Line 235
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,40($sp)
.L0da661e8:
    ld	$at,8($sp)
    mtc1	$at,$f2
    ld	$v0,16($sp)
    cvt.s.w	$f2,$f2
    mtc1	$v0,$f3
    ld	$v1,0($sp)
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    mtc1	$v1,$f1
    ld	$gp,24($sp)
    lui	$s0,0x4
    cvt.s.w	$f1,$f1
    ori	$s0,$s0,0x277c
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 236
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da66240:
    # Line 235
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da661e8
    ld	$ra,40($sp)
.end __glexpim_RasterPos3s

# Function: __glexpim_RasterPos3sv
# Declared: Line 239 (Source lines: 239-245)
# Address: 0x0da66250 - 0x0da66374 (Size: 292 bytes, Frame: 48)
.globl __glexpim_RasterPos3sv
.ent __glexpim_RasterPos3sv
__glexpim_RasterPos3sv:
    # Line 239
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 241
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 239
    lui	$at,0x19
    addiu	$at,$at,5656
    # Line 241
    beqz	$a2,.L0da662bc
    # Line 239
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 241
    li	$v0,2
    beq	$a2,$v0,.L0da662ac
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da662ac:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da662bc:
    # Line 243
    # lw $t9, -27468($gp) # &__glim_RasterPos3sv
    jal	__glim_RasterPos3sv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da662fc
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66364
    # Line 244
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da662fc:
    ld	$at,0($sp)
    lh	$a0,0($at)
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v1,0x4
    ori	$v1,$v1,0x2414
    swc1	$f3,0($v1)
    lh	$v0,2($at)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lh	$at,4($at)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,_lit_3f800000
    ld	$gp,8($sp)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 245
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66364:
    # Line 244
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da662fc
    ld	$ra,24($sp)
.end __glexpim_RasterPos3sv

# Function: __glexpim_RasterPos4dv
# Declared: Line 250 (Source lines: 250-256)
# Address: 0x0da66374 - 0x0da66484 (Size: 272 bytes, Frame: 48)
.globl __glexpim_RasterPos4dv
.ent __glexpim_RasterPos4dv
__glexpim_RasterPos4dv:
    # Line 250
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 252
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 250
    lui	$at,0x19
    addiu	$at,$at,5364
    # Line 252
    beqz	$a2,.L0da663e0
    # Line 250
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 252
    li	$v0,2
    beq	$a2,$v0,.L0da663d0
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da663d0:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da663e0:
    # Line 254
    # lw $t9, -27464($gp) # &__glim_RasterPos4dv
    jal	__glim_RasterPos4dv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da66420
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66474
    # Line 255
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da66420:
    ld	$at,0($sp)
    ldc1	$f3,0($at)
    cvt.s.d	$f3,$f3
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    ldc1	$f2,8($at)
    cvt.s.d	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    ldc1	$f1,16($at)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($s0)
    ldc1	$f0,24($at)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    swc1	$f0,0($s0)
    # Line 256
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66474:
    # Line 255
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da66420
    ld	$ra,24($sp)
.end __glexpim_RasterPos4dv

# Function: __glexpim_RasterPos4fv
# Declared: Line 259 (Source lines: 259-265)
# Address: 0x0da66484 - 0x0da66584 (Size: 256 bytes, Frame: 48)
.globl __glexpim_RasterPos4fv
.ent __glexpim_RasterPos4fv
__glexpim_RasterPos4fv:
    # Line 259
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 261
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 259
    lui	$at,0x19
    addiu	$at,$at,5092
    # Line 261
    beqz	$a2,.L0da664f0
    # Line 259
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 261
    li	$v0,2
    beq	$a2,$v0,.L0da664e0
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da664e0:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da664f0:
    # Line 263
    # lw $t9, -27460($gp) # &__glim_RasterPos4fv
    jal	__glim_RasterPos4fv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da66530
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66574
    # Line 264
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da66530:
    ld	$at,0($sp)
    lwc1	$f3,0($at)
    lui	$v0,0x4
    ori	$v0,$v0,0x2414
    swc1	$f3,0($v0)
    lwc1	$f2,4($at)
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lwc1	$f1,8($at)
    swc1	$f1,0($s0)
    lwc1	$f0,12($at)
    ld	$gp,8($sp)
    swc1	$f0,0($s0)
    # Line 265
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66574:
    # Line 264
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da66530
    ld	$ra,24($sp)
.end __glexpim_RasterPos4fv

# Function: __glexpim_RasterPos4d
# Declared: Line 268 (Source lines: 268-274)
# Address: 0x0da66584 - 0x0da666c4 (Size: 320 bytes, Frame: 224)
.globl __glexpim_RasterPos4d
.ent __glexpim_RasterPos4d
__glexpim_RasterPos4d:
    # Line 268
    mov.d	$f4,$f15
    mov.d	$f5,$f14
    mov.d	$f6,$f13
    mov.d	$f7,$f12
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s7,40($sp)
    # Line 270
    lw	$s7,__glCurrentContext
    sdc1	$f15,0($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f12,24($sp)
    sd	$gp,32($sp)
    lw	$a0,__glBeginMode
    # Line 268
    lui	$at,0x19
    addiu	$at,$at,4836
    # Line 270
    beqz	$a0,.L0da66618
    # Line 268
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 270
    li	$v0,2
    beq	$a0,$v0,.L0da66608
    sdc1	$f7,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66608:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da66618:
    ldc1	$f12,24($sp)
    # Line 272
    # lw $t9, -27456($gp) # &__glim_RasterPos4d
    ldc1	$f13,16($sp)
    ldc1	$f14,8($sp)
    jal	__glim_RasterPos4d
    ldc1	$f15,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da66664
    ld	$ra,48($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da666b4
    # Line 273
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,48($sp)
.L0da66664:
    ldc1	$f1,8($sp)
    cvt.s.d	$f1,$f1
    ldc1	$f2,16($sp)
    ld	$gp,32($sp)
    lui	$s7,0x4
    cvt.s.d	$f2,$f2
    ldc1	$f3,24($sp)
    ori	$s7,$s7,0x277c
    ldc1	$f0,0($sp)
    cvt.s.d	$f3,$f3
    lui	$at,0x4
    ori	$at,$at,0x2414
    cvt.s.d	$f0,$f0
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 274
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da666b4:
    # Line 273
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da66664
    ld	$ra,48($sp)
.end __glexpim_RasterPos4d

# Function: __glexpim_RasterPos4f
# Declared: Line 277 (Source lines: 277-283)
# Address: 0x0da666c4 - 0x0da667f4 (Size: 304 bytes, Frame: 224)
.globl __glexpim_RasterPos4f
.ent __glexpim_RasterPos4f
__glexpim_RasterPos4f:
    # Line 277
    mov.s	$f4,$f15
    mov.s	$f5,$f14
    mov.s	$f6,$f13
    mov.s	$f7,$f12
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s7,40($sp)
    # Line 279
    lw	$s7,__glCurrentContext
    sdc1	$f15,0($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f12,24($sp)
    sd	$gp,32($sp)
    lw	$a0,__glBeginMode
    # Line 277
    lui	$at,0x19
    addiu	$at,$at,4516
    # Line 279
    beqz	$a0,.L0da66758
    # Line 277
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 279
    li	$v0,2
    beq	$a0,$v0,.L0da66748
    sdc1	$f7,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66748:
    lw	$t9,11792($s7)
    jalr	$t9
    move	$a0,$s7
    sw	$zero,__glBeginMode
.L0da66758:
    ldc1	$f12,24($sp)
    # Line 281
    # lw $t9, -27452($gp) # &__glim_RasterPos4f
    ldc1	$f13,16($sp)
    ldc1	$f14,8($sp)
    jal	__glim_RasterPos4f
    ldc1	$f15,0($sp)
    lbu	$v1,31567($s7)
    beqz	$v1,.L0da667a4
    ld	$ra,48($sp)
    lbu	$a1,3104($s7)
    beqz	$a1,.L0da667e4
    # Line 282
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s7)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s7)
    lwc1	$f13,412($s7)
    bal __glexpim_Color4f
    lwc1	$f12,408($s7)
    ld	$ra,48($sp)
.L0da667a4:
    ld	$gp,32($sp)
    ldc1	$f0,0($sp)
    ldc1	$f1,8($sp)
    lui	$s7,0x4
    ori	$s7,$s7,0x277c
    ldc1	$f2,16($sp)
    ldc1	$f3,24($sp)
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s7)
    swc1	$f1,0($s7)
    swc1	$f0,0($s7)
    # Line 283
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da667e4:
    # Line 282
    bal __glexpim_Indexf
    lwc1	$f12,424($s7)
    b	.L0da667a4
    ld	$ra,48($sp)
.end __glexpim_RasterPos4f

# Function: __glexpim_RasterPos4i
# Declared: Line 286 (Source lines: 286-292)
# Address: 0x0da667f4 - 0x0da66934 (Size: 320 bytes, Frame: 224)
.globl __glexpim_RasterPos4i
.ent __glexpim_RasterPos4i
__glexpim_RasterPos4i:
    # Line 286
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,40($sp)
    # Line 288
    lw	$s0,__glCurrentContext
    sd	$a3,16($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a0,24($sp)
    sd	$gp,32($sp)
    lw	$a5,__glBeginMode
    # Line 286
    lui	$at,0x19
    addiu	$at,$at,4212
    # Line 288
    beqz	$a5,.L0da66878
    # Line 286
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a3,16($sp)
    # Line 288
    li	$v0,2
    beq	$a5,$v0,.L0da66868
    sd	$a0,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66868:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da66878:
    ld	$a0,24($sp)
    # Line 290
    # lw $t9, -27448($gp) # &__glim_RasterPos4i
    ld	$a1,8($sp)
    ld	$a2,0($sp)
    jal	__glim_RasterPos4i
    ld	$a3,16($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da668c4
    ld	$ra,48($sp)
    lbu	$a4,3104($s0)
    beqz	$a4,.L0da66924
    # Line 291
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,48($sp)
.L0da668c4:
    ld	$v1,0($sp)
    mtc1	$v1,$f1
    ld	$at,8($sp)
    cvt.s.w	$f1,$f1
    mtc1	$at,$f2
    ld	$v0,24($sp)
    cvt.s.w	$f2,$f2
    mtc1	$v0,$f3
    ld	$a0,16($sp)
    cvt.s.w	$f3,$f3
    ld	$gp,32($sp)
    mtc1	$a0,$f0
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    cvt.s.w	$f0,$f0
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 292
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66924:
    # Line 291
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da668c4
    ld	$ra,48($sp)
.end __glexpim_RasterPos4i

# Function: __glexpim_RasterPos4iv
# Declared: Line 295 (Source lines: 295-301)
# Address: 0x0da66934 - 0x0da66a64 (Size: 304 bytes, Frame: 48)
.globl __glexpim_RasterPos4iv
.ent __glexpim_RasterPos4iv
__glexpim_RasterPos4iv:
    # Line 295
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 297
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 295
    lui	$at,0x19
    addiu	$at,$at,3892
    # Line 297
    beqz	$a2,.L0da669a0
    # Line 295
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 297
    li	$v0,2
    beq	$a2,$v0,.L0da66990
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66990:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da669a0:
    # Line 299
    # lw $t9, -27444($gp) # &__glim_RasterPos4iv
    jal	__glim_RasterPos4iv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da669e0
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66a54
    # Line 300
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da669e0:
    ld	$at,0($sp)
    lw	$a0,0($at)
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v1,0x4
    ori	$v1,$v1,0x2414
    swc1	$f3,0($v1)
    lw	$v0,4($at)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lw	$v0,8($at)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($s0)
    lw	$at,12($at)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$gp,8($sp)
    swc1	$f0,0($s0)
    # Line 301
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66a54:
    # Line 300
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da669e0
    ld	$ra,24($sp)
.end __glexpim_RasterPos4iv

# Function: __glexpim_RasterPos4s
# Declared: Line 304 (Source lines: 304-310)
# Address: 0x0da66a64 - 0x0da66ba4 (Size: 320 bytes, Frame: 224)
.globl __glexpim_RasterPos4s
.ent __glexpim_RasterPos4s
__glexpim_RasterPos4s:
    # Line 304
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,40($sp)
    # Line 306
    lw	$s0,__glCurrentContext
    sd	$a3,16($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a0,24($sp)
    sd	$gp,32($sp)
    lw	$a5,__glBeginMode
    # Line 304
    lui	$at,0x19
    addiu	$at,$at,3588
    # Line 306
    beqz	$a5,.L0da66ae8
    # Line 304
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$a3,16($sp)
    # Line 306
    li	$v0,2
    beq	$a5,$v0,.L0da66ad8
    sd	$a0,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66ad8:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da66ae8:
    ld	$a0,24($sp)
    # Line 308
    # lw $t9, -27440($gp) # &__glim_RasterPos4s
    ld	$a1,8($sp)
    ld	$a2,0($sp)
    jal	__glim_RasterPos4s
    ld	$a3,16($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da66b34
    ld	$ra,48($sp)
    lbu	$a4,3104($s0)
    beqz	$a4,.L0da66b94
    # Line 309
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,48($sp)
.L0da66b34:
    ld	$v1,0($sp)
    mtc1	$v1,$f1
    ld	$at,8($sp)
    cvt.s.w	$f1,$f1
    mtc1	$at,$f2
    ld	$v0,24($sp)
    cvt.s.w	$f2,$f2
    mtc1	$v0,$f3
    ld	$a0,16($sp)
    cvt.s.w	$f3,$f3
    ld	$gp,32($sp)
    mtc1	$a0,$f0
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    cvt.s.w	$f0,$f0
    lui	$at,0x4
    ori	$at,$at,0x2414
    swc1	$f3,0($at)
    swc1	$f2,0($s0)
    swc1	$f1,0($s0)
    swc1	$f0,0($s0)
    # Line 310
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da66b94:
    # Line 309
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da66b34
    ld	$ra,48($sp)
.end __glexpim_RasterPos4s

# Function: __glexpim_RasterPos4sv
# Declared: Line 313 (Source lines: 313-319)
# Address: 0x0da66ba4 - 0x0da66cd4 (Size: 304 bytes, Frame: 48)
.globl __glexpim_RasterPos4sv
.ent __glexpim_RasterPos4sv
__glexpim_RasterPos4sv:
    # Line 313
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 315
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lw	$a2,__glBeginMode
    # Line 313
    lui	$at,0x19
    addiu	$at,$at,3268
    # Line 315
    beqz	$a2,.L0da66c10
    # Line 313
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 315
    li	$v0,2
    beq	$a2,$v0,.L0da66c00
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66c00:
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0da66c10:
    # Line 317
    # lw $t9, -27436($gp) # &__glim_RasterPos4sv
    jal	__glim_RasterPos4sv
    ld	$a0,0($sp)
    lbu	$v1,31567($s0)
    beqz	$v1,.L0da66c50
    ld	$ra,24($sp)
    lbu	$a1,3104($s0)
    beqz	$a1,.L0da66cc4
    # Line 318
    nop	# was lw $t9, -31340($gp) # &__glexpim_Indexf
    lwc1	$f15,420($s0)
    # lw $t9, -31384($gp) # &__glexpim_Color4f
    lwc1	$f14,416($s0)
    lwc1	$f13,412($s0)
    bal __glexpim_Color4f
    lwc1	$f12,408($s0)
    ld	$ra,24($sp)
.L0da66c50:
    ld	$at,0($sp)
    lh	$a0,0($at)
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v1,0x4
    ori	$v1,$v1,0x2414
    swc1	$f3,0($v1)
    lh	$v0,2($at)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lui	$s0,0x4
    ori	$s0,$s0,0x277c
    swc1	$f2,0($s0)
    lh	$v0,4($at)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($s0)
    lh	$at,6($at)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$gp,8($sp)
    swc1	$f0,0($s0)
    # Line 319
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da66cc4:
    # Line 318
    bal __glexpim_Indexf
    lwc1	$f12,424($s0)
    b	.L0da66c50
    ld	$ra,24($sp)
.end __glexpim_RasterPos4sv

.rdata
_lit_3f7f0000:
    .word 0x3f7f0000
_lit_3f800000:
    .word 0x3f800000

