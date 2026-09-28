# Source: ../soft/so_colortable.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_colortable.c
# Total Functions: 16

.text

# Function: __glCheckColorTableArgs
# Declared: Line 33 (Source lines: 36-159)
# Address: 0x0daa0bb4 - 0x0daa1274 (Size: 1728 bytes, Frame: 224)
.globl __glCheckColorTableArgs
.ent __glCheckColorTableArgs
__glCheckColorTableArgs:
    # Line 36
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    move	$s0,$a3
    # sd	gp,16(sp)
    lui	$a0,0xffff
    ori	$a0,$a0,0x7f44
    addu	$a0,$a1,$a0
    lui	$a1,0x15
    addiu	$a1,$a1,27828
    # addu	gp,t9,a1
    la	$a1,sub_0dbf0000
    sltiu	$at,$a0,26
    sll	$a0,$a0,0x2
    lui	$a1,%hi(jtbl_0dbeb4d0)
    beqz	$at,.L0daa0c64
    addu	$a0,$a0,$a1
    lw	$a1,%lo(jtbl_0dbeb4d0)($a0)
    # Line 49
    li	$a0,0x8049
    # Line 51
    sltu	$v0,$a0,$a2
    # Line 36
    jr	$a1
    # Line 49
    sltu	$at,$a2,$a0
.L0daa0c08:
    bnez	$at,.L0daa0c78
    # Line 51
    li	$a0,0x8053
    beqz	$v0,.L0daa0c90
    sltu	$a1,$a0,$a2
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daa0e38
    li	$a0,0x804e
    beqz	$a1,.L0daa0c90
    li	$a0,0x8058
    sltu	$at,$a2,$a0
    bnez	$at,.L0daa0fc4
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0daa0c90
    li	$a0,0x805a
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daa11c4
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0daa0c90
    li	$at,0x805b
    beql	$a2,$at,.L0daa0c94
    sd	$a4,0($sp)
    b	.L0daa0df0
    # Line 97
    li	$v0,1280
.L0daa0c64:
    # Line 48
    li	$v0,1280
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa0c78:
    # Line 51
    li	$a0,0x803f
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa0d88
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daa0e00
    li	$a0,0x8044
.L0daa0c90:
    sd	$a4,0($sp)
.L0daa0c94:
    # Line 98
    bltz	$s0,.L0daa0dc0
    sd	$a5,8($sp)
    # Line 110
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    sd	$ra,32($sp)
    jal	__glElementsPerGroup
    move	$a0,$a2
    sll	$a6,$v0,0x2
    li	$ra,0x8000
    divu	$zero,$ra,$a6
    teq	$a6,$zero,0x7
    mflo	$a1
    sltu	$a1,$a1,$s0
    bnez	$a1,.L0daa0d24
    ld	$ra,32($sp)
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    ld	$a0,0($sp)
    sll	$v0,$v0,0x2
    li	$v1,0x8000
    divu	$zero,$v1,$v0
    ld	$ra,32($sp)
    mflo	$at
    sltu	$at,$at,$s0
    bnez	$at,.L0daa0d24
    teq	$v0,$zero,0x7
    beqz	$s0,.L0daa0d44
    ld	$at,0($sp)
.L0daa0d00:
    andi	$a1,$s0,0x1
    beqz	$a1,.L0daa0d38
    sra	$a2,$s0,0x1
    beqz	$a2,.L0daa0d38
    # Line 121
    li	$v0,1281
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa0d24:
    # Line 114
    li	$v0,0x8031
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa0d38:
    # Line 119
    bnez	$a2,.L0daa0d00
    move	$s0,$a2
    ld	$at,0($sp)
.L0daa0d44:
    sltiu	$at,$at,6407
    bnez	$at,.L0daa0edc
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6408
    bnez	$v0,.L0daa0ef4
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6410
    bnez	$v1,.L0daa11f0
    ld	$a1,0($sp)
    sltiu	$a1,$a1,6411
    bnez	$a1,.L0daa0ef4
    ld	$v0,0($sp)
    li	$at,0x8000
    beq	$at,$v0,.L0daa0ef8
    ld	$v1,8($sp)
    b	.L0daa1128
    # Line 138
    li	$v0,1280
.L0daa0d88:
    # Line 51
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0daa0dd4
    sltiu	$a1,$a2,6411
    bnez	$a1,.L0daa0c90
    li	$a0,0x803d
    sltu	$at,$a2,$a0
    bnez	$at,.L0daa0f64
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0daa0c90
    li	$v1,0x803e
    bne	$a2,$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0dc0:
    # Line 102
    li	$v0,1281
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa0dd4:
    # Line 51
    sltiu	$a1,$a2,6408
    bnez	$a1,.L0daa0e70
    sltiu	$at,$a2,6409
    bnez	$at,.L0daa0c90
    li	$v0,6409
    beq	$a2,$v0,.L0daa0c90
    # Line 97
    li	$v0,1280
.L0daa0df0:
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa0e00:
    # Line 51
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daa0e8c
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0daa0c90
    li	$a0,0x8047
    sltu	$at,$a2,$a0
    bnez	$at,.L0daa1080
    sltu	$v0,$a0,$a2
    beqz	$v0,.L0daa0c90
    li	$v1,0x8048
    bne	$a2,$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0e38:
    # Line 51
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daa0eb4
    sltu	$at,$a0,$a2
    beqz	$at,.L0daa0c90
    li	$a0,0x8051
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa10b4
    sltu	$v1,$a0,$a2
    beqz	$v1,.L0daa0c90
    li	$a1,0x8052
    bne	$a2,$a1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0e70:
    # Line 51
    sltiu	$at,$a2,6407
    bnez	$at,.L0daa0f50
    sltiu	$v0,$a2,6408
    beqz	$v0,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0e8c:
    # Line 51
    li	$a0,0x8042
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daa0f84
    sltu	$a1,$a0,$a2
    beqz	$a1,.L0daa0c90
    li	$at,0x8043
    bne	$a2,$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0eb4:
    # Line 51
    li	$a0,0x804c
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa0fa4
    sltu	$v1,$a0,$a2
    beqz	$v1,.L0daa0c90
    li	$a1,0x804d
    bne	$a2,$a1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0edc:
    ld	$at,0($sp)
    # Line 126
    sltiu	$at,$at,6405
    bnez	$at,.L0daa10f4
    ld	$v0,0($sp)
    sltiu	$v0,$v0,6406
    beqz	$v0,.L0daa11d8
.L0daa0ef4:
    ld	$v1,8($sp)
.L0daa0ef8:
    # Line 139
    sltiu	$v1,$v1,5126
    bnez	$v1,.L0daa0fec
    ld	$a1,8($sp)
    # Line 141
    sltiu	$a1,$a1,5127
    bnez	$a1,.L0daa1044
    ld	$at,8($sp)
    li	$a0,0x8034
    sltu	$at,$at,$a0
    bnez	$at,.L0daa1028
    ld	$v0,8($sp)
    sltu	$v0,$a0,$v0
    beqz	$v0,.L0daa1044
    ld	$v1,8($sp)
    li	$a0,0x8036
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0daa125c
    ld	$a1,8($sp)
    sltu	$a1,$a0,$a1
    bnez	$a1,.L0daa1178
    # Line 156
    li	$v0,1280
    b	.L0daa1048
    # Line 159
    move	$v0,$zero
.L0daa0f50:
    # Line 51
    li	$at,6406
    bne	$a2,$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0f64:
    # Line 51
    li	$a0,0x803c
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa1058
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0f84:
    # Line 51
    li	$a0,0x8041
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daa106c
    sltu	$at,$a0,$a2
    bnez	$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0fa4:
    # Line 51
    li	$a0,0x804b
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa10a0
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0fc4:
    # Line 51
    li	$a0,0x8056
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daa10d4
    sltu	$at,$a0,$a2
    beqz	$at,.L0daa0c90
    li	$v0,0x8057
    bne	$a2,$v0,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa0fec:
    ld	$v1,8($sp)
    # Line 141
    sltiu	$v1,$v1,5123
    bnez	$v1,.L0daa1138
    ld	$a1,8($sp)
    sltiu	$a1,$a1,5124
    bnez	$a1,.L0daa1044
    ld	$at,8($sp)
    sltiu	$at,$at,5125
    bnez	$at,.L0daa1214
    ld	$v0,8($sp)
    sltiu	$v0,$v0,5126
    beqz	$v0,.L0daa1178
    # Line 156
    li	$v0,1280
    b	.L0daa1048
    # Line 159
    move	$v0,$zero
.L0daa1028:
    # Line 141
    ld	$v1,8($sp)
    li	$a0,0x8033
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0daa122c
    ld	$a1,8($sp)
    sltu	$a1,$a0,$a1
    bnez	$a1,.L0daa1174
.L0daa1044:
    # Line 159
    move	$v0,$zero
.L0daa1048:
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa1058:
    # Line 51
    li	$at,0x803b
    bne	$a2,$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa106c:
    # Line 51
    li	$v0,0x8040
    bne	$a2,$v0,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa1080:
    # Line 51
    li	$a0,0x8046
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0daa1188
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa10a0:
    # Line 51
    li	$at,0x804a
    bne	$a2,$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa10b4:
    # Line 51
    li	$a0,0x8050
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0daa119c
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa10d4:
    # Line 51
    li	$a0,0x8055
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0daa11b0
    sltu	$at,$a0,$a2
    bnez	$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa10f4:
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6404
    bnez	$v0,.L0daa1118
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6405
    beqz	$v1,.L0daa1128
    # Line 138
    li	$v0,1280
    b	.L0daa0ef8
    ld	$v1,8($sp)
.L0daa1118:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6403
    beq	$a1,$at,.L0daa0ef4
    # Line 138
    li	$v0,1280
.L0daa1128:
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa1138:
    ld	$v0,8($sp)
    # Line 141
    sltiu	$v0,$v0,5121
    bnez	$v0,.L0daa1168
    ld	$v1,8($sp)
    sltiu	$v1,$v1,5122
    bnez	$v1,.L0daa1044
    ld	$a1,8($sp)
    li	$at,5122
    bne	$a1,$at,.L0daa1178
    # Line 156
    li	$v0,1280
    b	.L0daa1048
    # Line 159
    move	$v0,$zero
.L0daa1168:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,5120
    beq	$v0,$v1,.L0daa1044
.L0daa1174:
    # Line 156
    li	$v0,1280
.L0daa1178:
    # ld	gp,16(sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa1188:
    # Line 51
    li	$a1,0x8045
    bne	$a2,$a1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa119c:
    # Line 51
    li	$at,0x804f
    bne	$a2,$at,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa11b0:
    # Line 51
    li	$v0,0x8054
    bne	$a2,$v0,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa11c4:
    # Line 51
    li	$v1,0x8059
    bne	$a2,$v1,.L0daa0df0
    # Line 97
    li	$v0,1280
    b	.L0daa0c94
    sd	$a4,0($sp)
.L0daa11d8:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6406
    bne	$a1,$at,.L0daa1128
    # Line 138
    li	$v0,1280
    b	.L0daa0ef8
    ld	$v1,8($sp)
.L0daa11f0:
    ld	$v0,0($sp)
    # Line 126
    sltiu	$v0,$v0,6409
    bnez	$v0,.L0daa1244
    ld	$v1,0($sp)
    sltiu	$v1,$v1,6410
    beqz	$v1,.L0daa1128
    # Line 138
    li	$v0,1280
    b	.L0daa0ef8
    ld	$v1,8($sp)
.L0daa1214:
    # Line 141
    ld	$a1,8($sp)
    li	$at,5124
    bne	$a1,$at,.L0daa1178
    # Line 156
    li	$v0,1280
    b	.L0daa1048
    # Line 159
    move	$v0,$zero
.L0daa122c:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,0x8032
    bne	$v0,$v1,.L0daa1178
    # Line 156
    li	$v0,1280
    b	.L0daa1048
    # Line 159
    move	$v0,$zero
.L0daa1244:
    # Line 126
    ld	$a1,0($sp)
    li	$at,6408
    bne	$a1,$at,.L0daa1128
    # Line 138
    li	$v0,1280
    b	.L0daa0ef8
    ld	$v1,8($sp)
.L0daa125c:
    # Line 141
    ld	$v0,8($sp)
    li	$v1,0x8035
    beq	$v0,$v1,.L0daa1048
    # Line 159
    move	$v0,$zero
    b	.L0daa1178
    # Line 156
    li	$v0,1280
.end __glCheckColorTableArgs

# Function: __glLoadColorTableParams
# Declared: Line 165 (Source lines: 168-270)
# Address: 0x0daa1274 - 0x0daa16e8 (Size: 1140 bytes, Frame: 0)
.globl __glLoadColorTableParams
.ent __glLoadColorTableParams
__glLoadColorTableParams:
    # Line 169
    sw	$a2,8($a0)
    # Line 170
    sw	$a3,12($a0)
    li	$a5,0x8049
    sltu	$at,$a2,$a5
    bnez	$at,.L0daa12dc
    # Line 168
    sw	$a1,0($a0)
    # Line 172
    sltu	$v0,$a5,$a2
    beqz	$v0,.L0daa1338
    li	$a3,0x8053
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0daa145c
    sltu	$a1,$a3,$a2
    bnez	$a1,.L0daa14d4
    li	$a3,0x8058
.L0daa12ac:
    # Line 244
    sw	$zero,36($a0)
.L0daa12b0:
    # Line 243
    sw	$zero,32($a0)
    # Line 242
    sw	$zero,28($a0)
    # Line 239
    li	$at,24
    # Line 245
    li	$v0,6407
    # Line 246
    li	$v1,3
    sw	$v1,76($a0)
    # Line 245
    sw	$v0,72($a0)
    # Line 241
    sw	$at,24($a0)
    # Line 240
    sw	$at,20($a0)
    # Line 270
    jr	$ra
    # Line 239
    sw	$at,16($a0)
.L0daa12dc:
    # Line 172
    li	$a3,0x803f
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa1368
    sltu	$at,$a3,$a2
    bnez	$at,.L0daa13bc
    li	$a3,6409
.L0daa12f4:
    # Line 198
    sw	$a3,72($a0)
.L0daa12f8:
    # Line 197
    sw	$zero,36($a0)
    # Line 195
    sw	$zero,28($a0)
    # Line 194
    sw	$zero,24($a0)
    # Line 193
    sw	$zero,20($a0)
    # Line 192
    sw	$zero,16($a0)
    # Line 196
    li	$v0,24
    # Line 199
    li	$v1,1
    sw	$v1,76($a0)
    # Line 270
    jr	$ra
    # Line 196
    sw	$v0,32($a0)
.L0daa1320:
    # Line 172
    li	$a3,0x804c
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa1570
    sltu	$at,$a3,$a2
    bnez	$at,.L0daa1638
    li	$a1,0x804d
.L0daa1338:
    # Line 228
    sw	$a5,72($a0)
.L0daa133c:
    # Line 226
    sw	$zero,32($a0)
    # Line 225
    sw	$zero,28($a0)
    # Line 224
    sw	$zero,24($a0)
    # Line 223
    sw	$zero,20($a0)
    # Line 222
    sw	$zero,16($a0)
    # Line 227
    li	$v0,24
    # Line 229
    li	$v1,1
    sw	$v1,76($a0)
    # Line 227
    sw	$v0,36($a0)
.L0daa1360:
    # Line 270
    jr	$ra
    nop
.L0daa1368:
    # Line 172
    sltiu	$a1,$a2,6410
    bnez	$a1,.L0daa1418
    sltiu	$at,$a2,6411
    bnez	$at,.L0daa13e8
    li	$a3,0x803d
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0daa1530
    sltu	$v1,$a3,$a2
    bnez	$v1,.L0daa15cc
    li	$a3,6406
.L0daa1390:
    # Line 184
    sw	$a3,72($a0)
.L0daa1394:
    # Line 183
    sw	$zero,36($a0)
    # Line 182
    sw	$zero,32($a0)
    # Line 180
    sw	$zero,24($a0)
    # Line 179
    sw	$zero,20($a0)
    # Line 178
    sw	$zero,16($a0)
    # Line 185
    li	$at,1
    sw	$at,76($a0)
    # Line 181
    li	$a1,24
    # Line 270
    jr	$ra
    # Line 181
    sw	$a1,28($a0)
.L0daa13bc:
    # Line 172
    li	$a3,0x8044
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0daa14b4
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0daa13e8
    li	$a3,0x8047
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa1604
    sltu	$at,$a3,$a2
    bnez	$at,.L0daa169c
    li	$v0,0x8048
.L0daa13e8:
    # Line 213
    sw	$zero,36($a0)
.L0daa13ec:
    # Line 210
    sw	$zero,24($a0)
    # Line 209
    sw	$zero,20($a0)
    # Line 208
    sw	$zero,16($a0)
    # Line 211
    li	$v0,24
    # Line 214
    li	$v1,6410
    # Line 215
    li	$a1,2
    sw	$a1,76($a0)
    # Line 214
    sw	$v1,72($a0)
    # Line 212
    sw	$v0,32($a0)
    # Line 270
    jr	$ra
    # Line 211
    sw	$v0,28($a0)
.L0daa1418:
    # Line 172
    sltiu	$at,$a2,6408
    bnez	$at,.L0daa1498
    sltiu	$v0,$a2,6409
    beqz	$v0,.L0daa1520
    li	$a3,6409
.L0daa142c:
    # Line 261
    sw	$zero,36($a0)
.L0daa1430:
    # Line 260
    sw	$zero,32($a0)
    # Line 256
    li	$v1,24
    # Line 262
    li	$a1,6408
    # Line 263
    li	$at,4
    sw	$at,76($a0)
    # Line 262
    sw	$a1,72($a0)
    # Line 259
    sw	$v1,28($a0)
    # Line 258
    sw	$v1,24($a0)
    # Line 257
    sw	$v1,20($a0)
    # Line 270
    jr	$ra
    # Line 256
    sw	$v1,16($a0)
.L0daa145c:
    # Line 172
    li	$a3,0x804e
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0daa1320
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0daa12ac
    li	$a3,0x8051
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa1648
    sltu	$at,$a3,$a2
    beqz	$at,.L0daa12ac
    li	$v0,0x8052
    bne	$a2,$v0,.L0daa1360
    nop
    b	.L0daa12b0
    # Line 244
    sw	$zero,36($a0)
.L0daa1498:
    # Line 172
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0daa150c
    sltiu	$a1,$a2,6408
    beqz	$a1,.L0daa1360
    nop
    b	.L0daa12b0
    # Line 244
    sw	$zero,36($a0)
.L0daa14b4:
    # Line 172
    li	$a3,0x8042
    sltu	$at,$a2,$a3
    bnez	$at,.L0daa1550
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0daa15f4
    li	$a1,0x8043
    b	.L0daa12f4
    li	$a3,6409
.L0daa14d4:
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0daa1590
    sltu	$a1,$a3,$a2
    beqz	$a1,.L0daa142c
    li	$a3,0x805a
    sltu	$at,$a2,$a3
    bnez	$at,.L0daa16d4
    sltu	$v0,$a3,$a2
    beqz	$v0,.L0daa142c
    li	$v1,0x805b
    bne	$a2,$v1,.L0daa1360
    nop
    b	.L0daa1430
    # Line 261
    sw	$zero,36($a0)
.L0daa150c:
    # Line 172
    li	$a3,6406
    bne	$a3,$a2,.L0daa1360
    nop
    b	.L0daa1394
    # Line 184
    sw	$a3,72($a0)
.L0daa1520:
    # Line 172
    bne	$a3,$a2,.L0daa1360
    nop
    b	.L0daa12f8
    # Line 198
    sw	$a3,72($a0)
.L0daa1530:
    # Line 172
    li	$a3,0x803c
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa15b8
    sltu	$at,$a3,$a2
    bnez	$at,.L0daa1360
    nop
    b	.L0daa1390
    li	$a3,6406
.L0daa1550:
    li	$a3,0x8041
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0daa15e0
    sltu	$v1,$a3,$a2
    bnez	$v1,.L0daa1360
    nop
    b	.L0daa12f4
    li	$a3,6409
.L0daa1570:
    li	$a3,0x804b
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0daa1624
    sltu	$at,$a3,$a2
    bnez	$at,.L0daa1360
    nop
    b	.L0daa133c
    # Line 228
    sw	$a5,72($a0)
.L0daa1590:
    # Line 172
    li	$a3,0x8056
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0daa1668
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0daa142c
    li	$a1,0x8057
    bne	$a2,$a1,.L0daa1360
    nop
    b	.L0daa1430
    # Line 261
    sw	$zero,36($a0)
.L0daa15b8:
    # Line 172
    li	$at,0x803b
    bne	$a2,$at,.L0daa1360
    nop
    b	.L0daa1390
    li	$a3,6406
.L0daa15cc:
    li	$v0,0x803e
    bne	$a2,$v0,.L0daa1360
    nop
    b	.L0daa1390
    li	$a3,6406
.L0daa15e0:
    li	$v1,0x8040
    bne	$a2,$v1,.L0daa1360
    nop
    b	.L0daa12f4
    li	$a3,6409
.L0daa15f4:
    bne	$a2,$a1,.L0daa1360
    nop
    b	.L0daa13ec
    # Line 213
    sw	$zero,36($a0)
.L0daa1604:
    # Line 172
    li	$a3,0x8046
    sltu	$at,$a2,$a3
    bnez	$at,.L0daa1688
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0daa1360
    nop
    b	.L0daa13ec
    # Line 213
    sw	$zero,36($a0)
.L0daa1624:
    # Line 172
    li	$v1,0x804a
    bne	$a2,$v1,.L0daa1360
    nop
    b	.L0daa133c
    # Line 228
    sw	$a5,72($a0)
.L0daa1638:
    # Line 172
    bne	$a2,$a1,.L0daa1360
    nop
    b	.L0daa133c
    # Line 228
    sw	$a5,72($a0)
.L0daa1648:
    # Line 172
    li	$a3,0x8050
    sltu	$at,$a2,$a3
    bnez	$at,.L0daa16ac
    sltu	$v0,$a3,$a2
    bnez	$v0,.L0daa1360
    nop
    b	.L0daa12b0
    # Line 244
    sw	$zero,36($a0)
.L0daa1668:
    # Line 172
    li	$a3,0x8055
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0daa16c0
    sltu	$a1,$a3,$a2
    bnez	$a1,.L0daa1360
    nop
    b	.L0daa1430
    # Line 261
    sw	$zero,36($a0)
.L0daa1688:
    # Line 172
    li	$at,0x8045
    bne	$a2,$at,.L0daa1360
    nop
    b	.L0daa13ec
    # Line 213
    sw	$zero,36($a0)
.L0daa169c:
    # Line 172
    bne	$a2,$v0,.L0daa1360
    nop
    b	.L0daa13ec
    # Line 213
    sw	$zero,36($a0)
.L0daa16ac:
    # Line 172
    li	$v1,0x804f
    bne	$a2,$v1,.L0daa1360
    nop
    b	.L0daa12b0
    # Line 244
    sw	$zero,36($a0)
.L0daa16c0:
    # Line 172
    li	$a1,0x8054
    bne	$a2,$a1,.L0daa1360
    nop
    b	.L0daa12b0
    # Line 244
    sw	$zero,36($a0)
.L0daa16d4:
    # Line 172
    li	$at,0x8059
    bne	$a2,$at,.L0daa1360
    nop
    b	.L0daa1430
    # Line 261
    sw	$zero,36($a0)
.end __glLoadColorTableParams

# Function: __glColorTableSGI
# Declared: Line 277 (Source lines: 280-373)
# Address: 0x0daa16e8 - 0x0daa1a64 (Size: 892 bytes, Frame: 192)
.globl __glColorTableSGI
.ent __glColorTableSGI
__glColorTableSGI:
    # Line 283
    move	$t1,$zero
    # Line 280
    addiu	$sp,$sp,-704
    sd	$s2,624($sp)
    # Line 282
    move	$s2,$zero
    sd	$s3,616($sp)
    # Line 280
    move	$s3,$a3
    sd	$s1,608($sp)
    move	$s1,$a2
    # Line 283
    lui	$t2,0xffff
    ori	$t2,$t2,0x7f44
    addu	$t2,$a1,$t2
    sd	$gp,600($sp)
    # Line 280
    lui	$at,0x15
    addiu	$at,$at,24960
    addu	$gp,$t9,$at
    # Line 283
    # lw $t9, -32664($gp) # &sub_0dbf0000
    sltiu	$at,$t2,26
    sll	$t2,$t2,0x2
    lui	$t9,%hi(jtbl_0dbeb538)
    beqz	$at,.L0daa1748
    addu	$t2,$t2,$t9
    lw	$at,%lo(jtbl_0dbeb538)($t2)
    jr	$at
    sd	$s0,536($sp)
.L0daa1748:
    sd	$s0,536($sp)
    # Line 317
    lw	$s0,16($sp)
.L0daa1750:
    sd	$a0,544($sp)
    sd	$a1,552($sp)
    sd	$t1,560($sp)
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    # Line 318
    beqz	$s1,.L0daa17f0
    sd	$a4,592($sp)
.L0daa1770:
    # Line 333
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    sd	$ra,632($sp)
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    lw	$v1,12($s0)
    mult	$v1,$v0
    # Line 335
    move	$a3,$s3
    move	$a2,$s1
    ld	$a1,552($sp)
    # lw $t9, -29080($gp) # &__glLoadColorTableParams
    move	$a0,$s0
    # Line 333
    mflo	$v0
    # Line 335
    bal __glLoadColorTableParams
    sd	$v0,528($sp)
    beqz	$s2,.L0daa182c
    ld	$ra,632($sp)
.L0daa17b0:
    ld	$gp,600($sp)
    # Line 373
    ld	$s0,536($sp)
    ld	$s1,608($sp)
    ld	$s2,624($sp)
    ld	$s3,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daa17cc:
    sd	$a0,544($sp)
    sd	$a1,552($sp)
    sd	$t1,560($sp)
    sd	$a7,568($sp)
    sd	$a6,576($sp)
    sd	$a5,584($sp)
    sd	$a4,592($sp)
    # Line 318
    bnez	$s1,.L0daa1770
    # Line 291
    addiu	$s0,$a0,4892
.L0daa17f0:
    ld	$gp,600($sp)
    # Line 329
    sw	$zero,36($s0)
    # Line 328
    sw	$zero,32($s0)
    # Line 327
    sw	$zero,28($s0)
    # Line 326
    sw	$zero,24($s0)
    # Line 325
    sw	$zero,20($s0)
    # Line 324
    sw	$zero,16($s0)
    # Line 323
    sw	$zero,12($s0)
    # Line 322
    sw	$zero,8($s0)
    # Line 330
    ld	$s0,536($sp)
    ld	$s1,608($sp)
    ld	$s2,624($sp)
    ld	$s3,616($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0daa182c:
    # Line 340
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    mult	$v0,$s3
    ld	$t0,528($sp)
    mflo	$t1
    slt	$t0,$t0,$t1
    bnez	$t0,.L0daa1a30
.L0daa184c:
    ld	$a0,544($sp)
    # Line 346
    ld	$a7,576($sp)
    ld	$a6,584($sp)
    ld	$a5,592($sp)
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s3
    # lw $t9, -30408($gp) # &__glInitMemUnpack
    ld	$t2,568($sp)
    addiu	$a1,$sp,24
    jal	__glInitMemUnpack
    sw	$t2,4($sp)
    ld	$a0,544($sp)
    # Line 348
    # lw $t9, -30416($gp) # &__glInitMemLoad
    lw	$a3,4($s0)
    lw	$a2,72($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 350
    lwc1	$f4,40($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1f	.L0daa195c
    # Line 354
    li	$at,1
    # Line 350
    lwc1	$f1,44($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f2,48($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f3,52($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f0,56($s0)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f1,60($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f2,64($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0daa1960
    # Line 355
    swc1	$f4,340($sp)
    # Line 350
    lwc1	$f3,68($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0daa19a0
    # Line 364
    nop	# was lw $t9, -30248($gp) # &__glInitUnpacker
.L0daa195c:
    # Line 355
    swc1	$f4,340($sp)
.L0daa1960:
    # Line 356
    lwc1	$f2,44($s0)
    swc1	$f2,344($sp)
    # Line 357
    lwc1	$f1,48($s0)
    swc1	$f1,348($sp)
    # Line 358
    lwc1	$f0,52($s0)
    swc1	$f0,352($sp)
    # Line 359
    lwc1	$f3,56($s0)
    swc1	$f3,356($sp)
    # Line 360
    lwc1	$f2,60($s0)
    swc1	$f2,360($sp)
    # Line 361
    lwc1	$f1,64($s0)
    swc1	$f1,364($sp)
    # Line 362
    lwc1	$f0,68($s0)
    sd	$at,560($sp)
    swc1	$f0,368($sp)
    # Line 364
    # lw $t9, -30248($gp) # &__glInitUnpacker
.L0daa19a0:
    ld	$a0,544($sp)
    addiu	$a1,$sp,24
    jal	__glInitUnpacker
    ld	$s0,536($sp)
    # Line 365
    # lw $t9, -30748($gp) # &__glInitPacker
    ld	$a0,544($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,24
    ld	$v0,560($sp)
    # Line 368
    sb	$zero,452($sp)
    # Line 370
    ld	$a0,544($sp)
    # Line 367
    sb	$v0,451($sp)
    # Line 370
    lw	$t9,12580($a0)
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,24
    b	.L0daa17b0
    ld	$ra,632($sp)
.L0daa19e8:
    # Line 295
    li	$s2,1
    # Line 296
    b	.L0daa1750
    # Line 294
    addiu	$s0,$a0,4972
.L0daa19f4:
    # Line 299
    b	.L0daa1750
    # Line 298
    addiu	$s0,$a0,5052
.L0daa19fc:
    # Line 302
    li	$s2,1
    # Line 303
    b	.L0daa1750
    # Line 301
    addiu	$s0,$a0,5132
.L0daa1a08:
    # Line 306
    b	.L0daa1750
    # Line 305
    addiu	$s0,$a0,5212
.L0daa1a10:
    # Line 309
    li	$s2,1
    # Line 310
    b	.L0daa1750
    # Line 308
    addiu	$s0,$a0,5292
.L0daa1a1c:
    # Line 313
    b	.L0daa1750
    # Line 312
    addiu	$s0,$a0,5372
.L0daa1a24:
    # Line 316
    li	$s2,1
    # Line 317
    b	.L0daa1750
    # Line 315
    addiu	$s0,$a0,5452
.L0daa1a30:
    # Line 341
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    mult	$v0,$s3
    ld	$t9,544($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    lw	$a1,4($s0)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0daa184c
    sw	$v0,4($s0)
.end __glColorTableSGI

# Function: __glim_ColorTableSGI
# Declared: Line 376 (Source lines: 378-407)
# Address: 0x0daa1a64 - 0x0daa1bf4 (Size: 400 bytes, Frame: 128)
.globl __glim_ColorTableSGI
.ent __glim_ColorTableSGI
__glim_ColorTableSGI:
    # Line 378
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$a5,40($sp)
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$a1,8($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$gp,48($sp)
    lui	$at,0x15
    addiu	$at,$at,24068
    # Line 380
    lw	$a6,__glBeginMode
    lw	$v0,__glCurrentContext
    # Line 378
    addu	$gp,$t9,$at
    # Line 380
    beqz	$a6,.L0daa1b04
    sd	$v0,0($sp)
    sd	$ra,64($sp)
    sd	$v0,0($sp)
    sd	$a1,8($sp)
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    li	$v1,2
    beq	$a6,$v1,.L0daa1aec
    sd	$a5,40($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa1aec:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11792($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
.L0daa1b04:
    ld	$a0,0($sp)
    # Line 383
    move	$a1,$s0
    ld	$a2,8($sp)
    # lw $t9, -29084($gp) # &__glCheckColorTableArgs
    ld	$a3,32($sp)
    ld	$a4,24($sp)
    bal __glCheckColorTableArgs
    ld	$a5,16($sp)
    li	$a7,0x80d4
    beqz	$v0,.L0daa1b60
    li	$v1,0x80d3
    li	$at,0x80bd
    beq	$s0,$at,.L0daa1b54
    # Line 390
    li	$at,0x8031
    # Line 383
    beq	$s0,$v1,.L0daa1b54
    # Line 390
    li	$at,0x8031
    # Line 383
    beq	$s0,$a7,.L0daa1b50
    li	$t0,0x80d5
    bne	$s0,$t0,.L0daa1bd4
.L0daa1b50:
    # Line 390
    li	$at,0x8031
.L0daa1b54:
    bne	$v0,$at,.L0daa1bb8
    # Line 393
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$zero,8($sp)
.L0daa1b60:
    # Line 402
    move	$a1,$s0
    ld	$a2,8($sp)
    ld	$t9,0($sp)
    ld	$a3,32($sp)
    ld	$a4,24($sp)
    move	$a0,$t9
    lw	$t9,12672($t9)
    ld	$a5,16($sp)
    ld	$a6,40($sp)
    jal	__glSetError
    move	$a7,$zero
    # Line 406
    li	$at,2
    sw	$at,__glBeginMode
    ld	$at,0($sp)
    lw	$ra,11764($at)
    ori	$ra,$ra,0x11
    sw	$ra,11764($at)
    # Line 407
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa1bb8:
    # Line 393
    bal __glSetError
    move	$a0,$v0
    # Line 394
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daa1bd4:
    # Line 398
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    # Line 399
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_ColorTableSGI

# Function: __glim_GetColorTableSGI
# Declared: Line 409 (Source lines: 411-467)
# Address: 0x0daa1bf4 - 0x0daa1e4c (Size: 600 bytes, Frame: 224)
.globl __glim_GetColorTableSGI
.ent __glim_GetColorTableSGI
__glim_GetColorTableSGI:
    # Line 411
    addiu	$sp,$sp,-608
    sd	$ra,568($sp)
    sd	$s0,560($sp)
    # Line 415
    lw	$s0,__glCurrentContext
    sd	$a3,544($sp)
    sd	$a2,528($sp)
    sd	$a1,536($sp)
    sd	$a0,520($sp)
    sd	$gp,552($sp)
    lw	$a4,__glBeginMode
    # Line 411
    lui	$at,0x15
    addiu	$at,$at,23668
    # Line 415
    beqz	$a4,.L0daa1c78
    # Line 411
    addu	$gp,$t9,$at
    sd	$ra,568($sp)
    sd	$a0,520($sp)
    sd	$a2,528($sp)
    sd	$a1,536($sp)
    # Line 415
    li	$v0,2
    beq	$a4,$v0,.L0daa1c68
    sd	$a3,544($sp)
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1c68:
    lw	$t9,11792($s0)
    jal	__glSetError
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0daa1c78:
    # Line 420
    move	$a0,$s0
    ld	$a1,520($sp)
    ld	$a5,528($sp)
    # lw $t9, -29084($gp) # &__glCheckColorTableArgs
    ld	$a4,536($sp)
    move	$a3,$zero
    bal __glCheckColorTableArgs
    li	$a2,6407
    beqz	$v0,.L0daa1cc0
    # Line 423
    ld	$t1,520($sp)
    # Line 422
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 423
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1cc0:
    lui	$at,0xffff
    ori	$at,$at,0x7f44
    addu	$t1,$t1,$at
    la	$at,sub_0dbf0000
    sltiu	$v1,$t1,26
    sll	$t1,$t1,0x2
    lui	$at,%hi(jtbl_0dbeb5a0)
    beqz	$v1,.L0daa1cf0
    addu	$t1,$t1,$at
    lw	$v0,%lo(jtbl_0dbeb5a0)($t1)
    jr	$v0
    # Line 443
    nop	# was lw $t9, -29008($gp) # &__glSetError
.L0daa1cf0:
    # Line 450
    lw	$v1,0($sp)
    sd	$v1,512($sp)
.L0daa1cf8:
    # Line 456
    move	$a0,$s0
    li	$a3,1
    ld	$a2,512($sp)
    addiu	$a1,$sp,8
    # lw $t9, -30412($gp) # &__glInitMemGet
    lw	$a5,4($a2)
    lw	$a4,72($a2)
    jal	__glInitMemGet
    lw	$a2,12($a2)
    # Line 457
    move	$a0,$s0
    ld	$a7,544($sp)
    ld	$a6,528($sp)
    ld	$a5,536($sp)
    move	$a4,$zero
    li	$a3,1
    # lw $t9, -30404($gp) # &__glInitMemPack
    ld	$a2,512($sp)
    addiu	$a1,$sp,8
    jal	__glInitMemPack
    lw	$a2,12($a2)
    # Line 458
    # lw $t9, -30248($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,8
    # Line 459
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 462
    sb	$zero,436($sp)
    # Line 461
    li	$a3,1
    # Line 463
    sb	$a3,438($sp)
    # Line 461
    sb	$a3,432($sp)
    # Line 465
    lw	$t9,12580($s0)
    move	$a2,$zero
    addiu	$a1,$sp,8
    jalr	$t9
    move	$a0,$s0
    # Line 467
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1da0:
    # Line 428
    addiu	$t0,$s0,4892
    # Line 429
    b	.L0daa1cf8
    sd	$t0,512($sp)
.L0daa1dac:
    # Line 431
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 432
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1dcc:
    # Line 434
    addiu	$at,$s0,5052
    # Line 435
    b	.L0daa1cf8
    sd	$at,512($sp)
.L0daa1dd8:
    # Line 437
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 438
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1df8:
    # Line 440
    addiu	$v0,$s0,5212
    # Line 441
    b	.L0daa1cf8
    sd	$v0,512($sp)
.L0daa1e04:
    # Line 443
    bal __glSetError
    li	$a0,1280
    # Line 444
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0daa1e20:
    # Line 446
    addiu	$v1,$s0,5372
    # Line 447
    b	.L0daa1cf8
    sd	$v1,512($sp)
.L0daa1e2c:
    # Line 449
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 450
    ld	$ra,568($sp)
    ld	$gp,552($sp)
    ld	$s0,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glim_GetColorTableSGI

# Function: __glColorTableModifiers
# Declared: Line 473 (Source lines: 475-554)
# Address: 0x0daa1e4c - 0x0daa2090 (Size: 580 bytes, Frame: 48)
.globl __glColorTableModifiers
.ent __glColorTableModifiers
__glColorTableModifiers:
    # Line 477
    move	$a6,$zero
    lui	$a5,0xffff
    ori	$a5,$a5,0x7f44
    addu	$a5,$a1,$a5
    # Line 475
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x15
    addiu	$at,$at,23068
    addu	$gp,$t9,$at
    # Line 477
    # lw $t9, -32664($gp) # &sub_0dbf0000
    sltiu	$at,$a5,26
    sll	$a5,$a5,0x2
    lui	$t9,%hi(jtbl_0dbeb608)
    beqz	$at,.L0daa1e94
    addu	$a5,$a5,$t9
    lw	$at,%lo(jtbl_0dbeb608)($a5)
    jr	$at
    # Line 505
    addiu	$a5,$a0,5452
.L0daa1e94:
    # Line 509
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 510
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa1eb8:
    # Line 482
    b	.L0daa1ec8
    # Line 481
    addiu	$a5,$a0,4892
.L0daa1ec0:
    # Line 492
    li	$a6,1
    # Line 491
    addiu	$a5,$a0,5132
.L0daa1ec8:
    # Line 511
    la	$a1,sub_0dbf0000
    lui	$a0,0xffff
    ori	$a0,$a0,0x7f2a
    addu	$a0,$a2,$a0
    addiu	$a1,$a1,-18832
    sltiu	$at,$a0,10
    sll	$a0,$a0,0x2
    beqz	$at,.L0daa1f38
    addu	$a0,$a0,$a1
    # Line 536
    li	$v1,1
    # Line 511
    lw	$a1,%lo(jtbl_0dbeb608)($a0)
    # Line 530
    li	$a4,1
    # Line 511
    jr	$a1
    # Line 537
    addiu	$v0,$a5,36
.L0daa1f00:
    # Line 485
    li	$a6,1
    # Line 486
    b	.L0daa1ec8
    # Line 484
    addiu	$a5,$a0,4972
.L0daa1f0c:
    # Line 489
    b	.L0daa1ec8
    # Line 488
    addiu	$a5,$a0,5052
.L0daa1f14:
    # Line 496
    b	.L0daa1ec8
    # Line 495
    addiu	$a5,$a0,5212
.L0daa1f1c:
    # Line 499
    li	$a6,1
    # Line 500
    b	.L0daa1ec8
    # Line 498
    addiu	$a5,$a0,5292
.L0daa1f28:
    # Line 503
    b	.L0daa1ec8
    # Line 502
    addiu	$a5,$a0,5372
.L0daa1f30:
    # Line 507
    b	.L0daa1ec8
    # Line 506
    li	$a6,1
.L0daa1f38:
    # Line 553
    # lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 554
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa1f5c:
    # Line 516
    addiu	$v0,$a5,8
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 515
    li	$a4,1
    # Line 516
    jr	$ra
    # Line 515
    sw	$a4,0($a3)
.L0daa1f74:
    # Line 518
    li	$at,1
    # Line 519
    addiu	$v0,$a5,12
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 518
    sw	$at,0($a3)
.L0daa1f8c:
    # Line 522
    addiu	$v0,$a5,16
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 521
    li	$v1,1
    # Line 522
    jr	$ra
    # Line 521
    sw	$v1,0($a3)
.L0daa1fa4:
    # Line 524
    li	$a0,1
    # Line 525
    addiu	$v0,$a5,20
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 524
    sw	$a0,0($a3)
.L0daa1fbc:
    # Line 528
    addiu	$v0,$a5,24
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 527
    li	$a1,1
    # Line 528
    jr	$ra
    # Line 527
    sw	$a1,0($a3)
.L0daa1fd4:
    # Line 531
    addiu	$v0,$a5,28
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 530
    sw	$a4,0($a3)
.L0daa1fe8:
    # Line 533
    li	$at,1
    # Line 534
    addiu	$v0,$a5,32
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 533
    sw	$at,0($a3)
.L0daa2000:
    ld	$gp,0($sp)
    # Line 537
    addiu	$sp,$sp,48
    jr	$ra
    # Line 536
    sw	$v1,0($a3)
.L0daa2010:
    # Line 539
    beqz	$a6,.L0daa2060
    # Line 540
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 541
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa2038:
    # Line 546
    beqz	$a6,.L0daa2078
    # Line 547
    nop	# was lw $t9, -29008($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1280
    # Line 548
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa2060:
    # Line 544
    addiu	$v0,$a5,40
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 543
    li	$a0,4
    # Line 544
    jr	$ra
    # Line 543
    sw	$a0,0($a3)
.L0daa2078:
    # Line 551
    addiu	$v0,$a5,56
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    # Line 550
    li	$a1,4
    # Line 551
    jr	$ra
    # Line 550
    sw	$a1,0($a3)
.end __glColorTableModifiers

# Function: __glColorTableParameterv
# Declared: Line 560 (Source lines: 562-590)
# Address: 0x0daa2090 - 0x0daa21a0 (Size: 272 bytes, Frame: 208)
.ent __glColorTableParameterv
__glColorTableParameterv:
    # Line 562
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,24($sp)
    # Line 567
    # lw $t9, -29064($gp) # &__glColorTableModifiers
    # Line 562
    move	$s0,$a3
    sd	$ra,8($sp)
    # Line 567
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    ld	$ra,8($sp)
    beqz	$v0,.L0daa2150
    # Line 578
    move	$a2,$v0
    # Line 568
    lw	$a3,0($sp)
    li	$at,1
    beq	$a3,$at,.L0daa2160
    nop
    # Line 578
    beqz	$s1,.L0daa2100
    nop
    # Line 581
    blez	$a3,.L0daa2100
    move	$v0,$zero
.L0daa20e0:
    # Line 582
    lwc1	$f0,0($s1)
    swc1	$f0,0($a2)
    # Line 581
    lw	$a3,0($sp)
    # Line 582
    addiu	$a2,$a2,4
    # Line 581
    addiu	$v0,$v0,1
    slt	$v1,$v0,$a3
    bnez	$v1,.L0daa20e0
    # Line 582
    addiu	$s1,$s1,4
.L0daa2100:
    # Line 581
    beqz	$s0,.L0daa213c
    # Line 586
    move	$v0,$zero
    blez	$a3,.L0daa2140
    # Line 590
    ld	$s1,16($sp)
.L0daa2110:
    # Line 587
    lw	$a1,0($s0)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a2)
    # Line 586
    lw	$a0,0($sp)
    # Line 587
    addiu	$a2,$a2,4
    # Line 586
    addiu	$v0,$v0,1
    slt	$a0,$v0,$a0
    bnez	$a0,.L0daa2110
    # Line 587
    addiu	$s0,$s0,4
.L0daa213c:
    # Line 590
    ld	$s1,16($sp)
.L0daa2140:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa2150:
    # Line 568
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa2160:
    beqz	$s1,.L0daa217c
    nop
    # Line 572
    lwc1	$f2,0($s1)
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,0($v0)
.L0daa217c:
    beqz	$s0,.L0daa2190
    # Line 575
    ld	$s1,16($sp)
    # Line 574
    lw	$v1,0($s0)
    sw	$v1,0($v0)
    # Line 575
    ld	$s1,16($sp)
.L0daa2190:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glColorTableParameterv

# Function: __glim_ColorTableParameterivSGI
# Declared: Line 592 (Source lines: 594-597)
# Address: 0x0daa21a0 - 0x0daa2218 (Size: 120 bytes, Frame: 48)
.globl __glim_ColorTableParameterivSGI
.ent __glim_ColorTableParameterivSGI
__glim_ColorTableParameterivSGI:
    # Line 594
    move	$a3,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,22216
    beq	$at,$v0,.L0daa21fc
    nop
    # Line 596
    move	$a4,$zero
    # lw $t9, -32728($gp) # &sub_0daa0000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,8336
    bal __glColorTableModifiers
    lw	$a0,__glCurrentContext
    # Line 597
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa21fc:
    # Line 595
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorTableParameterivSGI

# Function: __glim_ColorTableParameterfvSGI
# Declared: Line 599 (Source lines: 601-604)
# Address: 0x0daa2218 - 0x0daa2290 (Size: 120 bytes, Frame: 48)
.globl __glim_ColorTableParameterfvSGI
.ent __glim_ColorTableParameterfvSGI
__glim_ColorTableParameterfvSGI:
    # Line 601
    move	$a4,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,22096
    beq	$at,$v0,.L0daa2274
    nop
    # Line 603
    move	$a3,$zero
    # lw $t9, -32728($gp) # &sub_0daa0000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,8336
    bal __glColorTableModifiers
    lw	$a0,__glCurrentContext
    # Line 604
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa2274:
    # Line 602
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_ColorTableParameterfvSGI

# Function: __glGetColorTableParameterv
# Declared: Line 607 (Source lines: 609-637)
# Address: 0x0daa2290 - 0x0daa23a0 (Size: 272 bytes, Frame: 208)
.ent __glGetColorTableParameterv
__glGetColorTableParameterv:
    # Line 609
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,24($sp)
    # Line 614
    # lw $t9, -29064($gp) # &__glColorTableModifiers
    # Line 609
    move	$s0,$a3
    sd	$ra,8($sp)
    # Line 614
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    ld	$ra,8($sp)
    beqz	$v0,.L0daa2350
    # Line 625
    move	$a2,$v0
    # Line 615
    lw	$a3,0($sp)
    li	$at,1
    beq	$a3,$at,.L0daa2360
    nop
    # Line 625
    beqz	$s1,.L0daa2300
    nop
    # Line 628
    blez	$a3,.L0daa2300
    move	$v0,$zero
.L0daa22e0:
    # Line 629
    lwc1	$f0,0($a2)
    swc1	$f0,0($s1)
    # Line 628
    lw	$a3,0($sp)
    # Line 629
    addiu	$s1,$s1,4
    # Line 628
    addiu	$v0,$v0,1
    slt	$v1,$v0,$a3
    bnez	$v1,.L0daa22e0
    # Line 629
    addiu	$a2,$a2,4
.L0daa2300:
    # Line 628
    beqz	$s0,.L0daa233c
    # Line 633
    move	$v0,$zero
    blez	$a3,.L0daa2340
    # Line 637
    ld	$s1,16($sp)
.L0daa2310:
    # Line 634
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    sw	$a1,0($s0)
    # Line 633
    lw	$a0,0($sp)
    # Line 634
    addiu	$s0,$s0,4
    # Line 633
    addiu	$v0,$v0,1
    slt	$a0,$v0,$a0
    bnez	$a0,.L0daa2310
    # Line 634
    addiu	$a2,$a2,4
.L0daa233c:
    # Line 637
    ld	$s1,16($sp)
.L0daa2340:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa2350:
    # Line 615
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daa2360:
    beqz	$s1,.L0daa237c
    nop
    # Line 619
    lw	$at,0($v0)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($s1)
.L0daa237c:
    beqz	$s0,.L0daa2390
    # Line 622
    ld	$s1,16($sp)
    # Line 621
    lw	$v1,0($v0)
    sw	$v1,0($s0)
    # Line 622
    ld	$s1,16($sp)
.L0daa2390:
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glGetColorTableParameterv

# Function: __glim_GetColorTableParameterivSGI
# Declared: Line 639 (Source lines: 641-644)
# Address: 0x0daa23a0 - 0x0daa2418 (Size: 120 bytes, Frame: 48)
.globl __glim_GetColorTableParameterivSGI
.ent __glim_GetColorTableParameterivSGI
__glim_GetColorTableParameterivSGI:
    # Line 641
    move	$a3,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,21704
    beq	$at,$v0,.L0daa23fc
    nop
    # Line 643
    move	$a4,$zero
    # lw $t9, -32728($gp) # &sub_0daa0000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,8848
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,__glCurrentContext
    # Line 644
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa23fc:
    # Line 642
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetColorTableParameterivSGI

# Function: __glim_GetColorTableParameterfvSGI
# Declared: Line 646 (Source lines: 648-651)
# Address: 0x0daa2418 - 0x0daa2490 (Size: 120 bytes, Frame: 48)
.globl __glim_GetColorTableParameterfvSGI
.ent __glim_GetColorTableParameterfvSGI
__glim_GetColorTableParameterfvSGI:
    # Line 648
    move	$a4,$a2
    move	$a7,$a1
    move	$a6,$a0
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # sd	gp,0(sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,21584
    beq	$at,$v0,.L0daa2474
    nop
    # Line 650
    move	$a3,$zero
    # lw $t9, -32728($gp) # &sub_0daa0000
    move	$a2,$a7
    move	$a1,$a6
    addiu	$t9,$t9,8848
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,__glCurrentContext
    # Line 651
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa2474:
    # Line 649
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # ld	gp,0(sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetColorTableParameterfvSGI

# Function: __glim_CopyColorTableSGI
# Declared: Line 654 (Source lines: 656-732)
# Address: 0x0daa2490 - 0x0daa2854 (Size: 964 bytes, Frame: 144)
.globl __glim_CopyColorTableSGI
.ent __glim_CopyColorTableSGI
__glim_CopyColorTableSGI:
    # Line 664
    li	$v0,1
    # Line 656
    addiu	$sp,$sp,-656
    sd	$ra,584($sp)
    sd	$s1,544($sp)
    # Line 664
    lw	$s1,__glCurrentContext
    sd	$s5,536($sp)
    # Line 661
    move	$s5,$zero
    sd	$s3,568($sp)
    # Line 656
    move	$s3,$a4
    sd	$a3,520($sp)
    sd	$a2,512($sp)
    sd	$s4,552($sp)
    move	$s4,$a1
    sd	$s0,528($sp)
    move	$s0,$a0
    sd	$gp,560($sp)
    # Line 664
    lw	$at,__glBeginMode
    # Line 656
    lui	$v1,0x15
    addiu	$v1,$v1,21464
    # Line 664
    beq	$at,$v0,.L0daa2824
    # Line 656
    addu	$gp,$t9,$v1
    # Line 667
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s4
    # lw $t9, -29084($gp) # &__glCheckColorTableArgs
    move	$a3,$s3
    li	$a5,5126
    bal __glCheckColorTableArgs
    li	$a4,6408
    beqz	$v0,.L0daa2514
    # Line 669
    nop	# was lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
.L0daa2514:
    li	$a5,0x80bd
    beq	$s0,$a5,.L0daa27f4
    li	$a6,0x80d3
    beq	$s0,$a6,.L0daa27f4
    li	$at,0x80d4
    beq	$s0,$at,.L0daa27f4
    li	$v1,0x80d5
    beq	$s0,$v1,.L0daa27f4
    # Line 680
    li	$a5,0x80d0
    beq	$s0,$a5,.L0daa27c8
    li	$a6,0x80d1
    beq	$s0,$a6,.L0daa27d4
    li	$at,0x80d2
    beq	$s0,$at,.L0daa27e0
    li	$v1,0x80bc
    beq	$s0,$v1,.L0daa27ec
    sd	$s2,592($sp)
    lw	$s2,0($sp)
.L0daa255c:
    # Line 695
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    lw	$a1,12($s2)
    mult	$a1,$v0
    # Line 697
    move	$a3,$s3
    move	$a2,$s4
    # lw $t9, -29080($gp) # &__glLoadColorTableParams
    move	$a1,$s0
    # Line 695
    mflo	$a0
    sd	$a0,576($sp)
    # Line 697
    bal __glLoadColorTableParams
    move	$a0,$s2
    # Line 700
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    lw	$a0,72($s2)
    jal	__glElementsPerGroup
    ld	$s0,576($sp)
    mult	$v0,$s3
    mflo	$a5
    slt	$a5,$s0,$a5
    bnez	$a5,.L0daa2798
.L0daa25b0:
    # Line 706
    move	$a0,$s1
    li	$a5,1
    move	$a4,$s3
    # lw $t9, -30424($gp) # &__glInitReadImageSrcInfo
    ld	$a3,520($sp)
    ld	$a2,512($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,8
    # Line 707
    move	$a0,$s1
    # lw $t9, -30416($gp) # &__glInitMemLoad
    lw	$a3,4($s2)
    lw	$a2,72($s2)
    jal	__glInitMemLoad
    addiu	$a1,$sp,8
    # Line 709
    lwc1	$f4,40($s2)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f1,44($s2)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f2,48($s2)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f3,52($s2)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f0,56($s2)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f1,60($s2)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f2,64($s2)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0daa26b4
    # Line 714
    swc1	$f4,324($sp)
    # Line 709
    lwc1	$f3,68($s2)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0daa26f4
    # Line 723
    nop	# was lw $t9, -30248($gp) # &__glInitUnpacker
    # Line 714
    swc1	$f4,324($sp)
.L0daa26b4:
    # Line 715
    lwc1	$f2,44($s2)
    swc1	$f2,328($sp)
    # Line 716
    lwc1	$f1,48($s2)
    swc1	$f1,332($sp)
    # Line 717
    lwc1	$f0,52($s2)
    swc1	$f0,336($sp)
    # Line 718
    lwc1	$f3,56($s2)
    swc1	$f3,340($sp)
    # Line 719
    lwc1	$f2,60($s2)
    swc1	$f2,344($sp)
    # Line 720
    lwc1	$f1,64($s2)
    swc1	$f1,348($sp)
    # Line 721
    lwc1	$f0,68($s2)
    # Line 713
    li	$s5,1
    # Line 721
    swc1	$f0,352($sp)
    # Line 723
    # lw $t9, -30248($gp) # &__glInitUnpacker
.L0daa26f4:
    move	$a0,$s1
    addiu	$a1,$sp,8
    jal	__glInitUnpacker
    ld	$s2,592($sp)
    # Line 724
    # lw $t9, -30748($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 728
    # lw $t9, -30520($gp) # &__glClipReadPixels
    addiu	$a1,$sp,8
    move	$a0,$s1
    jal	__glClipReadPixels
    # Line 726
    sb	$s5,435($sp)
    # Line 728
    bnez	$v0,.L0daa2750
    ld	$ra,584($sp)
    ld	$gp,560($sp)
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0daa2750:
    # Line 729
    lw	$t9,12584($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,8
    ld	$gp,560($sp)
    # Line 732
    ld	$s3,568($sp)
    ld	$s4,552($sp)
    # Line 731
    li	$s0,2
    sw	$s0,__glBeginMode
    # Line 732
    ld	$s5,536($sp)
    # Line 731
    lw	$a6,11764($s1)
    # Line 732
    ld	$s0,528($sp)
    ld	$ra,584($sp)
    # Line 731
    ori	$a6,$a6,0x10
    sw	$a6,11764($s1)
    # Line 732
    ld	$s1,544($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0daa2798:
    # Line 701
    # lw $t9, -30264($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    mult	$v0,$s3
    move	$a0,$s1
    lw	$t9,8($s1)
    lw	$a1,4($s2)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0daa25b0
    sw	$v0,4($s2)
.L0daa27c8:
    sd	$s2,592($sp)
    # Line 683
    b	.L0daa255c
    # Line 682
    addiu	$s2,$s1,4892
.L0daa27d4:
    sd	$s2,592($sp)
    # Line 686
    b	.L0daa255c
    # Line 685
    addiu	$s2,$s1,5052
.L0daa27e0:
    sd	$s2,592($sp)
    # Line 689
    b	.L0daa255c
    # Line 688
    addiu	$s2,$s1,5212
.L0daa27ec:
    b	.L0daa255c
    # Line 691
    addiu	$s2,$s1,5372
.L0daa27f4:
    # Line 676
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$gp,560($sp)
    # Line 677
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$ra,584($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0daa2824:
    # Line 664
    # lw $t9, -29008($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,560($sp)
    ld	$s0,528($sp)
    ld	$s1,544($sp)
    ld	$s3,568($sp)
    ld	$ra,584($sp)
    ld	$s4,552($sp)
    ld	$s5,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.end __glim_CopyColorTableSGI

# Function: __glInitColorTables
# Declared: Line 734 (Source lines: 742-801)
# Address: 0x0daa2854 - 0x0daa2940 (Size: 236 bytes, Frame: 0)
.globl __glInitColorTables
.ent __glInitColorTables
__glInitColorTables:
    # Line 743
    li	$v0,6408
    # Line 795
    sw	$v0,5460($a0)
    # Line 788
    sw	$v0,5380($a0)
    # Line 781
    sw	$v0,5300($a0)
    # Line 773
    sw	$v0,5220($a0)
    # Line 766
    sw	$v0,5140($a0)
    # Line 758
    sw	$v0,5060($a0)
    # Line 750
    sw	$v0,4980($a0)
    # Line 743
    sw	$v0,4900($a0)
    # Line 779
    li	$a1,0x80d5
    sw	$a1,5292($a0)
    # Line 757
    li	$a1,0x80d1
    sw	$a1,5052($a0)
    # Line 744
    lwc1	$f0,3284($a0)
    # Line 787
    li	$at,0x80bc
    # Line 794
    li	$v1,0x80bd
    sw	$v1,5452($a0)
    # Line 772
    li	$v1,0x80d2
    # Line 787
    sw	$at,5372($a0)
    # Line 764
    li	$at,0x80d4
    sw	$at,5132($a0)
    # Line 742
    li	$at,0x80d0
    # Line 772
    sw	$v1,5212($a0)
    # Line 749
    li	$v1,0x80d3
    sw	$v1,4972($a0)
    # Line 742
    sw	$at,4892($a0)
    # Line 799
    swc1	$f0,5504($a0)
    # Line 798
    swc1	$f0,5500($a0)
    # Line 797
    swc1	$f0,5496($a0)
    # Line 796
    swc1	$f0,5492($a0)
    # Line 792
    swc1	$f0,5424($a0)
    # Line 791
    swc1	$f0,5420($a0)
    # Line 790
    swc1	$f0,5416($a0)
    # Line 789
    swc1	$f0,5412($a0)
    # Line 785
    swc1	$f0,5344($a0)
    # Line 784
    swc1	$f0,5340($a0)
    # Line 783
    swc1	$f0,5336($a0)
    # Line 782
    swc1	$f0,5332($a0)
    # Line 777
    swc1	$f0,5264($a0)
    # Line 776
    swc1	$f0,5260($a0)
    # Line 775
    swc1	$f0,5256($a0)
    # Line 774
    swc1	$f0,5252($a0)
    # Line 770
    swc1	$f0,5184($a0)
    # Line 769
    swc1	$f0,5180($a0)
    # Line 768
    swc1	$f0,5176($a0)
    # Line 767
    swc1	$f0,5172($a0)
    # Line 762
    swc1	$f0,5104($a0)
    # Line 761
    swc1	$f0,5100($a0)
    # Line 760
    swc1	$f0,5096($a0)
    # Line 759
    swc1	$f0,5092($a0)
    # Line 754
    swc1	$f0,5024($a0)
    # Line 753
    swc1	$f0,5020($a0)
    # Line 752
    swc1	$f0,5016($a0)
    # Line 751
    swc1	$f0,5012($a0)
    # Line 747
    swc1	$f0,4944($a0)
    # Line 746
    swc1	$f0,4940($a0)
    # Line 745
    swc1	$f0,4936($a0)
    # Line 801
    jr	$ra
    # Line 744
    swc1	$f0,4932($a0)
.end __glInitColorTables

# Function: __glFreeColorTables
# Declared: Line 803 (Source lines: 804-812)
# Address: 0x0daa2940 - 0x0daa29b0 (Size: 112 bytes, Frame: 48)
.globl __glFreeColorTables
.ent __glFreeColorTables
__glFreeColorTables:
    # Line 808
    lw	$a1,4896($a0)
    # Line 804
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0x15
    addiu	$at,$at,20264
    # addu	gp,t9,at
    # Line 808
    lw	$t9,12($a0)
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 804
    move	$s0,$a0
    # Line 809
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5056($s0)
    # Line 810
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5216($s0)
    # Line 811
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5376($s0)
    # Line 812
    ld	$ra,8($sp)
    # ld	gp,16(sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreeColorTables

# Function: __glCopyColorTableScaleBias
# Declared: Line 828 (Source lines: 831-841)
# Address: 0x0daa29b0 - 0x0daa2bb4 (Size: 516 bytes, Frame: 0)
.globl __glCopyColorTableScaleBias
.ent __glCopyColorTableScaleBias
__glCopyColorTableScaleBias:
    # Line 831
    lwc1	$f3,40($a0)
    swc1	$f3,40($a1)
    lwc1	$f2,44($a0)
    swc1	$f2,44($a1)
    lwc1	$f1,48($a0)
    swc1	$f1,48($a1)
    lwc1	$f0,52($a0)
    swc1	$f0,52($a1)
    lwc1	$f4,56($a0)
    swc1	$f4,56($a1)
    lwc1	$f3,60($a0)
    swc1	$f3,60($a1)
    lwc1	$f2,64($a0)
    swc1	$f2,64($a1)
    lwc1	$f1,68($a0)
    swc1	$f1,68($a1)
    # Line 832
    lwc1	$f0,120($a0)
    swc1	$f0,120($a1)
    lwc1	$f4,124($a0)
    swc1	$f4,124($a1)
    lwc1	$f3,128($a0)
    swc1	$f3,128($a1)
    lwc1	$f2,132($a0)
    swc1	$f2,132($a1)
    lwc1	$f1,136($a0)
    swc1	$f1,136($a1)
    lwc1	$f0,140($a0)
    swc1	$f0,140($a1)
    lwc1	$f4,144($a0)
    swc1	$f4,144($a1)
    lwc1	$f3,148($a0)
    swc1	$f3,148($a1)
    # Line 833
    lwc1	$f2,200($a0)
    swc1	$f2,200($a1)
    lwc1	$f1,204($a0)
    swc1	$f1,204($a1)
    lwc1	$f0,208($a0)
    swc1	$f0,208($a1)
    lwc1	$f4,212($a0)
    swc1	$f4,212($a1)
    lwc1	$f3,216($a0)
    swc1	$f3,216($a1)
    lwc1	$f2,220($a0)
    swc1	$f2,220($a1)
    lwc1	$f1,224($a0)
    swc1	$f1,224($a1)
    lwc1	$f0,228($a0)
    swc1	$f0,228($a1)
    # Line 834
    lwc1	$f4,280($a0)
    swc1	$f4,280($a1)
    lwc1	$f3,284($a0)
    swc1	$f3,284($a1)
    lwc1	$f2,288($a0)
    swc1	$f2,288($a1)
    lwc1	$f1,292($a0)
    swc1	$f1,292($a1)
    lwc1	$f0,296($a0)
    swc1	$f0,296($a1)
    lwc1	$f4,300($a0)
    swc1	$f4,300($a1)
    lwc1	$f3,304($a0)
    swc1	$f3,304($a1)
    lwc1	$f2,308($a0)
    swc1	$f2,308($a1)
    # Line 836
    lwc1	$f1,360($a0)
    swc1	$f1,360($a1)
    lwc1	$f0,364($a0)
    swc1	$f0,364($a1)
    lwc1	$f4,368($a0)
    swc1	$f4,368($a1)
    lwc1	$f3,372($a0)
    swc1	$f3,372($a1)
    lwc1	$f2,376($a0)
    swc1	$f2,376($a1)
    lwc1	$f1,380($a0)
    swc1	$f1,380($a1)
    lwc1	$f0,384($a0)
    swc1	$f0,384($a1)
    lwc1	$f4,388($a0)
    swc1	$f4,388($a1)
    # Line 837
    lwc1	$f3,440($a0)
    swc1	$f3,440($a1)
    lwc1	$f2,444($a0)
    swc1	$f2,444($a1)
    lwc1	$f1,448($a0)
    swc1	$f1,448($a1)
    lwc1	$f0,452($a0)
    swc1	$f0,452($a1)
    lwc1	$f4,456($a0)
    swc1	$f4,456($a1)
    lwc1	$f3,460($a0)
    swc1	$f3,460($a1)
    lwc1	$f2,464($a0)
    swc1	$f2,464($a1)
    lwc1	$f1,468($a0)
    swc1	$f1,468($a1)
    # Line 839
    lwc1	$f0,520($a0)
    swc1	$f0,520($a1)
    lwc1	$f4,524($a0)
    swc1	$f4,524($a1)
    lwc1	$f3,528($a0)
    swc1	$f3,528($a1)
    lwc1	$f2,532($a0)
    swc1	$f2,532($a1)
    lwc1	$f1,536($a0)
    swc1	$f1,536($a1)
    lwc1	$f0,540($a0)
    swc1	$f0,540($a1)
    lwc1	$f4,544($a0)
    swc1	$f4,544($a1)
    lwc1	$f3,548($a0)
    swc1	$f3,548($a1)
    # Line 840
    lwc1	$f2,600($a0)
    swc1	$f2,600($a1)
    lwc1	$f1,604($a0)
    swc1	$f1,604($a1)
    lwc1	$f0,608($a0)
    swc1	$f0,608($a1)
    lwc1	$f4,612($a0)
    swc1	$f4,612($a1)
    lwc1	$f3,616($a0)
    swc1	$f3,616($a1)
    lwc1	$f2,620($a0)
    swc1	$f2,620($a1)
    lwc1	$f1,624($a0)
    swc1	$f1,624($a1)
    lwc1	$f0,628($a0)
    # Line 841
    jr	$ra
    # Line 840
    swc1	$f0,628($a1)
.end __glCopyColorTableScaleBias

.late_rodata
jtbl_0dbeb4d0:
    .word .L0daa0c08
    .word .L0daa0c08
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c64
    .word .L0daa0c08
    .word .L0daa0c08
    .word .L0daa0c08
    .word .L0daa0c08
    .word .L0daa0c08
    .word .L0daa0c08
jtbl_0dbeb538:
    .word .L0daa1a1c
    .word .L0daa1a24
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa1748
    .word .L0daa17cc
    .word .L0daa19f4
    .word .L0daa1a08
    .word .L0daa19e8
    .word .L0daa19fc
    .word .L0daa1a10
jtbl_0dbeb5a0:
    .word .L0daa1e20
    .word .L0daa1e2c
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1cf0
    .word .L0daa1da0
    .word .L0daa1dcc
    .word .L0daa1df8
    .word .L0daa1dac
    .word .L0daa1dd8
    .word .L0daa1e04
jtbl_0dbeb608:
    .word .L0daa1f28
    .word .L0daa1f30
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1e94
    .word .L0daa1eb8
    .word .L0daa1f0c
    .word .L0daa1f14
    .word .L0daa1f00
    .word .L0daa1ec0
    .word .L0daa1f1c
    .word .L0daa2010
    .word .L0daa2038
    .word .L0daa1f5c
    .word .L0daa1f74
    .word .L0daa1f8c
    .word .L0daa1fa4
    .word .L0daa1fbc
    .word .L0daa1fd4
    .word .L0daa1fe8
    .word .L0daa2000

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

