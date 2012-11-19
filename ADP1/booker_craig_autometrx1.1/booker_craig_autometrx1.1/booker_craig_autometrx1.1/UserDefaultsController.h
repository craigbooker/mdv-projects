//
//  UserDefaultsController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>
#import "AppTableViewController.h"

@interface UserDefaultsController : AppTableViewController {
	
	NSMutableDictionary *settings;
	NSArray *settingsKeys;
	
}

@property (nonatomic, retain) NSMutableDictionary *settings;
@property (nonatomic, retain) NSArray *settingsKeys;

@end
