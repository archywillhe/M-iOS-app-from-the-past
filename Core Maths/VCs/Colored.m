//
//  Colored.m
//  Core Maths
//
//  Created by Arch on 18/12/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "Colored.h"
@interface Colored ()

@end

@implementation Colored


-(void)viewDidLoad{
    [super viewDidLoad];
    //self.view.center = CGPointMake(self.view.center.x,self.view.center.y+20);
    //UIView* bar = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 20)];
    //bar.backgroundColor = [UIColor whiteColor];
    //[self.view insertSubview:bar atIndex:999];
    UIImageView* layer = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"Layer1.png"]];
    CGRect it = [[UIScreen mainScreen] bounds];
    
    NSLog(@"%f",it.size.height);
    layer.frame = CGRectMake(0, 0, it.size.width, it.size.height+100);
    
    UIView* x = [self.view viewWithTag:(5)];
    x.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Color1.jpg"]];
    [x insertSubview:layer atIndex:(0)];
    
}



@end
