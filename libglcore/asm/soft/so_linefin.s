# Source: ../soft/so_linefin.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linefin.c
# Total Functions: 9

.text

# Function: __glFirstLinesVertex
# Declared: Line 35 (Source lines: 37-39)
# Address: 0x0dabc224 - 0x0dabc238 (Size: 20 bytes, Frame: 0)
.globl __glFirstLinesVertex
.ent __glFirstLinesVertex
__glFirstLinesVertex:
    # Line 37
    addiu	$v0,$a1,192
    # Line 38
    lw	$at,11972($a0)
    # Line 37
    sw	$v0,12696($a0)
    # Line 39
    jr	$ra
    # Line 38
    sw	$at,11956($a0)
.end __glFirstLinesVertex

# Function: __glBeginLines
# Declared: Line 41 (Source lines: 42-46)
# Address: 0x0dabc238 - 0x0dabc260 (Size: 40 bytes, Frame: 0)
.globl __glBeginLines
.ent __glBeginLines
__glBeginLines:
    # Line 43
    addiu	$a1,$a0,12720
    sw	$a1,12696($a0)
    # Line 44
    lw	$v1,11968($a0)
    # Line 42
    lui	$a2,0x14
    addiu	$a2,$a2,-18896
    # addu	at,t9,a2
    # Line 45
    la	$v0,__glMatValidateVbuf0N
    # Line 44
    sw	$v1,11956($a0)
    # Line 46
    jr	$ra
    # Line 45
    sw	$v0,12028($a0)
.end __glBeginLines

# Function: __glOtherLStripVertex
# Declared: Line 58 (Source lines: 59-87)
# Address: 0x0dabc260 - 0x0dabc318 (Size: 184 bytes, Frame: 192)
.globl __glOtherLStripVertex
.ent __glOtherLStripVertex
__glOtherLStripVertex:
    # Line 59
    move	$a2,$a1
    # Line 60
    lw	$a4,12700($a0)
    # Line 59
    addiu	$sp,$sp,-64
    # Line 63
    sw	$a1,12700($a0)
    # Line 62
    sw	$a4,12696($a0)
    sd	$gp,24($sp)
    # Line 63
    lw	$a6,12($a4)
    lw	$a5,12($a1)
    # Line 59
    lui	$v0,0x14
    addiu	$v0,$v0,-18936
    # Line 63
    or	$at,$a5,$a6
    beqz	$at,.L0dabc2c8
    # Line 59
    addu	$gp,$t9,$v0
    # Line 63
    and	$v1,$a5,$a6
    beqz	$v1,.L0dabc2ac
    # Line 78
    nop	# was lw $t9, -28308($gp) # &__glClipLine
    ld	$gp,24($sp)
    # Line 76
    jr	$ra
    addiu	$sp,$sp,64
.L0dabc2ac:
    sd	$ra,32($sp)
    # Line 78
    bal __glClipLine
    move	$a1,$a4
    # Line 79
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dabc2c8:
    sd	$a2,0($sp)
    # Line 83
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    sd	$ra,32($sp)
    move	$a2,$a0
    jal	__glClipLine
    lw	$a2,28088($a2)
    ld	$t9,8($sp)
    # Line 86
    move	$a0,$t9
    lw	$t9,12480($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    # Line 87
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glOtherLStripVertex

# Function: __glSecondLStripVertex
# Declared: Line 108 (Source lines: 109-139)
# Address: 0x0dabc318 - 0x0dabc3e0 (Size: 200 bytes, Frame: 192)
.globl __glSecondLStripVertex
.ent __glSecondLStripVertex
__glSecondLStripVertex:
    # Line 110
    lw	$a4,12700($a0)
    # Line 109
    move	$a2,$a1
    # Line 113
    sw	$a2,12700($a0)
    # Line 114
    lw	$v1,11964($a0)
    # Line 109
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$a1,0x14
    addiu	$a1,$a1,-19120
    addu	$gp,$t9,$a1
    # Line 115
    la	$v0,__glNop
    # Line 114
    sw	$v1,11956($a0)
    # Line 112
    sw	$a4,12696($a0)
    # Line 115
    sw	$v0,12028($a0)
    lw	$a6,12($a4)
    lw	$a5,12($a2)
    or	$at,$a5,$a6
    beqz	$at,.L0dabc390
    and	$a3,$a5,$a6
    beqz	$a3,.L0dabc374
    # Line 130
    nop	# was lw $t9, -28308($gp) # &__glClipLine
    ld	$gp,24($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,64
.L0dabc374:
    sd	$ra,32($sp)
    # Line 130
    bal __glClipLine
    move	$a1,$a4
    # Line 131
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dabc390:
    sd	$a2,0($sp)
    # Line 135
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    sd	$a4,16($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    sd	$ra,32($sp)
    move	$a2,$a0
    jal	__glClipLine
    lw	$a2,28088($a2)
    ld	$t9,8($sp)
    # Line 138
    move	$a0,$t9
    lw	$t9,12480($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    # Line 139
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSecondLStripVertex

# Function: __glFirstLStripVertex
# Declared: Line 142 (Source lines: 143-155)
# Address: 0x0dabc3e0 - 0x0dabc450 (Size: 112 bytes, Frame: 32)
.globl __glFirstLStripVertex
.ent __glFirstLStripVertex
__glFirstLStripVertex:
    # Line 145
    sw	$a1,12700($a0)
    # Line 143
    addiu	$sp,$sp,-32
    # Line 144
    addiu	$v1,$a1,192
    sw	$v1,12696($a0)
    # sd	gp,0(sp)
    # Line 145
    lw	$at,1696($a0)
    # Line 143
    lui	$v0,0x14
    addiu	$v0,$v0,-19320
    # Line 145
    andi	$at,$at,0x80
    beqz	$at,.L0dabc444
    # Line 143
    nop
    # Line 147
    la	$a3,__glSecondLStripVertex
    sw	$a3,11956($a0)
.L0dabc414:
    # Line 150
    lw	$a2,28088($a0)
    la	$at,__glMatValidateV1
    beqz	$a2,.L0dabc438
    sw	$at,12028($a0)
    # Line 154
    lw	$t9,8($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0dabc438:
    # ld	gp,0(sp)
    # Line 155
    jr	$ra
    addiu	$sp,$sp,32
.L0dabc444:
    # Line 149
    lw	$v0,11964($a0)
    b	.L0dabc414
    sw	$v0,11956($a0)
.end __glFirstLStripVertex

# Function: __glBeginLStrip
# Declared: Line 157 (Source lines: 158-164)
# Address: 0x0dabc450 - 0x0dabc47c (Size: 44 bytes, Frame: 0)
.globl __glBeginLStrip
.ent __glBeginLStrip
__glBeginLStrip:
    # Line 159
    sb	$zero,29852($a0)
    # Line 161
    addiu	$a1,$a0,12720
    # Line 158
    lui	$a2,0x14
    addiu	$a2,$a2,-19432
    # addu	at,t9,a2
    # Line 163
    la	$v1,__glMatValidateVbuf0N
    # Line 161
    sw	$a1,12696($a0)
    # Line 162
    la	$v0,__glFirstLStripVertex
    # Line 163
    sw	$v1,12028($a0)
    # Line 164
    jr	$ra
    # Line 162
    sw	$v0,11956($a0)
.end __glBeginLStrip

# Function: FirstLLoopVertex
# Declared: Line 204 (Source lines: 205-208)
# Address: 0x0dabc47c - 0x0dabc49c (Size: 32 bytes, Frame: 0)
.ent FirstLLoopVertex
FirstLLoopVertex:
    # Line 206
    addiu	$v1,$a1,192
    # Line 205
    lui	$a2,0x14
    addiu	$a2,$a2,-19476
    # addu	at,t9,a2
    # Line 207
    la	$v0,__glSecondLLoopVertex
    # Line 206
    sw	$v1,12696($a0)
    # Line 208
    jr	$ra
    # Line 207
    sw	$v0,11956($a0)
.end FirstLLoopVertex

# Function: __glEndLLoop
# Declared: Line 210 (Source lines: 211-226)
# Address: 0x0dabc49c - 0x0dabc510 (Size: 116 bytes, Frame: 48)
.globl __glEndLLoop
.ent __glEndLLoop
__glEndLLoop:
    # Line 211
    addiu	$sp,$sp,-48
    # sd	gp,0(sp)
    lui	$v0,0x14
    addiu	$v0,$v0,-19508
    # addu	gp,t9,v0
    la	$at,sub_0dac0000
    lw	$a2,11956($a0)
    sd	$s0,8($sp)
    addiu	$at,$at,-15236
    beq	$a2,$at,.L0dabc4d0
    move	$s0,$a0
    la	$v1,__glSecondLLoopVertex
    bne	$a2,$v1,.L0dabc4f0
.L0dabc4d0:
    # Line 225
    la	$a1,__glEndPrim
    # Line 224
    la	$a0,__glNop
    # ld	gp,0(sp)
    # Line 225
    sw	$a1,12076($s0)
    # Line 224
    sw	$a0,11956($s0)
    # Line 226
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dabc4f0:
    # Line 222
    move	$a0,$s0
    lw	$t9,12492($s0)
    addiu	$a2,$s0,12720
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,12700($s0)
    b	.L0dabc4d0
    ld	$ra,16($sp)
.end __glEndLLoop

# Function: __glBeginLLoop
# Declared: Line 228 (Source lines: 229-236)
# Address: 0x0dabc510 - 0x0dabc548 (Size: 56 bytes, Frame: 0)
.globl __glBeginLLoop
.ent __glBeginLLoop
__glBeginLLoop:
    # Line 230
    sb	$zero,29852($a0)
    # Line 232
    addiu	$v0,$a0,12720
    sw	$v0,12696($a0)
    # Line 229
    lui	$a2,0x14
    addiu	$a2,$a2,-19624
    # addu	at,t9,a2
    # Line 235
    la	$a1,__glMatValidateVbuf0N
    # Line 234
    la	$v1,__glEndLLoop
    # Line 233
    la	$v0,sub_0dac0000
    # Line 235
    sw	$a1,12028($a0)
    # Line 234
    sw	$v1,12076($a0)
    # Line 233
    addiu	$v0,$v0,-15236
    # Line 236
    jr	$ra
    # Line 233
    sw	$v0,11956($a0)
.end __glBeginLLoop

