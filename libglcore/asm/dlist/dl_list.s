# Source: ../dlist/dl_list.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_list.c
# Total Functions: 19

.text

# Function: __glim_NewList
# Declared: Line 57 (Source lines: 58-136)
# Address: 0x0da6d3dc - 0x0da6d5d8 (Size: 508 bytes, Frame: 208)
.globl __glim_NewList
.ent __glim_NewList
__glim_NewList:
    # Line 61
    li	$v0,1
    # Line 58
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s0,40($sp)
    sd	$gp,32($sp)
    lui	$v1,0x19
    addiu	$v1,$v1,-23412
    # Line 61
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 58
    addu	$gp,$t9,$v1
    # Line 61
    beq	$at,$v0,.L0da6d58c
    move	$s0,$a3
    li	$a2,4864
    beq	$s1,$a2,.L0da6d44c
    li	$at,4865
    beql	$s1,$at,.L0da6d450
    # Line 73
    lw	$v0,4688($a3)
    # Line 71
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,32($sp)
    # Line 72
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d44c:
    # Line 73
    lw	$v0,4688($a3)
.L0da6d450:
    beqz	$v0,.L0da6d47c
    # Line 77
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    # Line 78
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d47c:
    beqz	$a0,.L0da6d5b4
    # Line 82
    nop	# was lw $t9, -29008($gp) # &__glSetError
    # Line 83
    lw	$v1,4660($s0)
    beqzl	$v1,.L0da6d4a0
    # Line 94
    lw	$at,4160($zero)
    # Line 83
    lw	$a2,4712($s0)
    beqzl	$a2,.L0da6d548
    # Line 94
    lw	$t9,12636($s0)
.L0da6d49c:
    lw	$at,4160($zero)
.L0da6d4a0:
    # Line 108
    li	$v1,4168
    # Line 94
    beqz	$at,.L0da6d4bc
    # Line 108
    addiu	$v0,$s0,7648
    sd	$ra,48($sp)
    sd	$a0,8($sp)
    b	.L0da6d4c8
    sd	$v0,16($sp)
.L0da6d4bc:
    sd	$ra,48($sp)
    sd	$a0,8($sp)
    sd	$v1,16($sp)
.L0da6d4c8:
    # Line 111
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    ld	$a0,16($sp)
    addiu	$a1,$s0,9704
    jal	__glMipsCopyDispatch
    sd	$a1,0($sp)
    # Line 122
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    ld	$a1,16($sp)
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 124
    lw	$t9,11788($s0)
    ld	$a2,0($sp)
    beqz	$t9,.L0da6d508
    sw	$a2,5580($s0)
    # Line 126
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
.L0da6d508:
    # Line 135
    move	$a0,$s0
    # Line 133
    sw	$zero,4708($s0)
    # Line 132
    sw	$zero,4704($s0)
    # Line 131
    sw	$zero,4700($s0)
    # Line 130
    sw	$zero,4696($s0)
    # Line 135
    lw	$t9,4652($s0)
    # Line 128
    ld	$a3,8($sp)
    # Line 129
    sw	$s1,4684($s0)
    # Line 135
    jalr	$t9
    # Line 128
    sw	$a3,4688($s0)
    ld	$ra,48($sp)
    # Line 136
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d548:
    sd	$a0,8($sp)
    sd	$ra,48($sp)
    # Line 94
    jalr	$t9
    move	$a0,$s0
    sw	$v0,4712($s0)
    ld	$a0,8($sp)
    bnez	$v0,.L0da6d49c
    ld	$ra,48($sp)
    # Line 99
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$gp,32($sp)
    # Line 100
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d58c:
    # Line 61
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6d5b4:
    sd	$ra,48($sp)
    # Line 82
    jalr	$t9
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 83
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NewList

# Function: __glce_EndList
# Declared: Line 138 (Source lines: 139-144)
# Address: 0x0da6d5d8 - 0x0da6d614 (Size: 60 bytes, Frame: 16)
.globl __glce_EndList
.ent __glce_EndList
__glce_EndList:
    # Line 139
    addiu	$sp,$sp,-16
    # sd	gp,8(sp)
    # Line 142
    lw	$at,__glCurrentContext
    # Line 139
    lui	$v0,0x19
    addiu	$v0,$v0,-23920
    # addu	gp,t9,v0
    # Line 143
    # lw $t9, -22916($gp) # &glEndList
    # Line 142
    lw	$at,9708($at)
    sd	$ra,0($sp)
    # Line 143
    jal	glEndList
    # Line 142
    sw	$at,4172($zero)
    # Line 144
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glce_EndList

# Function: __glim_EndList
# Declared: Line 146 (Source lines: 147-233)
# Address: 0x0da6d614 - 0x0da6d788 (Size: 372 bytes, Frame: 192)
.globl __glim_EndList
.ent __glim_EndList
__glim_EndList:
    # Line 153
    li	$v0,1
    # Line 147
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 153
    lw	$s0,__glCurrentContext
    # sd	gp,16(sp)
    lw	$at,__glBeginMode
    # Line 147
    lui	$v1,0x19
    addiu	$v1,$v1,-23980
    # Line 153
    beq	$at,$v0,.L0da6d764
    # Line 147
    nop
    # Line 153
    lw	$a2,4688($s0)
    beqz	$a2,.L0da6d744
    sd	$ra,40($sp)
    # Line 168
    lw	$t9,4640($s0)
    move	$a0,$s0
    addiu	$a1,$s0,4692
    jalr	$t9
    sd	$a1,8($sp)
    # Line 195
    lw	$t9,4644($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,8($sp)
    lw	$a4,4660($s0)
    move	$at,$v0
    bnez	$a4,.L0da6d708
    sd	$v0,0($sp)
.L0da6d67c:
    # Line 210
    move	$a3,$v0
    lw	$a2,4688($s0)
    lw	$a1,4628($s0)
    # lw $t9, -27940($gp) # &__glNamesNewData
    move	$a0,$s0
    # Line 202
    sw	$zero,4708($s0)
    # Line 210
    jal	__glNamesNewData
    # Line 201
    sw	$zero,4704($s0)
    # Line 210
    beqz	$v0,.L0da6d720
    ld	$a2,0($sp)
    # Line 217
    lw	$v1,4160($zero)
.L0da6d6a8:
    beqz	$v1,.L0da6d6b8
    sd	$s3,48($sp)
    # Line 224
    b	.L0da6d6bc
    addiu	$s3,$s0,7648
.L0da6d6b8:
    li	$s3,4168
.L0da6d6bc:
    # Line 227
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s3
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,9704
    # Line 228
    lw	$t9,11788($s0)
    sw	$s3,5580($s0)
    ld	$s3,48($sp)
    beqz	$t9,.L0da6d6f4
    ld	$ra,40($sp)
    # Line 230
    move	$a0,$s0
    li	$a1,1
    jalr	$t9
    ld	$s3,48($sp)
    ld	$ra,40($sp)
.L0da6d6f4:
    # ld	gp,16(sp)
    # Line 232
    sw	$zero,4688($s0)
    # Line 233
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6d708:
    # Line 200
    lw	$t9,12648($s0)
    sd	$v0,32($sp)
    jalr	$t9
    lw	$a0,4712($s0)
    b	.L0da6d67c
    ld	$v0,32($sp)
.L0da6d720:
    # Line 210
    beqzl	$a2,.L0da6d6a8
    # Line 217
    lw	$v1,4160($zero)
    ld	$t9,0($sp)
    move	$a1,$t9
    lw	$t9,4($t9)
    jalr	$t9
    move	$a0,$s0
    b	.L0da6d6a8
    lw	$v1,4160($zero)
.L0da6d744:
    # Line 159
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 160
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6d764:
    # Line 153
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_EndList

# Function: DoCallList
# Declared: Line 235 (Source lines: 236-262)
# Address: 0x0da6d788 - 0x0da6d82c (Size: 164 bytes, Frame: 48)
.ent DoCallList
DoCallList:
    # Line 236
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 238
    lw	$s0,__glCurrentContext
    lw	$at,4680($s0)
    slti	$at,$at,64
    bnez	$at,.L0da6d7b8
    # Line 236
    move	$a2,$a0
    # Line 242
    li	$v0,128
    sw	$v0,4680($s0)
    # Line 243
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d7b8:
    # Line 248
    # lw $t9, -27936($gp) # &__glNamesLockData
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glNamesLockData
    lw	$a1,4628($s0)
    sd	$v0,0($sp)
    bnez	$v0,.L0da6d7e4
    ld	$ra,16($sp)
    # Line 249
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d7e4:
    # Line 252
    lw	$v1,4680($s0)
    # Line 255
    ld	$a1,0($sp)
    # Line 252
    addiu	$v1,$v1,1
    sw	$v1,4680($s0)
    # Line 255
    lw	$t9,8($a1)
    jalr	$t9
    move	$a0,$s0
    ld	$a1,0($sp)
    # Line 257
    lw	$a2,4680($s0)
    # Line 259
    # lw $t9, -27928($gp) # &__glNamesUnlockData
    move	$a0,$s0
    # Line 257
    addiu	$a2,$a2,-1
    # Line 259
    jal	__glNamesUnlockData
    # Line 257
    sw	$a2,4680($s0)
    ld	$ra,16($sp)
    # Line 262
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DoCallList

# Function: __gllc_CallList
# Declared: Line 273 (Source lines: 274-290)
# Address: 0x0da6d82c - 0x0da6d8d0 (Size: 164 bytes, Frame: 48)
.globl __gllc_CallList
.ent __gllc_CallList
__gllc_CallList:
    # Line 274
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 277
    lw	$s0,__glCurrentContext
    sd	$a0,0($sp)
    # sd	gp,8(sp)
    # Line 274
    lui	$at,0x19
    addiu	$at,$at,-24516
    # Line 277
    beqz	$a0,.L0da6d8b0
    # Line 274
    nop
    # Line 284
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    bal __glDlistAllocOp2
    li	$a1,4
    bnez	$v0,.L0da6d87c
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    # Line 285
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d87c:
    # Line 289
    la	$a2,__glle_CallList
    move	$a1,$v0
    move	$a0,$s0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    # Line 288
    ld	$v1,0($sp)
    # Line 286
    sh	$zero,12($v0)
    # Line 289
    bal __glDlistAppendOp
    # Line 288
    sw	$v1,16($v0)
    # Line 290
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d8b0:
    # Line 280
    # lw $t9, -30972($gp) # &__gllc_InvalidEnum
    bal __gllc_InvalidEnum
    move	$a0,$s0
    # Line 281
    ld	$ra,24($sp)
    # ld	gp,8(sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_CallList

# Function: __glle_CallList
# Declared: Line 292 (Source lines: 293-298)
# Address: 0x0da6d8d0 - 0x0da6d918 (Size: 72 bytes, Frame: 48)
.globl __glle_CallList
.ent __glle_CallList
__glle_CallList:
    # Line 293
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    sd	$s8,8($sp)
    lui	$s8,0x19
    addiu	$s8,$s8,-24680
    # addu	gp,t9,s8
    # Line 297
    # lw $t9, -32740($gp) # &sub_0da70000
    sd	$ra,0($sp)
    # Line 293
    move	$s8,$a0
    # Line 297
    addiu	$t9,$t9,-10360
    bal __glim_EndList
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 298
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CallList

# Function: __glce_CallList
# Declared: Line 302 (Source lines: 303-327)
# Address: 0x0da6d918 - 0x0da6d9f4 (Size: 220 bytes, Frame: 192)
.globl __glce_CallList
.ent __glce_CallList
__glce_CallList:
    # Line 305
    li	$a1,257
    move	$a3,$zero
    li	$a4,4168
    # Line 303
    addiu	$sp,$sp,-2112
    # Line 305
    addiu	$a5,$sp,0
    sd	$s1,2064($sp)
    # Line 303
    move	$s1,$a0
    # sd	gp,2056(sp)
    lui	$at,0x19
    addiu	$at,$at,-24752
    # addu	gp,t9,at
.L0da6d944:
    # Line 305
    addu	$v1,$a3,$a5
    addu	$v0,$a3,$a4
    addiu	$a3,$a3,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da6d944
    sd	$v0,0($v1)
    # Line 310
    li	$a1,4168
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    sd	$s0,2080($sp)
    # Line 307
    lw	$s0,__glCurrentContext
    sd	$ra,2088($sp)
    # Line 310
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 311
    # lw $t9, -22912($gp) # &glCallList
    sd	$s4,2072($sp)
    jal	glCallList
    move	$a0,$s1
    # Line 313
    addiu	$s4,$s0,9704
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    jal	__glMipsCopyDispatch
    move	$a0,$s4
    # Line 315
    # lw $t9, -22912($gp) # &glCallList
    move	$a0,$s1
    # Line 314
    li	$v1,4168
    # Line 315
    jal	glCallList
    # Line 314
    sw	$v1,5580($s0)
    # Line 316
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s4
    jal	__glMipsCopyDispatch
    li	$a0,4168
    # Line 325
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 317
    sw	$s4,5580($s0)
    # ld	gp,2056(sp)
    # Line 327
    ld	$s0,2080($sp)
    ld	$ra,2088($sp)
    ld	$s1,2064($sp)
    ld	$s4,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end __glce_CallList

# Function: __glce_CallLists
# Declared: Line 329 (Source lines: 330-354)
# Address: 0x0da6d9f4 - 0x0da6daf8 (Size: 260 bytes, Frame: 224)
.globl __glce_CallLists
.ent __glce_CallLists
__glce_CallLists:
    # Line 332
    li	$a4,257
    move	$a5,$zero
    li	$a6,4168
    # Line 330
    addiu	$sp,$sp,-2144
    # Line 332
    addiu	$a7,$sp,0
    sd	$s1,2064($sp)
    # Line 330
    move	$s1,$a2
    sd	$s2,2080($sp)
    move	$s2,$a1
    sd	$s3,2072($sp)
    move	$s3,$a0
    # sd	gp,2056(sp)
    lui	$at,0x19
    addiu	$at,$at,-24972
    # addu	gp,t9,at
.L0da6da30:
    # Line 332
    addu	$v1,$a5,$a7
    addu	$v0,$a5,$a6
    addiu	$a5,$a5,8
    ld	$v0,0($v0)
    addiu	$a4,$a4,-1
    bgtz	$a4,.L0da6da30
    sd	$v0,0($v1)
    # Line 337
    li	$a1,4168
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    sd	$s0,2104($sp)
    # Line 334
    lw	$s0,__glCurrentContext
    sd	$ra,2088($sp)
    # Line 337
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 338
    move	$a0,$s3
    # lw $t9, -22908($gp) # &glCallLists
    move	$a1,$s2
    sd	$s4,2096($sp)
    jal	glCallLists
    move	$a2,$s1
    # Line 340
    addiu	$s4,$s0,9704
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    jal	__glMipsCopyDispatch
    move	$a0,$s4
    # Line 342
    move	$a2,$s1
    move	$a1,$s2
    # lw $t9, -22908($gp) # &glCallLists
    move	$a0,$s3
    # Line 341
    li	$v1,4168
    # Line 342
    jal	glCallLists
    # Line 341
    sw	$v1,5580($s0)
    # Line 343
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s4
    jal	__glMipsCopyDispatch
    li	$a0,4168
    # Line 352
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 344
    sw	$s4,5580($s0)
    # ld	gp,2056(sp)
    # Line 354
    ld	$s0,2104($sp)
    ld	$s1,2064($sp)
    ld	$s2,2080($sp)
    ld	$ra,2088($sp)
    ld	$s3,2072($sp)
    ld	$s4,2096($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.end __glce_CallLists

# Function: __glim_CallList
# Declared: Line 356 (Source lines: 357-366)
# Address: 0x0da6daf8 - 0x0da6db60 (Size: 104 bytes, Frame: 48)
.globl __glim_CallList
.ent __glim_CallList
__glim_CallList:
    # Line 357
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-25232
    # Line 358
    lw	$v0,__glCurrentContext
    # Line 357
    # addu	gp,t9,at
    # Line 358
    beqz	$a0,.L0da6db44
    sd	$v0,0($sp)
    # Line 364
    # lw $t9, -32740($gp) # &sub_0da70000
    addiu	$t9,$t9,-10360
    bal __glim_EndList
    nop
    ld	$ra,0($sp)
    # Line 365
    sw	$zero,4680($ra)
    # Line 366
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6db44:
    # Line 361
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 362
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_CallList

# Function: DoCallLists
# Declared: Line 368 (Source lines: 369-414)
# Address: 0x0da6db60 - 0x0da6dcd4 (Size: 372 bytes, Frame: 240)
.ent DoCallLists
DoCallLists:
    # Line 375
    sltiu	$at,$a1,5120
    # Line 369
    addiu	$sp,$sp,-1136
    sd	$s2,1040($sp)
    move	$s2,$a0
    sd	$s4,1032($sp)
    move	$s4,$a1
    # Line 375
    lw	$a3,__glCurrentContext
    sd	$s0,1024($sp)
    bnez	$at,.L0da6dba4
    move	$s0,$a3
    sltiu	$v0,$s4,5130
    beqz	$v0,.L0da6dba4
    sd	$s5,1048($sp)
    # Line 379
    la	$s5,__GLdlsize_tab
    addu	$s5,$s4,$s5
    b	.L0da6dbac
    lbu	$s5,-5120($s5)
.L0da6dba4:
    sd	$s5,1048($sp)
    li	$s5,-1
.L0da6dbac:
    lw	$at,4680($a3)
    slti	$at,$at,64
    beqzl	$at,.L0da6dcb8
    # Line 384
    ld	$s2,1040($sp)
    sd	$s8,1064($sp)
    # Line 386
    lw	$a0,4680($s0)
    sd	$s3,1056($sp)
    # Line 389
    move	$s3,$a2
    # Line 386
    addiu	$a0,$a0,1
    # Line 389
    beqz	$s2,.L0da6dc94
    # Line 386
    sw	$a0,4680($s0)
    sd	$s6,1096($sp)
    sd	$ra,1088($sp)
    sd	$s1,1080($sp)
    sd	$s7,1072($sp)
    b	.L0da6dc68
    # Line 389
    addiu	$s8,$sp,0
.L0da6dbf0:
    # Line 395
    move	$a0,$s0
    addiu	$a6,$sp,0
    move	$a5,$s3
    lw	$a4,1872($s0)
    # lw $t9, -27932($gp) # &__glNamesLockDataList
    move	$a3,$s4
    move	$a2,$s1
    jal	__glNamesLockDataList
    lw	$a1,4628($s0)
    sll	$s7,$s1,0x2
    blez	$s1,.L0da6dc40
    addu	$s7,$s7,$s8
    addiu	$s6,$sp,0
    # Line 401
    lw	$a1,0($s6)
.L0da6dc28:
    # Line 402
    lw	$t9,8($a1)
    # Line 403
    addiu	$s6,$s6,4
    # Line 402
    jalr	$t9
    move	$a0,$s0
    # Line 403
    bnel	$s6,$s7,.L0da6dc28
    # Line 401
    lw	$a1,0($s6)
.L0da6dc40:
    # Line 406
    # lw $t9, -27924($gp) # &__glNamesUnlockDataList
    move	$a0,$s0
    move	$a1,$s1
    jal	__glNamesUnlockDataList
    addiu	$a2,$sp,0
    # Line 410
    subu	$s2,$s2,$s1
    # Line 409
    mult	$s5,$s1
    mflo	$at
    # Line 410
    beqz	$s2,.L0da6dc7c
    # Line 409
    addu	$s3,$at,$s3
.L0da6dc68:
    # Line 391
    slti	$v0,$s2,257
    bnez	$v0,.L0da6dbf0
    move	$s1,$s2
    b	.L0da6dbf0
    # Line 392
    li	$s1,256
.L0da6dc7c:
    # Line 410
    lw	$a0,4680($s0)
    ld	$s8,1064($sp)
    ld	$s7,1072($sp)
    ld	$s1,1080($sp)
    ld	$ra,1088($sp)
    ld	$s6,1096($sp)
.L0da6dc94:
    # Line 414
    ld	$s2,1040($sp)
    ld	$s3,1056($sp)
    ld	$s4,1032($sp)
    ld	$s5,1048($sp)
    # Line 413
    addiu	$v1,$a0,-1
    sw	$v1,4680($s0)
    # Line 414
    ld	$s0,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.L0da6dcb8:
    # Line 384
    ld	$s4,1032($sp)
    ld	$s5,1048($sp)
    # Line 383
    li	$a0,128
    sw	$a0,4680($s0)
    # Line 384
    ld	$s0,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.end DoCallLists

# Function: __gllc_CallLists
# Declared: Line 422 (Source lines: 423-449)
# Address: 0x0da6dcd4 - 0x0da6de40 (Size: 364 bytes, Frame: 224)
.globl __gllc_CallLists
.ent __gllc_CallLists
__gllc_CallLists:
    # Line 423
    move	$v0,$a2
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    # Line 428
    lw	$s0,__glCurrentContext
    sd	$s2,40($sp)
    # Line 423
    move	$s2,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    # sd	gp,24(sp)
    lui	$at,0x19
    addiu	$at,$at,-25708
    # Line 428
    bltz	$a0,.L0da6de14
    # Line 423
    nop
    # Line 432
    sltiu	$v1,$s1,5120
    bnez	$v1,.L0da6dd2c
    sltiu	$a3,$s1,5130
    beqz	$a3,.L0da6dd2c
    # Line 434
    la	$a0,__GLdlsize_tab
    sd	$s4,56($sp)
    addu	$a0,$s1,$a0
    b	.L0da6dd34
    lbu	$a0,-5120($a0)
.L0da6dd2c:
    li	$a0,-1
    sd	$s4,56($sp)
.L0da6dd34:
    mult	$a0,$s2
    sd	$ra,48($sp)
    mflo	$s4
    bltz	$s4,.L0da6dde8
    sd	$v0,0($sp)
    # Line 440
    move	$a0,$s0
    li	$a2,-4
    # lw $t9, -31032($gp) # &__glDlistAllocOp2
    addiu	$a1,$s4,3
    and	$a1,$a1,$a2
    bal __glDlistAllocOp2
    addiu	$a1,$a1,8
    sd	$v0,8($sp)
    bnez	$v0,.L0da6dd8c
    ld	$ra,48($sp)
    # ld	gp,24(sp)
    # Line 441
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da6dd8c:
    # Line 447
    move	$a2,$s4
    ld	$a1,0($sp)
    ld	$a4,8($sp)
    # Line 442
    li	$a3,1
    # Line 447
    # lw $t9, -23008($gp) # &memcpy
    addiu	$a0,$a4,24
    # Line 445
    sw	$s1,20($a4)
    # Line 444
    sw	$s2,16($a4)
    # Line 447
    jal	memcpy
    # Line 442
    sh	$a3,12($a4)
    # Line 448
    move	$a0,$s0
    # lw $t9, -31024($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    la	$a2,__glle_CallLists
    bal __glDlistAppendOp
    ld	$s4,56($sp)
    # ld	gp,24(sp)
    # Line 449
    ld	$s0,32($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da6dde8:
    # Line 436
    # lw $t9, -30972($gp) # &__gllc_InvalidEnum
    move	$a0,$s0
    bal __gllc_InvalidEnum
    ld	$s4,56($sp)
    # ld	gp,24(sp)
    # Line 437
    ld	$s0,32($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da6de14:
    # Line 431
    # lw $t9, -30976($gp) # &__gllc_InvalidValue
    sd	$ra,48($sp)
    bal __gllc_InvalidValue
    move	$a0,$s0
    # ld	gp,24(sp)
    # Line 432
    ld	$s0,32($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_CallLists

# Function: __glle_CallLists
# Declared: Line 451 (Source lines: 452-461)
# Address: 0x0da6de40 - 0x0da6ded4 (Size: 148 bytes, Frame: 48)
.globl __glle_CallLists
.ent __glle_CallLists
__glle_CallLists:
    # Line 458
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 452
    addiu	$sp,$sp,-48
    # sd	gp,8(sp)
    sd	$ra,0($sp)
    lui	$ra,0x19
    addiu	$ra,$ra,-26072
    # addu	gp,t9,ra
    # Line 458
    # lw $t9, -32740($gp) # &sub_0da70000
    sd	$s7,16($sp)
    # Line 452
    move	$s7,$a0
    # Line 458
    addiu	$t9,$t9,-9376
    bal __glim_CallList
    lw	$a0,0($a0)
    lw	$a0,4($s7)
    # Line 459
    li	$a3,-1
    # Line 458
    sltiu	$at,$a0,5120
    bnez	$at,.L0da6dea4
    ld	$ra,0($sp)
    sltiu	$v0,$a0,5130
    beqz	$v0,.L0da6dea4
    nop
    # Line 459
    la	$a3,__GLdlsize_tab
    addu	$a3,$a0,$a3
    lbu	$a3,-5120($a3)
.L0da6dea4:
    # Line 461
    lw	$v1,0($s7)
    mult	$v1,$a3
    # ld	gp,8(sp)
    li	$v1,-4
    mflo	$v0
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s7
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_CallLists

# Function: __glim_CallLists
# Declared: Line 464 (Source lines: 465-480)
# Address: 0x0da6ded4 - 0x0da6df88 (Size: 180 bytes, Frame: 192)
.globl __glim_CallLists
.ent __glim_CallLists
__glim_CallLists:
    # Line 466
    lw	$a4,__glCurrentContext
    # Line 465
    addiu	$sp,$sp,-64
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-26220
    # Line 466
    bltz	$a0,.L0da6df68
    # Line 465
    nop
    # Line 470
    sltiu	$v0,$a1,5120
    bnez	$v0,.L0da6df10
    sltiu	$v1,$a1,5130
    beqz	$v1,.L0da6df10
    # Line 475
    la	$a5,__GLdlsize_tab
    addu	$a5,$a1,$a5
    b	.L0da6df14
    lbu	$a5,-5120($a5)
.L0da6df10:
    li	$a5,-1
.L0da6df14:
    sd	$ra,16($sp)
    li	$at,-1
    beq	$a5,$at,.L0da6df4c
    sd	$a4,0($sp)
    # Line 478
    # lw $t9, -32740($gp) # &sub_0da70000
    addiu	$t9,$t9,-9376
    bal __glim_CallList
    nop
    ld	$ra,0($sp)
    # Line 479
    sw	$zero,4680($ra)
    # Line 480
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6df4c:
    # Line 474
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 475
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6df68:
    # Line 469
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 470
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_CallLists

# Function: __glce_DrawArraysEXT
# Declared: Line 482 (Source lines: 483-507)
# Address: 0x0da6df88 - 0x0da6e08c (Size: 260 bytes, Frame: 224)
.globl __glce_DrawArraysEXT
.ent __glce_DrawArraysEXT
__glce_DrawArraysEXT:
    # Line 485
    li	$a4,257
    move	$a5,$zero
    li	$a6,4168
    # Line 483
    addiu	$sp,$sp,-2144
    # Line 485
    addiu	$a7,$sp,0
    sd	$s1,2064($sp)
    # Line 483
    move	$s1,$a2
    sd	$s2,2080($sp)
    move	$s2,$a1
    sd	$s3,2072($sp)
    move	$s3,$a0
    # sd	gp,2056(sp)
    lui	$at,0x19
    addiu	$at,$at,-26400
    # addu	gp,t9,at
.L0da6dfc4:
    # Line 485
    addu	$v1,$a5,$a7
    addu	$v0,$a5,$a6
    addiu	$a5,$a5,8
    ld	$v0,0($v0)
    addiu	$a4,$a4,-1
    bgtz	$a4,.L0da6dfc4
    sd	$v0,0($v1)
    # Line 490
    li	$a1,4168
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    sd	$s0,2104($sp)
    # Line 487
    lw	$s0,__glCurrentContext
    sd	$ra,2088($sp)
    # Line 490
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 491
    move	$a0,$s3
    # lw $t9, -22632($gp) # &glDrawArraysEXT
    move	$a1,$s2
    sd	$s4,2096($sp)
    jal	glDrawArraysEXT
    move	$a2,$s1
    # Line 493
    addiu	$s4,$s0,9704
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    jal	__glMipsCopyDispatch
    move	$a0,$s4
    # Line 495
    move	$a2,$s1
    move	$a1,$s2
    # lw $t9, -22632($gp) # &glDrawArraysEXT
    move	$a0,$s3
    # Line 494
    li	$v1,4168
    # Line 495
    jal	glDrawArraysEXT
    # Line 494
    sw	$v1,5580($s0)
    # Line 496
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s4
    jal	__glMipsCopyDispatch
    li	$a0,4168
    # Line 505
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 497
    sw	$s4,5580($s0)
    # ld	gp,2056(sp)
    # Line 507
    ld	$s0,2104($sp)
    ld	$s1,2064($sp)
    ld	$s2,2080($sp)
    ld	$ra,2088($sp)
    ld	$s3,2072($sp)
    ld	$s4,2096($sp)
    jr	$ra
    addiu	$sp,$sp,2144
.end __glce_DrawArraysEXT

# Function: __glce_DrawElements
# Declared: Line 509 (Source lines: 511-535)
# Address: 0x0da6e08c - 0x0da6e1a4 (Size: 280 bytes, Frame: 240)
.globl __glce_DrawElements
.ent __glce_DrawElements
__glce_DrawElements:
    # Line 513
    li	$a5,257
    move	$a6,$zero
    li	$a7,4168
    # Line 511
    addiu	$sp,$sp,-2160
    # Line 513
    addiu	$t0,$sp,0
    sd	$s1,2064($sp)
    # Line 511
    move	$s1,$a3
    sd	$s4,2072($sp)
    move	$s4,$a2
    sd	$s3,2080($sp)
    move	$s3,$a1
    sd	$s2,2088($sp)
    move	$s2,$a0
    # sd	gp,2056(sp)
    lui	$at,0x19
    addiu	$at,$at,-26660
    # addu	gp,t9,at
.L0da6e0d0:
    # Line 513
    addu	$v1,$a6,$t0
    addu	$v0,$a6,$a7
    addiu	$a6,$a6,8
    ld	$v0,0($v0)
    addiu	$a5,$a5,-1
    bgtz	$a5,.L0da6e0d0
    sd	$v0,0($v1)
    # Line 518
    li	$a1,4168
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    sd	$s0,2104($sp)
    # Line 515
    lw	$s0,__glCurrentContext
    sd	$ra,2096($sp)
    # Line 518
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 519
    move	$a0,$s2
    move	$a1,$s3
    # lw $t9, -22628($gp) # &glDrawElements
    move	$a2,$s4
    sd	$s5,2112($sp)
    jal	glDrawElements
    move	$a3,$s1
    # Line 521
    addiu	$s5,$s0,9704
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    jal	__glMipsCopyDispatch
    move	$a0,$s5
    # Line 523
    move	$a3,$s1
    move	$a2,$s4
    move	$a1,$s3
    # lw $t9, -22628($gp) # &glDrawElements
    move	$a0,$s2
    # Line 522
    li	$v1,4168
    # Line 523
    jal	glDrawElements
    # Line 522
    sw	$v1,5580($s0)
    # Line 524
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s5
    jal	__glMipsCopyDispatch
    li	$a0,4168
    # Line 533
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 525
    sw	$s5,5580($s0)
    # ld	gp,2056(sp)
    # Line 535
    ld	$s0,2104($sp)
    ld	$s1,2064($sp)
    ld	$s2,2088($sp)
    ld	$s3,2080($sp)
    ld	$ra,2096($sp)
    ld	$s4,2072($sp)
    ld	$s5,2112($sp)
    jr	$ra
    addiu	$sp,$sp,2160
.end __glce_DrawElements

# Function: __glce_ArrayElementEXT
# Declared: Line 537 (Source lines: 538-562)
# Address: 0x0da6e1a4 - 0x0da6e280 (Size: 220 bytes, Frame: 192)
.globl __glce_ArrayElementEXT
.ent __glce_ArrayElementEXT
__glce_ArrayElementEXT:
    # Line 540
    li	$a1,257
    move	$a3,$zero
    li	$a4,4168
    # Line 538
    addiu	$sp,$sp,-2112
    # Line 540
    addiu	$a5,$sp,0
    sd	$s1,2064($sp)
    # Line 538
    move	$s1,$a0
    # sd	gp,2056(sp)
    lui	$at,0x19
    addiu	$at,$at,-26940
    # addu	gp,t9,at
.L0da6e1d0:
    # Line 540
    addu	$v1,$a3,$a5
    addu	$v0,$a3,$a4
    addiu	$a3,$a3,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da6e1d0
    sd	$v0,0($v1)
    # Line 545
    li	$a1,4168
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    sd	$s0,2080($sp)
    # Line 542
    lw	$s0,__glCurrentContext
    sd	$ra,2088($sp)
    # Line 545
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,5584
    # Line 546
    # lw $t9, -22640($gp) # &glArrayElementEXT
    sd	$s4,2072($sp)
    jal	glArrayElementEXT
    move	$a0,$s1
    # Line 548
    addiu	$s4,$s0,9704
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    jal	__glMipsCopyDispatch
    move	$a0,$s4
    # Line 550
    # lw $t9, -22640($gp) # &glArrayElementEXT
    move	$a0,$s1
    # Line 549
    li	$v1,4168
    # Line 550
    jal	glArrayElementEXT
    # Line 549
    sw	$v1,5580($s0)
    # Line 551
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    move	$a1,$s4
    jal	__glMipsCopyDispatch
    li	$a0,4168
    # Line 560
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 552
    sw	$s4,5580($s0)
    # ld	gp,2056(sp)
    # Line 562
    ld	$s0,2080($sp)
    ld	$ra,2088($sp)
    ld	$s1,2064($sp)
    ld	$s4,2072($sp)
    jr	$ra
    addiu	$sp,$sp,2112
.end __glce_ArrayElementEXT

# Function: __glDlistAllocOp2
# Declared: Line 576 (Source lines: 577-604)
# Address: 0x0da6e280 - 0x0da6e2f4 (Size: 116 bytes, Frame: 48)
.globl __glDlistAllocOp2
.ent __glDlistAllocOp2
__glDlistAllocOp2:
    # Line 577
    addiu	$sp,$sp,-48
    sd	$a1,0($sp)
    # sd	gp,8(sp)
    lui	$at,0x19
    addiu	$at,$at,-27160
    # addu	gp,t9,at
    # Line 586
    lw	$t9,12644($a0)
    addiu	$a1,$a1,16
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,4712($a0)
    beqz	$v0,.L0da6e2d4
    # Line 600
    ld	$v1,0($sp)
    # Line 602
    sb	$zero,14($v0)
    # Line 601
    sw	$zero,4($v0)
    # Line 599
    sw	$zero,0($v0)
    # Line 604
    ld	$ra,16($sp)
    # ld	gp,8(sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 600
    sw	$v1,8($v0)
.L0da6e2d4:
    # Line 590
    # lw $t9, -29008($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 591
    ld	$ra,16($sp)
    move	$v0,$zero
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistAllocOp2

# Function: __glDlistFreeOp
# Declared: Line 608 (Source lines: 616-616)
# Address: 0x0da6e2f4 - 0x0da6e2fc (Size: 8 bytes, Frame: 0)
.globl __glDlistFreeOp
.ent __glDlistFreeOp
__glDlistFreeOp:
    # Line 616
    jr	$ra
    nop
.end __glDlistFreeOp

# Function: __glDlistAppendOp
# Declared: Line 619 (Source lines: 621-651)
# Address: 0x0da6e2fc - 0x0da6e3d4 (Size: 216 bytes, Frame: 208)
.globl __glDlistAppendOp
.ent __glDlistAppendOp
__glDlistAppendOp:
    # Line 621
    addiu	$sp,$sp,-80
    sd	$a2,16($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    # sd	gp,40(sp)
    lui	$at,0x19
    addiu	$at,$at,-27284
    # addu	gp,t9,at
    # Line 629
    lw	$t9,4648($a0)
    sd	$s1,24($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 621
    move	$s1,$a1
    # Line 629
    lw	$v0,4684($s0)
    li	$v1,4865
    beq	$v0,$v1,.L0da6e36c
    ld	$ra,0($sp)
.L0da6e340:
    # Line 643
    lw	$a0,4708($s0)
    beqz	$a0,.L0da6e364
    nop
    # Line 646
    sw	$s1,0($a0)
.L0da6e350:
    # Line 650
    sw	$s1,4708($s0)
    # Line 651
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6e364:
    b	.L0da6e350
    # Line 648
    sw	$s1,4704($s0)
.L0da6e36c:
    # Line 633
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    li	$a1,4168
    addiu	$a0,$s0,9704
    jal	__glMipsCopyDispatch
    sd	$a0,8($sp)
    # Line 636
    ld	$t9,16($sp)
    addiu	$a0,$s1,16
    # Line 634
    li	$a1,4168
    # Line 636
    jalr	$t9
    # Line 634
    sw	$a1,5580($s0)
    # Line 639
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    ld	$a1,8($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4168
    lw	$a2,4160($zero)
    beqz	$a2,.L0da6e3cc
    # Line 640
    move	$a0,$a2
.L0da6e3b0:
    # Line 642
    # lw $t9, -23716($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4168
    ld	$a3,8($sp)
    ld	$ra,0($sp)
    b	.L0da6e340
    # Line 643
    sw	$a3,5580($s0)
.L0da6e3cc:
    b	.L0da6e3b0
    # Line 640
    addiu	$a0,$s0,5584
.end __glDlistAppendOp

