//
//  MasterViewController.m
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/18/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "MasterViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "DetailViewController.h"
#import "MyTheatreData.h"
#import "CustomTableCell.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController
@synthesize theatreNameList;
@synthesize theatreLocationList;
@synthesize theatreMoviesList;
@synthesize movieTimesList;
@synthesize movieImageList;
@synthesize movieTrailerList;
@synthesize theatreCount;
//@synthesize headerView;
@synthesize myTableView;
@synthesize xMovieDataArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Theatre Listings", @"Theatre Listings");
    }
    return self;
}
							
- (void)viewDidLoad
{
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
   myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0f, 240.0f, myTableView.frame.size.width, 460.0f)];
    [self.view addSubview:myTableView];
    /*self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)]; */
    //self.navigationItem.rightBarButtonItem = addButton;
    theatreNameList = [[NSMutableArray alloc] initWithObjects:
        @"AMC Quail Springs Mall 24", @"Harkins Cine Capri Bricktown", @"Cinemark Tinseltown", @"Dickinson Penn Square 10", @"Moore Warren Theatre", nil];
    theatreLocationList = [[NSMutableArray alloc] initWithObjects: @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Oklahoma City, OK", @"Moore, OK", nil];
   theatreMoviesList = [[NSMutableArray alloc] initWithObjects: @"The Bourne Legacy", @"The Dark Knight Rises", @"The Amazing Spider-Man", @"Madagascar 3: Europe's Most Wanted", @"Ice Age: Continental Drift", nil];
    movieTimesList = [[NSMutableArray alloc] initWithObjects:
        @"10:00 AM, 12:00 PM, 2:00 PM, 7:00 PM, 10:00 PM", @"10:00 AM, 12:00 PM, 2:00 PM, 7:00 PM, 10:00 PM", @"10:00 AM, 12:00 PM, 2:00 PM, 7:00 PM, 10:00 PM", @"10:00 AM, 12:00 PM, 2:00 PM, 7:00 PM, 10:00 PM", @"10:00 AM, 12:00 PM, 2:00 PM, 7:00 PM, 10:00 PM", nil];
    
    movieImageList = [[NSMutableArray alloc] initWithObjects: @"bourne717final.jpg", @"darkknightrisesposter.jpg", @"spidey-419final.jpg", @"80977_ab.jpg", @"iceage4-419final.jpg", nil];

    movieTrailerList = [[NSMutableArray alloc] initWithObjects: @"TheBourneLegacy_360", @"TheDarkKnightRises_360", @"TheAmazingSpiderMan3D_360", @"Madagascar3_360", @"IceAgeContinentalDrift_360", nil];

   
    self.xMovieDataArray = [NSMutableArray array];

    int movieCount = [self.theatreMoviesList count];
    theatreCount = (NSInteger *)[self.theatreNameList count];

	for( int i=0; i<movieCount; i++ )
	{
        MyTheatreData *myTheatreData = [[MyTheatreData alloc] init];
        myTheatreData.xTheatreName = [self.theatreNameList objectAtIndex:i];
        NSLog(@"%@", myTheatreData.xTheatreName);
        myTheatreData.xTheatreLocation = [self.theatreLocationList objectAtIndex:i];
        myTheatreData.xTheatreMovies = [self.theatreMoviesList objectAtIndex:i];
        myTheatreData.xMovieTimes = [self.movieTimesList objectAtIndex:i];
        myTheatreData.xMovieImages = [self.movieImageList objectAtIndex: i];
        myTheatreData.xMovieTrailer = [self.movieTrailerList objectAtIndex: i];
        [xMovieDataArray addObject:myTheatreData];
        NSLog(@"%@", [xMovieDataArray objectAtIndex:i]);
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //return 3;
    return (int)theatreCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return xMovieDataArray.count;
    //return _objects.count;
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *customCellIdentifier = @"CustomTableCell";
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:customCellIdentifier];
	if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.movieNameLabel.text = [theatreMoviesList objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[movieImageList objectAtIndex:indexPath.row]];
    cell.movieTimesLabel.text = [movieTimesList objectAtIndex:indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{   // custom view for header. will be adjusted to default or specified header height
    
    int numHeaderLabels = (int)theatreCount;
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, myTableView.frame.size.width, 40.0f)];
    headerView.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *sectionLftImgSpacer = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 5.0f, 30.0f)];
    sectionLftImgSpacer.backgroundColor = [UIColor lightGrayColor];
    UILabel *sectionTopImgSpacer = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 0.0f, 24.0f, 3.0f)];
    sectionTopImgSpacer.backgroundColor = [UIColor lightGrayColor];
    // Camera Icon
    UIImageView *sectionImage = [[UIImageView alloc] initWithFrame:CGRectMake(5.0f, 3.0f, 24.0f, 24.0f)];
    sectionImage.image = [UIImage imageNamed:@"vidCameraSml.png"];
    sectionImage.backgroundColor = [UIColor lightGrayColor];
    
    
    UILabel *sectionBtmImgSpacer = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 26.0f, 34.0f, 10.0f)];
    sectionBtmImgSpacer.backgroundColor = [UIColor lightGrayColor];
     
    // Spacer to the right of the icon
    UILabel *sectionRghtImgSpacer = [[UILabel alloc] initWithFrame:CGRectMake(29.0f, 0.0f, 5.0f, 35.0f)];
    sectionRghtImgSpacer.backgroundColor = [UIColor lightGrayColor];
    

    UILabel *sectionTitle = [[UILabel alloc] initWithFrame:CGRectMake(34.0f, 0.0f, 276.0f, 20.0f)];
    sectionTitle.backgroundColor = [UIColor lightGrayColor];
    sectionTitle.textColor = [UIColor whiteColor];
    sectionTitle.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];
    sectionTitle.shadowColor = [UIColor blackColor];
    sectionTitle.textAlignment = UITextAlignmentLeft;

    
    UILabel *sectionLocation = [[UILabel alloc] initWithFrame:CGRectMake(34.0f, 22.0f, 234.0f, 14.0f)];
    sectionLocation.backgroundColor = [UIColor lightGrayColor];
    sectionLocation.textAlignment = UITextAlignmentLeft;
    sectionLocation.font = [UIFont fontWithName:@"Helvetica" size:12];
    UILabel *sectionRghtLocSpacer = [[UILabel alloc] initWithFrame:CGRectMake(234.0f, 22.0f, 87.0f, 14.0f)];
    sectionRghtLocSpacer.backgroundColor = [UIColor lightGrayColor];
    
    for( int i=0; i<numHeaderLabels; i++ )
    {
        if (section == i)
        {
            NSLog(@"%@", [theatreNameList objectAtIndex:i]);
            NSLog(@"%@", [theatreNameList objectAtIndex:i]);
            //headerLabel.text = [theatreNameList objectAtIndex:i];
            sectionTitle.text = [theatreNameList objectAtIndex:i];
            sectionLocation.text = [theatreLocationList objectAtIndex:i];
        }
        else if (section > numHeaderLabels)
        {
            

        }
    }/*
    [headerView addSubview:sectionTitle];
    [headerView addSubview:sectionLocation];
    [headerView addSubview:sectionImage];
            [headerView addSubview:sectionBtmImgSpacer];
      
    return headerView;*/
    //return nil;
    [headerView addSubview:sectionTitle];
    [headerView addSubview:sectionLocation];
    [headerView addSubview:sectionImage];
    [headerView addSubview:sectionLftImgSpacer];
    [headerView addSubview:sectionRghtImgSpacer];
    [headerView addSubview:sectionTopImgSpacer];
    [headerView addSubview:sectionBtmImgSpacer];
    [headerView addSubview:sectionRghtLocSpacer];
    return headerView;
}

        


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{   // custom view for header. will be adjusted to default or specified header height
    
    int numHeaderLabels = (int)theatreCount;
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, myTableView.frame.size.width, 15.0f)];
    footerView.backgroundColor = [UIColor whiteColor];
    UILabel *footerTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 5.0f, 320.0f, 14.0f)];
    footerTitle.backgroundColor = [UIColor whiteColor];
    footerTitle.textColor = [UIColor darkGrayColor];
    footerTitle.font = [UIFont fontWithName:@"Helvetica" size:12];
    footerTitle.shadowColor = [UIColor blackColor];
    footerTitle.textAlignment = UITextAlignmentCenter;

    //sectionImage.image = []
    for( int i=0; i<numHeaderLabels; i++ )
    {
        if (section == i)
        {
            NSLog(@"-- End of %@", [theatreNameList objectAtIndex:i]);
            NSString *footerText = [[NSString alloc] initWithFormat:@"-- Listings from %@ --", [theatreNameList objectAtIndex:i]];
            //headerLabel.text = [theatreNameList objectAtIndex:i];
            footerTitle.text = footerText;
        }
        else if (section > numHeaderLabels)
        {
            
            [footerView addSubview:footerTitle];
            return footerView;
        }
    }
    [footerView addSubview:footerTitle];
    return footerView;
}

/*
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0)
    return @"Theatre Name";
}
*/
/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!self.detailViewController) {
        self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    }
    //NSDate *object = [_objects objectAtIndex:indexPath.row];
    //NSString *theatreObject = [[NSString alloc] initWithFormat:@"You chose row %i", [indexPath row]];
    MyTheatreData *selectedMovie = [self.xMovieDataArray objectAtIndex:indexPath.row];
    self.detailViewController.xMyTheatreData = selectedMovie;
    //[self.detailViewController setDetailItem:theatreObject];
   
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 84;
}
@end
