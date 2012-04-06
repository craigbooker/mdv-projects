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
    self.view.backgroundColor = [UIColor whiteColor];
    
    powerSwitch.on = true;

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
    //int selectedIndex = segmentControl.selectedSegmentIndex;
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
                        result += currentNum;
                        break;
                case 2:
                        result -= currentNum;
                        break;
                case 3:
                        result *= currentNum;
                        break;
                case 4:
                        result /= currentNum;
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
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedIndex = segControl.selectedSegmentIndex;
        NSLog(@"%d", selectedIndex);
         switch (selectedIndex) {
         case 0:
         self.view.backgroundColor = [UIColor whiteColor];
         break;
         
         case 1:
         self.view.backgroundColor = [UIColor blueColor];
         break;
         
         case 2:
         self.view.backgroundColor = [UIColor greenColor];
         break;
         
         default:
         self.view.backgroundColor = [UIColor whiteColor];
         break;
         }
    }
   
}
@end


