//
//  CarDetailViewController.m
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CarDetailViewController.h"

@implementation CarDetailViewController
@synthesize makeLabel = _makeLabel;
@synthesize modelLabel = _modelLabel;
@synthesize imageView = _imageView;
@synthesize carDetailModel = _carDetailModel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.makeLabel.text = [self.carDetailModel objectAtIndex:0];
    self.modelLabel.text = [self.carDetailModel objectAtIndex:1];
    self.imageView.image = [UIImage imageNamed: 
                            [self.carDetailModel objectAtIndex:2]];
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
