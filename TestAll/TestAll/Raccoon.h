//
//  Raccoon.h
//  TestAll
//
//  Created by user on 09.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Animal.h"

@interface Raccoon : Animal

@property (strong, nonatomic) NSString *typeOfRaccoon;
@property (strong, nonatomic) NSString *primaryRaccoonInfo;
@property (strong, nonatomic) NSString *destruction;

- (void) steal;
- (void) eat;
- (void) destroy;
- (void) showRaccoonInfo;

@end
