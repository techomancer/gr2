# Source: ../soft/so_speccache.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_speccache.c
# Total Functions: 5

.text

# Function: __glInitLUTCache
# Declared: Line 48 (Source lines: 49-56)
# Address: 0x0dada8e0 - 0x0dada930 (Size: 80 bytes, Frame: 48)
.globl __glInitLUTCache
.ent __glInitLUTCache
__glInitLUTCache:
    # Line 52
    li	$a1,16
    # Line 49
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x12
    addiu	$at,$at,-12408
    # addu	gp,t9,at
    # Line 52
    lw	$t9,0($a0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 49
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 52
    sw	$v0,28200($s8)
    # Line 56
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,48
    # Line 55
    li	$v1,1
    sw	$v1,4($v0)
    # Line 56
    jr	$ra
    # Line 54
    sw	$zero,0($v0)
.end __glInitLUTCache

# Function: __glFreeLUTCache
# Declared: Line 58 (Source lines: 59-75)
# Address: 0x0dada930 - 0x0dadaa64 (Size: 308 bytes, Frame: 208)
.globl __glFreeLUTCache
.ent __glFreeLUTCache
__glFreeLUTCache:
    # Line 59
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$s2,48($sp)
    sd	$ra,32($sp)
    sd	$s0,8($sp)
    sd	$s3,0($sp)
    # Line 65
    lw	$s3,28200($a0)
    # Line 59
    move	$s0,$a0
    # sd	gp,16(sp)
    # Line 66
    lw	$a1,0($s3)
    # Line 59
    lui	$at,0x12
    addiu	$at,$at,-12488
    # Line 66
    blez	$a1,.L0dada9b4
    # Line 59
    nop
    # Line 66
    move	$a0,$a1
    move	$s1,$s3
    sll	$s2,$a1,0x3
    andi	$at,$a1,0x1
    beqz	$at,.L0dada9a0
    addu	$s2,$s2,$s3
    # Line 69
    lw	$a1,12($s1)
    lw	$v1,0($a1)
    addiu	$v1,$v1,-1
    sw	$v1,0($a1)
    lw	$a1,12($s1)
    lw	$v0,0($a1)
    beqz	$v0,.L0dadaa44
    # Line 67
    addiu	$s1,$s1,8
.L0dada9a0:
    sra	$a2,$a0,0x1
    bnez	$a2,.L0dada9ec
    sd	$ra,32($sp)
    ld	$s1,40($sp)
.L0dada9b0:
    ld	$s2,48($sp)
.L0dada9b4:
    # Line 74
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s3
    # ld	gp,16(sp)
    # Line 75
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dada9dc:
    # Line 71
    jalr	$t9
    move	$a0,$s0
.L0dada9e4:
    # Line 67
    beql	$s1,$s2,.L0dada9b0
    ld	$s1,40($sp)
.L0dada9ec:
    # Line 69
    lw	$v1,12($s1)
    lw	$v0,0($v1)
    addiu	$v0,$v0,-1
    sw	$v0,0($v1)
    lw	$a1,12($s1)
    lw	$at,0($a1)
    beqzl	$at,.L0dadaa34
    # Line 71
    lw	$t9,12($s0)
    # Line 69
    lw	$a2,20($s1)
.L0dadaa10:
    lw	$a1,0($a2)
    addiu	$a1,$a1,-1
    sw	$a1,0($a2)
    lw	$a1,20($s1)
    lw	$v1,0($a1)
    bnez	$v1,.L0dada9e4
    # Line 67
    addiu	$s1,$s1,16
    b	.L0dada9dc
    # Line 71
    lw	$t9,12($s0)
.L0dadaa34:
    jalr	$t9
    move	$a0,$s0
    b	.L0dadaa10
    # Line 69
    lw	$a2,20($s1)
.L0dadaa44:
    # Line 71
    lw	$t9,12($s0)
    sd	$a0,24($sp)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$a0,24($sp)
    b	.L0dada9a0
    ld	$ra,32($sp)
.end __glFreeLUTCache

# Function: findEntry
# Declared: Line 77 (Source lines: 85-108)
# Address: 0x0dadaa64 - 0x0dadaad8 (Size: 116 bytes, Frame: 0)
.ent findEntry
findEntry:
    # Line 85
    lw	$a3,0($a0)
    # Line 88
    blez	$a3,.L0dadaac4
    # Line 87
    move	$a4,$zero
    b	.L0dadaa84
    # Line 88
    addu	$a6,$a4,$a3
.L0dadaa78:
    # Line 104
    slt	$at,$a4,$a3
    beqz	$at,.L0dadaac4
    # Line 88
    addu	$a6,$a4,$a3
.L0dadaa84:
    srl	$a5,$a6,0x1f
    addu	$a5,$a5,$a6
    sra	$a5,$a5,0x1
    sll	$a6,$a5,0x3
    addu	$a6,$a6,$a0
    lwc1	$f4,8($a6)
    c.eq.s	$f4,$f13
    nop
    bc1tl	.L0dadaad0
    # Line 95
    lw	$v0,12($a6)
    # Line 97
    c.lt.s	$f13,$f4
    nop
    bc1fl	.L0dadaa78
    # Line 104
    addiu	$a4,$a5,1
    # Line 101
    b	.L0dadaa78
    move	$a3,$a5
.L0dadaac4:
    # Line 108
    move	$v0,$zero
    jr	$ra
    # Line 107
    sw	$a4,0($a2)
.L0dadaad0:
    # Line 97
    jr	$ra
    # Line 96
    sw	$a5,0($a2)
.end findEntry

# Function: __glCreateSpecLUT
# Declared: Line 111 (Source lines: 112-220)
# Address: 0x0dadaad8 - 0x0dadadb0 (Size: 728 bytes, Frame: 128)
.globl __glCreateSpecLUT
.ent __glCreateSpecLUT
__glCreateSpecLUT:
    # Line 112
    addiu	$sp,$sp,-128
    sd	$s1,56($sp)
    # Line 124
    addiu	$a2,$sp,0
    sdc1	$f22,40($sp)
    # Line 112
    mov.s	$f22,$f13
    sd	$s2,88($sp)
    move	$s2,$a0
    # sd	gp,80(sp)
    sd	$ra,64($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,-12912
    # addu	gp,t9,ra
    # lw $t9, -32712($gp) # &sub_0dae0000
    sd	$s0,72($sp)
    # Line 122
    lw	$s0,28200($a0)
    # Line 112
    addiu	$t9,$t9,-21916
    # Line 124
    bal __glFreeLUTCache
    move	$a0,$s0
    beqz	$v0,.L0dadab58
    move	$s1,$v0
    # Line 126
    ld	$ra,64($sp)
    # ld	gp,80(sp)
    ld	$s0,72($sp)
    ld	$s2,88($sp)
    # Line 125
    lw	$at,0($s1)
    # Line 126
    ldc1	$f22,40($sp)
    move	$v0,$s1
    # Line 125
    addiu	$at,$at,1
    sw	$at,0($s1)
    # Line 126
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadab58:
    # Line 133
    lw	$v0,0($s0)
    # Line 149
    li	$s1,1
    sd	$s4,96($sp)
    # Line 133
    slti	$v1,$v0,32
    bnez	$v1,.L0dadaba8
    move	$s4,$v0
    # Line 149
    sll	$a0,$s4,0x3
    sd	$s5,48($sp)
    blez	$s4,.L0dadada4
    move	$s5,$zero
    move	$v0,$s0
.L0dadab84:
    # Line 150
    lw	$s4,12($v0)
    lw	$a5,0($s4)
    beq	$a5,$s1,.L0dadace0
    # Line 149
    addu	$a2,$a0,$s0
    addiu	$v0,$v0,8
    bne	$a2,$v0,.L0dadab84
    addiu	$s5,$s5,1
    b	.L0dadad20
    ld	$s5,48($sp)
.L0dadaba8:
    # Line 167
    li	$s1,1
.L0dadabac:
    # Line 175
    lw	$a5,4($s0)
    # Line 174
    addiu	$s4,$v0,1
    # Line 175
    slt	$a3,$a5,$s4
    bnez	$a3,.L0dadad78
    # Line 174
    sw	$s4,0($s0)
.L0dadabc0:
    # Line 180
    lw	$v0,0($sp)
    subu	$a5,$s4,$v0
    beq	$a5,$s1,.L0dadabf0
    # Line 192
    sll	$a2,$a5,0x3
    addiu	$a2,$a2,-8
    sll	$a0,$v0,0x3
    # lw $t9, -23008($gp) # &memcpy
    addu	$a0,$a0,$s0
    addiu	$a1,$a0,8
    jal	memcpy
    addiu	$a0,$a0,16
    lw	$v0,0($sp)
.L0dadabf0:
    # Line 196
    sll	$s4,$v0,0x3
    addu	$s4,$s4,$s0
    # Line 197
    swc1	$f22,8($s4)
    # Line 198
    lw	$t9,0($s2)
    li	$a1,1040
    move	$a0,$s2
    jalr	$t9
    # Line 196
    addiu	$s4,$s4,8
    # Line 198
    dmtc1	$zero,$f4
    cvt.d.s	$f6,$f22
    c.eq.d	$f6,$f4
    ldc1	$f5,_lit8_3ff0000000000000
    move	$s1,$v0
    bc1f	.L0dadad40
    sw	$v0,4($s4)
    sd	$s5,48($sp)
    sdc1	$f20,16($sp)
    sdc1	$f24,24($sp)
    sdc1	$f28,32($sp)
    # Line 203
    mov.d	$f28,$f4
    ld	$s4,96($sp)
.L0dadac44:
    # Line 211
    addiu	$s0,$s1,16
    # Line 212
    sub.d	$f0,$f5,$f28
    ldc1	$f24,_lit8_406fe00000000000
    div.d	$f24,$f24,$f0
    # Line 210
    mov.d	$f20,$f28
    # Line 212
    li	$s2,-1
    li	$s5,255
    sdc1	$f24,8($sp)
    div.d	$f24,$f5,$f24
.L0dadac68:
    # Line 213
    cvt.s.d	$f12,$f20
    mov.s	$f13,$f22
    # lw $t9, -22992($gp) # &powf
    # Line 214
    add.d	$f20,$f24,$f20
    # Line 212
    addiu	$s5,$s5,-1
    # Line 213
    jal	powf
    addiu	$s0,$s0,4
    # Line 212
    bne	$s5,$s2,.L0dadac68
    # Line 213
    swc1	$f0,-4($s0)
    # ld	gp,80(sp)
    # Line 220
    ld	$s0,72($sp)
    ld	$s2,88($sp)
    ldc1	$f20,16($sp)
    # Line 219
    swc1	$f22,12($s1)
    # Line 220
    ldc1	$f22,40($sp)
    ldc1	$f24,24($sp)
    # Line 216
    cvt.s.d	$f1,$f28
    # Line 220
    ldc1	$f28,32($sp)
    move	$v0,$s1
    ldc1	$f2,8($sp)
    # Line 218
    li	$s5,2
    sw	$s5,0($s1)
    # Line 217
    cvt.s.d	$f2,$f2
    # Line 220
    ld	$s5,48($sp)
    ld	$ra,64($sp)
    # Line 216
    swc1	$f1,4($s1)
    # Line 217
    swc1	$f2,8($s1)
    # Line 220
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadace0:
    # Line 153
    addiu	$a3,$a5,-1
    sw	$a3,0($s4)
    # Line 155
    addiu	$a1,$v0,16
    # Line 154
    lw	$a2,0($s0)
    # Line 155
    addiu	$a0,$v0,8
    # lw $t9, -23008($gp) # &memcpy
    # Line 154
    addiu	$a2,$a2,-1
    sw	$a2,0($s0)
    # Line 155
    subu	$a2,$a2,$s5
    jal	memcpy
    sll	$a2,$a2,0x3
    # Line 158
    lw	$t9,12($s2)
    move	$a0,$s2
    move	$a1,$s4
    jalr	$t9
    ld	$s5,48($sp)
.L0dadad20:
    # lw $t9, -32712($gp) # &sub_0dae0000
    # Line 167
    move	$a0,$s0
    mov.s	$f13,$f22
    addiu	$t9,$t9,-21916
    bal __glFreeLUTCache
    addiu	$a2,$sp,0
    b	.L0dadabac
    lw	$v0,0($s0)
.L0dadad40:
    ldc1	$f13,_lit8_3ff0000000000000
    # Line 205
    div.d	$f13,$f13,$f6
    sdc1	$f28,32($sp)
    # lw $t9, -22992($gp) # &powf
    lwc1	$f12,_lit_3a378034
    ld	$s4,96($sp)
    jal	powf
    cvt.s.d	$f13,$f13
    sd	$s5,48($sp)
    sdc1	$f20,16($sp)
    sdc1	$f24,24($sp)
    ldc1	$f5,_lit8_3ff0000000000000
    b	.L0dadac44
    cvt.d.s	$f28,$f0
.L0dadad78:
    # Line 179
    addiu	$a3,$a5,6
    sw	$a3,4($s0)
    # Line 180
    move	$a1,$s0
    lw	$t9,8($s2)
    move	$a0,$s2
    sll	$a2,$a5,0x3
    jalr	$t9
    addiu	$a2,$a2,64
    move	$s0,$v0
    b	.L0dadabc0
    sw	$v0,28200($s2)
.L0dadada4:
    # Line 149
    li	$s1,1
    b	.L0dadad20
    ld	$s5,48($sp)
.end __glCreateSpecLUT

# Function: __glFreeSpecLUT
# Declared: Line 223 (Source lines: 224-244)
# Address: 0x0dadadb0 - 0x0dadae14 (Size: 100 bytes, Frame: 32)
.globl __glFreeSpecLUT
.ent __glFreeSpecLUT
__glFreeSpecLUT:
    # Line 224
    move	$a3,$a0
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$at,0x12
    addiu	$at,$at,-13640
    beqz	$a1,.L0dadade8
    nop
    # Line 229
    lw	$v0,0($a1)
    addiu	$v0,$v0,-1
    blez	$v0,.L0dadadf4
    sw	$v0,0($a1)
    # ld	gp,0(sp)
    # Line 231
    jr	$ra
    addiu	$sp,$sp,32
.L0dadade8:
    # ld	gp,0(sp)
    # Line 225
    jr	$ra
    addiu	$sp,$sp,32
.L0dadadf4:
    # Line 243
    lw	$t9,12($a3)
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 244
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreeSpecLUT

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit_3a378034:
    .word 0x3a378034

