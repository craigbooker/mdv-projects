//
//  TriangleClass.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"
#import "ShapeClass.h"

@implementation TriangleClass
-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:SHAPETYPE_TRIANGLE name:@"Triangle" shapeNumSides:3];
    }
    return self;
}
@end
