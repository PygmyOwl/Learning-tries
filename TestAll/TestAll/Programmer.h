//
//  Programmer.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Professions.h"

@interface Programmer : Professions

@property (strong, nonatomic) NSString *beard;
@property (strong, nonatomic) NSString *coffee;
@property (strong, nonatomic) NSString *codeWriting;

- (void) makingACode;
- (void) resting;
- (void) doSomethingElse;
- (void) showProgrammerInfo;

@end
