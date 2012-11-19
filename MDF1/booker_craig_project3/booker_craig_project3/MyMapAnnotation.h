//
//  MyMapAnnotation.h
//  mapKit
//
//  Created by Craig Booker on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mapkit/Mapkit.h>

@interface MyMapAnnotation : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D coordinate;
    
}

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;


@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
