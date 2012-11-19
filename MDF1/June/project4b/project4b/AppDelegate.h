//
//  AppDelegate.h
//  project4b
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"
#import "MainViewController.h"

@class MainViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    
    MainViewController *myListView;
    WebViewController *myMapView;
    
    
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IBOutlet UITabBarController *tabController;
@property (nonatomic, retain) NSMutableArray *mainArray;
@property (nonatomic, strong) MainViewController *myListView;
@property (nonatomic, strong) WebViewController *myMapView;

-(void)dispLocArray;

@end
