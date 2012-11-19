//
//  DataStorageAppDelegate.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "DataStorageAppDelegate.h"

#import "AppNavigationController.h"

#import "PropertyListController.h"
#import "SQLiteController.h"
#import "CoreDataController.h"
#import "UserDefaultsController.h"

#import <sqlite3.h>

@implementation DataStorageAppDelegate

@synthesize window, tabBarController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window setBackgroundColor:[UIColor whiteColor]];
	
	tabBarController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
	
	// Property List Controller setup
	
	PropertyListController *plistController = [[PropertyListController alloc] initWithStyle: UITableViewStylePlain];
	AppNavigationController *plistNavigationController = [[AppNavigationController alloc] initWithRootViewController:plistController];
	
	plistController.title = @"Property List";
	plistController.tabBarItem.image = [UIImage imageNamed:@"icon_document.png"];
	
	// -------------------------------------
	
	// SQLite Controller setup
	
	SQLiteController *sqliteController = [[SQLiteController alloc] initWithStyle: UITableViewStylePlain];
	AppNavigationController *sqliteNavigationController = [[AppNavigationController alloc] initWithRootViewController:sqliteController];
	
	sqliteController.title = @"SQLite";
	sqliteController.tabBarItem.image = [UIImage imageNamed:@"64-zap.png"];
	
	// - Check to see if SQLite db file exists, else create
	
	sqlite3 *database = nil;
	NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	
    NSString *sqlitePath = [documentsDirectory stringByAppendingPathComponent:@"SQLITE_products.sqlite"];
    if (![fileManager fileExistsAtPath:sqlitePath]){
		if(![fileManager createFileAtPath:sqlitePath contents:nil attributes:nil]){
			NSLog(@"[ERROR] SQLITE Database failed to initialize! File could not be created in application.");
		} else {
			if(sqlite3_open([sqlitePath UTF8String], &database) == SQLITE_OK) {
				sqlite3_exec(database, "CREATE TABLE IF NOT EXISTS products (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, price REAL)", NULL, NULL, NULL);
				sqlite3_close(database);
				database = nil;
			} else {
				NSLog(@"[ERROR] SQLITE Could not seed tables!");
			}

		}
	}
	
	sqlite3_open([sqlitePath UTF8String], &database);
	
	[sqliteController setDatabase: database];
	
	// -------------------------------------
	
	// Core Data Controller setup
	
	CoreDataController *coreDataController = [[CoreDataController alloc] initWithStyle: UITableViewStylePlain];
	AppNavigationController *coreDataNavigationController = [[AppNavigationController alloc] initWithRootViewController:coreDataController];
	
	coreDataController.title = @"Core Data";
	coreDataController.tabBarItem.image = [UIImage imageNamed:@"33-cabinet.png"];

	NSManagedObjectContext *context = [self managedObjectContext];
	[coreDataController setManagedObjectContext:context];
	
	// -------------------------------------
	
	// User Defaults Controller setup
	
	UserDefaultsController *userDefController = [[UserDefaultsController alloc] initWithStyle: UITableViewStylePlain];
	AppNavigationController *userDefNavigationController = [[AppNavigationController alloc] initWithRootViewController:userDefController];
	
	userDefController.title = @"User Defaults";
	userDefController.tabBarItem.image = [UIImage imageNamed:@"icon_profile.png"];
	
	// -------------------------------------
	
	[tabBarController setViewControllers:[NSArray arrayWithObjects: plistNavigationController, sqliteNavigationController, coreDataNavigationController, userDefNavigationController, nil]];
	
	[self.window addSubview: tabBarController.view];
    [self.window makeKeyAndVisible];
	
	[plistNavigationController release];
	[plistController release];
	
	[sqliteNavigationController release];
	[sqliteController release];
	
	[coreDataNavigationController release];
	[coreDataController release];
	
	[userDefNavigationController release];
	[userDefController release];
    
    return YES;
}

- (void)dealloc {
    
    [managedObjectContext_ release];
    [managedObjectModel_ release];
    [persistentStoreCoordinator_ release];
    
	[tabBarController release];
    [window release];
	
    [super dealloc];
}


/*
 
 
 
 
 
	=====================================
 
 
 
 
 
*/


#pragma mark -
#pragma mark Default Core Data methods below

/*
 *	IMPORTANT
 * --------------------------------------------------------------
 *  When implementing Core Data into your application you should
 *  create your project with "Use Core Data for storage" selected
 *  which will automatically create the code below.
 * --------------------------------------------------------------
 *  Dont copy the code below into your project!
 */

- (void)applicationWillTerminate:(UIApplication *)application {
    [self saveContext];
}

- (void)saveContext {
    
    NSError *error = nil;
	NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        } 
    }
}    

- (NSManagedObjectContext *)managedObjectContext {
    
    if (managedObjectContext_ != nil) {
        return managedObjectContext_;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        managedObjectContext_ = [[NSManagedObjectContext alloc] init];
        [managedObjectContext_ setPersistentStoreCoordinator:coordinator];
    }
    return managedObjectContext_;
}

- (NSManagedObjectModel *)managedObjectModel {
    
    if (managedObjectModel_ != nil) {
        return managedObjectModel_;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"DataStorage" withExtension:@"momd"];
    managedObjectModel_ = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];    
    return managedObjectModel_;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    
    if (persistentStoreCoordinator_ != nil) {
        return persistentStoreCoordinator_;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"DataStorage.sqlite"];
    
    NSError *error = nil;
    persistentStoreCoordinator_ = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![persistentStoreCoordinator_ addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }    
    
    return persistentStoreCoordinator_;
}

- (NSURL *)applicationDocumentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


@end

