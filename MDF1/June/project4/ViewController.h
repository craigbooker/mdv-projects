//
//  ViewController.h
//  ParsingXMLTutorial
//
//  Created by kent franks on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLParser.h"
#import "Tweet.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) UIImageView *customImage;

@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;

@end

