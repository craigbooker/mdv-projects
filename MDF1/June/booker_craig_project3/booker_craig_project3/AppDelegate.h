//
//  AppDelegate.h
//  booker_craig_project1
//
//  Created by Craig Booker on 5/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    FirstViewController *tableView;
    SecondViewController *mainMapView;
    
    NSMutableArray *locArray;

}
@property (strong, nonatomic) NSMutableArray *locArray;
@property (strong, nonatomic) UITabBarController *tabController;
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FirstViewController *tableView;
@property (strong, nonatomic) SecondViewController *mainMapView;

@end
