//
//  Boxer.h
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Patient.h" // добавление протокола, применяемого к этому обьекту

@interface Boxer : NSObject <Patient> // обьявление условий протокла родительскому классу

@property (assign, nonatomic) CGFloat experience;
@property ( strong, nonatomic) NSString* name; // 

- (void) work;

@end
