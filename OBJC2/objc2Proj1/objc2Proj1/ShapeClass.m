//
//  ShapeClass.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass
-(int)GetNumSlides;
{
}
-(NSString*)GetName
{
}


-(void)setAttributes: (EShapeType)type name:(NSString*)name shapeNumSides:(int)shapeNumSides
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
