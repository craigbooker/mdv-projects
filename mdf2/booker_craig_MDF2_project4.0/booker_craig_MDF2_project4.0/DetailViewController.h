//
//  DetailViewController.h
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/18/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTheatreData.h"

@interface DetailViewController : UIViewController
{
    MyTheatreData *xMyTheatreData;
}
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;



@property (nonatomic,retain) MyTheatreData *xMyTheatreData;
@property (nonatomic, strong) NSString *savedMovieName;
@property (nonatomic, strong) UIImage *savedMovieImage;
@property (nonatomic, strong) NSString *savedMovieTimes;
@property (nonatomic, strong) NSString *savedMovieLocation;
@property (nonatomic, strong) IBOutlet UIImageView *movieDetailImage;
@property (nonatomic, strong) IBOutlet UILabel *movieNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *movieLocationLabel;
@property (nonatomic, strong) IBOutlet UILabel *movieTimesLabel;

-(IBAction)playTrailer:(id)sender;
@end
