//
//  Object.m
//  TimeTest
//
//  Created by user on 03.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Object.h"

@implementation Object
// таймер никогда не будет уничтожен, что приведёт к утечке памяти, нужно быть уверенным в том, что его уничтожение будет произведено.
- (id) init{
    self = [super init];
    if (self){
        NSLog(@"Object is initialized");
        
        NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self
                                                        selector:@selector(timerTest:) userInfo:nil repeats:YES];
        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:1]];
        
    }
    return self;
}

- (void) timerTest:(NSTimer*) timer{
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    //[timer invalidate]; - уничтожение памяти.
}

- (void) dealloc{
    NSLog(@"Object is deallocated");
}

@end
