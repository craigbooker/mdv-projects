//
//  ViewController.m
//  project2
//
//  Created by Craig Booker on 4/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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
-(void)viewDidAppear:(BOOL)animated
{
    powerSwitch.on = false;
    //bool isPowerOn = powerSwitch.on;
    
    [super viewDidAppear:animated];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(IBAction)onSwitch:(id)sender
{
    UISwitch *thisSwitch = (UISwitch*)sender;
    if (thisSwitch != nil)
    {
        //int tag = thisSwitch.tag;
        int stateTemp = thisSwitch.state;
        powerSwitch.on = true;
        NSString *temp = [NSString stringWithFormat:@"You turned the calculator %d .", stateTemp];
        NSLog(@"%@", temp);
    }
}

-(IBAction)onDigitClick:(id)sender
{
    currentNum = currentNum*10 + (float)[sender tag];
    calcScreen.text = [NSString stringWithFormat:@"%2f", currentNum];
}



/*  Operation Function  */
-(IBAction)onOpClick:(id)sender
{
    if (currentOp == 0)
    {
        endResult = currentNum;
    } else {
            switch (currentOp) {
                case 1:
                    endResult = endResult + currentNum;
                    break;
                case 2:
                    endResult = endResult - currentNum;
                    break;
                case 3:
                    endResult = endResult * currentNum;
                    break;
                case 4:
                    endResult = endResult / currentNum;
                    break;
                case 5:
                    currentOp = 0;
                    break;
            }
        
    }
    currentNum = 0;
    calcScreen.text = [NSString stringWithFormat:@"%2f", endResult];
    if ([sender tag] == 0) 
    endResult = 0;
    currentOp = [sender tag];
}
-(IBAction)onCancelInput:(id)sender
{}

-(IBAction)onClearAll:(id)sender
{
    currentNum = 0;
    calcScreen.text = @"0";
    currentOp = 0;
    
}
-(IBAction)onInfoClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:TRUE];
    }

}
-(IBAction)onColorClick:(id)sender
{
    
}
@end
