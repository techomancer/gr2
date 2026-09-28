# Source: ../soft/so_prim.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_prim.c
# Total Functions: 5

.text

# Function: __glim_Begin
# Declared: Line 24 (Source lines: 25-48)
# Address: 0x0dad7b30 - 0x0dad7c00 (Size: 208 bytes, Frame: 48)
.globl __glim_Begin
.ent __glim_Begin
__glim_Begin:
    # Line 26
    lw	$a4,__glCurrentContext
    # Line 25
    move	$a2,$a0
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 29
    lw	$a3,__glBeginMode
    # Line 25
    lui	$at,0x12
    addiu	$at,$at,-712
    # Line 29
    beqz	$a3,.L0dad7b80
    # Line 25
    addu	$gp,$t9,$at
    sd	$ra,16($sp)
    # Line 29
    li	$v0,2
    beq	$a3,$v0,.L0dad7ba8
    sd	$a2,0($sp)
    # Line 37
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 38
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad7b80:
    sltiu	$v1,$a2,10
    bnez	$v1,.L0dad7bd4
    sd	$ra,16($sp)
    # Line 43
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 44
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad7ba8:
    # Line 32
    lw	$t9,11792($a4)
    jalr	$t9
    move	$a0,$a4
    # Line 34
    # lw $t9, -22904($gp) # &glBegin
    ld	$a0,0($sp)
    jal	glBegin
    # Line 33
    sw	$zero,__glBeginMode
    # Line 35
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad7bd4:
    # Line 47
    sll	$t9,$a2,0x2
    # Line 46
    li	$ra,1
    sw	$ra,__glBeginMode
    # Line 47
    addu	$t9,$t9,$a4
    lw	$t9,12036($t9)
    jalr	$t9
    move	$a0,$a4
    # Line 48
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Begin

# Function: __glim_End
# Declared: Line 50 (Source lines: 51-63)
# Address: 0x0dad7c00 - 0x0dad7c6c (Size: 108 bytes, Frame: 16)
.globl __glim_End
.ent __glim_End
__glim_End:
    # Line 52
    lw	$a0,__glCurrentContext
    # Line 51
    addiu	$sp,$sp,-16
    # sd	gp,0(sp)
    # Line 55
    lw	$a2,__glBeginMode
    # Line 51
    lui	$at,0x12
    addiu	$at,$at,-920
    # Line 56
    beqz	$a2,.L0dad7c4c
    # Line 51
    nop
    # Line 56
    li	$v0,2
    beq	$a2,$v0,.L0dad7c4c
    sd	$ra,8($sp)
    # Line 61
    lw	$t9,12076($a0)
    jalr	$t9
    nop
    # Line 63
    ld	$ra,8($sp)
    # Line 62
    sw	$zero,__glBeginMode
    # ld	gp,0(sp)
    # Line 63
    jr	$ra
    addiu	$sp,$sp,16
.L0dad7c4c:
    # Line 57
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 58
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_End

# Function: __glNop
# Declared: Line 67 (Source lines: 67-67)
# Address: 0x0dad7c6c - 0x0dad7c74 (Size: 8 bytes, Frame: 0)
.globl __glNop
.ent __glNop
__glNop:
    # Line 67
    jr	$ra
    nop
.end __glNop

# Function: __glEndPrim
# Declared: Line 72 (Source lines: 73-76)
# Address: 0x0dad7c74 - 0x0dad7c94 (Size: 32 bytes, Frame: 0)
.globl __glEndPrim
.ent __glEndPrim
__glEndPrim:
    # Line 73
    lui	$a1,0x12
    addiu	$a1,$a1,-1036
    # addu	at,t9,a1
    # Line 75
    la	$v1,__glEndPrim
    # Line 74
    la	$v0,__glNop
    # Line 75
    sw	$v1,12076($a0)
    # Line 76
    jr	$ra
    # Line 74
    sw	$v0,11956($a0)
.end __glEndPrim

# Function: __glim_UnimplementedExtension
# Declared: Line 79 (Source lines: 80-82)
# Address: 0x0dad7c94 - 0x0dad7cc8 (Size: 52 bytes, Frame: 16)
.globl __glim_UnimplementedExtension
.ent __glim_UnimplementedExtension
__glim_UnimplementedExtension:
    # Line 80
    addiu	$sp,$sp,-16
    # sd	gp,8(sp)
    lui	$at,0x12
    addiu	$at,$at,-1068
    # addu	gp,t9,at
    # Line 81
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 82
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_UnimplementedExtension

