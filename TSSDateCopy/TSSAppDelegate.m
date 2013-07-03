//
//  TSSAppDelegate.m
//  TSSDateCopy
//
//  Created by SHIYA Keita on 2013/07/03.
//  Copyright (c) 2013年 SHIYA Keita. All rights reserved.
//

#import "TSSAppDelegate.h"
#import "TSSViewController.h"

@implementation TSSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[TSSViewController alloc] initWithNibName:@"TSSViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
