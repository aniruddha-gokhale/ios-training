//
//  Truck.h
//  Vehicles
//
//  Created by GDB Consultants on 09/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Truck : Vehicle

@property(nonatomic,assign)NSInteger cargoCapicityCubicfeet;

//factory method
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet;
@end
