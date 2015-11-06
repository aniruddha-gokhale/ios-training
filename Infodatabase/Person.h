//
//  Person.h
//  InfoDatabase
//
//  Created by GDB Consultants on 03/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Person : NSObject{
    
    NSString *firstname;
    NSString *lastname;
    int age;
}
-(void)enterinfo;
-(void)printinfo;

@end