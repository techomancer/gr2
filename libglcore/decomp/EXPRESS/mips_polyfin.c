void __glEvenTStripVertex(void *arg0, void *arg1, s32 arg_sp24) {
    s32 temp_a4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v1;
    void *temp_a2;
    void *temp_a3;

    temp_a2 = arg0->unk319C;
    temp_a3 = arg0->unk31A0;
    arg0->unk749C = 0;
    arg1->unkB8 = 1;
    temp_v1 = arg1->unkC;
    temp_t0 = temp_a2->unkC;
    temp_t1 = temp_a3->unkC;
    arg0->unk6DB0 = arg1;
    temp_a4 = temp_v1 | temp_t0 | temp_t1;
    arg0->unk2EB4 = (s32) arg0->unk2EC8;
    if (temp_a4 == 0) {
        arg0->unk3198 = temp_a3;
        arg0->unk31A0 = temp_a2;
        arg0->unk319C = arg1;
        arg0->unk2F34(temp_a2, temp_a3, temp_a4);
        return;
    }
    arg0->unk3198 = temp_a3;
    arg0->unk319C = arg1;
    arg0->unk31A0 = temp_a2;
    if (!(temp_v1 & temp_t0 & temp_t1)) {
        arg_sp10 = temp_a4;
        arg0->unk2F40(temp_a2, temp_a3, temp_a4);
    }
}

void __glOddTStripVertex(void *arg0, void *arg1, s32 arg_sp24) {
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    void *temp_a2;
    void *temp_a3;

    temp_a3 = arg0->unk319C;
    temp_a2 = arg0->unk31A0;
    arg0->unk749C = 0;
    arg1->unkB8 = 1;
    temp_a5 = arg1->unkC;
    temp_a6 = temp_a3->unkC;
    temp_a7 = temp_a2->unkC;
    arg0->unk6DB0 = arg1;
    temp_a4 = temp_a5 | temp_a6 | temp_a7;
    arg0->unk2EB4 = (s32) arg0->unk2ECC;
    if (temp_a4 == 0) {
        arg0->unk3198 = temp_a2;
        arg0->unk31A0 = temp_a3;
        arg0->unk319C = arg1;
        arg0->unk2F34(temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
        return;
    }
    arg0->unk3198 = temp_a2;
    arg0->unk319C = arg1;
    arg0->unk31A0 = temp_a3;
    if (!(temp_a5 & temp_a6 & temp_a7)) {
        arg_sp10 = temp_a4;
        arg0->unk2F40(temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
    }
}

void __glEvenTStripVertexFast(void *arg0, void *arg1, s32 arg_sp24) {
    s32 temp_a4;
    s32 temp_t0;
    s32 temp_v1;
    void *temp_a2;
    void *temp_a3;

    temp_a2 = arg0->unk319C;
    temp_a3 = arg0->unk31A0;
    temp_v1 = temp_a2->unkC;
    temp_t0 = temp_a3->unkC;
    temp_a4 = M2C_ERROR(/* Read from unset register $v0 */) | temp_v1 | temp_t0;
    arg0->unk2EB4 = (s32) arg0->unk2EC8;
    if (temp_a4 == 0) {
        arg0->unk3198 = temp_a3;
        arg0->unk31A0 = temp_a2;
        arg0->unk319C = arg1;
        arg0->unk2F34(temp_a2, temp_a3, temp_a4);
        return;
    }
    arg0->unk3198 = temp_a3;
    arg0->unk319C = arg1;
    arg0->unk31A0 = temp_a2;
    if (!(M2C_ERROR(/* Read from unset register $v0 */) & temp_v1 & temp_t0)) {
        arg_sp10 = temp_a4;
        arg0->unk2F40(temp_a2, temp_a3, temp_a4);
    }
}

void __glOddTStripVertexFast(void *arg0, void *arg1, s32 arg_sp24) {
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t3;
    void *temp_a2;
    void *temp_a3;

    temp_a3 = arg0->unk319C;
    temp_a2 = arg0->unk31A0;
    temp_t3 = temp_a3->unkC;
    temp_a5 = temp_a2->unkC;
    temp_a6 = arg0->unk2ECC;
    temp_a4 = M2C_ERROR(/* Read from unset register $v0 */) | temp_t3 | temp_a5;
    arg0->unk2EB4 = temp_a6;
    if (temp_a4 == 0) {
        arg0->unk3198 = temp_a2;
        arg0->unk31A0 = temp_a3;
        arg0->unk319C = arg1;
        arg0->unk2F34(temp_a2, temp_a3, temp_a4, temp_a5, temp_a6);
        return;
    }
    arg0->unk3198 = temp_a2;
    temp_a7 = M2C_ERROR(/* Read from unset register $v0 */) & temp_t3 & temp_a5;
    arg0->unk319C = arg1;
    arg0->unk31A0 = temp_a3;
    if (temp_a7 == 0) {
        arg_sp10 = temp_a4;
        arg0->unk2F40(temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
    }
}

void __glFourthQuadsVertex(void *arg0, void *arg1) {
    void *sp54;
    void *sp50;
    void *sp4C;
    void *sp48;
    u8 sp40;
    void *sp38;
    void *sp30;
    void *sp28;
    void *sp10;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    u8 temp_a7;
    void *temp_a2;
    void *temp_a3;
    void *temp_v0;

    temp_a2 = arg0 + 0x31B0;
    temp_a3 = arg0 + 0x3270;
    temp_v0 = arg0 + 0x3330;
    arg1->unkB8 = (u8) arg0->unk1AD;
    arg0->unk749C = 0;
    arg0->unk6DB0 = arg1;
    arg0->unk3198 = temp_a2;
    temp_t0 = arg1->unkC;
    temp_t1 = temp_a2->unkC;
    temp_t2 = temp_a3->unkC;
    temp_t3 = temp_v0->unkC;
    arg0->unk2EB4 = __glFirstQuadsVertex;
    temp_a4 = temp_t0 | temp_t1;
    temp_a5 = temp_t2 | temp_t3;
    temp_a6 = temp_a4 | temp_a5;
    temp_a7 = temp_a3->unkB8;
    if (temp_a6 == 0) {
        temp_a3->unkB8 = 0U;
        sp10 = arg0;
        sp28 = arg1;
        sp30 = temp_a3;
        sp38 = temp_v0;
        sp40 = temp_a7;
        arg0->unk2F30(temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
        sp30->unkB8 = sp40;
        arg1->unkB8 = 0U;
        arg0->unk2F30(arg0, arg1, (s32) sp30, (s32) sp38);
        return;
    }
    sp48 = temp_a2;
    if (!(temp_t0 & temp_t1 & (temp_t2 & temp_t3))) {
        sp4C = temp_a3;
        sp50 = temp_v0;
        sp54 = arg1;
        __glDoPolygonClip(&sp48, 4, temp_a6, temp_a4, temp_a5, temp_a6, temp_a7);
    }
}
