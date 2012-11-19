//
//  DetailViewController.h
//  booker_craig_project1
//
//  Created by Craig Booker on 9/24/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
