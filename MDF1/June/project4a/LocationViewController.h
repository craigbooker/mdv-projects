//
//  LocationViewController.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyTweet.h"

@interface LocationViewController : UIViewController <MKMapViewDelegate>
{
    MyTweet *annoStorage;
    MyTweet *location1;
    MyTweet *location2;
    MyTweet *location3;
    MyTweet *location4;    
    MyTweet *location5;
    MyTweet *location6;
    MyTweet *location7;
    MyTweet *location8;
    MyTweet *location9;
    MyTweet *location10;
    IBOutlet MKMapView *listViewMap;
    NSMutableArray *locationViewArray;    
}

@property (nonatomic, retain) MyTweet *location1;
@property (nonatomic, retain) MyTweet *location2;
@property (nonatomic, retain) MyTweet *location3;
@property (nonatomic, retain) MyTweet *location4;    
@property (nonatomic, retain) MyTweet *location5;
@property (nonatomic, retain) MyTweet *location6;
@property (nonatomic, retain) MyTweet *location7;
@property (nonatomic, retain) MyTweet *location8;
@property (nonatomic, retain) MyTweet *location9;
@property (nonatomic, retain) MyTweet *location10;
@property (assign) IBOutlet MKMapView *listViewMap;
@property (nonatomic, retain) NSMutableArray *locationViewArray;

@end