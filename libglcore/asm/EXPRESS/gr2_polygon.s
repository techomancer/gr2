# Source: ../EXPRESS/gr2_polygon.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_polygon.c
# Total Functions: 8

.text

# Function: __glExpPassCullFace
# Declared: Line 30 (Source lines: 31-52)
# Address: 0x0da647ac - 0x0da6483c (Size: 144 bytes, Frame: 0)
.globl __glExpPassCullFace
.ent __glExpPassCullFace
__glExpPassCullFace:
    # Line 31
    lw	$at,1696($a0)
    # Line 35
    li	$v1,1029
    # Line 31
    andi	$at,$at,0x1000
    beqz	$at,.L0da647ec
    # Line 35
    li	$v0,1028
    lw	$a2,468($a0)
    # Line 37
    lui	$at,0x4
    # Line 35
    beq	$a2,$v0,.L0da6480c
    # Line 37
    li	$a1,1
    # Line 42
    lui	$at,0x4
    # Line 35
    beq	$a2,$v1,.L0da64824
    # Line 42
    li	$a1,1
    # Line 35
    li	$a1,1032
    # Line 45
    lui	$v1,0x4
    # Line 35
    beq	$a2,$a1,.L0da647f4
    # Line 46
    lui	$v0,0x4
.L0da647ec:
    # Line 52
    jr	$ra
    nop
.L0da647f4:
    # Line 45
    ori	$v1,$v1,0x206c
    # Line 46
    ori	$v0,$v0,0x2070
    # Line 45
    li	$at,1
    sw	$at,0($v1)
    # Line 52
    jr	$ra
    # Line 46
    sw	$at,0($v0)
.L0da6480c:
    # Line 37
    ori	$at,$at,0x206c
    sw	$a1,0($at)
    # Line 38
    lui	$v1,0x4
    ori	$v1,$v1,0x2070
    # Line 52
    jr	$ra
    # Line 38
    sw	$zero,0($v1)
.L0da64824:
    # Line 42
    ori	$at,$at,0x2070
    # Line 41
    lui	$v0,0x4
    ori	$v0,$v0,0x206c
    sw	$zero,0($v0)
    # Line 52
    jr	$ra
    # Line 42
    sw	$a1,0($at)
.end __glExpPassCullFace

# Function: __glExpEnableCullFace
# Declared: Line 54 (Source lines: 55-64)
# Address: 0x0da6483c - 0x0da64898 (Size: 92 bytes, Frame: 32)
.globl __glExpEnableCullFace
.ent __glExpEnableCullFace
__glExpEnableCullFace:
    # Line 55
    addiu	$sp,$sp,-32
    # Line 61
    lui	$a1,0x4
    # sd	gp,0(sp)
    # Line 55
    lw	$at,1696($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,12332
    andi	$at,$at,0x1000
    beqz	$at,.L0da64878
    nop
    # Line 59
    # lw $t9, -32052($gp) # &__glExpPassCullFace
    sd	$ra,8($sp)
    bal __glExpPassCullFace
    nop
    b	.L0da6488c
    ld	$ra,8($sp)
.L0da64878:
    # Line 61
    ori	$a1,$a1,0x206c
    sw	$zero,0($a1)
    # Line 62
    lui	$v1,0x4
    ori	$v1,$v1,0x2070
    sw	$zero,0($v1)
.L0da6488c:
    # ld	gp,0(sp)
    # Line 64
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpEnableCullFace

# Function: __glExpConvertStipple
# Declared: Line 66 (Source lines: 67-115)
# Address: 0x0da64898 - 0x0da64974 (Size: 220 bytes, Frame: 48)
.globl __glExpConvertStipple
.ent __glExpConvertStipple
__glExpConvertStipple:
    # Line 67
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x19
    addiu	$at,$at,12240
    # addu	gp,t9,at
    # Line 72
    # lw $t9, -28412($gp) # &__glConvertStipple
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jal	__glConvertStipple
    # Line 67
    move	$s0,$a0
    # Line 97
    move	$a2,$zero
    move	$a0,$s0
    li	$a3,16
.L0da648cc:
    # Line 103
    sll	$a1,$a2,0x3
    subu	$a1,$s0,$a1
    lbu	$at,612($a1)
    # Line 97
    addiu	$a0,$a0,4
    addiu	$a2,$a2,1
    # Line 103
    sll	$at,$at,0x8
    lbu	$v0,613($a1)
    lbu	$v1,608($a1)
    lbu	$a1,609($a1)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    sll	$a1,$a1,0x10
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    # Line 97
    bne	$a2,$a3,.L0da648cc
    # Line 103
    sw	$v0,31692($a0)
    # Line 105
    move	$a2,$zero
    move	$a0,$s0
.L0da64914:
    # Line 111
    sll	$v1,$a2,0x3
    subu	$v1,$s0,$v1
    lbu	$a1,614($v1)
    # Line 105
    addiu	$a0,$a0,4
    addiu	$a2,$a2,1
    # Line 111
    sll	$a1,$a1,0x8
    lbu	$at,615($v1)
    lbu	$v0,610($v1)
    lbu	$v1,611($v1)
    or	$at,$at,$a1
    sll	$v0,$v0,0x18
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 105
    bne	$a2,$a3,.L0da64914
    # Line 111
    sw	$at,31756($a0)
    # Line 114
    # lw $t9, -32036($gp) # &__glExpPassPolygonStipple
    bal __glExpPassPolygonStipple
    move	$a0,$s0
    # Line 115
    ld	$ra,8($sp)
    # ld	gp,16(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glExpConvertStipple

# Function: __glExpPassFrontFace
# Declared: Line 117 (Source lines: 119-127)
# Address: 0x0da64974 - 0x0da649b4 (Size: 64 bytes, Frame: 0)
.globl __glExpPassFrontFace
.ent __glExpPassFrontFace
__glExpPassFrontFace:
    # Line 119
    lw	$a2,472($a0)
    li	$at,2304
    beq	$a2,$at,.L0da649a4
    li	$v0,2305
    # Line 124
    lui	$a0,0x4
    # Line 119
    beq	$a2,$v0,.L0da64998
    # Line 124
    li	$v1,1
    # Line 127
    jr	$ra
    nop
.L0da64998:
    # Line 124
    ori	$a0,$a0,0x2420
    # Line 127
    jr	$ra
    # Line 124
    sw	$v1,0($a0)
.L0da649a4:
    # Line 121
    lui	$at,0x4
    ori	$at,$at,0x2420
    # Line 127
    jr	$ra
    # Line 121
    sw	$zero,0($at)
.end __glExpPassFrontFace

# Function: __glExpPassPolygonStipple
# Declared: Line 129 (Source lines: 130-141)
# Address: 0x0da649b4 - 0x0da64a10 (Size: 92 bytes, Frame: 0)
.globl __glExpPassPolygonStipple
.ent __glExpPassPolygonStipple
__glExpPassPolygonStipple:
    # Line 136
    li	$v0,1
    # Line 130
    lw	$at,1696($a0)
    # Line 136
    lui	$v1,0x4
    # Line 130
    andi	$at,$at,0x2000
    beqz	$at,.L0da64a08
    move	$a2,$a0
    # Line 136
    ori	$v1,$v1,0x207c
    addiu	$a4,$a0,128
    sw	$v0,0($v1)
    lui	$a3,0x4
    ori	$a3,$a3,0x277c
.L0da649e0:
    # Line 138
    lw	$a1,31696($a2)
    sw	$a1,0($a3)
    lw	$v1,31700($a2)
    sw	$v1,0($a3)
    lw	$v0,31704($a2)
    sw	$v0,0($a3)
    lw	$at,31708($a2)
    # Line 137
    addiu	$a2,$a2,16
    bne	$a2,$a4,.L0da649e0
    # Line 138
    sw	$at,0($a3)
.L0da64a08:
    # Line 141
    jr	$ra
    nop
.end __glExpPassPolygonStipple

# Function: __glExpEnablePolygonStipple
# Declared: Line 143 (Source lines: 144-152)
# Address: 0x0da64a10 - 0x0da64a60 (Size: 80 bytes, Frame: 32)
.globl __glExpEnablePolygonStipple
.ent __glExpEnablePolygonStipple
__glExpEnablePolygonStipple:
    # Line 144
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lw	$at,1696($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,11864
    andi	$at,$at,0x2000
    beqz	$at,.L0da64a48
    nop
    # Line 148
    # lw $t9, -32036($gp) # &__glExpPassPolygonStipple
    sd	$ra,8($sp)
    bal __glExpPassPolygonStipple
    nop
    b	.L0da64a54
    ld	$ra,8($sp)
.L0da64a48:
    # Line 150
    lui	$v1,0x4
    ori	$v1,$v1,0x2078
    sw	$zero,0($v1)
.L0da64a54:
    # ld	gp,0(sp)
    # Line 152
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpEnablePolygonStipple

# Function: __glExpPassPolygonMode
# Declared: Line 154 (Source lines: 156-167)
# Address: 0x0da64a60 - 0x0da64ac0 (Size: 96 bytes, Frame: 0)
.globl __glExpPassPolygonMode
.ent __glExpPassPolygonMode
__glExpPassPolygonMode:
    # Line 156
    lw	$a2,460($a0)
    li	$v1,6913
    li	$at,6914
    beq	$a2,$at,.L0da64a98
    li	$v0,6912
    beq	$a2,$v0,.L0da64aac
    # Line 164
    lui	$at,0x4
    # Line 156
    beq	$a2,$v1,.L0da64a8c
    # Line 164
    li	$a0,3
    # Line 167
    jr	$ra
    nop
.L0da64a8c:
    # Line 164
    ori	$at,$at,0x2388
    # Line 167
    jr	$ra
    # Line 164
    sw	$a0,0($at)
.L0da64a98:
    # Line 158
    li	$v0,1
    lui	$v1,0x4
    ori	$v1,$v1,0x2388
    # Line 167
    jr	$ra
    # Line 158
    sw	$v0,0($v1)
.L0da64aac:
    # Line 161
    li	$a0,2
    lui	$at,0x4
    ori	$at,$at,0x2388
    # Line 167
    jr	$ra
    # Line 161
    sw	$a0,0($at)
.end __glExpPassPolygonMode

# Function: __glExpPassPolygonOffset
# Declared: Line 169 (Source lines: 170-179)
# Address: 0x0da64ac0 - 0x0da64b28 (Size: 104 bytes, Frame: 0)
.globl __glExpPassPolygonOffset
.ent __glExpPassPolygonOffset
__glExpPassPolygonOffset:
    # Line 170
    lui	$a3,0x4
    ori	$a3,$a3,0x2390
    lui	$a1,0x100
    lw	$v0,1696($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,11688
    and	$v0,$v0,$a1
    beqz	$v0,.L0da64b18
    nop
    # Line 173
    lw	$v0,31308($a0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,480($a0)
    mul.s	$f0,$f0,$f1
    # Line 175
    lwc1	$f1,476($a0)
    swc1	$f1,0($a3)
    swc1	$f0,0($a3)
    # Line 179
    jr	$ra
    nop
.L0da64b18:
    # Line 177
    mtc1	$zero,$f2
    swc1	$f2,0($a3)
    # Line 179
    jr	$ra
    # Line 177
    swc1	$f2,0($a3)
.end __glExpPassPolygonOffset

