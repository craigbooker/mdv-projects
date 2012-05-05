//
//  ViewController.h
//  tabletest
//
//  Created by Craig Booker on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    
}
@property (nonatomic, strong) NSArray *sensorNames;
@property (nonatomic, strong) NSArray *pidValues;
@property (nonatomic, strong) NSArray *sensorImages;
//-(IBAction)onClick:(id)sender;

@end
