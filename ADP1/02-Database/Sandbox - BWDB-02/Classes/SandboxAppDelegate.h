//
//  SandboxAppDelegate.h
//  Sandbox
//
//  Created by Bill Weinman on 2010-10-28.
//  Copyright 2010 The BearHeart Group, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SandboxViewController;

@interface SandboxAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SandboxViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SandboxViewController *viewController;

@end

