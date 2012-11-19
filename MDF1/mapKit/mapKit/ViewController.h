//
//  ViewController.h
//  mapKit
//
//  Created by Craig Booker on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    NSArray *myMapAnnotations;
}

-(IBAction)onClick:(id)sender;
@end
