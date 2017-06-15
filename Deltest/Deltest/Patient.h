//
//  Patient.h
//  Deltest
//
//  Created by user on 27.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
// это готовый паттерн делегата ( без методов) .

#import <Foundation/Foundation.h>
#import <UIkit/UIkit.h>

@protocol PatientDelegate;


@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;
//id - вместо указателей NSObject или Doctor, айди - универсальный указатель
// weak - всегда, для того, чтоб не захламлять память

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol PatientDelegate <NSObject>
@required
// лучше писать методы делегирования с привязкой к определённому обьекту - это этичнее и практичней
- (void) patientFeelsBad:(Patient *)patient; // - (void) patient(Patient*) patient feelsBad:(BOOL) b; - как вариант, но не практичен - булевое значение зачастую ничем не проверяется и создает мусор.
- (void) patient:(Patient*) patient haveQuestion:(NSString*) question;

@end
