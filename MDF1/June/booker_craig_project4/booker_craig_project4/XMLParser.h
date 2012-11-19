//
//  XMLParser.h
//  booker_craig_project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface XMLParser : NSObject <NSXMLParserDelegate>

@property (strong, readonly) NSMutableArray *tweets;

-(id) loadXMLByURL:(NSString *)urlString;

@end
