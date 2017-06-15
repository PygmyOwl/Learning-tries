//
//  Patient.m
//  Deltest
//
//  Created by user on 27.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//


#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou{
    BOOL iFeelGood = arc4random() % 2;
    if(!iFeelGood){
        [self.delegate patientFeelsBad:self];
    }
    return iFeelGood;
}

- (void) takePill{
    NSLog(@"%@ takes a pill", self.name);
}

-(void) makeShot{
    NSLog(@"%@ make a shot", self.name);
}

@end
