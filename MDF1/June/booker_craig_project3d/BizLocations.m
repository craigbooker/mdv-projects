//
//  locations.m
//  booker_craig_project3
//
//  Created by Craig Booker on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BizLocations.h"
#import <MapKit/MapKit.h>

@implementation BizLocations
@synthesize title, coordinate;
@synthesize xBizName;
@synthesize xLocation;
@synthesize xLatValue;
@synthesize xLongValue;


-(id)initWithName:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}
@end