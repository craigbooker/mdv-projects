//
//  RootViewController.m
//  booker_craig_project1
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SensorViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "Sensors.h"

@implementation RootViewController
@synthesize sensorController;
@synthesize sensorNameList; 
@synthesize pidValueList; 
@synthesize sensorImages;
@synthesize sensorDetails;
@synthesize xArray;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad]; 
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.sensorNameList = [[NSMutableArray alloc] initWithObjects:
                           @"Absolute Throttle Position", 
                           @"Engine RPM", 
                           @"Vehicle Speed", 
                           @"Calculated Load Value", 
                           @"Timing Advance (Cyl#1)", 
                           @"Intake Manifold Pressure", 
                           @"Air Flow Rate (MAF Sensor)", 
                           @"Fuel System Status", 
                           @"Short Term Fuel Trim (Bank 1)", 
                           @"Long Term Fuel Trim (Bank 1)", 
                           @"Short Term Fuel Trim (Bank 2)", 
                           @"Long Term Fuel Trim (Bank 2)", 
                           @"Intake Air Temperature", 
                           @"Coolant Temperature", 
                           @"Fuel Pressure (guage)", 
                           @"O2 Sensor 1, Bank 1", 
                           @"O2 Sensor 2, Bank 1", 
                           @"O2 Sensor 3, Bank 1", 
                           @"O2 Sensor 4, Bank 1", 
                           @"O2 Sensor 1, Bank 2", 
                           @"O2 Sensor 2, Bank 2", 
                           @"O2 Sensor 3, Bank 2", 
                           @"O2 Sensor 4, Bank 2", 
                           @"Time Since Engine Start", 
                           @"Fuel Level Input", 
                           @"Barometric Pressure (Absolute)",
                           @"Catalytic Converter Temp B1S1", 
                           @"Catalytic Converter Temp B2S1", 
                           @"Catalytic Converter Temp B1S2", 
                           @"Catalytic Converter Temp B2S2",
                           @"ECU Voltage", 
                           @"Absolute Engine Load", 
                           @"Ambient Air Temperature", nil];
    
    self.pidValueList = [[NSMutableArray alloc] initWithObjects:
                         @"11",@"0C",@"0D",@"04",@"0E",
                         @"0B",@"10",@"03",@"06",@"07", 
                         @"08",@"09", 
                         @"0F", 
                         @"05", 
                         @"0A", 
                         @"14", 
                         @"15", 
                         @"16", 
                         @"17", 
                         @"18", 
                         @"19", 
                         @"1A", 
                         @"1B", 
                         @"1F", 
                         @"2F", 
                         @"33", 
                         @"3C", 
                         @"3D", 
                         @"3E",
                         @"3F",
                         @"42",
                         @"43",@"46", nil];
    
    self.sensorImages = [[NSMutableArray alloc] initWithObjects:
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png",@"add-this.png",@"amazon.png",@"aol.png",
                         @"500px.png",@"aboutme.png", @"add-this.png",@"amazon.png", nil];  
    
    self.xArray = [NSMutableArray array];
    self.title = @"Sensor List";    
    int displayCount = [self.sensorNameList count];                           
                         
	for( int i=0; i<displayCount; i++ )
	{
		Sensors *sensor = [[Sensors alloc] init];
		sensor.xSensorName = [self.sensorNameList objectAtIndex:i ];
        sensor.xPIDValue = [self.pidValueList objectAtIndex:i]; //@"PID Value Here";
		sensor.xSensorImage = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];

		[self.xArray addObject:sensor];
		[sensor release];
	}    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.sensorNameList = nil;
    self.pidValueList = nil;

}
- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.navigationController.navigationBar setTintColor:[UIColor blackColor]];
	
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
	//return [self.sensorNameList count];
    return [self.xArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        for (UIView *view in views)
        {
            
            if([view isKindOfClass:[CustomTableViewCell class]])
            {
                cell = (CustomTableViewCell*)view;
            }
        }    
    }
    Sensors *sensor = [self.xArray objectAtIndex:indexPath.row];
    cell.sensorLabel.text = sensor.xSensorName;
    cell.pidValueLabel.text = sensor.xPIDValue;
    cell.sensorImage.image = sensor.xSensorImage;
    return cell;
}    


#pragma mark - Table view delegate
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
            NSLog(@"I would like to delete row %d", indexPath.row);
            [self.xArray removeObjectAtIndex:indexPath.row];
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    } 
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
            // This is where I would add something...
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:nil bundle:nil];
   // DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:[NSBundle mainBundle]];
    
    Sensors *sensor = [self.xArray objectAtIndex:indexPath.row];
    detailViewController.xSensor = sensor;
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];

}

@end