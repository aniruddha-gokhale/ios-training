//
//  Car.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)init
{
    if (self = [super init]) {
        //Since all cars have four wheels, we can safely set this for every initialized instance
        //of a car.
        self.numberOfWheels = 4;
    }
    
    return self;
}

#pragma mark - Private method implementations
-(NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

#pragma mark - Superclass Overrides
-(NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

-(NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

-(NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

-(NSString *)makeNoise
{
    return @"Beep beep!";
}

-(NSString *)vehicleDetailsString
{
    //inheritance
    NSString *basicDetails = [super vehicleDetailsString];
    
    
    NSMutableString *carDetailsBuilder = [NSMutableString string];
    [carDetailsBuilder appendString:@"\n\nCar-Specific Details:\n\n"];
    
    
    NSString *yes = @"Yes\n";
    NSString *no = @"No\n";
    
    
    [carDetailsBuilder appendString:@"Has sunroof: "];
    if (self.hasSunroof) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Hatchback: "];
    if (self.isHatchback) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Convertible: "];
    if (self.isConvertible) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendFormat:@"Number of doors: %ld", (long)self.numberOfDoors];
    
    
    NSString *carDetails = [basicDetails stringByAppendingString:carDetailsBuilder];
    
    return carDetails;
}

@end