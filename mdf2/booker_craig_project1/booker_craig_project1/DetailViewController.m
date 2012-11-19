//
//  DetailViewController.m
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@implementation DetailViewController
@synthesize xEventData;
@synthesize savedEventTitle;
@synthesize savedEventDate;
@synthesize savedEventLocation;
@synthesize savedEventTime;
@synthesize eventDetailImage;
@synthesize eventTitleLabel;
@synthesize eventLocationLabel;
@synthesize eventDateLabel;
//@synthesize eventTimeLabel;


- (void)viewDidLoad {
    /*
    savedEventTitle = xEventData.xEventTitle;
    savedEventDate = xEventData.xEventDate;
    savedEventTime = xEventData.xEventTime;
    savedEventLocation = xEventData.xEventLocation;
     */
    [super viewDidLoad];
}
- (void)viewDidUnload {
    [super viewDidUnload];
}
- (void)viewWillAppear:(BOOL)animated {
    
    savedEventTitle = self.xEventData.xEventTitle;
    NSString *eventTitleText = [[NSString alloc] initWithFormat:@"Event: %@", savedEventTitle];
    savedEventLocation = self.xEventData.xEventLocation;
    NSString *eventLocationText = [[NSString alloc] initWithFormat:@"Location: %@", savedEventLocation];    
    savedEventDate = self.xEventData.xEventDate;
    NSString *eventDateText = [[NSString alloc] initWithFormat:@"Date: %@", savedEventDate];
    eventTitleLabel.text = eventTitleText;
    eventLocationLabel.text = eventLocationText;
    eventDateLabel.text = eventDateText;

    
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}


@end
