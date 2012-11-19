//
//  MyEventData.h
//  booker_craig_project1
//
//  Created by Craig Booker on 8/2/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyEventData : NSObject
{
    NSString *xEventTitle;
    NSString *xEventLocation;
    NSDate *xEventDate;
    NSDate *xEventTime;
}

@property (nonatomic, strong)NSString *xEventTitle;
@property (nonatomic, strong)NSString *xEventLocation;
@property (nonatomic, strong)NSDate *xEventDate;
@property (nonatomic, strong)NSDate *xEventTime;
@end
