//
//  MyAnnotationView.m
//  mapKit
//
//  Created by Craig Booker on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyAnnotationView.h"

@implementation MyAnnotationView

-(id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    if ((self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier]))
    {
        self.image = [UIImage imageNamed:@"appicon.png"];
    }
    return self;
}
@end
