//
//  AppDelegate.m
//  StringsTest
//
//  Created by user on 02.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
/*
    NSString* string1 = @"String 1";
    NSString* string2 = @"String 2";
    
    NSArray* arr = [NSArray arrayWithObjects:string1, string2, nil];
    for(NSString* string in arr){
        if([string isEqualToString:@"String 1"]){ //сравнение строк, с приведённым в скобках значением
            NSLog(@"index = %d", [arr indexOfObject:string]);
        }
    }
*/
 
/*    NSString* string = @"Hello world!";
    NSLog (@"%@", string);
    NSRange range = [string rangeOfString:@"world" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    if ( range.location != NSNotFound ){ // если слово не найдено
        NSLog(@"range = %@", NSStringFromRange(range));
    }
    else{
        NSLog(@"Not found");
    }
*/
    
    NSString* text = @"certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game. Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.";
/*
    text = [text substringFromIndex:10];
    text = [text substringWithRange:NSMakeRange(10, 10)];
    
    NSRange range = [text rangeOfString:@"is called instead"];
    if(range.location != NSNotFound){
        text = [text substringFromIndex:range.location];
    }
*/

/* // функция поиска слова, которая показывает:
    NSRange searchRange = NSMakeRange(0, [text length]);
    NSInteger counter = 0; // иниициализируем переменную, в которую будет помещена цифра, отвечающая за количество найденных значений, забитых в поиск
    while( YES){
        NSRange range = [text rangeOfString:@"user" options:0 range:searchRange]; // что мы ищем
        if (range.location != NSNotFound){ // если мы нашли ( если НЕ не найдено)
            NSInteger index = range.location + range.length; // тут описан логаритм для выведения цифры
            searchRange.location = index;
            searchRange.length = [text length] - index;
            NSLog(@"%@", NSStringFromRange(range));
            counter++;
        }
        else{break;
        }
    }
    
    NSLog(@"Counter = %d", counter);
*/
/*
    // метод замены слова на необходимое нам
    text = [text stringByReplacingOccurrencesOfString:@"user" withString:@"LOL"];
*/
    //метод замены всех букв на буквы верхнего регистра  нижнего регистра
    // text = [text uppercaseString]; | [text lowercaseString];
    
    //NSLog(@"%d", [@"512" intValue]);
    
    //NSLog(@"%@", text);
/*
    text = [text stringByReplacingOccurrencesOfString:@"." withString:@" "];
    text = [text stringByReplacingOccurrencesOfString:@"," withString:@" "];
    NSArray* arr = [text componentsSeparatedByString:@" "];
    NSLog(@"%@", arr);
    text = [arr componentsJoinedByString:@"_"];
    NSLog(@"%@", text);
*/
    // обьединение двух и более строк в одну.
    NSString* s1 = @"Hello";
    NSString* s2 = @"World";
    NSString* s3 = [s1 stringByAppendingString:s2];
    NSLog(@"%@ = %@ %@", s3, s1, s2);
    
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
