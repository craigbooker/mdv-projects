//
//  FirstViewController.m
//  booker_craig_project3
//
//  Created by Craig Booker on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "BizLocations.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        // add all the locations to the array
        NSMutableArray *locArray = delegate.locArray;
        if (locArray != nil)
        {
            [locArray addObject:[[Bi alloc] initWithName:@"loc1" location:CLLocationCoordinate2DMake(28.42f, -81.33)]];
            [locArray addObject:[[LocInfo alloc] initWithName:@"loc2" location:CLLocationCoordinate2DMake(28.42f, -91.33)]];
            [locArray addObject:[[LocInfo alloc] initWithName:@"loc3" location:CLLocationCoordinate2DMake(28.42f, -101.33)]];
            [locArray addObject:[[LocInfo alloc] initWithName:@"loc4" location:CLLocationCoordinate2DMake(28.42f, -111.33)]];
            [locArray addObject:[[LocInfo alloc] initWithName:@"loc5" location:CLLocationCoordinate2DMake(28.42f, -121.33)]];
        }
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

-(IBAction)onClick:(id)sender
{
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        NSMutableArray *locArray = delegate.locArray;
        if (locArray != nil)
        {
            [locArray removeObjectAtIndex:1];
            
            [locTableView reloadData];
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (delegate != nil)
    {
        NSMutableArray *locArray = delegate.locArray;
        
        return [locArray count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myTableCell"];
    if (cell != nil)
    {
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        if ((delegate != nil) && (delegate.locArray != nil))
        {
            LocInfo *info = (LocInfo*)[delegate.locArray objectAtIndex:indexPath.row];
            cell.textLabel.text = info.locName;
        }
    }
    
    return cell;
}
@end
