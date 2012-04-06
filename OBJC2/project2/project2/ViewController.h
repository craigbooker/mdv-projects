//
//  ViewController.h
//  project2
//
//  Created by Craig Booker on 4/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *calcScreen;
    IBOutlet UISwitch *powerSwitch;
    int currentOp;
    float currentNumber;
    float endResult;
}
-(IBAction)onInfoClick:(id)sender;
-(IBAction)onSwitch:(id)sender;
-(IBAction)onClearAll:(id)sender;

-(IBAction)onCalcClick:(id)sender;

-(IBAction)onColorClick:(id)sender;


@end
