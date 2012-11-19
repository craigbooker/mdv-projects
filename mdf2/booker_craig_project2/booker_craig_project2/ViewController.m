//
//  ViewController.m
//  booker_craig_project2
//
//  Created by Craig Booker on 8/5/12.
//  Copyright (c) 2012 Semantik Media, LLC. All rights reserved.
//

#import "ViewController.h"
#import <Accounts/Accounts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    if (accountStore != nil)
    {
        ACAccountType *accountType = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
        if(accountType != nil)
        {
            [accountStore requestAccessToAccountsWithType: accountType withCompletionHandler:^(BOOL granted, NSError *error) 
             {
                 if (granted)
                 {
                     NSArray *twitterAccounts = [accountStore accountsWithAccountType:accountType];
                     if (twitterAccounts != nil)
                     {
                         NSLog(@"%@", [twitterAccounts description]);
                     }
                 }
                 else
                 {
                     NSLog(@"User did not grant access");
                 }
             }];
        }
        
    }
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
