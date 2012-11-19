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
@synthesize xLocationName;
@synthesize xLoc;
@synthesize xLatValue;
@synthesize xLongValue;
//@synthesize xLocationImage;
//@synthesize locName, xloc;

-(id)initWithName:(NSString*)name location:(CLLocationCoordinate2D)location
{
    if ((self = [super init]))
    {
        xLocationName = name;
        xLoc = location;
    }
    return self;
}
@end

/*-(void)dealloc
 {
 [xLocationName release]; 
 [xLocation release]; 
 [xLatValue release];
 [xLongValue release];
 [xLocationImage release];
 [super dealloc];
 }
*/