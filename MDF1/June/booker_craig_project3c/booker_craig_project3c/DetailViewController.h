//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocInfo.h"

@interface DetailViewController : UIViewController {
	
    LocInfo *xLocation;
	IBOutlet UILabel *displayText;
	NSString *selectedLocation;
	
}

@property (nonatomic, retain) NSString *selectedLocation;
//@property (nonatomic, strong) IBOutlet UIImageView *sensorImage;
@property (nonatomic, strong) IBOutlet UILabel *locationName;
@property (nonatomic, strong) IBOutlet UILabel *locationCoordValue;
@property (strong, nonatomic) NSArray *locationDetails;
@property (nonatomic,retain) LocInfo *xLocation;
@end
