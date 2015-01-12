//
//  RectsG2.m
//  Core Maths
//
//  Created by Arch on 22/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "RectsG2.h"
#import <QuartzCore/QuartzCore.h>
@implementation RectsG2


- (id)initWithN:(int) z : (id) w
{
    self = [super initWithFrame:CGRectMake(30, 70, 261, 309.6)];
    if (self) {
        UIImage* img = [UIImage imageNamed: [NSString stringWithFormat:@"selection%i0.png",z] ];
        
        UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
        myButton.frame = CGRectMake(self.bounds.origin.x,self.bounds.origin.y,self.bounds.size.width,self.bounds.size.height*0.25);
        
        [myButton setImage:img forState:UIControlStateNormal];
        
        
        
        
        [myButton addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchUpOutside ];
        [myButton addTarget:self action:@selector(changed:) forControlEvents:UIControlStateHighlighted];
        [myButton addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchDragOutside ];
        [myButton addTarget:w action:@selector(goNext) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        UIBezierPath *maskPath;
        maskPath = [UIBezierPath bezierPathWithRoundedRect:myButton.bounds byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(10.0, 10.0)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.bounds;
        maskLayer.path = maskPath.CGPath;
        myButton.layer.mask = maskLayer;
        [self addSubview:myButton];
        
        
         int a = 1;
        while(a<4){
            UIImage* img = [UIImage imageNamed: [NSString stringWithFormat:@"selection%i%i.png",z,a]];
            myButton = [UIButton buttonWithType:UIButtonTypeCustom];
            
            myButton.frame = CGRectMake(self.bounds.origin.x,self.bounds.origin.y+self.bounds.size.height*0.25*a,self.bounds.size.width,self.bounds.size.height*0.25);

            [myButton setImage:img forState:UIControlStateNormal];
            [myButton addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchUpOutside ];
            [myButton addTarget:self action:@selector(changed:) forControlEvents:UIControlStateHighlighted];
            [myButton addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchDragOutside ];
            [myButton addTarget:w action:@selector(goNext) forControlEvents:UIControlEventTouchUpInside];
            
            
            
            
            [self addSubview:myButton];

            CALayer *line = [CALayer layer];
        line.frame = CGRectMake(self.bounds.origin.x+1,self.bounds.origin.y+self.bounds.size.height*0.25*a,self.bounds.size.width-2,1);
            
            
            
        line.backgroundColor = [UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1].CGColor;
            
            [self.layer insertSublayer:line atIndex:5];
            
            a++;
        }
        
        UIBezierPath *xmaskPath;
        xmaskPath = [UIBezierPath bezierPathWithRoundedRect:myButton.bounds byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight) cornerRadii:CGSizeMake(10.0, 10.0)];
        CAShapeLayer *xmaskLayer = [[CAShapeLayer alloc] init];
        xmaskLayer.frame = self.bounds;
        xmaskLayer.path = xmaskPath.CGPath;
        myButton.layer.mask = xmaskLayer;
        
        
     
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
