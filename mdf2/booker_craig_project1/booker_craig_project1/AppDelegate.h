//
//  AppDelegate.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

//@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabBarController;
@end
