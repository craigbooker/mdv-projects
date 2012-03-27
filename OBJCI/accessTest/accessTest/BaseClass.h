//
//  BaseClass.h
//  accessTest
//
//  Created by Craig Booker on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject
{
@private
    int intVar1;
    float floatVar1;
    bool boolVar1;
}

@property int intVar1;
@property float floatVar1;
@property bool boolVar1;

/*-(int)getTemp;
-(void)setTemp:(int)newValue;
*/ 
@end
