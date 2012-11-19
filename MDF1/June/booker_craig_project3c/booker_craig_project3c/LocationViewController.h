//
//  LocationViewController.h
//  mapTest
//
//  Created by wendy jones on 6/12/12.
//  Copyright (c) 2012 Kitty Code, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *locTableView;
    NSMutableArray *xArray;
}
@property (nonatomic, strong) NSMutableArray *xArray;
-(IBAction)onClick:(id)sender;
@end
