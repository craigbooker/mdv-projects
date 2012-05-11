//
//  Tab1ViewController.m
//  TabBar
//
//  Created by Craig Booker on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tab1ViewController.h"
#import "SensorTableViewCell.h"
#import "SensorDetailViewController.h"


@implementation Tab1ViewController
@synthesize sensorNames = _sensorNames; 
@synthesize pidValues = _pidValues;
@synthesize sensorImages = _sensorImages;
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sensorNames = [[NSArray alloc]
                        initWithObjects:@"Absolute Throttle Position",
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
    self.pidValues = [[NSArray alloc]
                      initWithObjects:@"11",
                      @"0C",
                      @"0D",
                      @"04",
                      @"0E",
                      @"0B",
                      @"10",
                      @"03",
                      @"06", 
                      @"07", 
                      @"08", 
                      @"09", 
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
                      @"43",
                      @"46", nil];
    
    self.sensorImages = [[NSArray alloc]
                         initWithObjects:@"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png",
                         @"amazon.png",
                         @"aol.png",
                         @"500px.png",
                         @"aboutme.png",
                         @"add-this.png", nil];
}
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView 
          editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"We want to delete row=%d", indexPath.row);
        [_sensorNames removeObjectAtIndex:indexPath.row];
        [tableView deleteRowAtIndexPaths: [NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        [_sensorNames insertObject:@"testing" atIndex:indexPath.row];
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.sensorNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"carTableCell";
    
    CarTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CarTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.sensorLabel.text = [self.sensorNames 
                             objectAtIndex: [indexPath row]];
    
    cell.pidLabel.text = [self.pidValues 
                          objectAtIndex:[indexPath row]];
    
    UIImage *sensorPhoto = [UIImage imageNamed: 
                            [self.sensorImages objectAtIndex: [indexPath row]]];
    
    cell.sensorImage.image = sensorPhoto;
    
    return cell;
}
@end
