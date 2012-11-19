//
//  SandboxViewController.m
//  Sandbox
//
//  Created by Bill Weinman on 2010-10-28.
//  Copyright 2010 The BearHeart Group, LLC. All rights reserved.
//

#import "SandboxViewController.h"

@implementation SandboxViewController

@synthesize textView;

- (void) sandbox {
    message(@"Sandbox version %@", kBWUtilitiesVersion);
    [self testDatabase];
}

-(void) dispRow:(NSDictionary *) row {
    message(@"row %@: %@, %@, %@",
            [row objectForKey:@"id"],
            [row objectForKey:@"a"],
            [row objectForKey:@"b"],
            [row objectForKey:@"c"]
            );
}

-(void) testDatabase {
    NSString * dbtn = @"bwtable";
    NSString * dbfn = @"bwtest.db";
    BWDB *db;
    
    NSDictionary * row = nil;
    if ((db = [[BWDB alloc] initWithDBFilename:dbfn andTableName: dbtn])) {
        message(@"BWDB version %@", [db getVersion]);
        message(@"SQLite version %@", [db valueFromQuery:@"select sqlite_version()"]);
        message(@"create table ...");
        [db doQuery:@"drop table if exists bwtable"];
        [db doQuery:@"CREATE TABLE bwtable (id INTEGER PRIMARY KEY, a, b, c, stamp TEXT DEFAULT CURRENT_TIMESTAMP)"];
        message(@"insert row with doQuery ...");
        [db doQuery:@"insert into bwtable (a, b, c) values (?, ?, randomblob(8))", nil, @"2" ];
        message(@"lastInsertId: %@", [db lastInsertId]);
        message(@"CRUD insert, rowID: %@", 
                [db insertRow:[NSDictionary dictionaryWithObjectsAndKeys:
                               [NSNumber numberWithDouble:2], @"a",
                               [NSNumber numberWithDouble:3.0], @"b",
                               [NSNumber numberWithDouble:4], @"c",
                               nil]]);
        message(@"CRUD insert, rowID: %@", 
                [db insertRow:[NSDictionary dictionaryWithObjectsAndKeys:
                               [NSNumber numberWithInt:3], @"a",
                               [NSNumber numberWithInt:4], @"b",
                               [NSNumber numberWithInt:5], @"c",
                               nil]]);
        message(@"CRUD insert, rowID: %@", 
                [db insertRow:[NSDictionary dictionaryWithObjectsAndKeys:
                               @"four", @"a",
                               [NSNumber numberWithInt:5], @"b",
                               [NSNumber numberWithDouble:6.42], @"c",
                               nil]]);
        message(@"rows with getQuery ...");
        for (row in [db getQuery:@"SELECT * FROM bwtable"]) {
            [self dispRow:row];
        }
        message(@"udpateRow 4 ...");
        [db updateRow:[NSDictionary dictionaryWithObjectsAndKeys:
                       @"cuatro", @"a",
                       @"cinco", @"b",
                       @"seis", @"c",
                       nil]
                     :[NSNumber numberWithInt:4]];
        for (row in [db getQuery:@"SELECT * FROM bwtable"]) {
            [self dispRow:row];
        }
        message(@"count rows: %@", [db countRows]);
        message(@"deleteRow 3 ...");
        [db deleteRow:[NSNumber numberWithInt:3]];
        message(@"count rows: %@", [db countRows]);
        for (row in [db getQuery:@"SELECT * FROM bwtable"]) {
            [self dispRow:row];
        }
        message(@"getRow 4 ...");
        [self dispRow:[db getRow:[NSNumber numberWithInt:4]]];
        
    } else {
        message(@"db failed to init");
    }
    [db release];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    extern UITextView *messageTextView;
    messageTextView = textView;
    textView.font = [UIFont systemFontOfSize:12];
    [self sandbox];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
