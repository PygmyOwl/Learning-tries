//
//  Truck.h
//  TestAll
//
//  Created by user on 06.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "Transport.h"
#import "UIKit/UIKit.h"

@interface Truck : Transport

@property (strong, nonatomic) NSString *typeOfConstruction;
@property (strong, nonatomic) NSString *forWhatCargo;
@property (assign, nonatomic) CGFloat carryingWeight;

- (void) load;
- (void) cargoCarrying;
- (void) unload;
- (void) showTruckInfo;

@end
