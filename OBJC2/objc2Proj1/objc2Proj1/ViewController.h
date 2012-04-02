//
//  ViewController.h
//  objc2Proj1
//
//  Created by Craig Booker on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@interface ViewController : UIViewController
{

    /*
    UILabel *printResults0;
    UILabel *printResults1;
    UILabel *printResults2;
     */
    UILabel *labelProjectTitle;
    UILabel *labelDeveloper;
    UILabel *labelDeveloperText;    
    UILabel *labelAssignment;    
    UILabel *labelPublishedDate;
    UILabel *labelResults;
    
    UILabel *labelShapeType1;  
    UILabel *labelShapeType2;
    UILabel *labelShapeType3;    
    /*
    UILabel *labelShapeTypeDetails1;  
    UILabel *labelShapeArea1;
    UILabel *labelShapeAreaDetails1;
    
  
    UILabel *labelShapeTypeDetails2;
    UILabel *labelShapeArea2;
    UILabel *labelShapeAreaDetails2;
    
    UILabel *labelShapeTypeDetails3;
    UILabel *labelShapeArea3;
    UILabel *labelShapeAreaDetails3;    
    */
   // UILabel *labelSummaryDetails;    
    UILabel *labelItemDetails; 
}


@end
