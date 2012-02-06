//
//  ViewController.m
//  project2
//
//  Created by Craig Booker on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    labelBookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 60.0f)];
    if (labelBookTitle != nil)
    {
        labelBookTitle.backgroundColor = [UIColor colorWithRed:0.639 green:0.867 blue:0.91 alpha:1]; /*#a3dde8*/
        labelBookTitle.text = @"Start with Why: How Great Leaders Inspire Everyone to Take Action";
        labelBookTitle.textAlignment = UITextAlignmentCenter;
        labelBookTitle.numberOfLines = 5;
        labelBookTitle.textColor = [UIColor colorWithRed:0.306 green:0.259 blue:0.259 alpha:1]; /*#4e4242*/
        
    }
    [self.view addSubview:labelBookTitle];
    labelAuthor = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 90.0f, 20.0f)];
    
    if (labelAuthor != nil)
    {    
        labelAuthor.backgroundColor = [UIColor colorWithRed:0.812 green:0.314 blue:0.051 alpha:1]; /*#cf500d*/
        labelAuthor.text = @"Author:";
        labelAuthor.textAlignment = UITextAlignmentRight;
        labelAuthor.numberOfLines = 2;
        labelAuthor.textColor = [UIColor colorWithRed:0.996 green:0.592 blue:0.275 alpha:1]; /*#fe9746*/
        //[UIColor colorWithRed:0.996 green:0.49 blue:0.224 alpha:1]; /*#fe7d39*/
    }
    [self.view addSubview:labelAuthor];
    labelAuthorText = [[UILabel alloc] initWithFrame:CGRectMake(95.0f, 120.0f, 225.0f, 20.0f)];
    
    if (labelAuthorText != nil)
    {    
        labelAuthorText.backgroundColor = [UIColor colorWithRed:0.953 green:0.525 blue:0.188 alpha:1]; /*#f38630*/
        //[UIColor colorWithRed:0.996 green:0.49 blue:0.224 alpha:1]; /*#fe7d39*/
        labelAuthorText.text = @"Simon Sinek";
        labelAuthorText.textAlignment = UITextAlignmentLeft;
        labelAuthorText.numberOfLines = 7;
        labelAuthorText.textColor = [UIColor whiteColor];
        //[UIColor colorWithRed:0.812 green:0.314 blue:0.051 alpha:1]; /*#cf500d*/
    }
    [self.view addSubview:labelAuthorText];    

    labelPublished = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 145.0f, 90.0f, 20.0f)];
    
    if (labelPublished != nil)
    {
        labelPublished.backgroundColor = [UIColor colorWithRed:0.153 green:0.616 blue:0.69 alpha:1]; /*#279db0*/
        labelPublished.text = @"Published:";
        labelPublished.textAlignment = UITextAlignmentRight;
        labelPublished.numberOfLines = 7;
        labelPublished.textColor = [UIColor colorWithRed:0.494 green:0.969 blue:0.957 alpha:1]; /*#7ef7f4*/
        //[UIColor colorWithRed:0.349 green:0.812 blue:0.886 alpha:1]; /*#59cfe2*/
    }
    [self.view addSubview:labelPublished];

    labelPublishedDate = [[UILabel alloc] initWithFrame:CGRectMake(95.0f, 145.0f, 225.0f, 20.0f)];
    
    if (labelPublishedDate != nil)
    {
        labelPublishedDate.backgroundColor = [UIColor colorWithRed:0.494 green:0.969 blue:0.957 alpha:1]; /*#7ef7f4*/
        //[UIColor colorWithRed:0.349 green:0.812 blue:0.886 alpha:1]; /*#59cfe2*/
        labelPublishedDate.text = @"October 29, 2009";
        labelPublishedDate.textAlignment = UITextAlignmentLeft;
        labelPublishedDate.numberOfLines = 7;
        labelPublishedDate.textColor = [UIColor colorWithRed:0.153 green:0.616 blue:0.69 alpha:1]; /*#279db0*/
    }
    [self.view addSubview:labelPublishedDate];
    
    
    labelSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 170.0f, 90.0f, 20.0f)];
    
    if (labelSummary != nil)
    {
        labelSummary.backgroundColor = [UIColor colorWithRed:0.396 green:0.047 blue:0.204 alpha:1]; /*#650c34*/
        labelSummary.text = @"Summary:";
        labelSummary.textAlignment = UITextAlignmentRight;
        labelSummary.numberOfLines = 7;
        labelSummary.textColor = [UIColor colorWithRed:0.765 green:0.443 blue:0.584 alpha:1]; /*#c37195*/
    }
    [self.view addSubview:labelSummary];

    labelSummaryDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 190.0f, 320.0f, 120.0f)];
    
    if (labelSummaryDetails != nil)
    {
        labelSummaryDetails.backgroundColor = [UIColor colorWithRed:0.765 green:0.443 blue:0.584 alpha:1]; /*#c37195*/
        //[UIColor colorWithRed:0.584 green:0.216 blue:0.384 alpha:1]; /*#953762*/
        labelSummaryDetails.text = @"Why do you do what you do? Why are some people and organizations more innovative, more influential, and more profitable than others? Why do some command greater loyalty from customers and employees alike? Even among the successful, why are so few able to repeat their success over and over?People like Martin Luther King Jr., Steve Jobs, and the Wright Brothers might have little in common, but they all started with \"why.\" It was their natural ability to start with \"why\" that enabled them to inspire those around them and to achieve remarkable things. ";
        labelSummaryDetails.textAlignment = UITextAlignmentCenter;
        labelSummaryDetails.numberOfLines = 7;
        labelSummaryDetails.textColor = [UIColor colorWithRed:0.396 green:0.047 blue:0.204 alpha:1]; /*#650c34*/
    }
    [self.view addSubview:labelSummaryDetails];

    labelItemList = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 120.0f, 20.0f)];
    
    if (labelItemList != nil)
    {
        labelItemList.backgroundColor = [UIColor colorWithRed:0.957 green:0.941 blue:0.749 alpha:1]; /*#f4f0bf*/
        //[UIColor colorWithRed:0.792 green:0.459 blue:0.129 alpha:1]; /*#ca7521*/
        labelItemList.text = @"List of Items:";
        labelItemList.textAlignment = UITextAlignmentLeft;
        labelItemList.numberOfLines = 7;
        labelItemList.textColor = [UIColor colorWithRed:0.384 green:0.341 blue:0.31 alpha:1]; /*#62574f*/
        //[UIColor colorWithRed:0.973 green:0.639 blue:0.31 alpha:1]; /*#f8a34f*/
    }
    [self.view addSubview:labelItemList];
    NSArray *itemListArray = [[NSArray alloc] initWithObjects:@"Motivation", @"drive", @"success", @"extraordinary", @"innovative", nil];
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@""];
    //int stringLength = [mutableString length];
    
    for (int i=0; i<[itemListArray count]; i++) 
    {
    int stringLength = [mutableString length];
    NSString *temp = [[NSString alloc] initWithFormat:@"%@, ", [itemListArray objectAtIndex:i]];
                      [mutableString insertString:temp atIndex:stringLength];

    }
    labelItemDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 345.0f, 320.0f, 120.0f)];
    
    if (labelItemDetails != nil)
    {
        labelItemDetails.backgroundColor = [UIColor colorWithRed:0.192 green:0.161 blue:0.145 alpha:1]; /*#312925*/
        //labelItemDetails.text = @"Motivation, drive, success, extraordinary, innovative";
        labelItemDetails.text = mutableString;
        labelItemDetails.textAlignment = UITextAlignmentCenter;
        labelItemDetails.numberOfLines = 7;
        labelItemDetails.textColor = [UIColor colorWithRed:0.957 green:0.941 blue:0.749 alpha:1]; /*#f4f0bf*/
        //[UIColor whiteColor];
    }
    [self.view addSubview:labelItemDetails];    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
