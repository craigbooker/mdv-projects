//
//  DetailViewController.m
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController
@synthesize selectedSensor;
@synthesize sensorLabel = _sensorLabel;
@synthesize pidValueLabel = _pidValueLabel;
@synthesize sensorImage = _sensorImage;
@synthesize sensorDetails = _sensorDetails;
@synthesize xSensor;

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
	self.title = @"Sensor Detail";
    
    UIImageView *sensorImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,32,32)];
	sensorImage.image = self.xSensor.xSensorImage;
	[self.view addSubview:sensorImage];
	[sensorImage release];
	
	UILabel *sensorLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,130,220,30)];
	sensorLabel.text = @"Sensor Name:";
	[self.view addSubview:sensorLabel];
	[sensorLabel release];
    
	UILabel *sensorValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(125,130,220,30)];
	sensorValueLabel.text = self.xSensor.xSensorName;
	[self.view addSubview:sensorValueLabel];
	[sensorValueLabel release];
    
	UILabel *pidLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,170,220,30)];
	pidLabel.text = @"PID Value:";
	[self.view addSubview:pidLabel];
	[pidLabel release];  
    
    UILabel *pidValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(125,170,220,30)];
	pidValueLabel.text = self.xSensor.xPIDValue;
	[self.view addSubview:pidValueLabel];
	[pidValueLabel release];
    
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
    [selectedSensor release];
	[displayText release];
    [super dealloc];
}

@end

