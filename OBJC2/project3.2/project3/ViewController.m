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

-(void)DidClose:(NSString*)newString
{
    if([textView.text isEqualToString:@"No events added!"])
    {
        textView.text = @"";
        outPutText = [NSMutableString stringWithString:textView.text];
        [outPutText appendString:newString];
        textView.text = outPutText;
    }
    else {
        outPutText = [NSMutableString stringWithString:textView.text];
        [outPutText appendString:newString];
        textView.text = outPutText;
    
    }
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
    return true;
}

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
    [super viewWillAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
