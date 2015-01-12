//
//  ButtonBased.h
//  Core Maths
//
//  Created by Arch on 14/11/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Colored.h"
@interface ButtonBased : Colored{
    int X;
};
@property (nonatomic) int X;
-(void)first;
-(void)goNext;
@end
