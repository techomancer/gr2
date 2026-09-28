void __glMipsClipCheckFrustum(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f8;
    s32 var_v0;

    temp_f0 = arg1->unk7C;
    temp_f1 = arg1->unk70;
    temp_f3 = -temp_f0;
    var_v0 = 0;
    temp_f5 = arg1->unk74;
    if (temp_f1 < temp_f3) {
        var_v0 = 1;
    }
    temp_f8 = arg1->unk78;
    if (!(temp_f1 <= temp_f0)) {
        var_v0 |= 2;
    }
    temp_f10 = arg0->unkCD4 / temp_f0;
    if (temp_f5 < temp_f3) {
        var_v0 |= 4;
    }
    if (!(temp_f5 <= temp_f0)) {
        var_v0 |= 8;
    }
    if (temp_f8 < temp_f3) {
        var_v0 |= 0x10;
    }
    if (!(temp_f8 <= temp_f0)) {
        var_v0 |= 0x20;
    }
    if (var_v0 == 0) {
        arg1->unk80 = (f32) ((temp_f1 * arg0->unk658 * temp_f10) + arg0->unk65C);
        arg1->unk84 = (f32) ((temp_f5 * arg0->unk660 * temp_f10) + arg0->unk664);
        arg1->unk8C = temp_f10;
        arg1->unk88 = (f32) ((temp_f8 * arg0->unk668 * temp_f10) + arg0->unk66C);
        return;
    }
    arg1->unk8C = temp_f10;
}

void __glMipsClipCheckFrustum_W(void *arg0, void *arg1) {
    f32 temp_a2;
    f32 temp_a3;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f19;

    temp_a2 = arg1->unk70;
    temp_a3 = arg1->unk74;
    temp_f16 = arg1->unk78;
    temp_f0 = -1.0f;
    if (temp_a2 < temp_f0) {

    }
    if (temp_a3 < temp_f0) {

    }
    if (temp_f16 < temp_f0) {

    }
    temp_f19 = (temp_a3 * arg0->unk660) + arg0->unk664;
    if ((bitwise s32) temp_a2 > 0x3F800000) {

    }
    if ((bitwise s32) temp_a3 > 0x3F800000) {

    }
    arg1->unk80 = (f32) ((temp_a2 * arg0->unk658) + arg0->unk65C);
    if (temp_f16 <= 1.0f) {

    } else {
        arg1->unk84 = temp_f19;
    }
    arg1->unk84 = temp_f19;
    arg1->unk8C = 0x3F800000;
    arg1->unk88 = (f32) ((temp_f16 * arg0->unk668) + arg0->unk66C);
}

void __glMipsClipCheckFrustum2D(void *arg0, void *arg1) {
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f8;
    f32 temp_f9;
    s32 var_v0;

    temp_f8 = arg0->unkCD4;
    temp_f9 = arg1->unk70;
    temp_f10 = arg1->unk74;
    temp_f11 = -temp_f8;
    var_v0 = 0xF;
    if (temp_f9 <= temp_f8) {
        var_v0 = 0xF ^ 2;
    }
    if (!(temp_f9 < temp_f11)) {
        var_v0 ^= 1;
    }
    if (!(temp_f10 < temp_f11)) {
        var_v0 ^= 4;
    }
    if (temp_f10 <= temp_f8) {
        var_v0 ^= 8;
    }
    if (var_v0 == 0) {
        arg1->unk80 = (f32) ((temp_f9 * arg0->unk658) + arg0->unk65C);
        arg1->unk84 = (f32) ((temp_f10 * arg0->unk660) + arg0->unk664);
        arg1->unk8C = temp_f8;
        arg1->unk88 = (f32) ((arg1->unk78 * arg0->unk668) + arg0->unk66C);
        return;
    }
    arg1->unk8C = temp_f8;
}

void __glMipsClipCheckAll2(s32 arg0, s32 arg1) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;

    sp24 = M2C_ERROR(/* Read from unset register $t3 */);
    sp20 = M2C_ERROR(/* Read from unset register $t2 */);
    sp1C = M2C_ERROR(/* Read from unset register $t1 */);
    sp18 = M2C_ERROR(/* Read from unset register $t0 */);
    sp14 = arg1;
    sp10 = arg0;
    __glClipCheckAll2();
}

void __glMipsClipCheckAll3(s32 arg0, s32 arg1) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;

    sp24 = M2C_ERROR(/* Read from unset register $t3 */);
    sp20 = M2C_ERROR(/* Read from unset register $t2 */);
    sp1C = M2C_ERROR(/* Read from unset register $t1 */);
    sp18 = M2C_ERROR(/* Read from unset register $t0 */);
    sp14 = arg1;
    sp10 = arg0;
    __glClipCheckAll3();
}

void __glMipsClipCheckAll(s32 arg0, s32 arg1) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;

    sp24 = M2C_ERROR(/* Read from unset register $t3 */);
    sp20 = M2C_ERROR(/* Read from unset register $t2 */);
    sp1C = M2C_ERROR(/* Read from unset register $t1 */);
    sp18 = M2C_ERROR(/* Read from unset register $t0 */);
    sp14 = arg1;
    sp10 = arg0;
    __glClipCheckAll();
}
