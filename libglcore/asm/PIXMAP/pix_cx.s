# Source: ../PIXMAP/pix_cx.c
# Category: PIXMAP
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_cx.c
# Total Functions: 10

.text

# Function: __glPixmapAllocAccum
# Declared: Line 24 (Source lines: 25-28)
# Address: 0x0db0ec08 - 0x0db0ec48 (Size: 64 bytes, Frame: 32)
.globl __glPixmapAllocAccum
.ent __glPixmapAllocAccum
__glPixmapAllocAccum:
    # Line 26
    lw	$a2,3416($a0)
    # Line 25
    move	$at,$a0
    addiu	$sp,$sp,-32
    # sd	gp,8(sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-29600
    # addu	gp,t9,v0
    # Line 26
    lw	$t9,31420($a0)
    sd	$ra,0($sp)
    # Line 25
    move	$a0,$a1
    # Line 26
    jalr	$t9
    lw	$a1,3412($at)
    # Line 28
    ld	$ra,0($sp)
    # ld	gp,8(sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPixmapAllocAccum

# Function: ApplyViewport
# Declared: Line 30 (Source lines: 31-52)
# Address: 0x0db0ec48 - 0x0db0ecd4 (Size: 140 bytes, Frame: 48)
.ent ApplyViewport
ApplyViewport:
    # Line 31
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xf
    addiu	$at,$at,-29664
    # addu	gp,t9,at
    # Line 35
    # lw $t9, -26004($gp) # &__glUpdateViewport
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    bal __glUpdateViewport
    # Line 31
    move	$s7,$a0
    # Line 42
    lw	$a2,1592($s7)
    # Line 43
    lw	$a0,1596($s7)
    bltz	$a2,.L0db0ecc0
    ld	$ra,0($sp)
    bltzl	$a0,.L0db0ecc4
    # Line 50
    sb	$zero,29840($s7)
    # Line 47
    lw	$v1,1600($s7)
    lw	$v0,3412($s7)
    addu	$v1,$v1,$a2
    slt	$v0,$v0,$v1
    bnezl	$v0,.L0db0ecc4
    # Line 50
    sb	$zero,29840($s7)
    # Line 47
    lw	$at,1604($s7)
    lw	$a1,3416($s7)
    addu	$at,$at,$a0
    slt	$a1,$a1,$at
    bnez	$a1,.L0db0ecc0
    # Line 48
    li	$v0,1
    b	.L0db0ecc4
    sb	$v0,29840($s7)
.L0db0ecc0:
    # Line 50
    sb	$zero,29840($s7)
.L0db0ecc4:
    # ld	gp,16(sp)
    # Line 52
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 55 (Source lines: 58-58)
# Address: 0x0db0ecd4 - 0x0db0ecdc (Size: 8 bytes, Frame: 0)
.ent ApplyScissor
ApplyScissor:
    # Line 58
    jr	$ra
    nop
.end ApplyScissor

# Function: Finish
# Declared: Line 61 (Source lines: 64-64)
# Address: 0x0db0ecdc - 0x0db0ece4 (Size: 8 bytes, Frame: 0)
.ent Finish
Finish:
    # Line 64
    jr	$ra
    nop
.end Finish

# Function: Flush
# Declared: Line 67 (Source lines: 70-70)
# Address: 0x0db0ece4 - 0x0db0ecec (Size: 8 bytes, Frame: 0)
.ent Flush
Flush:
    # Line 70
    jr	$ra
    nop
.end Flush

# Function: SwapBuffers
# Declared: Line 73 (Source lines: 76-76)
# Address: 0x0db0ecec - 0x0db0ecf4 (Size: 8 bytes, Frame: 0)
.ent SwapBuffers
SwapBuffers:
    # Line 76
    jr	$ra
    nop
.end SwapBuffers

# Function: DestroySoftContext
# Declared: Line 78 (Source lines: 79-100)
# Address: 0x0db0ecf4 - 0x0db0ed5c (Size: 104 bytes, Frame: 48)
.ent DestroySoftContext
DestroySoftContext:
    # Line 79
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    # Line 82
    lw	$s8,__glCurrentContext
    sd	$ra,8($sp)
    # sd	gp,24(sp)
    # Line 79
    lui	$at,0xf
    addiu	$at,$at,-29836
    # addu	gp,t9,at
    # Line 87
    # lw $t9, -29492($gp) # &__glFreeAttributeState
    sd	$s0,0($sp)
    # Line 79
    move	$s0,$a0
    # Line 87
    jal	__glFreeAttributeState
    # Line 85
    sw	$s0,__glCurrentContext
    # Line 94
    # lw $t9, -28984($gp) # &__glFreeBufData
    jal	__glFreeBufData
    move	$a0,$s0
    # Line 97
    # lw $t9, -29016($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s0
    # ld	gp,24(sp)
    # Line 100
    ld	$s0,0($sp)
    ld	$ra,8($sp)
    # Line 99
    sw	$s8,__glCurrentContext
    # Line 100
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DestroySoftContext

# Function: InitFnPtrs
# Declared: Line 105 (Source lines: 107-214)
# Address: 0x0db0ed5c - 0x0db0f008 (Size: 684 bytes, Frame: 0)
.ent InitFnPtrs
InitFnPtrs:
    # Line 209
    la	$v1,__glSpanRenderDepth2
    # Line 210
    la	$a1,__glSpanRenderStencil
    # Line 209
    sw	$v1,12468($a0)
    # Line 205
    la	$v1,__glSpanRenderCI2
    # Line 210
    sw	$a1,12472($a0)
    # Line 206
    la	$a1,__glSpanRenderRGBA
    # Line 205
    sw	$v1,12452($a0)
    # Line 201
    la	$v1,__glSpanReadDepth2
    # Line 206
    sw	$a1,12456($a0)
    # Line 202
    la	$a1,__glSpanReadStencil
    # Line 201
    sw	$v1,12436($a0)
    # Line 197
    la	$v1,__glSpanReadCI2
    # Line 202
    sw	$a1,12440($a0)
    # Line 198
    la	$a1,__glSpanReadRGBA
    # Line 197
    sw	$v1,12420($a0)
    # Line 191
    la	$v1,__gl_varray_funcs
    # Line 198
    sw	$a1,12424($a0)
    # Line 193
    la	$a1,__glGenericPickCopyImage
    # Line 191
    sw	$v1,12668($a0)
    # Line 185
    la	$v1,__glGenericPickTriangleProcs
    # Line 193
    sw	$a1,12580($a0)
    # Line 186
    la	$a1,__glGenericPickVertexProcs
    # Line 185
    sw	$v1,11824($a0)
    # Line 181
    la	$v1,__glGenericPickMatrixProcs
    # Line 186
    sw	$a1,11856($a0)
    # Line 182
    la	$a1,__glGenericPickInvTransposeProcs
    # Line 181
    sw	$v1,11860($a0)
    # Line 176
    la	$v1,__glGenericPickRenderBitmapProcs
    # Line 182
    sw	$a1,11864($a0)
    # Line 177
    la	$a1,__glGenericPickTextureProcs
    # Line 176
    sw	$v1,11828($a0)
    # Line 172
    la	$v1,__glGenericPickFogProcs
    # Line 177
    sw	$a1,11804($a0)
    # Line 173
    la	$a1,__glGenericPickTransformProcs
    # Line 172
    sw	$v1,11808($a0)
    # Line 163
    la	$v1,__glRasterPos4
    # Line 173
    sw	$a1,11812($a0)
    # Line 169
    la	$a1,__glGenericPickAllProcs
    # Line 163
    sw	$v1,12632($a0)
    # Line 159
    la	$v1,__glFirstLinesVertex
    # Line 169
    sw	$a1,11876($a0)
    # Line 160
    la	$a1,__glSecondLinesVertex
    # Line 159
    sw	$v1,11968($a0)
    # Line 154
    la	$v1,__glEndPrim
    # Line 160
    sw	$a1,11972($a0)
    # Line 156
    la	$a1,__glNop
    # Line 154
    sw	$v1,12076($a0)
    # Line 150
    la	$v1,__glBeginTFan
    # Line 156
    sw	$a1,11956($a0)
    # Line 151
    la	$a1,__glBeginTriangles
    # Line 150
    sw	$v1,12060($a0)
    # Line 146
    la	$v1,__glBeginLines
    # Line 151
    sw	$a1,12052($a0)
    # Line 147
    la	$a1,__glBeginPoints
    # Line 146
    sw	$v1,12040($a0)
    # Line 137
    la	$v1,__glComputeInverseTranspose
    # Line 147
    sw	$a1,12036($a0)
    # Line 139
    la	$a1,__glMipsNormalize
    # Line 137
    sw	$v1,11908($a0)
    # Line 129
    la	$v1,__glCopyMatrix
    # Line 139
    sw	$a1,11912($a0)
    # Line 130
    la	$a1,__glInvertTransposeMatrix
    # Line 129
    sw	$v1,11880($a0)
    # Line 123
    la	$v1,__glConvertStipple
    # Line 130
    sw	$a1,11884($a0)
    # Line 125
    la	$a1,__glPushModelViewMatrix
    # Line 123
    sw	$v1,12664($a0)
    # Line 119
    la	$v1,__glDrawBitmap
    # Line 125
    sw	$a1,11896($a0)
    # Line 120
    la	$a1,__glRect
    # Line 119
    sw	$v1,12516($a0)
    # Line 112
    la	$v1,__glComputeClipBox
    # Line 120
    sw	$a1,12108($a0)
    # Line 115
    la	$a1,__glGenericPickBufferProcs
    # Line 112
    sw	$v1,11924($a0)
    # Line 110
    la	$v1,sub_0db10000
    # Line 115
    sw	$a1,11844($a0)
    # Line 111
    la	$a1,sub_0db10000
    # Line 110
    addiu	$v1,$v1,-5048
    # Line 213
    la	$v0,__glPixPickStoreProcs
    # Line 111
    addiu	$a1,$a1,-4908
    # Line 211
    la	$at,__glSpanRenderStencil2
    # Line 213
    sw	$v0,11848($a0)
    # Line 208
    la	$v0,__glSpanRenderDepth
    # Line 211
    sw	$at,12476($a0)
    # Line 207
    la	$at,__glSpanRenderRGBA2
    # Line 208
    sw	$v0,12464($a0)
    # Line 204
    la	$v0,__glSpanRenderCI
    # Line 207
    sw	$at,12460($a0)
    # Line 203
    la	$at,__glSpanReadStencil2
    # Line 204
    sw	$v0,12448($a0)
    # Line 200
    la	$v0,__glSpanReadDepth
    # Line 203
    sw	$at,12444($a0)
    # Line 199
    la	$at,__glSpanReadRGBA2
    # Line 200
    sw	$v0,12432($a0)
    # Line 196
    la	$v0,__glSpanReadCI
    # Line 199
    sw	$at,12428($a0)
    # Line 194
    la	$at,__glGenericPickReadImage
    # Line 196
    sw	$v0,12416($a0)
    # Line 188
    la	$v0,__glGenericPickDepthProcs
    # Line 194
    sw	$at,12584($a0)
    # Line 187
    la	$at,__glGenericPickPixelProcs
    # Line 188
    sw	$v0,11872($a0)
    # Line 184
    la	$v0,__glPixPickSpanProcs
    # Line 187
    sw	$at,11832($a0)
    # Line 183
    la	$at,__glGenericPickMvpMatrixProcs
    # Line 184
    sw	$v0,11852($a0)
    # Line 180
    la	$v0,__glGenericPickLineProcs
    # Line 183
    sw	$at,11868($a0)
    # Line 179
    la	$at,__glGenericPickClipProcs
    # Line 180
    sw	$v0,11820($a0)
    # Line 175
    la	$v0,__glGenericPickPointProcs
    # Line 179
    sw	$at,11836($a0)
    # Line 174
    la	$at,__glGenericPickParameterClipProcs
    # Line 175
    sw	$v0,11816($a0)
    # Line 171
    la	$v0,__glGenericPickColorMaterialProcs
    # Line 174
    sw	$at,11840($a0)
    # Line 170
    la	$at,__glGenericPickBlendProcs
    # Line 171
    sw	$v0,11800($a0)
    # Line 162
    la	$v0,__glRasterPos3
    # Line 170
    sw	$at,11796($a0)
    # Line 161
    la	$at,__glRasterPos2
    # Line 162
    sw	$v0,12628($a0)
    # Line 158
    la	$v0,__glOddTStripVertex
    # Line 161
    sw	$at,12624($a0)
    # Line 157
    la	$at,__glEvenTStripVertex
    # Line 158
    sw	$v0,11976($a0)
    # Line 153
    la	$v0,__glBeginQuads
    # Line 157
    sw	$at,11980($a0)
    # Line 152
    la	$at,__glBeginQStrip
    # Line 153
    sw	$v0,12064($a0)
    # Line 149
    la	$v0,__glBeginTStrip
    # Line 152
    sw	$at,12068($a0)
    # Line 148
    la	$at,__glBeginPolygon
    # Line 149
    sw	$v0,12056($a0)
    # Line 145
    la	$v0,__glBeginLStrip
    # Line 148
    sw	$at,12072($a0)
    # Line 144
    la	$at,__glBeginLLoop
    # Line 145
    sw	$v0,12048($a0)
    # Line 133
    la	$v0,__glMipsMultMatrix
    # Line 144
    sw	$at,12044($a0)
    # Line 131
    la	$at,__glMakeIdentity
    # Line 133
    sw	$v0,11892($a0)
    # Line 127
    la	$v0,__glLoadIdentityModelViewMatrix
    # Line 131
    sw	$at,11888($a0)
    # Line 126
    la	$at,__glPopModelViewMatrix
    # Line 127
    sw	$v0,11904($a0)
    # Line 122
    la	$v0,__glGenericValidate
    # Line 126
    sw	$at,11900($a0)
    # Line 121
    la	$at,__glClipPolygon
    # Line 122
    sw	$v0,11792($a0)
    # Line 118
    la	$v0,__glDoEvalCoord2
    # Line 121
    sw	$at,12100($a0)
    # Line 117
    la	$at,__glDoEvalCoord1
    # Line 118
    sw	$v0,12000($a0)
    # Line 114
    la	$v0,sub_0db10000
    # Line 117
    sw	$at,11996($a0)
    # Line 113
    la	$at,sub_0db10000
    # Line 111
    sw	$a1,11916($a0)
    # Line 114
    addiu	$v0,$v0,-4892
    # Line 113
    addiu	$at,$at,-4900
    sw	$at,11780($a0)
    # Line 107
    la	$at,sub_0db10000
    # Line 114
    sw	$v0,11776($a0)
    # Line 108
    la	$v0,sub_0db10000
    # Line 110
    sw	$v1,11920($a0)
    # Line 107
    addiu	$at,$at,-4876
    # Line 108
    addiu	$v0,$v0,-4884
    sw	$v0,120($a0)
    # Line 214
    jr	$ra
    # Line 107
    sw	$at,84($a0)
.end InitFnPtrs

# Function: InitBuffers
# Declared: Line 219 (Source lines: 220-285)
# Address: 0x0db0f008 - 0x0db0f1cc (Size: 452 bytes, Frame: 48)
.ent InitBuffers
InitBuffers:
    # Line 230
    addiu	$a3,$a0,30668
    # Line 220
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 227
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 220
    move	$s0,$a0
    # Line 227
    lw	$v0,11764($a0)
    # Line 230
    lbu	$at,3106($a0)
    sw	$a3,30660($a0)
    # Line 227
    ori	$v0,$v0,0xff
    # Line 230
    beqz	$at,.L0db0f168
    # Line 227
    sw	$v0,11764($a0)
    # Line 233
    lbu	$a2,3105($s0)
    sd	$ra,8($sp)
    addiu	$at,$s0,30888
    beqz	$a2,.L0db0f18c
    sw	$at,30664($s0)
    # Line 235
    # lw $t9, -25864($gp) # &__glPixInitCI
    move	$a0,$a3
    bal __glPixInitCI
    move	$a1,$s0
    # Line 236
    # lw $t9, -25864($gp) # &__glPixInitCI
    move	$a1,$s0
    bal __glPixInitCI
    lw	$a0,30664($s0)
    # Line 245
    lw	$v0,3180($s0)
.L0db0f070:
    blez	$v0,.L0db0f0dc
    # Line 264
    li	$at,1
    sd	$s2,16($sp)
    # Line 254
    move	$s2,$zero
    sd	$s1,24($sp)
    b	.L0db0f0ac
    move	$s1,$zero
.L0db0f08c:
    # Line 256
    # lw $t9, -25864($gp) # &__glPixInitCI
    bal __glPixInitCI
    move	$a1,$s0
.L0db0f098:
    # Line 254
    lw	$v1,3180($s0)
    addiu	$s2,$s2,1
    slt	$v1,$s2,$v1
    beqz	$v1,.L0db0f0d0
    addiu	$s1,$s1,220
.L0db0f0ac:
    lbu	$a2,3105($s0)
    lw	$a0,31108($s0)
    bnez	$a2,.L0db0f08c
    addu	$a0,$a0,$s1
    # Line 258
    # lw $t9, -25868($gp) # &__glPixInitRGB
    bal __glPixInitRGB
    move	$a1,$s0
    b	.L0db0f098
    nop
.L0db0f0d0:
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    # Line 264
    li	$at,1
.L0db0f0dc:
    # Line 265
    lbu	$v0,3108($s0)
    li	$v1,-1
    sw	$v1,4556($s0)
    beqz	$v0,.L0db0f108
    # Line 264
    sb	$at,4552($s0)
    # Line 269
    # lw $t9, -29720($gp) # &__glInitAccum64
    move	$a1,$s0
    jal	__glInitAccum64
    addiu	$a0,$s0,31364
    # Line 270
    la	$a2,__glPixmapAllocAccum
    sw	$a2,31496($s0)
.L0db0f108:
    lbu	$at,3109($s0)
    # Line 277
    lui	$v0,0x7fff
    # Line 270
    beqz	$at,.L0db0f130
    # Line 277
    ori	$v0,$v0,0xff80
    # Line 274
    # lw $t9, -28892($gp) # &__glInitDepth32
    move	$a1,$s0
    jal	__glInitDepth32
    addiu	$a0,$s0,31232
    b	.L0db0f138
    # Line 277
    lbu	$v1,3110($s0)
.L0db0f130:
    sw	$v0,31308($s0)
    lbu	$v1,3110($s0)
.L0db0f138:
    beqz	$v1,.L0db0f14c
    # Line 281
    nop	# was lw $t9, -27256($gp) # &__glInitStencil8
    move	$a1,$s0
    jal	__glInitStencil8
    addiu	$a0,$s0,31112
.L0db0f14c:
    # Line 284
    # lw $t9, -26084($gp) # &__glUpdateDepthRange
    bal __glUpdateDepthRange
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 285
    jr	$ra
    addiu	$sp,$sp,48
.L0db0f168:
    # Line 239
    lbu	$a2,3105($s0)
    beqz	$a2,.L0db0f1b4
    sd	$ra,8($sp)
    # Line 243
    # lw $t9, -25864($gp) # &__glPixInitCI
    move	$a0,$a3
    bal __glPixInitCI
    move	$a1,$s0
    b	.L0db0f070
    # Line 245
    lw	$v0,3180($s0)
.L0db0f18c:
    # Line 238
    # lw $t9, -25868($gp) # &__glPixInitRGB
    move	$a0,$a3
    bal __glPixInitRGB
    move	$a1,$s0
    # Line 239
    # lw $t9, -25868($gp) # &__glPixInitRGB
    move	$a1,$s0
    bal __glPixInitRGB
    lw	$a0,30664($s0)
    b	.L0db0f070
    # Line 245
    lw	$v0,3180($s0)
.L0db0f1b4:
    # lw $t9, -25868($gp) # &__glPixInitRGB
    move	$a0,$a3
    bal __glPixInitRGB
    move	$a1,$s0
    b	.L0db0f070
    lw	$v0,3180($s0)
.end InitBuffers

# Function: __glPixmapMakeCurrent
# Declared: Line 287 (Source lines: 288-403)
# Address: 0x0db0f1cc - 0x0db0f47c (Size: 688 bytes, Frame: 208)
.globl __glPixmapMakeCurrent
.ent __glPixmapMakeCurrent
__glPixmapMakeCurrent:
    # Line 294
    li	$a5,257
    move	$a6,$zero
    addiu	$a7,$a0,7648
    # Line 293
    addiu	$a2,$a0,7648
    # Line 288
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    move	$s0,$a0
    # Line 293
    sw	$a2,5580($a0)
    sd	$gp,40($sp)
    # Line 288
    lui	$at,0xf
    addiu	$at,$at,-31076
    addu	$gp,$t9,$at
    la	$a3,__glPixImmedState
    # Line 295
    li	$a0,257
    # Line 300
    li	$at,2
    # Line 294
    move	$t0,$a3
.L0db0f20c:
    addu	$v1,$a6,$a7
    addu	$v0,$a6,$t0
    addiu	$a6,$a6,8
    ld	$v0,0($v0)
    addiu	$a5,$a5,-1
    bgtz	$a5,.L0db0f20c
    sd	$v0,0($v1)
    # Line 295
    move	$a5,$zero
    addiu	$a6,$s0,5584
    la	$a7,__glPixListCompState
.L0db0f234:
    addu	$a4,$a5,$a6
    addu	$v1,$a5,$a7
    addiu	$a5,$a5,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db0f234
    sd	$v1,0($a4)
    sd	$a1,8($sp)
    # Line 300
    sw	$at,__glBeginMode
    sd	$a2,16($sp)
    lw	$at,11764($s0)
    lw	$a4,148($s0)
    sd	$ra,56($sp)
    ori	$at,$at,0x80
    andi	$a4,$a4,0x4
    beqz	$a4,.L0db0f440
    sw	$at,11764($s0)
    # Line 314
    # lw $t9, -28992($gp) # &__glMakeCurrentBuffers
.L0db0f27c:
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    addiu	$a1,$sp,0
    andi	$v0,$v0,0xff
    beqz	$v0,.L0db0f2a4
    # Line 324
    ld	$a4,8($sp)
    # Line 322
    lw	$v1,31500($s0)
    lw	$v1,28($v1)
    # Line 324
    sw	$a4,30684($s0)
    # Line 325
    sw	$zero,24($v1)
.L0db0f2a4:
    # Line 333
    addiu	$a4,$s0,30668
    # Line 334
    lw	$at,148($s0)
    addiu	$v0,$s0,30888
    sw	$v0,30664($s0)
    andi	$at,$at,0x4
    beqz	$at,.L0db0f458
    # Line 333
    sw	$a4,30660($s0)
    # Line 344
    # lw $t9, -28996($gp) # &__glFindWindowSize
.L0db0f2c4:
    jal	__glFindWindowSize
    move	$a0,$s0
    lw	$v1,148($s0)
    andi	$v1,$v1,0x6
    beqz	$v1,.L0db0f3b0
    # Line 366
    nop	# was lw $t9, -32700($gp) # &sub_0db10000
    addiu	$t9,$t9,-5048
    bal __glPixmapAllocAccum
    move	$a0,$s0
    # Line 372
    # lw $t9, -29024($gp) # &__glContextSetColorScales
.L0db0f2ec:
    jal	__glContextSetColorScales
    move	$a0,$s0
    # Line 377
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,56($sp)
    # Line 386
    move	$a1,$zero
    addiu	$a3,$s0,5584
    # Line 392
    addiu	$a4,$s0,9704
    # Line 377
    lw	$at,4160($zero)
    beqz	$at,.L0db0f374
    lw	$a0,4688($s0)
    beqz	$a0,.L0db0f470
    # Line 385
    addiu	$v0,$s0,9704
    # Line 386
    addiu	$a2,$s0,7648
    li	$a0,257
    # Line 385
    sw	$v0,5580($s0)
.L0db0f330:
    # Line 386
    addu	$a4,$a1,$a2
    addu	$v1,$a1,$a3
    addiu	$a1,$a1,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db0f330
    sd	$v1,0($a4)
.L0db0f34c:
    ld	$gp,40($sp)
.L0db0f350:
    # Line 400
    lw	$a0,148($s0)
    # Line 403
    li	$v0,1
    # Line 401
    li	$a4,-3
    # Line 400
    ori	$a0,$a0,0x4
    # Line 401
    and	$a0,$a0,$a4
    sw	$a0,148($s0)
    # Line 403
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0f374:
    # Line 388
    beqz	$a0,.L0db0f404
    # Line 393
    li	$a2,4168
    li	$a1,257
    move	$a0,$zero
    addiu	$a3,$s0,5584
    # Line 392
    sw	$a4,5580($s0)
.L0db0f38c:
    # Line 393
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a3
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db0f38c
    sd	$at,0($v0)
    b	.L0db0f350
    ld	$gp,40($sp)
.L0db0f3b0:
    # Line 351
    # lw $t9, -29020($gp) # &__glSoftResetContext
    jal	__glSoftResetContext
    move	$a0,$s0
    # Line 363
    move	$a1,$zero
    # lw $t9, -23036($gp) # &__glPixImmedState
    move	$a0,$zero
    # Line 362
    lw	$a3,3416($s0)
    # Line 363
    lw	$t9,668($t9)
    # Line 361
    lw	$a2,3412($s0)
    sd	$a3,32($sp)
    # Line 363
    jal	__glPixImmedState
    sd	$a2,24($sp)
    # lw $t9, -23036($gp) # &__glPixImmedState
    # Line 364
    move	$a0,$zero
    lw	$t9,152($t9)
    move	$a1,$zero
    ld	$a2,24($sp)
    jal	__glPixImmedState
    ld	$a3,32($sp)
    b	.L0db0f2ec
    # Line 372
    nop	# was lw $t9, -29024($gp) # &__glContextSetColorScales
.L0db0f404:
    # Line 396
    li	$a0,257
    move	$a1,$zero
    li	$a3,4168
    addiu	$a2,$s0,7648
    # Line 395
    li	$at,4168
    sw	$at,5580($s0)
.L0db0f41c:
    # Line 396
    addu	$v1,$a1,$a3
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db0f41c
    sd	$v0,0($v1)
    b	.L0db0f350
    ld	$gp,40($sp)
.L0db0f440:
    # Line 308
    # lw $t9, -32700($gp) # &sub_0db10000
    addiu	$t9,$t9,-4088
    bal __glPixmapAllocAccum
    move	$a0,$s0
    b	.L0db0f27c
    # Line 314
    nop	# was lw $t9, -28992($gp) # &__glMakeCurrentBuffers
.L0db0f458:
    # Line 338
    # lw $t9, -32700($gp) # &sub_0db10000
    addiu	$t9,$t9,-4772
    bal __glPixmapAllocAccum
    move	$a0,$s0
    b	.L0db0f2c4
    # Line 344
    nop	# was lw $t9, -28996($gp) # &__glFindWindowSize
.L0db0f470:
    ld	$at,16($sp)
    b	.L0db0f34c
    # Line 388
    sw	$at,5580($s0)
.end __glPixmapMakeCurrent

