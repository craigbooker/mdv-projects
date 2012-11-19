//
//  ThirdViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTweet.h"

@interface MainViewController : UIViewController <NSURLConnectionDataDelegate, UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *myMapTableView;
    NSMutableArray *mainViewArray;
    MyTweet* annoStorage;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
}
@property (nonatomic, retain) NSMutableArray *mainViewArray;
@property (nonatomic, retain) UIImageView *customImage;

@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;
@end
