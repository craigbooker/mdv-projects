//
//  SecondViewController.m
//  mapTest
//
//  Created by wendy jones on 6/12/12.
//  Copyright (c) 2012 Kitty Code, LLC. All rights reserved.
//

#import "SecondViewController.h"
#import <MapKit/MapKit.h>
#import "AppDelegate.h"
#import "LocInfo.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
                    LocInfo *info = [locArray objectAtIndex:i];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
