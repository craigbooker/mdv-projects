//
//  ViewController.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
NSMutableArray *eventTitleList;
NSMutableArray *eventDateList;
NSMutableArray *eventLocationList;
NSMutableArray *xDataArray;    
}

@property (nonatomic, strong) NSMutableArray *tableView1Data;
@property (nonatomic, retain) NSMutableArray *eventTitleList;  
@property (nonatomic, retain) NSMutableArray *eventDateList;
@property (nonatomic, retain) NSMutableArray *eventLocationList;
@property (nonatomic, strong) NSMutableArray *xDataArray;

-(IBAction)onClick:(id)sender;
@end