void __glim_Color3f(f32 red, f32 green, f32 blue) {
    __glCurrentContext->state.current.userColor.r = red;
    __glCurrentContext->state.current.userColor.g = green;
    __glCurrentContext->state.current.userColor.b = blue;
    __glCurrentContext->state.current.userColor.a = 1.0f;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
}

void __glim_Color3fv(f32 *v) {
    __glCurrentContext->state.current.userColor.r = v->unk0;
    __glCurrentContext->state.current.userColor.g = v->unk4;
    __glCurrentContext->state.current.userColor.b = v->unk8;
    __glCurrentContext->state.current.userColor.a = 1.0f;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
}

void __glim_Color4f(f32 red, f32 green, f32 blue, f32 alpha) {
    __glCurrentContext->state.current.userColor.r = red;
    __glCurrentContext->state.current.userColor.g = green;
    __glCurrentContext->state.current.userColor.b = blue;
    __glCurrentContext->state.current.userColor.a = alpha;
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext);
}

void __glim_Color4fv(f32 *v) {
    __glCurrentContext->state.current.userColor.r = v->unk0;
    __glCurrentContext->state.current.userColor.g = v->unk4;
    __glCurrentContext->state.current.userColor.b = v->unk8;
    __glCurrentContext->state.current.userColor.a = v->unkC;
    ((? (*)(__GLcontext *, __GLcontext *)) __glCurrentContext->procs.table[0x2A])(__glCurrentContext, __glCurrentContext);
}

void __glim_Normal3f(f32 nx, f32 ny, f32 nz) {
    __glCurrentContext->state.current.normal.x = nx;
    __glCurrentContext->state.current.normal.y = ny;
    __glCurrentContext->state.current.normal.z = nz;
}

void __glim_Normal3fv(f32 *v) {
    __glCurrentContext->state.current.normal.x = v->unk0;
    __glCurrentContext->state.current.normal.y = v->unk4;
    __glCurrentContext->state.current.normal.z = v->unk8;
}

void __glim_TexCoord2f(f32 s, f32 t) {
    __glCurrentContext->state.current.texture[0].x = s;
    __glCurrentContext->state.current.texture[0].y = t;
    __glCurrentContext->state.current.texture[0].z = 0.0f;
    __glCurrentContext->state.current.texture[0].w = 1.0f;
}

void __glim_TexCoord2fv(f32 *v) {
    __glCurrentContext->state.current.texture[0].x = v->unk0;
    __glCurrentContext->state.current.texture[0].y = v->unk4;
    __glCurrentContext->state.current.texture[0].z = 0.0f;
    __glCurrentContext->state.current.texture[0].w = 1.0f;
}
