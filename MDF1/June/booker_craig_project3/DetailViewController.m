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
@synthesize locationNameLabel = _locationNameLabel;
@synthesize bizLocationNameLabel = _bizLocationNameLabel;
@synthesize locationImage = _locationImage;
@synthesize locationDetails = _locationDetails;
@synthesize xBizLocation;

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
    
    UIImageView *locationImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,32,32)];
	locationImage.image = self.xBizLocation.xLocationImage;
	[self.view addSubview:locationImage];
	[locationImage release];
	
	UILabel *bizLocationLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,130,220,30)];
	bizLocationLabel.text = @"Business Location:";
	[self.view addSubview:bizLocationLabel];
	[bizLocationLabel release];
    
	UILabel *bizLocationValue = [[UILabel alloc] initWithFrame:CGRectMake(125,130,220,30)];
	bizLocationValue.text = self.xBizLocation.xLocation;
	[self.view addSubview:bizLocationValue];
	[bizLocationValue release];
    
	UILabel *bizLocationNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,170,220,30)];
	bizLocationNameLabel.text = @"Business Location Name:";
	[self.view addSubview:bizLocationNameLabel];
	[bizLocationNameLabel release];  
    
    UILabel *bizLocationNameValue = [[UILabel alloc] initWithFrame:CGRectMake(125,170,220,30)];
	bizLocationNameValue.text = self.xBizLocation.xLocationName;
	[self.view addSubview:bizLocationNameValue];
	[bizLocationNameValue release];

	UILabel *bizLocationLatLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,170,220,30)];
	bizLocationLatLabel.text = @"Latitude Value:";
	[self.view addSubview:bizLocationLatLabel];
	[bizLocationLatLabel release];  
    
    UILabel *bizLocationLatValue = [[UILabel alloc] initWithFrame:CGRectMake(125,170,220,30)];
	bizLocationLatValue.text = self.xBizLocation.xLatValue;
	[self.view addSubview:bizLocationLatValue];
	[bizLocationLatValue release];
    
	UILabel *bizLocationLongLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,170,220,30)];
	bizLocationLongLabel.text = @"Longitude Value:";
	[self.view addSubview:bizLocationLongLabel];
	[bizLocationLongLabel release];  
    
    UILabel *bizLocationLongValue = [[UILabel alloc] initWithFrame:CGRectMake(125,170,220,30)];
	bizLocationLongValue.text = self.xBizLocation.xLongValue;
	[self.view addSubview:bizLocationLongValue];
	[bizLocationLongValue release];    
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

