//
//  MLNUIInnerTableView.m
//  MLNUI
//
//  Created by MoMo on 2019/9/2.
//

#import "MLNUIInnerTableView.h"
#import "NSObject+MLNUICore.h"

@implementation MLNUIInnerTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        NSArray <UIGestureRecognizer *>*array = [self gestureRecognizers];
        for (UIGestureRecognizer *rec in array) {
            rec.delaysTouchesBegan = NO;
            rec.delaysTouchesEnded = NO;
            rec.cancelsTouchesInView = NO;
        }
    }
    return self;
}

- (BOOL)mlnui_isConvertible
{
    return [self.containerView mlnui_isConvertible];
}

- (MLNUILuaCore *)mlnui_luaCore
{
    return self.containerView.mlnui_luaCore;
}

@end
