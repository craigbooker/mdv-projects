//
//  ShapeClass.h
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    SHAPETYPE_SQUARE=0,
    SHAPETYPE_TRIANGLE
} EShapeType;

@interface ShapeClass : NSObject
{
@protected 
    EShapeType shapeType;
    int numSides;
    NSString* shapeName;
}
-(int)GetNumSlides;
-(NSString*)GetName;


-(void)setAttributes: (EShapeType)type name:(NSString*)name shapeNumSides:(int)shapeNumSides;
-(void)printInfo;


@end

