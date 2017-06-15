//
//  Dancer.m
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

-(void) dance{
    
}

#pragma mark - Patient

- (BOOL) areYouOk{
    BOOL ok = arc4random() % 2;
    NSLog(@"Is dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO" );
    return ok;
}

- (void) takePill{
    NSLog(@"Dancer %@ takes a pill", self.name);
}

-(void) makeShot{
    NSLog(@"Dancer %@ makes a shot", self.name);
}

-(NSString*) howIsYourFamily{
    return @"Dance !";
}

-(NSString*) howIsYourJob{
    return @"Dancing";
}

@end
