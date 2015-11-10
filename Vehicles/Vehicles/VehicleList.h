//
//  VehicleList.h
//  Vehicles
//
//  Created by GDB Consultants on 10/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleList : NSObject

//The list of vehicles.
@property (nonatomic, strong) NSArray *vehicles;

//Singleton Instance
+ (VehicleList *)sharedInstance;

@end
