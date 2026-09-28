void __glexpim_Rectd(f64 x1, f64 y1, f64 x2, f64 y2) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;

    sp0 = y2;
    sp8 = x2;
    sp10 = y1;
    sp18 = x1;
    if (__glBeginMode != 0) {
        sp0 = second half of f64;
        sp8 = x2;
        sp10 = second half of f64;
        sp18 = x1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2d(second half of f64, sp10);
        glVertex2d(second half of f64, sp10);
        glVertex2d(second half of f64, sp0);
        glVertex2d(second half of f64, sp0);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2d(second half of f64, sp10);
    glVertex2d(second half of f64, sp10);
    glVertex2d(second half of f64, sp0);
    glVertex2d(second half of f64, sp0);
    __glexpim_End();
}

void __glexpim_Rectdv(f64 *v1, f64 *v2) {
    s64 sp8;
    s64 sp0;

    sp0 = (s64) v2;
    sp8 = (s64) v1;
    if (__glBeginMode != 0) {
        sp0 = (s64) v2;
        sp8 = (s64) v1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2d(sp8->unk0, second half of f64);
        glVertex2d(sp0->unk0, second half of f64);
        glVertex2d(sp0->unk0, second half of f64);
        glVertex2d(sp8->unk0, second half of f64);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2d(sp8->unk0, second half of f64);
    glVertex2d(sp0->unk0, second half of f64);
    glVertex2d(sp0->unk0, second half of f64);
    glVertex2d(sp8->unk0, second half of f64);
    __glexpim_End();
}

void __glexpim_Rectf(f32 x1, f32 y1, f32 x2, f32 y2) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;

    sp0 = (bitwise f64) y2;
    sp8 = (bitwise f64) x2;
    sp10 = (bitwise f64) y1;
    sp18 = (bitwise f64) x1;
    if (__glBeginMode != 0) {
        sp0 = (bitwise f64) y2;
        sp8 = (bitwise f64) x2;
        sp10 = (bitwise f64) y1;
        sp18 = (bitwise f64) x1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2f(second half of f64, (bitwise f32) sp10);
        glVertex2f(second half of f64, (bitwise f32) sp10);
        glVertex2f(second half of f64, (bitwise f32) sp0);
        glVertex2f(second half of f64, (bitwise f32) sp0);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2f(second half of f64, (bitwise f32) sp10);
    glVertex2f(second half of f64, (bitwise f32) sp10);
    glVertex2f(second half of f64, (bitwise f32) sp0);
    glVertex2f(second half of f64, (bitwise f32) sp0);
    __glexpim_End();
}

void __glexpim_Rectfv(f32 *v1, f32 *v2) {
    s64 sp8;
    s64 sp0;

    sp0 = (s64) v2;
    sp8 = (s64) v1;
    if (__glBeginMode != 0) {
        sp0 = (s64) v2;
        sp8 = (s64) v1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2f(sp8->unk0, sp8->unk4);
        glVertex2f(sp0->unk0, sp8->unk4);
        glVertex2f(sp0->unk0, sp0->unk4);
        glVertex2f(sp8->unk0, sp0->unk4);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2f(sp8->unk0, sp8->unk4);
    glVertex2f(sp0->unk0, sp8->unk4);
    glVertex2f(sp0->unk0, sp0->unk4);
    glVertex2f(sp8->unk0, sp0->unk4);
    __glexpim_End();
}

void __glexpim_Recti(s32 x1, s32 y1, s32 x2, s32 y2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp18 = (s64) y2;
    sp8 = (s64) x2;
    sp10 = (s64) y1;
    sp0 = (s64) x1;
    if (__glBeginMode != 0) {
        sp8 = (s64) x2;
        sp10 = (s64) y1;
        sp18 = (s64) y2;
        sp0 = (s64) x1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2i((s32) sp0, (s32) sp10);
        glVertex2i((s32) sp8, (s32) sp10);
        glVertex2i((s32) sp8, (s32) sp18);
        glVertex2i((s32) sp0, (s32) sp18);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2i((s32) sp0, (s32) sp10);
    glVertex2i((s32) sp8, (s32) sp10);
    glVertex2i((s32) sp8, (s32) sp18);
    glVertex2i((s32) sp0, (s32) sp18);
    __glexpim_End();
}

void __glexpim_Rectiv(s32 *v1, s32 *v2) {
    s64 sp8;
    s64 sp0;

    sp0 = (s64) v2;
    sp8 = (s64) v1;
    if (__glBeginMode != 0) {
        sp0 = (s64) v2;
        sp8 = (s64) v1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2i(sp8->unk0, sp8->unk4);
        glVertex2i(sp0->unk0, sp8->unk4);
        glVertex2i(sp0->unk0, sp0->unk4);
        glVertex2i(sp8->unk0, sp0->unk4);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2i(sp8->unk0, sp8->unk4);
    glVertex2i(sp0->unk0, sp8->unk4);
    glVertex2i(sp0->unk0, sp0->unk4);
    glVertex2i(sp8->unk0, sp0->unk4);
    __glexpim_End();
}

void __glexpim_Rects(s16 x1, s16 y1, s16 x2, s16 y2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp18 = (s64) y2;
    sp8 = (s64) x2;
    sp10 = (s64) y1;
    sp0 = (s64) x1;
    if (__glBeginMode != 0) {
        sp8 = (s64) x2;
        sp10 = (s64) y1;
        sp18 = (s64) y2;
        sp0 = (s64) x1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2s((s16) sp0, (s16) sp10);
        glVertex2s((s16) sp8, (s16) sp10);
        glVertex2s((s16) sp8, (s16) sp18);
        glVertex2s((s16) sp0, (s16) sp18);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2s((s16) sp0, (s16) sp10);
    glVertex2s((s16) sp8, (s16) sp10);
    glVertex2s((s16) sp8, (s16) sp18);
    glVertex2s((s16) sp0, (s16) sp18);
    __glexpim_End();
}

void __glexpim_Rectsv(s16 *v1, s16 *v2) {
    s64 sp8;
    s64 sp0;

    sp0 = (s64) v2;
    sp8 = (s64) v1;
    if (__glBeginMode != 0) {
        sp0 = (s64) v2;
        sp8 = (s64) v1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        __glCurrentContext->validate(__glCurrentContext);
        __glBeginMode = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glexpim_Begin(GL_QUADS);
        glVertex2s(sp8->unk0, sp8->unk2);
        glVertex2s(sp0->unk0, sp8->unk2);
        glVertex2s(sp0->unk0, sp0->unk2);
        glVertex2s(sp8->unk0, sp0->unk2);
        __glexpim_End();
        return;
    }
    __glexpim_Begin(GL_QUADS);
    glVertex2s(sp8->unk0, sp8->unk2);
    glVertex2s(sp0->unk0, sp8->unk2);
    glVertex2s(sp0->unk0, sp0->unk2);
    glVertex2s(sp8->unk0, sp0->unk2);
    __glexpim_End();
}
