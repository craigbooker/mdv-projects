//
//  ViewController.m
//  wk4practice8
//
//  Created by Craig Booker on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
    button.frame = CGRectMake(10.0f, 10.0f, 80.0f, 40.0f);
    [button setTitle:@"Push Me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onClick) forControlEvents: UIControlEventTouchUpInside];
    
     [self.view addSubview:button];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)onClick
{
     UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Popup!" message:@"You hit my button" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
     
     if(alertView != nil)
     {
         [alertView show];
     }
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

@end
