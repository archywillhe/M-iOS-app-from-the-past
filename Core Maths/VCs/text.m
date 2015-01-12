//
//  text.m
//  Core Maths
//
//  Created by Arch on 12/3/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "text.h"


@implementation text

- (id)initWithX:(int)X :(int)C
{
    self = [super initWithFrame:CGRectMake(10,C,X,900)];
    self.backgroundColor = [UIColor clearColor];
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.font = [UIFont fontWithName:@"Aller Light" size:12.5];

    
    if (self) {
        // Initialization code
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
