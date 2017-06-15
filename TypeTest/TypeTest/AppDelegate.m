//
//  AppDelegate.m
//  TypeTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Study1.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    BOOL bVar = YES; // NO
    NSInteger intVar = 10;
    NSUInteger uintVar = 100;
    CGFloat floatVar = 10.f;
    double dVar = 10.f;
    // примитивные обьекты, хранятся на стеке.
    
    NSNumber* boolObject = [ NSNumber numberWithBool:bVar]; // оболочка для переменной бВар
    NSNumber* intObject = [ NSNumber numberWithInteger:intVar];
    NSNumber* uintlObject = [ NSNumber numberWithUnsignedInteger:uintVar];
    NSNumber* floatObject = [ NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [ NSNumber numberWithDouble:dVar];
   
    //Необходимо положить переменные и их названия в оболочки для того, чтоб вложить их в массив.
    NSArray* arr = [NSArray arrayWithObjects: boolObject, intObject,
                    uintlObject, floatObject, doubleObject, nil];
    
    NSLog(@"boolVar = %d, intVar = %d, uintVar = %d, floatVar = %f, dVar = %f",
          [[arr objectAtIndex:0] boolValue],
          [[arr objectAtIndex:1] integerValue],
          [[arr objectAtIndex:2] unsignedIntegerValue],
          [[arr objectAtIndex:3] floatValue],
          [[arr objectAtIndex:4] doubleValue]);
    
    
    /*
    NSLog(@"bVar = %d, intVar = %d, uintVar = %d, floatVar = %f, dVar = %f", bVar, intVar, uintVar,
          floatVar, dVar, nil);
    NSLog(@"bVar = %ld, intVar = %ld, uintVar = %ld, floatVar = %ld, dVar = %ld",
          sizeof(bVar), sizeof(intVar), sizeof(uintVar), sizeof(floatVar), sizeof(dVar), nil);
    */
   
    /*
    Study1* stud1 = [[Study1 alloc] init];
    stud1.name = @"Best student";
    NSLog(@"stud1 name = %@", stud1.name);
    
    //Study1* stud2 = [[Study1 alloc] init];
    Study1* stud2 = stud1;                 // присвоение операций инициализации и присвоение класса.
    stud2.name = @"Average student";
    NSLog(@"stud2 name = %@", stud2.name);
    */
    
    // подобная схема написания выдаёт сначала а, потом а, за которой в строке последует б

/*  NSInteger a = 10;
    NSLog (@"a=%d", a);
    NSInteger b = a;
    b = 5;
    NSLog(@"a= %d, b = %d", a,b);
    
    NSInteger * c = &a; // указатель на адресс а
    *c = 8; // очевидно - присвоение значения 8 для с
    
    NSLog(@"a = %d, b = %d", a,b); // после операции присвоения вывод повторяетс ятакже, только третья строка будет выглядеть как а = 8.
    
    NSInteger test = 0;
    
    [self test:a testPointer:&test];
    
    NSInteger result = [self test:a testPointer:&test];
    
    NSLog(@"result = %d, test = %d", result, test);
   */
    /*
    Study1* stud = [[Study1 alloc] init];
    [stud setGender: genderMale];
    
    CGPoint point; //структура. size, rect.
    point.x = 5.5f;
    point.y = 10;
    
    point = CGPointMake(6, 3);
    
    CGSize size;
    size.width = 10;
    size.height = 5;
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    
    rect = CGRectMake(0,0,30,60);
    
    BOOL result = CGRectContainsPoint(<#CGRect rect#>, <#CGPoint point#>); // сохранение результатов по данным координатам и выдача ответа да или нет при попадании или промаха
    */
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    
    NSArray* arr2 = [NSArray arrayWithObjects:
                     [NSValue valueWithCGPoint:point1],
                     [NSValue valueWithCGPoint:point2],
                     [NSValue valueWithCGPoint:point3],
                     [NSValue valueWithCGPoint:point4],
                     [NSValue valueWithCGPoint:point5],
                     nil];
    
    for(NSValue* value in arr2){
        CGPoint p = [value CGPointValue];
        NSLog(@" point = %@", NSStringFromCGPoint(p));
    }
    
    return YES;
}

/*
- (NSInteger) test:(NSInteger) test testPointer:(NSInteger*) testPointer{
    *testPointer = 5; // параметр методом указания изменил значение тестпоинтер и передал 5 для показа
    return test;
}
*/
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
