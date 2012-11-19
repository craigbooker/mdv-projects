//
//  LocationListViewController.m
//  booker_craig_project3
//
//  Created by Craig Booker on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LocationListViewController.h"


@implementation LocationListViewController
@synthesize locationNameList; 

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
         self.locationNameList = [[NSMutableArray alloc] initWithObjects:@"Montgomery, AL", @"Juneau, AK", @"Phoenix, AZ", @"Little Rock, AR", @"Sacramento, CA", @"Denver, CO", @"Hartford, CT", @"Dover, DE", @"Tallahassee, FL", @"Atlanta, GA", @"Honolulu, HI", @"Boise, ID", @"Springfield, IL", @"Indianapolis, IN", @"Des Moines, IA", @"Topeka, KS", @"Frankfort, KY", @"Baton Rouge, LA", @"Augusta, ME", @"Annapolis, MD", @"Boston, MA", @"Michigan, MI", @"Saint Paul, MN", @"Jackson, MS", @"Jefforson City, MO", @"Helena, MT", @"Lincoln, NE", @"Carson City, NV", @"Concord, NH", @"Trenton, NJ", @"Santa Fe, NM", @"Albany, NY", @"Raleigh, NC", @"Bismarck, ND", @"Columbus, OH", @"Oklahoma City, OK", @"Salem, OR", @"Harrisburg, PA", @"Providence, RI", @"Columbia, SC", @"Pierre, South Dakota", @"Nashville, TN", @"Austin, TX", @"Salt Lake City, UT", @"Montpelier, Vermont", @"Richmond, VA", @"Olympia, WA", @"Charleston, WV", @"Madison, WI", @"Cheyenne, WY", nil];
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return [locationNameList count];
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *CellIdentifier = @"LocationCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) { 
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];   
    }    
    cell.textLabel.text = [locationNameList objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}


@end
