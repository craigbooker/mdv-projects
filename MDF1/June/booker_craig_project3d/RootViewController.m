//
//  RootViewController.m
//  booker_craig_project1
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "LocationViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "BizLocation.h"

@implementation RootViewController
@synthesize locationController;
@synthesize locationNameList; 
@synthesize bizNameList;
@synthesize locationList;
@synthesize longCoordList;
@synthesize latCoordList;

@synthesize locationDetails;
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

    self.navigationItem.rightBarButtonItem = self.editButtonItem;

    
 

    
    
    self.locationNameList = [[NSMutableArray alloc] initWithObjects:
                        @"Shorty's Car Care", @"Fine Touch Repair", @"180 Degrees Automotive", @"Foster Garage, Inc.", @"DRJ Performance Automotive", 
                        @"Strictly Automotive", @"Reliable Auto Tire Co Inc", @"Still's Body Shop", @"Rising Sun Imported Auto Repairs", @"Professional Automotive Repair",
                        @"Sum's General Auto Repair", @"Rudy's Auto Service", @"Dick Taylor Automotive Service", @"Tyler Automotive", @"Beckley Automotive Services",
                        @"Shorey Automotive Repair Service", @"David Toles Auto Pro", @"Gordon & Sandifer Auto Collision Center", @"A Ms Automotive Machine Shop Services Inc", @"A. Arundel Auto Service Center",
                        @"Glenville Terrace Auto Body", @"Auto-Lab Diagnostic & Tune Up Centers", @"Tuan Auto Repair", @"Robinson Auto Repair Shop", @"Kemna Collision Repair",
                        @"Capital Collision Center", @"George Witt Service, Inc", @"Performance Auto Care", @"J B Automotive Service Center Inc", @"Dave J's German Car Service",
                        @"Santa Fe Auto Repair", @"Capitol Tech Auto Repair", @"Raleigh Car Care", @"Johnnies Service & Speed Shop", @"Alternative Auto Care", 
                        @"Momentum Toyota Northwest", @"P & M Automotive", @"Dale's Automotive", @"Wayne's Service Plus", @"Rushing Automotive",
                        @"Beck Chevrolet Cadillac", @"Autotech Import Car Repairs", @"Go Greene Automotive", @"Autograff Motor Works Inc", @"Majestic Auto Body",
                        @"Paradise Garage", @"Makoviney Automotive", @"A-1 Body Shop", @"Chet's Car Care", @" King's Auto Center", nil]; 


    
    self.locationList = [[NSMutableArray alloc] initWithObjects:
                             @"Montgomery, AL", @"Juneau, AK", @"Phoenix, AZ", @"Little Rock, AR",@"Sacramento, CA",
                             @"Denver, CO", @"Hartford, CT", @"Dover, DE", @"Tallahassee, FL", @"Atlanta, GA",
                             @"Honolulu, HI", @"Boise, ID", @"Springfield, IL", @"Indianapolis, IN", @"Des Moines, IA",
                             @"Topeka, KS", @"Frankfort, KY", @"Baton Rouge, LA", @"Augusta, ME", @"Annapolis, MD",
                             @"Boston, MA", @"Lansing, MI", @"Saint Paul, MN", @"Jackson, MS", @"Jefforson City, MO",
                             @"Helena, MT", @"Lincoln, NE", @"Carson City, NV", @"Concord, NH", @"Trenton, NJ", 
                             @"Santa Fe, NM", @"Albany, NY", @"Raleigh, NC", @"Bismarck, ND", @"Columbus, OH",
                             @"Oklahoma City, OK", @"Salem, OR", @"Harrisburg, PA", @"Providence, RI", @"Columbia, SC",
                             @"Pierre, SD", @"Nashville, TN", @"Austin, TX", @"Salt Lake City, UT", @"Montpelier, VT", 
                             @"Richmond, VA", @"Olympia, WA", @"Charleston, WV", @"Madison, WI", @"Cheyenne, WY", nil];

    self.latCoordList = [[NSMutableArray alloc] initWithObjects:
                         @"32.35", @"58.30", @"33.54", @"34.72", @"38.57", 
                         @"39.77", @"41.77", @"39.13", @"30.46", @"33.76",
                         @"21.32", @"43.61", @"39.78", @"39.78", @"41.58",
                         @"39.04", @"38.18", @"30.45", @"44.31", @"38.94",
                         @"42.34", @"42.78", @"44.95", @"32.32", @"38.57",
                         @"46.61", @"40.82", @"39.15", @"43.23", @"40.22",
                         @"35.68", @"42.67", @"35.82", @"46.81", @"39.99",
                         @"35.47", @"44.92", @"40.28", @"41.82", @"34.04",
                         @"44.38", @"36.17", @"30.31", @"40.78", @"44.20",
                         @"37.53", @"47.04", @"38.35", @"35.11", @"41.15", nil]; 
    
    self.longCoordList = [[NSMutableArray alloc] initWithObjects:
                          @"-86.28f", @"-134.42", @"-112.07", @"-92.35", @"-121.47", 
                          @"-104.87f", @"-72.68", @"-75.47", @"-84.28", @"-84.42",
                          @"-157.80f", @"-116.23", @"-89.64", @"-86.15", @"-93.62",
                          @"-95.69f", @"-84.91", @"-91.13", @"-69.78", @"-76.57",
                          @"-71.02f", @"-84.59", @"-93.10", @"-90.21", @"-92.19",
                          @"-111.98f", @"-96.69", @"-119.74", @"-71.56", @"-74.76",
                          @"-105.95f", @"-73.80", @"-78.66", @"-100.77", @"-82.99",
                          @"-97.51", @"-123.02", @"-76.88", @"-71.42", @"-80.89",
                          @"-100.29", @"-86.78°", @"-97.75", @"-111.93", @"-72.56",
                          @"-77.47", @"-122.89", @"81.63", @"-90.01", @"-104.79", nil];
 
    
    /*
     
     
     for (int i=0; i<displayCount; i++)
     {
     
     
     
     }
     
     BizLocations *annotation1 = [[BizLocations alloc] initWithTitle:@"ThisTitle" coord:orlandoLocation];
     if (annotation1 != nil)
     {
     [mapView addAnnotation:annotation1];
     }
     
     */
    
    
   
    
    self.xArray = [NSMutableArray array];
    self.title = @"Location List";    
    int displayCount = [self.locationNameList count];                           
                         
	for( int i=0; i<displayCount; i++ )
	{
		BizLocation *bizLocation = [[BizLocation alloc] init];
		bizLocation.xBizName = [self.locationNameList objectAtIndex:i ];
        bizLocation.xLocation = [self.locationList objectAtIndex:i];
        float tempLatFloat = [[self.latCoordList objectAtIndex:i] floatValue];
        float tempLongFloat = [[self.longCoordList objectAtIndex:i] floatValue];
        //bizLocation.loc.latitude = tempLatFloat;
        //bizLocation.coordinate.latitude = 
		//bizLocation.xLocationImage = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];

		[self.xArray addObject:bizLocation];
		[bizLocation release];
	}   
        [super viewDidLoad]; 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.locationNameList = nil;
    self.latCoordList = nil;
    self.longCoordList = nil;

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
    BizLocation *bizLocation = [self.xArray objectAtIndex:indexPath.row];
    cell.locationNameLabel.text = bizLocation.xBizName;
    cell.bizLocationLabel.text = bizLocation.xLocation;
    //cell.locationImage.image = [UIImage imageNamed: [bizLocation.xLocationImage]];
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
    
    BizLocation *bizLocation = [self.xArray objectAtIndex:indexPath.row];
    detailViewController.xBizLocation = bizLocation;
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];

}

@end