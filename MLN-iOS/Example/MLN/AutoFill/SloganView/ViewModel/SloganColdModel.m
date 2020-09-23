#import "SloganColdModel.h"

@implementation SloganColdModel

#if OCPERF_USE_NEW_DB

-(NSString *)coldSlogan{
	return [self valueForKey:@"coldSlogan"];
}
-(void)setColdSlogan:(NSString *)coldSlogan {
	[self setValue:coldSlogan forKey:@"coldSlogan"];
}

#endif

+ (NSString *)bundleName {
	return @"LRQSloganViewArgoUI.bundle";
}

+ (NSString *)entryFileName {
	return @"LRQ/LRQSloganView.lua";
}

+ (NSString *)modelKey {
	return @"SloganColdModel";
}

#if DEBUG
+ (instancetype)defaultUserData {
	SloganColdModel *sloganColdModel = [self new];
	sloganColdModel.coldSlogan = @"\"这是冷的slogan\"";

	return sloganColdModel;
}
#endif



@end