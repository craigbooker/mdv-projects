//
//  FirstViewController.h
//  mapTest
//
//  Created by wendy jones on 6/12/12.
//  Copyright (c) 2012 Kitty Code, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *loactionNameList;  
    //NSMutableArray *bizNameList;
    NSMutableArray *locationList;
    NSMutableArray *longCoordList;
    NSMutableArray *latCoordList;     
    NSMutableArray *locationImages;
    NSMutableArray *locationDetails; 
    NSMutableArray *xArray;
    IBOutlet UITableView *locTableView;
}
@property (nonatomic, strong) NSMutableArray *locationNameList;
@property (nonatomic, strong) NSMutableArray *locationList;
@property (nonatomic, strong) NSMutableArray *longCoordList;
@property (nonatomic, strong) NSMutableArray *latCoordList;
@property (nonatomic, strong) NSMutableArray *locationDetails;
@property (nonatomic, strong) NSMutableArray *locationImages;
@property (nonatomic, strong) NSMutableArray *xArray;

-(IBAction)onClick:(id)sender;
@end
