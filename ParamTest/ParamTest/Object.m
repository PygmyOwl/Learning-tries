//
//  Object.m
//  ParamTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Object.h"

@implementation Object

- (id)init{
    self = [super init];
    if( self){
        NSLog(@" object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@" object is deallocated");
}

- (id) copyWithZone:(NSZone *)zone {
    Object* newObject = [[Object alloc] init];
    newObject.name = self.name;
    return newObject;
}

@end
