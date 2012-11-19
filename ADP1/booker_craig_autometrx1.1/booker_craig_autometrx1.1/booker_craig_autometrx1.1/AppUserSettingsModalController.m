//
//  AppUserSettingsModalController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "AppUserSettingsModalController.h"


@implementation AppUserSettingsModalController

@synthesize navBar, cancel, done, delegate, usernameField, passwordField, termsField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
		self.navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
		[self.navBar setTintColor:[UIColor colorWithHue:0.1277 saturation:0.86 brightness:0.84 alpha:1]];
		
		self.cancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(closeModal:)];
		self.done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(saveRecordAndClose:)];
		
		self.usernameField = [[UITextField alloc] initWithFrame:CGRectMake(10, 88, 300, 38)];
		[self.usernameField setPlaceholder:@"Username"];
		[self.usernameField setBorderStyle: UITextBorderStyleRoundedRect];
		[self.usernameField setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
		
		self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(10, 136, 300, 38)];		
		[self.passwordField setPlaceholder:@"Password"];
		[self.passwordField setBorderStyle: UITextBorderStyleRoundedRect];
		[self.passwordField setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
		[self.passwordField setSecureTextEntry: YES];
		
		self.termsField = [[UISwitch alloc] initWithFrame:CGRectMake(220, 184, 60.0, 26.0)];
		
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString *title = @"User Settings";
	
	UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle: title];
	navItem.rightBarButtonItem = done;
	navItem.leftBarButtonItem = cancel;
	[navBar setItems:[NSArray arrayWithObject: navItem]];
	[navItem release];
	
	[self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	[usernameField setText:[defaults objectForKey:@"Username"]];
	[passwordField setText:[defaults objectForKey:@"Password"]];
	if ([[defaults objectForKey:@"AgreeToTerms"] isEqualToString: @"YES"]) {
		[termsField setOn: YES];
	}
	[termsField setOn: [(NSNumber *)[defaults objectForKey:@"AgreeToTerms"] boolValue]];
	
	[self.view addSubview: navBar];
	[self.view addSubview: usernameField];
	[self.view addSubview: passwordField];
	
	UILabel *termsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 184, 200, 26)];
	[termsLabel setText:@"Agree to Terms?"];
	[termsLabel setTextAlignment: UITextAlignmentRight];
	[termsLabel setBackgroundColor:[UIColor clearColor]];
	[termsLabel setOpaque: NO];
	
	[self.view addSubview: termsLabel];
	[self.view addSubview: termsField];
	
	[termsLabel release];
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)validateFieldsBeforeCommit {
	
	if (![usernameField text] || ![passwordField text] || [[usernameField text] isEqualToString:@""] || [[passwordField text] isEqualToString:@""]) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Required fields" message:@"Please fill out both fields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		[alert show];
		[alert release];
		return NO;
	}
	
	return YES;
	
}

- (void)saveRecordAndClose:(id)sender {
	
	if (![self validateFieldsBeforeCommit]) {
		return;
	}
	
	if (self.delegate && [self.delegate respondsToSelector:@selector(updateUserSettingsWithUsername:andPassword:andTerms:)]) {
		[self.delegate updateUserSettingsWithUsername: [usernameField text] andPassword: [passwordField text] andTerms: termsField.on];
	}
	
	[self closeModal: sender];
	
}

- (void)closeModal:(id)sender {
	[self dismissModalViewControllerAnimated: YES];
}


- (void)dealloc {
	
	[navBar release];
	[cancel release];
	[done release];
	
	[usernameField release];
	[passwordField release];
	[termsField release];
	
    [super dealloc];
}



@end
