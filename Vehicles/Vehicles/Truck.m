//
//  Truck.m
//  Vehicles
//
//  Created by GDB Consultants on 09/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import "Truck.h"

@implementation Truck

#pragma mark- Superclass overloaded

-(NSString *)goForward{
    
    return [NSString stringWithFormat:@"%@ Depress the gas padel. ",[self changeGears:@"Drive"]];
}
-(NSString *)stopMoving{
    
    
    return [NSString stringWithFormat:@"Depress the break padel.   %@",[self changeGears:@"Park"] ];
}

#pragma mark -private methods

-(NSString *)soundBackupAlarm
{
    return @"Beep! Beep! Beep! Beep!";
}


-(NSString *)goBackward{
    
    NSMutableString *backwordString=[NSMutableString string];
    
    
    if(self.cargoCapicityCubicfeet>100){
        
         [backwordString appendFormat:@"Wait for \"%@\", then %@", [self soundBackupAlarm], [self changeGears:@"Reverse"]];
    }
    else{
        
        
        [backwordString appendFormat:@"%@ Depress gas paddle. ",[self changeGears:@"Reverse"]];
    }
    
    return backwordString;
    
}


-(NSString *)makeNoise{
    
    if(self.numberOfWheels<=4){
        
        return @"Beep!  Beep!";
    }
    else if (self.numberOfWheels > 4 && self.numberOfWheels <= 8) {
        return @"Honk!";
    } else {
        return @"HOOOONK!";
    }
    
}

-(NSString *)vehicleDetailsString
{
    //Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *truckDetailsBuilder = [NSMutableString string];
    [truckDetailsBuilder appendString:@"\n\nTruck-Specific Details:\n\n"];
    
    //Add info about truck-specific features.
    [truckDetailsBuilder appendFormat:@"Cargo Capacity: %ld cubic feet", (long)self.cargoCapicityCubicfeet];
    
    //Create the final string by combining basic and truck-specific details.
    NSString *truckDetails = [basicDetails stringByAppendingString:truckDetailsBuilder];
    
    return truckDetails;
}

@end
