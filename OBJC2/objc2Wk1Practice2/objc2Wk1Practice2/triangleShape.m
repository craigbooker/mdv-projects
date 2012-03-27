//
//  TriangleShape.m
//  objc2Wk1Practice2
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleShape.h"
#import "BaseShape.h"

@implementation TriangleShape

-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:SHAPETYPE_TRIANGLE name:@"Triangle" shapeNumSides:3];
    }
    return self;
}
@end
