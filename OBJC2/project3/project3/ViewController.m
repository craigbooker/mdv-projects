//
//  ViewController.m
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"

@implementation ViewController

@synthesize delegate;

-(IBAction)onClick:(id)sender
{
    TopViewController *topView = [[TopViewController alloc] initWithNibName:@"TopView" bundle:nil];
    if (topView != nil)
    {
        topView.delegate = self;
        [self presentModalViewController:topView animated:true];
    }
    [textView resignFirstResponder];
}

-(void)DidClose:(NSString*)eventInfo
{
    textView.text = eventInfo;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
}
/*
-(void) keyboardWillShow: (NSNotification *)notification
    {
        CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
        CGRect newFrame = CGRectMake(0.0f, textView.frame.origin.y, 320.0f, textView.frame.size.height - keyboardSize.height);
        [textView setFrame:newFrame];
    }

-(void) keyboardWillHide: (NSNotification *)notification
{
    
} 
 */
- (void)viewDidLoad
{
    //[ViewController loadEvents];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:animated];
    
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
