//
//  ImageCapViewController.h
//  booker_craig_mdf2_project3
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageCapViewController : UIViewController <UIImagePickerControllerDelegate>
{
    IBOutlet UIImageView *scaledImageView;
    IBOutlet UIImageView *photoImageView;
    
}
-(IBAction)onClick:(id)sender;
@end
