//
//  ViewController.m
//  accessTest
//
//  Created by Craig Booker on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BaseClass *base = [[BaseClass alloc] init];
    if (base != nil)
    {
        base.intVar1 = 456;
        base.floatVar1 = 456.04;
        base.boolVar1 = 0;
        
        NSLog(@"intValue= %d, floatValue= %f, boolValue= %d", base.intVar1, base.floatVar1, base.boolVar1);


        
        /*  Using selfmade getter and setter
        int tempValue = [base getTemp];
        [base setTemp:456];
        
        tempValue = [base getTemp];
        */
        
        
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
