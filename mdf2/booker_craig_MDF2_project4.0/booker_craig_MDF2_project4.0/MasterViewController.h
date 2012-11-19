//
//  MasterViewController.h
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/18/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSMutableArray *theatreNameList;
    NSMutableArray *theatreLocationList;
    NSMutableArray *theatreMoviesList;
    NSMutableArray *movieTimesList;
    NSMutableArray *movieImageList;
    NSMutableArray *movieTrailerList;
    NSMutableArray *xMovieDataArray;
    NSInteger *theatreCount;
    UITableView *myTableView;
    //IBOutlet UIView *headerView;
}
//@property (nonatomic, retain) UIView *headerView;
@property (nonatomic, retain) UITableView *myTableView;
@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, retain) NSMutableArray *theatreNameList;
@property (nonatomic) NSInteger *theatreCount;
@property (nonatomic, retain) NSMutableArray *theatreLocationList;
@property (nonatomic, retain) NSMutableArray *theatreMoviesList;
@property (nonatomic, retain) NSMutableArray *movieTimesList;
@property (nonatomic, retain) NSMutableArray *movieImageList;
@property (nonatomic, retain) NSMutableArray *movieTrailerList;
@property (nonatomic, strong) NSMutableArray *xMovieDataArray;

@end
