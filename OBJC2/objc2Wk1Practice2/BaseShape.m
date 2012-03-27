//
//  BaseShape.m
//  objc2Wk1Practice2
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BaseShape.h"

@interface BaseShape ()


@end

@implementation BaseShape

-(void)setAttributes:(EShapeType)type name:(NSString*)name shapeNumSides:(int)shapeNumSides
{
    numSides = shapeNumSides;
    shapeName = name;
    shapeType = type;
}

-(void)printInfo
{
    NSLog(@"Name=%@ NumberSides=%d", shapeName, numSides);
}

@end