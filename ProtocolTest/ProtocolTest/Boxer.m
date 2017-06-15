//
//  Boxer.m
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Boxer.h"

@implementation Boxer

- (void) work{
    
}

#pragma mark - Patient // закладка в тексте для навигации 

- (BOOL) areYouOk{
    BOOL ok = arc4random() % 2;// рандомная генерация 32-хбитного числа - такой метод даёт остаток от деления нечётного числа - 1, что есть - ДА, и от чётного - 0, что етсь НЕТ.
    
    NSLog( @" Is %@ ok? %@ ", self.name, ok ? @" YES" : @"NO"); // ok - условие, ? - первое перед двоеточием всегда условие - ДА ( тут поставлен текст YES), второе условие всегда - НЕТ.
    return ok;
}

- (void) takePill{
    NSLog(@"Boxer %@ takes a pill", self.name);
}

-(void) makeShot{
    NSLog(@"Boxer %@ makes a shot", self.name);
}

-(NSString*) howIsYourFamily {
    return @"Fk u faggot";
}

-(NSString*) howIsYourJob{
    return @" no job, no money, no please and no honey";
}

@end
