//
//  FirstView.m
//  WindowTabBar
//
//  Created by Chakra on 04/05/10.
//  Copyright 2010 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import "FirstView.h"
#import "TableViewDetailViewController.h"
#import "CustomTableCell.h"

@implementation FirstView


@synthesize myTableView;
@synthesize sensorNameList = _sensorNameList; 
@synthesize pidValueList = _pidValueList;
@synthesize sensorImageList = _sensorImageList;


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [sensorNameList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *CellIdentifier = @"SensorCell";
	
	//UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

	if (cell == nil) {
		/*cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];

         */
           NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                // Configure the cell...
                cell.sensorLabel.text = [self.sensorNameList 
                                         objectAtIndex: [indexPath row]];
                
                cell.pidLabel.text = [self.pidValueList 
                                      objectAtIndex:[indexPath row]];
                
                UIImage *sensorPhoto = [UIImage imageNamed: 
                                        [self.sensorImageList objectAtIndex: [indexPath row]]];
                
                cell.sensorImage.image = sensorPhoto;
            }
        }
    
    }
	
	// Set up the cell...
	//NSString *cellValue = [sensorNameList objectAtIndex:indexPath.row];
	//NSString *sensorLabelValue = [sensorNameList objectAtIndex:indexPath.row];
	//NSString *pidLabelValue = [pidValueList objectAtIndex:indexPath.row];	
	//NSString *sensorImageValue = [sensorImageList objectAtIndex:indexPath.row];	    
    
    
    //cell.textLabel.text = cellValue;

  
    
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *selectSensor = [NSString stringWithFormat:@"%d", indexPath.row];
	
/*	TableViewDetailViewController *fvController = [[TableViewDetailViewController alloc] initWithNibName:@"TableViewDetailViewController" bundle:[NSBundle mainBundle]]; */
	TableViewDetailViewController *fvController = [[TableViewDetailViewController alloc] initWithNibName:@"SensorDetailTableView" bundle:[NSBundle mainBundle]];
	fvController.selectSensor = selectSensor;
	[self.navigationController pushViewController:fvController animated:YES];
	[fvController release];
	fvController = nil;
	
}

-(void)loadView{
	
    NSLog(@"aaaaaaaaaaaaaaaaaaaaaa");
	
	myTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
	myTableView.delegate = self;
	myTableView.dataSource = self;
	
	myTableView.autoresizesSubviews = YES;
	
	//itemsList = [[NSMutableArray alloc] init];
	sensorNameList = [[NSMutableArray alloc] init];

	[sensorNameList addObject:@"Absolute Throttle Position"];
	[sensorNameList addObject:@"Engine RPM"];
	[sensorNameList addObject:@"Vehicle Speed"];
	[sensorNameList addObject:@"Calculated Load Value"];
	[sensorNameList addObject:@"Timing Advance (Cyl#1)"];
	[sensorNameList addObject:@"Intake Manifold Pressure"]; 
	[sensorNameList addObject:@"Air Flow Rate (MAF Sensor)"]; 
	[sensorNameList addObject:@"Fuel System Status"]; 
	[sensorNameList addObject:@"Short Term Fuel Trim (Bank 1)"]; 
	[sensorNameList addObject:@"Long Term Fuel Trim (Bank 1)"]; 
	[sensorNameList addObject:@"Short Term Fuel Trim (Bank 2)"]; 
	[sensorNameList addObject:@"Long Term Fuel Trim (Bank 2)"]; 
	[sensorNameList addObject:@"Intake Air Temperature"]; 
	[sensorNameList addObject:@"Coolant Temperature"]; 
	[sensorNameList addObject:@"Fuel Pressure (guage)"]; 
	[sensorNameList addObject:@"O2 Sensor 1, Bank 1"]; 
	[sensorNameList addObject:@"O2 Sensor 2, Bank 1"]; 
	[sensorNameList addObject:@"O2 Sensor 3, Bank 1"]; 
	[sensorNameList addObject:@"O2 Sensor 4, Bank 1"]; 
	[sensorNameList addObject:@"O2 Sensor 1, Bank 2"]; 
	[sensorNameList addObject:@"O2 Sensor 2, Bank 2"]; 
	[sensorNameList addObject:@"O2 Sensor 3, Bank 2"]; 
	[sensorNameList addObject:@"O2 Sensor 4, Bank 2"]; 
	[sensorNameList addObject:@"Time Since Engine Start"]; 
	[sensorNameList addObject:@"Fuel Level Input"]; 
	[sensorNameList addObject:@"Barometric Pressure (Absolute)"]; 
	[sensorNameList addObject:@"Catalytic Converter Temp B1S1"]; 
	[sensorNameList addObject:@"Catalytic Converter Temp B2S1"]; 
	[sensorNameList addObject:@"Catalytic Converter Temp B1S2"]; 
	[sensorNameList addObject:@"Catalytic Converter Temp B2S2"]; 
	[sensorNameList addObject:@"ECU Voltage"]; 
	[sensorNameList addObject:@"Absolute Engine Load"]; 
	[sensorNameList addObject:@"Ambient Air Temperature"];	

	
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];	    
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];
	[pidValueList addObject:@""];

    
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];	    
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];
	[sensorImageList addObject:@""];    
    
	self.navigationItem.title = @"Sensor List";
	
	self.view = myTableView;
	
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[sensorNameList release];
    [super dealloc];
}


@end






