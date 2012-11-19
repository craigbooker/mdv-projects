//
//  LocInfo.m
//  booker_craig_project3c
//
//  Created by Craig Booker on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LocInfo.h"
#import <MapKit/MapKit.h>

@implementation LocInfo

@synthesize locName, loc;

-(id)initWithName:(NSString*)name location:(CLLocationCoordinate2D)location
{
    if ((self = [super init]))
    {
        locName = name;
        loc = location;
    }
    return self;
}
@end
