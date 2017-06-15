//
//  Track.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Truck.h"

@implementation Truck

- (id) init {
    if (self = [super init]) {
        self.typeOfMoving = @" Riding vehicle. ";
        self.whereUsing   = @" Trans-service. ";
        self.forWhatPurpose = @" For carrying cargos. ";
        self.brand = @" Petebilt. ";
        self.model = @" 379 ";
        self.typeOfConstruction = @" Truck. ";
        self.forWhatCargo = @" Carrying only containers. ";
        self.carryingWeight = 40.5f;
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

- (void) load {
    NSLog(@" Load container. ");
}

- (void) cargoCarrying {
    NSLog(@" Carrying container from point A to point B. ");
}

- (void) unload {
    NSLog(@" Unload container. ");
}

- (void) showTruckInfo {
    NSLog(@" It is: %@ Using at: %@ With purpose: %@ Named as: %@ %@ Type of vehicle: %@ What can carry: %@ Mass of cargo: %f ", self.typeOfMoving, self.whereUsing, self.forWhatPurpose, self.brand, self.model, self.typeOfConstruction, self.forWhatCargo, self.carryingWeight);
}

@end
