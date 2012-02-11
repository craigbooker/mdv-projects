//
//  ViewController.m
//  practice6
//
//  Created by Craig Booker on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController


-(int)firstFunction
{
        int someInt = 1;
        return someInt;
}   


-(int)addFunction:(int)secondVariable returnValue:(int)returnValue
{
    int tempInt;
    tempInt = (returnValue + secondVariable);
    return tempInt;
} 
-(void)printResults:(int)resultSum
{
    NSLog(@"%d", resultSum);
}



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
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    int returnValue = [self firstFunction];
    secondVariable = 4;
    int resultSum = [self addFunction:secondVariable returnValue:(int)returnValue];
    [self printResults:(int)resultSum];
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
