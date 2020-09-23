#import <UIKit/UIKit.h>
#import "ArgoKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface HeadlineModel : ArgoObservableMap <ArgoViewModelProtocol> 
@property (nonatomic, copy) NSString * headline;
#if DEBUG
+ (instancetype)defaultUserData;
#endif
NS_ASSUME_NONNULL_END
@end
    