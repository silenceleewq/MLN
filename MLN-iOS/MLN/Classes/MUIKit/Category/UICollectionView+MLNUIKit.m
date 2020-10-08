//
//  UICollectionView+MLNUIKit.m
//  ArgoUI
//
//  Created by MOMO on 2020/10/8.
//
#import "UICollectionView+MLNUIKit.h"
#import "UIView+MLNUIKit.h"
#import "MLNUIBlock.h"
#import <objc/runtime.h>

static IMP __mlnui_in_UICollectionView_Origin_TouchesBegan_Method_Imp;
static IMP __mlnui_in_UICollectionView_Origin_TouchesMoved_Method_Imp;
static IMP __mlnui_in_UICollectionView_Origin_TouchesEnded_Method_Imp;
static IMP __mlnui_in_UICollectionView_Origin_TouchesCancelled_Method_Imp;
@implementation UICollectionView (MLNUIKit)
+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method origMethod1 = class_getInstanceMethod([self class], @selector(touchesBegan:withEvent:));
        Method swizzledMethod1 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesBegan:withEvent:));
        __mlnui_in_UICollectionView_Origin_TouchesBegan_Method_Imp = method_getImplementation(origMethod1);
        method_exchangeImplementations(origMethod1, swizzledMethod1);

        Method origMethod2 = class_getInstanceMethod([self class], @selector(touchesMoved:withEvent:));
        Method swizzledMethod2 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesMoved:withEvent:));

        __mlnui_in_UICollectionView_Origin_TouchesMoved_Method_Imp = method_getImplementation(origMethod2);
        method_exchangeImplementations(origMethod2, swizzledMethod2);

        Method origMethod3 = class_getInstanceMethod([self class], @selector(touchesEnded:withEvent:));
        Method swizzledMethod3 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesEnded:withEvent:));

        __mlnui_in_UICollectionView_Origin_TouchesEnded_Method_Imp = method_getImplementation(origMethod3);
        method_exchangeImplementations(origMethod3, swizzledMethod3);

        Method origMethod4 = class_getInstanceMethod([self class], @selector(touchesCancelled:withEvent:));
        Method swizzledMethod4 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesCancelled:withEvent:));

        __mlnui_in_UICollectionView_Origin_TouchesCancelled_Method_Imp = method_getImplementation(origMethod4);
        method_exchangeImplementations(origMethod4, swizzledMethod4);

        // Method origMethod5 = class_getInstanceMethod([self class], @selector(removeFromSuperview));
        // Method swizzledMethod5 = class_getInstanceMethod([self class], @selector(mlnui_in_removeFromSuperview));
        // method_exchangeImplementations(origMethod5, swizzledMethod5);
    });
}

- (void)mlnui_in_touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *))__mlnui_in_UICollectionView_Origin_TouchesBegan_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIView class]]) {
        return;
    }
    // [self mlnui_touchType:MLNUITouchType_Begin touch:touches.anyObject event:event];

    // if([self isOpenRipple]) {
    //     if (![self oldColor] && ![self luaui_didSetOldColor]) {
    //         [self setOldColor:self.backgroundColor];
    //         [self luaui_setDidSetOldColor:YES];
    //     }
    //     self.backgroundColor = kMLNUIDefaultRippleColor;
    // }
    //
    // if ([self luaui_needEndEditing]) {
    //     [self endEditing:YES];
    // }

    if (self.mlnui_touchesBeganCallback) {
        UITouch *touch = touches.anyObject;
        if (touch.view == self) {
            CGPoint point  = [touch locationInView:self];
            [self.mlnui_touchesBeganCallback addFloatArgument:point.x];
            [self.mlnui_touchesBeganCallback addFloatArgument:point.y];
            [self.mlnui_touchesBeganCallback callIfCan];
        }
    }

    if (self.mlnui_touchesBeganExtensionCallback) {
        UITouch *touch = [touches anyObject];
        if (touch.view == self) {
            CGPoint screenLocation = [touch locationInView:self.window];
            CGPoint pageLocation = [touch locationInView:self];
            NSDictionary *touchDict = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
            [self.mlnui_touchesBeganExtensionCallback addObjArgument:[NSMutableDictionary dictionaryWithDictionary:touchDict]];
            [self.mlnui_touchesBeganExtensionCallback callIfCan];
        }
    }
}

- (void)mlnui_in_touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *))__mlnui_in_UICollectionView_Origin_TouchesMoved_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIView class]]) {
        return;
    }
    // [self mlnui_touchType:MLNUITouchType_Move touch:touches.anyObject event:event];

    if (self.mlnui_touchesMovedCallback) {
        UITouch *touch = touches.anyObject;
        if (touch.view == self) {
            CGPoint point  = [touch locationInView:self];
            [self.mlnui_touchesMovedCallback addFloatArgument:point.x];
            [self.mlnui_touchesMovedCallback addFloatArgument:point.y];
            [self.mlnui_touchesMovedCallback callIfCan];
        }
    }

    if (self.mlnui_touchesMovedExtensionCallback) {
        UITouch *touch = [touches anyObject];
        if (touch.view == self) {
            CGPoint screenLocation = [touch locationInView:self.window];
            CGPoint pageLocation = [touch locationInView:self];
            NSDictionary *touchDict = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
            [self.mlnui_touchesMovedExtensionCallback addObjArgument:[NSMutableDictionary dictionaryWithDictionary:touchDict]];
            [self.mlnui_touchesMovedExtensionCallback callIfCan];
        }
    }
}

- (void)mlnui_in_touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *))__mlnui_in_UICollectionView_Origin_TouchesEnded_Method_Imp;
    functionPointer(self, _cmd, touches, event);

    if (![self isKindOfClass:[UIView class]]) {
        return;
    }
    // [self mlnui_touchType:MLNUITouchType_End touch:touches.anyObject event:event];

    // if([self isOpenRipple]) {
    //     dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //         self.backgroundColor = [self oldColor];
    //         [self luaui_setDidSetOldColor:NO];
    //     });
    // }

    if (self.mlnui_touchesEndedCallback) {
        UITouch *touch = touches.anyObject;
        if (touch.view == self) {
            CGPoint point  = [touch locationInView:self];
            [self.mlnui_touchesEndedCallback addFloatArgument:point.x];
            [self.mlnui_touchesEndedCallback addFloatArgument:point.y];
            [self.mlnui_touchesEndedCallback callIfCan];
        }
    }

    if (self.mlnui_touchesEndedExtensionCallback) {
        UITouch *touch = [touches anyObject];
        if (touch.view == self) {
            CGPoint screenLocation = [touch locationInView:self.window];
            CGPoint pageLocation = [touch locationInView:self];
            NSDictionary *touchDict = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
            [self.mlnui_touchesEndedExtensionCallback addObjArgument:[NSMutableDictionary dictionaryWithDictionary:touchDict]];
            [self.mlnui_touchesEndedExtensionCallback callIfCan];
        }
    }
}

- (void)mlnui_in_touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *))__mlnui_in_UICollectionView_Origin_TouchesCancelled_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIView class]]) {
        return;
    }
    // [self mlnui_touchType:MLNUITouchType_End touch:touches.anyObject event:event];
    //
    // if([self isOpenRipple]) {
    //     dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //         self.backgroundColor = [self oldColor];
    //         [self luaui_setDidSetOldColor:NO];
    //     });
    // }

    if (self.mlnui_touchesCancelledCallback) {
        UITouch *touch = touches.anyObject;
        if (touch.view == self) {
            CGPoint point  = [touch locationInView:self];
            [self.mlnui_touchesEndedCallback addFloatArgument:point.x];
            [self.mlnui_touchesEndedCallback addFloatArgument:point.y];
            [self.mlnui_touchesEndedCallback callIfCan];
        }
    }

    if (self.mlnui_touchesCancelledExtensionCallback) {
        UITouch *touch = [touches anyObject];
        if (touch.view == self) {
            CGPoint screenLocation = [touch locationInView:self.window];
            CGPoint pageLocation = [touch locationInView:self];
            NSDictionary *touchDict = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
            [self.mlnui_touchesCancelledExtensionCallback addObjArgument:[NSMutableDictionary dictionaryWithDictionary:touchDict]];
            [self.mlnui_touchesCancelledExtensionCallback callIfCan];
        }
    }
}
@end
