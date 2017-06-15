//
//  Stud.m
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Stud.h"

@implementation Stud

- (void) study{
    
}

#pragma mark - Patient

- (BOOL) areYouOk{
    BOOL ok = arc4random() % 2;
    NSLog(@"Is student %@ ok? %@", self.name, ok ? @"YES" : @"NO" );
    return ok;
}

- (void) takePill{
    NSLog(@"Student %@ takes a pill", self.name);
}

-(void) makeShot{
    NSLog(@"Student %@ makes a shot", self.name);
}

-(NSString*) howIsYourFamily{
    return @"They're doing well";
}

-(NSString*) howIsYourJob{
    return @" I'm studing now";
}

@end
