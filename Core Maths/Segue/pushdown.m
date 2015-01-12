//
//  skip.m
//  Om
//
//  Created by Arch on 28/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "pushdown.h"

@implementation pushdown
-(void)perform {
    UIView *preV = ((UIViewController *)self.sourceViewController).view;
    UIView *newV = ((UIViewController *)self.destinationViewController).view;
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    newV.center = CGPointMake(newV.center.x, preV.center.y + preV.frame.size.height);
    [window insertSubview:newV belowSubview:preV];
    NSLog(@"down"); 
    [UIView animateWithDuration:0.6
                     animations:^{
                         newV.center = CGPointMake(newV.center.x,preV.center.y);
                         preV.center = CGPointMake(newV.center.x,0- preV.center.y+40);}
                     completion:^(BOOL finished){
                         [preV removeFromSuperview];
                         window.rootViewController = self.destinationViewController;
                     }];
    
}
@end
