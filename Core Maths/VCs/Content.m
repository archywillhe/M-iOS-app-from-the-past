//
//  Content.m
//  Core Maths
//
//  Created by Arch on 1/1/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "Content.h"
#import <QuartzCore/QuartzCore.h>
#import "text.h"
#import "hides.h"
#import "bol.h"
#import "Circle.h"

@interface Content ()

@end

@implementation Content

-(void)assignation
{
    CGRect it = [[UIScreen mainScreen] bounds];
    CGRect xzc = CGRectMake(20, 12, it.size.width-40, 355);
    v6 = [[UIView alloc ] initWithFrame:xzc];
    v7 = [[UIView alloc ] initWithFrame:xzc];
    v8 = [[UIView alloc ] initWithFrame:xzc];
    v9 = [[UIView alloc ] initWithFrame:xzc];
//    v10 = [[UIView alloc ] initWithFrame:xzc];
    [self.view addSubview:v6];
    [self.view addSubview:v7];
    [self.view addSubview:v8];
    [self.view addSubview:v9];
//    [self.view addSubview:v10];

}

-(void)formating{ 
     CGRect it = [[UIScreen mainScreen] bounds];
    titles = [[NSMutableArray alloc]init];
    int e = (it.size.width-40-274)/2;
     NSArray* knowledge = [super intext];
    int c;
    c = 10;
    for(NSString*a in knowledge){
        if([a hasPrefix:@":"]){
            text* b = [[text alloc] initWithX:it.size.width-60 :c];
            b.text = [a substringFromIndex:1];
            [b sizeToFit];
            c+=b.frame.size.height;
            [vx addSubview:b];
            NSLog(@"%@",b.text);
            
        }else if([a hasPrefix:@"<b>"]){
    
            bol* b = [[bol alloc] initWithX:it.size.width-20 :c];
            b.text = [a substringFromIndex:3];
             [b sizeToFit];
            c+=b.frame.size.height;
           
            [vx addSubview:b];
            
        }else if([a hasPrefix:@"<h>"]){
            hides* b = [[hides alloc] initWithX:it.size.width-20 :c];
            b.text = [a substringFromIndex:3];
             [b sizeToFit];
            c+=b.frame.size.height;
           
            [vx addSubview:b];
            
        }else if([a hasPrefix:@"<img>"]){
            NSString* x = [a substringFromIndex:5];
            UIImageView* a = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",x]]];
            a.frame = CGRectMake(e, c, 274, 150);
            c+=150;
             [vx addSubview:a];
            
        }else if([a hasPrefix:@"<maths>"]){
            NSString* x = [a substringFromIndex:7];
            UIImageView* a = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",x]]];
            a.frame = CGRectMake(e, c, 274, 80);
            c+=80;
            [vx addSubview:a];
        }else if([a hasPrefix:@"<n>"]){
            c+=20;
     
        }else if([a hasPrefix:@"<title>"]){
            text* b = [[text alloc] initWithX:it.size.width-60 :c];
         
            b.font = [UIFont fontWithName:@"Cabin" size:13];
             NSString* x = [a substringFromIndex:7];
           
            b.text = x;
           
            [b sizeToFit];
            c+=b.frame.size.height+7;
            [vx addSubview:b];
            [titles addObject:x];
            
        }
        
    }
    vx.contentSize = CGSizeMake(it.size.width-40, c);
    


}




-(void)buildviews{
    CGRect it = [[UIScreen mainScreen] bounds];
    CGRect xzc = CGRectMake(0, 0, it.size.width-40, 355);
    UIView *v = [[UIView alloc ] initWithFrame:xzc];
    [v.layer setCornerRadius:10.0f];
    [v.layer setShadowColor:[UIColor blackColor].CGColor];
    [v.layer setShadowOpacity:0.9];
    [v.layer setShadowRadius:5.0];
    [v.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
    NSLog(@"test");
    [v9 addSubview:v];
    v.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:239/255.0];
    v5 =[[UIView alloc] initWithFrame:xzc];
    xzc = CGRectMake(0, 22, it.size.width, 335);
    UIScrollView* vb = [[UIScrollView alloc] initWithFrame:xzc];
    vb.backgroundColor = [UIColor clearColor];
    NSLog(@"test");
    vx = [[onlyOne alloc ] initWithX:CGRectMake(0, 0, it.size.width-40, 355):vb];
    
    
   
    NSLog(@"test");
    vx.pagingEnabled = NO;
    vx.contentOffset = CGPointMake(0, 1);
    vx.contentSize = CGSizeMake(it.size.width-40,9000);
    vx.scrollEnabled = YES;
    vx.clipsToBounds = NO;
    vx.bounces = YES;
    vx.alwaysBounceVertical = YES;

    [vx setShowsVerticalScrollIndicator:YES];
    [v9 addSubview:v5];
    v5.clipsToBounds= YES;
    [v5 addSubview:vx];
    //somehow adding vb's Pangesture cannot be used to scroll vx
    //[v5 addSubview:vb];
    
//TO COMPILER: THIS SHALL NOT BE SEEN!!!
//(the blindspot yet to be seen)
//---------------------

    [self formating];
    
    
//
//    int a =1;
//    CGRect b;
//   int f = [titles count];
//    int t = self.view.frame.size.height;
//    while(a<2){
//        b = CGRectMake(20,t-75, 60, 60);
        
//        Circle *icon = [[Circle alloc ] initWithFrame:b];
//        icon.backgroundColor = [UIColor clearColor];
//        [v9 addSubview:icon];
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        [button addTarget:self
//                  action:@selector(nextView:)
         
//         forControlEvents:UIControlEventTouchUpInside];
//        button.frame = b;
//        button.backgroundColor = [UIColor clearColor];
//       [v9 addSubview:button];
//        MSLabel *x = [[MSLabel alloc] initWithFrame:b];
      //  x.lineHeight = 12.5;
      //  x.text = titles[a];
    //    x.backgroundColor = [UIColor clearColor];
  //      x.font = [UIFont  fontWithName:@"Noticia Text" size:11];
 //       x.textAlignment = NSTextAlignmentCenter;
 //       x.lineBreakMode = NSLineBreakByWordWrapping;
//        x.numberOfLines = 0;
//        button.hidden = YES;
//        x.hidden = YES;
//        icon.hidden = YES;
//    [v9 addSubview:x];
//        a++;
//    }
}





- (void)viewDidLoad
{
    
    UIButton* across = (UIButton*) [self.view viewWithTag:99];
    
    [across setImage:[UIImage imageNamed:@"techdown"] forState:UIControlStateHighlighted];
    
    NSLog(@"aax");
    [super viewDidLoad];
    [self assignation];
    if(0==1){
        v9.hidden=true;
        v9.alpha=0;
        v8.hidden=false;
    }
    
    [self buildviews];
}

//TO COMPILER: THIS SHALL NOT TO KNOWN!
//(the unknown mystery yet to be known)
//------------------

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
}


@end
