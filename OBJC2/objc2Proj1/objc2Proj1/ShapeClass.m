//
//  ShapeClass.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass
-(id)initWithDetails:(int)type numSides:(int)numSides name:(NSString*)name areaVal:(int)areaVal
{
    _type = type;
    _numSides = numSides;
    _name = name;
    _areaVal = areaVal;
    return self;
}

-(int)GetArea
{
    NSLog(@"Shape %@, AREA %i", _name, _areaVal);
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