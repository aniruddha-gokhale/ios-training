//
//  Vehicle.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(NSString *)goForward
{
    return nil;
}

-(NSString *)goBackward
{
    return nil;
}

-(NSString *)stopMoving
{
    return nil;
}

-(NSString *)turn:(NSInteger)degrees
{
        NSInteger degreesInACircle = 360;
    
    if (degrees > degreesInACircle || degrees < -degreesInACircle) {
       
        degrees = degrees % degreesInACircle;
    }
    
    return [NSString stringWithFormat:@"Turn %ld degrees.", (long)degrees];
}

-(NSString *)changeGears:(NSString *)newGearName
{
    return [NSString stringWithFormat:@"Put %@ into %@ gear.", self.modelName, newGearName];
}

-(NSString *)makeNoise
{
    return nil;
}

#pragma mark - Convenience Methods
-(NSString *)vehicleTitleString
{
    return [NSString stringWithFormat:@"%ld %@ %@", (long)self.modelYear, self.brandName, self.modelName];
}

-(NSString *)vehicleDetailsString
{
    //properties of vehicles
    
    NSMutableString *basicDetailsString = [NSMutableString string];
    [basicDetailsString appendString:@"Basic vehicle details:\n\n"];
    [basicDetailsString appendFormat:@"Brand name: %@\n", self.brandName];
    [basicDetailsString appendFormat:@"Model name: %@\n", self.modelName];
    [basicDetailsString appendFormat:@"Model year: %ld\n", (long)self.modelYear];
    [basicDetailsString appendFormat:@"Power source: %@\n", self.powerSource];
    [basicDetailsString appendFormat:@"No of wheels: %ld", (long)self.numberOfWheels];
    
    return basicDetailsString;
}

@end
