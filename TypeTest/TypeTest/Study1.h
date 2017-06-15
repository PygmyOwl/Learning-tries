//
//  Study1.h
//  TypeTest
//
//  Created by user on 21.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{         //таким образом создаётся новый тип данных
    genderMale,
    genderFemale
}Gender;               // обьявляется класс типа данных 

@interface Study1 : NSObject

@property ( strong, nonatomic) NSString* name;

@property ( assign, nonatomic) Gender gender;

@end
