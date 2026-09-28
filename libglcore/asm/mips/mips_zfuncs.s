# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_zfuncs.ma
# Category: mips
# Compiler Options: 
# Total Functions: 23

.text

# Function: __glDT_NEVER
# Declared: Line 47 (Source lines: 47-48)
# Address: 0x0db288f4 - 0x0db288fc (Size: 8 bytes, Frame: 0)
.globl __glDT_NEVER
.ent __glDT_NEVER
__glDT_NEVER:
    # Line 47
    jr	$ra
    # Line 48
    li	$v0,0
.end __glDT_NEVER

# Function: __glDT_LEQUAL
# Declared: Line 60 (Source lines: 60-71)
# Address: 0x0db288fc - 0x0db2891c (Size: 32 bytes, Frame: 0)
.globl __glDT_LEQUAL
.ent __glDT_LEQUAL
__glDT_LEQUAL:
    # Line 60
    sltu	$at,$a1,$a0
    bnez	$at,.L0db28914
    # Line 61
    nop
    # Line 64
    sw	$a0,0($a2)
    # Line 65
    jr	$ra
    # Line 66
    li	$v0,1
.L0db28914:
    # Line 70
    jr	$ra
    # Line 71
    li	$v0,0
.end __glDT_LEQUAL

# Function: __glDT_LEQUAL_s
# Declared: Line 83 (Source lines: 83-94)
# Address: 0x0db2891c - 0x0db2893c (Size: 32 bytes, Frame: 0)
.globl __glDT_LEQUAL_s
.ent __glDT_LEQUAL_s
__glDT_LEQUAL_s:
    # Line 83
    slt	$at,$a1,$a0
    bnez	$at,.L0db28934
    # Line 84
    nop
    # Line 87
    sw	$a0,0($a2)
    # Line 88
    jr	$ra
    # Line 89
    li	$v0,1
.L0db28934:
    # Line 93
    jr	$ra
    # Line 94
    li	$v0,0
.end __glDT_LEQUAL_s

# Function: __glDT_LESS
# Declared: Line 107 (Source lines: 107-118)
# Address: 0x0db2893c - 0x0db2895c (Size: 32 bytes, Frame: 0)
.globl __glDT_LESS
.ent __glDT_LESS
__glDT_LESS:
    # Line 107
    sltu	$at,$a0,$a1
    beqz	$at,.L0db28954
    # Line 108
    nop
    # Line 111
    sw	$a0,0($a2)
    # Line 112
    jr	$ra
    # Line 113
    li	$v0,1
.L0db28954:
    # Line 117
    jr	$ra
    # Line 118
    li	$v0,0
.end __glDT_LESS

# Function: __glDT_LESS_s
# Declared: Line 131 (Source lines: 131-142)
# Address: 0x0db2895c - 0x0db2897c (Size: 32 bytes, Frame: 0)
.globl __glDT_LESS_s
.ent __glDT_LESS_s
__glDT_LESS_s:
    # Line 131
    slt	$at,$a0,$a1
    beqz	$at,.L0db28974
    # Line 132
    nop
    # Line 135
    sw	$a0,0($a2)
    # Line 136
    jr	$ra
    # Line 137
    li	$v0,1
.L0db28974:
    # Line 141
    jr	$ra
    # Line 142
    li	$v0,0
.end __glDT_LESS_s

# Function: __glDT_EQUAL
# Declared: Line 155 (Source lines: 155-166)
# Address: 0x0db2897c - 0x0db28998 (Size: 28 bytes, Frame: 0)
.globl __glDT_EQUAL
.ent __glDT_EQUAL
__glDT_EQUAL:
    # Line 155
    bne	$a0,$a1,.L0db28990
    # Line 156
    nop
    # Line 159
    sw	$a0,0($a2)
    # Line 160
    jr	$ra
    # Line 161
    li	$v0,1
.L0db28990:
    # Line 165
    jr	$ra
    # Line 166
    li	$v0,0
.end __glDT_EQUAL

# Function: __glDT_GREATER
# Declared: Line 179 (Source lines: 179-190)
# Address: 0x0db28998 - 0x0db289b8 (Size: 32 bytes, Frame: 0)
.globl __glDT_GREATER
.ent __glDT_GREATER
__glDT_GREATER:
    # Line 179
    sltu	$at,$a1,$a0
    beqz	$at,.L0db289b0
    # Line 180
    nop
    # Line 183
    sw	$a0,0($a2)
    # Line 184
    jr	$ra
    # Line 185
    li	$v0,1
.L0db289b0:
    # Line 189
    jr	$ra
    # Line 190
    li	$v0,0
.end __glDT_GREATER

# Function: __glDT_GREATER_s
# Declared: Line 203 (Source lines: 203-214)
# Address: 0x0db289b8 - 0x0db289d8 (Size: 32 bytes, Frame: 0)
.globl __glDT_GREATER_s
.ent __glDT_GREATER_s
__glDT_GREATER_s:
    # Line 203
    slt	$at,$a1,$a0
    beqz	$at,.L0db289d0
    # Line 204
    nop
    # Line 207
    sw	$a0,0($a2)
    # Line 208
    jr	$ra
    # Line 209
    li	$v0,1
.L0db289d0:
    # Line 213
    jr	$ra
    # Line 214
    li	$v0,0
.end __glDT_GREATER_s

# Function: __glDT_NOTEQUAL
# Declared: Line 228 (Source lines: 228-239)
# Address: 0x0db289d8 - 0x0db289f4 (Size: 28 bytes, Frame: 0)
.globl __glDT_NOTEQUAL
.ent __glDT_NOTEQUAL
__glDT_NOTEQUAL:
    # Line 228
    beq	$a0,$a1,.L0db289ec
    # Line 229
    nop
    # Line 232
    sw	$a0,0($a2)
    # Line 233
    jr	$ra
    # Line 234
    li	$v0,1
.L0db289ec:
    # Line 238
    jr	$ra
    # Line 239
    li	$v0,0
.end __glDT_NOTEQUAL

# Function: __glDT_GEQUAL
# Declared: Line 252 (Source lines: 252-263)
# Address: 0x0db289f4 - 0x0db28a14 (Size: 32 bytes, Frame: 0)
.globl __glDT_GEQUAL
.ent __glDT_GEQUAL
__glDT_GEQUAL:
    # Line 252
    sltu	$at,$a0,$a1
    bnez	$at,.L0db28a0c
    # Line 253
    nop
    # Line 256
    sw	$a0,0($a2)
    # Line 257
    jr	$ra
    # Line 258
    li	$v0,1
.L0db28a0c:
    # Line 262
    jr	$ra
    # Line 263
    li	$v0,0
.end __glDT_GEQUAL

# Function: __glDT_GEQUAL_s
# Declared: Line 276 (Source lines: 276-287)
# Address: 0x0db28a14 - 0x0db28a34 (Size: 32 bytes, Frame: 0)
.globl __glDT_GEQUAL_s
.ent __glDT_GEQUAL_s
__glDT_GEQUAL_s:
    # Line 276
    slt	$at,$a0,$a1
    bnez	$at,.L0db28a2c
    # Line 277
    nop
    # Line 280
    sw	$a0,0($a2)
    # Line 281
    jr	$ra
    # Line 282
    li	$v0,1
.L0db28a2c:
    # Line 286
    jr	$ra
    # Line 287
    li	$v0,0
.end __glDT_GEQUAL_s

# Function: __glDT_ALWAYS
# Declared: Line 302 (Source lines: 302-304)
# Address: 0x0db28a34 - 0x0db28a40 (Size: 12 bytes, Frame: 0)
.globl __glDT_ALWAYS
.ent __glDT_ALWAYS
__glDT_ALWAYS:
    # Line 302
    sw	$a0,0($a2)
    # Line 303
    jr	$ra
    # Line 304
    li	$v0,1
.end __glDT_ALWAYS

# Function: __glDT_LEQUAL_M
# Declared: Line 325 (Source lines: 325-327)
# Address: 0x0db28a40 - 0x0db28a4c (Size: 12 bytes, Frame: 0)
.globl __glDT_LEQUAL_M
.ent __glDT_LEQUAL_M
__glDT_LEQUAL_M:
    # Line 325
    sltu	$v0,$a1,$a0
    # Line 326
    jr	$ra
    # Line 327
    xori	$v0,$v0,0x1
.end __glDT_LEQUAL_M

# Function: __glDT_LEQUAL_M_s
# Declared: Line 344 (Source lines: 344-346)
# Address: 0x0db28a4c - 0x0db28a58 (Size: 12 bytes, Frame: 0)
.globl __glDT_LEQUAL_M_s
.ent __glDT_LEQUAL_M_s
__glDT_LEQUAL_M_s:
    # Line 344
    slt	$v0,$a1,$a0
    # Line 345
    jr	$ra
    # Line 346
    xori	$v0,$v0,0x1
.end __glDT_LEQUAL_M_s

# Function: __glDT_LESS_M
# Declared: Line 359 (Source lines: 359-360)
# Address: 0x0db28a58 - 0x0db28a60 (Size: 8 bytes, Frame: 0)
.globl __glDT_LESS_M
.ent __glDT_LESS_M
__glDT_LESS_M:
    # Line 359
    jr	$ra
    # Line 360
    sltu	$v0,$a0,$a1
.end __glDT_LESS_M

# Function: __glDT_LESS_M_s
# Declared: Line 374 (Source lines: 374-375)
# Address: 0x0db28a60 - 0x0db28a68 (Size: 8 bytes, Frame: 0)
.globl __glDT_LESS_M_s
.ent __glDT_LESS_M_s
__glDT_LESS_M_s:
    # Line 374
    jr	$ra
    # Line 375
    slt	$v0,$a0,$a1
.end __glDT_LESS_M_s

# Function: __glDT_EQUAL_M
# Declared: Line 392 (Source lines: 392-394)
# Address: 0x0db28a68 - 0x0db28a74 (Size: 12 bytes, Frame: 0)
.globl __glDT_EQUAL_M
.ent __glDT_EQUAL_M
__glDT_EQUAL_M:
    # Line 392
    xor	$v0,$a0,$a1
    # Line 393
    jr	$ra
    # Line 394
    sltiu	$v0,$v0,1
.end __glDT_EQUAL_M

# Function: __glDT_GREATER_M
# Declared: Line 407 (Source lines: 407-408)
# Address: 0x0db28a74 - 0x0db28a7c (Size: 8 bytes, Frame: 0)
.globl __glDT_GREATER_M
.ent __glDT_GREATER_M
__glDT_GREATER_M:
    # Line 407
    jr	$ra
    # Line 408
    sltu	$v0,$a1,$a0
.end __glDT_GREATER_M

# Function: __glDT_GREATER_M_s
# Declared: Line 421 (Source lines: 421-422)
# Address: 0x0db28a7c - 0x0db28a84 (Size: 8 bytes, Frame: 0)
.globl __glDT_GREATER_M_s
.ent __glDT_GREATER_M_s
__glDT_GREATER_M_s:
    # Line 421
    jr	$ra
    # Line 422
    slt	$v0,$a1,$a0
.end __glDT_GREATER_M_s

# Function: __glDT_NOTEQUAL_M
# Declared: Line 440 (Source lines: 440-442)
# Address: 0x0db28a84 - 0x0db28a90 (Size: 12 bytes, Frame: 0)
.globl __glDT_NOTEQUAL_M
.ent __glDT_NOTEQUAL_M
__glDT_NOTEQUAL_M:
    # Line 440
    xor	$v0,$a0,$a1
    # Line 441
    jr	$ra
    # Line 442
    sltu	$v0,$zero,$v0
.end __glDT_NOTEQUAL_M

# Function: __glDT_GEQUAL_M
# Declared: Line 459 (Source lines: 459-461)
# Address: 0x0db28a90 - 0x0db28a9c (Size: 12 bytes, Frame: 0)
.globl __glDT_GEQUAL_M
.ent __glDT_GEQUAL_M
__glDT_GEQUAL_M:
    # Line 459
    sltu	$v0,$a0,$a1
    # Line 460
    jr	$ra
    # Line 461
    xori	$v0,$v0,0x1
.end __glDT_GEQUAL_M

# Function: __glDT_GEQUAL_M_s
# Declared: Line 478 (Source lines: 478-480)
# Address: 0x0db28a9c - 0x0db28aa8 (Size: 12 bytes, Frame: 0)
.globl __glDT_GEQUAL_M_s
.ent __glDT_GEQUAL_M_s
__glDT_GEQUAL_M_s:
    # Line 478
    slt	$v0,$a0,$a1
    # Line 479
    jr	$ra
    # Line 480
    xori	$v0,$v0,0x1
.end __glDT_GEQUAL_M_s

# Function: __glDT_ALWAYS_M
# Declared: Line 492 (Source lines: 492-493)
# Address: 0x0db28aa8 - 0x0db28ab0 (Size: 8 bytes, Frame: 0)
.globl __glDT_ALWAYS_M
.ent __glDT_ALWAYS_M
__glDT_ALWAYS_M:
    # Line 492
    jr	$ra
    # Line 493
    li	$v0,1
.end __glDT_ALWAYS_M

