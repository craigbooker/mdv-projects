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
    NSInteger result = [self addNum:5 secondInt:10];
    NSNumber *aNumber = [NSNumber numberWithInt:result];
    [self displayAlertWithNSNumber:aNumber];
    bool compResult = [self compareNum:5 compIntTwo:10]; /* I realize the compResult var is not used.  I thought it was needed to fullfill requirements. */
    NSString *appendResult = [self appendString:@"We will see" appendStringTwo:@"if this works."]; /* I realize the appendResult var is not used.  I thought it was needed to fullfill requirements. */

    [super viewDidAppear:animated];
}
//  ::::::::: Add Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
// This function will take two NSInteger or int types and return the result of an addition between these two.
// ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
-(NSInteger)addNum:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    return (firstInt + secondInt);
}
/* ::::::::: Compare Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Create a function called Compare that takes two NSInteger values. Return true or false based on whether the values are equa.
Whatever calls this function needs to capture the return value.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */    
-(bool) compareNum:(NSInteger)compIntOne compIntTwo:(NSInteger)compIntTwo 
{
    bool resultsofComp = (compIntOne == compIntTwo);
    NSString *stringResult = [NSString stringWithFormat: @"The compare result is  %@", resultsofComp ? @"TRUE" : @"FALSE"];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert for Compare Results" message:(NSString*)stringResult delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }

    return resultsofComp;
}
    
/* ::::::::: Append Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  
 This function will take two NSStrings and return a new NSString containing the appended strings.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
-(NSString*)appendString:(NSString*)appendStringOne appendStringTwo:(NSString*)appendStringTwo
{
    NSString *result = [[NSString alloc] initWithFormat:@"%@ %@", appendStringOne, appendStringTwo];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Appended String" message:(NSString*)result delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }

    return result;
}  




/* ::::::::: displayAlertWithNSNumber Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 Part of second section of instructions
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */ 
    
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar
{
    NSInteger aNumber = [numberVar integerValue];    
    NSString *tmpMsg = [[NSString alloc] initWithFormat:@"The number is %d", aNumber];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert with NSNumber" message:(NSString*)tmpMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
     {
     [alertView show];
     }
          
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
