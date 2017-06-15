//
//  AppDelegate.m
//  ParamTest2
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"
#import "ChObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   // NSArray* testArr = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 3", nil];
    //это конструктор массива, приближённый к обычному С++
    
    //другой возможный способ написания
    //NSArray* testArr = [NSArray arrayWithObjects: @"String 1", @"String 2", @"String 3", nil];
    
    //рекомендуемая схема написания от эппл.
    //NSArray* testArr = @[ @"String 1", @"String 2", @"String 3"];
    
/*    for(int i = 0; i < 3; i--){ //знакомый тип написания массива
        NSLog(@"%@", [testArr objectAtIndex:i]);
              NSLog(@"i = %d", i);
    }
 */
    // Обьекты, ссылки на которые поставлены в массив имеют тип стронг, если есть другой массив с другой последовательностью ссылок, то обьект не копируется, а используется один на несколько массивов.
    
    //for(NSString* string in testArr) {   // другой возможный способ написания массива.
      //  NSLog ( @"%@", string);
       // NSLog ( @" index = %d", [testArr indexOfObject:string]);
    //}
    
    Object* obj1 = [[Object alloc] init];
            obj1.name = @"Givy";
    Object* obj2 = [[Object alloc] init];
            obj2.name = @"Jamshut";
    ChObject* obj3 = [[ChObject alloc] init];
            [obj3 setName:@"Lyalya"];
    
        obj3.lastName = @"Last name";
    
    NSArray* objArr = [NSArray arrayWithObjects:obj1, obj2, obj3, nil];
    for(Object* obj in objArr){
        NSLog(@"name = %@", obj.name);
        [obj action];
        
        if ( [obj isKindOfClass:[ChObject class]]){
            ChObject* chObj = (ChObject*)obj;
            NSLog(@" What is last name? %@", chObj.lastName);
        }
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
