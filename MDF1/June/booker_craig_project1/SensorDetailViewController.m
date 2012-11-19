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
@synthesize sensorTextField = _sensorTextField;
@synthesize pidTextField = _pidTextField;
@synthesize sensorDetailName = _sensorDetailName;

- (void)viewDidLoad
{
    [super viewDidLoad];
    editMode = FALSE;    
    self.sensorLabel.text = [self.sensorDetailName objectAtIndex:0];
    self.pidLabel.text = [self.sensorDetailName objectAtIndex:1];
    self.imageView.image = [UIImage imageNamed:[self.sensorDetailName objectAtIndex:2]];
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
-(void)onEdit
{
    int temp = 3;
}
@end
