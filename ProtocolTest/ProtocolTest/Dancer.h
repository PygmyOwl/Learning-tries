//
//  Dancer.h
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Dancer : NSObject <Patient>

@property (strong, nonatomic) NSString* favouriteDance;
@property (strong, nonatomic) NSString* name;

-(void) dance;

@end
