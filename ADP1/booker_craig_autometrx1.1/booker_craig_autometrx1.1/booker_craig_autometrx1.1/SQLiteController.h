//
//  SQLiteController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>
#import "AppTableViewController.h"
#import <sqlite3.h>

@interface SQLiteController : AppTableViewController {

	sqlite3 *database;
	
	NSMutableArray *products;
	NSUInteger currentProduct;
	
}

@property (nonatomic, assign) sqlite3 *database;

@property (nonatomic, retain) NSMutableArray *products;
@property (nonatomic, assign) NSUInteger currentProduct;

@end
