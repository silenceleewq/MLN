#import "SloganModel.h"

@implementation SloganModel

#if OCPERF_USE_NEW_DB

-(NSString *)sloganTitle{
	return [self valueForKey:@"sloganTitle"];
}
-(void)setSloganTitle:(NSString *)sloganTitle {
	[self setValue:sloganTitle forKey:@"sloganTitle"];
}
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
	return @"SloganModel";
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
	return 		"function autoWiredSloganModel(origin,viewModel,extra)"
		"viewModel.slogan=origin.slogan "
		"viewModel.sloganTitle=origin.sloganTitle "
		"return viewModel "
		"end "
	"return autoWiredSloganModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
	SloganModel *sloganModel = [self new];
	sloganModel.sloganTitle = @"这是 sloganTitle";
	sloganModel.slogan = @"这是slogan";

	return sloganModel;
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