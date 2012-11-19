//
//  ViewController.m
//  xmlParsing
//
//  Created by Craig Booker on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    numItems = 0;
    NSData *xmlData = [self GetFileDataFromFile:@"myXMLDoc"];

    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    
    }
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;
{
    // We are Parsing the foodlist tag
    if ([elementName isEqualToString:@"FoodList"])
    {
        NSString *numItemsStr = [attributeDict valueForKey:@"NumItems"];
        if (numItemsStr != nil)
        {
            numItems = [numItemsStr = intValue];
        }
    }
}

-(NSData*)GetFileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    
    // Create the filemanager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    // Get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); 
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    // Create the fullpath to the data file
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    // Does the path and filename exist?
    if ([fileManager fileExistsAtPath:filePath])
    {
        //returns back the NSData for the file
        return [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
