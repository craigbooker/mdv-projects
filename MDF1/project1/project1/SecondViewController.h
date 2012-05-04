//
//  SecondView.h
//  project1
//
//  Created by Craig Booker on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SecondViewController : UIViewController
{
    IBOutlet UITextView *secondTextView;
}

-(IBAction)onClose:(id)sender;
@end
