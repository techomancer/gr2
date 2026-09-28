void __glMipsXForm2_2DNRW(void *arg0, void *arg1, void *arg2) {
    arg0->unk8 = (f32) arg2->unk38;
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) ((arg1->unk0 * arg2->unk0) + arg2->unk30);
    arg0->unk4 = (f32) ((arg1->unk4 * arg2->unk14) + arg2->unk34);
}

void __glMipsXForm2_2DW(void *arg0, void *arg1, void *arg2) {
    f32 temp_f12;
    f32 temp_f9;

    temp_f9 = arg1->unk0;
    temp_f12 = arg1->unk4;
    arg0->unk8 = (f32) arg2->unk38;
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) ((temp_f9 * arg2->unk0) + arg2->unk30 + (temp_f12 * arg2->unk10));
    arg0->unk4 = (f32) ((temp_f9 * arg2->unk4) + arg2->unk34 + (temp_f12 * arg2->unk14));
}

void __glMipsXForm2_W(void *arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f3;

    temp_f0 = arg1->unk0;
    temp_f3 = arg1->unk4;
    arg0->unk0 = (f32) ((temp_f0 * arg2->unk0) + arg2->unk30 + (temp_f3 * arg2->unk10));
    arg0->unkC = 0x3F800000;
    arg0->unk4 = (f32) ((temp_f0 * arg2->unk4) + arg2->unk34 + (temp_f3 * arg2->unk14));
    arg0->unk8 = (f32) ((temp_f0 * arg2->unk8) + arg2->unk38 + (temp_f3 * arg2->unk18));
}

void __glMipsXForm2(void *arg0, void *arg1, void *arg2) {
    f32 temp_f14;
    f32 temp_f17;

    temp_f14 = arg1->unk0;
    temp_f17 = arg1->unk4;
    arg0->unk0 = (f32) ((temp_f14 * arg2->unk0) + arg2->unk30 + (temp_f17 * arg2->unk10));
    arg0->unk4 = (f32) ((temp_f14 * arg2->unk4) + arg2->unk34 + (temp_f17 * arg2->unk14));
    arg0->unk8 = (f32) ((temp_f14 * arg2->unk8) + arg2->unk38 + (temp_f17 * arg2->unk18));
    arg0->unkC = (f32) ((temp_f14 * arg2->unkC) + arg2->unk3C + (temp_f17 * arg2->unk1C));
}

void __glMipsXForm3_2DNRW(void *arg0, void *arg1, void *arg2) {
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) ((arg1->unk0 * arg2->unk0) + arg2->unk30);
    arg0->unk4 = (f32) ((arg1->unk4 * arg2->unk14) + arg2->unk34);
    arg0->unk8 = (f32) ((arg1->unk8 * arg2->unk28) + arg2->unk38);
}

void __glMipsXForm3_2DW(void *arg0, void *arg1, void *arg2) {
    f32 temp_f4;
    f32 temp_f7;

    temp_f4 = arg1->unk0;
    temp_f7 = arg1->unk4;
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) ((temp_f4 * arg2->unk0) + arg2->unk30 + (temp_f7 * arg2->unk10));
    arg0->unk4 = (f32) ((temp_f4 * arg2->unk4) + arg2->unk34 + (temp_f7 * arg2->unk14));
    arg0->unk8 = (f32) ((arg1->unk8 * arg2->unk28) + arg2->unk38);
}

void __glMipsXForm3_W(void *arg0, void *arg1, void *arg2) {
    f32 temp_f18;
    f32 temp_f1;
    f32 temp_f3;

    temp_f18 = arg1->unk0;
    temp_f1 = arg1->unk8;
    temp_f3 = arg1->unk4;
    arg0->unk0 = (f32) ((temp_f18 * arg2->unk0) + arg2->unk30 + (temp_f3 * arg2->unk10) + (temp_f1 * arg2->unk20));
    arg0->unkC = 0x3F800000;
    arg0->unk4 = (f32) ((temp_f18 * arg2->unk4) + arg2->unk34 + (temp_f3 * arg2->unk14) + (temp_f1 * arg2->unk24));
    arg0->unk8 = (f32) ((temp_f18 * arg2->unk8) + arg2->unk38 + (temp_f3 * arg2->unk18) + (temp_f1 * arg2->unk28));
}

void __glMipsXForm3AsmLink_W(void *arg0, void *arg2, f32 fparg0, f32 fparg2) {
    arg0->unk0 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk0) + arg2->unk30 + (fparg0 * arg2->unk10) + (fparg2 * arg2->unk20));
    arg0->unkC = 0x3F800000;
    arg0->unk4 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk4) + arg2->unk34 + (fparg0 * arg2->unk14) + (fparg2 * arg2->unk24));
    arg0->unk8 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk8) + arg2->unk38 + (fparg0 * arg2->unk18) + (fparg2 * arg2->unk28));
}

void __glMipsXForm3(void *arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f14;

    temp_f11 = arg1->unk0;
    temp_f14 = arg1->unk4;
    temp_f0 = arg1->unk8;
    arg0->unk0 = (f32) ((temp_f11 * arg2->unk0) + arg2->unk30 + (temp_f14 * arg2->unk10) + (temp_f0 * arg2->unk20));
    arg0->unk4 = (f32) ((temp_f11 * arg2->unk4) + arg2->unk34 + (temp_f14 * arg2->unk14) + (temp_f0 * arg2->unk24));
    arg0->unk8 = (f32) ((temp_f11 * arg2->unk8) + arg2->unk38 + (temp_f14 * arg2->unk18) + (temp_f0 * arg2->unk28));
    arg0->unkC = (f32) ((temp_f11 * arg2->unkC) + arg2->unk3C + (temp_f14 * arg2->unk1C) + (temp_f0 * arg2->unk2C));
}

void __glMipsXForm3AsmLink(void *arg0, void *arg2, f32 fparg0, f32 fparg2) {
    arg0->unk0 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk0) + arg2->unk30 + (fparg0 * arg2->unk10) + (fparg2 * arg2->unk20));
    arg0->unk4 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk4) + arg2->unk34 + (fparg0 * arg2->unk14) + (fparg2 * arg2->unk24));
    arg0->unk8 = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unk8) + arg2->unk38 + (fparg0 * arg2->unk18) + (fparg2 * arg2->unk28));
    arg0->unkC = (f32) ((M2C_ERROR(/* Read from unset register $f10 */) * arg2->unkC) + arg2->unk3C + (fparg0 * arg2->unk1C) + (fparg2 * arg2->unk2C));
}

void __glMipsXForm4_2DNRW(void *arg0, void *arg1, void *arg2) {
    f32 temp_f19;

    temp_f19 = arg1->unkC;
    arg0->unkC = temp_f19;
    arg0->unk0 = (f32) ((arg1->unk0 * arg2->unk0) + (temp_f19 * arg2->unk30));
    arg0->unk4 = (f32) ((arg1->unk4 * arg2->unk14) + (temp_f19 * arg2->unk34));
    arg0->unk8 = (f32) ((arg1->unk8 * arg2->unk28) + (temp_f19 * arg2->unk38));
}

void __glMipsXForm4_2DW(void *arg0, void *arg1, void *arg2) {
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f18;

    temp_f10 = arg1->unk0;
    temp_f12 = arg1->unk4;
    temp_f18 = arg1->unkC;
    arg0->unkC = temp_f18;
    arg0->unk0 = (f32) ((temp_f10 * arg2->unk0) + (temp_f12 * arg2->unk10) + (temp_f18 * arg2->unk30));
    arg0->unk4 = (f32) ((temp_f10 * arg2->unk4) + (temp_f12 * arg2->unk14) + (temp_f18 * arg2->unk34));
    arg0->unk8 = (f32) ((arg1->unk8 * arg2->unk28) + (temp_f18 * arg2->unk38));
}

void __glMipsXForm4_W(void *arg0, void *arg1, void *arg2) {
    f32 temp_f13;
    f32 temp_f16;
    f32 temp_f5;
    f32 temp_f7;

    temp_f5 = arg1->unk0;
    temp_f7 = arg1->unk4;
    temp_f13 = arg1->unk8;
    temp_f16 = arg1->unkC;
    arg0->unkC = temp_f16;
    arg0->unk0 = (f32) ((temp_f5 * arg2->unk0) + (temp_f7 * arg2->unk10) + (temp_f13 * arg2->unk20) + (temp_f16 * arg2->unk30));
    arg0->unk4 = (f32) ((temp_f5 * arg2->unk4) + (temp_f7 * arg2->unk14) + (temp_f13 * arg2->unk24) + (temp_f16 * arg2->unk34));
    arg0->unk8 = (f32) ((temp_f5 * arg2->unk8) + (temp_f7 * arg2->unk18) + (temp_f13 * arg2->unk28) + (temp_f16 * arg2->unk38));
}

void __glMipsXForm4(void *arg0, void *arg1, void *arg2) {
    f32 temp_f11;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f6;

    temp_f4 = arg1->unk0;
    temp_f6 = arg1->unk4;
    temp_f11 = arg1->unk8;
    temp_f16 = arg1->unkC;
    arg0->unk0 = (f32) ((temp_f4 * arg2->unk0) + (temp_f6 * arg2->unk10) + (temp_f11 * arg2->unk20) + (temp_f16 * arg2->unk30));
    arg0->unk4 = (f32) ((temp_f4 * arg2->unk4) + (temp_f6 * arg2->unk14) + (temp_f11 * arg2->unk24) + (temp_f16 * arg2->unk34));
    arg0->unk8 = (f32) ((temp_f4 * arg2->unk8) + (temp_f6 * arg2->unk18) + (temp_f11 * arg2->unk28) + (temp_f16 * arg2->unk38));
    arg0->unkC = (f32) ((temp_f4 * arg2->unkC) + (temp_f6 * arg2->unk1C) + (temp_f11 * arg2->unk2C) + (temp_f16 * arg2->unk3C));
}

void __glMipsMultMatrix(s32 arg0, void *arg2, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    void *sp18;
    f32 sp14;
    void *sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    void *var_a2;

    var_a2 = arg2;
    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    if (arg0 == var_a2) {
        var_f12 = var_a2->unk10;
        var_f13 = var_a2->unk18;
        var_f14 = var_a2->unk20;
        var_f15 = var_a2->unk28;
        var_f16 = var_a2->unk30;
        var_f17 = var_a2->unk38;
        sp0 = var_a2->unk0;
        sp8 = var_a2->unk8;
        sp10 = (bitwise void *) var_f12;
        sp18 = (bitwise void *) var_f13;
        sp20 = var_f14;
        sp28 = var_f15;
        sp30 = var_f16;
        sp38 = var_f17;
        var_f18 = var_a2->unk4;
        var_f19 = var_a2->unkC;
        temp_f0 = var_a2->unk14;
        temp_f1 = var_a2->unk1C;
        temp_f2 = var_a2->unk24;
        temp_f3 = var_a2->unk2C;
        temp_f4 = var_a2->unk34;
        temp_f5 = var_a2->unk3C;
        var_a2 = sp;
        sp4 = var_f18;
        spC = var_f19;
        sp14 = temp_f0;
        sp1C = temp_f1;
        sp24 = temp_f2;
        sp2C = temp_f3;
        sp34 = temp_f4;
        sp3C = temp_f5;
    }
    __glMipsXForm4(var_a2, (bitwise void *) var_f12, (bitwise void *) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
    __glMipsXForm4(M2C_ERROR(/* Read from unset register $a0 */) + 0x10, M2C_ERROR(/* Read from unset register $a1 */) + 0x10);
    __glMipsXForm4(M2C_ERROR(/* Read from unset register $a0 */) + 0x10, M2C_ERROR(/* Read from unset register $a1 */) + 0x10);
    __glMipsXForm4(M2C_ERROR(/* Read from unset register $a0 */) + 0x10, M2C_ERROR(/* Read from unset register $a1 */) + 0x10);
}
