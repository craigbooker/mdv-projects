//
//  ThirdViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "WebViewController.h"
#import "DetailViewController.h"
//#import "RequestParse.h"
#import "XMLParser.h"
#import "Tweet.h"
#import "AppDelegate.h"

@implementation MainViewController
@synthesize mainViewArray;
@synthesize customImage = _customImage;
@synthesize tweetsTableView;

//RequestParse *xmlParsera;
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
        self.title = NSLocalizedString(@"Tweets", @"Tweets");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        // Custom initialization
    }
    return self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [[xmlParser tweets] count];
}
- (void)viewDidLoad
{
   // UIBarButtonItem *topRightButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEditState)];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    url = [[NSURL alloc] initWithString:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        requestData = [NSMutableData data];
    }
    //self.navigationItem.rightBarButtonItem = topRightButton;

    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate dispLocArray];
    mainViewArray = appDelegate.mainArray;
    
    //xmlParsera = [[RequestParse alloc] loadXMLByURL:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];    
    xmlParser = [[XMLParser alloc] loadXMLByURL:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];     
    twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
    
    self.title = @"Tweets";
    
    NSLog(@"from appDelegate : %i",appDelegate.mainArray.count);
    NSLog(@"copied array from appDelegate : %i",mainViewArray.count);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}    

-(void)toggleEditState
{
    [myMapTableView setEditing:!myMapTableView.editing animated:YES];
    if (myMapTableView.editing)
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    }
    else {
        [self.navigationItem.rightBarButtonItem setTitle:@"Edit"];
    }


}


- (void)viewDidUnload
{
    [self setTweetsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if (data != nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
    
    }
}
// Called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil) 
    {
        NSLog(@"%@", requestString); 
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mainViewArray.count;  
}
*/
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) 
    {
        [mainViewArray removeObjectAtIndex:indexPath.row];
        NSLog(@"I would like to delete row %d", mainViewArray.count);
        [myMapTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    } 
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // This is where I would add something...
    }
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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *myDetailMap = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(myDetailMap != nil)
    {
        Tweet *tweetDetails = [mainViewArray objectAtIndex:indexPath.row];
        myDetailMap.xTweet = tweetDetails;
        [self.navigationController pushViewController:myDetailMap animated:YES];


        //[myDetailMap showMyMap:showTweetDetails.content title:showTweetDetails.dateCreated];
    }

}


@end
