//
//  AppDelegate.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "SensorViewController.h"
#import "LocationViewController.h"
#import "SecondViewController.h"


@implementation AppDelegate

@synthesize window = _window;
@synthesize tabController;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[[RootViewController alloc] initWithNibName:@"rootViewController" bundle:nil] autorelease];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController1];
    UIViewController *viewController2 = [[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil] autorelease];
    UIViewController *viewController3 = [[[LocationViewController alloc] initWithNibName:@"LocationViewController" bundle:nil] autorelease];
    viewController1.title = @"Sensor List";
    viewController2.title = @"AutoApp Info";
    viewController3.title = @"Location List";
    viewController1.tabBarItem.image = [UIImage imageNamed:@"first"];
    viewController2.tabBarItem.image = [UIImage imageNamed:@"second"];
    viewController3.tabBarItem.image = [UIImage imageNamed:@"second"];
    self.tabController = [[[UITabBarController alloc] init] autorelease];
    self.tabController.viewControllers = [NSArray arrayWithObjects:viewController2, navController, viewController3, nil];
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
