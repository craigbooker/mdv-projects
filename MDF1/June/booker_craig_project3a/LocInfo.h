//
//  LocInfo.h
//  mapTest
//
//  Created by Craig Booker.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
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
