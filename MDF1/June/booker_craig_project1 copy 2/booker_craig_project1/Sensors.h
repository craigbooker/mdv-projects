//
//  Sensors.h
//  booker_craig_project1
//
//  Created by Craig Booker on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sensors : NSObject
{
    NSString *xSensorName;
    NSString *xPIDValue;
    UIImage *xSensorImage;
}

@property (nonatomic,retain) NSString *xSensorName;
@property (nonatomic,retain) NSString *xPIDValue;
@property (nonatomic,retain) UIImage *xSensorImage;

@end
