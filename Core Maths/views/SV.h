//
//  SV.h
//  Core Maths
//
//  Created by Arch on 25/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PrimeNavigator;


@interface SV : UIScrollView <UIScrollViewDelegate>{
    CGFloat a;
    NSArray* buttons;
    PrimeNavigator*Z;
}

-(id)initWithX:(PrimeNavigator*)X;
-(void)replace;
@end
