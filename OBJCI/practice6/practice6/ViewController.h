//
//  ViewController.h
//  practice6
//
//  Created by Craig Booker on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int secondVariable;
}

-(int)firstFunction;
-(int)addFunction:(int)secondVariable returnValue:(int)returnValue;
-(void)printResults:(int)resultSum;

@end


