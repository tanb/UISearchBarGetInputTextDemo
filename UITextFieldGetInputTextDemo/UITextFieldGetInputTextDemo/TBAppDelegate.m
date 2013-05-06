//
//  TBAppDelegate.m
//  UITextFieldGetInputTextDemo
//
//  Created by tanB on 5/6/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBAppDelegate.h"

#import "TBViewController.h"

@implementation TBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [TBViewController new];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end