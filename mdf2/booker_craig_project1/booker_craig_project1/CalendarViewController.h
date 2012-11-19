//
//  CalendarViewController.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <EventKit/EventKit.h>
#import "MyEventData.h"

@interface CalendarViewController : UIViewController {
    EKCalendar *xCalDataArray;
    NSArray *xCalendars;
    int calendarCount;
}
@property (nonatomic, retain) NSMutableArray *tableView1Data;
@property (nonatomic, retain) EKCalendar *xCalDataArray;
@property (nonatomic, retain) NSArray *xCalendars;
//@property (nonatomic, strong) int calendarCount;
@end
