//
//  AppDelegate.m
//  BlocksTest
//
//  Created by user on 01.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"

typedef void(^TestBlock1)(void); // добавляет возможность обьявлять блок как тип.
typedef NSString* (^TestBlock2)(NSInteger);

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
/*  блок, который ничего не принимает и не передаёт
    void (^Block1)(void); // блок это кусок кода, блок - это обьект.
    Block1 = ^{
        NSLog(@"Test Block");
    };
    Block1(); // вызов кода, который находится в теле блока
*/
    
/*
    // блок с принимаемыми параметрами.
    void (^testBlockWithParams)(NSString*, NSInteger)=^(NSString* string, NSInteger intValue){
        NSLog(@"testMethodWithParam %@ %d", string, intValue);
    };
    testBlockWithParams(@"TEST STRING", 111);
    
    NSString* result = [self testMethWithValAndParm:@"TEST STRING" value:111];
    NSLog(@"%@", result);
*/

/*  // блок с приёмом-передачей
    NSString* (^testBlockWithValAndParm)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue){
        return [NSString stringWithFormat:@"testMethodWithValAndParm %@, %d", string, intValue];
    };
    
    NSString* result = testBlockWithValAndParm(@"TEST STRING", 111);
    NSLog(@"%@", result);
*/

    
    // данный пример показывает уникальную возможность блоков вписывать в себя переменные просто так, добавляя их внутрь, так же можно изменить их внутри.
/*    NSString* testString = @"How's it possible?";
    __block NSInteger i = 0; // таким образом мы показываем блоку, что можно изменять переменную.
    void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"test block");
        NSLog(@"%@", testString); // строка не будет уничтожена, пока не будет уничтожен блок
        i = i++;
        NSLog(@"%d", i);
    };
    
    testBlock();
    testBlock();
    testBlock();
    testBlock();
    testBlock();
*/
/*
    __block NSString* testString = @"How's it possible?";
    __block NSInteger i = 0; // таким образом мы показываем блоку, что можно изменять переменную.
    void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"test block");
        i = i++;
        testString = [NSString stringWithFormat:@"How's it possible?", i];
        NSLog(@"%@", testString);
    };
    testBlock();
    testBlock();
    testBlock();
    testBlock();
    testBlock();
*/

/*
    // метод тестблок был вызван сюда, к нему же добавлен текст из этого блока.
    [self testBlockMeth:^{
        NSLog(@"block");
    }];
  // Также блок можно помещать в массив для сортировок и пр.  Можно помещать в параметр функции
*/

/*
    TestBlock1 testBlock2 = ^{
        NSLog(@"BLOCKINUSE");
    };
    
    [self testBlockMeth2:testBlock2];
    
// более краткое написание блоков ( сверху есть дополнение тайпдеф для блока
    TestBlock2 testBlock3 = ^(NSInteger intValue){
        return [NSString stringWithFormat:@"%d", intValue];
        };
    
    NSLog(@"%@", testBlock3(5));
*/
    
    
    return YES;
}


- (void) testBlockMeth:(void(^)(void)) testBlock{
    NSLog(@"testBlockMeth");
    testBlock();
}

- (void) testBlockMeth1:(void(^)(void)) testBlock1{
    
}

- (void) testBlockMeth2:(TestBlock1) testBlock2{
    NSLog(@"testBlockMeth2");
    testBlock2();
}

//- (void) testMethodWithParam:(NSString*) string value:(NSInteger) intValue{
//    NSLog(@"testMethodWithParam %@ %d", string, intValue);
//}

//- (NSString*) testMethWithValAndParm:(NSString*) string value:(NSInteger) intValue{
//    return [NSString stringWithFormat:@"testMethWithValAndParm %@ %d", string, intValue];
//}

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
