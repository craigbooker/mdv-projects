//
//  DetailViewController.m
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController
@synthesize selectedLocation;
@synthesize locationName = _locationName;
@synthesize locationCoordValue = _locationCoordValue;

@synthesize locationDetails = _locationDetails;
@synthesize xLocation;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    //editMode = FALSE;    
	self.title = @"Location Detail";
    
	UILabel *locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,130,220,30)];
	locationLabel.text = @"Sensor Name:";
	[self.view addSubview:locationLabel];
	[locationLabel release];
    
	UILabel *locationValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(125,130,220,30)];
	locationValueLabel.text = self.xLocation.locName;
	[self.view addSubview:locationValueLabel];
	[locationValueLabel release];
    
	UILabel *locationCoordLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,170,220,30)];
	locationCoordLabel.text = @"Coord Value:";
	[self.view addSubview:locationCoordLabel];
	[locationCoordLabel release];  
    
    UILabel *locationCoordValue = [[UILabel alloc] initWithFrame:CGRectMake(125,170,220,30)];
	NSString *tempString = [[NSString alloc] initWithFormat:@"%g", self.xLocation.loc];
    locationCoordValue.text = tempString;
	[self.view addSubview:locationCoordValue];
	[locationCoordValue release];
    
    /*
     self.sensorLabel.text = [self.sensorDetails objectAtIndex:0];
     self.pidValueLabel.text = [self.sensorDetails objectAtIndex:1];
     self.sensorImage.image = [UIImage imageNamed:[self.sensorDetails objectAtIndex:2]];
     */
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
/*
 - (void)viewDidLoad {
 [super viewDidLoad];
 
 displayText.text = selectedSensor;
 
 self.navigationItem.title = @"Sensor Details";
 }
 
 */
/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [selectedLocation release];
	[displayText release];
    [super dealloc];
}

@end

