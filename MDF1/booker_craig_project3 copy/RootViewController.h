//
//  RootViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SensorViewController;
@class LocationViewController;

@interface RootViewController : UITableViewController
{
    SensorViewController *sensorController;
    LocationViewController *locationController;

    NSMutableArray *sensorNameList;   
    NSMutableArray *locationNameList;
    
}

@property (nonatomic, strong) IBOutlet SensorViewController *sensorController;
@property (nonatomic, strong) IBOutlet LocationViewController *locationController;
@property (nonatomic, strong) NSMutableArray *sensorNameList;
@property (nonatomic, strong) NSMutableArray *locationNameList;

@end
