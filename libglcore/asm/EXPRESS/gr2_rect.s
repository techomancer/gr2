# Source: ../EXPRESS/gr2_rect.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_rect.c
# Total Functions: 8

.text

# Function: __glexpim_Rectd
# Declared: Line 29 (Source lines: 30-39)
# Address: 0x0da67204 - 0x0da672f8 (Size: 244 bytes, Frame: 208)
.globl __glexpim_Rectd
.ent __glexpim_Rectd
__glexpim_Rectd:
    # Line 31
    lw	$a0,__glCurrentContext
    # Line 30
    mov.d	$f4,$f15
    mov.d	$f5,$f14
    mov.d	$f6,$f13
    mov.d	$f7,$f12
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f15,0($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f12,24($sp)
    # sd	gp,32(sp)
    # Line 31
    lw	$a2,__glBeginMode
    # Line 30
    lui	$at,0x19
    addiu	$at,$at,1636
    # Line 31
    beqz	$a2,.L0da67290
    # Line 30
    nop
    sd	$ra,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 31
    li	$v0,2
    beq	$a2,$v0,.L0da67280
    sdc1	$f7,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da67280:
    lw	$t9,11792($a0)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
.L0da67290:
    # Line 33
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 34
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f12,24($sp)
    jal	glVertex2d
    ldc1	$f13,16($sp)
    # Line 35
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f12,8($sp)
    jal	glVertex2d
    ldc1	$f13,16($sp)
    # Line 36
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f12,8($sp)
    jal	glVertex2d
    ldc1	$f13,0($sp)
    # Line 37
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f12,24($sp)
    jal	glVertex2d
    ldc1	$f13,0($sp)
    # Line 38
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 39
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Rectd

# Function: __glexpim_Rectdv
# Declared: Line 41 (Source lines: 42-51)
# Address: 0x0da672f8 - 0x0da673e8 (Size: 240 bytes, Frame: 48)
.globl __glexpim_Rectdv
.ent __glexpim_Rectdv
__glexpim_Rectdv:
    # Line 43
    lw	$a5,__glCurrentContext
    # Line 42
    move	$a3,$a0
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    # sd	gp,16(sp)
    # Line 43
    lw	$a4,__glBeginMode
    # Line 42
    lui	$at,0x19
    addiu	$at,$at,1392
    # Line 43
    beqz	$a4,.L0da67368
    # Line 42
    nop
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    # Line 43
    li	$v0,2
    beq	$a4,$v0,.L0da67358
    sd	$a3,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da67358:
    lw	$t9,11792($a5)
    jalr	$t9
    move	$a0,$a5
    sw	$zero,__glBeginMode
.L0da67368:
    # Line 45
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 46
    ld	$v1,8($sp)
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f13,8($v1)
    jal	glVertex2d
    ldc1	$f12,0($v1)
    # Line 47
    ld	$a1,8($sp)
    # lw $t9, -22724($gp) # &glVertex2d
    ld	$a0,0($sp)
    ldc1	$f13,8($a1)
    jal	glVertex2d
    ldc1	$f12,0($a0)
    # Line 48
    ld	$a2,0($sp)
    # lw $t9, -22724($gp) # &glVertex2d
    ldc1	$f13,8($a2)
    jal	glVertex2d
    ldc1	$f12,0($a2)
    # Line 49
    ld	$a4,0($sp)
    # lw $t9, -22724($gp) # &glVertex2d
    ld	$a3,8($sp)
    ldc1	$f13,8($a4)
    jal	glVertex2d
    ldc1	$f12,0($a3)
    # Line 50
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 51
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Rectdv

# Function: __glexpim_Rectf
# Declared: Line 53 (Source lines: 54-63)
# Address: 0x0da673e8 - 0x0da674dc (Size: 244 bytes, Frame: 208)
.globl __glexpim_Rectf
.ent __glexpim_Rectf
__glexpim_Rectf:
    # Line 55
    lw	$a0,__glCurrentContext
    # Line 54
    mov.s	$f4,$f15
    mov.s	$f5,$f14
    mov.s	$f6,$f13
    mov.s	$f7,$f12
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sdc1	$f15,0($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f12,24($sp)
    # sd	gp,32(sp)
    # Line 55
    lw	$a2,__glBeginMode
    # Line 54
    lui	$at,0x19
    addiu	$at,$at,1152
    # Line 55
    beqz	$a2,.L0da67474
    # Line 54
    nop
    sd	$ra,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 55
    li	$v0,2
    beq	$a2,$v0,.L0da67464
    sdc1	$f7,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da67464:
    lw	$t9,11792($a0)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
.L0da67474:
    # Line 57
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 58
    # lw $t9, -22716($gp) # &glVertex2f
    ldc1	$f12,24($sp)
    jal	glVertex2f
    ldc1	$f13,16($sp)
    # Line 59
    # lw $t9, -22716($gp) # &glVertex2f
    ldc1	$f12,8($sp)
    jal	glVertex2f
    ldc1	$f13,16($sp)
    # Line 60
    # lw $t9, -22716($gp) # &glVertex2f
    ldc1	$f12,8($sp)
    jal	glVertex2f
    ldc1	$f13,0($sp)
    # Line 61
    # lw $t9, -22716($gp) # &glVertex2f
    ldc1	$f12,24($sp)
    jal	glVertex2f
    ldc1	$f13,0($sp)
    # Line 62
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 63
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Rectf

# Function: __glexpim_Rectfv
# Declared: Line 65 (Source lines: 66-75)
# Address: 0x0da674dc - 0x0da675cc (Size: 240 bytes, Frame: 48)
.globl __glexpim_Rectfv
.ent __glexpim_Rectfv
__glexpim_Rectfv:
    # Line 67
    lw	$a5,__glCurrentContext
    # Line 66
    move	$a3,$a0
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    # sd	gp,16(sp)
    # Line 67
    lw	$a4,__glBeginMode
    # Line 66
    lui	$at,0x19
    addiu	$at,$at,908
    # Line 67
    beqz	$a4,.L0da6754c
    # Line 66
    nop
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    # Line 67
    li	$v0,2
    beq	$a4,$v0,.L0da6753c
    sd	$a3,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6753c:
    lw	$t9,11792($a5)
    jalr	$t9
    move	$a0,$a5
    sw	$zero,__glBeginMode
.L0da6754c:
    # Line 69
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 70
    ld	$v1,8($sp)
    # lw $t9, -22716($gp) # &glVertex2f
    lwc1	$f13,4($v1)
    jal	glVertex2f
    lwc1	$f12,0($v1)
    # Line 71
    ld	$a1,8($sp)
    # lw $t9, -22716($gp) # &glVertex2f
    ld	$a0,0($sp)
    lwc1	$f13,4($a1)
    jal	glVertex2f
    lwc1	$f12,0($a0)
    # Line 72
    ld	$a2,0($sp)
    # lw $t9, -22716($gp) # &glVertex2f
    lwc1	$f13,4($a2)
    jal	glVertex2f
    lwc1	$f12,0($a2)
    # Line 73
    ld	$a4,0($sp)
    # lw $t9, -22716($gp) # &glVertex2f
    ld	$a3,8($sp)
    lwc1	$f13,4($a4)
    jal	glVertex2f
    lwc1	$f12,0($a3)
    # Line 74
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 75
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Rectfv

# Function: __glexpim_Recti
# Declared: Line 77 (Source lines: 78-87)
# Address: 0x0da675cc - 0x0da676b0 (Size: 228 bytes, Frame: 208)
.globl __glexpim_Recti
.ent __glexpim_Recti
__glexpim_Recti:
    # Line 79
    lw	$a6,__glCurrentContext
    # Line 78
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a3,24($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,0($sp)
    # sd	gp,32(sp)
    # Line 79
    lw	$a5,__glBeginMode
    # Line 78
    lui	$at,0x19
    addiu	$at,$at,668
    # Line 79
    beqz	$a5,.L0da67648
    # Line 78
    nop
    sd	$ra,40($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a3,24($sp)
    # Line 79
    li	$v0,2
    beq	$a5,$v0,.L0da67638
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da67638:
    lw	$t9,11792($a6)
    jalr	$t9
    move	$a0,$a6
    sw	$zero,__glBeginMode
.L0da67648:
    # Line 81
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 82
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,0($sp)
    jal	glVertex2i
    ld	$a1,16($sp)
    # Line 83
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,8($sp)
    jal	glVertex2i
    ld	$a1,16($sp)
    # Line 84
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,8($sp)
    jal	glVertex2i
    ld	$a1,24($sp)
    # Line 85
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,0($sp)
    jal	glVertex2i
    ld	$a1,24($sp)
    # Line 86
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 87
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Recti

# Function: __glexpim_Rectiv
# Declared: Line 89 (Source lines: 90-99)
# Address: 0x0da676b0 - 0x0da677a0 (Size: 240 bytes, Frame: 48)
.globl __glexpim_Rectiv
.ent __glexpim_Rectiv
__glexpim_Rectiv:
    # Line 91
    lw	$a5,__glCurrentContext
    # Line 90
    move	$a3,$a0
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    # sd	gp,16(sp)
    # Line 91
    lw	$a4,__glBeginMode
    # Line 90
    lui	$at,0x19
    addiu	$at,$at,440
    # Line 91
    beqz	$a4,.L0da67720
    # Line 90
    nop
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    # Line 91
    li	$v0,2
    beq	$a4,$v0,.L0da67710
    sd	$a3,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da67710:
    lw	$t9,11792($a5)
    jalr	$t9
    move	$a0,$a5
    sw	$zero,__glBeginMode
.L0da67720:
    # Line 93
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 94
    ld	$a0,8($sp)
    # lw $t9, -22708($gp) # &glVertex2i
    lw	$a1,4($a0)
    jal	glVertex2i
    lw	$a0,0($a0)
    # Line 95
    ld	$a1,8($sp)
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,0($sp)
    lw	$a1,4($a1)
    jal	glVertex2i
    lw	$a0,0($a0)
    # Line 96
    ld	$a0,0($sp)
    # lw $t9, -22708($gp) # &glVertex2i
    lw	$a1,4($a0)
    jal	glVertex2i
    lw	$a0,0($a0)
    # Line 97
    ld	$a1,0($sp)
    # lw $t9, -22708($gp) # &glVertex2i
    ld	$a0,8($sp)
    lw	$a1,4($a1)
    jal	glVertex2i
    lw	$a0,0($a0)
    # Line 98
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 99
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Rectiv

# Function: __glexpim_Rects
# Declared: Line 101 (Source lines: 102-111)
# Address: 0x0da677a0 - 0x0da67884 (Size: 228 bytes, Frame: 208)
.globl __glexpim_Rects
.ent __glexpim_Rects
__glexpim_Rects:
    # Line 103
    lw	$a6,__glCurrentContext
    # Line 102
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a3,24($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,0($sp)
    # sd	gp,32(sp)
    # Line 103
    lw	$a5,__glBeginMode
    # Line 102
    lui	$at,0x19
    addiu	$at,$at,200
    # Line 103
    beqz	$a5,.L0da6781c
    # Line 102
    nop
    sd	$ra,40($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a3,24($sp)
    # Line 103
    li	$v0,2
    beq	$a5,$v0,.L0da6780c
    sd	$a0,0($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6780c:
    lw	$t9,11792($a6)
    jalr	$t9
    move	$a0,$a6
    sw	$zero,__glBeginMode
.L0da6781c:
    # Line 105
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 106
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,0($sp)
    jal	glVertex2s
    ld	$a1,16($sp)
    # Line 107
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,8($sp)
    jal	glVertex2s
    ld	$a1,16($sp)
    # Line 108
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,8($sp)
    jal	glVertex2s
    ld	$a1,24($sp)
    # Line 109
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,0($sp)
    jal	glVertex2s
    ld	$a1,24($sp)
    # Line 110
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 111
    ld	$ra,40($sp)
    # ld	gp,32(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glexpim_Rects

# Function: __glexpim_Rectsv
# Declared: Line 113 (Source lines: 114-123)
# Address: 0x0da67884 - 0x0da67974 (Size: 240 bytes, Frame: 48)
.globl __glexpim_Rectsv
.ent __glexpim_Rectsv
__glexpim_Rectsv:
    # Line 115
    lw	$a5,__glCurrentContext
    # Line 114
    move	$a3,$a0
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    sd	$a0,8($sp)
    # sd	gp,16(sp)
    # Line 115
    lw	$a4,__glBeginMode
    # Line 114
    lui	$at,0x19
    addiu	$at,$at,-28
    # Line 115
    beqz	$a4,.L0da678f4
    # Line 114
    nop
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    # Line 115
    li	$v0,2
    beq	$a4,$v0,.L0da678e4
    sd	$a3,8($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da678e4:
    lw	$t9,11792($a5)
    jalr	$t9
    move	$a0,$a5
    sw	$zero,__glBeginMode
.L0da678f4:
    # Line 117
    # lw $t9, -31936($gp) # &__glexpim_Begin
    bal __glexpim_Begin
    li	$a0,7
    # Line 118
    ld	$a0,8($sp)
    # lw $t9, -22700($gp) # &glVertex2s
    lh	$a1,2($a0)
    jal	glVertex2s
    lh	$a0,0($a0)
    # Line 119
    ld	$a1,8($sp)
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,0($sp)
    lh	$a1,2($a1)
    jal	glVertex2s
    lh	$a0,0($a0)
    # Line 120
    ld	$a0,0($sp)
    # lw $t9, -22700($gp) # &glVertex2s
    lh	$a1,2($a0)
    jal	glVertex2s
    lh	$a0,0($a0)
    # Line 121
    ld	$a1,0($sp)
    # lw $t9, -22700($gp) # &glVertex2s
    ld	$a0,8($sp)
    lh	$a1,2($a1)
    jal	glVertex2s
    lh	$a0,0($a0)
    # Line 122
    # lw $t9, -31932($gp) # &__glexpim_End
    bal __glexpim_End
    nop
    # Line 123
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_Rectsv

