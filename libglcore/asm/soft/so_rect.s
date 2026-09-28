# Source: ../soft/so_rect.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rect.c
# Total Functions: 9

.text

# Function: __glim_Rectd
# Declared: Line 25 (Source lines: 26-30)
# Address: 0x0dad93b4 - 0x0dad9478 (Size: 196 bytes, Frame: 224)
.globl __glim_Rectd
.ent __glim_Rectd
__glim_Rectd:
    # Line 27
    lw	$a0,__glCurrentContext
    # Line 26
    mov.d	$f4,$f15
    mov.d	$f5,$f14
    mov.d	$f6,$f13
    mov.d	$f7,$f12
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # sd	gp,8(sp)
    # Line 27
    lw	$a2,__glBeginMode
    # Line 26
    lui	$at,0x12
    addiu	$at,$at,-6988
    # Line 27
    beqz	$a2,.L0dad9450
    # Line 26
    nop
    sd	$ra,48($sp)
    sd	$a0,0($sp)
    sdc1	$f4,40($sp)
    sdc1	$f5,32($sp)
    sdc1	$f6,24($sp)
    # Line 27
    li	$v0,2
    beq	$a2,$v0,.L0dad9424
    sdc1	$f7,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad9424:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f7,16($sp)
    ldc1	$f6,24($sp)
    ldc1	$f5,32($sp)
    ldc1	$f4,40($sp)
    ld	$a0,0($sp)
.L0dad9450:
    # Line 29
    cvt.s.d	$f16,$f4
    cvt.s.d	$f15,$f5
    lw	$t9,12108($a0)
    cvt.s.d	$f14,$f6
    jalr	$t9
    cvt.s.d	$f13,$f7
    # Line 30
    ld	$ra,48($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_Rectd

# Function: __glim_Rectdv
# Declared: Line 32 (Source lines: 33-37)
# Address: 0x0dad9478 - 0x0dad9534 (Size: 188 bytes, Frame: 192)
.globl __glim_Rectdv
.ent __glim_Rectdv
__glim_Rectdv:
    # Line 34
    lw	$a3,__glCurrentContext
    # Line 33
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 34
    lw	$a5,__glBeginMode
    # Line 33
    lui	$at,0x12
    addiu	$at,$at,-7184
    # Line 34
    beqz	$a5,.L0dad94f8
    # Line 33
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    sd	$a1,32($sp)
    # Line 34
    li	$v0,2
    beq	$a5,$v0,.L0dad94d4
    sd	$a4,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad94d4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,24($sp)
    ld	$a1,32($sp)
    ld	$a3,0($sp)
.L0dad94f8:
    # Line 36
    ldc1	$f16,8($a1)
    ldc1	$f15,0($a1)
    cvt.s.d	$f16,$f16
    ldc1	$f14,8($a4)
    cvt.s.d	$f15,$f15
    ldc1	$f13,0($a4)
    lw	$t9,12108($a3)
    cvt.s.d	$f14,$f14
    move	$a0,$a3
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 37
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectdv

# Function: __glim_Rectf
# Declared: Line 39 (Source lines: 40-44)
# Address: 0x0dad9534 - 0x0dad95f8 (Size: 196 bytes, Frame: 224)
.globl __glim_Rectf
.ent __glim_Rectf
__glim_Rectf:
    # Line 41
    lw	$a0,__glCurrentContext
    # Line 40
    mov.s	$f4,$f15
    mov.s	$f5,$f14
    mov.s	$f6,$f13
    mov.s	$f7,$f12
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # sd	gp,8(sp)
    # Line 41
    lw	$a2,__glBeginMode
    # Line 40
    lui	$at,0x12
    addiu	$at,$at,-7372
    # Line 41
    beqz	$a2,.L0dad95d0
    # Line 40
    nop
    sd	$ra,48($sp)
    sd	$a0,0($sp)
    sdc1	$f4,40($sp)
    sdc1	$f5,32($sp)
    sdc1	$f6,24($sp)
    # Line 41
    li	$v0,2
    beq	$a2,$v0,.L0dad95a4
    sdc1	$f7,16($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad95a4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f7,16($sp)
    ldc1	$f6,24($sp)
    ldc1	$f5,32($sp)
    ldc1	$f4,40($sp)
    ld	$a0,0($sp)
.L0dad95d0:
    # Line 43
    mov.s	$f13,$f7
    lw	$t9,12108($a0)
    mov.s	$f14,$f6
    mov.s	$f15,$f5
    jalr	$t9
    mov.s	$f16,$f4
    # Line 44
    ld	$ra,48($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_Rectf

# Function: __glim_Rectfv
# Declared: Line 46 (Source lines: 47-51)
# Address: 0x0dad95f8 - 0x0dad96a4 (Size: 172 bytes, Frame: 192)
.globl __glim_Rectfv
.ent __glim_Rectfv
__glim_Rectfv:
    # Line 48
    lw	$a3,__glCurrentContext
    # Line 47
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 48
    lw	$a5,__glBeginMode
    # Line 47
    lui	$at,0x12
    addiu	$at,$at,-7568
    # Line 48
    beqz	$a5,.L0dad9678
    # Line 47
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    sd	$a1,32($sp)
    # Line 48
    li	$v0,2
    beq	$a5,$v0,.L0dad9654
    sd	$a4,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad9654:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,24($sp)
    ld	$a1,32($sp)
    ld	$a3,0($sp)
.L0dad9678:
    # Line 50
    move	$a0,$a3
    lwc1	$f16,4($a1)
    lw	$t9,12108($a3)
    lwc1	$f15,0($a1)
    lwc1	$f14,4($a4)
    jalr	$t9
    lwc1	$f13,0($a4)
    # Line 51
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectfv

# Function: __glim_Recti
# Declared: Line 53 (Source lines: 54-58)
# Address: 0x0dad96a4 - 0x0dad977c (Size: 216 bytes, Frame: 224)
.globl __glim_Recti
.ent __glim_Recti
__glim_Recti:
    # Line 55
    lw	$a5,__glCurrentContext
    # Line 54
    move	$a6,$a0
    addiu	$sp,$sp,-96
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 55
    lw	$a7,__glBeginMode
    # Line 54
    lui	$at,0x12
    addiu	$at,$at,-7740
    # Line 55
    beqz	$a7,.L0dad9734
    # Line 54
    nop
    sd	$ra,16($sp)
    sd	$a5,0($sp)
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    sd	$a3,32($sp)
    # Line 55
    li	$v0,2
    beq	$a7,$v0,.L0dad9708
    sd	$a6,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad9708:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a6,24($sp)
    ld	$a3,32($sp)
    ld	$a1,40($sp)
    ld	$a2,48($sp)
    ld	$a5,0($sp)
.L0dad9734:
    # Line 57
    mtc1	$a3,$f16
    nop
    cvt.s.w	$f16,$f16
    mtc1	$a2,$f15
    nop
    cvt.s.w	$f15,$f15
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    lw	$t9,12108($a5)
    mtc1	$a6,$f13
    move	$a0,$a5
    jalr	$t9
    cvt.s.w	$f13,$f13
    # Line 58
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_Recti

# Function: __glim_Rectiv
# Declared: Line 60 (Source lines: 61-65)
# Address: 0x0dad977c - 0x0dad9848 (Size: 204 bytes, Frame: 192)
.globl __glim_Rectiv
.ent __glim_Rectiv
__glim_Rectiv:
    # Line 62
    lw	$a3,__glCurrentContext
    # Line 61
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 62
    lw	$a5,__glBeginMode
    # Line 61
    lui	$at,0x12
    addiu	$at,$at,-7956
    # Line 62
    beqz	$a5,.L0dad97fc
    # Line 61
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    sd	$a1,32($sp)
    # Line 62
    li	$v0,2
    beq	$a5,$v0,.L0dad97d8
    sd	$a4,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad97d8:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,24($sp)
    ld	$a1,32($sp)
    ld	$a3,0($sp)
.L0dad97fc:
    # Line 64
    lw	$v1,4($a1)
    mtc1	$v1,$f16
    lw	$v0,0($a1)
    cvt.s.w	$f16,$f16
    mtc1	$v0,$f15
    lw	$at,4($a4)
    cvt.s.w	$f15,$f15
    mtc1	$at,$f14
    lw	$ra,0($a4)
    cvt.s.w	$f14,$f14
    lw	$t9,12108($a3)
    mtc1	$ra,$f13
    move	$a0,$a3
    jalr	$t9
    cvt.s.w	$f13,$f13
    # Line 65
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectiv

# Function: __glim_Rects
# Declared: Line 67 (Source lines: 68-72)
# Address: 0x0dad9848 - 0x0dad9920 (Size: 216 bytes, Frame: 224)
.globl __glim_Rects
.ent __glim_Rects
__glim_Rects:
    # Line 69
    lw	$a5,__glCurrentContext
    # Line 68
    move	$a6,$a0
    addiu	$sp,$sp,-96
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 69
    lw	$a7,__glBeginMode
    # Line 68
    lui	$at,0x12
    addiu	$at,$at,-8160
    # Line 69
    beqz	$a7,.L0dad98d8
    # Line 68
    nop
    sd	$ra,16($sp)
    sd	$a5,0($sp)
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    sd	$a3,32($sp)
    # Line 69
    li	$v0,2
    beq	$a7,$v0,.L0dad98ac
    sd	$a6,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad98ac:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a6,24($sp)
    ld	$a3,32($sp)
    ld	$a1,40($sp)
    ld	$a2,48($sp)
    ld	$a5,0($sp)
.L0dad98d8:
    # Line 71
    mtc1	$a3,$f16
    nop
    cvt.s.w	$f16,$f16
    mtc1	$a2,$f15
    nop
    cvt.s.w	$f15,$f15
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    lw	$t9,12108($a5)
    mtc1	$a6,$f13
    move	$a0,$a5
    jalr	$t9
    cvt.s.w	$f13,$f13
    # Line 72
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_Rects

# Function: __glim_Rectsv
# Declared: Line 74 (Source lines: 75-79)
# Address: 0x0dad9920 - 0x0dad99ec (Size: 204 bytes, Frame: 192)
.globl __glim_Rectsv
.ent __glim_Rectsv
__glim_Rectsv:
    # Line 76
    lw	$a3,__glCurrentContext
    # Line 75
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 76
    lw	$a5,__glBeginMode
    # Line 75
    lui	$at,0x12
    addiu	$at,$at,-8376
    # Line 76
    beqz	$a5,.L0dad99a0
    # Line 75
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    sd	$a1,32($sp)
    # Line 76
    li	$v0,2
    beq	$a5,$v0,.L0dad997c
    sd	$a4,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad997c:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,24($sp)
    ld	$a1,32($sp)
    ld	$a3,0($sp)
.L0dad99a0:
    # Line 78
    lh	$v1,2($a1)
    mtc1	$v1,$f16
    lh	$v0,0($a1)
    cvt.s.w	$f16,$f16
    mtc1	$v0,$f15
    lh	$at,2($a4)
    cvt.s.w	$f15,$f15
    mtc1	$at,$f14
    lh	$ra,0($a4)
    cvt.s.w	$f14,$f14
    lw	$t9,12108($a3)
    mtc1	$ra,$f13
    move	$a0,$a3
    jalr	$t9
    cvt.s.w	$f13,$f13
    # Line 79
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectsv

# Function: __glRect
# Declared: Line 81 (Source lines: 83-93)
# Address: 0x0dad99ec - 0x0dad9ab4 (Size: 200 bytes, Frame: 240)
.globl __glRect
.ent __glRect
__glRect:
    # Line 83
    addiu	$sp,$sp,-112
    sd	$s1,56($sp)
    sdc1	$f24,24($sp)
    mov.s	$f24,$f16
    sdc1	$f26,8($sp)
    mov.s	$f26,$f15
    sd	$s0,32($sp)
    move	$s0,$a0
    sdc1	$f20,0($sp)
    mov.s	$f20,$f14
    # sd	gp,48(sp)
    lui	$at,0x12
    addiu	$at,$at,-8580
    # addu	gp,t9,at
    # Line 86
    lw	$t9,12064($a0)
    sdc1	$f22,16($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 83
    mov.s	$f22,$f13
    # Line 87
    lw	$s1,5580($s0)
    lw	$s1,1492($s1)
    # Line 88
    mov.s	$f12,$f22
    mov.s	$f13,$f20
    jalr	$s1
    move	$t9,$s1
    # Line 89
    mov.s	$f12,$f26
    mov.s	$f13,$f20
    jalr	$s1
    move	$t9,$s1
    # Line 90
    mov.s	$f12,$f26
    mov.s	$f13,$f24
    move	$t9,$s1
    jalr	$s1
    ldc1	$f20,0($sp)
    # Line 91
    mov.s	$f12,$f22
    mov.s	$f13,$f24
    move	$t9,$s1
    jalr	$s1
    ldc1	$f26,8($sp)
    # Line 92
    move	$a0,$s0
    lw	$t9,12076($s0)
    ldc1	$f24,24($sp)
    ldc1	$f22,16($sp)
    jalr	$t9
    ld	$s1,56($sp)
    # Line 93
    ld	$ra,40($sp)
    # ld	gp,48(sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glRect

