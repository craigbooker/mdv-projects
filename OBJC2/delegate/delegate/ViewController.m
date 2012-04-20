//
//  ViewController.m
//  delegate
//
//  Created by Craig Booker on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "secondview.h"

@implementation ViewController

@synthesize secondviewData;

-(IBAction)passData:(id)sender {
    
    secondview *second = [[secondview alloc] initWithNibName:nil bundle:nil];  
    [self presentModalViewController:second animated:YES];
    self.secondviewData = second; 
    
    secondviewData.passedValue = textfield.text;
    
    [self presentModalViewController:second animated:YES];
    
}
@end
