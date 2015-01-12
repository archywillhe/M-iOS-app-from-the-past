//
//  SV.m
//  Core Maths
//
//  Created by Arch on 25/2/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import "SV.h"
#import <QuartzCore/QuartzCore.h>
#import "PrimeNavigator.h"

@implementation SV

- (id)initWithX:(PrimeNavigator*)X
{
    self = [super initWithFrame:CGRectMake(67,0,186,180)];
    if (self) {
        
        Z = X;
        self.pagingEnabled = YES;
        self.contentOffset = CGPointMake(1860, 0);
        self.contentSize = CGSizeMake(208*12+56*2+67, 180);
        self.scrollEnabled = YES;
        self.clipsToBounds = NO;
        [self setShowsHorizontalScrollIndicator:NO];
        
        
        NSString* lvl = [[NSUserDefaults standardUserDefaults] valueForKey:@"level"];
        
        NSString* gl = [[NSUserDefaults standardUserDefaults] valueForKey:@"goal"];
        
       
        NSBundle* bundle = [NSBundle mainBundle];
        NSString* plistPath = [bundle pathForResource:@"subtopics" ofType:@"plist"];
        NSArray* thearray = [[NSArray alloc] initWithContentsOfFile:plistPath];
        buttons = [[NSArray alloc]  initWithObjects:[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],[UIButton buttonWithType:UIButtonTypeCustom],nil];
      
        int b = 77-67;
        int z = 1;
        int c = 1;
        for(UIButton* w in buttons){
             
            [w setFrame:CGRectMake(b, 0, 160, 155)];
            
            [w setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ICON0%i", z]] forState:UIControlStateNormal];
            
            [w addTarget:X action:@selector(BUTTONUP:) forControlEvents:UIControlEventTouchUpOutside | UIControlStateNormal | UIControlEventTouchDragOutside |UIControlEventTouchDragExit |UIControlEventTouchCancel];
        [w addTarget:X action:@selector(BUTTONDowN:) forControlEvents:UIControlStateSelected | UIControlStateHighlighted];
            w.showsTouchWhenHighlighted = NO;
            w.highlighted = NO;
            w.adjustsImageWhenHighlighted = NO;
         [w addTarget:X action:@selector(BUTTONrealDowN:) forControlEvents:UIControlEventTouchUpInside];
            
            
            
            
            
            UIImageView* bg;
            
            bg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ICON990.png"]];
            bg.frame = w.frame;
            
            bg.tag = 800+c;
            UIImageView* bgX;
            
            bgX = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ICON999.png"]];
            bgX.frame = w.frame;
            bgX.tag = 900+c;
            bgX.hidden =YES;
            NSLog(@"BG30%i",bg.tag);
            [self addSubview:bg];
             [self addSubview:bgX];
            [self addSubview:w];
            
            b += 20+166;
            z++;
            c++;
            if(z>10){
                z = 1;
            }
        
        
        }
        
       
        
        

    }
    self.delegate = self;
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



-(void)scrollViewWillBeginDragging:(UIScrollView *)x{
        [Z wordsOut];
    NSLog(@"byebye");
    self.userInteractionEnabled = NO;
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
     a = [self contentOffset].x;
    if(a<186){
        [self convertPoint:CGPointMake(a+1860, 0) fromView:self];
        [self setContentOffset:CGPointMake(a+1860, 0)];
    }else if(a>2046){
        [self setContentOffset:CGPointMake(a-1860, 0)];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
      a = [self contentOffset].x;
     NSLog(@"%f",a);
    a = a>1674?a-1674:a+186;
    int x = a/186;
    if(Z.Current!=x){
         NSLog(@"%i",x);
        [Z setSwitch:false];
        [Z setCurrent:x];
    }
        [Z wordsIn];
    self.userInteractionEnabled = YES;
}


-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if( decelerate==NO){
    self.userInteractionEnabled = YES;
    }
}

- (void)replace{
    int b = [self contentOffset].x;
    int c = b%186;
    NSLog(@"%i",c);
    if(c>64){
        CGRect bounds = self.bounds;
        
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds"];
        animation.duration = 0.3;
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        animation.fromValue = [NSValue valueWithCGRect:bounds];
        
        bounds.origin.x -= c-186;
        
        animation.toValue = [NSValue valueWithCGRect:bounds];
        
        [self.layer addAnimation:animation forKey:@"bounds"];
        
        self.bounds = bounds;
        
        
    }else if(c!=0){
        CGRect bounds = self.bounds;
        
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds"];
        animation.duration = 0.3;
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        animation.fromValue = [NSValue valueWithCGRect:bounds];
        
        bounds.origin.x -= c;
        
        animation.toValue = [NSValue valueWithCGRect:bounds];
        
        [self.layer addAnimation:animation forKey:@"bounds"];
        
        self.bounds = bounds;
    }
}





@end
