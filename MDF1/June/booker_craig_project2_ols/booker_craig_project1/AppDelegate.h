//
//  AppDelegate.h
//  booker_craig_project1
//
//  Created by Craig Booker on 5/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarDelegate>
{
    UITabBarController *tabController;
}
@property (strong, nonatomic) UITabBarController *tabController;
@property (strong, nonatomic) UIWindow *window;

@end
