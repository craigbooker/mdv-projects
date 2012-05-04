//
//  topViewController.m
//  project3
//
//  Created by Craig Booker on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TopViewController.h"
#import "ViewController.h"

@implementation TopViewController
//@synthesize swipeLeftSave;
@synthesize leftSwiper;
@synthesize closeKeyBoardButton;
@synthesize myDatePicker;
@synthesize myTextField;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
        if (delegate != nil)
        {
            if ((myDatePicker != nil) && (myTextField != nil))
            {
                NSDate *selected = myDatePicker.date;
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                [dateFormatter setDateFormat:@"MM-dd-yyyy HH:mm:SS a"];           
                
                NSString *newEventLabel = [[NSString alloc] initWithString:@"New Event: "];
                NSString *textFieldVar = [[NSString alloc] initWithString: textField.text];
                NSString *dateString = [dateFormatter stringFromDate:selected];  
                NSString *newString = [[NSString alloc] initWithFormat:@"%@%@\n%@ \n\n",newEventLabel, textFieldVar, dateString];
                [dateFormatter release];          
                [delegate DidClose:newString];            
            }
            [self dismissModalViewControllerAnimated:true];
        }
    
        else if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
        {
            NSString *temp2 = @"hello";
            NSLog(@"%@", temp2);
        }
    
}
/*
-(IBAction)DidSave:(id)sender
{
    if (delegate != nil)
    {
        if ((myDatePicker != nil) && (myTextField != nil))
        {
            myDatePicker.minimumDate = [NSDate date];
            NSDate *selected = myDatePicker.date;
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:@"MM-dd-yyyy HH:mm:SS a"];           
            
            NSString *newEventLabel = [[NSString alloc] initWithString:@"New Event: "];
            NSString *textFieldVar = [[NSString alloc] initWithString: textField.text];
            NSString *dateString = [dateFormatter stringFromDate:selected];  
            NSString *newString = [[NSString alloc] initWithFormat:@"%@%@\n%@ \n\n",newEventLabel, textFieldVar, dateString];
            [dateFormatter release];          
            [delegate DidClose:newString];            
        }
        [self dismissModalViewControllerAnimated:true];
    }
}
*/
- (IBAction)dismissKeyboard:(id)sender {
    [myTextField resignFirstResponder];
}

- (void)viewDidLoad
{
    myDatePicker.minimumDate = [NSDate date];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [myTextField release];
    myTextField = nil;
    [self setMyTextField:nil];
    [self setCloseKeyBoardButton:nil];
    [self setMyDatePicker:nil];
    [self setLeftSwiper:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewWillAppear:(BOOL)animated
{
    
    topLeftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    topLeftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [topSwipeLabel addGestureRecognizer:topLeftSwiper];
    
    topRightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    topRightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [topSwipeLabel addGestureRecognizer:topRightSwiper];
    
    [super viewWillAppear:animated];
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)eventTextField
{
    eventTextField.text = [NSString stringWithString:@""];
    return true;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self dismissModalViewControllerAnimated:true];
    return true;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)dealloc {
    [myTextField release];
    [myTextField release];
    [closeKeyBoardButton release];

    [myDatePicker release];
    [leftSwiper release];
    [super dealloc];
}
@end
/*
 -(IBAction)onCloseKeyBoard:(id)sender
 {
 [self dismissModalViewControllerAnimated:TRUE];
 }
 */