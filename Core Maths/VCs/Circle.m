//
//  Circle.m
//  Core Maths
//
//  Created by Arch on 31/3/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, rect);
   CGContextSetFillColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextFillPath(ctx);
}

@end
