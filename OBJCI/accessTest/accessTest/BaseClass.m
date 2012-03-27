//
//  BaseClass.m
//  accessTest
//
//  Created by Craig Booker on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BaseClass.h"

@implementation BaseClass

@synthesize intVar1;
@synthesize floatVar1;
@synthesize boolVar1;

-(id)init
{
    if (self = [super init])
    {
        intVar1 = 1;
        floatVar1 = 1.02f;
        boolVar1 = 0;
    }
    return self;
}
/* Using selfmade getter and setter
-(int)getTemp
{
    return intVar1;
}

-(void)setTemp:(int)newValue;
{
    if ((newValue > 0) && (newValue < 10))
        {
            intVar1 = newValue;
        }
}
 */
@end
