//
//  requestParse.m
//  urlRequestor
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "requestParse.h"

@implementation requestParse 
@synthesize tweets = _tweets;


NSMutableString	*currentNodeContent;
NSXMLParser		*parser;
Tweet			*currentTweet;
bool            isStatus;

-(id) loadXMLByURL:(NSString *)urlString
{
	_tweets			= [[NSMutableArray alloc] init];
	NSURL *url		= [NSURL URLWithString:urlString];
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        requestData = [NSMutableData data];
    }
    
	//NSData	*data   = [[NSData alloc] initWithContentsOfURL:url];
	//NSData	*data   = [[NSData alloc] initWithContentsOfURL:requestData];    
	//parser			= [[NSXMLParser alloc] initWithData:data];
    parser = [[NSXMLParser alloc] initWithData:requestData];
	parser.delegate = self;
	[parser parse];
	return self;
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


- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
	currentNodeContent = (NSMutableString *) [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
	if ([elementname isEqualToString:@"status"]) 
	{
		currentTweet = [Tweet alloc];
        isStatus = YES;
	}
	if ([elementname isEqualToString:@"user"]) 
	{
        isStatus = NO;
	}
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if (isStatus) 
    {
        if ([elementname isEqualToString:@"created_at"]) 
        {
            currentTweet.dateCreated = currentNodeContent;
        }
        if ([elementname isEqualToString:@"text"]) 
        {
            currentTweet.content = currentNodeContent;
        }
    }
	if ([elementname isEqualToString:@"status"]) 
	{
		[self.tweets addObject:currentTweet];
		currentTweet = nil;
		currentNodeContent = nil;
	}
}

@end