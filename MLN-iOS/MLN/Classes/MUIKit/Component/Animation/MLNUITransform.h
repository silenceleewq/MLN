//
// Created by MOMO on 2020/9/16.
//

#import <UIKit/UIKit.h>
#import "MLNUIEntityExportProtocol.h"

@interface MLNUITransform : NSObject <MLNUIEntityExportProtocol>
@property (nonatomic, assign) CGFloat tx;
@property (nonatomic, assign) CGFloat ty;
@property (nonatomic, assign) CGAffineTransform transform;
@end