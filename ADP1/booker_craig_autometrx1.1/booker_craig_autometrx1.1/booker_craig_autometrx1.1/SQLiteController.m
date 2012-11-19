    //
//  SQLiteController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "SQLiteController.h"


@implementation SQLiteController

@synthesize database, products, currentProduct;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.products = [[NSMutableArray alloc] init];
	
	if (!database) {
		NSLog(@"[ERROR] SQLITE: Database not available in controller!");
		return;
	}
	
	[self getAllProductsFromDB];
	
	NSLog(@"SQLITE: Products = %@", self.products);
	
}

- (void)getAllProductsFromDB {

	sqlite3_stmt *statement;
	
	if(sqlite3_prepare_v2(database, "SELECT id, name, price FROM products", -1, &statement, nil) != SQLITE_OK){
		NSLog(@"[ERROR] SQLITE: Failed to prepare statement! Error: '%s' - getAllProductsFromDB", sqlite3_errmsg(database));
		return;
	}
	
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	
	while(sqlite3_step(statement) == SQLITE_ROW) {
		
		NSNumber *recordID = [NSNumber numberWithInt: sqlite3_column_int(statement, 0)];
		NSString *name = [[NSString alloc] initWithUTF8String: (char *)sqlite3_column_text(statement, 1)];
		NSString *price = [[NSString alloc] initWithUTF8String: (char *)sqlite3_column_text(statement, 2)];
		
		
		NSDictionary *product = [[NSDictionary alloc] initWithObjectsAndKeys: recordID, @"id", name, @"name", [numberFormatter numberFromString: price], @"price", nil];
		[products addObject: product];
		[product release];
	}
	
	[numberFormatter release];
	
	sqlite3_finalize(statement);
	
}

- (void)createNewRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	if (!database) {
		NSLog(@"[ERROR] SQLITE: Database not available in controller! - createNewRecordWithName:andPrice:");
		return;
	}
	
	sqlite3_stmt *statement;
	
	if(sqlite3_prepare_v2(database, "INSERT INTO products (name, price) VALUES(?,?)", -1, &statement, nil) != SQLITE_OK){
		NSLog(@"[ERROR] SQLITE: Failed to prepare statement! - createNewRecordWithName:andPrice:");
		return;
	}
	
	sqlite3_bind_text(statement, 1, [arg_name UTF8String], -1, SQLITE_TRANSIENT);
	sqlite3_bind_double(statement, 2, [arg_price doubleValue]);
	
	if (sqlite3_step(statement) == SQLITE_ERROR) {
		NSLog(@"[ERROR] SQLITE: Failed to insert into database! Error: '%s' - createNewRecordWithName:andPrice:", sqlite3_errmsg(database));
		return;
	}
	
	sqlite3_finalize(statement);
	
	NSDictionary *product = [[NSDictionary alloc] initWithObjectsAndKeys: [NSNumber numberWithInt: sqlite3_last_insert_rowid(database)], @"id", arg_name, @"name", arg_price, @"price", nil];
	[products addObject: product];
	[product release];
	
	[self.tableView reloadData];
	
	NSLog(@"[SUCCESS] SQLITE: Inserted new product to database!");
	
}

- (void)updateRecordWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	if (!database) {
		NSLog(@"[ERROR] SQLITE: Database not available in controller! - updateRecordWithName:andPrice:");
		return;
	}
	
	NSMutableDictionary *product = [[NSMutableDictionary alloc] initWithDictionary: [products objectAtIndex: currentProduct]];
	
	sqlite3_stmt *statement;
	
	if(sqlite3_prepare_v2(database, "UPDATE products SET name = ?, price = ? WHERE id = ?", -1, &statement, nil) != SQLITE_OK){
		NSLog(@"[ERROR] SQLITE: Failed to prepare statement! - updateRecordWithName:andPrice:");
		return;
	}
	
	sqlite3_bind_text(statement, 1, [arg_name UTF8String], -1, SQLITE_TRANSIENT);
	sqlite3_bind_double(statement, 2, [arg_price doubleValue]);
	sqlite3_bind_int(statement, 3, [[product objectForKey:@"id"] intValue]);
	
	if (sqlite3_step(statement) == SQLITE_ERROR) {
		NSLog(@"[ERROR] SQLITE: Failed to update record in the database! Error: '%s' - updateRecordWithName:andPrice:", sqlite3_errmsg(database));
		return;
	}
	
	sqlite3_finalize(statement);
	
	[product setObject:arg_name forKey:@"name"];
	[product setObject:arg_price forKey:@"price"];
	[products replaceObjectAtIndex:currentProduct withObject:product];
	
	[self.tableView reloadData];
	[product release];
	
	currentProduct = nil;
	
	NSLog(@"[SUCCESS] SQLITE: Updated product in the database!");
	
}

- (void)deleteRecordWithID:(NSNumber *)arg_id {
		
	if (!database) {
		NSLog(@"[ERROR] SQLITE: Database not available in controller! - deleteRecordWithID:");
		return;
	}
	
	NSString *deleteSql = [NSString stringWithFormat:@"DELETE FROM products WHERE id = %i", [arg_id intValue]];
	
	if (sqlite3_exec(database, [deleteSql UTF8String], NULL, NULL, NULL) == SQLITE_ABORT) {
		NSLog(@"[ERROR] SQLITE: Failed to delete record from the database! Error: '%s' - deleteRecordWithID:", sqlite3_errmsg(database));
		return;
	}
	
	NSLog(@"[SUCCESS] SQLITE: Record deleted from the database! Changes: %i", sqlite3_changes(database));
	
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
		
		NSDictionary *product = [products objectAtIndex:[indexPath row]];
		
		[self deleteRecordWithID: [product objectForKey:@"id"]];
		[products removeObjectAtIndex: [indexPath row]];
		
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
    
	self.products = nil;
}


- (void)dealloc {
	
	[products release];
	
	sqlite3_close(database);
	database = nil;
	
    [super dealloc];
}


@end
