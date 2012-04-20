//
//  ViewController+TopViewController.h
//  delegate
//
//  Created by Craig Booker on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface secondview : UIViewController {    
    
    IBOutlet UILabel *label;  
    NSString *passedValue;
}

@property (nonatomic, retain)NSString *passedValue;

-(IBAction)back:(id)sender;

@end 
