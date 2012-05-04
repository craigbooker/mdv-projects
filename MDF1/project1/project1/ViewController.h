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
    NSArray *sensorArray;
    NSArray *pidArray;
    
}
//-(IBAction)onClick:(id)sender;

@end
