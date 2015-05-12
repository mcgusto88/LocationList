//
//  Location.m
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "Location.h"

@implementation Location
-(id)initWithName:(NSString*)name andAddress:(NSString*)address
andDescritpionStr:(NSString*)descriptionStr{
    self = [super init];
    
    if(self){
        _name = name;
        _address = address;
        _descriptionStr = descriptionStr;
        
    }
    return self;

}
-(id)init{
    return [self initWithName:nil andAddress:nil andDescritpionStr:nil];

}


@end
