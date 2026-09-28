# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_vsave.ma
# Category: mips
# Compiler Options: 
# Total Functions: 8

.text

# Function: __glSaveN
# Declared: Line 40 (Source lines: 40-45)
# Address: 0x0db28084 - 0x0db2809c (Size: 24 bytes, Frame: 0)
.globl __glSaveN
.ent __glSaveN
__glSaveN:
    # Line 40
    ldc1	$f0,184($a0)
    # Line 41
    lw	$t9,11956($a0)
    # Line 42
    lw	$v1,192($a0)
    # Line 43
    sdc1	$f0,32($a1)
    # Line 44
    sw	$v1,40($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 45
    nop
.end __glSaveN

# Function: __glSaveCI
# Declared: Line 59 (Source lines: 59-63)
# Address: 0x0db2809c - 0x0db280b0 (Size: 20 bytes, Frame: 0)
.globl __glSaveCI
.ent __glSaveCI
__glSaveCI:
    # Line 59
    lw	$t9,11956($a0)
    # Line 60
    lw	$a2,424($a0)
    # Line 61
    addiu	$a3,$a1,144
    # Line 62
    sw	$a2,0($a3)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 63
    nop
.end __glSaveCI

# Function: __glSaveC
# Declared: Line 77 (Source lines: 77-82)
# Address: 0x0db280b0 - 0x0db280c8 (Size: 24 bytes, Frame: 0)
.globl __glSaveC
.ent __glSaveC
__glSaveC:
    # Line 77
    ldc1	$f1,168($a0)
    # Line 78
    lw	$t9,11956($a0)
    # Line 79
    ldc1	$f2,176($a0)
    # Line 80
    sdc1	$f1,144($a1)
    # Line 81
    sdc1	$f2,152($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 82
    nop
.end __glSaveC

# Function: __glSaveT
# Declared: Line 96 (Source lines: 96-101)
# Address: 0x0db280c8 - 0x0db280e0 (Size: 24 bytes, Frame: 0)
.globl __glSaveT
.ent __glSaveT
__glSaveT:
    # Line 96
    ldc1	$f3,200($a0)
    # Line 97
    lw	$t9,11956($a0)
    # Line 98
    ldc1	$f4,208($a0)
    # Line 99
    sdc1	$f3,48($a1)
    # Line 100
    sdc1	$f4,56($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 101
    nop
.end __glSaveT

# Function: __glSaveCT
# Declared: Line 115 (Source lines: 115-124)
# Address: 0x0db280e0 - 0x0db28108 (Size: 40 bytes, Frame: 0)
.globl __glSaveCT
.ent __glSaveCT
__glSaveCT:
    # Line 115
    ldc1	$f5,168($a0)
    # Line 116
    ldc1	$f6,176($a0)
    # Line 117
    ldc1	$f7,200($a0)
    # Line 118
    ldc1	$f8,208($a0)
    # Line 119
    lw	$t9,11956($a0)
    # Line 120
    sdc1	$f5,144($a1)
    # Line 121
    sdc1	$f6,152($a1)
    # Line 122
    sdc1	$f7,48($a1)
    # Line 123
    sdc1	$f8,56($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 124
    nop
.end __glSaveCT

# Function: __glSaveNT
# Declared: Line 138 (Source lines: 138-147)
# Address: 0x0db28108 - 0x0db28130 (Size: 40 bytes, Frame: 0)
.globl __glSaveNT
.ent __glSaveNT
__glSaveNT:
    # Line 138
    lw	$t9,11956($a0)
    # Line 139
    ldc1	$f9,184($a0)
    # Line 140
    lw	$t0,192($a0)
    # Line 141
    ldc1	$f10,200($a0)
    # Line 142
    ldc1	$f11,208($a0)
    # Line 143
    sdc1	$f9,32($a1)
    # Line 144
    sw	$t0,40($a1)
    # Line 145
    sdc1	$f10,48($a1)
    # Line 146
    sdc1	$f11,56($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 147
    nop
.end __glSaveNT

# Function: __glSaveCAll
# Declared: Line 161 (Source lines: 161-174)
# Address: 0x0db28130 - 0x0db28168 (Size: 56 bytes, Frame: 0)
.globl __glSaveCAll
.ent __glSaveCAll
__glSaveCAll:
    # Line 161
    ldc1	$f12,168($a0)
    # Line 162
    ldc1	$f13,176($a0)
    # Line 163
    ldc1	$f14,184($a0)
    # Line 164
    lw	$t1,192($a0)
    # Line 165
    lw	$t9,11956($a0)
    # Line 166
    sdc1	$f12,144($a1)
    # Line 167
    sdc1	$f13,152($a1)
    # Line 168
    ldc1	$f15,200($a0)
    # Line 169
    ldc1	$f16,208($a0)
    # Line 170
    sdc1	$f14,32($a1)
    # Line 171
    sw	$t1,40($a1)
    # Line 172
    sdc1	$f15,48($a1)
    # Line 173
    sdc1	$f16,56($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 174
    nop
.end __glSaveCAll

# Function: __glSaveCIAll
# Declared: Line 188 (Source lines: 188-200)
# Address: 0x0db28168 - 0x0db2819c (Size: 52 bytes, Frame: 0)
.globl __glSaveCIAll
.ent __glSaveCIAll
__glSaveCIAll:
    # Line 188
    lw	$t2,424($a0)
    # Line 189
    lw	$t9,11956($a0)
    # Line 190
    addiu	$t3,$a1,144
    # Line 191
    sw	$t2,0($t3)
    # Line 192
    ldc1	$f17,184($a0)
    # Line 193
    lw	$a4,192($a0)
    # Line 194
    ldc1	$f18,200($a0)
    # Line 195
    ldc1	$f19,208($a0)
    # Line 196
    sdc1	$f17,32($a1)
    # Line 197
    sw	$a4,40($a1)
    # Line 198
    sdc1	$f18,48($a1)
    # Line 199
    sdc1	$f19,56($a1)
    jalr	$t9
    nop
    jr	$ra
    nop
    # Line 200
    nop
.end __glSaveCIAll

