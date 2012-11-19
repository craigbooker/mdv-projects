//
//  ThirdViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
    NSArray *myMapAnnotations;
}


@end
