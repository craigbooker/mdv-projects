//
//  CarDetailViewController.m
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SensorDetailViewController.h"

@implementation SensorDetailViewController
@synthesize sensorLabel = _sensorLabel;
@synthesize pidLabel = _pidLabel;
@synthesize imageView = _imageView;
@synthesize sensorDetailModel = _sensorDetailModel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sensorLabel.text = [self.sensorDetailModel objectAtIndex:0];
    self.pidLabel.text = [self.sensorDetailModel objectAtIndex:1];
    self.imageView.image = [UIImage imageNamed: 
                            [self.sensorDetailModel objectAtIndex:2]];
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

@end
