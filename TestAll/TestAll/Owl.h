//
//  Owl.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Animal.h"

@interface Owl : Animal

@property (strong, nonatomic) NSString *typeOfOwl;
@property (strong, nonatomic) NSString *primaryOwlInfo;
@property (strong, nonatomic) NSString *hateAll;

- (void) flying;
- (void) hunting;
- (void) doSomeShit;
- (void) showOwlInfo;

@end
