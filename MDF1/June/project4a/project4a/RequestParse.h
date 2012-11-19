//
//  RequestParse.h
//  project4a
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface RequestParse : NSObject <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLRequest *request;
    NSURLConnection *connection;
    NSMutableData *requestData;
}

@property (strong, readonly) NSMutableArray *tweets;

-(id) loadXMLByURL:(NSString *)urlString;

@end