void __glValidateVertex2(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_a2;
    s32 temp_s3;
    u8 temp_a3;
    void *temp_s2;

    temp_s2 = arg0->unk73E0;
    temp_s3 = ~arg1->unk0 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk48(arg1 + 0x60, arg1 + 0x10, temp_s2);
    }
    temp_a2 = temp_s2->unk40;
    if (temp_s3 & 8) {
        temp_a3 = temp_s2->unk10C;
        if (temp_a2 == 0) {
            arg1->unk2C = (f32) -((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14));
        }
        if (temp_a3 != 0) {
            arg0->unk2E84(arg0, temp_s2, temp_a2, temp_a3);
        }
        if (arg0->unk6A0 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E88(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk3100(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg1->unk18 = 0;
            arg1->unk1C = 0x3F800000;
            arg0->unk2EE4(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EEC(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EEC(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

void __glValidateVertex3(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_s3;
    void *temp_s2;

    temp_s2 = arg0->unk73E0;
    temp_s3 = ~arg1->unk0 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk4C(arg1 + 0x60, arg1 + 0x10, temp_s2);
    }
    if (temp_s3 & 8) {
        if (temp_s2->unk40 == 0) {
            arg1->unk2C = (f32) -((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14) + (arg1->unk28 * arg1->unk18));
        }
        if (temp_s2->unk10C != 0) {
            arg0->unk2E84(arg0, temp_s2, arg0->unk6A0);
        }
        if (arg0->unk6A0 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E88(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk3100(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg1->unk1C = 0x3F800000;
            arg0->unk2EE4(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EEC(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EEC(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

void __glValidateVertex4(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_a6;
    s32 temp_s3;
    void *temp_s2;

    temp_s2 = arg0->unk73E0;
    temp_a6 = ~arg1->unk0;
    temp_s3 = temp_a6 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk50(arg1 + 0x60, arg1 + 0x10, temp_s2, temp_a6, 0x3F800000);
    }
    if (temp_s3 & 8) {
        arg1->unk2C = 0.0f;
        if (arg1->unk1C != 0) {
            arg1->unk2C = (f32) (-((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14) + (arg1->unk28 * arg1->unk18)) / (bitwise f32) arg1->unk1C);
        }
        if (temp_s2->unk10C != 0) {
            arg0->unk2E84(arg0, temp_s2);
        }
        if (arg0->unk6A0 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E88(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk3100(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg0->unk2EE4(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EEC(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EEC(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

void __glValidateLitVertex2(void *arg0, void *arg1, s32 arg2, void *arg_sp28, void *arg_sp30, s32 arg_sp38, s64 arg_sp48) {
    ? (*var_t9)(void *, void *, void *);
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_t2;
    void *var_a0;
    void *var_a5;
    void *var_t0;
    void *var_t1;

    temp_a4 = arg1->unk0;
    var_t0 = arg0;
    var_t1 = arg1;
    var_a5 = var_t0->unk73E0;
    temp_a6 = ~temp_a4;
    var_t2 = temp_a6 & arg2;
    temp_a4_2 = temp_a4 | var_t2;
    var_t1->unk0 = temp_a4_2;
    temp_a7 = var_t2 & 8;
    if (temp_a7 != 0) {
        var_t9 = var_a5->unkA4;
        if (var_a5->unk40 == 0) {
            var_t1->unk2C = (f32) -((var_t1->unk20 * var_t1->unk10) + (var_t1->unk24 * var_t1->unk14));
        }
        var_a0 = var_t1 + 0x20;
        if (var_a5->unk10C != 0) {
            arg_sp28 = var_t0;
            arg_sp30 = var_t1;
            arg_sp38 = var_t2;
            var_t0->unk2E84(var_t0, var_a5, temp_a4_2, var_a5, temp_a6, temp_a7);
            var_t0 = arg_sp28;
            var_t1 = arg_sp30;
            var_t2 = arg_sp38;
            var_a5 = var_t0->unk73E0;
            var_a0 = var_t1 + 0x20;
            var_t9 = var_a5->unkA4;
        }
        var_t9(var_a0, var_t1 + 0x20, var_a5 + 0x58);
    }
    if (var_t2 & 1) {
        var_t0->unk2EEC(var_t0, 0, var_t1);
    }
}

void __glValidateLitVertex3(void *arg0, void *arg1, s32 arg2, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7, void *arg_sp28, void *arg_sp30, s32 arg_sp38, s64 arg_sp48) {
    ? (*var_t9)(void *, void *, void *);
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_t2;
    void *var_a0;
    void *var_a4;
    void *var_t0;
    void *var_t1;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a3 = arg1->unk0;
    var_t0 = arg0;
    var_t1 = arg1;
    var_a4 = var_t0->unk73E0;
    temp_a5 = ~temp_a3;
    var_t2 = temp_a5 & arg2;
    temp_a3_2 = temp_a3 | var_t2;
    var_t1->unk0 = temp_a3_2;
    temp_a6 = var_t2 & 8;
    temp_a7 = var_a4->unk40;
    if (temp_a6 != 0) {
        var_t9 = var_a4->unkA4;
        if (temp_a7 == 0) {
            var_f12 = var_t1->unk10;
            var_f13 = var_t1->unk24;
            var_f15 = var_t1->unk14;
            var_f16 = var_t1->unk28;
            var_f17 = var_f13 * var_f15;
            var_f18 = var_t1->unk18;
            var_f19 = var_f16 * var_f18;
            var_f14 = -((var_t1->unk20 * var_f12) + var_f17 + var_f19);
            var_t1->unk2C = var_f14;
        }
        var_a0 = var_t1 + 0x20;
        if (var_a4->unk10C != 0) {
            arg_sp28 = var_t0;
            arg_sp30 = var_t1;
            arg_sp38 = var_t2;
            var_t0->unk2E84(var_t0, var_a4, temp_a3_2, var_a4, temp_a5, temp_a6, temp_a7, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
            var_t0 = arg_sp28;
            var_t1 = arg_sp30;
            var_t2 = arg_sp38;
            var_a4 = var_t0->unk73E0;
            var_a0 = var_t1 + 0x20;
            var_t9 = var_a4->unkA4;
        }
        var_t9(var_a0, var_t1 + 0x20, var_a4 + 0x58);
    }
    if (var_t2 & 1) {
        var_t0->unk2EEC(var_t0, 0, var_t1);
    }
}

void __glValidateLitVertex4(void *arg0, void *arg1, s32 arg2, void *arg_sp28, void *arg_sp30, s32 arg_sp38, s64 arg_sp48) {
    ? (*var_t9)(void *, void *, void *);
    s32 temp_a2;
    s32 temp_v0;
    s32 var_t2;
    u8 temp_a3;
    void *var_a0;
    void *var_t0;
    void *var_t1;
    void *var_v1;

    temp_v0 = arg1->unk0;
    var_t0 = arg0;
    var_t1 = arg1;
    var_v1 = var_t0->unk73E0;
    var_t2 = ~temp_v0 & arg2;
    var_t1->unk0 = (s32) (temp_v0 | var_t2);
    temp_a2 = var_t1->unk1C;
    if (var_t2 & 8) {
        temp_a3 = var_v1->unk10C;
        var_t9 = var_v1->unkA4;
        if (temp_a2 == 0) {
            var_t1->unk2C = 0.0f;
        } else {
            var_t1->unk2C = (f32) (-((var_t1->unk20 * var_t1->unk10) + (var_t1->unk24 * var_t1->unk14) + (var_t1->unk28 * var_t1->unk18)) / (bitwise f32) var_t1->unk1C);
        }
        var_a0 = var_t1 + 0x20;
        if (temp_a3 != 0) {
            arg_sp28 = var_t0;
            arg_sp30 = var_t1;
            arg_sp38 = var_t2;
            var_t0->unk2E84(var_t0, var_v1, temp_a2, temp_a3);
            var_t0 = arg_sp28;
            var_t1 = arg_sp30;
            var_t2 = arg_sp38;
            var_v1 = var_t0->unk73E0;
            var_a0 = var_t1 + 0x20;
            var_t9 = var_v1->unkA4;
        }
        var_t9(var_a0, var_t1 + 0x20, var_v1 + 0x58);
    }
    if (var_t2 & 1) {
        var_t0->unk2EEC(var_t0, 0, var_t1);
    }
}
