//
//  MovieViewController.h
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/21/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "MyTheatreData.h"

@interface MovieViewController : UIViewController
{
    MyTheatreData *xMovieData;
    MPMoviePlayerController *moviePlayer;
    IBOutlet UIImageView *movieView;
}
@property (nonatomic,retain) MyTheatreData *xMovieData;
@property (nonatomic, strong) IBOutlet UIImageView *movieView;
@property (nonatomic, strong) NSString *savedMovName;
@property (nonatomic, strong) IBOutlet UILabel *mNameLabel;
@property (nonatomic, strong) IBOutlet UIButton *mPlayButton;
@property (nonatomic, strong) IBOutlet UIButton *mStopButton;
-(IBAction)playTrailer:(id)sender;
-(IBAction)stopTrailer:(id)sender;
-(IBAction)closeTrailer:(id)sender;
@end
