//
//  MyMapAnnotation.m
//  mapKit
//
//  Created by Craig Booker on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyMapAnnotation.h"

@implementation MyMapAnnotation
@synthesize title, coordinate;

-(id) initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}
@end
