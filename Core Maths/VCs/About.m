//
//  About.m
//  Core Maths
//
//  Created by Arch on 29/3/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "About.h"
#import <QuartzCore/QuartzCore.h>
#import "MSLabel.h"

@interface About ()

@end

@implementation About


- (void)viewDidLoad
{
    [super viewDidLoad];
    Jump = 170;
    UIView* about = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-270)/2,30, 270, 110)];
    about.backgroundColor = [UIColor whiteColor];
    about.layer.cornerRadius = 2.0;
    about.layer.masksToBounds = YES;
    NSLog(@"jumped");
    [self.view addSubview:about];
    
    UIImageView *left = [[UIImageView alloc] initWithFrame:CGRectMake(8, 5, 80, 80)];
    left.image = [UIImage imageNamed:@"icon.png"];
    [about addSubview:left];
    UILabel *right = [[UILabel alloc] initWithFrame:CGRectMake(98, 0, 270-110+5, 90)];
    right.backgroundColor = [UIColor clearColor];
    right.numberOfLines = 0;
    right.lineBreakMode = NSLineBreakByWordWrapping;
    right.font = [UIFont fontWithName:@"Aller Light" size:10];
    [about addSubview:right];
    right.text = @"M. [Maths Edition I] is an educational iPhone app speically designed for Singapore's students to score A1 in A&E-maths examinations with ease.";
    
    UIView* lineA=[[UIView alloc] initWithFrame:CGRectMake(0, 80, 270, 1)];
    lineA.backgroundColor = [UIColor colorWithRed:250.0/255.0 green:250.0/255.0 blue:250.0/255.0 alpha:1];   
    [about addSubview:lineA];
    UIView* lineB=[[UIView alloc] initWithFrame:CGRectMake(0, 81, 270, 1)];
    lineB.backgroundColor =  [UIColor colorWithRed:226.0/255.0 green:226.0/255.0 blue:226.0/255.0 alpha:1];
    [about addSubview:lineB];
    UIView* lineC=[[UIView alloc] initWithFrame:CGRectMake(270/2, 82, 1, 110-82)];
    lineC.backgroundColor = [UIColor colorWithRed:226.0/255.0 green:226.0/255.0 blue:226.0/255.0 alpha:1];
    [about addSubview:lineC];
    UIView* lineD=[[UIView alloc] initWithFrame:CGRectMake(270/2+1, 82, 1, 110-82)];
    lineD.backgroundColor =  [UIColor colorWithRed:250.0/255.0 green:250.0/255.0 blue:250.0/255.0 alpha:1];
    [about addSubview:lineD];
    
    
    UILabel* more = [[UILabel alloc] initWithFrame:CGRectMake(0, 82, 270/2, 110-82)];
    more.text = @"Read More";
    more.backgroundColor = [UIColor clearColor];
    more.font = [UIFont fontWithName:@"Noticia Text" size:13];
    more.textColor =[UIColor colorWithRed:39/255.0 green:82/255.0 blue:192/255.0 alpha:1];
    more.textAlignment = NSTextAlignmentCenter;
    [about addSubview:more];
    
    UILabel* archy = [[UILabel alloc] initWithFrame:CGRectMake(270/2, 82, 270/2, 110-82)];
    archy.text = @"About The Founder";
    archy.font = [UIFont fontWithName:@"Noticia Text" size:13];
    archy.backgroundColor = [UIColor clearColor];
    archy.textColor = [UIColor colorWithRed:39/255.0 green:82/255.0 blue:192/255.0 alpha:1];
    archy.textAlignment = NSTextAlignmentCenter;
    [about addSubview:archy];
    
    above = [[UIView alloc]  initWithFrame:CGRectMake(0,0, self.view.frame.size.width, 300)];
 
    [above setBackgroundColor:[UIColor colorWithPatternImage: [UIImage imageNamed:@"Color2.jpg"]]];
    [self.view addSubview:above];
    [UIView beginAnimations:@"reverseFade"  context:NULL];
    [UIView setAnimationDidStopSelector:@selector(done)];
    [UIView setAnimationDuration:0.7];
    [UIView setAnimationDelegate:self];
    above.layer.opacity = 0;
    [UIView commitAnimations];

    
    
	// Do any additional setup after loading the view.
}

- (void)done{
    
    above.hidden = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
