//
//  LocInfo.m
//  mapTest
//
//  Created by Craig Booker.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
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
