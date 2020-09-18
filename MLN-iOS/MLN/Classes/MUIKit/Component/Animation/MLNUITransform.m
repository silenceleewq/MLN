//
// Created by MOMO on 2020/9/16.
//

#import "MLNUITransform.h"

@interface MLNUITransform ()

@end

@implementation MLNUITransform

LUAUI_EXPORT_BEGIN(MLNUITransform)
LUAUI_EXPORT_METHOD(setTranslateX, "luaui_setTranslateX:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setTranslateY, "luaui_setTranslateY:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setRotate, "luaui_setRotationZ:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setRotateY, "luaui_setRotationY:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setRotateX, "luaui_setRotationX:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setScaleX, "luaui_setScaleX:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setScaleY, "luaui_setScaleY:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setAlpha, "luaui_setAlpha:to:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(repeatCount, "luaui_repeatCount:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setRepeat, "luaui_setRepeat:count:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setAutoBack, "luaui_setAutoBack:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setDuration, "luaui_setDuration:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setDelay, "luaui_setDelay:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setInterpolator, "luaui_setInterpolator:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(start, "luaui_startWithView:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(pause, "luaui_pause", MLNUIAnimation)
LUAUI_EXPORT_METHOD(resume, "luaui_resumeAnimations", MLNUIAnimation)
LUAUI_EXPORT_METHOD(stop, "luaui_stop", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setStartCallback, "luaui_setStartCallback:", MLNUIAnimation)
LUAUI_EXPORT_METHOD(setEndCallback, "luaui_setEndCallback:", MLNUIAnimation)
LUAUI_EXPORT_END(MLNUITransform, Transform, NO, NULL, NULL)

@end