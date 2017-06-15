//
//  AppDelegate.m
//  Quest6_MaxOfArray
//
//  Created by user on 11.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "TypeProperties.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    TypeProperties* number  = [[TypeProperties alloc] init];
                    number.fVal = 55.3f;
    TypeProperties* number1 = [[TypeProperties alloc] init];
                    number1.intVal = 100;
    TypeProperties* number2 = [[TypeProperties alloc] init];
                    number2.fVal = 12355.5677f;
    TypeProperties* number3 = [[TypeProperties alloc] init];
                    number3.intVal = 100000;
    TypeProperties* number4 = [[TypeProperties alloc] init];
                    number4.fVal = 1234.44f;
    
    NSNumber* num  = [NSNumber numberWithFloat:  number.fVal];
    NSNumber* num1 = [NSNumber numberWithInteger:number1.intVal];
    NSNumber* num2 = [NSNumber numberWithFloat:  number2.fVal];
    NSNumber* num3 = [NSNumber numberWithInteger:number3.intVal];
    NSNumber* num4 = [NSNumber numberWithFloat:  number4.fVal];
    
    NSArray* array = [NSArray arrayWithObjects:num, num1, num2, num3, num4, nil];
    
    float xmax = -MAXFLOAT;
        for(NSNumber *num in array){
            float x = num.floatValue;
            if(x > xmax) xmax = x;
        }
    
    float xmin = MAXFLOAT;
        for(NSNumber *num in array){
            float x = num.floatValue;
            if(x < xmin) xmin = x;
        }
    
    NSUInteger arrayLength = [array count];
    NSLog(@" Array length: %d", arrayLength);
    
    NSLog(@"%@", array);
    
    NSLog(@"Max of an array: %f and min of array: %f", xmax, xmin);
    
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
