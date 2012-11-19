//
//  locations.h
//  booker_craig_project3
//
//  Created by Craig Booker on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface BizLocations : NSObject
{
    //NSString *xLocationName;
    //NSString *xLocation;
    NSString *xLatValue;
    NSString *xLongValue;
    //UIImage  *xLocationImage;
    CLLocationCoordinate2D xLoc;
    NSString *xLocationName;

}

-(id)initWithName:(NSString*)name location:(CLLocationCoordinate2D)location;

//@property (nonatomic, strong)NSString *xlocName;
@property (nonatomic, readonly)CLLocationCoordinate2D xLoc;
@property (nonatomic,retain) NSString *xLocationName;
//@property (nonatomic,retain) NSString *xLocation;
@property (nonatomic,retain) NSString *xLatValue;
@property (nonatomic,retain) NSString *xLongValue;
//@property (nonatomic,retain) UIImage *xLocationImage;
 

@end
