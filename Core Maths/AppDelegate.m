//
//  AppDelegate.m
//  Core Maths
//
//  Created by Arch on 30/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize background;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
    
    [application setStatusBarStyle:UIStatusBarStyleLightContent];
    self.window.clipsToBounds =YES;
    self.window.frame =  CGRectMake(0,20,self.window.frame.size.width,self.window.frame.size.height-20);
   
    
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleDidChangeStatusBarOrientationNotification:)
                                                     name:UIApplicationDidChangeStatusBarOrientationNotification
                                                   object:nil];

        background = [[UIWindow alloc] initWithFrame: CGRectMake(0, 0, self.window.frame.size.width, 20)];
        background.backgroundColor =[UIColor blackColor];
        [background setHidden:NO];
    

    }
           return YES;
    
}

- (void)handleDidChangeStatusBarOrientationNotification:(NSNotification *)notification;
{
    int a = [[notification.userInfo objectForKey: UIApplicationStatusBarOrientationUserInfoKey] intValue];
    int w = [[UIScreen mainScreen] bounds].size.width;
    int h = [[UIScreen mainScreen] bounds].size.height;
    switch(a){
        case 4:
    self.window.frame =  CGRectMake(0,20,w,h);
            break;
        case 3:
    self.window.frame =  CGRectMake(-20,0,w-20,h+20);
            break;
        case 2:
    self.window.frame =  CGRectMake(0,-20,w,h);
            break;
        case 1:
        self.window.frame =  CGRectMake(20,0,w-20,h+20);
            
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
  
}



@end
