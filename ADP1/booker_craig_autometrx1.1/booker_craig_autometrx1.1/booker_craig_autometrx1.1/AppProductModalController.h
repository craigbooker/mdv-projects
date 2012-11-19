//
//  AppProductModalController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>


@interface AppProductModalController : UIViewController {
	BOOL newRecord;
	id delegate;
	
	UINavigationBar *navBar;
	UIBarButtonItem *cancel;
	UIBarButtonItem *done;
	
	UITextField *nameField;
	UITextField *priceField;
	
}

@property (nonatomic, retain) id delegate;

@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *priceField;

@property (nonatomic, retain) UIBarButtonItem *cancel;
@property (nonatomic, retain) UIBarButtonItem *done;
@property (nonatomic, retain) UINavigationBar *navBar;
@property (nonatomic, assign) BOOL newRecord;

- (BOOL)validateFieldsBeforeCommit;
- (void)saveRecordAndClose:(id)sender;
- (void)closeModal:(id)sender;

@end
