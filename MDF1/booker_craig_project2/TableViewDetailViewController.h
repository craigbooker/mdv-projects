//
//  TableViewDetailViewController.h
//  WindowTabBar
//
//  Created by Chakra on 04/05/10.
//  Copyright 2010 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableViewDetailViewController : UIViewController {
	
	IBOutlet UILabel *displayText;
	NSString *selectDay;
	
}

@property (nonatomic, retain) NSString *selectDay;

@end
