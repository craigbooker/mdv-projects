//
//  ViewController.m
//  objc2Wk1Practice2
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BaseShape.h"
#import "SquareShape.h"
#import "TriangleShape.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    TriangleShape *triangleShape = [[TriangleShape alloc] init];
    if (triangleShape != nil)
    {
        [triangleShape printInfo];
    }    
    SquareShape *squareShape = [[SquareShape alloc] init];
    if (squareShape != nil)
    {
        [squareShape printInfo];
    }      
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

@end
