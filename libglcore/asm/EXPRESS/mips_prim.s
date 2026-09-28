# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_prim.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 6

.text

# Function: __glOtherLStripVertexFast
# Declared: Line 67 (Source lines: 67-85)
# Address: 0x0db26c30 - 0x0db26c6c (Size: 60 bytes, Frame: 0)
.globl __glOtherLStripVertexFast
.ent __glOtherLStripVertexFast
__glOtherLStripVertexFast:
    # Line 67
    lw	$v1,12700($a0)
    # Line 68
    move	$a2,$a1
    # Line 69
    lw	$a3,12($v1)
    # Line 70
    move	$a1,$v1
    # Line 71
    lw	$t9,12480($a0)
    # Line 72
    or	$v0,$v0,$a3
    # Line 73
    bnez	$v0,.L0db26c58
    # Line 74
    sw	$a2,12700($a0)
    # Line 75
    sw	$a1,12696($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 76
    nop
.L0db26c58:
    # Line 81
    lw	$t9,12492($a0)
    # Line 82
    sw	$a1,12696($a0)
    # Line 83
    nop
    # Line 84
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 85
    nop
.end __glOtherLStripVertexFast

# Function: __glFastClipLine
# Declared: Line 104 (Source lines: 104-132)
# Address: 0x0db26c6c - 0x0db26cd4 (Size: 104 bytes, Frame: 0)
.globl __glFastClipLine
.ent __glFastClipLine
__glFastClipLine:
    # Line 104
    lw	$t0,12($a1)
    # Line 105
    lw	$t1,12($a2)
    # Line 106
    lw	$t2,12480($a0)
    # Line 107
    or	$t3,$t0,$t1
    # Line 108
    bnez	$t3,.L0db26c90
    # Line 109
    and	$a4,$t0,$t1
    # Line 110
    move	$t9,$t2
    # Line 111
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 112
    nop
.L0db26c90:
    # Line 116
    bnez	$a4,.L0db26ccc
    # Line 117
    nop
    # Line 118
    addiu	$sp,$sp,-48
    # Line 119
    # sd	gp,8(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,3068
    daddu	$gp,$gp,$t9
    # Line 120
    # lw $t9, -28308($gp) # &__glClipLine
    # Line 121
    sw	$ra,16($sp)
    # Line 122
    jal	__glClipLine
    # Line 123
    nop
    # Line 125
    lw	$ra,16($sp)
    # Line 126
    # ld	gp,8(sp)
    # Line 127
    jr	$ra
    # Line 128
    addiu	$sp,$sp,48
.L0db26ccc:
    # Line 131
    jr	$ra
    # Line 132
    nop
.end __glFastClipLine

# Function: __glSecondLinesVertex
# Declared: Line 144 (Source lines: 144-151)
# Address: 0x0db26cd4 - 0x0db26cf4 (Size: 32 bytes, Frame: 0)
.globl __glSecondLinesVertex
.ent __glSecondLinesVertex
__glSecondLinesVertex:
    # Line 144
    sb	$zero,29852($a0)
    # Line 145
    move	$a2,$a1
    # Line 146
    lw	$t9,12492($a0)
    # Line 147
    addiu	$a1,$a1,-192
    # Line 148
    lw	$a5,11968($a0)
    # Line 149
    sw	$a1,12696($a0)
    # Line 150
    sw	$a5,11956($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 151
    nop
.end __glSecondLinesVertex

# Function: __glSecondLLoopVertex
# Declared: Line 164 (Source lines: 164-178)
# Address: 0x0db26cf4 - 0x0db26d3c (Size: 72 bytes, Frame: 0)
.globl __glSecondLLoopVertex
.ent __glSecondLLoopVertex
__glSecondLLoopVertex:
    # Line 164
    addiu	$sp,$sp,-48
    # Line 165
    # sd	gp,8(sp)
    lui	$gp,0xd
    daddiu	$gp,$gp,2932
    daddu	$gp,$gp,$t9
    # Line 166
    addiu	$a6,$a1,192
    # Line 167
    lw	$a7,11964($a0)
    # Line 168
    sw	$a6,12696($a0)
    # Line 169
    la	$t8,__glMatValidateVbuf0V1
    # Line 170
    sw	$a1,12700($a0)
    # Line 171
    lw	$t9,12492($a0)
    # Line 172
    sw	$a7,11956($a0)
    # Line 173
    sw	$t8,12028($a0)
    # Line 174
    move	$a2,$a1
    # Line 175
    addiu	$a1,$a1,-192
    # Line 176
    # ld	gp,8(sp)
    # Line 177
    addiu	$sp,$sp,48
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 178
    nop
.end __glSecondLLoopVertex

# Function: __glPoint
# Declared: Line 200 (Source lines: 200-226)
# Address: 0x0db26d3c - 0x0db26d88 (Size: 76 bytes, Frame: 48)
.globl __glPoint
.ent __glPoint
__glPoint:
    # Line 200
    lw	$a2,28088($a0)
    # Line 201
    lw	$t9,8($a1)
    # Line 202
    bnez	$v0,.L0db26d80
    # Line 203
    addiu	$sp,$sp,-48
    # Line 207
    sw	$ra,44($sp)
    # Line 208
    sw	$a1,36($sp)
    # Line 209
    sw	$a0,32($sp)
    # Line 210
    jalr	$t9
    # Line 211
    ori	$a2,$a2,0x1
    # Line 214
    lw	$a0,32($sp)
    # Line 215
    lw	$a1,36($sp)
    # Line 216
    nop
    # Line 217
    lw	$t9,12504($a0)
    # Line 218
    lw	$ra,44($sp)
    # Line 219
    nop
    # Line 220
    addiu	$sp,$sp,48
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 221
    nop
.L0db26d80:
    # Line 225
    jr	$ra
    # Line 226
    addiu	$sp,$sp,48
.end __glPoint

# Function: __glPointFast
# Declared: Line 246 (Source lines: 246-256)
# Address: 0x0db26d88 - 0x0db26da4 (Size: 28 bytes, Frame: 0)
.globl __glPointFast
.ent __glPointFast
__glPointFast:
    # Line 246
    lw	$t9,12504($a0)
    # Line 247
    bnez	$v0,.L0db26d9c
    # Line 248
    nop
    # Line 250
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 251
    nop
.L0db26d9c:
    # Line 255
    jr	$ra
    # Line 256
    nop
.end __glPointFast

