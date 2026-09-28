# Source: ../soft/so_linedraw.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linedraw.c
# Total Functions: 6

.text

# Function: __glInitLineData
# Declared: Line 33 (Source lines: 34-225)
# Address: 0x0dabac28 - 0x0dabb15c (Size: 1332 bytes, Frame: 0)
.globl __glInitLineData
.ent __glInitLineData
__glInitLineData:
    # Line 48
    lw	$v1,452($a0)
    # Line 34
    lui	$v0,0x14
    # Line 57
    addiu	$a3,$v1,-1
    mtc1	$a3,$f12
    # Line 47
    sw	$a2,29956($a0)
    # Line 46
    sw	$a1,29952($a0)
    # Line 48
    sw	$v1,29948($a0)
    # Line 57
    cvt.s.w	$f12,$f12
    # Line 51
    lwc1	$f6,132($a1)
    # Line 53
    lwc1	$f10,132($a2)
    # Line 34
    addiu	$v0,$v0,-13248
    # addu	at,t9,v0
    # Line 64
    sub.s	$f7,$f10,$f6
    mtc1	$zero,$f11
    # Line 50
    lwc1	$f5,128($a1)
    # Line 52
    lwc1	$f8,128($a2)
    # Line 64
    c.lt.s	$f11,$f7
    sub.s	$f9,$f8,$f5
    li	$a5,1
    bc1fl	.L0dabac7c
    move	$a5,$zero
.L0dabac7c:
    c.lt.s	$f11,$f9
    # Line 57
    lwc1	$f4,3280($a0)
    # Line 142
    ldc1	$f3,_lit8_41e0000000000000
    # Line 64
    bc1f	.L0dabaf10
    # Line 57
    mul.s	$f12,$f12,$f4
    # Line 67
    li	$a6,1
    beqzl	$a5,.L0dabb010
    # Line 146
    sub.s	$f16,$f6,$f10
    # Line 68
    c.lt.s	$f7,$f9
    nop
    bc1fl	.L0dabade0
    # Line 107
    sw	$a6,29884($a0)
    # Line 69
    sw	$a6,29892($a0)
.L0dabacb0:
    # Line 74
    div.s	$f13,$f7,$f9
    # Line 79
    trunc.w.s	$f16,$f6
    cvt.s.w	$f16,$f16
    sub.s	$f16,$f6,$f16
    # Line 77
    trunc.w.s	$f1,$f8
    # Line 79
    sub.s	$f14,$f16,$f4
    # Line 73
    sw	$a6,29880($a0)
    # Line 72
    sw	$a6,29884($a0)
    # Line 76
    trunc.w.s	$f0,$f5
    # Line 71
    sw	$zero,29888($a0)
    # Line 77
    mfc1	$a5,$f1
    # Line 79
    c.lt.s	$f14,$f11
    # Line 76
    mfc1	$a7,$f0
    # Line 77
    move	$a4,$a5
    # Line 79
    bc1f	.L0dabacf4
    # Line 76
    move	$a3,$a7
    # Line 80
    sub.s	$f14,$f4,$f16
.L0dabacf4:
    trunc.w.s	$f0,$f5
    cvt.s.w	$f0,$f0
    sub.s	$f0,$f5,$f0
    add.s	$f0,$f0,$f14
    # Line 85
    trunc.w.s	$f14,$f10
    cvt.s.w	$f14,$f14
    # Line 80
    sub.s	$f0,$f0,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabad24
    # Line 86
    trunc.w.s	$f0,$f8
    # Line 83
    addiu	$a3,$a7,1
.L0dabad24:
    # Line 86
    cvt.s.w	$f0,$f0
    # Line 85
    sub.s	$f14,$f10,$f14
    sub.s	$f7,$f14,$f4
    c.lt.s	$f7,$f11
    nop
    bc1fl	.L0dabad48
    # Line 86
    sub.s	$f0,$f8,$f0
    sub.s	$f7,$f4,$f14
    sub.s	$f0,$f8,$f0
.L0dabad48:
    add.s	$f0,$f0,$f7
    sub.s	$f0,$f0,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabad64
    nop
    # Line 89
    addiu	$a4,$a5,1
.L0dabad64:
    # Line 91
    mtc1	$a3,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f4
    # Line 93
    swc1	$f9,29868($a0)
    # Line 94
    subu	$v0,$a4,$a3
    sw	$v0,29860($a0)
    # Line 91
    sub.s	$f8,$f8,$f5
.L0dabad84:
    # Line 103
    mul.s	$f0,$f13,$f8
    add.s	$f0,$f0,$f6
    sub.s	$f0,$f0,$f12
    trunc.w.s	$f1,$f0
    # Line 105
    cvt.s.w	$f4,$f1
    # Line 104
    cvt.d.s	$f2,$f13
    ldc1	$f3,_lit8_41e0000000000000
    # Line 105
    sub.s	$f0,$f0,$f4
    # Line 104
    mul.d	$f2,$f2,$f3
    # Line 105
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f3
    # Line 104
    trunc.w.d	$f2,$f2
    # Line 99
    swc1	$f8,29864($a0)
    # Line 98
    sw	$a3,29872($a0)
    # Line 104
    mfc1	$a2,$f2
    # Line 105
    trunc.w.d	$f0,$f0
    # Line 97
    sw	$zero,29856($a0)
    # Line 103
    mfc1	$a1,$f1
    # Line 104
    sw	$a2,29900($a0)
    # Line 105
    mfc1	$v1,$f0
    # Line 103
    sw	$a1,29876($a0)
    # Line 225
    jr	$ra
    # Line 105
    sw	$v1,29896($a0)
.L0dabade0:
    # Line 112
    div.s	$f13,$f9,$f7
    # Line 117
    trunc.w.s	$f15,$f5
    cvt.s.w	$f15,$f15
    sub.s	$f15,$f5,$f15
    # Line 115
    trunc.w.s	$f2,$f10
    # Line 117
    sub.s	$f14,$f15,$f4
    # Line 111
    sw	$a6,29888($a0)
    # Line 110
    sw	$a6,29892($a0)
    # Line 114
    trunc.w.s	$f1,$f6
    # Line 109
    sw	$zero,29880($a0)
    # Line 115
    mfc1	$a5,$f2
    # Line 117
    c.lt.s	$f14,$f11
    # Line 114
    mfc1	$a7,$f1
    # Line 115
    move	$a4,$a5
    # Line 117
    bc1f	.L0dabae24
    # Line 114
    move	$a3,$a7
    # Line 118
    sub.s	$f14,$f4,$f15
.L0dabae24:
    trunc.w.s	$f0,$f6
    cvt.s.w	$f0,$f0
    sub.s	$f0,$f6,$f0
    add.s	$f0,$f0,$f14
    # Line 123
    trunc.w.s	$f14,$f8
    cvt.s.w	$f14,$f14
    # Line 118
    sub.s	$f0,$f0,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabae54
    # Line 124
    trunc.w.s	$f0,$f10
    # Line 121
    addiu	$a3,$a7,1
.L0dabae54:
    # Line 124
    cvt.s.w	$f0,$f0
    # Line 123
    sub.s	$f14,$f8,$f14
    sub.s	$f9,$f14,$f4
    c.lt.s	$f9,$f11
    nop
    bc1fl	.L0dabae78
    # Line 124
    sub.s	$f0,$f10,$f0
    sub.s	$f9,$f4,$f14
    sub.s	$f0,$f10,$f0
.L0dabae78:
    add.s	$f0,$f0,$f9
    sub.s	$f0,$f0,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabae94
    nop
    # Line 127
    addiu	$a4,$a5,1
.L0dabae94:
    # Line 129
    mtc1	$a3,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f4
    # Line 131
    swc1	$f7,29868($a0)
    # Line 132
    subu	$v0,$a4,$a3
    sw	$v0,29860($a0)
    # Line 129
    sub.s	$f8,$f8,$f6
.L0dabaeb4:
    # Line 141
    mul.s	$f0,$f13,$f8
    add.s	$f0,$f0,$f5
    sub.s	$f0,$f0,$f12
    trunc.w.s	$f1,$f0
    # Line 143
    cvt.s.w	$f4,$f1
    # Line 142
    cvt.d.s	$f2,$f13
    # Line 143
    sub.s	$f0,$f0,$f4
    # Line 142
    mul.d	$f2,$f2,$f3
    # Line 143
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f3
    # Line 142
    trunc.w.d	$f2,$f2
    # Line 137
    swc1	$f8,29864($a0)
    # Line 136
    sw	$a3,29876($a0)
    # Line 143
    trunc.w.d	$f0,$f0
    # Line 135
    sw	$a6,29856($a0)
    # Line 142
    mfc1	$a2,$f2
    # Line 141
    mfc1	$a1,$f1
    # Line 143
    mfc1	$v1,$f0
    # Line 142
    sw	$a2,29900($a0)
    # Line 141
    sw	$a1,29872($a0)
    # Line 143
    sw	$v1,29896($a0)
    # Line 225
    jr	$ra
    nop
.L0dabaf10:
    # Line 176
    beqz	$a5,.L0dabb028
    # Line 181
    li	$a6,1
    sub.s	$f15,$f5,$f8
    c.lt.s	$f7,$f15
    nop
    bc1f	.L0dabb008
    li	$t0,-1
    # Line 182
    sw	$a6,29892($a0)
.L0dabaf30:
    # Line 187
    div.s	$f13,$f7,$f15
    # Line 192
    trunc.w.s	$f16,$f6
    cvt.s.w	$f16,$f16
    sub.s	$f16,$f6,$f16
    # Line 190
    trunc.w.s	$f2,$f8
    # Line 192
    sub.s	$f14,$f16,$f4
    # Line 186
    sw	$t0,29880($a0)
    # Line 185
    sw	$t0,29884($a0)
    # Line 189
    trunc.w.s	$f1,$f5
    # Line 184
    sw	$zero,29888($a0)
    # Line 190
    mfc1	$a5,$f2
    # Line 192
    c.lt.s	$f14,$f11
    # Line 189
    mfc1	$a7,$f1
    # Line 190
    move	$a4,$a5
    # Line 192
    bc1f	.L0dabaf74
    # Line 189
    move	$a3,$a7
    # Line 193
    sub.s	$f14,$f4,$f16
.L0dabaf74:
    trunc.w.s	$f1,$f5
    cvt.s.w	$f1,$f1
    add.s	$f0,$f14,$f4
    # Line 198
    trunc.w.s	$f14,$f10
    cvt.s.w	$f14,$f14
    # Line 193
    sub.s	$f1,$f5,$f1
    sub.s	$f0,$f0,$f1
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabafa4
    # Line 199
    trunc.w.s	$f1,$f8
    # Line 196
    addiu	$a3,$a7,-1
.L0dabafa4:
    # Line 199
    cvt.s.w	$f1,$f1
    # Line 198
    sub.s	$f14,$f10,$f14
    sub.s	$f7,$f14,$f4
    c.lt.s	$f7,$f11
    nop
    bc1fl	.L0dabafc8
    # Line 199
    sub.s	$f1,$f8,$f1
    sub.s	$f7,$f4,$f14
    sub.s	$f1,$f8,$f1
.L0dabafc8:
    add.s	$f0,$f7,$f4
    sub.s	$f0,$f0,$f1
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabafe4
    nop
    # Line 202
    addiu	$a4,$a5,-1
.L0dabafe4:
    # Line 204
    mtc1	$a3,$f8
    nop
    cvt.s.w	$f8,$f8
    # Line 206
    swc1	$f15,29868($a0)
    # Line 204
    add.s	$f8,$f8,$f4
    # Line 207
    subu	$v0,$a3,$a4
    sw	$v0,29860($a0)
    # Line 209
    b	.L0dabad84
    # Line 204
    sub.s	$f8,$f5,$f8
.L0dabb008:
    # Line 212
    b	.L0dabade0
    # Line 211
    sw	$t0,29884($a0)
.L0dabb010:
    # Line 146
    c.lt.s	$f16,$f9
    nop
    bc1f	.L0dabb068
    li	$t0,-1
    # Line 148
    b	.L0dabacb0
    # Line 147
    sw	$t0,29892($a0)
.L0dabb028:
    # Line 212
    c.lt.s	$f9,$f7
    nop
    bc1f	.L0dabb048
    # Line 217
    c.eq.s	$f9,$f7
    sub.s	$f15,$f5,$f8
    # Line 216
    li	$t0,-1
    # Line 217
    b	.L0dabaf30
    # Line 216
    sw	$t0,29892($a0)
.L0dabb048:
    nop
    # Line 217
    bc1f	.L0dabb148
    c.eq.s	$f7,$f11
    nop
    bc1f	.L0dabb14c
    # Line 221
    li	$a6,1
    # Line 219
    jr	$ra
    nop
.L0dabb068:
    # Line 150
    sw	$a6,29884($a0)
.L0dabb06c:
    # Line 155
    div.s	$f13,$f9,$f16
    # Line 160
    trunc.w.s	$f15,$f5
    cvt.s.w	$f15,$f15
    sub.s	$f15,$f5,$f15
    # Line 158
    trunc.w.s	$f1,$f10
    # Line 160
    sub.s	$f14,$f15,$f4
    # Line 154
    sw	$t0,29888($a0)
    # Line 153
    sw	$t0,29892($a0)
    # Line 157
    trunc.w.s	$f0,$f6
    # Line 152
    sw	$zero,29880($a0)
    # Line 158
    mfc1	$a5,$f1
    # Line 160
    c.lt.s	$f14,$f11
    # Line 157
    mfc1	$a7,$f0
    # Line 158
    move	$a4,$a5
    # Line 160
    bc1f	.L0dabb0b0
    # Line 157
    move	$a3,$a7
    # Line 161
    sub.s	$f14,$f4,$f15
.L0dabb0b0:
    trunc.w.s	$f1,$f6
    cvt.s.w	$f1,$f1
    add.s	$f0,$f14,$f4
    sub.s	$f1,$f6,$f1
    sub.s	$f0,$f0,$f1
    c.lt.s	$f4,$f0
    nop
    bc1fl	.L0dabb0dc
    # Line 166
    trunc.w.s	$f14,$f8
    # Line 164
    addiu	$a3,$a7,-1
    # Line 166
    trunc.w.s	$f14,$f8
.L0dabb0dc:
    cvt.s.w	$f14,$f14
    sub.s	$f14,$f8,$f14
    sub.s	$f9,$f14,$f4
    c.lt.s	$f9,$f11
    nop
    bc1fl	.L0dabb100
    # Line 167
    trunc.w.s	$f1,$f10
    sub.s	$f9,$f4,$f14
    trunc.w.s	$f1,$f10
.L0dabb100:
    cvt.s.w	$f1,$f1
    add.s	$f0,$f9,$f4
    sub.s	$f1,$f10,$f1
    sub.s	$f0,$f0,$f1
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0dabb124
    nop
    # Line 170
    addiu	$a4,$a5,-1
.L0dabb124:
    # Line 172
    mtc1	$a3,$f8
    nop
    cvt.s.w	$f8,$f8
    # Line 174
    swc1	$f16,29868($a0)
    # Line 172
    add.s	$f8,$f8,$f4
    # Line 175
    subu	$v1,$a3,$a4
    sw	$v1,29860($a0)
    # Line 176
    b	.L0dabaeb4
    # Line 172
    sub.s	$f8,$f6,$f8
.L0dabb148:
    # Line 221
    li	$a6,1
.L0dabb14c:
    sub.s	$f16,$f6,$f10
    # Line 220
    li	$t0,-1
    # Line 221
    b	.L0dabb06c
    # Line 220
    sw	$t0,29884($a0)
.end __glInitLineData

# Function: __glRenderAliasLine
# Declared: Line 227 (Source lines: 228-376)
# Address: 0x0dabb15c - 0x0dabb54c (Size: 1008 bytes, Frame: 128)
.globl __glRenderAliasLine
.ent __glRenderAliasLine
__glRenderAliasLine:
    # Line 228
    addiu	$sp,$sp,-128
    sd	$s3,64($sp)
    move	$s3,$a2
    sd	$s2,56($sp)
    move	$s2,$a1
    sd	$s1,24($sp)
    sd	$ra,48($sp)
    # sd	gp,32(sp)
    lui	$at,0x14
    addiu	$at,$at,-14580
    # addu	gp,t9,at
    # Line 235
    # lw $t9, -28296($gp) # &__glInitLineData
    sd	$s0,40($sp)
    # Line 228
    move	$s0,$a0
    # Line 235
    bal __glInitLineData
    # Line 233
    lw	$s1,30440($s0)
    # Line 235
    lw	$v0,29860($s0)
    beqz	$v0,.L0dabb52c
    # Line 243
    andi	$v1,$s1,0x4000
    sdc1	$f24,72($sp)
    lwc1	$f1,29868($s0)
    sdc1	$f22,80($sp)
    lwc1	$f22,3284($s0)
    # Line 238
    lwc1	$f24,29864($s0)
    # Line 243
    beqz	$v1,.L0dabb228
    div.s	$f22,$f22,$f1
    # Line 250
    lwc1	$f3,136($s2)
    lwc1	$f0,136($s3)
    sub.s	$f0,$f0,$f3
    mul.s	$f0,$f0,$f22
    # Line 252
    mul.s	$f2,$f24,$f0
    add.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$a0,$f2
    lbu	$a3,30524($s0)
    # Line 256
    trunc.w.s	$f2,$f0
    # Line 252
    sll	$a0,$a0,0x0
    beqz	$a3,.L0dabb214
    sw	$a0,30208($s0)
    # Line 254
    lwc1	$f1,30492($s0)
    trunc.l.s	$f1,$f1
    dmfc1	$a3,$f1
    nop
    sll	$a3,$a3,0x0
    addu	$a3,$a3,$a0
    sw	$a3,30208($s0)
.L0dabb214:
    # Line 256
    mfc1	$at,$f2
    nop
    sw	$at,30328($s0)
    # Line 257
    sll	$at,$at,0x5
    sw	$at,30332($s0)
.L0dabb228:
    andi	$v0,$s1,0x8000
    beqz	$v0,.L0dabb240
    # Line 265
    andi	$a3,$s1,0x1000
    # Line 257
    lbu	$v1,29852($s0)
    beqz	$v1,.L0dabb518
.L0dabb23c:
    # Line 265
    andi	$a3,$s1,0x1000
.L0dabb240:
    beqz	$a3,.L0dabb2c4
    # Line 286
    andi	$v1,$s1,0x8
    # Line 265
    lw	$at,1812($s0)
    li	$v0,4354
    bnel	$at,$v0,.L0dabb27c
    # Line 281
    lw	$t9,12544($s0)
    sdc1	$f28,88($sp)
    # Line 277
    lwc1	$f28,104($s2)
    swc1	$f28,29944($s0)
    # Line 278
    lwc1	$f1,104($s2)
    lwc1	$f5,104($s3)
    sub.s	$f5,$f5,$f1
    mul.s	$f5,$f5,$f22
    b	.L0dabb2b0
    swc1	$f5,30436($s0)
.L0dabb27c:
    sdc1	$f28,88($sp)
    # Line 281
    move	$a0,$s0
    jal	__glInitLineData
    move	$a1,$s2
    # Line 282
    lw	$t9,12544($s0)
    # Line 281
    mov.s	$f28,$f0
    # Line 282
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s3
    # Line 284
    sub.s	$f5,$f0,$f28
    mul.s	$f5,$f5,$f22
    # Line 283
    swc1	$f28,29944($s0)
    # Line 284
    swc1	$f5,30436($s0)
.L0dabb2b0:
    # Line 286
    mul.s	$f1,$f24,$f5
    add.s	$f28,$f1,$f28
    swc1	$f28,30248($s0)
    ldc1	$f28,88($sp)
    andi	$v1,$s1,0x8
.L0dabb2c4:
    beqzl	$v1,.L0dabb43c
    # Line 335
    lw	$a1,4($s3)
    # Line 295
    lwc1	$f23,140($s2)
    # Line 303
    lwc1	$f2,48($s2)
    # Line 301
    lwc1	$f16,60($s2)
    # Line 303
    mul.s	$f2,$f2,$f23
    # Line 305
    lwc1	$f29,56($s2)
    # Line 301
    mul.s	$f16,$f16,$f23
    # Line 304
    lwc1	$f0,52($s2)
    # Line 305
    mul.s	$f29,$f29,$f23
    # Line 296
    lwc1	$f25,140($s3)
    # Line 304
    lwc1	$f31,52($s3)
    mul.s	$f0,$f0,$f23
    # Line 305
    lwc1	$f27,56($s3)
    # Line 304
    mul.s	$f31,$f31,$f25
    # Line 302
    lwc1	$f21,60($s3)
    # Line 305
    mul.s	$f27,$f27,$f25
    # Line 303
    lwc1	$f1,48($s3)
    # Line 302
    mul.s	$f21,$f21,$f25
    # Line 304
    sub.s	$f31,$f31,$f0
    # Line 303
    mul.s	$f1,$f1,$f25
    # Line 305
    sub.s	$f27,$f27,$f29
    # Line 304
    mul.s	$f31,$f31,$f22
    sdc1	$f21,16($sp)
    # Line 309
    sub.s	$f21,$f21,$f16
    # Line 305
    mul.s	$f27,$f27,$f22
    # Line 303
    sub.s	$f1,$f1,$f2
    # Line 309
    mul.s	$f21,$f21,$f22
    # Line 303
    mul.s	$f1,$f1,$f22
    # Line 309
    swc1	$f21,30396($s0)
    # Line 308
    swc1	$f27,30392($s0)
    # Line 307
    swc1	$f31,30388($s0)
    # Line 306
    swc1	$f1,30384($s0)
    # Line 310
    mul.s	$f1,$f24,$f1
    lwc1	$f0,48($s2)
    mul.s	$f0,$f0,$f23
    add.s	$f0,$f0,$f1
    swc1	$f0,30228($s0)
    # Line 311
    mul.s	$f31,$f24,$f31
    lwc1	$f29,52($s2)
    mul.s	$f29,$f29,$f23
    add.s	$f29,$f29,$f31
    swc1	$f29,30232($s0)
    # Line 312
    mul.s	$f27,$f24,$f27
    lwc1	$f25,56($s2)
    mul.s	$f25,$f25,$f23
    add.s	$f25,$f25,$f27
    swc1	$f25,30236($s0)
    # Line 313
    mul.s	$f21,$f21,$f24
    lwc1	$f19,60($s2)
    mul.s	$f19,$f19,$f23
    add.s	$f19,$f19,$f21
    swc1	$f19,30240($s0)
    # Line 315
    lwc1	$f17,3284($s0)
    lwc1	$f18,60($s2)
    div.s	$f17,$f17,$f18
    # Line 316
    lwc1	$f15,56($s2)
    move	$a0,$s0
    lwc1	$f14,52($s2)
    mul.s	$f15,$f15,$f17
    lw	$t9,12524($s0)
    lwc1	$f13,48($s2)
    mul.s	$f14,$f14,$f17
    sdc1	$f16,0($sp)
    jalr	$t9
    mul.s	$f13,$f13,$f17
    ldc1	$f19,0($sp)
    mul.s	$f19,$f0,$f19
    # Line 322
    swc1	$f19,180($s2)
    # Line 324
    lwc1	$f18,60($s3)
    lwc1	$f17,3284($s0)
    div.s	$f17,$f17,$f18
    # Line 325
    ldc1	$f16,16($sp)
    lwc1	$f15,56($s3)
    move	$a0,$s0
    lwc1	$f14,52($s3)
    mul.s	$f15,$f15,$f17
    lwc1	$f13,48($s3)
    lw	$t9,12524($s0)
    mul.s	$f14,$f14,$f17
    sdc1	$f19,8($sp)
    jalr	$t9
    mul.s	$f13,$f13,$f17
    ldc1	$f2,16($sp)
    # Line 331
    mul.s	$f2,$f0,$f2
    # Line 334
    ldc1	$f3,8($sp)
    sub.s	$f1,$f2,$f3
    mul.s	$f1,$f1,$f22
    # Line 335
    mul.s	$f0,$f1,$f24
    add.s	$f0,$f0,$f3
    # Line 331
    swc1	$f2,180($s3)
    # Line 334
    swc1	$f1,30400($s0)
    # Line 335
    swc1	$f0,30244($s0)
    lw	$a1,4($s3)
.L0dabb43c:
    andi	$a3,$s1,0x2
    beqz	$a3,.L0dabb50c
    ldc1	$f24,72($sp)
    # Line 339
    lw	$a0,4($s2)
    # Line 346
    lwc1	$f0,0($a1)
    lwc1	$f1,0($a0)
    lbu	$at,3104($s0)
    sub.s	$f0,$f0,$f1
    # Line 340
    move	$a2,$a1
    # Line 346
    beqz	$at,.L0dabb4a4
    mul.s	$f0,$f0,$f22
    # Line 350
    lwc1	$f1,12($a0)
    lwc1	$f4,12($a2)
    # Line 349
    lwc1	$f3,8($a2)
    # Line 350
    sub.s	$f4,$f4,$f1
    # Line 349
    lwc1	$f1,8($a0)
    # Line 351
    lwc1	$f2,4($a2)
    # Line 349
    sub.s	$f3,$f3,$f1
    # Line 351
    lwc1	$f1,4($a0)
    # Line 350
    mul.s	$f4,$f4,$f22
    # Line 351
    sub.s	$f2,$f2,$f1
    # Line 349
    mul.s	$f3,$f3,$f22
    # Line 351
    mul.s	$f2,$f2,$f22
    # Line 353
    swc1	$f4,30300($s0)
    # Line 352
    swc1	$f3,30296($s0)
    # Line 351
    swc1	$f2,30292($s0)
.L0dabb4a4:
    # Line 355
    swc1	$f0,30288($s0)
    ldc1	$f22,80($sp)
    # Line 356
    lw	$a0,4($s2)
.L0dabb4b0:
    # Line 361
    andi	$v0,$s1,0x1
    beqz	$v0,.L0dabb4d4
    lwc1	$f0,0($a0)
    # Line 367
    lwc1	$f4,12($a0)
    # Line 366
    lwc1	$f3,8($a0)
    # Line 368
    lwc1	$f2,4($a0)
    # Line 370
    swc1	$f4,30224($s0)
    # Line 369
    swc1	$f3,30220($s0)
    # Line 368
    swc1	$f2,30216($s0)
.L0dabb4d4:
    # Line 375
    move	$a0,$s0
    lw	$t9,12388($s0)
    # Line 374
    lw	$v1,29860($s0)
    # Line 372
    swc1	$f0,30212($s0)
    # Line 375
    jalr	$t9
    # Line 374
    sw	$v1,30252($s0)
    # ld	gp,32(sp)
    # Line 376
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabb50c:
    # Line 358
    move	$a0,$a1
    b	.L0dabb4b0
    ldc1	$f22,80($sp)
.L0dabb518:
    # Line 264
    sw	$zero,29848($s0)
    # Line 263
    sw	$zero,29844($s0)
    # Line 265
    li	$a3,1
    b	.L0dabb23c
    sb	$a3,29852($s0)
.L0dabb52c:
    # ld	gp,32(sp)
    # Line 236
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glRenderAliasLine

# Function: __glRenderFlatFogLine
# Declared: Line 378 (Source lines: 379-394)
# Address: 0x0dabb54c - 0x0dabb608 (Size: 188 bytes, Frame: 128)
.globl __glRenderFlatFogLine
.ent __glRenderFlatFogLine
__glRenderFlatFogLine:
    # Line 379
    addiu	$sp,$sp,-128
    sd	$s8,48($sp)
    sd	$s1,72($sp)
    move	$s1,$a1
    # Line 383
    addiu	$a1,$sp,0
    sd	$s2,32($sp)
    # Line 379
    move	$s2,$a0
    sd	$s0,80($sp)
    move	$s0,$a2
    # sd	gp,56(sp)
    lui	$at,0x14
    addiu	$at,$at,-15588
    # addu	gp,t9,at
    # Line 383
    lw	$t9,12540($a0)
    lw	$a2,4($a2)
    sd	$ra,40($sp)
    jalr	$t9
    lwc1	$f15,176($s1)
    # Line 384
    move	$a0,$s2
    lw	$t9,12540($s2)
    lwc1	$f15,176($s0)
    lw	$a2,4($s0)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 388
    addiu	$v0,$sp,16
    # Line 386
    lw	$a0,4($s0)
    # Line 385
    lw	$s8,4($s1)
    # Line 387
    addiu	$v1,$sp,0
    sw	$v1,4($s1)
    # Line 388
    sw	$v0,4($s0)
    # Line 390
    move	$a2,$s0
    lw	$t9,12484($s2)
    move	$a1,$s1
    sd	$a0,64($sp)
    jalr	$t9
    move	$a0,$s2
    # ld	gp,56(sp)
    # Line 392
    sw	$s8,4($s1)
    # Line 394
    ld	$s1,72($sp)
    ld	$s2,32($sp)
    # Line 393
    ld	$a3,64($sp)
    # Line 394
    ld	$s8,48($sp)
    ld	$ra,40($sp)
    # Line 393
    sw	$a3,4($s0)
    # Line 394
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glRenderFlatFogLine

# Function: __glInitAALineData
# Declared: Line 407 (Source lines: 408-574)
# Address: 0x0dabb608 - 0x0dabbb14 (Size: 1292 bytes, Frame: 144)
.globl __glInitAALineData
.ent __glInitAALineData
__glInitAALineData:
    # Line 408
    addiu	$sp,$sp,-144
    sdc1	$f20,48($sp)
    sdc1	$f24,40($sp)
    # Line 423
    sw	$a2,29956($a0)
    # Line 422
    sw	$a1,29952($a0)
    sdc1	$f26,56($sp)
    # Line 426
    lwc1	$f26,132($a1)
    # Line 428
    lwc1	$f10,132($a2)
    # Line 425
    lwc1	$f24,128($a1)
    # Line 427
    lwc1	$f8,128($a2)
    # Line 432
    sub.s	$f20,$f10,$f26
    sdc1	$f22,32($sp)
    sub.s	$f22,$f8,$f24
    mul.s	$f1,$f20,$f20
    mul.s	$f0,$f22,$f22
    add.s	$f0,$f0,$f1
    sqrt.s	$f0,$f0
    lwc1	$f7,3284($a0)
    div.s	$f7,$f7,$f0
    # sd	gp,88(sp)
    # Line 408
    lui	$at,0x14
    addiu	$at,$at,-15776
    # addu	gp,t9,at
    # Line 437
    mtc1	$zero,$f12
    # Line 434
    mul.s	$f6,$f22,$f7
    # Line 437
    c.lt.s	$f12,$f20
    li	$a4,1
    # Line 435
    mul.s	$f7,$f20,$f7
    # Line 437
    bc1fl	.L0dabb680
    move	$a4,$zero
.L0dabb680:
    sd	$s3,80($sp)
    # Line 408
    move	$s3,$a0
    # Line 437
    c.lt.s	$f12,$f22
    # Line 433
    swc1	$f0,29960($a0)
    # Line 437
    add.s	$f5,$f6,$f7
    swc1	$f6,29976($a0)
    # Line 435
    swc1	$f7,29968($a0)
    # Line 434
    swc1	$f6,29964($a0)
    # Line 436
    neg.s	$f9,$f7
    # Line 437
    bc1f	.L0dabb900
    # Line 436
    swc1	$f9,29972($a0)
    # Line 440
    li	$a0,1
    beqz	$a4,.L0dabb9d4
    sub.s	$f8,$f6,$f7
    # Line 443
    c.lt.s	$f20,$f22
    # Line 442
    swc1	$f8,29992($s3)
    # Line 443
    bc1f	.L0dabb7d4
    # Line 441
    swc1	$f5,29984($s3)
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 444
    sw	$a0,29892($s3)
.L0dabb6d4:
    # Line 451
    div.s	$f5,$f20,$f22
    # Line 453
    trunc.w.s	$f3,$f24
    # Line 456
    mov.s	$f12,$f22
    # Line 453
    cvt.s.w	$f2,$f3
    # Line 455
    swc1	$f22,29868($s3)
    # Line 450
    swc1	$f9,29988($s3)
    # Line 453
    lwc1	$f4,3280($s3)
    # Line 449
    swc1	$f6,29980($s3)
    # Line 448
    sw	$a0,29880($s3)
    # Line 453
    add.s	$f2,$f2,$f4
    # Line 447
    sw	$a0,29884($s3)
    # Line 446
    sw	$zero,29888($s3)
    # Line 453
    mfc1	$v0,$f3
    sub.s	$f2,$f2,$f24
    # Line 456
    # lw $t9, -22980($gp) # &ceilf
    sdc1	$f4,16($sp)
    sd	$v0,64($sp)
    sdc1	$f2,0($sp)
    jal	ceilf
    sdc1	$f5,8($sp)
    # Line 458
    ldc1	$f14,24($sp)
    lwc1	$f12,448($s3)
    # Line 456
    lwc1	$f13,_lit_3f800000
    # Line 458
    mul.s	$f12,$f12,$f14
    # Line 456
    add.s	$f13,$f0,$f13
    trunc.w.s	$f13,$f13
    ldc1	$f24,16($sp)
    ldc1	$f20,8($sp)
    # Line 458
    # lw $t9, -22980($gp) # &ceilf
    # Line 456
    mfc1	$v1,$f13
    # Line 458
    div.s	$f12,$f12,$f22
    jal	ceilf
    # Line 456
    sw	$v1,29860($s3)
    ldc1	$f5,0($sp)
    ld	$a0,64($sp)
    ld	$ra,96($sp)
.L0dabb764:
    # Line 470
    mul.s	$f1,$f20,$f5
    # Line 462
    mul.s	$f2,$f24,$f0
    # Line 470
    add.s	$f1,$f1,$f26
    sub.s	$f1,$f1,$f2
    trunc.w.s	$f2,$f1
    # Line 472
    cvt.s.w	$f6,$f2
    # Line 471
    cvt.d.s	$f3,$f20
    ldc1	$f4,_lit8_41e0000000000000
    # Line 472
    sub.s	$f1,$f1,$f6
    # Line 471
    mul.d	$f3,$f3,$f4
    # Line 472
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    # Line 471
    trunc.w.d	$f3,$f3
    # Line 466
    swc1	$f5,29864($s3)
    # Line 465
    sw	$a0,29872($s3)
    # Line 461
    trunc.w.s	$f4,$f0
    # Line 464
    sw	$zero,29856($s3)
    # Line 471
    mfc1	$v0,$f3
    # Line 470
    mfc1	$at,$f2
    # Line 461
    mfc1	$v1,$f4
    # Line 472
    trunc.w.d	$f1,$f1
    # Line 471
    sw	$v0,29900($s3)
    # Line 470
    sw	$at,29876($s3)
    # Line 461
    addiu	$v1,$v1,1
    # Line 472
    mfc1	$a1,$f1
    # Line 461
    sw	$v1,29948($s3)
    # Line 472
    b	.L0dabb8e0
    sw	$a1,29896($s3)
.L0dabb7d4:
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 474
    sw	$a0,29884($s3)
.L0dabb7e0:
    # Line 481
    div.s	$f5,$f22,$f20
    # Line 483
    trunc.w.s	$f3,$f26
    # Line 486
    mov.s	$f12,$f20
    # Line 485
    swc1	$f20,29868($s3)
    # Line 483
    cvt.s.w	$f2,$f3
    # Line 480
    swc1	$f6,29988($s3)
    # Line 479
    swc1	$f7,29980($s3)
    # Line 483
    lwc1	$f4,3280($s3)
    # Line 476
    sw	$zero,29880($s3)
    li	$a1,1
    # Line 483
    add.s	$f2,$f2,$f4
    # Line 478
    sw	$a1,29888($s3)
    # Line 477
    sw	$a1,29892($s3)
    # Line 483
    mfc1	$a0,$f3
    sub.s	$f2,$f2,$f26
    # Line 486
    # lw $t9, -22980($gp) # &ceilf
    sdc1	$f4,16($sp)
    sd	$a0,72($sp)
    sdc1	$f2,0($sp)
    jal	ceilf
    sdc1	$f5,8($sp)
    trunc.w.s	$f13,$f0
    # Line 488
    ldc1	$f14,24($sp)
    lwc1	$f12,448($s3)
    mul.s	$f12,$f12,$f14
    # Line 486
    mfc1	$a2,$f13
    # Line 488
    # lw $t9, -22980($gp) # &ceilf
    # Line 486
    addiu	$a2,$a2,1
    sw	$a2,29860($s3)
    # Line 488
    jal	ceilf
    div.s	$f12,$f12,$f20
    li	$a0,1
    ld	$ra,96($sp)
.L0dabb864:
    # Line 500
    ldc1	$f5,0($sp)
    ldc1	$f1,8($sp)
    # Line 492
    ldc1	$f3,16($sp)
    # Line 500
    mul.s	$f2,$f1,$f5
    # Line 492
    mul.s	$f3,$f3,$f0
    # Line 500
    add.s	$f2,$f2,$f24
    sub.s	$f2,$f2,$f3
    trunc.w.s	$f4,$f2
    # Line 502
    cvt.s.w	$f3,$f4
    sub.s	$f2,$f2,$f3
    # Line 501
    ldc1	$f3,_lit8_41e0000000000000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f3
    # Line 502
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f3
    # Line 494
    sw	$a0,29856($s3)
    # Line 491
    trunc.w.s	$f3,$f0
    # Line 495
    ld	$a1,72($sp)
    # Line 496
    swc1	$f5,29864($s3)
    # Line 501
    trunc.w.d	$f1,$f1
    # Line 495
    sw	$a1,29876($s3)
    # Line 500
    mfc1	$at,$f4
    # Line 502
    trunc.w.d	$f2,$f2
    # Line 501
    mfc1	$v0,$f1
    # Line 500
    sw	$at,29872($s3)
    # Line 491
    mfc1	$v1,$f3
    # Line 501
    sw	$v0,29900($s3)
    # Line 502
    mfc1	$v0,$f2
    # Line 491
    addiu	$v1,$v1,1
    sw	$v1,29948($s3)
    # Line 502
    sw	$v0,29896($s3)
.L0dabb8e0:
    # ld	gp,88(sp)
    # Line 574
    ld	$s3,80($sp)
    ldc1	$f20,48($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    ldc1	$f26,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dabb900:
    # Line 535
    li	$a0,1
    # Line 528
    beqz	$a4,.L0dabba00
    sub.s	$f11,$f7,$f6
    # Line 535
    sub.s	$f12,$f24,$f8
    c.lt.s	$f20,$f12
    li	$a2,-1
    # Line 534
    swc1	$f5,29992($s3)
    # Line 535
    bc1f	.L0dabb9c4
    # Line 533
    swc1	$f11,29984($s3)
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 536
    sw	$a0,29892($s3)
.L0dabb930:
    # Line 543
    div.s	$f8,$f20,$f12
    # Line 545
    trunc.w.s	$f5,$f24
    # Line 547
    swc1	$f12,29868($s3)
    # Line 545
    cvt.s.w	$f4,$f5
    # Line 540
    sw	$a2,29880($s3)
    # Line 542
    swc1	$f7,29988($s3)
    # Line 545
    lwc1	$f7,3280($s3)
    # Line 539
    sw	$a2,29884($s3)
    # Line 541
    neg.s	$f6,$f6
    # Line 545
    add.s	$f4,$f4,$f7
    # Line 538
    sw	$zero,29888($s3)
    # Line 541
    swc1	$f6,29980($s3)
    # Line 545
    mfc1	$v1,$f5
    sub.s	$f4,$f24,$f4
    # Line 548
    # lw $t9, -22980($gp) # &ceilf
    sdc1	$f7,16($sp)
    sd	$v1,64($sp)
    sdc1	$f4,0($sp)
    jal	ceilf
    sdc1	$f8,8($sp)
    # Line 550
    ldc1	$f14,24($sp)
    lwc1	$f12,448($s3)
    # Line 548
    trunc.w.s	$f13,$f0
    # Line 550
    mul.s	$f12,$f12,$f14
    ldc1	$f24,16($sp)
    # Line 548
    mfc1	$a0,$f13
    ldc1	$f20,8($sp)
    # Line 550
    # lw $t9, -22980($gp) # &ceilf
    # Line 548
    addiu	$a0,$a0,1
    sw	$a0,29860($s3)
    # Line 550
    neg.s	$f12,$f12
    jal	ceilf
    div.s	$f12,$f12,$f22
    ldc1	$f5,0($sp)
    ld	$a0,64($sp)
    # Line 553
    b	.L0dabb764
    ld	$ra,96($sp)
.L0dabb9c4:
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 556
    b	.L0dabb7e0
    # Line 555
    sw	$a2,29884($s3)
.L0dabb9d4:
    # Line 507
    li	$a2,-1
    sub.s	$f12,$f26,$f10
    c.lt.s	$f12,$f22
    # Line 505
    swc1	$f8,29984($s3)
    # Line 506
    neg.s	$f1,$f5
    # Line 507
    bc1f	.L0dabba60
    # Line 506
    swc1	$f1,29992($s3)
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 509
    b	.L0dabb6d4
    # Line 508
    sw	$a2,29892($s3)
.L0dabba00:
    # Line 560
    c.lt.s	$f22,$f20
    swc1	$f11,29992($s3)
    # Line 559
    neg.s	$f2,$f5
    # Line 560
    bc1f	.L0dabba2c
    # Line 559
    swc1	$f2,29984($s3)
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 563
    sub.s	$f12,$f24,$f8
    # Line 562
    li	$a2,-1
    # Line 563
    b	.L0dabb930
    # Line 562
    sw	$a2,29892($s3)
.L0dabba2c:
    # Line 563
    c.eq.s	$f22,$f20
    nop
    bc1f	.L0dabba48
    c.eq.s	$f20,$f12
    nop
    bc1tl	.L0dabbaf4
    nop
.L0dabba48:
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 570
    sub.s	$f12,$f26,$f10
    # Line 569
    li	$a2,-1
    # Line 570
    b	.L0dabba6c
    # Line 569
    sw	$a2,29884($s3)
.L0dabba60:
    sd	$ra,96($sp)
    sdc1	$f0,24($sp)
    # Line 511
    sw	$a0,29884($s3)
.L0dabba6c:
    # Line 518
    div.s	$f8,$f22,$f12
    # Line 520
    trunc.w.s	$f4,$f26
    # Line 522
    swc1	$f12,29868($s3)
    # Line 520
    cvt.s.w	$f3,$f4
    # Line 516
    swc1	$f9,29980($s3)
    # Line 515
    sw	$a2,29888($s3)
    # Line 520
    lwc1	$f7,3280($s3)
    # Line 514
    sw	$a2,29892($s3)
    # Line 517
    neg.s	$f5,$f6
    # Line 520
    add.s	$f3,$f3,$f7
    # Line 513
    sw	$zero,29880($s3)
    # Line 517
    swc1	$f5,29988($s3)
    # Line 520
    mfc1	$a1,$f4
    sub.s	$f3,$f26,$f3
    # Line 523
    # lw $t9, -22980($gp) # &ceilf
    sdc1	$f7,16($sp)
    sd	$a1,72($sp)
    sdc1	$f3,0($sp)
    jal	ceilf
    sdc1	$f8,8($sp)
    # Line 525
    ldc1	$f14,24($sp)
    lwc1	$f12,448($s3)
    # Line 523
    trunc.w.s	$f13,$f0
    # Line 525
    mul.s	$f12,$f12,$f14
    # Line 523
    mfc1	$a2,$f13
    # Line 525
    # lw $t9, -22980($gp) # &ceilf
    # Line 523
    addiu	$a2,$a2,1
    sw	$a2,29860($s3)
    # Line 525
    neg.s	$f12,$f12
    jal	ceilf
    div.s	$f12,$f12,$f20
    li	$a0,1
    # Line 528
    b	.L0dabb864
    ld	$ra,96($sp)
.L0dabbaf4:
    # Line 566
    swc1	$f12,29868($s3)
    # Line 567
    ld	$s3,80($sp)
    ldc1	$f20,48($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    ldc1	$f26,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glInitAALineData

# Function: __glRenderAntiAliasLine
# Declared: Line 576 (Source lines: 577-820)
# Address: 0x0dabbb14 - 0x0dabc1dc (Size: 1736 bytes, Frame: 224)
.globl __glRenderAntiAliasLine
.ent __glRenderAntiAliasLine
__glRenderAntiAliasLine:
    # Line 577
    addiu	$sp,$sp,-224
    sd	$s1,40($sp)
    move	$s1,$a2
    sd	$s7,32($sp)
    move	$s7,$a1
    sd	$s2,72($sp)
    sd	$ra,56($sp)
    # sd	gp,64(sp)
    lui	$at,0x14
    addiu	$at,$at,-17068
    # addu	gp,t9,at
    # Line 591
    # lw $t9, -28284($gp) # &__glInitAALineData
    sd	$s0,48($sp)
    # Line 577
    move	$s0,$a0
    # Line 591
    bal __glInitAALineData
    # Line 589
    lw	$s2,30440($s0)
    # Line 591
    lwc1	$f0,29868($s0)
    mtc1	$zero,$f1
    c.eq.s	$f0,$f1
    nop
    bc1tl	.L0dabc1a4
    nop
    sdc1	$f24,136($sp)
    # Line 594
    lwc1	$f24,29864($s0)
    sdc1	$f22,128($sp)
    # Line 599
    lwc1	$f22,3284($s0)
    andi	$v0,$s2,0x4000
    beqz	$v0,.L0dabbbe8
    div.s	$f22,$f22,$f0
    # Line 604
    lwc1	$f3,136($s1)
    lwc1	$f4,136($s7)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f22
    trunc.w.s	$f3,$f3
    # Line 609
    cvt.s.w	$f2,$f3
    # Line 604
    mfc1	$a0,$f3
    # Line 609
    mul.s	$f2,$f2,$f24
    # Line 604
    sw	$a0,30328($s0)
    # Line 606
    sll	$a0,$a0,0x5
    sw	$a0,30332($s0)
    # Line 609
    lwc1	$f1,136($s7)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    lbu	$v1,30524($s0)
    mfc1	$a0,$f1
    beqz	$v1,.L0dabbbe8
    sw	$a0,30208($s0)
    # Line 612
    lwc1	$f1,30492($s0)
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    nop
    addu	$a3,$a3,$a0
    sw	$a3,30208($s0)
.L0dabbbe8:
    andi	$at,$s2,0x8000
    beqz	$at,.L0dabbbfc
    sd	$at,80($sp)
    lbu	$v0,29852($s0)
    beqz	$v0,.L0dabc1c8
.L0dabbbfc:
    # Line 620
    andi	$v1,$s2,0x1000
    beqzl	$v1,.L0dabbc80
    # Line 639
    lbu	$a1,3104($s0)
    # Line 620
    lw	$a3,1812($s0)
    li	$at,4354
    bnel	$a3,$at,.L0dabbc38
    # Line 634
    lw	$t9,12544($s0)
    # Line 629
    lwc1	$f6,104($s7)
    swc1	$f6,29944($s0)
    # Line 630
    lwc1	$f5,104($s1)
    lwc1	$f1,104($s7)
    sub.s	$f5,$f5,$f1
    mul.s	$f5,$f5,$f22
    b	.L0dabbc70
    swc1	$f5,30436($s0)
.L0dabbc38:
    # Line 634
    move	$a0,$s0
    jal	__glInitAALineData
    move	$a1,$s7
    # Line 635
    lw	$t9,12544($s0)
    sdc1	$f0,0($sp)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ldc1	$f5,0($sp)
    # Line 636
    mov.s	$f6,$f5
    # Line 637
    sub.s	$f5,$f0,$f5
    mul.s	$f5,$f5,$f22
    # Line 636
    swc1	$f6,29944($s0)
    # Line 637
    swc1	$f5,30436($s0)
.L0dabbc70:
    # Line 639
    mul.s	$f1,$f5,$f24
    add.s	$f1,$f1,$f6
    swc1	$f1,30248($s0)
    lbu	$a1,3104($s0)
.L0dabbc80:
    andi	$v0,$s2,0x2
    beqz	$v0,.L0dabc1c0
    lw	$a2,4($s1)
    # Line 644
    lw	$a4,4($s7)
    # Line 645
    move	$a0,$a2
    # Line 650
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a4)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f22
    beqz	$a1,.L0dabbce8
    swc1	$f2,30288($s0)
    # Line 652
    lwc1	$f4,4($a0)
    lwc1	$f1,4($a4)
    sub.s	$f4,$f4,$f1
    mul.s	$f4,$f4,$f22
    swc1	$f4,30292($s0)
    # Line 653
    lwc1	$f2,8($a0)
    lwc1	$f3,8($a4)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f22
    swc1	$f2,30296($s0)
    # Line 654
    lwc1	$f4,12($a0)
    lwc1	$f1,12($a4)
    sub.s	$f4,$f4,$f1
    mul.s	$f4,$f4,$f22
    swc1	$f4,30300($s0)
.L0dabbce8:
    # Line 656
    lw	$a0,4($s7)
.L0dabbcec:
    # Line 661
    lwc1	$f2,0($a0)
    beqz	$a1,.L0dabbd10
    swc1	$f2,30212($s0)
    # Line 663
    lwc1	$f1,4($a0)
    swc1	$f1,30216($s0)
    # Line 664
    lwc1	$f4,8($a0)
    swc1	$f4,30220($s0)
    # Line 665
    lwc1	$f3,12($a0)
    swc1	$f3,30224($s0)
.L0dabbd10:
    lbu	$v1,28220($s0)
    beqzl	$v1,.L0dabbeb0
    sd	$s3,152($sp)
    # Line 680
    lwc1	$f23,140($s1)
    lwc1	$f21,60($s1)
    mul.s	$f21,$f21,$f23
    # Line 681
    lwc1	$f1,48($s1)
    # Line 679
    lwc1	$f16,60($s7)
    # Line 681
    mul.s	$f1,$f1,$f21
    # Line 674
    lwc1	$f23,140($s7)
    # Line 682
    lwc1	$f31,52($s1)
    # Line 679
    mul.s	$f16,$f16,$f23
    # Line 683
    lwc1	$f27,56($s1)
    # Line 682
    mul.s	$f31,$f31,$f21
    lwc1	$f0,52($s7)
    # Line 683
    mul.s	$f27,$f27,$f21
    lwc1	$f29,56($s7)
    # Line 682
    mul.s	$f0,$f0,$f16
    # Line 681
    lwc1	$f2,48($s7)
    # Line 683
    mul.s	$f29,$f29,$f16
    sdc1	$f21,24($sp)
    # Line 687
    sub.s	$f21,$f21,$f16
    # Line 681
    mul.s	$f2,$f2,$f16
    # Line 682
    sub.s	$f31,$f31,$f0
    # Line 687
    mul.s	$f21,$f21,$f22
    # Line 683
    sub.s	$f27,$f27,$f29
    # Line 682
    mul.s	$f31,$f31,$f22
    # Line 681
    sub.s	$f1,$f1,$f2
    # Line 683
    mul.s	$f27,$f27,$f22
    # Line 681
    mul.s	$f1,$f1,$f22
    # Line 687
    swc1	$f21,30396($s0)
    # Line 686
    swc1	$f27,30392($s0)
    # Line 685
    swc1	$f31,30388($s0)
    # Line 684
    swc1	$f1,30384($s0)
    # Line 688
    mul.s	$f1,$f24,$f1
    lwc1	$f0,48($s7)
    mul.s	$f0,$f0,$f23
    add.s	$f0,$f0,$f1
    swc1	$f0,30228($s0)
    # Line 689
    mul.s	$f31,$f24,$f31
    lwc1	$f29,52($s7)
    mul.s	$f29,$f29,$f23
    add.s	$f29,$f29,$f31
    swc1	$f29,30232($s0)
    # Line 690
    mul.s	$f27,$f24,$f27
    lwc1	$f25,56($s7)
    mul.s	$f25,$f25,$f23
    add.s	$f25,$f25,$f27
    swc1	$f25,30236($s0)
    # Line 691
    mul.s	$f21,$f21,$f24
    lwc1	$f19,60($s7)
    mul.s	$f19,$f19,$f23
    add.s	$f19,$f19,$f21
    swc1	$f19,30240($s0)
    # Line 693
    lwc1	$f17,3284($s0)
    lwc1	$f18,60($s7)
    div.s	$f17,$f17,$f18
    # Line 694
    lwc1	$f15,56($s7)
    move	$a0,$s0
    lwc1	$f14,52($s7)
    mul.s	$f15,$f15,$f17
    lw	$t9,12524($s0)
    lwc1	$f13,48($s7)
    mul.s	$f14,$f14,$f17
    sdc1	$f16,8($sp)
    jalr	$t9
    mul.s	$f13,$f13,$f17
    ldc1	$f19,8($sp)
    mul.s	$f19,$f0,$f19
    # Line 700
    swc1	$f19,180($s7)
    # Line 702
    lwc1	$f18,60($s1)
    lwc1	$f17,3284($s0)
    div.s	$f17,$f17,$f18
    # Line 703
    ldc1	$f16,24($sp)
    lwc1	$f15,56($s1)
    move	$a0,$s0
    lwc1	$f14,52($s1)
    mul.s	$f15,$f15,$f17
    lwc1	$f13,48($s1)
    lw	$t9,12524($s0)
    mul.s	$f14,$f14,$f17
    sdc1	$f19,16($sp)
    jalr	$t9
    mul.s	$f13,$f13,$f17
    ldc1	$f2,24($sp)
    # Line 709
    mul.s	$f2,$f0,$f2
    # Line 712
    ldc1	$f3,16($sp)
    sub.s	$f1,$f2,$f3
    mul.s	$f1,$f1,$f22
    sd	$s3,152($sp)
    sd	$s6,160($sp)
    # Line 713
    mul.s	$f0,$f1,$f24
    sd	$s4,168($sp)
    sd	$s5,176($sp)
    sd	$s8,184($sp)
    sdc1	$f20,104($sp)
    sdc1	$f26,112($sp)
    sdc1	$f30,120($sp)
    add.s	$f0,$f0,$f3
    sdc1	$f28,144($sp)
    # Line 709
    swc1	$f2,180($s1)
    # Line 712
    swc1	$f1,30400($s0)
    # Line 713
    swc1	$f0,30244($s0)
    sd	$s3,152($sp)
.L0dabbeb0:
    # Line 722
    lw	$s3,29876($s0)
    # Line 734
    mtc1	$s3,$f3
    sdc1	$f30,120($sp)
    # Line 721
    lw	$s2,29872($s0)
    # Line 734
    cvt.s.w	$f3,$f3
    # Line 731
    lwc1	$f30,29992($s0)
    # Line 733
    mtc1	$s2,$f1
    sdc1	$f26,112($sp)
    # Line 730
    lwc1	$f26,29988($s0)
    # Line 733
    cvt.s.w	$f1,$f1
    sdc1	$f28,144($sp)
    lwc1	$f0,3280($s0)
    # Line 729
    lwc1	$f28,29984($s0)
    # Line 728
    lwc1	$f24,29980($s0)
    # Line 734
    add.s	$f3,$f3,$f0
    sd	$s5,176($sp)
    lwc1	$f4,132($s7)
    # Line 733
    add.s	$f1,$f1,$f0
    # Line 726
    lw	$s5,29888($s0)
    # Line 733
    lwc1	$f2,128($s7)
    # Line 734
    sub.s	$f3,$f3,$f4
    sd	$s6,160($sp)
    # Line 725
    lw	$s6,29880($s0)
    # Line 733
    sub.s	$f1,$f1,$f2
    # Line 737
    lwc1	$f2,29976($s0)
    sd	$s8,184($sp)
    lwc1	$f22,29972($s0)
    mul.s	$f2,$f2,$f3
    sdc1	$f20,104($sp)
    # Line 735
    lwc1	$f20,29964($s0)
    # Line 737
    mul.s	$f22,$f22,$f1
    # Line 716
    lw	$s8,29948($s0)
    # Line 737
    ld	$a3,80($sp)
    # Line 735
    mul.s	$f20,$f20,$f1
    lwc1	$f1,29968($s0)
    sd	$s4,168($sp)
    # Line 724
    lw	$s4,29892($s0)
    # Line 735
    mul.s	$f1,$f1,$f3
    # Line 723
    lw	$s1,29884($s0)
    sd	$s4,88($sp)
    # Line 719
    lw	$s4,29900($s0)
    sd	$s1,96($sp)
    # Line 737
    add.s	$f22,$f22,$f2
    # Line 718
    lw	$s1,29896($s0)
    # Line 737
    beqz	$a3,.L0dabbfac
    # Line 735
    add.s	$f20,$f20,$f1
    # Line 741
    lh	$a3,458($s0)
    # Line 746
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3284($s0)
    # Line 741
    lw	$v1,29844($s0)
    # Line 746
    div.s	$f2,$f2,$f3
    # Line 741
    mult	$v1,$a3
    lw	$at,29848($s0)
    mflo	$v0
    addu	$at,$at,$v0
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    sub.s	$f3,$f3,$f0
    swc1	$f3,30004($s0)
    # Line 746
    swc1	$f2,30008($s0)
.L0dabbfac:
    # Line 750
    addiu	$s8,$s8,-1
    bltz	$s8,.L0dabc0fc
    li	$a0,-1
    lui	$s7,0x7fff
    b	.L0dabc01c
    ori	$s7,$s7,0xffff
.L0dabbfc4:
    # Line 794
    move	$a0,$s0
.L0dabbfc8:
    # Line 791
    sw	$s3,29876($s0)
    # Line 790
    sw	$s2,29872($s0)
    # Line 789
    sw	$s4,29900($s0)
    # Line 788
    sw	$s1,29896($s0)
    # Line 787
    swc1	$f22,30000($s0)
    # Line 794
    lw	$t9,12388($s0)
    # Line 793
    lw	$t8,29860($s0)
    # Line 786
    swc1	$f20,29996($s0)
    # Line 794
    jalr	$t9
    # Line 793
    sw	$t8,30252($s0)
    # Line 794
    lw	$at,29856($s0)
    beqz	$at,.L0dabc0e4
    li	$a0,-1
    # Line 803
    lwc1	$f1,29972($s0)
    # Line 802
    lwc1	$f4,29964($s0)
    # Line 803
    add.s	$f22,$f1,$f22
    # Line 801
    addiu	$s2,$s2,1
    # Line 802
    add.s	$f20,$f4,$f20
.L0dabc010:
    # Line 750
    addiu	$s8,$s8,-1
    beq	$s8,$a0,.L0dabc0fc
    nop
.L0dabc01c:
    lwc1	$f0,3280($s0)
    neg.s	$f0,$f0
    c.lt.s	$f0,$f20
    nop
    bc1fl	.L0dabc088
    # Line 764
    c.le.s	$f20,$f0
    b	.L0dabc068
    # Line 753
    subu	$s1,$s1,$s4
.L0dabc03c:
    # Line 757
    sub.s	$f22,$f22,$f30
    # Line 756
    sub.s	$f20,$f20,$f28
    # Line 759
    ld	$v1,88($sp)
    # Line 755
    and	$s1,$s1,$s7
    # Line 758
    subu	$s2,$s2,$v0
    # Line 759
    subu	$s3,$s3,$v1
.L0dabc054:
    # Line 764
    c.lt.s	$f0,$f20
    nop
    bc1f	.L0dabc084
    nop
    # Line 753
    subu	$s1,$s1,$s4
.L0dabc068:
    bltz	$s1,.L0dabc03c
    # Line 758
    ld	$v0,96($sp)
    # Line 764
    subu	$s3,$s3,$s5
    # Line 762
    sub.s	$f22,$f22,$f26
    # Line 763
    subu	$s2,$s2,$s6
    b	.L0dabc054
    # Line 761
    sub.s	$f20,$f20,$f24
.L0dabc084:
    # Line 764
    c.le.s	$f20,$f0
.L0dabc088:
    nop
    bc1f	.L0dabbfc8
    # Line 794
    move	$a0,$s0
    b	.L0dabc0c8
    # Line 770
    addu	$s1,$s1,$s4
.L0dabc09c:
    # Line 774
    add.s	$f22,$f30,$f22
    # Line 773
    add.s	$f20,$f28,$f20
    # Line 776
    ld	$at,88($sp)
    # Line 772
    and	$s1,$s1,$s7
    # Line 775
    addu	$s2,$s2,$a3
    # Line 776
    addu	$s3,$s3,$at
.L0dabc0b4:
    # Line 781
    c.le.s	$f20,$f0
    nop
    bc1f	.L0dabbfc4
    nop
    # Line 770
    addu	$s1,$s1,$s4
.L0dabc0c8:
    bltz	$s1,.L0dabc09c
    # Line 775
    ld	$a3,96($sp)
    # Line 781
    addu	$s3,$s3,$s5
    # Line 779
    add.s	$f22,$f26,$f22
    # Line 780
    addu	$s2,$s2,$s6
    b	.L0dabc0b4
    # Line 778
    add.s	$f20,$f24,$f20
.L0dabc0e4:
    # Line 799
    lwc1	$f2,29976($s0)
    # Line 798
    lwc1	$f1,29968($s0)
    # Line 799
    add.s	$f22,$f2,$f22
    # Line 797
    addiu	$s3,$s3,1
    # Line 799
    b	.L0dabc010
    # Line 798
    add.s	$f20,$f1,$f20
.L0dabc0fc:
    ldc1	$f20,104($sp)
    ldc1	$f26,112($sp)
    ldc1	$f30,120($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,136($sp)
    ldc1	$f28,144($sp)
    ld	$s3,152($sp)
    ld	$s6,160($sp)
    ld	$v0,80($sp)
    ld	$s4,168($sp)
    ld	$s5,176($sp)
    # Line 750
    beqz	$v0,.L0dabc184
    ld	$s8,184($sp)
    # Line 813
    # lw $t9, -22980($gp) # &ceilf
    jal	ceilf
    lwc1	$f12,29960($s0)
    # Line 817
    trunc.w.s	$f3,$f0
    mfc1	$a3,$f3
    lh	$v0,458($s0)
    div	$zero,$a3,$v0
    # Line 818
    lw	$v1,29848($s0)
    # Line 817
    mflo	$at
    nop
    # Line 818
    addu	$v1,$v1,$a3
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    # Line 817
    lw	$a3,29844($s0)
    teq	$v0,$zero,0x7
    addu	$a3,$a3,$at
    andi	$a3,$a3,0xf
    sw	$a3,29844($s0)
    # Line 818
    mfhi	$v1
    nop
    sw	$v1,29848($s0)
.L0dabc184:
    # ld	gp,64(sp)
    # Line 820
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,56($sp)
    ld	$s2,72($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabc1a4:
    # Line 592
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,56($sp)
    ld	$s2,72($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dabc1c0:
    b	.L0dabbcec
    # Line 658
    move	$a0,$a2
.L0dabc1c8:
    # Line 619
    sw	$zero,29848($s0)
    # Line 618
    sw	$zero,29844($s0)
    # Line 620
    li	$at,1
    b	.L0dabbbfc
    sb	$at,29852($s0)
.end __glRenderAntiAliasLine

# Function: __glPolygonOffsetLine
# Declared: Line 822 (Source lines: 823-829)
# Address: 0x0dabc1dc - 0x0dabc224 (Size: 72 bytes, Frame: 192)
.globl __glPolygonOffsetLine
.ent __glPolygonOffsetLine
__glPolygonOffsetLine:
    # Line 824
    li	$at,1
    # Line 823
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    lui	$v0,0x14
    addiu	$v0,$v0,-18804
    # addu	gp,t9,v0
    # Line 826
    lw	$t9,12480($a0)
    sd	$s8,8($sp)
    # Line 823
    move	$s8,$a0
    # Line 826
    jalr	$t9
    # Line 824
    sb	$at,30524($s8)
    # ld	gp,16(sp)
    # Line 829
    ld	$ra,0($sp)
    # Line 828
    sb	$zero,30524($s8)
    # Line 829
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glPolygonOffsetLine

.rdata
_lit8_41e0000000000000:
    .word 0x41e00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

