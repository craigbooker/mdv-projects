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
    bool compResult = [self compareNum:5 secondInt:10];
    [self displayAlertWithCompResults:(bool)compResult];
    
    NSMutableString *appendResults = [self appendString:@"I am not sure if" appendStrgTwo:@"this is correct"];
    
    
    [super viewDidAppear:animated];
}


/* ::::::::: Add Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
 This function will take two NSInteger or int types and return the result of an addition between these two.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
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
    return (compIntOne == compIntTwo);
}
    
/* ::::::::: Append Function  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::  
 This function will take two NSStrings and return a new NSString containing the appended strings.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
-(NSMutableString*)appendString:(NSString*)appendStrgOne appendStrgTwo:(NSString*)appendStrgTwo
{
    NSMutableString* result = [[NSMutableString alloc] initWithString:appendStrgOne];
    //result = [result stringByAppendingString:appendStrgOne];
    result = [result stringByAppendingString:appendStrgTwo];
    return result;
}  
/* ::::::::: displayAlertWithAppendResults Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 Called from the append strings function.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */ 

-(void) displayAlertWithAppendResults:(NSMutableString *)appendResult
{

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Appended String" message:(NSMutableString*)appendResult delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
    
}

/* ::::::::: displayAlertWithCompResults Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 Called from the append strings function.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */ 

-(void) displayAlertWithCompResults:(bool)appendResult
{
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Appended String" message:(NSMutableString*)appendResult delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
    
}



/* ::::::::: displayAlertWithNSNumber Function  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 Part of second section of instructions
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */ 
    
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar
{
    NSInteger *aNumber = [numberVar integerValue];    
    NSString tmpMsg = [[NSString alloc] initWithFormat:@"The number is %d" aNumber];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Appended String" message:(NSString*)tmpMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
NSAlertView *
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
