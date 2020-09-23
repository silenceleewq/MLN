#import <UIKit/UIKit.h>
#import "ArgoKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface LrqUserData : ArgoViewModelBase <ArgoViewModelProtocol, MLNUIModelHandlerProtocol> 
@property (nonatomic, strong) ArgoObservableArray *listSource;
@property (nonatomic, copy) NSString * title;

- (void)autoWired:(id)dataObject extra:(nullable id)extra error:(NSError *__autoreleasing*)error;
- (void)autoWired:(id)dataObject extra:(nullable id)extra complete:(MLNUIModelHandleComplete)complete;

#if DEBUG
+ (instancetype)defaultUserData;
#endif
NS_ASSUME_NONNULL_END
@end
    