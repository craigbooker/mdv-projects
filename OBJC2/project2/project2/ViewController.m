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
    powerSwitch.on = true;
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
        //powerSwitch.on = true;
        NSString *temp = [NSString stringWithFormat:@"You turned the calculator %d .", stateTemp];
        NSLog(@"%@", temp);
    }
    else {
        NSLog(@"Hello");
    
    }
}

-(IBAction)onDigitClick:(id)sender
{
if (powerSwitch.on != false)
    {
        currentNum = currentNum + (float)[sender tag];
        calcScreen.text = [NSString stringWithFormat:@"%2f", currentNum];
    } 
}    
/*  Operation Function  */
-(IBAction)onOpClick:(id)sender
{
    if (currentOperator == 0)
    {
        result = currentNum;
    } else {
            switch (currentOperator) {
                case 1:
                        result = result + currentNum;
                        break;
                case 2:
                        result = result - currentNum;
                        break;
                case 3:
                    result = result * currentNum;
                    break;
                case 4:
                    result = result / currentNum;
                    break;
                case 5:
                    currentOperator = 0;
                    break;
            }
        
    }
    currentNum = 0;
    calcScreen.text = [NSString stringWithFormat:@"%2f", result];
    if ([sender tag] == 0) 
    result = 0;
    currentOperator = [sender tag];
}

-(IBAction)onCancelInput:(id)sender
{
    currentNum = 0;
    calcScreen.text = @"0";

}

-(IBAction)onClearAll:(id)sender
{
    currentNum = 0;
    calcScreen.text = @"0";
    currentOperator = 0;
    
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

    UISegmentedControl *thisColorControl = (UISegmentedControl*)sender;
    if (thisColorControl != nil)
    {
        int colorTag = thisColorControl.tag;
 
    switch (colorTag) {
            case 0:
             self.view.backgroundColor = [UIColor greenColor];
                break;
            case 1:
            self.view.backgroundColor = [UIColor blueColor];
                break;
            case 2:
            self.view.backgroundColor = [UIColor greenColor];
                break;
            default:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        }
        
    }
   
}
@end
