//
//  MyTheatreData.h
//  booker_craig_MDF2_project4.0
//
//  Created by Craig Booker on 8/18/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTheatreData : NSObject
{
    NSString *xTheatreName;
    NSString *xTheatreLocation;
    NSString *xTheatrePhoto;
    NSString *xTheatreMovies;
    NSString *xMovieTimes;
    NSString *xMovieImages;
    NSString *xMovieTrailer;
}

@property (nonatomic, strong) NSString *xTheatreName;
@property (nonatomic, strong) NSString *xTheatreLocation;
@property (nonatomic, strong) NSString *xTheatrePhoto;
@property (nonatomic, strong) NSString *xTheatreMovies;
@property (nonatomic, strong) NSString *xMovieImages;
@property (nonatomic, strong) NSString *xMovieTimes;
@property (nonatomic, strong) NSString *xMovieTrailer;
@end
