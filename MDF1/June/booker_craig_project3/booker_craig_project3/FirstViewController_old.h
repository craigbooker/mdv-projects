//
//  FirstViewController.h
//  booker_craig_project3
//
//  Created by Craig Booker on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *locTableView;
    LocationViewController *sensorController;
    NSMutableArray *sensorNameList;  
    NSMutableArray *bizNameList;
    NSMutableArray *locationList;
    NSMutableArray *longCoordList;
    NSMutableArray *latCoordList;     
    NSMutableArray *locationImages;
    NSMutableArray *locationDetails; 
    NSMutableArray *xArray;
}
@property (nonatomic, strong) IBOutlet LocationViewController *locationController;

@property (nonatomic, strong) NSMutableArray *locationNameList;
@property (nonatomic, strong) NSMutableArray *bizNameList;
@property (nonatomic, strong) NSMutableArray *locationList;
@property (nonatomic, strong) NSMutableArray *longCoordList;
@property (nonatomic, strong) NSMutableArray *latCoordList;
@property (nonatomic, strong) NSMutableArray *locationDetails;
@property (nonatomic, strong) NSMutableArray *locationImages;
@property (nonatomic, strong) NSMutableArray *xArray;

-(IBAction)onClick:(id)sender;
@end
