#import <UIKit/UIKit.h>
#import "ArgoKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface MDVChatMovieSearchPageModel : ArgoViewModelBase <ArgoViewModelProtocol, MLNUIModelHandlerProtocol> 
@property (nonatomic, strong) ArgoObservableArray *history;
@property (nonatomic, assign) BOOL isOK;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) ArgoObservableMap *searchBar;
@property (nonatomic, assign) CGFloat weight;
@property (nonatomic, strong) ArgoObservableArray *info;
@property (nonatomic, strong) ArgoObservableMap *list;
@property (nonatomic, copy) NSString * title;

- (void)autoWired:(id)dataObject extra:(nullable id)extra error:(NSError *__autoreleasing*)error;
- (void)autoWired:(id)dataObject extra:(nullable id)extra complete:(MLNUIModelHandleComplete)complete;

#if DEBUG
+ (instancetype)defaultUserData;
#endif
NS_ASSUME_NONNULL_END
@end
    