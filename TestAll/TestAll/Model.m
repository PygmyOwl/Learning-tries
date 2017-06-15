//
//  Model.m
//  TestAll
//
//  Created by user on 07.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Model.h"

@implementation Model

- (id) init{
    self = [super init];
    if (self) {
        self.owl        = [[Owl alloc] init];
        self.raccoon    = [[Raccoon alloc] init];
        self.engineer   = [[Engineer alloc] init];
        self.programmer = [[Programmer alloc] init];
        self.truck      = [[Truck alloc] init];
        self.chinook    = [[Chinook alloc] init];
    }
    return self;
}

- (void)printAnimalsInfo {
    [self.owl     showOwlInfo];
    [self.raccoon showRaccoonInfo];
}

- (void)printProfessionsInfo {
    [self.engineer   showEngineerInfo];
    [self.programmer showProgrammerInfo];
}

- (void)printTransportsInfo {
    [self.truck   showTruckInfo];
    [self.chinook showChinookInfo];
}

@end
