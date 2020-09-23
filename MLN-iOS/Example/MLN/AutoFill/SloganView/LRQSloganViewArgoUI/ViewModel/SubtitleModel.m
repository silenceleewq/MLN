#import "SubtitleModel.h"

@implementation SubtitleModel

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
	return @"subtitleModel";
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
	return 		"function autoWiredsubtitleModel(origin,viewModel,extra)"
		"viewModel.title=origin.subtitle "
		"return viewModel "
		"end "
	"return autoWiredsubtitleModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
		SubtitleModel *subtitleModel = [self new];
		subtitleModel.title = @"this is subtitle";

	return subtitleModel;
}
- (NSMutableDictionary *)keyPaths {
	return @{
		@"title": @"title",
		@"sloganTitle": @"sloganTitle",
		@"slogan": @"slogan",
	}.argo_mutableCopy;
}
//key-path对比，默认 NO
- (BOOL)isCompareKeyPath {
	return NO;
}
#endif



@end