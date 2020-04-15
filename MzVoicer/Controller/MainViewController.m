//
//  MainViewController.m
//  MzVoicer
//
//  Created by 梁明哲 on 2020/4/13.
//  Copyright © 2020 Tony. All rights reserved.
//

#import "MainViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:^(BOOL granted) {
        NSLog(@"%@",granted ? @"麦克风准许":@"麦克风不准许");
    }];
}

@end
