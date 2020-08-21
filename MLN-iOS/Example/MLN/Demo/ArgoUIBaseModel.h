//
//  ArgoUIBaseModel.h
//  LuaNative
//
//  Created by sun on 2020/8/21.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ArgoUI/MLNUICore.h>

NS_ASSUME_NONNULL_BEGIN

extern const char * const ARGO_UI_MODEL;


//对当前对象的table操作
#define argo_ui_exc_t(action) \
    lua_getglobal(_L, ARGO_UI_MODEL);\
    mln_lua_getfield(_L, -1, tn);\
    action \
    lua_pop(_L, 2);

//对当前对象的table map操作
#define argo_ui_exc_dict(action) \
    argo_ui_exc_t({action \
        mln_lua_settable(_L, -3);\
    })
    

//对当前对象的table list操作
#define argo_ui_exc_list(action) \
    argo_ui_exc_t({action\
        mln_lua_settable(_L, -2);\
    })
    

/**
 eg:
 - (void)setM1:(NSString *)m1 {
     _m1 = m1.copy;
     
     argo_ui_exc_dict({
         mln_lua_pushstring(_L, "m1");
         mln_lua_pushstring(_L, m1.UTF8String);
     });
 }
 
 lua:
    for k, v in pairs(argo_ui_m) do
        print(k, v.m1)
    end
 
 */

@interface ArgoUIBaseModel : NSObject {
    @protected
    lua_State *_L;
    const char *tn;
}

- (instancetype)initWithLuaState:(lua_State *) L;



- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
