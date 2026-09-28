# Source: ../soft/so_polydraw.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polydraw.c
# Total Functions: 9

.text

# Function: FillSubTriangle
# Declared: Line 24 (Source lines: 25-205)
# Address: 0x0dad0ab8 - 0x0dad0ffc (Size: 1348 bytes, Frame: 0)
.ent FillSubTriangle
FillSubTriangle:
    # Line 52
    lui	$v0,0xffff
    # Line 53
    lui	$v1,0xffff
    # Line 48
    lw	$t1,30160($a0)
    # Line 46
    lw	$a4,30168($a0)
    # Line 45
    lw	$t2,30140($a0)
    # Line 25
    move	$a3,$s8
    lui	$at,0x1
    ori	$at,$at,0x200
    subu	$sp,$sp,$at
    sd	$a3,64($sp)
    sd	$s2,88($sp)
    sd	$s5,80($sp)
    sd	$s3,72($sp)
    sd	$s4,48($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 41
    lw	$t3,29708($s0)
    # Line 40
    lw	$s4,30176($s0)
    # Line 39
    lw	$s3,30172($s0)
    # Line 38
    lw	$s5,30156($s0)
    # Line 37
    lw	$s2,30152($s0)
    sd	$s6,40($sp)
    # Line 25
    move	$s6,$a2
    # Line 47
    lw	$a2,30164($a0)
    sd	$s1,96($sp)
    # Line 25
    move	$s1,$a1
    # Line 44
    lw	$a1,30144($a0)
    sd	$s7,32($sp)
    # Line 43
    lw	$s7,30148($a0)
    # Line 42
    lw	$a0,29716($a0)
    # Line 25
    addu	$s8,$sp,$at
    # Line 51
    lui	$at,0xffff
    # Line 53
    addu	$v1,$v1,$s8
    # Line 52
    addu	$v0,$v0,$s8
    # Line 51
    addu	$at,$at,$s8
    addiu	$at,$at,32736
    # Line 52
    addiu	$v0,$v0,-32
    # Line 53
    addiu	$v1,$v1,-288
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    sw	$v1,30476($s0)
    # Line 49
    lw	$t9,30440($s0)
    # Line 52
    sw	$v0,30472($s0)
    sd	$a0,8($sp)
    # Line 53
    andi	$a5,$t9,0x20
    beqz	$a5,.L0dad0ba4
    # Line 51
    sw	$at,30468($s0)
    # Line 55
    lw	$v0,31112($s0)
    lw	$a3,3376($v0)
    lw	$v1,31140($s0)
    subu	$a3,$s1,$a3
    mult	$v1,$a3
    lw	$at,31128($s0)
    lw	$v0,3372($v0)
    mflo	$v1
    addu	$at,$at,$v1
    addu	$at,$at,$s2
    subu	$at,$at,$v0
    sw	$at,30456($s0)
.L0dad0ba4:
    andi	$a0,$t9,0x4
    beqz	$a0,.L0dad0bf0
    # Line 64
    andi	$a6,$t9,0x4000
    # Line 60
    lw	$v0,31232($s0)
    lw	$at,3376($v0)
    lw	$a3,31260($s0)
    subu	$at,$s1,$at
    mult	$a3,$at
    lw	$v0,3372($v0)
    sll	$v0,$v0,0x2
    lw	$at,31248($s0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sll	$v1,$s2,0x2
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    sw	$at,30444($s0)
    # Line 64
    andi	$a6,$t9,0x4000
.L0dad0bf0:
    andi	$a1,$t9,0x2
    lui	$t0,0x4
    lw	$v0,11768($s0)
    slt	$v1,$s1,$s6
    beqz	$v1,.L0dad0fbc
    sw	$v0,30484($s0)
    and	$t0,$t9,$t0
    andi	$a2,$t9,0x1
    andi	$t8,$t9,0x8
    andi	$a7,$t9,0x1000
    b	.L0dad0d80
    sd	$ra,104($sp)
.L0dad0c20:
    # Line 82
    ld	$v1,24($sp)
    # Line 79
    addu	$s4,$s4,$a4
    bltz	$s4,.L0dad0e24
    # Line 88
    addiu	$s1,$s1,1
    # Line 85
    addu	$s3,$s3,$t1
.L0dad0c34:
    # Line 92
    ld	$at,16($sp)
    # Line 89
    bltz	$s5,.L0dad0e38
    lui	$v0,0x7fff
    # Line 148
    beqz	$a2,.L0dad0f80
    addu	$s2,$s2,$t2
    beqz	$a1,.L0dad0c90
    nop
    # Line 154
    lwc1	$f4,30268($s0)
    lwc1	$f3,30224($s0)
    # Line 153
    lwc1	$f2,30220($s0)
    # Line 154
    add.s	$f3,$f3,$f4
    # Line 153
    lwc1	$f4,30264($s0)
    # Line 152
    lwc1	$f1,30216($s0)
    # Line 153
    add.s	$f2,$f2,$f4
    # Line 152
    lwc1	$f4,30260($s0)
    # Line 151
    lwc1	$f0,30212($s0)
    # Line 152
    add.s	$f1,$f1,$f4
    # Line 151
    lwc1	$f4,30256($s0)
    add.s	$f0,$f0,$f4
    # Line 154
    swc1	$f3,30224($s0)
    # Line 153
    swc1	$f2,30220($s0)
    # Line 152
    swc1	$f1,30216($s0)
    # Line 151
    swc1	$f0,30212($s0)
.L0dad0c90:
    # Line 154
    beqz	$t8,.L0dad0ce8
    nop
    # Line 161
    lwc1	$f5,30360($s0)
    lwc1	$f4,30244($s0)
    add.s	$f4,$f4,$f5
    # Line 160
    lwc1	$f3,30356($s0)
    lwc1	$f2,30240($s0)
    # Line 159
    lwc1	$f1,30236($s0)
    # Line 160
    add.s	$f2,$f2,$f3
    # Line 159
    lwc1	$f3,30352($s0)
    # Line 158
    lwc1	$f0,30232($s0)
    # Line 159
    add.s	$f1,$f1,$f3
    # Line 158
    lwc1	$f3,30348($s0)
    # Line 157
    lwc1	$f5,30228($s0)
    # Line 158
    add.s	$f0,$f0,$f3
    # Line 157
    lwc1	$f3,30344($s0)
    # Line 161
    swc1	$f4,30244($s0)
    # Line 157
    add.s	$f5,$f5,$f3
    # Line 160
    swc1	$f2,30240($s0)
    # Line 159
    swc1	$f1,30236($s0)
    # Line 158
    swc1	$f0,30232($s0)
    # Line 157
    swc1	$f5,30228($s0)
.L0dad0ce8:
    # Line 165
    beqz	$a5,.L0dad0d00
    nop
    # Line 170
    lw	$v0,30456($s0)
    lw	$at,30464($s0)
    addu	$at,$at,$v0
    sw	$at,30456($s0)
.L0dad0d00:
    beqz	$a6,.L0dad0d18
    nop
    # Line 175
    lw	$a3,30208($s0)
    lw	$v1,30320($s0)
    addu	$v1,$v1,$a3
    sw	$v1,30208($s0)
.L0dad0d18:
    beqz	$t0,.L0dad0d4c
    nop
    # Line 179
    lw	$at,30320($s0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 180
    lwc1	$f3,30516($s0)
    lwc1	$f1,30504($s0)
    # Line 179
    lwc1	$f0,30488($s0)
    # Line 180
    add.s	$f1,$f1,$f3
    # Line 179
    add.s	$f0,$f0,$f2
    # Line 180
    swc1	$f1,30504($s0)
    # Line 179
    swc1	$f0,30488($s0)
.L0dad0d4c:
    # Line 180
    beqz	$a0,.L0dad0d64
    nop
    # Line 192
    lw	$v1,30444($s0)
    lw	$v0,30452($s0)
    addu	$v0,$v0,$v1
    sw	$v0,30444($s0)
.L0dad0d64:
    beqz	$a7,.L0dad0d7c
    nop
    # Line 197
    lwc1	$f0,30424($s0)
    lwc1	$f3,30248($s0)
    add.s	$f3,$f3,$f0
    swc1	$f3,30248($s0)
.L0dad0d7c:
    beq	$s1,$s6,.L0dad0fb8
.L0dad0d80:
    # Line 64
    slt	$a3,$s1,$t3
    subu	$t9,$s3,$s2
    blez	$t9,.L0dad0c20
    # Line 89
    addu	$s5,$s5,$s7
    # Line 64
    bnez	$a3,.L0dad0c20
    ld	$at,8($sp)
    # Line 71
    slt	$at,$s1,$at
    beqz	$at,.L0dad0c20
    sd	$t9,112($sp)
    sd	$a4,208($sp)
    sd	$a5,200($sp)
    sd	$a1,184($sp)
    sd	$a2,176($sp)
    sd	$a6,168($sp)
    sd	$a7,160($sp)
    sd	$t0,152($sp)
    sd	$t1,144($sp)
    sd	$t2,136($sp)
    sd	$t3,128($sp)
    sd	$t8,120($sp)
    sd	$a0,192($sp)
    # Line 75
    move	$a0,$s0
    # Line 73
    sw	$s1,30204($s0)
    # Line 75
    lw	$t9,12240($s0)
    # Line 74
    ld	$v0,112($sp)
    # Line 72
    sw	$s2,30200($s0)
    # Line 75
    jalr	$t9
    # Line 74
    sw	$v0,30252($s0)
    ld	$t8,120($sp)
    ld	$t3,128($sp)
    ld	$t2,136($sp)
    ld	$t1,144($sp)
    ld	$t0,152($sp)
    ld	$a7,160($sp)
    ld	$a6,168($sp)
    ld	$a2,176($sp)
    ld	$a1,184($sp)
    ld	$a0,192($sp)
    ld	$a5,200($sp)
    b	.L0dad0c20
    ld	$a4,208($sp)
.L0dad0e24:
    # Line 82
    addu	$s3,$s3,$v1
    lui	$a3,0x7fff
    ori	$a3,$a3,0xffff
    # Line 83
    b	.L0dad0c34
    and	$s4,$s4,$a3
.L0dad0e38:
    # Line 92
    addu	$s2,$s2,$at
    ori	$v0,$v0,0xffff
    # Line 93
    beqz	$a2,.L0dad0f9c
    and	$s5,$s5,$v0
    beqz	$a1,.L0dad0e90
    nop
    # Line 100
    lwc1	$f0,30284($s0)
    lwc1	$f4,30224($s0)
    # Line 99
    lwc1	$f3,30220($s0)
    # Line 100
    add.s	$f4,$f4,$f0
    # Line 99
    lwc1	$f0,30280($s0)
    # Line 98
    lwc1	$f2,30216($s0)
    # Line 99
    add.s	$f3,$f3,$f0
    # Line 98
    lwc1	$f0,30276($s0)
    # Line 97
    lwc1	$f1,30212($s0)
    # Line 98
    add.s	$f2,$f2,$f0
    # Line 97
    lwc1	$f0,30272($s0)
    add.s	$f1,$f1,$f0
    # Line 100
    swc1	$f4,30224($s0)
    # Line 99
    swc1	$f3,30220($s0)
    # Line 98
    swc1	$f2,30216($s0)
    # Line 97
    swc1	$f1,30212($s0)
.L0dad0e90:
    # Line 100
    beqz	$t8,.L0dad0ee8
    nop
    # Line 107
    lwc1	$f1,30380($s0)
    lwc1	$f0,30244($s0)
    add.s	$f0,$f0,$f1
    # Line 106
    lwc1	$f5,30376($s0)
    lwc1	$f4,30240($s0)
    # Line 105
    lwc1	$f3,30236($s0)
    # Line 106
    add.s	$f4,$f4,$f5
    # Line 105
    lwc1	$f5,30372($s0)
    # Line 104
    lwc1	$f2,30232($s0)
    # Line 105
    add.s	$f3,$f3,$f5
    # Line 104
    lwc1	$f5,30368($s0)
    # Line 103
    lwc1	$f1,30228($s0)
    # Line 104
    add.s	$f2,$f2,$f5
    # Line 103
    lwc1	$f5,30364($s0)
    # Line 107
    swc1	$f0,30244($s0)
    # Line 103
    add.s	$f1,$f1,$f5
    # Line 106
    swc1	$f4,30240($s0)
    # Line 105
    swc1	$f3,30236($s0)
    # Line 104
    swc1	$f2,30232($s0)
    # Line 103
    swc1	$f1,30228($s0)
.L0dad0ee8:
    # Line 111
    beqz	$a5,.L0dad0f00
    nop
    # Line 116
    lw	$a3,30456($s0)
    lw	$v1,30460($s0)
    addu	$v1,$v1,$a3
    sw	$v1,30456($s0)
.L0dad0f00:
    beqz	$a6,.L0dad0f18
    nop
    # Line 121
    lw	$v0,30208($s0)
    lw	$at,30324($s0)
    addu	$at,$at,$v0
    sw	$at,30208($s0)
.L0dad0f18:
    beqz	$t0,.L0dad0f4c
    nop
    # Line 125
    lw	$v1,30324($s0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 126
    lwc1	$f1,30512($s0)
    lwc1	$f3,30504($s0)
    # Line 125
    lwc1	$f2,30488($s0)
    # Line 126
    add.s	$f3,$f3,$f1
    # Line 125
    add.s	$f2,$f2,$f0
    # Line 126
    swc1	$f3,30504($s0)
    # Line 125
    swc1	$f2,30488($s0)
.L0dad0f4c:
    # Line 126
    beqz	$a0,.L0dad0f64
    nop
    # Line 139
    lw	$at,30444($s0)
    lw	$a3,30448($s0)
    addu	$a3,$a3,$at
    sw	$a3,30444($s0)
.L0dad0f64:
    beqz	$a7,.L0dad0d7c
    nop
    # Line 144
    lwc1	$f2,30428($s0)
    lwc1	$f1,30248($s0)
    add.s	$f1,$f1,$f2
    b	.L0dad0d7c
    swc1	$f1,30248($s0)
.L0dad0f80:
    # Line 161
    beqz	$a1,.L0dad0ce8
    nop
    # Line 165
    lwc1	$f0,30256($s0)
    lwc1	$f3,30212($s0)
    add.s	$f3,$f3,$f0
    b	.L0dad0ce8
    swc1	$f3,30212($s0)
.L0dad0f9c:
    # Line 107
    beqz	$a1,.L0dad0ee8
    nop
    # Line 111
    lwc1	$f2,30272($s0)
    lwc1	$f1,30212($s0)
    add.s	$f1,$f1,$f2
    b	.L0dad0ee8
    swc1	$f1,30212($s0)
.L0dad0fb8:
    ld	$ra,104($sp)
.L0dad0fbc:
    # Line 204
    sw	$s4,30176($s0)
    # Line 203
    sw	$s3,30172($s0)
    # Line 202
    sw	$s5,30156($s0)
    # Line 201
    sw	$s2,30152($s0)
    # Line 205
    ld	$s0,56($sp)
    ld	$s1,96($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    ld	$s4,48($sp)
    ld	$s5,80($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$v0,64($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end FillSubTriangle

# Function: __glSnapXLeft
# Declared: Line 212 (Source lines: 213-266)
# Address: 0x0dad0ffc - 0x0dad1158 (Size: 348 bytes, Frame: 0)
.globl __glSnapXLeft
.ent __glSnapXLeft
__glSnapXLeft:
    # Line 223
    trunc.w.s	$f0,$f13
    cvt.s.w	$f1,$f0
    # Line 213
    lui	$a2,0x12
    # Line 223
    sub.s	$f1,$f13,$f1
    # Line 213
    addiu	$a2,$a2,26732
    # addu	at,t9,a2
    # Line 223
    ldc1	$f5,_lit8_41e0000000000000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f5
    # Line 224
    trunc.w.s	$f3,$f14
    cvt.s.w	$f4,$f3
    # Line 238
    lw	$a5,30440($a0)
    # Line 224
    lui	$a1,0x7fff
    ori	$a1,$a1,0xffff
    # Line 223
    trunc.w.d	$f1,$f1
    lui	$v1,0x4000
    # Line 224
    mfc1	$a3,$f3
    mtc1	$zero,$f2
    # Line 223
    mfc1	$v0,$f1
    # Line 224
    c.lt.s	$f14,$f2
    # Line 223
    addu	$v0,$v0,$v1
    # Line 224
    and	$a1,$v0,$a1
    # Line 223
    mfc1	$v1,$f0
    # Line 224
    sw	$a1,30156($a0)
    # Line 223
    srl	$v0,$v0,0x1f
    addu	$v0,$v0,$v1
    # Line 224
    bc1f	.L0dad1094
    # Line 223
    sw	$v0,30152($a0)
    # Line 230
    addiu	$a4,$a3,-1
    # Line 233
    sub.s	$f2,$f4,$f14
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    negu	$v0,$v0
    b	.L0dad10b4
    sw	$v0,30148($a0)
.L0dad1094:
    # Line 235
    addiu	$a4,$a3,1
    # Line 238
    sub.s	$f3,$f14,$f4
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sw	$v1,30148($a0)
.L0dad10b4:
    andi	$a1,$a5,0x20
    beqz	$a1,.L0dad1104
    # Line 250
    andi	$v0,$a5,0x4
    # Line 247
    lw	$a1,31136($a0)
    # Line 248
    lw	$a2,31140($a0)
    mult	$a2,$a1
    mflo	$v0
    nop
    nop
    # Line 249
    mult	$a3,$a1
    mflo	$v1
    nop
    nop
    # Line 250
    mult	$a4,$a1
    # Line 249
    addu	$v1,$v1,$v0
    sw	$v1,30464($a0)
    # Line 250
    mflo	$a2
    addu	$a2,$a2,$v0
    sw	$a2,30460($a0)
    andi	$v0,$a5,0x4
.L0dad1104:
    beqzl	$v0,.L0dad1150
    # Line 265
    sw	$a4,30144($a0)
    # Line 259
    lw	$v0,31256($a0)
    # Line 260
    lw	$v1,31260($a0)
    mult	$v1,$v0
    mflo	$a1
    nop
    nop
    # Line 261
    mult	$a3,$v0
    mflo	$a2
    nop
    nop
    # Line 262
    mult	$a4,$v0
    # Line 261
    addu	$a2,$a2,$a1
    sw	$a2,30452($a0)
    # Line 262
    mflo	$v1
    addu	$v1,$v1,$a1
    sw	$v1,30448($a0)
    # Line 265
    sw	$a4,30144($a0)
.L0dad1150:
    # Line 266
    jr	$ra
    # Line 264
    sw	$a3,30140($a0)
.end __glSnapXLeft

# Function: __glSnapXRight
# Declared: Line 268 (Source lines: 269-297)
# Address: 0x0dad1158 - 0x0dad1224 (Size: 204 bytes, Frame: 0)
.globl __glSnapXRight
.ent __glSnapXRight
__glSnapXRight:
    # Line 279
    trunc.w.s	$f0,$f13
    cvt.s.w	$f1,$f0
    # Line 269
    lui	$a2,0x12
    # Line 279
    sub.s	$f1,$f13,$f1
    # Line 269
    addiu	$a2,$a2,26384
    # addu	at,t9,a2
    # Line 279
    ldc1	$f6,_lit8_41e0000000000000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f6
    # Line 280
    trunc.w.s	$f4,$f14
    # Line 279
    trunc.w.d	$f1,$f1
    # Line 290
    lwc1	$f5,_lit_3f800000
    # Line 280
    lui	$a1,0x7fff
    cvt.s.w	$f4,$f4
    ori	$a1,$a1,0xffff
    mtc1	$zero,$f2
    # Line 279
    mfc1	$v0,$f1
    lui	$v1,0x4000
    # Line 280
    c.lt.s	$f14,$f2
    # Line 279
    addu	$v0,$v0,$v1
    # Line 280
    and	$a1,$v0,$a1
    # Line 279
    mfc1	$v1,$f0
    # Line 280
    sw	$a1,36($a0)
    # Line 279
    srl	$v0,$v0,0x1f
    addu	$v0,$v0,$v1
    # Line 280
    bc1f	.L0dad11ec
    # Line 279
    sw	$v0,32($a0)
    # Line 288
    sub.s	$f0,$f4,$f14
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f6
    trunc.w.d	$f0,$f0
    # Line 285
    lwc1	$f5,_lit_bf800000
    # Line 288
    mfc1	$v0,$f0
    # Line 285
    add.s	$f5,$f4,$f5
    # Line 288
    negu	$v0,$v0
    b	.L0dad1208
    sw	$v0,28($a0)
.L0dad11ec:
    # Line 293
    sub.s	$f0,$f14,$f4
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f6
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    # Line 290
    add.s	$f5,$f4,$f5
    # Line 293
    sw	$v1,28($a0)
.L0dad1208:
    # Line 295
    trunc.w.s	$f1,$f4
    # Line 296
    trunc.w.s	$f2,$f5
    # Line 295
    mfc1	$a1,$f1
    # Line 296
    mfc1	$a2,$f2
    # Line 295
    sw	$a1,20($a0)
    # Line 297
    jr	$ra
    # Line 296
    sw	$a2,24($a0)
.end __glSnapXRight

# Function: __glComputePolygonOffset
# Declared: Line 299 (Source lines: 300-311)
# Address: 0x0dad1224 - 0x0dad1278 (Size: 84 bytes, Frame: 0)
.ent __glComputePolygonOffset
__glComputePolygonOffset:
    # Line 300
    lwc1	$f6,30340($a0)
    lwc1	$f4,30336($a0)
    abs.s	$f6,$f6
    abs.s	$f4,$f4
    c.lt.s	$f4,$f6
    nop
    bc1f	.L0dad1248
    # Line 309
    mov.s	$f5,$f4
    # Line 307
    mov.s	$f5,$f6
.L0dad1248:
    # Line 311
    lw	$at,31308($a0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f0,476($a0)
    lwc1	$f1,480($a0)
    mul.s	$f0,$f0,$f5
    mul.s	$f1,$f1,$f2
    jr	$ra
    add.s	$f0,$f0,$f1
.end __glComputePolygonOffset

# Function: __glPolygonOffsetForLineAndPoint
# Declared: Line 314 (Source lines: 318-337)
# Address: 0x0dad1278 - 0x0dad131c (Size: 164 bytes, Frame: 192)
.globl __glPolygonOffsetForLineAndPoint
.ent __glPolygonOffsetForLineAndPoint
__glPolygonOffsetForLineAndPoint:
    # Line 320
    lwc1	$f3,30180($a0)
    lwc1	$f2,3284($a0)
    div.s	$f2,$f2,$f3
    # Line 321
    lwc1	$f1,30184($a0)
    # Line 322
    lwc1	$f3,30188($a0)
    # Line 333
    mul.s	$f1,$f2,$f1
    # Line 324
    lwc1	$f0,30196($a0)
    # Line 333
    mul.s	$f3,$f2,$f3
    # Line 323
    lwc1	$f6,30192($a0)
    # Line 332
    mul.s	$f0,$f2,$f0
    mul.s	$f2,$f2,$f6
    # Line 329
    lwc1	$f7,136($a3)
    # Line 330
    lwc1	$f4,136($a2)
    # Line 329
    lwc1	$f5,136($a1)
    # Line 330
    sub.s	$f4,$f4,$f7
    # Line 329
    sub.s	$f5,$f5,$f7
    # Line 332
    mul.s	$f2,$f2,$f4
    # Line 333
    mul.s	$f3,$f3,$f5
    # Line 318
    addiu	$sp,$sp,-64
    # Line 333
    mul.s	$f1,$f1,$f4
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    # Line 332
    mul.s	$f0,$f0,$f5
    sd	$ra,0($sp)
    # Line 318
    lui	$ra,0x12
    addiu	$ra,$ra,26096
    # addu	gp,t9,ra
    # Line 333
    sub.s	$f1,$f1,$f3
    # Line 335
    # lw $t9, -32716($gp) # &sub_0dad0000
    # Line 318
    move	$s8,$a0
    # Line 332
    sub.s	$f0,$f0,$f2
    # Line 335
    addiu	$t9,$t9,4644
    # Line 333
    swc1	$f1,30336($s8)
    # Line 335
    bal __glSnapXRight
    # Line 332
    swc1	$f0,30340($s8)
    # ld	gp,16(sp)
    # Line 337
    ld	$ra,0($sp)
    # Line 335
    swc1	$f0,30492($s8)
    # Line 337
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glPolygonOffsetForLineAndPoint

# Function: __glPolygonOffsetZ
# Declared: Line 339 (Source lines: 341-374)
# Address: 0x0dad131c - 0x0dad1484 (Size: 360 bytes, Frame: 208)
.globl __glPolygonOffsetZ
.ent __glPolygonOffsetZ
__glPolygonOffsetZ:
    # Line 341
    addiu	$sp,$sp,-80
    sdc1	$f15,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$s0,16($sp)
    # sd	gp,40(sp)
    sd	$s8,32($sp)
    lui	$s8,0x12
    addiu	$s8,$s8,25932
    # addu	gp,t9,s8
    # Line 346
    # lw $t9, -32716($gp) # &sub_0dad0000
    # Line 341
    move	$s0,$a0
    sd	$ra,24($sp)
    # Line 346
    addiu	$t9,$t9,4644
    bal __glSnapXRight
    # Line 341
    move	$s8,$a1
    # Line 346
    lwc1	$f6,30340($s0)
    ldc1	$f3,8($sp)
    lwc1	$f1,30336($s0)
    mul.s	$f2,$f6,$f30
    mul.s	$f1,$f1,$f3
    ld	$ra,24($sp)
    lwc1	$f5,136($s8)
    # Line 360
    dmtc1	$zero,$f8
    ld	$s8,32($sp)
    # Line 346
    add.s	$f5,$f5,$f2
    lw	$at,30328($s0)
    lw	$a0,31308($s0)
    ldc1	$f30,0($sp)
    add.s	$f5,$f5,$f1
    # Line 360
    dsll32	$v0,$a0,0x0
    dsrl32	$v0,$v0,0x0
    # Line 346
    bltz	$at,.L0dad1470
    add.s	$f5,$f5,$f0
    # Line 357
    sw	$a0,30500($s0)
    # Line 356
    sw	$zero,30496($s0)
.L0dad13ac:
    # Line 360
    swc1	$f5,30488($s0)
    cvt.d.s	$f4,$f6
    # Line 369
    ldc1	$f0,_lit8_3ee4f8b588e368f1
    # Line 360
    c.lt.d	$f8,$f4
    dmtc1	$v0,$f7
    bc1t	.L0dad1440
    cvt.s.l	$f7,$f7
    # Line 364
    c.lt.d	$f4,$f8
    nop
    bc1f	.L0dad13f4
    # Line 371
    dsll32	$v1,$a0,0x0
    # Line 367
    neg.s	$f1,$f6
    div.s	$f1,$f7,$f1
    # Line 366
    neg.s	$f0,$f5
    div.s	$f0,$f0,$f6
    # Line 367
    swc1	$f1,30508($s0)
    b	.L0dad1424
    # Line 366
    swc1	$f0,30504($s0)
.L0dad13f4:
    # Line 369
    sub.s	$f3,$f7,$f5
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f0
    # Line 371
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.d.l	$f2,$f2
    div.d	$f2,$f2,$f0
    # Line 369
    cvt.s.d	$f3,$f3
    # Line 371
    cvt.s.d	$f2,$f2
    # Line 369
    swc1	$f3,30504($s0)
    # Line 371
    swc1	$f2,30508($s0)
.L0dad1424:
    # Line 374
    trunc.l.s	$f4,$f5
    # ld	gp,40(sp)
    ld	$s0,16($sp)
    dmfc1	$v0,$f4
    addiu	$sp,$sp,80
    jr	$ra
    sll	$v0,$v0,0x0
.L0dad1440:
    # Line 364
    dsll32	$v1,$a0,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.d.l	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 363
    sub.s	$f1,$f7,$f5
    div.s	$f1,$f1,$f6
    # Line 364
    cvt.s.d	$f0,$f0
    # Line 363
    swc1	$f1,30504($s0)
    # Line 364
    b	.L0dad1424
    swc1	$f0,30508($s0)
.L0dad1470:
    # Line 354
    sw	$zero,30500($s0)
    # Line 353
    sw	$a0,30496($s0)
    ldc1	$f30,0($sp)
    # Line 354
    b	.L0dad13ac
    ld	$s8,32($sp)
.end __glPolygonOffsetZ

# Function: SetInitialParameters
# Declared: Line 378 (Source lines: 381-541)
# Address: 0x0dad1484 - 0x0dad1c38 (Size: 1972 bytes, Frame: 240)
.ent SetInitialParameters
SetInitialParameters:
    # Line 381
    mov.s	$f4,$f15
    # Line 385
    lw	$at,30144($a0)
    # Line 381
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 385
    mtc1	$at,$f0
    # Line 381
    move	$s0,$a0
    # Line 383
    lw	$v0,30140($a0)
    # Line 385
    cvt.s.w	$f0,$f0
    sdc1	$f24,8($sp)
    # Line 383
    mtc1	$v0,$f24
    sdc1	$f20,16($sp)
    # Line 381
    mov.s	$f20,$f16
    # Line 383
    cvt.s.w	$f24,$f24
    sdc1	$f22,0($sp)
    # Line 385
    lw	$a7,30440($a0)
    # Line 381
    mov.s	$f22,$f17
    sd	$s8,24($sp)
    # Line 385
    andi	$s8,$a7,0x1000
    c.lt.s	$f24,$f0
    andi	$a6,$a7,0x4000
    andi	$a5,$a7,0x2
    bc1f	.L0dad17ac
    andi	$a4,$a7,0x1
    beqz	$a4,.L0dad1bb8
    nop
    beqz	$a5,.L0dad15c4
    # Line 404
    andi	$v1,$a7,0x8
    # Line 390
    lwc1	$f6,30288($s0)
    mul.s	$f3,$f6,$f20
    lwc1	$f2,30304($s0)
    # Line 391
    mul.s	$f0,$f6,$f24
    # Line 390
    lwc1	$f1,0($a2)
    mul.s	$f5,$f2,$f22
    add.s	$f1,$f1,$f3
    # Line 391
    add.s	$f0,$f0,$f2
    # Line 394
    lwc1	$f3,30292($s0)
    # Line 390
    add.s	$f1,$f1,$f5
    # Line 395
    mul.s	$f5,$f3,$f24
    # Line 392
    add.s	$f6,$f6,$f0
    # Line 394
    lwc1	$f7,30308($s0)
    mul.s	$f2,$f3,$f20
    # Line 392
    swc1	$f6,30272($s0)
    # Line 398
    lwc1	$f6,30296($s0)
    # Line 391
    swc1	$f0,30256($s0)
    # Line 390
    swc1	$f1,30212($s0)
    # Line 395
    add.s	$f5,$f5,$f7
    # Line 394
    lwc1	$f0,4($a2)
    mul.s	$f1,$f7,$f22
    add.s	$f0,$f0,$f2
    # Line 399
    mul.s	$f7,$f6,$f24
    # Line 396
    add.s	$f3,$f3,$f5
    # Line 398
    mul.s	$f2,$f6,$f20
    # Line 394
    add.s	$f0,$f0,$f1
    # Line 395
    swc1	$f5,30260($s0)
    # Line 398
    lwc1	$f1,30312($s0)
    # Line 396
    swc1	$f3,30276($s0)
    # Line 394
    swc1	$f0,30216($s0)
    # Line 399
    add.s	$f7,$f7,$f1
    # Line 398
    lwc1	$f0,8($a2)
    mul.s	$f3,$f1,$f22
    add.s	$f0,$f0,$f2
    # Line 402
    lwc1	$f2,30300($s0)
    # Line 400
    add.s	$f6,$f6,$f7
    # Line 399
    swc1	$f7,30264($s0)
    # Line 403
    mul.s	$f1,$f2,$f24
    # Line 398
    add.s	$f0,$f0,$f3
    # Line 400
    swc1	$f6,30280($s0)
    # Line 402
    mul.s	$f5,$f2,$f20
    lwc1	$f3,30316($s0)
    # Line 398
    swc1	$f0,30220($s0)
    # Line 402
    lwc1	$f0,12($a2)
    # Line 403
    add.s	$f1,$f1,$f3
    # Line 402
    mul.s	$f3,$f3,$f22
    add.s	$f0,$f0,$f5
    # Line 404
    add.s	$f2,$f2,$f1
    # Line 402
    add.s	$f0,$f0,$f3
    # Line 403
    swc1	$f1,30268($s0)
    # Line 404
    swc1	$f2,30284($s0)
    # Line 402
    swc1	$f0,30224($s0)
    # Line 404
    andi	$v1,$a7,0x8
.L0dad15c4:
    beqz	$v1,.L0dad16e4
    nop
    # Line 408
    lwc1	$f7,30384($s0)
    # Line 407
    lwc1	$f6,140($a1)
    # Line 408
    lwc1	$f1,48($a1)
    mul.s	$f5,$f7,$f20
    mul.s	$f1,$f1,$f6
    lwc1	$f3,30404($s0)
    # Line 410
    mul.s	$f0,$f7,$f24
    # Line 408
    mul.s	$f2,$f3,$f22
    add.s	$f1,$f1,$f5
    # Line 410
    add.s	$f0,$f0,$f3
    # Line 408
    add.s	$f1,$f1,$f2
    # Line 413
    lwc1	$f2,30388($s0)
    # Line 411
    add.s	$f7,$f7,$f0
    # Line 415
    mul.s	$f3,$f2,$f24
    # Line 410
    swc1	$f0,30344($s0)
    # Line 411
    swc1	$f7,30364($s0)
    # Line 408
    swc1	$f1,30228($s0)
    # Line 413
    mul.s	$f1,$f2,$f20
    lwc1	$f5,52($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f0,30408($s0)
    # Line 415
    add.s	$f3,$f3,$f0
    # Line 413
    mul.s	$f7,$f0,$f22
    add.s	$f5,$f5,$f1
    # Line 416
    add.s	$f2,$f2,$f3
    # Line 413
    add.s	$f5,$f5,$f7
    # Line 418
    lwc1	$f7,30392($s0)
    # Line 415
    swc1	$f3,30348($s0)
    # Line 420
    mul.s	$f0,$f7,$f24
    # Line 416
    swc1	$f2,30368($s0)
    # Line 413
    swc1	$f5,30232($s0)
    # Line 418
    mul.s	$f5,$f7,$f20
    lwc1	$f1,56($a1)
    mul.s	$f1,$f1,$f6
    lwc1	$f3,30412($s0)
    # Line 420
    add.s	$f0,$f0,$f3
    # Line 418
    mul.s	$f2,$f3,$f22
    add.s	$f1,$f1,$f5
    # Line 421
    add.s	$f7,$f7,$f0
    # Line 418
    add.s	$f1,$f1,$f2
    # Line 423
    lwc1	$f2,30396($s0)
    # Line 421
    swc1	$f7,30372($s0)
    # Line 423
    mul.s	$f7,$f2,$f20
    # Line 420
    swc1	$f0,30352($s0)
    # Line 418
    swc1	$f1,30236($s0)
    # Line 425
    mul.s	$f3,$f2,$f24
    # Line 423
    lwc1	$f5,60($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f6,30416($s0)
    # Line 425
    add.s	$f3,$f3,$f6
    # Line 423
    mul.s	$f0,$f6,$f22
    add.s	$f5,$f5,$f7
    # Line 428
    lwc1	$f7,30400($s0)
    # Line 426
    add.s	$f2,$f2,$f3
    # Line 425
    swc1	$f3,30356($s0)
    # Line 429
    mul.s	$f6,$f7,$f24
    # Line 423
    add.s	$f5,$f5,$f0
    # Line 426
    swc1	$f2,30376($s0)
    # Line 428
    mul.s	$f1,$f7,$f20
    lwc1	$f0,30420($s0)
    # Line 423
    swc1	$f5,30240($s0)
    # Line 428
    lwc1	$f5,180($a1)
    # Line 429
    add.s	$f6,$f6,$f0
    # Line 428
    mul.s	$f0,$f0,$f22
    add.s	$f5,$f5,$f1
    # Line 430
    add.s	$f7,$f7,$f6
    # Line 428
    add.s	$f5,$f5,$f0
    # Line 429
    swc1	$f6,30360($s0)
    # Line 430
    swc1	$f7,30380($s0)
    # Line 428
    swc1	$f5,30244($s0)
.L0dad16e4:
    # Line 436
    beqz	$a6,.L0dad1a9c
    nop
    # Line 442
    lwc1	$f5,30340($s0)
    mul.s	$f3,$f5,$f24
    lwc1	$f6,30336($s0)
    add.s	$f3,$f3,$f6
    # Line 444
    add.s	$f2,$f5,$f3
    # Line 443
    trunc.w.s	$f3,$f3
    # Line 444
    lw	$at,1696($s0)
    trunc.w.s	$f2,$f2
    lui	$v1,0x100
    # Line 443
    mfc1	$v0,$f3
    # Line 444
    and	$at,$at,$v1
    mfc1	$a3,$f2
    # Line 443
    sw	$v0,30320($s0)
    # Line 444
    beqz	$at,.L0dad1a78
    sw	$a3,30324($s0)
    sdc1	$f4,40($sp)
    # Line 447
    move	$a0,$s0
    # lw $t9, -27752($gp) # &__glPolygonOffsetZ
    mov.s	$f14,$f20
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f5,30340($s0)
    sw	$v0,30208($s0)
    dmtc1	$zero,$f0
    cvt.d.s	$f4,$f5
    lw	$a0,30324($s0)
    c.eq.d	$f4,$f0
    ld	$ra,48($sp)
    negu	$a0,$a0
    bc1f	.L0dad1b50
    ldc1	$f4,40($sp)
    # Line 449
    mtc1	$a0,$f2
    nop
    cvt.d.w	$f2,$f2
    ldc1	$f3,_lit8_3ee4f8b588e368f1
    div.d	$f2,$f2,$f3
    # Line 450
    lw	$a3,30320($s0)
    negu	$a3,$a3
    mtc1	$a3,$f1
    nop
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f3
    # Line 449
    cvt.s.d	$f2,$f2
    # Line 450
    cvt.s.d	$f1,$f1
    # Line 449
    swc1	$f2,30512($s0)
    # Line 450
    b	.L0dad1a9c
    swc1	$f1,30516($s0)
.L0dad17ac:
    # Line 463
    beqz	$a4,.L0dad1bf8
    nop
    beqz	$a5,.L0dad1890
    # Line 481
    andi	$at,$a7,0x8
    # Line 468
    lwc1	$f1,30288($s0)
    mul.s	$f7,$f1,$f20
    lwc1	$f6,30304($s0)
    # Line 469
    mul.s	$f3,$f1,$f24
    # Line 468
    lwc1	$f5,0($a2)
    mul.s	$f0,$f6,$f22
    add.s	$f5,$f5,$f7
    # Line 469
    add.s	$f3,$f3,$f6
    # Line 471
    lwc1	$f7,30292($s0)
    # Line 468
    add.s	$f5,$f5,$f0
    # Line 472
    mul.s	$f0,$f7,$f24
    # Line 470
    sub.s	$f1,$f3,$f1
    # Line 471
    lwc1	$f2,30308($s0)
    mul.s	$f6,$f7,$f20
    # Line 470
    swc1	$f1,30272($s0)
    # Line 475
    lwc1	$f1,30296($s0)
    # Line 469
    swc1	$f3,30256($s0)
    # Line 468
    swc1	$f5,30212($s0)
    # Line 472
    add.s	$f0,$f0,$f2
    # Line 471
    lwc1	$f3,4($a2)
    mul.s	$f5,$f2,$f22
    add.s	$f3,$f3,$f6
    # Line 476
    mul.s	$f2,$f1,$f24
    # Line 473
    sub.s	$f7,$f0,$f7
    # Line 475
    mul.s	$f6,$f1,$f20
    # Line 471
    add.s	$f3,$f3,$f5
    # Line 472
    swc1	$f0,30260($s0)
    # Line 475
    lwc1	$f5,30312($s0)
    # Line 473
    swc1	$f7,30276($s0)
    # Line 471
    swc1	$f3,30216($s0)
    # Line 476
    add.s	$f2,$f2,$f5
    # Line 475
    lwc1	$f3,8($a2)
    mul.s	$f7,$f5,$f22
    add.s	$f3,$f3,$f6
    # Line 479
    lwc1	$f6,30300($s0)
    # Line 477
    sub.s	$f1,$f2,$f1
    # Line 476
    swc1	$f2,30264($s0)
    # Line 480
    mul.s	$f5,$f6,$f24
    # Line 475
    add.s	$f3,$f3,$f7
    # Line 477
    swc1	$f1,30280($s0)
    # Line 479
    mul.s	$f0,$f6,$f20
    lwc1	$f7,30316($s0)
    # Line 475
    swc1	$f3,30220($s0)
    # Line 479
    lwc1	$f3,12($a2)
    # Line 480
    add.s	$f5,$f5,$f7
    # Line 479
    mul.s	$f7,$f7,$f22
    add.s	$f3,$f3,$f0
    # Line 481
    sub.s	$f6,$f5,$f6
    # Line 479
    add.s	$f3,$f3,$f7
    # Line 480
    swc1	$f5,30268($s0)
    # Line 481
    swc1	$f6,30284($s0)
    # Line 479
    swc1	$f3,30224($s0)
    # Line 481
    andi	$at,$a7,0x8
.L0dad1890:
    beqz	$at,.L0dad19b0
    nop
    # Line 485
    lwc1	$f2,30384($s0)
    # Line 484
    lwc1	$f1,140($a1)
    # Line 485
    lwc1	$f5,48($a1)
    mul.s	$f0,$f2,$f20
    mul.s	$f5,$f5,$f1
    lwc1	$f7,30404($s0)
    # Line 487
    mul.s	$f3,$f2,$f24
    # Line 485
    mul.s	$f6,$f7,$f22
    add.s	$f5,$f5,$f0
    # Line 487
    add.s	$f3,$f3,$f7
    # Line 485
    add.s	$f5,$f5,$f6
    # Line 490
    lwc1	$f6,30388($s0)
    # Line 488
    sub.s	$f2,$f3,$f2
    # Line 492
    mul.s	$f7,$f6,$f24
    # Line 487
    swc1	$f3,30344($s0)
    # Line 488
    swc1	$f2,30364($s0)
    # Line 485
    swc1	$f5,30228($s0)
    # Line 490
    mul.s	$f5,$f6,$f20
    lwc1	$f0,52($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,30408($s0)
    # Line 492
    add.s	$f7,$f7,$f3
    # Line 490
    mul.s	$f2,$f3,$f22
    add.s	$f0,$f0,$f5
    # Line 493
    sub.s	$f6,$f7,$f6
    # Line 490
    add.s	$f0,$f0,$f2
    # Line 495
    lwc1	$f2,30392($s0)
    # Line 492
    swc1	$f7,30348($s0)
    # Line 497
    mul.s	$f3,$f2,$f24
    # Line 493
    swc1	$f6,30368($s0)
    # Line 490
    swc1	$f0,30232($s0)
    # Line 495
    mul.s	$f0,$f2,$f20
    lwc1	$f5,56($a1)
    mul.s	$f5,$f5,$f1
    lwc1	$f7,30412($s0)
    # Line 497
    add.s	$f3,$f3,$f7
    # Line 495
    mul.s	$f6,$f7,$f22
    add.s	$f5,$f5,$f0
    # Line 498
    sub.s	$f2,$f3,$f2
    # Line 495
    add.s	$f5,$f5,$f6
    # Line 500
    lwc1	$f6,30396($s0)
    # Line 498
    swc1	$f2,30372($s0)
    # Line 500
    mul.s	$f2,$f6,$f20
    # Line 497
    swc1	$f3,30352($s0)
    # Line 495
    swc1	$f5,30236($s0)
    # Line 502
    mul.s	$f7,$f6,$f24
    # Line 500
    lwc1	$f0,60($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,30416($s0)
    # Line 502
    add.s	$f7,$f7,$f1
    # Line 500
    mul.s	$f3,$f1,$f22
    add.s	$f0,$f0,$f2
    # Line 505
    lwc1	$f2,30400($s0)
    # Line 503
    sub.s	$f6,$f7,$f6
    # Line 502
    swc1	$f7,30356($s0)
    # Line 506
    mul.s	$f1,$f2,$f24
    # Line 500
    add.s	$f0,$f0,$f3
    # Line 503
    swc1	$f6,30376($s0)
    # Line 505
    mul.s	$f5,$f2,$f20
    lwc1	$f3,30420($s0)
    # Line 500
    swc1	$f0,30240($s0)
    # Line 505
    lwc1	$f0,180($a1)
    # Line 506
    add.s	$f1,$f1,$f3
    # Line 505
    mul.s	$f3,$f3,$f22
    add.s	$f0,$f0,$f5
    # Line 507
    sub.s	$f2,$f1,$f2
    # Line 505
    add.s	$f0,$f0,$f3
    # Line 506
    swc1	$f1,30360($s0)
    # Line 507
    swc1	$f2,30380($s0)
    # Line 505
    swc1	$f0,30244($s0)
.L0dad19b0:
    # Line 513
    beqz	$a6,.L0dad1afc
    nop
    # Line 518
    lwc1	$f5,30340($s0)
    mul.s	$f1,$f5,$f24
    lwc1	$f6,30336($s0)
    add.s	$f1,$f1,$f6
    # Line 520
    sub.s	$f0,$f1,$f5
    # Line 519
    trunc.w.s	$f1,$f1
    # Line 520
    lw	$v1,1696($s0)
    trunc.w.s	$f0,$f0
    lui	$at,0x100
    # Line 519
    mfc1	$a3,$f1
    # Line 520
    and	$v1,$v1,$at
    mfc1	$v0,$f0
    # Line 519
    sw	$a3,30320($s0)
    # Line 520
    beqz	$v1,.L0dad1ad8
    sw	$v0,30324($s0)
    sdc1	$f4,40($sp)
    # Line 522
    move	$a0,$s0
    # lw $t9, -27752($gp) # &__glPolygonOffsetZ
    mov.s	$f14,$f20
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f5,30340($s0)
    sw	$v0,30208($s0)
    dmtc1	$zero,$f3
    cvt.d.s	$f2,$f5
    ldc1	$f4,40($sp)
    c.eq.d	$f2,$f3
    lw	$a0,30324($s0)
    ld	$ra,48($sp)
    bc1f	.L0dad1b84
    negu	$a0,$a0
    # Line 524
    mtc1	$a0,$f1
    nop
    cvt.d.w	$f1,$f1
    ldc1	$f2,_lit8_3ee4f8b588e368f1
    div.d	$f1,$f1,$f2
    # Line 525
    lw	$a3,30320($s0)
    negu	$a3,$a3
    mtc1	$a3,$f0
    nop
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f2
    # Line 524
    cvt.s.d	$f1,$f1
    # Line 525
    cvt.s.d	$f0,$f0
    # Line 524
    swc1	$f1,30512($s0)
    # Line 525
    b	.L0dad1afc
    swc1	$f0,30516($s0)
.L0dad1a78:
    # Line 456
    mul.s	$f0,$f5,$f20
    mul.s	$f3,$f6,$f22
    lwc1	$f2,136($a1)
    add.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$at,$f2
    nop
    sw	$at,30208($s0)
.L0dad1a9c:
    beqzl	$s8,.L0dad1b38
    # Line 541
    ld	$s0,32($sp)
    # Line 461
    lwc1	$f2,30436($s0)
    # Line 462
    mul.s	$f3,$f2,$f24
    # Line 461
    mul.s	$f1,$f2,$f20
    lwc1	$f0,30432($s0)
    # Line 462
    add.s	$f3,$f3,$f0
    # Line 461
    mul.s	$f0,$f0,$f22
    add.s	$f1,$f1,$f4
    # Line 463
    add.s	$f2,$f2,$f3
    # Line 461
    add.s	$f1,$f1,$f0
    # Line 462
    swc1	$f3,30424($s0)
    # Line 463
    swc1	$f2,30428($s0)
    b	.L0dad1b34
    # Line 461
    swc1	$f1,30248($s0)
.L0dad1ad8:
    # Line 531
    mul.s	$f2,$f5,$f20
    mul.s	$f1,$f6,$f22
    lwc1	$f0,136($a1)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    nop
    sw	$v0,30208($s0)
.L0dad1afc:
    beqzl	$s8,.L0dad1b38
    # Line 541
    ld	$s0,32($sp)
    # Line 536
    lwc1	$f0,30436($s0)
    # Line 537
    mul.s	$f1,$f0,$f24
    # Line 536
    mul.s	$f3,$f0,$f20
    lwc1	$f2,30432($s0)
    # Line 537
    add.s	$f1,$f1,$f2
    # Line 536
    mul.s	$f2,$f2,$f22
    add.s	$f3,$f3,$f4
    # Line 538
    sub.s	$f0,$f1,$f0
    # Line 536
    add.s	$f3,$f3,$f2
    # Line 537
    swc1	$f1,30424($s0)
    # Line 538
    swc1	$f0,30428($s0)
    # Line 536
    swc1	$f3,30248($s0)
.L0dad1b34:
    # Line 541
    ld	$s0,32($sp)
.L0dad1b38:
    ld	$s8,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dad1b50:
    # Line 452
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f5
    # Line 453
    lw	$v1,30320($s0)
    negu	$v1,$v1
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f5
    # Line 452
    swc1	$f3,30512($s0)
    b	.L0dad1a9c
    # Line 453
    swc1	$f2,30516($s0)
.L0dad1b84:
    # Line 527
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f5
    # Line 528
    lw	$a3,30320($s0)
    negu	$a3,$a3
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f5
    # Line 527
    swc1	$f1,30512($s0)
    b	.L0dad1afc
    # Line 528
    swc1	$f0,30516($s0)
.L0dad1bb8:
    # Line 430
    beqz	$a5,.L0dad16e4
    nop
    # Line 434
    lwc1	$f3,30288($s0)
    # Line 435
    mul.s	$f5,$f3,$f24
    # Line 434
    mul.s	$f1,$f3,$f20
    lwc1	$f0,30304($s0)
    # Line 435
    add.s	$f5,$f5,$f0
    # Line 434
    lwc1	$f2,0($a2)
    mul.s	$f0,$f0,$f22
    add.s	$f2,$f2,$f1
    # Line 436
    add.s	$f3,$f3,$f5
    # Line 434
    add.s	$f2,$f2,$f0
    # Line 435
    swc1	$f5,30256($s0)
    # Line 436
    swc1	$f3,30272($s0)
    b	.L0dad16e4
    # Line 434
    swc1	$f2,30212($s0)
.L0dad1bf8:
    # Line 507
    beqz	$a5,.L0dad19b0
    nop
    # Line 511
    lwc1	$f1,30288($s0)
    # Line 512
    mul.s	$f2,$f1,$f24
    # Line 511
    mul.s	$f5,$f1,$f20
    lwc1	$f3,30304($s0)
    # Line 512
    add.s	$f2,$f2,$f3
    # Line 511
    lwc1	$f0,0($a2)
    mul.s	$f3,$f3,$f22
    add.s	$f0,$f0,$f5
    # Line 513
    sub.s	$f1,$f2,$f1
    # Line 511
    add.s	$f0,$f0,$f3
    # Line 512
    swc1	$f2,30256($s0)
    # Line 513
    swc1	$f1,30272($s0)
    b	.L0dad19b0
    # Line 511
    swc1	$f0,30212($s0)
.end SetInitialParameters

# Function: __glFillTriangle
# Declared: Line 543 (Source lines: 546-766)
# Address: 0x0dad1c38 - 0x0dad2518 (Size: 2272 bytes, Frame: 176)
.globl __glFillTriangle
.ent __glFillTriangle
__glFillTriangle:
    # Line 546
    addiu	$sp,$sp,-304
    sd	$a4,200($sp)
    sd	$s1,184($sp)
    move	$s1,$a3
    sd	$s3,160($sp)
    move	$s3,$a2
    sd	$s2,152($sp)
    move	$s2,$a1
    sd	$s5,168($sp)
    # Line 565
    lw	$s5,4($a1)
    sd	$s0,192($sp)
    # Line 546
    move	$s0,$a0
    sdc1	$f26,128($sp)
    # Line 564
    lwc1	$f26,30196($a0)
    sdc1	$f24,120($sp)
    # Line 563
    lwc1	$f24,30192($a0)
    sdc1	$f20,136($sp)
    # Line 562
    lwc1	$f20,30188($a0)
    sdc1	$f22,112($sp)
    # Line 561
    lwc1	$f22,30184($a0)
    # sd	gp,208(sp)
    # Line 546
    lui	$v0,0x12
    addiu	$v0,$v0,23600
    # Line 566
    lw	$v1,4($a2)
    # Line 546
    # addu	gp,t9,v0
    # Line 557
    lwc1	$f0,30180($a0)
    sd	$v1,144($sp)
    sd	$s4,176($sp)
    # Line 560
    lw	$s4,30440($a0)
    sdc1	$f28,104($sp)
    # Line 557
    lwc1	$f28,3284($a0)
    # Line 566
    andi	$a6,$s4,0x2
    andi	$at,$s4,0x1
    beqz	$at,.L0dad230c
    # Line 557
    div.s	$f28,$f28,$f0
    # Line 566
    beqz	$a6,.L0dad2448
    # Line 584
    ld	$a5,144($sp)
    # Line 582
    lw	$at,4($s1)
    # Line 585
    mul.s	$f3,$f28,$f24
    # Line 584
    lwc1	$f0,0($a5)
    # Line 583
    lwc1	$f4,0($at)
    # Line 585
    mul.s	$f1,$f28,$f26
    # Line 584
    sub.s	$f0,$f0,$f4
    # Line 586
    mul.s	$f2,$f28,$f22
    # Line 583
    lwc1	$f6,0($s5)
    # Line 585
    mul.s	$f7,$f3,$f0
    # Line 583
    sub.s	$f6,$f6,$f4
    # Line 586
    mul.s	$f4,$f28,$f20
    mul.s	$f0,$f2,$f0
    # Line 585
    mul.s	$f5,$f1,$f6
    # Line 586
    mul.s	$f6,$f4,$f6
    # Line 585
    sub.s	$f5,$f5,$f7
    # Line 586
    sub.s	$f0,$f0,$f6
    # Line 585
    swc1	$f5,30288($s0)
    # Line 586
    swc1	$f0,30304($s0)
    # Line 587
    lwc1	$f6,4($at)
    lwc1	$f7,4($s5)
    # Line 588
    lwc1	$f5,4($a5)
    # Line 587
    sub.s	$f7,$f7,$f6
    # Line 588
    sub.s	$f5,$f5,$f6
    # Line 589
    mul.s	$f6,$f1,$f7
    # Line 590
    mul.s	$f7,$f4,$f7
    # Line 589
    mul.s	$f0,$f3,$f5
    # Line 590
    mul.s	$f5,$f2,$f5
    # Line 589
    sub.s	$f6,$f6,$f0
    # Line 590
    sub.s	$f5,$f5,$f7
    # Line 589
    swc1	$f6,30292($s0)
    # Line 590
    swc1	$f5,30308($s0)
    # Line 591
    lwc1	$f7,8($at)
    lwc1	$f0,8($s5)
    # Line 592
    lwc1	$f6,8($a5)
    # Line 591
    sub.s	$f0,$f0,$f7
    # Line 592
    sub.s	$f6,$f6,$f7
    # Line 593
    mul.s	$f7,$f1,$f0
    # Line 594
    mul.s	$f0,$f4,$f0
    # Line 593
    mul.s	$f5,$f3,$f6
    # Line 594
    mul.s	$f6,$f2,$f6
    sub.s	$f6,$f6,$f0
    # Line 593
    sub.s	$f7,$f7,$f5
    # Line 594
    swc1	$f6,30312($s0)
    # Line 593
    swc1	$f7,30296($s0)
    # Line 595
    lwc1	$f7,12($at)
    # Line 596
    lwc1	$f5,12($a5)
    # Line 595
    lwc1	$f6,12($s5)
    # Line 596
    sub.s	$f5,$f5,$f7
    # Line 595
    sub.s	$f6,$f6,$f7
    # Line 597
    mul.s	$f3,$f3,$f5
    # Line 598
    mul.s	$f4,$f4,$f6
    mul.s	$f2,$f2,$f5
    # Line 597
    mul.s	$f1,$f1,$f6
    # Line 598
    sub.s	$f2,$f2,$f4
    # Line 597
    sub.s	$f1,$f1,$f3
    # Line 598
    swc1	$f2,30316($s0)
    # Line 597
    swc1	$f1,30300($s0)
.L0dad1db0:
    # Line 604
    andi	$v0,$s4,0x8
    beqz	$v0,.L0dad2028
    # Line 679
    andi	$v1,$s4,0x4000
    # Line 623
    mul.s	$f19,$f28,$f22
    mul.s	$f23,$f28,$f20
    # Line 622
    mul.s	$f21,$f28,$f26
    # Line 614
    lwc1	$f1,140($s1)
    # Line 615
    lwc1	$f10,48($s1)
    # Line 612
    lwc1	$f18,140($s2)
    # Line 620
    lwc1	$f9,48($s2)
    # Line 615
    mul.s	$f10,$f10,$f1
    # Line 620
    mul.s	$f9,$f9,$f18
    # Line 613
    lwc1	$f0,140($s3)
    # Line 621
    lwc1	$f7,48($s3)
    mul.s	$f7,$f7,$f0
    # Line 620
    sub.s	$f9,$f9,$f10
    # Line 622
    mul.s	$f25,$f28,$f24
    mul.s	$f8,$f21,$f9
    # Line 621
    sub.s	$f7,$f7,$f10
    # Line 623
    mul.s	$f9,$f23,$f9
    # Line 622
    mul.s	$f10,$f25,$f7
    # Line 623
    mul.s	$f7,$f19,$f7
    sub.s	$f7,$f7,$f9
    # Line 618
    lwc1	$f31,60($s1)
    # Line 622
    sub.s	$f8,$f8,$f10
    # Line 617
    lwc1	$f2,56($s1)
    # Line 616
    lwc1	$f5,52($s1)
    # Line 623
    swc1	$f7,30404($s0)
    # Line 622
    swc1	$f8,30384($s0)
    # Line 616
    mul.s	$f5,$f5,$f1
    # Line 624
    lwc1	$f6,52($s2)
    # Line 625
    lwc1	$f4,52($s3)
    # Line 624
    mul.s	$f6,$f6,$f18
    # Line 625
    mul.s	$f4,$f4,$f0
    # Line 624
    sub.s	$f6,$f6,$f5
    # Line 625
    sub.s	$f4,$f4,$f5
    # Line 626
    mul.s	$f5,$f21,$f6
    # Line 627
    mul.s	$f6,$f23,$f6
    # Line 626
    mul.s	$f7,$f25,$f4
    # Line 627
    mul.s	$f4,$f19,$f4
    sub.s	$f4,$f4,$f6
    # Line 626
    sub.s	$f5,$f5,$f7
    # Line 627
    swc1	$f4,30408($s0)
    # Line 626
    swc1	$f5,30388($s0)
    # Line 617
    mul.s	$f2,$f2,$f1
    # Line 628
    lwc1	$f3,56($s2)
    # Line 629
    lwc1	$f29,56($s3)
    # Line 628
    mul.s	$f3,$f3,$f18
    # Line 629
    mul.s	$f29,$f29,$f0
    # Line 628
    sub.s	$f3,$f3,$f2
    # Line 629
    sub.s	$f29,$f29,$f2
    # Line 630
    mul.s	$f2,$f21,$f3
    # Line 631
    mul.s	$f3,$f23,$f3
    # Line 630
    mul.s	$f4,$f25,$f29
    # Line 631
    mul.s	$f29,$f19,$f29
    # Line 630
    sub.s	$f2,$f2,$f4
    # Line 631
    sub.s	$f29,$f29,$f3
    # Line 630
    swc1	$f2,30392($s0)
    # Line 631
    swc1	$f29,30412($s0)
    # Line 618
    mul.s	$f31,$f31,$f1
    # Line 633
    lwc1	$f29,60($s3)
    # Line 632
    lwc1	$f27,60($s2)
    # Line 633
    mul.s	$f29,$f29,$f0
    # Line 632
    mul.s	$f27,$f27,$f18
    # Line 633
    sub.s	$f29,$f29,$f31
    sdc1	$f25,16($sp)
    # Line 632
    sub.s	$f27,$f27,$f31
    # Line 634
    mul.s	$f25,$f25,$f29
    sdc1	$f23,32($sp)
    # Line 635
    mul.s	$f23,$f23,$f27
    sdc1	$f19,24($sp)
    mul.s	$f19,$f19,$f29
    sdc1	$f21,56($sp)
    # Line 634
    mul.s	$f21,$f21,$f27
    # Line 635
    sub.s	$f19,$f19,$f23
    # Line 639
    move	$a0,$s0
    sd	$ra,224($sp)
    # Line 634
    sub.s	$f21,$f21,$f25
    sd	$s6,232($sp)
    # Line 639
    addiu	$s6,$s0,30140
    # Line 635
    swc1	$f19,30416($s0)
    # Line 634
    swc1	$f21,30396($s0)
    # Line 639
    move	$a1,$s6
    lwc1	$f17,60($s2)
    lw	$t9,12528($s0)
    lwc1	$f16,56($s2)
    mul.s	$f17,$f17,$f18
    sdc1	$f18,8($sp)
    lwc1	$f15,52($s2)
    mul.s	$f16,$f16,$f18
    sdc1	$f1,88($sp)
    lwc1	$f14,48($s2)
    mul.s	$f15,$f15,$f18
    sdc1	$f0,80($sp)
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f18,60($s2)
    mul.s	$f18,$f18,$f0
    ldc1	$f19,8($sp)
    mul.s	$f18,$f18,$f19
    sdc1	$f18,40($sp)
    # Line 645
    swc1	$f18,180($s2)
    # Line 646
    ldc1	$f18,80($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s3)
    mul.s	$f17,$f17,$f18
    move	$a1,$s6
    lwc1	$f15,52($s3)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s3)
    lw	$t9,12528($s0)
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f18,60($s3)
    mul.s	$f18,$f18,$f0
    ldc1	$f19,80($sp)
    mul.s	$f18,$f18,$f19
    sdc1	$f18,48($sp)
    # Line 652
    swc1	$f18,180($s3)
    # Line 653
    ldc1	$f18,88($sp)
    lwc1	$f17,60($s1)
    lwc1	$f16,56($s1)
    mul.s	$f17,$f17,$f18
    move	$a1,$s6
    lwc1	$f15,52($s1)
    mul.s	$f16,$f16,$f18
    lwc1	$f14,48($s1)
    lw	$t9,12528($s0)
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f2,60($s1)
    mul.s	$f2,$f2,$f0
    ldc1	$f3,88($sp)
    mul.s	$f2,$f2,$f3
    # Line 663
    ldc1	$f5,48($sp)
    ldc1	$f3,40($sp)
    sub.s	$f5,$f5,$f2
    # Line 664
    ldc1	$f1,24($sp)
    ldc1	$f4,32($sp)
    # Line 663
    sub.s	$f3,$f3,$f2
    # Line 664
    mul.s	$f1,$f1,$f5
    # Line 663
    ldc1	$f0,56($sp)
    # Line 664
    mul.s	$f4,$f4,$f3
    # Line 663
    mul.s	$f0,$f0,$f3
    ldc1	$f3,16($sp)
    mul.s	$f3,$f3,$f5
    # Line 664
    sub.s	$f1,$f1,$f4
    ld	$ra,224($sp)
    # Line 663
    sub.s	$f0,$f0,$f3
    ld	$s6,232($sp)
    # Line 659
    swc1	$f2,180($s1)
    # Line 664
    swc1	$f1,30420($s0)
    # Line 663
    swc1	$f0,30400($s0)
.L0dad2024:
    # Line 679
    andi	$v1,$s4,0x4000
.L0dad2028:
    beqz	$v1,.L0dad208c
    # Line 690
    andi	$at,$s4,0x1000
    # Line 688
    mul.s	$f4,$f28,$f22
    # Line 687
    mul.s	$f5,$f28,$f24
    # Line 685
    lwc1	$f2,136($s1)
    # Line 686
    lwc1	$f1,136($s3)
    # Line 687
    mul.s	$f3,$f28,$f26
    # Line 685
    lwc1	$f0,136($s2)
    # Line 686
    sub.s	$f1,$f1,$f2
    # Line 688
    mul.s	$f6,$f28,$f20
    # Line 685
    sub.s	$f0,$f0,$f2
    # Line 687
    mul.s	$f5,$f5,$f1
    mul.s	$f3,$f3,$f0
    # Line 688
    mul.s	$f6,$f6,$f0
    mul.s	$f4,$f4,$f1
    # Line 687
    sub.s	$f3,$f3,$f5
    # Line 689
    trunc.w.s	$f5,$f3
    # Line 688
    sub.s	$f4,$f4,$f6
    # Line 689
    mfc1	$a5,$f5
    # Line 688
    swc1	$f4,30336($s0)
    # Line 687
    swc1	$f3,30340($s0)
    # Line 689
    sw	$a5,30328($s0)
    # Line 690
    sll	$a5,$a5,0x5
    sw	$a5,30332($s0)
    andi	$at,$s4,0x1000
.L0dad208c:
    beqzl	$at,.L0dad214c
    # Line 724
    div.s	$f14,$f22,$f24
    # Line 690
    lw	$v0,1812($s0)
    li	$v1,4354
    bnel	$v0,$v1,.L0dad20bc
    # Line 703
    lw	$t9,12544($s0)
    # Line 699
    lwc1	$f5,104($s3)
    # Line 700
    lwc1	$f0,104($s1)
    # Line 698
    lwc1	$f6,104($s2)
    # Line 699
    swc1	$f5,4($sp)
    # Line 700
    b	.L0dad2108
    # Line 698
    swc1	$f6,0($sp)
.L0dad20bc:
    # Line 703
    move	$a0,$s0
    sd	$ra,224($sp)
    jalr	$t9
    move	$a1,$s2
    sdc1	$f0,96($sp)
    # Line 704
    lw	$t9,12544($s0)
    move	$a1,$s3
    move	$a0,$s0
    jalr	$t9
    # Line 703
    swc1	$f0,0($sp)
    sdc1	$f0,216($sp)
    # Line 705
    lw	$t9,12544($s0)
    move	$a1,$s1
    move	$a0,$s0
    jalr	$t9
    # Line 704
    swc1	$f0,4($sp)
    ldc1	$f6,96($sp)
    ldc1	$f5,216($sp)
    ld	$ra,224($sp)
.L0dad2108:
    # Line 709
    mul.s	$f1,$f28,$f26
    mul.s	$f3,$f28,$f24
    # Line 710
    mul.s	$f4,$f28,$f20
    # Line 709
    sub.s	$f7,$f5,$f0
    # Line 710
    mul.s	$f2,$f28,$f22
    # Line 709
    sub.s	$f8,$f6,$f0
    mul.s	$f3,$f3,$f7
    # Line 710
    mul.s	$f4,$f4,$f8
    mul.s	$f2,$f2,$f7
    # Line 709
    mul.s	$f1,$f1,$f8
    # Line 710
    sub.s	$f2,$f2,$f4
    # Line 709
    sub.s	$f1,$f1,$f3
    sd	$s7,240($sp)
    sd	$s6,232($sp)
    # Line 710
    swc1	$f2,30432($s0)
    # Line 709
    swc1	$f1,30436($s0)
    # Line 724
    div.s	$f14,$f22,$f24
.L0dad214c:
    # Line 716
    lwc1	$f3,132($s1)
    # Line 714
    lwc1	$f5,3280($s0)
    # Line 716
    add.s	$f3,$f3,$f5
    # Line 715
    lwc1	$f1,132($s3)
    # Line 714
    lwc1	$f6,132($s2)
    # Line 724
    sub.s	$f0,$f6,$f1
    # Line 715
    add.s	$f1,$f5,$f1
    # Line 714
    add.s	$f28,$f6,$f5
    # Line 715
    trunc.w.s	$f1,$f1
    # Line 714
    trunc.w.s	$f28,$f28
    sd	$ra,224($sp)
    sd	$s6,232($sp)
    # Line 716
    trunc.w.s	$f3,$f3
    sd	$s7,240($sp)
    # Line 723
    lwc1	$f4,128($s3)
    # Line 724
    cvt.s.w	$f2,$f28
    sdc1	$f0,72($sp)
    # Line 723
    lwc1	$f0,128($s2)
    # Line 724
    ld	$a5,200($sp)
    # Line 716
    mfc1	$s7,$f3
    # Line 723
    sub.s	$f4,$f0,$f4
    # Line 715
    mfc1	$s4,$f1
    # Line 714
    mfc1	$s6,$f28
    # Line 724
    add.s	$f5,$f5,$f2
    ldc1	$f28,104($sp)
    sdc1	$f4,64($sp)
    beqz	$a5,.L0dad2364
    sub.s	$f5,$f5,$f6
    # Line 728
    mul.s	$f13,$f14,$f5
    # Line 727
    mov.s	$f22,$f5
    # Line 728
    move	$a0,$s0
    # lw $t9, -27764($gp) # &__glSnapXLeft
    ldc1	$f24,120($sp)
    ld	$s1,184($sp)
    bal __glSnapXLeft
    add.s	$f13,$f13,$f0
    # Line 730
    lw	$ra,30152($s0)
    mtc1	$ra,$f18
    move	$a0,$s0
    move	$a1,$s2
    cvt.s.w	$f18,$f18
    move	$a2,$s5
    mov.s	$f17,$f22
    lwc1	$f16,3280($s0)
    lwc1	$f15,0($sp)
    # lw $t9, -32716($gp) # &sub_0dad0000
    add.s	$f16,$f16,$f18
    lwc1	$f18,128($s2)
    addiu	$t9,$t9,5252
    bal __glPolygonOffsetZ
    sub.s	$f16,$f16,$f18
    ld	$s5,168($sp)
    bne	$s6,$s4,.L0dad225c
    ld	$ra,224($sp)
    ldc1	$f22,112($sp)
    ld	$s2,152($sp)
    ld	$s6,232($sp)
.L0dad2230:
    # Line 735
    bnel	$s4,$s7,.L0dad22ac
    # Line 741
    div.s	$f14,$f20,$f26
.L0dad2238:
    # ld	gp,208(sp)
.L0dad223c:
    # Line 766
    ld	$s0,192($sp)
    ld	$s3,160($sp)
    ld	$s4,176($sp)
    ld	$s7,240($sp)
    ldc1	$f20,136($sp)
    ldc1	$f26,128($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dad225c:
    # Line 733
    ldc1	$f15,72($sp)
    ldc1	$f14,64($sp)
    div.s	$f14,$f14,$f15
    mul.s	$f15,$f14,$f22
    # lw $t9, -27760($gp) # &__glSnapXRight
    lwc1	$f13,128($s2)
    addiu	$a0,$s0,30140
    bal __glSnapXRight
    add.s	$f13,$f13,$f15
    # Line 735
    move	$a0,$s0
    move	$a1,$s6
    # lw $t9, -32716($gp) # &sub_0dad0000
    move	$a2,$s4
    ldc1	$f22,112($sp)
    addiu	$t9,$t9,2744
    bal __glClipTriangle
    ld	$s2,152($sp)
    ld	$ra,224($sp)
    b	.L0dad2230
    ld	$s6,232($sp)
.L0dad22ac:
    # Line 741
    mtc1	$s4,$f16
    nop
    cvt.s.w	$f16,$f16
    lwc1	$f15,3280($s0)
    add.s	$f15,$f15,$f16
    lwc1	$f16,132($s3)
    sub.s	$f15,$f15,$f16
    mul.s	$f15,$f15,$f14
    # lw $t9, -27760($gp) # &__glSnapXRight
    lwc1	$f13,128($s3)
    addiu	$a0,$s0,30140
    bal __glSnapXRight
    add.s	$f13,$f13,$f15
    # Line 743
    move	$a0,$s0
    move	$a1,$s4
    move	$a2,$s7
    # lw $t9, -32716($gp) # &sub_0dad0000
    ldc1	$f20,136($sp)
    ldc1	$f26,128($sp)
    addiu	$t9,$t9,2744
    bal __glClipTriangle
    ld	$s3,160($sp)
    b	.L0dad2238
    ld	$ra,224($sp)
.L0dad230c:
    # Line 664
    beqzl	$a6,.L0dad2508
    # Line 679
    lw	$at,28080($s0)
    # Line 672
    lw	$v0,4($s1)
    # Line 675
    mul.s	$f0,$f28,$f26
    # Line 673
    lwc1	$f5,0($s5)
    lwc1	$f2,0($v0)
    # Line 676
    mul.s	$f1,$f28,$f22
    # Line 674
    ld	$at,144($sp)
    # Line 673
    sub.s	$f5,$f5,$f2
    # Line 676
    mul.s	$f3,$f28,$f20
    # Line 674
    lwc1	$f4,0($at)
    # Line 675
    mul.s	$f0,$f0,$f5
    # Line 674
    sub.s	$f4,$f4,$f2
    # Line 675
    mul.s	$f2,$f28,$f24
    # Line 676
    mul.s	$f3,$f3,$f5
    mul.s	$f1,$f1,$f4
    # Line 675
    mul.s	$f2,$f2,$f4
    # Line 676
    sub.s	$f1,$f1,$f3
    # Line 675
    sub.s	$f0,$f0,$f2
    # Line 676
    swc1	$f1,30304($s0)
    b	.L0dad2024
    # Line 675
    swc1	$f0,30288($s0)
.L0dad2364:
    # Line 748
    mul.s	$f13,$f14,$f5
    # Line 747
    mov.s	$f22,$f5
    # Line 748
    addiu	$a0,$s0,30140
    # lw $t9, -27760($gp) # &__glSnapXRight
    ldc1	$f24,120($sp)
    ld	$s1,184($sp)
    bal __glSnapXRight
    add.s	$f13,$f13,$f0
    bne	$s6,$s4,.L0dad2474
    ld	$ra,224($sp)
    ldc1	$f22,112($sp)
    ld	$s5,168($sp)
    ld	$s2,152($sp)
    ld	$s6,232($sp)
.L0dad239c:
    # Line 754
    beql	$s4,$s7,.L0dad223c
    nop
    # Line 760
    div.s	$f14,$f20,$f26
    # Line 759
    mtc1	$s4,$f23
    nop
    cvt.s.w	$f23,$f23
    lwc1	$f22,3280($s0)
    add.s	$f22,$f22,$f23
    lwc1	$f23,132($s3)
    sub.s	$f22,$f22,$f23
    # Line 760
    mul.s	$f15,$f14,$f22
    # lw $t9, -27764($gp) # &__glSnapXLeft
    lwc1	$f13,128($s3)
    move	$a0,$s0
    bal __glSnapXLeft
    add.s	$f13,$f13,$f15
    # Line 762
    lw	$v1,30152($s0)
    mtc1	$v1,$f17
    move	$a0,$s0
    move	$a1,$s3
    cvt.s.w	$f17,$f17
    ld	$a2,144($sp)
    lwc1	$f15,4($sp)
    lwc1	$f16,3280($s0)
    ldc1	$f20,136($sp)
    # lw $t9, -32716($gp) # &sub_0dad0000
    add.s	$f16,$f16,$f17
    lwc1	$f17,128($s3)
    ldc1	$f26,128($sp)
    addiu	$t9,$t9,5252
    sub.s	$f16,$f16,$f17
    bal __glPolygonOffsetZ
    mov.s	$f17,$f22
    # Line 763
    move	$a0,$s0
    move	$a1,$s4
    # lw $t9, -32716($gp) # &sub_0dad0000
    move	$a2,$s7
    ldc1	$f22,112($sp)
    addiu	$t9,$t9,2744
    bal __glClipTriangle
    ld	$s3,160($sp)
    b	.L0dad2238
    ld	$ra,224($sp)
.L0dad2448:
    # Line 600
    lw	$at,28080($s0)
    lw	$at,4($at)
    # Line 601
    lwc1	$f4,0($at)
    swc1	$f4,30212($s0)
    # Line 602
    lwc1	$f3,4($at)
    swc1	$f3,30216($s0)
    # Line 603
    lwc1	$f2,8($at)
    swc1	$f2,30220($s0)
    # Line 604
    lwc1	$f1,12($at)
    b	.L0dad1db0
    swc1	$f1,30224($s0)
.L0dad2474:
    # Line 751
    ldc1	$f15,72($sp)
    ldc1	$f14,64($sp)
    div.s	$f14,$f14,$f15
    mul.s	$f15,$f14,$f22
    # lw $t9, -27764($gp) # &__glSnapXLeft
    lwc1	$f13,128($s2)
    move	$a0,$s0
    bal __glSnapXLeft
    add.s	$f13,$f13,$f15
    # Line 753
    lw	$ra,30152($s0)
    mtc1	$ra,$f17
    nop
    cvt.s.w	$f17,$f17
    lwc1	$f15,0($sp)
    move	$a2,$s5
    lwc1	$f16,3280($s0)
    move	$a1,$s2
    # lw $t9, -32716($gp) # &sub_0dad0000
    add.s	$f16,$f16,$f17
    lwc1	$f17,128($s2)
    move	$a0,$s0
    addiu	$t9,$t9,5252
    sub.s	$f16,$f16,$f17
    bal __glPolygonOffsetZ
    mov.s	$f17,$f22
    # Line 754
    move	$a0,$s0
    move	$a1,$s6
    move	$a2,$s4
    # lw $t9, -32716($gp) # &sub_0dad0000
    ldc1	$f22,112($sp)
    ld	$s5,168($sp)
    addiu	$t9,$t9,2744
    bal __glClipTriangle
    ld	$s2,152($sp)
    ld	$ra,224($sp)
    b	.L0dad239c
    ld	$s6,232($sp)
.L0dad2508:
    # Line 679
    lw	$at,4($at)
    lwc1	$f1,0($at)
    b	.L0dad2024
    swc1	$f1,30212($s0)
.end __glFillTriangle

# Function: __glFillFlatFogTriangle
# Declared: Line 768 (Source lines: 770-791)
# Address: 0x0dad2518 - 0x0dad2630 (Size: 280 bytes, Frame: 192)
.globl __glFillFlatFogTriangle
.ent __glFillFlatFogTriangle
__glFillFlatFogTriangle:
    # Line 770
    addiu	$sp,$sp,-192
    sd	$s3,120($sp)
    move	$s3,$a1
    # Line 776
    addiu	$a1,$sp,0
    sd	$s8,72($sp)
    # Line 770
    move	$s8,$a4
    sd	$s2,128($sp)
    move	$s2,$a3
    sd	$s1,112($sp)
    move	$s1,$a2
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    # sd	gp,80(sp)
    lui	$at,0x12
    sd	$s0,64($sp)
    move	$s0,$a0
    addiu	$at,$at,21328
    # addu	gp,t9,at
    # Line 776
    lw	$t9,12540($s0)
    # Line 775
    lw	$s4,28080($s0)
    # Line 776
    lwc1	$f15,176($s3)
    jalr	$t9
    lw	$a2,4($s4)
    # Line 777
    move	$a0,$s0
    lw	$t9,12540($s0)
    lwc1	$f15,176($s1)
    lw	$a2,4($s4)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 778
    move	$a0,$s0
    lw	$t9,12540($s0)
    lwc1	$f15,176($s2)
    lw	$a2,4($s4)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 786
    move	$a4,$s8
    ld	$s4,56($sp)
    # Line 781
    lw	$a1,4($s2)
    # Line 780
    lw	$a2,4($s1)
    # Line 779
    lw	$a3,4($s3)
    # Line 782
    addiu	$a0,$sp,0
    sw	$a0,4($s3)
    # Line 786
    move	$a0,$s0
    sd	$a3,104($sp)
    move	$a3,$s2
    # Line 784
    addiu	$v0,$sp,32
    # Line 783
    addiu	$v1,$sp,16
    sw	$v1,4($s1)
    # Line 784
    sw	$v0,4($s2)
    sd	$a2,96($sp)
    # Line 786
    lw	$t9,12092($s0)
    move	$a2,$s1
    sd	$a1,88($sp)
    jalr	$t9
    move	$a1,$s3
    # ld	gp,80(sp)
    # Line 791
    ld	$ra,48($sp)
    ld	$s8,104($sp)
    # Line 790
    ld	$a5,88($sp)
    # Line 789
    ld	$s0,96($sp)
    # Line 788
    sw	$s8,4($s3)
    # Line 791
    ld	$s3,120($sp)
    ld	$s8,72($sp)
    # Line 789
    sw	$s0,4($s1)
    # Line 791
    ld	$s0,64($sp)
    ld	$s1,112($sp)
    # Line 790
    sw	$a5,4($s2)
    # Line 791
    ld	$s2,128($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glFillFlatFogTriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit8_41e0000000000000:
    .word 0x41e00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

