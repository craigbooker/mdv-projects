//
//  CarTableViewController.m
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SensorTableViewController.h"
#import "SensorTableViewCell.h"


@implementation SensorTableViewController

@synthesize sensorName = _sensorName; 
@synthesize pidValue = _pidValue;
@synthesize sensorImages = _sensorImages;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sensorName = [[NSArray alloc]
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
    
   self.pidValue = [[NSArray alloc]
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
                         initWithObjects:@"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg",
                         @"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg", 
                         @"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg", 
                         @"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg", 
                         @"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg", 
                         @"chevy_volt.jpg", 
                         @"mini_clubman.jpg", 
                         @"smart_fortwo.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg", 
                         @"toyota_venza.jpg", 
                         @"volvo_s60.jpg",
                         @"chevy_volt.jpg", nil];
}
/*
self.sensorImages = [[NSArray alloc]
                     initWithObjects:@"chevy_volt.jpg", 
                     @"Engine_RPM.jpg", 
                     @"Vehicle_Speed.jpg", 
                     @"Calculated_Load_Value.jpg", 
                     @"Timing_Advance.jpg", 
                     @"Intake_Manifold_Pressure.jpg", 
                     @"Air_Flow_Rate.jpg", 
                     @"Fuel_System_Status.jpg", 
                     @"Short_Term_Fuel_Trim_Bank 1.jpg", 
                     @"Long_Term_Fuel_Trim_Bank 1.jpg", 
                     @"Short_Term_Fuel_Trim_Bank 2.jpg", 
                     @"Long_Term_Fuel_Trim_Bank 2.jpg", 
                     @"Intake_Air_Temperature.jpg", 
                     @"Coolant_Temperature.jpg", 
                     @"Fuel_Pressure (guage).jpg", 
                     @"O2_Sensor_1_Bank1.jpg", 
                     @"O2_Sensor_2_Bank1.jpg", 
                     @"O2_Sensor_3_Bank1.jpg", 
                     @"O2_Sensor_4_Bank1.jpg", 
                     @"O2_Sensor_1_Bank2.jpg", 
                     @"O2_Sensor_2_Bank2.jpg", 
                     @"O2_Sensor_3_Bank2.jpg", 
                     @"O2_Sensor_4_Bank2.jpg", 
                     @"Time_Since_Engine_Start.jpg", 
                     @"Fuel_Level_Input.jpg", 
                     @"Barometric_Pressure_Abs.jpg", 
                     @"Catalytic_Converter_Temp_B1S1.jpg", 
                     @"Catalytic_Converter_Temp_B2S1.jpg", 
                     @"Catalytic_Converter_Temp_B1S2.jpg", 
                     @"Catalytic_Converter_Temp_B2S2.jpg", 
                     @"ECU_Voltage.jpg", 
                     @"Absolute_Engine_Load.jpg", 
                     @"Ambient_Air_Temperature.jpg", nil];
}
*/
- (void)viewDidUnload
{
    [super viewDidUnload];
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
    return [self.sensorName count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *CellIdentifier = @"sensorTableCell";    

    SensorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[SensorTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.sensorLabel.text = [self.sensorName 
                    objectAtIndex: [indexPath row]];    
    
    cell.pidLabel.text = [self.pidValue 
                            objectAtIndex:[indexPath row]];    
    UIImage *sensorPhoto = [UIImage imageNamed: 
                         [self.sensorImages objectAtIndex: [indexPath row]]];
    
    cell.sensorImage.image = sensorPhoto;    
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
}

@end
