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
	
    LocInfo *xBizLocation;
	IBOutlet UILabel *displayText;
	NSString *selectedLocation;
	
}

@property (nonatomic, retain) NSString *selectedLocation;
@property (nonatomic, strong) IBOutlet UIImageView *locationImage;
@property (nonatomic, strong) IBOutlet UILabel *locationNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *bizLocationNameLabel;
@property (strong, nonatomic) NSArray *locationDetails;
@property (nonatomic,retain) LocInfo *xBizLocation;
@end
