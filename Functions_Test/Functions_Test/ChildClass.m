//
//  ChildClass.m
//  Functions_Test
//
//  Created by user on 19.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (NSString*) saySomeNumberString{
    return @"Something";
}

- (NSString*) saySomething {
    return [super saySomeNumberString];
}

@end
