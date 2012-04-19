//
//  ViewController.m
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
//@synthesize delegate;


@implementation ViewController

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
-(void) keyboardWillShow: (NSNotification *)notification
{
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect newFrame = CGRectMake(0.0f, textView.frame.origin.y, 320.0f, textView.frame.size.height - keyboardSize.height);
    [textView setFrame:newFrame];
}

-(void) keyboardWillHide: (NSNotification *)notification
{

}

/*
-(void) loadEvents:(NSString *)eventOutput
{
    NSString *_eventOutput;
    _eventOutput = eventOutput; 
    if(_eventOutput != nil)
    {
        NSLog(@"New Event: %@", _eventOutput);
    }
    else 
    {
        NSLog(@"Add some events please!");    
    
    }
}
 */
/*
-(IBAction)onAddEvent:(id)sender
{
    TopViewController *TopViewController = [[TopViewController alloc] initWithNibName:@"topView" bundle:nil];
    if (TopViewController != nil)
    {
        [self presentModalViewController:TopViewController animated:TRUE];
    }
    
}
*/
-(IBAction)onClick:(id)sender
{
    
    TopViewController *topView = [[TopViewController alloc] initWithNibName:@"topView" bundle:nil];
    if (topView != nil)
    {
        [self presentModalViewController:topView animated:true];
     }
    
    
    [textView resignFirstResponder];
}
/*
-(IBAction)onSave:(id)sender
{
    NSString *text = eventTextInput.text;
    if (delegate != nil)
    {
        [delegate PassInfo:text];
        
    }
    [self dismissModalViewControllerAnimated:true];
}
 */
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
