//
//  RootViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SensorViewController;

@interface RootViewController : UITableViewController
{
    SensorViewController *sensorController;
    NSMutableArray *sensorNameList;   
    NSMutableArray *pidValueList;  
    NSMutableArray *sensorImages;
    NSMutableArray *sensorDetails; 
    NSMutableArray *xArray;

}

@property (nonatomic, strong) IBOutlet SensorViewController *sensorController;
@property (nonatomic, strong) NSMutableArray *sensorDetails;
@property (nonatomic, strong) NSMutableArray *sensorNameList;
@property (nonatomic, strong) NSMutableArray *pidValueList;
@property (nonatomic, strong) NSMutableArray *sensorImages;
@property (nonatomic, strong) NSMutableArray *xArray;


@end
