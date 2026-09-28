void glNewList(u32 list, enum GLenum mode) {
    *(? (**)())0x1048();
}

void glEndList(void) {
    *(? (**)())0x104C();
}

void glCallList(u32 list) {
    *(? (**)())0x1050();
}

void glCallLists(s32 n, enum GLenum type, void *lists) {
    *(? (**)())0x1054();
}

void glDeleteLists(u32 list, s32 range) {
    *(? (**)())0x1058();
}

u32 glGenLists(s32 range) {
    return *(u32 (**)())0x105C();
}

void glListBase(u32 base) {
    *(? (**)())0x1060();
}

void glBegin(enum GLenum mode) {
    *(? (**)())0x1064();
}

void glBitmap(s32 width, s32 height, f32 xorig, f32 yorig, f32 xmove, f32 ymove, u8 *bitmap) {
    *(? (**)())0x1068();
}

void glColor3b(s8 red, s8 green, s8 blue) {
    *(? (**)())0x1674();
}

void glColor3bv(s8 *v) {
    *(? (**)())0x1678();
}

void glColor3d(f64 red, f64 green, f64 blue) {
    *(? (**)())0x167C();
}

void glColor3dv(f64 *v) {
    *(? (**)())0x1680();
}

void glColor3f(f32 red, f32 green, f32 blue) {
    *(? (**)())0x1684();
}

void glColor3fv(f32 *v) {
    *(? (**)())0x1688();
}

void glColor3i(s32 red, s32 green, s32 blue) {
    *(? (**)())0x168C();
}

void glColor3iv(s32 *v) {
    *(? (**)())0x1690();
}

void glColor3s(s16 red, s16 green, s16 blue) {
    *(? (**)())0x1694();
}

void glColor3sv(s16 *v) {
    *(? (**)())0x1698();
}

void glColor3ub(u8 red, u8 green, u8 blue) {
    *(? (**)())0x169C();
}

void glColor3ubv(u8 *v) {
    *(? (**)())0x16A0();
}

void glColor3ui(u32 red, u32 green, u32 blue) {
    *(? (**)())0x16A4();
}

void glColor3uiv(u32 *v) {
    *(? (**)())0x16A8();
}

void glColor3us(u16 red, u16 green, u16 blue) {
    *(? (**)())0x16AC();
}

void glColor3usv(u16 *v) {
    *(? (**)())0x16B0();
}

void glColor4b(s8 red, s8 green, s8 blue, s8 alpha) {
    *(? (**)())0x16B4();
}

void glColor4bv(s8 *v) {
    *(? (**)())0x16B8();
}

void glColor4d(f64 red, f64 green, f64 blue, f64 alpha) {
    *(? (**)())0x16BC();
}

void glColor4dv(f64 *v) {
    *(? (**)())0x16C0();
}

void glColor4f(f32 red, f32 green, f32 blue, f32 alpha) {
    *(? (**)())0x16C4();
}

void glColor4fv(f32 *v) {
    *(? (**)())0x16C8();
}

void glColor4i(s32 red, s32 green, s32 blue, s32 alpha) {
    *(? (**)())0x16CC();
}

void glColor4iv(s32 *v) {
    *(? (**)())0x16D0();
}

void glColor4s(s16 red, s16 green, s16 blue, s16 alpha) {
    *(? (**)())0x16D4();
}

void glColor4sv(s16 *v) {
    *(? (**)())0x16D8();
}

void glColor4ub(u8 red, u8 green, u8 blue, u8 alpha) {
    *(? (**)())0x16DC();
}

void glColor4ubv(u8 *v) {
    *(? (**)())0x16E0();
}

void glColor4ui(u32 red, u32 green, u32 blue, u32 alpha) {
    *(? (**)())0x16E4();
}

void glColor4uiv(u32 *v) {
    *(? (**)())0x16E8();
}

void glColor4us(u16 red, u16 green, u16 blue, u16 alpha) {
    *(? (**)())0x16EC();
}

void glColor4usv(u16 *v) {
    *(? (**)())0x16F0();
}

void glEdgeFlag(u8 flag) {
    *(? (**)())0x106C();
}

void glEdgeFlagv(u8 *flag) {
    *(? (**)())0x1070();
}

void glEnd(void) {
    *(? (**)())0x1074();
}

void glIndexd(f64 c) {
    *(? (**)())0x16F4();
}

void glIndexdv(f64 *c) {
    *(? (**)())0x16F8();
}

void glIndexf(f32 c) {
    *(? (**)())0x16FC();
}

void glIndexfv(f32 *c) {
    *(? (**)())0x1700();
}

void glIndexi(s32 c) {
    *(? (**)())0x1704();
}

void glIndexiv(s32 *c) {
    *(? (**)())0x1708();
}

void glIndexs(s16 c) {
    *(? (**)())0x170C();
}

void glIndexsv(s16 *c) {
    *(? (**)())0x1710();
}

void glNormal3b(s8 nx, s8 ny, s8 nz) {
    *(? (**)())0x171C();
}

void glNormal3bv(s8 *v) {
    *(? (**)())0x1720();
}

void glNormal3d(f64 nx, f64 ny, f64 nz) {
    *(? (**)())0x1724();
}

void glNormal3dv(f64 *v) {
    *(? (**)())0x1728();
}

void glNormal3f(f32 nx, f32 ny, f32 nz) {
    *(? (**)())0x172C();
}

void glNormal3fv(f32 *v) {
    *(? (**)())0x1730();
}

void glNormal3i(s32 nx, s32 ny, s32 nz) {
    *(? (**)())0x1734();
}

void glNormal3iv(s32 *v) {
    *(? (**)())0x1738();
}

void glNormal3s(s16 nx, s16 ny, s16 nz) {
    *(? (**)())0x173C();
}

void glNormal3sv(s16 *v) {
    *(? (**)())0x1740();
}

void glRasterPos2d(f64 x, f64 y) {
    *(? (**)())0x17C4();
}

void glRasterPos2dv(f64 *v) {
    *(? (**)())0x17C8();
}

void glRasterPos2f(f32 x, f32 y) {
    *(? (**)())0x17CC();
}

void glRasterPos2fv(f32 *v) {
    *(? (**)())0x17D0();
}

void glRasterPos2i(s32 x, s32 y) {
    *(? (**)())0x17D4();
}

void glRasterPos2iv(s32 *v) {
    *(? (**)())0x17D8();
}

void glRasterPos2s(s16 x, s16 y) {
    *(? (**)())0x17DC();
}

void glRasterPos2sv(s16 *v) {
    *(? (**)())0x17E0();
}

void glRasterPos3d(f64 x, f64 y, f64 z) {
    *(? (**)())0x17E4();
}

void glRasterPos3dv(f64 *v) {
    *(? (**)())0x17E8();
}

void glRasterPos3f(f32 x, f32 y, f32 z) {
    *(? (**)())0x17EC();
}

void glRasterPos3fv(f32 *v) {
    *(? (**)())0x17F0();
}

void glRasterPos3i(s32 x, s32 y, s32 z) {
    *(? (**)())0x17F4();
}

void glRasterPos3iv(s32 *v) {
    *(? (**)())0x17F8();
}

void glRasterPos3s(s16 x, s16 y, s16 z) {
    *(? (**)())0x17FC();
}

void glRasterPos3sv(s16 *v) {
    *(? (**)())0x1800();
}

void glRasterPos4d(f64 x, f64 y, f64 z, f64 w) {
    *(? (**)())0x1804();
}

void glRasterPos4dv(f64 *v) {
    *(? (**)())0x1808();
}

void glRasterPos4f(f32 x, f32 y, f32 z, f32 w) {
    *(? (**)())0x180C();
}

void glRasterPos4fv(f32 *v) {
    *(? (**)())0x1810();
}

void glRasterPos4i(s32 x, s32 y, s32 z, s32 w) {
    *(? (**)())0x1814();
}

void glRasterPos4iv(s32 *v) {
    *(? (**)())0x1818();
}

void glRasterPos4s(s16 x, s16 y, s16 z, s16 w) {
    *(? (**)())0x181C();
}

void glRasterPos4sv(s16 *v) {
    *(? (**)())0x1820();
}

void glRectd(f64 x1, f64 y1, f64 x2, f64 y2) {
    *(? (**)())0x1824();
}

void glRectdv(f64 *v1, f64 *v2) {
    *(? (**)())0x1828();
}

void glRectf(f32 x1, f32 y1, f32 x2, f32 y2) {
    *(? (**)())0x182C();
}

void glRectfv(f32 *v1, f32 *v2) {
    *(? (**)())0x1830();
}

void glRecti(s32 x1, s32 y1, s32 x2, s32 y2) {
    *(? (**)())0x1834();
}

void glRectiv(s32 *v1, s32 *v2) {
    *(? (**)())0x1838();
}

void glRects(s16 x1, s16 y1, s16 x2, s16 y2) {
    *(? (**)())0x183C();
}

void glRectsv(s16 *v1, s16 *v2) {
    *(? (**)())0x1840();
}

void glTexCoord1d(f64 s) {
    *(? (**)())0x1744();
}

void glTexCoord1dv(f64 *v) {
    *(? (**)())0x1748();
}

void glTexCoord1f(f32 s) {
    *(? (**)())0x174C();
}

void glTexCoord1fv(f32 *v) {
    *(? (**)())0x1750();
}

void glTexCoord1i(s32 s) {
    *(? (**)())0x1754();
}

void glTexCoord1iv(s32 *v) {
    *(? (**)())0x1758();
}

void glTexCoord1s(s16 s) {
    *(? (**)())0x175C();
}

void glTexCoord1sv(s16 *v) {
    *(? (**)())0x1760();
}

void glTexCoord2d(f64 s, f64 t) {
    *(? (**)())0x1764();
}

void glTexCoord2dv(f64 *v) {
    *(? (**)())0x1768();
}

void glTexCoord2f(f32 s, f32 t) {
    *(? (**)())0x176C();
}

void glTexCoord2fv(f32 *v) {
    *(? (**)())0x1770();
}

void glTexCoord2i(s32 s, s32 t) {
    *(? (**)())0x1774();
}

void glTexCoord2iv(s32 *v) {
    *(? (**)())0x1778();
}

void glTexCoord2s(s16 s, s16 t) {
    *(? (**)())0x177C();
}

void glTexCoord2sv(s16 *v) {
    *(? (**)())0x1780();
}

void glTexCoord3d(f64 s, f64 t, f64 r) {
    *(? (**)())0x1784();
}

void glTexCoord3dv(f64 *v) {
    *(? (**)())0x1788();
}

void glTexCoord3f(f32 s, f32 t, f32 r) {
    *(? (**)())0x178C();
}

void glTexCoord3fv(f32 *v) {
    *(? (**)())0x1790();
}

void glTexCoord3i(s32 s, s32 t, s32 r) {
    *(? (**)())0x1794();
}

void glTexCoord3iv(s32 *v) {
    *(? (**)())0x1798();
}

void glTexCoord3s(s16 s, s16 t, s16 r) {
    *(? (**)())0x179C();
}

void glTexCoord3sv(s16 *v) {
    *(? (**)())0x17A0();
}

void glTexCoord4d(f64 s, f64 t, f64 r, f64 q) {
    *(? (**)())0x17A4();
}

void glTexCoord4dv(f64 *v) {
    *(? (**)())0x17A8();
}

void glTexCoord4f(f32 s, f32 t, f32 r, f32 q) {
    *(? (**)())0x17AC();
}

void glTexCoord4fv(f32 *v) {
    *(? (**)())0x17B0();
}

void glTexCoord4i(s32 s, s32 t, s32 r, s32 q) {
    *(? (**)())0x17B4();
}

void glTexCoord4iv(s32 *v) {
    *(? (**)())0x17B8();
}

void glTexCoord4s(s16 s, s16 t, s16 r, s16 q) {
    *(? (**)())0x17BC();
}

void glTexCoord4sv(s16 *v) {
    *(? (**)())0x17C0();
}

void glVertex2d(f64 x, f64 y) {
    *(? (**)())0x1614();
}

void glVertex2dv(f64 *v) {
    *(? (**)())0x1618();
}

void glVertex2f(f32 x, f32 y) {
    *(? (**)())0x161C();
}

void glVertex2fv(f32 *v) {
    *(? (**)())0x1620();
}

void glVertex2i(s32 x, s32 y) {
    *(? (**)())0x1624();
}

void glVertex2iv(s32 *v) {
    *(? (**)())0x1628();
}

void glVertex2s(s16 x, s16 y) {
    *(? (**)())0x162C();
}

void glVertex2sv(s16 *v) {
    *(? (**)())0x1630();
}

void glVertex3d(f64 x, f64 y, f64 z) {
    *(? (**)())0x1634();
}

void glVertex3dv(f64 *v) {
    *(? (**)())0x1638();
}

void glVertex3f(f32 x, f32 y, f32 z) {
    *(? (**)())0x163C();
}

void glVertex3fv(f32 *v) {
    *(? (**)())0x1640();
}

void glVertex3i(s32 x, s32 y, s32 z) {
    *(? (**)())0x1644();
}

void glVertex3iv(s32 *v) {
    *(? (**)())0x1648();
}

void glVertex3s(s16 x, s16 y, s16 z) {
    *(? (**)())0x164C();
}

void glVertex3sv(s16 *v) {
    *(? (**)())0x1650();
}

void glVertex4d(f64 x, f64 y, f64 z, f64 w) {
    *(? (**)())0x1654();
}

void glVertex4dv(f64 *v) {
    *(? (**)())0x1658();
}

void glVertex4f(f32 x, f32 y, f32 z, f32 w) {
    *(? (**)())0x165C();
}

void glVertex4fv(f32 *v) {
    *(? (**)())0x1660();
}

void glVertex4i(s32 x, s32 y, s32 z, s32 w) {
    *(? (**)())0x1664();
}

void glVertex4iv(s32 *v) {
    *(? (**)())0x1668();
}

void glVertex4s(s16 x, s16 y, s16 z, s16 w) {
    *(? (**)())0x166C();
}

void glVertex4sv(s16 *v) {
    *(? (**)())0x1670();
}

void glClipPlane(enum GLenum plane, f64 *equation) {
    *(? (**)())0x1078();
}

void glColorMaterial(enum GLenum face, enum GLenum mode) {
    *(? (**)())0x107C();
}

void glCullFace(enum GLenum mode) {
    *(? (**)())0x1080();
}

void glFogf(enum GLenum pname, f32 param) {
    *(? (**)())0x1084();
}

void glFogfv(enum GLenum pname, f32 *params) {
    *(? (**)())0x1088();
}

void glFogi(enum GLenum pname, s32 param) {
    *(? (**)())0x108C();
}

void glFogiv(enum GLenum pname, s32 *params) {
    *(? (**)())0x1090();
}

void glFrontFace(enum GLenum mode) {
    *(? (**)())0x1094();
}

void glHint(enum GLenum target, enum GLenum mode) {
    *(? (**)())0x1098();
}

void glLightf(enum GLenum light, enum GLenum pname, f32 param) {
    *(? (**)())0x109C();
}

void glLightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    *(? (**)())0x10A0();
}

void glLighti(enum GLenum light, enum GLenum pname, s32 param) {
    *(? (**)())0x10A4();
}

void glLightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    *(? (**)())0x10A8();
}

void glLightModelf(enum GLenum pname, f32 param) {
    *(? (**)())0x10AC();
}

void glLightModelfv(enum GLenum pname, f32 *params) {
    *(? (**)())0x10B0();
}

void glLightModeli(enum GLenum pname, s32 param) {
    *(? (**)())0x10B4();
}

void glLightModeliv(enum GLenum pname, s32 *params) {
    *(? (**)())0x10B8();
}

void glLineStipple(s32 factor, u16 pattern) {
    *(? (**)())0x10BC();
}

void glLineWidth(f32 width) {
    *(? (**)())0x10C0();
}

void glMaterialf(enum GLenum face, enum GLenum pname, f32 param) {
    *(? (**)())0x10C4();
}

void glMaterialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    *(? (**)())0x10C8();
}

void glMateriali(enum GLenum face, enum GLenum pname, s32 param) {
    *(? (**)())0x10CC();
}

void glMaterialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    *(? (**)())0x10D0();
}

void glPointSize(f32 size) {
    *(? (**)())0x10D4();
}

void glPolygonMode(enum GLenum face, enum GLenum mode) {
    *(? (**)())0x10D8();
}

void glPolygonStipple(u8 *mask) {
    *(? (**)())0x10DC();
}

void glScissor(s32 x, s32 y, s32 width, s32 height) {
    *(? (**)())0x10E0();
}

void glShadeModel(enum GLenum mode) {
    *(? (**)())0x10E4();
}

void glTexParameterf(enum GLenum target, enum GLenum pname, f32 param) {
    *(? (**)())0x10E8();
}

void glTexParameterfv(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x10EC();
}

void glTexParameteri(enum GLenum target, enum GLenum pname, s32 param) {
    *(? (**)())0x10F0();
}

void glTexParameteriv(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x10F4();
}

void glTexImage1D(enum GLenum target, s32 level, s32 internalformat, s32 width, s32 border, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x10F8();
}

void glTexImage2D(enum GLenum target, s32 level, s32 internalformat, s32 width, s32 height, s32 border, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x10FC();
}

void glTexEnvf(enum GLenum target, enum GLenum pname, f32 param) {
    *(? (**)())0x1100();
}

void glTexEnvfv(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1104();
}

void glTexEnvi(enum GLenum target, enum GLenum pname, s32 param) {
    *(? (**)())0x1108();
}

void glTexEnviv(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x110C();
}

void glTexGend(enum GLenum coord, enum GLenum pname, f64 param) {
    *(? (**)())0x1110();
}

void glTexGendv(enum GLenum coord, enum GLenum pname, f64 *params) {
    *(? (**)())0x1114();
}

void glTexGenf(enum GLenum coord, enum GLenum pname, f32 param) {
    *(? (**)())0x1118();
}

void glTexGenfv(enum GLenum coord, enum GLenum pname, f32 *params) {
    *(? (**)())0x111C();
}

void glTexGeni(enum GLenum coord, enum GLenum pname, s32 param) {
    *(? (**)())0x1120();
}

void glTexGeniv(enum GLenum coord, enum GLenum pname, s32 *params) {
    *(? (**)())0x1124();
}

void glFeedbackBuffer(s32 size, enum GLenum type, f32 *buffer) {
    *(? (**)())0x1128();
}

void glSelectBuffer(s32 size, u32 *buffer) {
    *(? (**)())0x112C();
}

s32 glRenderMode(enum GLenum mode) {
    return *(s32 (**)())0x1130();
}

void glInitNames(void) {
    *(? (**)())0x1134();
}

void glLoadName(u32 name) {
    *(? (**)())0x1138();
}

void glPassThrough(f32 token) {
    *(? (**)())0x113C();
}

void glPopName(void) {
    *(? (**)())0x1140();
}

void glPushName(u32 name) {
    *(? (**)())0x1144();
}

void glDrawBuffer(enum GLenum buf) {
    *(? (**)())0x1148();
}

void glClear(u32 mask) {
    *(? (**)())0x114C();
}

void glClearAccum(f32 red, f32 green, f32 blue, f32 alpha) {
    *(? (**)())0x1150();
}

void glClearIndex(f32 c) {
    *(? (**)())0x1154();
}

void glClearColor(f32 red, f32 green, f32 blue, f32 alpha) {
    *(? (**)())0x1158();
}

void glClearStencil(s32 s) {
    *(? (**)())0x115C();
}

void glClearDepth(f64 depth) {
    *(? (**)())0x1160();
}

void glStencilMask(u32 mask) {
    *(? (**)())0x1164();
}

void glColorMask(u8 red, u8 green, u8 blue, u8 alpha) {
    *(? (**)())0x1168();
}

void glDepthMask(u8 flag) {
    *(? (**)())0x116C();
}

void glIndexMask(u32 mask) {
    *(? (**)())0x1170();
}

void glAccum(enum GLenum op, f32 value) {
    *(? (**)())0x1174();
}

void glDisable(enum GLenum cap) {
    *(? (**)())0x1178();
}

void glEnable(enum GLenum cap) {
    *(? (**)())0x117C();
}

void glFinish(void) {
    *(? (**)())0x1180();
}

void glFlush(void) {
    *(? (**)())0x1184();
}

void glPopAttrib(void) {
    *(? (**)())0x1188();
}

void glPushAttrib(u32 mask) {
    *(? (**)())0x118C();
}

void glMap1d(enum GLenum target, f64 u1, f64 u2, s32 stride, s32 order, f64 *points) {
    *(? (**)())0x1190();
}

void glMap1f(enum GLenum target, f32 u1, f32 u2, s32 stride, s32 order, f32 *points) {
    *(? (**)())0x1194();
}

void glMap2d(enum GLenum target, f64 u1, f64 u2, s32 ustride, s32 uorder, f64 v1, f64 v2, s32 vstride, s32 vorder, f64 *points) {
    *(? (**)())0x1198();
}

void glMap2f(enum GLenum target, f32 u1, f32 u2, s32 ustride, s32 uorder, f32 v1, f32 v2, s32 vstride, s32 vorder, f32 *points) {
    *(? (**)())0x119C();
}

void glMapGrid1d(s32 un, f64 u1, f64 u2) {
    *(? (**)())0x11A0();
}

void glMapGrid1f(s32 un, f32 u1, f32 u2) {
    *(? (**)())0x11A4();
}

void glMapGrid2d(s32 un, f64 u1, f64 u2, s32 vn, f64 v1, f64 v2) {
    *(? (**)())0x11A8();
}

void glMapGrid2f(s32 un, f32 u1, f32 u2, s32 vn, f32 v1, f32 v2) {
    *(? (**)())0x11AC();
}

void glEvalCoord1d(f64 u) {
    *(? (**)())0x11B0();
}

void glEvalCoord1dv(f64 *u) {
    *(? (**)())0x11B4();
}

void glEvalCoord1f(f32 u) {
    *(? (**)())0x11B8();
}

void glEvalCoord1fv(f32 *u) {
    *(? (**)())0x11BC();
}

void glEvalCoord2d(f64 u, f64 v) {
    *(? (**)())0x11C0();
}

void glEvalCoord2dv(f64 *u) {
    *(? (**)())0x11C4();
}

void glEvalCoord2f(f32 u, f32 v) {
    *(? (**)())0x11C8();
}

void glEvalCoord2fv(f32 *u) {
    *(? (**)())0x11CC();
}

void glEvalMesh1(enum GLenum mode, s32 i1, s32 i2) {
    *(? (**)())0x11D0();
}

void glEvalPoint1(s32 i) {
    *(? (**)())0x11D4();
}

void glEvalMesh2(enum GLenum mode, s32 i1, s32 i2, s32 j1, s32 j2) {
    *(? (**)())0x11D8();
}

void glEvalPoint2(s32 i, s32 j) {
    *(? (**)())0x11DC();
}

void glAlphaFunc(enum GLenum func, f32 ref) {
    *(? (**)())0x11E0();
}

void glBlendFunc(enum GLenum sfactor, enum GLenum dfactor) {
    *(? (**)())0x11E4();
}

void glLogicOp(enum GLenum opcode) {
    *(? (**)())0x11E8();
}

void glStencilFunc(enum GLenum func, s32 ref, u32 mask) {
    *(? (**)())0x11EC();
}

void glStencilOp(enum GLenum fail, enum GLenum zfail, enum GLenum zpass) {
    *(? (**)())0x11F0();
}

void glDepthFunc(enum GLenum func) {
    *(? (**)())0x11F4();
}

void glPixelZoom(f32 xfactor, f32 yfactor) {
    *(? (**)())0x11F8();
}

void glPixelTransferf(enum GLenum pname, f32 param) {
    *(? (**)())0x11FC();
}

void glPixelTransferi(enum GLenum pname, s32 param) {
    *(? (**)())0x1200();
}

void glPixelStoref(enum GLenum pname, f32 param) {
    *(? (**)())0x1204();
}

void glPixelStorei(enum GLenum pname, s32 param) {
    *(? (**)())0x1208();
}

void glPixelMapfv(enum GLenum map, s32 mapsize, f32 *values) {
    *(? (**)())0x120C();
}

void glPixelMapuiv(enum GLenum map, s32 mapsize, u32 *values) {
    *(? (**)())0x1210();
}

void glPixelMapusv(enum GLenum map, s32 mapsize, u16 *values) {
    *(? (**)())0x1214();
}

void glReadBuffer(enum GLenum src) {
    *(? (**)())0x1218();
}

void glCopyPixels(s32 x, s32 y, s32 width, s32 height, enum GLenum type) {
    *(? (**)())0x121C();
}

void glReadPixels(s32 x, s32 y, s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x1220();
}

void glDrawPixels(s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x1224();
}

void glGetBooleanv(enum GLenum pname, u8 *data) {
    *(? (**)())0x1228();
}

void glGetClipPlane(enum GLenum plane, f64 *equation) {
    *(? (**)())0x122C();
}

void glGetDoublev(enum GLenum pname, f64 *data) {
    *(? (**)())0x1230();
}

enum GLenum glGetError(void) {
    return *(enum GLenum (**)())0x1234();
}

void glGetFloatv(enum GLenum pname, f32 *data) {
    *(? (**)())0x1238();
}

void glGetIntegerv(enum GLenum pname, s32 *data) {
    *(? (**)())0x123C();
}

void glGetLightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    *(? (**)())0x1240();
}

void glGetLightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    *(? (**)())0x1244();
}

void glGetMapdv(enum GLenum target, enum GLenum query, f64 *v) {
    *(? (**)())0x1248();
}

void glGetMapfv(enum GLenum target, enum GLenum query, f32 *v) {
    *(? (**)())0x124C();
}

void glGetMapiv(enum GLenum target, enum GLenum query, s32 *v) {
    *(? (**)())0x1250();
}

void glGetMaterialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    *(? (**)())0x1254();
}

void glGetMaterialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    *(? (**)())0x1258();
}

void glGetPixelMapfv(enum GLenum map, f32 *values) {
    *(? (**)())0x125C();
}

void glGetPixelMapuiv(enum GLenum map, u32 *values) {
    *(? (**)())0x1260();
}

void glGetPixelMapusv(enum GLenum map, u16 *values) {
    *(? (**)())0x1264();
}

void glGetPolygonStipple(u8 *mask) {
    *(? (**)())0x1268();
}

u8 *glGetString(enum GLenum name) {
    return *(u8 *(**)())0x126C();
}

void glGetTexEnvfv(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1270();
}

void glGetTexEnviv(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1274();
}

void glGetTexGendv(enum GLenum coord, enum GLenum pname, f64 *params) {
    *(? (**)())0x1278();
}

void glGetTexGenfv(enum GLenum coord, enum GLenum pname, f32 *params) {
    *(? (**)())0x127C();
}

void glGetTexGeniv(enum GLenum coord, enum GLenum pname, s32 *params) {
    *(? (**)())0x1280();
}

void glGetTexImage(enum GLenum target, s32 level, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x1284();
}

void glGetTexParameterfv(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1288();
}

void glGetTexParameteriv(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x128C();
}

void glGetTexLevelParameterfv(enum GLenum target, s32 level, enum GLenum pname, f32 *params) {
    *(? (**)())0x1290();
}

void glGetTexLevelParameteriv(enum GLenum target, s32 level, enum GLenum pname, s32 *params) {
    *(? (**)())0x1294();
}

u8 glIsEnabled(enum GLenum cap) {
    return *(u8 (**)())0x1298();
}

u8 glIsList(u32 list) {
    return *(u8 (**)())0x129C();
}

void glDepthRange(f64 n, f64 f) {
    *(? (**)())0x12A0();
}

void glFrustum(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    *(? (**)())0x12A4();
}

void glLoadIdentity(void) {
    *(? (**)())0x12A8();
}

void glLoadMatrixf(f32 *m) {
    *(? (**)())0x12AC();
}

void glLoadMatrixd(f64 *m) {
    *(? (**)())0x12B0();
}

void glMatrixMode(enum GLenum mode) {
    *(? (**)())0x12B4();
}

void glMultMatrixf(f32 *m) {
    *(? (**)())0x12B8();
}

void glMultMatrixd(f64 *m) {
    *(? (**)())0x12BC();
}

void glOrtho(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    *(? (**)())0x12C0();
}

void glPopMatrix(void) {
    *(? (**)())0x12C4();
}

void glPushMatrix(void) {
    *(? (**)())0x12C8();
}

void glRotated(f64 angle, f64 x, f64 y, f64 z) {
    *(? (**)())0x12CC();
}

void glRotatef(f32 angle, f32 x, f32 y, f32 z) {
    *(? (**)())0x12D0();
}

void glScaled(f64 x, f64 y, f64 z) {
    *(? (**)())0x12D4();
}

void glScalef(f32 x, f32 y, f32 z) {
    *(? (**)())0x12D8();
}

void glTranslated(f64 x, f64 y, f64 z) {
    *(? (**)())0x12DC();
}

void glTranslatef(f32 x, f32 y, f32 z) {
    *(? (**)())0x12E0();
}

void glViewport(s32 x, s32 y, s32 width, s32 height) {
    *(? (**)())0x12E4();
}

void glBlendColorEXT(f32 red, f32 green, f32 blue, f32 alpha) {
    *(? (**)())0x12E8();
}

void glBlendEquationEXT(enum GLenum mode) {
    *(? (**)())0x12EC();
}

void glPolygonOffsetEXT(f32 factor, f32 bias) {
    *(? (**)())0x12F0();
}

void glTexSubImage1DEXT(enum GLenum target, s32 level, s32 xoffset, s32 width, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x12F4();
}

void glTexSubImage2DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x12F8();
}

void glConvolutionFilter1DEXT(enum GLenum target, enum GLenum internalformat, s32 width, enum GLenum format, enum GLenum type, void *image) {
    *(? (**)())0x12FC();
}

void glConvolutionFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 width, s32 height, enum GLenum format, enum GLenum type, void *image) {
    *(? (**)())0x1300();
}

void glConvolutionParameterfEXT(enum GLenum target, enum GLenum pname, f32 params) {
    *(? (**)())0x1304();
}

void glConvolutionParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1308();
}

void glConvolutionParameteriEXT(enum GLenum target, enum GLenum pname, s32 params) {
    *(? (**)())0x130C();
}

void glConvolutionParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1310();
}

void glCopyConvolutionFilter1DEXT(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width) {
    *(? (**)())0x1314();
}

void glCopyConvolutionFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width, s32 height) {
    *(? (**)())0x1318();
}

void glGetConvolutionFilterEXT(enum GLenum target, enum GLenum format, enum GLenum type, void *image) {
    *(? (**)())0x131C();
}

void glGetConvolutionParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1320();
}

void glGetConvolutionParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1324();
}

void glGetSeparableFilterEXT(enum GLenum target, enum GLenum format, enum GLenum type, void *row, void *column, void *span) {
    *(? (**)())0x1328();
}

void glSeparableFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 width, s32 height, enum GLenum format, enum GLenum type, void *row, void *column) {
    *(? (**)())0x132C();
}

void glGetHistogramEXT(enum GLenum target, u8 reset, enum GLenum format, enum GLenum type, void *values) {
    *(? (**)())0x1330();
}

void glGetHistogramParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1334();
}

void glGetHistogramParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1338();
}

void glGetMinmaxEXT(enum GLenum target, u8 reset, enum GLenum format, enum GLenum type, void *values) {
    *(? (**)())0x133C();
}

void glGetMinmaxParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1340();
}

void glGetMinmaxParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1344();
}

void glHistogramEXT(enum GLenum target, s32 width, enum GLenum internalformat, u8 sink) {
    *(? (**)())0x1348();
}

void glMinmaxEXT(enum GLenum target, enum GLenum internalformat, u8 sink) {
    *(? (**)())0x134C();
}

void glResetHistogramEXT(enum GLenum target) {
    *(? (**)())0x1350();
}

void glResetMinmaxEXT(enum GLenum target) {
    *(? (**)())0x1354();
}

void glTexImage3DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 width, s32 height, s32 depth, s32 border, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x1358();
}

void glTexSubImage3DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 zoffset, s32 width, s32 height, s32 depth, enum GLenum format, enum GLenum type, void *pixels) {
    *(? (**)())0x135C();
}

void glArrayElementEXT(s32 i) {
    *(? (**)())0x1360();
}

void glColorPointerEXT(s32 size, enum GLenum type, s32 stride, s32 count, void *pointer) {
    *(? (**)())0x1364();
}

void glDrawArraysEXT(enum GLenum mode, s32 first, s32 count) {
    *(? (**)())0x1368();
}

void glEdgeFlagPointerEXT(s32 stride, s32 count, u8 *pointer) {
    *(? (**)())0x136C();
}

void glGetPointervEXT(enum GLenum pname, void **params) {
    *(? (**)())0x1370();
}

void glIndexPointerEXT(enum GLenum type, s32 stride, s32 count, void *pointer) {
    *(? (**)())0x1374();
}

void glNormalPointerEXT(enum GLenum type, s32 stride, s32 count, void *pointer) {
    *(? (**)())0x1378();
}

void glTexCoordPointerEXT(s32 size, enum GLenum type, s32 stride, s32 count, void *pointer) {
    *(? (**)())0x137C();
}

void glVertexPointerEXT(s32 size, enum GLenum type, s32 stride, s32 count, void *pointer) {
    *(? (**)())0x1380();
}

u8 glAreTexturesResidentEXT(s32 n, u32 *textures, u8 *residences) {
    return *(u8 (**)())0x1384();
}

void glBindTextureEXT(enum GLenum target, u32 texture) {
    *(? (**)())0x1388();
}

void glDeleteTexturesEXT(s32 n, u32 *textures) {
    *(? (**)())0x138C();
}

void glGenTexturesEXT(s32 n, u32 *textures) {
    *(? (**)())0x1390();
}

u8 glIsTextureEXT(u32 texture) {
    return *(u8 (**)())0x1394();
}

void glPrioritizeTexturesEXT(s32 n, u32 *textures, f32 *priorities) {
    *(? (**)())0x1398();
}

void glCopyTexImage1DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 x, s32 y, s32 width, s32 border) {
    *(? (**)())0x139C();
}

void glCopyTexImage2DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 x, s32 y, s32 width, s32 height, s32 border) {
    *(? (**)())0x13A0();
}

void glCopyTexSubImage1DEXT(enum GLenum target, s32 level, s32 xoffset, s32 x, s32 y, s32 width) {
    *(? (**)())0x13A4();
}

void glCopyTexSubImage2DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 x, s32 y, s32 width, s32 height) {
    *(? (**)())0x13A8();
}

void glCopyTexSubImage3DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 zoffset, s32 x, s32 y, s32 width, s32 height) {
    *(? (**)())0x13AC();
}

void glColorPointer(s32 size, enum GLenum type, s32 stride, void *pointer) {
    *(? (**)())0x13B0();
}

void glDisableClientState(enum GLenum array) {
    *(? (**)())0x13B4();
}

void glDrawElements(enum GLenum mode, s32 count, enum GLenum type, void *indices) {
    *(? (**)())0x13B8();
}

void glEdgeFlagPointer(s32 stride, void *pointer) {
    *(? (**)())0x13BC();
}

void glEnableClientState(enum GLenum array) {
    *(? (**)())0x13C0();
}

void glIndexPointer(enum GLenum type, s32 stride, void *pointer) {
    *(? (**)())0x13C4();
}

void glInterleavedArrays(enum GLenum format, s32 stride, void *pointer) {
    *(? (**)())0x13C8();
}

void glNormalPointer(enum GLenum type, s32 stride, void *pointer) {
    *(? (**)())0x13CC();
}

void glTexCoordPointer(s32 size, enum GLenum type, s32 stride, void *pointer) {
    *(? (**)())0x13D0();
}

void glVertexPointer(s32 size, enum GLenum type, s32 stride, void *pointer) {
    *(? (**)())0x13D4();
}

void glPolygonOffset(f32 factor, f32 units) {
    *(? (**)())0x13D8();
}

void glIndexub(u8 c) {
    *(? (**)())0x1714();
}

void glIndexubv(u8 *c) {
    *(? (**)())0x1718();
}

void glPopClientAttrib(void) {
    *(? (**)())0x13DC();
}

void glPushClientAttrib(u32 mask) {
    *(? (**)())0x13E0();
}

void glSampleMaskSGIS(void) {
    *(? (**)())0x13E4();
}

void glSamplePatternSGIS(void) {
    *(? (**)())0x13E8();
}

void glTagSampleBufferSGIX(void) {
    *(? (**)())0x13EC();
}

void glDetailTexFuncSGIS(void) {
    *(? (**)())0x13F0();
}

void glGetDetailTexFuncSGIS(void) {
    *(? (**)())0x13F4();
}

void glSharpenTexFuncSGIS(void) {
    *(? (**)())0x13F8();
}

void glGetSharpenTexFuncSGIS(void) {
    *(? (**)())0x13FC();
}

void glColorTableSGI(enum GLenum target, enum GLenum internalformat, s32 width, enum GLenum format, enum GLenum type, void *table) {
    *(? (**)())0x1400();
}

void glColorTableParameterfvSGI(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1404();
}

void glColorTableParameterivSGI(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1408();
}

void glCopyColorTableSGI(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width) {
    *(? (**)())0x140C();
}

void glGetColorTableSGI(enum GLenum target, enum GLenum format, enum GLenum type, void *table) {
    *(? (**)())0x1410();
}

void glGetColorTableParameterfvSGI(enum GLenum target, enum GLenum pname, f32 *params) {
    *(? (**)())0x1414();
}

void glGetColorTableParameterivSGI(enum GLenum target, enum GLenum pname, s32 *params) {
    *(? (**)())0x1418();
}

void glTexImage4DSGIS(void) {
    *(? (**)())0x141C();
}

void glTexSubImage4DSGIS(void) {
    *(? (**)())0x1420();
}

void glPixelTexGenSGIX(void) {
    *(? (**)())0x1424();
}

void glSpriteParameterfSGIX(void) {
    *(? (**)())0x1428();
}

void glSpriteParameterfvSGIX(void) {
    *(? (**)())0x142C();
}

void glSpriteParameteriSGIX(void) {
    *(? (**)())0x1430();
}

void glSpriteParameterivSGIX(void) {
    *(? (**)())0x1434();
}

void glGetTexFilterFuncSGIS(enum GLenum target, enum GLenum filter, f32 *weights) {
    *(? (**)())0x1438();
}

void glTexFilterFuncSGIS(enum GLenum target, enum GLenum filter, s32 n, f32 *weights) {
    *(? (**)())0x143C();
}

void glPointParameterfSGIS(void) {
    *(? (**)())0x1440();
}

void glPointParameterfvSGIS(void) {
    *(? (**)())0x1444();
}

void glFogFuncSGIS(void) {
    *(? (**)())0x1448();
}

void glGetInstrumentsSGIX(void) {
    *(? (**)())0x144C();
}

void glInstrumentsBufferSGIX(void) {
    *(? (**)())0x1450();
}

void glPollInstrumentsSGIX(void) {
    *(? (**)())0x1454();
}

void glReadInstrumentsSGIX(void) {
    *(? (**)())0x1458();
}

void glStartInstrumentsSGIX(void) {
    *(? (**)())0x145C();
}

void glStopInstrumentsSGIX(void) {
    *(? (**)())0x1460();
}

void glFlushRasterSGIX(void) {
    *(? (**)())0x1464();
}

void glReferencePlaneSGIX(void) {
    *(? (**)())0x1468();
}

void glFrameZoomSGIX(void) {
    *(? (**)())0x146C();
}

void glIglooInterfaceSGIX(void) {
    *(? (**)())0x1470();
}

void glDeformationMap3dSGIX(void) {
    *(? (**)())0x1474();
}

void glDeformationMap3fSGIX(void) {
    *(? (**)())0x1478();
}

void glDeformSGIX(void) {
    *(? (**)())0x147C();
}

void glLoadIdentityDeformationMapSGIX(void) {
    *(? (**)())0x1480();
}

void glGetListParameterfvSGIX(void) {
    *(? (**)())0x1484();
}

void glGetListParameterivSGIX(void) {
    *(? (**)())0x1488();
}

void glListParameterfSGIX(void) {
    *(? (**)())0x148C();
}

void glListParameterfvSGIX(void) {
    *(? (**)())0x1490();
}

void glListParameteriSGIX(void) {
    *(? (**)())0x1494();
}

void glListParameterivSGIX(void) {
    *(? (**)())0x1498();
}

void glPixelTransformSGI(void) {
    *(? (**)())0x149C();
}

void glPixelTransformParameterfSGI(void) {
    *(? (**)())0x14A0();
}

void glPixelTransformParameterfvSGI(void) {
    *(? (**)())0x14A4();
}

void glPixelTransformParameteriSGI(void) {
    *(? (**)())0x14A8();
}

void glPixelTransformParameterivSGI(void) {
    *(? (**)())0x14AC();
}

void glGetPixelTransformParameterfvSGI(void) {
    *(? (**)())0x14B0();
}

void glGetPixelTransformParameterivSGI(void) {
    *(? (**)())0x14B4();
}

void glSubdivPatchSGIX(void) {
    *(? (**)())0x14B8();
}

void glSubdivPatchParameterfSGIX(void) {
    *(? (**)())0x14BC();
}

void glSubdivPatchParameteriSGIX(void) {
    *(? (**)())0x14C0();
}

void glNurbsKnots1dSGIX(void) {
    *(? (**)())0x14C4();
}

void glNurbsKnots1fSGIX(void) {
    *(? (**)())0x14C8();
}

void glNurbsKnots2dSGIX(void) {
    *(? (**)())0x14CC();
}

void glNurbsKnots2fSGIX(void) {
    *(? (**)())0x14D0();
}

void glFragmentColorMaterialSGIX(void) {
    *(? (**)())0x14D4();
}

void glFragmentLightfSGIX(void) {
    *(? (**)())0x14D8();
}

void glFragmentLightfvSGIX(void) {
    *(? (**)())0x14DC();
}

void glFragmentLightiSGIX(void) {
    *(? (**)())0x14E0();
}

void glFragmentLightivSGIX(void) {
    *(? (**)())0x14E4();
}

void glFragmentLightModelfSGIX(void) {
    *(? (**)())0x14E8();
}

void glFragmentLightModelfvSGIX(void) {
    *(? (**)())0x14EC();
}

void glFragmentLightModeliSGIX(void) {
    *(? (**)())0x14F0();
}

void glFragmentLightModelivSGIX(void) {
    *(? (**)())0x14F4();
}

void glFragmentMaterialfSGIX(void) {
    *(? (**)())0x14F8();
}

void glFragmentMaterialfvSGIX(void) {
    *(? (**)())0x14FC();
}

void glFragmentMaterialiSGIX(void) {
    *(? (**)())0x1500();
}

void glFragmentMaterialivSGIX(void) {
    *(? (**)())0x1504();
}

void glGetFragmentLightfvSGIX(void) {
    *(? (**)())0x1508();
}

void glGetFragmentLightivSGIX(void) {
    *(? (**)())0x150C();
}

void glGetFragmentMaterialfvSGIX(void) {
    *(? (**)())0x1510();
}

void glGetFragmentMaterialivSGIX(void) {
    *(? (**)())0x1514();
}

void glLightEnviSGIX(void) {
    *(? (**)())0x1518();
}

void glBinormal3bSGIX(void) {
    *(? (**)())0x151C();
}

void glBinormal3bvSGIX(void) {
    *(? (**)())0x1520();
}

void glBinormal3dSGIX(void) {
    *(? (**)())0x1524();
}

void glBinormal3dvSGIX(void) {
    *(? (**)())0x1528();
}

void glBinormal3fSGIX(void) {
    *(? (**)())0x152C();
}

void glBinormal3fvSGIX(void) {
    *(? (**)())0x1530();
}

void glBinormal3iSGIX(void) {
    *(? (**)())0x1534();
}

void glBinormal3ivSGIX(void) {
    *(? (**)())0x1538();
}

void glBinormal3sSGIX(void) {
    *(? (**)())0x153C();
}

void glBinormal3svSGIX(void) {
    *(? (**)())0x1540();
}

void glFragmentLightSpaceSGIX(void) {
    *(? (**)())0x1544();
}

void glTangent3bSGIX(void) {
    *(? (**)())0x1548();
}

void glTangent3bvSGIX(void) {
    *(? (**)())0x154C();
}

void glTangent3dSGIX(void) {
    *(? (**)())0x1550();
}

void glTangent3dvSGIX(void) {
    *(? (**)())0x1554();
}

void glTangent3fSGIX(void) {
    *(? (**)())0x1558();
}

void glTangent3fvSGIX(void) {
    *(? (**)())0x155C();
}

void glTangent3iSGIX(void) {
    *(? (**)())0x1560();
}

void glTangent3ivSGIX(void) {
    *(? (**)())0x1564();
}

void glTangent3sSGIX(void) {
    *(? (**)())0x1568();
}

void glTangent3svSGIX(void) {
    *(? (**)())0x156C();
}

void glMultiTexCoord1dSGIS(void) {
    *(? (**)())0x1570();
}

void glMultiTexCoord1dvSGIS(void) {
    *(? (**)())0x1574();
}

void glMultiTexCoord1fSGIS(void) {
    *(? (**)())0x1578();
}

void glMultiTexCoord1fvSGIS(void) {
    *(? (**)())0x157C();
}

void glMultiTexCoord1iSGIS(void) {
    *(? (**)())0x1580();
}

void glMultiTexCoord1ivSGIS(void) {
    *(? (**)())0x1584();
}

void glMultiTexCoord1sSGIS(void) {
    *(? (**)())0x1588();
}

void glMultiTexCoord1svSGIS(void) {
    *(? (**)())0x158C();
}

void glMultiTexCoord2dSGIS(void) {
    *(? (**)())0x1590();
}

void glMultiTexCoord2dvSGIS(void) {
    *(? (**)())0x1594();
}

void glMultiTexCoord2fSGIS(void) {
    *(? (**)())0x1598();
}

void glMultiTexCoord2fvSGIS(void) {
    *(? (**)())0x159C();
}

void glMultiTexCoord2iSGIS(void) {
    *(? (**)())0x15A0();
}

void glMultiTexCoord2ivSGIS(void) {
    *(? (**)())0x15A4();
}

void glMultiTexCoord2sSGIS(void) {
    *(? (**)())0x15A8();
}

void glMultiTexCoord2svSGIS(void) {
    *(? (**)())0x15AC();
}

void glMultiTexCoord3dSGIS(void) {
    *(? (**)())0x15B0();
}

void glMultiTexCoord3dvSGIS(void) {
    *(? (**)())0x15B4();
}

void glMultiTexCoord3fSGIS(void) {
    *(? (**)())0x15B8();
}

void glMultiTexCoord3fvSGIS(void) {
    *(? (**)())0x15BC();
}

void glMultiTexCoord3iSGIS(void) {
    *(? (**)())0x15C0();
}

void glMultiTexCoord3ivSGIS(void) {
    *(? (**)())0x15C4();
}

void glMultiTexCoord3sSGIS(void) {
    *(? (**)())0x15C8();
}

void glMultiTexCoord3svSGIS(void) {
    *(? (**)())0x15CC();
}

void glMultiTexCoord4dSGIS(void) {
    *(? (**)())0x15D0();
}

void glMultiTexCoord4dvSGIS(void) {
    *(? (**)())0x15D4();
}

void glMultiTexCoord4fSGIS(void) {
    *(? (**)())0x15D8();
}

void glMultiTexCoord4fvSGIS(void) {
    *(? (**)())0x15DC();
}

void glMultiTexCoord4iSGIS(void) {
    *(? (**)())0x15E0();
}

void glMultiTexCoord4ivSGIS(void) {
    *(? (**)())0x15E4();
}

void glMultiTexCoord4sSGIS(void) {
    *(? (**)())0x15E8();
}

void glMultiTexCoord4svSGIS(void) {
    *(? (**)())0x15EC();
}

void glMultiTexCoordPointerSGIS(void) {
    *(? (**)())0x15F0();
}

void glSelectTextureSGIS(void) {
    *(? (**)())0x15F4();
}

void glApplyTextureSGIX(void) {
    *(? (**)())0x15F8();
}

void glTextureLightSGIX(void) {
    *(? (**)())0x15FC();
}

void glTextureMaterialSGIX(void) {
    *(? (**)())0x1600();
}

void glFogLayersSGIX(void) {
    *(? (**)())0x1604();
}

void glColorSubTable(void) {
    *(? (**)())0x1608();
}

void glCopyColorSubTable(void) {
    *(? (**)())0x160C();
}

void glDrawRangeElements(void) {
    *(? (**)())0x1610();
}
