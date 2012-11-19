//
//  FirstViewController.m
//  mapTest
//
//  Created by wendy jones on 6/12/12.
//  Copyright (c) 2012 Kitty Code, LLC. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "LocInfo.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize locationNameList;
@synthesize locationList;
@synthesize longCoordList;
@synthesize latCoordList;
@synthesize locationDetails;
@synthesize locationImages;
@synthesize xArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{

    self.xArray = [NSMutableArray array];
    self.title = @"Location List";   
   // int displayCount = [self.locationNameList count];
    
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        // add all the locations to the array
        NSMutableArray *locArray = delegate.locArray;
        if (locArray != nil)
        {

                [locArray addObject:[[LocInfo alloc] initWithName:@"Shorty's Car Care" location:CLLocationCoordinate2DMake(32.35f, -86.28)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Fine Touch Repair" location:CLLocationCoordinate2DMake(58.30f, -134.42)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"180 Degrees Automotive" location:CLLocationCoordinate2DMake(33.54f, -112.07)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Foster Garage, Inc." location:CLLocationCoordinate2DMake(34.72f, -92.35)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"DRJ Performance Automotive" location:CLLocationCoordinate2DMake(38.57f, -121.473)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Strictly Automotive" location:CLLocationCoordinate2DMake(39.77f, -104.87)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Reliable Auto Tire Co Inc" location:CLLocationCoordinate2DMake(41.77f, -72.68)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Still's Body Shop" location:CLLocationCoordinate2DMake(39.13f, -75.47)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Rising Sun Imported Auto Repairs" location:CLLocationCoordinate2DMake(30.46f, -84.28)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Professional Automotive Repair" location:CLLocationCoordinate2DMake(33.76f, -84.42)]];                  
                [locArray addObject:[[LocInfo alloc] initWithName:@"Sum's General Auto Repair" location:CLLocationCoordinate2DMake(21.32f, -157.80)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Rudy's Auto Service" location:CLLocationCoordinate2DMake(43.61f, -116.23)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Dick Taylor Automotive Service" location:CLLocationCoordinate2DMake(39.78f, -89.64)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Tyler Automotive" location:CLLocationCoordinate2DMake(39.78f, -86.15)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Beckley Automotive Services" location:CLLocationCoordinate2DMake(41.58f, -93.62)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Shorey Automotive Repair Service" location:CLLocationCoordinate2DMake(39.04f, -95.69)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"David Toles Auto Pro" location:CLLocationCoordinate2DMake(38.18f, -84.91)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Gordon & Sandifer Auto Collision Center" location:CLLocationCoordinate2DMake(30.45f, -91.13)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"A Ms Automotive Machine Shop Services Inc" location:CLLocationCoordinate2DMake(44.31f, -69.78)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"A. Arundel Auto Service Center" location:CLLocationCoordinate2DMake(38.94f, -76.57)]];                                      
                [locArray addObject:[[LocInfo alloc] initWithName:@"Glenville Terrace Auto Body" location:CLLocationCoordinate2DMake(42.34f, -71.02)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Auto-Lab Diagnostic & Tune Up Centers" location:CLLocationCoordinate2DMake(42.78f, -84.59)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Tuan Auto Repair" location:CLLocationCoordinate2DMake(44.95f, -93.10)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Robinson Auto Repair Shop" location:CLLocationCoordinate2DMake(32.32f, -90.21)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Kemna Collision Repair" location:CLLocationCoordinate2DMake(38.57f, -92.19)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Capital Collision Center" location:CLLocationCoordinate2DMake(46.61f, -111.98)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"George Witt Service, Inc" location:CLLocationCoordinate2DMake(40.82f, -96.69)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Performance Auto Care" location:CLLocationCoordinate2DMake(39.15f, -119.74)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"J B Automotive Service Center Inc" location:CLLocationCoordinate2DMake(43.23f, -71.56)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Dave J's German Car Service" location:CLLocationCoordinate2DMake(40.22f, -74.76)]];                    
                [locArray addObject:[[LocInfo alloc] initWithName:@"Santa Fe Auto Repair" location:CLLocationCoordinate2DMake(35.68f, -105.95)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Capitol Tech Auto Repair" location:CLLocationCoordinate2DMake(42.67f, -73.80)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Raleigh Car Care" location:CLLocationCoordinate2DMake(35.82f, -78.66)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Johnnies Service & Speed Shop" location:CLLocationCoordinate2DMake(46.81f, -100.77)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Alternative Auto Care" location:CLLocationCoordinate2DMake(39.99f, -82.99)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Momentum Toyota Northwest" location:CLLocationCoordinate2DMake(35.47f, -97.51)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"P & M Automotive" location:CLLocationCoordinate2DMake(44.92f, -123.02)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Dale's Automotive" location:CLLocationCoordinate2DMake(40.28f, -101.33)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Wayne's Service Plus" location:CLLocationCoordinate2DMake(41.82f, -111.33)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Rushing Automotive" location:CLLocationCoordinate2DMake(34.04f, -121.33)]];      
                [locArray addObject:[[LocInfo alloc] initWithName:@"Beck Chevrolet Cadillac" location:CLLocationCoordinate2DMake(44.38f, -81.33)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Autotech Import Car Repairs" location:CLLocationCoordinate2DMake(36.17f, -91.33)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Go Greene Automotive" location:CLLocationCoordinate2DMake(30.31f, -101.33)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Autograff Motor Works Inc" location:CLLocationCoordinate2DMake(40.78f, -111.93)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Majestic Auto Body" location:CLLocationCoordinate2DMake(44.20f, -72.56)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Paradise Garage" location:CLLocationCoordinate2DMake(37.53f, -77.47)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Makoviney Automotive" location:CLLocationCoordinate2DMake(47.04f, -122.89)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"A-1 Body Shop" location:CLLocationCoordinate2DMake(38.35f, -81.63)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"Chet's Car Care" location:CLLocationCoordinate2DMake(35.11f, -90.01)]];
                [locArray addObject:[[LocInfo alloc] initWithName:@"King's Auto Center" location:CLLocationCoordinate2DMake(41.15f, -104.79)]];                       

        }
    }
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

-(IBAction)onClick:(id)sender
{
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        NSMutableArray *locArray = delegate.locArray;
        if (locArray != nil)
        {
            [locArray removeObjectAtIndex:1];
            
            [locTableView reloadData];
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        NSMutableArray *locArray = delegate.locArray;
        
        return [locArray count];
    }
    return 0;
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myTableCell"];
    if (cell != nil)
    {
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        if ((delegate != nil) && (delegate.locArray != nil))
        {
            LocInfo *info = (LocInfo*)[delegate.locArray objectAtIndex:indexPath.row];
            cell.textLabel.text = info.locName;
        }
    }
    
    return cell;
}
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        if ((delegate != nil) && (delegate.locArray != nil))
        {
            LocInfo *info = (LocInfo*)[delegate.locArray objectAtIndex:indexPath.row];
            cell.locationNameLabel.text = info.locName;
            //cell.bizLocationLabel.text = info.loc;
        }        
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
    //BizLocations *bizLocation = [self.xArray objectAtIndex:indexPath.row];
    //cell.locationNameLabel.text = bizLocation.xLocationName;
    //cell.bizLocationLabel.text = bizLocation.xLocation;
    //cell.locationImage.image = [UIImage imageNamed: [bizLocation.xLocationImage]];
    return cell;
}  

#pragma mark - Table view delegate 
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"I would like to delete row %d", indexPath.row);
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
       /* if ((delegate != nil) && (delegate.locArray != nil))
        {
            LocInfo *info = (LocInfo*)[delegate.locArray objectAtIndex:indexPath.row];
        */
        [delegate.locArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
        
    } 
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // This is where I would add something...
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:nil bundle:nil];
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;    
    LocInfo *bizLocation = (LocInfo*)[delegate.locArray objectAtIndex:indexPath.row];
    detailViewController.xBizLocation = bizLocation;
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    
}



@end
