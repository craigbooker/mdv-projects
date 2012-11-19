//
//  MovieViewController.m
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/21/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "MovieViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <CoreFoundation/CoreFoundation.h>
@interface MovieViewController ()

@end

@implementation MovieViewController
@synthesize xMovieData;
@synthesize movieView;
@synthesize savedMovName;
@synthesize mNameLabel;
@synthesize mPlayButton;
@synthesize mStopButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated {
    // Set the labels
    
    mNameLabel.text = xMovieData.xTheatreMovies;
    savedMovName = xMovieData.xMovieTrailer;

}
- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}
-(IBAction)playTrailer:(id)sender
{
    NSLog(@"%@", savedMovName);
    //movieView.image = [UIImage imageNamed:savedMovName];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:savedMovName ofType:@"mp4"];
    NSLog(@"%@", filePath);
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
    if (moviePlayer != nil)
    {
        
        [movieView addSubview:moviePlayer.view];
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movieView.frame.size.width, movieView.frame.size.height);
        moviePlayer.fullscreen = false;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
        
        [moviePlayer play];
        
    }
}
-(IBAction)stopTrailer:(id)sender
{
    [moviePlayer stop];
}
-(IBAction)closeTrailer:(id)sender
{
    [self dismissModalViewControllerAnimated:true];
}
@end
