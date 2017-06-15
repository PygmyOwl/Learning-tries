//
//  AppDelegate.h
//  ParamTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Object;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;    //nonatomic - нет потокозащищённости.

@property (copy, nonatomic, readwrite) Object* object;       // readonly - параметр "только чтение"
            // strong  - обьект не будет уничтожен,         пока есть хотя бы одна ссылка на него
            // copy - strong ссылка та же, копия держится до необходимого момента и потом удаляется вслед за оригиналом


@end

