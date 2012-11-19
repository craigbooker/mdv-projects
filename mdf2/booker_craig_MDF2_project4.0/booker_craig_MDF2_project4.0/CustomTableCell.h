//
//  CustomTableViewCellCell.h
//  Interface Export
//
//  Created by Craig Booker on 7/31/12.
//  Copyright (c) 2012 Less Code Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
{
    IBOutlet UILabel *eventTitleLabel;
    IBOutlet UILabel *eventDateLabel;
    IBOutlet UIImageView *eventImage;
}

@property (nonatomic, strong) IBOutlet UILabel *eventTitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *eventDateLabel;
@property (nonatomic, strong) IBOutlet UIImageView *eventImage;
@end
