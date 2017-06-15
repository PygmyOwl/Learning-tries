//
//  AppDelegate.m
//  TimeTest
//
//  Created by user on 03.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
/*
    
    //вывод даты
    NSDate* date = [NSDate date];
    NSLog(@"%@", date);
    //вывод даты через определ]нное время
    NSLog(@"%@", [date dateByAddingTimeInterval:5000]);
    NSLog(@"%@", [date dateByAddingTimeInterval:-5000]);
    // сравнивание даты
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:10];
    NSLog(@"%@", date2);
*/
/*
    NSDate* date = [NSDate date];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"%@",[dateFormatter stringFromDate:date] );
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"%@",[dateFormatter stringFromDate:date] );
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@",[dateFormatter stringFromDate:date] );
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"%@",[dateFormatter stringFromDate:date] );
    
    [dateFormatter setDateFormat: @"yyyy. MMM.  dd. EEE. HH.mm a W"]; //лично настраиваемый тип вывода даты
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    // вывод даты в строку
    NSDate* date3 = [dateFormatter dateFromString:@"2008/05/17 15:35"];
    NSLog(@"%@", date3);
*/
    
    //использование даты для программ, будь то создание отчётов, графиков и прочего - поиск кода отвечающего за это. Собсн это правило работает и для всего остального.
/*
    NSDate* date = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth |         NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute
                                              fromDate: date];
    
    NSLog( @"%@", components);
*/
/*    //таким образом идёт подсчёт необходимых величин в указанном периоде времени
    NSDate* date1 = [NSDate date];
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:-100500];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components =
    [calendar components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute
     fromDate:date1
       toDate:date2
      options:0];
    
    NSLog(@"%@", components);
*/
    //таймер для вызова с определённым интервалом.
    //[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil
      //                              repeats:YES];
    
    //таймер, который начнёт вызов функции с определённым интервалом через 5 секунд, таймер никогда не будет уничтожен.
    
    Object* obj = [[Object alloc]init];
    
    
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
