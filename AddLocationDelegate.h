//
//  AddLocationDelegate.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"

@protocol AddLocationDelegate <NSObject>
-(void)addLocation:(Location*)location;
@end
