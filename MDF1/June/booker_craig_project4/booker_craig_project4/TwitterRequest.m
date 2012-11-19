//
//  TwitterRequest.m
//  booker_craig_project4
//
//  Created by Craig Booker on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterRequest.h"

@implementation TwitterRequest
@synthesize username;
@synthesize password;
@synthesize receivedData;
@synthesize delegate;
@synthesize callback;
@synthesize errorCallback;


-(void)friends_timeline:(id)requestDelegate requestSelector:(SEL)requestSelector
{
    self.delegate = requestDelegate;
    self.callback = requestSelector;
    
    NSURL *url = [NSURL URLWithString:@"http://twitter.com/statuses/friends_timeline.xml"];
    [self request:url];
}

-(void)request:(NSURL *) url
{
    theRequest = [[NSMutableURLRequest alloc] initWithURL:url];
    theConnection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    
    if(theConnection) {
        receivedData =[NSMutableData data];
    } else {
    
    }
}

-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
   
    if([challenge previousFailureCount] == 0) {
        NSURLCredential *newCredential;
        newCredential = [NSURLCredential credentialWithUser:[self username] password:[self password] persistence:NSURLCredentialPersistenceNone];
                         [[challenge sender] useCredential:newCredential forAuthenticationChallenge:challenge];
                         } else {
                         
                             [[challenge sender] cancelAuthenticationChallenge:challenge];
                             
                             NSLog(@"Invalid Username or Password");
                         }

}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [receivedData setLength:0];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {

    [receivedData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
// Release the connection, and the data object
    //[connection release];
    
}

@end
