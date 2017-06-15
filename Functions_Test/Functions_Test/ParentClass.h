//
//  ParentClass.h
//  Functions_Test
//
//  Created by user on 18.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParentClass : NSObject
+ (void) whoAreYou;

- (void) sayHello;

- (void) say:(NSString*) string;

- (void) say:(NSString*) string and:(NSString*) string2;

- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;

- (NSString*) saySomeNumberString;

- (NSString*) saySomething;

@end
