//
//  MLNAutoFillViewController.m
//  LuaNative
//
//  Created by MOMO on 2020/8/18.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import "MLNAutoFillViewController.h"
#import <MLNUIKit.h>
#import "MDVChatMovieSearchPageModel.h"
#import "HighlightModel.h"
// #define kKuaDetail

@interface MLNAutoFillViewController ()
@end

@implementation MLNAutoFillViewController {
    NSDictionary *_origin;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //  ArgoViewController *viewController = [[ArgoViewController alloc] initWithModelClass:HighlightModel.class];
    // HighlightModel *model = [HighlightModel defaultUserData];
    // [viewController bindData:model];
    // [viewController argo_addToSuperViewController:self frame:self.view.bounds];
    
    // NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ScoreList.plist" ofType:nil]];;
    //
    // ArgoViewController *viewController = [[ArgoViewController alloc] initWithModelClass:MDVChatMovieSearchPageModel.class];
   UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
   label.text = @"label";
   label.numberOfLines = 3;
   label.textColor = [UIColor redColor];
   [self.view addSubview:label];
   // MDVChatMovieSearchPageModel *model = [[MDVChatMovieSearchPageModel alloc] init];
   MDVChatMovieSearchPageModel *model = [MDVChatMovieSearchPageModel defaultUserData];
   label.text = model.title;
    // [viewController bindData:model];


    // [model autoWired:@{@"hah":@"haha"} extra:nil complete:^(__kindof MDVChatMovieSearchPageModel * _Nonnull model, NSError * _Nonnull error) {
    //     NSLog(@"完成");
    //     label.text = model.title;
    //     // [viewController argo_addToSuperViewController:self frame:self.view.bounds];
    // }];


}

- (void)oldVersion {
    NSString *resource = @"";
    NSString *bundleResource;
    NSString *entryFileName;
    
    resource       = @"userDataJson.plist";
    resource = @"ScoreList.plist";
    
#ifdef kKuaDetail
    self.lrqUserData = [LrqUserData new];
    resource       = @"userDataJson.plist";
    bundleResource = @"KuaDetail.bundle";
    entryFileName  = @"kuaDetail.lua";
#else
    resource = @"movieData.plist";
    resource = @"ScoreList.plist";
    bundleResource = @"ScoreListMUI.bundle";
    entryFileName = @"Movie/VChatMovieList.lua";
    entryFileName = @"ScoreList.lua";
#endif
    bundleResource = [MDVChatMovieSearchPageModel bundleName];
    entryFileName = [MDVChatMovieSearchPageModel entryFileName];
    if (@available(iOS 11, *)) {
        _origin = [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:resource withExtension:nil] error:nil];
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        _origin = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:resource ofType:nil]];
#pragma clang diagnostic pop
    }
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleResource ofType:nil];
    NSBundle *mainBundle = [NSBundle bundleWithPath:bundlePath];
    
    MLNUIViewController *viewController = [[MLNUIViewController alloc] initWithEntryFileName:entryFileName bundle:mainBundle];
    [viewController mlnui_addToSuperViewController:self frame:self.view.bounds];
    
#ifdef kKuaDetail
    
    self.lrqUserData.title = @"\"我是预填数x据\"";
    [viewController bindData:self.lrqUserData forKey:@"lrqUserData"];
    
    [self.lrqUserData autoWired:_origin extra:nil complete:^(__kindof NSObject *_Nonnull model, NSError *_Nonnull error) {
        NSLog(@"装配完毕 %@", self.lrqUserData.title);
    }];
#else
    MDVChatMovieSearchPageModel *pageModel = [MDVChatMovieSearchPageModel new];
    //    MDVChatMovieSearchPageModel *pageModel = [MDVChatMovieSearchPageModel defaultUserData];
    [viewController bindData:pageModel forKey:@"MDVChatMovieSearchPageModel"];
    
    [pageModel autoWired:_origin extra:nil complete:^(__kindof NSObject * _Nonnull model, NSError * _Nonnull error) {
        NSLog(@"%@", model);
    }];
    
    //     MovieData *md = [MovieData new];
    //     [viewController bindData:md forKey:[MovieData performSelector:@selector(modelKey)]];
    //     [md autoWired:_origin extra:nil complete:^(__kindof NSObject * _Nonnull model, NSError * _Nonnull error) {
    //         NSLog(@"%@", model);
    //     }];
#endif
}

@end

