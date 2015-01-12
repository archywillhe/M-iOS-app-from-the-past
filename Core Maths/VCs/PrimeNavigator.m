//
//  PrimeNavigator.m
//  Om
//
//  Created by Arch on 22/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "PrimeNavigator.h"
#import "Contents.h"
#import "SV.h"
#import "XC.h"
#import "Xtra.h"

@interface PrimeNavigator ()
@end

@implementation PrimeNavigator
@synthesize FromSub;
@synthesize byeVC;
@synthesize Current;
@synthesize Switch;
@synthesize Foreign;
@synthesize Back;
@synthesize PositionY;
//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------
-(void)assignation{
    self.view.frame = [[UIApplication sharedApplication]keyWindow].screen.applicationFrame;
    v1 = [self.view viewWithTag:(1)];
    v5 = [self.view viewWithTag:(5)];
    v6 = [self.view viewWithTag:(6)];
    v7 = [self.view viewWithTag:(7)];
    v5.frame = CGRectMake(0, 0, v5.frame.size.width, v5.frame.size.height+20);
    wordtain = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-190)/2, self.view.frame.size.height+110,190,100)];
    wordtain.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ColorX.png"]];
    wordtain.layer.masksToBounds = NO;
    wordtain.hidden = YES;
    wordtain.layer.shadowColor = [UIColor blackColor].CGColor;
     wordtain.layer.shadowRadius = 2.0;
     wordtain.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    wordtain.layer.shadowOpacity = 0.25;
    
      [v5 addSubview:wordtain];
    
    
    
    
    contenz = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 170, 90)];
    contenz.lineBreakMode = NSLineBreakByWordWrapping;
    contenz.numberOfLines = 0;
    contenz.backgroundColor = [UIColor clearColor];
    contenz.font = [UIFont  fontWithName:@"Dekar" size:11.3];
    contenz.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];

    
    [wordtain addSubview:contenz];
    
    
    
    
    
    barc = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 190, 12)];
    barc.backgroundColor = [UIColor colorWithRed:1/255.0 green:1/255.0 blue:1/255.0 alpha:1];
    
   
    [wordtain addSubview: barc];
    
    
    
    
    xz = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-250)/2, self.view.frame.size.height+120,250,50)];
    xz.backgroundColor = [UIColor clearColor];
    xz.hidden= YES;
    
    
    
    [v5 addSubview:xz];

    
    CGRect frame = CGRectMake(0, 0, 250, 50);
    UIView* shadowView = [[UIView alloc] initWithFrame: frame];
    shadowView.layer.shadowColor = [UIColor blackColor].CGColor;
    shadowView.layer.shadowRadius = 3.0;
    shadowView.layer.shadowOffset = CGSizeMake(-1.0, -1.0);
    shadowView.layer.opacity = 1.0;
    shadowView.layer.shadowOpacity = 0.25;
    [xz addSubview: shadowView];
    roundedView = [[UIView alloc] initWithFrame: frame];
    roundedView.layer.cornerRadius = 20;
    roundedView.layer.masksToBounds = YES;
    roundedView.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
    
    [shadowView addSubview: roundedView];
    
    
    
    v99 = [[UIImageView alloc] initWithFrame:CGRectMake(205, 370, 73, 47)];
    v99.alpha = 0;
    
    
    titlec = [[UIImageView alloc] initWithFrame:CGRectMake(5, 295, 315, 148)];
    
    [v5 addSubview:v99];
    [v5 addSubview:titlec];
    titlec.alpha = 0;
    v4 = (UIButton*)[self.view viewWithTag:(4)];
    Current = 1;
    int a = 1;
    int e = 0;
    int q = 13;

    while(a<5){
        UIButton * subtopic = [UIButton buttonWithType:UIButtonTypeCustom];
        subtopic.frame = CGRectMake(e, 0, 100, 90);
        [subtopic addTarget:self
                     action:@selector(nextView:)
           forControlEvents:UIControlEventTouchUpInside];
        subtopic.tag = 90+a;
        UILabel* title = [[UILabel alloc] initWithFrame:CGRectMake(q+e, 70, 80, 26)];
       
        title.backgroundColor = [UIColor clearColor];
        title.font = [UIFont  fontWithName:@"Cabin" size:9.6];
        title.textColor = [UIColor colorWithRed:0.46 green:0.46 blue:0.46 alpha:1];
        title.hidden =true;
        title.tag = 100+a;
    
        title.textAlignment = NSTextAlignmentCenter;
        [v7 addSubview:title];
        
        [v7 addSubview:subtopic];
        
        e += 74;
        q +=0;
        a++;
        
    }
    
    [self buildSec];

    
    
}




-(void)plistinit{
 
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* plistPath = [bundle pathForResource:@"subtopics" ofType:@"plist"];
	thearray = [[NSArray alloc] initWithContentsOfFile:plistPath];
    

   v10 = [[SV alloc] initWithX:self];
   XC* ONtop = [[XC alloc] initWithX:v10 :CGRectMake(0,0,320,180)];
    [ONtop addGestureRecognizer: v10.panGestureRecognizer];
    [v1 addSubview:ONtop];
    [ONtop addSubview:v10];   
}

-(IBAction)BUTTONDowN:(UIButton*)sender{
    int n = 800+Current;
    NSLog(@"%i",n);
    UIView*bg = [v10 viewWithTag:(n)];
    bg.hidden = YES;
    n +=100;
    UIView*bgx = [v10 viewWithTag:(n)];
    bgx.hidden = NO;
    if(Current<4){
        UIView*bg = [v10 viewWithTag:(n+10)];
        bg.hidden = NO;
        n -=100;
        UIView*bgx = [v10 viewWithTag:(n+10)];
        bgx.hidden =YES;
    }
    sender.center = CGPointMake(sender.center.x,81.50);
}

-(IBAction)BUTTONUP:(UIButton*)sender{
    int n = 900+Current;
    UIView*bg = [v10 viewWithTag:(n)];
    bg.hidden = YES;
    n -=100;
    UIView*bgx = [v10 viewWithTag:(n)];
    bgx.hidden = NO;
    if(Current<4){
        UIView*bg = [v10 viewWithTag:(n+10)];
        bg.hidden = NO;
        n +=100;
        UIView*bgx = [v10 viewWithTag:(n+10)];
        bgx.hidden =YES;
    }
    
    sender.center = CGPointMake(sender.center.x,77.50);
}


-(IBAction)BUTTONrealDowN:(UIButton*)sender{
    
    
    
    [UIView beginAnimations:@"bangbang" context:NULL];
    [UIView setAnimationDuration:0.15];
    [UIView setAnimationDelegate:self];
    toSec.alpha = 0;
    [UIView commitAnimations];
    
    
 [self BUTTONDowN:sender];
    thebutton = sender;
    
    self.view.userInteractionEnabled = false;
    NSLog(@"down");
    [self wordsOut];
    NSLog(@"down");
    if(!Switch){
        int a = 1;
        NSLog(@"down");
        NSArray* theone = thearray[Current];
        int x = [theone count];
        NSLog(@"downc%i",Current);
        while(a<x){
            UIButton * subtopic = (UIButton*) [self.view viewWithTag:90+a];
            [subtopic setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ICON%i%i",Current,a]] forState:UIControlStateNormal];
            subtopic.hidden = false;
            UILabel * title = (UILabel*) [self.view viewWithTag:100+a];
        
            if([theone[a] isKindOfClass:[NSString class]]){
                title.text = theone[a];
            }else{
                title.text = theone[a][1];
            }
            CGSize textSize = [[title text] sizeWithFont:[title font]];
            title.frame = CGRectMake(13+a*74-74+(74-textSize.width)/2, 75,textSize.width+2, textSize.height+3);
            
         title.hidden= false;
            a++;
        }
        while(x<5){
            UIButton * subtopic = (UIButton*) [self.view viewWithTag:90+x];
            subtopic.hidden = true;
            
            UILabel * title = (UILabel*) [self.view viewWithTag:100+x];
            title.hidden= true;
       
            x++;
        }
        
        Switch = true;
    }
    [UIView beginAnimations:@"READYTOFADEIN" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    v5.center = CGPointMake(v5.center.x, v5.center.y -120);
    [UIView commitAnimations];
    NSLog(@"animationed");

    
}


//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------
-(void)viewDidLoad{
    [super viewDidLoad];
    [self assignation];
    [self plistinit];
    centerY = self.view.center.y;
    toSec = [[UIButton alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-50, 97, 30)];
    [toSec addTarget:self action:@selector(secondView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toSec];
    toSec.alpha = 0;
    [toSec setImage:[UIImage imageNamed:@"grid.png"] forState:UIControlStateNormal];
    
    
      if(FromSub!=true){
        v1.alpha = 0;
        [self performSelector:@selector(fadeInv10) withObject:nil afterDelay:0.5];
      }else{
          Current = PositionY;
          if(PositionY==1){
              
              PositionY=1860;
              
          }else{
              
              PositionY=186*(PositionY-1);
          }
          v10.contentOffset = CGPointMake(PositionY, 0);
      }
      [self performSelector:@selector(searchSlideIn) withObject:nil afterDelay:0.85];
    [self performSelector:@selector(wordsIn) withObject:nil afterDelay:0.73];
    
}
-(void)showGrid{
    [UIView beginAnimations:@"bang" context:NULL];
    [UIView setAnimationDuration:0.15];
    [UIView setAnimationDelegate:self];
    toSec.alpha = 1;
    [UIView commitAnimations];
}

//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------
-(void)upVIEW{
    self.view.userInteractionEnabled = false;
    [UIView beginAnimations:@"backhere" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    v5.center = CGPointMake(v5.center.x, v5.center.y + 120 );
    [UIView commitAnimations];
}
-(void)fadeInv10{
    self.view.userInteractionEnabled = false;
    [UIView beginAnimations:@"zero" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    [v1 setAlpha:1];
    [UIView commitAnimations];
}
-(void)searchSlideIn{
    UIView* search = [self.view viewWithTag:(4)];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    search.center = CGPointMake(search.center.x, search.center.y+116);
    [UIView commitAnimations];
}
-(void)wordsIn{
    [UIImageView beginAnimations:@"wording" context:NULL];
    [UIImageView setAnimationBeginsFromCurrentState:YES];
    [UIImageView setAnimationDidStopSelector:@selector(donethistaptaper:finished:context:)];
    [UIImageView setAnimationDuration:0.45];
    [UIImageView setAnimationDelegate:self];
    [titlec setImage:[UIImage imageNamed:[NSString stringWithFormat:@"W0%i",Current]]];
    [titlec setAlpha:1];
    [UIImageView commitAnimations];
    [self selectoralisagination];


}
//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------
-(void)wordsOut{
            [UIImageView beginAnimations:@"wordingreversed" context:NULL];
        [UIImageView setAnimationBeginsFromCurrentState:YES];
        [UIImageView setAnimationDidStopSelector:@selector(donethistaptaper:finished:context:)];
        [UIImageView setAnimationDuration:0.2];
        [UIImageView setAnimationDelegate:self];
        v99.center = CGPointMake(v99.center.x, 370);
        [UIImageView commitAnimations];
    

}
//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------

-(IBAction)FADEOUTANDMOVEbaCK:(UIButton*)sender{
    
    self.view.userInteractionEnabled = false;
    UIView* v2 = [self.view viewWithTag:(2)];
    v2.hidden = true;
    UIView* it = [self.view viewWithTag:(20+Current)];
    it.hidden = false;
    it = [self.view viewWithTag:(Current+40)];
    it.center = CGPointMake(it.center.x,it.center.y-5);
    
    [UIView beginAnimations:@"NOWMOVEBACK" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    [v6 setAlpha:0];
    [UIView commitAnimations];
    [self gone:false];
    
    [self BUTTONUP:thebutton];
    
}
-(IBAction)nextView:(UIButton*)sender{
    UILabel * z = (UILabel*) [self.view viewWithTag:(10+sender.tag)];
    universal = z.text;
    NSLog(@"%@",universal);
    [self gone:true];
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"goon"]) {
        Contents *dv = (Contents *)segue.destinationViewController;
        dv.topic = [NSString stringWithFormat:@"%i%@",Current,universal];
        dv.number = Current;
        NSLog(@"%i%@",Current,universal);
    }
}
//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------

-(IBAction)searChOUT:(UIButton*)sender{
    [UIView beginAnimations:@"searchOUT" context:NULL];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    
    self.view.center = CGPointMake(self.view.center.x, centerY);
    [UIView commitAnimations];
}

//------------------ divison, oops! complier, YOU CAN'T SEE ME~ ------------------
//------------------
//------------------

-(void)donethistaptaper: (NSString *)ID finished:(BOOL)done context:(void *)context
{
    if([ID isEqualToString:@"wording"]){
        
        if(titlec.alpha ==1){
            [v99 setAlpha:1];
         [UIImageView setAnimationBeginsFromCurrentState:YES];
        
        
        [UIImageView beginAnimations:@"donexz" context:NULL];
        [UIImageView setAnimationBeginsFromCurrentState:YES];
        [UIImageView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
        [UIImageView setAnimationDuration:0.2];
        [UIImageView setAnimationDelegate:self];
        v99.center = CGPointMake(v99.center.x, 413);
        [UIView commitAnimations];
        
        }
        
    }else if([ID isEqualToString:@"wordingreversed"]){
        [v99 setAlpha:0];
        
        [UIImageView beginAnimations:@"wordlala" context:NULL];
        [UIImageView setAnimationBeginsFromCurrentState:YES];
        [UIImageView setAnimationDidStopSelector:@selector(donethistaptaper:finished:context:)];
        [UIImageView setAnimationDuration:0.35];
        [UIImageView setAnimationDelegate:self];
        [titlec setAlpha:0];
        [titlec setImage:[UIImage imageNamed:[NSString stringWithFormat:@"W0%i",Current]]];
        
        [UIImageView commitAnimations];
        
        
    }
    
    
}


- (void)animationFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context
{
    if([animationID isEqualToString:@"READYTOFADEIN"]){
        
    v6.hidden=false;
    [UIView beginAnimations:@"TRIPO" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    [v6 setAlpha:1];
    [UIView commitAnimations];
        
    }else if([animationID isEqualToString:@"zero"]){
        [UIView beginAnimations:@"bang" context:NULL];
        [UIView setAnimationDuration:0.15];
        [UIView setAnimationDelegate:self];
        toSec.alpha = 1;
        [UIView commitAnimations];

    }else if([animationID isEqualToString:@"TRIPO"]) {
             
             [UIView beginAnimations:@"xcat" context:NULL];
             [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
             [UIView setAnimationDuration:0.13];
             [UIView setAnimationDelegate:self];
             xz.center = CGPointMake(xz.center.x, xz.center.y -10);
             [UIView commitAnimations];
             
    }else if([animationID isEqualToString:@"xcat"]){
        wordtain.hidden = NO;
        xz.hidden= NO;
        int v = [thearray[Current][0][0] intValue];
        int b = [thearray[Current][0][1] intValue];
        int n = [thearray[Current][0][2] intValue];
        NSString *o = thearray[Current][0][3];
        barc.backgroundColor = [UIColor colorWithRed:v/255.0 green:b/255.0 blue:n/255.0 alpha:1];
        contenz.text = o;
        [contenz sizeToFit];
        
        NSLog(@"%i,%i,%i",v,b,n);
        [UIView beginAnimations:@"ccat" context:NULL];
        [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
        [UIView setAnimationDuration:0.26];
        [UIView setAnimationDelegate:self];
        wordtain.center = CGPointMake(wordtain.center.x, wordtain.center.y -90);
        [UIView commitAnimations];
       
        
    }else if([animationID isEqualToString:@"wcat"]){
        wordtain.hidden = YES;
        xz.hidden= YES;
        contenz.frame = CGRectMake(10, 20, 170, 90);
        
    }else if([animationID isEqualToString:@"seguecat"]){
        wordtain.hidden = YES;
        xz.hidden= YES; 
        [self performSelector:@selector(segue) withObject:self afterDelay:0.15];
        
    }else if([animationID isEqualToString:@"NOWMOVEBACK"]) {

         v6.hidden=true;
        [UIView beginAnimations:@"movedBack" context:NULL];
          [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
        [UIView setAnimationDuration:0.27];
        [UIView setAnimationDelegate:self];
        v5.center = CGPointMake(v5.center.x, v5.center.y +120);
        [UIView commitAnimations];
       
    }else{
         self.view.userInteractionEnabled = true;
        
        if([animationID isEqualToString:@"FLOATS"]){
            [self wordsIn];
        }else if([animationID isEqualToString:@"movedBack"]){
            [self wordsIn];
            [self showGrid];
            

        
            
    }else if([animationID isEqualToString:@"searchOUT"]){
            [byeVC removeFromSuperview];
            
            UIView* it = [self.view viewWithTag:(14)];
            
            it.hidden =true;
            
          
    }else if([animationID isEqualToString:@"backhere"]){
        NSLog(@"wowowowowowo");
        [self showGrid];
        UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
        [window insertSubview:self.view aboveSubview:Foreign];
        [Foreign removeFromSuperview];
       window.rootViewController = self;
            v5.center = CGPointMake(v5.center.x, v5.center.y -120);
    }
        
        }
}


-(void)gone:(Boolean)a{
    NSString* b;
     if(a==true){
      b = @"seguecat";
     }else{
      b = @"wcat";  
     }
    
    
    [UIView beginAnimations:@"xman" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.17];
    [UIView setAnimationDelegate:self];
    xz.center = CGPointMake(xz.center.x, xz.center.y +10);
    [UIView commitAnimations];
    
    [UIView beginAnimations:b context:NULL];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.2];
    [UIView setAnimationDelegate:self];
    wordtain.center = CGPointMake(wordtain.center.x, wordtain.center.y +90);
    [UIView commitAnimations];
    
}

-(void)segue{
    [self performSegueWithIdentifier:@"goon" sender:self];
}
//---- the end of Lalala

-(void)selectoralisagination{

    switch(Current){
        case 1:
 [v99 setImage:[UIImage imageNamed:@"level1"]];
        break;
        case 2:
            [v99 setImage:[UIImage imageNamed:@"level12"]];
            break;
        case 3:
        case 4:
            [v99 setImage:[UIImage imageNamed:@"level0"]];
            break;
        case 5:
            [v99 setImage:[UIImage imageNamed:@"level2"]];
             break;
             case 6:
            [v99 setImage:[UIImage imageNamed:@"level234"]];
            break;
        case 7:
        case 8:
        case 9:
            [v99 setImage:[UIImage imageNamed:@"level34"]];
            break;
        case 10:
            [v99 setImage:[UIImage imageNamed:@"level4"]];
    }


}



-(IBAction)secondView:(UIButton*)sender{
    
    v123.contentOffset = CGPointMake(0, 45);
    
    [UIView beginAnimations:@"viewchanged1" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(presentSecView)];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    sender.alpha = 0;
    v10.alpha = 0;
    v99.alpha = 0;
    titlec.alpha = 0;
    [UIView commitAnimations];
    UIView* search = [self.view viewWithTag:(4)];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    search.center = CGPointMake(search.center.x, search.center.y-116);
    [UIView commitAnimations];
    
}

-(void)presentSecView{
    toSec.hidden = YES;
    v10.hidden = YES;
    v99.hidden = YES;
    titlec.hidden = YES;
    v123.hidden = NO;
    [UIView beginAnimations:@"donne" context:NULL];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    v123.alpha = 1;
    [UIView commitAnimations];
    
    

}

-(IBAction)firstView:(UIButton*)sender{
    
    [UIView beginAnimations:@"viewchanged1" context:NULL];
    [UIView setAnimationDidStopSelector:@selector(presentFirstView)];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    v123.alpha = 0;
    [UIView commitAnimations];
    
}

-(void)presentFirstView{
    v123.hidden = YES;
    toSec.hidden = NO;
    v10.hidden = NO;
    v99.hidden = NO;
    titlec.hidden = NO;
    [UIView beginAnimations:@"viewchanged1" context:NULL];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    toSec.alpha = 1;
    v10.alpha = 1;
    v99.alpha = 1;
    titlec.alpha = 1;
    [UIView commitAnimations];
    UIView* search = [self.view viewWithTag:(4)];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationDelegate:self];
    search.center = CGPointMake(search.center.x, search.center.y+116);
    [UIView commitAnimations];
    
}



-(void)buildSec{
    int width = self.view.frame.size.width;
    int z = 1;
    int a = 0;
    int b = 0;
    
    CGFloat y = 65;
    CGFloat x = 10;
    CGFloat w = (width-20)/3-8;
    CGFloat h = w*31/32;
    
    v123 = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, width, self.view.frame.size.height)];
    v123.contentOffset = CGPointMake(0, 45);
    v123.contentSize = CGSizeMake(width, self.view.frame.size.height+80);
    v123.showsVerticalScrollIndicator = NO;

    
    
    
    UISearchBar *textField = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 10, width, 30)];
    [textField setBackgroundImage:[UIImage new]];
    [textField setTranslucent:YES];
    textField.placeholder = @"Search M.";
    textField.autocorrectionType = UITextAutocorrectionTypeYes;
    textField.keyboardType = UIKeyboardTypeDefault;
    [v123 addSubview:textField];
    
    
    UIButton* explode = [[UIButton alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height+45, 111, 30)];
    [explode addTarget:self action:@selector(firstView:) forControlEvents:UIControlEventTouchUpInside];
    [v123 addSubview:explode];
    [explode setImage:[UIImage imageNamed:@"classi.png"] forState:UIControlStateNormal];
    
    
    
    while (a<4){
        
        while(b<3){
            CGRect d = CGRectMake(x,y,w,h);
            
            
            UIImageView* e = [[UIImageView alloc] initWithFrame:d];
            [e setImage:[UIImage imageNamed:@"ICON990.png"]];
            [v123 addSubview:e];
            
            UIImageView* c = [[UIImageView alloc] initWithFrame:d];
            [c setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ICON0%i.png",z]]];
            [v123 addSubview:c];
            x+=12+w;
            z++;
            b++;
        }
        x = 10;
        b = 0;
        y+=20+h;
        
        a++;
    }
        
    [self.view addSubview:v123];
    v123.hidden = YES;
    v123.alpha = 0;
}

-(IBAction)secondViewBClicked:(UIButton*)sender{
    
    int nextview = sender.tag -250;

    int a;
    
    if (nextview<0) {
        a = 300;
    
    }else if(nextview>0){
      
        a = 301;
        
    }else{
        
        a = 302;
    }
    
    UIView* c = [self.view viewWithTag:(a)];
    [UIView beginAnimations:@"showit"  context:NULL];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    c.center =  CGPointMake(c.center.x,c.center.y+30);
    [UIView commitAnimations];
    
}


-(void)talker{
    
    NSLog(@"woww i talked!");
    
    
}

@end
