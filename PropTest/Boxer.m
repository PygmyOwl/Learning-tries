//
//  Boxer.m
//  PropTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Boxer.h"

@interface Boxer() // инкапсуляция property, которая показыает количество выводов имени

@property ( assign, nonatomic) NSInteger nameCount;

@end

@implementation Boxer
@synthesize name = _name; // возможность переопределения геттера и сеттера одновременно.

- (id)init{    // ввод данных, непосредственно в самом классе, заменяет блок сеттеров в AppDelegate.m
    self = [super init];
    if (self){
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *)inputName {
    NSLog(@" setter setName: is called");
    _name = inputName; // _ вызов указанного проперти напрямую, underscore name, тип inner var - iVar, внутренняя переменная.
}

- (NSString*) name{
    self.nameCount++;
    NSLog(@"name getter is called %ld times", self.nameCount);
    
    return _name;
}

- (NSInteger) age{
    NSLog(@" age getter is called");
    return _age;
}

- (NSInteger) howOldAreYou{
    return _age;
}

@end
