//
//  ViewController.h
//  practice8
//
//  Created by Craig Booker on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UIPickerView *pickerView;
}
-(IBAction)onClick:(id)sender;

-(IBAction)GetPickerText:(id)sender;
@end
