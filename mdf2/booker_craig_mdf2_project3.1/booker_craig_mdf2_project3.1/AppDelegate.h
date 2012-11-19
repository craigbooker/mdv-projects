//
//  AppDelegate.h
//  booker_craig_mdf2_project3.1
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{

    UIViewController *mainViewController;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *mainViewController;

@end
