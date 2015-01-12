//
//  pushback.m
//  Om
//
//  Created by Arch on 24/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "pushlike.h"

@implementation pushlike
-(void)perform {
    UIView *preV = ((UIViewController *)self.sourceViewController).view;
    UIView *newV = ((UIViewController *)self.destinationViewController).view;
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    newV.center = CGPointMake(preV.center.x + preV.frame.size.width, newV.center.y);
    [window insertSubview:newV aboveSubview:preV];
    
    [UIView animateWithDuration:0.4
                     animations:^{
                         newV.center = CGPointMake(preV.center.x, newV.center.y);
                         preV.center = CGPointMake(0- preV.center.x, newV.center.y);}
                     completion:^(BOOL finished){
                         [preV removeFromSuperview];
                         window.rootViewController = self.destinationViewController;
                     }];
    
}
@end
