//
//  ViewController.m
//  urlRequestor
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "XMLParser.h"
#import "requestParse.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize customImage = _customImage;
@synthesize tweetsTableView;

requestParse *xmlParser;
URLRequestor *urlRequestor;
UIImage	 *twitterLogo;
CGRect dateFrame;
UILabel *dateLabel;
CGRect contentFrame;
UILabel *contentLabel;


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

#pragma mark -
#pragma mark Table view delegate
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
}
*/


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    xmlParser = [[XMLParser alloc] loadXMLByURL:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];    
    
    twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
    
    self.title = @"Tweets";
}
- (void)viewDidUnload
{
    [self setTweetsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
