//
//  ViewController.m
//  TextFieldTest
//
//  Created by user on 01.12.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    // настройка стиля клавиатуры ввода, в данный момент - первая - тёмная.
    //self.firstNameTextField.keyboardAppearance = UIKeyboardAppearanceDark;
    //self.lastNameTextField.keyboardAppearance  = UIKeyboardAppearanceLight;
    
    self.firstNameTextField.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)actionTextChange:(UITextField *)sender {
    
    NSLog(@"%@", sender.text);
    
}

- (IBAction)textLNameTextChng:(id)sender {
}

#pragma mark - Protocols

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return [textField isEqual:self.firstNameTextField];
    
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    
    return NO;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if ([textField isEqual:self.firstNameTextField]) {
        [self.lastNameTextField becomeFirstResponder];
    }else{
        [textField resignFirstResponder];
    }
    
    return YES;
    
}

/*
@optional

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;        // return NO to disallow editing.
- (void)textFieldDidBeginEditing:(UITextField *)textField;           // became first responder
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;          // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (void)textFieldDidEndEditing:(UITextField *)textField;             // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason NS_AVAILABLE_IOS(10_0); // if implemented, called in place of textFieldDidEndEditing:

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;   // return NO to not change text

- (BOOL)textFieldShouldClear:(UITextField *)textField;               // called when clear button pressed. return NO to ignore (no notifications)
- (BOOL)textFieldShouldReturn:(UITextField *)textField;              // called when 'return' key pressed. return NO to ignore.
*/

- (IBAction)logButton:(UIButton *)sender {

    NSLog(@" First name: %@, Last name: %@", self.firstNameTextField.text, self.lastNameTextField.text);
    
}

@end
