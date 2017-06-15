//
//  AppDelegate.m
//  SelectorsTest
//
//  Created by user on 01.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   // [[NSNotificationCenter defaultCenter] addObserver:<#(nonnull id)#> selector:<#(nonnull SEL)#> name:<#(nullable NSNotificationName)#> object:<#(nullable id)#>]
    //selector - указатель на метод или просто его имя
    
    //[self testMethod]; - обычный вызов занчения функции.
    
    //[self performSelector:@selector(testMethod)];// - можно таким образом реализовывать скрипт
    
//    SEL selector1 = @selector(testMethod);
  //  [self performSelector:selector1];
/*     SEL selector1 =@selector(testMethod);
    [self performSelector:selector1];
    SEL selector2 = @selector(testMethodWithParam:);
    [self performSelector:selector2 withObject:@"test string" ]; //string - параметр, который мы передаём из функции в селектор.
    SEL selector3 = @selector(testMethodWithParam:paremeter2:);
    [self performSelector:selector3 withObject:@"string" withObject:@"string2" ];
    
    [self performSelector:selector3 withObject:@"string" afterDelay:5.f];
    //селектор с задержкой вывода.
*/
    //withObject - говорит о том, что в селекторы нельзя передавать простые обьекты, даже через оболочку.
    
    /*
    Object* obj = [[Object alloc] init];
    
    SEL selector1 = @selector(testMethod);
    SEL selector2 = @selector(testObject);
    //SEL selector2 = @selector(testMethodWithParam:);
    //SEL selector3 = @selector(testMethodWithParam:parameter2:);
    
    [self performSelector:selector1];
    [obj performSelector:selector2];
    // инициализация селектора, постройка строки реализации. Синтакс инициализированный обьект, команда для реализации селектора2.
    
    NSString* secret = [obj performSelector:@selector(superSecretText)]; //инициализация скрытого метода в Object.m
    NSLog (@"secret = %@", secret);
    
    //таким образом из селектора берётся строка.
    //NSString* stringfromselector = NSStringFromSelector(selector1);
    //SEL sel = NSSelectorFromString(stringfromselector);
    */
    
//    NSString* string = [self testMethodWithParam1:2 parameter2:3.1f parameter3:5.5f];
//    NSLog(@"string = %@", string);
    // рабочая версия для передачи примитивных обьектов подобно селектору.
  
    SEL selector = @selector(testMethodWithParam1:parameter2:parameter3:);
    
    NSMethodSignature* signature = [AppDelegate instanceMethodSignatureForSelector:selector];
    
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:signature];
    //метод родительского класса, который содержит в себе всё цель, селектор, параметры и возвращаемое значение .
    [invocation setTarget:self];
    [invocation setSelector:selector];
    NSInteger iVal = 2;
    NSInteger * p1 = &iVal;
    CGFloat fVal = 3.1f;
    NSInteger * p2 = &fVal;
    double dVal = 5.2f;
    NSInteger * p3 = &dVal;
    
    [invocation setArgument:p1 atIndex:2]; // в этом случае индекс начинается с 2, потому что первые д 0 1 заняты
    [invocation setArgument:p2 atIndex:3];
    [invocation setArgument:p3 atIndex:4];
    [invocation invoke];
    NSString* string = nil;
    [invocation getReturnValue:&string ];
    NSLog(@"string = %@", string);
    
    return YES;
}

- (void) testMethod {
    NSLog (@"Test method");
}

- (void) testMethodWithParam:(NSString*) string{
    NSLog(@"Test method : %@", string);
}

- (void) testMethodWithParam:(NSString*) string paremeter2:(NSString*) string2{
    NSLog(@"testMethod parameter2: %@, %@", string, string2);
}


- (NSString*) testMethodWithParam1:(NSInteger) intValue // метод, который выполняет передачу значений
                        parameter2:(CGFloat) floatValue
                        parameter3:(double) doubleValue {
    return [NSString stringWithFormat:@"testMethodWithParam1: %d parameter2: %f parameter3: %f", intValue, floatValue, doubleValue];
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
