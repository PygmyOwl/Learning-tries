//
//  ParentClass.m
//  Functions_Test
//
//  Created by user on 18.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

+ (void) whoAreYou {
    NSLog(@"I am ParentClass");
}

- (void) sayHello {
    NSLog(@"Parent says hello!");
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2{
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3{
    NSLog(@"%@, %@, %@", string, string2, string3);
}

- (NSString*) saySomeNumberString{
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

- (NSString*) saySomething {
    NSString* string = [self saySomeNumberString];
    return string;
}

@end
