//
//  AppDelegate.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "LocationViewController.h"
#import "ViewController.h"

@implementation AppDelegate
@synthesize window = _window;
@synthesize tabController = _tabController;
@synthesize locArray;
@synthesize mapView, tableView;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    locArray = [[NSMutableArray alloc] init];
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[[RootViewController alloc] initWithNibName:@"rootViewController" bundle:nil] autorelease];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController1];
    UIViewController *viewController2 = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    //viewController1.title = @"Location List";
    //viewController2.title = @"Home";
    //viewController3.title = @"Map";
    
    viewController1.tabBarItem.image = [UIImage imageNamed:@"first"];
    viewController2.tabBarItem.image = [UIImage imageNamed:@"second"];
    self.tabController = [[[UITabBarController alloc] init] autorelease];
    self.tabController.viewControllers = [NSArray arrayWithObjects:navController, viewController2, nil];
    self.window.rootViewController = self.tabController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
