//
//  ViewController.h
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopViewController.h"

@protocol TopViewDelegate <NSObject>

-(void)DidSave:(NSString*)info;

@end

@interface ViewController : UIViewController <TopViewDelegate>
{
    IBOutlet UITextView *textView;
}
@property (nonatomic, assign) id<TopViewDelegate> delegate;

-(IBAction)onClick:(id)sender;



@end


