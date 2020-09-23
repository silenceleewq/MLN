//
//  MLNSloganViewController.m
//  LuaNative
//
//  Created by MOMO on 2020/9/7.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import <ArgoUI/MLNUIViewController.h>
#import "MLNSloganViewController.h"
#import "../../../../MLN/Classes/MUIKit/MLNUIKit.h"
#import "SloganModel.h"
#import "SloganHotModel.h"
#import "SloganColdModel.h"
#import "TitleModel.h"
#import "SubtitleModel.h"
#import "HeadlineModel.h"

#import "ElectModel.h"

@interface MLNSloganViewController ()

@end

@implementation MLNSloganViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //    NSString *resource = @"";
    //    NSString *bundleResource;
    //    NSString *entryFileName;
    //    resource       = @"userDataJson.plist";
    //    bundleResource = @"LRQSloganViewArgoUI.bundle";
    //    entryFileName  = @"LRQ/LRQSloganView.lua";
    //
    ////    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:[SloganModel bundleName] ofType:nil];
    //    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LRQSloganViewArgoUI.bundle" ofType:nil];
    //    NSBundle *mainBundle = [NSBundle bundleWithPath:bundlePath];
    //
    //    MLNUIViewController *viewController = [[MLNUIViewController alloc] initWithEntryFileName:@"LRQSloganView.lua" bundle:mainBundle];
    //    [viewController mlnui_addToSuperViewController:self frame:self.view.bounds];
    
    
    [self electView];
    //    SloganModel     *sloganModel     = [SloganModel new];
    //    SloganHotModel  *sloganHotModel  = [SloganHotModel new];
    //    SloganColdModel *sloganColdModel = [SloganColdModel defaultUserData];
    //    TitleModel      *titleModel      = [TitleModel new];
    //    SubtitleModel   *subtitleModel   = [SubtitleModel new];
    //    HeadlineModel   *headlineModel   = [HeadlineModel defaultUserData];
    //
    //    [sloganModel autoWired:@{@"slogan": @"这是slogan", @"sloganTitle": @"这是sloganTitle"} extra:nil error:nil];
    //    [sloganHotModel autoWired:@{@"slogan": @"这是热的slogan"} extra:nil error:nil];
    //    [titleModel autoWired:@{@"title": @"这是 title"} extra:nil error:nil];
    //    [subtitleModel autoWired:@{@"subtitle": @"这是 subtitle"} extra:nil error:nil];
    //
    //    [viewController bindData:sloganModel forKey:[SloganModel modelKey]];
    //    [viewController bindData:sloganHotModel forKey:[SloganHotModel modelKey]];
    //    [viewController bindData:sloganColdModel forKey:[SloganColdModel modelKey]];
    //    [viewController bindData:titleModel forKey:[TitleModel modelKey]];
    //    [viewController bindData:subtitleModel forKey:[SubtitleModel modelKey]];
    //    [viewController bindData:headlineModel forKey:[HeadlineModel modelKey]];
}

- (void)electView {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:[ElectModel bundleName] ofType:nil];
    NSBundle *mainBundle = [NSBundle bundleWithPath:bundlePath];
    
    MLNUIViewController *viewController = [[MLNUIViewController alloc] initWithEntryFileName:[ElectModel entryFileName] bundle:mainBundle];
    [viewController mlnui_addToSuperViewController:self frame:self.view.bounds];

    ElectModel *electModel = [ElectModel new];
    [viewController bindData:electModel forKey:[ElectModel modelKey]];

    [electModel autoWired:@{@"title": @"这是 electModel title"} extra:nil error:nil];
    NSLog(@"---");
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
