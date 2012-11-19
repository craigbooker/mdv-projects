//
//  ThirdViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "AppDelegate.h"
#import "ViewController.h"
#import "MyMapAnnotation.h"
#import "BizLocation.h"

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"third"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    MKCoordinateSpan span;
    span.latitudeDelta = 80.0f;
    span.longitudeDelta = 80.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 28.55f;
    location.longitude = -81.33f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    CLLocationCoordinate2D alabamaLocation;
    alabamaLocation.latitude = 32.35f;
    alabamaLocation.longitude = -86.28f;

    CLLocationCoordinate2D alaskaLocation;
    alaskaLocation.latitude = 58.30f;
    alaskaLocation.longitude = -116.222777f;  
    
    MyMapAnnotation *annotation1 = [[MyMapAnnotation alloc] initWithTitle:@"Shorty's Car Care" coord:alabamaLocation]; 
    MyMapAnnotation *annotation2 = [[MyMapAnnotation alloc] initWithTitle:@"Fine Touch Repair" coord:alaskaLocation]; 


    myMapAnnotations = [[NSArray alloc] initWithObjects:annotation1, annotation2, nil];
    if (myMapAnnotations != nil)
    {
        [mapView addAnnotations:myMapAnnotations];
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}    
    
     


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewDidAppear:(BOOL)animated
{
    if (mapView != nil)
    {
        [mapView removeAnnotations:mapView.annotations];
        
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        if (delegate != nil)
        {
            NSArray *locArray = delegate.locArray;
            for (int i=0; i<[locArray count]; i++)
            {
                MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
                if (annotation != nil)
                {
                    BizLocation *info = [locArray objectAtIndex:i];
                    annotation.title = info.title;
                    annotation.coordinate = info.coordinate;
                    
                    [mapView addAnnotation:annotation];
                }
            }
        }
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
