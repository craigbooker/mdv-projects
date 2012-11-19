//
//  LocInfo.h
//  booker_craig_project3c
//
//  Created by Craig Booker on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocInfo : NSObject
{
    CLLocationCoordinate2D loc;
    NSString *locName;
}

-(id)initWithName:(NSString*)name location:(CLLocationCoordinate2D)location;

@property (nonatomic, strong)NSString *locName;
@property (nonatomic, readonly)CLLocationCoordinate2D loc;
@end
