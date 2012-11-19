//
//  locations.m
//  booker_craig_project3
//
//  Created by Craig Booker on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BizLocations.h"

@implementation BizLocations
@synthesize xBizName;
@synthesize xLocation;
@synthesize xLatValue;
@synthesize xLongValue;
-(void)dealloc
{
    [xBizName release]; 
    [xLocation release]; 
    [xLatValue release];
    [xLongValue release];
	[super dealloc];
}
@end