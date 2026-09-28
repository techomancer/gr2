# Source: ../soft/so_vertex.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertex.c
# Total Functions: 4

.text

# Function: __glClipCheckAll2
# Declared: Line 135 (Source lines: 136-139)
# Address: 0x0db0bb4c - 0x0db0bb8c (Size: 64 bytes, Frame: 32)
.globl __glClipCheckAll2
.ent __glClipCheckAll2
__glClipCheckAll2:
    # Line 136
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0xf
    addiu	$at,$at,-17124
    # addu	gp,t9,at
    # Line 137
    mtc1	$zero,$f1
    swc1	$f1,24($a1)
    # Line 139
    # lw $t9, -26100($gp) # &__glClipCheckAll
    # Line 138
    lwc1	$f0,3284($a0)
    sd	$ra,0($sp)
    # Line 139
    bal __glClipCheckAll
    # Line 138
    swc1	$f0,28($a1)
    # Line 139
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipCheckAll2

# Function: __glClipCheckAll3
# Declared: Line 142 (Source lines: 143-145)
# Address: 0x0db0bb8c - 0x0db0bbc4 (Size: 56 bytes, Frame: 32)
.globl __glClipCheckAll3
.ent __glClipCheckAll3
__glClipCheckAll3:
    # Line 143
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$at,0xf
    addiu	$at,$at,-17188
    # addu	gp,t9,at
    # Line 145
    # lw $t9, -26100($gp) # &__glClipCheckAll
    # Line 144
    lwc1	$f0,3284($a0)
    sd	$ra,0($sp)
    # Line 145
    bal __glClipCheckAll
    # Line 144
    swc1	$f0,28($a1)
    # Line 145
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipCheckAll3

# Function: __glClipCheckAll
# Declared: Line 250 (Source lines: 251-343)
# Address: 0x0db0bbc4 - 0x0db0bd80 (Size: 444 bytes, Frame: 48)
.globl __glClipCheckAll
.ent __glClipCheckAll
__glClipCheckAll:
    # Line 257
    li	$a2,16
    # Line 251
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a1
    # sd	gp,24(sp)
    lui	$at,0xf
    addiu	$at,$at,-17244
    # addu	gp,t9,at
    # Line 257
    lw	$t9,8($a1)
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 251
    move	$s5,$a0
    # Line 271
    move	$v0,$zero
    ld	$ra,8($sp)
    # Line 266
    lwc1	$f9,3284($s5)
    # Line 268
    lwc1	$f11,116($s1)
    # Line 265
    lwc1	$f4,124($s1)
    # Line 269
    lwc1	$f10,120($s1)
    # Line 267
    lwc1	$f12,112($s1)
    # Line 271
    neg.s	$f7,$f4
    # Line 269
    mov.s	$f6,$f10
    # Line 271
    c.lt.s	$f12,$f7
    # Line 267
    mov.s	$f8,$f12
    # Line 268
    mov.s	$f5,$f11
    # Line 271
    bc1f	.L0db0bc34
    # Line 266
    div.s	$f9,$f9,$f4
    # Line 272
    li	$v0,1
.L0db0bc34:
    c.lt.s	$f4,$f8
    # Line 289
    li	$a4,64
    # Line 272
    bc1fl	.L0db0bc4c
    # Line 273
    c.lt.s	$f5,$f7
    ori	$v0,$v0,0x2
    c.lt.s	$f5,$f7
.L0db0bc4c:
    nop
    bc1fl	.L0db0bc60
    # Line 274
    c.lt.s	$f4,$f5
    ori	$v0,$v0,0x4
    c.lt.s	$f4,$f5
.L0db0bc60:
    nop
    bc1fl	.L0db0bc74
    # Line 275
    c.lt.s	$f6,$f7
    ori	$v0,$v0,0x8
    c.lt.s	$f6,$f7
.L0db0bc74:
    nop
    bc1fl	.L0db0bc88
    # Line 276
    c.lt.s	$f4,$f6
    ori	$v0,$v0,0x10
    c.lt.s	$f4,$f6
.L0db0bc88:
    nop
    bc1fl	.L0db0bc9c
    # Line 278
    swc1	$f9,140($s1)
    # Line 277
    ori	$v0,$v0,0x20
    # Line 278
    swc1	$f9,140($s1)
.L0db0bc9c:
    # Line 287
    lw	$a0,1708($s5)
    # Line 289
    mtc1	$zero,$f8
    beqz	$a0,.L0db0bd1c
    # Line 288
    lw	$a1,1652($s5)
    # Line 289
    lwc1	$f7,108($s1)
    lwc1	$f6,104($s1)
    lwc1	$f4,100($s1)
    b	.L0db0bccc
    lwc1	$f5,96($s1)
.L0db0bcc0:
    # Line 304
    addiu	$a1,$a1,16
.L0db0bcc4:
    beqz	$a0,.L0db0bd1c
    # Line 303
    sll	$a4,$a4,0x1
.L0db0bccc:
    # Line 289
    andi	$v1,$a0,0x1
    beqz	$v1,.L0db0bcc0
    # Line 302
    srl	$a0,$a0,0x1
    # Line 289
    lwc1	$f3,4($a1)
    lwc1	$f0,0($a1)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,8($a1)
    mul.s	$f0,$f0,$f5
    mul.s	$f2,$f2,$f6
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f7
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    c.lt.s	$f0,$f8
    nop
    bc1fl	.L0db0bcc4
    # Line 304
    addiu	$a1,$a1,16
    b	.L0db0bcc0
    # Line 299
    or	$v0,$v0,$a4
.L0db0bd1c:
    # Line 304
    beqz	$v0,.L0db0bd34
.L0db0bd20:
    nop
    # Line 343
    ld	$s1,0($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db0bd34:
    # Line 317
    lwc1	$f2,1640($s5)
    # Line 316
    lwc1	$f1,1632($s5)
    # Line 317
    mul.s	$f2,$f2,$f10
    # Line 318
    lwc1	$f0,1624($s5)
    # Line 316
    mul.s	$f1,$f1,$f11
    # Line 318
    mul.s	$f0,$f0,$f12
    # Line 317
    mul.s	$f2,$f2,$f9
    # Line 316
    mul.s	$f1,$f1,$f9
    # Line 317
    lwc1	$f3,1644($s5)
    # Line 318
    mul.s	$f0,$f0,$f9
    # Line 317
    add.s	$f3,$f3,$f2
    # Line 316
    lwc1	$f2,1636($s5)
    add.s	$f2,$f2,$f1
    # Line 318
    lwc1	$f1,1628($s5)
    add.s	$f1,$f1,$f0
    # Line 320
    swc1	$f3,136($s1)
    # Line 319
    swc1	$f2,132($s1)
    b	.L0db0bd20
    # Line 318
    swc1	$f1,128($s1)
.end __glClipCheckAll

# Function: __glGenericPickVertexProcs
# Declared: Line 650 (Source lines: 651-794)
# Address: 0x0db0bd80 - 0x0db0bf9c (Size: 540 bytes, Frame: 0)
.globl __glGenericPickVertexProcs
.ent __glGenericPickVertexProcs
__glGenericPickVertexProcs:
    # Line 652
    lw	$a5,1696($a0)
    move	$a4,$a5
    # Line 657
    lw	$a6,29664($a0)
    # Line 651
    lui	$v0,0xf
    addiu	$v0,$v0,-17688
    # addu	at,t9,v0
    # Line 658
    lw	$v0,1708($a0)
    # Line 675
    la	$a1,__glClipCheckAll
    # Line 657
    addiu	$a6,$a6,176
    # Line 658
    beqz	$v0,.L0db0be88
    lw	$a3,64($a6)
    # Line 674
    la	$v1,__glClipCheckAll3
    sw	$v1,11936($a0)
    # Line 670
    la	$v1,__glMipsClipCheckAll2
    # Line 673
    la	$v0,__glClipCheckAll2
    # Line 672
    la	$a2,__glMipsClipCheckAll
    # Line 675
    sw	$a1,11940($a0)
    # Line 671
    la	$a1,__glMipsClipCheckAll3
    # Line 672
    sw	$a2,11952($a0)
    # Line 673
    sw	$v0,11932($a0)
    # Line 671
    sw	$a1,11948($a0)
    # Line 670
    sw	$v1,11944($a0)
.L0db0bdd8:
    # Line 711
    lw	$a3,28088($a0)
    # Line 751
    la	$a1,__glValidateVertex4
    # Line 711
    beqz	$a3,.L0db0bf14
    # Line 737
    li	$a2,9
    beq	$a3,$a2,.L0db0bec8
    # Line 750
    la	$v1,__glValidateVertex3
.L0db0bdf0:
    # Line 749
    la	$v0,__glValidateVertex2
    # Line 751
    sw	$a1,11992($a0)
    # Line 750
    sw	$v1,11988($a0)
    # Line 749
    sw	$v0,11984($a0)
.L0db0be00:
    # Line 751
    lw	$a2,3092($a0)
    # Line 763
    li	$a3,1
    # Line 751
    li	$v0,7169
    beq	$a2,$v0,.L0db0bf00
    # Line 758
    andi	$v1,$a4,0x40
    beqz	$v1,.L0db0bf28
    nop
.L0db0be1c:
    # Line 765
    lbu	$a5,3104($a0)
    # Line 768
    li	$v1,9218
    lui	$a2,0x4
    # Line 765
    beqz	$a5,.L0db0be64
    # Line 768
    and	$a2,$a4,$a2
    # Line 765
    lbu	$a1,28220($a0)
    beqz	$a1,.L0db0be68
    # Line 774
    la	$v0,sub_0dbf0000
    # Line 768
    beqz	$a2,.L0db0be4c
    ori	$a3,$a3,0x4
    lw	$v0,1876($a0)
    beq	$v0,$v1,.L0db0bf80
.L0db0be4c:
    # Line 771
    lui	$a1,0x8
    and	$a1,$a4,$a1
    beqz	$a1,.L0db0be64
    li	$v0,9218
    lw	$a2,2000($a0)
    beq	$a2,$v0,.L0db0bf88
.L0db0be64:
    # Line 774
    la	$v0,sub_0dbf0000
.L0db0be68:
    sll	$a4,$a3,0x2
    addiu	$v0,$v0,-7440
    beqz	$a5,.L0db0bf30
    addu	$a4,$a4,$v0
    # Line 787
    lw	$v1,16($a4)
    sw	$v1,11928($a0)
    # Line 794
    jr	$ra
    nop
.L0db0be88:
    # Line 675
    beqz	$a3,.L0db0bf58
    sltiu	$a1,$a3,2
    bnez	$a1,.L0db0bf3c
    lwc1	$f0,_lit_bf800000
    lwc1	$f4,56($a6)
    c.le.s	$f0,$f4
    nop
    bc1f	.L0db0bf3c
    # Line 682
    lwc1	$f1,_lit_3f800000
    c.le.s	$f4,$f1
    nop
    bc1f	.L0db0bf3c
    # Line 684
    la	$a6,__glMipsClipCheckFrustum2D
    la	$t0,__glMipsClipCheckFrustum_W
    b	.L0db0bf48
    sw	$a6,11944($a0)
.L0db0bec8:
    # Line 737
    lui	$a2,0x40
    and	$a2,$a5,$a2
    bnez	$a2,.L0db0bdf0
    # Line 750
    la	$v1,__glValidateVertex3
    # Line 740
    lbu	$v0,1325($a0)
    bnez	$v0,.L0db0bdf0
    # Line 750
    la	$v1,__glValidateVertex3
    # Line 746
    la	$a2,__glValidateLitVertex4
    # Line 745
    la	$a1,__glValidateLitVertex3
    # Line 746
    sw	$a2,11992($a0)
    # Line 744
    la	$v1,__glValidateLitVertex2
    # Line 745
    sw	$a1,11988($a0)
    # Line 746
    b	.L0db0be00
    # Line 744
    sw	$v1,11984($a0)
.L0db0bf00:
    # Line 751
    lbu	$v0,3105($a0)
    beqz	$v0,.L0db0bf90
    # Line 756
    la	$v1,__glSaveCIAll
    # Line 794
    jr	$ra
    # Line 756
    sw	$v1,11928($a0)
.L0db0bf14:
    # Line 733
    la	$a1,__glNop
    # Line 737
    sw	$a1,11992($a0)
    # Line 735
    sw	$a1,11988($a0)
    # Line 737
    b	.L0db0be00
    # Line 733
    sw	$a1,11984($a0)
.L0db0bf28:
    b	.L0db0be1c
    # Line 765
    li	$a3,2
.L0db0bf30:
    # Line 790
    lw	$a2,0($a4)
    # Line 794
    jr	$ra
    # Line 790
    sw	$a2,11928($a0)
.L0db0bf3c:
    # Line 684
    la	$t0,__glMipsClipCheckFrustum_W
    # Line 686
    move	$a6,$t0
    sw	$t0,11944($a0)
.L0db0bf48:
    # Line 688
    move	$a3,$t0
    la	$a7,__glMipsClipCheckFrustum
    b	.L0db0bf6c
    sw	$t0,11948($a0)
.L0db0bf58:
    la	$a7,__glMipsClipCheckFrustum
    # Line 691
    move	$a3,$a7
    sw	$a7,11948($a0)
    # Line 690
    move	$a6,$a7
    sw	$a7,11944($a0)
.L0db0bf6c:
    # Line 711
    sw	$a7,11940($a0)
    # Line 710
    sw	$a3,11936($a0)
    # Line 709
    sw	$a6,11932($a0)
    b	.L0db0bdd8
    # Line 694
    sw	$a7,11952($a0)
.L0db0bf80:
    b	.L0db0be4c
    # Line 771
    ori	$a3,$a3,0x1
.L0db0bf88:
    b	.L0db0be64
    # Line 776
    ori	$a3,$a3,0x1
.L0db0bf90:
    # Line 758
    la	$v0,__glSaveCAll
    # Line 794
    jr	$ra
    # Line 758
    sw	$v0,11928($a0)
.end __glGenericPickVertexProcs

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

