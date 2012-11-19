//
//  ThirdViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLParser.h"
#import "Tweet.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, retain) UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;

-(void)friends_timeline:(id)requestDelegate requestSelector:(SEL)requestSelector;
-(void)request:(NSURL *) url;
@end
