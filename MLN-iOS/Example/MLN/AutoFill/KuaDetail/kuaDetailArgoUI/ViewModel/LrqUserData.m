#import "LrqUserData.h"

@implementation LrqUserData

#if OCPERF_USE_NEW_DB

-(ArgoObservableArray *)listSource{
	return [self valueForKey:@"listSource"];
}
-(void)setListSource:(ArgoObservableArray *)listSource {
	[self setValue:listSource forKey:@"listSource"];
}
-(NSString *)title{
	return [self valueForKey:@"title"];
}
-(void)setTitle:(NSString *)title {
	[self setValue:title forKey:@"title"];
}

#endif

+ (NSString *)bundleName {
	return @"kuaDetailArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"kuaDetail.lua";
}

+ (NSString *)modelKey {
	return @"lrqUserData";
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
		"function autoWiredlrqUserData(origin,viewModel,extra)\r"
		"viewModel.title=origin.title.. \"hahha\"\r"
		"viewModel.listSource=origin.listSource \r"
		"return viewModel \r"
		"end \r"
		"return autoWiredlrqUserData\r";
}

#if DEBUG
+ (instancetype)defaultUserData {
	LrqUserData *lrqUserData = [self new];
	lrqUserData.listSource = @[
		@{
			@"pic": @"https://f.msup.com.cn/07ae2565138eafe695ff029014d944b7.png",
			@"comment": @"253",
			@"name": @"妮妮小丸子",
			@"actions": @[
				@"#晒妆容",
				@"求夸",
			].argo_mutableCopy,
			@"like": @"13",
			@"content": @"本仙女发大招啦，求夸三连！",
			@"icon": @"https://f.msup.com.cn/07ae2565138eafe695ff029014d944b7.png",
			@"desc": @"4分钟前.来自通讯录二度关系圈子",
		}.argo_mutableCopy,
		@{
			@"reply": @[
				@{
					@"name": @"博彦",
					@"content": @"是手机不太行，记录不了你的美",
				}.argo_mutableCopy,
				@{
					@"name": @"小妮子花花",
					@"content": @"你说的好假，我好喜欢",
				}.argo_mutableCopy,
				@{
					@"name": @"博彦",
					@"content": @"是手机不太行，记录不了你的美",
				}.argo_mutableCopy,
			].argo_mutableCopy,
			@"time": @"3分钟前",
			@"name": @"我",
			@"like": @"12",
			@"content": @"你P图水平不太行，照片还没本人好看",
			@"icon": @"https://f.msup.com.cn/07ae2565138eafe695ff029014d944b7.png",
			@"level": @"青铜V",
		}.argo_mutableCopy,
		@{
			@"reply": @[
				@{
					@"name": @"博彦",
					@"content": @"是手机不太行，记录不了你的美",
				}.argo_mutableCopy,
				@{
					@"name": @"小妮子花花",
					@"content": @"你说的好假，我好喜欢",
				}.argo_mutableCopy,
				@{
					@"name": @"博彦",
					@"content": @"是手机不太行，记录不了你的美",
				}.argo_mutableCopy,
			].argo_mutableCopy,
			@"time": @"3分钟前",
			@"name": @"我",
			@"like": @"12",
			@"content": @"你P图水平不太行，照片还没本人好看",
			@"icon": @"https://f.msup.com.cn/07ae2565138eafe695ff029014d944b7.png",
			@"level": @"青铜V",
		}.argo_mutableCopy,
	].argo_mutableCopy; 

	lrqUserData.title = @"我很好hahha";

	return lrqUserData;
}
- (NSMutableDictionary *)keyPaths {
	return @{
		@"listSource": @[
			@{
				@"comment": @"comment",
				@"content": @"content",
				@"icon": @"icon",
				@"desc": @"desc",
				@"pic": @"pic",
				@"level": @"level",
				@"reply": @[
					@{
						@"name": @"name",
						@"content": @"content",
					}.argo_mutableCopy,
				].argo_mutableCopy,
				@"like": @"like",
				@"time": @"time",
				@"name": @"name",
				@"actions": @[
				].argo_mutableCopy,
			}.argo_mutableCopy,
		].argo_mutableCopy,
		@"title": @"title",
	}.argo_mutableCopy;
}
//key-path对比，默认 NO
- (BOOL)isCompareKeyPath {
	return NO;
}
#endif



@end