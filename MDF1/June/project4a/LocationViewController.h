//
//  LocationViewController.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface LocationViewController : UIViewController <MKMapViewDelegate>
{
    MyAnnotation *annoStorage;
    MyAnnotation *location1;
    MyAnnotation *location2;
    MyAnnotation *location3;
    MyAnnotation *location4;    
    MyAnnotation *location5;
    MyAnnotation *location6;
    MyAnnotation *location7;
    MyAnnotation *location8;
    MyAnnotation *location9;
    MyAnnotation *location10;
    IBOutlet MKMapView *listViewMap;
    NSMutableArray *locationViewArray;    
}

@property (nonatomic, retain) MyAnnotation *location1;
@property (nonatomic, retain) MyAnnotation *location2;
@property (nonatomic, retain) MyAnnotation *location3;
@property (nonatomic, retain) MyAnnotation *location4;    
@property (nonatomic, retain) MyAnnotation *location5;
@property (nonatomic, retain) MyAnnotation *location6;
@property (nonatomic, retain) MyAnnotation *location7;
@property (nonatomic, retain) MyAnnotation *location8;
@property (nonatomic, retain) MyAnnotation *location9;
@property (nonatomic, retain) MyAnnotation *location10;
@property (assign) IBOutlet MKMapView *listViewMap;
@property (nonatomic, retain) NSMutableArray *locationViewArray;

@end