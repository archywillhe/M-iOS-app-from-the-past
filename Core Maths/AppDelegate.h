//
//  AppDelegate.h
//  Core Maths
//
//  Created by Arch on 30/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) UIWindow *background;
- (void)handleDidChangeStatusBarOrientationNotification:(NSNotification *)notification;


@end
