#import <UIKit/UIKit.h>
#import "ArgoKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface SloganColdModel : ArgoObservableMap <ArgoViewModelProtocol> 
@property (nonatomic, copy) NSString * coldSlogan;
#if DEBUG
+ (instancetype)defaultUserData;
#endif
NS_ASSUME_NONNULL_END
@end
    