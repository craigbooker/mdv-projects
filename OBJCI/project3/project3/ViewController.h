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

}


-(bool)compareNum:(NSInteger)compIntOne compIntTwo:(NSInteger)compIntTwo;
-(NSInteger)addNum:(NSInteger)firstInt secondInt:(NSInteger)secondInt;
-(NSMutableString*)appendString:(NSString*)appendStringOne appendStringTwo:(NSString*)appendStringTwo;
-(void) displayAlertWithNSNumber:(NSNumber*)numberVar;

/*-(void) displayAlertWithAppendResults:(NSMutableString *)appendResult;
-(void) displayAlertWithCompResults:(bool)appendResult; */
@end
