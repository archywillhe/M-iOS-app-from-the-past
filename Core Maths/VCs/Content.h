//
//  Content.h
//  Core Maths
//
//  Created by Arch on 1/1/13.
//  Copyright (c) 2013 complexity of avocados. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contents.h"
#import "onlyOne.h"

@class onlyOne;

@interface Content : Contents{
    UIView* v5;
    onlyOne* vx;
    UIView* v6;
    UIView* v7;
    UIView* v8;
    UIView* v9;
    UIView* v10;
    NSMutableArray* titles;
}

-(void)assignation;
-(void)buildviews;
-(void)formating;

@end
