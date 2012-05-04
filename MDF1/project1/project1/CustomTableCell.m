//
//  CustomCellView.m
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell
@synthesize sensorLabel;
@synthesize pidLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{

    [super setSelected:selected animated:animated];
    // Do any additional setup after loading the view from its nib.
}

- (void)dealloc {
    [sensorLabel release];
    [super dealloc];
}
@end
