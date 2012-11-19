//
//  ViewController.h
//  booker_craig_project4
//
//  Created by Craig Booker on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDataDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    NSMutableData *requestData;
}
@property (weak, nonatomic) IBOutlet UITableView *tweets;
@end
