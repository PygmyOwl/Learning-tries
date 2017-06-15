//
//  AppDelegate.m
//  Notifications
//
//  Created by user on 31.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Government.h"
#import "Doctor.h"

@interface AppDelegate ()

@property (strong, nonatomic) Government *government;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    // инициализация нотификационного центра, он будет существовать от начала и до конца, передавая состояние обьекта.
    
    // как только написан метод под нотификацию обьекта, сразу же должен быть написан метод для отписывания обьекта. В противном случае после удаления обьекта нотификация отправит запрос, воткнётся в пустое ( или захламленное ) местно и программа схлопнется.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(governmentNotification:)
                                                 name:GovernmentTaxLevelDidChangeNotification
                                               object:nil];
    //подписка на нотификацию должна происходить до изменений значений переменных, иначе скрипт просто не сработает.
    
    Doctor* doctor1 = [[Doctor alloc] init];
    Doctor* doctor2 = [[Doctor alloc] init];
    Doctor* doctor3 = [[Doctor alloc] init];
    Doctor* doctor4 = [[Doctor alloc] init];
    Doctor* doctor5 = [[Doctor alloc] init];
    
    doctor1.salary = doctor2.salary = doctor3.salary = doctor4.salary = doctor5.salary = self.government.salary;
    
    self.government = [[Government alloc] init];
    self.government.taxLevel = 5.5;
    self.government.salary = 1100;
    self.government.averagePrice = 15;
    self.government.pension = 550;
    
    self.government.salary = 1050;
    self.government.salary = 1150;
    self.government.salary = 900;
    
    return YES;
}

- (void) governmentNotification:(NSNotification*) notification{
    NSLog(@"governmentNotification userInfo = %@", notification);
}

-(void) dealloc{ // метод отписки от нотификации.
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
