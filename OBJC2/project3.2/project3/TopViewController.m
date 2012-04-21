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
@synthesize closeKeyBoardButton;
@synthesize saveDataButton;
@synthesize myDatePicker;
@synthesize myTextField;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)DidSave:(id)sender
{
    if (delegate != nil)
    {
        if ((myDatePicker != nil) && (myTextField != nil))
        {
            NSDate *date = myDatePicker.date;
            NSLog(@"date=%@", [date description]);
            NSString *textFieldVar = textField.text;
            [delegate DidClose:textFieldVar eventDate:date];
        }
        [self dismissModalViewControllerAnimated:true];
    }
}

- (IBAction)dismissKeyboard:(id)sender {
    [myTextField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [myTextField release];
    myTextField = nil;
    [self setMyTextField:nil];
    [self setCloseKeyBoardButton:nil];
    [self setSaveDataButton:nil];
    [self setMyDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)eventTextField
{
    eventTextField.text = [NSString stringWithString:@""];
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
- (void)dealloc {
    [myTextField release];
    [myTextField release];
    [closeKeyBoardButton release];
    [saveDataButton release];
    [myDatePicker release];
    [super dealloc];
}
@end
/*
 -(IBAction)onCloseKeyBoard:(id)sender
 {
 [self dismissModalViewControllerAnimated:TRUE];
 }
 */