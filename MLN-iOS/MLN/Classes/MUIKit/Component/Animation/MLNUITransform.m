//
// Created by MOMO on 2020/9/16.
//

#import <ArgoUI/MLNUIShapeContext.h>
#import "MLNUITransform.h"
#import "MLNUILuaCore.h"
#import "MLNUIKitHeader.h"
#import "NSObject+MLNCore.h"

@interface MLNUITransform ()

@end

@implementation MLNUITransform
- (instancetype)initWithMLNUILuaCore:(MLNUILuaCore *)luaCore transform:(CGAffineTransform)transform tx:(CGFloat)tx ty:(CGFloat)ty
{
    self = [super initWithMLNUILuaCore:luaCore];
    if (self) {
        _tx = tx;
        _ty = ty;
        _transform = transform;
    }
    return self;
}

- (void)luaui_applyTo:(UIView *)view {
    view.transform = CGAffineTransformScale(self.transform, self.tx, self.tx);
}


- (NSString *)luaui_sayHello {
    return @"MLNUITransform hello world";
}

LUAUI_EXPORT_BEGIN(MLNUITransform)
LUAUI_EXPORT_METHOD(sayHello, "luaui_sayHello", MLNUITransform)
LUAUI_EXPORT_METHOD(applyTo, "luaui_applyTo:", MLNUITransform)
LUAUI_EXPORT_END(MLNUITransform, Transform, NO, NULL, NULL)

@end
