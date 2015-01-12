//
//  pushup.m
//  Core Maths
//
//  Created by Arch on 5/11/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "pushup.h"
#import "PrimeNavigator.h"

@implementation pushup
-(void)perform {

    UIView *preV = ((UIViewController *)self.sourceViewController).view;
    PrimeNavigator* newVc = self.destinationViewController;
    UIView* newV = newVc.view;
    UIView *setup = [newV viewWithTag:53];
    newV.userInteractionEnabled = false;
    setup.center = CGPointMake(setup.center.x, setup.center.y -120);
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    newV.center = CGPointMake(newV.center.x, preV.center.y - preV.frame.size.height);
    [window insertSubview:newV aboveSubview:preV];
   //  NSLog(@"USEDSEUGE");
    [UIView animateWithDuration:0.3
                     animations:^{
                         newV.center = CGPointMake(newV.center.x,preV.center.y);
                         preV.center = CGPointMake(newV.center.x,preV.center.y+ preV.frame.size.height);}
                     completion:^(BOOL finished){
                        // NSLog(@"WORKED!");
                         [preV removeFromSuperview];
                        // [newVc performSelector:@selector(showGrid) withObject:nil afterDelay:0.5];
                         
                         window.rootViewController = self.destinationViewController;
                     }];
    
}
@end
