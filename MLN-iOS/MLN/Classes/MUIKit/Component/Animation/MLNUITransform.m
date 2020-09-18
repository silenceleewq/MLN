//
// Created by MOMO on 2020/9/16.
//

#import "MLNUITransform.h"
#import "MLNUILuaCore.h"
#import "MLNUIKitHeader.h"

@interface MLNUITransform ()

@end

@implementation MLNUITransform

- (NSString *)luaui_sayHello {
    return @"MLNUITransform hello world";
}

LUAUI_EXPORT_BEGIN(MLNUITransform)
LUAUI_EXPORT_METHOD(sayHello, "luaui_sayHello", MLNUITransform)
LUAUI_EXPORT_END(MLNUITransform, LRQTransform, NO, NULL, NULL)

@end
