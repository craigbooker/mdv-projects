//
//  ThirdViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"
#import <MapKit/MapKit.h>
#import "AppDelegate.h"
#import "BizLocations.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Third", @"Third");
        self.tabBarItem.image = [UIImage imageNamed:@"third"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
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
    if (theMapView != nil)
    {
        [theMapView removeAnnotations:theMapView.annotations];
        
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        if (delegate != nil)
        {
            NSArray *locArray = delegate.locArray;
            for (int i=0; i<[locArray count]; i++)
            {
                MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
                if (annotation != nil)
                {
                    BizLocations *info = [locArray objectAtIndex:i];
                    annotation.title = info.locName;
                    annotation.coordinate = info.loc;
                    
                    [theMapView addAnnotation:annotation];
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
