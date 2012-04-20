//
//  ViewController.h
//  delegate
//
//  Created by Craig Booker on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondview.h"

@interface ViewController : UIViewController {
    
    secondview *secondviewData;
    
    IBOutlet UITextField *textfield;
    
} 
@property (nonatomic, retain)secondview*secondviewData;

-(IBAction)passData:(id)sender; 

@end