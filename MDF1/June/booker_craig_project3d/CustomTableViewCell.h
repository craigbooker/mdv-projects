//
//  CustomTableCell.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
{
    IBOutlet UILabel *locationNameLabel;
    IBOutlet UILabel *bizLocationLabel;

}
@property (nonatomic, strong) IBOutlet UILabel *locationNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *bizLocationLabel;

@end
