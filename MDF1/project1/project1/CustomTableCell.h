//
//  CustomCellView.h
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *sensorLabel;
    IBOutlet UILabel *pidLabel;
    
}


@property (retain, nonatomic) IBOutlet UILabel *sensorLabel;
@property (retain, nonatomic) IBOutlet UILabel *pidLabel;


@end
