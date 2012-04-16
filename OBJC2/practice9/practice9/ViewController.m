//
//  ViewController.m
//  practice9
//
//  Created by Craig Booker on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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
-(IBAction)onChange:(id)sender
{
    UIDatePicker * picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        NSTimeInterval duration = picker.countDownDuration;
        NSLog(@"duration=%f", duration);
        /*
        NSDate *date = picker.date;
        NSLog(@"date=%@", [date description]);
*/
    }
}
@end
