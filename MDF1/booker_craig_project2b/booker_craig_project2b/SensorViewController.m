//
//  FirstViewController.m
//  booker_craig_project2b
//
//  Created by Craig Booker on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SensorViewController.h"
#import "CustomTableCell.h"

@implementation SensorViewController

@synthesize sensorNameList = _sensorNameList; 
@synthesize pidValueList = _pidValueList;
@synthesize sensorImageList = _sensorImageList;

- (id)initWithStyle: (UITableViewStyle)style
{
    self = [super initWithStyle:style];
        if (self) {
            // Custom initialization
            
        }
    return self;
}
							
- (void)viewDidLoad
{

    [super viewDidLoad]; 
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return [sensorNameList count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *CellIdentifier = @"Cell";
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

	if (cell == nil) { 
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        for (UIView *view in views)
        {
            
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
            }
            
        }    
    }
    //cell.textLabel.text = (NSString*)[sensorNameList objectAtIndex:indexPath.row];
    return cell;
}

@end
