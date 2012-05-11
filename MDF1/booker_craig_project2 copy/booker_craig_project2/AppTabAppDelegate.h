//
//  AppDelegate.h
//  booker_craig_project2
//
//  Created by Craig Booker on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppTabViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
IBOutlet UIWindow *window;
IBOutlet UITabBarController *tabBarController;
IBOutlet MyTableViewController *myTableViewController;
IBOutlet MySecondTableViewController *mySecondTableViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabBarController;
@property (nonatomic, retain) MyTableViewController *myTableViewController;
@property (nonatomic, retain) MySecondTableViewController *mySecondTableViewController;

@end