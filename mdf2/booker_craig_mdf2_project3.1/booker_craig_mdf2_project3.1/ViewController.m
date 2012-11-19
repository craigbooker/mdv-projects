//
//  ViewController.m
//  booker_craig_mdf2_project3.1
//
//  Created by Craig Booker on 8/16/12.
//  Copyright (c) 2012 Craig Booker. All rights reserved.
//

#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "ImageCapViewController.h"
#import "MovieCapViewController.h"


@implementation ViewController

-(IBAction)onClick:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
        if([sender tag] == 1)
        {
            //ImageCapViewController *imageCapViewController = [[ImageCapViewController alloc] init];
            //if (imageCapViewController != nil)
            //{
                NSLog(@"I chose the %i button", [sender tag]);
            //if(pickerController != nil)
            //{
                    
                pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
                
                //Setup delegate
                pickerController.delegate = self;
                
                pickerController.allowsEditing = true;
                [self presentModalViewController:pickerController animated:true];
               //}
        
            //}
        } else if ([sender tag]  == 2)
        {
            NSLog(@"I chose the %i button", [sender tag]);
            //if(pickerController != nil)
            //{
                
            pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
            
            //Setup delegate
            pickerController.delegate = self;;
            
            pickerController.allowsEditing = false;
            pickerController.videoQuality = UIImagePickerControllerQualityTypeMedium;
            pickerController.mediaTypes = [NSArray arrayWithObjects:(NSString*)kUTTypeMovie, nil];
            [self presentModalViewController:pickerController animated:true];
            //}
            
        }
}

// user selected an image
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"%@", [info description]);
    NSString *mediaType = [info valueForKey:UIImagePickerControllerMediaType];
    NSLog(@"%@", mediaType);
    
    if ([mediaType isEqualToString:@"public.image"])
    {
        NSLog(@"I chose an image.");
        ImageCapViewController *imageCapViewController = [[ImageCapViewController alloc] init];
        [self.navigationController presentModalViewController:imageCapViewController animated:true];
        
        //[myAlertView release];

    } else if ([mediaType isEqualToString:@"public.movie"])
    {
        NSLog(@"I chose a  movie.");    
        MovieCapViewController *movieCapViewController = [[MovieCapViewController alloc] initWithNibName:@"MovieCapViewController" bundle:nil];
        //movieCapViewController.delegate = self;
        [self.navigationController presentModalViewController:movieCapViewController animated:true];
    }
    [picker dismissModalViewControllerAnimated:YES];
}



-(void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    // an error happened while saving image
    if(error != nil)
    {
        NSLog(@"%@", [error description]);
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"" message:@"Save failed!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [myAlertView show];
    } else {
        NSLog(@"Save was successful");
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"" message:@"Save successful!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
         [myAlertView show];
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

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
