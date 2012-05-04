//
//  ViewController.m
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "SecondViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    sensorArray = [[NSMutableArray alloc] initWithObjects:@"Absolute Throttle Position", @"Engine RPM", @"Vehicle Speed", @"Calculated Load Value", @"Timing Advance (Cyl#1)", @"Intake Manifold Pressure", @"Air Flow Rate (MAF Sensor)", @"Fuel System Status", @"Short Term Fuel Trim (Bank 1)", @"Long Term Fuel Trim (Bank 1)", @"Short Term Fuel Trim (Bank 2)", @"Long Term Fuel Trim (Bank 2)", @"Intake Air Temperature", @"Coolant Temperature", @"Fuel Pressure (guage)", @"O2 Sensor 1, Bank 1", @"O2 Sensor 2, Bank 1", @"O2 Sensor 3, Bank 1", @"O2 Sensor 4, Bank 1", @"O2 Sensor 1, Bank 2", @"O2 Sensor 2, Bank 2", @"O2 Sensor 3, Bank 2", @"O2 Sensor 4, Bank 2", @"Time Since Engine Start", @"Fuel Level Input", @"Barometric Pressure (Absolute)", @"Catalytic Converter Temp B1S1", @"Catalytic Converter Temp B2S1", @"Catalytic Converter Temp B1S2", @"Catalytic Converter Temp B2S2", @"ECU Voltage", @"Absolute Engine Load", @"Ambient Air Temperature", nil];
    pidArray = [[NSMutableArray alloc] initWithObjects:@"11", @"0C", @"0D", @"04", @"0E", @"0B", @"10", @"03", @"06", @"07", @"08", @"09", @"0F", @"05", @"0A", @"14", @"15", @"16", @"17", @"18", @"19", @"1A", @"1B", @"1F", @"2F", @"33", @"3C", @"3D", @"3E", @"3F", @"42", @"43", @"46", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [sensorArray count];
}
-(NSInteger)numberofSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)myTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                cell.sensorLabel.text = [sensorArray objectAtIndex:indexPath.row];
                cell.pidLabel.text = [pidArray objectAtIndex:indexPath.row];
            }
        }
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath:(NSIndexPath *)indexpath
{
    
    NSLog(@"row=%d sensor=%@", indexPath.row, [sensorArray objectAtIndex:indexPath.row]);
}
/*
-(IBAction)onClick:(id)sender
{
    int temp=3;
}
-(void)DidClose:(NSString*)newString
{
    int temp1 = 4;
    
}
*/
 -(void)tableView:(UITableView *)myTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
     SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
     if (secondView != nil)
         {
             //secondView.delegate = self;
             [self presentModalViewController:secondView animated:true];
         }
     [myTableView resignFirstResponder];
 }
 
@end
