//
//  MLNTest1Model.m
//  LuaNative
//
//  Created by sun on 2020/8/21.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import "MLNTest1Model.h"

@implementation MLNTest1Model

- (void)setM1:(NSString *)m1 {
    _m1 = m1.copy;
    
    argo_ui_exc_dict({
        mln_lua_pushstring(_L, "m1");
        mln_lua_pushstring(_L, m1.UTF8String);
    });
   
}

@end
