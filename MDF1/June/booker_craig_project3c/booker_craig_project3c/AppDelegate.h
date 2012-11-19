//
//  AppDelegate.h
//  booker_craig_project3c
//
//  Created by Craig Booker on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LocationViewController.h"
#import "SecondViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    LocationViewController *tableView;
    SecondViewController *mainMapView;
    
    NSMutableArray *locArray;
}

@property (strong, nonatomic) NSMutableArray *locArray;

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) LocationViewController *tableView;
@property (strong, nonatomic) SecondViewController *mainMapView;
@end
