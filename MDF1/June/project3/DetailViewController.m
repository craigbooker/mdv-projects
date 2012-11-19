//
//  DetailViewController.m
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import "DetailViewController.h"
#import <MapKit/MapKit.h>
#import "MainViewController.h"
#import "MyAnnotation.h"
#import "AppDelegate.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize myMapView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)showMyMap:(CLLocationCoordinate2D)coord title:(NSString *)title
{
    NSString *lCoords = [[NSString alloc] initWithFormat:@"Longitude: %f, Latittude: %f", coord.longitude, coord.latitude];
    locName.text = title;
    locCoords.text = lCoords;
    
    
    MKCoordinateRegion myRegion;
    myRegion.center.latitude = coord.latitude;
    myRegion.center.longitude = coord.longitude;    
    myRegion.span.latitudeDelta = 0.0333;
    myRegion.span.longitudeDelta = 0.0333;    
    self.myMapView.delegate = (id)self;
    self.title = title;
    [self.myMapView setRegion:myRegion animated:YES];
    
    CLLocationCoordinate2D myLocation;
    myLocation.latitude = coord.latitude;
    myLocation.longitude = coord.longitude; 
    
    passAnnoStorage = [[MyAnnotation alloc] init];
    passAnnoStorage.coordinate=myLocation;
    passAnnoStorage.title=title;
    passAnnoStorage.location=@"Oklahoma City, OK";
    
    [myMapView addAnnotation:passAnnoStorage];
    
}
- (MKAnnotationView *)mapView: (MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
if ([annotation isKindOfClass:[MKUserLocation class]])
    return nil;
    
    MKPinAnnotationView* myPinView = (MKPinAnnotationView*)[self.myMapView dequeueReusableAnnotationViewWithIdentifier:@"MyAnnotation"];
    if (!myPinView)
    {
        myPinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"MyCustomPinAnnotation"];
    }
    else {
        myPinView.enabled = YES;
        myPinView.canShowCallout = YES;
        myPinView.image=[UIImage imageNamed:@"pin.png"];
        
        
    }
    return myPinView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


@end

