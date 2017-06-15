//
//  Chinook.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Transport.h"

@interface Chinook : Transport

@property (strong, nonatomic) NSString *typeOfConstruction;
@property (strong, nonatomic) NSString *modification;
@property (strong, nonatomic) NSString *whereProduced;

- (void) flying;
- (void) carryingCargos;
- (void) transportingPassengers;
- (void) showChinookInfo;

@end
