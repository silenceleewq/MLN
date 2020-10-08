//
//  MLNUIInnerCollectionView.m
//  MLNUI
//
//  Created by MoMo on 2019/9/2.
//

#import "MLNUIInnerCollectionView.h"
#import "NSObject+MLNUICore.h"

@implementation MLNUIInnerCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithFrame:frame collectionViewLayout:layout];
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
