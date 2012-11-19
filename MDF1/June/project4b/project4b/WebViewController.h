//
//  LocationViewController.h
//  booker_craig_project3d
//
//  Created by Craig Booker on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Tweet.h"

@interface WebViewController : UIViewController
{

    IBOutlet UIWebView *myWebView;
    NSMutableArray *locationViewArray;    
}
@property (nonatomic, retain) NSMutableArray *locationViewArray;

@end