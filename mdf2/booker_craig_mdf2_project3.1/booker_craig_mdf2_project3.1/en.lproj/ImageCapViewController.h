//
//  ImageCapViewController.h
//  booker_craig_mdf2_project3
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageCapViewController : UIViewController 
{
    UIImageView *scaledImageView;
    UIImageView *photoImageView;
}
 
@property (nonatomic, strong) IBOutlet UIImageView *photoImageView;
@property (nonatomic, strong) IBOutlet UIImageView *scaledImageView;
@end