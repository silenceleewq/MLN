#import "ElectModel.h"

@implementation ElectModel

#if OCPERF_USE_NEW_DB

-(NSString *)title{
	return [self valueForKey:@"title"];
}
-(void)setTitle:(NSString *)title {
	[self setValue:title forKey:@"title"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQElectViewArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQElectView.lua";
}

+ (NSString *)modelKey {
	return @"electModel";
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
		"function autoWiredelectModel(origin,viewModel,extra)\r"
		"viewModel.title=origin.title \r"
		"return viewModel \r"
		"end \r"
		"return autoWiredelectModel\r";
}

#if DEBUG
+ (instancetype)defaultUserData {
	ElectModel *electModel = [self new];
	electModel.title = @"electModel title";

	return electModel;
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
