#import "TitleModel.h"

@implementation TitleModel

#if OCPERF_USE_NEW_DB

-(NSString *)title{
	return [self valueForKey:@"title"];
}
-(void)setTitle:(NSString *)title {
	[self setValue:title forKey:@"title"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQSloganViewArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQSloganView.lua";
}

+ (NSString *)modelKey {
	return @"titleModel";
}

- (void)autoWired:(id)dataObject extra:(nullable id)extra error:(NSError *__autoreleasing*)error {
    
    if (!dataObject) return;
    
    [MLNUIModelHandler buildModelWithDataObject:dataObject model:self extra:extra functionChunk:[self autoWiredFuncString] error:error];
}

- (void)autoWired:(id)dataObject extra:(nullable id)extra complete:(MLNUIModelHandleComplete)complete {
    
    if (!dataObject) return;
    
    [MLNUIModelHandler buildModelWithDataObject:dataObject model:self extra:extra functionChunk:[self autoWiredFuncString] complete:complete];
}


- (const char *)autoWiredFuncString {
	return 		"function autoWiredtitleModel(origin,viewModel,extra)"
		"viewModel.title=origin.title "
		"return viewModel "
		"end "
	"return autoWiredtitleModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
		TitleModel *titleModel = [self new];
		titleModel.title = @"hello";

	return titleModel;
}
- (NSMutableDictionary *)keyPaths {
	return @{
		@"slogan": @"slogan",
		@"sloganTitle": @"sloganTitle",
		@"title": @"title",
	}.argo_mutableCopy;
}
//key-path对比，默认 NO
- (BOOL)isCompareKeyPath {
	return NO;
}
#endif



@end