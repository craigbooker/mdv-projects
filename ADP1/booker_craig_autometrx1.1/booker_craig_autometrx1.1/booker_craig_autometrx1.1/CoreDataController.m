//
//  CoreDataController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "CoreDataController.h"

@implementation CoreDataController

@synthesize managedObjectContext, products, currentProduct, currentProductIndex;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self getAllProductsFromDB];
}

- (void)getAllProductsFromDB {
	
	NSEntityDescription *productEntity = [NSEntityDescription entityForName:@"Product" inManagedObjectContext:managedObjectContext];
	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	[request setEntity: productEntity];
	
	NSError *error = nil;
	NSArray *results = [managedObjectContext executeFetchRequest:request error:&error];
	
	if (!results || error) {
		NSLog(@"[ERROR] COREDATA: Fetch request raised an error - '%@'", [error description]);
		return;
	}
	
	if (self.products) {
		[products release];
		self.products = nil;
	}
	
	self.products = [[NSMutableArray alloc] initWithArray: results];
	
}

- (void)createNewRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	Product *product = [NSEntityDescription insertNewObjectForEntityForName:@"Product" inManagedObjectContext:managedObjectContext];
	
	[product setName: arg_name];
	[product setPrice: arg_price];
	
	NSError *error = nil;
	[managedObjectContext save:&error];
	
	if (error) {
		NSLog(@"[ERROR] COREDATA: Save raised an error - '%@'", [error description]);
		return;
	}
	
	[products addObject: product];
	[self.tableView reloadData];
	
	NSLog(@"[SUCCESS] COREDATA: Inserted new product to database!");
}

- (void)updateRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	[currentProduct setName: arg_name];
	[currentProduct setPrice: arg_price];
	
	NSError *error = nil;
	[managedObjectContext save:&error];
	
	if (error) {
		NSLog(@"[ERROR] COREDATA: Save raised an error - '%@'", [error description]);
		return;
	}
	
	[products replaceObjectAtIndex:currentProductIndex withObject: [currentProduct retain]];
	
	[currentProduct release];
	self.currentProduct = nil;
	
	[self.tableView reloadData];
	
	NSLog(@"[SUCCESS] COREDATA: Updated product in database!");
}

#pragma mark -
#pragma mark Table View Data Source methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    
	Product *product = [products objectAtIndex: [indexPath row]];
	
    [cell.textLabel setText: [product name]];
	[cell.detailTextLabel setText: [NSString stringWithFormat:@"$%0.2f", [[product price] floatValue]]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	self.currentProduct = [products objectAtIndex:[indexPath row]];
	self.currentProductIndex = [indexPath row];
	
	if ([self.navigationController respondsToSelector:@selector(showUpdateRecordModalWithName:andPrice:)]) {
		[self.navigationController performSelector:@selector(showUpdateRecordModalWithName:andPrice:) withObject:[currentProduct name] withObject:[currentProduct price]];
	}
	
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		
		Product *product = [products objectAtIndex:[indexPath row]];
		
		[managedObjectContext deleteObject: product];
		
		NSError *error = nil;
		[managedObjectContext save:&error];
		
		if (error) {
			NSLog(@"[ERROR] COREDATA: Save raised an error - '%@'", [error description]);
			return;
		}
		
		[products removeObjectAtIndex: [indexPath row]];
		[self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject: indexPath] withRowAnimation:UITableViewRowAnimationLeft];
		
		NSLog(@"[SUCCESS] COREDATA: Updated product in database!");
		
	}
	
}



- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	
	[managedObjectContext release];
	[products release];
	[currentProduct release];
	
    [super dealloc];
}


@end
