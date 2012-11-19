//
//  Sensors.m
//  booker_craig_project1
//
//  Created by Craig Booker on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sensors.h"

@implementation Sensors
@synthesize xSensorName, xPIDValue, xSensorImage;

-(void)dealloc
{
    [xSensorName release]; 
    [xPIDValue release]; 
    [xSensorImage release];
	[super dealloc];
}
@end
