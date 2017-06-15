//
//  AppDelegate.m
//  Quest5_MinOf3Arr
//
//  Created by user on 10.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "TypeProperties.h"
#define min

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    TypeProperties* number  = [[TypeProperties alloc] init];
                    number.fVal    = 345.12f;
    TypeProperties* number1 = [[TypeProperties alloc] init];
                    number1.intVal = 400;
    TypeProperties* number2 = [[TypeProperties alloc] init];
                    number2.intVal = 1;
    TypeProperties* number3 = [[TypeProperties alloc] init];
                    number3.fVal = 555.3f;
    TypeProperties* number4 = [[TypeProperties alloc] init];
                    number4.fVal = 456.7f;
    TypeProperties* number5 = [[TypeProperties alloc] init];
                    number5.intVal = 55;
    TypeProperties* number6 = [[TypeProperties alloc] init];
                    number6.fVal = 123.7;
    TypeProperties* number7 = [[TypeProperties alloc] init];
                    number7.fVal = 5987.5;
    TypeProperties* number8 = [[TypeProperties alloc] init];
                    number8.intVal = 1;
    
    NSNumber* num  = [NSNumber numberWithFloat:  number.fVal];
    NSNumber* num1 = [NSNumber numberWithInteger:number1.intVal];
    NSNumber* num2 = [NSNumber numberWithInteger:number2.intVal];
    NSNumber* num3 = [NSNumber numberWithFloat:  number3.fVal];
    NSNumber* num4 = [NSNumber numberWithFloat:  number4.fVal];
    NSNumber* num5 = [NSNumber numberWithInteger:number5.intVal];
    NSNumber* num6 = [NSNumber numberWithFloat:  number6.fVal];
    NSNumber* num7 = [NSNumber numberWithFloat:  number7.fVal];
    NSNumber* num8 = [NSNumber numberWithFloat:  number8.intVal];
    
    NSArray* array  = [NSArray arrayWithObjects: num,  num1, num2, nil];
        //float xmax = -MAXFLOAT; - переменная для вывода максимально великого значения в массиве
        float xmin = MAXFLOAT;
        for (NSNumber *num in array) {
            float x = num.floatValue;
            if (x < xmin) xmin = x;
            //if (x > xmax) xmax = x; - условие для выполнения скрипта
        }
    
    NSArray* array1 = [NSArray arrayWithObjects: num3, num4, num5, nil];
        float xmin1 = MAXFLOAT;
        for(NSNumber *num in array1){
            float x = num.floatValue;
            if(x < xmin1) xmin1 = x;
        }
    
    NSArray* array2 = [NSArray arrayWithObjects: num6, num7, num8, nil];
        float xmin2 = MAXFLOAT;
        for(NSNumber *num in array2){
            float x = num.floatValue;
            if(x < xmin2) xmin2 = x;
        }
    
    NSUInteger arrayLength = [array count];
    NSLog(@" Array length: %li", arrayLength);
    
    NSLog(@"%@", array);
    NSLog(@"%@", array1);
    NSLog(@"%@", array2);
    
    NSLog(@"%f %f %f", xmin, xmin1, xmin2);
    
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
