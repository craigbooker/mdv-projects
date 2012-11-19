//
//  LocationViewController.m
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LocationViewController.h"
#import <MapKit/MapKit.h>
#import "MainViewController.h"
#import "MyTweet.h"
#import "AppDelegate.h"

@interface LocationViewController ()

@end

@implementation LocationViewController
@synthesize listViewMap;
@synthesize locationViewArray;
@synthesize location1, location2, location3, location4, location5, location6, location7, location8, location9, location10;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (MKAnnotationView *)mapView: (MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    MKPinAnnotationView* myPinView = (MKPinAnnotationView*)[self.listViewMap dequeueReusableAnnotationViewWithIdentifier:@"MyTweet"];
    if (!myPinView)
    {
        myPinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"MyCustomPinAnnotation"];
    }
    else 
        myPinView.enabled = YES;
        myPinView.canShowCallout = YES;
        myPinView.pinColor = MKPinAnnotationColorRed;
    myPinView.annotation = annotation;
        
    return myPinView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
}

-(void) viewWillAppear: (BOOL)animated
{
    [super viewWillAppear:TRUE];
    MKCoordinateRegion myNewRegion;
    myNewRegion.center.latitude = 35.47f;
    myNewRegion.center.longitude = -97.51f;
    myNewRegion.span.latitudeDelta = 55.3333;
    myNewRegion.span.longitudeDelta = 40.3333;
    
    self.listViewMap.delegate = self;
    [self.listViewMap setRegion:myNewRegion animated:YES];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate mainArray];
    locationViewArray = appDelegate.mainArray;

    NSLog(@"locationView from appDelegate : %i",appDelegate.mainArray.count);
    NSLog(@"locationView copied array from appDelegate : %i",locationViewArray.count);    
    
    [listViewMap removeAnnotations:listViewMap.annotations]; //Removes all Annotations
    for (int i = 0; locationViewArray.count > i; i++) 
    {
        MyTweet *theLoc = [locationViewArray objectAtIndex:i]; //Loops through and re-adds locations in array
        [listViewMap addAnnotation:theLoc];
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [locationViewArray setArray:nil];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end