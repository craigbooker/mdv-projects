//
//  ThirdViewController.h
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *myMapTableView;
    NSMutableArray *mainViewArray;
    MyAnnotation* annoStorage;
}
@property (nonatomic, retain) NSMutableArray *mainViewArray;

@end
