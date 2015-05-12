//
//  LocationDetailVC.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface LocationDetailVC : UITableViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property(strong,nonatomic) CLLocationManager *locationManager;

@end
