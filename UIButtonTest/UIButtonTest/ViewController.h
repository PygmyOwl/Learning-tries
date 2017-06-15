//
//  ViewController.h
//  UIButtonTest
//
//  Created by user on 30.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;


- (IBAction) actionTest2:(UIButton *)sender;

- (IBAction) actionTestTouchDown:(UIButton *)sender;

@end

