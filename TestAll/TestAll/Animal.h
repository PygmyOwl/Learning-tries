//
//  Animal.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (strong, nonatomic) NSString *typeOfMoving;
@property (strong, nonatomic) NSString *typeOfFeeding;
@property (strong, nonatomic) NSString *typeOfSpicie;
@property (assign, nonatomic) BOOL      canBePet;
@property (strong, nonatomic) NSString *locationOfLiving;

- (void) feedingOrNo;
- (void) moving;
- (void) actingWithOther;

@end
