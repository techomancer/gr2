# Source: ../soft/so_tapi.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DEXPRESS -DEXPRESS -DIP20 -DR4000 -D__GL_USEASMCODE -D__GL_NUMBER_OF_AUX_BUFFERS=1 -I. -I../include -I../EXPRESS -I../../../include/EXPRESS/gl -I../EXPRESS.IP20 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_tapi.c
# Total Functions: 30

.text

# Function: __glim_TexCoord1d
# Declared: Line 21 (Source lines: 22-29)
# Address: 0x0dae95f8 - 0x0dae9628 (Size: 48 bytes, Frame: 0)
.globl __glim_TexCoord1d
.ent __glim_TexCoord1d
__glim_TexCoord1d:
    # Line 25
    cvt.s.d	$f2,$f12
    # Line 23
    lw	$v0,__glCurrentContext
    # Line 22
    lui	$v1,0x11
    addiu	$v1,$v1,-7568
    # addu	at,t9,v1
    # Line 28
    lwc1	$f1,3284($v0)
    # Line 26
    mtc1	$zero,$f0
    # Line 25
    swc1	$f2,200($v0)
    # Line 28
    swc1	$f1,212($v0)
    # Line 27
    swc1	$f0,208($v0)
    # Line 29
    jr	$ra
    # Line 26
    swc1	$f0,204($v0)
.end __glim_TexCoord1d

# Function: __glim_TexCoord1f
# Declared: Line 31 (Source lines: 32-39)
# Address: 0x0dae9628 - 0x0dae9654 (Size: 44 bytes, Frame: 0)
.globl __glim_TexCoord1f
.ent __glim_TexCoord1f
__glim_TexCoord1f:
    # Line 33
    lw	$v0,__glCurrentContext
    # Line 32
    lui	$v1,0x11
    addiu	$v1,$v1,-7616
    # addu	at,t9,v1
    # Line 38
    lwc1	$f1,3284($v0)
    # Line 36
    mtc1	$zero,$f0
    # Line 35
    swc1	$f12,200($v0)
    # Line 38
    swc1	$f1,212($v0)
    # Line 37
    swc1	$f0,208($v0)
    # Line 39
    jr	$ra
    # Line 36
    swc1	$f0,204($v0)
.end __glim_TexCoord1f

# Function: __glim_TexCoord1i
# Declared: Line 41 (Source lines: 42-48)
# Address: 0x0dae9654 - 0x0dae9688 (Size: 52 bytes, Frame: 0)
.globl __glim_TexCoord1i
.ent __glim_TexCoord1i
__glim_TexCoord1i:
    # Line 43
    lw	$v0,__glCurrentContext
    # Line 42
    lui	$v1,0x11
    addiu	$v1,$v1,-7660
    # addu	at,t9,v1
    # Line 44
    mtc1	$a0,$f0
    # Line 45
    mtc1	$zero,$f1
    # Line 47
    lwc1	$f2,3284($v0)
    # Line 44
    cvt.s.w	$f0,$f0
    # Line 47
    swc1	$f2,212($v0)
    # Line 46
    swc1	$f1,208($v0)
    # Line 45
    swc1	$f1,204($v0)
    # Line 48
    jr	$ra
    # Line 44
    swc1	$f0,200($v0)
.end __glim_TexCoord1i

# Function: __glim_TexCoord1s
# Declared: Line 50 (Source lines: 51-57)
# Address: 0x0dae9688 - 0x0dae96bc (Size: 52 bytes, Frame: 0)
.globl __glim_TexCoord1s
.ent __glim_TexCoord1s
__glim_TexCoord1s:
    # Line 52
    lw	$v0,__glCurrentContext
    # Line 51
    lui	$v1,0x11
    addiu	$v1,$v1,-7712
    # addu	at,t9,v1
    # Line 53
    mtc1	$a0,$f0
    # Line 54
    mtc1	$zero,$f1
    # Line 56
    lwc1	$f2,3284($v0)
    # Line 53
    cvt.s.w	$f0,$f0
    # Line 56
    swc1	$f2,212($v0)
    # Line 55
    swc1	$f1,208($v0)
    # Line 54
    swc1	$f1,204($v0)
    # Line 57
    jr	$ra
    # Line 53
    swc1	$f0,200($v0)
.end __glim_TexCoord1s

# Function: __glim_TexCoord1dv
# Declared: Line 59 (Source lines: 60-66)
# Address: 0x0dae96bc - 0x0dae96f0 (Size: 52 bytes, Frame: 0)
.globl __glim_TexCoord1dv
.ent __glim_TexCoord1dv
__glim_TexCoord1dv:
    # Line 61
    lw	$v0,__glCurrentContext
    # Line 60
    lui	$v1,0x11
    addiu	$v1,$v1,-7764
    # addu	at,t9,v1
    # Line 65
    lwc1	$f2,3284($v0)
    # Line 62
    ldc1	$f0,0($a0)
    # Line 63
    mtc1	$zero,$f1
    # Line 65
    swc1	$f2,212($v0)
    # Line 62
    cvt.s.d	$f0,$f0
    # Line 64
    swc1	$f1,208($v0)
    # Line 63
    swc1	$f1,204($v0)
    # Line 66
    jr	$ra
    # Line 62
    swc1	$f0,200($v0)
.end __glim_TexCoord1dv

# Function: __glim_TexCoord1fv
# Declared: Line 68 (Source lines: 69-75)
# Address: 0x0dae96f0 - 0x0dae9720 (Size: 48 bytes, Frame: 0)
.globl __glim_TexCoord1fv
.ent __glim_TexCoord1fv
__glim_TexCoord1fv:
    # Line 71
    lwc1	$f2,0($a0)
    # Line 70
    lw	$v0,__glCurrentContext
    # Line 69
    lui	$v1,0x11
    addiu	$v1,$v1,-7816
    # addu	at,t9,v1
    # Line 74
    lwc1	$f1,3284($v0)
    # Line 72
    mtc1	$zero,$f0
    # Line 71
    swc1	$f2,200($v0)
    # Line 74
    swc1	$f1,212($v0)
    # Line 73
    swc1	$f0,208($v0)
    # Line 75
    jr	$ra
    # Line 72
    swc1	$f0,204($v0)
.end __glim_TexCoord1fv

# Function: __glim_TexCoord1iv
# Declared: Line 77 (Source lines: 78-84)
# Address: 0x0dae9720 - 0x0dae9758 (Size: 56 bytes, Frame: 0)
.globl __glim_TexCoord1iv
.ent __glim_TexCoord1iv
__glim_TexCoord1iv:
    # Line 79
    lw	$v0,__glCurrentContext
    # Line 78
    lui	$v1,0x11
    # Line 80
    lw	$a0,0($a0)
    # Line 78
    addiu	$v1,$v1,-7864
    # addu	at,t9,v1
    # Line 80
    mtc1	$a0,$f0
    # Line 81
    mtc1	$zero,$f1
    # Line 83
    lwc1	$f2,3284($v0)
    # Line 80
    cvt.s.w	$f0,$f0
    # Line 83
    swc1	$f2,212($v0)
    # Line 82
    swc1	$f1,208($v0)
    # Line 81
    swc1	$f1,204($v0)
    # Line 84
    jr	$ra
    # Line 80
    swc1	$f0,200($v0)
.end __glim_TexCoord1iv

# Function: __glim_TexCoord1sv
# Declared: Line 86 (Source lines: 87-93)
# Address: 0x0dae9758 - 0x0dae9790 (Size: 56 bytes, Frame: 0)
.globl __glim_TexCoord1sv
.ent __glim_TexCoord1sv
__glim_TexCoord1sv:
    # Line 88
    lw	$v0,__glCurrentContext
    # Line 87
    lui	$v1,0x11
    # Line 89
    lh	$a0,0($a0)
    # Line 87
    addiu	$v1,$v1,-7920
    # addu	at,t9,v1
    # Line 89
    mtc1	$a0,$f0
    # Line 90
    mtc1	$zero,$f1
    # Line 92
    lwc1	$f2,3284($v0)
    # Line 89
    cvt.s.w	$f0,$f0
    # Line 92
    swc1	$f2,212($v0)
    # Line 91
    swc1	$f1,208($v0)
    # Line 90
    swc1	$f1,204($v0)
    # Line 93
    jr	$ra
    # Line 89
    swc1	$f0,200($v0)
.end __glim_TexCoord1sv

# Function: __glim_TexCoord2d
# Declared: Line 97 (Source lines: 98-104)
# Address: 0x0dae9790 - 0x0dae97c4 (Size: 52 bytes, Frame: 0)
.globl __glim_TexCoord2d
.ent __glim_TexCoord2d
__glim_TexCoord2d:
    # Line 100
    cvt.s.d	$f2,$f12
    # Line 101
    cvt.s.d	$f3,$f13
    # Line 99
    lw	$v0,__glCurrentContext
    # Line 101
    swc1	$f3,204($v0)
    # Line 100
    swc1	$f2,200($v0)
    # Line 98
    lui	$v1,0x11
    addiu	$v1,$v1,-7976
    # Line 103
    lwc1	$f1,3284($v0)
    # Line 98
    # addu	at,t9,v1
    # Line 102
    mtc1	$zero,$f0
    # Line 103
    swc1	$f1,212($v0)
    # Line 104
    jr	$ra
    # Line 102
    swc1	$f0,208($v0)
.end __glim_TexCoord2d

# Function: __glim_TexCoord2i
# Declared: Line 117 (Source lines: 118-124)
# Address: 0x0dae97c4 - 0x0dae9800 (Size: 60 bytes, Frame: 0)
.globl __glim_TexCoord2i
.ent __glim_TexCoord2i
__glim_TexCoord2i:
    # Line 119
    lw	$v0,__glCurrentContext
    # Line 121
    mtc1	$a1,$f1
    # Line 118
    lui	$v1,0x11
    addiu	$v1,$v1,-8028
    # Line 121
    cvt.s.w	$f1,$f1
    # Line 118
    # addu	at,t9,v1
    # Line 120
    mtc1	$a0,$f0
    # Line 122
    mtc1	$zero,$f2
    # Line 123
    lwc1	$f3,3284($v0)
    # Line 120
    cvt.s.w	$f0,$f0
    # Line 123
    swc1	$f3,212($v0)
    # Line 122
    swc1	$f2,208($v0)
    # Line 121
    swc1	$f1,204($v0)
    # Line 124
    jr	$ra
    # Line 120
    swc1	$f0,200($v0)
.end __glim_TexCoord2i

# Function: __glim_TexCoord2s
# Declared: Line 126 (Source lines: 127-133)
# Address: 0x0dae9800 - 0x0dae983c (Size: 60 bytes, Frame: 0)
.globl __glim_TexCoord2s
.ent __glim_TexCoord2s
__glim_TexCoord2s:
    # Line 128
    lw	$v0,__glCurrentContext
    # Line 130
    mtc1	$a1,$f1
    # Line 127
    lui	$v1,0x11
    addiu	$v1,$v1,-8088
    # Line 130
    cvt.s.w	$f1,$f1
    # Line 127
    # addu	at,t9,v1
    # Line 129
    mtc1	$a0,$f0
    # Line 131
    mtc1	$zero,$f2
    # Line 132
    lwc1	$f3,3284($v0)
    # Line 129
    cvt.s.w	$f0,$f0
    # Line 132
    swc1	$f3,212($v0)
    # Line 131
    swc1	$f2,208($v0)
    # Line 130
    swc1	$f1,204($v0)
    # Line 133
    jr	$ra
    # Line 129
    swc1	$f0,200($v0)
.end __glim_TexCoord2s

# Function: __glim_TexCoord2dv
# Declared: Line 135 (Source lines: 136-142)
# Address: 0x0dae983c - 0x0dae9878 (Size: 60 bytes, Frame: 0)
.globl __glim_TexCoord2dv
.ent __glim_TexCoord2dv
__glim_TexCoord2dv:
    # Line 138
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    # Line 137
    lw	$v0,__glCurrentContext
    # Line 136
    lui	$v1,0x11
    addiu	$v1,$v1,-8148
    # Line 138
    swc1	$f1,200($v0)
    # Line 136
    # addu	at,t9,v1
    # Line 139
    ldc1	$f0,8($a0)
    # Line 141
    lwc1	$f2,3284($v0)
    # Line 140
    mtc1	$zero,$f1
    # Line 139
    cvt.s.d	$f0,$f0
    # Line 141
    swc1	$f2,212($v0)
    # Line 140
    swc1	$f1,208($v0)
    # Line 142
    jr	$ra
    # Line 139
    swc1	$f0,204($v0)
.end __glim_TexCoord2dv

# Function: __glim_TexCoord2iv
# Declared: Line 155 (Source lines: 156-162)
# Address: 0x0dae9878 - 0x0dae98c0 (Size: 72 bytes, Frame: 0)
.globl __glim_TexCoord2iv
.ent __glim_TexCoord2iv
__glim_TexCoord2iv:
    # Line 158
    lw	$a1,0($a0)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 157
    lw	$v0,__glCurrentContext
    # Line 158
    swc1	$f1,200($v0)
    # Line 159
    lw	$a0,4($a0)
    # Line 156
    lui	$v1,0x11
    addiu	$v1,$v1,-8208
    # Line 159
    mtc1	$a0,$f0
    # Line 156
    # addu	at,t9,v1
    # Line 161
    lwc1	$f2,3284($v0)
    # Line 159
    cvt.s.w	$f0,$f0
    # Line 160
    mtc1	$zero,$f1
    # Line 161
    swc1	$f2,212($v0)
    # Line 160
    swc1	$f1,208($v0)
    # Line 162
    jr	$ra
    # Line 159
    swc1	$f0,204($v0)
.end __glim_TexCoord2iv

# Function: __glim_TexCoord2sv
# Declared: Line 164 (Source lines: 165-171)
# Address: 0x0dae98c0 - 0x0dae9908 (Size: 72 bytes, Frame: 0)
.globl __glim_TexCoord2sv
.ent __glim_TexCoord2sv
__glim_TexCoord2sv:
    # Line 167
    lh	$a1,0($a0)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 166
    lw	$v0,__glCurrentContext
    # Line 167
    swc1	$f1,200($v0)
    # Line 168
    lh	$a0,2($a0)
    # Line 165
    lui	$v1,0x11
    addiu	$v1,$v1,-8280
    # Line 168
    mtc1	$a0,$f0
    # Line 165
    # addu	at,t9,v1
    # Line 170
    lwc1	$f2,3284($v0)
    # Line 168
    cvt.s.w	$f0,$f0
    # Line 169
    mtc1	$zero,$f1
    # Line 170
    swc1	$f2,212($v0)
    # Line 169
    swc1	$f1,208($v0)
    # Line 171
    jr	$ra
    # Line 168
    swc1	$f0,204($v0)
.end __glim_TexCoord2sv

# Function: __glim_TexCoord3d
# Declared: Line 175 (Source lines: 177-182)
# Address: 0x0dae9908 - 0x0dae9930 (Size: 40 bytes, Frame: 0)
.globl __glim_TexCoord3d
.ent __glim_TexCoord3d
__glim_TexCoord3d:
    # Line 179
    cvt.s.d	$f2,$f13
    # Line 180
    cvt.s.d	$f3,$f14
    # Line 177
    lw	$at,__glCurrentContext
    # Line 178
    cvt.s.d	$f1,$f12
    # Line 180
    swc1	$f3,208($at)
    # Line 179
    swc1	$f2,204($at)
    # Line 181
    lwc1	$f0,3284($at)
    # Line 178
    swc1	$f1,200($at)
    # Line 182
    jr	$ra
    # Line 181
    swc1	$f0,212($at)
.end __glim_TexCoord3d

# Function: __glim_TexCoord3f
# Declared: Line 184 (Source lines: 186-191)
# Address: 0x0dae9930 - 0x0dae994c (Size: 28 bytes, Frame: 0)
.globl __glim_TexCoord3f
.ent __glim_TexCoord3f
__glim_TexCoord3f:
    # Line 186
    lw	$at,__glCurrentContext
    # Line 189
    swc1	$f14,208($at)
    # Line 188
    swc1	$f13,204($at)
    # Line 190
    lwc1	$f0,3284($at)
    # Line 187
    swc1	$f12,200($at)
    # Line 191
    jr	$ra
    # Line 190
    swc1	$f0,212($at)
.end __glim_TexCoord3f

# Function: __glim_TexCoord3i
# Declared: Line 193 (Source lines: 195-200)
# Address: 0x0dae994c - 0x0dae9988 (Size: 60 bytes, Frame: 0)
.globl __glim_TexCoord3i
.ent __glim_TexCoord3i
__glim_TexCoord3i:
    # Line 197
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 198
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 195
    lw	$at,__glCurrentContext
    # Line 196
    mtc1	$a0,$f0
    # Line 199
    lwc1	$f3,3284($at)
    # Line 196
    cvt.s.w	$f0,$f0
    # Line 199
    swc1	$f3,212($at)
    # Line 198
    swc1	$f2,208($at)
    # Line 197
    swc1	$f1,204($at)
    # Line 200
    jr	$ra
    # Line 196
    swc1	$f0,200($at)
.end __glim_TexCoord3i

# Function: __glim_TexCoord3s
# Declared: Line 202 (Source lines: 204-209)
# Address: 0x0dae9988 - 0x0dae99c4 (Size: 60 bytes, Frame: 0)
.globl __glim_TexCoord3s
.ent __glim_TexCoord3s
__glim_TexCoord3s:
    # Line 206
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 207
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 204
    lw	$at,__glCurrentContext
    # Line 205
    mtc1	$a0,$f0
    # Line 208
    lwc1	$f3,3284($at)
    # Line 205
    cvt.s.w	$f0,$f0
    # Line 208
    swc1	$f3,212($at)
    # Line 207
    swc1	$f2,208($at)
    # Line 206
    swc1	$f1,204($at)
    # Line 209
    jr	$ra
    # Line 205
    swc1	$f0,200($at)
.end __glim_TexCoord3s

# Function: __glim_TexCoord3dv
# Declared: Line 211 (Source lines: 213-218)
# Address: 0x0dae99c4 - 0x0dae99f8 (Size: 52 bytes, Frame: 0)
.globl __glim_TexCoord3dv
.ent __glim_TexCoord3dv
__glim_TexCoord3dv:
    # Line 214
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    # Line 213
    lw	$at,__glCurrentContext
    # Line 214
    swc1	$f2,200($at)
    # Line 215
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,204($at)
    # Line 216
    ldc1	$f0,16($a0)
    # Line 217
    lwc1	$f1,3284($at)
    # Line 216
    cvt.s.d	$f0,$f0
    # Line 217
    swc1	$f1,212($at)
    # Line 218
    jr	$ra
    # Line 216
    swc1	$f0,208($at)
.end __glim_TexCoord3dv

# Function: __glim_TexCoord3fv
# Declared: Line 220 (Source lines: 222-227)
# Address: 0x0dae99f8 - 0x0dae9a20 (Size: 40 bytes, Frame: 0)
.globl __glim_TexCoord3fv
.ent __glim_TexCoord3fv
__glim_TexCoord3fv:
    # Line 222
    lw	$at,__glCurrentContext
    # Line 223
    lwc1	$f3,0($a0)
    swc1	$f3,200($at)
    # Line 224
    lwc1	$f2,4($a0)
    # Line 226
    lwc1	$f1,3284($at)
    # Line 224
    swc1	$f2,204($at)
    # Line 225
    lwc1	$f0,8($a0)
    # Line 226
    swc1	$f1,212($at)
    # Line 227
    jr	$ra
    # Line 225
    swc1	$f0,208($at)
.end __glim_TexCoord3fv

# Function: __glim_TexCoord3iv
# Declared: Line 229 (Source lines: 231-236)
# Address: 0x0dae9a20 - 0x0dae9a6c (Size: 76 bytes, Frame: 0)
.globl __glim_TexCoord3iv
.ent __glim_TexCoord3iv
__glim_TexCoord3iv:
    # Line 232
    lw	$a1,0($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 231
    lw	$at,__glCurrentContext
    # Line 232
    swc1	$f2,200($at)
    # Line 233
    lw	$v1,4($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,204($at)
    # Line 234
    lw	$v0,8($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 235
    lwc1	$f1,3284($at)
    swc1	$f1,212($at)
    # Line 236
    jr	$ra
    # Line 234
    swc1	$f0,208($at)
.end __glim_TexCoord3iv

# Function: __glim_TexCoord3sv
# Declared: Line 238 (Source lines: 240-245)
# Address: 0x0dae9a6c - 0x0dae9ab8 (Size: 76 bytes, Frame: 0)
.globl __glim_TexCoord3sv
.ent __glim_TexCoord3sv
__glim_TexCoord3sv:
    # Line 241
    lh	$a1,0($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 240
    lw	$at,__glCurrentContext
    # Line 241
    swc1	$f2,200($at)
    # Line 242
    lh	$v1,2($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,204($at)
    # Line 243
    lh	$v0,4($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 244
    lwc1	$f1,3284($at)
    swc1	$f1,212($at)
    # Line 245
    jr	$ra
    # Line 243
    swc1	$f0,208($at)
.end __glim_TexCoord3sv

# Function: __glim_TexCoord4d
# Declared: Line 249 (Source lines: 251-256)
# Address: 0x0dae9ab8 - 0x0dae9ae0 (Size: 40 bytes, Frame: 0)
.globl __glim_TexCoord4d
.ent __glim_TexCoord4d
__glim_TexCoord4d:
    # Line 253
    cvt.s.d	$f1,$f13
    # Line 254
    cvt.s.d	$f2,$f14
    # Line 255
    cvt.s.d	$f3,$f15
    # Line 251
    lw	$at,__glCurrentContext
    # Line 252
    cvt.s.d	$f0,$f12
    # Line 255
    swc1	$f3,212($at)
    # Line 254
    swc1	$f2,208($at)
    # Line 253
    swc1	$f1,204($at)
    # Line 256
    jr	$ra
    # Line 252
    swc1	$f0,200($at)
.end __glim_TexCoord4d

# Function: __glim_TexCoord4f
# Declared: Line 258 (Source lines: 260-265)
# Address: 0x0dae9ae0 - 0x0dae9af8 (Size: 24 bytes, Frame: 0)
.globl __glim_TexCoord4f
.ent __glim_TexCoord4f
__glim_TexCoord4f:
    # Line 260
    lw	$at,__glCurrentContext
    # Line 264
    swc1	$f15,212($at)
    # Line 263
    swc1	$f14,208($at)
    # Line 262
    swc1	$f13,204($at)
    # Line 265
    jr	$ra
    # Line 261
    swc1	$f12,200($at)
.end __glim_TexCoord4f

# Function: __glim_TexCoord4i
# Declared: Line 267 (Source lines: 269-274)
# Address: 0x0dae9af8 - 0x0dae9b3c (Size: 68 bytes, Frame: 0)
.globl __glim_TexCoord4i
.ent __glim_TexCoord4i
__glim_TexCoord4i:
    # Line 271
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 272
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 273
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 270
    mtc1	$a0,$f0
    # Line 269
    lw	$at,__glCurrentContext
    # Line 270
    cvt.s.w	$f0,$f0
    # Line 273
    swc1	$f3,212($at)
    # Line 272
    swc1	$f2,208($at)
    # Line 271
    swc1	$f1,204($at)
    # Line 274
    jr	$ra
    # Line 270
    swc1	$f0,200($at)
.end __glim_TexCoord4i

# Function: __glim_TexCoord4s
# Declared: Line 276 (Source lines: 278-283)
# Address: 0x0dae9b3c - 0x0dae9b80 (Size: 68 bytes, Frame: 0)
.globl __glim_TexCoord4s
.ent __glim_TexCoord4s
__glim_TexCoord4s:
    # Line 280
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 281
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 282
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 279
    mtc1	$a0,$f0
    # Line 278
    lw	$at,__glCurrentContext
    # Line 279
    cvt.s.w	$f0,$f0
    # Line 282
    swc1	$f3,212($at)
    # Line 281
    swc1	$f2,208($at)
    # Line 280
    swc1	$f1,204($at)
    # Line 283
    jr	$ra
    # Line 279
    swc1	$f0,200($at)
.end __glim_TexCoord4s

# Function: __glim_TexCoord4dv
# Declared: Line 285 (Source lines: 287-292)
# Address: 0x0dae9b80 - 0x0dae9bb8 (Size: 56 bytes, Frame: 0)
.globl __glim_TexCoord4dv
.ent __glim_TexCoord4dv
__glim_TexCoord4dv:
    # Line 288
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    # Line 287
    lw	$at,__glCurrentContext
    # Line 288
    swc1	$f3,200($at)
    # Line 289
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,204($at)
    # Line 290
    ldc1	$f1,16($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,208($at)
    # Line 291
    ldc1	$f0,24($a0)
    cvt.s.d	$f0,$f0
    # Line 292
    jr	$ra
    # Line 291
    swc1	$f0,212($at)
.end __glim_TexCoord4dv

# Function: __glim_TexCoord4fv
# Declared: Line 294 (Source lines: 296-301)
# Address: 0x0dae9bb8 - 0x0dae9be0 (Size: 40 bytes, Frame: 0)
.globl __glim_TexCoord4fv
.ent __glim_TexCoord4fv
__glim_TexCoord4fv:
    # Line 296
    lw	$at,__glCurrentContext
    # Line 297
    lwc1	$f3,0($a0)
    swc1	$f3,200($at)
    # Line 298
    lwc1	$f2,4($a0)
    swc1	$f2,204($at)
    # Line 299
    lwc1	$f1,8($a0)
    swc1	$f1,208($at)
    # Line 300
    lwc1	$f0,12($a0)
    # Line 301
    jr	$ra
    # Line 300
    swc1	$f0,212($at)
.end __glim_TexCoord4fv

# Function: __glim_TexCoord4iv
# Declared: Line 303 (Source lines: 305-310)
# Address: 0x0dae9be0 - 0x0dae9c38 (Size: 88 bytes, Frame: 0)
.globl __glim_TexCoord4iv
.ent __glim_TexCoord4iv
__glim_TexCoord4iv:
    # Line 306
    lw	$at,0($a0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 305
    lw	$at,__glCurrentContext
    # Line 306
    swc1	$f3,200($at)
    # Line 307
    lw	$a1,4($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,204($at)
    # Line 308
    lw	$v1,8($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,208($at)
    # Line 309
    lw	$v0,12($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 310
    jr	$ra
    # Line 309
    swc1	$f0,212($at)
.end __glim_TexCoord4iv

# Function: __glim_TexCoord4sv
# Declared: Line 312 (Source lines: 314-319)
# Address: 0x0dae9c38 - 0x0dae9c90 (Size: 88 bytes, Frame: 0)
.globl __glim_TexCoord4sv
.ent __glim_TexCoord4sv
__glim_TexCoord4sv:
    # Line 315
    lh	$at,0($a0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 314
    lw	$at,__glCurrentContext
    # Line 315
    swc1	$f3,200($at)
    # Line 316
    lh	$a1,2($a0)
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,204($at)
    # Line 317
    lh	$v1,4($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,208($at)
    # Line 318
    lh	$v0,6($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 319
    jr	$ra
    # Line 318
    swc1	$f0,212($at)
.end __glim_TexCoord4sv

