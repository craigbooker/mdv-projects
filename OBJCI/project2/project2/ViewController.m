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
        labelBookTitle.backgroundColor = [UIColor colorWithHue:0.65f saturation:0.7f brightness:0.7f alpha:0.7f];
        labelBookTitle.text = @"Start with Why: How Great Leaders Inspire Everyone to Take Action";
        labelBookTitle.textAlignment = UITextAlignmentCenter;
        labelBookTitle.numberOfLines = 5;
        labelBookTitle.textColor = [UIColor yellowColor];
        
    }
    [self.view addSubview:labelBookTitle];
    labelAuthor = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 100.0f, 20.0f)];
    
    if (labelAuthor != nil)
    {    
        labelAuthor.backgroundColor = [UIColor lightGrayColor];
        labelAuthor.text = @"Author:";
        labelAuthor.textAlignment = UITextAlignmentRight;
        labelAuthor.numberOfLines = 2;
        labelAuthor.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelAuthor];
    labelAuthorText = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 120.0f, 210.0f, 20.0f)];
    
    if (labelAuthorText != nil)
    {    
        labelAuthorText.backgroundColor = [UIColor brownColor];
        labelAuthorText.text = @"Simon Sinek";
        labelAuthorText.textAlignment = UITextAlignmentLeft;
        labelAuthorText.numberOfLines = 7;
        labelAuthorText.textColor = [UIColor yellowColor];
    }
    [self.view addSubview:labelAuthorText];    

    labelPublished = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 145.0f, 100.0f, 20.0f)];
    
    if (labelPublished != nil)
    {
        labelPublished.backgroundColor = [UIColor blackColor];
        labelPublished.text = @"Published:";
        labelPublished.textAlignment = UITextAlignmentCenter;
        labelPublished.numberOfLines = 7;
        labelPublished.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelPublished];

    labelPublishedDate = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 145.0f, 210.0f, 20.0f)];
    
    if (labelPublishedDate != nil)
    {
        labelPublishedDate.backgroundColor = [UIColor blackColor];
        labelPublishedDate.text = @"October 29, 2009";
        labelPublishedDate.textAlignment = UITextAlignmentLeft;
        labelPublishedDate.numberOfLines = 7;
        labelPublishedDate.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelPublishedDate];
    
    
    labelSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 170.0f, 100.0f, 20.0f)];
    
    if (labelSummary != nil)
    {
        labelSummary.backgroundColor = [UIColor blackColor];
        labelSummary.text = @"Summary:";
        labelSummary.textAlignment = UITextAlignmentCenter;
        labelSummary.numberOfLines = 7;
        labelSummary.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelSummary];

    labelSummaryDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 190.0f, 320.0f, 120.0f)];
    
    if (labelSummaryDetails != nil)
    {
        labelSummaryDetails.backgroundColor = [UIColor lightGrayColor];
        labelSummaryDetails.text = @"Why do you do what you do? Why are some people and organizations more innovative, more influential, and more profitable than others? Why do some command greater loyalty from customers and employees alike? Even among the successful, why are so few able to repeat their success over and over?People like Martin Luther King Jr., Steve Jobs, and the Wright Brothers might have little in common, but they all started with \"why.\" It was their natural ability to start with \"why\" that enabled them to inspire those around them and to achieve remarkable things. ";
        labelSummaryDetails.textAlignment = UITextAlignmentCenter;
        labelSummaryDetails.numberOfLines = 7;
        labelSummaryDetails.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelSummaryDetails];

    labelItemList = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 100.0f, 20.0f)];
    
    if (labelItemList != nil)
    {
        labelItemList.backgroundColor = [UIColor grayColor];
        labelItemList.text = @"List of Items:";
        labelItemList.textAlignment = UITextAlignmentLeft;
        labelItemList.numberOfLines = 7;
        labelItemList.textColor = [UIColor blueColor];
    }
    [self.view addSubview:labelItemList];
    NSArray *itemListArray = [[NSArray alloc] initWithObjects:@"Motivation", @"drive", @"success", @"extraordinary", @"innovative". nil];
    NSMutableString *itemListString = [[NSMutableString alloc] 
    for (int i=0; i<5; i++) 
    {
    itemListString
    }
    labelItemDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 345.0f, 320.0f, 70.0f)];
    
    if (labelItemDetails != nil)
    {
        labelItemDetails.backgroundColor = [UIColor blackColor];
        //labelItemDetails.text = @"Motivation, drive, success, extraordinary, innovative";
        labelItemDetails.text = itemListString;
        labelItemDetails.textAlignment = UITextAlignmentCenter;
        labelItemDetails.numberOfLines = 7;
        labelItemDetails.textColor = [UIColor blueColor];
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
