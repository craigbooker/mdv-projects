//
//  FirstViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UITableViewController
{
    NSArray *sensorData;
}


@property (nonatomic, strong) NSArray *sensorData;

@end
