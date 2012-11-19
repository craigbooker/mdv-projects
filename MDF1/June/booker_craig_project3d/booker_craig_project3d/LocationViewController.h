//
//  LocationViewController.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UITableViewController
{
    NSArray *locationData;
}


@property (nonatomic, strong) NSArray *locationData;

@end