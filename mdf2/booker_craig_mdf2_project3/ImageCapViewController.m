//
//  ImageCapViewController.m
//  booker_craig_mdf2_project3
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "ImageCapViewController.h"

@implementation ImageCapViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"camera.png"];
        self.tabBarItem.title = NSLocalizedString(@"Image Capture", @"Image Capture");
        // Custom initialization
    }
    return self;
}
-(IBAction)onClick:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    if(pickerController != nil)
    {
        
        pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        //Setup delegate
        pickerController.delegate = self;
        
        pickerController.allowsEditing = true;
        [self presentModalViewController:pickerController animated:true];
    }
}
// user selected an image
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"%@", [info description]);
    UIImage *selectedImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    if(selectedImage != nil)
    {
        photoImageView.image = selectedImage;
        
        // save the image to the photo album
        UIImageWriteToSavedPhotosAlbum(selectedImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }
    
    UIImage *scaledImage = [info objectForKey:@"UIImagePickerControllerEditedImage"];
    if(scaledImage != nil)
    {
        scaledImageView.image = scaledImage;
        // save the image to the photo album
        UIImageWriteToSavedPhotosAlbum(scaledImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }
    [picker dismissModalViewControllerAnimated:true];
}

-(void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    // an error happened while saving image
    if(error != nil)
    {
        NSLog(@"%@", [error description]);
    } else {
        NSLog(@"Save was successful");
    }
}

// user selected cancel
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:true];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
