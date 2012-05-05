//
//  ViewController.m
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SensorTableViewCell.h"
#import "SecondViewController.h"

@implementation ViewController
@synthesize sensorNames = _sensorNames;
@synthesize pidValues = _pidValues;
@synthesize sensorImages = _sensorImages;
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
                         initWithObjects:@"abs_Throttle_Position.jpg", 
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
    static NSString *CellIdentifier = @"customTableCell";
    
    SensorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil){
        cell = [[SensorTableViewCell alloc] initWithStyle:UITableViewStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.sensorLabel.text = [self.sensorNames objectAtIndex:[indexPath row]];
    cell.pidLabel.text = [self.pidValues objectAtIndex:[indexPath row]];
    UIImage *sensorPhoto = [UIImage imageNamed: [self.sensorImages objectAtIndex:[indexPath row]];
                            cell.sensorImage.image = sensorPhoto;
                            return cell;
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableViewCell class]])
            {
                cell = (CustomTableViewCell*)view;
                NSLog(@"%@", cell);
            }
        }
    }

   // cell.sensorLabel.text = [sensorArray objectAtIndex:indexPath.row];
   // cell.pidLabel.text = [pidArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath:(NSIndexPath *)indexpath
{
    
    NSLog(@"row=%d sensor=%@", indexPath.row, [sensorArray objectAtIndex:indexPath.row]);
}


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
