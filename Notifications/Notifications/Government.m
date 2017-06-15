//
//  Government.m
//  Notifications
//
//  Created by user on 31.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Government.h"

// static NSString* notification = @"notification"; - иной способ создания нотификации, говорят что не красивая запись.
// реализация нотификации,extern не пишется, потому что уже был определён в хедере, тут же и присваиваем значение
NSString* const GovernmentTaxLevelDidChangeNotification = @"GovernmentTaxLevelDidChangeNotification";
NSString* const GovernmentSalaryDidChangeNotification = @"GovernmentSalaryDidChangeNotification";
NSString* const GovernmentPensionDidChangeNotification = @"GovernmentPensionDidChangeNotification";
NSString* const GovernmentAveragePriceDidChangeNotification = @"GovernmentAveragePriceDidChangeNotification";
// это глобальные переменные

NSString* const GovernmentTaxLevelUserInfoKey = @"GovernmentTaxLevelUserInfoKey";
NSString* const GovernmentSalaryUserInfoKey = @"GovernmentSalaryUserInfoKey";
NSString* const GovernmentPensionUserInfoKey = @"GovernmentPensionUserInfoKey";
NSString* const GovernmentAveragePriceUserInfoKey = @"GovernmentAveragePriceUserInfoKey";

@implementation Government

- (id)init{
    self = [super init];
    if(self){
        _taxLevel = 5.f;
        _salary = 1000.f;
        _pension = 500.f;
        _averagePrice = 10.f;
    }
    return self;
}

-(void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    NSDictionary* dictionary =
    [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                  forKey:GovernmentTaxLevelUserInfoKey];
    [[NSNotificationCenter defaultCenter]postNotificationName:GovernmentTaxLevelDidChangeNotification
        object:nil userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    NSDictionary* dictionary =
    [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                  forKey:GovernmentSalaryUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentSalaryDidChangeNotification                       object:nil userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension{
    _pension = pension;
    NSDictionary* dictionary =
    [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension]
                  forKey:GovernmentPensionUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentPensionDidChangeNotification object:nil userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    NSDictionary* dictionary =
    [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice]
                  forKey:GovernmentSalaryUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:    GovernmentAveragePriceDidChangeNotification
        object:nil userInfo:dictionary];
}

@end
