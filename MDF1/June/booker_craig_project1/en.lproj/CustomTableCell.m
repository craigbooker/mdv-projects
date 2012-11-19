//
//  CustomTableCell.m
//  WindowTabBar
//
//  Created by Craig Booker on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell
@synthesize sensorLabel = _sensorLabel;
@synthesize pidLabel = _pidLabel;
@synthesize sensorImage = _sensorImage;

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
