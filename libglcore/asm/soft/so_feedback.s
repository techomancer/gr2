# Source: ../soft/so_feedback.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_feedback.c
# Total Functions: 10

.text

# Function: __glim_FeedbackBuffer
# Declared: Line 24 (Source lines: 25-45)
# Address: 0x0daacda8 - 0x0daace90 (Size: 232 bytes, Frame: 48)
.globl __glim_FeedbackBuffer
.ent __glim_FeedbackBuffer
__glim_FeedbackBuffer:
    # Line 26
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 25
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 26
    lw	$at,__glBeginMode
    # Line 25
    lui	$v1,0x15
    addiu	$v1,$v1,-21824
    # Line 26
    beq	$at,$v0,.L0daace54
    # Line 25
    addu	$gp,$t9,$v1
    # Line 28
    sltiu	$a3,$a1,1536
    bnez	$a3,.L0daace18
    sltiu	$at,$a1,1541
    beqz	$at,.L0daace1c
    # Line 29
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 30
    bltz	$a0,.L0daace74
    # Line 33
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 34
    lw	$v0,3092($a4)
    li	$v1,7169
    beq	$v0,$v1,.L0daace38
    # Line 37
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 44
    sw	$a1,4584($a4)
    # Line 43
    sb	$zero,4568($a4)
    # Line 42
    sw	$a0,4580($a4)
    # Line 41
    sw	$a2,4576($a4)
    # Line 40
    sw	$a2,4572($a4)
    ld	$gp,0($sp)
    # Line 45
    jr	$ra
    addiu	$sp,$sp,48
.L0daace18:
    # Line 29
    # lw $t9, -29008($gp) # &__glSetError
.L0daace1c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 30
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daace38:
    sd	$ra,8($sp)
    # Line 37
    jalr	$t9
    li	$a0,1282
    # Line 38
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daace54:
    # Line 26
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daace74:
    sd	$ra,8($sp)
    # Line 33
    jalr	$t9
    li	$a0,1281
    # Line 34
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_FeedbackBuffer

# Function: __glim_PassThrough
# Declared: Line 47 (Source lines: 48-55)
# Address: 0x0daace90 - 0x0daacf2c (Size: 156 bytes, Frame: 48)
.globl __glim_PassThrough
.ent __glim_PassThrough
__glim_PassThrough:
    # Line 48
    mov.s	$f4,$f12
    # Line 49
    li	$v0,1
    # Line 48
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 49
    lw	$s0,__glCurrentContext
    # sd	gp,8(sp)
    lw	$at,__glBeginMode
    # Line 48
    lui	$v1,0x15
    addiu	$v1,$v1,-22056
    # Line 49
    beq	$at,$v0,.L0daacf08
    # Line 48
    nop
    # Line 49
    lw	$a1,3092($s0)
    li	$at,7169
    beq	$a1,$at,.L0daacedc
    sdc1	$f4,0($sp)
.L0daacecc:
    # ld	gp,8(sp)
    # Line 55
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daacedc:
    # Line 52
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,24($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e00000
    # Line 53
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    ldc1	$f13,0($sp)
    b	.L0daacecc
    ld	$ra,24($sp)
.L0daacf08:
    # Line 49
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_PassThrough

# Function: __glFeedbackTag
# Declared: Line 59 (Source lines: 60-70)
# Address: 0x0daacf2c - 0x0daacf74 (Size: 72 bytes, Frame: 0)
.globl __glFeedbackTag
.ent __glFeedbackTag
__glFeedbackTag:
    # Line 60
    lbu	$at,4568($a0)
    bnez	$at,.L0daacf5c
    # Line 64
    li	$a1,1
    # Line 60
    lw	$v1,4580($a0)
    lw	$v0,4572($a0)
    lw	$a2,4576($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sltu	$v0,$a2,$v0
    bnezl	$v0,.L0daacf64
    # Line 66
    swc1	$f13,0($a2)
    # Line 64
    sb	$a1,4568($a0)
.L0daacf5c:
    # Line 70
    jr	$ra
    nop
.L0daacf64:
    # Line 67
    lw	$at,4576($a0)
    addiu	$at,$at,4
    # Line 70
    jr	$ra
    # Line 67
    sw	$at,4576($a0)
.end __glFeedbackTag

# Function: feedback
# Declared: Line 72 (Source lines: 73-160)
# Address: 0x0daacf74 - 0x0daad310 (Size: 924 bytes, Frame: 192)
.ent feedback
feedback:
    # Line 76
    li	$at,1536
    # Line 73
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    # Line 74
    lw	$s0,4584($a0)
    # Line 76
    li	$a0,1538
    sd	$s2,16($sp)
    beq	$s0,$at,.L0daad198
    # Line 73
    move	$s2,$a1
    # Line 76
    li	$v0,1537
    beq	$s0,$v0,.L0daad0e4
    sd	$s3,32($sp)
    beq	$a0,$s0,.L0daad0ec
    li	$s3,1539
    beq	$s3,$s0,.L0daad0ec
    li	$v1,1540
    beql	$s0,$v1,.L0daad21c
    # Line 101
    move	$a0,$s1
.L0daacfc0:
    # Line 118
    beql	$a0,$s0,.L0daad060
    # Line 123
    lw	$v0,4($s2)
    # Line 118
    beq	$s3,$s0,.L0daad05c
    li	$a2,1540
    beq	$s0,$a2,.L0daad05c
.L0daacfd4:
    # Line 138
    li	$v1,1540
    move	$at,$s3
    beq	$at,$s0,.L0daacff4
    ld	$s3,32($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    bne	$v0,$v1,.L0daad04c
    ld	$s3,32($sp)
.L0daacff4:
    # Line 147
    lw	$a2,0($s2)
    sd	$ra,40($sp)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0daad2bc
    ld	$s0,8($sp)
    # Line 150
    # lw $t9, -28684($gp) # &__glFeedbackTag
.L0daad00c:
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,48($s2)
    # Line 151
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,52($s2)
    # Line 152
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,56($s2)
    # Line 153
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,60($s2)
    ld	$ra,40($sp)
.L0daad04c:
    # Line 160
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daad05c:
    # Line 123
    lw	$v0,4($s2)
.L0daad060:
    lbu	$at,3104($s1)
    sd	$ra,40($sp)
    sd	$v0,0($sp)
    beqz	$at,.L0daad180
    lwc1	$f4,0($v0)
    # Line 125
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,30804($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f4
    # Line 126
    ld	$v1,0($sp)
    lwc1	$f14,30808($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,4($v1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 127
    ld	$a1,0($sp)
    lwc1	$f14,30812($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,8($a1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 128
    ld	$a2,0($sp)
    lwc1	$f14,30816($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,12($a2)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    b	.L0daacfd4
    ld	$ra,40($sp)
.L0daad0e4:
    sd	$ra,40($sp)
    # Line 86
    li	$s3,1539
.L0daad0ec:
    # Line 90
    move	$a0,$s1
    lwc1	$f14,3380($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lwc1	$f0,3384($s1)
    lbu	$at,4552($s1)
    lwc1	$f4,132($s2)
    beqz	$at,.L0daad204
    sub.s	$f4,$f4,$f0
    # Line 92
    lw	$v0,3416($s1)
    mtc1	$v0,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -28684($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    # Line 98
    lw	$v1,31308($s1)
.L0daad148:
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f14
    nop
    cvt.s.l	$f14,$f14
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,136($s2)
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    li	$a0,1538
    ld	$ra,40($sp)
    b	.L0daacfc0
    nop
.L0daad180:
    # Line 130
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0daacfd4
    ld	$ra,40($sp)
.L0daad198:
    # Line 78
    move	$a0,$s1
    lwc1	$f14,3380($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lbu	$a2,4552($s1)
    lwc1	$f4,132($s2)
    lwc1	$f0,3384($s1)
    beqz	$a2,.L0daad2dc
    sub.s	$f4,$f4,$f0
    # Line 80
    lw	$a3,3416($s1)
    mtc1	$a3,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -28684($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    sd	$s3,32($sp)
    ld	$ra,40($sp)
.L0daad1f8:
    # Line 86
    li	$s3,1539
    b	.L0daacfc0
    li	$a0,1538
.L0daad204:
    # Line 96
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0daad148
    # Line 98
    lw	$v1,31308($s1)
.L0daad21c:
    # Line 101
    lwc1	$f14,3380($s1)
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lbu	$at,4552($s1)
    lwc1	$f4,132($s2)
    lwc1	$f0,3384($s1)
    beqz	$at,.L0daad2f8
    sub.s	$f4,$f4,$f0
    # Line 103
    lw	$v0,3416($s1)
    mtc1	$v0,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -28684($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
.L0daad270:
    # Line 109
    lw	$v1,31308($s1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f14
    nop
    cvt.s.l	$f14,$f14
    # lw $t9, -28684($gp) # &__glFeedbackTag
    lwc1	$f13,136($s2)
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    # Line 115
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,124($s2)
    li	$a0,1538
    ld	$ra,40($sp)
    b	.L0daacfc0
    nop
.L0daad2bc:
    # Line 148
    move	$a0,$s1
    lw	$t9,8($s2)
    lw	$a2,28084($s1)
    move	$a1,$s2
    jal	__glFeedbackTag
    ori	$a2,$a2,0x4
    b	.L0daad00c
    # Line 150
    nop	# was lw $t9, -28684($gp) # &__glFeedbackTag
.L0daad2dc:
    # Line 84
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    sd	$s3,32($sp)
    b	.L0daad1f8
    ld	$ra,40($sp)
.L0daad2f8:
    # Line 107
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0daad270
    nop
.end feedback

# Function: __glFeedbackCopyPixels
# Declared: Line 162 (Source lines: 163-166)
# Address: 0x0daad310 - 0x0daad368 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackCopyPixels
.ent __glFeedbackCopyPixels
__glFeedbackCopyPixels:
    # Line 163
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,-23208
    # addu	gp,t9,at
    # Line 164
    # lw $t9, -28684($gp) # &__glFeedbackTag
    # Line 163
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 164
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0c000
    # Line 165
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s8
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 166
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackCopyPixels

# Function: __glFeedbackDrawPixels
# Declared: Line 168 (Source lines: 169-172)
# Address: 0x0daad368 - 0x0daad3c0 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackDrawPixels
.ent __glFeedbackDrawPixels
__glFeedbackDrawPixels:
    # Line 169
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,-23296
    # addu	gp,t9,at
    # Line 170
    # lw $t9, -28684($gp) # &__glFeedbackTag
    # Line 169
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 170
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0a000
    # Line 171
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s8
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 172
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackDrawPixels

# Function: __glFeedbackBitmap
# Declared: Line 174 (Source lines: 175-178)
# Address: 0x0daad3c0 - 0x0daad418 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackBitmap
.ent __glFeedbackBitmap
__glFeedbackBitmap:
    # Line 175
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,-23384
    # addu	gp,t9,at
    # Line 176
    # lw $t9, -28684($gp) # &__glFeedbackTag
    # Line 175
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 176
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e08000
    # Line 177
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s8
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 178
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackBitmap

# Function: __glFeedbackPoint
# Declared: Line 181 (Source lines: 182-185)
# Address: 0x0daad418 - 0x0daad470 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackPoint
.ent __glFeedbackPoint
__glFeedbackPoint:
    # Line 182
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,-23472
    # addu	gp,t9,at
    # Line 183
    # lw $t9, -28684($gp) # &__glFeedbackTag
    # Line 182
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 183
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 184
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s8
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 185
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackPoint

# Function: __glFeedbackLine
# Declared: Line 188 (Source lines: 189-208)
# Address: 0x0daad470 - 0x0daad548 (Size: 216 bytes, Frame: 208)
.globl __glFeedbackLine
.ent __glFeedbackLine
__glFeedbackLine:
    # Line 193
    lw	$a4,4($a1)
    # Line 189
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 193
    lui	$v1,0x2
    lw	$at,30440($a0)
    # Line 189
    lui	$v0,0x15
    addiu	$v0,$v0,-23560
    # Line 193
    and	$at,$at,$v1
    beqz	$at,.L0daad51c
    # Line 189
    addu	$gp,$t9,$v0
.L0daad4a8:
    # Line 195
    lbu	$v1,29852($s0)
    sd	$a1,0($sp)
    sd	$a4,8($sp)
    beqz	$v1,.L0daad528
    sd	$ra,40($sp)
    # Line 199
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # Line 202
    # lw $t9, -32724($gp) # &sub_0dab0000
.L0daad4d0:
    # Line 204
    move	$a0,$s0
    # Line 202
    addiu	$t9,$t9,-12428
    # Line 204
    bal __glFeedbackTag
    ld	$a1,0($sp)
    la	$a2,sub_0dab0000
    addiu	$a2,$a2,-12428
    # Line 205
    move	$a0,$s0
    move	$a1,$s1
    bal __glFeedbackTag
    move	$t9,$a2
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s0,16($sp)
    ld	$at,0($sp)
    # Line 207
    ld	$a3,8($sp)
    ld	$gp,32($sp)
    # Line 208
    addiu	$sp,$sp,80
    jr	$ra
    # Line 207
    sw	$a3,4($at)
.L0daad51c:
    # Line 195
    lw	$v0,4($s1)
    b	.L0daad4a8
    sw	$v0,4($a1)
.L0daad528:
    # Line 202
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    # Line 201
    li	$v1,1
    # Line 202
    bal __glFeedbackTag
    # Line 201
    sb	$v1,29852($s0)
    b	.L0daad4d0
    # Line 202
    nop	# was lw $t9, -32724($gp) # &sub_0dab0000
.end __glFeedbackLine

# Function: __glFeedbackTriangle
# Declared: Line 211 (Source lines: 213-359)
# Address: 0x0daad548 - 0x0daada54 (Size: 1292 bytes, Frame: 224)
.globl __glFeedbackTriangle
.ent __glFeedbackTriangle
__glFeedbackTriangle:
    # Line 222
    lwc1	$f0,132($a3)
    # Line 223
    lwc1	$f4,132($a2)
    sub.s	$f4,$f4,$f0
    # Line 220
    lwc1	$f3,128($a3)
    lwc1	$f1,128($a1)
    # Line 221
    lwc1	$f2,128($a2)
    # Line 220
    sub.s	$f1,$f1,$f3
    # Line 221
    sub.s	$f2,$f2,$f3
    # Line 222
    lwc1	$f3,132($a1)
    sub.s	$f3,$f3,$f0
    # Line 240
    mul.s	$f1,$f1,$f4
    mul.s	$f2,$f2,$f3
    # Line 213
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-23776
    addu	$gp,$t9,$v1
    # Line 240
    sub.s	$f1,$f1,$f2
    mtc1	$zero,$f0
    c.le.s	$f0,$f1
    li	$v0,1
    bc1fl	.L0daad5a4
    move	$v0,$zero
.L0daad5a4:
    sd	$s2,40($sp)
    # Line 213
    move	$s2,$a1
    sd	$s4,24($sp)
    move	$s4,$a3
    sd	$s3,16($sp)
    move	$s3,$a2
    # Line 240
    lbu	$at,30525($a0)
    addu	$v0,$v0,$a0
    lbu	$v0,30520($v0)
    sd	$s0,8($sp)
    # Line 213
    move	$s0,$a0
    # Line 240
    beq	$at,$v0,.L0daad720
    sd	$v0,0($sp)
    sd	$s1,48($sp)
    # Line 250
    lw	$s1,28084($s0)
    lw	$a4,1304($s0)
    # Line 249
    lw	$a0,30440($s0)
    # Line 250
    li	$at,7424
    beq	$a4,$at,.L0daad73c
    andi	$a0,$a0,0x400
    # Line 272
    beqz	$a0,.L0daad860
    ld	$a4,0($sp)
    # Line 278
    move	$a0,$a4
    # Line 279
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lw	$a4,28088($a4)
    or	$s1,$a4,$s1
.L0daad610:
    # Line 285
    sll	$v1,$a0,0x4
    # Line 287
    addu	$at,$v1,$s4
    addiu	$at,$at,144
    # Line 286
    addu	$v0,$v1,$s3
    addiu	$v0,$v0,144
    # Line 285
    addu	$v1,$v1,$s2
    addiu	$v1,$v1,144
    sw	$v1,4($s2)
    # Line 286
    sw	$v0,4($s3)
    # Line 287
    sw	$at,4($s4)
.L0daad638:
    lw	$v0,0($s2)
.L0daad63c:
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s1
    beqz	$v0,.L0daad664
    # Line 289
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0daad664:
    lw	$v1,0($s3)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s1
    beqz	$v1,.L0daad690
    # Line 290
    move	$a0,$s0
    lw	$t9,8($s3)
    move	$a1,$s3
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0daad690:
    lw	$a4,0($s4)
    nor	$a4,$a4,$zero
    and	$a4,$a4,$s1
    beqz	$a4,.L0daad6bc
    # Line 291
    move	$a0,$s0
    lw	$t9,8($s4)
    move	$a1,$s4
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0daad6bc:
    ld	$a0,0($sp)
    # Line 294
    addu	$a0,$a0,$s0
    lbu	$a0,30522($a0)
    beqz	$a0,.L0daad7b0
    ld	$s1,48($sp)
    li	$a4,1
    beq	$a0,$a4,.L0daad870
    li	$at,2
    beq	$a0,$at,.L0daad978
.L0daad6e0:
    # Line 353
    addiu	$a4,$s4,144
.L0daad6e4:
    # Line 352
    addiu	$at,$s3,144
    # Line 351
    addiu	$v0,$s2,144
    sw	$v0,4($s2)
    # Line 352
    sw	$at,4($s3)
    # Line 353
    sw	$a4,4($s4)
    ld	$gp,32($sp)
    lw	$v0,1304($s0)
    li	$v1,7424
    # Line 359
    ld	$s2,40($sp)
    # Line 353
    beq	$v0,$v1,.L0daad850
    # Line 359
    ld	$s3,16($sp)
.L0daad710:
    ld	$s4,24($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daad720:
    ld	$gp,32($sp)
    # Line 243
    ld	$s0,8($sp)
    ld	$s2,40($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daad73c:
    # Line 252
    beqz	$a0,.L0daad9e0
    lw	$a1,28080($s0)
    ld	$a3,0($sp)
    # Line 258
    move	$a0,$a3
    # Line 259
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a3,28088($a3)
.L0daad758:
    # Line 265
    sll	$v1,$a0,0x4
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,144
    sw	$v1,4($a1)
    # Line 266
    sw	$v1,4($s2)
    # Line 267
    lw	$v0,4($a1)
    sw	$v0,4($s3)
    # Line 268
    lw	$at,4($a1)
    sw	$at,4($s4)
    lw	$a4,0($a1)
    nor	$a4,$a4,$zero
    and	$a4,$a4,$a3
    andi	$a4,$a4,0x1b
    beqzl	$a4,.L0daad63c
    # Line 287
    lw	$v0,0($s2)
    # Line 272
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,56($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    b	.L0daad638
    ld	$ra,56($sp)
.L0daad7b0:
    # Line 296
    lbu	$a4,184($s2)
    beqz	$a4,.L0daad7e4
    # Line 297
    nop	# was lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 298
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s2
    ld	$ra,56($sp)
.L0daad7e4:
    lbu	$at,184($s3)
    beqz	$at,.L0daad818
    # Line 301
    nop	# was lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 302
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s3
    ld	$ra,56($sp)
.L0daad818:
    lbu	$at,184($s4)
    beqz	$at,.L0daad6e0
    # Line 305
    nop	# was lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 306
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s4
    b	.L0daad6e0
    ld	$ra,56($sp)
.L0daad850:
    # Line 355
    lw	$v0,28080($s0)
    # Line 357
    addiu	$at,$v0,144
    b	.L0daad710
    sw	$at,4($v0)
.L0daad860:
    # Line 282
    lw	$v1,28088($s0)
    # Line 281
    move	$a0,$zero
    b	.L0daad610
    # Line 282
    or	$s1,$v1,$s1
.L0daad870:
    # Line 310
    lbu	$a4,184($s2)
    beqz	$a4,.L0daad9ec
    nop
    lbu	$at,29852($s0)
    beqz	$at,.L0daad9f4
    sd	$ra,56($sp)
    # Line 315
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32724($gp) # &sub_0dab0000
.L0daad89c:
    # Line 317
    move	$a0,$s0
    # Line 315
    addiu	$t9,$t9,-12428
    # Line 317
    bal __glFeedbackTag
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 318
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s3
    ld	$ra,56($sp)
    lbu	$at,184($s3)
.L0daad8c8:
    beqzl	$at,.L0daad91c
    # Line 328
    lbu	$at,184($s4)
    # Line 318
    lbu	$v0,29852($s0)
    beqz	$v0,.L0daada14
    sd	$ra,56($sp)
    # Line 325
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32724($gp) # &sub_0dab0000
.L0daad8f0:
    # Line 327
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s3
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 328
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s4
    ld	$ra,56($sp)
    lbu	$at,184($s4)
.L0daad91c:
    beqz	$at,.L0daad6e4
    # Line 353
    addiu	$a4,$s4,144
    # Line 328
    lbu	$v0,29852($s0)
    beqz	$v0,.L0daada34
    sd	$ra,56($sp)
    # Line 335
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32724($gp) # &sub_0dab0000
.L0daad944:
    # Line 337
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s4
    la	$a2,sub_0dab0000
    addiu	$a2,$a2,-12428
    # Line 338
    move	$a0,$s0
    move	$a1,$s2
    bal __glFeedbackTag
    move	$t9,$a2
    ld	$ra,56($sp)
    b	.L0daad6e4
    # Line 353
    addiu	$a4,$s4,144
.L0daad978:
    # Line 342
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e06000
    # Line 343
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_40400000
    # Line 344
    # lw $t9, -32724($gp) # &sub_0dab0000
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 345
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s3
    # lw $t9, -32724($gp) # &sub_0dab0000
    # Line 346
    move	$a0,$s0
    addiu	$t9,$t9,-12428
    bal __glFeedbackTag
    move	$a1,$s4
    b	.L0daad6e0
    ld	$ra,56($sp)
.L0daad9e0:
    # Line 261
    move	$a0,$zero
    b	.L0daad758
    # Line 262
    lw	$a3,28088($s0)
.L0daad9ec:
    b	.L0daad8c8
    # Line 318
    lbu	$at,184($s3)
.L0daad9f4:
    # Line 313
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -28684($gp) # &__glFeedbackTag
    li	$ra,1
    # Line 312
    sb	$ra,29852($s0)
    # Line 313
    bal __glFeedbackTag
    move	$a0,$s0
    b	.L0daad89c
    # Line 315
    nop	# was lw $t9, -32724($gp) # &sub_0dab0000
.L0daada14:
    # Line 323
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    li	$at,1
    bal __glFeedbackTag
    # Line 322
    sb	$at,29852($s0)
    b	.L0daad8f0
    nop	# was lw $t9, -32724($gp) # &sub_0dab0000
.L0daada34:
    # Line 333
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -28684($gp) # &__glFeedbackTag
    move	$a0,$s0
    li	$v0,1
    bal __glFeedbackTag
    # Line 332
    sb	$v0,29852($s0)
    b	.L0daad944
    nop	# was lw $t9, -32724($gp) # &sub_0dab0000
.end __glFeedbackTriangle

.rdata
_lit_40400000:
    .word 0x40400000
_lit_44e00000:
    .word 0x44e00000
_lit_44e02000:
    .word 0x44e02000
_lit_44e04000:
    .word 0x44e04000
_lit_44e06000:
    .word 0x44e06000
_lit_44e08000:
    .word 0x44e08000
_lit_44e0a000:
    .word 0x44e0a000
_lit_44e0c000:
    .word 0x44e0c000
_lit_44e0e000:
    .word 0x44e0e000

