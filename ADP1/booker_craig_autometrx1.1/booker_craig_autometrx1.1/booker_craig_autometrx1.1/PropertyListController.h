//
//  PropertyListController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>
#import "AppTableViewController.h"

@interface PropertyListController : AppTableViewController {
	
	NSMutableArray *products;
	
	NSInteger currentProduct;
	
}

@property (nonatomic, retain) NSMutableArray *products;
@property (nonatomic, assign) NSInteger currentProduct;

- (void)writeProductsToFile;

@end
