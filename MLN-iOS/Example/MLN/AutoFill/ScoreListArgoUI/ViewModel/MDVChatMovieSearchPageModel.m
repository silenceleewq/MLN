#import "MDVChatMovieSearchPageModel.h"

@implementation MDVChatMovieSearchPageModel

#if OCPERF_USE_NEW_DB

-(NSString *)title{
    return [self valueForKey:@"title"];
}
-(void)setTitle:(NSString *)title {
    [self setValue:title forKey:@"title"];
}


#endif

+ (NSString *)bundleName {
    return @"ScoreListArgoUI.bundle";
}

+ (NSString *)entryFileName {
    return @"ScoreList.lua";
}

+ (NSString *)modelKey {
    return @"MDVChatMovieSearchPageModel";
}

- (void)autoWired:(id)dataObject extra:(nullable id)extra error:(NSError *__autoreleasing*)error {

    if (!dataObject) return;

    [MLNUIModelHandler buildModelWithDataObject:dataObject model:self extra:extra functionChunk:autoWiredFunctionString() error:error];
}

- (void)autoWired:(id)dataObject extra:(nullable id)extra complete:(MLNUIModelHandleComplete)complete {

    if (!dataObject) return;

    [MLNUIModelHandler buildModelWithDataObject:dataObject model:self extra:extra functionChunk:autoWiredFunctionString() complete:complete];
}


static inline const char * autoWiredFunctionString(void){
    return
        "function autoWiredMDVChatMovieSearchPageModel(origin,viewModel,extra)\nviewModel.title=\"testn\\n\\\\\\\"\\bbtitle\\\"\" \nreturn viewModel \nend \r"
        "return autoWiredMDVChatMovieSearchPageModel\r";
}

#if DEBUG
+ (instancetype)defaultUserData {
    MDVChatMovieSearchPageModel *mDVChatMovieSearchPageModel = [self new];
    mDVChatMovieSearchPageModel.title = @"testn\n\\\"\bbtitle\"";

    return mDVChatMovieSearchPageModel;
}
- (NSMutableDictionary *)keyPaths {
    return @{
        @"title": @"title",
    }.argo_mutableCopy;
}
//key-path对比，默认 NO
- (BOOL)isCompareKeyPath {
    return NO;
}
#endif



@end