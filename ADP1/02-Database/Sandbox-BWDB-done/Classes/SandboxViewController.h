//
//  SandboxViewController.h
//  Sandbox
//
//  Created by Bill Weinman on 2010-10-28.
//  Copyright 2010 The BearHeart Group, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BWUtilities.h"
#import "BWDB.h"

@interface SandboxViewController : UIViewController {
    IBOutlet UITextView *textView;
}

@property (nonatomic, retain) IBOutlet UITextView *textView;

- (void) sandbox;
- (void) dispRow:(NSDictionary *) row;
- (void) testDatabase;

@end

