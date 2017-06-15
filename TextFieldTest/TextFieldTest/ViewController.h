//
//  ViewController.h
//  TextFieldTest
//
//  Created by user on 01.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;

- (IBAction)actionTextChange:(UITextField *)sender;
- (IBAction)textLNameTextChng:(UITextField *)sender;
- (IBAction)logButton:(UIButton *)sender;

@end

