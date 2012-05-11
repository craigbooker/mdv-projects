//
//  FirstView.m
//  WindowTabBar
//
//  Created by Chakra on 04/05/10.
//  Copyright 2010 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import "FirstView.h"
#import "TableViewDetailViewController.h"


@implementation FirstView

@synthesize itemsList;
@synthesize myTableView;


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [itemsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}
	
	// Set up the cell...
	NSString *cellValue = [itemsList objectAtIndex:indexPath.row];
	cell.textLabel.text = cellValue;
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *selectDay = [NSString stringWithFormat:@"%d", indexPath.row];
	
	TableViewDetailViewController *fvController = [[TableViewDetailViewController alloc] initWithNibName:@"TableViewDetailViewController" bundle:[NSBundle mainBundle]];
	fvController.selectDay = selectDay;
	[self.navigationController pushViewController:fvController animated:YES];
	[fvController release];
	fvController = nil;
	
}

-(void)loadView{
	
    NSLog(@"aaaaaaaaaaaaaaaaaaaaaa");
	
	myTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
	myTableView.delegate = self;
	myTableView.dataSource = self;
	
	myTableView.autoresizesSubviews = YES;
	
	itemsList = [[NSMutableArray alloc] init];
	
	[itemsList addObject:@"Sunday"];
	[itemsList addObject:@"MonDay"];
	[itemsList addObject:@"TuesDay"];
	[itemsList addObject:@"WednesDay"];
	[itemsList addObject:@"ThusDay"];
	[itemsList addObject:@"FriDay"];
	[itemsList addObject:@"SaturDay"];
	
	
	self.navigationItem.title = @"Day List";
	
	self.view = myTableView;
	
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[itemsList release];
    [super dealloc];
}


@end






