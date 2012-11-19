//
//  TweetDetailView.m
//  project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TweetDetailView.h"
#import "ViewController.h"
#import "Tweet.h"
#import "AppDelegate.h"

@interface TweetDetailView ()

@end

@implementation TweetDetailView
@synthesize myTweetDetailView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


@end