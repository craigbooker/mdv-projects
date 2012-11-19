//
//  XMLParser.m
//  project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMLParser.h"

@implementation XMLParser 
@synthesize tweets = _tweets;


NSMutableString	*currentNodeContent;
NSXMLParser		*parser;
Tweet			*currentTweet;
bool            isStatus;

-(id) loadXMLByURL:(NSString *)urlString
{
	_tweets			= [[NSMutableArray alloc] init];
	NSURL *url		= [NSURL URLWithString:urlString];
	NSData	*data   = [[NSData alloc] initWithContentsOfURL:url];
	parser			= [[NSXMLParser alloc] initWithData:data];
	parser.delegate = self;
	[parser parse];
	return self;
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