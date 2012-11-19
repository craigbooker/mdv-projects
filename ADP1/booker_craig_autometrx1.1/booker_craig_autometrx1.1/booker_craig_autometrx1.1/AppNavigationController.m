    //
//  AppNavigationController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "AppNavigationController.h"

#import "AppProductModalController.h"
#import "AppUserSettingsModalController.h"

@implementation AppNavigationController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self.navigationBar setTintColor:[UIColor colorWithHue:0.1277 saturation:0.86 brightness:0.84 alpha:1]];
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

#pragma mark -
#pragma mark Product Modal methods

- (void)showNewRecordModal:(id)sender {

	AppProductModalController *modal = [[AppProductModalController alloc] initWithNibName:nil bundle:nil];
	[modal setNewRecord: YES];
	[modal setDelegate: self.topViewController];
	[modal.navBar.topItem setTitle: @"New Product"];
	
	[self presentModalViewController:modal animated:YES];
	[modal release];
	
}

- (void)showUpdateRecordModalWithName:(NSString *)arg_name andPrice:(NSNumber *)arg_price {
	
	AppProductModalController *modal = [[AppProductModalController alloc] initWithNibName:nil bundle:nil];
	[modal setNewRecord: NO];
	[modal setDelegate: self.topViewController];
	[modal.navBar.topItem setTitle: @"Update Product"];
	[modal.nameField setText: arg_name];
	[modal.priceField setText: [NSString stringWithFormat:@"%0.2f", [arg_price floatValue]]];
	
	[self presentModalViewController:modal animated:YES];
	[modal release];
	
}

#pragma mark -
#pragma mark User Settings Modal methods

- (void)showUserSettingsModal:(id)sender {
	
	AppUserSettingsModalController *modal = [[AppUserSettingsModalController alloc] initWithNibName:nil bundle:nil];
	[modal setDelegate: self.topViewController];
	
	[self presentModalViewController:modal animated:YES];
	[modal release];
	
}


- (void)dealloc {
	
    [super dealloc];
}


@end
