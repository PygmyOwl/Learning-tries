//
//  Government.h
//  Notifications
//
//  Created by user on 31.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString* const GovernmentTaxLevelDidChangeNotification; // создание нотификации
extern NSString* const GovernmentSalaryDidChangeNotification;
extern NSString* const GovernmentPensionDidChangeNotification;
extern NSString* const GovernmentAveragePriceDidChangeNotification;

extern NSString* const GovernmentTaxLevelUserInfoKey;  // запись для чтения NSDictionary
extern NSString* const GovernmentSalaryUserInfoKey;
extern NSString* const GovernmentPensionUserInfoKey;
extern NSString* const GovernmentAveragePriceUserInfoKey;

@interface Government : NSObject

@property(assign, nonatomic) CGFloat taxLevel;
@property(assign, nonatomic) CGFloat salary;
@property(assign, nonatomic) CGFloat pension;
@property(assign, nonatomic) CGFloat averagePrice;

@end
