//
//  CustomTableViewCellCell.h
//  Interface Export
//
//  Created by Craig Booker on 7/31/12.
//  Copyright (c) 2012 Less Code Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarTableViewCell : UITableViewCell
{
    IBOutlet UILabel *calendarTitleLabel;
    IBOutlet UIImageView *calendarImage;
}

@property (nonatomic, strong) IBOutlet UILabel *calendarTitleLabel;
@property (nonatomic, strong) IBOutlet UIImageView *calendarImage;
@end
