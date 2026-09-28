# Source: ../soft/so_polyfin.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyfin.c
# Total Functions: 29

.text

# Function: __glMatValidateVbuf0N
# Declared: Line 33 (Source lines: 34-43)
# Address: 0x0dad2630 - 0x0dad26c8 (Size: 152 bytes, Frame: 192)
.globl __glMatValidateVbuf0N
.ent __glMatValidateVbuf0N
__glMatValidateVbuf0N:
    # Line 34
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$s1,16($sp)
    # Line 38
    lw	$s1,28096($a0)
    # sd	gp,24(sp)
    # Line 34
    lui	$v0,0x12
    addiu	$v0,$v0,21048
    # Line 40
    lw	$a1,12696($a0)
    sd	$s0,8($sp)
    addiu	$s0,$a0,12720
    sltu	$at,$s0,$a1
    beqz	$at,.L0dad26b0
    # Line 34
    nop
    b	.L0dad2680
    sd	$ra,32($sp)
.L0dad2670:
    # Line 40
    addiu	$s0,$s0,192
.L0dad2674:
    sltu	$v1,$s0,$a1
    beqz	$v1,.L0dad26b0
    ld	$ra,32($sp)
.L0dad2680:
    lw	$a3,0($s0)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$s1
    beqzl	$a3,.L0dad2674
    addiu	$s0,$s0,192
    # Line 41
    lw	$t9,8($s0)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    b	.L0dad2670
    lw	$a1,12696($s2)
.L0dad26b0:
    # ld	gp,24(sp)
    # Line 43
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMatValidateVbuf0N

# Function: __glMatValidateVbuf0V1
# Declared: Line 48 (Source lines: 49-60)
# Address: 0x0dad26c8 - 0x0dad275c (Size: 148 bytes, Frame: 48)
.globl __glMatValidateVbuf0V1
.ent __glMatValidateVbuf0V1
__glMatValidateVbuf0V1:
    # Line 49
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    lui	$v0,0x12
    # Line 53
    lw	$at,12720($a0)
    sd	$s1,8($sp)
    lw	$s1,28096($a0)
    # Line 49
    addiu	$v0,$v0,20896
    # Line 53
    nor	$at,$at,$zero
    and	$at,$at,$s1
    beqz	$at,.L0dad2718
    # Line 49
    nop
    # Line 56
    move	$a0,$s0
    lw	$t9,12728($s0)
    move	$a2,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$s0,12720
    ld	$ra,24($sp)
.L0dad2718:
    # Line 58
    lw	$a1,12700($s0)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s1
    beqzl	$v1,.L0dad274c
    nop
    # Line 59
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
    # ld	gp,16(sp)
.L0dad274c:
    # Line 60
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMatValidateVbuf0V1

# Function: __glMatValidateV1
# Declared: Line 65 (Source lines: 66-74)
# Address: 0x0dad275c - 0x0dad27a8 (Size: 76 bytes, Frame: 32)
.globl __glMatValidateV1
.ent __glMatValidateV1
__glMatValidateV1:
    # Line 66
    addiu	$sp,$sp,-32
    # Line 72
    lw	$a1,12700($a0)
    # sd	gp,0(sp)
    # Line 66
    lui	$v0,0x12
    # Line 72
    lw	$at,0($a1)
    # Line 70
    lw	$a2,28096($a0)
    # Line 66
    addiu	$v0,$v0,20748
    # Line 72
    nor	$at,$at,$zero
    and	$at,$at,$a2
    beqz	$at,.L0dad279c
    # Line 66
    nop
    # Line 73
    lw	$t9,8($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0dad279c:
    # ld	gp,0(sp)
    # Line 74
    jr	$ra
    addiu	$sp,$sp,32
.end __glMatValidateV1

# Function: __glMatValidateV1V2
# Declared: Line 79 (Source lines: 80-91)
# Address: 0x0dad27a8 - 0x0dad283c (Size: 148 bytes, Frame: 48)
.globl __glMatValidateV1V2
.ent __glMatValidateV1V2
__glMatValidateV1V2:
    # Line 80
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    # Line 86
    lw	$a1,12700($a0)
    # Line 80
    lui	$v0,0x12
    sd	$s1,8($sp)
    # Line 86
    lw	$at,0($a1)
    # Line 84
    lw	$s1,28096($a0)
    # Line 80
    addiu	$v0,$v0,20672
    # Line 86
    nor	$at,$at,$zero
    and	$at,$at,$s1
    beqz	$at,.L0dad27f8
    # Line 80
    nop
    # Line 87
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
.L0dad27f8:
    # Line 89
    lw	$a1,12704($s0)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s1
    beqzl	$v1,.L0dad282c
    nop
    # Line 90
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
    # ld	gp,16(sp)
.L0dad282c:
    # Line 91
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMatValidateV1V2

# Function: __glMatValidateV1V2V3
# Declared: Line 96 (Source lines: 97-111)
# Address: 0x0dad283c - 0x0dad2900 (Size: 196 bytes, Frame: 48)
.globl __glMatValidateV1V2V3
.ent __glMatValidateV1V2V3
__glMatValidateV1V2V3:
    # Line 97
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    move	$s1,$a0
    # sd	gp,16(sp)
    # Line 103
    lw	$a1,12700($a0)
    # Line 97
    lui	$v0,0x12
    sd	$s0,0($sp)
    # Line 103
    lw	$at,0($a1)
    # Line 101
    lw	$s0,28096($a0)
    # Line 97
    addiu	$v0,$v0,20524
    # Line 103
    nor	$at,$at,$zero
    and	$at,$at,$s0
    beqz	$at,.L0dad288c
    # Line 97
    nop
    # Line 104
    lw	$t9,8($a1)
    move	$a0,$s1
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
.L0dad288c:
    # Line 106
    lw	$a1,12704($s1)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s0
    beqzl	$v1,.L0dad28c0
    # Line 109
    lw	$a1,12708($s1)
    # Line 107
    lw	$t9,8($a1)
    move	$a0,$s1
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
    # Line 109
    lw	$a1,12708($s1)
.L0dad28c0:
    lw	$a3,0($a1)
    nor	$a3,$a3,$zero
    and	$a3,$a3,$s0
    beqzl	$a3,.L0dad28f0
    nop
    # Line 110
    lw	$t9,8($a1)
    move	$a0,$s1
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
    # ld	gp,16(sp)
.L0dad28f0:
    # Line 111
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMatValidateV1V2V3

# Function: __glMatValidateV2V3
# Declared: Line 116 (Source lines: 117-128)
# Address: 0x0dad2900 - 0x0dad2994 (Size: 148 bytes, Frame: 48)
.globl __glMatValidateV2V3
.ent __glMatValidateV2V3
__glMatValidateV2V3:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # sd	gp,16(sp)
    # Line 123
    lw	$a1,12704($a0)
    # Line 117
    lui	$v0,0x12
    sd	$s1,8($sp)
    # Line 123
    lw	$at,0($a1)
    # Line 121
    lw	$s1,28096($a0)
    # Line 117
    addiu	$v0,$v0,20328
    # Line 123
    nor	$at,$at,$zero
    and	$at,$at,$s1
    beqz	$at,.L0dad2950
    # Line 117
    nop
    # Line 124
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
.L0dad2950:
    # Line 126
    lw	$a1,12708($s0)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s1
    beqzl	$v1,.L0dad2984
    nop
    # Line 127
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
    # ld	gp,16(sp)
.L0dad2984:
    # Line 128
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMatValidateV2V3

# Function: OtherTFanVertex
# Declared: Line 166 (Source lines: 167-198)
# Address: 0x0dad2994 - 0x0dad2a24 (Size: 144 bytes, Frame: 32)
.ent OtherTFanVertex
OtherTFanVertex:
    # Line 167
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    # Line 175
    sb	$zero,29852($a0)
    # Line 176
    li	$v0,1
    # Line 171
    lw	$a3,12700($a0)
    # Line 176
    sb	$v0,184($a1)
    # Line 180
    sw	$a1,12700($a0)
    # Line 177
    sw	$a1,28080($a0)
    # Line 181
    sw	$a3,12696($a0)
    # Line 167
    lui	$at,0x12
    # Line 184
    lw	$a7,12($a3)
    lw	$a6,12($a1)
    lw	$a5,12732($a0)
    # Line 167
    addiu	$at,$at,20180
    # Line 184
    or	$a4,$a6,$a7
    or	$a4,$a4,$a5
    beqz	$a4,.L0dad2a0c
    # Line 167
    nop
    # Line 184
    and	$v1,$a6,$a7
    and	$v1,$v1,$a5
    beqzl	$v1,.L0dad29f8
    # Line 192
    lw	$t9,12096($a0)
.L0dad29ec:
    # ld	gp,0(sp)
    # Line 198
    jr	$ra
    addiu	$sp,$sp,32
.L0dad29f8:
    sd	$ra,8($sp)
    # Line 192
    jalr	$t9
    addiu	$a2,$a0,12720
    b	.L0dad29ec
    ld	$ra,8($sp)
.L0dad2a0c:
    # Line 196
    lw	$t9,12084($a0)
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a0,12720
    b	.L0dad29ec
    ld	$ra,8($sp)
.end OtherTFanVertex

# Function: SecondTFanVertex
# Declared: Line 200 (Source lines: 201-207)
# Address: 0x0dad2a24 - 0x0dad2a5c (Size: 56 bytes, Frame: 0)
.ent SecondTFanVertex
SecondTFanVertex:
    # Line 202
    li	$a3,1
    sb	$a3,184($a1)
    # Line 204
    sw	$a1,12700($a0)
    # Line 203
    addiu	$a1,$a1,192
    # Line 201
    lui	$a2,0x12
    addiu	$a2,$a2,20036
    # addu	at,t9,a2
    # Line 206
    la	$v1,__glMatValidateVbuf0V1
    # Line 205
    la	$v0,sub_0dad0000
    # Line 203
    sw	$a1,12696($a0)
    # Line 206
    sw	$v1,12028($a0)
    # Line 205
    addiu	$v0,$v0,10644
    # Line 207
    jr	$ra
    # Line 205
    sw	$v0,11956($a0)
.end SecondTFanVertex

# Function: FirstTFanVertex
# Declared: Line 209 (Source lines: 210-214)
# Address: 0x0dad2a5c - 0x0dad2a88 (Size: 44 bytes, Frame: 0)
.ent FirstTFanVertex
FirstTFanVertex:
    # Line 212
    addiu	$v1,$a1,192
    # Line 211
    li	$a2,1
    # Line 210
    lui	$a3,0x12
    addiu	$a3,$a3,19980
    # addu	at,t9,a3
    # Line 213
    la	$v0,sub_0dad0000
    # Line 211
    sb	$a2,184($a1)
    # Line 212
    sw	$v1,12696($a0)
    # Line 213
    addiu	$v0,$v0,10788
    # Line 214
    jr	$ra
    # Line 213
    sw	$v0,11956($a0)
.end FirstTFanVertex

# Function: __glBeginTFan
# Declared: Line 216 (Source lines: 217-222)
# Address: 0x0dad2a88 - 0x0dad2abc (Size: 52 bytes, Frame: 0)
.globl __glBeginTFan
.ent __glBeginTFan
__glBeginTFan:
    # Line 218
    addiu	$a1,$a0,12720
    # Line 221
    li	$v0,1
    sb	$v0,30526($a0)
    # Line 217
    lui	$a2,0x12
    addiu	$a2,$a2,19936
    # addu	at,t9,a2
    # Line 220
    la	$v1,__glMatValidateVbuf0N
    # Line 219
    la	$v0,sub_0dad0000
    # Line 218
    sw	$a1,12696($a0)
    # Line 220
    sw	$v1,12028($a0)
    # Line 219
    addiu	$v0,$v0,10844
    # Line 222
    jr	$ra
    # Line 219
    sw	$v0,11956($a0)
.end __glBeginTFan

# Function: SecondTStripVertex
# Declared: Line 381 (Source lines: 382-388)
# Address: 0x0dad2abc - 0x0dad2af0 (Size: 52 bytes, Frame: 0)
.ent SecondTStripVertex
SecondTStripVertex:
    # Line 383
    li	$a3,1
    sb	$a3,184($a1)
    # Line 385
    sw	$a1,12700($a0)
    # Line 384
    addiu	$a1,$a1,192
    # Line 382
    lui	$a2,0x12
    addiu	$a2,$a2,19884
    # addu	at,t9,a2
    # Line 387
    la	$v1,__glMatValidateV1V2
    # Line 384
    sw	$a1,12696($a0)
    # Line 386
    lw	$v0,11976($a0)
    # Line 387
    sw	$v1,12028($a0)
    # Line 388
    jr	$ra
    # Line 386
    sw	$v0,11956($a0)
.end SecondTStripVertex

# Function: FirstTStripVertex
# Declared: Line 390 (Source lines: 391-396)
# Address: 0x0dad2af0 - 0x0dad2b20 (Size: 48 bytes, Frame: 0)
.ent FirstTStripVertex
FirstTStripVertex:
    # Line 393
    addiu	$v1,$a1,192
    # Line 392
    li	$a3,1
    sb	$a3,184($a1)
    # Line 391
    lui	$a2,0x12
    addiu	$a2,$a2,19832
    # addu	at,t9,a2
    # Line 395
    la	$v0,sub_0dad0000
    # Line 394
    sw	$a1,12704($a0)
    # Line 393
    sw	$v1,12696($a0)
    # Line 395
    addiu	$v0,$v0,10940
    # Line 396
    jr	$ra
    # Line 395
    sw	$v0,11956($a0)
.end FirstTStripVertex

# Function: __glBeginTStrip
# Declared: Line 398 (Source lines: 399-404)
# Address: 0x0dad2b20 - 0x0dad2b54 (Size: 52 bytes, Frame: 0)
.globl __glBeginTStrip
.ent __glBeginTStrip
__glBeginTStrip:
    # Line 400
    addiu	$a1,$a0,12720
    # Line 403
    li	$v0,1
    sb	$v0,30526($a0)
    # Line 399
    lui	$a2,0x12
    addiu	$a2,$a2,19784
    # addu	at,t9,a2
    # Line 402
    la	$v1,__glMatValidateVbuf0N
    # Line 401
    la	$v0,sub_0dad0000
    # Line 400
    sw	$a1,12696($a0)
    # Line 402
    sw	$v1,12028($a0)
    # Line 401
    addiu	$v0,$v0,10992
    # Line 404
    jr	$ra
    # Line 401
    sw	$v0,11956($a0)
.end __glBeginTStrip

# Function: ThirdTrianglesVertex
# Declared: Line 419 (Source lines: 420-449)
# Address: 0x0dad2b54 - 0x0dad2bec (Size: 152 bytes, Frame: 32)
.ent ThirdTrianglesVertex
ThirdTrianglesVertex:
    # Line 427
    lbu	$a7,429($a0)
    # Line 431
    addiu	$a2,$a0,12720
    # Line 426
    sb	$zero,29852($a0)
    # Line 427
    sb	$a7,184($a1)
    # Line 420
    addiu	$sp,$sp,-32
    # sd	gp,0(sp)
    lui	$a6,0x12
    addiu	$a6,$a6,19732
    # addu	gp,t9,a6
    # Line 432
    la	$a5,sub_0dad0000
    # Line 431
    sw	$a2,12696($a0)
    # Line 428
    sw	$a1,28080($a0)
    # Line 432
    addiu	$a5,$a5,11288
    sw	$a5,11956($a0)
    # Line 435
    lw	$a7,12732($a0)
    lw	$a6,12($a1)
    lw	$a5,12924($a0)
    or	$a4,$a6,$a7
    or	$a4,$a4,$a5
    beqz	$a4,.L0dad2bd4
    and	$at,$a6,$a7
    and	$at,$at,$a5
    beqzl	$at,.L0dad2bc0
    # Line 443
    lw	$t9,12096($a0)
.L0dad2bb4:
    # ld	gp,0(sp)
    # Line 449
    jr	$ra
    addiu	$sp,$sp,32
.L0dad2bc0:
    sd	$ra,8($sp)
    # Line 443
    jalr	$t9
    addiu	$a3,$a0,12912
    b	.L0dad2bb4
    ld	$ra,8($sp)
.L0dad2bd4:
    # Line 447
    lw	$t9,12080($a0)
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a3,$a0,12912
    b	.L0dad2bb4
    ld	$ra,8($sp)
.end ThirdTrianglesVertex

# Function: SecondTrianglesVertex
# Declared: Line 451 (Source lines: 452-456)
# Address: 0x0dad2bec - 0x0dad2c18 (Size: 44 bytes, Frame: 0)
.ent SecondTrianglesVertex
SecondTrianglesVertex:
    # Line 454
    addiu	$v1,$a1,192
    # Line 453
    lbu	$a2,429($a0)
    # Line 452
    lui	$a3,0x12
    addiu	$a3,$a3,19580
    # addu	at,t9,a3
    # Line 455
    la	$v0,sub_0dad0000
    # Line 453
    sb	$a2,184($a1)
    # Line 454
    sw	$v1,12696($a0)
    # Line 455
    addiu	$v0,$v0,11092
    # Line 456
    jr	$ra
    # Line 455
    sw	$v0,11956($a0)
.end SecondTrianglesVertex

# Function: FirstTrianglesVertex
# Declared: Line 458 (Source lines: 459-463)
# Address: 0x0dad2c18 - 0x0dad2c44 (Size: 44 bytes, Frame: 0)
.ent FirstTrianglesVertex
FirstTrianglesVertex:
    # Line 461
    addiu	$v1,$a1,192
    # Line 460
    lbu	$a2,429($a0)
    # Line 459
    lui	$a3,0x12
    addiu	$a3,$a3,19536
    # addu	at,t9,a3
    # Line 462
    la	$v0,sub_0dad0000
    # Line 460
    sb	$a2,184($a1)
    # Line 461
    sw	$v1,12696($a0)
    # Line 462
    addiu	$v0,$v0,11244
    # Line 463
    jr	$ra
    # Line 462
    sw	$v0,11956($a0)
.end FirstTrianglesVertex

# Function: __glBeginTriangles
# Declared: Line 465 (Source lines: 466-470)
# Address: 0x0dad2c44 - 0x0dad2c70 (Size: 44 bytes, Frame: 0)
.globl __glBeginTriangles
.ent __glBeginTriangles
__glBeginTriangles:
    # Line 467
    addiu	$a1,$a0,12720
    # Line 466
    lui	$a2,0x12
    addiu	$a2,$a2,19492
    # addu	at,t9,a2
    # Line 469
    la	$v1,__glMatValidateVbuf0N
    # Line 468
    la	$v0,sub_0dad0000
    # Line 467
    sw	$a1,12696($a0)
    # Line 469
    sw	$v1,12028($a0)
    # Line 468
    addiu	$v0,$v0,11288
    # Line 470
    jr	$ra
    # Line 468
    sw	$v0,11956($a0)
.end __glBeginTriangles

# Function: FourthQStripVertex
# Declared: Line 509 (Source lines: 510-557)
# Address: 0x0dad2c70 - 0x0dad2d90 (Size: 288 bytes, Frame: 208)
.ent FourthQStripVertex
FourthQStripVertex:
    # Line 516
    lw	$a6,12704($a0)
    # Line 520
    sb	$zero,29852($a0)
    # Line 521
    li	$at,1
    # Line 515
    lw	$a5,12700($a0)
    # Line 517
    lw	$t2,12708($a0)
    # Line 521
    sb	$at,184($a1)
    # Line 522
    sw	$a1,28080($a0)
    # Line 526
    sw	$a1,12704($a0)
    # Line 525
    sw	$t2,12696($a0)
    # Line 510
    addiu	$sp,$sp,-80
    # sd	gp,48(sp)
    lui	$t3,0x12
    addiu	$t3,$t3,19448
    # addu	gp,t9,t3
    # Line 529
    la	$t0,__glMatValidateV2V3
    # Line 528
    la	$t1,sub_0dad0000
    # Line 527
    sw	$a5,12708($a0)
    # Line 529
    sw	$t0,12028($a0)
    # Line 528
    addiu	$t1,$t1,11664
    sw	$t1,11956($a0)
    # Line 532
    lw	$t3,12($a5)
    lw	$a2,12($t2)
    lw	$t1,12($a6)
    lw	$t0,12($a1)
    or	$a4,$t1,$a2
    or	$a3,$t0,$t3
    or	$a3,$a3,$a4
    beqz	$a3,.L0dad2d2c
    # Line 510
    move	$a7,$a1
    # Line 532
    and	$v1,$t1,$a2
    and	$v0,$t0,$t3
    and	$v0,$v0,$v1
    beqz	$v0,.L0dad2d04
    # Line 544
    li	$a2,4
.L0dad2cf8:
    # ld	gp,48(sp)
    # Line 557
    jr	$ra
    addiu	$sp,$sp,80
.L0dad2d04:
    # Line 544
    addiu	$a1,$sp,0
    # Line 543
    sw	$a5,12($sp)
    # Line 542
    sw	$a7,8($sp)
    # Line 544
    # lw $t9, -27776($gp) # &__glDoPolygonClip
    # Line 541
    sw	$a6,4($sp)
    sd	$ra,56($sp)
    # Line 544
    bal __glDoPolygonClip
    # Line 540
    sw	$t2,0($sp)
    b	.L0dad2cf8
    ld	$ra,56($sp)
.L0dad2d2c:
    sd	$a5,40($sp)
    sd	$a6,16($sp)
    sd	$a0,24($sp)
    sd	$a7,32($sp)
    # Line 550
    sb	$zero,184($a6)
    move	$a3,$a6
    # Line 551
    lw	$t9,12080($a0)
    move	$a2,$t2
    sd	$ra,56($sp)
    jal	__glDoPolygonClip
    move	$a1,$a5
    ld	$a1,40($sp)
    # Line 553
    ld	$a2,16($sp)
    li	$a0,1
    # Line 552
    sb	$zero,184($a1)
    # Line 553
    sb	$a0,184($a2)
    # Line 554
    ld	$a0,24($sp)
    lw	$t9,12080($a0)
    jalr	$t9
    ld	$a3,32($sp)
    ld	$ra,40($sp)
    li	$a4,1
    # Line 555
    sb	$a4,184($ra)
    b	.L0dad2cf8
    ld	$ra,56($sp)
.end FourthQStripVertex

# Function: ThirdQStripVertex
# Declared: Line 559 (Source lines: 560-566)
# Address: 0x0dad2d90 - 0x0dad2dc8 (Size: 56 bytes, Frame: 0)
.ent ThirdQStripVertex
ThirdQStripVertex:
    # Line 561
    li	$a3,1
    sb	$a3,184($a1)
    # Line 563
    sw	$a1,12700($a0)
    # Line 562
    addiu	$a1,$a1,192
    # Line 560
    lui	$a2,0x12
    addiu	$a2,$a2,19160
    # addu	at,t9,a2
    # Line 565
    la	$v1,__glMatValidateV1V2V3
    # Line 564
    la	$v0,sub_0dad0000
    # Line 562
    sw	$a1,12696($a0)
    # Line 565
    sw	$v1,12028($a0)
    # Line 564
    addiu	$v0,$v0,11376
    # Line 566
    jr	$ra
    # Line 564
    sw	$v0,11956($a0)
.end ThirdQStripVertex

# Function: SecondQStripVertex
# Declared: Line 568 (Source lines: 569-574)
# Address: 0x0dad2dc8 - 0x0dad2df8 (Size: 48 bytes, Frame: 0)
.ent SecondQStripVertex
SecondQStripVertex:
    # Line 571
    addiu	$v1,$a1,192
    # Line 570
    li	$a3,1
    sb	$a3,184($a1)
    # Line 569
    lui	$a2,0x12
    addiu	$a2,$a2,19104
    # addu	at,t9,a2
    # Line 573
    la	$v0,sub_0dad0000
    # Line 572
    sw	$a1,12704($a0)
    # Line 571
    sw	$v1,12696($a0)
    # Line 573
    addiu	$v0,$v0,11664
    # Line 574
    jr	$ra
    # Line 573
    sw	$v0,11956($a0)
.end SecondQStripVertex

# Function: FirstQStripVertex
# Declared: Line 576 (Source lines: 577-582)
# Address: 0x0dad2df8 - 0x0dad2e28 (Size: 48 bytes, Frame: 0)
.ent FirstQStripVertex
FirstQStripVertex:
    # Line 579
    addiu	$v1,$a1,192
    # Line 578
    li	$a3,1
    sb	$a3,184($a1)
    # Line 577
    lui	$a2,0x12
    addiu	$a2,$a2,19056
    # addu	at,t9,a2
    # Line 581
    la	$v0,sub_0dad0000
    # Line 580
    sw	$a1,12708($a0)
    # Line 579
    sw	$v1,12696($a0)
    # Line 581
    addiu	$v0,$v0,11720
    # Line 582
    jr	$ra
    # Line 581
    sw	$v0,11956($a0)
.end FirstQStripVertex

# Function: __glBeginQStrip
# Declared: Line 584 (Source lines: 585-590)
# Address: 0x0dad2e28 - 0x0dad2e5c (Size: 52 bytes, Frame: 0)
.globl __glBeginQStrip
.ent __glBeginQStrip
__glBeginQStrip:
    # Line 586
    addiu	$a1,$a0,12720
    # Line 589
    li	$v0,1
    sb	$v0,30526($a0)
    # Line 585
    lui	$a2,0x12
    addiu	$a2,$a2,19008
    # addu	at,t9,a2
    # Line 588
    la	$v1,__glMatValidateVbuf0N
    # Line 587
    la	$v0,sub_0dad0000
    # Line 586
    sw	$a1,12696($a0)
    # Line 588
    sw	$v1,12028($a0)
    # Line 587
    addiu	$v0,$v0,11768
    # Line 590
    jr	$ra
    # Line 587
    sw	$v0,11956($a0)
.end __glBeginQStrip

# Function: ThirdQuadsVertex
# Declared: Line 650 (Source lines: 651-655)
# Address: 0x0dad2e5c - 0x0dad2e84 (Size: 40 bytes, Frame: 0)
.ent ThirdQuadsVertex
ThirdQuadsVertex:
    # Line 652
    lbu	$a2,429($a0)
    # Line 653
    addiu	$v1,$a1,192
    # Line 652
    sb	$a2,184($a1)
    # Line 651
    lui	$a3,0x12
    addiu	$a3,$a3,18956
    # addu	at,t9,a3
    # Line 654
    la	$v0,__glFourthQuadsVertex
    # Line 653
    sw	$v1,12696($a0)
    # Line 655
    jr	$ra
    # Line 654
    sw	$v0,11956($a0)
.end ThirdQuadsVertex

# Function: SecondQuadsVertex
# Declared: Line 657 (Source lines: 658-662)
# Address: 0x0dad2e84 - 0x0dad2eb0 (Size: 44 bytes, Frame: 0)
.ent SecondQuadsVertex
SecondQuadsVertex:
    # Line 660
    addiu	$v1,$a1,192
    # Line 659
    lbu	$a2,429($a0)
    # Line 658
    lui	$a3,0x12
    addiu	$a3,$a3,18916
    # addu	at,t9,a3
    # Line 661
    la	$v0,sub_0dad0000
    # Line 659
    sb	$a2,184($a1)
    # Line 660
    sw	$v1,12696($a0)
    # Line 661
    addiu	$v0,$v0,11868
    # Line 662
    jr	$ra
    # Line 661
    sw	$v0,11956($a0)
.end SecondQuadsVertex

# Function: __glFirstQuadsVertex
# Declared: Line 664 (Source lines: 665-669)
# Address: 0x0dad2eb0 - 0x0dad2edc (Size: 44 bytes, Frame: 0)
.globl __glFirstQuadsVertex
.ent __glFirstQuadsVertex
__glFirstQuadsVertex:
    # Line 667
    addiu	$v1,$a1,192
    # Line 666
    lbu	$a2,429($a0)
    # Line 665
    lui	$a3,0x12
    addiu	$a3,$a3,18872
    # addu	at,t9,a3
    # Line 668
    la	$v0,sub_0dad0000
    # Line 666
    sb	$a2,184($a1)
    # Line 667
    sw	$v1,12696($a0)
    # Line 668
    addiu	$v0,$v0,11908
    # Line 669
    jr	$ra
    # Line 668
    sw	$v0,11956($a0)
.end __glFirstQuadsVertex

# Function: __glBeginQuads
# Declared: Line 671 (Source lines: 672-676)
# Address: 0x0dad2edc - 0x0dad2f04 (Size: 40 bytes, Frame: 0)
.globl __glBeginQuads
.ent __glBeginQuads
__glBeginQuads:
    # Line 673
    addiu	$a1,$a0,12720
    # Line 672
    lui	$a2,0x12
    addiu	$a2,$a2,18828
    # addu	at,t9,a2
    # Line 675
    la	$v1,__glMatValidateVbuf0N
    # Line 673
    sw	$a1,12696($a0)
    # Line 674
    la	$v0,__glFirstQuadsVertex
    # Line 675
    sw	$v1,12028($a0)
    # Line 676
    jr	$ra
    # Line 674
    sw	$v0,11956($a0)
.end __glBeginQuads

# Function: PolygonVertex
# Declared: Line 680 (Source lines: 681-726)
# Address: 0x0dad2f04 - 0x0dad3000 (Size: 252 bytes, Frame: 192)
.ent PolygonVertex
PolygonVertex:
    # Line 682
    addiu	$at,$a0,27888
    # Line 681
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    # sd	gp,24(sp)
    lui	$v1,0x12
    addiu	$v1,$v1,18788
    # Line 682
    lbu	$v0,429($a0)
    # Line 681
    # addu	gp,t9,v1
    # Line 682
    bne	$at,$a1,.L0dad2fe4
    sb	$v0,184($a1)
    # Line 696
    li	$a2,79
    # Line 686
    lbu	$a0,-8($s1)
    # Line 695
    sb	$zero,-8($s1)
    # Line 696
    addiu	$a1,$s0,12720
    lw	$t9,12100($s0)
    sd	$ra,32($sp)
    sd	$a0,0($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 706
    li	$a1,48
    move	$a0,$zero
    addiu	$a4,$s0,12912
    # Line 697
    ld	$a2,0($sp)
    # Line 706
    addiu	$a3,$s1,-192
    ld	$ra,32($sp)
    # Line 697
    sb	$a2,-8($s1)
.L0dad2f78:
    # Line 706
    addu	$v0,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0dad2f78
    sw	$at,0($v0)
    # Line 707
    li	$a1,48
    move	$a0,$zero
    addiu	$a3,$s0,13104
    move	$a4,$s1
    ld	$s1,16($sp)
.L0dad2fa8:
    addu	$v1,$a0,$a3
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0dad2fa8
    sw	$v0,0($v1)
    # Line 716
    addiu	$at,$s0,13248
    # Line 722
    sb	$zero,12904($s0)
    # Line 716
    sw	$at,13108($s0)
    # Line 708
    addiu	$v1,$s0,13296
    # Line 715
    addiu	$a2,$s0,13056
    sw	$a2,12916($s0)
    # Line 722
    b	.L0dad2ff0
    # Line 708
    sw	$v1,12696($s0)
.L0dad2fe4:
    # Line 724
    addiu	$v0,$s1,192
    ld	$s1,16($sp)
    sw	$v0,12696($s0)
.L0dad2ff0:
    # ld	gp,24(sp)
    # Line 726
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end PolygonVertex

# Function: __glEndPolygon
# Declared: Line 728 (Source lines: 729-744)
# Address: 0x0dad3000 - 0x0dad307c (Size: 124 bytes, Frame: 48)
.globl __glEndPolygon
.ent __glEndPolygon
__glEndPolygon:
    # Line 729
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 730
    lw	$a0,12696($a0)
    li	$v1,192
    subu	$a0,$a0,$s0
    addiu	$a0,$a0,-12720
    div	$zero,$a0,$v1
    teq	$v1,$zero,0x7
    # sd	gp,0(sp)
    # Line 729
    lui	$v0,0x12
    addiu	$v0,$v0,18536
    # Line 730
    mflo	$a2
    slti	$at,$a2,3
    beqz	$at,.L0dad3060
    # Line 729
    nop
.L0dad3040:
    # Line 743
    la	$at,__glEndPrim
    # Line 742
    la	$a1,__glNop
    # ld	gp,0(sp)
    # Line 743
    sw	$at,12076($s0)
    # Line 742
    sw	$a1,11956($s0)
    # Line 744
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dad3060:
    # Line 740
    lw	$t9,12100($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$s0,12720
    b	.L0dad3040
    ld	$ra,16($sp)
.end __glEndPolygon

# Function: __glBeginPolygon
# Declared: Line 746 (Source lines: 747-762)
# Address: 0x0dad307c - 0x0dad30b4 (Size: 56 bytes, Frame: 0)
.globl __glBeginPolygon
.ent __glBeginPolygon
__glBeginPolygon:
    # Line 748
    sb	$zero,29852($a0)
    # Line 750
    addiu	$v0,$a0,12720
    sw	$v0,12696($a0)
    # Line 747
    lui	$a2,0x12
    addiu	$a2,$a2,18412
    # addu	at,t9,a2
    # Line 761
    la	$a1,__glMatValidateVbuf0N
    # Line 752
    la	$v1,__glEndPolygon
    # Line 751
    la	$v0,sub_0dad0000
    # Line 761
    sw	$a1,12028($a0)
    # Line 752
    sw	$v1,12076($a0)
    # Line 751
    addiu	$v0,$v0,12036
    # Line 762
    jr	$ra
    # Line 751
    sw	$v0,11956($a0)
.end __glBeginPolygon

