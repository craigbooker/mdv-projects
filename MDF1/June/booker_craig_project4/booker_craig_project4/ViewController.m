//
//  ViewController.m
//  booker_craig_project4
//
//  Created by Craig Booker on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tweets;

- (void)viewDidLoad
{
    //create our url
    url = [[NSURL alloc] initWithString:@"http://www.fullsail.com"];
    
    //create our request
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        // create our mutableData object
        requestData = [NSMutableData data];
    }    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTweets:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // Check to see if we have valid data
    if (data != nil)
    {
        // Add this data to our existing requestData
        [requestData appendData:data];
    }
}
// This function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection 
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil)
    {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if (documentsDirectory != nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory, @"index.html"];
            if (fullPath != nil)
            {
                [requestData writeToFile:fullPath atomically:true];
            }
        }

        NSLog(@"%@", requestString);
    }    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
