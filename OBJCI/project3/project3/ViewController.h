//
//  ViewController.h
//  project3
//
//  Created by Craig Booker on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
NSString *tempMsg;
NSString *tmpTitle;
}


-(BOOL)compareNum:(NSInteger)compIntOne compIntTwo:(NSInteger)compIntTwo;
//-(int)addNum:(int)firstInt secondInteger:(int)secondInt;
-(NSInteger*)addNum:(NSInteger*)firstInt secondInt:(NSInteger*)secondInt;
-(NSString *)appendString:(NSString*)appendStrgOne appendStrgTwo:(NSString*)appendStrgTwo;
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar;


@end
