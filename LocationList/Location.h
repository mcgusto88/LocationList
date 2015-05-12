//
//  Location.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject
@property(weak,nonatomic)NSString *name;
@property(weak,nonatomic)NSString *address;
@property(weak,nonatomic)NSString *descriptionStr;

-(id)initWithName:(NSString*)name andAddress:(NSString*)address
andDescritpionStr:(NSString*)descriptionStr;


@end
