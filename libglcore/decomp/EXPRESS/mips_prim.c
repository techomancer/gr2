void __glOtherLStripVertexFast(void *arg0, void *arg1) {
    s32 temp_a3;
    void *temp_a1;
    void *temp_v1;

    temp_v1 = arg0->unk319C;
    temp_a3 = temp_v1->unkC;
    temp_a1 = temp_v1;
    arg0->unk319C = arg1;
    if ((M2C_ERROR(/* Read from unset register $v0 */) | temp_a3) == 0) {
        arg0->unk3198 = temp_a1;
        arg0->unk30C0(temp_a1, arg1, temp_a3);
        return;
    }
    arg0->unk3198 = temp_a1;
    arg0->unk30CC(temp_a1, arg1, temp_a3);
}

void __glFastClipLine(void *arg0, void *arg1, void *arg2, s32 arg_sp10) {
    s32 temp_a4;
    s32 temp_t0;
    s32 temp_t1;

    temp_t0 = arg1->unkC;
    temp_t1 = arg2->unkC;
    temp_a4 = temp_t0 & temp_t1;
    if ((temp_t0 | temp_t1) == 0) {
        arg0->unk30C0(temp_a4);
        return;
    }
    if (temp_a4 == 0) {
        __glClipLine(temp_a4);
    }
}

void __glSecondLinesVertex(void *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a5;

    arg0->unk749C = 0;
    temp_a1 = arg1 - 0xC0;
    temp_a5 = arg0->unk2EC0;
    arg0->unk3198 = temp_a1;
    arg0->unk2EB4 = temp_a5;
    arg0->unk30CC(temp_a1, arg1, temp_a5);
}

void __glSecondLLoopVertex(void *arg0, s32 arg1) {
    s32 temp_a6;
    s32 temp_a7;

    temp_a6 = arg1 + 0xC0;
    temp_a7 = arg0->unk2EBC;
    arg0->unk3198 = temp_a6;
    arg0->unk319C = arg1;
    arg0->unk2EB4 = temp_a7;
    arg0->unk2EFC = __glMatValidateVbuf0V1;
    arg0->unk30CC(arg1 - 0xC0, arg1, temp_a6, temp_a7);
}

void __glPoint(void *arg0, void *arg1) {
    void *sp24;
    void *sp20;

    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        sp24 = arg1;
        sp20 = arg0;
        arg1->unk8(arg0->unk6DB8 | 1);
        arg0->unk30D8(arg0, arg1);
    }
}

void __glPointFast(void *arg0) {
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        arg0->unk30D8();
    }
}
