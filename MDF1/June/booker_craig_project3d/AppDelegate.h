//
//  AppDelegate.h
//  booker_craig_project1
//
//  Created by Craig Booker on 5/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationViewController.h"
#import "ViewController.h"

#import "MyMapAnnotation.h"

@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    LocationViewController *tableView;
    MyMapAnnotation *mapView;
    
    NSMutableArray *locArray;

    IBOutlet UITabBarController *tabController;
}
@property (strong, nonatomic) NSMutableArray *locArray;
@property (strong, nonatomic) IBOutlet UITabBarController *tabController;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LocationViewController *tableView;
@property (strong, nonatomic) MyMapAnnotation *mapView;

@end
