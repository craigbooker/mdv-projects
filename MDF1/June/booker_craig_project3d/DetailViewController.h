//
//  DetailViewController.h
//  
//
//  Created by Craig Booker on 05/30/10.
//  Copyright 2012 Semantik Media, LLC All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyMapAnnotation.h"
#import "bizLocation.h"

@interface DetailViewController : UIViewController {
	
    BizLocation *xBizLocation;
	IBOutlet UILabel *displayText;
	NSString *selectedLocation;
    IBOutlet UILabel *bizNameLabelValue;
    IBOutlet UILabel *bizCoordsLabelValue;
	IBOutlet MKMapView *detailMapView;
}

@property (nonatomic, retain) NSString *selectedLocation;
@property (nonatomic, strong) IBOutlet UILabel *locationNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *bizNameLabelValue;
@property (nonatomic, strong) UILabel *bizCoordsLabelValue;
@property (nonatomic, strong) UILabel *bizLocationNameLabel;
@property (strong, nonatomic) NSArray *locationDetails;
@property (nonatomic,retain) BizLocation *xBizLocation;
@end
