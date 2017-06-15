//
//  Stud.m
//  BitOpsTest
//
//  Created by user on 03.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Stud.h"

@implementation Stud
// использование исходных из класса тайпдефа 
- (NSString*) answerByType:(StudentSubjectTime) type{
    return self.SubjectTime & type ? @"yes" : @"no";
}

- (NSString*) description{
    return[NSString stringWithFormat:@"Student studies:\n"
                                    "biology = %@\n"
                                     "math = %@\n"
                                     "devcourse = %@\n"
                                     "engineering = %@\n"
                                     "music = %@\n"
                                     "martialart = %@\n"
                                     "guns = %@\n",
           //  способ проверки позиции бита в байте
                                     [self answerByType:StudentSubjectTimeBilogy],
                                     [self answerByType:StudentSubjectTimeMath],
                                     [self answerByType:StudentSubjectTimeDevelopment],
                                     [self answerByType:StudentSubjectTimeEngeneering],
                                     [self answerByType:StudentSubjectTimeMusic],
                                     [self answerByType:StudentSubjectTimeMartialArt],
                                     [self answerByType:StudentSubjectTimeGunUsage]
//так это выглядит без
/*
 - (NSString*) answerByType:(StudentSubjectTime) type{
    return self.SubjectTime & type ? @"yes" : @"no";
  }

 self.SubjectTime & StudentSubjectTimeBilogy  ? @"yes" : @"no",
self.SubjectTime & StudentSubjectTimeMath ? @"yes" : @"no",
self.SubjectTime & StudentSubjectTimeDevelopment ? @"yes" : @"no",
self.SubjectTime & StudentSubjectTimeEngeneering ? @"yes" : @"no",
self.SubjectTime & StudentSubjectTimeMusic ? @"yes" : @"no",
self.SubjectTime & StudentSubjectTimeMartialArt ? @"yes" : @"no" ,
self.SubjectTime & StudentSubjectTimeGunUsage ? @"yes" : @"no"];
*/
           ];
 }


@end
