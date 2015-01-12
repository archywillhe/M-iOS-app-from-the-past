//
//  Technique.m
//  Core Maths
//
//  Created by Arch on 1/1/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "Technique.h"

@interface Technique ()

@end

@implementation Technique


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton* across = (UIButton*) [self.view viewWithTag:99];
    
    [across setImage:[UIImage imageNamed:@"conceptdown"] forState:UIControlStateHighlighted];
	// Do any additional setup after loading the view.
}

@end
