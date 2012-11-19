//
//  CarTableViewCell.h
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UIImageView *carImage;
@property (nonatomic, strong) IBOutlet UILabel *makeLabel;
@property (nonatomic, strong) IBOutlet UILabel *modelLabel;
@end