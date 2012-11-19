//
//  ViewController.m
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "ViewController.h"
#import "MyEventData.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "CalendarViewController.h"
#import <EventKit/EventKit.h>

@implementation ViewController
@synthesize tableView1Data;
@synthesize eventTitleList;
@synthesize eventDateList;
@synthesize eventLocationList;
@synthesize xDataArray;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Events", @"Events");
        self.tabBarItem.image = [UIImage imageNamed:@"List_TabIcon.png"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    /*UIBarButtonItem *topRightButton = [[UIBarButtonItem alloc] initWithTitle:@"Calendars" style:UIBarButtonItemStylePlain target:self action:@selector(onClick)]; */
  /*  
        UIBarButtonItem *topRightButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEditState)];
    */
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    //= @"AutoApp";
    //self.navigationItem.rightBarButtonItem = topRightButton;
    self.eventTitleList = [[NSMutableArray alloc] initWithObjects:
                           @"Rotate Tires Jan", @"Rotate Tires Jon", @"Change Oil Jan", @"Change Oil Jon", @"Change Brakes Jan", @"Change Brakes Jon", @"Change Air Filter", @"Change Air Filter", @"Rotate Tires Jan", @"Rotate Tires Jan",nil];
    self.eventLocationList = [[NSMutableArray alloc] initWithObjects: @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK" ,nil];
    self.eventDateList = [[NSMutableArray alloc] initWithObjects: @"2012-09-12 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", @"2012-10-05 12:00", nil];
    
    self.xDataArray = [NSMutableArray array];
    int eventCount = [self.eventTitleList count];
    
	for( int i=0; i<eventCount; i++ )
	{
        MyEventData *myEventData = [[MyEventData alloc] init];
        myEventData.xEventTitle = [self.eventTitleList objectAtIndex:i];
        myEventData.xEventLocation = [self.eventLocationList objectAtIndex:i];
        myEventData.xEventDate = [self.eventDateList objectAtIndex:i];
        //myEventData.xEventTime = [self.eventTimeList objectAtIndex: i];
        [self.xDataArray addObject:myEventData];
        //NSLog(@"%@", [self.xDataArray objectAtIndex:i]);
    }
        [super viewDidLoad];
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return xDataArray.count;  
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        for (UIView *view in views)
        {
            
            if([view isKindOfClass:[CustomTableViewCell class]])
            {
                cell = (CustomTableViewCell*)view;
                cell.eventTitleLabel.text = [eventTitleList objectAtIndex:indexPath.row];
                NSString *dateStr = [eventDateList objectAtIndex:indexPath.row];
                //NSLog(@"Look no hands %@", dateStr);
                NSDateFormatter *dtF = [[NSDateFormatter alloc] init];
                [dtF setDateFormat:@"yyyy-MM-dd HH:mm"];
                cell.eventDateLabel.text = dateStr;

                
            }
        }
        MyEventData *eventData = [self.xDataArray objectAtIndex:indexPath.row];
        cell.eventTitleLabel.text = eventData.xEventTitle;
        NSDate *dateRawStr = eventData.xEventDate;
        //NSLog(@"First Go: %@", dateRawStr);
        cell.eventDateLabel.text = dateRawStr;
        //cell.eventTimeLabel.text = eventData.xEventTime;
        //cell.eventImage.image = [UIImage imageNamed: [eventData.xEventImage]];
    }
    
    return cell;
} 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailViewController = [[DetailViewController alloc] init]; 
    if (detailViewController != nil)
    {
        MyEventData *selectedEvent = [self.xDataArray objectAtIndex:indexPath.row];
        detailViewController.xEventData = selectedEvent;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
}
-(IBAction)onClick:(id)sender {
    CalendarViewController *calendarViewController = [[CalendarViewController alloc] init];
    [self.navigationController pushViewController:calendarViewController animated:YES];
}
@end
