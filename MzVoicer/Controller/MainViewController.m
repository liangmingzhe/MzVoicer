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
@property (nonatomic ,strong) UIButton *recordBtn;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)initUI {
    self.recordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.recordBtn];
    [self.recordBtn setImage:[UIImage imageNamed:@"recorder"] forState:UIControlStateNormal];
    [self.recordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        make.width.height.mas_equalTo(40);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //申请麦克风权限
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:^(BOOL granted) {
        NSLog(@"%@",granted ? @"麦克风准许":@"麦克风不准许");
    }];
    
    
}



@end
