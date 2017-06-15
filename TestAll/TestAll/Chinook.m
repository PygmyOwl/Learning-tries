//
//  Chinook.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Chinook.h"

@implementation Chinook

-(id) init {
    if (self = [super init]) {
        self.typeOfMoving = @" Flying vehicle. ";
        self.whereUsing = @"  Army, trans-service. ";
        self.forWhatPurpose = @" Carrying cargos, army evac tasks and transporting people. ";
        self.brand = @" Boeing. ";
        self.model = @" Model MLR. ";
        self.typeOfConstruction = @" Twin engine, tandem rotor heavy-lift helicopter. ";
        self.modification = @" Commercial transport version. ";
        self.whereProduced = @" United States of America. ";
    }
    return self;
}

- (void) moving {
    [super moving];
}

- (void) itemsCarrying {
    [super itemsCarrying];
}

- (void) isNowGearWorking {
    [super isNowGearWorking];
}

- (void) flying {
    NSLog(@" Flying. ");
}

- (void) carryingCargos {
    BOOL carry = arc4random() % 2;
    NSLog(@" %@ ", carry ? @" Has cargo in bay. " : @" Has no cargo. ");
}

- (void) transportingPassengers {
    NSLog(@" It have option for transporting people. ");
}

- (void) showChinookInfo {
    NSLog(@" It is %@ Using by %@ With Purpose %@ Named : %@ %@ Type of contruction: %@ Modification: %@ Produced by %@", self.typeOfMoving, self.whereUsing, self.forWhatPurpose, self.brand, self.model, self.typeOfConstruction, self.modification, self.whereProduced);
}

@end
