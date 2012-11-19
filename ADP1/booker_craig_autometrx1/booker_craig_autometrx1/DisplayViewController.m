//
//  DisplayViewController.m
//  booker_craig_autometrx1
//
//  Created by Craig Booker on 9/24/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController
@synthesize currentVehicle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *vehicleLabel = [UILabel labelNamed:[currentVehicle vehicleName]];
    [self.currentVehicle setTextLabel:vehicleLabel];
    [self setTitle:[currentVehicle profileName]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
