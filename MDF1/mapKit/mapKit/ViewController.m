//
//  ViewController.m
//  mapKit
//
//  Created by Craig Booker on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "MyMapAnnotation.h"
#import "MyAnnotationView.h"

@implementation ViewController

- (void)viewDidLoad
{
    
    MKCoordinateSpan span;
    span.latitudeDelta=29.0f;
    span.longitudeDelta=28.25f;
    
    CLLocationCoordinate2D location;
    location.latitude = 35.464783f;
    location.longitude = -97.47976f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;

    CLLocationCoordinate2D columbusLocation;
    columbusLocation.latitude = 39.9859095f;
    columbusLocation.longitude = -82.985029f;
    
    CLLocationCoordinate2D okcLocation;
    okcLocation.latitude = 35.464783f;
    okcLocation.longitude = -97.47976f;
    
    MyMapAnnotation *annotation = [[MyMapAnnotation alloc] initWithTitle:@"Oklahoma City, Oklahoma" coord:okcLocation];
    MyMapAnnotation *annotation2 = [[MyMapAnnotation alloc] initWithTitle:@"Columbus, Ohio" coord:columbusLocation];
    myMapAnnotations = [[NSArray alloc] initWithObjects:annotation, annotation2, nil]; 
    
    if (myMapAnnotations != nil)
    {
        [mapView addAnnotations:myMapAnnotations];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(MKAnnotationView *)mapView: (MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    /*MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
     */
    MyAnnotationView *annView = [[MyAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    
    annView.canShowCallout = YES;
    annView.calloutOffset = CGPointMake(-5, 5);
    
    return annView;
}

-(IBAction)onClick:(id)sender
{
    [mapView selectAnnotation:[myMapAnnotations objectAtIndex:1] animated:true];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



@end
