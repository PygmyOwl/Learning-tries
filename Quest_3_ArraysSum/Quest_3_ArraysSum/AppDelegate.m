//
//  AppDelegate.m
//  Quest_3_ArraysSum
//
//  Created by user on 08.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Numbers.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Numbers* num  = [[Numbers alloc] init];
             num.fVal   = 55.7f;
    Numbers* num1 = [[Numbers alloc] init];
             num1.inVal = 10;
    Numbers* num2 = [[Numbers alloc] init];
             num2.fVal  = 100.5f;
    Numbers* num3 = [[Numbers alloc] init];
             num3.fVal  = 12.1f;
    Numbers* num4 = [[Numbers alloc] init];
             num4.inVal = 50;
    Numbers* num5 = [[Numbers alloc] init];
             num5.fVal  = 101.5f;
    
    NSNumber* number  = [NSNumber numberWithFloat:  num.fVal];
    NSNumber* number1 = [NSNumber numberWithInteger:num1.inVal];
    NSNumber* number2 = [NSNumber numberWithFloat:  num2.fVal];
    NSNumber* number3 = [NSNumber numberWithFloat:  num3.fVal];
    NSNumber* number4 = [NSNumber numberWithInteger:num4.inVal];
    NSNumber* number5 = [NSNumber numberWithFloat:  num5.fVal];
    
    NSArray* array = [NSArray arrayWithObjects:number, number1, number2, nil];
    NSString* arrayval  = [array objectAtIndex:0];
    NSString* arrayval1 = [array objectAtIndex:1];
    NSString* arrayval2 = [array objectAtIndex:2];
    
    NSArray* array1 = [NSArray arrayWithObjects: number3, number4, number5, nil ];
    NSString* array1val  = [array1 objectAtIndex:0];
    NSString* array1val1 = [array1 objectAtIndex:1];
    NSString* array1val2 = [array1 objectAtIndex:2];
    
    NSMutableArray* sumOfTwo = [NSMutableArray array];
    
        for (NSInteger i = 0; i<[array count]; i++) {
            NSString *newValue=[NSString stringWithFormat:@"%f",([[array objectAtIndex:i]floatValue] + [[array1 objectAtIndex:i]floatValue])];
            [sumOfTwo addObject:newValue];
        }
    
    NSUInteger arrayLength = [array count];
    NSLog(@" Number of elements: %d", arrayLength);
    
    NSLog(@"%@ %@", arrayval,  array1val);
    NSLog(@"%@ %@", arrayval1, array1val1);
    NSLog(@"%@ %@", arrayval2, array1val2);
    
    NSLog(@"%@", sumOfTwo);
    
    return YES;
}


- (void) applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


    @end

