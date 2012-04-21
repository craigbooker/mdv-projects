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
        UIDatePicker * picker = (UIDatePicker*)sender;
        if (picker != nil)
        {
            NSDate *date = picker.date;
            NSLog(@"date=%@", [date description]);
            NSString *textFieldVar = textField.text;
            [delegate DidClose:textFieldVar];
        }    

    }
    
    [self dismissModalViewControllerAnimated:true];
}
-(IBAction)CloseKeyboard:(id)sender
{
    [closeKeyBoardButton resignFirstResponder];
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
@end
/*
 -(IBAction)onCloseKeyBoard:(id)sender
 {
 [self dismissModalViewControllerAnimated:TRUE];
 }
 */