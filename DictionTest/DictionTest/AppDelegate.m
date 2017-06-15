//
//  AppDelegate.m
//  DictionTest
//
//  Created by user on 24.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                @"Sobaka",@"LastName",
                                @"Zhuchka", @"Name",
                                [NSNumber numberWithInt:25], @"age",nil];
    NSLog(@"%@", dictionary);
    */
    // все ключи должны поддерживать протокол NSCopy.
    
    /*NSLog(@"name = %@, lastName = %@, age = %@", [dictionary objectForKey:@"Name"],
                                                 [dictionary objectForKey:@"LastName"],
                                                [[dictionary objectForKey:@"age"] integerValue]);
    */
    //NSDictionary* dictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:
    /*
    NSDictionary* dictionary3 = @{@"lastName":@"Petrov", @"name":@"Vasya", @"age":@25};
    NSLog(@"%@", dictionary3);
    */
    
    NSInteger number = 25;
    
    NSDictionary* dictionary4 = @{@"lastName":@"Pupkin", @"name":@"Pasha", @"age":@(number)};
    
    NSLog(@"%@, \count = %d", dictionary4, [dictionary4 count]);
    
    NSLog(@"name = %@, lastName = %@, age = %d",
          [dictionary4 objectForKey:@"name"],
          [dictionary4 objectForKey:@"lastName"],
          [[dictionary4 objectForKey:@"age"] integerValue]);
    
    for(NSString* key in [dictionary4 allKeys]){
        id obj = [dictionary4 objectForKey:key];
        NSLog(@"key = %@, value = %@", key, obj);
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
