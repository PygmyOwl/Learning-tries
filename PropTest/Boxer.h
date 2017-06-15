//
//  Boxer.h
//  PropTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Boxer : NSObject

@property(strong, nonatomic) NSString* name;
@property(assign, nonatomic) NSInteger age;
@property(assign, nonatomic) CGFloat height;
@property(assign, nonatomic) CGFloat weight;

- (NSInteger) howOldAreYou;

@end
