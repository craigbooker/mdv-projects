//
//  ViewController.h
//  project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLParser.h"
#import "Tweet.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *mainArray;
}
@property (nonatomic, retain) UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;
@property (nonatomic, retain) NSMutableArray *mainArray;
@end

