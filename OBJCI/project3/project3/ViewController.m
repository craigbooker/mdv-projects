//
//  ViewController.m
//  project3
//
//  Created by Craig Booker on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (void)viewDidAppear
{
/* ::::::::: Add Function  :::::::::  
 This function will take two NSInteger or int types and return the result of an addition between these two.
 
 
 
 
 */

- (NSInteger)addFunction
//-(NSInteger)addFunction:firstInteger:(NSInteger)firstInteger secondInteger:(NSInteger)secondInteger
{
    (NSInteger) *temp;
    temp = *((firstInteger + secondInteger));
    NSLog(@"Sum of two args = %d", temp);
    return temp;
}

/* ::::::::: Compare Function  :::::::::  
 Create a function called Compare that takes two NSInteger values. Return true or false based on whether the values are equal.
 
 - (bool)compare:(int)firstInteger secondInteger
 {
 if (firstInt == secondInt) 
 {
 isTrue = true;
 } 
 else
 isTrue = false;
 
 }
 return isTrue;
 
 */



/* ::::::::: Append Function  :::::::::  
 This function will take two NSStrings and return a new NSString containing the appended strings.
 - (NSString)append:(NSString)firstString (NSString)secondString
 {
 
 }
 
*/

    [super viewDidAppear];
}
@end
