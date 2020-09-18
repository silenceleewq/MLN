//
//  MLNUIPinchGestureRecognizer.h
//  AFNetworking
//
//  Created by MOMO on 2020/9/18.
//

#import <Foundation/Foundation.h>
@class MLNUIBlock;
NS_ASSUME_NONNULL_BEGIN

@interface MLNUIPinchGestureRecognizer : NSObject
@property (nonatomic, copy) MLNUIBlock *luaui_pinchGestureCallback;
@property (nonatomic, strong) UIView *attachView;
@end

NS_ASSUME_NONNULL_END
