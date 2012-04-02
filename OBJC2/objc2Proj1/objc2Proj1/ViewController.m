//
//  ViewController.m
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    ShapeFactory *shapeFactory = [[ShapeFactory alloc] init];
    if (shapeFactory != nil)
    {
        SquareClass *square = (SquareClass*) [shapeFactory CreateShape:0];
        [square GetArea];
        labelShapeType1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 190.0f, 200.0f, 20.0f)];
        
        if (labelShapeType1 != nil)
        {
            labelShapeType1.backgroundColor = [UIColor grayColor];
            labelShapeType1.text = [square getTextOutput];
            labelShapeType1.textAlignment = UITextAlignmentLeft;
            labelShapeType1.numberOfLines = 7;
            labelShapeType1.textColor = [UIColor blackColor]; 
        }
        [self.view addSubview:labelShapeType1];
    }
    {
        TriangleClass *triangle = (TriangleClass*) [shapeFactory CreateShape:1];
        [triangle GetArea];
        
        labelShapeType2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 210.0f, 200.0f, 20.0f)];
        
        if (labelShapeType2 != nil)
        {
            labelShapeType2.backgroundColor = [UIColor grayColor];
            labelShapeType2.text = [triangle getTextOutput];
            labelShapeType2.textAlignment = UITextAlignmentLeft;
            labelShapeType2.numberOfLines = 7;
            labelShapeType2.textColor = [UIColor blackColor]; 
        }
        [self.view addSubview:labelShapeType2];
    }
    {
        ShapeClass *rectangle = [shapeFactory CreateShape:2];
        [rectangle GetArea];
 
        labelShapeType3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 230.0f, 200.0f, 20.0f)];
        
        if (labelShapeType3 != nil)
        {
            labelShapeType3.backgroundColor = [UIColor grayColor];
            labelShapeType3.text = [rectangle getTextOutput];
            labelShapeType3.textAlignment = UITextAlignmentLeft;
            labelShapeType3.numberOfLines = 7;
            labelShapeType3.textColor = [UIColor blackColor]; 
        }
        [self.view addSubview:labelShapeType3];
    }
    
  

 
 
    
    labelProjectTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 60.0f)];
    if (labelProjectTitle != nil)
    {
        labelProjectTitle.backgroundColor = [UIColor colorWithRed:0.639 green:0.867 blue:0.91 alpha:1]; /*#a3dde8*/
        labelProjectTitle.text = @"Objective-C 2";
        labelProjectTitle.textAlignment = UITextAlignmentCenter;
        labelProjectTitle.numberOfLines = 5;
        labelProjectTitle.textColor = [UIColor colorWithRed:0.306 green:0.259 blue:0.259 alpha:1]; /*#4e4242*/
        
    }
    [self.view addSubview:labelProjectTitle];
    labelDeveloper = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 120.0f, 20.0f)];
    
    if (labelDeveloper != nil)
    {    
        labelDeveloper.backgroundColor = [UIColor colorWithRed:0.812 green:0.314 blue:0.051 alpha:1]; /*#cf500d*/
        labelDeveloper.text = @"Developer:";
        labelDeveloper.textAlignment = UITextAlignmentRight;
        labelDeveloper.numberOfLines = 2;
        labelDeveloper.textColor = [UIColor colorWithRed:0.996 green:0.592 blue:0.275 alpha:1]; /*#fe9746*/
        //[UIColor colorWithRed:0.996 green:0.49 blue:0.224 alpha:1]; /*#fe7d39*/
    }
    [self.view addSubview:labelDeveloper];
    labelDeveloperText = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 120.0f, 225.0f, 20.0f)];
    
    if (labelDeveloperText != nil)
    {    
        labelDeveloperText.backgroundColor = [UIColor colorWithRed:0.953 green:0.525 blue:0.188 alpha:1]; /*#f38630*/
        labelDeveloperText.text = @"Craig Booker";
        labelDeveloperText.textAlignment = UITextAlignmentLeft;
        labelDeveloperText.numberOfLines = 7;
        labelDeveloperText.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:labelDeveloperText];    
    
    labelAssignment = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 145.0f, 120.0f, 20.0f)];
    
    if (labelAssignment != nil)
    {
        labelAssignment.backgroundColor = [UIColor colorWithRed:0.153 green:0.616 blue:0.69 alpha:1]; /*#279db0*/
        labelAssignment.text = @"Assignment:";
        labelAssignment.textAlignment = UITextAlignmentRight;
        labelAssignment.numberOfLines = 7;
        labelAssignment.textColor = [UIColor colorWithRed:0.494 green:0.969 blue:0.957 alpha:1]; /*#7ef7f4*/
    }
    [self.view addSubview:labelAssignment];
    
    labelPublishedDate = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 145.0f, 225.0f, 20.0f)];
    
    if (labelPublishedDate != nil)
    {
        labelPublishedDate.backgroundColor = [UIColor colorWithRed:0.494 green:0.969 blue:0.957 alpha:1]; /*#7ef7f4*/
        //[UIColor colorWithRed:0.349 green:0.812 blue:0.886 alpha:1]; /*#59cfe2*/
        labelPublishedDate.text = @"Project 1";
        labelPublishedDate.textAlignment = UITextAlignmentLeft;
        labelPublishedDate.numberOfLines = 7;
        labelPublishedDate.textColor = [UIColor colorWithRed:0.153 green:0.616 blue:0.69 alpha:1]; /*#279db0*/
    }
    [self.view addSubview:labelPublishedDate];
    
    
    labelResults = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 170.0f, 120.0f, 20.0f)];
    
    if (labelResults != nil)
    {
        labelResults.backgroundColor = [UIColor grayColor];
        labelResults.text = @"Results:";
        labelResults.textAlignment = UITextAlignmentRight;
        labelResults.numberOfLines = 7;
        labelResults.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelResults];

    
     /*
    labelShapeTypeDetails1 = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 190.0f, 70.0f, 20.0f)];
    
    if (labelShapeTypeDetails1 != nil)
    {
        labelShapeTypeDetails1.backgroundColor = [UIColor grayColor];
        labelShapeTypeDetails1.text = @"";
        labelShapeTypeDetails1.textAlignment = UITextAlignmentLeft;
        labelShapeTypeDetails1.numberOfLines = 7;
        labelShapeTypeDetails1.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeTypeDetails1];
    labelShapeArea1 = [[UILabel alloc] initWithFrame:CGRectMake(140.0f, 190.0f, 70.0f, 20.0f)];
    
    if (labelShapeArea1 != nil)
    {
        labelShapeArea1.backgroundColor = [UIColor grayColor];
        labelShapeArea1.text = @"Area:";
        labelShapeArea1.textAlignment = UITextAlignmentLeft;
        labelShapeArea1.numberOfLines = 7;
        labelShapeArea1.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeArea1];
    labelShapeAreaDetails1 = [[UILabel alloc] initWithFrame:CGRectMake(210.0f, 190.0f, 70.0f, 20.0f)];
    
    if (labelShapeAreaDetails1 != nil)
    {
        labelShapeAreaDetails1.backgroundColor = [UIColor grayColor];
        labelShapeAreaDetails1.text = @"";
        labelShapeAreaDetails1.textAlignment = UITextAlignmentLeft;
        labelShapeAreaDetails1.numberOfLines = 7;
        labelShapeAreaDetails1.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeAreaDetails1];
    */
   
   
    /*
    labelShapeTypeDetails2 = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 210.0f, 70.0f, 20.0f)];
    
    if (labelShapeTypeDetails2 != nil)
    {
        labelShapeTypeDetails2.backgroundColor = [UIColor grayColor];
        labelShapeTypeDetails2.text = @"";
        labelShapeTypeDetails2.textAlignment = UITextAlignmentLeft;
        labelShapeTypeDetails2.numberOfLines = 7;
        labelShapeTypeDetails2.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeTypeDetails2];
    labelShapeArea2 = [[UILabel alloc] initWithFrame:CGRectMake(140.0f, 210.0f, 70.0f, 20.0f)];
    
    if (labelShapeArea2 != nil)
    {
        labelShapeArea2.backgroundColor = [UIColor grayColor];
        labelShapeArea2.text = @"Area:";
        labelShapeArea2.textAlignment = UITextAlignmentLeft;
        labelShapeArea2.numberOfLines = 7;
        labelShapeArea2.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeArea2];
    labelShapeAreaDetails2 = [[UILabel alloc] initWithFrame:CGRectMake(210.0f, 210.0f, 70.0f, 20.0f)];
    
    if (labelShapeAreaDetails2 != nil)
    {
        labelShapeAreaDetails2.backgroundColor = [UIColor grayColor];
        labelShapeAreaDetails2.text = @"";
        labelShapeAreaDetails2.textAlignment = UITextAlignmentLeft;
        labelShapeAreaDetails2.numberOfLines = 7;
        labelShapeAreaDetails2.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeAreaDetails2]; 
    */
    
    
    /*
    labelShapeTypeDetails3 = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 230.0f, 70.0f, 20.0f)];
    
    if (labelShapeTypeDetails3 != nil)
    {
        labelShapeTypeDetails3.backgroundColor = [UIColor grayColor];
        labelShapeTypeDetails3.text = @"";
        labelShapeTypeDetails3.textAlignment = UITextAlignmentLeft;
        labelShapeTypeDetails3.numberOfLines = 7;
        labelShapeTypeDetails3.textColor = [UIColor colorWithRed:0.957 green:0.941 blue:0.749 alpha:1]; #f4f0bf
    } 
    [self.view addSubview:labelShapeTypeDetails3];
    labelShapeArea3 = [[UILabel alloc] initWithFrame:CGRectMake(140.0f, 230.0f, 70.0f, 20.0f)];
    
    if (labelShapeArea3 != nil)
    {
        labelShapeArea3.backgroundColor = [UIColor grayColor];
        labelShapeArea3.text = @"Area:";
        labelShapeArea3.textAlignment = UITextAlignmentLeft;
        labelShapeArea3.numberOfLines = 7;
        labelShapeArea3.textColor = [UIColor blackColor]; 
    }
    [self.view addSubview:labelShapeArea3];
    labelShapeAreaDetails3 = [[UILabel alloc] initWithFrame:CGRectMake(210.0f, 230.0f, 70.0f, 20.0f)];
    
    if (labelShapeAreaDetails3 != nil)
    {
        labelShapeAreaDetails3.backgroundColor = [UIColor grayColor];
        labelShapeAreaDetails3.text = @"";
        labelShapeAreaDetails3.textAlignment = UITextAlignmentLeft;
        labelShapeAreaDetails3.numberOfLines = 7;
        labelShapeAreaDetails3.textColor = [UIColor colorWithRed:0.957 green:0.941 blue:0.749 alpha:1];  #f4f0bf 
    }
    [self.view addSubview:labelShapeAreaDetails3];        
    
*/
    

    

    labelItemDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 345.0f, 320.0f, 120.0f)];
    
    if (labelItemDetails != nil)
    {
        labelItemDetails.backgroundColor = [UIColor lightGrayColor]; /*#312925*/
        labelItemDetails.text = @"";
        labelItemDetails.textAlignment = UITextAlignmentCenter;
        labelItemDetails.numberOfLines = 7;
        labelItemDetails.textColor = [UIColor colorWithRed:0.957 green:0.941 blue:0.749 alpha:1]; /*#f4f0bf*/
    }
    [self.view addSubview:labelItemDetails];    
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
