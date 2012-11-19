//
//  ImageCapViewController.m
//  booker_craig_mdf2_project3
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "ImageCapViewController.h"


@implementation ImageCapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"videoCamera.png"];
        self.tabBarItem.title = NSLocalizedString(@"Movie", @"Movie");
        // Custom initialization
    }
    return self;
}
-(IBAction)onClick:(id)sender
{
    
}
@end
