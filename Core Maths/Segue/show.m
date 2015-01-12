//
//  show.m
//  Core Maths
//
//  Created by Arch on 23/3/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "show.h"
#import "Content.h"
#import "PrimeNavigator.h"
@implementation show

-(void)perform {
    Content *x  =self.sourceViewController;
    PrimeNavigator* c = self.destinationViewController;
    UIView *preV = x.view;
    UIView *newV = c.view;
    newV.userInteractionEnabled = false;
    newV.center = CGPointMake(newV.center.x, preV.center.y-140);
    NSLog(@"show");
    [c setForeign:preV];
}


@end
