//
//  AppDelegate.h
//  booker_craig_project3a
//
//  Created by Craig Booker on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    FirstViewController *tableView;
    SecondViewController *mainMapView;
    
    NSMutableArray *locArray;
}

@property (strong, nonatomic) NSMutableArray *locArray;

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) FirstViewController *tableView;
@property (strong, nonatomic) SecondViewController *mainMapView;
@end
