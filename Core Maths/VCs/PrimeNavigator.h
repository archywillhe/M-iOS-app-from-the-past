//
//  PrimeNavigator.h
//  Om
//
//  Created by Arch on 22/10/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Colored.h"

@class SV;

@interface PrimeNavigator : Colored{
    int Current;
    UIView* v1;
    UIView* v5;
    UIView* v6;
    UIView* v7;
    UIView* xz;
    UIScrollView* v123;
    UIButton* toSec;
    
    
    SV* v10;
    
    
   UIImageView* v99;
    
    
    UIButton* v4;
    Boolean FromSub;
    UIImageView* titlec;
    NSArray* thearray;
    Boolean Switch;
    
    UIView*barc;
    UIView*wordtain;
    
    UIView*Foreign;
    UIWindow*Grand;
    
    
    int* wordsARRAY;
    
    
    UILabel* contenz;
    UIView* roundedView;
    UIButton* thebutton;
    
   NSString* universal;
    
    CGFloat centerY;
}



-(void)assignation;
-(void)plistinit;

-(void)upVIEW;
-(void)fadeInv10;
-(void)searchSlideIn;


-(void)wordsOut;
-(void)wordsIn;

-(IBAction)BUTTONDowN:(UIButton*)sender;
-(IBAction)BUTTONUP:(UIButton*)sender;
-(IBAction)BUTTONrealDowN:(UIButton*)sender;
-(IBAction)FADEOUTANDMOVEbaCK:(id)sender;
-(IBAction)nextView:(id)sender;


-(IBAction)searChOUT:(id)sender;



-(void)gone:(Boolean)a;
-(void)segue;


-(void)buildSec;
-(IBAction)secondView:(UIButton*)sender;
-(IBAction)secondViewBClicked:(UIButton*)sender;
-(IBAction)firstView:(UIButton*)sender;
-(void)presentSecView;
-(void)presentFirstView;
-(void)showGrid;

-(void)talker;
    

@property(nonatomic)int Current;
@property(nonatomic)UIView* byeVC;
@property(nonatomic)Boolean FromSub;
@property(nonatomic) Boolean Switch;
@property(nonatomic) UIView*Foreign;

@property(nonatomic) int Back;
@property(nonatomic) int PositionY;

@end
