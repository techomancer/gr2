# Source: ../dlist/dl_table.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_table.c
# Total Functions: 9

.text

# Function: __glDisposeDlist
# Declared: Line 38 (Source lines: 39-53)
# Address: 0x0da6f660 - 0x0da6f6b0 (Size: 80 bytes, Frame: 32)
.globl __glDisposeDlist
.ent __glDisposeDlist
__glDisposeDlist:
    # Line 39
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$v0,0x19
    # Line 44
    lw	$at,0($a1)
    # Line 39
    addiu	$v0,$v0,-32248
    # addu	gp,t9,v0
    # Line 44
    addiu	$at,$at,-1
    beqz	$at,.L0da6f690
    sw	$at,0($a1)
    # ld	gp,0(sp)
    # Line 53
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f690:
    # Line 50
    lw	$t9,4($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 51
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDisposeDlist

# Function: __glEmptyFreeDlist
# Declared: Line 62 (Source lines: 68-68)
# Address: 0x0da6f6b0 - 0x0da6f6b8 (Size: 8 bytes, Frame: 0)
.globl __glEmptyFreeDlist
.ent __glEmptyFreeDlist
__glEmptyFreeDlist:
    # Line 68
    jr	$ra
    nop
.end __glEmptyFreeDlist

# Function: __glEmptyExecuteDlist
# Declared: Line 72 (Source lines: 75-75)
# Address: 0x0da6f6b8 - 0x0da6f6c0 (Size: 8 bytes, Frame: 0)
.globl __glEmptyExecuteDlist
.ent __glEmptyExecuteDlist
__glEmptyExecuteDlist:
    # Line 75
    jr	$ra
    nop
.end __glEmptyExecuteDlist

# Function: __glDlistNewArray
# Declared: Line 80 (Source lines: 81-101)
# Address: 0x0da6f6c0 - 0x0da6f758 (Size: 152 bytes, Frame: 48)
.globl __glDlistNewArray
.ent __glDlistNewArray
__glDlistNewArray:
    # Line 86
    li	$a1,20
    # Line 81
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-32344
    # addu	gp,t9,at
    # Line 86
    lw	$t9,4716($a0)
    sd	$s1,24($sp)
    sd	$ra,16($sp)
    jalr	$t9
    # Line 81
    move	$s1,$a0
    # Line 86
    beqz	$v0,.L0da6f730
    move	$s0,$v0
    # Line 93
    li	$v1,1
    sw	$v1,0($s0)
    lw	$t9,4632($s1)
    beqz	$t9,.L0da6f714
    # Line 98
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
.L0da6f714:
    # ld	gp,8(sp)
    # Line 101
    move	$v0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6f730:
    # Line 89
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 91
    move	$v0,$zero
    # ld	gp,8(sp)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistNewArray

# Function: __glDlistFreeArray
# Declared: Line 104 (Source lines: 105-113)
# Address: 0x0da6f758 - 0x0da6f7b4 (Size: 92 bytes, Frame: 48)
.globl __glDlistFreeArray
.ent __glDlistFreeArray
__glDlistFreeArray:
    # Line 105
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # sd	gp,16(sp)
    lw	$a3,4636($a0)
    lui	$at,0x19
    addiu	$at,$at,-32496
    beqz	$a3,.L0da6f794
    nop
    sd	$a1,0($sp)
    # Line 109
    move	$a0,$s8
    jalr	$a3
    move	$t9,$a3
    ld	$a1,0($sp)
.L0da6f794:
    # Line 111
    lw	$t9,4724($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$s8,8($sp)
    ld	$ra,24($sp)
    # ld	gp,16(sp)
    # Line 113
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistFreeArray

# Function: __glim_IsList
# Declared: Line 119 (Source lines: 120-137)
# Address: 0x0da6f7b4 - 0x0da6f820 (Size: 108 bytes, Frame: 32)
.globl __glim_IsList
.ent __glim_IsList
__glim_IsList:
    # Line 120
    move	$a2,$a0
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-32588
    beq	$at,$v0,.L0da6f800
    nop
    # Line 134
    # lw $t9, -27912($gp) # &__glNamesIsName
    lw	$a0,__glCurrentContext
    jal	__glNamesIsName
    lw	$a1,4628($a0)
    # Line 137
    ld	$ra,8($sp)
    andi	$v0,$v0,0xff
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f800:
    # Line 125
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_IsList

# Function: __glim_GenLists
# Declared: Line 141 (Source lines: 142-166)
# Address: 0x0da6f820 - 0x0da6f8c8 (Size: 168 bytes, Frame: 32)
.globl __glim_GenLists
.ent __glim_GenLists
__glim_GenLists:
    # Line 142
    move	$a2,$a0
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-32696
    beq	$at,$v0,.L0da6f884
    addu	$gp,$t9,$v1
    # Line 147
    bltz	$a2,.L0da6f8a8
    # Line 153
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 154
    bnez	$a2,.L0da6f864
    # Line 162
    nop	# was lw $t9, -27920($gp) # &__glNamesGenRange
    # Line 157
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f864:
    # Line 162
    lw	$a0,__glCurrentContext
    sd	$ra,8($sp)
    jal	__glNamesGenRange
    lw	$a1,4628($a0)
    # Line 166
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f884:
    # Line 147
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f8a8:
    sd	$ra,8($sp)
    # Line 153
    jalr	$t9
    li	$a0,1281
    # Line 154
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GenLists

# Function: __glim_ListBase
# Declared: Line 170 (Source lines: 171-175)
# Address: 0x0da6f8c8 - 0x0da6f91c (Size: 84 bytes, Frame: 32)
.globl __glim_ListBase
.ent __glim_ListBase
__glim_ListBase:
    # Line 171
    li	$v0,1
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,32672
    beq	$at,$v0,.L0da6f8fc
    nop
    # ld	gp,0(sp)
    # Line 174
    lw	$a1,__glCurrentContext
    # Line 175
    addiu	$sp,$sp,32
    jr	$ra
    # Line 174
    sw	$a0,1872($a1)
.L0da6f8fc:
    # Line 172
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_ListBase

# Function: __glim_DeleteLists
# Declared: Line 177 (Source lines: 178-199)
# Address: 0x0da6f91c - 0x0da6f9bc (Size: 160 bytes, Frame: 32)
.globl __glim_DeleteLists
.ent __glim_DeleteLists
__glim_DeleteLists:
    # Line 178
    move	$a3,$a1
    move	$a2,$a0
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,32588
    beq	$at,$v0,.L0da6f980
    addu	$gp,$t9,$v1
    # Line 182
    bltz	$a3,.L0da6f9a0
    # Line 185
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 186
    bnez	$a3,.L0da6f960
    # Line 195
    nop	# was lw $t9, -27916($gp) # &__glNamesDeleteRange
    ld	$gp,0($sp)
    # Line 188
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f960:
    # Line 195
    lw	$a0,__glCurrentContext
    sd	$ra,8($sp)
    jal	__glNamesDeleteRange
    lw	$a1,4628($a0)
    # Line 199
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f980:
    # Line 182
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f9a0:
    sd	$ra,8($sp)
    # Line 185
    jalr	$t9
    li	$a0,1281
    # Line 186
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_DeleteLists

