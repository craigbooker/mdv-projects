//
//  CalendarTableViewCell.m
//  Interface Export
//
//  Created by Craig Booker on 7/31/12.


#import "CalendarTableViewCell.h"

@implementation CalendarTableViewCell
@synthesize calendarTitleLabel;
@synthesize calendarImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
