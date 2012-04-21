//
//  ViewController.h
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol testDelegate <NSObject>
-(void)DidClose:(NSString*)eventInfo;
@end

@interface ViewController : UIViewController <testDelegate>
{
    IBOutlet UITextView *textView;
    NSMutableString *outPutText;
}
-(IBAction)onClick:(id)sender;



@end


