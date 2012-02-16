//
//  ViewController.m
//  wk3practice7
//
//  Created by Craig Booker on 2/10/12.
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
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{

/* ::::::::: Add Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
 This function will take two NSInteger or int types and return the result of an addition between these two.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

-(NSInteger*)addNum:(NSInteger*)firstInt secondInt:(NSInteger*)secondInt
{
    return (firstInteger + secondInteger);
}  
   
    
/* ::::::::: Compare Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Create a function called Compare that takes two NSInteger values. Return true or false based on whether the values are equa.
Whatever calls this function needs to capture the return value.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */    
-(bool) compareNum:(NSInteger*)compIntOne compIntTwo:(NSInteger*)compIntTwo 
{
    return (compIntOne == compIntTwo);
}
    
/* ::::::::: Append Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  
 This function will take two NSStrings and return a new NSString containing the appended strings.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
-(NSMutableString*)appendString:(NSString*)appendStrgOne appendStrgTwo:(NSString*)appendStrgTwo
{
    NSString *result = [NSString alloc];
    result = [result stringByAppendingString:appendStrgOne];
    result = [result stringByAppendingString:appendStrgTwo];
    return result;
}        
/* ::::::::: displayAlertWithNSNumber Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */ 
    
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar
{
    
}
    
NSNumber *aNumber = [NSNumber numberWithInteger:21];    
NSString *tmpTitle = @"Something went wrong.";    
NSString *tmpMsg = @"Something went wrong.";
    
UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Title" message:(NSString *)tmpMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                                                 
/* if (alertView != nil)
{
[alertView show];
}
*/                                                 
                                                 
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
