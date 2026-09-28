void __glexpim_shadowColor3ub(u8 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;

    sp20 = arg1;
    sp18 = arg2;
    __glCurrentContext->state.current.userColor.r = ((arg0 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.g = ((arg1 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = ((arg2 * 4) + __glCurrentContext)->unkDC8;
    ((? (*)(__GLcontext *, ?)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, 0x18EB4C);
    __glexpim_Color3ub(arg0, (u8) arg1, (u8) arg2);
}

void __glexpim_shadowColor3ubv(u8 *arg0) {
    void *temp_a1;

    temp_a1 = (arg0->unk0 * 4) + __glCurrentContext;
    __glCurrentContext->state.current.userColor.r = temp_a1->unkDC8;
    __glCurrentContext->state.current.userColor.g = ((arg0->unk1 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = ((arg0->unk2 * 4) + __glCurrentContext)->unkDC8;
    ((? (*)(__GLcontext *, void *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1);
    __glexpim_Color3ubv(arg0);
}

void __glexpim_shadowColor3b(s8 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    s32 temp_a2;

    temp_f4 = __glCurrentContext->constants.oneOver255;
    sp18 = arg2;
    temp_a2 = (arg2 * 2) + 1;
    sp20 = arg1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg1 * 2) + 1) * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0 * 2) + 1) * temp_f4;
    ((? (*)(__GLcontext *, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2);
    __glexpim_Color3b(arg0, (s8) arg1, (s8) arg2);
}

void __glexpim_shadowColor3bv(s8 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver255;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0->unk0 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg0->unk1 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) ((arg0->unk2 * 2) + 1) * temp_f1;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3bv(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x8. */
void __glexpim_shadowColor3d(f64 fparg0, f64 fparg1, f64 fparg2) {
    unksp8 = fparg2;
    unksp10 = fparg1;
    __glCurrentContext->state.current.userColor.b = (f32) fparg2;
    __glCurrentContext->state.current.userColor.g = (f32) fparg1;
    __glCurrentContext->state.current.userColor.r = (f32) fparg0;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3d(second half of f64, fparg1, fparg2);
}

void __glexpim_shadowColor3dv(f64 *arg0) {
    __glCurrentContext->state.current.userColor.r = (f32) arg0->unk0;
    __glCurrentContext->state.current.userColor.g = (f32) arg0->unk8;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) arg0->unk10;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3dv(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x8. */
void __glexpim_shadowColor3f(f32 fparg0, f64 fparg1, f64 fparg2) {
    unksp8 = fparg2;
    unksp10 = fparg1;
    __glCurrentContext->state.current.userColor.b = (f32) fparg2;
    __glCurrentContext->state.current.userColor.g = (f32) fparg1;
    __glCurrentContext->state.current.userColor.r = fparg0;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3f(second half of f64, (f32) fparg1, (f32) fparg2);
}

void __glexpim_shadowColor3fv(f32 *arg0) {
    __glCurrentContext->state.current.userColor.r = arg0->unk0;
    __glCurrentContext->state.current.userColor.g = arg0->unk4;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = arg0->unk8;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3fv(arg0);
}

void __glexpim_shadowColor3i(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    f32 temp_f4;

    temp_f4 = __glCurrentContext->constants.oneOver4294965000;
    sp18 = arg2;
    sp20 = arg1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (((f32) arg2 * 2.0f) + 1.0f) * temp_f4;
    __glCurrentContext->state.current.userColor.g = (((f32) arg1 * 2.0f) + 1.0f) * temp_f4;
    __glCurrentContext->state.current.userColor.r = (((f32) arg0 * 2.0f) + 1.0f) * temp_f4;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3i(arg0, (s32) arg1, (s32) arg2);
}

void __glexpim_shadowColor3iv(s32 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.userColor.r = (((f32) arg0->unk0 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.userColor.g = (((f32) arg0->unk4 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (((f32) arg0->unk8 * 2.0f) + 1.0f) * temp_f1;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3iv(arg0);
}

void __glexpim_shadowColor3ui(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    u64 temp_a2;

    sp18 = arg2;
    temp_a2 = (u64) (arg2 << 0x20) >> 0x20;
    sp20 = arg1;
    temp_f4 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.g = (f32) ((u64) (arg1 << 0x20) >> 0x20) * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((u64) (arg0 << 0x20) >> 0x20) * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    ((? (*)(__GLcontext *, u64)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2);
    __glexpim_Color3ui((u32) arg0, (u32) arg1, (u32) arg2);
}

void __glexpim_shadowColor3uiv(u32 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.userColor.r = (f32) ((u64) ((s64) arg0->unk0 << 0x20) >> 0x20) * temp_f1;
    __glCurrentContext->state.current.userColor.g = (f32) ((u64) ((s64) arg0->unk4 << 0x20) >> 0x20) * temp_f1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) ((u64) ((s64) arg0->unk8 << 0x20) >> 0x20) * temp_f1;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3uiv(arg0);
}

void __glexpim_shadowColor3s(s16 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    s32 temp_a2;

    temp_f4 = __glCurrentContext->constants.oneOver65535;
    sp18 = arg2;
    temp_a2 = (arg2 * 2) + 1;
    sp20 = arg1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg1 * 2) + 1) * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0 * 2) + 1) * temp_f4;
    ((? (*)(__GLcontext *, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2);
    __glexpim_Color3s(arg0, (s16) arg1, (s16) arg2);
}

void __glexpim_shadowColor3sv(s16 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0->unk0 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg0->unk2 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) ((arg0->unk4 * 2) + 1) * temp_f1;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3sv(arg0);
}

void __glexpim_shadowColor3us(u16 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    f32 temp_f4;

    temp_f4 = __glCurrentContext->constants.oneOver65535;
    sp18 = arg2;
    sp20 = arg1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) arg2 * temp_f4;
    __glCurrentContext->state.current.userColor.g = (f32) arg1 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) arg0 * temp_f4;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3us(arg0, (u16) arg1, (u16) arg2);
}

void __glexpim_shadowColor3usv(u16 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.userColor.r = (f32) arg0->unk0 * temp_f1;
    __glCurrentContext->state.current.userColor.g = (f32) arg0->unk2 * temp_f1;
    __glCurrentContext->state.current.userColor.a = __glCurrentContext->constants.one;
    __glCurrentContext->state.current.userColor.b = (f32) arg0->unk4 * temp_f1;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color3usv(arg0);
}

void __glexpim_shadowColor4ub(u8 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_a4;

    sp28 = arg1;
    sp20 = arg2;
    sp18 = arg3;
    temp_a4 = (arg0 * 4) + __glCurrentContext;
    __glCurrentContext->state.current.userColor.r = temp_a4->unkDC8;
    __glCurrentContext->state.current.userColor.g = ((arg1 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.b = ((arg2 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.a = ((arg3 * 4) + __glCurrentContext)->unkDC8;
    ((? (*)(__GLcontext *, void *, ?)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a4, 0x18E174);
    __glexpim_Color4ub(arg0, (u8) arg1, (u8) arg2, (u8) arg3);
}

void __glexpim_shadowColor4ubv(u8 *arg0) {
    void *temp_a1;
    void *temp_a2;

    temp_a2 = (arg0->unk0 * 4) + __glCurrentContext;
    __glCurrentContext->state.current.userColor.r = temp_a2->unkDC8;
    temp_a1 = (arg0->unk1 * 4) + __glCurrentContext;
    __glCurrentContext->state.current.userColor.g = temp_a1->unkDC8;
    __glCurrentContext->state.current.userColor.b = ((arg0->unk2 * 4) + __glCurrentContext)->unkDC8;
    __glCurrentContext->state.current.userColor.a = ((arg0->unk3 * 4) + __glCurrentContext)->unkDC8;
    ((? (*)(__GLcontext *, void *, void *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1, temp_a2);
    __glexpim_Color4ubv(arg0);
}

void __glexpim_shadowColor4b(s8 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    s32 temp_a2;
    s32 temp_a3;

    sp20 = arg2;
    temp_a2 = (arg2 * 2) + 1;
    temp_f4 = __glCurrentContext->constants.oneOver255;
    sp18 = arg3;
    temp_a3 = (arg3 * 2) + 1;
    sp28 = arg1;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg1 * 2) + 1) * temp_f4;
    __glCurrentContext->state.current.userColor.a = (f32) temp_a3 * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0 * 2) + 1) * temp_f4;
    ((? (*)(__GLcontext *, s32, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2, temp_a3);
    __glexpim_Color4b(arg0, (s8) arg1, (s8) arg2, (s8) arg3);
}

void __glexpim_shadowColor4bv(s8 *arg0) {
    f32 temp_f1;
    s32 temp_a1;
    s32 temp_a2;

    temp_a2 = (arg0->unk0 * 2) + 1;
    temp_f1 = __glCurrentContext->constants.oneOver255;
    __glCurrentContext->state.current.userColor.r = (f32) temp_a2 * temp_f1;
    temp_a1 = (arg0->unk1 * 2) + 1;
    __glCurrentContext->state.current.userColor.g = (f32) temp_a1 * temp_f1;
    __glCurrentContext->state.current.userColor.b = (f32) ((arg0->unk2 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.a = (f32) ((arg0->unk3 * 2) + 1) * temp_f1;
    ((? (*)(__GLcontext *, s32, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1, temp_a2);
    __glexpim_Color4bv(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x8. */
void __glexpim_shadowColor4d(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    unksp8 = fparg3;
    unksp10 = fparg2;
    unksp18 = fparg1;
    __glCurrentContext->state.current.userColor.a = (f32) fparg3;
    __glCurrentContext->state.current.userColor.b = (f32) fparg2;
    __glCurrentContext->state.current.userColor.g = (f32) fparg1;
    __glCurrentContext->state.current.userColor.r = (f32) fparg0;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4d(second half of f64, fparg1, second half of f64, fparg3);
}

void __glexpim_shadowColor4dv(f64 *arg0) {
    __glCurrentContext->state.current.userColor.r = (f32) arg0->unk0;
    __glCurrentContext->state.current.userColor.g = (f32) arg0->unk8;
    __glCurrentContext->state.current.userColor.b = (f32) arg0->unk10;
    __glCurrentContext->state.current.userColor.a = (f32) arg0->unk18;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4dv(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x8. */
void __glexpim_shadowColor4f(f32 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    unksp8 = fparg3;
    unksp10 = fparg2;
    unksp18 = fparg1;
    __glCurrentContext->state.current.userColor.a = (f32) fparg3;
    __glCurrentContext->state.current.userColor.b = (f32) fparg2;
    __glCurrentContext->state.current.userColor.g = (f32) fparg1;
    __glCurrentContext->state.current.userColor.r = fparg0;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4f(second half of f64, (f32) fparg1, second half of f64, (f32) fparg3);
}

void __glexpim_shadowColor4fv(f32 *arg0) {
    __glCurrentContext->state.current.userColor.r = arg0->unk0;
    __glCurrentContext->state.current.userColor.g = arg0->unk4;
    __glCurrentContext->state.current.userColor.b = arg0->unk8;
    __glCurrentContext->state.current.userColor.a = arg0->unkC;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4fv(arg0);
}

void __glexpim_shadowColor4i(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 temp_f4;

    temp_f4 = __glCurrentContext->constants.oneOver4294965000;
    sp18 = arg3;
    sp20 = arg2;
    sp28 = arg1;
    __glCurrentContext->state.current.userColor.a = (((f32) arg3 * 2.0f) + 1.0f) * temp_f4;
    __glCurrentContext->state.current.userColor.b = (((f32) arg2 * 2.0f) + 1.0f) * temp_f4;
    __glCurrentContext->state.current.userColor.g = (((f32) arg1 * 2.0f) + 1.0f) * temp_f4;
    __glCurrentContext->state.current.userColor.r = (((f32) arg0 * 2.0f) + 1.0f) * temp_f4;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4i(arg0, (s32) arg1, (s32) arg2, (s32) arg3);
}

void __glexpim_shadowColor4iv(s32 *arg0) {
    f32 temp_f1;
    s32 temp_a1;

    temp_a1 = arg0->unk0;
    temp_f1 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.userColor.r = (((f32) temp_a1 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.userColor.g = (((f32) arg0->unk4 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.userColor.b = (((f32) arg0->unk8 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.userColor.a = (((f32) arg0->unkC * 2.0f) + 1.0f) * temp_f1;
    ((? (*)(__GLcontext *, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1);
    __glexpim_Color4iv(arg0);
}

void __glexpim_shadowColor4ui(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    u64 temp_a2;
    u64 temp_a3;

    temp_f4 = __glCurrentContext->constants.oneOver4294965000;
    sp18 = arg3;
    temp_a3 = (u64) (arg3 << 0x20) >> 0x20;
    sp20 = arg2;
    temp_a2 = (u64) (arg2 << 0x20) >> 0x20;
    sp28 = arg1;
    __glCurrentContext->state.current.userColor.g = (f32) ((u64) (arg1 << 0x20) >> 0x20) * temp_f4;
    __glCurrentContext->state.current.userColor.a = (f32) temp_a3 * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((u64) (arg0 << 0x20) >> 0x20) * temp_f4;
    ((? (*)(__GLcontext *, u64, u64)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2, temp_a3);
    __glexpim_Color4ui((u32) arg0, (u32) arg1, (u32) arg2, (u32) arg3);
}

void __glexpim_shadowColor4uiv(u32 *arg0) {
    f32 temp_f1;
    u64 temp_a1;
    u64 temp_a2;

    temp_a2 = (u64) ((s64) arg0->unk0 << 0x20) >> 0x20;
    temp_f1 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.userColor.r = (f32) temp_a2 * temp_f1;
    temp_a1 = (u64) ((s64) arg0->unk4 << 0x20) >> 0x20;
    __glCurrentContext->state.current.userColor.g = (f32) temp_a1 * temp_f1;
    __glCurrentContext->state.current.userColor.b = (f32) ((u64) ((s64) arg0->unk8 << 0x20) >> 0x20) * temp_f1;
    __glCurrentContext->state.current.userColor.a = (f32) ((u64) ((s64) arg0->unkC << 0x20) >> 0x20) * temp_f1;
    ((? (*)(__GLcontext *, u64, u64)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1, temp_a2);
    __glexpim_Color4uiv(arg0);
}

void __glexpim_shadowColor4s(s16 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 temp_f4;
    s32 temp_a2;
    s32 temp_a3;

    sp20 = arg2;
    temp_a2 = (arg2 * 2) + 1;
    temp_f4 = __glCurrentContext->constants.oneOver65535;
    sp18 = arg3;
    temp_a3 = (arg3 * 2) + 1;
    sp28 = arg1;
    __glCurrentContext->state.current.userColor.g = (f32) ((arg1 * 2) + 1) * temp_f4;
    __glCurrentContext->state.current.userColor.a = (f32) temp_a3 * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) temp_a2 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) ((arg0 * 2) + 1) * temp_f4;
    ((? (*)(__GLcontext *, s32, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a2, temp_a3);
    __glexpim_Color4s(arg0, (s16) arg1, (s16) arg2, (s16) arg3);
}

void __glexpim_shadowColor4sv(s16 *arg0) {
    f32 temp_f1;
    s32 temp_a1;
    s32 temp_a2;

    temp_a2 = (arg0->unk0 * 2) + 1;
    temp_f1 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.userColor.r = (f32) temp_a2 * temp_f1;
    temp_a1 = (arg0->unk2 * 2) + 1;
    __glCurrentContext->state.current.userColor.g = (f32) temp_a1 * temp_f1;
    __glCurrentContext->state.current.userColor.b = (f32) ((arg0->unk4 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.userColor.a = (f32) ((arg0->unk6 * 2) + 1) * temp_f1;
    ((? (*)(__GLcontext *, s32, s32)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1, temp_a2);
    __glexpim_Color4sv(arg0);
}

void __glexpim_shadowColor4us(u16 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 temp_f4;

    temp_f4 = __glCurrentContext->constants.oneOver65535;
    sp18 = arg3;
    sp20 = arg2;
    sp28 = arg1;
    __glCurrentContext->state.current.userColor.a = (f32) arg3 * temp_f4;
    __glCurrentContext->state.current.userColor.b = (f32) arg2 * temp_f4;
    __glCurrentContext->state.current.userColor.g = (f32) arg1 * temp_f4;
    __glCurrentContext->state.current.userColor.r = (f32) arg0 * temp_f4;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
    __glexpim_Color4us(arg0, (u16) arg1, (u16) arg2, (u16) arg3);
}

void __glexpim_shadowColor4usv(u16 *arg0) {
    f32 temp_f1;
    u16 temp_a1;
    u16 temp_a2;

    temp_a2 = arg0->unk0;
    temp_f1 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.userColor.r = (f32) temp_a2 * temp_f1;
    temp_a1 = arg0->unk2;
    __glCurrentContext->state.current.userColor.g = (f32) temp_a1 * temp_f1;
    __glCurrentContext->state.current.userColor.b = (f32) arg0->unk4 * temp_f1;
    __glCurrentContext->state.current.userColor.a = (f32) arg0->unk6 * temp_f1;
    ((? (*)(__GLcontext *, u16, u16)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, temp_a1, temp_a2);
    __glexpim_Color4usv(arg0);
}

void __glexpim_shadowNormal3d(f64 fparg0, f64 fparg1, f64 fparg2) {
    __glCurrentContext->state.current.normal.z = (f32) fparg2;
    __glCurrentContext->state.current.normal.y = (f32) fparg1;
    __glCurrentContext->state.current.normal.x = (f32) fparg0;
    __glexpim_Normal3d(fparg0, fparg1, fparg2);
}

void __glexpim_shadowNormal3dv(f64 *arg0) {
    __glCurrentContext->state.current.normal.z = (f32) arg0->unk10;
    __glCurrentContext->state.current.normal.y = second half of f64;
    __glCurrentContext->state.current.normal.x = (f32) arg0->unk0;
    __glexpim_Normal3dv(arg0);
}

void __glexpim_shadowNormal3f(f32 fparg0, f32 fparg1, f32 fparg2) {
    __glCurrentContext->state.current.normal.z = fparg2;
    __glCurrentContext->state.current.normal.y = fparg1;
    __glCurrentContext->state.current.normal.x = fparg0;
    __glexpim_Normal3f(fparg0, fparg1, fparg2);
}

void __glexpim_shadowNormal3fv(f32 *arg0) {
    __glCurrentContext->state.current.normal.z = arg0->unk8;
    __glCurrentContext->state.current.normal.y = arg0->unk4;
    __glCurrentContext->state.current.normal.x = arg0->unk0;
    __glexpim_Normal3fv(arg0);
}

void __glexpim_shadowNormal3b(s8 arg0, s8 arg1, s8 arg2) {
    f32 temp_f3;

    temp_f3 = __glCurrentContext->constants.oneOver255;
    __glCurrentContext->state.current.normal.z = (f32) ((arg2 * 2) + 1) * temp_f3;
    __glCurrentContext->state.current.normal.y = (f32) ((arg1 * 2) + 1) * temp_f3;
    __glCurrentContext->state.current.normal.x = (f32) ((arg0 * 2) + 1) * temp_f3;
    __glexpim_Normal3b(arg0, arg1, arg2);
}

void __glexpim_shadowNormal3bv(s8 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver255;
    __glCurrentContext->state.current.normal.x = (f32) ((arg0->unk0 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.normal.y = (f32) ((arg0->unk1 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.normal.z = (f32) ((arg0->unk2 * 2) + 1) * temp_f1;
    __glexpim_Normal3bv(arg0);
}

void __glexpim_shadowNormal3s(s16 arg0, s16 arg1, s16 arg2) {
    f32 temp_f3;

    temp_f3 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.normal.z = (f32) ((arg2 * 2) + 1) * temp_f3;
    __glCurrentContext->state.current.normal.y = (f32) ((arg1 * 2) + 1) * temp_f3;
    __glCurrentContext->state.current.normal.x = (f32) ((arg0 * 2) + 1) * temp_f3;
    __glexpim_Normal3s(arg0, arg1, arg2);
}

void __glexpim_shadowNormal3sv(s16 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver65535;
    __glCurrentContext->state.current.normal.x = (f32) ((arg0->unk0 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.normal.y = (f32) ((arg0->unk2 * 2) + 1) * temp_f1;
    __glCurrentContext->state.current.normal.z = (f32) ((arg0->unk4 * 2) + 1) * temp_f1;
    __glexpim_Normal3sv(arg0);
}

void __glexpim_shadowNormal3i(s32 arg0, s32 arg1, s32 arg2) {
    f32 temp_f3;

    temp_f3 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.normal.z = (((f32) arg2 * 2.0f) + 1.0f) * temp_f3;
    __glCurrentContext->state.current.normal.y = (((f32) arg1 * 2.0f) + 1.0f) * temp_f3;
    __glCurrentContext->state.current.normal.x = (((f32) arg0 * 2.0f) + 1.0f) * temp_f3;
    __glexpim_Normal3i(arg0, arg1, arg2);
}

void __glexpim_shadowNormal3iv(s32 *arg0) {
    f32 temp_f1;

    temp_f1 = __glCurrentContext->constants.oneOver4294965000;
    __glCurrentContext->state.current.normal.x = (((f32) arg0->unk0 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.normal.y = (((f32) arg0->unk4 * 2.0f) + 1.0f) * temp_f1;
    __glCurrentContext->state.current.normal.z = (((f32) arg0->unk8 * 2.0f) + 1.0f) * temp_f1;
    __glexpim_Normal3iv(arg0);
}

void __glexpim_shadowIndexd(f64 fparg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) fparg0;
    __glexpim_Indexd(fparg0);
}

void __glexpim_shadowIndexf(f32 fparg0) {
    __glCurrentContext->state.current.userColorIndex = fparg0;
    __glexpim_Indexf(fparg0);
}

void __glexpim_shadowIndexi(s32 arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) arg0;
    __glexpim_Indexi(arg0);
}

void __glexpim_shadowIndexs(s16 arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) arg0;
    __glexpim_Indexs(arg0);
}

void __glexpim_shadowIndexub(u8 arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) arg0;
    __glexpim_Indexub(arg0);
}

void __glexpim_shadowIndexdv(f64 *arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) *arg0;
    __glexpim_Indexdv(arg0);
}

void __glexpim_shadowIndexfv(f32 *arg0) {
    __glCurrentContext->state.current.userColorIndex = *arg0;
    __glexpim_Indexfv(arg0);
}

void __glexpim_shadowIndexiv(s32 *arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) *arg0;
    __glexpim_Indexiv(arg0);
}

void __glexpim_shadowIndexsv(s16 *arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) *arg0;
    __glexpim_Indexsv(arg0);
}

void __glexpim_shadowIndexubv(u8 *arg0) {
    __glCurrentContext->state.current.userColorIndex = (f32) *arg0;
    __glexpim_Indexubv(arg0);
}
