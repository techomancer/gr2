void __glExpDoGet(__GLcontext *gc, ...) {
    void *temp_a2;

    if (__glBeginMode != 1) {
        temp_a2 = gc - 0xB00;
        switch ((s32) temp_a2) {
        case 0x0:
        case 0x1:
        case 0x2:
        case 0x4:
        case 0x5:
        case 0x7:
        case 0x8:
        case 0x9:
        case 0x43:
            __glExpGetMachineState(__glCurrentContext, __glCurrentContext, ((s32) temp_a2 * 4) + &jtbl_0dbeb0f8);
            break;
        }
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_GetDoublev(enum GLenum pname, f64 *data) {
    s64 sp18;

    sp18 = (s64) data;
    __glExpDoGet((__GLcontext *) pname);
    __glim_GetDoublev(pname, data);
}

void __glexpim_GetFloatv(enum GLenum pname, f32 *data) {
    s64 sp18;

    sp18 = (s64) data;
    __glExpDoGet((__GLcontext *) pname);
    __glim_GetFloatv(pname, data);
}

void __glexpim_GetIntegerv(enum GLenum pname, s32 *data) {
    s64 sp18;

    sp18 = (s64) data;
    __glExpDoGet((__GLcontext *) pname);
    __glim_GetIntegerv(pname, data);
}

void __glexpim_GetBooleanv(enum GLenum pname, u8 *data) {
    s64 sp18;

    sp18 = (s64) data;
    __glExpDoGet((__GLcontext *) pname);
    __glim_GetBooleanv(pname, data);
}
