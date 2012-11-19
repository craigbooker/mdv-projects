//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sensors.h"

@interface DetailViewController : UIViewController {
	
    Sensors *xSensor;
	IBOutlet UILabel *displayText;
	NSString *selectedSensor;
	
}

@property (nonatomic, retain) NSString *selectedSensor;
@property (nonatomic, strong) IBOutlet UIImageView *sensorImage;
@property (nonatomic, strong) IBOutlet UILabel *sensorLabel;
@property (nonatomic, strong) IBOutlet UILabel *pidValueLabel;
@property (strong, nonatomic) NSArray *sensorDetails;
@property (nonatomic,retain) Sensors *xSensor;
@end
