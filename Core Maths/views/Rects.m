//
//  Rects.m
//  Core Maths
//
//  Created by Arch on 22/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "Rects.h"

#import <QuartzCore/QuartzCore.h>

@implementation Rects
- (void) changed:(UIButton*) a{
    a.backgroundColor = [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1];
}


- (void) changedback:(UIButton*) a{
    a.backgroundColor = [UIColor clearColor];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
  

        CAGradientLayer *gradient = [CAGradientLayer layer];
        
        gradient.frame = self.bounds;
        
        gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:148/255.0 green:148/255.0 blue:148/255.0 alpha:0.3] CGColor], (id)[[UIColor colorWithRed:112/255.0 green:112/255.0 blue:112/255.0 alpha:0.45] CGColor], nil];
        
        CALayer *white = [CALayer layer];
        
        
        white.frame = CGRectMake(self.bounds.origin.x+1,self.bounds.origin.y+1,self.bounds.size.width-2,self.bounds.size.height-2);
        
        white.backgroundColor = [UIColor whiteColor].CGColor;
        
        white.cornerRadius = 10;
        gradient.cornerRadius = 10;
        white.masksToBounds = YES;
        gradient.masksToBounds = YES;
        
        [self.layer insertSublayer:gradient atIndex:0];
        [self.layer insertSublayer:white atIndex:1];

    }
    
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
