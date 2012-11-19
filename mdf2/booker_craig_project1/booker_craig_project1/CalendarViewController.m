//
//  CalendarViewController.m
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "CalendarViewController.h"
#import "CustCalViewCell.h"
#import "MyEventData.h"


@implementation CalendarViewController
@synthesize tableView1Data;
@synthesize xCalDataArray;
@synthesize xCalendars;
//@synthesize calendarTitleLabel;
//@synthesize calendarCount;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Calendars", @"Calendars");
        self.tabBarItem.image = [UIImage imageNamed:@"Calendar_Image.png"];
    }
    return self;
}

- (void)viewDidLoad {
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    self.title = NSLocalizedString(@"Calendars", @"Calendars");
    
    EKEventStore *eventStore = [[EKEventStore alloc] init];
    if (eventStore != nil)
    {
        NSArray *calendars = [eventStore calendars];
        //xCalendars = [eventStore calendars]; 
        //xCalendars = calendars;
        calendarCount = [calendars count];
        if (calendars != nil)
        {
            for (int i=0; i<[calendars count]; i++)
            {
                EKCalendar *calendar = [calendars objectAtIndex:i];
                xCalDataArray = [calendars objectAtIndex:i];
                NSLog(@"%@", calendar.title);
                NSLog(@"Some array %@", xCalDataArray.title);
            }
        }

    }
    [super viewDidLoad];
}





- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return calendarCount;  
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustCalViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[CustCalViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustCalViewCell" owner:nil options:nil];
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustCalViewCell class]])
            {
                cell = (CustCalViewCell*)view;
                cell.calTitleLabel.text = xCalDataArray.title;
            }
        }
        cell.calTitleLabel.text = xCalDataArray.title;
  
    }
    return cell;
} 
 
@end
