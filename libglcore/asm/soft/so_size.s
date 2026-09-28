# Source: ../soft/so_size.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_size.c
# Total Functions: 15

.text

# Function: __glFogiv_size
# Declared: Line 19 (Source lines: 21-29)
# Address: 0x0dada0dc - 0x0dada158 (Size: 124 bytes, Frame: 0)
.globl __glFogiv_size
.ent __glFogiv_size
__glFogiv_size:
    # Line 21
    li	$at,2918
    beq	$a0,$at,.L0dada120
    li	$v0,2914
    beq	$a0,$v0,.L0dada12c
    li	$v1,2916
    beq	$a0,$v1,.L0dada134
    li	$a1,2917
    beq	$a0,$a1,.L0dada140
    li	$at,2913
    beq	$a0,$at,.L0dada14c
    li	$v0,2915
    beq	$a0,$v0,.L0dada118
    nop
    # Line 29
    jr	$ra
    li	$v0,-1
.L0dada118:
    # Line 27
    jr	$ra
    li	$v0,1
.L0dada120:
    # Line 22
    li	$v0,4
    jr	$ra
    nop
.L0dada12c:
    # Line 23
    jr	$ra
    li	$v0,1
.L0dada134:
    # Line 24
    li	$v0,1
    jr	$ra
    nop
.L0dada140:
    # Line 25
    li	$v0,1
    jr	$ra
    nop
.L0dada14c:
    # Line 26
    li	$v0,1
    jr	$ra
    nop
.end __glFogiv_size

# Function: __glFogfv_size
# Declared: Line 33 (Source lines: 34-35)
# Address: 0x0dada158 - 0x0dada18c (Size: 52 bytes, Frame: 32)
.globl __glFogfv_size
.ent __glFogfv_size
__glFogfv_size:
    # Line 34
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-10480
    # addu	gp,t9,at
    # Line 35
    # lw $t9, -27348($gp) # &__glFogiv_size
    sd	$ra,0($sp)
    bal __glFogiv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFogfv_size

# Function: __glLightfv_size
# Declared: Line 38 (Source lines: 39-52)
# Address: 0x0dada18c - 0x0dada218 (Size: 140 bytes, Frame: 0)
.globl __glLightfv_size
.ent __glLightfv_size
__glLightfv_size:
    # Line 39
    addiu	$a3,$a0,-4608
    lui	$v0,0x12
    addiu	$v0,$v0,-10532
    # addu	at,t9,v0
    # lw $t9, -32664($gp) # &sub_0dbf0000
    sltiu	$v0,$a3,10
    sll	$a3,$a3,0x2
    lui	$t9,%hi(jtbl_0dbebcd0)
    beqz	$v0,.L0dada1c0
    addu	$a3,$a3,$t9
    lw	$v1,%lo(jtbl_0dbebcd0)($a3)
    jr	$v1
    # Line 50
    li	$v0,1
.L0dada1c0:
    # Line 52
    jr	$ra
    li	$v0,-1
.L0dada1c8:
    # Line 41
    jr	$ra
    li	$v0,1
.L0dada1d0:
    # Line 42
    jr	$ra
    li	$v0,1
.L0dada1d8:
    # Line 43
    jr	$ra
    li	$v0,4
.L0dada1e0:
    # Line 44
    jr	$ra
    li	$v0,4
.L0dada1e8:
    # Line 45
    jr	$ra
    li	$v0,4
.L0dada1f0:
    # Line 46
    jr	$ra
    li	$v0,4
.L0dada1f8:
    # Line 47
    jr	$ra
    li	$v0,3
.L0dada200:
    # Line 48
    jr	$ra
    li	$v0,1
.L0dada208:
    # Line 49
    jr	$ra
    li	$v0,1
.L0dada210:
    # Line 50
    jr	$ra
    nop
.end __glLightfv_size

# Function: __glLightiv_size
# Declared: Line 56 (Source lines: 57-58)
# Address: 0x0dada218 - 0x0dada24c (Size: 52 bytes, Frame: 32)
.globl __glLightiv_size
.ent __glLightiv_size
__glLightiv_size:
    # Line 57
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-10672
    # addu	gp,t9,at
    # Line 58
    # lw $t9, -27340($gp) # &__glLightfv_size
    sd	$ra,0($sp)
    bal __glLightfv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLightiv_size

# Function: __glLightModelfv_size
# Declared: Line 62 (Source lines: 64-69)
# Address: 0x0dada24c - 0x0dada290 (Size: 68 bytes, Frame: 0)
.globl __glLightModelfv_size
.ent __glLightModelfv_size
__glLightModelfv_size:
    # Line 64
    li	$at,2899
    beq	$a0,$at,.L0dada27c
    li	$v0,2897
    beq	$a0,$v0,.L0dada288
    li	$v1,2898
    beq	$a0,$v1,.L0dada270
    # Line 69
    li	$v0,-1
    jr	$ra
    nop
.L0dada270:
    # Line 67
    li	$v0,1
    jr	$ra
    nop
.L0dada27c:
    # Line 65
    li	$v0,4
    jr	$ra
    nop
.L0dada288:
    # Line 66
    jr	$ra
    li	$v0,1
.end __glLightModelfv_size

# Function: __glLightModeliv_size
# Declared: Line 73 (Source lines: 74-75)
# Address: 0x0dada290 - 0x0dada2c4 (Size: 52 bytes, Frame: 32)
.globl __glLightModeliv_size
.ent __glLightModeliv_size
__glLightModeliv_size:
    # Line 74
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-10792
    # addu	gp,t9,at
    # Line 75
    # lw $t9, -27332($gp) # &__glLightModelfv_size
    sd	$ra,0($sp)
    bal __glLightModelfv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glLightModeliv_size

# Function: __glMaterialfv_size
# Declared: Line 78 (Source lines: 79-89)
# Address: 0x0dada2c4 - 0x0dada36c (Size: 168 bytes, Frame: 0)
.globl __glMaterialfv_size
.ent __glMaterialfv_size
__glMaterialfv_size:
    # Line 79
    sltiu	$at,$a0,5632
    bnez	$at,.L0dada2f8
    # Line 80
    sltiu	$v0,$a0,5633
    bnez	$v0,.L0dada344
    sltiu	$v1,$a0,5634
    bnez	$v1,.L0dada330
    sltiu	$a1,$a0,5635
    bnez	$a1,.L0dada358
    li	$at,5635
    bne	$a0,$at,.L0dada328
    # Line 87
    li	$v0,3
    jr	$ra
    nop
.L0dada2f8:
    # Line 80
    sltiu	$v0,$a0,4609
    bnez	$v0,.L0dada31c
    sltiu	$v1,$a0,4610
    bnez	$v1,.L0dada34c
    li	$a1,4610
    bne	$a0,$a1,.L0dada328
    # Line 85
    li	$v0,4
    jr	$ra
    nop
.L0dada31c:
    # Line 80
    li	$at,4608
    beq	$a0,$at,.L0dada364
    # Line 83
    li	$v0,4
.L0dada328:
    # Line 89
    jr	$ra
    li	$v0,-1
.L0dada330:
    # Line 80
    li	$v0,5633
    bne	$a0,$v0,.L0dada328
    nop
    # Line 81
    jr	$ra
    li	$v0,1
.L0dada344:
    # Line 82
    jr	$ra
    li	$v0,4
.L0dada34c:
    # Line 84
    li	$v0,4
    jr	$ra
    nop
.L0dada358:
    # Line 86
    li	$v0,4
    jr	$ra
    nop
.L0dada364:
    # Line 83
    jr	$ra
    nop
.end __glMaterialfv_size

# Function: __glMaterialiv_size
# Declared: Line 93 (Source lines: 94-95)
# Address: 0x0dada36c - 0x0dada3a0 (Size: 52 bytes, Frame: 32)
.globl __glMaterialiv_size
.ent __glMaterialiv_size
__glMaterialiv_size:
    # Line 94
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-11012
    # addu	gp,t9,at
    # Line 95
    # lw $t9, -27324($gp) # &__glMaterialfv_size
    sd	$ra,0($sp)
    bal __glMaterialfv_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMaterialiv_size

# Function: __glColorTableParameterfvSGI_size
# Declared: Line 101 (Source lines: 102-107)
# Address: 0x0dada3a0 - 0x0dada3c4 (Size: 36 bytes, Frame: 0)
.globl __glColorTableParameterfvSGI_size
.ent __glColorTableParameterfvSGI_size
__glColorTableParameterfvSGI_size:
    # Line 102
    li	$at,0x80d6
    beq	$a0,$at,.L0dada3bc
    li	$v0,0x80d7
    beq	$a0,$v0,.L0dada3bc
    nop
    # Line 107
    jr	$ra
    li	$v0,-1
.L0dada3bc:
    # Line 105
    jr	$ra
    li	$v0,4
.end __glColorTableParameterfvSGI_size

# Function: __glColorTableParameterivSGI_size
# Declared: Line 111 (Source lines: 112-113)
# Address: 0x0dada3c4 - 0x0dada3f8 (Size: 52 bytes, Frame: 32)
.globl __glColorTableParameterivSGI_size
.ent __glColorTableParameterivSGI_size
__glColorTableParameterivSGI_size:
    # Line 112
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-11100
    # addu	gp,t9,at
    # Line 113
    # lw $t9, -27316($gp) # &__glColorTableParameterfvSGI_size
    sd	$ra,0($sp)
    bal __glColorTableParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glColorTableParameterivSGI_size

# Function: __glSpriteParameterfvSGIX_size
# Declared: Line 117 (Source lines: 120-125)
# Address: 0x0dada3f8 - 0x0dada43c (Size: 68 bytes, Frame: 0)
.globl __glSpriteParameterfvSGIX_size
.ent __glSpriteParameterfvSGIX_size
__glSpriteParameterfvSGIX_size:
    # Line 120
    li	$at,0x8149
    beq	$a0,$at,.L0dada428
    li	$v0,0x814a
    beq	$a0,$v0,.L0dada434
    li	$v1,0x814b
    beq	$a0,$v1,.L0dada41c
    # Line 125
    li	$v0,-1
    jr	$ra
    nop
.L0dada41c:
    # Line 123
    li	$v0,3
    jr	$ra
    nop
.L0dada428:
    # Line 121
    li	$v0,1
    jr	$ra
    nop
.L0dada434:
    # Line 122
    jr	$ra
    li	$v0,3
.end __glSpriteParameterfvSGIX_size

# Function: __glSpriteParameterivSGIX_size
# Declared: Line 129 (Source lines: 130-131)
# Address: 0x0dada43c - 0x0dada470 (Size: 52 bytes, Frame: 32)
.globl __glSpriteParameterivSGIX_size
.ent __glSpriteParameterivSGIX_size
__glSpriteParameterivSGIX_size:
    # Line 130
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-11220
    # addu	gp,t9,at
    # Line 131
    # lw $t9, -27308($gp) # &__glSpriteParameterfvSGIX_size
    sd	$ra,0($sp)
    bal __glSpriteParameterfvSGIX_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSpriteParameterivSGIX_size

# Function: __glPointParameterfvSGIS_size
# Declared: Line 134 (Source lines: 137-143)
# Address: 0x0dada470 - 0x0dada4c8 (Size: 88 bytes, Frame: 0)
.globl __glPointParameterfvSGIS_size
.ent __glPointParameterfvSGIS_size
__glPointParameterfvSGIS_size:
    # Line 137
    li	$at,0x8126
    beq	$a0,$at,.L0dada4a8
    li	$v0,0x8127
    beq	$a0,$v0,.L0dada4b4
    li	$v1,0x8128
    beq	$a0,$v1,.L0dada4bc
    li	$a1,0x8129
    beq	$a0,$a1,.L0dada49c
    # Line 143
    li	$v0,-1
    jr	$ra
    nop
.L0dada49c:
    # Line 141
    li	$v0,3
    jr	$ra
    nop
.L0dada4a8:
    # Line 138
    li	$v0,1
    jr	$ra
    nop
.L0dada4b4:
    # Line 139
    jr	$ra
    li	$v0,1
.L0dada4bc:
    # Line 140
    li	$v0,1
    jr	$ra
    nop
.end __glPointParameterfvSGIS_size

# Function: __glPixelTransformParameterfvSGI_size
# Declared: Line 153 (Source lines: 154-171)
# Address: 0x0dada4c8 - 0x0dada5b4 (Size: 236 bytes, Frame: 0)
.globl __glPixelTransformParameterfvSGI_size
.ent __glPixelTransformParameterfvSGI_size
__glPixelTransformParameterfvSGI_size:
    # Line 154
    li	$a2,0x8019
    sltu	$at,$a0,$a2
    bnez	$at,.L0dada504
    # Line 155
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0dada550
    li	$a2,0x81c9
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dada538
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0dada550
    li	$at,0x81ca
    beq	$a0,$at,.L0dada550
    nop
.L0dada4fc:
    # Line 171
    jr	$ra
    li	$v0,-1
.L0dada504:
    # Line 155
    li	$a2,0x8015
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dada558
    sltu	$v1,$a2,$a0
    beqz	$v1,.L0dada570
    li	$a2,0x8018
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dada58c
    sltu	$at,$a2,$a0
    bnez	$at,.L0dada4fc
    nop
    b	.L0dada550
    nop
.L0dada538:
    li	$a2,0x801b
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0dada5a0
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0dada4fc
    nop
.L0dada550:
    # Line 164
    jr	$ra
    li	$v0,1
.L0dada558:
    # Line 155
    li	$a2,0x8014
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0dada578
    sltu	$at,$a2,$a0
    bnez	$at,.L0dada4fc
    nop
.L0dada570:
    # Line 168
    jr	$ra
    li	$v0,4
.L0dada578:
    # Line 155
    li	$v0,0x8013
    bne	$a0,$v0,.L0dada4fc
    nop
    b	.L0dada550
    nop
.L0dada58c:
    li	$v1,0x8017
    bne	$a0,$v1,.L0dada4fc
    nop
    b	.L0dada550
    nop
.L0dada5a0:
    li	$a1,0x801a
    bne	$a0,$a1,.L0dada4fc
    nop
    b	.L0dada550
    nop
.end __glPixelTransformParameterfvSGI_size

# Function: __glPixelTransformParameterivSGI_size
# Declared: Line 175 (Source lines: 176-177)
# Address: 0x0dada5b4 - 0x0dada5e8 (Size: 52 bytes, Frame: 32)
.globl __glPixelTransformParameterivSGI_size
.ent __glPixelTransformParameterivSGI_size
__glPixelTransformParameterivSGI_size:
    # Line 176
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-11596
    # addu	gp,t9,at
    # Line 177
    # lw $t9, -27296($gp) # &__glPixelTransformParameterfvSGI_size
    sd	$ra,0($sp)
    bal __glPixelTransformParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPixelTransformParameterivSGI_size

.late_rodata
jtbl_0dbebcd0:
    .word .L0dada1d8
    .word .L0dada1e0
    .word .L0dada1e8
    .word .L0dada1f0
    .word .L0dada1f8
    .word .L0dada1c8
    .word .L0dada1d0
    .word .L0dada200
    .word .L0dada208
    .word .L0dada210

