//
//  Transport.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Transport : NSObject

@property (strong, nonatomic) NSString *typeOfMoving;
@property (strong, nonatomic) NSString *whereUsing;
@property (strong, nonatomic) NSString *forWhatPurpose;
@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSString *model;

- (void) moving;
- (void) itemsCarrying;
- (void) isNowGearWorking;

@end
