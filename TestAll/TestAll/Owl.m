//
//  Owl.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Owl.h"

@implementation Owl

- (id) init {
    if (self = [super init]) {
        self.typeOfMoving     = @" Flying. ";
        self.typeOfFeeding    = @" Get food by hunting. ";
        self.typeOfOwl        = @" Screech owl. ";
        self.typeOfSpicie     = @" Megascops choliba, poly-morphical type of tropical screech owl. ";
        self.primaryOwlInfo   = @" They are about 7-10 inches and 17-25 - wingspan. ";
        self.canBePet         = YES;
        self.locationOfLiving = @" Finding throughout of South America. ";
    }
    return self;
}

- (void) feedingOrNo {
    [super feedingOrNo];
}

- (void) movingOwl {
    [super moving];
}

- (void) actingWithOther {
    [super actingWithOther];
}

- (void) flying {
    NSLog(@" Flying for searching food. ");
}

- (void) hunting {
    NSLog(@" Hunting mice or insects. ");
}

- (void) doSomeShit {
    NSLog(@" Be always ready for some shitbombing from above. ");
}

- (void) showOwlInfo {
    NSLog(@" How moving: %@ %@ It is %@, also %@. %@. Can be pet %@ Where living: %@",
          self.typeOfMoving, self.typeOfFeeding, self.typeOfOwl, self.typeOfSpicie,
          self.primaryOwlInfo, self.canBePet ? @"YES" : @"NO", self.locationOfLiving);
}

@end
