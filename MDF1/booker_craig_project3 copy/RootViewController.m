//
//  RootViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SensorViewController.h"
#import "LocationViewController.h"
#import "CustomTableViewCell.h"
#import "LocationCustomTableViewCell.h"

@implementation RootViewController
@synthesize sensorController;
@synthesize sensorNameList;
@synthesize locationNameList;
@synthesize locationController;

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
    
    
    self.locationNameList = [[NSMutableArray alloc] initWithObjects:@"Montgomery, AL", @"Juneau, AK", @"Phoenix, AZ", @"Little Rock, AR",
    @"Sacramento, CA", @"Denver, CO", @"Hartford, CT", @"Dover, DE", @"Tallahassee, FL", @"Atlanta, GA", @"Honolulu, HI", @"Boise, ID", @"Springfield, IL", @"Indianapolis, IN", @"Des Moines, IA", @"Topeka, KS", @"Frankfort, KY", @"Baton Rouge, LA", @"Augusta, ME", @"Annapolis, MD", @"Boston, MA", @"Michigan, MI", @"Saint Paul, MN", @"Jackson, MS", @"Jefforson City, MO", @"Helena, MT", @"Lincoln, NE", @"Carson City, NV", @"Concord, NH", @"Trenton, NJ", @"Santa Fe, NM", @"Albany, NY", @"Raleigh, NC", @"Bismarck, ND", @"Columbus, OH", @"Oklahoma City, OK", @"Salem, OR", @"Harrisburg, PA", @"Providence, RI", @"Columbia, SC", @"Pierre, South Dakota", @"Nashville, TN", @"Austin, TX", @"Salt Lake City, UT", @"Montpelier, Vermont", @"Richmond, VA", @"Olympia, WA", @"Charleston, WV", @"Madison, WI", @"Cheyenne, WY", nil];
    
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
    switch (indexPath.row) {
        case 0:
            self.locationController.title = @"Montgomery, AL";
            break;
        case 1:
            self.locationController.title = @"Juneau, AK";
            break;
        case 2:
            self.locationController.title = @"Phoenix, AZ";
            break;
        case 3:
            self.locationController.title = @"Little Rock, AR";
            break;
        case 4:
            self.locationController.title = @"Sacramento, CA";
            break; 
        case 5:
            self.locationController.title = @"Denver, CO";
            break;
        case 6:
            self.locationController.title = @"Hartford, CT";
            break;
        case 7:
            self.locationController.title = @"Dover, DE";
            break;
        case 8:
            self.locationController.title = @"Tallahassee, FL";
            break;
        case 9:
            self.locationController.title = @"Atlanta, GA"; 
            break;
        case 10:
            self.locationController.title = @"Honolulu, HI"; 
            break;
        case 11:
            self.locationController.title = @"Boise, ID"; 
            break;
        case 12:
            self.locationController.title = @"Springfield, IL"; 
            break;
        case 13:
            self.locationController.title = @"Indianapolis, IN"; 
            break;
        case 14:
            self.locationController.title = @"Des Moines, IA"; 
            break;
        case 15:
            self.locationController.title = @"Topeka, KS"; 
            break;
        case 16:
            self.locationController.title = @"Frankfort, KY"; 
            break;
        case 17:
            self.locationController.title = @"Baton Rouge, LA"; 
            break;
        case 18:
            self.locationController.title = @"Augusta, ME"; 
            break;
        case 19:
            self.locationController.title = @"Annapolis, MD"; 
            break;
        case 20:
            self.locationController.title = @"Boston, MA"; 
            break;
        case 21:
            self.locationController.title = @"Michigan, MI"; 
            break;
        case 22: 
            self.locationController.title = @"Saint Paul, MN"; 
            break;
        case 23: 
            self.locationController.title = @"Jackson, MS"; 
            break;
        case 24: 
            self.locationController.title = @"Jefforson City, MO"; 
            break;
        case 25: 
            self.locationController.title = @"Helena, MT"; 
            break;
        case 26: 
            self.locationController.title = @"Lincoln, NE"; 
            break;
        case 27: 
            self.locationController.title = @"Carson City, NV"; 
            break;
        case 28: 
            self.locationController.title = @"Concord, NH"; 
            break;
        case 29: 
            self.locationController.title = @"Trenton, NJ"; 
            break;
        case 30: 
            self.locationController.title = @"Santa Fe, NM"; 
            break;
        case 31: 
            self.locationController.title = @"Albany, NY"; 
            break;
        case 32: 
            self.locationController.title = @"Raleigh, NC"; 
            break;
        case 33: 
            self.locationController.title = @"Bismarck, ND"; 
            break;
        case 34: 
            self.locationController.title = @"Columbus, OH"; 
            break;
        case 35: 
            self.locationController.title = @"Oklahoma City, OK"; 
            break;
        case 36: 
            self.locationController.title = @"Salem, OR"; 
            break;
        case 37: 
            self.locationController.title = @"Harrisburg, PA"; 
            break;
        case 38: 
            self.locationController.title = @"Providence, RI"; 
            break;
        case 39: 
            self.locationController.title = @"Columbia, SC"; 
            break;
        case 40: 
            self.locationController.title = @"Pierre, SD"; 
            break;
        case 41: 
            self.locationController.title = @"Nashville, TN"; 
            break;
        case 42: 
            self.locationController.title = @"Austin, TX"; 
            break;
        case 43: 
            self.locationController.title = @"Salt Lake City, UT"; 
            break;
        case 44: 
            self.locationController.title = @"Montpelier, VT"; 
            break;
        case 45: 
            self.locationController.title = @"Richmond, VA"; 
            break;
        case 46: 
            self.locationController.title = @"Olympia, WA"; 
            break;
        case 47: 
            self.locationController.title = @"Charleston, WV"; 
            break;
        case 48: 
            self.locationController.title = @"Madison, WI"; 
            break;
        case 49: 
            self.locationController.title = @"Cheyenne, WY";
            break;
        default:
			self.locationController.title = @"Oklahoma City, OK";            
            break;
            
    }
    [self.navigationController pushViewController:sensorController animated:YES];
}

@end
