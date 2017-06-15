//
//  Engineer.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Professions.h"

@interface Engineer : Professions

@property (strong, nonatomic) NSString *doIncredibleThings;
@property (strong, nonatomic) NSString *knowingOfPshysicsMagic;
@property (strong, nonatomic) NSString *greatResponsibility;

- (void) createProject;
- (void) buildProject;
- (void) killNecromorphs;
- (void) showEngineerInfo;

@end
