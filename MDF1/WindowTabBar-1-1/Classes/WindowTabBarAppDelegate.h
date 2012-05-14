//
//  WindowTabBarAppDelegate.h
//  WindowTabBar
//
//  Created by Chakra on 04/05/10.
//  Copyright Chakra Interactive Pvt Ltd 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WindowTabBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITabBarController *tabbarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic,retain) IBOutlet UITabBarController *tabbarController;

@end

