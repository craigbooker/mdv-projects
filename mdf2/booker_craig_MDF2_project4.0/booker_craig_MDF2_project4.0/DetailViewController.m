//
//  DetailViewController.m
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/18/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "DetailViewController.h"
#import "MyTheatreData.h"
#import "MovieViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize xMyTheatreData;
@synthesize savedMovieName;
@synthesize savedMovieImage;
@synthesize savedMovieTimes;
@synthesize savedMovieLocation;

@synthesize movieDetailImage;
@synthesize movieNameLabel;
@synthesize movieLocationLabel;
@synthesize movieTimesLabel;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}
- (void)viewWillAppear:(BOOL)animated {
    savedMovieImage = [UIImage imageNamed:self.xMyTheatreData.xMovieImages];
     //cell.thumbnailImageView.image = [UIImage imageNamed:[movieImageList objectAtIndex:indexPath.row]];
    savedMovieName = xMyTheatreData.xTheatreMovies;
    NSLog(@"%@ detail view", savedMovieName);
    NSString *movieNameText = [[NSString alloc] initWithFormat:@"Movie: %@", savedMovieName];
    savedMovieLocation = xMyTheatreData.xTheatreLocation;
    NSString *movieLocationText = [[NSString alloc] initWithFormat:@"Location: %@", savedMovieLocation];
    savedMovieTimes = xMyTheatreData.xMovieTimes;
    NSString *movieTimesText = [[NSString alloc] initWithFormat:@"Show Times: %@", savedMovieTimes];
    
    // Set the labels
    movieDetailImage.image = savedMovieImage;
    movieNameLabel.text = movieNameText;
    movieLocationLabel.text = movieLocationText;
    movieTimesLabel.text = movieTimesText;
    
    
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
-(IBAction)playTrailer:(id)sender
{
    MovieViewController *movieViewController = [[MovieViewController alloc] initWithNibName:@"MovieViewController" bundle:nil];
    if (movieViewController != nil)
    {
        /*
        MyTheatreData *selectedEvent = [self.xTheatreDataArray objectAtIndex:indexPath.row];
        movieViewController.xEventData = selectedEvent;
         */
        MyTheatreData *selectedMovie = xMyTheatreData;
        movieViewController.xMovieData = selectedMovie;
        [self presentModalViewController:movieViewController animated:YES];
    }

}
							
@end
