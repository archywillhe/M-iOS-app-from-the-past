//
//  X.m
//  Core Maths
//
//  Created by Arch on 26/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "X.h"
#import <QuartzCore/QuartzCore.h>
@implementation X

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    CALayer* lay0 =[CALayer layer];
    lay0.backgroundColor = [UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:0.5].CGColor;
    lay0.frame = CGRectMake(0,0,320, 145);
    [self.layer addSublayer:lay0];
    
    CALayer* lay1 =[CALayer layer];
    lay1.backgroundColor = [UIColor colorWithRed:249/255.0 green:251/255.0 blue:212/255.0 alpha:0.5].CGColor;
    lay1.frame = CGRectMake(0,145,320, 180*5/30);
    [self.layer addSublayer:lay1];
    
    CALayer* lay2 =[CALayer layer];
   lay2.backgroundColor = [UIColor colorWithRed:237/255.0 green:238/255.0 blue:180/255.0 alpha:0.5].CGColor;
    lay2.frame = CGRectMake(0,145+180*5/30,320, 180*5/30);
    [self.layer addSublayer:lay2];
    CALayer* lay3 =[CALayer layer];
    lay3.backgroundColor = [UIColor colorWithRed:245/255.0 green:246/255.0 blue:140/255.0 alpha:0.5].CGColor;
    lay3.frame = CGRectMake(0,145+180*10/30,320, 180*5/30);
    [self.layer addSublayer:lay3];
    CALayer* lay4 =[CALayer layer];
    lay4.backgroundColor = [UIColor colorWithRed:235/255.0 green:237/255.0 blue:115/255.0 alpha:0.5].CGColor;
    lay4.frame = CGRectMake(0,145+180*15/30,320, 180*5/30);
    [self.layer addSublayer:lay4];
    CALayer* lay5 =[CALayer layer];
    lay5.backgroundColor = [UIColor colorWithRed:233/255.0 green:199/255.0 blue:96/255.0 alpha:0.5].CGColor;
    lay5.frame = CGRectMake(0,145+180*20/30,320, 180*5/30);
    [self.layer addSublayer:lay5];
    CALayer* lay6 =[CALayer layer];
    lay6.backgroundColor = [UIColor colorWithRed:237/255.0 green:224/255.0 blue:115/255.0 alpha:0.5].CGColor;
    lay6.frame = CGRectMake(0,145+180*25/30,320, 180*5/30);
    [self.layer addSublayer:lay6];
    CALayer* lay7 =[CALayer layer];
    lay7.backgroundColor = [UIColor colorWithRed:23/255.0 green:54/255.0 blue:209/255.0 alpha:0.2].CGColor;
    lay7.frame = CGRectMake(0,145+180,320,300);
    [self.layer addSublayer:lay7];

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
