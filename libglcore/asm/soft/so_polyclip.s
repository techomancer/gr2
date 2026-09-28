# Source: ../soft/so_polyclip.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyclip.c
# Total Functions: 5

.text

# Function: clipToPlane
# Declared: Line 35 (Source lines: 37-113)
# Address: 0x0dacfeb4 - 0x0dad0150 (Size: 668 bytes, Frame: 176)
.ent clipToPlane
clipToPlane:
    # Line 37
    addiu	$sp,$sp,-176
    sd	$s1,16($sp)
    sdc1	$f28,0($sp)
    sd	$ra,40($sp)
    sd	$a0,48($sp)
    sd	$s4,80($sp)
    move	$s4,$a3
    sd	$s5,64($sp)
    move	$s5,$a4
    sd	$s2,104($sp)
    sd	$s6,96($sp)
    # Line 49
    sll	$s6,$a2,0x2
    addu	$s6,$s6,$a1
    lw	$s2,-4($s6)
    sd	$s3,88($sp)
    # Line 50
    lwc1	$f1,0($a4)
    lwc1	$f2,112($s2)
    # Line 44
    move	$s3,$zero
    # Line 50
    lwc1	$f4,116($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a4)
    lwc1	$f0,8($a4)
    lwc1	$f3,120($s2)
    mul.s	$f2,$f2,$f4
    sd	$s8,56($sp)
    # Line 45
    move	$s8,$zero
    # Line 50
    mul.s	$f0,$f0,$f3
    lwc1	$f3,124($s2)
    lwc1	$f4,12($a4)
    sd	$s7,72($sp)
    # Line 46
    lw	$s7,29700($a0)
    # Line 50
    mul.s	$f4,$f4,$f3
    add.s	$f1,$f1,$f2
    sd	$s0,24($sp)
    sdc1	$f30,8($sp)
    # Line 47
    lw	$at,12104($a0)
    # Line 50
    add.s	$f0,$f0,$f1
    mtc1	$zero,$f30
    sd	$at,32($sp)
    blez	$a2,.L0dad00d0
    add.s	$f4,$f4,$f0
    move	$s0,$a1
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    b	.L0dacffcc
    sdc1	$f28,0($sp)
.L0dacff6c:
    # Line 76
    beqz	$v0,.L0dacffc0
    # Line 94
    move	$a2,$s2
    move	$a1,$s1
    # Line 98
    addiu	$s4,$s4,4
    # Line 101
    addiu	$s8,$s8,1
    # Line 93
    addiu	$s7,$s7,192
    # Line 94
    ld	$t9,32($sp)
    sub.s	$f15,$f4,$f28
    addiu	$a0,$s7,-192
    sd	$a0,112($sp)
    jalr	$t9
    div.s	$f15,$f4,$f15
    li	$a6,1
    # Line 95
    sb	$a6,-8($s7)
    # Line 99
    addiu	$s3,$s3,1
    # Line 96
    lw	$a5,0($s2)
    # Line 101
    slti	$at,$s8,3
    # Line 98
    ld	$v1,112($sp)
    # Line 96
    sw	$a5,-192($s7)
    # Line 101
    beqz	$at,.L0dad0114
    # Line 98
    sw	$v1,-4($s4)
.L0dacffc0:
    # Line 109
    move	$s2,$s1
    # Line 52
    beq	$s0,$s6,.L0dad00d0
    # Line 110
    mov.s	$f4,$f28
.L0dacffcc:
    # Line 53
    lw	$s1,0($s0)
    # Line 54
    lwc1	$f1,0($s5)
    lwc1	$f2,112($s1)
    lwc1	$f3,4($s5)
    lwc1	$f28,116($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,8($s5)
    lwc1	$f2,120($s1)
    mul.s	$f3,$f3,$f28
    mul.s	$f0,$f0,$f2
    lwc1	$f28,12($s5)
    lwc1	$f2,124($s1)
    add.s	$f1,$f1,$f3
    mul.s	$f28,$f28,$f2
    add.s	$f0,$f0,$f1
    c.le.s	$f30,$f4
    add.s	$f28,$f28,$f0
    li	$v0,1
    bc1fl	.L0dad001c
    move	$v0,$zero
.L0dad001c:
    c.le.s	$f30,$f28
    nop
    bc1f	.L0dacff6c
    # Line 52
    addiu	$s0,$s0,4
    # Line 54
    beqz	$v0,.L0dad0044
    # Line 66
    move	$a2,$s1
    # Line 61
    addiu	$s3,$s3,1
    # Line 60
    sw	$s1,0($s4)
    # Line 61
    b	.L0dacffc0
    # Line 60
    addiu	$s4,$s4,4
.L0dad0044:
    # Line 66
    move	$a1,$s2
    # Line 71
    addiu	$s4,$s4,8
    # Line 65
    addiu	$s7,$s7,192
    # Line 66
    ld	$t9,32($sp)
    sub.s	$f15,$f28,$f4
    addiu	$a0,$s7,-192
    sd	$a0,112($sp)
    jalr	$t9
    div.s	$f15,$f28,$f15
    # Line 74
    addiu	$s8,$s8,1
    # Line 67
    lbu	$a6,184($s2)
    sb	$a6,-8($s7)
    # Line 72
    addiu	$s3,$s3,2
    # Line 68
    lw	$a5,0($s2)
    # Line 70
    ld	$v1,112($sp)
    # Line 74
    slti	$at,$s8,3
    # Line 68
    sw	$a5,-192($s7)
    # Line 70
    sw	$v1,-8($s4)
    # Line 74
    bnez	$at,.L0dacffc0
    # Line 71
    sw	$s1,-4($s4)
    # Line 76
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    ld	$s5,64($sp)
    ld	$s6,96($sp)
    ld	$s7,72($sp)
    ld	$s8,56($sp)
    ld	$ra,40($sp)
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dad00d0:
    # Line 113
    ld	$s1,16($sp)
    ld	$s2,104($sp)
    move	$v0,$s3
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    ld	$s5,64($sp)
    ld	$s6,96($sp)
    ld	$s8,56($sp)
    ldc1	$f28,0($sp)
    ld	$s0,48($sp)
    ldc1	$f30,8($sp)
    ld	$ra,40($sp)
    # Line 112
    sw	$s7,29700($s0)
    # Line 113
    ld	$s0,24($sp)
    ld	$s7,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dad0114:
    # Line 103
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    ld	$s5,64($sp)
    ld	$s6,96($sp)
    ld	$s7,72($sp)
    ld	$s8,56($sp)
    ld	$ra,40($sp)
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end clipToPlane

# Function: clipToPlaneEye
# Declared: Line 120 (Source lines: 122-206)
# Address: 0x0dad0150 - 0x0dad04cc (Size: 892 bytes, Frame: 176)
.ent clipToPlaneEye
clipToPlaneEye:
    # Line 122
    addiu	$sp,$sp,-176
    sd	$s0,48($sp)
    sdc1	$f22,0($sp)
    sdc1	$f28,8($sp)
    sd	$ra,40($sp)
    sd	$a0,56($sp)
    sd	$s4,88($sp)
    move	$s4,$a3
    sd	$s5,72($sp)
    move	$s5,$a4
    sd	$s2,112($sp)
    sd	$s6,104($sp)
    # Line 134
    sll	$s6,$a2,0x2
    addu	$s6,$s6,$a1
    lw	$s2,-4($s6)
    sd	$s3,96($sp)
    # Line 135
    lwc1	$f1,0($a4)
    lwc1	$f2,96($s2)
    # Line 129
    move	$s3,$zero
    # Line 135
    lwc1	$f4,100($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a4)
    lwc1	$f0,8($a4)
    lwc1	$f3,104($s2)
    mul.s	$f2,$f2,$f4
    sd	$s8,64($sp)
    # Line 130
    move	$s8,$zero
    # Line 135
    mul.s	$f0,$f0,$f3
    lwc1	$f3,108($s2)
    lwc1	$f4,12($a4)
    sd	$s7,80($sp)
    # Line 131
    lw	$s7,29700($a0)
    # Line 135
    mul.s	$f4,$f4,$f3
    add.s	$f1,$f1,$f2
    sd	$s1,24($sp)
    sdc1	$f24,16($sp)
    # Line 132
    lw	$at,12104($a0)
    # Line 135
    add.s	$f0,$f0,$f1
    mtc1	$zero,$f24
    sd	$at,32($sp)
    blez	$a2,.L0dad0444
    add.s	$f4,$f4,$f0
    move	$s1,$a1
    sd	$ra,40($sp)
    sd	$s0,48($sp)
    sdc1	$f22,0($sp)
    b	.L0dad02d8
    sdc1	$f28,8($sp)
.L0dad0210:
    # Line 165
    beqzl	$v0,.L0dad02d0
    # Line 202
    move	$s2,$s0
    # Line 183
    sub.s	$f28,$f4,$f22
    div.s	$f28,$f4,$f28
    move	$a1,$s0
    move	$a2,$s2
    # Line 191
    addiu	$s4,$s4,4
    # Line 194
    addiu	$s8,$s8,1
    # Line 182
    addiu	$s7,$s7,192
    # Line 183
    ld	$t9,32($sp)
    addiu	$a0,$s7,-192
    sd	$a0,120($sp)
    jalr	$t9
    mov.s	$f15,$f28
    # Line 184
    lwc1	$f0,96($s2)
    lwc1	$f3,96($s0)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f28
    add.s	$f3,$f3,$f0
    swc1	$f3,-96($s7)
    # Line 185
    lwc1	$f3,100($s2)
    lwc1	$f2,100($s0)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f28
    add.s	$f2,$f2,$f3
    swc1	$f2,-92($s7)
    # Line 186
    lwc1	$f2,104($s2)
    lwc1	$f1,104($s0)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f28
    add.s	$f1,$f1,$f2
    swc1	$f1,-88($s7)
    # Line 187
    lwc1	$f1,108($s2)
    lwc1	$f0,108($s0)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f28
    add.s	$f0,$f0,$f1
    li	$a6,1
    # Line 188
    sb	$a6,-8($s7)
    # Line 187
    swc1	$f0,-84($s7)
    # Line 192
    addiu	$s3,$s3,1
    # Line 189
    lw	$a5,0($s2)
    # Line 194
    slti	$at,$s8,3
    # Line 191
    ld	$v1,120($sp)
    # Line 189
    sw	$a5,-192($s7)
    # Line 194
    beqz	$at,.L0dad048c
    # Line 191
    sw	$v1,-4($s4)
.L0dad02cc:
    # Line 202
    move	$s2,$s0
.L0dad02d0:
    # Line 137
    beq	$s1,$s6,.L0dad0444
    # Line 203
    mov.s	$f4,$f22
.L0dad02d8:
    # Line 138
    lw	$s0,0($s1)
    # Line 139
    lwc1	$f1,0($s5)
    lwc1	$f2,96($s0)
    lwc1	$f3,4($s5)
    lwc1	$f22,100($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,8($s5)
    lwc1	$f2,104($s0)
    mul.s	$f3,$f3,$f22
    mul.s	$f0,$f0,$f2
    lwc1	$f22,12($s5)
    lwc1	$f2,108($s0)
    add.s	$f1,$f1,$f3
    mul.s	$f22,$f22,$f2
    add.s	$f0,$f0,$f1
    c.le.s	$f24,$f4
    add.s	$f22,$f22,$f0
    li	$v0,1
    bc1fl	.L0dad0328
    move	$v0,$zero
.L0dad0328:
    c.le.s	$f24,$f22
    nop
    bc1f	.L0dad0210
    # Line 137
    addiu	$s1,$s1,4
    # Line 139
    beqzl	$v0,.L0dad0350
    # Line 151
    sub.s	$f28,$f22,$f4
    # Line 146
    addiu	$s3,$s3,1
    # Line 145
    sw	$s0,0($s4)
    # Line 146
    b	.L0dad02cc
    # Line 145
    addiu	$s4,$s4,4
.L0dad0350:
    # Line 151
    div.s	$f28,$f22,$f28
    move	$a1,$s2
    move	$a2,$s0
    # Line 160
    addiu	$s4,$s4,8
    # Line 163
    addiu	$s8,$s8,1
    # Line 150
    addiu	$s7,$s7,192
    # Line 151
    ld	$t9,32($sp)
    addiu	$a0,$s7,-192
    sd	$a0,120($sp)
    jalr	$t9
    mov.s	$f15,$f28
    # Line 152
    lwc1	$f0,96($s0)
    lwc1	$f3,96($s2)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f28
    add.s	$f3,$f3,$f0
    swc1	$f3,-96($s7)
    # Line 153
    lwc1	$f3,100($s0)
    lwc1	$f2,100($s2)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f28
    add.s	$f2,$f2,$f3
    swc1	$f2,-92($s7)
    # Line 154
    lwc1	$f2,104($s0)
    lwc1	$f1,104($s2)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f28
    add.s	$f1,$f1,$f2
    swc1	$f1,-88($s7)
    # Line 155
    lwc1	$f1,108($s0)
    lwc1	$f0,108($s2)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f28
    add.s	$f0,$f0,$f1
    swc1	$f0,-84($s7)
    # Line 156
    lbu	$a6,184($s2)
    sb	$a6,-8($s7)
    # Line 161
    addiu	$s3,$s3,2
    # Line 157
    lw	$a5,0($s2)
    # Line 159
    ld	$v1,120($sp)
    # Line 163
    slti	$at,$s8,3
    # Line 157
    sw	$a5,-192($s7)
    # Line 159
    sw	$v1,-8($s4)
    # Line 163
    bnez	$at,.L0dad02cc
    # Line 160
    sw	$s0,-4($s4)
    # Line 165
    move	$v0,$zero
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,112($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    ld	$s6,104($sp)
    ld	$s7,80($sp)
    ld	$s8,64($sp)
    ldc1	$f22,0($sp)
    ld	$ra,40($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dad0444:
    # Line 206
    ld	$s1,24($sp)
    ld	$s2,112($sp)
    move	$v0,$s3
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,16($sp)
    ld	$s0,56($sp)
    ldc1	$f28,8($sp)
    ld	$ra,40($sp)
    # Line 205
    sw	$s7,29700($s0)
    # Line 206
    ld	$s0,48($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dad048c:
    # Line 196
    move	$v0,$zero
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,112($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    ld	$s6,104($sp)
    ld	$s7,80($sp)
    ld	$s8,64($sp)
    ldc1	$f22,0($sp)
    ld	$ra,40($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end clipToPlaneEye

# Function: __glDoPolygonClip
# Declared: Line 220 (Source lines: 222-408)
# Address: 0x0dad04cc - 0x0dad0918 (Size: 1100 bytes, Frame: 208)
.globl __glDoPolygonClip
.ent __glDoPolygonClip
__glDoPolygonClip:
    # Line 222
    addiu	$sp,$sp,-8144
    sd	$s2,8032($sp)
    sd	$s6,8064($sp)
    move	$s6,$a3
    sd	$s4,8048($sp)
    move	$s4,$a0
    sd	$s3,8072($sp)
    # Line 243
    move	$s3,$a1
    sd	$s0,8016($sp)
    sd	$s7,8040($sp)
    # Line 222
    move	$s7,$a2
    sd	$s1,8024($sp)
    # Line 263
    move	$s1,$a1
    # sd	gp,8056(sp)
    # Line 222
    lui	$v0,0x12
    addiu	$v0,$v0,29596
    # Line 241
    lw	$at,29696($a0)
    # Line 222
    # addu	gp,t9,v0
    # Line 243
    beqz	$a3,.L0dad0778
    # Line 241
    sw	$at,29700($a0)
    # Line 259
    lw	$at,28092($s4)
    lw	$s2,28088($s4)
    # Line 264
    addiu	$s0,$s7,-1
    sd	$s5,8008($sp)
    # Line 259
    or	$s2,$s2,$at
    # Line 264
    blez	$s7,.L0dad0584
    # Line 259
    ori	$s2,$s2,0x20
    sd	$ra,8000($sp)
    b	.L0dad054c
    # Line 264
    li	$s5,-1
.L0dad0544:
    beql	$s0,$s5,.L0dad0580
    ld	$s5,8008($sp)
.L0dad054c:
    # Line 265
    lw	$a1,0($s1)
    lw	$v1,0($a1)
    # Line 264
    addiu	$s0,$s0,-1
    # Line 265
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s2
    beqz	$v1,.L0dad0544
    addiu	$s1,$s1,4
    # Line 266
    lw	$t9,8($a1)
    move	$a0,$s4
    jalr	$t9
    move	$a2,$s2
    b	.L0dad0544
    nop
.L0dad0580:
    ld	$ra,8000($sp)
.L0dad0584:
    sd	$ra,8000($sp)
    sd	$s5,8008($sp)
    # Line 277
    srl	$s2,$s6,0x6
    beqz	$s2,.L0dad05f4
    # Line 270
    addiu	$s1,$sp,0
    # Line 279
    la	$s5,sub_0dad0000
    sd	$ra,8000($sp)
    lw	$s0,1652($s4)
    b	.L0dad05b8
    addiu	$s5,$s5,336
.L0dad05ac:
    # Line 289
    srl	$s2,$s2,0x1
    # Line 290
    beqz	$s2,.L0dad05f4
    addiu	$s0,$s0,16
.L0dad05b8:
    # Line 279
    andi	$at,$s2,0x1
    beqz	$at,.L0dad05ac
    # Line 282
    move	$a0,$s4
    move	$a1,$s3
    move	$a2,$s7
    move	$a3,$s1
    move	$a4,$s0
    bal __glFillAntiAliasedTriangle
    move	$t9,$s5
    move	$s7,$v0
    slti	$v0,$v0,3
    bnez	$v0,.L0dad0898
    # Line 286
    move	$s3,$s1
    b	.L0dad05ac
    # Line 287
    addiu	$s1,$s1,400
.L0dad05f4:
    # Line 296
    la	$s2,sub_0dad0000
    # Line 294
    andi	$s6,$s6,0x3f
    beqz	$s6,.L0dad065c
    ld	$s5,8008($sp)
    # Line 296
    addiu	$s2,$s2,-332
    la	$s0,__gl_frustumClipPlanes
    b	.L0dad0620
    ld	$s5,8008($sp)
.L0dad0614:
    # Line 306
    srl	$s6,$s6,0x1
    # Line 307
    beqz	$s6,.L0dad065c
    addiu	$s0,$s0,16
.L0dad0620:
    # Line 296
    andi	$at,$s6,0x1
    beqz	$at,.L0dad0614
    # Line 299
    move	$a0,$s4
    move	$a1,$s3
    move	$a2,$s7
    move	$a3,$s1
    move	$a4,$s0
    bal __glFillAntiAliasedTriangle
    move	$t9,$s2
    move	$s7,$v0
    slti	$v0,$v0,3
    bnez	$v0,.L0dad08c8
    # Line 303
    move	$s3,$s1
    b	.L0dad0614
    # Line 304
    addiu	$s1,$s1,400
.L0dad065c:
    # Line 323
    lwc1	$f16,3284($s4)
    # Line 322
    move	$s1,$s3
    # Line 321
    lwc1	$f15,1640($s4)
    # Line 320
    lwc1	$f13,1632($s4)
    # Line 317
    lwc1	$f14,1636($s4)
    # Line 319
    lwc1	$f11,1624($s4)
    # Line 323
    mtc1	$zero,$f0
    add.s	$f4,$f14,$f13
    # Line 318
    lwc1	$f12,1644($s4)
    # Line 316
    lwc1	$f10,1628($s4)
    # Line 323
    c.lt.s	$f0,$f13
    ld	$ra,8000($sp)
    bc1f	.L0dad06a4
    sub.s	$f5,$f14,$f13
    # Line 329
    mov.s	$f17,$f4
    # Line 328
    mov.s	$f7,$f5
    # Line 329
    b	.L0dad06ac
    ld	$ra,8000($sp)
.L0dad06a4:
    # Line 331
    mov.s	$f7,$f4
    # Line 332
    mov.s	$f17,$f5
.L0dad06ac:
    # Line 335
    addiu	$s0,$s7,-1
    blezl	$s7,.L0dad077c
    # Line 368
    lw	$s6,12080($s4)
    # Line 335
    add.s	$f18,$f10,$f11
    li	$s5,-1
    b	.L0dad06e4
    sub.s	$f8,$f10,$f11
.L0dad06c8:
    nop
    # Line 353
    bc1fl	.L0dad06dc
    # Line 356
    swc1	$f4,132($s2)
    # Line 354
    mov.s	$f4,$f17
.L0dad06d8:
    # Line 356
    swc1	$f4,132($s2)
.L0dad06dc:
    # Line 335
    beq	$s0,$s5,.L0dad0774
    # Line 355
    swc1	$f5,128($s2)
.L0dad06e4:
    # Line 338
    lw	$s2,0($s1)
    # Line 340
    lwc1	$f2,124($s2)
    div.s	$f2,$f16,$f2
    # Line 341
    lwc1	$f6,116($s2)
    # Line 343
    mul.s	$f6,$f13,$f6
    # Line 341
    lwc1	$f9,112($s2)
    # Line 344
    lwc1	$f1,120($s2)
    # Line 342
    mul.s	$f9,$f11,$f9
    # Line 344
    mul.s	$f1,$f1,$f15
    # Line 343
    mul.s	$f6,$f6,$f2
    # Line 342
    mul.s	$f9,$f9,$f2
    # Line 344
    mul.s	$f1,$f1,$f2
    # Line 343
    add.s	$f6,$f6,$f14
    # Line 342
    add.s	$f9,$f9,$f10
    # Line 338
    addiu	$s1,$s1,4
    # Line 344
    add.s	$f1,$f1,$f12
    # Line 335
    addiu	$s0,$s0,-1
    # Line 345
    swc1	$f2,140($s2)
    c.lt.s	$f9,$f8
    # Line 344
    swc1	$f1,136($s2)
    # Line 343
    mov.s	$f4,$f6
    # Line 345
    bc1f	.L0dad075c
    # Line 342
    mov.s	$f5,$f9
    # Line 351
    mov.s	$f5,$f8
.L0dad0744:
    # Line 352
    c.lt.s	$f6,$f7
.L0dad0748:
    nop
    bc1fl	.L0dad06c8
    # Line 353
    c.lt.s	$f17,$f6
    b	.L0dad06d8
    mov.s	$f4,$f7
.L0dad075c:
    # Line 351
    c.lt.s	$f18,$f9
    nop
    bc1fl	.L0dad0748
    # Line 352
    c.lt.s	$f6,$f7
    b	.L0dad0744
    mov.s	$f5,$f18
.L0dad0774:
    ld	$s5,8008($sp)
.L0dad0778:
    # Line 368
    lw	$s6,12080($s4)
.L0dad077c:
    # Line 367
    lw	$s1,8($s3)
    addiu	$s3,$s3,12
    # Line 366
    lw	$a2,-8($s3)
    # Line 365
    lw	$s2,-12($s3)
    # Line 368
    li	$v1,3
    beq	$s7,$v1,.L0dad08f4
    ld	$s0,8016($sp)
    sd	$s0,8016($sp)
    sd	$s7,8088($sp)
    # Line 372
    slti	$a5,$s7,3
    bnez	$a5,.L0dad0870
    move	$s0,$zero
    ld	$s7,8088($sp)
    sd	$ra,8000($sp)
    sd	$s5,8008($sp)
    sd	$s8,8096($sp)
    addiu	$s8,$s7,-3
    b	.L0dad0810
    addiu	$s7,$s7,-2
.L0dad07c8:
    # Line 396
    move	$s5,$v0
    # Line 400
    move	$a0,$s4
    move	$a1,$s2
    move	$a3,$s1
    move	$t9,$s6
    # Line 397
    lbu	$t8,184($s1)
    # Line 398
    sb	$zero,184($s2)
    # Line 399
    sb	$zero,184($s1)
    # Line 400
    jalr	$s6
    sd	$t8,8080($sp)
    # Line 402
    ld	$at,8080($sp)
    # Line 401
    sb	$s5,184($s2)
    # Line 402
    sb	$at,184($s1)
.L0dad07fc:
    # Line 404
    move	$a2,$s1
    # Line 405
    lw	$s1,0($s3)
    # Line 372
    addiu	$s0,$s0,1
    beq	$s7,$s0,.L0dad0864
    # Line 405
    addiu	$s3,$s3,4
.L0dad0810:
    # Line 372
    beqzl	$s0,.L0dad0844
    # Line 378
    lbu	$s5,184($s1)
    # Line 381
    bne	$s8,$s0,.L0dad07c8
    lbu	$v0,184($s2)
    # Line 387
    move	$s5,$v0
    # Line 388
    sb	$zero,184($s2)
    # Line 389
    move	$a0,$s4
    move	$a1,$s2
    move	$a3,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 390
    b	.L0dad07fc
    sb	$s5,184($s2)
.L0dad0844:
    # Line 379
    sb	$zero,184($s1)
    # Line 380
    move	$a0,$s4
    move	$a1,$s2
    move	$a3,$s1
    jalr	$s6
    move	$t9,$s6
    # Line 381
    b	.L0dad07fc
    sb	$s5,184($s1)
.L0dad0864:
    ld	$s8,8096($sp)
    ld	$s5,8008($sp)
    ld	$ra,8000($sp)
.L0dad0870:
    # ld	gp,8056(sp)
    # Line 408
    ld	$s0,8016($sp)
    ld	$s1,8024($sp)
    ld	$s2,8032($sp)
    ld	$s3,8072($sp)
    ld	$s4,8048($sp)
    ld	$s6,8064($sp)
    ld	$s7,8040($sp)
    jr	$ra
    addiu	$sp,$sp,8144
.L0dad0898:
    # ld	gp,8056(sp)
    # Line 284
    ld	$s0,8016($sp)
    ld	$s1,8024($sp)
    ld	$s2,8032($sp)
    ld	$s3,8072($sp)
    ld	$s4,8048($sp)
    ld	$s5,8008($sp)
    ld	$ra,8000($sp)
    ld	$s6,8064($sp)
    ld	$s7,8040($sp)
    jr	$ra
    addiu	$sp,$sp,8144
.L0dad08c8:
    # ld	gp,8056(sp)
    # Line 301
    ld	$s0,8016($sp)
    ld	$s1,8024($sp)
    ld	$s2,8032($sp)
    ld	$s3,8072($sp)
    ld	$s4,8048($sp)
    ld	$ra,8000($sp)
    ld	$s6,8064($sp)
    ld	$s7,8040($sp)
    jr	$ra
    addiu	$sp,$sp,8144
.L0dad08f4:
    # Line 370
    move	$a0,$s4
    move	$a1,$s2
    move	$a3,$s1
    sd	$ra,8000($sp)
    jalr	$s6
    move	$t9,$s6
    sd	$s0,8016($sp)
    b	.L0dad0870
    ld	$ra,8000($sp)
.end __glDoPolygonClip

# Function: __glClipPolygon
# Declared: Line 410 (Source lines: 411-441)
# Address: 0x0dad0918 - 0x0dad0a6c (Size: 340 bytes, Frame: 144)
.globl __glClipPolygon
.ent __glClipPolygon
__glClipPolygon:
    # Line 425
    move	$a3,$zero
    # Line 424
    move	$a7,$zero
    # Line 426
    addiu	$a5,$a2,-1
    # Line 417
    sw	$a1,28080($a0)
    # Line 426
    move	$t2,$a2
    addiu	$t1,$a1,-192
    # Line 411
    addiu	$sp,$sp,-400
    # Line 423
    addiu	$t0,$sp,0
    sd	$gp,352($sp)
    # Line 411
    lui	$at,0x12
    addiu	$at,$at,28496
    # Line 426
    blez	$a2,.L0dad0a3c
    # Line 411
    addu	$gp,$t9,$at
    # Line 426
    li	$a6,-1
    andi	$t2,$a2,0x3
    beqz	$t2,.L0dad0984
    sd	$a2,328($sp)
.L0dad095c:
    addiu	$a5,$a5,-1
    # Line 429
    addiu	$t0,$t0,4
    addiu	$a1,$a1,192
    addi	$t2,$t2,-1
    # Line 427
    lw	$at,-180($a1)
    # Line 429
    addiu	$t1,$t1,192
    sw	$t1,-4($t0)
    # Line 428
    or	$a3,$at,$a3
    bnez	$t2,.L0dad095c
    # Line 427
    and	$a7,$at,$a7
.L0dad0984:
    sd	$t1,320($sp)
    move	$t1,$t0
    move	$t8,$a5
    move	$t3,$a3
    move	$v1,$a1
    move	$t9,$a7
    sd	$a1,344($sp)
    ld	$v0,328($sp)
    move	$a1,$t9
    ld	$a4,344($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0dad0a3c
    ld	$t2,320($sp)
    move	$a5,$t3
    move	$t0,$t1
    move	$a7,$t8
    move	$a3,$t2
    sd	$a4,336($sp)
.L0dad09cc:
    # Line 429
    ld	$at,336($sp)
    addiu	$t0,$t0,16
    # Line 426
    addiu	$a7,$a7,-4
    # Line 429
    addiu	$at,$at,768
    sd	$at,336($sp)
    addiu	$a3,$a3,192
    # Line 427
    lw	$v1,-756($at)
    # Line 429
    sw	$a3,-16($t0)
    addiu	$a3,$a3,192
    # Line 427
    lw	$v0,-564($at)
    # Line 429
    sw	$a3,-12($t0)
    addiu	$a3,$a3,192
    # Line 427
    lw	$a4,-372($at)
    # Line 429
    sw	$a3,-8($t0)
    addiu	$a3,$a3,192
    # Line 427
    and	$a1,$v1,$a1
    # Line 428
    or	$a5,$v1,$a5
    # Line 427
    lw	$at,-180($at)
    # Line 429
    sw	$a3,-4($t0)
    # Line 428
    or	$a5,$v0,$a5
    # Line 427
    and	$a1,$v0,$a1
    and	$a1,$a4,$a1
    # Line 428
    or	$a5,$a4,$a5
    or	$a5,$at,$a5
    # Line 426
    bne	$a7,$a6,.L0dad09cc
    # Line 427
    and	$a1,$at,$a1
    move	$a7,$a1
    move	$a3,$a5
.L0dad0a3c:
    # Line 426
    beqz	$a7,.L0dad0a50
    # Line 440
    nop	# was lw $t9, -27776($gp) # &__glDoPolygonClip
    ld	$gp,352($sp)
    # Line 438
    jr	$ra
    addiu	$sp,$sp,400
.L0dad0a50:
    sd	$ra,360($sp)
    # Line 440
    bal __glDoPolygonClip
    addiu	$a1,$sp,0
    # Line 441
    ld	$ra,360($sp)
    ld	$gp,352($sp)
    jr	$ra
    addiu	$sp,$sp,400
.end __glClipPolygon

# Function: __glClipTriangle
# Declared: Line 443 (Source lines: 445-452)
# Address: 0x0dad0a6c - 0x0dad0ab8 (Size: 76 bytes, Frame: 208)
.globl __glClipTriangle
.ent __glClipTriangle
__glClipTriangle:
    # Line 445
    move	$at,$a4
    addiu	$sp,$sp,-80
    # Line 449
    sw	$a2,4($sp)
    # Line 451
    li	$a2,3
    # Line 448
    sw	$a1,0($sp)
    # Line 451
    addiu	$a1,$sp,0
    # sd	gp,24(sp)
    # Line 445
    lui	$v0,0x12
    addiu	$v0,$v0,28156
    # addu	gp,t9,v0
    # Line 451
    # lw $t9, -27776($gp) # &__glDoPolygonClip
    # Line 450
    sw	$a3,8($sp)
    sd	$ra,16($sp)
    # Line 451
    bal __glDoPolygonClip
    move	$a3,$a4
    # Line 452
    ld	$ra,16($sp)
    # ld	gp,24(sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glClipTriangle

