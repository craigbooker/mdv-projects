//
//  AppDelegate.h
//  booker_craig_project1
//
//  Created by Craig Booker on 5/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAnnotation.h"
#import "LocationViewController.h"
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    MyAnnotation *annotation1;
    MyAnnotation *annotation2;
    MyAnnotation *annotation3;
    MyAnnotation *annotation4;    
    MyAnnotation *annotation5;
    MyAnnotation *annotation6;
    MyAnnotation *annotation7;
    MyAnnotation *annotation8;
    MyAnnotation *annotation9;
    MyAnnotation *annotation10;
    MainViewController *myListView;
    LocationViewController *myMapView;
    

    
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabController;
@property (nonatomic, retain) NSMutableArray *mainArray;
@property (nonatomic, strong) MainViewController *myListView;
@property (nonatomic, strong) LocationViewController *myMapView;
@property (nonatomic, retain) MyAnnotation *annotation1;
@property (nonatomic, retain) MyAnnotation *annotation2;
@property (nonatomic, retain) MyAnnotation *annotation3;
@property (nonatomic, retain) MyAnnotation *annotation4;    
@property (nonatomic, retain) MyAnnotation *annotation5;
@property (nonatomic, retain) MyAnnotation *annotation6;
@property (nonatomic, retain) MyAnnotation *annotation7;
@property (nonatomic, retain) MyAnnotation *annotation8;
@property (nonatomic, retain) MyAnnotation *annotation9;
@property (nonatomic, retain) MyAnnotation *annotation10;
-(void)dispLocArray;

@end
