//
//  VehicleList.m
//  Vehicles
//
//  Created by GDB Consultants on 10/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "VehicleList.h"
#import "Car.h"
#import "Truck.h"
#import "Bike.h"
@implementation VehicleList

+ (VehicleList *)sharedInstance
{
    //Declare a static instance variable
    static VehicleList *_vehicleList = nil;
    
    //Create a token that facilitates only creating this item once.
    static dispatch_once_t onceToken;
    
    //Use Grand Central Dispatch to create a single instance and do any initial setup only once.
    dispatch_once(&onceToken, ^{
        //These are only invoked the onceToken has never been used before.
        _vehicleList = [[VehicleList alloc] init];
        _vehicleList.vehicles = [VehicleList initialVehicleList];
    });
    
    //Returns the shared instance variable.
    return _vehicleList;
}

+(NSArray *)initialVehicleList{
    
    NSMutableArray *vehicles = [NSMutableArray array];
    //create a car
    Car *mustang = [Car carWithBrandName:@"Ford" modelName:@"Mustang" modelYear:1968
                             powerSource:@"gas engine" numberOfDoors:2 convertible:YES hatchback:NO sunroof:NO];
    
    
    //Add it to the array
    [vehicles addObject:mustang];
    
    
    Car *outback = [Car carWithBrandName:@"Subaru" modelName:@"Outback" modelYear:1999
                             powerSource:@"gas engine" numberOfDoors:5 convertible:NO hatchback:YES sunroof:NO];
    
    
    [vehicles addObject:outback];
    
    
    Car *prius = [Car carWithBrandName:@"Toyota" modelName:@"Prius" modelYear:2007
                           powerSource:@"hybrid engine" numberOfDoors:5 convertible:YES hatchback:YES sunroof:YES];
    
    
    [vehicles addObject:prius];
    
   
    Bike *harley = [Bike BikeWithBrandName:@"Harley-Davidson" modelName:@"Softail"
                                                   modelYear:1979 engineNoise:@"Vrrrrrrrroooooooooom!"];
    
  
    [vehicles addObject:harley];
    
    
   Bike *kawasaki = [Bike BikeWithBrandName:@"Kawasaki" modelName:@"Ninja"
                                                     modelYear:2005 engineNoise:@"Neeeeeeeeeeeeeeeeow!"];
    
   
    [vehicles addObject:kawasaki];
    
  
    Truck *silverado = [Truck truckWithBrandName:@"Chevrolet" modelName:@"Silverado" modelYear:2011
                                     powerSource:@"gas engine" wheels:4 cargoCapacityCubicFeet:53];
    
    [vehicles addObject:silverado];
    
   
    Truck *peterbilt = [Truck truckWithBrandName:@"Peterbilt" modelName:@"579" modelYear:2013
                                           powerSource:@"diesel engine" wheels:18 cargoCapacityCubicFeet:408];
    
    [vehicles addObject:peterbilt];
    
    NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
    [vehicles sortUsingDescriptors:@[modelYear]];
    
    return vehicles;
    
}

@end
