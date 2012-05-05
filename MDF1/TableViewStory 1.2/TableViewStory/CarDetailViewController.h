//
//  CarDetailViewController.h
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarDetailViewController : UIViewController

@property (strong, nonatomic) NSArray *sensorDetailName;
@property (strong, nonatomic) IBOutlet UILabel *sensorLabel;
@property (strong, nonatomic) IBOutlet UILabel *pidLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@end
