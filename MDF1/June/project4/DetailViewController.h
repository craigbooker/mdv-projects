//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"


@interface DetailViewController : UIViewController {
	
    IBOutlet MKMapView *myMapView;
    MyAnnotation* passAnnoStorage;
    IBOutlet UILabel *locName;
    IBOutlet UILabel *locCoords;

}

@property (assign) IBOutlet MKMapView *myMapView;
- (IBAction)showMyMap:(CLLocationCoordinate2D)coord title:(NSString *)title;

@end
