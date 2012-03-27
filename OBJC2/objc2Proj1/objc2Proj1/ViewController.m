//
//  ViewController.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    TriangleClass *triangleClass = [[TriangleClass alloc] init];
    if (triangleClass != nil)
    {
        [triangleClass printInfo];
    }    
    SquareClass *squareClass = [[SquareClass alloc] init];
    if (squareClass != nil)
    {
        [squareClass printInfo];
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
