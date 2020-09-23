#import <UIKit/UIKit.h>
#import "ArgoKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface HighlightModel : ArgoViewModelBase <ArgoViewModelProtocol> 
@property (nonatomic, assign) NSInteger ec;
@property (nonatomic, copy) NSString * em;
@property (nonatomic, strong) ArgoObservableMap *data;
#if DEBUG
+ (instancetype)defaultUserData;
#endif
NS_ASSUME_NONNULL_END
@end
    