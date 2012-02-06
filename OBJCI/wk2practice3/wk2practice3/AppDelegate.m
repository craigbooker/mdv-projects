//
//  AppDelegate.m
//  wk2practice3
//
//  Created by Craig Booker on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSString *sampleStringInt = [[NSString alloc] initWithString:@"4"];
    int sampleInt = [sampleStringInt intValue];
    
    NSString *sampleStringFloat = [[NSString alloc] initWithString:@"100.3"];
    float sampleFloat = [sampleStringFloat floatValue];
    
    NSString *stringFormatted = [[NSString alloc] initWithFormat:@"A car has %d tires and can travel at %f mph.", sampleInt, sampleFloat];
    NSString *anotherFloat = [[NSString alloc] initWithString:@"2.5"];
    float anotherConvertedFloat = [anotherFloat floatValue];
    
    NSString *anotherStringFormatted = [[NSString alloc] initWithFormat:@"This car also consumes about %f times as much gas as a regular sedan.", anotherConvertedFloat];
    
    NSLog(@"This is a static sting followed by the formatted string %@ followed by another formated string %@", stringFormatted, anotherStringFormatted);

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
