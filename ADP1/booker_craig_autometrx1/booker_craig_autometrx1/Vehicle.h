//
//  Vehicle.h
//  booker_craig_autometrx1
//
//  Created by Craig Booker on 9/24/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject


@property (nonatomic, strong) NSString *accountName;
@property (nonatomic, strong) NSString *vehicleName;
@property (nonatomic, strong) NSString *vehicleYear;
@property (nonatomic, strong) NSString *vehicleMake;
@property (nonatomic, strong) NSString *vehicleModel;
@property (nonatomic, strong) NSString *vehicleColor;
@property (nonatomic, strong) NSString *vehicleVIN;
@end
