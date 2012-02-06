//
//  ViewController.m
//  wk2Practice4
//
//  Created by Craig Booker on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 100.0f)];
    if (label1 != nil)
    {
    label1.backgroundColor = [UIColor redColor];
    label1.text = @"This is my label 1 text";
    label1.textAlignment = UITextAlignmentCenter;
    label1.numberOfLines = 7;
    label1.textColor = [UIColor blueColor];

    }
    [self.view addSubview:label1];
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 200.0f, 100.0f)];

    if (label2 != nil)
    {    
    label2.backgroundColor = [UIColor greenColor];
    label2.text = @"This is my label 2 text";
    label2.textAlignment = UITextAlignmentCenter;
    label2.numberOfLines = 7;
    label2.textColor = [UIColor blueColor];
    }
    [self.view addSubview:label2];
    
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 210.0f, 200.0f, 100.0f)];

    if (label3 != nil)
    {
    label3.backgroundColor = [UIColor blackColor];
    label3.text = @"This is my label 3 text";
    label3.textAlignment = UITextAlignmentCenter;
    label3.numberOfLines = 7;
    label3.textColor = [UIColor blueColor];
    }
    [self.view addSubview:label3];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
