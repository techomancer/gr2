# Source: ../EXPRESS/gr2_raster.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_raster.c
# Total Functions: 11

.text

# Function: __glExpPassDrawBuffer
# Declared: Line 29 (Source lines: 30-33)
# Address: 0x0da66cd4 - 0x0da66d1c (Size: 72 bytes, Frame: 48)
.globl __glExpPassDrawBuffer
.ent __glExpPassDrawBuffer
__glExpPassDrawBuffer:
    # Line 30
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,2964
    # addu	gp,t9,at
    # Line 31
    # lw $t9, -32400($gp) # &__glExpSetPixWritemask
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glExpSetPixWritemask
    # Line 30
    move	$s8,$a0
    # Line 32
    # lw $t9, -32396($gp) # &__glExpSetReadSource
    jal	__glExpSetReadSource
    move	$a0,$s8
    # Line 33
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpPassDrawBuffer

# Function: __glExpPassColorMask
# Declared: Line 35 (Source lines: 36-38)
# Address: 0x0da66d1c - 0x0da66d50 (Size: 52 bytes, Frame: 32)
.globl __glExpPassColorMask
.ent __glExpPassColorMask
__glExpPassColorMask:
    # Line 36
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,2892
    # addu	gp,t9,at
    # Line 37
    # lw $t9, -32400($gp) # &__glExpSetPixWritemask
    sd	$ra,0($sp)
    jal	__glExpSetPixWritemask
    nop
    # Line 38
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpPassColorMask

# Function: __glExpPassIndexMask
# Declared: Line 40 (Source lines: 41-43)
# Address: 0x0da66d50 - 0x0da66d84 (Size: 52 bytes, Frame: 32)
.globl __glExpPassIndexMask
.ent __glExpPassIndexMask
__glExpPassIndexMask:
    # Line 41
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,2840
    # addu	gp,t9,at
    # Line 42
    # lw $t9, -32400($gp) # &__glExpSetPixWritemask
    sd	$ra,0($sp)
    jal	__glExpSetPixWritemask
    nop
    # Line 43
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpPassIndexMask

# Function: __glExpEnableDither
# Declared: Line 45 (Source lines: 49-50)
# Address: 0x0da66d84 - 0x0da66da0 (Size: 28 bytes, Frame: 0)
.globl __glExpEnableDither
.ent __glExpEnableDither
__glExpEnableDither:
    # Line 49
    lw	$at,1696($a0)
    lui	$v0,0x4
    ori	$v0,$v0,0x2044
    andi	$at,$at,0x8
    sltu	$at,$zero,$at
    # Line 50
    jr	$ra
    # Line 49
    sw	$at,0($v0)
.end __glExpEnableDither

# Function: __glExpPassBlendFunc
# Declared: Line 52 (Source lines: 59-163)
# Address: 0x0da66da0 - 0x0da67020 (Size: 640 bytes, Frame: 0)
.globl __glExpPassBlendFunc
.ent __glExpPassBlendFunc
__glExpPassBlendFunc:
    # Line 59
    lbu	$at,3104($a0)
    # Line 79
    move	$a4,$zero
    # Line 62
    li	$v1,0x8007
    # Line 59
    beqz	$at,.L0da66fbc
    lw	$a2,1736($a0)
    # Line 62
    lw	$v0,1696($a0)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0da66df8
    # Line 70
    li	$at,0x800a
    # Line 62
    beq	$a2,$v1,.L0da66df8
    # Line 70
    li	$v0,0x800b
    li	$a1,0x8008
    beql	$a2,$a1,.L0da66dfc
    move	$a2,$zero
    beql	$a2,$at,.L0da66dfc
    move	$a2,$zero
    beq	$a2,$v0,.L0da66df8
    li	$v1,3057
    beq	$a2,$v1,.L0da66dfc
    move	$a2,$zero
    b	.L0da66dfc
    li	$a2,1
.L0da66df8:
    move	$a2,$zero
.L0da66dfc:
    beqz	$a2,.L0da66fc4
    # Line 153
    move	$a6,$zero
    # Line 77
    lw	$a3,1728($a0)
    li	$a7,770
    li	$a1,1
    beq	$a3,$a1,.L0da66f68
    li	$a2,1
.L0da66e18:
    beq	$a7,$a3,.L0da66f7c
    move	$a6,$a2
.L0da66e20:
    # Line 79
    move	$a5,$a4
    # Line 81
    sltiu	$at,$a3,774
    bnez	$at,.L0da66e60
    move	$a2,$a3
    sltiu	$v0,$a2,775
    bnez	$v0,.L0da66e7c
    li	$v1,0x8002
    sltu	$v1,$a2,$v1
    beqz	$v1,.L0da66f14
    sltiu	$a1,$a2,776
    bnez	$a1,.L0da66f08
    sltiu	$at,$a2,777
    beqz	$at,.L0da66f14
    nop
    # Line 108
    b	.L0da66e80
    # Line 107
    move	$a3,$zero
.L0da66e60:
    # Line 81
    sltiu	$v0,$a2,771
    bnez	$v0,.L0da66ee8
    sltiu	$v1,$a2,772
    beqz	$v1,.L0da66f94
    sltiu	$at,$a2,773
    # Line 99
    b	.L0da66e80
    # Line 98
    li	$a3,5
.L0da66e7c:
    # Line 89
    li	$a3,2
.L0da66e80:
    # Line 118
    lw	$a2,1732($a0)
    sltiu	$a1,$a2,772
    bnez	$a1,.L0da66ebc
    sltiu	$at,$a2,773
    beqz	$at,.L0da66f3c
    # Line 138
    li	$a0,1
.L0da66e98:
    # Line 160
    lui	$v0,0x4
    ori	$v0,$v0,0x2094
    # Line 159
    lui	$v1,0x4
    ori	$v1,$v1,0x2098
    sw	$a5,0($v1)
    # Line 160
    sw	$a6,0($v0)
    # Line 161
    sw	$a3,0($v0)
    # Line 163
    jr	$ra
    # Line 162
    sw	$a0,0($v0)
.L0da66ebc:
    # Line 118
    sltiu	$v1,$a2,769
    bnez	$v1,.L0da66f1c
    sltiu	$a1,$a2,770
    bnez	$a1,.L0da66fb4
    sltiu	$at,$a2,771
    bnez	$at,.L0da66ff8
    sltiu	$v0,$a2,772
    beqz	$v0,.L0da66f34
    nop
    # Line 136
    b	.L0da66e98
    # Line 135
    li	$a0,5
.L0da66ee8:
    # Line 81
    beqz	$a2,.L0da66fac
    sltiu	$v1,$a2,2
    bnez	$v1,.L0da66fe8
    nop
    bne	$a7,$a2,.L0da66f14
    nop
    # Line 96
    b	.L0da66e80
    # Line 95
    li	$a3,4
.L0da66f08:
    # Line 81
    li	$a1,775
    beq	$a2,$a1,.L0da67018
    nop
.L0da66f14:
    # Line 116
    jr	$ra
    nop
.L0da66f1c:
    # Line 118
    beqz	$a2,.L0da66ff0
    sltiu	$at,$a2,2
    bnez	$at,.L0da67008
    li	$v0,768
    beq	$a2,$v0,.L0da67010
    nop
.L0da66f34:
    # Line 150
    jr	$ra
    nop
.L0da66f3c:
    # Line 118
    li	$v1,0x8002
    sltu	$v1,$a2,$v1
    beqz	$v1,.L0da66f34
    li	$a0,0x8001
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0da66f34
    li	$at,773
    bne	$a2,$at,.L0da66f34
    nop
    # Line 142
    b	.L0da66e98
    # Line 141
    move	$a0,$zero
.L0da66f68:
    # Line 77
    lw	$v0,1732($a0)
    bnez	$v0,.L0da66e18
    li	$a2,1
    b	.L0da66e18
    move	$a2,$zero
.L0da66f7c:
    lw	$v1,1732($a0)
    li	$a1,771
    bne	$v1,$a1,.L0da66e20
    nop
    # Line 79
    b	.L0da66e20
    li	$a4,1
.L0da66f94:
    # Line 81
    bnez	$at,.L0da66fd4
    sltiu	$v0,$a2,774
    beqz	$v0,.L0da66f14
    nop
    # Line 105
    b	.L0da66e80
    # Line 104
    move	$a3,$zero
.L0da66fac:
    # Line 84
    b	.L0da66e80
    # Line 83
    move	$a3,$zero
.L0da66fb4:
    # Line 130
    b	.L0da66e98
    # Line 129
    li	$a0,3
.L0da66fbc:
    # Line 62
    jr	$ra
    nop
.L0da66fc4:
    # Line 154
    move	$a5,$zero
    # Line 155
    li	$a3,1
    b	.L0da66e98
    # Line 156
    move	$a0,$zero
.L0da66fd4:
    # Line 81
    li	$v1,772
    bne	$a2,$v1,.L0da66f14
    nop
    # Line 102
    b	.L0da66e80
    # Line 101
    li	$a3,1
.L0da66fe8:
    # Line 87
    b	.L0da66e80
    # Line 86
    li	$a3,1
.L0da66ff0:
    # Line 121
    b	.L0da66e98
    # Line 120
    move	$a0,$zero
.L0da66ff8:
    # Line 118
    bne	$a7,$a2,.L0da66f34
    nop
    # Line 133
    b	.L0da66e98
    # Line 132
    li	$a0,4
.L0da67008:
    # Line 124
    b	.L0da66e98
    # Line 123
    li	$a0,1
.L0da67010:
    # Line 127
    b	.L0da66e98
    # Line 126
    li	$a0,2
.L0da67018:
    # Line 93
    b	.L0da66e80
    # Line 92
    li	$a3,3
.end __glExpPassBlendFunc

# Function: __glExpEnableBlendFunc
# Declared: Line 165 (Source lines: 166-174)
# Address: 0x0da67020 - 0x0da67068 (Size: 72 bytes, Frame: 48)
.globl __glExpEnableBlendFunc
.ent __glExpEnableBlendFunc
__glExpEnableBlendFunc:
    # Line 166
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,2120
    # addu	gp,t9,at
    # Line 167
    # lw $t9, -31808($gp) # &__glExpPassBlendFunc
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glExpPassBlendFunc
    # Line 166
    move	$s8,$a0
    # Line 173
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    bal __glExpPassLogicOp
    move	$a0,$s8
    # Line 174
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpEnableBlendFunc

# Function: __glExpPassLogicOp
# Declared: Line 176 (Source lines: 182-195)
# Address: 0x0da67068 - 0x0da670d0 (Size: 104 bytes, Frame: 0)
.globl __glExpPassLogicOp
.ent __glExpPassLogicOp
__glExpPassLogicOp:
    # Line 182
    lw	$a2,1696($a0)
    andi	$at,$a2,0x4
    bnez	$at,.L0da670b8
    lui	$a1,0x8
    lw	$v0,1700($a0)
    andi	$at,$a2,0x2
    andi	$v0,$v0,0x800
    bnez	$v0,.L0da670b8
    # Line 191
    li	$a2,3
    # Line 182
    lw	$v1,30440($a0)
    and	$v1,$v1,$a1
    beqz	$v1,.L0da670b0
    nop
    beqz	$at,.L0da670b0
    li	$v1,3057
    lw	$v0,1736($a0)
    beql	$v0,$v1,.L0da670bc
    # Line 189
    lw	$a2,1756($a0)
.L0da670b0:
    b	.L0da670c4
    # Line 194
    lui	$at,0x4
.L0da670b8:
    # Line 189
    lw	$a2,1756($a0)
.L0da670bc:
    andi	$a2,$a2,0xf
    # Line 194
    lui	$at,0x4
.L0da670c4:
    ori	$at,$at,0x2068
    # Line 195
    jr	$ra
    # Line 194
    sw	$a2,0($at)
.end __glExpPassLogicOp

# Function: __glExpEnableLogicOp
# Declared: Line 197 (Source lines: 198-200)
# Address: 0x0da670d0 - 0x0da67104 (Size: 52 bytes, Frame: 32)
.globl __glExpEnableLogicOp
.ent __glExpEnableLogicOp
__glExpEnableLogicOp:
    # Line 198
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,1944
    # addu	gp,t9,at
    # Line 199
    # lw $t9, -31800($gp) # &__glExpPassLogicOp
    sd	$ra,0($sp)
    bal __glExpPassLogicOp
    nop
    # Line 200
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpEnableLogicOp

# Function: __glExpEnableLineSmooth
# Declared: Line 202 (Source lines: 203-214)
# Address: 0x0da67104 - 0x0da67164 (Size: 96 bytes, Frame: 0)
.globl __glExpEnableLineSmooth
.ent __glExpEnableLineSmooth
__glExpEnableLineSmooth:
    # Line 203
    lw	$v0,1696($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,1892
    andi	$v0,$v0,0x200
    beqz	$v0,.L0da67150
    nop
    lwc1	$f0,448($a0)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    # Line 210
    lui	$v1,0x4
    # Line 203
    bc1f	.L0da67150
    # Line 210
    li	$v0,1
    # Line 206
    lw	$a1,1804($a0)
    li	$a2,4354
    beq	$a1,$a2,.L0da67150
    # Line 210
    ori	$v1,$v1,0x2088
    # Line 214
    jr	$ra
    # Line 210
    sw	$v0,0($v1)
.L0da67150:
    # Line 212
    lui	$a1,0x4
    ori	$a1,$a1,0x2088
    sw	$zero,0($a1)
    # Line 214
    jr	$ra
    nop
.end __glExpEnableLineSmooth

# Function: __glExpEnablePointSmooth
# Declared: Line 216 (Source lines: 217-228)
# Address: 0x0da67164 - 0x0da671c4 (Size: 96 bytes, Frame: 0)
.globl __glExpEnablePointSmooth
.ent __glExpEnablePointSmooth
__glExpEnablePointSmooth:
    # Line 217
    lw	$v0,1696($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,1796
    andi	$v0,$v0,0x400
    beqz	$v0,.L0da671b0
    nop
    lwc1	$f0,436($a0)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    # Line 224
    lui	$v1,0x4
    # Line 217
    bc1f	.L0da671b0
    # Line 224
    li	$v0,1
    # Line 220
    lw	$a1,1800($a0)
    li	$a2,4354
    beq	$a1,$a2,.L0da671b0
    # Line 224
    ori	$v1,$v1,0x2084
    # Line 228
    jr	$ra
    # Line 224
    sw	$v0,0($v1)
.L0da671b0:
    # Line 226
    lui	$a1,0x4
    ori	$a1,$a1,0x2084
    sw	$zero,0($a1)
    # Line 228
    jr	$ra
    nop
.end __glExpEnablePointSmooth

# Function: __glExpPassShadeModel
# Declared: Line 230 (Source lines: 234-244)
# Address: 0x0da671c4 - 0x0da67204 (Size: 64 bytes, Frame: 0)
.globl __glExpPassShadeModel
.ent __glExpPassShadeModel
__glExpPassShadeModel:
    # Line 234
    lw	$a2,1304($a0)
    li	$at,7424
    beq	$a2,$at,.L0da671f4
    li	$v0,7425
    # Line 239
    lui	$a0,0x4
    # Line 234
    beq	$a2,$v0,.L0da671e8
    # Line 239
    li	$v1,1
    # Line 244
    jr	$ra
    nop
.L0da671e8:
    # Line 239
    ori	$a0,$a0,0x204c
    # Line 244
    jr	$ra
    # Line 239
    sw	$v1,0($a0)
.L0da671f4:
    # Line 236
    lui	$at,0x4
    ori	$at,$at,0x204c
    # Line 244
    jr	$ra
    # Line 236
    sw	$zero,0($at)
.end __glExpPassShadeModel

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

