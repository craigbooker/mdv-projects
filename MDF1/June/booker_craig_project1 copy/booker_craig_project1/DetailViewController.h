//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController {
	
	IBOutlet UILabel *displayText;
	NSString *selectedSensor;
	
}

@property (nonatomic, retain) NSString *selectedSensor;


@end
