//
//  Doctor.m
//  Deltest
//
//  Created by user on 27.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

#pragma mark - PatientDelegate

- (void) patientFeelsBad:(Patient*) patient {
    NSLog( @"Patient %@ feels bad", patient.name);
    if (patient.temperature >= 37.0f  && patient.temperature <= 39.0f){
        [patient takePill];
    }
    else if(patient.temperature >= 39.0f){
        [patient makeShot];
    }
    else {
        NSLog (@"Patient %@ should rest", patient.name);
    }
}

- (void) patient:(Patient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
