//
//  URLRequestor.h
//  urlRequestor
//
//  Created by Craig Booker on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface URLRequestor : NSObject<NSURLConnectionDataDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
}
-(id) getDataByURL:(NSString *)urlString;
@end
