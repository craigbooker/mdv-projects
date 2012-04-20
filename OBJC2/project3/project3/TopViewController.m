//
//  topViewController.m
//  project3
//
//  Created by Craig Booker on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TopViewController.h"
#import "ViewController.h"

@implementation TopViewController
//@synthesize delegate;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
    return true;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self dismissModalViewControllerAnimated:true];
    return true;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
/*
 -(IBAction)onCloseKeyBoard:(id)sender
 {
 [self dismissModalViewControllerAnimated:TRUE];
 }
 */