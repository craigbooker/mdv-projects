//
//  ThirdViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import <MapKit/MapKit.h>
#import "locationViewController.h"
//#import "CustomTableViewCell.h"
#import "DetailViewController.h"

#import "MyAnnotation.h"
#import "AppDelegate.h"

@implementation MainViewController
@synthesize mainViewArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Locations", @"Locations");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIBarButtonItem *topRightButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEditState)];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    
    self.navigationItem.rightBarButtonItem = topRightButton;

    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate dispLocArray];
    mainViewArray = appDelegate.mainArray;
    
    CLLocationCoordinate2D alabamaLocation;
    alabamaLocation.latitude = 32.35f;
    alabamaLocation.longitude = -86.28f;

    CLLocationCoordinate2D alaskaLocation;
    alaskaLocation.latitude = 58.30f;
    alaskaLocation.longitude = -116.222777f;  

    CLLocationCoordinate2D arizonaLocation;
    arizonaLocation.latitude = 33.54f;
    arizonaLocation.longitude = -134.42f;
    
    CLLocationCoordinate2D arkansasLocation;
    arkansasLocation.latitude = 34.72f;
    arkansasLocation.longitude = -112.07f;
    
    CLLocationCoordinate2D californiaLocation;
    californiaLocation.latitude = 38.57f;
    californiaLocation.longitude = -92.35f;
    
    CLLocationCoordinate2D coloradoLocation;
    coloradoLocation.latitude = 39.77f;
    coloradoLocation.longitude = -121.47f;
    
    CLLocationCoordinate2D connecticutLocation;
    connecticutLocation.latitude = 41.77f;
    connecticutLocation.longitude = -104.87f;
    
    CLLocationCoordinate2D delawareLocation;
    delawareLocation.latitude = 39.13f;
    delawareLocation.longitude = -72.68f;
    
    CLLocationCoordinate2D floridaLocation;
    floridaLocation.latitude = 30.4383f;
    floridaLocation.longitude = -84.2828f;
    
    CLLocationCoordinate2D georgiaLocation;
    georgiaLocation.latitude = 33.75010f;
    georgiaLocation.longitude = -84.38848f;    
    
    MyAnnotation *annotation1 = [[MyAnnotation alloc] init]; 
    annotation1.title=@"Shorty's Car Care";
    annotation1.location=@"Montgomery, AL";
    annotation1.coordinate=alabamaLocation;
    
    MyAnnotation *annotation2 = [[MyAnnotation alloc] init]; 
    annotation2.title=@"Fine Touch Repair";
    annotation2.location=@"Juneau, AK";
    annotation2.coordinate=alaskaLocation; 
    
    
    MyAnnotation *annotation3 = [[MyAnnotation alloc] init]; 
    annotation3.title=@"180 Degrees Automotive";
    annotation3.location=@"Phoenix, AZ";
    annotation3.coordinate=arizonaLocation; 
    
    
    MyAnnotation *annotation4 = [[MyAnnotation alloc] init];
    annotation4.title=@"Foster Garage, Inc.";
    annotation4.location=@"Little Rock, AR";
    annotation4.coordinate=arkansasLocation; 
    
    
    MyAnnotation *annotation5 = [[MyAnnotation alloc] init]; 
    annotation5.title=@"DRJ Performance Automotive";
    annotation5.location=@"Sacramento, CA";
    annotation5.coordinate=californiaLocation; 
    
   
    MyAnnotation *annotation6 = [[MyAnnotation alloc] init];
    annotation6.title=@"Strictly Automotive";
    annotation6.location=@"Denver, CO";
    annotation6.coordinate=coloradoLocation;    
    
    MyAnnotation *annotation7 = [[MyAnnotation alloc] init]; 
    annotation7.title=@"Reliable Auto Tire Co Inc";
    annotation7.location=@"Hartford, CT";
    annotation7.coordinate=connecticutLocation;    
    
    MyAnnotation *annotation8 = [[MyAnnotation alloc] init];    
    annotation8.title=@"Still's Body Shop";
    annotation8.location=@"Dover, DE";
    annotation8.coordinate=delawareLocation;    
    
    MyAnnotation *annotation9 = [[MyAnnotation alloc] init];
    annotation9.title=@"Rising Sun Imported Auto Repairs";
    annotation9.location=@"Tallahassee, FL";
    annotation9.coordinate=floridaLocation;    
   
    MyAnnotation *annotation10 = [[MyAnnotation alloc] init];     
    annotation10.title=@"Professional Automotive Repair";
    annotation10.location=@"Atlanta, GA";
    annotation10.coordinate=georgiaLocation;    

/*
    xArray = [[NSMutableArray alloc] initWithObjects:annotation1, annotation2, annotation3, annotation4, annotation5, annotation6, annotation7, annotation8, annotation9, annotation10, nil];
    */
    
    [mainViewArray addObject:annotation1];
    [mainViewArray addObject:annotation2];
    [mainViewArray addObject:annotation3];
    [mainViewArray addObject:annotation4];    
    [mainViewArray addObject:annotation5];    
    [mainViewArray addObject:annotation6];    
    [mainViewArray addObject:annotation7];    
    [mainViewArray addObject:annotation8];    
    [mainViewArray addObject:annotation9];    
    [mainViewArray addObject:annotation10];  
    
    NSLog(@"from appDelegate : %i",appDelegate.mainArray.count);
    NSLog(@"copied array from appDelegate : %i",mainViewArray.count);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}    
    
-(void)toggleEditState
{
    [myMapTableView setEditing:!myMapTableView.editing animated:YES];
    if (myMapTableView.editing)
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    }
    else {
        [self.navigationItem.rightBarButtonItem setTitle:@"Edit"];
    }


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
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mainViewArray.count;  
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) 
    {
        [mainViewArray removeObjectAtIndex:indexPath.row];
        NSLog(@"I would like to delete row %d", mainViewArray.count);
        [myMapTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    } 
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // This is where I would add something...
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    MyAnnotation *myLocation = [mainViewArray objectAtIndex:indexPath.row];
    cell.textLabel.text = myLocation.title;
    return cell;
}    
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[CustomTableViewCell alloc] initWithStyle:[UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]];
                NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
                for (UIView *view in views)
                {
                    
                    if([view isKindOfClass:[CustomTableViewCell class]])
                    {
                        cell = (CustomTableViewCell*)view;
                    }
                }    
    }
    MyAnnotation *myLocation = [self.xArray objectAtIndex:indexPath.row];
    cell.locationNameLabel.text = myLocation.title;
    cell.bizLocationLabel.text = myLocation.location;
    return cell;
}  
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *myDetailMap = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:nil];
    if(myDetailMap != nil)
    {
        [self.navigationController pushViewController:myDetailMap animated:YES];
        MyAnnotation *showCoordDetails = [mainViewArray objectAtIndex:indexPath.row];
        [myDetailMap showMyMap:showCoordDetails.coordinate title:showCoordDetails.title];
    }

}


@end
