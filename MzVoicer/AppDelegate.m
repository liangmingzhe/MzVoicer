//
//  AppDelegate.m
//  MzVoicer
//
//  Created by 梁明哲 on 2020/4/13.
//  Copyright © 2020 Tony. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.window makeKeyAndVisible];
    MainViewController *mVC = [[MainViewController alloc] init];
    self.window.rootViewController = mVC;
    
    return YES;
}




@end
