//
//  Bike.h
//  Vehicles
//
//  Created by GDB Consultants on 09/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Bike : Vehicle

@property(nonatomic,strong)NSString *engineNoise;
//factorey method

+(Bike *)BikeWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise;
@end
