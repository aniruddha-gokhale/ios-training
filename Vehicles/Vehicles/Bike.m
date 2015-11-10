//
//  Bike.m
//  Vehicles
//
//  Created by GDB Consultants on 09/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Bike.h"

@implementation Bike

#pragma mark initialization

-(id) init
{
    if(self=[super init]){
        self.numberOfWheels=2;
        self.powerSource=@"Gas engine";
    }
    return self;
}

#pragma mark - Superclass Overrides
-(NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Open throttle.", [self changeGears:@"Forward"]];
}

-(NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ Walk %@ backwards using feet.", [self changeGears:@"Neutral"], self.modelName];
}

-(NSString *)stopMoving
{
    return @"Squeeze brakes.";
}

-(NSString *)makeNoise
{
    return self.engineNoise;
}

- (NSString *)vehicleDetailsString
{
    //Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *BikeDetailsBuilder = [NSMutableString string];
    [BikeDetailsBuilder appendString:@"\n\nMotorcycle-Specific Details:\n\n"];
    
    //Add info about motorcycle-specific features.
    [BikeDetailsBuilder appendFormat:@"Engine Noise: %@", self.engineNoise];
    
    //Create the final string by combining basic and motorcycle-specific details.
    NSString *BikeDetails = [basicDetails stringByAppendingString:BikeDetailsBuilder];
    
    return BikeDetails;
}

#pragma mark Factory Method

+(Bike *)BikeWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise{
    
    Bike *newBike = [Bike vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:@"gas engine" wheels:2];
    
    newBike.engineNoise=engineNoise;
    
    return newBike;
    
}

@end
