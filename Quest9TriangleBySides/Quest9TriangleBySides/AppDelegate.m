//
//  AppDelegate.m
//  Quest9TriangleBySides
//
//  Created by user on 14.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    int sideA = 3;
    int sideB = 4;
    int sideC = 5;
    
    int answer = 0;
    double halfPer = 0;
    double square = 0;
    if(sideA < sideB + sideC &&
       sideB < sideA + sideC &&
       sideC < sideA + sideB ){
        answer = 1;
        halfPer = (sideA + sideB + sideC) / 2 ;
        square  = sqrt(halfPer*((halfPer - sideA)*
                                (halfPer - sideB)*
                                (halfPer - sideC)));
    }
    else {
        answer = 0;
        square = 0;
    }
    
    int sideA1 = 1;
    int sideB1 = 2;
    int sideC1 = 4;
    
    int answer1 = 0;
    double halfPer1 = 0;
    double square1 = 0;
    if(sideA1 < sideB1 + sideC1 &&
       sideB1 < sideA1 + sideC1 &&
       sideC1 < sideA1 + sideB1 ){
        answer1 = 1;
        halfPer1 = (sideA1 + sideB1 + sideC1) / 2 ;
        square1  = sqrt(halfPer1*((halfPer1 - sideA1)*
                                  (halfPer1 - sideB1)*
                                  (halfPer1 - sideC1)));
    }
    else {
        answer1 = 0;
        square1 = 0;
    }
    
    int data = 2;
    NSLog(@"%d", data);
    NSLog(@"%d %d %d", sideA, sideB, sideC);
    NSLog(@"%d %d %d", sideA1, sideB1, sideC1);
    NSLog(@"%f %f", square, square1);
    NSLog(@"%d %d", answer, answer1);
    
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
