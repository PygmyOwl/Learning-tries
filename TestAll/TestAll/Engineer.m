//
//  Engineer.m
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Engineer.h"

@implementation Engineer

- (id) init {
    if (self = [super init]) {
        self.specialization = @" Space engineer. ";
        self.whatMustDo = @" Building and supervising space constructions. ";
        self.neededEducation = @" Space engineering and constructing. ";
        self.timeForEducation = 5.7f ;
        self.whereItNeeds = @" Spaceships, space stations. ";
        self.doIncredibleThings = @" Big spaceships and other epic things.";
        self.knowingOfPshysicsMagic = @" Knowing of phisics - it also magic with no magic. ";
        self.greatResponsibility = @" Many lifes is addict from quality of builds. ";
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

 NSString *creProj = @"BWUAHAHAHAHAHAH!!! EVIL GENIUS!!! >D";
- (void) createProject {
    NSLog (@" %@ ", creProj);
}

 NSString *buiProj = @" FUuUuuuuuuUUuuuu <,,>";
- (void) buildProject {
    NSLog(@" %@ ", buiProj);
}

NSString *killNecromorph = @" @&(#%^*@^$(*&@#&(%@#%&)@#)@)&*%!!!! ";
- (void) killNecromorphs {
    NSLog(@" %@ ", killNecromorph);
}

- (void) showEngineerInfo {
    NSLog(@" Specialization %@ (s)he %@ studying %@ years studying for %f years. Beacause of need to build %@ Also do %@ And say %@ %@ ", self.specialization, self.whatMustDo, self.neededEducation, self.timeForEducation, self.whereItNeeds, self.doIncredibleThings, self.knowingOfPshysicsMagic, self.greatResponsibility );
}

@end
