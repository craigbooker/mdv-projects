//
//  AppDelegate.h
//  booker_craig_project4
//
//  Created by Craig Booker on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{

    MainViewController *myListView;
    WebViewController *myWebView;
    
    
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabController;
@property (nonatomic, strong) MainViewController *myListView;
@property (nonatomic, strong) WebViewController *myWebView;
@end
