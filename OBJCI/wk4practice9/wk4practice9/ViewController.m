//
//  ViewController.m
//  wk4practice9
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
    NSDate* date = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init]autorelease];
    if (dateFormatter != nil)
    {
        //[dateFormatter setDateFormat:@"EEE yyyy.MM.dd ZZZ"];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        NSString* str = [dateFormatter stringFromDate:date];
        NSLog(str);
        [dateLabel setText:str];
    }

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

@end
