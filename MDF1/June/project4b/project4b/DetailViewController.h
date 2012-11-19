//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"


@interface DetailViewController : UIViewController {
	
    IBOutlet UITextView *myDetailView;
    Tweet *xTweet;


}

//@property (assign) IBOutlet UIWebView *myDetailView;

@property (nonatomic,retain) Tweet *xTweet;
@end
