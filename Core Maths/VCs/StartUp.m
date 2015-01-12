//
//  StartUp.m
//  Om
//
//  Created by Arch on 19/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "StartUp.h"
#import "PrimeNavigator.h"
#import <QuartzCore/QuartzCore.h>


@interface StartUp (){
}

@end

@implementation StartUp

- (void)nextView{
    
    self.view.center = CGPointMake(self.view.center.x,self.view.center.y+20);
    UIView* bar = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 20)];
    [self.view insertSubview:bar atIndex:999];
    if(TRUE){
        [self performSegueWithIdentifier:@"init" sender:self];
    }else{
        [self performSegueWithIdentifier:@"goon" sender:self];
    }
    }

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.center = CGPointMake(self.view.center.x,self.view.center.y+20);
    UIView* bar = [[UIView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 20)];
    [self.view insertSubview:bar atIndex:999];

    
    UIView* loadercontainer = [[UIView alloc] initWithFrame:CGRectMake(13, 283, self.view.frame.size.width-26, 18)];
    loadercontainer.clipsToBounds = YES;
    loadercontainer.layer.cornerRadius = 8;
    loadercontainer.alpha = 0.6F;
    loadercontainer.backgroundColor = [UIColor blackColor];
    [self.view addSubview:loadercontainer];
    UIView* loader = [[UIView alloc] initWithFrame:CGRectMake(15, 285, 10, 14)];
    loader.clipsToBounds = YES;
    loader.layer.cornerRadius = 7;
    loader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"colorZ.png"]];;
    [self.view addSubview:loader];
    
    
    [UIView beginAnimations:@"showit"  context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:3.1];
    [UIView setAnimationDelegate:self];
    loader.frame = CGRectMake(15, 285, self.view.frame.size.width-30, 14);
    [UIView commitAnimations];
    
    
    [self performSelector:@selector(nextView) withObject:nil afterDelay:3.1];

    
    
}


@end
