//
//  CustomCellView.m
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SensorTableViewCell.h"

@implementation SensorTableViewCell
{}
@synthesize sensorLabel;
@synthesize pidLabel;
@synthesize sensorImage;

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
    [sensorLabel release];
    [pidLabel release];
    [super dealloc];
}
@end
