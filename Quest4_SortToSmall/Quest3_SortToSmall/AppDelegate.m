//
//  AppDelegate.m
//  Quest3_SortToSmall
//
//  Created by user on 10.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Numbers.h"
#define min

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Numbers* number   = [[Numbers alloc] init];
        number.fVal   = 55.1f;
    Numbers* number1  = [[Numbers alloc] init];
        number1.inVal = 10;
    Numbers* number2  = [[Numbers alloc] init];
        number2.fVal  = 30.5f;
    Numbers* number3  = [[Numbers alloc] init];
        number3.fVal  = 45.7f;
    Numbers* number4  = [[Numbers alloc] init];
        number4.inVal = 44;
    Numbers* number5  = [[Numbers alloc] init];
        number5.fVal  = 22.6f;
    
    NSNumber* num  = [NSNumber numberWithFloat:  number.fVal];
    NSNumber* num1 = [NSNumber numberWithInteger:number1.inVal];
    NSNumber* num2 = [NSNumber numberWithFloat:  number2.fVal];
    NSNumber* num3 = [NSNumber numberWithFloat:  number3.fVal];
    NSNumber* num4 = [NSNumber numberWithInteger:number4.inVal];
    NSNumber* num5 = [NSNumber numberWithFloat:  number5.fVal];
    
    NSArray* array  = [NSArray arrayWithObjects: num, num1, num2, nil];
    NSArray* array1 = [NSArray arrayWithObjects: num3, num4, num5, nil];
    
    NSUInteger arrayLength = [array count];
    NSLog(@" Array length: %d", arrayLength);
    
    for(int i = 0; i < [array count]; i++){
        NSLog(@"%f %f", [[array objectAtIndex:i]floatValue], [[array1 objectAtIndex:i]floatValue]);
    }
    
        for(int j = 0; j < [array count]; j++){
            NSLog(@"%f", min([[array objectAtIndex:j]floatValue], [[array1 objectAtIndex:j]floatValue]));
        }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
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
