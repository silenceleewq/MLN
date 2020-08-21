//
//  ArgoUIBaseModel.m
//  LuaNative
//
//  Created by sun on 2020/8/21.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import "ArgoUIBaseModel.h"

const char * const ARGO_UI_MODEL = "argo_ui_m";

NS_INLINE NSString* argo_ui_auto_create_model_name() {
    static NSInteger _index = 0;
    static const char *_ns = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_";
    static unsigned short _offset = 0;
    static char _c = 'a';
    if (_index == NSIntegerMax) {
        _offset ++;
        _c = _ns[_offset];
    }
    return [NSString stringWithFormat:@"m%c%zi",_c, (_index ++)];
}


@implementation ArgoUIBaseModel {
    NSString *_name;
}

- (instancetype)initWithLuaState:(lua_State *)L {
    if (self = [super init]) {
        _name = argo_ui_auto_create_model_name();
        tn = _name.UTF8String;
        _L = L;
        lua_getglobal(L, ARGO_UI_MODEL);
        if (mln_lua_type(L, -1) != LUA_TTABLE) {
            lua_pop(L, 1);
            lua_newtable(L);
            lua_setglobal(L, ARGO_UI_MODEL);
            lua_getglobal(L, ARGO_UI_MODEL);
        }
        mln_lua_pushstring(_L, tn);
        lua_newtable(_L);
        mln_lua_settable(_L, -3);
        lua_pop(L, 1);
    }
    return self;
}

- (void)dealloc {
    if (mln_lua_type(_L, -1) < LUA_TNIL) return;
    lua_getglobal(_L, ARGO_UI_MODEL);
    if (mln_lua_type(_L, -1) == LUA_TTABLE) {
        mln_lua_pushstring(_L, tn);
        mln_lua_pushnil(_L);
        mln_lua_settable(_L, -3);
    }
    lua_pop(_L, 1);
}

@end
