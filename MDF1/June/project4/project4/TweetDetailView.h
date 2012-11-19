//
//  TweetDetailView.h
//  project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Tweet.h"


@interface TweetDetailView : UIViewController {
	
    IBOutlet UIWebView *myTweetDetailView;
    //MyAnnotation* passAnnoStorage;

    
}

@property (nonatomic, strong) IBOutlet UIWebView *myTweetDetailView;


@end