#import "HighlightModel.h"

@implementation HighlightModel

#if OCPERF_USE_NEW_DB

-(NSInteger)ec{
	return [[self valueForKey:@"ec"] integerValue];
}
-(void)setEc:(NSInteger)ec {
	[self setValue:@(ec) forKey:@"ec"];
}

-(NSString *)em{
	return [self valueForKey:@"em"];
}
-(void)setEm:(NSString *)em {
	[self setValue:em forKey:@"em"];
}

-(ArgoObservableMap *)data{
	ArgoObservableMap *map = [self valueForKey:@"data"];
	if(!map) {
		map = [ArgoObservableMap dictionary];
		[self setValue:map forKey:@"data"];
	}
	return map;
}
-(void)setData:(ArgoObservableMap *)data {
	[self setValue:data forKey:@"data"];
}


#endif

+ (NSString *)bundleName {
	return @"highlight_detailArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"highlight/highlight_detail.lua";
}

+ (NSString *)modelKey {
	return @"highlightModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
	HighlightModel *highlightModel = [self new];
	highlightModel.ec = 0;
	highlightModel.em = @"success";
	highlightModel.data = @{
		@"cursor": @(1600163918421),
		@"feeds": @[
			@{
				@"pics": @[
					@{
						@"picTags": @[
							@{
								@"direct": @(1),
								@"px": @(0.312),
								@"py": @(0.2),
								@"content": @"新买的手机iPhone(512G)，白色，带发票",
							}.argo_mutableCopy,
						].argo_mutableCopy,
						@"url": @"https://cdn.doki.ren/kuaw/BE/72/BE727EF6-684C-4801-97DF-E693A44E89F720200812.jpg",
						@"urlHigh": @"https://cdn.doki.ren/kuaw/BE/72/BE727EF6-684C-4801-97DF-E693A44E89F720200812.jpg",
						@"heightNormal": @"0.722",
						@"widthNormal": @"1.0",
					}.argo_mutableCopy,
				].argo_mutableCopy,
				@"createTime": @(1600163918),
				@"id": @"jkd",
				@"location": @{
					@"bizName": @"美丽大商场",
					@"id": @"bac3aa ",
				}.argo_mutableCopy,
				@"kkDm": @[
					@{
						@"likeNum": @(3),
						@"styleId": @(1),
						@"id": @"ba23c",
						@"attributes": @[
						].argo_mutableCopy,
						@"kuake": @{
							@"nickname": @"振大爷",
							@"avatar": @"https://cdn.doki.ren/kuaw/D0/4C/D04C2378-5AF3-4A65-9040-2BAF1DF7931A20200812.jpg",
							@"uid": @"721325",
							@"level": @(1),
							@"levelDesc": @"超级至尊黄金VIP ",
						}.argo_mutableCopy,
						@"content": @"好炫酷～！ ",
						@"ilike": @(NO),
					}.argo_mutableCopy,
					@{
						@"likeNum": @(3),
						@"styleId": @(1),
						@"id": @"ba23c",
						@"attributes": @[
						].argo_mutableCopy,
						@"kuake": @{
							@"nickname": @"大爷",
							@"avatar": @"https://cdn.doki.ren/kuaw/D0/4C/D04C2378-5AF3-4A65-9040-2BAF1DF7931A20200812.jpg",
							@"uid": @"721325",
							@"level": @(1),
							@"levelDesc": @"超级至尊黄金VIP ",
						}.argo_mutableCopy,
						@"content": @"炫酷，yoooo",
						@"ilike": @(NO),
					}.argo_mutableCopy,
					@{
						@"likeNum": @(3),
						@"styleId": @(1),
						@"id": @"ba23b",
						@"attributes": @[
						].argo_mutableCopy,
						@"kuake": @{
							@"nickname": @"大爷",
							@"avatar": @"https://cdn.doki.ren/kuaw/D0/4C/D04C2378-5AF3-4A65-9040-2BAF1DF7931A20200812.jpg",
							@"uid": @"721325",
							@"level": @(1),
							@"levelDesc": @"超级至尊黄金VIP ",
						}.argo_mutableCopy,
						@"content": @"太赞了，阿哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
						@"ilike": @(NO),
					}.argo_mutableCopy,
				].argo_mutableCopy,
				@"content": @"刚完成上色正有点困，没啥事，就是想求个夸(不会画画的我连涂色都艰难，把画世界的笔刷全部试了个遍)厚着虾壳在线求夸",
				@"ilike": @(YES),
				@"cellHeight": @(0),
				@"user": @{
					@"following": @(NO),
					@"nickname": @"格格blue﹪",
					@"avatar": @"https://cdn.doki.ren/kuaw/A2/73/c0452912-074e-4135-99d9-0ba7bbf7d4e720200710.jpg",
					@"uid": @"Oo",
					@"kuaLevelDesc": @"白银I",
					@"kuaLevelIdx": @(4),
				}.argo_mutableCopy,
				@"timeShortcut": @"3个月前",
				@"likeNum": @(850),
				@"userHits": @"离你很近",
				@"attributes": @{
					@"unread": @(3),
					@"tag": @"网红打卡地",
				}.argo_mutableCopy,
				@"kuaNum": @(4302),
				@"style": @(3),
			}.argo_mutableCopy,
			@{
				@"kkDm": @[
				].argo_mutableCopy,
				@"style": @(2),
				@"createTime": @"1600163918",
				@"id": @"cyd ",
				@"user": @{
					@"following": @(NO),
					@"nickname": @"无言以对丶 ",
					@"avatar": @"https://cdn.doki.ren/kuaw/8F/A7/5bc69737-35fd-46c1-8250-e8b04528ffd320200710.jpg",
					@"uid": @"ZY",
					@"kuaLevel": @"黄金I ",
					@"kuaLevelIdx": @(7),
				}.argo_mutableCopy,
				@"video": @{
					@"heightNormal": @"1.722",
					@"widthNormal": @"1.0",
					@"thumb": @"https://cdn.doki.ren/kuaw/F0/99/F099792A-D515-4369-A62A-CAAEB5AF3CEE20200812.jpg",
					@"url": @"https://cdn.doki.ren/kuaw/F0/99/F099792A-D515-4369-A62A-CAAEB5AF3CEE20200812.mp4",
				}.argo_mutableCopy,
				@"content": @"求求你们能不能多夸我两句",
				@"ilike": @(NO),
				@"cellHeight": @(0),
				@"likeNum": @(548),
				@"timeShortcut": @"34个月前 ",
				@"irela": @(2),
				@"tag": @"",
				@"userHits": @"3个共同好友",
				@"kuaNum": @(9011),
				@"source": @"好友的好友",
			}.argo_mutableCopy,
			@{
				@"pics": @[
					@{
						@"picTags": @[
							@{
								@"direct": @(1),
								@"px": @(0.312),
								@"py": @(0.2),
								@"content": @"新买的手机iPhone(512G)，白色，带发票",
							}.argo_mutableCopy,
						].argo_mutableCopy,
						@"url": @"https://cdn.doki.ren/kuaw/BE/72/BE727EF6-684C-4801-97DF-E693A44E89F720200812.jpg",
						@"urlHigh": @"https://cdn.doki.ren/kuaw/BE/72/BE727EF6-684C-4801-97DF-E693A44E89F720200812.jpg",
						@"heightNormal": @"0.722",
						@"widthNormal": @"1.0",
					}.argo_mutableCopy,
				].argo_mutableCopy,
				@"createTime": @(1600163918),
				@"id": @"jkd",
				@"location": @{
					@"bizName": @"美丽大商场",
					@"id": @"bac3aa ",
				}.argo_mutableCopy,
				@"kkDm": @[
					@{
						@"likeNum": @(3),
						@"styleId": @(1),
						@"id": @"ba23c",
						@"attributes": @[
						].argo_mutableCopy,
						@"kuake": @{
							@"nickname": @"振大爷 ",
							@"avatar": @"https://cdn.doki.ren/kuaw/D0/4C/D04C2378-5AF3-4A65-9040-2BAF1DF7931A20200812.jpg",
							@"uid": @"721325",
							@"level": @(1),
							@"levelDesc": @"超级至尊黄金VIP ",
						}.argo_mutableCopy,
						@"content": @"好炫酷～！ ",
						@"ilike": @(NO),
					}.argo_mutableCopy,
				].argo_mutableCopy,
				@"content": @"刚完成上色正有点困，没啥事，就是想求个夸(不会画画的我连涂色都艰难，把画世界的笔刷全部试了个遍)厚着虾壳在线求夸",
				@"ilike": @(YES),
				@"cellHeight": @(0),
				@"user": @{
					@"following": @(NO),
					@"nickname": @"格格blue﹪",
					@"avatar": @"https://cdn.doki.ren/kuaw/A2/73/c0452912-074e-4135-99d9-0ba7bbf7d4e720200710.jpg",
					@"uid": @"Oo",
					@"kuaLevelDesc": @"白银I",
					@"kuaLevelIdx": @(4),
				}.argo_mutableCopy,
				@"timeShortcut": @"3个月前",
				@"likeNum": @(850),
				@"userHits": @"离你很近",
				@"attributes": @{
					@"unread": @(3),
					@"tag": @"网红打卡地",
				}.argo_mutableCopy,
				@"kuaNum": @(4302),
				@"style": @(2),
			}.argo_mutableCopy,
			@{
				@"kkDm": @[
				].argo_mutableCopy,
				@"style": @(2),
				@"createTime": @"1600163918",
				@"id": @"cyd ",
				@"user": @{
					@"following": @(NO),
					@"nickname": @"无言以对丶 ",
					@"avatar": @"https://cdn.doki.ren/kuaw/8F/A7/5bc69737-35fd-46c1-8250-e8b04528ffd320200710.jpg",
					@"uid": @"ZY",
					@"kuaLevel": @"黄金I ",
					@"kuaLevelIdx": @(7),
				}.argo_mutableCopy,
				@"video": @{
					@"heightNormal": @"1.722",
					@"widthNormal": @"1.0",
					@"thumb": @"https://cdn.doki.ren/kuaw/F0/99/F099792A-D515-4369-A62A-CAAEB5AF3CEE20200812.jpg",
					@"url": @"https://cdn.doki.ren/kuaw/F0/99/F099792A-D515-4369-A62A-CAAEB5AF3CEE20200812.mp4",
				}.argo_mutableCopy,
				@"content": @"求求你们能不能多夸我两句",
				@"ilike": @(NO),
				@"cellHeight": @(0),
				@"likeNum": @(548),
				@"timeShortcut": @"34个月前 ",
				@"irela": @(2),
				@"tag": @"",
				@"userHits": @"3个共同好友",
				@"kuaNum": @(9011),
				@"source": @"好友的好友",
			}.argo_mutableCopy,
		].argo_mutableCopy,
	}.argo_mutableCopy; 


	return highlightModel;
}
#endif



@end