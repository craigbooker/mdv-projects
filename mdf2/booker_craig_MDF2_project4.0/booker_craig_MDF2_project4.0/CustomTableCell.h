//
//  CustomTableViewCellCell.h
//  Interface Export
//
//  Created by Craig Booker on 7/31/12.
//  Copyright (c) 2012 Less Code Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell


@property (nonatomic, weak) IBOutlet UILabel *movieNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *movieTimesLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@end
