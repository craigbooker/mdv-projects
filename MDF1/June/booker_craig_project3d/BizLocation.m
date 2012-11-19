//
//  BizLocation.m
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BizLocation.h"
#import <MapKit/MapKit.h>

@implementation BizLocation
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
