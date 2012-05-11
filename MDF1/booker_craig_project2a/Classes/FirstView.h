//
//  FirstView.h
//  WindowTabBar
//
//  Created by Chakra on 04/05/10.
//  Copyright 2010 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstView : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
  NSMutableArray *itemsList;
  UITableView *myTableView;

}

@property(nonatomic,retain)NSMutableArray *itemsList;
@property(nonatomic,retain)UITableView *myTableView;

@end
