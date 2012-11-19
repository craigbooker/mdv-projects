//
//  CustCalViewCell.m
//  booker_craig_project1
//
//  Created by Craig Booker on 8/3/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "CustCalViewCell.h"


@implementation CustCalViewCell
@synthesize calTitleLabel;
@synthesize calImage;

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



#import "CustomTableViewCell.h"

@implementation CustomTableViewCell
@synthesize eventTitleLabel;
@synthesize eventDateLabel;
@synthesize eventImage;

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