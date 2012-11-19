//
//  AppUserSettingsModalController.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <UIKit/UIKit.h>


@interface AppUserSettingsModalController : UIViewController {
	id delegate;
	
	UINavigationBar *navBar;
	UIBarButtonItem *cancel;
	UIBarButtonItem *done;
	
	UITextField *usernameField;
	UITextField *passwordField;
	UISwitch *termsField;
	
}

@property (nonatomic, assign) id delegate;

@property (nonatomic, retain) UITextField *usernameField;
@property (nonatomic, retain) UITextField *passwordField;
@property (nonatomic, retain) UISwitch *termsField;

@property (nonatomic, retain) UIBarButtonItem *cancel;
@property (nonatomic, retain) UIBarButtonItem *done;
@property (nonatomic, retain) UINavigationBar *navBar;
@property (nonatomic, assign) BOOL newRecord;

- (BOOL)validateFieldsBeforeCommit;
- (void)saveRecordAndClose:(id)sender;
- (void)closeModal:(id)sender;
@end
