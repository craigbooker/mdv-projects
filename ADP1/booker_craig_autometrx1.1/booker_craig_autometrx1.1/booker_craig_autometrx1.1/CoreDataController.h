//
//  CoreDataController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>
#import "AppTableViewController.h"

#import "Product.h" // Product NSManagedObject (Model) Class

@interface CoreDataController : AppTableViewController {
	
	NSManagedObjectContext *managedObjectContext;
	
	NSMutableArray *products;
	Product *currentProduct;
	NSInteger currentProductIndex;
	
}

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSMutableArray *products;
@property (nonatomic, retain) Product *currentProduct;
@property (nonatomic, assign) NSInteger currentProductIndex;

- (void)getAllProductsFromDB;

@end
