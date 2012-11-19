//
//  RootViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SensorViewController.h"
#import "CustomTableViewCell.h"


@implementation RootViewController
@synthesize sensorController;
@synthesize sensorNameList; 


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
    @"Absolute Throttle Position", @"Engine RPM", @"Vehicle Speed", @"Calculated Load Value", 
    @"Timing Advance (Cyl#1)", @"Intake Manifold Pressure", @"Air Flow Rate (MAF Sensor)", @"Fuel System Status", 
    @"Short Term Fuel Trim (Bank 1)", @"Long Term Fuel Trim (Bank 1)", @"Short Term Fuel Trim (Bank 2)", @"Long Term Fuel Trim (Bank 2)", 
    @"Intake Air Temperature", @"Coolant Temperature", @"Fuel Pressure (guage)", 
    @"O2 Sensor 1, Bank 1", @"O2 Sensor 2, Bank 1", @"O2 Sensor 3, Bank 1", @"O2 Sensor 4, Bank 1", 
    @"O2 Sensor 1, Bank 2", @"O2 Sensor 2, Bank 2", @"O2 Sensor 3, Bank 2", @"O2 Sensor 4, Bank 2", 
    @"Time Since Engine Start", @"Fuel Level Input", @"Barometric Pressure (Absolute)",
    @"Catalytic Converter Temp B1S1", @"Catalytic Converter Temp B2S1", @"Catalytic Converter Temp B1S2", @"Catalytic Converter Temp B2S2",
    @"ECU Voltage", @"Absolute Engine Load", @"Ambient Air Temperature", nil];
    
    self.title = @"Sensor List";
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.sensorNameList = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
	return [self.sensorNameList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        for (UIView *view in views)
        {
            
            if([view isKindOfClass:[CustomTableViewCell class]])
            {
                cell = (CustomTableViewCell*)view;
            }
        }    
    }
    
    cell.textLabel.text = [self.sensorNameList objectAtIndex:[indexPath row]];
    return cell;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"I would like to delete row %d", indexPath.row);
        [sensorNameList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    } else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // This is where I would add something...
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    [self.navigationController pushViewController:sensorController animated:YES];
}

@end
