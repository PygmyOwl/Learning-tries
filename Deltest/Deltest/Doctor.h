//
//  Doctor.h
//  Deltest
//
//  Created by user on 27.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "Patient.h" - лучше избегать подобнных решений, п
#import "Patient.h"

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

- (void) patientFeelsBad;
- (void) patient:(Patient *)patient haveQuestion:(NSString *)question;

@end
