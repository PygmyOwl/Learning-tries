//
//  ViewController.m
//  ControlsTest
//
//  Created by user on 30.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

typedef enum {
    ColorSchemeTypeRGB,
    ColorSchemeTypeHSV
}ColorSchemeType;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self refreshScreen];
    self.segmentedControl.selectedSegmentIndex = ColorSchemeTypeRGB;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - privateMethod

- (void) refreshScreen {
    
    CGFloat red   = self.redSlider.value;
    CGFloat green = self.greedSlider.value;
    CGFloat blue  = self.blueSlider.value;
    
    UIColor *color = nil;
    if (self.segmentedControl.selectedSegmentIndex == ColorSchemeTypeRGB) {
        
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
    } else {
        color = [UIColor colorWithHue:red saturation:green brightness: blue alpha: 1.f];
    }
  
    CGFloat hue, saturation, brightness, alpha;
    NSString *result = @"";
    if ([color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        result = [result stringByAppendingFormat:@"RGB:{%1.2f, %1.2f, %1.2f}", red, green, blue];
    } else {
        result = [result stringByAppendingFormat:@"RGB{NO DATA}"];
    }
    
    if ([color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]){
        result = [result stringByAppendingFormat:@"\tHSV:{%1.2f, %1.2f, %1.2f}", hue, saturation, brightness];
    } else{
        result = [result stringByAppendingString:@"\tHSV:{NO DATA}"];
    }
    self.label.text = result;
    
    self.view.backgroundColor = color;
}

#pragma mark - Actions

- (IBAction)actionSlider:(UISlider *)sender {

    [self refreshScreen];
    
}

- (IBAction)actionEnable:(UISwitch *)sender {
    
    self.redSlider.enabled   = sender.isOn;
    self.greedSlider.enabled = sender.isOn;
    self.blueSlider.enabled  = sender.isOn;
 
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    
    double delayInSeconds = 0.4f;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        if ([[UIApplication sharedApplication] isIgnoringInteractionEvents]){
            [[UIApplication sharedApplication] endIgnoringInteractionEvents];
        }
    });
    
    [[UIApplication sharedApplication] isIgnoringInteractionEvents];
    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
}

@end
