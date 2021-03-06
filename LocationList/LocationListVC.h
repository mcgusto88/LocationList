//
//  ViewController.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLocationDelegate.h"
#import "AddLocationVC.h"
#import "LocationDetailVC.h"
@interface LocationListVC : UIViewController<UITableViewDelegate,UITableViewDataSource,AddLocationDelegate>
@property(strong,nonatomic)IBOutlet UITableView *tableView;
@property(strong,nonatomic)NSMutableArray *locations;

@end

