//
//  TopViewController.h
//  project3
//
//  Created by Craig Booker on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface TopViewController : UIViewController
{
    IBOutlet UITextField *textField;
    
}
@property (retain, nonatomic) IBOutlet UIButton *closeKeyBoardButton;
@property (retain, nonatomic) IBOutlet UIButton *saveDataButton;
@property (retain, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (retain, nonatomic) IBOutlet UITextField *myTextField;
-(IBAction)DidSave:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;

@property (strong) id<testDelegate> delegate;

@end