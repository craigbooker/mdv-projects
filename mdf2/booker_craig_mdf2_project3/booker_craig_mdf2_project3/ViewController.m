//
//  ViewController.m
//  booker_craig_mdf2_project3
//
//  Created by Craig Booker on 8/12/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"List_TabIcon.png"];
        self.tabBarItem.title = NSLocalizedString(@"Instructions", @"Instructions");
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
     self.navigationController.navigationBar.tintColor=[UIColor blackColor];
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

@end
