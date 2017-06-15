//
//  Raccoon.m
//  TestAll
//
//  Created by user on 09.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Raccoon.h"

@implementation Raccoon

- (id) init {
    if (self = [super init]) {
        self.typeOfMoving       = @" walking. ";
        self.typeOfFeeding      = @" Eat almost all of food. ";
        self.typeOfRaccoon      = @" Raccoon washer. ";
        self.typeOfSpicie       = @" Procyon lotor. ";
        self.primaryRaccoonInfo = @" Length of body - 55, tail - 15, weight - 8 Kg. ";
        self.canBePet           = YES;
        self.locationOfLiving   = @" North America, Canada. ";
        self.destruction        = @" Unpredictible property of raccoon. Active most of time. ";
    }
    return self;
}

- (void) steal {
    NSLog(@" Raccoon get chicken. ");
}

- (void) eat {
    NSLog(@"MORE FOOD!!!11");
}

- (void) destroy {
    NSLog(@"I will destroy all of your things");
}

- (void) showRaccoonInfo {
    NSLog(@" Moving by %@, %@ Type: %@ Specie: %@ %@ Can be pet: %@, living at area of: %@ %@", self.typeOfMoving, self.typeOfFeeding, self.typeOfRaccoon, self.typeOfSpicie, self.primaryRaccoonInfo, self.canBePet ? @"Yes" : @"No", self.locationOfLiving, self.destruction);
}

@end
