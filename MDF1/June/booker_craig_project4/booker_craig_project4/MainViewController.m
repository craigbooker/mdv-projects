//
//  ThirdViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "WebViewController.h"
#import "AppDelegate.h"
#import "XMLParser.h"

@implementation MainViewController
@synthesize customImage = _customImage;
@synthesize tweetsTableView;

XMLParser *xmlParser;
UIImage	 *twitterLogo;
CGRect dateFrame;
UILabel *dateLabel;
CGRect contentFrame;
UILabel *contentLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Locations", @"Locations");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        // Custom initialization
    }
    return self;
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [[xmlParser tweets] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    static NSString *CellIdentifier = @"Cell";
	Tweet *currentTweet = [[xmlParser tweets] objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        UIImage	 *twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
        
        CGRect imageFrame = CGRectMake(2, 8, 40, 40);
        self.customImage = [[UIImageView alloc] initWithFrame:imageFrame];
        self.customImage.image = twitterLogo;
        [cell.contentView addSubview:self.customImage];
        
        CGRect contentFrame = CGRectMake(45, 2, 265, 30);
        UILabel *contentLabel = [[UILabel alloc] initWithFrame:contentFrame];
        contentLabel.tag = 0011;
        contentLabel.numberOfLines = 2;
        contentLabel.font = [UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:contentLabel];
        
        CGRect dateFrame = CGRectMake(45, 40, 265, 10);
        UILabel *dateLabel = [[UILabel alloc] initWithFrame:dateFrame];
        dateLabel.tag = 0012;
        dateLabel.font = [UIFont systemFontOfSize:10];
        [cell.contentView addSubview:dateLabel];
    }
	
	UILabel *contentLabel = (UILabel *)[cell.contentView viewWithTag:0011];
    contentLabel.text = [currentTweet content];
	
	UILabel *dateLabel = (UILabel *)[cell.contentView viewWithTag:0012];
    dateLabel.text = [currentTweet dateCreated];
	
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 55;
}

//// Need to make changes here
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   /* DetailViewController *myDetailMap = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:nil];
    if(myDetailMap != nil)
    {
        [self.navigationController pushViewController:myDetailMap animated:YES];
        MyAnnotation *showCoordDetails = [mainViewArray objectAtIndex:indexPath.row];
        [myDetailMap showMyMap:showCoordDetails.coordinate title:showCoordDetails.title];
    }
*/
}
#pragma mark - View lifecycle


- (void)viewDidLoad
{

    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    xmlParser = [[XMLParser alloc] loadXMLByURL:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];    
    
    twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
    
    self.title = @"Tweets";
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setTweetsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end