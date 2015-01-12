//
//  UserInitx.m
//  Core Maths
//
//  Created by Arch on 13/11/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "UserInit.h"
#import "RectsG2.h"
#import <QuartzCore/QuartzCore.h>
#import "MSLabel.h"

@interface UserInit ()

@end

@implementation UserInit
@synthesize Second;



- (void)viewDidLoad
{
     [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [super viewDidLoad];

    UIView* wordtainc;
    CGRect frame = CGRectMake((self.view.frame.size.width-190)/2, -200,190,165);
    
    wordtainc = [[UIView alloc] initWithFrame:frame];
    wordtainc.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ColorX.png"]];
    wordtainc.layer.masksToBounds = NO;
    wordtainc.layer.shadowColor = [UIColor blackColor].CGColor;
    wordtainc.layer.shadowRadius = 2.0;
    wordtainc.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    wordtainc.layer.shadowOpacity = 0.25;
    [self.view addSubview:wordtainc];
    [UIView beginAnimations:@"ccat" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    wordtainc.center = CGPointMake(wordtainc.center.x, wordtainc.center.y +80);
    [UIView commitAnimations];
    
    MSLabel*words;
    NSString* a;
    words = [[MSLabel alloc] initWithFrame:CGRectMake(0,115,190,50)];
    words.backgroundColor = [UIColor clearColor];
     words.font = [UIFont  fontWithName:@"Noticia Text" size:16];
    if (X==1){
        a = @"You are...";

    }else{
        a = @"What's your goal?";
      
    }
    
    words.text = a;
    words.textAlignment = NSTextAlignmentCenter;
    
    [wordtainc addSubview:words];


    
    
     	// Do any additional setup after loading the view.
}
-(void)first{
    NSLog(@"%i",X);
    UIView *view = [[RectsG2 alloc] initWithN:X:self];
    [self.view addSubview:view];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
    int a;
    NSString *b;
    if(!Second){
        a = 1;
        b = @"level";
            UserInit *vc = [segue destinationViewController];
            [vc setSecond:true];
            
        }else{
        a = 3;
        b = @"goal";
        
        }
    [[NSUserDefaults standardUserDefaults] setInteger:a forKey:b];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)goNext{
    NSLog(@"nex");
    [self performSegueWithIdentifier:@"goon" sender:self];
    
}


- (void)animationFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context
{
    
    if([animationID isEqualToString:@"ccat"]){
        CGRect ax = CGRectMake((self.view.frame.size.width-190)/2, self.view.frame.size.height+30,190,150);

    UIView* wordtain;
    wordtain = [[UIView alloc] initWithFrame:ax];
    wordtain.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ColorX.png"]];
    wordtain.layer.masksToBounds = NO;
    wordtain.layer.shadowColor = [UIColor blackColor].CGColor;
    wordtain.layer.shadowRadius = 2.0;
    wordtain.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    wordtain.layer.shadowOpacity = 0.25;
        
        
        MSLabel*words;
        NSString* a;
        words = [[MSLabel alloc] initWithFrame:CGRectMake(0,7,190,26)];
        
            a = @"Tap here to skip.";
            words.font = [UIFont  fontWithName:@"Noticia Text" size:12];
              words.backgroundColor = [UIColor clearColor];
        words.text = a;
        words.textAlignment = NSTextAlignmentCenter;
        
        [wordtain addSubview:words];
        
        
        
        [self.view addSubview:wordtain];
        
        
        UIButton* trigger;
        trigger = [[UIButton alloc] initWithFrame:CGRectMake(0,0, 190, 40)];
        trigger.backgroundColor = [UIColor clearColor];
        
        trigger.showsTouchWhenHighlighted = NO;
        trigger.highlighted = NO;
        trigger.adjustsImageWhenHighlighted = NO;
        [trigger addTarget:self action:@selector(skip) forControlEvents:UIControlEventTouchUpInside];
        [wordtain addSubview:trigger];

        
    [UIView beginAnimations:@"doggy" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    wordtain.center = CGPointMake(wordtain.center.x, wordtain.center.y -85);
    [UIView commitAnimations];
        
        
    }
}



-(void)skip{
    NSLog(@"xct");
    [self performSegueWithIdentifier:@"goon" sender:self];
    
}


@end
