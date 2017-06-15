//
//  AppDelegate.m
//  Quest6Rounding
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
    
    
    int testsCount = 3;
    
    NSArray *someArray = @[@5, @10];
    
    double a[3] = {12, 11, 400}, b[3] = {8, -3, 5};
    for (int i = 0; i < testsCount; i++) {
        NSLog(@"%f", round(a[i] / b[i]));
    }
    
    
    
    
    // Override point for customization after application launch.
    
    TypeProperties* number  = [[TypeProperties alloc] init];
                    number.fVal = 22.5f;
    TypeProperties* number1 = [[TypeProperties alloc] init];
                    number1.intVal = 10;
    TypeProperties* number2 = [[TypeProperties alloc] init];
                    number2.fVal = 14.5f;
    TypeProperties* number3 = [[TypeProperties alloc] init];
                    number3.intVal = 5;
    TypeProperties* number4 = [[TypeProperties alloc] init];
                    number4.intVal = 19;
    TypeProperties* number5 = [[TypeProperties alloc] init];
                    number5.intVal = 7;
    
    NSNumber* num  = [NSNumber numberWithFloat:  number.fVal];
    NSNumber* num1 = [NSNumber numberWithInteger:number1.intVal];
    NSNumber* num2 = [NSNumber numberWithFloat:  number2.fVal];
    NSNumber* num3 = [NSNumber numberWithFloat:  number3.intVal];
    NSNumber* num4 = [NSNumber numberWithInteger:number4.intVal];
    NSNumber* num5 = [NSNumber numberWithInteger:number5.intVal];
    
    NSArray* array  = [NSArray arrayWithObjects: num, num1, num2, nil];
    NSString* arrayVal  = [array objectAtIndex:0];
    NSString* arrayVal1 = [array objectAtIndex:1];
    NSString* arrayVal2 = [array objectAtIndex:2];
    
    NSArray* array1 = [NSArray arrayWithObjects:num3, num4, num5, nil];
    NSString* array1Val  = [array1 objectAtIndex:0];
    NSString* array1Val1 = [array1 objectAtIndex:1];
    NSString* array1Val2 = [array1 objectAtIndex:2];
    
    NSMutableArray* divOfTwo = [NSMutableArray array];
    
    for (NSInteger i = 0; i<[array count]; i++) {
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
        [formatter setMaximumFractionDigits:1];
        [formatter setRoundingMode: NSNumberFormatterRoundDown];
        
        NSString *newValue=[NSString stringWithFormat:@"%f",([[array objectAtIndex:i]floatValue] / [[array1 objectAtIndex:i]floatValue])];
//        newValue = [formatter stringFromNumber:[NSNumber numberWithFloat:[[divOfTwo objectAtIndex:i]integerValue]]];
        [divOfTwo addObject:newValue];
        
    }
/*
     float roundedValue = round(2.0f * number) / 2.0f;
     NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
     [formatter setMaximumFractionDigits:1];
     [formatter setRoundingMode: NSNumberFormatterRoundDown];
     
     NSString *numberString = [formatter stringFromNumber:[NSNumber numberWithFloat:Value]];
*/
    
    NSLog(@"%@", divOfTwo);

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
