//
//  AppDelegate.m
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Boxer.h"
#import "Dancer.h"
#import "Stud.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Dancer* dancer1 = [[Dancer alloc] init];
    dancer1.name = @"dance1";
    Dancer* dancer2 = [[Dancer alloc] init];
    dancer2.name = @"dance2";
    
    Stud* stud1 = [[Stud alloc] init];
    stud1.name = @"Vasya";
    Stud* stud2 = [[Stud alloc] init];
    stud2.name = @"Marko";
    Stud* stud3 = [[Stud alloc] init];
    stud3.name = @"Farko";
    
    Boxer* boxer = [[Boxer alloc] init];
    boxer.name = @" Petya-huyetya";
    
    
    NSArray* patients = [NSArray arrayWithObjects: dancer1, dancer2, stud1, stud2, stud3, boxer, nil];
    
    for (id <Patient> patient in patients){                 //реализация "процедуры лечения"
        NSLog(@"Patient name = %@", patient.name);
        NSLog(@"Family? \n %@", [patient howIsYourFamily] );
        NSLog(@"Job? \n %@", [patient howIsYourJob]);
        if (![patient areYouOk]){                           //если пациент не окей то даём пилюлю
            [patient takePill];
            
            if(![patient areYouOk]){               //продолжаем - если пациент плох
                [patient makeShot];
            }
        }
    }
    
    /*  также можно написать таким образом, что массив выше, что этот - одинаковы, метод написания разный
     for ( int i = 0; i < [patients count]; i++){
     id <Patient> patient = [patients objectAtIndex:i];
     }
     */
    
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
