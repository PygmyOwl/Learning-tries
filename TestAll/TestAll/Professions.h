//
//  Professions.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Professions : NSObject

@property (strong, nonatomic) NSString *specialization;
@property (strong, nonatomic) NSString *whatMustDo;
@property (strong, nonatomic) NSString *neededEducation;
@property (assign, nonatomic) float    timeForEducation;
@property (strong, nonatomic) NSString *whereItNeeds;

- (void) atWork;
- (void) atRest;
- (void) whenNerve;

@end
