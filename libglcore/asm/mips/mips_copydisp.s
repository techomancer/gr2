# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/mips/mips_copydisp.s
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glMipsCopyDispatch
# Declared: Line 19 (Source lines: 19-157)
# Address: 0x0db24f14 - 0x0db25014 (Size: 256 bytes, Frame: 0)
.globl __glMipsCopyDispatch
.ent __glMipsCopyDispatch
__glMipsCopyDispatch:
    # Line 19
    li	$v0,0x1ef
.L0db24f18:
    # Line 47
    ldc1	$f0,0($a0)
    # Line 48
    ldc1	$f2,8($a0)
    # Line 49
    ldc1	$f4,16($a0)
    # Line 50
    ldc1	$f6,24($a0)
    # Line 51
    ldc1	$f8,32($a0)
    # Line 52
    ldc1	$f10,40($a0)
    # Line 53
    ldc1	$f12,48($a0)
    # Line 54
    ldc1	$f14,56($a0)
    # Line 55
    ldc1	$f16,64($a0)
    # Line 56
    ldc1	$f18,72($a0)
    # Line 58
    addiu	$v0,$v0,-20
    # Line 81
    sdc1	$f0,0($a1)
    # Line 82
    sdc1	$f2,8($a1)
    # Line 83
    sdc1	$f4,16($a1)
    # Line 84
    sdc1	$f6,24($a1)
    # Line 85
    sdc1	$f8,32($a1)
    # Line 86
    sdc1	$f10,40($a1)
    # Line 87
    sdc1	$f12,48($a1)
    # Line 88
    sdc1	$f14,56($a1)
    # Line 89
    sdc1	$f16,64($a1)
    # Line 90
    sdc1	$f18,72($a1)
    # Line 98
    addiu	$a0,$a0,80
    # Line 99
    bgtz	$v0,.L0db24f18
    # Line 100
    addiu	$a1,$a1,80
    # Line 106
    addi	$v0,$v0,19
    # Line 121
    li	$at,2
    beq	$v0,$at,.L0db25008
    ldc1	$f0,0($a0)
    # Line 122
    li	$at,4
    beq	$v0,$at,.L0db25004
    ldc1	$f2,8($a0)
    # Line 123
    li	$at,6
    beq	$v0,$at,.L0db25000
    ldc1	$f4,16($a0)
    # Line 124
    li	$at,8
    beq	$v0,$at,.L0db24ffc
    ldc1	$f6,24($a0)
    # Line 125
    li	$at,10
    beq	$v0,$at,.L0db24ff8
    ldc1	$f8,32($a0)
    # Line 126
    li	$at,12
    beq	$v0,$at,.L0db24ff4
    ldc1	$f10,40($a0)
    # Line 127
    li	$at,14
    beq	$v0,$at,.L0db24ff0
    ldc1	$f12,48($a0)
    # Line 128
    li	$at,16
    beq	$v0,$at,.L0db24fec
    ldc1	$f14,56($a0)
    # Line 129
    li	$at,18
    beq	$v0,$at,.L0db24fe8
    ldc1	$f16,64($a0)
.L0db24fe8:
    # Line 145
    sdc1	$f16,64($a1)
.L0db24fec:
    # Line 146
    sdc1	$f14,56($a1)
.L0db24ff0:
    # Line 147
    sdc1	$f12,48($a1)
.L0db24ff4:
    # Line 148
    sdc1	$f10,40($a1)
.L0db24ff8:
    # Line 149
    sdc1	$f8,32($a1)
.L0db24ffc:
    # Line 150
    sdc1	$f6,24($a1)
.L0db25000:
    # Line 151
    sdc1	$f4,16($a1)
.L0db25004:
    # Line 152
    sdc1	$f2,8($a1)
.L0db25008:
    # Line 153
    sdc1	$f0,0($a1)
    # Line 156
    jr	$ra
    # Line 157
    nop
.end __glMipsCopyDispatch

