#import "HeadlineModel.h"

@implementation HeadlineModel

#if OCPERF_USE_NEW_DB

-(NSString *)headline{
	return [self valueForKey:@"headline"];
}
-(void)setHeadline:(NSString *)headline {
	[self setValue:headline forKey:@"headline"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQSloganViewArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQSloganView.lua";
}

+ (NSString *)modelKey {
	return @"headlineModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
		HeadlineModel *headlineModel = [self new];
		headlineModel.headline = @"headlineJson";

	return headlineModel;
}
#endif



@end