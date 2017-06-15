//
//  Doctor.m
//  Notifications
//
//  Created by user on 31.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Doctor.h"
#import "Government.h"

@implementation Doctor

#pragma mark - Initialization

- (id)init{
    self = [super init];
    if (self){
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        [nc addObserver:self
               selector: @selector(salaryChangeNotification:)
                   name:GovernmentSalaryDidChangeNotification
                 object:nil];
        [nc addObserver:self
               selector: @selector(averagePriceChangeNotification:)
                   name:GovernmentAveragePriceDidChangeNotification
                 object:nil];
    }
    return self;
}

#pragma mark - Notifications

- (void) salaryChangeNotification:(NSNotification*) notification{
    NSNumber* value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    CGFloat salary = [value floatValue];
    if (salary < self.salary){
        NSLog( @"Doctors are not happy");
        }
    else{
        NSLog(@"Doctors are happy");
    }
    self.salary = salary;
}

- (void) averagePriceChangeNotification:(NSNotification*) notification{
    
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
