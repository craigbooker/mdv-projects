//
//  CustCalViewCell.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/3/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustCalViewCell : UITableViewCell
{
    IBOutlet UILabel *calTitleLabel;
    IBOutlet UIImageView *calImage;
}

@property (nonatomic, strong) IBOutlet UILabel *calTitleLabel;
@property (nonatomic, strong) IBOutlet UIImageView *calImage;
@end
