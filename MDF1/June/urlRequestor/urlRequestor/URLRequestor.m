//
//  URLRequestor.m
//  urlRequestor
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "URLRequestor.h"

@implementation URLRequestor





-(id) getDataByURL:(NSString *)urlString
{
    int temp = 3;
    return self;
}

- (void)viewDidLoad
{
    url = [[NSURL alloc] initWithString:@"http://api.twitter.com/statuses/user_timeline/obd2.xml"];
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        requestData = [NSMutableData data];
    }
    
    //[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidUnload
{
   // [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if (data != nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
        
    }
}
// Called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil) 
    {
        NSLog(@"%@", requestString); 
    }
}

@end
