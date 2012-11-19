//
//  LocationListViewController.h
//  booker_craig_project3
//
//  Created by Craig Booker on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationListViewController : UITableViewController
{
    NSMutableArray *loactionNameList;
}

@property (nonatomic, strong) NSMutableArray *locationNameList;
@end
