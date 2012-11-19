    //
//  UserDefaultsController.m
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import "UserDefaultsController.h"


@implementation UserDefaultsController

@synthesize settings, settingsKeys;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	self.settings = [[NSMutableDictionary alloc] initWithDictionary: [defaults dictionaryRepresentation]];
	self.settingsKeys = [[NSArray alloc] initWithObjects:@"Username", @"Password", @"AgreeToTerms", nil];
	
	// ----
	
	[add release];
	add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self.navigationController action:@selector(showUserSettingsModal:)];
	self.navigationItem.rightBarButtonItem = add;
	
}

- (void)updateUserSettingsWithUsername:(NSString *)arg_username andPassword:(NSString *)arg_password andTerms:(BOOL)arg_terms {
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	[defaults setObject:arg_username forKey:@"Username"];
	[defaults setObject:arg_password forKey:@"Password"];
	
	if (arg_terms) {
		[defaults setObject:@"YES" forKey:@"AgreeToTerms"];
	} else {
		[defaults setObject:@"NO" forKey:@"AgreeToTerms"];
	}
	
	[defaults synchronize];
	[self.settings setDictionary: [defaults dictionaryRepresentation]];
	[self.tableView reloadData];
	
	NSLog(@"[SUCCESS] USERDEFAULTS: Updated defaults to system!");
	
}

#pragma mark -
#pragma mark Table View Data Source methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.settingsKeys count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSString *key = [self.settingsKeys objectAtIndex:[indexPath row]];
	
	[cell.textLabel setText: key];
		
	if ([key isEqualToString:@"AgreeToTerms"]) {
		NSString *value = @"Not Agreed";
		if ([[settings objectForKey: key] isEqualToString: @"YES"]) {
			value = @"Agreed";
		}
		[cell.detailTextLabel setText: value];
	} else {
		[cell.detailTextLabel setText: [settings objectForKey: key]];
	}
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.settings = nil;
	self.settingsKeys = nil;
}


- (void)dealloc {
    [super dealloc];
	[settings release];
	[settingsKeys release];
}


@end
