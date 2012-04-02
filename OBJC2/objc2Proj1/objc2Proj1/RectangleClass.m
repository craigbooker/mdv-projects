//
//  RectangleClass.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleClass.h"
#import "ShapeClass.h"

@implementation RectangleClass
-(id)initWithDetails: (int)numSides name:(NSString*)name
{
    if (self = [super init])
    {
        [self initWithDetails:2 numSides:4 name:@"Rectangle" areaVal:0]; 
        
    }
    return self;
}
-(int)GetArea
{
    _areaVal = (9 * 3);
    return _areaVal;
}

-(NSString*)getTextOutput
{
    textOutput = [NSString stringWithFormat:@"Shape %@ Area %i", _name, _areaVal];
    if (textOutput != nil)
    {
        return textOutput;    
    }
    return nil;
    
} 
@end
