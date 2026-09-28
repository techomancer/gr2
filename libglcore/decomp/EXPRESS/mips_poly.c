void __glRenderFlatTriangle(void *arg0, void *arg1, void *arg2, void *arg3, void *arg6, s32 arg7) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    void *sp1C;
    s32 sp10;
    f32 temp_a3;
    f32 temp_f0;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a5_2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a4;
    s32 var_a7;
    s32 var_t1;
    u8 var_t3;
    void *temp_a1;
    void *temp_a5;
    void *temp_t8;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;
    void *var_a6;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_v0 = var_a1->unk84;
    temp_v1 = var_a2->unk84;
    temp_t0 = var_a3->unk84;
    var_t1 = 0;
    if (temp_v0 < temp_v1) {
        if (temp_v1 >= temp_t0) {
            temp_a5 = var_a2;
            if (temp_v0 < temp_t0) {
                var_a2 = var_a3;
                var_a3 = temp_a5;
                goto block_10;
            }
            var_a6 = var_a1;
            var_a1 = var_a3;
            var_a3 = var_a2;
            var_a2 = var_a6;
        }
    } else {
        var_a7 = temp_v1 < temp_t0;
        temp_t8 = var_a1;
        if (var_a7 != 0) {
            var_a1 = var_a2;
            if (temp_v0 < temp_t0) {
                var_a2 = temp_t8;
                goto block_10;
            }
            var_a2 = var_a3;
            var_a3 = temp_t8;
        } else {
            var_a1 = var_a3;
            var_a3 = temp_t8;
block_10:
            var_t1 = 1;
        }
    }
    temp_f0 = var_a3->unk80;
    temp_f3 = var_a3->unk84;
    temp_f4 = var_a1->unk80 - temp_f0;
    temp_f7 = var_a2->unk80 - temp_f0;
    temp_f8 = var_a1->unk84 - temp_f3;
    sp20 = var_a0;
    sp24 = var_a1;
    temp_f9 = var_a2->unk84 - temp_f3;
    sp28 = var_a2;
    var_a0->unk75EC = temp_f7;
    sp2C = var_a3;
    var_a0->unk75E8 = temp_f4;
    var_a0->unk75F0 = temp_f8;
    var_a0->unk75F4 = temp_f9;
    var_a0->unk75E4 = (f32) ((temp_f4 * temp_f9) - (temp_f7 * temp_f8));
    temp_a3 = var_a0->unk75E4;
    temp_t2 = ((bitwise s32) temp_a3 >> 0x1F) == 0;
    var_t3 = (var_a0 + (temp_t2 ^ var_t1))->unk7738;
    sp10 = temp_t2;
    if ((((bitwise s32) temp_a3 * 2) != 0) && (var_t3 != var_a0->unk773D)) {
        if (var_a0->unk76E8 & 0x400) {
            var_a4 = (var_a0 + (var_t3 * 4))->unk6DB8;
        } else {
            var_a4 = var_a0->unk6DB8;
            var_t3 = 0;
        }
        temp_a1 = var_a0->unk6DB0;
        sp1C = temp_a1;
        temp_a2 = var_a4 & 0x1B;
        temp_a5_2 = ~temp_a1->unk0 & temp_a2;
        temp_a1->unk4 = (s32) (temp_a1 + ((var_t3 * 0x10) + 0x90));
        if (temp_a5_2 != 0) {
            temp_a1->unk8(temp_a1, temp_a2, temp_a3, var_a4, temp_a5_2, var_a6, var_a7);
            var_a0 = sp20;
        }
        temp_a2_2 = var_a0->unk6DB4;
        if (~sp24->unk0 & temp_a2_2) {
            sp24->unk8(var_a0, sp24, temp_a2_2, sp28);
            var_a0 = sp20;
        }
        temp_a2_3 = var_a0->unk6DB4;
        if (~sp28->unk0 & temp_a2_3) {
            sp28->unk8(var_a0, sp28, temp_a2_3, sp28);
            var_a0 = sp20;
        }
        temp_a2_4 = var_a0->unk6DB4;
        if (~sp2C->unk0 & temp_a2_4) {
            sp2C->unk8(var_a0, sp2C, temp_a2_4, sp2C);
            var_a0 = sp20;
        }
        var_a0->unk2F38(var_a0, sp24, sp28, sp2C, sp10);
        sp1C->unk4 = (void *) (sp1C + 0x90);
    }
}

void __glRenderFlatOneFaceTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg6, void *arg7) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    void *sp1C;
    s32 sp10;
    f32 temp_a3;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 var_a6;
    s32 var_t3;
    void *temp_a1;
    void *temp_t8;
    void *temp_v1;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;
    void *var_a7;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_t0 = var_a1->unk84;
    temp_t1 = var_a2->unk84;
    temp_t2 = var_a3->unk84;
    var_t3 = 0;
    temp_a5 = temp_t1 < temp_t2;
    if (temp_t0 < temp_t1) {
        var_a6 = temp_t0 < temp_t2;
        if (temp_a5 == 0) {
            var_a7 = var_a2;
            if (var_a6 != 0) {
                var_a2 = var_a3;
                var_a3 = var_a7;
                goto block_10;
            }
            temp_t8 = var_a1;
            var_a1 = var_a3;
            var_a3 = var_a2;
            var_a2 = temp_t8;
        }
    } else {
        temp_v1 = var_a1;
        if (temp_t1 < temp_t2) {
            var_a1 = var_a2;
            if (temp_t0 < temp_t2) {
                var_a2 = temp_v1;
                goto block_10;
            }
            var_a2 = var_a3;
            var_a3 = temp_v1;
        } else {
            var_a1 = var_a3;
            var_a3 = temp_v1;
block_10:
            var_t3 = 1;
        }
    }
    temp_f12 = var_a3->unk80;
    temp_f13 = var_a1->unk80;
    temp_f14 = var_a2->unk80;
    temp_f15 = var_a3->unk84;
    temp_f16 = temp_f13 - temp_f12;
    temp_f17 = var_a1->unk84;
    temp_f18 = var_a2->unk84;
    temp_f19 = temp_f14 - temp_f12;
    temp_f0 = temp_f17 - temp_f15;
    sp20 = var_a0;
    sp24 = var_a1;
    temp_f1 = temp_f18 - temp_f15;
    sp28 = var_a2;
    var_a0->unk75EC = temp_f19;
    sp2C = var_a3;
    var_a0->unk75E8 = temp_f16;
    var_a0->unk75F0 = temp_f0;
    var_a0->unk75F4 = temp_f1;
    var_a0->unk75E4 = (f32) ((temp_f16 * temp_f1) - (temp_f19 * temp_f0));
    temp_a3 = var_a0->unk75E4;
    temp_t1_2 = ((bitwise s32) temp_a3 >> 0x1F) == 0;
    sp10 = temp_t1_2;
    if (((bitwise s32) temp_a3 * 2) != 0) {
        temp_a1 = var_a0->unk6DB0;
        if ((var_a0 + (temp_t1_2 ^ var_t3))->unk7738 != var_a0->unk773D) {
            sp1C = temp_a1;
            temp_a2 = var_a0->unk6DB8 & 0x1B;
            temp_a4 = ~temp_a1->unk0 & temp_a2;
            if (temp_a4 != 0) {
                temp_a1->unk8(temp_a1, temp_a2, temp_a3, temp_a4, temp_a5, var_a6, var_a7, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
                var_a0 = sp20;
            }
            temp_a2_2 = var_a0->unk6DB4;
            if (~sp24->unk0 & temp_a2_2) {
                sp24->unk8(var_a0, sp24, temp_a2_2, sp28);
                var_a0 = sp20;
            }
            temp_a2_3 = var_a0->unk6DB4;
            if (~sp28->unk0 & temp_a2_3) {
                sp28->unk8(var_a0, sp28, temp_a2_3, sp28);
                var_a0 = sp20;
            }
            temp_a2_4 = var_a0->unk6DB4;
            if (~sp2C->unk0 & temp_a2_4) {
                sp2C->unk8(var_a0, sp2C, temp_a2_4, sp2C);
                var_a0 = sp20;
            }
            var_a0->unk2F38(var_a0, sp24, sp28, sp2C, sp10);
        }
    }
}

void __glRenderSmoothTriangle(void *arg0, void *arg1, void *arg2, void *arg3) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    s32 sp1C;
    s32 sp10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f4;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_t2;
    s32 temp_a4_2;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a7;
    s32 var_t0;
    u8 var_a6;
    void *temp_a4;
    void *temp_a5;
    void *temp_a7;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_t8 = var_a1->unk84;
    temp_v0 = var_a2->unk84;
    temp_v1 = var_a3->unk84;
    var_t0 = 0;
    if (temp_t8 < temp_v0) {
        if (temp_v0 >= temp_v1) {
            temp_a4 = var_a2;
            if (temp_t8 < temp_v1) {
                var_a2 = var_a3;
                var_a3 = temp_a4;
                goto block_10;
            }
            temp_a5 = var_a1;
            var_a1 = var_a3;
            var_a3 = var_a2;
            var_a2 = temp_a5;
        }
    } else {
        temp_a7 = var_a1;
        if (temp_v0 < temp_v1) {
            var_a1 = var_a2;
            if (temp_t8 < temp_v1) {
                var_a2 = temp_a7;
                goto block_10;
            }
            var_a2 = var_a3;
            var_a3 = temp_a7;
        } else {
            var_a1 = var_a3;
            var_a3 = temp_a7;
block_10:
            var_t0 = 1;
        }
    }
    temp_f4 = var_a3->unk80;
    temp_f7 = var_a3->unk84;
    temp_f8 = var_a1->unk80 - temp_f4;
    temp_f11 = var_a2->unk80 - temp_f4;
    temp_f12 = var_a1->unk84 - temp_f7;
    sp20 = var_a0;
    sp24 = var_a1;
    temp_f13 = var_a2->unk84 - temp_f7;
    temp_f14 = temp_f11 * temp_f12;
    sp28 = var_a2;
    var_a0->unk75EC = temp_f11;
    sp2C = var_a3;
    var_a0->unk75E8 = temp_f8;
    var_a0->unk75F0 = temp_f12;
    var_a0->unk75F4 = temp_f13;
    temp_f15 = (temp_f8 * temp_f13) - temp_f14;
    var_a0->unk75E4 = temp_f15;
    temp_t2 = var_a0->unk75E4;
    temp_a4_2 = (bitwise s32) temp_t2 * 2;
    temp_a5_2 = ((bitwise s32) temp_t2 >> 0x1F) == 0;
    var_a6 = (var_a0 + (temp_a5_2 ^ var_t0))->unk7738;
    sp10 = temp_a5_2;
    if ((temp_a4_2 != 0) && (var_a6 != var_a0->unk773D)) {
        if (var_a0->unk76E8 & 0x400) {
            var_a7 = (var_a0 + (var_a6 * 4))->unk6DB8;
        } else {
            var_a7 = var_a0->unk6DB8;
            var_a6 = 0;
        }
        temp_a6 = var_a6 * 0x10;
        sp1C = var_a0->unk6DB4 | var_a7;
        var_a1->unk4 = (void *) (var_a1 + temp_a6 + 0x90);
        var_a2->unk4 = (void *) (var_a2 + temp_a6 + 0x90);
        var_a3->unk4 = (void *) (var_a3 + temp_a6 + 0x90);
        if (~var_a1->unk0 & sp1C) {
            var_a1->unk8(var_a1, sp1C, var_a3, temp_a4_2, temp_a5_2, temp_a6, var_a7, temp_f12, temp_f13, temp_f14, temp_f15);
            var_a0 = sp20;
        }
        if (~sp28->unk0 & sp1C) {
            sp28->unk8(var_a0, sp28, sp1C);
            var_a0 = sp20;
        }
        if (~sp2C->unk0 & sp1C) {
            sp2C->unk8(var_a0, sp2C, sp1C);
            var_a0 = sp20;
        }
        var_a0->unk2F38(var_a0, sp24, sp28, sp2C, sp10);
        sp24->unk4 = (void *) (sp24 + 0x90);
        sp28->unk4 = (void *) (sp28 + 0x90);
        sp2C->unk4 = (void *) (sp2C + 0x90);
    }
}

void __glRenderSmoothOneFaceTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg7) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    s32 sp1C;
    s32 sp10;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_t0_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a7;
    s32 var_t1;
    u8 temp_a5_2;
    void *temp_a5;
    void *temp_a6;
    void *temp_t8;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_v0 = var_a1->unk84;
    temp_v1 = var_a2->unk84;
    temp_t0 = var_a3->unk84;
    var_t1 = 0;
    if (temp_v0 < temp_v1) {
        if (temp_v1 >= temp_t0) {
            temp_a5 = var_a2;
            if (temp_v0 < temp_t0) {
                var_a2 = var_a3;
                var_a3 = temp_a5;
                goto block_10;
            }
            temp_a6 = var_a1;
            var_a1 = var_a3;
            var_a3 = var_a2;
            var_a2 = temp_a6;
        }
    } else {
        var_a7 = temp_v1 < temp_t0;
        temp_t8 = var_a1;
        if (var_a7 != 0) {
            var_a1 = var_a2;
            if (temp_v0 < temp_t0) {
                var_a2 = temp_t8;
                goto block_10;
            }
            var_a2 = var_a3;
            var_a3 = temp_t8;
        } else {
            var_a1 = var_a3;
            var_a3 = temp_t8;
block_10:
            var_t1 = 1;
        }
    }
    temp_f16 = var_a3->unk80;
    temp_f17 = var_a1->unk80;
    temp_f18 = var_a2->unk80;
    temp_f19 = var_a3->unk84;
    temp_f0 = temp_f17 - temp_f16;
    temp_f3 = temp_f18 - temp_f16;
    temp_f4 = var_a1->unk84 - temp_f19;
    sp20 = var_a0;
    sp24 = var_a1;
    temp_f5 = var_a2->unk84 - temp_f19;
    sp28 = var_a2;
    var_a0->unk75EC = temp_f3;
    sp2C = var_a3;
    var_a0->unk75E8 = temp_f0;
    var_a0->unk75F0 = temp_f4;
    var_a0->unk75F4 = temp_f5;
    temp_a3 = var_a0->unk6DB8;
    var_a0->unk75E4 = (f32) ((temp_f0 * temp_f5) - (temp_f3 * temp_f4));
    temp_t0_2 = var_a0->unk75E4;
    temp_a4 = ((bitwise s32) temp_t0_2 >> 0x1F) == 0;
    temp_a5_2 = (var_a0 + (temp_a4 ^ var_t1))->unk7738;
    sp10 = temp_a4;
    if ((((bitwise s32) temp_t0_2 * 2) != 0) && (temp_a5_2 != var_a0->unk773D)) {
        sp1C = var_a0->unk6DB4 | temp_a3;
        temp_a6_2 = ~var_a1->unk0 & sp1C;
        if (temp_a6_2 != 0) {
            var_a1->unk8(var_a1, sp1C, temp_a3, temp_a4, temp_a5_2, temp_a6_2, var_a7, temp_f16, temp_f17, temp_f18, temp_f19);
            var_a0 = sp20;
        }
        if (~sp28->unk0 & sp1C) {
            sp28->unk8(var_a0, sp28, sp1C);
            var_a0 = sp20;
        }
        if (~sp2C->unk0 & sp1C) {
            sp2C->unk8(var_a0, sp2C, sp1C);
            var_a0 = sp20;
        }
        var_a0->unk2F38(var_a0, sp24, sp28, sp2C, sp10);
    }
}

void __glRenderSmoothOneFaceTmesh(void *arg0, void *arg1, void *arg2, void *arg3) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *sp20;
    s32 sp1C;
    s32 sp10;
    f32 temp_a6_2;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f8;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_t2;
    u8 temp_a3;
    u8 temp_a4;
    void *temp_a6;
    void *temp_a7;
    void *temp_t0_2;
    void *temp_v0;
    void *var_a0;
    void *var_a1;
    void *var_a2;
    void *var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_v0 = var_a1;
    temp_v1 = var_a1->unk84;
    temp_t0 = var_a2->unk84;
    temp_t1 = var_a3->unk84;
    var_t2 = 0;
    if (temp_v1 < temp_t0) {
        if (temp_t0 >= temp_t1) {
            temp_a6 = var_a2;
            if (temp_v1 < temp_t1) {
                var_a2 = var_a3;
                var_a3 = temp_a6;
                goto block_10;
            }
            temp_a7 = var_a1;
            var_a1 = var_a3;
            var_a3 = var_a2;
            var_a2 = temp_a7;
        }
    } else {
        temp_t0_2 = var_a1;
        if (temp_t0 < temp_t1) {
            var_a1 = var_a2;
            if (temp_v1 < temp_t1) {
                var_a2 = temp_t0_2;
                goto block_10;
            }
            var_a2 = var_a3;
            var_a3 = temp_t0_2;
        } else {
            var_a1 = var_a3;
            var_a3 = temp_t0_2;
block_10:
            var_t2 = 1;
        }
    }
    temp_f8 = var_a3->unk80;
    temp_f11 = var_a3->unk84;
    temp_f12 = var_a1->unk80 - temp_f8;
    temp_f13 = var_a1->unk84;
    temp_f14 = var_a2->unk84;
    temp_f15 = var_a2->unk80 - temp_f8;
    temp_f16 = temp_f13 - temp_f11;
    sp20 = var_a0;
    sp24 = var_a1;
    temp_f17 = temp_f14 - temp_f11;
    temp_f18 = temp_f15 * temp_f16;
    sp28 = var_a2;
    var_a0->unk75EC = temp_f15;
    sp2C = var_a3;
    var_a0->unk75E8 = temp_f12;
    var_a0->unk75F0 = temp_f16;
    var_a0->unk75F4 = temp_f17;
    temp_a4 = var_a0->unk773D;
    temp_a5 = var_a0->unk6DB8;
    temp_f19 = (temp_f12 * temp_f17) - temp_f18;
    var_a0->unk75E4 = temp_f19;
    temp_a6_2 = var_a0->unk75E4;
    temp_v1_2 = ((bitwise s32) temp_a6_2 >> 0x1F) == 0;
    sp10 = temp_v1_2;
    if (((bitwise s32) temp_a6_2 * 2) != 0) {
        temp_a7_2 = var_a0->unk6DB4 | temp_a5;
        if ((var_a0 + (temp_v1_2 ^ var_t2))->unk7738 != temp_a4) {
            temp_a3 = var_a0->unk773E;
            sp1C = temp_a7_2;
            if (temp_a3 == 0) {
                if (~temp_v0->unk0 & temp_a7_2) {
                    temp_v0->unk8(temp_v0, temp_a7_2, temp_a3, temp_a4, temp_a5, temp_a6_2, temp_a7_2, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
                    goto block_16;
                }
            } else {
                if (~var_a1->unk0 & sp1C) {
                    var_a1->unk8(var_a1, sp1C, temp_a3, temp_a4, temp_a5, temp_a6_2, temp_a7_2, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
                    var_a0 = sp20;
                }
                if (~sp28->unk0 & sp1C) {
                    sp28->unk8(var_a0, sp28, sp1C);
                    var_a0 = sp20;
                }
                if (~sp2C->unk0 & sp1C) {
                    sp2C->unk8(var_a0, sp2C, sp1C);
block_16:
                    var_a0 = sp20;
                }
            }
            var_a0->unk2F38(var_a0, sp24, sp28, sp2C, sp10);
            return;
        }
    }
    var_a0->unk773E = 1U;
}
