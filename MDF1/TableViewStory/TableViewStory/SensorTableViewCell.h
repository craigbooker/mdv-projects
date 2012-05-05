//
//  CarTableViewCell.h
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SensorTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *sensorImage;
@property (nonatomic, strong) IBOutlet UILabel *sensorLabel;
@property (nonatomic, strong) IBOutlet UILabel *pidLabel;
@end
