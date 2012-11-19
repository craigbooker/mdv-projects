//
//  LocationViewController.m
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WebViewController.h"
#import "MainViewController.h"
#import "MyTweet.h"
#import "AppDelegate.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize listViewMap;
@synthesize locationViewArray;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Source", @"Source");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
}

-(void) viewWillAppear: (BOOL)animated
{
    [super viewWillAppear:TRUE];
 
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [locationViewArray setArray:nil];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end