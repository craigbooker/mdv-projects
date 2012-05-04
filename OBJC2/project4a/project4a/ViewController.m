//
//  ViewController.m
//  project3
//
//  Created by Craig Booker on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"

@implementation ViewController

-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        
        NSString *dataString = textView.text;
        
        [defaults setObject:dataString forKey:@"data"];
        
        [defaults synchronize]; 
    }

}

-(void)DidClose:(NSString*)newString
{
    if([textView.text isEqualToString:@"No events added!"])
    {
        textView.text = @"";
        outPutText = [NSMutableString stringWithString:textView.text];
        [outPutText appendString:newString];
        textView.text = outPutText;
    }
    else {
        outPutText = [NSMutableString stringWithString:textView.text];
        [outPutText appendString:newString];
        textView.text = outPutText;
        
    }
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
    return true;
}

- (void)viewDidLoad
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        
        NSString *dataString = [defaults objectForKey:@"data"];
        
        textView.text = dataString;        
    } 
    //[ViewController loadEvents];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(void)viewWillAppear:(BOOL)animated
{
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwiper];
 
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSString *temp1 = @"hello";
        NSLog(@"%@", temp1);
    }
    else if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        TopViewController *topView = [[TopViewController alloc] initWithNibName:@"TopView" bundle:nil];
        if (topView != nil)
        {
            topView.delegate = self;
            [self presentModalViewController:topView animated:true];
        }
        [textView resignFirstResponder];
    
    }


}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
