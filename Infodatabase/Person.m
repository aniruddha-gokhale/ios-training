//
//  Person.m
//  Infodatabase
//
//  Created by GDB Consultants on 03/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person
 
    -(void)enterinfo {
        NSLog(@"What is the first name?");
        char cstring[40];
        scanf("%s", cstring);
        
        firstname = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"What is %@'s last name?",lastname);
        scanf("%s",cstring);
        lastname = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"How old is %@ %@?", firstname, lastname);
        scanf("%i", &age);
        }
- (void)printinfo {
    NSLog(@"%@ %@ is %i years old", firstname, lastname, age);
}


@end