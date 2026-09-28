void __glExpStoreLine(__GLcontext *gc, s32 arg2, s32 arg3, ...) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    u32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcolor *var_s2;
    __GLcolorBuffer *temp_s4;
    f32 temp_f1;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_a2;
    s32 var_a3;
    s32 var_s1;
    s32 var_s3;
    u32 var_s0;
    void *temp_s5;

    var_a2 = arg2;
    var_a3 = arg3;
    sp40 = (s64) gc->line.options.yBig;
    var_s2 = gc->polygon.shader.colors;
    temp_s7 = gc->line.options.dfraction;
    var_s1 = gc->line.options.fraction;
    temp_s8 = gc->line.options.xLittle;
    temp_s4 = gc->polygon.shader.cfb;
    temp_s5 = temp_s4->fetchSpan;
    sp0 = gc->line.options.xStart;
    sp38 = (s64) gc->line.options.yLittle;
    sp48 = (s64) gc->line.options.xBig;
    sp4 = gc->line.options.yStart;
    var_s3 = gc->polygon.shader.length - 1;
    temp_s6 = gc->polygon.shader.dzdx;
    var_s0 = gc->polygon.shader.frag.z;
    if (var_s3 >= 0) {
loop_4:
        sp8 = var_s0;
        spC = var_s2->r;
        sp10 = var_s2->g;
        temp_f1 = var_s2->b;
        var_s2 += 0x10;
        sp14 = temp_f1;
        var_s1 += temp_s7;
        var_s0 += temp_s6;
        sp18 = var_s2->unk-4;
        ((? (*)(__GLcolorBuffer *, void *, s32, s32)) temp_s5)(temp_s4, sp, var_a2, var_a3);
        var_a3 = sp0;
        var_a2 = sp4;
        if (var_s1 < 0) {
            sp0 = sp48 + var_a3;
            sp4 = sp40 + var_a2;
            var_s1 &= 0x7FFFFFFF;
        } else {
            sp0 = temp_s8 + var_a3;
            sp4 = sp38 + var_a2;
        }
        var_s3 -= 1;
        if (var_s3 != -1) {
            goto loop_4;
        }
    }
}

void __glExpStoreStippledLine(__GLcontext *gc, ...) {
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp40;
    s64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    u32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcolor *var_s3;
    __GLcolorBuffer *temp_v0;
    s32 temp_at;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_s1;
    s32 var_s2;
    s32 var_s5;
    s32 var_s6_2;
    s64 var_s6;
    u32 var_s0;
    u32 var_s4;

    var_s4 = gc->polygon.shader.frag.z;
    var_s2 = gc->line.options.xStart;
    var_s3 = gc->polygon.shader.colors;
    temp_s8 = gc->line.options.dfraction;
    var_s5 = gc->line.options.fraction;
    spB0 = (s64) gc->polygon.shader.dzdx;
    var_s1 = gc->line.options.yStart;
    spA8 = (s64) gc->line.options.xLittle;
    spA0 = (s64) gc->line.options.yLittle;
    sp90 = (s64) gc->line.options.xBig;
    sp98 = (s64) gc->line.options.yBig;
    temp_v0 = gc->polygon.shader.cfb;
    temp_at = gc->polygon.shader.length;
    sp80 = (s64) gc->polygon.shader.stipplePat;
    sp40 = (s64) temp_v0;
    sp88 = (s64) temp_at;
    sp38 = (s64) temp_v0->fetchSpan;
    if (temp_at != 0) {
loop_3:
        var_s6 = sp88;
        if (sp88 >= 0x21) {
            var_s6 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s7 = *sp80;
        sp80 += 4;
        var_s6_2 = var_s6 - 1;
        sp88 -= var_s6;
        if (var_s6_2 >= 0) {
loop_10:
            var_s5 += temp_s8;
            var_s0 = var_s0 >> 1;
            if (temp_s7 & var_s0) {
                sp8 = var_s4;
                sp4 = var_s1;
                sp0 = var_s2;
                spC = var_s3->r;
                sp10 = var_s3->g;
                sp14 = var_s3->b;
                sp18 = var_s3->a;
                ((? (*)(s64, void *)) sp38)(sp40, sp);
            }
            var_s3 += 0x10;
            var_s4 += spB0;
            if (var_s5 >= 0) {
                var_s2 += spA8;
                var_s1 += spA0;
            } else {
                var_s1 += sp98;
                var_s5 &= 0x7FFFFFFF;
                var_s2 += sp90;
            }
            var_s6_2 -= 1;
            if (var_s6_2 != -1) {
                goto loop_10;
            }
        }
        if (sp88 != 0) {
            goto loop_3;
        }
    }
}
