//
//  ViewController+TopViewController.m
//  delegate
//
//  Created by Craig Booker on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "secondview.h"
#import "ViewController.h"

@implementation secondview

@synthesize passedValue;

-(IBAction)back:(id)sender {

    ViewController *second = [[ViewController alloc] initWithNibName:nil bundle:nil];  
    [self presentModalViewController:second animated:YES];
    
- (void)viewDidLoad

{
    label.text = passedValue;
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
} 
@end
