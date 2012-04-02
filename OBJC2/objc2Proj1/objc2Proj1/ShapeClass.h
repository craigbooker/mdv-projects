//
//  ShapeClass.h
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShapeClass : NSObject
{
@protected 
    
    int _type;
    int _numSides;
    int _areaVal;
    NSString* _name;
    NSString *textOutput;
}

-(id)initWithDetails:(int)type numSides:(int)numSides name:(NSString*)name areaVal:(int)areaVal;
-(int)GetArea;
-(NSString*)getTextOutput;
@end
