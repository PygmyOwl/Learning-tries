//
//  Stud.h
//  BitOpsTest
//
//  Created by user on 03.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
//создание маски, каждый представитель енум - битовое число
typedef enum {
    StudentSubjectTimeBilogy            = 1 << 0,
    StudentSubjectTimeMath              = 1 << 1,
    StudentSubjectTimeDevelopment       = 1 << 2,
    StudentSubjectTimeEngeneering       = 1 << 3,
    StudentSubjectTimeMusic             = 1 << 4,
    StudentSubjectTimeMartialArt        = 1 << 5,
    StudentSubjectTimeGunUsage          = 1 << 6
    
} StudentSubjectTime;

@interface Stud : NSObject

@property ( assign, nonatomic) StudentSubjectTime SubjectTime;
/*
@property(assign, nonatomic)BOOL studiesBiology;
@property(assign, nonatomic)BOOL studiesMath;
@property(assign, nonatomic)BOOL studiesDevelopment;
@property(assign, nonatomic)BOOL studiesEngeneering;
@property(assign, nonatomic)BOOL studiesMusic;
@property(assign, nonatomic)BOOL studiesMartialArt;
@property(assign, nonatomic)BOOL studiesGunUsage;
*/
- (NSString*) description;

@end
