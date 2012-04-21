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
-(IBAction)DidSave:(id)sender;
@property (strong) id<testDelegate> delegate;

@end
