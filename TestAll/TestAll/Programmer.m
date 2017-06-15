//
//  Programmer.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Programmer.h"

@implementation Programmer

- (id) init {
    if (self = [super init]) {
        self.specialization = @" iOS developer. ";
        self.whatMustDo = @" Writing code and developing software. ";
        self.neededEducation = @" IT development and research. ";
        self.timeForEducation = 5.9f;
        self.whereItNeeds = @" Requires by software and hardware producing companies. ";
        self.beard = @" Beard is optional, but many of developers have it. ";
        self.coffee = @" Coffee - stereotypical thing for dev's, but also it is stereotypical. ";
        self.codeWriting = @" Writing good code, without exceptions. ";
    }
    return self;
}

- (void) atWork {
    [super atWork];
}

- (void) atRest {
    [super atRest];
}

- (void) whenNerve {
    [super whenNerve];
}

- (void) makingACode {
    NSLog(@" Making a good code. ");
}

- (void) resting {
    NSLog(@" Make a rest for your brain when it's need it. ");
}

- (void) doSomethingElse {
    NSLog(@" Do something else. ");
}

- (void) showProgrammerInfo {
    NSLog( @" (S)He is %@ %@ Styding for %@ about %f . Always %@ %@ %@ ", self.specialization, self.whatMustDo, self.neededEducation, self.timeForEducation, self.beard, self.coffee, self.codeWriting);
}

@end

