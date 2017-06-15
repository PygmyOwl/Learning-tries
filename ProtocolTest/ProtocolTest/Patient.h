//
//  Patient.h
//  ProtocolTest
//
//  Created by user on 23.10.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@required // требуемые условия
@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
-(NSString*) howIsYourFamily;
-(NSString*) howIsYourJob;

@end
