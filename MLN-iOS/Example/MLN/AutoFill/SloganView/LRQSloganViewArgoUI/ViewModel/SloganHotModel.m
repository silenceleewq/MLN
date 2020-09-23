#import "SloganHotModel.h"

@implementation SloganHotModel

#if OCPERF_USE_NEW_DB

-(NSString *)slogan{
	return [self valueForKey:@"slogan"];
}
-(void)setSlogan:(NSString *)slogan {
	[self setValue:slogan forKey:@"slogan"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQSloganViewArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQSloganView.lua";
}

+ (NSString *)modelKey {
	return @"SloganHotModel";
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
	return 		"function autoWiredSloganHotModel(origin,viewModel,extra)"
		"viewModel.slogan=origin.slogan.. '\"小尾巴\"' "
		"return viewModel "
		"end "
	"return autoWiredSloganHotModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
		SloganHotModel *sloganHotModel = [self new];
		sloganHotModel.slogan = @"这是热的slogan\"小尾巴\"";

	return sloganHotModel;
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