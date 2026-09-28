# Source: g_lexec.c
# Category: gl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lexec.c
# Total Functions: 220

.text

# Function: __glle_ListBase
# Declared: Line 38 (Source lines: 39-44)
# Address: 0x0db1da60 - 0x0db1daa4 (Size: 68 bytes, Frame: 48)
.globl __glle_ListBase
.ent __glle_ListBase
__glle_ListBase:
    # Line 39
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25080
    # addu	gp,t9,at
    # Line 43
    lw	$t9,4192($zero)
    # Line 39
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 43
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 44
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ListBase

# Function: __glle_Color3bv
# Declared: Line 51 (Source lines: 52-57)
# Address: 0x0db1daa4 - 0x0db1dae4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3bv
.ent __glle_Color3bv
__glle_Color3bv:
    # Line 52
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25148
    # addu	gp,t9,at
    # Line 56
    lw	$t9,5752($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 52
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 57
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3bv

# Function: __glle_Color3dv
# Declared: Line 62 (Source lines: 63-68)
# Address: 0x0db1dae4 - 0x0db1db24 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3dv
.ent __glle_Color3dv
__glle_Color3dv:
    # Line 63
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25212
    # addu	gp,t9,at
    # Line 67
    lw	$t9,5760($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 63
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 68
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3dv

# Function: __glle_Color3fv
# Declared: Line 73 (Source lines: 74-79)
# Address: 0x0db1db24 - 0x0db1db64 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3fv
.ent __glle_Color3fv
__glle_Color3fv:
    # Line 74
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25276
    # addu	gp,t9,at
    # Line 78
    lw	$t9,5768($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 74
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 79
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3fv

# Function: __glle_Color3iv
# Declared: Line 84 (Source lines: 85-90)
# Address: 0x0db1db64 - 0x0db1dba4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3iv
.ent __glle_Color3iv
__glle_Color3iv:
    # Line 85
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25340
    # addu	gp,t9,at
    # Line 89
    lw	$t9,5776($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 85
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 90
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3iv

# Function: __glle_Color3sv
# Declared: Line 95 (Source lines: 96-101)
# Address: 0x0db1dba4 - 0x0db1dbe4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3sv
.ent __glle_Color3sv
__glle_Color3sv:
    # Line 96
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25404
    # addu	gp,t9,at
    # Line 100
    lw	$t9,5784($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 96
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 101
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3sv

# Function: __glle_Color3ubv
# Declared: Line 106 (Source lines: 107-112)
# Address: 0x0db1dbe4 - 0x0db1dc24 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3ubv
.ent __glle_Color3ubv
__glle_Color3ubv:
    # Line 107
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25468
    # addu	gp,t9,at
    # Line 111
    lw	$t9,5792($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 107
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 112
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3ubv

# Function: __glle_Color3uiv
# Declared: Line 117 (Source lines: 118-123)
# Address: 0x0db1dc24 - 0x0db1dc64 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3uiv
.ent __glle_Color3uiv
__glle_Color3uiv:
    # Line 118
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25532
    # addu	gp,t9,at
    # Line 122
    lw	$t9,5800($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 118
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 123
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3uiv

# Function: __glle_Color3usv
# Declared: Line 128 (Source lines: 129-134)
# Address: 0x0db1dc64 - 0x0db1dca4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color3usv
.ent __glle_Color3usv
__glle_Color3usv:
    # Line 129
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25596
    # addu	gp,t9,at
    # Line 133
    lw	$t9,5808($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 129
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 134
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color3usv

# Function: __glle_Color4bv
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0db1dca4 - 0x0db1dce4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4bv
.ent __glle_Color4bv
__glle_Color4bv:
    # Line 140
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25660
    # addu	gp,t9,at
    # Line 144
    lw	$t9,5816($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 140
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 145
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4bv

# Function: __glle_Color4dv
# Declared: Line 150 (Source lines: 151-156)
# Address: 0x0db1dce4 - 0x0db1dd24 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4dv
.ent __glle_Color4dv
__glle_Color4dv:
    # Line 151
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25724
    # addu	gp,t9,at
    # Line 155
    lw	$t9,5824($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 151
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 156
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4dv

# Function: __glle_Color4fv
# Declared: Line 161 (Source lines: 162-167)
# Address: 0x0db1dd24 - 0x0db1dd64 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4fv
.ent __glle_Color4fv
__glle_Color4fv:
    # Line 162
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25788
    # addu	gp,t9,at
    # Line 166
    lw	$t9,5832($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 162
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 167
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4fv

# Function: __glle_Color4iv
# Declared: Line 172 (Source lines: 173-178)
# Address: 0x0db1dd64 - 0x0db1dda4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4iv
.ent __glle_Color4iv
__glle_Color4iv:
    # Line 173
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25852
    # addu	gp,t9,at
    # Line 177
    lw	$t9,5840($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 173
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 178
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4iv

# Function: __glle_Color4sv
# Declared: Line 183 (Source lines: 184-189)
# Address: 0x0db1dda4 - 0x0db1dde4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4sv
.ent __glle_Color4sv
__glle_Color4sv:
    # Line 184
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25916
    # addu	gp,t9,at
    # Line 188
    lw	$t9,5848($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 184
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 189
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4sv

# Function: __glle_Color4ubv
# Declared: Line 194 (Source lines: 195-200)
# Address: 0x0db1dde4 - 0x0db1de24 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4ubv
.ent __glle_Color4ubv
__glle_Color4ubv:
    # Line 195
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-25980
    # addu	gp,t9,at
    # Line 199
    lw	$t9,5856($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 195
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 200
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4ubv

# Function: __glle_Color4uiv
# Declared: Line 205 (Source lines: 206-211)
# Address: 0x0db1de24 - 0x0db1de64 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4uiv
.ent __glle_Color4uiv
__glle_Color4uiv:
    # Line 206
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26044
    # addu	gp,t9,at
    # Line 210
    lw	$t9,5864($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 206
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 211
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4uiv

# Function: __glle_Color4usv
# Declared: Line 216 (Source lines: 217-222)
# Address: 0x0db1de64 - 0x0db1dea4 (Size: 64 bytes, Frame: 48)
.globl __glle_Color4usv
.ent __glle_Color4usv
__glle_Color4usv:
    # Line 217
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26108
    # addu	gp,t9,at
    # Line 221
    lw	$t9,5872($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 217
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 222
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Color4usv

# Function: __glle_EdgeFlagv
# Declared: Line 227 (Source lines: 228-233)
# Address: 0x0db1dea4 - 0x0db1dee4 (Size: 64 bytes, Frame: 48)
.globl __glle_EdgeFlagv
.ent __glle_EdgeFlagv
__glle_EdgeFlagv:
    # Line 228
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26172
    # addu	gp,t9,at
    # Line 232
    lw	$t9,4208($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 228
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 233
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EdgeFlagv

# Function: __glle_End
# Declared: Line 237 (Source lines: 238-241)
# Address: 0x0db1dee4 - 0x0db1df24 (Size: 64 bytes, Frame: 48)
.globl __glle_End
.ent __glle_End
__glle_End:
    # Line 238
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26236
    # addu	gp,t9,at
    # Line 240
    lw	$t9,4212($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 238
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 241
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_End

# Function: __glle_Indexdv
# Declared: Line 246 (Source lines: 247-252)
# Address: 0x0db1df24 - 0x0db1df64 (Size: 64 bytes, Frame: 48)
.globl __glle_Indexdv
.ent __glle_Indexdv
__glle_Indexdv:
    # Line 247
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26300
    # addu	gp,t9,at
    # Line 251
    lw	$t9,5880($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 247
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 252
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Indexdv

# Function: __glle_Indexfv
# Declared: Line 257 (Source lines: 258-263)
# Address: 0x0db1df64 - 0x0db1dfa4 (Size: 64 bytes, Frame: 48)
.globl __glle_Indexfv
.ent __glle_Indexfv
__glle_Indexfv:
    # Line 258
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26364
    # addu	gp,t9,at
    # Line 262
    lw	$t9,5888($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 258
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 263
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Indexfv

# Function: __glle_Indexiv
# Declared: Line 268 (Source lines: 269-274)
# Address: 0x0db1dfa4 - 0x0db1dfe4 (Size: 64 bytes, Frame: 48)
.globl __glle_Indexiv
.ent __glle_Indexiv
__glle_Indexiv:
    # Line 269
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26428
    # addu	gp,t9,at
    # Line 273
    lw	$t9,5896($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 269
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 274
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Indexiv

# Function: __glle_Indexsv
# Declared: Line 279 (Source lines: 280-285)
# Address: 0x0db1dfe4 - 0x0db1e024 (Size: 64 bytes, Frame: 48)
.globl __glle_Indexsv
.ent __glle_Indexsv
__glle_Indexsv:
    # Line 280
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26492
    # addu	gp,t9,at
    # Line 284
    lw	$t9,5904($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 280
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 285
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Indexsv

# Function: __glle_Normal3bv
# Declared: Line 290 (Source lines: 291-296)
# Address: 0x0db1e024 - 0x0db1e064 (Size: 64 bytes, Frame: 48)
.globl __glle_Normal3bv
.ent __glle_Normal3bv
__glle_Normal3bv:
    # Line 291
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26556
    # addu	gp,t9,at
    # Line 295
    lw	$t9,5920($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 291
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 296
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Normal3bv

# Function: __glle_Normal3dv
# Declared: Line 301 (Source lines: 302-307)
# Address: 0x0db1e064 - 0x0db1e0a4 (Size: 64 bytes, Frame: 48)
.globl __glle_Normal3dv
.ent __glle_Normal3dv
__glle_Normal3dv:
    # Line 302
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26620
    # addu	gp,t9,at
    # Line 306
    lw	$t9,5928($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 302
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 307
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Normal3dv

# Function: __glle_Normal3fv
# Declared: Line 312 (Source lines: 313-318)
# Address: 0x0db1e0a4 - 0x0db1e0e4 (Size: 64 bytes, Frame: 48)
.globl __glle_Normal3fv
.ent __glle_Normal3fv
__glle_Normal3fv:
    # Line 313
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26684
    # addu	gp,t9,at
    # Line 317
    lw	$t9,5936($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 313
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 318
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Normal3fv

# Function: __glle_Normal3iv
# Declared: Line 323 (Source lines: 324-329)
# Address: 0x0db1e0e4 - 0x0db1e124 (Size: 64 bytes, Frame: 48)
.globl __glle_Normal3iv
.ent __glle_Normal3iv
__glle_Normal3iv:
    # Line 324
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26748
    # addu	gp,t9,at
    # Line 328
    lw	$t9,5944($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 324
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 329
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Normal3iv

# Function: __glle_Normal3sv
# Declared: Line 334 (Source lines: 335-340)
# Address: 0x0db1e124 - 0x0db1e164 (Size: 64 bytes, Frame: 48)
.globl __glle_Normal3sv
.ent __glle_Normal3sv
__glle_Normal3sv:
    # Line 335
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26812
    # addu	gp,t9,at
    # Line 339
    lw	$t9,5952($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 335
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 340
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Normal3sv

# Function: __glle_RasterPos2dv
# Declared: Line 345 (Source lines: 346-351)
# Address: 0x0db1e164 - 0x0db1e1a4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos2dv
.ent __glle_RasterPos2dv
__glle_RasterPos2dv:
    # Line 346
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26876
    # addu	gp,t9,at
    # Line 350
    lw	$t9,6088($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 346
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 351
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos2dv

# Function: __glle_RasterPos2fv
# Declared: Line 356 (Source lines: 357-362)
# Address: 0x0db1e1a4 - 0x0db1e1e4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos2fv
.ent __glle_RasterPos2fv
__glle_RasterPos2fv:
    # Line 357
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-26940
    # addu	gp,t9,at
    # Line 361
    lw	$t9,6096($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 357
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 362
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos2fv

# Function: __glle_RasterPos2iv
# Declared: Line 367 (Source lines: 368-373)
# Address: 0x0db1e1e4 - 0x0db1e224 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos2iv
.ent __glle_RasterPos2iv
__glle_RasterPos2iv:
    # Line 368
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27004
    # addu	gp,t9,at
    # Line 372
    lw	$t9,6104($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 368
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 373
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos2iv

# Function: __glle_RasterPos2sv
# Declared: Line 378 (Source lines: 379-384)
# Address: 0x0db1e224 - 0x0db1e264 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos2sv
.ent __glle_RasterPos2sv
__glle_RasterPos2sv:
    # Line 379
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27068
    # addu	gp,t9,at
    # Line 383
    lw	$t9,6112($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 379
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 384
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos2sv

# Function: __glle_RasterPos3dv
# Declared: Line 389 (Source lines: 390-395)
# Address: 0x0db1e264 - 0x0db1e2a4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos3dv
.ent __glle_RasterPos3dv
__glle_RasterPos3dv:
    # Line 390
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27132
    # addu	gp,t9,at
    # Line 394
    lw	$t9,6120($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 390
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 395
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos3dv

# Function: __glle_RasterPos3fv
# Declared: Line 400 (Source lines: 401-406)
# Address: 0x0db1e2a4 - 0x0db1e2e4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos3fv
.ent __glle_RasterPos3fv
__glle_RasterPos3fv:
    # Line 401
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27196
    # addu	gp,t9,at
    # Line 405
    lw	$t9,6128($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 401
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 406
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos3fv

# Function: __glle_RasterPos3iv
# Declared: Line 411 (Source lines: 412-417)
# Address: 0x0db1e2e4 - 0x0db1e324 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos3iv
.ent __glle_RasterPos3iv
__glle_RasterPos3iv:
    # Line 412
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27260
    # addu	gp,t9,at
    # Line 416
    lw	$t9,6136($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 412
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 417
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos3iv

# Function: __glle_RasterPos3sv
# Declared: Line 422 (Source lines: 423-428)
# Address: 0x0db1e324 - 0x0db1e364 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos3sv
.ent __glle_RasterPos3sv
__glle_RasterPos3sv:
    # Line 423
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27324
    # addu	gp,t9,at
    # Line 427
    lw	$t9,6144($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 423
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 428
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos3sv

# Function: __glle_RasterPos4dv
# Declared: Line 433 (Source lines: 434-439)
# Address: 0x0db1e364 - 0x0db1e3a4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos4dv
.ent __glle_RasterPos4dv
__glle_RasterPos4dv:
    # Line 434
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27388
    # addu	gp,t9,at
    # Line 438
    lw	$t9,6152($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 434
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 439
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos4dv

# Function: __glle_RasterPos4fv
# Declared: Line 444 (Source lines: 445-450)
# Address: 0x0db1e3a4 - 0x0db1e3e4 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos4fv
.ent __glle_RasterPos4fv
__glle_RasterPos4fv:
    # Line 445
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27452
    # addu	gp,t9,at
    # Line 449
    lw	$t9,6160($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 445
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 450
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos4fv

# Function: __glle_RasterPos4iv
# Declared: Line 455 (Source lines: 456-461)
# Address: 0x0db1e3e4 - 0x0db1e424 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos4iv
.ent __glle_RasterPos4iv
__glle_RasterPos4iv:
    # Line 456
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27516
    # addu	gp,t9,at
    # Line 460
    lw	$t9,6168($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 456
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 461
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos4iv

# Function: __glle_RasterPos4sv
# Declared: Line 466 (Source lines: 467-472)
# Address: 0x0db1e424 - 0x0db1e464 (Size: 64 bytes, Frame: 48)
.globl __glle_RasterPos4sv
.ent __glle_RasterPos4sv
__glle_RasterPos4sv:
    # Line 467
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27580
    # addu	gp,t9,at
    # Line 471
    lw	$t9,6176($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 467
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 472
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_RasterPos4sv

# Function: __glle_Rectdv
# Declared: Line 477 (Source lines: 478-483)
# Address: 0x0db1e464 - 0x0db1e4a8 (Size: 68 bytes, Frame: 48)
.globl __glle_Rectdv
.ent __glle_Rectdv
__glle_Rectdv:
    # Line 482
    addiu	$a1,$a0,16
    # Line 478
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27644
    # addu	gp,t9,at
    # Line 482
    lw	$t9,6184($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 478
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 483
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rectdv

# Function: __glle_Rectfv
# Declared: Line 488 (Source lines: 489-494)
# Address: 0x0db1e4a8 - 0x0db1e4ec (Size: 68 bytes, Frame: 48)
.globl __glle_Rectfv
.ent __glle_Rectfv
__glle_Rectfv:
    # Line 493
    addiu	$a1,$a0,8
    # Line 489
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27712
    # addu	gp,t9,at
    # Line 493
    lw	$t9,6192($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 489
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 494
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rectfv

# Function: __glle_Rectiv
# Declared: Line 499 (Source lines: 500-505)
# Address: 0x0db1e4ec - 0x0db1e530 (Size: 68 bytes, Frame: 48)
.globl __glle_Rectiv
.ent __glle_Rectiv
__glle_Rectiv:
    # Line 504
    addiu	$a1,$a0,8
    # Line 500
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27780
    # addu	gp,t9,at
    # Line 504
    lw	$t9,6200($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 500
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 505
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rectiv

# Function: __glle_Rectsv
# Declared: Line 510 (Source lines: 511-516)
# Address: 0x0db1e530 - 0x0db1e574 (Size: 68 bytes, Frame: 48)
.globl __glle_Rectsv
.ent __glle_Rectsv
__glle_Rectsv:
    # Line 515
    addiu	$a1,$a0,4
    # Line 511
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27848
    # addu	gp,t9,at
    # Line 515
    lw	$t9,6208($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 511
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 516
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rectsv

# Function: __glle_TexCoord1dv
# Declared: Line 521 (Source lines: 522-527)
# Address: 0x0db1e574 - 0x0db1e5b4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord1dv
.ent __glle_TexCoord1dv
__glle_TexCoord1dv:
    # Line 522
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27916
    # addu	gp,t9,at
    # Line 526
    lw	$t9,5960($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 522
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 527
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord1dv

# Function: __glle_TexCoord1fv
# Declared: Line 532 (Source lines: 533-538)
# Address: 0x0db1e5b4 - 0x0db1e5f4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord1fv
.ent __glle_TexCoord1fv
__glle_TexCoord1fv:
    # Line 533
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-27980
    # addu	gp,t9,at
    # Line 537
    lw	$t9,5968($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 533
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 538
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord1fv

# Function: __glle_TexCoord1iv
# Declared: Line 543 (Source lines: 544-549)
# Address: 0x0db1e5f4 - 0x0db1e634 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord1iv
.ent __glle_TexCoord1iv
__glle_TexCoord1iv:
    # Line 544
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28044
    # addu	gp,t9,at
    # Line 548
    lw	$t9,5976($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 544
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 549
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord1iv

# Function: __glle_TexCoord1sv
# Declared: Line 554 (Source lines: 555-560)
# Address: 0x0db1e634 - 0x0db1e674 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord1sv
.ent __glle_TexCoord1sv
__glle_TexCoord1sv:
    # Line 555
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28108
    # addu	gp,t9,at
    # Line 559
    lw	$t9,5984($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 555
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 560
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord1sv

# Function: __glle_TexCoord2dv
# Declared: Line 565 (Source lines: 566-571)
# Address: 0x0db1e674 - 0x0db1e6b4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord2dv
.ent __glle_TexCoord2dv
__glle_TexCoord2dv:
    # Line 566
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28172
    # addu	gp,t9,at
    # Line 570
    lw	$t9,5992($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 566
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 571
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord2dv

# Function: __glle_TexCoord2fv
# Declared: Line 576 (Source lines: 577-582)
# Address: 0x0db1e6b4 - 0x0db1e6f4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord2fv
.ent __glle_TexCoord2fv
__glle_TexCoord2fv:
    # Line 577
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28236
    # addu	gp,t9,at
    # Line 581
    lw	$t9,6000($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 577
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 582
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord2fv

# Function: __glle_TexCoord2iv
# Declared: Line 587 (Source lines: 588-593)
# Address: 0x0db1e6f4 - 0x0db1e734 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord2iv
.ent __glle_TexCoord2iv
__glle_TexCoord2iv:
    # Line 588
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28300
    # addu	gp,t9,at
    # Line 592
    lw	$t9,6008($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 588
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 593
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord2iv

# Function: __glle_TexCoord2sv
# Declared: Line 598 (Source lines: 599-604)
# Address: 0x0db1e734 - 0x0db1e774 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord2sv
.ent __glle_TexCoord2sv
__glle_TexCoord2sv:
    # Line 599
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28364
    # addu	gp,t9,at
    # Line 603
    lw	$t9,6016($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 599
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 604
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord2sv

# Function: __glle_TexCoord3dv
# Declared: Line 609 (Source lines: 610-615)
# Address: 0x0db1e774 - 0x0db1e7b4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord3dv
.ent __glle_TexCoord3dv
__glle_TexCoord3dv:
    # Line 610
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28428
    # addu	gp,t9,at
    # Line 614
    lw	$t9,6024($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 610
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 615
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord3dv

# Function: __glle_TexCoord3fv
# Declared: Line 620 (Source lines: 621-626)
# Address: 0x0db1e7b4 - 0x0db1e7f4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord3fv
.ent __glle_TexCoord3fv
__glle_TexCoord3fv:
    # Line 621
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28492
    # addu	gp,t9,at
    # Line 625
    lw	$t9,6032($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 621
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 626
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord3fv

# Function: __glle_TexCoord3iv
# Declared: Line 631 (Source lines: 632-637)
# Address: 0x0db1e7f4 - 0x0db1e834 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord3iv
.ent __glle_TexCoord3iv
__glle_TexCoord3iv:
    # Line 632
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28556
    # addu	gp,t9,at
    # Line 636
    lw	$t9,6040($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 632
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 637
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord3iv

# Function: __glle_TexCoord3sv
# Declared: Line 642 (Source lines: 643-648)
# Address: 0x0db1e834 - 0x0db1e874 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord3sv
.ent __glle_TexCoord3sv
__glle_TexCoord3sv:
    # Line 643
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28620
    # addu	gp,t9,at
    # Line 647
    lw	$t9,6048($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 643
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 648
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord3sv

# Function: __glle_TexCoord4dv
# Declared: Line 653 (Source lines: 654-659)
# Address: 0x0db1e874 - 0x0db1e8b4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord4dv
.ent __glle_TexCoord4dv
__glle_TexCoord4dv:
    # Line 654
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28684
    # addu	gp,t9,at
    # Line 658
    lw	$t9,6056($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 654
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 659
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord4dv

# Function: __glle_TexCoord4fv
# Declared: Line 664 (Source lines: 665-670)
# Address: 0x0db1e8b4 - 0x0db1e8f4 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord4fv
.ent __glle_TexCoord4fv
__glle_TexCoord4fv:
    # Line 665
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28748
    # addu	gp,t9,at
    # Line 669
    lw	$t9,6064($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 665
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 670
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord4fv

# Function: __glle_TexCoord4iv
# Declared: Line 675 (Source lines: 676-681)
# Address: 0x0db1e8f4 - 0x0db1e934 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord4iv
.ent __glle_TexCoord4iv
__glle_TexCoord4iv:
    # Line 676
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28812
    # addu	gp,t9,at
    # Line 680
    lw	$t9,6072($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 676
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 681
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord4iv

# Function: __glle_TexCoord4sv
# Declared: Line 686 (Source lines: 687-692)
# Address: 0x0db1e934 - 0x0db1e974 (Size: 64 bytes, Frame: 48)
.globl __glle_TexCoord4sv
.ent __glle_TexCoord4sv
__glle_TexCoord4sv:
    # Line 687
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28876
    # addu	gp,t9,at
    # Line 691
    lw	$t9,6080($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 687
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 692
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TexCoord4sv

# Function: __glle_Vertex2dv
# Declared: Line 697 (Source lines: 698-703)
# Address: 0x0db1e974 - 0x0db1e9b4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex2dv
.ent __glle_Vertex2dv
__glle_Vertex2dv:
    # Line 698
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-28940
    # addu	gp,t9,at
    # Line 702
    lw	$t9,5656($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 698
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 703
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex2dv

# Function: __glle_Vertex2fv
# Declared: Line 708 (Source lines: 709-714)
# Address: 0x0db1e9b4 - 0x0db1e9f4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex2fv
.ent __glle_Vertex2fv
__glle_Vertex2fv:
    # Line 709
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29004
    # addu	gp,t9,at
    # Line 713
    lw	$t9,5664($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 709
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 714
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex2fv

# Function: __glle_Vertex2iv
# Declared: Line 719 (Source lines: 720-725)
# Address: 0x0db1e9f4 - 0x0db1ea34 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex2iv
.ent __glle_Vertex2iv
__glle_Vertex2iv:
    # Line 720
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29068
    # addu	gp,t9,at
    # Line 724
    lw	$t9,5672($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 720
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 725
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex2iv

# Function: __glle_Vertex2sv
# Declared: Line 730 (Source lines: 731-736)
# Address: 0x0db1ea34 - 0x0db1ea74 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex2sv
.ent __glle_Vertex2sv
__glle_Vertex2sv:
    # Line 731
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29132
    # addu	gp,t9,at
    # Line 735
    lw	$t9,5680($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 731
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 736
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex2sv

# Function: __glle_Vertex3dv
# Declared: Line 741 (Source lines: 742-747)
# Address: 0x0db1ea74 - 0x0db1eab4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex3dv
.ent __glle_Vertex3dv
__glle_Vertex3dv:
    # Line 742
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29196
    # addu	gp,t9,at
    # Line 746
    lw	$t9,5688($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 742
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 747
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex3dv

# Function: __glle_Vertex3fv
# Declared: Line 752 (Source lines: 753-758)
# Address: 0x0db1eab4 - 0x0db1eaf4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex3fv
.ent __glle_Vertex3fv
__glle_Vertex3fv:
    # Line 753
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29260
    # addu	gp,t9,at
    # Line 757
    lw	$t9,5696($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 753
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 758
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex3fv

# Function: __glle_Vertex3iv
# Declared: Line 763 (Source lines: 764-769)
# Address: 0x0db1eaf4 - 0x0db1eb34 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex3iv
.ent __glle_Vertex3iv
__glle_Vertex3iv:
    # Line 764
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29324
    # addu	gp,t9,at
    # Line 768
    lw	$t9,5704($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 764
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 769
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex3iv

# Function: __glle_Vertex3sv
# Declared: Line 774 (Source lines: 775-780)
# Address: 0x0db1eb34 - 0x0db1eb74 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex3sv
.ent __glle_Vertex3sv
__glle_Vertex3sv:
    # Line 775
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29388
    # addu	gp,t9,at
    # Line 779
    lw	$t9,5712($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 775
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 780
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex3sv

# Function: __glle_Vertex4dv
# Declared: Line 785 (Source lines: 786-791)
# Address: 0x0db1eb74 - 0x0db1ebb4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex4dv
.ent __glle_Vertex4dv
__glle_Vertex4dv:
    # Line 786
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29452
    # addu	gp,t9,at
    # Line 790
    lw	$t9,5720($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 786
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 791
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex4dv

# Function: __glle_Vertex4fv
# Declared: Line 796 (Source lines: 797-802)
# Address: 0x0db1ebb4 - 0x0db1ebf4 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex4fv
.ent __glle_Vertex4fv
__glle_Vertex4fv:
    # Line 797
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29516
    # addu	gp,t9,at
    # Line 801
    lw	$t9,5728($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 797
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 802
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex4fv

# Function: __glle_Vertex4iv
# Declared: Line 807 (Source lines: 808-813)
# Address: 0x0db1ebf4 - 0x0db1ec34 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex4iv
.ent __glle_Vertex4iv
__glle_Vertex4iv:
    # Line 808
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29580
    # addu	gp,t9,at
    # Line 812
    lw	$t9,5736($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 808
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 813
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex4iv

# Function: __glle_Vertex4sv
# Declared: Line 818 (Source lines: 819-824)
# Address: 0x0db1ec34 - 0x0db1ec74 (Size: 64 bytes, Frame: 48)
.globl __glle_Vertex4sv
.ent __glle_Vertex4sv
__glle_Vertex4sv:
    # Line 819
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29644
    # addu	gp,t9,at
    # Line 823
    lw	$t9,5744($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 819
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 824
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Vertex4sv

# Function: __glle_ClipPlane
# Declared: Line 828 (Source lines: 829-834)
# Address: 0x0db1ec74 - 0x0db1ecbc (Size: 72 bytes, Frame: 48)
.globl __glle_ClipPlane
.ent __glle_ClipPlane
__glle_ClipPlane:
    # Line 833
    move	$a1,$a0
    # Line 829
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29708
    # addu	gp,t9,at
    # Line 833
    lw	$t9,4216($zero)
    # Line 829
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 833
    jalr	$t9
    lw	$a0,32($a0)
    # ld	gp,16(sp)
    # Line 834
    ld	$ra,0($sp)
    addiu	$v0,$s8,40
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClipPlane

# Function: __glle_ColorMaterial
# Declared: Line 838 (Source lines: 839-844)
# Address: 0x0db1ecbc - 0x0db1ed04 (Size: 72 bytes, Frame: 48)
.globl __glle_ColorMaterial
.ent __glle_ColorMaterial
__glle_ColorMaterial:
    # Line 843
    lw	$a1,4($a0)
    # Line 839
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29780
    # addu	gp,t9,at
    # Line 843
    lw	$t9,4220($zero)
    # Line 839
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 843
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 844
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ColorMaterial

# Function: __glle_CullFace
# Declared: Line 848 (Source lines: 849-854)
# Address: 0x0db1ed04 - 0x0db1ed48 (Size: 68 bytes, Frame: 48)
.globl __glle_CullFace
.ent __glle_CullFace
__glle_CullFace:
    # Line 849
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29852
    # addu	gp,t9,at
    # Line 853
    lw	$t9,4224($zero)
    # Line 849
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 853
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 854
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CullFace

# Function: __glle_Fogf
# Declared: Line 858 (Source lines: 859-864)
# Address: 0x0db1ed48 - 0x0db1ed90 (Size: 72 bytes, Frame: 48)
.globl __glle_Fogf
.ent __glle_Fogf
__glle_Fogf:
    # Line 863
    lwc1	$f13,4($a0)
    # Line 859
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-29920
    # addu	gp,t9,at
    # Line 863
    lw	$t9,4228($zero)
    # Line 859
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 863
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 864
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Fogf

# Function: __glle_Fogfv
# Declared: Line 868 (Source lines: 869-879)
# Address: 0x0db1ed90 - 0x0db1edec (Size: 92 bytes, Frame: 48)
.globl __glle_Fogfv
.ent __glle_Fogfv
__glle_Fogfv:
    # Line 875
    addiu	$a1,$a0,4
    # Line 869
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-29992
    # addu	gp,t9,at
    # Line 875
    lw	$t9,4232($zero)
    # Line 869
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 875
    jalr	$t9
    lw	$a0,0($a0)
    # Line 877
    # lw $t9, -27344($gp) # &__glFogfv_size
    jal	__glFogfv_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 879
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_Fogfv

# Function: __glle_Fogi
# Declared: Line 883 (Source lines: 884-889)
# Address: 0x0db1edec - 0x0db1ee34 (Size: 72 bytes, Frame: 48)
.globl __glle_Fogi
.ent __glle_Fogi
__glle_Fogi:
    # Line 888
    lw	$a1,4($a0)
    # Line 884
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-30084
    # addu	gp,t9,at
    # Line 888
    lw	$t9,4236($zero)
    # Line 884
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 888
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 889
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Fogi

# Function: __glle_Fogiv
# Declared: Line 893 (Source lines: 894-904)
# Address: 0x0db1ee34 - 0x0db1ee90 (Size: 92 bytes, Frame: 48)
.globl __glle_Fogiv
.ent __glle_Fogiv
__glle_Fogiv:
    # Line 900
    addiu	$a1,$a0,4
    # Line 894
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30156
    # addu	gp,t9,at
    # Line 900
    lw	$t9,4240($zero)
    # Line 894
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 900
    jalr	$t9
    lw	$a0,0($a0)
    # Line 902
    # lw $t9, -27348($gp) # &__glFogiv_size
    jal	__glFogiv_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 904
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_Fogiv

# Function: __glle_FrontFace
# Declared: Line 908 (Source lines: 909-914)
# Address: 0x0db1ee90 - 0x0db1eed4 (Size: 68 bytes, Frame: 48)
.globl __glle_FrontFace
.ent __glle_FrontFace
__glle_FrontFace:
    # Line 909
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-30248
    # addu	gp,t9,at
    # Line 913
    lw	$t9,4244($zero)
    # Line 909
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 913
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 914
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_FrontFace

# Function: __glle_Hint
# Declared: Line 918 (Source lines: 919-924)
# Address: 0x0db1eed4 - 0x0db1ef1c (Size: 72 bytes, Frame: 48)
.globl __glle_Hint
.ent __glle_Hint
__glle_Hint:
    # Line 923
    lw	$a1,4($a0)
    # Line 919
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-30316
    # addu	gp,t9,at
    # Line 923
    lw	$t9,4248($zero)
    # Line 919
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 923
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 924
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Hint

# Function: __glle_Lightfv
# Declared: Line 929 (Source lines: 930-940)
# Address: 0x0db1ef1c - 0x0db1ef7c (Size: 96 bytes, Frame: 48)
.globl __glle_Lightfv
.ent __glle_Lightfv
__glle_Lightfv:
    # Line 936
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 930
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30388
    # addu	gp,t9,at
    # Line 936
    lw	$t9,4256($zero)
    # Line 930
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 936
    jalr	$t9
    lw	$a0,0($a0)
    # Line 938
    # lw $t9, -27340($gp) # &__glLightfv_size
    jal	__glLightfv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 940
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Lightfv

# Function: __glle_Lightiv
# Declared: Line 945 (Source lines: 946-956)
# Address: 0x0db1ef7c - 0x0db1efdc (Size: 96 bytes, Frame: 48)
.globl __glle_Lightiv
.ent __glle_Lightiv
__glle_Lightiv:
    # Line 952
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 946
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30484
    # addu	gp,t9,at
    # Line 952
    lw	$t9,4264($zero)
    # Line 946
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 952
    jalr	$t9
    lw	$a0,0($a0)
    # Line 954
    # lw $t9, -27336($gp) # &__glLightiv_size
    jal	__glLightiv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 956
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Lightiv

# Function: __glle_LightModelfv
# Declared: Line 961 (Source lines: 962-972)
# Address: 0x0db1efdc - 0x0db1f038 (Size: 92 bytes, Frame: 48)
.globl __glle_LightModelfv
.ent __glle_LightModelfv
__glle_LightModelfv:
    # Line 968
    addiu	$a1,$a0,4
    # Line 962
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30580
    # addu	gp,t9,at
    # Line 968
    lw	$t9,4272($zero)
    # Line 962
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 968
    jalr	$t9
    lw	$a0,0($a0)
    # Line 970
    # lw $t9, -27332($gp) # &__glLightModelfv_size
    jal	__glLightModelfv_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 972
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_LightModelfv

# Function: __glle_LightModeliv
# Declared: Line 977 (Source lines: 978-988)
# Address: 0x0db1f038 - 0x0db1f094 (Size: 92 bytes, Frame: 48)
.globl __glle_LightModeliv
.ent __glle_LightModeliv
__glle_LightModeliv:
    # Line 984
    addiu	$a1,$a0,4
    # Line 978
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30672
    # addu	gp,t9,at
    # Line 984
    lw	$t9,4280($zero)
    # Line 978
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 984
    jalr	$t9
    lw	$a0,0($a0)
    # Line 986
    # lw $t9, -27328($gp) # &__glLightModeliv_size
    jal	__glLightModeliv_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 988
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_LightModeliv

# Function: __glle_LineStipple
# Declared: Line 992 (Source lines: 993-998)
# Address: 0x0db1f094 - 0x0db1f0dc (Size: 72 bytes, Frame: 48)
.globl __glle_LineStipple
.ent __glle_LineStipple
__glle_LineStipple:
    # Line 997
    lhu	$a1,4($a0)
    # Line 993
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-30764
    # addu	gp,t9,at
    # Line 997
    lw	$t9,4284($zero)
    # Line 993
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 997
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 998
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LineStipple

# Function: __glle_LineWidth
# Declared: Line 1002 (Source lines: 1003-1008)
# Address: 0x0db1f0dc - 0x0db1f120 (Size: 68 bytes, Frame: 48)
.globl __glle_LineWidth
.ent __glle_LineWidth
__glle_LineWidth:
    # Line 1007
    lwc1	$f12,0($a0)
    # Line 1003
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-30836
    # addu	gp,t9,at
    # Line 1007
    lw	$t9,4288($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1003
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1008
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LineWidth

# Function: __glle_Materialfv
# Declared: Line 1013 (Source lines: 1014-1024)
# Address: 0x0db1f120 - 0x0db1f180 (Size: 96 bytes, Frame: 48)
.globl __glle_Materialfv
.ent __glle_Materialfv
__glle_Materialfv:
    # Line 1020
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1014
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-30904
    # addu	gp,t9,at
    # Line 1020
    lw	$t9,4296($zero)
    # Line 1014
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1020
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1022
    # lw $t9, -27324($gp) # &__glMaterialfv_size
    jal	__glMaterialfv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1024
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Materialfv

# Function: __glle_Materialiv
# Declared: Line 1029 (Source lines: 1030-1040)
# Address: 0x0db1f180 - 0x0db1f1e0 (Size: 96 bytes, Frame: 48)
.globl __glle_Materialiv
.ent __glle_Materialiv
__glle_Materialiv:
    # Line 1036
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1030
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31000
    # addu	gp,t9,at
    # Line 1036
    lw	$t9,4304($zero)
    # Line 1030
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1036
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1038
    # lw $t9, -27320($gp) # &__glMaterialiv_size
    jal	__glMaterialiv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1040
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Materialiv

# Function: __glle_PointSize
# Declared: Line 1044 (Source lines: 1045-1050)
# Address: 0x0db1f1e0 - 0x0db1f224 (Size: 68 bytes, Frame: 48)
.globl __glle_PointSize
.ent __glle_PointSize
__glle_PointSize:
    # Line 1049
    lwc1	$f12,0($a0)
    # Line 1045
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-31096
    # addu	gp,t9,at
    # Line 1049
    lw	$t9,4308($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1045
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1050
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PointSize

# Function: __glle_PolygonMode
# Declared: Line 1054 (Source lines: 1055-1060)
# Address: 0x0db1f224 - 0x0db1f26c (Size: 72 bytes, Frame: 48)
.globl __glle_PolygonMode
.ent __glle_PolygonMode
__glle_PolygonMode:
    # Line 1059
    lw	$a1,4($a0)
    # Line 1055
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-31164
    # addu	gp,t9,at
    # Line 1059
    lw	$t9,4312($zero)
    # Line 1055
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1059
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1060
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PolygonMode

# Function: __glle_Scissor
# Declared: Line 1065 (Source lines: 1066-1071)
# Address: 0x0db1f26c - 0x0db1f2bc (Size: 80 bytes, Frame: 48)
.globl __glle_Scissor
.ent __glle_Scissor
__glle_Scissor:
    # Line 1070
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1066
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-31236
    # addu	gp,t9,at
    # Line 1070
    lw	$t9,4320($zero)
    # Line 1066
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1070
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1071
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Scissor

# Function: __glle_ShadeModel
# Declared: Line 1075 (Source lines: 1076-1081)
# Address: 0x0db1f2bc - 0x0db1f300 (Size: 68 bytes, Frame: 48)
.globl __glle_ShadeModel
.ent __glle_ShadeModel
__glle_ShadeModel:
    # Line 1076
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-31316
    # addu	gp,t9,at
    # Line 1080
    lw	$t9,4324($zero)
    # Line 1076
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1080
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1081
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ShadeModel

# Function: __glle_TexParameterfv
# Declared: Line 1086 (Source lines: 1087-1097)
# Address: 0x0db1f300 - 0x0db1f360 (Size: 96 bytes, Frame: 48)
.globl __glle_TexParameterfv
.ent __glle_TexParameterfv
__glle_TexParameterfv:
    # Line 1093
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1087
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31384
    # addu	gp,t9,at
    # Line 1093
    lw	$t9,4332($zero)
    # Line 1087
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1093
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1095
    # lw $t9, -26980($gp) # &__glTexParameterfv_size
    jal	__glTexParameterfv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1097
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexParameterfv

# Function: __glle_TexParameteriv
# Declared: Line 1102 (Source lines: 1103-1113)
# Address: 0x0db1f360 - 0x0db1f3c0 (Size: 96 bytes, Frame: 48)
.globl __glle_TexParameteriv
.ent __glle_TexParameteriv
__glle_TexParameteriv:
    # Line 1109
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1103
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31480
    # addu	gp,t9,at
    # Line 1109
    lw	$t9,4340($zero)
    # Line 1103
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1109
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1111
    # lw $t9, -26976($gp) # &__glTexParameteriv_size
    jal	__glTexParameteriv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1113
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexParameteriv

# Function: __glle_TexEnvfv
# Declared: Line 1120 (Source lines: 1121-1131)
# Address: 0x0db1f3c0 - 0x0db1f420 (Size: 96 bytes, Frame: 48)
.globl __glle_TexEnvfv
.ent __glle_TexEnvfv
__glle_TexEnvfv:
    # Line 1127
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1121
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31576
    # addu	gp,t9,at
    # Line 1127
    lw	$t9,4356($zero)
    # Line 1121
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1127
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1129
    # lw $t9, -26956($gp) # &__glTexEnvfv_size
    jal	__glTexEnvfv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1131
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexEnvfv

# Function: __glle_TexEnviv
# Declared: Line 1136 (Source lines: 1137-1147)
# Address: 0x0db1f420 - 0x0db1f480 (Size: 96 bytes, Frame: 48)
.globl __glle_TexEnviv
.ent __glle_TexEnviv
__glle_TexEnviv:
    # Line 1143
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1137
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31672
    # addu	gp,t9,at
    # Line 1143
    lw	$t9,4364($zero)
    # Line 1137
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1143
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1145
    # lw $t9, -26952($gp) # &__glTexEnviv_size
    jal	__glTexEnviv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1147
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexEnviv

# Function: __glle_TexGendv
# Declared: Line 1152 (Source lines: 1153-1163)
# Address: 0x0db1f480 - 0x0db1f4e0 (Size: 96 bytes, Frame: 48)
.globl __glle_TexGendv
.ent __glle_TexGendv
__glle_TexGendv:
    # Line 1159
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1153
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31768
    # addu	gp,t9,at
    # Line 1159
    lw	$t9,4372($zero)
    # Line 1153
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1159
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1161
    # lw $t9, -27008($gp) # &__glTexGendv_size
    jal	__glTexGendv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1163
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGendv

# Function: __glle_TexGenfv
# Declared: Line 1168 (Source lines: 1169-1179)
# Address: 0x0db1f4e0 - 0x0db1f540 (Size: 96 bytes, Frame: 48)
.globl __glle_TexGenfv
.ent __glle_TexGenfv
__glle_TexGenfv:
    # Line 1175
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1169
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31864
    # addu	gp,t9,at
    # Line 1175
    lw	$t9,4380($zero)
    # Line 1169
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1175
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1177
    # lw $t9, -27004($gp) # &__glTexGenfv_size
    jal	__glTexGenfv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1179
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGenfv

# Function: __glle_TexGeniv
# Declared: Line 1184 (Source lines: 1185-1195)
# Address: 0x0db1f540 - 0x0db1f5a0 (Size: 96 bytes, Frame: 48)
.globl __glle_TexGeniv
.ent __glle_TexGeniv
__glle_TexGeniv:
    # Line 1191
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1185
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xe
    addiu	$at,$at,-31960
    # addu	gp,t9,at
    # Line 1191
    lw	$t9,4388($zero)
    # Line 1185
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1191
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1193
    # lw $t9, -27000($gp) # &__glTexGeniv_size
    jal	__glTexGeniv_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1195
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGeniv

# Function: __glle_InitNames
# Declared: Line 1202 (Source lines: 1203-1206)
# Address: 0x0db1f5a0 - 0x0db1f5e0 (Size: 64 bytes, Frame: 48)
.globl __glle_InitNames
.ent __glle_InitNames
__glle_InitNames:
    # Line 1203
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32056
    # addu	gp,t9,at
    # Line 1205
    lw	$t9,4404($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1203
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1206
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_InitNames

# Function: __glle_LoadName
# Declared: Line 1210 (Source lines: 1211-1216)
# Address: 0x0db1f5e0 - 0x0db1f624 (Size: 68 bytes, Frame: 48)
.globl __glle_LoadName
.ent __glle_LoadName
__glle_LoadName:
    # Line 1211
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32120
    # addu	gp,t9,at
    # Line 1215
    lw	$t9,4408($zero)
    # Line 1211
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1215
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1216
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LoadName

# Function: __glle_PassThrough
# Declared: Line 1220 (Source lines: 1221-1226)
# Address: 0x0db1f624 - 0x0db1f668 (Size: 68 bytes, Frame: 48)
.globl __glle_PassThrough
.ent __glle_PassThrough
__glle_PassThrough:
    # Line 1225
    lwc1	$f12,0($a0)
    # Line 1221
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32188
    # addu	gp,t9,at
    # Line 1225
    lw	$t9,4412($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1221
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1226
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PassThrough

# Function: __glle_PopName
# Declared: Line 1230 (Source lines: 1231-1234)
# Address: 0x0db1f668 - 0x0db1f6a8 (Size: 64 bytes, Frame: 48)
.globl __glle_PopName
.ent __glle_PopName
__glle_PopName:
    # Line 1231
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32256
    # addu	gp,t9,at
    # Line 1233
    lw	$t9,4416($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1231
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1234
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PopName

# Function: __glle_PushName
# Declared: Line 1238 (Source lines: 1239-1244)
# Address: 0x0db1f6a8 - 0x0db1f6ec (Size: 68 bytes, Frame: 48)
.globl __glle_PushName
.ent __glle_PushName
__glle_PushName:
    # Line 1239
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32320
    # addu	gp,t9,at
    # Line 1243
    lw	$t9,4420($zero)
    # Line 1239
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1243
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1244
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PushName

# Function: __glle_DrawBuffer
# Declared: Line 1248 (Source lines: 1249-1254)
# Address: 0x0db1f6ec - 0x0db1f730 (Size: 68 bytes, Frame: 48)
.globl __glle_DrawBuffer
.ent __glle_DrawBuffer
__glle_DrawBuffer:
    # Line 1249
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32388
    # addu	gp,t9,at
    # Line 1253
    lw	$t9,4424($zero)
    # Line 1249
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1253
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1254
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_DrawBuffer

# Function: __glle_Clear
# Declared: Line 1258 (Source lines: 1259-1264)
# Address: 0x0db1f730 - 0x0db1f774 (Size: 68 bytes, Frame: 48)
.globl __glle_Clear
.ent __glle_Clear
__glle_Clear:
    # Line 1259
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32456
    # addu	gp,t9,at
    # Line 1263
    lw	$t9,4428($zero)
    # Line 1259
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1263
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1264
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Clear

# Function: __glle_ClearAccum
# Declared: Line 1268 (Source lines: 1269-1274)
# Address: 0x0db1f774 - 0x0db1f7c4 (Size: 80 bytes, Frame: 48)
.globl __glle_ClearAccum
.ent __glle_ClearAccum
__glle_ClearAccum:
    # Line 1273
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1269
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32524
    # addu	gp,t9,at
    # Line 1273
    lw	$t9,4432($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1269
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1274
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClearAccum

# Function: __glle_ClearIndex
# Declared: Line 1278 (Source lines: 1279-1284)
# Address: 0x0db1f7c4 - 0x0db1f808 (Size: 68 bytes, Frame: 48)
.globl __glle_ClearIndex
.ent __glle_ClearIndex
__glle_ClearIndex:
    # Line 1283
    lwc1	$f12,0($a0)
    # Line 1279
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32604
    # addu	gp,t9,at
    # Line 1283
    lw	$t9,4436($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1279
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1284
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClearIndex

# Function: __glle_ClearColor
# Declared: Line 1288 (Source lines: 1289-1294)
# Address: 0x0db1f808 - 0x0db1f858 (Size: 80 bytes, Frame: 48)
.globl __glle_ClearColor
.ent __glle_ClearColor
__glle_ClearColor:
    # Line 1293
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1289
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32672
    # addu	gp,t9,at
    # Line 1293
    lw	$t9,4440($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1289
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1294
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClearColor

# Function: __glle_ClearStencil
# Declared: Line 1298 (Source lines: 1299-1304)
# Address: 0x0db1f858 - 0x0db1f89c (Size: 68 bytes, Frame: 48)
.globl __glle_ClearStencil
.ent __glle_ClearStencil
__glle_ClearStencil:
    # Line 1299
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xe
    addiu	$at,$at,-32752
    # addu	gp,t9,at
    # Line 1303
    lw	$t9,4444($zero)
    # Line 1299
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1303
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1304
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClearStencil

# Function: __glle_ClearDepth
# Declared: Line 1308 (Source lines: 1309-1314)
# Address: 0x0db1f89c - 0x0db1f8e0 (Size: 68 bytes, Frame: 48)
.globl __glle_ClearDepth
.ent __glle_ClearDepth
__glle_ClearDepth:
    # Line 1313
    ldc1	$f12,0($a0)
    # Line 1309
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32716
    # addu	gp,t9,at
    # Line 1313
    lw	$t9,4448($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1309
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1314
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ClearDepth

# Function: __glle_StencilMask
# Declared: Line 1318 (Source lines: 1319-1324)
# Address: 0x0db1f8e0 - 0x0db1f924 (Size: 68 bytes, Frame: 48)
.globl __glle_StencilMask
.ent __glle_StencilMask
__glle_StencilMask:
    # Line 1319
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32648
    # addu	gp,t9,at
    # Line 1323
    lw	$t9,4452($zero)
    # Line 1319
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1323
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1324
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_StencilMask

# Function: __glle_ColorMask
# Declared: Line 1328 (Source lines: 1329-1334)
# Address: 0x0db1f924 - 0x0db1f974 (Size: 80 bytes, Frame: 48)
.globl __glle_ColorMask
.ent __glle_ColorMask
__glle_ColorMask:
    # Line 1333
    lbu	$a3,3($a0)
    lbu	$a2,2($a0)
    lbu	$a1,1($a0)
    # Line 1329
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32580
    # addu	gp,t9,at
    # Line 1333
    lw	$t9,4456($zero)
    # Line 1329
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1333
    jalr	$t9
    lbu	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1334
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ColorMask

# Function: __glle_DepthMask
# Declared: Line 1338 (Source lines: 1339-1344)
# Address: 0x0db1f974 - 0x0db1f9b8 (Size: 68 bytes, Frame: 48)
.globl __glle_DepthMask
.ent __glle_DepthMask
__glle_DepthMask:
    # Line 1339
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32500
    # addu	gp,t9,at
    # Line 1343
    lw	$t9,4460($zero)
    # Line 1339
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1343
    jalr	$t9
    lbu	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1344
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_DepthMask

# Function: __glle_IndexMask
# Declared: Line 1348 (Source lines: 1349-1354)
# Address: 0x0db1f9b8 - 0x0db1f9fc (Size: 68 bytes, Frame: 48)
.globl __glle_IndexMask
.ent __glle_IndexMask
__glle_IndexMask:
    # Line 1349
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32432
    # addu	gp,t9,at
    # Line 1353
    lw	$t9,4464($zero)
    # Line 1349
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1353
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1354
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_IndexMask

# Function: __glle_Accum
# Declared: Line 1358 (Source lines: 1359-1364)
# Address: 0x0db1f9fc - 0x0db1fa44 (Size: 72 bytes, Frame: 48)
.globl __glle_Accum
.ent __glle_Accum
__glle_Accum:
    # Line 1363
    lwc1	$f13,4($a0)
    # Line 1359
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32364
    # addu	gp,t9,at
    # Line 1363
    lw	$t9,4468($zero)
    # Line 1359
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1363
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1364
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Accum

# Function: __glle_PopAttrib
# Declared: Line 1372 (Source lines: 1373-1376)
# Address: 0x0db1fa44 - 0x0db1fa84 (Size: 64 bytes, Frame: 48)
.globl __glle_PopAttrib
.ent __glle_PopAttrib
__glle_PopAttrib:
    # Line 1373
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32292
    # addu	gp,t9,at
    # Line 1375
    lw	$t9,4488($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1373
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1376
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PopAttrib

# Function: __glle_PushAttrib
# Declared: Line 1380 (Source lines: 1381-1386)
# Address: 0x0db1fa84 - 0x0db1fac8 (Size: 68 bytes, Frame: 48)
.globl __glle_PushAttrib
.ent __glle_PushAttrib
__glle_PushAttrib:
    # Line 1381
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32228
    # addu	gp,t9,at
    # Line 1385
    lw	$t9,4492($zero)
    # Line 1381
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1385
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1386
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PushAttrib

# Function: __glle_MapGrid1d
# Declared: Line 1394 (Source lines: 1395-1400)
# Address: 0x0db1fac8 - 0x0db1fb14 (Size: 76 bytes, Frame: 48)
.globl __glle_MapGrid1d
.ent __glle_MapGrid1d
__glle_MapGrid1d:
    # Line 1399
    ldc1	$f14,8($a0)
    ldc1	$f13,0($a0)
    # Line 1395
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32160
    # addu	gp,t9,at
    # Line 1399
    lw	$t9,4512($zero)
    # Line 1395
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1399
    jalr	$t9
    lw	$a0,16($a0)
    # ld	gp,16(sp)
    # Line 1400
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MapGrid1d

# Function: __glle_MapGrid1f
# Declared: Line 1404 (Source lines: 1405-1410)
# Address: 0x0db1fb14 - 0x0db1fb60 (Size: 76 bytes, Frame: 48)
.globl __glle_MapGrid1f
.ent __glle_MapGrid1f
__glle_MapGrid1f:
    # Line 1409
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1405
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32084
    # addu	gp,t9,at
    # Line 1409
    lw	$t9,4516($zero)
    # Line 1405
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1409
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1410
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MapGrid1f

# Function: __glle_MapGrid2d
# Declared: Line 1414 (Source lines: 1415-1421)
# Address: 0x0db1fb60 - 0x0db1fbb8 (Size: 88 bytes, Frame: 48)
.globl __glle_MapGrid2d
.ent __glle_MapGrid2d
__glle_MapGrid2d:
    # Line 1419
    ldc1	$f17,24($a0)
    ldc1	$f16,16($a0)
    lw	$a3,36($a0)
    ldc1	$f14,8($a0)
    ldc1	$f13,0($a0)
    # Line 1415
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,32008
    # addu	gp,t9,at
    # Line 1419
    lw	$t9,4520($zero)
    # Line 1415
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1419
    jalr	$t9
    lw	$a0,32($a0)
    # ld	gp,16(sp)
    # Line 1421
    ld	$ra,0($sp)
    addiu	$v0,$s8,40
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MapGrid2d

# Function: __glle_MapGrid2f
# Declared: Line 1425 (Source lines: 1426-1432)
# Address: 0x0db1fbb8 - 0x0db1fc10 (Size: 88 bytes, Frame: 48)
.globl __glle_MapGrid2f
.ent __glle_MapGrid2f
__glle_MapGrid2f:
    # Line 1430
    lwc1	$f17,20($a0)
    lwc1	$f16,16($a0)
    lw	$a3,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1426
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31920
    # addu	gp,t9,at
    # Line 1430
    lw	$t9,4524($zero)
    # Line 1426
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1430
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1432
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MapGrid2f

# Function: __glle_EvalCoord1dv
# Declared: Line 1437 (Source lines: 1438-1443)
# Address: 0x0db1fc10 - 0x0db1fc50 (Size: 64 bytes, Frame: 48)
.globl __glle_EvalCoord1dv
.ent __glle_EvalCoord1dv
__glle_EvalCoord1dv:
    # Line 1438
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31832
    # addu	gp,t9,at
    # Line 1442
    lw	$t9,4532($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1438
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1443
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalCoord1dv

# Function: __glle_EvalCoord1fv
# Declared: Line 1448 (Source lines: 1449-1454)
# Address: 0x0db1fc50 - 0x0db1fc90 (Size: 64 bytes, Frame: 48)
.globl __glle_EvalCoord1fv
.ent __glle_EvalCoord1fv
__glle_EvalCoord1fv:
    # Line 1449
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31768
    # addu	gp,t9,at
    # Line 1453
    lw	$t9,4540($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1449
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1454
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalCoord1fv

# Function: __glle_EvalCoord2dv
# Declared: Line 1459 (Source lines: 1460-1465)
# Address: 0x0db1fc90 - 0x0db1fcd0 (Size: 64 bytes, Frame: 48)
.globl __glle_EvalCoord2dv
.ent __glle_EvalCoord2dv
__glle_EvalCoord2dv:
    # Line 1460
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31704
    # addu	gp,t9,at
    # Line 1464
    lw	$t9,4548($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1460
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1465
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalCoord2dv

# Function: __glle_EvalCoord2fv
# Declared: Line 1470 (Source lines: 1471-1476)
# Address: 0x0db1fcd0 - 0x0db1fd10 (Size: 64 bytes, Frame: 48)
.globl __glle_EvalCoord2fv
.ent __glle_EvalCoord2fv
__glle_EvalCoord2fv:
    # Line 1471
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31640
    # addu	gp,t9,at
    # Line 1475
    lw	$t9,4556($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1471
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1476
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalCoord2fv

# Function: __glle_EvalMesh1
# Declared: Line 1480 (Source lines: 1481-1486)
# Address: 0x0db1fd10 - 0x0db1fd5c (Size: 76 bytes, Frame: 48)
.globl __glle_EvalMesh1
.ent __glle_EvalMesh1
__glle_EvalMesh1:
    # Line 1485
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1481
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31576
    # addu	gp,t9,at
    # Line 1485
    lw	$t9,4560($zero)
    # Line 1481
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1485
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1486
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalMesh1

# Function: __glle_EvalPoint1
# Declared: Line 1490 (Source lines: 1491-1496)
# Address: 0x0db1fd5c - 0x0db1fda0 (Size: 68 bytes, Frame: 48)
.globl __glle_EvalPoint1
.ent __glle_EvalPoint1
__glle_EvalPoint1:
    # Line 1491
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31500
    # addu	gp,t9,at
    # Line 1495
    lw	$t9,4564($zero)
    # Line 1491
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1495
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1496
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalPoint1

# Function: __glle_EvalMesh2
# Declared: Line 1500 (Source lines: 1501-1507)
# Address: 0x0db1fda0 - 0x0db1fdf4 (Size: 84 bytes, Frame: 48)
.globl __glle_EvalMesh2
.ent __glle_EvalMesh2
__glle_EvalMesh2:
    # Line 1505
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1501
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31432
    # addu	gp,t9,at
    # Line 1505
    lw	$t9,4568($zero)
    # Line 1501
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1505
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1507
    ld	$ra,0($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalMesh2

# Function: __glle_EvalPoint2
# Declared: Line 1511 (Source lines: 1512-1517)
# Address: 0x0db1fdf4 - 0x0db1fe3c (Size: 72 bytes, Frame: 48)
.globl __glle_EvalPoint2
.ent __glle_EvalPoint2
__glle_EvalPoint2:
    # Line 1516
    lw	$a1,4($a0)
    # Line 1512
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31348
    # addu	gp,t9,at
    # Line 1516
    lw	$t9,4572($zero)
    # Line 1512
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1516
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1517
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_EvalPoint2

# Function: __glle_AlphaFunc
# Declared: Line 1521 (Source lines: 1522-1527)
# Address: 0x0db1fe3c - 0x0db1fe84 (Size: 72 bytes, Frame: 48)
.globl __glle_AlphaFunc
.ent __glle_AlphaFunc
__glle_AlphaFunc:
    # Line 1526
    lwc1	$f13,4($a0)
    # Line 1522
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31276
    # addu	gp,t9,at
    # Line 1526
    lw	$t9,4576($zero)
    # Line 1522
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1526
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1527
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_AlphaFunc

# Function: __glle_BlendFunc
# Declared: Line 1531 (Source lines: 1532-1537)
# Address: 0x0db1fe84 - 0x0db1fecc (Size: 72 bytes, Frame: 48)
.globl __glle_BlendFunc
.ent __glle_BlendFunc
__glle_BlendFunc:
    # Line 1536
    lw	$a1,4($a0)
    # Line 1532
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31204
    # addu	gp,t9,at
    # Line 1536
    lw	$t9,4580($zero)
    # Line 1532
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1536
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1537
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_BlendFunc

# Function: __glle_LogicOp
# Declared: Line 1541 (Source lines: 1542-1547)
# Address: 0x0db1fecc - 0x0db1ff10 (Size: 68 bytes, Frame: 48)
.globl __glle_LogicOp
.ent __glle_LogicOp
__glle_LogicOp:
    # Line 1542
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31132
    # addu	gp,t9,at
    # Line 1546
    lw	$t9,4584($zero)
    # Line 1542
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1546
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1547
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LogicOp

# Function: __glle_StencilFunc
# Declared: Line 1551 (Source lines: 1552-1557)
# Address: 0x0db1ff10 - 0x0db1ff5c (Size: 76 bytes, Frame: 48)
.globl __glle_StencilFunc
.ent __glle_StencilFunc
__glle_StencilFunc:
    # Line 1556
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1552
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,31064
    # addu	gp,t9,at
    # Line 1556
    lw	$t9,4588($zero)
    # Line 1552
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1556
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1557
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_StencilFunc

# Function: __glle_StencilOp
# Declared: Line 1561 (Source lines: 1562-1567)
# Address: 0x0db1ff5c - 0x0db1ffa8 (Size: 76 bytes, Frame: 48)
.globl __glle_StencilOp
.ent __glle_StencilOp
__glle_StencilOp:
    # Line 1566
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1562
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30988
    # addu	gp,t9,at
    # Line 1566
    lw	$t9,4592($zero)
    # Line 1562
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1566
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1567
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_StencilOp

# Function: __glle_DepthFunc
# Declared: Line 1571 (Source lines: 1572-1577)
# Address: 0x0db1ffa8 - 0x0db1ffec (Size: 68 bytes, Frame: 48)
.globl __glle_DepthFunc
.ent __glle_DepthFunc
__glle_DepthFunc:
    # Line 1572
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30912
    # addu	gp,t9,at
    # Line 1576
    lw	$t9,4596($zero)
    # Line 1572
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1576
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1577
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_DepthFunc

# Function: __glle_PixelZoom
# Declared: Line 1581 (Source lines: 1582-1587)
# Address: 0x0db1ffec - 0x0db20034 (Size: 72 bytes, Frame: 48)
.globl __glle_PixelZoom
.ent __glle_PixelZoom
__glle_PixelZoom:
    # Line 1586
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1582
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30844
    # addu	gp,t9,at
    # Line 1586
    lw	$t9,4600($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1582
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1587
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelZoom

# Function: __glle_PixelTransferf
# Declared: Line 1591 (Source lines: 1592-1597)
# Address: 0x0db20034 - 0x0db2007c (Size: 72 bytes, Frame: 48)
.globl __glle_PixelTransferf
.ent __glle_PixelTransferf
__glle_PixelTransferf:
    # Line 1596
    lwc1	$f13,4($a0)
    # Line 1592
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30772
    # addu	gp,t9,at
    # Line 1596
    lw	$t9,4604($zero)
    # Line 1592
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1596
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1597
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTransferf

# Function: __glle_PixelTransferi
# Declared: Line 1601 (Source lines: 1602-1607)
# Address: 0x0db2007c - 0x0db200c4 (Size: 72 bytes, Frame: 48)
.globl __glle_PixelTransferi
.ent __glle_PixelTransferi
__glle_PixelTransferi:
    # Line 1606
    lw	$a1,4($a0)
    # Line 1602
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30700
    # addu	gp,t9,at
    # Line 1606
    lw	$t9,4608($zero)
    # Line 1602
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1606
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1607
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTransferi

# Function: __glle_PixelMapfv
# Declared: Line 1613 (Source lines: 1614-1624)
# Address: 0x0db200c4 - 0x0db2011c (Size: 88 bytes, Frame: 48)
.globl __glle_PixelMapfv
.ent __glle_PixelMapfv
__glle_PixelMapfv:
    # Line 1620
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1614
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30628
    # addu	gp,t9,at
    # Line 1620
    lw	$t9,4620($zero)
    # Line 1614
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1620
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1624
    lw	$v0,4($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapfv

# Function: __glle_PixelMapuiv
# Declared: Line 1628 (Source lines: 1629-1639)
# Address: 0x0db2011c - 0x0db20174 (Size: 88 bytes, Frame: 48)
.globl __glle_PixelMapuiv
.ent __glle_PixelMapuiv
__glle_PixelMapuiv:
    # Line 1635
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1629
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30540
    # addu	gp,t9,at
    # Line 1635
    lw	$t9,4624($zero)
    # Line 1629
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1635
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1639
    lw	$v0,4($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapuiv

# Function: __glle_PixelMapusv
# Declared: Line 1643 (Source lines: 1644-1654)
# Address: 0x0db20174 - 0x0db201d8 (Size: 100 bytes, Frame: 48)
.globl __glle_PixelMapusv
.ent __glle_PixelMapusv
__glle_PixelMapusv:
    # Line 1650
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1644
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30452
    # addu	gp,t9,at
    # Line 1650
    lw	$t9,4628($zero)
    # Line 1644
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1650
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1654
    lw	$v0,4($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addu	$v0,$v0,$v0
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapusv

# Function: __glle_ReadBuffer
# Declared: Line 1658 (Source lines: 1659-1664)
# Address: 0x0db201d8 - 0x0db2021c (Size: 68 bytes, Frame: 48)
.globl __glle_ReadBuffer
.ent __glle_ReadBuffer
__glle_ReadBuffer:
    # Line 1659
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30352
    # addu	gp,t9,at
    # Line 1663
    lw	$t9,4632($zero)
    # Line 1659
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1663
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1664
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ReadBuffer

# Function: __glle_CopyPixels
# Declared: Line 1668 (Source lines: 1669-1675)
# Address: 0x0db2021c - 0x0db20270 (Size: 84 bytes, Frame: 48)
.globl __glle_CopyPixels
.ent __glle_CopyPixels
__glle_CopyPixels:
    # Line 1673
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1669
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30284
    # addu	gp,t9,at
    # Line 1673
    lw	$t9,4636($zero)
    # Line 1669
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1673
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1675
    ld	$ra,0($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyPixels

# Function: __glle_DepthRange
# Declared: Line 1711 (Source lines: 1712-1717)
# Address: 0x0db20270 - 0x0db202b8 (Size: 72 bytes, Frame: 48)
.globl __glle_DepthRange
.ent __glle_DepthRange
__glle_DepthRange:
    # Line 1716
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1712
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30200
    # addu	gp,t9,at
    # Line 1716
    lw	$t9,4768($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1712
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1717
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_DepthRange

# Function: __glle_Frustum
# Declared: Line 1721 (Source lines: 1722-1728)
# Address: 0x0db202b8 - 0x0db20310 (Size: 88 bytes, Frame: 48)
.globl __glle_Frustum
.ent __glle_Frustum
__glle_Frustum:
    # Line 1726
    ldc1	$f17,40($a0)
    ldc1	$f16,32($a0)
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1722
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30128
    # addu	gp,t9,at
    # Line 1726
    lw	$t9,4772($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1722
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1728
    ld	$ra,0($sp)
    addiu	$v0,$s8,48
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Frustum

# Function: __glle_LoadIdentity
# Declared: Line 1732 (Source lines: 1733-1736)
# Address: 0x0db20310 - 0x0db20350 (Size: 64 bytes, Frame: 48)
.globl __glle_LoadIdentity
.ent __glle_LoadIdentity
__glle_LoadIdentity:
    # Line 1733
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,30040
    # addu	gp,t9,at
    # Line 1735
    lw	$t9,4776($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1733
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1736
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LoadIdentity

# Function: __glle_LoadMatrixf
# Declared: Line 1740 (Source lines: 1741-1746)
# Address: 0x0db20350 - 0x0db20390 (Size: 64 bytes, Frame: 48)
.globl __glle_LoadMatrixf
.ent __glle_LoadMatrixf
__glle_LoadMatrixf:
    # Line 1741
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29976
    # addu	gp,t9,at
    # Line 1745
    lw	$t9,4780($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1741
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1746
    ld	$ra,0($sp)
    addiu	$v0,$s8,64
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LoadMatrixf

# Function: __glle_LoadMatrixd
# Declared: Line 1750 (Source lines: 1751-1756)
# Address: 0x0db20390 - 0x0db203d0 (Size: 64 bytes, Frame: 48)
.globl __glle_LoadMatrixd
.ent __glle_LoadMatrixd
__glle_LoadMatrixd:
    # Line 1751
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29912
    # addu	gp,t9,at
    # Line 1755
    lw	$t9,4784($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1751
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1756
    ld	$ra,0($sp)
    addiu	$v0,$s8,128
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LoadMatrixd

# Function: __glle_MatrixMode
# Declared: Line 1760 (Source lines: 1761-1766)
# Address: 0x0db203d0 - 0x0db20414 (Size: 68 bytes, Frame: 48)
.globl __glle_MatrixMode
.ent __glle_MatrixMode
__glle_MatrixMode:
    # Line 1761
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29848
    # addu	gp,t9,at
    # Line 1765
    lw	$t9,4788($zero)
    # Line 1761
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1765
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1766
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MatrixMode

# Function: __glle_MultMatrixf
# Declared: Line 1770 (Source lines: 1771-1776)
# Address: 0x0db20414 - 0x0db20454 (Size: 64 bytes, Frame: 48)
.globl __glle_MultMatrixf
.ent __glle_MultMatrixf
__glle_MultMatrixf:
    # Line 1771
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29780
    # addu	gp,t9,at
    # Line 1775
    lw	$t9,4792($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1771
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1776
    ld	$ra,0($sp)
    addiu	$v0,$s8,64
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MultMatrixf

# Function: __glle_MultMatrixd
# Declared: Line 1780 (Source lines: 1781-1786)
# Address: 0x0db20454 - 0x0db20494 (Size: 64 bytes, Frame: 48)
.globl __glle_MultMatrixd
.ent __glle_MultMatrixd
__glle_MultMatrixd:
    # Line 1781
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29716
    # addu	gp,t9,at
    # Line 1785
    lw	$t9,4796($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1781
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1786
    ld	$ra,0($sp)
    addiu	$v0,$s8,128
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MultMatrixd

# Function: __glle_Ortho
# Declared: Line 1790 (Source lines: 1791-1797)
# Address: 0x0db20494 - 0x0db204ec (Size: 88 bytes, Frame: 48)
.globl __glle_Ortho
.ent __glle_Ortho
__glle_Ortho:
    # Line 1795
    ldc1	$f17,40($a0)
    ldc1	$f16,32($a0)
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1791
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29652
    # addu	gp,t9,at
    # Line 1795
    lw	$t9,4800($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1791
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1797
    ld	$ra,0($sp)
    addiu	$v0,$s8,48
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Ortho

# Function: __glle_PopMatrix
# Declared: Line 1801 (Source lines: 1802-1805)
# Address: 0x0db204ec - 0x0db2052c (Size: 64 bytes, Frame: 48)
.globl __glle_PopMatrix
.ent __glle_PopMatrix
__glle_PopMatrix:
    # Line 1802
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29564
    # addu	gp,t9,at
    # Line 1804
    lw	$t9,4804($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1802
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1805
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PopMatrix

# Function: __glle_PushMatrix
# Declared: Line 1809 (Source lines: 1810-1813)
# Address: 0x0db2052c - 0x0db2056c (Size: 64 bytes, Frame: 48)
.globl __glle_PushMatrix
.ent __glle_PushMatrix
__glle_PushMatrix:
    # Line 1810
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29500
    # addu	gp,t9,at
    # Line 1812
    lw	$t9,4808($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1810
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1813
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PushMatrix

# Function: __glle_Rotated
# Declared: Line 1817 (Source lines: 1818-1823)
# Address: 0x0db2056c - 0x0db205bc (Size: 80 bytes, Frame: 48)
.globl __glle_Rotated
.ent __glle_Rotated
__glle_Rotated:
    # Line 1822
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1818
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29436
    # addu	gp,t9,at
    # Line 1822
    lw	$t9,4812($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1818
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1823
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rotated

# Function: __glle_Rotatef
# Declared: Line 1827 (Source lines: 1828-1833)
# Address: 0x0db205bc - 0x0db2060c (Size: 80 bytes, Frame: 48)
.globl __glle_Rotatef
.ent __glle_Rotatef
__glle_Rotatef:
    # Line 1832
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1828
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29356
    # addu	gp,t9,at
    # Line 1832
    lw	$t9,4816($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1828
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1833
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Rotatef

# Function: __glle_Scaled
# Declared: Line 1837 (Source lines: 1838-1843)
# Address: 0x0db2060c - 0x0db20658 (Size: 76 bytes, Frame: 48)
.globl __glle_Scaled
.ent __glle_Scaled
__glle_Scaled:
    # Line 1842
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1838
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29276
    # addu	gp,t9,at
    # Line 1842
    lw	$t9,4820($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1838
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1843
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Scaled

# Function: __glle_Scalef
# Declared: Line 1847 (Source lines: 1848-1853)
# Address: 0x0db20658 - 0x0db206a4 (Size: 76 bytes, Frame: 48)
.globl __glle_Scalef
.ent __glle_Scalef
__glle_Scalef:
    # Line 1852
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1848
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29200
    # addu	gp,t9,at
    # Line 1852
    lw	$t9,4824($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1848
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1853
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Scalef

# Function: __glle_Translated
# Declared: Line 1857 (Source lines: 1858-1863)
# Address: 0x0db206a4 - 0x0db206f0 (Size: 76 bytes, Frame: 48)
.globl __glle_Translated
.ent __glle_Translated
__glle_Translated:
    # Line 1862
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 1858
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29124
    # addu	gp,t9,at
    # Line 1862
    lw	$t9,4828($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1858
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1863
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Translated

# Function: __glle_Translatef
# Declared: Line 1867 (Source lines: 1868-1873)
# Address: 0x0db206f0 - 0x0db2073c (Size: 76 bytes, Frame: 48)
.globl __glle_Translatef
.ent __glle_Translatef
__glle_Translatef:
    # Line 1872
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1868
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,29048
    # addu	gp,t9,at
    # Line 1872
    lw	$t9,4832($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1868
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1873
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Translatef

# Function: __glle_Viewport
# Declared: Line 1877 (Source lines: 1878-1883)
# Address: 0x0db2073c - 0x0db2078c (Size: 80 bytes, Frame: 48)
.globl __glle_Viewport
.ent __glle_Viewport
__glle_Viewport:
    # Line 1882
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1878
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28972
    # addu	gp,t9,at
    # Line 1882
    lw	$t9,4836($zero)
    # Line 1878
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1882
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1883
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Viewport

# Function: __glle_BlendColorEXT
# Declared: Line 1887 (Source lines: 1888-1893)
# Address: 0x0db2078c - 0x0db207dc (Size: 80 bytes, Frame: 48)
.globl __glle_BlendColorEXT
.ent __glle_BlendColorEXT
__glle_BlendColorEXT:
    # Line 1892
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1888
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28892
    # addu	gp,t9,at
    # Line 1892
    lw	$t9,4840($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1888
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1893
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_BlendColorEXT

# Function: __glle_BlendEquationEXT
# Declared: Line 1897 (Source lines: 1898-1903)
# Address: 0x0db207dc - 0x0db20820 (Size: 68 bytes, Frame: 48)
.globl __glle_BlendEquationEXT
.ent __glle_BlendEquationEXT
__glle_BlendEquationEXT:
    # Line 1898
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28812
    # addu	gp,t9,at
    # Line 1902
    lw	$t9,4844($zero)
    # Line 1898
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1902
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1903
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_BlendEquationEXT

# Function: __glle_PolygonOffsetEXT
# Declared: Line 1907 (Source lines: 1908-1913)
# Address: 0x0db20820 - 0x0db20868 (Size: 72 bytes, Frame: 48)
.globl __glle_PolygonOffsetEXT
.ent __glle_PolygonOffsetEXT
__glle_PolygonOffsetEXT:
    # Line 1912
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 1908
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28744
    # addu	gp,t9,at
    # Line 1912
    lw	$t9,4848($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 1908
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 1913
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PolygonOffsetEXT

# Function: __glle_ConvolutionParameterfEXT
# Declared: Line 1921 (Source lines: 1922-1927)
# Address: 0x0db20868 - 0x0db208b4 (Size: 76 bytes, Frame: 48)
.globl __glle_ConvolutionParameterfEXT
.ent __glle_ConvolutionParameterfEXT
__glle_ConvolutionParameterfEXT:
    # Line 1926
    lwc1	$f14,8($a0)
    lw	$a1,4($a0)
    # Line 1922
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28672
    # addu	gp,t9,at
    # Line 1926
    lw	$t9,4868($zero)
    # Line 1922
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1926
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1927
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ConvolutionParameterfEXT

# Function: __glle_ConvolutionParameterfvEXT
# Declared: Line 1931 (Source lines: 1932-1942)
# Address: 0x0db208b4 - 0x0db20914 (Size: 96 bytes, Frame: 48)
.globl __glle_ConvolutionParameterfvEXT
.ent __glle_ConvolutionParameterfvEXT
__glle_ConvolutionParameterfvEXT:
    # Line 1938
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1932
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,28596
    # addu	gp,t9,at
    # Line 1938
    lw	$t9,4872($zero)
    # Line 1932
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1938
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1940
    # lw $t9, -28916($gp) # &__glConvolutionParameterfvEXT_size
    jal	__glConvolutionParameterfvEXT_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1942
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ConvolutionParameterfvEXT

# Function: __glle_ConvolutionParameteriEXT
# Declared: Line 1946 (Source lines: 1947-1952)
# Address: 0x0db20914 - 0x0db20960 (Size: 76 bytes, Frame: 48)
.globl __glle_ConvolutionParameteriEXT
.ent __glle_ConvolutionParameteriEXT
__glle_ConvolutionParameteriEXT:
    # Line 1951
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1947
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28500
    # addu	gp,t9,at
    # Line 1951
    lw	$t9,4876($zero)
    # Line 1947
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1951
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1952
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ConvolutionParameteriEXT

# Function: __glle_ConvolutionParameterivEXT
# Declared: Line 1956 (Source lines: 1957-1967)
# Address: 0x0db20960 - 0x0db209c0 (Size: 96 bytes, Frame: 48)
.globl __glle_ConvolutionParameterivEXT
.ent __glle_ConvolutionParameterivEXT
__glle_ConvolutionParameterivEXT:
    # Line 1963
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 1957
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,28424
    # addu	gp,t9,at
    # Line 1963
    lw	$t9,4880($zero)
    # Line 1957
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 1963
    jalr	$t9
    lw	$a0,0($a0)
    # Line 1965
    # lw $t9, -28912($gp) # &__glConvolutionParameterivEXT_size
    jal	__glConvolutionParameterivEXT_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 1967
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ConvolutionParameterivEXT

# Function: __glle_CopyConvolutionFilter1DEXT
# Declared: Line 1971 (Source lines: 1972-1978)
# Address: 0x0db209c0 - 0x0db20a14 (Size: 84 bytes, Frame: 48)
.globl __glle_CopyConvolutionFilter1DEXT
.ent __glle_CopyConvolutionFilter1DEXT
__glle_CopyConvolutionFilter1DEXT:
    # Line 1976
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1972
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28328
    # addu	gp,t9,at
    # Line 1976
    lw	$t9,4884($zero)
    # Line 1972
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1976
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1978
    ld	$ra,0($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyConvolutionFilter1DEXT

# Function: __glle_CopyConvolutionFilter2DEXT
# Declared: Line 1982 (Source lines: 1983-1989)
# Address: 0x0db20a14 - 0x0db20a6c (Size: 88 bytes, Frame: 48)
.globl __glle_CopyConvolutionFilter2DEXT
.ent __glle_CopyConvolutionFilter2DEXT
__glle_CopyConvolutionFilter2DEXT:
    # Line 1987
    lw	$a5,20($a0)
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 1983
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28244
    # addu	gp,t9,at
    # Line 1987
    lw	$t9,4888($zero)
    # Line 1983
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1987
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 1989
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyConvolutionFilter2DEXT

# Function: __glle_HistogramEXT
# Declared: Line 2004 (Source lines: 2005-2010)
# Address: 0x0db20a6c - 0x0db20abc (Size: 80 bytes, Frame: 48)
.globl __glle_HistogramEXT
.ent __glle_HistogramEXT
__glle_HistogramEXT:
    # Line 2009
    lbu	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2005
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28156
    # addu	gp,t9,at
    # Line 2009
    lw	$t9,4936($zero)
    # Line 2005
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2009
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2010
    ld	$ra,0($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_HistogramEXT

# Function: __glle_MinmaxEXT
# Declared: Line 2014 (Source lines: 2015-2020)
# Address: 0x0db20abc - 0x0db20b08 (Size: 76 bytes, Frame: 48)
.globl __glle_MinmaxEXT
.ent __glle_MinmaxEXT
__glle_MinmaxEXT:
    # Line 2019
    lbu	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2015
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28076
    # addu	gp,t9,at
    # Line 2019
    lw	$t9,4940($zero)
    # Line 2015
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2019
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2020
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_MinmaxEXT

# Function: __glle_ResetHistogramEXT
# Declared: Line 2024 (Source lines: 2025-2030)
# Address: 0x0db20b08 - 0x0db20b4c (Size: 68 bytes, Frame: 48)
.globl __glle_ResetHistogramEXT
.ent __glle_ResetHistogramEXT
__glle_ResetHistogramEXT:
    # Line 2025
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,28000
    # addu	gp,t9,at
    # Line 2029
    lw	$t9,4944($zero)
    # Line 2025
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2029
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2030
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ResetHistogramEXT

# Function: __glle_ResetMinmaxEXT
# Declared: Line 2034 (Source lines: 2035-2040)
# Address: 0x0db20b4c - 0x0db20b90 (Size: 68 bytes, Frame: 48)
.globl __glle_ResetMinmaxEXT
.ent __glle_ResetMinmaxEXT
__glle_ResetMinmaxEXT:
    # Line 2035
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27932
    # addu	gp,t9,at
    # Line 2039
    lw	$t9,4948($zero)
    # Line 2035
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2039
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2040
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ResetMinmaxEXT

# Function: __glle_BindTextureEXT
# Declared: Line 2056 (Source lines: 2057-2062)
# Address: 0x0db20b90 - 0x0db20bd8 (Size: 72 bytes, Frame: 48)
.globl __glle_BindTextureEXT
.ent __glle_BindTextureEXT
__glle_BindTextureEXT:
    # Line 2061
    lw	$a1,4($a0)
    # Line 2057
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27864
    # addu	gp,t9,at
    # Line 2061
    lw	$t9,5000($zero)
    # Line 2057
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2061
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2062
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_BindTextureEXT

# Function: __glle_PrioritizeTexturesEXT
# Declared: Line 2069 (Source lines: 2070-2083)
# Address: 0x0db20bd8 - 0x0db20c48 (Size: 112 bytes, Frame: 192)
.globl __glle_PrioritizeTexturesEXT
.ent __glle_PrioritizeTexturesEXT
__glle_PrioritizeTexturesEXT:
    # Line 2070
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 2080
    addiu	$a1,$a0,4
    # Line 2070
    lui	$a4,0xd
    addiu	$a4,$a4,27792
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2077
    lw	$a0,0($a0)
    # Line 2070
    # addu	gp,t9,a4
    # Line 2080
    lw	$t9,5016($zero)
    # Line 2077
    sll	$a2,$a0,0x2
    sd	$a2,32($sp)
    # Line 2078
    move	$a3,$a2
    sd	$a2,24($sp)
    # Line 2080
    addu	$a2,$s8,$a2
    jalr	$t9
    addiu	$a2,$a2,4
    ld	$v1,24($sp)
    # Line 2083
    ld	$v0,32($sp)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PrioritizeTexturesEXT

# Function: __glle_CopyTexImage1DEXT
# Declared: Line 2087 (Source lines: 2088-2094)
# Address: 0x0db20c48 - 0x0db20ca4 (Size: 92 bytes, Frame: 48)
.globl __glle_CopyTexImage1DEXT
.ent __glle_CopyTexImage1DEXT
__glle_CopyTexImage1DEXT:
    # Line 2092
    lw	$a6,24($a0)
    lw	$a5,20($a0)
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2088
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27680
    # addu	gp,t9,at
    # Line 2092
    lw	$t9,5020($zero)
    # Line 2088
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2092
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2094
    ld	$ra,0($sp)
    addiu	$v0,$s8,28
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyTexImage1DEXT

# Function: __glle_CopyTexImage2DEXT
# Declared: Line 2098 (Source lines: 2099-2105)
# Address: 0x0db20ca4 - 0x0db20d04 (Size: 96 bytes, Frame: 48)
.globl __glle_CopyTexImage2DEXT
.ent __glle_CopyTexImage2DEXT
__glle_CopyTexImage2DEXT:
    # Line 2103
    lw	$a7,28($a0)
    lw	$a6,24($a0)
    lw	$a5,20($a0)
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2099
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27588
    # addu	gp,t9,at
    # Line 2103
    lw	$t9,5024($zero)
    # Line 2099
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2103
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2105
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyTexImage2DEXT

# Function: __glle_CopyTexSubImage1DEXT
# Declared: Line 2109 (Source lines: 2110-2116)
# Address: 0x0db20d04 - 0x0db20d5c (Size: 88 bytes, Frame: 48)
.globl __glle_CopyTexSubImage1DEXT
.ent __glle_CopyTexSubImage1DEXT
__glle_CopyTexSubImage1DEXT:
    # Line 2114
    lw	$a5,20($a0)
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2110
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27492
    # addu	gp,t9,at
    # Line 2114
    lw	$t9,5028($zero)
    # Line 2110
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2114
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2116
    ld	$ra,0($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyTexSubImage1DEXT

# Function: __glle_CopyTexSubImage2DEXT
# Declared: Line 2120 (Source lines: 2121-2127)
# Address: 0x0db20d5c - 0x0db20dbc (Size: 96 bytes, Frame: 48)
.globl __glle_CopyTexSubImage2DEXT
.ent __glle_CopyTexSubImage2DEXT
__glle_CopyTexSubImage2DEXT:
    # Line 2125
    lw	$a7,28($a0)
    lw	$a6,24($a0)
    lw	$a5,20($a0)
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2121
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27404
    # addu	gp,t9,at
    # Line 2125
    lw	$t9,5032($zero)
    # Line 2121
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2125
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2127
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyTexSubImage2DEXT

# Function: __glle_CopyTexSubImage3DEXT
# Declared: Line 2131 (Source lines: 2132-2138)
# Address: 0x0db20dbc - 0x0db20e28 (Size: 108 bytes, Frame: 192)
.globl __glle_CopyTexSubImage3DEXT
.ent __glle_CopyTexSubImage3DEXT
__glle_CopyTexSubImage3DEXT:
    # Line 2132
    addiu	$sp,$sp,-64
    # sd	gp,32(sp)
    lui	$at,0xd
    addiu	$at,$at,27308
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 2136
    lw	$a0,0($a0)
    lw	$a7,28($s8)
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    lw	$a3,12($s8)
    lw	$v0,32($s8)
    lw	$a2,8($s8)
    lw	$a1,4($s8)
    sw	$v0,4($sp)
    # Line 2132
    # addu	gp,t9,at
    # Line 2136
    lw	$t9,5036($zero)
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # ld	gp,32(sp)
    # Line 2138
    ld	$ra,16($sp)
    addiu	$v0,$s8,36
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glle_CopyTexSubImage3DEXT

# Function: __glle_PolygonOffset
# Declared: Line 2152 (Source lines: 2153-2158)
# Address: 0x0db20e28 - 0x0db20e70 (Size: 72 bytes, Frame: 48)
.globl __glle_PolygonOffset
.ent __glle_PolygonOffset
__glle_PolygonOffset:
    # Line 2157
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 2153
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27200
    # addu	gp,t9,at
    # Line 2157
    lw	$t9,5080($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2153
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2158
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PolygonOffset

# Function: __glle_Indexubv
# Declared: Line 2163 (Source lines: 2164-2169)
# Address: 0x0db20e70 - 0x0db20eb0 (Size: 64 bytes, Frame: 48)
.globl __glle_Indexubv
.ent __glle_Indexubv
__glle_Indexubv:
    # Line 2164
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27128
    # addu	gp,t9,at
    # Line 2168
    lw	$t9,5912($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2164
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2169
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Indexubv

# Function: __glle_SampleMaskSGIS
# Declared: Line 2175 (Source lines: 2176-2181)
# Address: 0x0db20eb0 - 0x0db20ef8 (Size: 72 bytes, Frame: 48)
.globl __glle_SampleMaskSGIS
.ent __glle_SampleMaskSGIS
__glle_SampleMaskSGIS:
    # Line 2180
    lbu	$a1,4($a0)
    lwc1	$f12,0($a0)
    # Line 2176
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,27064
    # addu	gp,t9,at
    # Line 2180
    lw	$t9,5092($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2176
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2181
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SampleMaskSGIS

# Function: __glle_SamplePatternSGIS
# Declared: Line 2185 (Source lines: 2186-2191)
# Address: 0x0db20ef8 - 0x0db20f3c (Size: 68 bytes, Frame: 48)
.globl __glle_SamplePatternSGIS
.ent __glle_SamplePatternSGIS
__glle_SamplePatternSGIS:
    # Line 2186
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26992
    # addu	gp,t9,at
    # Line 2190
    lw	$t9,5096($zero)
    # Line 2186
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2190
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2191
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SamplePatternSGIS

# Function: __glle_TagSampleBufferSGIX
# Declared: Line 2195 (Source lines: 2196-2199)
# Address: 0x0db20f3c - 0x0db20f7c (Size: 64 bytes, Frame: 48)
.globl __glle_TagSampleBufferSGIX
.ent __glle_TagSampleBufferSGIX
__glle_TagSampleBufferSGIX:
    # Line 2196
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26924
    # addu	gp,t9,at
    # Line 2198
    lw	$t9,5100($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2196
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2199
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_TagSampleBufferSGIX

# Function: __glle_DetailTexFuncSGIS
# Declared: Line 2203 (Source lines: 2204-2214)
# Address: 0x0db20f7c - 0x0db20fd4 (Size: 88 bytes, Frame: 48)
.globl __glle_DetailTexFuncSGIS
.ent __glle_DetailTexFuncSGIS
__glle_DetailTexFuncSGIS:
    # Line 2210
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2204
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26860
    # addu	gp,t9,at
    # Line 2210
    lw	$t9,5104($zero)
    # Line 2204
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2210
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2214
    lw	$v0,4($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_DetailTexFuncSGIS

# Function: __glle_SharpenTexFuncSGIS
# Declared: Line 2219 (Source lines: 2220-2230)
# Address: 0x0db20fd4 - 0x0db2102c (Size: 88 bytes, Frame: 48)
.globl __glle_SharpenTexFuncSGIS
.ent __glle_SharpenTexFuncSGIS
__glle_SharpenTexFuncSGIS:
    # Line 2226
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2220
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26772
    # addu	gp,t9,at
    # Line 2226
    lw	$t9,5112($zero)
    # Line 2220
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2226
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2230
    lw	$v0,4($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_SharpenTexFuncSGIS

# Function: __glle_ColorTableParameterfvSGI
# Declared: Line 2236 (Source lines: 2237-2247)
# Address: 0x0db2102c - 0x0db2108c (Size: 96 bytes, Frame: 48)
.globl __glle_ColorTableParameterfvSGI
.ent __glle_ColorTableParameterfvSGI
__glle_ColorTableParameterfvSGI:
    # Line 2243
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2237
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,26684
    # addu	gp,t9,at
    # Line 2243
    lw	$t9,5124($zero)
    # Line 2237
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2243
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2245
    # lw $t9, -27316($gp) # &__glColorTableParameterfvSGI_size
    jal	__glColorTableParameterfvSGI_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 2247
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ColorTableParameterfvSGI

# Function: __glle_ColorTableParameterivSGI
# Declared: Line 2251 (Source lines: 2252-2262)
# Address: 0x0db2108c - 0x0db210ec (Size: 96 bytes, Frame: 48)
.globl __glle_ColorTableParameterivSGI
.ent __glle_ColorTableParameterivSGI
__glle_ColorTableParameterivSGI:
    # Line 2258
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2252
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,26588
    # addu	gp,t9,at
    # Line 2258
    lw	$t9,5128($zero)
    # Line 2252
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2258
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2260
    # lw $t9, -27312($gp) # &__glColorTableParameterivSGI_size
    jal	__glColorTableParameterivSGI_size
    lw	$a0,4($s7)
    # ld	gp,8(sp)
    # Line 2262
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ColorTableParameterivSGI

# Function: __glle_CopyColorTableSGI
# Declared: Line 2266 (Source lines: 2267-2273)
# Address: 0x0db210ec - 0x0db21140 (Size: 84 bytes, Frame: 48)
.globl __glle_CopyColorTableSGI
.ent __glle_CopyColorTableSGI
__glle_CopyColorTableSGI:
    # Line 2271
    lw	$a4,16($a0)
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2267
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26492
    # addu	gp,t9,at
    # Line 2271
    lw	$t9,5132($zero)
    # Line 2267
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2271
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2273
    ld	$ra,0($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyColorTableSGI

# Function: __glle_PixelTexGenSGIX
# Declared: Line 2282 (Source lines: 2283-2288)
# Address: 0x0db21140 - 0x0db21184 (Size: 68 bytes, Frame: 48)
.globl __glle_PixelTexGenSGIX
.ent __glle_PixelTexGenSGIX
__glle_PixelTexGenSGIX:
    # Line 2283
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26408
    # addu	gp,t9,at
    # Line 2287
    lw	$t9,5156($zero)
    # Line 2283
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2287
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2288
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTexGenSGIX

# Function: __glle_SpriteParameterfSGIX
# Declared: Line 2292 (Source lines: 2293-2298)
# Address: 0x0db21184 - 0x0db211cc (Size: 72 bytes, Frame: 48)
.globl __glle_SpriteParameterfSGIX
.ent __glle_SpriteParameterfSGIX
__glle_SpriteParameterfSGIX:
    # Line 2297
    lwc1	$f13,4($a0)
    # Line 2293
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26340
    # addu	gp,t9,at
    # Line 2297
    lw	$t9,5160($zero)
    # Line 2293
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2297
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2298
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SpriteParameterfSGIX

# Function: __glle_SpriteParameterfvSGIX
# Declared: Line 2302 (Source lines: 2303-2313)
# Address: 0x0db211cc - 0x0db21228 (Size: 92 bytes, Frame: 48)
.globl __glle_SpriteParameterfvSGIX
.ent __glle_SpriteParameterfvSGIX
__glle_SpriteParameterfvSGIX:
    # Line 2309
    addiu	$a1,$a0,4
    # Line 2303
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,26268
    # addu	gp,t9,at
    # Line 2309
    lw	$t9,5164($zero)
    # Line 2303
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2309
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2311
    # lw $t9, -27308($gp) # &__glSpriteParameterfvSGIX_size
    jal	__glSpriteParameterfvSGIX_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 2313
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_SpriteParameterfvSGIX

# Function: __glle_SpriteParameteriSGIX
# Declared: Line 2317 (Source lines: 2318-2323)
# Address: 0x0db21228 - 0x0db21270 (Size: 72 bytes, Frame: 48)
.globl __glle_SpriteParameteriSGIX
.ent __glle_SpriteParameteriSGIX
__glle_SpriteParameteriSGIX:
    # Line 2322
    lw	$a1,4($a0)
    # Line 2318
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26176
    # addu	gp,t9,at
    # Line 2322
    lw	$t9,5168($zero)
    # Line 2318
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2322
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2323
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SpriteParameteriSGIX

# Function: __glle_SpriteParameterivSGIX
# Declared: Line 2327 (Source lines: 2328-2338)
# Address: 0x0db21270 - 0x0db212cc (Size: 92 bytes, Frame: 48)
.globl __glle_SpriteParameterivSGIX
.ent __glle_SpriteParameterivSGIX
__glle_SpriteParameterivSGIX:
    # Line 2334
    addiu	$a1,$a0,4
    # Line 2328
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,26104
    # addu	gp,t9,at
    # Line 2334
    lw	$t9,5172($zero)
    # Line 2328
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2334
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2336
    # lw $t9, -27304($gp) # &__glSpriteParameterivSGIX_size
    jal	__glSpriteParameterivSGIX_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 2338
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_SpriteParameterivSGIX

# Function: __glle_TexFilterFuncSGIS
# Declared: Line 2343 (Source lines: 2344-2354)
# Address: 0x0db212cc - 0x0db21328 (Size: 92 bytes, Frame: 48)
.globl __glle_TexFilterFuncSGIS
.ent __glle_TexFilterFuncSGIS
__glle_TexFilterFuncSGIS:
    # Line 2350
    addiu	$a3,$a0,12
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2344
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,26012
    # addu	gp,t9,at
    # Line 2350
    lw	$t9,5180($zero)
    # Line 2344
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2350
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2354
    lw	$v0,8($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,12
.end __glle_TexFilterFuncSGIS

# Function: __glle_PointParameterfSGIS
# Declared: Line 2358 (Source lines: 2359-2364)
# Address: 0x0db21328 - 0x0db21370 (Size: 72 bytes, Frame: 48)
.globl __glle_PointParameterfSGIS
.ent __glle_PointParameterfSGIS
__glle_PointParameterfSGIS:
    # Line 2363
    lwc1	$f13,4($a0)
    # Line 2359
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25920
    # addu	gp,t9,at
    # Line 2363
    lw	$t9,5184($zero)
    # Line 2359
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2363
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2364
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PointParameterfSGIS

# Function: __glle_PointParameterfvSGIS
# Declared: Line 2368 (Source lines: 2369-2379)
# Address: 0x0db21370 - 0x0db213cc (Size: 92 bytes, Frame: 48)
.globl __glle_PointParameterfvSGIS
.ent __glle_PointParameterfvSGIS
__glle_PointParameterfvSGIS:
    # Line 2375
    addiu	$a1,$a0,4
    # Line 2369
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,25848
    # addu	gp,t9,at
    # Line 2375
    lw	$t9,5188($zero)
    # Line 2369
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2375
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2377
    # lw $t9, -27300($gp) # &__glPointParameterfvSGIS_size
    jal	__glPointParameterfvSGIS_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 2379
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PointParameterfvSGIS

# Function: __glle_FogFuncSGIS
# Declared: Line 2383 (Source lines: 2384-2394)
# Address: 0x0db213cc - 0x0db21420 (Size: 84 bytes, Frame: 48)
.globl __glle_FogFuncSGIS
.ent __glle_FogFuncSGIS
__glle_FogFuncSGIS:
    # Line 2390
    addiu	$a1,$a0,4
    # Line 2384
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25756
    # addu	gp,t9,at
    # Line 2390
    lw	$t9,5192($zero)
    # Line 2384
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2390
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2394
    lw	$v0,0($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_FogFuncSGIS

# Function: __glle_ReadInstrumentsSGIX
# Declared: Line 2401 (Source lines: 2402-2407)
# Address: 0x0db21420 - 0x0db21464 (Size: 68 bytes, Frame: 48)
.globl __glle_ReadInstrumentsSGIX
.ent __glle_ReadInstrumentsSGIX
__glle_ReadInstrumentsSGIX:
    # Line 2402
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25672
    # addu	gp,t9,at
    # Line 2406
    lw	$t9,5208($zero)
    # Line 2402
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2406
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2407
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ReadInstrumentsSGIX

# Function: __glle_StartInstrumentsSGIX
# Declared: Line 2411 (Source lines: 2412-2415)
# Address: 0x0db21464 - 0x0db214a4 (Size: 64 bytes, Frame: 48)
.globl __glle_StartInstrumentsSGIX
.ent __glle_StartInstrumentsSGIX
__glle_StartInstrumentsSGIX:
    # Line 2412
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25604
    # addu	gp,t9,at
    # Line 2414
    lw	$t9,5212($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2412
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2415
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_StartInstrumentsSGIX

# Function: __glle_StopInstrumentsSGIX
# Declared: Line 2419 (Source lines: 2420-2425)
# Address: 0x0db214a4 - 0x0db214e8 (Size: 68 bytes, Frame: 48)
.globl __glle_StopInstrumentsSGIX
.ent __glle_StopInstrumentsSGIX
__glle_StopInstrumentsSGIX:
    # Line 2420
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25540
    # addu	gp,t9,at
    # Line 2424
    lw	$t9,5216($zero)
    # Line 2420
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2424
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2425
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_StopInstrumentsSGIX

# Function: __glle_ReferencePlaneSGIX
# Declared: Line 2430 (Source lines: 2431-2436)
# Address: 0x0db214e8 - 0x0db21528 (Size: 64 bytes, Frame: 48)
.globl __glle_ReferencePlaneSGIX
.ent __glle_ReferencePlaneSGIX
__glle_ReferencePlaneSGIX:
    # Line 2431
    addiu	$sp,$sp,-48
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25472
    # addu	gp,t9,at
    # Line 2435
    lw	$t9,5224($zero)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2431
    move	$s8,$a0
    # ld	gp,16(sp)
    # Line 2436
    ld	$ra,0($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_ReferencePlaneSGIX

# Function: __glle_FrameZoomSGIX
# Declared: Line 2440 (Source lines: 2441-2446)
# Address: 0x0db21528 - 0x0db2156c (Size: 68 bytes, Frame: 48)
.globl __glle_FrameZoomSGIX
.ent __glle_FrameZoomSGIX
__glle_FrameZoomSGIX:
    # Line 2441
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25408
    # addu	gp,t9,at
    # Line 2445
    lw	$t9,5228($zero)
    # Line 2441
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2445
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2446
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_FrameZoomSGIX

# Function: __glle_DeformSGIX
# Declared: Line 2453 (Source lines: 2454-2459)
# Address: 0x0db2156c - 0x0db215b0 (Size: 68 bytes, Frame: 48)
.globl __glle_DeformSGIX
.ent __glle_DeformSGIX
__glle_DeformSGIX:
    # Line 2454
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25340
    # addu	gp,t9,at
    # Line 2458
    lw	$t9,5244($zero)
    # Line 2454
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2458
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2459
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_DeformSGIX

# Function: __glle_LoadIdentityDeformationMapSGIX
# Declared: Line 2463 (Source lines: 2464-2469)
# Address: 0x0db215b0 - 0x0db215f4 (Size: 68 bytes, Frame: 48)
.globl __glle_LoadIdentityDeformationMapSGIX
.ent __glle_LoadIdentityDeformationMapSGIX
__glle_LoadIdentityDeformationMapSGIX:
    # Line 2464
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25272
    # addu	gp,t9,at
    # Line 2468
    lw	$t9,5248($zero)
    # Line 2464
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2468
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2469
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_LoadIdentityDeformationMapSGIX

# Function: __glle_PixelTransformSGI
# Declared: Line 2479 (Source lines: 2480-2485)
# Address: 0x0db215f4 - 0x0db21638 (Size: 68 bytes, Frame: 48)
.globl __glle_PixelTransformSGI
.ent __glle_PixelTransformSGI
__glle_PixelTransformSGI:
    # Line 2480
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25204
    # addu	gp,t9,at
    # Line 2484
    lw	$t9,5276($zero)
    # Line 2480
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2484
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2485
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTransformSGI

# Function: __glle_PixelTransformParameterfSGI
# Declared: Line 2489 (Source lines: 2490-2495)
# Address: 0x0db21638 - 0x0db21684 (Size: 76 bytes, Frame: 48)
.globl __glle_PixelTransformParameterfSGI
.ent __glle_PixelTransformParameterfSGI
__glle_PixelTransformParameterfSGI:
    # Line 2494
    lwc1	$f14,8($a0)
    lw	$a1,4($a0)
    # Line 2490
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,25136
    # addu	gp,t9,at
    # Line 2494
    lw	$t9,5280($zero)
    # Line 2490
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2494
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2495
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTransformParameterfSGI

# Function: __glle_PixelTransformParameterfvSGI
# Declared: Line 2499 (Source lines: 2500-2510)
# Address: 0x0db21684 - 0x0db216e8 (Size: 100 bytes, Frame: 48)
.globl __glle_PixelTransformParameterfvSGI
.ent __glle_PixelTransformParameterfvSGI
__glle_PixelTransformParameterfvSGI:
    # Line 2506
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2500
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,25060
    # addu	gp,t9,at
    # Line 2506
    lw	$t9,5284($zero)
    # Line 2500
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2506
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2508
    # lw $t9, -27296($gp) # &__glPixelTransformParameterfvSGI_size
    lw	$a1,4($s7)
    jal	__glPixelTransformParameterfvSGI_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 2510
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelTransformParameterfvSGI

# Function: __glle_PixelTransformParameteriSGI
# Declared: Line 2514 (Source lines: 2515-2520)
# Address: 0x0db216e8 - 0x0db21734 (Size: 76 bytes, Frame: 48)
.globl __glle_PixelTransformParameteriSGI
.ent __glle_PixelTransformParameteriSGI
__glle_PixelTransformParameteriSGI:
    # Line 2519
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2515
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,24960
    # addu	gp,t9,at
    # Line 2519
    lw	$t9,5288($zero)
    # Line 2515
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2519
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2520
    ld	$ra,0($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PixelTransformParameteriSGI

# Function: __glle_PixelTransformParameterivSGI
# Declared: Line 2524 (Source lines: 2525-2535)
# Address: 0x0db21734 - 0x0db21798 (Size: 100 bytes, Frame: 48)
.globl __glle_PixelTransformParameterivSGI
.ent __glle_PixelTransformParameterivSGI
__glle_PixelTransformParameterivSGI:
    # Line 2531
    addiu	$a2,$a0,8
    lw	$a1,4($a0)
    # Line 2525
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # sd	gp,8(sp)
    lui	$at,0xd
    addiu	$at,$at,24884
    # addu	gp,t9,at
    # Line 2531
    lw	$t9,5292($zero)
    # Line 2525
    move	$s7,$a0
    sd	$ra,0($sp)
    # Line 2531
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2533
    # lw $t9, -27292($gp) # &__glPixelTransformParameterivSGI_size
    lw	$a1,4($s7)
    jal	__glPixelTransformParameterivSGI_size
    lw	$a0,0($s7)
    # ld	gp,8(sp)
    # Line 2535
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s7
    ld	$ra,0($sp)
    ld	$s7,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelTransformParameterivSGI

# Function: __glle_SubdivPatchParameterfSGIX
# Declared: Line 2542 (Source lines: 2543-2548)
# Address: 0x0db21798 - 0x0db217e0 (Size: 72 bytes, Frame: 48)
.globl __glle_SubdivPatchParameterfSGIX
.ent __glle_SubdivPatchParameterfSGIX
__glle_SubdivPatchParameterfSGIX:
    # Line 2547
    lwc1	$f13,4($a0)
    # Line 2543
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,24784
    # addu	gp,t9,at
    # Line 2547
    lw	$t9,5308($zero)
    # Line 2543
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2547
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2548
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SubdivPatchParameterfSGIX

# Function: __glle_SubdivPatchParameteriSGIX
# Declared: Line 2552 (Source lines: 2553-2558)
# Address: 0x0db217e0 - 0x0db21828 (Size: 72 bytes, Frame: 48)
.globl __glle_SubdivPatchParameteriSGIX
.ent __glle_SubdivPatchParameteriSGIX
__glle_SubdivPatchParameteriSGIX:
    # Line 2557
    lw	$a1,4($a0)
    # Line 2553
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,24712
    # addu	gp,t9,at
    # Line 2557
    lw	$t9,5312($zero)
    # Line 2553
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2557
    jalr	$t9
    lw	$a0,0($a0)
    # ld	gp,16(sp)
    # Line 2558
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_SubdivPatchParameteriSGIX

# Function: __glle_NurbsKnots1dSGIX
# Declared: Line 2562 (Source lines: 2563-2573)
# Address: 0x0db21828 - 0x0db21884 (Size: 92 bytes, Frame: 48)
.globl __glle_NurbsKnots1dSGIX
.ent __glle_NurbsKnots1dSGIX
__glle_NurbsKnots1dSGIX:
    # Line 2569
    addiu	$a3,$a0,12
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2563
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,24640
    # addu	gp,t9,at
    # Line 2569
    lw	$t9,5316($zero)
    # Line 2563
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2569
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2573
    lw	$v0,8($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,12
.end __glle_NurbsKnots1dSGIX

# Function: __glle_NurbsKnots1fSGIX
# Declared: Line 2577 (Source lines: 2578-2588)
# Address: 0x0db21884 - 0x0db218e0 (Size: 92 bytes, Frame: 48)
.globl __glle_NurbsKnots1fSGIX
.ent __glle_NurbsKnots1fSGIX
__glle_NurbsKnots1fSGIX:
    # Line 2584
    addiu	$a3,$a0,12
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 2578
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # sd	gp,16(sp)
    lui	$at,0xd
    addiu	$at,$at,24548
    # addu	gp,t9,at
    # Line 2584
    lw	$t9,5320($zero)
    # Line 2578
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2584
    jalr	$t9
    lw	$a0,0($a0)
    # Line 2588
    lw	$v0,8($s8)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,12
.end __glle_NurbsKnots1fSGIX

# Function: __glle_NurbsKnots2dSGIX
# Declared: Line 2592 (Source lines: 2593-2607)
# Address: 0x0db218e0 - 0x0db21960 (Size: 128 bytes, Frame: 192)
.globl __glle_NurbsKnots2dSGIX
.ent __glle_NurbsKnots2dSGIX
__glle_NurbsKnots2dSGIX:
    # Line 2603
    addiu	$a5,$a0,20
    lw	$a3,12($a0)
    lw	$a1,4($a0)
    # Line 2601
    lw	$a4,16($a0)
    # Line 2593
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2603
    lw	$a0,0($a0)
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 2601
    sll	$t0,$a4,0x3
    sd	$t0,24($sp)
    # Line 2593
    lui	$a7,0xd
    addiu	$a7,$a7,24456
    # Line 2600
    lw	$a2,8($s8)
    # Line 2593
    # addu	gp,t9,a7
    # Line 2603
    lw	$t9,5324($zero)
    # Line 2600
    sll	$a6,$a2,0x3
    sd	$a6,32($sp)
    # Line 2603
    addu	$a6,$s8,$a6
    jalr	$t9
    addiu	$a6,$a6,20
    ld	$v1,24($sp)
    # Line 2607
    ld	$v0,32($sp)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,20
.end __glle_NurbsKnots2dSGIX

# Function: __glle_NurbsKnots2fSGIX
# Declared: Line 2611 (Source lines: 2612-2626)
# Address: 0x0db21960 - 0x0db219e0 (Size: 128 bytes, Frame: 192)
.globl __glle_NurbsKnots2fSGIX
.ent __glle_NurbsKnots2fSGIX
__glle_NurbsKnots2fSGIX:
    # Line 2622
    addiu	$a5,$a0,20
    lw	$a3,12($a0)
    lw	$a1,4($a0)
    # Line 2620
    lw	$a4,16($a0)
    # Line 2612
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2622
    lw	$a0,0($a0)
    sd	$ra,0($sp)
    # sd	gp,16(sp)
    # Line 2620
    sll	$t0,$a4,0x2
    sd	$t0,24($sp)
    # Line 2612
    lui	$a7,0xd
    addiu	$a7,$a7,24328
    # Line 2619
    lw	$a2,8($s8)
    # Line 2612
    # addu	gp,t9,a7
    # Line 2622
    lw	$t9,5328($zero)
    # Line 2619
    sll	$a6,$a2,0x2
    sd	$a6,32($sp)
    # Line 2622
    addu	$a6,$s8,$a6
    jalr	$t9
    addiu	$a6,$a6,20
    ld	$v1,24($sp)
    # Line 2626
    ld	$v0,32($sp)
    # ld	gp,16(sp)
    ld	$ra,0($sp)
    addu	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,20
.end __glle_NurbsKnots2fSGIX

