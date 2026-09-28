# Source: ../soft/so_rapi.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rapi.c
# Total Functions: 24

.text

# Function: __glim_RasterPos2dv
# Declared: Line 38 (Source lines: 39-45)
# Address: 0x0dad7cc8 - 0x0dad7d78 (Size: 176 bytes, Frame: 192)
.globl __glim_RasterPos2dv
.ent __glim_RasterPos2dv
__glim_RasterPos2dv:
    # Line 41
    lw	$a3,__glCurrentContext
    # Line 39
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 41
    lw	$a2,__glBeginMode
    # Line 39
    lui	$at,0x12
    addiu	$at,$at,-1120
    # Line 41
    beqz	$a2,.L0dad7d40
    # Line 39
    nop
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    # Line 41
    li	$v0,2
    beq	$a2,$v0,.L0dad7d20
    sd	$a4,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad7d20:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,32($sp)
    ld	$a3,8($sp)
.L0dad7d40:
    # Line 43
    ldc1	$f1,0($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($sp)
    ldc1	$f0,8($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($sp)
    # Line 44
    lw	$t9,12624($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 45
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2dv

# Function: __glim_RasterPos2fv
# Declared: Line 47 (Source lines: 48-52)
# Address: 0x0dad7d78 - 0x0dad7e0c (Size: 148 bytes, Frame: 48)
.globl __glim_RasterPos2fv
.ent __glim_RasterPos2fv
__glim_RasterPos2fv:
    # Line 49
    lw	$a3,__glCurrentContext
    # Line 48
    move	$a1,$a0
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 49
    lw	$a4,__glBeginMode
    # Line 48
    lui	$at,0x12
    addiu	$at,$at,-1296
    # Line 49
    beqz	$a4,.L0dad7df0
    # Line 48
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    # Line 49
    li	$v0,2
    beq	$a4,$v0,.L0dad7dd0
    sd	$a1,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad7dd0:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a1,24($sp)
    ld	$a3,0($sp)
.L0dad7df0:
    # Line 51
    lw	$t9,12624($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 52
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_RasterPos2fv

# Function: __glim_RasterPos2d
# Declared: Line 55 (Source lines: 56-62)
# Address: 0x0dad7e0c - 0x0dad7ebc (Size: 176 bytes, Frame: 192)
.globl __glim_RasterPos2d
.ent __glim_RasterPos2d
__glim_RasterPos2d:
    # Line 58
    lw	$a0,__glCurrentContext
    # Line 56
    mov.d	$f4,$f13
    mov.d	$f5,$f12
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    # sd	gp,16(sp)
    # Line 58
    lw	$a2,__glBeginMode
    # Line 56
    lui	$at,0x12
    addiu	$at,$at,-1444
    # Line 58
    beqz	$a2,.L0dad7e90
    # Line 56
    nop
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sdc1	$f4,32($sp)
    # Line 58
    li	$v0,2
    beq	$a2,$v0,.L0dad7e6c
    sdc1	$f5,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad7e6c:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    ld	$a0,8($sp)
.L0dad7e90:
    # Line 60
    cvt.s.d	$f0,$f4
    cvt.s.d	$f1,$f5
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 61
    lw	$t9,12624($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 62
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2d

# Function: __glim_RasterPos2f
# Declared: Line 64 (Source lines: 65-71)
# Address: 0x0dad7ebc - 0x0dad7f64 (Size: 168 bytes, Frame: 192)
.globl __glim_RasterPos2f
.ent __glim_RasterPos2f
__glim_RasterPos2f:
    # Line 67
    lw	$a0,__glCurrentContext
    # Line 65
    mov.s	$f4,$f13
    mov.s	$f5,$f12
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    # sd	gp,16(sp)
    # Line 67
    lw	$a2,__glBeginMode
    # Line 65
    lui	$at,0x12
    addiu	$at,$at,-1620
    # Line 67
    beqz	$a2,.L0dad7f40
    # Line 65
    nop
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sdc1	$f4,32($sp)
    # Line 67
    li	$v0,2
    beq	$a2,$v0,.L0dad7f1c
    sdc1	$f5,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad7f1c:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    ld	$a0,8($sp)
.L0dad7f40:
    # Line 69
    swc1	$f4,4($sp)
    swc1	$f5,0($sp)
    # Line 70
    lw	$t9,12624($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 71
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2f

# Function: __glim_RasterPos2i
# Declared: Line 73 (Source lines: 74-80)
# Address: 0x0dad7f64 - 0x0dad8028 (Size: 196 bytes, Frame: 192)
.globl __glim_RasterPos2i
.ent __glim_RasterPos2i
__glim_RasterPos2i:
    # Line 76
    lw	$a3,__glCurrentContext
    # Line 74
    move	$a4,$a1
    move	$a5,$a0
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 76
    lw	$a6,__glBeginMode
    # Line 74
    lui	$at,0x12
    addiu	$at,$at,-1788
    # Line 76
    beqz	$a6,.L0dad7fe8
    # Line 74
    nop
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    sd	$a4,40($sp)
    # Line 76
    li	$v0,2
    beq	$a6,$v0,.L0dad7fc4
    sd	$a5,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad7fc4:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a5,32($sp)
    ld	$a4,40($sp)
    ld	$a3,8($sp)
.L0dad7fe8:
    # Line 78
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 79
    lw	$t9,12624($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 80
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2i

# Function: __glim_RasterPos2iv
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0dad8028 - 0x0dad80e8 (Size: 192 bytes, Frame: 192)
.globl __glim_RasterPos2iv
.ent __glim_RasterPos2iv
__glim_RasterPos2iv:
    # Line 85
    lw	$a3,__glCurrentContext
    # Line 83
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 85
    lw	$a2,__glBeginMode
    # Line 83
    lui	$at,0x12
    addiu	$at,$at,-1984
    # Line 85
    beqz	$a2,.L0dad80a0
    # Line 83
    nop
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    # Line 85
    li	$v0,2
    beq	$a2,$v0,.L0dad8080
    sd	$a4,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad8080:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,32($sp)
    ld	$a3,8($sp)
.L0dad80a0:
    # Line 87
    lw	$at,0($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($sp)
    lw	$ra,4($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($sp)
    # Line 88
    lw	$t9,12624($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 89
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2iv

# Function: __glim_RasterPos2s
# Declared: Line 91 (Source lines: 92-98)
# Address: 0x0dad80e8 - 0x0dad81ac (Size: 196 bytes, Frame: 192)
.globl __glim_RasterPos2s
.ent __glim_RasterPos2s
__glim_RasterPos2s:
    # Line 94
    lw	$a3,__glCurrentContext
    # Line 92
    move	$a4,$a1
    move	$a5,$a0
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 94
    lw	$a6,__glBeginMode
    # Line 92
    lui	$at,0x12
    addiu	$at,$at,-2176
    # Line 94
    beqz	$a6,.L0dad816c
    # Line 92
    nop
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    sd	$a4,40($sp)
    # Line 94
    li	$v0,2
    beq	$a6,$v0,.L0dad8148
    sd	$a5,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad8148:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a5,32($sp)
    ld	$a4,40($sp)
    ld	$a3,8($sp)
.L0dad816c:
    # Line 96
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 97
    lw	$t9,12624($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 98
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2s

# Function: __glim_RasterPos2sv
# Declared: Line 100 (Source lines: 101-107)
# Address: 0x0dad81ac - 0x0dad826c (Size: 192 bytes, Frame: 192)
.globl __glim_RasterPos2sv
.ent __glim_RasterPos2sv
__glim_RasterPos2sv:
    # Line 103
    lw	$a3,__glCurrentContext
    # Line 101
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    # sd	gp,16(sp)
    # Line 103
    lw	$a2,__glBeginMode
    # Line 101
    lui	$at,0x12
    addiu	$at,$at,-2372
    # Line 103
    beqz	$a2,.L0dad8224
    # Line 101
    nop
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    # Line 103
    li	$v0,2
    beq	$a2,$v0,.L0dad8204
    sd	$a4,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad8204:
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,32($sp)
    ld	$a3,8($sp)
.L0dad8224:
    # Line 105
    lh	$at,0($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($sp)
    lh	$ra,2($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($sp)
    # Line 106
    lw	$t9,12624($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 107
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos2sv

# Function: __glim_RasterPos3dv
# Declared: Line 126 (Source lines: 127-133)
# Address: 0x0dad826c - 0x0dad8328 (Size: 188 bytes, Frame: 192)
.globl __glim_RasterPos3dv
.ent __glim_RasterPos3dv
__glim_RasterPos3dv:
    # Line 129
    lw	$a3,__glCurrentContext
    # Line 127
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 129
    lw	$a2,__glBeginMode
    # Line 127
    lui	$at,0x12
    addiu	$at,$at,-2564
    # Line 129
    beqz	$a2,.L0dad82e4
    # Line 127
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 129
    li	$v0,2
    beq	$a2,$v0,.L0dad82c4
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad82c4:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad82e4:
    # Line 131
    ldc1	$f2,0($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($sp)
    ldc1	$f1,8($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($sp)
    ldc1	$f0,16($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,8($sp)
    # Line 132
    lw	$t9,12628($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 133
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos3dv

# Function: __glim_RasterPos3fv
# Declared: Line 135 (Source lines: 136-140)
# Address: 0x0dad8328 - 0x0dad83bc (Size: 148 bytes, Frame: 48)
.globl __glim_RasterPos3fv
.ent __glim_RasterPos3fv
__glim_RasterPos3fv:
    # Line 137
    lw	$a3,__glCurrentContext
    # Line 136
    move	$a1,$a0
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 137
    lw	$a4,__glBeginMode
    # Line 136
    lui	$at,0x12
    addiu	$at,$at,-2752
    # Line 137
    beqz	$a4,.L0dad83a0
    # Line 136
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    # Line 137
    li	$v0,2
    beq	$a4,$v0,.L0dad8380
    sd	$a1,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad8380:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a1,24($sp)
    ld	$a3,0($sp)
.L0dad83a0:
    # Line 139
    lw	$t9,12628($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 140
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_RasterPos3fv

# Function: __glim_RasterPos3d
# Declared: Line 143 (Source lines: 144-150)
# Address: 0x0dad83bc - 0x0dad8480 (Size: 196 bytes, Frame: 224)
.globl __glim_RasterPos3d
.ent __glim_RasterPos3d
__glim_RasterPos3d:
    # Line 146
    lw	$a0,__glCurrentContext
    # Line 144
    mov.d	$f4,$f14
    mov.d	$f5,$f13
    mov.d	$f6,$f12
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    # sd	gp,24(sp)
    # Line 146
    lw	$a2,__glBeginMode
    # Line 144
    lui	$at,0x12
    addiu	$at,$at,-2900
    # Line 146
    beqz	$a2,.L0dad844c
    # Line 144
    nop
    sd	$ra,56($sp)
    sd	$a0,16($sp)
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    # Line 146
    li	$v0,2
    beq	$a2,$v0,.L0dad8424
    sdc1	$f6,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad8424:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    ld	$a0,16($sp)
.L0dad844c:
    # Line 148
    cvt.s.d	$f1,$f5
    cvt.s.d	$f0,$f4
    cvt.s.d	$f2,$f6
    swc1	$f0,8($sp)
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 149
    lw	$t9,12628($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 150
    ld	$ra,56($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_RasterPos3d

# Function: __glim_RasterPos3f
# Declared: Line 152 (Source lines: 153-159)
# Address: 0x0dad8480 - 0x0dad8538 (Size: 184 bytes, Frame: 224)
.globl __glim_RasterPos3f
.ent __glim_RasterPos3f
__glim_RasterPos3f:
    # Line 155
    lw	$a0,__glCurrentContext
    # Line 153
    mov.s	$f4,$f14
    mov.s	$f5,$f13
    mov.s	$f6,$f12
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    # sd	gp,24(sp)
    # Line 155
    lw	$a2,__glBeginMode
    # Line 153
    lui	$at,0x12
    addiu	$at,$at,-3096
    # Line 155
    beqz	$a2,.L0dad8510
    # Line 153
    nop
    sd	$ra,56($sp)
    sd	$a0,16($sp)
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    # Line 155
    li	$v0,2
    beq	$a2,$v0,.L0dad84e8
    sdc1	$f6,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad84e8:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    ld	$a0,16($sp)
.L0dad8510:
    # Line 157
    swc1	$f4,8($sp)
    swc1	$f5,4($sp)
    swc1	$f6,0($sp)
    # Line 158
    lw	$t9,12628($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 159
    ld	$ra,56($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_RasterPos3f

# Function: __glim_RasterPos3i
# Declared: Line 161 (Source lines: 162-168)
# Address: 0x0dad8538 - 0x0dad8614 (Size: 220 bytes, Frame: 224)
.globl __glim_RasterPos3i
.ent __glim_RasterPos3i
__glim_RasterPos3i:
    # Line 164
    lw	$a4,__glCurrentContext
    # Line 162
    move	$a5,$a1
    move	$a6,$a0
    addiu	$sp,$sp,-96
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 164
    lw	$a7,__glBeginMode
    # Line 162
    lui	$at,0x12
    addiu	$at,$at,-3280
    # Line 164
    beqz	$a7,.L0dad85c4
    # Line 162
    nop
    sd	$ra,32($sp)
    sd	$a4,16($sp)
    sd	$a2,56($sp)
    sd	$a5,48($sp)
    # Line 164
    li	$v0,2
    beq	$a7,$v0,.L0dad859c
    sd	$a6,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad859c:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    ld	$a2,56($sp)
    ld	$a4,16($sp)
.L0dad85c4:
    # Line 166
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f0,8($sp)
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 167
    lw	$t9,12628($a4)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a4
    # Line 168
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_RasterPos3i

# Function: __glim_RasterPos3iv
# Declared: Line 170 (Source lines: 171-177)
# Address: 0x0dad8614 - 0x0dad86e8 (Size: 212 bytes, Frame: 192)
.globl __glim_RasterPos3iv
.ent __glim_RasterPos3iv
__glim_RasterPos3iv:
    # Line 173
    lw	$a3,__glCurrentContext
    # Line 171
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 173
    lw	$a2,__glBeginMode
    # Line 171
    lui	$at,0x12
    addiu	$at,$at,-3500
    # Line 173
    beqz	$a2,.L0dad868c
    # Line 171
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 173
    li	$v0,2
    beq	$a2,$v0,.L0dad866c
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad866c:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad868c:
    # Line 175
    lw	$v0,0($a4)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lw	$at,4($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lw	$ra,8($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    # Line 176
    lw	$t9,12628($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 177
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos3iv

# Function: __glim_RasterPos3s
# Declared: Line 179 (Source lines: 180-186)
# Address: 0x0dad86e8 - 0x0dad87c4 (Size: 220 bytes, Frame: 224)
.globl __glim_RasterPos3s
.ent __glim_RasterPos3s
__glim_RasterPos3s:
    # Line 182
    lw	$a4,__glCurrentContext
    # Line 180
    move	$a5,$a1
    move	$a6,$a0
    addiu	$sp,$sp,-96
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 182
    lw	$a7,__glBeginMode
    # Line 180
    lui	$at,0x12
    addiu	$at,$at,-3712
    # Line 182
    beqz	$a7,.L0dad8774
    # Line 180
    nop
    sd	$ra,32($sp)
    sd	$a4,16($sp)
    sd	$a2,56($sp)
    sd	$a5,48($sp)
    # Line 182
    li	$v0,2
    beq	$a7,$v0,.L0dad874c
    sd	$a6,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dad874c:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    ld	$a2,56($sp)
    ld	$a4,16($sp)
.L0dad8774:
    # Line 184
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f0,8($sp)
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 185
    lw	$t9,12628($a4)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a4
    # Line 186
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glim_RasterPos3s

# Function: __glim_RasterPos3sv
# Declared: Line 188 (Source lines: 189-195)
# Address: 0x0dad87c4 - 0x0dad8898 (Size: 212 bytes, Frame: 192)
.globl __glim_RasterPos3sv
.ent __glim_RasterPos3sv
__glim_RasterPos3sv:
    # Line 191
    lw	$a3,__glCurrentContext
    # Line 189
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 191
    lw	$a2,__glBeginMode
    # Line 189
    lui	$at,0x12
    addiu	$at,$at,-3932
    # Line 191
    beqz	$a2,.L0dad883c
    # Line 189
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 191
    li	$v0,2
    beq	$a2,$v0,.L0dad881c
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad881c:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad883c:
    # Line 193
    lh	$v0,0($a4)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lh	$at,2($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lh	$ra,4($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    # Line 194
    lw	$t9,12628($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 195
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos3sv

# Function: __glim_RasterPos4dv
# Declared: Line 214 (Source lines: 215-221)
# Address: 0x0dad8898 - 0x0dad8960 (Size: 200 bytes, Frame: 192)
.globl __glim_RasterPos4dv
.ent __glim_RasterPos4dv
__glim_RasterPos4dv:
    # Line 217
    lw	$a3,__glCurrentContext
    # Line 215
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 217
    lw	$a2,__glBeginMode
    # Line 215
    lui	$at,0x12
    addiu	$at,$at,-4144
    # Line 217
    beqz	$a2,.L0dad8910
    # Line 215
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 217
    li	$v0,2
    beq	$a2,$v0,.L0dad88f0
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad88f0:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad8910:
    # Line 219
    ldc1	$f3,0($a4)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    ldc1	$f2,8($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,16($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,24($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 220
    lw	$t9,12632($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 221
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos4dv

# Function: __glim_RasterPos4fv
# Declared: Line 223 (Source lines: 224-228)
# Address: 0x0dad8960 - 0x0dad89f4 (Size: 148 bytes, Frame: 48)
.globl __glim_RasterPos4fv
.ent __glim_RasterPos4fv
__glim_RasterPos4fv:
    # Line 225
    lw	$a3,__glCurrentContext
    # Line 224
    move	$a1,$a0
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    # Line 225
    lw	$a4,__glBeginMode
    # Line 224
    lui	$at,0x12
    addiu	$at,$at,-4344
    # Line 225
    beqz	$a4,.L0dad89d8
    # Line 224
    nop
    sd	$ra,16($sp)
    sd	$a3,0($sp)
    # Line 225
    li	$v0,2
    beq	$a4,$v0,.L0dad89b8
    sd	$a1,24($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad89b8:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a1,24($sp)
    ld	$a3,0($sp)
.L0dad89d8:
    # Line 227
    lw	$t9,12632($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 228
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_RasterPos4fv

# Function: __glim_RasterPos4d
# Declared: Line 231 (Source lines: 232-238)
# Address: 0x0dad89f4 - 0x0dad8acc (Size: 216 bytes, Frame: 240)
.globl __glim_RasterPos4d
.ent __glim_RasterPos4d
__glim_RasterPos4d:
    # Line 234
    lw	$a0,__glCurrentContext
    # Line 232
    mov.d	$f4,$f15
    mov.d	$f5,$f14
    mov.d	$f6,$f13
    mov.d	$f7,$f12
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    # sd	gp,24(sp)
    # Line 234
    lw	$a2,__glBeginMode
    # Line 232
    lui	$at,0x12
    addiu	$at,$at,-4492
    # Line 234
    beqz	$a2,.L0dad8a90
    # Line 232
    nop
    sd	$ra,64($sp)
    sd	$a0,16($sp)
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    sdc1	$f6,40($sp)
    # Line 234
    li	$v0,2
    beq	$a2,$v0,.L0dad8a64
    sdc1	$f7,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dad8a64:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f7,32($sp)
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    ld	$a0,16($sp)
.L0dad8a90:
    # Line 236
    cvt.s.d	$f2,$f6
    cvt.s.d	$f1,$f5
    cvt.s.d	$f0,$f4
    cvt.s.d	$f3,$f7
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 237
    lw	$t9,12632($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 238
    ld	$ra,64($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_RasterPos4d

# Function: __glim_RasterPos4f
# Declared: Line 240 (Source lines: 241-247)
# Address: 0x0dad8acc - 0x0dad8b94 (Size: 200 bytes, Frame: 240)
.globl __glim_RasterPos4f
.ent __glim_RasterPos4f
__glim_RasterPos4f:
    # Line 243
    lw	$a0,__glCurrentContext
    # Line 241
    mov.s	$f4,$f15
    mov.s	$f5,$f14
    mov.s	$f6,$f13
    mov.s	$f7,$f12
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    # sd	gp,24(sp)
    # Line 243
    lw	$a2,__glBeginMode
    # Line 241
    lui	$at,0x12
    addiu	$at,$at,-4708
    # Line 243
    beqz	$a2,.L0dad8b68
    # Line 241
    nop
    sd	$ra,64($sp)
    sd	$a0,16($sp)
    sdc1	$f4,56($sp)
    sdc1	$f5,48($sp)
    sdc1	$f6,40($sp)
    # Line 243
    li	$v0,2
    beq	$a2,$v0,.L0dad8b3c
    sdc1	$f7,32($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dad8b3c:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ldc1	$f7,32($sp)
    ldc1	$f6,40($sp)
    ldc1	$f5,48($sp)
    ldc1	$f4,56($sp)
    ld	$a0,16($sp)
.L0dad8b68:
    # Line 245
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    swc1	$f6,4($sp)
    swc1	$f7,0($sp)
    # Line 246
    lw	$t9,12632($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 247
    ld	$ra,64($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_RasterPos4f

# Function: __glim_RasterPos4i
# Declared: Line 249 (Source lines: 250-256)
# Address: 0x0dad8b94 - 0x0dad8c88 (Size: 244 bytes, Frame: 240)
.globl __glim_RasterPos4i
.ent __glim_RasterPos4i
__glim_RasterPos4i:
    # Line 252
    lw	$a5,__glCurrentContext
    # Line 250
    move	$a6,$a1
    move	$a7,$a0
    addiu	$sp,$sp,-112
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 252
    lw	$t0,__glBeginMode
    # Line 250
    lui	$at,0x12
    addiu	$at,$at,-4908
    # Line 252
    beqz	$t0,.L0dad8c28
    # Line 250
    nop
    sd	$ra,32($sp)
    sd	$a5,16($sp)
    sd	$a2,64($sp)
    sd	$a6,56($sp)
    sd	$a3,48($sp)
    # Line 252
    li	$v0,2
    beq	$t0,$v0,.L0dad8bfc
    sd	$a7,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dad8bfc:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a7,40($sp)
    ld	$a3,48($sp)
    ld	$a6,56($sp)
    ld	$a2,64($sp)
    ld	$a5,16($sp)
.L0dad8c28:
    # Line 254
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a7,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 255
    lw	$t9,12632($a5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a5
    # Line 256
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_RasterPos4i

# Function: __glim_RasterPos4iv
# Declared: Line 258 (Source lines: 259-265)
# Address: 0x0dad8c88 - 0x0dad8d70 (Size: 232 bytes, Frame: 192)
.globl __glim_RasterPos4iv
.ent __glim_RasterPos4iv
__glim_RasterPos4iv:
    # Line 261
    lw	$a3,__glCurrentContext
    # Line 259
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 261
    lw	$a2,__glBeginMode
    # Line 259
    lui	$at,0x12
    addiu	$at,$at,-5152
    # Line 261
    beqz	$a2,.L0dad8d00
    # Line 259
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 261
    li	$v0,2
    beq	$a2,$v0,.L0dad8ce0
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad8ce0:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad8d00:
    # Line 263
    lw	$v1,0($a4)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lw	$v0,4($a4)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lw	$at,8($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lw	$ra,12($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 264
    lw	$t9,12632($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 265
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos4iv

# Function: __glim_RasterPos4s
# Declared: Line 267 (Source lines: 268-274)
# Address: 0x0dad8d70 - 0x0dad8e64 (Size: 244 bytes, Frame: 240)
.globl __glim_RasterPos4s
.ent __glim_RasterPos4s
__glim_RasterPos4s:
    # Line 270
    lw	$a5,__glCurrentContext
    # Line 268
    move	$a6,$a1
    move	$a7,$a0
    addiu	$sp,$sp,-112
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 270
    lw	$t0,__glBeginMode
    # Line 268
    lui	$at,0x12
    addiu	$at,$at,-5384
    # Line 270
    beqz	$t0,.L0dad8e04
    # Line 268
    nop
    sd	$ra,32($sp)
    sd	$a5,16($sp)
    sd	$a2,64($sp)
    sd	$a6,56($sp)
    sd	$a3,48($sp)
    # Line 270
    li	$v0,2
    beq	$t0,$v0,.L0dad8dd8
    sd	$a7,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dad8dd8:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a7,40($sp)
    ld	$a3,48($sp)
    ld	$a6,56($sp)
    ld	$a2,64($sp)
    ld	$a5,16($sp)
.L0dad8e04:
    # Line 272
    mtc1	$a6,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$a7,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 273
    lw	$t9,12632($a5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a5
    # Line 274
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_RasterPos4s

# Function: __glim_RasterPos4sv
# Declared: Line 276 (Source lines: 277-283)
# Address: 0x0dad8e64 - 0x0dad8f4c (Size: 232 bytes, Frame: 192)
.globl __glim_RasterPos4sv
.ent __glim_RasterPos4sv
__glim_RasterPos4sv:
    # Line 279
    lw	$a3,__glCurrentContext
    # Line 277
    move	$a4,$a0
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    # sd	gp,24(sp)
    # Line 279
    lw	$a2,__glBeginMode
    # Line 277
    lui	$at,0x12
    addiu	$at,$at,-5628
    # Line 279
    beqz	$a2,.L0dad8edc
    # Line 277
    nop
    sd	$ra,32($sp)
    sd	$a3,16($sp)
    # Line 279
    li	$v0,2
    beq	$a2,$v0,.L0dad8ebc
    sd	$a4,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dad8ebc:
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jalr	$t9
    nop
    sw	$zero,__glBeginMode
    ld	$a4,40($sp)
    ld	$a3,16($sp)
.L0dad8edc:
    # Line 281
    lh	$v1,0($a4)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lh	$v0,2($a4)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lh	$at,4($a4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lh	$ra,6($a4)
    mtc1	$ra,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 282
    lw	$t9,12632($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    # Line 283
    ld	$ra,32($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_RasterPos4sv

