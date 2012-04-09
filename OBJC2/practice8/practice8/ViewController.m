//
//  ViewController.m
//  practice8
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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

/*
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component == 0)
    {
        return 50.0f;
    } else {
        return 30.0f;    
    }   
 
}
*/
/*
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *str = [NSString stringWithFormat:@"col=%d, row=%d", component, row];
    NSLog(@"%@", str);
}
*/
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *str = [NSString stringWithFormat:@"col=%d, row=%d", component, row]; 
    return str;
}
-(IBAction)GetPickerText:(id)sender
{
    NSInteger col1Selection = [pickerView selectedRowInComponent:0];
    NSInteger col2Selection = [pickerView selectedRowInComponent:1];

    NSLog(@"col1Row=%d, col2Row=%d", col1Selection, col2Selection);
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
-(IBAction)onClick:(id)sender
{

}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 3;
}
@end
