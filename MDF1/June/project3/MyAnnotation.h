//
//  MyMapAnnotation.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation>
{
    NSString *title;
    NSString *location;
    CLLocationCoordinate2D coordinate;
    
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end
