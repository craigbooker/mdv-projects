//
//  DetailViewController.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>
#import "MyEventData.h"
#import <QuartzCore/QuartzCore.h>

@interface DetailViewController : UIViewController {
    MyEventData *xEventData;
    
    NSString *savedEventTitle;
    NSDate *savedEventDate;
    NSDate *savedEventTime;
    NSString *savedEventLocation;
    IBOutlet UIImageView *eventDetailImage;
    IBOutlet UILabel *eventTitleLabel;
    IBOutlet UILabel *eventLocationLabel;
    IBOutlet UILabel *eventDateLabel;
    //IBOutlet UILabel *eventTimeLabel;
}

@property (nonatomic,retain)MyEventData *xEventData; 
@property (nonatomic, strong)NSString *savedEventTitle;
@property (nonatomic, strong)NSDate *savedEventDate;
@property (nonatomic, strong)NSDate *savedEventTime;
@property (nonatomic, strong)NSString *savedEventLocation;
@property (nonatomic, strong) IBOutlet UIImageView *eventDetailImage;
@property (nonatomic, strong)IBOutlet UILabel *eventTitleLabel;
@property (nonatomic, strong)IBOutlet UILabel *eventLocationLabel;
@property (nonatomic, strong)IBOutlet UILabel *eventDateLabel;
//@property (nonatomic, strong)IBOutlet UILabel *eventTimeLabel;

@end
