//
//  VehicleTableViewController.m
//  booker_craig_autometrx1
//
//  Created by Craig Booker on 9/24/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "VehicleTableViewController.h"
#import "Vehicle.h"
#import "VehicleTableViewCell.h"

@interface VehicleTableViewController ()

@end

@implementation VehicleTableViewController

NSMutableArray *vehicles;

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowVehicle"] ) {
    DisplayViewController *dvc = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    Vehicle *c = [vehicles objectAtIndex:[path row]];
    [dvc setCurrentVehicle:c];
    }
}

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
    [super viewDidLoad];
    vehicles = [[NSMutableArray alloc] init];
    /*
    Vehicle *car = [[Vehicle alloc] init];
    [car setvehilceName:@"Jan's Vehicle"];
    [car setVehicleName:@"Jan's Accord"];
    [car setVehicleYear:@"2008"];
    [vehicles addObject:car];
    
    car = [[Vehicle alloc] init];
    [car setName:@"Jon's Vehicle"];
    [car setVehicleName:@"Jon's Pilot"];
    [car setVehicleYear:@"2009"];
    [vehicles addObject:car];
     */
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return [vehicles count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"VehicleCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    Vehicle *current = [vehicles objectAtIndex:indexPath.row];
    // Configure the cell...
    /*
    [cell.textLabel setText:[current name]];
     */
    return cell;
    
    /*
    [cell.vehicleLabel.text = [self.vehicleNames
                             objectAtIndex: [indexPath row]];
    
    cell.yearLabel.text = [self.yearValues
                          objectAtIndex:[indexPath row]];
    
    UIImage *vehiclePhoto = [UIImage imageNamed:
                            [self.vehicleImages objectAtIndex: [indexPath row]]];
    
    cell.vehicleImage.image = vehiclePhoto;
    */

}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/
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
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
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
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
