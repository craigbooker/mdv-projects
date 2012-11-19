//
//  AppDelegate.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarDelegate>
{
    UITabBarController *tabBarController;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
