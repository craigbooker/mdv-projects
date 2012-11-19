//
//  LocationListViewController.h
//  booker_craig_project3
//
//  Created by Craig Booker on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UITableViewController
{
    NSArray *locationData;
}
@property (nonatomic, strong) NSArray *locationData;

@end
