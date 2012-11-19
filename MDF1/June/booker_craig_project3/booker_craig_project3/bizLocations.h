//
//  locations.h
//  booker_craig_project3
//
//  Created by Craig Booker on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BizLocations : NSObject
{
    NSString *xBizName;
    NSString *xLatValue;
    NSString *xLongValue;
    NSString *xLocation;

}

@property (nonatomic,retain) NSString *xBizName;
@property (nonatomic,retain) NSString *xLocation;
@property (nonatomic,retain) NSString *xLatValue;
@property (nonatomic,retain) NSString *xLongValue;
 

@end
