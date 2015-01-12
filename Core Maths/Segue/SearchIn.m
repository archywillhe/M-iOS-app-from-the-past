//
//  SearchIn.m
//  Core Maths
//
//  Created by Arch on 20/12/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "SearchIn.h"
#import "PrimeNavigator.h"
#import "Xtra.h"
@implementation SearchIn
-(void)perform {
    PrimeNavigator *V = self.sourceViewController;
    
    Xtra *Bye = self.destinationViewController;
    
    UIView *preV = V.view;
    UIView *newV = Bye.view;
    V.byeVC = newV;
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    newV.center = CGPointMake(preV.center.x, preV.center.y);
    [window insertSubview:newV belowSubview:preV];
     UIView* it = [preV viewWithTag:(14)];
    it.hidden = false;
    NSLog(@"why?");
    V.Back = Bye.Jump;

    
   
    [UIView animateWithDuration:0.3
                     animations:^{
                         preV.center = CGPointMake(newV.center.x,preV.center.y+Bye.Jump);}
                    ];
    
}
@end
