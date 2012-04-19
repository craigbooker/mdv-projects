//
//  ViewController.h
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MyDelegate <NSObject>

-(void)PassInfo:(NSString*)info;

@end

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextView *textView;
     NSString *eventOutput;
    id <MyDelegate> delegate;
    IBOutlet UITextInputMode *textField;
}

-(IBAction)onClick:(id)sender;
//-(IBAction)onAddEvent:(id)sender;
//-(void) loadEvents:(NSString *)eventOutput;
//-(IBAction)onSave:(id)sender;
@property (nonatomic, assign) id<MyDelegate> delegate;

@end


