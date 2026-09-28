# Source: ../pixel/px_read.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_read.c
# Total Functions: 10

.text

# Function: __glSpanReadRGBA
# Declared: Line 34 (Source lines: 36-59)
# Address: 0x0da80788 - 0x0da80848 (Size: 192 bytes, Frame: 240)
.globl __glSpanReadRGBA
.ent __glSpanReadRGBA
__glSpanReadRGBA:
    # Line 36
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,0($sp)
    # Line 46
    lw	$s2,312($a1)
    sd	$s0,32($sp)
    # Line 36
    move	$s0,$a2
    sd	$s6,16($sp)
    move	$s6,$a0
    sd	$s3,8($sp)
    # Line 51
    move	$s3,$zero
    # sd	gp,56(sp)
    sd	$s5,48($sp)
    # Line 49
    lwc1	$f1,188($a1)
    sd	$s1,40($sp)
    # Line 48
    lwc1	$f0,192($a1)
    # Line 49
    trunc.w.s	$f1,$f1
    # Line 36
    lui	$at,0x17
    addiu	$at,$at,28896
    # Line 48
    trunc.w.s	$f0,$f0
    sd	$s4,24($sp)
    # Line 44
    lw	$s4,180($a1)
    # Line 49
    mfc1	$s1,$f1
    # Line 48
    mfc1	$s5,$f0
    # Line 51
    blez	$s4,.L0da80820
    # Line 36
    nop
.L0da807ec:
    # Line 52
    move	$a2,$s5
    move	$a1,$s1
    # Line 56
    addiu	$s2,$s2,2
    # Line 52
    lw	$t9,30840($s6)
    move	$a3,$s0
    # Line 55
    addiu	$s0,$s0,16
    # Line 52
    jalr	$t9
    lw	$a0,11772($s6)
    # Line 51
    addiu	$s3,$s3,1
    # Line 57
    lh	$v0,-2($s2)
    # Line 51
    bne	$s4,$s3,.L0da807ec
    # Line 57
    addu	$s1,$v0,$s1
    ld	$ra,64($sp)
.L0da80820:
    # ld	gp,56(sp)
    # Line 59
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanReadRGBA

# Function: __glSpanReadRGBA2
# Declared: Line 67 (Source lines: 69-82)
# Address: 0x0da80848 - 0x0da8089c (Size: 84 bytes, Frame: 48)
.globl __glSpanReadRGBA2
.ent __glSpanReadRGBA2
__glSpanReadRGBA2:
    # Line 80
    lw	$a4,168($a1)
    # Line 69
    move	$a3,$a2
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 80
    lwc1	$f1,192($a1)
    # sd	gp,8(sp)
    lwc1	$f0,188($a1)
    trunc.w.s	$f1,$f1
    # Line 69
    lui	$at,0x17
    addiu	$at,$at,28704
    # Line 80
    trunc.w.s	$f0,$f0
    # Line 69
    # addu	gp,t9,at
    # Line 80
    lw	$t9,30844($a0)
    mfc1	$a2,$f1
    mfc1	$a1,$f0
    jalr	$t9
    lw	$a0,11772($a0)
    # Line 82
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanReadRGBA2

# Function: __glSpanReadCI
# Declared: Line 89 (Source lines: 91-113)
# Address: 0x0da8089c - 0x0da8095c (Size: 192 bytes, Frame: 240)
.globl __glSpanReadCI
.ent __glSpanReadCI
__glSpanReadCI:
    # Line 91
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,0($sp)
    # Line 101
    lw	$s2,312($a1)
    sd	$s0,32($sp)
    # Line 91
    move	$s0,$a2
    sd	$s6,16($sp)
    move	$s6,$a0
    sd	$s3,8($sp)
    # Line 106
    move	$s3,$zero
    # sd	gp,56(sp)
    sd	$s5,48($sp)
    # Line 104
    lwc1	$f1,188($a1)
    sd	$s1,40($sp)
    # Line 103
    lwc1	$f0,192($a1)
    # Line 104
    trunc.w.s	$f1,$f1
    # Line 91
    lui	$at,0x17
    addiu	$at,$at,28620
    # Line 103
    trunc.w.s	$f0,$f0
    sd	$s4,24($sp)
    # Line 99
    lw	$s4,180($a1)
    # Line 104
    mfc1	$s1,$f1
    # Line 103
    mfc1	$s5,$f0
    # Line 106
    blez	$s4,.L0da80934
    # Line 91
    nop
.L0da80900:
    # Line 107
    move	$a2,$s5
    move	$a1,$s1
    # Line 110
    addiu	$s2,$s2,2
    # Line 107
    lw	$t9,30840($s6)
    move	$a3,$s0
    # Line 109
    addiu	$s0,$s0,4
    # Line 107
    jalr	$t9
    lw	$a0,11772($s6)
    # Line 106
    addiu	$s3,$s3,1
    # Line 111
    lh	$v0,-2($s2)
    # Line 106
    bne	$s4,$s3,.L0da80900
    # Line 111
    addu	$s1,$v0,$s1
    ld	$ra,64($sp)
.L0da80934:
    # ld	gp,56(sp)
    # Line 113
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanReadCI

# Function: __glSpanReadCI2
# Declared: Line 121 (Source lines: 123-141)
# Address: 0x0da8095c - 0x0da80a0c (Size: 176 bytes, Frame: 224)
.globl __glSpanReadCI2
.ent __glSpanReadCI2
__glSpanReadCI2:
    # Line 123
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s3,8($sp)
    move	$s3,$a0
    sd	$s2,0($sp)
    # Line 135
    move	$s2,$zero
    # sd	gp,48(sp)
    sd	$s4,16($sp)
    # Line 133
    lwc1	$f1,188($a1)
    sd	$s0,24($sp)
    # Line 132
    lwc1	$f0,192($a1)
    # Line 133
    trunc.w.s	$f1,$f1
    # Line 123
    lui	$at,0x17
    addiu	$at,$at,28428
    # Line 132
    trunc.w.s	$f0,$f0
    sd	$s5,40($sp)
    # Line 129
    lw	$s5,168($a1)
    # Line 133
    mfc1	$s0,$f1
    # Line 132
    mfc1	$s4,$f0
    # Line 135
    blez	$s5,.L0da809e8
    # Line 123
    nop
    # Line 136
    move	$a2,$s4
.L0da809bc:
    move	$a1,$s0
    # Line 139
    addiu	$s0,$s0,1
    # Line 136
    lw	$t9,30840($s3)
    # Line 135
    addiu	$s2,$s2,1
    # Line 136
    move	$a3,$s1
    jalr	$t9
    lw	$a0,11772($s3)
    # Line 138
    addiu	$s1,$s1,4
    # Line 135
    bne	$s5,$s2,.L0da809bc
    # Line 136
    move	$a2,$s4
    ld	$ra,56($sp)
.L0da809e8:
    # ld	gp,48(sp)
    # Line 141
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanReadCI2

# Function: __glSpanReadDepth
# Declared: Line 148 (Source lines: 150-174)
# Address: 0x0da80a0c - 0x0da80bb4 (Size: 424 bytes, Frame: 128)
.globl __glSpanReadDepth
.ent __glSpanReadDepth
__glSpanReadDepth:
    # Line 150
    addiu	$sp,$sp,-128
    sd	$s6,88($sp)
    sd	$s2,8($sp)
    # Line 161
    lw	$s2,312($a1)
    sd	$s1,48($sp)
    # Line 150
    move	$s1,$a2
    sd	$s4,24($sp)
    # Line 167
    move	$s4,$zero
    sd	$s3,16($sp)
    # Line 150
    move	$s3,$a0
    # Line 165
    lw	$v0,31308($a0)
    sd	$s5,56($sp)
    sd	$s0,40($sp)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # sd	gp,64(sp)
    # Line 150
    lui	$at,0x17
    # Line 165
    cvt.s.l	$f0,$f0
    # Line 150
    addiu	$at,$at,28252
    # addu	gp,t9,at
    # Line 164
    lwc1	$f2,188($a1)
    sd	$s7,32($sp)
    # Line 163
    lwc1	$f1,192($a1)
    # Line 164
    trunc.w.s	$f2,$f2
    # Line 159
    lw	$s7,180($a1)
    sdc1	$f30,0($sp)
    # Line 163
    trunc.w.s	$f1,$f1
    # Line 165
    lwc1	$f30,3284($a0)
    andi	$v1,$s7,0x1
    # Line 164
    mfc1	$s0,$f2
    # Line 163
    mfc1	$s5,$f1
    # Line 167
    blez	$s7,.L0da80b88
    # Line 165
    div.s	$f30,$f30,$f0
    # Line 167
    move	$a0,$s7
    beqz	$v1,.L0da80af4
    addiu	$s6,$s3,31232
    # Line 168
    move	$a2,$s5
    move	$a1,$s0
    sd	$a0,72($sp)
    lw	$t9,31360($s3)
    move	$a0,$s6
    sd	$ra,80($sp)
    jalr	$t9
    addiu	$s1,$s1,4
    # Line 167
    addiu	$s4,$s4,1
    # Line 168
    dsll32	$a3,$v0,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f30
    swc1	$f1,-4($s1)
    # Line 172
    lh	$a0,0($s2)
    # Line 171
    addiu	$s2,$s2,2
    ld	$ra,80($sp)
    # Line 172
    addu	$s0,$a0,$s0
    ld	$a0,72($sp)
.L0da80af4:
    sra	$at,$a0,0x1
    beqz	$at,.L0da80b80
    sd	$ra,80($sp)
.L0da80b00:
    # Line 168
    move	$a0,$s6
    lw	$t9,31360($s3)
    move	$a1,$s0
    # Line 171
    addiu	$s2,$s2,4
    # Line 168
    jalr	$t9
    move	$a2,$s5
    # Line 167
    addiu	$s4,$s4,2
    # Line 168
    dsll32	$v1,$v0,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f30
    addiu	$s1,$s1,8
    swc1	$f2,-8($s1)
    move	$a2,$s5
    # Line 172
    lh	$v0,-4($s2)
    # Line 168
    lw	$t9,31360($s3)
    move	$a0,$s6
    # Line 172
    addu	$s0,$v0,$s0
    # Line 168
    jalr	$t9
    move	$a1,$s0
    dsll32	$a4,$v0,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f30
    swc1	$f3,-4($s1)
    # Line 172
    lh	$a3,-2($s2)
    # Line 167
    bne	$s7,$s4,.L0da80b00
    # Line 172
    addu	$s0,$a3,$s0
.L0da80b80:
    ld	$ra,80($sp)
    ld	$s6,88($sp)
.L0da80b88:
    # ld	gp,64(sp)
    # Line 174
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    ld	$s5,56($sp)
    ld	$s7,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanReadDepth

# Function: __glSpanReadDepth2
# Declared: Line 182 (Source lines: 184-204)
# Address: 0x0da80bb4 - 0x0da80d3c (Size: 392 bytes, Frame: 128)
.globl __glSpanReadDepth2
.ent __glSpanReadDepth2
__glSpanReadDepth2:
    # Line 184
    addiu	$sp,$sp,-128
    sd	$s5,72($sp)
    sd	$s1,40($sp)
    move	$s1,$a2
    sd	$s3,16($sp)
    # Line 198
    move	$s3,$zero
    sd	$s2,8($sp)
    # Line 184
    move	$s2,$a0
    # Line 196
    lw	$v0,31308($a0)
    sd	$s4,32($sp)
    sd	$s0,48($sp)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # sd	gp,56(sp)
    # Line 184
    lui	$at,0x17
    # Line 196
    cvt.s.l	$f0,$f0
    # Line 184
    addiu	$at,$at,27828
    # addu	gp,t9,at
    # Line 195
    lwc1	$f2,188($a1)
    sd	$s6,24($sp)
    # Line 194
    lwc1	$f1,192($a1)
    # Line 195
    trunc.w.s	$f2,$f2
    # Line 191
    lw	$s6,168($a1)
    sdc1	$f30,0($sp)
    # Line 194
    trunc.w.s	$f1,$f1
    # Line 196
    lwc1	$f30,3284($a0)
    andi	$v1,$s6,0x1
    # Line 195
    mfc1	$s0,$f2
    # Line 194
    mfc1	$s4,$f1
    # Line 198
    blez	$s6,.L0da80d14
    # Line 196
    div.s	$f30,$f30,$f0
    # Line 198
    move	$a0,$s6
    beqz	$v1,.L0da80c8c
    addiu	$s5,$s2,31232
    # Line 199
    move	$a2,$s4
    sd	$a0,64($sp)
    move	$a0,$s5
    move	$a1,$s0
    lw	$t9,31360($s2)
    # Line 202
    addiu	$s0,$s0,1
    sd	$ra,80($sp)
    # Line 199
    jalr	$t9
    addiu	$s1,$s1,4
    dsll32	$a0,$v0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f30
    # Line 198
    addiu	$s3,$s3,1
    ld	$ra,80($sp)
    ld	$a0,64($sp)
    # Line 199
    swc1	$f1,-4($s1)
.L0da80c8c:
    sra	$a3,$a0,0x1
    beqz	$a3,.L0da80d0c
    sd	$ra,80($sp)
.L0da80c98:
    move	$a0,$s5
    lw	$t9,31360($s2)
    move	$a1,$s0
    # Line 202
    addiu	$s0,$s0,1
    # Line 199
    jalr	$t9
    move	$a2,$s4
    dsll32	$a4,$v0,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f30
    # Line 198
    addiu	$s3,$s3,2
    # Line 199
    swc1	$f2,0($s1)
    move	$a2,$s4
    lw	$t9,31360($s2)
    move	$a0,$s5
    addiu	$s1,$s1,8
    jalr	$t9
    move	$a1,$s0
    dsll32	$at,$v0,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f30
    # Line 202
    addiu	$s0,$s0,1
    # Line 198
    bne	$s6,$s3,.L0da80c98
    # Line 199
    swc1	$f3,-4($s1)
.L0da80d0c:
    ld	$s5,72($sp)
    ld	$ra,80($sp)
.L0da80d14:
    # ld	gp,56(sp)
    # Line 204
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s4,32($sp)
    ld	$s6,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanReadDepth2

# Function: __glSpanReadDepthUint1
# Declared: Line 211 (Source lines: 213-237)
# Address: 0x0da80d3c - 0x0da80e28 (Size: 236 bytes, Frame: 128)
.globl __glSpanReadDepthUint1
.ent __glSpanReadDepthUint1
__glSpanReadDepthUint1:
    # Line 213
    addiu	$sp,$sp,-128
    sd	$s8,72($sp)
    sd	$s2,0($sp)
    # Line 225
    lw	$s2,312($a1)
    sd	$s0,32($sp)
    # Line 213
    move	$s0,$a2
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s3,8($sp)
    sd	$s1,40($sp)
    sd	$s6,16($sp)
    # Line 220
    li	$s6,32
    sd	$s5,48($sp)
    sd	$s7,56($sp)
    lw	$s7,31244($a0)
    # sd	gp,64(sp)
    # Line 213
    lui	$at,0x17
    addiu	$at,$at,27436
    # Line 228
    lwc1	$f1,188($a1)
    # Line 213
    # addu	gp,t9,at
    # Line 227
    lwc1	$f0,192($a1)
    # Line 228
    trunc.w.s	$f1,$f1
    # Line 220
    lw	$t9,31320($a0)
    # Line 223
    lw	$s5,180($a1)
    # Line 227
    trunc.w.s	$f0,$f0
    # Line 220
    addu	$s7,$s7,$t9
    subu	$s6,$s6,$s7
    # Line 228
    mfc1	$s1,$f1
    # Line 227
    mfc1	$s7,$f0
    # Line 230
    blez	$s5,.L0da80dfc
    move	$s3,$zero
    sd	$ra,80($sp)
    addiu	$s8,$s4,31232
.L0da80dc0:
    # Line 231
    move	$a2,$s7
    move	$a1,$s1
    lw	$t9,31360($s4)
    move	$a0,$s8
    # Line 230
    addiu	$s3,$s3,1
    # Line 231
    jalr	$t9
    addiu	$s0,$s0,4
    sllv	$v1,$v0,$s6
    sw	$v1,-4($s0)
    # Line 235
    lh	$v0,0($s2)
    # Line 234
    addiu	$s2,$s2,2
    # Line 230
    bne	$s5,$s3,.L0da80dc0
    # Line 235
    addu	$s1,$v0,$s1
    ld	$s8,72($sp)
    ld	$ra,80($sp)
.L0da80dfc:
    # ld	gp,64(sp)
    # Line 237
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    ld	$s7,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanReadDepthUint1

# Function: __glSpanReadDepthUint
# Declared: Line 245 (Source lines: 247-267)
# Address: 0x0da80e28 - 0x0da80f00 (Size: 216 bytes, Frame: 240)
.globl __glSpanReadDepthUint
.ent __glSpanReadDepthUint
__glSpanReadDepthUint:
    # Line 247
    addiu	$sp,$sp,-112
    sd	$s7,64($sp)
    sd	$s1,40($sp)
    move	$s1,$a2
    sd	$s3,8($sp)
    move	$s3,$a0
    sd	$s2,0($sp)
    # Line 261
    move	$s2,$zero
    sd	$s5,48($sp)
    sd	$s0,32($sp)
    sd	$s6,16($sp)
    # Line 252
    li	$s6,32
    lw	$at,31320($a0)
    sd	$s4,24($sp)
    # sd	gp,56(sp)
    # Line 247
    lui	$v0,0x17
    # Line 259
    lwc1	$f1,188($a1)
    # Line 247
    addiu	$v0,$v0,27200
    # Line 258
    lwc1	$f0,192($a1)
    # Line 259
    trunc.w.s	$f1,$f1
    # Line 247
    # addu	gp,t9,v0
    # Line 252
    lw	$t9,31244($a0)
    # Line 258
    trunc.w.s	$f0,$f0
    # Line 255
    lw	$s4,168($a1)
    # Line 252
    # addu	t9,t9,at
    # Line 259
    mfc1	$s0,$f1
    # Line 258
    mfc1	$s5,$f0
    # Line 261
    blez	$s4,.L0da80ed8
    # Line 252
    subu	$s6,$s6,$t9
    sd	$ra,72($sp)
    # Line 261
    addiu	$s7,$s3,31232
.L0da80ea4:
    # Line 262
    move	$a2,$s5
    move	$a0,$s7
    move	$a1,$s0
    lw	$t9,31360($s3)
    # Line 265
    addiu	$s0,$s0,1
    # Line 261
    addiu	$s2,$s2,1
    # Line 262
    jalr	$t9
    addiu	$s1,$s1,4
    sllv	$v1,$v0,$s6
    # Line 261
    bne	$s4,$s2,.L0da80ea4
    # Line 262
    sw	$v1,-4($s1)
    ld	$s7,64($sp)
    ld	$ra,72($sp)
.L0da80ed8:
    # ld	gp,56(sp)
    # Line 267
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanReadDepthUint

# Function: __glSpanReadStencil
# Declared: Line 274 (Source lines: 276-297)
# Address: 0x0da80f00 - 0x0da80fd8 (Size: 216 bytes, Frame: 240)
.globl __glSpanReadStencil
.ent __glSpanReadStencil
__glSpanReadStencil:
    # Line 276
    addiu	$sp,$sp,-112
    sd	$s7,64($sp)
    sd	$s2,0($sp)
    # Line 286
    lw	$s2,312($a1)
    sd	$s0,32($sp)
    # Line 276
    move	$s0,$a2
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s3,8($sp)
    # Line 291
    move	$s3,$zero
    # sd	gp,56(sp)
    sd	$s6,16($sp)
    # Line 289
    lwc1	$f1,188($a1)
    sd	$s1,40($sp)
    # Line 288
    lwc1	$f0,192($a1)
    # Line 289
    trunc.w.s	$f1,$f1
    # Line 276
    lui	$at,0x17
    addiu	$at,$at,26984
    # Line 288
    trunc.w.s	$f0,$f0
    sd	$s5,48($sp)
    # Line 284
    lw	$s5,180($a1)
    # Line 289
    mfc1	$s1,$f1
    # Line 288
    mfc1	$s6,$f0
    # Line 291
    blez	$s5,.L0da80fb0
    # Line 276
    nop
    sd	$ra,72($sp)
    # Line 291
    addiu	$s7,$s4,31112
.L0da80f6c:
    # Line 292
    move	$a2,$s6
    move	$a1,$s1
    lw	$t9,31208($s4)
    move	$a0,$s7
    # Line 291
    addiu	$s3,$s3,1
    # Line 292
    jalr	$t9
    addiu	$s0,$s0,4
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,-4($s0)
    # Line 295
    lh	$v0,0($s2)
    # Line 294
    addiu	$s2,$s2,2
    # Line 291
    bne	$s5,$s3,.L0da80f6c
    # Line 295
    addu	$s1,$v0,$s1
    ld	$s7,64($sp)
    ld	$ra,72($sp)
.L0da80fb0:
    # ld	gp,56(sp)
    # Line 297
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanReadStencil

# Function: __glSpanReadStencil2
# Declared: Line 305 (Source lines: 307-324)
# Address: 0x0da80fd8 - 0x0da8109c (Size: 196 bytes, Frame: 240)
.globl __glSpanReadStencil2
.ent __glSpanReadStencil2
__glSpanReadStencil2:
    # Line 307
    addiu	$sp,$sp,-112
    sd	$s6,64($sp)
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s3,8($sp)
    move	$s3,$a0
    sd	$s2,0($sp)
    # Line 319
    move	$s2,$zero
    # sd	gp,48(sp)
    sd	$s4,16($sp)
    # Line 317
    lwc1	$f1,188($a1)
    sd	$s0,24($sp)
    # Line 316
    lwc1	$f0,192($a1)
    # Line 317
    trunc.w.s	$f1,$f1
    # Line 307
    lui	$at,0x17
    addiu	$at,$at,26768
    # Line 316
    trunc.w.s	$f0,$f0
    sd	$s5,40($sp)
    # Line 313
    lw	$s5,168($a1)
    # Line 317
    mfc1	$s0,$f1
    # Line 316
    mfc1	$s4,$f0
    # Line 319
    blez	$s5,.L0da81078
    # Line 307
    nop
    sd	$ra,56($sp)
    # Line 319
    addiu	$s6,$s3,31112
.L0da8103c:
    # Line 320
    move	$a2,$s4
    move	$a0,$s6
    lw	$t9,31208($s3)
    move	$a1,$s0
    # Line 319
    addiu	$s2,$s2,1
    # Line 320
    jalr	$t9
    addiu	$s1,$s1,4
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 322
    addiu	$s0,$s0,1
    # Line 319
    bne	$s5,$s2,.L0da8103c
    # Line 320
    swc1	$f2,-4($s1)
    ld	$ra,56($sp)
    ld	$s6,64($sp)
.L0da81078:
    # ld	gp,48(sp)
    # Line 324
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanReadStencil2

