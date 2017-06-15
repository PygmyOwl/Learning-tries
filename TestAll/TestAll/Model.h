//
//  Model.h
//  TestAll
//
//  Created by user on 07.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Owl.h"
#import "Raccoon.h"
#import "Engineer.h"
#import "Programmer.h"
#import "Truck.h"
#import "Chinook.h"

@interface Model : NSObject

@property (nonatomic, strong) Owl        *owl;
@property (nonatomic, strong) Raccoon    *raccoon;
@property (nonatomic, strong) Engineer   *engineer;
@property (nonatomic, strong) Programmer *programmer;
@property (nonatomic, strong) Truck      *truck;
@property (nonatomic, strong) Chinook    *chinook;

- (void)printAnimalsInfo;
- (void)printProfessionsInfo;
- (void)printTransportsInfo;

@end
