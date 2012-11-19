//
//  XMLParser.h
//  ParsingXMLTutorial
//
//  Created by kent franks on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface XMLParser : NSObject <NSXMLParserDelegate>

@property (strong, readonly) NSMutableArray *tweets;

-(id) loadXMLByURL:(NSString *)urlString;

@end
