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


-(bool)compareNum:(NSInteger)compIntOne compIntTwo:(NSInteger)compIntTwo;
-(NSInteger)addNum:(NSInteger)firstInt secondInt:(NSInteger)secondInt;
-(NSMutableString*)appendString:(NSString*)appendStrgOne appendStrgTwo:(NSString*)appendStrgTwo;
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar;
-(void) displayAlertWithAppendResults:(NSMutableString *)appendResult;

@end
