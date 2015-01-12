//
//  RectsG1.m
//  Core Maths
//
//  Created by Arch on 22/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "RectsG1.h"
#import <QuartzCore/QuartzCore.h>


@implementation RectsG1

- (id)initWithN:(int) n : (int) w
{
    self = [super initWithFrame:CGRectMake(w-30-223, 35, 223, 69)];
    if (self) {
          CALayer* imgX =[CALayer layer];
            UIImage* img = [UIImage imageNamed: [NSString stringWithFormat:@"welcome%i.png",n]];
        imgX.contents = (id)img.CGImage;   
        imgX.frame = CGRectMake(self.bounds.origin.x,self.bounds.origin.y,223,69);
        [self.layer insertSublayer:imgX atIndex:3];
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
