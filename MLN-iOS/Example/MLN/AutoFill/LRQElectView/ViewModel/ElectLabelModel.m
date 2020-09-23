#import "ElectLabelModel.h"

@implementation ElectLabelModel

#if OCPERF_USE_NEW_DB

-(NSString *)title{
	return [self valueForKey:@"title"];
}
-(void)setTitle:(NSString *)title {
	[self setValue:title forKey:@"title"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQElectLabelArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQElectLabel.lua";
}

+ (NSString *)modelKey {
	return @"electLabelModel";
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
	return 
		"function autoWiredelectLabelModel(origin,viewModel,extra)\r"
		"viewModel.title=origin.title \r"
		"end \r"
		"return autoWiredelectLabelModel\r";
}

#if DEBUG
+ (instancetype)defaultUserData {
		ElectLabelModel *electLabelModel = [self new];
		electLabelModel.title = @"electLabelTitle";

	return electLabelModel;
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
