# Source: ../EXPRESS/gr2_get.c
# Category: EXPRESS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../EXPRESS/gr2_get.c
# Total Functions: 5

.text

# Function: __glExpDoGet
# Declared: Line 22 (Source lines: 23-41)
# Address: 0x0da5d740 - 0x0da5d7c4 (Size: 132 bytes, Frame: 32)
.globl __glExpDoGet
.ent __glExpDoGet
__glExpDoGet:
    # Line 23
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x1a
    addiu	$v1,$v1,-24280
    beq	$at,$v0,.L0da5d7a4
    addu	$gp,$t9,$v1
    # Line 24
    addiu	$a2,$a0,-2816
    la	$at,sub_0dbf0000
    sltiu	$v0,$a2,68
    sll	$a2,$a2,0x2
    lui	$at,%hi(jtbl_0dbeb0f8)
    beqz	$v0,.L0da5d798
    addu	$a2,$a2,$at
    lw	$at,%lo(jtbl_0dbeb0f8)($a2)
    jr	$at
    # Line 36
    nop	# was lw $t9, -32380($gp) # &__glExpGetMachineState
.L0da5d788:
    sd	$ra,8($sp)
    bal __glExpGetMachineState
    lw	$a0,__glCurrentContext
    ld	$ra,8($sp)
.L0da5d798:
    ld	$gp,0($sp)
    # Line 41
    jr	$ra
    addiu	$sp,$sp,32
.L0da5d7a4:
    # Line 24
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glExpDoGet

# Function: __glexpim_GetDoublev
# Declared: Line 43 (Source lines: 44-47)
# Address: 0x0da5d7c4 - 0x0da5d814 (Size: 80 bytes, Frame: 48)
.globl __glexpim_GetDoublev
.ent __glexpim_GetDoublev
__glexpim_GetDoublev:
    # Line 44
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-24412
    # addu	gp,t9,at
    # Line 45
    # lw $t9, -32296($gp) # &__glExpDoGet
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glExpDoGet
    # Line 44
    move	$s8,$a0
    # Line 46
    # lw $t9, -28512($gp) # &__glim_GetDoublev
    move	$a0,$s8
    jal	__glim_GetDoublev
    ld	$a1,24($sp)
    # Line 47
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_GetDoublev

# Function: __glexpim_GetFloatv
# Declared: Line 49 (Source lines: 50-53)
# Address: 0x0da5d814 - 0x0da5d864 (Size: 80 bytes, Frame: 48)
.globl __glexpim_GetFloatv
.ent __glexpim_GetFloatv
__glexpim_GetFloatv:
    # Line 50
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-24492
    # addu	gp,t9,at
    # Line 51
    # lw $t9, -32296($gp) # &__glExpDoGet
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glExpDoGet
    # Line 50
    move	$s8,$a0
    # Line 52
    # lw $t9, -28508($gp) # &__glim_GetFloatv
    move	$a0,$s8
    jal	__glim_GetFloatv
    ld	$a1,24($sp)
    # Line 53
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_GetFloatv

# Function: __glexpim_GetIntegerv
# Declared: Line 55 (Source lines: 56-59)
# Address: 0x0da5d864 - 0x0da5d8b4 (Size: 80 bytes, Frame: 48)
.globl __glexpim_GetIntegerv
.ent __glexpim_GetIntegerv
__glexpim_GetIntegerv:
    # Line 56
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-24572
    # addu	gp,t9,at
    # Line 57
    # lw $t9, -32296($gp) # &__glExpDoGet
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glExpDoGet
    # Line 56
    move	$s8,$a0
    # Line 58
    # lw $t9, -28504($gp) # &__glim_GetIntegerv
    move	$a0,$s8
    jal	__glim_GetIntegerv
    ld	$a1,24($sp)
    # Line 59
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_GetIntegerv

# Function: __glexpim_GetBooleanv
# Declared: Line 61 (Source lines: 62-65)
# Address: 0x0da5d8b4 - 0x0da5d904 (Size: 80 bytes, Frame: 48)
.globl __glexpim_GetBooleanv
.ent __glexpim_GetBooleanv
__glexpim_GetBooleanv:
    # Line 62
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    # sd	gp,16(sp)
    lui	$at,0x1a
    addiu	$at,$at,-24652
    # addu	gp,t9,at
    # Line 63
    # lw $t9, -32296($gp) # &__glExpDoGet
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glExpDoGet
    # Line 62
    move	$s8,$a0
    # Line 64
    # lw $t9, -28500($gp) # &__glim_GetBooleanv
    move	$a0,$s8
    jal	__glim_GetBooleanv
    ld	$a1,24($sp)
    # Line 65
    ld	$ra,0($sp)
    # ld	gp,16(sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glexpim_GetBooleanv

.late_rodata
jtbl_0dbeb0f8:
    .word .L0da5d788
    .word .L0da5d788
    .word .L0da5d788
    .word .L0da5d798
    .word .L0da5d788
    .word .L0da5d788
    .word .L0da5d798
    .word .L0da5d788
    .word .L0da5d788
    .word .L0da5d788
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d798
    .word .L0da5d788

