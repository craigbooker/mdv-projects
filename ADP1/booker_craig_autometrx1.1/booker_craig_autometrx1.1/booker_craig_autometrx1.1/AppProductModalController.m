    //
//  AppProductModalController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 19/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "AppProductModalController.h"


@implementation AppProductModalController
@synthesize newRecord, navBar, cancel, done, nameField, priceField, delegate;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
		self.navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
		[self.navBar setTintColor:[UIColor colorWithHue:0.1277 saturation:0.86 brightness:0.84 alpha:1]];
		
		self.cancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(closeModal:)];
		self.done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(saveRecordAndClose:)];
		
		self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(10, 88, 300, 38)];
		[self.nameField setPlaceholder:@"Name"];
		[self.nameField setBorderStyle: UITextBorderStyleRoundedRect];
		[self.nameField setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
		
		self.priceField = [[UITextField alloc] initWithFrame:CGRectMake(10, 136, 300, 38)];		
		[self.priceField setPlaceholder:@"Price"];
		[self.priceField setBorderStyle: UITextBorderStyleRoundedRect];
		[self.priceField setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
		[self.priceField setKeyboardType: UIKeyboardTypeDecimalPad];
		
		
		self.newRecord = YES;
		
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString *title = @"New Product";
	if (!newRecord) {
		title = @"Modify Product";
	}
	
	UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle: title];
	navItem.rightBarButtonItem = done;
	navItem.leftBarButtonItem = cancel;
	[navBar setItems:[NSArray arrayWithObject: navItem]];
	/* [navItem release]; ----removed due to deprecation in iOS 6 */
	
	[self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
	
	[self.view addSubview: navBar];
	[self.view addSubview: nameField];
	[self.view addSubview: priceField];
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)validateFieldsBeforeCommit {

	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	NSNumber *priceNumber = [numberFormatter numberFromString:[priceField text]];
	/* [numberFormatter release]; ----removed due to deprecation in iOS 6 */
	
	if ([[nameField text] isEqualToString:@""] || [[priceField text] isEqualToString:@""] || !priceNumber) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Required fields" message:@"Please fill out both fields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		[alert show];
		/* [alert release]; ----removed due to deprecation in iOS 6 */
		return NO;
	}
	
	return YES;
	
}

- (void)saveRecordAndClose:(id)sender {
	
	if (![self validateFieldsBeforeCommit]) {
		return;
	}
	
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	NSNumber *priceNumber = [numberFormatter numberFromString:[priceField text]];
	/* [numberFormatter release]; ----removed due to deprecation in iOS 6 */
	
	if (newRecord) {
		if (self.delegate && [self.delegate respondsToSelector:@selector(createNewRecordWithName:andPrice:)]) {
			[self.delegate performSelector:@selector(createNewRecordWithName:andPrice:) withObject:[nameField text] withObject:priceNumber];
		}
	} else {
		if (self.delegate && [self.delegate respondsToSelector:@selector(updateRecordWithName:andPrice:)]) {
			[self.delegate performSelector:@selector(updateRecordWithName:andPrice:) withObject:[nameField text] withObject:priceNumber];
		}
	}
	
	[self closeModal: sender];
	
}

- (void)closeModal:(id)sender {
	[self dismissModalViewControllerAnimated: YES];
}


- (void)dealloc {
	
	/* [navBar release]; ----removed due to deprecation in iOS 6 */
	/*[cancel release]; ----removed due to deprecation in iOS 6 */
	/* [done release]; ----removed due to deprecation in iOS 6 */
	
	self.newRecord = nil;
	
    /* [super dealloc]; ----removed due to deprecation in iOS 6 */
}


@end
