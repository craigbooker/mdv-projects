//
//  BaseShape.h
//  objc2Wk1Practice2
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

@interface BaseShape : NSObject
{
@protected
    EShapeType shapeType;
    NSString *shapeName;
    int numSides;    
}
-(void)setAttributes: (EShapeType)type name:(NSString*)name shapeNumSides:(int)shapeNumSides;
-(void)printInfo;

@end
