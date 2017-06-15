//
//  ViewController.h
//  ControlsTest
//
//  Created by user on 30.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greedSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;


- (IBAction)actionSlider:(UISlider *)sender;
- (IBAction)actionEnable:(UISwitch *)sender;

@end

