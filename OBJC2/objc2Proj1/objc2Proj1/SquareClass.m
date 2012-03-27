//
//  SquareClass.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"
#import "ShapeClass.h"

@implementation SquareClass
-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:SHAPETYPE_SQUARE name:@"Square" shapeNumSides:4];
    }
    return self;
}
@end
