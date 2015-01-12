//
//  RectsG3.m
//  Core Maths
//
//  Created by Arch on 23/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "RectsG3.h"
#import <QuartzCore/QuartzCore.h>
@implementation RectsG3

- (id)initWithN:(int) z : (id) w
{
   self = [super initWithFrame:CGRectMake(30, 70, 261, 309.6)];
    
    if (self) {
        UIImage* img = [UIImage imageNamed: [NSString stringWithFormat:@"selection%i2.png",z] ];
        CALayer* imgX =[CALayer layer];
        imgX.contents = (id)img.CGImage;
        imgX.frame = CGRectMake(self.bounds.origin.x,self.bounds.origin.y+self.bounds.size.height*0.25,self.bounds.size.width,self.bounds.size.height*0.5);
        [self.layer insertSublayer:imgX atIndex:3];
        UIButton* imageLayer;
        int a = 0;
        CALayer *line = [CALayer layer];
        line.frame = CGRectMake(self.bounds.origin.x+1,self.bounds.origin.y+self.bounds.size.height*0.5*(1+0.5),self.bounds.size.width-2,1);
        line.backgroundColor = [UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1].CGColor;
        
        [self.layer insertSublayer:line atIndex:5];
        
        while(a<2){
            UIImage* img = [UIImage imageNamed: [NSString stringWithFormat:@"selection%i%i.png",z,a]];
            imageLayer = [UIButton buttonWithType:UIButtonTypeCustom];
            
            imageLayer.frame = CGRectMake(self.bounds.origin.x,self.bounds.origin.y+self.bounds.size.height*0.75*a,self.bounds.size.width,self.bounds.size.height*0.25);
            
            [imageLayer setImage:img forState:UIControlStateNormal];
            
           
             [self addSubview:imageLayer];
            a++;
        }
        
        [imageLayer addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchUpOutside];
        [imageLayer addTarget:self action:@selector(changed:) forControlEvents:UIControlStateHighlighted];
        [imageLayer addTarget:self action:@selector(changedback:) forControlEvents:UIControlEventTouchDragOutside ];
        [imageLayer addTarget:w action:@selector(goNext) forControlEvents:UIControlEventTouchUpInside];

        UIBezierPath *xmaskPath;
        xmaskPath = [UIBezierPath bezierPathWithRoundedRect:imageLayer.bounds byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight) cornerRadii:CGSizeMake(10.0, 10.0)];
        CAShapeLayer *xmaskLayer = [[CAShapeLayer alloc] init];
        xmaskLayer.frame = self.bounds;
        xmaskLayer.path = xmaskPath.CGPath;
        imageLayer.layer.mask = xmaskLayer;
        
        
        
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
