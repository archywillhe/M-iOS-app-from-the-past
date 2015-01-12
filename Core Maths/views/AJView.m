//
//  AJView.m
//  Core Maths
//
//  Created by Arch on 29/7/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "AJView.h"

@implementation AJView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    self.center = CGPointMake(self.center.x,self.center.y+20);
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
