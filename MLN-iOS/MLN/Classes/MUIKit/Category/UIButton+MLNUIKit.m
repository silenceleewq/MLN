//
//  UIButton+MLNUIKit.m
//  ArgoUI
//
//  Created by MOMO on 2020/9/25.
//

#import "UIButton+MLNUIKit.h"
#import <objc/runtime.h>
#import "UIView+MLNUIKit.h"
#import "MLNUIBlock.h"

@implementation UIButton (MLNUIKit)


static IMP __mlnui_in_UIButton_Origin_TouchesBegan_Method_Imp;
static IMP __mlnui_in_UIButton_Origin_TouchesMoved_Method_Imp;
static IMP __mlnui_in_UIButton_Origin_TouchesEnded_Method_Imp;
static IMP __mlnui_in_UIButton_Origin_TouchesCancelled_Method_Imp;

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method origMethod1     = class_getInstanceMethod([self class], @selector(touchesBegan:withEvent:));
        Method swizzledMethod1 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesBegan:withEvent:));
        __mlnui_in_UIButton_Origin_TouchesBegan_Method_Imp = method_getImplementation(origMethod1);
        method_exchangeImplementations(origMethod1, swizzledMethod1);

        Method origMethod2     = class_getInstanceMethod([self class], @selector(touchesMoved:withEvent:));
        Method swizzledMethod2 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesMoved:withEvent:));

        __mlnui_in_UIButton_Origin_TouchesMoved_Method_Imp = method_getImplementation(origMethod2);
        method_exchangeImplementations(origMethod2, swizzledMethod2);

        Method origMethod3     = class_getInstanceMethod([self class], @selector(touchesEnded:withEvent:));
        Method swizzledMethod3 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesEnded:withEvent:));

        __mlnui_in_UIButton_Origin_TouchesEnded_Method_Imp = method_getImplementation(origMethod3);
        method_exchangeImplementations(origMethod3, swizzledMethod3);

        Method origMethod4     = class_getInstanceMethod([self class], @selector(touchesCancelled:withEvent:));
        Method swizzledMethod4 = class_getInstanceMethod([self class], @selector(mlnui_in_touchesCancelled:withEvent:));

        __mlnui_in_UIButton_Origin_TouchesCancelled_Method_Imp = method_getImplementation(origMethod4);
        method_exchangeImplementations(origMethod4, swizzledMethod4);

        Method origMethod5     = class_getInstanceMethod([self class], @selector(removeFromSuperview));
        Method swizzledMethod5 = class_getInstanceMethod([self class], @selector(mlnui_in_removeFromSuperview));
        method_exchangeImplementations(origMethod5, swizzledMethod5);
    });
}

- (void)mlnui_in_touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *)) __mlnui_in_UIButton_Origin_TouchesBegan_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIButton class]]) {
        return;
    }
    if (self.mlnui_touchesBeganCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint point  = [touch locationInView:self];
                [self.mlnui_touchesBeganCallback addFloatArgument:point.x];
                [self.mlnui_touchesBeganCallback addFloatArgument:point.y];
                [self.mlnui_touchesBeganCallback callIfCan];
            }
        }
    }


    if (self.mlnui_touchesBeganExtensionCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint      screenLocation = [touch locationInView:self.window];
                CGPoint      pageLocation   = [touch locationInView:self];
                NSDictionary *touchDict     = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
                [self.mlnui_touchesBeganExtensionCallback addObjArgument:[NSMutableDictionary dictionaryWithDictionary:touchDict]];
                [self.mlnui_touchesBeganExtensionCallback callIfCan];
            }
        }
    }
}

- (void)mlnui_in_touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *)) __mlnui_in_UIButton_Origin_TouchesMoved_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIButton class]]) {
        return;
    }
//    [self mlnui_touchType:MLNUITouchType_Move touch:touches.anyObject event:event];

    if (self.mlnui_touchesMovedCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint point  = [touch locationInView:self];
                [self.mlnui_touchesMovedCallback addFloatArgument:point.x];
                [self.mlnui_touchesMovedCallback addFloatArgument:point.y];
                [self.mlnui_touchesMovedCallback callIfCan];
            }
        }
    }

    if (self.mlnui_touchesMovedExtensionCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint      screenLocation = [touch locationInView:self.window];
                CGPoint      pageLocation   = [touch locationInView:self];
                NSDictionary *touchDict     = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
                [self.mlnui_touchesMovedExtensionCallback addObjArgument:touchDict.mutableCopy];
                [self.mlnui_touchesMovedExtensionCallback callIfCan];
            }
        }
    }
}

- (void)mlnui_in_touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *)) __mlnui_in_UIButton_Origin_TouchesEnded_Method_Imp;
    functionPointer(self, _cmd, touches, event);

    if (![self isKindOfClass:[UIButton class]]) {
        return;
    }

    if (self.mlnui_touchesEndedCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint point  = [touch locationInView:self];
                [self.mlnui_touchesEndedCallback addFloatArgument:point.x];
                [self.mlnui_touchesEndedCallback addFloatArgument:point.y];
                [self.mlnui_touchesEndedCallback callIfCan];
            }
        }
    }

    if (self.mlnui_touchesEndedExtensionCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint      screenLocation = [touch locationInView:self.window];
                CGPoint      pageLocation   = [touch locationInView:self];
                NSDictionary *touchDict     = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
                [self.mlnui_touchesEndedExtensionCallback addObjArgument:touchDict.mutableCopy];
                [self.mlnui_touchesEndedExtensionCallback callIfCan];
            }
        }
    }
}

- (void)mlnui_in_touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    void (*functionPointer)(id, SEL, NSSet<UITouch *> *, UIEvent *) = (void (*)(id, SEL, NSSet<UITouch *> *, UIEvent *)) __mlnui_in_UIButton_Origin_TouchesCancelled_Method_Imp;
    functionPointer(self, _cmd, touches, event);
    if (![self isKindOfClass:[UIButton class]]) {
        return;
    }


    if (self.mlnui_touchesCancelledCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint point  = [touch locationInView:self];
                [self.mlnui_touchesEndedCallback addFloatArgument:point.x];
                [self.mlnui_touchesEndedCallback addFloatArgument:point.y];
                [self.mlnui_touchesEndedCallback callIfCan];
            }
        }
    }


    if (self.mlnui_touchesCancelledExtensionCallback) {
        NSArray<UITouch *> *touchesArray = touches.allObjects;
        for (NSInteger i = 0; i < touchesArray.count; ++i) {
            UITouch *touch = touchesArray[i];
            if (touch.view == self) {
                CGPoint      screenLocation = [touch locationInView:self.window];
                CGPoint      pageLocation   = [touch locationInView:self];
                NSDictionary *touchDict     = [self touchResultWithScreenLocation:screenLocation pageLocation:pageLocation target:self];
                [self.mlnui_touchesCancelledExtensionCallback addObjArgument:touchDict.mutableCopy];
                [self.mlnui_touchesCancelledExtensionCallback callIfCan];
            }
        }
    }
}

@end
