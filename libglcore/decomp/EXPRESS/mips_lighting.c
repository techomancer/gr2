void __glClampAndScaleColor(void *arg0) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f9;
    f32 var_f10;
    f32 var_f11;
    f32 var_f4;
    f32 var_f8;

    temp_f0 = arg0->unk198;
    temp_f1 = arg0->unk7824;
    temp_f2 = arg0->unk19C;
    temp_f3 = arg0->unk7828;
    var_f4 = temp_f0 * temp_f1;
    temp_f5 = arg0->unk1A0;
    temp_f6 = arg0->unk782C;
    var_f8 = temp_f2 * temp_f3;
    temp_f7 = arg0->unk1A4;
    temp_f9 = arg0->unk784C;
    var_f10 = temp_f5 * temp_f6;
    var_f11 = temp_f7 * temp_f9;
    if ((bitwise s32) temp_f0 >= 0) {
        if ((bitwise s32) temp_f0 <= 0x3F800000) {

        } else {
            var_f4 = temp_f1;
        }
    } else {
        var_f4 = 0.0f;
    }
    if ((bitwise s32) temp_f2 >= 0) {
        if ((bitwise s32) temp_f2 <= 0x3F800000) {
            goto block_7;
        }
        arg0->unkA8 = var_f4;
        var_f8 = temp_f3;
    } else {
        var_f8 = 0.0f;
block_7:
        arg0->unkA8 = var_f4;
    }
    if ((bitwise s32) temp_f5 >= 0) {
        if ((bitwise s32) temp_f5 <= 0x3F800000) {
            goto block_12;
        }
        arg0->unkAC = var_f8;
        var_f10 = temp_f6;
    } else {
        var_f10 = 0.0f;
block_12:
        arg0->unkAC = var_f8;
    }
    if ((bitwise s32) temp_f7 >= 0) {
        if ((bitwise s32) temp_f7 <= 0x3F800000) {
            goto block_17;
        }
        arg0->unkB0 = var_f10;
        var_f11 = temp_f9;
    } else {
        var_f11 = 0.0f;
block_17:
        arg0->unkB0 = var_f10;
    }
    arg0->unkB4 = var_f11;
}

void __glFastCalcRGBColor(void *arg0, s32 arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f19;
    f32 temp_f1;
    f32 temp_f20;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f5;
    f32 var_a0;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_t8;
    f32 var_v0;
    s32 temp_f11;
    s32 var_a5;
    void *temp_a2;
    void *var_a4;
    void *var_a6;
    void *var_a7;

    var_a4 = arg0->unk6E1C;
    var_f12 = arg2->unk20;
    var_f13 = arg2->unk24;
    var_f14 = arg2->unk28;
    if (arg1 == 0) {
        var_a5 = 0;
        var_a6 = arg2 + 0x90;
        var_a7 = arg0 + 0x6DCC;
    } else {
        var_f12 = -var_f12;
        var_f13 = -var_f13;
        var_f14 = -var_f14;
        var_a6 = arg2 + 0xA0;
        var_a7 = arg0 + 0x6DF4;
        var_a5 = 0x30;
    }
    var_f15 = var_a7->unk0;
    var_f16 = var_a7->unk4;
    var_f17 = var_a7->unk8;
    if (var_a4 != NULL) {
loop_10:
        temp_a2 = var_a4 + var_a5;
        var_f15 += temp_a2->unk0;
        var_f16 += temp_a2->unk4;
        var_f17 += temp_a2->unk8;
        temp_f26 = var_a4->unkB8 * var_f14;
        temp_f0 = var_a4->unkA0 * var_f12;
        temp_f2 = var_a4->unkA8;
        temp_f3 = (var_a4->unkB0 * var_f12) + (var_a4->unkB4 * var_f13);
        temp_f1 = var_a4->unkA4 * var_f13;
        var_a4 = var_a4->unkC8;
        temp_f3_2 = temp_f3 + temp_f26;
        temp_f5 = (temp_f0 + temp_f1 + (temp_f2 * var_f14)) - var_a7->unk18;
        if (!(temp_f3_2 <= 0.0f) && (var_f15 += temp_a2->unk10 * temp_f3_2, var_f16 += temp_a2->unk14 * temp_f3_2, temp_f11 = (s32) ((temp_f5 * var_a7->unk1C) + arg0->unkCD0), var_f17 += temp_a2->unk18 * temp_f3_2, !(temp_f5 < 0.0f))) {
            temp_f19 = temp_a2->unk20;
            if (temp_f11 < 0x100) {
                temp_f20 = *(var_a7->unk14 + (temp_f11 * 4));
                var_f15 += temp_f19 * temp_f20;
                var_f16 += temp_a2->unk24 * temp_f20;
                var_t8 = var_f15;
                var_f17 += temp_a2->unk28 * temp_f20;
                if (var_a4 == NULL) {
                    var_v0 = var_f16;
                } else {
                    goto loop_10;
                }
            } else {
                var_f15 += temp_f19;
                var_f16 += temp_a2->unk24;
                var_f17 += temp_a2->unk28;
                goto block_16;
            }
        } else {
block_16:
            if (var_a4 == NULL) {
                goto block_17;
            }
            goto loop_10;
        }
    } else {
block_17:
        var_t8 = var_f15;
        var_v0 = var_f16;
    }
    var_a0 = var_f17;
    if ((bitwise s32) var_t8 >= 0) {
        if (arg0->unk7824 >= (bitwise s32) var_t8) {

        } else {
            var_t8 = (bitwise f32) arg0->unk7824;
        }
    } else {
        var_t8 = 0.0f;
    }
    if ((bitwise s32) var_v0 >= 0) {
        if (arg0->unk7828 >= (bitwise s32) var_v0) {
            goto block_25;
        }
        var_a6->unk0 = var_t8;
        var_v0 = (bitwise f32) arg0->unk7828;
    } else {
        var_v0 = 0.0f;
block_25:
        var_a6->unk0 = var_t8;
    }
    if ((bitwise s32) var_a0 >= 0) {
        if (arg0->unk782C >= (bitwise s32) var_a0) {
            goto block_30;
        }
        var_a6->unk4 = var_v0;
        var_a0 = (bitwise f32) arg0->unk782C;
    } else {
        var_a0 = 0.0f;
block_30:
        var_a6->unk4 = var_v0;
    }
    var_a6->unk8 = var_a0;
    var_a6->unkC = var_a7->unk24;
}
