//
//  main.m
//  Infodatabase
//
//  Created by GDB Consultants on 03/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        do{
        
        Person *newPerson=[[Person alloc]init];
        
        [newPerson enterinfo];
        [newPerson printinfo];
        [people addObject:newPerson];
        
            NSLog(@"Do yo want to enter the another name in database(y/n)?");
            scanf("%s",&response);
        }
        while (response == 'y');
            
        }
    
    return 0;
}
