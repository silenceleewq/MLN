//
//  MLNUIPinchGestureRecognizer.m
//  AFNetworking
//
//  Created by MOMO on 2020/9/18.
//

#import "MLNUIPinchGestureRecognizer.h"
#import "MLNUILuaCore.h"
#import "MLNUIKitHeader.h"
#import "MLNUIBlock.h"

@interface MLNUIPinchGestureRecognizer()
@property (nonatomic, strong) UIPinchGestureRecognizer *pinchGestureRecognizer;
@end

@implementation MLNUIPinchGestureRecognizer
@synthesize luaui_pinchGestureCallback = _luaui_pinchGestureCallback;

- (instancetype)initWithMLNUILuaCore:(MLNUILuaCore *)luaCore {
    if (self = [super initWithMLNUILuaCore:luaCore]) {
        NSLog(@"%s", __func__);
        _pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction:)];
    }
    return self;
}

- (void)pinchAction:(UIPinchGestureRecognizer *)pinch {
    if (self.luaui_pinchGestureCallback) {
        [self.luaui_pinchGestureCallback addFloatArgument:pinch.scale];
        [self.luaui_pinchGestureCallback callIfCan];
    }
}

- (void)setAttachView:(UIView *)attachView {
    _attachView = attachView;
    _attachView.userInteractionEnabled = YES;
    [_attachView addGestureRecognizer:_pinchGestureRecognizer];
}

- (void)setLuaui_pinchGestureCallback:(MLNUIBlock *)luaui_pinchGestureCallback {
    _luaui_pinchGestureCallback = luaui_pinchGestureCallback;
}

- (MLNUIBlock *)luaui_pinchGestureCallback {
    return _luaui_pinchGestureCallback;
}

LUAUI_EXPORT_BEGIN(MLNUIPinchGestureRecognizer)
LUAUI_EXPORT_METHOD(sayHello, "luaui_sayHello", MLNUIPinchGestureRecognizer)
LUAUI_EXPORT_PROPERTY(attachView, "setAttachView:", "attachView", MLNUIPinchGestureRecognizer)
LUAUI_EXPORT_METHOD(setPinchCallback, "setLuaui_pinchGestureCallback:", MLNUIPinchGestureRecognizer)
//LUAUI_EXPORT_END(MLNUIPinchGestureRecognizer, PinchGestureRecognizer, NO, NULL, "initWithMLNUILuaCore:")
LUAUI_EXPORT_END(MLNUIPinchGestureRecognizer, PinchGestureRecognizer, NO, NULL, NULL)
//LUAUI_EXPORT_END(MLNUIObjectAnimation, ObjectAnimation, NO, NULL, "initWithMLNUILuaCore:property:target:")
@end
