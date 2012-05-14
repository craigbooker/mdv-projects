//
//  FirstViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SensorViewController : UITableViewController
{
    NSMutableArray *sensorNameList;
    NSMutableArray *pidValueList;
    NSMutableArray *sensorImageList;
}

@property (nonatomic, strong) NSMutableArray *sensorImageList;
@property (nonatomic, strong) NSMutableArray *sensorNameList;
@property (nonatomic, strong) NSMutableArray *pidValueList;

@end
