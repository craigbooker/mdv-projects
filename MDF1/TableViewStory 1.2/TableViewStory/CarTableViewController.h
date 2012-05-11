//
//  CarTableViewController.h
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *sensorImages;
@property (nonatomic, strong) NSArray *sensorNames;
@property (nonatomic, strong) NSArray *pidValues;
@property (nonatomic, strong) UITableView *tableView;
@end
