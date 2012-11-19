//
//  VehicleTableViewCell.h
//  booker_craig_autometrx1
//
//  Created by Craig Booker on 9/24/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleTableViewCell : NSObject
@property (nonatomic, strong) IBOutlet UIImageView *vehicleImage;
@property (nonatomic, strong) IBOutlet UILabel *vehicleLabel;
@property (nonatomic, strong) IBOutlet UILabel *yearLabel;
@end
