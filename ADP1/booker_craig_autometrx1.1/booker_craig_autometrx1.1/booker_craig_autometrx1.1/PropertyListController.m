    //
//  PropertyListController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "PropertyListController.h"


@implementation PropertyListController

@synthesize products, currentProduct;

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:@"PLIST_products.plist"];
	
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]){
		self.products = [NSMutableArray arrayWithContentsOfFile: plistPath];
	} else {
		self.products = [[NSMutableArray alloc] init];
	}
	
}


- (void)createNewRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	NSDictionary *product = [[NSDictionary alloc] initWithObjectsAndKeys: arg_name, @"name", arg_price, @"price", nil];
	[products addObject: product];
	[product release];
	
	[self.tableView reloadData];
	[self writeProductsToFile];
	
	NSLog(@"[SUCCESS] PLIST: Inserted new product to document!");
	
}

- (void)updateRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	NSMutableDictionary *product = [[NSMutableDictionary alloc] initWithDictionary: [products objectAtIndex: currentProduct]];
	
	[product setObject:arg_name forKey:@"name"];
	[product setObject:arg_price forKey:@"price"];
	[products replaceObjectAtIndex:currentProduct withObject:product];
	
	[self.tableView reloadData];
	[self writeProductsToFile];
	[product release];
	
	currentProduct = nil;
	
	NSLog(@"[SUCCESS] PLIST: Updated product in the document!");
	
}

- (void)deleteRecordWithIndex:(NSInteger)arg_index {
	
	[products removeObjectAtIndex: arg_index];
	[self writeProductsToFile];
	
	NSLog(@"[SUCCESS] PLIST: Record deleted from the document!");
	
}

- (void)writeProductsToFile {
	
	NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:@"PLIST_products.plist"];
	
	[products writeToFile:plistPath atomically:YES];
	
	NSLog(@"[INFO] PLIST: Document was written to disk!");
	
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
    
	NSDictionary *product = [products objectAtIndex: [indexPath row]];
	
    [cell.textLabel setText: [product objectForKey:@"name"]];
	[cell.detailTextLabel setText: [NSString stringWithFormat:@"$%0.2f", [[product objectForKey:@"price"] floatValue]]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	currentProduct = [indexPath row];
	NSDictionary *product = [products objectAtIndex:[indexPath row]];
	
	if ([self.navigationController respondsToSelector:@selector(showUpdateRecordModalWithName:andPrice:)]) {
		[self.navigationController performSelector:@selector(showUpdateRecordModalWithName:andPrice:) withObject:[product objectForKey:@"name"] withObject:[product objectForKey:@"price"]];
	}
	
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		
		[self deleteRecordWithIndex: [indexPath row]];
		[self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject: indexPath] withRowAnimation:UITableViewRowAnimationLeft];
		
	}
	
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	[super viewDidUnload];
	[self writeProductsToFile];
}

- (void)dealloc {
	[products release];	
	
    [super dealloc];
}


@end
