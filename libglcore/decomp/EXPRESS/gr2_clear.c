? .L0da582d8(s64);                                  /* extern */

void __glexpim_Clear(u32 mask) {
    s64 sp20;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcolorBuffer *temp_a0;
    __GLcolorBuffer *temp_a0_2;
    __GLcontext *var_a2;
    enum GLenum temp_a4;
    s32 temp_a3;
    s32 var_a1_2;
    s64 temp_a1;
    s64 var_a1;
    s64 var_ra;
    u32 var_a0;

    var_ra = saved_reg_ra;
    var_a0 = mask;
    var_a2 = __glCurrentContext;
    if (__glBeginMode != 0) {
        sp8 = (s64) var_a0;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        var_a2->validate(var_a2);
        __glBeginMode = 0;
        .L0da582d8(sp8);
        return;
    }
    if (!(var_a0 & ~0x4700)) {
        if (var_a2->renderMode != GL_RENDER) {

        } else {
            if (var_a0 & 0x4000) {
                temp_a4 = var_a2->state.raster.drawBuffer;
                if (temp_a4 >= GL_AUX0) {
                    if (temp_a4 >= GL_AUX1) {
                        if (temp_a4 >= GL_AUX2) {
                            if (temp_a4 < GL_AUX3) {
                                goto block_16;
                            }
                            if (temp_a4 != GL_AUX3) {
                                sp10 = var_a0 & 0x100;
                            } else {
                                goto block_16;
                            }
                        } else {
                            var_a1 = var_a0 & 0x100;
                            if (temp_a4 != GL_AUX1) {

                            } else {
                                goto block_16;
                            }
                            goto block_18;
                        }
                    } else {
block_16:
                        temp_a3 = temp_a4 - 0x409;
                        if (temp_a3 < var_a2->modes.numAuxBuffers) {
                            sp8 = (s64) var_a0;
                            temp_a0 = &var_a2->auxBuffer[temp_a3];
                            sp0 = (s64) var_a2;
                            temp_a0->clear(temp_a0);
                            var_ra = sp20;
                        }
                        var_a1 = var_a0 & 0x100;
                        goto block_18;
                    }
                } else if (temp_a4 >= GL_BACK) {
                    if ((temp_a4 >= GL_LEFT) && (temp_a4 != GL_FRONT_AND_BACK)) {
                        sp10 = var_a0 & 0x100;
                    } else {
                        goto block_39;
                    }
                } else if (temp_a4 >= GL_FRONT) {
                    if (temp_a4 < GL_BACK) {
block_39:
                        temp_a1 = var_a0 & 0x100;
                        sp10 = temp_a1;
                        if ((temp_a1 != 0) && (var_a2->haveZ != 0) && (sp0 = (s64) var_a2, sp8 = (s64) var_a0, (var_a2->state.depth.writeEnable != 0))) {
                            sp0->unk7BCC(sp0->unk77C4, sp0 + 0x7A00, var_a2, temp_a4, temp_a4);
                            var_a2 = (__GLcontext *) sp0;
                            var_ra = sp20;
                            var_a0 = sp8 ^ 0x100;
                            var_a1 = var_a0 & 0x100;
block_18:
                            sp10 = var_a1;
                        } else {
                            sp8 = (s64) var_a0;
                            temp_a0_2 = var_a2->front;
                            sp0 = (s64) var_a2;
                            temp_a0_2->clear(temp_a0_2);
                            var_ra = sp20;
                        }
                    } else {
                        sp10 = var_a0 & 0x100;
                    }
                } else {
                    sp10 = var_a0 & 0x100;
                }
            } else {
                sp10 = var_a0 & 0x100;
            }
            var_a1_2 = var_a0 & 0x400;
            if (var_a0 & 0x200) {
                var_a1_2 = var_a0 & 0x400;
                if (var_a2->modes.haveAccumBuffer != 0) {
                    sp0 = (s64) var_a2;
                    sp20 = var_ra;
                    sp8 = (s64) var_a0;
                    __glexpim_Clear((u32) &var_a2->accumBuffer);
                    var_a1_2 = var_a0 & 0x400;
                }
            }
            if ((var_a1_2 != 0) && (var_a2->modes.haveStencilBuffer != 0)) {
                sp0 = (s64) var_a2;
                sp20 = var_ra;
                var_a2->stencilBuffer.clear(&var_a2->stencilBuffer, sp10, var_a2);
            }
            if (sp10 == 0) {

            } else if (var_a2->modes.haveDepthBuffer == 0) {

            } else {
                sp20 = var_ra;
                var_a2->depthBuffer.clear(&var_a2->depthBuffer, sp10, var_a2);
            }
        }
        return;
    }
    __glSetError(GL_INVALID_VALUE);
}
