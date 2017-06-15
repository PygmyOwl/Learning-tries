//
//  AppDelegate.m
//  threads
//
//  Created by user on 02.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray* array; // создание свойства изменяемого массива

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    // перевод метода в бэкграунд, вынимая его из общего потока таким образом.
    // [self performSelectorInBackground:@selector(testThread) withObject:nil];
/*
    [[NSThread currentThread] isMainThread]; // проверка потока - главный он или нет.
    
    // конструкция создания нескольких потоков - в данный момент создано 10.
    for(int i = 0; i < 10; i++){
        NSThread* thread = [[NSThread alloc] initWithTarget:self
                                                   selector:@selector(testThread)
                                                     object:nil];
        thread.name = [NSString stringWithFormat:@"Thread #%d", i + 1];
        [thread start];
    }
*/
    
// стандартная инициализация перенаправления в поток.
//    NSThread* thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread) object:nil];
//  [thread start];
   
 // выше было создано свойство (проперти) для изменяемого массива, далее идёт заполнение этого массива двумя потоками.
/*
    NSThread* thread1 = [[NSThread alloc] initWithTarget:self
                                                selector:@selector(addStringToArray:)
                                                  object:@"x"];
    NSThread* thread2 = [[NSThread alloc] initWithTarget:self
                                                selector:@selector(addStringToArray:)
                                                 object:@"o"];
    thread1.name = @"Thread1";
    thread2.name = @"Thread2";
    [thread1 start];
    [thread2 start];
    
    self.array = [NSMutableArray array];
    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
*/
    
    // GRAND CENTRAL DISPATCH метод для многопоточности
    
    self.array = [NSMutableArray array];
    
    //dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //в кавычках - набор чар-переменных, там нет строки ( стринг).
    //иной способ заполнения массива последовательно.
    dispatch_queue_t queue = dispatch_queue_create("com.rio.testthreads.queue", DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(queue, ^{
        [self addStringToArray:@"X"];
    });
    dispatch_async(queue, ^{
        [self addStringToArray:@"O"];
    });
    
    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
    
    return YES;
}

- (void) testThread{
    @autoreleasepool {
        double startTime = CACurrentMediaTime(); // метод показывающий время старта
        NSLog(@"%@ started", [[NSThread currentThread] name]);
    
        for ( int i = 0; i <20000; i++){
            NSLog(@"%d", i);
        }
        //вывод времени, потраченного на прогонку метода.
        NSLog(@"%@ finished in %f", [[NSThread currentThread]name], CACurrentMediaTime() - startTime);
    }
}

- (void) addStringToArray:(NSString*) string{
    @autoreleasepool {
        double startTime = CACurrentMediaTime();
        //ввиду того, что необходимо выработать последовательное заполнение - используется вот такая конструкция. В ином случае массив будет заполнен с ошибками и вперемешку. Этот поток был добавлен в очередь первым.
       //@synchronized (self) {
            NSLog(@"%@ calculations started", [[NSThread currentThread] name]);
            for ( int i = 0; i < 20000; i++){
                [self.array addObject:string];
           }
         //   NSLog(@"%@ calculations ended", [[NSThread currentThread] name]);
        //}
        NSLog(@"%@ finished in %f", [[NSThread currentThread]name], CACurrentMediaTime() - startTime);
    }
}

- (void) printArray{
    NSLog(@"%@", self.array);
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
