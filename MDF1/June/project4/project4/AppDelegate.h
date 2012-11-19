//
//  AppDelegate.h
//  project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"
#import "ViewController.h"
#import "WebViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{

    ViewController *myListView;
    WebViewController *myWebView;    


}


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabBarController;
@property (strong, nonatomic) ViewController *myListView;
@property (strong, nonatomic) WebViewController *myWebView;

@end
