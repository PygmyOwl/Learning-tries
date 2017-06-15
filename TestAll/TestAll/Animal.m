//
//  Animal.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (void) feedingOrNo {
    BOOL feeding = arc4random() % 2;
    NSLog(@" %@ ", feeding ? @" Eating. " : @" Do something else. ");
    
}

- (void) moving {
    NSLog(@"I'm moving, what are you need from me?");
}

- (void) actingWithOther {
    NSLog(@"Fuck you, and fuck you, and also you faggot.");
}


@end
