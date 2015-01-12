//
//  UserInitx.h
//  Core Maths
//
//  Created by Arch on 13/11/12.
//  Copyright (c) 2012 complexity of avocados. All rights reserved.
//

#import "ButtonBased.h"


@interface UserInit :ButtonBased {
    Boolean Second;
}
@property (nonatomic) Boolean Second;
-(void) goNext;
-(void) first;
-(void) skip;
@end
