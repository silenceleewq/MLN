//
//  MLNAutoFillKuaViewController.m
//  LuaNative
//
//  Created by MOMO on 2020/9/8.
//  Copyright © 2020 MoMo. All rights reserved.
//

#import "MLNAutoFillKuaViewController.h"
#import "LrqUserData.h"

@interface MLNAutoFillKuaViewController ()

@end

@implementation MLNAutoFillKuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self kuaDetail];
}

- (void)kuaDetail {
    NSDictionary *origin = [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"userDataJson.plist" withExtension:nil] error:nil];

    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:[LrqUserData bundleName] ofType:nil];
    NSBundle *mainBundle = [NSBundle bundleWithPath:bundlePath];

    MLNUIViewController *viewController = [[MLNUIViewController alloc] initWithEntryFileName:[LrqUserData entryFileName] bundle:mainBundle];
    [viewController mlnui_addToSuperViewController:self frame:self.view.bounds];

    LrqUserData *userData = [LrqUserData new];
    [viewController bindData:userData forKey:[LrqUserData modelKey]];

    [userData autoWired:origin extra:nil error:nil];
}

@end
