//
//  Search.m
//  Core Maths
//
//  Created by Arch on 29/3/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "Search.h"
#import <QuartzCore/QuartzCore.h>

@interface Search ()

@end

@implementation Search


- (void)viewDidLoad
{
    [super viewDidLoad];
    Jump = 120;
    CGRect frame = CGRectMake(0, 5, self.view.frame.size.width,30);
    UISearchBar *textField = [[UISearchBar alloc] initWithFrame:frame];
    [textField setBackgroundImage:[UIImage imageNamed:@"Color2.jpg"]];
    textField.placeholder = @"Search M.";
    textField.backgroundColor = [UIColor whiteColor];
    textField.autocorrectionType = UITextAutocorrectionTypeYes;
    textField.keyboardType = UIKeyboardTypeDefault;
    [textField becomeFirstResponder];
    [self.view addSubview:textField];
        
    frame = CGRectMake((self.view.frame.size.width-200)/2,45, 200, 60);
    UILabel* archy = [[UILabel alloc] initWithFrame:frame];
    archy.backgroundColor = [UIColor whiteColor];
    archy.layer.cornerRadius = 2.0;
    archy.layer.masksToBounds = YES;
    archy.text = @"Type in Keyword to Search";
    archy.font = [UIFont fontWithName:@"Noticia Text" size:14];
    archy.textColor = [UIColor colorWithRed:167/255.0 green:18/255.0 blue:18/255.0 alpha:1];
    archy.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:archy];
    
    
    above = [[UIView alloc]  initWithFrame:CGRectMake(0,45, self.view.frame.size.width, 60)];
    
    [above setBackgroundColor:[UIColor colorWithPatternImage: [UIImage imageNamed:@"Color2.jpg"]]];
    [self.view addSubview:above];
    [UIView beginAnimations:@"reverseFade"  context:NULL];
    [UIView setAnimationDidStopSelector:@selector(done)];
    [UIView setAnimationDuration:0.7];
    [UIView setAnimationDelegate:self];
    above.layer.opacity = 0;
    [UIView commitAnimations];

    
}

-(void)done{
    above.hidden = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
