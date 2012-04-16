//
//  ViewController.m
//  project9a
//
//  Created by Craig Booker on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    picImage = [UIImage imageNamed:@"photo.JPG"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (void) viewWillAppear:(BOOL)animated
{
    CGRect imageRect = CGRectMake(0.0f, 0.0f, picImage.size.width, picImage.size.height);
    
    imageView.frame = imageRect;
    imageView.image = picImage;
    scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height);
    [super viewWillAppear:animated];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
