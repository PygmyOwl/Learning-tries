//
//  Transport.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Transport.h"

@implementation Transport

- (void) moving {
    BOOL moveOrNot = arc4random() % 2;
    NSLog(@"%@", moveOrNot ? @" now moving " : @" now not moving " );
}

- (void) itemsCarrying {
    NSLog (@" Carry some number of items");
}

- (void) isNowGearWorking {
    BOOL stateOfGear = arc4random() % 2;
    NSLog (@" Gear is %@ ", stateOfGear ? @" working. " : @" not working ");
}

@end
