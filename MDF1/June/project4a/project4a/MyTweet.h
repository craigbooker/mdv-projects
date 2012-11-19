//
//  MyTweet.h
//  project4a
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyTweet : NSObject<MKAnnotation>
{
    NSString *title;
    NSString *location; 
    CLLocationCoordinate2D coordinate;    
}

@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *dateCreated;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end