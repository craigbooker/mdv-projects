//
//  BizLocation.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface BizLocation : NSObject 
{
    
    NSString *title;
    CLLocationCoordinate2D coordinate;
    NSString *xBizName;
    NSString *xLocation;
    NSString *xLatValue;
    NSString *xLongValue;

    
}

-(id)initWithName:(NSString*)text coord:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, retain) NSString *xBizName;
@property (nonatomic, retain) NSString *xLocation;
@property (nonatomic, retain) NSString *xLatValue;
@property (nonatomic, retain) NSString *xLongValue;



@end