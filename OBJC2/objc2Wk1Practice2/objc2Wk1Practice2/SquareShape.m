//
//  SquareShape.m
//  objc2Wk1Practice2
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareShape.h"
#import "BaseShape.h"

@implementation SquareShape

-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:SHAPETYPE_SQUARE name:@"Square" shapeNumSides:4];
    }
    return self;
}
@end
