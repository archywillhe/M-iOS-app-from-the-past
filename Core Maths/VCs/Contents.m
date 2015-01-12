//
//  Contents.m
//  Core Maths
//
//  Created by Arch on 21/12/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "Contents.h"
#import "PrimeNavigator.h"
//#import "CON.h"

@interface Contents ()

@end

@implementation Contents
@synthesize topic;
@synthesize number;

-(NSArray*)intext{
    NSString* path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",topic]
                                                     ofType:@"txt"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSArray *array = [content componentsSeparatedByString: @"\n"];
    NSLog(@"%@",topic);
     NSLog(@"%@",array[0]);
         NSLog(@"arrayed");
    return  array;
}



- (void)viewDidLoad
{

    [super viewDidLoad];
	UIImage *shadowImage = [UIImage imageNamed:@"Shadow1.png"];
    UIImageView *shadowIV = [[UIImageView alloc] initWithImage:shadowImage];
    UIView* v7 = [self.view viewWithTag:(7)] ;
    [v7 addSubview:shadowIV];
    CGRect it = [[UIScreen mainScreen] bounds];
    shadowIV.frame = CGRectMake(0, 0, it.size.width, 50);
      v7 = [self.view viewWithTag:(7)] ;
    v7.frame = CGRectMake(0,0, self.view.frame.size.width,self.view.frame.size.height);
    NSLog(@"here??");
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

if ([segue.identifier isEqualToString:@"changed"]) {
    Contents *done = (Contents *)segue.destinationViewController;
    
    done.topic = topic;
    done.number = number;
    
}else if ([segue.identifier isEqualToString:@"show"]) {
        PrimeNavigator *dv = (PrimeNavigator *)segue.destinationViewController;
        dv.FromSub = YES;
        dv.PositionY = number;
    }
}





@end
