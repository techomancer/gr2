# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/EXPRESS.IP20.N32.O/mips_fastapi.s
# Category: EXPRESS
# Compiler Options: 
# Total Functions: 8

.text

# Function: __glim_Color3f
# Declared: Line 82 (Source lines: 82-89)
# Address: 0x0db26824 - 0x0db26844 (Size: 32 bytes, Frame: 0)
.globl __glim_Color3f
.ent __glim_Color3f
__glim_Color3f:
    # Line 82
    lw	$a0,__glCurrentContext
    # Line 83
    lui	$v0,0x3f80
    # Line 84
    lw	$t9,12008($a0)
    # Line 85
    swc1	$f12,408($a0)
    # Line 86
    swc1	$f13,412($a0)
    # Line 87
    swc1	$f14,416($a0)
    # Line 88
    sw	$v0,420($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 89
    nop
.end __glim_Color3f

# Function: __glim_Color3fv
# Declared: Line 112 (Source lines: 112-123)
# Address: 0x0db26844 - 0x0db26874 (Size: 48 bytes, Frame: 0)
.globl __glim_Color3fv
.ent __glim_Color3fv
__glim_Color3fv:
    # Line 112
    lw	$v1,__glCurrentContext
    # Line 113
    lwc1	$f0,0($a0)
    # Line 114
    lwc1	$f1,4($a0)
    # Line 115
    lwc1	$f2,8($a0)
    # Line 116
    lui	$a0,0x3f80
    # Line 117
    lw	$t9,12008($v1)
    # Line 118
    swc1	$f0,408($v1)
    # Line 119
    swc1	$f1,412($v1)
    # Line 120
    swc1	$f2,416($v1)
    # Line 121
    sw	$a0,420($v1)
    # Line 122
    move	$a0,$v1
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 123
    nop
.end __glim_Color3fv

# Function: __glim_Color4f
# Declared: Line 139 (Source lines: 139-146)
# Address: 0x0db26874 - 0x0db26894 (Size: 32 bytes, Frame: 0)
.globl __glim_Color4f
.ent __glim_Color4f
__glim_Color4f:
    # Line 139
    lw	$a0,__glCurrentContext
    # Line 140
    nop
    # Line 141
    lw	$t9,12008($a0)
    # Line 142
    swc1	$f12,408($a0)
    # Line 143
    swc1	$f13,412($a0)
    # Line 144
    swc1	$f14,416($a0)
    # Line 145
    swc1	$f15,420($a0)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 146
    nop
.end __glim_Color4f

# Function: __glim_Color4fv
# Declared: Line 162 (Source lines: 162-173)
# Address: 0x0db26894 - 0x0db268c4 (Size: 48 bytes, Frame: 0)
.globl __glim_Color4fv
.ent __glim_Color4fv
__glim_Color4fv:
    # Line 162
    lw	$a1,__glCurrentContext
    # Line 163
    lwc1	$f3,0($a0)
    # Line 164
    lwc1	$f4,4($a0)
    # Line 165
    lwc1	$f5,8($a0)
    # Line 166
    lwc1	$f6,12($a0)
    # Line 167
    lw	$t9,12008($a1)
    # Line 168
    swc1	$f3,408($a1)
    # Line 169
    swc1	$f4,412($a1)
    # Line 170
    swc1	$f5,416($a1)
    # Line 171
    swc1	$f6,420($a1)
    # Line 172
    move	$a0,$a1
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 173
    nop
.end __glim_Color4fv

# Function: __glim_Normal3f
# Declared: Line 196 (Source lines: 196-201)
# Address: 0x0db268c4 - 0x0db268dc (Size: 24 bytes, Frame: 0)
.globl __glim_Normal3f
.ent __glim_Normal3f
__glim_Normal3f:
    # Line 196
    lw	$a2,__glCurrentContext
    # Line 197
    nop
    # Line 198
    swc1	$f12,184($a2)
    # Line 199
    swc1	$f13,188($a2)
    # Line 200
    jr	$ra
    # Line 201
    swc1	$f14,192($a2)
.end __glim_Normal3f

# Function: __glim_Normal3fv
# Declared: Line 228 (Source lines: 228-235)
# Address: 0x0db268dc - 0x0db268fc (Size: 32 bytes, Frame: 0)
.globl __glim_Normal3fv
.ent __glim_Normal3fv
__glim_Normal3fv:
    # Line 228
    lw	$a3,__glCurrentContext
    # Line 229
    lwc1	$f7,0($a0)
    # Line 230
    lwc1	$f8,4($a0)
    # Line 231
    lwc1	$f9,8($a0)
    # Line 232
    swc1	$f7,184($a3)
    # Line 233
    swc1	$f8,188($a3)
    # Line 234
    jr	$ra
    # Line 235
    swc1	$f9,192($a3)
.end __glim_Normal3fv

# Function: __glim_TexCoord2f
# Declared: Line 256 (Source lines: 256-262)
# Address: 0x0db268fc - 0x0db26918 (Size: 28 bytes, Frame: 0)
.globl __glim_TexCoord2f
.ent __glim_TexCoord2f
__glim_TexCoord2f:
    # Line 256
    lw	$t0,__glCurrentContext
    # Line 257
    lui	$t1,0x3f80
    # Line 258
    swc1	$f12,200($t0)
    # Line 259
    swc1	$f13,204($t0)
    # Line 260
    sw	$zero,208($t0)
    # Line 261
    jr	$ra
    # Line 262
    sw	$t1,212($t0)
.end __glim_TexCoord2f

# Function: __glim_TexCoord2fv
# Declared: Line 284 (Source lines: 284-292)
# Address: 0x0db26918 - 0x0db2693c (Size: 36 bytes, Frame: 0)
.globl __glim_TexCoord2fv
.ent __glim_TexCoord2fv
__glim_TexCoord2fv:
    # Line 284
    lw	$t2,__glCurrentContext
    # Line 285
    lwc1	$f10,0($a0)
    # Line 286
    lwc1	$f11,4($a0)
    # Line 287
    lui	$t3,0x3f80
    # Line 288
    swc1	$f10,200($t2)
    # Line 289
    swc1	$f11,204($t2)
    # Line 290
    sw	$zero,208($t2)
    # Line 291
    jr	$ra
    # Line 292
    sw	$t3,212($t2)
.end __glim_TexCoord2fv

