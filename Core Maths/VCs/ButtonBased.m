//
//  ButtonBased.m
//  Core Maths
//
//  Created by Arch on 14/11/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "ButtonBased.h"
#import "RectsG1.h"
#import "RectsG3.h"
#import "PrimeNavigator.h"
@interface ButtonBased ()

@end

@implementation ButtonBased
@synthesize X;

- (void)viewDidLoad
{
    [super viewDidLoad];

//    RectsG1 *view = [[RectsG1 alloc] initWithN:X:self.view.frame.size.width];
//    [self.view addSubview:view];
    [self first];
}


-(void)first{
  
    RectsG3 *view = [[RectsG3 alloc] initWithN:X:self];
    [self.view addSubview:view];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if(X<3){
    ButtonBased* vc = [segue destinationViewController];
    vc.X = X+1;
    }else{
        
        PrimeNavigator* vc = [segue destinationViewController];
        vc.FromSub = false;
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)goNext{
    NSLog(@"nex");
    [self performSegueWithIdentifier:@"go" sender:self];
    
}



@end
