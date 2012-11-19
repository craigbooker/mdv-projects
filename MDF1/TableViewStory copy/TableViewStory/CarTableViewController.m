//
//  CarTableViewController.m
//  TableViewStory
//
//  Created by Craig Booker on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CarTableViewController.h"
#import "CarTableViewCell.h"
#import "CarDetailViewController.h"

@implementation CarTableViewController
@synthesize carMakes = _carMakes; 
@synthesize carModels = _carModels;
@synthesize carImages = _carImages;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.carMakes = [[NSArray alloc]
                     initWithObjects:@"Chevy",
                     @"BMW",
                     @"Toyota",
                     @"Volvo",
                     @"Smart", nil];
    
    self.carModels = [[NSArray alloc]
                      initWithObjects:@"Volt",
                      @"Mini",
                      @"Venza",
                      @"S60",
                      @"Fortwo", nil];
    
    self.carImages = [[NSArray alloc]
                      initWithObjects:@"chevy_volt.jpg",
                      @"mini_clubman.jpg",
                      @"toyota_venza.jpg",
                      @"volvo_s60.jpg",
                      @"smart_fortwo.jpg", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.carModels count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"carTableCell";
    
    CarTableViewCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CarTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.makeLabel.text = [self.carMakes 
                           objectAtIndex: [indexPath row]];
    
    cell.modelLabel.text = [self.carModels 
                            objectAtIndex:[indexPath row]];
    
    UIImage *carPhoto = [UIImage imageNamed: 
                         [self.carImages objectAtIndex: [indexPath row]]];
    
    cell.carImage.image = carPhoto;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     CarDetailViewController *carDetailViewController = [[CarDetailViewController alloc] initWithNibName:@"MainStoryBoard" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:carDetailViewController animated:YES];
     [carDetailViewController release];
     */
}

@end
