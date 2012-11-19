//
//  ViewController.h
//  urlRequestor
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "URLRequestor.h"
#import "XMLParser.h"
#import "Tweet.h"

@interface ViewController : UIViewController <NSURLConnectionDataDelegate>
{
NSURLRequest *request;
NSURL *url;
NSURLConnection *connection;
NSMutableData *requestData;
}
@property (nonatomic, retain) UIImageView *customImage;

@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;
@end
